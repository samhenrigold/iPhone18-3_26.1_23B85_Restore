BOOL notify_is_valid_token(int val)
{
  v1 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  v2 = os_set_32_ptr_find();
  v4 = v2 && (v3 = *(v1 + 448), v3 != v2) && (*(v2 - v3 + 27) & 8) == 0;
  os_unfair_lock_unlock((v1 + 104));
  return v4;
}

uint64_t sub_299E35B5C()
{
  v11 = *MEMORY[0x29EDCA608];
  if (*MEMORY[0x29EDCA698] == -1)
  {
    v0 = *(MEMORY[0x29EDCA698] + 8);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  if ((++qword_2A18982A8 & 3) != 0)
  {
    return v0;
  }

  v1 = 0;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(v0 + 8 * v2);
    if (v4 == 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_6;
    }

    v1 |= 1 << v2;
    if (v3)
    {
      if (v3 > 2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    *(&v8 + v3++) = v4;
LABEL_6:
    ++v2;
  }

  while (v2 != 13);
  if (v1)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("BUG IN LIBNOTIFY CLIENT: internal data structure corrupted [0x%04llx, 0x%llx, 0x%llx, 0x%llx]]", v1, v8, v9, v10);
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "BUG IN LIBNOTIFY CLIENT: internal data structure corrupted [0x%04llx, 0x%llx, 0x%llx, 0x%llx]]", v1, v8, v9, v10);
    }

    *(v0 + 96) = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v0 + 64) = v6;
    *(v0 + 80) = v6;
    *(v0 + 32) = v6;
    *(v0 + 48) = v6;
    *v0 = v6;
    *(v0 + 16) = v6;
  }

  return v0;
}

uint32_t notify_check(int token, int *check)
{
  v3 = *&token;
  v4 = sub_299E35B5C();
  if ((*(v4 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(v4 + 592);
    if (v5 && *v5 != *(v4 + 112))
    {
      v12 = sub_299E374A4(v4);
      os_unfair_lock_unlock((v4 + 104));
      if (v12)
      {
        v11 = v12;
        if (v12 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_check", v12, 3763);
          }

          else
          {
            sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", "notify_check", v12, 3763);
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 104));
    }
  }

  if (check)
  {
    v6 = sub_299E36108(v3);
    if (v6)
    {
      v7 = v6;
      if ((*(v6 + 24) & 0x80000000) != 0)
      {
        os_unfair_lock_lock_with_options();
        v14 = os_set_64_ptr_find();
        if (v14 && (v15 = *(v4 + 224), v15 != v14))
        {
          v20 = v14 - v15;
          v21 = *(*(v20 + 48) + 60);
          if (v21 == *(v20 + 72))
          {
            v22 = 0;
          }

          else
          {
            *(v20 + 72) = v21;
            v22 = 1;
          }

          v10 = 0;
          *check = v22;
        }

        else
        {
          v10 = 2;
        }

        os_unfair_lock_unlock((v4 + 344));
        goto LABEL_64;
      }

      if (qword_2A1898298 != -1)
      {
        dispatch_once(&qword_2A1898298, &unk_2A2020540);
      }

      if (byte_2A1898290 == 1)
      {
        qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
        __break(0xB001u);
        return v6;
      }

      v8 = *(v7 + 24);
      if ((v8 & 0xF) == 1)
      {
        if (*(v4 + 592))
        {
          *check = 0;
          os_unfair_lock_lock_with_options();
          v9 = *(v4 + 592);
          if (*(v7 + 32) != *(v9 + 4 * *(v7 + 28)))
          {
            *check = 1;
            *(v7 + 32) = *(v9 + 4 * *(v7 + 28));
          }

          os_unfair_lock_unlock((v4 + 108));
          v10 = 0;
        }

        else
        {
          v10 = 32;
        }

        goto LABEL_64;
      }

      if (!*(v4 + 384))
      {
        v10 = sub_299E38CF8(v4);
        if (v10)
        {
          goto LABEL_64;
        }

        v8 = *(v7 + 24);
      }

      v16 = v3;
      if ((v8 & 0x4000000) != 0)
      {
        v16 = *(*(v7 + 104) + 48);
      }

      v17 = *(v4 + 384);
      *&msg[20] = 0u;
      v29 = 0u;
      *&msg[4] = 0u;
      *&msg[24] = *MEMORY[0x29EDCA690];
      *&msg[32] = v16;
      special_reply_port = mig_get_special_reply_port();
      *&msg[8] = v17;
      *&msg[12] = special_reply_port;
      *msg = 5395;
      *&msg[16] = 0x3EA00000000;
      if (MEMORY[0x2A1C7C4D8])
      {
        voucher_mach_msg_set(msg);
        v19 = *&msg[12];
      }

      else
      {
        v19 = special_reply_port;
      }

      v23 = mach_msg(msg, 3162115, 0x24u, 0x34u, v19, 0, 0);
      v24 = v23;
      if ((v23 - 268435458) <= 0xE && ((1 << (v23 - 2)) & 0x4003) != 0)
      {
        v10 = 33;
        goto LABEL_64;
      }

      if (v23)
      {
        mig_dealloc_special_reply_port();
        goto LABEL_61;
      }

      if (*&msg[20] == 71)
      {
        v24 = -308;
      }

      else if (*&msg[20] == 1102)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v24 = *&msg[32];
              if (!*&msg[32])
              {
                v10 = DWORD1(v29);
                *check = v29;
LABEL_64:
                sub_299E3617C(v7);
                if (v10 < 0xB)
                {
                  v11 = v10;
                }

                else
                {
                  v11 = 1000000;
                  v26 = os_variant_has_internal_diagnostics();
                  if (v26)
                  {
                    sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_check", v10, 3872);
                  }

                  else
                  {
                    sub_299E3D364(v26, "Libnotify: %s failed with code %d on line %d", "notify_check", v10, 3872);
                  }
                }

                goto LABEL_69;
              }

              goto LABEL_60;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v25 = 1;
            }

            else
            {
              v25 = *&msg[32] == 0;
            }

            if (v25)
            {
              v24 = -300;
            }

            else
            {
              v24 = *&msg[32];
            }

            goto LABEL_60;
          }
        }

        v24 = -300;
      }

      else
      {
        v24 = -301;
      }

LABEL_60:
      mach_msg_destroy(msg);
LABEL_61:
      if (v24)
      {
        v10 = 33;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_64;
    }

    v11 = 2;
  }

  else
  {
    v11 = 10;
  }

LABEL_69:
  LODWORD(v6) = v11;
  return v6;
}

uint64_t sub_299E36108(uint64_t a1)
{
  v1 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  v2 = os_set_32_ptr_find();
  if (v2 && (v3 = *(v1 + 448), v3 != v2))
  {
    v4 = v2 - v3;
    atomic_fetch_add_explicit((v2 - v3 + 16), 1u, memory_order_relaxed);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((v1 + 104));
  return v4;
}

void sub_299E3617C(unsigned int *a1)
{
  v2 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  sub_299E361D0(v2, a1);

  os_unfair_lock_unlock(v2 + 26);
}

void sub_299E361D0(uint64_t a1, unsigned int *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner((a1 + 104));
  if (!a2)
  {
    return;
  }

  v4 = atomic_fetch_add_explicit(a2 + 4, 0xFFFFFFFF, memory_order_release) - 1;
  if (v4 < 0)
  {
    goto LABEL_60;
  }

  if (v4)
  {
    return;
  }

  __dmb(9u);
  os_unfair_lock_assert_owner((a1 + 104));
  if (os_set_32_ptr_delete() != a2 + 5)
  {
    __assert_rtn("_nc_table_delete_n", "table.c", 76, "os_set_delete(&t->set, key) == expected");
  }

  v5 = a2[5];
  v6 = a2[6];
  os_unfair_lock_assert_owner((a1 + 104));
  v7 = *(a2 + 13);
  if (sub_299E3A6A8(*(v7 + 32)))
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v36 = 0;
      v37 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      shared_cache_range = _dyld_get_shared_cache_range();
    }

    else
    {
      shared_cache_range = 0;
      v34 = 0;
      v35 = 0;
    }

    _os_log_simple(&dword_299E35000, &v36, &v34, shared_cache_range, 0, "com.apple.libnotify", "[%s] canceling notification: token=%d flags=0x%x", *(v7 + 32), a2[5], a2[6]);
  }

  v9 = a2[6];
  if ((v9 & 0x4000000) != 0)
  {
    os_unfair_lock_assert_owner((a1 + 104));
    os_unfair_lock_lock_with_options();
    v10 = *a2;
    v11 = *(a2 + 1);
    v12 = (*a2 + 8);
    if (!*a2)
    {
      v12 = (v7 + 16);
    }

    *v12 = v11;
    *v11 = v10;
    os_unfair_lock_unlock((v7 + 40));
    sub_299E361D0(a1, *(v7 + 24));
  }

  else if ((v9 & 0x8000000) != 0)
  {
    os_unfair_lock_lock_with_options();
    *(v7 + 48) = -1;
    *(v7 + 24) = 0;
    os_unfair_lock_unlock((v7 + 40));
    sub_299E3A700(*(a1 + 384), a2[5]);
  }

  v13 = a2[9];
  os_unfair_lock_assert_owner((a1 + 104));
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_39;
  }

  v14 = *(a1 + 512);
  if (!v14)
  {
    goto LABEL_39;
  }

  v15 = 0;
  do
  {
    if (*(*(a1 + 520) + 4 * v15) == v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = -1;
    }

    ++v15;
  }

  while (v15 < v14 && v16 == -1);
  if (v16 == -1)
  {
    goto LABEL_39;
  }

  v17 = *(a1 + 536);
  v18 = *(v17 + 4 * v16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v20 < 0 == v19)
  {
    *(v17 + 4 * v16) = v20;
    if (v20)
    {
      goto LABEL_39;
    }
  }

  close_NOCANCEL();
  close_NOCANCEL();
  LODWORD(v21) = *(a1 + 512);
  if (v21 == 1)
  {
    v22 = *(a1 + 520);
LABEL_38:
    free(v22);
    *(a1 + 520) = 0;
    free(*(a1 + 528));
    *(a1 + 528) = 0;
    free(*(a1 + 536));
    *(a1 + 536) = 0;
    *(a1 + 512) = 0;
    goto LABEL_39;
  }

  v23 = v16 + 1;
  v24 = *(a1 + 520);
  if (v23 < v21)
  {
    v25 = v15 - 1;
    v26 = *(a1 + 528);
    v27 = *(a1 + 536);
    do
    {
      v24[v25] = v24[v23];
      *(v26 + 4 * v25) = *(v26 + 4 * v23);
      *(v27 + 4 * v25++) = *(v27 + 4 * v23++);
      v21 = *(a1 + 512);
    }

    while (v23 < v21);
  }

  *(a1 + 512) = v21 - 1;
  *(a1 + 520) = reallocf(v24, 4 * (v21 - 1));
  *(a1 + 528) = reallocf(*(a1 + 528), 4 * *(a1 + 512));
  v28 = reallocf(*(a1 + 536), 4 * *(a1 + 512));
  *(a1 + 536) = v28;
  v22 = *(a1 + 520);
  if (!v22 || !v28 || !*(a1 + 528))
  {
    goto LABEL_38;
  }

LABEL_39:
  sub_299E3985C(a1, a2[11], a2[6]);
  if ((a2[6] & 0xF) == 7)
  {
    v29 = a2[10];
    if (v29)
    {
      sub_299E3985C(a1, v29, a2[6] | 0x20000000);
    }
  }

  free(*(a2 + 11));
  v30 = *(a2 + 7);
  if (v30)
  {
    dispatch_async_f(*(a2 + 6), v30, MEMORY[0x29EDCA5F0]);
  }

  *(a2 + 7) = 0;
  v31 = *(a2 + 6);
  if (v31)
  {
    dispatch_release(v31);
  }

  free(a2);
  os_unfair_lock_assert_owner((a1 + 104));
  if (!v7)
  {
    goto LABEL_49;
  }

  v32 = atomic_fetch_add_explicit((v7 + 44), 0xFFFFFFFF, memory_order_release) - 1;
  if (v32 < 0)
  {
LABEL_60:
    __assert_rtn("atomic_refcount_release", "notify_client.c", 294, "result >= 0");
  }

  if (!v32)
  {
    __dmb(9u);
    sub_299E3B0EC(a1, v7);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_59:
    sub_299E3C458(a1 + 128, v5);
    return;
  }

LABEL_49:
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

LABEL_50:
  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
    __break(0xB001u);
  }

  if ((v6 & 0xC000000) == 0)
  {
    v33 = sub_299E3A700(*(a1 + 384), v5);
    if (v33 != -308)
    {
      if (v33)
      {
        if (v33 != 268435459)
        {
          sub_299E3D364(v33, "<- %s [%d] _notify_server_cancel_2 failed: 0x%08x\n", "registration_node_delete_locked", 865, v33);
        }
      }
    }
  }
}

uint32_t notify_post(const char *name)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = sub_299E35B5C();
  if ((*(v2 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v3 = *(v2 + 592);
    if (v3 && *v3 != *(v2 + 112))
    {
      v14 = sub_299E374A4(v2);
      os_unfair_lock_unlock((v2 + 104));
      if (v14)
      {
        if (v14 < 0xB)
        {
          return v14;
        }

        v7 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
        }

        else
        {
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d");
        }

        return v7;
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 104));
    }
  }

  if (!name)
  {
    return 1;
  }

  if (!strncmp(name, "self.", 5uLL))
  {
    goto LABEL_10;
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
LABEL_10:
    os_unfair_lock_lock_with_options();
    v4 = os_set_str_ptr_find();
    if (v4)
    {
      v5 = v4 - *(v2 + 160);
      if (v5)
      {
        if (*(v5 + 8))
        {
          ++*(v5 + 60);
          v6 = *v5;
          if (*v5)
          {
            do
            {
              sub_299E3C694((v2 + 128), v6);
              v6 = *v6;
            }

            while (v6);
          }
        }
      }
    }

    os_unfair_lock_unlock((v2 + 344));
    return 0;
  }

  if (*(v2 + 384) || (v16 = sub_299E38CF8(v2)) == 0)
  {
    v9 = sub_299E35B5C();
    os_unfair_lock_lock_with_options();
    v10 = sub_299E378D0(v9, name, -1, 0);
    os_unfair_lock_unlock(v9 + 26);
    if (v10)
    {
      os_unfair_lock_lock_with_options();
      if ((*(v2 + 116) & 4) != 0)
      {
        v27 = *(v2 + 384);
        if (qword_2A1898288 != -1)
        {
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
        }

        if (sub_299E3F558(v27, name, byte_2A1898280))
        {
          sub_299E37728(v10);
          v13 = os_variant_has_internal_diagnostics();
          v7 = 1000000;
          if (v13)
          {
            goto LABEL_80;
          }

          goto LABEL_90;
        }

        goto LABEL_60;
      }

      v11 = *&v10->_os_unfair_lock_opaque;
      v12 = *(v2 + 384);
      if (*&v10->_os_unfair_lock_opaque != -2)
      {
        if (v11 == -1)
        {
          if (qword_2A1898288 != -1)
          {
            dispatch_once(&qword_2A1898288, &unk_2A2020580);
          }

          if (sub_299E383B0(v12, name, byte_2A1898280))
          {
            v7 = 1000000;
            sub_299E37728(v10);
            v13 = os_variant_has_internal_diagnostics();
            if (v13)
            {
              goto LABEL_80;
            }

LABEL_90:
            sub_299E3D364(v13, "Libnotify: %s failed with code %d (%d) on line %d");
            return v7;
          }

          os_unfair_lock_assert_owner(v10 + 10);
          v22 = -2;
          goto LABEL_59;
        }

        if (qword_2A1898288 != -1)
        {
          v28 = *&v10->_os_unfair_lock_opaque;
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
          v11 = v28;
        }

        *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
        *&msg[1].msgh_remote_port = v11;
        msg[1].msgh_voucher_port = byte_2A1898280;
        *&msg[0].msgh_bits = 19;
        msg[0].msgh_voucher_port = 0;
        msg[0].msgh_id = 1009;
        msg[0].msgh_remote_port = v12;
        msg[0].msgh_local_port = 0;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(msg);
        }

        if (mach_msg(msg, 2097153, 0x2Cu, 0, 0, 0, 0))
        {
          v7 = 1000000;
          sub_299E37728(v10);
          v13 = os_variant_has_internal_diagnostics();
          if (v13)
          {
            goto LABEL_80;
          }

          goto LABEL_90;
        }

LABEL_60:
        sub_299E37728(v10);
        return 0;
      }

      if (qword_2A1898288 != -1)
      {
        dispatch_once(&qword_2A1898288, &unk_2A2020580);
      }

      v20 = byte_2A1898280;
      memset(msg, 0, 512);
      *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
      if (MEMORY[0x2A1C7C4D0])
      {
        v21 = mig_strncpy_zerofill(&msg[1].msgh_voucher_port, name, 512);
      }

      else
      {
        v21 = mig_strncpy(&msg[1].msgh_voucher_port, name, 512);
      }

      msg[1].msgh_remote_port = 0;
      msg[1].msgh_local_port = v21;
      v23 = (v21 + 3) & 0xFFFFFFFC;
      *(&msg[1].msgh_voucher_port + v23) = v20;
      special_reply_port = mig_get_special_reply_port();
      msg[0].msgh_remote_port = v12;
      msg[0].msgh_local_port = special_reply_port;
      msg[0].msgh_bits = 5395;
      *&msg[0].msgh_voucher_port = 0x3F000000000;
      if (MEMORY[0x2A1C7C4D8])
      {
        voucher_mach_msg_set(msg);
        msgh_local_port = msg[0].msgh_local_port;
      }

      else
      {
        msgh_local_port = special_reply_port;
      }

      v26 = mach_msg(msg, 3162115, v23 + 44, 0x38u, msgh_local_port, 0, 0);
      if ((v26 - 268435458) > 0xE || ((1 << (v26 - 2)) & 0x4003) == 0)
      {
        if (v26)
        {
          mig_dealloc_special_reply_port();
        }

        else if (msg[0].msgh_id != 1108 || (msg[0].msgh_bits & 0x80000000) != 0 || msg[0].msgh_size != 48 || msg[0].msgh_remote_port || msg[1].msgh_remote_port)
        {
          mach_msg_destroy(msg);
        }

        else
        {
          if (!msg[1].msgh_id)
          {
            v22 = *&msg[1].msgh_local_port;
            os_unfair_lock_assert_owner(v10 + 10);
            goto LABEL_59;
          }

          if (msg[1].msgh_id == 60)
          {
            os_unfair_lock_assert_owner(v10 + 10);
            v22 = -1;
LABEL_59:
            *&v10->_os_unfair_lock_opaque = v22;
            goto LABEL_60;
          }
        }
      }

      v7 = 1000000;
      sub_299E37728(v10);
      v13 = os_variant_has_internal_diagnostics();
      if (!v13)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v18 = *(v2 + 384);
      if ((*(v2 + 116) & 4) != 0)
      {
        if (qword_2A1898288 != -1)
        {
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
        }

        v19 = sub_299E3F558(v18, name, byte_2A1898280);
      }

      else
      {
        if (qword_2A1898288 != -1)
        {
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
        }

        v19 = sub_299E383B0(v18, name, byte_2A1898280);
      }

      if (!v19)
      {
        return 0;
      }

      v7 = 1000000;
      v13 = os_variant_has_internal_diagnostics();
      if (!v13)
      {
        goto LABEL_90;
      }
    }

LABEL_80:
    sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
    return v7;
  }

  v7 = v16;
  if (v16 >= 0xB)
  {
    v17 = os_variant_has_internal_diagnostics();
    if (v17)
    {
      sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_post", v7, 2079);
    }

    else
    {
      sub_299E3D364(v17, "Libnotify: %s failed with code %d on line %d", "notify_post", v7, 2079);
    }

    return 1000000;
  }

  return v7;
}

uint32_t notify_set_state(int token, uint64_t state64)
{
  v4 = *&token;
  v31 = 0;
  v30 = 0;
  v5 = sub_299E35B5C();
  if ((*(v5 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v6 = *(v5 + 592);
    if (v6 && *v6 != *(v5 + 112))
    {
      v15 = sub_299E374A4(v5);
      os_unfair_lock_unlock((v5 + 104));
      if (v15)
      {
        if (v15 < 0xB)
        {
          return v15;
        }

        v13 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
        }

        else
        {
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d");
        }

        return v13;
      }
    }

    else
    {
      os_unfair_lock_unlock((v5 + 104));
    }
  }

  v7 = sub_299E36108(v4);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  if (!*(v7 + 104))
  {
    sub_299E3617C(v7);
    return 2;
  }

  if ((*(v7 + 24) & 0x80000000) == 0)
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    v9 = byte_2A1898290 == 1;
    if (byte_2A1898290 == 1)
    {
      qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
      __break(0xB001u);
    }

    else
    {
      if (!*(v5 + 384))
      {
        v24 = sub_299E38CF8(v5);
        if (v24)
        {
          v13 = v24;
          sub_299E3617C(v8);
          if (v13 >= 0xB)
          {
            v25 = os_variant_has_internal_diagnostics();
            if (v25)
            {
              sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_set_state", v13, 4302);
            }

            else
            {
              sub_299E3D364(v25, "Libnotify: %s failed with code %d on line %d", "notify_set_state", v13, 4302);
            }

            return 1000000;
          }

          return v13;
        }
      }

      v31 = 0;
      v2 = *(v8 + 104);
      if ((*(v8 + 27) & 4) != 0)
      {
        v4 = *(v2 + 48);
      }

      os_unfair_lock_lock_with_options();
      v30 = *v2;
      os_unfair_lock_unlock((v2 + 40));
      if (v30 < 0xFFFFFFFFFFFFFFFELL)
      {
        v31 = 0;
        v20 = *(v5 + 384);
        if ((*(v5 + 116) & 4) != 0)
        {
          if (qword_2A1898288 != -1)
          {
            dispatch_once(&qword_2A1898288, &unk_2A2020580);
          }

          v21 = sub_299E3F918(v20, v30, state64, byte_2A1898280);
        }

        else
        {
          if (qword_2A1898288 != -1)
          {
            dispatch_once(&qword_2A1898288, &unk_2A2020580);
          }

          *&msg[24] = *MEMORY[0x29EDCA690];
          *&msg[32] = v30;
          *&msg[40] = state64;
          *&msg[48] = byte_2A1898280;
          *msg = 19;
          *&msg[16] = 0;
          *&msg[20] = 1019;
          *&msg[8] = v20;
          *&msg[12] = 0;
          if (MEMORY[0x2A1C7C4D8])
          {
            voucher_mach_msg_set(msg);
          }

          v21 = mach_msg(msg, 1, 0x34u, 0, 0, 0, 0);
        }

        v22 = v21;
        v23 = 0;
LABEL_73:
        if (v22 | v23)
        {
          sub_299E3617C(v8);
          if (v22)
          {
            v13 = 1000000;
            v29 = os_variant_has_internal_diagnostics();
            if (v29)
            {
              sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
            }

            else
            {
              sub_299E3D364(v29, "Libnotify: %s failed with code %d (%d) on line %d");
            }

            return v13;
          }
        }

        else
        {
          v28 = mach_absolute_time();
          *(v8 + 72) = state64;
          *(v8 + 80) = v28;
          sub_299E3617C(v8);
        }

        return 0;
      }

      v10 = *(v5 + 116);
      v5 = *(v5 + 384);
      v9 = qword_2A1898288 == -1;
      if ((v10 & 4) == 0)
      {
        if (qword_2A1898288 != -1)
        {
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
        }

        memset(&msg[20], 0, 32);
        *&msg[4] = 0u;
        *&msg[24] = *MEMORY[0x29EDCA690];
        *&msg[32] = v4;
        *&msg[36] = state64;
        v33 = 0;
        *&msg[44] = byte_2A1898280;
        special_reply_port = mig_get_special_reply_port();
        *&msg[8] = v5;
        *&msg[12] = special_reply_port;
        *msg = 5395;
        *&msg[16] = 0x3FC00000000;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(msg);
          v12 = *&msg[12];
        }

        else
        {
          v12 = special_reply_port;
        }

        v26 = mach_msg(msg, 3162115, 0x30u, 0x38u, v12, 0, 0);
        v22 = v26;
        if ((v26 - 268435458) <= 0xE && ((1 << (v26 - 2)) & 0x4003) != 0)
        {
          goto LABEL_70;
        }

        if (v26)
        {
          mig_dealloc_special_reply_port();
LABEL_70:
          v23 = 0;
          goto LABEL_71;
        }

        if (*&msg[20] == 71)
        {
          v22 = -308;
        }

        else if (*&msg[20] == 1120)
        {
          if ((*msg & 0x80000000) == 0)
          {
            if (*&msg[4] == 48)
            {
              if (!*&msg[8])
              {
                v22 = *&msg[32];
                if (!*&msg[32])
                {
                  v30 = *&msg[36];
                  v23 = *&msg[44];
LABEL_71:
                  if (!(v22 | v23))
                  {
                    sub_299E3A8E8(v2, v30);
                    v23 = 0;
                    v22 = 0;
                  }

                  goto LABEL_73;
                }

                goto LABEL_69;
              }
            }

            else if (*&msg[4] == 36)
            {
              if (*&msg[8])
              {
                v27 = 1;
              }

              else
              {
                v27 = *&msg[32] == 0;
              }

              if (v27)
              {
                v22 = -300;
              }

              else
              {
                v22 = *&msg[32];
              }

              goto LABEL_69;
            }
          }

          v22 = -300;
        }

        else
        {
          v22 = -301;
        }

LABEL_69:
        mach_msg_destroy(msg);
        goto LABEL_70;
      }
    }

    if (!v9)
    {
      dispatch_once(&qword_2A1898288, &unk_2A2020580);
    }

    v22 = sub_299E3F998(v5, v4, state64, &v30, &v31, byte_2A1898280);
    v23 = v31;
    goto LABEL_71;
  }

  os_unfair_lock_lock_with_options();
  v17 = os_set_64_ptr_find();
  if (v17 && (v18 = *(v5 + 192), v19 = (v17 - v18), v17 != v18))
  {
    if (v19[1])
    {
      v19[3] = state64;
      v13 = 0;
      v19[4] = mach_absolute_time();
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    v13 = 1;
  }

  os_unfair_lock_unlock((v5 + 344));
  sub_299E3617C(v8);
  return v13;
}

uint64_t sub_299E374A4(uint64_t a1)
{
  if ((*(a1 + 116) & 2) == 0)
  {
    return 0;
  }

  sub_299E385CC(a1, 1);
  if (v1 == 57)
  {
    return 0;
  }

  v2 = v1;
  if (!v1)
  {
    os_set_32_ptr_foreach();
  }

  return v2;
}

void sub_299E37554(uint64_t a1, mach_msg_id_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  msg.msgh_remote_port = v3;
  *&msg.msgh_local_port = 0;
  *&msg.msgh_bits = 0x1800000013;
  msg.msgh_id = a2;
  if (mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0) == 268435460)
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = sub_299E3DFD4;
    v9[3] = &unk_29F28F770;
    v9[4] = v4;
    if (*(v4 + 496) != -1)
    {
      dispatch_once((v4 + 496), v9);
    }

    v5 = *(v4 + 504);
    if (v5)
    {
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = sub_299E3E00C;
      block[3] = &unk_29F28F790;
      v7 = v3;
      v8 = a2;
      dispatch_async(v5, block);
    }
  }
}

void sub_299E37690(uint64_t a1)
{
  if (notify_is_valid_token(*(a1 + 56)))
  {
    (*(*(a1 + 32) + 16))();
  }

  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {

    free(v2);
  }
}

void sub_299E37728(os_unfair_lock_s *a1)
{
  os_unfair_lock_unlock(a1 + 10);
  v2 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  v3 = atomic_fetch_add_explicit(&a1[11], 0xFFFFFFFF, memory_order_release) - 1;
  if (v3 < 0)
  {
    __assert_rtn("atomic_refcount_release", "notify_client.c", 294, "result >= 0");
  }

  if (!v3)
  {
    __dmb(9u);
    sub_299E3B0EC(v2, a1);
  }

  os_unfair_lock_unlock(&v2[26]);
}

void sub_299E377C0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(a1 + 24);
      if ((v3 & 0x800000) != 0)
      {
        *(a1 + 24) = v3 | 0x400000;
      }

      else
      {
        v4 = *(a1 + 20);
        v5 = _Block_copy(v2);
        v6 = *(a1 + 48);
        dispatch_retain(v6);
        v8[0] = MEMORY[0x29EDCA5F8];
        v8[1] = 0x40000000;
        v8[2] = sub_299E37690;
        v8[3] = &unk_29F28F7D8;
        v9 = v4;
        v8[4] = v5;
        v8[5] = 0;
        v8[6] = v6;
        v7 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v8);
        dispatch_async(v6, v7);
        _Block_release(v7);
      }
    }
  }
}

void *sub_299E378D0(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  os_unfair_lock_assert_owner((a1 + 104));
  v8 = os_set_str_ptr_find();
  if (v8 && (v9 = *(a1 + 480), v9 != v8))
  {
    v10 = (v8 - v9);
    atomic_fetch_add_explicit((v8 - v9 + 44), 1u, memory_order_relaxed);
  }

  else
  {
    if (!a4)
    {
      return 0;
    }

    v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B0040952A5435uLL);
    if (v10)
    {
      v11 = strlen(a2);
      if (_dyld_is_memory_immutable())
      {
        v12 = 0;
LABEL_10:
        v10[4] = a2;
        *(v10 + 53) = v12;
        *(v10 + 11) = 1;
        v10[1] = 0;
        *v10 = a3;
        v10[2] = v10 + 1;
        *(v10 + 12) = -1;
        *(v10 + 10) = 0;
        *(v10 + 52) = 0;
        os_set_str_ptr_insert();
        return v10;
      }

      v13 = malloc_type_malloc(v11 + 1, 0x100004077774924uLL);
      if (v13)
      {
        v14 = v13;
        memcpy(v13, a2, v11 + 1);
        v12 = 1;
        a2 = v14;
        goto LABEL_10;
      }

      free(v10);
      return 0;
    }
  }

  return v10;
}

void sub_299E37A14(uint64_t a1)
{
  v1 = *(a1 + 392);
  if (v1)
  {
    v2 = 4;
    do
    {
      v3 = v2;
      v8 = 0u;
      v9 = 0u;
      if (mach_msg(&v8, 258, 0, 0x20u, v1, 0, 0))
      {
        break;
      }

      v4 = sub_299E36108(DWORD1(v9));
      if (v4)
      {
        v5 = v4;
        v6 = *(v4 + 104);
        if (v6)
        {
          os_unfair_lock_lock_with_options();
          if ((*(v5 + 27) & 8) != 0)
          {
            for (i = *(v6 + 8); i; i = *i)
            {
              if (i != v5)
              {
                sub_299E377C0(i);
              }
            }
          }

          else
          {
            sub_299E377C0(v5);
          }

          os_unfair_lock_unlock((v6 + 40));
        }

        sub_299E3617C(v5);
      }

      v2 = v3 - 1;
    }

    while (v3);
  }
}

uint32_t notify_get_state(int token, uint64_t *state64)
{
  v3 = *&token;
  v34 = *MEMORY[0x29EDCA608];
  v4 = sub_299E35B5C();
  if ((*(v4 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(v4 + 592);
    if (v5 && *v5 != *(v4 + 112))
    {
      v16 = sub_299E374A4(v4);
      os_unfair_lock_unlock((v4 + 104));
      if (v16)
      {
        if (v16 < 0xB)
        {
          return v16;
        }

        v14 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
        }

        else
        {
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d");
        }

        return v14;
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 104));
    }
  }

  v6 = sub_299E36108(v3);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  if (!*(v6 + 104))
  {
    sub_299E3617C(v6);
    return 2;
  }

  if ((*(v6 + 24) & 0x80000000) == 0)
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    if (byte_2A1898290 == 1)
    {
      qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
      __break(0xB001u);
    }

    if (!*(v4 + 384))
    {
      v23 = sub_299E38CF8(v4);
      if (v23)
      {
        v14 = v23;
        sub_299E3617C(v7);
        if (v14 >= 0xB)
        {
          v24 = os_variant_has_internal_diagnostics();
          if (v24)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_get_state", v14, 4179);
          }

          else
          {
            sub_299E3D364(v24, "Libnotify: %s failed with code %d on line %d", "notify_get_state", v14, 4179);
          }

          return 1000000;
        }

        return v14;
      }
    }

    v8 = *(v7 + 104);
    if ((*(v7 + 27) & 4) != 0)
    {
      LODWORD(v3) = *(v8 + 48);
    }

    os_unfair_lock_lock_with_options();
    v9 = *v8;
    os_unfair_lock_unlock((v8 + 40));
    v10 = *(v4 + 384);
    if (v9 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v11 = MEMORY[0x2A1C7C4D8];
      memset(&msg_4[16], 0, 44);
      *msg_4 = 0u;
      *&msg_4[20] = *MEMORY[0x29EDCA690];
      *&msg_4[28] = v3;
      special_reply_port = mig_get_special_reply_port();
      *&msg_4[4] = v10;
      *&msg_4[8] = special_reply_port;
      msg = 5395;
      *&msg_4[12] = 0x3FA00000000;
      if (v11)
      {
        voucher_mach_msg_set(&msg);
        v13 = *&msg_4[8];
      }

      else
      {
        v13 = special_reply_port;
      }

      v25 = mach_msg(&msg, 3162115, 0x24u, 0x40u, v13, 0, 0);
      v26 = v25;
      if ((v25 - 268435458) <= 0xE && ((1 << (v25 - 2)) & 0x4003) != 0)
      {
        sub_299E3617C(v7);
LABEL_90:
        v14 = 1000000;
        v31 = os_variant_has_internal_diagnostics();
        if (v31)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
        }

        else
        {
          sub_299E3D364(v31, "Libnotify: %s failed with code %d (%d) on line %d");
        }

        return v14;
      }

      if (v25)
      {
        mig_dealloc_special_reply_port();
LABEL_82:
        v30 = 0;
        goto LABEL_83;
      }

      if (*&msg_4[16] == 71)
      {
        v26 = -308;
      }

      else if (*&msg_4[16] == 1118)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 56)
          {
            if (!*&msg_4[4])
            {
              v26 = *&msg_4[28];
              if (!*&msg_4[28])
              {
                *state64 = *&msg_4[32];
                v9 = *&msg_4[40];
                v30 = *&msg_4[48];
LABEL_83:
                if (!(v26 | v30))
                {
                  sub_299E3A8E8(v8, v9);
                  sub_299E3617C(v7);
                  return 0;
                }

                goto LABEL_89;
              }

              goto LABEL_81;
            }
          }

          else if (*msg_4 == 36)
          {
            if (*&msg_4[4])
            {
              v27 = 1;
            }

            else
            {
              v27 = *&msg_4[28] == 0;
            }

            if (v27)
            {
              v26 = -300;
            }

            else
            {
              v26 = *&msg_4[28];
            }

            goto LABEL_81;
          }
        }

        v26 = -300;
      }

      else
      {
        v26 = -301;
      }

LABEL_81:
      mach_msg_destroy(&msg);
      goto LABEL_82;
    }

    v20 = MEMORY[0x2A1C7C4D8];
    memset(&msg_4[16], 0, 36);
    *msg_4 = 0u;
    *&msg_4[20] = *MEMORY[0x29EDCA690];
    *&msg_4[28] = v9;
    v21 = mig_get_special_reply_port();
    *&msg_4[4] = v10;
    *&msg_4[8] = v21;
    msg = 5395;
    *&msg_4[12] = 0x3F900000000;
    if (v20)
    {
      voucher_mach_msg_set(&msg);
      v22 = *&msg_4[8];
    }

    else
    {
      v22 = v21;
    }

    v28 = mach_msg(&msg, 3162115, 0x28u, 0x38u, v22, 0, 0);
    v26 = v28;
    if ((v28 - 268435458) <= 0xE && ((1 << (v28 - 2)) & 0x4003) != 0)
    {
      goto LABEL_88;
    }

    if (v28)
    {
      mig_dealloc_special_reply_port();
LABEL_88:
      v30 = 0;
LABEL_89:
      sub_299E3617C(v7);
      if (!v26 && v30 < 0xB)
      {
        return v30;
      }

      goto LABEL_90;
    }

    if (*&msg_4[16] == 71)
    {
      v26 = -308;
    }

    else if (*&msg_4[16] == 1117)
    {
      if ((msg & 0x80000000) == 0)
      {
        if (*msg_4 == 48)
        {
          if (!*&msg_4[4])
          {
            v26 = *&msg_4[28];
            if (!*&msg_4[28])
            {
              *state64 = *&msg_4[32];
              v30 = *&msg_4[40];
              goto LABEL_89;
            }

            goto LABEL_87;
          }
        }

        else if (*msg_4 == 36)
        {
          if (*&msg_4[4])
          {
            v29 = 1;
          }

          else
          {
            v29 = *&msg_4[28] == 0;
          }

          if (v29)
          {
            v26 = -300;
          }

          else
          {
            v26 = *&msg_4[28];
          }

          goto LABEL_87;
        }
      }

      v26 = -300;
    }

    else
    {
      v26 = -301;
    }

LABEL_87:
    mach_msg_destroy(&msg);
    goto LABEL_88;
  }

  if (state64)
  {
    *state64 = 0;
    os_unfair_lock_lock_with_options();
    v18 = os_set_64_ptr_find();
    if (v18 && (v19 = *(v4 + 192), v19 != v18))
    {
      v14 = 0;
      *state64 = *(v18 - v19 + 24);
    }

    else
    {
      v14 = 1;
    }

    os_unfair_lock_unlock((v4 + 344));
  }

  else
  {
    v14 = 10;
  }

  sub_299E3617C(v7);
  return v14;
}

void notify_set_options(unsigned int a1)
{
  v2 = sub_299E35B5C();
  v3 = v2;
  if ((v2[29]._os_unfair_lock_opaque & 0x8000000) != 0)
  {
    if ((a1 & 0x4000000) == 0)
    {
      v2[30]._os_unfair_lock_opaque |= a1;
      return;
    }

    os_unfair_lock_lock_with_options();
    v3[29]._os_unfair_lock_opaque = v3[30]._os_unfair_lock_opaque;
    v3[96]._os_unfair_lock_opaque = v3[97]._os_unfair_lock_opaque;
  }

  else
  {
    if ((a1 & 0x8000000) == 0)
    {
      atomic_fetch_or_explicit(&v2[29], a1, memory_order_relaxed);

      sub_299E38CF8(v2);
      return;
    }

    os_unfair_lock_lock_with_options();
    __swp(v3 + 116, &v3[29]._os_unfair_lock_opaque);
    v3[30]._os_unfair_lock_opaque = v3 + 116;
    v3[97]._os_unfair_lock_opaque = v3[96]._os_unfair_lock_opaque;
    v3[96]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(v3 + 26);
}

uint64_t sub_299E381E4(char *a1, unsigned int *a2, NSObject *a3, const void *a4, int a5)
{
  v10 = sub_299E35B5C();
  if ((*(v10 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v11 = *(v10 + 592);
    if (v11 && *v11 != *(v10 + 112))
    {
      v16 = sub_299E374A4(v10);
      os_unfair_lock_unlock((v10 + 104));
      if (v16)
      {
        if (v16 < 0xB)
        {
          return v16;
        }

        v12 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "_notify_register_dispatch_with_extra_mp", v16, 2350);
        }

        else
        {
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", "_notify_register_dispatch_with_extra_mp", v16, 2350);
        }

        return v12;
      }
    }

    else
    {
      os_unfair_lock_unlock((v10 + 104));
    }
  }

  v12 = 10;
  if (a3 && a4)
  {
    notify_set_options(3u);
    v13 = sub_299E399D8(a1, a2, v10, a5);
    if (v13)
    {
      return v13;
    }

    else
    {
      v14 = sub_299E36108(*a2);
      if (v14)
      {
        v15 = v14;
        *(v14 + 48) = a3;
        dispatch_retain(a3);
        *(v15 + 56) = _Block_copy(a4);
        sub_299E3617C(v15);
        return 0;
      }

      else
      {
        v12 = 1000000;
        v18 = os_variant_has_internal_diagnostics();
        if (v18)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "_notify_register_dispatch_with_extra_mp", 18, 2393);
        }

        else
        {
          sub_299E3D364(v18, "Libnotify: %s failed with code %d on line %d", "_notify_register_dispatch_with_extra_mp", 18, 2393);
        }
      }
    }
  }

  return v12;
}

uint64_t sub_299E383B0(unsigned int a1, const char *a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(v10, 0, 480);
  v8 = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v5 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v5 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  *(v10 + v6 + 8) = a3;
  LODWORD(v8) = 19;
  *(&v8 + 1) = a1;
  *&v9 = 0x3F200000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v8);
  }

  return mach_msg(&v8, 2097153, v6 + 44, 0, 0, 0, 0);
}

uint64_t sub_299E384EC(uint64_t a1)
{
  result = bootstrap_look_up2();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint32_t notify_register_dispatch(const char *name, int *out_token, dispatch_queue_t queue, notify_handler_t handler)
{
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", name);
  }

  return sub_299E381E4(name, out_token, queue, handler, 0);
}

void sub_299E385CC(uint64_t a1, int a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  v33 = 0;
  if ((*(a1 + 116) & 0x8000000) != 0)
  {
    goto LABEL_42;
  }

  os_unfair_lock_assert_owner((a1 + 104));
  if (os_variant_has_internal_diagnostics() && (v4 = getenv("DarwinNotificationLogging")) != 0)
  {
    v5 = v4;
    if (*v4 == 49 && !v4[1])
    {
      *name = 0;
      *&name[8] = 0;
      v40 = 0;
      v41 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        *name = 0;
        *&name[8] = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        __lasts = 0;
        shared_cache_range = _dyld_get_shared_cache_range();
      }

      else
      {
        shared_cache_range = 0;
        v40 = 0;
        v41 = 0;
      }

      _os_log_simple(&dword_299E35000, name, &v40, shared_cache_range, 0, "com.apple.libnotify", "enabled logging for all notifications");
      v6 = &unk_2A14EFDE0;
    }

    else
    {
      v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10800400F6048E3uLL);
      *v6 = 0;
      os_set_str_ptr_init();
      v7 = strdup(v5);
      __lasts = 0;
      v31 = v7;
      v8 = strtok_r(v7, ",", &__lasts);
      if (v8)
      {
        v9 = v8;
        do
        {
          v10 = malloc_type_calloc(1uLL, 8uLL, 0x50040EE9192B6uLL);
          *v10 = strdup(v9);
          os_set_str_ptr_insert();
          *name = 0;
          *&name[8] = 0;
          v40 = 0;
          v41 = 0;
          if ((_dyld_get_image_uuid() & 1) == 0)
          {
            *name = 0;
            *&name[8] = 0;
          }

          if (_dyld_get_shared_cache_uuid())
          {
            v38 = 0;
            v11 = _dyld_get_shared_cache_range();
          }

          else
          {
            v11 = 0;
            v40 = 0;
            v41 = 0;
          }

          _os_log_simple(&dword_299E35000, name, &v40, v11, 0, "com.apple.libnotify", "enabled logging for %s", v9);
          v9 = strtok_r(0, ",", &__lasts);
        }

        while (v9);
      }

      free(v31);
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 584) = v6;
  if (_dispatch_is_multithreaded())
  {
    atomic_fetch_or_explicit((a1 + 116), 3u, memory_order_relaxed);
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1 && (*(a1 + 116) & 1) != 0)
  {
    if ((*(a1 + 392) + 1) <= 1)
    {
      *name = 0;
      v13 = mach_port_allocate(*MEMORY[0x29EDCA6B0], 1u, name);
      *(v35 + 6) = v13;
      if (!v13)
      {
        sub_299E3A47C(a1, *name);
      }
    }

    goto LABEL_42;
  }

  *(v35 + 6) = 0;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_299E384EC;
  block[3] = &unk_29F28F600;
  block[4] = &v34;
  block[5] = a1;
  if (*(a1 + 376) != -1)
  {
    dispatch_once((a1 + 376), block);
  }

  if (*(v35 + 6) || (v12 = *(a1 + 384), (v12 + 1) < 2))
  {
LABEL_42:
    _Block_object_dispose(&v34, 8);
    return;
  }

  v14 = *(a1 + 112);
  if (a2 != 1 && v14)
  {
LABEL_33:
    if (!*(a1 + 408) && (*(a1 + 116) & 2) != 0)
    {
      v15 = *(a1 + 112);
      if (v15)
      {
        global_queue = dispatch_get_global_queue(2, 0);
        v17 = dispatch_source_create(MEMORY[0x29EDCA5B0], v15, 0x80000000uLL, global_queue);
        *(a1 + 408) = v17;
        dispatch_source_set_event_handler_f(v17, sub_299E3D428);
        dispatch_resume(*(a1 + 408));
      }
    }

    if ((*(a1 + 116) & 1) != 0 && (*(a1 + 392) + 1) <= 1)
    {
      *name = 0;
      v18 = sub_299E3A2F0(*(a1 + 384), &v33, name);
      *(v35 + 6) = v18;
      if (!v18 && !v33)
      {
        sub_299E3A47C(a1, *name);
      }
    }

    goto LABEL_42;
  }

  LODWORD(v40) = 0;
  LODWORD(__lasts) = 0;
  *(a1 + 112) = 0;
  v44 = 0;
  v43 = 0u;
  memset(&name[4], 0, 32);
  special_reply_port = mig_get_special_reply_port();
  *&name[8] = v12;
  *&name[12] = special_reply_port;
  *name = 5395;
  *&name[16] = 0x3FF00000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(name);
    v21 = *&name[12];
  }

  else
  {
    v21 = special_reply_port;
  }

  v22 = mach_msg(name, 3227651, 0x18u, 0x38u, v21, 0, 0);
  v23 = v22;
  if ((v22 - 268435458) <= 0xE && ((1 << (v22 - 2)) & 0x4003) != 0)
  {
    *(v35 + 6) = v22;
LABEL_76:
    v25 = sub_299E3F3DC(*(a1 + 384), &v40, &__lasts, &v33);
    v26 = v35;
    *(v35 + 6) = v25;
    if (!v25)
    {
      atomic_fetch_or_explicit((a1 + 116), 7u, memory_order_relaxed);
      v25 = *(v26 + 6);
    }

    if (v25 || v33)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

  if (v22)
  {
    mig_dealloc_special_reply_port();
    goto LABEL_75;
  }

  if (*&name[20] == 71)
  {
    v23 = -308;
LABEL_74:
    mach_msg_destroy(name);
LABEL_75:
    *(v35 + 6) = v23;
    if (!v23)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  if (*&name[20] != 1123)
  {
    v23 = -301;
    goto LABEL_74;
  }

  if ((*name & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  if (*&name[4] != 48)
  {
    if (*&name[4] == 36)
    {
      if (*&name[8])
      {
        v24 = 1;
      }

      else
      {
        v24 = *&name[32] == 0;
      }

      if (v24)
      {
        v23 = -300;
      }

      else
      {
        v23 = *&name[32];
      }

      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (*&name[8])
  {
LABEL_73:
    v23 = -300;
    goto LABEL_74;
  }

  v23 = *&name[32];
  if (*&name[32])
  {
    goto LABEL_74;
  }

  LODWORD(__lasts) = DWORD1(v43);
  LODWORD(v40) = v43;
  v30 = DWORD2(v43);
  v33 = DWORD2(v43);
  *(v35 + 6) = 0;
  if (v30)
  {
    goto LABEL_42;
  }

LABEL_80:
  if (v40 > 2)
  {
    v27 = __lasts;
    *(a1 + 112) = __lasts;
    if (a2 == 1 && v27 == v14)
    {
      goto LABEL_42;
    }

    v28 = *(a1 + 408);
    if (v28)
    {
      dispatch_source_cancel(v28);
      dispatch_release(*(a1 + 408));
      *(a1 + 408) = 0;
    }

    if ((*(a1 + 392) + 1) >= 2)
    {
      v29 = *(a1 + 400);
      if (v29)
      {
        dispatch_source_cancel(v29);
        dispatch_release(*(a1 + 400));
        *(a1 + 400) = 0;
      }

      *(a1 + 392) = 0;
    }

    goto LABEL_33;
  }

  qword_2A14EFE08 = "BUG IN LIBNOTIFY: Unsupported protocol version";
  qword_2A14EFE38 = v40;
  __break(0xB001u);
}

uint64_t sub_299E38CF8(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock_with_options();
  sub_299E385CC(a1, 0);
  v3 = v2;
  os_unfair_lock_unlock(a1 + 26);
  return v3;
}

uint64_t sub_299E38D40(uint64_t a1)
{
  *(a1 + 96) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 104) = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 64) = v2;
  *(a1 + 80) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  *a1 = v2;
  *(a1 + 16) = v2;
  *(a1 + 488) = 1;
  *(a1 + 396) = -1;
  os_set_str_ptr_init();
  *(a1 + 480) = 32;
  os_set_32_ptr_init();
  *(a1 + 448) = 20;

  return sub_299E38DCC(a1 + 128);
}

uint64_t sub_299E38DCC(uint64_t a1)
{
  *(a1 + 208) = 1;
  *(a1 + 216) = 0xFFFFFFFF00000000;
  os_set_str_ptr_init();
  *(a1 + 32) = 8;
  os_set_64_ptr_init();
  *(a1 + 64) = 16;
  os_set_64_ptr_init();
  *(a1 + 96) = 64;
  os_set_32_ptr_init();
  *(a1 + 128) = 8;
  os_set_32_ptr_init();
  *(a1 + 160) = 16;

  return MEMORY[0x2A1C759A0](a1 + 168, 0, 1);
}

uint32_t notify_register_check(const char *name, int *out_token)
{
  v58 = *MEMORY[0x29EDCA608];
  v4 = sub_299E35B5C();
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", name);
  }

  v28 = 0;
  if ((*(v4 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(v4 + 592);
    if (v5 && *v5 != *(v4 + 112))
    {
      v10 = sub_299E374A4(v4);
      os_unfair_lock_unlock((v4 + 104));
      if (v10)
      {
        if (v10 < 0xB)
        {
          return v10;
        }

        v8 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (!has_internal_diagnostics)
        {
          goto LABEL_75;
        }

LABEL_29:
        sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
        return v8;
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 104));
    }
  }

  if ((*(v4 + 116) & 4) == 0)
  {
    if (!name)
    {
      return 1;
    }

    if (out_token)
    {
      *out_token = -1;
      if (!strncmp(name, "self.", 5uLL))
      {
        goto LABEL_13;
      }

      if (qword_2A1898298 != -1)
      {
        dispatch_once(&qword_2A1898298, &unk_2A2020540);
      }

      if (byte_2A1898290 == 1)
      {
LABEL_13:
        v6 = atomic_fetch_add_explicit((v4 + 488), 1u, memory_order_relaxed) + 1;
        v7 = sub_299E3BEA0((v4 + 128), name, v6, &v28);
        if (v7)
        {
          if (v7 < 0xB)
          {
            return v7;
          }

          v8 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            goto LABEL_29;
          }

LABEL_75:
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d");
          return v8;
        }

        v13 = sub_299E3A038(name, v28, v6, v6, -1, 0x80000002, -1, -1, 0, 0);
        if (v13)
        {
          v14 = v13;
          if (v13 >= 0xB)
          {
            v8 = 1000000;
            has_internal_diagnostics = os_variant_has_internal_diagnostics();
            if (!has_internal_diagnostics)
            {
              goto LABEL_75;
            }

            goto LABEL_29;
          }

          return v14;
        }

        goto LABEL_76;
      }

      v11 = *(v4 + 384);
      if (!v11)
      {
        v15 = sub_299E38CF8(v4);
        if (v15)
        {
          v8 = v15;
          if (v15 >= 0xB)
          {
            v16 = os_variant_has_internal_diagnostics();
            if (v16)
            {
              sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_register_check", v8, 2557);
            }

            else
            {
              sub_299E3D364(v16, "Libnotify: %s failed with code %d on line %d", "notify_register_check", v8, 2557);
            }

            return 1000000;
          }

          return v8;
        }

        v11 = *(v4 + 384);
      }

      v56 = 0u;
      v57 = 0u;
      v6 = atomic_fetch_add_explicit((v4 + 488), 1u, memory_order_relaxed) + 1;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      memset(msg, 0, sizeof(msg));
      *&msg[24] = *MEMORY[0x29EDCA690];
      if (MEMORY[0x2A1C7C4D0])
      {
        v12 = mig_strncpy_zerofill(&msg[40], name, 512);
      }

      else
      {
        v12 = mig_strncpy(&msg[40], name, 512);
      }

      *&msg[32] = 0;
      *&msg[36] = v12;
      v17 = (v12 + 3) & 0xFFFFFFFC;
      *&msg[v17 + 40] = v6;
      special_reply_port = mig_get_special_reply_port();
      *&msg[8] = v11;
      *&msg[12] = special_reply_port;
      *msg = 5395;
      *&msg[16] = 0x3F400000000;
      if (MEMORY[0x2A1C7C4D8])
      {
        voucher_mach_msg_set(msg);
        v19 = *&msg[12];
      }

      else
      {
        v19 = special_reply_port;
      }

      v20 = mach_msg(msg, 3162115, v17 + 44, 0x40u, v19, 0, 0);
      v21 = v20;
      if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
      {
LABEL_66:
        v8 = 1000000;
        v23 = os_variant_has_internal_diagnostics();
        if (v23)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
        }

        else
        {
          sub_299E3D364(v23, "Libnotify: %s failed with code %d (%d) on line %d");
        }

        return v8;
      }

      if (v20)
      {
        mig_dealloc_special_reply_port();
LABEL_65:
        if (v21)
        {
          goto LABEL_66;
        }

        v24 = 0;
        v25 = 0;
        goto LABEL_70;
      }

      if (*&msg[20] == 71)
      {
        v21 = -308;
      }

      else if (*&msg[20] == 1112)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 56)
          {
            if (!*&msg[8])
            {
              v21 = *&msg[32];
              if (!*&msg[32])
              {
                if (*&msg[52])
                {
                  v8 = *&msg[52];
                  if (*&msg[52] < 0xBu)
                  {
                    return v8;
                  }

                  v8 = 1000000;
                  has_internal_diagnostics = os_variant_has_internal_diagnostics();
                  if (!has_internal_diagnostics)
                  {
                    goto LABEL_75;
                  }

                  goto LABEL_29;
                }

                v25 = *&msg[36];
                v24 = *&msg[44];
                if (*&msg[36] == -1)
                {
                  v26 = sub_299E3A038(name, *&msg[44], v6, v6, -1, 0x40000002u, -1, -1, 0, 0);
                  goto LABEL_72;
                }

                v21 = *&msg[40];
LABEL_70:
                os_unfair_lock_lock_with_options();
                if (!*(v4 + 592))
                {
                  if (!sub_299E3A77C(v25))
                  {
                    v8 = 1000000;
                    os_unfair_lock_unlock((v4 + 104));
                    return v8;
                  }

                  if (!*(v4 + 592))
                  {
                    v8 = 1000000;
                    os_unfair_lock_unlock((v4 + 104));
                    has_internal_diagnostics = os_variant_has_internal_diagnostics();
                    if (!has_internal_diagnostics)
                    {
                      goto LABEL_75;
                    }

                    goto LABEL_29;
                  }
                }

                os_unfair_lock_unlock((v4 + 104));
                v26 = sub_299E3A038(name, v24, v6, v6, v21, 0x40000001u, -1, -1, 0, 0);
LABEL_72:
                v14 = v26;
                if (v26)
                {
                  if (v26 >= 0xB)
                  {
                    v8 = 1000000;
                    has_internal_diagnostics = os_variant_has_internal_diagnostics();
                    if (!has_internal_diagnostics)
                    {
                      goto LABEL_75;
                    }

                    goto LABEL_29;
                  }

                  return v14;
                }

LABEL_76:
                v8 = 0;
                *out_token = v6;
                return v8;
              }

              goto LABEL_64;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v22 = 1;
            }

            else
            {
              v22 = *&msg[32] == 0;
            }

            if (v22)
            {
              v21 = -300;
            }

            else
            {
              v21 = *&msg[32];
            }

            goto LABEL_64;
          }
        }

        v21 = -300;
      }

      else
      {
        v21 = -301;
      }

LABEL_64:
      mach_msg_destroy(msg);
      goto LABEL_65;
    }

    return 10;
  }

  return notify_register_plain(name, out_token);
}

uint64_t sub_299E395F4(const char *a1)
{
  v2 = sub_299E35B5C();
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_299E396FC;
  block[3] = &unk_29F28F6E0;
  block[4] = v2;
  if (qword_2A18982A0 == -1)
  {
    if (!a1)
    {
      return 1;
    }
  }

  else
  {
    dispatch_once(&qword_2A18982A0, block);
    if (!a1)
    {
      return 1;
    }
  }

  if (*(v2 + 576) != 1)
  {
    return 1;
  }

  v3 = *(v2 + 568);
  if (v3)
  {
    v4 = (*(v2 + 560) + 8);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4 - 1;
      if (v5[v6] == 42)
      {
        if (!strncmp(a1, v5, v6))
        {
          return 1;
        }
      }

      else if (!strcmp(a1, v5))
      {
        return 1;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return 0;
}

void sub_299E396FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = sub_299E3B320;
  v2[3] = &unk_29F28F730;
  v2[4] = &v7;
  v2[5] = &v3;
  *(v1 + 576) = sub_299E397D8("com.apple.private.darwin-notification.introspect", v2);
  *(v1 + 568) = v4[3];
  *(v1 + 560) = v8[3];
  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v7, 8);
}

void *sub_299E397D8(uint64_t a1, uint64_t a2)
{
  result = xpc_copy_entitlement_for_token();
  if (result)
  {
    v4 = result;
    v5 = (*(a2 + 16))(a2, result);
    xpc_release(v4);
    return v5;
  }

  return result;
}

void *sub_299E3982C()
{
  result = sub_299E397D8("com.apple.developer.web-browser-engine.restrict.notifyd", &unk_2A2020560);
  byte_2A1898290 = result;
  return result;
}

void sub_299E3985C(uint64_t a1, mach_port_name_t a2, int a3)
{
  v6 = *(a1 + 552);
  os_unfair_lock_assert_owner((a1 + 104));
  if (a2)
  {
    if (*(a1 + 392) != a2)
    {
      v7 = *(a1 + 544);
      if (v7)
      {
        v8 = 0;
        v9 = (a1 + 544);
        for (i = v6; *i != a2; i += 12)
        {
          if (v7 == ++v8)
          {
            return;
          }
        }

        v11 = *(i + 1);
        if (v11 < 2)
        {
          if (i[8] == 1)
          {
            mach_port_destruct(*MEMORY[0x29EDCA6B0], a2, (4 * a3) >> 31, 0);
          }

          else if ((a3 & 0x20000000) != 0)
          {
            mach_port_deallocate(*MEMORY[0x29EDCA6B0], a2);
          }

          v12 = *v9 - 1;
          *v9 = v12;
          if (v12 != v8)
          {
            v13 = &v6[12 * v12];
            v14 = *v13;
            *(i + 2) = *(v13 + 2);
            *i = v14;
            LODWORD(v8) = *v9;
          }

          if (v8)
          {
            v15 = *(a1 + 548);
            if (v15 >= 5 && v8 <= v15 >> 2)
            {
              v16 = malloc_type_realloc(v6, 6 * v15, 0x100004005A209FEuLL);
              if (v16)
              {
                *(a1 + 552) = v16;
                *(a1 + 548) >>= 1;
              }
            }
          }

          else
          {
            free(v6);
            *v9 = 0;
            *(a1 + 552) = 0;
          }
        }

        else
        {
          *(i + 1) = v11 - 1;
        }
      }
    }
  }
}

uint64_t sub_299E399D8(char *__s1, _DWORD *a2, uint64_t a3, int a4)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    __assert_rtn("notify_register_coalesced_registration", "notify_client.c", 3149, "globals");
  }

  if (!__s1)
  {
    __assert_rtn("notify_register_coalesced_registration", "notify_client.c", 3150, "name");
  }

  if (strncmp(__s1, "self.", 5uLL))
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    if (byte_2A1898290 != 1)
    {
      if (!*(a3 + 384) || (*(a3 + 392) + 1) <= 1)
      {
        v9 = sub_299E38CF8(a3);
        if (v9)
        {
          v10 = v9;
          if ((v9 - 10) > 0xFFFFFFFD)
          {
            return v10;
          }

          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
LABEL_43:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
            return v10;
          }

LABEL_44:
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d");
          return v10;
        }
      }

      os_unfair_lock_lock_with_options();
      v12 = os_set_str_ptr_find();
      if (v12)
      {
        v13 = *(a3 + 480);
        if (v13 != v12)
        {
          if (*(v12 - v13 + 24))
          {
            v14 = 0;
            v15 = os_set_str_ptr_find() - *(a3 + 480);
            atomic_fetch_add_explicit((*(v15 + 24) + 16), 1u, memory_order_relaxed);
LABEL_52:
            os_unfair_lock_unlock((a3 + 104));
            v30 = atomic_fetch_add_explicit((a3 + 488), 1u, memory_order_relaxed) + 1;
            if ((a4 - 1) >= 0xFFFFFFFE)
            {
              v31 = 0;
            }

            else
            {
              v31 = a4;
            }

            v10 = sub_299E3A038(__s1, -1, v30, v30, -1, 0x44000007u, v31, -1, *(a3 + 384), v14);
            if ((v14 & 1) == 0)
            {
              sub_299E3617C(*(v15 + 24));
            }

            if (v10)
            {
              if (v10 >= 0xB)
              {
                v32 = os_variant_has_internal_diagnostics();
                if (v32)
                {
                  sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_register_coalesced_registration", v10, 3289);
                }

                else
                {
                  sub_299E3D364(v32, "Libnotify: %s failed with code %d on line %d", "notify_register_coalesced_registration", v10, 3289);
                }

                return 1000000;
              }
            }

            else
            {
              v10 = 0;
              if (a2)
              {
                *a2 = v30;
              }
            }

            return v10;
          }
        }
      }

      add_explicit = atomic_fetch_add_explicit((a3 + 488), 1u, memory_order_relaxed);
      v17 = *(a3 + 384);
      v18 = add_explicit + 1;
      memset(msg, 0, 512);
      *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
      if (MEMORY[0x2A1C7C4D0])
      {
        v19 = mig_strncpy_zerofill(&msg[1].msgh_voucher_port, __s1, 512);
      }

      else
      {
        v19 = mig_strncpy(&msg[1].msgh_voucher_port, __s1, 512);
      }

      msg[1].msgh_remote_port = 0;
      msg[1].msgh_local_port = v19;
      v20 = (v19 + 3) & 0xFFFFFFFC;
      *(&msg[1].msgh_voucher_port + v20) = v18;
      msg[0].msgh_bits = 19;
      msg[0].msgh_remote_port = v17;
      msg[0].msgh_local_port = 0;
      msg[0].msgh_voucher_port = 0;
      msg[0].msgh_id = 1026;
      if (MEMORY[0x2A1C7C4D8])
      {
        voucher_mach_msg_set(msg);
      }

      if (mach_msg(msg, 1, v20 + 44, 0, 0, 0, 0))
      {
        v10 = 1000000;
        os_unfair_lock_unlock((a3 + 104));
        v21 = os_variant_has_internal_diagnostics();
        if (v21)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
        }

        else
        {
          sub_299E3D364(v21, "Libnotify: %s failed with code %d (%d) on line %d");
        }

        return v10;
      }

      v22 = *(a3 + 392);
      os_unfair_lock_assert_owner((a3 + 104));
      v23 = os_set_32_ptr_find();
      if (!v23 || *(a3 + 448) == v23)
      {
        v24 = malloc_type_calloc(1uLL, 0x70uLL, 0x10B00400AF92624uLL);
        if (v24)
        {
          v25 = v24;
          v26 = sub_299E378D0(a3, __s1, -1, 1);
          if (v26)
          {
            v27 = v26;
            *(v25 + 4) = 1;
            *(v25 + 5) = v18;
            *(v25 + 16) = v18;
            *(v25 + 24) = xmmword_299E40200;
            *(v25 + 10) = -1;
            *(v25 + 11) = v22;
            *(v25 + 13) = v26;
            v26[3] = v25;
            *(v26 + 12) = v18;
            os_set_32_ptr_insert();
            if (sub_299E3A6A8(v27[4]))
            {
              *&msg[0].msgh_bits = 0;
              *&msg[0].msgh_remote_port = 0;
              v33 = 0;
              v34 = 0;
              if ((_dyld_get_image_uuid() & 1) == 0)
              {
                *&msg[0].msgh_bits = 0;
                *&msg[0].msgh_remote_port = 0;
              }

              if (_dyld_get_shared_cache_uuid())
              {
                shared_cache_range = _dyld_get_shared_cache_range();
              }

              else
              {
                shared_cache_range = 0;
                v33 = 0;
                v34 = 0;
              }

              _os_log_simple(&dword_299E35000, msg, &v33, shared_cache_range, 0, "com.apple.libnotify", "[%s] registered for notification token=%d flags=0x%x", v27[4], *(v25 + 5), *(v25 + 6));
            }

            v29 = os_set_str_ptr_find();
            if (v29)
            {
              v15 = v29 - *(a3 + 480);
            }

            else
            {
              v15 = 0;
            }

            v14 = 1;
            goto LABEL_52;
          }

          free(v25);
        }
      }

      os_unfair_lock_unlock((a3 + 104));
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v10 = 1000000;
      if (has_internal_diagnostics)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    }
  }

  return sub_299E3C0F8(__s1, (a3 + 392), 1073741825, a2, a3);
}

uint64_t sub_299E3A038(const char *a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, int a7, int a8, int a9, char a10)
{
  v15 = a3;
  v35 = *MEMORY[0x29EDCA608];
  v18 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  v19 = os_set_32_ptr_find();
  if (v19 && *(v18 + 448) != v19)
  {
    goto LABEL_19;
  }

  v20 = sub_299E378D0(v18, a1, a2, 1);
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  os_unfair_lock_lock_with_options();
  v22 = malloc_type_calloc(1uLL, 0x70uLL, 0x10B00400AF92624uLL);
  if (!v22)
  {
    sub_299E37728(v21);
LABEL_19:
    os_unfair_lock_unlock((v18 + 104));
    return 14;
  }

  v22[4] = 1;
  v30 = v22;
  v22[5] = v15;
  v23 = (v22 + 5);
  os_set_32_ptr_insert();
  v24 = a6 & 0xBFFFFFFF;
  if ((a6 & 0x4000000) == 0)
  {
    v24 = a6;
  }

  *(v23 + 1) = v24;
  *(v23 + 2) = a5;
  *(v23 + 3) = 0;
  *(v23 + 4) = a8;
  *(v23 + 5) = a7;
  *(v23 + 6) = a9;
  *(v23 + 11) = a4;
  *(v23 + 84) = v21;
  if ((v24 & 0x4000000) != 0 && (*(v18 + 116) & 1) != 0 && (v24 & 0xF) - 3 <= 4)
  {
    os_unfair_lock_assert_owner(v21 + 10);
    if ((a10 & 1) == 0)
    {
      v25 = *&v21[6]._os_unfair_lock_opaque;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 16), 1u, memory_order_relaxed);
      }
    }

    v26 = *&v21[4]._os_unfair_lock_opaque;
    *v30 = 0;
    *(v30 + 1) = v26;
    *v26 = v30;
    *&v21[4]._os_unfair_lock_opaque = v30;
  }

  if ((v21[13]._os_unfair_lock_opaque & 1) == 0 && v21[11]._os_unfair_lock_opaque == 500)
  {
    LOBYTE(v21[13]._os_unfair_lock_opaque) = 1;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("notify name %s has been registered %d times - this may be a leak", a1, 500);
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "notify name %s has been registered %d times - this may be a leak", a1, 500);
    }
  }

  if (sub_299E3A6A8(*&v21[8]._os_unfair_lock_opaque))
  {
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v33 = 0;
      v34 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      shared_cache_range = _dyld_get_shared_cache_range();
    }

    else
    {
      shared_cache_range = 0;
      v31 = 0;
      v32 = 0;
    }

    _os_log_simple(&dword_299E35000, &v33, &v31, shared_cache_range, 0, "com.apple.libnotify", "[%s] registered for notification: token=%d flags=0x%x", *&v21[8]._os_unfair_lock_opaque, v30[5], v30[6]);
  }

  os_unfair_lock_unlock(v21 + 10);
  os_unfair_lock_unlock((v18 + 104));
  return 0;
}

uint64_t sub_299E3A2F0(int a1, _DWORD *a2, _DWORD *a3)
{
  v14 = 0;
  v13 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x40100000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x18u, 0x3Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 1125)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v9 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg[32];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_24;
        }

        v9 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 52 && !*&msg[8] && WORD1(v13) << 16 == 0x100000)
        {
          v9 = 0;
          v10 = *&msg[28];
          *a2 = HIDWORD(v13);
          *a3 = v10;
          return v9;
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

void sub_299E3A47C(uint64_t a1, unsigned int a2)
{
  *(a1 + 392) = a2;
  v4 = a2;
  global_queue = dispatch_get_global_queue(2, 0);
  v6 = dispatch_source_create(MEMORY[0x29EDCA5A0], v4, 0, global_queue);
  *(a1 + 400) = v6;
  dispatch_set_context(v6, a1);
  dispatch_source_set_event_handler_f(*(a1 + 400), sub_299E37A14);
  v7 = *(a1 + 400);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = sub_299E3D988;
  handler[3] = &unk_29F28F620;
  v9 = a2;
  dispatch_source_set_cancel_handler(v7, handler);
  dispatch_resume(*(a1 + 400));
}

uint32_t notify_cancel(int token)
{
  v1 = sub_299E35B5C();
  if ((*(v1 + 116) & 2) == 0)
  {
LABEL_5:
    os_unfair_lock_lock_with_options();
    v3 = os_set_32_ptr_find();
    if (v3 && (v4 = *(v1 + 448), v5 = (v3 - v4), v3 != v4))
    {
      v7 = v5[6];
      if ((v7 & 0x1000000) == 0)
      {
        v5[6] = v7 | 0x1000000;
        sub_299E361D0(v1, v5);
      }

      os_unfair_lock_unlock((v1 + 104));
      return 0;
    }

    else
    {
      os_unfair_lock_unlock((v1 + 104));
      return 2;
    }
  }

  os_unfair_lock_lock_with_options();
  v2 = *(v1 + 592);
  if (!v2 || *v2 == *(v1 + 112))
  {
    os_unfair_lock_unlock((v1 + 104));
    goto LABEL_5;
  }

  v9 = sub_299E374A4(v1);
  os_unfair_lock_unlock((v1 + 104));
  if (!v9)
  {
    goto LABEL_5;
  }

  v6 = v9;
  if (v9 >= 0xB)
  {
    v6 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_cancel", v9, 4383);
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", "notify_cancel", v9, 4383);
    }
  }

  return v6;
}

BOOL sub_299E3A6A8(uint64_t a1)
{
  v1 = *(sub_299E35B5C() + 584);
  if (!v1)
  {
    return 0;
  }

  if (*v1)
  {
    return 1;
  }

  return os_set_str_ptr_find() != 0;
}

uint64_t sub_299E3A700(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x29EDCA690];
  v5 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 1016;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

BOOL sub_299E3A77C(unsigned int a1)
{
  v2 = sub_299E35B5C();
  v3 = shm_open("apple.shm.notification_center", 0, 0);
  if (v3 == -1)
  {
    if (*__error() != 1)
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v7 = __error();
      if (has_internal_diagnostics)
      {
        sub_299E3D2E8("Libnotify: %s failed on line %d with errno %d", "shm_attach", 913, *v7);
      }

      else
      {
        sub_299E3D364(v7, "Libnotify: %s failed on line %d with errno %d", "shm_attach", 913, *v7);
      }
    }

    return 0;
  }

  else
  {
    v4 = mmap(0, a1, 1, 1, v3, 0);
    v5 = v4 != -1;
    if (v4 == -1)
    {
      v8 = os_variant_has_internal_diagnostics();
      v9 = __error();
      if (v8)
      {
        sub_299E3D2E8("Libnotify: %s failed on line %d with errno %d", "shm_attach", 920, *v9);
      }

      else
      {
        sub_299E3D364(v9, "Libnotify: %s failed on line %d with errno %d", "shm_attach", 920, *v9);
      }
    }

    else
    {
      *(v2 + 592) = v4;
    }

    close_NOCANCEL();
  }

  return v5;
}

void sub_299E3A8E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    os_unfair_lock_assert_owner((a1 + 40));
    *a1 = a2;

    os_unfair_lock_unlock((a1 + 40));
  }
}

uint32_t notify_register_mach_port(const char *name, mach_port_t *notify_port, int flags, int *out_token)
{
  v8 = sub_299E35B5C();
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", name);
  }

  if ((*(v8 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v9 = *(v8 + 592);
    if (v9 && *v9 != *(v8 + 112))
    {
      v12 = sub_299E374A4(v8);
      os_unfair_lock_unlock((v8 + 104));
      if (v12)
      {
        if (v12 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
LABEL_19:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
            return v11;
          }

LABEL_43:
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d");
          return v11;
        }

        return v12;
      }
    }

    else
    {
      os_unfair_lock_unlock((v8 + 104));
    }
  }

  if (!name)
  {
    return 1;
  }

  if (!notify_port)
  {
    return 3;
  }

  if (strncmp(name, "self.", 5uLL))
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    if (byte_2A1898290 != 1)
    {
      if (flags & 0x80000000) == 0 && (*(v8 + 116))
      {
        if ((flags & 1) == 0 && mach_port_allocate(*MEMORY[0x29EDCA6B0], 1u, notify_port))
        {
          v11 = 1000000;
          v14 = os_variant_has_internal_diagnostics();
          if (v14)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v19 = *notify_port;
        if (*notify_port - 1 <= 0xFFFFFFFD)
        {
          v20 = MEMORY[0x29EDCA6B0];
          if (!mach_port_insert_right(*MEMORY[0x29EDCA6B0], *notify_port, *notify_port, 0x14u))
          {
            global_queue = dispatch_get_global_queue(2, 0);
            v26[0] = MEMORY[0x29EDCA5F8];
            v26[1] = 0x40000000;
            v26[2] = sub_299E37554;
            v26[3] = &unk_29F28F750;
            v27 = v19;
            v26[4] = v8;
            v23 = sub_299E381E4(name, out_token, global_queue, v26, *notify_port);
            v11 = v23;
            if ((flags & 1) != 0 || !v23)
            {
              if (!v23)
              {
                sub_299E3AFD4(v8, *notify_port, flags);
              }
            }

            else
            {
              mach_port_destruct(*v20, v19, 0, 0);
            }

            return v11;
          }

          if ((flags & 1) == 0)
          {
            mach_port_destruct(*v20, v19, 0, 0);
          }
        }

        return 3;
      }

      if (!strncmp(name, "self.", 5uLL))
      {
        __assert_rtn("notify_register_mach_port_no_dispatch", "notify_client.c", 3045, "strncmp(name, SELF_PREFIX, SELF_PREFIX_LEN)");
      }

      if (byte_2A1898290 == 1)
      {
        qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
        __break(0xB001u);
        goto LABEL_78;
      }

      if ((flags & 1) == 0 || *notify_port + 1 >= 2)
      {
        if (!*(v8 + 384))
        {
          v21 = sub_299E38CF8(v8);
          if (v21)
          {
            v12 = v21;
            if (v21 >= 0xB)
            {
              v11 = 1000000;
              has_internal_diagnostics = os_variant_has_internal_diagnostics();
              if (has_internal_diagnostics)
              {
                goto LABEL_19;
              }

              goto LABEL_43;
            }

            return v12;
          }
        }

        add_explicit = atomic_fetch_add_explicit((v8 + 488), 1u, memory_order_relaxed);
        v16 = add_explicit + 1;
        if (flags)
        {
          if (sub_299E3F050(*(v8 + 384), name, add_explicit + 1, *notify_port))
          {
            goto LABEL_58;
          }

          v11 = sub_299E3A038(name, -1, v16, v16, -1, 3u, -1, -1, *notify_port, 0);
          if (v11)
          {
LABEL_67:
            if (v11 < 0xB)
            {
              return v11;
            }

            v25 = os_variant_has_internal_diagnostics();
            if (v25)
            {
              sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_register_mach_port_no_dispatch", v11, 3120);
            }

            else
            {
              sub_299E3D364(v25, "Libnotify: %s failed with code %d on line %d", "notify_register_mach_port_no_dispatch", v11, 3120);
            }

            return 1000000;
          }
        }

        else
        {
          LODWORD(v26[0]) = 0;
          *notify_port = 0;
          v17 = sub_299E3F19C(*(v8 + 384), name, add_explicit + 1, v26, notify_port);
          v11 = v26[0];
          if (LODWORD(v26[0]))
          {
            if (!*notify_port)
            {
              if (LODWORD(v26[0]) < 0xB)
              {
                return v11;
              }

              v18 = os_variant_has_internal_diagnostics();
              if (v18)
              {
                sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_register_mach_port_no_dispatch", v11, 3088);
              }

              else
              {
                sub_299E3D364(v18, "Libnotify: %s failed with code %d on line %d", "notify_register_mach_port_no_dispatch", v11, 3088);
              }

              return 1000000;
            }

LABEL_78:
            __assert_rtn("notify_register_mach_port_no_dispatch", "notify_client.c", 3085, "*notify_port == MACH_PORT_NULL");
          }

          if (v17)
          {
            mach_port_destruct(*MEMORY[0x29EDCA6B0], *notify_port, 0, 0);
LABEL_58:
            v14 = os_variant_has_internal_diagnostics();
            v11 = 1000000;
            if (v14)
            {
LABEL_59:
              sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
              return v11;
            }

LABEL_60:
            sub_299E3D364(v14, "Libnotify: %s failed with code %d (%d) on line %d");
            return v11;
          }

          v24 = sub_299E3A038(name, -1, v16, v16, -1, 3u, -1, -1, *notify_port, 0);
          if (v24)
          {
            v11 = v24;
            mach_port_destruct(*MEMORY[0x29EDCA6B0], *notify_port, 0, 0);
            goto LABEL_67;
          }
        }

        sub_299E3AFD4(v8, *notify_port, flags);
        v11 = 0;
        if (out_token)
        {
          *out_token = v16;
        }

        return v11;
      }

      return 3;
    }
  }

  return sub_299E3C0F8(name, notify_port, flags, out_token, v8);
}

void sub_299E3AFD4(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = a3;
    if ((a3 & 0x40000000) == 0)
    {
      os_unfair_lock_lock_with_options();
      v6 = *(a1 + 552);
      v7 = *(a1 + 544);
      if (v7)
      {
        v8 = *(a1 + 544);
        v9 = *(a1 + 552);
        while (*v9 != a2)
        {
          v9 += 3;
          if (!--v8)
          {
            goto LABEL_7;
          }
        }

        ++v9[1];
      }

      else
      {
LABEL_7:
        *(a1 + 544) = v7 + 1;
        v10 = *(a1 + 548);
        if (v7 >= v10)
        {
          v11 = v10 >= 4 ? 2 * v10 : 4;
          *(a1 + 548) = v11;
          v6 = reallocf(v6, 12 * v11);
          *(a1 + 552) = v6;
          if (!v6)
          {
            qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: Unable to allocate port array: possible notification registration leak";
            __break(0xB001u);
            return;
          }
        }

        v12 = &v6[12 * v7];
        *v12 = a2;
        *(v12 + 1) = 1;
        v12[8] = (v3 & 1) == 0;
      }

      os_unfair_lock_unlock((a1 + 104));
    }
  }
}

void sub_299E3B0EC(const os_unfair_lock *a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(a1 + 26);
  sub_299E3B15C(&a1[114], *(a2 + 32), a2 + 32);
  if (*(a2 + 53) == 1)
  {
    free(*(a2 + 32));
  }

  free(a2);
}

uint64_t sub_299E3B15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = os_set_str_ptr_delete();
  if (result != a3)
  {
    __assert_rtn("_nc_table_delete", "table.c", 72, "os_set_delete(&t->set, key) == expected");
  }

  return result;
}

void *sub_299E3B1A8()
{
  result = sub_299E397D8("com.apple.notify.root_access", &unk_2A20205A0);
  byte_2A1898280 = result;
  return result;
}

uint64_t notify_resume_pid(int a1)
{
  v2 = sub_299E35B5C();
  os_unfair_lock_opaque = v2[96]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
LABEL_2:
    v13 = *MEMORY[0x29EDCA690];
    v14 = a1;
    *&msg.msgh_bits = 19;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 1007;
    msg.msgh_remote_port = os_unfair_lock_opaque;
    msg.msgh_local_port = 0;
    if (MEMORY[0x2A1C7C4D8])
    {
      voucher_mach_msg_set(&msg);
    }

    v4 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = 4680;
    if (has_internal_diagnostics)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", "notify_resume_pid", v5, v8);
    return v6;
  }

  v9 = v2;
  v10 = sub_299E38CF8(v2);
  if (!v10)
  {
    os_unfair_lock_opaque = v9[96]._os_unfair_lock_opaque;
    goto LABEL_2;
  }

  v5 = v10;
  v6 = v10;
  if (v10 < 0xB)
  {
    return v6;
  }

  v6 = 1000000;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v8 = 4666;
  if (!has_internal_diagnostics)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_resume_pid", v5, v8);
  return v6;
}

uint64_t sub_299E3B320(uint64_t a1, void *a2)
{
  result = MEMORY[0x29C2B29D0](a2);
  if (result != MEMORY[0x29EDCA9E0])
  {
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: entitlement com.apple.private.darwin-notification.introspect must be a non-empty *array* of strings";
    __break(0xB001u);
    goto LABEL_7;
  }

  result = xpc_array_get_count(a2);
  if (!result)
  {
LABEL_7:
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: entitlement com.apple.private.darwin-notification.introspect must be a *non-empty* array of strings";
    __break(0xB001u);
    return result;
  }

  v5 = result;
  *(*(*(a1 + 32) + 8) + 24) = malloc_type_calloc(result, 0x10uLL, 0x1050040717B85FCuLL);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __assert_rtn("_notification_introspection_init_block_invoke", "notify_client.c", 1889, "exempt_notifications != NULL");
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  applier[0] = MEMORY[0x29EDCA5F8];
  applier[1] = 0x40000000;
  applier[2] = sub_299E3B474;
  applier[3] = &unk_29F28F708;
  applier[4] = *(a1 + 32);
  return xpc_array_apply(a2, applier);
}

uint64_t sub_299E3B474(uint64_t a1, uint64_t a2, void *a3)
{
  result = MEMORY[0x29C2B29D0](a3);
  if (result == MEMORY[0x29EDCAA50])
  {
    string_ptr = xpc_string_get_string_ptr(a3);
    length = xpc_string_get_length(a3);
    *(*(*(*(a1 + 32) + 8) + 24) + 16 * a2) = strdup(string_ptr);
    *(*(*(*(a1 + 32) + 8) + 24) + 16 * a2 + 8) = length;
    return 1;
  }

  else
  {
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: entitlement com.apple.private.darwin-notification.introspect must be a non-empty array of *strings*";
    __break(0xB001u);
  }

  return result;
}

uint64_t notify_suspend_pid(int a1)
{
  v2 = sub_299E35B5C();
  os_unfair_lock_opaque = v2[96]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
LABEL_2:
    v13 = *MEMORY[0x29EDCA690];
    v14 = a1;
    *&msg.msgh_bits = 19;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 1006;
    msg.msgh_remote_port = os_unfair_lock_opaque;
    msg.msgh_local_port = 0;
    if (MEMORY[0x2A1C7C4D8])
    {
      voucher_mach_msg_set(&msg);
    }

    v4 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = 4637;
    if (has_internal_diagnostics)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", "notify_suspend_pid", v5, v8);
    return v6;
  }

  v9 = v2;
  v10 = sub_299E38CF8(v2);
  if (!v10)
  {
    os_unfair_lock_opaque = v9[96]._os_unfair_lock_opaque;
    goto LABEL_2;
  }

  v5 = v10;
  v6 = v10;
  if (v10 < 0xB)
  {
    return v6;
  }

  v6 = 1000000;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v8 = 4623;
  if (!has_internal_diagnostics)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_suspend_pid", v5, v8);
  return v6;
}

void notify_monitor_file(uint64_t a1, const char *a2, int a3)
{
  v6 = sub_299E35B5C();
  if ((*(v6 + 116) & 2) == 0)
  {
LABEL_5:
    if (a2)
    {
      v8 = sub_299E36108(a1);
      if (v8)
      {
        v9 = v8;
        if ((*(v8 + 24) & 0x80000000) != 0)
        {
          goto LABEL_12;
        }

        if (qword_2A1898298 != -1)
        {
          dispatch_once(&qword_2A1898298, &unk_2A2020540);
        }

        if (byte_2A1898290 == 1)
        {
          qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
          __break(0xB001u);
          return;
        }

        if (*(v9 + 88))
        {
LABEL_12:
          sub_299E3617C(v9);
          return;
        }

        if (*(v6 + 384) || (v18 = sub_299E38CF8(v6)) == 0)
        {
          v12 = strdup(a2);
          if (v12)
          {
            v13 = v12;
            v14 = strlen(a2) + 1;
            if ((*(v9 + 27) & 4) != 0)
            {
              LODWORD(a1) = *(*(v9 + 104) + 48);
            }

            v15 = *(v6 + 384);
            v25 = a2;
            v26 = 16777472;
            v27 = v14;
            v28 = *MEMORY[0x29EDCA690];
            v29 = a1;
            v30 = v14;
            v31 = a3;
            *msg = 2147483667;
            *&msg[8] = v15;
            *&msg[12] = xmmword_299E40210;
            if (MEMORY[0x2A1C7C4D8])
            {
              voucher_mach_msg_set(msg);
            }

            v16 = mach_msg(msg, 1, 0x40u, 0, 0, 0, 0);
            *(v9 + 88) = v13;
            *(v9 + 96) = a3;
            sub_299E3617C(v9);
            if (v16)
            {
              has_internal_diagnostics = os_variant_has_internal_diagnostics();
              if (has_internal_diagnostics)
              {
                sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", "notify_monitor_file", 34, v16, 4070);
              }

              else
              {
                sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d (%d) on line %d", "notify_monitor_file", 34, v16, 4070);
              }
            }
          }

          else
          {
            v21 = os_variant_has_internal_diagnostics();
            if (v21)
            {
              sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_monitor_file", 34, 4047);
            }

            else
            {
              sub_299E3D364(v21, "Libnotify: %s failed with code %d on line %d", "notify_monitor_file", 34, 4047);
            }
          }
        }

        else
        {
          v19 = v18;
          sub_299E3617C(v9);
          if (v19 >= 0xB)
          {
            v20 = os_variant_has_internal_diagnostics();
            if (!v20)
            {
              sub_299E3D364(v20, "Libnotify: %s failed with code %d on line %d", "notify_monitor_file", v19, 4030);
              return;
            }

            v22 = v19;
            v23 = 4030;
LABEL_19:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_monitor_file", v22, v23);
            return;
          }
        }
      }
    }

    return;
  }

  os_unfair_lock_lock_with_options();
  v7 = *(v6 + 592);
  if (!v7 || *v7 == *(v6 + 112))
  {
    os_unfair_lock_unlock((v6 + 104));
    goto LABEL_5;
  }

  v10 = sub_299E374A4(v6);
  os_unfair_lock_unlock((v6 + 104));
  if (!v10)
  {
    goto LABEL_5;
  }

  if (v10 >= 0xB)
  {
    v11 = os_variant_has_internal_diagnostics();
    if (!v11)
    {
      sub_299E3D364(v11, "Libnotify: %s failed with code %d on line %d", "notify_monitor_file", v10, 3974);
      return;
    }

    v22 = v10;
    v23 = 3974;
    goto LABEL_19;
  }
}

uint64_t notify_register_plain(const char *a1, _DWORD *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = sub_299E35B5C();
  if ((sub_299E395F4(a1) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", a1);
  }

  v21 = 0;
  if ((*(v4 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(v4 + 592);
    if (v5 && *v5 != *(v4 + 112))
    {
      v14 = sub_299E374A4(v4);
      os_unfair_lock_unlock((v4 + 104));
      if (v14)
      {
        if (v14 < 0xB)
        {
          return v14;
        }

        v9 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (!has_internal_diagnostics)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 104));
    }
  }

  if (!a1)
  {
    return 1;
  }

  if (!strncmp(a1, "self.", 5uLL))
  {
    goto LABEL_11;
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
LABEL_11:
    v6 = atomic_fetch_add_explicit((v4 + 488), 1u, memory_order_relaxed) + 1;
    v7 = sub_299E3BEA0((v4 + 128), a1, v6, &v21);
    if (v7)
    {
      v8 = v7;
      if (v7 >= 0xB)
      {
        v9 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_22;
        }

LABEL_31:
        sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d");
        return v9;
      }
    }

    else
    {
      v15 = sub_299E3A038(a1, v21, v6, v6, -1, 0x80000002, -1, -1, 0, 0);
      if (!v15)
      {
        v9 = 0;
        *a2 = v6;
        return v9;
      }

      v8 = v15;
      if (v15 >= 0xB)
      {
        v9 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }
    }

    return v8;
  }

  v11 = *(v4 + 384);
  if (!v11)
  {
    v16 = sub_299E38CF8(v4);
    if (!v16)
    {
      v11 = *(v4 + 384);
      goto LABEL_17;
    }

    v14 = v16;
    if (v16 < 0xB)
    {
      return v14;
    }

    v9 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (!has_internal_diagnostics)
    {
      goto LABEL_31;
    }

LABEL_22:
    sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
    return v9;
  }

LABEL_17:
  v12 = atomic_fetch_add_explicit((v4 + 488), 1u, memory_order_relaxed) + 1;
  memset(msg, 0, 512);
  *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v13 = mig_strncpy_zerofill(&msg[1].msgh_voucher_port, a1, 512);
  }

  else
  {
    v13 = mig_strncpy(&msg[1].msgh_voucher_port, a1, 512);
  }

  msg[1].msgh_remote_port = 0;
  msg[1].msgh_local_port = v13;
  v17 = (v13 + 3) & 0xFFFFFFFC;
  *(&msg[1].msgh_voucher_port + v17) = v12;
  msg[0].msgh_bits = 19;
  msg[0].msgh_remote_port = v11;
  msg[0].msgh_local_port = 0;
  msg[0].msgh_voucher_port = 0;
  msg[0].msgh_id = 1011;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(msg);
  }

  if (!mach_msg(msg, 1, v17 + 44, 0, 0, 0, 0))
  {
    v19 = sub_299E3A038(a1, -1, v12, v12, -1, 0x40000002u, -1, -1, 0, 0);
    if (!v19)
    {
      v9 = 0;
      *a2 = v12;
      return v9;
    }

    v14 = v19;
    if (v19 >= 0xB)
    {
      v9 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (!has_internal_diagnostics)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    return v14;
  }

  v9 = 1000000;
  v18 = os_variant_has_internal_diagnostics();
  if (v18)
  {
    sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
  }

  else
  {
    sub_299E3D364(v18, "Libnotify: %s failed with code %d (%d) on line %d");
  }

  return v9;
}

uint64_t sub_299E3BEA0(os_unfair_lock_s *a1, const char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v11 = 0;
  os_unfair_lock_lock_with_options();
  v8 = sub_299E3BF34(a1, a2, v5, &v11);
  if (!v8)
  {
    v9 = v11;
    *(v11 + 79) = *(v11 + 79) & 0xF0 | 2;
    *a4 = *(*(v9 + 48) + 16);
  }

  os_unfair_lock_unlock(a1 + 54);
  return v8;
}

uint64_t sub_299E3BF34(uint64_t a1, const char *a2, unsigned int a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 7;
  }

  *a4 = 0;
  v8 = os_set_str_ptr_find();
  if (!v8 || (v9 = *(a1 + 32), v10 = v8 - v9, v8 == v9))
  {
    v11 = strlen(a2);
    v12 = malloc_type_calloc(1uLL, v11 + 73, 0x103004098686315uLL);
    if (!v12)
    {
      return 47;
    }

    v10 = v12;
    ++*(a1 + 224);
    v13 = v12 + 72;
    *(v10 + 8) = v13;
    memcpy(v13, a2, v11 + 1);
    v14 = *a1 + 1;
    *(v10 + 16) = *a1;
    *a1 = v14;
    *(v10 + 48) = -4294966477;
    *(v10 + 60) = 1;
    *v10 = 0;
    os_set_str_ptr_insert();
    os_set_64_ptr_insert();
  }

  ++*(v10 + 56);
  v15 = os_set_64_ptr_find();
  if ((!v15 || *(a1 + 96) == v15) && (v16 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040BED8B209uLL)) != 0)
  {
    v17 = v16;
    ++*(a1 + 232);
    v16[8] = a3;
    v16[6] = v10;
    v18 = *v10;
    *v16 = *v10;
    if (v18)
    {
      *(v18 + 8) = v16;
    }

    *v10 = v16;
    v16[1] = v10;
    os_set_64_ptr_insert();
    result = 0;
    *a4 = v17;
  }

  else
  {
    sub_299E3C590(a1, v10);
    return 48;
  }

  return result;
}

uint64_t sub_299E3C0F8(const char *a1, mach_port_name_t *name, int a3, _DWORD *a4, os_unfair_lock_s *a5)
{
  if (!a5)
  {
    __assert_rtn("notify_register_mach_port_self", "notify_client.c", 2942, "globals");
  }

  if (a3)
  {
    v13 = *name;
    if (v13 + 1 < 2 || mach_port_insert_right(*MEMORY[0x29EDCA6B0], v13, *name, 0x14u))
    {
      return 3;
    }
  }

  else
  {
    v10 = MEMORY[0x29EDCA6B0];
    if (mach_port_allocate(*MEMORY[0x29EDCA6B0], 1u, name))
    {
      v11 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (has_internal_diagnostics)
      {
        sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
      }

      else
      {
        sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d (%d) on line %d");
      }

      return v11;
    }

    if (mach_port_insert_right(*v10, *name, *name, 0x14u))
    {
      mach_port_destruct(*v10, *name, 0, 0);
      return 3;
    }
  }

  add_explicit = atomic_fetch_add_explicit(&a5[122], 1u, memory_order_relaxed);
  v15 = *name;
  if (*name - 1 >= 0xFFFFFFFE)
  {
    v11 = 3;
    if (a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v16 = add_explicit + 1;
  v25 = 0;
  os_unfair_lock_lock_with_options();
  v17 = sub_299E3BF34(&a5[32], a1, v16, &v25);
  if (v17)
  {
    v11 = v17;
    os_unfair_lock_unlock(a5 + 86);
    if (a3)
    {
LABEL_19:
      if (v11 >= 0xB)
      {
        v18 = os_variant_has_internal_diagnostics();
        if (v18)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_register_mach_port_self", v11, 2993);
        }

        else
        {
          sub_299E3D364(v18, "Libnotify: %s failed with code %d on line %d", "notify_register_mach_port_self", v11, 2993);
        }

        return 1000000;
      }

      return v11;
    }

LABEL_18:
    mach_port_destruct(*MEMORY[0x29EDCA6B0], *name, 0, 0);
    goto LABEL_19;
  }

  v20 = v25;
  *(v25 + 79) = *(v25 + 79) & 0xF0 | 3;
  *(v20 + 56) = v15;
  v21 = *(*(v20 + 48) + 16);
  os_unfair_lock_unlock(a5 + 86);
  v22 = sub_299E3A038(a1, v21, v16, v16, -1, 0x80000003, -1, -1, *name, 0);
  if (v22)
  {
    v23 = v22;
    if ((a3 & 1) == 0)
    {
      mach_port_destruct(*MEMORY[0x29EDCA6B0], *name, 0, 0);
    }

    sub_299E3C458(&a5[32], v16);
    v11 = v23;
    if (v23 >= 0xB)
    {
      v11 = 1000000;
      v24 = os_variant_has_internal_diagnostics();
      if (v24)
      {
        sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
      }

      else
      {
        sub_299E3D364(v24, "Libnotify: %s failed with code %d on line %d");
      }
    }
  }

  else
  {
    *a4 = v16;
    sub_299E3AFD4(a5, *name, a3);
    return 0;
  }

  return v11;
}

void sub_299E3C458(uint64_t a1, unsigned int a2)
{
  os_unfair_lock_lock_with_options();
  v3 = os_set_64_ptr_find();
  if (v3)
  {
    v4 = *(a1 + 96);
    v5 = (v3 - v4);
    if (v3 != v4)
    {
      v6 = v5[6];
      v7 = *v5;
      v8 = v5[1];
      if (*v5)
      {
        *(v7 + 8) = v8;
      }

      *v8 = v7;
      sub_299E3C544(a1 + 72, v5[8], (v5 + 8));
      v9 = *(v5 + 79) & 0xF;
      if (v9 == 3)
      {
        mach_port_deallocate(*MEMORY[0x29EDCA6B0], *(v5 + 14));
      }

      else if (v9 == 4 && (v5[7] & 0x80000000) == 0)
      {
        close_NOCANCEL();
      }

      free(v5);
      ++*(a1 + 236);
      sub_299E3C590(a1, v6);
    }
  }

  os_unfair_lock_unlock((a1 + 216));
}

uint64_t sub_299E3C544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = os_set_64_ptr_delete();
  if (result != a3)
  {
    __assert_rtn("_nc_table_delete_64", "table.c", 80, "os_set_delete(&t->set, key) == expected");
  }

  return result;
}

void sub_299E3C590(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 56);
    if (!v4 || (v5 = v4 - 1, (*(a2 + 56) = v5) == 0))
    {
      v6 = *(a1 + 212);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 192);
        while (1)
        {
          v9 = v7 + 1;
          if (v8[v7] == a2)
          {
            break;
          }

          ++v7;
          if (v6 == v9)
          {
            goto LABEL_16;
          }
        }

        if (v7 + 1 < v6)
        {
          do
          {
            *(*(a1 + 192) + 8 * (v9 - 1)) = *(*(a1 + 192) + 8 * v9);
            ++v9;
          }

          while (v6 != v9);
          v8 = *(a1 + 192);
        }

        v10 = v6 - 1;
        *(a1 + 212) = v10;
        if (v10)
        {
          v11 = reallocf(v8, 8 * v10);
        }

        else
        {
          free(v8);
          v11 = 0;
        }

        *(a1 + 192) = v11;
      }

LABEL_16:
      sub_299E3B15C(a1 + 8, *(a2 + 8), a2 + 8);
      *(a2 + 8) = 0;
      sub_299E3C544(a1 + 40, *(a2 + 16), a2 + 16);
      free(a2);
      ++*(a1 + 228);
    }
  }
}

void sub_299E3C694(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 79) & 0x20) != 0)
  {
    v8 = *(a2 + 79) | 0x40;
LABEL_38:
    *(a2 + 79) = v8;
    return;
  }

  v4 = os_set_32_ptr_find();
  if (!v4)
  {
    v7 = 0;
    v6 = *(a2 + 79);
    goto LABEL_7;
  }

  v5 = a1[20];
  v6 = *(a2 + 79);
  if (v5 == v4)
  {
    v7 = 0;
LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  v7 = v4 - v5;
  if (*(v7 + 20))
  {
    ++*(a2 + 78);
    v8 = v6 | 0x60;
    goto LABEL_38;
  }

  v9 = 0;
LABEL_8:
  v10 = v6 & 0xF;
  if (v10 <= 4)
  {
    if (v10 != 3)
    {
      if (v10 != 4 || (*(a2 + 56) & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      LODWORD(v18[0]) = bswap32(*(a2 + 64));
      if (write_NOCANCEL() != 4)
      {
        close_NOCANCEL();
        *(a2 + 56) = -1;
        return;
      }

      goto LABEL_36;
    }

    v13 = *(a2 + 56);
LABEL_41:

    sub_299E3C93C(a1, a2, v13);
    return;
  }

  switch(v10)
  {
    case 7u:
      if (v9)
      {
        return;
      }

      v12 = *(v7 + 24);
      if (!v12)
      {
        return;
      }

      v13 = *(v12 + 8);
      goto LABEL_41;
    case 6u:
      v14 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v14, "Notification", *(*(a2 + 48) + 8));
      v15 = os_set_64_ptr_find();
      if (v15)
      {
        v16 = a1[8];
        if (v16 != v15)
        {
          xpc_dictionary_set_uint64(v14, "_State", *(v15 - v16 + 24));
        }
      }

      v17 = xpc_event_publisher_fire_noboost();
      xpc_release(v14);
      if (!v17)
      {
        goto LABEL_36;
      }

      if (v17 == 55 && (*(a2 + 80) & 1) == 0)
      {
        *(a2 + 80) = 1;
        memset(v18, 0, sizeof(v18));
        if (xpc_get_service_identifier_for_token())
        {
          if (os_variant_has_internal_diagnostics())
          {
            sub_299E3D2E8("BUG IN CLIENT OF NOTIFYD: %s has not dequeued the last %d messages", v18, 32);
          }
        }
      }

      break;
    case 5u:
      v11 = *(a2 + 68);
      if (!v11)
      {
        v11 = getpid();
      }

      if (!kill(v11, *(a2 + 56)))
      {
LABEL_36:
        v6 = *(a2 + 79);
        goto LABEL_37;
      }

      break;
    default:
LABEL_37:
      v8 = v6 & 0x3F;
      goto LABEL_38;
  }
}

uint64_t sub_299E3C93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = os_set_32_ptr_find();
  if (v6 && (v7 = *(a1 + 128), v7 != v6))
  {
    v8 = v6 - v7;
    if (*(v6 - v7 + 12))
    {
      result = 0;
      ++*(a2 + 78);
      v13 = *(a2 + 79) | 0x60;
      goto LABEL_16;
    }

    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  if ((*(a1 + 208) & 2) != 0)
  {
    v10 = 145;
  }

  else
  {
    v10 = 17;
  }

  *&msg.msgh_bits = 0x1800000013;
  msg.msgh_remote_port = v3;
  msg.msgh_local_port = 0;
  v11 = *(a2 + 64);
  msg.msgh_voucher_port = 0;
  msg.msgh_id = v11;
  result = mach_msg(&msg, v10, 0x18u, 0, 0, 0, 0);
  if (!result)
  {
    v13 = *(a2 + 79) & 0x3F;
LABEL_16:
    *(a2 + 79) = v13;
    return result;
  }

  if (result != 268435460)
  {
    return 46;
  }

  mach_msg_destroy(&msg);
  if ((*(a1 + 208) & 2) == 0)
  {
    return 45;
  }

  ++*(a2 + 78);
  *(a2 + 79) |= 0xE0u;
  result = 0;
  if ((v9 & 1) == 0)
  {
    *(v8 + 12) |= 1u;
  }

  return result;
}

uint32_t notify_resume(int token)
{
  v1 = *&token;
  v2 = sub_299E35B5C();
  if ((*(v2 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v3 = *(v2 + 592);
    if (v3 && *v3 != *(v2 + 112))
    {
      v16 = sub_299E374A4(v2);
      os_unfair_lock_unlock((v2 + 104));
      if (v16)
      {
        if (v16 >= 0xB)
        {
          v10 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          v18 = 4523;
          if (!has_internal_diagnostics)
          {
LABEL_33:
            sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", "notify_resume", v16, v18);
            goto LABEL_63;
          }

          goto LABEL_25;
        }

LABEL_34:
        v10 = v16;
        goto LABEL_63;
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 104));
    }
  }

  v4 = sub_299E36108(v1);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 24) & 0x80000000) != 0)
    {
      os_unfair_lock_lock_with_options();
      v11 = os_set_64_ptr_find();
      if (v11)
      {
        v12 = *(v2 + 224);
        v13 = v11 - v12;
        if (v11 != v12)
        {
          if (!*(v13 + 78) || (v14 = *(v13 + 78) - 1, (*(v13 + 78) = v14) == 0))
          {
            v15 = *(v13 + 79);
            *(v13 + 79) = v15 & 0x5F;
            if ((v15 & 0x40) != 0)
            {
              sub_299E3C694((v2 + 128), v13);
            }
          }
        }
      }

      os_unfair_lock_unlock((v2 + 344));
    }

    else
    {
      if (qword_2A1898298 != -1)
      {
        dispatch_once(&qword_2A1898298, &unk_2A2020540);
      }

      if (byte_2A1898290 == 1)
      {
        qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
        __break(0xB001u);
        return v4;
      }

      if (!*(v2 + 384))
      {
        v19 = sub_299E38CF8(v2);
        if (v19)
        {
          v16 = v19;
          sub_299E3617C(v5);
          if (v16 >= 0xB)
          {
            v10 = 1000000;
            has_internal_diagnostics = os_variant_has_internal_diagnostics();
            v18 = 4562;
            if (!has_internal_diagnostics)
            {
              goto LABEL_33;
            }

LABEL_25:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_resume", v16, v18);
            goto LABEL_63;
          }

          goto LABEL_34;
        }
      }

      os_unfair_lock_lock_with_options();
      v6 = *(v5 + 24);
      if ((v6 & 0x4000000) == 0)
      {
        os_unfair_lock_unlock((*(v5 + 104) + 40));
        v7 = *(v2 + 384);
        memset(&msg_4[16], 0, 28);
        *msg_4 = 0u;
        *&msg_4[20] = *MEMORY[0x29EDCA690];
        *&msg_4[28] = v1;
        special_reply_port = mig_get_special_reply_port();
        *&msg_4[4] = v7;
        *&msg_4[8] = special_reply_port;
        msg = 5395;
        *&msg_4[12] = 0x3ED00000000;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(&msg);
          v9 = *&msg_4[8];
        }

        else
        {
          v9 = special_reply_port;
        }

        v20 = mach_msg(&msg, 3162115, 0x24u, 0x30u, v9, 0, 0);
        v21 = v20;
        if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
        {
          sub_299E3617C(v5);
LABEL_58:
          v10 = 39;
          goto LABEL_59;
        }

        if (v20)
        {
          mig_dealloc_special_reply_port();
          goto LABEL_57;
        }

        if (*&msg_4[16] == 71)
        {
          v21 = -308;
        }

        else if (*&msg_4[16] == 1105)
        {
          if ((msg & 0x80000000) == 0)
          {
            if (*msg_4 == 40)
            {
              if (!*&msg_4[4])
              {
                v21 = *&msg_4[28];
                if (!*&msg_4[28])
                {
                  v24 = v5;
                  v10 = *&msg_4[32];
                  sub_299E3617C(v24);
                  if (v10 < 0xB)
                  {
                    goto LABEL_63;
                  }

                  v21 = 0;
LABEL_59:
                  v23 = os_variant_has_internal_diagnostics();
                  if (v23)
                  {
                    sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", "notify_resume", v10, v21, 4595);
                  }

                  else
                  {
                    sub_299E3D364(v23, "Libnotify: %s failed with code %d (%d) on line %d", "notify_resume", v10, v21, 4595);
                  }

                  v10 = 1000000;
                  goto LABEL_63;
                }

                goto LABEL_56;
              }
            }

            else if (*msg_4 == 36)
            {
              if (*&msg_4[4])
              {
                v22 = 1;
              }

              else
              {
                v22 = *&msg_4[28] == 0;
              }

              if (v22)
              {
                v21 = -300;
              }

              else
              {
                v21 = *&msg_4[28];
              }

              goto LABEL_56;
            }
          }

          v21 = -300;
        }

        else
        {
          v21 = -301;
        }

LABEL_56:
        mach_msg_destroy(&msg);
LABEL_57:
        sub_299E3617C(v5);
        if (v21)
        {
          goto LABEL_58;
        }

LABEL_29:
        v10 = 0;
        goto LABEL_63;
      }

      *(v5 + 24) = v6 & 0xFF3FFFFF;
      os_unfair_lock_unlock((*(v5 + 104) + 40));
      if ((v6 & 0x400000) != 0)
      {
        sub_299E377C0(v5);
      }
    }

    sub_299E3617C(v5);
    goto LABEL_29;
  }

  v10 = 2;
LABEL_63:
  LODWORD(v4) = v10;
  return v4;
}

uint32_t notify_suspend(int token)
{
  v1 = *&token;
  v2 = sub_299E35B5C();
  if ((*(v2 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v3 = *(v2 + 592);
    if (v3 && *v3 != *(v2 + 112))
    {
      v16 = sub_299E374A4(v2);
      os_unfair_lock_unlock((v2 + 104));
      if (v16)
      {
        if (v16 >= 0xB)
        {
          v10 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          v18 = 4430;
          if (!has_internal_diagnostics)
          {
LABEL_30:
            sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", "notify_suspend", v16, v18);
            goto LABEL_60;
          }

          goto LABEL_23;
        }

LABEL_31:
        v10 = v16;
        goto LABEL_60;
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 104));
    }
  }

  v4 = sub_299E36108(v1);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 24) & 0x80000000) != 0)
    {
      os_unfair_lock_lock_with_options();
      v11 = os_set_64_ptr_find();
      if (v11)
      {
        v12 = *(v2 + 224);
        if (v12 != v11)
        {
          v13 = v11 - v12;
          *(v13 + 79) |= 0x20u;
          v14 = *(v13 + 78);
          if (v14 != 255)
          {
            *(v13 + 78) = v14 + 1;
          }
        }
      }

      v15 = (v2 + 344);
    }

    else
    {
      if (qword_2A1898298 != -1)
      {
        dispatch_once(&qword_2A1898298, &unk_2A2020540);
      }

      if (byte_2A1898290 == 1)
      {
        qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
        __break(0xB001u);
        return v4;
      }

      if (!*(v2 + 384))
      {
        v19 = sub_299E38CF8(v2);
        if (v19)
        {
          v16 = v19;
          sub_299E3617C(v5);
          if (v16 >= 0xB)
          {
            v10 = 1000000;
            has_internal_diagnostics = os_variant_has_internal_diagnostics();
            v18 = 4469;
            if (!has_internal_diagnostics)
            {
              goto LABEL_30;
            }

LABEL_23:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_suspend", v16, v18);
            goto LABEL_60;
          }

          goto LABEL_31;
        }
      }

      os_unfair_lock_lock_with_options();
      v6 = *(v5 + 24);
      if ((v6 & 0x4000000) == 0)
      {
        os_unfair_lock_unlock((*(v5 + 104) + 40));
        v7 = *(v2 + 384);
        memset(&msg_4[16], 0, 28);
        *msg_4 = 0u;
        *&msg_4[20] = *MEMORY[0x29EDCA690];
        *&msg_4[28] = v1;
        special_reply_port = mig_get_special_reply_port();
        *&msg_4[4] = v7;
        *&msg_4[8] = special_reply_port;
        msg = 5395;
        *&msg_4[12] = 0x3EC00000000;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(&msg);
          v9 = *&msg_4[8];
        }

        else
        {
          v9 = special_reply_port;
        }

        v20 = mach_msg(&msg, 3162115, 0x24u, 0x30u, v9, 0, 0);
        v21 = v20;
        if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
        {
          sub_299E3617C(v5);
LABEL_55:
          v10 = 38;
          goto LABEL_56;
        }

        if (v20)
        {
          mig_dealloc_special_reply_port();
          goto LABEL_54;
        }

        if (*&msg_4[16] == 71)
        {
          v21 = -308;
        }

        else if (*&msg_4[16] == 1104)
        {
          if ((msg & 0x80000000) == 0)
          {
            if (*msg_4 == 40)
            {
              if (!*&msg_4[4])
              {
                v21 = *&msg_4[28];
                if (!*&msg_4[28])
                {
                  v24 = v5;
                  v10 = *&msg_4[32];
                  sub_299E3617C(v24);
                  if (v10 < 0xB)
                  {
                    goto LABEL_60;
                  }

                  v21 = 0;
LABEL_56:
                  v23 = os_variant_has_internal_diagnostics();
                  if (v23)
                  {
                    sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", "notify_suspend", v10, v21, 4496);
                  }

                  else
                  {
                    sub_299E3D364(v23, "Libnotify: %s failed with code %d (%d) on line %d", "notify_suspend", v10, v21, 4496);
                  }

                  v10 = 1000000;
                  goto LABEL_60;
                }

                goto LABEL_53;
              }
            }

            else if (*msg_4 == 36)
            {
              if (*&msg_4[4])
              {
                v22 = 1;
              }

              else
              {
                v22 = *&msg_4[28] == 0;
              }

              if (v22)
              {
                v21 = -300;
              }

              else
              {
                v21 = *&msg_4[28];
              }

              goto LABEL_53;
            }
          }

          v21 = -300;
        }

        else
        {
          v21 = -301;
        }

LABEL_53:
        mach_msg_destroy(&msg);
LABEL_54:
        sub_299E3617C(v5);
        if (v21)
        {
          goto LABEL_55;
        }

LABEL_26:
        v10 = 0;
        goto LABEL_60;
      }

      *(v5 + 24) = v6 | 0x800000;
      v15 = (*(v5 + 104) + 40);
    }

    os_unfair_lock_unlock(v15);
    sub_299E3617C(v5);
    goto LABEL_26;
  }

  v10 = 2;
LABEL_60:
  LODWORD(v4) = v10;
  return v4;
}

void sub_299E3D2E8(const char *a1, ...)
{
  va_start(va, a1);
  v2 = 0;
  if (getpid() != 1)
  {
    vasprintf(&v2, a1, va);
    if (v2)
    {
      os_fault_with_payload();
      free(v2);
    }
  }
}

void sub_299E3D364(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v3[0] = 0;
  va_copy(&v3[1], va);
  vasprintf(v3, a2, va);
  if (v3[0])
  {
    _simple_asl_log();
    v2 = v3[0];
  }

  else
  {
    v2 = 0;
  }

  free(v2);
}

double _notify_fork_child()
{
  v0 = sub_299E35B5C();
  sub_299E38D40(v0);
  if (*(v0 + 384) || _dispatch_is_fork_of_multithreaded_parent())
  {
    *(v0 + 116) = 0x8000000;
  }

  sub_299E38DCC(v0 + 128);
  *(v0 + 384) = 0;
  *(v0 + 112) = 0;
  *(v0 + 512) = 0;
  *(v0 + 592) = 0;
  result = 0.0;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  return result;
}

void sub_299E3D428()
{
  v0 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  sub_299E374A4(v0);

  os_unfair_lock_unlock(v0 + 26);
}

uint64_t sub_299E3D474(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x29EDCA608];
  v38 = -1;
  v37 = -1;
  v3 = *(*(a2 + 104) + 32);
  v34 = sub_299E35B5C();
  if (*(a2 + 24) < 0x40000000)
  {
    return 1;
  }

  v39 = 0;
  v4 = geteuid();
  if (v4)
  {
    v5 = v4;
    if (!strncmp(v3, "user.uid.", 9uLL))
    {
      snprintf(msg, 0x3FuLL, "%s%d", "user.uid.", v5);
      v30 = strlen(msg);
      if (strncmp(v3, msg, v30) || v3[v30] && v3[v30] != 46)
      {
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v32 = geteuid();
        if (has_internal_diagnostics)
        {
          sub_299E3D2E8("BUG IN LIBNOTIFY CLIENT: registration held for restricted name %s with process uid %d", v3, v32);
        }

        else
        {
          sub_299E3D364(v32, "BUG IN LIBNOTIFY CLIENT: registration held for restricted name %s with process uid %d", v3, v32);
        }
      }
    }
  }

  v6 = *(a2 + 88);
  if (v6)
  {
    v36 = strlen(v6) + 1;
  }

  else
  {
    v36 = 0;
  }

  v7 = *(a2 + 24) & 0xF;
  v8 = -51;
  v33 = v3;
  while (1)
  {
    v9 = *(v34 + 384);
    v10 = *(a2 + 20);
    if ((*(v34 + 116) & 4) != 0)
    {
      v25 = v7 == 5 ? *(a2 + 40) : 0;
      v22 = sub_299E3F690(v9, v3, v10, v7, v25, *(a2 + 28), *(a2 + 72), *(a2 + 80), *(a2 + 88), v36, *(a2 + 96), &v38, &v37, &v39);
    }

    else
    {
      if (v7 == 5)
      {
        v11 = *(a2 + 40);
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a2 + 28);
      v35 = *(a2 + 72);
      v13 = *(a2 + 88);
      v14 = *(a2 + 96);
      memset(v46, 0, 448);
      v41 = 0x14000000000000;
      v45 = 0;
      memset(msg, 0, sizeof(msg));
      *&msg[24] = 2;
      v42 = v13;
      v43 = 16777472;
      v44 = v36;
      v45 = *MEMORY[0x29EDCA690];
      if (MEMORY[0x2A1C7C4D0])
      {
        v15 = mig_strncpy_zerofill(v46 + 8, v3, 512);
      }

      else
      {
        v15 = mig_strncpy(v46 + 8, v3, 512);
      }

      v16 = MEMORY[0x2A1C7C4D8];
      LODWORD(v46[0]) = 0;
      DWORD1(v46[0]) = v15;
      v17 = (v15 + 3) & 0xFFFFFFFC;
      v18 = &msg[v17 - 512];
      *(v18 + 146) = v10;
      *(v18 + 147) = v7;
      *(v18 + 148) = v11;
      *(v18 + 149) = v12;
      *(v18 + 600) = v35;
      *(v18 + 154) = v36;
      *(v18 + 155) = v14;
      special_reply_port = mig_get_special_reply_port();
      *&msg[8] = v9;
      *&msg[12] = special_reply_port;
      *msg = -2147478253;
      *&msg[16] = 0x3FE00000000;
      if (v16)
      {
        voucher_mach_msg_set(msg);
        v20 = *&msg[12];
      }

      else
      {
        v20 = special_reply_port;
      }

      v21 = mach_msg(msg, 3227651, v17 + 112, 0x3Cu, v20, 0, 0);
      v22 = v21;
      if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
      {
        v3 = v33;
        goto LABEL_39;
      }

      v3 = v33;
      if (v21)
      {
        mig_dealloc_special_reply_port();
        goto LABEL_39;
      }

      if (*&msg[20] == 71)
      {
        v22 = -308;
        goto LABEL_38;
      }

      if (*&msg[20] != 1122)
      {
        v22 = -301;
        goto LABEL_38;
      }

      if ((*msg & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      if (*&msg[4] != 52)
      {
        if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v23 = 1;
          }

          else
          {
            v23 = v41 == 0;
          }

          if (v23)
          {
            v22 = -300;
          }

          else
          {
            v22 = v41;
          }
        }

        else
        {
LABEL_37:
          v22 = -300;
        }

LABEL_38:
        mach_msg_destroy(msg);
        goto LABEL_39;
      }

      if (*&msg[8])
      {
        goto LABEL_37;
      }

      v22 = v41;
      if (v41)
      {
        goto LABEL_38;
      }

      v37 = v42;
      v38 = HIDWORD(v41);
      v39 = v43;
    }

LABEL_39:
    if (!v22)
    {
      break;
    }

    usleep_NOCANCEL();
    if (__CFADD__(v8++, 1))
    {
      __assert_rtn("_notify_lib_regenerate_registration", "notify_client.c", 1495, "kstatus == KERN_SUCCESS");
    }
  }

  v26 = v39;
  if (v39 > 0x39 || ((1 << v39) & 0x208000000000001) == 0)
  {
    v28 = os_variant_has_internal_diagnostics();
    v29 = *(a2 + 20);
    if (v28)
    {
      sub_299E3D2E8("Libnotify: _notify_server_regnerate failed for name %s with status %d (flags: %x, token %d)", v3, v26, *(a2 + 24), v29);
    }

    else
    {
      sub_299E3D364(v28, "Libnotify: _notify_server_regnerate failed for name %s with status %d (flags: %x, token %d)", v3, v26, *(a2 + 24), v29);
    }
  }

  *(a2 + 28) = v38;
  **(a2 + 104) = v37;
  return 1;
}

uint32_t notify_register_signal(const char *name, int sig, int *out_token)
{
  v32 = *MEMORY[0x29EDCA608];
  v6 = sub_299E35B5C();
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", name);
  }

  if ((*(v6 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v7 = *(v6 + 592);
    if (v7 && *v7 != *(v6 + 112))
    {
      v16 = sub_299E374A4(v6);
      os_unfair_lock_unlock((v6 + 104));
      if (v16)
      {
        if (v16 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            goto LABEL_31;
          }

          goto LABEL_51;
        }

        return v16;
      }
    }

    else
    {
      os_unfair_lock_unlock((v6 + 104));
    }
  }

  if (!name)
  {
    return 1;
  }

  if (strncmp(name, "self.", 5uLL))
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    if (byte_2A1898290 != 1)
    {
      if (*(v6 + 116))
      {
        global_queue = dispatch_get_global_queue(2, 0);
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 0x40000000;
        handler[2] = sub_299E3DF9C;
        handler[3] = &unk_29F28F5D8;
        v30 = sig;
        v22 = notify_register_dispatch(name, out_token, global_queue, handler);
        if (v22 < 0xB)
        {
          return v22;
        }

        v11 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_31;
        }

        goto LABEL_51;
      }

      v13 = *(v6 + 384);
      if (v13)
      {
        goto LABEL_18;
      }

      v23 = sub_299E38CF8(v6);
      if (!v23)
      {
        v13 = *(v6 + 384);
LABEL_18:
        v14 = atomic_fetch_add_explicit((v6 + 488), 1u, memory_order_relaxed) + 1;
        memset(msg, 0, 512);
        *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
        if (MEMORY[0x2A1C7C4D0])
        {
          v15 = mig_strncpy_zerofill(&msg[1].msgh_voucher_port, name, 512);
        }

        else
        {
          v15 = mig_strncpy(&msg[1].msgh_voucher_port, name, 512);
        }

        msg[1].msgh_remote_port = 0;
        msg[1].msgh_local_port = v15;
        v24 = (v15 + 3) & 0xFFFFFFFC;
        v25 = msg + v24;
        *(v25 + 10) = v14;
        *(v25 + 11) = sig;
        msg[0].msgh_bits = 19;
        msg[0].msgh_remote_port = v13;
        msg[0].msgh_local_port = 0;
        msg[0].msgh_voucher_port = 0;
        msg[0].msgh_id = 1013;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(msg);
        }

        if (mach_msg(msg, 1, v24 + 48, 0, 0, 0, 0))
        {
          v11 = 1000000;
          v26 = os_variant_has_internal_diagnostics();
          if (v26)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
          }

          else
          {
            sub_299E3D364(v26, "Libnotify: %s failed with code %d (%d) on line %d");
          }

          return v11;
        }

        v27 = sub_299E3A038(name, -1, v14, v14, -1, 0x40000005u, sig, -1, 0, 0);
        if (!v27)
        {
          v11 = 0;
          *out_token = v14;
          return v11;
        }

        v20 = v27;
        if (v27 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            goto LABEL_31;
          }

          goto LABEL_51;
        }

        return v20;
      }

      v16 = v23;
      if (v23 >= 0xB)
      {
        v11 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_31;
        }

        goto LABEL_51;
      }

      return v16;
    }
  }

  v8 = atomic_fetch_add_explicit((v6 + 488), 1u, memory_order_relaxed) + 1;
  *&msg[0].msgh_bits = 0;
  os_unfair_lock_lock_with_options();
  v9 = sub_299E3BF34(v6 + 128, name, v8, msg);
  if (!v9)
  {
    v17 = *&msg[0].msgh_bits;
    *(*&msg[0].msgh_bits + 79) = *(*&msg[0].msgh_bits + 79) & 0xF0 | 5;
    *(v17 + 68) = 0;
    *(v17 + 56) = sig;
    v18 = *(*(v17 + 48) + 16);
    os_unfair_lock_unlock((v6 + 344));
    v19 = sub_299E3A038(name, v18, v8, v8, -1, 0x80000005, sig, -1, 0, 0);
    if (!v19)
    {
      v11 = 0;
      *out_token = v8;
      return v11;
    }

    v20 = v19;
    if (v19 >= 0xB)
    {
      v11 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (has_internal_diagnostics)
      {
        goto LABEL_31;
      }

      goto LABEL_51;
    }

    return v20;
  }

  v10 = v9;
  os_unfair_lock_unlock((v6 + 344));
  if (v10 >= 0xB)
  {
    v11 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
LABEL_31:
      sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
      return v11;
    }

LABEL_51:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d");
    return v11;
  }

  return v10;
}

uint64_t sub_299E3DF9C(uint64_t a1)
{
  v2 = getpid();
  v3 = *(a1 + 32);

  return kill(v2, v3);
}

dispatch_queue_t sub_299E3DFD4(uint64_t a1)
{
  result = dispatch_queue_create("com.apple.notify.background.local.notification", 0);
  *(*(a1 + 32) + 504) = result;
  return result;
}

uint64_t sub_299E3E00C(uint64_t a1)
{
  v1 = *(a1 + 36);
  msg.msgh_remote_port = *(a1 + 32);
  msg.msgh_local_port = 0;
  *&msg.msgh_bits = 0x1800000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = v1;
  return mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
}

uint32_t notify_register_file_descriptor(const char *name, int *notify_fd, int flags, int *out_token)
{
  v5 = flags;
  v40 = *MEMORY[0x29EDCA608];
  v8 = sub_299E35B5C();
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", name);
  }

  if ((*(v8 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v9 = *(v8 + 592);
    if (v9 && *v9 != *(v8 + 112))
    {
      v14 = sub_299E374A4(v8);
      os_unfair_lock_unlock((v8 + 104));
      if (v14)
      {
        if (v14 < 0xB)
        {
          return v14;
        }

        v10 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
LABEL_22:
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
          return v10;
        }

        goto LABEL_46;
      }
    }

    else
    {
      os_unfair_lock_unlock((v8 + 104));
    }
  }

  if (!name)
  {
    return 1;
  }

  if (!notify_fd)
  {
    return 4;
  }

  if ((v5 & 1) == 0)
  {
    if ((pipe(v39) & 0x80000000) == 0)
    {
      *notify_fd = v39[0];
      goto LABEL_24;
    }

    v10 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      goto LABEL_22;
    }

LABEL_46:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d");
    return v10;
  }

  v11 = *(v8 + 512);
  if (!v11)
  {
    return 4;
  }

  v12 = 0;
  v13 = *(v8 + 520);
  while (*(v13 + 4 * v12) != *notify_fd)
  {
    if (v11 == ++v12)
    {
      return 4;
    }
  }

  v16 = 4 * v12;
  v39[0] = *(v13 + v16);
  v39[1] = *(*(v8 + 528) + v16);
LABEL_24:
  if (!strncmp(name, "self.", 5uLL))
  {
    goto LABEL_28;
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
LABEL_28:
    v17 = atomic_fetch_add_explicit((v8 + 488), 1u, memory_order_relaxed) + 1;
    v18 = v39[1];
    aBlock[0] = 0;
    os_unfair_lock_lock_with_options();
    v19 = sub_299E3BF34(v8 + 128, name, v17, aBlock);
    if (v19)
    {
      v14 = v19;
      os_unfair_lock_unlock((v8 + 344));
      if ((v5 & 1) == 0)
      {
        close_NOCANCEL();
        close_NOCANCEL();
      }

      if (v14 >= 0xB)
      {
        v10 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (!has_internal_diagnostics)
        {
          goto LABEL_46;
        }

        goto LABEL_22;
      }

      return v14;
    }

    v23 = aBlock[0];
    *(aBlock[0] + 79) = *(aBlock[0] + 79) & 0xF0 | 4;
    *(v23 + 56) = v18;
    v24 = *(*(v23 + 48) + 16);
    os_unfair_lock_unlock((v8 + 344));
    v25 = sub_299E3A038(name, v24, v17, v17, -1, 0x80000004, -1, *notify_fd, 0, 0);
    if (v25)
    {
      if (v25 < 0xB)
      {
        return v25;
      }

      v10 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (!has_internal_diagnostics)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }

    *out_token = v17;
LABEL_52:
    sub_299E3E71C(v39[0], v39[1]);
    return 0;
  }

  if (*(v8 + 116))
  {
    v27 = v39[0];
    v26 = v39[1];
    v28 = sub_299E35B5C();
    if (*(v28 + 392))
    {
      v10 = sub_299E399D8(name, out_token, v28, 0);
      if (!v10)
      {
        v29 = sub_299E36108(*out_token);
        if (v29)
        {
          v30 = v29;
          *(v29 + 20) = *out_token;
          *(v29 + 36) = v27;
          global_queue = dispatch_get_global_queue(2, 0);
          *(v30 + 48) = global_queue;
          dispatch_retain(global_queue);
          v32 = bswap32(*(v30 + 20));
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 0x40000000;
          aBlock[2] = sub_299E3E85C;
          aBlock[3] = &unk_29F28F7B0;
          v37 = v26;
          v38 = v32;
          *(v30 + 56) = _Block_copy(aBlock);
          sub_299E3617C(v30);
          goto LABEL_52;
        }

        v10 = 18;
        if (v5)
        {
          goto LABEL_65;
        }

LABEL_64:
        close_NOCANCEL();
        close_NOCANCEL();
LABEL_65:
        if (v10 >= 0xB)
        {
          v35 = os_variant_has_internal_diagnostics();
          if (v35)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_register_file_descriptor", v10, 3645);
          }

          else
          {
            sub_299E3D364(v35, "Libnotify: %s failed with code %d on line %d", "notify_register_file_descriptor", v10, 3645);
          }

          return 1000000;
        }

        return v10;
      }
    }

    else
    {
      v10 = 19;
    }

    if (v5)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (!*(v8 + 384))
  {
    v33 = sub_299E38CF8(v8);
    if (v33)
    {
      v14 = v33;
      if ((v5 & 1) == 0)
      {
        close_NOCANCEL();
        close_NOCANCEL();
      }

      if (v14 < 0xB)
      {
        return v14;
      }

      v10 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (!has_internal_diagnostics)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }
  }

  if ((fileport_makeport() & 0x80000000) != 0)
  {
    if ((v5 & 1) == 0)
    {
      close_NOCANCEL();
      close_NOCANCEL();
    }

    v10 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (!has_internal_diagnostics)
    {
      goto LABEL_46;
    }

    goto LABEL_22;
  }

  add_explicit = atomic_fetch_add_explicit((v8 + 488), 1u, memory_order_relaxed);
  v21 = add_explicit + 1;
  if (sub_299E3EF04(*(v8 + 384), name, add_explicit + 1, 0))
  {
    if ((v5 & 1) == 0)
    {
      close_NOCANCEL();
      close_NOCANCEL();
    }

    v22 = os_variant_has_internal_diagnostics();
    v10 = 1000000;
    if (v22)
    {
      sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d");
    }

    else
    {
      sub_299E3D364(v22, "Libnotify: %s failed with code %d (%d) on line %d");
    }
  }

  else
  {
    v10 = sub_299E3A038(name, -1, v21, -1, -1, 4u, -1, *notify_fd, 0, 0);
    if (!v10)
    {
      *out_token = v21;
      sub_299E3E71C(v39[0], v39[1]);
    }
  }

  return v10;
}

void sub_299E3E71C(int a1, int a2)
{
  v4 = sub_299E35B5C();
  if (((a2 | a1) & 0x80000000) == 0)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    v6 = *(v5 + 512);
    v7 = *(v5 + 520);
    if (!v6)
    {
      goto LABEL_14;
    }

    v8 = 0;
    do
    {
      if (v7[v8] == a1)
      {
        v9 = v8;
      }

      else
      {
        v9 = -1;
      }

      ++v8;
    }

    while (v9 == -1 && v8 < v6);
    if (v9 == -1)
    {
LABEL_14:
      *(v5 + 512) = v6 + 1;
      *(v5 + 520) = reallocf(v7, 4 * (v6 + 1));
      *(v5 + 528) = reallocf(*(v5 + 528), 4 * *(v5 + 512));
      v11 = reallocf(*(v5 + 536), 4 * *(v5 + 512));
      *(v5 + 536) = v11;
      v12 = *(v5 + 520);
      if (v12 && v11 && (v13 = *(v5 + 528)) != 0)
      {
        *(v12 + 4 * v6) = a1;
        *(v13 + 4 * v6) = a2;
        v11[v6] = 1;
      }

      else
      {
        free(*(v5 + 520));
        *(v5 + 520) = 0;
        free(*(v5 + 528));
        *(v5 + 528) = 0;
        free(*(v5 + 536));
        *(v5 + 536) = 0;
        *(v5 + 512) = 0;
      }
    }

    else
    {
      ++*(*(v5 + 536) + 4 * v9);
    }

    os_unfair_lock_unlock((v5 + 104));
  }
}

void notify_peek(uint64_t a1, _DWORD *a2)
{
  v4 = sub_299E35B5C();
  if ((*(v4 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(v4 + 592);
    if (v5 && *v5 != *(v4 + 112))
    {
      v11 = sub_299E374A4(v4);
      os_unfair_lock_unlock((v4 + 104));
      if (v11)
      {
        if (v11 >= 0xB)
        {
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_peek", v11, 3899);
          }

          else
          {
            sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", "notify_peek", v11, 3899);
          }
        }

        return;
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 104));
    }
  }

  v6 = sub_299E36108(a1);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if ((*(v6 + 24) & 0x80000000) != 0)
  {
    if (a2)
    {
      os_unfair_lock_lock_with_options();
      v9 = os_set_64_ptr_find();
      if (v9)
      {
        v10 = *(v4 + 224);
        if (v10 != v9)
        {
          *a2 = *(*(v9 - v10 + 48) + 60);
        }
      }

      os_unfair_lock_unlock((v4 + 344));
    }

    goto LABEL_28;
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
    __break(0xB001u);
    return;
  }

  if ((v7[6] & 0xF) != 1)
  {
    goto LABEL_28;
  }

  v8 = *(v4 + 592);
  if (v8)
  {
    *a2 = *(v8 + 4 * v7[7]);
LABEL_28:
    sub_299E3617C(v7);
    return;
  }

  sub_299E3617C(v7);
  v13 = os_variant_has_internal_diagnostics();
  if (v13)
  {
    sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", "notify_peek", 32, 3946);
  }

  else
  {
    sub_299E3D364(v13, "Libnotify: %s failed with code %d on line %d", "notify_peek", 32, 3946);
  }
}

uint64_t notify_get_event(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4)
{
  if ((byte_2A14EFF48 & 1) == 0)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("Libnotify client using deprecated function notify_get_event; this function does nothing");
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "Libnotify client using deprecated function notify_get_event; this function does nothing");
    }

    byte_2A14EFF48 = 1;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t notify_simple_post(char *name)
{
  if ((byte_2A14EFF49 & 1) == 0)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("Libnotify client using deprecated function notify_simple_post, use notify_post instead");
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "Libnotify client using deprecated function notify_simple_post, use notify_post instead");
    }

    byte_2A14EFF49 = 1;
  }

  return notify_post(name);
}

uint64_t notify_dump_status(uint64_t a1)
{
  v1 = sub_299E35B5C();
  v2 = v1;
  if (v1[96]._os_unfair_lock_opaque || (v6 = sub_299E38CF8(v1), !v6))
  {
    if ((creat_NOCANCEL() & 0x80000000) == 0)
    {
      if ((fileport_makeport() & 0x80000000) != 0)
      {
        close_NOCANCEL();
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d (fileport_status: %d)");
        }

        else
        {
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d (fileport_status: %d)");
        }
      }

      else
      {
        os_unfair_lock_opaque = v2[96]._os_unfair_lock_opaque;
        *&msg[20] = 0u;
        *&msg[4] = 0;
        *&msg[24] = 1;
        *&msg[28] = 0;
        v16 = 1114112;
        special_reply_port = mig_get_special_reply_port();
        *&msg[8] = os_unfair_lock_opaque;
        *&msg[12] = special_reply_port;
        *msg = -2147478253;
        *&msg[16] = 0x40000000000;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(msg);
          v5 = *&msg[12];
        }

        else
        {
          v5 = special_reply_port;
        }

        v12 = mach_msg(msg, 3162115, 0x28u, 0x2Cu, v5, 0, 0);
        if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
        {
          if (v12)
          {
            mig_dealloc_special_reply_port();
          }

          else
          {
            if (*&msg[20] == 1124 && (*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8] && !*&msg[32])
            {
              close_NOCANCEL();
              return 0;
            }

            mach_msg_destroy(msg);
          }
        }

        close_NOCANCEL();
        v13 = os_variant_has_internal_diagnostics();
        if (v13)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d (kstatus: %d)");
        }

        else
        {
          sub_299E3D364(v13, "Libnotify: %s failed with code %d on line %d (kstatus: %d)");
        }
      }

      return 1000000;
    }

    v7 = 1000000;
    v9 = os_variant_has_internal_diagnostics();
    v10 = __error();
    if (v9)
    {
      sub_299E3D2E8("Libnotify: %s failed with code %d on line %d (errno: %d)");
    }

    else
    {
      sub_299E3D364(v10, "Libnotify: %s failed with code %d on line %d (errno: %d)");
    }
  }

  else
  {
    v7 = v6;
    if (v6 >= 0xB)
    {
      v7 = 1000000;
      v8 = os_variant_has_internal_diagnostics();
      if (v8)
      {
        sub_299E3D2E8("Libnotify: %s failed with code %d on line %d");
      }

      else
      {
        sub_299E3D364(v8, "Libnotify: %s failed with code %d on line %d");
      }
    }
  }

  return v7;
}

uint64_t sub_299E3EF04(unsigned int a1, const char *a2, int a3, int a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  memset(v13, 0, 464);
  memset(&v9, 0, sizeof(v9));
  v10 = 1;
  v11 = a4;
  DWORD1(v12) = 1114112;
  *(&v12 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v6 = mig_strncpy_zerofill(v13 + 8, a2, 512);
  }

  else
  {
    v6 = mig_strncpy(v13 + 8, a2, 512);
  }

  LODWORD(v13[0]) = 0;
  DWORD1(v13[0]) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  *(v13 + v7 + 8) = a3;
  v9.msgh_bits = -2147483629;
  *&v9.msgh_remote_port = a1;
  *&v9.msgh_voucher_port = 0x3F600000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v9);
  }

  return mach_msg(&v9, 1, v7 + 60, 0, 0, 0, 0);
}

uint64_t sub_299E3F050(unsigned int a1, const char *a2, int a3, int a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  memset(v13, 0, 464);
  memset(&v9, 0, sizeof(v9));
  v10 = 1;
  v11 = a4;
  DWORD1(v12) = 1310720;
  *(&v12 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v6 = mig_strncpy_zerofill(v13 + 8, a2, 512);
  }

  else
  {
    v6 = mig_strncpy(v13 + 8, a2, 512);
  }

  LODWORD(v13[0]) = 0;
  DWORD1(v13[0]) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  *(v13 + v7 + 8) = a3;
  v9.msgh_bits = -2147483629;
  *&v9.msgh_remote_port = a1;
  *&v9.msgh_voucher_port = 0x3F700000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v9);
  }

  return mach_msg(&v9, 1, v7 + 60, 0, 0, 0, 0);
}

uint64_t sub_299E3F19C(unsigned int a1, const char *a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v49 = *MEMORY[0x29EDCA608];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *(&v18 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v9 = mig_strncpy_zerofill(&v19 + 8, a2, 512);
  }

  else
  {
    v9 = mig_strncpy(&v19 + 8, a2, 512);
  }

  LODWORD(v19) = 0;
  DWORD1(v19) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  *(&v19 + v10 + 8) = a3;
  special_reply_port = mig_get_special_reply_port();
  *(&v17 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v17) = 5395;
  *&v18 = 0x40300000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v17);
    v12 = HIDWORD(v17);
  }

  else
  {
    v12 = special_reply_port;
  }

  v13 = mach_msg(&v17, 3162115, v10 + 44, 0x3Cu, v12, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (DWORD1(v18) == 71)
      {
        v14 = 4294966988;
      }

      else if (DWORD1(v18) == 1127)
      {
        if ((v17 & 0x80000000) == 0)
        {
          if (DWORD1(v17) == 36)
          {
            v14 = 4294966996;
            if (v19)
            {
              if (DWORD2(v17))
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = v19;
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_26;
        }

        v14 = 4294966996;
        if (DWORD2(v18) == 1 && *(&v17 + 4) == 52 && WORD3(v19) << 16 == 0x100000)
        {
          v14 = 0;
          v15 = HIDWORD(v18);
          *a4 = v20;
          *a5 = v15;
          return v14;
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v17);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  return v14;
}

uint64_t sub_299E3F3DC(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v7 = a1;
  v17 = 0;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v7;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x40400000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162115, 0x18u, 0x38u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 1128)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 48)
          {
            if (!*&msg[8])
            {
              v11 = *&msg[32];
              if (!*&msg[32])
              {
                v14 = DWORD1(v16);
                *a2 = v16;
                *a3 = v14;
                *a4 = DWORD2(v16);
                return v11;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v12 = 1;
            }

            else
            {
              v12 = *&msg[32] == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  return v11;
}

uint64_t sub_299E3F558(unsigned int a1, const char *a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(v10, 0, 480);
  v8 = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v5 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v5 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  *(v10 + v6 + 8) = a3;
  LODWORD(v8) = 19;
  *(&v8 + 1) = a1;
  *&v9 = 0x40500000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v8);
  }

  return mach_msg(&v8, 1, v6 + 44, 0, 0, 0, 0);
}

uint64_t sub_299E3F690(unsigned int a1, const char *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, _DWORD *a12, uint64_t *a13, int *a14)
{
  v38 = *MEMORY[0x29EDCA608];
  memset(v37, 0, 448);
  v32 = 0x14000000000000;
  v36 = 0;
  v30 = 0u;
  v31 = 0u;
  DWORD2(v31) = 2;
  v33 = a9;
  v34 = 16777472;
  v35 = a10;
  v36 = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v21 = mig_strncpy_zerofill(v37 + 8, a2, 512);
  }

  else
  {
    v21 = mig_strncpy(v37 + 8, a2, 512);
  }

  LODWORD(v37[0]) = 0;
  DWORD1(v37[0]) = v21;
  v22 = (v21 + 3) & 0xFFFFFFFC;
  v23 = &v30 + v22;
  *(v23 + 18) = a3;
  *(v23 + 19) = a4;
  *(v23 + 20) = a5;
  *(v23 + 21) = a6;
  *(v23 + 11) = a7;
  *(v23 + 12) = a8;
  *(v23 + 26) = a10;
  *(v23 + 27) = a11;
  special_reply_port = mig_get_special_reply_port();
  *(&v30 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v30) = -2147478253;
  *&v31 = 0x40600000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v30);
    v25 = HIDWORD(v30);
  }

  else
  {
    v25 = special_reply_port;
  }

  v26 = mach_msg(&v30, 3162115, v22 + 112, 0x3Cu, v25, 0, 0);
  v27 = v26;
  if ((v26 - 268435458) > 0xE || ((1 << (v26 - 2)) & 0x4003) == 0)
  {
    if (!v26)
    {
      if (DWORD1(v31) == 71)
      {
        v27 = 4294966988;
      }

      else if (DWORD1(v31) == 1130)
      {
        if ((v30 & 0x80000000) == 0)
        {
          if (DWORD1(v30) == 52)
          {
            if (!DWORD2(v30))
            {
              v27 = v32;
              if (!v32)
              {
                *a12 = HIDWORD(v32);
                *a13 = v33;
                *a14 = v34;
                return v27;
              }

              goto LABEL_26;
            }
          }

          else if (DWORD1(v30) == 36)
          {
            if (DWORD2(v30))
            {
              v28 = 1;
            }

            else
            {
              v28 = v32 == 0;
            }

            if (v28)
            {
              v27 = 4294966996;
            }

            else
            {
              v27 = v32;
            }

            goto LABEL_26;
          }
        }

        v27 = 4294966996;
      }

      else
      {
        v27 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v30);
      return v27;
    }

    mig_dealloc_special_reply_port();
  }

  return v27;
}

uint64_t sub_299E3F918(mach_port_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *MEMORY[0x29EDCA690];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 1031;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x34u, 0, 0, 0, 0);
}

uint64_t sub_299E3F998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, int a6)
{
  v8 = a1;
  *&msg[20] = 0u;
  v16 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x29EDCA690];
  *&msg[32] = a2;
  *&v16 = a3;
  v17 = 0;
  DWORD2(v16) = a6;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v8;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x40800000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(msg);
    v10 = *&msg[12];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(msg, 3162115, 0x30u, 0x38u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (*&msg[20] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&msg[20] == 1132)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 48)
          {
            if (!*&msg[8])
            {
              v12 = *&msg[32];
              if (!*&msg[32])
              {
                *a4 = v16;
                *a5 = DWORD2(v16);
                return v12;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v13 = 1;
            }

            else
            {
              v13 = *&msg[32] == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  return v12;
}