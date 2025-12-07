uint64_t oc_poll_async_prefetch_objects(uint64_t result, _BYTE *a2)
{
  *a2 = 1;
  v2 = *(result + 1376);
  if (v2)
  {
    v4 = result;
    while (1)
    {
      if ((*(*(v2 + 136) + 20) & 0x80) == 0)
      {
        result = dev_read_poll(*(*(v4 + 392) + 384));
        if (result != 36)
        {
          break;
        }
      }

      v2 = *(v2 + 104);
      if (!v2)
      {
        return result;
      }
    }

    return obj_async_finish(v2, a2);
  }

  return result;
}

uint64_t apfs_encryption_state_for_object(uint64_t result, int a2, uint64_t *a3)
{
  v4 = *(result + 504);
  if (!v4)
  {
    v4 = result;
  }

  v5 = *(v4 + 376);
  v6 = *a3;
  if (*(v5 + 264))
  {
    v12 = v6 & 0xFFFFFFFFEFFF03FFLL;
  }

  else
  {
    v8 = result;
    v9 = v6 | 0x10000000;
    *a3 = v9;
    if (a2 == 36 || (has_secondary_fsroot = apfs_has_secondary_fsroot(result), v9 = *a3, a2 == 37) && has_secondary_fsroot)
    {
      v11 = v9 & 0xFFFFFFFFFFFF1FFFLL | 0x2000;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFF1FFFLL;
    }

    *a3 = v11;
    result = apfs_has_secondary_fsroot(v8);
    v13 = 1024;
    if (!result)
    {
      v13 = 0;
    }

    v12 = *a3 & 0xFFFFFFFFFFFFE3FFLL | v13;
  }

  *a3 = v12;
  return result;
}

uint64_t obj_initting_wait(uint64_t *a1)
{
  v1 = *a1;
  v5 = xmmword_23D298FF0;
  v2 = a1[2];
  result = cv_wait_rw((v1 + 1328), v1, 2, (&v5 & (v2 << 23 >> 63)));
  if ((v2 & 0x10000000000) != 0 && *(v1 + 1376))
  {
    v4 = 0;
    result = oc_poll_async_prefetch_objects(v1, &v4);
    if ((v4 & 1) == 0)
    {
      return pthread_mutex_lock(v1);
    }
  }

  return result;
}

unint64_t obj_get_async_read(uint64_t a1, void (*a2)(uint64_t a1, int8x16_t a2, int8x16_t a3), _OWORD *a3, _WORD *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, _BYTE *a9)
{
  v9 = a8;
  *a9 = 0;
  v17 = _apfs_calloc_typed(1uLL, 0xA8uLL, 0x10A20403EA893BFuLL);
  if (!v17)
  {
    v21 = 12;
    goto LABEL_15;
  }

  v18 = v17;
  if (a4)
  {
    if (*a4 == 25987)
    {
      if (!a4[1])
      {
        v20 = 0;
        v19 = v17[20];
        goto LABEL_17;
      }

      v19 = _apfs_malloc_typed(a4[1], 0x100004052888210uLL);
      bzero(v19, a4[1]);
      v18[20] = v19;
      if (v19)
      {
        v20 = a4[1];
LABEL_17:
        memcpy(v19, a4, v20);
        *(v18 + 152) = 1;
        goto LABEL_18;
      }

      v21 = 12;
    }

    else
    {
      if (!a5)
      {
        a5 = *(a1 + 392);
      }

      if (*(a5 + 36) == 13)
      {
        v22 = (a5 + 4040);
      }

      else
      {
        v22 = (*(a5 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x: attempt to perform async fetch without proper init args\n", "obj_get_async_read", 3775, v22, *(a6 + 112), a2, *(a6 + 36), *(a6 + 40));
      v21 = 22;
    }

    _apfs_free(v18, 168);
LABEL_15:
    *a9 = 1;
    return v21;
  }

LABEL_18:
  pthread_mutex_lock(a1);
  v18[13] = 0;
  v23 = *(a1 + 1384);
  v18[14] = v23;
  *v23 = v18;
  *(a1 + 1384) = v18 + 13;
  obj_cache_unlock_write(a1);
  *v18 = obj_get_callback;
  v18[17] = a6;
  *(v18 + 15) = *a3;
  v18[18] = a2;
  if ((~atomic_fetch_add_explicit((a6 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", a6);
  }

  atomic_fetch_add_explicit((a1 + 944), 1u, memory_order_relaxed);
  v21 = obj_read(a6, a7, v9, v18);
  if (!v21)
  {
    *a9 = 1;
    pthread_mutex_lock(a1);
    v24 = *(a6 + 16);
    v25 = v24 & 0xFFFFFF7FFFFFFFFBLL;
    if ((v9 & 0xE0) != 0)
    {
      v25 = v24 & 0xFFFFFF7FFFFF1FFBLL | (v9 << 8) & 0xE000;
    }

    if ((v9 & 0x700) != 0)
    {
      v25 = v25 & 0xFFFFFFFFFFFFE3FFLL | (4 * v9) & 0x1C00;
    }

    *(a6 + 16) = v25;
    obj_cache_unlock_write(a1);
    if ((v24 & 4) != 0)
    {
      cv_wakeup((a1 + 1328));
    }

    return 0;
  }

  return v21;
}

unint64_t obj_read(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 128);
  v8 = *(a1 + 8);
  if (v7)
  {
    v9 = *(a1 + 36);
    if ((a3 & 4) != 0 && v8)
    {
      *(a1 + 36) = v9 | 0x10000000;
      if ((*(a1 + 21) & 8) != 0)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        if ((a3 & 8) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (a3 >> 5 == 1)
        {
          v10 = (a3 & 0x10) == 0;
          v11 = 824;
          v12 = 632;
        }

        else
        {
          if (a3 >> 5)
          {
            panic("invalid crypto index %d\n");
          }

          v10 = (a3 & 0x10) == 0;
          v11 = 728;
          v12 = 536;
        }

        if (!v10)
        {
          v12 = v11;
        }

        v14 = (a3 >> 8) & 7;
        v16 = v8 + v12;
        if (v14)
        {
          if (v14 != 1)
          {
            panic("invalid tweak type %d\n");
          }

          v15 = *(a1 + 112) ^ HIDWORD(a2) | *(a1 + 112) & 0xFFFFFFFF00000000 ^ (a2 << 32);
          v14 = 4;
          if ((a3 & 8) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v15 = (a3 >> 8) & 7;
          if ((a3 & 8) != 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) = v9 & 0xEFFFFFFF;
      if ((a3 & 8) != 0)
      {
        goto LABEL_26;
      }
    }

    if ((*(a1 + 21) & 8) == 0)
    {
LABEL_27:
      if (v16 && (v18 = *(v8 + 1144)) != 0)
      {
        v19 = *(*a1 + 392);
      }

      else
      {
        v19 = *(*a1 + 392);
        v18 = *(v19 + 384);
      }

      extended = dev_read_extended(v18, v7, (*(a1 + 48) + *(*(v19 + 376) + 36) - 1) / *(*(v19 + 376) + 36), *(a1 + 56), v16, a4 != 0, a4, v15, v14);
      v17 = extended;
      if (!a4 && !extended)
      {
        if ((*(a1 + 18) & 0x8002000) != 0)
        {
          return 0;
        }

        else
        {
          v17 = obj_checksum_verify(a1, v21, v22);
          if (v17)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v24 = (v23 + 4040);
            }

            else
            {
              v24 = (*(*(*a1 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x paddr 0x%llx error verifying checksum\n", "obj_read", 6614, v24, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 128));
          }
        }
      }

      return v17;
    }

LABEL_26:
    *(a1 + 120) = a2;
    goto LABEL_27;
  }

  if (v8)
  {
    v13 = (v8 + 4040);
  }

  else
  {
    v13 = (*(*(*a1 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x object missing paddr!\n", "obj_read", 6571, v13, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40));
  v17 = 22;
  if (a4)
  {
    *(a4 + 96) = 22;
    (*a4)(a4);
  }

  return v17;
}

uint64_t obj_init(uint64_t a1, __int16 a2, uint64_t a3, _DWORD *a4, uint64_t a5, unint64_t a6, int a7, int a8)
{
  v12 = *(a1 + 16);
  if ((v12 & 0x80020000000) != 0)
  {
LABEL_2:
    v13 = 0;
    if ((a2 & 0x210) == 0 && a4)
    {
      v26 = 0;
      v14 = obj_descriptor_funcs_for_type(*(a1 + 36), &v26);
      if (v14)
      {
        v13 = v14;
      }

      else
      {
        v19 = *(v26 + 8);
        if (v19)
        {
          v13 = v19(a1, a5);
          v12 = *(a1 + 16);
        }

        else
        {
          v13 = 0;
        }
      }
    }

    goto LABEL_31;
  }

  v15 = *(a1 + 56);
  v16 = *(v15 + 16);
  *(a1 + 120) = v16;
  if (!a8)
  {
    *(a1 + 40) = *(v15 + 28);
  }

  if ((!a7 || ((*(v15 + 24) ^ a7) & 0xEFFFFFFF) == 0) && (!a8 || *(v15 + 28) == a8) && *(v15 + 8) == a3)
  {
    v13 = 0;
    if (!a6 || v16 <= a6)
    {
LABEL_19:
      if (!a4)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  if ((a2 & 0x20) != 0)
  {
    v13 = 2;
    goto LABEL_19;
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = (v17 + 4040);
  }

  else
  {
    v18 = (*(*(*a1 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s wrong object at 0x%llx - wanted oid 0x%llx type 0x%x:0x%x xid %lld - got oid 0x%llx type 0x%x:0x%x xid %lld\n", "obj_init", 3392, v18, *(a1 + 128), a3, a7, a8, a6, *(v15 + 8), *(v15 + 24), *(v15 + 28), v16);
  v13 = nx_corruption_detected_int(*(*a1 + 392));
  if (!a4)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (*a4)
  {
    v20 = *(a1 + 36);
    goto LABEL_28;
  }

LABEL_27:
  v21 = *(a1 + 56);
  v20 = *(v21 + 24) | (*(a1 + 38) << 16);
  LODWORD(v21) = *(v21 + 28);
  *(a1 + 36) = v20;
  *(a1 + 40) = v21;
LABEL_28:
  v12 = *(a1 + 16);
  v22 = v20 & 0x10000000;
  if ((v12 & 0x10000000) != v22)
  {
    v12 = v12 & 0xFFFFFFFFEFFFFFFFLL | v22;
    *(a1 + 16) = v12;
  }

  if (!v13)
  {
    goto LABEL_2;
  }

LABEL_31:
  *(a1 + 52) = v13;
  if (v13)
  {
    v23 = 0;
  }

  else
  {
    v23 = (a2 & 0x10) == 0;
  }

  v24 = 0xFFFFFE7FFFFFFFF9;
  if (!v23)
  {
    v24 = 0xFFFFFE7FFFFFFFFBLL;
  }

  *(a1 + 16) = v12 & v24;
  if ((v12 & 4) != 0)
  {
    cv_wakeup((*a1 + 1328));
  }

  return v13;
}

uint64_t obj_get_finish(atomic_uint *a1, uint64_t a2, unint64_t a3, int a4, unsigned int *a5, _BYTE *a6)
{
  v6 = *(a1 + 2);
  if ((v6 & 0x10) != 0)
  {
    return 2;
  }

  v8 = a2;
  v10 = *a1;
  v11 = a2 & 0x40 | ~v6 & 0x1000000008;
  v12 = (v6 >> 46) & 1;
  if ((a2 & 0x100000040) != 0)
  {
    LODWORD(v12) = 0;
  }

  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    if (*a6 == 1)
    {
      *a6 = 2;
    }

    if (!v11)
    {
      v14 = *(a1 + 2) & 0xFFFFFFEFFFFFFFF7;
      *(a1 + 2) = v14;
      if ((a2 & 0x100000000) != 0)
      {
        *(a1 + 2) = v14 | 0x400000000000;
      }
    }

    if (v12)
    {
      *(a1 + 2) &= ~0x400000000000uLL;
    }
  }

  if (a4 && (obj_reference_release_wait(a1, a5, 0, *a6) & 1) != 0)
  {
    return 35;
  }

  if ((atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFD, memory_order_relaxed) & 2) != 0)
  {
    cv_wakeup((v10 + 1328));
  }

  if ((a1[8] & 1) == 0 && (*(a1 + 19) & 0x80) == 0)
  {
    v16 = pthread_rwlock_rdlock((v10 + 128));
    if (v16)
    {
      panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3490, v16);
    }

    if (*(a1 + 11) != 3735928559)
    {
      obj_cache_enqueue_deferred_update(v10, a1);
    }

    v17 = pthread_rwlock_unlock((v10 + 128));
    if (v17)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3494, v17);
    }
  }

  result = 0;
  if ((v8 & 0xC8000000) == 0 && a3)
  {
    result = 0;
    v18 = *(a1 + 21);
    if (v18 <= a3)
    {
      v18 = a3;
    }

    *(a1 + 21) = v18;
  }

  return result;
}

void obj_destroy_internal(atomic_uint *a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *(a1 + 9);
    v7 = *(a1 + 10);
    if (v6)
    {
      *(v6 + 80) = v7;
    }

    *v7 = v6;
    *(a1 + 2) = v5 & 0xFFFFFFFFFFFFFFFELL;
  }

  v8 = atomic_load_explicit(a1 + 8, memory_order_acquire) & 0x10;
  if (*(a1 + 11) != 3735928559 || v8 != 0)
  {
    v10 = pthread_rwlock_wrlock((v4 + 128));
    if (v10)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3080, v10);
    }

    v11 = *(a1 + 11);
    if (v11 == 3735928559)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 2);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = *(a1 + 12);
      v14 = 768;
      if ((*(a1 + 2) & 0x8000000) == 0)
      {
        v14 = 752;
      }

      v15 = (v4 + v14);
      if (v11)
      {
        v15 = (v11 + 96);
      }

      *v15 = v13;
      *v13 = v11;
    }

    else
    {
      if ((a1[8] & 1) == 0)
      {
        obj_free_list_remove(a1);
LABEL_21:
        v16 = atomic_fetch_and_explicit(a1 + 8, 0xFFFFEFu, memory_order_relaxed);
        if ((v16 & 0x10) != 0)
        {
          *(*(v4 + 896) + 8 * HIBYTE(v16)) = 0;
        }

        v17 = pthread_rwlock_unlock((v4 + 128));
        if (v17)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3108, v17);
        }

        goto LABEL_25;
      }

      if (*(v4 + 888) == a1)
      {
        *(v4 + 888) = v11;
      }

      v22 = *(a1 + 12);
      if ((v12 & 0x40000000) != 0)
      {
        v24 = (v4 + 848);
        if (v11)
        {
          v24 = (v11 + 96);
        }

        *v24 = v22;
        *v22 = v11;
        --*(v4 + 912);
      }

      else
      {
        v23 = (v4 + 832);
        if (v11)
        {
          v23 = (v11 + 96);
        }

        *v23 = v22;
        *v22 = v11;
        --*(v4 + 908);
      }
    }

    *(a1 + 11) = 3735928559;
    goto LABEL_21;
  }

LABEL_25:
  if ((a2 & 1) != 0 || !obj_destroy_for_obj(a1))
  {

    obj_destroy_complete(a1, 1);
  }

  else
  {
    if (*(v4 + 728))
    {
      v18 = *(v4 + 736);
      v21 = *(v18 + 72);
      v19 = (v18 + 72);
      v20 = v21;
      *(a1 + 9) = v21;
      if (v21)
      {
        *(v20 + 80) = a1 + 18;
      }
    }

    else
    {
      v19 = (v4 + 728);
      *(a1 + 9) = 0;
    }

    *v19 = a1;
    *(a1 + 10) = v19;
    *(v4 + 736) = a1;
  }
}

uint64_t obj_lock(uint64_t a1, char a2)
{
  if (a2)
  {
    if (pthread_rwlock_rdlock((a1 + 176)))
    {
      panic("%s:%d: rdlock == 0 failed %d\n");
    }
  }

  else
  {
    if ((a2 & 2) == 0)
    {
      panic("invalid lock flags: 0x%x\n");
    }

    if (pthread_rwlock_wrlock((a1 + 176)))
    {
      panic("%s:%d: wrlock == 0 failed %d\n");
    }
  }

  return 0;
}

uint64_t obj_modify(void *a1, char a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 392);
  if (a1[1])
  {
    v8 = a1[1];
  }

  else
  {
    v8 = *(*a1 + 392);
  }

  v9 = a1[2];
  if ((v9 & 0x8000000) == 0)
  {
    if (*(v7 + 627))
    {
      return 30;
    }

    if (!xid_is_current_tx(*(*a1 + 392), a3))
    {
      return 22;
    }

    v9 = a1[2];
  }

  if ((v9 & 0x10000000000) != 0)
  {
    if (*(v8 + 36) == 13)
    {
      v15 = (v8 + 4040);
    }

    else
    {
      v15 = (*(v8 + 384) + 212);
    }

    log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x can't modify object before read completes\n", "obj_modify", 5740, v15, a1[14], v9, *(a1 + 8), *(a1 + 9), *(a1 + 10));
    return 22;
  }

  v11 = a1[8];
  if (v11 && v11 == a1[7])
  {
    v12 = *(a1 + 12);
    v13 = _apfs_obj_zalloc(v12, *(v6 + 952));
    obj_cache_stats_update_zalloc((v6 + 976), v9, v13, v12);
    obj_cache_stats_update_zalloc((omm + 136), v9, v13, v12);
    if (!v13)
    {
      return 12;
    }

    for (i = (a1 + 4); (atomic_fetch_or_explicit(i, 8u, memory_order_acquire) & 8) != 0; i = (a1 + 4))
    {
      pthread_mutex_lock((v6 + 328));
      pthread_mutex_unlock((v6 + 328));
    }

    v16 = a1[8];
    if (v16 && (v17 = a1[7], v16 == v17))
    {
      memcpy(v13, v17, v12);
      a1[8] = v13;
      atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFF7, memory_order_release);
    }

    else
    {
      atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFF7, memory_order_release);
      fs_obj_zfree_oc(v13, v12, a1[2], v6);
    }
  }

  v18 = a1[2];
  if ((v18 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v18 & 0x40000000) == 0)
  {
    if ((v18 & 0xC00000000) != 0 || a1[15] == a3)
    {
      return 0;
    }

    pthread_mutex_lock(v6);
    while (1)
    {
      v19 = a1[2];
      if ((v19 & 0xC00000000) != 0 || a1[15] == a3)
      {
        break;
      }

      v20 = *(*(v7 + 376) + 36);
      v21 = *(a1 + 12);
      v39 = 0;
      if ((v19 & 0x100000000) == 0)
      {
        a1[2] = v19 | 0x100000000;
        v26 = (v20 + v21 - 1) / v20;
        obj_cache_unlock_write(v6);
        v10 = spaceman_reserve(v8, 0x48u, v26, a3, &v39);
        pthread_mutex_lock(v6);
        v27 = a1[2];
        a1[2] = v27 & 0xFFFFFFFCFFFFFFFFLL;
        if (v10)
        {
          if (*(v8 + 36) == 13)
          {
            v28 = (v8 + 4040);
          }

          else
          {
            v28 = (*(v8 + 384) + 212);
          }

          log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error reserving %d blocks of space: %d\n", "obj_modify", 5856, v28, a1[14], v27 & 0xFFFFFFFCFFFFFFFFLL, *(a1 + 8), *(a1 + 9), *(a1 + 10), v26, v10);
        }

        else
        {
          v29 = 0x800000000;
          if ((v39 & 0x10) == 0)
          {
            v29 = 0x400000000;
          }

          a1[2] = v29 & 0xFFFFEFFFFFFFFFFFLL | ((((v39 & 0x10000) >> 16) & 1) << 44) | v27 & 0xFFFFFFFCFFFFFFFFLL;
        }

        obj_cache_unlock_write(v6);
        if ((v27 & 0x200000000) != 0)
        {
          cv_wakeup((v6 + 1328));
        }

        return v10;
      }

      a1[2] = v19 | 0x200000000;
      cv_wait_rw((v6 + 1328), v6, 2, 0);
    }

    goto LABEL_42;
  }

  if (a2 & 2) == 0 || (a1[4])
  {
    return 0;
  }

  pthread_mutex_lock(v6);
  if (a1[4])
  {
LABEL_42:
    obj_cache_unlock_write(v6);
    return 0;
  }

  v22 = a1[19];
  if (v22)
  {
LABEL_41:
    obj_dirty_locked(a1, a3, v22);
    goto LABEL_42;
  }

  if (a1[15] == a3)
  {
    v22 = a1[16];
    goto LABEL_41;
  }

  v24 = (*(*(v7 + 376) + 36) + *(a1 + 12) - 1) / *(*(v7 + 376) + 36);
  atomic_fetch_or_explicit(a1 + 8, 1u, memory_order_relaxed);
  obj_cache_unlock_write(v6);
  if ((*(a1 + 19) & 0x10) != 0)
  {
    v38 = 0;
  }

  else
  {
    if (*(a1 + 18) == 11 || *(a1 + 20) == 11)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v38 = v25;
  }

  v30 = spaceman_alloc(v8, 72, v24, a3, &v38, 0);
  if (v30)
  {
    v31 = v30;
    if (*(v8 + 36) == 13)
    {
      v32 = (v8 + 4040);
    }

    else
    {
      v32 = (*(v8 + 384) + 212);
    }

    v37 = *(a1 + 8);
    v36 = a1 + 4;
    log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error allocating new location %d\n", "obj_modify", 5914, v32, v36[10], *(v36 - 2), v37, *(v36 + 1), *(v36 + 2), v30);
    pthread_mutex_lock(v6);
    atomic_fetch_and_explicit(v36, 0xFFFFFFFE, memory_order_relaxed);
    obj_cache_unlock_write(v6);
    return v31;
  }

  else
  {
    pthread_mutex_lock(v6);
    v33 = a1[16];
    atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFE, memory_order_relaxed);
    obj_dirty_locked(a1, a3, v38);
    obj_cache_unlock_write(v6);
    v34 = spaceman_free(v8, 64, v33, v24, a3);
    v10 = v34;
    if (v34)
    {
      if (*(v8 + 36) == 13)
      {
        v35 = (v8 + 4040);
      }

      else
      {
        v35 = (*(v8 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error freeing old space @ 0x%llx: %d\n", "obj_modify", 5932, v35, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10), v33, v34);
    }
  }

  return v10;
}

uint64_t obj_unlock(uint64_t a1, char a2)
{
  if (a2)
  {
    if (pthread_rwlock_unlock((a1 + 176)))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((a2 & 2) == 0)
    {
      panic("invalid unlock flags: 0x%x\n");
    }

    if (pthread_rwlock_unlock((a1 + 176)))
    {
LABEL_7:
      panic("%s:%d: unlock == 0 failed %d\n");
    }
  }

  return 0;
}

uint64_t obj_checkpoint_get(pthread_mutex_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, uint64_t *a9)
{
  v51 = a7;
  v52 = a5;
  v49 = 0;
  if (!a4)
  {
    return 22;
  }

  if (a4[3] < 0x178)
  {
    return 22;
  }

  v10 = a4[2];
  if (!v10)
  {
    return 22;
  }

  v12 = *(*(*a1[6].__opaque + 376) + 36);
  if (v10 % v12)
  {
    return 22;
  }

  LODWORD(v16) = a6;
  v50 = 0;
  v20 = a2 | (*(a4 + 1) << 16);
  pthread_mutex_lock(a1);
  v47 = v20;
  v21 = obj_alloc(a1, a4[3], *a4, a4[2], v20, 0, &v50);
  if (v21)
  {
    v13 = v21;
    goto LABEL_51;
  }

  v22 = a4[1];
  v23 = *a4 | v20 & 0xFFFF0000;
  v24 = v50;
  *(v50 + 36) = v23;
  *(v24 + 40) = v22;
  *(v24 + 112) = a3;
  *(v24 + 120) = a8;
  *(v24 + 16) |= v20 & 0xA000FC00 | (a2 << 34) & 0x80000000000 | 0x2000000002;
  *(v24 + 128) = a5;
  if ((~atomic_fetch_add_explicit((v24 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", v24);
  }

  obj_cache_unlock_write(a1);
  if ((v10 + v12 - 1) / v12 <= a7)
  {
    v35 = obj_read(v24, 0, 0, 0);
    goto LABEL_28;
  }

  v25 = *(v24 + 56);
  v26 = (v10 + v12 - 1) / v12;
  do
  {
    if (v51 >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v51;
    }

    v28 = dev_read(*(*(*v24 + 392) + 384));
    if (v28)
    {
      v13 = v28;
      goto LABEL_36;
    }

    v26 -= v27;
    if (!v26)
    {
      goto LABEL_25;
    }

    v31 = *a1[6].__opaque;
    v32 = v31[47];
    if (v16 + v27 >= (*(v32 + 108) & 0x7FFFFFFFu))
    {
      v16 = 0;
    }

    else
    {
      v16 = (v16 + v27);
    }

    v25 += v27 * *(v32 + 36);
    v33 = nx_checkpoint_data_block_address(v31, v16, &v52, &v51);
  }

  while (v26 >= 1 && v33 == 0);
  v13 = v33;
  if (v33)
  {
LABEL_36:
    pthread_mutex_lock(a1);
    goto LABEL_49;
  }

LABEL_25:
  if ((*(v24 + 18) & 0x8002000) != 0)
  {
    pthread_mutex_lock(a1);
    goto LABEL_29;
  }

  v35 = obj_checksum_verify(v24, v29, v30);
LABEL_28:
  v13 = v35;
  pthread_mutex_lock(a1);
  if (v13)
  {
LABEL_49:
    v43 = *(v24 + 16);
    v41 = *(v24 + 48);
    v42 = a1;
    goto LABEL_50;
  }

LABEL_29:
  if ((*(v24 + 18) & 0x8002000) == 0)
  {
    v44 = *(v24 + 56);
    if (*(v44 + 24) != *(v24 + 36) || *(v44 + 28) != *(v24 + 40) || *(v44 + 8) != a3 || *(v44 + 16) != a8)
    {
      v13 = nx_corruption_detected_int(*a1[6].__opaque);
      if (v13)
      {
        goto LABEL_49;
      }
    }
  }

  v36 = (*a1[11].__opaque + 8 * (*(v24 + 112) & LODWORD(a1[11].__sig)));
  v37 = *v36;
  *(v24 + 72) = *v36;
  if (v37)
  {
    *(v37 + 80) = v24 + 72;
  }

  *v36 = v24;
  *(v24 + 80) = v36;
  v38 = *(v24 + 16) | 1;
  *(v24 + 88) = 0;
  *(v24 + 16) = v38;
  v39 = *&a1[11].__opaque[40];
  *(v24 + 96) = v39;
  *v39 = v24;
  *&a1[11].__opaque[40] = v24 + 88;
  v40 = obj_descriptor_funcs_for_type(*(v24 + 36), &v49);
  if (v40)
  {
    v13 = v40;
    goto LABEL_34;
  }

  v45 = *(v49 + 8);
  if (v45 && (v46 = v45(v24, 0), v46))
  {
    v13 = v46;
    v38 = *(v24 + 16);
LABEL_34:
    v41 = *(v24 + 48);
    v42 = a1;
    LODWORD(v43) = v38;
LABEL_50:
    obj_cache_ephemeral_adjust(v42, v43, v41, -1);
    atomic_fetch_add_explicit((v24 + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_destroy_internal(v24, 0);
LABEL_51:
    obj_cache_unlock_write(a1);
  }

  else
  {
    obj_init_wakeup(v24, v47);
    obj_cache_unlock_write(a1);
    v13 = 0;
    *a9 = v24;
  }

  return v13;
}

unint64_t obj_checksum_verify(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = *(*a1 + 392);
  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  result = fletcher64_verify_cksum(v5, (v5 + 1), (v6 - 8), 0, a2, a3);
  if (result)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = (v8 + 4040);
    }

    else
    {
      v9 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s failed: cksum 0x%016llx, oid 0x%llx, o_xid 0x%llx, o_type 0x%x, o_subtype 0x%x, size %d\n", "obj_checksum_verify", 7004, v9, *v5, v5[1], v5[2], *(v5 + 6), *(v5 + 7), v6);
    atomic_fetch_add_explicit((*(v4 + 376) + 992), 1uLL, memory_order_relaxed);
    if (*(v4 + 625) == 1)
    {
      v10 = *(v4 + 616);
      if (v10)
      {
        v10(a1);
      }
    }

    return nx_corruption_detected_int(v4);
  }

  return result;
}

uint64_t obj_async_wait(uint64_t a1)
{
  v2 = *a1;
  v7 = 0;
  pthread_mutex_lock(v2);
  while (1)
  {
    v3 = *(v2 + 1376);
    if (!v3)
    {
LABEL_8:
      if (*(a1 + 21))
      {
        v5 = 2;
      }

      else
      {
        v5 = *(a1 + 52);
      }

      obj_cache_unlock_write(v2);
      return v5;
    }

    while (*(v3 + 136) != a1)
    {
      v3 = *(v3 + 104);
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    v4 = *(a1 + 16);
    if ((v4 & 0x8000000000) == 0)
    {
      break;
    }

    *(a1 + 16) = v4 | 4;
    cv_wait_rw((v2 + 1328), v2, 2, 0);
  }

  obj_async_finish(v3, &v7);
  if (v7 == 1)
  {
    obj_cache_unlock_write(v2);
  }

  return *(a1 + 52);
}

uint64_t obj_async_finish(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 136);
  v3 = v2[2];
  if ((v3 & 0x10000000000) != 0)
  {
    v5 = *v2;
    while ((v3 & 0x8000000000) != 0)
    {
      v2[2] = v3 | 4;
      *a2 = 1;
      result = cv_wait_rw((v5 + 1328), v5, 2, 0);
      v3 = v2[2];
      if ((v3 & 0x10000000000) == 0)
      {
        return result;
      }
    }

    v2[2] = v3 | 0x8000000000;
    obj_cache_unlock_write(v5);
    *a2 = 0;
    v6 = *(*(*v2 + 392) + 384);

    return dev_read_finish(v6);
  }

  return result;
}

atomic_ullong *obj_retain(atomic_ullong *result)
{
  if ((~atomic_fetch_add_explicit(result + 3, 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", result);
  }

  return result;
}

uint64_t obj_retain_ephemeral_no_ref(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 0x80000000) == 0)
  {
    panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx is not ephemeral\n", result, *(result + 112), v1, *(result + 32), *(result + 36), *(result + 40), *(result + 24));
  }

  if ((~atomic_fetch_add_explicit((result + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", result);
  }

  return result;
}

uint64_t obj_cache_enqueue_deferred_update(uint64_t result, uint64_t a2)
{
  if ((atomic_fetch_or_explicit((a2 + 32), 0x10u, memory_order_relaxed) & 0x10) == 0)
  {
    v2 = result;
    add_explicit = atomic_fetch_add_explicit((result + 904), 1u, memory_order_relaxed);
    if (add_explicit >= 0x100)
    {
      v7 = a2;
      do
      {
        atomic_fetch_add_explicit((v2 + 904), 0xFFFFFFFF, memory_order_relaxed);
        v4 = pthread_rwlock_unlock((v2 + 128));
        if (v4)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 496, v4);
        }

        v5 = pthread_rwlock_wrlock((v2 + 128));
        if (v5)
        {
          panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 497, v5);
        }

        obj_cache_perform_deferred_updates(v2);
        v6 = pthread_rwlock_unlock((v2 + 128));
        if (v6)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 503, v6);
        }

        result = pthread_rwlock_rdlock((v2 + 128));
        if (result)
        {
          panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 506, result);
        }

        add_explicit = atomic_fetch_add_explicit((v2 + 904), 1u, memory_order_relaxed);
      }

      while (add_explicit > 0xFF);
      a2 = v7;
    }

    *(*(v2 + 896) + 8 * add_explicit) = a2;
    atomic_fetch_or_explicit((a2 + 32), add_explicit << 24, memory_order_relaxed);
  }

  return result;
}

uint64_t obj_ephemeral_set_persistent(uint64_t a1, int a2)
{
  if ((*(a1 + 19) & 0x80) == 0)
  {
    return 22;
  }

  v5 = *a1;
  pthread_mutex_lock(*a1);
  v6 = *(a1 + 16);
  if ((a2 != 0) != ((v6 & 0x8000000) == 0))
  {
    obj_cache_ephemeral_adjust(v5, v6, *(a1 + 48), -1);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    v7 = a1 + 88;
    v10 = (v8 + 96);
    if (a2)
    {
      if (!v8)
      {
        v10 = v5 + 12;
      }

      v10->__sig = v9;
      *v9 = v8;
      v11 = *(a1 + 16);
      *(a1 + 16) = v11 & 0xFFFFFFFFF7FFFFFFLL;
      *(a1 + 36) &= ~0x8000000u;
      if ((v11 & 0x80020000000) == 0)
      {
        *(*(a1 + 56) + 24) &= ~0x8000000u;
      }

      v12 = *&v5[11].__opaque[40];
      *(a1 + 88) = 0;
      *(a1 + 96) = v12;
      *v12 = a1;
      *&v5[11].__opaque[40] = v7;
      v13 = *(a1 + 48);
      atomic_fetch_add_explicit(&v5[19].__opaque[32], -v13, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5[19].__opaque[48], v13, memory_order_relaxed);
      atomic_fetch_add_explicit(v5[20].__opaque, 1uLL, memory_order_relaxed);
      v14 = omm;
      v15 = *(a1 + 48);
      atomic_fetch_add_explicit((omm + 416), -v15, memory_order_relaxed);
      atomic_fetch_add_explicit((v14 + 432), v15, memory_order_relaxed);
      atomic_fetch_add_explicit((v14 + 448), 1uLL, memory_order_relaxed);
      v16 = &v5[18].__opaque[48];
      if (*(a1 + 56))
      {
        v17 = *(a1 + 48);
        atomic_fetch_add_explicit(v16, v17, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5[19].__sig, v17, memory_order_relaxed);
        v18 = 3;
      }

      else
      {
        v18 = 5;
      }

      atomic_fetch_add_explicit(&v16[v18], 1uLL, memory_order_relaxed);
      v27 = omm;
      v28 = (omm + 368);
      if (*(a1 + 56))
      {
        v29 = *(a1 + 48);
        atomic_fetch_add_explicit(v28, v29, memory_order_relaxed);
        v30 = (v27 + 376);
LABEL_23:
        atomic_fetch_add_explicit(v30, v29, memory_order_relaxed);
        v32 = 3;
LABEL_25:
        atomic_fetch_add_explicit(&v28[v32], 1uLL, memory_order_relaxed);
        obj_cache_ephemeral_adjust(v5, *(a1 + 16), *(a1 + 48), 1);
        goto LABEL_26;
      }
    }

    else
    {
      if (!v8)
      {
        v10 = (v5 + 752);
      }

      v10->__sig = v9;
      *v9 = v8;
      v19 = *(a1 + 16);
      *(a1 + 16) = v19 | 0x8000000;
      *(a1 + 36) |= 0x8000000u;
      if ((v19 & 0x80020000000) == 0)
      {
        *(*(a1 + 56) + 24) |= 0x8000000u;
      }

      sig = v5[12].__sig;
      *(a1 + 88) = 0;
      *(a1 + 96) = sig;
      *sig = a1;
      v5[12].__sig = v7;
      v21 = *(a1 + 48);
      atomic_fetch_add_explicit(&v5[18].__opaque[48], -v21, memory_order_relaxed);
      atomic_fetch_add_explicit(v5[19].__opaque, v21, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5[19].__opaque[16], 1uLL, memory_order_relaxed);
      v22 = omm;
      v23 = *(a1 + 48);
      atomic_fetch_add_explicit((omm + 368), -v23, memory_order_relaxed);
      atomic_fetch_add_explicit((v22 + 384), v23, memory_order_relaxed);
      atomic_fetch_add_explicit((v22 + 400), 1uLL, memory_order_relaxed);
      v24 = &v5[19].__opaque[32];
      if (*(a1 + 56))
      {
        v25 = *(a1 + 48);
        atomic_fetch_add_explicit(v24, v25, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5[19].__opaque[40], v25, memory_order_relaxed);
        v26 = 3;
      }

      else
      {
        v26 = 5;
      }

      atomic_fetch_add_explicit(&v24[v26], 1uLL, memory_order_relaxed);
      v31 = omm;
      v28 = (omm + 416);
      if (*(a1 + 56))
      {
        v29 = *(a1 + 48);
        atomic_fetch_add_explicit(v28, v29, memory_order_relaxed);
        v30 = (v31 + 424);
        goto LABEL_23;
      }
    }

    v32 = 5;
    goto LABEL_25;
  }

LABEL_26:
  obj_cache_unlock_write(v5);
  return 0;
}

uint64_t obj_set_skip_checkpoint_traverse(uint64_t a1, int a2)
{
  v3 = a2 != 0;
  v4 = *a1;
  pthread_mutex_lock(*a1);
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFBFFFFFFFFFLL | (v3 << 38);
  obj_cache_unlock_write(v4);
  return 0;
}

uint64_t obj_dirty_locked(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  v7 = *(result + 16);
  if ((v7 & 0x10) != 0)
  {
    panic("deleted object @ %p can not be dirtied!! (flags: 0x%llx)\n", result, v7);
  }

  if ((v7 & 0x80000000000) != 0)
  {
    panic("ciphertext object @ %p can not be dirtied!! (flags: 0x%llx)\n", result, v7);
  }

  if ((v7 & 0x8000000) == 0)
  {
    result = xid_is_current_tx(*(v6 + 392), a2);
    if (!result)
    {
      panic("oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x bad dirty xid: 0x%llx\n", *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40), a2);
    }
  }

  v8 = *(v5 + 64);
  if (v8 && v8 == *(v5 + 56))
  {
    panic("oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x object not prepared before dirtying\n", *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40));
  }

  v9 = *(v5 + 16);
  if ((v9 & 0x80000000) != 0)
  {
    *(v5 + 144) = a2;
  }

  else if (atomic_fetch_or_explicit((v5 + 32), 1u, memory_order_relaxed))
  {
    if (a3 && *(v5 + 152) != a3)
    {
      panic("new address mismatch on redirty 0x%llx 0x%llx\n");
    }
  }

  else
  {
    v10 = *(v5 + 36);
    if ((v9 & 0xC00000000) == 0 && !(v10 >> 30))
    {
      v11 = *(v5 + 120);
      if (v11 != a2 && *(v5 + 144) != a2)
      {
        panic("virtual object not prepared before dirtying: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx\n", *(v5 + 112), v9, *(v5 + 32), v10, *(v5 + 40), v11, *(v5 + 144), a2);
      }
    }

    *(v5 + 168) = 0;
    if (v10 >> 30 == 1)
    {
      v12 = *(v5 + 16);
      if ((v12 & 0x40) == 0)
      {
        v13 = *(v5 + 120);
        if (v13 != a2)
        {
          v14 = *(v5 + 144);
          if (v13 != v14 && !(*(v5 + 152) | a3))
          {
            panic("physical object not prepared before dirtying: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx naddr 0x%llx 0x%llx\n", *(v5 + 112), v12, *(v5 + 32), v10, *(v5 + 40), v13, v14, a2, 0, 0);
          }
        }
      }
    }

    v15 = *(v5 + 152);
    if (v15)
    {
      if (v15 != a3)
      {
        if (a3)
        {
          v16 = *(v5 + 36);
          if ((v16 & 0xC0000000) == 0x40000000)
          {
            panic("physical object new address mismatch: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx naddr 0x%llx 0x%llx\n", *(v5 + 112), *(v5 + 16), *(v5 + 32), v16, *(v5 + 40), *(v5 + 120), *(v5 + 144), a2, *(v5 + 152), a3);
          }
        }
      }
    }

    else
    {
      *(v5 + 152) = a3;
      if (a3 && (*(v5 + 16) & 0x40000000) != 0 && *(v5 + 112) != a3)
      {
        v17 = *(v5 + 72);
        v18 = *(v5 + 80);
        if (v17)
        {
          *(v17 + 80) = v18;
        }

        *v18 = v17;
        *(v5 + 112) = a3;
        v19 = (*(v6 + 712) + 8 * (*(v6 + 704) & a3));
        v20 = *v19;
        *(v5 + 72) = *v19;
        if (v20)
        {
          *(v20 + 80) = v5 + 72;
        }

        *v19 = v5;
        *(v5 + 80) = v19;
      }
    }

    *(v5 + 144) = a2;
    v21 = pthread_rwlock_wrlock((v6 + 128));
    if (v21)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 6038, v21);
    }

    v22 = (v5 + 88);
    if (*(v5 + 88) != 3735928559)
    {
      obj_free_list_remove(v5);
    }

    v23 = atomic_fetch_and_explicit((v5 + 32), 0xFFFFEFu, memory_order_relaxed);
    if ((v23 & 0x10) != 0)
    {
      *(*(v6 + 896) + 8 * HIBYTE(v23)) = 0;
    }

    if (*v22 != 3735928559)
    {
      panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x dirty object on the free list?!\n", v5, *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40));
    }

    v24 = *(v5 + 16);
    *(v5 + 88) = 0;
    if ((v24 & 0x40000000) != 0)
    {
      v26 = *(v6 + 848);
      *(v5 + 96) = v26;
      *v26 = v5;
      *(v6 + 848) = v22;
      ++*(v6 + 912);
    }

    else
    {
      v25 = *(v6 + 832);
      *(v5 + 96) = v25;
      *v25 = v5;
      *(v6 + 832) = v22;
      ++*(v6 + 908);
    }

    result = pthread_rwlock_unlock((v6 + 128));
    if (result)
    {
      panic("%s:%d: unlock == 0 failed %d\n");
    }
  }

  return result;
}

void obj_dirty(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 19) & 0x80) != 0)
  {
    *(result + 144) = a2;
  }

  else
  {
    v5 = *result;
    if ((atomic_fetch_or_explicit((result + 32), 0, memory_order_relaxed) & 1) == 0)
    {
      pthread_mutex_lock(v5);
      obj_dirty_locked(result, a2, a3);

      obj_cache_unlock_write(v5);
    }
  }
}

uint64_t obj_exchange_phys(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  pthread_mutex_lock(*a1);
  v5 = *(a1 + 16);
  if ((v5 & 0x20000000000) != 0)
  {
    do
    {
      *(a1 + 16) = v5 | 0x80;
      v7 = cv_wait_rw(&v4[20].__opaque[40], v4, 2, 0);
      v5 = *(a1 + 16);
    }

    while ((v5 & 0x20000000000) != 0);
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  obj_cache_unlock_write(v4);
  return v6;
}

uint64_t obj_checkpoint_start(uint64_t a1)
{
  if ((*(a1 + 19) & 0x80) != 0)
  {
    return (4 * atomic_fetch_or_explicit((a1 + 32), 4u, memory_order_relaxed)) & 0x10;
  }

  else
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }
}

uint64_t obj_checkpoint_done(uint64_t a1)
{
  if ((*(a1 + 19) & 0x80) == 0)
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }

  if ((atomic_fetch_and_explicit((a1 + 32), 0xFFFFFFFB, memory_order_relaxed) & 4) != 0)
  {
    return 0;
  }

  return 22;
}

uint64_t obj_checkpoint_known(uint64_t a1)
{
  v1 = *a1;
  if ((*(a1 + 19) & 0x80) != 0)
  {
    pthread_mutex_lock(*a1);
    v5 = *(a1 + 16);
    if ((v5 & 0x2000000000) != 0)
    {
      *(a1 + 16) = v5 & 0xFFFFFFDFFFFFFFFFLL;
      obj_cache_unlock_write(v1);
      return 0;
    }

    else
    {
      obj_cache_unlock_write(v1);
      return 22;
    }
  }

  else
  {
    v2 = *v1[6].__opaque;

    return nx_corruption_detected_int(v2);
  }
}

uint64_t obj_checkpoint_traverse(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 36);
  if (v4 > 0xA)
  {
    if (v4 != 11)
    {
      if (v4 == 13)
      {
        return apfs_checkpoint_traverse(a1, a2, a3, a4);
      }

      return 22;
    }

    return omap_checkpoint_traverse(a1, a2, a3, a4);
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        return btree_node_checkpoint_traverse(a1, a2, 0, a3, a4);
      }

      return 22;
    }

    return btree_checkpoint_traverse(a1, a2, a3, a4);
  }
}

void obj_checkpoint_check_for_unknown(uint64_t a1)
{
  pthread_mutex_lock(a1);
  for (i = *(a1 + 744); i; i = *(i + 88))
  {
    if ((*(i + 20) & 0x20) != 0)
    {
      log_warn("%s:%d: %s Unknown object loaded from checkpoint: oid 0x%llx type 0x%x/0x%x\n", "obj_checkpoint_check_for_unknown", 6228, (*(*(a1 + 392) + 384) + 212), *(i + 112), *(i + 36), *(i + 40));
    }
  }

  obj_cache_unlock_write(a1);
}

unint64_t obj_checksum_set(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  atomic_fetch_add_explicit((*(*(*a1 + 392) + 376) + 984), 1uLL, memory_order_relaxed);
  return fletcher64_set_cksum(v3, (v3 + 8), (v4 - 8), 0, a2, a3);
}

uint64_t obj_mem_mgr_register(int64x2_t *a1, int a2)
{
  pthread_mutex_lock((omm + 8));
  v4 = a1[82].i64[1];
  a1[82].i64[1] = v4 | 1;
  if (a2)
  {
    a1[82].i64[1] = v4 | 3;
    v5 = omm;
    v6 = (omm + 80);
    v7 = *(omm + 80);
    a1[60].i64[0] = v7;
    if (v7)
    {
      *(v7 + 968) = a1 + 60;
    }

    *v6 = a1;
    a1[60].i64[1] = v6;
  }

  else
  {
    v5 = omm;
    v8 = omm + 72;
    v9 = *(omm + 72);
    a1[60].i64[0] = v9;
    if (v9)
    {
      *(v9 + 968) = a1 + 60;
    }

    *(v5 + 72) = a1;
    a1[60].i64[1] = v8;
    ++*(v5 + 104);
    *(v5 + 136) = vaddq_s64(*(v5 + 136), a1[61]);
    *(v5 + 152) += a1[62].i64[0];
  }

  return pthread_mutex_unlock((v5 + 8));
}

uint64_t obj_cache_perform_deferred_updates(uint64_t a1)
{
  v15.tv_sec = 0;
  v15.tv_nsec = 0;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v15);
  v3 = *(a1 + 904);
  if (v3)
  {
    v4 = 0;
    tv_sec = v15.tv_sec;
    do
    {
      v6 = *(*(a1 + 896) + 8 * v4);
      if (v6)
      {
        add_explicit = atomic_fetch_add_explicit((v6 + 24), 0, memory_order_relaxed);
        v9 = (-(add_explicit >> 44) & 0xFFFFF) != 0 || (add_explicit & 0xFFFFFF) > ((add_explicit >> 24) & 0xFFFFF);
        v10 = v6 + 88;
        if (*(v6 + 88) != 3735928559)
        {
          result = obj_free_list_remove(v6);
        }

        if (!v9 && *(v6 + 36) != 13)
        {
          *(v6 + 160) = tv_sec;
          v11 = *(v6 + 16);
          if ((v11 & 0x400000000000) != 0)
          {
            atomic_fetch_or_explicit((v6 + 32), 0x20u, memory_order_relaxed);
            v13 = *(a1 + 816);
            *(v6 + 88) = 0;
            *(v6 + 96) = v13;
            *v13 = v6;
            *(a1 + 816) = v10;
            ++*(a1 + 924);
          }

          else
          {
            *(v6 + 88) = 0;
            if ((v11 & 0x40000000) != 0)
            {
              v14 = *(a1 + 800);
              *(v6 + 96) = v14;
              *v14 = v6;
              *(a1 + 800) = v10;
              ++*(a1 + 920);
            }

            else
            {
              v12 = *(a1 + 784);
              *(v6 + 96) = v12;
              *v12 = v6;
              *(a1 + 784) = v10;
              ++*(a1 + 916);
            }
          }
        }

        atomic_fetch_and_explicit((v6 + 32), 0xFFFFEFu, memory_order_release);
        v3 = *(a1 + 904);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  *(a1 + 904) = 0;
  return result;
}

uint64_t obj_free_list_remove(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 != 3735928559)
  {
    v2 = *result;
    if ((*(result + 32) & 0x20) != 0)
    {
      atomic_fetch_and_explicit((result + 32), 0xFFFFFFDF, memory_order_relaxed);
      v5 = *(result + 96);
      v6 = v2 + 204;
      if (v1)
      {
        v6 = (v1 + 96);
      }

      *v6 = v5;
      *v5 = v1;
      --v2[231];
    }

    else
    {
      v3 = *(result + 96);
      v4 = (v1 + 96);
      if ((*(result + 19) & 0x40) != 0)
      {
        if (!v1)
        {
          v4 = v2 + 200;
        }

        *v4 = v3;
        *v3 = v1;
        --v2[230];
      }

      else
      {
        if (!v1)
        {
          v4 = v2 + 196;
        }

        *v4 = v3;
        *v3 = v1;
        --v2[229];
      }
    }

    *(result + 88) = 3735928559;
  }

  return result;
}

void report_obj_alloc(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  v4 = backtrace(v13, 16);
  v5 = backtrace_symbols(v13, v4);
  v6 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "Allocated %s object with OID %lld flags %llx type %x %d from\n", a2, *(a1 + 112), *(a1 + 16), *(a1 + 36), *(a1 + 40));
  if (v4 >= 1)
  {
    v7 = v4;
    v8 = v13;
    v9 = v5;
    do
    {
      v11 = *v8++;
      v10 = v11;
      v12 = *v9++;
      fprintf(*v6, "\t%16p %s\n", v10, v12);
      --v7;
    }

    while (v7);
  }

  free(v5);
}

void obj_type_free(void *a1, unsigned __int16 a2, uint64_t a3)
{
  if (a3 == 376)
  {
    goto LABEL_2;
  }

  if (a2 > 0xCu)
  {
    if (a2 <= 0x18u)
    {
      if (a2 == 13)
      {
        v3 = 6256;
        goto LABEL_3;
      }

      if (a2 != 17)
      {
        if (a2 == 18)
        {
          v3 = 384;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      if (a2 <= 0x1Cu)
      {
        if (a2 == 25)
        {
          v3 = 416;
          goto LABEL_3;
        }

        if (a2 != 27)
        {
          goto LABEL_2;
        }

LABEL_24:
        v3 = 392;
        goto LABEL_3;
      }

      if (a2 == 29)
      {
        goto LABEL_24;
      }

      if (a2 != 30)
      {
        goto LABEL_2;
      }
    }

    v3 = 400;
    goto LABEL_3;
  }

  if (a2 > 5u)
  {
    if (a2 - 6 >= 3)
    {
      if (a2 == 11)
      {
        v3 = 496;
        goto LABEL_3;
      }

      goto LABEL_2;
    }
  }

  else if (a2 - 2 >= 2)
  {
    if (a2 == 1)
    {
      v3 = 1192;
      goto LABEL_3;
    }

    if (a2 == 5)
    {
      v3 = 1664;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 376;
LABEL_3:
    _apfs_free(a1, v3);
    return;
  }

  _apfs_zfree(a1, 4u);
}

uint64_t obj_destroy_for_obj(uint64_t a1)
{
  v2 = 0;
  if ((*(a1 + 16) & 2) != 0 || obj_descriptor_funcs_for_type(*(a1 + 36), &v2))
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

void obj_destroy_complete(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = obj_destroy_for_obj(a1);
    if (v3)
    {
      v4 = v3(a1);
      if (v4)
      {
        v5 = *(a1 + 8);
        if (v5)
        {
          v6 = (v5 + 4040);
        }

        else
        {
          v6 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error destroying: %d\n", "obj_destroy_complete", 3043, v6, *(a1 + 112), *(a1 + 16), *(a1 + 36), *(a1 + 40), v4);
      }
    }
  }

  if (*(a1 + 88) != 3735928559)
  {
    panic("object to be freed is on a list, o %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx list %p/%p\n", a1, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24), *(a1 + 88), *(a1 + 96));
  }

  free_rwlock((a1 + 176));
  fs_obj_zfree_oc(*(a1 + 56), *(a1 + 48), *(a1 + 16), *a1);
  v7 = *(a1 + 36);
  v8 = *(a1 + 44);

  obj_type_free(a1, v7, v8);
}

void obj_get_callback(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = 0;
  v5 = *(a1 + 120);
  v20 = 16000;
  v6 = *(a1 + 136);
  if (v5)
  {
    v7 = (a1 + 120);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 152) == 1)
  {
    v4 = *(a1 + 160);
  }

  v8 = *v6;
  v9 = *(a1 + 96);
  v10 = *(a1 + 144);
  v11 = v10 & 0xFFFF0000;
  if (v5)
  {
    v11 |= v5;
    v12 = *(a1 + 124);
    if (v9)
    {
LABEL_8:
      pthread_mutex_lock(*v6);
      *(v6 + 52) = v9;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  if ((*(v6 + 18) & 0x8002000) != 0)
  {
    pthread_mutex_lock(*v6);
    *(v6 + 52) = 0;
  }

  else
  {
    v18 = obj_checksum_verify(*(a1 + 136), a2, a3);
    pthread_mutex_lock(v8);
    *(v6 + 52) = v18;
    if (v18)
    {
LABEL_9:
      v13 = *(v6 + 16);
      *(v6 + 16) = v13 & 0xFFFFFE7FFFFFFFFBLL;
      if ((v13 & 4) != 0)
      {
        cv_wakeup((*v6 + 1328));
      }

      goto LABEL_16;
    }
  }

  if (obj_init(v6, v10, *(v6 + 112), v7, v4, *(v6 + 120), v11, v12) || (v19 = 2, finish = obj_get_finish(v6, v10, *(v6 + 120), 0, &v20, &v19), (*(v6 + 52) = finish) != 0))
  {
LABEL_16:
    *(v6 + 16) = *(v6 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = &v8[21].__opaque[32];
  if (v15)
  {
    v17 = (v15 + 112);
  }

  *v17 = v16;
  *v16 = v15;
  obj_cache_unlock_write(v8);
  obj_release(v6);
  if (*(a1 + 152) == 1)
  {
    _apfs_free(*(a1 + 160), *(v4 + 2));
  }

  _apfs_free(a1, 168);
  if (atomic_fetch_add_explicit(&v8[14].__opaque[40], 0xFFFFFFFF, memory_order_relaxed) == 1 && atomic_fetch_add_explicit(&v8[14].__opaque[36], 0, memory_order_relaxed))
  {
    pthread_mutex_lock(v8);
    cv_wakeup(&v8[20].__opaque[40]);

    obj_cache_unlock_write(v8);
  }
}

atomic_ullong *obj_cache_stats_update_zalloc(atomic_ullong *result, int a2, uint64_t a3, unint64_t a4)
{
  v5 = a2 & 0xC8000000;
  if (a2 < 0 == v4)
  {
    if (v5 != 0x40000000 && v5 != 0)
    {
LABEL_14:
      panic("unexpected storagetype: 0x%x\n", a2 & 0xC8000000);
    }

    v6 = result + 23;
    if (a3)
    {
      atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
      v7 = result + 24;
      goto LABEL_17;
    }

LABEL_18:
    v9 = 5;
    goto LABEL_19;
  }

  if (v5 == 0x80000000)
  {
    v6 = result + 29;
    if (a3)
    {
      atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
      v7 = result + 30;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v5 != -2013265920)
  {
    goto LABEL_14;
  }

  v6 = result + 35;
  if (!a3)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
  v7 = result + 36;
LABEL_17:
  atomic_fetch_add_explicit(v7, a4, memory_order_relaxed);
  v9 = 3;
LABEL_19:
  atomic_fetch_add_explicit(&v6[v9], 1uLL, memory_order_relaxed);
  return result;
}

uint64_t apfs_update_dev_name(uint64_t result)
{
  if (result)
  {
    if (*(result + 504))
    {
      return snprintf((result + 4040), 0x20uLL, "%ss%d:%lld");
    }

    else
    {
      return snprintf((result + 4040), 0x20uLL, "%ss%d");
    }
  }

  return result;
}

uint64_t apfs_init_phys(uint64_t a1)
{
  *(a1 + 32) = 1112756289;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 116) = 0x4000000200000002;
  *(a1 + 124) = 1073741826;
  *(a1 + 1040) = vdup_n_s32(0x40000002u);
  *(a1 + 1068) = 2;
  *(a1 + 1104) = 2;
  return 0;
}

uint64_t apfs_init(uint64_t a1)
{
  v2 = *(a1 + 56);
  locked = apfs_sanity_check_tree_type(a1, *(v2 + 116));
  if (locked)
  {
    return locked;
  }

  locked = apfs_sanity_check_tree_type(a1, *(v2 + 120));
  if (locked)
  {
    return locked;
  }

  locked = apfs_sanity_check_tree_type(a1, *(v2 + 124));
  if (locked)
  {
    return locked;
  }

  v6 = *(v2 + 56);
  if ((v6 & 0x20) != 0)
  {
    locked = apfs_sanity_check_tree_type(a1, *(v2 + 1040));
    if (locked)
    {
      return locked;
    }

    v6 = *(v2 + 56);
  }

  if ((v6 & 0x40) != 0)
  {
    locked = apfs_sanity_check_tree_type(a1, *(v2 + 1044));
    if (locked)
    {
      return locked;
    }
  }

  locked = apfs_locked_ids_init(a1 + 3296, "apfs-stream-id-lock", 0x100u);
  if (locked)
  {
    return locked;
  }

  v7 = apfs_locked_ids_init(a1 + 3432, "apfs-dir-stats-id-lock", 0x10u);
  if (v7)
  {
    v4 = v7;
LABEL_16:
    apfs_locked_ids_destroy(a1 + 3296);
    return v4;
  }

  v8 = initialize_phys_range_lock_state((a1 + 3648), 0x20u);
  if (v8)
  {
    v4 = v8;
    apfs_locked_ids_destroy(a1 + 3432);
    goto LABEL_16;
  }

  *(a1 + 376) = v2;
  *(a1 + 392) = *(*a1 + 392);
  new_lock((a1 + 1216));
  new_lock((a1 + 1280));
  new_lock((a1 + 1344));
  new_lock((a1 + 1408));
  new_lock((a1 + 1472));
  new_lock((a1 + 1664));
  new_lock((a1 + 1536));
  new_lock((a1 + 1600));
  new_lock((a1 + 1152));
  new_lock((a1 + 3232));
  new_lock((a1 + 1728));
  new_lock((a1 + 3952));
  new_rwlock((a1 + 1792));
  new_rwlock((a1 + 3008));
  new_rwlock((a1 + 1992));
  rolling_stats_init(a1 + 3832, 0xE10u, 0x18u);
  apfs_update_dev_name(a1);
  *(a1 + 600) = 0;
  if ((*(*(a1 + 376) + 57) & 1) != 0 && (fs_is_fully_unencrypted(a1) & 1) == 0)
  {
    *(a1 + 696) = 1;
  }

  new_lock((a1 + 4072));
  new_cv((a1 + 4136));
  return 0;
}

uint64_t apfs_destroy(uint64_t a1)
{
  v2 = *(a1 + 3632);
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  apfs_locked_ids_destroy(a1 + 3432);
  apfs_locked_ids_destroy(a1 + 3296);
  rolling_stats_destroy(a1 + 3832);
  free_rwlock((a1 + 2808));
  free_rwlock((a1 + 2600));
  free_rwlock((a1 + 2400));
  free_rwlock((a1 + 2192));
  free_rwlock((a1 + 1992));
  free_rwlock((a1 + 3008));
  free_rwlock((a1 + 1792));
  free_lock((a1 + 3232));
  free_lock((a1 + 1152));
  free_lock((a1 + 1216));
  free_lock((a1 + 1536));
  free_lock((a1 + 1600));
  free_lock((a1 + 1408));
  free_lock((a1 + 1472));
  free_lock((a1 + 1664));
  free_lock((a1 + 1280));
  free_lock((a1 + 1344));
  free_lock((a1 + 1728));
  free_lock((a1 + 3952));
  release_phys_range_lock_state(a1 + 3648, v3, v4);
  free_lock((a1 + 4072));
  free_cv((a1 + 4136));
  return 0;
}

uint64_t apfs_reap(uint64_t a1, char a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  v24 = 0;
  if (a4 < 0x14)
  {
    return 28;
  }

  v8 = *(a3 + 16);
  if (v8 >= 5)
  {
    log_err("%s:%d: %s bogus phase, %u\n", "apfs_reap", 637, (a1 + 4040), v8);
    return 5;
  }

  v11 = obj_modify(a1, 0, a5);
  if (v11)
  {
    v5 = v11;
    log_err("%s:%d: %s failed to modify the apfs_t before reaping (error %d).\n", "apfs_reap", 643, (a1 + 4040), v11);
    return v5;
  }

  if (a2)
  {
    spaceman_fs_bounds_clear(*(a1 + 392), a1, a5);
    obj_delete_and_free(a1, a5);
    return 0;
  }

  v5 = 0;
  v12 = *(a3 + 16);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        return v5;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 1)
      {
        return v5;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    v13 = apfs_reap_snapshots(a1, a5, &v24, a3);
    if (v13)
    {
      return v13;
    }

    *a3 = 0;
    *(a3 + 16) = 2;
  }

  v13 = apfs_reap_extentref_blocks(a1, a5, *(*(a1 + 376) + 144), &v24, a3);
  if (v13)
  {
    return v13;
  }

  v14 = *(a1 + 376);
  v15 = *(v14 + 224);
  if (*(v14 + 232) != v15)
  {
    log_err("%s:%d: %s freed != alloced (%llu freed, %llu alloced)\n", "apfs_reap", 677, (a1 + 4040), *(v14 + 232), v15);
    v14 = *(a1 + 376);
  }

  v16 = *(v14 + 56);
  if ((v16 & 0x20) != 0)
  {
    v17 = supplemental_tree_destroy(a1, *(v14 + 1040), 5, a5, 0, 0);
    if (v17)
    {
      v5 = v17;
      strerror(v17);
      log_err("%s:%d: %s supplemental_tree_destroy(fext_tree) failed: %d (%s)\n");
      return v5;
    }

    v14 = *(a1 + 376);
    v16 = *(v14 + 56);
  }

  if ((v16 & 0x40) != 0)
  {
    v18 = supplemental_tree_destroy(a1, *(v14 + 1044), 6, a5, 0, 0);
    if (v18)
    {
      v5 = v18;
      strerror(v18);
      log_err("%s:%d: %s supplemental_tree_destroy(pfkur_tree) failed: %d (%s)\n");
      return v5;
    }
  }

  *(a3 + 16) = 3;
LABEL_31:
  obj_cache_remove_new_fs_objects(*(*(a1 + 392) + 392), a1);
  v19 = *(a1 + 3568);
  if (v19)
  {
    obj_release(v19);
    *(a1 + 3568) = 0;
  }

  v20 = *(a1 + 3616);
  if (v20)
  {
    obj_release(v20);
    *(a1 + 3616) = 0;
  }

  v21 = *(a1 + 3576);
  if (v21)
  {
    obj_release(v21);
    *(a1 + 3576) = 0;
  }

  v5 = omap_destroy(a1, *(*(a1 + 376) + 128), a5, 0);
  if (v5)
  {
    log_err("%s:%d: %s omap_destroy returned %d!\n");
  }

  else
  {
    v22 = *(a1 + 376);
    *(v22 + 976) = 0;
    *(v22 + 1032) = 0;
    *(v22 + 1048) = 0;
    *(v22 + 1096) = 0;
    *(v22 + 1112) = 0;
    *(v22 + 128) = 0u;
    *(v22 + 144) = 0u;
    *(v22 + 1072) = 0u;
    fs_sb_dirty(a1, a5);
    *(a3 + 16) = 4;
  }

  return v5;
}

uint64_t apfs_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 20) & 0x40) != 0)
  {
    return 0;
  }

  v15 = 0;
  v5 = *(*(a3 + 376) + 128);
  if (!v5)
  {
    goto LABEL_13;
  }

  v9 = obj_get(*(a1 + 392), 0x40000000uLL, v5, &om_desc, 0, a3, 0, 0, &v15);
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 400);
    if (!v11 || !*(v11 + 76))
    {
      log_err("%s:%d: %s failed to get omap %lld: %d\n");
    }

    return v10;
  }

  v10 = omap_checkpoint_traverse(a3, a2, v15, a4);
  v12 = v15[2];
  obj_release(v15);
  if (!v10)
  {
    if ((v12 & 0x4000000000) == 0)
    {
      return 0;
    }

LABEL_13:
    obj_set_skip_checkpoint_traverse(a3, 1);
    return 0;
  }

  v13 = *(a1 + 400);
  if (!v13 || !*(v13 + 76))
  {
    log_err("%s:%d: %s omap checkpoint traverse (op %d) failed: %d\n");
  }

  return v10;
}

uint64_t apfs_get_fsroot_tree_ext(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  v10 = v9[47];
  v11 = *(v10 + 116);
  v12 = *(v10 + 136);
  v14[4] = xmmword_284F57E20;
  v14[5] = unk_284F57E30;
  v14[2] = xmmword_284F57E00;
  v14[3] = unk_284F57E10;
  v14[0] = xmmword_284F57DE0;
  v14[1] = unk_284F57DF0;
  if ((*(v10 + 56) & 0x20) == 0 || (result = authapfs_get_hash_args(a1, v14), !result))
  {
    if (v11 == 2)
    {
      return btree_get_extended(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, v14, a4, a5);
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t apfs_has_secondary_fsroot(uint64_t a1)
{
  if (*(*(a1 + 376) + 57))
  {
    return fs_is_fully_unencrypted(a1) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t apfs_get_secondary_fsroot_tree_ext(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  if ((*(a1[47] + 57) & 1) == 0)
  {
    return 45;
  }

  v10 = v5[47];
  v11 = *(v10 + 1104);
  v12 = *(v10 + 1096);
  if (fs_is_fully_unencrypted(a1))
  {
    return 45;
  }

  if (v11 != 2)
  {
    return 22;
  }

  return btree_get_extended(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, apfs_get_secondary_fsroot_tree_ext_BTARGS, a4, a5);
}

uint64_t apfs_get_extentref_tree(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1[47] + 120) == 2)
  {
    return btree_get_extended(a1, *(a1[47] + 120) & 0xFFFF0000, a2, 0, a3 != 0, &apfs_get_extentref_tree_BTARGS, a3, a4);
  }

  else
  {
    return 22;
  }
}

uint64_t apfs_get_snap_meta_tree(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[47];
  if (*(v3 + 124) == 2)
  {
    return btree_get_extended(a1, *(v3 + 124) & 0xFFFF0000, *(v3 + 152), 0, a2 != 0, &apfs_get_snap_meta_tree_BTARGS, a2, a3);
  }

  else
  {
    return 22;
  }
}

uint64_t apfs_get_doc_id_tree_ext(uint64_t *a1, int a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  v7 = v6[47];
  if (*(v7 + 1068) != 2)
  {
    return 22;
  }

  v8 = 1072;
  if (a2)
  {
    v8 = 1080;
  }

  return btree_get_extended(a1, *(v7 + 1068) & 0xFFFF0000, *(v7 + v8), a4, a5 != 0, apfs_get_doc_id_tree_by_oid_BTARGS, a5, a6);
}

uint64_t apfs_doc_id_index_supported(uint64_t a1)
{
  v1 = *(*(a1 + 376) + 964);
  result = 1;
  if (v1 > 63)
  {
    if (v1 != 64 && v1 != 576)
    {
      return 0;
    }
  }

  else
  {
    if (v1)
    {
      v3 = v1 == 2;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t apfs_locked_ids_init(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 120) = a3;
  v4 = _apfs_calloc_typed(a3, 0x10uLL, 0x10200405730B0C9uLL);
  *(a1 + 112) = v4;
  if (!v4)
  {
    return 12;
  }

  new_lock(a1);
  new_cv((a1 + 64));
  return 0;
}

void apfs_locked_ids_destroy(uint64_t a1)
{
  free_cv((a1 + 64));
  free_lock(a1);
  v2 = *(a1 + 112);
  v3 = 16 * *(a1 + 120);

  _apfs_free(v2, v3);
}

uint64_t apfs_sanity_check_tree_type(uint64_t a1, int a2)
{
  if ((a2 | 0x40000000u) >> 30 == 1 && a2 == 2)
  {
    return 0;
  }

  else
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }
}

uint64_t apfs_reap_snapshots(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v17 = 0;
  v18 = 0;
  v8 = a4[1];
  if (v8)
  {
    while (1)
    {
LABEL_2:
      v9 = fs_lookup_snapshot_metadata_by_xid(a1, v8, &v18);
      if (v9)
      {
        v14 = v9;
        log_err("%s:%d: %s Couldn't find snapshot metadata for xid %llu\n");
        return v14;
      }

      v10 = v18;
      v11 = *(v18 + 2);
      if (v11)
      {
        v12 = apfs_reap_extentref_blocks(a1, a2, v11, a3, a4);
        if (v12)
        {
          return v12;
        }

        v10 = v18;
      }

      fs_delete_supplemental_tree(a1, 5, *(v10 + 3), a2, 0);
      fs_delete_supplemental_tree(a1, 6, *(v18 + 3), a2, 0);
      fs_delete_clone_superblock(a1, *(v18 + 3), a2);
      next_snapshot_xid = omap_find_next_snapshot_xid(a1, a4[1], &v17);
      if (next_snapshot_xid)
      {
        break;
      }

      v8 = v17;
      *a4 = 0;
      a4[1] = v8;
    }

    v14 = next_snapshot_xid;
    if (next_snapshot_xid == 2)
    {
      goto LABEL_13;
    }

    log_err("%s:%d: %s lookup_next_snapshot() returned %d\n", "apfs_reap_snapshots", 615, (a1 + 4040), next_snapshot_xid);
  }

  else
  {
    v15 = omap_find_next_snapshot_xid(a1, 0, &v17);
    if (!v15)
    {
      v8 = v17;
      a4[1] = v17;
      goto LABEL_2;
    }

    v14 = v15;
    if (v15 == 2)
    {
LABEL_13:
      fs_delete_snapshot_metadata_tree(a1, a2, 0);
      return 0;
    }

    else
    {
      log_err("%s:%d: %s Hit %d looking up first snapshot\n");
    }
  }

  return v14;
}

uint64_t apfs_reap_extentref_blocks(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  extentref_tree = apfs_get_extentref_tree(a1, a3, 0, &v24);
  if (extentref_tree)
  {
    v11 = extentref_tree;
    log_err("%s:%d: apfs_get_extentref_tree(oid=%llu) returned %d\n", "apfs_reap_extentref_blocks", 510, a3, extentref_tree);
  }

  else
  {
    v23 = *a5 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    bt_iterator_init_with_hint(v25, v24, 0, 4, &v23, 8, 8, &v20, 0x14u, 0);
    if ((v12 & 0xFFFFFFFD) != 0)
    {
      v11 = v12;
      log_err("%s:%d: %s tree_iter_init() returned %d\n", "apfs_reap_extentref_blocks", 520, (a1 + 4040), v12);
    }

    else
    {
      while (1)
      {
        if (bt_iterator_ended(v25))
        {
          btree_delete(v24, a2, 0);
          v11 = 0;
          goto LABEL_5;
        }

        v14 = v23 & 0xFFFFFFFFFFFFFFFLL;
        *a5 = v23 & 0xFFFFFFFFFFFFFFFLL;
        if (v20 >> 60 == 1 && v21 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = v20 & 0xFFFFFFFFFFFFFFFLL;
          if ((v20 & 0xFFFFFFFFFFFFFFFLL) != 0)
          {
            if (apfs_free_data_blocks(a1, a2, v14, v20 & 0xFFFFFFFFFFFFFFFLL))
            {
              log_err("%s:%d: %s extent at lba %llu len %llu couldn't be freed: %d\n");
            }
          }

          else
          {
            log_err("%s:%d: %s found bogus 0-length extent at lba %llu, ignoring\n");
          }

          v17 = *a4 + v16;
          *a4 = v17;
          if (v17 > 0x4000)
          {
            break;
          }
        }

        v18 = bt_iterator_next(v25);
        if ((v18 & 0xFFFFFFFD) != 0)
        {
          v19 = v18;
          log_err("%s:%d: %s iter_next returned %d\n", "apfs_reap_extentref_blocks", 552, (a1 + 4040), v18);
          v11 = v19;
          goto LABEL_5;
        }
      }

      v11 = 36;
    }
  }

LABEL_5:
  if (v24)
  {
    obj_release(v24);
  }

  return v11;
}

void *_apfs_obj_zalloc(size_t size, uint64_t a2)
{
  if (size == 0x2000)
  {
    v2 = qword_27E2BAA70;
    goto LABEL_5;
  }

  v2 = size;
  if (size == 4096)
  {
    v2 = *(&apfs_zone_infos[1] + ((a2 << 63 >> 63) & 0x78));
LABEL_5:
    v3 = v2;
    v4 = 3442331901;
    goto LABEL_7;
  }

  v3 = size;
  v4 = 889960617;
LABEL_7:
  result = malloc_type_calloc(1uLL, v3, v4);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, v2, memory_order_relaxed);
  }

  return result;
}

void *_apfs_zalloc(unsigned int a1)
{
  v1 = apfs_zone_infos[3 * a1 + 1];
  result = malloc_type_calloc(1uLL, v1, 0xCD2DD0FDuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, v1, memory_order_relaxed);
  }

  return result;
}

void *_apfs_calloc_typed(size_t a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_calloc(a1, a2, a3);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a2 * a1, memory_order_relaxed);
  }

  return result;
}

void _apfs_obj_zfree(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x2000)
  {
    if (!a1)
    {
      return;
    }

    v4 = &qword_27E2BAA70;
  }

  else
  {
    v3 = a2;
    if (a2 != 4096)
    {
      if (!a1)
      {
        return;
      }

      goto LABEL_9;
    }

    if (!a1)
    {
      return;
    }

    v4 = (&apfs_zone_infos[1] + ((a3 << 63 >> 63) & 0x78));
  }

  v3 = *v4;
LABEL_9:
  free(a1);
  atomic_fetch_add_explicit(&apfs_allocated_mem_total, -v3, memory_order_relaxed);
}

void _apfs_zfree(void *a1, unsigned int a2)
{
  if (a1)
  {
    v2 = apfs_zone_infos[3 * a2 + 1];
    free(a1);
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, -v2, memory_order_relaxed);
  }
}

void _apfs_free(void *a1, uint64_t a2)
{
  if (a1)
  {
    free(a1);
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, -a2, memory_order_relaxed);
  }
}

void *_apfs_malloc_typed(size_t a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a1, memory_order_relaxed);
  }

  return result;
}

void *_apfs_calloc(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x7012DB5EuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a2 * a1, memory_order_relaxed);
  }

  return result;
}

uint64_t nx_is_panic_on_corruption_enabled(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 635);
  }

  else
  {
    v1 = apfs_corruption_panics & 1;
  }

  return v1 & 1;
}

uint64_t nx_calculate_metadata_parameters(unsigned int a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  v4 = 22;
  *a4 = 0u;
  if (a1 - 65537 < 0xFFFF0FFF || !a2)
  {
    return v4;
  }

  v5 = 8 * a1;
  v6 = a1 - 40;
  v7 = v6 >> 5;
  *(a4 + 88) = v6 >> 5;
  *(a4 + 96) = v6 >> 3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  v8 = (a2 + v5 - 1) / v5;
  v9 = (v8 + (v6 >> 5) - 1) / (v6 >> 5);
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  if ((v9 + (v6 >> 3) - 1) / (v6 >> 3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 + (v6 >> 3) - 1) / (v6 >> 3);
  }

  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  v11 = (v5 - 1) / v5;
  v12 = (v7 + v11 - 1) / (v6 >> 5);
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  v13 = ((v6 >> 3) + (v7 + v11 - 1) / (v6 >> 5) - 1) / (v6 >> 3);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ((v6 >> 3) + (v7 + v11 - 1) / (v6 >> 5) - 1) / (v6 >> 3);
  }

  *(a4 + 72) = v14;
  *(a4 + 80) = v5;
  v15 = 3 * (v9 + v8 + v11 + v12 + v14 + v10);
  *(a4 + 104) = v15;
  v16 = ((((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8) + a1 - 1) / a1;
  if (HIDWORD(v16))
  {
    return 27;
  }

  *(a4 + 112) = v16;
  *(a4 + 120) = 16;
  if (v16 < 0x1000)
  {
    v17 = 16 * v16;
    goto LABEL_14;
  }

  if (v16 >> 13)
  {
    return 27;
  }

  v17 = 65534;
LABEL_14:
  *(a4 + 128) = v17;
  v18 = (2 * v17 + 6) & 0x7FFFFFFFFFFFFFF8;
  if (v10)
  {
    v9 = (v9 + (v6 >> 3) - 1) / (v6 >> 3);
  }

  if (v14)
  {
    v19 = v13;
  }

  else
  {
    v19 = v12;
  }

  v20 = ((2 * v16 + 6) & 0x3FFFFFFF8) + 8 * (v19 + v9 + v16) + v18 + 2520;
  if (v20 > 0x100000)
  {
    return 27;
  }

  if (v20 % a1)
  {
    v20 = (v20 + a1 - 1) / a1 * a1;
  }

  *(a4 + 136) = v20;
  v22 = (a1 - 96 - (((((18725 * ((a1 - 96) >> 2)) >> 15) & 0x3FFC) + 28) & 0x7FE0)) / 0x30uLL;
  v23 = 0x200000 / a1;
  v24 = 15;
  if (a2 < 0x100000)
  {
    v24 = 31;
  }

  v25 = 4;
  if (a2 < 0x100000)
  {
    v25 = 5;
  }

  if (a2 < 0x40000)
  {
    v24 = 63;
    v25 = 6;
  }

  v26 = (v22 - 1 + ((v24 + a2) >> v25)) / v22;
  if (v26 >= v23)
  {
    v26 = 0x200000 / a1;
  }

  if (v26 == 2)
  {
    v26 = 3;
  }

  *(a4 + 152) = v26;
  *(a4 + 160) = 0;
  if (a2 >> 18)
  {
    if (a2 >> 20)
    {
      v27 = (v15 + 15) >> 4;
    }

    else
    {
      v27 = (v15 + 31) >> 5;
    }
  }

  else
  {
    v27 = (v15 + 63) >> 6;
  }

  v28 = (v22 - 1 + v27) / v22;
  if (v28 >= v23)
  {
    v28 = 0x200000 / a1;
  }

  if (v28 == 2)
  {
    v28 = 3;
  }

  *(a4 + 144) = v28;
  v29 = v20 / a1;
  v30 = v29 - 1;
  if (!v29)
  {
    v30 = 0;
  }

  v31 = 8;
  if (v26 < 8)
  {
    v31 = v26;
  }

  *(a4 + 192) = 4;
  *(a4 + 200) = v31;
  if (a3)
  {
    if (a3 > 0x64)
    {
      return 22;
    }
  }

  else
  {
    v32 = a1 * a2;
    if ((v32 & 0x1FFFFFFF) != 0)
    {
      v33 = (v32 >> 29) + 1;
    }

    else
    {
      v33 = v32 >> 29;
    }

    if (v33 >= 0x64)
    {
      a3 = 100;
    }

    else
    {
      a3 = v33;
    }
  }

  *(a4 + 184) = a3;
  v34 = v26 + v29 + v28 + v30 + 8 * v31 * a3 + 2;
  v35 = ((a1 - 40) / 0x28u + v34 - 1) / ((a1 - 40) / 0x28u);
  *(a4 + 168) = 4 * v35 + 4;
  v4 = 27;
  if (v35 <= 0x3FFFFFFE)
  {
    *(a4 + 176) = 4 * v34;
    if (v34 >> 30)
    {
      return 27;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t nx_get_evict_mapping_tree(uint64_t *a1, unsigned int a2, unint64_t a3, int a4, int a5, uint64_t *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  *&v13 = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v12 = evict_mapping_key_compare;
  DWORD2(v13) = 33;
  HIDWORD(v13) = a4;
  result = btree_get_extended(a1, a2, a3, 0, 0, &v12, 0, a6);
  if (result == 92 && a5)
  {
    v13 = 0u;
    v14 = 0u;
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v12 = evict_mapping_key_compare;
    HIDWORD(v13) = a4;
    result = btree_get_extended(a1, 0, a3, 0, 0, &v12, 0, a6);
    if (!result)
    {
      log_debug("%s:%d: %s found mapping tree with old subtype\n", "nx_get_evict_mapping_tree", 526, (a1[48] + 212));
      return 0;
    }
  }

  return result;
}

uint64_t nx_init_phys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *(a3 + 4);
  *(a1 + 32) = 1112758350;
  *(a1 + 36) = v3;
  *(a1 + 1264) = 0;
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 56) = xmmword_23D299000;
  v4 = *(a3 + 32);
  *(a1 + 88) = 1024;
  *(a1 + 96) = v4;
  uuid_copy((a1 + 72), (a3 + 64));
  return 0;
}

uint64_t nx_init(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 22;
  }

  v3 = *(a1 + 56);
  *(a1 + 660) = -1;
  v4 = *a2;
  *(a1 + 664) = *a2;
  *(a1 + 668) = *(v3 + 36) / v4;
  v5 = *(a2 + 3);
  *(a1 + 376) = v3;
  *(a1 + 384) = v5;
  LODWORD(v5) = a2[11];
  *(a1 + 627) = a2[10] != 0;
  *(a1 + 628) = v5 != 0;
  LODWORD(v5) = a2[13];
  *(a1 + 629) = a2[12] != 0;
  *(a1 + 631) = v5 != 0;
  LODWORD(v5) = a2[15];
  *(a1 + 632) = a2[14] != 0;
  *(a1 + 633) = v5 != 0;
  *(a1 + 392) = *a1;
  new_lock((a1 + 672));
  new_lock((a1 + 864));
  *(a1 + 928) = 0;
  new_lock((a1 + 1120));
  new_lock((a1 + 752));
  *(a1 + 828) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  new_lock((a1 + 504));
  new_cv((a1 + 568));
  return 0;
}

uint64_t nx_destroy(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  free_lock((a1 + 864));
  free_lock((a1 + 672));
  free_lock((a1 + 1120));
  free_lock((a1 + 752));
  free_lock((a1 + 504));
  free_cv((a1 + 568));
  return 0;
}

uint64_t nx_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v6 = spaceman_get(a1, &v46);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 400);
    if (!v8 || !*(v8 + 76))
    {
      LODWORD(v9) = 739;
      log_err("%s:%d: %s failed to get spaceman oid %lld for checkpoint %s traverse: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v7 = spaceman_checkpoint_traverse(a1, a2, v46, a3);
  obj_release(v46);
  if (v7)
  {
    v10 = *(a1 + 400);
    if (!v10 || !*(v10 + 76))
    {
      LODWORD(v9) = 746;
      log_err("%s:%d: %s spaceman checkpoint %s traverse failed: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v13 = *(a1 + 376);
  v14 = *(v13 + 160);
  if (v14 && !*(a1 + 744))
  {
    v17 = obj_get(*(a1 + 392), 0x40000000uLL, v14, &om_desc, 0, 0, 0, 0, &v44);
    if (v17)
    {
      v7 = v17;
      v18 = *(a1 + 400);
      if (!v18 || !*(v18 + 76))
      {
        LODWORD(v9) = 756;
        log_err("%s:%d: %s failed to get omap for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = omap_checkpoint_traverse(a1, a2, v44, a3);
    obj_release(v44);
    if (v7)
    {
      v20 = *(a1 + 400);
      if (!v20 || !*(v20 + 76))
      {
        LODWORD(v9) = 762;
        log_err("%s:%d: %s omap checkpoint %s traverse failed: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v13 = *(a1 + 376);
  }

  if (*(v13 + 168))
  {
    v15 = nx_reaper_get(a1, &v45);
    if (v15)
    {
      v7 = v15;
      v16 = *(a1 + 400);
      if (!v16 || !*(v16 + 76))
      {
        LODWORD(v9) = 775;
        log_err("%s:%d: %s failed to get reaper for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = nx_reaper_checkpoint_traverse(a1, a2, v45, a3);
    obj_release(v45);
    if (v7)
    {
      v19 = *(a1 + 400);
      if (!v19 || !*(v19 + 76))
      {
        LODWORD(v9) = 782;
        log_err("%s:%d: %s nx reaper checkpoint %s traverse failed: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v13 = *(a1 + 376);
  }

  if (*(v13 + 180))
  {
    for (i = 0; i < *(v13 + 180); ++i)
    {
      v22 = *(v13 + 8 * i + 184);
      if (v22)
      {
        v23 = obj_get(*(a1 + 392), 0, v22, &apfs_desc, 0, 0, 0, 0, &v43);
        if (v23)
        {
          v7 = v23;
          v29 = *(a1 + 400);
          if (v29 && *(v29 + 76))
          {
            return v7;
          }

          v30 = "<UNKNOWN>";
          if (a3 == 2)
          {
            v30 = "FIXUP";
          }

          if (a3 == 1)
          {
            v30 = "START";
          }

          v37 = v30;
          v38 = v23;
          v35 = i;
          v36 = v22;
          v34 = *(a1 + 384) + 212;
          v9 = 796;
          v28 = "%s:%d: %s failed to get fs[%d] oid %lld for checkpoint %s traverse: %d\n";
LABEL_58:
          log_err(v28, "nx_checkpoint_traverse", v9, v34, v35, v36, v37, v38, v39);
LABEL_9:
          v11 = *(a1 + 400);
          if (v11)
          {
LABEL_10:
            *(v11 + 76) = v9;
            ++*(v11 + 80);
          }

          return v7;
        }

        v7 = apfs_checkpoint_traverse(a1, a2, v43, a3);
        obj_release(v43);
        if (v7)
        {
          v31 = *(a1 + 400);
          if (!v31 || !*(v31 + 76))
          {
            LODWORD(v9) = 802;
            log_err("%s:%d: %s fs[%d] checkpoint %s traverse failed: %d\n");
            goto LABEL_9;
          }

          return v7;
        }

        v13 = *(a1 + 376);
      }
    }
  }

  if (!*(v13 + 1344) || !obj_type_is_or_contains_ephemeral(*(v13 + 176)))
  {
    return 0;
  }

  v42[0] = 0;
  v42[1] = 0;
  v41 = 0;
  v40 = 0;
  v24 = obj_descriptor_and_flags_for_type(*(*(a1 + 376) + 176), &v40, v42);
  HIDWORD(v42[0]) = 255;
  if (v24 || (v24 = obj_get(*(a1 + 392), v40, *(*(a1 + 376) + 1344), v42, 0, 0, 0, 0, &v41), v24))
  {
    v7 = v24;
    v25 = *(a1 + 400);
    if (!v25 || !*(v25 + 76))
    {
      v26 = *(a1 + 376);
      v27 = "<UNKNOWN>";
      if (a3 == 2)
      {
        v27 = "FIXUP";
      }

      if (a3 == 1)
      {
        v27 = "START";
      }

      v38 = v27;
      v39 = v24;
      v36 = *(v26 + 176);
      v37 = 255;
      v34 = *(a1 + 384) + 212;
      v35 = *(v26 + 1344);
      v9 = 823;
      v28 = "%s:%d: %s unable to get test object 0x%llx of type 0x%x/0x%x for checkpoint %s traverse: %d\n";
      goto LABEL_58;
    }
  }

  else
  {
    v7 = obj_checkpoint_traverse(a1, a2, v41, a3);
    obj_release(v41);
    if (v7)
    {
      v32 = *(a1 + 400);
      if (!v32 || !*(v32 + 76))
      {
        v33 = "<UNKNOWN>";
        if (a3 == 2)
        {
          v33 = "FIXUP";
        }

        if (a3 == 1)
        {
          v33 = "START";
        }

        LODWORD(v9) = 829;
        log_err("%s:%d: %s failed to checkpoint %s traverse test object 0x%llx of type 0x%x/0x%x: %d\n", "nx_checkpoint_traverse", 829, (*(a1 + 384) + 212), v33, *(*(a1 + 376) + 1344), *(*(a1 + 376) + 176), 255, v7);
        v11 = *(a1 + 400);
        if (v11)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v7;
}

uint64_t nx_reaper_get(void *a1, uint64_t *a2)
{
  v3 = a1[53];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = obj_get(a1[49], 0x80000000, *(a1[47] + 168), &nx_reaper_desc, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[53] = *a2;
LABEL_2:
    obj_retain(v3);
    return 0;
  }

  return result;
}

uint64_t nx_reaper_checkpoint_traverse(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 376);
  v36 = 0;
  if (a4 == 2)
  {
    v7 = obj_checkpoint_known(a3);
LABEL_5:
    v8 = v7;
    if (v7)
    {
      return v8;
    }

    goto LABEL_6;
  }

  if (a4 == 1)
  {
    v7 = obj_checkpoint_start(a3);
    goto LABEL_5;
  }

LABEL_6:
  v37 = 0;
  v38 = 0;
  if (*(v6 + 88) && obj_type_is_or_contains_ephemeral(*(v6 + 72)))
  {
    v8 = 0;
    if ((*(v6 + 104) & 0x10) == 0 && (*(v6 + 104) & 6) != 2)
    {
      v9 = nx_reaper_obj_get(a1, *(v6 + 72), *(v6 + 76), *(v6 + 80), *(v6 + 88), &v36, &v37);
      if (v9)
      {
        v8 = v9;
        v10 = a1[50];
        if (!v10 || !*(v10 + 76))
        {
          log_err("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1105, (a1[48] + 212), *(v6 + 88), v9);
        }
      }

      else
      {
        if (v36)
        {
          v32 = v36;
        }

        else
        {
          v32 = a1;
        }

        v8 = obj_checkpoint_traverse(v32, a2, v37, a4);
        obj_release(v37);
      }

      if (v36)
      {
        obj_release(v36);
        v36 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return v8;
  }

  v11 = *(v6 + 48);
  if (!v11)
  {
    return v8;
  }

  v12 = *(v6 + 68);
  do
  {
    v13 = obj_get(a1[49], 0x80000000uLL, v11, &nx_reap_list_desc, 0, 0, 0, 0, &v38);
    if (v13)
    {
      v8 = v13;
      v30 = a1[50];
      if (!v30 || !*(v30 + 76))
      {
        log_err("%s:%d: %s failed to get reap list object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1125, (a1[48] + 212), v11, v13);
      }

      return v8;
    }

    v14 = v38[47];
    v34 = v12;
    if (a4 == 2)
    {
      v15 = obj_checkpoint_known(v38);
      goto LABEL_23;
    }

    if (a4 == 1)
    {
      v15 = obj_checkpoint_start(v38);
LABEL_23:
      v8 = v15;
      goto LABEL_25;
    }

    v8 = 0;
LABEL_25:
    v35 = *(v14 + 32);
    if (v8)
    {
      goto LABEL_56;
    }

    v16 = *(v14 + 52);
    if (v16 == -1)
    {
      goto LABEL_56;
    }

    v17 = v14 + 64;
    v18 = -1;
    while (1)
    {
      v19 = v17 + 40 * v16;
      v20 = *v19;
      if (*v19 != -1 && v20 > *(v14 + 44))
      {
        break;
      }

      v21 = *(v19 + 8);
      if (v21 != *(v6 + 72) || *(v19 + 24) != *(v6 + 88))
      {
        if (v18 == -1 || (v22 = v17 + 40 * v18, v21 != *(v22 + 8)) || *(v19 + 24) != *(v22 + 24))
        {
          v8 = 0;
          if ((*(v19 + 4) & 0x10) != 0 || (*(v19 + 4) & 6) == 2)
          {
            goto LABEL_49;
          }

          if (obj_type_is_or_contains_ephemeral(v21))
          {
            v23 = nx_reaper_obj_get(a1, *(v19 + 8), *(v19 + 12), *(v19 + 16), *(v19 + 24), &v36, &v37);
            if (v23)
            {
              v8 = v23;
              v24 = a1[50];
              if (!v24 || !*(v24 + 76))
              {
                log_err("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1185, (a1[48] + 212), *(v19 + 24), v23);
              }
            }

            else
            {
              if (v36)
              {
                v25 = v36;
              }

              else
              {
                v25 = a1;
              }

              v8 = obj_checkpoint_traverse(v25, a2, v37, a4);
              obj_release(v37);
            }

            if (v36)
            {
              obj_release(v36);
              v36 = 0;
            }

            goto LABEL_49;
          }
        }
      }

      v8 = 0;
LABEL_49:
      if (!v8)
      {
        v18 = v16;
        v16 = v20;
        if (v20 != -1)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    v26 = a1[50];
    if (!v26 || !*(v26 + 76))
    {
      log_err("%s:%d: %s Invalid reap list entry nrl_entries[%d].nrle_next = %d\n", "nx_reaper_checkpoint_traverse", 1147, (a1[48] + 212), v16, v20);
    }

    obj_release(v38);
    v8 = nx_corruption_detected_int(a1);
LABEL_56:
    v27 = *(v6 + 68);
    if (v27)
    {
      v11 = v35;
      v12 = (v34 - 1);
      if (v35 && v34 == 1)
      {
        v28 = a1[50];
        if (!v28 || !*(v28 + 76))
        {
          log_err("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n", "nx_reaper_checkpoint_traverse", 1201, (a1[48] + 212), v27);
        }

        v8 = nx_corruption_detected_int(a1);
        v12 = 0;
      }

      else if (!v35 && v34 != 1)
      {
        v29 = a1[50];
        if (!v29 || !*(v29 + 76))
        {
          log_warn("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n", "nx_reaper_checkpoint_traverse", 1206, (a1[48] + 212), *(v6 + 68), v34 - 1);
        }
      }
    }

    else
    {
      v12 = v34;
      v11 = v35;
    }

    obj_release(v38);
  }

  while (!v8 && v11);
  return v8;
}

uint64_t nx_reaper_init_phys(uint64_t a1, int a2)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 108) = (a2 & 0xFFFFFFFC) - 112;
  return 0;
}

uint64_t nx_reaper_init(void *a1)
{
  v2 = a1[7];
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v5 = *(v2 + 108);
  v6 = (obj_size_phys(a1) & 0xFFFFFFFCLL) - 112;
  if (v3 < v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v6 >= v5)
  {
    v8 = v3 >= v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v2 + 68);
  if (v9 == 1)
  {
    v10 = *(v2 + 48) == *(v2 + 56);
  }

  else
  {
    if (v9)
    {
      if (v8)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (*(v2 + 48))
    {
      goto LABEL_19;
    }

    v10 = *(v2 + 56) == 0;
  }

  if (!v10 || v8)
  {
LABEL_19:
    result = nx_corruption_detected_int(*(*a1 + 392));
    if (result)
    {
      return result;
    }
  }

LABEL_20:
  a1[47] = v2;
  v13 = obj_size_phys(a1);
  result = 0;
  a1[48] = v2 + v13 - *(v2 + 108);
  return result;
}

uint64_t nx_reap_list_init_phys(uint64_t a1, unsigned int a2)
{
  v2 = (a2 - 64) / 0x28;
  *(a1 + 44) = v2;
  *(a1 + 52) = -1;
  *(a1 + 60) = 0;
  v3 = (v2 - 1);
  if (v3)
  {
    v4 = vdupq_n_s64(v3 - 1);
    v5 = (v3 + 3) & 0x1FFFFFFFCLL;
    v6 = xmmword_23D298E90;
    v7 = xmmword_23D298EA0;
    v8 = (a1 + 104);
    v9 = vdupq_n_s64(1uLL);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v4, v7));
      v12 = vaddq_s64(v7, v9);
      if (vuzp1_s16(v11, *v4.i8).u8[0])
      {
        *(v8 - 10) = v12.i32[0];
      }

      if (vuzp1_s16(v11, *&v4).i8[2])
      {
        *v8 = v12.i32[2];
      }

      v13 = vaddq_s64(v6, v9);
      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v6))).i32[1])
      {
        v8[10] = v13.i32[0];
        v8[20] = v13.i32[2];
      }

      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v8 += 40;
      v5 -= 4;
    }

    while (v5);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  *(a1 + 40 * v3 + 64) = -1;
  return 0;
}

uint64_t nx_reap_list_init(void *a1)
{
  v2 = a1[7];
  v3 = v2[11];
  v4 = v3 > ((obj_size_phys(a1) - 64) / 0x28);
  v6 = v2[11];
  v5 = v2[12];
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v5 <= v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = v2[13];
  v10 = v2[14];
  if (v9 != -1 && v9 >= v6)
  {
    ++v8;
  }

  if (v10 != -1 && v10 >= v6)
  {
    ++v8;
  }

  v13 = v2[15];
  if (v13 != -1 && v13 >= v6)
  {
    v15 = v8 + 1;
  }

  else
  {
    v15 = v8;
  }

  if (v5 == 1)
  {
    v16 = v9 == v10;
  }

  else
  {
    if (v5)
    {
      if (v15)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    v16 = v9 == -1 && v10 == -1;
  }

  if (!v16 || v15 != 0)
  {
LABEL_36:
    result = nx_corruption_detected_int(*(*a1 + 392));
    if (result)
    {
      return result;
    }
  }

LABEL_37:
  result = 0;
  a1[47] = v2;
  return result;
}

uint64_t nx_reaper_obj_get(uint64_t *a1, int a2, int a3, unint64_t a4, unint64_t a5, uint64_t **a6, uint64_t *a7)
{
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  *a7 = 0;
  *a6 = 0;
  if (a4)
  {
    v14 = obj_get(a1[49], 0, a4, &apfs_desc, 0, 0, 0, 0, &v24);
    if (v14)
    {
      v15 = v14;
      log_err("%s:%d: %s unable to get fs object 0x%llx: %d\n", "nx_reaper_obj_get", 1038, (a1[48] + 212), a4, v14);
      return v15;
    }

    v17 = v24;
  }

  else
  {
    v17 = 0;
  }

  *a6 = v17;
  if ((a2 & 0x4000FFFF) == 0x4000000B)
  {
    v18 = (v17 ? v17 : a1);
    if (!omap_obj_get(v18, 0, 0, a7))
    {
      return 0;
    }
  }

  v19 = obj_descriptor_and_flags_for_type(a2, &v23, &v21);
  if (v19)
  {
    v16 = v19;
  }

  else
  {
    LODWORD(v22) = a3;
    v16 = obj_get(a1[49], v23, a5, &v21, 0, v24, 0, 0, a7);
    if (!v16)
    {
      return v16;
    }
  }

  log_err("%s:%d: %s unable to get object 0x%llx: %d\n", "nx_reaper_obj_get", 1059, (a1[48] + 212), a5, v16);
  if (v24)
  {
    obj_release(v24);
  }

  *a7 = 0;
  *a6 = 0;
  return v16;
}

uint64_t nx_reaper_add_ext(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, void *a8)
{
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v16 = nx_reaper_get(a1, &v45);
  if (v16)
  {
    return v16;
  }

  v17 = v45[47];
  v16 = obj_descriptor_funcs_for_type(a2, &v42);
  if (v16)
  {
LABEL_3:
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_ext", 1255, (*(a1 + 384) + 212), a2, v16);
LABEL_14:
    obj_release(v45);
    return v16;
  }

  if (!*(v42 + 24))
  {
    v16 = 22;
    goto LABEL_3;
  }

  obj_lock(v45, 2);
  v18 = obj_modify(v45, 0, a6);
  if (v18)
  {
    v16 = v18;
LABEL_13:
    obj_unlock(v45, 2);
    goto LABEL_14;
  }

  v19 = *(a1 + 392);
  if (*(v17 + 48) == 0)
  {
    v20 = obj_create(v19, 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v44);
    if (v20)
    {
      v16 = v20;
      log_err("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_13;
    }

    v23 = obj_oid(v44);
    *(v17 + 48) = v23;
    *(v17 + 56) = v23;
    v24 = (v17 + 68);
    goto LABEL_17;
  }

  v21 = obj_get(v19, 2147483649, *(v17 + 56), &nx_reap_list_desc, 0, 0, 0, a6, &v44);
  if (v21)
  {
    v16 = v21;
    log_err("%s:%d: %s failed to get reap list tail: %d\n");
    goto LABEL_13;
  }

  v24 = (v17 + 68);
  if (!*(v17 + 68) && *(v17 + 48) == *(v17 + 56))
  {
LABEL_17:
    *v24 = 1;
    obj_dirty(v45, a6, 0);
  }

  v25 = *(v44 + 376);
  if (v25[12] > (v25[11] - 2))
  {
    v26 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v43);
    if (v26)
    {
      v16 = v26;
      obj_unlock(v45, 2);
      obj_release(v44);
      goto LABEL_14;
    }

    v27 = obj_oid(v43);
    *(*(v44 + 376) + 32) = v27;
    *(v17 + 56) = obj_oid(v43);
    v28 = *(v17 + 68);
    if (v28)
    {
      *(v17 + 68) = v28 + 1;
    }

    obj_dirty(v45, a6, 0);
    obj_release(v44);
    v44 = v43;
    v25 = *(v43 + 376);
  }

  v29 = *(v17 + 32);
  *(v17 + 32) = v29 + 1;
  v30 = v25[15];
  if (v30 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1325, (*(a1 + 384) + 212));
    obj_unlock(v45, 2);
    obj_release(v44);
    obj_release(v45);
    v41 = a1;
    return nx_corruption_detected_int(v41);
  }

  v31 = v25 + 16;
  v32 = &v25[10 * v30 + 16];
  v33 = *v32;
  v25[15] = *v32;
  v34 = v25[14];
  if (v34 != -1)
  {
    v31[10 * v34] = v30;
  }

  if (v25[13] == -1)
  {
    v25[13] = v30;
  }

  v25[14] = v30;
  v35 = v25[12];
  v25[12] = v35 + 1;
  if ((a7 & 2) != 0)
  {
    v36 = 21;
  }

  else
  {
    v36 = 5;
  }

  *v32 = -1;
  *(v32 + 4) = v36;
  *(v32 + 8) = a2;
  *(v32 + 12) = a3;
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  *(v32 + 32) = a6;
  if (v33 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1356, (*(a1 + 384) + 212));
    obj_unlock(v45, 2);
    obj_release(v44);
    obj_release(v45);
    v41 = a1;
    return nx_corruption_detected_int(v41);
  }

  v37 = &v31[10 * v33];
  v38 = *v37;
  *v32 = v33;
  v25[14] = v33;
  v25[15] = v38;
  v25[12] = v35 + 2;
  if ((a7 & 2) != 0)
  {
    v39 = 19;
  }

  else
  {
    v39 = 3;
  }

  if (a7)
  {
    v39 |= 0xCu;
  }

  *v37 = -1;
  v37[1] = v39;
  v37[2] = a2;
  v37[3] = a3;
  *(v37 + 2) = a4;
  *(v37 + 3) = a5;
  *(v37 + 4) = v29;
  obj_dirty(v44, a6, 0);
  obj_unlock(v45, 2);
  obj_release(v44);
  obj_release(v45);
  if (!a8)
  {
    return 0;
  }

  v40 = v29;
  v16 = 0;
  *a8 = v40;
  return v16;
}

uint64_t nx_reaper_add_sub_object(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v14 = nx_reaper_get(a1, &v43);
  if (v14)
  {
    return v14;
  }

  v15 = v43[47];
  v14 = obj_descriptor_funcs_for_type(a2, &v40);
  if (v14)
  {
LABEL_3:
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_sub_object", 1442, (*(a1 + 384) + 212), a2, v14);
LABEL_4:
    obj_release(v43);
    return v14;
  }

  if (!*(v40 + 24))
  {
    v14 = 22;
    goto LABEL_3;
  }

  obj_lock(v43, 2);
  v17 = obj_modify(v43, 0, a6);
  if (v17)
  {
    v14 = v17;
    obj_unlock(v43, 2);
    goto LABEL_4;
  }

  v18 = *(v15 + 48);
  if (!v18 && !*(v15 + 56))
  {
    v21 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v42);
    if (v21)
    {
      v14 = v21;
      log_err("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_14;
    }

    v22 = obj_oid(v42);
    *(v15 + 48) = v22;
    *(v15 + 56) = v22;
    v20 = (v15 + 68);
    goto LABEL_21;
  }

  v19 = obj_get(*(a1 + 392), 2147483649, v18, &nx_reap_list_desc, 0, 0, 0, a6, &v42);
  if (v19)
  {
    v14 = v19;
    log_err("%s:%d: %s failed to get reap list head: %d\n");
LABEL_14:
    log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_reaper_add_sub_object", 1478, (*(a1 + 384) + 212), v14);
    obj_unlock(v43, 2);
    obj_release(v43);
    return v14;
  }

  v20 = (v15 + 68);
  if (!*(v15 + 68) && *(v15 + 48) == *(v15 + 56))
  {
LABEL_21:
    *v20 = 1;
    obj_dirty(v43, a6, 0);
  }

  v23 = *(v42 + 376);
  if (v23[12] > v23[11] + ~(a7 & 1u))
  {
    v24 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v41);
    if (v24)
    {
      v14 = v24;
      obj_unlock(v43, 2);
      obj_release(v42);
      goto LABEL_4;
    }

    v25 = v41;
    *(*(v41 + 376) + 32) = *(v15 + 48);
    *(v15 + 48) = obj_oid(v25);
    v26 = *(v15 + 68);
    if (v26)
    {
      *(v15 + 68) = v26 + 1;
    }

    obj_dirty(v43, a6, 0);
    obj_release(v42);
    v42 = v41;
    v23 = *(v41 + 376);
  }

  v27 = v23[15];
  if (a7)
  {
    if (v27 == -1)
    {
      log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1514, (*(a1 + 384) + 212));
      obj_unlock(v43, 2);
      obj_release(v42);
      obj_release(v43);
      v39 = a1;
      return nx_corruption_detected_int(v39);
    }

    v28 = &v23[10 * v27];
    v31 = v28[16];
    v29 = v28 + 16;
    v30 = v31;
    v23[15] = v31;
    v32 = v23[14];
    *v29 = v23[13];
    v23[13] = v27;
    if (v32 == -1)
    {
      v23[14] = v27;
    }

    ++v23[12];
    if ((a7 & 2) != 0)
    {
      v33 = 29;
    }

    else
    {
      v33 = 13;
    }

    v29[1] = v33;
    v29[2] = a2;
    v29[3] = a3;
    *(v29 + 2) = a4;
    *(v29 + 3) = a5;
    *(v29 + 4) = a6;
    v27 = v30;
  }

  if (v27 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1542, (*(a1 + 384) + 212));
    obj_unlock(v43, 2);
    obj_release(v42);
    obj_release(v43);
    v39 = a1;
    return nx_corruption_detected_int(v39);
  }

  v34 = &v23[10 * v27];
  v36 = v34[16];
  v35 = v34 + 16;
  v23[15] = v36;
  v37 = v23[14];
  *v35 = v23[13];
  v23[13] = v27;
  if (v37 == -1)
  {
    v23[14] = v27;
  }

  ++v23[12];
  if ((a7 & 2) != 0)
  {
    v38 = 21;
  }

  else
  {
    v38 = 5;
  }

  v35[1] = v38;
  v35[2] = a2;
  v35[3] = a3;
  *(v35 + 2) = a4;
  *(v35 + 3) = a5;
  *(v35 + 4) = a6;
  obj_dirty(v42, a6, 0);
  obj_unlock(v43, 2);
  obj_release(v42);
  obj_release(v43);
  return 0;
}

void nx_reaper_check_for_work(uint64_t *a1)
{
  v5 = 0;
  v6 = 0;
  if (!nx_reaper_get(a1, &v6))
  {
    v2 = v6[47];
    obj_lock(v6, 2);
    if (!*(v2 + 88))
    {
      v3 = *(v2 + 48);
      if (!v3 || obj_get(a1[49], 0x80000000uLL, v3, &nx_reap_list_desc, 0, 0, 0, 0, &v5))
      {
        goto LABEL_4;
      }

      v4 = v5[47];
      if (!*(v4 + 48) && !*(v4 + 32))
      {
        obj_release(v5);
        goto LABEL_4;
      }

      obj_release(v5);
    }

    obj_unlock(v6, 2);
    nx_reaper(a1);
    obj_lock(v6, 2);
LABEL_4:
    obj_unlock(v6, 2);
    obj_release(v6);
  }
}

uint64_t nx_reaper(uint64_t *a1)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  result = nx_reaper_get(a1, &v20);
  if (result)
  {
    return result;
  }

  v3 = v20[47];
  obj_lock(v20, 2);
  v4 = v20;
  if (*(v20 + 98) || *(v20 + 99))
  {
    obj_unlock(v20, 2);
    obj_release(v20);
    log_debug("%s:%d: reaper thread is exiting, returning EBUSY\n", "nx_reaper", 1698);
    return 16;
  }

  v5 = 0;
  *(v20 + 98) = 1;
  while (1)
  {
    v14 = 0;
    v15 = 0;
    obj_unlock(v4, 2);
    v19 = 0;
    v6 = tx_enter(a1, &v19);
    obj_lock(v20, 2);
    v4 = v20;
    if (v6)
    {
      goto LABEL_38;
    }

    v7 = obj_modify(v20, 0, v19);
    v4 = v20;
    if (v7)
    {
      v6 = v7;
      v13 = 0;
      goto LABEL_39;
    }

    if (*(v3 + 88))
    {
      goto LABEL_13;
    }

    if (*(v20 + 99))
    {
      goto LABEL_44;
    }

    record = nx_reaper_next_record(a1, v20, v19);
    if (record)
    {
      break;
    }

    v4 = v20;
    if (!*(v3 + 88))
    {
LABEL_44:
      v13 = 0;
      v6 = 0;
      goto LABEL_39;
    }

LABEL_13:
    obj_unlock(v4, 2);
    if ((*(v3 + 104) & 4) == 0)
    {
      goto LABEL_16;
    }

    v9 = obj_descriptor_funcs_for_type(*(v3 + 72), &v18);
    if (v9)
    {
      goto LABEL_15;
    }

    if (!*(v18 + 24))
    {
      v9 = 22;
LABEL_15:
      log_err("%s:%d: %s object type 0x%x not reapable?: %d\n", "nx_reaper", 1739, (a1[48] + 212), *(v3 + 72), v9);
      v5 = 1;
LABEL_16:
      obj_lock(v20, 2);
LABEL_17:
      if ((*(v3 + 104) & 2) != 0)
      {
        *(v3 + 40) = *(v3 + 96);
      }

      *(v3 + 64) &= ~2u;
      *(v3 + 88) = 0;
      goto LABEL_20;
    }

    v10 = nx_reaper_obj_get(a1, *(v3 + 72), *(v3 + 76), *(v3 + 80), *(v3 + 88), &v16, &v17);
    if (v10)
    {
      v11 = v10;
      log_err("%s:%d: %s unable to get object 0x%llx of type 0x%x: %d\n", "nx_reaper", 1744, (a1[48] + 212), *(v3 + 88), *(v3 + 72), v10);
    }

    else
    {
      if ((*(v3 + 64) & 2) == 0)
      {
        bzero(v20[48], *(v3 + 108));
      }

      v12 = (*(v18 + 24))(v17, (*(v3 + 104) >> 3) & 3, v20[48], *(v3 + 108), v19);
      v11 = v12;
      if (v12 && v12 != 36)
      {
        log_err("%s:%d: %s error reaping object 0x%llx of type 0x%x: %d\n", "nx_reaper", 1758, (a1[48] + 212), *(v3 + 88), *(v3 + 72), v12);
      }

      obj_release(v17);
      if (v16)
      {
        obj_release(v16);
        v16 = 0;
      }
    }

    obj_lock(v20, 2);
    if (v11 != 36)
    {
      v5 = 1;
      goto LABEL_17;
    }

    *(v3 + 64) |= 2u;
    v5 = 1;
LABEL_20:
    obj_dirty(v20, v19, 0);
    obj_unlock(v20, 2);
    spaceman_currently_available_space(a1, 0, &v15, &v14, 0, 0);
    v6 = tx_leave(a1, v19, (v14 < 0x3E8) | (4 * (v14 < 0x7D0)));
    obj_lock(v20, 2);
    v4 = v20;
    if (v6)
    {
      goto LABEL_38;
    }

    if (*(v20 + 99))
    {
      v6 = 0;
LABEL_38:
      v13 = 1;
      goto LABEL_39;
    }
  }

  v6 = record;
  v13 = 0;
  v4 = v20;
LABEL_39:
  *(v4 + 98) = 0;
  obj_unlock(v4, 2);
  obj_release(v20);
  if ((v13 & 1) == 0)
  {
    tx_leave(a1, v19, 0);
  }

  if (v6 | v5)
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

void nx_reaper_shut_down(void *a1)
{
  v4 = 0;
  if (!nx_reaper_get(a1, &v4))
  {
    obj_lock(v4, 2);
    v2 = v4;
    ++*(v4 + 99);
    obj_unlock(v2, 2);
    v3 = a1[53];
    if (v3)
    {
      obj_release(v3);
      a1[53] = 0;
    }

    obj_release(v4);
  }
}

uint64_t extent_list_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t nx_metadata_fragmented_extent_list_tree_get(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 22;
  }

  v6 = a1 + 54;
  for (i = 54; i != 58; ++i)
  {
    v8 = a1[i];
    if (v8 && obj_oid(a1[i]) == a2)
    {
      obj_retain(v8);
      v14 = 0;
      *a3 = v8;
      return v14;
    }
  }

  obj_lock(a1, 2);
  v9 = 0;
  v10 = -1;
  do
  {
    v11 = &a1[v9];
    v12 = v11[54];
    if (v12)
    {
      if (obj_oid(v11[54]) == a2)
      {
        obj_retain(v12);
        *a3 = v12;
        obj_unlock(a1, 2);
        return 0;
      }
    }

    else if (v10 == -1)
    {
      v10 = v9;
    }

    ++v9;
  }

  while (v9 != 4);
  if ((a2 & 0x8000000000000000) != 0)
  {
    v14 = btree_get(a1, 0x88000000uLL, a2 & 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 10, extent_list_key_cmp, 0, a3);
  }

  else
  {
    v14 = btree_get(a1, 0x40000000uLL, a2, 0, 0, 0, 10, extent_list_key_cmp, 0, a3);
    if (!v14 && v10 != -1)
    {
      v13 = *a3;
      v6[v10] = *a3;
      obj_retain(v13);
      v14 = 0;
    }
  }

  obj_unlock(a1, 2);
  return v14;
}

uint64_t nx_metadata_fragmented_sanity_check(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v5 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v18);
  if (!v5)
  {
    v17 = 0;
    bt_iterator_init(v13, v18, 0, 0, &v17, 8, 8, &v15, 0x10u);
    v5 = v6;
    if (!v6)
    {
      v8 = 0;
      while (!bt_iterator_ended(v13))
      {
        if (v17 == v8)
        {
          v5 = 0;
        }

        else
        {
          v5 = nx_corruption_detected_int(a1);
        }

        if (nx_superblock_sanity_check_extent(a1[47], 0, v15, v16, 0))
        {
          v5 = nx_corruption_detected_int(a1);
        }

        v9 = v16;
        if (v16 > a3 - v8)
        {
          v5 = nx_corruption_detected_int(a1);
          v9 = v16;
        }

        if (v5)
        {
          goto LABEL_3;
        }

        v8 += v9;
        v10 = bt_iterator_next(v13);
        if (v10)
        {
          v5 = v10;
          v11 = (a1[48] + 212);
          v12 = strerror(v10);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_fragmented_sanity_check", 2351, v11, v12, v5);
          goto LABEL_3;
        }
      }

      if (a3 == v8)
      {
        v5 = 0;
      }

      else
      {
        v5 = nx_corruption_detected_int(a1);
      }
    }

LABEL_3:
    obj_release(v18);
  }

  return v5;
}

uint64_t nx_metadata_fragmented_block_address_lookup(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
{
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v8 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v16);
  if (!v8)
  {
    v15 = a3;
    v11 = 16;
    v12 = 8;
    v8 = bt_lookup_variant(v16, 0, &v15, &v12, 8, &v13, &v11, 1, 0, 0);
    if (!v8)
    {
      v9 = v14 - (a3 - v15);
      if (v14 <= a3 - v15)
      {
        v8 = 2;
      }

      else
      {
        *a4 = v13 + a3 - v15;
        v8 = 0;
        if (a5)
        {
          *a5 = v9;
        }
      }
    }

    obj_release(v16);
  }

  return v8;
}

uint64_t nx_metadata_range_overlap_check(void *a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v8 = a1[60];
  if (!v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = a2;
    v12 = 8;
    v11 = 16;
    LODWORD(result) = bt_lookup_variant(a1[58], 0, &v15, &v12, 8, &v13, &v11, 1, 0, 0);
    if (result || (v10 = v15, a2 - v15 >= v14))
    {
      if (result == 2)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if (a3 < 2 || result)
      {
        return result;
      }

      v15 = a2;
      v11 = 16;
      v12 = 8;
      LODWORD(result) = bt_lookup_variant(a1[58], 0, &v15, &v12, 8, &v13, &v11, 4, 0, 0);
      if (result || (v10 = v15, v15 - a2 >= a3))
      {
        if (result == 2)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }
    }

    if (a4)
    {
      *a4 = v10;
    }

    return 17;
  }

  if (calc_overlap_range(a1[59], v8, a2, a3, a4))
  {
    return 17;
  }

  if (!a2)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return 17;
  }

  return 0;
}

uint64_t nx_metadata_range_add(uint64_t *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v19 = 0;
    v16 = 0;
    v17 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    v6 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v19);
    if (v6)
    {
      return v6;
    }

    v7 = btree_iterate_nodes(v19, 0, 0, nx_metadata_range_add_btree_callback, 0, 0);
    if (!v7)
    {
      v18 = 0;
      bt_iterator_init(v14, v19, 0, 0, &v18, 8, 8, &v16, 0x10u);
      v6 = v10;
      if (bt_iterator_ended(v14))
      {
        goto LABEL_9;
      }

      while (1)
      {
        v7 = nx_metadata_range_check_and_insert(a1, v16, v17, 0);
        if (v7)
        {
          break;
        }

        v11 = bt_iterator_next(v14);
        if (v11)
        {
          v6 = v11;
          v12 = (a1[48] + 212);
          v13 = strerror(v11);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_range_add", 2587, v12, v13, v6);
          goto LABEL_9;
        }

        if (bt_iterator_ended(v14))
        {
          v6 = 0;
          goto LABEL_9;
        }
      }
    }

    v6 = v7;
LABEL_9:
    obj_release(v19);
    return v6;
  }

  v8 = a3 & 0x7FFFFFFF;

  return nx_metadata_range_check_and_insert(a1, a2, v8, a5);
}

uint64_t nx_metadata_range_check_and_insert(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (nx_superblock_sanity_check_extent(a1[47], 0, a2, a3, a4))
  {
    return 22;
  }

  if (a1[58])
  {
    result = nx_metadata_range_overlap_check(a1, a2, a3, 0);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = btree_create(a1, 0x88000000uLL, 0, 10, 0, 8u, 16, extent_list_key_cmp, 0, a1 + 58);
  if (!result)
  {
LABEL_5:
    v8[1] = a3;
    v9 = a2;
    v8[0] = a2;
    return bt_insert(a1[58], 0, &v9, 8, v8, 0x10u, 0);
  }

  return result;
}

uint64_t nx_metadata_range_add_btree_callback(uint64_t a1)
{
  v2 = *(*a1 + 392);
  v3 = obj_oid(a1);
  v4 = (obj_size_phys(a1) + *(v2[47] + 36) - 1) / *(v2[47] + 36);

  return nx_metadata_range_check_and_insert(v2, v3, v4, 0);
}

const char *nx_metadata_range_optimize(const char *result)
{
  *(result + 59) = 0;
  *(result + 60) = 0;
  v1 = *(result + 58);
  if (v1)
  {
    v2 = result;
    v9 = 0uLL;
    memset(v6, 0, sizeof(v6));
    v7 = 0;
    v8[0] = 0;
    v8[1] = 0;
    v10 = 0;
    bt_iterator_init(v6, v1, 0, 0, &v10, 8, 8, &v9, 0x10u);
    result = bt_iterator_ended(v6);
    if (!result)
    {
      v3 = 0;
      while (1)
      {
        v4 = *(&v9 + 1);
        v5 = v9;
        if (v9)
        {
          if (*(&v9 + 1))
          {
            goto LABEL_9;
          }
        }

        else
        {
          v4 = *(&v9 + 1) - 1;
          *&v9 = 1;
          *(&v9 + 1) = v4;
          v5 = 1;
          if (v4)
          {
LABEL_9:
            if (v8[1] && v8[0] + v8[1] == v5)
            {
              v8[1] += v4;
              if (bt_update(*(v2 + 58), 0, v8, 8, v8, 0x10u, 0))
              {
                return log_err("%s:%d: %s error updating metadata ranges tree: %d\n");
              }

              if (bt_remove(*(v2 + 58), 0, &v9, 8u, 0))
              {
                return log_err("%s:%d: %s error removing coalesced extent from metadata ranges tree: %d\n");
              }
            }

            else
            {
              ++v3;
              *v8 = v9;
            }
          }
        }

        bt_iterator_next(v6);
        result = bt_iterator_ended(v6);
        if (result)
        {
          if (v3 == 1)
          {
            *(v2 + 472) = *v8;
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t nx_checkpoint_desc_block_address(uint64_t *a1, unint64_t a2, void *a3)
{
  v3 = a1[47];
  v4 = *(v3 + 104);
  if ((v4 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v7 = *(v3 + 112);
  if (v4 < 0)
  {
    return nx_metadata_fragmented_block_address_lookup(a1, v7, a2, a3, 0);
  }

  result = 0;
  *a3 = v7 + a2;
  return result;
}

uint64_t nx_checkpoint_data_block_address(uint64_t *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v4 = a1[47];
  v5 = *(v4 + 108);
  v6 = (v5 & 0x7FFFFFFF) - a2;
  if ((v5 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v10 = *(v4 + 120);
  if (v5 < 0)
  {
    return nx_metadata_fragmented_block_address_lookup(a1, v10, a2, a3, a4);
  }

  *a3 = v10 + a2;
  result = 0;
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t nx_unblock_physical_range(uint64_t *a1)
{
  if (*(a1[47] + 1256))
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    v2 = tx_enter(a1, &v10);
    if (v2)
    {
      return v2;
    }

    evict_mapping_tree = nx_get_evict_mapping_tree(a1, 0x40000000u, *(a1[47] + 1256), 1, 1, &v9);
    if (evict_mapping_tree)
    {
      v3 = evict_mapping_tree;
      log_err("%s:%d: %s failed to get mapping tree, error: %d\n", "nx_unblock_physical_range", 2929, (a1[48] + 212), evict_mapping_tree);
      goto LABEL_12;
    }

    v3 = btree_delete(v9, v10, &v8);
    obj_release(v9);
    if (v3)
    {
      log_err("%s:%d: %s failed to delete mapping, error: %d\n");
      goto LABEL_12;
    }

    *(a1[47] + 1256) = 0;
    v2 = tx_leave(a1, v10, 0);
    if (v2)
    {
      return v2;
    }
  }

  v10 = 0;
  v3 = tx_enter(a1, &v10);
  if (v3)
  {
    return v3;
  }

  v5 = spaceman_unset_block_out_range(a1, v10);
  if (!v5)
  {
    return tx_leave(a1, v10, 0);
  }

  v3 = v5;
  log_err("%s:%d: %s spaceman_unset_block_out_range failed with error %u\n");
LABEL_12:
  v6 = tx_leave(a1, v10, 0);
  if (v6)
  {
    log_err("%s:%d: %s tx_leave failed with error: %d\n", "nx_unblock_physical_range", 2973, (a1[48] + 212), v6);
  }

  return v3;
}

uint64_t nx_ratelimit_log_allowed(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  timestamp = get_timestamp();
  if ((timestamp - *(a1 + 1056)) >= 0x3B9ACA01)
  {
    v3 = 0;
    *(a1 + 1056) = timestamp;
LABEL_6:
    *(a1 + 1064) = v3 + 1;
    return 1;
  }

  v3 = *(a1 + 1064);
  if (v3 <= 0xF)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t nx_reaper_next_record(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 376);
  v5 = *(v4 + 48);
  if (!v5)
  {
    return 0;
  }

  v19 = 0;
  v20 = 0;
  v8 = obj_get(*(a1 + 392), 0x80000001uLL, v5, &nx_reap_list_desc, 0, 0, 0, a3, &v20);
  if (v8)
  {
    v9 = v8;
    log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_reaper_next_record", 1597, (*(a1 + 384) + 212), v8);
    return v9;
  }

  v10 = v20;
  if (*(v4 + 88))
  {
LABEL_21:
    obj_release(v10);
    return 0;
  }

  v11 = v20[47];
  while (1)
  {
    while (1)
    {
      v12 = *(v11 + 52);
      if (v12 == -1)
      {
        break;
      }

      v13 = v11 + 64 + 40 * v12;
      *(v4 + 104) = *(v13 + 4);
      *(v4 + 72) = *(v13 + 8);
      *(v4 + 80) = *(v13 + 16);
      *(v4 + 96) = *(v13 + 32);
      obj_dirty(a2, a3, 0);
      v14 = *v13;
      if (*(v11 + 52) == *(v11 + 56))
      {
        *(v11 + 56) = v14;
      }

      *v13 = *(v11 + 60);
      *(v13 + 4) = 0;
      *(v11 + 60) = v12;
      --*(v11 + 48);
      *(v11 + 52) = v14;
      obj_dirty(v20, a3, 0);
      if (*(v4 + 88))
      {
        goto LABEL_20;
      }
    }

    v15 = *(v11 + 32);
    if (!v15)
    {
      if (!*(v4 + 68) && *(v4 + 48) == *(v4 + 56))
      {
        *(v4 + 68) = 1;
        obj_dirty(a2, a3, 0);
      }

LABEL_20:
      v10 = v20;
      goto LABEL_21;
    }

    v16 = obj_get(*(a1 + 392), 0x80000000uLL, v15, &nx_reap_list_desc, 0, 0, 0, a3, &v19);
    if (v16)
    {
      break;
    }

    *(v4 + 48) = *(v11 + 32);
    v17 = *(v4 + 68);
    if (v17)
    {
      *(v4 + 68) = v17 - 1;
    }

    obj_dirty(a2, a3, 0);
    obj_free(v20);
    obj_release(v20);
    v10 = v19;
    v19 = 0;
    v20 = v10;
    v11 = v10[47];
    if (*(v4 + 88))
    {
      goto LABEL_21;
    }
  }

  v9 = v16;
  obj_release(v20);
  return v9;
}

uint64_t spaceman_free_extent_cache_init(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int a4, char *a5)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v5 - 65537) < 0xFFFF0001)
  {
    return 22;
  }

  bzero(a5, 0x558uLL);
  if (!a1 || (result = new_lock((a5 + 16)), !result))
  {
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 22) = a3 | (v5 << 8);
    v11 = _apfs_calloc_typed(v5, 0x18uLL, 0x1000040504FFAC1uLL);
    *(a5 + 10) = v11;
    if (v11)
    {
      spaceman_free_extent_cache_table_init(a5);
      return 0;
    }

    else
    {
      if (a1)
      {
        free_lock((a5 + 16));
      }

      return 12;
    }
  }

  return result;
}

uint64_t spaceman_free_extent_cache_table_init(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 <= 0x2FF)
  {
    v5 = (v1 >> 8) - 1;
    v2 = *(result + 80);
  }

  else
  {
    v2 = *(result + 80);
    v3 = 1;
    v4 = 1;
    do
    {
      *(v2 + 24 * v4++) = (v3 + 1);
      v3 = v4;
      v5 = (*(result + 88) >> 8) - 1;
    }

    while (v5 > v4);
  }

  *(v2 + 24 * v5) = 0;
  *(result + 92) = 1;
  return result;
}

void spaceman_free_extent_cache_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      _apfs_free(v2, 24 * (*(a1 + 88) >> 8));
      *(a1 + 80) = 0;
    }

    if (*a1)
    {
      free_lock((a1 + 16));
      *a1 = 0;
    }
  }
}

uint64_t spaceman_free_extent_cache_reset(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (HIBYTE(*(a1 + 88)))
  {
    v5 = *a1;
    v4 = *(a1 + 8);
    spaceman_free_extent_cache_destroy(a1);
    result = spaceman_free_extent_cache_init(v5, v4, v2, (v2 >> 8), a1);
    if (result)
    {
      v6 = *(a1 + 88);
      v7 = "main";
      if (v6 == 1)
      {
        v7 = "tier2";
      }

      result = log_err("%s:%d: %s dev %d Error reinitializing %s free extent cache: %d\n", "spaceman_free_extent_cache_reset", 262, (*(*a1 + 384) + 212), v6, v7, result);
      *(a1 + 280) |= 2uLL;
    }
  }

  else
  {
    bzero((a1 + 92), 0x4FCuLL);
    bzero(*(a1 + 80), 24 * (v2 >> 8));

    return spaceman_free_extent_cache_table_init(a1);
  }

  return result;
}

uint64_t spaceman_free_extent_cache_scan_should_pause(uint64_t a1, unint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (*(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 56) / v2 > 0x64)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) != 0 || (*(a1 + 88) >> 8) - 1 > *(a1 + 94))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 176);
  if (v5 <= *(a1 + 224))
  {
    v5 = *(a1 + 224);
  }

  if (v5 < *(a1 + 248) || (v6 = *(a1 + 128), (v6 - *(a1 + 120)) > 3))
  {
LABEL_15:
    v3 = 0;
  }

  else
  {
    *(a1 + 328) = v6;
    v3 = 1;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return v3;
}

void spaceman_free_extent_cache_print_stats(void *a1)
{
  v32 = 0;
  if (!spaceman_get(a1, &v32))
  {
    v1 = 0;
    for (i = 1; ; i = 0)
    {
      v3 = i;
      v4 = v32[47] + 48 * v1;
      v7 = *(v4 + 48);
      v5 = v4 + 48;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      v8 = v32[v1 + 197];
      if (!v8)
      {
        goto LABEL_42;
      }

      v31 = v3;
      v9 = *(v5 + 24);
      v10 = *(v8 + 94);
      if (*v8)
      {
        pthread_mutex_lock((v8 + 16));
      }

      v11 = v8 + 1264;
      if (spaceman_fxc_tree_last(v8, v8 + 1264, 1u))
      {
        v30 = 0;
      }

      else
      {
        v30 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)) + 8) & 0xFFFFFFFFFFFFFLL;
      }

      if (spaceman_fxc_tree_first(v8, v8 + 1264))
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v29 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361))) & 0xFFFFFFFFFFFFFLL;
        if (spaceman_fxc_tree_last(v8, v8 + 1264, 0))
        {
          v13 = 0;
          v12 = v29;
        }

        else
        {
          v14 = (*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)));
          v12 = v29;
          v13 = (*v14 & 0xFFFFFFFFFFFFFLL) - v29 + (v14[1] & 0xFFFFFFFFFFFFFLL);
        }
      }

      v15 = *(v8 + 96);
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = *(v8 + 96);
      }

      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      if (v10)
      {
        v18 = v15 / v10;
      }

      else
      {
        v18 = 0;
      }

      log_info("%s:%d: %s dev %d smfree %lld/%lld table %d/%d blocks %lld %lld:%lld:%lld %d.%02d%% range %lld:%lld %d.%02d%% scans %lld\n", "spaceman_fxc_print_stats", 477, (*(*v8 + 384) + 212), *(v8 + 88), v9, v6, v10, (*(v8 + 88) >> 8) - 1, v15, *(v8 + 120), v18, v30, 10000 * v15 / v17 / 0x64, 10000 * v15 / v17 % 0x64, v12, v13, 10000 * v13 / v6 / 0x64, 10000 * v13 / v6 % 0x64, *(v8 + 336));
      v19 = (v8 + 272);
      v20 = 3;
      do
      {
        v21 = *(v19 - 4);
        if (v21)
        {
          if (v9)
          {
            v22 = v9;
          }

          else
          {
            v22 = *(v19 - 4);
          }

          v23 = *(v19 - 5);
          if (v23)
          {
            v24 = v21 / v23;
          }

          else
          {
            v24 = 0;
          }

          log_info("%s:%d: %s dev %d scan_stats[%d]: foundmax %lld extents %lld blocks %lld long %lld avg %lld %d.%02d%% range %lld:%lld %d.%02d%%\n", "spaceman_fxc_print_stats", 496, (*(*v8 + 384) + 212), *(v8 + 88), v20 - 1, *v19, v23, v21, *(v19 - 3), v24, 10000 * v21 / v22 / 0x64, 10000 * v21 / v22 % 0x64, *(v19 - 2), *(v19 - 1), 10000 * *(v19 - 1) / v6 / 0x64, 10000 * *(v19 - 1) / v6 % 0x64);
        }

        v19 -= 6;
        --v20;
      }

      while (v20);
      v25 = *(v8 + 344);
      v26 = *v8;
      if (v25)
      {
        log_info("%s:%d: %s dev %d Searches: %lld success %lld fail %lld partial %lld, bm search yes:%lld (%lld/%lld/%lld) no:%lld/%lld\n", "spaceman_fxc_print_stats", 509, (*(v26 + 384) + 212), *(v8 + 88), v25, *(v8 + 352), *(v8 + 424), *(v8 + 416), *(v8 + 448), *(v8 + 456), *(v8 + 464), *(v8 + 472), *(v8 + 432), *(v8 + 440));
        v27 = *(v8 + 360);
        v3 = v31;
        if (v27)
        {
          v28 = *(v8 + 368) / v27;
        }

        else
        {
          v28 = 0;
        }

        log_info("%s:%d: %s dev %d Remainders: zero %lld one %lld tiny %lld small %lld good %lld, total %lld blocks %lld avg %lld\n", "spaceman_fxc_print_stats", 515, (*(*v8 + 384) + 212), *(v8 + 88), *(v8 + 408), *(v8 + 400), *(v8 + 392), *(v8 + 384), *(v8 + 376), v27, *(v8 + 368), v28);
        if (!*v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v3 = v31;
        if (!v26)
        {
          goto LABEL_42;
        }
      }

      pthread_mutex_unlock((v8 + 16));
LABEL_42:
      v1 = 1;
      if ((v3 & 1) == 0)
      {
        obj_release(v32);
        return;
      }
    }
  }
}

uint64_t spaceman_free_extent_cache_setup(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1576;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    if (!*(v5 + 8 * v4))
    {
      v8 = *(*(a2 + 376) + 48 * v4 + 48);
      if (v8)
      {
        v9 = _apfs_calloc_typed(1uLL, 0x558uLL, 0x10200402E7C0D0DuLL);
        *(v5 + 8 * v4) = v9;
        if (!v9)
        {
          v12 = 12;
          goto LABEL_13;
        }

        v10 = v8 >> 18;
        if (v8 >> 18 >= 0xFF80)
        {
          LODWORD(v10) = 65408;
        }

        v11 = spaceman_free_extent_cache_init(a1, a2, v4, v10 + 128, v9);
        if (v11)
        {
          break;
        }
      }
    }

    v4 = 1;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v11;
  v13 = *(v5 + 8 * v4);
  if (v13)
  {
    *(v13 + 280) |= 2uLL;
  }

LABEL_13:
  log_err("%s:%d: %s failed to initialize free extent cache for device %d, error %d\n", "spaceman_free_extent_cache_setup", 1556, (*(a1 + 384) + 212), v4, v12);
  return v12;
}

uint64_t spaceman_free_extent_cache_insert(unsigned __int8 *a1, int a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v4 = a4;
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  if (!a4)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v8 = *(a1 + 35);
  if ((v8 & 2) == 0)
  {
    v9 = &a1[48 * ((v8 & 4) == 0) + 136];
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (v11 < v4)
    {
      *v10 = v4;
    }

    v74 = 0;
    v12 = spaceman_fxc_tree_node_recycle_smallest_if_full(a1, v4, a3);
    if (v12 == 55)
    {
      v13 = &a1[16 * (a2 ^ 1)];
      v14 = *(v13 + 37);
      if (v14)
      {
        if (v14 < a3 && v4 + a3 < *(v13 + 38))
        {
          spaceman_fxc_dropped(a1, a3, v4);
          v15 = 0;
          *(v13 + 37) = a3;
          goto LABEL_27;
        }
      }
    }

    v16 = spaceman_extent_check(*a1, *(a1 + 1), a3, v4);
    if (v16)
    {
      v17 = v16;
      if (nx_ratelimit_log_allowed(*a1))
      {
        log_err("%s:%d: %s dev %d free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_free_extent_cache_insert", 1648, (*(*a1 + 384) + 212), a1[88], a3, v4, v17);
      }

      goto LABEL_23;
    }

    v18 = a1 + 1068;
    updated = spaceman_fxc_tree_search(a1, 0, a3, v4, (a1 + 1068));
    if (updated)
    {
      goto LABEL_25;
    }

    v21 = *(v18 + 2 * a1[1165]);
    v22 = a1 + 1166;
    v23 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v23;
    *(a1 + 631) = *(a1 + 582);
    v24 = *(a1 + 1084);
    *(a1 + 1166) = *v18;
    *(a1 + 1182) = v24;
    v25 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v25;
    if (v21)
    {
      v73 = a1 + 136;
      v15 = 0;
    }

    else
    {
      v47 = spaceman_fxc_tree_adjacent(a1, (a1 + 1166), -1);
      v15 = v47;
      if ((v47 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_26;
      }

      v73 = a1 + 136;
      if (v47 == 2)
      {
        v15 = 2;
        goto LABEL_33;
      }
    }

    v26 = *(v22 + 2 * a1[1263]);
    v27 = (*(a1 + 10) + 24 * *(v22 + 2 * a1[1263]));
    v28 = *v27 & 0xFFFFFFFFFFFFFLL;
    v29 = v27[1] & 0xFFFFFFFFFFFFFLL;
    if (v29 + v28 >= a3)
    {
      v4 = v4 + a3 - v28;
      v48 = *(a1 + 1246);
      *(a1 + 1132) = *(a1 + 1230);
      *(a1 + 1148) = v48;
      *(a1 + 582) = *(a1 + 631);
      v49 = *(a1 + 1182);
      *v18 = *v22;
      *(a1 + 1084) = v49;
      v50 = *(a1 + 1214);
      *(a1 + 1100) = *(a1 + 1198);
      *(a1 + 1116) = v50;
      if (v4 <= v29)
      {
        if (v15)
        {
          v15 = 1;
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      updated = spaceman_fxc_update_length(a1, v28, v29, v4, v26);
      if (updated)
      {
LABEL_25:
        v15 = updated;
LABEL_26:
        log_err("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_insert", 1881, (*(*a1 + 384) + 212), a1[88], v15);
        spaceman_free_extent_cache_reset(a1);
        goto LABEL_27;
      }

      v51 = &v73[48 * ((*(a1 + 70) & 4) == 0)];
      v53 = *(v51 + 5);
      v52 = (v51 + 40);
      if (v53 < v4)
      {
        *v52 = v4;
      }

      spaceman_fxc_insert_invalidate_last_unwanted_ranges_if_needed(a1, v28, v4);
      v15 = 0;
LABEL_34:
      v30 = a1[1165];
      if (v30 < 0 || *(v18 + 2 * v30))
      {
        if (v15)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }

      if (v12 == 55)
      {
        v54 = spaceman_fxc_tree_adjacent(a1, (a1 + 1068), 1);
        if (v54)
        {
          v15 = v54;
          v55 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_76;
        }

        v61 = *(v18 + 2 * a1[1165]);
        v62 = (*(a1 + 10) + 24 * *(v18 + 2 * a1[1165]));
        v63 = *v62;
        v55 = *v62 & 0xFFFFFFFFFFFFFLL;
        if (v28 + v4 < v55)
        {
          v15 = 2;
LABEL_76:
          spaceman_fxc_dropped(a1, v28, v4);
          v64 = &a1[16 * (a2 ^ 1)];
          *(v64 + 37) = v28;
          *(v64 + 38) = v55;
          if (v15 != 2)
          {
            goto LABEL_26;
          }

LABEL_23:
          v15 = 0;
          goto LABEL_27;
        }

        v65 = v62[1] & 0xFFFFFFFFFFFFFLL;
        v66 = v55 - v28 + v65;
        if (v55 == *(a1 + 14))
        {
          *(a1 + 14) = v28;
        }

        *v62 = v63 & 0xFFF0000000000000 | v28;
        updated = spaceman_fxc_update_length(a1, v28, v65, v55 - v28 + v65, v61);
        if (!updated)
        {
          v67 = &v73[48 * ((*(a1 + 70) & 4) == 0)];
          v69 = *(v67 + 5);
          v68 = (v67 + 40);
          if (v69 >= v66)
          {
            goto LABEL_23;
          }

          v15 = 0;
          *v68 = v66;
LABEL_27:
          if (*a1)
          {
            pthread_mutex_unlock((a1 + 16));
          }

          return v15;
        }
      }

      else
      {
        v74 = 0;
        updated = spaceman_fxc_tree_insert_at_path(a1, v28, v4, &v74, (a1 + 1068));
        if (!updated)
        {
          v56 = spaceman_fxc_tree_insert(a1, 1u, v28, v4, &v74);
          if (v56)
          {
            v15 = v56;
            if (!spaceman_fxc_tree_delete(a1, v28, v4))
            {
              spaceman_fxc_tree_node_free(a1, v74);
            }

            goto LABEL_26;
          }

          v70 = *(a1 + 15);
          if (v70 - 1 >= v4 || v4 == v70 && v28 > *(a1 + 14))
          {
            *(a1 + 14) = v28;
            *(a1 + 15) = v4;
          }

          if (v4 > *(a1 + 16))
          {
            *(a1 + 16) = v4;
          }

          v15 = spaceman_fxc_tree_search(a1, 0, v28, v4, (a1 + 1068));
          spaceman_fxc_insert_invalidate_last_unwanted_ranges_if_needed(a1, v28, v4);
          LOBYTE(v30) = a1[1165];
          if (v15)
          {
            goto LABEL_26;
          }

LABEL_37:
          v71 = *(v18 + 2 * v30);
          v31 = v28 + v4;
          v32 = v4;
          v72 = v28 + v4;
          while (1)
          {
            v33 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v33;
            *(a1 + 631) = *(a1 + 582);
            v34 = *(a1 + 1084);
            *v22 = *v18;
            *(a1 + 1182) = v34;
            v35 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v35;
            v36 = spaceman_fxc_tree_adjacent(a1, (a1 + 1166), 1);
            if (v36)
            {
              break;
            }

            v37 = *(v22 + 2 * a1[1263]);
            v38 = (*(a1 + 10) + 24 * *(v22 + 2 * a1[1263]));
            v39 = *v38 & 0xFFFFFFFFFFFFFLL;
            if (v31 < v39)
            {
              goto LABEL_67;
            }

            v40 = v28;
            v41 = v38[1] & 0xFFFFFFFFFFFFFLL;
            if (v41 + v39 >= v31)
            {
              v42 = v41 + v39 - v31;
            }

            else
            {
              v42 = 0;
            }

            spaceman_fxc_tree_delete_at_path(a1, (a1 + 1166));
            v43 = spaceman_fxc_tree_search(a1, 1u, v39, v41, (a1 + 1068));
            if (v43)
            {
              v60 = v43;
LABEL_73:
              log_err("%s:%d: %s dev %d Failed to find successor node in length tree: %d\n", "spaceman_free_extent_cache_insert", 1852, (*(*a1 + 384) + 212), a1[88], v60);
              v15 = v60;
              goto LABEL_26;
            }

            if (!*(v18 + 2 * a1[1165]))
            {
              v60 = 2;
              goto LABEL_73;
            }

            v28 = v40;
            if (v39 == *(a1 + 14))
            {
              v44 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v44;
              *(a1 + 631) = *(a1 + 582);
              v45 = *(a1 + 1084);
              *v22 = *v18;
              *(a1 + 1182) = v45;
              v46 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v46;
              spaceman_fxc_update_smallest_with_successor(a1, (a1 + 1166));
            }

            v32 += v42;
            spaceman_fxc_tree_delete_at_path(a1, (a1 + 1068));
            spaceman_fxc_tree_node_free(a1, v37);
            v15 = spaceman_fxc_tree_search(a1, 0, v40, v4, (a1 + 1068));
            v31 = v72;
            if (v15)
            {
              goto LABEL_26;
            }
          }

          v15 = v36;
          if (v36 != 2)
          {
            goto LABEL_26;
          }

LABEL_67:
          if (v32 <= v4)
          {
            goto LABEL_23;
          }

          updated = spaceman_fxc_update_length(a1, v28, v4, v32, v71);
          if (!updated)
          {
            v57 = &v73[48 * ((*(a1 + 70) & 4) == 0)];
            v59 = *(v57 + 5);
            v58 = (v57 + 40);
            if (v59 >= v32)
            {
              goto LABEL_23;
            }

            v15 = 0;
            *v58 = v32;
            goto LABEL_27;
          }

          goto LABEL_25;
        }
      }

      goto LABEL_25;
    }

LABEL_33:
    v28 = a3;
    goto LABEL_34;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t spaceman_fxc_tree_node_recycle_smallest_if_full(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 92))
  {
    return 0;
  }

  v5 = *(a1 + 120);
  if (v5 > a2)
  {
    return 55;
  }

  v7 = *(a1 + 112);
  if (v5 == a2 && v7 < a3)
  {
    return 55;
  }

  if (v7)
  {
    v9 = (a1 + 480);
    if (spaceman_fxc_tree_search(a1, 0, v7, v5, a1 + 480) || (v10 = 4 * *(a1 + 577), v11 = *(v9 + v10), !*(v9 + v10)))
    {
      log_err("%s:%d: %s dev %d Failed to find smallest extent in paddr tree: %d\n");
    }

    else
    {
      spaceman_fxc_tree_delete_at_path(a1, a1 + 480);
      if (spaceman_fxc_tree_search(a1, 1u, *(a1 + 112), *(a1 + 120), a1 + 480) || !*(v9 + 2 * *(a1 + 577)))
      {
        log_err("%s:%d: %s dev %d Failed to find smallest extent %d in length tree: %d\n");
      }

      else
      {
        spaceman_fxc_dropped(a1, *(a1 + 112), *(a1 + 120));
        v12 = *(a1 + 560);
        *(a1 + 642) = *(a1 + 544);
        *(a1 + 658) = v12;
        *(a1 + 674) = *(a1 + 576);
        v13 = *(a1 + 496);
        *(a1 + 578) = *v9;
        *(a1 + 594) = v13;
        v14 = *(a1 + 528);
        *(a1 + 610) = *(a1 + 512);
        *(a1 + 626) = v14;
        v15 = spaceman_fxc_tree_adjacent(a1, a1 + 578, 1);
        if (!v15)
        {
          *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a1 + 578 + 4 * *(a1 + 675))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
          goto LABEL_23;
        }

        if (v15 == 2)
        {
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
LABEL_23:
          spaceman_fxc_tree_delete_at_path(a1, a1 + 480);
          spaceman_fxc_tree_node_free(a1, v11);
          return 0;
        }

        log_err("%s:%d: %s dev %d Failed to find next smallest extent in length tree: %d\n");
      }
    }

    return 3;
  }

  return 0;
}

uint64_t spaceman_fxc_dropped(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a1 + 48 * ((*(a1 + 280) & 4) == 0);
  if (*(v3 + 152) < a3)
  {
    *(v3 + 152) = a3;
  }

  v4.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v4.i64[1] = a3;
  *(v3 + 136) = vaddq_s64(*(v3 + 136), v4);
  return spaceman_fxc_dropped_range_update(v3 + 136, a2, a3);
}

uint64_t spaceman_fxc_tree_search(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = a2;
  v10 = *(a1 + 2 * a2 + 104);
  *a5 = v10;
  if (v10)
  {
    *(a5 + 2) = *(*(a1 + 80) + 24 * v10 + 8 * (a2 != 0) + 7);
  }

  for (i = *(a5 + 4 * *(a5 + 97)); *(a5 + 4 * *(a5 + 97)); i = *(a5 + 4 * *(a5 + 97)))
  {
    v12 = (*(a1 + 80) + 24 * i);
    if (a2)
    {
      v13 = v12[1] & 0xFFFFFFFFFFFFFLL;
      v14 = v13 > a4;
      v15 = v13 < a4;
      if (v14)
      {
        v15 = -1;
      }

      if (!v15)
      {
        v16 = *v12 & 0xFFFFFFFFFFFFFLL;
        v14 = v16 < a3;
        v15 = v16 > a3;
        if (v14)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v17 = *v12 & 0xFFFFFFFFFFFFFLL;
      v14 = v17 <= a3;
      v15 = v17 < a3;
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    if (!v15)
    {
      return 0;
    }

    if (v15 < 0)
    {
LABEL_17:
      v18 = a1;
      v19 = a5;
      v20 = -1;
      goto LABEL_18;
    }

    v18 = a1;
    v19 = a5;
    v20 = 1;
LABEL_18:
    result = spaceman_fxtp_add_child(v18, v19, v20);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t spaceman_fxc_update_length(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v30 = a5;
  v10 = a1 + 676;
  v11 = *(a1 + 112);
  v12 = spaceman_fxc_tree_search(a1, 1u, a2, a3, a1 + 676);
  if (v12)
  {
    return v12;
  }

  if (!*(v10 + 4 * *(a1 + 773)))
  {
    return 2;
  }

  if (*(v10 + 4 * *(a1 + 773)) != a5)
  {
    log_err("%s:%d: %s dev %d length tree search for 0x%llx 0x%llx returned node %d instead of %d\n", "spaceman_fxc_update_length", 1400, (*(*a1 + 384) + 212), *(a1 + 88), a2, a3, *(v10 + 4 * *(a1 + 773)), a5);
    return 22;
  }

  v15 = (a1 + 774);
  v16 = *(a1 + 96);
  v17 = *(a1 + 80) + 24 * a5;
  *(v17 + 8) = *(v17 + 8) & 0xFFF0000000000000 | a4 & 0xFFFFFFFFFFFFFLL;
  *(a1 + 96) = a4 - a3 + v16;
  if (a4 <= a3)
  {
    if (v11 != a2)
    {
      v22 = *(v10 + 80);
      *(a1 + 838) = *(v10 + 64);
      *(a1 + 854) = v22;
      *(a1 + 870) = *(v10 + 96);
      v23 = *(v10 + 16);
      *v15 = *v10;
      *(a1 + 790) = v23;
      v24 = *(v10 + 48);
      *(a1 + 806) = *(v10 + 32);
      *(a1 + 822) = v24;
      v25 = spaceman_fxc_tree_adjacent(a1, a1 + 774, -1);
      if (v25)
      {
        v13 = v25;
        if (v25 == 2)
        {
          log_err("%s:%d: %s dev %d Failed to find length tree predecessor for node that wasn't the smallest\n", "spaceman_fxc_update_length", 1463, (*(*a1 + 384) + 212), *(a1 + 88));
        }

        return v13;
      }

      if ((*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871)) + 8) & 0xFFFFFFFFFFFFFuLL) >= a4)
      {
        v28 = *(a1 + 120);
        if (v28 > a4 || v28 == a4 && *(a1 + 112) < a2)
        {
          *(a1 + 112) = a2;
          *(a1 + 120) = a4;
        }

        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v18 = *(v10 + 80);
    *(a1 + 838) = *(v10 + 64);
    *(a1 + 854) = v18;
    *(a1 + 870) = *(v10 + 96);
    v19 = *(v10 + 16);
    *v15 = *v10;
    *(a1 + 790) = v19;
    v20 = *(v10 + 48);
    *(a1 + 806) = *(v10 + 32);
    *(a1 + 822) = v20;
    v21 = spaceman_fxc_tree_adjacent(a1, a1 + 774, 1);
    if (v21)
    {
      v13 = v21;
      if (v21 != 2)
      {
        return v13;
      }

      if (v11 == a2)
      {
        *(a1 + 120) = a4;
      }

      if (*(a1 + 128) >= a4)
      {
        return 0;
      }

      v13 = 0;
LABEL_39:
      *(a1 + 128) = a4;
      return v13;
    }

    v26 = vandq_s8(*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
    if (v26.i64[1] < a4 || (v26.i64[1] == a4 ? (v27 = v26.i64[0] <= a2) : (v27 = 1), !v27))
    {
      if (v11 == a2)
      {
        *(a1 + 112) = v26;
      }

LABEL_37:
      spaceman_fxc_tree_delete_at_path(a1, v10);
      v13 = spaceman_fxc_tree_insert(a1, 1u, a2, a4, &v30);
      goto LABEL_38;
    }

    if (v11 != a2)
    {
LABEL_32:
      v13 = 0;
      goto LABEL_38;
    }
  }

  v13 = 0;
  *(a1 + 120) = a4;
LABEL_38:
  v29 = *(a1 + 128);
  if (v29 < a4)
  {
    goto LABEL_39;
  }

  if (v29 == a3)
  {
    spaceman_fxc_update_longest_from_last(a1);
  }

  return v13;
}

unint64_t spaceman_fxc_insert_invalidate_last_unwanted_ranges_if_needed(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = result + 296;
  v6 = a2 - 1;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (v5 + 16 * v4);
    if (*v9)
    {
      result = calc_overlap_range(v6, a3 + 2, *v9, v9[1] - *v9, 0);
      if (result)
      {
        *v9 = 0;
      }
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t spaceman_fxc_tree_insert_at_path(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = *(a5 + 96);
  if (a4)
  {
    LOWORD(v7) = *a4;
    if (*a4)
    {
      v8 = *(a1 + 80);
      v9 = v8 + 24 * *a4;
      *(v9 + 4 * v6 + 16) = 0;
      *(v9 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
      goto LABEL_10;
    }
  }

  v7 = *(a1 + 92);
  if (v7 <= *(a1 + 88) >> 8)
  {
    if (!*(a1 + 92))
    {
      return 12;
    }

    v11 = (*(a1 + 80) + 24 * *(a1 + 92));
    *(a1 + 92) = *v11;
    ++*(a1 + 94);
    *(a1 + 96) += a3;
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    if (a4)
    {
      *a4 = v7;
    }

    v8 = *(a1 + 80);
    v12 = (v8 + 24 * v7);
    *v12 = a2;
    v12[1] = a3;
LABEL_10:
    v10 = *(a5 + 97);
    v13 = (a5 + 4 * v10);
    *v13 = v7;
    v13[1] = 0;
    if (!v10)
    {
      *(a1 + 2 * v6 + 104) = v7;
      return v10;
    }

    v14 = v10;
    *(v8 + 24 * *(a5 + 4 * (v10 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v10 - 1) + 3) + 1 + (((*(a5 + 4 * (v10 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16) = v7;
    v15 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      while (!*(a5 + 4 * v15 + 2))
      {
        v16 = v15--;
        if (v16 <= 0)
        {
          v15 = -1;
          break;
        }
      }
    }

    v17 = (v15 + 1);
    if (v17 < v14)
    {
      LOBYTE(v18) = v15 + 1;
      do
      {
        v19 = (a5 + 4 * v18);
        v20 = *(v19 + 3);
        *(v8 + 8 * (v6 != 0) + 24 * *v19 + 7) = v20;
        *(v19 + 2) = v20;
        v18 = (v18 + 1);
      }

      while (v18 < v14);
    }

    if ((v15 & 0x80) == 0)
    {
      v21 = (a5 + 4 * v15);
      v22 = *(v21 + 3);
      if (!(*(v21 + 2) + v22))
      {
        v10 = 0;
        *(v8 + 24 * *v21 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
        return v10;
      }

      if (*(v21 + 2) == *(v21 + 3))
      {
        if (v15)
        {
          v23 = (v8 + 24 * *(a5 + 4 * (v15 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v15 - 1) + 3) + 1 + (((*(a5 + 4 * (v15 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16);
        }

        else
        {
          v23 = (a1 + 2 * v6 + 104);
        }

        v24 = -v22;
        v25 = (a5 + 4 * v17);
        v26 = *(v25 + 2);
        if (v26 == *(v21 + 3))
        {
          spaceman_fxc_tree_single_rotate(a1, v6, v24, *v21, v23);
        }

        else if (v26 == v24)
        {
          spaceman_fxc_tree_double_rotate(a1, v6, v22, *v21, *v25, v23);
        }
      }
    }

    return 0;
  }

  return 22;
}

uint64_t spaceman_fxc_tree_insert(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _WORD *a5)
{
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  v10 = a1 + 872;
  if (!a5 || !*a5)
  {
    spaceman_fxc_tree_node_recycle_smallest_if_full(a1, a4, a3);
  }

  result = spaceman_fxc_tree_search(a1, a2, a3, a4, v10);
  if (!result)
  {
    if (*(v10 + 4 * *(a1 + 969)))
    {
      return 17;
    }

    else
    {

      return spaceman_fxc_tree_insert_at_path(a1, a3, a4, a5, v10);
    }
  }

  return result;
}

uint64_t spaceman_fxc_tree_delete(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  v4 = a1 + 970;
  result = spaceman_fxc_tree_search(a1, 0, a2, a3, a1 + 970);
  if (!result)
  {
    if (*(v4 + 4 * *(a1 + 1067)))
    {
      spaceman_fxc_tree_delete_at_path(a1, v4);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t spaceman_fxc_tree_node_free(uint64_t result, unsigned int a2)
{
  if (a2 <= *(result + 88) >> 8)
  {
    v2 = (*(result + 80) + 24 * a2);
    v3 = v2[1] & 0xFFFFFFFFFFFFFLL;
    --*(result + 94);
    *(result + 96) -= v3;
    *v2 = *(result + 92);
    *(result + 92) = a2;
  }

  return result;
}

uint64_t spaceman_fxc_tree_delete_at_path(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 97);
  v5 = (a2 + 4 * *(a2 + 97));
  v6 = *(a1 + 80);
  result = v6 + 24 * *v5;
  v8 = result + 4 * v3;
  v9 = *(v8 + 18);
  v10 = *(a2 + 97) - 1;
  if (v4 < 1)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v11 = (a2 + 4 * v10);
    v12 = *v11;
    v13 = ((*(v11 + 3) + 1 + (((*(v11 + 3) + 1) & 0x8000u) >> 15)) >> 1);
  }

  v14 = 8 * (*(a2 + 96) != 0);
  v15 = *(v8 + 16);
  v16 = a1 + 2 * v3;
  if (v9)
  {
    v17 = *(result + 8 * (*(a2 + 96) != 0));
    result = 24;
    v18 = v6 + 24 * v9 + 4 * v3;
    v21 = *(v18 + 16);
    v20 = (v18 + 16);
    v19 = v21;
    if (v21)
    {
      *(a2 + 4 * *(a2 + 97) + 3) = 1;
      v22 = v4 + 1;
      *(a2 + 97) = v4 + 1;
      v23 = a2 + 4 * (v4 + 1);
      *v23 = v9;
      *(v23 + 3) = 0;
      v24 = v9;
      do
      {
        v10 = v22;
        v25 = v24;
        v24 = v19;
        *(a2 + 4 * v22++ + 3) = -1;
        v26 = a2 + 4 * v22;
        *v26 = v24;
        *(v26 + 3) = 0;
        v27 = v6 + 24 * v24 + 4 * v3;
        v29 = *(v27 + 16);
        v28 = (v27 + 16);
        v19 = v29;
      }

      while (v29);
      result = v24;
      v30 = v6 + 24 * v24;
      v31 = v30 + 4 * v3;
      *(v6 + 24 * v25 + 4 * v3 + 16) = *(v31 + 18);
      *(v31 + 18) = v9;
      *v28 = v15;
      *(v30 + v14 + 7) = HIBYTE(v17);
      v32 = v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16;
      if (v4)
      {
        v33 = v32;
      }

      else
      {
        v33 = (v16 + 104);
      }

      *v33 = result;
      *(v5 + 3) = 1;
      *v5 = result;
      *(a2 + 97) = v10;
      if ((v10 & 0x80) != 0)
      {
        return result;
      }
    }

    else
    {
      *v20 = v15;
      v35 = (v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16);
      if (!v4)
      {
        v35 = (v16 + 104);
      }

      *v35 = v9;
      *(v6 + 24 * v9 + v14 + 7) = HIBYTE(v17);
      *(v5 + 3) = 1;
      *v5 = v9;
      v10 = v4;
      if ((v4 & 0x80) != 0)
      {
        return result;
      }
    }
  }

  else
  {
    if (*(a2 + 97))
    {
      v34 = (v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16);
    }

    else
    {
      v34 = (v16 + 104);
    }

    *v34 = v15;
    *(a2 + 97) = v10;
    if ((v10 & 0x80) != 0)
    {
      return result;
    }
  }

  v36 = (v16 + 104);
  v37 = v10 + 1;
  v38 = (a2 + 4 * v10);
  do
  {
    v39 = *v38;
    v40 = *(a1 + 80);
    v41 = v40 + 24 * *v38;
    v42 = *(v41 + v14);
    v43 = *(v38 + 3);
    v44 = (HIBYTE(v42) - *(v38 + 3));
    if (v44 < 0)
    {
      v44 = -v44;
    }

    if (v44 > 1)
    {
      v45 = v36;
      if (v37 != 1)
      {
        v45 = (v40 + 24 * *(v38 - 2) + 4 * v3 + 2 * ((*(v38 - 1) + 1 + (((*(v38 - 1) + 1) & 0x8000u) >> 15)) >> 1) + 16);
      }

      v46 = v40 + 24 * *v38 + 4 * v3 + 2 * ((-v43 + 1 + (((-v43 + 1) & 0x8000u) >> 15)) >> 1);
      v47 = HIBYTE(*(v40 + 24 * *(v46 + 16) + v14));
      if (v47 == v43)
      {
        result = spaceman_fxc_tree_double_rotate(a1, v3, -v43, v39, *(v46 + 16), v45);
      }

      else
      {
        result = spaceman_fxc_tree_single_rotate(a1, v3, v43, v39, v45);
        if (!v47)
        {
          return result;
        }
      }
    }

    else
    {
      *(v41 + v14) = v42 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v42) - v43) << 56);
      if (!HIBYTE(v42))
      {
        return result;
      }
    }

    v38 -= 2;
  }

  while (v37-- > 1);
  return result;
}

const char *spaceman_fxc_update_smallest_with_successor(uint64_t a1, uint64_t a2)
{
  result = spaceman_fxc_tree_adjacent(a1, a2, 1);
  if (result == 2)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  else if (result)
  {
    return log_err("%s:%d: %s dev %d Failed to find successor node from length tree while updating smallest: %d\n", "spaceman_fxc_update_smallest_with_successor", 1520, (*(*a1 + 384) + 212), *(a1 + 88), result);
  }

  else
  {
    *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a2 + 4 * *(a2 + 97))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
  }

  return result;
}

uint64_t spaceman_free_extent_cache_remove(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 22;
  }

  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  if (!a3)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) == 0)
  {
    v6 = (a1 + 1068);
    v35 = 0;
    updated = spaceman_fxc_tree_search(a1, 0, a2, a3, a1 + 1068);
    if (updated)
    {
LABEL_8:
      v8 = updated;
LABEL_9:
      log_err("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_remove", 2076, (*(*a1 + 384) + 212), *(a1 + 88), v8);
      spaceman_free_extent_cache_reset(a1);
      goto LABEL_10;
    }

    v10 = (a1 + 1166);
    v11 = a3 + a2;
    v12 = 4 * *(a1 + 1165);
    v13 = *(v6 + v12);
    if (*(v6 + v12))
    {
      goto LABEL_20;
    }

    v20 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v20;
    *(a1 + 1262) = *(a1 + 1164);
    v21 = *(a1 + 1084);
    *v10 = *v6;
    *(a1 + 1182) = v21;
    v22 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v22;
    v23 = spaceman_fxc_tree_adjacent(a1, a1 + 1166, -1);
    if (v23 == 2)
    {
      goto LABEL_43;
    }

    v8 = v23;
    if (v23)
    {
      goto LABEL_9;
    }

    v24 = (*(a1 + 80) + 24 * *(v10 + 2 * *(a1 + 1263)));
    v25 = v24[1] & 0xFFFFFFFFFFFFFLL;
    v26 = v25 + (*v24 & 0xFFFFFFFFFFFFFLL);
    if (v26 <= a2)
    {
      goto LABEL_43;
    }

    updated = spaceman_fxc_update_length(a1, *v24 & 0xFFFFFFFFFFFFFLL, v25, a2 - (*v24 & 0xFFFFFFFFFFFFFLL), *(v10 + 2 * *(a1 + 1263)));
    if (updated)
    {
      goto LABEL_8;
    }

    v27 = v26 - v11;
    if (v26 <= v11)
    {
LABEL_43:
      v32 = spaceman_fxc_tree_adjacent(a1, a1 + 1068, 1);
      if (v32 != 2)
      {
        v8 = v32;
        if (v32)
        {
          goto LABEL_9;
        }

        v13 = *(v6 + 2 * *(a1 + 1165));
LABEL_20:
        v14 = (*(a1 + 80) + 24 * v13);
        v15 = *v14;
        v16 = *v14 & 0xFFFFFFFFFFFFFLL;
        v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
        v18 = v17 + v16;
        if (v11 >= v17 + v16)
        {
          while (1)
          {
            spaceman_fxc_tree_delete_at_path(a1, a1 + 1068);
            v28 = spaceman_fxc_tree_search(a1, 1u, v16, v17, a1 + 1068);
            if (v28)
            {
              v33 = v28;
              log_err("%s:%d: %s dev %d Failed to delete covered node from length tree: %d\n", "spaceman_free_extent_cache_remove", 2016, (*(*a1 + 384) + 212), *(a1 + 88), v28);
              v8 = v33;
              goto LABEL_9;
            }

            if (v16 == *(a1 + 112))
            {
              v29 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v29;
              *(a1 + 1262) = *(a1 + 1164);
              v30 = *(a1 + 1084);
              *v10 = *v6;
              *(a1 + 1182) = v30;
              v31 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v31;
              spaceman_fxc_update_smallest_with_successor(a1, a1 + 1166);
            }

            spaceman_fxc_tree_delete_at_path(a1, a1 + 1068);
            spaceman_fxc_tree_node_free(a1, v13);
            if (v17 == *(a1 + 128))
            {
              spaceman_fxc_update_longest_from_last(a1);
            }

            v8 = spaceman_fxc_tree_search(a1, 0, v16, v17, a1 + 1068);
            if (!v8)
            {
              v8 = spaceman_fxc_tree_adjacent(a1, a1 + 1068, 1);
            }

            if (v8)
            {
              break;
            }

            v13 = *(v6 + 2 * *(a1 + 1165));
            v14 = (*(a1 + 80) + 24 * *(v6 + 2 * *(a1 + 1165)));
            v15 = *v14;
            v16 = *v14 & 0xFFFFFFFFFFFFFLL;
            v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
            v18 = v17 + v16;
            if (v11 < v17 + v16)
            {
              goto LABEL_21;
            }
          }

          if (v8 == 2)
          {
            goto LABEL_47;
          }

          log_err("%s:%d: %s dev %d Failed to get next extent: %d\n", "spaceman_free_extent_cache_remove", 2047, (*(*a1 + 384) + 212), *(a1 + 88), v8);
          goto LABEL_9;
        }

LABEL_21:
        if (v11 > v16)
        {
          if (v16 == *(a1 + 112))
          {
            *(a1 + 112) = v11;
          }

          *v14 = v15 & 0xFFF0000000000000 | v11 & 0xFFFFFFFFFFFFFLL;
          v19 = spaceman_fxc_update_length(a1, v11, v17, v18 - v11, v13);
          v8 = v19;
          if (!v19)
          {
            goto LABEL_10;
          }

          log_err("%s:%d: %s dev %d Failed to update partially-covered node in length tree: %d\n", "spaceman_free_extent_cache_remove", 2070, (*(*a1 + 384) + 212), *(a1 + 88), v19);
          goto LABEL_9;
        }
      }
    }

    else
    {
      v35 = 0;
      if (spaceman_fxc_tree_insert(a1, 0, v11, v26 - v11, &v35))
      {
LABEL_32:
        spaceman_fxc_dropped(a1, v11, v26 - v11);
        goto LABEL_47;
      }

      if (spaceman_fxc_tree_insert(a1, 1u, v11, v26 - v11, &v35))
      {
        if (!spaceman_fxc_tree_delete(a1, v11, v26 - v11))
        {
          spaceman_fxc_tree_node_free(a1, v35);
        }

        goto LABEL_32;
      }

      v34 = *(a1 + 120);
      if (v27 < v34 || v27 == v34 && v11 > *(a1 + 112))
      {
        *(a1 + 112) = v11;
        *(a1 + 120) = v27;
      }

      if (v27 > *(a1 + 128))
      {
        v8 = 0;
        *(a1 + 128) = v27;
LABEL_10:
        if (*a1)
        {
          pthread_mutex_unlock((a1 + 16));
        }

        return v8;
      }
    }

LABEL_47:
    v8 = 0;
    goto LABEL_10;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t spaceman_fxc_update_longest_from_last(uint64_t a1)
{
  v2 = a1 + 676;
  result = spaceman_fxc_tree_last(a1, a1 + 676, 1u);
  if (result == 2)
  {
    v4 = 0;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v4 = *(*(a1 + 80) + 24 * *(v2 + 4 * *(a1 + 773)) + 8) & 0xFFFFFFFFFFFFFLL;
  }

  *(a1 + 128) = v4;
  return result;
}

uint64_t spaceman_fxc_tree_last(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = a3;
  v5 = *(a1 + 2 * a3 + 104);
  *a2 = v5;
  if (v5)
  {
    *(a2 + 2) = *(*(a1 + 80) + 24 * v5 + 8 * (a3 != 0) + 7);
  }

  while (1)
  {
    v6 = *(a2 + 97);
    if (!*(a2 + 4 * v6))
    {
      break;
    }

    result = spaceman_fxtp_add_child(a1, a2, 1);
    if (result)
    {
      return result;
    }
  }

  v8 = v6 - 1;
  *(a2 + 97) = v8;
  return (v8 >> 6) & 2;
}

BOOL spaceman_free_extent_cache_bitmap_scan_begin(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v4 = *(a1 + 280);
  v5 = (v4 & 6) == 0;
  if ((v4 & 6) == 0)
  {
    *(a1 + 280) = v4 | 4;
    v6 = *(a1 + 288);
    if (v6)
    {
      if (a2)
      {
LABEL_9:
        *a2 = v6;
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 1;
      *(a1 + 288) = 1;
      if (a2)
      {
        goto LABEL_9;
      }
    }

    *(a1 + 280) = v4 | 0xC;
LABEL_12:
    if (!*a1)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (*a1)
  {
LABEL_13:
    pthread_mutex_unlock((a1 + 16));
    return v5;
  }

  return 0;
}

uint64_t spaceman_free_extent_cache_bitmap_scan_finished(uint64_t result, unint64_t a2, char a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (*result)
  {
    result = pthread_mutex_lock((result + 16));
  }

  v7 = *(v5 + 280);
  if ((v7 & 6) != 0)
  {
    if (a3)
    {
      *(v5 + 184) = *(v5 + 136);
      *(v5 + 200) = *(v5 + 152);
      *(v5 + 216) = *(v5 + 168);
      *(v5 + 280) = v7 & 0xFFFFFFFFFFFFFFF3;
      *(v5 + 136) = 0u;
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      goto LABEL_19;
    }

    if (*(*(v6 + 376) + 48 * *(v5 + 88) + 48) > a2 && ((v8 = *(v5 + 288), (v7 & 8) != 0) || v8 <= a2))
    {
      v9 = 0;
      if (v8 < a2)
      {
        *(v5 + 288) = a2;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFFF3;
    v12 = (v5 + 136);
    v11 = *(v5 + 136);
    *(v5 + 280) = v10;
    if (v11)
    {
      v13 = *(v5 + 184) + v11;
      v14 = *(v5 + 200);
      v15 = *(v5 + 152);
      v16 = *(v5 + 192) + *(v5 + 144);
      *(v5 + 184) = v13;
      *(v5 + 192) = v16;
      if (v14 < v15)
      {
        *(v5 + 200) = v15;
      }

      v17 = *(v5 + 176);
      if (*(v5 + 224) < v17)
      {
        *(v5 + 224) = v17;
      }

      result = spaceman_fxc_dropped_range_update(v5 + 184, *(v5 + 160), *(v5 + 168));
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      *v12 = 0u;
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *v12 = 0u;
    if (v9)
    {
LABEL_19:
      v18 = *(v5 + 336) + 1;
      *(v5 + 328) = 0;
      *(v5 + 336) = v18;
      *(v5 + 232) = *(v5 + 184);
      *(v5 + 248) = *(v5 + 200);
      *(v5 + 264) = *(v5 + 216);
      *(v5 + 184) = 0u;
      *(v5 + 200) = 0u;
      *(v5 + 216) = 0u;
      *(v5 + 288) = 0;
      v19 = *(v5 + 280);
      if ((v19 & 1) == 0)
      {
        *(v5 + 280) = v19 | 1;
      }
    }
  }

LABEL_21:
  if (*v5)
  {

    return pthread_mutex_unlock((v5 + 16));
  }

  return result;
}

uint64_t spaceman_fxc_dropped_range_update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    if (v3 <= a2)
    {
      v4 = *(result + 32);
    }

    else
    {
      v4 = v3 - a2 + *(result + 32);
      *(result + 24) = a2;
      *(result + 32) = v4;
      v3 = a2;
    }

    v5 = v4 + v3;
    if (a3 + a2 > v5)
    {
      *(result + 32) = v4 + a3 + a2 - v5;
    }
  }

  else
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  return result;
}

unint64_t spaceman_free_extent_cache_search_better_length(__int16 a1, unint64_t a2, unint64_t a3)
{
  if ((a1 & 0x1000) == 0)
  {
    return a2;
  }

  if (a3 <= 1)
  {
    return a3 + 1;
  }

  if (a3 + (a3 >> 1) >= a2)
  {
    return a2;
  }

  else
  {
    return a3 + (a3 >> 1);
  }
}

uint64_t spaceman_free_extent_cache_search(uint64_t a1, uint64_t a2, int64_t *a3, unint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  *a3 = 0;
  *a4 = 0;
  if (!a1)
  {
    return 6;
  }

  ++*(a1 + 344);
  if (!v5)
  {
    ++*(a1 + 352);
    return 22;
  }

  v10 = *(*a1 + 376);
  v11 = *(v10 + 1248);
  if (v11 && !*(a1 + 88))
  {
    v13 = *(v10 + 1240);
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v75 = 0;
  v76[0] = 0;
  v71 = 0;
  v72 = 0;
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 280) & 2) != 0)
  {
    if (*a1)
    {
      pthread_mutex_unlock((a1 + 16));
    }

    return 6;
  }

  v15 = (a1 + 1068);
  v73 = 0;
  v74 = 0;
  v69 = 0;
  v70 = 0;
  v16 = spaceman_fxc_tree_search(a1, 1u, v4, v5, a1 + 1068);
  if (!v16)
  {
    if (*(v15 + 2 * *(a1 + 1165)))
    {
      v17 = (*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 1165)));
      v18 = *v17 & 0xFFFFFFFFFFFFFLL;
      v74 = v18;
      v19 = v17[1];
      v20 = v19 & 0xFFFFFFFFFFFFFLL;
      v70 = v19 & 0xFFFFFFFFFFFFFLL;
      if (v12)
      {
        spaceman_clip_extent(v18, v19 & 0xFFFFFFFFFFFFFLL, v13, v11, a2, v4, &v74, &v70);
        v20 = v70;
        v18 = v74;
      }

      if (v20)
      {
        v21 = spaceman_clip_extent_to_zones(*a1, *(a1 + 8), *(a1 + 88), v18, v20, a2, v4, &v73, &v69);
        v18 = v74;
        v22 = v70;
        if (v21)
        {
          v75 = v74;
          v71 = v70;
          v18 = v73;
          v74 = v73;
          v22 = v69;
          v70 = v69;
        }
      }

      else
      {
        v22 = 0;
      }

      v76[0] = v18;
      v72 = v22;
      if (v22 == v5)
      {
        goto LABEL_21;
      }
    }

    v27 = v12;
    v28 = v13;
    v29 = (a1 + 1166);
    v30 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v30;
    *(a1 + 1262) = *(a1 + 1164);
    v31 = *(a1 + 1084);
    *(a1 + 1166) = *v15;
    *(a1 + 1182) = v31;
    v32 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v32;
    v68 = v27;
    v16 = spaceman_fxc_search_walk(a1, a1 + 1166, v27, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x301u);
    if (!v16)
    {
      v33 = *(a1 + 1148);
      *(a1 + 1230) = *(a1 + 1132);
      *(a1 + 1246) = v33;
      *(a1 + 1262) = *(a1 + 1164);
      v34 = *(a1 + 1084);
      *v29 = *v15;
      *(a1 + 1182) = v34;
      v35 = *(a1 + 1116);
      *(a1 + 1198) = *(a1 + 1100);
      *(a1 + 1214) = v35;
      v16 = spaceman_fxc_search_walk(a1, a1 + 1166, v68, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x502u);
      if (!v16)
      {
        v67 = v28;
        v39 = v71;
        if (v72 >= v5)
        {
          v41 = v71;
          v39 = v72;
          v40 = v68;
        }

        else
        {
          v40 = v68;
          if (v71 <= v72)
          {
            v41 = v71;
            v39 = v72;
          }

          else
          {
            v41 = 0;
            v42 = v75;
            v75 = 0;
            v76[0] = v42;
            v71 = 0;
            v72 = v39;
            a2 = a2 & 0xFFFFDFFF;
          }
        }

        if (v39 < v5 && (a2 & 0x1000) == 0)
        {
          goto LABEL_21;
        }

        if (v4 <= v76[0])
        {
          v45 = v76[0] - v4;
        }

        else
        {
          if (v4 - v76[0] < v39)
          {
            goto LABEL_21;
          }

          v45 = v4 - (v39 + v76[0]);
        }

        if (!v45)
        {
          goto LABEL_21;
        }

        v61 = v41;
        v64 = v76[0];
        v65 = v39;
        v66 = v45;
        v16 = spaceman_fxc_tree_search(a1, 0, v4, v5, a1 + 1068);
        if (!v16)
        {
          if (*(v15 + 2 * *(a1 + 1165)))
          {
            v46 = (*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 1165)));
            v47 = *v46 & 0xFFFFFFFFFFFFFLL;
            v74 = v47;
            v48 = v46[1];
            v49 = v48 & 0xFFFFFFFFFFFFFLL;
            v70 = v48 & 0xFFFFFFFFFFFFFLL;
            if (v40)
            {
              spaceman_clip_extent(v47, v48 & 0xFFFFFFFFFFFFFLL, v67, v11, a2, v4, &v74, &v70);
              v49 = v70;
              v47 = v74;
            }

            if (v49)
            {
              v50 = spaceman_clip_extent_to_zones(*a1, *(a1 + 8), *(a1 + 88), v47, v49, a2, v4, &v73, &v69);
              v47 = v74;
              v51 = v70;
              if (v50)
              {
                v52 = v61;
                v59 = v74;
                v62 = v70;
                if (new_extent_is_better(v4, v5, v75, v52, v74, v70, a2))
                {
                  v75 = v59;
                  v71 = v62;
                }

                v47 = v73;
                v74 = v73;
                v51 = v69;
                v70 = v69;
              }
            }

            else
            {
              v51 = 0;
            }

            v60 = v47;
            v63 = v51;
            if (new_extent_is_better(v4, v5, v64, v65, v47, v51, a2))
            {
              v76[0] = v60;
              v72 = v63;
              goto LABEL_21;
            }
          }

          v53 = *(a1 + 1148);
          *(a1 + 1230) = *(a1 + 1132);
          *(a1 + 1246) = v53;
          *(a1 + 1262) = *(a1 + 1164);
          v54 = *(a1 + 1084);
          *v29 = *v15;
          *(a1 + 1182) = v54;
          v55 = *(a1 + 1116);
          *(a1 + 1198) = *(a1 + 1100);
          *(a1 + 1214) = v55;
          v16 = spaceman_fxc_search_walk(a1, a1 + 1166, v40, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1802u);
          if (!v16)
          {
            v56 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v56;
            *(a1 + 1262) = *(a1 + 1164);
            v57 = *(a1 + 1084);
            *v29 = *v15;
            *(a1 + 1182) = v57;
            v58 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v58;
            v16 = spaceman_fxc_search_walk(a1, a1 + 1166, v68, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1801u);
            if (!v16)
            {
LABEL_21:
              if (*a1)
              {
                pthread_mutex_unlock((a1 + 16));
              }

              v23 = v72;
              if (!v72 && v71)
              {
                v76[0] = v75;
                v23 = v71;
              }

              v24 = v23 - v5;
              if (v23 > v5)
              {
                v25.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v25.i64[1] = v23 - v5;
                *(a1 + 360) = vaddq_s64(*(a1 + 360), v25);
                if (v24 == 1)
                {
                  result = 0;
                  v26 = 400;
                }

                else if (v24 >= 8)
                {
                  result = 0;
                  v43 = v24 >= 0x10;
                  v26 = 376;
                  if (!v43)
                  {
                    v26 = 384;
                  }
                }

                else
                {
                  result = 0;
                  v26 = 392;
                }

                goto LABEL_56;
              }

              if (v23 >= v5)
              {
                result = 0;
                v26 = 408;
              }

              else
              {
                if ((a2 & 0x1000) != 0)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = 28;
                }

                if (spaceman_fxc_bitmap_should_be_searched(a1, a2, v5, v23))
                {
                  result = 3;
                }

                else
                {
                  result = v38;
                }

                if ((a2 & 0x1000) == 0)
                {
                  v5 = 0;
                  v76[0] = 0;
LABEL_79:
                  v44 = 424;
                  goto LABEL_57;
                }

                if (!v23)
                {
                  v5 = 0;
                  if (result)
                  {
                    result = result;
                  }

                  else
                  {
                    result = 28;
                  }

                  goto LABEL_79;
                }

                v26 = 416;
              }

              v5 = v23;
LABEL_56:
              ++*(a1 + v26);
              v44 = 352;
LABEL_57:
              ++*(a1 + v44);
              *a3 = v76[0];
              *a4 = v5;
              return result;
            }
          }
        }
      }
    }
  }

  v36 = *(a1 + 88);
  v37 = "main";
  if (v36 == 1)
  {
    v37 = "tier2";
  }

  log_err("%s:%d: %s dev %d Error searching %s free extent cache: %d; Reinitializing.\n", "spaceman_free_extent_cache_search", 3031, (*(*a1 + 384) + 212), v36, v37, v16);
  spaceman_free_extent_cache_reset(a1);
  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 3;
}

uint64_t spaceman_fxc_search_walk(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, unint64_t a8, unint64_t a9, uint64_t *a10, unint64_t *a11, uint64_t *a12, unint64_t *a13, unsigned int a14)
{
  if ((a14 & 3) == 0 || (a14 & 0x1F00) == 0)
  {
    return 22;
  }

  v17 = a6;
  v19 = a2;
  v20 = a1;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  if (a14)
  {
    v21 = 1;
  }

  else
  {
    v21 = -1;
  }

  v15 = spaceman_fxc_tree_adjacent(a1, a2, v21);
  if ((v15 & 0xFFFFFFFD) == 0)
  {
    v36 = a5;
    v23 = 0;
    v39 = v21;
    v41 = v17;
    v37 = v20;
    v38 = v19;
    do
    {
      if (v15 == 2)
      {
        return 0;
      }

      v24 = (*(v20 + 80) + 24 * *(v19 + 4 * *(v19 + 97)));
      v25 = *v24 & 0xFFFFFFFFFFFFFLL;
      v47 = v25;
      v26 = v24[1] & 0xFFFFFFFFFFFFFLL;
      v45 = v26;
      if (a3)
      {
        spaceman_clip_extent(v25, v26, a4, v36, v17, a7, &v47, &v45);
        v27 = v45;
        if (!v45)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = v26;
        if (!v26)
        {
LABEL_42:
          if ((a14 & 0x1000) != 0 && v23 > 0x7E)
          {
            return v15;
          }

          goto LABEL_47;
        }
      }

      v28 = spaceman_clip_extent_to_zones(*v20, *(v20 + 8), *(v20 + 88), v47, v27, v17, a7, &v46, &v44);
      v29 = v47;
      v30 = v45;
      if (v28)
      {
        if (new_extent_is_better(a7, a8, *a12, *a13, v47, v45, v17))
        {
          *a12 = v29;
          *a13 = v30;
        }

        v29 = v46;
        v47 = v46;
        v30 = v44;
        v45 = v44;
      }

      v31 = *a11;
      if (new_extent_is_better(a7, a8, *a10, *a11, v29, v30, v41))
      {
        *a10 = v29;
        *a11 = v30;
        v31 = v30;
        if ((a14 & 0x800) != 0)
        {
          return v15;
        }
      }

      v32 = v26 == a8 && v30 == v26;
      v33 = v32;
      if ((*&v33 & ((a14 & 0x100) >> 8) & 1) != 0 || ((v31 > a8) & (a14 >> 9)) != 0)
      {
        return v15;
      }

      if ((a14 & 0x400) != 0 && v26 < a8 && v26 <= v31)
      {
        return v15;
      }

      v17 = v41;
      v20 = v37;
      v19 = v38;
      if ((a14 & 0x1000) != 0)
      {
        if (v23 > 0x7E)
        {
          return v15;
        }

        v35 = v29 - a7;
        if (v29 < a7)
        {
          if (a7 - v29 >= v30)
          {
            v35 = a7 - (v29 + v30);
          }

          else
          {
            v35 = 0;
          }
        }

        if (v35 >= a9)
        {
          return v15;
        }
      }

LABEL_47:
      v15 = spaceman_fxc_tree_adjacent(v20, v19, v39);
      ++v23;
    }

    while ((v15 & 0xFFFFFFFD) == 0);
  }

  return v15;
}

BOOL new_extent_is_better(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, __int16 a7)
{
  if (!a6)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  if (a4 < a2)
  {
    if (a6 <= a4)
    {
      if (a6 != a4 || (a7 & 0x4000) == 0)
      {
        return 0;
      }

      if (a1 <= a3)
      {
        v9 = a3 - a1;
      }

      else
      {
        v9 = a1 - a3 >= a6 ? a1 - (a3 + a6) : 0;
      }

      if (a1 <= a5)
      {
        v12 = a5 - a1;
      }

      else
      {
        v12 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
      }

      if (v12 >= v9)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a4 != a2)
  {
    v10 = a4 - a2;
    if (a4 > a2)
    {
      v11 = a6 - a2;
      if (a6 >= a2)
      {
        if (a6 == a2 || v10 <= 0xF && v11 > v10)
        {
          return 1;
        }

        if ((a7 & 0x4000) != 0)
        {
          if (a1 <= a3)
          {
            v14 = a3 - a1;
          }

          else if (a1 - a3 >= a4)
          {
            v14 = a1 - (a3 + a4);
          }

          else
          {
            v14 = 0;
          }

          if (a1 <= a5)
          {
            v15 = a5 - a1;
          }

          else if (a1 - a5 >= a6)
          {
            v15 = a1 - (a5 + a6);
          }

          else
          {
            v15 = 0;
          }

          return v11 >= 0x10 && v15 < v14;
        }

        if (v11 < v10 && v11 > 0xF)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a6 < a4 || a6 != a4 && (a7 & 0x4000) == 0)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v8 = a3 - a1;
  }

  else
  {
    v8 = a1 - a3 >= a4 ? a1 - (a3 + a4) : 0;
  }

  if (a1 <= a5)
  {
    v13 = a5 - a1;
  }

  else
  {
    v13 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
  }

  if (v13 >= v8)
  {
    return 0;
  }

  result = 1;
  if (a6 != a4 && a6 - a4 <= 0xF)
  {
    return 0;
  }

  return result;
}

uint64_t spaceman_fxc_bitmap_should_be_searched(uint64_t a1, __int16 a2, unint64_t a3, unint64_t a4)
{
  v8 = a3;
  if ((a2 & 0x1000) != 0)
  {
    if (a4 > 1)
    {
      v8 = a4 + (a4 >> 1);
      if (v8 >= a3)
      {
        v8 = a3;
      }
    }

    else
    {
      v8 = a4 + 1;
    }
  }

  v42 = v8;
  v9 = *(a1 + 200);
  v10 = *(a1 + 208);
  v11 = *(a1 + 160);
  if (*(a1 + 152) > v9)
  {
    v9 = *(a1 + 152);
  }

  v12 = *(a1 + 168);
  if (v10)
  {
    v14 = v10 - v11;
    v13 = v10 <= v11;
    v15 = v12 + v11;
    if (v10 < v11)
    {
      v11 = *(a1 + 208);
    }

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(a1 + 216) + v16;
    if (v15 > v17 + v11)
    {
      v12 = v15 - v11;
    }

    else
    {
      v12 = v17;
    }
  }

  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  v21 = *(a1 + 184);
  v20 = *(a1 + 192);
  v23 = *(a1 + 248);
  v22 = *(a1 + 256);
  if (v9 <= v23)
  {
    v24 = *(a1 + 248);
  }

  else
  {
    v24 = v9;
  }

  v25 = calc_overlap_range(v22, *(a1 + 264), v11, v12, 0);
  v26 = *(a1 + 96);
  v27 = *(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 72);
  if (v26 == v27)
  {
    goto LABEL_21;
  }

  if ((*(a1 + 280) & 1) == 0)
  {
LABEL_52:
    *(a1 + 440) = 0;
    result = 1;
    v29 = 448;
    goto LABEL_53;
  }

  v30 = v20 + v19;
  if (!v26 && v27 && v30 + *(a1 + 240))
  {
    v41 = 456;
    goto LABEL_51;
  }

  if ((a2 & 0x1000) == 0 || a4 <= (3 * a3) >> 2)
  {
    if (v24 >= v42)
    {
      v41 = 464;
      goto LABEL_51;
    }

    if (v24 <= a4)
    {
      v31 = a4;
    }

    else
    {
      v31 = v24;
    }

    if (v42 <= *(a1 + 240) + v30 + v31 + v31 * (v18 + v21 + *(a1 + 232)))
    {
      v32 = *(a1 + 94);
      v33 = *(a1 + 88) >> 8;
      v34 = v33 - 1;
      v35 = v33 - v32;
      if (v35 <= 4)
      {
        LODWORD(v36) = v35 + 4;
      }

      else
      {
        LODWORD(v36) = 8;
      }

      v36 = v36;
      if (v34 <= v32)
      {
        v36 = 4;
      }

      v37 = (64 - v42) >> 4;
      if (v42 >= 0x40)
      {
        v37 = 0;
      }

      v38 = v36 + v37 + (*(a1 + 440) >> 14);
      if (v34 / 10 <= v32)
      {
        v39 = *(a1 + 128);
        if (v39 < *(a1 + 328))
        {
          v40 = *(a1 + 176);
          if (v40 <= *(a1 + 224))
          {
            v40 = *(a1 + 224);
          }

          if (v40 >= *(a1 + 248) && v39 - *(a1 + 120) < 4)
          {
            v38 = 1;
          }
        }
      }

      if (v30 > (v12 - v25 + *(a1 + 264)) / v38)
      {
        v41 = 472;
LABEL_51:
        ++*(a1 + v41);
        goto LABEL_52;
      }
    }
  }

LABEL_21:
  result = 0;
  ++*(a1 + 440);
  v29 = 432;
LABEL_53:
  ++*(a1 + v29);
  return result;
}

uint64_t spaceman_fxc_tree_first(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = 0;
  v4 = *(a1 + 104);
  *a2 = v4;
  if (v4)
  {
    *(a2 + 2) = *(*(a1 + 80) + 24 * v4 + 7);
  }

  while (1)
  {
    v5 = *(a2 + 97);
    if (!*(a2 + 4 * v5))
    {
      break;
    }

    result = spaceman_fxtp_add_child(a1, a2, -1);
    if (result)
    {
      return result;
    }
  }

  v7 = v5 - 1;
  *(a2 + 97) = v7;
  return (v7 >> 6) & 2;
}

uint64_t spaceman_fxtp_add_child(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a2 + 97);
  v4 = (a2 + 4 * *(a2 + 97));
  *(v4 + 3) = a3;
  if (v3 < 23)
  {
    v7 = v3 + 1;
    *(a2 + 97) = v3 + 1;
    v8 = *(a1 + 80);
    v9 = *v4;
    v10 = *(a2 + 96);
    v11 = *(v8 + 24 * v9 + 4 * v10 + ((a3 + 1) & 0x1FE) + 16);
    v12 = a2 + 4 * v7;
    *v12 = v11;
    *(v12 + 3) = 0;
    if (v11)
    {
      v13 = *(v8 + 24 * v11 + 8 * (v10 != 0) + 7);
    }

    else
    {
      v13 = 0;
    }

    result = 0;
    *(v12 + 2) = v13;
  }

  else
  {
    v5 = "length";
    if (!*(a2 + 96))
    {
      v5 = "paddr";
    }

    log_err("%s:%d: %s dev %d %s tree: PATH TOO LONG: %d\n", "spaceman_fxtp_add_child", 752, (*(*a1 + 384) + 212), *(a1 + 88), v5, v3);
    return 84;
  }

  return result;
}

uint64_t spaceman_fxc_tree_adjacent(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a2;
  v4 = -a3;
  v5 = *(a2 + 97);
  if (*(*(a1 + 80) + 24 * *(a2 + 4 * v5) + 4 * *(a2 + 96) + ((a3 + 1) & 0x1FE) + 16))
  {
    v6 = a1;
    while (1)
    {
      result = spaceman_fxtp_add_child(a1, a2, a3);
      if (result)
      {
        break;
      }

      v8 = *(v3 + 97);
      if (!*(v3 + 4 * v8))
      {
        v13 = v8 - 1;
        *(v3 + 97) = v13;
        v11 = (v3 + 4 * v13 + 3);
        goto LABEL_12;
      }

      a1 = v6;
      a2 = v3;
      a3 = v4;
    }
  }

  else
  {
    LODWORD(v5) = v5;
    do
    {
      v9 = __OFSUB__(v5, 1);
      LODWORD(v5) = v5 - 1;
      if (v5 < 0 != v9)
      {
        return 2;
      }

      v10 = a2 + 4 * v5;
      v12 = *(v10 + 3);
      v11 = (v10 + 3);
    }

    while (v12 != v4);
    *(a2 + 97) = v5;
LABEL_12:
    result = 0;
    *v11 = 0;
  }

  return result;
}

uint64_t spaceman_fxc_tree_single_rotate(uint64_t result, unsigned int a2, int a3, unsigned int a4, unsigned __int16 *a5)
{
  v5 = *(result + 80);
  v6 = v5 + 24 * a4 + 4 * a2 + 2 * ((-a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15)) >> 1);
  v7 = *(v6 + 16);
  v8 = v5 + 24 * v7;
  v9 = v8 + 4 * a2 + 2 * ((a3 + 1 + (((a3 + 1) & 0x8000u) >> 15)) >> 1);
  *(v6 + 16) = *(v9 + 16);
  *(v9 + 16) = a4;
  *a5 = v7;
  if (*(v8 + 8 * (a2 != 0) + 7))
  {
    *(v5 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v12 = *(v8 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v5 + 24 * a4;
    v11 = *(v10 + 8 * (a2 != 0));
    if (a3 == -1)
    {
      *(v10 + 8 * (a2 != 0)) = v11 & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
      v12 = *(v8 + 8 * (a2 != 0)) | 0xFF00000000000000;
    }

    else
    {
      *(v10 + 8 * (a2 != 0)) = v11 | 0xFF00000000000000;
      v12 = *(v8 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
    }
  }

  *(v8 + 8 * (a2 != 0)) = v12;
  return result;
}

uint64_t spaceman_fxc_tree_double_rotate(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v6 = *(a1 + 80);
  v7 = -a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15);
  v8 = v6 + 24 * a5 + 4 * a2 + 2 * (v7 >> 1);
  v9 = (v7 >> 1);
  v10 = *(v8 + 16);
  v11 = v6 + 24 * v10;
  result = v11 + 4 * a2 + 16;
  v13 = a3 + 1 + (((a3 + 1) & 0x8000u) >> 15);
  v14 = v13 >> 1;
  v15 = (v13 >> 1);
  *(v8 + 16) = *(result + 2 * v15);
  *(result + 2 * v15) = a5;
  *(v6 + 24 * a4 + 4 * a2 + 2 * v14 + 16) = *(result + 2 * v9);
  *(result + 2 * v9) = a4;
  *a6 = v10;
  v16 = HIBYTE(*(v11 + 8 * (a2 != 0)));
  if (v16 == a3)
  {
    *(v6 + 24 * a4 + 8 * (a2 != 0) + 7) = -a3;
    v17 = v6 + 24 * a5;
    v18 = *(v17 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v6 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v17 = v6 + 24 * a5;
    v18 = *(v17 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
    if (v16)
    {
      v18 |= a3 << 56;
    }
  }

  *(v17 + 8 * (a2 != 0)) = v18;
  *(v11 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
  return result;
}

void crc32c_init()
{
  if (!crc32c)
  {
    cpu_capabilities = _get_cpu_capabilities();
    v1 = crc32c_arm64_hw;
    if ((cpu_capabilities & 0x4000000) == 0)
    {
      v2 = crc32c;
      if (crc32c)
      {
        return;
      }

      do
      {
        v3 = 0;
        for (i = 0; i != 8; ++i)
        {
          v5 = (v2 >> i) ^ v3;
          v6 = v3 >> 1;
          v3 = (v3 >> 1) ^ 0x82F63B78;
          if ((v5 & 1) == 0)
          {
            v3 = v6;
          }
        }

        crc32c_table[v2++] = v3;
        v1 = crc32c_soft;
      }

      while (v2 != 256);
    }

    crc32c = v1;
  }
}

uint64_t crc32c_soft(uint64_t result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    result = crc32c_table[(v3 ^ result)] ^ (result >> 8);
  }

  return result;
}

uint64_t crc32c_arm64_hw(uint64_t result, unsigned __int16 *a2, unint64_t a3)
{
  if ((a2 & 7) != 0)
  {
    if (!a3)
    {
      return result;
    }

    if (a2)
    {
      v4 = *a2;
      a2 = (a2 + 1);
      _W8 = v4;
      __asm { CRC32CB         W0, W0, W8 }

      result = _OFF;
      __asm { CRC32CB         W0, W0, W8 }

      --a3;
    }

    if (a3 >= 2 && (a2 & 3) != 0)
    {
      v11 = *a2++;
      _W9 = v11;
      __asm { CRC32CH         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CH         W0, W0, W9 }

      a3 -= 2;
    }

    if (a3 >= 4 && (a2 & 7) != 0)
    {
      v14 = *a2;
      a2 += 2;
      _W9 = v14;
      __asm { CRC32CW         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CW         W0, W0, W9 }

      a3 -= 4;
    }
  }

  if (a3 >= 8)
  {
    do
    {
      v17 = *a2;
      a2 += 4;
      _X8 = v17;
      __asm { CRC32CX         W0, W0, X8 }

      result = _OFF;
      __asm { CRC32CX         W0, W0, X8 }

      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3 >= 4)
  {
    v20 = *a2;
    a2 += 2;
    _W9 = v20;
    __asm { CRC32CW         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CW         W0, W0, W9 }

    a3 -= 4;
  }

  if (a3 >= 2)
  {
    v23 = *a2++;
    _W9 = v23;
    __asm { CRC32CH         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CH         W0, W0, W9 }

    a3 -= 2;
  }

  if (a3)
  {
    _W8 = *a2;
    __asm { CRC32CB         W0, W0, W8 }

    result = _OFF;
    __asm { CRC32CB         W0, W0, W8 }
  }

  return result;
}

uint64_t rolling_stats_init(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = new_lock(a1);
  if (!result)
  {
    v8.tv_sec = 0;
    v8.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v8);
    *(a1 + 64) = v8.tv_sec / a2 * a2;
    *(a1 + 72) = a2;
    *(a1 + 76) = a3;
    v7 = _apfs_calloc(a3, 8uLL);
    *(a1 + 80) = v7;
    if (v7)
    {
      result = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      free_lock(a1);
      return 12;
    }
  }

  return result;
}

uint64_t rolling_stats_destroy(uint64_t a1)
{
  _apfs_free(*(a1 + 80), 8 * *(a1 + 76));
  *(a1 + 80) = 0;

  return free_lock(a1);
}

BOOL bitmap_range_is_set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  if (a3 >= 64)
  {
    v6 = (a1 + 8 * v4 + 8);
    while (-1 << v5 <= (*(v6 - 1) & (-1 << v5)) && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> -v5) & ~*v6) == 0))
    {
      ++v4;
      v7 = a3 - 64;
      ++v6;
      v8 = a3 <= 127;
      a3 -= 64;
      if (v8)
      {
        if (v7)
        {
          goto LABEL_14;
        }

        return 1;
      }
    }

    return 0;
  }

  v7 = a3;
  if (!a3)
  {
    return 1;
  }

LABEL_14:
  v9 = 64 - v5;
  v10 = ~(-1 << v7);
  v11 = v10 << v5;
  v12 = v10 >> (64 - v5);
  if (!v5)
  {
    v12 = 0;
  }

  v13 = (a1 + 8 * v4);
  return (v11 & ~((-1 << v5) & *v13)) == 0 && (v7 <= v9 || !v12 || (v12 & ~((0xFFFFFFFFFFFFFFFFLL >> v9) & v13[1])) == 0);
}

uint64_t bitmap_range_is_clear@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 >= 64)
  {
    v7 = (a1 + 8 * v4 + 8);
    while (((-1 << v5) & *(v7 - 1)) == 0 && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> v6) & *v7) == 0))
    {
      ++v4;
      v8 = a3 - 64;
      ++v7;
      v9 = a3 <= 127;
      a3 -= 64;
      if (v9)
      {
        if (v8)
        {
          goto LABEL_11;
        }

        return 1;
      }
    }

    return 0;
  }

  v8 = a3;
  if (a3)
  {
LABEL_11:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (a1 + 8 * v4);
    if ((v11 & (-1 << v5) & *v13) != 0 || v8 > v6 && v12 && ((0xFFFFFFFFFFFFFFFFLL >> v6) & v12 & v13[1]) != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t bitmap_set_range@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) = *(v7 - 1) & ~(-1 << v5) | (-1 << v5);
    if (v5)
    {
      *v7 |= 0xFFFFFFFFFFFFFFFFLL >> v6;
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_10:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (result + 8 * v4);
    *v13 = *v13 & ~v11 | v11 & (-1 << v5);
    if (v8 > v6)
    {
      if (v12)
      {
        v13[1] = v13[1] & ~v12 | v12 & (0xFFFFFFFFFFFFFFFFLL >> v6);
      }
    }
  }

  return result;
}

uint64_t bitmap_clear_range(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_13;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) &= ~(-1 << v5);
    if (v5)
    {
      *v7 &= ~(0xFFFFFFFFFFFFFFFFLL >> v6);
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_13:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (v5)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = (result + 8 * v4);
    *v14 &= ~v11;
    if (v8 > v6)
    {
      if (v13)
      {
        v14[1] &= ~v13;
      }
    }
  }

  return result;
}

uint64_t bitmap_range_find_first(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4 < 1)
  {
    return 0;
  }

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  v6 = (a2 + 8 * (a3 / 64));
  while (1)
  {
    v7 = a3 & 0x3F;
    if (a3 <= 0)
    {
      v7 = -(-a3 & 0x3F);
    }

    v8 = 64 - v7;
    v10 = *v6++;
    v9 = v10;
    if (64 - v7 >= a4)
    {
      v8 = a4;
    }

    v11 = __clz(__rbit64((v9 >> v7) ^ v5));
    if (v8 > v11)
    {
      break;
    }

    a3 += v8;
    v12 = a4 <= v8;
    a4 -= v8;
    if (v12)
    {
      return 0;
    }
  }

  *a5 = v11 + a3;
  return 1;
}

uint64_t bitmap_range_find_last_set(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 < 1)
  {
    return 0;
  }

  v4 = a3 + a2;
  v5 = a3 + a2 - 1;
  if (a3 + a2 < 1)
  {
    v5 = a3 + a2 + 62;
  }

  v6 = (a1 + 8 * (v5 >> 6));
  while (1)
  {
    if (v4 <= 0)
    {
      v7 = -(-v4 & 0x3F);
    }

    else
    {
      v7 = v4 & 0x3F;
    }

    v8 = 64 - v7;
    if (!v7)
    {
      v7 = 64;
      v8 = 0;
    }

    if (v7 >= a3)
    {
      v7 = a3;
    }

    v9 = *v6--;
    v10 = __clz(v9 << v8);
    if (v7 > v10)
    {
      break;
    }

    v4 -= v7;
    v11 = a3 <= v7;
    a3 -= v7;
    if (v11)
    {
      return 0;
    }
  }

  *a4 = v4 + ~v10;
  return 1;
}

BOOL bitmap_range_find_desired_or_first_clear_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v12 = 0;
  v36 = 0;
  v34 = a4 - 1;
  v13 = -1;
  while (1)
  {
    if (v12 >= a2)
    {
      goto LABEL_40;
    }

    v14 = a4 - a3;
    if (a4 - a3 < 1)
    {
      goto LABEL_40;
    }

    v15 = 8 * (a3 / 64);
    while (1)
    {
      v16 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v16 = -(-a3 & 0x3F);
      }

      v17 = 64 - v16;
      if (64 - v16 >= v14)
      {
        v17 = v14;
      }

      v18 = __clz(__rbit64(~(*(a1 + v15) >> v16)));
      if (v17 > v18)
      {
        break;
      }

      a3 += v17;
      v15 += 8;
      v19 = v14 <= v17;
      v14 -= v17;
      if (v19)
      {
        goto LABEL_40;
      }
    }

    v20 = v18 + a3;
    if ((v18 + a3) >= a4 - v12)
    {
LABEL_40:
      v20 = v13;
      goto LABEL_41;
    }

    if (!v12)
    {
      v13 = v18 + a3;
      v12 = 1;
      if (v20 >= v34)
      {
        break;
      }
    }

    v35 = a7;
    v21 = v12 + 1;
    if (v12 + 1 < a4 - v20)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = a4 - v20;
    }

    if (bitmap_range_find_last_set(a1, v20, v22, &v36))
    {
      v23 = v36;
      v20 = v13;
    }

    else
    {
      v24 = a2 - v21;
      if (a2 == v21)
      {
        v12 = a2;
        goto LABEL_41;
      }

      v25 = v21 + v20;
      if (v24 >= a4 - (v21 + v20))
      {
        v24 = a4 - (v21 + v20);
      }

      if (v24 < 1)
      {
LABEL_35:
        v12 = v24 + v21;
      }

      else
      {
        v26 = v25 + 63;
        if (v25 >= 0)
        {
          v26 = v21 + v20;
        }

        v27 = (a1 + 8 * (v26 >> 6));
        v28 = v24;
        while (1)
        {
          v29 = v25 & 0x3F;
          if (v25 <= 0)
          {
            v29 = -(-v25 & 0x3F);
          }

          v30 = 64 - v29;
          if (64 - v29 >= v28)
          {
            v30 = v28;
          }

          v31 = *v27++;
          v32 = __clz(__rbit64(v31 >> v29));
          if (v30 > v32)
          {
            break;
          }

          v25 += v30;
          v19 = v28 <= v30;
          v28 -= v30;
          if (v19)
          {
            goto LABEL_35;
          }
        }

        v12 = v32 + v25 - v20;
      }

      v23 = v12 + v20;
      v36 = v12 + v20;
      v13 = v20;
    }

    a7 = v35;
    a3 = v23 + 1;
    if (v35)
    {
      goto LABEL_41;
    }
  }

  v12 = 1;
LABEL_41:
  *a5 = v20;
  *a6 = v12;
  return v12 == a2;
}