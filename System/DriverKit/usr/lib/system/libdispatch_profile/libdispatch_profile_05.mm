void _dispatch_workloop_stealer_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 24);
  *(a1 + 24) = -1;
  v7 = v6 == -1 || v6 == -1;
  if (!v7)
  {
    OUTLINED_FUNCTION_8();
    if (v8)
    {
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_25();
      kdebug_trace();
    }
  }

  v9 = *(a1 + 8);
  if (v9 == -1)
  {
    v12 = 0;
  }

  else
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
    if (((v10 >> 8) & 0xF) != 0)
    {
      v11 = 1 << ((BYTE1(v10) & 0xFu) + 7);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v10;
    if ((v9 & 0xFFFFFF) != 0)
    {
      if ((v9 & 0xFFFFFFuLL) >= (v11 & 0xFFFFFF00))
      {
        OUTLINED_FUNCTION_34();
        if (!v7)
        {
          v12 = v13;
        }
      }
    }

    else if (v10 >> 12)
    {
      v12 = (256 << ((v10 >> 12) - 1)) | 0xFF;
    }
  }

  v14 = OUTLINED_FUNCTION_20(v12);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v16 = StatusReg[4];
  if ((v16 & 0x1000000) != 0)
  {
    if (v14)
    {
LABEL_42:
      _dispatch_set_priority_and_voucher_slow(v14, v6, 6);
      goto LABEL_24;
    }

    v14 = v16 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    if (v7)
    {
      goto LABEL_20;
    }
  }

  if (v14)
  {
    goto LABEL_42;
  }

LABEL_20:
  if (v6 == -1)
  {
    goto LABEL_24;
  }

  if (StatusReg[28] != v6)
  {
    v14 = 0;
    goto LABEL_42;
  }

  if (v6 && atomic_fetch_add_explicit((v6 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
    return;
  }

LABEL_24:
  v17 = StatusReg[22];
  if (v17)
  {
    OUTLINED_FUNCTION_40();
  }

  else
  {
    v18 = 1;
  }

  v19 = a1;
  if (v18 <= _dispatch_continuation_cache_limit)
  {
    v19 = 0;
    *(a1 + 16) = v17;
    *(a1 + 8) = v18;
    StatusReg[22] = a1;
  }

  (*(**(a1 + 48) + 48))(*(a1 + 48), a2, a3 | 1u);
  if (v19)
  {

    _dispatch_continuation_free_to_cache_limit(v19);
  }
}

void _dispatch_queue_override_invoke(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = a1[6];
  v8 = a1[7];
  v44 = StatusReg[25];
  v45 = StatusReg[20];
  StatusReg[25] = *(v8 + 84) & 0xFFF0FFFF | ((WORD1(v44) & 0xF) << 16);
  StatusReg[20] = v8;
  v9 = *(*a1 + 16);
  LODWORD(v10) = v9 == 1792;
  v11 = a1[3];
  a1[3] = -1;
  v12 = v11 == -1 || (v11 + 1) == 0;
  if (!v12)
  {
    OUTLINED_FUNCTION_8();
    if (v13)
    {
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_25();
      kdebug_trace();
    }
  }

  v14 = a1[1];
  if (v14 == -1)
  {
    v18 = 0;
  }

  else if ((v14 & 0xFFFFFF) != 0)
  {
    OUTLINED_FUNCTION_31();
    if (v12)
    {
      v18 = v15;
    }

    else
    {
      v18 = v16;
    }

    if (v16 < v17)
    {
      v18 = v15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_27();
  }

  v19 = OUTLINED_FUNCTION_20(v18);
  v20 = StatusReg[4];
  if ((v20 & 0x1000000) != 0)
  {
    if (v19)
    {
LABEL_90:
      _dispatch_set_priority_and_voucher_slow(v19, v11, 6);
      goto LABEL_23;
    }

    v19 = v20 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    if (v12)
    {
      goto LABEL_19;
    }
  }

  if (v19)
  {
    goto LABEL_90;
  }

LABEL_19:
  if (v11 == -1)
  {
    goto LABEL_23;
  }

  if (StatusReg[28] != v11)
  {
    v19 = 0;
    goto LABEL_90;
  }

  if (v11)
  {
    LODWORD(v21) = atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (v21 <= 1)
    {
      qword_78298 = "API MISUSE: Voucher over-release";
      __break(1u);
      goto LABEL_100;
    }
  }

  while (1)
  {
LABEL_23:
    v22 = StatusReg[22];
    if (v22)
    {
      OUTLINED_FUNCTION_40();
    }

    else
    {
      v23 = 1;
    }

    v11 = a1;
    if (v23 <= _dispatch_continuation_cache_limit)
    {
      v11 = 0;
      a1[2] = v22;
      *(a1 + 2) = v23;
      StatusReg[22] = a1;
    }

    v21 = *v7;
    if (*v7 >= 0x1000uLL)
    {
      if (*(v21 + 16) == 1)
      {
        (*(v21 + 24))(v7, 0, (a3 >> 21) & 1);
      }

      else
      {
        (*(v21 + 48))(v7, a2, v10 | a3);
      }

      v24 = v45;
      goto LABEL_80;
    }

    if ((a3 & 0x1000000) != 0)
    {
      a3 = _dispatch_autorelease_pool_push();
      v21 = *v7;
    }

    else
    {
      a3 = 0;
    }

    a2 = *(v7 + 24);
    if ((v21 & 4) != 0)
    {
      *(v7 + 24) = -1;
    }

    if (a2 != -1 && a2 != -1)
    {
      OUTLINED_FUNCTION_8();
      if (v26)
      {
LABEL_100:
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_25();
        kdebug_trace();
      }
    }

    v10 = v21 & 4;
    v27 = *(v7 + 8);
    if (v27 == -1)
    {
      v30 = 0;
    }

    else
    {
      v28 = StatusReg[25];
      v29 = ((v28 >> 8) & 0xF) != 0 ? 1 << ((BYTE1(v28) & 0xFu) + 7) : 0;
      v30 = v29 | StatusReg[25];
      if ((v27 & 0xFFFFFF) != 0)
      {
        if ((v27 & 0xFFFFFFuLL) >= (v29 & 0xFFFFFF00))
        {
          OUTLINED_FUNCTION_34();
          if (!v12)
          {
            v30 = v31;
          }
        }
      }

      else if (v28 >> 12)
      {
        v30 = (256 << ((v28 >> 12) - 1)) | 0xFF;
      }
    }

    v32 = OUTLINED_FUNCTION_20(v30);
    v33 = StatusReg[4];
    if ((v33 & 0x1000000) != 0)
    {
      if (v32)
      {
        goto LABEL_104;
      }

      v32 = v33 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (v12)
      {
        goto LABEL_56;
      }
    }

    if (v32)
    {
      goto LABEL_104;
    }

LABEL_56:
    if (a2 == -1)
    {
      goto LABEL_61;
    }

    if (StatusReg[28] != a2)
    {
      break;
    }

    if ((v21 & 4) == 0)
    {
      goto LABEL_61;
    }

    if (!a2)
    {
      goto LABEL_61;
    }

    v10 = v21 & 4;
    if (atomic_fetch_add_explicit((a2 + 12), 0xFFFFFFFF, memory_order_relaxed) > 1)
    {
      goto LABEL_61;
    }

    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
    OUTLINED_FUNCTION_38();
  }

  v32 = 0;
LABEL_104:
  _dispatch_set_priority_and_voucher_slow(v32, a2, v10 | 2);
LABEL_61:
  if (v10)
  {
    v35 = StatusReg[22];
    if (v35)
    {
      OUTLINED_FUNCTION_40();
    }

    else
    {
      v36 = 1;
    }

    v34 = v7;
    if (v36 <= _dispatch_continuation_cache_limit)
    {
      v34 = 0;
      *(v7 + 16) = v35;
      *(v7 + 8) = v36;
      StatusReg[22] = v7;
    }
  }

  else
  {
    v34 = 0;
  }

  if ((v21 & 8) == 0)
  {
    v38 = *(v7 + 32);
    v37 = *(v7 + 40);
    if (v37 && v38 == _dispatch_call_block_and_release && *(v37 + 16))
    {
      OUTLINED_FUNCTION_33();
    }

    _dispatch_client_callout(v37, v38);
    OUTLINED_FUNCTION_8();
    if (v39)
    {
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_75;
  }

  v41 = *(v7 + 48);
  v42 = *(*v41 + 16);
  if (v42 == 514)
  {
    _dispatch_client_callout(*(v7 + 40), *(v7 + 32));
    OUTLINED_FUNCTION_8();
    if (v43)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v41);
LABEL_75:
    if (v34)
    {
      _dispatch_continuation_free_to_cache_limit(v34);
    }

    v24 = v45;
    if (a3)
    {
      _dispatch_autorelease_pool_pop(a3);
    }

    ++StatusReg[26];
LABEL_80:
    if (v9 != 1792 && (OUTLINED_FUNCTION_8(), v40))
    {
      OUTLINED_FUNCTION_11();
      kdebug_trace();
      if (!v11)
      {
        goto LABEL_83;
      }
    }

    else if (!v11)
    {
LABEL_83:
      StatusReg[25] = StatusReg[25] & 0xF0000 | v44 & 0xFFF0FFFF;
      StatusReg[20] = v24;
      return;
    }

    _dispatch_continuation_free_to_cache_limit(v11);
    goto LABEL_83;
  }

  qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
  qword_782C8 = v42;
  __break(1u);
}

unint64_t _dispatch_lane_set_width(unsigned int a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 160);
  if ((a1 & 0x80000000) != 0)
  {
    v3 = (*(StatusReg + 32) >> 8) & 0x3FFF;
    if (a1 == -1)
    {
      if (!v3 || (a1 = pthread_qos_max_parallelism(), a1 <= 0))
      {
        a1 = MEMORY[0xFFFFFC036];
      }

      if (a1 >= MEMORY[0xFFFFFC034])
      {
        a1 = MEMORY[0xFFFFFC034];
      }
    }

    else if (a1 == -2)
    {
      if (!v3 || (a1 = pthread_qos_max_parallelism(), a1 <= 0))
      {
        a1 = MEMORY[0xFFFFFC035];
      }
    }

    else if (!v3 || (a1 = pthread_qos_max_parallelism(), a1 <= 0))
    {
      a1 = MEMORY[0xFFFFFC036];
    }
  }

  else if (a1 <= 1)
  {
    a1 = 1;
  }

  if (a1 >= 0xFFE)
  {
    v4 = 4094;
  }

  else
  {
    v4 = a1;
  }

  v5 = *(v2 + 80);
  v6 = v5;
  do
  {
    atomic_compare_exchange_strong_explicit((v2 + 80), &v6, v5 & 0xFFFF0000 | v4, memory_order_relaxed, memory_order_relaxed);
    v7 = v6 == v5;
    v5 = v6;
  }

  while (!v7);
  v8 = *(v2 + 24);

  return _dispatch_lane_inherit_wlh_from_target(v2, v8);
}

size_t _dispatch_queue_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v6 = *(a1 + 24);
  v7 = &unk_4BF93;
  if (v6 && v6[9])
  {
    v7 = v6[9];
  }

  v8 = *(a1 + 56);
  v9 = snprintf(__str, __size, "sref = %d, target = %s[%p], width = 0x%x, state = 0x%016llx", *(a1 + 96) + 1, v7, v6, *(a1 + 80), v8);
  v11 = v9;
  if (v9 >= __size)
  {
    v11 = __size;
  }

  if (v9 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v8 >> 55)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", suspended = %d");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v13 = 0;
    }

    v12 += v13;
  }

  v14 = ", inactive";
  switch((v8 >> 55) & 3)
  {
    case 1uLL:
      v14 = ", activating";
      goto LABEL_16;
    case 2uLL:
      v14 = ", activated";
      goto LABEL_16;
    case 3uLL:
LABEL_16:
      OUTLINED_FUNCTION_30(v9, v10, v14);
      OUTLINED_FUNCTION_13();
      if (v9 < 0)
      {
        v15 = 0;
      }

      v12 += v15;
      break;
    default:
      break;
  }

  if ((v8 & 0x4000000001) != 0)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", enqueued");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v16 = 0;
    }

    v12 += v16;
  }

  if ((v8 & 0x8000000000) != 0)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", dirty");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v17 = 0;
    }

    v12 += v17;
  }

  if ((v8 & 0x700000000) != 0)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", max qos %d");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v18 = 0;
    }

    v12 += v18;
  }

  if (v8 >= 4)
  {
    v19 = v8 | 3;
  }

  else
  {
    v19 = 0;
  }

  if (v8 >= 4 && ((*(a1 + 80) & 0x40000) == 0 || (*(a1 + 80) & 0x1000000) != 0))
  {
    OUTLINED_FUNCTION_30(v9, v10, ", draining on 0x%x");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v20 = 0;
    }

    v12 += v20;
  }

  if ((v8 & 0x40000000000000) != 0)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", in-barrier");
    OUTLINED_FUNCTION_13();
    if (v24 < 0)
    {
      v22 = 0;
    }

    v21 = v8 & 0x10000000000;
  }

  else
  {
    v21 = v8 & 0x10000000000;
    OUTLINED_FUNCTION_30(v9, v10, ", in-flight = %d");
    OUTLINED_FUNCTION_13();
    if (v23 < 0)
    {
      v22 = 0;
    }
  }

  v25 = v22 + v12;
  if (v21)
  {
    v26 = snprintf(&__str[v25], __size - v25, ", pending-barrier");
    v27 = v26;
    if (__size - v25 < v26)
    {
      v27 = __size - v25;
    }

    if (v26 < 0)
    {
      v27 = 0;
    }

    v25 += v27;
  }

  if ((*(a1 + 80) & 0x40000) != 0 && (*(a1 + 80) & 0x1000000) == 0)
  {
    v28 = __size - v25;
    v29 = snprintf(&__str[v25], v28, ", thread = 0x%x ", v19);
    v30 = v29;
    if (v28 < v29)
    {
      v30 = v28;
    }

    if (v29 < 0)
    {
      v30 = 0;
    }

    v25 += v30;
  }

  return v25;
}

uint64_t _dispatch_queue_debug(void *a1, char *__str, size_t __size)
{
  v6 = a1[9];
  if (!v6)
  {
    v6 = *(*a1 + 24);
  }

  v7 = snprintf(__str, __size, "%s[%p] = { ", v6, a1);
  v8 = v7;
  if (v7 >= __size)
  {
    v8 = __size;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + _dispatch_object_debug_attr(a1, &__str[v9], __size - v9);
  v11 = v10 + _dispatch_queue_debug_attr(a1, &__str[v10], __size - v10);
  v12 = __size - v11;
  v13 = snprintf(&__str[v11], v12, "}");
  v14 = v13;
  if (v12 < v13)
  {
    v14 = v12;
  }

  if (v13 < 0)
  {
    v14 = 0;
  }

  return v14 + v11;
}

unint64_t _dispatch_lane_inherit_wlh_from_target(uint64_t a1, unint64_t a2)
{
  if (*(*a2 + 18))
  {
    if (_dispatch_kevent_workqueue_enabled == 1 && (*(*a1 + 16) == 133137 || (*(*a1 + 16) != 19 || (*(*(a1 + 88) + 29) & 0x20) != 0) && *(a1 + 80) == 1 && (a2 >= &_dispatch_root_queues ? (v6 = &qword_74A80 > a2) : (v6 = 0), v6)))
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
      goto LABEL_17;
    }
  }

  result = v7;
LABEL_17:
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

  if ((*(*a2 + 16) & 0x10000) == 0)
  {
    if (*(*a2 + 16) == 18)
    {
      v11 = *(a2 + 24);
      if (v11 < &_dispatch_root_queues || v11 >= &qword_74A80)
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

size_t _dispatch_channel_debug()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = v2[20];
  v6 = snprintf(v5, v0, "%s[%p] = { ", *(*v2 + 24), v2);
  v7 = v6;
  if (v6 >= v0)
  {
    v7 = v0;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + _dispatch_object_debug_attr(v3, (v1 + v8), v0 - v8);
  v10 = _dispatch_queue_debug_attr(v3, (v1 + v9), v0 - v9);
  v11 = "cancelled, ";
  v12 = &unk_4BF93;
  if ((v4 & 0x10000000) == 0)
  {
    v11 = &unk_4BF93;
  }

  v13 = "needs-event, ";
  if ((v4 & 0x40000000) == 0)
  {
    v13 = &unk_4BF93;
  }

  if (v4 < 0)
  {
    v12 = "deleted, ";
  }

  v21 = v13;
  v22 = v12;
  v20 = v11;
  v14 = OUTLINED_FUNCTION_32();
  v17 = snprintf(v14, v15, v16, v20, v21, v22);
  v18 = v17;
  if (v17 >= v0)
  {
    v18 = v0;
  }

  if (v17 < 0)
  {
    v18 = 0;
  }

  return v9 + v18 + v10;
}

uint64_t _dispatch_runloop_root_queue_create_4CF(const char *a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 32);
  v5 = _dispatch_object_alloc(_OS_dispatch_queue_runloop_vtable, 120);
  v6 = v5;
  *(v5 + 16) = -1985229329;
  *(v5 + 80) = 262145;
  *(v5 + 56) = 0x1FFE1000000000;
  add_explicit = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v5 + 24) = &off_74680;
  v8 = "runloop-queue";
  if (a1)
  {
    v8 = a1;
  }

  *(v5 + 64) = add_explicit;
  *(v5 + 72) = v8;
  if ((v4 & 0x22000000) == 0 && (v4 & 0x3F00) != 0)
  {
    v9 = (__clz(__rbit32((v4 >> 8) & 0x3FFF)) << 8) + 256;
    if (((v4 >> 8) & 0x3FFF) == 0)
    {
      v9 = 0;
    }

    *(v5 + 84) = v9 & 0xFFFFFF00 | v4;
  }

  _dispatch_runloop_queue_handle_init(v5);
  v10 = *(v6 + 56);
  v11 = v10;
  do
  {
    atomic_compare_exchange_strong_explicit((v6 + 56), &v11, v10 & 0xFFFFFFFF00000003 | (4 * ((*(StatusReg + 24) >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v12 = v11 == v10;
    v10 = v11;
  }

  while (!v12);
  return v6;
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

  HIDWORD(v1) = qos_class_main() - 5;
  LODWORD(v1) = HIDWORD(v1);
  v0 = v1 >> 2;
  if (v0 > 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_4A8F0[v0];
  }

  dword_74054 = v2;
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = &_dispatch_main_q;
  v4 = qword_74038;
  v5 = qword_74038;
  do
  {
    atomic_compare_exchange_strong_explicit(&qword_74038, &v5, v4 & 0xFFFFFFFF00000003 | (4 * ((StatusReg[3] >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
  }

  while (!v6);
  if ((~*(StatusReg + 50) & 0xF0000) != 0)
  {
    StatusReg[25] = StatusReg[25] | 0xF0000;
  }

  _dispatch_time_init();
  _dispatch_vtable_init();
  _dispatch_vtable_init();
  _voucher_init();

  return _workgroup_init();
}

uint64_t dispatch_assert_queue_V2_cold_1(uint64_t result, void *a2)
{
  v2 = *(result + 160);
  v3 = v2 == 0;
  if (v2)
  {
    v4 = v2 == a2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(result + 168);
    do
    {
      v6 = v2[3];
      if (v5)
      {
        if (!v6)
        {
          v6 = *v5;
LABEL_11:
          v5 = v5[1];
          goto LABEL_12;
        }

        if (v2 == *v5)
        {
          goto LABEL_11;
        }
      }

LABEL_12:
      v3 = v6 == 0;
      if (v6)
      {
        v7 = v6 == a2;
      }

      else
      {
        v7 = 1;
      }

      v2 = v6;
    }

    while (!v7);
  }

  if (v3)
  {
    _dispatch_assert_queue_fail(a2, 1);
  }

  return result;
}

void dispatch_assert_queue_V2_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue()";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_assert_queue_not_V2_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue_not()";
  qword_782C8 = a1;
  __break(1u);
}

void *dispatch_assert_queue_barrier_cold_1(void *result)
{
  if (!result[3] || (result[7] & 0x40000000000000) == 0)
  {
    _dispatch_assert_queue_barrier_fail(result);
  }

  return result;
}

void dispatch_verify_current_queue_4swiftonly_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_am_i_on_queue_4swiftonly()";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_block_perform_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid flags passed to dispatch_block_perform()";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_block_invoke_direct_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t _dispatch_block_invoke_direct_cold_3()
{
  OUTLINED_FUNCTION_16();
  if (*(v2 + 160))
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_15();
  _dispatch_client_callout(v0, v1);
  return OUTLINED_FUNCTION_15();
}

uint64_t _dispatch_block_sync_invoke_cold_4(uint64_t a1, uint64_t a2)
{
  if (a1 == -1)
  {
    return 1;
  }

  if (*(a2 + 224) != a1)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  add_explicit = atomic_fetch_add_explicit((a1 + 12), 0xFFFFFFFF, memory_order_relaxed);
  result = 0;
  if (add_explicit > 1)
  {
    return 1;
  }

  qword_78298 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

void _dispatch_block_sync_invoke_cold_5(uint64_t a1, char *a2)
{
  if (a1 == 2)
  {
    OUTLINED_FUNCTION_26(a1, a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

void dispatch_block_wait_cold_3(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be waited for more than once";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_block_wait_cold_4(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_block_notify_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_notify()";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_block_notify_cold_3(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and observed";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_queue_set_label_nocopy_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change label for this queue";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_queue_compute_priority_and_wlh_cold_1()
{
  OUTLINED_FUNCTION_16();
  if (MEMORY[0xFFFFFC100])
  {
    OUTLINED_FUNCTION_25();
    kdebug_trace();
    if (!v1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v1)
  {
LABEL_3:
    *v1 = 0;
  }

LABEL_4:
  *v0 = 0;
}

void dispatch_set_qos_class_floor_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_lane_class_dispose_cold_1(uint64_t *a1)
{
  v1 = *a1;
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue while items are enqueued";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_lane_class_dispose_cold_2(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFC) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue with corrupt state";
    qword_782C8 = a1;
    __break(1u);
  }

  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Premature release of a locked queue";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_queue_xref_dispose_cold_1(uint64_t a1)
{
  if ((a1 & 0x180000000000000) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a suspended object";
    qword_782C8 = a1;
    __break(1u);
  }

  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of an inactive object";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_queue_set_width_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_queue_set_width_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot set width of a serial queue";
  qword_782C8 = a1;
  __break(1u);
}

_DWORD *_dispatch_lane_set_target_queue_cold_1(_DWORD *result, uint64_t a2)
{
  if ((result[20] & 0x400000) == 0)
  {
    if ((result[20] & 0x100000) != 0)
    {
      goto LABEL_17;
    }

    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of this object after it has been activated";
    __break(1u);
    goto LABEL_16;
  }

  v2 = a2;
  v3 = *(*result + 16);
  if (v3 == 17)
  {
    if ((result[20] & 0x100000) != 0)
    {
      v8 = "Changing the target of a queue already targeted by other dispatch objects";
      goto LABEL_13;
    }

    while (*(v2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed) <= 0)
    {
LABEL_16:
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
LABEL_17:
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of a queue already targeted by other dispatch objects";
      __break(1u);
LABEL_18:
      OUTLINED_FUNCTION_11();
      kdebug_trace();
LABEL_11:
      v8 = "Changing the target of a source after it has been activated";
LABEL_13:
      _dispatch_bug_deprecated(v8);
    }

    v4 = OUTLINED_FUNCTION_32();

    return _dispatch_barrier_trysync_or_async_f(v4, v5, v6, 1);
  }

  else
  {
    if (v3 == 19)
    {
      OUTLINED_FUNCTION_8();
      if (v7)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
    qword_782C8 = v3;
    __break(1u);
  }

  return result;
}

void _dispatch_lane_set_target_queue_cold_4(uint64_t a1, unint64_t a2)
{
  v3 = atomic_exchange_explicit((a1 + 24), a2, memory_order_release);
  if (v3)
  {
    if (*(v3 + 8) != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        if (add_explicit != 1)
        {
          qword_78298 = "API MISUSE: Over-release of an object";
          __break(1u);
          return;
        }

        _os_object_dispose(v3);
      }
    }
  }

  _dispatch_lane_resume(a1, 0);
}

void _dispatch_lane_legacy_set_target_queue_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_bug_deprecated("Changing the target of a queue already targeted by other dispatch objects");
}

void _dispatch_lane_legacy_set_target_queue_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  _dispatch_unfair_lock_unlock_slow(a1, a2);
  if ((v4 & 2) != 0)
  {
    v5 = *(a3 + 200);
    if ((v5 & 0xF0000) == 0)
    {
      OUTLINED_FUNCTION_35(v5);
    }
  }
}

void _dispatch_queue_invoke_finish_cold_1(uint64_t (***a1)(), uint64_t a2, uint64_t a3)
{
  v3 = 0x4000000000;
  if (a1 != &_dispatch_mgr_q)
  {
    v3 = 1;
  }

  v4 = *(a2 + 56);
  v5 = v4;
  do
  {
    v6 = v4 - a3;
    if (((v4 - a3) & 0xFFE0004000000001) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7 | (v4 - a3) & 0xFFFFFF7700000001;
    atomic_compare_exchange_strong_explicit((a2 + 56), &v5, v8 | 0x8000000000, memory_order_release, memory_order_relaxed);
    v9 = v5 == v4;
    v4 = v5;
  }

  while (!v9);
  v10 = HIDWORD(v6) & 7;
  if ((~v6 & 0x1800000000) == 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = *(StatusReg + 200);
    if ((HIWORD(v12) & 0xF) < v10)
    {
      *(StatusReg + 200) = v12 & 0xFFF0FFFF | (v10 << 16);
    }
  }

  if (((v8 ^ v6) & v3) != 0)
  {
    if ((v6 & 0x2000000000) != 0)
    {

      _dispatch_event_loop_poke(a2, v8 | 0x8000000000, (&dword_0 + 1));
    }

    else
    {
      v13 = OUTLINED_FUNCTION_32();

      v14(v13);
    }
  }

  else
  {

    _os_object_release_internal_n(a2, 2);
  }
}

void _dispatch_queue_priority_inherit_from_target_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_dispose_cold_1(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFC) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop with corrupt state";
    qword_782C8 = a1;
    __break(1u);
  }

  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a locked workloop";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_dispose_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop while items are enqueued";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_activate_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Process has too many threads.";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t _dispatch_workloop_activate_cold_3(const sched_param **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  memset(&v8, 0, sizeof(v8));
  pthread_attr_init(&v8);
  sched_priority = v4->sched_priority;
  if (v4->sched_priority)
  {
    pthread_attr_setschedparam(&v8, v4 + 1);
    sched_priority = v4->sched_priority;
    if ((v4->sched_priority & 2) == 0)
    {
LABEL_3:
      if ((sched_priority & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((sched_priority & 2) == 0)
  {
    goto LABEL_3;
  }

  pthread_attr_setschedpolicy(&v8, v4[2].sched_priority);
  if ((v4->sched_priority & 4) != 0)
  {
LABEL_4:
    pthread_attr_setcpupercent_np();
  }

LABEL_5:
  v6 = _pthread_workloop_create();
  if (v6)
  {
    if (v6 == 45)
    {
      _dispatch_workloop_activate_simulator_fallback(a2, &v8.__sig);
    }
  }

  else
  {
    v4->sched_priority |= 0x10u;
  }

  return pthread_attr_destroy(&v8);
}

void _dispatch_workloop_activate_cold_4(uint64_t a1, atomic_ullong *a2)
{
  v2 = *(a1 + 84);
  if (v2)
  {
    v3 = v2 | 0x80000000;
  }

  else
  {
    v3 = -2080358400;
  }

  *(a1 + 84) = v3;
  atomic_fetch_and_explicit(a2, 0xFF7FFFFFFFFFFFFFLL, memory_order_relaxed);
  _dispatch_workloop_wakeup(a1, 0, 1);
}

uint64_t _dispatch_workloop_wakeup_cold_1()
{
  v0 = OUTLINED_FUNCTION_32();

  return v1(v0);
}

uint64_t _dispatch_workloop_wakeup_cold_2(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if ((a1 & 0x700000000) == 0)
  {
    return 1;
  }

  if ((a2 & 0x2000000000) != 0)
  {
    _dispatch_event_loop_poke(a3, a2, (a4 | 0x80000000));
  }

  else
  {
    _dispatch_queue_wakeup_with_override_slow(a3, a2, a4);
  }

  return 0;
}

void _dispatch_workloop_wakeup_cold_3(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Waking up an inactive workloop";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_wakeup_cold_4(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Invalid way to wake up a workloop";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_invoke_cold_1(uint64_t (***a1)(), uint64_t a2)
{
  if (*a2 < 0x1000uLL)
  {
    OUTLINED_FUNCTION_10();
    if ((v4 & 1) == 0 && (v4 & 0x10) != 0 && *(v3 + 16))
    {
      OUTLINED_FUNCTION_33();
    }
  }

  else if (*(*a2 + 16) != 19 || a1 == &_dispatch_mgr_q)
  {
    OUTLINED_FUNCTION_0_1();
  }
}

uint64_t _dispatch_workloop_invoke_cold_2(unsigned int *a1, char a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_28(a1, a2, a3);
  if ((HIWORD(*v3) & 0xFu) < v4)
  {
    *v3 = *v3 & 0xFFF0FFFF | (v4 << 16);
  }

  return result;
}

void _dispatch_workloop_invoke_cold_3(uint64_t result)
{
  if (*result)
  {
    *(*result + 53) |= 2u;
    _dispatch_return_to_kernel();
  }
}

void _dispatch_workloop_invoke_cold_5(void **a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = a4;
  if (*a2 < 0x1000uLL)
  {
    OUTLINED_FUNCTION_14();
  }

  else if ((a3 & 1) == 0 || *(*a2 + 16) != 19)
  {
    OUTLINED_FUNCTION_0_1();
  }

  OUTLINED_FUNCTION_43(v4);
}

void _dispatch_workloop_invoke_cold_6()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24();
  v4 = *(v3 + 16);
  if (v4 == 514)
  {
    OUTLINED_FUNCTION_9();
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v5)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v6 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v6, v7);
    OUTLINED_FUNCTION_8();
    if (v8)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v4;
    __break(1u);
  }
}

uint64_t _dispatch_workloop_invoke_cold_7()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_workloop_invoke_cold_12()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24();
  v4 = *(v3 + 16);
  if (v4 == 514)
  {
    OUTLINED_FUNCTION_9();
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v5)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v6 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v6, v7);
    OUTLINED_FUNCTION_8();
    if (v8)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v4;
    __break(1u);
  }
}

uint64_t _dispatch_workloop_invoke_cold_13()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t _dispatch_workloop_barrier_complete_cold_2()
{
  v0 = OUTLINED_FUNCTION_32();

  return v1(v0);
}

uint64_t _dispatch_workloop_barrier_complete_cold_3(unint64_t a1, uint64_t a2, int a3)
{
  result = 1;
  if ((a1 & 0xFF80004000000000) == 0 && (a1 & 0xFFFFFFFD) != 0)
  {
    if ((a1 & 0x2000000000) != 0)
    {
      _dispatch_event_loop_poke(a2, a1, (a3 | 0x80000000));
    }

    else
    {
      _dispatch_queue_wakeup_with_override_slow(a2, a1, a3);
    }

    return 0;
  }

  return result;
}

void dispatch_async_swift_job_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Used Swift only SPI to enqueue non-Swift runtime objects into dispatch";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_channel_xref_dispose_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a channel that has not been cancelled, but has a cancel acknowledgement callback";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_channel_invoke_cold_1(uint64_t (***a1)(), uint64_t a2)
{
  if (*a2 < 0x1000uLL)
  {
    OUTLINED_FUNCTION_10();
    if ((v4 & 1) == 0 && (v4 & 0x10) != 0 && *(v3 + 16))
    {
      OUTLINED_FUNCTION_33();
    }
  }

  else if (*(*a2 + 16) != 19 || a1 == &_dispatch_mgr_q)
  {
    OUTLINED_FUNCTION_0_1();
  }
}

void _dispatch_channel_invoke_cold_7()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24();
  v4 = *(v3 + 16);
  if (v4 == 514)
  {
    OUTLINED_FUNCTION_9();
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v5)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v6 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v6, v7);
    OUTLINED_FUNCTION_8();
    if (v8)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v4;
    __break(1u);
  }
}

uint64_t _dispatch_channel_invoke_cold_8()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_channel_invoke_cold_14()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24();
  v4 = *(v3 + 16);
  if (v4 == 514)
  {
    OUTLINED_FUNCTION_9();
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v5)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v6 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v6, v7);
    OUTLINED_FUNCTION_8();
    if (v8)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v4;
    __break(1u);
  }
}

uint64_t _dispatch_channel_invoke_cold_15()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void dispatch_channel_create_cold_2()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unsupported callbacks version";
  qword_782C8 = 0;
  __break(1u);
}

void _dispatch_mgr_queue_push_cold_1(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(a1 + 104) = a2;
  *a3 = 0;
  if (((atomic_fetch_or_explicit((a1 + 56), 0x8000000000uLL, memory_order_release) ^ *(a4 + 24)) & 0xFFFFFFFC) != 0)
  {
    _dispatch_event_loop_poke(-8, 0, 0);
  }
}

void _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID_cold_1(unsigned __int16 a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue type";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_runloop_root_queue_perform_4CF_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_runloop_root_queue_perform_4CF_cold_5(uint64_t (***a1)(), uint64_t a2)
{
  if (*a2 < 0x1000uLL)
  {
    OUTLINED_FUNCTION_10();
    if ((v4 & 1) == 0 && (v4 & 0x10) != 0 && *(v3 + 16))
    {
      OUTLINED_FUNCTION_33();
    }
  }

  else if (a1 == &_dispatch_mgr_q || *(*a2 + 16) != 19)
  {
    OUTLINED_FUNCTION_0_1();
  }
}

void _dispatch_runloop_root_queue_perform_4CF_cold_6()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24();
  v4 = *(v3 + 16);
  if (v4 == 514)
  {
    OUTLINED_FUNCTION_9();
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v5)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v6 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v6, v7);
    OUTLINED_FUNCTION_8();
    if (v8)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v4;
    __break(1u);
  }
}

uint64_t _dispatch_runloop_root_queue_perform_4CF_cold_7()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_main_queue_drain_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_main_queue_callback_4CF called from the wrong thread";
  qword_782C8 = a1;
  __break(1u);
}

dispatch_queue_s *_dispatch_main_queue_drain_cold_7(uint64_t a1)
{
  if (*a1 < 0x1000uLL)
  {
    OUTLINED_FUNCTION_10();
    if ((v2 & 1) == 0 && (v2 & 0x10) != 0 && *(v1 + 16))
    {
      OUTLINED_FUNCTION_33();
    }
  }

  else if (*(*a1 + 16) != 19)
  {
    OUTLINED_FUNCTION_0_1();
  }

  return &_dispatch_main_q;
}

void _dispatch_main_queue_drain_cold_8()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24();
  v4 = *(v3 + 16);
  if (v4 == 514)
  {
    OUTLINED_FUNCTION_9();
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v5)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v6 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v6, v7);
    OUTLINED_FUNCTION_8();
    if (v8)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v4;
    __break(1u);
  }
}

uint64_t _dispatch_main_queue_drain_cold_9()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_queue_cleanup_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch queue is running";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_deferred_items_cleanup_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Premature thread exit with unhandled deferred items";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_queue_atfork_child_cold_1()
{
  v0 = qword_74038;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = v0;
  do
  {
    atomic_compare_exchange_strong_explicit(&qword_74038, &v2, v0 & 0xFFFFFFFF00000003 | (4 * ((*(StatusReg + 24) >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v0;
    v0 = v2;
  }

  while (!v3);
}

uint64_t _dispatch_async_and_wait_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t _dispatch_queue_specific_head_dispose_slow_cold_1()
{
  if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160))
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_mgr_queue_drain_cold_3(uint64_t result, uint64_t a2)
{
  if (result == 1)
  {
    _voucher_xref_dispose(a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
  }
}

void _dispatch_worker_thread_cold_1(uint64_t a1, char *a2)
{
  if (a1 == 1)
  {
    OUTLINED_FUNCTION_26(a1, a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

void _dispatch_worker_thread_cold_2(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Pending thread request underflow";
  qword_782C8 = a1 - 1;
  __break(1u);
}

void _dispatch_root_queue_drain_cold_5()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24();
  v3 = *(v2 + 16);
  if (v3 == 514)
  {
    if (*(v1 + 40))
    {
      if (*(v1 + 32) == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v4)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v5 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v5, v6);
    OUTLINED_FUNCTION_8();
    if (v7)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v3;
    __break(1u);
  }
}

uint64_t _dispatch_root_queue_drain_cold_6()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_root_queues_init_once_cold_2(int a1, int a2)
{
  qword_78298 = "BUG IN LIBDISPATCH: Root queue initialization failed";
  qword_782C8 = a2 | (a1 << 16);
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_3()
{
  v0 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  qword_78298 = "BUG IN LIBDISPATCH: Unable to limit cooperative pool size";
  qword_782C8 = v0;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_4(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Missing Kevent WORKQ support";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_5(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: QoS Maintenance support required";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_root_queue_drain_deferred_item_cold_2(uint64_t (***a1)(), uint64_t a2)
{
  if (*a2 < 0x1000uLL)
  {
    OUTLINED_FUNCTION_10();
    if ((v4 & 1) == 0 && (v4 & 0x10) != 0 && *(v3 + 16))
    {
      OUTLINED_FUNCTION_33();
    }
  }

  else if (*(*a2 + 16) != 19 || a1 == &_dispatch_mgr_q)
  {
    OUTLINED_FUNCTION_0_1();
  }
}

void _dispatch_root_queue_drain_deferred_item_cold_3()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24();
  v4 = *(v3 + 16);
  if (v4 == 514)
  {
    OUTLINED_FUNCTION_9();
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v5)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v6 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v6, v7);
    OUTLINED_FUNCTION_8();
    if (v8)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v4;
    __break(1u);
  }
}

uint64_t _dispatch_root_queue_drain_deferred_item_cold_4()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_root_queue_drain_deferred_wlh_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Invalid wlh state";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_apply_with_attr_f_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_apply_with_attr_f_cold_3(dispatch_queue_s *a1, dispatch_queue_s *a2, void *context)
{
  if (a1 == a2)
  {
    v4 = _dispatch_apply_serial;
  }

  else
  {
    v4 = _dispatch_apply_redirect;
  }

  dispatch_sync_f(a1, context, v4);
}

uint64_t _dispatch_apply_with_attr_f_cold_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = 0;
    if (a2 == a3)
    {
      break;
    }

    a2 = *(a2 + 16);
  }

  while (a2);
  return result;
}

void _dispatch_apply_with_attr_f_cold_6(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: attribute's properties are invalid or meaningless on this system";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_apply_with_attr_f_cold_8(uint64_t a1, uint64_t a2, void *context)
{
  if (((*(a1 + 56) ^ *(a2 + 24)) & 0xFFFFFFFC) != 0)
  {
    dispatch_async_and_wait_f(a1, context, _dispatch_apply_serial);
  }

  else
  {
    _dispatch_apply_serial(context);
  }
}

void dispatch_apply_attr_set_parallelism_cold_2()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: 0 is an invalid threads_per_cluster value";
  qword_782C8 = 0;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_3(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_cluster value, only acceptable value is 1";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_4(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_entity value for CPU entity";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_5(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unknown entity";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t dispatch_apply_attr_query_cold_3(uint64_t a1, unint64_t *a2)
{
  result = pthread_qos_max_parallelism();
  if (result < 1)
  {
    result = MEMORY[0xFFFFFC036];
  }

  v5 = result;
  if (*(a1 + 8))
  {
    result = pthread_qos_max_parallelism();
    if (result < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = (result * *(a1 + 8));
    }
  }

  else
  {
    v6 = -1;
  }

  if (v6 >= v5)
  {
    v6 = v5;
  }

  *a2 = v6;
  return result;
}

uint64_t _dispatch_source_debug(void *a1, char *__str, size_t __size)
{
  v5 = a1[11];
  v6 = snprintf(__str, __size, "%s[%p] = { ", *(*a1 + 24), a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_0_2();
  v12 = v8 + _dispatch_object_debug_attr(v9, v10, v11);
  v13 = OUTLINED_FUNCTION_0_2();
  v16 = v12 + _dispatch_source_debug_attr(v13, v14, v15);
  v17 = *(v5 + 29);
  if ((v17 & 2) != 0)
  {
    v23 = OUTLINED_FUNCTION_0_2();
    v16 += _dispatch_timer_debug_attr(v23, v24, v25);
    v17 = *(v5 + 29);
  }

  v18 = __size - v16;
  if (v17)
  {
    v19 = " (direct)";
  }

  else
  {
    v19 = &unk_4BF93;
  }

  v20 = snprintf(&__str[v16], v18, "kevent = %p%s, filter = %s }", v5, v19, **v5);
  v21 = v20;
  if (v18 < v20)
  {
    v21 = v18;
  }

  if (v20 < 0)
  {
    v21 = 0;
  }

  return v21 + v16;
}

size_t _dispatch_source_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 88);
  v6 = *(a1 + 80);
  v7 = *(v5 + 16);
  if (v4)
  {
    v8 = v4[9];
    if (!v8)
    {
      v8 = &unk_4BF93;
    }
  }

  else
  {
    v8 = &unk_4BF93;
  }

  v9 = v7 != 0;
  v10 = v7 & 1;
  v11 = "cancelled, ";
  if ((v6 & 0x10000000) == 0)
  {
    v11 = &unk_4BF93;
  }

  v12 = "needs-event, ";
  if ((v6 & 0x40000000) == 0)
  {
    v12 = &unk_4BF93;
  }

  if (v6 < 0)
  {
    v13 = "deleted, ";
  }

  else
  {
    v13 = &unk_4BF93;
  }

  v14 = snprintf(__str, __size, "target = %s[%p], ident = 0x%x, mask = 0x%x, pending_data = 0x%llx, registered = %d, armed = %d, %s%s%s", v8, v4, *(v5 + 24), *(v5 + 32), *(v5 + 72), v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14 >= __size)
  {
    v15 = __size;
  }

  if (v14 >= 0)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

size_t _dispatch_timer_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = snprintf(__str, __size, "timer = { target = 0x%llx, deadline = 0x%llx, interval = 0x%llx, flags = 0x%x }, ", *(*(a1 + 88) + 80), *(*(a1 + 88) + 88), *(*(a1 + 88) + 96), *(*(a1 + 88) + 30));
  v5 = v4;
  if (v4 >= __size)
  {
    v5 = __size;
  }

  if (v4 >= 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void dispatch_source_create_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target source to the cooperative root queue - not implemented";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_source_xref_dispose_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a source that has not been cancelled, but has a mandatory cancel handler";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_source_merge_data_cold_2(char a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid source type";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_source_cancel_cold_2(uint64_t a1)
{
  if ((atomic_fetch_or_explicit((a1 + 80), 0x10000000u, memory_order_release) & 0x10000000) != 0)
  {
    _os_object_release_internal_n(a1, 2);
  }

  else
  {
    (*(*a1 + 64))(a1, 0, 3);
  }
}

void dispatch_source_cancel_and_wait_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Source has a cancel handler";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_source_cancel_and_wait_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Dispatch source used after last release";
  qword_782C8 = a1;
  __break(1u);
}

_DWORD *dispatch_source_cancel_and_wait_cold_3(_DWORD *result, int a2, uint64_t a3)
{
  if (((a2 ^ *result) & 0xFFFFFFFC) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_source_cancel_and_wait called from a source handler";
    qword_782C8 = a3;
    __break(1u);
  }

  return result;
}

uint64_t dispatch_source_cancel_and_wait_cold_4(_DWORD *a1, uint64_t (*a2)(void))
{
  if ((*a1 & 0x80000000) == 0)
  {
    _dispatch_source_refs_unregister(a2, 3);
  }

  if ((*a1 & 0x80000000) != 0)
  {
    _dispatch_source_cancel_callout(a2, 0, 0);
  }

  v4 = *(*a2 + 64);

  return v4(a2, 0, 20);
}

uint64_t dispatch_source_cancel_and_wait_cold_5(uint64_t result, atomic_uint *a2)
{
  v3 = result;
  do
  {
    if ((v3 & 0x20000000) != 0 || (v4 = v3, atomic_compare_exchange_strong_explicit(a2, &v4, v3 | 0x20000000, memory_order_relaxed, memory_order_relaxed), v5 = v4 == v3, v3 = v3 | 0x20000000, v5))
    {
      result = _dispatch_wait_on_address(a2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
      v4 = *a2;
    }

    v3 = v4;
  }

  while ((v4 & 0x80000000) == 0);
  return result;
}

void dispatch_source_cancel_and_wait_cold_6(unint64_t a1, dispatch_object_t object)
{
  if (a1 >> 58)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Source is suspended";
    qword_782C8 = object;
    __break(1u);
  }

  else
  {
    dispatch_activate(object);
  }
}

void _dispatch_source_merge_evt_cold_1(int a1, uint64_t a2)
{
  if ((a1 & 0x4000000) != 0)
  {
    v3 = *(a2 + 24);
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports or file descriptors)";
    qword_782C8 = v3;
    __break(1u);
  }

  else
  {
    _dispatch_bug_kevent_vanished(a2, a2);
    *(a2 + 72) = 0;
  }
}

uint64_t _dispatch_mach_handoff_set_wlh(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 24);
  if (*(a2 + 24))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    while (1)
    {
      if ((*(a2 + 80) & 0x400000) != 0)
      {
        v6 = 0;
        v7 = (a2 + 100);
        atomic_compare_exchange_strong_explicit((a2 + 100), &v6, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v6)
        {
          v19 = result;
          v15 = StatusReg;
          v17 = a2;
          v11 = (a2 + 100);
          v13 = v2;
          _dispatch_unfair_lock_lock_slow((a2 + 100), 0x10000);
          v2 = v13;
          StatusReg = v15;
          v7 = v11;
          a2 = v17;
          result = v19;
        }

        atomic_fetch_and_explicit((a2 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v8 = *(StatusReg + 24) & 0xFFFFFFFC;
        v9 = atomic_exchange_explicit(v7, 0, memory_order_release);
        if (v9 != v8)
        {
          v18 = result;
          v14 = StatusReg;
          v16 = a2;
          v10 = v9;
          v12 = v2;
          _dispatch_unfair_lock_unlock_slow(v7, v9);
          v2 = v12;
          StatusReg = v14;
          a2 = v16;
          result = v18;
          if ((v10 & 2) != 0 && (*(v14 + 200) & 0xF0000) == 0)
          {
            *(v14 + 200) = *(v14 + 200) & 0xFFF0FFFFLL | 0x10000;
          }
        }
      }

      if ((*(a2 + 56) & 0x2000000000) != 0)
      {
        break;
      }

      a2 = *v2;
      v4 = *v2;
      v5 = *(v4 + 24);
      v2 = (v4 + 24);
      if (!v5)
      {
        a2 = 0;
        break;
      }
    }
  }

  else
  {
    a2 = 0;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t *dispatch_mach_handoff_reply(unint64_t a1, unsigned int a2, void *a3)
{
  v7 = _dispatch_mach_handoff_context(a2);
  v8 = *(v7 + 16);
  _dispatch_mach_handoff_set_wlh(v8, a1);
  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) <= 0)
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
    goto LABEL_22;
  }

  *(v7 + 24) = a1;
  v9 = _dispatch_Block_copy(a3);
  v10 = a3[2];
  if (v10)
  {
    if (v10 != _dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_20:
    *v8 = 276;
    v8[5] = v9;
    result = _dispatch_continuation_init_slow(v8, a1, 0);
    goto LABEL_18;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_20;
  }

LABEL_5:
  *v8 = 276;
  v8[4] = _dispatch_call_block_and_release;
  v8[5] = v9;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v4 >= 0x10FF)
  {
    v3 = 4351;
  }

  else
  {
    v3 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v12 = *(StatusReg + 224);
  if (!v12 || (result = 0, atomic_fetch_add_explicit((v12 + 12), 1u, memory_order_relaxed) > 0))
  {
    v8[3] = v12;
    if (v12 == -1 || !MEMORY[0xFFFFFC100])
    {
      if (!v4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_22:
    kdebug_trace();
    if (!v4)
    {
      goto LABEL_15;
    }

LABEL_13:
    v14 = *(a1 + 84);
    if ((v14 & 0x40000000) != 0 || (v14 & 0xFFF) == 0)
    {
      result = (__clz(__rbit32(v3 >> 8)) + 1);
      goto LABEL_17;
    }

LABEL_15:
    result = 0;
    v3 = 0;
LABEL_17:
    v8[1] = v3;
LABEL_18:
    *(v7 + 32) = result;
    v8[6] = *v8;
    *v8 = &unk_70E18;
    return result;
  }

  qword_78298 = "API MISUSE: Voucher resurrection";
  __break(1u);
  return result;
}

void _dispatch_mach_ipc_handoff_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v23[1] = "mach_msg";
  v23[2] = a1;
  v24 = 0;
  v25 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  __swp(v3, (a1 + 64));
  if (v3)
  {
    if (v3)
    {
      v3 = ~v3;
    }

    else
    {
      _dispatch_sync_ipc_handoff_begin(v3, v8, a1 + 64);
    }
  }

  *(a1 + 16) = -1985229329;
  *(a1 + 56) = 0;
  v23[0] = StatusReg[23];
  StatusReg[23] = v23;
  v9 = *(a1 + 24);
  *(a1 + 24) = -1;
  v10 = v9 == -1 || v9 == -1;
  if (!v10 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v11 = *(a1 + 8);
  if (v11 == -1)
  {
    v18 = 0;
  }

  else
  {
    v12 = StatusReg[25];
    if (((v12 >> 8) & 0xF) != 0)
    {
      v13 = 256 << ((BYTE1(v12) & 0xFu) - 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    v15 = v11 & 0xFFFFFF;
    if ((v11 & 0xFFFFFF) != 0)
    {
      v16 = v13 & 0xFFFFFF00;
      if ((v12 & 0x44000000) == 0 && (*(a1 + 8) & 0x10000000) == 0)
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
      v18 = v13 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    }
  }

  v19 = v18 & 0xFFFFFFFF02FFFFFFLL;
  v20 = StatusReg[4];
  if ((v20 & 0x1000000) != 0)
  {
    if (v19)
    {
LABEL_56:
      _dispatch_set_priority_and_voucher_slow(v19, v9, 6);
      goto LABEL_33;
    }

    v19 = v20 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v19 == (v20 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_28;
  }

  if (v19)
  {
    goto LABEL_56;
  }

LABEL_28:
  if (v9 == -1)
  {
    goto LABEL_33;
  }

  if (StatusReg[28] != v9)
  {
    v19 = 0;
    goto LABEL_56;
  }

  if (v9 && atomic_fetch_add_explicit((v9 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
  }

LABEL_33:
  if ((a3 & 0x1000000) != 0)
  {
    v21 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v21 = 0;
  }

  _dispatch_client_callout(*(a1 + 40), *(a1 + 32));
  if (v21)
  {
    _dispatch_autorelease_pool_pop(v21);
  }

  if ((v7 & 0x200) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v22 = v24;
  StatusReg[23] = v23[0];
  if (v22)
  {
    _dispatch_mach_ipc_handoff_async(v23);
  }

  else if (!atomic_fetch_add_explicit((a1 + 72), 0xFFFFFFFF, memory_order_relaxed))
  {
    free(a1);
  }

  if (v3)
  {
    _dispatch_sync_ipc_handoff_end(v3, v8);
  }
}

uint64_t _dispatch_mach_msg_debug(unsigned int *a1, char *__str, size_t __size)
{
  v6 = snprintf(__str, __size, "%s[%p] = { ", *(*a1 + 24), a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_3_0();
  v12 = v8 + _dispatch_object_debug_attr(v9, v10, v11);
  v13 = a1 + 22;
  v14 = snprintf(&__str[v12], __size - v12, "opts/err = 0x%x, msgh[%p] = { ", a1[12], a1 + 22);
  v16 = v14;
  if (__size - v12 < v14)
  {
    v16 = __size - v12;
  }

  if (v14 < 0)
  {
    v16 = 0;
  }

  if (a1[18])
  {
    v13 = *v13;
  }

  v17 = v16 + v12;
  if (v13[5])
  {
    v36 = v13[5];
    OUTLINED_FUNCTION_4_0(v14, v15, "id 0x%x, ");
    OUTLINED_FUNCTION_1_2();
    if (v14 < 0)
    {
      v18 = 0;
    }

    v17 += v18;
  }

  if (v13[1])
  {
    v36 = v13[1];
    OUTLINED_FUNCTION_4_0(v14, v15, "size %u, ");
    OUTLINED_FUNCTION_1_2();
    if (v14 < 0)
    {
      v19 = 0;
    }

    v17 += v19;
  }

  v20 = *v13;
  if (*v13)
  {
    v36 = (v20 >> 8) & 0x1F;
    v37 = v20 & 0x1F;
    OUTLINED_FUNCTION_4_0(v14, v15, "bits <l %u, r %u");
    OUTLINED_FUNCTION_1_2();
    if (v21 < 0)
    {
      v23 = 0;
    }

    v24 = v23 + v17;
    if ((*v13 & 0xFFE0E0E0) != 0)
    {
      v36 = *v13 & 0xFFE0E0E0;
      OUTLINED_FUNCTION_4_0(v21, v22, ", o 0x%x");
      OUTLINED_FUNCTION_1_2();
      if (v21 < 0)
      {
        v25 = 0;
      }

      v24 += v25;
    }

    OUTLINED_FUNCTION_4_0(v21, v22, ">, ");
    OUTLINED_FUNCTION_1_2();
    if (v14 < 0)
    {
      v26 = 0;
    }

    v17 = v26 + v24;
  }

  v27 = v13[2];
  if (v13[3])
  {
    if (v27)
    {
      v36 = v13[3];
      v37 = v13[2];
      v28 = "local 0x%x, remote 0x%x";
    }

    else
    {
      v36 = v13[3];
      v28 = "local 0x%x";
    }
  }

  else if (v27)
  {
    v36 = v13[2];
    v28 = "remote 0x%x";
  }

  else
  {
    v28 = "no ports";
  }

  OUTLINED_FUNCTION_4_0(v14, v15, v28);
  OUTLINED_FUNCTION_1_2();
  if (v30 < 0)
  {
    v29 = 0;
  }

  v31 = v29 + v17;
  v32 = __size - (v29 + v17);
  v33 = snprintf(&__str[v29 + v17], v32, " } }", v36, v37);
  v34 = v33;
  if (v32 < v33)
  {
    v34 = v32;
  }

  if (v33 < 0)
  {
    v34 = 0;
  }

  return v34 + v31;
}

uint64_t _dispatch_mach_debug(void *a1, char *__str, size_t __size)
{
  v5 = a1[9];
  if (!v5 || (*(a1 + 58) & 8) != 0)
  {
    v5 = *(*a1 + 24);
  }

  v6 = snprintf(__str, __size, "%s[%p] = { ", v5, a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_3_0();
  v12 = v8 + _dispatch_object_debug_attr(v9, v10, v11);
  v13 = OUTLINED_FUNCTION_3_0();
  v16 = v12 + _dispatch_mach_debug_attr(v13, v14, v15);
  v17 = __size - v16;
  v18 = snprintf(&__str[v16], v17, "}");
  v19 = v18;
  if (v17 < v18)
  {
    v19 = v17;
  }

  if (v18 < 0)
  {
    v19 = 0;
  }

  return v19 + v16;
}

size_t _dispatch_mach_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 120);
  v6 = &unk_4BF93;
  if (v4)
  {
    v7 = v4[9];
    if (!v7)
    {
      v7 = &unk_4BF93;
    }
  }

  else
  {
    v7 = &unk_4BF93;
  }

  if (*(v5 + 30))
  {
    v8 = " (armed)";
  }

  else
  {
    v8 = &unk_4BF93;
  }

  if (*(v5 + 48))
  {
    v6 = " (pending)";
  }

  v9 = snprintf(__str, __size, "target = %s[%p], receive = 0x%x, send = 0x%x, send-possible = 0x%x%s, checkin = 0x%x%s, send state = %016llx, disconnected = %d, canceled = %d ", v7, v4, *(*(a1 + 88) + 24), *(v5 + 92), *(v5 + 24), v8, *(v5 + 96), v6, *(v5 + 64), *(v5 + 88), (*(a1 + 80) >> 28) & 1);
  v10 = v9;
  if (v9 >= __size)
  {
    v10 = __size;
  }

  if (v9 >= 0)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void dispatch_mach_hooks_install_4libxpc_cold_1()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_hooks_install_4libxpc called twice";
  qword_782C8 = _dispatch_mach_xpc_hooks;
  __break(1u);
}

void dispatch_mach_hooks_install_4libxpc_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: trying to install hooks with unsupported version";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_create_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_connect_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Channel already connected";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_arm_no_senders_cold_2(char a1, mach_port_name_t a2)
{
  if (a1)
  {
    v2 = mach_port_deallocate(mach_task_self_, a2);
    if (v2 == -301)
    {
      qword_78298 = "MIG_REPLY_MISMATCH";
      qword_782C8 = -301;
      __break(1u);
    }

    if (v2)
    {
      _dispatch_bug(269, v2);
    }
  }

  else
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Mach port notification collision";
    qword_782C8 = a2;
    __break(1u);
  }
}

void _dispatch_mach_merge_msg_cold_1(uint64_t a1)
{
  v1 = *(a1 + 24);
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_mach_reply_merge_msg_cold_1(uint64_t (***a1)(), uint64_t a2)
{
  if (*a2 >= 0x1000uLL && (*(*a2 + 16) != 19 || a1 == &_dispatch_mgr_q))
  {
    OUTLINED_FUNCTION_2_0();
  }
}

void _dispatch_mach_send_and_wait_for_reply_cold_3(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Reply received on unexpected port";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_4(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_5(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from mach_msg_receive";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_6(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid reply port";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_install_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Channel never connected";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_create_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Message size too large";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_create_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Empty message";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_msg_dispose_cold_1(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
  }
}

void dispatch_mach_msg_get_filter_policy_id_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Messsage should be non-NULL";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_2(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Trailer format is invalid";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_3(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Trailer doesn't contain filter policy id";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_4()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Filter id should be non-NULL";
  qword_782C8 = 0;
  __break(1u);
}

void dispatch_mach_mig_demux_cold_3(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_mig_demux: mach_msg(MACH_SEND_MSG) failed";
  qword_782C8 = a1;
  __break(1u);
}

void *_dispatch_mach_msg_async_reply_wrap_cold_2(uint64_t a1, uint64_t a2, void *a3)
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

  *a3 = result;
  result[6] = a1;
  result[7] = a2;
  *result = &unk_70D38;
  result[1] = -1;
  result[3] = -1;
  return result;
}

uint64_t _dispatch_event_loop_drain_timers_cold_2(void *a1, void *a2)
{
  *a1 = 0;
  a2[9] = 2;
  return (*(*a2 + 48))(a2, 16, 0, 0);
}

uint64_t _dispatch_event_loop_drain_timers_cold_4(uint64_t result)
{
  if (MEMORY[0xFFFFFC100])
  {
    return kdebug_trace();
  }

  return v1;
}

uint64_t _dispatch_event_loop_drain_timers_cold_6(uint64_t result)
{
  if (result)
  {
    return ~*(result + 8);
  }

  return result;
}

void _dispatch_unote_unregister_direct(unsigned int *a1, char a2)
{
  v4 = *(a1 + 2);
  v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  v7 = 2;
  if (v4 <= 0xFFFFFFFFFFFFFFFBLL && v6 != 0)
  {
    if (*(v6 + 24) == v5)
    {
      a2 |= 5u;
      v7 = 6;
    }

    else
    {
      v7 = 2;
    }
  }

  if ((v4 & 2) != 0 && (a2 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v4 == 2)
  {
    *(a1 + 2) = 0;
    return;
  }

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    a2 |= 4u;
    v9 = 6;
  }

  v10 = v9 <= 3 && (a2 & 2) == 0;
  if (v10 || (_dispatch_kq_unote_update(v5, a1, v9), (v11 & 1) == 0))
  {
LABEL_10:
    if ((a2 & 4) != 0)
    {
      qword_78298 = "BUG IN LIBDISPATCH: Unregistration failed";
      __break(1u);
    }
  }
}

void _dispatch_sync_ipc_handoff_begin_cold_1(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_unote_dispose_defer_cold_1(unsigned __int16 a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Disposing a direct unote while deferring an event";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_free_deferred_unotes_cold_1(unsigned __int16 a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_1(int *a1)
{
  v1 = *a1;
  qword_78298 = "BUG IN LIBDISPATCH: Broken priority";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_2(unsigned int *a1, unsigned __int16 a2)
{
  v2 = (a2 << 16) | (*a1 << 32) | 2;
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = v2;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_3(uint64_t *a1)
{
  v1 = *a1;
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_event_loop_leave_deferred_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_event_loop_cancel_waiter_cold_2(uint64_t a1, unsigned __int16 a2)
{
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = (a2 << 16) | (a1 << 32) | 2;
  __break(1u);
}

void _dispatch_event_loop_cancel_waiter_cold_3(uint64_t a1)
{
  v1 = *(a1 + 64);
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_event_loop_wake_owner_cold_1(uint64_t a1)
{
  v1 = *(a1 + 12);
  qword_78298 = "BUG IN LIBDISPATCH: Broken priority";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_event_loop_wake_owner_cold_2(uint64_t a1, unsigned __int16 a2)
{
  v2 = (a2 << 16) | (*(a1 + 24) << 32) | 2;
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = v2;
  __break(1u);
}

void _dispatch_event_loop_wait_for_ownership_cold_4(uint64_t a1, unsigned __int16 a2)
{
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = (a1 << 32) | (a2 << 16) | 2;
  __break(1u);
}

void _dispatch_event_loop_end_ownership_cold_6(int a1, char *a2)
{
  if (a1 < 0)
  {
    vars0 = v2;
    vars8 = v3;
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }

  else
  {
    _os_object_dispose(a2);
  }
}

void _dispatch_mach_host_port_init_cold_3(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Could not get unprivileged host port";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t _dispatch_kevent_mach_msg_recv_cold_3(uint64_t result, uint64_t a2)
{
  if ((result & 0x210) != 0)
  {
    v2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL | 2;
  }

  else
  {
    if ((result & 0x80) == 0)
    {
      return result;
    }

    v2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
  }

  *(a2 + 16) = v2;
  return result;
}

void _dispatch_kevent_mach_msg_recv_cold_4(uint64_t a1)
{
  v1 = *(a1 + 20);
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Received message with MACH_PORT_NULL msgh_local_port";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_kevent_mach_msg_recv_cold_5(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message received";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_kq_init_cold_3()
{
  v0 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v0 != 4)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Failed to initalize workqueue kevent";
    qword_782C8 = v0;
    __break(1u);
  }
}

uint64_t _dispatch_kevent_mach_notify_resume_cold_3(uint64_t a1, mach_port_name_t *a2, _DWORD *a3)
{
  _dispatch_bug(3048, a1);
  result = mach_port_deallocate(mach_task_self_, *a2);
  *a3 = result;
  if (result == -301)
  {
    qword_78298 = "MIG_REPLY_MISMATCH";
    qword_782C8 = -301;
    __break(1u);
  }

  if (result)
  {
    return 1;
  }

  return result;
}

BOOL voucher_activity_should_send_strings()
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v0 = _firehose_task_buffer;
  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    return 0;
  }

  return firehose_buffer_should_send_strings(v0);
}

size_t voucher_kvoucher_debug(ipc_space_read_t a1, mach_port_name_t a2, uint64_t a3, unint64_t a4, unint64_t a5, const char *a6, size_t a7)
{
  bzero(recipes, 0x2000uLL);
  *object_addr = 0;
  *recipesCnt = 0x2000;
  if (mach_port_kernel_object(a1, a2, object_addr, &object_addr[1]) || object_addr[0] != 37)
  {
    if (a6)
    {
      OUTLINED_FUNCTION_9_0();
      snprintf((a3 + a5), a7, "%s", v100);
      OUTLINED_FUNCTION_13();
      if (v91 < 0)
      {
        v90 = 0;
      }

      a5 += v90;
    }

    if (a4 >= a5)
    {
      v92 = a4 - a5;
    }

    else
    {
      v92 = 0;
    }

    v93 = snprintf((a3 + a5), v92, "Invalid voucher: 0x%x\n");
    goto LABEL_116;
  }

  v15 = mach_voucher_debug_info(a1, a2, recipes, recipesCnt);
  if (v15)
  {
    v16 = v15;
    if (v15 != 46)
    {
      if (a6)
      {
        OUTLINED_FUNCTION_9_0();
        snprintf((a3 + a5), a7, "%s", v100);
        OUTLINED_FUNCTION_13();
        if (v95 < 0)
        {
          v94 = 0;
        }

        a5 += v94;
      }

      if (a4 >= a5)
      {
        v92 = a4 - a5;
      }

      else
      {
        v92 = 0;
      }

      mach_error_string(v16);
      v93 = snprintf((a3 + a5), v92, "Voucher: 0x%x Failed to get contents %s\n");
      goto LABEL_116;
    }
  }

  if (!*recipesCnt)
  {
    if (a6)
    {
      OUTLINED_FUNCTION_9_0();
      snprintf((a3 + a5), a7, "%s", v100);
      OUTLINED_FUNCTION_13();
      if (v97 < 0)
      {
        v96 = 0;
      }

      a5 += v96;
    }

    if (a4 >= a5)
    {
      v92 = a4 - a5;
    }

    else
    {
      v92 = 0;
    }

    v93 = snprintf((a3 + a5), v92, "Voucher: 0x%x has no contents\n");
LABEL_116:
    v98 = v93;
    if (v92 < v93)
    {
      v98 = v92;
    }

    if (v93 < 0)
    {
      v98 = 0;
    }

    return v98 + a5;
  }

  if (a6)
  {
    if (a4 >= a5)
    {
      v17 = a4 - a5;
    }

    else
    {
      v17 = 0;
    }

    v18 = snprintf((a3 + a5), v17, "%s", a6);
    v19 = v18;
    if (v17 < v18)
    {
      v19 = v17;
    }

    if (v18 < 0)
    {
      v19 = 0;
    }

    a5 += v19;
  }

  if (a4 >= a5)
  {
    v20 = a4 - a5;
  }

  else
  {
    v20 = 0;
  }

  v21 = snprintf((a3 + a5), v20, "Voucher: 0x%x\n", object_addr[1]);
  v22 = v21;
  if (v20 < v21)
  {
    v22 = v20;
  }

  if (v21 < 0)
  {
    v22 = 0;
  }

  v23 = v22 + a5;
  if (*recipesCnt)
  {
    v105 = a7;
    v106 = a6;
    v24 = 0;
    while (1)
    {
      v25 = &recipes[v24];
      if (*&recipes[v24])
      {
        break;
      }

LABEL_90:
      v24 = (v24 + *(v25 + 3) + 16);
      if (*recipesCnt <= v24)
      {
        return v23;
      }
    }

    if (a6)
    {
      OUTLINED_FUNCTION_5_0();
      snprintf((a3 + v23), v7, "%s", a6);
      OUTLINED_FUNCTION_2_1();
      if (v27 < 0)
      {
        v26 = 0;
      }

      v23 += v26;
    }

    v28 = OUTLINED_FUNCTION_4_1();
    snprintf(v28, v29, "Key: %u, ", v101);
    OUTLINED_FUNCTION_2_1();
    if (v31 < 0)
    {
      v30 = 0;
    }

    v32 = v30 + v23;
    v33 = OUTLINED_FUNCTION_7_0();
    snprintf(v33, v34, "Command: %u, ", v102);
    OUTLINED_FUNCTION_3_1();
    if (v36 < 0)
    {
      v35 = 0;
    }

    v37 = v35 + v32;
    v38 = OUTLINED_FUNCTION_7_0();
    snprintf(v38, v39, "Previous voucher: 0x%x, ", v103);
    OUTLINED_FUNCTION_3_1();
    if (v41 < 0)
    {
      v40 = 0;
    }

    v42 = v40 + v37;
    v43 = OUTLINED_FUNCTION_7_0();
    snprintf(v43, v44, "Content size: %u\n", v104);
    OUTLINED_FUNCTION_3_1();
    if (v46 < 0)
    {
      v45 = 0;
    }

    v7 = v45 + v42;
    if (*v25 == 3)
    {
      if (a6)
      {
        v53 = OUTLINED_FUNCTION_10_0();
        snprintf(v53, v54, "%s", v101);
        OUTLINED_FUNCTION_3_1();
        if (v56 < 0)
        {
          v55 = 0;
        }

        v7 += v55;
      }

      v57 = OUTLINED_FUNCTION_6_0();
      snprintf(v57, v58, "RESOURCE ACCOUNTING INFO: %s");
      goto LABEL_49;
    }

    if (*v25 == 2)
    {
      if (a6)
      {
        v47 = OUTLINED_FUNCTION_10_0();
        snprintf(v47, v48, "%s", v101);
        OUTLINED_FUNCTION_3_1();
        if (v50 < 0)
        {
          v49 = 0;
        }

        v7 += v49;
      }

      v51 = OUTLINED_FUNCTION_6_0();
      snprintf(v51, v52, "IMPORTANCE INFO: %s");
LABEL_49:
      OUTLINED_FUNCTION_3_1();
      if (v60 < 0)
      {
        v59 = 0;
      }

      v23 = v59 + v7;
      goto LABEL_86;
    }

    v61 = a6;
    if (*(v25 + 3) >= v105)
    {
      v62 = v105;
    }

    else
    {
      v62 = *(v25 + 3);
    }

    if (a4 >= v7)
    {
      v63 = a4 - v7;
    }

    else
    {
      v63 = 0;
    }

    snprintf((a3 + v7), v63, "%s%s:\n", v61, "Recipe Contents");
    OUTLINED_FUNCTION_3_1();
    if (v65 < 0)
    {
      v64 = 0;
    }

    v23 = v64 + v7;
    if (v62)
    {
      for (i = 0; i != v62; ++i)
      {
        v67 = i & 0xF;
        if ((i & 0xF) == 0)
        {
          if (i)
          {
            OUTLINED_FUNCTION_5_0();
            v68 = OUTLINED_FUNCTION_4_1();
            snprintf(v68, v69, "  %s\n", v101);
            OUTLINED_FUNCTION_2_1();
            if (v71 < 0)
            {
              v70 = 0;
            }

            v23 += v70;
          }

          OUTLINED_FUNCTION_5_0();
          snprintf((a3 + v23), v7, "%s  %04lx ", v106, i);
          OUTLINED_FUNCTION_2_1();
          if (v73 < 0)
          {
            v72 = 0;
          }

          v23 += v72;
        }

        OUTLINED_FUNCTION_5_0();
        v74 = OUTLINED_FUNCTION_4_1();
        snprintf(v74, v75, " %02x", v101);
        OUTLINED_FUNCTION_2_1();
        if (v77 < 0)
        {
          v76 = 0;
        }

        v23 += v76;
        v78 = v25[i + 16];
        if ((v78 - 127) < 0xFFFFFFA1)
        {
          LOBYTE(v78) = 46;
        }

        recipes[v67 + 0x2000] = v78;
      }

      recipes[v67 + 8193] = 0;
      if ((v62 & 0xF) == 0)
      {
        a6 = v106;
LABEL_86:
        if (*(a3 + v23 - 1) != 10)
        {
          OUTLINED_FUNCTION_5_0();
          snprintf(v87, v7, "\n");
          OUTLINED_FUNCTION_2_1();
          if (v89 < 0)
          {
            v88 = 0;
          }

          v23 += v88;
        }

        goto LABEL_90;
      }

      v79 = v62 + 1;
      do
      {
        OUTLINED_FUNCTION_5_0();
        snprintf((a3 + v23), v7, "   ");
        OUTLINED_FUNCTION_2_1();
        if (v81 < 0)
        {
          v80 = 0;
        }

        v23 += v80;
      }

      while ((v79++ & 0xF) != 0);
      OUTLINED_FUNCTION_5_0();
      v83 = OUTLINED_FUNCTION_4_1();
      snprintf(v83, v84, "  %s\n", v101);
      OUTLINED_FUNCTION_2_1();
      if (v86 < 0)
      {
        v85 = 0;
      }

      v23 += v85;
    }

    a6 = v106;
    goto LABEL_86;
  }

  return v23;
}

void _voucher_xref_dispose_cold_3(int a1, char *a2)
{
  if (a1 == 1)
  {
    _os_object_dispose(a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

void _voucher_task_mach_voucher_init_cold_1(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Could not create task mach voucher";
  qword_782C8 = a1;
  __break(1u);
}

void _voucher_insert_cold_3(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: base voucher has non-zero activity value";
  qword_782C8 = a1;
  __break(1u);
}

void _voucher_insert_cold_4(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: base voucher has nested base voucher";
  qword_782C8 = a1;
  __break(1u);
}

void _voucher_create_with_mach_msgv_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Invalid msg aux data size.";
  qword_782C8 = a1;
  __break(1u);
}

void voucher_decrement_importance_count4CF_cold_2(uint64_t a1, int a2)
{
  _dispatch_bug(766, a1);
  if (a2 == 5)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Voucher importance count underflow";
    qword_782C8 = a1;
    __break(1u);
  }
}

void _voucher_activity_debug_channel_init_cold_2(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Couldn't get debug control port";
  qword_782C8 = a1;
  __break(1u);
}

void _voucher_process_can_use_arbitrary_personas_init_cold_2(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: mach_voucher_attr_command(BANK_PERSONA_ADOPT_ANY) failed";
  qword_782C8 = a1;
  __break(1u);
}

void voucher_activity_initialize_4libtrace_cold_1()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: voucher_activity_initialize_4libtrace called twice";
  qword_782C8 = _voucher_libtrace_hooks;
  __break(1u);
}

void voucher_activity_initialize_4libtrace_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: unsupported vah_version";
  qword_782C8 = a1;
  __break(1u);
}

void voucher_activity_create_with_data_2_cold_4(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Absurd publen";
  qword_782C8 = a1;
  __break(1u);
}

void voucher_activity_flush_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Allocation should always fail";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_buffer_create_cold_1()
{
  qword_78298 = "BUG IN LIBDISPATCH: Invalid values for MADVISE_CHUNK_COUNT / CHUNK_SIZE";
  qword_782C8 = 0x4000;
  __break(1u);
}

void firehose_buffer_create_cold_3(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate mach port";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_3(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unable to make memory port";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_10(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unable to register with logd";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_12(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid size for the firehose buffer";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t firehose_buffer_tracepoint_reserve_slow_cold_1(uint64_t a1, char a2, mach_port_context_t a3, void *a4, uint64_t *a5)
{
  v10 = a3 + (*(a1 + 12) << 7) + 640;
  v11 = *v10;
  if (((*v10 >> 40) & 0x40) != 0)
  {
    v13 = v11 & 0xFFFF00FFFFFFFFFDLL | ((BYTE5(v11) | 0xC0u) << 40);
    for (i = *v10; ; v13 = i & 0xFFFF00FFFFFFFFFDLL | ((BYTE5(i) | 0xC0u) << 40))
    {
      atomic_compare_exchange_strong_explicit(v10, &i, v13, memory_order_relaxed, memory_order_relaxed);
      if (i == v11)
      {
        break;
      }

      v11 = i;
    }
  }

  else
  {
    *(v10 + 8) = mach_continuous_time();
    v11 = *v10;
    v12 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v12, *v10 & 0xFFFF00FFFFFFFFFDLL | (((WORD2(*v10) >> 8) | 0xC0u) << 40), memory_order_release, memory_order_relaxed);
    while (v12 != v11)
    {
      v11 = v12;
      atomic_compare_exchange_strong_explicit(v10, &v12, v12 & 0xFFFF00FFFFFFFFFDLL | ((BYTE5(v12) | 0xC0u) << 40), memory_order_release, memory_order_relaxed);
    }
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    _dispatch_gate_broadcast_slow(v10, v11);
    goto LABEL_10;
  }

  if ((v11 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  *(a1 + 13) = a2;
  result = firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(a3, a1, a4);
  *a5 = result;
  return result;
}

void firehose_drain_notifications_once_cold_1(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: firehose_drain_notifications_once() failed";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_drain_notifications_once_cold_2(uint64_t a1)
{
  v1 = *(a1 + 20);
  qword_78298 = "BUG IN LIBDISPATCH: firehose_mig_server doesn't handle replies";
  qword_782C8 = v1;
  __break(1u);
}

size_t _dispatch_io_debug()
{
  OUTLINED_FUNCTION_10_1();
  v19 = *(v2 + 24);
  v20 = v3;
  OUTLINED_FUNCTION_12_0(v3, v4, "%s[%p] = { ");
  OUTLINED_FUNCTION_4_2();
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = OUTLINED_FUNCTION_3_2();
  v11 = v7 + _dispatch_object_debug_attr(v8, v9, v10);
  v12 = OUTLINED_FUNCTION_3_2();
  v14 = v11 + _dispatch_io_debug_attr(v12, v13);
  v15 = v0 - v14;
  v16 = snprintf((v1 + v14), v15, "}", v19, v20);
  v17 = v16;
  if (v15 < v16)
  {
    v17 = v15;
  }

  if (v16 < 0)
  {
    v17 = 0;
  }

  return v17 + v14;
}

uint64_t _dispatch_io_debug_attr(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_12_0(*(a1 + 144), a2, "type = %s, fd = 0x%lx, %sfd_entry = %p, queue = %p, target = %s[%p], barrier_queue = %p, barrier_group = %p, err = 0x%x, low = 0x%zx, high = 0x%zx, interval%s = %llu ");
  OUTLINED_FUNCTION_4_2();
  if (v3 >= 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

size_t _dispatch_operation_debug()
{
  OUTLINED_FUNCTION_10_1();
  v19 = *(v2 + 24);
  v20 = v3;
  OUTLINED_FUNCTION_12_0(v3, v4, "%s[%p] = { ");
  OUTLINED_FUNCTION_4_2();
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = OUTLINED_FUNCTION_3_2();
  v11 = v7 + _dispatch_object_debug_attr(v8, v9, v10);
  v12 = OUTLINED_FUNCTION_3_2();
  v14 = v11 + _dispatch_operation_debug_attr(v12, v13);
  v15 = v0 - v14;
  v16 = snprintf((v1 + v14), v15, "}", v19, v20);
  v17 = v16;
  if (v15 < v16)
  {
    v17 = v15;
  }

  if (v16 < 0)
  {
    v17 = 0;
  }

  return v17 + v14;
}

uint64_t _dispatch_operation_debug_attr(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_12_0(*(a1 + 120), a2, "type = %s %s, fd = 0x%lx, fd_entry = %p, channel = %p, queue = %p -> %s[%p], target = %s[%p], offset = %lld, length = %zu, done = %zu, undelivered = %zu, flags = %u, err = 0x%x, low = 0x%zx, high = 0x%zx, interval%s = %llu ");
  OUTLINED_FUNCTION_4_2();
  if (v3 >= 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void __dispatch_io_create_block_invoke_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_0(a1);
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_5_1(v1);
    if (v4 ^ v5 | v2)
    {
      if (v2)
      {
        _os_object_dispose(v3);
      }

      else
      {
        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }
}

void __dispatch_io_create_with_path_block_invoke_cold_2(int a1, char *a2)
{
  if (a1 == 1)
  {
    _os_object_dispose(a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

void __dispatch_io_create_with_path_block_invoke_cold_3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_0(a1);
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_5_1(v1);
    if (v4 ^ v5 | v2)
    {
      if (v2)
      {
        _os_object_dispose(v3);
      }

      else
      {
        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }
}

void __dispatch_io_create_with_io_block_invoke_cold_2(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_8_0(a1);
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_5_1(v3);
    if (v6 ^ v7 | v4)
    {
      if (!v4)
      {
        goto LABEL_14;
      }

      _os_object_dispose(v5);
    }
  }

  if (*(*v1 + 8) == v2)
  {
    return;
  }

  v9 = OUTLINED_FUNCTION_5_1(*v1);
  if (!(v6 ^ v7 | v8))
  {
    return;
  }

  if (!v8)
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
LABEL_14:
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
    return;
  }

  _os_object_dispose(v9);
}

void __dispatch_io_create_with_io_block_invoke_2_cold_5(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_8_0(a1);
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_5_1(v3);
    if (v6 ^ v7 | v4)
    {
      if (!v4)
      {
        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
        goto LABEL_14;
      }

      _os_object_dispose(v5);
    }
  }

  if (*(*v1 + 8) == v2)
  {
    return;
  }

  v9 = OUTLINED_FUNCTION_5_1(*v1);
  if (!(v6 ^ v7 | v8))
  {
    return;
  }

  if (!v8)
  {
LABEL_14:
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
    return;
  }

  _os_object_dispose(v9);
}

void dispatch_io_set_high_water_cold_2(uint64_t a1, void ***a2)
{
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  OUTLINED_FUNCTION_9_1(v6, v7, v8, v9);
}

void dispatch_io_set_low_water_cold_2(uint64_t a1, void ***a2)
{
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  OUTLINED_FUNCTION_9_1(v6, v7, v8, v9);
}

void dispatch_io_set_interval_cold_2(uint64_t a1, void ***a2)
{
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  v7[3] = &__block_descriptor_tmp_23;
  v7[4] = v6;
  v7[5] = v8;
  v7[6] = v9;
  dispatch_channel_async(v10, v7);
}

void _dispatch_io_set_target_queue_cold_2(uint64_t a1, void ***a2)
{
  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) > 0)
  {
    OUTLINED_FUNCTION_0_4(a1, a2);
    OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
    OUTLINED_FUNCTION_6_1(v4, v5);
    OUTLINED_FUNCTION_9_1(v6, v7, v8, v9);
  }

  else
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void dispatch_io_close_cold_2(uint64_t a1, void ***a2)
{
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  v7[3] = &__block_descriptor_tmp_100;
  v7[4] = v6;
  dispatch_channel_async(v8, v7);
}

void dispatch_io_close_cold_4(uint64_t a1, void ***a2)
{
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  v7[3] = &__block_descriptor_tmp_27;
  v7[4] = v6;
  dispatch_channel_async(v8, v7);
}

void dispatch_io_barrier_cold_2(uint64_t a1, void ***a2)
{
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(1107296256), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  v7[4] = v8;
  v7[5] = v6;
  v7[3] = &__block_descriptor_tmp_36;
  dispatch_channel_async(v9, v7);
}

uint64_t _dispatch_operation_create_cold_4(uint64_t result, uint64_t a2)
{
  *(result + 136) = a2;
  v2 = *(a2 + 72);
  v3 = *(a2 + 88);
  *(result + 96) = *(a2 + 104);
  *(result + 64) = v2;
  *(result + 80) = v3;
  v4 = *(a2 + 24);
  do
  {
    v5 = v4;
    v4 = *(v4 + 24);
  }

  while (v4);
  *(result + 24) = v5;
  return result;
}

void _dispatch_operation_dispose_cold_2(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 176);
  if (v3 && !*(a1 + 56))
  {
    free(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 128);

  _Block_release(v7);
}

void ___dispatch_io_stop_block_invoke_2_cold_2(void ***block, void **a2)
{
  v3 = _dispatch_io_fds_lockq;
  *block = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___dispatch_io_stop_block_invoke_3;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a2;
  dispatch_channel_async(v3, block);
}

void _dispatch_fd_entry_cleanup_operations_cold_2(uint64_t a1, uint64_t a2, void ***a3, void **a4)
{
  dispatch_suspend(*(a1 + 64));
  v8 = *(*a2 + 72);
  *a3 = _NSConcreteStackBlock;
  a3[1] = 0x40000000;
  a3[2] = ___dispatch_fd_entry_cleanup_operations_block_invoke;
  a3[3] = &__block_descriptor_tmp_101;
  a3[4] = a1;
  a3[5] = a4;
  dispatch_channel_async(v8, a3);
}

void _dispatch_operation_should_enqueue_cold_2(uint64_t a1, dispatch_queue_t queue, int64_t *a3)
{
  v3 = *(a1 + 152);
  if (!v3)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    v6 = dispatch_time(0, *a3);
    dispatch_source_set_timer(v3, v6, *a3, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___dispatch_operation_timer_block_invoke;
    v7[3] = &__block_descriptor_tmp_116;
    v7[4] = v3;
    v7[5] = a1;
    dispatch_source_set_event_handler(v3, v7);
    *(a1 + 152) = v3;
  }

  dispatch_resume(v3);
}

dispatch_queue_t _dispatch_disk_init_cold_2(int a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = qword_78280;
  v9 = _dispatch_object_alloc(_OS_dispatch_disk_vtable, 8 * qword_78280 + 136);
  *a4 = v9;
  *(v9 + 16) = -1985229329;
  *(v9 + 12) = 0;
  *(v9 + 128) = v8;
  *(v9 + 24) = &off_74600;
  *(v9 + 104) = a1;
  *(v9 + 48) = 0;
  *(v9 + 56) = v9 + 48;
  *(v9 + 64) = 0;
  snprintf(a2, 0x2DuLL, "com.apple.libdispatch-io.deviceq.%d", a1);
  result = dispatch_queue_create(a2, 0);
  *(v9 + 72) = result;
  v11 = *a3;
  *(v9 + 112) = *a3;
  if (v11)
  {
    *(v11 + 120) = v9 + 112;
  }

  *a3 = v9;
  *(v9 + 120) = a3;
  return result;
}

void ___dispatch_operation_deliver_data_block_invoke_cold_2(uint64_t a1, dispatch_object_s **a2)
{
  dispatch_resume(*(*(a1 + 56) + 64));
  v3 = *a2;

  dispatch_release(v3);
}

void *dispatch_data_create_alloc(unint64_t a1, void *a2)
{
  if (!a1)
  {
    v5 = 0;
    result = &_dispatch_data_empty;
    if (!a2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a1 < 0xFFFFFFFFFFFFFFB0)
  {
    result = _dispatch_object_alloc(_OS_dispatch_data_vtable, a1 + 80);
    result[9] = 0;
    result[3] = &off_74600;
    result[2] = -1985229329;
  }

  else
  {
    result = 0;
  }

  v5 = result + 10;
  result[7] = &__block_literal_global_4154;
  result[8] = a1;
  result[6] = result + 10;
  if (a2)
  {
LABEL_6:
    *a2 = v5;
  }

  return result;
}

uint64_t _dispatch_data_debug(uint64_t a1, char *__str, size_t __size)
{
  v6 = snprintf(__str, __size, "data[%p] = { ", a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    snprintf(&__str[v8], __size - v8, "composite, size = %zd, num_records = %zd ", *(a1 + 64), v9);
    OUTLINED_FUNCTION_13();
    if (v11 < 0)
    {
      v10 = 0;
    }

    v12 = v10 + v8;
    if (*(a1 + 48))
    {
      snprintf(&__str[v12], __size - v12, ", flatbuf = %p ", *(a1 + 48));
      OUTLINED_FUNCTION_13();
      if (v14 < 0)
      {
        v13 = 0;
      }

      v12 += v13;
    }

    v15 = 0;
    v16 = (a1 + 96);
    do
    {
      v17 = snprintf(&__str[v12], __size - v12, "record[%zd] = { from = %zd, length = %zd, data_object = %p }, ", v15, *(v16 - 1), *v16, *(v16 - 2));
      v18 = v17;
      if (__size - v12 < v17)
      {
        v18 = __size - v12;
      }

      if (v17 < 0)
      {
        v18 = 0;
      }

      v12 += v18;
      ++v15;
      v16 += 3;
    }

    while (*(a1 + 72) > v15);
  }

  else
  {
    snprintf(&__str[v8], __size - v8, "leaf, size = %zd, buf = %p ", *(a1 + 64), *(a1 + 48));
    OUTLINED_FUNCTION_13();
    if (v20 < 0)
    {
      v19 = 0;
    }

    v12 = v19 + v8;
  }

  v21 = __size - v12;
  v22 = snprintf(&__str[v12], v21, "}");
  v23 = v22;
  if (v21 < v22)
  {
    v23 = v21;
  }

  if (v22 < 0)
  {
    v23 = 0;
  }

  return v23 + v12;
}

dispatch_data_t dispatch_data_create_map(dispatch_data_t data, const void **buffer_ptr, size_t *size_ptr)
{
  v5 = *(data + 8);
  if (!v5)
  {
    v11 = 0;
    v6 = &_dispatch_data_empty;
    if (buffer_ptr)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v6 = data;
  v7 = *(data + 9);
  if (v7 == 1)
  {
    v9 = *(data + 10);
    v8 = *(data + 11);
    if (!*(v9 + 9))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
    v9 = data;
    if (!v7)
    {
LABEL_4:
      v10 = *(v9 + 6);
      goto LABEL_5;
    }
  }

  v10 = *(v9 + 6);
  if (v10)
  {
LABEL_5:
    if (v10)
    {
      v11 = (v10 + v8);
      dispatch_retain(data);
      if (!buffer_ptr)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v12 = _dispatch_data_flatten(data);
  v11 = v12;
  if (v12)
  {
    v6 = dispatch_data_create(v12, v5, 0, &__block_literal_global);
    if (!buffer_ptr)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0;
  if (buffer_ptr)
  {
LABEL_14:
    *buffer_ptr = v11;
  }

LABEL_15:
  if (size_ptr)
  {
    *size_ptr = v5;
  }

  return v6;
}

char *dispatch_data_get_flattened_bytes_4libxpc(void *a1)
{
  if (!a1[8])
  {
    return 0;
  }

  v1 = a1;
  v2 = a1[9];
  if (v2 == 1)
  {
    v1 = a1[10];
    v3 = a1[11];
    if (!v1[9])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    if (!v2)
    {
LABEL_4:
      v4 = v1[6];
      goto LABEL_5;
    }
  }

  v4 = v1[6];
  if (v4)
  {
LABEL_5:
    if (v4)
    {
      return (v4 + v3);
    }
  }

  result = _dispatch_data_flatten(v1);
  if (result)
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit((v1 + 6), &v6, result, memory_order_release, memory_order_relaxed);
    if (v6)
    {
      free(result);
      result = v6;
    }

    result += v3;
  }

  return result;
}

void dispatch_data_create_subrange_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: dispatch_data_create_subrange out of bounds";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_data_copy_region_cold_1(uint64_t a1, uint64_t a2)
{
  qword_78298 = "BUG IN LIBDISPATCH: dispatch_data_copy_region out of bounds";
  qword_782C8 = a1 + a2;
  __break(1u);
}

uint64_t dispatch_time_to_nsecs(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  switch(a1)
  {
    case 0x8000000000000000:
      a1 = mach_continuous_time();
LABEL_11:
      v6 = 2;
      goto LABEL_16;
    case 0xFFFFFFFFFFFFFFFELL:
      a1 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      break;
    case 0xFFFFFFFFFFFFFFFFLL:
      v5 = 0;
      *a2 = 0;
      goto LABEL_21;
    case 0uLL:
      a1 = mach_absolute_time();
LABEL_15:
      v6 = 1;
LABEL_16:
      *a2 = v6;
      if (_dispatch_host_time_mach2nano)
      {
        a1 = _dispatch_host_time_mach2nano(a1);
      }

      else if (a1)
      {
        OUTLINED_FUNCTION_0_5();
        if (!v8 & v7)
        {
          v5 = 1;
          a1 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_1_3();
        if (!(!v8 & v7))
        {
          v5 = 1;
          a1 = 125 * v9 / 3;
          goto LABEL_21;
        }

        a1 = OUTLINED_FUNCTION_2_3(v9);
      }

      goto LABEL_8;
    default:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (a1 >> 62)
        {
          a1 = -1;
        }

        goto LABEL_15;
      }

      if ((a1 & 0x4000000000000000) == 0)
      {
        a1 &= 0x3FFFFFFFFFFFFFFFuLL;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_3_3();
      if (v8)
      {
        a1 = -v11;
      }

      else
      {
        a1 = v12;
      }

      break;
  }

  *a2 = 3;
LABEL_8:
  v5 = 1;
LABEL_21:
  *a3 = a1;
  return v5;
}

uint64_t dispatch_time_from_nsec(uint64_t a1, unint64_t a2)
{
  if (a2 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = a2;
  }

  if (_dispatch_host_time_nano2mach)
  {
    v5 = _dispatch_host_time_nano2mach(v4);
  }

  else if (a2 > 0x7FFFFFFFFFFFFFFELL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (a2 >= 0x5555555555555555)
  {
    v5 = 3 * (v4 / 0x7D);
  }

  else
  {
    v5 = 3 * v4 / 0x7D;
  }

  if (v5 > 0x3FFFFFFFFFFFFFFELL)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v5 | 0x8000000000000000;
  if (v5 > 0x3FFFFFFFFFFFFFFELL)
  {
    v7 = -1;
  }

  v8 = -1;
  if (a2 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v8 = -v4;
  }

  if (a1 == 2)
  {
    v8 = v7;
  }

  if (a1 == 1)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

unint64_t _dispatch_timeout(unint64_t result)
{
  v1 = result == 0x8000000000000000 || result == 0;
  if (v1)
  {
    return 0;
  }

  if (result == -1)
  {
    return result;
  }

  if (result == -2)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    if ((result & 0x4000000000000000) != 0)
    {
      OUTLINED_FUNCTION_3_3();
      if (v1)
      {
        v9 = -v7;
      }

      else
      {
        v9 = v8;
      }

      v10 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      if (v9 >= v10)
      {
        return v9 - v10;
      }

      else
      {
        return 0;
      }
    }

    v2 = result & 0x3FFFFFFFFFFFFFFFLL;
    v3 = mach_continuous_time();
  }

  else
  {
    v2 = result >> 62 ? -1 : result;
    v3 = mach_absolute_time();
  }

  if (v2 <= v3)
  {
    return 0;
  }

  v4 = _dispatch_host_time_mach2nano;
  if (_dispatch_host_time_mach2nano)
  {

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_0_5();
    if (!v1 & v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_1_3();
      if (v5)
      {
        return OUTLINED_FUNCTION_2_3(v6);
      }

      else
      {
        return 125 * v6 / 3;
      }
    }
  }
}

unint64_t _dispatch_mach_host_time_mach2nano(unint64_t result)
{
  v1 = result;
  if (result)
  {
    if ((_dispatch_host_time_data_1 & 1) == 0)
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (v1 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v2 = v1 * *&_dispatch_host_time_data_0 + 0.5;
        if (v2 < 9.22337204e18)
        {
          return v2;
        }
      }
    }
  }

  return result;
}

unint64_t _dispatch_mach_host_time_nano2mach(unint64_t result)
{
  v1 = result;
  if (result)
  {
    if ((_dispatch_host_time_data_1 & 1) == 0)
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (v1 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v2 = v1 / *&_dispatch_host_time_data_0 + 0.5;
        if (v2 < 9.22337204e18)
        {
          return v2;
        }
      }
    }
  }

  return result;
}

uint64_t _dispatch_time_init_cold_1(uint64_t result, unsigned int a2)
{
  *&_dispatch_host_time_data_0 = result / a2;
  _dispatch_host_time_data_1 = result == a2;
  _dispatch_host_time_mach2nano = _dispatch_mach_host_time_mach2nano;
  _dispatch_host_time_nano2mach = _dispatch_mach_host_time_nano2mach;
  return result;
}

uint64_t dispatch_benchmark_f(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (dispatch_benchmark_f_pred == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  dispatch_once_f(&dispatch_benchmark_f_pred, &dispatch_benchmark_f_bdata, _dispatch_benchmark_init);
  if (!a1)
  {
    return 0;
  }

LABEL_3:
  mach_absolute_time();
  v6 = a1;
  do
  {
    a3(a2);
    --v6;
  }

  while (v6);
  mach_absolute_time();
  return __udivti3() - qword_74AE0;
}