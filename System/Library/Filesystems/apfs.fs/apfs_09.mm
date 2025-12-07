uint64_t fs_delete_clone_superblock(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 392) + 392);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v5 = sub_10003BEB0(v4, 0x40000000uLL, a2, &apfs_desc, 0, 0, 0, 0, &v7);
  if (!v5)
  {
    sub_10003BB58(v7, a3);
    sub_100038BA0(v7);
  }

  return v5;
}

uint64_t fs_delete_supplemental_tree(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v9 = *(*(a1 + 392) + 392);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003BEB0(v9, 0x40000000uLL, a3, &apfs_desc, 0, 0, 0, a4, &v16);
  if (!result)
  {
    v11 = v16[47];
    if (a2 == 5)
    {
      v12 = 1040;
      v13 = 1032;
    }

    else
    {
      if (a2 != 6)
      {
        sub_100038BA0(v16);
        return 45;
      }

      v12 = 1044;
      v13 = 1048;
    }

    v14 = *(v11 + v12);
    v15 = *(v11 + v13);
    sub_100038BA0(v16);
    if (v15)
    {
      return supplemental_tree_destroy(a1, v14, a2, a4, v15, a5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fs_delete_snapshot_metadata_tree(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = 0;
  v6 = sub_10001D844(a1, 3, 0, &v9);
  if (v6)
  {
    return v6;
  }

  v7 = btree_delete(v9, a2, a3);
  sub_100038BA0(v9);
  if (!v7)
  {
    pthread_mutex_lock((a1 + 1472));
    *(*(a1 + 376) + 152) = 0;
    sub_100026584(a1, a2);
    pthread_mutex_unlock((a1 + 1472));
  }

  return v7;
}

uint64_t fs_snapshot_is_reserved_name(uint64_t a1, unsigned int a2, int *a3, uint64_t *a4)
{
  if (a2 >= 1)
  {
    a2 -= *(a1 + a2 - 1) == 0;
  }

  if (a2 < 0xF)
  {
    return 0;
  }

  if (*a1 != 0x6C7070612E6D6F63 || *(a1 + 7) != 0x2E736670612E656CLL)
  {
    return 0;
  }

  if (a2 - 15 < 8)
  {
    goto LABEL_20;
  }

  if (*(a1 + 15) == 0x2E64697870616E73)
  {
    v7 = 1;
    v8 = -23;
    v9 = 23;
  }

  else
  {
    if (a2 - 15 < 0xB)
    {
      goto LABEL_20;
    }

    if (*(a1 + 15) != 0x726F746167727570 || *(a1 + 23) != 11897)
    {
      goto LABEL_20;
    }

    v7 = 2;
    v8 = -25;
    v9 = 25;
  }

  if ((a2 + v8) > 16)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if (v9 < a2)
  {
    v10 = 0;
    v11 = (a1 + v9);
    v12 = a1 + a2 - v11;
    do
    {
      v13 = 16 * v10;
      v15 = *v11++;
      v14 = v15;
      v16 = v15 - 48;
      v17 = (v15 - 48);
      v18 = (v15 - 65);
      v19 = (v15 - 97) > 5u;
      v20 = v13 | (v15 + 9) & 0x1F;
      if ((v15 - 97) <= 5u)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0;
      }

      if (v19)
      {
        v20 = v13;
      }

      v22 = v13 | (v14 + 9) & 0x1F;
      v23 = v18 > 5;
      if (v18 <= 5)
      {
        v24 = v7;
      }

      else
      {
        v24 = v21;
      }

      if (v23)
      {
        v22 = v20;
      }

      v10 = v13 | v16;
      if (v17 > 9)
      {
        v7 = v24;
        v10 = v22;
      }

      --v12;
    }

    while (v12);
    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  if (a3)
  {
    *a3 = v7;
  }

  result = 1;
  if (a4)
  {
    if (v7)
    {
      *a4 = v10;
    }
  }

  return result;
}

uint64_t clear_revert_to_snapshot_ro_mount_state(void *a1)
{
  v2 = a1[48];
  if (v2)
  {
    _apfs_free(v2, 1144);
    a1[48] = 0;
  }

  a1[55] = 0;
  result = apfs_update_dev_name(a1);
  a1[56] = 0;
  return result;
}

uint64_t move_snapshot_to_purgatory(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v11 = a4;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13[12] = v7;
  *__str = v7;
  *v13 = v7;
  snprintf(__str, 0x2CuLL, "%s%s%llx", "com.apple.apfs.", "purgatory.", *(a2 + 8));
  v8 = sub_100023B2C(a1, 6, 1, 0, &v11);
  if (!v8)
  {
    v9 = strlen(__str);
    v8 = fs_rename_snapshot(a1, a2, a3, __str, v9, v11);
    if (v8)
    {
      log_err("%s:%d: %s Couldn't rename snap %llx to %s\n", "move_snapshot_to_purgatory", 1877, (a1 + 4040), *(a2 + 8), __str);
    }

    if (v11)
    {
      sub_1000238A0(a1, 6, 1, 0, v11);
    }
  }

  return v8;
}

uint64_t find_and_destroy_orphaned_snapshots(uint64_t result)
{
  if (!*(result + 1108))
  {
    v5[4] = v1;
    v5[5] = v2;
    v3 = result;
    v5[0] = 0x100000;
    v5[1] = 0;
    v4 = pthread_rwlock_wrlock((result + 1792));
    if (v4)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/jobj_snap.c", 1961, v4);
    }

    sub_100022108(v3, 3, 0, v5, sub_10007C9EC, v3);
    result = pthread_rwlock_unlock((v3 + 1792));
    if (result)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/jobj_snap.c", 1963, result);
    }
  }

  return result;
}

uint64_t sub_10007C9EC(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v2;
  v19 = v3;
  v6 = *(a1 + 8);
  v17 = -1431655766;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  if (fs_snapshot_is_reserved_name(*(a1 + 72), *(a1 + 64), &v17, 0))
  {
    v7 = v17 == 2;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    next_snapshot_xid = omap_find_next_snapshot_xid(a2, v6 - 1, &v16);
    if (next_snapshot_xid)
    {
      v9 = 0;
    }

    else
    {
      v9 = v16 == v6;
    }

    if (v9)
    {
      v11 = *(a1 + 48);
      if (*(a2 + 472) < v11)
      {
        result = 0;
        *(a2 + 472) = v11;
        return result;
      }
    }

    else if ((next_snapshot_xid & 0xFFFFFFFD) != 0)
    {
      log_err("%s:%d: %s find_next_snap(%llu) returned %d\n", "orphan_snap_check_iterator", 1918, (a2 + 4040), v6 - 1, next_snapshot_xid);
    }

    else
    {
      log_err("%s:%d: %s snap xid %llu is an orphan... moving it to purgatory\n", "orphan_snap_check_iterator", 1923, (a2 + 4040), v6);
      v12 = _apfs_malloc_typed(*(a1 + 64) + 32, 0x10000400A507A7AuLL);
      bzero(v12, *(a1 + 64) + 32);
      if (!v12)
      {
        return 12;
      }

      *v12 = 267;
      v13 = *(a1 + 64);
      v12[1] = v13 + 32;
      v14 = *(a1 + 8);
      *(v12 + 1) = 0xFFFFFFFFFFFFFFFLL;
      *(v12 + 2) = v14;
      v12[12] = v13;
      memcpy(v12 + 13, *(a1 + 72), v13);
      v15 = move_snapshot_to_purgatory(a2, a1, v12, 0);
      if (v15)
      {
        log_err("%s:%d: %s Couldn't move snap xid %llu to purgatory, err %d\n", "orphan_snap_check_iterator", 1940, (a2 + 4040), *(a1 + 8), v15);
      }

      sub_10001AFBC(a2, v12);
    }
  }

  return 0;
}

uint64_t spaceman_metazone_get_size(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (!a4)
  {
    return 28;
  }

  v6 = a1;
  if (a1 <= a2 || a4 < a1)
  {
    if (0x180000000 * (a2 >> 12) > a4)
    {
      return 28;
    }

    if (a4 >> 34)
    {
      v9 = 0x1000000000;
      if (a4 >= 0x1000000000)
      {
        v10 = 0x1000000000;
      }

      else
      {
        v10 = a4;
      }

      v8 = v10 >> 5;
      if (a4 >= 0x1000000001)
      {
        if (a4 - 0x1000000000 < 0x1000000000)
        {
          v9 = a4 - 0x1000000000;
        }

        v8 += (v9 * 0x666666666666667uLL) >> 64;
        if (a4 >= 0x2000000001)
        {
          v11 = a4 - 0x2000000000;
          if (a4 - 0x2000000000 >= 0x2000000000)
          {
            v11 = 0x2000000000;
          }

          v8 += v11 >> 7;
          if (a4 >= 0x4000000001)
          {
            v8 += (a4 - 0x4000000000) / 0xA0;
          }
        }
      }
    }

    else
    {
      v8 = 0x20000000;
    }

    v6 = v8 * (a2 >> 12);
    if (v6 >= a4 >> 2)
    {
      v6 = a4 >> 2;
    }
  }

  result = 0;
  v12 = v6 / a2;
  *a5 = v12 * a2;
  *a6 = a3 - v12;
  return result;
}

unint64_t spaceman_metazone_get_partitions(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    *a5 = (a2 >> 1) / result + a3;
  }

  if (a6)
  {
    v6 = (a2 >> 4) / result;
    if (v6 >= 0x8000000 / result)
    {
      v6 = 0x8000000 / result;
    }

    *a6 = a4 - v6;
  }

  return result;
}

uint64_t utf8_normalizeOptCaseFoldAndHash(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t a5)
{
  v6 = a3;
  v19 = a1;
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = &a1[a2];
  v17 = 0;
  v18 = -1431655766;
  v16 = 0;
  v15 = 1;
  do
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[6] = v8;
    v21[7] = v8;
    v21[5] = v8;
    v21[3] = v8;
    v21[4] = v8;
    v21[1] = v8;
    v21[2] = v8;
    v20[1] = v8;
    v21[0] = v8;
    v20[0] = v8;
    v14 = 0;
    v13 = 0;
    v9 = sub_10007CE60(&v19, v7, v6, v22, &v18, &v17, &v16, v21, v20, &v14, &v13, &v15);
    if (v9)
    {
      break;
    }

    v10 = v14;
    if (v14 >= 1)
    {
      if (v13 == 1)
      {
        doReorder(v21, v20, v14);
      }

      a4(v21, 4 * v10, a5);
    }
  }

  while (v19 < v7 || v17 > 0);
  return v9;
}

uint64_t sub_10007CE60(unsigned __int8 **a1, unint64_t a2, int a3, int *a4, uint64_t a5, int *a6, int *a7, uint64_t a8, uint64_t a9, int *a10, _BYTE *a11, _BYTE *a12)
{
  v17 = *a6;
  v18 = *a7;
  if (*a6 >= 1 && v18 < v17)
  {
    v65 = 0;
    *a11 = 0;
    *a10 = 0;
    v18 = *a7;
    while (1)
    {
      if (v65 >= 1 && *(a5 + v18) && *(a5 + v18) < *(a9 - 1 + v65))
      {
        *a11 = 1;
      }

      *(a8 + 4 * v65) = a4[v18];
      v66 = *a7;
      *a7 = v66 + 1;
      LOBYTE(v66) = *(a5 + v66);
      v67 = *a10;
      *a10 = v67 + 1;
      *(a9 + v67) = v66;
      v18 = *a7;
      v17 = *a6;
      if (*a7 >= *a6 || !*(a5 + v18))
      {
        break;
      }

      v65 = *a10;
    }
  }

  if (v18 >= v17)
  {
    *a6 = 0;
    *a7 = 0;
    v20 = *a1;
    if (*a1 < a2)
    {
      v21 = a4 - 1;
      do
      {
        v23 = v20 + 1;
        *a1 = v20 + 1;
        v24 = *v20;
        result = 92;
        if (!*v20 || v24 == 47)
        {
          return result;
        }

        if ((v24 & 0x80) == 0)
        {
          result = 0;
          if (v24 - 91 < 0xFFFFFFE6)
          {
            v68 = 1;
          }

          else
          {
            v68 = a3;
          }

          if (v68)
          {
            v69 = *v20;
          }

          else
          {
            v69 = v24 | 0x20;
          }

          *a4 = v69;
          *a6 = 1;
          *a5 = 0;
          goto LABEL_143;
        }

        if (v24 - 225 > 0xB)
        {
          if (v24 - 194 <= 0x1D && v23 < a2)
          {
            v30 = *v23 ^ 0x80;
            if (v30 <= 0x3F)
            {
              v28 = ((v24 & 0x1F) << 6) | v30;
              v23 = v20 + 2;
              goto LABEL_44;
            }
          }
        }

        else if ((v20 + 2) < a2)
        {
          v26 = *v23 ^ 0x80;
          if (v26 <= 0x3F)
          {
            v27 = v20[2] ^ 0x80;
            if (v27 <= 0x3F)
            {
              v28 = ((v24 & 0xF) << 12) | (v26 << 6) | v27;
              v23 = v20 + 3;
              goto LABEL_44;
            }
          }
        }

        if (v24 > 0xEF)
        {
          if (v24 > 0xFD)
          {
            v33 = 0;
            goto LABEL_33;
          }

          if (v24 <= 0xF7)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          v32 = v24 > 0xFB;
        }

        else
        {
          v31 = v24 > 0xDF;
          v32 = v24 > 0xBF;
        }

        if (v32)
        {
          v33 = v31 + 1;
        }

        else
        {
          v33 = v31;
        }

LABEL_33:
        v28 = -1;
        if (&v23[v33] <= a2)
        {
          v34 = v24 & ~(-1 << (6 - v33));
          if (v33 == 1 || (v33 == 2 || v33 == 3 && (v23 = v20 + 2, v35 = v20[1] ^ 0x80, v28 = -1, v35 <= 0x3F) && (v34 = v35 | (v34 << 6), v34 <= 0x10F)) && (v36 = *v23, ++v23, v37 = v36 ^ 0x80, v28 = -1, (v36 ^ 0x80u) <= 0x3F) && (v34 = v37 | (v34 << 6), (v34 & 0xFFE0) != 0x360))
          {
            v38 = *v23++;
            v39 = v38 ^ 0x80;
            if ((v38 ^ 0x80u) > 0x3F || (v28 = v39 | (v34 << 6), v28 < dword_100096420[v33]))
            {
              v28 = -1;
            }
          }
        }

LABEL_44:
        *a1 = v23;
        if (v28 < 1)
        {
          return result;
        }

        *a5 = 0;
        if (v28 >= 0xF0000)
        {
          if ((~v28 & 0xFFFE) == 0)
          {
            goto LABEL_144;
          }

LABEL_47:
          *a4 = v28;
          goto LABEL_55;
        }

        v40 = v28;
        if (v28 >> 10 >= 0xC9)
        {
          if ((v28 - 918016) < 0xFFFFFE00)
          {
            goto LABEL_144;
          }

          v40 = v28 - 711680;
        }

        v41 = word_100096430[v40 >> 8];
        if (!word_100096430[v40 >> 8])
        {
          goto LABEL_54;
        }

        if (v41 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v41 & 0xFF00) == 0xAD00)
        {
LABEL_54:
          *a4 = v28;
          *a5 = v41;
          goto LABEL_55;
        }

        if (((v40 >> 8) - 172) <= 0x2A)
        {
          goto LABEL_69;
        }

        v50 = word_100098FAC[16 * (v41 & 0xFFF) + (v40 >> 4)];
        if (!v50)
        {
LABEL_75:
          *a4 = v28;
          *a5 = v50;
          goto LABEL_76;
        }

        if (v50 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v50 & 0xFF00) == 0xAE00)
        {
          if ((word_100096A7C[v50] >> (v40 & 0xF)))
          {
            goto LABEL_144;
          }

          *a4 = v28;
          v42 = 1;
          if (v28 <= 0x4FF && (a3 & 1) == 0)
          {
            *a4 = word_10009A2CC[v28];
          }

          goto LABEL_56;
        }

        if ((v50 & 0xFF00) == 0xAD00)
        {
          goto LABEL_75;
        }

        if (v50 == 44032 || (v52 = word_10009ACCC[16 * (v50 & 0xFFF) + (v40 & 0xF)], v52 == 44032))
        {
LABEL_69:
          v45 = v28 - 44032;
          v46 = v45 / 28;
          v47 = v45 / 588;
          v48 = (49933 * (v45 / 28)) >> 16;
          *(a5 + 1) = 0;
          v49 = v45 % 28;
          *a4 = v47 + 4352;
          a4[1] = (v46 - 21 * ((v48 >> 4) + ((v48 & 0x8000) >> 15)) + 4449);
          if (v49)
          {
            a4[2] = v49 + 4519;
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          goto LABEL_56;
        }

        if (v52 == 0xFFFF)
        {
LABEL_144:
          v54 = -1;
LABEL_145:
          *a6 = v54;
          return result;
        }

        if (((v52 + 1792) >> 8) <= 0xB6u)
        {
          if (!v52 || (v52 & 0xFF00) == 0xAD00)
          {
            *a4 = v28;
            *a5 = v52;
          }

          else
          {
            *a4 = v52;
          }

LABEL_76:
          if ((a3 & 1) == 0)
          {
            v51 = *a4;
            if (v51 <= 1279)
            {
              v28 = word_10009A2CC[v51];
              goto LABEL_47;
            }
          }

LABEL_55:
          v42 = 1;
LABEL_56:
          *a6 = v42;
          goto LABEL_57;
        }

        v53 = (v52 - 45056) >> 12;
        v54 = -1;
        if (v53 <= 1)
        {
          if (v53)
          {
            if (v53 != 1)
            {
              goto LABEL_145;
            }

            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_1000977A6 + 6 * (v52 & 0x7FF);
            v42 = 3;
          }

          else
          {
            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_100096B92 + 4 * (v52 & 0x7FF);
            v42 = 2;
          }
        }

        else
        {
          if (v53 == 2)
          {
            v70 = 0;
            v58 = (&unk_100097CDA + 2 * (v52 & 0x3FF));
            v59 = *v58;
            v55 = (v58 + 1);
            v57 = v59;
            goto LABEL_109;
          }

          if (v53 != 3)
          {
            if (v53 != 4)
            {
              goto LABEL_145;
            }

            v55 = 0;
            v56 = (&unk_100098D50 + 4 * (v52 & 0x3FF));
            v57 = *v56;
            v70 = v56 + 1;
LABEL_109:
            v42 = v57 & 0xF;
            *a5 = v57 >> 4;
            if (v42 - 5 < 0xFFFFFFFC)
            {
              v54 = 0;
              goto LABEL_145;
            }

            goto LABEL_110;
          }

          if ((v52 & 0x800) != 0 && a3)
          {
            goto LABEL_47;
          }

          v55 = 0;
          v70 = (&unk_100097E68 + 4 * (v52 & 0x7FF));
          v42 = 1;
        }

LABEL_110:
        v60 = 0;
        v74 = a3;
        v72 = a12;
        v73 = a2;
        v71 = v21;
        do
        {
          if (v55)
          {
            v62 = *v55;
            v55 += 2;
            v61 = v62;
          }

          else
          {
            v61 = *v70++;
          }

          a4[v60] = v61;
          if (v60)
          {
            v75 = v60;
            v76 = v55;
            v63 = sub_10007DB04(v61);
            v60 = v75;
            v55 = v76;
            *(a5 + v75) = v63;
          }

          ++v60;
          a3 = v74;
          a12 = v72;
          a2 = v73;
          v21 = v71;
        }

        while (v42 != v60);
        if ((v74 & 1) == 0)
        {
          v64 = *a4;
          if (v64 <= 1279)
          {
            *a4 = word_10009A2CC[v64];
          }

          if (v42 < 2)
          {
            goto LABEL_55;
          }

          if (v71[v42] == 837)
          {
            v71[v42] = 953;
          }
        }

        *a6 = v42;
        if (v42 < 1)
        {
          return 92;
        }

LABEL_57:
        if (!*a5 || *a12 == 1)
        {
          result = 0;
LABEL_143:
          *a12 = 0;
          return result;
        }

        v43 = *a10;
        if ((v42 + *a10) > 32)
        {
          return 92;
        }

        v44 = 0;
        do
        {
          if (v43 >= 1 && *(a5 + v44) && *(a5 + v44) < *(a9 - 1 + v43))
          {
            *a11 = 1;
          }

          *(a8 + 4 * v43) = a4[v44];
          *(a9 + *a10) = *(a5 + v44++);
          v43 = *a10 + 1;
          *a10 = v43;
        }

        while (v44 < *a6);
        *a6 = 0;
        v20 = *a1;
      }

      while (*a1 < a2);
    }
  }

  return 0;
}

uint64_t doReorder(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = a3 - 1;
      do
      {
        v5 = *(a2 + v4);
        if (v5 < *(a2 + v4 - 1))
        {
          v6 = *(result + 4 * v4);
          *(result + 4 * v4) = *(result + 4 * (v4 - 1));
          *(a2 + v4) = *(a2 + v4 - 1);
          *(result + 4 * (v4 - 1)) = v6;
          *(a2 + v4 - 1) = v5;
        }

        --v4;
      }

      while (v4 > v3);
      ++v3;
    }

    while (v3 != a3 - 1);
  }

  return result;
}

uint64_t utf8_normalizeOptCaseFoldAndCompare(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5, BOOL *a6)
{
  v33 = a3;
  v34 = a1;
  v7 = &a1[a2];
  v8 = &a3[a4];
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __b[0] = v9;
  __b[1] = v9;
  v44 = v9;
  v45 = v9;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0;
  v32 = 0;
  v30 = 1;
  v29 = 1;
  while (1)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __s1[6] = v10;
    v41 = v10;
    __s1[4] = v10;
    __s1[5] = v10;
    __s1[2] = v10;
    __s1[3] = v10;
    __s1[0] = v10;
    __s1[1] = v10;
    __s2[6] = v10;
    v39 = v10;
    __s2[4] = v10;
    __s2[5] = v10;
    __s2[2] = v10;
    __s2[3] = v10;
    __s2[0] = v10;
    __s2[1] = v10;
    v36 = v10;
    v37 = v10;
    v35[0] = v10;
    v35[1] = v10;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    result = sub_10007CE60(&v34, v7, a5, __b, &v43, &v32 + 1, &v31 + 1, __s1, &v36, &v28, &v26 + 1, &v30);
    if (result)
    {
      return result;
    }

    result = sub_10007CE60(&v33, v8, a5, &v44, &v42, &v32, &v31, __s2, v35, &v27, &v26, &v29);
    if (result)
    {
      return result;
    }

    v13 = v27;
    v12 = v28;
    if (v28 > 0 || v27 >= 1)
    {
      if (HIBYTE(v26) == 1)
      {
        doReorder(__s1, &v36, v28);
      }

      if (v26 == 1)
      {
        doReorder(__s2, v35, v13);
      }

      if (a5)
      {
        v14 = v13;
        v15 = v12;
        goto LABEL_50;
      }

      if (v12 < 2 || *(__s1 + (v12 - 1)) != 953 || HIDWORD(v31))
      {
        v15 = v12;
      }

      else
      {
        v16 = HIDWORD(v32);
        if (SHIDWORD(v32) >= 8)
        {
          v17 = 0;
          v28 = v12;
          goto LABEL_25;
        }

        v17 = 0;
        while (*(&v39 + v12 + 3) == 953)
        {
          ++v17;
          v15 = v12 - 1;
          if (v17 < 8 - HIDWORD(v32))
          {
            v18 = v12-- > 2;
            if (v18)
            {
              continue;
            }
          }

          goto LABEL_24;
        }

        v15 = v12;
LABEL_24:
        v28 = v15;
        LODWORD(v12) = v15;
        if (SHIDWORD(v32) >= 1)
        {
LABEL_25:
          v19 = HIDWORD(v32);
          do
          {
            *(&v45 + v17 + v19 + 3) = *(&v45 + v19 + 3);
            *(&v42 + v17 + v19 + 7) = *(&v42 + v19 + 7);
            v18 = v19-- > 1;
          }

          while (v18);
          v15 = v12;
        }

        if (v17)
        {
          bzero(&v43, v17);
          memset_pattern16(__b, &unk_10009E4D0, 4 * v17);
        }

        HIDWORD(v32) = v16 + v17;
      }

      if (v13 >= 2 && (*(__s2 + (v13 - 1)) == 953 ? (v20 = v31 == 0) : (v20 = 0), v20))
      {
        v21 = v32;
        v22 = 0;
        if (v32 > 7)
        {
          goto LABEL_44;
        }

        while (*(&v37 + v13 + 3) == 953)
        {
          ++v22;
          v14 = v13 - 1;
          if (v22 < 8 - v32)
          {
            v18 = v13-- > 2;
            if (v18)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        v14 = v13;
LABEL_43:
        v27 = v14;
        LODWORD(v13) = v14;
        if (v32 >= 1)
        {
LABEL_44:
          v23 = v32;
          do
          {
            *(&v43 + v22 + v23 + 1) = *(&v43 + v23 + 1);
            *(&v41 + v22 + v23 + 15) = *(&v41 + v23 + 15);
            v18 = v23-- > 1;
          }

          while (v18);
          v14 = v13;
        }

        if (v22)
        {
          bzero(&v42, v22);
          memset_pattern16(&v44, &unk_10009E4D0, 4 * v22);
        }

        LODWORD(v32) = v21 + v22;
      }

      else
      {
        v14 = v13;
      }

LABEL_50:
      if (v15 != v14 || memcmp(__s1, __s2, 4 * v14))
      {
        result = 0;
        *a6 = 0;
        return result;
      }
    }

    if (v34 >= v7 && SHIDWORD(v32) < 1 || v33 >= v8 && v32 <= 0)
    {
      v24 = 0;
      if (v34 == v7 && !HIDWORD(v32) && v33 == v8)
      {
        v24 = v32 == 0;
      }

      result = 0;
      *a6 = v24;
      return result;
    }
  }
}

uint64_t sub_10007DB04(int a1)
{
  if (a1 >= 983040)
  {
    return 0;
  }

  if (a1 == 953)
  {
    return 240;
  }

  v2 = a1 - 711680;
  if (a1 <= 205823)
  {
    v2 = a1;
  }

  LOWORD(v3) = word_100096430[v2 >> 8];
  if (v3)
  {
    v4 = (v3 & 0xFF00) == 44288;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return v3;
  }

  v3 = word_100098FAC[16 * (v3 & 0xFFF) + (v2 >> 4)];
  if (!v3)
  {
    return v3;
  }

  if ((v3 & 0xFF00) == 0xAE00)
  {
    return 0;
  }

  if ((v3 & 0xFF00) == 0xAD00)
  {
    return v3;
  }

  v5 = word_10009ACCC[16 * (v3 & 0xFFF) + (v2 & 0xF)];
  if ((v5 & 0xFF00) == 0xAD00)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t nx_corruption_detected_int(uint64_t a1)
{
  if (a1)
  {
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(a1);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s Container corruption detected by %s:%u!\n");
  }

  else
  {
    v2 = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(v2, "%s:%d: Container corruption detected by %s:%u!\n");
  }

  return 92;
}

unint64_t obj_checksum_verify_phys(void *a1, int a2, int8x16_t a3, int8x16_t a4)
{
  result = fletcher64_verify_cksum(a1, (a1 + 1), (a2 - 8), 0, a3, a4);
  if (result)
  {
    log_err("%s:%d: failed: cksum 0x%016llx, oid 0x%llx, type 0x%x/0x%x, size %d\n", "obj_checksum_verify_phys", 52, *a1, a1[1], *(a1 + 6), *(a1 + 7), a2);
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "obj_checksum_verify_phys", 54);
    return 92;
  }

  return result;
}

uint64_t nx_superblock_sanity_check_extent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v5 = (a2 + 48);
  if (!a2)
  {
    v5 = (a1 + 40);
  }

  v6 = *v5;
  if ((a5 ^ 1u) > a3 || v6 - 1 < a3)
  {
    return 22;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (v6 - a3 >= a4)
  {
    return 0;
  }

  return 22;
}

unint64_t nx_check_superblock(uint64_t a1, unsigned int a2, int a3, int8x16_t a4, int8x16_t a5)
{
  if (a2 < 0x1000)
  {
    return 22;
  }

  if (*(a1 + 32) != 1112758350)
  {
    return 79;
  }

  if (a3 || (v8 = *(a1 + 36), v8 == a2))
  {
    result = obj_checksum_verify_phys(a1, a2, a4, a5);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 36);
  }

  v9 = *(a1 + 24);
  v10 = v9 != -2147483647;
  if (v9 == -2147483647)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(a1 + 28))
  {
    v10 = v11;
  }

  if (*(a1 + 8) != 1)
  {
    ++v10;
  }

  if (v8 < 0x1000)
  {
    ++v10;
  }

  if (v8 <= 0x10000)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (*(a1 + 88) < 0x400uLL)
  {
    ++v12;
  }

  v13 = *(a1 + 104);
  if ((v13 & 0x7FFFFFF8) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  v15 = v13 & 0x7FFFFFFF;
  v16 = *(a1 + 40);
  if ((v13 & 0x7FFFFFFF) > 0x1000)
  {
    ++v14;
  }

  if (v16 <= v15)
  {
    ++v14;
  }

  v17 = *(a1 + 112);
  v18 = v16 - 1;
  v20 = v17 < 1 || v18 < v17;
  if ((v13 & 0x80000000) != 0)
  {
    v14 += v20;
  }

  else if ((v20 & 1) != 0 || v13 >= 2 && v16 - v17 < v13)
  {
    ++v14;
  }

  if (*(a1 + 128) >= v15)
  {
    ++v14;
  }

  v21 = *(a1 + 108);
  if ((v21 & 0x7FFFFFF8) != 0)
  {
    v22 = v14;
  }

  else
  {
    v22 = v14 + 1;
  }

  v23 = v21 & 0x7FFFFFFF;
  if (v16 > (v21 & 0x7FFFFFFF))
  {
    v24 = v22;
  }

  else
  {
    v24 = v22 + 1;
  }

  v25 = *(a1 + 120);
  v27 = v25 < 1 || v18 < v25;
  if ((v21 & 0x80000000) != 0)
  {
    v24 += v27;
    LODWORD(v21) = 1;
  }

  else if ((v27 & 1) != 0 || v21 >= 2 && v16 - v25 < v21)
  {
    ++v24;
  }

  if (*(a1 + 132) < v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    LODWORD(v13) = 1;
  }

  if (v17 >= v25)
  {
    v13 = v21;
  }

  else
  {
    v13 = v13;
  }

  if (v17 >= v25)
  {
    v29 = *(a1 + 120);
  }

  else
  {
    v29 = *(a1 + 112);
  }

  if (v17 <= v25)
  {
    v17 = *(a1 + 120);
  }

  if ((v29 + v13) <= v17)
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 + 1;
  }

  if ((*(a1 + 64) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (v30)
    {
      v31 = 193;
LABEL_106:
      is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
      log_corrupt(is_panic_on_corruption_enabled, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "nx_check_superblock", v31);
      return 92;
    }

    return 0;
  }

  v32 = *(a1 + 140);
  if (!*(a1 + 152))
  {
    ++v30;
  }

  if (!*(a1 + 160))
  {
    ++v30;
  }

  if (!(a3 | v32))
  {
    if (!*(a1 + 148) && !*(a1 + 136) && !*(a1 + 144))
    {
      goto LABEL_104;
    }

    v32 = 0;
  }

  if (*(a1 + 136) >= v15)
  {
    ++v30;
  }

  v33 = *(a1 + 148);
  if (*(a1 + 144) >= v23)
  {
    ++v30;
  }

  if (v32 < 2)
  {
    ++v30;
  }

  if (v32 < v15)
  {
    v34 = v30;
  }

  else
  {
    v34 = v30 + 1;
  }

  if (v33 < 2)
  {
    ++v34;
  }

  if (v33 < v23)
  {
    v30 = v34;
  }

  else
  {
    v30 = v34 + 1;
  }

LABEL_104:
  if (v30 | (*(a1 + 180) > 0x64u))
  {
    v31 = 226;
    goto LABEL_106;
  }

  return 0;
}

pthread_cond_t *free_cv(pthread_cond_t *result)
{
  if (result)
  {
    return pthread_cond_destroy(result);
  }

  return result;
}

uint64_t cv_wait(pthread_cond_t *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, timespec *a5)
{
  if (a5)
  {
    v14.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v14.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_REALTIME, &v14);
    v8 = __OFADD__(a5->tv_sec, v14.tv_sec);
    v9 = a5->tv_sec + v14.tv_sec;
    a5->tv_sec = v9;
    if (v8)
    {
      return 35;
    }

    else
    {
      tv_nsec = a5->tv_nsec;
      v8 = __OFADD__(tv_nsec, v14.tv_nsec);
      v12 = tv_nsec + v14.tv_nsec;
      if (v8)
      {
        v12 = 999999999;
      }

      a5->tv_nsec = v12;
      if (v12 > 0x3B9ACA00)
      {
        v13 = v12 - 1000000000;
        a5->tv_sec = v9 + (v13 - 1) / 0x3B9ACA00 + 1;
        a5->tv_nsec = v13 - 1000000000 * ((v13 - 1) / 0x3B9ACA00);
      }

      LODWORD(result) = pthread_cond_timedwait(a1, a2, a5);
      if (result == 60)
      {
        return 35;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {

    return pthread_cond_wait(a1, a2);
  }
}

const char *log_debug(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 5)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *log_info(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 4)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *log_warn(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 3)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *log_err(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 2)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

uint64_t log_corrupt(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (apfs_log_level >= 1)
  {
    return vfprintf(__stderrp, a2, va);
  }

  return result;
}

void *_apfs_obj_zalloc(size_t size, uint64_t a2)
{
  if (size == 0x2000)
  {
    v2 = qword_1000C40F8;
    goto LABEL_5;
  }

  v2 = size;
  if (size == 4096)
  {
    v2 = *(&apfs_zone_infos + ((a2 << 63 >> 63) & 0x78) + 8);
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
  v1 = *(&apfs_zone_infos + 3 * a1 + 1);
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

    v4 = &qword_1000C40F8;
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

    v4 = (&apfs_zone_infos + ((a3 << 63 >> 63) & 0x78) + 8);
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
    v2 = *(&apfs_zone_infos + 3 * a2 + 1);
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

void *_apfs_realloc_typed(void *a1, uint64_t a2, size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_realloc(a1, size, type_id);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, size - a2, memory_order_relaxed);
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
  *&v13 = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v12 = sub_100028F2C;
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
    v12 = sub_100028F2C;
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

uint64_t sub_10007EA44(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(a1 + 56) = xmmword_10009E4E0;
  v4 = *(a3 + 32);
  *(a1 + 88) = 1024;
  *(a1 + 96) = v4;
  uuid_copy((a1 + 72), (a3 + 64));
  return 0;
}

uint64_t sub_10007EAAC(uint64_t a1, unsigned int *a2)
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

uint64_t sub_10007EBD0(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2 && !*(*a1 + 940))
  {
    sub_100038BA0(v2);
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
  v6 = sub_100010A34(a1, &v46);
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

  v7 = sub_1000122FC(a1, a2, v46, a3);
  sub_100038BA0(v46);
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
    v17 = sub_10003BEB0(*(a1 + 392), 0x40000000uLL, v14, &om_desc, 0, 0, 0, 0, &v44);
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
    sub_100038BA0(v44);
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
    sub_100038BA0(v45);
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
        v23 = sub_10003BEB0(*(a1 + 392), 0, v22, &apfs_desc, 0, 0, 0, 0, &v43);
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
        sub_100038BA0(v43);
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

  if (!*(v13 + 1344) || !sub_10003A02C(*(v13 + 176)))
  {
    return 0;
  }

  v42[0] = 0;
  v42[1] = 0;
  v41 = 0;
  v40 = 0;
  v24 = sub_10003AB34(*(*(a1 + 376) + 176), &v40, v42);
  HIDWORD(v42[0]) = 255;
  if (v24 || (v24 = sub_10003BEB0(*(a1 + 392), v40, *(*(a1 + 376) + 1344), v42, 0, 0, 0, 0, &v41), v24))
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
    v7 = sub_10003F05C(a1, a2, v41, a3);
    sub_100038BA0(v41);
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

  result = sub_10003BEB0(a1[49], 0x80000000, *(a1[47] + 168), &nx_reaper_desc, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[53] = *a2;
LABEL_2:
    sub_10003E55C(v3);
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
    v7 = sub_10003EFD0(a3);
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
    v7 = sub_10003EF5C(a3);
    goto LABEL_5;
  }

LABEL_6:
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  if (*(v6 + 88) && sub_10003A02C(*(v6 + 72)))
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

        v8 = sub_10003F05C(v32, a2, v37, a4);
        sub_100038BA0(v37);
      }

      if (v36)
      {
        sub_100038BA0(v36);
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
    v13 = sub_10003BEB0(a1[49], 0x80000000uLL, v11, &nx_reap_list_desc, 0, 0, 0, 0, &v38);
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
      v15 = sub_10003EFD0(v38);
      goto LABEL_23;
    }

    if (a4 == 1)
    {
      v15 = sub_10003EF5C(v38);
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

          if (sub_10003A02C(v21))
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

              v8 = sub_10003F05C(v25, a2, v37, a4);
              sub_100038BA0(v37);
            }

            if (v36)
            {
              sub_100038BA0(v36);
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

    sub_100038BA0(v38);
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

    sub_100038BA0(v38);
  }

  while (!v8 && v11);
  return v8;
}

uint64_t sub_10007F834(uint64_t a1, int a2)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 108) = (a2 & 0xFFFFFFFC) - 112;
  return 0;
}

uint64_t sub_10007F858(void *a1)
{
  v2 = a1[7];
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v5 = *(v2 + 108);
  v6 = (sub_10003A024(a1) & 0xFFFFFFFCLL) - 112;
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
  v13 = sub_10003A024(a1);
  result = 0;
  a1[48] = v2 + v13 - *(v2 + 108);
  return result;
}

uint64_t sub_10007F934(uint64_t a1, unsigned int a2)
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
    v6 = xmmword_100095FC0;
    v7 = xmmword_100095FD0;
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

uint64_t sub_10007FA28(void *a1)
{
  v2 = a1[7];
  v3 = v2[11];
  v4 = v3 > ((sub_10003A024(a1) - 64) / 0x28);
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
    v14 = sub_10003BEB0(a1[49], 0, a4, &apfs_desc, 0, 0, 0, 0, &v24);
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

  v19 = sub_10003AB34(a2, &v23, &v21);
  if (v19)
  {
    v16 = v19;
  }

  else
  {
    LODWORD(v22) = a3;
    v16 = sub_10003BEB0(a1[49], v23, a5, &v21, 0, v24, 0, 0, a7);
    if (!v16)
    {
      return v16;
    }
  }

  log_err("%s:%d: %s unable to get object 0x%llx: %d\n", "nx_reaper_obj_get", 1059, (a1[48] + 212), a5, v16);
  if (v24)
  {
    sub_100038BA0(v24);
  }

  *a7 = 0;
  *a6 = 0;
  return v16;
}

uint64_t nx_reaper_add_ext(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, void *a8)
{
  v42 = 0;
  memset(v43, 170, sizeof(v43));
  v16 = nx_reaper_get(a1, &v43[2]);
  if (v16)
  {
    return v16;
  }

  v17 = *(v43[2] + 376);
  v16 = sub_10003B784(a2, &v42);
  if (v16)
  {
LABEL_3:
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_ext", 1255, (*(a1 + 384) + 212), a2, v16);
LABEL_14:
    sub_100038BA0(v43[2]);
    return v16;
  }

  if (!*(v42 + 24))
  {
    v16 = 22;
    goto LABEL_3;
  }

  sub_10003D8A4(v43[2], 2);
  v18 = sub_10003D934(v43[2], 0, a6);
  if (v18)
  {
    v16 = v18;
LABEL_13:
    sub_10003DE58(v43[2], 2);
    goto LABEL_14;
  }

  v19 = *(a1 + 392);
  if (*(v17 + 48) == 0)
  {
    v20 = sub_10003A7B8(v19, 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v43[1]);
    if (v20)
    {
      v16 = v20;
      log_err("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_13;
    }

    v23 = sub_100039CE0(v43[1]);
    *(v17 + 48) = v23;
    *(v17 + 56) = v23;
    v24 = (v17 + 68);
    goto LABEL_17;
  }

  v21 = sub_10003BEB0(v19, 2147483649, *(v17 + 56), &nx_reap_list_desc, 0, 0, 0, a6, &v43[1]);
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
    sub_10003EE48(v43[2], a6, 0);
  }

  v25 = *(v43[1] + 376);
  if (v25[12] > (v25[11] - 2))
  {
    v26 = sub_10003A7B8(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, v43);
    if (v26)
    {
      v16 = v26;
      sub_10003DE58(v43[2], 2);
      sub_100038BA0(v43[1]);
      goto LABEL_14;
    }

    v27 = sub_100039CE0(v43[0]);
    *(*(v43[1] + 376) + 32) = v27;
    *(v17 + 56) = sub_100039CE0(v43[0]);
    v28 = *(v17 + 68);
    if (v28)
    {
      *(v17 + 68) = v28 + 1;
    }

    sub_10003EE48(v43[2], a6, 0);
    sub_100038BA0(v43[1]);
    v43[1] = v43[0];
    v25 = *(v43[0] + 376);
  }

  v29 = *(v17 + 32);
  *(v17 + 32) = v29 + 1;
  v30 = v25[15];
  if (v30 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1325, (*(a1 + 384) + 212));
    sub_10003DE58(v43[2], 2);
    sub_100038BA0(v43[1]);
    sub_100038BA0(v43[2]);
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
    sub_10003DE58(v43[2], 2);
    sub_100038BA0(v43[1]);
    sub_100038BA0(v43[2]);
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
  sub_10003EE48(v43[1], a6, 0);
  sub_10003DE58(v43[2], 2);
  sub_100038BA0(v43[1]);
  sub_100038BA0(v43[2]);
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
  v40 = 0;
  memset(v41, 170, sizeof(v41));
  v14 = nx_reaper_get(a1, &v41[2]);
  if (v14)
  {
    return v14;
  }

  v15 = *(v41[2] + 376);
  v14 = sub_10003B784(a2, &v40);
  if (v14)
  {
LABEL_3:
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_sub_object", 1442, (*(a1 + 384) + 212), a2, v14);
LABEL_4:
    sub_100038BA0(v41[2]);
    return v14;
  }

  if (!*(v40 + 24))
  {
    v14 = 22;
    goto LABEL_3;
  }

  sub_10003D8A4(v41[2], 2);
  v17 = sub_10003D934(v41[2], 0, a6);
  if (v17)
  {
    v14 = v17;
    sub_10003DE58(v41[2], 2);
    goto LABEL_4;
  }

  v18 = *(v15 + 48);
  if (!v18 && !*(v15 + 56))
  {
    v21 = sub_10003A7B8(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v41[1]);
    if (v21)
    {
      v14 = v21;
      log_err("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_14;
    }

    v22 = sub_100039CE0(v41[1]);
    *(v15 + 48) = v22;
    *(v15 + 56) = v22;
    v20 = (v15 + 68);
    goto LABEL_21;
  }

  v19 = sub_10003BEB0(*(a1 + 392), 2147483649, v18, &nx_reap_list_desc, 0, 0, 0, a6, &v41[1]);
  if (v19)
  {
    v14 = v19;
    log_err("%s:%d: %s failed to get reap list head: %d\n");
LABEL_14:
    log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_reaper_add_sub_object", 1478, (*(a1 + 384) + 212), v14);
    sub_10003DE58(v41[2], 2);
    sub_100038BA0(v41[2]);
    return v14;
  }

  v20 = (v15 + 68);
  if (!*(v15 + 68) && *(v15 + 48) == *(v15 + 56))
  {
LABEL_21:
    *v20 = 1;
    sub_10003EE48(v41[2], a6, 0);
  }

  v23 = *(v41[1] + 376);
  if (v23[12] > v23[11] + ~(a7 & 1u))
  {
    v24 = sub_10003A7B8(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, v41);
    if (v24)
    {
      v14 = v24;
      sub_10003DE58(v41[2], 2);
      sub_100038BA0(v41[1]);
      goto LABEL_4;
    }

    v25 = v41[0];
    *(*(v41[0] + 376) + 32) = *(v15 + 48);
    *(v15 + 48) = sub_100039CE0(v25);
    v26 = *(v15 + 68);
    if (v26)
    {
      *(v15 + 68) = v26 + 1;
    }

    sub_10003EE48(v41[2], a6, 0);
    sub_100038BA0(v41[1]);
    v41[1] = v41[0];
    v23 = *(v41[0] + 376);
  }

  v27 = v23[15];
  if (a7)
  {
    if (v27 == -1)
    {
      log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1514, (*(a1 + 384) + 212));
      sub_10003DE58(v41[2], 2);
      sub_100038BA0(v41[1]);
      sub_100038BA0(v41[2]);
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
    sub_10003DE58(v41[2], 2);
    sub_100038BA0(v41[1]);
    sub_100038BA0(v41[2]);
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
  sub_10003EE48(v41[1], a6, 0);
  sub_10003DE58(v41[2], 2);
  sub_100038BA0(v41[1]);
  sub_100038BA0(v41[2]);
  return 0;
}

void nx_reaper_check_for_work(uint64_t *a1)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (!nx_reaper_get(a1, &v6))
  {
    v2 = v6[47];
    sub_10003D8A4(v6, 2);
    if (!*(v2 + 88))
    {
      v3 = *(v2 + 48);
      if (!v3 || sub_10003BEB0(a1[49], 0x80000000uLL, v3, &nx_reap_list_desc, 0, 0, 0, 0, &v5))
      {
        goto LABEL_4;
      }

      v4 = v5[47];
      if (!*(v4 + 48) && !*(v4 + 32))
      {
        sub_100038BA0(v5);
        goto LABEL_4;
      }

      sub_100038BA0(v5);
    }

    sub_10003DE58(v6, 2);
    sub_100080734(a1);
    sub_10003D8A4(v6, 2);
LABEL_4:
    sub_10003DE58(v6, 2);
    sub_100038BA0(v6);
  }
}

uint64_t sub_100080734(uint64_t *a1)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  result = nx_reaper_get(a1, &v20);
  if (result)
  {
    return result;
  }

  v3 = v20[47];
  sub_10003D8A4(v20, 2);
  v4 = v20;
  if (*(v20 + 98) || *(v20 + 99))
  {
    sub_10003DE58(v20, 2);
    sub_100038BA0(v20);
    log_debug("%s:%d: reaper thread is exiting, returning EBUSY\n", "nx_reaper", 1698);
    return 16;
  }

  v5 = 0;
  *(v20 + 98) = 1;
  while (1)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    sub_10003DE58(v4, 2);
    v19 = 0;
    v6 = tx_enter(a1, &v19);
    sub_10003D8A4(v20, 2);
    v4 = v20;
    if (v6)
    {
      goto LABEL_38;
    }

    v7 = sub_10003D934(v20, 0, v19);
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

    v8 = sub_100081974(a1, v20, v19);
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
    sub_10003DE58(v4, 2);
    if ((*(v3 + 104) & 4) == 0)
    {
      goto LABEL_16;
    }

    v9 = sub_10003B784(*(v3 + 72), &v18);
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
      sub_10003D8A4(v20, 2);
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

      sub_100038BA0(v17);
      if (v16)
      {
        sub_100038BA0(v16);
        v16 = 0;
      }
    }

    sub_10003D8A4(v20, 2);
    if (v11 != 36)
    {
      v5 = 1;
      goto LABEL_17;
    }

    *(v3 + 64) |= 2u;
    v5 = 1;
LABEL_20:
    sub_10003EE48(v20, v19, 0);
    sub_10003DE58(v20, 2);
    sub_100010AB8(a1, 0, &v15, &v14, 0, 0);
    v6 = tx_leave(a1, v19, (v14 < 0x3E8) | (4 * (v14 < 0x7D0)));
    sub_10003D8A4(v20, 2);
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
  sub_10003DE58(v4, 2);
  sub_100038BA0(v20);
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
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (!nx_reaper_get(a1, &v4))
  {
    sub_10003D8A4(v4, 2);
    v2 = v4;
    ++*(v4 + 99);
    sub_10003DE58(v2, 2);
    v3 = a1[53];
    if (v3)
    {
      sub_100038BA0(v3);
      a1[53] = 0;
    }

    sub_100038BA0(v4);
  }
}

uint64_t nx_reaper_wait(uint64_t *a1, unint64_t a2)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v4 = nx_reaper_get(a1, &v8);
  if (!v4)
  {
    v5 = v8[7];
    sub_10003D8A4(v8, 2);
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
        sub_10003DE58(v8, 2);
        v4 = sub_100080734(a1);
        sub_10003D8A4(v8, 2);
        if (v4)
        {
          goto LABEL_10;
        }
      }

      v4 = 0;
    }

LABEL_10:
    sub_10003DE58(v8, 2);
    sub_100038BA0(v8);
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
    if (v8 && sub_100039CE0(a1[i]) == a2)
    {
      sub_10003E55C(v8);
      v14 = 0;
      *a3 = v8;
      return v14;
    }
  }

  sub_10003D8A4(a1, 2);
  v9 = 0;
  v10 = -1;
  do
  {
    v11 = &a1[v9];
    v12 = v11[54];
    if (v12)
    {
      if (sub_100039CE0(v11[54]) == a2)
      {
        sub_10003E55C(v12);
        *a3 = v12;
        sub_10003DE58(a1, 2);
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
      sub_10003E55C(v13);
      v14 = 0;
    }
  }

  sub_10003DE58(a1, 2);
  return v14;
}

uint64_t nx_metadata_fragmented_sanity_check(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[2] = v5;
  v14[3] = v5;
  v14[0] = v5;
  v14[1] = v5;
  v6 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v19);
  if (!v6)
  {
    v18 = 0;
    bt_iterator_init(v14, v19, 0, 0, &v18, 8, 8, &v16, 0x10u);
    v6 = v7;
    if (!v7)
    {
      v9 = 0;
      while (!bt_iterator_ended(v14))
      {
        if (v18 == v9)
        {
          v6 = 0;
        }

        else
        {
          v6 = nx_corruption_detected_int(a1);
        }

        if (nx_superblock_sanity_check_extent(a1[47], 0, v16, v17, 0))
        {
          v6 = nx_corruption_detected_int(a1);
        }

        v10 = v17;
        if (v17 > a3 - v9)
        {
          v6 = nx_corruption_detected_int(a1);
          v10 = v17;
        }

        if (v6)
        {
          goto LABEL_3;
        }

        v9 += v10;
        v11 = bt_iterator_next(v14);
        if (v11)
        {
          v6 = v11;
          v12 = (a1[48] + 212);
          v13 = strerror(v11);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_fragmented_sanity_check", 2351, v12, v13, v6);
          goto LABEL_3;
        }
      }

      if (a3 == v9)
      {
        v6 = 0;
      }

      else
      {
        v6 = nx_corruption_detected_int(a1);
      }
    }

LABEL_3:
    sub_100038BA0(v19);
  }

  return v6;
}

uint64_t nx_metadata_fragmented_block_address_lookup(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
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

    sub_100038BA0(v16);
  }

  return v8;
}

uint64_t nx_metadata_range_overlap_check(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = a1[60];
  if (!v8)
  {
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
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (a4)
  {
    v20 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[0] = v6;
    v15[1] = v6;
    v15[2] = v6;
    v15[3] = v6;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v7 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v20);
    if (v7)
    {
      return v7;
    }

    v8 = btree_iterate_nodes(v20, 0, 0, sub_10008148C, 0, 0);
    if (!v8)
    {
      v19 = 0;
      bt_iterator_init(v15, v20, 0, 0, &v19, 8, 8, &v17, 0x10u);
      v7 = v11;
      if (bt_iterator_ended(v15))
      {
        goto LABEL_9;
      }

      while (1)
      {
        v8 = sub_1000813A8(a1, v17, v18, 0);
        if (v8)
        {
          break;
        }

        v12 = bt_iterator_next(v15);
        if (v12)
        {
          v7 = v12;
          v13 = (a1[48] + 212);
          v14 = strerror(v12);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_range_add", 2587, v13, v14, v7);
          goto LABEL_9;
        }

        if (bt_iterator_ended(v15))
        {
          v7 = 0;
          goto LABEL_9;
        }
      }
    }

    v7 = v8;
LABEL_9:
    sub_100038BA0(v20);
    return v7;
  }

  v9 = a3 & 0x7FFFFFFF;

  return sub_1000813A8(a1, a2, v9, a5);
}

uint64_t sub_1000813A8(uint64_t *a1, unint64_t a2, unint64_t a3, int a4)
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

uint64_t sub_10008148C(uint64_t a1)
{
  v2 = *(*a1 + 392);
  v3 = sub_100039CE0(a1);
  v4 = (sub_10003A024(a1) + *(v2[47] + 36) - 1) / *(v2[47] + 36);

  return sub_1000813A8(v2, v3, v4, 0);
}

const char *nx_metadata_range_optimize(const char *result)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  *(result + 59) = 0;
  *(result + 60) = 0;
  v1 = *(result + 58);
  if (v1)
  {
    v2 = result;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7[2] = v3;
    v7[3] = v3;
    v7[0] = v3;
    v7[1] = v3;
    v9[1] = 0;
    v11 = 0;
    bt_iterator_init(v7, v1, 0, 0, &v11, 8, 8, &v10, 0x10u);
    result = bt_iterator_ended(v7);
    if (!result)
    {
      v4 = 0;
      while (1)
      {
        v5 = v10;
        if (v10)
        {
          v6 = *(&v10 + 1);
          if (*(&v10 + 1))
          {
            goto LABEL_9;
          }
        }

        else
        {
          v6 = *(&v10 + 1) - 1;
          *&v10 = 1;
          *(&v10 + 1) = v6;
          v5 = 1;
          if (v6)
          {
LABEL_9:
            if (v9[1] && v9[0] + v9[1] == v5)
            {
              v9[1] += v6;
              if (bt_update(*(v2 + 58), 0, v9, 8, v9, 0x10u, 0))
              {
                return log_err("%s:%d: %s error updating metadata ranges tree: %d\n");
              }

              if (bt_remove(*(v2 + 58), 0, &v10, 8u, 0))
              {
                return log_err("%s:%d: %s error removing coalesced extent from metadata ranges tree: %d\n");
              }
            }

            else
            {
              ++v4;
              *v9 = v10;
            }
          }
        }

        bt_iterator_next(v7);
        result = bt_iterator_ended(v7);
        if (result)
        {
          if (v4 == 1)
          {
            *(v2 + 472) = *v9;
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
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0;
    v8 = 0xAAAAAAAAAAAAAAAALL;
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
    sub_100038BA0(v9);
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

  v5 = sub_10001A2C8(a1, v10);
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

uint64_t nx_ratelimit_log_allowed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 1;
  }

  timestamp = get_timestamp();
  if ((timestamp - *(a1 + 1056)) >= 0x3B9ACA01)
  {
    v6 = 0;
    *(a1 + 1056) = timestamp;
LABEL_6:
    *(a1 + 1064) = v6 + 1;
    return 1;
  }

  v6 = *(a1 + 1064);
  if (v6 <= 0xF)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_100081974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 376);
  v5 = *(v4 + 48);
  if (!v5)
  {
    return 0;
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_10003BEB0(*(a1 + 392), 0x80000001uLL, v5, &nx_reap_list_desc, 0, 0, 0, a3, &v20);
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
    sub_100038BA0(v10);
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
      sub_10003EE48(a2, a3, 0);
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
      sub_10003EE48(v20, a3, 0);
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
        sub_10003EE48(a2, a3, 0);
      }

LABEL_20:
      v10 = v20;
      goto LABEL_21;
    }

    v16 = sub_10003BEB0(*(a1 + 392), 0x80000000uLL, v15, &nx_reap_list_desc, 0, 0, 0, a3, &v19);
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

    sub_10003EE48(a2, a3, 0);
    sub_10003BB60(v20);
    sub_100038BA0(v20);
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
  sub_100038BA0(v20);
  return v9;
}

uint64_t nx_check(uint64_t *a1, char a2)
{
  v255 = 0xAAAAAAAAAAAAAAAALL;
  v256 = 0xAAAAAAAAAAAAAAAALL;
  v254 = 0;
  v252 = 0xAAAAAAAAAAAAAAAALL;
  v253 = 0;
  v251 = 0;
  memset(v250, 170, sizeof(v250));
  memset(v249, 170, sizeof(v249));
  v4 = a1[47];
  v5 = sub_100010A34(a1, &v256);
  if (v5)
  {
    v6 = v5;
    log_err("%s:%d: %s unable to get spaceman: %d\n", "nx_check", 70, (a1[48] + 212), v5);
    return v6;
  }

  v7 = v256[47];
  v237 = sub_100039CE8(v256);
  v8 = *(v7 + 32);
  v240 = v4;
  v9 = *(v4 + 36);
  if (v8 != v9)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman block size %d doesn't match nx superblock block size %d\n", "nx_check", 78, (a1[48] + 212), v8, v9);
    v8 = *(v7 + 32);
  }

  v227 = a2;
  v10 = *(v7 + 36);
  LODWORD(v11) = v8;
  if (v10 != 8 * v8)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman blocks per chunk is bad: %d\n", "nx_check", 82, (a1[48] + 212), v10);
    LODWORD(v11) = *(v7 + 32);
  }

  v12 = v11 + 0x1FFFFFFFD8;
  v13 = v12 >> 5;
  v14 = *(v7 + 40);
  if (v14 == (v12 >> 5))
  {
    v11 = v11;
  }

  else
  {
    ++v254;
    log_warn("%s:%d: %s spaceman chunks per cib is bad: %d\n", "nx_check", 86, (a1[48] + 212), v14);
    v11 = *(v7 + 32);
  }

  v243 = v11 + 0x7FFFFFFD8;
  v15 = (v11 + 0x7FFFFFFD8) >> 3;
  v16 = *(v7 + 44);
  if (v16 != v15)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman cibs per cab is bad: %d\n", "nx_check", 90, (a1[48] + 212), v16);
  }

  v17 = (8 * v8);
  v18 = *(v7 + 48);
  v231 = (v7 + 48);
  v19 = *(v7 + 96) + v18;
  v20 = *(v240 + 40);
  if (v19 != v20)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman block count %lld doesn't match nx superblock block count %lld\n", "nx_check", 94, (a1[48] + 212), v19, v20);
    v18 = *v231;
  }

  v21 = *(v7 + 56);
  if (v18 % v17)
  {
    v22 = v18 / v17 + 1;
  }

  else
  {
    v22 = v18 / v17;
  }

  v23 = v237;
  if (v21 != v22)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman chunk count is bad: %lld\n", "nx_check", 97, (a1[48] + 212), v21);
    v21 = *(v7 + 56);
  }

  v24 = *(v7 + 64);
  v25 = (v12 >> 5);
  v235 = v25;
  if (v21 % v25)
  {
    v26 = v21 / v25 + 1;
  }

  else
  {
    v26 = v21 / v25;
  }

  if (v26 != v24)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman cib count is bad: %d\n", "nx_check", 100, (a1[48] + 212), v24);
    LODWORD(v24) = *(v7 + 64);
  }

  v27 = v24 / v15;
  if (v24 % v15)
  {
    ++v27;
  }

  if (v27 == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(v7 + 68);
  if (v29 != v28)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman cab count is bad: %d\n", "nx_check", 109, (a1[48] + 212), v29);
  }

  v30 = *(v7 + 72);
  v31 = *(v7 + 48);
  if (v30 > v31)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free count is too large: %lld > %lld\n", "nx_check", 112, (a1[48] + 212), v30, v31);
  }

  v33 = *(v7 + 96);
  v32 = *(v7 + 104);
  if (v33 % v17)
  {
    v34 = v33 / v17 + 1;
  }

  else
  {
    v34 = v33 / v17;
  }

  if (v32 != v34)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman tier2 chunk count is bad: %lld\n", "nx_check", 116, (a1[48] + 212), v32);
    v32 = *(v7 + 104);
  }

  v35 = *(v7 + 112);
  if (v32 % v235)
  {
    v36 = v32 / v235 + 1;
  }

  else
  {
    v36 = v32 / v235;
  }

  if (v36 != v35)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman tier2 cib count is bad: %d\n", "nx_check", 119, (a1[48] + 212), v35);
    LODWORD(v35) = *(v7 + 112);
  }

  v37 = v35 / v15;
  if (v35 % v15)
  {
    ++v37;
  }

  if (v37 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  v39 = *(v7 + 116);
  if (v39 != v38)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman tier2 cab count is bad: %d\n", "nx_check", 128, (a1[48] + 212), v39);
  }

  v40 = *(v7 + 120);
  v41 = *(v7 + 96);
  if (v40 > v41)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman tier2 free count is too large: %lld > %lld\n", "nx_check", 131, (a1[48] + 212), v40, v41);
  }

  v42.i64[0] = *(v7 + 64);
  v42.i64[1] = *(v7 + 112);
  v43 = vaddlvq_u32(v42) + *(v7 + 56) + *(v7 + 104);
  v44 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v44 != 3 * v43)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP block count is bad: %lld\n", "nx_check", 137, (a1[48] + 212), v44);
    v44 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = *(v7 + 160);
  if ((*(v7 + 32) + 8 * ((v44 + 63) >> 6) - 1) / *(v7 + 32) != v45)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bm block count is bad: %d\n", "nx_check", 140, (a1[48] + 212), v45);
  }

  v46 = *(v7 + 164) & 0x7FFFFFFF;
  if (v46 >= 0xFFFF)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap block count is too large: %d\n", "nx_check", 143, (a1[48] + 212), v46);
  }

  v47 = *(v7 + 148);
  if (v47 <= 3)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap tx multiplier is too small: %d\n", "nx_check", 146, (a1[48] + 212), v47);
  }

  v48 = *(v7 + 160);
  v49 = *(v7 + 164) & 0x7FFFFFFF;
  if (v49 / v48 <= 3)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap block count per tx is too small: %d\n", "nx_check", 149, (a1[48] + 212), v49 / v48);
    v48 = *(v7 + 160);
    v49 = *(v7 + 164) & 0x7FFFFFFF;
  }

  v50 = *(v7 + 148);
  if (v49 != v50 * v48)
  {
    v51 = 65534;
    if (v49 != 65534)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman IP bitmap block count is bad: %d\n", "nx_check", 156, (a1[48] + 212), v49);
      v48 = *(v7 + 160);
      v50 = *(v7 + 148);
      v51 = *(v7 + 164) & 0x7FFFFFFF;
    }

    if (v51 / v48 < v50 >> 1)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman IP bitmap block count is too low: %d\n", "nx_check", 159, (a1[48] + 212), v51);
    }
  }

  v52 = *(v7 + 48);
  v53 = *(v7 + 168);
  if (!v53 || v53 >= v52)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bm base address is bad: %lld\n", "nx_check", 166, (a1[48] + 212), v53);
  }

  v54 = *(v7 + 176);
  if (!v54 || v54 >= v52)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP base address is bad: %lld\n", "nx_check", 169, (a1[48] + 212), v54);
  }

  v245 = v43;
  v247 = a1;
  v236 = v15;
  v234 = v7;
  if (*(v7 + 160))
  {
    v55 = 0;
    v230 = 0;
    do
    {
      v56 = v256;
      v57 = *(v256[109] + 8 * v55);
      if (v57 > v23)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman IP bitmap block %d xid %lld > spaceman xid %lld\n", "nx_check", 176, (a1[48] + 212), v55, v57, v23);
        v56 = v256;
      }

      v58 = *(v56[110] + 2 * v55);
      if ((*(v7 + 164) & 0x7FFFFFFFu) <= v58)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman IP bitmap block %d index %d out of range\n", "nx_check", 179, (a1[48] + 212), v55, v58);
        v58 = *(v256[110] + 2 * v55);
      }

      v59 = sub_1000109F8(a1, v7, v58, &v249[2]);
      if (v59 || (v59 = sub_10003BEB0(a1[49], 0x40000000uLL, v249[2], &xmmword_100096020, 0, 0, 0, 0, &v251)) != 0)
      {
        v23 = v237;
        ++v254;
        log_warn("%s:%d: %s spaceman IP bitmap unable to get bitmap block %d @ %lld: %d\n", "nx_check", 187, (a1[48] + 212), v55, v249[2], v59);
      }

      else
      {
        v23 = v237;
        if (v55 == *(v7 + 160) - 1)
        {
          v60 = (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) % (8 * *(v7 + 32));
        }

        else
        {
          v60 = (8 * *(v7 + 32));
        }

        v230 += bitmap_count_bits(v251[7], 0, 0, v60);
        sub_100038BA0(v251);
      }

      ++v55;
    }

    while (v55 < *(v7 + 160));
  }

  else
  {
    v230 = 0;
  }

  v61 = v7;
  v63 = v43;
  v62 = a1;
  v64 = *(v7 + 56) + 2 * v245 + *(v7 + 104) - 1;
  if (v230 > v64)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap has too many free blocks %lld > %lld\n", "nx_check", 196, (a1[48] + 212), v230, v64);
  }

  v65 = *(v7 + 320);
  v66 = *(v7 + 164);
  LODWORD(v67) = v66 & 0x7FFFFFFF;
  if ((v66 & 0x7FFFFFFFu) <= v65)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 201, (a1[48] + 212), v65);
    v66 = *(v7 + 164);
    LODWORD(v67) = v66 & 0x7FFFFFFF;
  }

  v68 = *(v7 + 322);
  if (v67 > v68 || (++v254, log_warn("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 204, (a1[48] + 212), v68), v66 = *(v7 + 164), LODWORD(v67) = v66 & 0x7FFFFFFF, (v66 & 0x7FFFFFFF) != 0))
  {
    v69 = 0;
    v70 = 0;
    v71 = v256[111];
    do
    {
      v72 = *(v71 + 2 * v69);
      v73 = v72 == 0xFFFF || v67 > v72;
      if (!v73)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman IP bitmap free next %d, value %d invalid\n", "nx_check", 209, (a1[48] + 212), v69, v72);
        v66 = *(v7 + 164);
        v71 = v256[111];
        v72 = *(v71 + 2 * v69);
      }

      v67 = v66 & 0x7FFFFFFF;
      if (v67 > v72)
      {
        ++v70;
      }

      ++v69;
    }

    while (v69 < v67);
  }

  else
  {
    v70 = 0;
  }

  v74 = *(v7 + 320);
  if (v74 != 0xFFFF)
  {
    ++v70;
  }

  v75 = (v67 - *(v7 + 160));
  if (v70 != v75)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap next array free count is wrong, %lld != %d\n", "nx_check", 224, (a1[48] + 212), v70, v75);
    v66 = *(v7 + 164);
    v74 = *(v7 + 320);
  }

  v76 = v66 & 0x7FFFFFFF;
  v77 = v237;
  if (v76 && v76 > v74)
  {
    v78 = 1;
    do
    {
      --v70;
      if (v78 >= v76)
      {
        break;
      }

      v74 = *(v256[111] + 2 * v74);
      ++v78;
    }

    while (v76 > v74);
  }

  if (v70 < 0)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap free list corrupted, too long, count %lld\n");
  }

  else if (v70)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap free list corrupted, too short, count %lld\n");
  }

  v79 = *(v7 + 200);
  v80 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v79 > v80)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP free queue count is too large: %lld > %lld\n", "nx_check", 244, (a1[48] + 212), v79, v80);
  }

  if (*(v7 + 208))
  {
    v81 = sub_1000125F4(a1, v256, 0, 0, 0, &v250[4]);
    if (v81)
    {
      ++v254;
      log_warn("%s:%d: %s unable to get spaceman IP free queue tree: %d\n", "nx_check", 252, (a1[48] + 212), v81);
    }

    else if (v250[4])
    {
      v143 = btree_check(v250[4], 0, 0, 0);
      if (v143)
      {
        v144 = v143;
        ++v254;
        log_warn("%s:%d: %s spaceman IP free queue tree sanity check failed: %d\n", "nx_check", 256, (a1[48] + 212), v143);
        v249[1] = 0x1000000008;
      }

      else
      {
        v249[1] = 0x1000000008;
        v144 = bt_lookup_first(v250[4], 0, &v250[1], &v249[1] + 1, &v250[3], &v249[1]);
      }

      v170 = 0;
      v171 = 0;
      for (i = 0; !v144; v144 = bt_lookup_variant(v250[4], 0, &v250[1], &v249[1] + 1, HIDWORD(v249[1]), &v250[3], &v249[1], 4, 0, 0))
      {
        if (LODWORD(v249[1]))
        {
          v173 = v250[3];
        }

        else
        {
          v250[3] = 1;
          v173 = 1;
        }

        v174 = v250[1];
        if (v250[1] > v237)
        {
          ++v254;
          log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 269, (v247[48] + 212), v250[1], v250[2], v237);
          v174 = v250[1];
        }

        if (v174 >= i)
        {
          v176 = v250[2];
          if (v174 == i)
          {
            if (v250[2] < v171)
            {
              ++v254;
              log_warn("%s:%d: %s spaceman IP free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 277, (v247[48] + 212), v250[2], v171);
              v176 = v250[2];
            }

            v171 = v250[3] + v176;
          }

          else
          {
            v171 = 0;
            i = v174;
          }

          v175 = v247;
        }

        else
        {
          ++v254;
          v175 = v247;
          log_warn("%s:%d: %s spaceman IP free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 272, (v247[48] + 212), v174, i);
          v171 = 0;
          v176 = v250[2];
          i = v250[1];
        }

        v177 = sub_1000147CC(v175, v256, v176, v249);
        if (v177)
        {
          ++v254;
          if (v177 == 2)
          {
            log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld addr is bad\n");
          }

          else
          {
            log_warn("%s:%d: %s error getting IP block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
          }
        }

        if (v250[3] >= 2uLL)
        {
          v178 = sub_1000147CC(v247, v256, v250[3] + v250[2] - 1, v249);
          if (v178)
          {
            ++v254;
            if (v178 == 2)
            {
              log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld end addr is bad\n");
            }

            else
            {
              log_warn("%s:%d: %s error getting end block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
            }
          }
        }

        v170 += v173;
        LODWORD(v249[1]) = 8;
      }

      if (v144 != 2)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman IP free queue tree iteration aborted with error %d\n", "nx_check", 304, (v247[48] + 212), v144);
      }

      sub_100038BA0(v250[4]);
      v63 = v245;
      v62 = v247;
      v77 = v237;
      v61 = v7;
      v82 = v170;
      goto LABEL_123;
    }
  }

  v82 = 0;
LABEL_123:
  v83 = *(v61 + 200);
  if (v82 != v83)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 310, (v62[48] + 212), v83, v82);
  }

  v229 = v82;
  v84 = 0;
  v85 = 0;
  v241 = 0;
  v228 = 2 * v63;
  v232 = (v243 >> 3);
  v86 = v236;
  v87 = 1;
  do
  {
    v233 = v87;
    v88 = &v231[6 * v84];
    if (*(v88 + 4))
    {
      v239 = v84;
      v89 = 0;
      v244 = 0;
      v246 = 0;
      v90 = 0xFFFFFFFFLL;
      while (1)
      {
        if (*(v88 + 5))
        {
          if (v89 / v86 != v90 || v85 == 0)
          {
            v242 = v89 / v86;
            v92 = *(v256[v239 + 112] + 8 * v242);
            if (v253)
            {
              sub_100038BA0(v253);
              v253 = 0;
            }

            if (sub_10003BEB0(v62[49], 0x40000000uLL, v92, &xmmword_100096000, 0, 0, 0, 0, &v253))
            {
              ++v254;
              log_warn("%s:%d: %s unable to read cab %d @ %lld: %d\n");
              goto LABEL_198;
            }

            v122 = *(v253 + 56);
            v123 = *(v122 + 36);
            if (v123 > (sub_10003A024(v253) - 40) >> 3)
            {
              ++v254;
              log_warn("%s:%d: %s cab %d @ %lld cab_cib_count %d invalid\n", "nx_check", 337, (v62[48] + 212), v242, v92, *(v122 + 36));
              v89 = v89 + v232 - 1 + ~((v89 + v232 - 1) % v232);
              v85 = v122;
              v77 = v237;
              goto LABEL_198;
            }

            if (sub_100039CE8(v253) > v237)
            {
              ++v254;
              v124 = (v62[48] + 212);
              v125 = sub_100039CE8(v253);
              log_warn("%s:%d: %s cab %d xid %lld > spaceman xid %lld\n", "nx_check", 344, v124, v242, v125, v237);
            }

            v85 = v122;
            v126 = *(v122 + 32);
            v95 = v89 / v86;
            if (v126 != v242)
            {
              ++v254;
              log_warn("%s:%d: %s cab %d index %d should be %d\n", "nx_check", 347, (v62[48] + 212), v242, v126, v242);
              v95 = v89 / v86;
            }

            v127 = *(v122 + 36);
            v77 = v237;
            if (v127 != v86 && (*(v88 + 5) - 1 != v95 || v127 != *(v88 + 4) % v86))
            {
              ++v254;
              v128 = v86;
              if (*(v88 + 5) - 1 == v95)
              {
                v128 = *(v88 + 4) % v86;
              }

              log_warn("%s:%d: %s cab %d cib count %d should be %d\n", "nx_check", 352, (v62[48] + 212), v95, v127, v128);
              v95 = v89 / v86;
            }
          }

          else
          {
            v95 = v90;
          }

          v242 = v95;
          v94 = (v85 + 8 * (v89 - v95 * v86) + 40);
          v93 = v256;
        }

        else
        {
          v93 = v256;
          v94 = (v256[v239 + 112] + 8 * v89);
          v242 = v90;
        }

        v96 = *v94;
        v97 = sub_1000147CC(v62, v93, *v94, v249);
        if (v97)
        {
          ++v254;
          if (v97 == 2)
          {
            log_warn("%s:%d: %s spaceman chunk info block %lld addr %lld not within IP block range\n");
          }

          else
          {
            log_warn("%s:%d: %s error getting IP block index for spaceman chunk info block %lld addr %lld\n");
          }
        }

        if (!sub_10003BEB0(v62[49], 0x40000000uLL, v96, &xmmword_100096010, 0, 0, 0, 0, &v252))
        {
          v238 = v85;
          if (sub_100039CE8(v252) > v77)
          {
            ++v254;
            v98 = (v62[48] + 212);
            v99 = sub_100039CE8(v252);
            log_warn("%s:%d: %s cib %lld xid %lld > spaceman xid %lld\n", "nx_check", 374, v98, v89, v99, v77);
          }

          v100 = v252[7];
          v101 = *(v100 + 32);
          if (v89 != v101)
          {
            ++v254;
            log_warn("%s:%d: %s cib %lld index %d should be %lld\n", "nx_check", 378, (v62[48] + 212), v89, v101, v89);
          }

          v102 = *(v100 + 36);
          v103 = v13;
          if (v102 != v13)
          {
            if (v89 != *(v88 + 4) - 1 || (v103 = *(v100 + 36), v88[1] % v235 != v102))
            {
              ++v254;
              v104 = v235;
              if (v89 == *(v88 + 4) - 1)
              {
                v104 = v88[1] % v235;
              }

              log_warn("%s:%d: %s cib %lld chunk info count %d should be %lld\n", "nx_check", 383, (v62[48] + 212), v89, v102, v104);
              v103 = *(v100 + 36);
            }

            if (v103 > v13)
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld cib_chunk_info_count %d invalid\n", "nx_check", 387, (v62[48] + 212), v96, v103);
              v103 = *(v100 + 36);
            }
          }

          if (v103 >= v13)
          {
            v105 = v13;
          }

          else
          {
            v105 = v103;
          }

          if (!v105)
          {
LABEL_197:
            sub_100038BA0(v252);
            v62 = v247;
            v86 = v236;
            v77 = v237;
            v85 = v238;
            goto LABEL_198;
          }

          v106 = 0;
          v107 = v17 * v235 * v89;
          v108 = (v100 + 64);
          while (2)
          {
            v109 = *(v108 - 3);
            if (v109 > sub_100039CE8(v252))
            {
              ++v254;
              v110 = (v247[48] + 212);
              v111 = *(v108 - 3);
              v112 = sub_100039CE8(v252);
              log_warn("%s:%d: %s cib %lld chunk info %d xid %lld > cib xid %lld\n", "nx_check", 392, v110, v89, v106, v111, v112);
            }

            v113 = *(v108 - 2);
            if (v107 != v113)
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld chunk info %d addr %lld should be %lld\n", "nx_check", 396, (v247[48] + 212), v89, v106, v113, v107);
            }

            v114 = *(v108 - 1) & 0xFFFFF;
            if (v114 != v17 && (v89 != *(v88 + 4) - 1 || v106 != *(v100 + 36) - 1 || *v88 % v17 != v114))
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld chunk info %d block count %d should be %d\n");
              goto LABEL_191;
            }

            if ((*(v108 - 1) & 0xFFFFFu) > v114)
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld chunk info %d free count %d > chunk block count %d\n", "nx_check", 407, (v247[48] + 212), v89, v106, *(v108 - 1) & 0xFFFFF, *(v108 - 1) & 0xFFFFF);
            }

            if (*v108)
            {
              v115 = sub_1000147CC(v247, v256, *v108, v249);
              if (v115)
              {
                ++v254;
                if (v115 == 2)
                {
                  log_warn("%s:%d: %s cib %lld ci %d bm addr %lld not within IP block range\n");
                }

                else
                {
                  log_warn("%s:%d: %s error getting IP block index for cib %lld ci %d bm addr %lld\n");
                }

                goto LABEL_191;
              }

              if (sub_10003BEB0(v247[49], 0x40000000uLL, *v108, &xmmword_100096020, 0, 0, 0, 0, &v251))
              {
                ++v254;
                log_warn("%s:%d: %s cib %lld chunk %d unable to get bitmap block @ %lld: %d\n");
                goto LABEL_191;
              }

              v116 = bitmap_count_bits(v251[7], 0, 0, *(v108 - 1) & 0xFFFFF);
            }

            else
            {
              ++v241;
              v116 = *(v108 - 1) & 0xFFFFFLL;
            }

            v117 = *(v108 - 1) & 0xFFFFF;
            if (v116 != v117)
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld ci %d free count %d doesn't match free bits in bitmap block %lld\n", "nx_check", 429, (v247[48] + 212), v89, v106, *(v108 - 1) & 0xFFFFF, v116);
              v117 = *(v108 - 1) & 0xFFFFF;
            }

            v246 += v116;
            v244 += v117;
            v118 = *(v240 + 1248);
            if (v118)
            {
              v119 = *(v240 + 1240);
              v257[0] = 0xAAAAAAAAAAAAAAAALL;
              v120 = calc_overlap_range(*(v108 - 2), *(v108 - 1) & 0xFFFFF, v119, v118, v257);
              if (v120)
              {
                if (*v108)
                {
                  v120 = bitmap_count_bits(v251[7], 0, v257[0] - *(v108 - 2), v257[0] + v120 - *(v108 - 2));
                }

                v246 -= v120;
                v244 -= v120;
              }
            }

            if (*v108)
            {
              sub_100038BA0(v251);
            }

LABEL_191:
            ++v106;
            LODWORD(v121) = *(v100 + 36);
            if (v121 >= v13)
            {
              v121 = v13;
            }

            else
            {
              v121 = v121;
            }

            v107 += v17;
            v108 += 4;
            if (v106 >= v121)
            {
              goto LABEL_197;
            }

            continue;
          }
        }

        ++v254;
        log_warn("%s:%d: %s unable to read cib %lld @ %lld: %d\n");
LABEL_198:
        ++v89;
        v90 = v242;
        if (v89 >= *(v88 + 4))
        {
          goto LABEL_213;
        }
      }
    }

    v244 = 0;
    v246 = 0;
LABEL_213:
    if (v253)
    {
      sub_100038BA0(v253);
      v253 = 0;
    }

    v129 = v88[3];
    v130 = v244;
    if (v244 != v129)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free count %lld doesn't match free count in chunks %lld\n", "nx_check", 469, (v62[48] + 212), v129, v244);
      v130 = v88[3];
    }

    if (v246 != v130)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free count %lld doesn't match free count in bitmap %lld\n", "nx_check", 472, (v62[48] + 212), v130, v246);
    }

    v87 = 0;
    v84 = 1;
  }

  while ((v233 & 1) != 0);
  if (v229 + v230 != v241 + v228)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP free block count is wrong %lld != %lld\n", "nx_check", 477, (v62[48] + 212), v229 + v230, v241 + v228);
  }

  v131 = v234;
  v132 = v234[30];
  v133 = v234[6];
  if (v132 > v133)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 482, (v62[48] + 212), v132, v133);
  }

  if (!v234[31])
  {
    goto LABEL_227;
  }

  v134 = sub_1000125F4(v62, v256, 1u, 0, 0, &v250[4]);
  if (v134)
  {
    ++v254;
    log_warn("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 490, (v62[48] + 212), v134);
    goto LABEL_227;
  }

  if (v250[4])
  {
    v145 = btree_check(v250[4], 0, 0, 0);
    if (v145)
    {
      v146 = v145;
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 494, (v62[48] + 212), v145);
      v249[1] = 0x1000000008;
    }

    else
    {
      v249[1] = 0x1000000008;
      v146 = bt_lookup_first(v250[4], 0, &v250[1], &v249[1] + 1, &v250[3], &v249[1]);
    }

    v135 = 0;
    v179 = 0;
    v180 = 0;
    while (!v146)
    {
      if (LODWORD(v249[1]))
      {
        v181 = v250[3];
      }

      else
      {
        v250[3] = 1;
        v181 = 1;
      }

      v182 = v250[1];
      if (v250[1] > v237)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 507, (v247[48] + 212), v250[1], v250[2], v237);
        v182 = v250[1];
      }

      if (v182 >= v180)
      {
        if (v182 == v180)
        {
          v183 = v250[2];
          if (v250[2] < v179)
          {
            ++v254;
            log_warn("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 515, (v247[48] + 212), v250[2], v179);
            v183 = v250[2];
          }

          v179 = v250[3] + v183;
          goto LABEL_334;
        }
      }

      else
      {
        ++v254;
        log_warn("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 510, (v247[48] + 212), v182, v180);
        v182 = v250[1];
      }

      v179 = 0;
      v183 = v250[2];
      v180 = v182;
LABEL_334:
      if (v183 < 1 || (v184 = *v231, v183 >= *v231))
      {
        ++v254;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 524, (v247[48] + 212), v250[1], v183, v250[3]);
        v184 = *v231;
        v183 = v250[2];
      }

      v73 = v184 > v250[3];
      v185 = v184 - v250[3];
      if (!v73 || v183 > v185)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 527, (v247[48] + 212), v250[1], v183, v250[3]);
      }

      v135 += v181;
      LODWORD(v249[1]) = 8;
      v146 = bt_lookup_variant(v250[4], 0, &v250[1], &v249[1] + 1, HIDWORD(v249[1]), &v250[3], &v249[1], 4, 0, 0);
    }

    v62 = v247;
    if (v146 != 2)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 534, (v247[48] + 212), v146);
    }

    sub_100038BA0(v250[4]);
    v77 = v237;
    v131 = v234;
  }

  else
  {
LABEL_227:
    v135 = 0;
  }

  v136 = v131[30];
  if (v135 != v136)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 540, (v62[48] + 212), v136, v135);
  }

  v137 = v131[35];
  v138 = v131[12];
  if (v137 > v138)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 544, (v62[48] + 212), v137, v138);
  }

  if (!v131[36])
  {
    goto LABEL_235;
  }

  v139 = sub_1000125F4(v62, v256, 2u, 0, 0, &v250[4]);
  if (v139)
  {
    ++v254;
    log_warn("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 552, (v62[48] + 212), v139);
LABEL_235:
    v140 = 0;
    goto LABEL_236;
  }

  if (!v250[4])
  {
    goto LABEL_235;
  }

  v147 = btree_check(v250[4], 0, 0, 0);
  if (v147)
  {
    v148 = v147;
    ++v254;
    log_warn("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 556, (v62[48] + 212), v147);
    v249[1] = 0x1000000008;
  }

  else
  {
    v249[1] = 0x1000000008;
    v148 = bt_lookup_first(v250[4], 0, &v250[1], &v249[1] + 1, &v250[3], &v249[1]);
  }

  v140 = 0;
  v186 = 0;
  v187 = 0;
  while (!v148)
  {
    if (LODWORD(v249[1]))
    {
      v188 = v250[3];
    }

    else
    {
      v250[3] = 1;
      v188 = 1;
    }

    v189 = v250[1];
    if (v250[1] > v77)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 569, (v247[48] + 212), v250[1], v250[2], v77);
      v189 = v250[1];
    }

    if (v189 >= v187)
    {
      if (v189 == v187)
      {
        v190 = v250[2];
        if (v250[2] < v186)
        {
          ++v254;
          log_warn("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 577, (v247[48] + 212), v250[2], v186);
          v190 = v250[2];
        }

        v186 = v250[3] + v190;
        goto LABEL_359;
      }
    }

    else
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 572, (v247[48] + 212), v189, v187);
      v189 = v250[1];
    }

    v186 = 0;
    v190 = v250[2];
    v187 = v189;
LABEL_359:
    if (v190 < 1 || (v191 = v234[12], v190 >= v191))
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 587, (v247[48] + 212), v250[1], v190, v250[3]);
      v191 = v234[12];
    }

    v73 = v191 > v250[3];
    v192 = v191 - v250[3];
    if (!v73 || v190 > v192)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 590, (v247[48] + 212), v250[1], v250[2], v250[3]);
    }

    v140 += v188;
    LODWORD(v249[1]) = 8;
    v148 = bt_lookup_variant(v250[4], 0, &v250[1], &v249[1] + 1, HIDWORD(v249[1]), &v250[3], &v249[1], 4, 0, 0);
    v77 = v237;
  }

  v62 = v247;
  if (v148 != 2)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 597, (v247[48] + 212), v148);
  }

  sub_100038BA0(v250[4]);
  v131 = v234;
LABEL_236:
  v141 = v131[35];
  if (v140 != v141)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 603, (v62[48] + 212), v141, v140);
  }

  if (*(v240 + 168))
  {
    v142 = nx_reaper_get(v62, &v255);
    if (v142)
    {
      v6 = v142;
      log_err("%s:%d: %s unable to get reaper: %d\n");
      goto LABEL_380;
    }

    v149 = v255[47];
    v150 = *(v149 + 32);
    if (*(v149 + 40) >= v150)
    {
      log_warn("%s:%d: %s reaper completed ID 0x%llx not less than next reap ID 0x%llx\n", "nx_check_reaper", 940, (v62[48] + 212), *(v149 + 40), v150);
      v151 = 1;
    }

    else
    {
      v151 = 0;
    }

    v152 = *(v149 + 64);
    if ((v152 & 1) == 0)
    {
      ++v151;
      log_warn("%s:%d: %s reaper needs more cowbell, flags 0x%x\n", "nx_check_reaper", 943, (v62[48] + 212), v152);
    }

    v153 = *(v149 + 48);
    if (!v153)
    {
      if (!*(v149 + 56) || (++v151, log_warn("%s:%d: %s reaper has tail with no head\n", "nx_check_reaper", 947, (v62[48] + 212)), (v153 = *(v149 + 48)) == 0))
      {
LABEL_372:
        v254 += v151;
        sub_100038BA0(v255);
        v77 = v237;
        goto LABEL_373;
      }
    }

    v257[0] = 0xAAAAAAAAAAAAAAAALL;
    v154 = *(v149 + 68);
    while (1)
    {
      v155 = sub_10003BEB0(v62[49], 0x80000000uLL, v153, &nx_reap_list_desc, 0, 0, 0, 0, v257);
      if (v155)
      {
        v6 = v155;
        log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_check_reaper", 956, (v62[48] + 212), v155);
        sub_100038BA0(v255);
        log_err("%s:%d: %s reaper check failed with error: %d\n");
        goto LABEL_380;
      }

      v156 = v257[0][47];
      v157 = *(v156 + 44);
      if (v157 != ((sub_10003A024(v257[0]) - 64) / 0x28))
      {
        ++v151;
        v158 = (v62[48] + 212);
        v159 = *(v156 + 44);
        v160 = sub_10003A024(v257[0]);
        log_warn("%s:%d: %s reap list object 0x%llx max record count %u not expected value %u\n", "nx_check_reaper", 963, v158, v153, v159, (v160 - 64) / 0x28);
      }

      v161 = *(v156 + 44);
      if (*(v156 + 48) <= v161)
      {
        v62 = v247;
      }

      else
      {
        ++v151;
        v62 = v247;
        log_warn("%s:%d: %s reap list object 0x%llx record count %d larger than max %d\n", "nx_check_reaper", 966, (v247[48] + 212), v153, *(v156 + 48), v161);
      }

      v162 = *(v156 + 52);
      if (v162 != -1)
      {
        v163 = *(v156 + 44);
        if (v162 > v163)
        {
          ++v151;
          log_warn("%s:%d: %s reap list object 0x%llx first index %u larger than max %u\n", "nx_check_reaper", 969, (v62[48] + 212), v153, *(v156 + 52), v163);
        }
      }

      v164 = *(v156 + 56);
      if (v164 != -1)
      {
        v165 = *(v156 + 44);
        if (v164 > v165)
        {
          ++v151;
          log_warn("%s:%d: %s reap list object 0x%llx last index %u larger than max %u\n", "nx_check_reaper", 972, (v62[48] + 212), v153, *(v156 + 52), v165);
        }
      }

      v166 = *(v156 + 60);
      if (v166 != -1)
      {
        v167 = *(v156 + 44);
        if (v166 > v167)
        {
          ++v151;
          log_warn("%s:%d: %s reap list object 0x%llx free index %u larger than max %u\n", "nx_check_reaper", 975, (v62[48] + 212), v153, *(v156 + 60), v167);
        }
      }

      v168 = *(v156 + 32);
      v169 = *(v149 + 56);
      if (!v168)
      {
        if (v169 == v153)
        {
          goto LABEL_280;
        }

        ++v151;
        log_warn("%s:%d: %s last reap list object 0x%llx doesn't match tail 0x%llx\n", "nx_check_reaper", 984, (v62[48] + 212), v153, v169);
        v169 = *(v149 + 56);
        v168 = *(v156 + 32);
      }

      if (v169 == v153)
      {
        if (!v168)
        {
LABEL_280:
          v153 = 0;
          goto LABEL_281;
        }

        ++v151;
        log_warn("%s:%d: %s reap list tail 0x%llx is not last reap list object, next 0x%llx\n", "nx_check_reaper", 987, (v62[48] + 212), v153, v168);
        v153 = *(v156 + 32);
      }

      else
      {
        v153 = v168;
      }

LABEL_281:
      sub_100038BA0(v257[0]);
      if (*(v149 + 68))
      {
        --v154;
        if (v153 && !v154)
        {
          ++v151;
          log_warn("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n");
          goto LABEL_372;
        }

        if (!v153 && v154)
        {
          ++v151;
          log_warn("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n");
          goto LABEL_372;
        }
      }

      if (!v153)
      {
        goto LABEL_372;
      }
    }
  }

LABEL_373:
  v193 = *(v240 + 160);
  if (v193)
  {
    v194 = sub_10003BEB0(v62[49], 0x40000000uLL, v193, &om_desc, 0, 0, 0, 0, v250);
    if (v194)
    {
      v6 = v194;
      log_err("%s:%d: %s unable to get omap: %d\n");
LABEL_380:
      sub_100038BA0(v256);
      return v6;
    }

    if (sub_100039CE8(v250[0]) > v77)
    {
      ++v254;
      v195 = (v62[48] + 212);
      v196 = sub_100039CE8(v250[0]);
      log_warn("%s:%d: %s omap xid %lld > spaceman xid %lld\n", "nx_check", 633, v195, v196, v77);
    }

    v6 = sub_100084AE8(v62, v250[0], v77, &v254);
    sub_100038BA0(v250[0]);
    if (v6)
    {
      log_err("%s:%d: %s omap check failed with error: %d\n");
      goto LABEL_380;
    }
  }

  v257[0] = 0xAAAAAAAAAAAAAAAALL;
  v248 = 0xAAAAAAAAAAAAAAAALL;
  if (*(v240 + 180))
  {
    for (j = 0; j < *(v240 + 180); ++j)
    {
      v198 = *(v240 + 184 + 8 * j);
      if (v198)
      {
        v199 = sub_10003BEB0(v247[49], 0, v198, &apfs_desc, 0, 0, 0, 0, v257);
        if (v199)
        {
          log_err("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check", 654, (v247[48] + 212), j, v198, v199);
        }

        else
        {
          v200 = v257[0];
          v201 = v257[0][47];
          v202 = *(v201 + 128);
          if (!v202)
          {
            goto LABEL_392;
          }

          v203 = sub_10003BEB0(v247[49], 0x40000000uLL, v202, &om_desc, 0, v257[0], 0, 0, v250);
          if (v203)
          {
            log_err("%s:%d: %s unable to get omap %lld: %d\n", "nx_check", 661, v257[0] + 4040, *(v257[0][47] + 128), v203);
            goto LABEL_440;
          }

          v204 = sub_100084AE8(v257[0], v250[0], v237, &v254);
          sub_100038BA0(v250[0]);
          v200 = v257[0];
          if (!v204)
          {
            v201 = v257[0][47];
LABEL_392:
            if (*(v201 + 136))
            {
              if (*(v201 + 264) & 1) != 0 || (v227)
              {
                v248 = 0;
                fsroot_tree = apfs_get_fsroot_tree(v200, 0, 0, &v248);
                if (fsroot_tree)
                {
                  log_err("%s:%d: %s unable to get fs root tree: %d\n", "nx_check", 680, v257[0] + 4040, fsroot_tree);
                }

                else
                {
                  if (sub_100039CE8(v248) > v237)
                  {
                    ++v254;
                    v206 = (v257[0] + 505);
                    v207 = sub_100039CE8(v248);
                    log_warn("%s:%d: %s fs root tree xid %lld > spaceman xid %lld\n", "nx_check", 683, v206, v207, v237);
                  }

                  v208 = btree_check(v248, 0, 0, 0);
                  if (v208)
                  {
                    ++v254;
                    log_warn("%s:%d: %s fs root tree sanity check failed: %d\n", "nx_check", 688, v257[0] + 4040, v208);
                  }
                }

                if (v248)
                {
                  sub_100038BA0(v248);
                }
              }

              else
              {
                log_err("%s:%d: %s skipping check of fs[%d] oid %lld fs root tree because it's encrypted\n", "nx_check", 675, v200 + 4040, j, v198);
              }
            }

            v209 = *(v257[0][47] + 144);
            if (v209)
            {
              v248 = 0;
              extentref_tree = apfs_get_extentref_tree(v257[0], v209, 0, &v248);
              if (extentref_tree)
              {
                log_err("%s:%d: %s unable to get fs extentref tree: %d\n", "nx_check", 700, v257[0] + 4040, extentref_tree);
              }

              else
              {
                if (sub_100039CE8(v248) > v237)
                {
                  ++v254;
                  v211 = (v257[0] + 505);
                  v212 = sub_100039CE8(v248);
                  log_warn("%s:%d: %s fs extentref tree xid %lld > spaceman xid %lld\n", "nx_check", 703, v211, v212, v237);
                }

                v213 = btree_check(v248, 0, 0, 0);
                if (v213)
                {
                  ++v254;
                  log_warn("%s:%d: %s fs extentref tree sanity check failed: %d\n", "nx_check", 708, v257[0] + 4040, v213);
                }
              }

              if (v248)
              {
                sub_100038BA0(v248);
              }
            }

            if (*(v257[0][47] + 152))
            {
              v248 = 0;
              snap_meta_tree = apfs_get_snap_meta_tree(v257[0], 0, &v248);
              if (snap_meta_tree)
              {
                log_err("%s:%d: %s unable to get fs snap meta tree: %d\n", "nx_check", 719, v257[0] + 4040, snap_meta_tree);
              }

              else
              {
                if (sub_100039CE8(v248) > v237)
                {
                  ++v254;
                  v215 = (v257[0] + 505);
                  v216 = sub_100039CE8(v248);
                  log_warn("%s:%d: %s fs snap meta tree xid %lld > spaceman xid %lld\n", "nx_check", 722, v215, v216, v237);
                }

                v217 = btree_check(v248, 0, 0, 0);
                if (v217)
                {
                  ++v254;
                  log_warn("%s:%d: %s fs snap meta tree sanity check failed: %d\n", "nx_check", 727, v257[0] + 4040, v217);
                }
              }

              if (v248)
              {
                sub_100038BA0(v248);
              }
            }

            if (*(v257[0][47] + 1072))
            {
              v248 = 0;
              doc_id_tree = apfs_get_doc_id_tree(v257[0], 0, 0, 0, &v248);
              if (doc_id_tree)
              {
                log_err("%s:%d: %s unable to get doc-id tree: %d\n", "nx_check", 738, v257[0] + 4040, doc_id_tree);
              }

              else
              {
                if (sub_100039CE8(v248) > v237)
                {
                  ++v254;
                  v219 = (v257[0] + 505);
                  v220 = sub_100039CE8(v248);
                  log_warn("%s:%d: %s doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 741, v219, v220, v237);
                }

                v221 = btree_check(v248, 0, 0, 0);
                if (v221)
                {
                  ++v254;
                  log_warn("%s:%d: %s doc-id tree sanity check failed: %d\n", "nx_check", 746, v257[0] + 4040, v221);
                }
              }

              if (v248)
              {
                sub_100038BA0(v248);
              }
            }

            if (*(v257[0][47] + 1080))
            {
              v248 = 0;
              v222 = apfs_get_doc_id_tree(v257[0], 1, 0, 0, &v248);
              if (v222)
              {
                log_err("%s:%d: %s unable to get prev doc-id tree: %d\n", "nx_check", 757, v257[0] + 4040, v222);
              }

              else
              {
                if (sub_100039CE8(v248) > v237)
                {
                  ++v254;
                  v223 = (v257[0] + 505);
                  v224 = sub_100039CE8(v248);
                  log_warn("%s:%d: %s prev doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 760, v223, v224, v237);
                }

                v225 = btree_check(v248, 0, 0, 0);
                if (v225)
                {
                  ++v254;
                  log_warn("%s:%d: %s prev doc-id tree sanity check failed: %d\n", "nx_check", 765, v257[0] + 4040, v225);
                }
              }

              if (v248)
              {
                sub_100038BA0(v248);
              }
            }

LABEL_440:
            sub_100038BA0(v257[0]);
            continue;
          }

          log_err("%s:%d: %s omap check failed for omap %lld: %d\n", "nx_check", 668, v257[0] + 4040, *(v257[0][47] + 128), v204);
          sub_100038BA0(v257[0]);
        }
      }
    }
  }

  sub_100038BA0(v256);
  if (v254)
  {
    return 22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100084AE8(uint64_t *a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v8 = a1;
  if (sub_100038178(a1) == 13)
  {
    v8 = a1[49];
  }

  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[2] = v9;
  v43[3] = v9;
  v43[0] = v9;
  v43[1] = v9;
  v10 = *(v8[47] + 36);
  if (*(*(a2 + 376) + 36) >= 0x400u)
  {
    if (sub_100038178(a1) == 13)
    {
      v11 = (a1 + 505);
    }

    else
    {
      v11 = (a1[48] + 212);
    }

    log_warn("%s:%d: %s omap snapshot count %d seems excessive\n", "nx_check_omap", 802, v11, *(*(a2 + 376) + 36));
  }

  v45 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(a2 + 376);
  v13 = *(v12 + 40);
  if (v13 == 1073741826 || v13 == -2147483646)
  {
    v15 = *(v12 + 48);
    v47 = 0u;
    v52 = 0;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v46 = omap_key_cmp;
    DWORD2(v47) = 11;
    if (v13 == 2)
    {
      extended = btree_get_extended(a1, v13 & 0xFFFF0000, v15, 0, 0, &v46, 0, &v45);
      if (!extended)
      {
        if (sub_100039CE8(v45) <= a3)
        {
          v22 = 0;
        }

        else
        {
          if (sub_100038178(a1) == 13)
          {
            v17 = (a1 + 505);
          }

          else
          {
            v17 = (a1[48] + 212);
          }

          v23 = sub_100039CE8(v45);
          log_warn("%s:%d: %s omap tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 817, v17, v23, a3);
          v22 = 1;
        }

        v24 = btree_check(v45, 0, 0, 0);
        if (v24)
        {
          v25 = v24;
          ++v22;
          if (sub_100038178(a1) == 13)
          {
            v26 = (a1 + 505);
          }

          else
          {
            v26 = (a1[48] + 212);
          }

          log_warn("%s:%d: %s omap tree sanity check failed: %d\n", "nx_check_omap", 822, v26, v25);
          goto LABEL_83;
        }

        v41 = 0xAAAAAAAAAAAAAAAALL;
        v42 = 0xAAAAAAAAAAAAAAAALL;
        v46 = 0;
        *&v47 = 0;
        bt_iterator_init_with_hint(v43, v45, 0, 0, &v46, 16, 16, &v41, 0x10u, 0);
        if (bt_iterator_ended(v43))
        {
LABEL_83:
          sub_100038BA0(v45);
          goto LABEL_84;
        }

        v27 = 0;
        *&v39[8] = 0;
        v40 = (a1 + 505);
        *v39 = v10 - 1;
        v28 = -1;
        while (v46 >= v27)
        {
          v29 = v47;
          if (v46 == v27)
          {
            if (v47 <= *&v39[4])
            {
              ++v22;
              if (sub_100038178(a1) == 13)
              {
                log_warn("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, v40, v46, v47, *&v39[4]);
              }

              else
              {
                log_warn("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, (a1[48] + 212), v46, v47, *&v39[4]);
              }
            }

            goto LABEL_44;
          }

          *&v39[4] = 0;
          v28 = -1;
          v27 = v46;
LABEL_46:
          if (v29 > a3)
          {
            ++v22;
            if (sub_100038178(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, v40, v46, v47, a3);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, (a1[48] + 212), v46, v47, a3);
            }
          }

          if (v41 >= 0x800)
          {
            ++v22;
            if (sub_100038178(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, v40, v46, v47, v41 & 0xFFFFFFFE);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, (a1[48] + 212), v46, v47, v41 & 0xFFFFFFFE);
            }
          }

          if ((v41 & 1) != 0 && v28 == -1)
          {
            ++v22;
            if (sub_100038178(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, v40, v46, v47);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, (a1[48] + 212), v46, v47);
            }
          }

          else if (v28 != -1)
          {
            if (v28)
            {
              ++v22;
              if (sub_100038178(a1) == 13)
              {
                log_warn("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, v40, v46, v47, v28);
              }

              else
              {
                log_warn("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, (a1[48] + 212), v46, v47, v28);
              }
            }

            else if (v41)
            {
              v28 = v47;
            }

            else
            {
              v28 = 0;
            }

            goto LABEL_70;
          }

          if (v41)
          {
            v28 = v47;
          }

          else
          {
            v28 = 0;
          }

LABEL_70:
          if (HIDWORD(v41) >= 0x100000)
          {
            ++v22;
            if (sub_100038178(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, v40, v46, v47, HIDWORD(v41));
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, (a1[48] + 212), v46, v47, HIDWORD(v41));
            }
          }

          if (nx_superblock_sanity_check_extent(v8[47], 0, v42, (*v39 + HIDWORD(v41)) / v10, 0))
          {
            ++v22;
            if (sub_100038178(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, v40, v46, v47, v42, HIDWORD(v41));
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, (a1[48] + 212), v46, v47, v42, HIDWORD(v41));
            }
          }

          bt_iterator_next(v43);
          if (bt_iterator_ended(v43))
          {
            goto LABEL_83;
          }
        }

        if (sub_100038178(a1) == 13)
        {
          log_warn("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, v40, v46, v27);
        }

        else
        {
          log_warn("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, (a1[48] + 212), v46, v27);
        }

        ++v22;
        v28 = -1;
        v27 = v46;
LABEL_44:
        v29 = v47;
        *&v39[4] = v47;
        goto LABEL_46;
      }
    }

    else
    {
      extended = 22;
    }

    if (sub_100038178(a1) == 13)
    {
      v18 = (a1 + 505);
    }

    else
    {
      v18 = (a1[48] + 212);
    }

    log_warn("%s:%d: %s unable to get omap tree: %d\n", "nx_check_omap", 812, v18, extended);
    v21 = *a4 + 1;
    goto LABEL_110;
  }

  v19 = sub_100038178(a1);
  if (v19 == 13)
  {
    v20 = (a1 + 505);
  }

  else
  {
    v20 = (a1[48] + 212);
  }

  log_warn("%s:%d: %s omap tree type 0x%x is bad\n", "nx_check_omap", 881, v20, *(*(a2 + 376) + 40));
  v22 = 1;
LABEL_84:
  v30 = *(a2 + 376);
  v31 = *(v30 + 56);
  if (!v31)
  {
LABEL_109:
    extended = 0;
    v21 = *a4 + v22;
    goto LABEL_110;
  }

  v32 = *(v30 + 44);
  if (v32 != 1073741826 && v32 != -2147483646)
  {
    ++v22;
    if (sub_100038178(a1) == 13)
    {
      v35 = (a1 + 505);
    }

    else
    {
      v35 = (a1[48] + 212);
    }

    log_warn("%s:%d: %s omap snapshot tree type 0x%x is bad\n", "nx_check_omap", 920, v35, *(*(a2 + 376) + 40));
    goto LABEL_109;
  }

  v47 = 0u;
  v52 = 0;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v46 = omap_snapshot_key_cmp;
  DWORD2(v47) = 19;
  extended = btree_get_extended(a1, v32 & 0xFFFF0000, v31, 0, 0, &v46, 0, &v45);
  if (!extended)
  {
    if (sub_100039CE8(v45) > a3)
    {
      ++v22;
      if (sub_100038178(a1) == 13)
      {
        v33 = (a1 + 505);
      }

      else
      {
        v33 = (a1[48] + 212);
      }

      v36 = sub_100039CE8(v45);
      log_warn("%s:%d: %s omap snapshot tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 896, v33, v36, a3);
    }

    if (btree_check(v45, 0, 0, 0))
    {
      ++v22;
      sub_100038178(a1);
      log_warn("%s:%d: %s omap snapshot tree sanity check failed: %d\n");
    }

    else
    {
      v46 = 0xAAAAAAAAAAAAAAAALL;
      *&v47 = 0xAAAAAAAAAAAAAAAALL;
      v41 = 0;
      bt_iterator_init_with_hint(v43, v45, 0, 0, &v41, 8, 8, &v46, 0x10u, 0);
      v37 = 0;
      if (!bt_iterator_ended(v43))
      {
        v37 = 0;
        do
        {
          ++v37;
          bt_iterator_next(v43);
        }

        while (!bt_iterator_ended(v43));
      }

      if (v37 != *(*(a2 + 376) + 36))
      {
        ++v22;
        sub_100038178(a1);
        log_warn("%s:%d: %s omap snapshot count %d doesn't match snapshot tree record count %lld\n");
      }
    }

    sub_100038BA0(v45);
    goto LABEL_109;
  }

  if (sub_100038178(a1) == 13)
  {
    v34 = (a1 + 505);
  }

  else
  {
    v34 = (a1[48] + 212);
  }

  log_warn("%s:%d: %s unable to get omap snapshot tree: %d\n", "nx_check_omap", 891, v34, extended);
  v21 = v22 + 1 + *a4;
LABEL_110:
  *a4 = v21;
  return extended;
}

uint64_t omap_recent_sanity_callback(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, int a5, _DWORD *a6, int a7)
{
  v21 = 0;
  v22 = 0;
  v13 = sub_100038178(a1);
  v14 = 0;
  v15 = a1;
  if (v13 == 13)
  {
    v15 = *(a1 + 392);
    v14 = a1;
  }

  v16 = 22;
  if (a5 == 16 && a7 == 16)
  {
    v17 = a4[1];
    if (v17 <= a3)
    {
      return 0;
    }

    v18 = *a6;
    if ((*a6 & 5) != 0)
    {
      return 0;
    }

    else
    {
      v23 = 0xAAAAAAAAAAAAAAAALL;
      if ((v18 & 8) != 0)
      {
        v20 = 536870936;
      }

      else
      {
        v20 = 24;
      }

      LODWORD(v22) = a6[1];
      v16 = sub_10003BEB0(*(v15 + 392), v20, *a4, &v21, 0, v14, v17, 0, &v23);
      if (v16)
      {
        if (sub_100038178(a1) == 13)
        {
          log_err("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (a1 + 4040), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }

        else
        {
          log_err("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (*(a1 + 384) + 212), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }
      }

      else
      {
        sub_100038BA0(v23);
      }
    }
  }

  return v16;
}

uint64_t nx_check_recent_sanity(uint64_t *a1)
{
  memset(v49, 170, sizeof(v49));
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v2 = sub_100010A34(a1, &v49[2]);
  if (v2)
  {
    v3 = v2;
    log_err("%s:%d: %s unable to get spaceman: %d\n");
    return v3;
  }

  v4 = *(v49[2] + 376);
  v5 = sub_100039CE8(v49[2]);
  v6 = 0;
  v7 = 0;
  if (v5 >= 3)
  {
    v8 = v5 - 3;
  }

  else
  {
    v8 = 0;
  }

  v47 = 0;
  memset(v46, 170, sizeof(v46));
  v43 = v8;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v9 = v4 + 48 + 48 * v6;
    if (!*(v9 + 16))
    {
LABEL_28:
      v3 = 0;
      goto LABEL_31;
    }

    v10 = 0;
    v11 = -1;
    while (!*(v9 + 20))
    {
      v17 = (*(v49[2] + 8 * v6 + 896) + 8 * v10);
LABEL_23:
      v18 = *v17;
      v44 = v4;
      v45 = __PAIR64__(v10, v6);
      v19 = sub_10003BEB0(a1[49], 0x40000000uLL, v18, &xmmword_100096010, &v44, 0, 0, 0, &v46[2]);
      if (v19)
      {
        v21 = v19;
        log_err("%s:%d: %s unable to read cib %lld @ %lld: %d\n", "nx_check_recent_sanity", 1152, (a1[48] + 212), v10, v18, v19);
        v3 = v21;
        goto LABEL_31;
      }

      sub_100038BA0(v46[2]);
      v20 = 1;
LABEL_25:
      v10 += v20;
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_28;
      }
    }

    v12 = *(v4 + 44);
    v13 = v10 / v12;
    if (v10 / v12 == v11 && v7 != 0)
    {
      v13 = v11;
LABEL_22:
      v17 = (v7 + 8 * (v10 - v12 * v13) + 40);
      goto LABEL_23;
    }

    v15 = *(*(v49[2] + 8 * v6 + 896) + 8 * v13);
    if (v47)
    {
      sub_100038BA0(v47);
      v47 = 0;
    }

    v46[0] = v4;
    v46[1] = __PAIR64__(v13, v6);
    v16 = sub_10003BEB0(a1[49], 0x40000000uLL, v15, &xmmword_100096000, v46, 0, 0, 0, &v47);
    if (!v16)
    {
      v7 = v47[7];
      if (sub_100039CE8(v47) <= v43)
      {
        v20 = *(v7 + 36);
        v11 = v13;
        goto LABEL_25;
      }

      v12 = *(v4 + 44);
      v11 = v13;
      goto LABEL_22;
    }

    v3 = v16;
    log_err("%s:%d: %s unable to read cab %d @ %lld: %d\n", "nx_check_recent_sanity", 1125, (a1[48] + 212), v13, v15, v16);
LABEL_31:
    if (v47)
    {
      sub_100038BA0(v47);
      v47 = 0;
    }
  }

  while (!(v3 | v6++));
  sub_100038BA0(v49[2]);
  if (v3)
  {
    return v3;
  }

  v24 = *(a1[47] + 160);
  if (v24)
  {
    v25 = sub_10003BEB0(a1[49], 0x40000000uLL, v24, &om_desc, 0, 0, 0, 0, &v49[1]);
    if (v25)
    {
      v3 = v25;
      log_err("%s:%d: %s unable to get omap: %d\n");
      return v3;
    }

    if (sub_100039CE8(v49[1]) <= v43)
    {
      sub_100038BA0(v49[1]);
    }

    else
    {
      v3 = nx_check_recent_sanity_omap(a1, v49[1], v43);
      sub_100038BA0(v49[1]);
      if (v3)
      {
        log_err("%s:%d: %s omap check failed with error: %d\n");
        return v3;
      }
    }
  }

  v26 = a1[47];
  if (!*(v26 + 180))
  {
    return 0;
  }

  v27 = 0;
  while (2)
  {
    v28 = *(v26 + 8 * v27 + 184);
    if (!v28)
    {
      goto LABEL_76;
    }

    v29 = sub_10003BEB0(a1[49], 0, v28, &apfs_desc, 0, 0, 0, 0, v49);
    if (v29)
    {
      v41 = v29;
      log_err("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check_recent_sanity", 1194, (a1[48] + 212), v27, v28, v29);
      return v41;
    }

    v30 = sub_100039CE8(v49[0]);
    v31 = v49[0];
    if (v30 <= v43)
    {
      goto LABEL_75;
    }

    v32 = *(*(v49[0] + 376) + 128);
    if (!v32)
    {
      goto LABEL_54;
    }

    v33 = sub_10003BEB0(a1[49], 0x40000000uLL, v32, &om_desc, 0, v49[0], 0, 0, &v49[1]);
    if (!v33)
    {
      if (sub_100039CE8(v49[1]) <= v43)
      {
        sub_100038BA0(v49[1]);
        v31 = v49[0];
      }

      else
      {
        v34 = nx_check_recent_sanity_omap(v49[0], v49[1], v43);
        sub_100038BA0(v49[1]);
        v31 = v49[0];
        if (v34)
        {
          log_err("%s:%d: %s omap check failed for omap %lld: %d\n");
          goto LABEL_81;
        }
      }

LABEL_54:
      v35 = v31[47];
      v36 = *(v35 + 144);
      if (v36)
      {
        v48 = 0;
        extentref_tree = apfs_get_extentref_tree(v31, v36, 0, &v48);
        if (extentref_tree)
        {
          v34 = extentref_tree;
          log_err("%s:%d: %s unable to get extentref tree %lld: %d\n", "nx_check_recent_sanity", 1228, (v49[0] + 4040), *(*(v49[0] + 376) + 144), extentref_tree);
        }

        else if (sub_100039CE8(v48) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v38 = btree_check_recent_sanity(v48, v43, 0, 0);
          v34 = v38;
          if (v38)
          {
            log_err("%s:%d: %s extentref tree %lld: %d\n", "nx_check_recent_sanity", 1233, (v49[0] + 4040), *(*(v49[0] + 376) + 144), v38);
          }
        }

        if (v48)
        {
          sub_100038BA0(v48);
        }

        v31 = v49[0];
        if (v34)
        {
LABEL_79:
          v42 = v31;
          goto LABEL_82;
        }

        v35 = *(v49[0] + 376);
      }

      if (*(v35 + 152))
      {
        v48 = 0;
        snap_meta_tree = apfs_get_snap_meta_tree(v31, 0, &v48);
        if (snap_meta_tree)
        {
          v34 = snap_meta_tree;
          log_err("%s:%d: %s unable to get snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1250, (v49[0] + 4040), *(*(v49[0] + 376) + 152), snap_meta_tree);
        }

        else if (sub_100039CE8(v48) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v40 = btree_check_recent_sanity(v48, v43, 0, 0);
          v34 = v40;
          if (v40)
          {
            log_err("%s:%d: %s snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1255, (v49[0] + 4040), *(*(v49[0] + 376) + 144), v40);
          }
        }

        if (v48)
        {
          sub_100038BA0(v48);
        }

        v31 = v49[0];
        if (v34)
        {
          goto LABEL_79;
        }
      }

LABEL_75:
      sub_100038BA0(v31);
LABEL_76:
      ++v27;
      v26 = a1[47];
      if (v27 >= *(v26 + 180))
      {
        return 0;
      }

      continue;
    }

    break;
  }

  v34 = v33;
  log_err("%s:%d: %s unable to get omap %lld: %d\n");
LABEL_81:
  v42 = v49[0];
LABEL_82:
  sub_100038BA0(v42);
  return v34;
}

uint64_t nx_check_recent_sanity_omap(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(a2 + 376);
  v7 = *(v6 + 48);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(v6 + 40);
  v16 = 0u;
  v17 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v15 = omap_key_cmp;
  DWORD2(v16) = 11;
  if (v8 != 2)
  {
    extended = 22;
    goto LABEL_8;
  }

  extended = btree_get_extended(a1, v8 & 0xFFFF0000, v7, 0, 0, &v15, 0, &v14);
  if (extended)
  {
LABEL_8:
    sub_100038178(a1);
    log_err("%s:%d: %s unable to get omap tree: %d\n");
    return extended;
  }

  if (sub_100039CE8(v14) <= a3)
  {
    sub_100038BA0(v14);
  }

  else
  {
    extended = btree_check_recent_sanity(v14, a3, omap_recent_sanity_callback, 0);
    sub_100038BA0(v14);
    if (extended)
    {
      return extended;
    }
  }

LABEL_10:
  v10 = *(a2 + 376);
  v11 = *(v10 + 56);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v10 + 44);
  v16 = 0u;
  v17 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v15 = omap_snapshot_key_cmp;
  DWORD2(v16) = 19;
  if (v12 != 2)
  {
    extended = 22;
    goto LABEL_17;
  }

  extended = btree_get_extended(a1, v12 & 0xFFFF0000, v11, 0, 0, &v15, 0, &v14);
  if (extended)
  {
LABEL_17:
    sub_100038178(a1);
    log_err("%s:%d: %s unable to get omap snapshot tree: %d\n");
    return extended;
  }

  if (sub_100039CE8(v14) <= a3)
  {
    extended = 0;
  }

  else
  {
    extended = btree_check_recent_sanity(v14, a3, 0, 0);
  }

  sub_100038BA0(v14);
  return extended;
}

uint64_t nx_checkpoint_find_highest_xid(uint64_t *a1, int *a2, unint64_t *a3)
{
  v6 = _apfs_malloc_typed(*(a1[47] + 36), 0xD3A61ACFuLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v8 = a1[47];
  if ((*(v8 + 104) & 0x7FFFFFFF) != 0)
  {
    v9 = 0;
    v18 = 0;
    v10 = 0;
    v11 = -1;
    while (1)
    {
      *(v7 + 6) = 0;
      if (nx_checkpoint_desc_block_address(a1, v9, &v19) || sub_1000068D0(a1[48]))
      {
        log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ 0x%llx: %d\n");
      }

      else
      {
        v14 = *(v7 + 6);
        if (v14 == -2147483647)
        {
          goto LABEL_12;
        }

        if (v14)
        {
          if (v14 == 1073741836)
          {
LABEL_12:
            if (obj_checksum_verify_phys(v7, *(a1[47] + 36), v12, v13))
            {
              log_err("%s:%d: %s invalid checksum for object type 0x%x @ checkpoint descriptor block %d @ 0x%llx\n");
            }

            else if (*(v7 + 7))
            {
              log_err("%s:%d: %s found unexpected subtype 0x%x for object type 0x%x @ checkpoint descriptor block %d\n");
            }

            else
            {
              v15 = v7[2];
              if (v15)
              {
                if (v15 >= v10)
                {
                  v16 = *(v7 + 6);
                  if (v15 == v10 && v18 && v16 != -2147483647)
                  {
                    v18 = 1;
                  }

                  else
                  {
                    v18 = v16 == -2147483647;
                    v10 = v7[2];
                    v11 = v9;
                  }
                }
              }

              else
              {
                log_err("%s:%d: %s found unexpected xid %lld @ checkpoint descriptor block %d\n");
              }
            }

            goto LABEL_7;
          }

          log_err("%s:%d: %s found unexpected object type 0x%x @ checkpoint descriptor block %d\n");
        }
      }

LABEL_7:
      ++v9;
      v8 = a1[47];
      if (v9 >= (*(v8 + 104) & 0x7FFFFFFFu))
      {
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
  v11 = -1;
LABEL_27:
  _apfs_free(v7, *(v8 + 36));
  *a2 = v11;
  *a3 = v10;
  return 2 * (v10 == 0);
}

uint64_t nx_check_checkpoint_map_block(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x16_t a6)
{
  v10 = obj_checksum_verify_phys(a2, *(a1 + 36), a5, a6);
  v11 = *(a2 + 36);
  if (!v11)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (*(a2 + 24) == 1073741836)
  {
    v13 = v10 != 0;
  }

  else
  {
    v13 = v12;
  }

  if (*(a2 + 28))
  {
    ++v13;
  }

  if (*(a2 + 16) != *(a1 + 16))
  {
    ++v13;
  }

  v14 = *(a2 + 8) == a3 ? v13 : v13 + 1;
  v15 = *(a1 + 36);
  v16 = v14 | *(a2 + 32) & 1 ^ (a4 != 0);
  if (v11 <= (v15 - 40) / 0x28uLL && v16 == 0)
  {
    v19 = 0;
    v20 = *(a1 + 108);
    v21 = (a2 + 72);
    while (v11 != v19)
    {
      v23 = *(v21 - 8);
      v22 = *(v21 - 7);
      if ((v23 & 0xC0000000) == 0x80000000)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (*(v21 - 8) > 0x12u || ((1 << *(v21 - 8)) & 0x6002C) == 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = (v23 & 0xC0000000) != 0x80000000;
      }

      if ((v22 & 0xC0000000) != 0)
      {
        ++v26;
      }

      if ((*(v21 - 7) > 0x24u || ((1 << v22) & 0x100009CA01) == 0) && *(v21 - 7) != 255)
      {
        ++v26;
      }

      if (!*(v21 - 1))
      {
        ++v26;
      }

      if ((v20 & 0x80000000) != 0)
      {
        v32 = v19;
      }

      else
      {
        v27 = *v21;
        v28 = *(a1 + 120);
        if (*v21 < v28)
        {
          ++v26;
        }

        if (v27 >= v28 + v20)
        {
          ++v26;
        }

        v29 = v27 - v28;
        v30 = *(a1 + 144);
        if (v30 <= v29)
        {
          v31 = 0;
        }

        else
        {
          v31 = *(a1 + 108);
        }

        v32 = v31 - v30 + v29;
        if (v32 >= *(a1 + 148))
        {
          ++v26;
        }
      }

      v33 = *(v21 - 6);
      if (v33)
      {
        v34 = v26;
      }

      else
      {
        v34 = v26 + 1;
      }

      if (!(v34 | (v33 % v15 != 0)))
      {
        ++v19;
        v21 += 5;
        if (v33 / v15 <= *(a1 + 148) - v32)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    return 0;
  }

  else
  {
LABEL_19:

    return nx_corruption_detected_int(0);
  }
}

BOOL nx_superblock_agrees_with_main_superblock(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    v7 = 0;
  }

  else
  {
    log_err("%s:%d: %s<->superblock mismatch on uuid\n", "nx_superblock_agrees_with_main_superblock", 254, a3);
    v7 = 1;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    log_err("%s:%d: %s<->superblock mismatch on fusion uuid\n", "nx_superblock_agrees_with_main_superblock", 258, a3);
    ++v7;
  }

  v9 = *(a1 + 16);
  if (v9 > *(a2 + 16))
  {
    log_err("%s:%d: the %s superblock has a lower XID %lld than the main superblock %lld\n", "nx_superblock_agrees_with_main_superblock", 263, a3, *(a2 + 16), v9);
  }

  v10 = *(a2 + 36);
  if (*(a1 + 36) != v10)
  {
    log_err("%s:%d: %s<->superblock mismatch on block size: %d %d\n", "nx_superblock_agrees_with_main_superblock", 269, a3, *(a1 + 36), v10);
    ++v7;
  }

  v11 = *(a2 + 40);
  if (*(a1 + 40) != v11)
  {
    log_err("%s:%d: %s<->superblock mismatch on block count: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 274, a3, *(a1 + 40), v11);
    ++v7;
  }

  v12 = *(a2 + 104);
  if (*(a1 + 104) != v12)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint descriptor block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 279, a3, *(a1 + 104), v12);
    ++v7;
  }

  v13 = *(a2 + 108);
  if (*(a1 + 108) != v13)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint data block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 284, a3, *(a1 + 108), v13);
    ++v7;
  }

  v14 = *(a2 + 112);
  if (*(a1 + 112) != v14)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint descriptor base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 289, a3, *(a1 + 112), v14);
    ++v7;
  }

  v15 = *(a2 + 120);
  if (*(a1 + 120) != v15)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint data base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 294, a3, *(a1 + 120), v15);
    v7 = 1;
  }

  return v7 == 0;
}

uint64_t nx_checkpoint_find_valid_checkpoint(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int *a5)
{
  v25 = 0;
  v26 = 0;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *a5 = -1;
  v5 = *(a2 + 104) & 0x7FFFFFFF;
  if (!v5)
  {
    return 2;
  }

  v6 = a5;
  v11 = 0;
  v12 = 0;
  v23 = (a1 + 424);
  while (1)
  {
    if (v11 && (*(a2 + 1264) & 2) != 0)
    {
      return 35;
    }

    v13 = (v5 + a3) % v5;
    v27 = -1;
    if (nx_checkpoint_desc_block_address(a1, v13, &v27) || sub_1000068D0(*(a1 + 384)))
    {
      log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
      goto LABEL_8;
    }

    if (*(a4 + 24) != -2147483647)
    {
      goto LABEL_8;
    }

    if (nx_check_superblock(a4, *(a2 + 36), 1, v14, v15))
    {
      log_err("%s:%d: %s checkpoint superblock %d @ %lld: failed sanity check: %d\n");
      goto LABEL_8;
    }

    v22 = v6;
    v16 = *(a2 + 64);
    if ((v16 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      break;
    }

    v6 = v22;
    if (nx_superblock_agrees_with_main_superblock(a2, a4, "checkpoint"))
    {
      v17 = *(a4 + 140);
      v18 = *(a2 + 104) & 0x7FFFFFFF;
      if (v13 == (*(a4 + 136) + v17 - 1) % v18)
      {
        if (v17 <= v11 + v18)
        {
          if (nx_metadata_range_add(a1, 0, 1, 0, 1) || nx_metadata_range_add(a1, *(a4 + 112), *(a4 + 104) & 0x7FFFFFFF, *(a4 + 104) < 0, 0) || nx_metadata_range_add(a1, *(a4 + 120), *(a4 + 108) & 0x7FFFFFFF, *(a4 + 108) < 0, 0))
          {
            log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n");
          }

          else if (sub_100086D78(a1, a4))
          {
            log_err("%s:%d: %s xid %lld validation failed for checkpoint at index %d: %d\n");
          }

          else
          {
            if (!sub_100086E88(a1, a4, &v26, &v25))
            {
              memcpy(*(a1 + 376), a4, *(a2 + 36));
              *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
              if (nx_checkpoint_traverse(a1, 0, 2))
              {
                log_err("%s:%d: %s xid %lld failed to fix up checkpoint data: %d\n");
LABEL_37:
                sub_100037430(*(a1 + 392), 0);
                *(a1 + 408) = 0;
                *(a1 + 736) = 0;
                *v23 = 0u;
                v23[1] = 0u;
                v23[2] = 0u;
                memcpy(*(a1 + 376), a2, *(a2 + 36));
                *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
                goto LABEL_8;
              }

              if (*(a1 + 628) == 1)
              {
                if (*(a1 + 631) == 1)
                {
                  log_info("%s:%d: %s probe of external device... skipping recent sanity checks.\n", "nx_checkpoint_find_valid_checkpoint", 586, (*(a1 + 384) + 212));
                }

                else
                {
                  log_info("%s:%d: %s sanity checking all recently-changed container state... please be patient.\n", "nx_checkpoint_find_valid_checkpoint", 595, (*(a1 + 384) + 212));
                  if (nx_check_recent_sanity(a1))
                  {
                    log_err("%s:%d: %s xid %lld sanity check of recently-changed structures failed: %d\n");
                    goto LABEL_37;
                  }
                }
              }

              if (sub_100010A34(a1, &v24))
              {
                log_err("%s:%d: %s xid %lld failed to get spaceman: %d\n");
              }

              else
              {
                v19 = nx_metadata_range_add(a1, *(v24[47] + 168), *(v24[47] + 164) & 0x7FFFFFFF, *(v24[47] + 164) < 0, 0);
                if (v19)
                {
                  sub_100038BA0(v24);
                }

                else
                {
                  v19 = nx_metadata_range_add(a1, *(v24[47] + 176), *(v24[47] + 152), *(v24[47] + 152) < 0, 0);
                  sub_100038BA0(v24);
                  if (!v19)
                  {
                    v21 = *(*(a1 + 376) + 16);
                    if (v21 < v26)
                    {
                      log_err("%s:%d: %s warning: best valid checkpoint xid %lld is less than max free queue oldest xid %lld seen in checkpoint %lld\n", "nx_checkpoint_find_valid_checkpoint", 633, (*(a1 + 384) + 212), v21, v26, v25);
                    }

                    result = 0;
                    *v22 = v13;
                    return result;
                  }
                }

                log_err("%s:%d: %s xid %lld failed to load spaceman metadata ranges (overlap?): %d\n", "nx_checkpoint_find_valid_checkpoint", 626, (*(a1 + 384) + 212), *(a4 + 16), v19);
                v6 = v22;
              }

              goto LABEL_37;
            }

            log_err("%s:%d: %s xid %lld data for checkpoint at index %d couldn't be loaded: %d\n");
          }

          sub_100037430(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *v23 = 0u;
          v23[1] = 0u;
          v23[2] = 0u;
        }

        else
        {
          log_err("%s:%d: %s xid %lld checkpoint superblock index %d doesn't fit in blocks remaining: %d > %d\n");
        }
      }

      else
      {
        log_err("%s:%d: %s xid %lld checkpoint superblock index %d doesn't match index block was found at: %d\n");
      }
    }

LABEL_8:
    ++v12;
    v5 = *(a2 + 104) & 0x7FFFFFFF;
    --a3;
    --v11;
    if (v12 >= v5)
    {
      return 2 * (*v6 == -1);
    }
  }

  log_err("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_checkpoint_find_valid_checkpoint", 497, (*(a1 + 384) + 212), v16 & 0xFFFFFFFFFFFFFFFDLL);
  if ((v16 & 0x100) != 0)
  {
    log_err("%s:%d: %s Fusion is not supported anymore\n", "nx_checkpoint_find_valid_checkpoint", 499, (*(a1 + 384) + 212));
  }

  return 75;
}

uint64_t sub_100086D78(uint64_t *a1, unsigned int *a2)
{
  v4 = _apfs_malloc_typed(a2[9], 0x9BA6ADA8uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (a2[35] == 1)
  {
LABEL_3:
    v6 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = nx_checkpoint_desc_block_address(a1, (v7 + a2[34]) % (a2[26] & 0x7FFFFFFF), &v12);
      if (v8)
      {
        break;
      }

      v8 = sub_1000068D0(a1[48]);
      if (v8)
      {
        break;
      }

      v8 = nx_check_checkpoint_map_block(a2, v5, v12, v7 == a2[35] - 2, v9, v10);
      if (v8)
      {
        break;
      }

      if (++v7 >= a2[35] - 1)
      {
        goto LABEL_3;
      }
    }

    v6 = v8;
  }

  _apfs_free(v5, a2[9]);
  return v6;
}

uint64_t sub_100086E88(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v45[0] = 0;
  v6 = *(*(a1 + 376) + 36);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0;
  v7 = _apfs_malloc_typed(v6, 0xB5246107uLL);
  if (v7)
  {
    v8 = v7;
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    if (*(a2 + 140) - 1 < 1)
    {
LABEL_28:
      _apfs_free(v8, v6);
      return 0;
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 144);
      v11 = *(a2 + 136);
      v34 = (v7 + 10);
      v38 = v6 - 1;
      v33 = *(a2 + 140) - 1;
      while (1)
      {
        v41 = 0;
        v12 = nx_checkpoint_desc_block_address(a1, v11, &v41);
        if (v12 || (v12 = sub_1000068D0(*(a1 + 384)), v12) || (v12 = obj_checksum_verify_phys(v8, v6, v13, v14), v12))
        {
          v31 = v12;
          log_err("%s:%d: %s couldn't read checkpoint descriptor map block %d @ %lld: %d\n");
LABEL_39:
          _apfs_free(v8, v6);
LABEL_40:
          sub_100037430(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *(a1 + 424) = 0u;
          *(a1 + 440) = 0u;
          *(a1 + 456) = 0u;
          return v31;
        }

        v35 = v9;
        v36 = v11;
        if (v8[9])
        {
          break;
        }

LABEL_27:
        v11 = (v36 + 1) % (*(a2 + 104) & 0x7FFFFFFFu);
        v9 = v35 + 1;
        if (v35 + 1 == v33)
        {
          goto LABEL_28;
        }
      }

      v15 = 0;
      v16 = v34;
      while (1)
      {
        v17 = *(v16 + 2);
        v41 = 0;
        v18 = nx_checkpoint_data_block_address(a1, v10, &v41, &v40);
        if (v18)
        {
          v31 = v18;
          log_err("%s:%d: %s couldn't read checkpoint data block %d @ %lld: %d\n", "nx_checkpoint_load_data", 387, (*(a1 + 384) + 212), v10, v41, v18);
          goto LABEL_39;
        }

        if (v41 != *(v16 + 4))
        {
          break;
        }

        v19 = *(a2 + 144);
        v20 = v10;
        if (v10 < v19)
        {
          v20 = (*(a2 + 108) & 0x7FFFFFFF) + v10;
        }

        v21 = v20 - v19;
        v22 = *(a2 + 148);
        v23 = (v38 + v17) / v6;
        if (v21 >= v22 || v21 + v23 > v22)
        {
          log_err("%s:%d: %s checkpoint mapping (%d,%d) extends beyond checkpoint data range: %d,%d\n", "nx_checkpoint_load_data", 403, (*(a1 + 384) + 212), v21, (v38 + v17) / v6, *(a2 + 144), v22);
          goto LABEL_33;
        }

        v45[0] = 0;
        v24 = sub_10003AB34(*v16, v45, &v43);
        HIDWORD(v43) = *(v16 + 1);
        LODWORD(v44) = v17;
        if (v24)
        {
          v31 = v24;
LABEL_38:
          log_err("%s:%d: %s failed to load checkpoint data of type 0x%x:0x%x @ %lld\n");
          goto LABEL_39;
        }

        v25 = sub_10003DEDC(*(a1 + 392), v45[0] | 0x80000000, *(v16 + 3), &v43, v41, v10, v40, *(a2 + 16), &v42);
        if (v25)
        {
          v31 = v25;
          goto LABEL_38;
        }

        if (a3)
        {
          v26 = v42;
          if (!*a4)
          {
            v27 = sub_100038178(v42);
            v26 = v42;
            if (v27 == 5)
            {
              v28 = v42[7];
              v29 = v28[32];
              if (v29 <= v28[27])
              {
                v29 = v28[27];
              }

              *a3 = v29;
              v30 = v28[37];
              if (v30 <= v29)
              {
                v30 = v29;
              }

              *a3 = v30;
              *a4 = *(a2 + 16);
            }
          }
        }

        else
        {
          v26 = v42;
        }

        sub_100038BA0(v26);
        v10 = (v23 + v10) % (*(a2 + 108) & 0x7FFFFFFFu);
        ++v15;
        v16 += 40;
        if (v15 >= v8[9])
        {
          goto LABEL_27;
        }
      }

      log_err("%s:%d: %s unexpected checkpoint map entry address: 0x%llx, expected 0x%llx\n", "nx_checkpoint_load_data", 392, (*(a1 + 384) + 212), *(v16 + 4), v41);
LABEL_33:
      v31 = nx_corruption_detected_int(0);
      _apfs_free(v8, v6);
      if (v31)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    log_err("%s:%d: %s couldn't allocate memory for checkpoint map block\n", "nx_checkpoint_load_data", 358, (*(a1 + 384) + 212));
    return 12;
  }

  return v31;
}

uint64_t nx_dev_init(char *a1, int a2, int a3, char a4, uint64_t a5, const char **a6, unsigned int **a7)
{
  v22 = 0;
  if (a3)
  {
    v22 = a1;
  }

  else
  {
    if (a4)
    {
      return 45;
    }

    v20 = sub_10000739C(a1, a2, &v22);
    if (v20)
    {
      v18 = v20;
      log_err("%s:%d: device initialization failed: %d\n", "nx_dev_init", 679, v20);
      goto LABEL_36;
    }

    a1 = v22;
  }

  v9 = sub_100006840(a1);
  v10 = sub_10000684C(v22);
  if (v9 <= 0x1000)
  {
    v11 = 4096;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10 * v9;
  while (!(v11 % v9))
  {
    if (v11 > v9)
    {
      sub_100006894(v22);
    }

    v13 = _apfs_malloc_typed(v11, 0x92FC743FuLL);
    if (!v13)
    {
      log_err("%s:%d: %s couldn't allocate memory for superblock of size %d\n", "nx_dev_init", 713, v22 + 212, v11);
      v18 = 12;
      goto LABEL_36;
    }

    v14 = sub_1000068D0(v22);
    if (v14)
    {
      v18 = v14;
      log_err("%s:%d: %s couldn't read superblock of size %d\n");
LABEL_33:
      _apfs_free(v13, v11);
      goto LABEL_36;
    }

    v17 = nx_check_superblock(v13, v11, 0, v15, v16);
    if (v17)
    {
      goto LABEL_13;
    }

    v19 = v13[9];
    if (v19 % v9)
    {
      log_err("%s:%d: %s superblock block size %d not an even multiple of device block size %d\n", "nx_dev_init", 729, v22 + 212, v13[9], v9);
      v17 = nx_corruption_detected_int(0);
      if (v17)
      {
        goto LABEL_13;
      }

      v19 = v13[9];
    }

    if (*(v13 + 5) * v19 > v12)
    {
      log_err("%s:%d: %s superblock container size %lld greater than device size %lld\n", "nx_dev_init", 735, v22 + 212, *(v13 + 5) * v19, v12);
      v17 = nx_corruption_detected_int(0);
LABEL_13:
      v18 = v17;
      if (v17)
      {
        if (v17 != 79)
        {
          log_err("%s:%d: %s superblock failed sanity checks: %d\n");
        }

        goto LABEL_33;
      }

      v19 = v13[9];
    }

    if (v19 == v11)
    {
      v18 = 0;
      *a7 = v13;
      *a6 = v22;
      return v18;
    }

    _apfs_free(v13, v11);
    sub_100006894(v22);
    v11 = v19;
    if (v19 < v9)
    {
      log_err("%s:%d: %s container block size too small for device block size (%d < %d)\n");
      goto LABEL_35;
    }
  }

  log_err("%s:%d: %s block size %d is not an even multiple of device block size %d\n");
LABEL_35:
  v18 = 22;
LABEL_36:
  if (v22)
  {
    sub_10000687C(v22);
  }

  return v18;
}

uint64_t nx_mount(char *a1, int *a2, uint64_t **a3)
{
  v3 = a3;
  v120 = 0;
  v118 = 0;
  v119 = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v121[4] = v5;
  v121[2] = v5;
  v121[3] = v5;
  v121[0] = v5;
  v121[1] = v5;
  v116 = 0xAAAAAAAAAAAAAAAALL;
  v117 = 0;
  v115 = -1431655766;
  v114 = 0xAAAAAAAAAAAAAAAALL;
  v113 = -1431655766;
  v112 = 0;
  *a3 = 0;
  if (a2)
  {
    v6 = *(a2 + 4);
    v7 = *a2;
    v8 = a2[1];
    if (((v6 & 0x100) != 0 || (v6 & 0x2000) != 0) && (v8 & 0x80000000) == 0)
    {
      log_err("%s:%d: conflicting mount options: probe %d temporary %d sbindex %d\n");
LABEL_9:
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = 22;
      goto LABEL_10;
    }

    if ((v6 & 0xC00) == 0x800)
    {
      log_err("%s:%d: conflicting mount options: is_system_graft but not is_graft\n");
      goto LABEL_9;
    }

    v106 = (v6 >> 13) & 1;
    v108 = (v6 >> 8) & 1;
    __src = (v6 >> 9) & 1;
    v11 = (*(a2 + 4) >> 1) & 1;
    v9 = (v6 >> 10) & 1;
    v101 = (*(a2 + 4) >> 5) & 1;
    crc32c_init();
    if (v7)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    v3 = a3;
    v10 = (v6 >> 11) & 1;
    if ((v7 | ((v6 & 0x4000) >> 14)))
    {
      v19 = 16;
    }

    else
    {
      v19 = 32;
    }

    v12 = v19 | v18;
    v104 = (v6 >> 2) & 1;
    v102 = (v6 >> 12) & 1;
  }

  else
  {
    crc32c_init();
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    v104 = 0;
    v101 = 0;
    v102 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v106 = 0;
    v108 = 0;
    __src = 0;
    v12 = 34;
    v8 = 0xFFFFFFFFLL;
  }

  v20 = nx_dev_init(a1, v12, v11, v9, 0, &v120, &v117);
  if (v20)
  {
    v15 = v20;
    if (v20 != 79)
    {
      log_err("%s:%d: device initialization failed: %d\n", "nx_mount", 1006, v20);
    }

    return v15;
  }

  v99 = v10;
  v95 = v6;
  v100 = v8;
  v94 = v3;
  v22 = v120;
  v98 = sub_1000068A0(v120) == 0;
  v97 = sub_1000068AC(v22);
  v96 = sub_100006888(v22);
  v23 = v117;
  v24 = v117[9];
  if (__src)
  {
    v25 = 128;
  }

  else
  {
    v25 = 0x10000;
  }

  if (__src)
  {
    v26 = 128;
  }

  else
  {
    v26 = 0x8000;
  }

  if (__src)
  {
    v27 = 128;
  }

  else
  {
    v27 = 0x10000;
  }

  if (__src)
  {
    v28 = 128;
  }

  else
  {
    v28 = 0x8000;
  }

  log_debug("%s:%d: %s initializing cache w/hash_size %u and cache size %u\n", "nx_mount", 1195, v22 + 212, v28, v27);
  v29 = v26;
  v13 = v24;
  v30 = sub_100036DFC(v29, v25, v24, &v119);
  if (v30)
  {
    v31 = v30;
    log_err("%s:%d: %s object cache initialization failed: %d\n", "nx_mount", 1199, v22 + 212, v30);
    v14 = 0;
    v15 = v31;
    goto LABEL_10;
  }

  __srca = v23;
  v32 = v119;
  if (v99)
  {
    *&v119[14].__opaque[48] = 1;
  }

  memset(&v121[3] + 8, 0, 24);
  *(&v121[2] + 8) = 0u;
  memset(v121 + 8, 0, 32);
  *&v121[0] = __PAIR64__(v24, v96);
  *(&v121[0] + 1) = *(v23 + 5);
  *(&v121[1] + 1) = v22;
  *&v121[2] = 1;
  DWORD2(v121[2]) = (v7 | v98) & 1;
  HIDWORD(v121[2]) = v97 != 0;
  *&v121[3] = __PAIR64__(v108, v104);
  *(&v121[3] + 1) = __PAIR64__(v106, v102);
  v33 = sub_10003A064(v32, 0x80000000, 1uLL, &nx_desc, v121, v24, 1, &v118);
  if (v33)
  {
    v15 = v33;
    log_err("%s:%d: %s object cache bootstrap failed: %d\n");
LABEL_49:
    v14 = 0;
    goto LABEL_10;
  }

  v34 = v118;
  if (v101)
  {
    *(v118 + 640) = 1;
  }

  memcpy(v34[47], v23, v24);
  v35 = v119;
  v36 = v118[47];
  v37 = *(v36 + 88);
  *v119[6].__opaque = v118;
  v35[25].i64[0] = v37;
  __strlcpy_chk();
  sub_10003F1C4(v119, v9 & (v99 ^ 1));
  v119 = 0;
  v120 = 0;
  v38 = *(v36 + 104);
  if (v38 < 0 && (v41 = nx_metadata_fragmented_sanity_check(v118, *(v36 + 112), v38 & 0x7FFFFFFF), v41) || (v39 = *(v36 + 108), v39 < 0) && (v41 = nx_metadata_fragmented_sanity_check(v118, *(v36 + 120), v39 & 0x7FFFFFFF), v41))
  {
    v15 = v41;
    log_err("%s:%d: %s fragmented checkpoint area failed sanity check: %d\n");
    goto LABEL_49;
  }

  v14 = _apfs_malloc_typed(v24, 0x286E03C4uLL);
  if (!v14)
  {
    log_err("%s:%d: %s failed to allocate buffer for checkpoint superblock\n", "nx_mount", 1307, (v118[48] + 212));
    v15 = 12;
    goto LABEL_10;
  }

  if ((*(v36 + 1264) & 2) == 0)
  {
    goto LABEL_68;
  }

  v40 = v118;
  *(v118 + 626) = 1;
  if (*(v40 + 628) == 1)
  {
    log_err("%s:%d: %s storage is untrusted. Container cleanly-unmounted flag ignored\n");
LABEL_67:
    *(v36 + 1264) &= ~2uLL;
    *(v23 + 158) &= ~2uLL;
    goto LABEL_68;
  }

  if (!*(v36 + 140))
  {
    log_err("%s:%d: %s checkpoint descriptor length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_67;
  }

  if (!*(v36 + 148))
  {
    log_err("%s:%d: %s checkpoint data length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_67;
  }

LABEL_68:
  v42 = v13;
  v43 = 0;
  v105 = 0;
  v107 = 0;
  v109 = 0;
  while (1)
  {
    v44 = v118;
    if ((*(v36 + 1264) & 2) != 0)
    {
      break;
    }

    v45 = *(v118 + 633);
    if (v43 & v45)
    {
      goto LABEL_74;
    }

    highest_xid = nx_checkpoint_find_highest_xid(v118, &v113, &v114);
    if (highest_xid)
    {
      v15 = highest_xid;
      log_err("%s:%d: %s failed to scan checkpoint descriptor area for largest xid: %d\n");
LABEL_144:
      LODWORD(v13) = v42;
      goto LABEL_10;
    }

LABEL_75:
    if ((v100 & 0x80000000) == 0)
    {
      v54 = v100;
      v55 = __srca;
      goto LABEL_85;
    }

    v50 = __srca;
    valid_checkpoint = nx_checkpoint_find_valid_checkpoint(v118, __srca, v113, v14, &v115);
    v15 = valid_checkpoint;
    if (valid_checkpoint == 35)
    {
      if ((*(v36 + 1264) & 2) == 0)
      {
        goto LABEL_121;
      }

      log_err("%s:%d: %s Couldn't load checkpoint from cleanly-unmounted state.  Falling back to descriptor scan.\n", "nx_mount", 1503, (v118[48] + 212));
      *(v36 + 1264) &= ~2uLL;
      *(__srca + 158) &= ~2uLL;
    }

    else
    {
      if (valid_checkpoint)
      {
LABEL_121:
        log_err("%s:%d: %s failed to find valid checkpoint: %d\n", "nx_mount", 1508, (v118[48] + 212), valid_checkpoint);
        goto LABEL_144;
      }

      v103 = v14[2];
      log_debug("%s:%d: %s checkpoint search: largest xid %lld, best xid %lld @ %d\n", "nx_mount", 1512, (v118[48] + 212), v114, v103, v115);
      v52 = *(__srca + 2);
      v53 = v118;
      if (v52 != v14[2])
      {
        log_err("%s:%d: %s reloading after unclean unmount, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1514, (v118[48] + 212), v14[2], v52);
        v53 = v118;
        if ((*(v118 + 633) & 1) == 0)
        {
          v105 = 1;
          *(v118 + 643) = 1;
        }
      }

LABEL_115:
      v73 = *(v53[47] + 56);
      if (v73)
      {
        log_debug("%s:%d: %s unsupported nx_readonly_compatible_features (0x%llx): mount r/o\n", "nx_mount", 1525, (v53[48] + 212), v73);
        v53 = v118;
        *(v118 + 627) = 1;
      }

      sub_10003F0C4(v53[49]);
      v74 = v118;
      v75 = *(v118 + 633);
      if ((v43 & v75 & 1) == 0)
      {
        v107 = *(v14 + 36);
        v109 = *(v14 + 34);
        log_debug("%s:%d: %s stable checkpoint indices: desc %d data %d\n", "nx_mount", 1539, (v118[48] + 212), v109, v107);
        v74 = v118;
        v75 = *(v118 + 633);
      }

      if (v43 & 1 | ((v75 & 1) == 0))
      {
        if (*(v74 + 628) == 1 && ((*(v74 + 631) | v75) & 1) == 0 && (v74[79] & 1) == 0 && !*(v50 + 176))
        {
          *(v74 + 165) = (*(v14 + 34) + *(v14 + 35) - 1) % (v14[13] & 0x7FFFFFFFu);
        }

        *(v36 + 136) = 0;
        *(v36 + 144) = 0;
        *(v36 + 1264) &= ~2uLL;
        nx_metadata_range_optimize(v74);
        v77 = v118;
        if (*(v118 + 629) == 1)
        {
          v15 = sub_100010A34(v118, &v116);
          if (v15)
          {
LABEL_133:
            log_err("%s:%d: %s failed to set up spaceman for demo mode: %d\n");
            goto LABEL_144;
          }

          j__pthread_mutex_lock(v118[49]);
          v78 = v118;
          v118[52] = 0;
          v15 = sub_10003A7F4(v116, 0, v78 + 52, 0);
          sub_100037324(v118[49]);
          if (v15)
          {
            sub_100038BA0(v116);
            goto LABEL_133;
          }

          sub_10003E77C(v118[52], 0);
          sub_100038BA0(v116);
          v77 = v118;
        }

        v79 = v103 + 1;
        v15 = tx_mgr_init(v77, v103 + 1, v77 + 50);
        v80 = v118;
        if (v15)
        {
          log_err("%s:%d: %s tx manager initialization failed: %d\n");
          goto LABEL_144;
        }

        v81 = v118[50];
        *(v81 + 104) = v109;
        *(v81 + 108) = v107;
        if ((v95 & 1) == 0)
        {
          log_info("%s:%d: %s sanity checking all container state... please be patient.\n", "nx_mount", 1602, (v80[48] + 212));
          v15 = nx_check(v118, 0);
          v80 = v118;
          if (v15)
          {
            log_err("%s:%d: %s failed nx_check sanity: %d\n");
            goto LABEL_144;
          }
        }

        if ((*(v80 + 627) & 1) == 0)
        {
          if (*(v80 + 633) & 1) != 0 || *(v80 + 632) == 1 && (log_info("%s:%d: %s Enabling temporary checkpoints starting with xid %lld.\n", "nx_mount", 1614, (v80[48] + 212), v79), v80 = v118, *(v118[47] + 1408) = v79, (*(v80 + 633)))
          {
            if ((v80[79] & 1) == 0)
            {
              log_info("%s:%d: %s Making temporary checkpoint %lld permanent (start %lld).\n", "nx_mount", 1622, (v80[48] + 212), *(v80[47] + 16), *(v80[47] + 1408));
              v14[176] = 0;
              sub_10003F19C(v118, v14, v13, v82, v83);
              if (!v112)
              {
                v15 = 22;
                goto LABEL_183;
              }

              v84 = sub_1000069D8(v118[48]);
              if (v84 || (v84 = tx_barrier(v118, 16), v84))
              {
                v15 = v84;
LABEL_183:
                log_err("%s:%d: %s failed to write superblock to block %lld: %d\n");
                goto LABEL_144;
              }

              v80 = v118;
              *(v118[47] + 1408) = 0;
              v105 = 1;
            }
          }

          v85 = spaceman_allocation_init(v80);
          if (v85)
          {
            log_err("%s:%d: %s failed to set up sm allocation metadata: %d\n", "nx_mount", 1648, (v118[48] + 212), v85);
          }

          if (v105)
          {
            sub_10003F168(v118, v86, v87);
            v88 = sub_1000069D8(v118[48]);
            if (v88)
            {
              v15 = v88;
              log_err("%s:%d: %s failed to write superblock to block 0: %d\n");
              goto LABEL_144;
            }
          }

          v89 = v118;
          v90 = v118[47];
          v91 = *(v90 + 1384);
          v92 = apfs_source_version_val_full();
          if (v91 < v92)
          {
            *(v90 + 1384) = v92;
          }

          sub_100088930(v89);
          nx_reaper_check_for_work(v118);
        }

        _apfs_free(v14, v42);
        v93 = v118;
        if (*(v118[47] + 1248))
        {
          if ((*(v118 + 627) & 1) == 0)
          {
            v15 = nx_unblock_physical_range(v118);
            v93 = v118;
            if (v15)
            {
              log_err("%s:%d: %s nx_unblock_physical_range failed with error: %d\n", "nx_mount", 1706, (v118[48] + 212), v15);
              v14 = 0;
              goto LABEL_144;
            }
          }
        }

        *v94 = v93;
        if (v117)
        {
          _apfs_free(v117, v117[9]);
        }

        return 0;
      }

      sub_100037430(v74[49], 0);
      v74[51] = 0;
      v74[92] = 0;
      *(v74 + 53) = 0u;
      *(v74 + 55) = 0u;
      *(v74 + 57) = 0u;
      memcpy(v118[47], v50, v13);
      v43 = 1;
    }
  }

  log_info("%s:%d: %s container cleanly-unmounted flag set.\n", "nx_mount", 1341, (v118[48] + 212));
  v44 = v118;
  v45 = *(v118 + 633);
LABEL_74:
  v47 = *(v36 + 136) + *(v36 + 140) - 1;
  v48 = *(v36 + 104) & 0x7FFFFFFF;
  v49 = v47 % v48;
  v113 = v47 % v48;
  v114 = *(v36 + 16);
  if ((v43 & v45 & 1) == 0)
  {
    goto LABEL_75;
  }

  log_info("%s:%d: %s Attempting to load from temporary checkpoint (start xid %lld).\n", "nx_mount", 1346, (v44[48] + 212), *(v36 + 1408));
  v54 = v49;
  v55 = __srca;
  if (!*(v36 + 1408))
  {
    log_err("%s:%d: %s No temporary checkpoint start xid!  Aborting!\n", "nx_mount", 1348, (v118[48] + 212));
    v15 = 100;
    goto LABEL_144;
  }

LABEL_85:
  v56 = *(v36 + 104) & 0x7FFFFFFF;
  if (v54 >= v56)
  {
    log_err("%s:%d: %s checkpoint descriptor index %d out of range [0...%d]\n", "nx_mount", 1366, (v118[48] + 212), v54, v56 - 1);
    v76 = v118;
LABEL_143:
    v15 = nx_corruption_detected_int(v76);
    goto LABEL_144;
  }

  v100 = v54;
  v57 = nx_checkpoint_desc_block_address(v118, v54, &v112);
  if (v57)
  {
    v15 = v57;
LABEL_136:
    log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
    goto LABEL_10;
  }

  v58 = sub_1000068D0(v118[48]);
  v15 = v58;
  if (*(v118 + 633) == 1)
  {
    if (!v58 && v13)
    {
      v61 = 0;
      while (!*(v14 + v61))
      {
        if (v13 == ++v61)
        {
          v15 = 0;
          goto LABEL_95;
        }
      }

      log_err("%s:%d: %s Attempt to load temporary checkpoint found unexpected data (0x%02x @ %d), checkpoint descriptor block %d @ %lld\n", "nx_mount", 1382, (v118[48] + 212), *(v14 + v61), v61, v100, v112);
      v15 = 22;
    }

LABEL_95:
    memcpy(v14, v55, v13);
    sub_10003F19C(v118, v14, v13, v62, v63);
  }

  if (v15)
  {
    goto LABEL_136;
  }

  if (*(v14 + 7) || *(v14 + 6) != -2147483647)
  {
    log_err("%s:%d: %s checkpoint descriptor block %d is not a valid superblock\n", "nx_mount", 1399, (v118[48] + 212), v100);
    v76 = v118;
    goto LABEL_143;
  }

  v64 = nx_check_superblock(v14, *(v36 + 36), 1, v59, v60);
  if (v64)
  {
    v15 = v64;
    log_err("%s:%d: %s checkpoint descriptor block %d superblock failed sanity checks: %d\n");
    goto LABEL_144;
  }

  v65 = *(v36 + 64);
  if ((v65 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    log_err("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_mount", 1409, (v118[48] + 212), v65 & 0xFFFFFFFFFFFFFFFDLL);
    if ((v65 & 0x100) != 0)
    {
      log_err("%s:%d: %s Fusion is not supported anymore\n", "nx_mount", 1411, (v118[48] + 212));
    }

    v15 = 75;
    goto LABEL_10;
  }

  v50 = __srca;
  if (!nx_superblock_agrees_with_main_superblock(__srca, v14, "checkpoint"))
  {
    log_err("%s:%d: %s checkpoint descriptor block %d doesn't agree with main superblock\n", "nx_mount", 1418, (v118[48] + 212), v100);
    v15 = 22;
    goto LABEL_144;
  }

  v66 = (*(v14 + 34) + *(v14 + 35) - 1) % (*(v36 + 104) & 0x7FFFFFFFu);
  if (v100 != v66)
  {
    log_err("%s:%d: %s checkpoint superblock index %d doesn't match index block was found at: %d\n", "nx_mount", 1425, (v118[48] + 212), v66, v100);
    v76 = v118;
    goto LABEL_143;
  }

  v67 = nx_metadata_range_add(v118, 0, 1, 0, 1);
  if (v67 || (v67 = nx_metadata_range_add(v118, v14[14], v14[13] & 0x7FFFFFFF, *(v14 + 26) < 0, 0), v67) || (v67 = nx_metadata_range_add(v118, v14[15], *(v14 + 27) & 0x7FFFFFFF, *(v14 + 27) < 0, 0), v67))
  {
    v15 = v67;
    log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n", "nx_mount", 1442, (v118[48] + 212), v14[2], *(v14 + 34), v67);
    goto LABEL_10;
  }

  v68 = sub_100086D78(v118, v14);
  if (v68)
  {
    v15 = v68;
    log_err("%s:%d: %s validation failed for checkpoint at index %d: %d\n");
    goto LABEL_144;
  }

  v115 = v100;
  v103 = v14[2];
  log_debug("%s:%d: %s checkpoint: largest xid %lld, given checkpoint xid %lld @ %d\n", "nx_mount", 1453, (v118[48] + 212), v114, v103, v100);
  v69 = v118;
  if (*(__srca + 2) != v14[2])
  {
    log_err("%s:%d: %s loading older checkpoint, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1455, (v118[48] + 212), v14[2], *(v36 + 16));
    v69 = v118;
    v105 = 1;
    *(v118 + 643) = 1;
  }

  v70 = sub_100086E88(v69, v14, 0, 0);
  if (v70)
  {
    v15 = v70;
    log_err("%s:%d: %s data for checkpoint at index %d couldn't be loaded: %d\n");
    goto LABEL_144;
  }

  memcpy(v118[47], v14, v13);
  v71 = v118;
  *(v118[49] + 400) = *(v118[47] + 88);
  v15 = nx_checkpoint_traverse(v71, 0, 2);
  if (v15)
  {
    log_err("%s:%d: %s failed to fix up checkpoint data: %d\n");
    goto LABEL_144;
  }

  v15 = sub_100010A34(v118, &v116);
  if (v15)
  {
    log_err("%s:%d: %s checkpoint xid %lld failed to get spaceman: %d\n");
    goto LABEL_144;
  }

  v72 = nx_metadata_range_add(v118, *(v116[47] + 168), *(v116[47] + 164) & 0x7FFFFFFF, *(v116[47] + 164) < 0, 0);
  if (!v72)
  {
    v15 = nx_metadata_range_add(v118, *(v116[47] + 176), *(v116[47] + 152), *(v116[47] + 152) < 0, 0);
    sub_100038BA0(v116);
    if (v15)
    {
      goto LABEL_150;
    }

    v53 = v118;
    goto LABEL_115;
  }

  v15 = v72;
  sub_100038BA0(v116);
LABEL_150:
  log_err("%s:%d: %s checkpoint xid %lld failed to load spaceman metadata ranges (overlap?): %d\n");
LABEL_10:
  if (v117)
  {
    _apfs_free(v117, v117[9]);
  }

  if (v14)
  {
    _apfs_free(v14, v13);
  }

  v16 = v118;
  if (v118)
  {
    *(v118 + 627) = 1;
    nx_unmount_internal(v16, 0);
  }

  if (v119)
  {
    sub_1000375D0(v119);
  }

  if (v120)
  {
    sub_10000687C(v120);
  }

  return v15;
}

void sub_100088930(void *a1)
{
  v2 = sub_1000140D4(a1, 0, 1u);
  if (v2)
  {
    log_err("%s:%d: %s *** trim'ing free blocks returned: %d\n", "nx_mount_initiate_free_space_trims", 856, (a1[48] + 212), v2);
  }

  spaceman_free_extent_cache_print_stats(a1);
}

void nx_unmount_internal(uint64_t a1, _DWORD *a2)
{
  nx_reaper_shut_down(a1);
  v4 = *(a1 + 400);
  if (v4)
  {
    if ((*(a1 + 627) & 1) == 0)
    {
      tx_unmount(a1);
      v4 = *(a1 + 400);
    }

    tx_mgr_destroy(a1, v4, *(*(a1 + 376) + 36));
  }

  if (a2)
  {
    *a2 = *(a1 + 660);
  }

  v5 = *(a1 + 408);
  if (v5)
  {
    sub_100038BA0(v5);
    *(a1 + 408) = 0;
  }

  for (i = 0; i != 32; i += 8)
  {
    v7 = *(a1 + 432 + i);
    if (v7)
    {
      sub_100038BA0(v7);
    }
  }

  v8 = *(a1 + 464);
  if (v8)
  {
    btree_delete(v8, 0, 0);
    sub_100038BA0(*(a1 + 464));
  }

  v9 = *(a1 + 1088);
  if (v9)
  {
    btree_delete(v9, 0, 0);
    sub_100038BA0(*(a1 + 1088));
    *(a1 + 1088) = 0;
  }

  v10 = *(a1 + 384);
  if (v10)
  {
    sub_10000687C(v10);
    *(a1 + 384) = 0;
  }

  v11 = *(a1 + 392);
  if (v11)
  {

    sub_1000375D0(v11);
  }
}

uint64_t apfs_clonegroup_key_cmp(int a1, void *__s1, size_t __n, void *__s2, unsigned int a5, int *a6)
{
  result = 22;
  if (__n >= 9 && a5 >= 9)
  {
    if (*__s1 < *__s2)
    {
LABEL_4:
      v8 = -1;
LABEL_7:
      result = 0;
      *a6 = v8;
      return result;
    }

    if (*__s1 > *__s2)
    {
      goto LABEL_6;
    }

    v9 = *(__s1 + 8);
    v10 = *(__s2 + 8);
    if (v9 < v10)
    {
      goto LABEL_4;
    }

    if (v9 > v10)
    {
LABEL_6:
      v8 = 1;
      goto LABEL_7;
    }

    if (v9 == 2)
    {
      result = 22;
      if (__n == 17 && a5 == 17)
      {
        v15 = *(__s1 + 9);
        v16 = *(__s2 + 9);
        v17 = v15 >= v16;
        v8 = v15 > v16;
        if (!v17)
        {
          v8 = -1;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (__n != a5)
        {
          return 22;
        }

        v8 = memcmp(__s1, __s2, __n);
        goto LABEL_7;
      }

      result = 22;
      if (__n == 25 && a5 == 25)
      {
        v11 = *(__s1 + 9);
        v12 = *(__s2 + 9);
        if (v11 < v12)
        {
          goto LABEL_4;
        }

        if (v11 <= v12)
        {
          v13 = *(__s1 + 17);
          v14 = *(__s2 + 17);
          if (v13 >= v14)
          {
            v8 = v13 > v14;
            goto LABEL_7;
          }

          goto LABEL_4;
        }

        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t apfs_clonegroup_lock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_mutex_lock((a1 + 4072));
  v8 = a1 + 4208;
  for (i = *(a1 + 4192); i; i = *(a1 + 4192))
  {
    v10 = i;
    while (1)
    {
      v11 = __clz(__rbit64(v10));
      v12 = (v8 + 32 * v11);
      if (*v12 == a2 && v12[2] == a4)
      {
        if (!a3)
        {
          break;
        }

        v13 = v12[1];
        v14 = !v13 || v13 == a3;
        if (v14)
        {
          break;
        }
      }

      v15 = 1 << v11;
      v14 = v15 == v10;
      v10 ^= v15;
      if (v14)
      {
        if (i != -1)
        {
          goto LABEL_14;
        }

        break;
      }
    }

    *(a1 + 4200) = 1;
    cv_wait((a1 + 4136), (a1 + 4072), 8, "apfs_clonegroup_lock", 0);
  }

LABEL_14:
  v16 = __clz(__rbit64(~i));
  *(a1 + 4192) = (1 << v16) | i;
  v17 = (v8 + 32 * v16);
  *v17 = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = pthread_self();

  return pthread_mutex_unlock((a1 + 4072));
}

uint64_t apfs_clonegroup_unlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_mutex_lock((a1 + 4072));
  v8 = *(a1 + 4192);
  if (!v8)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v9 = __clz(__rbit64(v8));
    v10 = (a1 + 4208 + 32 * v9);
    v11 = 1 << v9;
    if (*v10 == a2 && v10[1] == a3 && v10[2] == a4)
    {
      break;
    }

    v12 = v11 == v8;
    v8 ^= v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  v14 = v10[3];
  v15 = pthread_self();
  v16 = pthread_equal(v14, v15);
  *(a1 + 4192) ^= v11;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  if (!v16)
  {
LABEL_7:
    log_err("%s:%d: %s Couldn't find lock for (group:%llu inum:%llu priv_id:%llu)\n", "apfs_clonegroup_unlock", 259, (a1 + 4040), a2, a3, a4);
  }

  if (*(a1 + 4200) == 1)
  {
    cv_wakeup((a1 + 4136));
    *(a1 + 4200) = 0;
  }

  return pthread_mutex_unlock((a1 + 4072));
}

uint64_t apfs_clonegroup_id_from_ino(uint64_t a1)
{
  __dst = 0;
  xf_get((a1 + 408), 21, 0, &__dst, 8uLL);
  return __dst;
}

uint64_t apfs_clonegroup_lookup(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  apfs_clonegroup_lock(a1, a2, a3, a4);
  v10 = sub_100088EFC(a1, a2, a3, a4, a5);
  apfs_clonegroup_unlock(a1, a2, a3, a4);
  return v10;
}

uint64_t sub_100088EFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = -1431655766;
  v21 = -1431655766;
  v16 = a2;
  v17 = 1;
  v18 = a4;
  v19 = a3;
  clonegroup_tree_ext = apfs_get_clonegroup_tree_ext(a1, 0, *(a1 + 440), 0, &v22);
  if (clonegroup_tree_ext)
  {
    v11 = clonegroup_tree_ext;
    v12 = strerror(clonegroup_tree_ext);
    log_err("%s:%d: %s couldn't get clonegroup tree err:%s\n", "apfs_clonegroup_lookup_locked", 312, (a1 + 4040), v12);
    v13 = 0;
    goto LABEL_12;
  }

  v13 = _apfs_malloc_typed(0x100uLL, 0x3AEB441BuLL);
  if (v13)
  {
    v20 = 256;
    v21 = 25;
    v14 = bt_lookup_variant(v22, *(a1 + 440), &v16, &v21, 25, v13, &v20, 0, 0, 0);
    if (v14)
    {
LABEL_5:
      v11 = v14;
      goto LABEL_12;
    }

    if (v20 > 0xB)
    {
      if (v20 != 12)
      {
        v14 = xf_init_with_blob((a5 + 16), v13 + 6, v20 - 12);
        if (v14)
        {
          goto LABEL_5;
        }
      }

      v11 = 0;
      *(a5 + 8) = *(v13 + 2);
      *a5 = *v13;
    }

    else
    {
      log_err("%s:%d: %s Value too small:%u (group:%llu inum:%llu priv_id:%llu)\n", "apfs_clonegroup_lookup_locked", 332, (a1 + 4040), v20, a2, a3, a4);
      v11 = 92;
    }
  }

  else
  {
    v11 = 12;
  }

LABEL_12:
  if (v22)
  {
    sub_100038BA0(v22);
  }

  if (v13)
  {
    _apfs_free(v13, 256);
  }

  return v11;
}

uint64_t apfs_clonegroup_get_physical_size_if_full_clone(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = 0;
  if (!apfs_clonegroup_lookup(a1, a2, a3, a4, &v6))
  {
    if ((BYTE8(v6) & 0x10) != 0)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    xf_release(&v7);
  }

  return v4;
}

uint64_t apfs_clonegroup_update_locked(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = 0;
  v22 = a3;
  v23 = 1;
  v24 = a5;
  v25 = a4;
  clonegroup_tree_ext = apfs_get_clonegroup_tree_ext(a1, 0, 0, a2, &v26);
  if (clonegroup_tree_ext)
  {
    v13 = clonegroup_tree_ext;
    v14 = strerror(clonegroup_tree_ext);
    log_err("%s:%d: %s couldn't get clonegroup tree err:%s\n", "apfs_clonegroup_update_locked", 761, (a1 + 4040), v14);
    v15 = 0;
    goto LABEL_3;
  }

  v17 = _apfs_malloc_typed(0x100uLL, 0x4BBB75DBuLL);
  v15 = v17;
  if (!v17)
  {
    v13 = 12;
    goto LABEL_3;
  }

  *(v17 + 2) = *(a6 + 8);
  *v17 = *a6;
  v18 = xf_serialize((a6 + 16), v17 + 6, 0xF4uLL);
  if (v18)
  {
    v13 = v18;
    goto LABEL_3;
  }

  if (a7 && a7 != a5)
  {
    v19 = bt_remove(v26, 0, &v22, 0x19u, a2);
    if (v19)
    {
      v13 = v19;
      strerror(v19);
      log_err("%s:%d: %s couldn't remove (group:%llu inum:%llu priv_id:%llu) err:%s\n");
      goto LABEL_3;
    }

    v24 = a7;
  }

  size = xf_get_size((a6 + 16));
  v21 = bt_insert(v26, 0, &v22, 25, v15, size + 12, a2);
  v13 = v21;
  if (v21)
  {
    strerror(v21);
    log_err("%s:%d: %s couldn't insert record err:%s\n");
  }

LABEL_3:
  if (v26)
  {
    sub_100038BA0(v26);
  }

  if (v15)
  {
    _apfs_free(v15, 256);
  }

  return v13;
}

uint64_t apfs_clonegroup_update_dir_stats_key(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __src = a6;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  apfs_clonegroup_lock(a1, a3, a4, a5);
  v11 = sub_100088EFC(a1, a3, a4, a5, &v15);
  if (v11)
  {
    v12 = v11;
    strerror(v11);
    log_err("%s:%d: %s Couldn't lookup (group:%llu inum:%llu priv_id:%llu): %s\n");
  }

  else
  {
    xf_set(&v16, 1, 0, &__src, 8uLL);
    updated = apfs_clonegroup_update_locked(a1, a2, a3, a4, a5, &v15, 0);
    v12 = updated;
    if (updated)
    {
      strerror(updated);
      log_err("%s:%d: %s Couldn't update (group:%llu inum:%llu priv_id:%llu): %s\n");
    }
  }

  apfs_clonegroup_unlock(a1, a3, a4, a5);
  xf_release(&v16);
  return v12;
}

uint64_t apfs_clonegroup_remove_dir_stats_key(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  apfs_clonegroup_lock(a1, a3, a4, a5);
  v10 = sub_100088EFC(a1, a3, a4, a5, &v14);
  if (v10)
  {
    v11 = v10;
    strerror(v10);
    log_err("%s:%d: %s Couldn't lookup (group:%llu inum:%llu priv_id:%llu): %s\n");
  }

  else
  {
    xf_remove(&v15, 1);
    updated = apfs_clonegroup_update_locked(a1, a2, a3, a4, a5, &v14, 0);
    v11 = updated;
    if (updated)
    {
      strerror(updated);
      log_err("%s:%d: %s Couldn't update (group:%llu inum:%llu priv_id:%llu): %s\n");
    }
  }

  apfs_clonegroup_unlock(a1, a3, a4, a5);
  xf_release(&v15);
  return v11;
}

uint64_t omap_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t omap_snapshot_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t omap_map_tree_get(uint64_t *a1, uint64_t a2, int a3, unint64_t a4, uint64_t *a5)
{
  v9 = *(a2 + 472);
  if ((a3 & 1) == 0 && v9)
  {
    *a5 = v9;
    sub_10003E55C(v9);
    return 0;
  }

  if (v9)
  {
    *a5 = v9;
    sub_10003E55C(v9);
    if ((a3 & 1) == 0)
    {
      return 0;
    }

    v16 = sub_10003D934(*a5, (*(*(a2 + 376) + 40) >> 29) & 2, a4);
    if (v16)
    {
      extended = v16;
      sub_100038BA0(*a5);
      *a5 = 0;
      return extended;
    }

LABEL_17:
    if (sub_100039CE0(*a5) != *(*(a2 + 376) + 48))
    {
      *(*(a2 + 376) + 48) = sub_100039CE0(*a5);
      sub_10003EE48(a2, a4, 0);
    }

    return 0;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 40);
  v14 = *(v12 + 48);
  v17[1] = 0;
  v18 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17[0] = omap_key_cmp;
  v17[2] = 0x20000000BLL;
  if (v13 != 2)
  {
    return 22;
  }

  extended = btree_get_extended(a1, v13 & 0xFFFF0000, v14, 0, a3, v17, a4, a5);
  if (!extended)
  {
    v15 = 0;
    atomic_compare_exchange_strong((a2 + 472), &v15, *a5);
    if (!v15)
    {
      sub_10003E55C(*a5);
    }

    if ((a3 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_17;
  }

  return extended;
}

uint64_t sub_1000897D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  *(a1 + 32) = *a3;
  *(a1 + 40) = *(a3 + 4);
  return result;
}

uint64_t sub_100089800(void *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 44);
  v4 = v3 == 1073741826 || v3 == -2147483646;
  if (v4 && ((v5 = *(v2 + 40), v5 != -2147483646) ? (v6 = v5 == 1073741826) : (v6 = 1), v6) || (result = nx_corruption_detected_int(*(*a1 + 392)), !result))
  {
    result = 0;
    a1[47] = v2;
  }

  return result;
}

uint64_t sub_100089878(void *a1)
{
  v2 = a1[59];
  if (v2 && !*(*a1 + 940))
  {
    sub_100038BA0(v2);
  }

  return 0;
}

uint64_t sub_1000898B0(uint64_t *a1, char a2, int *a3, uint64_t a4, unint64_t a5)
{
  v8 = a1[47];
  v9 = a1[1];
  v10 = *(*a1 + 392);
  if (v9)
  {
    v11 = a1[1];
  }

  else
  {
    v11 = *(*a1 + 392);
  }

  memset(v101, 170, sizeof(v101));
  v99 = -1431655766;
  v100 = -1431655766;
  v12 = *(*(v10 + 376) + 36);
  if ((a2 & 2) == 0)
  {
    if (*a3)
    {
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a3 = 1;
      if (v9)
      {
LABEL_7:
        extended = sub_10003D934(v9, 0, a5);
        if (extended)
        {
          if (sub_100038178(v9) == 13)
          {
            v14 = (v9 + 505);
          }

          else
          {
            v14 = (v9[48] + 212);
          }

          log_err("%s:%d: %s obj_modify() failed: %d\n", "omap_reap", 309, v14, extended);
        }

LABEL_25:
        v21 = *a3;
        if (*a3 == 1)
        {
          v112 = 0xAAAAAAAAAAAAAAAALL;
          *&v104[0] = 0xAAAAAAAAAAAAAAAALL;
          sub_100010AB8(v11, 0, &v112, v104, 0, 0);
          v22 = omap_map_tree_get(v11, a1, 0, 0, v101);
          if (v22)
          {
            extended = v22;
            if (sub_100038178(v11) == 13)
            {
              v23 = (v11 + 4040);
            }

            else
            {
              v23 = (*(v11 + 384) + 212);
            }

            log_err("%s:%d: %s failed to get omap tree for reaping: %d\n", "omap_reap", 322, v23, extended);
            return extended;
          }

          v98 = v8;
          v25 = 0;
          v26 = 1024;
          if (*&v104[0] < 0x7D1uLL)
          {
            v26 = 102;
          }

          if (*&v104[0] >= 0x3E9uLL)
          {
            v27 = v26;
          }

          else
          {
            v27 = 51;
          }

          v99 = 16;
          v100 = 16;
          v87 = v12 - 1;
          v89 = v27;
          v92 = (v11 + 4040);
          while (1)
          {
            v28 = bt_lookup_variant(v101[0], 0, a3 + 1, &v100, 16, &v101[1], &v99, 4, 0, 0);
            if (v28)
            {
              break;
            }

            if (v101[1])
            {
              v99 = 16;
              v100 = 16;
            }

            else
            {
              v94 = v12;
              v29 = (v87 + HIDWORD(v101[1])) / v12;
              v30 = sub_100018614(v11, 64, v101[2], v29, a5);
              if (v30)
              {
                v31 = v30;
                v32 = sub_100038178(v11);
                v33 = (v11 + 4040);
                if (v32 != 13)
                {
                  v33 = (*(v11 + 384) + 212);
                }

                log_err("%s:%d: %s spaceman_free(%lld, %lld) failed: %d\n", "omap_reap", 349, v33, v101[2], v29, v31);
              }

              sub_100039564(*(v10 + 392), v9, *(a3 + 1), *(a3 + 2));
              v25 += v29;
              if (v25 >= v89)
              {
                extended = 36;
                goto LABEL_47;
              }

              v99 = 16;
              v100 = 16;
              v12 = v94;
            }
          }

          extended = v28;
          if (v28 == 36)
          {
LABEL_47:
            v8 = v98;
            goto LABEL_59;
          }

          extended = btree_delete(v101[0], a5, 0);
          v8 = v98;
          if (extended)
          {
            if (sub_100038178(v11) != 13)
            {
              v92 = (*(v11 + 384) + 212);
            }

            log_err("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 373, v92, extended);
          }

          *a3 = 2;
LABEL_59:
          sub_100038BA0(v101[0]);
          v21 = *a3;
        }

        if (v21 != 2)
        {
          return extended;
        }

        v34 = *(v8 + 56);
        if (v34)
        {
          v35 = *(v8 + 44);
          v113 = 0u;
          v118 = 0;
          v117 = 0u;
          v116 = 0u;
          v115 = 0u;
          v114 = 0u;
          v112 = omap_snapshot_key_cmp;
          DWORD2(v113) = 19;
          if (v35 == 2)
          {
            extended = btree_get_extended(v11, v35 & 0xFFFF0000, v34, 0, 0, &v112, 0, v101);
            if (!extended)
            {
              extended = btree_delete(v101[0], a5, 0);
              if (extended)
              {
                if (sub_100038178(v11) == 13)
                {
                  v36 = (v11 + 4040);
                }

                else
                {
                  v36 = (*(v11 + 384) + 212);
                }

                log_err("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 390, v36, extended);
              }

              sub_100038BA0(v101[0]);
              goto LABEL_72;
            }
          }

          else
          {
            extended = 22;
          }

          if (sub_100038178(v11) == 13)
          {
            v37 = (v11 + 4040);
          }

          else
          {
            v37 = (*(v11 + 384) + 212);
          }

          log_err("%s:%d: %s failed to get omap snapshot tree for reaping: %d\n", "omap_reap", 386, v37, extended);
        }

LABEL_72:
        sub_10003BB58(a1, a5);
        *a3 = -1;
        return extended;
      }
    }

    extended = 0;
    goto LABEL_25;
  }

  v110 = 0;
  v111 = 0xAAAAAAAAAAAAAAAALL;
  v109 = 0;
  memset(v108, 170, sizeof(v108));
  memset(v107, 170, sizeof(v107));
  memset(v106, 170, sizeof(v106));
  v105 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v104[2] = v15;
  v104[3] = v15;
  v104[0] = v15;
  v104[1] = v15;
  v102 = 0xAAAAAAAAAAAAAAAALL;
  v103 = 0xAAAAAAAAAAAAAAAALL;
  sub_100010AB8(v11, 0, &v103, &v102, 0, 0);
  if (v102 >= 0x7D1)
  {
    v16 = 1024;
  }

  else
  {
    v16 = 102;
  }

  if (v102 >= 0x3E9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 51;
  }

  sub_10003D8A4(a1, 2);
  v18 = *(a1 + 96);
  if (v18)
  {
      ;
    }
  }

  v97 = v17;
  *(a1 + 96) = v18 | 1;
  v19 = sub_10008C094(v11, a1, a5);
  if (v19)
  {
    LODWORD(extended) = v19;
    if (sub_100038178(v11) == 13)
    {
      v20 = (v11 + 4040);
    }

    else
    {
      v20 = (*(v11 + 384) + 212);
    }

    log_err("%s:%d: %s error modifying omap: %d\n", "omap_cleanup", 1431, v20, extended);
    if (extended == 28)
    {
      extended = 36;
    }

    else
    {
      extended = extended;
    }

    goto LABEL_75;
  }

  v24 = omap_map_tree_get(v11, a1, 1, a5, &v109);
  if (v24)
  {
    extended = v24;
    sub_100038178(v11);
    log_err("%s:%d: %s error getting mapping tree: %d\n");
    goto LABEL_75;
  }

  if (*a3)
  {
    v38 = 0;
  }

  else
  {
    sub_10003DE58(a1, 2);
    v108[0] = 0uLL;
    v106[0] = 0x1000000010;
    bt_iterator_init_with_hint(v104, v109, 0, 0, v108, 16, 16, v107, 0x10u, 0);
    v38 = 0;
    if (!bt_iterator_ended(v104))
    {
      v38 = 0;
      v91 = v12 - 1;
      v96 = v12;
      do
      {
        if (*&v108[0] >= *(v8 + 88))
        {
          break;
        }

        v60 = bt_remove(v109, 0, v108, 0x10u, a5);
        if (v60)
        {
          v61 = v60;
          if (sub_100038178(v11) == 13)
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (v11 + 4040), *&v108[0], *(&v108[0] + 1), v61);
          }

          else
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (*(v11 + 384) + 212), *&v108[0], *(&v108[0] + 1), v61);
          }
        }

        if ((v107[0] & 1) == 0)
        {
          v62 = (v91 + DWORD1(v107[0])) / v96;
          v63 = sub_100018614(v11, 64, *(&v107[0] + 1), v62, a5);
          if (v63)
          {
            v64 = v63;
            v65 = sub_100038178(v11);
            v66 = (v11 + 4040);
            if (v65 != 13)
            {
              v66 = (*(v11 + 384) + 212);
            }

            log_err("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1463, v66, *(&v107[0] + 1), v62, v64);
          }

          sub_100039564(*(v10 + 392), v9, *&v108[0], *(&v108[0] + 1));
        }

        v12 = v96;
        if (v97 == v38)
        {
LABEL_190:
          sub_10003D8A4(a1, 2);
          extended = 36;
          goto LABEL_75;
        }

        ++v38;
        bt_iterator_next(v104);
      }

      while (!bt_iterator_ended(v104));
    }

    sub_10003D8A4(a1, 2);
  }

  v40 = *(v8 + 56);
  if (!v40)
  {
    goto LABEL_210;
  }

  v93 = v38;
  v95 = v12;
  if (*a3 && *(a3 + 4) != -1)
  {
    goto LABEL_85;
  }

  v57 = *(v8 + 44);
  v113 = 0u;
  v118 = 0;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v112 = omap_snapshot_key_cmp;
  DWORD2(v113) = 19;
  if (v57 != 2)
  {
    extended = 22;
    goto LABEL_147;
  }

  extended = btree_get_extended(v11, v57 & 0xFFFF0000, v40, 0, 0, &v112, a5, &v110);
  if (extended)
  {
LABEL_147:
    sub_100038178(v11);
    log_err("%s:%d: %s unable to get snapshot tree: %d\n");
    goto LABEL_75;
  }

  if (!*a3)
  {
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    v74 = a3 + 4;
    v111 = 0;
    v106[0] = 0x800000010;
    bt_iterator_init_with_hint(v104, v110, 0, 0, &v111, 8, 8, &v108[1], 0x10u, 0);
    while (!bt_iterator_ended(v104))
    {
      v75 = v108[1];
      v76 = *v74;
      if (v108[1])
      {
        if (v76)
        {
          if (((a3[1] ^ LODWORD(v108[1])) & 2) != 0)
          {
            break;
          }

          *(a3 + 3) = v111;
        }

        else
        {
          v77 = v111;
          *(a3 + 2) = v111;
          *(a3 + 3) = v77;
          a3[1] = v75;
        }
      }

      else if (v76)
      {
        goto LABEL_205;
      }

      bt_iterator_next(v104);
    }

    v76 = *v74;
    if (*v74)
    {
LABEL_205:
      *(a3 + 1) = v76;
      v106[0] = 0x800000010;
      v78 = bt_lookup_variant(v110, 0, a3 + 1, v106 + 1, 8, &v108[1], v106, 2, 0, 0);
      if (v78)
      {
        extended = v78;
        if (v78 != 2)
        {
          goto LABEL_223;
        }

        *(a3 + 1) = 0;
      }

      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      if (sub_100038178(v11) == 13)
      {
        v79 = (v11 + 4040);
      }

      else
      {
        v79 = (*(v11 + 384) + 212);
      }

      log_debug("%s:%d: %s started cleaning snapshots %lld-%lld\n", "omap_cleanup", 1556, v79, *(a3 + 2), *(a3 + 3));
      a1[60] = *(a3 + 1);
      v59 = *(a3 + 3);
      a1[61] = v59;
      *a3 = 1;
      *(a1 + 96) |= 2u;
      v58 = (a3 + 8);
      goto LABEL_220;
    }

LABEL_210:
    extended = 0;
    goto LABEL_75;
  }

  v58 = (a3 + 8);
  if (*(a3 + 4) != -1)
  {
    goto LABEL_85;
  }

  v59 = *(a3 + 3);
LABEL_220:
  *v58 = v59;
  v106[0] = 0x800000010;
  v81 = bt_lookup_variant(v110, 0, v58, v106 + 1, 8, &v108[1], v106, 4, 0, 0);
  if (v81)
  {
    extended = v81;
    if (v81 == 2)
    {
      *v58 = -1;
      goto LABEL_85;
    }

LABEL_223:
    sub_100038178(v11);
    log_err("%s:%d: %s error searching snapshot tree: %d\n");
    goto LABEL_75;
  }

LABEL_85:
  if (v110)
  {
    sub_100038BA0(v110);
    v110 = 0;
  }

  v88 = a3[1];
  v85 = *(a3 + 3);
  v86 = *(a3 + 1);
  v84 = *(a3 + 4);
  v108[0] = *(a3 + 10);
  v106[0] = 0x1000000010;
  v41 = bt_lookup_variant(v109, 0, v108, v106 + 1, 16, v107, v106, 3, 0, 0);
  if (v41)
  {
    extended = v41;
    if (v41 != 2)
    {
      goto LABEL_75;
    }

    *&v108[0] = 0;
  }

  sub_10003DE58(a1, 2);
  v42 = *&v108[0];
  if (!*&v108[0])
  {
    sub_10003D8A4(a1, 2);
    goto LABEL_167;
  }

  v43 = 0;
  v90 = 0;
  v83 = (v11 + 4040);
  do
  {
    v44 = v43;
    if (v42 != v90)
    {
      if (v93 >= v97)
      {
        *(a3 + 10) = v108[0];
        goto LABEL_190;
      }

      v44 = 0;
    }

    v90 = v42;
    v107[1] = v108[0];
    v106[0] = 0x1000000010;
    v45 = bt_lookup_variant(v109, 0, &v107[1], v106 + 1, 16, &v106[1], v106, 4, 0, 0);
    if (v45)
    {
      extended = v45;
      if (v45 != 2)
      {
        if (sub_100038178(v11) != 13)
        {
          v83 = (*(v11 + 384) + 212);
        }

        log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1653, v83, extended);
        *(a3 + 10) = v108[0];
        sub_10003D8A4(a1, 2);
        goto LABEL_75;
      }

      *&v107[1] = 0;
    }

    v43 = (v44 + 1);
    if (*(&v108[0] + 1) <= v86 || *(&v108[0] + 1) > v85)
    {
      if ((v88 & 2) == 0 || *&v107[1] != *&v108[0])
      {
        extended = 0;
        v47 = 0;
        goto LABEL_126;
      }

      extended = 0;
      if (*(&v107[1] + 1) > v86 && *(&v107[1] + 1) <= v84)
      {
        extended = 0;
        v47 = v106[1] & 1;
        goto LABEL_126;
      }

LABEL_115:
      v47 = 0;
      goto LABEL_126;
    }

    if ((v88 & 2) == 0)
    {
      extended = 0;
      if (*&v107[1] != *&v108[0])
      {
        goto LABEL_115;
      }

      v47 = 0;
      if (*(&v107[1] + 1) > v84)
      {
        goto LABEL_126;
      }
    }

    v48 = bt_remove(v109, 0, v108, 0x10u, a5);
    if (v48)
    {
      v49 = v48;
      if (sub_100038178(v11) == 13)
      {
        log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, v83, *&v108[0], *(&v108[0] + 1), v49);
      }

      else
      {
        log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, (*(v11 + 384) + 212), *&v108[0], *(&v108[0] + 1), v49);
      }
    }

    v50 = (v95 - 1 + DWORD1(v107[0])) / v95;
    extended = sub_100018614(v11, 64, *(&v107[0] + 1), v50, a5);
    if (extended)
    {
      v51 = sub_100038178(v11);
      v52 = (v11 + 4040);
      if (v51 != 13)
      {
        v52 = (*(v11 + 384) + 212);
      }

      log_err("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1683, v52, *(&v107[0] + 1), v50, extended);
    }

    if ((v88 & 2) == 0)
    {
      sub_100039564(*(v10 + 392), v9, *&v108[0], *(&v108[0] + 1));
    }

    v53 = (v88 >> 1) & 1;
    if (!v44)
    {
      LOBYTE(v53) = 1;
    }

    v47 = (LOBYTE(v106[1]) & v53);
    v43 = v44;
LABEL_126:
    if (v106[1])
    {
      if (v47)
      {
        v54 = bt_remove(v109, 0, &v107[1], 0x10u, a5);
        if (v54)
        {
          v55 = v54;
          if (sub_100038178(v11) == 13)
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, v83, *&v107[1], *(&v107[1] + 1), v55);
          }

          else
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, (*(v11 + 384) + 212), *&v107[1], *(&v107[1] + 1), v55);
          }
        }
      }

      v106[0] = 0x1000000010;
      v56 = bt_lookup_variant(v109, 0, &v107[1], v106 + 1, 16, &v106[1], v106, 4, 0, 0);
      extended = v56;
      if (v56)
      {
        if (v56 == 2)
        {
          extended = 0;
          *&v107[1] = 0;
        }

        else if (sub_100038178(v11) == 13)
        {
          log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, v83, extended);
        }

        else
        {
          log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, (*(v11 + 384) + 212), extended);
        }
      }
    }

    ++v93;
    v108[0] = v107[1];
    v107[0] = *&v106[1];
    v42 = *&v107[1];
  }

  while (*&v107[1]);
  sub_10003D8A4(a1, 2);
  if (extended)
  {
    goto LABEL_75;
  }

LABEL_167:
  v67 = *(v8 + 44);
  v68 = *(v8 + 56);
  v113 = 0u;
  v118 = 0;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v112 = omap_snapshot_key_cmp;
  DWORD2(v113) = 19;
  if (v67 != 2)
  {
    extended = 22;
    goto LABEL_147;
  }

  extended = btree_get_extended(v11, v67 & 0xFFFF0000, v68, 0, 1, &v112, a5, &v110);
  if (extended)
  {
    goto LABEL_147;
  }

  if (sub_100039CE0(v110) != *(v8 + 56))
  {
    *(v8 + 56) = sub_100039CE0(v110);
    sub_10003EE48(a1, a5, 0);
  }

  v111 = v86;
  while (1)
  {
    v106[0] = 0x800000010;
    v69 = bt_lookup_variant(v110, 0, &v111, v106 + 1, 8, &v108[1], v106, 4, 0, 0);
    if (v69)
    {
      break;
    }

    v70 = v111;
    if (v111 < v84)
    {
      v71 = bt_remove(v110, 0, &v111, HIDWORD(v106[0]), a5);
      if (v71)
      {
        extended = v71;
        sub_100038178(v11);
        log_err("%s:%d: %s error updating snapshot tree: %d\n");
        goto LABEL_75;
      }

      --*(v8 + 36);
      if (sub_100038178(v11) == 13)
      {
        log_debug("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (v11 + 4040), v111, *(v8 + 36), *(v8 + 64));
      }

      else
      {
        log_debug("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (*(v11 + 384) + 212), v111, *(v8 + 36), *(v8 + 64));
      }

      if ((v88 & 2) != 0)
      {
        v72 = v111;
        if (v111 >= *(v8 + 72))
        {
          v73 = *(v8 + 80);
          if (v111 <= v73)
          {
            *(v8 + 72) = v111;
            if (v72 >= v73)
            {
              *(v8 + 72) = 0;
              *(v8 + 80) = 0;
            }
          }
        }
      }

      sub_10003EE48(a1, a5, 0);
      v70 = v111;
    }

    if (v70 >= v84)
    {
      goto LABEL_212;
    }
  }

  extended = v69;
  if (v69 != 2)
  {
    goto LABEL_223;
  }

LABEL_212:
  if (v9 && (v88 & 2) != 0)
  {
    sub_1000398D8(*(v10 + 392), v9, v86 + 1, v85);
  }

  if (*(v8 + 36))
  {
    v111 = -1;
    v106[0] = 0x800000010;
    v80 = bt_lookup_variant(v110, 0, &v111, v106 + 1, 8, &v108[1], v106, 1, 0, 0);
    if (v80)
    {
      extended = v80;
      goto LABEL_75;
    }

    *(v8 + 64) = v111;
  }

  else
  {
    *(v8 + 64) = 0;
    v82 = btree_delete(v110, a5, 0);
    if (v82)
    {
      extended = v82;
      sub_100038178(v11);
      log_err("%s:%d: %s error deleting empty snapshot tree: %d\n");
      goto LABEL_75;
    }

    *(v8 + 56) = 0;
    sub_10003EE48(a1, a5, 0);
  }

  *a3 = 0;
  *(a1 + 96) &= ~2u;
  a1[60] = 0;
  a1[61] = 0;
  if (*(v8 + 56))
  {
    extended = 36;
  }

  else
  {
    extended = 0;
  }

LABEL_75:
  *(a1 + 96) &= ~1u;
  sub_10003DE58(a1, 2);
  if (v110)
  {
    sub_100038BA0(v110);
  }

  if (v109)
  {
    sub_100038BA0(v109);
  }

  return extended;
}