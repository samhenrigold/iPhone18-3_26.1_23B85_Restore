uint64_t _dispatch_mach_msg_send(uint64_t *a1, void *a2, uint64_t *a3, unsigned int a4, int a5)
{
  v60 = v90;
  v106 = a2;
  v105 = a1;
  v104 = a3;
  v103 = a4;
  v102 = a5;
  v101 = a1[15];
  v100 = a2;
  v59 = 0;
  reply_disconnected = 0;
  v98 = a2[8];
  v97 = 0;
  v61 = 0;
  v96 = 0;
  v95 = 0;
  msg = _dispatch_mach_msg_get_msg(a2);
  v93 = (*msg & 0x1F) == 18;
  v92 = *(v100 + 13);
  memset(v213, 0, sizeof(v213));
  v91 = 0;
  memset(v90, 0, sizeof(v90));
  v89 = 0;
  if (!v93)
  {
    *(v105 + 59) &= ~1u;
    v5 = *(v101 + 48);
    v58 = 0;
    if (v5)
    {
      v58 = v100 != *(v101 + 48);
    }

    if (v58)
    {
      v88 = v101;
      v126 = v101;
      v124 = *(v101 + 16);
      v125 = v124;
      v123 = v124;
      v151 = v124;
      v57 = 0;
      if (v124)
      {
        v57 = _dispatch_thread_getspecific(20) != &_dispatch_mgr_q;
      }

      if (v57)
      {
        *(v105 + 59) |= 1u;
        return v96;
      }

      v6 = *(v101 + 48);
      v162 = v105;
      v161 = v6;
      v160 = 0;
      if ((*(v105 + 58) & 0x10) != 0)
      {
        v159 = v161;
        if (_dispatch_mach_msg_get_reply_port(v161))
        {
          v7 = v161[4];
          v165 = v162;
          v164 = v7;
          v163 = 0;
          v163 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(v7);
          if (!v163)
          {
            v163 = v165;
          }

          v167 = v163;
          v166 = 1839;
          if (!v163)
          {
            _dispatch_abort(v166, 0);
          }
        }
      }

      if ((v160 & 0x40000) != 0)
      {
        v161[7] = 0;
      }

      else
      {
        v158 = 1;
        if ((v160 & 4) != 0)
        {
          v158 |= 2u;
        }

        v169 = 0;
        v168 = v158;
        if (v158)
        {
          v171 = _dispatch_thread_getspecific(4);
          v169 = v171;
        }

        v172 = v169;
        v169 &= 0xFFFFFFu;
        if ((v168 & 2) != 0 || (v56 = v169, v176 = 5, v175 = 4096, v169 <= 0x10FF))
        {
          v170 = v169;
        }

        else
        {
          v174 = 5;
          v173 = 4096;
          v170 = 4351;
        }

        v161[7] = v170;
      }

      v177 = _dispatch_thread_getspecific(28);
      if (v177)
      {
        object = v177;
        os_retain(v177);
      }

      v161[8] = v177;
      v55 = 0;
      v8 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] set", 1856, v8, v161[8], v161);
      v160 |= _dispatch_mach_send_options();
      *(v161 + 12) = v160;
      v87 = *(v101 + 48);
      if (!_dispatch_mach_msg_send(v105, v87, 0, v103, 0))
      {
        v86 = *(*(v101 + 48) + 64);
        if (v86)
        {
          v152 = v86;
          os_release(v86);
          *(*(v101 + 48) + 64) = 0;
        }

        return v96;
      }

      if ((*(v105 + 58) & 0x20) != 0)
      {
        _dispatch_mach_arm_no_senders(v105, 1);
      }

      *(v101 + 48) = 0;
    }
  }

  error_value = 0;
  v84 = 0;
  v83 = *(v100 + 12);
  if ((v83 & 2) != 0)
  {
    goto LABEL_117;
  }

  v82 = 0;
  v84 = (HIWORD(v83) << 16) | 1;
  if (v93)
  {
LABEL_88:
    if ((v83 & 4) != 0)
    {
      if (*(v104 + 30))
      {
        v84 |= 0x100000u;
        _dispatch_clear_thread_reply_port(v92);
      }

      _dispatch_mach_reply_waiter_register(v105, v104, v92, v100);
    }

    v73 = msg;
    v74 = msg[1];
    *&v213[1] = v74;
    *(v60 + 67) = msg;
    v51 = &v213[1] + 8;
    *&v71 = v90;
    *(&v71 + 1) = 0;
    v52 = v72;
    if (v89)
    {
      v50 = v90[0];
    }

    else
    {
      v50 = 0;
    }

    v18 = v51;
    *v52 = v50;
    v72[1] = 0;
    v19 = v71;
    *(v18 + 2) = v72[0];
    *v18 = v19;
    v20 = *msg;
    v70 = *(msg + 2);
    v69 = v20;
    error_value = mach_msg2(v213, v84 | 0x500000000, &v69, 2u, 0, 0, 0, v82);
    v48 = _dispatch_thread_getspecific(0);
    v45 = v100[4];
    v47 = msg[2];
    v46 = msg[5];
    v44 = v84;
    v43 = v83;
    v42 = msg[4];
    v41 = v92;
    v21 = mach_error_string(error_value);
    v49 = &v34;
    _dispatch_log("%u\t%p\tmachport[0x%08x]: sent msg id 0x%x, ctxt %p, opts 0x%x, msg_opts 0x%x, kvoucher 0x%08x, reply on 0x%08x: %s - 0x%x", 1202, v48, v47, v46, v45, v44, v43, v42, v41, v21, error_value);
    v40 = 0;
    if (error_value)
    {
      v40 = (v83 >> 2) & 1;
    }

    if (v40)
    {
      v68 = 36;
      v139 = v104;
      v138 = 1205;
      if (!v104)
      {
        _dispatch_abort(v138, 0);
      }

      _dispatch_mach_reply_unregister(v105, v104, v68);
    }

    if (v95)
    {
      if (error_value == 268435461 && msg[4])
      {
        v67 = error_value;
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher port corruption";
        qword_E42C0 = error_value;
        __break(1u);
        JUMPOUT(0x79158);
      }

      v66 = 0;
      v157 = msg;
      v156 = 0;
      v155 = HIWORD(*msg) & 0x1F;
      v154 = msg[4];
      v153 = 0;
      if ((v155 == 19 || v155 == 17) && v154)
      {
        v22 = _dispatch_thread_getspecific(0);
        if (v156)
        {
          v23 = "move-send";
        }

        else
        {
          v23 = "copy-send";
        }

        _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] clear %s", 520, v22, v154, v157, v23);
        if (v155 == 17)
        {
          if (v156)
          {
            v153 = v154;
          }

          else
          {
            _voucher_dealloc_mach_voucher(v154);
          }
        }

        v157[4] = 0;
        *v157 &= 0xFFE0FFFF;
      }

      v66 = v153;
    }

LABEL_117:
    if (error_value == 268435460 && (v84 & 0x10) != 0)
    {
      if (msg[2] == -1)
      {
        *msg &= 0xFFFFFFE0;
        *msg |= 0x13u;
      }

      if ((v84 & 0x80) != 0)
      {
        _dispatch_mach_notification_set_armed(v101);
      }

      else
      {
        *(v105 + 59) |= 1u;
      }
    }

    else
    {
      v65 = v105[11];
      if ((v83 & 4) == 0 && !error_value)
      {
        if (v92)
        {
          v64 = v65;
          v114 = v65;
          v112 = *(v65 + 16);
          v113 = v112;
          v111 = v112;
          v148 = v112;
          if (!v112 || *(v65 + 24) != v92)
          {
            _dispatch_mach_reply_kevent_register(v105, v92, v100);
          }
        }
      }

      v39 = 0;
      if (!v93)
      {
        v24 = *(v101 + 48);
        v39 = 0;
        if (v100 == v24)
        {
          v63 = v101;
          v110 = v101;
          v108 = *(v101 + 16);
          v109 = v108;
          v107 = v108;
          v147 = v108;
          v39 = v108 != 0;
        }
      }

      if (v39)
      {
        v199 = v105;
        v198 = 5;
        dispatch_assert_queue_V2(&_dispatch_mgr_q);
        v197 = v199[15];
        _dispatch_unote_unregister(v197, v198);
        *(v199[15] + 24) = 0;
      }

      if (error_value)
      {
        if ((*(v105 + 58) & 0x10) != 0 && v100[4])
        {
          v25 = v100[4];
          v129 = v105;
          v128 = v25;
          v127 = 0;
          v127 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(v25);
          if (!v127)
          {
            v127 = v129;
          }

          v97 = v127;
        }

        v62 = v100;
        if (v104)
        {
          v38 = v104;
        }

        else
        {
          v38 = 0;
        }

        if (v97)
        {
          v26 = 12;
        }

        else
        {
          v26 = 7;
        }

        reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(v62, v38, v26);
      }

      _dispatch_mach_msg_set_reason(v100, error_value, 0);
      if (v102 & 8) != 0 && (v83)
      {
        v96 |= 2u;
      }

      else
      {
        _dispatch_mach_handle_or_push_received_msg(v105, v100, 0);
      }

      if (reply_disconnected)
      {
        if (v97)
        {
          v137 = v105;
          v136 = reply_disconnected;
          v135 = v97;
          v134 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, v105);
          v133 = v135;
          v132 = v134;
          v145 = v135;
          v144 = v134;
          v143 = 0;
          v142 = 0;
          v212 = v135;
          v211 = v134;
          v35 = *v135;
          v36 = v135 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
          v37 = 0;
          if (v35)
          {
            v37 = v35;
          }

          v30 = *(v37 + 72);
          v131 = v135;
          v130 = v134;
          LODWORD(v146) = *(v136 + 7);
          v146 &= 0x3FFF00u;
          v146 >>= 8;
          v31 = __clz(__rbit32(v146));
          if (v146)
          {
            v32 = v31 + 1;
          }

          else
          {
            v32 = 0;
          }

          v30(v131, v130, v32, v27, v28, v29);
        }

        else
        {
          _dispatch_mach_handle_or_push_received_msg(v105, reply_disconnected, 0);
        }
      }

      v96 |= 1u;
    }

    return v96;
  }

  if (v100 != *(v101 + 48))
  {
    msg[2] = *(v101 + 92);
  }

  if (_dispatch_thread_getspecific(20) != &_dispatch_mgr_q)
  {
LABEL_47:
    v84 |= 0x10u;
    if (v98 && *(v98 + 6))
    {
      v10 = v60;
      v89 = 32;
      *&v75 = 59821818;
      *(&v75 + 1) = *(v98 + 6);
      v76 = *(v98 + 56);
      v11 = v75;
      *(v60 + 6) = v76;
      *(v10 + 2) = v11;
    }

    if (v89)
    {
      v90[0] = v89 + 8;
    }

    v12 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] msg_set", 1158, v12, v98, v100);
    v188 = msg;
    v187 = v98;
    if ((*msg & 0x1F0000) != 0)
    {
      v189 = 0;
    }

    else
    {
      mach_voucher = 0;
      if (v187)
      {
        mach_voucher = _voucher_get_mach_voucher(v187);
      }

      else
      {
        v206 = &_voucher_task_mach_voucher_pred;
        v205 = 0;
        v204 = _voucher_task_mach_voucher_init;
        if (_voucher_task_mach_voucher_pred != -1)
        {
          dispatch_once_f(v206, v205, v204);
        }

        mach_voucher = _voucher_task_mach_voucher;
      }

      v202 = v188;
      v201 = mach_voucher;
      v200 = 0;
      if ((*v188 & 0x1F0000) != 0)
      {
        v203 = 0;
      }

      else if (v201)
      {
        v202[4] = v201;
        if (v200)
        {
          v13 = 1114112;
        }

        else
        {
          v13 = 1245184;
        }

        *v202 |= v13;
        v14 = _dispatch_thread_getspecific(0);
        if (v200)
        {
          v15 = "move-send";
        }

        else
        {
          v15 = "copy-send";
        }

        _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] set %s", 476, v14, v201, v202, v15);
        v203 = 1;
      }

      else
      {
        v203 = 0;
      }

      v189 = v203;
    }

    v95 = v189;
    v194 = v100;
    v193 = v103;
    v192 = &v84;
    v207 = v103;
    if (v103 > 4)
    {
      v54 = 5;
    }

    else
    {
      v54 = v207;
    }

    v193 = v54;
    if (v54)
    {
      v191 = 0;
      v190 = 0;
      v196 = v194[7];
      v196 &= 0x3FFF00uLL;
      v196 >>= 8;
      v16 = __clz(__rbit32(v196));
      if (v196)
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = 0;
      }

      v191 = v17;
      v208 = v194[7];
      v210 = v208;
      v53 = 0;
      if ((v208 & 0x22000000) == 0)
      {
        v53 = (v210 & 0x3F00) != 0;
      }

      if (v53)
      {
        v208 = v208;
        v209 = v208 + 1;
      }

      else
      {
        v209 = 0;
      }

      v190 = v209;
      *v192 |= 0x20u;
      v195 = mach_msg_priority_encode_inline(v193, v191, v190);
    }

    else
    {
      v195 = 0;
    }

    v82 = v195;
    if (v92 && (*(v105 + 58) & 0x80) != 0)
    {
      v84 |= 0x200u;
    }

    goto LABEL_88;
  }

  v81 = v101;
  v122 = v101;
  v120 = *(v101 + 16);
  v121 = v120;
  v119 = v120;
  v150 = v120;
  if (!v120)
  {
    v9 = msg[2];
    v183 = v105;
    v182 = v9;
    dispatch_assert_queue_V2(&_dispatch_mgr_q);
    *(v183[15] + 24) = v182;
    v180 = v183[15];
    v181 = _dispatch_unote_register(v180, -4, 0x2000000u);
    v185 = v181 & 1;
    v184 = 1752;
    if ((v181 & 1) == 0)
    {
      _dispatch_bug(v184, v185);
    }

    v179 = v181 & 1;
    v80 = v101;
    v118 = v101;
    v116 = *(v101 + 16);
    v117 = v116;
    v115 = v116;
    v149 = v116;
    v141 = v116 != 0;
    v140 = 1134;
    if (!v116)
    {
      _dispatch_abort(v140, v141);
    }
  }

  v78 = *(v101 + 30);
  v79 = v78 & 1;
  v77 = v78 & 1;
  if ((v78 & 1) == 0)
  {
    v84 |= 0x80u;
    goto LABEL_47;
  }

  return v96;
}

void _dispatch_mach_push_send_barrier_drain(uint64_t a1, unsigned int a2)
{
  v5 = _dispatch_thread_getspecific(22);
  if (v5)
  {
    _dispatch_thread_setspecific(22, *(v5 + 16));
    v4 = v5;
  }

  else
  {
    v4 = _dispatch_continuation_alloc_from_heap();
  }

  *v4 = &unk_DCCD0;
  v4[4] = 0;
  v4[5] = 0;
  v4[3] = -1;
  v4[1] = -1;
  _dispatch_lane_push(a1, v4, a2);
}

void _dispatch_clear_thread_reply_port(int a1)
{
  v3 = _dispatch_thread_getspecific(8);
  if (a1 == v3)
  {
    _dispatch_thread_setspecific(8, 0);
    v2 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: cleared thread sync reply port", 564, v2, a1);
  }

  else if (v3)
  {
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: did not clear thread sync reply port (found 0x%08x)", 557, v1, a1, v3);
  }
}

uint64_t _dispatch_mach_reply_waiter_register(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  *(a2 + 8) = ~a1;
  *(a2 + 28) = -8;
  *(a2 + 24) = a3;
  if ((*(a2 + 30) & 1) == 0)
  {
    if (a4[8])
    {
      v10 = a4[8];
      os_retain(v10);
      *(a2 + 56) = v10;
    }

    *(a2 + 40) = a4[7];
    *(a2 + 48) = a4[4];
  }

  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: registering for sync reply, ctxt %p", 441, v4, a3, a4[4]);
  return _dispatch_mach_reply_list_insert(*(a1 + 120), a2);
}

void _dispatch_mach_reply_kevent_register(uint64_t *a1, unsigned int a2, void *a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v16 = off_DD470(&_dispatch_mach_type_reply, a2, 0);
  v32 = *(v16 + 29) & 1;
  v31 = 456;
  if (!v32)
  {
    _dispatch_abort(v31, 0);
  }

  v16[1] = ~v19;
  if (v17[8])
  {
    v33 = v17[8];
    os_retain(v33);
    v16[7] = v33;
  }

  *(v16 + 10) = v17[7];
  v16[6] = v17[4];
  v10 = 0;
  if ((*(v19 + 116) & 0x10) != 0 && v17[4])
  {
    v3 = v17[4];
    v30 = v19;
    v29 = v3;
    v28 = 0;
    v28 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(v3);
    if (!v28)
    {
      v28 = v30;
    }

    v10 = v28;
  }

  if ((*(v19 + 116) & 0x80) != 0)
  {
    *(v16 + 8) |= 0x200u;
  }

  if (!v10 || (v9 = 0, v10 == v19))
  {
    v27 = *(v19 + 88);
    v25 = *(v27 + 16);
    v26 = v25;
    v24 = v25;
    v36 = v25;
    v9 = (v25 & 0xFFFFFFFFFFFFFFFCLL) != 0;
  }

  if (v9)
  {
    v23 = *(v19 + 88);
    v21 = *(v23 + 16);
    v22 = v21;
    v20 = v21;
    v35 = v21;
    v11 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *(v19 + 84);
  }

  else
  {
    v8 = 0;
    if (*v10)
    {
      v8 = *v10;
    }

    if ((*(v8 + 16) & 0x10000) != 0)
    {
      v11 = -4;
      v37 = v10;
      v7 = 0;
      if (v10 >= &_dispatch_root_queues)
      {
        v7 = v37 < &unk_E0A80;
      }

      if (v7)
      {
        v14 = *(v10 + 84);
      }

      else
      {
        v14 = 0x2000000;
      }
    }

    else
    {
      v14 = _dispatch_queue_compute_priority_and_wlh(v10, &v11);
      if (!v14)
      {
        v11 = -4;
        v14 = *(v10 + 84);
      }
    }
  }

  v40 = v17[7];
  v39 = 0;
  v42 = (v40 & 0x20000000) == 0;
  v41 = 458;
  if ((v40 & 0x20000000) != 0)
  {
    _dispatch_abort(v41, 0);
  }

  v38 = v40;
  v43 = v40 & 0x3FFF00;
  v43 >>= 8;
  v4 = __clz(__rbit32(v43));
  if (v43)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  v38 |= v5 << 8;
  v15 = v38;
  v13 = v14 & 0x80000000;
  v34 = v14 & 0xF000;
  v12 = v34 >> 12;
  if ((v14 & 0xFFF) != 0)
  {
    v14 &= 0xFFFu;
    if (v14 < v15)
    {
      v14 = v15;
    }

    v14 |= v13;
  }

  else if (v12 && v15)
  {
    v14 = v15 | v13;
  }

  else if (!v12 || v15)
  {
    v14 = 0x2000000;
    v11 = -4;
  }

  else
  {
    v14 = (v12 << 8) & 0xF00 | 0xFF | v13;
  }

  v6 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: registering for reply, ctxt %p", 504, v6, v18, v17[4]);
  _dispatch_mach_reply_list_insert(*(v19 + 120), v16);
  if ((_dispatch_unote_register(v16, v11, v14) & 1) == 0)
  {
    _dispatch_mach_reply_unregister(v19, v16, 52);
  }
}

uint64_t _dispatch_mach_send_options()
{
  v0 = (_dispatch_thread_getspecific(4) & 0x3FFF00) >> 8;
  v1 = __clz(__rbit32(v0));
  if (v0)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = 0;
  if (v2)
  {
    v4 = v2 <= 2;
  }

  if (v4)
  {
    return 0x40000;
  }

  else
  {
    return 0;
  }
}

uint64_t mach_msg_priority_encode_inline(unsigned __int8 a1, unsigned __int8 a2, char a3)
{
  v4 = 0;
  if (a2 && a2 <= 6u)
  {
    v4 = (a2 << 16) | ((a3 - 1) << 8);
  }

  if (a1 && a1 <= 6u)
  {
    v4 |= a1 << 20;
  }

  return v4;
}

uint64_t _dispatch_mach_reply_list_insert(uint64_t a1, uint64_t a2)
{
  v8 = (a1 + 40);
  v7 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(v8, &v2, v7, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    _dispatch_unfair_lock_lock_slow(v8, 0x10000);
  }

  if (*(a2 + 72))
  {
    _dispatch_abort(311, *(a2 + 72) == 0);
  }

  v3 = *(a1 + 56);
  *(a2 + 64) = v3;
  if (v3)
  {
    *(*(a1 + 56) + 72) = a2 + 64;
  }

  *(a1 + 56) = a2;
  *(a2 + 72) = a1 + 56;
  result = _dispatch_thread_getspecific(3);
  v9 = atomic_exchange_explicit((a1 + 40), 0, memory_order_release);
  if (v9 != (result & 0xFFFFFFFC))
  {
    return _dispatch_unfair_lock_unlock_slow(a1 + 40, v9);
  }

  return result;
}

void *_dispatch_mach_msg_async_reply_wrap(uint64_t a1, uint64_t a2)
{
  _dispatch_retain(a2);
  v6 = _dispatch_thread_getspecific(22);
  if (v6)
  {
    _dispatch_thread_setspecific(22, *(v6 + 16));
    v5 = v6;
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  *v5 = &unk_DCD78;
  v5[6] = a1;
  v5[7] = a2;
  v5[1] = -1;
  v5[3] = -1;
  return v5;
}

uint64_t _dispatch_mach_send_push_and_trydrain(uint64_t *a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  v28 = a1[15];
  v27 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v22 = 0;
  v21 = 0;
  *(a2 + 16) = 0;
  _dispatch_thread_setspecific(122, v28 + 72);
  v20 = atomic_exchange_explicit((v28 + 72), a2, memory_order_release);
  if (v20)
  {
    *(v20 + 16) = a2;
  }

  else
  {
    _dispatch_retain_2(a1);
    v22 = 0xA000000000;
    v21 = 3;
    *(v28 + 80) = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  v19 = 1;
  if (!*(v28 + 88))
  {
    v19 = (a1[10] & 0x10000000) != 0;
  }

  if (v19)
  {
    v25 = *(v28 + 64);
    do
    {
      v36 = v25;
      if ((v25 & 0x700000000) < a3 << 32)
      {
        v36 = v25 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v9 = v25;
      v10 = v25;
      atomic_compare_exchange_strong_explicit((v28 + 64), &v10, v36 | v22, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
        v25 = v10;
      }
    }

    while (v10 != v9);
    if (((v25 ^ (v36 | v22)) & 0x8000000000) != 0)
    {
      v21 &= ~1u;
    }

    v18 = 0;
    if (*a1)
    {
      v18 = *a1;
    }

    (*(v18 + 64))(a1, a3, v21);
    v33 = 0;
  }

  else if (v22)
  {
    v26 = *(v28 + 64);
    do
    {
      v35 = v26;
      if ((v26 & 0x700000000) < a3 << 32)
      {
        v35 = v26 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v23 = v35 | v22;
      if ((v26 & 0x10FFFFFFFFLL) == 0)
      {
        v23 = (v23 | v27) & 0xFFFFFFC7FFFFFFFFLL;
      }

      v11 = v26;
      v12 = v26;
      atomic_compare_exchange_strong((v28 + 64), &v12, v23);
      if (v12 != v11)
      {
        v26 = v12;
      }
    }

    while (v12 != v11);
    if (((v26 ^ v23) & 0x8000000000) != 0)
    {
      v21 &= ~1u;
    }

LABEL_40:
    if ((v26 & 0xFFFFFFFC) != 0)
    {
      v37 = v26 | 3;
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      if (v26 & 0x700000000) < a3 << 32 && (_dispatch_set_qos_class_enabled)
      {
        _pthread_workqueue_override_start_direct_check_owner();
      }

      if (v21)
      {
        _dispatch_release_2(a1);
      }

      v33 = 0;
    }

    else if ((v26 & 0x1000000000) != 0)
    {
      v17 = 0;
      if (*a1)
      {
        v17 = *a1;
      }

      (*(v17 + 64))(a1, a3, v21);
      v33 = 0;
    }

    else
    {
      v16 = 0;
      if (v21)
      {
        v16 = a2 == *(v28 + 80);
      }

      if (!v16)
      {
        a4 &= ~8u;
      }

      if (v21)
      {
        _dispatch_release_2_no_dispose(a1);
      }

      v33 = _dispatch_mach_send_drain(a1, 0, a4, v4, v5, v6, v7, v8) & 1;
    }
  }

  else
  {
    v26 = *(v28 + 64);
    while (1)
    {
      v34 = v26;
      if ((v26 & 0x700000000) < a3 << 32)
      {
        v34 = v26 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v24 = v34;
      if (v34 == v26)
      {
        break;
      }

      if ((v26 & 0x10FFFFFFFFLL) == 0)
      {
        v24 = (v34 | v27) & 0xFFFFFFC7FFFFFFFFLL;
      }

      v13 = v26;
      v14 = v26;
      atomic_compare_exchange_strong_explicit((v28 + 64), &v14, v24, memory_order_acquire, memory_order_acquire);
      if (v14 != v13)
      {
        v26 = v14;
      }

      if (v14 == v13)
      {
        goto LABEL_40;
      }
    }

    v33 = 0;
  }

  return v33 & 1;
}

uint64_t _dispatch_get_thread_reply_port()
{
  v4 = _dispatch_thread_getspecific(8);
  if (v4)
  {
    special_reply_port = v4;
    v0 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: borrowed thread sync reply port", 535, v0, v4);
  }

  else
  {
    special_reply_port = thread_get_special_reply_port();
    _dispatch_thread_setspecific(8, special_reply_port);
    v3 = 0;
    if (special_reply_port)
    {
      v3 = special_reply_port != -1;
    }

    if (!v3)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate reply port, possible port leak";
      __break(1u);
      JUMPOUT(0x7B458);
    }

    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: allocated thread sync reply port", 544, v1, special_reply_port);
  }

  return special_reply_port;
}

uint64_t __copy_assignment_8_8_S_pa2_27361_0_tv64w64_tv128w64_tv192w32_tv224w8_tv232w1_tv233w1_tv234w1_tv235w1_tv236w1_tv237w1_tv238w1_tv239w1_tv240w8_tv248w8_tv256w32_tv288w32_tv320w32_tv384w64_tv448w64_tv512w128_tv640w32(uint64_t a1, uint64_t a2)
{
  result = __copy_assignment_8_8_pa2_27361_0_tv64w64_tv128w64_tv192w32_tv224w8_tv232w1_tv233w1_tv234w1_tv235w1_tv236w1_tv237w1_tv238w1_tv239w1_tv240w8_tv248w8_tv256w32_tv288w32_tv320w32_tv384w64_tv448w64_tv512w128(a1, a2);
  *(a1 + 80) = *(a2 + 80);
  return result;
}

uint64_t __copy_assignment_8_8_pa2_27361_0_tv64w64_tv128w64_tv192w32_tv224w8_tv232w1_tv233w1_tv234w1_tv235w1_tv236w1_tv237w1_tv238w1_tv239w1_tv240w8_tv248w8_tv256w32_tv288w32_tv320w32_tv384w64_tv448w64_tv512w128(uint64_t result, unint64_t *a2)
{
  v4 = 0;
  if (*a2)
  {
    v4 = *a2;
  }

  *result = v4;
  *(result + 8) = a2[1];
  v2 = atomic_load(a2 + 2);
  atomic_store(v2, (result + 16));
  *(result + 24) = *(a2 + 6);
  *(result + 28) = *(a2 + 28);
  *(result + 29) = *(result + 29) & 0xFE | *(a2 + 29) & 1;
  *(result + 29) = *(result + 29) & 0xFD | (2 * ((*(a2 + 29) & 2) != 0));
  *(result + 29) = *(result + 29) & 0xFB | (4 * ((*(a2 + 29) & 4) != 0));
  *(result + 29) = *(result + 29) & 0xF7 | (8 * ((*(a2 + 29) & 8) != 0));
  *(result + 29) = *(result + 29) & 0xEF | (16 * ((*(a2 + 29) & 0x10) != 0));
  *(result + 29) = *(result + 29) & 0xDF | (32 * ((*(a2 + 29) & 0x20) != 0));
  *(result + 29) = *(result + 29) & 0xBF | (((*(a2 + 29) & 0x40) != 0) << 6);
  *(result + 29) = *(result + 29) & 0x7F | (((*(a2 + 29) & 0x80) != 0) << 7);
  *(result + 30) = *(a2 + 30);
  *(result + 31) = *(a2 + 31);
  *(result + 32) = *(a2 + 8);
  *(result + 36) = *(a2 + 9);
  *(result + 40) = *(a2 + 10);
  *(result + 48) = a2[6];
  *(result + 56) = a2[7];
  v3 = a2[9];
  *(result + 64) = a2[8];
  *(result + 72) = v3;
  return result;
}

void _dispatch_mach_msg_reply_received(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a2;
  v7 = _dispatch_mach_reply_list_tryremove(*(a1 + 120), a2);
  v6 = *(v8 + 24);
  if (v7)
  {
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: unregistered for sync reply, ctxt %p", 915, v3, v6, *(v8 + 48));
  }

  if (*(v8 + 30))
  {
    if (v9 != v6 && (v7 || v9 && v9 != -1))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Reply received on unexpected port";
      qword_E42C0 = v9;
      __break(1u);
      JUMPOUT(0x7B7E0);
    }

    if (v7)
    {
      _dispatch_set_thread_reply_port(v6);
    }

    else
    {
      _dispatch_destruct_reply_port(v6, 2u);
    }
  }

  else if (v9 && v9 != -1 && v7)
  {
    v5 = 0;
    v4 = dispatch_mach_msg_create(0, 0x18uLL, 0, &v5);
    *(v5 + 12) = v9;
    *(v4 + 8) = *(v8 + 56);
    *(v8 + 56) = 0;
    *(v4 + 7) = *(v8 + 40);
    *(v4 + 4) = *(v8 + 48);
    _dispatch_mach_msg_set_reason(v4, 0, 9);
    _dispatch_mach_handle_or_push_received_msg(v11, v4, 0);
  }
}

BOOL _dispatch_mach_reply_list_tryremove(uint64_t a1, uint64_t a2)
{
  v8 = (a1 + 40);
  v7 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(v8, &v2, v7, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    _dispatch_unfair_lock_lock_slow(v8, 0x10000);
  }

  v4 = *(a2 + 72) != 0;
  if (*(a2 + 72))
  {
    _dispatch_mach_reply_list_remove_locked(a2);
  }

  v9 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v10 = atomic_exchange_explicit((a1 + 40), 0, memory_order_release);
  if (v10 != v9)
  {
    _dispatch_unfair_lock_unlock_slow(a1 + 40, v10);
  }

  return v4;
}

void _dispatch_set_thread_reply_port(unsigned int a1)
{
  v3 = _dispatch_thread_getspecific(8);
  if (v3)
  {
    _dispatch_destruct_reply_port(a1, 0);
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: deallocated sync reply port (found 0x%08x)", 576, v1, a1, v3);
  }

  else
  {
    _dispatch_thread_setspecific(8, a1);
    v2 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: restored thread sync reply port", 580, v2, a1);
  }
}

void _dispatch_mach_msg_disconnected(uint64_t a1, int a2, int a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v6 = dispatch_mach_msg_create(0, 0x18uLL, 0, &v7);
  if (v9)
  {
    *(v7 + 12) = v9;
  }

  if (v8)
  {
    *(v7 + 8) = v8;
  }

  _dispatch_mach_msg_set_reason(v6, 0, 7);
  v5 = _dispatch_thread_getspecific(0);
  if (v9)
  {
    v4 = v9;
  }

  else
  {
    v4 = v8;
  }

  v3 = "receive";
  if (!v9)
  {
    v3 = "send";
  }

  _dispatch_log("%u\t%p\tmachport[0x%08x]: %s right disconnected", 964, v5, v4, v3);
  _dispatch_mach_handle_or_push_received_msg(v10, v6, 0);
}

void _dispatch_mach_handle_wlh_change(uint64_t result)
{
  v1 = atomic_fetch_or_explicit((result + 80), 0x8000000u, memory_order_relaxed);
  if ((v1 & 0x400000) == 0)
  {
    if ((*(result + 116) & 0x10) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after xpc connection was activated";
      __break(1u);
      JUMPOUT(0x7BD74);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after mach channel was connected";
    __break(1u);
    JUMPOUT(0x7BDA0);
  }

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

BOOL _dispatch_mach_cancel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (*(a1 + 118) & 2) != 0;
  if (*(*(a1 + 120) + 88))
  {
    v15 = 0;
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_mach_cancel");
  v14 = 1;
  if ((*(a1 + 80) & 0x40000000) == 0)
  {
    v14 = 3;
  }

  v13 = *(a1 + 128);
  if (v13 && (_dispatch_unote_unregister(v13, v14) & 1) == 0)
  {
    v15 = 0;
  }

  v12 = *(a1 + 88);
  v11 = *(v12 + 24);
  if (v11)
  {
    if (_dispatch_unote_unregister(v12, v14))
    {
      _dispatch_mach_msg_disconnected(a1, v11, 0);
      *(v12 + 24) = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v15)
  {
    for (i = *(a1 + 80); ; i = v9)
    {
      if ((i & 0x3FFFFFFF | 0x80000000) == i)
      {
        v18 = i;
        goto LABEL_19;
      }

      v8 = i;
      v9 = i;
      atomic_compare_exchange_strong_explicit((a1 + 80), &v9, i & 0x3FFFFFFF | 0x80000000, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        break;
      }
    }

    v18 = i;
LABEL_19:
    if ((v18 & 0xA0000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt channel state";
      qword_E42C0 = v18;
      __break(1u);
      JUMPOUT(0x7C0CCLL);
    }

    _dispatch_release_no_dispose(a1);
  }

  else
  {
    atomic_fetch_or_explicit((a1 + 80), 0x40000000u, memory_order_relaxed);
  }

  return v15;
}

uint64_t _dispatch_mach_cancel_invoke(uint64_t a1, int a2)
{
  v5 = *(a1 + 88);
  v4 = 0;
  if ((a2 & 0x1000000) != 0)
  {
    v4 = _dispatch_autorelease_pool_push();
  }

  if (((*(a1 + 116) >> 2) & 1) == 0)
  {
    _dispatch_mach_connect_invoke(a1);
  }

  v3 = 0;
  if (*(v5 + 40))
  {
    v3 = *(v5 + 40);
  }

  result = _dispatch_client_callout4(*(v5 + 48), 8, 0, 0, v3);
  if (v4)
  {
    result = _dispatch_autorelease_pool_pop(v4);
  }

  *(a1 + 116) = *(a1 + 116) & 0xFFF7 | 8;
  return result;
}

uint64_t _dispatch_unote_create_with_handle(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t _dispatch_unote_create(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a3;
  if ((a3 & ~*(a1 + 20)) != 0)
  {
    return 0;
  }

  if (*(a1 + 20) && (*(a1 + 10) & 4) == 0 && !a3)
  {
    return 0;
  }

  if ((*(a1 + 12) & 0x100) != 0)
  {
    v5 = _dispatch_calloc_typed(1, *(a1 + 24), 3474241382);
  }

  else
  {
    v5 = _dispatch_calloc_typed(1, *(a1 + 24) + 24, 0xA0040A8488062) + 24;
  }

  v4 = 0;
  if (a1)
  {
    v4 = a1;
  }

  *v5 = v4;
  *(v5 + 29) = *(v5 + 29) & 0xDF | (32 * (*(a1 + 10) & 1));
  *(v5 + 24) = a2;
  *(v5 + 28) = *(a1 + 8);
  *(v5 + 32) = v6;
  if ((*(a1 + 12) & 0x100) != 0)
  {
    *(v5 + 29) = *(v5 + 29) & 0xFE | 1;
  }

  return v5;
}

uint64_t _dispatch_unote_create_without_handle(uint64_t a1, uint64_t a2, uint64_t a3)
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

void _dispatch_unote_dispose(uint64_t a1, char a2)
{
  if ((*(a1 + 29) & 0x40) != 0)
  {
    _Block_release(*(a1 + 48));
  }

  if ((*(a1 + 29) & 2) != 0)
  {
    v2 = 1;
    if (*(a1 + 112) == -1)
    {
      v2 = *(a1 + 116) != -1;
    }

    if (v2)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Disposing of timer still in its heap";
      __break(1u);
      JUMPOUT(0x7C620);
    }

    if (*(a1 + 104))
    {
      free(*(a1 + 104));
      *(a1 + 104) = 0;
    }
  }

  else
  {
    if ((*(a1 + 29) & 1) == 0)
    {
      free((a1 - 24));
      return;
    }

    if (a2 & 1) != 0 && (*(a1 + 29))
    {
      _dispatch_unote_dispose_defer(a1);
      return;
    }
  }

  free(a1);
}

uint64_t _dispatch_unote_register(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = 1;
  if ((*(a1 + 29) & 2) == 0)
  {
    v5 = *(a1 + 16) == 0;
  }

  if (!v5)
  {
    _dispatch_abort(134, v5);
  }

  v6 = a3 & 0x4600FFFF;
  v4 = 1;
  if (a2 != -4)
  {
    v4 = v6 != 0;
  }

  if (!v4)
  {
    _dispatch_abort(143, v4);
  }

  if (v6 == 67125248 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  *(a1 + 36) = a3;
  if ((*(a1 + 28) + 23) > 2)
  {
    if ((*(a1 + 29) & 2) != 0)
    {
      _dispatch_timer_unote_register(a1, a2, a3);
      v10 = 1;
    }

    else if (*(a1 + 29))
    {
      v10 = _dispatch_unote_register_direct(a1, a2);
    }

    else
    {
      v10 = _dispatch_unote_register_muxed(a1) & 1;
    }
  }

  else
  {
    *(a1 + 16) = -3;
    v10 = 1;
  }

  return v10 & 1;
}

void _dispatch_timer_unote_register(uint64_t result, uint64_t a2, __int16 a3)
{
  v6 = (a3 & 0xF00) >> 8;
  v3 = 0;
  if (v6)
  {
    v3 = v6 <= 2;
  }

  if (v3)
  {
    if (*(result + 30))
    {
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    else
    {
      *(result + 30) |= 2u;
      v8 = _dispatch_timer_flags_to_clock(*(result + 30));
      v7 = *(result + 30) & 3;
      if (v7 >= 3)
      {
        _dispatch_abort(788, v7 < 3);
      }

      *(result + 24) = 3 * v8 + v7;
    }
  }

  if ((*(result + 16) & 0xFFFFFFFFFFFFFFFCLL) != a2)
  {
    if ((*(result + 16) & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      _dispatch_abort(860, (*(result + 16) & 0xFFFFFFFFFFFFFFFCLL) == 0);
    }

    *(result + 16) = -4;
  }

  if (*(result + 104))
  {
    _dispatch_timer_unote_configure(result);
  }
}

void _dispatch_unote_resume(uint64_t a1)
{
  v2 = 1;
  if ((*(a1 + 29) & 2) == 0)
  {
    v3 = *(a1 + 16);
    v1 = 0;
    if (v3)
    {
      v1 = 0;
      if ((v3 & 1) == 0)
      {
        v1 = (v3 & 2) == 0;
      }
    }

    v2 = v1;
  }

  if ((v2 & 1) == 0)
  {
    _dispatch_abort(173, v2 & 1);
  }

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

void _dispatch_timer_unote_resume(uint64_t a1)
{
  if ((*(55 - *(a1 + 8)) & 0xFF80000000000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v3 = 0;
    if (*(a1 + 24) != -1)
    {
      v3 = *(a1 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
    }

    v10 = v3;
  }

  v6 = (*(a1 + 16) & 1) != 0;
  v9 = _dispatch_timer_flags_to_clock(*(a1 + 30));
  v8 = *(a1 + 30) & 3;
  if (v8 >= 3)
  {
    _dispatch_abort(788, v8 < 3);
  }

  v5 = 3 * v9 + v8;
  v4 = _dispatch_timer_unote_heap(a1);
  v2 = 0;
  if (v6)
  {
    v1 = 1;
    if (v10)
    {
      v1 = *(a1 + 24) != v5;
    }

    v2 = v1;
  }

  if (v2)
  {
    _dispatch_timer_unote_disarm(a1, v4);
  }

  if (v10)
  {
    if (!v6)
    {
      _dispatch_retain_2(~*(a1 + 8));
    }

    _dispatch_timer_unote_arm(a1, v4, v5);
  }

  else if (v6)
  {
    _dispatch_release_2_tailcall(~*(a1 + 8));
  }
}

uint64_t _dispatch_unote_unregister(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    if ((*(a1 + 28) + 23) > 2)
    {
      if ((*(a1 + 29) & 2) != 0)
      {
        _dispatch_timer_unote_unregister(a1);
        v3 = 1;
      }

      else if (*(a1 + 29))
      {
        v3 = _dispatch_unote_unregister_direct(a1, a2) & 1;
      }

      else
      {
        if ((a2 & 1) == 0)
        {
          _dispatch_abort(208, a2 & 1);
        }

        v3 = _dispatch_unote_unregister_muxed(a1) & 1;
      }
    }

    else
    {
      *(a1 + 16) = 0;
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

void _dispatch_timer_unote_unregister(uint64_t a1)
{
  v1 = _dispatch_timer_unote_heap(a1);
  if (*(a1 + 16))
  {
    _dispatch_timer_unote_disarm(a1, v1);
    _dispatch_release_2_no_dispose(~*(a1 + 8));
  }

  v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3)
  {
    if (v3 != -4)
    {
      v4 = atomic_fetch_add_explicit((v3 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
      if (v4 < 0)
      {
        if (v4 <= -2)
        {
          qword_E4290 = "API MISUSE: Over-release of an object";
          __break(1u);
          JUMPOUT(0x7D4A8);
        }

        *(v3 + 56) = 0xDEAD000000000000;
        _dispatch_object_dealloc(v3);
      }
    }
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
}

uint64_t _dispatch_source_data_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 || a3)
  {
    return 0;
  }

  v5 = _dispatch_calloc_typed(1, *(a1 + 24), 3780850585);
  v4 = 0;
  if (a1)
  {
    v4 = a1;
  }

  *v5 = v4;
  *(v5 + 28) = *(a1 + 8);
  *(v5 + 29) = *(v5 + 29) & 0xFE | 1;
  return v5;
}

uint64_t _dispatch_source_signal_create(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 0x20)
  {
    return _dispatch_unote_create_with_handle(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void _dispatch_timer_unote_configure(uint64_t a1)
{
  v2 = __swp(0, (a1 + 104));
  v1 = v2[6];
  if (v1 != _dispatch_timer_flags_to_clock(*(a1 + 30)))
  {
    *(a1 + 30) &= 0xF3u;
    *(a1 + 30) |= _dispatch_timer_flags_from_clock(v2[6]);
  }

  *(a1 + 80) = *v2;
  *(a1 + 96) = *(v2 + 2);
  free(v2);
  *(a1 + 72) = 0;
  if (*(a1 + 16))
  {
    _dispatch_timer_unote_resume(a1);
  }
}

uint64_t _dispatch_source_timer_create(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = a1;
  v6 = a3;
  if (a3)
  {
    v6 = a3 & 0xFFFFFFFD;
  }

  if ((v6 & ~*(a1 + 20)) != 0)
  {
    return 0;
  }

  if ((*(a1 + 11) & 0x10) != 0)
  {
    if (!a2)
    {
      return 0;
    }
  }

  else if (*(a1 + 8) == -20)
  {
    if (a2)
    {
      return 0;
    }
  }

  else if (a2)
  {
    switch(a2)
    {
      case 1:
        v7 = &_dispatch_source_type_timer_with_clock;
        break;
      case 2:
        v7 = &_dispatch_source_type_timer_with_clock;
        LOBYTE(v6) = v6 | 4;
        break;
      case 3:
        v7 = &_dispatch_source_type_timer_with_clock;
        LOBYTE(v6) = v6 | 8;
        break;
      default:
        return 0;
    }
  }

  v5 = _dispatch_calloc_typed(1, *(v7 + 6), 2720791614);
  v4 = 0;
  if (v7)
  {
    v4 = v7;
  }

  *v5 = v4;
  *(v5 + 28) = *(v7 + 8);
  *(v5 + 29) = *(v5 + 29) & 0xFD | 2;
  *(v5 + 30) |= v6 | *(v7 + 11);
  v10 = _dispatch_timer_flags_to_clock(*(v5 + 30));
  v9 = *(v5 + 30) & 3;
  if (v9 >= 3)
  {
    _dispatch_abort(788, v9 < 3);
  }

  *(v5 + 24) = 3 * v10 + v9;
  *(v5 + 80) = -1;
  *(v5 + 88) = -1;
  *(v5 + 96) = -1;
  *(v5 + 112) = -1;
  *(v5 + 116) = -1;
  return v5;
}

void _dispatch_event_loop_drain_timers(uint64_t result, unsigned int a2)
{
  v6 = result;
  v5 = a2;
  memset(v4, 0, sizeof(v4));
  do
  {
    for (i = 0; i < v5; ++i)
    {
      _dispatch_timers_run(v6, i, v4);
    }

    *(v6 + 6) = 0;
    for (j = 0; j < v5; ++j)
    {
      if ((*(v6 + 32 * j + 7) & 2) != 0)
      {
        _dispatch_timers_program(v6, j, v4);
      }
    }
  }

  while (*(v6 + 6));
}

void _dispatch_timers_run(uint64_t a1, unsigned int a2, uint64_t a3)
{
  while (1)
  {
    v9 = *(a1 + 32 * a2 + 8);
    if (!v9)
    {
      break;
    }

    v6 = *(v9 + 24);
    if (v6 != a2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: tidx";
      qword_E42C0 = v6;
      __break(1u);
      JUMPOUT(0x7DD74);
    }

    if (!*(v9 + 80))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: missing target";
      qword_E42C0 = 0;
      __break(1u);
      JUMPOUT(0x7DDC8);
    }

    if (!*(a3 + 8 * (a2 / 3)))
    {
      mach_get_times();
      *(a3 + 16) = 0;
    }

    v7 = *(a3 + 8 * (a2 / 3));
    if (*(v9 + 80) > v7)
    {
      break;
    }

    if ((*(v9 + 30) & 0x40) != 0)
    {
      _dispatch_timer_unote_disarm(v9, a1);
      v14 = *(v9 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      if (v14)
      {
        if (v14 != -4)
        {
          v15 = atomic_fetch_add_explicit((v14 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
          if (v15 < 0)
          {
            if (v15 <= -2)
            {
              qword_E4290 = "API MISUSE: Over-release of an object";
              __break(1u);
              JUMPOUT(0x7DFD8);
            }

            *(v14 + 56) = 0xDEAD000000000000;
            _dispatch_object_dealloc(v14);
          }
        }
      }

      *(v9 + 16) = 0;
      *(v9 + 72) = 2;
      v5 = 0;
      if (*v9)
      {
        v5 = *v9;
      }

      (*(v5 + 48))(v9, 16, 0);
    }

    else if (*(v9 + 104))
    {
      _dispatch_timer_unote_configure(v9);
    }

    else
    {
      if (*(v9 + 72))
      {
        _dispatch_timer_unote_disarm(v9, a1);
        atomic_fetch_or_explicit((v9 + 72), 1uLL, memory_order_relaxed);
      }

      else
      {
        v17 = (v7 - *(v9 + 80)) / *(v9 + 96) + 1;
        if (v17 < 0)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (*(v9 + 96) > 0x7FFFFFFFFFFFFFFEuLL)
        {
          *(v9 + 80) = -1;
          *(v9 + 88) = -1;
        }

        else
        {
          v16 = v17 * *(v9 + 96);
          *(v9 + 80) += v16;
          *(v9 + 88) += v16;
        }

        v8 = 2 * v17;
        if ((*(55 - *(v9 + 8)) & 0xFF80000000000000) != 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          v13 = 0;
        }

        else
        {
          v4 = 0;
          if (*(v9 + 24) != -1)
          {
            v4 = *(v9 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
          }

          v13 = v4;
        }

        if (v13)
        {
          _dispatch_retain_2(~*(v9 + 8));
          _dispatch_timer_unote_arm(v9, a1, a2);
          *(v9 + 72) = v8;
        }

        else
        {
          _dispatch_timer_unote_disarm(v9, a1);
          atomic_store(v8 | 1, (v9 + 72));
        }
      }

      v3 = 0;
      if (*v9)
      {
        v3 = *v9;
      }

      (*(v3 + 48))(v9, 16, 0);
    }
  }
}

void _dispatch_timers_program(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = a2 % 3;
  v15 = a2 % 3;
  if (*(result + 32 * a2 + 8))
  {
    v13 = *(*(result + 32 * a2 + 8) + 80);
    v12 = *(*(result + 32 * a2 + 16) + 88);
    v5 = 0;
    if (v13 <= v12)
    {
      v5 = v13 < 0x7FFFFFFFFFFFFFFFLL;
    }

    if (!v5)
    {
      _dispatch_abort(1148, v5);
    }

    v19 = a2 / 3;
    if (!*(a3 + 8 * (a2 / 3)))
    {
      mach_get_times();
      *(a3 + 16) = 0;
    }

    v11 = *(a3 + 8 * v19);
    if (v13 > v11)
    {
      if (v15 < 3 && *(result + 32 * a2) > 2u)
      {
        v10 = _dispatch_kevent_coalescing_window[v15];
        if (v13 + v10 < v12)
        {
          v13 = _dispatch_timer_heap_max_target_before(result + 32 * a2, v12 - v10);
        }
      }

      if (v13 - v11 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = v13 - v11;
      }

      *&v18 = v4;
      if (v12 - v13 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v3 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v3 = v12 - v13;
      }

      *(&v18 + 1) = v3;
    }

    else
    {
      v18 = 0uLL;
    }
  }

  else
  {
    *(&v18 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    *&v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    if (v18 < 0x7FFFFFFFFFFFFFFFLL)
    {
      _dispatch_trace_next_timer[v6] = *(result + 32 * a2 + 8);
      _dispatch_event_loop_timer_arm(result, a2, v18, *(&v18 + 1), a3);
      *(result + 32 * a2 + 7) = *(result + 32 * a2 + 7) & 0xFE | 1;
      *(result + 32 * a2 + 7) &= ~2u;
      return;
    }
  }

  else
  {
    *(result + 6) |= (1 << (a2 % 3)) | 0x80;
  }

  _dispatch_trace_next_timer[v6] = 0;
  if (*(result + 32 * a2 + 7))
  {
    _dispatch_event_loop_timer_delete(result, a2);
  }

  *(result + 32 * a2 + 7) &= ~1u;
  *(result + 32 * a2 + 7) &= ~2u;
}

void *_dispatch_timer_unote_heap(uint64_t a1)
{
  v2 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  if (v2 == -4)
  {
    return &_dispatch_timers_heap;
  }

  else
  {
    return *(v2 + 48);
  }
}

void _dispatch_timer_unote_disarm(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if ((*(a1 + 16) & 1) == 0)
  {
    _dispatch_abort(800, (*(a1 + 16) & 1) != 0);
  }

  _dispatch_timer_heap_remove(a2 + 32 * v3, a1);
  *(a2 + 6) |= (1 << (v3 % 3)) | 0x80;
  *(a1 + 16) &= ~1uLL;
  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { ident = 0x%x }", 804, v2, ~*(a1 + 8), "disarmed", a1, *(a1 + 24));
}

uint64_t _dispatch_timer_unote_arm(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 16))
  {
    v8 = *(a1 + 24);
    if (v8 != a3)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: tidx";
      qword_E42C0 = v8;
      __break(1u);
      JUMPOUT(0x7F358);
    }

    v12 = a2 + 32 * a3;
    if (*(a1 + 112) == -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: target idx";
      qword_E42C0 = 0xFFFFFFFFLL;
      __break(1u);
      JUMPOUT(0x7F3C4);
    }

    if (*(a1 + 116) == -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: deadline idx";
      qword_E42C0 = 0xFFFFFFFFLL;
      __break(1u);
      JUMPOUT(0x7F414);
    }

    _dispatch_timer_heap_resift(v12, a1, *(a1 + 112));
    _dispatch_timer_heap_resift(v12, a1, *(a1 + 116));
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { ident = 0x%x }", 814, v3, ~*(a1 + 8), "updated", a1, *(a1 + 24));
  }

  else
  {
    *(a1 + 24) = a3;
    v16 = a2 + 32 * a3;
    v4 = *v16;
    *v16 += 2;
    v15 = v4;
    v14 = *(a1 + 112);
    if (v14 != -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: target idx";
      qword_E42C0 = v14;
      __break(1u);
      JUMPOUT(0x7F518);
    }

    v13 = *(a1 + 116);
    if (v13 != -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: deadline idx";
      qword_E42C0 = v13;
      __break(1u);
      JUMPOUT(0x7F568);
    }

    if ((*(a1 + 36) & 0xF00u) >> 8 > (*(a1 + 36) & 0xF000u) >> 12)
    {
      v7 = (*(a1 + 36) & 0xF00u) >> 8;
    }

    else
    {
      v7 = (*(a1 + 36) & 0xF000u) >> 12;
    }

    if (*(v16 + 5) < v7)
    {
      *(v16 + 5) = v7;
      *(v16 + 7) |= 2u;
    }

    if (v4)
    {
      if (*(v16 + 4))
      {
        v17 = (8 << (*(v16 + 4) - 1)) - (*(v16 + 4) - 1) + 2;
      }

      else
      {
        v17 = 2;
      }

      if (v4 + 2 > v17)
      {
        _dispatch_timer_heap_grow(v16);
      }

      _dispatch_timer_heap_resift(v16, a1, v15);
      _dispatch_timer_heap_resift(v16, a1, v15 + 1);
    }

    else
    {
      *(v16 + 7) |= 2u;
      *(a1 + 112) = 0;
      *(a1 + 116) = 1;
      *(v16 + 16) = a1;
      *(v16 + 8) = a1;
    }

    *(a1 + 16) |= 1uLL;
    v5 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { ident = 0x%x }", 819, v5, ~*(a1 + 8), "armed", a1, *(a1 + 24));
  }

  result = 2863311531;
  *(a2 + 6) |= (1 << (a3 % 3)) | 0x80;
  return result;
}

void _dispatch_timer_heap_remove(uint64_t result, uint64_t a2)
{
  v2 = *result - 2;
  *result = v2;
  v7 = v2;
  if (*(a2 + 112) == -1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: target idx";
    qword_E42C0 = 0xFFFFFFFFLL;
    __break(1u);
    JUMPOUT(0x7F8F8);
  }

  if (*(a2 + 116) == -1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: deadline idx";
    qword_E42C0 = 0xFFFFFFFFLL;
    __break(1u);
    JUMPOUT(0x7F950);
  }

  if (v2)
  {
    for (i = 0; i <= 1; ++i)
    {
      v13 = v7 + i;
      v11 = *(result + 4);
      if (v7 + i > 1)
      {
        v14 = v13 - 2;
        v12 = 29 - __clz(v14 | 7);
        if (v12 + 1 == v11)
        {
          v10 = *(result + 24);
        }

        else
        {
          v10 = *(*(result + 24) + 8 * (~v12 + (8 << (v11 - 2))));
        }

        if (v12)
        {
          v14 -= 8 << (v12 - 1);
        }

        v15 = (v10 + 8 * v14);
      }

      else
      {
        v15 = (result + 8 * v13 + 8);
      }

      v3 = *v15;
      *v15 = 0;
      if (v3 != a2)
      {
        _dispatch_timer_heap_resift(result, v3, *(a2 + 4 * i + 112));
      }
    }

    if (*(result + 4) == 1)
    {
      v16 = 2;
    }

    else
    {
      v16 = (8 << (*(result + 4) - 2)) - (*(result + 4) - 2) + 2;
    }

    if (v7 <= v16)
    {
      _dispatch_timer_heap_shrink(result);
    }
  }

  else
  {
    v6 = *(result + 8);
    if (v6 != a2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: target slot";
      qword_E42C0 = v6;
      __break(1u);
      JUMPOUT(0x7F9B8);
    }

    v5 = *(result + 16);
    if (v5 != a2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: deadline slot";
      qword_E42C0 = v5;
      __break(1u);
      JUMPOUT(0x7FA14);
    }

    *(result + 7) |= 2u;
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  *(a2 + 112) = -1;
  *(a2 + 116) = -1;
}

uint64_t _dispatch_timer_heap_resift(uint64_t result, uint64_t a2, unsigned int a3)
{
  v15 = a3;
  v10 = *result;
  v8 = 0;
  v33 = *(result + 4);
  if (a3 >= 2)
  {
    v35 = a3 - 2;
    v3 = __clz((a3 - 2) | 7);
    v34 = 29 - v3;
    if (30 - v3 == v33)
    {
      v32 = *(result + 24);
    }

    else
    {
      v32 = *(*(result + 24) + 8 * ((8 << (v33 - 2)) - v34 - 1));
    }

    if (v34)
    {
      v35 -= 8 << (28 - v3);
    }

    v36 = v32 + 8 * v35;
  }

  else
  {
    v36 = result + 8 + 8 * a3;
  }

  v9 = v36;
  while (v15 >= 2)
  {
    v29 = ((v15 - 2) / 2) & 0xFFFFFFFE | v15 & 1;
    v27 = *(result + 4);
    if (v29 >= 2)
    {
      v30 = v29 - 2;
      v4 = __clz(v30 | 7);
      v28 = 29 - v4;
      if (30 - v4 == v27)
      {
        v26 = *(result + 24);
      }

      else
      {
        v26 = *(*(result + 24) + 8 * ((8 << (v27 - 2)) - v28 - 1));
      }

      if (v28)
      {
        v30 -= 8 << (28 - v4);
      }

      v31 = (v26 + 8 * v30);
    }

    else
    {
      v31 = (result + 8 + 8 * v29);
    }

    v14 = *v31;
    if (*(*v31 + 80 + 8 * (a3 & 1)) <= *(a2 + 80 + 8 * (a3 & 1)))
    {
      break;
    }

    *v9 = v14;
    *(v14 + 112 + 4 * (v15 & 1)) = v15;
    v9 = v31;
    v15 = ((v15 - 2) / 2) & 0xFFFFFFFE | v15 & 1;
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    while (1)
    {
      v11 = 2 * v15 + 2 - (v15 & 1);
      if (v11 >= v10)
      {
        break;
      }

      v7 = v11 + 2;
      v22 = *(result + 4);
      if (v11 >= 2)
      {
        v24 = 2 * v15 - (v15 & 1);
        v5 = __clz(v24 | 7);
        v23 = 29 - v5;
        if (30 - v5 == v22)
        {
          v21 = *(result + 24);
        }

        else
        {
          v21 = *(*(result + 24) + 8 * ((8 << (v22 - 2)) - v23 - 1));
        }

        if (v23)
        {
          v24 -= 8 << (28 - v5);
        }

        v25 = (v21 + 8 * v24);
      }

      else
      {
        v25 = (result + 8 + 8 * v11);
      }

      v13 = v25;
      v12 = *v25;
      if (v7 < v10)
      {
        v17 = *(result + 4);
        if (v7 >= 2)
        {
          v19 = 2 * v15 + 2 - (v15 & 1);
          v6 = __clz(v11 | 7);
          v18 = 29 - v6;
          if (30 - v6 == v17)
          {
            v16 = *(result + 24);
          }

          else
          {
            v16 = *(*(result + 24) + 8 * ((8 << (v17 - 2)) - v18 - 1));
          }

          if (v18)
          {
            v19 = v11 - (8 << (28 - v6));
          }

          v20 = (v16 + 8 * v19);
        }

        else
        {
          v20 = (result + 8 + 8 * v7);
        }

        if (*(v12 + 80 + 8 * (a3 & 1)) > *(*v20 + 80 + 8 * (a3 & 1)))
        {
          v11 += 2;
          v12 = *v20;
          v13 = v20;
        }
      }

      if (*(a2 + 80 + 8 * (a3 & 1)) <= *(v12 + 80 + 8 * (a3 & 1)))
      {
        break;
      }

      if (v15 < 2)
      {
        *(result + 7) = *(result + 7) & 0xFD | 2;
      }

      *v9 = v12;
      *(v12 + 112 + 4 * (v15 & 1)) = v15;
      v9 = v13;
      v15 = v11;
    }
  }

  if (v15 < 2)
  {
    *(result + 7) = *(result + 7) & 0xFD | 2;
  }

  *v9 = a2;
  *(a2 + 112 + 4 * (v15 & 1)) = v15;
  return result;
}

void _dispatch_timer_heap_shrink(uint64_t a1)
{
  v1 = *(a1 + 4);
  *(a1 + 4) = v1 - 1;
  v4 = (v1 - 1);
  v3 = *(a1 + 24);
  v2 = 0;
  if (v1 != 1)
  {
    v2 = v3[(8 << (v1 - 2)) - v4];
  }

  if (v4 > 1)
  {
    __memcpy_chk();
  }

  *(a1 + 24) = v2;
  free(v3);
}

uint64_t _dispatch_timer_heap_grow(uint64_t a1)
{
  v6 = 8;
  v1 = *(a1 + 4);
  *(a1 + 4) = v1 + 1;
  v5 = v1;
  v3 = *(a1 + 24);
  if (v1)
  {
    v6 = 8 << (v1 - 1);
  }

  result = _dispatch_calloc_typed(v6, 8, 0x80040B8603338);
  v4 = result;
  if (v5 > 1)
  {
    result = __memcpy_chk();
  }

  if (v5)
  {
    *(v4 + 8 * (v6 - v5)) = v3;
  }

  *(a1 + 24) = v4;
  return result;
}

unint64_t _dispatch_timer_heap_max_target_before(uint64_t a1, unint64_t a2)
{
  v9 = 2;
  v8 = *a1;
  v6 = *(*(a1 + 8) + 80);
  while (v9 < v8)
  {
    v11 = *(a1 + 4);
    if (v9 >= 2)
    {
      v13 = v9 - 2;
      v2 = __clz((v9 - 2) | 7);
      v12 = 29 - v2;
      if (30 - v2 == v11)
      {
        v10 = *(a1 + 24);
      }

      else
      {
        v10 = *(*(a1 + 24) + 8 * ((8 << (v11 - 2)) - v12 - 1));
      }

      if (v12)
      {
        v13 -= 8 << (28 - v2);
      }

      v14 = v10 + 8 * v13;
    }

    else
    {
      v14 = a1 + 8 + 8 * v9;
    }

    v7 = *(*v14 + 80);
    if (v7 <= a2)
    {
      if (v7 > v6)
      {
        v6 = *(*v14 + 80);
      }

      if (2 * v9 + 2 - (v9 & 1) >= v8)
      {
        v18 = v9 - (v9 & 1);
        if (v18 + 2 == v8)
        {
          v18 = ((v18 - 2) / 2) & 0xFFFFFFFE | v18 & 1;
        }

        v19 = (v18 + 3) >> __clz(__rbit32(~(v18 + 3)));
        if (v19)
        {
          v4 = 2 * v19 + (v9 & 1);
        }

        else
        {
          v4 = -1;
        }

        v17 = v4;
      }

      else
      {
        v17 = 2 * v9 + 2 - (v9 & 1);
      }

      v9 = v17;
    }

    else
    {
      v15 = v9 - (v9 & 1);
      if (v15 + 2 == v8)
      {
        v15 = ((v15 - 2) / 2) & 0xFFFFFFFE | v15 & 1;
      }

      v16 = (v15 + 3) >> __clz(__rbit32(~(v15 + 3)));
      if (v16)
      {
        v5 = 2 * v16 + (v9 & 1);
      }

      else
      {
        v5 = -1;
      }

      v9 = v5;
    }
  }

  return v6;
}

uint64_t _dispatch_sync_ipc_handoff_begin(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v5[0] = a2;
  v5[1] = 655343;
  v5[2] = a1;
  v5[3] = 2147483904;
  v6 = 0uLL;
  v7 = a3;
  v8 = -1;
  v9 = a1;
  result = _dispatch_kq_immediate_update(a1, v5);
  v4 = 0;
  if (result)
  {
    v4 = result != 2;
  }

  if (v4)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
    qword_E42C0 = result;
    __break(1u);
    JUMPOUT(0x80C1CLL);
  }

  return result;
}

uint64_t _dispatch_kq_immediate_update(uint64_t a1, uint64_t a2)
{
  v6 = _dispatch_thread_getspecific(29);
  if (v6)
  {
    _dispatch_abort(453, (v6 & 1) == 0);
  }

  if (v6 && *(v6 + 24) == a1)
  {
    v8 = *(v6 + 40);
      ;
    }

    if (i < *(v6 + 48))
    {
      v2 = *(v6 + 48);
      *(v6 + 48) = v2 - 1;
      if (i != (v2 - 1))
      {
        memcpy((*(v6 + 40) + 72 * i), (*(v6 + 40) + 72 * (v2 - 1)), 0x48uLL);
      }
    }
  }

  return _dispatch_kq_drain(a1, a2, 1, 3u);
}

void _dispatch_sync_ipc_handoff_end(uint64_t a1, unsigned int a2)
{
  v11 = a2;
  __b = a2;
  v3 = -17;
  v4 = 7;
  v5 = 0;
  v6 = 0x80000000;
  v7 = 0;
  v8 = 0;
  v9 = 0u;
  v10 = 0u;
  _dispatch_kq_deferred_update(a1, &__b);
}

void _dispatch_kq_deferred_update(uint64_t a1, uint64_t a2)
{
  v9 = _dispatch_thread_getspecific(29);
  if (v9)
  {
    _dispatch_abort(453, (v9 & 1) == 0);
  }

  if (v9 && *(v9 + 24) == a1 && *(v9 + 50))
  {
    v11 = *(v9 + 40);
      ;
    }

    v14 = i;
    if (a1 != -4)
    {
      _dispatch_thread_setspecific(5, 1);
    }

    if (i == *(v9 + 50))
    {
      v13 = *(v9 + 48);
      *(v9 + 48) = 1;
      v12 = *(v9 + 32);
      *(v9 + 32) = 0;
      _dispatch_kq_drain(a1, *(v9 + 40), v13, 3u);
      if (*(v9 + 48) != 1)
      {
        _dispatch_abort(959, *(v9 + 48) == 1);
      }

      if (*(v9 + 32))
      {
        _dispatch_abort(960, *(v9 + 32) == 0);
      }

      v17 = v12;
      v16 = 0;
      while (v17)
      {
        v15 = v17[1];
        free(v17);
        ++v16;
        v17 = v15;
      }

      if (v16)
      {
        v2 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tfreed %d deferred unotes", 920, v2, v16);
      }

      if (v16 >= 0x11u)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
        qword_E42C0 = v16;
        __break(1u);
        JUMPOUT(0x81274);
      }

      v14 = 0;
    }

    else if (i == *(v9 + 48))
    {
      ++*(v9 + 48);
    }

    v6 = *(v9 + 40) + 72 * v14;
    *v6 = *a2;
    v3 = *(a2 + 16);
    v4 = *(a2 + 32);
    v5 = *(a2 + 48);
    *(v6 + 64) = *(a2 + 64);
    *(v6 + 48) = v5;
    *(v6 + 32) = v4;
    *(v6 + 16) = v3;
    if (*(a2 + 8) != -10)
    {
      dispatch_kevent_debug("deferred", a2, 0, 0, "_dispatch_kq_deferred_update", 993);
    }
  }

  else
  {
    _dispatch_kq_drain(a1, a2, 1, 3u);
  }
}

uint64_t _dispatch_unote_register_muxed(unsigned int *a1)
{
  v19 = a1[6];
  if (*(a1 + 28) == -24 || *(a1 + 28) == -8)
  {
    v19 >>= 8;
  }

  v17 = &_dispatch_sources[v19 & 0x3F];
  v15 = 1;
    ;
  }

  v16 = i;
  if (i)
  {
    v14 = a1[8] & ~*(i + 48);
    if (v14)
    {
      *(i + 48) |= v14;
      v12 = 0;
      if (*a1)
      {
        v12 = *a1;
      }

      if (*(v12 + 40))
      {
        v11 = 0;
        if (*a1)
        {
          v11 = *a1;
        }

        v15 = (*(v11 + 40))(i);
      }

      else
      {
        v15 = _dispatch_kq_immediate_update(-4, i + 24) == 0;
      }

      if ((v15 & 1) == 0)
      {
        *(i + 48) &= ~v14;
      }
    }

    goto LABEL_45;
  }

  v16 = _dispatch_calloc_typed(1, 96, 0x10A0040FE590B1CLL);
  v27 = a1;
  v26 = (v16 + 24);
  v25 = 5;
  v24 = a1;
  v10 = 0;
  if (*a1)
  {
    v10 = *a1;
  }

  v23 = v10;
  v22 = *(v10 + 12) | v25;
  if ((v22 & 0x200) != 0 && (v22 & 1) == 0)
  {
    v22 &= ~0x200u;
  }

  __src[0] = v24[6];
  LOWORD(__src[1]) = *(v23 + 8);
  WORD1(__src[1]) = v22;
  v41 = v24[9];
  v40 = 0;
  v39 = 0;
  if ((v41 & 0x4000000) != 0)
  {
    v39 = v41 & 0x8E000000 | 0xFFLL;
    v45 = v41 & 0xF000;
    v40 = v45 >> 12;
    v44 = v45 >> 12 != 0;
    v43 = 523;
    if (!(v45 >> 12))
    {
      _dispatch_abort(v43, v44);
    }

    goto LABEL_32;
  }

  v39 = v41 & 0x8E0000FF;
  v46 = v41 & 0xF00;
  v40 = v46 >> 8;
  if (v46 >> 8)
  {
LABEL_32:
    v42 = v39 | (1 << (v40 + 7));
    goto LABEL_33;
  }

  v42 = v39;
LABEL_33:
  HIDWORD(__src[1]) = v42;
  __src[2] = v24;
  __src[3] = v24[8] | *(v23 + 16);
  __src[4] = *(v23 + 14);
  memset(&__src[5], 0, 32);
  memcpy(v26, __src, 0x48uLL);
  *(v16 + 36) = 0x2000000;
  *(v16 + 40) = v16 | 1;
  v9 = 0;
  if (*a1)
  {
    v9 = *a1;
  }

  if (*(v9 + 40))
  {
    v8 = 0;
    if (*a1)
    {
      v8 = *a1;
    }

    v15 = (*(v8 + 40))(v16);
  }

  else
  {
    v15 = _dispatch_kq_immediate_update(-4, v16 + 24) == 0;
  }

  if (v15)
  {
    *(v16 + 34) &= 0xFDFEu;
    v1 = *v17;
    *v16 = *v17;
    if (v1)
    {
      *(*v17 + 8) = v16;
    }

    *v17 = v16;
    *(v16 + 8) = v17;
  }

  else
  {
    free(v16);
  }

LABEL_45:
  if (v15)
  {
    v28 = a1;
    v2 = (*(a1 + 29) & 1) == 0;
    v38 = v2;
    v37 = 622;
    if (!v2)
    {
      _dispatch_abort(v37, v38);
    }

    v13 = v28 - 6;
    v3 = *(v16 + 16);
    *(v28 - 3) = v3;
    if (v3)
    {
      *(*(v16 + 16) + 8) = v13;
    }

    *(v16 + 16) = v13;
    *(v13 + 1) = v16 + 16;
    if (*(a1 + 28) == -24)
    {
      *(a1 + 30) = *(v16 + 64) != 0;
    }

    *(v13 + 2) = v16;
    v31 = a1;
    v30 = -4;
    v29 = 1;
    v36 = a1;
    v35 = -3;
    v34 = -3;
    v33 = -3;
    *(a1 + 2) = -3;
    v32 = v34;
    v6 = _dispatch_thread_getspecific(0);
    v7 = ~*(a1 + 1);
    v4 = _evfiltstr(*(a1 + 28));
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 1229, v6, v7, "installed", a1, v4, a1[6]);
  }

  return v15 & 1;
}

const char *_evfiltstr(__int16 a1)
{
  switch(a1)
  {
    case -24:
      v2 = "DISPATCH_EVFILT_MACH_NOTIFICATION";
      break;
    case -23:
      v2 = "DISPATCH_EVFILT_CUSTOM_REPLACE";
      break;
    case -22:
      v2 = "DISPATCH_EVFILT_CUSTOM_OR";
      break;
    case -21:
      v2 = "DISPATCH_EVFILT_CUSTOM_ADD";
      break;
    case -20:
      v2 = "DISPATCH_EVFILT_TIMER_WITH_CLOCK";
      break;
    case -19:
      v2 = "DISPATCH_EVFILT_TIMER";
      break;
    case -18:
      v2 = "EVFILT_EXCLAVES_NOTIFICATION";
      break;
    case -17:
      v2 = "EVFILT_WORKLOOP";
      break;
    case -14:
      v2 = "EVFILT_MEMORYSTATUS";
      break;
    case -13:
      v2 = "EVFILT_SOCK";
      break;
    case -10:
      v2 = "EVFILT_USER";
      break;
    case -9:
      v2 = "EVFILT_FS";
      break;
    case -8:
      v2 = "EVFILT_MACHPORT";
      break;
    case -7:
      v2 = "EVFILT_TIMER";
      break;
    case -6:
      v2 = "EVFILT_SIGNAL";
      break;
    case -5:
      v2 = "EVFILT_PROC";
      break;
    case -4:
      v2 = "EVFILT_VNODE";
      break;
    case -3:
      v2 = "EVFILT_AIO";
      break;
    case -2:
      v2 = "EVFILT_WRITE";
      break;
    case -1:
      v2 = "EVFILT_READ";
      break;
    default:
      v2 = "EVFILT_missing";
      break;
  }

  return v2;
}

void _dispatch_unote_resume_muxed(uint64_t *a1)
{
  a1[2] |= 1uLL;
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  if (*(v2 + 40))
  {
    if (*(a1 + 29))
    {
      _dispatch_abort(622, (*(a1 + 29) & 1) == 0);
    }

    v1 = 0;
    if (*a1)
    {
      v1 = *a1;
    }

    (*(v1 + 40))(*(a1 - 1));
  }

  else
  {
    if (*(a1 + 29))
    {
      _dispatch_abort(622, (*(a1 + 29) & 1) == 0);
    }

    _dispatch_kq_deferred_update(-4, *(a1 - 1) + 24);
  }
}

uint64_t _dispatch_unote_unregister_muxed(uint64_t *a1)
{
  v14 = a1;
  if (*(a1 + 29))
  {
    _dispatch_abort(622, (*(a1 + 29) & 1) == 0);
  }

  v12 = a1 - 3;
  v11 = *(a1 - 1);
  v10 = 0;
  v9 = 0;
  if (v11[16] == -24)
  {
    *(a1 + 30) = 0;
  }

  a1[2] = 0;
  if (*v12)
  {
    *(*(a1 - 3) + 8) = *(a1 - 2);
  }

  **(a1 - 2) = *(a1 - 3);
  *v12 = -1;
  *(a1 - 2) = -1;
  *v12 = -1;
  *(a1 - 2) = -1;
  *(a1 - 1) = 0;
  if (*(v11 + 2))
  {
    v7 = 0;
    if (*a1)
    {
      v7 = *a1;
    }

    v8 = *(v7 + 16);
    for (i = *(v11 + 2); i; i = *i)
    {
      v14 = i + 3;
      v8 |= *(i + 14);
    }

    if ((*(v11 + 12) & ~v8) != 0)
    {
      *(v11 + 12) &= v8;
      v10 = 1;
    }
  }

  else
  {
    v9 = 1;
    v10 = (v11[17] & 2) == 0;
    v11[17] |= 2u;
  }

  if (v10)
  {
    v6 = 0;
    if (*v14)
    {
      v6 = *v14;
    }

    if (*(v6 + 40))
    {
      v5 = 0;
      if (*v14)
      {
        v5 = *v14;
      }

      if (((*(v5 + 40))(v11) & 1) == 0)
      {
        _dispatch_bug(1282, 0);
      }
    }

    else
    {
      _dispatch_kq_deferred_update(-4, (v11 + 12));
    }
  }

  if (v9)
  {
    if (*v11)
    {
      *(*v11 + 8) = *(v11 + 1);
    }

    **(v11 + 1) = *v11;
    *v11 = -1;
    *(v11 + 1) = -1;
    free(v11);
  }

  v3 = _dispatch_thread_getspecific(0);
  v4 = ~v14[1];
  v1 = _evfiltstr(*(v14 + 28));
  _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 1291, v3, v4, "deleted", v14, v1, *(v14 + 6));
  return 1;
}

BOOL _dispatch_kq_unote_update(uint64_t a1, uint64_t *a2, __int16 a3)
{
  v54 = a2;
  v53 = a1;
  v52 = a3;
  v92 = _dispatch_thread_getspecific(29);
  v100 = (v92 & 1) == 0;
  v99 = 453;
  if (v92)
  {
    _dispatch_abort(v99, v100);
  }

  v51 = v92;
  v50 = v54;
  v49 = 0;
  v48 = 0;
  if (v52)
  {
    v139 = v53;
    if (v53)
    {
      if (v139 != -4)
      {
        v138 = v139;
        v183 = v139;
        v180 = 1;
        v179 = 1;
        v181 = 1;
        v175 = 1;
        v174 = 1;
        v176 = 1;
        add_explicit = atomic_fetch_add_explicit((v139 + 96), 1u, memory_order_relaxed);
        v177 = add_explicit;
        v172 = add_explicit;
        v178 = add_explicit + 1;
        v182 = add_explicit + 1;
        if ((add_explicit + 1) <= 0)
        {
          qword_E4290 = "API MISUSE: Resurrection of an object";
          __break(1u);
          JUMPOUT(0x82680);
        }
      }
    }

    v47 = v50;
    v76 = v50;
    v75 = v53;
    v74 = 1;
    v81 = v50;
    v80 = v53 | 1;
    v79 = v53 | 1;
    v78 = v53 | 1;
    v50[2] = v53 | 1;
    v77 = v79;
  }

  if (v51 && *(v51 + 24) == v53)
  {
    v3 = *(v50 + 28);
    v4 = *(v50 + 6);
    v98 = v51;
    v97 = v3;
    v96 = v4;
    v95 = v50;
    v94 = *(v51 + 40);
      ;
    }

    v46 = i;
    if (i < *(v51 + 48))
    {
      v52 |= *(*(v51 + 40) + 72 * v46 + 10) & 4;
    }

    if ((v52 & 1) == 0 && (v52 & 4) != 0)
    {
      v110 = v53;
      v109 = v51;
      v108 = v46;
      if (v53 != -4)
      {
        _dispatch_thread_setspecific(5, 1);
      }

      if (v108 == *(v109 + 50))
      {
        v107 = *(v109 + 48);
        *(v109 + 48) = 1;
        v106 = *(v109 + 32);
        *(v109 + 32) = 0;
        v5 = *(v109 + 40);
        v121 = v110;
        v120 = v5;
        v119 = v107;
        _dispatch_kq_drain(v110, v5, v107, 3u);
        v6 = *(v109 + 48) == 1;
        v118 = *(v109 + 48) == 1;
        v117 = 959;
        if (!v6)
        {
          _dispatch_abort(v117, v118);
        }

        v7 = *(v109 + 32) == 0;
        v116 = *(v109 + 32) == 0;
        v115 = 960;
        if (!v7)
        {
          _dispatch_abort(v115, v116);
        }

        v114 = v106;
        v113 = 0;
        while (v114)
        {
          v112 = *(v114 + 1);
          free(v114);
          ++v113;
          v114 = v112;
        }

        if (v113)
        {
          v8 = _dispatch_thread_getspecific(0);
          _dispatch_log("%u\t%p\tfreed %d deferred unotes", 920, v8, v113);
        }

        if (v113 >= 0x11u)
        {
          v111 = v113;
          qword_E4290 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
          qword_E42C0 = v113;
          __break(1u);
          JUMPOUT(0x82A54);
        }

        v108 = 0;
      }

      else if (v108 == *(v109 + 48))
      {
        ++*(v109 + 48);
      }

      v49 = (*(v109 + 40) + 72 * v108);
      v45 = v50;
      v73 = v50;
      v72 = v49;
      v71 = v52;
      v70 = v50;
      v42 = 0;
      if (*v50)
      {
        v42 = *v50;
      }

      v69 = v42;
      v68 = *(v42 + 12) | v71;
      if ((v68 & 0x200) != 0 && (v68 & 1) == 0)
      {
        v68 &= ~0x200u;
      }

      v41 = v72;
      *&v65 = v70[6];
      WORD4(v65) = *(v69 + 8);
      WORD5(v65) = v68;
      v124 = v70[9];
      v123 = 0;
      v122 = 0;
      if ((v124 & 0x4000000) != 0)
      {
        v122 = v124 & 0x8E000000 | 0xFFLL;
        v135 = v124 & 0xF000;
        v123 = v135 >> 12;
        v127 = v135 >> 12 != 0;
        v126 = 523;
        if (!(v135 >> 12))
        {
          _dispatch_abort(v126, v127);
        }
      }

      else
      {
        v122 = v124 & 0x8E0000FF;
        v137 = v124 & 0xF00;
        v123 = v137 >> 8;
        if (!(v137 >> 8))
        {
          v125 = v122;
LABEL_50:
          HIDWORD(v65) = v125;
          *&v66 = v70;
          *(&v66 + 1) = v70[8] | *(v69 + 16);
          *v67 = *(v69 + 14);
          memset(&v67[8], 0, 32);
          *v72 = v65;
          v9 = v66;
          v10 = *v67;
          v11 = *&v67[16];
          *(v41 + 8) = *&v67[32];
          *(v41 + 3) = v11;
          *(v41 + 2) = v10;
          *(v41 + 1) = v9;
          dispatch_kevent_debug("deferred", v49, 0, 0, "_dispatch_kq_unote_update", 1086);
          goto LABEL_68;
        }
      }

      v125 = v122 | (1 << (v123 + 7));
      goto LABEL_50;
    }

    v103 = v51;
    v102 = v46;
    if (v46 < *(v51 + 48))
    {
      v12 = *(v103 + 48) - 1;
      *(v103 + 48) = v12;
      v101 = v12;
      if (v102 != v12)
      {
        v13 = *(v103 + 40);
        v14 = v13 + 72 * v102;
        v15 = v13 + 72 * v101;
        *v14 = *v15;
        v16 = *(v15 + 16);
        v17 = *(v15 + 32);
        v18 = *(v15 + 48);
        *(v14 + 64) = *(v15 + 64);
        *(v14 + 48) = v18;
        *(v14 + 32) = v17;
        *(v14 + 16) = v16;
      }
    }
  }

  if (v52)
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v64 = v50;
    v63 = v43;
    v62 = v52;
    v61 = v50;
    v40 = 0;
    if (*v50)
    {
      v40 = *v50;
    }

    v60 = v40;
    v59 = *(v40 + 12) | v62;
    if ((v59 & 0x200) != 0 && (v59 & 1) == 0)
    {
      v59 &= ~0x200u;
    }

    v39 = v63;
    *&v56 = v61[6];
    WORD4(v56) = *(v60 + 8);
    WORD5(v56) = v59;
    v130 = v61[9];
    v129 = 0;
    v128 = 0;
    if ((v130 & 0x4000000) != 0)
    {
      v128 = v130 & 0x8E000000 | 0xFFLL;
      v134 = v130 & 0xF000;
      v129 = v134 >> 12;
      v133 = v134 >> 12 != 0;
      v132 = 523;
      if (!(v134 >> 12))
      {
        _dispatch_abort(v132, v133);
      }
    }

    else
    {
      v128 = v130 & 0x8E0000FF;
      v136 = v130 & 0xF00;
      v129 = v136 >> 8;
      if (!(v136 >> 8))
      {
        v131 = v128;
LABEL_67:
        HIDWORD(v56) = v131;
        *&v57 = v61;
        *(&v57 + 1) = v61[8] | *(v60 + 16);
        *v58 = *(v60 + 14);
        memset(&v58[8], 0, 32);
        *v63 = v56;
        v19 = v57;
        v20 = *v58;
        v21 = *&v58[16];
        *(v39 + 8) = *&v58[32];
        v39[3] = v21;
        v39[2] = v20;
        v39[1] = v19;
        v105 = v53;
        v104 = v43;
        v48 = _dispatch_kq_drain(v53, v43, 1, 3u);
        goto LABEL_68;
      }
    }

    v131 = v128 | (1 << (v129 + 7));
    goto LABEL_67;
  }

LABEL_68:
  if (v52)
  {
    if (v48)
    {
      v156 = v53;
      if (v53)
      {
        if (v156 != -4)
        {
          v155 = v156;
          v169 = v156;
          v166 = 1;
          v165 = 1;
          v167 = 1;
          v161 = 1;
          v160 = 1;
          v162 = 1;
          v159 = atomic_fetch_add_explicit((v156 + 96), 0xFFFFFFFF, memory_order_relaxed);
          v163 = v159;
          v158 = v159;
          v164 = v159 - v167;
          v168 = v159 - v167;
          if (((v159 - v167) & 0x80000000) != 0)
          {
            if (v168 <= -2)
            {
              qword_E4290 = "API MISUSE: Over-release of an object";
              __break(1u);
              JUMPOUT(0x831E8);
            }

            v169[7] = 0xDEAD000000000000;
            v157 = v169;
            _dispatch_object_dealloc(v169);
          }
        }
      }

      v91 = v50;
      v90 = 0;
      v89 = 0;
      v88 = 0;
      v50[2] = 0;
      v87 = v89;
    }

    else
    {
      v38 = _dispatch_thread_getspecific(0);
      v36 = v50;
      v37 = ~v50[1];
      v22 = _evfiltstr(*(v50 + 28));
      _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 1106, v38, v37, "installed", v36, v22, *(v50 + 6));
    }

    return v48 == 0;
  }

  else
  {
    if ((v52 & 2) != 0)
    {
      if (v48 == 36)
      {
        v35 = _dispatch_thread_getspecific(0);
        v33 = v50;
        v34 = ~v50[1];
        v23 = _evfiltstr(*(v50 + 28));
        _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 1113, v35, v34, "deferred delete", v33, v23, *(v50 + 6));
        return 0;
      }

      v141 = v53;
      if (v53)
      {
        if (v141 != -4)
        {
          v140 = v141;
          v154 = v141;
          v151 = 1;
          v150 = 1;
          v152 = 1;
          v146 = 1;
          v145 = 1;
          v147 = 1;
          v144 = atomic_fetch_add_explicit((v141 + 96), 0xFFFFFFFF, memory_order_relaxed);
          v148 = v144;
          v143 = v144;
          v149 = v144 - v152;
          v153 = v144 - v152;
          if (((v144 - v152) & 0x80000000) != 0)
          {
            if (v153 <= -2)
            {
              qword_E4290 = "API MISUSE: Over-release of an object";
              __break(1u);
              JUMPOUT(0x83480);
            }

            v154[7] = 0xDEAD000000000000;
            v142 = v154;
            _dispatch_object_dealloc(v154);
          }
        }
      }

      v86 = v50;
      v85 = 0;
      v84 = 0;
      v83 = 0;
      v50[2] = 0;
      v82 = v84;
      v32 = _dispatch_thread_getspecific(0);
      v30 = v50;
      v31 = ~v50[1];
      v24 = _evfiltstr(*(v50 + 28));
      _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 1118, v32, v31, "deleted", v30, v24, *(v50 + 6));
    }

    else if ((v52 & 4) != 0)
    {
      v29 = _dispatch_thread_getspecific(0);
      v27 = v50;
      v28 = ~v50[1];
      v25 = _evfiltstr(*(v50 + 28));
      _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 1120, v29, v28, "rearmed", v27, v25, *(v50 + 6));
    }

    v171 = v48;
    v170 = 1123;
    if (v48)
    {
      _dispatch_bug(v170, v171);
    }

    return 1;
  }
}

uint64_t _dispatch_unote_unregister_direct(uint64_t a1, char a2)
{
  v9 = *(a1 + 16);
  v8 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = _dispatch_thread_getspecific(29);
  if (v13)
  {
    _dispatch_abort(453, 0);
  }

  v7 = 2;
  v6 = 0;
  if (v8 != -4)
  {
    v6 = 0;
    if (v13)
    {
      v6 = *(v13 + 24) == v8;
    }
  }

  if (v6)
  {
    v7 = 6;
    a2 |= 5u;
  }

  if (v9 & 2) == 0 || (a2)
  {
    if (v9 == 2)
    {
      *(a1 + 16) = 0;
      v5 = _dispatch_thread_getspecific(0);
      v4 = ~*(a1 + 8);
      v2 = _evfiltstr(*(a1 + 28));
      _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 1331, v5, v4, "acknowledged deleted oneshot", a1, v2, *(a1 + 24));
      return 1;
    }

    if ((v9 & 1) == 0)
    {
      v7 |= 4u;
      a2 |= 4u;
    }

    if (((v7 & 4) != 0 || (a2 & 2) != 0) && _dispatch_kq_unote_update(v8, a1, v7))
    {
      return 1;
    }
  }

  if ((a2 & 4) != 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Unregistration failed";
    __break(1u);
    JUMPOUT(0x83A08);
  }

  return 0;
}

void _dispatch_unote_dispose_defer(uint64_t a1)
{
  v6 = _dispatch_thread_getspecific(29);
  if (v6)
  {
    _dispatch_abort(453, (v6 & 1) == 0);
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 40);
    ;
  }

  if (i < *(v6 + 48))
  {
    if (((*(*(v6 + 40) + 72 * i + 10) >> 1) & 1) == 0)
    {
      v1 = *(*(v6 + 40) + 72 * i + 10);
      qword_E4290 = "BUG IN LIBDISPATCH: Disposing a direct unote while deferring an event";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x83C2CLL);
    }

    *(a1 + 8) = *(v6 + 32);
    *(v6 + 32) = a1;
    v4 = _dispatch_thread_getspecific(0);
    v3 = ~*(a1 + 8);
    v2 = _evfiltstr(*(a1 + 28));
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 1390, v4, v3, "deferred free", a1, v2, *(a1 + 24));
  }

  else
  {
LABEL_14:
    free(a1);
  }
}

void _dispatch_free_deferred_unotes(void *a1)
{
  v3 = 0;
  while (a1)
  {
    v2 = a1[1];
    free(a1);
    ++v3;
    a1 = v2;
  }

  if (v3)
  {
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tfreed %d deferred unotes", 920, v1, v3);
  }

  if (v3 >= 0x11u)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x83DD0);
  }
}

void _dispatch_event_loop_poke(uint64_t a1, unint64_t a2, int a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  if (a1 == -8)
  {
    v7 = 0;
    v6 = 0u;
    v5 = 0u;
    v4[1] = 65526;
    v4[0] = 1;
    v4[2] = -8;
    v4[3] = 0x1000000;
    _dispatch_kq_deferred_update(-4, v4);
  }

  else
  {
    if (!v10 || v10 == -4)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Unsupported wlh configuration";
      qword_E42C0 = v10;
      __break(1u);
      JUMPOUT(0x84478);
    }

    v20 = v9;
    v19 = (v9 >> 37) & 1;
    v18 = 1989;
    if (!v19)
    {
      _dispatch_abort(v18, 0);
    }

    v21 = v9;
    if ((BYTE4(v9) >> 6))
    {
      v17 = v8 >= 0;
      v16 = 1991;
      if (v8 < 0)
      {
        _dispatch_abort(v16, v17);
      }

      v15 = v8 & 1;
      v14 = 1992;
      if ((v8 & 1) == 0)
      {
        _dispatch_abort(v14, v15);
      }

      v25 = &_dispatch_mgr_q;
      v24 = v10;
      v23 = 0;
      v22 = 0;
      v27 = &_dispatch_mgr_q;
      v26 = v10;
      v3 = 0;
      if (_dispatch_mgr_q)
      {
        v3 = _dispatch_mgr_q;
      }

      (v3[9])(&_dispatch_mgr_q, v10, 0);
    }

    else
    {
      v11 = _dispatch_thread_getspecific(29);
      v13 = (v11 & 1) == 0;
      v12 = 453;
      if (v11)
      {
        _dispatch_abort(v12, v13);
      }

      if (v11 && *(v11 + 24) == v10)
      {
        _dispatch_kevent_workloop_poke_self(v11, v9, v8);
      }

      else
      {
        _dispatch_kevent_workloop_poke(v10, v9, v8);
      }
    }
  }
}

void _dispatch_kevent_workloop_poke_self(uint64_t result, unint64_t a2, int a3)
{
  v3 = *(result + 24);
  if ((*(result + 53) & 4) != 0)
  {
    if ((*(result + 53) & 1) == 0)
    {
      _dispatch_abort(1889, *(result + 53) & 1);
    }

    if (a3 < 0)
    {
      _dispatch_kevent_workloop_override_self(result, a2, a3);
    }

    else
    {
      if ((a2 & 0xFFFFFFFC) != 0)
      {
        _dispatch_abort(1901, (a2 & 0xFFFFFFFC) == 0);
      }

      if ((a2 & 1) == 0)
      {
        _dispatch_abort(1902, (a2 & 1) != 0);
      }

      if ((a3 & 1) == 0)
      {
        _dispatch_abort(1903, a3 & 1);
      }

      _dispatch_release_no_dispose(v3);
      _dispatch_event_loop_leave_deferred(result, a2);
    }
  }

  else if (*(result + 53))
  {
    if ((a3 & 0x80000000) == 0)
    {
      _dispatch_abort(1924, a3 & 0x80000000);
    }

    if (!*(result + 8))
    {
      _dispatch_abort(1925, 0);
    }

    if (a3)
    {
      _dispatch_release_2_no_dispose(v3);
    }
  }

  else
  {
    if (a3 < 0)
    {
      if (a3)
      {
        _dispatch_release_no_dispose(v3);
      }

      else
      {
        _dispatch_retain(v3);
      }
    }

    else if ((a3 & 1) == 0)
    {
      _dispatch_abort(1963, a3 & 1);
    }

    if (*(result + 8))
    {
      _dispatch_abort(1965, *(result + 8) == 0);
    }

    *(result + 53) = *(result + 53) & 0xFE | 1;
    *(result + 53) = *(result + 53) & 0xFD | 2;
    *result = *(v3 + 24);
    *(result + 8) = v3;
    *(result + 16) = (a2 & 0x700000000) >> 32;
  }
}

void _dispatch_kevent_workloop_poke(uint64_t a1, unint64_t a2, int a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 3;
  v6 = 0;
  v5 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  v33 = a2;
  v14 = a2 & 1;
  v13 = 1836;
  if ((a2 & 1) == 0)
  {
    _dispatch_abort(v13, 0);
  }

  v15 = v9;
  v12 = (v9 & 0x4000000000) == 0;
  v11 = 1837;
  if ((v9 & 0x4000000000) != 0)
  {
    _dispatch_abort(v11, v12);
  }

  v27 = v9;
  v31 = v9;
  v30 = (v9 >> 37) & 1;
  v29 = 1758;
  if (!v30)
  {
    _dispatch_abort(v29, 0);
  }

  v32 = v27;
  if (v27)
  {
    v34 = v27;
    v35 = v27;
    if ((v27 & 0xFFFFFFFC) != 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 3;
  }

  _dispatch_kq_fill_workloop_event(v3, v28, v10, v9);
  if (_dispatch_kq_poll(v10, v3, 1u, v3, 1u, 0, 0, v7))
  {
    v23 = v3;
    v22 = 0;
    v21 = v4;
    dispatch_kevent_debug("received error", v3, 0, 0, "_dispatch_kevent_workloop_drain_error", 1680);
    v26 = *(v23 + 5) & 0x4000;
    v25 = 1681;
    if (!v26)
    {
      _dispatch_abort(v25, 0);
    }

    *(v23 + 5) &= ~0x4000u;
    *(v23 + 7) = v21;
    *(v23 + 4) = 0;
    switch(v21)
    {
      case 2u:
        if ((v22 & 1) == 0 || (*(v23 + 5) & 2) == 0 || (*(v23 + 24) & 8) == 0 || (*(v23 + 24) & 0x20) == 0)
        {
          v20 = *(v23 + 6) << 32;
          v20 |= *(v23 + 5) << 16;
          v20 |= v21;
          v19 = v20;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v20;
          __break(1u);
          JUMPOUT(0x84B54);
        }

        v24 = 2;
        break;
      case 4u:
        if ((v22 & 4) == 0 || (*(v23 + 24) & 4) == 0)
        {
          goto LABEL_39;
        }

        v24 = 4;
        break;
      case 0x22u:
        v18 = *(v23 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v18;
        __break(1u);
        JUMPOUT(0x84BD8);
      case 0x46u:
        if ((v22 & 2) == 0 || (*(v23 + 25) & 1) != 0 || !*(v23 + 6) || !*(v23 + 7))
        {
          goto LABEL_39;
        }

        v24 = 70;
        break;
      case 0x69u:
        v17 = *(v23 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v17;
        __break(1u);
        JUMPOUT(0x84C10);
      default:
LABEL_39:
        v16 = v21;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v21;
        __break(1u);
        JUMPOUT(0x84C48);
    }

    __break(1u);
  }

  if (v8 < 0)
  {
    if (v8)
    {
      _dispatch_release_2_tailcall(v10);
    }
  }

  else
  {
    _dispatch_release_tailcall(v10);
  }
}

void _dispatch_event_loop_drain(unsigned int a1)
{
  v9 = _dispatch_thread_getspecific(29);
  if (v9)
  {
    _dispatch_abort(453, (v9 & 1) == 0);
  }

  v7 = *(v9 + 24);
  do
  {
    if ((*(v9 + 53) & 2) != 0)
    {
      v5 = v7[7];
      if ((*(v9 + 53) & 1) == 0)
      {
        _dispatch_abort(2024, *(v9 + 53) & 1);
      }

      *(v9 + 53) &= ~2u;
      v14 = *(v9 + 40);
        ;
      }

      if (i == *(v9 + 48))
      {
        if (i >= 16)
        {
          _dispatch_abort(1595, 0);
        }

        ++*(v9 + 48);
      }

      _dispatch_kq_fill_workloop_event(*(v9 + 40) + 72 * i, 2, v7, v5);
    }

    v6 = *(v9 + 48);
    *(v9 + 48) = 0;
    v4 = *(v9 + 32);
    *(v9 + 32) = 0;
    _dispatch_kq_drain(v7, *(v9 + 40), v6, a1);
    v12 = v4;
    v11 = 0;
    while (v12)
    {
      v10 = v12[1];
      free(v12);
      ++v11;
      v12 = v10;
    }

    if (v11)
    {
      v1 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tfreed %d deferred unotes", 920, v1, v11);
    }

    if (v11 >= 0x11u)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
      qword_E42C0 = v11;
      __break(1u);
      JUMPOUT(0x8504CLL);
    }

    if (v7 && v7 != -4)
    {
      v2 = 0;
      if (*v7)
      {
        v2 = *v7;
      }

      if (*(v2 + 16) == 18)
      {
        v15 = v7;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v3 = v15[6];
      if (v3)
      {
        if (*(v3 + 6))
        {
          _dispatch_event_loop_drain_timers(v3, 6u);
        }
      }
    }
  }

  while ((a1 & 1) != 0 && (a1 & 2) == 0 && _dispatch_thread_getspecific(5));
}

uint64_t _dispatch_kq_drain(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = (a4 & 2) == 0;
  v16 = 0;
  v14 = 16;
  v15 = 16;
  i = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if ((a4 & 2) == 0)
  {
    v23 = 1;
    v22 = 823;
    v9 = &v10;
    v10 = 0x8000;
    v8 = &v5 - 4096;
    bzero(&v5 - 4096, 0x8000uLL);
    v11 = v8;
    v12 = v9;
  }

  for (i = 0; i < v19; ++i)
  {
    dispatch_kevent_debug(0, (v20 + 72 * i), i, v19, "_dispatch_kq_drain", 833);
  }

  if (v17)
  {
    _dispatch_thread_setspecific(5, 0);
  }

  v19 = _dispatch_kq_poll(v21, v20, v19, v24, v15, v11, v12, v18);
  if (v19)
  {
    if ((v18 & 2) != 0)
    {
      v16 = 0;
      i = 0;
      while (v16 < v19)
      {
        if ((v24[36 * v16 + 5] & 0x4000) != 0 && *&v24[36 * v16 + 16])
        {
          v6 = 72;
          v7 = v24;
          _dispatch_kevent_drain(&v24[36 * v16]);
          i = *(v7 + v16 * v6 + 32);
        }

        ++v16;
      }
    }

    else
    {
      if ((v24[5] & 0x4000) != 0)
      {
        _dispatch_thread_setspecific(5, 1);
      }

      v16 = 0;
      i = 0;
      while (v16 < v19)
      {
        _dispatch_kevent_drain(&v24[36 * v16++]);
      }
    }
  }

  else
  {
    return 0;
  }

  return i;
}

void _dispatch_event_loop_merge(uint64_t a1, unsigned int a2)
{
  v14 = a1;
  v13 = a2;
  v15 = _dispatch_thread_getspecific(29);
  v17 = (v15 & 1) == 0;
  v16 = 453;
  if (v15)
  {
    _dispatch_abort(v16, v17);
  }

  v12 = v15;
  v11 = *(v15 + 24);
  v10 = &v2;
  v6 = &v2 - ((72 * v13 + 15) & 0xFFFFFFFFF0);
  v9 = v13;
  __memcpy_chk();
  *(v12 + 50) = 14;
  for (i = 0; i < v13; ++i)
  {
    _dispatch_kevent_drain(&v6[72 * i]);
  }

  if (v11 == -4)
  {
    if (*(v12 + 8))
    {
      if (*(v12 + 48))
      {
        _dispatch_event_loop_drain(3u);
      }
    }
  }

  else
  {
    v3 = *v11;
    v4 = v11 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v5 = 0;
    if (v3)
    {
      v5 = v3;
    }

    if (*(v5 + 16) == 18)
    {
      v7 = *(v11 + 48);
      if (v7)
      {
        if (*(v7 + 6))
        {
          _dispatch_event_loop_drain_timers(v7, 6u);
        }
      }
    }
  }
}

void _dispatch_kevent_drain(unsigned __int16 *a1)
{
  if (a1[4] == -10)
  {
    dispatch_kevent_debug("received", a1, 0, 0, "_dispatch_kevent_drain", 577);
    return;
  }

  if (a1[4] == -17)
  {
    _dispatch_kevent_workloop_poke_drain(a1);
    return;
  }

  dispatch_kevent_debug("received", a1, 0, 0, "_dispatch_kevent_drain", 585);
  if ((a1[5] & 0x4000) != 0)
  {
    if (a1[4] != -5 || *(a1 + 4) != 3)
    {
      _dispatch_kevent_print_error(a1);
      return;
    }

    a1[5] = 274;
    *(a1 + 6) = -2080374784;
    *(a1 + 4) = 0;
    dispatch_kevent_debug("synthetic NOTE_EXIT", a1, 0, 0, "_dispatch_kevent_drain", 594);
  }

  if (a1[4] == -7)
  {
    v3 = *(a1 + 2);
    v2 = *a1;
    if (*(a1 + 4) <= 0)
    {
      _dispatch_abort(2515, *(a1 + 4) > 0);
    }

    if (*a1 != (v2 | 0xFFFFFFFFFFFFFF00))
    {
      _dispatch_abort(2516, *a1 == (v2 | 0xFFFFFFFFFFFFFF00));
    }

    if (v2 >= 9)
    {
      _dispatch_abort(2517, v2 < 9);
    }

    *(v3 + 6) |= (1 << (*a1 % 3u)) | 0x80;
    *(v3 + 32 * v2 + 7) = *(v3 + 32 * v2 + 7) & 0xFD | 2;
    *(v3 + 32 * v2 + 7) &= ~1u;
  }

  else if (a1[4] == -8 && (_dispatch_kevent_mach_msg_size(a1) || (_dispatch_kevent_has_machmsg_rcv_error(a1) & 1) != 0))
  {
    _dispatch_kevent_mach_msg_drain(a1);
  }

  else if (*(a1 + 2))
  {
    _dispatch_kevent_merge_muxed(a1);
  }

  else
  {
    if (*(a1 + 2))
    {
      _dispatch_abort(390, (*(a1 + 2) & 1) == 0);
    }

    _dispatch_kevent_merge(*(a1 + 2), a1);
  }
}

void _dispatch_event_loop_leave_immediate(unint64_t a1)
{
  v8 = a1;
  v9 = _dispatch_thread_getspecific(29);
  v11 = (v9 & 1) == 0;
  v10 = 453;
  if (v9)
  {
    _dispatch_abort(v10, v11);
  }

  v7 = v9;
  v6 = *(v9 + 24);
  v5 = 131075;
  v4 = 0;
  v3 = 0u;
  v2 = 0u;
  memset(v1, 0, sizeof(v1));
  v16 = v8;
  v15 = (v8 & 0x2000000000) == 0;
  v14 = 2101;
  if ((v8 & 0x2000000000) != 0)
  {
    _dispatch_abort(v14, v15);
  }

  v13 = *(v7 + 53) & 1;
  v12 = 2111;
  if (!v13)
  {
    _dispatch_abort(v12, 0);
  }

  *(v7 + 53) &= ~1u;
  *(v7 + 53) &= ~2u;
  _dispatch_kq_fill_workloop_event(v1, 6, v6, v8);
  if (_dispatch_kq_poll(v6, v1, 1u, v1, 1u, 0, 0, v5))
  {
    v24 = v1;
    v23 = 0;
    v22 = v2;
    dispatch_kevent_debug("received error", v1, 0, 0, "_dispatch_kevent_workloop_drain_error", 1680);
    v27 = *(v24 + 5) & 0x4000;
    v26 = 1681;
    if (!v27)
    {
      _dispatch_abort(v26, 0);
    }

    *(v24 + 5) &= ~0x4000u;
    *(v24 + 7) = v22;
    *(v24 + 4) = 0;
    switch(v22)
    {
      case 2u:
        if ((v23 & 1) == 0 || (*(v24 + 5) & 2) == 0 || (*(v24 + 24) & 8) == 0 || (*(v24 + 24) & 0x20) == 0)
        {
          v21 = *(v24 + 6) << 32;
          v21 |= *(v24 + 5) << 16;
          v21 |= v22;
          v20 = v21;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v21;
          __break(1u);
          JUMPOUT(0x85DC8);
        }

        v25 = 2;
        break;
      case 4u:
        if ((v23 & 4) == 0 || (*(v24 + 24) & 4) == 0)
        {
          goto LABEL_34;
        }

        v25 = 4;
        break;
      case 0x22u:
        v19 = *(v24 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v19;
        __break(1u);
        JUMPOUT(0x85E4CLL);
      case 0x46u:
        if ((v23 & 2) == 0 || (*(v24 + 25) & 1) != 0 || !*(v24 + 6) || !*(v24 + 7))
        {
          goto LABEL_34;
        }

        v25 = 70;
        break;
      case 0x69u:
        v18 = *(v24 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v18;
        __break(1u);
        JUMPOUT(0x85E84);
      default:
LABEL_34:
        v17 = v22;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v22;
        __break(1u);
        JUMPOUT(0x85EBCLL);
    }

    __break(1u);
  }
}

void _dispatch_kq_fill_workloop_event(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (a2 < 3)
  {
    if (((a4 >> 37) & 1) == 0)
    {
      _dispatch_abort(1538, 0);
    }

    if ((a4 & 1) == 0)
    {
      _dispatch_abort(1539, 0);
    }

    v7 = 5;
    v8 = 0x3700000001;
    v9 = 272;
    if ((a4 & 2) != 0)
    {
      v9 = 400;
      v8 = 0x3700000003;
    }

    v12 = (a4 & 0x700000000) >> 32;
    v11 = *(*(a3 + 24) + 84);
    if (v12 < (v11 & 0xF00) >> 8)
    {
      v12 = (v11 & 0xF00) >> 8;
    }

    if (!v12)
    {
      LOBYTE(v12) = 1;
    }

    if ((v11 & 0x8000000) != 0)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
      qword_E42C0 = v11;
      __break(1u);
      JUMPOUT(0x86174);
    }

    v10 = (1 << (v12 + 7)) | 0xFF | v11 & 0x80000000;
  }

  else
  {
    if (a2 != 3)
    {
      if ((a2 - 4) >= 2)
      {
        if (a2 != 6)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Invalid transition";
          qword_E42C0 = a2;
          __break(1u);
          JUMPOUT(0x8626CLL);
        }

        v7 = 7;
        v9 = 32;
        goto LABEL_24;
      }

      v9 = 256;
    }

    if (a4)
    {
      _dispatch_abort(1558, (a4 & 1) == 0);
    }

    v7 = 7;
    v8 = 1;
  }

LABEL_24:
  *&v4 = a3;
  WORD4(v4) = -17;
  WORD5(v4) = v7;
  HIDWORD(v4) = v10;
  *&v5 = a3;
  *(&v5 + 1) = v9 | 1;
  *&v6 = a3 + 56;
  *(&v6 + 1) = v8;
  *a1 = v4;
  *(a1 + 64) = a4;
  *(a1 + 48) = v6;
  *(a1 + 32) = 0uLL;
  *(a1 + 16) = v5;
  dispatch_kevent_debug(_dispatch_workloop_actions[a2], a1, 0, 0, "_dispatch_kq_fill_workloop_event", 1584);
}

uint64_t _dispatch_kq_poll(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = a7;
  v12 = a8;
  v11 = 0;
  v23 = &_dispatch_kq_poll_pred;
  v22 = &v11;
  v21 = _dispatch_kq_init;
  if (_dispatch_kq_poll_pred != -1)
  {
    dispatch_once_f(v23, v22, v21);
  }

  if (v11)
  {
    _dispatch_memorypressure_init();
    _voucher_activity_debug_channel_init();
  }

  while (1)
  {
    if (!v19)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid wlh";
      qword_E42C0 = 0;
      __break(1u);
      JUMPOUT(0x86428);
    }

    if (v19 == -4)
    {
      _dispatch_kq_fd();
      if (_dispatch_kevent_workqueue_enabled)
      {
        v12 |= 0x20u;
      }

      v10 = kevent_qos();
    }

    else
    {
      v12 |= 0x400u;
      if ((v12 & 2) == 0)
      {
        v12 |= 0x20000u;
      }

      v10 = kevent_id();
    }

    if (v10 != -1)
    {
      return v10;
    }

    v24 = 1;
    v25 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = **(StatusReg + 8);
    if (v9 == 2)
    {
      break;
    }

    if (v9 != 4)
    {
      if (v9 == 9)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Do not close random Unix descriptors";
        qword_E42C0 = 9;
        __break(1u);
        JUMPOUT(0x865BCLL);
      }

      if (v9 != 12)
      {
        goto LABEL_25;
      }

      _dispatch_temporary_resource_shortage();
    }
  }

  if ((v12 & 2) == 0 || (v12 & 0x20000) == 0)
  {
LABEL_25:
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected error from kevent";
    qword_E42C0 = v9;
    __break(1u);
    JUMPOUT(0x86620);
  }

  return 0;
}

void _dispatch_event_loop_leave_deferred(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  if ((a2 & 0x2000000000) != 0)
  {
    v3 = (a2 & 0x800000000) != 0;
  }

  if (v3)
  {
    if ((a2 & 0xFFFFFFFC) != 0)
    {
      v11 = a2 | 3;
    }

    else
    {
      v11 = 0;
    }

    v7 = *(a1 + 40);
      ;
    }

    if (i == *(a1 + 48))
    {
      if (i >= 16)
      {
        _dispatch_abort(2135, i < 16);
      }

      ++*(a1 + 48);
    }

    if ((a2 & 0xFFFFFFFC) != 0)
    {
      _dispatch_kq_fill_workloop_sync_event(*(a1 + 40) + 72 * i, 7, *(a1 + 24), a2, a2 | 3);
    }

    else
    {
      _dispatch_kq_fill_workloop_sync_event(*(a1 + 40) + 72 * i, 7, *(a1 + 24), a2, 0);
    }
  }

  if ((a2 & 0x2000000000) == 0)
  {
    _dispatch_abort(1758, 0);
  }

  if (a2)
  {
    if ((a2 & 0xFFFFFFFC) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 3;
  }

  if ((*(a1 + 53) & 1) == 0)
  {
    _dispatch_abort(2144, 0);
  }

  *(a1 + 53) &= ~1u;
  *(a1 + 53) &= ~2u;
  v2 = *(a1 + 24);
  v9 = *(a1 + 40);
    ;
  }

  if (j == *(a1 + 48))
  {
    if (j >= 16)
    {
      _dispatch_abort(1595, 0);
    }

    ++*(a1 + 48);
  }

  _dispatch_kq_fill_workloop_event(*(a1 + 40) + 72 * j, v10, v2, a2);
}

void _dispatch_kq_fill_workloop_sync_event(uint64_t a1, int a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v15 = 0;
  v13 = 0;
  switch(a2)
  {
    case 7:
      LOBYTE(v8) = 0;
      if ((a4 & 0x2000000000) != 0)
      {
        v8 = (BYTE4(a4) >> 3) & 1;
      }

      if ((v8 & 1) == 0)
      {
        _dispatch_abort(1615, v8 & 1);
      }

      if (((a4 >> 1) & 1) == 0)
      {
        _dispatch_abort(1616, 0);
      }

      v12 = 9;
      v14 = 392;
      v13 = 0x3800000002;
      break;
    case 8:
      v12 = 9;
      v14 = 4;
      v15 = _dispatch_thread_getspecific(4);
      v5 = (*&v15 & 0x3FFF00uLL) >> 8;
      v6 = __clz(__rbit32(v5));
      if (v5)
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
        v15 = 2303;
      }

      break;
    case 9:
      if (((a4 ^ a5) & 0xFFFFFFFC) != 0)
      {
        _dispatch_abort(1639, ((a4 ^ a5) & 0xFFFFFFFC) == 0);
      }

      v12 = 9;
      v14 = 136;
      break;
    case 10:
      v12 = 9;
      v14 = 8;
      break;
    case 11:
      v12 = 6;
      v14 = 40;
      break;
    default:
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid transition";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x86E88);
  }

  *&v9 = a5;
  WORD4(v9) = -17;
  WORD5(v9) = v12;
  HIDWORD(v9) = v15;
  *&v10 = a3;
  *(&v10 + 1) = v14;
  *&v11 = 0;
  *(&v11 + 1) = v13;
  *a1 = v9;
  *(a1 + 64) = a4;
  *(a1 + 48) = v11;
  *(a1 + 32) = 0uLL;
  *(a1 + 16) = v10;
  if ((v14 & 0x80) != 0)
  {
    *(a1 + 48) = a3 + 56;
  }

  dispatch_kevent_debug(_dispatch_workloop_actions[a2], a1, 0, 0, "_dispatch_kq_fill_workloop_sync_event", 1667);
}

uint64_t _dispatch_event_loop_cancel_waiter(uint64_t a1)
{
  v9 = a1;
  v8 = *(a1 + 48);
  v7 = 3;
  v6 = 0;
  v5 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  while (1)
  {
    _dispatch_kq_fill_workloop_sync_event(v3, 11, v8, 0, *(v9 + 100));
    result = _dispatch_kq_poll(v8, v3, 1u, v3, 1u, 0, 0, v7);
    if (!result)
    {
      return result;
    }

    v2 = ((*(v9 + 106) >> 5) & 1) == 0;
    v17 = v3;
    v16 = v2;
    v15 = v4;
    dispatch_kevent_debug("received error", v3, 0, 0, "_dispatch_kevent_workloop_drain_error", 1680);
    v20 = *(v17 + 5) & 0x4000;
    v19 = 1681;
    if (!v20)
    {
      _dispatch_abort(v19, 0);
    }

    *(v17 + 5) &= ~0x4000u;
    *(v17 + 7) = v15;
    *(v17 + 4) = 0;
    switch(v15)
    {
      case 2u:
        if (!v16 || (*(v17 + 5) & 2) == 0 || (*(v17 + 24) & 8) == 0 || (*(v17 + 24) & 0x20) == 0)
        {
          v14 = *(v17 + 6) << 32;
          v14 |= *(v17 + 5) << 16;
          v14 |= v15;
          v13 = v14;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v14;
          __break(1u);
          JUMPOUT(0x871F8);
        }

        v18 = 2;
        break;
      case 4u:
        if (!(v16 & 4) || (*(v17 + 24) & 4) == 0)
        {
          goto LABEL_29;
        }

        v18 = 4;
        break;
      case 0x22u:
        v12 = *(v17 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v12;
        __break(1u);
        JUMPOUT(0x8727CLL);
      case 0x46u:
        if (!(v16 & 2) || (*(v17 + 25) & 1) != 0 || !*(v17 + 6) || !*(v17 + 7))
        {
          goto LABEL_29;
        }

        v18 = 70;
        break;
      case 0x69u:
        v11 = *(v17 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v11;
        __break(1u);
        JUMPOUT(0x872B4);
      default:
LABEL_29:
        v10 = v15;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v15;
        __break(1u);
        JUMPOUT(0x872ECLL);
    }

    thread_switch(*(v9 + 100), 4, 1u);
  }
}

void _dispatch_event_loop_wake_owner(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v16 = _dispatch_thread_getspecific(29);
  if (v16)
  {
    _dispatch_abort(453, 0);
  }

  v11 = *(a1 + 48);
  v9 = 0;
  if (((a4 ^ *(a1 + 100)) & 0xFFFFFFFC) != 0)
  {
    _dispatch_abort(2212, 0);
  }

  if ((*(a1 + 106) >> 3))
  {
    _dispatch_abort(2213, 0);
  }

  if (a2 == -4 || !v16 || *(v16 + 24) != a2)
  {
    goto LABEL_43;
  }

  if ((*(v16 + 53) & 1) == 0)
  {
    _dispatch_abort(2216, 0);
  }

  *(v16 + 53) &= ~1u;
  *(v16 + 53) &= ~2u;
  if (a2 == v11)
  {
    if ((a3 & 1) == 0)
    {
      _dispatch_abort(2221, 0);
    }

    if ((a3 & 2) != 0)
    {
      _dispatch_abort(2222, 0);
    }

    if ((a4 & 2) != 0)
    {
      _dispatch_abort(2223, 0);
    }

    if (a4)
    {
      v10 = 2;
    }

    else
    {
      v10 = 5;
    }

    v20 = *(v16 + 40);
      ;
    }

    if (i == *(v16 + 48))
    {
      if (i >= 16)
      {
        _dispatch_abort(1595, 0);
      }

      ++*(v16 + 48);
    }

    _dispatch_kq_fill_workloop_event(*(v16 + 40) + 72 * i, v10, a2, a4);
    v18 = *(v16 + 40);
      ;
    }

    if (j == *(v16 + 48))
    {
      if (j >= 16)
      {
        _dispatch_abort(2235, 0);
      }

      ++*(v16 + 48);
    }

    _dispatch_kq_fill_workloop_sync_event(*(v16 + 40) + 72 * j, 9, a2, a4, *(a1 + 100));
  }

  else
  {
LABEL_43:
    if ((a3 ^ a4))
    {
      if ((a3 & 1) == 0)
      {
        _dispatch_abort(2245, 0);
      }

      if ((a4 & 2) != 0)
      {
        _dispatch_abort(2246, 0);
      }

      v9 = 1;
      _dispatch_kq_fill_workloop_event(v22, 5, a2, a4);
    }

    if ((a4 & 0x2000000000) != 0)
    {
      v4 = v9++;
      _dispatch_kq_fill_workloop_sync_event(&v22[36 * v4], 9, a2, a4, *(a1 + 100));
    }

    if ((*(a1 + 106) & 0x80) == 0 && (a3 & 0x2000000000) != 0 && (a3 & 2) == 0)
    {
      v8 = _dispatch_thread_getspecific(3);
      v5 = v9++;
      _dispatch_kq_fill_workloop_sync_event(&v22[36 * v5], 11, a2, a3, v8);
    }

    if (_dispatch_kq_poll(a2, v22, v9, v22, v9, 0, 0, 3u))
    {
      v7 = 0;
      if (v11 != -4)
      {
        v7 = v11 != a2;
      }

      if (v7)
      {
        _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight");
      }

      v21 = v27;
      dispatch_kevent_debug("received error", v22, 0, 0, "_dispatch_kevent_workloop_drain_error", 1680);
      if ((v23 & 0x4000) == 0)
      {
        _dispatch_abort(1681, 0);
      }

      v23 &= ~0x4000u;
      v26 = v21;
      v27 = 0;
      if (v21 != 2)
      {
        if (v21 != 4)
        {
          if (v21 == 34)
          {
            qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
            qword_E42C0 = v24;
            __break(1u);
            JUMPOUT(0x87E18);
          }

          if (v21 == 105)
          {
            qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
            qword_E42C0 = v28;
            __break(1u);
            JUMPOUT(0x87E54);
          }
        }

        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v21;
        __break(1u);
        JUMPOUT(0x87E90);
      }

      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
      qword_E42C0 = (v25 << 32) | (v23 << 16) | 2;
      __break(1u);
      JUMPOUT(0x87D84);
    }

    v6 = 0;
    if (v11 != -4)
    {
      v6 = v11 != a2;
    }

    if (v6)
    {
      _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight");
      _dispatch_event_loop_cancel_waiter(a1);
    }
  }
}

void _dispatch_event_loop_wait_for_ownership(uint64_t a1)
{
  v11 = *(a1 + 48);
  v7 = 0;
  v10 = *(v11 + 56);
  if ((v10 & 0xFFFFFFFC) != 0 || (v10 & 1) == 0)
  {
    LOBYTE(v5) = 0;
    if ((v10 & 0x2000000000) != 0)
    {
      v5 = (BYTE4(v10) >> 3) & 1;
    }

    if (v5)
    {
      v7 = 1;
      if ((v10 & 0xFFFFFFFC) != 0)
      {
        _dispatch_kq_fill_workloop_sync_event(v17, 7, v11, v10, v10 | 3);
      }

      else
      {
        _dispatch_kq_fill_workloop_sync_event(v17, 7, v11, v10, 0);
      }
    }
  }

  else
  {
    v7 = 1;
    _dispatch_kq_fill_workloop_event(v17, 0, v11, v10);
  }

  while (1)
  {
    _dispatch_kq_fill_workloop_sync_event(&v17[9 * v7], 8, v11, v10, *(a1 + 100));
    v8 = _dispatch_kq_poll(v11, v17, v7 + 1, v17, v7 + 1, 0, 0, 3u);
    for (i = 0; i < v8; ++i)
    {
      v6 = 0;
      if ((v17[9 * i + 3] & 4) != 0)
      {
        v6 = 4;
      }

      v14 = &v17[9 * i];
      v13 = *(v14 + 4);
      dispatch_kevent_debug("received error", v14, 0, 0, "_dispatch_kevent_workloop_drain_error", 1680);
      if ((v14[5] & 0x4000) == 0)
      {
        _dispatch_abort(1681, 0);
      }

      v14[5] &= ~0x4000u;
      *(v14 + 7) = v13;
      *(v14 + 4) = 0;
      if (v13 == 2)
      {
        v1 = (*(v14 + 6) << 32) | (v14[5] << 16) | 2;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v1;
        __break(1u);
        JUMPOUT(0x88378);
      }

      if (v13 != 4)
      {
        if (v13 == 34)
        {
          v2 = *(v14 + 3);
          qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
          qword_E42C0 = v2;
          __break(1u);
          JUMPOUT(0x883FCLL);
        }

        if (v13 == 105)
        {
          v3 = *(v14 + 8);
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
          qword_E42C0 = v3;
          __break(1u);
          JUMPOUT(0x88434);
        }

LABEL_27:
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v13;
        __break(1u);
        JUMPOUT(0x8846CLL);
      }

      if ((v6 & 4) == 0 || (v14[12] & 4) == 0)
      {
        goto LABEL_27;
      }
    }

    if (!v8)
    {
      break;
    }

    LOBYTE(v4) = 0;
    if (v8 == 1)
    {
      v4 = (v18 >> 2) & 1;
    }

    if ((v4 & 1) == 0)
    {
      _dispatch_abort(2352, v4 & 1);
    }

    dispatch_kevent_debug("restarting", v17, 0, 0, "_dispatch_event_loop_wait_for_ownership", 2353);
    v10 = v19;
    v7 = 0;
  }

  if ((*(a1 + 106) & 0x20) != 0)
  {
    _dispatch_event_loop_cancel_waiter(a1);
    *(a1 + 106) &= ~0x20u;
  }

  if ((*(a1 + 106) & 0x40) != 0)
  {
    v16 = *(a1 + 48);
    v15 = atomic_fetch_add_explicit((v16 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
    if (v15 < 0)
    {
      if (v15 <= -2)
      {
        qword_E4290 = "API MISUSE: Over-release of an object";
        __break(1u);
        JUMPOUT(0x88628);
      }

      *(v16 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v16);
    }
  }
}

void dispatch_kevent_debug(const char *a1, unsigned __int16 *a2, int a3, int a4, const char *a5, int a6)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  if (a4 <= 1)
  {
    v29[0] = 0;
  }

  else
  {
    __snprintf_chk(v29, 0x1FuLL, 0, 0x1FuLL, "%d/%d ", v26 + 1, v25);
  }

  if (!v28)
  {
    if ((v27[5] & 2) != 0)
    {
      v28 = "deleting";
    }

    else if (v27[5])
    {
      v28 = "adding";
    }

    else
    {
      v28 = "updating";
    }
  }

  v17 = _dispatch_thread_getspecific(0);
  v18 = v28;
  v19 = v27;
  v20 = *v27;
  v21 = _evfiltstr(v27[4]);
  v6 = _evflagstr(v27[5], v30, 256);
  v7 = v27[5];
  v8 = *(v27 + 6);
  v9 = *(v27 + 4);
  v10 = *(v27 + 2);
  v11 = *(v27 + 3);
  v12 = *(v27 + 5);
  v13 = *(v27 + 6);
  v14 = *(v27 + 7);
  v15 = *(v27 + 8);
  v22 = &v16;
  _dispatch_log("%u\t%p\t%s kevent[%p] %s= { ident = 0x%llx, filter = %s, flags = %s (0x%x), fflags = 0x%x, data = 0x%llx, udata = 0x%llx, qos = 0x%x, ext[0] = 0x%llx, ext[1] = 0x%llx, ext[2] = 0x%llx, ext[3] = 0x%llx }: %s #%u", 203, v17, v28, v27, v29, v20, v21, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v24, v23);
}

void _dispatch_event_loop_ensure_ownership(uint64_t a1)
{
  v7 = a1;
  v6 = 3;
  v5 = _dispatch_thread_getspecific(3);
  v4 = 0;
  v3 = 0u;
  v2 = 0u;
  memset(v1, 0, sizeof(v1));
  _dispatch_kq_fill_workloop_sync_event(v1, 9, v7, v5, v5);
  if (_dispatch_kq_poll(v7, v1, 1u, v1, 1u, 0, 0, v6))
  {
    v15 = v1;
    v14 = 0;
    v13 = v2;
    dispatch_kevent_debug("received error", v1, 0, 0, "_dispatch_kevent_workloop_drain_error", 1680);
    v18 = *(v15 + 5) & 0x4000;
    v17 = 1681;
    if (!v18)
    {
      _dispatch_abort(v17, 0);
    }

    *(v15 + 5) &= ~0x4000u;
    *(v15 + 7) = v13;
    *(v15 + 4) = 0;
    switch(v13)
    {
      case 2u:
        if ((v14 & 1) == 0 || (*(v15 + 5) & 2) == 0 || (*(v15 + 24) & 8) == 0 || (*(v15 + 24) & 0x20) == 0)
        {
          v12 = *(v15 + 6) << 32;
          v12 |= *(v15 + 5) << 16;
          v12 |= v13;
          v11 = v12;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v12;
          __break(1u);
          JUMPOUT(0x88B48);
        }

        v16 = 2;
        break;
      case 4u:
        if ((v14 & 4) == 0 || (*(v15 + 24) & 4) == 0)
        {
          goto LABEL_28;
        }

        v16 = 4;
        break;
      case 0x22u:
        v10 = *(v15 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v10;
        __break(1u);
        JUMPOUT(0x88BCCLL);
      case 0x46u:
        if ((v14 & 2) == 0 || (*(v15 + 25) & 1) != 0 || !*(v15 + 6) || !*(v15 + 7))
        {
          goto LABEL_28;
        }

        v16 = 70;
        break;
      case 0x69u:
        v9 = *(v15 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v9;
        __break(1u);
        JUMPOUT(0x88C04);
      default:
LABEL_28:
        v8 = v13;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v13;
        __break(1u);
        JUMPOUT(0x88C3CLL);
    }

    __break(1u);
  }
}

void _dispatch_event_loop_end_ownership(uint64_t a1, char a2, unint64_t a3, char a4)
{
  v7 = 0;
  if (((a3 >> 37) & 1) == 0)
  {
    _dispatch_abort(2396, 0);
  }

  if (a3)
  {
    v7 = 1;
    _dispatch_kq_fill_workloop_event(v13, 1, a1, a3);
  }

  else if (a2)
  {
    if ((a3 & 0xFF80000000000000) == 0)
    {
      _dispatch_abort(2401, (a3 & 0xFF80000000000000) != 0);
    }

    v7 = 1;
    _dispatch_kq_fill_workloop_event(v13, 4, a1, a3);
  }

  if ((a2 & 2) == 0)
  {
    v6 = _dispatch_thread_getspecific(3);
    v4 = v7++;
    _dispatch_kq_fill_workloop_sync_event(&v13[36 * v4], 11, a1, a3, v6);
  }

  if (_dispatch_kq_poll(a1, v13, v7, v13, v7, 0, 0, 3u))
  {
    v12 = v18;
    dispatch_kevent_debug("received error", v13, 0, 0, "_dispatch_kevent_workloop_drain_error", 1680);
    if ((v14 & 0x4000) == 0)
    {
      _dispatch_abort(1681, 0);
    }

    v14 &= ~0x4000u;
    v17 = v12;
    v18 = 0;
    if (v12 != 2)
    {
      if (v12 != 4)
      {
        if (v12 == 34)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
          qword_E42C0 = v15;
          __break(1u);
          JUMPOUT(0x89084);
        }

        if (v12 == 105)
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
          qword_E42C0 = v19;
          __break(1u);
          JUMPOUT(0x890BCLL);
        }
      }

      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
      qword_E42C0 = v12;
      __break(1u);
      JUMPOUT(0x890F4);
    }

    qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
    qword_E42C0 = (v16 << 32) | (v14 << 16) | 2;
    __break(1u);
    JUMPOUT(0x89000);
  }

  _dispatch_event_loop_assert_not_owned(a1);
  v5 = 2 * (a4 & 1);
  if (a2)
  {
    ++v5;
  }

  if (a3)
  {
    --v5;
  }

  if (v5 < 0)
  {
    _dispatch_abort(2422, v5 >= 0);
  }

  if (v5 >= 1)
  {
    _dispatch_release_n(a1, v5);
  }
}

uint64_t _dispatch_event_loop_assert_not_owned(uint64_t result)
{
  v3 = result;
  if (result != -4)
  {
    memset(__b, 0, sizeof(__b));
    result = _dispatch_kevent_workloop_get_info(v3, __b);
    if (result)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v1 = __b[5] != *(StatusReg - 8);
      v5 = v1;
      v4 = 2437;
      if (!v1)
      {
        _dispatch_abort(v4, v5);
      }
    }
  }

  return result;
}

BOOL _dispatch_kevent_workloop_get_info(uint64_t a1, _WORD *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 131075;
  memset(__b, 0, sizeof(__b));
  __b[4] = -17;
  __b[5] = 5;
  memcpy(a2, __b, 0x48uLL);
  if (_dispatch_kq_poll(v8, v7, 1u, v7, 1u, 0, 0, v6))
  {
    v11 = v7[5] & 0x4000;
    v10 = 1474;
    if (!v11)
    {
      _dispatch_abort(v10, 0);
    }

    return *(v7 + 4) == 16;
  }

  else
  {
    memset(v4, 0, sizeof(v4));
    WORD1(v4[1]) = 0x4000;
    v4[4] = 2;
    memcpy(v7, v4, 0x48uLL);
    return 1;
  }
}

void _dispatch_event_loop_timer_arm(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 / 3;
  v12 = a2 / 3;
  if (!*(a5 + 8 * (a2 / 3)))
  {
    mach_get_times();
    *(a5 + 16) = 0;
  }

  v6 = a3 + *(a5 + 8 * v12);
  if (_dispatch_timers_force_max_leeway)
  {
    v6 += a4;
    a4 = 0;
  }

  _dispatch_event_loop_timer_program(a1, a2, v6, a4, 5);
  if (v7 == 2 && _dispatch_mach_calendar_pred != -1)
  {
    dispatch_once_f(&_dispatch_mach_calendar_pred, 0, _dispatch_mach_host_notify_update);
  }
}

void _dispatch_event_loop_timer_program(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = _dispatch_thread_getspecific(27);
  v6 = 0x2000000;
  if (v7 != -4)
  {
    v14 = *(v12 + 32 * v11 + 5);
    v13 = 0;
    if (v14)
    {
      v13 = 1 << (v14 + 7);
    }

    v6 = v13 | 0xFF;
  }

  memset(__b, 0, sizeof(__b));
  __b[0] = v11 | 0xFFFFFFFFFFFFFF00;
  LOWORD(__b[1]) = -7;
  WORD1(__b[1]) = v8 | 0x10;
  HIDWORD(__b[1]) = v6;
  __b[2] = v12;
  __b[3] = _dispatch_timer_index_to_fflags[v11];
  __b[4] = v10;
  __b[5] = 0;
  *&__b[7] = 0u;
  __b[6] = v9;
  _dispatch_kq_deferred_update(v7, __b);
}

uint64_t _dispatch_source_proc_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = _dispatch_unote_create_with_handle(a1, a2, a3);
  if (v5 && (v4 & 0x4000000) != 0)
  {
    *(v5 + 29) = *(v5 + 29) & 0xFB | 4;
  }

  return v5;
}

uint64_t _dispatch_source_vm_create(uint64_t a1, uint64_t a2)
{
  v3 = off_DD270(&_dispatch_source_type_memorystatus, a2, 2);
  if (v3)
  {
    *(v3 + 29) = *(v3 + 29) & 0xEF | 0x10;
  }

  return v3;
}

BOOL _dispatch_mach_msg_sender_is_kernel(uint64_t a1)
{
  audit_trailer = _dispatch_mach_msg_get_audit_trailer(a1);
  if (!audit_trailer)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: message received without expected trailer";
    __break(1u);
    JUMPOUT(0x89828);
  }

  return *(audit_trailer + 40) == 0;
}

uint64_t _dispatch_mach_msg_get_audit_trailer(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + ((*(a1 + 4) + 3) & 0xFFFFFFFFFFFFFFFCLL));
  if (!*v3 && v3[1] >= 0x34uLL)
  {
    return a1 + ((*(a1 + 4) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v2;
}

uint64_t _dispatch_get_mach_host_port()
{
  if (_dispatch_mach_host_port_pred != -1)
  {
    dispatch_once_f(&_dispatch_mach_host_port_pred, 0, _dispatch_mach_host_port_init);
  }

  return _dispatch_mach_host_port;
}

void _dispatch_mach_host_port_init(uint64_t a1)
{
  v4 = a1;
  special_port = 0;
  port = 0;
  v1 = mach_host_self();
  special_port = host_get_special_port(v1, -1, 1, &port);
  if (special_port == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x899B4);
  }

  if (special_port)
  {
    if (special_port != 4)
    {
      v6 = special_port;
      v5 = 2969;
      _dispatch_bug(2969, special_port);
    }
  }

  else
  {
    special_port = mach_port_deallocate(mach_task_self_, v1);
    if (special_port == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x89A24);
    }

    v1 = port;
  }

  if (!v1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Could not get unprivileged host port";
    qword_E42C0 = special_port;
    __break(1u);
    JUMPOUT(0x89ACCLL);
  }

  _dispatch_mach_host_port = v1;
}

uint64_t _dispatch_mach_notify_port_deleted(uint64_t a1, unsigned int a2)
{
  _dispatch_log("Corruption: Mach send/send-once/dead-name right 0x%x deleted prematurely", a2);
  _dispatch_mach_notify_merge(a2, 4, 1u);
  return 0;
}

uint64_t _dispatch_mach_notify_merge(uint64_t result, int a2, unsigned __int8 a3)
{
  v9 = 0;
  v8 = 4;
    ;
  }

  if (i)
  {
    *(i + 56) &= 0xFFFFFFFFFFFFFFF2;
    if ((a3 & 1) != 0 || (result = _dispatch_kevent_mach_notify_resume(i, a2, 0), (result & 1) == 0))
    {
      v8 = 16;
      *(i + 34) |= 2u;
    }

    *(i + 64) = 0;
    for (j = *(i + 16); ; j = v9)
    {
      v5 = 0;
      if (j)
      {
        v9 = *j;
        v5 = 1;
      }

      if ((v5 & 1) == 0)
      {
        break;
      }

      if (*(i + 64))
      {
        if (((a3 ^ 1) & 1) == 0)
        {
          _dispatch_abort(3136, 0);
        }

        return result;
      }

      v7 = j + 3;
      v6 = a2 & j[7];
      *(j + 54) = 0;
      if ((a3 & 1) != 0 || v6)
      {
        _dispatch_retain_2(~j[4]);
        if (a3)
        {
          _dispatch_unote_unregister_muxed(v7);
        }

        if (v6)
        {
          v4 = 0;
          if (*v7)
          {
            v4 = *v7;
          }

          if (*(v4 + 9) == 2)
          {
            atomic_fetch_or_explicit((j + 12), v6, memory_order_relaxed);
          }
        }

        v3 = 0;
        if (*v7)
        {
          v3 = *v7;
        }

        result = (*(v3 + 48))(v7, v8, v6, 0);
      }
    }
  }

  return result;
}

uint64_t _dispatch_mach_notify_dead_name(uint64_t a1, mach_port_name_t a2)
{
  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: dead-name notification", 3174, v2, a2);
  _dispatch_mach_notify_merge(a2, 1, 1u);
  if (mach_port_deallocate(mach_task_self_, a2) == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x8A0A0);
  }

  return 0;
}

uint64_t _dispatch_mach_notify_send_possible(uint64_t a1, unsigned int a2)
{
  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: send-possible notification", 3190, v2, a2);
  _dispatch_mach_notify_merge(a2, 8, 0);
  return 0;
}

void _dispatch_mach_notification_set_armed(uint64_t result)
{
  if (*(result + 29))
  {
    _dispatch_abort(622, (*(result + 29) & 1) == 0);
  }

  v3 = *(result - 8);
  if (v3)
  {
    v3[8] = 1;
    for (i = v3[2]; i; i = *i)
    {
      *(i + 54) = 1;
    }

    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: send-possible notification armed", 3209, v1, v3[3]);
  }
}

uint64_t _dispatch_source_mach_send_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v4 = a3;
  if (!a3)
  {
    v4 = 1;
  }

  if (!a2)
  {
    v5 = 0xFFFFFFFFLL;
  }

  return _dispatch_unote_create_with_handle(a1, v5, v4);
}

BOOL _dispatch_mach_send_update(uint64_t a1)
{
  if ((*(a1 + 34) & 2) != 0)
  {
    return _dispatch_kevent_mach_notify_resume(a1, 0, *(a1 + 48));
  }

  else
  {
    return _dispatch_kevent_mach_notify_resume(a1, *(a1 + 48), 0);
  }
}

uint64_t _dispatch_mach_send_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _dispatch_unote_create_without_handle(a1, a2, a3);
  if (v4)
  {
    *(v4 + 88) = 0x80000000;
    *(v4 + 56) = 0;
  }

  return v4;
}

void _dispatch_mach_notification_event(uint64_t a1)
{
  v1 = *(a1 + 24);
  qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected non message event";
  qword_E42C0 = v1;
  __break(1u);
}

void _dispatch_mach_notification_merge_msg(uint64_t a1, int a2, mach_msg_header_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v29;
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  memset(__b, 0, sizeof(__b));
  v29[5] = 1;
  v29[4] = 2896;
  v29[3] = 1;
  v29[2] = 2898;
  if (v24->msgh_id > 77)
  {
    goto LABEL_6;
  }

  is_kernel = _dispatch_mach_msg_sender_is_kernel(v24);
  v8 = v11;
  v18 = is_kernel;
  v11[1] = is_kernel;
  *v8 = 2900;
  if (!v8[1])
  {
    _dispatch_bug(*v11, v11[1]);
  }

  v17 = v18;
  if (v18)
  {
LABEL_6:
    v16 = libdispatch_internal_protocol_server(v24, __b);
    if (!v16 && __b[8] == -303 && (v24->msgh_id == 951 || v24->msgh_id == 950))
    {
      v9 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tcalendar-change notification", 2909, v9);
      _dispatch_timers_calendar_change();
      _dispatch_mach_host_notify_update();
      v16 = 1;
      __b[8] = 0;
    }

    v15 = v16;
    v28 = v16;
    v27 = 2915;
    if (!v16)
    {
      _dispatch_bug(v27, v28);
    }

    v14 = v15;
    if (v15 && __b[8] != -305)
    {
      v10 = v11;
      v13 = __b[8];
      v11[7] = __b[8];
      v10[6] = 2916;
      if (v10[7])
      {
        _dispatch_bug(v11[6], v11[7]);
      }

      v12 = v13;
    }

    if (!v16 || __b[8] && __b[8] != -305)
    {
      mach_msg_destroy(v24);
    }
  }

  else
  {
    mach_msg_destroy(v24);
  }

  if ((v25 & 0x10000) != 0)
  {
    free(v24);
  }

  _dispatch_unote_resume(v26);
}

uint64_t _dispatch_mach_recv_direct_merge_evt(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 0x200) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
    __break(1u);
    JUMPOUT(0x8A75CLL);
  }

  return _dispatch_source_merge_evt(a1, a2, a3, a4, a5, a6, a7, a8);
}

void _dispatch_mach_reply_merge_evt(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 0x200) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
  }

  else
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Unexpected event";
    qword_E42C0 = a3 | (a2 << 32);
  }

  __break(1u);
  JUMPOUT(0x8A7C8);
}

void _dispatch_kevent_workloop_override_self(uint64_t a1, unint64_t a2, int a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = *(a1 + 24);
  v7 = 3;
  v6 = 0;
  v5 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  v13 = *(a1 + 53) & 1;
  v12 = 1868;
  if (!v13)
  {
    _dispatch_abort(v12, 0);
  }

  *(v11 + 53) &= ~2u;
  _dispatch_kq_fill_workloop_event(v3, 0, v8, v10);
  if (_dispatch_kq_poll(v8, v3, 1u, v3, 1u, 0, 0, v7))
  {
    v21 = v3;
    v20 = 0;
    v19 = v4;
    dispatch_kevent_debug("received error", v3, 0, 0, "_dispatch_kevent_workloop_drain_error", 1680);
    v24 = *(v21 + 5) & 0x4000;
    v23 = 1681;
    if (!v24)
    {
      _dispatch_abort(v23, 0);
    }

    *(v21 + 5) &= ~0x4000u;
    *(v21 + 7) = v19;
    *(v21 + 4) = 0;
    switch(v19)
    {
      case 2u:
        if ((v20 & 1) == 0 || (*(v21 + 5) & 2) == 0 || (*(v21 + 24) & 8) == 0 || (*(v21 + 24) & 0x20) == 0)
        {
          v18 = *(v21 + 6) << 32;
          v18 |= *(v21 + 5) << 16;
          v18 |= v19;
          v17 = v18;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v18;
          __break(1u);
          JUMPOUT(0x8AAD8);
        }

        v22 = 2;
        break;
      case 4u:
        if ((v20 & 4) == 0 || (*(v21 + 24) & 4) == 0)
        {
          goto LABEL_30;
        }

        v22 = 4;
        break;
      case 0x22u:
        v16 = *(v21 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v16;
        __break(1u);
        JUMPOUT(0x8AB5CLL);
      case 0x46u:
        if ((v20 & 2) == 0 || (*(v21 + 25) & 1) != 0 || !*(v21 + 6) || !*(v21 + 7))
        {
          goto LABEL_30;
        }

        v22 = 70;
        break;
      case 0x69u:
        v15 = *(v21 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v15;
        __break(1u);
        JUMPOUT(0x8AB94);
      default:
LABEL_30:
        v14 = v19;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v19;
        __break(1u);
        JUMPOUT(0x8ABCCLL);
    }

    __break(1u);
  }

  if (v9)
  {
    _dispatch_release_2_no_dispose(v8);
  }
}

void _dispatch_kevent_workloop_poke_drain(uint64_t a1)
{
  v10 = _dispatch_thread_getspecific(29);
  if (v10)
  {
    _dispatch_abort(453, (v10 & 1) == 0);
  }

  v8 = *(a1 + 16);
  if ((*(a1 + 27) & 0x80) != 0)
  {
    v6 = 0;
    if ((*(a1 + 10) & 0x4000) != 0)
    {
      v6 = *(a1 + 32) == 2;
    }

    if (!v6)
    {
      _dispatch_abort(1778, v6);
    }

    dispatch_kevent_debug("ignoring", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 1779);
    return;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    _dispatch_abort(1783, 0);
  }

  if ((*(a1 + 10) & 0x4000) != 0)
  {
    v7 = *(a1 + 64);
    v13 = *(a1 + 32);
    dispatch_kevent_debug("received error", a1, 0, 0, "_dispatch_kevent_workloop_drain_error", 1680);
    if ((*(a1 + 10) & 0x4000) == 0)
    {
      _dispatch_abort(1681, 0);
    }

    *(a1 + 10) &= ~0x4000u;
    *(a1 + 28) = v13;
    *(a1 + 32) = 0;
    switch(v13)
    {
      case 2:
        v12 = (*(a1 + 24) << 32) | (*(a1 + 10) << 16) | 2;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v12;
        __break(1u);
        JUMPOUT(0x8AF64);
      case 4:
LABEL_28:
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v13;
        __break(1u);
        JUMPOUT(0x8B06CLL);
      case 34:
        v11 = *(a1 + 12);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v11;
        __break(1u);
        JUMPOUT(0x8AFF8);
    }

    if (v13 != 70)
    {
      if (v13 == 105)
      {
        v1 = *(a1 + 64);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v1;
        __break(1u);
        JUMPOUT(0x8B034);
      }

      goto LABEL_28;
    }

    if ((*(a1 + 25) & 1) != 0 || !*(a1 + 48) || !*(a1 + 56))
    {
      goto LABEL_28;
    }

    if ((v7 & 0x2000000000) != 0)
    {
      if (((v7 >> 37) & 1) == 0)
      {
        _dispatch_abort(1758, 0);
      }

      if (v7)
      {
        if ((v7 & 0xFFFFFFFC) != 0)
        {
          v14 = 2;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 3;
      }

      if (v14)
      {
        _dispatch_kq_fill_workloop_event(a1, v14, v8, v7);
        _dispatch_kq_deferred_update(v8, a1);
      }

      else
      {
        dispatch_kevent_debug("retry drain", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 1806);
        if (*(v10 + 8))
        {
          _dispatch_abort(1746, 0);
        }

        *(v10 + 53) |= 1u;
        _dispatch_retain(v8);
        *v10 = *(v8 + 24);
        *(v10 + 8) = v8;
        v15 = (*(a1 + 12) & 0x3FFF00) >> 8;
        v2 = __clz(__rbit32(v15));
        if (v15)
        {
          v3 = v2 + 1;
        }

        else
        {
          v3 = 0;
        }

        *(v10 + 16) = v3;
      }
    }

    else
    {
      if ((*(a1 + 10) & 2) != 0)
      {
        _dispatch_abort(1791, (*(a1 + 10) & 2) == 0);
      }

      dispatch_kevent_debug("ignoring", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 1797);
    }
  }

  else if (*(v10 + 53))
  {
    dispatch_kevent_debug("ignoring", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 1818);
  }

  else
  {
    dispatch_kevent_debug("got drain", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 1823);
    if (*(v10 + 8))
    {
      _dispatch_abort(1746, 0);
    }

    *(v10 + 53) |= 1u;
    _dispatch_retain(v8);
    *v10 = *(v8 + 24);
    *(v10 + 8) = v8;
    v16 = (*(a1 + 12) & 0x3FFF00) >> 8;
    v4 = __clz(__rbit32(v16));
    if (v16)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    *(v10 + 16) = v5;
  }
}

void _dispatch_kevent_print_error(void *a1)
{
  v6 = 0;
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tkevent[0x%llx]: handling error", 400, v1, a1[2]);
  if ((*(a1 + 5) & 2) != 0)
  {
    if ((*(a1 + 5) & 0x100) != 0 && a1[4] == 36)
    {
      return;
    }
  }

  else if (a1[2])
  {
    *(a1 + 5) |= *((a1[2] & 0xFFFFFFFFFFFFFFFELL) + 34);
  }

  else if (a1[2])
  {
    v6 = a1[2];
    if (!*(v6 + 16))
    {
      *(a1 + 5) |= 1u;
    }
  }

  if (a1[4])
  {
    if (a1[4] == 34)
    {
      v2 = *(a1 + 3);
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid kevent priority";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x8B628);
    }

    v3 = _evfiltstr(*(a1 + 4));
    v5 = v3;
    if (a1[2])
    {
      if ((*(a1 + 5) & 2) != 0)
      {
        _dispatch_bug_kevent_client("kevent", v3, "delete", *(a1 + 8), *a1, a1[2], v6);
      }

      else if (*(a1 + 5))
      {
        _dispatch_bug_kevent_client("kevent", v3, "add", *(a1 + 8), *a1, a1[2], v6);
      }

      else
      {
        if ((*(a1 + 5) & 4) != 0)
        {
          v4 = "enable";
        }

        else
        {
          v4 = "monitor";
        }

        _dispatch_bug_kevent_client("kevent", v5, v4, *(a1 + 8), *a1, a1[2], v6);
      }
    }

    else
    {
      _dispatch_bug_kevent_client("kevent", v3, 0, *(a1 + 8), *a1, a1[2], v6);
    }
  }
}

uint64_t _dispatch_kevent_has_machmsg_rcv_error(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (v3 >> 26 != 4 || ((v3 >> 14) & 0xFFF) != 1)
    {
      v1 = *(a1 + 24) | (*(a1 + 10) << 32);
      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from mach recv";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x8B7E8);
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

void _dispatch_kevent_mach_msg_drain(uint64_t a1)
{
  v49 = a1;
  v48 = _dispatch_kevent_mach_msg_buf(a1);
  v47 = _dispatch_kevent_mach_msg_size(v49);
  v22 = 0;
  *&v46[8] = 0;
  *v46 = _dispatch_kevent_mach_msg_aux_size(v49);
  v45 = 0;
  v56 = v49;
  v60 = v49;
  v3 = (*(v49 + 16) & 1) == 0;
  v59 = (*(v49 + 16) & 1) == 0;
  v58 = 390;
  if (!v3)
  {
    _dispatch_abort(v58, v59);
  }

  v57 = *(v56 + 16);
  v45 = v57;
  v44 = *(v49 + 60);
  v43 = *(v49 + 12);
  v42 = *(v49 + 10);
  v41 = *(v49 + 24);
  if (v41 == 268451844)
  {
    if (!v47)
    {
      v40 = v41;
      v11 = v1;
      v12 = v2;
      qword_E4290 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message size";
      qword_E42C0 = v41;
      __break(1u);
      JUMPOUT(0x8B948);
    }

    if (!*(v49 + 32))
    {
      v11 = v1;
      v12 = v2;
      qword_E4290 = "BUG IN LIBDISPATCH: MACH_RCV_LARGE_IDENTITY with no identity";
      __break(1u);
      JUMPOUT(0x8BAC0);
    }

    if (_dispatch_kevent_mach_msg_size(v49) >= 0xFFFFFFBC)
    {
      v37 = _dispatch_kevent_mach_msg_size(v49);
      v11 = v1;
      v12 = v2;
      qword_E4290 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with overlarge message";
      qword_E42C0 = v37;
      __break(1u);
      JUMPOUT(0x8BB18);
    }

    v36 = 0;
    if ((*(v45 + 33) & 2) != 0)
    {
      v36 |= 0x200u;
    }

    v35 = v36 & 0xF8FFF6F1 | 0x700090A;
    v47 += 68;
    v48 = malloc_type_malloc();
    *v46 = 40;
    v18 = v10;
    bzero(v10, 0x28uLL);
    *&v46[4] = v18;
    v19 = v61;
    v33 = v48;
    LODWORD(v34) = 0;
    v20 = &v34 + 1;
    v32 = v48;
    v53 = v48;
    v52 = 3366;
    if (!v48)
    {
      _dispatch_bug(v52, 0);
    }

    v31[1] = v32;
    if (v32)
    {
      v17 = v47;
    }

    else
    {
      v17 = 0;
    }

    v4 = v19;
    *v20 = v17;
    v5 = v33;
    v4[2] = v34;
    *v4 = v5;
    v15 = &v62;
    v30 = *&v46[4];
    LODWORD(v31[0]) = 0;
    v16 = v31 + 1;
    v29 = *&v46[4];
    v51 = *&v46[4];
    v50 = 3372;
    if (!*&v46[4])
    {
      _dispatch_bug(v50, 0);
    }

    v28 = v29;
    if (v29)
    {
      v14 = *v46;
    }

    else
    {
      v14 = 0;
    }

    v6 = v15;
    *v16 = v14;
    v7 = v30;
    v6[2] = v31[0];
    *v6 = v7;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v8 = *(v49 + 32);
    v24 = 0;
    v23 = 0u;
    v41 = mach_msg2(v61, v35 | 0x100000000, &v23, 0, 2u, v8, 0, 0);
    if (!v41)
    {
      v42 |= 0x10000u;
      if (!**&v46[4])
      {
        *&v46[4] = 0;
      }

      _dispatch_kevent_mach_msg_recv(v45, v42, v48, *&v46[4], v44, v43);
      return;
    }

    if (v41 == 268451844)
    {
      v13 = v48[5];
      v9 = _dispatch_kevent_mach_msg_size(v49);
      _dispatch_log("BUG in libdispatch client: _dispatch_kevent_mach_msg_drain: dropped message too large to fit in memory: id = 0x%x, size = %u", v13, v9);
      v41 = 0;
    }

    free(v48);
  }

  else
  {
    if (v41 == 268451848)
    {
      v55 = v47 == 0;
      v54 = 3324;
      if (v47)
      {
        _dispatch_abort(v54, v55);
      }

      v39 = v41;
      v11 = v1;
      v12 = v2;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to copyout msg, possible port leak";
      qword_E42C0 = v41;
      __break(1u);
      JUMPOUT(0x8B9D4);
    }

    if (!v48)
    {
      v38 = v41;
      v11 = v1;
      v12 = v2;
      qword_E4290 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message";
      qword_E42C0 = v41;
      __break(1u);
      JUMPOUT(0x8BA1CLL);
    }

    if (!v41)
    {
      if (*v46)
      {
        v21 = v48 + v47;
      }

      else
      {
        v21 = 0;
      }

      *&v46[4] = v21;
      _dispatch_kevent_mach_msg_recv(v45, v42, v48, v21, v44, v43);
      return;
    }
  }

  if (v41)
  {
    _dispatch_bug_mach_client("_dispatch_kevent_mach_msg_drain: message reception failed", v41);
  }
}

uint64_t _dispatch_kevent_merge_muxed(uint64_t result)
{
  v5 = result;
  v4 = *(result + 16) & 0xFFFFFFFFFFFFFFFELL;
  v2 = 0;
  if ((*(result + 10) & 0x12) != 0)
  {
    *(v4 + 34) |= 2u;
  }

  for (i = *(v4 + 16); ; i = v2)
  {
    v1 = 0;
    if (i)
    {
      v2 = *i;
      v1 = 1;
    }

    if ((v1 & 1) == 0)
    {
      break;
    }

    result = _dispatch_kevent_merge(i + 6, v5);
  }

  return result;
}

uint64_t _dispatch_kevent_merge(_DWORD *a1, uint64_t a2)
{
  v13 = 0;
  if (*a1)
  {
    v13 = *a1;
  }

  v17 = *(v13 + 9);
  _dispatch_retain_2(~*(a1 + 1));
  if (v17)
  {
    switch(v17)
    {
      case 1u:
        v16 = *(a2 + 24);
        if (*(a1 + 28) == -8)
        {
          v16 = 2;
        }

        break;
      case 2u:
        v16 = (*(a2 + 24) & a1[8]);
        if ((*(a1 + 29) & 4) != 0)
        {
          v14 = v16 | (*(a2 + 32) << 32);
          for (i = *(a1 + 9); ; i = v3)
          {
            v2 = i;
            v3 = i;
            atomic_compare_exchange_strong_explicit((a1 + 18), &v3, i | v14, memory_order_relaxed, memory_order_relaxed);
            if (v3 == v2)
            {
              break;
            }
          }
        }

        else if (*(a1 + 28) == -8)
        {
          v16 = 2;
          *(a1 + 9) = 2;
        }

        else if ((*(a2 + 24) & a1[8]) != 0)
        {
          atomic_fetch_or_explicit((a1 + 18), v16, memory_order_relaxed);
        }

        break;
      case 3u:
        if (*(a2 + 32) < 0)
        {
          _dispatch_abort(514, 0);
        }

        v16 = *(a2 + 32);
        *(a1 + 9) = ~v16;
        break;
      case 4u:
        v16 = *(a2 + 32);
        if (v16)
        {
          atomic_fetch_add_explicit((a1 + 18), v16, memory_order_relaxed);
        }

        break;
      default:
        qword_E4290 = "BUG IN LIBDISPATCH: Corrupt unote action";
        qword_E42C0 = v17;
        __break(1u);
        JUMPOUT(0x8C390);
    }
  }

  else
  {
    v16 = *(a2 + 32);
  }

  v20 = *(a2 + 10);
  LOBYTE(v12) = 0;
  if ((v20 & 0x100) == 0)
  {
    v12 = (v20 >> 4) & 1;
  }

  if (v12)
  {
    _dispatch_unote_unregister(a1, 5);
    goto LABEL_54;
  }

  if ((v20 & 2) != 0)
  {
    v21 = *(a1 + 2) & 0xFFFFFFFFFFFFFFFCLL;
    if (v21)
    {
      if (v21 != -4)
      {
        v22 = atomic_fetch_add_explicit((v21 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
        if (v22 < 0)
        {
          if (v22 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x8C518);
          }

          *(v21 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v21);
        }
      }
    }

    *(a1 + 2) = 2;
  }

  else if ((*(a2 + 10) & 0x210) != 0)
  {
    *(a1 + 2) = *(a1 + 2) & 0xFFFFFFFFFFFFFFFCLL | 2;
  }

  else
  {
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 2) &= ~1uLL;
  }

  v10 = _dispatch_thread_getspecific(0);
  v11 = ~*(a1 + 1);
  if ((v20 & 0x200) != 0)
  {
    v9 = "vanished";
  }

  else
  {
    if ((v20 & 2) != 0)
    {
      v8 = "deleted oneshot";
    }

    else
    {
      if ((v20 & 0x10) != 0)
      {
        v4 = "oneshot";
      }

      else
      {
        v4 = "disarmed";
      }

      v8 = v4;
    }

    v9 = v8;
  }

  v5 = _evfiltstr(*(a1 + 28));
  _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 480, v10, v11, v9, a1, v5, a1[6]);
LABEL_54:
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  return (*(v7 + 48))(a1, *(a2 + 10), v16, *(a2 + 12) & 0xFFFFFFLL);
}

uint64_t _dispatch_kevent_mach_msg_recv(void *a1, unsigned int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a3[1] + 68;
  if (((a3[1] + 68) & 0x100000000) != 0)
  {
    v6 = a3[1];
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message received";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x8C8F0);
  }

  if (!a3[3])
  {
    v7 = a3[5];
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Received message with MACH_PORT_NULL msgh_local_port";
    qword_E42C0 = v7;
    __break(1u);
    JUMPOUT(0x8C93CLL);
  }

  _dispatch_retain_2(~a1[1]);
  LOBYTE(v16) = 0;
  if ((a2 & 0x100) == 0)
  {
    v16 = (a2 >> 4) & 1;
  }

  if (v16)
  {
    _dispatch_unote_unregister(a1, 5);
    goto LABEL_32;
  }

  if ((a2 & 2) != 0)
  {
    v24 = a1[2] & 0xFFFFFFFFFFFFFFFCLL;
    if (v24)
    {
      if (v24 != -4)
      {
        v25 = atomic_fetch_add_explicit((v24 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
        if (v25 < 0)
        {
          if (v25 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x8CAE0);
          }

          *(v24 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v24);
        }
      }
    }

    a1[2] = 2;
  }

  else if ((a2 & 0x210) != 0)
  {
    a1[2] = a1[2] & 0xFFFFFFFFFFFFFFFCLL | 2;
  }

  else
  {
    if ((a2 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    a1[2] &= ~1uLL;
  }

  v14 = _dispatch_thread_getspecific(0);
  v15 = ~a1[1];
  if ((a2 & 0x200) != 0)
  {
    v13 = "vanished";
  }

  else
  {
    if ((a2 & 2) != 0)
    {
      v12 = "deleted oneshot";
    }

    else
    {
      if ((a2 & 0x10) != 0)
      {
        v8 = "oneshot";
      }

      else
      {
        v8 = "disarmed";
      }

      v12 = v8;
    }

    v13 = v12;
  }

  v9 = _evfiltstr(*(a1 + 28));
  _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", 480, v14, v15, v13, a1, v9, *(a1 + 6));
LABEL_32:
  v11 = 0;
  if (*a1)
  {
    v11 = *a1;
  }

  return (*(v11 + 56))(a1, a2, a3, v17, a4, a5, a6);
}

uint64_t _dispatch_kq_init(_BYTE *a1)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  if (getenv("LIBDISPATCH_TIMERS_FORCE_MAX_LEEWAY"))
  {
    _dispatch_timers_force_max_leeway = 1;
  }

  *a1 = 1;
  _dispatch_kevent_workqueue_init();
  if (_dispatch_kevent_workqueue_enabled)
  {
    _dispatch_kq_fd();
    while (1)
    {
      result = kevent_qos();
      if (result != -1)
      {
        break;
      }

      v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (v6 != 4)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Failed to initalize workqueue kevent";
        qword_E42C0 = v6;
        __break(1u);
        JUMPOUT(0x8CF68);
      }
    }
  }

  else
  {
    _dispatch_kq_create(&qword_E0120);
    v5 = 0;
    if (*off_E0118)
    {
      v5 = *off_E0118;
    }

    return (*(v5 + 72))(off_E0118, &_dispatch_mgr_q, 0, v2, v3, v4);
  }

  return result;
}

void _dispatch_kq_create(void *a1)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  v3 = guarded_kqueue_np();
  if (v3 == -1)
  {
    v2 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v2 != 12)
    {
      if (v2 != 23)
      {
        if (v2 == 24)
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: kqueue() failure: process is out of file descriptors";
          qword_E42C0 = 24;
          __break(1u);
          JUMPOUT(0x8D538);
        }

        qword_E4290 = "BUG IN LIBDISPATCH: kqueue() failure";
        qword_E42C0 = v2;
        __break(1u);
        JUMPOUT(0x8D5ECLL);
      }

      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: kqueue() failure: system is out of file descriptors";
      qword_E42C0 = 23;
      __break(1u);
      JUMPOUT(0x8D574);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: kqueue() failure: kernel is out of memory";
    qword_E42C0 = 12;
    __break(1u);
    JUMPOUT(0x8D5B0);
  }

  v1 = kevent_qos();
  if (v1)
  {
    _dispatch_bug(660, v1);
  }

  *a1 = v3;
}

void _dispatch_memorypressure_create(uintptr_t a1)
{
  v1 = dispatch_source_create(&_dispatch_source_type_memorystatus, 0, a1, &_dispatch_mgr_q);
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

uint64_t _dispatch_memorypressure_handler(dispatch_source_s *a1)
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
    if (_firehose_task_buffer)
    {
      v4 = _firehose_task_buffer;
      v3 = atomic_fetch_and_explicit((_firehose_task_buffer + 512), 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed);
      if (v3 != (v3 & 0xFFFFFFFFFFFFFFFELL))
      {
        firehose_buffer_update_limits(v4);
      }
    }
  }

  if ((data & 2) != 0)
  {
    _dispatch_memory_warn = 1;
    _dispatch_continuation_cache_limit = 16;
    if (_firehose_task_buffer)
    {
      v6 = _firehose_task_buffer;
      v5 = atomic_fetch_or_explicit((_firehose_task_buffer + 512), 1uLL, memory_order_relaxed);
      if (v5 != (v5 | 1))
      {
        firehose_buffer_update_limits(v6);
      }
    }
  }

  return malloc_memory_event_handler();
}

const char *_evflagstr(__int16 a1, const char *a2, uint64_t a3)
{
  v6 = a1;
  *a2 = 0;
  while (v6)
  {
    _evflagstr2(&v6);
    __strlcat_chk();
  }

  v4 = strlen(a2);
  if (v4)
  {
    a2[v4 - 1] = 0;
  }

  return a2;
}

const char *_evflagstr2(_WORD *a1)
{
  if ((*a1 & 1) == 1)
  {
    *a1 &= ~1u;
    return "EV_ADD|";
  }

  else if ((*a1 & 2) == 2)
  {
    *a1 &= ~2u;
    return "EV_DELETE|";
  }

  else if ((*a1 & 4) == 4)
  {
    *a1 &= ~4u;
    return "EV_ENABLE|";
  }

  else if ((*a1 & 8) == 8)
  {
    *a1 &= ~8u;
    return "EV_DISABLE|";
  }

  else if ((*a1 & 0x10) == 0x10)
  {
    *a1 &= ~0x10u;
    return "EV_ONESHOT|";
  }

  else if ((*a1 & 0x20) == 0x20)
  {
    *a1 &= ~0x20u;
    return "EV_CLEAR|";
  }

  else if ((*a1 & 0x40) == 0x40)
  {
    *a1 &= ~0x40u;
    return "EV_RECEIPT|";
  }

  else if ((*a1 & 0x80) == 0x80)
  {
    *a1 &= ~0x80u;
    return "EV_DISPATCH|";
  }

  else if ((*a1 & 0x100) == 0x100)
  {
    *a1 &= ~0x100u;
    return "EV_UDATA_SPECIFIC|";
  }

  else if ((*a1 & 0x1000) == 0x1000)
  {
    *a1 &= ~0x1000u;
    return "EV_POLL|";
  }

  else if ((*a1 & 0x2000) == 0x2000)
  {
    *a1 &= ~0x2000u;
    return "EV_OOBAND|";
  }

  else if ((*a1 & 0x4000) == 0x4000)
  {
    *a1 &= ~0x4000u;
    return "EV_ERROR|";
  }

  else if ((*a1 & 0x8000) == 0x8000)
  {
    *a1 &= ~0x8000u;
    return "EV_EOF|";
  }

  else if ((*a1 & 0x200) == 0x200)
  {
    *a1 &= ~0x200u;
    return "EV_VANISHED|";
  }

  else
  {
    *a1 = 0;
    return "EV_UNKNOWN ";
  }
}

void _dispatch_mach_host_notify_update()
{
  v0 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tregistering for calendar-change notification", 2998, v0);
  host = _dispatch_get_mach_host_port();
  if (_dispatch_mach_notify_port_pred != -1)
  {
    dispatch_once_f(&_dispatch_mach_notify_port_pred, 0, _dispatch_mach_notify_port_init);
  }

  v2 = host_request_notification(host, 1, _dispatch_mach_notify_port);
  if (v2 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x8DE50);
  }

  if (v2)
  {
    _dispatch_bug(3003, v2);
  }
}

void _dispatch_mach_notify_port_init(uint64_t a1)
{
  v5 = a1;
  options.reserved[1] = 0;
  *&options.flags = xmmword_BA930;
  v3 = mach_port_construct(mach_task_self_, &options, &_dispatch_mach_notify_port, &_dispatch_mach_notify_port);
  if (v3)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: mach_port_construct() failed: cannot create receive right";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x8DF3CLL);
  }

  v2 = off_DD3F0(&_dispatch_mach_type_notification, _dispatch_mach_notify_port, 0);
  *(v2 + 8) = ~&_dispatch_mgr_q;
  v1 = _dispatch_unote_register(v2, -4, 0x2000000u);
  v7 = v1 & 1;
  v6 = 2952;
  if ((v1 & 1) == 0)
  {
    _dispatch_bug(v6, v7);
  }

  _dispatch_mach_notify_unote = v2;
}

BOOL _dispatch_kevent_mach_notify_resume(uint64_t a1, int a2, int a3)
{
  v4 = 0;
  if ((a2 & a3) != 0)
  {
    _dispatch_abort(3096, a2 & a3);
  }

  if ((a2 & 0xD) != 0 || (a3 & 0xD) != 0)
  {
    v4 = _dispatch_mach_notify_update(a1, a2, a3, 0xDu, 66, 0);
  }

  return v4 == 0;
}

uint64_t _dispatch_mach_notify_update(uint64_t a1, int a2, int a3, unsigned int a4, mach_msg_id_t a5, mach_port_mscount_t a6)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  previous = 0;
  v16 = *(a1 + 24);
  v15 = *(a1 + 56);
  v12 = 0;
  *(a1 + 56) = v15 | (a2 | *(a1 + 48)) & a4;
  *(v23 + 56) &= ~(v21 & v20);
  if ((*(v23 + 56) & v20) == 0 || (v15 & v20) != 0)
  {
    if ((*(v23 + 56) & v20) != 0 || (v15 & v20) == 0)
    {
      return 0;
    }

    v7 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: unregistering for send-possible notification", 3063, v7, v16);
    previous = 0;
    v14 = mach_port_request_notification(mach_task_self_, v16, v19, v18, 0, 0x12u, &previous);
    if (v14 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x8E530);
    }

    if (v14 != 4 && v14 != 15 && v14 != 17)
    {
      v28 = v14;
      v27 = 3076;
      if (v14)
      {
        _dispatch_bug(v27, v28);
      }
    }
  }

  else
  {
    v6 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: registering for send-possible notification", 3030, v6, v16);
    previous = 0;
    task = mach_task_self_;
    v37 = &_dispatch_mach_notify_port_pred;
    v36 = 0;
    v35 = _dispatch_mach_notify_port_init;
    if (_dispatch_mach_notify_port_pred != -1)
    {
      dispatch_once_f(v37, v36, v35);
    }

    v12 = mach_port_request_notification(task, v16, v19, v18, _dispatch_mach_notify_port, 0x15u, &previous);
    if (v12 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x8E29CLL);
    }

    if (v12 == 15 || v12 == 17)
    {
      *(v23 + 56) &= ~v20;
    }

    else
    {
      v34 = v12;
      v33 = 3045;
      if (v12)
      {
        _dispatch_bug(v33, v34);
        *(v23 + 56) &= ~v20;
      }

      else
      {
        v11 = previous;
        v32 = previous;
        v31 = 3048;
        if (previous)
        {
          _dispatch_bug(v31, v32);
        }

        if (v11)
        {
          v13 = mach_port_deallocate(mach_task_self_, previous);
          if (v13 == -301)
          {
            qword_E4290 = "MIG_REPLY_MISMATCH";
            qword_E42C0 = -301;
            __break(1u);
            JUMPOUT(0x8E400);
          }

          v30 = v13;
          v29 = 3057;
          if (v13)
          {
            _dispatch_bug(v29, v30);
          }

          previous = 0;
        }
      }
    }
  }

  if (previous)
  {
    v10 = _dispatch_send_consume_send_once_right(previous);
    v26 = v10;
    v25 = 3086;
    if (v10)
    {
      _dispatch_bug(v25, v26);
    }
  }

  return v12;
}

void _dispatch_timers_calendar_change()
{
  for (i = 0; i < 3; ++i)
  {
    byte_E4436 |= (1 << ((i + 6) % 3)) | 0x80;
    *(&_dispatch_timers_heap + 32 * i + 199) = *(&_dispatch_timers_heap + 32 * i + 199) & 0xFD | 2;
  }
}

void _voucher_xref_dispose(signed int *a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: xref_dispose", 782, v1, a1);
  _voucher_remove(a1);
  v4 = a1[2];
  if (v4 != 0x7FFFFFFF)
  {
    v4 = atomic_fetch_add_explicit((a1 + 2), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v4 < 1)
  {
    if (v4 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x8E85CLL);
    }

    v3 = a1[3];
    if (v3 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x8E8ACLL);
    }

    _os_object_dispose(a1);
  }
}

void _voucher_dispose(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: dispose", 791, v1, a1);
  if (*(a1 + 24))
  {
    v2 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: corruption", 793, v2, a1);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher corruption";
    __break(1u);
    JUMPOUT(0x8E9B0);
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = -1985229329;
  if (*(a1 + 36))
  {
    if (*(a1 + 36) != *(a1 + 32))
    {
      _voucher_dealloc_mach_voucher(*(a1 + 36));
    }

    *(a1 + 36) = 0;
  }

  if (*(a1 + 32))
  {
    if (!*(a1 + 40))
    {
      _voucher_dealloc_mach_voucher(*(a1 + 32));
    }

    *(a1 + 32) = 0;
  }

  if (*(a1 + 40))
  {
    os_release(*(a1 + 40));
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  _os_object_dealloc(a1);
}

_DWORD *voucher_adopt(_DWORD *a1)
{
  if (a1 == -3)
  {
    v8 = _dispatch_thread_getspecific(28);
    if (v8)
    {
      os_retain(v8);
    }

    return v8;
  }

  else
  {
    v9 = _dispatch_thread_getspecific(28);
    if (v9 == a1)
    {
      v10 = -1;
    }

    else
    {
      _dispatch_thread_setspecific(28, a1);
      v1 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", 400, v1, a1, v9);
      if (a1)
      {
        v5 = a1[8];
      }

      else
      {
        v5 = 0;
      }

      if (v9)
      {
        v4 = v9[8];
      }

      else
      {
        v4 = 0;
      }

      if (v5 == v4)
      {
        v3 = -1;
      }

      else
      {
        v3 = v5;
      }

      v10 = v3;
    }

    if (v10 != -1)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v10);
    }

    return v9;
  }
}

void *voucher_copy()
{
  v1 = _dispatch_thread_getspecific(28);
  if (v1)
  {
    os_retain(v1);
  }

  return v1;
}

_DWORD *voucher_copy_without_importance()
{
  v1 = _dispatch_thread_getspecific(28);
  if (v1)
  {
    return _voucher_create_without_importance(v1);
  }

  return v1;
}

void _voucher_dealloc_mach_voucher(mach_port_name_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tkvoucher[0x%08x]: dealloc", 298, v1, a1);
  v2 = mach_voucher_deallocate(a1);
  if (v2 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x8EEB8);
  }

  if (v2)
  {
    _dispatch_bug(302, v2);
  }
}

uint64_t _voucher_task_mach_voucher_init(uint64_t a1)
{
  v4 = a1;
  v3 = 0;
  v2 = 0;
  result = _voucher_create_mach_voucher(_voucher_task_mach_voucher_init_task_create_recipe, 16, &v2);
  v3 = result;
  if (result)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Could not create task mach voucher";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x8EF84);
  }

  _voucher_default_task_mach_voucher = v2;
  _voucher_task_mach_voucher = v2;
  return result;
}

uint64_t _voucher_create_mach_voucher(uint8_t *a1, uint64_t a2, ipc_voucher_t *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  v7 = host_create_mach_voucher(mach_host_port, v10, v9, &voucher);
  if (v7 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x8F068);
  }

  if (!v7)
  {
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tkvoucher[0x%08x]: create", 319, v3, voucher);
  }

  *v8 = voucher;
  return v7;
}

void voucher_replace_default_voucher()
{
  v12 = &_voucher_task_mach_voucher_pred;
  v11 = 0;
  v10 = _voucher_task_mach_voucher_init;
  if (_voucher_task_mach_voucher_pred != -1)
  {
    dispatch_once_f(v12, v11, v10);
  }

  v7 = 0;
  v6 = 0;
  v5 = _dispatch_thread_getspecific(28);
  if (v5 && v5[8])
  {
    v4 = 0;
    if (v5[9])
    {
      v1 = v5[9];
    }

    else
    {
      v1 = v5[8];
    }

    v7 = v1;
    v3[0] = 0x100000003;
    v3[1] = v1;
    v4 = _voucher_create_mach_voucher(v3, 16, &v6);
    v2 = v4;
    v9 = v4;
    v8 = 362;
    if (v4)
    {
      _dispatch_bug(v8, v9);
    }

    if (v2)
    {
      v6 = 0;
    }
  }

  if (!v6)
  {
    v6 = _voucher_default_task_mach_voucher;
  }

  v7 = __swp(v6, &_voucher_task_mach_voucher);
  if (v7 && v7 != _voucher_default_task_mach_voucher)
  {
    _voucher_dealloc_mach_voucher(v7);
  }

  v0 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] replace default voucher", 371, v0, v5, v6);
}

uint64_t _voucher_get_mach_voucher(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 36))
    {
      return *(a1 + 36);
    }

    else
    {
      v2 = *(a1 + 32);
      if (!v2)
      {
        if (_voucher_task_mach_voucher_pred != -1)
        {
          dispatch_once_f(&_voucher_task_mach_voucher_pred, 0, _voucher_task_mach_voucher_init);
        }

        return _voucher_task_mach_voucher;
      }

      return v2;
    }
  }

  else
  {
    return 0;
  }
}

_DWORD *_voucher_create_without_importance(_DWORD *a1)
{
  v12 = a1;
  if (!a1)
  {
    return 0;
  }

  if (v12[8] && (v12[18] & 1) != 0)
  {
    v11 = 0;
    v10 = 0;
    if (v12[9])
    {
      v5 = v12[9];
    }

    else
    {
      v5 = v12[8];
    }

    v24[0] = -1;
    v24[1] = 1;
    v24[2] = v5;
    v24[3] = 0;
    v24[4] = 2;
    v25 = 2;
    v26 = 0;
    v11 = _voucher_create_mach_voucher(v24, 32, &v10);
    v9 = v11;
    v16 = v11;
    v15 = 639;
    if (v11)
    {
      _dispatch_bug(v15, v16);
    }

    if (v9 || !v10)
    {
      if (v12[9])
      {
        return 0;
      }

      v10 = 0;
    }

    if (v10 == v5)
    {
      _voucher_dealloc_mach_voucher(v10);
      v14 = v12;
      os_retain(v12);
      return v14;
    }

    else
    {
      v7 = _voucher_find_and_retain(v10);
      if (v7 && v12[9])
      {
        v1 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] find without importance from voucher[%p]", 650, v1, v7, v10, v12);
        _voucher_dealloc_mach_voucher(v10);
        return v7;
      }

      else
      {
        v6 = v7;
        v22 = v12;
        v21 = 1;
        v20 = 0;
        v19 = 0;
        if (v12)
        {
          v20 = 0;
        }

        v19 = _voucher_alloc(v20);
        if (v22)
        {
          v18 = ~v21;
          if ((~v21 & 1) != 0 && v22[8])
          {
            if (*(v22 + 5))
            {
              v4 = *(v22 + 5);
            }

            else
            {
              v4 = v22;
            }

            v17 = v4;
            v23 = v4;
            os_retain(v4);
            v19[5] = v23;
            *(v19 + 8) = v17[8];
            *(v19 + 72) = v19[9] & 0xFE | v17[18] & 1;
          }

          if ((v18 & 2) != 0)
          {
            v19[6] = *(v22 + 6);
            v19[7] = *(v22 + 7);
            v19[8] = *(v22 + 8);
          }
        }

        v8 = v19;
        *(v19 + 8) = v10;
        if (v12[9])
        {
          *(v8 + 36) = v10;
          _voucher_insert(v8);
        }

        else if (v6)
        {
          *(v8 + 40) = v6;
          _voucher_dealloc_mach_voucher(v10);
        }

        if (!v6)
        {
          v2 = _dispatch_thread_getspecific(0);
          _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] create without importance from voucher[%p]", 667, v2, v8, v10, v12);
        }

        return v8;
      }
    }
  }

  else
  {
    os_retain(v12);
    return v12;
  }
}

uint64_t _voucher_find_and_retain(unsigned int a1)
{
  if (!a1)
  {
    return 0;
  }

  v9 = _dispatch_thread_getspecific(3);
  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v1, v9 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _dispatch_unfair_lock_lock_slow(&_voucher_hash_lock, 0x10000);
  }

  for (i = ~_voucher_hash[(a1 >> 8) & 0x3F]; i; i = ~*(i + 16))
  {
    if (*(i + 36) == a1)
    {
      v5 = atomic_fetch_add_explicit((i + 12), 1u, memory_order_relaxed) + 1;
      v2 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: retain  -> %d", 234, v2, i, v5);
      if (v5 <= 0)
      {
        v3 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tvoucher[%p]: over-release", 236, v3, i);
        qword_E4290 = "API MISUSE: Voucher over-release";
        __break(1u);
        JUMPOUT(0x8FB5CLL);
      }

      if (v5 == 1)
      {
        atomic_fetch_add_explicit((i + 8), 1u, memory_order_relaxed);
      }

      break;
    }
  }

  v10 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v11 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v11 != v10)
  {
    _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v11);
  }

  return i;
}

uint64_t _voucher_insert(uint64_t result)
{
  v9 = result;
  v8 = *(result + 36);
  if (v8)
  {
    v10 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v1 = 0;
    atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v1, v10, memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      _dispatch_unfair_lock_lock_slow(&_voucher_hash_lock, 0x10000);
    }

    if (*(v9 + 24))
    {
      v2 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: corruption", 259, v2, v9);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher corruption";
      __break(1u);
      JUMPOUT(0x8FE60);
    }

    if (*(v9 + 48))
    {
      v3 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: Activity data corruption", 263, v3, v9);
      v4 = *(v9 + 48);
      qword_E4290 = "BUG IN LIBDISPATCH: base voucher has non-zero activity value";
      qword_E42C0 = v4;
      __break(1u);
      JUMPOUT(0x8FEE4);
    }

    if (*(v9 + 40))
    {
      v5 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: Incoming voucher with corrupted base", 267, v5, v9);
      v6 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: Corrupted base for incoming voucher", 268, v6, *(v9 + 40));
      v7 = *(v9 + 40);
      qword_E4290 = "BUG IN LIBDISPATCH: base voucher has nested base voucher";
      qword_E42C0 = v7;
      __break(1u);
      JUMPOUT(0x8FFA0);
    }

    v12 = &_voucher_hash[(v8 >> 8) & 0x3F];
    v11 = ~*v12;
    *(v9 + 16) = *v12;
    if (v11)
    {
      *(v11 + 24) = ~(v9 + 16);
    }

    *v12 = ~v9;
    *(v9 + 24) = ~v12;
    result = _dispatch_thread_getspecific(3);
    v13 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
    if (v13 != (result & 0xFFFFFFFC))
    {
      return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v13);
    }
  }

  return result;
}

void *_voucher_create_accounting_voucher(_DWORD *a1)
{
  v13 = a1;
  if (!a1 || !v13[8])
  {
    return 0;
  }

  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (v13[9])
  {
    v5 = v13[9];
  }

  else
  {
    v5 = v13[8];
  }

  v11 = v5;
  v9[0] = 0x100000003;
  v9[1] = v5;
  v12 = _voucher_create_mach_voucher(v9, 16, &v10);
  v8 = v12;
  v17 = v12;
  v16 = 689;
  if (v12)
  {
    _dispatch_bug(v16, v17);
  }

  if (v8 || !v10)
  {
    return 0;
  }

  v6 = _voucher_find_and_retain(v10);
  if (v6)
  {
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] find accounting voucher from voucher[%p]", 695, v1, v6, v10, v13);
    _voucher_dealloc_mach_voucher(v10);
    return v6;
  }

  else
  {
    v7 = _voucher_alloc(0);
    v2 = v10;
    *(v7 + 8) = v10;
    *(v7 + 9) = v2;
    if (v10 == v11)
    {
      v15 = v13;
      os_retain(v13);
      v7[5] = v15;
      _voucher_dealloc_mach_voucher(v10);
    }

    _voucher_insert(v7);
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] create accounting voucher from voucher[%p]", 708, v3, v7, v10, v13);
    return v7;
  }
}

void *_voucher_alloc(unsigned int a1)
{
  v3 = _os_object_alloc_realized(_OS_voucher_vtable, a1 + 80);
  if (a1)
  {
    _dispatch_abort(62, a1 == 0);
  }

  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: alloc", 64, v1, v3);
  return v3;
}

void *_voucher_create_with_mach_msgv(_DWORD *a1, _DWORD *a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v13 = a1;
  v12 = &v7;
  if ((*a1 & 0x1F0000) != 0)
  {
    v11 = v13[4];
    v13[4] = 0;
    v10 = 538902528;
    *v12 = *v13 & 0x201F0000;
    *v13 &= ~v10;
    v14 = v11;
  }

  else
  {
    *v12 = 0;
    v14 = 0;
  }

  if (a2)
  {
    v4 = *a2;
    if (*a2 <= 7u)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid msg aux data size.";
      qword_E42C0 = v4;
      __break(1u);
      JUMPOUT(0x905BCLL);
    }

    v5 = v4 - 8;
    if (v4 == 8)
    {
      v3 = 0;
    }

    else
    {
      v3 = a2 + 2;
    }

    v6 = v3;
  }

  return _voucher_create_with_mach_voucher(v14, v7, v6, v5);
}

void *_voucher_create_with_mach_voucher(unsigned int a1, int a2, uint64_t a3, unsigned int a4)
{
  v10 = 0;
  if (a1)
  {
    v10 = _voucher_find_and_retain(a1);
    if (v10)
    {
      v4 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] found", 485, v4, v10, a1);
      _voucher_dealloc_mach_voucher(a1);
    }

    else
    {
      v10 = _voucher_alloc(0);
      *(v10 + 32) = a1;
      *(v10 + 36) = a1;
      *(v10 + 72) = *(v10 + 72) & 0xFE | ((a2 & 0x20000000) != 0);
      _voucher_insert(v10);
    }
  }

  if (a4 < 0x20 || *a3 != 59821818 || !*(a3 + 8))
  {
    return v10;
  }

  if (v10)
  {
    if (*(v10 + 48))
    {
      v5 = *(v10 + 48);
      qword_E4290 = "BUG IN LIBDISPATCH: base voucher has non-zero activity value";
      qword_E42C0 = v5;
      __break(1u);
      JUMPOUT(0x907D8);
    }

    if (*(v10 + 40))
    {
      v6 = *(v10 + 40);
      qword_E4290 = "BUG IN LIBDISPATCH: base voucher has nested base voucher";
      qword_E42C0 = v6;
      __break(1u);
      JUMPOUT(0x90828);
    }

    v17 = _voucher_alloc(0);
    if (*(v10 + 32))
    {
      if (*(v10 + 40))
      {
        v9 = *(v10 + 40);
      }

      else
      {
        v9 = v10;
      }

      os_retain(v9);
      v17[5] = v9;
      *(v17 + 8) = *(v9 + 32);
      *(v17 + 72) = v17[9] & 0xFE | *(v9 + 72) & 1;
    }

    v11 = v17;
    voucher_release(v10);
  }

  else
  {
    v11 = _voucher_alloc(0);
  }

  v11[6] = *(a3 + 8);
  v11[7] = *(a3 + 16);
  v11[8] = *(a3 + 24);
  v7 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] create", 521, v7, v11, a1);
  return v11;
}

void *voucher_create_with_mach_msg(_DWORD *a1)
{
  v3 = a1;
  v2 = 0;
  v7 = a1;
  v6 = &v2;
  if ((*a1 & 0x1F0000u) >> 16)
  {
    v5 = v7[4];
    v7[4] = 0;
    v4 = 538902528;
    *v6 = *v7 & 0x201F0000;
    *v7 &= ~v4;
    v8 = v5;
  }

  else
  {
    *v6 = 0;
    v8 = 0;
  }

  return _voucher_create_with_mach_voucher(v8, v2, 0, 0);
}

void voucher_decrement_importance_count4CF(uint64_t result)
{
  v16 = result;
  if (result && *(v16 + 32) && (*(v16 + 72) & 1) != 0)
  {
    v15 = 0;
    if (*(v16 + 36))
    {
      v6 = *(v16 + 36);
    }

    else
    {
      v6 = *(v16 + 32);
    }

    v14 = v6;
    v13 = 1;
    v12 = &v13;
    v11 = 4;
    v8 = -1;
    v10 = &v8;
    out_contentCnt = 4;
    v15 = mach_voucher_attr_command(v6, 2u, 2u, &v13, 4u, &v8, &out_contentCnt);
    if (v15 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x90C44);
    }

    if (v15 != 16)
    {
      v5 = _dispatch_thread_getspecific(0);
      v4 = v16;
      v3 = v14;
      v2 = v8;
      v1 = mach_error_string(v15);
      _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] decrement importance count to %u: %s - 0x%x", 764, v5, v4, v3, v2, v1, v15);
      v7 = v15;
      v18 = v15;
      v17 = 766;
      if (v15)
      {
        _dispatch_bug(v17, v18);
      }

      if (v7 == 5)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher importance count underflow";
        qword_E42C0 = v15;
        __break(1u);
        JUMPOUT(0x90D60);
      }
    }
  }
}

uint64_t _voucher_remove(uint64_t result)
{
  v4 = result;
  v3 = *(result + 36);
  if (*(result + 24))
  {
    v5 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v1 = 0;
    atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v1, v5, memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      _dispatch_unfair_lock_lock_slow(&_voucher_hash_lock, 0x10000);
    }

    if (!v3)
    {
      v2 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: corruption", 282, v2, v4);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher corruption";
      __break(1u);
      JUMPOUT(0x90EE4);
    }

    if (*(v4 + 12) <= 0 && *(v4 + 24))
    {
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 != -1)
      {
        *(23 - v7) = v6;
      }

      *~v6 = v7;
      *(v4 + 24) = 0;
      *(v4 + 16) = -1985229329;
    }

    result = _dispatch_thread_getspecific(3);
    v8 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
    if (v8 != (result & 0xFFFFFFFC))
    {
      return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v8);
    }
  }

  return result;
}

void _voucher_activity_debug_channel_init()
{
  v7 = 0;
  if (_voucher_libtrace_hooks)
  {
    v7 = *(_voucher_libtrace_hooks + 16);
  }

  if (v7)
  {
    f = 0;
    special_port = 0;
    v4 = task_get_special_port(mach_task_self_, 10, &special_port);
    if (v4 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x91168);
    }

    if (v4)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Couldn't get debug control port";
      qword_E42C0 = v4;
      __break(1u);
      JUMPOUT(0x911B0);
    }

    if (special_port)
    {
      f = dispatch_mach_create_f("com.apple.debug-channel", 0, 0, v7);
      *(*(f + 88) + 29) &= ~0x20u;
      dispatch_mach_connect(f, special_port, 0, 0, v0, v1, v2, v3);
      _voucher_activity_debug_channel = f;
    }
  }
}

uint64_t _voucher_atfork_prepare()
{
  result = _dispatch_thread_getspecific(3);
  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v1, result & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _dispatch_unfair_lock_lock_slow(&_voucher_hash_lock, 0x10000);
  }

  return result;
}

uint64_t _voucher_atfork_parent()
{
  result = _dispatch_thread_getspecific(3);
  v1 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v1 != (result & 0xFFFFFFFC))
  {
    return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v1);
  }

  return result;
}

uint64_t _voucher_atfork_child()
{
  _voucher_hash_reset_locked();
  _voucher_hash_lock = 0;
  result = _dispatch_thread_setspecific(28, 0);
  _voucher_task_mach_voucher_pred = 0;
  _voucher_task_mach_voucher = 0;
  _voucher_default_task_mach_voucher = 0;
  _voucher_aid_next = 0;
  _firehose_task_buffer_pred = 0;
  _firehose_task_buffer = 0;
  return result;
}

void *_voucher_hash_reset_locked()
{
  for (i = 0; i < 0x40; ++i)
  {
    v2 = &_voucher_hash[i];
    while (1)
    {
      v1 = ~*v2;
      if (*v2 == -1)
      {
        break;
      }

      *(31 - *v2) = 0;
      *(v1 + 36) = 0;
      v5 = ~*(v1 + 16);
      v4 = *(v1 + 24);
      if (*(v1 + 16) != -1)
      {
        *(23 - *(v1 + 16)) = v4;
      }

      *~v4 = ~v5;
      *(v1 + 24) = 0;
      *(v1 + 16) = -1985229329;
    }
  }

  return memset(_voucher_hash, -1, sizeof(_voucher_hash));
}

uint64_t voucher_process_can_use_arbitrary_personas()
{
  if (_voucher_process_can_use_arbitrary_personas_pred != -1)
  {
    dispatch_once_f(&_voucher_process_can_use_arbitrary_personas_pred, 0, _voucher_process_can_use_arbitrary_personas_init);
  }

  return _voucher_process_can_use_arbitrary_personas & 1;
}

uint64_t _voucher_process_can_use_arbitrary_personas_init(uint64_t a1)
{
  v7 = a1;
  v10 = &_voucher_task_mach_voucher_pred;
  v9 = 0;
  v8 = _voucher_task_mach_voucher_init;
  if (_voucher_task_mach_voucher_pred != -1)
  {
    dispatch_once_f(v10, v9, v8);
  }

  voucher = _voucher_task_mach_voucher;
  v5 = 0;
  v2 = 0;
  out_content = &v2;
  out_contentCnt = 4;
  result = mach_voucher_attr_command(_voucher_task_mach_voucher, 3u, 4u, 0, 0, &v2, &out_contentCnt);
  v5 = result;
  if (result)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: mach_voucher_attr_command(BANK_PERSONA_ADOPT_ANY) failed";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x91708);
  }

  _voucher_process_can_use_arbitrary_personas = v2 != 0;
  return result;
}

uint64_t voucher_copy_with_persona_mach_voucher(unsigned int a1)
{
  v14 = a1;
  if (!a1)
  {
    return voucher_copy();
  }

  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = _dispatch_thread_getspecific(28);
  if (v10)
  {
    if (v10[9])
    {
      v5 = v10[9];
    }

    else
    {
      v5 = v10[8];
    }

    v12 = v5;
  }

  v26[0] = -1;
  v26[1] = 1;
  v26[2] = v12;
  v26[3] = 0;
  v26[4] = 3;
  v26[5] = 10;
  v27 = v14;
  v13 = _voucher_create_mach_voucher(v26, 32, &v11);
  v9 = v13;
  v18 = v13;
  v17 = 944;
  if (v13)
  {
    _dispatch_bug(v17, v18);
  }

  if (v9)
  {
    if (v13 == 20)
    {
      return -1;
    }

    v11 = 0;
  }

  if (v11 == v12)
  {
    if (v11)
    {
      _voucher_dealloc_mach_voucher(v11);
    }

    v16 = v10;
    os_retain(v10);
    return v16;
  }

  else
  {
    v7 = _voucher_find_and_retain(v11);
    if (v7 && (!v10 || v10[9]))
    {
      v1 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] find with persona from voucher[%p]", 958, v1, v7, v11, v10);
      _voucher_dealloc_mach_voucher(v11);
      return v7;
    }

    else
    {
      v6 = v7;
      v24 = v10;
      v23 = 1;
      v22 = 0;
      v21 = 0;
      if (v10)
      {
        v22 = 0;
      }

      v21 = _voucher_alloc(v22);
      if (v24)
      {
        v20 = ~v23;
        if ((~v23 & 1) != 0 && v24[8])
        {
          if (*(v24 + 5))
          {
            v4 = *(v24 + 5);
          }

          else
          {
            v4 = v24;
          }

          v19 = v4;
          v25 = v4;
          os_retain(v4);
          v21[5] = v25;
          *(v21 + 8) = v19[8];
          *(v21 + 72) = v21[9] & 0xFE | v19[18] & 1;
        }

        if ((v20 & 2) != 0)
        {
          v21[6] = *(v24 + 6);
          v21[7] = *(v24 + 7);
          v21[8] = *(v24 + 8);
        }
      }

      v8 = v21;
      *(v21 + 8) = v11;
      if (v10 && !v10[9])
      {
        if (v6)
        {
          *(v8 + 40) = v6;
          _voucher_dealloc_mach_voucher(v11);
        }
      }

      else
      {
        *(v8 + 36) = v11;
        _voucher_insert(v8);
      }

      if (!v6)
      {
        v2 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] create with persona from voucher[%p]", 975, v2, v8, v11, v10);
      }

      return v8;
    }
  }
}

uint64_t voucher_copy_with_persona_mach_voucher_and_error(unsigned int a1, uint64_t *a2)
{
  v3 = voucher_copy_with_persona_mach_voucher(a1);
  if (v3 == -1)
  {
    *a2 = 0;
    return 1;
  }

  else
  {
    *a2 = v3;
    return 0;
  }
}

uint64_t mach_voucher_persona_self(_DWORD *a1)
{
  v4 = a1;
  v3 = 0;
  v7[0] = xmmword_BA958;
  v7[1] = xmmword_BA968;
  v2 = _voucher_create_mach_voucher(v7, 32, &v3);
  v6 = v2;
  v5 = 1015;
  if (v2)
  {
    _dispatch_bug(v5, v6);
    v3 = 0;
  }

  *v4 = v3;
  return v2;
}

uint64_t mach_voucher_persona_for_originator(unsigned int a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v11 = &v18;
  v8 = 0;
  v18 = 0;
  mach_voucher = 46;
  v9 = v16;
  v16[0] = a1;
  v16[1] = a3;
  v15 = 48;
  v7 = v6;
  bzero(v6, 0x30uLL);
  v14 = v7;
  v10 = -1;
  __memset_chk();
  v4 = v9;
  *&v13 = 0x100000003;
  *(&v13 + 1) = v21;
  *v14 = v13;
  *&v12 = 0x26300000003;
  *(&v12 + 1) = 0x1000000000;
  *(v14 + 1) = v12;
  v25 = v14 + 32;
  v24 = v4;
  v23 = 16;
  __memcpy_chk();
  mach_voucher = _voucher_create_mach_voucher(v14, v15, v11);
  if (mach_voucher)
  {
    v18 = 0;
  }

  *v19 = v18;
  return mach_voucher;
}

uint64_t voucher_get_current_persona()
{
  v2 = -1;
  if (_voucher_get_current_persona_id(&v2))
  {
    if ((kpersona_get() & 0x80000000) != 0)
    {
      v6 = 1;
      v7 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v1 = **(StatusReg + 8);
      if (v1 != 3)
      {
        v5 = v1;
        v4 = 1141;
        if (v1)
        {
          _dispatch_bug(v4, v5);
        }
      }
    }

    return v2;
  }

  else
  {
    return v2;
  }
}

uint64_t _voucher_get_current_persona_id(uint8_t *a1)
{
  v10 = a1;
  v9 = 5;
  v8 = _dispatch_thread_getspecific(28);
  if (v8 && *(v8 + 32))
  {
    if (*(v8 + 36))
    {
      v2 = *(v8 + 36);
    }

    else
    {
      v2 = *(v8 + 32);
    }

    v7 = v2;
    in_content = 0;
    in_contentCnt = 0;
    out_content = v10;
    out_contentCnt = 4;
    v9 = mach_voucher_attr_command(v2, 3u, 3u, 0, 0, v10, &out_contentCnt);
    if (v9 != 46 && v9 != 18 && v9 != 4)
    {
      v12 = v9;
      v11 = 1118;
      if (v9)
      {
        _dispatch_bug(v11, v12);
      }
    }
  }

  return v9;
}

uint64_t voucher_get_current_persona_originator_info(void *a1)
{
  memset(__b, 0, sizeof(__b));
  if (_voucher_get_current_persona_token(__b))
  {
    return -1;
  }

  else
  {
    memcpy(a1, __b, 0x30uLL);
    return 0;
  }
}

uint64_t _voucher_get_current_persona_token(uint8_t *a1)
{
  v10 = a1;
  v9 = 5;
  v8 = _dispatch_thread_getspecific(28);
  if (v8 && *(v8 + 32))
  {
    if (*(v8 + 36))
    {
      v2 = *(v8 + 36);
    }

    else
    {
      v2 = *(v8 + 32);
    }

    v7 = v2;
    in_content = 0;
    in_contentCnt = 0;
    out_content = v10;
    out_contentCnt = 96;
    v9 = mach_voucher_attr_command(v2, 3u, 2u, 0, 0, v10, &out_contentCnt);
    if (v9 != 46 && v9 != 18 && v9 != 4)
    {
      v12 = v9;
      v11 = 1090;
      if (v9)
      {
        _dispatch_bug(v11, v12);
      }
    }
  }

  return v9;
}

uint64_t voucher_get_current_persona_proximate_info(void *a1)
{
  memset(__b, 0, sizeof(__b));
  if (_voucher_get_current_persona_token(__b))
  {
    return -1;
  }

  else
  {
    memcpy(a1, &__b[48], 0x30uLL);
    return 0;
  }
}

BOOLean_t voucher_mach_msg_set(mach_msg_header_t *msg)
{
  v4 = _dispatch_thread_getspecific(28);
  if ((msg->msgh_bits & 0x1F0000) >> 16)
  {
    v6 = 0;
  }

  else
  {
    if (v4)
    {
      mach_voucher = _voucher_get_mach_voucher(v4);
    }

    else
    {
      if (_voucher_task_mach_voucher_pred != -1)
      {
        dispatch_once_f(&_voucher_task_mach_voucher_pred, 0, _voucher_task_mach_voucher_init);
      }

      mach_voucher = _voucher_task_mach_voucher;
    }

    if ((msg->msgh_bits & 0x1F0000) >> 16)
    {
      v7 = 0;
    }

    else if (mach_voucher)
    {
      msg->msgh_voucher_port = mach_voucher;
      msg->msgh_bits |= 0x130000u;
      v1 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] set %s", 476, v1, mach_voucher, msg, "copy-send");
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    v6 = v7;
  }

  return v6 & 1;
}

void voucher_mach_msg_clear(mach_msg_header_t *msg)
{
  v3 = (msg->msgh_bits & 0x1F0000) >> 16;
  msgh_voucher_port = msg->msgh_voucher_port;
  if ((v3 == 19 || v3 == 17) && msgh_voucher_port)
  {
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] clear %s", 520, v1, msgh_voucher_port, msg, "copy-send");
    if (v3 == 17)
    {
      _voucher_dealloc_mach_voucher(msgh_voucher_port);
    }

    msg->msgh_voucher_port = 0;
    msg->msgh_bits &= 0xFFE0FFFF;
  }
}

voucher_mach_msg_state_t voucher_mach_msg_adopt(mach_msg_header_t *msg)
{
  v13 = msg;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v20 = msg;
  v19 = &v12;
  if ((msg->msgh_bits & 0x1F0000) >> 16)
  {
    msgh_voucher_port = v20->msgh_voucher_port;
    v20->msgh_voucher_port = 0;
    v17 = 538902528;
    *v19 = v20->msgh_bits & 0x201F0000;
    v20->msgh_bits &= ~v17;
    v21 = msgh_voucher_port;
  }

  else
  {
    *v19 = 0;
    v21 = 0;
  }

  v9 = v21;
  if (!v21)
  {
    return -1;
  }

  v8 = _dispatch_thread_getspecific(123);
  if (v8)
  {
    v7 = *v8;
    if (*v8 >= 8uLL)
    {
      v10 = v7 - 8;
      if (v7 == 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = v8 + 2;
      }

      v11 = v6;
    }
  }

  v16 = _voucher_create_with_mach_voucher(v9, v12, v11, v10);
  v15 = _dispatch_thread_getspecific(28);
  v30 = v15;
  v29 = v16;
  if (v15 == v16)
  {
    v31 = -1;
  }

  else
  {
    if (v30)
    {
      v28 = 0;
      v27 = 0;
    }

    _dispatch_thread_setspecific(28, v29);
    if (v29)
    {
      v26 = 0;
      v25 = 0;
    }

    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", 400, v1, v29, v30);
    if (v29)
    {
      v5 = v29[8];
    }

    else
    {
      v5 = 0;
    }

    v24 = v5;
    if (v30)
    {
      v4 = v30[8];
    }

    else
    {
      v4 = 0;
    }

    v23 = v4;
    if (v24 == v4)
    {
      v3 = -1;
    }

    else
    {
      v3 = v24;
    }

    v31 = v3;
  }

  v22 = v31;
  if (v31 != -1)
  {
    _dispatch_set_priority_and_mach_voucher_slow(0, v22);
  }

  return v15;
}

void voucher_mach_msg_revert(voucher_mach_msg_state_t state)
{
  if (state != -1)
  {
    v6 = _dispatch_thread_getspecific(28);
    if (v6 == state)
    {
      v7 = -1;
    }

    else
    {
      _dispatch_thread_setspecific(28, state);
      v1 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", 400, v1, state, v6);
      if (state)
      {
        v4 = *(state + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v6)
      {
        v3 = *(v6 + 8);
      }

      else
      {
        v3 = 0;
      }

      if (v4 == v3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v4;
      }

      v7 = v2;
    }

    if (v7 != -1)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v7);
    }

    if (v6)
    {
      os_release(v6);
    }
  }
}

uint64_t *voucher_activity_initialize_4libtrace(uint64_t *result)
{
  if (*result <= 2)
  {
    v1 = *result;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: unsupported vah_version";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x92CACLL);
  }

  v2 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_libtrace_hooks, &v2, result, memory_order_relaxed, memory_order_relaxed);
  if (v2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: voucher_activity_initialize_4libtrace called twice";
    qword_E42C0 = _voucher_libtrace_hooks;
    __break(1u);
    JUMPOUT(0x92D84);
  }

  return result;
}

uint64_t _voucher_libkernel_init()
{
  result = __libkernel_voucher_init();
  if (result)
  {
    _dispatch_abort(1277, result == 0);
  }

  return result;
}

uint64_t voucher_activity_id_allocate(unsigned __int8 a1)
{
  slow = _voucher_aid_next;
  while (1)
  {
    v4 = slow + 1;
    if (!slow || !(v4 % 0x10))
    {
      break;
    }

    v1 = slow;
    v2 = slow;
    atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v2, v4, memory_order_relaxed, memory_order_relaxed);
    if (v2 != v1)
    {
      slow = v2;
    }

    if (v2 == v1)
    {
      return slow & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
    }
  }

  slow = _voucher_activity_id_allocate_slow(slow);
  return slow & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
}

mach_vm_address_t voucher_activity_get_logging_preferences(mach_vm_size_t *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v2 = 1;
  if (_firehose_task_buffer)
  {
    v2 = *(_firehose_task_buffer + 1680) == -1;
  }

  if (!v2)
  {
    return firehose_buffer_get_logging_prefs(*(_firehose_task_buffer + 1676), a1);
  }

  *a1 = 0;
  return 0;
}

BOOL voucher_activity_should_send_strings()
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v1 = 1;
  if (_firehose_task_buffer)
  {
    v1 = *(_firehose_task_buffer + 1680) == -1;
  }

  return !v1 && firehose_buffer_should_send_strings(_firehose_task_buffer);
}

uint64_t voucher_activity_get_metadata_buffer(void *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v2 = 1;
  if (_firehose_task_buffer)
  {
    v2 = *(_firehose_task_buffer + 1680) == -1;
  }

  if (v2)
  {
    *a1 = 0;
    return 0;
  }

  else
  {
    v3 = _firehose_task_buffer;
    *a1 = 2048;
    return v3 + 4096 - *a1;
  }
}

void *voucher_activity_create_with_data_2(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v58 = a1;
  v57 = a2;
  v56 = a3;
  v55 = a4;
  v54 = a5;
  v53 = a6;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v49 = *a1;
  v48 = 0;
  v46 = _dispatch_thread_getspecific(28);
  v44 = (v53 & 1) == 0;
  v6 = v54 + 8;
  v7 = v54 >= 0xFFFFFFFFFFFFFFF8;
  if (((v54 + 8) & 0xFFFFFFFFFFFF0000) != 0)
  {
    v7 = 1;
  }

  v47 = v54 + 8;
  v93 = v7;
  if (v7 || v6 >= 0x81u)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Absurd publen";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x93320);
  }

  if (v57 == -3)
  {
    v57 = v46;
  }

  WORD1(v49) &= ~0x10u;
  if (v46)
  {
    v51 = *(v46 + 48);
    if (v51)
    {
      WORD1(v49) |= 1u;
      v47 = v54 + 16;
      v48 = *(v46 + 56);
      if (v48)
      {
        WORD1(v49) |= 0x10u;
        v47 = v54 + 24;
      }
    }
  }

  if (v57)
  {
    v50 = *(v57 + 48);
  }

  if (v50)
  {
    WORD1(v49) |= 0x200u;
    v47 += 8;
    v56 |= HIBYTE(v50);
  }

  if ((MEMORY[0xFFFFFC104] & 0x80) == 0)
  {
    v56 |= 0x80uLL;
  }

  v64 = v57;
  v63 = 2;
  v62 = 0;
  v61 = 0;
  if (v57)
  {
    v62 = 0;
  }

  v61 = _voucher_alloc(v62);
  if (v64)
  {
    v60 = ~v63;
    if (*(v64 + 32))
    {
      if (*(v64 + 40))
      {
        v39 = *(v64 + 40);
      }

      else
      {
        v39 = v64;
      }

      v59 = v39;
      object = v39;
      os_retain(v39);
      v61[5] = v39;
      *(v61 + 8) = v59[8];
      *(v61 + 72) = v61[9] & 0xFE | v59[18] & 1;
    }

    if ((v60 & 2) != 0)
    {
      v61[6] = *(v64 + 48);
      v61[7] = *(v64 + 56);
      v61[8] = *(v64 + 64);
    }
  }

  v45 = v61;
  v88 = v56;
  v86 = 0;
  v85 = 0;
  v84 = &_voucher_aid_next;
  slow = _voucher_aid_next;
  while (1)
  {
    v86 = slow + 1;
    if (!slow || (v86 & 0xF) == 0)
    {
      break;
    }

    v83 = v86;
    v8 = slow;
    v9 = slow;
    atomic_compare_exchange_strong_explicit(v84, &v9, v86, memory_order_relaxed, memory_order_relaxed);
    if (v9 != v8)
    {
      slow = v9;
    }

    v82 = v9 == v8;
    v85 = v9 == v8;
    if (v9 == v8)
    {
      goto LABEL_36;
    }
  }

  slow = _voucher_activity_id_allocate_slow(slow);
LABEL_36:
  v81 = v85;
  v52 = slow & 0xFFFFFFFFFFFFFFLL | (v88 << 56);
  v61[6] = v52;
  v45[7] = _voucher_unique_pid;
  v45[8] = v50;
  predicate = &_firehose_task_buffer_pred;
  context = 0;
  function = _firehose_task_buffer_init;
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(predicate, context, function);
  }

  v89 = _firehose_task_buffer;
  v38 = 1;
  if (_firehose_task_buffer)
  {
    v38 = *(v89 + 1680) == -1;
  }

  if (!v38)
  {
    v94 = v56;
    if ((MEMORY[0xFFFFFC104] & 0x80) != 0 && (v94 & 0x80) == 0)
    {
      v95 = mach_continuous_approximate_time();
    }

    else
    {
      v95 = mach_continuous_time();
    }

    v42 = v95;
    for (i = 0; i < 2; ++i)
    {
      if (voucher_activity_create_with_data_2_streams[i] == 3)
      {
        v10 = voucher_activity_create_with_data_2_streams[i];
        v187 = _firehose_task_buffer;
        v186 = v42;
        v185 = v10;
        v184 = v47;
        v183 = 0;
        v182 = 0;
        v181 = 1;
        v180 = (_firehose_task_buffer + (v10 << 7) + 640);
        v179 = 0;
        v178 = 0;
        v177 = 0;
        v176 = 0;
        v175 = 0;
        v174 = 0;
        v173 = 0;
        v171 = *v180;
        v172 = v171;
        v170 = v171;
        v179 = v171;
        do
        {
          while (1)
          {
            while (1)
            {
              v178 = v179;
              v173 = BYTE4(v179);
              v37 = 0;
              if (BYTE4(v179))
              {
                v37 = v173 != 255;
              }

              if (v37)
              {
                v198 = v187;
                v197 = v173;
                v177 = v187 + (v173 << 12);
                v218 = v177;
                v217 = v186;
                v216 = v185;
                v215 = 0;
                v214 = v184;
                v213 = v183;
                v212 = v182;
                v211 = 24;
                v210 = 0;
                v209 = 0;
                v208 = 0;
                v207 = 0;
                v207 = (v186 - *(v177 + 8)) >> 48 == 0;
                v206 = 0;
                v205 = v177;
                v210 = *v177;
                do
                {
                  if (!v210)
                  {
                    v219 = 0;
                    goto LABEL_78;
                  }

                  if ((HIWORD(v210) & 0x1FF) != v216)
                  {
                    v219 = 0;
                    goto LABEL_78;
                  }

                  v209 = v210;
                  v300 = &v210;
                  v299 = v214 + v213 + 24;
                  if (v210 + v299 <= WORD1(v210) && v207)
                  {
                    if (v215 > BYTE5(v209))
                    {
                      BYTE5(v209) = v215;
                    }

                    if (((v214 + 24) & 7) != 0)
                    {
                      v36 = ((v214 + 24) & 0x1FFF8) + 8;
                    }

                    else
                    {
                      v36 = v214 + 24;
                    }

                    v209 += v36;
                    v209 -= v213 << 16;
                    v209 += 0x100000000;
                    v204 = 16;
                    v298 = &v209;
                    v297 = 40;
                    if (v209 + 40 > WORD1(v209))
                    {
                      HIBYTE(v209) |= 1u;
                    }

                    v208 = 0;
                  }

                  else
                  {
                    HIBYTE(v209) |= 1u;
                    v208 = 1;
                  }

                  v203 = v209;
                  v11 = v210;
                  v12 = v210;
                  atomic_compare_exchange_strong_explicit(v205, &v12, v209, memory_order_relaxed, memory_order_relaxed);
                  if (v12 != v11)
                  {
                    v210 = v12;
                  }

                  v202 = v12 == v11;
                  v206 = v12 == v11;
                }

                while (v12 != v11);
                v201 = v206;
                if (v208)
                {
                  if (BYTE4(v209))
                  {
                    v219 = 0;
                  }

                  else
                  {
                    v219 = -1;
                  }
                }

                else
                {
                  if (v212)
                  {
                    *v212 = v218 + WORD1(v209);
                  }

                  v219 = v210;
                }

LABEL_78:
                v174 = v219;
                if (v219 >= 1)
                {
                  v169 = 0;
                  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v169 = *(StatusReg - 8);
                  v247 = v177;
                  v246 = v186;
                  v245 = v184;
                  v244 = v169;
                  v243 = v174;
                  v242 = v177 + v174;
                  v246 = (v186 - *(v177 + 8)) | (v184 << 48);
                  v241 = v246;
                  *(v177 + v174 + 16) = v246;
                  *(v242 + 8) = v244;
                  v188 = v242;
                  goto LABEL_117;
                }

                if (v174 < 0)
                {
                  firehose_buffer_ring_enqueue(v187, BYTE4(v179));
                }

                BYTE4(v178) = 0;
              }

              if ((v181 & 1) != 0 || ((v176 & 1) == 0 || (v179 & 0x400000000000) == 0) && !(BYTE5(v179) >> 7))
              {
                break;
              }

              if ((BYTE5(v179) & 0x3Fu) + 1 > 0x3E)
              {
                v35 = 63;
              }

              else
              {
                v35 = (BYTE5(v179) & 0x3F) + 1;
              }

              BYTE5(v178) = BYTE5(v178) & 0xC0 | v35 & 0x3F;
              v168 = v179;
              v167 = 0;
              v165 = v178;
              v164 = v178;
              v166 = v178;
              v13 = v179;
              v14 = v179;
              atomic_compare_exchange_strong_explicit(v180, &v14, v178, memory_order_relaxed, memory_order_relaxed);
              if (v14 != v13)
              {
                v168 = v14;
              }

              v163 = v14 == v13;
              v167 = v14 == v13;
              v179 = v168;
              v162 = v167;
              v175 = v14 == v13;
              if (v14 == v13)
              {
                v261 = v185;
                v260 = v173;
                v259 = v176 & 1;
                v258 = v179;
                v257 = v178;
                v256 = v185 | (v173 << 8);
                v255 = v176 & 1;
                v330 = 772145156;
                v329 = v256;
                v328 = v255;
                v327 = v179;
                v326 = v178;
                if (MEMORY[0xFFFFFC100])
                {
                  kdebug_trace();
                }

                v188 = 0;
                goto LABEL_117;
              }
            }

            if (!v179)
            {
              break;
            }

            if (v181)
            {
              LODWORD(v178) = v178 | 1;
            }

            else
            {
              LODWORD(v178) = v178 | 2;
            }

            v161 = v178 == v179;
            v34 = 1;
            if (v178 != v179)
            {
              v160 = v179;
              v159 = 0;
              v157 = v178;
              v156 = v178;
              v158 = v178;
              v15 = v179;
              v16 = v179;
              atomic_compare_exchange_strong_explicit(v180, &v16, v178, memory_order_relaxed, memory_order_relaxed);
              if (v16 != v15)
              {
                v160 = v16;
              }

              v155 = v16 == v15;
              v159 = v16 == v15;
              v179 = v160;
              v154 = v159;
              v34 = v16 == v15;
            }

            v175 = v34;
            if (v34)
            {
              v276 = v185;
              v275 = v173;
              v274 = v176 & 1;
              v273 = v179;
              v272 = v178;
              v271 = v181 & 1;
              v270 = v185 | (v173 << 8);
              v269 = v176 & 1 | (2 * (v181 & 1));
              v320 = 772145160;
              v319 = v270;
              v318 = v269;
              v317 = v179;
              v316 = v178;
              if (MEMORY[0xFFFFFC100])
              {
                kdebug_trace();
              }

              _dispatch_firehose_gate_wait(v180, v178, 0x10000);
              v176 = 1;
              v152 = *v180;
              v153 = v152;
              v151 = v152;
              v179 = v152;
            }
          }

          v196 = _dispatch_thread_getspecific(3);
          LODWORD(v178) = v196 & 0xFFFFFFFC;
          v150 = v179;
          v149 = 0;
          v147 = v178;
          v146 = v178;
          v148 = v178;
          v17 = v179;
          v18 = v179;
          atomic_compare_exchange_strong_explicit(v180, &v18, v178, memory_order_relaxed, memory_order_relaxed);
          if (v18 != v17)
          {
            v150 = v18;
          }

          v145 = v18 == v17;
          v149 = v18 == v17;
          v179 = v150;
          v144 = v149;
          v175 = v18 == v17;
        }

        while (v18 != v17);
        v142 = v186;
        LOWORD(v143) = v184;
        WORD1(v143) = v183;
        WORD2(v143) = v185;
        HIWORD(v143) = ((1 << v185) & 0x93) != 0;
        BYTE6(v143) = (((1 << v185) & 0x93) != 0) | (2 * (*(v187 + 1697) & 1));
        BYTE6(v143) = BYTE6(v143) & 0xFB | (4 * (v181 & 1));
        v288 = v186;
        v287 = v143;
        v286 = v179;
        v285 = v178;
        v310 = 772145164;
        v309 = v186;
        v308 = v143;
        v307 = v179;
        v306 = v178;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v188 = firehose_buffer_tracepoint_reserve_slow(v187, &v142, v182);
LABEL_117:
        v43 = v188;
      }

      else
      {
        v19 = voucher_activity_create_with_data_2_streams[i];
        v140 = _firehose_task_buffer;
        v139 = v42;
        v138 = v19;
        v137 = v47;
        v136 = 0;
        v135[8] = 0;
        *v135 = v44;
        v134 = (_firehose_task_buffer + (v19 << 7) + 640);
        v133 = *&v135[1];
        v132 = *&v135[1];
        v131 = *&v135[1];
        v130 = 0;
        v129 = 0;
        v128 = *&v135[1];
        v127 = 0;
        v125 = *v134;
        v126 = v125;
        v124 = v125;
        v133 = v125;
        do
        {
          while (1)
          {
            while (1)
            {
              v132 = v133;
              v127 = BYTE4(v133);
              v33 = 0;
              if (BYTE4(v133))
              {
                v33 = v127 != 255;
              }

              if (v33)
              {
                v200 = v140;
                v199 = v127;
                v131 = v140 + (v127 << 12);
                v237 = v131;
                v236 = v139;
                v235 = v138;
                v234 = 0;
                v233 = v137;
                v232 = v136;
                v231 = *&v135[1];
                v230 = 24;
                v229 = 0;
                v228 = 0;
                v227 = 0;
                v226 = 0;
                v226 = (v139 - *(v131 + 8)) >> 48 == 0;
                v225 = 0;
                v224 = v131;
                v229 = *v131;
                do
                {
                  if (!v229)
                  {
                    v238 = 0;
                    goto LABEL_148;
                  }

                  if ((HIWORD(v229) & 0x1FF) != v235)
                  {
                    v238 = 0;
                    goto LABEL_148;
                  }

                  v228 = v229;
                  v296 = &v229;
                  v295 = v233 + v232 + 24;
                  if (v229 + v295 <= WORD1(v229) && v226)
                  {
                    if (v234 > BYTE5(v228))
                    {
                      BYTE5(v228) = v234;
                    }

                    if (((v233 + 24) & 7) != 0)
                    {
                      v32 = ((v233 + 24) & 0x1FFF8) + 8;
                    }

                    else
                    {
                      v32 = v233 + 24;
                    }

                    v228 += v32;
                    v228 -= v232 << 16;
                    v228 += 0x100000000;
                    v223 = 16;
                    v294 = &v228;
                    v293 = 40;
                    if (v228 + 40 > WORD1(v228))
                    {
                      HIBYTE(v228) |= 1u;
                    }

                    v227 = 0;
                  }

                  else
                  {
                    HIBYTE(v228) |= 1u;
                    v227 = 1;
                  }

                  v222 = v228;
                  v20 = v229;
                  v21 = v229;
                  atomic_compare_exchange_strong_explicit(v224, &v21, v228, memory_order_relaxed, memory_order_relaxed);
                  if (v21 != v20)
                  {
                    v229 = v21;
                  }

                  v221 = v21 == v20;
                  v225 = v21 == v20;
                }

                while (v21 != v20);
                v220 = v225;
                if (v227)
                {
                  if (BYTE4(v228))
                  {
                    v238 = 0;
                  }

                  else
                  {
                    v238 = -1;
                  }
                }

                else
                {
                  if (v231)
                  {
                    *v231 = v237 + WORD1(v228);
                  }

                  v238 = v229;
                }

LABEL_148:
                v128 = v238;
                if (v238 >= 1)
                {
                  v123 = 0;
                  v240 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v123 = *(v240 - 8);
                  v254 = v131;
                  v253 = v139;
                  v252 = v137;
                  v251 = v123;
                  v250 = v128;
                  v249 = v131 + v128;
                  v253 = (v139 - *(v131 + 8)) | (v137 << 48);
                  v248 = v253;
                  *(v131 + v128 + 16) = v253;
                  *(v249 + 8) = v251;
                  v141 = v249;
                  goto LABEL_187;
                }

                if (v128 < 0)
                {
                  firehose_buffer_ring_enqueue(v140, BYTE4(v133));
                }

                BYTE4(v132) = 0;
              }

              if ((v135[0] & 1) != 0 || ((v130 & 1) == 0 || (v133 & 0x400000000000) == 0) && !(BYTE5(v133) >> 7))
              {
                break;
              }

              if ((BYTE5(v133) & 0x3Fu) + 1 > 0x3E)
              {
                v31 = 63;
              }

              else
              {
                v31 = (BYTE5(v133) & 0x3F) + 1;
              }

              BYTE5(v132) = BYTE5(v132) & 0xC0 | v31 & 0x3F;
              v122 = v133;
              v121 = 0;
              v119 = v132;
              v118 = v132;
              v120 = v132;
              v22 = v133;
              v23 = v133;
              atomic_compare_exchange_strong_explicit(v134, &v23, v132, memory_order_relaxed, memory_order_relaxed);
              if (v23 != v22)
              {
                v122 = v23;
              }

              v117 = v23 == v22;
              v121 = v23 == v22;
              v133 = v122;
              v116 = v121;
              v129 = v23 == v22;
              if (v23 == v22)
              {
                v268 = v138;
                v267 = v127;
                v266 = v130 & 1;
                v265 = v133;
                v264 = v132;
                v263 = v138 | (v127 << 8);
                v262 = v130 & 1;
                v325 = 772145156;
                v324 = v263;
                v323 = v262;
                v322 = v133;
                v321 = v132;
                if (MEMORY[0xFFFFFC100])
                {
                  kdebug_trace();
                }

                v141 = 0;
                goto LABEL_187;
              }
            }

            if (!v133)
            {
              break;
            }

            if (v135[0])
            {
              LODWORD(v132) = v132 | 1;
            }

            else
            {
              LODWORD(v132) = v132 | 2;
            }

            v115 = v132 == v133;
            v30 = 1;
            if (v132 != v133)
            {
              v114 = v133;
              v113 = 0;
              v111 = v132;
              v110 = v132;
              v112 = v132;
              v24 = v133;
              v25 = v133;
              atomic_compare_exchange_strong_explicit(v134, &v25, v132, memory_order_relaxed, memory_order_relaxed);
              if (v25 != v24)
              {
                v114 = v25;
              }

              v109 = v25 == v24;
              v113 = v25 == v24;
              v133 = v114;
              v108 = v113;
              v30 = v25 == v24;
            }

            v129 = v30;
            if (v30)
            {
              v284 = v138;
              v283 = v127;
              v282 = v130 & 1;
              v281 = v133;
              v280 = v132;
              v279 = v135[0] & 1;
              v278 = v138 | (v127 << 8);
              v277 = v130 & 1 | (2 * (v135[0] & 1));
              v315 = 772145160;
              v314 = v278;
              v313 = v277;
              v312 = v133;
              v311 = v132;
              if (MEMORY[0xFFFFFC100])
              {
                kdebug_trace();
              }

              _dispatch_firehose_gate_wait(v134, v132, 0x10000);
              v130 = 1;
              v106 = *v134;
              v107 = v106;
              v105 = v106;
              v133 = v106;
            }
          }

          v195 = _dispatch_thread_getspecific(3);
          LODWORD(v132) = v195 & 0xFFFFFFFC;
          v104 = v133;
          v103 = 0;
          v101 = v132;
          v100 = v132;
          v102 = v132;
          v26 = v133;
          v27 = v133;
          atomic_compare_exchange_strong_explicit(v134, &v27, v132, memory_order_relaxed, memory_order_relaxed);
          if (v27 != v26)
          {
            v104 = v27;
          }

          v99 = v27 == v26;
          v103 = v27 == v26;
          v133 = v104;
          v98 = v103;
          v129 = v27 == v26;
        }

        while (v27 != v26);
        v96 = v139;
        LOWORD(v97) = v137;
        WORD1(v97) = v136;
        WORD2(v97) = v138;
        HIWORD(v97) = ((1 << v138) & 0x93) != 0;
        BYTE6(v97) = (((1 << v138) & 0x93) != 0) | (2 * (*(v140 + 1697) & 1));
        BYTE6(v97) = BYTE6(v97) & 0xFB | (4 * (v135[0] & 1));
        v292 = v139;
        v291 = v97;
        v290 = v133;
        v289 = v132;
        v305 = 772145164;
        v304 = v139;
        v303 = v97;
        v302 = v133;
        v301 = v132;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v141 = firehose_buffer_tracepoint_reserve_slow(v140, &v96, *&v135[1]);
LABEL_187:
        v43 = v141;
      }

      if (v43)
      {
        v40 = v43 + 3;
        if (v51)
        {
          v80 = v43 + 3;
          v79 = &v51;
          v78 = 8;
          __memcpy_chk();
          v40 = &v80[v78 / 8];
        }

        if (v48)
        {
          v77 = v40;
          v76 = &v48;
          v75 = 8;
          __memcpy_chk();
          v40 = &v77[v75 / 8];
        }

        if (v50)
        {
          v74 = v40;
          v73 = &v50;
          v72 = 8;
          __memcpy_chk();
          v40 = &v74[v72 / 8];
        }

        v71 = v40;
        v70 = &v52;
        v69 = 8;
        __memcpy_chk();
        v68 = &v71[v69 / 8];
        v67 = v55;
        v66 = v54;
        __memcpy_chk();
        v192 = v49;
        v191 = _firehose_task_buffer;
        v190 = v43;
        v194 = v43;
        v193 = v43 & 0xFFFFFFFFFFFFF000;
        v189 = v43 & 0xFFFFFFFFFFFFF000;
        v337 = v49;
        v336 = (v43 & 0xFFFFFFFFFFFFF000);
        v335 = v43;
        v334 = 0;
        v333 = v49;
        atomic_store(v49, v43);
        v332 = 0x100000000;
        add_explicit = atomic_fetch_add_explicit(v336, 0xFFFFFFFF00000000, memory_order_relaxed);
        v334 = add_explicit;
        v29 = 0;
        if (BYTE4(add_explicit) == 1)
        {
          v29 = HIBYTE(v334) & 1;
        }

        if (v29)
        {
          v339 = v191;
          v338 = v189;
          firehose_buffer_ring_enqueue(v191, (v189 - v191) >> 12);
        }
      }
    }
  }

  *v58 = v49;
  return v45;
}