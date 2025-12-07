BOOL bitmap_range_find_desired_or_first_clear_range(uint64_t last_set, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v12 = 0;
  v36 = 0;
  v34 = a4 - 1;
  v13 = -1;
  do
  {
    if (v12 >= a2)
    {
      break;
    }

    v14 = a4 - a3;
    if (a4 - a3 < 1)
    {
      break;
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

      v18 = __clz(__rbit64(~(*(last_set + v15) >> v16)));
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
        goto LABEL_46;
      }
    }

    v20 = v18 + a3;
    if ((v18 + a3) >= a4 - v12)
    {
      break;
    }

    if (!v12)
    {
      v13 = v18 + a3;
      v12 = 1;
      if (v20 >= v34)
      {
        v13 = v18 + a3;
        v12 = 1;
        break;
      }
    }

    v21 = v12 + 1;
    if (v12 + 1 < a4 - v20)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = a4 - v20;
    }

    if (v22 + v20 > a4)
    {
      sub_1000A5F58();
    }

    v35 = a7;
    if (bitmap_range_find_last_set(last_set, v20, v22, &v36))
    {
      v23 = v36;
      a7 = v35;
    }

    else
    {
      v24 = v21 + v20;
      v25 = a4 - (v21 + v20);
      if (a4 < v21 + v20)
      {
        sub_1000A5F2C();
      }

      if (a2 == v21)
      {
        v13 = v20;
        v12 = a2;
        break;
      }

      if (a2 - v21 < v25)
      {
        v25 = a2 - v21;
      }

      if (v25 + v24 > a4)
      {
        sub_1000A5ED4();
      }

      if (v25 < 1)
      {
LABEL_38:
        v12 = v25 + v21;
      }

      else
      {
        v26 = v24 + 63;
        if (v24 >= 0)
        {
          v26 = v21 + v20;
        }

        v27 = (last_set + 8 * (v26 >> 6));
        v28 = v25;
        while (1)
        {
          v29 = v24 & 0x3F;
          if (v24 <= 0)
          {
            v29 = -(-v24 & 0x3F);
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

          v24 += v30;
          v19 = v28 <= v30;
          v28 -= v30;
          if (v19)
          {
            goto LABEL_38;
          }
        }

        v12 = v32 + v24 - v20;
      }

      v23 = v12 + v20;
      a7 = v35;
      if (v12 + v20 > a4)
      {
        sub_1000A5EA8();
      }

      v36 = v12 + v20;
      v13 = v20;
    }

    a3 = v23 + 1;
  }

  while (!a7);
LABEL_46:
  if (v12 + v13 > a4)
  {
    sub_1000A5F00();
  }

  *a5 = v13;
  *a6 = v12;
  return v12 == a2;
}

unint64_t bitmap_count_bits(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= a4)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    v8 = a4 - a3;
    if (a4 - a3 < 1)
    {
      break;
    }

    v9 = (a1 + 8 * (a3 / 64));
    while (1)
    {
      v10 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v10 = -(-a3 & 0x3F);
      }

      v11 = 64 - v10;
      v13 = *v9++;
      v12 = v13;
      if (64 - v10 >= v8)
      {
        v11 = v8;
      }

      v14 = __clz(__rbit64((v12 >> v10) ^ v6));
      if (v11 > v14)
      {
        break;
      }

      a3 += v11;
      v15 = v8 <= v11;
      v8 -= v11;
      if (v15)
      {
        return result;
      }
    }

    v16 = v14 + a3;
    v17 = a4 - (v14 + a3);
    if (v17 < 1)
    {
      return result - v16 + a4;
    }

    v18 = v16 + 63;
    if (v16 >= 0)
    {
      v18 = v14 + a3;
    }

    v19 = (a1 + 8 * (v18 >> 6));
    v20 = v14 + a3;
    while (1)
    {
      v21 = v20 & 0x3F;
      if (v20 <= 0)
      {
        v21 = -(-v20 & 0x3F);
      }

      v22 = 64 - v21;
      v24 = *v19++;
      v23 = v24;
      if (64 - v21 >= v17)
      {
        v22 = v17;
      }

      v25 = __clz(__rbit64((v23 >> v21) ^ v7));
      if (v22 > v25)
      {
        break;
      }

      v20 += v22;
      v15 = v17 <= v22;
      v17 -= v22;
      if (v15)
      {
        return result - v16 + a4;
      }
    }

    a3 = v25 + v20;
    result = result - v16 + v25 + v20;
  }

  while ((v25 + v20) < a4);
  return result;
}

void *bitmap_copy(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 + 63;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 63;
  }

  v7 = a2 - (v6 & 0xFFFFFFFFFFFFFFC0);
  v8 = 64 - v7;
  v9 = -1 << v7;
  v10 = (v6 & 0xC0) - a2;
  v11 = 0xFFFFFFFFFFFFFFFFLL >> v10;
  if (a2 == (v6 & 0xFFFFFFFFFFFFFFC0))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> v10;
  }

  if (a4 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4 + 63;
  }

  v14 = a4 - (v13 & 0xFFFFFFFFFFFFFFC0);
  v15 = 64 - v14;
  v16 = -1 << v14;
  v17 = 0xFFFFFFFFFFFFFFFFLL >> ((v13 & 0xC0u) - a4);
  if (result == a3 && a2 <= a4)
  {
    v18 = a5 + a2;
    v20 = a5 + a2 - 1;
    v19 = a5 + a2 < 1;
    v21 = a5 + a2 + 62;
    if (v19)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    v23 = a5 + a4;
    v24 = a5 + a4 - 1;
    v19 = a5 + a4 < 1;
    v25 = a5 + a4 + 62;
    if (!v19)
    {
      v25 = v24;
    }

    if (a5 <= 0)
    {
      v26 = -(-a5 & 0x3F);
    }

    else
    {
      v26 = a5 & 0x3F;
    }

    if (v26)
    {
      v19 = v18 < v26;
      v27 = v18 - v26;
      if (v19)
      {
        v27 += 63;
      }

      v28 = v27 >> 6;
      v19 = v23 < v26;
      v29 = v23 - v26;
      if (v19)
      {
        v29 += 63;
      }

      v30 = v29 >> 6;
      v31 = &result[v28];
      v32 = (*v31 & v9) >> v7;
      if (v26 >= v8)
      {
        v32 |= (v31[1] & v12) << v8;
      }

      v33 = ~(-1 << v26);
      v34 = v32 & v33;
      v35 = v33 << v14;
      if (v14)
      {
        v36 = v33 >> v15;
      }

      else
      {
        v36 = 0;
      }

      v37 = &a3[v30];
      *v37 = (v34 << v14) & v35 | *v37 & ~v35;
      if (v26 > v15 && v36)
      {
        v37[1] = v37[1] & ~v36 | (v34 >> v15) & v36;
      }

      a5 -= v26;
      v38 = v28 - 1;
      v39 = v30 - 1;
    }

    else
    {
      v38 = v22 >> 6;
      v39 = v25 >> 6;
    }

    if (a5 >= 64)
    {
      v55 = v6 >> 6;
      if (v38 >= v55)
      {
        v56 = ~v17;
        result += v38 + 1;
        v57 = &a3[v39 + 1];
        do
        {
          v58 = (*(result - 1) & v9) >> v7;
          if (v7)
          {
            v58 |= *result << v8;
          }

          *(v57 - 1) = *(v57 - 1) & ~v16 | (v58 << v14) & v16;
          if (v14)
          {
            *v57 = *v57 & v56 | (v58 >> v15);
          }

          if (a5 < 128)
          {
            break;
          }

          a5 -= 64;
          --result;
          --v57;
          v19 = v38-- <= v55;
        }

        while (!v19);
      }
    }

    return result;
  }

  v40 = v13 >> 6;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  v41 = v5 >> 6;
  if (a5 < 64)
  {
    v46 = a5;
    if (!a5)
    {
      return result;
    }

    goto LABEL_47;
  }

  v42 = ~v17;
  v43 = &a3[v40 + 1];
  v44 = &result[v41 + 1];
  do
  {
    v45 = (*(v44 - 1) & v9) >> v7;
    if (v7)
    {
      v45 |= *v44 << v8;
    }

    *(v43 - 1) = *(v43 - 1) & ~v16 | (v45 << v14) & v16;
    if (v14)
    {
      *v43 = *v43 & v42 | (v45 >> v15);
    }

    ++v41;
    ++v40;
    v46 = a5 - 64;
    ++v43;
    ++v44;
    v19 = a5 <= 127;
    a5 -= 64;
  }

  while (!v19);
  if (v46)
  {
LABEL_47:
    v47 = &result[v41];
    v48 = (*v47 & v9) >> v7;
    if (v7 && v46 >= v8)
    {
      v48 |= (v47[1] & v11) << v8;
    }

    v49 = ~(-1 << v46);
    v50 = v48 & v49;
    v51 = v49 << v14;
    v52 = v49 >> v15;
    if (v14)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v54 = &a3[v40];
    *v54 = (v50 << v14) & v51 | *v54 & ~v51;
    if (v46 > v15 && v53)
    {
      v54[1] = v54[1] & ~v53 | (v50 >> v15) & v53;
    }
  }

  return result;
}

uint64_t bitmap_shift_down(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 << 6) - a3;
  bitmap_copy(a1, a3, a1, 0, v5);

  return bitmap_clear_range(a1, v5, a3);
}

uint64_t authapfs_valid_hash_type(int a1)
{
  if ((a1 & 0xFFFFFF00) <= 0xF00 && (a1 & 0xFD) != 0 && a1 < 9u)
  {
    return 0;
  }

  log_err("%s:%d: Invalid or unknown hash type: %d\n", "authapfs_valid_hash_type", 31, a1);
  return 22;
}

uint64_t authapfs_hash_comparison_size(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_1000B2FB8[(a1 - 1)];
  }
}

double sub_10002F990(uint64_t a1, unsigned int a2, int *a3)
{
  if (a2 <= 0xFFF)
  {
    sub_1000A5FB0();
  }

  if (!a3)
  {
    sub_1000A5F84();
  }

  v4 = *a3;
  if (!authapfs_valid_hash_type(*a3))
  {
    *&result = 2;
    *(a1 + 32) = 2;
    *(a1 + 40) = v4;
    *(a1 + 44) = 128;
  }

  return result;
}

uint64_t sub_10002F9F0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = v2[10];
  v4 = authapfs_hash_comparison_size(v3);
  if (!v2[8])
  {
    return 92;
  }

  if (v2[11] < 0x30u)
  {
    return 92;
  }

  v5 = v4;
  if (authapfs_valid_hash_type(v3))
  {
    return 92;
  }

  v6 = v2[11];
  if (*(a1 + 48) < (v6 + v5))
  {
    return 92;
  }

  result = 0;
  v8 = *(a1 + 56);
  *(a1 + 376) = v8;
  *(a1 + 384) = v8 + v6;
  *(a1 + 392) = v5;
  return result;
}

uint64_t sub_10002FA7C(uint64_t a1, atomic_ullong **a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  if (!a2 && !a3)
  {
    return 22;
  }

  v7 = *(*(a1 + 376) + 1024);
  if (v7)
  {
    v8 = *(a1 + 392);
    pthread_mutex_lock((a1 + 1736));
    v9 = *(a1 + 3632);
    if (v9)
    {
      if (a2)
      {
        obj_retain(v9);
        *a2 = *(a1 + 3632);
      }

      pthread_mutex_unlock((a1 + 1736));
      return 0;
    }

    v13 = 0;
    pthread_mutex_unlock((a1 + 1736));
    result = obj_get(*(v8 + 392), 0, v7, &integrity_meta_desc, 0, a1, *(a1 + 440), 0, &v13);
    if (!result)
    {
      v11 = v13;
      pthread_mutex_lock((a1 + 3960));
      v12 = v11[47];
      *(a1 + 4028) = vrev64_s32(v12[4]);
      *(a1 + 4040) = v12[6];
      *(a1 + 4024) = 1;
      pthread_mutex_unlock((a1 + 3960));
      if (a3)
      {
        pthread_mutex_lock((a1 + 1736));
        if (!*(a1 + 3632))
        {
          obj_retain(v13);
          *(a1 + 3632) = v13;
        }

        pthread_mutex_unlock((a1 + 1736));
      }

      if (!a2)
      {
        obj_release(v13);
        return 0;
      }

      result = 0;
      *a2 = v13;
    }
  }

  else
  {
    v10 = obj_oid(a1);
    log_err("%s:%d: %s integrity_meta object of fs %llu, oid invalid\n", "authapfs_integrity_meta_get_internal", 169, (a1 + 4048), v10);
    return 2;
  }

  return result;
}

uint64_t authapfs_get_hash_args(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  if (!a2)
  {
    return 22;
  }

  result = sub_10002FA7C(a1, &v8, 0);
  if (!result)
  {
    v4 = v8;
    v5 = *(v8 + 98);
    if (v5 >= 0x40)
    {
      v6 = 64;
    }

    else
    {
      v6 = v5;
    }

    v7 = v8[48];
    a2[6] = *(v8[47] + 40);
    a2[7] = v5;
    a2[5] |= 0x180u;
    memcpy(a2 + 8, v7, v6);
    obj_release(v4);
    return 0;
  }

  return result;
}

uint64_t authapfs_integrity_meta_create(uint64_t a1, int a2, unint64_t a3, uint64_t *a4)
{
  v14 = a2;
  v13 = 0;
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 1108))
  {
    return 30;
  }

  v8 = *(a1 + 392);
  if (!a4 && *(*(a1 + 376) + 1024))
  {
    return 17;
  }

  v9 = obj_modify(a1, 0, a3);
  if (v9)
  {
    v5 = v9;
    log_err("%s:%d: %s obj_modify failed - %d\n", "authapfs_integrity_meta_create", 427, (a1 + 4048), v9);
  }

  else
  {
    v10 = obj_create(*(v8 + 392), 0, 0, &integrity_meta_desc, &v14, a1, a3, &v13);
    if (v10)
    {
      v5 = v10;
      log_err("%s:%d: %s obj_create failed - %d\n", "authapfs_integrity_meta_create", 440, (a1 + 4048), v10);
    }

    else
    {
      obj_dirty(v13, a3, 0);
      v11 = obj_oid(v13);
      if (a4)
      {
        v5 = 0;
        *a4 = v13;
      }

      else
      {
        *(*(a1 + 376) + 1024) = v11;
        fs_sb_dirty(a1, a3);
        obj_release(v13);
        return 0;
      }
    }
  }

  return v5;
}

uint64_t authapfs_seal_is_broken(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1736);
  pthread_mutex_lock((a1 + 1736));
  v5 = *(a1 + 3632);
  if (v5)
  {
    v6 = *(v5 + 376);
    v7 = (v6 + 36);
    v8 = (v6 + 32);
    v9 = (v6 + 48);
  }

  else
  {
    pthread_mutex_unlock(v4);
    if (*(a1 + 4024) != 1)
    {
LABEL_8:
      LOBYTE(v12) = 0;
      return v12 & 1;
    }

    v4 = (a1 + 3960);
    pthread_mutex_lock((a1 + 3960));
    v7 = (a1 + 4028);
    v8 = (a1 + 4032);
    v9 = (a1 + 4040);
  }

  v10 = *v9;
  v11 = *v8;
  v12 = *v7;
  pthread_mutex_unlock(v4);
  if (a2 && v11 >= 2)
  {
    if (v12)
    {
      LOBYTE(v12) = obj_xid(a2) >= v10;
      return v12 & 1;
    }

    goto LABEL_8;
  }

  return v12 & 1;
}

uint64_t userfs_data_cryptor(uint64_t a1, char *a2, char *a3, int64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v7 = 22;
  if (!a2)
  {
    return v7;
  }

  if (!a3)
  {
    return v7;
  }

  v9 = a4;
  if (a4 < 0)
  {
    return v7;
  }

  if (!a4)
  {
    return 0;
  }

  v12 = a5;
  if (!a5)
  {
    panic("Can't read/write encrypted data to/from block 0!");
  }

  if (!a1 || !*(a1 + 72))
  {
    return 13;
  }

  v38[1] = v38;
  __chkstk_darwin(a1);
  v39 = (v38 - v15);
  bzero(v38 - v15, v16);
  __rqtp = xmmword_1000B2FE0;
  pthread_mutex_lock(&stru_100103730);
  v17 = dword_1000E8568;
  if (!dword_1000E8568)
  {
    v38[0] = v12;
    v18 = 200;
    v19 = 200;
    while (1)
    {
      pthread_mutex_unlock(&stru_100103730);
      nanosleep(&__rqtp, 0);
      if (!--v18)
      {
        if (__rqtp.tv_nsec < 3126)
        {
          return 60;
        }

        __rqtp.tv_nsec *= 4;
        v19 >>= 2;
        v18 = v19;
      }

      pthread_mutex_lock(&stru_100103730);
      v17 = dword_1000E8568;
      if (dword_1000E8568)
      {
        v20 = 1;
      }

      else
      {
        v20 = v18 == 0;
      }

      if (v20)
      {
        v12 = v38[0];
        break;
      }
    }
  }

  dword_1000E8568 = v17 - 1;
  pthread_mutex_unlock(&stru_100103730);
  if (a2 != a3)
  {
    v21 = 0;
    goto LABEL_26;
  }

  v21 = _apfs_malloc_typed(0x200uLL, 0x6FED1243uLL);
  if (v21)
  {
LABEL_26:
    v40 = 0;
    v22 = *(a1 + 72);
    v23 = CCCryptorCreateWithMode(a7 ^ 1, 8u, 0, 0, 0, (v22 + 20), *(v22 + 10) >> 1, (v22 + 20 + (*(v22 + 10) >> 1)), *(v22 + 10) >> 1, 0, 0, &v40);
    if (v23)
    {
      log_err("%s:%d: CCCryptorCreateWithMode failed (E%d)\n", "userfs_data_cryptor", 153, v23);
      v7 = 13;
    }

    else
    {
      v24 = *(a1 + 72);
      bzero(v39, *(v24 + 10));
      if (v9 >= 512)
      {
        v26 = 0;
        v27 = *(v24 + 12);
        v38[0] = v12;
        if (v27)
        {
          v28 = v27 * a6;
        }

        else
        {
          v28 = v12;
        }

        v29 = a3;
        v30 = a2;
        while (1)
        {
          *v39 = v28 >> 9;
          v31 = v30;
          if (a2 == a3)
          {
            memcpy(v21, v30, 0x200uLL);
            v31 = v21;
          }

          v32 = a7 ? CCCryptorEncryptDataBlock() : CCCryptorDecryptDataBlock();
          if (v32)
          {
            break;
          }

          v28 += 512;
          v33 = v9 - 512;
          v30 += 512;
          v29 += 512;
          v26 -= 512;
          v21 = v31;
          v34 = v9 <= 1023;
          v9 -= 512;
          if (v34)
          {
            v25 = -v26;
            v21 = v31;
            v9 = v33;
            v12 = v38[0];
            goto LABEL_43;
          }
        }

        v36 = "Decryption";
        if (a7)
        {
          v36 = "Encryption";
        }

        log_err("%s:%d: %s failed (E%d)\n", "userfs_data_cryptor", 179, v36, v32);
        v7 = 5;
      }

      else
      {
        v25 = 0;
LABEL_43:
        if (v9)
        {
          v35 = "decrypt";
          if (a7)
          {
            v35 = "encrypt";
          }

          log_debug("%s:%d: Zero'ing excess data to %s: paddr %lld, completed %lld, remaining %zu\n", "userfs_data_cryptor", 189, v35, v12, v25, v9);
          bzero(&a3[v25], v9);
        }

        v7 = 0;
        v31 = v21;
      }

      CCCryptorRelease(v40);
      v21 = v31;
    }

    if (a2 != a3)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v7 = 12;
LABEL_55:
  _apfs_free(v21, 512);
LABEL_56:
  pthread_mutex_lock(&stru_100103730);
  if (dword_1000E8568 >= 4)
  {
    sub_1000A5FDC();
  }

  ++dword_1000E8568;
  pthread_mutex_unlock(&stru_100103730);
  return v7;
}

uint64_t AKS_FV_service()
{
  v0 = qword_100103770;
  if (!qword_100103770)
  {
    v1 = sub_1000A0F98(&qword_100103770);
    if (v1 || (v0 = qword_100103770) == 0)
    {
      log_err("%s:%d: lib_get_file_vault_services failed (E%d)\n", "AKS_FV_service", 213, v1);
      return 0;
    }
  }

  return v0;
}

void *authapfs_hexdump_hash(unsigned __int8 *a1, void *a2, unsigned int a3)
{
  v6 = (2 * a3) | 1;
  bzero(a2, v6);
  if (a3)
  {
    v7 = a3;
    v8 = a2;
    do
    {
      v9 = *a1++;
      v10 = snprintf(v8, v6, "%02hhx", v9);
      v8 += v10;
      v6 -= v10;
      --v7;
    }

    while (v7);
  }

  return a2;
}

uint64_t authapfs_should_hash_node(uint64_t a1)
{
  if (!a1)
  {
    sub_1000A6008();
  }

  if ((*(a1 + 21) & 4) != 0)
  {
    goto LABEL_10;
  }

  if ((obj_type_and_flags(a1) & 0x8000000) != 0 || (*(a1 + 17) & 2) != 0)
  {
    LODWORD(v2) = 0;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      LODWORD(v2) = (*(*(v2 + 376) + 56) >> 5) & 1;
    }
  }

  if (*(a1 + 40) != 14)
  {
LABEL_10:
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = v2 | ((*(*(a1 + 56) + 32) & 8) >> 3);
  }

  return v3 & 1;
}

uint64_t authapfs_validate_node_hash(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  memset(__s1, 0, sizeof(__s1));
  if (!a2)
  {
    return 22;
  }

  result = authapfs_hash_node(a1, __s1, a3, a4);
  if (!result)
  {
    result = memcmp(__s1, a2, a3);
    if (result)
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      authapfs_hexdump_hash(a2, v7, a3);
      authapfs_hexdump_hash(__s1, v9, a3);
      log_err("%s:%d: hash mismatch! expected: %s, actual: %s\n", "authapfs_validate_node_hash", 204, v7, v9);
      return 80;
    }
  }

  return result;
}

uint64_t authapfs_hash_node(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 22;
  if (a2 && (*(*(a1 + 56) + 32) & 8) != 0)
  {
    v6 = a4;
    if (authapfs_valid_hash_type(a4) || authapfs_hash_comparison_size(v6) != a3)
    {
      return 22;
    }

    else
    {
      hash_info = authapfs_get_hash_info(v6);
      v11 = v10;
      v12 = obj_size_phys(a1);
      authapfs_digest(hash_info, v11, v12, *(a1 + 56), a2);
      return 0;
    }
  }

  return result;
}

uint64_t authapfs_validate_node(void *a1, uint64_t a2)
{
  if (!authapfs_should_hash_node(a1))
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[50];
  if (obj_subtype(a1) != 255 && !v4)
  {
    sub_1000A6034();
  }

  if (byte_1000E856C & 1) == 0 || (authapfs_seal_is_broken(v4, a1))
  {
    return 0;
  }

  memset(__s2, 0, sizeof(__s2));
  if (!a2)
  {
    return a2;
  }

  if (!memcmp((a2 + 32), __s2, HIBYTE(v5) & 0x7F))
  {
    return 0;
  }

  a2 = authapfs_validate_node_hash(a1, (a2 + 32), HIBYTE(v5) & 0x7F, (v5 >> 44) & 0xFFF);
  if (a2)
  {
    v7 = obj_oid(a1);
    v8 = obj_xid(a1);
    v9 = obj_oid(v4);
    log_err("%s:%d: failed to validate node %p (oid:%llu, xid:%llu) of fs %p (%llu) - %d\n", "authapfs_validate_node", 325, a1, v7, v8, v4, v9, a2);
  }

  return a2;
}

uint64_t apfs_do_update_last_modified_by(void *a1, const char *a2, uint64_t a3)
{
  *__str = 0u;
  v11 = 0u;
  v6 = apfs_source_version();
  snprintf(__str, 0x20uLL, "%s (%s)", a2, v6);
  v7 = 0;
  v8 = (a1 + 40);
  do
  {
    if (!strncmp(v8, __str, 0x20uLL))
    {
      break;
    }

    ++v7;
    v8 += 48;
  }

  while (v7 != 7);
  memmove(a1 + 46, a1 + 40, 48 * v7);
  __strlcpy_chk();
  result = get_timestamp();
  a1[44] = result;
  a1[45] = a3;
  return result;
}

uint64_t apfs_set_formatted_by(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = apfs_source_version();
  v7 = snprintf((a1 + 272), 0x20uLL, "%s (%s)", a2, v6);
  if ((v7 & 0x80000000) != 0)
  {
    sub_1000A608C();
  }

  if (v7 >= 0x20)
  {
    v8 = strlen(v6);
    if (v8 + 4 >= 0x21)
    {
      sub_1000A6060();
    }

    snprintf((a1 - v8 + 300), v8 + 4, " (%s)", v6);
  }

  result = get_timestamp();
  *(a1 + 304) = result;
  *(a1 + 312) = a3;
  return result;
}

char *apfs_parse_version(unint64_t a1, char *__str, int a3)
{
  v6 = 0;
  LODWORD(v7) = 1;
  do
  {
    if (__ROR8__(0x1CAC083126E978D5 * (a1 / *(&unk_1000B2FF0 + v6 + 1)), 3) >= 0x4189374BC6A7F0uLL)
    {
      v7 = (v6 + 2);
    }

    else
    {
      v7 = v7;
    }

    ++v6;
  }

  while (v6 != 4);
  v8 = snprintf(__str, a3, "%llu", a1 / 0xE8D4A51000);
  result = 0;
  if ((v8 & 0x80000000) == 0 && v8 <= a3)
  {
    if (v7 < 2)
    {
      return __str;
    }

    else
    {
      v10 = v7 - 1;
      v11 = &qword_1000B2FF8;
      while (1)
      {
        v12 = *v11++;
        v13 = snprintf(&__str[v8], a3 - v8, ".%llu", a1 / v12 % 0x3E8);
        if (v13 < 0)
        {
          break;
        }

        v8 += v13;
        if (v8 > a3)
        {
          break;
        }

        if (!--v10)
        {
          return __str;
        }
      }

      return 0;
    }
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

uint64_t sub_100030F7C(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  if (*(a3 + 4) != a2)
  {
    sub_1000A60B8();
  }

  *(a1 + 32) = 1112758350;
  *(a1 + 36) = a2;
  *(a1 + 1264) = 0;
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 56) = xmmword_1000B3020;
  v3 = *(a3 + 32);
  *(a1 + 88) = 1024;
  *(a1 + 96) = v3;
  uuid_copy((a1 + 72), (a3 + 64));
  return 0;
}

uint64_t sub_100030FEC(uint64_t a1, unsigned int *a2)
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
  *(a1 + 928) = nx_keybag_init(a1);
  new_lock((a1 + 1120));
  new_lock((a1 + 752));
  *(a1 + 828) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  new_lock((a1 + 504));
  new_cv((a1 + 568));
  return 0;
}

uint64_t sub_100031118(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  free_lock((a1 + 864));
  free_lock((a1 + 672));
  nx_keybag_free(*(a1 + 928));
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
  if (!a1)
  {
    sub_1000A60E4();
  }

  v4 = a1[53];
  *a2 = v4;
  if (v4)
  {
    goto LABEL_3;
  }

  result = obj_get(a1[49], 0x80000000, *(a1[47] + 168), &nx_reaper_desc, 0, 0, 0, 0, a2);
  if (!result)
  {
    v4 = *a2;
    a1[53] = *a2;
LABEL_3:
    obj_retain(v4);
    return 0;
  }

  return result;
}

uint64_t nx_reaper_checkpoint_traverse(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a3 + 376);
  v39 = 0;
  v40 = 0;
  v38 = 0;
  if (a4 == 2)
  {
    v7 = obj_checkpoint_known(a3);
LABEL_5:
    v8 = v7;
    if (v7)
    {
      LODWORD(v9) = *(v6 + 68);
      v10 = (v6 + 68);
      goto LABEL_76;
    }

    goto LABEL_7;
  }

  if (a4 == 1)
  {
    v7 = obj_checkpoint_start(a3);
    goto LABEL_5;
  }

LABEL_7:
  if (*(v6 + 88) && obj_type_is_or_contains_ephemeral(*(v6 + 72)))
  {
    v8 = 0;
    if ((*(v6 + 104) & 0x10) == 0 && (*(v6 + 104) & 6) != 2)
    {
      v11 = nx_reaper_obj_get(a1, *(v6 + 72), *(v6 + 76), *(v6 + 80), *(v6 + 88), &v38, &v39);
      if (v11)
      {
        v8 = v11;
        v12 = a1[50];
        if (!v12 || !*(v12 + 76))
        {
          log_err("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1105, (a1[48] + 212), *(v6 + 88), v11);
        }
      }

      else
      {
        if (v38)
        {
          v33 = v38;
        }

        else
        {
          v33 = a1;
        }

        v8 = obj_checkpoint_traverse(v33, a2, v39, v4);
        obj_release(v39);
      }

      if (v38)
      {
        obj_release(v38);
        v38 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = (v6 + 68);
  v9 = *(v6 + 68);
  if (v8)
  {
    goto LABEL_76;
  }

  v13 = *(v6 + 48);
  if (!v13)
  {
    goto LABEL_76;
  }

  v35 = (v6 + 68);
  v36 = v4;
  do
  {
    v14 = obj_get(a1[49], 0x80000000uLL, v13, &nx_reap_list_desc, 0, 0, 0, 0, &v40);
    if (v14)
    {
      v8 = v14;
      v30 = a1[50];
      if (!v30 || !*(v30 + 76))
      {
        log_err("%s:%d: %s failed to get reap list object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1125, (a1[48] + 212), v13, v14);
      }

      break;
    }

    v15 = v40[47];
    if (v4 == 2)
    {
      v16 = obj_checkpoint_known(v40);
      goto LABEL_24;
    }

    if (v4 == 1)
    {
      v16 = obj_checkpoint_start(v40);
LABEL_24:
      v8 = v16;
      goto LABEL_26;
    }

    v8 = 0;
LABEL_26:
    v37 = v9;
    v13 = *(v15 + 32);
    if (v8)
    {
      goto LABEL_57;
    }

    v17 = *(v15 + 52);
    if (v17 == -1)
    {
      goto LABEL_57;
    }

    v18 = v15 + 64;
    v19 = -1;
    while (1)
    {
      v20 = v18 + 40 * v17;
      v21 = *v20;
      if (*v20 != -1 && v21 > *(v15 + 44))
      {
        break;
      }

      v22 = *(v20 + 8);
      if (v22 != *(v6 + 72) || *(v20 + 24) != *(v6 + 88))
      {
        if (v19 == -1 || (v23 = v18 + 40 * v19, v22 != *(v23 + 8)) || *(v20 + 24) != *(v23 + 24))
        {
          v8 = 0;
          if ((*(v20 + 4) & 0x10) != 0 || (*(v20 + 4) & 6) == 2)
          {
            goto LABEL_50;
          }

          if (obj_type_is_or_contains_ephemeral(v22))
          {
            v24 = nx_reaper_obj_get(a1, *(v20 + 8), *(v20 + 12), *(v20 + 16), *(v20 + 24), &v38, &v39);
            if (v24)
            {
              v8 = v24;
              v25 = a1[50];
              if (!v25 || !*(v25 + 76))
              {
                log_err("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1185, (a1[48] + 212), *(v20 + 24), v24);
              }
            }

            else
            {
              if (v38)
              {
                v26 = v38;
              }

              else
              {
                v26 = a1;
              }

              v8 = obj_checkpoint_traverse(v26, a2, v39, v36);
              obj_release(v39);
            }

            if (v38)
            {
              obj_release(v38);
              v38 = 0;
            }

            goto LABEL_50;
          }
        }
      }

      v8 = 0;
LABEL_50:
      if (!v8)
      {
        v19 = v17;
        v17 = v21;
        if (v21 != -1)
        {
          continue;
        }
      }

      goto LABEL_57;
    }

    v27 = a1[50];
    if (!v27 || !*(v27 + 76))
    {
      log_err("%s:%d: %s Invalid reap list entry nrl_entries[%d].nrle_next = %d\n", "nx_reaper_checkpoint_traverse", 1147, (a1[48] + 212), v17, v21);
    }

    obj_release(v40);
    v8 = nx_corruption_detected_int(a1);
LABEL_57:
    v10 = (v6 + 68);
    if (*v35)
    {
      v9 = (v37 - 1);
      if (v13 && v37 == 1)
      {
        v28 = a1[50];
        LODWORD(v4) = v36;
        if (!v28 || !*(v28 + 76))
        {
          log_err("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n", "nx_reaper_checkpoint_traverse", 1201, (a1[48] + 212), *v35);
        }

        v8 = nx_corruption_detected_int(a1);
        v9 = 0;
      }

      else
      {
        LODWORD(v4) = v36;
        if (!v13 && v37 != 1)
        {
          v29 = a1[50];
          if (!v29 || !*(v29 + 76))
          {
            log_warn("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n", "nx_reaper_checkpoint_traverse", 1206, (a1[48] + 212), *v35, v37 - 1);
          }
        }
      }
    }

    else
    {
      LODWORD(v4) = v36;
      v9 = v37;
    }

    obj_release(v40);
  }

  while (!v8 && v13);
LABEL_76:
  if (*v10)
  {
    v31 = v9 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    sub_1000A6110();
  }

  return v8;
}

uint64_t sub_100031DC0(uint64_t a1, int a2)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 108) = (a2 & 0xFFFFFFFC) - 112;
  return 0;
}

uint64_t sub_100031DE4(void *a1)
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

uint64_t sub_100031EC0(uint64_t a1, unsigned int a2)
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
    v6 = xmmword_1000AAE20;
    v7 = xmmword_1000AAE30;
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

uint64_t sub_100031FB4(void *a1)
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
    v18 = v17 ? v17 : a1;
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

  obj_lock(v45, 2u);
  v18 = obj_modify(v45, 0, a6);
  if (v18)
  {
    v16 = v18;
LABEL_13:
    obj_unlock(v45, 2u);
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

  v25 = v44[47];
  if (v25[12] > (v25[11] - 2))
  {
    v26 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v43);
    if (v26)
    {
      v16 = v26;
      obj_unlock(v45, 2u);
      obj_release(v44);
      goto LABEL_14;
    }

    v27 = obj_oid(v43);
    *(v44[47] + 32) = v27;
    *(v17 + 56) = obj_oid(v43);
    v28 = *(v17 + 68);
    if (v28)
    {
      *(v17 + 68) = v28 + 1;
    }

    obj_dirty(v45, a6, 0);
    obj_release(v44);
    v44 = v43;
    v25 = v43[47];
  }

  v29 = *(v17 + 32);
  *(v17 + 32) = v29 + 1;
  v30 = v25[15];
  if (v30 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1325, (*(a1 + 384) + 212));
    obj_unlock(v45, 2u);
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

  v35 = v25[12];
  if (v25[13] == -1)
  {
    if (v35)
    {
      sub_1000A613C();
    }

    v25[13] = v30;
  }

  v25[14] = v30;
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
    obj_unlock(v45, 2u);
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
  obj_unlock(v45, 2u);
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

  obj_lock(v43, 2u);
  v17 = obj_modify(v43, 0, a6);
  if (v17)
  {
    v14 = v17;
    obj_unlock(v43, 2u);
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
    obj_unlock(v43, 2u);
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

  v23 = v42[47];
  if (v23[12] > v23[11] + ~(a7 & 1u))
  {
    v24 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v41);
    if (v24)
    {
      v14 = v24;
      obj_unlock(v43, 2u);
      obj_release(v42);
      goto LABEL_4;
    }

    v25 = v41;
    *(v41[47] + 32) = *(v15 + 48);
    *(v15 + 48) = obj_oid(v25);
    v26 = *(v15 + 68);
    if (v26)
    {
      *(v15 + 68) = v26 + 1;
    }

    obj_dirty(v43, a6, 0);
    obj_release(v42);
    v42 = v41;
    v23 = v41[47];
  }

  v27 = v23[15];
  if (a7)
  {
    if (v27 == -1)
    {
      log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1514, (*(a1 + 384) + 212));
      obj_unlock(v43, 2u);
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
    obj_unlock(v43, 2u);
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
  obj_unlock(v43, 2u);
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
    obj_lock(v6, 2u);
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

    obj_unlock(v6, 2u);
    sub_100032CB8(a1);
    obj_lock(v6, 2u);
LABEL_4:
    obj_unlock(v6, 2u);
    obj_release(v6);
  }
}

uint64_t sub_100032CB8(uint64_t *a1)
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
  obj_lock(v20, 2u);
  v4 = v20;
  if (*(v20 + 98) || *(v20 + 99))
  {
    obj_unlock(v20, 2u);
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
    obj_unlock(v4, 2u);
    v19 = 0;
    v6 = tx_enter(a1, &v19);
    obj_lock(v20, 2u);
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

    v8 = sub_10003417C(a1, v20, v19);
    if (v8)
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
    obj_unlock(v4, 2u);
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
      obj_lock(v20, 2u);
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

    obj_lock(v20, 2u);
    if (v11 != 36)
    {
      v5 = 1;
      goto LABEL_17;
    }

    *(v3 + 64) |= 2u;
    v5 = 1;
LABEL_20:
    obj_dirty(v20, v19, 0);
    obj_unlock(v20, 2u);
    spaceman_currently_available_space(a1, 0, &v15, &v14, 0, 0);
    v6 = tx_leave(a1, v19, (v14 < 0x3E8) | (4 * (v14 < 0x7D0)));
    obj_lock(v20, 2u);
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

  v6 = v8;
  v13 = 0;
  v4 = v20;
LABEL_39:
  *(v4 + 98) = 0;
  obj_unlock(v4, 2u);
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
    obj_lock(v4, 2u);
    v2 = v4;
    ++*(v4 + 99);
    obj_unlock(v2, 2u);
    v3 = a1[53];
    if (v3)
    {
      obj_release(v3);
      a1[53] = 0;
    }

    obj_release(v4);
  }
}

uint64_t nx_reaper_wait(uint64_t *a1, unint64_t a2)
{
  v8 = 0;
  v4 = nx_reaper_get(a1, &v8);
  if (!v4)
  {
    v5 = v8[7];
    obj_lock(v8, 2u);
    v6 = *(v5 + 32);
    if (a2 == -1)
    {
      a2 = v6 - 1;
    }

    if (a2 >= v6)
    {
      log_err("%s:%d: %s invalid reap_id (%llu), must be smaller than nr_next_reap_id (%llu)\n", "nx_reaper_wait", 1987, (a1[48] + 212), a2, v6);
      v4 = 22;
    }

    else
    {
      while (*(v5 + 40) < a2)
      {
        obj_unlock(v8, 2u);
        v4 = sub_100032CB8(a1);
        obj_lock(v8, 2u);
        if (v4)
        {
          goto LABEL_10;
        }
      }

      v4 = 0;
    }

LABEL_10:
    obj_unlock(v8, 2u);
    obj_release(v8);
  }

  return v4;
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

uint64_t nx_metadata_fragmented_extent_list_tree_store(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    sub_1000A6168();
  }

  v8 = 0;
  v6 = btree_get(a1, 0x88000000uLL, v3 & 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 10, extent_list_key_cmp, 0, &v10);
  if (!v6)
  {
    v6 = btree_copy(v10, 0x40000000uLL, 0, a3, &v9);
    if (!v6)
    {
      btree_delete(v10, a3, &v8);
      *a2 = obj_oid(v9);
    }

    if (v10)
    {
      obj_release(v10);
    }

    if (v9)
    {
      obj_release(v9);
    }
  }

  return v6;
}

uint64_t nx_metadata_fragmented_extent_list_tree_get(uint64_t a1, unint64_t a2, atomic_ullong **a3)
{
  if (!a2)
  {
    return 22;
  }

  v6 = a1 + 432;
  for (i = 432; i != 464; i += 8)
  {
    v8 = *(a1 + i);
    if (v8 && obj_oid(*(a1 + i)) == a2)
    {
      obj_retain(v8);
      v14 = 0;
      *a3 = v8;
      return v14;
    }
  }

  obj_lock(a1, 2u);
  v9 = 0;
  v10 = -1;
  do
  {
    v11 = a1 + 8 * v9;
    v12 = *(v11 + 432);
    if (v12)
    {
      if (obj_oid(*(v11 + 432)) == a2)
      {
        obj_retain(v12);
        *a3 = v12;
        obj_unlock(a1, 2u);
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
    v14 = btree_get(a1, 2281701376, a2 & 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 10, extent_list_key_cmp, 0, a3);
  }

  else
  {
    v14 = btree_get(a1, 0x40000000, a2, 0, 0, 0, 10, extent_list_key_cmp, 0, a3);
    if (!v14 && v10 != -1)
    {
      v13 = *a3;
      *(v6 + 8 * v10) = *a3;
      obj_retain(v13);
      v14 = 0;
    }
  }

  obj_unlock(a1, 2u);
  return v14;
}

uint64_t nx_metadata_fragmented_sanity_check(uint64_t a1, unint64_t a2, unsigned int a3)
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

        if (nx_superblock_sanity_check_extent(*(a1 + 376), 0, v15, v16, 0))
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
          v11 = (*(a1 + 384) + 212);
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

uint64_t nx_metadata_fragmented_block_address_lookup(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
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

uint64_t nx_metadata_range_add(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
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

    v7 = btree_iterate_nodes(v19, 0, 0, sub_100033AD0, 0, 0);
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
        v7 = sub_1000339EC(a1, v16, v17, 0);
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

  return sub_1000339EC(a1, a2, v8, a5);
}

uint64_t sub_1000339EC(void *a1, unint64_t a2, unint64_t a3, int a4)
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

uint64_t sub_100033AD0(uint64_t a1)
{
  v2 = *(*a1 + 392);
  v3 = obj_oid(a1);
  v4 = (obj_size_phys(a1) + *(v2[47] + 36) - 1) / *(v2[47] + 36);

  return sub_1000339EC(v2, v3, v4, 0);
}

void nx_metadata_range_optimize(void *result)
{
  result[59] = 0;
  result[60] = 0;
  v1 = result[58];
  if (v1)
  {
    v9 = 0uLL;
    memset(v6, 0, sizeof(v6));
    v7 = 0;
    *v8 = 0uLL;
    v10 = 0;
    bt_iterator_init(v6, v1, 0, 0, &v10, 8, 8, &v9, 0x10u);
    if (!bt_iterator_ended(v6))
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
              if (bt_update(result[58], 0, v8, 8, v8, 0x10u, 0))
              {
                log_err("%s:%d: %s error updating metadata ranges tree: %d\n");
                return;
              }

              if (bt_remove(result[58], 0, &v9, 8u, 0))
              {
                log_err("%s:%d: %s error removing coalesced extent from metadata ranges tree: %d\n");
                return;
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
        if (bt_iterator_ended(v6))
        {
          if (v3 == 1)
          {
            *(result + 59) = *v8;
          }

          return;
        }
      }
    }
  }
}

uint64_t nx_checkpoint_desc_block_address(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 376);
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

uint64_t nx_checkpoint_data_block_address(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v4 = *(a1 + 376);
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

uint64_t nx_allocate_metadata_range(pthread_mutex_t **a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t *, uint64_t *), uint64_t a3, unint64_t *a4, uint64_t *a5, int a6)
{
  v12 = *a5;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v13 = a2(a1, a3, v12, &v26, &v27);
  if (v13)
  {
    return v13;
  }

  if (v27 >= v12)
  {
    v14 = 0;
    *a4 = v26;
    return v14;
  }

  v13 = btree_create(a1, 0x88000000uLL, 2, 10, 0, 8u, 16, extent_list_key_cmp, 0, &v25);
  if (v13)
  {
    return v13;
  }

  v22 = v26;
  v23 = v27;
  v24 = 0;
  v15 = bt_insert(v25, 0, &v24, 8, &v22, 0x10u, 0);
  if (!v15)
  {
    v18 = v27;
    v19 = v12 - v27;
    if (v19 < 1)
    {
LABEL_15:
      v21 = 0x80000000;
      if (a6)
      {
        v21 = 0x8000000000000000;
      }

      *a5 |= v21;
      v14 = 0;
      *a4 = obj_oid(v25) | 0x8000000000000000;
      v16 = v25;
      if (v25)
      {
        goto LABEL_18;
      }

      return v14;
    }

    while (1)
    {
      v15 = a2(a1, a3, v19, &v26, &v27);
      if (v15)
      {
        break;
      }

      v22 = v26;
      v23 = v27;
      v24 = v18;
      v15 = bt_insert(v25, 0, &v24, 8, &v22, 0x10u, 0);
      if (v15)
      {
        break;
      }

      v18 += v27;
      v20 = v19 <= v27;
      v19 -= v27;
      if (v20)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = v15;
  if (v25)
  {
    btree_delete(v25, 0, 0);
    v16 = v25;
LABEL_18:
    obj_release(v16);
  }

  return v14;
}

uint64_t sub_10003417C(uint64_t a1, uint64_t a2, unint64_t a3)
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

uint64_t btree_entry_max_size(char a1, __int16 a2, int a3, int a4)
{
  if (a3 && a4)
  {
    v4 = (a3 + 7) & 0xFFF8;
    if ((a1 & 0x40) != 0)
    {
      v4 = a3;
    }

    v5 = (a4 + 7) & 0xFFF8;
    if ((a1 & 0x40) != 0)
    {
      v5 = a4;
    }

    return (v5 + v4);
  }

  else
  {
    v6 = a2 - 160;
    if (a4)
    {
      v7 = (v6 >> 2) - 72;
      if ((a3 - 1) < v7)
      {
        v7 = a3;
      }

      if ((a1 & 0x40) == 0)
      {
        v7 = (v7 + 7) & 0xFFF8;
      }

      v8 = (a4 + 7) & 0xFFF8;
      if ((a1 & 0x40) != 0)
      {
        v8 = a4;
      }

      return (v7 + v8);
    }
  }

  return v6;
}

uint64_t btree_entry_size_check(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 400);
  v5 = (v4 >> 9) & 0x3FFF;
  if (v5)
  {
    v6 = v5 == a2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return 22;
  }

  v8 = !(v4 >> 23) || (v4 >> 23) == a3;
  if (!v8 && (a3 != 65534 && a3 || (v4 & 4) == 0))
  {
    return 22;
  }

  v9 = (v4 >> 27) & 0x1F000;
  if (!v5 && a2 > (((v9 - 160) >> 2) - 72))
  {
    return 22;
  }

  if (a3 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = btree_entry_max_size(v4, v9, v5, (v4 >> 23));
  v13 = (a2 + 7) & 0xFFFFFFF8;
  if ((v4 & 0x40) != 0)
  {
    v13 = a2;
  }

  v14 = (v11 + 7) & 0xFFFFFFF8;
  if ((v4 & 0x40) != 0)
  {
    v14 = v11;
  }

  if (v13 + v14 <= v12)
  {
    return 0;
  }

  else
  {
    return 34;
  }
}

uint64_t btree_node_sanity_check(void *a1, uint64_t a2)
{
  v4 = a1[7];
  v5 = obj_size_phys(a1);
  v6 = v5;
  v7 = *(v4 + 32);
  if ((v7 & 4) != 0)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  if (a2)
  {
    v9 = *(a2 + 8);
    v10 = (v9 >> 27) & 0x1F000;
    v11 = v5 != v10;
    v12 = *(a2 + 6);
    if (v12 == 61455)
    {
      v13 = v5 != v10;
    }

    else
    {
      v16 = *(v4 + 34);
      if (v5 == v10)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      v18 = v16 == v12;
      if (v16 == v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 | 2;
      }

      if (!v18)
      {
        LOBYTE(v11) = v17;
      }
    }

    if (((v9 >> 7) & 1) != ((v7 >> 3) & 1))
    {
      LOBYTE(v11) = v11 + 1;
      v13 |= 4u;
    }

    v19 = ((v9 >> 8) & 1) == ((v7 >> 4) & 1);
    if (((v9 >> 8) & 1) == ((v7 >> 4) & 1))
    {
      v14 = v11;
    }

    else
    {
      v14 = v11 + 1;
    }

    if (v19)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 | 8;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v20 = v5 % *(*(*(*a1 + 392) + 376) + 36);
  if (v20)
  {
    v21 = v14 + 1;
  }

  else
  {
    v21 = v14;
  }

  if (v20)
  {
    v22 = v15 | 0x10;
  }

  else
  {
    v22 = v15;
  }

  v23 = obj_type(a1);
  v24 = *(v4 + 32);
  if (v23 != 2)
  {
    if ((v24 & 0x10) == 0 && *(v4 + 24) != 3)
    {
      ++v21;
      v22 |= 0x1000u;
    }

    v26 = v22 | 0x2000;
    if (v24)
    {
      v25 = v21 + 1;
    }

    else
    {
      v25 = v21;
    }

    if ((v24 & 1) == 0)
    {
      v26 = v22;
    }

    if ((v24 & 2) == 0)
    {
      goto LABEL_48;
    }

LABEL_46:
    if (*(v4 + 34))
    {
      ++v25;
      v26 |= 0x4000u;
    }

    goto LABEL_48;
  }

  if ((v24 & 0x10) == 0 && *(v4 + 24) != 2)
  {
    ++v21;
    v22 |= 0x20u;
  }

  if ((v24 & 1) == 0)
  {
    v25 = v21 + 1;
    v26 = v22 | 0x40;
    if ((v24 & 2) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v44 = v4 + v6;
  v45 = (v44 - 40);
  v46 = *(v44 - 32);
  v47 = v6 <= 0x10000 && *(v44 - 36) == v6;
  v48 = v22 | 0x80;
  if (v47)
  {
    v49 = v21;
  }

  else
  {
    v49 = v21 + 1;
  }

  if (v47)
  {
    v48 = v22;
  }

  if (v46 > (((v6 - 160) >> 2) - 72))
  {
    ++v49;
    v48 |= 0x100u;
  }

  v50 = *(v44 - 28);
  v51 = v6 - (v46 + v8) - 96;
  v52 = v51 > v50;
  if (v51 > v50)
  {
    v53 = v49;
  }

  else
  {
    v53 = v49 + 1;
  }

  if (v52)
  {
    v26 = v48;
  }

  else
  {
    v26 = v48 | 0x200;
  }

  v54 = vld1_dup_f32(v45);
  v55 = veor_s8(vceqz_s32(vand_s8(v54, 0x8000000100)), vceqz_s32(vand_s8(vdup_n_s32(v24), 0x800000010)));
  v56 = v53 - v55.i8[4];
  if (v55.i8[4])
  {
    v26 |= 0x400u;
  }

  v25 = v56 - v55.i8[0];
  if (v55.i8[0])
  {
    v26 |= 0x800u;
  }

  if ((v24 & 2) != 0)
  {
    goto LABEL_46;
  }

LABEL_48:
  if (v24)
  {
    v27 = -96;
  }

  else
  {
    v27 = -56;
  }

  v28 = v27 + v6;
  if (*(v4 + 40))
  {
    ++v25;
    v26 |= 0x8000u;
  }

  v29 = *(v4 + 42);
  if (v28 < v29)
  {
    ++v25;
    v26 |= 0x10000u;
  }

  if (((v8 - 1) & v29) != 0)
  {
    ++v25;
    v26 |= 0x20000u;
  }

  if ((v7 & 4) != 0)
  {
    v30 = 2;
  }

  else
  {
    v30 = 3;
  }

  if (*(v4 + 36) > v29 >> v30)
  {
    ++v25;
    v26 |= 0x40000u;
  }

  v31 = v28 - v29;
  v32 = *(v4 + 44);
  v33 = v31 >= v32;
  v34 = v31 - v32;
  if (!v33)
  {
    ++v25;
    v26 |= 0x80000u;
  }

  v35 = v34 < *(v4 + 46);
  if (v35)
  {
    v36 = v26 | 0x100000;
  }

  else
  {
    v36 = v26;
  }

  if (!(v25 | v35))
  {
    return 0;
  }

  v37 = *(*a1 + 392);
  if (v37)
  {
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(v37);
    v39 = (*(*(*a1 + 392) + 384) + 212);
    v40 = obj_type(a1);
    v41 = obj_subtype(a1);
    v42 = obj_oid(a1);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s BT node sanity check failed for node type %u subtype %u oid %llu with mask 0x%x!\n", "btree_node_sanity_check", 320, v39, v40, v41, v42, v36);
    v37 = *(*a1 + 392);
  }

  return nx_corruption_detected_int(v37);
}

uint64_t sub_1000348B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *(a3 + 4);
  v4 = v3 & 0x1B;
  *(a1 + 32) = v4;
  *(a1 + 34) = *(a3 + 6);
  v5 = *(a3 + 8);
  if (((v5 >> 27) & 0x1F000) != a2)
  {
    return 22;
  }

  v6 = a2 - 56;
  v7 = (v5 >> 9) & 0x3FFF;
  v8 = (HIBYTE(v5) & 0x7F) + 8;
  v9 = (v5 >> 23);
  if ((v3 & 2) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  LOWORD(v11) = 64;
  if (v7 && v10)
  {
    v4 |= 4u;
    *(a1 + 32) = v4;
    v11 = (4 * (v6 / (v7 + v10 + 4))) & 0xFFFFFFF8;
  }

  v12 = 0;
  *(a1 + 40) = 0;
  *(a1 + 42) = v11;
  *(a1 + 44) = 0;
  if (v4)
  {
    LOWORD(v6) = a2 - 96;
  }

  *(a1 + 46) = v6 - v11;
  *(a1 + 48) = 0xFFFF0000FFFFLL;
  if (v4)
  {
    v12 = 0;
    v13 = (a1 + (a2 - 96));
    v13[14] = *(a3 + 8) & 0x1FF;
    v13[15] = a2;
    v13[16] = (*(a3 + 8) >> 9) & 0x3FFF;
    v13[17] = (*(a3 + 8) >> 23);
  }

  return v12;
}

uint64_t sub_1000349A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1[7] + 32);
  if ((v5 & 8) != 0)
  {
    return 45;
  }

  v8 = a1[1];
  if (v8)
  {
    v9 = obj_modify(a1[1], 0, a5);
    if (v9)
    {
      v10 = v9;
      v11 = a1[1];
      if (v11)
      {
        v12 = (v11 + 4048);
      }

      else
      {
        v12 = (*(*(*a1 + 392) + 384) + 212);
      }

      v15 = obj_oid(v8);
      log_err("%s:%d: %s obj_modify(fs %lld) failed: %d\n", "btree_node_reap", 399, v12, v15, v10);
    }

    if ((*(a1[7] + 32) & 2) != 0)
    {
      goto LABEL_25;
    }

    v14 = obj_oid(v8);
    goto LABEL_13;
  }

  if ((v5 & 2) == 0)
  {
    v14 = 0;
LABEL_13:
    v16 = obj_type_and_flags(a1);
    if (((*(a1[7] + 36) - 1) & 0x8000) == 0)
    {
      v17 = v16 & 0xFFFF0000 | 3;
      v18 = (*(a1[7] + 36) - 1);
      do
      {
        v24 = 0;
        if (btree_node_child_id(a1, v18, &v24))
        {
          obj_oid(a1);
          log_err("%s:%d: %s error getting oid for child %d of 0x%llx: %d\n");
        }

        else
        {
          v19 = *a1;
          if (*(a1[7] + 34) < 2u)
          {
            v23 = obj_size_phys(a1);
            if (obj_delete_and_free_by_oid(v19, v17, v23, v14, v24, a5))
            {
              log_err("%s:%d: %s error deleting child 0x%llx type 0x%x: %d\n");
            }
          }

          else
          {
            v20 = *(v19 + 392);
            v21 = obj_size_phys(a1);
            if (nx_reaper_add_sub_object(v20, v17, v21, v14, v24, a5, 0))
            {
              log_err("%s:%d: %s error adding child 0x%llx type 0x%x to reap list: %d\n");
            }
          }
        }
      }

      while (v18-- > 0);
    }
  }

LABEL_25:
  obj_delete_and_free(a1, a5);
  return 0;
}

uint64_t btree_node_get(uint64_t *a1, unint64_t *a2, unint64_t a3, unsigned int a4, __int16 a5, uint64_t a6, uint64_t *a7)
{
  v14 = a1[50];
  if ((v14 & 0x4000000000000000) != 0)
  {
    v15 = 96;
  }

  else
  {
    v15 = (HIBYTE(v14) & 0x3F) + 32;
  }

  __chkstk_darwin(a1);
  v17 = &v31 - v16;
  bzero(&v31 - v16, v15);
  v32 = 0;
  v31 = btree_node_desc;
  v18 = obj_flags(a1);
  if ((a4 & 0xFFFFFC38) != 0)
  {
    sub_1000A6194();
  }

  v19 = v18 & 0xFC00;
  *v17 = 25987;
  *(v17 + 1) = v15;
  *(v17 + 8) = *(a1 + 25);
  *(v17 + 3) = a1[52];
  v20 = a1[50];
  if ((v20 & 0x80) != 0)
  {
    if ((v20 & 0x4000000000000000) != 0)
    {
      v21 = 64;
    }

    else
    {
      v21 = HIBYTE(v20) & 0x3F;
    }

    memcpy(v17 + 32, a2 + 1, v21);
  }

  *(v17 + 2) = 0;
  *(v17 + 3) = a5;
  DWORD2(v31) = obj_size_phys(a1);
  v22 = obj_type_and_flags(a1) & 0xFFFF0000;
  LODWORD(v31) = v22 | 3;
  DWORD1(v31) = obj_subtype(a1);
  v23 = 3;
  if ((v22 & 0x40000000) == 0)
  {
    v23 = 1;
  }

  if ((a4 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = v19 | v22 | v23;
  if ((a4 & 2) != 0)
  {
    v24 |= 4uLL;
  }

  if (a4 >= 0x200)
  {
    v25 = v24 | a4 & 0x180 | (32 * ((a4 >> 2) & 1)) | &_mh_execute_header;
  }

  else
  {
    v25 = v24 | a4 & 0x180 | (32 * ((a4 >> 2) & 1));
  }

  if ((a4 & 0x40) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = &v31;
  }

  result = obj_get(*a1, v25, *a2, v26, v17, a1[1], a3, a6, &v32);
  v28 = v32;
  if ((a4 & 0x104) != 4 || result)
  {
    if (result)
    {
      v30 = 0;
      goto LABEL_32;
    }

LABEL_31:
    v30 = v32;
LABEL_32:
    *a7 = v30;
    if (result | a4 & 0x180)
    {
      return result;
    }

    if (v28)
    {
      result = 0;
      if ((~v25 & 0x40000001) == 0 || v28[14] == *a2)
      {
        return result;
      }
    }

    else if ((~v25 & 0x40000001) == 0)
    {
      return 0;
    }

    sub_1000A61C0();
  }

  if ((v32[2] & 0x10) == 0)
  {
    goto LABEL_31;
  }

  if (a4)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  btree_node_release(v32, v29 & ((a4 << 30) >> 31));
  *a7 = 0;
  return 2;
}

void btree_node_release(void *a1, char a2)
{
  v3 = a2 & 3;
  if (v3)
  {
    obj_unlock(a1, v3);
  }

  obj_release(a1);
}

uint64_t btree_node_toc_required_capacity(uint64_t a1, int a2)
{
  v2 = *(a1 + 56);
  v3 = v2[16];
  if ((v3 & 4) != 0)
  {
    v5 = *(a1 + 400);
    if ((v5 & 4) != 0)
    {
      if ((v3 & 2) != 0)
      {
        v9 = v5 >> 23;
      }

      else
      {
        LOWORD(v9) = (HIBYTE(v5) & 0x7F) + 8;
      }

      v10 = (((v5 >> 27) & 0x1F000) - 56) / (((v5 >> 9) & 0x3FFF) + v9 + 4);
      v11 = v2[18] + a2;
      if ((v10 & 0xFFFE) >= v11)
      {
        LOWORD(v4) = v10 & 0xFFFE;
      }

      else
      {
        LOWORD(v4) = (v11 + 7) & 0xFFF8;
      }
    }

    else
    {
      v6 = v2[21];
      v7 = (v3 & 4) == 0;
      v8 = 2;
      if (v7)
      {
        v8 = 3;
      }

      return (v6 >> v8);
    }
  }

  else
  {
    v4 = a2 + *(v2 + 9) + 7;
    if (v4 >= 8)
    {
      LOWORD(v4) = v4 & 0xFFF8;
    }

    else
    {
      LOWORD(v4) = 8;
    }
  }

  return v4;
}

uint64_t btree_node_val_len(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 56) + 32);
  v3 = *(a1 + 376);
  if ((v2 & 4) != 0)
  {
    v4 = (v3 + 4 * a2 + 2);
    v5 = *(a1 + 400) >> 23;
  }

  else
  {
    v5 = v3 + 8 * a2;
    v4 = (v5 + 4);
    LOWORD(v5) = *(v5 + 6);
  }

  v6 = *v4;
  if (v6 == 0xFFFF)
  {
    LOWORD(v5) = 0;
  }

  else if (v6 == 65534)
  {
    LOWORD(v5) = -2;
  }

  else if ((v2 & 2) == 0)
  {
    LOWORD(v5) = (*(a1 + 407) & 0x7F) + 8;
  }

  return v5;
}

uint64_t btree_node_key_ptr(uint64_t a1, unsigned int a2, void *a3, _WORD *a4)
{
  if (!a1)
  {
    return 22;
  }

  v5 = *(a1 + 56);
  if (*(v5 + 36) <= a2)
  {
    return 22;
  }

  v8 = *(v5 + 32);
  v9 = *(a1 + 376);
  v10 = (v9 + 4 * a2);
  if ((v8 & 4) == 0)
  {
    v10 = (v9 + 8 * a2);
  }

  v11 = *v10;
  if ((v8 & 4) != 0)
  {
    v12 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v12 = *(v9 + 8 * a2 + 2);
  }

  result = sub_10003511C(a1, *v10, v12);
  if (!result)
  {
    *a3 = *(a1 + 384) + v11;
    result = 0;
    if (a4)
    {
      *a4 = v12;
    }
  }

  return result;
}

uint64_t sub_10003511C(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(*(a1 + 56) + 44);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (v5 == 0 || !v4)
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }

  v6 = (a3 + 7) & 0x1FFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v6 = a3;
  }

  if (v6 <= v5)
  {
    return 0;
  }

  else
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }
}

uint64_t btree_node_val_ptr(void *a1, signed int a2, void *a3, __int16 *a4)
{
  v4 = a1[7];
  if (*(v4 + 36) <= a2)
  {
    return 22;
  }

  v8 = a1[47];
  v9 = v8 + 4 * a2 + 2;
  v10 = v8 + 8 * a2 + 4;
  if ((*(v4 + 32) & 4) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *v11;
  v13 = btree_node_val_len(a1, a2);
  v14 = v13;
  result = sub_100035248(a1, v12, v13);
  if (!result)
  {
    if (v12 >= 0xFFFE)
    {
      *a3 = 0;
      if (!a4)
      {
        return 0;
      }

      if (v12 == 0xFFFF)
      {
        v14 = 0;
      }

      else
      {
        v14 = -2;
      }
    }

    else
    {
      *a3 = a1[49] - v12;
      if (!a4)
      {
        return 0;
      }
    }

    result = 0;
    *a4 = v14;
  }

  return result;
}

uint64_t sub_100035248(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 < 0xFFFE)
  {
    if (!a3 || a3 == 65534)
    {
      goto LABEL_16;
    }

    v6 = obj_size_phys(a1);
    v7 = *(a1 + 56);
    v8 = (*(v7 + 32) & 1) != 0 ? -96 : -56;
    if (a2 > (v6 - *(v7 + 42) + v8 - (*(v7 + 46) + *(v7 + 44))))
    {
      goto LABEL_16;
    }

    v9 = (a3 + 7) & 0x1FFF8;
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v9 = a3;
    }

    if (v9 > a2)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if ((*(a1 + 400) & 4) != 0 && (!a3 || a3 == 65534))
  {
    return 0;
  }

LABEL_16:
  v10 = *(*a1 + 392);

  return nx_corruption_detected_int(v10);
}

uint64_t btree_node_child_val(uint64_t a1, signed int a2, void *a3)
{
  if ((*(*(a1 + 56) + 32) & 2) != 0)
  {
    return 22;
  }

  v9 = 0;
  v8 = 0;
  result = btree_node_val_ptr(a1, a2, &v9, &v8);
  if (result)
  {
    return result;
  }

  if ((*(a1 + 407) & 0x7F) + 8 == v8)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = nx_corruption_detected_int(*(*a1 + 392));
    if (!a3)
    {
      return result;
    }
  }

  if (!result)
  {
    v6 = v9;
    v7 = *v9;
    *a3 = *v9;
    if ((*(*(a1 + 56) + 32) & 8) != 0)
    {
      *a3 = *(a1 + 408) + v7;
      memcpy(a3 + 1, v6 + 1, v8 - 8);
    }

    return 0;
  }

  return result;
}

uint64_t btree_node_child_id(uint64_t a1, signed int a2, void *a3)
{
  __chkstk_darwin(a1);
  v7 = (&v10 - v6);
  bzero(&v10 - v6, v8);
  result = btree_node_child_val(a1, a2, v7);
  if (!result)
  {
    *a3 = *v7;
  }

  return result;
}

uint64_t bt_insert(uint64_t *a1, unint64_t a2, unint64_t *a3, int a4, void *a5, unsigned int a6, unint64_t a7)
{
  LODWORD(v10) = a4;
  __chkstk_darwin(a1);
  v15 = &v193[-v14];
  bzero(&v193[-v14], v16);
  v224 = 0u;
  v225 = 0u;
  v223 = 0u;
  v221 = 0;
  v222 = 0;
  v220 = 0;
  v219 = 0;
  v215 = 0;
  if (!obj_refcount(a1))
  {
    sub_1000A62C8();
  }

  if (!a1[52])
  {
    return 22;
  }

  v217 = v10;
  if (a6 == 65534)
  {
    v17 = 0;
  }

  else
  {
    v17 = a6;
  }

  v216 = v17;
  v18 = btree_entry_size_check(a1, v10, a6);
  if (v18)
  {
    v19 = v18;
    v20 = a1[1];
    if (v20)
    {
      v21 = (v20 + 4048);
      v22 = a1[50];
      if ((v22 & 0x40) != 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v22 & 0x40) != 0)
      {
        v24 = v17;
      }

      else
      {
        v24 = (v17 + 7) & 0x1FFF8;
      }

      v25 = (v22 >> 27) & 0x1F000;
      v26 = (v22 >> 23);
      v27 = (v22 >> 9) & 0x3FFF;
      if (v27)
      {
        v28 = (v22 >> 9) & 0x3FFF;
      }

      else
      {
        v28 = (((v25 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    else
    {
      v21 = (*(*(*a1 + 392) + 384) + 212);
      v22 = a1[50];
      if ((v22 & 0x40) != 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v22 & 0x40) != 0)
      {
        v24 = v17;
      }

      else
      {
        v24 = (v17 + 7) & 0x1FFF8;
      }

      v25 = (v22 >> 27) & 0x1F000;
      v26 = (v22 >> 23);
      v27 = (v22 >> 9) & 0x3FFF;
      if (v27)
      {
        v28 = (v22 >> 9) & 0x3FFF;
      }

      else
      {
        v28 = (((v25 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    v30 = btree_entry_max_size(v22, v25, v27, v26);
    log_err("%s:%d: %s request to insert entry %d (%d) %d (%d) = (%d), max size is %d key %d, error %d\n", "bt_insert", 3392, v21, v10, v23, v17, v24, v23 + v24, v30, v28, v19);
    return v19;
  }

  obj_lock(a1, 2u);
  v29 = obj_modify(a1, (*(a1 + 100) >> 3) & 2, a7);
  if (v29)
  {
    v19 = v29;
    obj_unlock(a1, 2u);
    return v19;
  }

  v218 = 0;
  *&v223 = a1;
  obj_retain(a1);
  v32 = a1[49];
  v33 = *(v32 + 16);
  v34 = *(v32 + 20) >= v17;
  if (v33 < v10)
  {
    v35 = v10;
  }

  else
  {
    v35 = v33;
  }

  if (v33 < v10)
  {
    v34 = 0;
  }

  v211 = v34;
  v36 = a1[54];
  v37 = a1;
  v210 = a2;
  v207 = a6;
  if (v36)
  {
    v38 = a1[53];
    v37 = a1;
    if (v38)
    {
      v39 = a1[1];
      if (!v39)
      {
        v39 = *(*a1 + 392);
      }

      v40 = v38(v39, a3, v10);
      v37 = a1;
      if (v40)
      {
        v224 = v223;
        *&v223 = 0;
        v41 = a1[54];
        *v15 = v41;
        if (v41 != obj_oid(a1) && !btree_node_get(a1, v15, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 61455, a7, &v223))
        {
          v42 = v35;
          v43 = v223;
          if ((*(*(v223 + 56) + 32) & 2) != 0 && a1[54] == *(v223 + 112))
          {
            v44 = sub_100037408(v223, a3, v10, &v223 + 4, (&v223 | 0xA));
            v43 = v223;
            if (!v44)
            {
              if (WORD4(v223))
              {
                if (!(BYTE10(v223) ? (sub_1000375C8)(v223) : (sub_100037E98)(v223)))
                {
                  v48 = 0;
                  v19 = 0;
                  v208 = 0;
                  v157 = 0;
                  goto LABEL_376;
                }
              }
            }
          }

          obj_unlock(v43, 2u);
          obj_release(v43);
          v35 = v42;
        }

        v223 = v224;
        *&v224 = 0;
        v37 = v223;
      }
    }
  }

  v46 = *(v37[7] + 32);
  v47 = sub_100037408(v37, a3, v10, &v223 + 4, (&v223 | 0xA));
  v19 = v47;
  if ((v46 & 2) != 0)
  {
    if (v47)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v47)
    {
      goto LABEL_59;
    }

    if ((BYTE10(v223) & 1) == 0 && WORD4(v223))
    {
      --WORD4(v223);
    }
  }

  v55 = *(v223 + 56);
  v56 = *(v55 + 36);
  v57 = *(v55 + 32);
  v213 = (__PAIR64__(v56, v57 & 2) - 1) >> 32 == WORD4(v223);
  if (WORD4(v223) || (BYTE10(v223) & 1) != 0 || (v57 & 2) != 0)
  {
    v58 = 0;
    v59 = 0;
    v60 = v207;
    if ((v57 & 2) == 0)
    {
      goto LABEL_105;
    }

    v205 = 0;
    v48 = 0;
    v212 = 0;
LABEL_91:
    v61 = v225;
    if (v225)
    {
      if ((v225 != a1 || v211) && v225 != v48 && v225 != v205)
      {
        obj_unlock(v225, 2u);
        obj_release(v61);
      }

      *&v225 = 0;
    }

    if (v213)
    {
      v62 = a1[54];
      v63 = *(v223 + 112);
      if (v62)
      {
        if (v62 != v63)
        {
          sub_1000A6244();
        }
      }

      else if (v63 && (a1[50] & 0x10) == 0)
      {
        a1[54] = v63;
      }
    }

    v208 = v58;
    v10 = v217;
    if (BYTE10(v223) == 1)
    {
      v64 = sub_1000375C8(v223, WORD4(v223), a3, v217, a5, v60, a7);
    }

    else
    {
      v64 = sub_100037E98(v223, WORD4(v223), a3, v217, a5, v60, a7);
    }

    v19 = v64;
    if (v64 != 28)
    {
      goto LABEL_357;
    }

    v150 = sub_100038618(a1, v224, WORD4(v224), v223, WORD4(v223), a3, v10, 1u, &v217, &v216, 0, a2, a7, &v222);
    if (v150)
    {
      v19 = v150;
      v151 = a1[1];
      if (v151)
      {
        v152 = (v151 + 4048);
      }

      else
      {
        v152 = (*(*(*a1 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3878, v152, v150);
      goto LABEL_357;
    }

    v153 = v222;
    if (!v222)
    {
      v153 = v223;
      goto LABEL_352;
    }

    if (v224)
    {
      if (v212)
      {
        sub_1000A6270();
      }

      ++WORD4(v224);
      v154 = v223;
      if (v223 && (v223 != a1 || v211) && v223 != v48 && v223 != v205)
      {
        obj_unlock(v223, 2u);
        obj_release(v154);
      }

      v222 = 0;
      *&v223 = v153;
LABEL_352:
      v19 = sub_10003A7E0(v153, a3, v10, a5, v60, a7, &v223 + 4, (&v223 | 0xA));
      if (!v19)
      {
        goto LABEL_357;
      }

      goto LABEL_353;
    }

    v163 = v223;
    *&v224 = v223;
    if (*(v222[7] + 36))
    {
      v164 = btree_node_key_ptr(v222, 0, &v220, &v218);
      if (v164)
      {
        v19 = v164;
        v222 = 0;
        *&v223 = v153;
        goto LABEL_353;
      }

      v163 = v224;
      v187 = v220;
      v188 = v218;
    }

    else
    {
      v187 = a3;
      v188 = v10;
    }

    v19 = sub_1000382F8(v163, v187, v188, &v224 + 4, &v224 + 10);
    v222 = 0;
    *&v223 = v153;
    v60 = v207;
    if (!v19)
    {
      goto LABEL_352;
    }

LABEL_353:
    v155 = a1[1];
    if (v155)
    {
      v156 = (v155 + 4048);
    }

    else
    {
      v156 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3915, v156, v19);
LABEL_357:
    if (v19)
    {
      v157 = v212;
    }

    else
    {
      v157 = v212;
      if (!WORD4(v223) && v224)
      {
        v158 = btree_node_key_ptr(v224, WORD4(v224), &v220, &v218);
        if (v158)
        {
          v19 = v158;
        }

        else
        {
          v159 = a1[1];
          if (!v159)
          {
            v159 = *(*a1 + 392);
          }

          v19 = (a1[52])(v159, a3, v10, v220, v218, &v219);
          if (!v19)
          {
            if (v219)
            {
              v160 = sub_1000375C8(v224, WORD4(v224), a3, v10, 0, 0, a7);
              v19 = v160;
              if (v160)
              {
                v161 = a1[1];
                if (v161)
                {
                  v162 = (v161 + 4048);
                }

                else
                {
                  v162 = (*(*(*a1 + 392) + 384) + 212);
                }

                log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3929, v162, v160);
              }
            }
          }
        }
      }
    }

LABEL_376:
    v165 = v224;
    if (v224)
    {
      if ((v224 != a1 || v211) && v224 != v48 && v224 != v221)
      {
        obj_unlock(v224, 2u);
        obj_release(v165);
      }

      *&v224 = 0;
    }

    v166 = v223;
    if (v223)
    {
      if ((v223 != a1 || v211) && v223 != v48 && v223 != v221)
      {
        obj_unlock(v223, 2u);
        obj_release(v166);
      }

      *&v223 = 0;
    }

    if (v19)
    {
      goto LABEL_60;
    }

    v167 = a1[49];
    v168 = *(v167 + 16);
    v169 = v168 >= v10;
    v170 = v168 < v10;
    if (!v169)
    {
      *(v167 + 16) = v10;
    }

    v171 = v208;
    if (*(v167 + 20) < v216)
    {
      *(v167 + 20) = v216;
      v170 = 1;
    }

    if (BYTE10(v223))
    {
      if ((((a1[50] & 0x80) == 0) & ~v170) != 0)
      {
        goto LABEL_398;
      }
    }

    else
    {
      atomic_fetch_add_explicit((v167 + 24), 1uLL, memory_order_relaxed);
    }

    obj_dirty(a1, a7, 0);
LABEL_398:
    if ((v157 & (WORD4(v223) == 0)) != 1)
    {
      v19 = 0;
      goto LABEL_60;
    }

    if (v48)
    {
      v172 = sub_1000375C8(v48, v171, a3, v10, 0, 0, a7);
      v19 = v172;
      if (v172)
      {
        v173 = a1[1];
        if (v173)
        {
          v174 = (v173 + 4048);
        }

        else
        {
          v174 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3969, v174, v172);
      }

      if (v48 != v225 && v48 != v224 && (v48 != a1 || v211))
      {
        obj_unlock(v48, 2u);
        obj_release(v48);
      }
    }

    else
    {
      v19 = 0;
    }

    v175 = v221;
    v176 = v221 + 7;
    if (*(v221[7] + 34) < 2u)
    {
LABEL_447:
      if (v175 != v225 && v175 != v224 && (v175 != a1 || v211))
      {
        obj_unlock(v175, 2u);
        obj_release(v175);
      }

      v48 = 0;
      v221 = 0;
      goto LABEL_60;
    }

    v177 = v217;
    while (1)
    {
      WORD2(v214) = 0;
      LOBYTE(v214) = 0;
      v178 = sub_1000382F8(v175, a3, v177, &v214 + 2, &v214);
      if (v178)
      {
        v19 = v178;
        goto LABEL_59;
      }

      v179 = v214;
      v180 = WORD2(v214);
      if ((v214 & 1) != 0 || WORD2(v214))
      {
        v185 = a1[1];
        if (v185)
        {
          v186 = (v185 + 4048);
        }

        else
        {
          v186 = (*(*(*a1 + 392) + 384) + 212);
        }

        v191 = obj_oid(v175);
        v192 = obj_subtype(v175);
        log_err("%s:%d: %s minkey update traversal unexpectedly found the key (%d) or a non-zero index (%d); oid %llu subtype 0x%x level %d\n", "bt_insert", 3987, v186, v179, v180, v191, v192, *(*v176 + 34));
LABEL_446:
        v19 = 0;
        goto LABEL_447;
      }

      v181 = sub_1000375C8(v175, 0, a3, v177, 0, 0, a7);
      v19 = v181;
      if (v181)
      {
        v182 = a1[1];
        if (v182)
        {
          v183 = (v182 + 4048);
        }

        else
        {
          v183 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3992, v183, v181);
      }

      v184 = *(*v176 + 34);
      if (v184 == 2)
      {
        goto LABEL_447;
      }

      v19 = btree_node_child_val(v175, 0, v15);
      v221 = 0;
      if (!v19)
      {
        v19 = btree_node_get(a1, v15, v210, 3u, v184 - 1, a7, &v221);
      }

      if (v175 != v225 && v175 != v224 && (v175 != a1 || v211))
      {
        obj_unlock(v175, 2u);
        obj_release(v175);
      }

      v175 = v221;
      if (v19)
      {
        break;
      }

      v176 = v221 + 7;
      if (*(v221[7] + 34) <= 1u)
      {
        goto LABEL_446;
      }
    }

    if (v221)
    {
      goto LABEL_447;
    }

LABEL_59:
    v48 = 0;
    goto LABEL_60;
  }

  v59 = v223;
  v221 = v223;
  v58 = 1;
LABEL_105:
  v195 = v35;
  v48 = 0;
  v202 = v59;
  v201 = v59;
  v203 = v59;
  v204 = v59;
  v205 = v59;
  v209 = v59;
  v206 = v59;
  v212 = v58;
  v58 = 0;
  v199 = a5;
  while (2)
  {
    v208 = v58;
    v65 = v225;
    if (v225 && (v225 != a1 || v211))
    {
      v66 = v225 == v48 || v225 == v206;
      if (!v66)
      {
        obj_unlock(v225, 2u);
        obj_release(v65);
      }
    }

    v67 = v224;
    v224 = v223;
    v225 = v67;
    *&v223 = 0;
    v68 = btree_node_child_val(v224, WORD4(v224), v15);
    if (v68)
    {
LABEL_331:
      v19 = v68;
      goto LABEL_60;
    }

    v69 = *(*(v224 + 56) + 34) - 1;
    v70 = a1;
    v71 = v15;
    for (i = a2; ; i = v87)
    {
      v68 = btree_node_get(v70, v71, i, 3u, v69, a7, &v223);
      if (v68)
      {
        goto LABEL_331;
      }

      v73 = v223;
      if ((a1[50] & 0x10) != 0 && *(v223 + 112) != *v15)
      {
        sub_10003833C(v224, WORD4(v224), (v223 + 112), a7);
        v73 = v223;
      }

      v74 = *(*(v73 + 56) + 32);
      v75 = sub_100037408(v73, a3, v217, &v223 + 4, (&v223 | 0xA));
      v19 = v75;
      if ((v74 & 2) != 0)
      {
        if (v75)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v75)
        {
          goto LABEL_60;
        }

        if ((BYTE10(v223) & 1) == 0 && WORD4(v223))
        {
          --WORD4(v223);
        }
      }

      v76 = a7;
      v77 = a3;
      v78 = v48;
      v79 = v223;
      if (!v213)
      {
        v213 = 0;
        v81 = *(v223 + 56);
        LOWORD(v82) = *(v81 + 32);
        v80 = WORD4(v223);
        if ((v82 & 2) == 0)
        {
          goto LABEL_154;
        }

        goto LABEL_134;
      }

      v80 = WORD4(v223);
      v81 = *(v223 + 56);
      v82 = *(v81 + 32);
      if (((v82 >> 1) & 1) + *(v81 + 36) - 1 == WORD4(v223))
      {
        break;
      }

      v213 = 0;
      if ((v82 & 2) == 0)
      {
        goto LABEL_154;
      }

LABEL_134:
      if (*(v81 + 36) != v80)
      {
        goto LABEL_154;
      }

      v83 = WORD4(v224);
      v84 = v224;
      if (*(*(v224 + 56) + 36) - 1 <= WORD4(v224) || sub_100038410(v79, 1u, &v217, &v216, 0, 0, 0))
      {
        goto LABEL_154;
      }

      v68 = btree_node_child_val(v84, (v83 + 1), v15);
      v48 = v78;
      if (v68)
      {
        goto LABEL_331;
      }

      v85 = v223;
      obj_unlock(v223, 2u);
      obj_release(v85);
      *&v223 = 0;
      v86 = WORD4(v224)++;
      if ((v212 & (v86 == 0)) == 1)
      {
        v87 = v210;
        a3 = v77;
        if (v48)
        {
          a7 = v76;
          v88 = v209;
          if (v48 != v225 && v48 != v224 && (v48 != a1 || v211))
          {
            obj_unlock(v48, 2u);
            obj_release(v48);
            v88 = v221;
            v202 = v221;
            v201 = v221;
            v203 = v221;
            v204 = v221;
            v205 = v221;
          }
        }

        else
        {
          a7 = v76;
          v88 = v209;
        }

        if (v88)
        {
          if (v88 != v225 && v88 != v224 && (v88 != a1 || v211))
          {
            obj_unlock(v88, 2u);
            obj_release(v88);
          }

          v205 = 0;
          v202 = 0;
          v201 = 0;
          v203 = 0;
          v204 = 0;
          v209 = 0;
          v206 = 0;
          v48 = 0;
          v208 = 0;
          v212 = 0;
          v221 = 0;
        }

        else
        {
          v209 = 0;
          v206 = 0;
          v48 = 0;
          v208 = 0;
          v212 = 0;
        }
      }

      else
      {
        v87 = v210;
        a3 = v77;
        a7 = v76;
      }

      v69 = *(*(v224 + 56) + 34) - 1;
      v70 = a1;
      v71 = v15;
    }

    if (a1[54] == *(v224 + 112))
    {
      a1[54] = *(v223 + 112);
    }

    v213 = 1;
    if ((v82 & 2) != 0)
    {
      goto LABEL_134;
    }

LABEL_154:
    v89 = v80 != 0;
    v90 = v212;
    if (((v212 | v89) & 1) == 0)
    {
      v90 = 0;
      a2 = v210;
      if ((v82 & 2) == 0)
      {
        v48 = v78;
        a3 = v77;
        a7 = v76;
        a5 = v199;
        if ((BYTE10(v223) & 1) == 0)
        {
          v48 = v224;
          v90 = 1;
          v205 = v79;
          v202 = v79;
          v201 = v79;
          v208 = WORD4(v224);
          v203 = v79;
          v221 = v79;
          v204 = v79;
          v209 = v79;
          v206 = v79;
        }

        goto LABEL_175;
      }

      goto LABEL_164;
    }

    a2 = v210;
    if ((v212 & v89) != 1)
    {
LABEL_164:
      v48 = v78;
      a3 = v77;
      a7 = v76;
      a5 = v199;
      goto LABEL_175;
    }

    if (!v78)
    {
      a3 = v77;
      a7 = v76;
      a5 = v199;
      v48 = v204;
      goto LABEL_168;
    }

    v91 = v78;
    v92 = v78 != a1;
    v66 = v78 == v225;
    a3 = v77;
    v48 = v204;
    if (v66)
    {
      a7 = v76;
      goto LABEL_167;
    }

    a7 = v76;
    if (v91 == v224)
    {
LABEL_167:
      a5 = v199;
      goto LABEL_168;
    }

    a5 = v199;
    if (v92 || v211)
    {
      obj_unlock(v91, 2u);
      obj_release(v91);
      v48 = v221;
      v202 = v221;
      v201 = v221;
      v203 = v221;
      v205 = v221;
    }

LABEL_168:
    if (v48)
    {
      if (v48 != v225 && v48 != v224 && (v48 != a1 || v211))
      {
        obj_unlock(v48, 2u);
        obj_release(v48);
      }

      v205 = 0;
      v202 = 0;
      v201 = 0;
      v203 = 0;
      v204 = 0;
      v209 = 0;
      v206 = 0;
      v48 = 0;
      v208 = 0;
      v90 = 0;
      v221 = 0;
    }

    else
    {
      v204 = 0;
      v209 = 0;
      v206 = 0;
      v208 = 0;
      v90 = 0;
    }

LABEL_175:
    v93 = sub_10003859C(v223);
    v212 = v90;
    if (WORD4(v223) || (BYTE10(v223) & 1) != 0)
    {
      goto LABEL_182;
    }

    v68 = btree_node_key_ptr(v224, WORD4(v224), &v220, &v218);
    if (v68)
    {
      goto LABEL_331;
    }

    v94 = a1[1];
    if (!v94)
    {
      v94 = *(*a1 + 392);
    }

    v95 = a1[52];
    LODWORD(v200) = v217;
    v68 = v95(v94, a3);
    if (v68)
    {
      goto LABEL_331;
    }

    if ((v219 & 0x80000000) == 0)
    {
LABEL_182:
      v96 = 0;
      v97 = 0;
    }

    else
    {
      v109 = *(v223 + 400);
      if ((v109 & 0x40) != 0)
      {
        v110 = v200;
      }

      else
      {
        v110 = (v200 + 7) & 0x1FFF8;
      }

      if ((v109 & 0x40) != 0)
      {
        v111 = v218;
      }

      else
      {
        v111 = (v218 + 7) & 0x1FFF8;
      }

      if (v110 <= v111)
      {
        v96 = 0;
      }

      else
      {
        if ((v109 & 0x40) != 0)
        {
          v112 = v200;
        }

        else
        {
          v112 = (v200 + 7) & 0x1FFF8;
        }

        if ((*(v223 + 400) & 0x40) != 0)
        {
          v113 = v218;
        }

        else
        {
          v113 = (v218 + 7) & 0x1FFF8;
        }

        v96 = v112 - v113;
      }

      v97 = 1;
    }

    v200 = v48;
    v98 = *(*(v224 + 56) + 34);
    if (v98 < 2)
    {
      WORD2(v215) = v93;
      v100 = *(v224 + 400);
      v101 = (HIBYTE(v100) & 0x7F) + 8;
      LOWORD(v215) = v101;
      if ((v97 & 1) == 0)
      {
        v99 = v217;
        goto LABEL_191;
      }

      goto LABEL_189;
    }

    v99 = v217;
    if (v93 > v217)
    {
      v99 = v93;
    }

    WORD2(v215) = v99;
    v100 = *(v224 + 400);
    v101 = (HIBYTE(v100) & 0x7F) + 8;
    LOWORD(v215) = v101;
    if (v97)
    {
LABEL_189:
      v102 = 1;
      goto LABEL_192;
    }

LABEL_191:
    HIWORD(v215) = v99;
    WORD1(v215) = v101;
    v102 = 2;
LABEL_192:
    LODWORD(v198) = v96;
    v197 = v224;
    v196 = v96;
    if (sub_100038410(v224, v102, &v215 + 2, &v215, v96, 0, 0))
    {
      v48 = v200;
      v60 = v207;
      v58 = v208;
      goto LABEL_194;
    }

    v194 = v102;
    if (v98 >= 2)
    {
      v214 = ((HIBYTE(v100) & 0x7F) + 8);
      if (v97)
      {
        v103 = 1;
      }

      else
      {
        HIWORD(v214) = v195;
        WORD1(v214) = (HIBYTE(v100) & 0x7F) + 8;
        v103 = 2;
      }

      v48 = v200;
      v60 = v207;
      v107 = sub_100038410(v223, v103, &v214 + 2, &v214, v196, 0, 0);
      v58 = v208;
      if (!v107)
      {
        goto LABEL_254;
      }

LABEL_194:
      if ((*(*(v223 + 56) + 32) & 2) == 0)
      {
        continue;
      }

      goto LABEL_91;
    }

    break;
  }

  v104 = v223;
  if (BYTE10(v223) != 1)
  {
    v108 = sub_100038410(v223, 1u, &v217, &v216, 0, 0, 0);
    v48 = v200;
    v60 = v207;
    v58 = v208;
    if (!v108)
    {
      goto LABEL_254;
    }

LABEL_252:
    if (v198 && !sub_100038410(v197, 0, 0, 0, v196, 0, 0))
    {
      goto LABEL_254;
    }

    goto LABEL_194;
  }

  v58 = v208;
  if ((*(*(v223 + 56) + 32) & 4) != 0)
  {
    v106 = *(v223 + 400);
    v105 = (v106 >> 9) & 0x3FFF;
  }

  else
  {
    v105 = *(*(v223 + 376) + 8 * WORD4(v223) + 2);
    v106 = *(v223 + 400);
  }

  v218 = v105;
  v114 = btree_node_val_len(v223, WORD4(v223));
  v115 = 0;
  if (v114 == 65534)
  {
    v116 = 0;
  }

  else
  {
    v116 = v114;
  }

  if ((v106 & 0x40) != 0)
  {
    v117 = v217;
  }

  else
  {
    v117 = (v217 + 7) & 0x1FFF8;
  }

  if ((v106 & 0x40) != 0)
  {
    v118 = v105;
  }

  else
  {
    v118 = (v105 + 7) & 0x1FFF8;
  }

  if (v117 > v118)
  {
    if ((v106 & 0x40) != 0)
    {
      v119 = v217;
    }

    else
    {
      v119 = (v217 + 7) & 0xFFF8;
    }

    if ((v106 & 0x40) != 0)
    {
      v120 = v105;
    }

    else
    {
      v120 = (v105 + 7) & 0xFFF8;
    }

    v115 = v119 - v120;
  }

  v121 = v216;
  if ((v106 & 0x40) != 0)
  {
    v122 = v216;
  }

  else
  {
    v122 = (v216 + 7) & 0x1FFF8;
  }

  if ((v106 & 0x40) != 0)
  {
    v123 = v116;
  }

  else
  {
    v123 = (v116 + 7) & 0x1FFF8;
  }

  if (v122 <= v123)
  {
    v124 = 0;
  }

  else
  {
    if ((v106 & 0x40) == 0)
    {
      v121 = (v216 + 7) & 0xFFF8;
      LOWORD(v116) = (v116 + 7) & 0xFFF8;
    }

    v124 = v121 - v116;
  }

  v48 = v200;
  v60 = v207;
  if (!(v115 | v124) || sub_100038410(v104, 0, 0, 0, v115, v124, 0))
  {
    goto LABEL_252;
  }

LABEL_254:
  v125 = v217;
  v126 = sub_100038618(a1, v225, WORD4(v225), v197, (WORD4(v224) + ((BYTE10(v224) & 1) == 0)), a3, v217, v194, &v215 + 2, &v215, v198, a2, a7, &v222);
  if (v126)
  {
    v19 = v126;
    v189 = a1[1];
    if (v189)
    {
      v190 = (v189 + 4048);
    }

    else
    {
      v190 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3679, v190, v126);
    goto LABEL_60;
  }

  v127 = v222;
  v58 = v208;
  if (!v222)
  {
    goto LABEL_194;
  }

  v128 = v224;
  v200 = v224;
  if (v225)
  {
    if ((v212 & (v203 != v223)) == 1)
    {
      sub_1000A61EC();
    }

    ++WORD4(v225);
    if (v224)
    {
      if (v224 == a1 && !v211 || v48 == v224)
      {
        v129 = v203;
      }

      else
      {
        v129 = v203;
        if (v224 != v203)
        {
          v130 = v224;
          v197 = v222;
          obj_unlock(v224, 2u);
          obj_release(v130);
          v127 = v197;
          goto LABEL_263;
        }
      }

      v204 = v129;
      v209 = v129;
      v206 = v129;
      v198 = v224;
    }

    else
    {
LABEL_263:
      v198 = 0;
      v204 = v203;
      v209 = v203;
      v206 = v203;
    }

LABEL_274:
    if (v48 == v225 && v48 != 0)
    {
      v58 = WORD4(v225);
    }

    v208 = v58;
    *&v224 = v127;
    v222 = 0;
    v135 = v125;
    v68 = sub_1000382F8(v127, a3, v125, &v224 + 4, &v224 + 10);
    if (v68)
    {
      goto LABEL_331;
    }

    v136 = v223;
    obj_unlock(v223, 2u);
    obj_release(v136);
    *&v223 = 0;
    v68 = btree_node_child_val(v224, WORD4(v224), v15);
    if (v68)
    {
      goto LABEL_331;
    }

    v68 = btree_node_get(a1, v15, a2, 3u, *(*(v224 + 56) + 34) - 1, a7, &v223);
    if (v68)
    {
      goto LABEL_331;
    }

    v137 = v223;
    if ((a1[50] & 0x10) != 0 && *(v223 + 112) != *v15)
    {
      sub_10003833C(v224, WORD4(v224), (v223 + 112), a7);
      v137 = v223;
    }

    if ((*(*(v137 + 56) + 32) & 2) != 0)
    {
      v138 = sub_100037408(v137, a3, v135, &v223 + 4, (&v223 | 0xA));
    }

    else
    {
      v138 = sub_1000382F8(v137, a3, v135, &v223 + 4, (&v223 | 0xA));
    }

    v19 = v138;
    if (v138)
    {
      goto LABEL_60;
    }

    if (v48 == v200)
    {
      v141 = WORD4(v224);
      v58 = v208;
      v142 = v202;
      if (v48 == a1 && !WORD4(v224))
      {
        v202 = v224;
        v201 = v224;
        v221 = v224;
        v203 = v224;
        v204 = v224;
        v205 = v224;
        v209 = v224;
        v206 = v224;
        v60 = v207;
        goto LABEL_194;
      }

      v60 = v207;
      if (WORD4(v224))
      {
        v143 = v223;
        v140 = v198;
        if (v202 != v223)
        {
          sub_1000A6218();
        }

        v144 = v223;
        v48 = v224;
        v221 = v223;
        v145 = v223;
        v204 = v223;
        v139 = v223;
        v206 = v202;
      }

      else
      {
        v48 = v225;
        v143 = v224;
        v142 = v224;
        v144 = v224;
        v141 = WORD4(v225);
        v221 = v224;
        v145 = v224;
        v204 = v224;
        v139 = v224;
        v206 = v224;
        v140 = v198;
      }
    }

    else
    {
      if ((v212 & 1) == 0)
      {
        v141 = v208;
        v139 = v209;
        v60 = v207;
        v140 = v198;
        goto LABEL_314;
      }

      v139 = v209;
      v140 = v198;
      if (WORD4(v224) | WORD4(v223))
      {
        if (v48)
        {
          v60 = v207;
          if (v48 != v225 && v48 != v224 && (v48 != a1 || v211))
          {
            obj_unlock(v48, 2u);
            obj_release(v48);
            v202 = v221;
            v205 = v221;
            v201 = v221;
          }
        }

        else
        {
          v60 = v207;
        }

        if (v201)
        {
          if (v201 != v225 && v201 != v224 && (v201 != a1 || v211))
          {
            v146 = v201;
            obj_unlock(v201, 2u);
            v147 = v146;
            v60 = v207;
            obj_release(v147);
          }

          v205 = 0;
          v202 = 0;
          v201 = 0;
          v203 = 0;
          v204 = 0;
          v139 = 0;
          v206 = 0;
          v48 = 0;
          v141 = 0;
          v221 = 0;
        }

        else
        {
          v201 = 0;
          v203 = 0;
          v204 = 0;
          v139 = 0;
          v206 = 0;
          v48 = 0;
          v141 = 0;
        }

LABEL_314:
        if (WORD4(v223))
        {
LABEL_315:
          v212 = 0;
          v143 = v205;
          v142 = v202;
          v144 = v201;
          v145 = v203;
        }

        else if (WORD4(v224) || (BYTE10(v224) & 1) != 0)
        {
          if ((BYTE10(v223) & 1) != 0 || (*(*(v223 + 56) + 32) & 2) != 0)
          {
            goto LABEL_315;
          }

          v212 = 1;
          v48 = v224;
          v143 = v223;
          v142 = v223;
          v144 = v223;
          v221 = v223;
          v145 = v223;
          v204 = v223;
          v139 = v223;
          v206 = v223;
          v141 = WORD4(v224);
        }

        else
        {
          v48 = v225;
          v143 = v224;
          v212 = 1;
          v142 = v224;
          v144 = v224;
          v141 = WORD4(v225);
          v221 = v224;
          v145 = v224;
          v204 = v224;
          v139 = v224;
          v206 = v224;
        }
      }

      else
      {
        v212 = 1;
        v141 = v208;
        v143 = v205;
        v142 = v202;
        v144 = v201;
        v145 = v203;
        v60 = v207;
      }
    }

    v205 = v143;
    if (v140)
    {
      if (v140 == a1 && !v211 || v140 == v48)
      {
        v148 = v205;
      }

      else
      {
        v148 = v205;
        if (v140 != v205)
        {
          v149 = v205;
          obj_unlock(v140, 2u);
          obj_release(v140);
          v202 = v149;
          v201 = v149;
          v203 = v149;
          v204 = v149;
          v209 = v149;
          v206 = v149;
          v60 = v207;
LABEL_329:
          v58 = v141;
          goto LABEL_194;
        }
      }

      v202 = v148;
      v201 = v148;
      v203 = v148;
      v204 = v148;
      v209 = v148;
      v206 = v148;
      goto LABEL_329;
    }

    v209 = v139;
    v203 = v145;
    v201 = v144;
    v202 = v142;
    goto LABEL_329;
  }

  *&v225 = v224;
  if (*(v222[7] + 36))
  {
    v131 = v222;
    v68 = btree_node_key_ptr(v222, 0, &v220, &v218);
    if (v68)
    {
      goto LABEL_331;
    }

    v128 = v225;
    v132 = v220;
    v133 = v218;
  }

  else
  {
    v131 = v222;
    v132 = a3;
    v133 = v125;
  }

  v19 = sub_1000382F8(v128, v132, v133, &v225 + 4, &v225 + 10);
  if (!v19)
  {
    v198 = 0;
    v58 = v208;
    v127 = v131;
    goto LABEL_274;
  }

LABEL_60:
  v49 = v225;
  v50 = v221;
  if (v225 && v225 != v48 && v225 != v221)
  {
    obj_unlock(v225, 2u);
    obj_release(v49);
  }

  v51 = v224;
  if (v224 && v224 != v48 && v224 != v50)
  {
    obj_unlock(v224, 2u);
    obj_release(v51);
  }

  v52 = v223;
  if (v223 && v223 != v48 && v223 != v50)
  {
    obj_unlock(v223, 2u);
    obj_release(v52);
  }

  if (v48)
  {
    obj_unlock(v48, 2u);
    obj_release(v48);
    v50 = v221;
  }

  if (v50)
  {
    obj_unlock(v50, 2u);
    obj_release(v50);
  }

  v53 = v222;
  if (v222)
  {
    obj_unlock(v222, 2u);
    obj_release(v53);
  }

  v54 = v211;
  if (v225 == a1)
  {
    v54 = 1;
  }

  if (v50 != a1 && (v54 & 1) == 0 && v224 != a1 && v223 != a1 && v48 != a1)
  {
    obj_unlock(a1, 2u);
    obj_release(a1);
  }

  if (!obj_refcount(a1))
  {
    sub_1000A629C();
  }

  return v19;
}

uint64_t sub_100037408(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  v21 = 0;
  v10 = *(*(a1 + 56) + 36) - 1;
  v20 = 0;
  if ((*(a1 + 400) & 1) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      v23 = 0;
      while (1)
      {
        v12 = (v10 + v11) / 2;
        result = btree_node_key_ptr(a1, v12, &v23, &v20);
        if (result)
        {
          return result;
        }

        v14 = *(a1 + 8);
        if (!v14)
        {
          v14 = *(*a1 + 392);
        }

        result = (*(a1 + 416))(v14, a2, a3, v23, v20, &v21);
        if (result)
        {
          return result;
        }

        v15 = v21 == 0;
        if (!v21)
        {
          v11 = (v10 + v11) / 2;
          goto LABEL_34;
        }

        if (v21 < 0)
        {
          v10 = v12 - 1;
        }

        else
        {
          v11 = v12 + 1;
        }

        if (v11 > v10)
        {
          goto LABEL_34;
        }
      }
    }

    v15 = 0;
    LOWORD(v11) = 0;
LABEL_34:
    result = 0;
    *a4 = v11;
LABEL_37:
    *a5 = v15;
    return result;
  }

  if (a3 != 8)
  {
    return 22;
  }

  if (v10 < 0)
  {
    v15 = 0;
    LOWORD(v16) = 0;
LABEL_36:
    result = 0;
    *a4 = v16;
    goto LABEL_37;
  }

  v16 = 0;
  v17 = *a2;
  v23 = 0;
  v22 = 0;
  while (1)
  {
    v18 = (v16 + v10) / 2;
    LODWORD(result) = btree_node_key_ptr(a1, v18, &v23, &v22);
    v19 = v22 != 8 && result == 0;
    result = v19 ? 22 : result;
    if (result)
    {
      return result;
    }

    v15 = *v23 == v17;
    if (*v23 == v17)
    {
      v16 = (v16 + v10) / 2;
      goto LABEL_36;
    }

    if (*v23 > v17)
    {
      v10 = v18 - 1;
    }

    else
    {
      v16 = v18 + 1;
    }

    if (v16 > v10)
    {
      goto LABEL_36;
    }
  }
}

uint64_t sub_1000375C8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v13 = *(a1 + 56);
  v14 = *(v13 + 32);
  if (a6 == 65534)
  {
    v15 = 0;
  }

  else
  {
    v15 = a6;
  }

  v85 = *(v13 + 32);
  if (*(v13 + 36) <= a2)
  {
    v76 = 0;
    v23 = 0;
    v24 = 0;
    v82 = 0;
    v18 = 0xFFFF;
    v20 = 0xFFFF;
  }

  else
  {
    v80 = a4;
    v16 = *(a1 + 376);
    if ((v14 & 4) != 0)
    {
      v17 = (v16 + 4 * a2);
    }

    else
    {
      v17 = (v16 + 8 * a2);
    }

    v18 = *v17;
    v19 = (v16 + 4 * a2 + 2);
    if ((v14 & 4) == 0)
    {
      v19 = (v16 + 8 * a2 + 4);
    }

    v20 = *v19;
    v22 = v15;
    if (v18 == 0xFFFF)
    {
      v23 = 0;
    }

    else if ((v14 & 4) != 0)
    {
      v23 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v23 = *(v16 + 8 * a2 + 2);
    }

    if (v20 > 0xFFFD)
    {
      v24 = 0;
    }

    else
    {
      v34 = v18;
      v35 = btree_node_val_len(a1, a2);
      v18 = v34;
      v24 = v35;
    }

    v82 = v23 != 0;
    if (v23)
    {
      v36 = v18;
      v37 = sub_10003511C(a1, v18, v23);
      v18 = v36;
      if (v37)
      {
        return v37;
      }
    }

    if (v24)
    {
      v78 = v23;
      v38 = v18;
      v37 = sub_100035248(a1, v20, v24);
      if (v37)
      {
        return v37;
      }

      v76 = 1;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v10 = a3;
      v18 = v38;
      v23 = v78;
      v9 = v80;
    }

    else
    {
      v76 = 0;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v10 = a3;
      v9 = v80;
    }
  }

  v77 = v18;
  HIWORD(v88) = v18;
  LOWORD(v88) = v20;
  v25 = v9 - v23;
  if (!v10)
  {
    v25 = 0;
  }

  v26 = v25;
  v27 = v15 - v24;
  if (!v8)
  {
    v27 = 0;
  }

  v28 = v27;
  if (!(v25 | v27))
  {
    goto LABEL_140;
  }

  if (v10)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v29 = v9;
    }

    else
    {
      v29 = (v9 + 7) & 0xFFF8;
    }

    v30 = (v23 + 7) & 0xFFF8;
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v30 = v23;
    }

    v31 = (v29 - v30);
  }

  else
  {
    v31 = 0;
  }

  v79 = v28;
  v81 = v26;
  v75 = v7;
  if (v8)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v40 = v15;
    }

    else
    {
      v40 = (v15 + 7) & 0xFFF8;
    }

    v41 = (v24 + 7) & 0xFFF8;
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v41 = v24;
    }

    v42 = (v40 - v41);
  }

  else
  {
    v42 = 0;
  }

  if (v42 + v31 > sub_1000404E4(a1))
  {
    return 28;
  }

  v43 = 0;
  v86 = -1;
  v87 = -1;
  if (!v9)
  {
    goto LABEL_51;
  }

  v28 = v79;
  v26 = v81;
  if (v81)
  {
    sub_100040564(a1, 1, v9, &v87, &v88 + 1);
    if (SHIWORD(v88) == -1)
    {
      v26 = v81;
      if (v81 < 0)
      {
        v43 = 0;
        HIWORD(v88) = v77;
        v87 = -1;
      }

      else if ((*(a1 + 400) & 0x40) != 0)
      {
        v43 = v9;
      }

      else
      {
        v43 = (v9 + 7) & 0xFFF8;
      }

      goto LABEL_52;
    }

    v43 = 0;
LABEL_51:
    v26 = v81;
LABEL_52:
    v28 = v79;
  }

  v73 = v8;
  if (!v15 || !v28)
  {
LABEL_68:
    v74 = v43;
    goto LABEL_69;
  }

  sub_100040564(a1, 2, v15, &v86, &v88);
  if (v88 != -1)
  {
    v74 = v43;
    v28 = v79;
    v26 = v81;
    goto LABEL_69;
  }

  v28 = v79;
  v26 = v81;
  if ((v79 & 0x80000000) == 0)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v44 = v15;
    }

    else
    {
      v44 = (v15 + 7) & 0xFFF8;
    }

    v43 += v44;
    goto LABEL_68;
  }

  v74 = v43;
  LOWORD(v88) = v20;
  v86 = -1;
LABEL_69:
  v45 = *(*(a1 + 56) + 46);
  if (v26)
  {
    v46 = v82;
  }

  else
  {
    v46 = 0;
  }

  if (v46)
  {
    v47 = (*(a1 + 400) & 0x40) != 0 ? v23 : (v23 + 7) & 0xFFF8;
    sub_100040784(a1, 1, v77, v47);
    v28 = v79;
    v26 = v81;
    if (HIWORD(v88) != 0xFFFF && v87 == 0xFFFF && HIWORD(v88) != v77 && *(*(a1 + 56) + 48) == v77)
    {
      v87 = v77;
    }
  }

  v48 = v76;
  if (!v28)
  {
    v48 = 0;
  }

  v83 = v48;
  if (v48 == 1)
  {
    v49 = (*(a1 + 400) & 0x40) != 0 ? v24 : (v24 + 7) & 0xFFF8;
    sub_100040784(a1, 2, v20, v49);
    v28 = v79;
    v26 = v81;
    if (v88 != 0xFFFF && v86 == 0xFFFF && v88 != v20 && *(*(a1 + 56) + 52) == v20)
    {
      v86 = v20;
    }
  }

  if (v45 < v74)
  {
    v50 = *(a1 + 56);
    if ((v85 & 0x8000) == 0)
    {
      *(v50 + 32) |= 0x8000u;
    }

    if (*(v50 + 36) > v11)
    {
      v51 = *(v50 + 32);
      v52 = *(a1 + 376);
      if ((v51 & 4) != 0)
      {
        if (v46)
        {
          *(v52 + 4 * v11) = -1;
        }

        if (v83)
        {
          *(v52 + 4 * v11 + 2) = -1;
        }
      }

      else
      {
        if (v46)
        {
          *(v52 + 8 * v11) = 0xFFFF;
        }

        if (v83)
        {
          *(v52 + 8 * v11 + 4) = 0xFFFF;
        }
      }
    }

    v53 = sub_100040930(a1, 0, v75);
    if (v53)
    {
      v39 = v53;
      if (v46)
      {
        v54 = (*(a1 + 400) & 0x40) != 0 ? v9 : (v9 + 7) & 0xFFF8;
        v55 = sub_100040D2C(a1, 1, v54, 0xFFFF, v77);
        if (v55)
        {
          v56 = *(a1 + 8);
          if (v56)
          {
            v57 = (v56 + 4048);
          }

          else
          {
            v57 = (*(*(*a1 + 392) + 384) + 212);
          }

          log_err("%s:%d: %s unable to reclaim just-freed key space on error path: %d\n", "btree_node_entry_update", 1772, v57, v55);
        }
      }

      if (v83)
      {
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v72 = v24;
        }

        else
        {
          v72 = (v24 + 7) & 0xFFF8;
        }

        if (sub_100040D2C(a1, 2, v72, 0xFFFF, v20))
        {
          log_err("%s:%d: %s unable to reclaim just-freed val space on error path: %d\n");
        }
      }

      return v39;
    }

    v86 = -1;
    v87 = -1;
    v88 = -1;
    v28 = v79;
    v26 = v81;
  }

  if (v26)
  {
    v8 = v73;
    v58 = a6;
    if (HIWORD(v88) == 0xFFFF)
    {
      v59 = sub_100040E50(a1, 1, v9, &v88 + 1);
    }

    else
    {
      v59 = sub_100040D2C(a1, 1, v9, v87, HIWORD(v88));
    }

    v39 = v59;
    v28 = v79;
    v26 = v81;
    if (v59)
    {
      goto LABEL_160;
    }
  }

  else
  {
    v60 = *(a1 + 376);
    v61 = (v60 + 4 * v11);
    v62 = (v60 + 8 * v11);
    if ((*(*(a1 + 56) + 32) & 4) != 0)
    {
      v63 = v61;
    }

    else
    {
      v63 = v62;
    }

    HIWORD(v88) = *v63;
    v8 = v73;
    v58 = a6;
  }

  if (v28)
  {
    v7 = v75;
    if (v15)
    {
      if (v88 == 0xFFFF)
      {
        v64 = sub_100040E50(a1, 2, v15, &v88);
      }

      else
      {
        v64 = sub_100040D2C(a1, 2, v15, v86, v88);
      }

      v39 = v64;
      v28 = v79;
      v26 = v81;
      if (!v64)
      {
        LOWORD(v20) = v88;
        v7 = v75;
LABEL_140:
        v58 = a6;
        goto LABEL_141;
      }

LABEL_160:
      log_err("%s:%d: %s unable allocate space that should be there: %d\n");
      return v39;
    }

    if (v58 == 65534)
    {
      LOWORD(v20) = -2;
    }

    else
    {
      LOWORD(v20) = -1;
    }

    LOWORD(v88) = v20;
  }

  else
  {
    v65 = *(a1 + 376);
    v66 = v65 + 4 * v11 + 2;
    v67 = v65 + 8 * v11 + 4;
    if ((*(*(a1 + 56) + 32) & 4) != 0)
    {
      v68 = v66;
    }

    else
    {
      v68 = v67;
    }

    LOWORD(v20) = *v68;
    LOWORD(v88) = *v68;
    v7 = v75;
  }

LABEL_141:
  if (v58 == 65534 && v20 != 65534)
  {
    LOWORD(v20) = -2;
    LOWORD(v88) = -2;
    v28 = 1;
  }

  sub_100040824(a1, v11, v26 != 0, v28 != 0, HIWORD(v88), v9, v20, v58);
  if ((v85 & 0x8000) == 0)
  {
    *(*(a1 + 56) + 32) &= ~0x8000u;
  }

  v69 = *(a1 + 440);
  if (!*(a1 + 440) || (v70 = v9, v69 >= v9))
  {
    if (v9 >= v23 || v69 > v23)
    {
      goto LABEL_152;
    }

    v70 = 0;
  }

  *(a1 + 440) = v70;
LABEL_152:
  if (v10 && v9)
  {
    memcpy((*(a1 + 384) + HIWORD(v88)), v10, v9);
  }

  if (v8 && v15)
  {
    memcpy((*(a1 + 392) - v88), v8, v15);
  }

  obj_dirty(a1, v7, 0);
  return 0;
}

uint64_t sub_100037E98(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v9 = a2;
  v39[1] = a4;
  if (a6 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a6;
  }

  v36 = v11;
  if (a3)
  {
    v12 = a4;
    if (a4)
    {
      v13 = a3;
    }

    else
    {
      v13 = 0;
    }

    if (a5)
    {
      goto LABEL_9;
    }

LABEL_13:
    v11 = 0;
    v14 = 0;
    v36 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v39[1] = 0;
  if (!a5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v11)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  v39[0] = 0;
  v37 = 0;
  v38 = 0;
  if (!sub_100038410(a1, 1u, &v39[1], &v36, 0, 0, v39))
  {
    return 28;
  }

  v37 = -1;
  v38 = -1;
  if (v13)
  {
    sub_100040564(a1, 1, v12, &v38 + 1, &v38);
  }

  if (v14)
  {
    sub_100040564(a1, 2, v11, &v37 + 1, &v37);
  }

  if (v38 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = (v12 + 7) & 0xFFF8;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v37 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = (v11 + 7) & 0xFFF8;
    }

    v15 += v17;
  }

  v18 = *(a1 + 56);
  v19 = v18[23];
  if (v39[0] + v15 <= v19)
  {
    if (v39[0])
    {
      memmove((*(a1 + 384) + v39[0]), *(a1 + 384), v18[22]);
      bzero(*(a1 + 384), v39[0]);
      v20 = v39[0];
      *(a1 + 384) += v39[0];
      v18 = *(a1 + 56);
      LOWORD(v19) = v18[23] - v20;
      v18[23] = v19;
      v18[21] += v20;
    }
  }

  else
  {
    v16 = sub_100040930(a1, 1, a7);
    if (v16)
    {
      return v16;
    }

    v18 = *(a1 + 56);
    v19 = v18[23];
    if (v19 < v15)
    {
      sub_1000A62F4();
    }

    LOWORD(v37) = -1;
    LOWORD(v38) = -1;
    v39[0] = 0;
  }

  if (!v13)
  {
LABEL_39:
    if (!v14)
    {
      goto LABEL_63;
    }

    goto LABEL_40;
  }

  if (v38 != 0xFFFF)
  {
    v16 = sub_100040D2C(a1, 1, v12, HIWORD(v38), v38);
    if (!v16)
    {
      goto LABEL_39;
    }

LABEL_48:
    v22 = *(a1 + 8);
    if (v22)
    {
      v23 = (v22 + 4048);
    }

    else
    {
      v23 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2193, v23, v16);
    return v16;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v21 = v12;
  }

  else
  {
    v21 = (v12 + 7) & 0xFFF8;
  }

  if (v19 < v21)
  {
    v16 = 28;
    goto LABEL_48;
  }

  v29 = v18[22];
  v18[22] = v29 + v21;
  v18[23] = v19 - v21;
  LOWORD(v38) = v29;
  if (!v14)
  {
    goto LABEL_63;
  }

LABEL_40:
  if (v37 != 0xFFFF)
  {
    v16 = sub_100040D2C(a1, 2, v11, HIWORD(v37), v37);
    if (!v16)
    {
      goto LABEL_63;
    }

LABEL_54:
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 + 4048);
    }

    else
    {
      v28 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2205, v28, v16);
    return v16;
  }

  v24 = (v11 + 7) & 0x1FFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v24 = v11;
  }

  v25 = *(a1 + 56);
  v26 = *(v25 + 46);
  if (v26 < v24)
  {
    v16 = 28;
    goto LABEL_54;
  }

  v30 = v26 - v24;
  v31 = *(a1 + 392) - (v30 + *(a1 + 384) + *(v25 + 44));
  *(v25 + 46) = v30;
  LOWORD(v37) = v31;
LABEL_63:
  if (!v11)
  {
    if (v8 == 65534)
    {
      v32 = -2;
    }

    else
    {
      v32 = -1;
    }

    LOWORD(v37) = v32;
  }

  v33 = *(a1 + 56);
  v34 = *(v33 + 36);
  if (v34 > v9)
  {
    sub_1000410A4(a1, v9, 1);
    v33 = *(a1 + 56);
    v34 = *(v33 + 36);
  }

  *(v33 + 36) = v34 + 1;
  sub_100040824(a1, v9, 1, 1, v38, v12, v37, v8);
  if (*(a1 + 440) && *(a1 + 440) < v12)
  {
    *(a1 + 440) = v12;
  }

  if (v13)
  {
    memcpy((*(a1 + 384) + v38), v13, v12);
  }

  if (v14)
  {
    memcpy((*(a1 + 392) - v37), v14, v11);
  }

  obj_dirty(a1, a7, 0);
  return 0;
}

uint64_t sub_1000382F8(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  result = sub_100037408(a1, a2, a3, a4, a5);
  if (!result && !*a5)
  {
    if (*a4)
    {
      --*a4;
    }
  }

  return result;
}

uint64_t sub_10003833C(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v12 = 0;
  v6 = *(a1[7] + 32);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) != 0)
    {
      v8 = (*(a1 + 100) >> 9) & 0x3FFF;
    }

    else
    {
      v8 = *(a1[47] + 8 * a2 + 2);
    }

    return sub_10003B280(a1, a2, 0, v8, v5, 8, 0, a4, sub_100041114, 0);
  }

  v7 = a1[51];
  if (*a3 > v7)
  {
    v12 = *a3 - v7;
    v5 = &v12;
    goto LABEL_4;
  }

  v10 = a1[1];
  if (v10)
  {
    v11 = (v10 + 4048);
  }

  else
  {
    v11 = (*(*(*a1 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_child_id_update", 1961, v11, *a3, v7);
  return 22;
}

BOOL sub_100038410(uint64_t a1, unsigned int a2, __int16 *a3, __int16 *a4, __int16 a5, __int16 a6, _WORD *a7)
{
  v12 = *(a1 + 56);
  v13 = v12[16];
  v14 = v12[18];
  v15 = v12[21];
  if ((v13 & 4) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v39 = v16;
  if ((v13 & 4) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  v18 = btree_node_toc_required_capacity(a1, 0);
  if ((v13 & 4) == 0 || (*(a1 + 400) & 4) != 0 || v14 + a2 <= v18)
  {
    v20 = v18;
    v21 = btree_node_toc_required_capacity(a1, a2);
    if (a7)
    {
      if ((v13 & 4) != 0)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      v23 = v21 << v22;
      v24 = v23 >= v15;
      v25 = v23 - v15;
      if (v25 == 0 || !v24)
      {
        LOWORD(v25) = 0;
      }

      *a7 = v25;
    }

    v26 = v15 >> v17;
    v27 = 0;
    if (a2)
    {
      v28 = a2;
      do
      {
        v30 = *a3++;
        v29 = v30;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v31 = *a4;
        }

        else
        {
          v29 = (v29 + 7) & 0xFFF8;
          v31 = (*a4 + 7) & 0xFFF8;
        }

        v27 += v29 + v31;
        ++a4;
        --v28;
      }

      while (v28);
    }

    v32 = a6 + a5 + v27;
    if ((v13 & 4) != 0)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    v34 = ((v21 - v20) << v33) & 0xFFFC;
    if (v21 <= v20)
    {
      v34 = 0;
    }

    v35 = v26 > v20;
    v36 = (v26 - v20) << v39;
    if (!v35)
    {
      LOWORD(v36) = 0;
    }

    return v34 + v32 <= (v12[23] + v36 + v12[25] + v12[27]);
  }

  else
  {
    result = 0;
    if (a7)
    {
      *a7 = -1;
    }
  }

  return result;
}

uint64_t sub_10003859C(uint64_t a1)
{
  v1 = (*(a1 + 400) >> 9) & 0x3FFF;
  if (!v1)
  {
    LOWORD(v1) = *(a1 + 440);
    if (!v1)
    {
      v2 = *(a1 + 56);
      v3 = *(v2 + 36);
      if (v3)
      {
        v4 = 0;
        LOWORD(v1) = 0;
        v5 = *(v2 + 32);
        do
        {
          if ((v5 & 4) == 0)
          {
            v6 = *(*(a1 + 376) + 8 * v4 + 2);
            v7 = v1;
            if (v6 > v1)
            {
              v7 = *(*(a1 + 376) + 8 * v4 + 2);
            }

            if (v6 != 0xFFFF)
            {
              LOWORD(v1) = v7;
            }
          }

          ++v4;
        }

        while (v3 != v4);
      }

      else
      {
        LOWORD(v1) = 0;
      }

      *(a1 + 440) = v1;
    }
  }

  return v1;
}

uint64_t sub_100038618(uint64_t a1, void *a2, unsigned int a3, void *a4, int a5, unint64_t *a6, uint64_t a7, unsigned int a8, __int16 *a9, __int16 *a10, unsigned __int16 a11, unint64_t a12, uint64_t a13, uint64_t *a14)
{
  v260 = a6;
  v20 = a1;
  v21 = a13;
  __chkstk_darwin(a1);
  v262 = &v252[-v22];
  bzero(&v252[-v22], v23);
  LODWORD(v285) = 0;
  memset(v294, 0, sizeof(v294));
  v292 = 0;
  v293 = 0;
  v290 = 0;
  v291 = 0;
  v289 = 0;
  v287 = 0;
  v288 = 0;
  if ((*(a4[7] + 32) & 4) != 0)
  {
    LODWORD(v285) = (a4[50] & 4) == 0;
  }

  *a14 = 0;
  v276 = a8;
  v258 = a14;
  if (a2 && *(a2[7] + 36) - 1 > a3)
  {
    if (btree_node_child_val(a2, (a3 + 1), v262) || btree_node_get(v20, v262, a12, 3u, *(a2[7] + 34) - 1, a13, &v293) || !v293)
    {
      v293 = 0;
      v24 = 1;
    }

    else
    {
      if ((*(v20 + 400) & 0x10) != 0 && v293[14] != *v262)
      {
        sub_10003833C(a2, (a3 + 1), v293 + 14, a13);
      }

      v24 = 0;
    }

    a8 = v276;
  }

  else
  {
    v24 = 1;
  }

  *(v294 + 8) = *(v20 + 400);
  *(&v294[1] + 1) = a4[52];
  LODWORD(v294[0]) = 2123139;
  v25 = a4[7];
  WORD2(v294[0]) = *(v25 + 32) & 0x1A;
  WORD3(v294[0]) = *(v25 + 34);
  if (a8)
  {
    v26 = 0;
    v29 = a8;
    do
    {
      v31 = *a9++;
      v30 = v31;
      if ((a4[50] & 0x40) != 0)
      {
        v32 = *a10;
      }

      else
      {
        v30 = (v30 + 7) & 0xFFF8;
        v32 = (*a10 + 7) & 0xFFF8;
      }

      v26 += v30 + v32;
      ++a10;
      --v29;
    }

    while (v29);
    v33 = v26;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v25 + 36);
  v279 = a5;
  if (v34 <= a5)
  {
    v256 = a7;
    v259 = a3;
    v272 = 0;
    LODWORD(v280) = 0;
    v37 = 0;
    v270 = 0;
  }

  else
  {
    v35 = btree_node_key_ptr(a4, a5, &v290, &v287 + 1);
    if (v35)
    {
      return v35;
    }

    v36 = *(v20 + 8);
    if (!v36)
    {
      v36 = *(*v20 + 392);
    }

    v35 = (*(v20 + 416))(v36, v260, a7, v290, HIWORD(v287), &v288);
    if (v35)
    {
      return v35;
    }

    v259 = a3;
    v256 = a7;
    if (v288)
    {
      v272 = 0;
      LODWORD(v280) = 0;
      v37 = 0;
      v270 = 0;
      a5 = v279;
    }

    else
    {
      a5 = v279;
      if ((*(a4[7] + 32) & 2) != 0)
      {
        v115 = btree_node_val_len(a4, v279);
        if (v115 == 65534)
        {
          v116 = 0;
        }

        else
        {
          v116 = v115;
        }

        LOWORD(v287) = v116;
        if ((a4[50] & 0x40) != 0)
        {
          v117 = HIWORD(v287);
        }

        else
        {
          v117 = (HIWORD(v287) + 7) & 0xFFFFFFF8;
        }

        if ((a4[50] & 0x40) == 0)
        {
          v116 = (v116 + 7) & 0x1FFF8;
        }

        v272 = v117 + v116;
        LODWORD(v280) = 1;
        v37 = 1;
        v270 = 1;
      }

      else
      {
        v272 = 0;
        LODWORD(v280) = 0;
        v270 = 0;
        v37 = 1;
      }
    }
  }

  v273 = v20;
  v271 = a13;
  v286 = a4;
  v263 = a2;
  if (v24)
  {
    v38 = obj_flags(a4);
    v39 = *(v20 + 8);
    if (!v39)
    {
      v39 = *(*v20 + 392);
    }

    v40 = obj_subtype(a4);
    v35 = sub_10003E8A0(v39, v38 & 0xFFFFFC00, v40, v294, a13, &v293);
    if (v35)
    {
      return v35;
    }

    atomic_fetch_add_explicit((*(v20 + 392) + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v20, a13, 0);
    a5 = v279;
    if ((*(v20 + 400) & 2) != 0 || *(v20 + 432) == a4[14])
    {
      v42 = a4[7];
      if (*(v42 + 36) == v279)
      {
        v43 = 0;
        v44 = v279 + ((*(v42 + 32) >> 1) & 1) - 1;
        v45 = 1;
        v24 = 1;
        goto LABEL_143;
      }
    }
  }

  v46 = a4[7];
  v47 = *(v46 + 32);
  v267 = btree_node_toc_required_capacity(a4, 0);
  if ((v47 & 4) != 0)
  {
    v48 = 2;
  }

  else
  {
    v48 = 3;
  }

  v44 = *(v46 + 36);
  if (((v44 - 1) & 0x8000) != 0)
  {
    v283 = v276;
    LODWORD(v53) = v270;
LABEL_122:
    v270 = v53;
    v43 = 0;
    v114 = v283;
LABEL_141:
    v45 = v114 == 0;
    a2 = v263;
LABEL_142:
    a5 = v279;
LABEL_143:
    if (!a2 && (v43 != 0) | v24 & 1)
    {
      v118 = v44;
      v119 = obj_flags(a4);
      v120 = v273[1];
      if (!v120)
      {
        v120 = *(*v273 + 392);
      }

      v121 = obj_subtype(a4);
      v122 = sub_10003E8A0(v120, v119 & 0xFFFFFC00, v121, v294, v21, &v292);
      if (v122)
      {
        v41 = v122;
        v282 = v24;
        v284 = 0;
        v285 = 0;
        v280 = 0;
        LODWORD(v281) = 0;
        LOWORD(v123) = 0;
        v124 = 0;
        v279 = 0;
        v283 = 0;
        v278[0] = 0;
        v125 = 0;
        v263 = 0;
        goto LABEL_149;
      }

      v127 = v273;
      atomic_fetch_add_explicit((v273[49] + 32), 1uLL, memory_order_relaxed);
      obj_dirty(v127, v21, 0);
      a5 = v279;
      LOWORD(v44) = v118;
    }

    v128 = v44;
    if (a5 >= v44)
    {
      v129 = v270;
    }

    else
    {
      v129 = 0;
    }

    v130 = a4[7];
    if (v129 != 1)
    {
      v277 = v45;
      v283 = v129;
      v137 = 0;
      v138 = 0;
      v131 = 0;
      v139 = 0;
LABEL_160:
      v140 = (*(v130 + 36) - v128);
      v279 = v139;
      v280 = v138;
      v284 = v137;
      v285 = v140;
      LODWORD(v281) = v131;
      if (v140 < 1)
      {
        HIDWORD(v278[0]) = 0;
        v146 = 0;
        v147 = v259;
        goto LABEL_171;
      }

      v141 = v293;
      v142 = sub_100041134(a4, v293, v140, v271);
      if (v142)
      {
        v41 = v142;
        v282 = v24;
        v126 = v273;
        v143 = v273[1];
        v144 = v256;
        if (v143)
        {
          v145 = (v143 + 4048);
        }

        else
        {
          v145 = (*(*(*v273 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3068, v145, v285, v142);
        v285 = 0;
LABEL_224:
        LOWORD(v123) = 0;
        v124 = 0;
        v278[0] = 0;
        v125 = 0;
LABEL_225:
        v147 = v259;
        goto LABEL_236;
      }

      v144 = v256;
      if ((v24 & 1) == 0)
      {
        v168 = btree_node_key_ptr(v141, 0, &v290, &v287 + 1);
        if (v168 || (v168 = sub_1000375C8(a2, (v259 + 1), v290, HIWORD(v287), 0, 0, v271), v168))
        {
          v41 = v168;
          v126 = v273;
          v169 = v273[1];
          if (v169)
          {
            v170 = (v169 + 4048);
          }

          else
          {
            v170 = (*(*(*v273 + 392) + 384) + 212);
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3076, v170, v168);
          v282 = 0;
          goto LABEL_224;
        }
      }

      HIDWORD(v278[0]) = v24 ^ 1;
      if (!a2 || *(a4[7] + 36))
      {
        v146 = 0;
        v147 = v259;
LABEL_170:
        LODWORD(v138) = v280;
LABEL_171:
        v148 = v292;
        LODWORD(v278[0]) = v146;
        if (v292)
        {
          v282 = v24;
          v149 = a4[7];
          v123 = *(v149 + 36);
          v150 = a4;
          v151 = a4;
          v152 = v271;
          v153 = sub_100041134(v292, v150, -*(v149 + 36), v271);
          if (v153)
          {
            v41 = v153;
            v126 = v273;
            v154 = v273[1];
            if (v154)
            {
              v155 = (v154 + 4048);
            }

            else
            {
              v155 = (*(*(*v273 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3103, v155, -v123, v153);
            LOWORD(v123) = 0;
            v124 = 0;
            v125 = 0;
            goto LABEL_199;
          }

          sub_1000415EC(v151, (*(v151[7] + 34) + 1), v152);
          if (*(v148[7] + 36))
          {
            v171 = btree_node_key_ptr(v148, 0, &v290, &v287 + 1);
            v172 = v286;
            v24 = v282;
            v157 = v277;
            if (v171)
            {
LABEL_219:
              v41 = v171;
              v126 = v273;
              v177 = v273[1];
              v144 = v256;
              if (v177)
              {
                v178 = (v177 + 4048);
              }

              else
              {
                v178 = (*(*(*v273 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3126, v178, v171);
              v124 = 0;
              goto LABEL_235;
            }

            v173 = v290;
            v174 = HIWORD(v287);
          }

          else
          {
            v173 = v260;
            v290 = v260;
            v174 = v256;
            HIWORD(v287) = v256;
            v172 = v286;
            v24 = v282;
            v157 = v277;
          }

          v176 = v262;
          *v262 = v148[14];
          v171 = sub_10003A7E0(v172, v173, v174, v176, (*(v172 + 407) & 0x7Fu) + 8, v271, 0, 0);
          if (v171)
          {
            goto LABEL_219;
          }

          v263 = v172;
          if ((v24 & 1) == 0)
          {
            goto LABEL_313;
          }
        }

        else
        {
          LOWORD(v123) = 0;
          v157 = v277;
          if ((v24 & 1) == 0)
          {
LABEL_313:
            v125 = 0;
            goto LABEL_330;
          }
        }

        v158 = v147;
        v159 = v293;
        if (v293)
        {
          v160 = v293[7];
          if (*(v160 + 36))
          {
            v161 = btree_node_key_ptr(v293, 0, &v290, &v287 + 1);
            if (v161 || (v162 = v262, *v262 = v159[14], v161 = sub_10003A7E0(v263, v290, HIWORD(v287), v162, (*(v263 + 407) & 0x7Fu) + 8, v271, 0, 0), v161))
            {
              v41 = v161;
              v147 = v158;
              v126 = v273;
              v163 = v273[1];
              v144 = v256;
              if (v163)
              {
                v164 = (v163 + 4048);
              }

              else
              {
                v164 = (*(*(*v273 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3142, v164, v161);
              v124 = 0;
              v125 = 0;
              v282 = 1;
              goto LABEL_236;
            }

            v125 = 1;
          }

          else
          {
            if ((*(v160 + 32) & 2) != 0)
            {
              v291 = v293;
              v43 = 1;
            }

            else
            {
              atomic_fetch_add_explicit((v273[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
              obj_delete_and_free(v159, v271);
              obj_unlock(v159, 2u);
              obj_release(v159);
            }

            v125 = 0;
            v293 = 0;
          }
        }

        else
        {
          v125 = 0;
        }

        LODWORD(v147) = v158;
LABEL_330:
        if (v43)
        {
          v259 = v147;
          if (v148)
          {
            v230 = v148;
          }

          else
          {
            v230 = v286;
          }

          v231 = *(v230[7] + 32);
          v282 = v24;
          if ((v231 & 2) != 0)
          {
            v124 = 0;
            v240 = v260;
            v290 = v260;
            v144 = v256;
            HIWORD(v287) = v256;
            v241 = v256;
            v232 = v291;
            v126 = v273;
          }

          else
          {
            v232 = v291;
            v233 = sub_100041134(v230, v291, 1, v271);
            v126 = v273;
            v144 = v256;
            if (v233)
            {
              v41 = v233;
              v234 = v273[1];
              if (v234)
              {
                v235 = (v234 + 4048);
              }

              else
              {
                v235 = (*(*(*v273 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3169, v235, 1, v233);
LABEL_373:
              v124 = 0;
              goto LABEL_225;
            }

            v246 = btree_node_key_ptr(v232, 0, &v290, &v287 + 1);
            if (v246)
            {
              v41 = v246;
              v247 = v126[1];
              if (v247)
              {
                v248 = (v247 + 4048);
              }

              else
              {
                v248 = (*(*(*v126 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s failed to get newnode minkey: %d\n", "bt_shift_or_split", 3174, v248, v246);
              goto LABEL_373;
            }

            v240 = v290;
            v124 = 1;
            v241 = HIWORD(v287);
          }

          v242 = v262;
          *v262 = v232[14];
          v243 = sub_10003A7E0(v263, v240, v241, v242, (*(v263 + 407) & 0x7Fu) + 8, v271, 0, 0);
          if (v243)
          {
            v41 = v243;
            v244 = v126[1];
            if (v244)
            {
              v245 = (v244 + 4048);
            }

            else
            {
              v245 = (*(*(*v126 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3186, v245, v243);
            goto LABEL_225;
          }

          v236 = v293;
          v293 = v232;
          v237 = v286;
          v238 = v263;
          v239 = v284;
          LODWORD(v138) = v280;
        }

        else
        {
          if (v157)
          {
            v236 = 0;
            v126 = v273;
            v237 = v286;
            v238 = v263;
            v239 = v284;
          }

          else
          {
            v236 = v293;
            v126 = v273;
            v237 = v286;
            v238 = v263;
            v239 = v284;
            if (v148)
            {
              v293 = v148;
            }

            else
            {
              v293 = 0;
            }
          }

          if ((v24 & 1) == 0)
          {
            goto LABEL_357;
          }
        }

        sub_1000416B0(v126, v238, v237);
LABEL_357:
        if (v239)
        {
          _apfs_free(v239, v138);
        }

        if (v236)
        {
          obj_unlock(v236, 2u);
          obj_release(v236);
        }

        v249 = v292;
        v250 = v293;
        if (v292 && v293 != v292)
        {
          obj_unlock(v292, 2u);
          obj_release(v249);
        }

        v41 = 0;
        *v258 = v250;
        return v41;
      }

      v147 = v259;
      v220 = sub_1000375C8(a2, v259, v260, v144, 0, 0, v271);
      if (!v220)
      {
        v146 = 1;
        goto LABEL_170;
      }

      v41 = v220;
      v282 = v24;
      v126 = v273;
      v221 = v273[1];
      if (v221)
      {
        v222 = (v221 + 4048);
      }

      else
      {
        v222 = (*(*(*v273 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3087, v222, v220);
      LOWORD(v123) = 0;
      v124 = 0;
LABEL_234:
      LODWORD(v278[0]) = 0;
LABEL_235:
      v125 = 0;
      goto LABEL_236;
    }

    v131 = *(v130 + 36) + ~a5;
    v132 = (*(v130 + 36) + ~a5);
    if (v132 < 1)
    {
      v277 = v45;
      v139 = 0;
      v147 = v259;
LABEL_178:
      if (*(a4[7] + 36) - 1 != a5)
      {
        sub_1000A6320();
      }

      v156 = btree_node_val_ptr(a4, a5, &v289, &v287);
      if (v156)
      {
        v41 = v156;
        v279 = v139;
        v282 = v24;
        v284 = 0;
        v285 = 0;
        v280 = 0;
        LOWORD(v123) = 0;
        v124 = 0;
        v283 = 0;
        v278[0] = 0;
        v125 = 0;
LABEL_181:
        v126 = v273;
        v144 = v256;
        LODWORD(v281) = v131;
        goto LABEL_236;
      }

      v283 = 1;
      v137 = 0;
      v138 = v287;
      if (v287 && v287 != 65534)
      {
        v165 = _apfs_malloc_typed(v287, 0xC5E0E89uLL);
        if (!v165)
        {
          v279 = v139;
          v282 = v24;
          v284 = 0;
          v285 = 0;
          v280 = 0;
          LOWORD(v123) = 0;
          v124 = 0;
          v283 = 0;
          v278[0] = 0;
          v125 = 0;
          v41 = 12;
          goto LABEL_181;
        }

        v137 = v165;
        memcpy(v165, v289, v287);
        v138 = v287;
      }

      v259 = v147;
      v166 = v271;
      sub_10003C4D0(a4, v279, v271);
      v167 = v273;
      atomic_fetch_add_explicit((v273[49] + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_dirty(v167, v166, 0);
      v130 = a4[7];
      goto LABEL_160;
    }

    v133 = v293;
    v134 = sub_100041134(a4, v293, v132, v271);
    if (v134)
    {
      v41 = v134;
      v282 = v24;
      v126 = v273;
      v135 = v273[1];
      if (v135)
      {
        v136 = (v135 + 4048);
      }

      else
      {
        v136 = (*(*(*v273 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3023, v136, 0, v134);
      v284 = 0;
      v285 = 0;
      v280 = 0;
      LODWORD(v281) = 0;
      LOWORD(v123) = 0;
      v124 = 0;
      v279 = 0;
      v283 = 0;
      v278[0] = 0;
      v125 = 0;
      goto LABEL_198;
    }

    if (v24)
    {
      v277 = v45;
      v139 = 0;
      v147 = v259;
LABEL_177:
      a5 = v279;
      goto LABEL_178;
    }

    v175 = btree_node_key_ptr(v133, 0, &v290, &v287 + 1);
    if (v175)
    {
      v41 = v175;
      v147 = v259;
    }

    else
    {
      v147 = v259;
      v179 = sub_1000375C8(a2, (v259 + 1), v290, HIWORD(v287), 0, 0, v271);
      if (!v179)
      {
        v277 = v45;
        v139 = 1;
        goto LABEL_177;
      }

      v41 = v179;
    }

    v126 = v273;
    v180 = v273[1];
    v144 = v256;
    LODWORD(v281) = v131;
    if (v180)
    {
      v181 = (v180 + 4048);
    }

    else
    {
      v181 = (*(*(*v273 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3031, v181, v41);
    v282 = 0;
    v284 = 0;
    v285 = 0;
    v280 = 0;
    LOWORD(v123) = 0;
    v124 = 0;
    v279 = 0;
    v283 = 0;
    HIDWORD(v278[0]) = 0;
    goto LABEL_234;
  }

  v257 = v33;
  v49 = v33 + a11;
  v255 = v37 + a5;
  v50 = (v44 - 1);
  v51 = v293;
  v275 = sub_1000404E4(v293);
  *(v278 + 4) = v51;
  v52 = btree_node_toc_required_capacity(v51, 0);
  v281 = v48;
  v274 = v52 << v48;
  v266 = sub_1000404E4(a4);
  LOWORD(v48) = 0;
  LODWORD(v278[0]) = 0;
  LODWORD(v284) = 0;
  v53 = v270;
  v261 = v270 ^ 1;
  v254 = v49;
  v283 = v276;
  v253 = v49;
  v277 = v49;
  v54 = v280;
  while (1)
  {
    v55 = v20;
    v56 = v24;
    v57 = v21;
    v268 = v44;
    v58 = v283;
    v59 = v283 - v54;
    v60 = btree_node_toc_required_capacity(a4, (v283 - v54));
    v61 = v266 + v272 + ((v267 - v60) << v281);
    v269 = (v266 + v272 + ((v267 - v60) << v281) - v277);
    if (((v61 >= v277) & v285) == 1)
    {
      v62 = *(a4[7] + 36) - v54 + v58;
      v63 = v62 >= btree_node_toc_required_capacity(v286, 0);
      a4 = v286;
      if (v63)
      {
        goto LABEL_48;
      }
    }

    else if (v61 < v277)
    {
LABEL_48:
      v21 = v57;
      v24 = v56;
      v20 = v55;
      v64 = v281;
      v65 = v278[0];
      goto LABEL_57;
    }

    v21 = v57;
    v24 = v56;
    if ((v56 & 1) == 0)
    {
      goto LABEL_140;
    }

    v20 = v55;
    if ((*(v55 + 400) & 2) != 0 || *(v55 + 432) == a4[14])
    {
      v64 = v281;
      if ((*(a4[7] + 32) & 2) != 0)
      {
        goto LABEL_140;
      }

      if (!v50)
      {
        goto LABEL_140;
      }

      v65 = v278[0];
      if ((LOWORD(v278[0]) + *(*(*(v278 + 4) + 56) + 36)) > 1u)
      {
        goto LABEL_140;
      }

      v66 = btree_node_toc_required_capacity(*(v278 + 4), SLOWORD(v278[0]));
      v67 = v275 + v274 + v48 - (v66 << v64);
      if (v269 >= (v67 + ((v67 >> 29) & 3)) >> 2)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v64 = v281;
      if (v285)
      {
        if (!v50)
        {
          goto LABEL_140;
        }

        v86 = v59 + *(a4[7] + 36);
        v65 = v278[0];
        v53 = v270;
        if (v86 <= (LOWORD(v278[0]) + *(*(*(v278 + 4) + 56) + 36)))
        {
          goto LABEL_140;
        }
      }

      else
      {
        v65 = v278[0];
        v113 = btree_node_toc_required_capacity(*(v278 + 4), SLOWORD(v278[0]));
        if (!v50)
        {
          goto LABEL_140;
        }

        v53 = v270;
        if (v269 >= (v275 + v274 + v48 - (v113 << v64)))
        {
          goto LABEL_140;
        }
      }
    }

LABEL_57:
    LODWORD(v280) = v54;
    v282 = v24;
    v68 = v50;
    v69 = a4[7];
    v70 = *(v69 + 32);
    if ((v70 & 2) == 0 || v261 + v50 != v279)
    {
      goto LABEL_82;
    }

    v264 = *(v69 + 32);
    v265 = v69;
    v71 = v21;
    v72 = v276;
    v73 = (v65 + v276);
    v74 = *(v278 + 4);
    v75 = btree_node_toc_required_capacity(*(v278 + 4), v73);
    v76 = (v75 << v64) - v274;
    v77 = v257 + v284 + ((v75 << v64) - v274);
    if (((v77 <= v275) & v285) == 1)
    {
      v78 = v72 + v65 + *(*(v74 + 56) + 36);
      v63 = v78 >= btree_node_toc_required_capacity(v74, 0);
      v20 = v273;
      if (v63)
      {
        goto LABEL_62;
      }
    }

    else if (v77 > v275)
    {
LABEL_62:
      v21 = v71;
      if ((v282 & 1) == 0)
      {
        a4 = v286;
        v79 = obj_flags(v286);
        v80 = *(v278 + 4);
        obj_unlock(*(v278 + 4), 2u);
        obj_release(v80);
        v293 = 0;
        v81 = *(v20 + 8);
        v82 = v270;
        if (!v81)
        {
          v81 = *(*v20 + 392);
        }

        v83 = obj_subtype(a4);
        v35 = sub_10003E8A0(v81, v79 & 0xFFFFFC00, v83, v294, v71, &v293);
        v54 = v280;
        if (v35)
        {
          return v35;
        }

        v24 = 1;
        atomic_fetch_add_explicit((*(v20 + 392) + 32), 1uLL, memory_order_relaxed);
        obj_dirty(v20, v21, 0);
        v84 = v293;
        v85 = btree_node_toc_required_capacity(v293, 0);
        v274 = v85 << v281;
        *(v278 + 4) = v84;
        v275 = sub_1000404E4(v84);
        goto LABEL_110;
      }

      if (v270)
      {
        LOWORD(v50) = v268 - 2;
      }

      a4 = v286;
      if (v269 < 0)
      {
        LOWORD(v44) = v50 + 1;
        v45 = v283 == 0;
        v43 = 2843;
        goto LABEL_308;
      }

      v24 = 1;
LABEL_140:
      v114 = v283;
      v43 = 0;
      LOWORD(v44) = v50 + 1;
      goto LABEL_141;
    }

    v283 -= v276;
    v21 = v71;
    v69 = v265;
    if ((v282 & 1) == 0)
    {
      v24 = 0;
      if (v270)
      {
        LOWORD(v50) = v268 - 2;
      }

LABEL_139:
      a4 = v286;
      goto LABEL_140;
    }

    if ((*(v20 + 400) & 2) != 0 || *(v20 + 432) == v286[14])
    {
LABEL_123:
      if (v270)
      {
        LOWORD(v50) = v268 - 2;
      }

      v24 = 1;
      goto LABEL_139;
    }

    v68 = v50;
    v277 -= v253;
    LODWORD(v284) = v284 + v253;
    if (v285)
    {
      if (!v50 || (v283 - v280 + *(v265 + 36)) <= (v73 + *(*(*(v278 + 4) + 56) + 36)))
      {
        goto LABEL_123;
      }
    }

    else if (!v50 || v269 >= (v275 - v284 - v76))
    {
      goto LABEL_123;
    }

    v65 = v73;
    a4 = v286;
    v70 = v264;
    v53 = v270;
LABEL_82:
    LODWORD(v278[0]) = v65;
    if ((v70 & 4) != 0)
    {
      v88 = a4;
      v89 = a4[50];
      v87 = (v89 >> 9) & 0x3FFF;
    }

    else
    {
      v87 = *(a4[47] + 8 * v50 + 2);
      v88 = a4;
      v89 = a4[50];
    }

    HIWORD(v287) = v87;
    v90 = btree_node_val_len(v88, v50);
    v91 = v90 == 65534 ? 0 : v90;
    LOWORD(v287) = v91;
    v92 = (v87 + 7) & 0x1FFF8;
    if ((v89 & 0x40) != 0)
    {
      v92 = v87;
    }

    else
    {
      v91 = (v91 + 7) & 0x1FFF8;
    }

    v93 = v50 == v279 ? v53 : 0;
    if ((v93 & 1) == 0)
    {
      break;
    }

    v50 = v279;
    v20 = v273;
    a4 = v286;
    v24 = v282;
    v54 = v280;
LABEL_116:
    v44 = v50;
    LODWORD(v48) = -v284;
    v112 = v50 - 1;
    v50 = (v50 - 1);
    if (v112 < 0)
    {
      goto LABEL_122;
    }
  }

  v264 = v70;
  v265 = v69;
  v94 = v21;
  v95 = v92 + v91;
  if (v283 != 0 && v255 > v68)
  {
    v96 = v276;
  }

  else
  {
    v96 = 0;
  }

  if (v283 != 0 && v255 > v68)
  {
    v97 = v254;
  }

  else
  {
    v97 = 0;
  }

  v98 = v278[0];
  v99 = (LOWORD(v278[0]) + v96 + 1);
  v100 = *(v278 + 4);
  v101 = btree_node_toc_required_capacity(*(v278 + 4), v99);
  v102 = v97 + v284 + v95 + ((v101 << v64) - v274);
  if (((v102 <= v275) & v285) == 1)
  {
    v103 = v96 + v98 + *(*(v100 + 56) + 36) + 1;
    v63 = v103 >= btree_node_toc_required_capacity(v100, 0);
    v21 = v271;
    v104 = v277;
    if (!v63)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v104 = v277;
    v21 = v94;
    if (v102 <= v275)
    {
LABEL_112:
      LODWORD(v284) = v284 + v97 + v95;
      v283 -= v96;
      if (v96)
      {
        v111 = v97;
      }

      else
      {
        v111 = 0;
      }

      v277 = v104 - v111;
      v54 = v280 + 1;
      v272 += v95;
      LODWORD(v278[0]) = v99;
      v20 = v273;
      a4 = v286;
      v24 = v282;
      goto LABEL_116;
    }
  }

  if ((v282 & 1) == 0)
  {
    v82 = v53;
    a4 = v286;
    v105 = obj_flags(v286);
    v106 = *(v278 + 4);
    obj_unlock(*(v278 + 4), 2u);
    obj_release(v106);
    v293 = 0;
    v20 = v273;
    v107 = v273[1];
    if (!v107)
    {
      v107 = *(*v273 + 392);
    }

    v108 = obj_subtype(a4);
    v35 = sub_10003E8A0(v107, v105 & 0xFFFFFC00, v108, v294, v21, &v293);
    v54 = v280;
    if (v35)
    {
      return v35;
    }

    atomic_fetch_add_explicit((*(v20 + 392) + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v20, v21, 0);
    v109 = v293;
    v110 = btree_node_toc_required_capacity(v293, 0);
    v274 = v110 << v281;
    *(v278 + 4) = v109;
    v275 = sub_1000404E4(v109);
    v24 = 1;
LABEL_110:
    v50 = v268;
    v53 = v82;
    goto LABEL_116;
  }

  a4 = v286;
  if ((v269 & 0x80000000) == 0)
  {
    v24 = 1;
    LOWORD(v44) = v268;
    goto LABEL_122;
  }

  v45 = v283 == 0;
  LOWORD(v44) = v268;
  v43 = 2917;
  if (v268 > 1)
  {
LABEL_308:
    a2 = v263;
    v223 = *(v278 + 4);
    goto LABEL_309;
  }

  a2 = v263;
  v223 = *(v278 + 4);
  if ((v264 & 2) == 0)
  {
    v43 = 0;
    v24 = 1;
    goto LABEL_142;
  }

LABEL_309:
  if (*(v265 + 36) == v44 && v223)
  {
    v24 = 0;
    v291 = v223;
    v293 = 0;
    goto LABEL_142;
  }

  v224 = v45;
  v225 = v44;
  v226 = obj_flags(a4);
  v227 = v273[1];
  if (!v227)
  {
    v227 = *(*v273 + 392);
  }

  v228 = obj_subtype(a4);
  v229 = sub_10003E8A0(v227, v226 & 0xFFFFFC00, v228, v294, v21, &v291);
  if (!v229)
  {
    v251 = v273;
    atomic_fetch_add_explicit((v273[49] + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v251, v21, 0);
    v24 = 1;
    a2 = v263;
    a5 = v279;
    LOWORD(v44) = v225;
    v45 = v224;
    goto LABEL_143;
  }

  v41 = v229;
  v284 = 0;
  v285 = 0;
  v280 = 0;
  LODWORD(v281) = 0;
  LOWORD(v123) = 0;
  v124 = 0;
  v279 = 0;
  v283 = 0;
  v278[0] = 0;
  v125 = 0;
  v282 = 1;
LABEL_149:
  v126 = v273;
LABEL_198:
  v147 = v259;
LABEL_199:
  v144 = v256;
LABEL_236:
  v182 = v126[1];
  if (v182)
  {
    v183 = (v182 + 4048);
  }

  else
  {
    v183 = (*(*(*v126 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s reverting on error: %d\n", "bt_shift_or_split", 3222, v183, v41);
  if (v125)
  {
    sub_10003C4D0(v263, (v147 + 1), v271);
  }

  v184 = v286;
  if (v124)
  {
    v185 = sub_100041134(v286, v291, -1, v271);
    v41 = v185;
    if (v185)
    {
      v186 = v126[1];
      if (v186)
      {
        v187 = (v186 + 4048);
      }

      else
      {
        v187 = (*(*(*v126 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3229, v187, -1, v185);
    }
  }

  v188 = v147;
  v189 = v263;
  if (v123 >= 1)
  {
    v190 = v271;
    sub_1000415EC(v184, (*(v184[7] + 34) - 1), v271);
    v191 = sub_100041134(v292, v184, v123, v190);
    if (v191)
    {
      v192 = v126[1];
      if (v192)
      {
        v193 = (v192 + 4048);
      }

      else
      {
        v193 = (*(*(*v126 + 392) + 384) + 212);
      }

      v184 = v286;
      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3239, v193, v191, v41);
      v189 = 0;
    }

    else
    {
      v189 = 0;
      v184 = v286;
    }
  }

  if (v285 >= 1)
  {
    v194 = v293;
    v195 = sub_100041134(v184, v293, -v285, v271);
    if (v195)
    {
      v196 = v126[1];
      if (v196)
      {
        v197 = (v196 + 4048);
      }

      else
      {
        v197 = (*(*(*v126 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3246, v197, v195, v41);
    }

    if (!(v282 & 1 | ((v278[0] & 0x100000000) == 0)))
    {
      v198 = btree_node_key_ptr(v194, 0, &v290, &v287 + 1);
      if (v198 || (v198 = sub_1000375C8(v189, (v188 + 1), v290, HIWORD(v287), 0, 0, v271)) != 0)
      {
        v199 = v126[1];
        if (v199)
        {
          v200 = (v199 + 4048);
        }

        else
        {
          v200 = (*(*(*v126 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3254, v200, v198, v41);
      }
    }

    if (LODWORD(v278[0]))
    {
      v201 = btree_node_key_ptr(v184, 0, &v290, &v287 + 1);
      if (v201 || (v201 = sub_1000375C8(v189, v188, v290, HIWORD(v287), 0, 0, v271)) != 0)
      {
        v202 = v126[1];
        if (v202)
        {
          v203 = (v202 + 4048);
        }

        else
        {
          v203 = (*(*(*v126 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3263, v203, v201, v41);
      }
    }
  }

  v204 = v284;
  if (v283)
  {
    v205 = sub_10003A7E0(v184, v260, v144, v284, v280, v271, 0, 0);
    if (v205)
    {
      v206 = v126[1];
      if (v206)
      {
        v207 = (v206 + 4048);
      }

      else
      {
        v207 = (*(*(*v126 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_insert() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3270, v207, v205, v41);
    }

    if (v204)
    {
      _apfs_free(v204, v280);
    }
  }

  v208 = v271;
  if (v281 >= 1)
  {
    v209 = v293;
    v210 = sub_100041134(v286, v293, -v281, v271);
    if (v210)
    {
      v211 = v126[1];
      if (v211)
      {
        v212 = (v211 + 4048);
      }

      else
      {
        v212 = (*(*(*v126 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3279, v212, v210, v41);
    }

    if (!(v282 & 1 | ((v279 & 1) == 0)))
    {
      v213 = btree_node_key_ptr(v209, 0, &v290, &v287 + 1);
      if (v213 || (v213 = sub_1000375C8(v189, (v188 + 1), v290, HIWORD(v287), 0, 0, v208)) != 0)
      {
        v214 = v126[1];
        if (v214)
        {
          v215 = (v214 + 4048);
        }

        else
        {
          v215 = (*(*(*v126 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3287, v215, v213, v41);
      }
    }
  }

  v216 = v293;
  if (v293)
  {
    if (!*(v293[7] + 36))
    {
      atomic_fetch_add_explicit((v126[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_delete_and_free(v216, v208);
    }

    obj_unlock(v216, 2u);
    obj_release(v216);
  }

  v217 = v291;
  if (v291)
  {
    atomic_fetch_add_explicit((v126[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v217, v208);
    obj_unlock(v217, 2u);
    obj_release(v217);
  }

  v218 = v292;
  if (v292)
  {
    atomic_fetch_add_explicit((v126[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v218, v208);
    obj_unlock(v218, 2u);
    obj_release(v218);
  }

  return v41;
}