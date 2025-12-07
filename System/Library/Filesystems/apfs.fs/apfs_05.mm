uint64_t omap_get(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, _DWORD *a5, _DWORD *a6, unint64_t *a7)
{
  v11 = a3;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v29 = a2;
  v30 = a3;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 16;
  v26 = 16;
  v24 = 0;
  v14 = omap_obj_get(a1, 0, 0, &v32);
  if (!v14)
  {
    obj_lock(v32, 1);
    if (*(v32[47] + 88) > a2)
    {
      obj_unlock(v32, 1);
      v14 = 2;
LABEL_33:
      obj_release(v32);
      return v14;
    }

    v15 = omap_map_tree_get(a1, v32, 0, 0, &v31);
    if (v15)
    {
      v14 = v15;
      obj_unlock(v32, 1);
      goto LABEL_33;
    }

    if (!v11)
    {
      v11 = -1;
      v30 = -1;
    }

    v16 = bt_lookup_variant(v31, 0, &v29, &v26, 16, &v27, &v25, 1, 0, 0);
    if (v16)
    {
      goto LABEL_9;
    }

    v18 = v32[47];
    v19 = *(v18 + 72);
    v20 = v29;
    if (v19)
    {
      v21 = v29 == a2;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      if (v30 < v19 || v30 > *(v18 + 80))
      {
        goto LABEL_18;
      }

      v29 = a2;
      v30 = v19 - 1;
      v16 = bt_lookup_variant(v31, 0, &v29, &v26, 16, &v27, &v25, 1, 0, 0);
      if (v16)
      {
LABEL_9:
        v14 = v16;
        v17 = 0;
        goto LABEL_31;
      }

      v20 = v29;
    }

    if (v20 != a2)
    {
LABEL_30:
      v17 = 0;
      v14 = 2;
LABEL_31:
      obj_release(v31);
      obj_unlock(v32, 1);
      if (v17)
      {
        sub_10003EB40(a1, v32);
      }

      goto LABEL_33;
    }

LABEL_18:
    v22 = v27;
    if ((v27 & 1) == 0)
    {
      if (a4)
      {
        *a4 = v28;
      }

      if (a5)
      {
        *a5 = HIDWORD(v27);
      }

      if (a6)
      {
        *a6 = v22 & 0xFFFFFFEE;
        if (((*(v32[47] + 32) ^ v22) & 0x10) != 0)
        {
          *a6 = v22 | 0x10;
        }
      }

      if (a7)
      {
        *a7 = v30;
      }

      if (v32[53])
      {
        sub_10003E9F4(v32, a2, v11, &v24);
        v14 = 0;
        v17 = v24;
      }

      else
      {
        v17 = 0;
        v14 = 0;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return v14;
}

uint64_t sub_10003E9F4(uint64_t result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v13 = 1;
  v14 = a2;
  if (*(result + 424))
  {
    v4 = result;
    if (!*(result + 440))
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = -86;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      if (__tp.tv_sec - *(v4 + 432) >= 601)
      {
        *a4 = 1;
      }

      btree_node_count(*(v4 + 424), &v13);
      v7 = v13;
      result = obj_size_phys(*(v4 + 424));
      if (v7 <= 0x200000 / result)
      {
        LODWORD(__tp.tv_sec) = 8;
        v10 = 9;
        result = bt_lookup_variant(*(v4 + 424), 0, &v14, &__tp, 8, &v11, &v10, 0, 0, 0);
        if (result == 2)
        {
          LOBYTE(v8) = *(v4 + 464);
        }

        else
        {
          if (result)
          {
            return result;
          }

          if (!v11)
          {
            return result;
          }

          v8 = *(v4 + 464);
          if (v12 == v8)
          {
            return result;
          }
        }

        if (a3 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3;
        }

        v11 = v9;
        v12 = v8;
        return bt_insert(*(v4 + 424), 0, &v14, 8, &v11, 9u, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10003EB40(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (obj_type(a1) != 13)
  {
    v3 = 0;
  }

  obj_lock(a2, 2);
  if (*(a2 + 424))
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v6);
    if (v6.tv_sec - *(a2 + 432) >= 601)
    {
      btree_delete(*(a2 + 424), 0, 0);
      obj_release(*(a2 + 424));
      *(a2 + 424) = 0;
    }
  }

  if (v3)
  {
    if (*(v3 + 504))
    {
      v3 = *(v3 + 504);
    }

    v4 = *(v3 + 3640);
    if (v4)
    {
      obj_release(v4);
      *(v3 + 3640) = 0;
    }
  }

  return obj_unlock(a2, 2);
}

uint64_t omap_find_next_snapshot_xid(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v16 = 0;
  v17 = 0;
  memset(v15, 170, sizeof(v15));
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = omap_obj_get(a1, 0, 0, &v17);
  if (v6)
  {
    extended = v6;
    if (obj_type(a1) == 13)
    {
      log_err("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (a1 + 4040), extended);
    }

    else
    {
      log_err("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (*(a1 + 384) + 212), extended);
    }

    return extended;
  }

  v8 = v17[47];
  obj_lock(v17, 1);
  if ((*(v8 + 32) & 1) == 0)
  {
    v9 = *(v8 + 56);
    if (v9)
    {
      v10 = *(v8 + 44);
      v19 = 0u;
      v20 = 0u;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v18 = omap_snapshot_key_cmp;
      DWORD2(v19) = 19;
      if (v10 == 2)
      {
        extended = btree_get_extended(a1, v10 & 0xFFFF0000, v9, 0, 0, &v18, 0, &v16);
        if (!extended)
        {
          v14 = a2;
          do
          {
            v15[0] = 0x800000010;
            v11 = bt_lookup_variant(v16, 0, &v14, v15 + 1, 8, &v15[1], v15, 4, 0, 0);
            if (v11)
            {
              v12 = 1;
            }

            else
            {
              v12 = (v15[1] & 1) == 0;
            }
          }

          while (!v12);
          extended = v11;
          if (!v11)
          {
            *a3 = v14;
            goto LABEL_20;
          }

          if (v11 != 2)
          {
            obj_type(a1);
            log_err("%s:%d: %s error searching snapshot tree: %d\n");
            goto LABEL_20;
          }

          goto LABEL_16;
        }
      }

      else
      {
        extended = 22;
      }

      obj_type(a1);
      log_err("%s:%d: %s unable to get snapshot tree: %d\n");
      goto LABEL_20;
    }
  }

LABEL_16:
  extended = 2;
LABEL_20:
  if (v16)
  {
    obj_release(v16);
  }

  obj_unlock(v17, 1);
  obj_release(v17);
  return extended;
}

uint64_t sub_10003EE90(void *a1, void *a2, unint64_t a3)
{
  if (obj_type(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *v6[6].__opaque;
    result = obj_modify(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = v6 + 18;
  }

  else
  {
    result = obj_modify(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = (a1 + 84);
    v7 = a1;
  }

  pthread_mutex_lock(v9);
  v10 = obj_oid(a2);
  v11 = obj_type_and_flags(a2);
  if (!obj_modify(a2, (v11 >> 29) & 2, a3) && obj_oid(a2) != v10)
  {
    v13 = obj_oid(a2);
    if (v6)
    {
      *(*&v6[5].__opaque[48] + 128) = v13;
      fs_sb_dirty(v6, a3);
      goto LABEL_12;
    }

    *(v7[47] + 160) = v13;
    obj_dirty(a1, a3, 0);
LABEL_16:
    v12 = (v7 + 84);
    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_12:
  v12 = v6 + 18;
LABEL_17:
  pthread_mutex_unlock(v12);
  return 0;
}

char *parse_nx_mount_options(char *a1, int *a2)
{
  getmnt_silent = 1;
  if (!a1)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    a2[1] = -1;
    return 0;
  }

  v12 = *a2;
  v4 = *(a2 + 4);
  v5 = (v4 >> 6) & 8 | v4 & 5 | (v4 >> 8) & 0x10;
  v6 = v4 << 18;
  if ((v4 & 0x1000) != 0)
  {
    v7 = 32;
  }

  else
  {
    v7 = 64;
  }

  v11 = v7 & (v6 >> 31) | v5;
  if (!getmntopts())
  {
    return "";
  }

  *a2 = v12;
  *(a2 + 4) = a2[2] & 0xCDFA | v11 & 1 | v11 & 4 | (((v11 & 0x30) != 0) << 12) | (((v11 & 0x60) != 0) << 13) | (((v11 >> 3) & 1) << 9);
  if ((v11 & 2) != 0)
  {
    v10 = getmntoptnum();
    a2[1] = v10;
    if (v10 == -1)
    {
      v8 = "checkpoint";
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  freemntopts();
  result = sub_10003F10C(&off_100054870, a1, v8);
  if (!result)
  {
    return 0;
  }

  return result;
}

char *sub_10003F10C(const char **a1, char *__s1, const char *a3)
{
  v4 = __s1;
  v6 = strdup(__s1);
  if (v6)
  {
    v7 = v6;
    __lasts = 0xAAAAAAAAAAAAAAAALL;
    v8 = strtok_r(v6, ",", &__lasts);
    if (v8)
    {
      while (1)
      {
        if (*v8 == 110)
        {
          v9 = 2 * (v8[1] == 111);
          v10 = v8[1] == 111 ? -2 : 0;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        v11 = &v8[v9];
        v12 = strchr(&v8[v9], 61);
        if (v12)
        {
          *v12 = 0;
        }

        v13 = *a1;
        if (!*a1)
        {
          break;
        }

        v14 = a1 + 3;
        while (strcasecmp(v13, v11))
        {
          v15 = *v14;
          v14 += 3;
          v13 = v15;
          if (!v15)
          {
            goto LABEL_19;
          }
        }

        if (a3 && !strcasecmp(v11, a3))
        {
          break;
        }

        v8 = strtok_r(0, ",", &__lasts);
        if (!v8)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      v4 += v10 + v11 - v7;
    }

    else
    {
LABEL_18:
      v4 = 0;
    }

    free(v7);
  }

  return v4;
}

uint64_t rolling_stats_init(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = new_lock(a1);
  if (!result)
  {
    v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
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

uint64_t spaceman_metazone_init(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  if (*(a1 + 637) == 1)
  {
    log_debug("%s:%d: %s Skipping metazone_init() as backing store is sparse\n", "spaceman_metazone_init", 72, (*(a1 + 384) + 212));
    return 0;
  }

  memset(v27, 170, sizeof(v27));
  v2 = sub_100009C74(a1, &v26);
  if (v2)
  {
    return v2;
  }

  v4 = v26;
  if (!v26)
  {
    return 19;
  }

  if (!*(v26 + 376))
  {
    v2 = 19;
    goto LABEL_32;
  }

  if (*(v26 + 1112) & 1) != 0 || (*(v26 + 1216))
  {
    v2 = 0;
LABEL_32:
    obj_release(v4);
    return v2;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v26;
    v9 = v26 + 104 * v5;
    *(v9 + 1112) = 0;
    *(v9 + 1016) = 0u;
    *(v9 + 1032) = 0u;
    *(v9 + 1048) = 0u;
    *(v9 + 1064) = 0u;
    *(v9 + 1080) = 0u;
    *(v9 + 1096) = 0u;
    v10 = *(v8 + 376);
    v11 = *(v10 + 32);
    v12 = *(v10 + 48 * v5 + 48);
    if (is_mul_ok(v12, v11))
    {
      v13 = v12 * v11;
    }

    else
    {
      v13 = 0x40000000000;
    }

    if (!spaceman_metazone_get_size(a2, v11, v12, v13, &v27[2], &v27[1]))
    {
      v14 = v8 + 104 * v5;
      v15 = v27[1] + v27[2] / v11;
      spaceman_metazone_get_partitions(v11, v27[2], v27[1], v15, v27, 0);
      v16 = v27[1];
      *(v14 + 1016) = v27[1];
      *(v14 + 1032) = v16;
      v17 = v27[0];
      *(v14 + 1024) = v27[0];
      *(v14 + 1042) = 1;
      *(v14 + 1048) = v17;
      *(v14 + 1064) = v27[0];
      *(v14 + 1056) = v15;
      *(v14 + 1074) = 1;
      *(v14 + 1113) = 1;
      v18 = v26;
      v19 = *(v26 + 1000 + 8 * v5);
      if (v19 < v15 && v19 >= v27[1])
      {
        if (v15 == v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15;
        }

        *(v26 + 1000 + 8 * v5) = v21;
      }

      if (*(v18 + 8 * v5 + 1496))
      {
        v22 = *(*(v18 + 376) + 36);
        v23 = v27[1] / v22;
        v24 = (v15 - 1) / v22;
        if (v23 <= v24)
        {
          do
          {
            *(*(v26 + 8 * v5 + 1496) + 4 * v23++) |= 0x4000000u;
          }

          while (v23 <= v24);
          v18 = v26;
        }
      }

      *(v18 + 104 * v5 + 1112) = 1;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v2 = 0;
  v4 = v26;
  if (v26)
  {
    goto LABEL_32;
  }

  return v2;
}

void spaceman_handle_metazone_freed(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 1112) == 1 && *(a2 + 1113) == 1)
  {
    if (*(a2 + 1016) <= a3 && *(a2 + 1024) > a3)
    {
      if (*(a2 + 1032) <= a3)
      {
        return;
      }

      v3 = (a2 + 1032);
      goto LABEL_15;
    }

    if (*(a2 + 1048) <= a3 && *(a2 + 1056) > a3)
    {
      if (*(a2 + 1064) <= a3)
      {
        return;
      }

      v3 = (a2 + 1064);
      goto LABEL_15;
    }

    if (*(a2 + 1080) <= a3 && *(a2 + 1088) > a3 && *(a2 + 1096) > a3)
    {
      v3 = (a2 + 1096);
LABEL_15:
      *v3 = a3;
    }
  }
}

uint64_t spaceman_update_metazone_alloc_index(uint64_t result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = result + 104 * a2 + 1016;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (result + 104 * a2 + 1080);
      v6 = 88;
      v7 = 80;
      v8 = 72;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = (result + 104 * a2 + 1048);
      v6 = 56;
      v7 = 48;
      v8 = 40;
    }
  }

  else
  {
    v6 = 24;
    v7 = 16;
    v8 = 8;
    v5 = (result + 104 * a2 + 1016);
  }

  v9 = *v5;
  if (v9 <= a4 && *(v4 + v8) > a4)
  {
    *(v4 + v7) = a4;
LABEL_18:
    *(v4 + v6) = 0;
    return result;
  }

  if (*(v4 + v7) == v9)
  {
    *(v4 + v7) = a4;
    v10 = 1;
  }

  else
  {
    if (*(v4 + v6) < 0)
    {
      *(v4 + v7) = v9;
      goto LABEL_18;
    }

    v11 = *(v4 + v6);
    if (!v11)
    {
      *(v4 + v7) = v9;
      return result;
    }

    *(v4 + v7) = a4;
    v10 = v11 + 1;
  }

  *(v4 + v6) = v10;
  return result;
}

uint64_t spaceman_get_metazone_alloc_index(void *a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = &a1[13 * a2 + 137];
    if (BYTE2(a1[13 * a2 + 138]) != 1)
    {
      v3 = &a1[13 * a2 + 133];
    }
  }

  else if (a3 == 1)
  {
    v3 = &a1[13 * a2 + 133];
  }

  else if (a3)
  {
    v5 = a2;
    v6 = a1[1];
    if (v6)
    {
      v7 = (v6 + 4040);
    }

    else
    {
      v7 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s tried to get metazone alloc index for unknown type: %d\n", "spaceman_get_metazone_alloc_index", 348, v7, a3);
    v3 = &a1[v5 + 125];
  }

  else
  {
    v3 = &a1[13 * a2 + 129];
  }

  return *v3;
}

uint64_t spaceman_allocation_init(void *a1)
{
  v18 = 0;
  v2 = sub_100009C74(a1, &v18);
  if (v2)
  {
    goto LABEL_17;
  }

  pthread_mutex_lock(v18 + 6);
  v3 = v18;
  v4 = *&v18[5].__opaque[48];
  if ((*(v4 + 144) & 1) == 0 || !*(v4 + 336))
  {
    v5 = *(v4 + 116);
    if (!v5)
    {
      v5 = *(v4 + 112);
    }

    v6 = (*(v4 + 128) + 8 * v5);
    v7 = *(v4 + 32);
    if (v6 + 2184 <= (v6 + v7 - 1) / v7 * v7)
    {
      memmove((v4 + 2520), (v4 + 336), v6 - 336);
      v10 = vadd_s32(*(v4 + 324), vdup_n_s32(0x888u));
      *(v4 + 324) = v10;
      v11 = (*(v4 + 332) + 2184);
      *(v4 + 332) = v11;
      v12 = (*(v4 + 80) + 2184);
      *(v4 + 80) = v12;
      v13 = (*(v4 + 128) + 2184);
      *&v3[13].__opaque[32] = v4 + v10.u32[0];
      *(v4 + 128) = v13;
      *&v3[13].__opaque[40] = v4 + v10.u32[1];
      *&v3[13].__opaque[48] = v4 + v11;
      v3[14].__sig = v4 + v12;
      *v3[14].__opaque = v4 + v13;
      *(v4 + 336) = 0x9D800000001;
      bzero((v4 + 344), 0x880uLL);
      *(v4 + 144) |= 1u;
    }

    else
    {
      v8 = *v18->__opaque;
      if (v8)
      {
        v9 = (v8 + 4040);
      }

      else
      {
        v9 = (*(*(v18->__sig + 392) + 384) + 212);
      }

      log_debug("%s:%d: %s refusing to upgrade spaceman! new_smp_size %u old_smp_size %u block_size %u\n", "spaceman_upgrade_sm_version_0_to_1", 398, v9, v6 + 2184, v6, v7);
      log_warn("%s:%d: %s failed to upgrade spaceman from version 0 to 1: %d\n", "spaceman_allocation_init", 456, (a1[48] + 212), 27);
    }
  }

  sub_10000DE34(a1, v18);
  v2 = spaceman_metazone_init(a1, 0);
  if (v2)
  {
LABEL_17:
    v16 = v2;
  }

  else
  {
    spaceman_sanitize_datazone(v18);
    v14 = 1;
    while (1)
    {
      v15 = spaceman_datazone_init(a1, v14);
      if (v15)
      {
        break;
      }

      if (++v14 == 5)
      {
        v2 = sub_100000FBC(a1, v18);
        goto LABEL_17;
      }
    }

    v16 = v15;
    log_err("%s:%d: %s failed to initialize data zone for allocations of size %llu, error %d\n", "spaceman_allocation_init", 491, (a1[48] + 212), v14, v15);
  }

  if (v18)
  {
    pthread_mutex_unlock(v18 + 6);
    obj_release(v18);
  }

  return v16;
}

const char *spaceman_sanitize_datazone(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 47);
    if (*(v2 + 144))
    {
      if (*(v2 + 336))
      {
        v3 = 0;
        v4 = v2 + 344;
        v25 = v2 + 368;
        v26 = v2 + 48;
        v5 = 1;
        do
        {
          v27 = v5;
          v6 = *(v26 + 48 * v3);
          if (v6)
          {
            v7 = 0;
            v8 = (v25 + 1088 * v3);
            do
            {
              v9 = v4 + 1088 * v3 + 136 * v7;
              if (*v9 >= v6 || ((v10 = *(v9 + 8), v10 <= v6) ? (v11 = *v9 > v10) : (v11 = 1), v11))
              {
                v12 = *(v1 + 1);
                if (v12)
                {
                  v13 = (v12 + 4040);
                }

                else
                {
                  v13 = (*(*(*v1 + 392) + 384) + 212);
                }

                result = log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid current boundaries\n", "spaceman_sanitize_datazone", 676, v13, v7);
                v14 = 1;
              }

              else
              {
                v14 = 0;
              }

              v15 = 0;
              v16 = v8;
              while (1)
              {
                v17 = *(v16 - 1);
                if (v17 >= v6)
                {
                  break;
                }

                if (*v16 > v6 || v17 > *v16)
                {
                  break;
                }

                ++v15;
                v16 += 2;
                if (v15 == 7)
                {
                  if (*(v9 + 130) <= 6u)
                  {
                    if ((v14 & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_35;
                  }

LABEL_31:
                  v21 = *(v1 + 1);
                  if (v21)
                  {
                    v22 = (v21 + 4040);
                  }

                  else
                  {
                    v22 = (*(*(*v1 + 392) + 384) + 212);
                  }

                  log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary index\n", "spaceman_sanitize_datazone", 695, v22, v7);
                  goto LABEL_35;
                }
              }

              v19 = *(v1 + 1);
              if (v19)
              {
                v20 = (v19 + 4040);
              }

              else
              {
                v20 = (*(*(*v1 + 392) + 384) + 212);
              }

              log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary %llu\n", "spaceman_sanitize_datazone", 686, v20, v7, v15);
              if (*(v9 + 130) >= 7u)
              {
                goto LABEL_31;
              }

LABEL_35:
              v23 = *(v1 + 1);
              if (v23)
              {
                v24 = (v23 + 4040);
              }

              else
              {
                v24 = (*(*(*v1 + 392) + 384) + 212);
              }

              result = log_warn("%s:%d: %s Clearing persistent allocation zone at slot %llu\n", "spaceman_sanitize_datazone", 701, v24, v7);
              *(v9 + 128) = 0;
              *(v9 + 96) = 0u;
              *(v9 + 112) = 0u;
              *(v9 + 64) = 0u;
              *(v9 + 80) = 0u;
              *(v9 + 32) = 0u;
              *(v9 + 48) = 0u;
              *v9 = 0u;
              *(v9 + 16) = 0u;
LABEL_39:
              ++v7;
              v8 += 17;
            }

            while (v7 != 8);
          }

          v5 = 0;
          v3 = 1;
        }

        while ((v27 & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t spaceman_datazone_init(void *a1, uint64_t a2)
{
  v12 = 0;
  v4 = sub_100009C74(a1, &v12);
  if (v4)
  {
    return v4;
  }

  if (!v12)
  {
    return 19;
  }

  v6 = v12[47];
  if (!v6)
  {
    v4 = 19;
    goto LABEL_15;
  }

  if ((a2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 22;
    goto LABEL_15;
  }

  v7 = &v12[4 * a2 - 4];
  if (v7[156])
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 56);
  if (*(v12 + 1112) != 1 || v8 < 8)
  {
    goto LABEL_14;
  }

  v10 = v7 + 153;
  *(v12 + 1352) = 1;
  *(v7 + 153) = 0u;
  *(v7 + 155) = 0u;
  v11 = spaceman_initialize_allocation_zone_from_disk(v12, 0, a2);
  if (v11)
  {
    v4 = v11;
    log_err("%s:%d: %s failed to initialize allocation zone for allocations of %llu blocks from disk: error %d\n", "spaceman_datazone_init", 600, (a1[48] + 212), a2, v11);
  }

  else
  {
    if (*(v10 + 25))
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_datazone_init", 611, (a1[48] + 212), 0, a2, *v10);
    v4 = 0;
    *(v10 + 24) = 1;
  }

LABEL_15:
  if (v12)
  {
    obj_release(v12);
  }

  return v4;
}

uint64_t spaceman_initialize_allocation_zone_from_disk(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 22;
  if (a1 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = &a1[17 * a2 + 149 + 4 * a3];
    v8 = a1[47];
    if ((*(v8 + 144) & 1) != 0 && *(v8 + 336))
    {
      v9 = v8 + 344;
      v10 = a3;
      v11 = -1;
      LOBYTE(v12) = 1;
      v13 = 8;
      v14 = v6;
      do
      {
        v15 = v14 & 7;
        v16 = *(v8 + 344 + 1088 * a2 + 136 * v15 + 128);
        if (v16 == v10)
        {
          v19 = (v9 + 1088 * a2 + 136 * v15);
          v7[2] = v19;
          v20 = sub_10003FFD8(a1, a2, v6, *v19 / *(v8 + 36));
          v3 = v20;
          if (v20)
          {
            v21 = a1[1];
            if (v21)
            {
              v22 = (v21 + 4040);
            }

            else
            {
              v22 = (*(*(*a1 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s failed to update allocation zone boundaries: error %d\n", "spaceman_initialize_allocation_zone_from_disk", 965, v22, v20);
          }

          return v3;
        }

        v17 = v11 == -1 && v16 == 0;
        v12 = (v16 != 0) & v12;
        if (v17)
        {
          v11 = v15;
        }

        v14 = v15 + 1;
        --v13;
      }

      while (v13);
      if (v12)
      {
        goto LABEL_14;
      }

      v3 = 0;
      v7[2] = v9 + 1088 * a2 + 136 * v11;
      *(v7 + 25) = 1;
    }

    else
    {
LABEL_14:
      v3 = 0;
      *(v7 + 25) = 257;
    }
  }

  return v3;
}

void spaceman_datazone_destroy(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = a1 + 1224;
    v3 = a1 + 1250;
    v4 = 1;
    do
    {
      v5 = v4;
      if (*(v2 + 136 * v1 + 128) == 1)
      {
        v6 = (v3 + 136 * v1);
        v7 = 4;
        do
        {
          if (*(v6 - 2) == 1 && *v6 == 1)
          {
            v8 = *(v6 - 10);
            if (v8)
            {
              *(v6 - 2) = 0;
              _apfs_free(v8, 136);
              *(v6 - 10) = 0;
            }
          }

          v6 += 32;
          --v7;
        }

        while (v7);
      }

      v4 = 0;
      v1 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

uint64_t sub_10003FFD8(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *(a1 + 376);
  v7 = v6 + 48 * a2;
  v8 = *(v7 + 56);
  if (v8 <= a4)
  {
    return 22;
  }

  v9 = a3;
  v10 = a2;
  v11 = a1 + 136 * a2 + 32 * a3;
  v12 = v11 + 1224;
  v13 = *(v11 + 1240);
  v14 = *(v6 + 36);
  v15 = *(v7 + 48);
  v16 = *(v11 + 1224);
  v17 = *(v11 + 1250) == 1 && v13 == 0;
  if (v17)
  {
    v13 = _apfs_calloc_typed(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
    *(v12 + 16) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  if (*(v12 + 24) == 1)
  {
    v18 = v13[65];
    v19 = (v13 + 8);
    v20 = 7;
    v21 = v18;
    while (1)
    {
      v22 = v21 % 7;
      v23 = &v19[16 * (v21 % 7)];
      if (*(v23 + 1))
      {
        if (*v23 / *(*(a1 + 376) + 36) == a4)
        {
          break;
        }
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    if (v22 == v18)
    {
LABEL_19:
      *&v19[16 * v18] = *v12;
      v13[65] = v18 + 1 - 7 * ((((v18 + 1 - ((9363 * (v18 + 1)) >> 16)) >> 1) + ((9363 * (v18 + 1)) >> 16)) >> 2);
      goto LABEL_20;
    }

    do
    {
      if (v22 == 6)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      *&v19[16 * v22] = *&v19[16 * v28];
      v22 = v28;
    }

    while (v28 != v18);
    v29 = v18 - 1;
    v17 = v18 == 0;
    v30 = 6;
    if (!v17)
    {
      v30 = v29;
    }

    *&v19[16 * v30] = *v12;
  }

LABEL_20:
  v25 = v14 * a4;
  v26 = v14 + v14 * a4;
  if (v8 - 1 == a4)
  {
    v26 = v15;
  }

  *v13 = v25;
  *(v13 + 1) = v26;
  *v12 = v25;
  *(v12 + 8) = v26;
  v13[64] = v9 + 1;
  *(v12 + 25) = 0;
  v27 = a1 + 8 * v10;
  if (*(v12 + 24) == 1)
  {
    *(*(v27 + 1496) + 4 * (v16 / v14)) &= ~0x8000000u;
  }

  result = 0;
  *(*(v27 + 1496) + 4 * a4) |= 0x8000000u;
  return result;
}

uint64_t spaceman_get_number_of_disabled_allocation_zones(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 136 * a2 + 1352) == 1)
    {
      v2 = (result + 136 * a2 + 1249);
      v3 = 4;
      result = 4;
      do
      {
        if ((*(v2 - 1) & 1) != 0 || (*v2 & 1) == 0)
        {
          result = (result - 1);
        }

        v2 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t spaceman_evaluate_chunk_for_disabled_allocation_zones(void *a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  if (!a1 || LOBYTE(a1[17 * a2 + 169]) != 1 || *(a1[47] + 48 * a2 + 56) <= a3)
  {
    return 22;
  }

  v8 = 0;
  for (i = &a1[17 * a2 + 156] + 1; ; i += 32)
  {
    if ((*(i - 1) & 1) == 0 && *i == 1)
    {
      v10 = *(a1[a2 + 187] + 4 * a3);
      v11 = v10 & 0xC000000;
      v12 = *&v10 & 0xFFFFFFLL;
      if (!v11 && v8 < v12)
      {
        break;
      }
    }

    if (++v8 == 4)
    {
      return 0;
    }
  }

  v16 = sub_10003FFD8(a1, a2, v8, a3);
  v17 = a1[1];
  if (v16)
  {
    v14 = v16;
    if (v17)
    {
      v18 = (v17 + 4040);
    }

    else
    {
      v18 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s failed to assign chunk %llu to allocation zone %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1135, v18, a3, v8);
  }

  else
  {
    if (v17)
    {
      v19 = (v17 + 4040);
    }

    else
    {
      v19 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1140, v19, a2, v8 + 1, *(i - 25));
    v14 = 0;
    *(i - 1) = 1;
    *a4 = 1;
  }

  return v14;
}

uint64_t spaceman_get_new_chunk_for_allocation_zone(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = 22;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3 <= 1 && a4 <= 3)
      {
        v8 = *(a2 + 376);
        memset(v74, 170, 32);
        v72 = 0;
        v73 = 0;
        v9 = a3;
        v10 = a2 + 136 * a3 + 32 * a4;
        v11 = *(v10 + 1224);
        v12 = v8[9];
        v13 = *(v10 + 1240);
        v14 = v8 + 12;
        v15 = *&v8[12 * a3 + 14];
        if (!v13)
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 130);
        v17 = v13 + 16;
        v18 = 7;
        while (1)
        {
          v19 = (v17 + 16 * v16);
          v20 = v19[1];
          if (v20)
          {
            if (v20 <= *&v14[12 * a3])
            {
              v21 = *v19 / v12;
              v22 = *(*(v5 + 1496 + 8 * a3) + 4 * v21);
              v23 = v22 & 0xC000000;
              v24 = *&v22 & 0xFFFFFFLL;
              if (!v23 && v24 > a4)
              {
                break;
              }
            }
          }

          v16 = (v16 + 1 - 7 * ((613566757 * (v16 + 1)) >> 32));
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        if (v21 < v15)
        {
          v32 = 0;
LABEL_55:
          v57 = sub_10003FFD8(v5, v6, a4, v21);
          if (v57)
          {
            v4 = v57;
            log_err("%s:%d: %s failed to update allocate zone %llu: error %d\n");
          }

          else
          {
            v59 = *(v5 + 1592);
            if (v59)
            {
              ++*(v59 + (v9 << 6) + 8 * a4 + 120);
            }

            if (*(v5 + 1600))
            {
              v60 = (*(v5 + 1608) + 16 * *(v5 + 1604));
              v4 = 0;
              *v60 = get_timestamp();
              v60[1] = (16 * (v21 & 0xFFFFFFFFFFLL)) | (2 * a4) | (v32 << 44) | v9;
              v61 = *(v5 + 1604);
              if ((v61 + 1) < *(v5 + 1600))
              {
                v62 = v61 + 1;
              }

              else
              {
                v62 = 0;
              }

              *(v5 + 1604) = v62;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
LABEL_14:
          v26 = v11 / v12;
          v27 = v8[10];
          v28 = v15 - 1;
          v30 = v26 + 1 == v27 || v26 == v28;
          v31 = &v14[12 * a3];
          LODWORD(v14) = v31[4];
          if (v14 > v30)
          {
            v70 = 0;
            v32 = 0;
            v67 = v31;
            v68 = (v26 / v27);
            v64 = v26;
            v65 = v5 + 896;
            v63 = v5;
            v33 = v5 + 1496;
            v69 = -1;
            v21 = -1;
            do
            {
              v34 = (v68 + v30) % v14;
              if (v31[5])
              {
                v35 = v8[11];
                v36 = v34 / v35;
                v37 = v69;
                v38 = v70;
                if (v34 / v35 != v69 || v70 == 0)
                {
                  v40 = *(*(v65 + 8 * v9) + 8 * v36);
                  if (v73)
                  {
                    obj_release(v73);
                    v73 = 0;
                  }

                  v74[2] = v8;
                  v74[3] = __PAIR64__(v36, a3);
                  v41 = obj_get(*(a1 + 392), 0x40000000, v40, &xmmword_1000517C0, &v74[2], 0, 0, 0, &v73);
                  if (v41)
                  {
                    v4 = v41;
                    log_err("%s:%d: %s error getting cab %d: %d\n", "spaceman_get_new_chunk_for_allocation_zone", 1248, (*(a1 + 384) + 212), v36, v41);
                    goto LABEL_58;
                  }

                  v38 = v73[7];
                  v35 = v8[11];
                  v37 = v36;
                }

                v69 = v37;
                v70 = v38;
                v42 = (v38 + 8 * (v34 - v35 * v37) + 40);
                v6 = a3;
              }

              else
              {
                v42 = (*(v65 + 8 * v9) + 8 * v34);
              }

              v43 = *v42;
              v74[0] = v8;
              v74[1] = __PAIR64__(v34, v6);
              v44 = obj_get(*(a1 + 392), 0x40000000, v43, &xmmword_1000517D0, v74, 0, 0, 0, &v72);
              if (v44)
              {
                v4 = v44;
                log_err("%s:%d: %s error getting cib %d: %d\n");
                goto LABEL_58;
              }

              if (v30)
              {
                LODWORD(v45) = 0;
              }

              else
              {
                LODWORD(v45) = v64 % v8[10] + 1;
              }

              v31 = v67;
              v46 = v72[7];
              v47 = *(v46 + 36);
              v48 = v47 >= v45;
              v49 = v47 - v45;
              if (v49 != 0 && v48)
              {
                v50 = v34 * v8[10];
                v45 = v45;
                v51 = (v46 + 32 * v45 + 60);
                v52 = v21;
                do
                {
                  v53 = *v51;
                  v51 += 8;
                  v54 = v53 & 0xFFFFF;
                  if (v32 < v54)
                  {
                    v21 = v50 + v45;
                    v55 = *(*(v33 + 8 * v9) + 4 * (v50 + v45));
                    if ((v55 & 0xC000000) == 0 && (*&v55 & 0xFFFFFFuLL) > a4)
                    {
                      v32 = v54;
                      v52 = v50 + v45;
                      if (v54 == v8[9])
                      {
                        break;
                      }
                    }
                  }

                  ++v45;
                  v21 = v52;
                  --v49;
                }

                while (v49);
              }

              if (v32 == v8[9])
              {
                break;
              }

              obj_release(v72);
              v72 = 0;
              ++v30;
              v14 = v67[4];
            }

            while (v30 < v14);
            v5 = v63;
            if (v21 != -1)
            {
              goto LABEL_55;
            }
          }

          v4 = 28;
        }

LABEL_58:
        if (v73)
        {
          obj_release(v73);
        }

        if (v72)
        {
          obj_release(v72);
        }
      }
    }
  }

  return v4;
}

BOOL spaceman_should_avoid_data_allocation_at_block(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8 * a2 + 1496);
  if (!v4)
  {
    return 0;
  }

  v5 = a1 + 104 * a2;
  if (*(v5 + 1112) == 1)
  {
    v6 = v5 + 1016;
    v7 = 40;
    if (*(v6 + 90))
    {
      v7 = 72;
    }

    if (*v6 <= a3 && *(v6 + v7) > a3)
    {
      return 1;
    }
  }

  if ((*(v4 + 4 * (a3 / *(*(a1 + 376) + 36))) & 0x8000000) == 0)
  {
    return 0;
  }

  if (a4 <= 4 && (v9 = a1 + 136 * a2 + 32 * a4, *(v9 + 1216) == 1) && (v10 = (v9 + 1192), *v10 <= a3))
  {
    return v10[1] <= a3;
  }

  else
  {
    return 1;
  }
}

BOOL spaceman_clip_extent(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, unint64_t a6, unint64_t *a7, unint64_t *a8)
{
  v19 = 0;
  v14 = calc_overlap_range(a1, a2, a3, a4, &v19);
  if (v14)
  {
    v15 = a2 - v14;
    if (a2 == v14)
    {
      v16 = 0;
LABEL_17:
      *a8 = v16;
      return v14 != 0;
    }

    v16 = v19 - a1;
    if (v19 == a1)
    {
      v17 = v14 + a1;
LABEL_6:
      *a7 = v17;
LABEL_7:
      v16 = v15;
      goto LABEL_17;
    }

    v15 = a2 - (v16 + v14);
    if ((a5 & 0x4000) != 0)
    {
      if (a6 > v19 && a2 != v16 + v14 && (v19 + v14 <= a6 || a6 - v19 > v19 + v14 - a6))
      {
        *a7 = v19 + v14;
        goto LABEL_7;
      }
    }

    else if (v15 > v16)
    {
      v17 = v19 + v14;
      goto LABEL_6;
    }

    *a7 = a1;
    goto LABEL_17;
  }

  return v14 != 0;
}

uint64_t spaceman_clip_extent_to_zones(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, unint64_t *a8, unint64_t *a9)
{
  v12 = a5;
  v13 = a4;
  v15 = a2;
  v16 = *(a1 + 1024);
  if (v16)
  {
    v17 = 0;
    if (!a3 && (*(a1 + 634) & 1) == 0)
    {
      v18 = *(a1 + 1016);
      if ((a6 & 0x200) != 0)
      {
        if (v18 && spaceman_clip_extent(a4, a5, 0, v18, a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        v18 += v16;
        v16 = *(*(a2 + 376) + 48) - v18;
      }

      else
      {
        v17 = 0;
      }

      v19 = spaceman_clip_extent(v13, v12, v18, v16, a6, a7, a8, a9);
      v15 = a2;
      if (v19)
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if ((a6 & 0x2000) != 0)
  {
    v20 = v15 + 104 * a3;
    if (*(v20 + 1112) == 1)
    {
      v21 = v20 + 1016;
      v22 = 40;
      if (*(v21 + 90))
      {
        v22 = 72;
      }

      if (spaceman_clip_extent(v13, v12, *v21, *(v21 + v22) - *v21, a6, a7, a8, a9))
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }

    if (*(v15 + 136 * a3 + 1352) == 1)
    {
      v23 = (v15 + 136 * a3 + 1248);
      v24 = 4;
      do
      {
        if (*v23 == 1 && spaceman_clip_extent(v13, v12, *(v23 - 3), *(v23 - 2) - *(v23 - 3), a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        v23 += 32;
        --v24;
      }

      while (v24);
    }
  }

  return v17 & 1;
}

void spaceman_zone_info_on_tier(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = a2 + 104 * a3;
  if (*(v4 + 1112) == 1)
  {
    v5 = (v4 + 1016);
    v6 = *v5;
    a4[5] = *v5;
    if (*(v5 + 90) == 1)
    {
      v7 = v5[9];
      a4[11] = v5[8];
      a4[12] = v7;
      v8 = v5[5];
    }

    else
    {
      v8 = v5[5];
      v7 = v8;
    }

    a4[6] = v7;
    a4[7] = v6;
    v9 = v5[1];
    v10 = v5[4];
    a4[8] = v9;
    a4[9] = v10;
    a4[10] = v8;
  }

  if (*(a2 + 136 * a3 + 1352) == 1)
  {
    v11 = 0;
    v12 = a4 + 15;
    do
    {
      v13 = a2 + 136 * a3 + 1224 + 32 * v11;
      if (*(v13 + 24) == 1)
      {
        v14 = 0;
        v15 = &a4[17 * v11 + 13];
        *v15 = *v13;
        v16 = *(v13 + 16);
        do
        {
          *&v12[v14] = *(v16 + 16 + v14 * 8);
          v14 += 2;
        }

        while (v14 != 14);
        *(v15 + 32) = *(v16 + 128);
      }

      ++v11;
      v12 += 17;
    }

    while (v11 != 4);
  }
}

uint64_t get_timestamp()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return timespec_to_apfs_timestamp(&v1.tv_sec);
}

uint64_t timespec_to_apfs_timestamp(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 / 1000000000;
  v4 = v2 % 1000000000;
  if (*a1 < 0 && v2 >= 1)
  {
    v5 = v3 + 1;
    v4 -= 1000000000;
  }

  else
  {
    v6 = v2 >= 0;
    if (v2 < 0)
    {
      v5 = v3 - 1;
    }

    else
    {
      v5 = v2 / 1000000000;
    }

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1000000000;
    }

    if (v1 >= 1)
    {
      v4 = v7;
    }

    else
    {
      v5 = v3;
    }
  }

  v8 = v1 + v5;
  if (__OFADD__(v1, v5) || (v9 = 1000000000 * v8, (v8 * 1000000000) >> 64 != (1000000000 * v8) >> 63) || (result = v4 + v9, __OFADD__(v4, v9)))
  {
    if (v1 > 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return 0x8000000000000000;
    }
  }

  return result;
}

uint64_t (*tree_key_compare_function_for_type(unsigned __int16 a1))()
{
  v1 = sub_10000D16C;
  if (a1 <= 0x1Eu)
  {
    if (a1 <= 0xDu)
    {
      switch(a1)
      {
        case 9u:
          return v1;
        case 0xAu:
          return sub_1000069C0;
        case 0xBu:
          return omap_key_cmp;
      }

      return 0;
    }

    if (a1 - 14 >= 3)
    {
      if (a1 == 19)
      {
        return omap_snapshot_key_cmp;
      }

      return 0;
    }

    return apfs_key_compare;
  }

  if (a1 <= 0x21u)
  {
    switch(a1)
    {
      case 0x1Fu:
        return fext_tree_key_cmp;
      case 0x20u:
        return pfkur_tree_key_cmp;
      case 0x21u:
        return evict_mapping_key_compare;
    }

    return 0;
  }

  if (a1 > 0x23u)
  {
    if (a1 != 36)
    {
      if (a1 == 255)
      {
        return test_key_compare_function;
      }

      return 0;
    }

    return apfs_key_compare;
  }

  if (a1 == 34)
  {
    return doc_id_tree_key_cmp;
  }

  else
  {
    return graft_blockmap_lut_tree_key_compare;
  }
}

uint64_t tx_mgr_init(uint64_t a1, uint64_t a2, pthread_mutex_t **a3)
{
  v6 = *(*(a1 + 376) + 36);
  v7 = _apfs_calloc_typed(1uLL, 0x130uLL, 0x10A0040BC325467uLL);
  if (v7)
  {
    v8 = v7;
    v7[1].__sig = a2;
    *v7[1].__opaque = 0;
    *&v7[1].__opaque[40] = 0;
    *&v7[1].__opaque[8] = 0;
    *&v7[1].__opaque[12] = (v6 - 40) / 0x28uLL;
    *&v7[1].__opaque[48] = v7 + 112;
    v7[2].__sig = 0;
    *v7[2].__opaque = v7 + 2;
    inited = new_lock(v7);
    if (!inited)
    {
      v11 = new_cv((v8 + 256));
      if (v11)
      {
        v10 = v11;
        free_lock(v8);
        goto LABEL_7;
      }

      if ((*(a1 + 627) & 1) != 0 || (inited = tx_mgr_init_tx(v8, v6), !inited))
      {
        v10 = 0;
        v13 = *(a1 + 376);
        v14 = *(v13 + 104) & 0x7FFFFFFF7FFFFFFFLL;
        *(v8 + 88) = v14;
        *(v8 + 96) = *(v13 + 128);
        *(v8 + 104) = v14;
        *a3 = v8;
        return v10;
      }
    }

    v10 = inited;
LABEL_7:
    _apfs_free(v8, 304);
    return v10;
  }

  return 12;
}

uint64_t tx_mgr_init_tx(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (a1 + 120);
  v5 = 4;
  while (1)
  {
    v6 = _apfs_calloc_typed(1uLL, 0x78uLL, 0x10A004067E43129uLL);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v6[7] = _apfs_malloc_typed(v3, 0x256D25E1uLL);
    v7[8] = _apfs_malloc_typed(v3, 0x60A3118CuLL);
    v8 = *v4;
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    *v4 = v7;
    if (!v7[7] || !v7[8])
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  while (1)
  {
    v15 = *(a1 + 112);
    if (!v15)
    {
      break;
    }

    v10 = *v15;
    v11 = v15[1];
    v12 = (*v15 + 8);
    if (!*v15)
    {
      v12 = v4;
    }

    *v12 = v11;
    *v11 = v10;
    v13 = v15[7];
    if (v13)
    {
      _apfs_free(v13, v3);
    }

    v14 = v15[8];
    if (v14)
    {
      _apfs_free(v14, v3);
    }

    _apfs_free(v15, 120);
  }

  return 12;
}

void tx_mgr_free_tx(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = a2[18];
  if (v6)
  {
    log_err("%s:%d: %s Trash unfinished tx xid=0x%llx\n", "tx_mgr_free_tx", 187, (*(a1 + 384) + 212), *(v6 + 16));
    v7 = a2[18];
    v8 = a2[15];
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    a2[15] = v7;
    a2[18] = 0;
  }

  v9 = a2[16];
  if (v9)
  {
    log_err("%s:%d: %s Trash unfinished pending tx, xid range = 0x%llx - 0x%llx\n", "tx_mgr_free_tx", 195, (*(a1 + 384) + 212), *(v9 + 16), *(**(a2[17] + 8) + 16));
    v10 = a2[16];
    if (v10)
    {
      *a2[15] = v10;
      *(a2[16] + 8) = a2[15];
      a2[15] = a2[17];
      a2[16] = 0;
      a2[17] = a2 + 16;
    }
  }

  v11 = a2[14];
  if (v11)
  {
    v12 = a2 + 15;
    do
    {
      v14 = *v11;
      v13 = v11[1];
      v15 = (*v11 + 8);
      if (!*v11)
      {
        v15 = v12;
      }

      *v15 = v13;
      *v13 = v14;
      v16 = v11[7];
      if (v16)
      {
        _apfs_free(v16, a3);
      }

      v17 = v11[8];
      if (v17)
      {
        _apfs_free(v17, a3);
      }

      _apfs_free(v11, 120);
      v11 = v14;
    }

    while (v14);
  }
}

void tx_mgr_destroy(uint64_t a1, uint64_t a2, unsigned int a3)
{
  tx_mgr_free_tx(a1, a2, a3);
  free_lock(a2);
  free_cv((a2 + 256));

  _apfs_free(a2, 304);
}

BOOL xid_is_current_tx(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 624) == 1)
  {
    v2 = (*(a1 + 376) + 96);
    return *v2 == a2;
  }

  v3 = *(a1 + 400);
  if (v3)
  {
    v4 = *(v3 + 144);
    if (v4)
    {
      v2 = (v4 + 16);
      return *v2 == a2;
    }
  }

  return 0;
}

uint64_t tx_checkpoint_space_check(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = *(a1 + 400);
  while (1)
  {
    v8 = *(v7 + 96);
    v9 = *(v7 + 104);
    v10 = v9;
    if (v8 > v9)
    {
      v10 = *(v7 + 88) + v9;
    }

    v11 = *(v7 + 100);
    v12 = *(v7 + 108);
    v13 = v12;
    if (v11 > v12)
    {
      v13 = *(v7 + 92) + v12;
    }

    v14 = v10 - v8;
    v15 = v13 - v11;
    v16 = *(a2 + 48) + a3;
    if (v16 <= v15 && !(v6 & 1 | (*(a2 + 40) + 1 > v14)))
    {
      return 0;
    }

    if ((v6 & 1) != 0 || !*(v7 + 128))
    {
      break;
    }

    sub_10004148C(a1, 80, 0);
    v6 = 1;
  }

  if (!*(v7 + 82))
  {
    log_err("%s:%d: %s checkpoint area out of space: stable: %d %d - next %d %d available %d %d tx[%lld] %d %d\n", "tx_checkpoint_space_check", 493, (*(a1 + 384) + 212), v9, v12, v8, v11, v14, v15, *(a2 + 16), *(a2 + 40) + 1, v16);
  }

  *(v7 + 82) = 1;
  return 28;
}

uint64_t sub_10004148C(uint64_t a1, char a2, int a3)
{
  v5 = *(a1 + 400);
  if ((a2 & 0x40) != 0)
  {
    v6 = *(v5 + 128);
    if (!v6 || (*(v6 + 24) & 0x40) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    pthread_mutex_unlock(*(a1 + 400));
  }

  v7 = dev_barrier(*(a1 + 384));
  if (a3)
  {
    pthread_mutex_lock(v5);
  }

  if (v7 == 25 || v7 == 0)
  {
    v9 = *(v5 + 128);
    if (v9)
    {
      do
      {
        v10 = *v9;
        v11 = *(v9 + 6);
        if ((v11 & 0x40) != 0)
        {
          *(v9 + 6) = v11 & 0xFFFFFFBF;
          v21.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v21.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
          v12 = 1000000 * v21.tv_sec + SLODWORD(v21.tv_nsec) / 1000;
          v13 = v12 - v9[9];
          v9[9] = v12;
          v9[13] += v13;
          v14 = v9[2];
          if (*(a1 + 632) != 1 || v14 < *(*(a1 + 376) + 1408))
          {
            v15 = *(v9 + 11);
            *(v5 + 104) = *(v9 + 9);
            *(v5 + 108) = v15;
          }

          sub_10000AFD0(a1, v14);
          v16 = *v9;
          v17 = v9[1];
          v18 = (*v9 + 8);
          if (!*v9)
          {
            v18 = (v5 + 136);
          }

          *v18 = v17;
          *v17 = v16;
          v19 = *(v5 + 120);
          *v9 = 0;
          v9[1] = v19;
          *v19 = v9;
          *(v5 + 120) = v9;
          cv_wakeup((v5 + 256));
        }

        v9 = v10;
      }

      while (v10);
    }

    return 0;
  }

  return v7;
}

uint64_t tx_checkpoint_write_prepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 376) + 36) + *(a3 + 48) - 1) / *(*(a1 + 376) + 36);
  v6 = *(a2 + 64);
  if (*(v6 + 36) == *(*(a1 + 400) + 84))
  {
    ++*(a2 + 40);
    *(v6 + 36) = 0;
  }

  v7 = tx_checkpoint_space_check(a1, a2, v5);
  if (!v7)
  {
    if ((*(a3 + 19) & 0x20) == 0)
    {
      v10 = *(a3 + 56);
      v8.i64[0] = *(a3 + 36);
      v10[3] = v8.i64[0];
      v11 = *(a2 + 16);
      v10[1] = *(a3 + 112);
      v10[2] = v11;
      obj_checksum_set(a3, v8, v9);
    }

    *(a3 + 120) = *(a2 + 16);
    *(a3 + 144) = 0;
    ++*(*(a2 + 64) + 36);
    *(a2 + 48) += v5;
  }

  return v7;
}

uint64_t tx_checkpoint_write(uint64_t *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a1[50];
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *(a1[47] + 36);
  v10 = *(a3 + 48);
  v11 = *(a2 + 64);
  if (*(v11 + 36) == v8[21])
  {
    obj_checksum_set_phys(a1, v11, *(a1[47] + 36), a4, a5);
    v12 = dev_write(a1[48]);
    if (v12)
    {
      v13 = v12;
      if (!v8[19])
      {
        log_err("%s:%d: %s failed to write checkpoint map block %lld: %d\n");
      }

      return v13;
    }

    v14 = (*(a2 + 40) + v8[24]) % v8[22];
    v40 = -1;
    v15 = sub_1000073E8(a1, v14, &v40);
    if (v15)
    {
      v13 = v15;
      if (!v8[19])
      {
        log_err("%s:%d: %s error getting next checkpoint map block address %d: %d\n");
      }

      return v13;
    }

    bzero(*(a2 + 64), v9);
    v16 = *(a2 + 64);
    *(v16 + 24) = 1073741836;
    v17 = *(a2 + 16);
    *(v16 + 8) = v40;
    *(v16 + 16) = v17;
    ++*(a2 + 40);
  }

  v18 = (*(a2 + 48) + v8[25]) % v8[23];
  v39 = -1;
  v19 = sub_10000742C(a1, v18, &v39, &v38);
  if (v19)
  {
    v13 = v19;
    if (!v8[19])
    {
      log_err("%s:%d: %s error getting next checkpoint data block address %d: %d\n");
    }
  }

  else
  {
    v20 = (v9 + v10 - 1) / v9;
    pthread_mutex_lock((a1[49] + 328));
    for (i = (a3 + 32); (atomic_fetch_or_explicit(i, 8u, memory_order_relaxed) & 8) != 0; i = (a3 + 32))
    {
      pthread_mutex_unlock((a1[49] + 328));
      pthread_mutex_lock((a1[49] + 328));
    }

    v36 = *(a3 + 64);
    *(a3 + 128) = v39;
    v37 = v20;
    if (v20 < 1)
    {
LABEL_27:
      if (v36 == *(a3 + 56))
      {
        v26 = 0;
      }

      else
      {
        v26 = v36;
      }

      *(a3 + 64) = 0;
      v27 = a1[49];
      v28 = *(*(v27 + 872) + 104);
      *(v27 + 872) = v28;
      if (!v28)
      {
        *(v27 + 880) = v27 + 872;
      }

      *(a3 + 104) = 3735928559;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      v29 = *(a2 + 64);
      v30 = *(v29 + 36);
      v31 = v29 + 40 * v30;
      *(v31 + 40) = *(a3 + 36);
      *(v31 + 48) = *(a3 + 48);
      v32 = *(a3 + 8);
      if (v32)
      {
        v32 = obj_oid(v32);
        v29 = *(a2 + 64);
        v30 = *(v29 + 36);
      }

      v33 = (v29 + 40 * v30);
      v34 = *(a3 + 112);
      v33[7] = v32;
      v33[8] = v34;
      v33[9] = *(a3 + 128);
      *(v29 + 36) = v30 + 1;
      *(a2 + 48) += v37;
      if (v26)
      {
        fs_obj_zfree_oc(v26, *(a3 + 48), *(a3 + 16), a1[49]);
      }

      return 0;
    }

    else
    {
      v22 = v36;
      v23 = v37;
      while (1)
      {
        v24 = v38 >= v23 ? v23 : v38;
        v25 = dev_write(a1[48]);
        if (v25)
        {
          break;
        }

        v23 -= v24;
        if (!v23)
        {
          goto LABEL_27;
        }

        v18 = v18 + v24 >= (*(a1[47] + 108) & 0x7FFFFFFFu) ? 0 : (v18 + v24);
        v25 = sub_10000742C(a1, v18, &v39, &v38);
        if (v25)
        {
          break;
        }

        v22 += v24 * v9;
        if (v23 <= 0)
        {
          goto LABEL_27;
        }
      }

      v13 = v25;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      if (!v8[19])
      {
        log_err("%s:%d: %s failed to write checkpoint data block %lld: %d\n");
      }
    }
  }

  return v13;
}

uint64_t tx_barrier(uint64_t a1, char a2)
{
  v4 = *(a1 + 400);
  if (a2 < 0 && (v5 = *(v4 + 144)) != 0 && (*(v5 + 24) & 8) != 0)
  {
    v6 = 0;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    pthread_mutex_lock(*(a1 + 400));
    v6 = 1;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  v7 = *(v4 + 128);
  if (!v7 || (*(v7 + 24) & 0x40) == 0)
  {
    if (v6)
    {
      pthread_mutex_unlock(v4);
    }

    return 0;
  }

LABEL_11:
  v8 = sub_10004148C(a1, a2, 0);
  if (v6)
  {
    pthread_mutex_unlock(v4);
  }

  return v8;
}

const char *tx_unmount(uint64_t a1)
{
  v2 = *(a1 + 400);
  pthread_mutex_lock(v2);
  *(v2 + 72) |= 1u;
  pthread_mutex_unlock(v2);
  while (1)
  {
    result = tx_finish(a1, 8);
    if (result != 16)
    {
      break;
    }

    log_debug("%s:%d: %s waiting for transaction to finish\n", "tx_unmount", 1863, (*(a1 + 384) + 212));
    sleep(1u);
  }

  if (result)
  {
    result = log_err("%s:%d: %s tx_finish() failed, %d\n", "tx_unmount", 1878, (*(a1 + 384) + 212), result);
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
  }

  else
  {
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
    if ((*(v2 + 72) & 2) != 0)
    {
      v4 = sub_10004148C(a1, 16, 0);
      if (v4)
      {
        log_err("%s:%d: %s First sync/barrier failed: %d\n", "tx_unmount", 1892, (*(a1 + 384) + 212), v4);
      }

      if ((*(a1 + 628) & 1) == 0)
      {
        v7 = *(a1 + 376);
        if (*(v7 + 140))
        {
          if (*(v7 + 148))
          {
            *(v7 + 1264) |= 2uLL;
          }
        }
      }

      obj_checksum_set(a1, v5, v6);
      v8 = dev_write(*(a1 + 384));
      if (v8)
      {
        log_err("%s:%d: %s failed to write superblock to block 0: %d\n", "tx_unmount", 1903, (*(a1 + 384) + 212), v8);
      }

      v9 = sub_10004148C(a1, 16, 0);
      if (v9)
      {
        log_err("%s:%d: %s Final sync/barrier failed: %d\n", "tx_unmount", 1909, (*(a1 + 384) + 212), v9);
      }
    }
  }

  return pthread_mutex_unlock(v2);
}

uint64_t tx_finish(uint64_t a1, __int16 a2)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v5 = *(a1 + 400);
  pthread_mutex_lock(v5);
  v6 = *(v5 + 72);
  if ((a2 & 8) != 0 || (v6 & 1) == 0)
  {
    while (1)
    {
      v7 = *(v5 + 144);
      if ((v6 & 0x40) == 0)
      {
        break;
      }

      if (v7)
      {
        *(v7 + 24) |= 0x100000u;
      }

      if ((a2 & 0x100) != 0)
      {
        *(v5 + 72) = v6 & 0xFFFFFFF3;
        cv_wakeup((v5 + 256));
        v7 = *(v5 + 144);
      }

      if (v7)
      {
        v2 = *(v7 + 52);
        if (v2)
        {
          goto LABEL_67;
        }
      }

      cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait_for_dirty_data", 0);
      v8 = *(v5 + 144);
      if (v8)
      {
        v9 = *(v8 + 52);
        if (v9 | a2 & 0x100)
        {
          if (v9)
          {
            v2 = v9;
          }

          else
          {
            v2 = 35;
          }

          goto LABEL_67;
        }
      }

      else if ((a2 & 0x100) != 0)
      {
        v2 = 35;
LABEL_67:
        pthread_mutex_unlock(v5);
        return v2;
      }

      v6 = *(v5 + 72);
      if (a2 & 8) == 0 && (v6)
      {
        goto LABEL_18;
      }
    }

    if (!v7)
    {
      v7 = **(*(v5 + 136) + 8);
      if (!v7 || (*(v7 + 24) & 0x30) == 0)
      {
        if ((a2 & 0x11) != 0)
        {
          v2 = sub_10004148C(a1, a2 & 0x10, 0);
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_67;
      }
    }

    if ((a2 & 2) == 0 && (v6 & 0xC) == 8)
    {
      pthread_mutex_unlock(v5);
      return 16;
    }

    v10 = *(v7 + 16);
    if ((a2 & 8) == 0)
    {
      ++*(v5 + 176);
    }

    v11 = *(v7 + 24);
    v12 = ((a2 & 0x30) << 14) & 0xFFFDFFFF | ((a2 & 1) << 17) | v11 & 0xFFEFFFFF;
    if (v11 & 0x100000 | a2 & 0x10 | a2 & 1 | a2 & 0x20)
    {
      *(v7 + 24) = v12;
    }

    if (v11)
    {
      if ((v11 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 2, 1);
      }

      *(v7 + 24) = ((a2 & 0x30) << 14) & 0xFFFDFFFC | ((a2 & 1) << 17) | v11 & 0xFFEFFFFC | 2;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v7 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

    if (*(v7 + 28))
    {
      v2 = (16 * (a2 & 1)) ^ 0x10u;
    }

    else
    {
      if ((*(v7 + 24) & 2) != 0)
      {
        v13 = sub_1000426F0(v7, 2, 4);
        v14 = v13;
        if (v13 > 0xF4240)
        {
          log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_finish", 2126, (*(a1 + 384) + 212), *(v7 + 16), v13);
        }

        *(v5 + 248) = (*(v5 + 248) + v14) >> 1;
      }

      v2 = sub_1000427DC(a1);
      if (!v2)
      {
        v15 = *(v5 + 72);
        if ((v15 & 0x40) != 0)
        {
          *(v5 + 72) = v15 & 0xFFFFFFF3;
          if ((a2 & 0x100) != 0)
          {
LABEL_69:
            pthread_mutex_unlock(v5);
            return 35;
          }

          cv_wakeup((v5 + 256));
        }

        v2 = 0;
      }
    }

    if ((a2 & 9) != 0)
    {
      if (a2)
      {
        v16 = 126;
      }

      else
      {
        v16 = 62;
      }

      do
      {
        if (*(v7 + 16) != v10 || (*(v7 + 24) & v16) == 0)
        {
          break;
        }

        if (!v2)
        {
          cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait", 0);
        }

        v17 = *(v5 + 72);
        if (a2 & 8) == 0 && (v17)
        {
          goto LABEL_18;
        }

        if ((a2 & 0x100) != 0 && (v17 & 4) == 0)
        {
          goto LABEL_69;
        }
      }

      while (!*(v5 + 76));
      v18 = **(*(v5 + 136) + 8);
      if (!v18 || (v2 = *(v18 + 52), !v2))
      {
        v2 = *(v7 + 52);
      }
    }

    goto LABEL_67;
  }

LABEL_18:
  pthread_mutex_unlock(v5);
  return 1;
}

uint64_t sub_100042140(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 400);
  pthread_mutex_lock(v7);
  if (*(v7 + 72))
  {
LABEL_37:
    pthread_mutex_unlock(v7);
    return 1;
  }

  v8 = *a2;
  if (*a2 != -1)
  {
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v11 = *(v7 + 144);
  if (v11)
  {
    v12 = (*(v7 + 72) & 0xC) == 8;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (*(v11 + 24) & 0x1C) != 0)
  {
    *a2 = 0;
LABEL_15:
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v15 = 0;
    tv_sec = __tp.tv_sec;
    v32 = SLODWORD(__tp.tv_nsec) / 1000;
    while (1)
    {
      v9 = *(v7 + 144);
      if (v9 && (*(v9 + 24) & 0x1E) != 0)
      {
        if (*(v7 + 80) > 9u)
        {
          goto LABEL_69;
        }

        v16 = "nx_tx_wait";
        if ((a3 & 2) != 0)
        {
LABEL_20:
          v17 = *(v9 + 24);
          v15 = "nx_tx_wait_closing";
          if ((v17 & 2) == 0)
          {
            if ((v17 & 4) != 0)
            {
              v18 = **(*(v7 + 136) + 8);
              if (!v18 || (v15 = "nx_tx_wait_closed_prev_flushing", (*(v18 + 24) & 0x30) == 0))
              {
                v15 = "nx_tx_wait_closed";
              }
            }

            else if ((v17 & 0x18) != 0)
            {
              v15 = "nx_tx_wait_flush";
            }

            else
            {
              v15 = v16;
            }
          }

          goto LABEL_36;
        }
      }

      else
      {
        if ((a3 & 2) != 0 || (*(v7 + 72) & 8) == 0)
        {
          v3 = 0;
          v34 = 0;
          if (!v9)
          {
            goto LABEL_42;
          }

LABEL_40:
          if (*(v9 + 24))
          {
            if (!v3)
            {
              ++*(v9 + 28);
              *a2 = *(v9 + 16);
              if (v15)
              {
                v10 = v34;
                if (v34)
                {
                  if (strcmp(v15, "nx_tx_wait_frozen"))
                  {
                    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
                    v26 = 1000000 * (__tp.tv_sec - tv_sec) - v32 + SLODWORD(__tp.tv_nsec) / 1000;
                    *(v7 + 168) += v26;
                    if (v26 > 0xF4240 && sub_10000762C(a1))
                    {
                      log_warn("%s:%d: %s waited %lld us to open tx xid %lld (%s)\n", "tx_enter_internal", 2385, (*(a1 + 384) + 212), v26, *(v9 + 16), v15);
                    }

                    ++*(v7 + 160);
                  }

                  v10 = 1;
                }
              }

              else
              {
                v10 = v34;
              }

LABEL_84:
              ++*(v9 + 32);
              pthread_mutex_unlock(v7);
              if (v10)
              {
                sub_10000AAA8(a1, v9);
              }

              return 0;
            }

LABEL_82:
            pthread_mutex_unlock(v7);
            return v3;
          }

          while (1)
          {
            v24 = *(v9 + 24);
            if ((v24 & 1) == 0)
            {
              break;
            }

            do
            {
              log_debug("%s:%d: %s waiting for available tx to open: xid %lld\n", "tx_enter_internal", 2370, (*(a1 + 384) + 212), *(v7 + 64));
              cv_wait((v7 + 256), v7, 8, "nx_tx_wait_open", 0);
LABEL_58:
              v9 = *(v7 + 144);
              if (v9)
              {
                goto LABEL_40;
              }

LABEL_42:
              v19 = *(v7 + 112);
            }

            while (!v19);
            *(v7 + 144) = v19;
            v21 = *v19;
            v20 = v19[1];
            v22 = (v21 + 8);
            if (!v21)
            {
              v22 = (v7 + 120);
            }

            *v22 = v20;
            *v20 = v21;
            v23 = *(v7 + 64);
            *(v7 + 64) = v23 + 1;
            v9 = *(v7 + 144);
            *(v9 + 16) = v23;
            *(v9 + 24) = 0;
            *(v9 + 32) = 0;
            *(v9 + 52) = 0;
          }

          if (*(a1 + 626) == 1)
          {
            obj_checksum_set(a1, v13, v14);
            v25 = dev_write(*(a1 + 384));
            if (v25)
            {
              v3 = v25;
              log_err("%s:%d: %s Error: tx[%lld] failed to unclean superblock: %d\n", "tx_enter_internal", 2348, (*(a1 + 384) + 212), *(*(v7 + 144) + 16), v25);
              v9 = *(v7 + 144);
LABEL_52:
              log_err("%s:%d: %s Error: tx[%lld] failed to start: %d\n", "tx_enter_internal", 2352, (*(a1 + 384) + 212), *(v9 + 16), v3);
              goto LABEL_58;
            }

            *(a1 + 626) = 0;
            v9 = *(v7 + 144);
            v24 = *(v9 + 24);
            if (v24)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v24, 1, 0);
            }
          }

          else if (v3)
          {
            goto LABEL_52;
          }

          *(v9 + 24) = v24 | 1;
          __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          *(v9 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
          if ((a3 & 2) != 0)
          {
            *(*(v7 + 144) + 24) |= 0x10000u;
          }

          cv_wakeup((v7 + 256));
          v3 = 0;
          v34 = 1;
          goto LABEL_58;
        }

        if (*(v7 + 80) >= 0xAu)
        {
LABEL_69:
          v27 = **(*(v7 + 136) + 8);
          if (v27)
          {
            if (*(v27 + 24) & 0x30)
            {
              v29 = 0;
            }

            else
            {
              v27 = *(v7 + 144);
              v29 = v9 == 0;
            }

            if (!v29)
            {
              v9 = v27;
              goto LABEL_78;
            }
          }

          else if (v9)
          {
LABEL_78:
            v30 = *(v9 + 52);
            if (v30)
            {
              v3 = v30;
            }

            else
            {
              v3 = 5;
            }

            goto LABEL_82;
          }

          v3 = 5;
          goto LABEL_82;
        }
      }

      if ((*(v7 + 72) & 8) != 0)
      {
        v16 = "nx_tx_wait_frozen";
      }

      else
      {
        v16 = "nx_tx_wait";
      }

      if (v9)
      {
        goto LABEL_20;
      }

      v15 = v16;
LABEL_36:
      cv_wait((v7 + 256), v7, 8, v15, 0);
      if (*(v7 + 72))
      {
        goto LABEL_37;
      }
    }
  }

  v8 = *(v11 + 16);
  *a2 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_6:
  v9 = *(v7 + 144);
  if (v9 && v8 == *(v9 + 16))
  {
    v10 = 0;
    ++*(v9 + 28);
    goto LABEL_84;
  }

  pthread_mutex_unlock(v7);
  return 22;
}

__darwin_time_t sub_1000426F0(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v4 = *(a1 + 24);
    if ((v4 & a2) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v4, a3, a2);
    }
  }

  if (a3)
  {
    v5 = *(a1 + 24);
    if ((v5 & a3) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v5, a3, a2);
    }
  }

  *(a1 + 24) = *(a1 + 24) & ~a2 | a3;
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
  v6 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
  result = v6 - *(a1 + 72);
  *(a1 + 72) = v6;
  return result;
}

uint64_t sub_1000427DC(uint64_t a1)
{
  v2 = *(a1 + 400);
  for (i = *(v2 + 72); (i & 0x10) != 0; i = *(v2 + 72))
  {
    *(v2 + 72) = i | 0x20;
    cv_wait((v2 + 256), v2, 8, "nx_tx_flush_busy", 0);
  }

  *(v2 + 72) = i | 0x10;
  v4 = **(*(v2 + 136) + 8);
  if (!v4 || (v5 = *(v4 + 24), (v5 & 0x10) == 0))
  {
    v4 = *(v2 + 144);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
  }

  if ((v5 & 0x14) == 0 || (v6 = sub_100042C04(a1, v4), !v6))
  {
LABEL_9:
    v7 = *(v2 + 144);
    if (v7 && (*(v7 + 24) & 4) != 0)
    {
      v6 = sub_100042C04(a1, v7);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(v2 + 72);
  *(v2 + 72) = v8 & 0xFFFFFFCF;
  if ((v8 & 0x20) != 0)
  {
    cv_wakeup((v2 + 256));
  }

  return v6;
}

uint64_t tx_leave(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 627) & 1) == 0)
  {
    v7 = *(a1 + 400);
    pthread_mutex_lock(v7);
    v8 = *(v7 + 144);
    if ((*(v8 + 24) & 1) == 0)
    {
      goto LABEL_21;
    }

    if ((a3 & 4) != 0)
    {
      v9 = 0;
      ++*(v7 + 176);
    }

    else
    {
      v9 = *(v8 + 32) <= 0x186A0u && !obj_cache_tx_start_closing(*(a1 + 392)) && !sub_10000AE9C(a1);
    }

    if ((*(v7 + 72) & 0x40) != 0)
    {
      if (!v9)
      {
        *(v8 + 24) |= 0x100000u;
      }
    }

    else
    {
      v10 = *(v8 + 24);
      if ((v10 & 0x100000) != 0)
      {
        v10 &= ~0x100000u;
        *(v8 + 24) = v10;
      }

      else if (v9)
      {
        goto LABEL_21;
      }

      if ((v10 & 1) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      if ((v10 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      *(v8 + 24) = v10 & 0xFFFFFFFC | 2;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v8 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

LABEL_21:
    if ((~a3 & 5) != 0)
    {
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v8 + 24) |= 0x20000u;
      if ((a3 & 0x10) == 0)
      {
LABEL_23:
        if ((a3 & 0x20) == 0)
        {
LABEL_25:
          v11 = *(v8 + 28) - 1;
          *(v8 + 28) = v11;
          if (!v11 && (v12 = *(v8 + 24), (v12 & 2) != 0))
          {
            if ((v12 & 4) != 0)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 4, 2);
            }

            *(v8 + 24) = v12 & 0xFFFFFFF9 | 4;
            __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            v15 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            v16 = v15 - *(v8 + 72);
            *(v8 + 72) = v15;
            if (v16 > 0xF4240)
            {
              log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_leave", 2516, (*(a1 + 384) + 212), *(v8 + 16), v16);
            }

            *(v7 + 248) = (*(v7 + 248) + v16) >> 1;
            v3 = sub_1000427DC(a1);
            if ((a3 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v3 = 0;
            if ((a3 & 1) == 0)
            {
LABEL_37:
              pthread_mutex_unlock(v7);
              return v3;
            }
          }

          if ((a3 & 4) != 0)
          {
            v13 = 127;
          }

          else
          {
            v13 = 63;
          }

          do
          {
            if (*(v8 + 16) != a2 || (*(v8 + 24) & v13) == 0)
            {
              break;
            }

            if (!v3)
            {
              cv_wait((v7 + 256), v7, 8, "nx_tx_finish_wait", 0);
            }
          }

          while (!*(v7 + 76));
          v3 = *(v8 + 52);
          goto LABEL_37;
        }

LABEL_24:
        *(v8 + 24) |= 0x80000u;
        goto LABEL_25;
      }
    }

    *(v8 + 24) |= 0x40000u;
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return 30;
}

uint64_t sub_100042C04(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 392);
  v4 = *(a1 + 400);
  v91 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 660) = -1;
  v6 = **(*(v4 + 136) + 8);
  if (v6 && (*(v6 + 24) & 0x10) != 0)
  {
    if (v6 != a2)
    {
      panic("not handling the flushing tx!\n");
    }
  }

  else
  {
    if (*(v4 + 144) != a2)
    {
      panic("not handling the current tx!\n");
    }

    if ((*(a2 + 24) & 0x14) == 0)
    {
      panic("current tx not closed/flushing?!\n");
    }
  }

  v7 = *(a2 + 24);
  if ((v7 & 0x10) == 0)
  {
    if ((v7 & 4) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    if ((v7 & 8) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    *(a2 + 24) = v7 & 0xFFFFFFF3 | 8;
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v9 = v8 - *(a2 + 72);
    *(a2 + 72) = v8;
    if (v9 > 0xF4240)
    {
      log_warn("%s:%d: %s tx xid %lld was closed for %lld us waiting to prepare to flush\n", "tx_flush", 850, (*(a1 + 384) + 212), *(a2 + 16), v9);
    }

    if (*(a1 + 629))
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = obj_cache_flush_prepare(v5, 0, v10, *(a2 + 16));
    if (v11)
    {
      v12 = v11;
      if (!*(v4 + 76))
      {
        log_err("%s:%d: %s xid %lld error preparing to flush object cache: %d\n", "tx_flush", 856, (*(a1 + 384) + 212), *(a2 + 16), v11);
      }

      v13 = 858;
      goto LABEL_23;
    }

    if (*(a1 + 629) == 1)
    {
      v20 = *(a2 + 24);
      if ((v20 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      if ((v20 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      *(a2 + 24) = v20 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v21 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v21 - *(a2 + 72);
      *(a2 + 72) = v21;
      if (v22 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 868, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    else
    {
      *(a2 + 36) = *(v4 + 96);
      *(a2 + 44) = *(v4 + 100);
      *(a2 + 48) = 0;
      *(a2 + 40) = 0;
      v91 = -1;
      v35 = sub_1000073E8(a1, *(*(a1 + 376) + 128), &v91);
      if (v35)
      {
        v12 = v35;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld error getting first checkpoint map block address %d: %d\n", "tx_flush", 888, (*(a1 + 384) + 212), *(a2 + 16), *(*(a1 + 376) + 128), v35);
        }

        v13 = 890;
        goto LABEL_23;
      }

      bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      v50 = *(a2 + 64);
      *(v50 + 24) = 1073741836;
      *(v50 + 8) = v91;
      *(v50 + 16) = *(a2 + 16);
      ++*(a2 + 40);
      v12 = sub_100004A70(a1, a2, 1);
      if (v12)
      {
        goto LABEL_24;
      }

      for (i = *(v5 + 744); i; i = *(i + 88))
      {
        if (i != a1)
        {
          v52 = tx_checkpoint_write_prepare(a1, a2, i);
          if (v52)
          {
            v12 = v52;
            if (!*(v4 + 76))
            {
              log_err("%s:%d: %s xid %lld error preparing ephemeral object (oid 0x%llx type 0x%x/0x%x): %d\n", "tx_flush", 916, (*(a1 + 384) + 212), *(a2 + 16), *(i + 112), *(i + 36), *(i + 40), v52);
            }

            v13 = 918;
LABEL_23:
            *(v4 + 76) = v13;
            ++*(v4 + 80);
LABEL_24:
            obj_cache_flush_unprepare(v5);
            v14 = *(v5 + 872);
            if (v14)
            {
              v15 = (v5 + 872);
              do
              {
                v16 = v14[13];
                *v15 = v16;
                if (!v16)
                {
                  *(v5 + 880) = v15;
                }

                v14[13] = 3735928559;
                v14[8] = 0;
                obj_checkpoint_done(v14);
                obj_release(v14);
                v14 = *v15;
              }

              while (*v15);
            }

            for (j = *(v5 + 744); j; j = *(j + 88))
            {
              if ((*(j + 32) & 4) != 0)
              {
                obj_checkpoint_done(j);
              }
            }

            v18 = *(v4 + 72);
            if ((v18 & 0x40) != 0)
            {
              *(v4 + 72) = v18 & 0xFFFFFFBF;
            }

            v19 = *(a2 + 24);
            if ((v19 & 8) == 0)
            {
              panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            if (v19)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            *(a2 + 24) = v19 & 0xFFFFFFF6 | 1;
            __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            goto LABEL_66;
          }

          obj_retain_ephemeral_no_ref(i);
          if ((*(i + 32) & 4) == 0 && (*(i + 20) & 0x20) == 0)
          {
            log_warn("%s:%d: %s Unknown NEW persistent ephemeral object found: oid 0x%llx type 0x%x/0x%x\n", "tx_flush", 925, (*(a1 + 384) + 212), *(i + 112), *(i + 36), *(i + 40));
          }

          *(i + 64) = *(i + 56);
          *(i + 104) = 0;
          **(v5 + 880) = i;
          *(v5 + 880) = i + 104;
        }
      }

      v53 = *(v4 + 96);
      *(a2 + 112) = -1;
      v54 = (*(a2 + 40) + v53) % *(v4 + 88);
      v55 = sub_1000073E8(a1, v54, (a2 + 112));
      if (v55)
      {
        v12 = v55;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld error getting next checkpoint superblock address %d: %d\n", "tx_flush", 937, (*(a1 + 384) + 212), *(a2 + 16), v54, v55);
        }

        v13 = 939;
        goto LABEL_23;
      }

      ++*(a2 + 40);
      v65 = *(v5 + 928) - 1;
      if (*(a2 + 48) != v65)
      {
        log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 989, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 48), v65);
      }

      v66 = *(a1 + 376);
      *(v66 + 88) = *(v5 + 400);
      *(v66 + 96) = *(v4 + 64);
      memcpy(*(a2 + 56), v66, *(v66 + 36));
      v69 = *(a2 + 16);
      v70 = *(a2 + 56);
      *(v70 + 16) = v69;
      v71 = *(v4 + 96);
      *(v70 + 136) = v71;
      v72 = *(v4 + 100);
      *(v70 + 144) = v72;
      v73 = *(a2 + 40);
      *(v70 + 140) = v73;
      v74 = *(a2 + 48);
      *(v70 + 148) = v74;
      v75 = v73 + v71;
      v77 = *(v4 + 88);
      v76 = *(v4 + 92);
      v78 = v75 % v77;
      v79 = (v74 + v72) % v76;
      if (!*(v4 + 76))
      {
        if (v73 > v77 >> 2)
        {
          log_err("%s:%d: %s xid %lld checkpoint descriptor count is larger than expected: %d > %d\n", "tx_flush", 1014, (*(a1 + 384) + 212), v69, v73, v77 >> 2);
          v74 = *(a2 + 48);
          v76 = *(v4 + 92);
        }

        if (v74 > v76 >> 2)
        {
          log_err("%s:%d: %s xid %lld checkpoint data block count is larger than expected: %d > %d\n", "tx_flush", 1018, (*(a1 + 384) + 212), *(a2 + 16), v74, v76 >> 2);
          v74 = *(a2 + 48);
        }

        v80 = *(v5 + 928) - 1;
        if (v74 != v80)
        {
          log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 1022, (*(a1 + 384) + 212), *(a2 + 16), v74, v80);
        }
      }

      v81 = *(a2 + 56);
      *(v81 + 128) = v78;
      *(v81 + 132) = v79;
      obj_checksum_set_phys(a1, v81, *(*(a1 + 376) + 36), v67, v68);
      *(a2 + 48) = 0;
      *(a2 + 40) = 1;
      *(*(a2 + 64) + 36) = 0;
      v82 = *(a2 + 24);
      if ((v82 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v82, 16, 8);
      }

      if ((v82 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v82, 16, 8);
      }

      *(a2 + 24) = v82 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v83 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v83 - *(a2 + 72);
      *(a2 + 72) = v83;
      if (v22 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 1045, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    *(v4 + 232) = (*(v4 + 232) + v22) >> 1;
  }

  if (*(a1 + 629) == 1)
  {
    v23 = *(a2 + 24);
    if ((v23 & 0x10) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    if (v23)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    *(a2 + 24) = v23 & 0xFFFFFFEE | 1;
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    *(a2 + 32) = 0;
    *(a2 + 52) = 0;
  }

  else if (*(v4 + 144) == a2)
  {
    *a2 = 0;
    v24 = *(v4 + 136);
    *(a2 + 8) = v24;
    *v24 = a2;
    *(v4 + 136) = a2;
    *(v4 + 144) = 0;
  }

  pthread_mutex_unlock(v4);
  cv_wakeup((v4 + 256));
  if (*(a1 + 629))
  {
    v25 = 0;
  }

  else
  {
    v25 = 2;
  }

  v26 = obj_cache_flush_write(v5, v25);
  if (*(a1 + 629) == 1)
  {
    pthread_mutex_lock(v4);
    obj_cache_flush_unprepare(v5);
    sub_10004148C(a1, 0, 0);
    cv_wakeup((v4 + 256));
    v12 = 0;
    *(a2 + 52) = 0;
    return v12;
  }

  v12 = v26;
  if (v26)
  {
    pthread_mutex_lock(v4);
    if (!*(v4 + 76))
    {
      log_err("%s:%d: %s xid %lld error flushing objects from the cache: %d\n", "tx_flush", 1117, (*(a1 + 384) + 212), *(a2 + 16), v12);
    }

    v29 = 1119;
    goto LABEL_65;
  }

  while (1)
  {
    v32 = *(v5 + 872);
    if (!v32)
    {
      v33 = *(a2 + 64);
      if (*(v33 + 8))
      {
        *(v33 + 32) |= 1u;
        obj_checksum_set_phys(a1, v33, *(*(a1 + 376) + 36), v27, v28);
        v34 = dev_write(*(a1 + 384));
        if (v34)
        {
          v12 = v34;
          pthread_mutex_lock(v4);
          if (!*(v4 + 76))
          {
            log_err("%s:%d: %s xid %lld failed to write last checkpoint map block %lld: %d\n", "tx_flush", 1154, (*(a1 + 384) + 212), *(a2 + 16), *(*(a2 + 64) + 8), v12);
          }

          v29 = 1156;
          goto LABEL_65;
        }
      }

      ++*(a2 + 40);
      pthread_mutex_lock(v4);
      v36 = *(a2 + 40);
      v37 = *(a2 + 56);
      v38 = *(a2 + 48);
      v39 = v37[37];
      if (v36 != v37[35] || v38 != v39)
      {
        panic("flush phase checkpoint lengths (%d %d) don't match prepare phase (%d %d)\n", v36, v38, v37[35], v39);
      }

      v41 = *(a1 + 376);
      v41[34] = v37[34];
      v41[35] = v36;
      v41[36] = v37[36];
      v41[37] = v38;
      v42 = *(a2 + 24);
      if ((v42 & 0x10) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v42, 32, 16);
      }

      if ((v42 & 0x20) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v42, 32, 16);
      }

      *(a2 + 24) = v42 & 0xFFFFFFCF | 0x20;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v43 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v44 = v43 - *(a2 + 72);
      *(a2 + 72) = v43;
      if (v44 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to flush\n", "tx_flush", 1185, (*(a1 + 384) + 212), *(a2 + 16), v44);
      }

      *(a2 + 104) = v44;
      cv_wakeup((v4 + 256));
      v45 = sub_10004148C(a1, 0, 1);
      if (v45)
      {
        v12 = v45;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld sync/barrier failed: %d\n", "tx_flush", 1194, (*(a1 + 384) + 212), *(a2 + 16), v45);
        }

        *(v4 + 76) = 1196;
        ++*(v4 + 80);
        --*(a2 + 40);
        v46 = *(a2 + 24);
        if ((v46 & 0x20) == 0)
        {
          panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v46, 16, 32);
        }

        if ((v46 & 0x10) != 0)
        {
          panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v46, 16, 32);
        }

        *(a2 + 24) = v46 & 0xFFFFFFCF | 0x10;
        __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v47 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
        v48 = v47 - *(a2 + 72);
        *(a2 + 72) = v47;
        v49 = v48 + *(a2 + 104);
        goto LABEL_123;
      }

      pthread_mutex_unlock(v4);
      if (*(a1 + 632) == 1)
      {
        *(a2 + 24) |= 0x80000u;
        bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      }

      v56 = dev_write(*(a1 + 384));
      if (v56)
      {
        v12 = v56;
        pthread_mutex_lock(v4);
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld failed to write checkpoint superblock %lld: %d\n", "tx_flush", 1223, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 112), v12);
        }

        v57 = 1225;
      }

      else
      {
        if ((*(a2 + 26) & 8) == 0 || (v60 = dev_write(*(a1 + 384)), !v60))
        {
          if (*(a1 + 628) == 1 && (*(a1 + 632) & 1) == 0)
          {
            *(a1 + 660) = (*(*(a1 + 376) + 136) + *(*(a1 + 376) + 140) - 1) % *(v4 + 88);
          }

          pthread_mutex_lock(v4);
          v61 = sub_1000426F0(a2, 32, 64);
          v62 = v61;
          if (v61 > 0xF4240)
          {
            log_warn("%s:%d: %s tx xid %lld took %lld us to sync and write superblock\n", "tx_flush", 1280, (*(a1 + 384) + 212), *(a2 + 16), v61);
          }

          *(a2 + 104) += v62;
          v63 = *(a2 + 24);
          if ((v63 & 0x20000) == 0)
          {
            goto LABEL_159;
          }

          ++*(v4 + 184);
          if ((v63 & 0x40000) != 0)
          {
            ++*(v4 + 192);
          }

          v64 = sub_10004148C(a1, (v63 >> 14) & 0x10, 0);
          if (!v64)
          {
LABEL_159:
            *(a2 + 52) = 0;
            *(v4 + 72) |= 2u;
            *(v4 + 76) = 0;
            v84 = *(a2 + 56);
            v85 = *(v84 + 128);
            v86 = *(a1 + 376);
            *(v86 + 128) = v85;
            *(v4 + 96) = v85;
            v87 = *(v84 + 132);
            *(v86 + 132) = v87;
            *(v4 + 100) = v87;
            *(v86 + 16) = *(v84 + 16);
            v88 = *(v4 + 152);
            *(v4 + 152) = v88 + 1;
            if (v88)
            {
              *(v4 + 200) = (*(v4 + 200) + *(a2 + 32)) >> 1;
              *(v4 + 208) = vshrq_n_u64(vaddq_s64(*(a2 + 80), *(v4 + 208)), 1uLL);
              *(v4 + 224) = (*(a2 + 96) + *(v4 + 224)) >> 1;
              *(v4 + 240) = (*(a2 + 104) + *(v4 + 240)) >> 1;
              if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * (v88 + 1), 2) <= 0xCCCCCCCCCCCCCCCuLL && sub_10000762C(a1))
              {
                v89 = *(v4 + 160);
                if (v89 <= 1)
                {
                  v90 = 1;
                }

                else
                {
                  v90 = *(v4 + 160);
                }

                log_debug("%s:%d: %s xid %llu tx stats: # %llu owait %llu %lluus finish %llu bar2 %lld f %lld enter %llu fq %llu %llu %lluus close %lluus prep %lluus flush %lluus\n", "tx_flush", 1344, (*(a1 + 384) + 212), *(a2 + 16), *(v4 + 152), v89, *(v4 + 168) / v90, *(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 216), *(v4 + 224), *(v4 + 208), *(v4 + 248), *(v4 + 232), *(v4 + 240));
              }
            }

            else
            {
              *(v4 + 200) = *(a2 + 32);
              *(v4 + 208) = *(a2 + 80);
              *(v4 + 224) = *(a2 + 96);
              *(v4 + 240) = *(a2 + 104);
            }

            cv_wakeup((v4 + 256));
            return 0;
          }

          v12 = v64;
          if (!*(v4 + 76))
          {
            log_err("%s:%d: %s xid %lld second sync/barrier failed: %d\n", "tx_flush", 1292, (*(a1 + 384) + 212), *(a2 + 16), v64);
          }

          *(v4 + 76) = 1294;
          ++*(v4 + 80);
          --*(a2 + 40);
          v58 = a2;
          v59 = 64;
          goto LABEL_122;
        }

        v12 = v60;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld failed to write block 0 superblock: %d\n", "tx_flush", 1245, (*(a1 + 384) + 212), *(a2 + 16), v60);
        }

        pthread_mutex_lock(v4);
        v57 = 1249;
      }

      *(v4 + 76) = v57;
      ++*(v4 + 80);
      --*(a2 + 40);
      v58 = a2;
      v59 = 32;
LABEL_122:
      v49 = *(a2 + 104) + sub_1000426F0(v58, v59, 16);
LABEL_123:
      *(a2 + 104) = v49;
      goto LABEL_66;
    }

    v31 = tx_checkpoint_write(a1, a2, *(v5 + 872), v27, v28);
    if (v31)
    {
      break;
    }

    obj_checkpoint_done(v32);
    obj_release(v32);
  }

  v12 = v31;
  pthread_mutex_lock(v4);
  if (!*(v4 + 76))
  {
    log_err("%s:%d: %s xid %lld failed to write checkpoint data @ 0x%llx: %d\n", "tx_flush", 1133, (*(a1 + 384) + 212), *(a2 + 16), v32[16], v12);
  }

  v29 = 1135;
LABEL_65:
  *(v4 + 76) = v29;
  ++*(v4 + 80);
LABEL_66:
  cv_wakeup((v4 + 256));
  *(a2 + 52) = v12;
  return v12;
}

unint64_t calc_overlap_range(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a2 + a1;
  v6 = a4 + a3;
  if (a2 + a1 > a3)
  {
    v7 = v6 >= a1;
    v8 = v6 == a1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = !v8 && v7 && v5 >= a1;
  if (!v9 || v6 < a3)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a1;
  }

  if (v5 >= v6)
  {
    v5 = a4 + a3;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return v5 - v11;
}

uint64_t rc_to_errno(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ((result & 0x3FFF | 0xC000) == result)
  {
    return result & 0x3FFF;
  }

  if (result < 0x6C)
  {
    return result;
  }

  result = 6;
  if (v1 > -536870194)
  {
    if (v1 > -536870182)
    {
      if (v1 <= -536870173)
      {
        if (v1 != -536870181)
        {
          if (v1 == -536870174)
          {
            return 1;
          }

          return 94;
        }

        return 28;
      }

      if (v1 == -536870172)
      {
        return result;
      }

      v3 = 745;
    }

    else
    {
      if (v1 <= -536870188)
      {
        if (v1 != -536870193)
        {
          if (v1 != -536870190)
          {
            return 94;
          }

          return 16;
        }

        return 30;
      }

      if (v1 == -536870187)
      {
        return 16;
      }

      v3 = 729;
    }

    if (v1 != (v3 | 0xE0000000))
    {
      return 94;
    }

    return result;
  }

  if (v1 > -536870207)
  {
    if (v1 <= -536870199)
    {
      if (v1 != -536870206)
      {
        if (v1 == -536870201)
        {
          return 45;
        }

        return 94;
      }

      return 22;
    }

    if (v1 == -536870198)
    {
      return 5;
    }

    v2 = 717;
LABEL_25:
    if (v1 == (v2 | 0xE0000000))
    {
      return 13;
    }

    return 94;
  }

  if (v1 == -536870211)
  {
    return 12;
  }

  if (v1 != -536870208)
  {
    v2 = 705;
    goto LABEL_25;
  }

  return result;
}

uint64_t xf_init(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v2 = a2;
    *(a1 + 2) = 4;
    v4 = _apfs_malloc_typed(0x10uLL, 0x100004052888210uLL);
    *(a1 + 8) = v4;
    if (!v4)
    {
      *(a1 + 2) = 0;
    }

    *(a1 + 6) = (v2 + 7) & 0xFFF8;
    v5 = _apfs_malloc_typed((v2 + 7) & 0xFFF8, 0xD97FBADFuLL);
    *(a1 + 16) = v5;
    if (!v5)
    {
      *(a1 + 6) = 0;
    }
  }

  return 0;
}

uint64_t xf_init_with_blob(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3 < 4)
  {
    return 28;
  }

  v6 = *a2;
  *a1 = v6;
  v7 = a2[1];
  a1[2] = v7;
  a1[1] = v6;
  if (v7 + 4 * v6 + 4 > a3)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = 0;
    v9 = a2 + 3;
    v10 = v6;
    while (v7 > v8)
    {
      v11 = *v9;
      if ((v7 - v8) < v11)
      {
        break;
      }

      v8 += (v11 + 7) & 0x1FFF8;
      v9 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  v12 = (v7 + 7) & 0xFFF8;
  a1[3] = v12;
  if (v12 < v7)
  {
LABEL_10:
    result = 22;
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    return result;
  }

  v13 = 2 * v6;
  *(a1 + 1) = _apfs_malloc_typed(4 * v6, 0x100004052888210uLL);
  v14 = _apfs_malloc_typed(a1[3], 0x8CB4D706uLL);
  *(a1 + 2) = v14;
  v15 = *(a1 + 1);
  v16 = *a1;
  if (!v15 || !v14)
  {
    _apfs_free(v15, 4 * v16);
    _apfs_free(*(a1 + 2), a1[3]);
    result = 12;
    goto LABEL_11;
  }

  v17 = a2 + 2;
  memcpy(v15, v17, 4 * v16);
  memcpy(*(a1 + 2), &v17[v13], a1[2]);
  bzero((*(a1 + 2) + a1[2]), a1[3] - a1[2]);
  return 0;
}

uint64_t xf_release(uint64_t a1)
{
  _apfs_free(*(a1 + 8), 4 * *(a1 + 2));
  _apfs_free(*(a1 + 16), *(a1 + 6));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return 0;
}