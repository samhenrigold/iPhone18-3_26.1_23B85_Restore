void sub_100001090(uint64_t result)
{
  if (*(result + 8))
  {
    sub_100001794(result, (result + 8));
  }
}

void sub_1000010BC(id a1, firehose_client_s *a2, unint64_t a3, firehose_chunk_s *a4, $947C0A473ACA94B8A38733FF54A32168 a5)
{
  v9 = sub_1000025DC(a2);
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v11 = sub_1000025DC(a2);

        sub_10000B3A0(v11);
      }

      return;
    }

    pid = -1431655766;
    memset(__b, 170, sizeof(__b));
    sub_1000025A8(a2, &pid);
    if (pid)
    {
      *out = 0xAAAAAAAAAAAAAAAALL;
      v13 = sub_100005EE4(a2, out);
      if (v13)
      {
        if (*out == 2048)
        {
          v14 = v13;
          if (proc_pidpath(pid, __b, 0x400u) <= 0)
          {
            __strlcpy_chk();
          }

          v15 = sub_100008AC4(a2, __b);
          sub_100009E50(a2);
          *&v16 = 0xAAAAAAAAAAAAAAAALL;
          *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
          buffer[0] = v16;
          buffer[1] = v16;
          buffer[2] = v16;
          buffer[3] = v16;
          buffer[4] = v16;
          buffer[5] = v16;
          buffer[6] = v16;
          buffer[7] = v16;
          buffer[8] = v16;
          buffer[9] = v16;
          buffer[10] = v16;
          buffer[11] = v16;
          if (proc_pidinfo(pid, 18, 1uLL, buffer, 192) == 192)
          {
            uuid_copy((v15 + 64), &buffer[8] + 8);
            v17 = (buffer[0] & 0x10) == 0;
            v18 = 6;
            v19 = 4;
          }

          else
          {
            uuid_copy((v15 + 64), (v14 + 8));
            v17 = (*v14 & 1) == 0;
            v18 = 4;
            v19 = 6;
          }

          if (v17)
          {
            v18 = v19;
          }

          v26 = *(v15 + 182);
          *(v15 + 180) = v18;
          if (v26 && sub_100004300((v15 + 64), (v15 + 182), 0, 1))
          {
            sub_100009CC4(a2);
          }

          if (!uuid_is_null((v14 + 24)))
          {
            uuid_copy((v15 + 80), (v14 + 24));
            sub_100009D98((v15 + 80));
          }

          v27 = dword_100044CB8;
          if (*(v14 + 40) != 1 || (SHIWORD(dword_100044CB8) >= *(v14 + 6) ? (v28 = *(v14 + 6)) : (v28 = HIWORD(dword_100044CB8)), (_os_trace_is_development_build() & 1) == 0 && v28 == -1))
          {
            v28 = v27;
          }

          *(v15 + 170) = v28;
          var1 = a4->var0.var1.var1;
          if (var1)
          {
            v30 = *a4->var0.var1.var2;
            if (v30)
            {
              sub_100014EA8(v15, var1, v30);
            }
          }

LABEL_73:
          sub_100009C08(v15, pid);
          return;
        }
      }

      else
      {
        qword_1000360E8 = "BUG IN LIBTRACE: Should have a metadata buffer";
        __break(1u);
      }

      qword_1000360E8 = "BUG IN LIBTRACE: Invalid metadata buffer size";
      __break(1u);
      return;
    }

    strcpy(__b, "/kernel");
    v15 = sub_100008AC4(a2, __b);
    sub_100009E50(a2);
    if (qword_100044D00 != -1)
    {
      dispatch_once(&qword_100044D00, &stru_100032E80);
    }

    if (byte_100044D08)
    {
      v20 = 6;
    }

    else
    {
      v20 = 4;
    }

    *(v15 + 180) = v20;
    uuid_copy((v15 + 64), byte_100042B01);
    if (qword_100036238 != -1)
    {
      dispatch_once(&qword_100036238, &stru_1000310B8);
    }

    if (byte_100036230 == 1)
    {
      *out = 0;
      *&out[8] = out;
      *&out[16] = 0x2000000000;
      out[24] = 0;
      *&buffer[0] = _NSConcreteStackBlock;
      *(&buffer[0] + 1) = 0x40000000;
      *&buffer[1] = sub_100014DF0;
      *(&buffer[1] + 1) = &unk_100031700;
      *&buffer[2] = out;
      *(&buffer[2] + 1) = v15;
      dyld_for_each_installed_shared_cache();
      _Block_object_dispose(out, 8);
    }

    if (qword_100044D20 != -1)
    {
      dispatch_once(&qword_100044D20, &stru_100032F00);
    }

    if (byte_1000360CC == 1)
    {
      sub_10002767C((v15 + 80));
    }

    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v21;
    *&out[16] = v21;
    uuid_unparse(byte_100042B01, out);
    memset(buffer, 170, sizeof(buffer));
    snprintf(buffer, 0x400uLL, "_logd_read_kernel_info calling _logd_uuiddb_harvest_kernel for %s", out);
    sub_1000155B8(buffer);
    sub_1000186AC();
    if (qword_100044D20 != -1)
    {
      dispatch_once(&qword_100044D20, &stru_100032F00);
    }

    if ((byte_1000360CC & 1) == 0)
    {
      v22 = CFArrayCreate(kCFAllocatorDefault, off_1000344A8, 3, &kCFTypeArrayCallBacks);
      v23 = OSKextCopyLoadedKextInfo();
      if (v23)
      {
        v24 = v23;
        CFDictionaryApplyFunction(v23, sub_100015048, v15);
        CFRelease(v24);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    *(v15 + 170) = 64;
    goto LABEL_73;
  }

  if (a3 - 3 >= 2)
  {
    if (a3 == 6)
    {
      v12 = sub_1000025DC(a2);
      if (v12)
      {

        sub_100009874(v12);
      }
    }
  }

  else
  {
    if (a5.var2.var0 > 0x1000uLL || a5.var2.var1 > 0x1000uLL || a5.var2.var4 > 7u)
    {
      return;
    }

    if (((1 << a5.var2.var4) & 0x93) != 0)
    {
      if (a3 != 3)
      {
        return;
      }

LABEL_8:
      v10 = (v9 + 96);

      sub_1000023D0(v10, a4, a5.var0 & 0xFFFFFFFF00000000 | (a5.var2.var1 << 16) | a5.var2.var0);
      return;
    }

    if (a5.var2.var4 == 2)
    {
      if (a3 != 4)
      {
        return;
      }

      goto LABEL_8;
    }

    if (a5.var2.var4 == 3 && a3 == 4)
    {
      v25 = v9 + 96;

      sub_100008D2C(v25);
    }
  }
}

void sub_100001794(atomic_ushort **a1, atomic_ullong *a2)
{
  v3 = 0;
  v4 = a1 - dword_1000343B0 - 120;
  v5 = (v4 >> 4) & 1;
  v6 = 16 << ((v4 & 0x10) != 0);
  v7 = 256 << ((v4 & 0x10) != 0);
  v8 = ~(17 << ((v4 & 0x10) != 0));
  if ((v4 & 0x20) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  while (2)
  {
    v10 = *a1;
    if (!*a1)
    {
      v10 = _dispatch_wait_for_enqueuer();
    }

    do
    {
      v11 = &v10[4 * v5];
      v12 = *(v11 + 4);
      *a1 = v12;
      if (!v12)
      {
        v18 = *a2;
        while (v10 == (v18 & 0xFFFFFFFFFFFFFFF8))
        {
          v19 = v18;
          atomic_compare_exchange_strong_explicit(a2, &v19, 0, memory_order_release, memory_order_relaxed);
          v20 = v19 == v18;
          v18 = v19;
          if (v20)
          {
            goto LABEL_7;
          }
        }

        v12 = *(v11 + 4);
        if (!v12)
        {
          v12 = _dispatch_wait_for_enqueuer();
        }

        *a1 = v12;
      }

LABEL_7:
      v13 = v10[70];
      do
      {
        v14 = v13;
        v15 = v13 & v8;
        if ((v13 & v6) != 0)
        {
          v16 = v7;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16 | v15;
        atomic_compare_exchange_strong_explicit(v10 + 70, &v13, v16 | v15, memory_order_relaxed, memory_order_relaxed);
      }

      while (v13 != v14);
      if (((v17 ^ v14) & 0x300) != 0 && (v17 & 0x300) == 0x300)
      {
        dispatch_async_f(qword_1000343C8, v10, sub_10000AF54);
      }

      if ((v7 & v17) == 0)
      {
        sub_10000197C(v10, 0, v5);
      }

      if (++v3 == v9)
      {
        sub_100003410();

        dispatch_source_merge_data(v21, v22);
        return;
      }

      v10 = v12;
    }

    while (v12);
    if (*a2)
    {
      continue;
    }

    break;
  }

  sub_100003410();
}

void sub_10000197C(unint64_t a1, mach_port_t a2, int a3)
{
  v4 = *(a1 + 48);
  v54 = a3 & 1;
  v5 = 4;
  v6 = 146;
  v7 = 64;
  v8 = 56;
  if (a3)
  {
    v8 = 72;
    v7 = 80;
    v6 = 145;
    v9 = v4 + 128;
  }

  else
  {
    v9 = *(a1 + 48);
  }

  v55 = *(a1 + v8);
  v58 = *(a1 + 48);
  v59 = *(a1 + v7);
  v10 = *(a1 + v6);
  if (a3)
  {
    v5 = 3;
  }

  v57 = v5;
  if (v10)
  {
    v11 = off_1000343E8;
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 144))
  {
LABEL_81:
    if (v11)
    {
      if (v54)
      {
        *(a1 + 145) = 0;
      }

      else
      {
        *(a1 + 146) = 0;
      }

      dispatch_group_leave(v11[1]);
    }

    sub_100027734(a1, a2);
    if (*(a1 + 128))
    {
      LOWORD(v43) = *(a1 + 140);
      while (1)
      {
        v44 = v43;
        if (((272 << v54) & v43) != 0)
        {
          break;
        }

        v43 = v43;
        atomic_compare_exchange_strong_explicit((a1 + 140), &v43, v43 | (17 << v54), memory_order_relaxed, memory_order_relaxed);
        if (v43 == v44)
        {
          v45 = 2;
          if (!*(a1 + 147))
          {
            v45 = 0;
          }

          if (a1 && ((1 << v54) & v44) == 0)
          {
            v46 = v45 | v54;
            v47 = &dword_1000343B0[4 * (v45 | v54) + 30];
            *(a1 + 8 * v54 + 32) = 0;
            v48 = &dword_1000343B0[4 * (v45 | v54) + 32];
            StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            *(StatusReg + 976) = v48;
            v50 = atomic_exchange_explicit(v48, a1, memory_order_release);
            if (v50)
            {
              *(v50 + 8 * v54 + 32) = a1;
              *(StatusReg + 976) = 0;
            }

            else
            {
              *v47 = a1;
              *(StatusReg + 976) = 0;
              v51 = *&dword_1000343B0[2 * v46 + 46];

              dispatch_source_merge_data(v51, 1uLL);
            }
          }

          return;
        }
      }
    }

    return;
  }

  v12 = 0;
  v13 = 320;
  if (a3)
  {
    v13 = 384;
  }

  v56 = (v4 + v13);
  v14 = *(a1 + v7);
  while (v14 != (v59 + v12))
  {
    do
    {
LABEL_16:
      v16 = *(v9 + 2 * ((v59 + v12) & 0x3F)) & 0x3F;
    }

    while (!(*(a1 + 128) | v16));
    if ((*(v9 + 2 * ((v59 + v12) & 0x3F)) & 0x3F) != 0)
    {
      v17 = (v58 + (v16 << 12));
      v18 = *(v17 + 2);
      v19 = *v17;
      v20 = *(v17 + 6);
      v21 = *(v17 + 7);
      if (v20 == 3)
      {
        os_unfair_lock_lock((a1 + 124));
      }

      (*(off_1000343E0 + 2))(off_1000343E0, a1, v57, v17, (v19 | (v18 << 32)) & 0xFFFFFFFFFFFFLL | (v20 << 48) | (v21 << 56));
      if (v11)
      {
        ((*v11)[2].isa)();
      }

      if (v20 == 3)
      {
        os_unfair_lock_unlock((a1 + 124));
      }
    }

    if (++v12 >= 4u && !v11)
    {
      goto LABEL_28;
    }
  }

  HIWORD(v15) = WORD1(v56);
  LOWORD(v15) = atomic_load_explicit(v56, memory_order_acquire);
  if (v15 != v14)
  {
    v14 = v15;
    if ((v15 - v55) > 0x3Fu)
    {
      goto LABEL_81;
    }

    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_76;
  }

LABEL_28:
  v22 = v54;
  v23 = 64;
  if (v54)
  {
    v23 = 80;
  }

  v24 = 258;
  if (v54)
  {
    v24 = 262;
  }

  atomic_fetch_add_explicit((a1 + v23), v12, memory_order_relaxed);
  if (!*(a1 + 128))
  {
    goto LABEL_51;
  }

  v25 = a2;
  if (a2)
  {
    if (v11)
    {
      goto LABEL_79;
    }

    goto LABEL_35;
  }

  if (*(v58 + v24) != v55)
  {
    v25 = 0;
    if (v11)
    {
      goto LABEL_79;
    }
  }

  else
  {
LABEL_51:
    v25 = *(a1 + 120);
    if (v11)
    {
      goto LABEL_79;
    }
  }

LABEL_35:
  if (v25)
  {
    while (1)
    {
      v60 = 0;
      v61 = 0;
      v26 = *(a1 + 64);
      v27 = *(a1 + 80);
      v60 = v26;
      v61 = v27;
      v28 = *(a1 + 56);
      do
      {
        if (v28 >= v26)
        {
          break;
        }

        v29 = v28;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v29, v26, memory_order_relaxed, memory_order_relaxed);
        v30 = v29 == v28;
        v28 = v29;
      }

      while (!v30);
      v31 = *(a1 + 72);
      do
      {
        if (v31 >= v27)
        {
          break;
        }

        v32 = v31;
        atomic_compare_exchange_strong_explicit((a1 + 72), &v32, v27, memory_order_relaxed, memory_order_relaxed);
        v30 = v32 == v31;
        v31 = v32;
      }

      while (!v30);
      if (!*(a1 + 128))
      {
        break;
      }

      if (*(a1 + 120) == v25)
      {
        v33 = sub_100003350(v25, v26, v27, *(a1 + 147), 0);
      }

      else
      {
        v33 = sub_100009654(v25, 0, v26, v27, *(a1 + 147));
      }

      if (v33 != -301)
      {
        if (v33 == 268435459 || !v33)
        {
          goto LABEL_57;
        }

LABEL_102:
        _dispatch_bug();
        goto LABEL_57;
      }

      qword_1000360E8 = "MIG_REPLY_MISMATCH";
      qword_100036118 = -301;
      __break(1u);
LABEL_76:
      v12 = 0;
      v22 = v54;
      v25 = a2;
      if (!v11)
      {
        goto LABEL_35;
      }

LABEL_79:
      sub_10001072C(a1, v11, v22);
      if (v22)
      {
        *(a1 + 145) = 0;
      }

      else
      {
        *(a1 + 146) = 0;
      }

      dispatch_group_leave(v11[1]);
      if (!v25)
      {
        goto LABEL_57;
      }
    }

    if ((ioctl(dword_1000343F8, 0x80107451uLL, &v60) & 0x80000000) == 0 || !**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8))
    {
      goto LABEL_57;
    }

    goto LABEL_102;
  }

LABEL_57:
  if (*(a1 + 128))
  {
    if (v12 >= 4u)
    {
      v34 = 1 << v22;
      v35 = *(a1 + 140);
      while (1)
      {
        v36 = (256 << v22) & v35;
        v37 = (v34 & v35);
        if (v36 | v37)
        {
          break;
        }

        v38 = v35;
        atomic_compare_exchange_strong_explicit((a1 + 140), &v38, v35 | v34, memory_order_relaxed, memory_order_relaxed);
        v30 = v38 == v35;
        v35 = v38;
        if (v30)
        {
          goto LABEL_63;
        }
      }

      if (v36)
      {
        goto LABEL_69;
      }

LABEL_63:
      v39 = 2;
      if (!*(a1 + 147))
      {
        v39 = 0;
      }

      if (a1 && !v37)
      {
        v40 = v39 | v22;
        *(a1 + 8 * v22 + 32) = 0;
        v41 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        *(v41 + 976) = &dword_1000343B0[4 * (v39 | v22) + 32];
        v42 = atomic_exchange_explicit(&dword_1000343B0[4 * (v39 | v22) + 32], a1, memory_order_release);
        if (v42)
        {
          *(v42 + 8 * v22 + 32) = a1;
          *(v41 + 976) = 0;
        }

        else
        {
          *&dword_1000343B0[4 * v40 + 30] = a1;
          *(v41 + 976) = 0;
          dispatch_source_merge_data(*&dword_1000343B0[2 * v40 + 46], 1uLL);
        }
      }
    }

LABEL_69:
    if (v12)
    {
      if (off_1000343F0)
      {
        sub_10000197C(off_1000343F0, 0, a3 | 2);
      }
    }
  }

  else if ((a3 & 2) == 0)
  {
    dispatch_resume(*(a1 + 96));
  }
}

void sub_100001F68(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 7)
  {
    if (a2 == 8)
    {
      if (atomic_fetch_add_explicit((a1 + 142), 0xFFu, memory_order_release) == 1)
      {
        atomic_load_explicit((a1 + 142), memory_order_acquire);
        v10 = mach_port_deallocate(mach_task_self_, *(a1 + 120));
        if (v10 == -301)
        {
          sub_100027888();
        }

        if (v10)
        {
          _dispatch_bug();
        }

        *(a1 + 120) = 0;
        v12 = *(a1 + 112);
        if (v12 + 1 >= 2 || (v12 = *(a1 + 116), v12 + 1 > 1))
        {
          sub_10002791C(v12);
        }

        v13 = *(a1 + 140);
        while ((v13 & 0x110) == 0)
        {
          v14 = v13;
          atomic_compare_exchange_strong_explicit((a1 + 140), &v13, v13 | 0x11, memory_order_relaxed, memory_order_relaxed);
          if (v13 == v14)
          {
            v15 = 2;
            if (!*(a1 + 147))
            {
              v15 = 0;
            }

            if (a1 && (v14 & 1) == 0)
            {
              *(a1 + 32) = 0;
              StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              *(StatusReg + 976) = &dword_1000343B0[4 * v15 + 32];
              v17 = atomic_exchange_explicit(&dword_1000343B0[4 * v15 + 32], a1, memory_order_release);
              if (v17)
              {
                *(v17 + 32) = a1;
                *(StatusReg + 976) = 0;
              }

              else
              {
                *&dword_1000343B0[4 * v15 + 30] = a1;
                *(StatusReg + 976) = 0;
                dispatch_source_merge_data(*&dword_1000343B0[2 * v15 + 46], 1uLL);
              }
            }

            break;
          }
        }

        v18 = *(a1 + 140);
        while ((v18 & 0x220) == 0)
        {
          v19 = v18;
          atomic_compare_exchange_strong_explicit((a1 + 140), &v18, v18 | 0x22, memory_order_relaxed, memory_order_relaxed);
          if (v18 == v19)
          {
            v20 = 3;
            if (!*(a1 + 147))
            {
              v20 = 1;
            }

            if (a1 && (v19 & 2) == 0)
            {
              *(a1 + 40) = 0;
              v21 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              *(v21 + 976) = &dword_1000343B0[4 * v20 + 32];
              v22 = atomic_exchange_explicit(&dword_1000343B0[4 * v20 + 32], a1, memory_order_release);
              if (v22)
              {
                *(v22 + 40) = a1;
                *(v21 + 976) = 0;
              }

              else
              {
                *&dword_1000343B0[4 * v20 + 30] = a1;
                *(v21 + 976) = 0;
                v23 = *&dword_1000343B0[2 * v20 + 46];

                dispatch_source_merge_data(v23, 1uLL);
              }
            }

            return;
          }
        }
      }
    }

    else if (a2 == 13)
    {
      dispatch_mach_cancel();

      dispatch_mach_cancel();
    }
  }

  else if (a2 == 2)
  {
    if ((dispatch_mach_mig_demux() & 1) == 0)
    {
      msg = dispatch_mach_msg_get_msg();

      mach_msg_destroy(msg);
    }
  }

  else if (a2 == 7)
  {
    v4 = *(dispatch_mach_msg_get_msg() + 12);
    if ((v4 - 1) <= 0xFFFFFFFD)
    {
      if (*(a1 + 112) == v4)
      {
        v8 = 0;
      }

      else
      {
        if (*(a1 + 116) != v4)
        {
          sub_100027944(v4, v5, v6, v7);
        }

        v8 = 1;
      }

      v11 = (a1 + 112 + 4 * v8);
      if (mach_port_destruct(mach_task_self_, *v11, 0, v11) == -301)
      {
        sub_100027888();
      }

      *v11 = 0;
    }
  }
}

uint64_t sub_100002244(int a1)
{
  context = dispatch_mach_mig_demux_get_context();
  if (!context)
  {
    return 5;
  }

  v3 = *(context + 116);
  if ((*(context + 144) & 1) == 0)
  {
    v4 = 1 << (v3 == a1);
    v5 = *(context + 140);
    while (1)
    {
      v6 = (256 << (v3 == a1)) & v5;
      v7 = (v4 & v5);
      if (v6 | v7)
      {
        break;
      }

      v8 = v5;
      atomic_compare_exchange_strong_explicit((context + 140), &v8, v5 | v4, memory_order_relaxed, memory_order_relaxed);
      v9 = v8 == v5;
      v5 = v8;
      if (v9)
      {
        if (*(context + 147))
        {
          v10 = 2;
        }

        else
        {
          v10 = 0;
        }

        v11 = v3 == a1;
        if (v3 == a1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = v10;
        }

        goto LABEL_13;
      }
    }

    if (v6)
    {
      return 0;
    }

    v18 = *(context + 147) ? 2 : 0;
    v11 = v3 == a1;
    v12 = v3 == a1 ? v18 + 1 : v18;
    if (v7)
    {
      return 0;
    }

LABEL_13:
    v13 = &dword_1000343B0[4 * v12];
    *(context + 8 * v11 + 32) = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 976) = v13 + 32;
    v15 = atomic_exchange_explicit(v13 + 16, context, memory_order_release);
    if (v15)
    {
      v16 = 0;
      *(v15 + 8 * v11 + 32) = context;
      *(StatusReg + 976) = 0;
      return v16;
    }

    *(v13 + 15) = context;
    *(StatusReg + 976) = 0;
    dispatch_source_merge_data(*&dword_1000343B0[2 * v12 + 46], 1uLL);
  }

  return 0;
}

_DWORD *sub_10000236C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100002244(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

void sub_1000023D0(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v6 = HIWORD(a3);
  v15 = -1431655766;
  v7 = *(a1 + 8);
  v8 = *a1;
  if (v7)
  {
    v15 = *(*(v8 + 16) + 64);
    if (v15)
    {
LABEL_3:
      v9 = (v3 >> 58) & 1;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000025A8(v8, &v15);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  LOBYTE(v9) = byte_100042A94;
LABEL_6:
  if (v6 <= 1u)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    if (v6 != 1)
    {
      return;
    }

    if ((v9 & 1) == 0)
    {
      v10 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    if (v6 == 2)
    {
      v10 = 4;
      goto LABEL_22;
    }

    if (v6 != 4)
    {
      if (v6 != 7)
      {
        return;
      }

LABEL_15:
      if ((v9 & 1) == 0)
      {
        v10 = 0;
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if ((v9 & 1) == 0)
    {
      v10 = 2;
      goto LABEL_22;
    }
  }

LABEL_19:
  if (byte_100044C29 != 1)
  {
    return;
  }

  v10 = 3;
LABEL_22:
  v11 = *a1;
  if (a1[1])
  {
    v12 = *(v11 + 304);
  }

  else
  {
    v12 = sub_1000025DC(v11);
  }

  if ((*(v12 + 168) & 1) == 0)
  {
    if (1248 * v10 > ~qword_1000344D8)
    {
      __break(0x5513u);
    }

    else
    {
      sub_1000026EC(&qword_1000344D8[156 * v10], a2, v3, a1);
      v13 = v3 - WORD1(v3) + 4096;
      if (v13 >= 0xFF9)
      {
        v13 = 4096;
      }

      if (WORD1(v3) == 4096)
      {
        v3 = v3;
      }

      else
      {
        v3 = v13;
      }

      os_unfair_lock_lock_with_options();
      v14 = sub_1000029D0(v12, v10);
      *v14 += v3;
      os_unfair_lock_unlock((v12 + 176));
    }
  }
}

uint64_t sub_1000025A8(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 128);
  if (a2)
  {
    *a2 = v3;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 1664);
  if (v4)
  {
    return v4;
  }

  else
  {
    return -1;
  }
}

void *sub_1000025E4(void *result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    v3 = result[1];
    if (v3)
    {
      v4 = __ROR8__(__PAIR64__(a3, HIDWORD(a2)) + 12, 12);
      v5 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) >> 47))) ^ __PAIR64__(a3, HIDWORD(a2));
      v6 = vcnt_s8(v3);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) >> 47))) ^ __PAIR64__(a3, HIDWORD(a2));
        if (v5 >= *&v3)
        {
          v7 = v5 % *&v3;
        }
      }

      else
      {
        v7 = v5 & (*&v3 - 1);
      }

      v8 = *(*result + 8 * v7);
      if (v8)
      {
        for (i = *v8; i; i = *i)
        {
          v10 = i[1];
          if (v5 == v10)
          {
            if (*(i + 6) == a3 && i[2] == a2)
            {
              return i[4];
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v10 >= *&v3)
              {
                v10 %= *&v3;
              }
            }

            else
            {
              v10 &= *&v3 - 1;
            }

            if (v10 != v7)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000026EC(dispatch_queue_t *a1, char *a2, int a3, uint64_t a4)
{
  dispatch_assert_queue_V2(*a1);
  if (HIWORD(a3) == 4096)
  {
    if ((a3 & 7) != 0)
    {
      v8 = a3;
      v9 = a3;
LABEL_11:
      v11 = v8 - (v9 & 7) + 40;
      goto LABEL_14;
    }

    LODWORD(v8) = a3;
  }

  else
  {
    v8 = a3 - HIWORD(a3) + 4096;
    if (a3 - HIWORD(a3) + 7 >= 0xFFFFF007 && ((a3 - HIWORD(a3)) & 7) != 0)
    {
      v9 = a3 - BYTE2(a3);
      goto LABEL_11;
    }

    if (v8 >= 0xFF9)
    {
      LODWORD(v8) = 4096;
    }
  }

  v11 = v8 + 32;
LABEL_14:
  v32 = v11;
  result = sub_100002EA0(a1, v11);
  if (__CFADD__(a1 + 6, 264 * result))
  {
    goto LABEL_53;
  }

  v13 = &a1[33 * result + 6];
  v14 = *a4;
  if (*(a4 + 8))
  {
    v15 = *(v14[2] + 64);
LABEL_18:
    v16 = *(v14[2] + 76);
    goto LABEL_20;
  }

  v15 = sub_1000025A8(v14, 0);
  v14 = *a4;
  if (*(a4 + 8))
  {
    goto LABEL_18;
  }

  v16 = sub_1000025D4(v14);
LABEL_20:
  result = sub_1000025E4(v13[28], v15, v16);
  if (!result)
  {
    os_retain(*a4);
    result = sub_100002A10(v13 + 28, v15, v16, a4);
  }

  v17 = v13[30];
  v18 = *(v13 + 63);
  if (__CFADD__(v17, v18))
  {
    goto LABEL_53;
  }

  LODWORD(v19) = a3 - HIWORD(a3) + 4096;
  v20 = v19 < 0xFF9;
  if (v19 >= 0xFF9)
  {
    v19 = 4096;
  }

  else
  {
    v19 = v19;
  }

  if (HIWORD(a3) == 4096)
  {
    v21 = a3;
  }

  else
  {
    v21 = v19;
  }

  v22 = HIWORD(a3) != 4096 && v20;
  v23 = v21 + 32;
  if (v17)
  {
    v24 = v17 + v18;
    if ((v21 & 7) == 0)
    {
      goto LABEL_40;
    }

    if (!__CFADD__(v24, v23 & 0xFFFFFFF8))
    {
      goto LABEL_39;
    }

    goto LABEL_53;
  }

  result = _os_trace_malloc_typed();
  v24 = result;
  if ((v21 & 7) != 0)
  {
    if (!__CFADD__(result, v23 & 0xFFFFFFF8))
    {
LABEL_39:
      *(v24 + (v23 & 0x1FFFFFFF8)) = 0;
      goto LABEL_40;
    }

LABEL_53:
    __break(0x5513u);
    goto LABEL_54;
  }

LABEL_40:
  *v24 = 24577;
  *(v24 + 8) = v21 + 16;
  v25 = *a4;
  if (*(a4 + 8))
  {
    v26 = *(v25[2] + 64);
LABEL_43:
    v27 = *(v25[2] + 76);
    goto LABEL_45;
  }

  v26 = sub_1000025A8(v25, 0);
  v25 = *a4;
  if (*(a4 + 8))
  {
    goto LABEL_43;
  }

  v27 = sub_1000025D4(v25);
LABEL_45:
  *(v24 + 16) = v26;
  *(v24 + 24) = v27;
  *(v24 + 28) = 0;
  *(v24 + 29) = v22;
  v28 = v24 + 32;
  *(v24 + 30) = 0;
  if (!v22)
  {
    v30 = (v24 + 32);
    v31 = a2;
    v29 = v21;
    goto LABEL_51;
  }

  result = memcpy((v24 + 32), a2, a3);
  if (__CFADD__(v28, a3))
  {
    goto LABEL_53;
  }

  if (HIWORD(a3) <= 0x1000uLL)
  {
    if (!__CFADD__(a2, HIWORD(a3)))
    {
      v29 = 4096 - HIWORD(a3);
      v30 = (v28 + a3);
      v31 = &a2[HIWORD(a3)];
LABEL_51:
      result = memcpy(v30, v31, v29);
      *(v13 + 252) = vadd_s32(*(v13 + 252), (v32 | 0x100000000));
      return result;
    }

    goto LABEL_53;
  }

LABEL_54:
  __break(0x5512u);
  return result;
}

uint64_t sub_1000029D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    v4 = _os_assert_log();
    result = _os_crash(v4, v2, v3);
    __break(1u);
  }

  else if (!__CFADD__(result + 128, 8 * a2))
  {
    result += 128 + 8 * a2;
    return result;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_100002A10(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = 0x9DDFEA08EB382D69 * (a2 ^ __ROR8__(__PAIR64__(a3, HIDWORD(a2)) + 12, 12));
  v6 = __ROR8__(__PAIR64__(a3, HIDWORD(a2)) + 12, 12) ^ (v5 >> 47);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ v5)) >> 47));
  v8 = v7 ^ __PAIR64__(a3, HIDWORD(a2));
  v9 = v4[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7 ^ __PAIR64__(a3, HIDWORD(a2));
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = v8 & (*&v9 - 1);
  }

  v12 = *(*v4 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_24;
    }

LABEL_23:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  if (*(v13 + 6) != a3 || v13[2] != a2)
  {
    goto LABEL_23;
  }

  return 0;
}

tm *sub_100002EA0(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*a1);
  v4 = a1 + 48;
  v5 = *(a1 + 1128);
  if (v5 != -1)
  {
    if (v5 >= 5)
    {
      goto LABEL_54;
    }

    if (__CFADD__(v4, 264 * v5))
    {
      goto LABEL_53;
    }

    v6 = v4 + 264 * v5;
    v7 = *(v6 + 252);
    if (v7 + a2 <= *(v6 + 248) && *(v6 + 256) < 0x64u)
    {
      goto LABEL_35;
    }

    sub_100004C04(a1);
  }

  dispatch_assert_queue_V2(*a1);
LABEL_8:
  while (1)
  {
    for (i = *(a1 + 1104); ; i = v11)
    {
      while (1)
      {
        v9 = HIDWORD(i);
        if (i)
        {
          break;
        }

        if (!v9)
        {
LABEL_17:
          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = (v13 + 24);
          }

          else
          {
            v14 = a1;
          }

          dispatch_async_and_wait(*v14, &stru_1000320F8);
          goto LABEL_8;
        }

        v12 = i;
        atomic_compare_exchange_strong_explicit((a1 + 1104), &v12, (v9 | 1) << 32, memory_order_acquire, memory_order_acquire);
        if (v12 == i)
        {
          goto LABEL_21;
        }

        i = v12;
      }

      v10 = (i - 1) & i;
      v11 = i;
      atomic_compare_exchange_strong_explicit((a1 + 1104), &v11, i & 0xFFFFFFFF00000000 | v10, memory_order_acquire, memory_order_acquire);
      if (v11 == i)
      {
        break;
      }
    }

    if (v10 != i)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_17;
    }

    do
    {
LABEL_21:
      if ((__ulock_wait() & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      v15 = *__error();
    }

    while (v15 == 4);
    if (v15 > 0x3C || ((1 << v15) & 0x1000000000004001) == 0)
    {
      qword_1000360E8 = "BUG IN LIBTRACE: ulock_wait() failed";
      qword_100036118 = v15;
      __break(1u);
      goto LABEL_53;
    }
  }

  v5 = __clz(__rbit32(i));
  if (v5 >= 5)
  {
LABEL_54:
    __break(0x5512u);
  }

  if (__CFADD__(v4, 264 * v5))
  {
LABEL_53:
    __break(0x5513u);
    goto LABEL_54;
  }

  v6 = v4 + 264 * v5;
  if (!*(v6 + 240))
  {
    v17 = *(v6 + 248);
    v18 = (*(a1 + 1112) + (v17 * v5));
    *(v6 + 240) = v18;
    madvise(v18, v17, 8);
  }

  *(a1 + 1128) = v5;
  LODWORD(v7) = *(v6 + 252);
LABEL_35:
  if (v7)
  {
    return v5;
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  if (!*v6)
  {
    *v6 = 0x1100001000;
    *(v6 + 8) = 208;
    *(v6 + 52) = 1;
    mach_timebase_info((v6 + 16));
    *(v6 + 56) = 0x800006100;
    *(v6 + 72) = 0x3800006101;
    *(v6 + 136) = 0x1800006102;
    *(v6 + 168) = 0x3000006103;
    v34 = 4;
    sysctlbyname("hw.cputype", (v6 + 80), &v34, 0, 0);
    v34 = 4;
    sysctlbyname("hw.cpusubtype", (v6 + 84), &v34, 0, 0);
    v34 = 16;
    sysctlbyname("kern.osversion", (v6 + 88), &v34, 0, 0);
    v34 = 32;
    sysctlbyname("hw.model", (v6 + 104), &v34, 0, 0);
    boot_uuid = _os_trace_get_boot_uuid();
    uuid_parse(boot_uuid, (v6 + 144));
    *(v6 + 160) = getpid();
  }

  v20 = *(v6 + 52);
  if (*(a1 + 1244))
  {
    *(v6 + 52) = v20 | 2;
    *(a1 + 1244) &= ~1u;
  }

  else
  {
    *(v6 + 52) = v20 & 0xFFFFFFFD;
  }

  v21 = *(a1 + 24);
  *(v6 + 24) = *(a1 + 16);
  *(v6 + 64) = v21;
  *(v6 + 32) = *(a1 + 32);
  *(v6 + 40) = *(a1 + 40) / 1000;
  v33 = *(a1 + 32);
  __b.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__b.tm_mon = v22;
  *&__b.tm_isdst = v22;
  *&__b.tm_sec = v22;
  result = localtime_r(&v33, &__b);
  tm_isdst = __b.tm_isdst;
  *(v6 + 48) = __b.tm_isdst;
  if (__OFSUB__(0, __b.tm_gmtoff))
  {
    __break(0x550Du);
    goto LABEL_56;
  }

  v25 = 60 * tm_isdst;
  if (v25 != v25)
  {
LABEL_56:
    __break(0x550Cu);
    goto LABEL_57;
  }

  v26 = -LODWORD(__b.tm_gmtoff) / 60;
  v27 = __OFADD__(v26, v25);
  v28 = v26 + v25;
  if (!v27)
  {
    *(v6 + 44) = v28;
    *(v6 + 176) = 0u;
    v29 = v6 + 176;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    memset(&__b, 170, 0x400uLL);
    v30 = readlink("/private/var/db/timezone/localtime", &__b, 0x3FFuLL);
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v30 >= 0x400)
      {
        goto LABEL_54;
      }

      if (!__CFADD__(&__b, v30))
      {
        *(&__b.tm_sec + v30) = 0;
        v31 = strstr(&__b, "/private/var/db/timezone/zoneinfo/zoneinfo/");
        if (&__b < 0xFFFFFFFFFFFFFFD5 || !v31)
        {
          v32 = 43;
          if (!v31)
          {
            v32 = 0;
          }

          strlcpy(v29, &__b + v32, 0x30uLL);
          return v5;
        }
      }

      goto LABEL_53;
    }

    return v5;
  }

LABEL_57:
  __break(0x5500u);
  return result;
}

uint64_t sub_100003350(mach_port_t a1, uint64_t a2, uint64_t a3, int a4, mach_msg_timeout_t timeout)
{
  v9 = a2;
  v8 = NDR_record;
  v10 = a3;
  v11 = a4;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 11702;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  v5 = mach_msg(&msg, 17, 0x34u, 0, 0, timeout, 0);
  if (v5 == 268435460)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v5;
}

void sub_10000342C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2 && (dispatch_mach_mig_demux() & 1) == 0)
  {
    msg = dispatch_mach_msg_get_msg();

    mach_msg_destroy(msg);
  }
}

_DWORD *sub_100003494(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 32) = 0x13000000000000;
  result = sub_100003534(result[3], (a2 + 28), (a2 + 48));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100003534(uint64_t a1, _DWORD *a2, void *a3)
{
  *a2 = dword_1000343FC;
  *a3 = qword_100034400;
  return 0;
}

void sub_100003554(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8) + 16;
  sub_1000035BC(v1, a1[6], &v2);
}

void sub_1000035BC(uint64_t a1, const void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (v6 + 24);
  }

  else
  {
    v7 = a1;
  }

  dispatch_assert_queue_V2(*v7);
  if (*(a1 + 1240) <= 4u && *a3)
  {
    node = rb_tree_find_node((a1 + 1176), a2);
    if (!node)
    {
      v9 = strlen(a2);
      node = _os_trace_calloc_typed();
      memcpy(node + 4, a2, v9);
      rb_tree_insert_node((a1 + 1176), node);
    }

    node[3] += *a3;
  }
}

uint64_t sub_1000036A0(unsigned int *a1, void *a2, uint64_t a3)
{
  v6 = qword_100032C88[*(a1 + 8)](a2);
  v7 = *a1;
  if (!*(a1 + 2))
  {
    goto LABEL_8;
  }

  v8 = (*(a1 + 2) + 8 * (qword_100032C88[*(a1 + 8)](a2) % *a1));
  v9 = qword_100032CA0[*(a1 + 8)];
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (v9(v8[1], a2))
    {
      return 0;
    }
  }

  if (!*(a1 + 2))
  {
LABEL_8:
    *(a1 + 2) = _os_trace_calloc_typed();
  }

  v11 = v6 % v7;
  v12 = *(a1 + 8);
  v13 = _os_trace_calloc_typed();
  *v13 = 0;
  v13[2] = a3;
  if (v12 == 2)
  {
    v13[1] = *a2;
  }

  else if (v12 == 1)
  {
    *(v13 + 4) = *a2;
  }

  else
  {
    free(v13);
    v13 = 0;
  }

  v14 = *(a1 + 2);
  *v13 = *(v14 + 8 * v11);
  *(v14 + 8 * v11) = v13;
  ++a1[1];
  return 1;
}

uint64_t sub_100003810(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = v4 + 16;
  if ((v4 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v6 = v4 + 16;
  }

  result = sub_100002EA0(v2, v6);
  v8 = *(a1 + 40) + 48;
  if (__CFADD__(v8, 264 * result))
  {
    goto LABEL_30;
  }

  v9 = v8 + 264 * result;
  if (v6 >= *(v9 + 248))
  {
    v38 = _os_assert_log();
    result = _os_crash(v38);
    __break(1u);
    goto LABEL_30;
  }

  v10 = *(a1 + 48);
  if (v10 < 1)
  {
    v15 = v5;
  }

  else
  {
    v11 = *(a1 + 56);
    *(&v12 + 1) = ~v11 >= 0xFFFFFFFFFFFFFFF0;
    *&v12 = 15 - v11;
    if ((v10 - 1) >= (v12 >> 4))
    {
      goto LABEL_30;
    }

    v13 = *(a1 + 48) & 0x7FFFFFFFLL;
    v14 = (v11 + 8);
    v15 = v5;
    do
    {
      v16 = *v14;
      v14 += 2;
      v15 -= v16;
      --v13;
    }

    while (v13);
  }

  v17 = *(v9 + 240);
  v18 = *(v9 + 252);
  if (__CFADD__(v17, v18))
  {
    goto LABEL_30;
  }

  result = memcpy((v17 + v18), *(a1 + 32), v15);
  v19 = *(v9 + 252) + v15;
  *(v9 + 252) = v19;
  if (*(a1 + 48) >= 1)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(v9 + 240);
      if (__CFADD__(v22, v19))
      {
        goto LABEL_30;
      }

      v23 = *(a1 + 56);
      if (__CFADD__(v23, v20))
      {
        goto LABEL_30;
      }

      result = memcpy((v22 + v19), *(v23 + v20), *(v23 + v20 + 8));
      v24 = *(a1 + 56);
      if (__CFADD__(v24, v20))
      {
        goto LABEL_30;
      }

      v19 = *(v9 + 252) + *(v24 + v20 + 8);
      *(v9 + 252) = v19;
      ++v21;
      v20 += 16;
    }

    while (v21 < *(a1 + 48));
  }

  v25 = *(v9 + 240);
  if (__CFADD__(v25, v19))
  {
LABEL_30:
    __break(0x5513u);
    return result;
  }

  v26 = v6 - v5;
  bzero((v25 + v19), v26);
  v28 = *(v9 + 232);
  v27 = v9 + 232;
  *(v27 + 20) = vadd_s32(*(v27 + 20), (v26 | 0x100000000));
  v30 = *(a1 + 64);
  v29 = *(a1 + 72);
  result = sub_1000025E4(v28, *(v30 + 32), *(v30 + 28));
  v31 = result;
  if (result)
  {
    if (!v29)
    {
      return result;
    }
  }

  else
  {
    v31 = _os_trace_malloc_typed();
    *v31 = *v30;
    v32 = *(v30 + 64);
    v34 = *(v30 + 16);
    v33 = *(v30 + 32);
    *(v31 + 48) = *(v30 + 48);
    *(v31 + 64) = v32;
    *(v31 + 16) = v34;
    *(v31 + 32) = v33;
    *(v31 + 80) = sub_100003B48(1);
    result = sub_100002A10(v27, *(v30 + 32), *(v30 + 28), v31);
    if (!v29)
    {
      return result;
    }
  }

  result = sub_100003AA8(*(v31 + 80), v29);
  if (!result)
  {
    v35 = *(v29 + 2) + *(v29 + 3);
    v36 = _os_trace_malloc_typed();
    memcpy(v36, v29, v35 + 4);
    v37 = *(v31 + 80);

    return sub_1000036A0(v37, v36, v36);
  }

  return result;
}

uint64_t sub_100003AA8(uint64_t a1, void *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = (*(a1 + 16) + 8 * (qword_100032C88[*(a1 + 8)](a2) % *a1));
  v5 = qword_100032CA0[*(a1 + 8)];
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (v5(v4[1], a2))
    {
      return v4[2];
    }
  }

  return 0;
}

uint64_t sub_100003B48(char a1)
{
  v2 = _os_trace_calloc_typed();
  *v2 = 16;
  *(v2 + 8) = a1;
  *(v2 + 16) = _os_trace_calloc_typed();
  return v2;
}

uint64_t sub_100003BBC(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a2[1];
    v4 = __ROR8__(v3 + 16, 16);
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v4)));
    v6 = (0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) ^ v3;
    v7 = vcnt_s8(v2);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v6;
      if (v6 >= *&v2)
      {
        v8 = v6 % *&v2;
      }
    }

    else
    {
      v8 = v6 & (*&v2 - 1);
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v6 == v11)
        {
          if (i[2] == *a2 && i[3] == v3)
          {
            return 1;
          }
        }

        else
        {
          if (v7.u32[0] > 1uLL)
          {
            if (v11 >= *&v2)
            {
              v11 %= *&v2;
            }
          }

          else
          {
            v11 &= *&v2 - 1;
          }

          if (v11 != v8)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100003CB0(char *a1)
{
  v2 = strlen(*(a1 + 2)) + 1;
  v3 = *(a1 + 1);
  if (v3)
  {
    v4 = strlen(v3) + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + v2 + 12;
  v6 = __CFADD__(v4, v2 + 12);
  result = 84;
  if (v2 < 0xFFFFFFFFFFFFFFF4 && !v6)
  {
    result = malloc_type_calloc(1uLL, v5, 0x2460504EuLL);
    if (v5 < 4 || (v8 = result, *result = 1, (v5 & 0xFFFFFFFFFFFFFFFCLL) == 4) || (*(result + 4) = v4, (v5 & 0xFFFFFFFFFFFFFFFCLL) == 8))
    {
      __break(1u);
    }

    *(result + 8) = v2;
    if (!__CFADD__(result + 12, v4))
    {
      strlcpy((result + 12 + v4), *(a1 + 2), v2);
      v9 = *(a1 + 1);
      if (v9)
      {
        strlcpy((v8 + 12), v9, v4);
      }

      if (uuid_is_null(a1 + 104) && (_dyld_get_shared_cache_uuid() & 1) == 0)
      {
        _os_assumes_log();
      }

      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v28[16] = v10;
      *&v28[32] = v10;
      v27 = v10;
      *v28 = v10;
      v26 = v10;
      v28[40] = 0;
      v11 = *(a1 + 8);
      v12 = *(a1 + 5);
      *v28 = v12;
      v13 = *(a1 + 12);
      DWORD1(v27) = v11;
      HIDWORD(v27) = v13;
      *&v28[8] = *(a1 + 88);
      *&v28[24] = *(a1 + 104);
      memset(v25, 170, sizeof(v25));
      if (proc_pidpath(v11, v25, 0x400u) <= 0)
      {
        memset(v24, 170, sizeof(v24));
        snprintf(v24, 0x400uLL, "Unable to get path for %d", v11);
        sub_1000155B8(v24);
        v25[0] = 0;
      }

      v14 = sub_100004300(a1 + 88, v25, 0, 1);
      v15 = 0;
      v24[27] = 0xAAAAAAAAAAAAAAAALL;
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v24[25] = v16;
      *&v24[23] = v16;
      *&v24[21] = v16;
      *&v24[19] = v16;
      *&v24[17] = v16;
      *&v24[15] = v16;
      *&v24[13] = v16;
      *&v24[11] = v16;
      v24[0] = 24580;
      v17 = *a1;
      v24[1] = v5 + 72;
      v24[2] = v12;
      v18 = *(a1 + 3);
      LODWORD(v24[3]) = v13;
      BYTE4(v24[3]) = 0;
      BYTE5(v24[3]) = v17;
      HIWORD(v24[3]) = 0;
      v24[4] = v18;
      *&v24[5] = *(a1 + 56);
      *&v24[7] = *(a1 + 72);
      *&v24[9] = *(a1 + 104);
      v19 = *(v8 + 4);
      if (v19 < 2)
      {
        goto LABEL_25;
      }

      v20 = *(v8 + 4);
      __chkstk_darwin(v14);
      v15 = v24 - v21;
      memset(v24 - v21, 170, v22);
      v23 = os_map_str_find();
      if (!v23)
      {
        v23 = word_100044BE0;
        word_100044BE0 -= 2;
        strdup(*(a1 + 1));
        os_map_str_insert();
      }

      v15[2] = v19;
      v15[3] = 1;
      result = strlcpy(v15 + 4, *(a1 + 1), v20);
      if (!__CFADD__(v15 + 4, v20))
      {
        v15[v20 + 4] = 0;
        *v15 = v23;
LABEL_25:
        sub_100004198(v24, v8, v5, &v26, v25, 0, v15);
        free(v8);
        return 0;
      }
    }

    __break(0x5513u);
  }

  return result;
}

void sub_100004028(uint64_t a1)
{
  v1 = *(__chkstk_darwin(a1) + 32);
  memset(__b, 170, sizeof(__b));
  *&v2.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v2.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  *(v13 + 10) = v2;
  v12 = v2;
  v13[0] = v2;
  v10 = v2;
  v11 = v2;
  v8 = v2;
  v9 = v2;
  v4 = 106;
  if (recvfrom(v1, __b, 0x1000uLL, 0, &v8, &v4) >= 1)
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v6[5] = v3;
    v6[6] = v3;
    v6[3] = v3;
    v6[4] = v3;
    v6[1] = v3;
    v6[2] = v3;
    v6[0] = v3;
    if (_os_log_simple_parse())
    {
      memset(__str, 170, sizeof(__str));
      snprintf(__str, 0x400uLL, "Unable to parse os_log_simple buffer. Error: %d Received: %zd");
    }

    else
    {
      if (!sub_100003CB0(v6))
      {
        return;
      }

      memset(__str, 170, sizeof(__str));
      snprintf(__str, 0x400uLL, "Unable to mirror error: %d pid: %llu message: %s");
    }

    sub_1000155B8(__str);
  }
}

void sub_100004198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  if (a6 >= 6)
  {
    __break(0x5512u);
LABEL_8:
    __break(0x5513u);
  }

  if (1248 * a6 > ~qword_1000344D8)
  {
    goto LABEL_8;
  }

  v9 = &qword_1000344D8[156 * a6];
  v10 = *v9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100003810;
  block[3] = &unk_100031F40;
  block[4] = a1;
  block[5] = v9;
  block[6] = 1;
  block[7] = v15;
  block[8] = a4;
  block[9] = a7;
  dispatch_sync(v10, block);
  v11 = v9[1];
  if (v11)
  {
    v12 = (v11 + 24);
  }

  else
  {
    v12 = v9;
  }

  v13 = *v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = sub_100003554;
  v14[3] = &unk_100031D10;
  v14[4] = a1;
  v14[5] = v9;
  v14[6] = a5;
  dispatch_sync(v13, v14);
}

uint64_t sub_100004300(unsigned __int8 *a1, const char *a2, xpc_object_t xdict, int a4)
{
  if (!xdict)
  {
    v8 = 0;
LABEL_11:
    memset(__b, 170, sizeof(__b));
    v19 = 0;
    v20 = &v19;
    v21 = 0x83000000000;
    memset(v22, 170, 0x810uLL);
    v22[2064] = 0;
    if (qword_100044D20 == -1)
    {
      if ((a4 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&qword_100044D20, &stru_100032F00);
      if ((a4 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    if (byte_1000360CC)
    {
LABEL_14:
      v11 = 0;
LABEL_15:
      _Block_object_dispose(&v19, 8);
      return v11;
    }

LABEL_19:
    if ((a4 & 1) != 0 && (!a2 || !*a2))
    {
      goto LABEL_14;
    }

    if (sub_100004620(a1))
    {
LABEL_23:
      v11 = 1;
      goto LABEL_15;
    }

    uuid_copy(v20 + 24, a1);
    if (a2)
    {
      v13 = v20;
      if ((a4 & 0xC) != 0)
      {
        __stringp[0] = (v20 + 133);
        strlcpy(v20 + 1064, a2, 0x400uLL);
        strsep(__stringp, "/");
        if (__stringp[0])
        {
          v14 = __stringp[0];
        }

        else
        {
          v14 = a2;
        }

        strlcpy(v13 + 40, v14, 0x400uLL);
      }

      else
      {
        __strlcpy_chk();
      }
    }

    else
    {
      *(v20 + 40) = 0;
    }

    sub_100009E5C(v20 + 24, 1, __b);
    if ((a4 & 0x100) != 0)
    {
      boot_uuid = _os_trace_get_boot_uuid();
      if (!setxattr(__b, "com.apple.uuiddb.boot-uuid", boot_uuid, 0x25uLL, 0, 0))
      {
        goto LABEL_14;
      }
    }

    else if (!access(__b, 0))
    {
      *(v20 + 2088) = 1;
      if ((a4 & 8) == 0)
      {
        sub_1000096C8(a1);
        goto LABEL_23;
      }
    }

    if (v8)
    {
      xpc_retain(v8);
      v16 = os_transaction_create();
    }

    else
    {
      v16 = 0;
    }

    __stringp[0] = _NSConcreteStackBlock;
    __stringp[1] = 0x40000000;
    __stringp[2] = sub_100018894;
    __stringp[3] = &unk_100031CF0;
    v18 = a4;
    __stringp[4] = &v19;
    __stringp[5] = v8;
    __stringp[6] = v16;
    dispatch_async(qword_100044C10, __stringp);
    goto LABEL_14;
  }

  if ((a4 & 1) == 0)
  {
    __assert_rtn("_logd_uuiddb_harvest", "logd_uuiddb.c", 322, "opts & LOGD_HARVEST_UUID_MACHO");
  }

  array = xpc_dictionary_get_array(xdict, "sections");
  if (array)
  {
    v8 = array;
    if (xpc_array_get_count(array) == 5)
    {
      v9 = 0;
      while (1)
      {
        value = xpc_array_get_value(v8, v9);
        if (xpc_get_type(value) != &_xpc_type_data)
        {
          break;
        }

        if (++v9 == 5)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100004620(void *a1)
{
  os_unfair_lock_lock_with_options();
  v2 = sub_100003BBC(qword_100044C08, a1);
  os_unfair_lock_unlock(&unk_100044C00);
  return v2;
}

uint64_t sub_100004674(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 <= 24578)
  {
    if (v4 != 24577)
    {
      v5 = 24578;
      goto LABEL_6;
    }

    v7 = sub_1000025E4(*(*(a1 + 32) + 224), *(a2 + 16), *(a2 + 24));
    if (!v7)
    {
      v46 = _os_assert_log();
      _os_crash(v46);
      __break(1u);
      goto LABEL_98;
    }

    v8 = v7;
    v9 = *(a1 + 40);
    v49 = 0;
    v10 = *(v7 + 8);
    v11 = *v7;
    if (v10)
    {
      v12 = *(v11 + 304);
    }

    else
    {
      v12 = sub_1000025DC(v11);
      if ((*(v8 + 8) & 1) == 0)
      {
        v48 = sub_100005EE4(*v8, &v49);
        goto LABEL_15;
      }
    }

    v49 = 2048;
    v48 = *(*v8 + 24);
LABEL_15:
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    v13 = *v8;
    if (*(v8 + 8))
    {
      v14 = *(*(v13 + 16) + 76);
    }

    else
    {
      v14 = sub_1000025D4(v13);
    }

    LODWORD(v50[1]) = v14;
    v15 = *v8;
    if (*(v8 + 8))
    {
      v16 = *(*(v15 + 16) + 68);
    }

    else
    {
      v16 = sub_1000072D8(v15);
    }

    DWORD1(v50[1]) = v16;
    v17 = *v8;
    if (*(v8 + 8))
    {
      v18 = *(v17 + 16);
      v19 = *(v18 + 64);
      DWORD1(v50[0]) = *(v18 + 64);
    }

    else
    {
      v19 = sub_1000025A8(v17, v50 + 1);
    }

    *(&v50[0] + 1) = v19;
    if (*(v12 + 180) == 4)
    {
      WORD1(v50[0]) |= 1u;
    }

    v20 = *(v12 + 80);
    *(&v50[1] + 8) = *(v12 + 64);
    *(&v50[2] + 8) = v20;
    if (*(v8 + 8))
    {
      WORD1(v50[0]) |= 2u;
    }

    v21 = sub_100005DC4(v9, v50);
    sub_10000724C(v9, v21);
    v22 = (a2 + 48);
    v23 = *(a2 + 32);
    v24 = a2 + 48;
    if (v23 > 0x1000)
    {
      goto LABEL_31;
    }

    if (!__CFADD__(a2 + 32, v23))
    {
      v24 = a2 + 32 + v23;
LABEL_31:
      v47 = v12 + 48;
      while (1)
      {
        do
        {
          v25 = v22 + 3;
          if ((v22 + 3) >= v24)
          {
            return 1;
          }

          v26 = v22;
          v27 = v22[2];
          v28 = HIWORD(v27);
          if (!HIWORD(v27) || v28 > (v24 - v25))
          {
            return 1;
          }

          v30 = v28 + 24;
          if ((v27 & 0x7000000000000) != 0)
          {
            v30 = (HIWORD(v27) & 0xFFF8) + 32;
          }

          if (__CFADD__(v22, v30))
          {
            goto LABEL_98;
          }

          v22 = (v22 + v30);
          v31 = *v26;
        }

        while (!*v26);
        if (*v26 > 8u)
        {
          goto LABEL_96;
        }

        v32 = WORD1(*v26);
        if (((1 << v31) & 0x158) == 0)
        {
          if (*v26 != 2)
          {
            goto LABEL_96;
          }

          v43 = BYTE1(v31);
          if ((v43 - 1) > 1)
          {
            goto LABEL_96;
          }

          if (v32)
          {
            if (!(v27 >> 51))
            {
              goto LABEL_96;
            }

            v44 = 8;
            if ((v32 & 0x10) != 0)
            {
              goto LABEL_84;
            }

LABEL_75:
            if ((*v26 & 0x2000000) != 0)
            {
LABEL_87:
              if (v44 + 8 > v28)
              {
                goto LABEL_96;
              }

              if (__CFADD__(v25, v44))
              {
                break;
              }

              v44 += 8;
            }
          }

          else
          {
            v44 = 0;
            if ((v32 & 0x10) == 0)
            {
              goto LABEL_75;
            }

LABEL_84:
            if (v44 + 8 > v28)
            {
              goto LABEL_96;
            }

            if (__CFADD__(v25, v44))
            {
              break;
            }

            v44 += 8;
            if ((*v26 & 0x2000000) != 0)
            {
              goto LABEL_87;
            }
          }

          if (v43 == 1 && v44 + 8 <= v28)
          {
            LOWORD(v50[0]) = v44 + 8;
            if (__CFADD__(v25, v44))
            {
              break;
            }

            sub_100005014(v8, v26, v12, v9, v21, v50);
          }

          goto LABEL_96;
        }

        LOWORD(v50[0]) = 0;
        if ((v31 & 0x10000) != 0)
        {
          if (!(v27 >> 51))
          {
            goto LABEL_96;
          }

          LOWORD(v50[0]) = 8;
          v33 = 8;
          if ((v32 & 0x10) != 0)
          {
LABEL_49:
            if (v33 + 8 > v28)
            {
              goto LABEL_96;
            }

            LOWORD(v50[0]) = v33 + 8;
            v34 = __CFADD__(v25, v33);
            v33 += 8;
            if (v34)
            {
              break;
            }
          }
        }

        else
        {
          v33 = 0;
          if ((v32 & 0x10) != 0)
          {
            goto LABEL_49;
          }
        }

        if ((v32 & 0x100) != 0)
        {
          if (v33 + 4 > v28)
          {
            goto LABEL_96;
          }

          LOWORD(v50[0]) = v33 + 4;
          if (__CFADD__(v25, v33))
          {
            break;
          }
        }

        sub_100005014(v8, v26, v12, v9, v21, v50);
        if (*v26 != 3 && (*(v26 + 1) & 0x200) != 0 && LOWORD(v50[0]) + 2 <= *(v26 + 11))
        {
          if (__CFADD__(v25, LOWORD(v50[0])))
          {
            break;
          }

          if (!v48)
          {
            result = _os_crash("_client_lookup_subsystem metadata is null");
            __break(1u);
            return result;
          }

          v35 = v8;
          v36 = v12;
          v37 = *(v25 + LOWORD(v50[0]));
          LOWORD(v38) = *(v48 + 2);
          v39 = *(v48 + 4);
          if (v39 >= 0x7D7)
          {
            v39 = 2007;
          }

          do
          {
            if (v39 <= v38 || v38 > 0x7D3u)
            {
              break;
            }

            if (~(v48 + 41) < v38)
            {
              goto LABEL_98;
            }

            v40 = (v48 + 41 + v38);
            v41 = v40[2] + v40[3] + 4;
            if (2007 - v38 < v41)
            {
              break;
            }

            if (*v40 == v37)
            {
LABEL_81:
              sub_10000715C(v9, v21, v37, v40 + 2);
              sub_1000072E0(v9, v40 + 2);
              v12 = v36;
              goto LABEL_95;
            }

            v38 = v41 + v38 + (v41 & 1);
          }

          while (v38 < 0x10000);
          os_unfair_lock_lock_with_options();
          v42 = v47;
          while (1)
          {
            v42 = *v42;
            if (!v42)
            {
              break;
            }

            if (*(v42 + 8) == v37)
            {
LABEL_80:
              os_unfair_lock_unlock(v36 + 44);
              v45 = *(v42 + 8);
              v40 = (v42 + 8);
              LOWORD(v37) = v45;
              goto LABEL_81;
            }
          }

          os_unfair_lock_unlock(v36 + 44);
          sub_10000AA98(v35, 1);
          os_unfair_lock_lock_with_options();
          v42 = v47;
          while (1)
          {
            v42 = *v42;
            if (!v42)
            {
              break;
            }

            if (*(v42 + 8) == v37)
            {
              goto LABEL_80;
            }
          }

          v12 = v36;
          os_unfair_lock_unlock(v36 + 44);
LABEL_95:
          v8 = v35;
        }

LABEL_96:
        sub_1000071F0(v9, (*(v26 + 2) & 0xFFFFFFFFFFFFLL) + *(a2 + 40));
      }
    }

LABEL_98:
    __break(0x5513u);
  }

  if (v4 == 24579)
  {
LABEL_7:
    sub_1000071F0(*(a1 + 40), *(a2 + 32));
    return 1;
  }

  v5 = 24580;
LABEL_6:
  if (v4 == v5)
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_100004C04(uint64_t a1)
{
  dispatch_assert_queue_V2(*a1);
  v2 = *(a1 + 24);
  dispatch_assert_queue_V2(*a1);
  v3 = *(a1 + 1128);
  *(a1 + 1128) = -1;
  if (mach_get_times())
  {
    _os_assumes_log();
  }

  if (v3 != -1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_100005EF8;
    v5[3] = &unk_100032118;
    v6 = v3;
    v5[4] = a1;
    v5[5] = v2;
    if (*(a1 + 8))
    {
      v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5);
      dispatch_async(*(*(a1 + 8) + 24), v4);
      _Block_release(v4);
    }

    else
    {
      sub_100005710(a1, v3, v2);
    }
  }
}

unint64_t sub_100004D3C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v1 = *(v1 + 24);
  }

  v2 = 16 * v1 + 40;
  if (v1 >> 60 || 16 * v1 >= 0xFFFFFFFFFFFFFFD8)
  {
    v27 = _os_assert_log();
    _os_crash(v27);
    __break(1u);
    goto LABEL_36;
  }

  v3 = a1[4];
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __CFADD__(v2, v4);
  v6 = v2 + v4;
  if (v5)
  {
LABEL_36:
    v28 = _os_assert_log();
    _os_crash(v28);
    __break(1u);
    goto LABEL_37;
  }

  v7 = a1[6];
  if (v7 >> 60)
  {
LABEL_37:
    v29 = _os_assert_log();
    _os_crash(v29);
    __break(1u);
    goto LABEL_38;
  }

  v8 = a1[7];
  if (!is_mul_ok(v8, 6uLL))
  {
LABEL_38:
    v30 = _os_assert_log();
    _os_crash(v30);
    __break(1u);
LABEL_39:
    v31 = _os_assert_log();
    _os_crash(v31);
    __break(1u);
    goto LABEL_40;
  }

  v9 = a1[5];
  if (v9)
  {
    v10 = *(v9 + 24);
  }

  else
  {
    v10 = 0;
  }

  if (!is_mul_ok(v10, 0x38uLL))
  {
    goto LABEL_39;
  }

  v11 = 16 * v7;
  v12 = 56 * v10;
  v5 = __CFADD__(v12, v11);
  v13 = v12 + v11;
  if (v5)
  {
LABEL_40:
    v32 = _os_assert_log();
    _os_crash(v32);
    __break(1u);
    goto LABEL_41;
  }

  v14 = 6 * v8;
  v5 = __CFADD__(v13, v14);
  v15 = v13 + v14;
  if (v5)
  {
LABEL_41:
    v33 = _os_assert_log();
    _os_crash(v33);
    __break(1u);
LABEL_42:
    v34 = _os_assert_log();
    _os_crash(v34);
    __break(1u);
LABEL_43:
    v35 = _os_assert_log();
    _os_crash(v35);
    __break(1u);
    goto LABEL_44;
  }

  if ((v15 & 6) != 0)
  {
    v15 = (v15 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v5 = __CFADD__(v15, v6);
  v16 = v15 + v6;
  if (v5)
  {
    goto LABEL_42;
  }

  if (v9)
  {
    v9 = *(v9 + 24);
  }

  v17 = 2 * v9 + 32;
  if (v9 < 0 || (2 * v9) >= 0xFFFFFFFFFFFFFFE0)
  {
    goto LABEL_43;
  }

  v18 = 2 * v9 + 40;
  if (v17 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_44:
    v36 = _os_assert_log();
    _os_crash(v36);
    __break(1u);
LABEL_45:
    v37 = _os_assert_log();
    _os_crash(v37);
    __break(1u);
LABEL_46:
    v38 = _os_assert_log();
    result = _os_crash(v38);
    __break(1u);
    return result;
  }

  v5 = __CFADD__(v18, 2 * v3);
  v19 = v18 + 2 * v3;
  v20 = v5;
  if (v3 < 0 || v20)
  {
    goto LABEL_45;
  }

  v21 = (v19 & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v19 & 6) == 0)
  {
    v21 = v19;
  }

  v22 = a1[10];
  v23 = !is_mul_ok(v22, v21);
  v24 = v22 * v21;
  result = v16 + v24;
  v26 = __CFADD__(v16, v24);
  if (v23 || v26)
  {
    goto LABEL_46;
  }

  return result;
}

void sub_100004F2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 264) <= a4)
  {
    v16 = _os_assert_log();
    _os_crash(v16);
    __break(1u);
LABEL_15:
    __break(0x5513u);
    goto LABEL_16;
  }

  v6 = *(a1 + 272);
  v7 = __CFADD__(v6, 16 * a4);
  if ((((a4 >= 0) ^ v7) & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = v6 + 16 * a4;
  free(*v10);
  *v10 = a2;
  *(v10 + 8) = a3;
  if (!a4)
  {
    return;
  }

  v11 = *(a1 + 272);
  v12 = __CFADD__(v11, 16 * a4);
  if (a4 >= 0 == v12)
  {
    goto LABEL_15;
  }

  *(a1 + 232) += *(v11 + 16 * a4 + 8);
  v13 = *(a1 + 268);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
LABEL_16:
    __break(0x5500u);
    return;
  }

  *(a1 + 268) = v15;
}

void sub_100005014(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v11 = *(a2 + 1) & 0xE;
  if (v11 <= 7)
  {
    if (v11 == 2 || v11 == 4 || v11 == 6)
    {
      v14 = 4;
      goto LABEL_18;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_18;
  }

  if (v11 == 8)
  {
    v14 = *(a3 + 180);
    goto LABEL_18;
  }

  if (v11 != 10)
  {
    if (v11 == 12)
    {
      v14 = 6;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v14 = 20;
LABEL_18:
  v15 = *a6;
  v16 = v15 + v14;
  v17 = *(a2 + 2);
  if (v16 > HIWORD(v17))
  {
    *a6 = HIWORD(v17);
    goto LABEL_89;
  }

  *a6 = v16;
  v18 = ~(a2 + 24);
  if (v18 < v15)
  {
    goto LABEL_95;
  }

  if (!v14)
  {
LABEL_89:
    memset(&__b[2], 170, 0x3E0uLL);
    strcpy(__b, "#DECODE failed to read location");
    goto LABEL_90;
  }

  v19 = &a2[v15 + 24];
  if (v14 == 6)
  {
    v20 = 0;
    v21 = *v19;
    v22 = *(v19 + 2) << 32;
  }

  else
  {
    v21 = *v19;
    if (v14 == 4)
    {
      v20 = 0;
      v22 = 0;
    }

    else
    {
      if (v19 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_95;
      }

      v22 = 0;
      v20 = (v19 + 4);
    }
  }

  v23 = *(a2 + 1);
  if ((v23 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  v24 = *(a2 + 2);
  if (v16 + 2 > HIWORD(v24))
  {
    *a6 = HIWORD(v24);
    return;
  }

  *a6 = v16 + 2;
  if (v16 > v18)
  {
LABEL_95:
    __break(0x5513u);
  }

  v23 = *(a2 + 1);
LABEL_31:
  if ((v23 & 0xE) == 8)
  {
    v27 = v22 | v21;
    v28 = sub_100006BF4(a3, v27);
    if (v28)
    {
LABEL_82:
      sub_100006AEC(a4, a5, v28);
      os_unfair_lock_unlock((a3 + 176));
      return;
    }

    v29 = *a1;
    if (*(a1 + 8))
    {
      v30 = *(*(v29 + 16) + 64);
    }

    else
    {
      v30 = sub_1000025A8(v29, 0);
    }

    if (v30)
    {
      sub_10000AA98(a1, 0);
LABEL_81:
      v28 = sub_100006BF4(a3, v27);
      if (v28)
      {
        goto LABEL_82;
      }

      if (!*(a3 + 172))
      {
        return;
      }

      *&out[29] = 0xAAAAAAAAAAAAAAAALL;
      *&v47 = 0xAAAAAAAAAAAAAAAALL;
      *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *out = v47;
      *&out[16] = v47;
      LODWORD(values) = -1431655766;
      uuid_unparse((a3 + 64), out);
      v48 = *a1;
      if (*(a1 + 8))
      {
        v49 = *(*(v48 + 16) + 64);
        LODWORD(values) = v49;
      }

      else
      {
        sub_1000025A8(v48, &values);
        v49 = values;
      }

      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "#DECODE failed to resolve UUID: [pc:0x%llx ns:0x%02x type:0x%02x flags:0x%04x main:%s pid:%d]", v27, *a2, a2[1], *(a2 + 1), out, v49);
LABEL_90:
      sub_1000155B8(__b);
      return;
    }

    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v31;
    *&out[16] = v31;
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    values = 0;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    v32 = OSKextCopyUUIDForAddress();
    v33 = v32;
    if (v32)
    {
      BytePtr = CFDataGetBytePtr(v32);
      uuid_unparse(BytePtr, out);
      values = CFStringCreateWithCString(kCFAllocatorDefault, out, 0x8000100u);
      if (values)
      {
        v35 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      }

      else
      {
        v35 = 0;
      }

      v36 = CFArrayCreate(kCFAllocatorDefault, off_100034490, 3, &kCFTypeArrayCallBacks);
      if (values && v35)
      {
        v37 = OSKextCopyLoadedKextInfoByUUID();
        if (v37)
        {
          v54 = v37;
          Value = CFDictionaryGetValue(v37, values);
          if (Value && (cf = Value, v39 = CFDictionaryGetTypeID(), v39 == CFGetTypeID(cf)))
          {
            v50 = CFDictionaryGetValue(cf, @"OSBundleExecLoadAddress");
            if (v50 && (v40 = CFNumberGetTypeID(), v40 == CFGetTypeID(v50)) && CFNumberGetValue(v50, kCFNumberSInt64Type, &valuePtr))
            {
              v51 = CFDictionaryGetValue(cf, @"OSBundleExecLoadSize");
              if (v51)
              {
                TypeID = CFNumberGetTypeID();
                if (TypeID == CFGetTypeID(v51))
                {
                  if (CFNumberGetValue(v51, kCFNumberSInt64Type, &v55))
                  {
                    v42 = CFDictionaryGetValue(cf, @"OSBundleTextUUID");
                    if (v42 && (v43 = v42, cfa = CFDataGetTypeID(), cfa == CFGetTypeID(v43)) && CFDataGetLength(v43) == 16)
                    {
                      *&__b[1] = 0xAAAAAAAAAAAAAAAALL;
                      *(&__b[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
                      *&__b[0] = v55;
                      HIWORD(__b[0]) = -21846;
                      DWORD2(__b[0]) = valuePtr;
                      WORD6(__b[0]) = WORD2(valuePtr);
                      v44 = CFDataGetBytePtr(v43);
                      uuid_copy(__b + 14, v44);
                      sub_10000AB80(a3, __b);
                    }

                    else
                    {
                      memset(&__b[3] + 4, 170, 0x3CCuLL);
                      strcpy(__b, "kext query: failed to retrieve kOSBundleTextUUIDKey");
                      sub_1000155B8(__b);
                    }

                    goto LABEL_72;
                  }
                }
              }

              memset(&__b[2] + 9, 170, 0x3D7uLL);
              v45 = "kext query: failed to retrieve load_size";
            }

            else
            {
              memset(&__b[2] + 9, 170, 0x3D7uLL);
              v45 = "kext query: failed to retrieve load_addr";
            }

            v46 = *(v45 + 1);
            __b[0] = *v45;
            __b[1] = v46;
            *(&__b[1] + 9) = *(v45 + 25);
          }

          else
          {
            memset(&__b[2] + 6, 170, 0x3DAuLL);
            strcpy(__b, "kext query: failed to retrieve bundle");
          }

          sub_1000155B8(__b);
LABEL_72:
          CFRelease(v54);
          goto LABEL_73;
        }

        memset(&__b[1] + 10, 170, 0x3E6uLL);
        strcpy(__b, "kext query: kext_dict nil");
      }

      else
      {
        memset(&__b[1] + 14, 170, 0x3E2uLL);
        strcpy(__b, "kext query: allocation failed");
      }

      sub_1000155B8(__b);
    }

    else
    {
      memset(&__b[2] + 2, 170, 0x3DEuLL);
      strcpy(__b, "kext query: did not find the uuid");
      sub_1000155B8(__b);
      v35 = 0;
      v36 = 0;
    }

LABEL_73:
    if (values)
    {
      CFRelease(values);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    goto LABEL_81;
  }

  if ((v23 & 0xE) == 0xA)
  {
    v25 = *(a4 + 16);
    if (v25)
    {
      v26 = *(v25 + 24);
    }

    else
    {
      v26 = 0;
    }

    sub_100008204(v25, v20, v26);
  }
}

void sub_100005710(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (v6 + 24);
  }

  else
  {
    v7 = a1;
  }

  dispatch_assert_queue_V2(*v7);
  if (v4 >= 5)
  {
LABEL_69:
    __break(0x5512u);
  }

  if (__CFADD__(a1 + 48, 264 * v4))
  {
    goto LABEL_68;
  }

  v9 = a1 + 48 + 264 * v4;
  v10 = *(v9 + 252);
  if (!v10)
  {
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (StatusReg >= 0xFFFFFFFFFFFFFFE8)
  {
    goto LABEL_68;
  }

  *(a1 + 1108) = *(StatusReg + 24) & 0xFFFFFFFC;
  __chkstk_darwin(v8);
  v12 = v62;
  memset(v62, 170, sizeof(v62));
  v13 = compression_encode_buffer(v62, 0x10000uLL, *(v9 + 240), v10, 0, COMPRESSION_LZ4);
  v65 = a3;
  if (v13)
  {
    v14 = v13;
    v64 = 256;
  }

  else
  {
    v64 = 0;
    v12 = *(v9 + 240);
    v14 = *(v9 + 252);
  }

  v15 = v14 + 16;
  v16 = (v14 + 16) & 0xFFFFFFFFFFFFC000;
  v17 = (v14 + 16) & 0x3FFF;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66 = v18;
  v67 = v18;
  if (v16)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = _os_trace_malloc_typed();
    v21 = v20;
    if ((v14 & 7) != 0)
    {
      if ((v15 & 0x8000000000000000) != 0 || (v15 & 0xFFFFFFFFFFFFFFF8) > ~v20)
      {
        goto LABEL_68;
      }

      *(v20 + (v15 & 0xFFFFFFFFFFFFFFF8)) = 0;
    }

    v22 = &v66 + 8;
    *v20 = 0x110000600DLL;
    *(v20 + 8) = v14;
    memcpy((v20 + 16), v12, v14);
    *&v66 = v21;
    v23 = (v14 & 0xFFFFFFFFFFFFFFF8) + 24;
    if ((v14 & 7) == 0)
    {
      v23 = v14 + 16;
    }

    v24 = 1;
  }

  else
  {
    v63 = v4;
    v25 = _os_trace_malloc_typed();
    *v25 = 0x110000600DLL;
    v25[1] = v14;
    v26 = v15 & 0x3FF8;
    v27 = _os_trace_malloc_typed();
    v28 = v27;
    if ((v14 & 7) != 0)
    {
      if (__CFADD__(v27, v26))
      {
        goto LABEL_68;
      }

      *(v27 + ((v14 + 16) & 0x3FF8)) = 0;
    }

    memcpy(v25 + 2, v12, v16 - 16);
    if (__CFADD__(v12, v16 - 16))
    {
      goto LABEL_68;
    }

    memcpy(v28, &v12[v16 - 16], v14 - (v16 - 16));
    *&v66 = v25;
    *(&v66 + 1) = (v14 + 16) & 0xFFFFFFFFFFFFC000;
    if (&v66 > 0xFFFFFFFFFFFFFFEFLL)
    {
      goto LABEL_68;
    }

    v22 = &v67 + 8;
    *&v67 = v28;
    v23 = v17 - (v14 & 7) + 8;
    if ((v14 & 7) == 0)
    {
      v23 = (v14 + 16) & 0x3FFF;
    }

    v24 = 2;
    v4 = v63;
  }

  *v22 = v23;
  v29 = *(a1 + 8);
  if (v29)
  {
    v30 = (v29 + 24);
  }

  else
  {
    v30 = a1;
  }

  dispatch_assert_queue_V2(*v30);
  *(&v31 + 1) = ~&v66 >= 0xFFFFFFFFFFFFFFF0;
  *&v31 = 143 - &vars0;
  if (v24 - 1 >= (v31 >> 4))
  {
    goto LABEL_68;
  }

  v32 = 0;
  v33 = v24;
  v34 = 8;
  v35 = v24;
  do
  {
    v32 += *(&v66 + v34);
    v34 += 16;
    --v35;
  }

  while (v35);
  v36 = *(a1 + 8);
  v37 = (v36 ? v36 + 24 : a1);
  dispatch_assert_queue_V2(*v37);
  v38 = *(a1 + 1168);
  v39 = *(a1 + 1136);
  if (v38 < 0 == 280 * v38 <= ~v39)
  {
    goto LABEL_68;
  }

  v40 = v39 + 280 * v38;
  if ((*(v40 + 232) + v32) > *(v40 + 240))
  {
    goto LABEL_45;
  }

  v41 = *(v40 + 268);
  v42 = __OFADD__(v41, v24);
  v43 = v41 + v24;
  if (v42)
  {
    __break(0x5500u);
    return;
  }

  if (v43 > *(v40 + 264) || sub_100004D3C(*(v40 + 224)) >= 0x8000)
  {
LABEL_45:
    sub_100006780(a1);
    v45 = *(a1 + 1136);
    if (v44 < 0 != 280 * v44 <= ~v45)
    {
      v40 = v45 + 280 * v44;
      LODWORD(v38) = v44;
      goto LABEL_47;
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

LABEL_47:
  if (!*(v40 + 232))
  {
    memcpy(v40, v9, *(v9 + 8) + 16);
  }

  v46 = *(a1 + 1136);
  v47 = 280 * v38;
  if (v38 < 0 == v47 <= ~v46)
  {
    goto LABEL_68;
  }

  v48 = v46 + 280 * v38;
  v49 = &v66 + 1;
  do
  {
    sub_100004F2C(v48, *(v49 - 1), *v49, *(v48 + 268));
    v49 += 2;
    --v33;
  }

  while (v33);
  v50 = *(a1 + 1136);
  v51 = v65;
  if (v38 < 0 == v47 <= ~v50)
  {
    goto LABEL_68;
  }

  v52 = *(v50 + 280 * v38 + 224);
  sub_100005C3C(v52, v9);
  v53 = *(a1 + 1168);
  v54 = *(a1 + 1136);
  if (v53 < 0 == 280 * v53 <= ~v54)
  {
    goto LABEL_68;
  }

  v55 = v54 + 280 * v53;
  if (v52[10])
  {
    v56 = **(v52[9] + 8);
  }

  else
  {
    v56 = sub_1000073C8(v52);
  }

  v58 = v56[2];
  v57 = v56[3];
  if (v58 < *(v55 + 248))
  {
    *(v55 + 248) = v58;
  }

  if (v57 > *(v55 + 256))
  {
    *(v55 + 256) = v57;
  }

  v59 = *(v9 + 252);
  if (v52[10])
  {
    v60 = **(v52[9] + 8);
  }

  else
  {
    v60 = sub_1000073C8(v52);
  }

  v61 = v64;
  *(v60 + 8) = v59;
  *(v60 + 9) = v61;
  if (v52[1] > v51)
  {
    v52[1] = v51;
  }

  sub_100006D00(a1, v4);
  sub_1000073C8(v52);
}

uint64_t sub_100005C3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(a2 + 240);
  v6 = *(a2 + 252);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v15 = sub_100004674;
  v16 = &unk_100032138;
  v17 = a2;
  v18 = result;
  do
  {
    if (v4 > ~v5)
    {
      __break(0x5513u);
    }

    if (v6 - v4 < 0x10)
    {
      break;
    }

    v7 = *(v5 + v4 + 8);
    if (v6 - v4 - 16 < v7)
    {
      break;
    }

    result = (v15)(v14);
    if (!result)
    {
      break;
    }

    v4 = (v4 + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v4 - 1 < v6);
  v8 = *(a2 + 232);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v11 = sub_100006E44;
  v12 = &unk_100032178;
  v13 = v3;
  if (v8)
  {
    for (i = *(v8 + 16); i; i = *i)
    {
      result = v11(v10, i[4]);
    }
  }

  return result;
}

void *sub_100005DC4(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  v5 = sub_1000025E4(*(a1 + 40), *(a2 + 8), *(a2 + 16));
  if (v5)
  {
    return v5;
  }

  v6 = _os_trace_calloc_typed();
  v5 = v6;
  *v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  *(v6 + 16) = v7;
  v10 = *v4;
  if (*v4)
  {
    LOWORD(v10) = *(v10 + 24);
  }

  *v6 = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v11 + 24);
  }

  else
  {
    v12 = 0;
  }

  sub_100008204(v11, v5 + 3, v12);
  if (!uuid_is_null(v5 + 40))
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(v13 + 24);
    }

    else
    {
      v14 = 0;
    }

    sub_100008204(v13, v5 + 5, v14);
  }

  v5[7] = sub_100003B48(2);
  v5[8] = sub_100003B48(1);
  if (sub_100002A10(v4, v5[1], *(v5 + 4), v5))
  {
    return v5;
  }

  v16 = _os_assert_log();
  result = _os_crash(v16);
  __break(1u);
  return result;
}

uint64_t sub_100005EE4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  *a2 = 2048;
  return v2 + 2048;
}

void sub_100005F08(unsigned int *a1, void (*a2)(void))
{
  if (*(a1 + 2))
  {
    v3 = *a1;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = *(*(a1 + 2) + 8 * i);
        if (v6)
        {
          do
          {
            v7 = *v6;
            if (a2)
            {
              a2(v6[2]);
            }

            free(v6);
            --a1[1];
            v6 = v7;
          }

          while (v7);
          v3 = *a1;
        }
      }
    }

    if (a1[1])
    {
      v8 = _os_assert_log();
      _os_crash(v8);
      __break(1u);
      return;
    }

    free(*(a1 + 2));
  }

  free(a1);
}

void sub_100005FCC(void *a1, uint64_t a2)
{
  v4 = sub_1000061E8(*(a1[4] + 16), (a2 + 24));
  if (v4 >= 0x10000)
  {
    v21 = _os_assert_log();
    _os_crash(v21);
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  if (uuid_is_null((a2 + 40)))
  {
    LOWORD(v6) = -1;
    goto LABEL_5;
  }

  v6 = sub_1000061E8(*(a1[4] + 16), (a2 + 40));
  if (v6 >= 0x10000)
  {
LABEL_11:
    v22 = _os_assert_log();
    _os_crash(v22);
    __break(1u);
  }

LABEL_5:
  v7 = a1[5];
  v8 = *v7;
  v9 = *(a2 + 8);
  v10 = *(a2 + 4);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  *v8 = *a2;
  *(v8 + 4) = v5;
  *(v8 + 6) = v6;
  *(v8 + 8) = v9;
  *(v8 + 16) = v11;
  *(v8 + 20) = v10;
  *(v8 + 24) = v12;
  *v7 = v8 + 32;
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[4];
  v16 = *v13;
  if ((v14 - *v13) >= 8)
  {
    *v16 = *(*(a2 + 56) + 4);
    *v13 = v16 + 1;
    v17 = *(a2 + 56);
    v23 = _NSConcreteStackBlock;
    v24 = 0x40000000;
    v25 = sub_10000A104;
    v26 = &unk_100032C08;
    v27 = v15;
    v28 = v13;
    sub_100006978(v17, &v23);
    v13 = a1[5];
    v14 = a1[6];
    v15 = a1[4];
  }

  v18 = *v13;
  if ((v14 - *v13) >= 8)
  {
    *v18 = *(*(a2 + 64) + 4);
    *v13 = v18 + 1;
    v19 = *(a2 + 64);
    v23 = _NSConcreteStackBlock;
    v24 = 0x40000000;
    v25 = sub_100006A14;
    v26 = &unk_100032C28;
    v27 = v13;
    v28 = v15;
    sub_100006978(v19, &v23);
    v13 = a1[5];
  }

  v20 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8) - *v13;
  bzero(*v13, v20);
  *a1[5] += v20;
}

uint64_t sub_1000061E8(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a2[1];
    v4 = __ROR8__(v3 + 16, 16);
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v4)));
    v6 = (0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) ^ v3;
    v7 = vcnt_s8(v2);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v6;
      if (v6 >= *&v2)
      {
        v8 = v6 % *&v2;
      }
    }

    else
    {
      v8 = v6 & (*&v2 - 1);
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v6 == v11)
        {
          if (i[2] == *a2 && i[3] == v3)
          {
            return i[4];
          }
        }

        else
        {
          if (v7.u32[0] > 1uLL)
          {
            if (v11 >= *&v2)
            {
              v11 %= *&v2;
            }
          }

          else
          {
            v11 &= *&v2 - 1;
          }

          if (v11 != v8)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

char *sub_1000062DC(uint64_t a1, const char *a2, unsigned __int16 a3)
{
  if (a3 >= *(*(a1 + 32) + 32))
  {
    v7 = _os_assert_log();
    result = _os_crash(v7, v3, v4);
    __break(1u);
  }

  else
  {
    v5 = (**(a1 + 40) + a3);

    return strcpy(v5, a2);
  }

  return result;
}

void *sub_100006328(void **a1)
{
  v2 = sub_100004D3C(a1);
  v3 = _os_trace_calloc_typed();
  v4 = v3;
  *v3 = 0x110000600BLL;
  v3[1] = 0;
  v3[4] = a1[1];
  v5 = (v3 + 5);
  v33 = v3 + 5;
  v6 = a1[2];
  if (v6)
  {
    v7 = 16 * v6[3];
  }

  else
  {
    v7 = 0;
  }

  if ((v2 - v7) > 39)
  {
    v8 = (v3 + 2);
    v9 = v3 + v2;
    v34 = _NSConcreteStackBlock;
    v35 = 0x40000000;
    v36 = sub_100006AD4;
    v37 = &unk_100032BA8;
    v38 = &v33;
    v10 = v6[2];
    v11 = (v3 + 5);
    if (v10)
    {
      do
      {
        (v36)(&v34, v10 + 2, v10[4]);
        v10 = *v10;
      }

      while (v10);
      v11 = v33;
    }

    v12 = &v11[v7];
    v33 = v12;
    *v8 = v12 - v5;
    v13 = a1[4];
    if (v9 - v13 >= v12)
    {
      v14 = a1[3];
      v34 = _NSConcreteStackBlock;
      v35 = 0x40000000;
      v36 = sub_1000062DC;
      v37 = &unk_100032BC8;
      v38 = a1;
      v39 = &v33;
      if (v14)
      {
        v15 = v14[2];
        if (v15)
        {
          do
          {
            v16 = v15 + 2;
            if (*(v15 + 39) < 0)
            {
              v16 = *v16;
            }

            (v36)(&v34, v16, v15[5]);
            v15 = *v15;
          }

          while (v15);
          v13 = a1[4];
          v12 = v33;
        }
      }

      v33 = &v13[v12];
      v17 = (&v13[v12 + 7] & 0xFFFFFFFFFFFFFFF8) - &v13[v12];
      bzero(&v13[v12], v17);
      v18 = v33 + v17;
      v33 = v18;
      v19 = v18 - v5;
      *(v4 + 9) = v18 - v5;
      v20 = a1[5];
      if (v20)
      {
        v21 = v20[12];
      }

      else
      {
        v21 = 0;
      }

      *(v4 + 10) = v21;
      v34 = _NSConcreteStackBlock;
      v35 = 0x40000000;
      v36 = sub_100005FCC;
      v37 = &unk_100032BE8;
      v38 = a1;
      v39 = &v33;
      v40 = v4 + v2;
      if (v20)
      {
        v22 = *(v20 + 2);
        if (v22)
        {
          do
          {
            (v36)(&v34, v22[4]);
            v22 = *v22;
          }

          while (v22);
          v18 = v33;
          v19 = v33 - v5;
        }
      }

      *(v4 + 11) = v19;
      *(v4 + 12) = 0;
      v23 = a1[8];
      if (v23)
      {
        do
        {
          v24 = *(v23 + 8);
          if (v24)
          {
            *v18 = *(v23 + 1);
            *(v18 + 4) = v24;
            *(v18 + 5) = *(v23 + 9);
            v25 = v18 + 24;
            v33 = v18 + 24;
            if ((v9 - (v18 + 24)) > 3)
            {
              *(v18 + 6) = *(*(v23 + 6) + 4);
              v26 = *(v23 + 6);
              v33 = v18 + 28;
              v34 = _NSConcreteStackBlock;
              v35 = 0x40000000;
              v36 = sub_10000A1B4;
              v37 = &unk_100032C48;
              v38 = &v33;
              sub_100006978(v26, &v34);
              v25 = v33;
              if ((v9 - v33) >= 4)
              {
                *v33 = *(*(v23 + 5) + 4);
                v33 = v25 + 4;
                v27 = *(v23 + 5);
                v34 = _NSConcreteStackBlock;
                v35 = 0x40000000;
                v36 = sub_10000A1CC;
                v37 = &unk_100032C68;
                v38 = &v33;
                sub_100006978(v27, &v34);
                v25 = v33;
              }
            }

            ++*(v4 + 12);
            v28 = ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) - v25;
            bzero(v25, v28);
            v18 = v33 + v28;
            v33 = v33 + v28;
          }

          v23 = *v23;
        }

        while (v23);
        v19 = v18 - v5;
        v8 = (v4 + 2);
      }

      if (v19 >= 0x10000)
      {
        v31 = _os_assert_log();
        _os_crash(v31);
        __break(1u);
      }

      else
      {
        v29 = v18 - v8;
        v4[1] = v29;
        if (v29 + 16 <= v2)
        {
          return v4;
        }
      }

      v32 = _os_assert_log();
      _os_crash(v32);
      __break(1u);
    }
  }

  free(v4);
  return 0;
}

void sub_100006780(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 + 24);
  }

  else
  {
    v3 = a1;
  }

  dispatch_assert_queue_V2(*v3);
  v4 = *(a1 + 1168);
  v5 = *(a1 + 1136);
  if (v4 < 0 == 280 * v4 <= ~v5)
  {
    goto LABEL_21;
  }

  if (!*(v5 + 280 * v4 + 232))
  {
    return;
  }

  v6 = *(a1 + 8);
  v7 = (v6 ? v6 + 24 : a1);
  dispatch_assert_queue_V2(*v7);
  v8 = *(a1 + 1168);
  v9 = *(a1 + 1136);
  if (v8 < 0 == 280 * v8 <= ~v9)
  {
    goto LABEL_21;
  }

  v10 = v9 + 280 * v8;
  sub_10000690C(v10);
  v11 = *(a1 + 8);
  if (v11)
  {
    (*v11)(a1, v10);
  }

  else
  {
    if (__OFADD__(v8, 1))
    {
LABEL_22:
      __break(0x5500u);
LABEL_23:
      __break(0x5503u);
      return;
    }

    v12 = *(a1 + 1172);
    if (v8 == 0x7FFFFFFF && v12 == -1)
    {
      goto LABEL_23;
    }

    LODWORD(v8) = (v8 + 1) % v12;
    *(a1 + 1168) = v8;
    if (!v8)
    {
      sub_10000BCE0(a1, 0);
    }
  }

  sub_10000A4F0(a1, v8);
  v13 = *(a1 + 1136);
  if (v8 < 0 == 280 * v8 <= ~v13)
  {
LABEL_21:
    __break(0x5513u);
    goto LABEL_22;
  }

  if (*(v13 + 280 * v8 + 232))
  {
    v14 = _os_assert_log();
    _os_crash(v14);
    __break(1u);
    goto LABEL_21;
  }
}

void sub_10000690C(uint64_t a1)
{
  v2 = sub_100006328(*(a1 + 224));
  if (v2)
  {
    v3 = v2[1];
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 24;
    }

    else
    {
      v4 = v3 + 16;
    }

    sub_100004F2C(a1, v2, v4, 0);
  }

  else
  {
    v5 = _os_assert_log();
    _os_crash(v5);
    __break(1u);
  }
}

unsigned int *sub_100006978(unsigned int *result, uint64_t a2)
{
  if (*(result + 2))
  {
    v2 = result;
    v3 = *result;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = *(*(v2 + 2) + 8 * i);
        if (v6)
        {
          do
          {
            v7 = *(v2 + 8);
            if (v7 == 1)
            {
              v8 = v6 + 1;
            }

            else
            {
              v8 = 0;
            }

            if (v7 == 2)
            {
              v9 = v6 + 1;
            }

            else
            {
              v9 = v8;
            }

            result = (*(a2 + 16))(a2, v9, v6[2]);
            v6 = *v6;
          }

          while (v6);
          v3 = *v2;
        }
      }
    }
  }

  return result;
}

unint64_t sub_100006A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  *v5 = *a3;
  v6 = *(a3 + 8);
  if (!v6 || !*(a3 + 16))
  {
    _os_assumes_log();
    v6 = *(a3 + 8);
  }

  v7 = sub_100007C84(*(*(a1 + 40) + 24), v6);
  v8 = v7;
  if (v7 >= 0x10000)
  {
    _os_assumes_log();
  }

  v5[1] = v8;
  result = sub_100007C84(*(*(a1 + 40) + 24), *(a3 + 16));
  v10 = result;
  if (result >= 0x10000)
  {
    result = _os_assumes_log();
  }

  v5[2] = v10;
  **(a1 + 32) += 6;
  return result;
}

__n128 sub_100006AD4(uint64_t a1, __n128 *a2, unsigned __int16 a3)
{
  result = *a2;
  *(**(a1 + 32) + 16 * a3) = *a2;
  return result;
}

uint64_t sub_100006AEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  sub_100008204(v6, (a3 + 14), v7);
  v12 = *(a3 + 2) | (*(a3 + 6) << 32);
  result = sub_100003AA8(*(a2 + 56), &v12);
  if (!result)
  {
    v9 = _os_trace_calloc_typed();
    v10 = *a3;
    *v9 = *(a3 + 2) | (*(a3 + 6) << 32);
    *(v9 + 8) = v10;
    *(v9 + 16) = *(a3 + 14);
    result = sub_1000036A0(*(a2 + 56), v9, v9);
    if ((result & 1) == 0)
    {
      v11 = _os_assert_log();
      _os_crash(v11);
      __break(1u);
    }

    ++*(a1 + 48);
  }

  return result;
}

uint64_t sub_100006BF4(uint64_t a1, unint64_t a2)
{
  result = os_unfair_lock_lock_with_options();
  v5 = *(a1 + 172);
  if (!*(a1 + 172))
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 112);
  *(&v7 + 1) = ~v6 >= 0xFFFFFFFFFFFFFFE0;
  *&v7 = 31 - v6;
  if ((v5 - 1) >= (v7 >> 5))
  {
    __break(0x5513u);
    return result;
  }

  result = 0;
  v8 = -1;
  do
  {
    v9 = *(v6 + 8) | (*(v6 + 12) << 32);
    if (v9 <= a2 && *v6 + v9 > a2 && *v6 < v8)
    {
      v8 = *v6;
      result = v6;
    }

    v6 += 32;
    --v5;
  }

  while (v5);
  if (!result)
  {
LABEL_9:
    os_unfair_lock_unlock((a1 + 176));
    return 0;
  }

  return result;
}

uint64_t sub_100006CB4(void *a1)
{
  v1 = *a1 + ~(*a1 << 32);
  v2 = 9 * (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) ^ (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return (v3 >> 31) ^ v3;
}

void sub_100006D00(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (v4 + 24);
  }

  else
  {
    v5 = a1;
  }

  dispatch_assert_queue_V2(*v5);
  if (a2 >= 5)
  {
LABEL_17:
    __break(0x5512u);
    goto LABEL_18;
  }

  if (__CFADD__(a1 + 48, 264 * a2))
  {
LABEL_18:
    __break(0x5513u);
    return;
  }

  v6 = a1 + 48 + 264 * a2;
  sub_100006F54(*(v6 + 224), sub_100006E3C);
  sub_100006F54(*(v6 + 232), sub_100009FBC);
  madvise(*(v6 + 240), *(v6 + 248), 7);
  *(v6 + 252) = 0;
  *(v6 + 256) = 0;
  *(v6 + 240) = 0;
  v7 = *(a1 + 1104);
  do
  {
    v8 = v7;
    atomic_compare_exchange_strong_explicit((a1 + 1104), &v7, (1 << a2) | v7, memory_order_release, memory_order_relaxed);
  }

  while (v7 != v8);
  if ((v8 & 0x100000000) != 0)
  {
    while ((__ulock_wake() & 0x80000000) != 0)
    {
      v9 = *__error();
      if (v9 != 4)
      {
        if (v9)
        {
          v10 = v9 == 2;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          qword_1000360E8 = "BUG IN LIBTRACE: ulock_wake() failed";
          qword_100036118 = v9;
          __break(1u);
          goto LABEL_17;
        }

        return;
      }
    }
  }
}

unsigned int *sub_100006E44(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = *(a2 + 72);
  v10 = *(a2 + 20);
  v11 = *(a2 + 32);
  v4 = *(a2 + 4);
  v12 = *(a2 + 28);
  v13 = v4;
  v14 = *(a2 + 40);
  v16 = 0;
  v17 = 0;
  v15 = *(a2 + 56);
  v5 = sub_100005DC4(*(a1 + 32), v9);
  sub_10000724C(*(a1 + 32), v5);
  v6 = *(a2 + 80);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10000A008;
  v8[3] = &unk_100032158;
  v8[4] = *(a1 + 32);
  v8[5] = v5;
  return sub_100006978(v6, v8);
}

void *sub_100006F54(void *result, uint64_t (*a2)(void))
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      for (i = result[2]; i; i = *i)
      {
        result = a2(i[4]);
      }
    }

    if (v3[3])
    {
      result = v3[2];
      if (result)
      {
        do
        {
          v5 = *result;
          operator delete(result);
          result = v5;
        }

        while (v5);
      }

      v3[2] = 0;
      v6 = v3[1];
      if (v6)
      {
        for (j = 0; j != v6; ++j)
        {
          *(*v3 + 8 * j) = 0;
        }
      }

      v3[3] = 0;
    }
  }

  return result;
}

void sub_100006FEC(unint64_t a1)
{
  dispatch_suspend(*(a1 + 96));
  dispatch_suspend(*(a1 + 96));
  LOWORD(v2) = *(a1 + 140);
  while (1)
  {
    v3 = v2;
    if ((v2 & 0x101) != 0)
    {
      break;
    }

    v2 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 140), &v2, v2 | 1, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v3)
    {
      goto LABEL_4;
    }
  }

  if ((v2 & 0x100) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v4 = 2;
  if (!*(a1 + 147))
  {
    v4 = 0;
  }

  if (a1 && (v3 & 1) == 0)
  {
    *(a1 + 32) = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 976) = &dword_1000343B0[4 * v4 + 32];
    v6 = atomic_exchange_explicit(&dword_1000343B0[4 * v4 + 32], a1, memory_order_release);
    if (v6)
    {
      *(v6 + 32) = a1;
      *(StatusReg + 976) = 0;
    }

    else
    {
      *&dword_1000343B0[4 * v4 + 30] = a1;
      *(StatusReg + 976) = 0;
      dispatch_source_merge_data(*&dword_1000343B0[2 * v4 + 46], 1uLL);
    }
  }

LABEL_10:
  LOWORD(v7) = *(a1 + 140);
  while (1)
  {
    v8 = v7;
    if ((v7 & 0x202) != 0)
    {
      break;
    }

    v7 = v7;
    atomic_compare_exchange_strong_explicit((a1 + 140), &v7, v7 | 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v8)
    {
      goto LABEL_13;
    }
  }

  if ((v7 & 0x200) != 0)
  {
    return;
  }

LABEL_13:
  v9 = 3;
  if (!*(a1 + 147))
  {
    v9 = 1;
  }

  if (a1 && (v8 & 2) == 0)
  {
    *(a1 + 40) = 0;
    v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v10 + 976) = &dword_1000343B0[4 * v9 + 32];
    v11 = atomic_exchange_explicit(&dword_1000343B0[4 * v9 + 32], a1, memory_order_release);
    if (v11)
    {
      *(v11 + 40) = a1;
      *(v10 + 976) = 0;
    }

    else
    {
      *&dword_1000343B0[4 * v9 + 30] = a1;
      *(v10 + 976) = 0;
      v12 = *&dword_1000343B0[2 * v9 + 46];

      dispatch_source_merge_data(v12, 1uLL);
    }
  }
}

uint64_t sub_10000715C(void *a1, uint64_t a2, __int16 a3, char *a4)
{
  LOWORD(v8) = a3;
  result = sub_100003AA8(*(a2 + 64), &v8);
  if (!result)
  {
    return sub_1000074B4(a1, a2, v8, a4 + 2, &a4[*a4 + 2]);
  }

  return result;
}

void *sub_1000071F0(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 80))
  {
    result = **(*(a1 + 72) + 8);
  }

  else
  {
    result = sub_1000073C8(a1);
  }

  if (result[2] > a2)
  {
    result[2] = a2;
  }

  if (result[3] < a2)
  {
    result[3] = a2;
  }

  return result;
}

uint64_t sub_10000724C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    v4 = **(*(a1 + 72) + 8);
  }

  else
  {
    v4 = sub_1000073C8(a1);
  }

  if (sub_1000025E4(*(a1 + 40), *(a2 + 8), *(a2 + 16)))
  {
    v5 = v4[6];

    return sub_1000036A0(v5, a2, 0);
  }

  else
  {
    v7 = _os_assert_log();
    result = _os_crash(v7);
    __break(1u);
  }

  return result;
}

uint64_t sub_1000072E0(void *a1, char *a2)
{
  v4 = (a2 + 2);
  LOWORD(v8) = sub_100007C84(a1[3], a2 + 2);
  if (a1[10])
  {
    v5 = **(a1[9] + 8);
  }

  else
  {
    v5 = sub_1000073C8(a1);
  }

  sub_1000036A0(v5[5], &v8, 0);
  WORD1(v8) = sub_100007C84(a1[3], &v4[*a2]);
  if (a1[10])
  {
    v6 = **(a1[9] + 8);
  }

  else
  {
    v6 = sub_1000073C8(a1);
  }

  return sub_1000036A0(v6[5], (&v8 + 2), 0);
}

void *sub_1000073C8(uint64_t a1)
{
  v2 = _os_trace_calloc_typed();
  v2[2] = -1;
  v2[6] = sub_100003B48(1);
  v2[5] = sub_100003B48(1);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  *v2 = 0;
  v2[1] = v3;
  *v3 = v2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v4 + 1;
  return v2;
}

BOOL sub_100007440(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_1000074B4(void *a1, uint64_t a2, __int16 a3, char *a4, char *a5)
{
  LOWORD(v18) = a3;
  v10 = _os_trace_calloc_typed();
  *v10 = a3;
  v11 = sub_100007608(a1[3], a4);
  *(v10 + 8) = v11;
  if (!v11)
  {
    sub_1000076A8(a1 + 3, a4, a1[4]);
    v12 = strlen(a4);
    v13 = a1[3];
    a1[4] += v12 + 1;
    *(v10 + 8) = sub_100007608(v13, a4);
  }

  v14 = sub_100007608(a1[3], a5);
  *(v10 + 16) = v14;
  if (!v14)
  {
    sub_1000076A8(a1 + 3, a5, a1[4]);
    v15 = strlen(a5);
    v16 = a1[3];
    a1[4] += v15 + 1;
    *(v10 + 16) = sub_100007608(v16, a5);
  }

  result = sub_1000036A0(*(a2 + 64), &v18, v10);
  ++a1[7];
  return result;
}

void *sub_100007608(void *result, char *a2)
{
  if (result)
  {
    v2 = result;
    sub_100007D18(__p, a2);
    v3 = sub_100007B74(v2, __p);
    v4 = v3;
    if (v6 < 0)
    {
      operator delete(__p[0]);
      if (v4)
      {
LABEL_4:
        result = v4 + 2;
        if (*(v4 + 39) < 0)
        {
          return *result;
        }

        return result;
      }
    }

    else if (v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000076A8(uint64_t *a1, char *__s, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  sub_100007D18(__p, __s);
  v4 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_100007DD0(v5, v6);
  v8 = v7;
  v9 = v3[1];
  if (!*&v9)
  {
    goto LABEL_26;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*v3 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_26;
    }

LABEL_25:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  if (!sub_100007440(v14 + 2, __p))
  {
    goto LABEL_25;
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void *sub_100007B74(void *a1, uint64_t *a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = sub_100007DD0(v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v9 == v15)
      {
        if (sub_100007440(v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
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

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

void *sub_100007C84(void *result, char *a2)
{
  if (result)
  {
    v2 = result;
    sub_100007D18(__p, a2);
    v3 = sub_100007B74(v2, __p);
    v4 = v3;
    if (v6 < 0)
    {
      operator delete(__p[0]);
      if (v4)
      {
        return v4[5];
      }
    }

    else if (v3)
    {
      return v4[5];
    }

    return 0;
  }

  return result;
}

void *sub_100007D18(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000DE74();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

unint64_t sub_100007DD0(uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

uint64_t sub_100008204(float *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = __ROR8__(v3 + 16, 16);
  v5 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v4)))) >> 47))) ^ v3;
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v4)))) >> 47))) ^ v3;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v3)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t sub_10000863C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 5 && *(result + 4) == 112)
  {
    if (*(result + 38) << 16 == 1114112 && *(result + 50) << 16 == 0x100000 && *(result + 62) << 16 == 0x100000 && *(result + 74) << 16 == 1114112 && *(result + 86) << 16 == 1114112)
    {
      if (!*(result + 112) && *(result + 116) > 0x1Fu)
      {
        v4 = *(result + 12);
        v5 = *(result + 28);
        v6 = *(result + 40);
        v7 = *(result + 52);
        v8 = *(result + 64);
        v9 = *(result + 76);
        v10 = *(result + 96);
        v11 = *(result + 104);
        v12 = *(result + 148);
        v13[0] = *(result + 132);
        v13[1] = v12;
        result = sub_100008754(v4, v5, v10, v6, v7, v8, v9, v11, v13);
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100008754(uint64_t a1, mem_entry_name_port_t a2, uint64_t a3, mach_port_name_t a4, mach_port_name_t a5, int a6, mach_port_name_t a7, mach_vm_size_t a8, _DWORD *a9)
{
  *v36 = xmmword_100029C60;
  size = 0;
  address[0] = 0;
  if (dispatch_mach_mig_demux_get_context())
  {
    return 5;
  }

  if (a3 != 0x40000)
  {
    return 18;
  }

  v17 = mach_vm_map(mach_task_self_, address, 0x40000uLL, 0, 1, a2, 0, 0, 1, 1, 2u);
  if (v17 == -301)
  {
    sub_100027888();
  }

  if (v17)
  {
    _dispatch_bug();
    return 3;
  }

  if (a7)
  {
    if (!a8)
    {
LABEL_12:
      v19 = mach_port_deallocate(mach_task_self_, a7);
      if (v19 == -301)
      {
        sub_100027888();
      }

      if (v19)
      {
        _dispatch_bug();
      }

      goto LABEL_16;
    }

    v39 = 0;
    v18 = mach_vm_map(mach_task_self_, &v39, a8, 0, 1, a7, 0, 1, 1, 1, 2u);
    if (!v18)
    {
      v36[1] = v39;
      size = a8;
      goto LABEL_12;
    }

    sub_1000278D8(v18, address);
    return 3;
  }

LABEL_16:
  v20 = mach_port_deallocate(mach_task_self_, a2);
  if (v20 == -301)
  {
    sub_100027888();
  }

  if (v20)
  {
    _dispatch_bug();
  }

  v21 = address[0];
  v22 = _os_object_alloc_realized();
  v23 = v22;
  v24 = 0;
  *(v22 + 48) = v21;
  *(v22 + 64) = *(v21 + 464);
  *(v22 + 56) = *(v22 + 64);
  *(v22 + 80) = *(v21 + 488);
  *(v22 + 72) = *(v22 + 80);
  v25 = a9[5];
  if (!v25)
  {
    v25 = -1;
  }

  v26 = a9[1];
  v27 = a9[7];
  *(v22 + 128) = v25;
  *(v22 + 132) = v27;
  *(v22 + 136) = v26;
  address[1] = qword_1000343C8;
  v39 = qword_1000343D8;
  *(v22 + 142) = 2;
  v28 = v22 + 112;
  v29 = v22 + 96;
  v30 = 1;
  do
  {
    v31 = v30;
    v32 = (v28 + 4 * v24);
    *v32 = a4;
    v33 = mach_port_guard(mach_task_self_, a4, v32, 1);
    if (v33 == -301)
    {
      sub_100027888();
    }

    if (v33)
    {
      _dispatch_bug();
    }

    f = dispatch_mach_create_f();
    v30 = 0;
    *(v29 + 8 * v24) = f;
    a4 = a5;
    v24 = 1;
  }

  while ((v31 & 1) != 0);
  *(v23 + 120) = a6;
  dispatch_mach_notify_no_senders();
  dispatch_assert_queue_V2(qword_1000343D8);
  os_unfair_lock_lock_with_options();
  *(v23 + 16) = 0;
  v35 = off_100034418;
  *(v23 + 24) = off_100034418;
  *v35 = v23;
  off_100034418 = (v23 + 16);
  os_unfair_lock_unlock(&unk_100034420);
  (*(off_1000343E0 + 2))(off_1000343E0, v23, 1, v36, 0);
  if (*(v23 + 128))
  {
    dispatch_mach_connect();
    dispatch_mach_connect();
  }

  else
  {
    dispatch_activate(*(v23 + 96));
  }

  if (size)
  {
    vm_deallocate(mach_task_self_, v36[1], size);
  }

  return 0;
}

uint64_t sub_100008AC4(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = _os_trace_calloc_typed();
  *(v5 + 48) = 0;
  *(v5 + 176) = 0;
  *(v5 + 56) = v5 + 48;
  *(v5 + 96) = a1;
  *(v5 + 104) &= ~1u;
  memcpy((v5 + 182), __s, v4);
  sub_100008B58(v5);
  return v5;
}

void sub_100008B58(uint64_t a1)
{
  *(a1 + 128) = 0;
  v1 = a1 + 128;
  if ((a1 + 128) >= 0xFFFFFFFFFFFFFFF8 || (*(a1 + 136) = 0, v1 >= 0xFFFFFFFFFFFFFFF0) || (*(a1 + 144) = 0, v1 >= 0xFFFFFFFFFFFFFFE8) || (*(a1 + 152) = 0, v1 >= 0xFFFFFFFFFFFFFFE0))
  {
    __break(0x5513u);
  }

  *(a1 + 160) = 0;
  os_unfair_lock_lock_with_options();
  v3 = sub_100008CE8((a1 + 182));
  if (!v3)
  {
    v3 = _os_trace_calloc_typed();
    *v3 = 0;
    *(v3 + 8) = v3;
    *(v3 + 16) = 0;
    os_unfair_lock_lock_with_options();
    sub_1000076A8(&qword_100036260, (a1 + 182), v3);
  }

  os_unfair_lock_unlock(&stru_100036268);
  v4 = *v3;
  if (*v3)
  {
    v5 = *v3;
    while (v5 != a1)
    {
      v5 = *(v5 + 16);
      if (!v5)
      {
        *(a1 + 16) = v4;
        *(v4 + 24) = a1 + 16;
        goto LABEL_13;
      }
    }
  }

  else
  {
    *(a1 + 16) = 0;
    *(v3 + 8) = a1 + 16;
LABEL_13:
    *v3 = a1;
    *(a1 + 24) = v3;
  }

  os_unfair_lock_unlock((v3 + 16));
}

void *sub_100008CE8(char *a1)
{
  v1 = sub_100007C84(qword_100036260, a1);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  return v1;
}

void sub_100008D2C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = *(v1 + 8);
  v72 = v1;
  v7 = *v1;
  if (v6)
  {
    v8 = *(v7 + 304);
  }

  else
  {
    v8 = sub_1000025DC(v7);
  }

  memcpy(__dst, v5, sizeof(__dst));
  v9 = &__dst[8];
  v10 = &__dst[8];
  if (__dst[0] <= 0x1000uLL)
  {
    if (__CFADD__(__dst, __dst[0]))
    {
      goto LABEL_149;
    }

    v10 = __dst + __dst[0];
  }

  v11 = 16;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  while (1)
  {
    v13 = (v9 + 12);
    if (v9 + 12 >= v10)
    {
      break;
    }

    v14 = v11;
    if (v11 - 4073 < 0xFFFFFFFFFFFFF007)
    {
      goto LABEL_148;
    }

    v15 = v9;
    v16 = *(v9 + 2);
    v17 = HIWORD(v16);
    if (!HIWORD(v16) || v17 > v10 - v13)
    {
      break;
    }

    v19 = v17 + 24;
    if ((v16 & 0x7000000000000) != 0)
    {
      v19 = (HIWORD(v16) & 0xFFF8) + 32;
    }

    if (__CFADD__(v9, v19))
    {
      goto LABEL_149;
    }

    if (v11 > 0xFF8)
    {
      goto LABEL_148;
    }

    v11 += v19;
    v9 = (v9 + v19);
    v20 = *v15;
    if (*v15)
    {
      v75[0] = v12;
      v75[1] = v12;
      v74 = 0;
      v73 = -1431655766;
      if (v20 == 5)
      {
        if ((v20 & 0x10000) != 0)
        {
          if (v16 >> 51)
          {
            v74 = 8;
            v21 = 8;
            if ((v20 & 0x100000) != 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v74 = HIWORD(v16);
            v21 = HIWORD(v16);
            if ((v20 & 0x100000) != 0)
            {
LABEL_26:
              if (v21 + 8 > v17)
              {
                v74 = HIWORD(v16);
                v21 = HIWORD(v16);
              }

              else
              {
                v74 = v21 + 8;
                if (__CFADD__(v13, v21))
                {
                  goto LABEL_149;
                }

                v21 = (v21 + 8);
              }
            }
          }
        }

        else
        {
          v21 = 0;
          if ((v20 & 0x100000) != 0)
          {
            goto LABEL_26;
          }
        }

        v22 = v14 + 24;
        v23 = BYTE1(v20);
        if (v3)
        {
LABEL_30:
          if (v23 == 2)
          {
            v24 = v21 + 4;
            if (v21 + 4 <= v17)
            {
              if (~v13 < v21)
              {
                goto LABEL_149;
              }

              if (v22 + v21 > 0xFFC)
              {
LABEL_148:
                __break(1u);
                goto LABEL_149;
              }

              if (v24 + v13[v21 + 2] + v13[v21 + 3] <= v17)
              {
                v74 = v24 + v13[v21 + 2] + v13[v21 + 3];
                if (v24 > ~v13)
                {
                  goto LABEL_149;
                }

                v25 = sub_10000A830(&v13[v21]);
                *&v12 = 0xAAAAAAAAAAAAAAAALL;
                *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
                if (v25)
                {
                  sub_10000A890(v8, v25);
                  goto LABEL_95;
                }
              }
            }
          }
        }

        else
        {
          v26 = HIDWORD(v20);
          if (v23 <= 2)
          {
            if (v23 != 1)
            {
              goto LABEL_30;
            }

            if ((v26 - 1) >= 2)
            {
              if (v26 == 3 && v21 + 32 <= v17)
              {
                v74 = v21 + 32;
                if (__CFADD__(v13, v21))
                {
                  goto LABEL_149;
                }

                os_unfair_lock_lock_with_options();
                v46 = *(v8 + 120);
                if (v46)
                {
                  v47 = v46[1];
                  if (v47)
                  {
                    v48 = *&v13[v21];
                    v49 = *&v13[v21 + 8];
                    v50 = __ROR8__(v49 + 16, 16);
                    v51 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v48 ^ v50)) >> 47) ^ (0x9DDFEA08EB382D69 * (v48 ^ v50)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v48 ^ v50)) >> 47) ^ (0x9DDFEA08EB382D69 * (v48 ^ v50)))) >> 47))) ^ v49;
                    v52 = vcnt_s8(v47);
                    v52.i16[0] = vaddlv_u8(v52);
                    if (v52.u32[0] > 1uLL)
                    {
                      v53 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v48 ^ v50)) >> 47) ^ (0x9DDFEA08EB382D69 * (v48 ^ v50)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v48 ^ v50)) >> 47) ^ (0x9DDFEA08EB382D69 * (v48 ^ v50)))) >> 47))) ^ v49;
                      if (v51 >= *&v47)
                      {
                        v53 = v51 % *&v47;
                      }
                    }

                    else
                    {
                      v53 = v51 & (*&v47 - 1);
                    }

                    v59 = *v46;
                    v60 = *(*v46 + 8 * v53);
                    if (v60)
                    {
                      v61 = *v60;
                      if (*v60)
                      {
                        v62 = *&v47 - 1;
                        do
                        {
                          v63 = v61[1];
                          if (v63 == v51)
                          {
                            if (v61[2] == v48 && v61[3] == v49)
                            {
                              v65 = v61[1];
                              if (v52.u32[0] > 1uLL)
                              {
                                if (v65 >= *&v47)
                                {
                                  v65 %= *&v47;
                                }
                              }

                              else
                              {
                                v65 &= v62;
                              }

                              v66 = *(v59 + 8 * v65);
                              do
                              {
                                v67 = v66;
                                v66 = *v66;
                              }

                              while (v66 != v61);
                              if (v67 == v46 + 2)
                              {
                                goto LABEL_136;
                              }

                              v68 = v67[1];
                              if (v52.u32[0] > 1uLL)
                              {
                                if (v68 >= *&v47)
                                {
                                  v68 %= *&v47;
                                }
                              }

                              else
                              {
                                v68 &= v62;
                              }

                              if (v68 != v65)
                              {
LABEL_136:
                                if (!*v61)
                                {
                                  goto LABEL_137;
                                }

                                v69 = *(*v61 + 8);
                                if (v52.u32[0] > 1uLL)
                                {
                                  if (v69 >= *&v47)
                                  {
                                    v69 %= *&v47;
                                  }
                                }

                                else
                                {
                                  v69 &= v62;
                                }

                                if (v69 != v65)
                                {
LABEL_137:
                                  *(v59 + 8 * v65) = 0;
                                }
                              }

                              v70 = *v61;
                              if (*v61)
                              {
                                v71 = *(v70 + 8);
                                if (v52.u32[0] > 1uLL)
                                {
                                  if (v71 >= *&v47)
                                  {
                                    v71 %= *&v47;
                                  }
                                }

                                else
                                {
                                  v71 &= v62;
                                }

                                if (v71 != v65)
                                {
                                  *(*v46 + 8 * v71) = v67;
                                  v70 = *v61;
                                }
                              }

                              *v67 = v70;
                              *v61 = 0;
                              --v46[3];
                              operator delete(v61);
                              break;
                            }
                          }

                          else
                          {
                            if (v52.u32[0] > 1uLL)
                            {
                              if (v63 >= *&v47)
                              {
                                v63 %= *&v47;
                              }
                            }

                            else
                            {
                              v63 &= v62;
                            }

                            if (v63 != v53)
                            {
                              break;
                            }
                          }

                          v61 = *v61;
                        }

                        while (v61);
                      }
                    }
                  }
                }

LABEL_90:
                os_unfair_lock_unlock((v8 + 176));
LABEL_95:
                *&v12 = 0xAAAAAAAAAAAAAAAALL;
                *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
              }
            }

            else
            {
              v33 = sub_100009720(v15, &v74);
              *&v12 = 0xAAAAAAAAAAAAAAAALL;
              *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
              if (v33)
              {
                v34 = v33;
                if (*(v15 + 4) == 1)
                {
                  uuid_copy(v75 + 14, v33);
                  v35 = *(v34 + 2);
                  v36 = *(v34 + 3);
                  DWORD2(v75[0]) = v35;
                  WORD6(v75[0]) = WORD2(v35);
                  *&v75[0] = v36;
                  sub_10000AB80(v8, v75);
                }

                else
                {
                  sub_100009B88(v8, v33);
                }

                v31 = (v34 + 32);
                v30 = v34;
                v32 = 1;
                goto LABEL_94;
              }
            }
          }

          else
          {
            switch(v23)
            {
              case 3:
                if (v21 + 32 <= v17)
                {
                  v74 = v21 + 32;
                  if (__CFADD__(v13, v21))
                  {
                    goto LABEL_149;
                  }

                  v37 = v22 + v21;
                  v38 = &v13[v21];
                  if (v26 == 2)
                  {
                    os_unfair_lock_lock_with_options();
                    v54 = *(v8 + 172);
                    if (!v54)
                    {
                      goto LABEL_90;
                    }

                    v55 = 0;
                    v56 = 0;
                    while (1)
                    {
                      v57 = *(v8 + 112);
                      if (__CFADD__(v57, v55))
                      {
                        break;
                      }

                      if (v37 > 0xFF8)
                      {
                        goto LABEL_148;
                      }

                      if (*(v57 + v55 + 14) == *v38)
                      {
                        if (v38 > 0xFFFFFFFFFFFFFFF7 || (v57 + v55 + 14) > 0xFFFFFFFFFFFFFFF7)
                        {
                          break;
                        }

                        if (v37 - 4081 < 8)
                        {
                          goto LABEL_148;
                        }

                        v58 = v57 + v55;
                        if (*(v58 + 22) == *(v38 + 1))
                        {
                          *(v58 + 12) = 0;
                          *(v58 + 8) = 0;
                          *v58 = 0;
                          v54 = *(v8 + 172);
                        }
                      }

                      ++v56;
                      v55 += 32;
                      if (v56 >= v54)
                      {
                        goto LABEL_90;
                      }
                    }

LABEL_149:
                    __break(0x5513u);
                  }

                  if (v26 == 1)
                  {
                    uuid_copy(v75 + 14, &v13[v21]);
                    if (v37 > 0xFE8)
                    {
                      goto LABEL_148;
                    }

                    v39 = *(v38 + 2);
                    DWORD2(v75[0]) = v39;
                    WORD6(v75[0]) = WORD2(v39);
                    if (v37 - 4065 < 8)
                    {
                      goto LABEL_148;
                    }

                    *&v75[0] = *(v38 + 3);
                    sub_10000AB80(v8, v75);
                    if (qword_100044D20 != -1)
                    {
                      dispatch_once(&qword_100044D20, &stru_100032F00);
                    }

                    *&v12 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    if ((byte_1000360CC & 1) == 0)
                    {
                      v30 = &v13[v21];
                      v31 = 0;
                      v32 = 2;
LABEL_94:
                      sub_100004300(v30, v31, 0, v32);
                      goto LABEL_95;
                    }
                  }
                }

                break;
              case 4:
                v40 = *v72;
                if (*(v72 + 8))
                {
                  v73 = *(*(v40 + 16) + 64);
                  if (!v73)
                  {
LABEL_68:
                    v41 = sub_100009720(v15, &v74);
                    *&v12 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    if (v41)
                    {
                      v42 = v41;
                      uuid_copy(v75 + 14, v41);
                      v43 = *(v42 + 2);
                      v44 = *(v42 + 3);
                      DWORD2(v75[0]) = v43;
                      WORD6(v75[0]) = WORD2(v43);
                      *&v75[0] = v44;
                      sub_10000AB80(v8, v75);
                      v45 = *(v15 + 4);
                      if (v45 == 8)
                      {
                        v31 = (v42 + 32);
                        v30 = v42;
                        v32 = 8;
                        goto LABEL_94;
                      }

                      *&v12 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      if (v45 == 16)
                      {
                        v31 = (v42 + 32);
                        v30 = v42;
                        v32 = 4;
                        goto LABEL_94;
                      }
                    }
                  }
                }

                else
                {
                  sub_1000025A8(v40, &v73);
                  *&v12 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  if (!v73)
                  {
                    goto LABEL_68;
                  }
                }

                break;
              case 5:
                if (v21 + 32 > v17)
                {
                  v74 = v17;
                }

                else
                {
                  v74 = v21 + 32;
                  if (__CFADD__(v13, v21))
                  {
                    goto LABEL_149;
                  }

                  v27 = &v13[v21];
                  if (v26 == 16)
                  {
                    uuid_copy((v8 + 80), &v13[v21]);
                    sub_100009D98((v8 + 80));
                    goto LABEL_95;
                  }

                  if (v26 == 1)
                  {
                    v28 = v22 + v21;
                    uuid_copy(v75 + 14, &v13[v21]);
                    if (v28 > 0xFE8)
                    {
                      goto LABEL_148;
                    }

                    v29 = *(v27 + 2);
                    DWORD2(v75[0]) = v29;
                    WORD6(v75[0]) = WORD2(v29);
                    if (v28 - 4065 < 8)
                    {
                      goto LABEL_148;
                    }

                    *&v75[0] = *(v27 + 3);
                    sub_10000AB80(v8, v75);
                    v30 = &v13[v21];
                    v31 = 0;
                    v32 = 1024;
                    goto LABEL_94;
                  }
                }

                break;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10000953C(int a1, uint64_t a2)
{
  v2 = a2;
  context = dispatch_mach_mig_demux_get_context();
  if (!context)
  {
    return 5;
  }

  v5 = context;
  v6 = *(context + 116);
  if (*(context + 144) == 1)
  {
    sub_100027734(context, v2);
  }

  else
  {
    v7 = v6 == a1;
    v8 = v6 == a1;
    v9 = &qword_1000343C8;
    if (!v7)
    {
      v9 = &qword_1000343D8;
    }

    dispatch_assert_queue_V2(*v9);
    sub_10000197C(v5, v2, v8);
  }

  return 4294966991;
}

_DWORD *sub_1000095D0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10000953C(result[3], result[2]);
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 56;
    }
  }

  return result;
}

uint64_t sub_100009654(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a2;
  v7 = NDR_record;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 11701;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  return mach_msg(&msg, 1, 0x38u, 0, 0, 0, 0);
}

void sub_1000096C8(uint64_t *a1)
{
  os_unfair_lock_lock_with_options();
  sub_100009944(qword_100044C08, a1);

  os_unfair_lock_unlock(&unk_100044C00);
}

uint64_t sub_100009720(uint64_t result, _WORD *a2)
{
  v3 = *a2;
  v4 = v3 + 32;
  v5 = *(result + 16);
  if (v3 + 32 > HIWORD(v5))
  {
    result = 0;
    v13 = HIWORD(v5);
LABEL_7:
    *a2 = v13;
    return result;
  }

  *a2 = v4;
  v6 = result + 24;
  v7 = ~(result + 24);
  if (v7 >= v3 && v4 <= v7)
  {
    v8 = v6 + v3;
    v9 = *(result + 16);
    v10 = HIWORD(v9);
    v11 = HIWORD(v9) - v4;
    v12 = strnlen((v6 + v4), (HIWORD(v9) - v4));
    LOWORD(v13) = v4 + v12;
    if (v12 == v11)
    {
      LOWORD(v13) = v10;
      result = 0;
    }

    else
    {
      result = v8;
    }

    goto LABEL_7;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_100009808(uint64_t a1)
{
  vm_deallocate(mach_task_self_, *(a1 + 48), 0x40000uLL);
  *(a1 + 48) = 0;
  v2 = *(off_1000343E0 + 2);

  return v2();
}

void sub_100009874(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  sub_1000098D0(*(a1 + 120));
  free(*(a1 + 112));

  free(a1);
}

uint64_t sub_1000098D0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

float *sub_100009944(float *result, uint64_t *a2)
{
  v2 = a2[1];
  v3 = __ROR8__(v2 + 16, 16);
  v4 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) >> 47))) ^ v2;
  v5 = *(result + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) >> 47))) ^ v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != v2)
  {
    goto LABEL_21;
  }

  return result;
}

void sub_100009B88(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock_with_options();
  v4 = *(a1 + 120);
  if (!v4)
  {
    operator new();
  }

  sub_100009944(v4, a2);

  os_unfair_lock_unlock((a1 + 176));
}

void sub_100009C08(uint64_t *a1, int a2)
{
  os_unfair_lock_lock_with_options();
  v4 = qword_100042A80;
  if (qword_100042A80)
  {
    v5 = qword_100042A80;
  }

  else
  {
    v5 = &qword_100042A80;
  }

  v5[1] = a1;
  *a1 = v4;
  a1[1] = &qword_100042A80;
  qword_100042A80 = a1;
  if (a2)
  {
    if (__OFADD__(dword_100042A90, 1))
    {
      __break(0x5500u);
      return;
    }

    ++dword_100042A90;
    if (qword_100042AD8 != -1)
    {
      dispatch_once(&qword_100042AD8, &stru_1000314E0);
    }

    dispatch_group_enter(qword_100042AE0);
  }

  os_unfair_lock_unlock(&unk_100042A78);
}

BOOL sub_100009CD0(unsigned __int8 *a1)
{
  if (qword_100044D10 != -1)
  {
    dispatch_once(&qword_100044D10, &stru_100032EC0);
  }

  if (byte_100044D18 != 1)
  {
    return 0;
  }

  memset(__b, 170, sizeof(__b));
  sub_100009E5C(a1, 3, __b);
  return access(__b, 0) == 0;
}

void sub_100009D98(__int128 *a1)
{
  *v3 = *a1;
  if (!sub_100009CD0(v3))
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 0x40000000;
    v1[2] = sub_100018B9C;
    v1[3] = &unk_100031C88;
    v2 = *v3;
    dispatch_async(qword_100044C10, v1);
  }
}

uint64_t sub_100009E5C(unsigned __int8 *a1, int a2, char *__str)
{
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v6 = snprintf(__str, 0x400uLL, "%s/", qword_100044CE0);
  v7 = &__str[v6];
  v8 = 1024 - v6;
  if ((a2 - 1) > 1)
  {
    result = snprintf(v7, v8, "dsc");
    v10 = 0;
  }

  else
  {
    result = snprintf(v7, v8, "%02X", *a1);
    v10 = 1;
  }

  v11 = result + 1;
  if (v11 + 2 * (16 - v10) >= v8)
  {
    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: Path buffer is too small";
    qword_100036118 = v8;
    __break(1u);
  }

  else
  {
    v7[result] = 47;
    v12 = &v7[v11];
    do
    {
      *v12 = a0123456789abcd[a1[v10] >> 4];
      v12[1] = a0123456789abcd[a1[v10] & 0xF];
      v12 += 2;
      ++v10;
    }

    while (v10 != 16);
    *v12 = 0;
  }

  return result;
}

void sub_100009FBC(unsigned int **a1)
{
  sub_100005F08(a1[10], &_free);

  free(a1);
}

uint64_t sub_10000A008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 + 2);
  sub_10000715C(*(a1 + 32), *(a1 + 40), *a3, (a3 + 2));
  v5 = *(a1 + 32);

  return sub_1000072E0(v5, v4);
}

void sub_10000A058(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_10000A0A4(uint64_t a1)
{
  if (a1 && *(a1 + 24))
  {
    sub_10000A058(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

unint64_t sub_10000A104(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_1000061E8(*(*(a1 + 32) + 16), a3 + 2);
  v6 = result;
  if (result >= 0x10000)
  {
    result = _os_assumes_log();
  }

  v7 = **(a1 + 40);
  v8 = *a3;
  v7[1] = *(v7 + 4) | (*a3 << 16);
  *v7 = a3[1];
  if (v6 >= 0x10000)
  {
    v9 = _os_assert_log();
    result = _os_crash(v9);
    __break(1u);
  }

  else
  {
    v7[1] = (v8 << 16) | v6;
    **(a1 + 40) += 16;
  }

  return result;
}

uint64_t sub_10000A1B4(uint64_t result, _WORD *a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  *v3 = *a2;
  *v2 = v3 + 1;
  return result;
}

uint64_t sub_10000A1CC(uint64_t result, _WORD *a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  *v3 = *a2;
  *v2 = v3 + 1;
  return result;
}

void sub_10000A1E4(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (*(v3 + 96) == 1)
  {
    if (*(v3 + 76) == -1)
    {
      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "%s: writes blocked (and dropped) for %s/%016llx.tracev3", "_logd_book_persist_handler", *(v3 + 8), *(v3 + 32));
      sub_1000155B8(__b);
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "%s: writes blocked (and dropped), %s/%016llx.tracev3 unexpectedly already open", "_logd_book_persist_handler", *(v3 + 8), *(v3 + 32) - 1);
      sub_1000155B8(__b);
      sub_10000BBFC(v3);
      sub_10000BCE0(v2, v3);
    }

    return;
  }

  v5 = *(v3 + 56);
  if (v5)
  {
    v6 = *(v3 + 48);
    v7 = a2[29];
    v8 = __OFADD__(v6, v7);
    v9 = v6 + v7;
    if (v8)
    {
      goto LABEL_35;
    }

    if (v9 > v5)
    {
      sub_10000BBFC(*(result + 8));
      sub_10000BCE0(v2, v3);
    }
  }

  v10 = a2[31];
  if (v10 < *(v3 + 80))
  {
    *(v3 + 80) = v10;
  }

  v11 = a2[32];
  if (v11 > *(v3 + 88))
  {
    *(v3 + 88) = v11;
  }

  if (*(v3 + 76) == -1)
  {
    v16 = *(v3 + 104);
    if (*(v3 + 72) > *(v3 + 100) || *(v3 + 64) > v16)
    {
      v17 = openat(dword_100035D38, *(v3 + 8), 1048832);
      if (v17 == -1)
      {
        __error();
      }

      else
      {
        v18 = v17;
        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_28;
        }

        sub_10000EEE0(v3, 0, 0x7FFFFFFFFFFFFFFFLL, v16, v17);
        if (close(v18) != -1)
        {
          goto LABEL_28;
        }

        v19 = *__error();
        result = *__error();
        if (v19 == 9)
        {
LABEL_36:
          qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
          qword_100036118 = result;
          __break(1u);
          return;
        }
      }

      _os_assumes_log();
    }

LABEL_28:
    if (sub_10000DC14(v3))
    {
      return;
    }
  }

  if (*(v3 + 48))
  {
    goto LABEL_17;
  }

  result = _os_trace_write();
  if (result == -1)
  {
LABEL_30:
    __error();
    _os_assumes_log();
    return;
  }

  v12 = *(v3 + 48);
  v8 = __OFADD__(v12, result);
  v13 = v12 + result;
  if (v8)
  {
LABEL_35:
    __break(0x5500u);
    goto LABEL_36;
  }

  *(v3 + 48) = v13;
LABEL_17:
  result = _os_trace_writev();
  if (result == -1)
  {
    goto LABEL_30;
  }

  v14 = *(v3 + 48);
  v8 = __OFADD__(v14, result);
  v15 = v14 + result;
  if (v8)
  {
    goto LABEL_35;
  }

  *(v3 + 48) = v15;

  sub_10000A774(v3);
}

void sub_10000A4F0(uint64_t a1, int a2)
{
  v2 = *(a1 + 1136);
  if (a2 < 0 == 280 * a2 <= ~v2)
  {
LABEL_14:
    __break(0x5513u);
    return;
  }

  v4 = v2 + 280 * a2;
  if (*(v4 + 268) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(v4 + 272);
    while (!__CFADD__(v7, v5))
    {
      free(*(v7 + v5));
      v7 = *(v4 + 272);
      if (__CFADD__(v7, v5))
      {
        break;
      }

      v8 = (v7 + v5);
      ++v6;
      *v8 = 0;
      v8[1] = 0;
      v5 += 16;
      if (v6 >= *(v4 + 268))
      {
        goto LABEL_7;
      }
    }

    goto LABEL_14;
  }

LABEL_7:
  *(v4 + 232) = 0;
  *(v4 + 268) = 1;
  *(v4 + 248) = xmmword_100029D80;
  if (!*(a1 + 1240))
  {
    if (qword_100044BF0 != -1)
    {
      dispatch_once(&qword_100044BF0, &stru_100031C00);
    }

    dispatch_async(qword_100044BF8, &stru_100031B40);
  }

  v9 = *(v4 + 224);

  sub_10000A608(v9);
}

void sub_10000A608(uint64_t a1)
{
  sub_10000A6A8(*(a1 + 16));
  sub_10000A0A4(*(a1 + 24));
  *(a1 + 32) = 0;
  sub_100006F54(*(a1 + 40), sub_10000A718);
  v2 = *(a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_100005F08(v2[6], 0);
      sub_100005F08(v2[5], 0);
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 8) = -1;
}

void *sub_10000A6A8(void *result)
{
  if (result)
  {
    v1 = result;
    if (result[3])
    {
      result = result[2];
      if (result)
      {
        do
        {
          v2 = *result;
          operator delete(result);
          result = v2;
        }

        while (v2);
      }

      v1[2] = 0;
      v3 = v1[1];
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          *(*v1 + 8 * i) = 0;
        }
      }

      v1[3] = 0;
    }
  }

  return result;
}

void sub_10000A718(unsigned int **a1)
{
  sub_100005F08(a1[7], &_free);
  sub_100005F08(a1[8], &_free);

  free(a1);
}

uint64_t sub_10000A774(uint64_t a1)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  boot_uuid = _os_trace_get_boot_uuid();
  uuid_parse(boot_uuid, &v5);
  v3 = *(a1 + 76);
  *&v7[12] = 0xAAAAAAAAAAAAAAAALL;
  value = 1;
  v8 = *(a1 + 80);
  *v7 = v5;
  result = fsetxattr(v3, "com.apple.logd.metadata", &value, 0x28uLL, 0, 0);
  if (result == -1)
  {
    __error();
    return _os_assumes_log();
  }

  return result;
}

uint64_t sub_10000A830(uint64_t result)
{
  v1 = *(result + 2);
  if (!*(result + 2) || !*(result + 3))
  {
    return 0;
  }

  v2 = result + 4;
  v3 = (v1 - 1);
  v4 = ~(result + 4);
  if (v3 > v4)
  {
    goto LABEL_11;
  }

  if (*(v2 + v3))
  {
    return 0;
  }

  if (v4 < v1 || (v5 = v2 + v1, v6 = *(result + 3) - 1, __CFADD__(v5, v6)))
  {
LABEL_11:
    __break(0x5513u);
  }

  else if (*(v5 + v6))
  {
    return 0;
  }

  return result;
}

void sub_10000A890(uint64_t a1, unsigned __int8 *a2)
{
  v4 = a2[2] + a2[3];
  os_unfair_lock_lock_with_options();
  v5 = (a1 + 48);
  v6 = (a1 + 48);
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (*(v6 + 4) == *a2)
    {
      goto LABEL_8;
    }
  }

  v7 = _os_trace_malloc_typed();
  memcpy(v7 + 1, a2, v4 + 4);
  v8 = *v5;
  *v7 = *v5;
  if (!v8)
  {
    *(a1 + 56) = v7;
  }

  *v5 = v7;
LABEL_8:

  os_unfair_lock_unlock((a1 + 176));
}

void sub_10000A954(id a1)
{
  if (byte_100044BC4 == 1)
  {
    os_map_str_clear();
    word_100044BE0 = ~word_100044BE0 | 0xFFFE;
  }
}

void sub_10000A9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a1 + 124));
  if (a3)
  {
    if ((*(a3 + 16))(a3))
    {
      v7 = *(a1 + 48);
      v8 = *(v7 + 456);
      if (v8)
      {
        do
        {
          while (1)
          {
            v9 = __clz(__rbit64(v8));
            v10 = (v7 + (v9 << 12));
            v8 &= ~(1 << v9);
            if (*v10 >= 0x11u && v10[19] && *(v10 + 6) == 3)
            {
              break;
            }

            if (!v8)
            {
              goto LABEL_14;
            }
          }

          if ((*(a4 + 16))(a4))
          {
            v11 = v8 == 0;
          }

          else
          {
            v11 = 1;
          }
        }

        while (!v11);
      }
    }
  }

LABEL_14:

  os_unfair_lock_unlock((a1 + 124));
}

void sub_10000AA98(uint64_t a1, char a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = *a1;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 0x40000000;
    v3[2] = sub_10000AB50;
    v3[3] = &unk_1000321D8;
    v3[4] = a1;
    v4 = a2;
    sub_10000A9C4(v2, 0, &stru_1000321B8, v3);
  }
}

void sub_10000AB80(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock_with_options();
  v4 = *(a1 + 172);
  if (v4 <= 0x3FF)
  {
    if (*(a1 + 172))
    {
      v5 = 0;
      v6 = *(a1 + 112);
      v7 = (a2 + 14);
      while (1)
      {
        if (v5 > ~v6)
        {
          goto LABEL_21;
        }

        v8 = (v6 + v5);
        if (*(v6 + v5 + 14) == *v7)
        {
          if (v7 > 0xFFFFFFFFFFFFFFF7 || v6 + v5 + 14 > 0xFFFFFFFFFFFFFFF7)
          {
            goto LABEL_21;
          }

          if (*(v6 + v5 + 22) == *(a2 + 22))
          {
            break;
          }
        }

        v5 += 32;
        if (32 * v4 == v5)
        {
          goto LABEL_10;
        }
      }

      v14 = *(a2 + 16);
      *v8 = *a2;
      v8[1] = v14;
    }

    else
    {
LABEL_10:
      if (v4 >= ((v4 + 3) & 0x7FCu))
      {
        v9 = _os_trace_realloc_typed();
        *(a1 + 112) = v9;
        LODWORD(v4) = *(a1 + 172);
      }

      else
      {
        v9 = *(a1 + 112);
      }

      *(a1 + 172) = v4 + 1;
      if (__CFADD__(v9, 32 * v4))
      {
LABEL_21:
        __break(0x5513u);
      }

      v10 = (v9 + 32 * v4);
      v11 = *(a2 + 16);
      *v10 = *a2;
      v10[1] = v11;
      if (*(a1 + 172) == 1024)
      {
        v15 = -1431655766;
        v12 = *(a1 + 96);
        if (*(a1 + 104))
        {
          v13 = *(*(v12 + 16) + 64);
          v15 = v13;
        }

        else
        {
          sub_1000025A8(v12, &v15);
          v13 = v15;
        }

        memset(__b, 170, sizeof(__b));
        snprintf(__b, 0x400uLL, "%s (%d) reached %d dylibs", (a1 + 182), v13, 1024);
        sub_1000155B8(__b);
      }
    }
  }

  os_unfair_lock_unlock((a1 + 176));
}

void sub_10000AD50(unint64_t prime, size_t __n)
{
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      v3 = std::__next_prime(__n);
    }
  }

  v4 = *(prime + 8);
  if (v3 > *&v4)
  {
LABEL_6:
    if (!(v3 >> 61))
    {
      operator new();
    }

    sub_10000DE74();
  }

  if (v3 < *&v4)
  {
    v5 = vcvtps_u32_f32(*(prime + 24) / *(prime + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (v3 <= v5)
    {
      v3 = v5;
    }

    if (v3 < *&v4)
    {
      if (v3)
      {
        goto LABEL_6;
      }

      v8 = *prime;
      *prime = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(prime + 8) = 0;
    }
  }
}

void sub_10000AF54(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 144) != 1)
  {
    dispatch_assert_queue_V2(qword_1000343C8);
    __dmb(9u);
    v3 = *(v2 + 520) & 0xFFFFFFFFFFFFFFFELL;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = (v4 & 1) == 0;
      if (v4)
      {
        v7 = 64;
      }

      else
      {
        v7 = 80;
      }

      if (v4)
      {
        v8 = 256;
      }

      else
      {
        v8 = 260;
      }

      v9 = *(v2 + v8);
      if (v6)
      {
        v10 = 128;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a1 + v7);
      if ((v11 - v9) > 0x3Fu)
      {
        *(a1 + 144) = 1;
        goto LABEL_29;
      }

      if (v9 != v11)
      {
        v12 = v2 + v10;
        do
        {
          v3 &= ~(1 << *(v12 + 2 * (v9++ & 0x3F)));
        }

        while (v9 != v11);
      }

      v4 = 0;
    }

    while ((v5 & 1) != 0);
    if (v3)
    {
      v13 = 0;
      v14 = off_1000343E8;
      do
      {
        v15 = __clz(__rbit64(v3));
        v16 = (v2 + (v15 << 12));
        v17 = *v16;
        v18 = 1 << v15;
        if (v17 >= 0x11 && v16[19])
        {
          v19 = *(v16 + 7);
          if ((v19 & 2) != 0)
          {
            (*(off_1000343E0 + 2))(off_1000343E0, a1, 3, v16, v17 & 0xFF0000000000FFFFLL | (((*(v16 + 1) | (*(v16 + 6) << 32)) & 0xFFFFFFFFFFLL) << 16) | (v19 << 56));
            if (*(a1 + 145) == 1)
            {
              (*(*v14 + 16))();
            }
          }

          else
          {
            v13 |= v18;
          }
        }

        v3 &= ~v18;
      }

      while (v3);
      if (v13)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 0x40000000;
        v20[2] = sub_10000B190;
        v20[3] = &unk_100030ED8;
        v20[4] = v13;
        v20[5] = v2;
        v20[6] = a1;
        v20[7] = v14;
        dispatch_async(qword_1000343D8, v20);
        return;
      }
    }
  }

LABEL_29:

  sub_10000B270(a1);
}

void sub_10000B190(uint64_t a1)
{
  for (i = *(a1 + 32); i; i &= ~(1 << v3))
  {
    v3 = __clz(__rbit64(i));
    (*(off_1000343E0 + 2))(off_1000343E0, *(a1 + 48), 4, *(a1 + 40) + (v3 << 12), *(*(a1 + 40) + (v3 << 12)));
    if (*(*(a1 + 48) + 146) == 1)
    {
      (*(**(a1 + 56) + 16))();
    }
  }

  v4 = qword_1000343C8;
  v5 = *(a1 + 48);

  dispatch_async_f(v4, v5, sub_10000B270);
}

uint64_t sub_10000B270(uint64_t a1)
{
  v2 = off_1000343E8;
  v3 = *(a1 + 48);
  dispatch_assert_queue_V2(qword_1000343C8);
  if (*(a1 + 145) == 1)
  {
    dispatch_group_leave(v2[1]);
    *(a1 + 145) = 0;
  }

  if (*(a1 + 146) == 1)
  {
    dispatch_group_leave(v2[1]);
    *(a1 + 146) = 0;
  }

  if (*(a1 + 144) == 1)
  {
    (*(off_1000343E0 + 2))(off_1000343E0, a1, 5, v3, 0);
  }

  (*(off_1000343E0 + 2))(off_1000343E0, a1, 2, 0, 0);
  os_unfair_lock_lock_with_options();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (v4 + 24);
  if (!v4)
  {
    v6 = &off_100034418;
  }

  *v6 = v5;
  *v5 = v4;
  os_unfair_lock_unlock(&unk_100034420);
  dispatch_release(*(a1 + 96));
  *(a1 + 96) = 0;
  dispatch_release(*(a1 + 104));
  *(a1 + 104) = 0;
  *(a1 + 16) = -1985229329;
  *(a1 + 24) = -1985229329;

  return __os_object_release_without_xref_dispose(a1);
}

uint64_t sub_10000B3A0(uint64_t a1)
{
  v37 = -1431655766;
  v2 = *(a1 + 104);
  v3 = *(a1 + 96);
  if (v2)
  {
    v37 = *(*(v3 + 16) + 64);
  }

  else
  {
    sub_1000025A8(v3, &v37);
  }

  result = os_unfair_lock_lock_with_options();
  v5 = &qword_100042A80;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1)
  {
    v5 = *a1;
  }

  v5[1] = v7;
  *v7 = v6;
  if (v37)
  {
    v8 = dword_100042A90 - 1;
    if (__OFSUB__(dword_100042A90, 1))
    {
      __break(0x5515u);
      return result;
    }

    --dword_100042A90;
    if (!v8)
    {
      memset(&v38[4] + 3, 170, 0x3DDuLL);
      strcpy(v38, "No userlevel firehose clients left");
      sub_1000155B8(v38);
    }

    if (qword_100042AD8 != -1)
    {
      dispatch_once(&qword_100042AD8, &stru_1000314E0);
    }

    dispatch_group_leave(qword_100042AE0);
  }

  os_unfair_lock_unlock(&unk_100042A78);
  os_unfair_lock_lock_with_options();
  v9 = sub_100008CE8((a1 + 182));
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = v9 + 2;
    if (v11)
    {
      v13 = v11 + 6;
    }

    *&v13->_os_unfair_lock_opaque = v12;
    *v12 = v11;
    os_unfair_lock_unlock(v9 + 4);
    if (!*&v10->_os_unfair_lock_opaque)
    {
      v14 = qword_100036260;
      if (qword_100036260)
      {
        sub_100007D18(v38, (a1 + 182));
        v15 = SHIBYTE(v38[2]);
        v16 = v38[0];
        if (v38[2] >= 0)
        {
          v17 = v38;
        }

        else
        {
          v17 = v38[0];
        }

        if (v38[2] >= 0)
        {
          v18 = HIBYTE(v38[2]);
        }

        else
        {
          v18 = v38[1];
        }

        v19 = sub_100007DD0(v17, v18);
        v20 = v14[1];
        if (!*&v20)
        {
          goto LABEL_41;
        }

        v21 = v19;
        v22 = vcnt_s8(v20);
        v22.i16[0] = vaddlv_u8(v22);
        v23 = v22.u32[0];
        if (v22.u32[0] > 1uLL)
        {
          v24 = v19;
          if (v19 >= *&v20)
          {
            v24 = v19 % *&v20;
          }
        }

        else
        {
          v24 = (*&v20 - 1) & v19;
        }

        v25 = *(*v14 + 8 * v24);
        if (v25)
        {
          v26 = *v25;
          if (*v25)
          {
            do
            {
              v27 = *(v26 + 1);
              if (v27 == v21)
              {
                if (sub_100007440(v26 + 2, v38))
                {
                  break;
                }
              }

              else
              {
                if (v23 > 1)
                {
                  if (v27 >= *&v20)
                  {
                    v27 %= *&v20;
                  }
                }

                else
                {
                  v27 &= *&v20 - 1;
                }

                if (v27 != v24)
                {
                  goto LABEL_41;
                }
              }

              v26 = *v26;
            }

            while (v26);
          }
        }

        else
        {
LABEL_41:
          v26 = 0;
        }

        if (v15 < 0)
        {
          operator delete(v16);
        }

        if (v26)
        {
          free(*(v26 + 5));
        }

        v28 = v14[1];
        v29 = *(v26 + 1);
        v30 = vcnt_s8(v28);
        v30.i16[0] = vaddlv_u8(v30);
        if (v30.u32[0] > 1uLL)
        {
          if (v29 >= *&v28)
          {
            v29 %= *&v28;
          }
        }

        else
        {
          v29 &= *&v28 - 1;
        }

        v31 = *(*v14 + 8 * v29);
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31 != v26);
        if (v32 == (v14 + 2))
        {
          goto LABEL_63;
        }

        v33 = *(v32 + 1);
        if (v30.u32[0] > 1uLL)
        {
          if (v33 >= *&v28)
          {
            v33 %= *&v28;
          }
        }

        else
        {
          v33 &= *&v28 - 1;
        }

        if (v33 != v29)
        {
LABEL_63:
          if (!*v26)
          {
            goto LABEL_64;
          }

          v34 = *(*v26 + 8);
          if (v30.u32[0] > 1uLL)
          {
            if (v34 >= *&v28)
            {
              v34 %= *&v28;
            }
          }

          else
          {
            v34 &= *&v28 - 1;
          }

          if (v34 != v29)
          {
LABEL_64:
            *(*v14 + 8 * v29) = 0;
          }
        }

        v35 = *v26;
        if (*v26)
        {
          v36 = *(v35 + 8);
          if (v30.u32[0] > 1uLL)
          {
            if (v36 >= *&v28)
            {
              v36 %= *&v28;
            }
          }

          else
          {
            v36 &= *&v28 - 1;
          }

          if (v36 != v29)
          {
            *(*v14 + 8 * v36) = v32;
            v35 = *v26;
          }
        }

        *v32 = v35;
        *v26 = 0;
        --v14[3];
        if (v26[39] < 0)
        {
          operator delete(*(v26 + 2));
        }

        operator delete(v26);
      }
    }
  }

  os_unfair_lock_unlock(&stru_100036268);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 0x40000000;
  v38[2] = sub_10000B840;
  v38[3] = &unk_100031230;
  v38[4] = a1;
  sub_10000B840(v38, 0);
  (v38[2])(v38, 1);
  (v38[2])(v38, 2);
  (v38[2])(v38, 3);
  return (v38[2])(v38, 4);
}

void sub_10000B840(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    __break(0x5512u);
LABEL_8:
    __break(0x5513u);
  }

  v2 = a2;
  if (1248 * a2 > ~qword_1000344D8)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  v4 = &qword_1000344D8[156 * a2];
  os_retain(*(v3 + 96));
  v5 = v4[1];
  if (v5)
  {
    v6 = (v5 + 24);
  }

  else
  {
    v6 = v4;
  }

  v7 = *v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10000B948;
  v8[3] = &unk_1000312B0;
  v8[4] = v3;
  v8[5] = v4;
  v9 = v2;
  dispatch_async(v7, v8);
}

void sub_10000B948(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = sub_1000029D0(v3, *(a1 + 48));
  sub_1000035BC(v2, (v3 + 182), v4);
  *sub_1000029D0(*(a1 + 32), *(a1 + 48)) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 176));
  v5 = *(*(a1 + 32) + 96);

  os_release(v5);
}

size_t sub_10000B9D4(char *a1, size_t a2, void *a3)
{
  v5 = a3;
  if (![NSJSONSerialization isValidJSONObject:v5])
  {
    memset(__b, 170, sizeof(__b));
    v12 = [v5 description];
    snprintf(__b, 0x400uLL, "JSON serialization would not work for record: %s", [v12 UTF8String]);

    sub_1000155B8(__b);
    v11 = 0;
LABEL_19:

    return v11;
  }

  v17 = 0;
  v6 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    memset(__b, 170, sizeof(__b));
    v10 = [v5 description];
    snprintf(__b, 0x400uLL, "JSON serialization failed for record: %s", [v10 UTF8String]);

    sub_1000155B8(__b);
    v11 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v13 = [[NSString alloc] initWithData:v6 encoding:4];
  result = strlcpy(a1, [v13 UTF8String], a2);
  v15 = result;
  v11 = result + 1;
  if (result >= a2 || v11 >= a2)
  {
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "JSON of length %zd is too long, prefix: %.64s...", v15, a1);
    sub_1000155B8(__b);
    v11 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if (result <= ~a1)
  {
    a1[result] = 10;
    if (result < ~a1)
    {
      a1[v11] = 0;
      goto LABEL_17;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_10000BBFC(uint64_t a1)
{
  if ((*(a1 + 76) & 0x80000000) != 0)
  {
LABEL_7:
    *(a1 + 48) = 0;
    *(a1 + 80) = xmmword_100029D80;
    result = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    *(a1 + 136) = result;
    return result;
  }

  sub_10000A774(a1);
  result = close(*(a1 + 76));
  if (result == -1)
  {
    v8 = *__error();
    result = *__error();
    if (v8 == 9)
    {
      goto LABEL_11;
    }

    result = _os_assumes_log();
  }

  *(a1 + 76) = -1;
  v3 = *(a1 + 72);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (!v4)
  {
    *(a1 + 72) = v5;
    v6 = *(a1 + 152);
    if ((v6 & 0x80000000) == 0)
    {
      *(a1 + 152) = v6 - 1;
    }

    v7 = *(a1 + 48);
    if (!__OFADD__(atomic_fetch_add_explicit((a1 + 64), v7, memory_order_relaxed), v7))
    {
      goto LABEL_7;
    }
  }

  __break(0x5500u);
LABEL_11:
  qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_100036118 = result;
  __break(1u);
  return result;
}

void sub_10000BCE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (v4 + 24);
  }

  else
  {
    v5 = a1;
  }

  dispatch_assert_queue_V2(*v5);
  v6 = *(a1 + 1240);
  if (v6 > 4)
  {
    return;
  }

  v83 = a2;
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 0x40000000;
  v86[2] = sub_10000CAAC;
  v86[3] = &unk_100031270;
  v86[4] = a1;
  v87 = v6;
  sub_10000CA34(v86);
  v7 = rb_tree_count((a1 + 1176));
  v8 = _os_trace_calloc_typed();
  v9 = rb_tree_iterate((a1 + 1176), 0, 1u);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = rb_tree_iterate((a1 + 1176), v10, 1u);
      rb_tree_remove_node((a1 + 1176), v10);
      if (v11 == 0x3FFFFFFF8)
      {
        break;
      }

      if (v11 > ~v8)
      {
        goto LABEL_94;
      }

      *(v8 + v11) = v10;
      v12 += v10[3];
      v11 += 8;
      v10 = v13;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

LABEL_95:
    __break(0x5500u);
  }

  v12 = 0;
LABEL_12:
  qsort(v8, v7, 8uLL, sub_10000CB20);
  v14 = *(a1 + 1240);
  v15 = v83;
  if (v14 <= 3)
  {
    v16 = *(a1 + 8);
    v17 = v16[18];
    v16[17] = v17;
    v18 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    v16[18] = v18;
    v19 = v16[7] / ((v18 - v17) / 1000000000.0);
    if (v19 <= -1.0 || v19 >= 1.84467441e19)
    {
      __break(0x5505u);
      return;
    }

    if (*(*(a1 + 8) + 152) < 0)
    {
      v21 = &unk_100044CA0;
      if (v14 == 3)
      {
        v21 = &qword_100044CA8;
      }

      if (*v21 < v19)
      {
        v81 = v7;
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        *(&v90 + 1) = v6 == 3;
        if (v6 == 3)
        {
          if ((word_100044CC8 & 0x100) != 0)
          {
            goto LABEL_57;
          }
        }

        else if (word_100044CC8)
        {
LABEL_57:
          v7 = v81;
          goto LABEL_58;
        }

        v22 = *(v83 + 144) - *(v83 + 136);
        if (v22 <= 0x773593FF)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22 / 0x3B9ACA00;
        }

        *(&v88 + 1) = v12;
        *&v89 = v23;
        if (v7)
        {
          v24 = 0;
          v25 = ~v8;
          v84 = v8;
          v76 = ~v8;
          while (!(v24 >> 60) && 8 * v24 <= v25)
          {
            v26 = *(v8 + 8 * v24);
            v27 = (v26 + 32);
            *(&v89 + 1) = v26 + 32;
            *&v88 = *(v26 + 24);
            __b[0] = 0;
            __b[1] = __b;
            __b[2] = 0x2000000000;
            LOBYTE(__b[3]) = 0;
            *__src = _NSConcreteStackBlock;
            *&__src[8] = 0x40000000;
            *&__src[16] = sub_10000DF18;
            *&__src[24] = &unk_1000312D8;
            *&__src[40] = &v88;
            *&__src[32] = __b;
            os_unfair_lock_lock_with_options();
            v28 = sub_100008CE8(v27);
            os_unfair_lock_unlock(&stru_100036268);
            if (v28)
            {
              for (i = *&v28->_os_unfair_lock_opaque; i; i = *(i + 16))
              {
                if (((*&__src[16])(__src, i) & 1) == 0)
                {
                  break;
                }
              }

              os_unfair_lock_unlock(v28 + 4);
            }

            v30 = *(__b[1] + 24);
            _Block_object_dispose(__b, 8);
            if (v30 == 1)
            {
              memset(__b, 170, sizeof(__b));
              v93 = 0xAA00000000000000;
              v91 = __b;
              v92 = 0x40000000000;
              sub_10000CCDC(&v91, "--- !logd quarantine record\n");
              v31 = time(0);
              memset(__str, 170, sizeof(__str));
              v32 = "Quaratine";
              if (BYTE1(v90))
              {
                v32 = "Super Quarantine";
              }

              sub_10000CCDC(&v91, "type         : %s\n", v32);
              if (v90 == 1)
              {
                sub_10000CCDC(&v91, "simulated    : 1\n");
              }

              snprintf(__str, 0x400uLL, "%s/%016llx.tracev3", *(v15 + 8), *(v15 + 32) - 1);
              sub_10000CCDC(&v91, "file         : %s\n", __str);
              sub_10000CCDC(&v91, "client       : %s\n", *(&v89 + 1));
              sub_10000CCDC(&v91, "time         : ");
              sub_10000CE70(&v91, v31);
              __src[0] = 10;
              if ((v93 & 0x200000000) == 0)
              {
                v33 = BYTE6(v93);
                v34 = v92;
                if (HIDWORD(v92) == v92 + (BYTE6(v93) ^ 1))
                {
                  sub_100012B80(&v91, __src, 1uLL);
                }

                else
                {
                  v35 = v91;
                  v36 = ~v91;
                  if (~v91 < v92)
                  {
                    goto LABEL_94;
                  }

                  *(v91 + v92) = 10;
                  v37 = v34 + 1;
                  LODWORD(v92) = v37;
                  if ((v33 & 1) == 0)
                  {
                    if (v36 < v37)
                    {
                      goto LABEL_94;
                    }

                    v35[v37] = 0;
                  }
                }
              }

              sub_10000CCDC(&v91, "time covered : %zu\n", v89);
              sub_10000CCDC(&v91, "client total : %zu\n", v88);
              sub_10000CCDC(&v91, "overall total: %zu\n\n", *(&v88 + 1));
              sub_10000EE68();
              if ((v93 & 0x100000000) != 0)
              {
                v38 = v91;
                v91 = 3954044928;
                WORD2(v93) = 0;
                free(v38);
              }

              contexta = objc_autoreleasePoolPush();
              bzero(__src, 0x400uLL);
              snprintf(__src, 0x400uLL, "%s/%016llx.tracev3", *(v15 + 8), *(v15 + 32) - 1);
              v105 = @"logd quarantine";
              v96 = @"record";
              v97 = @"superQuarantine";
              v77 = [NSNumber numberWithBool:BYTE1(v90)];
              v106 = v77;
              v98 = @"simulated";
              v39 = [NSNumber numberWithBool:v90];
              v107 = v39;
              v99 = @"file";
              v40 = [NSString stringWithUTF8String:__src];
              v108 = v40;
              v100 = @"client";
              v41 = [NSString stringWithUTF8String:*(&v89 + 1)];
              v109 = v41;
              v101 = @"unixTime";
              v42 = [NSNumber numberWithLong:v31];
              v110 = v42;
              v102 = @"timeCovered";
              v43 = [NSNumber numberWithUnsignedLong:v89];
              v111 = v43;
              v103 = @"sizeBytes";
              v44 = [NSNumber numberWithUnsignedLong:v88];
              v112 = v44;
              v104 = @"totalBytes";
              v45 = [NSNumber numberWithUnsignedLong:*(&v88 + 1)];
              v113 = v45;
              v46 = [NSDictionary dictionaryWithObjects:&v105 forKeys:&v96 count:9];

              v47 = sub_10000B9D4(__b, 0x400uLL, v46);
              objc_autoreleasePoolPop(contexta);
              if (v47)
              {
                sub_10000F16C();
              }

              v15 = v83;
              v8 = v84;
              v25 = v76;
            }

            if (++v24 == v81)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_94;
        }

        goto LABEL_57;
      }
    }
  }

LABEL_58:
  os_unfair_lock_lock_with_options();
  v48 = time(0);
  v49 = v48;
  if (v15)
  {
    context = v48;
    v85 = v8;
    if (v7 >= 0x32)
    {
      v50 = 50;
    }

    else
    {
      v50 = v7;
    }

    v78 = objc_autoreleasePoolPush();
    bzero(__src, 0x400uLL);
    snprintf(__src, 0x400uLL, "%s/%016llx.tracev3", *(v15 + 8), *(v15 + 32) - 1);
    v51 = [NSMutableArray arrayWithCapacity:v50];
    v82 = v7;
    if (v7)
    {
      v52 = 0;
      v53 = 8 * v50;
      while (v52 <= ~v85)
      {
        v54 = *(v85 + v52);
        v55 = *(v54 + 24);
        v96 = @"sizeBytes";
        v56 = [NSNumber numberWithUnsignedLong:v55];
        v105 = v56;
        v97 = @"process";
        v57 = [NSString stringWithUTF8String:v54 + 32];
        v106 = v57;
        v58 = [NSDictionary dictionaryWithObjects:&v105 forKeys:&v96 count:2];
        [v51 addObject:v58];

        v52 += 8;
        if (v53 == v52)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_94;
    }

LABEL_66:
    *__str = @"record";
    *&__str[8] = @"type";
    __b[0] = @"logd statistics";
    __b[1] = @"File Rotate";
    *&__str[16] = @"file";
    v59 = [NSString stringWithUTF8String:__src];
    __b[2] = v59;
    *&__str[24] = @"unixTime";
    v49 = context;
    v60 = [NSNumber numberWithLong:context];
    __b[3] = v60;
    *&__str[32] = @"totalBytes";
    v61 = [NSNumber numberWithUnsignedLong:v12];
    *&__str[40] = @"processList";
    __b[4] = v61;
    __b[5] = v51;
    v62 = [NSDictionary dictionaryWithObjects:__b forKeys:__str count:6];

    v63 = sub_10000B9D4(byte_10003626C, 0xC800uLL, v62);
    objc_autoreleasePoolPop(v78);
    v15 = v83;
    v8 = v85;
    v7 = v82;
    if (v63)
    {
      sub_10000CB40();
      dword_10003448C = sub_10000CB88(dword_10003448C, "logdata.statistics.0.jsonl", "logdata.statistics.1.jsonl", 5242880);
    }
  }

  memset(__src, 170, sizeof(__src));
  *&__str[16] = 0xAA00000000000000;
  *__str = __src;
  *&__str[8] = 0x40000000000;
  sub_10000CCDC(__str, "--- !logd statistics record\n");
  if (v15)
  {
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "%s/%016llx.tracev3", *(v15 + 8), *(v15 + 32) - 1);
    sub_10000CCDC(__str, "type  : File Rotate\n");
    sub_10000CCDC(__str, "file  : %s\n");
  }

  else
  {
    sub_10000CCDC(__str, "type  : Memory Rollover\n");
  }

  sub_10000CCDC(__str, "time  : ");
  sub_10000CE70(__str, v49);
  LOBYTE(__b[0]) = 10;
  if ((__str[20] & 2) == 0)
  {
    v64 = __str[22];
    v65 = *&__str[8];
    if (*&__str[12] == *&__str[8] + (__str[22] ^ 1))
    {
      goto LABEL_93;
    }

    v66 = *__str;
    v67 = ~*__str;
    if (~*__str < *&__str[8])
    {
      goto LABEL_94;
    }

    *(*__str + *&__str[8]) = 10;
    v68 = v65 + 1;
    *&__str[8] = v68;
    if ((v64 & 1) == 0)
    {
      if (v67 < v68)
      {
LABEL_94:
        __break(0x5513u);
        goto LABEL_95;
      }

      *(v66 + v68) = 0;
    }
  }

  while (1)
  {
    sub_10000CCDC(__str, "total : %zu\n", v12);
    sub_10000CCDC(__str, "procs :\n");
    sub_10000CFCC();
    if ((__str[20] & 1) == 0)
    {
      break;
    }

    qword_1000360E8 = "BUG IN LIBTRACE: Buffer needs free";
    __break(1u);
LABEL_93:
    sub_100012B80(__str, __b, 1uLL);
  }

  v69 = 20;
  if (v7 < 0x14)
  {
    v69 = v7;
  }

  if (v7)
  {
    v70 = 0;
    v71 = ~v8;
    v72 = 8 * v69;
    do
    {
      if (v70 > v71)
      {
        goto LABEL_94;
      }

      v73 = *(v8 + v70);
      memset(__src, 170, sizeof(__src));
      snprintf(__src, 0x400uLL, "    - [ %10zu, %5.1f, %s ]\n", *(v73 + 24), *(v73 + 24) / v12 * 100.0, (v73 + 32));
      sub_10000CFCC();
      v70 += 8;
    }

    while (v72 != v70);
    sub_10000CFCC();
    dword_100034488 = sub_10000CB88(dword_100034488, "logdata.statistics.0.txt", "logdata.statistics.1.txt", 0x100000);
    os_unfair_lock_unlock(&unk_100036258);
    v74 = 0;
    v75 = 0;
    while (!(v75 >> 60) && v74 <= v71)
    {
      free(*(v8 + v74));
      ++v75;
      v74 += 8;
      if (v7 == v75)
      {
        goto LABEL_90;
      }
    }

    goto LABEL_94;
  }

  sub_10000CFCC();
  dword_100034488 = sub_10000CB88(dword_100034488, "logdata.statistics.0.txt", "logdata.statistics.1.txt", 0x100000);
  os_unfair_lock_unlock(&unk_100036258);
LABEL_90:
  free(v8);
}

void sub_10000CA34(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = &qword_100042A80;
  do
  {
    v2 = *v2;
  }

  while (v2 && ((*(a1 + 16))(a1, v2) & 1) != 0);

  os_unfair_lock_unlock(&unk_100042A78);
}

uint64_t sub_10000CAAC(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock_with_options();
  v4 = *(a1 + 32);
  v5 = sub_1000029D0(a2, *(a1 + 40));
  sub_1000035BC(v4, &a2[45]._os_unfair_lock_opaque + 2, v5);
  *sub_1000029D0(a2, *(a1 + 40)) = 0;
  os_unfair_lock_unlock(a2 + 44);
  return 1;
}

uint64_t sub_10000CB20(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  v3 = *(*a1 + 24);
  v4 = v2 > v3;
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_10000CB40()
{
  result = dword_10003448C;
  if ((dword_10003448C & 0x80000000) == 0)
  {
    result = _os_trace_write();
    if (result == -1)
    {
      __error();
      return _os_assumes_log();
    }
  }

  return result;
}

uint64_t sub_10000CB88(uint64_t a1, const char *a2, const char *a3, off_t a4)
{
  v7 = a1;
  v8 = lseek(a1, 0, 2);
  if (v8 == -1)
  {
    __error();
    _os_assumes_log();
  }

  fsync(v7);
  if (v8 < a4)
  {
    return v7;
  }

  if (close(v7) != -1)
  {
LABEL_5:
    if (renameat(dword_100035D38, a2, dword_100035D38, a3) == -1)
    {
      __error();
      _os_assumes_log();
    }

    v7 = openat(dword_100035D38, a2, 778, 420);
    if (v7 == -1)
    {
      __error();
      _os_assumes_log();
    }

    return v7;
  }

  v10 = *__error();
  result = *__error();
  if (v10 != 9)
  {
    _os_assumes_log();
    goto LABEL_5;
  }

  qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_100036118 = result;
  __break(1u);
  return result;
}

BOOL sub_10000CCC4(id a1, char **a2, unint64_t *a3)
{
  *a2 = 0;
  *a3 = 0;
  return byte_100042B00 & 1;
}

uint64_t sub_10000CCDC(void *a1, const char *a2, ...)
{
  va_start(va, a2);
  v2 = *(a1 + 22);
  if (v2 == 1)
  {
    qword_1000360E8 = "BUG IN LIBTRACE: Can't use addf() in binary blobs";
    __break(1u);
    return 0;
  }

  if ((*(a1 + 10) & 2) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  *__error() = 0;
  v7 = *(a1 + 2);
  if (__CFADD__(*a1, v7))
  {
    goto LABEL_17;
  }

  v8 = v5 - v6 - (v2 ^ 1u);
  v9 = vsnprintf((*a1 + v7), (v8 + 1), a2, va);
  if ((v9 & 0x80000000) != 0)
  {
    v12 = *(a1 + 2);
    if (!__CFADD__(*a1, v12))
    {
      v10 = 0;
      *(*a1 + v12) = 0;
      return v10;
    }

    goto LABEL_17;
  }

  v10 = v9;
  if (v9 > v8)
  {
    if (*(a1 + 3) >= *(a1 + 4))
    {
      goto LABEL_9;
    }

    v8 = sub_100012AA8(a1, v9);
    *__error() = 0;
    v11 = *(a1 + 2);
    if (!__CFADD__(*a1, v11))
    {
      vsnprintf((*a1 + v11), (v8 + 1), a2, va);
LABEL_9:
      if (v10 > v8)
      {
        *(a1 + 10) |= 2u;
        v10 = v8;
      }

      goto LABEL_11;
    }

LABEL_17:
    __break(0x5513u);
  }

LABEL_11:
  *(a1 + 2) += v10;
  return v10;
}

tm *sub_10000CE70(tm *result, time_t a2)
{
  v5 = a2;
  if (BYTE2(result->tm_year) == 1)
  {
    qword_1000360E8 = "BUG IN LIBTRACE: Can't use addf() in binary blobs";
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  if ((result->tm_year & 2) == 0)
  {
    v4.tm_zone = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v4.tm_mon = v3;
    *&v4.tm_isdst = v3;
    *&v4.tm_sec = v3;
    result = localtime_r(&v5, &v4);
    if (result)
    {
      if (!__OFADD__(v4.tm_year, 1900) && !__OFADD__(v4.tm_mon, 1))
      {
        sub_10000CCDC(v2, "%04d-%02d-%02d %02d:%02d:%02d", v4.tm_year + 1900, v4.tm_mon + 1, v4.tm_mday, v4.tm_hour, v4.tm_min, v4.tm_sec);
        return sub_10000CCDC(v2, "%+05ld", v4.tm_gmtoff / 60 % 60 + 100 * (v4.tm_gmtoff / 3600));
      }

LABEL_9:
      __break(0x5500u);
    }
  }

  return result;
}

uint64_t sub_10000CFCC()
{
  result = dword_100034488;
  if ((dword_100034488 & 0x80000000) == 0)
  {
    result = _os_trace_write();
    if (result == -1)
    {
      __error();
      return _os_assumes_log();
    }
  }

  return result;
}

void sub_10000D114(_xpc_connection_s *a1, void *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v4;
  v63 = v4;
  v62 = v4;
  v61 = v4;
  v60 = v4;
  v59 = v4;
  v58 = v4;
  v57 = v4;
  v56 = v4;
  v55 = v4;
  v54 = v4;
  v53 = v4;
  v52 = v4;
  v51 = v4;
  v50 = v4;
  v49 = v4;
  v48 = v4;
  v47 = v4;
  v46 = v4;
  v45 = v4;
  v44 = v4;
  v43 = v4;
  memset(__b, 170, sizeof(__b));
  uint64 = xpc_dictionary_get_uint64(a2, "stream_id");
  v6 = xpc_dictionary_get_BOOL(a2, "quarantined");
  if (uint64 > 1u)
  {
    if (uint64 == 2)
    {
      v7 = 4;
      goto LABEL_18;
    }

    if (uint64 != 4)
    {
      if (uint64 != 7)
      {
        goto LABEL_16;
      }

LABEL_10:
      if (!v6)
      {
        v7 = 0;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
      v7 = 2;
      goto LABEL_18;
    }

LABEL_14:
    if (byte_100044C29 != 1)
    {
      goto LABEL_26;
    }

    v7 = 3;
LABEL_18:
    if (!sub_10000D63C(a1, a2, &v46))
    {
      goto LABEL_26;
    }

    pid = xpc_connection_get_pid(a1);
    if (proc_pidpath(pid, __b, 0x400u) < 1)
    {
      __b[0] = 0;
    }

    memset(__str, 170, 16);
    *&v43 = xpc_dictionary_get_data(a2, "commands", &__str[8]);
    *(&v43 + 1) = *&__str[8];
    if ((&v44 + 1) == 0 || &v43 < 0xFFFFFFFFFFFFFFEFLL)
    {
      memset(__str, 170, 16);
      *&v44 = xpc_dictionary_get_data(a2, "pubdata", &__str[8]);
      *(&v44 + 1) = *&__str[8];
      if (&v43 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        memset(__str, 170, 16);
        *&v45 = xpc_dictionary_get_data(a2, "privdata", &__str[8]);
        *(&v45 + 1) = *&__str[8];
        if (*(&v43 + 1) > 0x8000uLL || *(&v44 + 1) > 0x8000uLL || *&__str[8] > 0x8000uLL || (v11 = *(&v43 + 1) + *&__str[8] + *(&v44 + 1), v11 > 0x8000))
        {
          memset(__str, 170, sizeof(__str));
          snprintf(__str, 0x400uLL, "Received oversize message with invalid size: %zd, %zd, %zd");
          goto LABEL_25;
        }

        *&v51 = 24578;
        *(&v51 + 1) = v11 + 32;
        v12 = v48;
        v13 = HIDWORD(v47);
        v14 = xpc_dictionary_get_uint64(a2, "ttl");
        v15 = xpc_dictionary_get_uint64(a2, "ts");
        v16 = xpc_dictionary_get_uint64(a2, "message_id");
        *&v52 = v12;
        DWORD2(v52) = v13;
        BYTE12(v52) = v14;
        *(&v52 + 13) = 0;
        HIBYTE(v52) = 0;
        *&v53 = v15;
        DWORD2(v53) = v16;
        WORD6(v53) = WORD4(v43) + WORD4(v44);
        HIWORD(v53) = WORD4(v45);
        memset(__str, 170, 16);
        data = xpc_dictionary_get_data(a2, "subsystem", &__str[8]);
        v18 = 0;
        if (data && *&__str[8] >= 4uLL)
        {
          if (*&__str[8] - 4 >= data[2] + data[3])
          {
            v18 = sub_10000A830(data);
          }

          else
          {
            v18 = 0;
          }
        }

        if (1248 * v7 <= ~qword_1000344D8)
        {
          v19 = &qword_1000344D8[156 * v7];
          v20 = *v19;
          *__str = _NSConcreteStackBlock;
          *&__str[8] = 0x40000000;
          *&__str[16] = sub_100003810;
          *&__str[24] = &unk_100031F40;
          *&__str[32] = &v51;
          *&__str[40] = v19;
          *&__str[48] = 3;
          *&__str[56] = &v43;
          *&__str[64] = &v46;
          *&__str[72] = v18;
          dispatch_sync(v20, __str);
          v21 = v19[1];
          if (v21)
          {
            v22 = (v21 + 24);
          }

          else
          {
            v22 = &qword_1000344D8[156 * v7];
          }

          v23 = *v22;
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = sub_10000DBB0;
          block[3] = &unk_100031DE0;
          v35 = v61;
          v36 = v62;
          v37 = v63;
          v38 = v64;
          v31 = v57;
          v32 = v58;
          v33 = v59;
          v34 = v60;
          v27 = v53;
          v28 = v54;
          v29 = v55;
          v30 = v56;
          v25 = v51;
          v26 = v52;
          v39 = &qword_1000344D8[156 * v7];
          v40 = __b;
          dispatch_sync(v23, block);
          goto LABEL_26;
        }
      }
    }

    __break(0x5513u);
    return;
  }

  if (!uint64)
  {
    goto LABEL_10;
  }

  if (uint64 == 1)
  {
    if (!v6)
    {
      v7 = 1;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_16:
  memset(__str, 170, sizeof(__str));
  snprintf(__str, 0x400uLL, "Received oversize message with invalid stream id: %d (%d)");
LABEL_25:
  sub_1000155B8(__str);
LABEL_26:
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v10 = reply;
    xpc_connection_send_message(a1, reply);
    xpc_release(v10);
  }
}

BOOL sub_10000D63C(uint64_t a1, void *a2, uint64_t a3)
{
  xpc_connection_get_audit_token();
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  v11 = v5;
  v9 = v5;
  v6 = proc_pidinfo(*(a3 + 20), 17, 1uLL, &v9, 56);
  if (v6 == 56)
  {
    *(a3 + 72) = xpc_dictionary_get_BOOL(a2, "32bits");
    *(a3 + 32) = v10;
    *(a3 + 40) = v9;
    uuid = xpc_dictionary_get_uuid(a2, "dsc_uuid");
    if (uuid)
    {
      *(a3 + 56) = *uuid;
    }

    else
    {
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
    }
  }

  return v6 == 56;
}

void sub_10000D72C(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {

    sub_10000D960(a2);
  }

  else
  {
    qword_1000360E8 = "BUG IN LIBTRACE: Unexpected xpc object";
    qword_100036118 = type;
    __break(1u);
  }
}

BOOL sub_10000D7A0(_xpc_connection_s *a1, xpc_object_t xdict)
{
  array = xpc_dictionary_get_array(xdict, "entries");
  uint64 = xpc_dictionary_get_uint64(xdict, "ttl");
  v6 = xpc_dictionary_get_uint64(xdict, "aid");
  result = xpc_dictionary_get_BOOL(xdict, "quarantined");
  if (result)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  if (result)
  {
    if (byte_100044C29 != 1 || array == 0)
    {
      return result;
    }
  }

  else if (!array)
  {
    return result;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v10;
  v27 = v10;
  v24 = v10;
  v25 = v10;
  v23 = v10;
  memset(__b, 170, sizeof(__b));
  result = sub_10000D63C(a1, xdict, &v23);
  if (result)
  {
    pid = xpc_connection_get_pid(a1);
    if (proc_pidpath(pid, __b, 0x400u) <= 0)
    {
      __b[0] = 0;
    }

    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_10000DA1C;
    applier[3] = &unk_100031DC0;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    v14 = v24;
    v13 = v23;
    v20 = uint64;
    v18 = v6;
    v19 = __b;
    v21 = v8;
    return xpc_array_apply(array, applier);
  }

  return result;
}

void sub_10000D960(_xpc_connection_s *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_10000D014;
  v2[3] = &unk_100031DA0;
  v2[4] = a1;
  xpc_connection_set_event_handler(a1, v2);
  xpc_connection_set_target_queue(a1, qword_100044C18);
  xpc_connection_activate(a1);
}

uint64_t sub_10000DA1C(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v19[0] = 0xAAAAAAAAAAAAAAAALL;
    data = xpc_dictionary_get_data(object, "data", v19);
    if (data)
    {
      v7 = v19[0];
      if (v19[0] - 32769 >= 0xFFFFFFFFFFFF8000)
      {
        v8 = data;
        uuid = xpc_dictionary_get_uuid(object, "uuid");
        if (uuid)
        {
          v10 = uuid;
          *&v11 = 0xAAAAAAAAAAAAAAAALL;
          *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v36 = v11;
          v35 = v11;
          v34 = v11;
          v33 = v11;
          v32 = v11;
          v31 = v11;
          v30 = v11;
          v29 = v11;
          v28 = v11;
          v27 = v11;
          v18 = 24579;
          v19[0] = v7 + 48;
          v12 = *(a1 + 64);
          if (*(a1 + 128))
          {
            v13 = *(a1 + 128);
          }

          else
          {
            v13 = 14;
          }

          v14 = *(a1 + 60);
          uint64 = xpc_dictionary_get_uint64(object, "ts");
          v19[1] = v12;
          v20 = v14;
          v21 = v13;
          v22 = 0;
          v23 = 0;
          v17 = *(a1 + 112);
          v16 = *(a1 + 120);
          v24 = uint64;
          v25 = v17;
          v26 = *v10;
          sub_100004198(&v18, v8, v7, a1 + 32, v16, *(a1 + 129), 0);
        }
      }
    }
  }

  return 1;
}

uint64_t sub_10000DC14(uint64_t a1)
{
  memset(__b, 170, sizeof(__b));
  while (1)
  {
    v2 = *(a1 + 32);
    *(a1 + 32) = v2 + 1;
    snprintf(__b, 0x400uLL, "%s/%016llx.tracev3", *(a1 + 8), v2);
    v3 = sub_10000DCF4(dword_100035D38, __b, 2569);
    *(a1 + 76) = v3;
    if (v3 != -1)
    {
      break;
    }

    __error();
    _os_assumes_log();
    result = *__error();
    if (result != 4 && result != 17)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_10000DCF4(int a1, const char *a2, int a3)
{
  v3 = a3;
  v4 = openat(a1, a2, a3, 420);
  if (qword_100044CF0 == -1)
  {
    if ((v3 & 0x200) == 0)
    {
      return v4;
    }
  }

  else
  {
    dispatch_once(&qword_100044CF0, &stru_100032E40);
    if ((v3 & 0x200) == 0)
    {
      return v4;
    }
  }

  if ((byte_100044CF8 & 1) != 0 && v4 != -1)
  {
    v8[1] = 0;
    v8[2] = 0;
    v8[0] = 0x4000000000000005;
    if (sub_10000DDF4())
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v7 = v5;
    if (fsetattrlist(v4, v8, &v7, 4uLL, 0) == -1)
    {
      __error();
      _os_assumes_log();
    }
  }

  return v4;
}

BOOL sub_10000DDF4()
{
  if (byte_100044CF9)
  {
    return 1;
  }

  if (qword_100044CF0 != -1)
  {
    dispatch_once(&qword_100044CF0, &stru_100032E40);
  }

  result = byte_100044CF8 != 1 || MKBDeviceUnlockedSinceBoot() == 1;
  byte_100044CF9 = result;
  return result;
}

void sub_10000DE84(int a1, int a2, int a3, intptr_t notificationID)
{
  if (a3 != -536870288)
  {
    if (a3 != -536870272)
    {
      return;
    }

    v5 = qword_1000344D8;
    v6 = 5;
    do
    {
      sub_100010B14(v5);
      v5 += 156;
      --v6;
    }

    while (v6);
  }

  v7 = dword_100042B24;

  IOAllowPowerChange(v7, notificationID);
}

uint64_t sub_10000DF18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 170);
  if (v2 != -1)
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 33);
    v6 = v2 << 10;
    if (v5)
    {
      v6 = qword_100044CA8;
    }

    if (*v4 / *(v4 + 16) > v6)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        if (!strcmp(*(v4 + 24), "/kernel"))
        {
          if (_os_trace_is_development_build())
          {
            v7 = 0;
          }

          else
          {
            memset(&__b[21], 170, 0x3EBuLL);
            strcpy(__b, "Quarantined: /kernel");
            sub_1000155B8(__b);
            v7 = 1;
            byte_100042A94 = 1;
          }

          goto LABEL_7;
        }

        if (v5)
        {
          memset(__b, 170, 0x400uLL);
          snprintf(__b, 0x400uLL, "Super Quarantined %s, dropping clients logs.", (a2 + 182));
          sub_1000155B8(__b);
          v7 = 1;
          *(a2 + 168) = 1;
          goto LABEL_7;
        }

        memset(__b, 170, 0x400uLL);
        snprintf(__b, 0x400uLL, "Quarantined: %s", (a2 + 182));
        sub_1000155B8(__b);
        v10 = *(a2 + 96);
        if (*(a2 + 104))
        {
          *(*(v10 + 16) + 72) |= 2u;
        }

        else
        {
          sub_100010ED0(v10);
        }
      }

      v7 = 1;
LABEL_7:
      *(*(*(a1 + 32) + 8) + 24) |= v7;
    }
  }

  return 1;
}