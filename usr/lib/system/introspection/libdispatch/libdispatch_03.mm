void _dispatch_destruct_reply_port()
{
  v0 = thread_destruct_special_reply_port();
  if (v0 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v0)
  {

    _dispatch_bug(524, v0);
  }
}

void _dispatch_mach_send_drain(atomic_uint *a1, const char *a2, unsigned int a3, uint64_t a4, int8x16_t a5)
{
  v33 = a2;
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 15);
  v9 = HIDWORD(*(v8 + 64)) & 7;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    if (*(v8 + 72))
    {
      v30 = v6;
      v10 = a3;
      v31 = v8 + 72;
LABEL_4:
      v11 = *(v8 + 80);
      if (!v11)
      {
        v11 = _dispatch_wait_for_enqueuer((v8 + 80), v31);
      }

      while (1)
      {
        v12 = v11;
        v11 = *(v11 + 16);
        *(v8 + 80) = v11;
        if (!v11)
        {
          v17 = *v31;
          while (v12 == (v17 & 0xFFFFFFFFFFFFFFF8))
          {
            v18 = v17;
            atomic_compare_exchange_strong_explicit(v31, &v18, 0, memory_order_release, memory_order_relaxed);
            v19 = v18 == v17;
            v17 = v18;
            if (v19)
            {
              goto LABEL_7;
            }
          }

          v11 = v12[2];
          if (!v11)
          {
            v11 = _dispatch_wait_for_enqueuer(v12 + 2, v31);
          }

          *(v8 + 80) = v11;
        }

LABEL_7:
        v13 = *v12;
        if (*v12 < 0x1000)
        {
          break;
        }

        if (*(v13 + 40) != 768)
        {
          v14 = 0;
          v15 = v12;
LABEL_18:
          if (*(v15 + 64) != -1 && MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          if (*(v8 + 88) || (a1[20] & 0x10000000) != 0)
          {
            _dispatch_mach_msg_not_sent(a1, v15, v14);
          }

          else
          {
            v16 = _dispatch_mach_msg_send(a1, v15, v14, v9, v10);
            if (!v16)
            {
              v30 |= 2 * (*(a1 + 59) & 1);
LABEL_38:
              v12[2] = v11;
              if (!v11)
              {
                v20 = 0;
                atomic_compare_exchange_strong_explicit(v31, &v20, v12, memory_order_release, memory_order_relaxed);
                if (v20)
                {
                  v28 = *(v8 + 80);
                  if (!v28)
                  {
                    v28 = _dispatch_wait_for_enqueuer((v8 + 80), v31);
                  }

                  v12[2] = v28;
                }
              }

              *(v8 + 80) = v12;
              if (*v12 >= 0x1000 && *(*v12 + 40) == 768)
              {
                v21 = *(v8 + 64);
                do
                {
                  v22 = v21;
                  v23 = v21 & 0xFFFFFFC700000000 | 0x3000000000;
                  atomic_compare_exchange_strong_explicit((v8 + 64), &v21, v23, memory_order_release, memory_order_relaxed);
                }

                while (v21 != v22);
              }

              else
              {
                v24 = *(v8 + 64);
                do
                {
                  v22 = v24;
                  v23 = v24 & 0xFFFFFFC7FFFFFFFFLL;
                  if ((v24 & 0x2800000000) == 0)
                  {
                    v23 = v24 & 0xFFFFFFD700000000 | 0x2000000000;
                  }

                  atomic_compare_exchange_strong_explicit((v8 + 64), &v24, v23, memory_order_release, memory_order_relaxed);
                }

                while (v24 != v22);
              }

              a3 &= ~8u;
              v6 = v30;
              goto LABEL_52;
            }

            v7 |= (v16 & 2) >> 1;
          }

          goto LABEL_25;
        }

        if ((a3 & 4) == 0)
        {
          goto LABEL_38;
        }

        _dispatch_continuation_pop(v12, 0, v33, a1, a5);
LABEL_25:
        v10 = a3 & 0xF7;
        if (!v11)
        {
          v10 = a3 & 0xF7;
          if (*v31)
          {
            goto LABEL_4;
          }

          a3 &= ~8u;
          v6 = v30;
          goto LABEL_50;
        }
      }

      if ((v13 & 1) == 0)
      {
        if (*(v8 + 16) && *(StatusReg + 160) != &_dispatch_mgr_q)
        {
          *(a1 + 59) |= 1u;
          v30 |= 2u;
          goto LABEL_38;
        }

        if (!_dispatch_mach_reconnect_invoke(a1, v12, a5))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      v15 = v12[6];
      v14 = v12[7];
      goto LABEL_18;
    }

LABEL_50:
    v25 = *(v8 + 64);
    do
    {
      v22 = v25;
      v23 = v25 & ((v25 << 26) >> 63) & 0xFFFFFFC7FFFFFFFFLL;
      atomic_compare_exchange_strong_explicit((v8 + 64), &v25, v23, memory_order_release, memory_order_relaxed);
    }

    while (v25 != v22);
LABEL_52:
    if ((v22 & 0x800000000) != 0)
    {
      v26 = HIDWORD(v22) & 7;
      v27 = *(StatusReg + 200);
      if ((HIWORD(v27) & 0xF) < v26)
      {
        *(StatusReg + 200) = v27 & 0xFFF0FFFF | (v26 << 16);
      }
    }

    v9 = HIDWORD(v23) & 7;
  }

  while (v23);
  if ((v23 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(a1, BYTE4(v23) & 7, a5, v6, a4);
    return;
  }

  if (!v23 && (*(a1 + 59) & 2) != 0)
  {
    if ((a1[29] & 8) != 0)
    {
      v6 = v6;
    }

    else
    {
      v6 = v6 | 0x12;
    }
  }

  if (((v22 ^ v23) & 0x8000000000) == 0)
  {
    if (!v6)
    {
      return;
    }

LABEL_73:
    (*(*a1 + 80))(a1, (*(a1 + 59) << 31 >> 31) & v9, v6);
    return;
  }

  if (v6)
  {
    v6 = v6 | 1;
    goto LABEL_73;
  }

  if (a1[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release);
    if (add_explicit <= 2)
    {
      if (add_explicit == 2)
      {
        _os_object_dispose(a1, a2);
      }

      else
      {
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }
}

void _dispatch_mach_msg_not_sent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 48);
  if ((*(a1 + 116) & 0x10) != 0 && *(a2 + 32))
  {
    v7 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = a1;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = 12;
  }

  else
  {
    v9 = 7;
  }

  reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(a2, a3, v9);
  if ((v6 & 2) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = -117964795;
  }

  *(a2 + 48) = v12;
  _dispatch_mach_handle_or_push_received_msg(a1, a2, 0, v11);
  if (reply_disconnected)
  {
    if (v8)
    {
      v14 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, a1);
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_push_internal(v8, v14, v15);
      }

      _dispatch_introspection_queue_item_enqueue(v8, v14);
      v16 = *(v8->isa + 11);
      v17 = __clz(__rbit32((*(reply_disconnected + 56) >> 8) & 0x3FFF));
      if (((*(reply_disconnected + 56) >> 8) & 0x3FFF) != 0)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = 0;
      }

      v16(v8, v14, v18);
    }

    else
    {

      _dispatch_mach_handle_or_push_received_msg(a1, reply_disconnected, 0, v13);
    }
  }
}

uint64_t _dispatch_mach_msg_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a1;
  v7 = *(a1 + 120);
  v8 = (a2 + 88);
  if (*(a2 + 72))
  {
    v8 = *v8;
  }

  v9 = *(a2 + 64);
  v10 = *v8 & 0x1F;
  v11 = *(a2 + 52);
  v12 = 0uLL;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  memset(v87, 0, 40);
  if (v10 == 18)
  {
    v13 = (a2 + 48);
    v14 = *(a2 + 48);
    if ((v14 & 2) == 0)
    {
      v15 = 0;
      v16 = 0;
      LOBYTE(v17) = 1;
      goto LABEL_38;
    }

LABEL_19:
    LODWORD(v27) = 0;
    goto LABEL_65;
  }

  v18 = *(a1 + 118);
  *(a1 + 118) = v18 & 0xFFFE;
  v19 = *(v7 + 48);
  if (v19)
  {
    v20 = v19 == a2;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v84 = v11;
    v79 = a5;
    v27 = v7;
    if (*(v7 + 16) && *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160) != &_dispatch_mgr_q)
    {
      v51 = 0;
      goto LABEL_91;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v58 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v58 >= 0x10FF)
    {
      v58 = 4351;
    }

    *(v19 + 56) = v58;
    v59 = *(StatusReg + 224);
    if (v59)
    {
      v60 = a4;
      os_retain(*(StatusReg + 224));
      a4 = v60;
    }

    *(v19 + 64) = v59;
    *(v19 + 48) = ((*(StatusReg + 32) & 0x300) != 0) << 18;
    v61 = a4;
    if (!_dispatch_mach_msg_send(v6, *(v27 + 48), 0, a4, 0))
    {
      goto LABEL_124;
    }

    if ((*(v6 + 116) & 0x20) != 0)
    {
      _dispatch_mach_arm_no_senders(v6, 1);
    }

    v19 = 0;
    v7 = v27;
    *(v27 + 48) = 0;
    a5 = v79;
    v11 = v84;
    LODWORD(a4) = v61;
  }

  v13 = (a2 + 48);
  v14 = *(a2 + 48);
  if ((v14 & 2) != 0)
  {
    goto LABEL_19;
  }

  v21 = 1;
  if (v19 != a2)
  {
    *(v8 + 2) = *(v7 + 92);
  }

  if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160) != &_dispatch_mgr_q)
  {
    if (v9)
    {
      goto LABEL_16;
    }

LABEL_23:
    if ((*(v8 + 2) & 0x1F) == 0)
    {
      if (_voucher_task_mach_voucher_pred != -1)
      {
        v70 = v6;
        v80 = v13;
        v71 = v11;
        v72 = a5;
        v73 = a4;
        v74 = v21;
        dispatch_once_f(&_voucher_task_mach_voucher_pred, 0, _voucher_task_mach_voucher_init);
        v21 = v74;
        LODWORD(a4) = v73;
        v11 = v71;
        v13 = v80;
        v6 = v70;
        a5 = v72;
      }

      v15 = 0;
      mach_voucher = _voucher_task_mach_voucher;
      goto LABEL_32;
    }

LABEL_28:
    v15 = 0;
    goto LABEL_29;
  }

  if (!*(v7 + 16))
  {
    v85 = a4;
    v66 = v11;
    v67 = a5;
    v68 = *(v6 + 120);
    *(v68 + 24) = *(v8 + 2);
    _dispatch_unote_register(v68, -4, 0x2000000);
    if ((v69 & 1) == 0)
    {
      _dispatch_bug(1752, 0);
    }

    a5 = v67;
    v11 = v66;
    v13 = (a2 + 48);
    LODWORD(a4) = v85;
  }

  if (*(v7 + 30))
  {
    return 0;
  }

  v21 = 129;
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_16:
  v22 = *(v9 + 48);
  if (!v22)
  {
    if ((*(v8 + 2) & 0x1F) == 0)
    {
      v76 = v21;
      v82 = a4;
      v77 = v6;
      v23 = v13;
      v24 = v11;
      v25 = v7;
      v26 = a5;
      v15 = 0;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  *(&v87[0] + 1) = 59821818;
  *&v87[1] = v22;
  *(&v87[1] + 8) = *(v9 + 56);
  LODWORD(v87[0]) = 40;
  v15 = 32;
  if ((*(v8 + 2) & 0x1F) != 0)
  {
LABEL_29:
    v16 = 0;
    goto LABEL_35;
  }

  v76 = v21;
  v82 = a4;
  v77 = v6;
  v23 = v13;
  v24 = v11;
  v25 = v7;
  v26 = a5;
LABEL_31:
  mach_voucher = _voucher_get_mach_voucher(v9, a2);
  a5 = v26;
  v7 = v25;
  v11 = v24;
  v13 = v23;
  v6 = v77;
  LODWORD(a4) = v82;
  v21 = v76;
LABEL_32:
  v16 = 0;
  if (mach_voucher)
  {
    v29 = *v8;
    if ((*v8 & 0x1F0000) == 0)
    {
      *(v8 + 4) = mach_voucher;
      *v8 = v29 | 0x130000;
      v16 = 1;
    }
  }

LABEL_35:
  if (a4)
  {
    v17 = v21 | 0x30;
    if (!v11)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v17 = v21 | 0x10;
  if (v11)
  {
LABEL_37:
    v17 |= (4 * *(v6 + 116)) & 0x200;
  }

LABEL_38:
  v83 = v16;
  v81 = v7;
  if ((v14 & 4) == 0)
  {
    v33 = v13;
    v35 = v11;
    v34 = a5;
    goto LABEL_46;
  }

  if (*(a3 + 30) != 1)
  {
    v30 = v15;
    goto LABEL_44;
  }

  v30 = v15;
  v31 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (v11 != *(v31 + 64))
  {
LABEL_44:
    v32 = v17;
    v33 = v13;
    v34 = a5;
    goto LABEL_45;
  }

  v32 = v17;
  v33 = v13;
  v34 = a5;
  *(v31 + 64) = 0;
LABEL_45:
  v35 = v11;
  _dispatch_mach_reply_waiter_register(v6, a3, v11, a2);
  LOBYTE(v17) = v32;
  v15 = v30;
LABEL_46:
  v36 = *(v8 + 1);
  v88 = v8;
  *&v89 = v36;
  v37 = v87[0];
  if (!v15)
  {
    v37 = 0;
  }

  *(&v89 + 1) = v87;
  *&v90 = 0;
  *(&v90 + 1) = v37;
  v78 = v17;
  v38 = mach_msg2_internal();
  v27 = v38;
  if ((v14 & 4) != 0 && v38)
  {
    _dispatch_mach_reply_unregister(v6, a3, 36, v12);
  }

  a5 = v34;
  v7 = v81;
  v11 = v35;
  v13 = v33;
  if (v83)
  {
    v39 = *(v8 + 4);
    if (v27 != 268435461 || !v39)
    {
      v40 = *v8;
      v41 = HIWORD(*v8) & 0x1F;
      v42 = v41 == 17 || v41 == 19;
      if (v42 && v39)
      {
        if (v41 == 17)
        {
          v43 = a5;
          v44 = v6;
          v45 = v13;
          v46 = v11;
          _voucher_dealloc_mach_voucher(v39);
          v11 = v46;
          v13 = v45;
          v6 = v44;
          a5 = v43;
          v7 = v81;
          v40 = *v8;
        }

        *(v8 + 4) = 0;
        *v8 = v40 & 0xFFE0FFFF;
      }

      goto LABEL_63;
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Voucher port corruption";
    qword_6D1F0 = 268435461;
    __break(1u);
LABEL_124:
    v75 = *(*(v27 + 48) + 64);
    if (v75)
    {
      os_release(v75);
      v51 = 0;
      *(*(v27 + 48) + 64) = 0;
      return v51;
    }

    return 0;
  }

LABEL_63:
  if (v27 == 268435460)
  {
    LODWORD(v27) = 268435460;
    if ((v78 & 0x10) != 0)
    {
      if (*(v8 + 2) == -1)
      {
        *v8 = *v8 & 0xFFFFFFE0 | 0x13;
        if ((v78 & 0x80) == 0)
        {
          goto LABEL_90;
        }
      }

      else if ((v78 & 0x80) == 0)
      {
LABEL_90:
        v51 = 0;
        v18 = *(v6 + 118);
LABEL_91:
        *(v6 + 118) = v18 | 1;
        return v51;
      }

      _dispatch_mach_notification_set_armed(v7);
      return 0;
    }
  }

LABEL_65:
  if (!(v14 & 4 | v27))
  {
    if (v11)
    {
      v47 = *(v6 + 88);
      if (!*(v47 + 16) || *(v47 + 24) != v11)
      {
        v48 = a5;
        _dispatch_mach_reply_kevent_register(v6, v11, a2);
        a5 = v48;
      }
    }
  }

  if (v10 != 18 && *(v7 + 48) == a2 && *(v7 + 16))
  {
    v62 = a5;
    _dispatch_unote_unregister(*(v6 + 120), 5);
    a5 = v62;
    *(*(v6 + 120) + 24) = 0;
    if (!v27)
    {
      goto LABEL_74;
    }
  }

  else if (!v27)
  {
LABEL_74:
    v49 = 0;
    reply_disconnected = 0;
    goto LABEL_75;
  }

  if ((*(v6 + 116) & 0x10) == 0)
  {
    v63 = a5;
LABEL_115:
    v49 = 0;
    goto LABEL_116;
  }

  v63 = a5;
  if (!*(a2 + 32))
  {
    goto LABEL_115;
  }

  v64 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
  if (v64)
  {
    v49 = v64;
  }

  else
  {
    v49 = v6;
  }

LABEL_116:
  if (v49)
  {
    v65 = 12;
  }

  else
  {
    v65 = 7;
  }

  reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(a2, a3, v65);
  a5 = v63;
LABEL_75:
  *v13 = v27;
  if (a5 & 8) != 0 && (v14)
  {
    v51 = 3;
    if (!reply_disconnected)
    {
      return v51;
    }
  }

  else
  {
    _dispatch_mach_handle_or_push_received_msg(v6, a2, 0, v12);
    v51 = 1;
    if (!reply_disconnected)
    {
      return v51;
    }
  }

  if (v49)
  {
    v52 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, v6);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(v49, v52, v53);
    }

    _dispatch_introspection_queue_item_enqueue(v49, v52);
    v54 = __clz(__rbit32((*(reply_disconnected + 56) >> 8) & 0x3FFF));
    if (((*(reply_disconnected + 56) >> 8) & 0x3FFF) != 0)
    {
      v55 = v54 + 1;
    }

    else
    {
      v55 = 0;
    }

    (*(v49->isa + 11))(v49, v52, v55);
  }

  else
  {
    _dispatch_mach_handle_or_push_received_msg(v6, reply_disconnected, 0, v12);
  }

  return v51;
}

void _dispatch_mach_push_send_barrier_drain(uint64_t a1, unsigned int a2, int8x16_t a3, uint64_t a4, uint64_t a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 176);
  if (v8)
  {
    *(StatusReg + 176) = v8[2];
  }

  else
  {
    v8 = _dispatch_continuation_alloc_from_heap();
  }

  v8[4] = 0;
  v8[5] = 0;
  v8[3] = -1;
  *v8 = &unk_64630;
  v8[1] = -1;

  _dispatch_lane_push(a1, v8, a2, a5, a3);
}

uint64_t _dispatch_mach_reply_waiter_register(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  *(a2 + 8) = ~result;
  *(a2 + 28) = -8;
  *(a2 + 24) = a3;
  if ((*(a2 + 30) & 1) == 0)
  {
    v7 = *(a4 + 64);
    if (v7)
    {
      result = os_retain(*(a4 + 64));
      *(a2 + 56) = v7;
    }

    *(a2 + 40) = *(a4 + 56);
    *(a2 + 48) = *(a4 + 32);
  }

  v8 = 0;
  v9 = *(v5 + 120);
  v10 = (v9 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v9 + 40), &v8, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    result = _dispatch_unfair_lock_lock_slow((v9 + 40), 0x10000);
  }

  v14 = *(v9 + 56);
  v13 = (v9 + 56);
  v12 = v14;
  *(a2 + 64) = v14;
  if (v14)
  {
    *(v12 + 72) = a2 + 64;
  }

  *v13 = a2;
  *(a2 + 72) = v13;
  v15 = *(StatusReg + 24) & 0xFFFFFFFC;
  v16 = atomic_exchange_explicit(v10, 0, memory_order_release);
  if (v16 != v15)
  {

    return _dispatch_unfair_lock_unlock_slow(v10, v16);
  }

  return result;
}

void _dispatch_mach_reply_kevent_register(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = off_64E50(&_dispatch_mach_type_reply, a2, 0);
  *(v5 + 1) = ~a1;
  v6 = *(a3 + 64);
  if (v6)
  {
    os_retain(*(a3 + 64));
    *(v5 + 7) = v6;
  }

  v7 = 0;
  *(v5 + 10) = *(a3 + 56);
  v8 = *(a3 + 32);
  *(v5 + 6) = v8;
  v9 = *(a1 + 116);
  if ((v9 & 0x10) != 0 && v8)
  {
    v10 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = a1;
    }

    v9 = *(a1 + 116);
  }

  if ((v9 & 0x80) != 0)
  {
    *(v5 + 8) |= 0x200u;
  }

  v29 = 0;
  if (!v7 || v7 == a1)
  {
    v11 = *(a1 + 88);
    if (*(v11 + 16) >= 4uLL)
    {
      v29 = *(v11 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      v7 = a1;
      goto LABEL_19;
    }
  }

  if ((BYTE2((*v7)[1].isa) & 1) == 0)
  {
    v12 = _dispatch_queue_compute_priority_and_wlh(v7, &v29);
    if (v12)
    {
      goto LABEL_20;
    }

    v29 = -4;
    goto LABEL_19;
  }

  v29 = -4;
  v12 = 0x2000000;
  if (v7 >= &_dispatch_root_queues && v7 < &_dispatch_queue_serial_numbers)
  {
LABEL_19:
    v12 = *(v7 + 21);
  }

LABEL_20:
  v13 = *(a3 + 56);
  v14 = (__clz(__rbit32((v13 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v13 >> 8) & 0x3FFF) == 0)
  {
    v14 = 0;
  }

  v15 = v14 & 0xFFFFFF00 | *(a3 + 56);
  v16 = v12 & 0x80000000;
  if ((v12 & 0xFFF) != 0)
  {
    if ((v12 & 0xFFFu) > v15)
    {
      v15 = v12 & 0xFFF;
    }

    goto LABEL_28;
  }

  if (v12 >> 12 && v15)
  {
LABEL_28:
    v17 = v15 | v16;
    goto LABEL_29;
  }

  if (!(v12 >> 12) || v15)
  {
    v29 = -4;
    v17 = 0x2000000;
  }

  else
  {
    v17 = v16 | (v12 >> 12 << 8) | 0xFF;
  }

LABEL_29:
  v18 = 0;
  v19 = *(a1 + 120);
  v20 = (v19 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v19 + 40), &v18, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v18)
  {
    _dispatch_unfair_lock_lock_slow((v19 + 40), 0x10000);
  }

  v24 = *(v19 + 56);
  v23 = (v19 + 56);
  v22 = v24;
  *(v5 + 8) = v24;
  if (v24)
  {
    *(v22 + 72) = v5 + 64;
  }

  *v23 = v5;
  *(v5 + 9) = v23;
  v25 = *(StatusReg + 24) & 0xFFFFFFFC;
  v26 = atomic_exchange_explicit(v20, 0, memory_order_release);
  if (v26 != v25)
  {
    _dispatch_unfair_lock_unlock_slow(v20, v26);
  }

  _dispatch_unote_register(v5, v29, v17);
  if ((v28 & 1) == 0)
  {
    _dispatch_mach_reply_unregister(a1, v5, 52, v27);
  }
}

uint64_t _dispatch_mach_msg_async_reply_wrap(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  _dispatch_mach_msg_async_reply_wrap_cold_2(a1, a2, &v3);
  return v3;
}

void _dispatch_mach_send_push_and_trydrain(atomic_uint *a1, unint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5)
{
  v6 = *(a1 + 15);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 24);
  *(a2 + 16) = 0;
  *(StatusReg + 976) = v6 + 72;
  v9 = atomic_exchange_explicit((v6 + 72), a2, memory_order_release);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = (v9 + 16);
  }

  else
  {
    if (a1[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed) <= 0)
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_57;
    }

    v12 = (v6 + 80);
    v11 = 3;
    v10 = 0xA000000000;
  }

  *v12 = a2;
  *(StatusReg + 976) = 0;
  if (*(v6 + 88) || (a1[20] & 0x10000000) != 0)
  {
    v24 = *(v6 + 64);
    v25 = a3 << 32;
    do
    {
      v26 = v24;
      if ((v24 & 0x700000000) >= v25)
      {
        v27 = v24;
      }

      else
      {
        v27 = v25 | v24 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      }

      v28 = v27 | v10;
      atomic_compare_exchange_strong_explicit((v6 + 64), &v24, v28, memory_order_release, memory_order_relaxed);
    }

    while (v24 != v26);
    if (((v28 ^ v26) & 0x8000000000) != 0)
    {
      v29 = v11 & 2;
    }

    else
    {
      v29 = v11;
    }

    (*(*a1 + 80))(a1, a3, v29, a4);
    return;
  }

  v13 = v8 & 0xFFFFFFFC;
  v14 = (v6 + 64);
  if (!v9)
  {
    v19 = *v14;
    v20 = a3 << 32;
    do
    {
      v17 = v19;
      if ((v19 & 0x700000000uLL) >= v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20 | v19 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      }

      v22 = v21 | v10;
      if ((v19 & 0x10FFFFFFFFLL) == 0)
      {
        v22 = v22 & 0xFFFFFFC7FFFFFFFFLL | v13;
      }

      atomic_compare_exchange_strong(v14, &v19, v22);
    }

    while (v19 != v17);
    if (((v22 ^ v17) & 0x8000000000) != 0)
    {
      v11 &= 2u;
    }

    else
    {
      v11 = v11;
    }

LABEL_26:
    if (v17 >= 4)
    {
      if ((v17 & 0x700000000uLL) < a3 << 32)
      {
        _pthread_workqueue_override_start_direct_check_owner();
      }

      if ((v11 & 1) == 0)
      {
        return;
      }

      if (a1[2] == 0x7FFFFFFF)
      {
        return;
      }

      add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release);
      if (add_explicit > 2)
      {
        return;
      }

      if (add_explicit == 2)
      {
        _os_object_dispose(a1, a2);
        return;
      }

LABEL_58:
      qword_6D1C0 = "API MISUSE: Over-release of an object";
      __break(1u);
      return;
    }

    if ((v17 & 0x1000000000) != 0)
    {
      (*(*a1 + 80))(a1, a3, v11, a4);
      return;
    }

    if (v11 && *(v6 + 80) == a2)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      a4 = a4 & 0xFFFFFFF7;
      if ((v11 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (a1[2] == 0x7FFFFFFF || atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release) > 2)
    {
LABEL_33:

      _dispatch_mach_send_drain(a1, 0, a4, a4, a5);
      return;
    }

LABEL_57:
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_58;
  }

  v15 = *v14;
  v16 = a3 << 32;
  while (1)
  {
    v17 = v15;
    if ((v15 & 0x700000000uLL) >= v16 || (v15 & 0xFFFFFFD0FFFFFFFFLL | v16 | 0x2800000000) == v15)
    {
      break;
    }

    v18 = v15 & 0xFFFFFFC0FFFFFFFFLL | v16 & 0xFFFFFFC7FFFFFFFFLL | v13;
    if ((v15 & 0x10FFFFFFFFLL) != 0)
    {
      v18 = v15 & 0xFFFFFFD0FFFFFFFFLL | v16 | 0x2800000000;
    }

    atomic_compare_exchange_strong_explicit(v14, &v15, v18, memory_order_acquire, memory_order_acquire);
    if (v15 == v17)
    {
      goto LABEL_26;
    }
  }
}

void _dispatch_mach_handle_wlh_change(uint64_t result)
{
  v1 = atomic_fetch_or_explicit((result + 80), 0x8000000u, memory_order_relaxed);
  if ((v1 & 0x400000) != 0)
  {
    if ((v1 & 0x8000000) == 0)
    {
      if ((*(result + 116) & 0x10) != 0)
      {
        _dispatch_bug_deprecated("Changing target queue hierarchy after xpc connection was activated");
      }

      else
      {
        _dispatch_bug_deprecated("Changing target queue hierarchy after mach channel was connected");
      }
    }
  }

  else
  {
    if ((*(result + 116) & 0x10) == 0)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after mach channel was connected";
      __break(1u);
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after xpc connection was activated";
    __break(1u);
  }
}

void _dispatch_mach_cancel(uint64_t a1)
{
  if (*(*(a1 + 120) + 88))
  {
    v2 = 0;
  }

  else
  {
    v2 = (*(a1 + 118) >> 1) & 1;
  }

  if ((*(a1 + 80) & 0x40000000) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    _dispatch_unote_unregister(v4, v3);
    v2 &= v5;
  }

  v6 = *(a1 + 88);
  v7 = *(v6 + 24);
  if (v7)
  {
    _dispatch_unote_unregister(*(a1 + 88), v3);
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = _dispatch_object_alloc();
    *(v9 + 16) = -1985229329;
    *(v9 + 24) = &off_71340;
    *(v9 + 72) = 0;
    *(v9 + 80) = 24;
    *(v9 + 100) = v7;
    *(v9 + 48) = -117964793;
    _dispatch_mach_handle_or_push_received_msg(a1, v9, 0, v10);
    *(v6 + 24) = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v2)
  {
LABEL_12:
    atomic_fetch_or_explicit((a1 + 80), 0x40000000u, memory_order_relaxed);
    return;
  }

  v11 = *(a1 + 80);
  do
  {
    v12 = v11;
    v13 = v11 & 0x3FFFFFFF | 0x80000000;
    if (v13 == v11)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((a1 + 80), &v11, v13, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v12);
  if ((v12 & 0xA0000000) != 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt channel state";
    qword_6D1F0 = v12;
    __break(1u);
LABEL_22:
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
    return;
  }

  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
  {
    goto LABEL_22;
  }
}

void _dispatch_mach_cancel_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 88);
  if ((a2 & 0x1000000) != 0)
  {
    v4 = objc_autoreleasePoolPush();
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 116) & 4) == 0)
  {
    _dispatch_mach_connect_invoke(a1);
  }

  if (*(v3 + 40))
  {
    v5 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
  }

  _dispatch_client_callout4(*(v3 + 48), 8, 0, 0, v5);
  if (v4)
  {
    objc_autoreleasePoolPop(v4);
  }

  *(a1 + 116) |= 8u;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, const char *a3)
{

  return snprintf((v3 + v5), v4, a3);
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return kdebug_trace();
}

char *_dispatch_unote_create_with_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return _dispatch_unote_create(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

char *_dispatch_unote_create(uint64_t a1, int a2, uint64_t a3)
{
  if ((~*(a1 + 20) & a3) != 0)
  {
    return 0;
  }

  v4 = a3;
  if (*(a1 + 20) && !a3 && (*(a1 + 10) & 4) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  if ((*(a1 + 12) & 0x100) != 0)
  {
    result = _dispatch_calloc_typed(1uLL, v7, 0xCF14B766uLL);
  }

  else
  {
    result = _dispatch_calloc_typed(1uLL, v7 + 24, 0xA0040A8488062uLL) + 24;
  }

  *result = a1;
  v8 = result[29] & 0xDF | (32 * (*(a1 + 10) & 1));
  result[29] = v8;
  *(result + 6) = a2;
  result[28] = *(a1 + 8);
  *(result + 8) = v4;
  if (*(a1 + 13))
  {
    result[29] = v8 | 1;
  }

  return result;
}

char *_dispatch_unote_create_without_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return _dispatch_unote_create(a1, 0, a3);
  }
}

void _dispatch_unote_dispose(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = *(a1 + 29);
  if ((v4 & 0x40) != 0)
  {
    _Block_release(*(a1 + 48));
    v4 = *(v3 + 29);
  }

  if ((v4 & 2) != 0)
  {
    if (*(v3 + 112) != -1 || *(v3 + 116) != -1)
    {
      qword_6D1C0 = "BUG IN LIBDISPATCH: Disposing of timer still in its heap";
      __break(1u);
      return;
    }

    v5 = *(v3 + 104);
    if (v5)
    {
      free(v5);
      *(v3 + 104) = 0;
    }

    goto LABEL_14;
  }

  if ((v4 & 1) == 0)
  {
    v3 -= 24;
LABEL_14:

    free(v3);
    return;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  _dispatch_unote_dispose_defer(v3);
}

void _dispatch_unote_register(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((a3 & 0x4600FFFF) == 0x4004000)
  {
    v6 = *(a1 + 8);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_unote_register_cold_1(v6);
    }
  }

  *(a1 + 36) = v3;
  if (*(a1 + 28) - 233 > 2)
  {
    if ((*(a1 + 29) & 2) != 0)
    {
      _dispatch_timer_unote_register(a1, a2, v3);
    }

    else if (*(a1 + 29))
    {

      _dispatch_unote_register_direct(a1, a2);
    }

    else
    {

      _dispatch_unote_register_muxed(a1);
    }
  }

  else
  {
    *(a1 + 16) = -3;
  }
}

void _dispatch_timer_unote_register(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (((a3 >> 8) & 0xF) - 1 <= 1)
  {
    v4 = *(result + 30);
    if (v4)
    {
      if (MEMORY[0xFFFFFC100])
      {
        v5 = result;
        v6 = a2;
        kdebug_trace();
        result = v5;
        a2 = v6;
      }
    }

    else
    {
      *(result + 30) = v4 | 2;
      *(result + 24) = 3 * ((v4 >> 2) & 3) + 2;
    }
  }

  if ((*(result + 16) & 0xFFFFFFFFFFFFFFFCLL) != a2)
  {
    *(result + 16) = -4;
  }

  if (*(result + 104))
  {

    _dispatch_timer_unote_configure(result);
  }
}

void _dispatch_unote_resume(void *a1)
{
  if ((*(a1 + 29) & 2) != 0)
  {
    _dispatch_timer_unote_resume(a1);
  }

  else if (*(a1 + 29))
  {
    _dispatch_unote_resume_direct(a1);
  }

  else
  {
    _dispatch_unote_resume_muxed(a1);
  }
}

void _dispatch_timer_unote_resume(uint64_t result)
{
  v2 = !(*(55 - *(result + 8)) >> 55) && *(result + 24) != -1 && *(result + 80) < 0x7FFFFFFFFFFFFFFFuLL;
  v3 = *(result + 16);
  v4 = *(result + 30);
  v5 = (v4 >> 2) & 3;
  v6 = v4 & 3;
  v7 = 3 * v5;
  if (v3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v8 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 48);
  }

  else
  {
    v8 = &_dispatch_timers_heap;
  }

  v9 = v7 + v6;
  if (v3 & v2)
  {
    if (*(result + 24) == v9)
    {
      if (v2)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 1) == 0)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_15;
  }

  _dispatch_timer_unote_disarm(result, v8);
  if (v2)
  {
LABEL_11:
    if (v3)
    {
LABEL_17:

      _dispatch_timer_unote_arm(result, v8, v9);
      return;
    }

LABEL_15:
    if (*(7 - *(result + 8)) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - *(result + 8)), 2u, memory_order_relaxed) <= 0)
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return;
    }

    goto LABEL_17;
  }

LABEL_21:
  if (v3)
  {
    v10 = ~*(result + 8);

    _os_object_release_internal_n(v10, &dword_0 + 2);
  }
}

void _dispatch_unote_unregister(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 28) - 233 > 2)
    {
      if ((*(a1 + 29) & 2) != 0)
      {
        _dispatch_timer_unote_unregister(a1);
      }

      else if (*(a1 + 29))
      {

        _dispatch_unote_unregister_direct(a1, a2);
      }

      else
      {

        _dispatch_unote_unregister_muxed(a1);
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }
}

void _dispatch_timer_unote_unregister(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 48);
  }

  else
  {
    v3 = &_dispatch_timers_heap;
  }

  if ((*(a1 + 16) & 1) != 0 && (_dispatch_timer_unote_disarm(a1, v3), *(7 - *(a1 + 8)) != 0x7FFFFFFF) && atomic_fetch_add_explicit((7 - *(a1 + 8)), 0xFFFFFFFE, memory_order_release) <= 2)
  {
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    if (v4 == -4 || v4 == 0)
    {
      goto LABEL_14;
    }

    add_explicit = atomic_fetch_add_explicit((v4 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit > 0)
    {
      goto LABEL_14;
    }

    if ((add_explicit & 0x80000000) == 0)
    {
      *(v4 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v4);
LABEL_14:
      *(a1 + 16) = 0;
      *(a1 + 24) = -1;
      return;
    }
  }

  qword_6D1C0 = "API MISUSE: Over-release of an object";
  __break(1u);
}

_BYTE *_dispatch_source_data_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 | a2)
  {
    return 0;
  }

  result = _dispatch_calloc_typed(1uLL, *(a1 + 24), 0xE15B3399uLL);
  *result = a1;
  result[28] = *(a1 + 8);
  result[29] |= 1u;
  return result;
}

char *_dispatch_source_signal_create(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 0x1F)
  {
    return _dispatch_unote_create_with_handle(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void _dispatch_timer_unote_configure(unsigned int *a1)
{
  __swp(a1, a1 + 26);
  v2 = *(a1 + 30);
  if (a1[6] != ((v2 >> 2) & 3))
  {
    v3 = v2 & 0xF3;
    *(a1 + 30) = v3;
    *(a1 + 30) = v3 | (4 * *(a1 + 24));
  }

  v4 = *a1;
  *(a1 + 12) = *(a1 + 2);
  *(a1 + 5) = v4;
  free(a1);
  *(a1 + 9) = 0;
  if (*(a1 + 2))
  {

    _dispatch_timer_unote_resume(a1);
  }
}

double _dispatch_source_timer_create(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3 & 0xFFFFFFFD;
  }

  else
  {
    v3 = a3;
  }

  if ((v3 & ~*(a1 + 20)) == 0)
  {
    v4 = a1;
    if ((*(a1 + 11) & 0x10) != 0)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if (*(a1 + 8) != 236)
      {
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v3 |= 4u;
          }

          else
          {
            if (a2 != 3)
            {
              return result;
            }

            v3 |= 8u;
          }
        }

        else
        {
          if (!a2)
          {
            goto LABEL_21;
          }

          if (a2 != 1)
          {
            return result;
          }
        }

        v4 = &_dispatch_source_type_timer_with_clock;
        goto LABEL_21;
      }

      if (a2)
      {
        return result;
      }
    }

LABEL_21:
    v5 = _dispatch_calloc_typed(1uLL, *(v4 + 6), 0xA22BFC3EuLL);
    *v5 = v4;
    v5[28] = *(v4 + 8);
    v5[29] |= 2u;
    v6 = *(v4 + 11) | v3 | v5[30];
    v5[30] = v6;
    *(v5 + 6) = 3 * ((v6 >> 2) & 3) + (v6 & 3);
    result = NAN;
    *(v5 + 14) = -1;
    *(v5 + 10) = -1;
    *(v5 + 11) = -1;
    *(v5 + 12) = -1;
  }

  return result;
}

void _dispatch_event_loop_drain_timers(uint64_t a1, unsigned int a2)
{
  v56[0] = 0;
  v56[1] = 0;
  v3 = a2;
  v57 = 0;
  do
  {
    if (!a2)
    {
      *(a1 + 6) = 0;
      return;
    }

    v4 = 0;
    do
    {
      v5 = a1 + 32 * v4;
      v8 = *(v5 + 8);
      v7 = (v5 + 8);
      v6 = v8;
      if (v8)
      {
        v9 = v4 / 3uLL;
        while (1)
        {
          v10 = v56[v9];
          if (!v10)
          {
            v58 = 0;
            v59 = 0;
            mach_get_times();
            v57 = v59 + 1000000000 * v58;
            v10 = v56[v9];
          }

          v11 = *(v6 + 80);
          v12 = v10 >= v11;
          v13 = v10 - v11;
          if (!v12)
          {
            goto LABEL_39;
          }

          if ((*(v6 + 30) & 0x40) != 0)
          {
            _dispatch_timer_unote_disarm(v6, a1);
            v22 = *(v6 + 16) & 0xFFFFFFFFFFFFFFFCLL;
            if (v22 != -4 && v22 != 0)
            {
              add_explicit = atomic_fetch_add_explicit((v22 + 96), 0xFFFFFFFF, memory_order_relaxed);
              if (add_explicit <= 0)
              {
                if (add_explicit < 0)
                {
                  _os_object_retain_weak_cold_1();
                }

                *(v22 + 56) = 0xDEAD000000000000;
                _dispatch_object_dealloc(v22);
              }
            }

            _dispatch_event_loop_drain_timers_cold_2((v6 + 16), v6);
            goto LABEL_27;
          }

          if (!*(v6 + 104))
          {
            break;
          }

          _dispatch_timer_unote_configure(v6);
LABEL_27:
          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_39;
          }
        }

        if (*(v6 + 72))
        {
          v21.n128_f64[0] = _dispatch_timer_unote_disarm(v6, a1);
          atomic_fetch_or_explicit((v6 + 72), 1uLL, memory_order_relaxed);
        }

        else
        {
          v14 = *(v6 + 96);
          v15 = v13 / v14;
          if (v15 + 1 < 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = v15 + 1;
          }

          else
          {
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v14 > 0x7FFFFFFFFFFFFFFELL)
          {
            *(v6 + 80) = -1;
            *(v6 + 88) = -1;
            v19 = 1;
          }

          else
          {
            v17 = v16 * v14 + v11;
            v18 = *(v6 + 88) + v16 * v14;
            *(v6 + 80) = v17;
            *(v6 + 88) = v18;
            v19 = v17 > 0x7FFFFFFFFFFFFFFELL;
          }

          v20 = 2 * v16;
          if (*(55 - *(v6 + 8)) >> 55)
          {
            _dispatch_event_loop_drain_timers_cold_4(~*(v6 + 8));
          }

          else if (*(v6 + 24) != -1 && !v19)
          {
            if (*(7 - *(v6 + 8)) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - *(v6 + 8)), 2u, memory_order_relaxed) <= 0)
            {
              dispatch_set_target_queue_cold_2();
            }

            _dispatch_timer_unote_arm(v6, a1, v4);
            *(v6 + 72) = v20;
            goto LABEL_26;
          }

          v21.n128_f64[0] = _dispatch_timer_unote_disarm(v6, a1);
          atomic_store(v20 | 1, (v6 + 72));
        }

LABEL_26:
        (*(*v6 + 48))(v6, 16, 0, 0, v21);
        goto LABEL_27;
      }

LABEL_39:
      ++v4;
    }

    while (v4 != v3);
    *(a1 + 6) = 0;
    v25 = 0;
    do
    {
      v26 = a1 + 32 * v25;
      v27 = (v26 + 7);
      if ((*(v26 + 7) & 2) == 0)
      {
        goto LABEL_87;
      }

      v28 = *(v26 + 8);
      if (!v28)
      {
        goto LABEL_83;
      }

      v29 = *(v28 + 80);
      v30 = *(*(v26 + 16) + 88);
      v31 = v56[v25 / 3];
      if (!v31)
      {
        v58 = 0;
        v59 = 0;
        mach_get_times();
        v57 = v59 + 1000000000 * v58;
        v31 = v56[v25 / 3];
      }

      v32 = v25 % 3;
      if (v29 <= v31)
      {
        goto LABEL_82;
      }

      v33 = *v26;
      if (*v26 >= 3u)
      {
        v34 = _dispatch_kevent_coalescing_window[v32];
        if (v34 + v29 < v30)
        {
          v35 = v30 - v34;
          v29 = *(*(v26 + 8) + 80);
          v36 = *(v26 + 4);
          v37 = 2;
          do
          {
            if (v37 > 1)
            {
              v39 = __clz((v37 - 2) | 7);
              v40 = (v26 + 24);
              if (30 - v39 != v36)
              {
                v40 = (*(v26 + 24) + 8 * ((8 << (v36 - 2)) - 30 + v39));
              }

              v41 = *v40;
              if (v39 == 29)
              {
                v42 = 0;
              }

              else
              {
                v42 = -8 << (28 - v39);
              }

              v38 = v41 + 8 * (v42 + v37 - 2);
            }

            else
            {
              v38 = v26 + 8 + 8 * v37;
            }

            v43 = *(*v38 + 80);
            if (v43 <= v29)
            {
              v44 = v29;
            }

            else
            {
              v44 = v43;
            }

            v45 = (v37 & 0xFFFFFFFE) + 2;
            if (v45 == v33)
            {
              v46 = ((v37 - 2) >> 1) & 0x7FFFFFFE;
            }

            else
            {
              v46 = v37 & 0xFFFFFFFE;
            }

            v47 = (v46 + 3) >> __clz(__rbit32(-4 - v46));
            v48 = v37 & 1 | (2 * v47);
            if (!v47)
            {
              v48 = -1;
            }

            if (2 * v37 - (v37 & 1) + 2 < v33)
            {
              v48 = 2 * v37 - (v37 & 1) + 2;
            }

            if (v45 == v33)
            {
              v49 = ((v37 - 2) >> 1) & 0x7FFFFFFE;
            }

            else
            {
              v49 = v37 & 0xFFFFFFFE;
            }

            v50 = (v49 + 3) >> __clz(__rbit32(-4 - v49));
            v37 = v37 & 1 | (2 * v50);
            if (!v50)
            {
              v37 = -1;
            }

            if (v43 <= v35)
            {
              v37 = v48;
              v29 = v44;
            }
          }

          while (v37 < v33);
        }
      }

      v51 = v29 - v31 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v29 - v31;
      v52 = v30 - v29 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v30 - v29;
      if (v29 == v31)
      {
LABEL_82:
        *(a1 + 6) |= (1 << v32) | 0x80;
LABEL_83:
        v53 = *v27;
        if (*v27)
        {
          _dispatch_event_loop_timer_delete(a1, v25);
          v53 = *v27;
        }

        v54 = v53 & 0xFC;
        goto LABEL_86;
      }

      if ((v51 - 0x7FFFFFFFFFFFFFFFLL) <= 0x8000000000000001)
      {
        goto LABEL_83;
      }

      _dispatch_event_loop_timer_arm(a1, v25, v51, v52, v56);
      v54 = *v27 & 0xFC | 1;
LABEL_86:
      *v27 = v54;
LABEL_87:
      ++v25;
    }

    while (v25 != v3);
  }

  while (*(a1 + 6));
}

double _dispatch_timer_unote_disarm(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 24);
  v5 = a2 + 32 * v4;
  v6 = *v5;
  v7 = *v5 - 2;
  *v5 = v7;
  if (v6 == 2)
  {
    *(v5 + 7) |= 2u;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  else
  {
    v22 = v4;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v9;
      v11 = v7 + v8;
      if (v7 + v8 > 1)
      {
        v13 = *(v5 + 4);
        v14 = v11 - 2;
        v15 = __clz(v14 | 7);
        v16 = (v5 + 24);
        if (30 - v15 != v13)
        {
          v16 = (*(v5 + 24) + 8 * ((8 << (v13 - 2)) + v15 - 30));
        }

        if (v15 == 29)
        {
          v17 = 0;
        }

        else
        {
          v17 = -8 << (28 - v15);
        }

        v12 = (*v16 + 8 * (v17 + v14));
      }

      else
      {
        v12 = (v5 + 8 + 8 * v11);
      }

      v18 = *v12;
      *v12 = 0;
      if (v18 != a1)
      {
        _dispatch_timer_heap_resift(v5, v18, *(a1 + 112 + 4 * v8));
      }

      v9 = 0;
      v8 = 1;
    }

    while ((v10 & 1) != 0);
    v19 = *(v5 + 4);
    if (v19 == 1)
    {
      v20 = 2;
    }

    else
    {
      v20 = (8 << (v19 - 2)) - v19 + 4;
    }

    LODWORD(v4) = v22;
    v2 = a2;
    if (v7 <= v20)
    {
      _dispatch_timer_heap_shrink(v5);
    }
  }

  result = NAN;
  *(a1 + 112) = -1;
  *(v2 + 6) |= (1 << (v4 % 3)) | 0x80;
  *(a1 + 16) &= ~1uLL;
  return result;
}

uint64_t _dispatch_timer_unote_arm(uint64_t result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  if (*(result + 16))
  {
    _dispatch_timer_heap_resift(a2 + 32 * a3, result, *(result + 112));
    result = _dispatch_timer_heap_resift(a2 + 32 * a3, v5, *(v5 + 116));
  }

  else
  {
    *(result + 24) = a3;
    v6 = a2 + 32 * a3;
    v7 = *v6;
    v8 = *v6 + 2;
    *v6 = v8;
    v9 = *(result + 36);
    v10 = (v9 >> 8) & 0xF;
    v11 = v9 >> 12;
    if (v10 > v11)
    {
      v11 = v10;
    }

    if (v11 > *(v6 + 5))
    {
      *(v6 + 5) = v11;
      *(v6 + 7) |= 2u;
    }

    if (v7)
    {
      if (*(v6 + 4))
      {
        v12 = (8 << (*(v6 + 4) - 1)) - *(v6 + 4) + 3;
      }

      else
      {
        v12 = 2;
      }

      if (v8 > v12)
      {
        _dispatch_timer_heap_grow(a2 + 32 * a3);
      }

      _dispatch_timer_heap_resift(a2 + 32 * a3, v5, v7);
      result = _dispatch_timer_heap_resift(a2 + 32 * a3, v5, v7 + 1);
    }

    else
    {
      *(v6 + 7) |= 2u;
      *(result + 112) = 0x100000000;
      *(v6 + 8) = result;
      *(v6 + 16) = result;
    }

    *(v5 + 16) |= 1uLL;
  }

  *(a2 + 6) |= (1 << (a3 % 3)) | 0x80;
  return result;
}

uint64_t _dispatch_timer_heap_resift(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *result;
  v4 = a3 & 1;
  v5 = *(result + 4);
  v6 = a3 - 2;
  if (a3 < 2)
  {
    v7 = (result + 8 * a3 + 8);
LABEL_22:
    v20 = a3 & 1;
    v21 = 2 * a3 - v20 + 2;
    if (v21 < v3)
    {
      v22 = (result + 24);
      v23 = (8 << (v5 - 2)) - 30;
      v24 = result + 8;
      while (1)
      {
        if (v21 > 1)
        {
          v25 = __clz((v21 - 2) | 7);
          v26 = (result + 24);
          if (30 - v25 != v5)
          {
            v26 = (*v22 + 8 * (v23 + v25));
          }

          v27 = *v26;
          v28 = v25 == 29 ? 0 : -8 << (28 - v25);
          v14 = (v27 + 8 * (v28 + v21 - 2));
        }

        else
        {
          v14 = (v24 + 8 * v21);
        }

        v29 = *v14;
        if (v21 + 2 >= v3)
        {
          v13 = v21;
        }

        else
        {
          if (v21 < 0xFFFFFFFE)
          {
            v31 = __clz(v21 | 7);
            v32 = (result + 24);
            if (30 - v31 != v5)
            {
              v32 = (*v22 + 8 * (v23 + v31));
            }

            v33 = *v32;
            v34 = v31 == 29 ? 0 : -8 << (28 - v31);
            v30 = (v33 + 8 * (v34 + v21));
          }

          else
          {
            v30 = (v24 + 8 * (v21 + 2));
          }

          v13 = v21;
          if (*(v29 + 8 * v4 + 80) > *(*v30 + 8 * v4 + 80))
          {
            v29 = *v30;
            v13 = v21 + 2;
            v14 = v30;
          }
        }

        if (*(a2 + 80 + 8 * v4) <= *(v29 + 8 * v4 + 80))
        {
          break;
        }

        if (a3 <= 1)
        {
          *(result + 7) |= 2u;
        }

        *v7 = v29;
        *(v29 + 4 * v20 + 112) = a3;
        v20 = v13 & 1;
        v21 = 2 * v13 - v20 + 2;
        a3 = v13;
        v7 = v14;
        if (v21 >= v3)
        {
          goto LABEL_50;
        }
      }
    }

    v14 = v7;
    v13 = a3;
    goto LABEL_50;
  }

  v8 = __clz(v6 | 7);
  if (30 - v8 == v5)
  {
    v9 = (result + 24);
  }

  else
  {
    v9 = (*(result + 24) + 8 * (v8 + (8 << (v5 - 2)) - 30));
  }

  v10 = 0;
  if (v8 == 29)
  {
    v11 = 0;
  }

  else
  {
    v11 = -8 << (28 - v8);
  }

  v7 = (*v9 + 8 * (v11 + v6));
  while (1)
  {
    v12 = a3 - 2;
    v13 = a3 & 1 | (2 * ((a3 - 2) >> 2));
    if (a3 - 2 > 3)
    {
      v15 = __clz((v13 - 2) | 7);
      v16 = (result + 24);
      if (30 - v15 != v5)
      {
        v16 = (*(result + 24) + 8 * ((8 << (v5 - 2)) - 30 + v15));
      }

      v17 = *v16;
      v18 = v15 == 29 ? 0 : -8 << (28 - v15);
      v14 = (v17 + 8 * (v18 + v13 - 2));
    }

    else
    {
      v14 = (result + 8 + 8 * v13);
    }

    v19 = *v14;
    if (*(*v14 + 8 * v4 + 80) <= *(a2 + 80 + 8 * v4))
    {
      break;
    }

    *v7 = v19;
    *(v19 + 4 * (a3 & 1) + 112) = a3;
    v10 = 1;
    a3 = a3 & 1 | (2 * (v12 >> 2));
    v7 = v14;
    if (v12 <= 3)
    {
      goto LABEL_50;
    }
  }

  v14 = v7;
  v13 = a3;
  if ((v10 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_50:
  if (v13 <= 1)
  {
    *(result + 7) |= 2u;
  }

  *v14 = a2;
  *(a2 + 4 * (v13 & 1) + 112) = v13;
  return result;
}

void _dispatch_timer_heap_shrink(uint64_t a1)
{
  v2 = *(a1 + 4) - 1;
  *(a1 + 4) = v2;
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = v2;
    v5 = 8 << (v2 - 1);
    v6 = v3[v5 - v2];
    v7 = v2 - 1;
    if (v4 != 1)
    {
      memcpy((v6 + 8 * ((v5 >> 1) - v7)), &v3[v5 - v7], 8 * v7);
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = v6;

  free(v3);
}

char *_dispatch_timer_heap_grow(uint64_t a1)
{
  v2 = *(a1 + 4);
  *(a1 + 4) = v2 + 1;
  v3 = *(a1 + 24);
  v4 = 8 << (v2 - 1);
  if (v2)
  {
    v5 = (8 << (v2 - 1));
  }

  else
  {
    v5 = 8;
  }

  result = _dispatch_calloc_typed(v5, 8uLL, 0x80040B8603338uLL);
  v7 = result;
  if (v2 >= 2)
  {
    result = memcpy(&result[8 * (v4 - (v2 - 1))], (v3 + 8 * ((v4 >> 1) - (v2 - 1))), 8 * (v2 - 1));
LABEL_7:
    *&v7[8 * (v4 - v2)] = v3;
    goto LABEL_8;
  }

  if (v2)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 24) = v7;
  return result;
}

uint64_t _dispatch_sync_ipc_handoff_begin(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = 655343;
  v4[2] = a1;
  v5 = -2147483392;
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = a3;
  v10 = -1;
  v11 = a1;
  result = _dispatch_kq_immediate_update(a1, v4);
  if ((result & 0xFFFFFFFD) != 0)
  {
    _dispatch_sync_ipc_handoff_begin_cold_1(result);
  }

  return result;
}

uint64_t _dispatch_kq_immediate_update(uint64_t a1, uint64_t a2)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  if (v2 && *(v2 + 24) == a1)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    if (*(v2 + 48))
    {
      v5 = 0;
      for (i = (v3 + 16); *(i - 4) != *(a2 + 8) || *(i - 2) != *a2 || *i != *(a2 + 16); i += 9)
      {
        if (v4 == ++v5)
        {
          return _dispatch_kq_drain(a1, a2, 1, 3);
        }
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if (v5 < v4)
    {
      v7 = v4 - 1;
      *(v2 + 48) = v7;
      if (v5 != v7)
      {
        v8 = v3 + 72 * v5;
        v9 = v3 + 72 * v7;
        *v8 = *v9;
        v10 = *(v9 + 16);
        v11 = *(v9 + 32);
        v12 = *(v9 + 48);
        *(v8 + 64) = *(v9 + 64);
        *(v8 + 32) = v11;
        *(v8 + 48) = v12;
        *(v8 + 16) = v10;
      }
    }
  }

  return _dispatch_kq_drain(a1, a2, 1, 3);
}

void *_dispatch_sync_ipc_handoff_end(void *a1, unsigned int a2)
{
  v3[0] = a2;
  v3[1] = 524271;
  v3[2] = a1;
  v4 = 0x80000000;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  return _dispatch_kq_deferred_update(a1, v3);
}

void *_dispatch_kq_deferred_update(void *result, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 232);
  if (v3 && *(v3 + 24) == result && (v4 = *(v3 + 50), *(v3 + 50)))
  {
    v5 = *(v3 + 48);
    if (*(v3 + 48))
    {
      v6 = 0;
      v7 = (*(v3 + 40) + 16);
      while (*(v7 - 4) != *(a2 + 8) || *(v7 - 2) != *a2 || *v7 != *(a2 + 16))
      {
        ++v6;
        v7 += 9;
        if (v5 == v6)
        {
          LODWORD(v6) = *(v3 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (result != -4)
    {
      *(StatusReg + 40) = 1;
    }

    if (v6 != v4)
    {
      if (v6 == v5)
      {
        *(v3 + 48) = v5 + 1;
        LODWORD(v6) = v5;
      }

      goto LABEL_20;
    }

    v16 = v3;
    v17 = a2;
    *(v3 + 48) = 1;
    v13 = *(v3 + 32);
    v12 = *(v3 + 40);
    *(v3 + 32) = 0;
    result = _dispatch_kq_drain(result, v12, v5, 3);
    if (!v13)
    {
      goto LABEL_25;
    }

    result = v13;
    v14 = 0;
    do
    {
      v15 = result[1];
      free(result);
      ++v14;
      result = v15;
    }

    while (v15);
    if (v14 < 0x11u)
    {
LABEL_25:
      LODWORD(v6) = 0;
      v3 = v16;
      a2 = v17;
LABEL_20:
      v8 = *(v3 + 40) + 72 * v6;
      *v8 = *a2;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      v11 = *(a2 + 48);
      *(v8 + 64) = *(a2 + 64);
      *(v8 + 32) = v10;
      *(v8 + 48) = v11;
      *(v8 + 16) = v9;
      return result;
    }

    qword_6D1C0 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
    qword_6D1F0 = v14;
    __break(1u);
  }

  else
  {

    return _dispatch_kq_drain(result, a2, 1, 3);
  }

  return result;
}

uint64_t _dispatch_unote_register_muxed(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  v4 = v2 >> 8;
  if ((v3 | 0x10) != 0xF8)
  {
    LODWORD(v4) = *(a1 + 24);
  }

  v5 = &_dispatch_sources[v4 & 0x3F];
  v6 = *v5;
  if (!*v5)
  {
LABEL_7:
    v7 = _dispatch_calloc_typed(1uLL, 0x60uLL, 0x10A0040FE590B1CuLL);
    v6 = v7;
    *(v7 + 24) = *(a1 + 24);
    v8 = v7 + 24;
    v9 = *(*a1 + 12) | 5;
    v10 = *(*a1 + 16) | *(a1 + 32);
    v11 = *(*a1 + 14);
    *(v7 + 32) = *(*a1 + 8);
    *(v7 + 34) = v9;
    *(v7 + 48) = v10;
    *(v7 + 56) = v11;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 36) = 0x2000000;
    *(v7 + 40) = v7 | 1;
    v12 = *(*a1 + 40);
    if (v12)
    {
      if ((v12(v7, v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (_dispatch_kq_immediate_update(-4, v8))
    {
LABEL_9:
      free(v6);
      return 0;
    }

    *(v6 + 17) &= 0xFDFEu;
    v18 = *v5;
    *v6 = *v5;
    if (v18)
    {
      v18[1] = v6;
    }

    *v5 = v6;
    v6[1] = v5;
    goto LABEL_18;
  }

  while (v6[3] != v2 || *(v6 + 16) != v3)
  {
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v6 + 12);
  v16 = v14 & ~v15;
  if (v16)
  {
    *(v6 + 12) = v15 | v14;
    v17 = *(*a1 + 40);
    if (v17)
    {
      if ((v17(v6) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (_dispatch_kq_immediate_update(-4, (v6 + 3)))
    {
LABEL_13:
      result = 0;
      *(v6 + 12) &= ~v16;
      return result;
    }
  }

LABEL_18:
  v19 = v6 + 2;
  v20 = v6[2];
  *(a1 - 24) = v20;
  v21 = a1 - 24;
  if (v20)
  {
    *(v20 + 8) = v21;
  }

  *v19 = v21;
  *(a1 - 16) = v19;
  if (*(a1 + 28) == 232)
  {
    *(a1 + 30) = v6[8] != 0;
  }

  *(a1 - 8) = v6;
  *(a1 + 16) = -3;
  return 1;
}

void *_dispatch_unote_resume_muxed(void *a1)
{
  a1[2] |= 1uLL;
  v1 = *(*a1 + 40);
  v2 = *(a1 - 1);
  if (v1)
  {
    return v1(v2);
  }

  else
  {
    return _dispatch_kq_deferred_update(0xFFFFFFFFFFFFFFFCLL, v2 + 24);
  }
}

uint64_t _dispatch_unote_unregister_muxed(uint64_t *a1)
{
  v1 = *(a1 - 1);
  if (v1[16] == -24)
  {
    *(a1 + 30) = 0;
  }

  a1[2] = 0;
  v2 = *(a1 - 3);
  v3 = *(a1 - 2);
  if (v2)
  {
    *(v2 + 8) = v3;
  }

  *v3 = v2;
  *(a1 - 1) = 0;
  v4 = *(v1 + 2);
  if (v4)
  {
    v5 = *(*a1 + 16);
    v6 = *(v1 + 2);
    do
    {
      v7 = v6;
      v5 |= *(v6 + 14);
      v6 = *v6;
    }

    while (v6);
    v8 = *(v1 + 12);
    if ((v8 & ~v5) == 0)
    {
      return 1;
    }

    a1 = v7 + 3;
    *(v1 + 12) = v8 & v5;
  }

  else
  {
    v9 = v1[17];
    v1[17] = v9 | 2;
    if ((v9 & 2) != 0)
    {
LABEL_14:
      v11 = *v1;
      v12 = *(v1 + 1);
      if (*v1)
      {
        *(v11 + 8) = v12;
      }

      *v12 = v11;
      free(v1);
      return 1;
    }
  }

  v10 = *(*a1 + 40);
  if (v10)
  {
    if ((v10(v1) & 1) == 0)
    {
      _dispatch_bug(1282, 0);
    }
  }

  else
  {
    _dispatch_kq_deferred_update(0xFFFFFFFFFFFFFFFCLL, (v1 + 12));
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  return 1;
}

void _dispatch_kq_unote_update(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 232);
  if (a3)
  {
    if (a1 != -4 && a1 && (atomic_fetch_add_explicit((a1 + 96), 1u, memory_order_relaxed) & 0x80000000) != 0)
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_62;
    }

    *(a2 + 2) = a1 | 1;
  }

  if (!v8 || *(v8 + 24) != a1)
  {
    goto LABEL_8;
  }

  v20 = *(v8 + 40);
  a3 = *(v8 + 48);
  if (*(v8 + 48))
  {
    v21 = 0;
    v22 = (v20 + 16);
    while (*(v22 - 4) != *(a2 + 28) || *(v22 - 2) != a2[6] || *v22 != a2)
    {
      ++v21;
      v22 += 9;
      if (a3 == v21)
      {
        LODWORD(v21) = *(v8 + 48);
        goto LABEL_38;
      }
    }
  }

  else
  {
    LODWORD(v21) = 0;
  }

  if (v21 >= a3)
  {
LABEL_38:
    if ((v4 & 5) != 4)
    {
      goto LABEL_8;
    }

LABEL_39:
    if (a1 != -4)
    {
      *(StatusReg + 40) = 1;
    }

    if (v21 != *(v8 + 50))
    {
      if (v21 == a3)
      {
        *(v8 + 48) = a3 + 1;
        LODWORD(v21) = a3;
      }

      goto LABEL_44;
    }

LABEL_62:
    *(v8 + 48) = 1;
    v38 = *(v8 + 32);
    v37 = *(v8 + 40);
    v40 = v8;
    *(v8 + 32) = 0;
    _dispatch_kq_drain(a1, v37, a3, 3);
    if (v38)
    {
      v3 = 0;
      do
      {
        v39 = v38[1];
        free(v38);
        ++v3;
        v38 = v39;
      }

      while (v39);
      if (v3 >= 0x11u)
      {
        goto LABEL_69;
      }
    }

    LODWORD(v21) = 0;
    v8 = v40;
LABEL_44:
    v28 = *(v8 + 40) + 72 * v21;
    v29 = *a2;
    v30 = *(*a2 + 12) | v4;
    if ((v30 & 0x201) == 0x200)
    {
      v30 &= 0xFDFEu;
    }

    v31 = *(v29 + 8);
    v32 = a2[9];
    if ((v32 & 0x4000000) != 0)
    {
      v33 = v32 & 0x8E000000 | 0xFF;
      LOWORD(v32) = v32 >> 12;
    }

    else
    {
      v33 = v32 & 0x8A0000FF;
      v32 = (v32 >> 8) & 0xF;
      if (!v32)
      {
LABEL_51:
        v18 = 0;
        v34 = *(v29 + 16) | a2[8];
        v35 = *(v29 + 14);
        *v28 = a2[6];
        *(v28 + 8) = v31;
        *(v28 + 10) = v30;
        *(v28 + 12) = v33;
        *(v28 + 16) = a2;
        *(v28 + 24) = v34;
        *(v28 + 32) = v35;
        *(v28 + 40) = 0u;
        *(v28 + 56) = 0u;
        if ((v4 & 3) != 2)
        {
          return;
        }

        goto LABEL_52;
      }
    }

    v33 |= 256 << (v32 - 1);
    goto LABEL_51;
  }

  v4 |= *(v20 + 72 * v21 + 10) & 4;
  if ((v4 & 5) == 4)
  {
    goto LABEL_39;
  }

  *(v8 + 48) = a3 - 1;
  if (v21 != (a3 - 1))
  {
    v23 = v20 + 72 * v21;
    v24 = v20 + 72 * (a3 - 1);
    *v23 = *v24;
    v25 = *(v24 + 16);
    v26 = *(v24 + 32);
    v27 = *(v24 + 48);
    *(v23 + 64) = *(v24 + 64);
    *(v23 + 32) = v26;
    *(v23 + 48) = v27;
    *(v23 + 16) = v25;
  }

LABEL_8:
  v9 = *a2;
  v10 = *(*a2 + 12) | v4;
  if ((v10 & 0x201) == 0x200)
  {
    v10 &= 0xFDFEu;
  }

  v11 = a2[6];
  v12 = *(v9 + 8);
  v13 = a2[9];
  if ((v13 & 0x4000000) != 0)
  {
    v14 = v13 & 0x8E000000 | 0xFF;
    LOWORD(v13) = v13 >> 12;
  }

  else
  {
    v14 = v13 & 0x8A0000FF;
    v13 = (v13 >> 8) & 0xF;
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  v14 |= 256 << (v13 - 1);
LABEL_15:
  v15 = *(v9 + 16) | a2[8];
  v16 = *(v9 + 14);
  v49 = 0u;
  v50 = 0u;
  v41 = v11;
  v42 = v12;
  v43 = v10;
  v44 = v14;
  v45 = a2;
  v46 = v15;
  v47 = 0;
  v48 = v16;
  v17 = _dispatch_kq_drain(a1, &v41, 1, 3);
  v18 = v17;
  if (v4)
  {
    if (!v17)
    {
      return;
    }

    if (a1 != -4)
    {
      if (a1)
      {
        add_explicit = atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 0)
        {
          if (add_explicit < 0)
          {
LABEL_68:
            qword_6D1C0 = "API MISUSE: Over-release of an object";
            __break(1u);
LABEL_69:
            qword_6D1C0 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
            qword_6D1F0 = v3;
            __break(1u);
            return;
          }

          *(a1 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(a1);
        }
      }
    }

    *(a2 + 2) = 0;
    return;
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_58;
  }

  if (v17 == 36)
  {
    return;
  }

LABEL_52:
  if (a1 == -4)
  {
    goto LABEL_57;
  }

  if (!a1)
  {
    goto LABEL_57;
  }

  v36 = atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_relaxed);
  if (v36 > 0)
  {
    goto LABEL_57;
  }

  if (v36 < 0)
  {
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_68;
  }

  *(a1 + 56) = 0xDEAD000000000000;
  _dispatch_object_dealloc(a1);
LABEL_57:
  *(a2 + 2) = 0;
LABEL_58:
  if (v18)
  {
    _dispatch_bug(1123, v18);
  }
}

void _dispatch_unote_dispose_defer(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (*(v1 + 48))
  {
    v4 = 0;
    v5 = (v2 + 16);
    while (*(v5 - 4) != *(a1 + 28) || *(v5 - 2) != *(a1 + 24) || *v5 != a1)
    {
      ++v4;
      v5 += 9;
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < v3)
  {
    v6 = *(v2 + 72 * v4 + 10);
    if ((v6 & 2) == 0)
    {
      _dispatch_unote_dispose_defer_cold_1(v6);
    }

    *(a1 + 8) = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
LABEL_13:

    free(a1);
  }
}

void *_dispatch_free_deferred_unotes(void *result)
{
  if (result)
  {
    v1 = 0;
    do
    {
      v2 = result[1];
      free(result);
      ++v1;
      result = v2;
    }

    while (v2);
    if (v1 >= 0x11u)
    {
      _dispatch_free_deferred_unotes_cold_1(v1);
    }
  }

  return result;
}

atomic_uint *_dispatch_event_loop_poke(atomic_uint *result, uint64_t a2, __objc2_class **a3, int8x16_t a4)
{
  if (result == -8)
  {
    v20 = 65526;
    memset(v22, 0, sizeof(v22));
    v23 = 0u;
    v19 = 1;
    v21 = -8;
    LODWORD(v22[0]) = 0x1000000;
    return _dispatch_kq_deferred_update(0xFFFFFFFFFFFFFFFCLL, &v19);
  }

  v5 = result;
  if (result == -4 || !result)
  {
    goto LABEL_54;
  }

  if ((a2 & 0x4000000000) != 0)
  {
    v4 = &_dispatch_mgr_q;
    if (!MEMORY[0xFFFFFC100])
    {
LABEL_49:
      _dispatch_introspection_queue_item_enqueue(v4, v5);
      superclass = (*v4)[2].superclass;

      return (superclass)(v4, v5, 0);
    }

LABEL_60:
    _dispatch_trace_item_push_internal(&_dispatch_mgr_q, v5, a4);
    goto LABEL_49;
  }

  v4 = a3;
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  if (!result || (v6 = *(result + 3), v6 != v5))
  {
    if (a2)
    {
      v11 = *(v5[3].isa + 21);
      if ((v11 & 0x8000000) != 0)
      {
LABEL_59:
        qword_6D1C0 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
        qword_6D1F0 = v11;
        __break(1u);
        goto LABEL_60;
      }

      v12 = (v11 >> 8) & 0xF;
      if (v12 <= (BYTE4(a2) & 7u))
      {
        v12 = BYTE4(a2) & 7;
      }

      if (v12 <= 1)
      {
        LOBYTE(v12) = 1;
      }

      v13 = 128 << v12;
      v8 = a2 & 2 | 0x3700000001;
      v7 = v13 | v11 & 0x80000000 | 0xFF;
      if ((a2 & 2) != 0)
      {
        v10 = 401;
      }

      else
      {
        v10 = 273;
      }

      v9 = 5;
    }

    else
    {
      v7 = 0;
      v8 = 1;
      v9 = 7;
      v10 = 1;
    }

    v19 = v5;
    LOWORD(v20) = -17;
    WORD1(v20) = v9;
    HIDWORD(v20) = v7;
    v21 = v5;
    LODWORD(v22[0]) = v10;
    memset(v22 + 4, 0, 20);
    *(&v22[1] + 1) = v5 + 7;
    *&v23 = v8;
    *(&v23 + 1) = a2;
    result = _dispatch_kq_poll(v5, &v19, 1, &v19, 1, 0, 0, 3);
    if (!result)
    {
      if ((v4 & 0x80000000) == 0)
      {
        return _os_object_release_internal(v5, v14);
      }

      if (v4)
      {
        return _os_object_release_internal_n(v5, &dword_0 + 2);
      }

      return result;
    }

LABEL_55:
    v17 = DWORD2(v22[0]);
    v18 = WORD1(v20) & 0xBFFF;
    WORD1(v20) &= ~0x4000u;
    DWORD1(v22[0]) = DWORD2(v22[0]);
    *(&v22[0] + 1) = 0;
    if (DWORD1(v22[0]) != 105)
    {
      if (v17 != 34)
      {
        if (v17 == 2)
        {
          v11 = (LODWORD(v22[0]) << 32) | (v18 << 16) | 2;
          qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_6D1F0 = v11;
          __break(1u);
          goto LABEL_59;
        }

LABEL_63:
        qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_6D1F0 = v17;
        __break(1u);
        return result;
      }

      qword_6D1C0 = "BUG IN LIBDISPATCH: Broken priority";
      qword_6D1F0 = SHIDWORD(v20);
      __break(1u);
    }

    v17 = DWORD2(v23);
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
    qword_6D1F0 = *(&v23 + 1);
    __break(1u);
    goto LABEL_63;
  }

  if ((*(result + 53) & 4) == 0)
  {
    if (*(result + 53))
    {
      if ((a3 & 1) == 0 || *(v6 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFE, memory_order_release) > 2)
      {
        return result;
      }

      qword_6D1C0 = "API MISUSE: Over-release of an object";
      __break(1u);
      goto LABEL_41;
    }

    if ((a3 & 0x80000000) != 0)
    {
      v15 = *(v6 + 8);
      if (a3)
      {
        if (v15 != 0x7FFFFFFF && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
        {
LABEL_53:
          qword_6D1C0 = "API MISUSE: Over-release of an object";
          __break(1u);
LABEL_54:
          qword_6D1C0 = "BUG IN LIBDISPATCH: Unsupported wlh configuration";
          qword_6D1F0 = v5;
          __break(1u);
          goto LABEL_55;
        }
      }

      else if (v15 != 0x7FFFFFFF && atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed) <= 0)
      {
        qword_6D1C0 = "API MISUSE: Resurrection of an object";
        __break(1u);
        goto LABEL_31;
      }
    }

    *(result + 53) |= 3u;
    *result = *(v6 + 24);
    *(result + 1) = v6;
    result[4] = BYTE4(a2) & 7;
    return result;
  }

LABEL_31:
  if ((a3 & 0x80000000) == 0)
  {
    if (*(v6 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) > 1)
    {

      return _dispatch_event_loop_leave_deferred(result, a2);
    }

    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_53;
  }

LABEL_41:

  return _dispatch_kevent_workloop_override_self(result, a2, a3);
}

void _dispatch_event_loop_drain(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 232);
  v4 = *(v3 + 24);
  v5 = v4 + 7;
  v6 = a1 & 3;
  while (1)
  {
    if ((*(v3 + 53) & 2) != 0)
    {
      v7 = *v5;
      *(v3 + 53) &= ~2u;
      v8 = *(v3 + 40);
      v9 = *(v3 + 48);
      if (*(v3 + 48))
      {
        v10 = 0;
        v11 = (v8 + 16);
        while (*(v11 - 4) != -17 || *(v11 - 2) != v4 || *v11 != v4)
        {
          ++v10;
          v11 += 9;
          if (v9 == v10)
          {
            LODWORD(v10) = *(v3 + 48);
            goto LABEL_12;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 == v9)
      {
LABEL_12:
        *(v3 + 48) = v9 + 1;
      }

      v12 = *(v4[3] + 84);
      if ((v12 & 0x8000000) != 0)
      {
        goto LABEL_37;
      }

      v13 = (v12 >> 8) & 0xF;
      if (v13 <= (BYTE4(v7) & 7u))
      {
        v13 = BYTE4(v7) & 7;
      }

      v14 = v8 + 72 * v10;
      *v14 = v4;
      if (v13 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13;
      }

      *(v14 + 8) = 393199;
      *(v14 + 12) = (128 << v15) | v12 & 0x80000000 | 0xFF;
      *(v14 + 16) = v4;
      if ((v7 & 2) != 0)
      {
        v16 = 401;
      }

      else
      {
        v16 = 273;
      }

      *(v14 + 24) = v16;
      *(v14 + 36) = 0;
      *(v14 + 28) = 0;
      *(v14 + 44) = 0;
      *(v14 + 48) = v5;
      *(v14 + 56) = v7 & 2 | 0x3700000001;
      *(v14 + 64) = v7;
    }

    v17 = *(v3 + 48);
    *(v3 + 48) = 0;
    v19 = *(v3 + 32);
    v18 = *(v3 + 40);
    *(v3 + 32) = 0;
    _dispatch_kq_drain(v4, v18, v17, a1);
    if (v19)
    {
      v20 = 0;
      do
      {
        v21 = v19[1];
        free(v19);
        ++v20;
        v19 = v21;
      }

      while (v21);
      if (v20 >= 0x11u)
      {
        break;
      }
    }

    if (v4 != -4)
    {
      if (v4)
      {
        if (*(*v4 + 40) == 18)
        {
          v22 = v4[6];
          if (v22)
          {
            if (*(v22 + 6))
            {
              _dispatch_event_loop_drain_timers(v22, 6u);
            }
          }
        }
      }
    }

    if (v6 != 1 || !*(StatusReg + 40))
    {
      return;
    }
  }

  v12 = v20;
  qword_6D1C0 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
  qword_6D1F0 = v20;
  __break(1u);
LABEL_37:
  qword_6D1C0 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
  qword_6D1F0 = v12;
  __break(1u);
}

uint64_t _dispatch_kq_drain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 2) == 0)
  {
    v17 = 0x8000;
    off_546A0(a1);
    bzero(v16, 0x8000uLL);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 40) = 0;
    result = _dispatch_kq_poll(a1, a2, a3, v18, 16, v16, &v17, v4);
    if (!result)
    {
      return result;
    }

    if ((v18[5] & 0x4000) != 0)
    {
      *(StatusReg + 40) = 1;
    }

    if (result >= 1)
    {
      v10 = result;
      v11 = v18;
      do
      {
        _dispatch_kevent_drain(v11);
        v11 += 36;
        --v10;
      }

      while (v10);
    }

    return 0;
  }

  v12 = _dispatch_kq_poll(a1, a2, a3, v18, 16, 0, 0, a4);
  if (v12 < 1)
  {
    return 0;
  }

  v13 = v12;
  result = 0;
  v14 = v13;
  v15 = v18;
  do
  {
    if ((v15[5] & 0x4000) != 0 && *(v15 + 4))
    {
      _dispatch_kevent_drain(v15);
      result = *(v15 + 8);
    }

    v15 += 36;
    --v14;
  }

  while (v14);
  return result;
}

void _dispatch_event_loop_merge(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  v4 = *(v3 + 24);
  off_546A0(a1);
  v6 = &v10 - v5;
  memcpy(&v10 - v5, v7, v8);
  *(v3 + 50) = 14;
  if (v2 >= 1)
  {
    v2 = v2;
    do
    {
      _dispatch_kevent_drain(v6);
      v6 += 72;
      --v2;
    }

    while (v2);
  }

  if (v4 == -4)
  {
    if (*(v3 + 8) && *(v3 + 48))
    {
      _dispatch_event_loop_drain(3);
    }
  }

  else if (*(*v4 + 40) == 18)
  {
    v9 = v4[6];
    if (v9)
    {
      if (*(v9 + 6))
      {
        _dispatch_event_loop_drain_timers(v9, 6u);
      }
    }
  }
}

void _dispatch_kevent_drain(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != 65526)
  {
    if (v1 == 65519)
    {
      _dispatch_kevent_workloop_poke_drain(result);
      return;
    }

    v3 = *(result + 10);
    if ((v3 & 0x4000) != 0)
    {
      if (v1 != 65531 || *(result + 32) != 3)
      {
        _dispatch_kevent_print_error(result);
        return;
      }

      *(result + 10) = 274;
      *(result + 24) = -2080374784;
      *(result + 32) = 0;
    }

    else if (v1 == 65528)
    {
      if (*(result + 48))
      {
        goto LABEL_13;
      }

      v6 = *(result + 24);
      if (v6 && (v6 & 0xFFFFC000) != 0x10004000)
      {
        qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from mach recv";
        qword_6D1F0 = v6 | (v3 << 32);
        __break(1u);
        return;
      }

      if (v6)
      {
LABEL_13:
        _dispatch_kevent_mach_msg_drain(result);
        return;
      }
    }

    else if (v1 == 65529)
    {
      v4 = *(result + 16);
      v5 = *result;
      *(v4 + 6) |= (1 << (*result % 3u)) | 0x80;
      *(v4 + 32 * v5 + 7) = *(v4 + 32 * v5 + 7) & 0xFC | 2;
      return;
    }

    v7 = *(result + 16);
    if (v7)
    {
      _dispatch_kevent_merge_muxed(result);
    }

    else
    {
      _dispatch_kevent_merge(v7, result);
    }
  }
}

uint64_t _dispatch_event_loop_leave_immediate(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  v2 = *(v1 + 24);
  *(v1 + 53) &= 0xFCu;
  v6 = v2;
  v7[0] = 524271;
  v7[1] = v2;
  v8 = 33;
  v9 = 0uLL;
  v10 = 0;
  v11 = v2 + 56;
  v12 = 0;
  v13 = a1;
  result = _dispatch_kq_poll(v2, &v6, 1, &v6, 1, 0, 0, 131075);
  if (result)
  {
    v4 = DWORD1(v9);
    v5 = WORD1(v7[0]) & 0xBFFF;
    WORD1(v7[0]) &= ~0x4000u;
    LODWORD(v9) = DWORD1(v9);
    *(&v9 + 4) = 0;
    if (v9 != 105)
    {
      if (v4 != 34)
      {
        if (v4 == 2)
        {
          _dispatch_event_loop_leave_immediate_cold_2(&v8, v5);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v4);
      }

      _dispatch_event_loop_leave_immediate_cold_1(v7 + 1);
    }

    _dispatch_event_loop_leave_immediate_cold_3(&v13);
  }

  return result;
}

uint64_t _dispatch_kq_poll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  context = 0;
  if (_dispatch_kq_poll_pred != -1)
  {
    dispatch_once_f(&_dispatch_kq_poll_pred, &context, _dispatch_kq_init);
    if (context)
    {
      _dispatch_memorypressure_create(malloc_memorypressure_mask_default_4libdispatch);
      _voucher_activity_debug_channel_init();
    }
  }

  if (a1)
  {
    v10 = &_dispatch_mgr_q;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    while (1)
    {
      while (1)
      {
        if (a1 == -4)
        {
          v11 = v10;
          a8 |= 0x20u;
          result = kevent_qos();
        }

        else
        {
          v11 = v10;
          if ((a8 & 2) != 0)
          {
            v13 = 1024;
          }

          else
          {
            v13 = 132096;
          }

          a8 |= v13;
          result = kevent_id();
        }

        if (result != -1)
        {
          return result;
        }

        LODWORD(v14) = **(StatusReg + 8);
        if (v14 > 8)
        {
          break;
        }

        v10 = v11;
        if (v14 != 4)
        {
          goto LABEL_19;
        }
      }

      if (v14 != 12)
      {
        break;
      }

      _dispatch_temporary_resource_shortage();
      v10 = v11;
    }

    if (v14 == 9)
    {
      LODWORD(v14) = 9;
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Do not close random Unix descriptors";
      qword_6D1F0 = 9;
      __break(1u);
    }

LABEL_25:
    v14 = v14;
    goto LABEL_26;
  }

  LODWORD(v14) = 0;
  qword_6D1C0 = "BUG IN LIBDISPATCH: Invalid wlh";
  qword_6D1F0 = 0;
  __break(1u);
LABEL_19:
  if (v14 != 2)
  {
    goto LABEL_25;
  }

  if ((~a8 & 0x20002) != 0)
  {
    while (1)
    {
      v14 = 2;
LABEL_26:
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected error from kevent";
      qword_6D1F0 = v14;
      __break(1u);
    }
  }

  return 0;
}

uint64_t _dispatch_event_loop_leave_deferred(uint64_t result, uint64_t a2)
{
  if ((~a2 & 0x2800000000) == 0)
  {
    v2 = a2 & 0xFFFFFFFC | 3;
    v3 = *(result + 24);
    if ((a2 & 0xFFFFFFFC) == 0)
    {
      v2 = 0;
    }

    v4 = *(result + 40);
    v5 = *(result + 48);
    if (*(result + 48))
    {
      v6 = 0;
      v7 = (v4 + 16);
      while (*(v7 - 4) != -17 || *(v7 - 2) != v3 || *v7 != v2)
      {
        ++v6;
        v7 += 9;
        if (v5 == v6)
        {
          LODWORD(v6) = *(result + 48);
          goto LABEL_13;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (v6 == v5)
    {
LABEL_13:
      *(result + 48) = v5 + 1;
    }

    v8 = v4 + 72 * v6;
    *v8 = v2;
    *(v8 + 8) = 655343;
    *(v8 + 16) = v3;
    *(v8 + 24) = 392;
    *(v8 + 36) = 0;
    *(v8 + 28) = 0;
    *(v8 + 44) = 0;
    *(v8 + 56) = 0x3800000002;
    *(v8 + 64) = a2;
    *(v8 + 48) = v3 + 56;
  }

  *(result + 53) &= 0xFCu;
  v9 = *(result + 24);
  v10 = *(result + 40);
  v11 = *(result + 48);
  if (*(result + 48))
  {
    v12 = 0;
    v13 = (v10 + 16);
    while (*(v13 - 4) != -17 || *(v13 - 2) != v9 || *v13 != v9)
    {
      ++v12;
      v13 += 9;
      if (v11 == v12)
      {
        LODWORD(v12) = *(result + 48);
        goto LABEL_24;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (v12 == v11)
  {
LABEL_24:
    *(result + 48) = v11 + 1;
  }

  if (a2)
  {
    result = *(*(v9 + 24) + 84);
    if ((result & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(result);
    }

    v18 = (result >> 8) & 0xF;
    if (v18 <= (BYTE4(a2) & 7u))
    {
      v18 = BYTE4(a2) & 7;
    }

    if (v18 <= 1)
    {
      LOBYTE(v18) = 1;
    }

    v19 = 128 << v18;
    v15 = a2 & 2 | 0x3700000001;
    v14 = v19 | result & 0x80000000 | 0xFF;
    if ((a2 & 2) != 0)
    {
      v17 = 401;
    }

    else
    {
      v17 = 273;
    }

    v16 = 5;
  }

  else
  {
    v14 = 0;
    v15 = 1;
    v16 = 7;
    v17 = 1;
  }

  v20 = v10 + 72 * v12;
  *v20 = v9;
  *(v20 + 8) = -17;
  *(v20 + 10) = v16;
  *(v20 + 12) = v14;
  *(v20 + 16) = v9;
  *(v20 + 24) = v17;
  *(v20 + 36) = 0;
  *(v20 + 28) = 0;
  *(v20 + 44) = 0;
  *(v20 + 48) = v9 + 56;
  *(v20 + 56) = v15;
  *(v20 + 64) = a2;
  return result;
}

uint64_t _dispatch_event_loop_cancel_waiter(uint64_t a1)
{
  v2 = *(a1 + 48);
  while (1)
  {
    v8 = *(a1 + 100);
    v9[0] = 458735;
    v9[1] = v2;
    v10 = 40;
    v11 = 0u;
    memset(v12, 0, sizeof(v12));
    result = _dispatch_kq_poll(v2, &v8, 1, &v8, 1, 0, 0, 3);
    if (!result)
    {
      break;
    }

    v4 = *(a1 + 106);
    v5 = DWORD1(v11);
    v6 = BYTE2(v9[0]);
    v7 = WORD1(v9[0]) & 0xBFFF;
    WORD1(v9[0]) &= ~0x4000u;
    LODWORD(v11) = DWORD1(v11);
    *(&v11 + 4) = 0;
    if (v11 != 2)
    {
      if (v5 != 34)
      {
        if (v5 == 105)
        {
          _dispatch_event_loop_cancel_waiter_cold_3(&v8);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v5);
      }

      _dispatch_event_loop_leave_immediate_cold_1(v9 + 1);
    }

    if ((v4 & 0x20) != 0 || (v6 & 2) == 0 || (v10 & 0x28) != 0x28)
    {
      _dispatch_event_loop_cancel_waiter_cold_2(v10, v7);
    }

    thread_switch(*(a1 + 100), 4, 1u);
  }

  return result;
}

uint64_t _dispatch_event_loop_wake_owner(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(result + 48);
  if (a2 == -4 || (v8 = *(StatusReg + 232)) == 0 || *(v8 + 24) != a2 || (*(v8 + 53) &= 0xFCu, v7 != a2))
  {
    if ((a4 ^ a3))
    {
      v34 = a2;
      v35 = 524271;
      v36 = a2;
      v37 = 257;
      v38 = 0uLL;
      v39 = 0;
      v9 = 1;
      v40 = a2 + 56;
      v41 = 1;
      v42 = a4;
      if ((a4 & 0x2000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if ((a4 & 0x2000000000) == 0)
      {
LABEL_10:
        if ((a3 & 0x2000000002) == 0x2000000000 && (*(result + 106) & 0x80000000) == 0)
        {
          v11 = *(StatusReg + 24);
          v12 = &v34 + 9 * v9;
          *v12 = v11;
          v12[1] = 458735;
          v12[2] = a2;
          *(v12 + 6) = 40;
          *(v12 + 28) = 0u;
          *(v12 + 44) = 0u;
          *(v12 + 15) = 0;
          v12[8] = a3;
          v9 = (v9 + 1);
        }

        result = _dispatch_kq_poll(a2, &v34, v9, &v34, v9, 0, 0, 3);
        v14 = v7 != -4 && v7 != a2;
        if (result)
        {
          if (v14)
          {
            _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight");
          }

          v32 = DWORD1(v38);
          v33 = WORD1(v35) & 0xBFFF;
          WORD1(v35) &= ~0x4000u;
          LODWORD(v38) = DWORD1(v38);
          *(&v38 + 4) = 0;
          if (v38 != 105)
          {
            if (v32 != 34)
            {
              if (v32 == 2)
              {
                _dispatch_event_loop_wake_owner_cold_2(&v34, v33);
              }

              _dispatch_sync_ipc_handoff_begin_cold_1(v32);
            }

            _dispatch_event_loop_wake_owner_cold_1(&v34);
          }

          _dispatch_event_loop_cancel_waiter_cold_3(&v34);
        }

        if (v14)
        {
          _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight");
          return _dispatch_event_loop_cancel_waiter(v5);
        }

        return result;
      }
    }

    v10 = &v34 + 9 * v9;
    *v10 = *(result + 100);
    v10[1] = 655343;
    v10[2] = a2;
    *(v10 + 6) = 136;
    *(v10 + 44) = 0u;
    *(v10 + 28) = 0u;
    *(v10 + 15) = 0;
    v10[8] = a4;
    v10[6] = a2 + 56;
    v9 = (v9 + 1);
    goto LABEL_10;
  }

  v15 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (*(v8 + 48))
  {
    v17 = 0;
    v18 = (v15 + 16);
    while (*(v18 - 4) != -17 || *(v18 - 2) != a2 || *v18 != a2)
    {
      ++v17;
      v18 += 9;
      if (v16 == v17)
      {
        LODWORD(v17) = *(v8 + 48);
        goto LABEL_32;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 == v16)
  {
LABEL_32:
    *(v8 + 48) = v16 + 1;
  }

  if (a4)
  {
    result = *(*(a2 + 24) + 84);
    if ((result & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(result);
    }

    v23 = (result >> 8) & 0xF;
    if (v23 <= (BYTE4(a4) & 7u))
    {
      v23 = BYTE4(a4) & 7;
    }

    if (v23 <= 1)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 128 << v23;
    v22 = a4 & 2 | 0x3700000001;
    v19 = v24 | result & 0x80000000 | 0xFF;
    if ((a4 & 2) != 0)
    {
      v20 = 401;
    }

    else
    {
      v20 = 273;
    }

    v21 = 5;
  }

  else
  {
    v19 = 0;
    v20 = 257;
    v21 = 7;
    v22 = 1;
  }

  v25 = v15 + 72 * v17;
  *v25 = a2;
  *(v25 + 8) = -17;
  *(v25 + 10) = v21;
  *(v25 + 12) = v19;
  *(v25 + 16) = a2;
  *(v25 + 24) = v20;
  *(v25 + 36) = 0;
  *(v25 + 28) = 0;
  *(v25 + 44) = 0;
  *(v25 + 48) = a2 + 56;
  *(v25 + 56) = v22;
  *(v25 + 64) = a4;
  v26 = *(v5 + 100);
  v27 = *(v8 + 40);
  v28 = *(v8 + 48);
  if (*(v8 + 48))
  {
    v29 = 0;
    v30 = (v27 + 16);
    while (*(v30 - 4) != -17 || *(v30 - 2) != a2 || *v30 != v26)
    {
      ++v29;
      v30 += 9;
      if (v28 == v29)
      {
        LODWORD(v29) = *(v8 + 48);
        goto LABEL_53;
      }
    }
  }

  else
  {
    LODWORD(v29) = 0;
  }

  if (v29 == v28)
  {
LABEL_53:
    *(v8 + 48) = v28 + 1;
  }

  v31 = v27 + 72 * v29;
  *v31 = v26;
  *(v31 + 8) = 655343;
  *(v31 + 16) = a2;
  *(v31 + 24) = 136;
  *(v31 + 44) = 0u;
  *(v31 + 28) = 0u;
  *(v31 + 60) = 0;
  *(v31 + 64) = a4;
  *(v31 + 48) = a2 + 56;
  return result;
}

void _dispatch_event_loop_wait_for_ownership(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 56);
  if ((v3 & 0xFFFFFFFD) == 1)
  {
    v4 = *(*(v2 + 24) + 84);
    if ((v4 & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(v4);
    }

    v5 = (v4 >> 8) & 0xF;
    if (v5 <= (BYTE4(v3) & 7u))
    {
      v5 = BYTE4(v3) & 7;
    }

    v22 = v2;
    if (v5 <= 1)
    {
      LOBYTE(v5) = 1;
    }

    LODWORD(v23) = 393199;
    HIDWORD(v23) = (128 << v5) | v4 & 0x80000000 | 0xFF;
    v24 = v2;
    if ((v3 & 2) != 0)
    {
      v6 = 401;
    }

    else
    {
      v6 = 273;
    }

    v25 = v6;
    v27 = 0;
    v26 = 0;
    v28 = 0;
    v29 = v2 + 56;
    v30 = v3 & 2 | 0x3700000001;
    v31 = v3;
    v7 = 1;
  }

  else if ((~v3 & 0x2800000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFC | 3;
    if ((v3 & 0xFFFFFFFC) == 0)
    {
      v8 = 0;
    }

    v22 = v8;
    v23 = 655343;
    v24 = v2;
    v25 = 392;
    v27 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0x3800000002;
    v31 = v3;
    v7 = 1;
    v29 = v2 + 56;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v10 = *(StatusReg + 32);
    v11 = &v22 + 9 * v7;
    if ((v10 & 0x3FFF00) == 0)
    {
      LODWORD(v10) = 2303;
    }

    *v11 = *(a1 + 100);
    *(v11 + 2) = 655343;
    *(v11 + 3) = v10;
    v11[2] = v2;
    *(v11 + 6) = 4;
    *(v11 + 28) = 0u;
    *(v11 + 44) = 0u;
    *(v11 + 15) = 0;
    v11[8] = v3;
    v12 = _dispatch_kq_poll(v2, &v22, v7 + 1, &v22, v7 + 1, 0, 0, 3);
    v13 = v12;
    if (v12 >= 1)
    {
      v14 = v12;
      v15 = &v22;
      do
      {
        v16 = *(v15 + 6);
        v17 = v15[4];
        v18 = *(v15 + 5) & 0xBFFF;
        *(v15 + 5) = v18;
        *(v15 + 7) = v17;
        v15[4] = 0;
        if (v17 != 4)
        {
          switch(v17)
          {
            case 2:
              _dispatch_event_loop_wait_for_ownership_cold_4(v16, v18);
            case 0x22:
              _dispatch_event_loop_wake_owner_cold_1(v15);
            case 0x69:
              _dispatch_event_loop_cancel_waiter_cold_3(v15);
          }

LABEL_37:
          _dispatch_sync_ipc_handoff_begin_cold_1(v17);
        }

        if ((v16 & 4) == 0)
        {
          goto LABEL_37;
        }

        v15 += 9;
        --v14;
      }

      while (v14);
    }

    if (!v13)
    {
      break;
    }

    v7 = 0;
    v3 = v31;
  }

  v19 = *(a1 + 106);
  if ((v19 & 0x20) != 0)
  {
    _dispatch_event_loop_cancel_waiter(a1);
    v19 = *(a1 + 106) & 0xDF;
    *(a1 + 106) = v19;
  }

  if ((v19 & 0x40) != 0)
  {
    v20 = *(a1 + 48);
    add_explicit = atomic_fetch_add_explicit((v20 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      if (add_explicit < 0)
      {
        _os_object_retain_weak_cold_1();
      }

      *(v20 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v20);
    }
  }
}

uint64_t _dispatch_event_loop_ensure_ownership(uint64_t a1)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v5[0] = 655343;
  v5[1] = a1;
  v6 = 136;
  v8 = 0u;
  v7 = 0u;
  v9 = 0;
  v10 = v4;
  *(&v8 + 4) = a1 + 56;
  result = _dispatch_kq_poll(a1, &v4, 1, &v4, 1, 0, 0, 3);
  if (result)
  {
    v2 = DWORD1(v7);
    v3 = WORD1(v5[0]) & 0xBFFF;
    WORD1(v5[0]) &= ~0x4000u;
    LODWORD(v7) = DWORD1(v7);
    *(&v7 + 4) = 0;
    if (v7 != 105)
    {
      if (v2 != 34)
      {
        if (v2 == 2)
        {
          _dispatch_event_loop_leave_immediate_cold_2(&v6, v3);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v2);
      }

      _dispatch_event_loop_leave_immediate_cold_1(v5 + 1);
    }

    _dispatch_event_loop_leave_immediate_cold_3(&v10);
  }

  return result;
}

uint64_t _dispatch_event_loop_end_ownership(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = a3;
  if (a3)
  {
    v8 = *(*(a1 + 24) + 84);
    if ((v8 & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(v8);
    }

    v9 = (v8 >> 8) & 0xF;
    if (v9 <= (BYTE4(a3) & 7u))
    {
      v9 = BYTE4(a3) & 7;
    }

    if (v9 <= 1)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 128 << v9;
    v11 = a3 & 2 | 0x3700000001;
    LODWORD(a3) = v10 | v8 & 0x80000000 | 0xFF;
    if ((v5 & 2) != 0)
    {
      v12 = 401;
    }

    else
    {
      v12 = 273;
    }

    v13 = 5;
  }

  else
  {
    a3 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_14;
    }

    v12 = 257;
    v13 = 7;
    v11 = 1;
  }

  v20 = a1;
  v21 = -17;
  v22 = v13;
  v23 = a3;
  v24 = a1;
  v25 = v12;
  v26 = 0uLL;
  v27 = 0;
  v28 = a1 + 56;
  v29 = v11;
  a3 = 1;
  v30 = v5;
LABEL_14:
  if ((a2 & 2) == 0)
  {
    v14 = &v20 + 9 * a3;
    *v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v14[1] = 458735;
    a3 = (a3 + 1);
    v14[2] = a1;
    *(v14 + 6) = 40;
    *(v14 + 28) = 0u;
    *(v14 + 44) = 0u;
    *(v14 + 15) = 0;
    v14[8] = v5;
  }

  result = _dispatch_kq_poll(a1, &v20, a3, &v20, a3, 0, 0, 3);
  if (result)
  {
    v18 = DWORD1(v26);
    v19 = v22 & 0xBFFF;
    v22 &= ~0x4000u;
    LODWORD(v26) = DWORD1(v26);
    *(&v26 + 4) = 0;
    if (v26 != 105)
    {
      if (v18 != 34)
      {
        if (v18 == 2)
        {
          _dispatch_event_loop_wake_owner_cold_2(&v20, v19);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v18);
      }

      _dispatch_event_loop_wake_owner_cold_1(&v20);
    }

    _dispatch_event_loop_cancel_waiter_cold_3(&v20);
  }

  v16 = (a2 & 1 | (2 * (a4 & 1))) - (v5 & 1);
  if (v16 >= 1 && *(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), (v5 & 1) - (a2 & 1 | (2 * (a4 & 1))), memory_order_release);
    result = (add_explicit - v16);
    if (add_explicit <= v16)
    {
      return _dispatch_event_loop_end_ownership_cold_6(result, a1);
    }
  }

  return result;
}

void _dispatch_event_loop_timer_arm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v9 = a2 / 3uLL;
  v10 = *(a5 + 8 * v9);
  if (!v10)
  {
    mach_get_times();
    *(a5 + 16) = 0;
    v10 = *(a5 + 8 * v9);
  }

  v11 = v10 + a3;
  if (_dispatch_timers_force_max_leeway == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  if (_dispatch_timers_force_max_leeway == 1)
  {
    v13 = v11 + a4;
  }

  else
  {
    v13 = v11;
  }

  _dispatch_event_loop_timer_program(a1, v7, v13, v12, 5);
  if (v7 - 6 <= 2 && _dispatch_mach_calendar_pred != -1)
  {
    _dispatch_event_loop_timer_arm_cold_1();
  }
}

void *_dispatch_event_loop_timer_program(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  if (v8 == -4)
  {
    v9 = 0x2000000;
  }

  else
  {
    v9 = (128 << *(a1 + 32 * a2 + 5)) | 0xFF;
  }

  v22 = v5;
  v23 = v6;
  v11 = a2 | 0xFFFFFFFFFFFFFF00;
  v12 = -7;
  v13 = a5 | 0x10;
  v14 = v9;
  v15 = a1;
  v16 = _dispatch_timer_index_to_fflags[a2];
  v17 = 0;
  v18 = a3;
  v19 = 0;
  v21 = 0u;
  v20 = a4;
  return _dispatch_kq_deferred_update(v8, &v11);
}

char *_dispatch_source_proc_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = _dispatch_unote_create_with_handle(a1, a2, a3);
  if ((v3 & 0x4000000) != 0)
  {
    if (result)
    {
      result[29] |= 4u;
    }
  }

  return result;
}

char *_dispatch_source_vm_create(uint64_t a1, uint64_t a2)
{
  result = _dispatch_unote_create_without_handle(&_dispatch_source_type_memorystatus, a2, 2);
  if (result)
  {
    result[29] |= 0x10u;
  }

  return result;
}

BOOL _dispatch_mach_msg_sender_is_kernel(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v2 || v2[1] <= 0x33u)
  {
    _dispatch_mach_msg_sender_is_kernel_cold_1();
  }

  return v2[10] == 0;
}

uint64_t _dispatch_get_mach_host_port(uint64_t a1, uint64_t a2)
{
  if (_dispatch_mach_host_port_pred != -1)
  {
    _dispatch_get_mach_host_port_cold_1();
  }

  return _dispatch_mach_host_port;
}

void _dispatch_mach_host_port_init()
{
  port = 0;
  v0 = mach_host_self();
  special_port = host_get_special_port(v0, -1, 1, &port);
  if (special_port == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v2 = special_port;
  if (special_port)
  {
    if (special_port != 4)
    {
      _dispatch_bug(2969, special_port);
    }
  }

  else
  {
    v3 = mach_port_deallocate(mach_task_self_, v0);
    if (v3 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    v2 = v3;
    v0 = port;
  }

  if (!v0)
  {
    _dispatch_mach_host_port_init_cold_3(v2);
  }

  _dispatch_mach_host_port = v0;
}

uint64_t _dispatch_mach_notify_merge(uint64_t result, uint64_t a2, int a3)
{
  v3 = _dispatch_sources[(result >> 8) & 0x3F];
  if (v3)
  {
    v5 = a2;
    while (*(v3 + 24) != result || *(v3 + 32) != -24)
    {
      v3 = *v3;
      if (!v3)
      {
        return result;
      }
    }

    *(v3 + 56) &= 0xFFFFFFFFFFFFFFF2;
    if ((a3 & 1) != 0 || (result = _dispatch_kevent_mach_notify_resume(v3, a2, 0), (result & 1) == 0))
    {
      *(v3 + 34) |= 2u;
      v6 = 16;
    }

    else
    {
      v6 = 4;
    }

    *(v3 + 64) = 0;
    v7 = *(v3 + 16);
    if (v7)
    {
      do
      {
        v8 = *v7;
        if (*(v3 + 64))
        {
          break;
        }

        v9 = v7[7] & v5;
        *(v7 + 54) = 0;
        if ((a3 & 1) != 0 || v9)
        {
          if (*(7 - v7[4]) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - v7[4]), 2u, memory_order_relaxed) <= 0)
          {
            qword_6D1C0 = "API MISUSE: Resurrection of an object";
            __break(1u);
            return result;
          }

          if (a3)
          {
            _dispatch_unote_unregister_muxed(v7 + 3);
          }

          v10 = v7[3];
          if (v9)
          {
            if (*(v10 + 9) == 2)
            {
              atomic_fetch_or_explicit(v7 + 12, v9, memory_order_relaxed);
            }
          }

          result = (*(v10 + 48))(v7 + 3, v6, v9, 0);
        }

        v7 = v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t _dispatch_mach_notify_dead_name(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  _dispatch_mach_notify_merge(a2, 1, 1);
  if (mach_port_deallocate(mach_task_self_, v2) == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  return 0;
}

uint64_t _dispatch_mach_notification_set_armed(uint64_t result)
{
  v1 = *(result - 8);
  if (v1)
  {
    *(v1 + 64) = 1;
    for (i = *(v1 + 16); i; i = *i)
    {
      *(i + 54) = 1;
    }
  }

  return result;
}

char *_dispatch_source_mach_send_create(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    a3 = 1;
  }

  if (!a2)
  {
    a2 = 0xFFFFFFFFLL;
  }

  return _dispatch_unote_create_with_handle(a1, a2, a3);
}

BOOL _dispatch_mach_send_update(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((*(a1 + 34) & 2) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 48);
    v1 = 0;
  }

  return _dispatch_kevent_mach_notify_resume(a1, v2, v1);
}

char *_dispatch_mach_send_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _dispatch_unote_create_without_handle(a1, a2, a3);
  if (result)
  {
    *(result + 22) = 0x80000000;
    *(result + 7) = 0;
  }

  return result;
}

void _dispatch_mach_notification_event(uint64_t a1)
{
  v1 = *(a1 + 24);
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected non message event";
  qword_6D1F0 = v1;
  __break(1u);
}

void _dispatch_mach_notification_merge_msg(void *a1, uint64_t a2, mach_msg_header_t *a3)
{
  v4 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (a3->msgh_id <= 77 && !_dispatch_mach_msg_sender_is_kernel(a3, a2))
  {
    v12 = 2900;
    goto LABEL_19;
  }

  v6 = libdispatch_internal_protocol_server(a3, v13);
  if (v6 || v14 != -303)
  {
    if (v6)
    {
      if (v14 == -305 || v14 == 0)
      {
        goto LABEL_15;
      }

      _dispatch_bug(2916, v14);
      if (v14 == -305 || !v14)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if ((a3->msgh_id & 0xFFFFFFFE) != 0x3B6)
  {
LABEL_18:
    v12 = 2915;
LABEL_19:
    _dispatch_bug(v12, 0);
LABEL_20:
    mach_msg_destroy(a3);
    goto LABEL_15;
  }

  v8 = &byte_71AF7;
  v9 = byte_71A36 | 0xFFFFFF80;
  for (i = 6; i != 9; ++i)
  {
    v9 |= 1 << (i % 3u);
    *v8 |= 2u;
    v8 += 32;
  }

  byte_71A36 = v9;
  _dispatch_mach_host_notify_update(v6, v7);
  v14 = 0;
LABEL_15:
  if ((v4 & 0x10000) != 0)
  {
    free(a3);
  }

  _dispatch_unote_resume(a1);
}

uint64_t _dispatch_mach_recv_direct_merge_evt(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  if ((a2 & 0x200) != 0)
  {
    _dispatch_mach_recv_direct_merge_evt_cold_1();
  }

  return _dispatch_source_merge_evt(a1, a2, a3, a4);
}

void _dispatch_mach_reply_merge_evt(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0x200) == 0)
  {
    qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected event";
    qword_6D1F0 = a3 | (a2 << 32);
    __break(1u);
  }

  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
  __break(1u);
}

uint64_t _dispatch_kevent_workloop_override_self(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(result + 24);
  *(result + 53) &= ~2u;
  add_explicit = *(*(v3 + 24) + 84);
  if ((add_explicit & 0x8000000) != 0)
  {
    goto LABEL_15;
  }

  v6 = (add_explicit >> 8) & 0xF;
  if (v6 <= (BYTE4(a2) & 7u))
  {
    v6 = BYTE4(a2) & 7;
  }

  v10 = v3;
  if (v6 <= 1)
  {
    LOBYTE(v6) = 1;
  }

  v11 = 393199;
  v12 = (128 << v6) | add_explicit & 0x80000000 | 0xFF;
  v13 = v3;
  if ((a2 & 2) != 0)
  {
    v7 = 401;
  }

  else
  {
    v7 = 273;
  }

  v14 = v7;
  v15 = 0uLL;
  v16 = 0;
  v17 = v3 + 56;
  v18 = a2 & 2 | 0x3700000001;
  v19 = a2;
  result = _dispatch_kq_poll(v3, &v10, 1, &v10, 1, 0, 0, 3);
  if (result)
  {
LABEL_16:
    v8 = DWORD1(v15);
    v9 = HIWORD(v11) & 0xBFFF;
    HIWORD(v11) &= ~0x4000u;
    LODWORD(v15) = DWORD1(v15);
    *(&v15 + 4) = 0;
    if (v15 != 105)
    {
      if (v8 != 34)
      {
        if (v8 != 2)
        {
LABEL_22:
          qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_6D1F0 = v8;
          __break(1u);
          return result;
        }

        qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_6D1F0 = (v14 << 32) | (v9 << 16) | 2;
        __break(1u);
      }

      qword_6D1C0 = "BUG IN LIBDISPATCH: Broken priority";
      qword_6D1F0 = v12;
      __break(1u);
    }

    v8 = v19;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
    qword_6D1F0 = v19;
    __break(1u);
    goto LABEL_22;
  }

  if ((a3 & 1) != 0 && *(v3 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFE, memory_order_release);
    if (add_explicit <= 2)
    {
      qword_6D1C0 = "API MISUSE: Over-release of an object";
      __break(1u);
LABEL_15:
      qword_6D1C0 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
      qword_6D1F0 = add_explicit;
      __break(1u);
      goto LABEL_16;
    }
  }

  return result;
}

void *_dispatch_kevent_workloop_poke_drain(void *result)
{
  v2 = *(result + 6);
  if ((v2 & 0x80000000) != 0)
  {
    return result;
  }

  v3 = result;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  result = result[2];
  v5 = *(v3 + 5);
  if ((v5 & 0x4000) == 0)
  {
    if (*(v4 + 53))
    {
      return result;
    }

    *(v4 + 53) |= 1u;
    if (*(result + 2) == 0x7FFFFFFF)
    {
      goto LABEL_6;
    }

    add_explicit = atomic_fetch_add_explicit(result + 2, 1u, memory_order_relaxed);
    if (add_explicit > 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  v1 = v3[4];
  *(v3 + 7) = v1;
  add_explicit = v3[8];
  v5 &= ~0x4000uLL;
  *(v3 + 5) = v5;
  v3[4] = 0;
  if (v1 != 70)
  {
LABEL_33:
    switch(v1)
    {
      case 0x69:
LABEL_39:
        qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_6D1F0 = add_explicit;
        __break(1u);
        goto LABEL_40;
      case 0x22:
LABEL_38:
        add_explicit = *(v3 + 3);
        qword_6D1C0 = "BUG IN LIBDISPATCH: Broken priority";
        qword_6D1F0 = add_explicit;
        __break(1u);
        goto LABEL_39;
      case 2:
        qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_6D1F0 = (v5 << 16) | (v2 << 32) | 2;
        __break(1u);
        break;
    }

LABEL_37:
    qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
    qword_6D1F0 = v1;
    __break(1u);
    goto LABEL_38;
  }

  if ((v2 & 0x100) != 0)
  {
    goto LABEL_37;
  }

  if (!v3[6])
  {
    goto LABEL_37;
  }

  v2 = v3[7];
  if (!v2)
  {
    goto LABEL_37;
  }

  if ((add_explicit & 0x2000000000) == 0)
  {
    return result;
  }

  if ((add_explicit & 1) == 0)
  {
    v9 = 0;
    v10 = 1;
    v11 = 7;
    v12 = 1;
    goto LABEL_28;
  }

  if ((add_explicit & 0xFFFFFFFC) != 0)
  {
    v4 = *(result[3] + 84);
    if ((v4 & 0x8000000) != 0)
    {
LABEL_40:
      qword_6D1C0 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
      qword_6D1F0 = v4;
      __break(1u);
      return result;
    }

    v13 = (v4 >> 8) & 0xF;
    if (v13 <= (BYTE4(add_explicit) & 7u))
    {
      v13 = BYTE4(add_explicit) & 7;
    }

    if (v13 <= 1)
    {
      LOBYTE(v13) = 1;
    }

    v15 = add_explicit & 2;
    v14 = v15 == 0;
    v10 = v15 | 0x3700000001;
    v9 = (128 << v13) | v4 & 0x80000000 | 0xFF;
    if (v14)
    {
      v12 = 273;
    }

    else
    {
      v12 = 401;
    }

    v11 = 5;
LABEL_28:
    *v3 = result;
    *(v3 + 4) = -17;
    *(v3 + 5) = v11;
    *(v3 + 3) = v9;
    *(v3 + 6) = v12;
    *(v3 + 28) = 0;
    *(v3 + 36) = 0;
    *(v3 + 11) = 0;
    v3[6] = result + 7;
    v3[7] = v10;
    return _dispatch_kq_deferred_update(result, v3);
  }

  *(v4 + 53) |= 1u;
  if (*(result + 2) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(result + 2, 1u, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
LABEL_32:
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_33;
    }
  }

LABEL_6:
  *v4 = result[3];
  *(v4 + 8) = result;
  v7 = __clz(__rbit32((*(v3 + 3) >> 8) & 0x3FFF));
  if (((*(v3 + 3) >> 8) & 0x3FFF) != 0)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 16) = v8;
  return result;
}

void _dispatch_kevent_print_error(uint64_t result)
{
  v2 = *(result + 10);
  if ((v2 & 2) != 0)
  {
    if ((*(result + 10) & 0x100) != 0 && *(result + 32) == 36)
    {
      return;
    }

    v3 = 0;
  }

  else
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
      v3 = 0;
      v2 |= *(v4 + 34);
      goto LABEL_10;
    }

    if (v3 && !*(v3 + 16))
    {
      v2 |= 1u;
LABEL_10:
      *(result + 10) = v2;
    }
  }

  v5 = *(result + 32);
  if (v5)
  {
    if (v5 == 34)
    {
      v12 = *(result + 12);
      qword_6D1C0 = "BUG IN LIBDISPATCH: Invalid kevent priority";
      qword_6D1F0 = v12;
      __break(1u);
    }

    else
    {
      v6 = _evfiltstr(*(result + 8));
      v7 = *(result + 16);
      v8 = "enable";
      if ((v2 & 4) == 0)
      {
        v8 = "monitor";
      }

      if (v2)
      {
        v9 = "add";
      }

      else
      {
        v9 = v8;
      }

      if ((v2 & 2) != 0)
      {
        v9 = "delete";
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = *result;

      _dispatch_bug_kevent_client("kevent", v6, v10, v5, v11, v7, v3);
    }
  }
}

void _dispatch_kevent_mach_msg_drain(uint64_t a1)
{
  v4 = *(a1 + 48);
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = *(a1 + 60);
  v8 = *(a1 + 12);
  v9 = *(a1 + 10);
  v10 = *(a1 + 24);
  if (v10 != 268451844)
  {
    if (v10 == 268451848)
    {
      v18 = *(a1 + 12);
      v19 = v6;
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Unable to copyout msg, possible port leak";
      qword_6D1F0 = 268451848;
      __break(1u);
    }

    else
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        if (!v10)
        {
          if (*(a1 + 64))
          {
            v12 = v4 + v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = *(a1 + 16);

          _dispatch_kevent_mach_msg_recv(v13, v9, v11, v12, v7, v8);
          return;
        }

        goto LABEL_31;
      }
    }

    v18 = v8;
    v19 = v6;
    qword_6D1C0 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message";
    qword_6D1F0 = v10;
    __break(1u);
    goto LABEL_25;
  }

  if (!v4)
  {
LABEL_25:
    v5 = 268451844;
    v18 = v8;
    v19 = v6;
    qword_6D1C0 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message size";
    qword_6D1F0 = 268451844;
    __break(1u);
    goto LABEL_26;
  }

  if (!*(a1 + 32))
  {
    qword_6D1C0 = "BUG IN LIBDISPATCH: MACH_RCV_LARGE_IDENTITY with no identity";
    __break(1u);
    return;
  }

  if (v4 < 0xFFFFFFBC)
  {
    if ((*(v6 + 32) & 0x200) != 0)
    {
      v10 = 0x107000B0ALL;
    }

    else
    {
      v10 = 0x10700090ALL;
    }

    v14 = v4 + 68;
    v1 = malloc_type_malloc((v4 + 68), 0xBE57A05CuLL);
    v2 = v17;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    if (off_546A0(v1))
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = v8;
  v19 = v6;
  qword_6D1C0 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with overlarge message";
  qword_6D1F0 = v5;
  __break(1u);
LABEL_27:
  _dispatch_bug(3366, v1);
  v14 = 0;
LABEL_18:
  v21[0] = v1;
  v21[1] = 0;
  v22 = 0;
  v23 = v14;
  v24 = v2;
  v25 = 0;
  v26 = 0x2800000000;
  memset(v20, 0, sizeof(v20));
  v15 = mach_msg2(v21, v10, v20, *(a1 + 32));
  if (!v15)
  {
    if (*v2)
    {
      v16 = v2;
    }

    else
    {
      v16 = 0;
    }

    _dispatch_kevent_mach_msg_recv(v6, v9 | 0x10000, v1, v16, v7, v8);
    return;
  }

  LODWORD(v10) = v15;
  if (v15 == 268451844)
  {
    _dispatch_log("BUG in libdispatch client: _dispatch_kevent_mach_msg_drain: dropped message too large to fit in memory: id = 0x%x, size = %u", v1[5], *(a1 + 48));
    LODWORD(v10) = 0;
  }

  free(v1);
LABEL_31:
  if (v10)
  {
    _dispatch_bug_mach_client("_dispatch_kevent_mach_msg_drain: message reception failed", v10);
  }
}

void *_dispatch_kevent_merge_muxed(uint64_t a1)
{
  v2 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(a1 + 10) & 0x12) != 0)
  {
    *(v2 + 34) |= 2u;
  }

  result = *(v2 + 16);
  if (result)
  {
    do
    {
      v4 = *result;
      _dispatch_kevent_merge(result + 3, a1);
      result = v4;
    }

    while (v4);
  }

  return result;
}

atomic_ullong *_dispatch_kevent_merge(atomic_ullong *result, uint64_t a2)
{
  v3 = result;
  add_explicit = *(*result + 9);
  if (*(7 - result[1]) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - result[1]), 2u, memory_order_relaxed) < 1)
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
LABEL_44:
    qword_6D1C0 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_45;
  }

  if (add_explicit <= 1)
  {
    if (add_explicit)
    {
      if (*(result + 28) == 248)
      {
        v5 = 2;
      }

      else
      {
        v5 = *(a2 + 24);
      }
    }

    else
    {
      v5 = *(a2 + 32);
    }
  }

  else
  {
    switch(add_explicit)
    {
      case 2:
        v5 = (result[4] & *(a2 + 24));
        if ((*(result + 29) & 4) != 0)
        {
          v6 = result[9];
          v7 = (*(a2 + 32) << 32) | v5;
          v8 = v6;
          do
          {
            atomic_compare_exchange_strong_explicit(result + 9, &v8, v6 | v7, memory_order_relaxed, memory_order_relaxed);
            v11 = v8 == v6;
            v6 = v8;
          }

          while (!v11);
        }

        else if (*(result + 28) == 248)
        {
          v5 = 2;
          result[9] = 2;
        }

        else if (v5)
        {
          atomic_fetch_or_explicit(result + 9, v5, memory_order_relaxed);
        }

        else
        {
          v5 = 0;
        }

        break;
      case 3:
        v5 = *(a2 + 32);
        result[9] = ~v5;
        break;
      case 4:
        v5 = *(a2 + 32);
        if (v5)
        {
          atomic_fetch_add_explicit(result + 9, v5, memory_order_relaxed);
        }

        break;
      default:
LABEL_45:
        qword_6D1C0 = "BUG IN LIBDISPATCH: Corrupt unote action";
        qword_6D1F0 = add_explicit;
        __break(1u);
        return result;
    }
  }

  v9 = *(a2 + 10);
  if ((v9 & 0x110) == 0x10)
  {
    _dispatch_unote_unregister(result, 5);
    goto LABEL_39;
  }

  if ((v9 & 2) != 0)
  {
    result = (result[2] & 0xFFFFFFFFFFFFFFFCLL);
    v11 = result == -4 || result == 0;
    if (v11)
    {
      goto LABEL_35;
    }

    add_explicit = atomic_fetch_add_explicit(result + 24, 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit > 0)
    {
      goto LABEL_35;
    }

    if ((add_explicit & 0x80000000) == 0)
    {
      result[7] = 0xDEAD000000000000;
      _dispatch_object_dealloc(result);
LABEL_35:
      v10 = 2;
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  if ((*(a2 + 10) & 0x210) != 0)
  {
    v10 = result[2] & 0xFFFFFFFFFFFFFFFCLL | 2;
LABEL_38:
    v3[2] = v10;
    goto LABEL_39;
  }

  if ((v9 & 0x80) != 0)
  {
    v10 = result[2] & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_38;
  }

LABEL_39:
  v12 = *(*v3 + 48);
  v13 = *(a2 + 10);
  v14 = *(a2 + 12) & 0xFFFFFFLL;

  return v12(v3, v13, v5, v14);
}

const char *_evfiltstr(int a1)
{
  if (a1 < 0xFFFFFFE8)
  {
    return "EVFILT_missing";
  }

  else
  {
    return off_50260[a1 + 24];
  }
}

uint64_t _dispatch_kevent_mach_msg_recv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 4);
  if (v6 >= 0xFFFFFFBC)
  {
    _dispatch_kevent_mach_msg_recv_cold_5(*(a3 + 4));
  }

  if (!*(a3 + 12))
  {
    _dispatch_kevent_mach_msg_recv_cold_4(a3);
  }

  if (*(7 - a1[1]) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - a1[1]), 2u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if ((a2 & 0x110) == 0x10)
  {
    _dispatch_unote_unregister(a1, 5);
  }

  else if ((a2 & 2) != 0)
  {
    v13 = a1[2] & 0xFFFFFFFFFFFFFFFCLL;
    if (v13 != -4)
    {
      if (v13)
      {
        add_explicit = atomic_fetch_add_explicit((v13 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 0)
        {
          if (add_explicit < 0)
          {
            _os_object_retain_weak_cold_1();
          }

          *(v13 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v13);
        }
      }
    }

    a1[2] = 2;
  }

  else
  {
    _dispatch_kevent_mach_msg_recv_cold_3(a2, a1);
  }

  v15 = *(*a1 + 56);

  return v15(a1, a2, a3, v6 + 68, a4, a5, a6);
}

uint64_t _dispatch_kq_init(_BYTE *a1)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  v2 = getenv("LIBDISPATCH_TIMERS_FORCE_MAX_LEEWAY");
  if (v2)
  {
    _dispatch_timers_force_max_leeway = 1;
  }

  *a1 = 1;
  _dispatch_kevent_workqueue_init(v2);
  while (1)
  {
    result = kevent_qos();
    if (result != -1)
    {
      break;
    }

    _dispatch_kq_init_cold_2();
  }

  return result;
}

void _dispatch_memorypressure_create(uintptr_t mask)
{
  v1 = dispatch_source_create(&_dispatch_source_type_memorystatus, 0, mask, &_dispatch_mgr_q);
  dispatch_set_context(v1, v1);
  dispatch_source_set_event_handler_f(v1, _dispatch_memorypressure_handler);
  dispatch_activate(v1);
  if (_dispatch_memorypressure_source)
  {
    dispatch_source_cancel(_dispatch_memorypressure_source);
    dispatch_release(_dispatch_memorypressure_source);
  }

  _dispatch_memorypressure_source = v1;
}

uint64_t _dispatch_memorypressure_handler(NSObject *a1)
{
  data = dispatch_source_get_data(a1);
  if ((data & 0xF0000000) != 0 && dispatch_source_get_mask(_dispatch_memorypressure_source) != malloc_memorypressure_mask_msl_4libdispatch)
  {
    _dispatch_memorypressure_create(malloc_memorypressure_mask_msl_4libdispatch);
  }

  if (data)
  {
    _dispatch_memory_warn = 0;
    _dispatch_continuation_cache_limit = 112;
    v2 = _firehose_task_buffer;
    if (_firehose_task_buffer)
    {
      if (atomic_fetch_and_explicit((_firehose_task_buffer + 512), 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed))
      {
        firehose_buffer_update_limits(v2);
      }
    }
  }

  if ((data & 2) != 0)
  {
    _dispatch_memory_warn = 1;
    _dispatch_continuation_cache_limit = 16;
    v3 = _firehose_task_buffer;
    if (_firehose_task_buffer)
    {
      if ((atomic_fetch_or_explicit((_firehose_task_buffer + 512), 1uLL, memory_order_relaxed) & 1) == 0)
      {
        firehose_buffer_update_limits(v3);
      }
    }
  }

  return _malloc_memory_event_handler(data);
}

void _dispatch_mach_host_notify_update(uint64_t mach_host_port_cold_1, uint64_t a2)
{
  if (_dispatch_mach_host_port_pred != -1)
  {
    _dispatch_get_mach_host_port_cold_1();
  }

  v2 = _dispatch_mach_host_port;
  if (_dispatch_mach_notify_port_pred != -1)
  {
    _dispatch_mach_host_notify_update_cold_2();
  }

  v3 = host_request_notification(v2, 1, _dispatch_mach_notify_port);
  if (v3 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v3)
  {

    _dispatch_bug(3003, v3);
  }
}

void _dispatch_mach_notify_port_init()
{
  v3.reserved[1] = 0;
  *&v3.flags = xmmword_453A8;
  v1 = mach_port_construct(mach_task_self_, &v3, &_dispatch_mach_notify_port, &_dispatch_mach_notify_port);
  if (v1)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: mach_port_construct() failed: cannot create receive right";
    qword_6D1F0 = v1;
    __break(1u);
    goto LABEL_5;
  }

  v0 = _dispatch_unote_create_with_handle(&_dispatch_mach_type_notification, _dispatch_mach_notify_port, 0);
  *(v0 + 1) = ~&_dispatch_mgr_q;
  _dispatch_unote_register(v0, -4, 0x2000000);
  if ((v2 & 1) == 0)
  {
LABEL_5:
    _dispatch_bug(2952, 0);
  }

  _dispatch_mach_notify_unote = v0;
}

BOOL _dispatch_kevent_mach_notify_resume(uint64_t a1, int a2, int a3)
{
  if (((a3 | a2) & 0xD) == 0)
  {
    return 1;
  }

  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  v5 = *(a1 + 24);
  v6 = (v3 | (*(a1 + 48) | a2) & 0xD) & (~a3 | 0xFFFFFFF2);
  *(a1 + 56) = v6;
  v7 = v6 & 0xD;
  if ((v3 & 0xD) != 0 || !v7)
  {
    v13 = 0;
    if ((v3 & 0xD) == 0 || v7)
    {
      return v13 == 0;
    }

    previous = 0;
    v14 = mach_port_request_notification(mach_task_self_, v5, 66, 0, 0, 0x12u, &previous);
    v10 = 0;
    if (v14 > 0x11 || ((1 << v14) & 0x28011) == 0)
    {
      if (v14 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      _dispatch_bug(3076, v14);
      v10 = 0;
    }

    goto LABEL_20;
  }

  previous = 0;
  v8 = mach_task_self_;
  if (_dispatch_mach_notify_port_pred != -1)
  {
    _dispatch_mach_host_notify_update_cold_2();
  }

  v9 = mach_port_request_notification(v8, v5, 66, 0, _dispatch_mach_notify_port, 0x15u, &previous);
  v10 = v9;
  if (v9 <= 14)
  {
    if (v9 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (!v9)
    {
      v13 = previous;
      if (!previous)
      {
        return v13 == 0;
      }

      v17 = _dispatch_kevent_mach_notify_resume_cold_3(previous, &previous, &v19);
      v13 = v19;
      if ((v17 & 1) == 0)
      {
        return v13 == 0;
      }

      v10 = 0;
      v16 = 3057;
      goto LABEL_34;
    }
  }

  else if (v9 == 15 || v9 == 17)
  {
    *v4 &= 0xFFFFFFF2uLL;
    goto LABEL_20;
  }

  _dispatch_kevent_mach_notify_resume_cold_5(v9, v4);
LABEL_20:
  if (!previous)
  {
    goto LABEL_21;
  }

  v13 = _dispatch_send_consume_send_once_right(previous);
  if (!v13)
  {
    goto LABEL_21;
  }

  v16 = 3086;
LABEL_34:
  _dispatch_bug(v16, v13);
LABEL_21:
  v13 = v10;
  return v13 == 0;
}

uint64_t voucher_adopt(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 224);
  if (a1 != -3)
  {
    if (v2 == a1)
    {
      return v2;
    }

    *(StatusReg + 224) = a1;
    if (a1)
    {
      v3 = *(a1 + 32);
      if (v2)
      {
LABEL_5:
        v4 = *(v2 + 32);
LABEL_10:
        if (v3 != -1 && v3 != v4)
        {
          _dispatch_set_priority_and_mach_voucher_slow(0, v3);
        }

        return v2;
      }
    }

    else
    {
      v3 = 0;
      if (v2)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    os_retain(*(StatusReg + 224));
  }

  return v2;
}

uint64_t voucher_copy()
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v1 = *(StatusReg + 224);
  if (v1)
  {
    os_retain(*(StatusReg + 224));
  }

  return v1;
}

_DWORD *voucher_copy_without_importance(uint64_t a1, uint64_t a2)
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (result)
  {
    return _voucher_create_without_importance(result, a2);
  }

  return result;
}

void _voucher_dealloc_mach_voucher(mach_port_name_t a1)
{
  v1 = mach_voucher_deallocate(a1);
  if (v1 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v1)
  {

    _dispatch_bug(302, v1);
  }
}

uint64_t _voucher_task_mach_voucher_init(uint64_t a1, uint64_t a2)
{
  mach_host_port = _dispatch_get_mach_host_port(a1, a2);
  voucher = 0;
  result = host_create_mach_voucher(mach_host_port, _voucher_task_mach_voucher_init_task_create_recipe, 0x10u, &voucher);
  if (result == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (result)
  {
    _voucher_task_mach_voucher_init_cold_1(result);
  }

  _voucher_default_task_mach_voucher = voucher;
  _voucher_task_mach_voucher = voucher;
  return result;
}

void voucher_replace_default_voucher(uint64_t result, uint64_t a2)
{
  if (_voucher_task_mach_voucher_pred != -1)
  {
    voucher_replace_default_voucher_cold_1();
  }

  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(v2 + 36);
      if (!v4)
      {
        v4 = v3;
      }

      *recipes = 0x100000003;
      v9 = v4;
      v10 = 0;
      mach_host_port = _dispatch_get_mach_host_port(result, a2);
      voucher = 0;
      LODWORD(result) = host_create_mach_voucher(mach_host_port, recipes, 0x10u, &voucher);
      if (result == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (result)
      {
        _dispatch_bug(362, result);
      }

      else if (voucher)
      {
        v6 = _voucher_default_task_mach_voucher;
        goto LABEL_13;
      }
    }
  }

  v6 = _voucher_default_task_mach_voucher;
LABEL_13:
  __swp(result, &_voucher_task_mach_voucher);
  if (result)
  {
    v7 = result == v6;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    _voucher_dealloc_mach_voucher(result);
  }
}

uint64_t _voucher_get_mach_voucher(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 36);
    if (!result)
    {
      result = *(v2 + 32);
      if (!result)
      {
        if (_voucher_task_mach_voucher_pred != -1)
        {
          voucher_replace_default_voucher_cold_1();
        }

        return _voucher_task_mach_voucher;
      }
    }
  }

  return result;
}

_DWORD *_voucher_create_without_importance(_DWORD *object, uint64_t a2)
{
  v2 = object;
  if (!object)
  {
    return v2;
  }

  if (!object[8] || (object[18] & 1) == 0)
  {
    goto LABEL_12;
  }

  if (object[9])
  {
    v3 = object[9];
  }

  else
  {
    v3 = object[8];
  }

  *recipes = 0x1FFFFFFFFLL;
  v13 = v3;
  v14 = xmmword_453E0;
  v15 = 0;
  mach_host_port = _dispatch_get_mach_host_port(object, a2);
  voucher = 0;
  v5 = host_create_mach_voucher(mach_host_port, recipes, 0x20u, &voucher);
  if (v5 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v5)
  {
    _dispatch_bug(639, v5);
    goto LABEL_23;
  }

  v6 = voucher;
  if (!voucher)
  {
LABEL_23:
    if (v2[9])
    {
      return 0;
    }

    v6 = 0;
  }

  if (v6 == v3)
  {
    _voucher_dealloc_mach_voucher(v3);
LABEL_12:
    os_retain(v2);
    return v2;
  }

  v8 = _voucher_find_and_retain(v6);
  if (v8 && v2[9])
  {
    _voucher_dealloc_mach_voucher(v6);
    return v8;
  }

  else
  {
    v9 = _os_object_alloc_realized(OS_voucher, 80);
    v10 = v9;
    *(v9 + 3) = *(v2 + 3);
    *(v9 + 8) = *(v2 + 8);
    v9[8] = v6;
    if (v2[9])
    {
      v9[9] = v6;
      _voucher_insert(v9);
    }

    else if (v8)
    {
      *(v9 + 5) = v8;
      _voucher_dealloc_mach_voucher(v6);
    }

    return v10;
  }
}

uint64_t _voucher_find_and_retain(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    _voucher_find_and_retain_cold_1();
  }

  for (i = *(&_voucher_hash + ((v1 >> 8) & 0x3F)); ; i = *(15 - i))
  {
    v5 = ~i;
    if (i == -1)
    {
      break;
    }

    if (*(35 - i) == v1)
    {
      add_explicit = atomic_fetch_add_explicit((11 - i), 1u, memory_order_relaxed);
      if ((add_explicit & 0x80000000) != 0)
      {
        _voucher_find_and_retain_cold_2();
      }

      if (!add_explicit)
      {
        atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
      }

      break;
    }
  }

  v7 = *(StatusReg + 24) & 0xFFFFFFFC;
  v8 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v8 != v7)
  {
    _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v8);
  }

  return v5;
}

uint64_t _voucher_insert(uint64_t result)
{
  v1 = *(result + 36);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v3, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      _voucher_find_and_retain_cold_1();
    }

    if (*(v2 + 24))
    {
      _voucher_insert_cold_2();
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      _voucher_insert_cold_3(v5);
    }

    result = *(v2 + 40);
    if (result)
    {
      _voucher_insert_cold_4(result);
    }

    v6 = &_voucher_hash + ((v1 >> 8) & 0x3F);
    v7 = *v6;
    *(v2 + 16) = *v6;
    if (v7 != -1)
    {
      *(23 - v7) = ~(v2 + 16);
    }

    *v6 = ~v2;
    *(v2 + 24) = ~v6;
    v8 = *(StatusReg + 24) & 0xFFFFFFFC;
    v9 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
    if (v9 != v8)
    {

      return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v9);
    }
  }

  return result;
}

_DWORD *_voucher_create_with_mach_msgv(unsigned int *a1, unsigned int *a2)
{
  v4 = *a1;
  if ((*a1 & 0x1F0000) != 0)
  {
    v6 = a1[4];
    a1[4] = 0;
    v7 = v4 & 0x201F0000;
    *a1 = v4 & 0xDFE0FFFF;
    if (a2)
    {
LABEL_3:
      v8 = *a2;
      if (*a2 <= 7)
      {
        _voucher_create_with_mach_msgv_cold_1(v8);
      }

      v9 = v8 - 8;
      v10 = a2 + 2;
      if (v8 == 8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      return _voucher_create_with_mach_voucher(v6, v7, v11, v9);
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v11 = 0;

  return _voucher_create_with_mach_voucher(v6, v7, v11, v9);
}

_DWORD *_voucher_create_with_mach_voucher(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = _voucher_find_and_retain(a1);
    if (v8)
    {
      v9 = v8;
      _voucher_dealloc_mach_voucher(v7);
    }

    else
    {
      v9 = _os_object_alloc_realized(OS_voucher, 80);
      v9[8] = v7;
      v9[9] = v7;
      *(v9 + 72) = v9[18] & 0xFE | ((a2 & 0x20000000) != 0);
      _voucher_insert(v9);
    }
  }

  else
  {
    v9 = 0;
  }

  if (a4 >= 0x20 && *a3 == 59821818 && *(a3 + 8))
  {
    if (v9)
    {
      v10 = *(v9 + 6);
      if (v10)
      {
        _voucher_insert_cold_3(v10);
      }

      v11 = *(v9 + 5);
      if (v11)
      {
        _voucher_insert_cold_4(v11);
      }

      v12 = _os_object_alloc_realized(OS_voucher, 80);
      if (v9[8])
      {
        if (*(v9 + 5))
        {
          v13 = *(v9 + 5);
        }

        else
        {
          v13 = v9;
        }

        os_retain(v13);
        *(v12 + 5) = v13;
        v12[8] = v13[8];
        *(v12 + 72) = v12[18] & 0xFE | v13[18] & 1;
      }

      os_release(v9);
    }

    else
    {
      v12 = _os_object_alloc_realized(OS_voucher, 80);
    }

    *(v12 + 3) = *(a3 + 8);
    *(v12 + 8) = *(a3 + 24);
    return v12;
  }

  return v9;
}

_DWORD *voucher_create_with_mach_msg(unsigned int *a1)
{
  v1 = *a1;
  if ((*a1 & 0x1F0000) != 0)
  {
    v3 = a1[4];
    a1[4] = 0;
    v4 = v1 & 0x201F0000;
    *a1 = v1 & 0xDFE0FFFF;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return _voucher_create_with_mach_voucher(v3, v4, 0, 0);
}

void voucher_decrement_importance_count4CF(uint64_t result)
{
  if (result && *(result + 32) && (*(result + 72) & 1) != 0)
  {
    v1 = *(result + 36) ? *(result + 36) : *(result + 32);
    *in_content = 1;
    out_contentCnt = 0;
    v2 = mach_voucher_attr_command(v1, 2u, 2u, in_content, 4u, 0, &out_contentCnt);
    if (v2 != 16)
    {
      if (v2 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (v2)
      {
        voucher_decrement_importance_count4CF_cold_2(v2, v2);
      }
    }
  }
}

uint64_t _voucher_xref_dispose(uint64_t result)
{
  v1 = result;
  if (!*(result + 24))
  {
    goto LABEL_11;
  }

  v2 = 0;
  v3 = *(result + 36);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_16:
    _voucher_insert_cold_2();
  }

  result = _voucher_find_and_retain_cold_1();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (*(v1 + 12) <= 0)
  {
    v5 = *(v1 + 24);
    if (v5)
    {
      v6 = *(v1 + 16);
      if (v6 != -1)
      {
        *(23 - v6) = v5;
      }

      *~v5 = v6;
      *(v1 + 16) = xmmword_453F0;
    }
  }

  v7 = *(StatusReg + 24) & 0xFFFFFFFC;
  v8 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v8 != v7)
  {
    result = _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v8);
  }

LABEL_11:
  if (*(v1 + 8) != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _voucher_xref_dispose_cold_3(result, v1);
    }
  }

  return result;
}

void _voucher_dispose(uint64_t a1)
{
  if (*(a1 + 24))
  {
    _voucher_insert_cold_2();
  }

  *(a1 + 16) = -1985229329;
  v2 = *(a1 + 36);
  if (v2)
  {
    if (v2 != *(a1 + 32))
    {
      _voucher_dealloc_mach_voucher(v2);
    }

    *(a1 + 36) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    if (!*(a1 + 40))
    {
      _voucher_dealloc_mach_voucher(v3);
    }

    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    os_release(v4);
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

void _voucher_activity_debug_channel_init()
{
  if (_voucher_libtrace_hooks)
  {
    v0 = *(_voucher_libtrace_hooks + 16);
    if (v0)
    {
      special_port = 0;
      v1 = task_get_special_port(mach_task_self_, 10, &special_port);
      if (v1)
      {
        if (v1 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        _voucher_activity_debug_channel_init_cold_2(v1);
      }

      if (special_port)
      {
        f = dispatch_mach_create_f("com.apple.debug-channel", 0, 0, v0);
        *(f[11].isa + 29) &= ~0x20u;
        dispatch_mach_connect(f, special_port, 0, 0);
        _voucher_activity_debug_channel = f;
      }
    }
  }
}

atomic_uint *_voucher_atfork_prepare(uint64_t result, uint64_t a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    return _voucher_find_and_retain_cold_1();
  }

  return v3;
}

uint64_t _voucher_atfork_parent()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  v1 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v1 != v0)
  {
    return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v1);
  }

  return result;
}

__n128 _voucher_atfork_child()
{
  for (i = 0; i != 64; ++i)
  {
    while (1)
    {
      v1 = *(&_voucher_hash + i);
      if (v1 == -1)
      {
        break;
      }

      v2 = ~v1;
      *(v2 + 32) = 0;
      v3 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v3 != -1)
      {
        *(23 - v3) = v4;
      }

      *~v4 = v3;
      *(v2 + 16) = xmmword_453F0;
    }
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  xmmword_719B0 = result;
  unk_719C0 = result;
  xmmword_71990 = result;
  unk_719A0 = result;
  xmmword_71970 = result;
  unk_71980 = result;
  xmmword_71950 = result;
  unk_71960 = result;
  xmmword_71930 = result;
  unk_71940 = result;
  xmmword_71910 = result;
  unk_71920 = result;
  xmmword_718F0 = result;
  unk_71900 = result;
  xmmword_718D0 = result;
  unk_718E0 = result;
  xmmword_718B0 = result;
  unk_718C0 = result;
  xmmword_71890 = result;
  unk_718A0 = result;
  xmmword_71870 = result;
  unk_71880 = result;
  xmmword_71850 = result;
  unk_71860 = result;
  xmmword_71830 = result;
  unk_71840 = result;
  xmmword_71810 = result;
  unk_71820 = result;
  xmmword_717F0 = result;
  unk_71800 = result;
  _voucher_hash = result;
  unk_717E0 = result;
  _voucher_hash_lock = 0;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224) = 0;
  _voucher_task_mach_voucher_pred = 0;
  _voucher_task_mach_voucher = 0;
  _voucher_default_task_mach_voucher = 0;
  _voucher_aid_next = 0;
  _firehose_task_buffer_pred = 0;
  _firehose_task_buffer = 0;
  return result;
}

uint64_t voucher_process_can_use_arbitrary_personas(uint64_t a1, uint64_t a2)
{
  if (_voucher_process_can_use_arbitrary_personas_pred != -1)
  {
    voucher_process_can_use_arbitrary_personas_cold_1();
  }

  return _voucher_process_can_use_arbitrary_personas;
}

uint64_t _voucher_process_can_use_arbitrary_personas_init(uint64_t a1, uint64_t a2)
{
  if (_voucher_task_mach_voucher_pred != -1)
  {
    voucher_replace_default_voucher_cold_1();
  }

  *out_content = 0;
  out_contentCnt = 4;
  result = mach_voucher_attr_command(_voucher_task_mach_voucher, 3u, 4u, 0, 0, out_content, &out_contentCnt);
  if (result)
  {
    _voucher_process_can_use_arbitrary_personas_init_cold_2(result);
  }

  _voucher_process_can_use_arbitrary_personas = *out_content != 0;
  return result;
}

uint64_t voucher_copy_with_persona_mach_voucher(uint64_t a1, uint64_t a2)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (!a1)
  {
    if (!v2)
    {
      return v2;
    }

    goto LABEL_13;
  }

  if (v2)
  {
    v3 = *(v2 + 36);
    if (!v3)
    {
      v3 = *(v2 + 32);
    }
  }

  else
  {
    v3 = 0;
  }

  *recipes = 0x1FFFFFFFFLL;
  v14 = v3;
  v15 = 0x300000000;
  v16 = 10;
  v17 = a1;
  v18 = 0;
  mach_host_port = _dispatch_get_mach_host_port(a1, a2);
  voucher = 0;
  v5 = host_create_mach_voucher(mach_host_port, recipes, 0x20u, &voucher);
  if (v5 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v6 = v5;
  if (!v5)
  {
    v7 = voucher;
    if (voucher == v3)
    {
      if (v3)
      {
        _voucher_dealloc_mach_voucher(v3);
      }

      goto LABEL_13;
    }

LABEL_18:
    v8 = _voucher_find_and_retain(v7);
    if (v8)
    {
      if (!v2 || *(v2 + 36))
      {
        _voucher_dealloc_mach_voucher(v7);
        return v8;
      }

      v10 = _os_object_alloc_realized(OS_voucher, 80);
    }

    else
    {
      v9 = _os_object_alloc_realized(OS_voucher, 80);
      v10 = v9;
      if (!v2)
      {
        v9[8] = v7;
        goto LABEL_26;
      }
    }

    *(v10 + 3) = *(v2 + 48);
    *(v10 + 8) = *(v2 + 64);
    v10[8] = v7;
    if (!*(v2 + 36))
    {
      if (v8)
      {
        *(v10 + 5) = v8;
        _voucher_dealloc_mach_voucher(v7);
      }

      return v10;
    }

LABEL_26:
    v10[9] = v7;
    _voucher_insert(v10);
    return v10;
  }

  _dispatch_bug(944, v5);
  if (v6 == 20)
  {
    return -1;
  }

  if (v3)
  {
    v7 = 0;
    goto LABEL_18;
  }

LABEL_13:
  os_retain(v2);
  return v2;
}

BOOL voucher_copy_with_persona_mach_voucher_and_error(uint64_t a1, uint64_t *a2)
{
  v3 = voucher_copy_with_persona_mach_voucher(a1, a2);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return v3 == -1;
}

uint64_t mach_voucher_persona_self(ipc_voucher_t *a1, uint64_t a2)
{
  *recipes = xmmword_45430;
  v10 = unk_45440;
  mach_host_port = _dispatch_get_mach_host_port(a1, a2);
  voucher = 0;
  v4 = host_create_mach_voucher(mach_host_port, recipes, 0x20u, &voucher);
  if (v4 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v5 = v4;
  if (v4)
  {
    _dispatch_bug(1015, v4);
    v6 = 0;
  }

  else
  {
    v6 = voucher;
  }

  *a1 = v6;
  return v5;
}

uint64_t mach_voucher_persona_for_originator(uint64_t a1, uint64_t a2, uint64_t a3, ipc_voucher_t *a4)
{
  *recipes = 0x100000003;
  v10 = a2;
  v11 = xmmword_45400;
  v12 = 16;
  v13 = a1;
  v14 = 0;
  v15 = a3;
  mach_host_port = _dispatch_get_mach_host_port(a1, a2);
  voucher = 0;
  result = host_create_mach_voucher(mach_host_port, recipes, 0x30u, &voucher);
  if (result == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v7 = voucher;
  if (result)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t voucher_get_current_persona()
{
  *out_content = -1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v1 = *(StatusReg + 224);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v3 = *(v1 + 36);
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = v2;
      }

      out_contentCnt = 4;
      v5 = mach_voucher_attr_command(v4, 3u, 3u, 0, 0, out_content, &out_contentCnt);
      if (v5 > 0x2E || ((1 << v5) & 0x400000040011) == 0)
      {
        _dispatch_bug(1118, v5);
      }

      else if (!v5)
      {
        return *out_content;
      }
    }
  }

  if ((kpersona_get() & 0x80000000) != 0)
  {
    v7 = **(StatusReg + 8);
    if (v7 != 3 && v7 != 0)
    {
      _dispatch_bug(1141, v7);
    }
  }

  return *out_content;
}

double voucher_get_current_persona_originator_info(_OWORD *a1)
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  if (!_voucher_get_current_persona_token(&v4))
  {
    v3 = v5;
    *a1 = v4;
    a1[1] = v3;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t _voucher_get_current_persona_token(mach_voucher_attr_content_t out_content)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (!v1)
  {
    return 5;
  }

  v2 = *(v1 + 32);
  if (!v2)
  {
    return 5;
  }

  v4 = *(v1 + 36);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  out_contentCnt = 96;
  result = mach_voucher_attr_command(v5, 3u, 2u, 0, 0, out_content, &out_contentCnt);
  if (result > 0x2E || ((1 << result) & 0x400000040011) == 0)
  {
    v8 = result;
    _dispatch_bug(1090, result);
    return v8;
  }

  return result;
}

double voucher_get_current_persona_proximate_info(_OWORD *a1)
{
  v6 = 0u;
  *v7 = 0u;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  if (!_voucher_get_current_persona_token(v4))
  {
    v3 = v6;
    *a1 = v5;
    a1[1] = v3;
    result = v7[0];
    a1[2] = *v7;
  }

  return result;
}

BOOLean_t voucher_mach_msg_set(mach_msg_header_t *msg)
{
  if ((msg->msgh_bits & 0x1F0000) != 0)
  {
    return 0;
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (v4)
  {
    mach_voucher = _voucher_get_mach_voucher(v4, v1);
  }

  else
  {
    if (_voucher_task_mach_voucher_pred != -1)
    {
      voucher_replace_default_voucher_cold_1();
    }

    mach_voucher = _voucher_task_mach_voucher;
  }

  msgh_bits = msg->msgh_bits;
  if (mach_voucher)
  {
    v7 = (msg->msgh_bits & 0x1F0000) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  msg->msgh_voucher_port = mach_voucher;
  msg->msgh_bits = msgh_bits | 0x130000;
  return 1;
}

void voucher_mach_msg_clear(mach_msg_header_t *msg)
{
  msgh_bits = msg->msgh_bits;
  v3 = HIWORD(msg->msgh_bits) & 0x1F;
  msgh_voucher_port = msg->msgh_voucher_port;
  if ((v3 == 17 || v3 == 19) && msgh_voucher_port != 0)
  {
    if (v3 == 17)
    {
      _voucher_dealloc_mach_voucher(msgh_voucher_port);
      msgh_bits = msg->msgh_bits;
    }

    msg->msgh_voucher_port = 0;
    msg->msgh_bits = msgh_bits & 0xFFE0FFFF;
  }
}

voucher_mach_msg_state_t voucher_mach_msg_adopt(mach_msg_header_t *msg)
{
  msgh_bits = msg->msgh_bits;
  if ((msg->msgh_bits & 0x1F0000) == 0)
  {
    return -1;
  }

  msgh_voucher_port = msg->msgh_voucher_port;
  msg->msgh_voucher_port = 0;
  msg->msgh_bits = msgh_bits & 0xDFE0FFFF;
  if (!msgh_voucher_port)
  {
    return -1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 984);
  if (v5)
  {
    v8 = *v5;
    v6 = v5 + 2;
    v7 = v8;
    v9 = v8 - 8;
    if (v8 == 8)
    {
      v6 = 0;
    }

    if (v7 <= 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v7 <= 7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v14 = _voucher_create_with_mach_voucher(msgh_voucher_port, msgh_bits & 0x201F0000, v11, v10);
  v12 = *(StatusReg + 224);
  if (v12 != v14)
  {
    *(StatusReg + 224) = v14;
    if (v14)
    {
      v15 = *(v14 + 8);
      if (v12)
      {
LABEL_18:
        v16 = *(v12 + 8);
LABEL_21:
        if (v15 != -1 && v15 != v16)
        {
          _dispatch_set_priority_and_mach_voucher_slow(0, v15);
        }

        return v12;
      }
    }

    else
    {
      v15 = 0;
      if (v12)
      {
        goto LABEL_18;
      }
    }

    v16 = 0;
    goto LABEL_21;
  }

  return v12;
}

void voucher_mach_msg_revert(voucher_mach_msg_state_t state)
{
  if (state == -1)
  {
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 224);
  if (v2 != state)
  {
    *(StatusReg + 224) = state;
    if (state)
    {
      v3 = *(state + 8);
      if (v2)
      {
LABEL_5:
        v4 = v2[8];
LABEL_8:
        if (v3 != -1 && v3 != v4)
        {
          _dispatch_set_priority_and_mach_voucher_slow(0, v3);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if (v2)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
    goto LABEL_8;
  }

LABEL_11:
  if (v2)
  {

    os_release(v2);
  }
}

uint64_t voucher_activity_initialize_4libtrace(uint64_t *a1)
{
  if (*a1 <= 2)
  {
    voucher_activity_initialize_4libtrace_cold_2(*a1);
  }

  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_libtrace_hooks, &v1, a1, memory_order_relaxed, memory_order_relaxed);
  if (v1)
  {
    voucher_activity_initialize_4libtrace_cold_1();
  }

  result = _dispatch_getenv_BOOL("LIBDISPATCH_NO_FAULTS", 0);
  if ((result & 1) == 0)
  {
    result = getpid();
    if (result != 1)
    {
      result = os_variant_has_internal_diagnostics();
      if (result)
      {
        if ((MEMORY[0xFFFFFC104] & 0x80000000) == 0)
        {
          _dispatch_mode &= ~2u;
        }
      }
    }
  }

  return result;
}

unint64_t voucher_activity_id_allocate(unsigned __int8 a1)
{
  v2 = _voucher_aid_next;
  while (1)
  {
    v3 = v2;
    if (!v2 || ((v2 + 1) & 0xF) == 0)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v2, v2 + 1, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v3)
    {
      return v3 & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
    }
  }

  _voucher_activity_id_allocate_slow(v2);
  return v3 & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
}

mach_vm_address_t voucher_activity_get_logging_preferences(mach_vm_size_t *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    *a1 = 0;
    return 0;
  }

  else
  {
    v2 = *(_firehose_task_buffer + 1676);

    return firehose_buffer_get_logging_prefs(v2, a1);
  }
}

uint64_t voucher_activity_get_metadata_buffer(void *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  v2 = _firehose_task_buffer;
  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    result = 0;
    *a1 = 0;
  }

  else
  {
    *a1 = 2048;
    return v2 + 2048;
  }

  return result;
}

_DWORD *voucher_activity_create_with_data_2(unint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, char a6)
{
  LODWORD(v7) = a5 + 8;
  v8 = (a5 + 8);
  if (a5 >= 0xFFF8 || v8 >= 0x81)
  {
    voucher_activity_create_with_data_2_cold_2(v8);
  }

  v9 = *a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 224);
  if (a2 == -3)
  {
    v11 = *(StatusReg + 224);
  }

  else
  {
    v11 = a2;
  }

  v109 = v9;
  v12 = v9 >> 16;
  v13 = (v9 >> 16) & 0xFFFFFFEF;
  if (!v10)
  {
    v113 = 0;
    goto LABEL_12;
  }

  v113 = *(v10 + 48);
  if (!v113)
  {
LABEL_12:
    v112 = 0;
    goto LABEL_13;
  }

  LOWORD(v13) = v13 | 1;
  LODWORD(v7) = a5 + 24;
  v112 = *(v10 + 56);
  if (v112)
  {
    LOWORD(v13) = v12 | 0x11;
  }

  else
  {
    LODWORD(v7) = a5 + 16;
  }

LABEL_13:
  v107 = a1;
  if (v11)
  {
    v14 = *(v11 + 48);
  }

  else
  {
    v14 = 0;
  }

  v116 = a6 & 1;
  if (v14)
  {
    v7 = (v7 + 8);
  }

  else
  {
    v7 = v7;
  }

  v117 = v7;
  if (v14)
  {
    v15 = v13 | 0x200;
  }

  else
  {
    v15 = v13;
  }

  v108 = v15;
  v16 = a3 | HIBYTE(v14) | ~MEMORY[0xFFFFFC104] & 0x80;
  v17 = _os_object_alloc_realized(OS_voucher, 80);
  if (v11 && *(v11 + 32))
  {
    if (*(v11 + 40))
    {
      v18 = *(v11 + 40);
    }

    else
    {
      v18 = v11;
    }

    os_retain(v18);
    *(v17 + 5) = v18;
    v17[8] = *(v18 + 32);
    *(v17 + 72) = v17[18] & 0xFE | *(v18 + 72) & 1;
  }

  v19 = _voucher_aid_next;
  while (1)
  {
    v20 = v19;
    if (!v19 || ((v19 + 1) & 0xF) == 0)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v19, v19 + 1, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v20)
    {
      goto LABEL_32;
    }
  }

  _voucher_activity_id_allocate_slow(v19);
LABEL_32:
  v21 = v20 & 0xFFFFFFFFFFFFFFLL | (v16 << 56);
  v22 = _voucher_unique_pid;
  *(v17 + 6) = v21;
  *(v17 + 7) = v22;
  *(v17 + 8) = v14;
  v110 = v21;
  v111 = v14;
  v106 = v17;
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  if (_firehose_task_buffer && *(_firehose_task_buffer + 1680) != -1)
  {
    if ((v16 & 0x80) != 0 || (MEMORY[0xFFFFFC104] & 0x80) == 0)
    {
      v23 = mach_continuous_time();
    }

    else
    {
      v23 = mach_continuous_approximate_time();
    }

    v119 = v23;
    v24 = 0;
    v25 = (v117 + 24);
    if ((v117 & 7) != 0)
    {
      v26 = (v117 & 0xFFF8) + 32;
    }

    else
    {
      v26 = v117 + 24;
    }

    v105 = v117 << 48;
    v27 = 1;
    while (1)
    {
      v28 = v27;
      v29 = voucher_activity_create_with_data_2_streams[v24];
      v30 = _firehose_task_buffer;
      v31 = (_firehose_task_buffer + (v29 << 7) + 640);
      v32 = *v31;
      v33 = HIDWORD(*v31);
      v34 = *v31 >> 40;
      v35 = HIWORD(*v31);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v36 = 2;
      do
      {
        while (1)
        {
          v37 = v33;
          if ((v33 - 1) <= 0xFDu)
          {
            v38 = (v30 + (v33 << 12));
            v39 = *v38;
            if (*v38)
            {
              v40 = v119 - v38[1];
              while ((HIWORD(v39) & 0x1FF) == v29)
              {
                v42 = v25 + v39 > WORD1(v39) || HIWORD(v40) != 0;
                v43 = v39 + v26;
                v44 = v39 + v26 + 0x100000000;
                v45 = (v39 + v26) >> 16;
                v46 = ((v39 + v26) + 40 > v45) | HIBYTE(v44);
                if (v42)
                {
                  v44 = v39;
                  v46 = HIBYTE(v39) | 1;
                  v45 = v39 >> 16;
                  v43 = v39;
                }

                v47 = v44 & 0xFFFFFF00000000 | (v46 << 56) | (v45 << 16) | v43;
                v48 = v39;
                atomic_compare_exchange_strong_explicit(v38, &v48, v47, memory_order_relaxed, memory_order_relaxed);
                if (v48 == v39)
                {
                  if (v42)
                  {
                    if ((v44 & 0xFF00000000) == 0)
                    {
                      v101 = v36;
                      v103 = v31;
                      firehose_buffer_ring_enqueue(v30, v33);
                      v36 = v101;
                      v31 = v103;
                    }

                    break;
                  }

                  v53 = v39;
                  if (!v39)
                  {
                    break;
                  }

                  v96 = *(StatusReg - 8);
                  v95 = (v38 + v53);
                  *(v38 + v53 + 16) = v40 | v105;
                  goto LABEL_126;
                }

                v39 = v48;
                if (!v48)
                {
                  break;
                }
              }
            }

            v37 = 0;
          }

          if (!v32)
          {
            break;
          }

          v54 = v32 | 1;
          v55 = (v35 << 48) | (v34 << 40);
          v56 = v54 | (v37 << 32);
          v57 = v56 | v55;
          v58 = v32 | (v33 << 32);
          if (v56 != v58)
          {
            v59 = v58 | v55;
            v32 = v59;
            atomic_compare_exchange_strong_explicit(v31, &v32, v57, memory_order_relaxed, memory_order_relaxed);
            v33 = HIDWORD(v32);
            v34 = v32 >> 40;
            v35 = HIWORD(v32);
            if (v32 != v59)
            {
              continue;
            }
          }

          if (MEMORY[0xFFFFFC100])
          {
            v61 = v31;
            v62 = v54;
            kdebug_trace();
            v31 = v61;
            v54 = v62;
          }

          v60 = v31;
          _dispatch_firehose_gate_wait(v31, v54, 0x10000);
          v31 = v60;
          v32 = *v60;
          v33 = HIDWORD(*v60);
          v34 = *v60 >> 40;
          v35 = HIWORD(*v60);
          v36 = 3;
        }

        v49 = (v35 << 48) | (v34 << 40);
        v50 = v49 | (v33 << 32);
        v51 = *(StatusReg + 24) & 0xFFFFFFFCLL | (v37 << 32) | v49;
        v52 = v50;
        atomic_compare_exchange_strong_explicit(v31, &v52, v51, memory_order_relaxed, memory_order_relaxed);
        v33 = HIDWORD(v52);
        v34 = v52 >> 40;
        v35 = HIWORD(v52);
        LODWORD(v32) = v52;
      }

      while (v52 != v50);
      v120 = v119;
      v121 = v117;
      BYTE4(v121) = v29;
      v93 = 2 * *(v30 + 1697);
      if (((1 << v29) & 0x93) != 0)
      {
        ++v93;
      }

      v94 = v93 | 4;
LABEL_120:
      BYTE6(v121) = v94;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      v95 = firehose_buffer_tracepoint_reserve_slow(v30, &v120, 0);
      if (v95)
      {
LABEL_127:
        if (v113)
        {
          v95[3] = v113;
          v97 = v95 + 4;
        }

        else
        {
          v97 = v95 + 3;
        }

        if (v112)
        {
          *v97++ = v112;
        }

        if (v111)
        {
          *v97++ = v111;
        }

        *v97 = v110;
        memcpy(v97 + 1, a4, a5);
        v98 = _firehose_task_buffer;
        atomic_store(v109 & 0xFFFFFFFF0000FFFFLL | (v108 << 16), v95);
        if ((atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFF000), 0xFFFFFFFF00000000, memory_order_relaxed) & 0x10000FF00000000) == 0x100000100000000)
        {
          firehose_buffer_ring_enqueue(v98, (((v95 & 0xFFFFF000) - v98) >> 12));
        }
      }

LABEL_136:
      v27 = 0;
      v24 = 1;
      if ((v28 & 1) == 0)
      {
        goto LABEL_140;
      }
    }

    v63 = 0;
LABEL_76:
    v64 = v63 ^ 1;
    while (1)
    {
      v65 = v33;
      if ((v33 - 1) <= 0xFDu)
      {
        v66 = (v30 + (v33 << 12));
        v67 = *v66;
        if (*v66)
        {
          v68 = v119 - v66[1];
          while ((HIWORD(v67) & 0x1FF) == v29)
          {
            v70 = v25 + v67 > WORD1(v67) || HIWORD(v68) != 0;
            v71 = v67 + v26;
            v72 = v67 + v26 + 0x100000000;
            v73 = (v67 + v26) >> 16;
            v74 = ((v67 + v26) + 40 > v73) | HIBYTE(v72);
            if (v70)
            {
              v72 = v67;
              v74 = HIBYTE(v67) | 1;
              v73 = v67 >> 16;
              v71 = v67;
            }

            v75 = v72 & 0xFFFFFF00000000 | (v74 << 56) | (v73 << 16) | v71;
            v76 = v67;
            atomic_compare_exchange_strong_explicit(v66, &v76, v75, memory_order_relaxed, memory_order_relaxed);
            if (v76 == v67)
            {
              if (v70)
              {
                if ((v72 & 0xFF00000000) == 0)
                {
                  v100 = v64;
                  v102 = v63;
                  v104 = v31;
                  firehose_buffer_ring_enqueue(v30, v33);
                  v64 = v100;
                  v63 = v102;
                  v31 = v104;
                }

                break;
              }

              v82 = v67;
              if (!v67)
              {
                break;
              }

              v96 = *(StatusReg - 8);
              v95 = (v66 + v82);
              *(v66 + v82 + 16) = v68 | v105;
LABEL_126:
              v95[1] = v96;
              goto LABEL_127;
            }

            v67 = v76;
            if (!v76)
            {
              break;
            }
          }
        }

        v65 = 0;
      }

      if (!v116)
      {
        break;
      }

      if (!(v64 & 1 | ((v34 & 0x40) == 0)) || (v34 & 0x80) != 0)
      {
        v79 = v34 & 0x3F;
        if ((v34 & 0x3F) >= 0x3E)
        {
          v79 = 62;
        }

        v81 = ((((v79 | v34 & 0xC0) + 1) << 40) | (v65 << 32)) & 0xFFFFFFFFFFFFLL | (v35 << 48) | v32;
        v32 = (v34 << 40) | (v33 << 32) | (v35 << 48) | v32;
        v80 = v32;
        atomic_compare_exchange_strong_explicit(v31, &v32, v81, memory_order_relaxed, memory_order_relaxed);
        if (v32 == v80)
        {
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          goto LABEL_136;
        }

LABEL_107:
        v33 = HIDWORD(v32);
        v34 = v32 >> 40;
        v35 = HIWORD(v32);
      }

      else
      {
        if (!v32)
        {
          goto LABEL_102;
        }

        v77 = 2;
LABEL_111:
        v83 = v32 | v77;
        v84 = (v35 << 48) | (v34 << 40);
        v85 = v83 | (v65 << 32);
        v86 = v85 | v84;
        v87 = v32 | (v33 << 32);
        if (v85 == v87 || (v88 = v87 | v84, v89 = v88, atomic_compare_exchange_strong_explicit(v31, &v89, v86, memory_order_relaxed, memory_order_relaxed), v34 = v89 >> 40, v35 = HIWORD(v89), v33 = HIDWORD(v89), LODWORD(v32) = v89, v89 == v88))
        {
          if (MEMORY[0xFFFFFC100])
          {
            v91 = v31;
            v92 = v83;
            kdebug_trace();
            v83 = v92;
            v31 = v91;
          }

          v90 = v31;
          _dispatch_firehose_gate_wait(v31, v83, 0x10000);
          v31 = v90;
          v32 = *v90;
          v33 = HIDWORD(*v90);
          v34 = *v90 >> 40;
          v35 = HIWORD(*v90);
          v63 = 1;
          goto LABEL_76;
        }
      }
    }

    if (v32)
    {
      v77 = 1;
      goto LABEL_111;
    }

LABEL_102:
    v78 = (v35 << 48) | (v34 << 40);
    v32 = v78 | (v33 << 32);
    atomic_compare_exchange_strong_explicit(v31, &v32, *(StatusReg + 24) & 0xFFFFFFFCLL | (v65 << 32) | v78, memory_order_relaxed, memory_order_relaxed);
    if (v32 == (v78 | (v33 << 32)))
    {
      v120 = v119;
      v121 = v117;
      BYTE4(v121) = v29;
      v94 = ((4 * v116) | (2 * *(v30 + 1697)) | (((1 << v29) & 0x93) != 0)) ^ 4;
      goto LABEL_120;
    }

    goto LABEL_107;
  }

LABEL_140:
  result = v106;
  *v107 = v109 & 0xFFFFFFFF0000FFFFLL | (v108 << 16);
  return result;
}

uint64_t voucher_get_activity_id_and_creator(void *a1, void *a2, void *a3)
{
  if (a1 == -3)
  {
    a1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    if (a2)
    {
      *a2 = a1[7];
    }

    if (a3)
    {
      *a3 = a1[8];
    }

    return a1[6];
  }

  if (a2)
  {
    *a2 = 0;
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t voucher_get_activity_id(uint64_t a1, void *a2)
{
  if (a1 == -3)
  {
    a1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    if (a2)
    {
      *a2 = *(a1 + 64);
    }

    return *(a1 + 48);
  }

  result = 0;
  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

void voucher_activity_flush(unsigned int a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  v2 = _firehose_task_buffer;
  if (_firehose_task_buffer && *(_firehose_task_buffer + 1680) != -1)
  {
    v3 = a1;
    v4 = _firehose_task_buffer + (a1 << 7);
    v5 = *(v4 + 640);
    if ((~v5 & 0xFF00000000) == 0 || BYTE4(*(v4 + 640)) == 0)
    {

      firehose_buffer_force_connect(v2);
    }

    else
    {
      v7 = (_firehose_task_buffer + (BYTE4(v5) << 12));
      v8 = *v7;
      if (*v7)
      {
        v9 = v7[1];
        while ((HIWORD(v8) & 0x1FF) == v3)
        {
          v11 = v8 + 25 > WORD1(v8) || v9 < 0xFFFF000000000000;
          v12 = v8 + 0x100000020;
          v13 = (v8 + 0x100000020) >> 16;
          v14 = ((v8 + 32) + 40 > v13) | ((v8 + 0x100000020) >> 56);
          if (v11)
          {
            v12 = v8;
            v14 = HIBYTE(v8) | 1;
            v13 = v8 >> 16;
          }

          v15 = v12 & 0xFFFFFF00000000 | (v14 << 56) | (v13 << 16) | v12;
          v16 = v8;
          atomic_compare_exchange_strong_explicit(v7, &v16, v15, memory_order_relaxed, memory_order_relaxed);
          if (v16 == v8)
          {
            if (v11)
            {
              if ((v12 & 0xFF00000000) == 0)
              {
                firehose_buffer_ring_enqueue(v2, BYTE4(v5));
              }
            }

            else if (v8)
            {
              voucher_activity_flush_cold_2(v8);
            }

            break;
          }

          v8 = v16;
          if (!v16)
          {
            break;
          }
        }
      }

      atomic_compare_exchange_strong_explicit((v4 + 640), &v17, v5 & 0xFFFFFF00FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
    }
  }
}

unint64_t voucher_activity_trace_v_2(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, unint64_t a6, char a7)
{
  LOBYTE(v8) = a7;
  v12 = a3;
  v14 = a1;
  if (_firehose_task_buffer_pred != -1)
  {
LABEL_106:
    v75 = v14;
    v76 = v12;
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
    v14 = v75;
    v12 = v76;
  }

  v15 = _firehose_task_buffer;
  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    return 0;
  }

  v95 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = *(StatusReg + 224);
  if (v17)
  {
    v18 = *(v17 + 48);
    v19 = *(v17 + 56);
    v20 = v19 == 0;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v20 = 1;
  }

  v21 = a5 + 8;
  if (!v18)
  {
    v21 = a5;
  }

  v22 = !v20;
  if (v20)
  {
    v23 = (v18 != 0) | (a2 >> 16) & 0xFFFFFFEF;
  }

  else
  {
    LOWORD(v23) = (v18 != 0) | WORD1(a2);
  }

  if (v22)
  {
    v24 = v21 + 8;
  }

  else
  {
    v24 = v21;
  }

  if ((a2 & 0x100000) != 0)
  {
    v25 = v19;
  }

  else
  {
    v25 = 0;
  }

  if ((a2 & 0x100000) != 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = (v18 != 0) | WORD1(a2);
  }

  if ((a2 & 0x100000) != 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = v21;
  }

  v28 = v26 | 0x100;
  if (a6)
  {
    v29 = v27 + 4;
  }

  else
  {
    v28 = v26;
    v29 = v27;
  }

  if (&v29[a6 + 24] < 0xFF1)
  {
    v86 = v28;
    v87 = a2;
    v30 = 0;
    v31 = v8 & 1;
    v32 = v14;
    v92 = (v15 + (v14 << 7) + 640);
    a2 = *v92;
    if ((v29 & 7) != 0)
    {
      v7 = (v29 & 0xFFF8u) + 32;
    }

    else
    {
      v7 = v29 + 24;
    }

    v8 = a6 << 16;
LABEL_32:
    v33 = HIDWORD(a2);
    v90 = v30 ^ 1;
    v93 = HIWORD(a2);
    for (i = a2 >> 40; ; i = a2 >> 40)
    {
      while (1)
      {
        v34 = v33;
        v35 = i;
        if ((v33 - 1) <= 0xFDu)
        {
          break;
        }

LABEL_54:
        if (v31)
        {
          goto LABEL_61;
        }

LABEL_55:
        if (!a2)
        {
          goto LABEL_64;
        }

        v49 = 1;
LABEL_73:
        v55 = a2 | v49;
        v56 = (v93 << 48) | (v35 << 40);
        v57 = v55 | (v34 << 32);
        v58 = v57 | v56;
        v59 = a2 | (v33 << 32);
        if (v57 != v59)
        {
          v60 = v59 | v56;
          v61 = v60;
          atomic_compare_exchange_strong_explicit(v92, &v61, v58, memory_order_relaxed, memory_order_relaxed);
          v93 = HIWORD(v61);
          i = v61 >> 40;
          v33 = HIDWORD(v61);
          a2 = v61;
          if (v61 != v60)
          {
            continue;
          }
        }

        v89 = v31;
        v79 = StatusReg;
        v81 = v25;
        v83 = v14;
        v85 = v18;
        v62 = v12;
        v91 = v55;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        _dispatch_firehose_gate_wait(v92, v91, 0x10000);
        a2 = *v92;
        v30 = 1;
        v12 = v62;
        v18 = v85;
        v14 = v83;
        StatusReg = v79;
        v25 = v81;
        v31 = v89;
        goto LABEL_32;
      }

      v36 = (v15 + (v33 << 12));
      v37 = *v36;
      if (*v36)
      {
        v88 = v31;
        v38 = v12 - v36[1];
        while (1)
        {
          if ((HIWORD(v37) & 0x1FF) != v32)
          {
            goto LABEL_53;
          }

          v40 = (v29 + 24 + a6) + v37 > WORD1(v37) || HIWORD(v38) != 0;
          v41 = v37 + v7;
          v42 = v37 + v7 - v8;
          v43 = v42 >> 16;
          v44 = ((v37 + v7) + 40 > WORD1(v42)) | ((v42 + 0x100000000) >> 56);
          if (v40)
          {
            v45 = v37;
          }

          else
          {
            v45 = v42 + 0x100000000;
          }

          if (v40)
          {
            v44 = HIBYTE(v37) | 1;
            v46 = v37 >> 16;
          }

          else
          {
            LOWORD(v46) = v43;
          }

          if (v40)
          {
            v41 = v37;
          }

          v47 = v45 & 0xFFFFFF00000000 | (v44 << 56) | (v46 << 16) | v41;
          v48 = v37;
          atomic_compare_exchange_strong_explicit(v36, &v48, v47, memory_order_relaxed, memory_order_relaxed);
          if (v48 == v37)
          {
            break;
          }

          v37 = v48;
          if (!v48)
          {
            goto LABEL_53;
          }
        }

        if (!v40)
        {
          v95 = v36 + v46;
          if (!v37)
          {
LABEL_53:
            v34 = 0;
            v31 = v88;
            goto LABEL_54;
          }

          v74 = *(StatusReg - 8);
          v67 = (v36 + v37);
          v67[2] = v38 | (v29 << 48);
          v67[1] = v74;
          if (v18)
          {
            goto LABEL_85;
          }

LABEL_101:
          v68 = v67 + 3;
          if (!v25)
          {
            goto LABEL_87;
          }

LABEL_86:
          *v68++ = v25;
          goto LABEL_87;
        }

        v31 = v88;
        if ((v45 & 0xFF00000000) == 0)
        {
          v84 = v18;
          v77 = v12;
          v82 = v14;
          v78 = StatusReg;
          v80 = v25;
          firehose_buffer_ring_enqueue(v15, v33);
          v35 = i;
          v31 = v88;
          StatusReg = v78;
          v25 = v80;
          v14 = v82;
          v18 = v84;
          v12 = v77;
        }
      }

      v34 = 0;
      if (!v31)
      {
        goto LABEL_55;
      }

LABEL_61:
      if (!(v90 & 1 | ((v35 & 0x40) == 0)) || (v35 & 0x80) != 0)
      {
        v51 = v35 & 0x3F;
        if ((v35 & 0x3Fu) >= 0x3E)
        {
          v51 = 62;
        }

        v52 = (v35 << 40) | (v33 << 32) | (v93 << 48);
        v54 = ((((v51 | v35 & 0xC0) + 1) << 40) | (v34 << 32)) & 0xFFFFFFFFFFFFLL | (v93 << 48) | a2;
        a2 = v52 | a2;
        v53 = a2;
        atomic_compare_exchange_strong_explicit(v92, &a2, v54, memory_order_relaxed, memory_order_relaxed);
        if (a2 == v53)
        {
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          return 0;
        }

        goto LABEL_69;
      }

      if (a2)
      {
        v49 = 2;
        goto LABEL_73;
      }

LABEL_64:
      v50 = (v93 << 48) | (v35 << 40);
      a2 = v50 | (v33 << 32);
      atomic_compare_exchange_strong_explicit(v92, &a2, *(StatusReg + 24) & 0xFFFFFFFCLL | (v34 << 32) | v50, memory_order_relaxed, memory_order_relaxed);
      if (a2 == (v50 | (v33 << 32)))
      {
        v7 = v25;
        a2 = v18;
        v96 = v12;
        v97 = v29;
        WORD1(v97) = a6;
        BYTE4(v97) = v14;
        v63 = (2 * *(v15 + 1697)) | (4 * v31);
        if (((1 << v32) & 0x93) != 0)
        {
          ++v63;
        }

        BYTE6(v97) = v63 ^ 4;
        if (MEMORY[0xFFFFFC100])
        {
          goto LABEL_108;
        }

        goto LABEL_81;
      }

LABEL_69:
      v33 = HIDWORD(a2);
      v93 = HIWORD(a2);
    }
  }

  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Log is too large";
  qword_6D1F0 = &v29[a6 + 24];
  __break(1u);
LABEL_108:
  kdebug_trace();
LABEL_81:
  v64 = firehose_buffer_tracepoint_reserve_slow(v15, &v96, &v95);
  if (!v64)
  {
    return 0;
  }

  v67 = v64;
  v18 = a2;
  v25 = v7;
  if (!a2)
  {
    goto LABEL_101;
  }

LABEL_85:
  v67[3] = v18;
  v68 = v67 + 4;
  if (v25)
  {
    goto LABEL_86;
  }

LABEL_87:
  if (a6)
  {
    *v68 = (v95 - (v67 & 0xF000)) | (a6 << 16);
    v68 = (v68 + 4);
  }

  while (a5)
  {
    v7 = *(a4 + 8);
    memcpy(v68, *a4, v7);
    v69 = *(a4 + 8);
    v70 = a5 >= v69;
    a5 -= v69;
    if (!v70)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
LABEL_105:
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
      goto LABEL_106;
    }

    v68 = (v68 + v7);
    a4 += 16;
  }

  a2 = v87;
  if (a6)
  {
    a5 = v95;
    do
    {
      v71 = *(a4 + 8);
      memcpy(a5, *a4, v71);
      a5 += v71;
      v95 = a5;
      v72 = *(a4 + 8);
      v70 = a6 >= v72;
      a6 -= v72;
      if (!v70)
      {
        goto LABEL_105;
      }

      a4 += 16;
    }

    while (a6);
  }

  v73 = _firehose_task_buffer;
  v65 = v87 & 0xFFFFFFFF0000FFFFLL | (v86 << 16);
  atomic_store(v65, v67);
  if ((atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFF000), 0xFFFFFFFF00000000, memory_order_relaxed) & 0x10000FF00000000) == 0x100000100000000)
  {
    firehose_buffer_ring_enqueue(v73, (((v67 & 0xFFFFF000) - v73) >> 12));
  }

  return v65;
}

unint64_t voucher_activity_trace(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6[0] = a4;
  v6[1] = a5;
  return voucher_activity_trace_v(a1, a2, a3, v6, a5, 0);
}

size_t _voucher_debug(uint64_t a1, char *__str, size_t __size)
{
  v6 = snprintf(__str, __size, "voucher[%p] = { xref = %d, ref = %d", a1, *(a1 + 12), *(a1 + 8));
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

  if (*(a1 + 40))
  {
    if (__size >= v8)
    {
      v9 = __size - v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = snprintf(&__str[v8], v9, ", base voucher %p", *(a1 + 40));
    v11 = v10;
    if (v9 < v10)
    {
      v11 = v9;
    }

    if (v10 < 0)
    {
      v11 = 0;
    }

    v8 += v11;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    if (__size >= v8)
    {
      v22 = __size - v8;
    }

    else
    {
      v22 = 0;
    }

    if (v12 == *(a1 + 36))
    {
      v23 = " & ipc kvoucher";
    }

    else
    {
      v23 = "";
    }

    snprintf(&__str[v8], v22, ", kvoucher%s 0x%x [\n", v23, v12);
    v24 = voucher_kvoucher_debug();
    v25 = v24;
    if (__size >= v24)
    {
      v26 = __size - v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = snprintf(&__str[v24], v26, "]");
    v28 = v27;
    if (v26 < v27)
    {
      v28 = v26;
    }

    if (v27 < 0)
    {
      v28 = 0;
    }

    v8 = v28 + v25;
  }

  v13 = *(a1 + 36);
  if (v13 && v13 != *(a1 + 32))
  {
    if (__size >= v8)
    {
      v29 = __size - v8;
    }

    else
    {
      v29 = 0;
    }

    snprintf(&__str[v8], v29, ", ipc kvoucher 0x%x [\n", *(a1 + 36));
    v30 = voucher_kvoucher_debug();
    v31 = v30;
    if (__size >= v30)
    {
      v32 = __size - v30;
    }

    else
    {
      v32 = 0;
    }

    v33 = snprintf(&__str[v30], v32, "]");
    v34 = v33;
    if (v32 < v33)
    {
      v34 = v32;
    }

    if (v33 < 0)
    {
      v34 = 0;
    }

    v8 = v34 + v31;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    if (__size >= v8)
    {
      v15 = __size - v8;
    }

    else
    {
      v15 = 0;
    }

    v16 = snprintf(&__str[v8], v15, ", activity 0x%llx (pid: 0x%16llx, parent 0x%llx)", v14, *(a1 + 56), *(a1 + 64));
    v17 = v16;
    if (v15 < v16)
    {
      v17 = v15;
    }

    if (v16 < 0)
    {
      v17 = 0;
    }

    v8 += v17;
  }

  if (__size >= v8)
  {
    v18 = __size - v8;
  }

  else
  {
    v18 = 0;
  }

  v19 = snprintf(&__str[v8], v18, " }");
  v20 = v19;
  if (v18 < v19)
  {
    v20 = v18;
  }

  if (v19 < 0)
  {
    v20 = 0;
  }

  return v20 + v8;
}

uint64_t voucher_mach_msg_fill_aux(uint64_t a1, unsigned int a2)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  if (a2 >= 0x28)
  {
    v4 = *(v2 + 48);
    if (v4)
    {
      *a1 = xmmword_45410;
      v5 = *(v2 + 56);
      *(a1 + 16) = v4;
      *(a1 + 24) = v5;
      return 40;
    }
  }

  return v3;
}

void _voucher_activity_id_allocate_slow(uint64_t a1)
{
  activity_id = 0;
  v2 = mach_generate_activity_id(mach_task_self_, 1, &activity_id);
  if (v2)
  {
    v3 = v2;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Could not generate an activity ID";
    qword_6D1F0 = v2;
    __break(1u);
  }

  else
  {
    if (16 * (activity_id & 0xFFFFFFFFFFFFFLL))
    {
      v2 = 16 * (activity_id & 0xFFFFFFFFFFFFFLL);
    }

    else
    {
      v2 = 1;
    }

    v3 = &_voucher_aid_next;
    if (a1)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(v3, &v4, v2 + 1, memory_order_relaxed, memory_order_relaxed);
  if (v4)
  {
LABEL_6:
    __swp(v2, v3);
  }
}

uint64_t _firehose_task_buffer_init()
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  v0 = getpid();
  result = proc_pidinfo(v0, 17, 1uLL, &v5, 56);
  if (result != 56)
  {
    if (!result)
    {
      v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      qword_6D1C0 = "BUG IN LIBDISPATCH: Unable to get the unique pid (error)";
      qword_6D1F0 = v4;
      __break(1u);
    }

    qword_6D1C0 = "BUG IN LIBDISPATCH: Unable to get the unique pid (size)";
    qword_6D1F0 = result;
    __break(1u);
  }

  _voucher_unique_pid = v6;
  if (_voucher_libtrace_hooks)
  {
    result = (*(_voucher_libtrace_hooks + 8))(result, v2);
    if (result)
    {
      result = firehose_buffer_create(result, _voucher_unique_pid, _dispatch_memory_warn);
      _firehose_task_buffer = result;
      if (*_voucher_libtrace_hooks >= 4)
      {
        v3 = *(_voucher_libtrace_hooks + 32);
        if (v3)
        {
          return v3(result + 2048, 2048);
        }
      }
    }
  }

  return result;
}

mach_vm_address_t firehose_buffer_create(mach_port_name_t a1, uint64_t a2, uint64_t a3)
{
  address = vm_page_size;
  if (0x4000 % vm_page_size)
  {
    firehose_buffer_create_cold_1();
  }

  v6 = mach_vm_map(mach_task_self_, &address, 0x40000uLL, 0, 1308622851, 0, 0, 0, 3, 7, 2u);
  if (v6)
  {
    if (v6 != 3)
    {
      _dispatch_bug(346, v6);
    }

    v11 = mach_port_deallocate(mach_task_self_, a1);
    if (v11 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v11)
    {
      _dispatch_bug(91, v11);
    }

    return 0;
  }

  else
  {
    v7 = address;
    *(address + 1676) = a1;
    *(v7 + 1672) = getpid();
    *(v7 + 1664) = a2;
    name = 0;
    *&options.flags = 0x500000033;
    options.8 = 0uLL;
    v8 = mach_port_construct(mach_task_self_, &options, v7, &name);
    if (v8)
    {
      if (v8 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      firehose_buffer_create_cold_3(v8);
    }

    *(v7 + 1688) = name;
    *(v7 + 264) = 20180226;
    *(v7 + 512) = a3;
    for (i = 644; i != 1668; i += 128)
    {
      if (i != 1028)
      {
        *(v7 + i) = -1;
      }
    }

    firehose_buffer_update_limits_unlocked(v7);
    *(v7 + 520) = 31;
    *v7 = 1;
    *(v7 + 2) = 2;
    *(v7 + 4) = 3;
    *(v7 + 6) = 4;
    *(v7 + 464) = 4;
    *(v7 + 320) = 4;
    *(v7 + 256) = 0;
    *(v7 + 258) = 4;
    *(v7 + 260) = 0;
    *(v7 + 262) = 0;
  }

  return v7;
}

uint64_t firehose_buffer_update_limits_unlocked(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = *(result + 512);
  v5 = (result + 644);
  do
  {
    v7 = *v5;
    v5 += 128;
    v6 = v7;
    if (((1 << v3) & 0x93) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = v2 + 1;
    }

    if (((1 << v3) & 0x93) != 0)
    {
      v9 = v1 + 1;
    }

    else
    {
      v9 = v1;
    }

    if (v6 != 255)
    {
      v2 = v8;
      v1 = v9;
    }

    ++v3;
  }

  while (v3 != 8);
  v10 = (2 * (v1 + v2)) | 1;
  if ((v4 & 2) != 0)
  {
    v10 = 3 * v1 + 6 * v2 + 1;
  }

  v11 = v1 + v2 + 3;
  v12 = v1 + 4 * v2;
  if ((v4 & 2) != 0)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v11;
  }

  if ((v4 & 1) == 0)
  {
    v13 = v10;
  }

  if ((vm_page_size & 0xFFFE000) != 0)
  {
    v14 = v13 % (vm_page_size >> 12);
    if (v14)
    {
      v15 = (vm_page_size >> 12) - v14;
    }

    else
    {
      v15 = 0;
    }

    v13 += v15;
  }

  if (v4)
  {
    v16 = 4;
  }

  else
  {
    v16 = 8;
  }

  if (v16 <= v13)
  {
    v16 = v13;
  }

  v17 = v16 - 1;
  v18 = 2 * v1;
  if ((3 * v16) >> 3 > v18)
  {
    v18 = (3 * v16) >> 3;
  }

  v19 = v16 + 1;
  v20 = *(result + 528);
  *(result + 528) = v17;
  *(result + 530) = v18;
  *(result + 532) = v19;
  *(result + 533) = 0;
  *(result + 534) = 0;
  v21 = ((v18 << 16) | (v19 << 32) | v17) - v20;
  if (v21)
  {
    atomic_fetch_add_explicit((result + 448), v21, memory_order_relaxed);
  }

  return result;
}

mach_vm_address_t firehose_buffer_get_logging_prefs(int a1, mach_vm_size_t *a2)
{
  v9 = 0;
  address = 0;
  size = 0;
  if ((a1 + 1) <= 1)
  {
LABEL_16:
    result = 0;
    *a2 = 0;
    return result;
  }

  logging_prefs = firehose_send_get_logging_prefs(a1, &v9, &size);
  if (logging_prefs)
  {
    if (logging_prefs != 268435459)
    {
      if (logging_prefs == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      _dispatch_bug(600, logging_prefs);
    }

    goto LABEL_16;
  }

  v4 = mach_vm_map(mach_task_self_, &address, size, 0, 1, v9, 0, 0, 1, 1, 2u);
  if (v4 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v4)
  {
    _dispatch_bug(611, v4);
    address = 0;
    size = 0;
  }

  v5 = mach_port_deallocate(mach_task_self_, v9);
  if (v5 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v5)
  {
    _dispatch_bug(617, v5);
  }

  result = address;
  *a2 = size;
  return result;
}

BOOL firehose_buffer_should_send_strings(_DWORD *guard)
{
  v1 = guard[420];
  v7 = 0;
  if (v1 == -1)
  {
    return 0;
  }

  if (!v1)
  {
LABEL_10:
    v5 = firehose_client_reconnect(guard, v1, 0);
    if ((v5 - 1) <= 0xFFFFFFFD)
    {
      should_send_strings = firehose_send_should_send_strings(v5, &v7);
      if (!should_send_strings)
      {
        return v7 != 0;
      }

      if (should_send_strings != 268435459)
      {
        if (should_send_strings == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        _dispatch_bug(653, should_send_strings);
      }
    }

    return 0;
  }

  v3 = firehose_send_should_send_strings(v1, &v7);
  if (v3)
  {
    if (v3 != 268435459)
    {
      if (v3 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      _dispatch_bug(641, v3);
    }

    goto LABEL_10;
  }

  return v7 != 0;
}

uint64_t firehose_client_reconnect(_DWORD *guard, int a2, unsigned int a3)
{
  v6 = 0;
  *object_handle = 0;
  v7 = guard + 423;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(guard + 423, &v6, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    _dispatch_unfair_lock_lock_slow(guard + 423, 0x10000);
  }

  v9 = guard + 420;
  v10 = guard[a3 + 420];
  if (v10 == a2 && v10 != -1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = v13;
        v15 = v9[v12];
        if (mach_port_destruct(mach_task_self_, v15, 0, guard) == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        v16 = mach_port_deallocate(mach_task_self_, v15);
        if (v16 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v16)
        {
          _dispatch_bug(91, v16);
        }

        v13 = 0;
        v9[v12] = 0;
        v12 = 1;
      }

      while ((v14 & 1) != 0);
    }

    v44 = guard;
    size = 0x40000;
    memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, guard, 4194305, &object_handle[1], 0);
    if (!(size >> 18))
    {
      firehose_client_reconnect_cold_12(size);
    }

    if (memory_entry_64)
    {
      firehose_client_reconnect_cold_3(memory_entry_64);
    }

    if (a2 && (v18 = *(_voucher_libtrace_hooks + 24)) != 0 && ((v19 = v18(&v44, &size), v20 = size, !v19) ? (v21 = v44 == 0) : (v21 = 1), !v21 ? (v22 = size == 0) : (v22 = 1), !v22))
    {
      v33 = mach_make_memory_entry_64(mach_task_self_, &size, v44, 4194305, object_handle, 0);
      if (v33)
      {
        firehose_client_reconnect_cold_3(v33);
      }

      v34 = mach_vm_deallocate(mach_task_self_, v44, size);
      v43 = v20;
      if (v34)
      {
        _dispatch_bug(209, v34);
      }
    }

    else
    {
      v43 = 0;
    }

    v23 = &v49;
    v24 = 1;
    do
    {
      v25 = v24;
      name = 0;
      *&options.flags = 0x100000017;
      options.8 = 0uLL;
      v26 = mach_port_construct(mach_task_self_, &options, guard, &name);
      if (v26)
      {
        if (v26 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        firehose_buffer_create_cold_3(v26);
      }

      v24 = 0;
      *v23 = name;
      v23 = &v50;
    }

    while ((v25 & 1) != 0);
    v10 = *(&v49 + a3);
    v27 = v49;
    v28 = v50;
    v29 = firehose_send_register(guard[419], object_handle[1], 0x40000, v49, v50, guard[422], object_handle[0], v43);
    if (v29)
    {
      if (v29 != 268435459)
      {
        firehose_client_reconnect_cold_10(v29);
      }

      v35 = 0;
      v36 = &v49;
      v37 = 1;
      do
      {
        v38 = v37;
        v39 = *v36;
        if (mach_port_destruct(mach_task_self_, *v36, 0, guard) == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        v40 = mach_port_deallocate(mach_task_self_, v39);
        if (v40 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v40)
        {
          _dispatch_bug(91, v40);
        }

        v37 = 0;
        v9[v35] = -1;
        v36 = &v50;
        v35 = 1;
      }

      while ((v38 & 1) != 0);
      v41 = mach_port_deallocate(mach_task_self_, object_handle[1]);
      if (v41 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (v41)
      {
        _dispatch_bug(91, v41);
      }

      if (object_handle[0])
      {
        v42 = mach_port_deallocate(mach_task_self_, object_handle[0]);
        if (v42 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v42)
        {
          _dispatch_bug(91, v42);
        }
      }

      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      guard[420] = v27;
      guard[421] = v28;
    }
  }

  v30 = *(StatusReg + 24) & 0xFFFFFFFC;
  v31 = atomic_exchange_explicit(v7, 0, memory_order_release);
  if (v31 != v30)
  {
    _dispatch_unfair_lock_unlock_slow(v7, v31);
  }

  return v10;
}

void firehose_client_push_reply(uint64_t a1, int a2)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: firehose_push_reply should never be sent to the buffer receive port";
  qword_6D1F0 = a2;
  __break(1u);
}

uint64_t firehose_client_push_notify_async(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  do
  {
    v4 = *v4;
  }

  while (v4 && *(v4 + 8) != "firehose");
  firehose_client_merge_updates(*(v4 + 16), 1, a2, a3, a4 != 0, 0);
  return 0;
}

uint64_t firehose_client_merge_updates(uint64_t result, int a2, unint64_t a3, unint64_t a4, int a5, void *a6)
{
  if (a5)
  {
    v6 = *(result + 1696);
    if (!v6)
    {
      atomic_compare_exchange_strong_explicit((result + 1696), &v6, 1u, memory_order_relaxed, memory_order_relaxed);
    }
  }

  v7 = *(result + 464);
  do
  {
    v8 = v7;
    if (a3 <= v7)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((result + 464), &v7, a3, memory_order_relaxed, memory_order_relaxed);
  }

  while (v7 != v8);
  if (a3 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3 - v8;
  }

  v10 = *(result + 488);
  do
  {
    v11 = v10;
    if (a4 <= v10)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((result + 488), &v10, a4, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v11);
  if (a4 <= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4 - v11;
  }

  if (v9 | v12)
  {
    v13 = *(result + 256);
    v14 = v13;
    atomic_compare_exchange_strong_explicit((result + 256), &v14, ((v9 + WORD1(v13)) << 16) | ((v12 + HIWORD(v13)) << 48) | v13 & 0xFFFF0000FFFFLL, memory_order_relaxed, memory_order_relaxed);
    if (v14 != v13)
    {
      v15 = v14;
      do
      {
        atomic_compare_exchange_strong_explicit((result + 256), &v15, ((v9 + WORD1(v14)) << 16) | ((v12 + HIWORD(v14)) << 48) | v14 & 0xFFFF0000FFFFLL, memory_order_relaxed, memory_order_relaxed);
        v16 = v15 == v14;
        v14 = v15;
      }

      while (!v16);
    }

    v17 = v9 | (v12 << 16);
    add_explicit = atomic_fetch_add_explicit((result + 448), v17, memory_order_release);
    if (a6)
    {
      *a6 = add_explicit + v17;
    }

    if (a2)
    {
      if (v12)
      {
        atomic_fetch_add_explicit((result + 496), 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        atomic_fetch_add_explicit((result + 472), 1uLL, memory_order_relaxed);
      }
    }
  }

  else if (a6)
  {
    *a6 = *(result + 448);
  }

  return result;
}