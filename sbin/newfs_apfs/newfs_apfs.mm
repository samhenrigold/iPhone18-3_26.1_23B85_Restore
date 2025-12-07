uint64_t sub_100000810(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        return ccsha3_384_di();
      }

      if (a1 == 8)
      {
        return ccsha3_512_di();
      }

      return result;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return ccsha3_256_di();
      }

      return result;
    }

    return ccsha512_256_di();
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return ccsha384_di();
    }

    if (a1 == 4)
    {
      return ccsha512_di();
    }

    return result;
  }

  if (a1 == 1)
  {
    return ccsha256_di();
  }

  if (a1 == 2)
  {
    return ccsha512_256_di();
  }

  return result;
}

uint64_t sub_1000008E4(uint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = a2;
  if (a2 && a2 < a3)
  {
    v20 = &v20;
    v11 = 2 * *a1;
    __chkstk_darwin(a1);
    bzero(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    __chkstk_darwin(v12);
    v15 = &v20 - v14;
    if (v16 >= 8)
    {
      memset(&v20 - v14, 170, v13);
    }

    ccdigest_init();
    v17 = 2 * (a2 & 0x7FFFFFFF);
    if (v17 > v7)
    {
      goto LABEL_18;
    }

    do
    {
      ccdigest_parallel();
      ccdigest_update();
      v7 -= v17;
      a4 += v17;
    }

    while (v7 >= v17);
    if (v7)
    {
LABEL_18:
      do
      {
        if (v7 >= v10)
        {
          v18 = v10;
        }

        else
        {
          v18 = v7;
        }

        ccdigest();
        ccdigest_update();
        a4 += v18;
        v7 -= v18;
      }

      while (v7);
    }

    (a1[7])(a1, v15, a5);
    return cc_clear();
  }

  else
  {

    return ccdigest();
  }
}

uint64_t sub_100000B28(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

void *sub_100000B5C(unsigned __int8 *a1, void *a2, unsigned int a3)
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

uint64_t sub_100000BF0(uint64_t a1)
{
  if ((*(a1 + 21) & 4) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    if ((sub_100036628(a1) & 0x8000000) != 0 || (*(a1 + 17) & 2) != 0)
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

    if (*(a1 + 40) == 14)
    {
      v3 = v2 | ((*(*(a1 + 56) + 32) & 8) >> 3);
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_100000C78(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  memset(__s1, 0, sizeof(__s1));
  if (!a2)
  {
    return 22;
  }

  result = sub_100000D8C(a1, __s1, a3, a4);
  if (!result)
  {
    result = memcmp(__s1, a2, a3);
    if (result)
    {
      v11 = -86;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v10[6] = v7;
      v10[7] = v7;
      v10[4] = v7;
      v10[5] = v7;
      v10[2] = v7;
      v10[3] = v7;
      v10[0] = v7;
      v10[1] = v7;
      v9 = -86;
      v8[6] = v7;
      v8[7] = v7;
      v8[4] = v7;
      v8[5] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v8[0] = v7;
      v8[1] = v7;
      sub_100000B5C(a2, v8, a3);
      sub_100000B5C(__s1, v10, a3);
      sub_100012178("%s:%d: hash mismatch! expected: %s, actual: %s\n", "authapfs_validate_node_hash", 204, v8, v10);
      return 80;
    }
  }

  return result;
}

uint64_t sub_100000D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 22;
  if (a2 && (*(*(a1 + 56) + 32) & 8) != 0)
  {
    v6 = a4;
    if (sub_100000F58(a4) || sub_100000FC8(v6) != a3)
    {
      return 22;
    }

    else
    {
      v9 = sub_100000810(v6);
      v11 = v10;
      v12 = sub_10003835C(a1);
      sub_1000008E4(v9, v11, v12, *(a1 + 56), a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100000E2C(void *a1, uint64_t a2)
{
  if (!sub_100000BF0(a1))
  {
    return 0;
  }

  if ((byte_100070000 & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[50];
  if (sub_100001454(v4, a1))
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

  a2 = sub_100000C78(a1, (a2 + 32), HIBYTE(v5) & 0x7F, (v5 >> 44) & 0xFFF);
  if (a2)
  {
    v7 = sub_100038018(a1);
    v8 = sub_100038020(a1);
    v9 = sub_100038018(v4);
    sub_100012178("%s:%d: failed to validate node %p (oid:%llu, xid:%llu) of fs %p (%llu) - %d\n", "authapfs_validate_node", 325, a1, v7, v8, v4, v9, a2);
  }

  return a2;
}

uint64_t sub_100000F58(int a1)
{
  if ((a1 & 0xFFFFFF00) <= 0xF00 && (a1 & 0xFD) != 0 && a1 < 9u)
  {
    return 0;
  }

  sub_100012178("%s:%d: Invalid or unknown hash type: %d\n", "authapfs_valid_hash_type", 31, a1);
  return 22;
}

uint64_t sub_100000FC8(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_100062628[(a1 - 1)];
  }
}

double sub_100000FF4(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  if (!sub_100000F58(*a3))
  {
    *&result = 2;
    *(a1 + 32) = 2;
    *(a1 + 40) = v4;
    *(a1 + 44) = 128;
  }

  return result;
}

uint64_t sub_100001040(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = v2[10];
  v4 = sub_100000FC8(v3);
  if (!v2[8])
  {
    return 92;
  }

  if (v2[11] < 0x30u)
  {
    return 92;
  }

  v5 = v4;
  if (sub_100000F58(v3))
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

uint64_t sub_1000010CC(uint64_t a1, atomic_ullong **a2, int a3)
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
    pthread_mutex_lock((a1 + 1728));
    v9 = *(a1 + 3624);
    if (v9)
    {
      if (a2)
      {
        sub_10003C894(v9);
        *a2 = *(a1 + 3624);
      }

      pthread_mutex_unlock((a1 + 1728));
      return 0;
    }

    v13 = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutex_unlock((a1 + 1728));
    result = sub_10003A1E8(*(v8 + 392), 0, v7, &xmmword_100062618, 0, a1, *(a1 + 440), 0, &v13);
    if (!result)
    {
      v11 = v13;
      pthread_mutex_lock((a1 + 3952));
      v12 = v11[47];
      *(a1 + 4020) = vrev64_s32(v12[4]);
      *(a1 + 4032) = v12[6];
      *(a1 + 4016) = 1;
      pthread_mutex_unlock((a1 + 3952));
      if (a3)
      {
        pthread_mutex_lock((a1 + 1728));
        if (!*(a1 + 3624))
        {
          sub_10003C894(v13);
          *(a1 + 3624) = v13;
        }

        pthread_mutex_unlock((a1 + 1728));
      }

      if (!a2)
      {
        sub_100037058(v13);
        return 0;
      }

      result = 0;
      *a2 = v13;
    }
  }

  else
  {
    v10 = sub_100038018(a1);
    sub_100012178("%s:%d: %s integrity_meta object of fs %llu, oid invalid\n", "authapfs_integrity_meta_get_internal", 169, (a1 + 4040), v10);
    return 2;
  }

  return result;
}

uint64_t sub_100001264(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  if (!a2)
  {
    return 22;
  }

  result = sub_1000010CC(a1, &v8, 0);
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
    sub_100037058(v4);
    return 0;
  }

  return result;
}

uint64_t sub_1000012EC(uint64_t a1, int a2, unint64_t a3, uint64_t *a4)
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

  v9 = sub_10003BC6C(a1, 0, a3);
  if (v9)
  {
    v5 = v9;
    sub_100012178("%s:%d: %s obj_modify failed - %d\n", "authapfs_integrity_meta_create", 427, (a1 + 4040), v9);
  }

  else
  {
    v10 = sub_100038AF0(*(v8 + 392), 0, 0, &xmmword_100062618, &v14, a1, a3, &v13);
    if (v10)
    {
      v5 = v10;
      sub_100012178("%s:%d: %s obj_create failed - %d\n", "authapfs_integrity_meta_create", 440, (a1 + 4040), v10);
    }

    else
    {
      sub_10003D180(v13, a3, 0);
      v11 = sub_100038018(v13);
      if (a4)
      {
        v5 = 0;
        *a4 = v13;
      }

      else
      {
        *(*(a1 + 376) + 1024) = v11;
        sub_100019634(a1, a3);
        sub_100037058(v13);
        return 0;
      }
    }
  }

  return v5;
}

uint64_t sub_100001454(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1728);
  pthread_mutex_lock((a1 + 1728));
  v5 = *(a1 + 3624);
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
    if (*(a1 + 4016) != 1)
    {
LABEL_8:
      LOBYTE(v12) = 0;
      return v12 & 1;
    }

    v4 = (a1 + 3952);
    pthread_mutex_lock((a1 + 3952));
    v7 = (a1 + 4020);
    v8 = (a1 + 4024);
    v9 = (a1 + 4032);
  }

  v10 = *v9;
  v11 = *v8;
  v12 = *v7;
  pthread_mutex_unlock(v4);
  if (a2 && v11 >= 2)
  {
    if (v12)
    {
      LOBYTE(v12) = sub_100038020(a2) >= v10;
      return v12 & 1;
    }

    goto LABEL_8;
  }

  return v12 & 1;
}

uint64_t sub_10000151C(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, int *a6)
{
  v6 = *a2 & 0x7FFFFFFF;
  v7 = *a4 & 0x7FFFFFFF;
  v8 = v6 >= v7;
  v9 = v6 > v7;
  if (!v8)
  {
    v9 = -1;
  }

  *a6 = v9;
  return 0;
}

uint64_t sub_100001544(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t sub_100001558(uint64_t a1, uint64_t a2, char **a3)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8[0] = 5242881;
  v8[1] = a2;
  v5 = sub_1000179E4(a1, 3, 0, v8, a3);
  v6 = v5;
  if (v5)
  {
    sub_100012178("%s:%d: %s Couldn't find snap_meta for xid %llu: %d\n", "fs_lookup_snapshot_metadata_by_xid", 445, (a1 + 4040), a2, v5);
  }

  return v6;
}

uint64_t sub_1000015F8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 392) + 392);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v5 = sub_10003A1E8(v4, 0x40000000uLL, a2, &xmmword_10006A8A8, 0, 0, 0, 0, &v7);
  if (!v5)
  {
    sub_100039E90(v7, a3);
    sub_100037058(v7);
  }

  return v5;
}

uint64_t sub_100001678(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v9 = *(*(a1 + 392) + 392);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003A1E8(v9, 0x40000000uLL, a3, &xmmword_10006A8A8, 0, 0, 0, a4, &v16);
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
        sub_100037058(v16);
        return 45;
      }

      v12 = 1044;
      v13 = 1048;
    }

    v14 = *(v11 + v12);
    v15 = *(v11 + v13);
    sub_100037058(v16);
    if (v15)
    {
      return sub_1000019C8(a1, v14, a2, a4, v15, a5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100001764(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = 0;
  v6 = sub_100014C90(a1, 3, 0, &v9);
  if (v6)
  {
    return v6;
  }

  v7 = sub_10002822C(v9, a2, a3);
  sub_100037058(v9);
  if (!v7)
  {
    pthread_mutex_lock((a1 + 1472));
    *(*(a1 + 376) + 152) = 0;
    sub_100019634(a1, a2);
    pthread_mutex_unlock((a1 + 1472));
  }

  return v7;
}

uint64_t sub_100001804(uint64_t a1)
{
  __dst = 0xAAAAAAAAAAAAAAAALL;
  if (sub_100050564((a1 + 408), 15, 0, &__dst, 8uLL))
  {
    return 66048;
  }

  else
  {
    return __dst;
  }
}

uint64_t sub_100001854(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  v15 = 0;
  v9 = sub_1000030E0;
  if (a3 == 5)
  {
    v10 = 0x20000001FLL;
    v12 = 16;
    v11 = 16;
  }

  else
  {
    if (a3 != 6)
    {
      sub_100012178("%s:%d: %s unsupported tree type: %d\n", "supplemental_tree_get_descriptor", 64, (a1 + 4040), a3);
      return 45;
    }

    v10 = 32;
    v9 = sub_100000B28;
    v11 = 24;
    v12 = 8;
  }

  v16[1] = 0;
  v17 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16[0] = v9;
  v16[2] = v10;
  if (a2 != 2)
  {
    v13 = 22;
    goto LABEL_9;
  }

  v13 = sub_100026978(a1, a2 & 0xFFFF0000, 0, v12, v11, v16, a4, &v15);
  if (v13)
  {
LABEL_9:
    sub_100012178("%s:%d: %s Failed to create supplemental tree (type %d): %d\n", "supplemental_tree_create", 123, (a1 + 4040), a3, v13);
    return v13;
  }

  *a5 = sub_100038018(v15);
  sub_100037058(v15);
  return v13;
}

uint64_t sub_1000019C8(uint64_t a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v9 = a3;
  v11 = sub_1000030E0;
  if (a3 == 5)
  {
    v12 = 0x20000001FLL;
  }

  else
  {
    if (a3 != 6)
    {
      sub_100012178("%s:%d: %s unsupported tree type: %d\n", "supplemental_tree_get_descriptor", 64, (a1 + 4040), a3);
      return 45;
    }

    v12 = 32;
    v11 = sub_100000B28;
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (!a5)
  {
    v13 = sub_100014C90(a1, a3, a4, &v18);
    if (v13)
    {
      return v13;
    }

    goto LABEL_11;
  }

  v19[1] = 0;
  v20 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19[0] = v11;
  v19[2] = v12;
  if (a2 != 2)
  {
    v13 = 22;
    goto LABEL_15;
  }

  v13 = sub_100026D00(a1, a2 & 0xFFFF0000, a5, 0, 0, v19, 0, &v18);
  if (v13)
  {
LABEL_15:
    v16 = strerror(v13);
    sub_100012178("%s:%d: %s Failed to get supplemental tree (type %d, oid %llu): %d (%s)\n", "supplemental_tree_destroy", 159, (a1 + 4040), v9, a5, v13, v16);
    return v13;
  }

LABEL_11:
  v14 = sub_10002822C(v18, a4, a6);
  v13 = v14;
  if (v14)
  {
    v15 = strerror(v14);
    sub_100012178("%s:%d: %s Failed to delete supplemental tree (type %d): %d (%s)\n", "supplemental_tree_destroy", 167, (a1 + 4040), v9, v13, v15);
  }

  sub_100037058(v18);
  return v13;
}

uint64_t sub_100001BD8(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_100001C0C(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t sub_100001C20(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  v5 = *a3;
  a1[4] = a3[2];
  a1[5] = v5;
  a1[6] = 0;
  return result;
}

uint64_t sub_100001C48(uint64_t a1, uint64_t a2)
{
  *(a1 + 376) = *(a1 + 56);
  *(a1 + 408) = 8 * *(a1 + 48) - 256;
  if (a2)
  {
    *(a1 + 384) = *(a2 + 24);
  }

  return 0;
}

uint64_t sub_100001C74(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  v8 = a1[1];
  v9 = *(*a1 + 392);
  if (v8)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = *(*a1 + 392);
  }

  v37 = a1[2];
  v42 = 0;
  if (v8)
  {
    v11 = sub_10003BC6C(v8, 0, a5);
    if (v11)
    {
      v12 = v11;
      if (sub_100036630(v8) == 13)
      {
        v13 = (v8 + 505);
      }

      else
      {
        v13 = (v8[48] + 212);
      }

      v14 = sub_100038018(v8);
      sub_100012178("%s:%d: %s obj_modify(fs %lld) failed: %d\n", "gbitmap_reap", 160, v13, v14, v12);
    }
  }

  v15 = sub_100002008(a1, 0, 0, &v42);
  if (v15)
  {
    v16 = v15;
    if (sub_100036630(v10) == 13)
    {
      v17 = (v10 + 4040);
    }

    else
    {
      v17 = (*(v10 + 384) + 212);
    }

    sub_100012178("%s:%d: %s Can't get tree: %d\n", "gbitmap_reap", 166, v17, v16);
  }

  if (v42)
  {
    v18 = *a3;
    v40 = 0;
    v41 = v18;
    v39 = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38[2] = v19;
    v38[3] = v19;
    v38[0] = v19;
    v38[1] = v19;
    sub_100025EF0(v38, v42, 0, 0, &v41, 8, 8, &v40, 8u);
    v21 = v20;
    v36 = (v10 + 4040);
    v22 = 1023;
    if (v20)
    {
LABEL_31:
      if (v21 != 2)
      {
        if (sub_100036630(v10) == 13)
        {
          sub_100012178("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, v36, v21, v41);
        }

        else
        {
          sub_100012178("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, (*(v10 + 384) + 212), v21, v41);
        }
      }
    }

    else
    {
      while (!sub_100025F1C(v38))
      {
        if ((v37 & 0x40000000) != 0 && (v23 = v40, v40 < 0))
        {
          v40 &= ~0x8000000000000000;
          sub_10004A66C(v10, 64, v23 & 0x7FFFFFFFFFFFFFFFLL, 1, a5);
        }

        else
        {
          v24 = *(a1 + 4);
          if (v8)
          {
            v25 = sub_100038018(v8);
          }

          else
          {
            v25 = 0;
          }

          v26 = *(v9 + 392);
          v27 = v24 & 0xD8000000 | 0x1B;
          v28 = sub_10003835C(a1);
          v29 = sub_100039EE8(v26, v27, v28, v25, v40, a5);
          if (v29)
          {
            v30 = v29;
            if (sub_100036630(v10) == 13)
            {
              sub_100012178("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, v36, v30, v41, v40, v27);
            }

            else
            {
              sub_100012178("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, (*(v10 + 384) + 212), v30, v41, v40, v27);
            }
          }
        }

        *a3 = v41 + 1;
        if (!v22)
        {
          v31 = 36;
          goto LABEL_41;
        }

        v21 = sub_100025F38(v38);
        --v22;
        if (v21)
        {
          goto LABEL_31;
        }
      }
    }

    v32 = sub_10002822C(v42, a5, 0);
    if (v32)
    {
      v33 = v32;
      if (sub_100036630(v10) != 13)
      {
        v36 = (*(v10 + 384) + 212);
      }

      v34 = sub_100038018(v42);
      sub_100012178("%s:%d: %s Tree delete oid %llu threw %d\n", "gbitmap_reap", 208, v36, v34, v33);
    }
  }

  sub_100039E90(a1, a5);
  v31 = 0;
LABEL_41:
  if (v42)
  {
    sub_100037058(v42);
  }

  return v31;
}

uint64_t sub_100002008(void *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (a1[1])
  {
    v8 = a1[1];
  }

  else
  {
    v8 = *(*a1 + 392);
  }

  *a4 = 0;
  v9 = sub_100038354(a1);
  return sub_100026FF8(v8, v9 & 0xFFFFFC00, *(a1[47] + 32), a2, 3, a3 != 0, 26, sub_100001BD8, a3, a4);
}

void sub_1000020A0()
{
  if (!off_100070150)
  {
    cpu_capabilities = _get_cpu_capabilities();
    v1 = sub_10000216C;
    if ((cpu_capabilities & 0x4000000) == 0)
    {
      v2 = off_100070150;
      if (off_100070150)
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

        dword_100070168[v2++] = v3;
        v1 = sub_100002140;
      }

      while (v2 != 256);
    }

    off_100070150 = v1;
  }
}

uint64_t sub_100002140(uint64_t result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    result = dword_100070168[(v3 ^ result)] ^ (result >> 8);
  }

  return result;
}

uint64_t sub_10000216C(uint64_t result, unsigned __int16 *a2, unint64_t a3)
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

uint64_t sub_100002214(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t a5)
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
    v9 = sub_100002374(&v19, v7, v6, v22, &v18, &v17, &v16, v21, v20, &v14, &v13, &v15);
    if (v9)
    {
      break;
    }

    v10 = v14;
    if (v14 >= 1)
    {
      if (v13 == 1)
      {
        sub_100002B4C(v21, v20, v14);
      }

      a4(v21, 4 * v10, a5);
    }
  }

  while (v19 < v7 || v17 > 0);
  return v9;
}

uint64_t sub_100002374(unsigned __int8 **a1, unint64_t a2, int a3, int *a4, uint64_t a5, int *a6, int *a7, uint64_t a8, uint64_t a9, int *a10, _BYTE *a11, _BYTE *a12)
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
            if ((v38 ^ 0x80u) > 0x3F || (v28 = v39 | (v34 << 6), v28 < dword_100062690[v33]))
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

        v41 = word_1000626A0[v40 >> 8];
        if (!word_1000626A0[v40 >> 8])
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

        v50 = word_10006521C[16 * (v41 & 0xFFF) + (v40 >> 4)];
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
          if ((word_100062CEC[v50] >> (v40 & 0xF)))
          {
            goto LABEL_144;
          }

          *a4 = v28;
          v42 = 1;
          if (v28 <= 0x4FF && (a3 & 1) == 0)
          {
            *a4 = word_10006653C[v28];
          }

          goto LABEL_56;
        }

        if ((v50 & 0xFF00) == 0xAD00)
        {
          goto LABEL_75;
        }

        if (v50 == 44032 || (v52 = word_100066F3C[16 * (v50 & 0xFFF) + (v40 & 0xF)], v52 == 44032))
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
              v28 = word_10006653C[v51];
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
            v55 = &unk_100063A16 + 6 * (v52 & 0x7FF);
            v42 = 3;
          }

          else
          {
            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_100062E02 + 4 * (v52 & 0x7FF);
            v42 = 2;
          }
        }

        else
        {
          if (v53 == 2)
          {
            v70 = 0;
            v58 = (&unk_100063F4A + 2 * (v52 & 0x3FF));
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
            v56 = (&unk_100064FC0 + 4 * (v52 & 0x3FF));
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
          v70 = (&unk_1000640D8 + 4 * (v52 & 0x7FF));
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
            v63 = sub_100003018(v61);
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
            *a4 = word_10006653C[v64];
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

uint64_t sub_100002B4C(uint64_t result, uint64_t a2, unsigned int a3)
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

uint64_t sub_100002BC0(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5, BOOL *a6)
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
    result = sub_100002374(&v34, v7, a5, __b, &v43, &v32 + 1, &v31 + 1, __s1, &v36, &v28, &v26 + 1, &v30);
    if (result)
    {
      return result;
    }

    result = sub_100002374(&v33, v8, a5, &v44, &v42, &v32, &v31, __s2, v35, &v27, &v26, &v29);
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
        sub_100002B4C(__s1, &v36, v28);
      }

      if (v26 == 1)
      {
        sub_100002B4C(__s2, v35, v13);
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
          memset_pattern16(__b, &unk_10006A740, 4 * v17);
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
          memset_pattern16(&v44, &unk_10006A740, 4 * v22);
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

uint64_t sub_100003018(int a1)
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

  LOWORD(v3) = word_1000626A0[v2 >> 8];
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

  v3 = word_10006521C[16 * (v3 & 0xFFF) + (v2 >> 4)];
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

  v5 = word_100066F3C[16 * (v3 & 0xFFF) + (v2 & 0xF)];
  if ((v5 & 0xFF00) == 0xAD00)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000030E0(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_10000313C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 48) & 0xFE;
  v8 = *(a4 + 8);
  v5 = *(a4 + 24);
  v7[0] = *(a4 + 40) | (v4 << 56);
  v7[1] = v5;
  return sub_10001D908(a1, a3, &v8, 16, v7, 0x10u, a2);
}

uint64_t sub_100003198(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_100014C90(a1, 5, a2, &v8);
  if (!v6)
  {
    v6 = sub_10000313C(v8, a2, *(a1 + 440), a3);
    sub_100037058(v8);
  }

  return v6;
}

uint64_t sub_100003214(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = a3;
  v9[1] = a4;
  v6 = sub_100014C90(a1, 5, a2, &v8);
  if (!v6)
  {
    v6 = sub_100025094(v8, *(a1 + 440), v9, 0x10u, a2);
    sub_100037058(v8);
  }

  return v6;
}

uint64_t sub_100003294(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, _OWORD *a6, int a7, uint64_t (*a8)(__int128 *, uint64_t), uint64_t a9)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[2] = v14;
  v25[3] = v14;
  v25[0] = v14;
  v25[1] = v14;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v29 = a4;
  v30 = a5;
  v15 = sub_100014C9C(a1, 5, a2, a3, &v24);
  if (!v15)
  {
    sub_100025DA4(v25, v24, a3, a7, &v29, 16, 16, &v27, 0x10u, a6);
    if (v16 != 2)
    {
      v15 = v16;
      if (v16)
      {
LABEL_13:
        sub_100037058(v24);
        return v15;
      }

      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      while (!sub_100025F1C(v25) && (!a4 || v29 == a4))
      {
        LODWORD(v20) = 3670280;
        *(&v20 + 1) = v29;
        *&v21 = v30;
        *&v22 = 0;
        *(&v22 + 1) = v27 & 0xFFFFFFFFFFFFFFLL;
        *(&v21 + 1) = v28;
        LOBYTE(v23) = HIBYTE(v27);
        v17 = a8(&v20, a9);
        if (v17)
        {
          v15 = v17;
          goto LABEL_13;
        }

        v18 = sub_100025F38(v25);
        if ((a7 & 0x40000) == 0)
        {
          v15 = v18;
          if (v18)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v15 = 0;
    goto LABEL_13;
  }

  return v15;
}

uint64_t sub_1000033FC(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10000E064(a1);
    sub_1000121C8(v1, "%s:%d: %s Container corruption detected by %s:%u!\n");
  }

  else
  {
    v2 = sub_10000E064(0);
    sub_1000121C8(v2, "%s:%d: Container corruption detected by %s:%u!\n");
  }

  return 92;
}

unint64_t sub_100003490(void *a1, int a2, int8x16_t a3, int8x16_t a4)
{
  result = sub_10001C718(a1, (a1 + 1), (a2 - 8), 0, a3, a4);
  if (result)
  {
    sub_100012178("%s:%d: failed: cksum 0x%016llx, oid 0x%llx, type 0x%x/0x%x, size %d\n", "obj_checksum_verify_phys", 52, *a1, a1[1], *(a1 + 6), *(a1 + 7), a2);
    v7 = sub_10000E064(0);
    sub_1000121C8(v7, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "obj_checksum_verify_phys", 54);
    return 92;
  }

  return result;
}

uint64_t sub_100003530(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
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

unint64_t sub_100003584(uint64_t a1, unsigned int a2, int a3, int8x16_t a4, int8x16_t a5)
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
    result = sub_100003490(a1, a2, a4, a5);
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
      v35 = sub_10000E064(0);
      sub_1000121C8(v35, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "nx_check_superblock", v31);
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

uint64_t start(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v5;
  v59 = v5;
  v57[29] = v5;
  v57[30] = v5;
  v57[27] = v5;
  v57[28] = v5;
  v57[25] = v5;
  v57[26] = v5;
  v57[23] = v5;
  v57[24] = v5;
  v57[21] = v5;
  v57[22] = v5;
  v57[19] = v5;
  v57[20] = v5;
  v57[17] = v5;
  v57[18] = v5;
  v57[15] = v5;
  v57[16] = v5;
  v57[13] = v5;
  v57[14] = v5;
  v57[11] = v5;
  v57[12] = v5;
  v57[9] = v5;
  v57[10] = v5;
  v57[7] = v5;
  v57[8] = v5;
  v57[5] = v5;
  v57[6] = v5;
  v57[3] = v5;
  v57[4] = v5;
  v57[1] = v5;
  v57[2] = v5;
  outputStruct = -1431655766;
  v56[16] = v5;
  v57[0] = v5;
  v56[14] = v5;
  v56[15] = v5;
  v56[12] = v5;
  v56[13] = v5;
  v56[10] = v5;
  v56[11] = v5;
  v56[8] = v5;
  v56[9] = v5;
  v56[6] = v5;
  v56[7] = v5;
  v56[4] = v5;
  v56[5] = v5;
  v56[2] = v5;
  v56[3] = v5;
  v56[0] = v5;
  v56[1] = v5;
  memset(__b, 170, sizeof(__b));
  memset(v54, 170, sizeof(v54));
  v6 = 1;
  __strlcpy_chk();
  sub_100004C58(0, out);
  sub_100004E5C(0, v57);
  __strlcpy_chk();
  err_set_exit(sub_1000045F0);
  v48 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (2)
  {
    v11 = getopt(v4, v3, ":b:ieo:q:r:s:v:wACDWEG:PR:S:U:Txca");
    switch(v11)
    {
      case '?':
        sub_100051F5C();
      case '@':
      case 'B':
      case 'F':
      case 'H':
      case 'I':
      case 'J':
      case 'K':
      case 'L':
      case 'M':
      case 'N':
      case 'O':
      case 'Q':
      case 'V':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'd':
      case 'f':
      case 'g':
      case 'h':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
      case 'n':
      case 'p':
      case 't':
      case 'u':
        continue;
      case 'A':
        v48 = 1;
        v9 = 1;
        continue;
      case 'C':
        v7 = 1;
        v8 = 1;
        continue;
      case 'D':
        v9 = 1;
        v6 = 1;
        continue;
      case 'E':
      case 'P':
        v12 = "encrypted";
        goto LABEL_27;
      case 'G':
        snprintf(v56, 0x110uLL, "gid=%s", optarg);
        v9 = 1;
        if (sub_100004E5C(v56, v57))
        {
          sub_100051F8C();
        }

        continue;
      case 'R':
        snprintf(v56, 0x110uLL, "role=%s", optarg);
        v9 = 1;
        if (sub_100004E5C(v56, v57))
        {
          sub_100051F8C();
        }

        continue;
      case 'S':
        snprintf(v56, 0x110uLL, "password=%s", optarg);
        if (!*optarg || (v9 = 1, sub_100004E5C(v56, v57)))
        {
          sub_100051F8C();
        }

        continue;
      case 'T':
        v6 = 0;
        continue;
      case 'U':
        snprintf(v56, 0x110uLL, "uid=%s", optarg);
        v9 = 1;
        if (sub_100004E5C(v56, v57))
        {
          sub_100051F8C();
        }

        continue;
      case 'W':
        v12 = "empty_password";
        goto LABEL_27;
      case 'a':
        v10 |= 0x100u;
        continue;
      case 'b':
        snprintf(v56, 0x110uLL, "blocksize=%s", optarg);
        v8 = 1;
        if (sub_100004C58(v56, out))
        {
          sub_100051F8C();
        }

        continue;
      case 'c':
        v10 |= 0x80u;
        continue;
      case 'e':
        v12 = "case=sensitive";
        goto LABEL_27;
      case 'i':
        v12 = "case=insensitive";
LABEL_27:
        sub_100004E5C(v12, v57);
        v9 = 1;
        continue;
      case 'o':
        if (sub_100005818(optarg, sub_100004C58, out, sub_100004E5C, v57))
        {
          errx(64, "unrecognized option '%s'");
        }

        continue;
      case 'q':
        snprintf(v56, 0x110uLL, "fsquota=%s", optarg);
        v9 = 1;
        if (sub_100004E5C(v56, v57))
        {
          sub_100051F8C();
        }

        continue;
      case 'r':
        snprintf(v56, 0x110uLL, "fsreserve=%s", optarg);
        v9 = 1;
        if (sub_100004E5C(v56, v57))
        {
          sub_100051F8C();
        }

        continue;
      case 's':
        snprintf(v56, 0x110uLL, "fssize=%s", optarg);
        v9 = 1;
        if (sub_100004E5C(v56, v57))
        {
          sub_100051F8C();
        }

        continue;
      case 'v':
        snprintf(v56, 0x110uLL, "volname=%s", optarg);
        v9 = 1;
        if (sub_100004E5C(v56, v57))
        {
          sub_100051F8C();
        }

        continue;
      case 'w':
        v10 |= 0x10u;
        continue;
      case 'x':
        v10 |= 0x20u;
        continue;
      default:
        if (v11 != -1)
        {
          if (v11 == 58)
          {
            sub_100051F2C();
          }

          continue;
        }

        if (BYTE4(v57[3]))
        {
          if (WORD3(v57[3]) > 0xFFu)
          {
            if (WORD3(v57[3]) == 256 || WORD3(v57[3]) == 704 || WORD3(v57[3]) == 640)
            {
LABEL_44:
              errx(73, "Can't create an encrypted volume with special role 0x%x", WORD3(v57[3]));
            }
          }

          else if (WORD3(v57[3]) <= 0x20u && ((1 << SBYTE6(v57[3])) & 0x100010110) != 0)
          {
            goto LABEL_44;
          }
        }

        if ((v6 & 1) != 0 && sub_100004E5C("uuid_from_role", v57))
        {
          errx(64, "Could not set uuid from role 0x%x, error %s");
        }

        if ((v10 & 0xA0) == 0x80)
        {
          sub_100052158();
        }

        v13 = v48;
        if (v4 - optind != 1)
        {
          if (v4 == optind)
          {
            errx(64, "missing argument", v47);
          }

          errx(64, "unexpected argument");
        }

        if (v48 & v7)
        {
          sub_10005213C();
        }

        if (*&v57[1] && *(&v57[1] + 1) && *&v57[1] > *(&v57[1] + 1))
        {
          sub_100052120();
        }

        sub_10002F8B8(v3[optind], __b, v54, 0x400uLL, 0);
        if ((v48 & 1) == 0)
        {
          if (__b[0] ^ 0x7665642F | LOBYTE(__b[1]) ^ 0x2F)
          {
            v16 = __b;
          }

          else
          {
            v16 = &__b[1] + 1;
          }

          v17 = IOBSDNameMatching(kIOMainPortDefault, 0, v16);
          MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v17);
          if (MatchingService)
          {
            v19 = MatchingService;
            parent[0] = -1431655766;
            if (IOObjectConformsTo(MatchingService, "AppleAPFSVolume") && !IORegistryEntryGetParentEntry(v19, "IOService", parent))
            {
              v43 = IOObjectConformsTo(parent[0], "AppleAPFSContainer");
              v15 = parent[0];
              if (v43)
              {
                v44 = sub_10002FBCC(__b, 0);
                outputStruct = v44;
                IOObjectRelease(v19);
                if (v15)
                {
                  v13 = v48;
                  if (v7)
                  {
                    sub_100051FE8();
                  }

                  LODWORD(outputStructCnt) = v44;
                  connect = -1431655766;
                  v45 = IOServiceOpen(v15, mach_task_self_, 0, &connect);
                  if (!v45)
                  {
                    *parent = 0;
                    v45 = IOConnectCallStructMethod(connect, 1u, &outputStructCnt, 4uLL, 0, parent);
                    IOServiceClose(connect);
                  }

                  v46 = sub_1000049F0(v45);
                  if (v46)
                  {
                    if (v46 == 16)
                    {
                      sub_100051FBC(__b);
                    }

                    errc(66, v46, "unable to reformat %s", __b);
                  }

                  if (v8)
                  {
                    warnx("some non-applicable container options were ignored");
                  }

                  LODWORD(v57[3]) = v44;
                  v28 = 1;
                  goto LABEL_79;
                }

                goto LABEL_69;
              }

              IOObjectRelease(parent[0]);
            }

            IOObjectRelease(v19);
          }

LABEL_69:
          if (__b[0] ^ 0x7665642F | LOBYTE(__b[1]) ^ 0x2F)
          {
            v20 = __b;
          }

          else
          {
            v20 = &__b[1] + 1;
          }

          v21 = IOBSDNameMatching(kIOMainPortDefault, 0, v20);
          v22 = IOServiceGetMatchingService(kIOMainPortDefault, v21);
          v13 = v48;
          if (v22)
          {
            v23 = v22;
            if (IOObjectConformsTo(v22, "AppleAPFSMedia"))
            {
              sub_100052004(v23);
            }

            v24 = IOObjectConformsTo(v23, "AppleAPFSVolume");
            IOObjectRelease(v23);
            if (v24)
            {
              sub_100052030(__b, v25);
            }
          }

          v26 = open(__b, 0);
          if (v26 == -1)
          {
            if (*__error() == 16)
            {
              sub_100051FBC(__b);
            }

            err(66, "unable to open %s", __b);
          }

          close(v26);
          sub_100004860(v54);
          v27 = sub_100034868(v54, out, 0, &v50);
          if (v27)
          {
            errc(73, v27, "unable to format %s", __b);
          }

          sub_100034568(v50);
          v15 = 0;
          if ((v7 & 1) == 0)
          {
            goto LABEL_78;
          }

LABEL_60:
          if (v9)
          {
            warnx("some non-applicable volume options were ignored");
          }

          return 0;
        }

        v14 = sub_100004608(__b, 0);
        if (!v14)
        {
          errx(66, "%s is not an APFS container", __b);
        }

        v15 = v14;
        if (v8)
        {
          warnx("some non-applicable container options were ignored");
          if (v7)
          {
            goto LABEL_60;
          }
        }

        else if (v7)
        {
          goto LABEL_60;
        }

LABEL_78:
        v28 = 0;
LABEL_79:
        if (WORD3(v57[3]) == 256)
        {
          *parent = 0;
          getppid();
          if (!csops())
          {
            goto LABEL_146;
          }

          if (*__error() != 34)
          {
            sub_100052050();
          }

          v29 = malloc_type_calloc(1uLL, bswap32(parent[1]), 0x711C91D2uLL);
          if (!v29)
          {
            sub_1000520DC();
          }

          v30 = v29;
          if (csops())
          {
            sub_10005206C();
          }

          if (*v30 == 1903288058)
          {
            v31 = bswap32(*(v30 + 1));
            if (v31 > 8)
            {
              v32 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v30 + 8, v31 - 8, kCFAllocatorDefault);
              if (!v32)
              {
                sub_1000520C0();
              }

              v33 = CFPropertyListCreateWithData(kCFAllocatorDefault, v32, 0, 0, 0);
              if (!v33 || (v34 = v33, v35 = CFGetTypeID(v33), v35 != CFDictionaryGetTypeID()))
              {
                sub_1000520A4();
              }

              Value = CFDictionaryGetValue(v34, @"com.apple.private.apfs.xart");
              if (Value)
              {
                v37 = Value;
                v38 = CFGetTypeID(Value);
                if (v38 != CFBooleanGetTypeID())
                {
                  sub_100052088();
                }

                v39 = CFBooleanGetValue(v37);
                CFRelease(v34);
                free(v30);
                if (v39)
                {
                  goto LABEL_92;
                }

LABEL_146:
                sub_1000520F8(&v57[3] + 3);
              }

              CFRelease(v34);
            }
          }

          free(v30);
          goto LABEL_146;
        }

LABEL_92:
        if (v15 || (v15 = sub_100004608(__b, 1u)) != 0)
        {
          connect = -1431655766;
          memset(&parent[124], 170, 0x788uLL);
          v40 = IOServiceOpen(v15, mach_task_self_, 0, &connect);
          if (!v40)
          {
            outputStructCnt = 4;
            memcpy(parent, v57, 0x1F0uLL);
            parent[124] = v10;
            v40 = IOConnectCallStructMethod(connect, 0, parent, 0x1F8uLL, &outputStruct, &outputStructCnt);
            IOServiceClose(connect);
          }

          v41 = sub_1000049F0(v40);
          IOObjectRelease(v15);
        }

        else
        {
          if ((v13 | v28) & 1) != 0 || (BYTE4(v57[3]))
          {
            errx(69, "container not published on %s", __b);
          }

          *parent = 0xAAAAAAAAAAAAAAAALL;
          outputStructCnt = 0xAAAAAAAAAAAAAAAALL;
          v41 = sub_1000331A0(__b, 0, parent);
          if (!v41)
          {
            v41 = sub_10001A8AC(*parent, v57, 0, 0, &outputStructCnt);
            if (!v41)
            {
              outputStruct = *(*(outputStructCnt + 376) + 36);
              sub_100037058(outputStructCnt);
            }

            sub_100034568(*parent);
          }
        }

        if (v41)
        {
          if (v28)
          {
            errc(73, v41, "unable to reformat volume %s");
          }

          if ((v48 & 1) == 0)
          {
            sub_100004860(v54);
          }

          errc(73, v41, "unable to format volume inside %s");
        }

        if ((v10 & 0x10) != 0)
        {
          printf("%ss%d\n", __b, outputStruct + 1);
        }

        return 0;
    }
  }
}

void sub_1000045F0(int a1)
{
  if (a1 == 64)
  {
    warnx("[-o options] [-b block-size] [[-s volume-size] | [-r volume-reserve] [-q volume-quota]] [-v volume-name] [-i | -e] [-U uid] [-G gid] [-E [-S passphrase | -W (empty password) ]] [-A | -C] [-R role] [-D] [-w] [-x] [-T] [-c] [-a] device");
  }
}

uint64_t sub_100004608(const char *a1, IOOptionBits a2)
{
  waitTime = 5;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  v5 = IOBSDNameMatching(kIOMainPortDefault, 0, &a1[v4]);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  v14 = MatchingService;
  if (!MatchingService)
  {
    return 0;
  }

  v7 = MatchingService;
  object = -1431655766;
  IOServiceWaitQuiet(MatchingService, &waitTime);
  if (!IOObjectConformsTo(v7, "AppleAPFSMedia"))
  {
    v8 = IOServiceMatching("AppleAPFSMedia");
    if (!IOServiceGetMatchingServices(kIOMainPortDefault, v8, &object) && object != 0)
    {
      IOObjectRelease(object);
      object = 0;
      if ((sub_10002FB18(&v14, "AppleAPFSContainerScheme") & 1) == 0)
      {
        sub_100052174(&v14, a1);
      }

      v10 = sub_10002FB18(&v14, "AppleAPFSMedia");
      v7 = v14;
      if ((v10 & 1) == 0)
      {
        sub_1000521AC(v14, a1);
      }
    }
  }

  if (IORegistryEntryCreateIterator(v7, "IOService", a2, &object))
  {
    i = 0;
  }

  else
  {
    for (i = IOIteratorNext(object); i; i = IOIteratorNext(object))
    {
      if (IOObjectConformsTo(i, "AppleAPFSContainer"))
      {
        break;
      }

      IOObjectRelease(i);
    }

    IOObjectRelease(object);
  }

  IOObjectRelease(v14);
  return i;
}

char *sub_1000047B8(const char *a1)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v2 = getmntinfo(&v7, 2);
  if (v2)
  {
    v3 = v2;
    f_mntfromname = v7->f_mntfromname;
    while (strcmp(a1, f_mntfromname))
    {
      v7 = (f_mntfromname + 1056);
      f_mntfromname += 2168;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    return f_mntfromname - 1024;
  }

  else
  {
LABEL_5:
    v5 = sub_100004608(a1, 1u);
    if (v5)
    {
      IOObjectRelease(v5);
      return "an APFS configuration";
    }

    else
    {
      return "another file system";
    }
  }
}

uint64_t sub_100004860(const char *a1)
{
  v2 = open(a1, 2);
  if (v2 == -1)
  {
    v3 = 1;
    do
    {
      v4 = __error();
      if (v3 == 31 || *v4 != 16)
      {
        err(66, "%s", a1);
      }

      warnx("%s retry %d/30", a1, v3);
      sleep(1u);
      v2 = open(a1, 2);
      ++v3;
    }

    while (v2 == -1);
  }

  v5 = v2;
  v6 = wipefs_alloc();
  if (v6)
  {
    v7 = v6;
    goto LABEL_10;
  }

  v7 = wipefs_wipe();
  wipefs_free();
  if (v7)
  {
LABEL_10:
    warnc(v7, "wipefs");
  }

  return close(v5);
}

uint64_t sub_100004958(uint64_t a1)
{
  v1 = a1;
  iterator = -1431655766;
  sub_100051C60(a1, &unk_100052CF5);
  result = IORegistryEntryGetChildIterator(v1, "IOService", &iterator);
  if (!result)
  {
    v3 = IOIteratorNext(iterator);
    if (v3)
    {
      v4 = v3;
      do
      {
        sub_100051C60(v4, "... ");
        IOObjectRelease(v4);
        v4 = IOIteratorNext(iterator);
      }

      while (v4);
    }

    return IOObjectRelease(iterator);
  }

  return result;
}

uint64_t sub_1000049F0(uint64_t result)
{
  if (result)
  {
    if ((result & 0x3FFF | 0xC000) == result)
    {
      return result & 0x3FFF;
    }

    if (result > -536870186)
    {
      switch(result)
      {
        case 0xE00002D7:
          return 75;
        case 0xE00002D9:
          return 6;
        case 0xE00002E2:
          return 1;
      }
    }

    else
    {
      switch(result)
      {
        case 0xE00002C0:
          return 2;
        case 0xE00002C1:
          return 13;
        case 0xE00002D2:
          return 16;
      }
    }

    return 22;
  }

  return result;
}

uint64_t sub_100004AB4(const __CFString *a1, char *a2)
{

  return CFStringGetCString(a1, a2, 256, 0x8000100u);
}

void sub_100004AD0(uint64_t a1, uint64_t a2, const char *a3)
{

  errc(78, 16, a3);
}

uint64_t sub_100004AE8(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = sub_100001BB8();
  if (snprintf((a1 + 272), 0x20uLL, "%s (%s)", a2, v6) >= 0x20)
  {
    v7 = strlen(v6);
    snprintf((a1 - v7 + 300), v7 + 4, " (%s)", v6);
  }

  result = sub_100031B28();
  *(a1 + 304) = result;
  *(a1 + 312) = a3;
  return result;
}

unint64_t sub_100004B78(char *a1)
{
  __endptr = 0xAAAAAAAAAAAAAAAALL;
  result = strtoull(a1, &__endptr, 10);
  v3 = __endptr;
  v4 = *__endptr;
  if (v4 > 0x66)
  {
    if (*__endptr <= 0x6Cu)
    {
      if (v4 != 103)
      {
        if (v4 != 107)
        {
          goto LABEL_19;
        }

LABEL_9:
        result <<= 10;
LABEL_18:
        v3 = __endptr + 1;
        goto LABEL_19;
      }

LABEL_16:
      result <<= 30;
      goto LABEL_18;
    }

    if (v4 != 109)
    {
      if (v4 != 116)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_17:
    result <<= 20;
    goto LABEL_18;
  }

  if (*__endptr <= 0x4Cu)
  {
    if (v4 != 71)
    {
      if (v4 != 75)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v4 == 77)
  {
    goto LABEL_17;
  }

  if (v4 == 84)
  {
LABEL_15:
    result <<= 40;
    goto LABEL_18;
  }

LABEL_19:
  if (v3 == a1)
  {
    return -1;
  }

  if (*v3)
  {
    return -1;
  }

  return result;
}

char *sub_100004C58(char *__s1, uuid_t out)
{
  v3 = __s1;
  if (!__s1)
  {
    *out = 0u;
    *(out + 1) = 0u;
    uuid_generate(out);
    *(out + 5) = 1073741826;
    return v3;
  }

  v4 = strdup(__s1);
  if (v4)
  {
    v5 = v4;
    __lasts = 0xAAAAAAAAAAAAAAAALL;
    v6 = strtok_r(v4, ",", &__lasts);
    if (!v6)
    {
LABEL_24:
      v3 = 0;
      goto LABEL_27;
    }

    v7 = v6;
    while (1)
    {
      if (!strncasecmp(v7, "blocksize=", 0xAuLL))
      {
        v10 = sub_100004B78(v7 + 10);
        if (v10 - 65537 < 0xFFFFFFFFFFFF0FFFLL || ((v10 + 0x1FFFF) & v10) != 0)
        {
LABEL_26:
          v3 += v7 - v5;
LABEL_27:
          free(v5);
          return v3;
        }

        *(out + 4) = v10;
      }

      else
      {
        if (!strcasecmp(v7, "omap=btree") || !strcasecmp(v7, "omap=physical"))
        {
          v9 = 1073741826;
LABEL_15:
          *(out + 5) = v9;
          goto LABEL_23;
        }

        if (!strcasecmp(v7, "omap=ephemeral"))
        {
          v9 = -2147483646;
          goto LABEL_15;
        }

        if (!strcasecmp(v7, "defragment=yes"))
        {
          v11 = *(out + 12) & 0xFFFC | 2;
LABEL_22:
          *(out + 12) = v11;
          goto LABEL_23;
        }

        if (!strcasecmp(v7, "defragment=no"))
        {
          v11 = *(out + 12) & 0xFFFC | 1;
          goto LABEL_22;
        }

        if (strncasecmp(v7, "maxfs=", 6uLL))
        {
          goto LABEL_26;
        }

        v8 = sub_100004B78(v7 + 6);
        if (v8 >= 0x65)
        {
          goto LABEL_26;
        }

        out[26] = v8;
      }

LABEL_23:
      v7 = strtok_r(0, ",", &__lasts);
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

  return v3;
}

char *sub_100004E5C(char *a1, uuid_t out)
{
  v3 = a1;
  if (!a1)
  {
    *(out + 29) = 0u;
    *(out + 30) = 0u;
    *(out + 27) = 0u;
    *(out + 28) = 0u;
    *(out + 25) = 0u;
    *(out + 26) = 0u;
    *(out + 23) = 0u;
    *(out + 24) = 0u;
    *(out + 21) = 0u;
    *(out + 22) = 0u;
    *(out + 19) = 0u;
    *(out + 20) = 0u;
    *(out + 17) = 0u;
    *(out + 18) = 0u;
    *(out + 15) = 0u;
    *(out + 16) = 0u;
    *(out + 13) = 0u;
    *(out + 14) = 0u;
    *(out + 11) = 0u;
    *(out + 12) = 0u;
    *(out + 9) = 0u;
    *(out + 10) = 0u;
    *(out + 7) = 0u;
    *(out + 8) = 0u;
    *(out + 5) = 0u;
    *(out + 6) = 0u;
    *(out + 3) = 0u;
    *(out + 4) = 0u;
    *(out + 1) = 0u;
    *(out + 2) = 0u;
    *out = 0u;
    uuid_generate(out);
    *(out + 2) = xmmword_10006A760;
    *(out + 123) = 1073741826;
    *(out + 12) = -1;
    *(out + 111) = getuid();
    *(out + 112) = getgid();
    *(out + 26) &= ~0x80u;
    __strlcpy_chk();
    *(out + 26) = *(out + 26) & 0xFBF3 | 8;
    return v3;
  }

  if (!strncasecmp(a1, "uuid_from_role", 0xEuLL))
  {
    v21 = *(out + 27);
    if (v21 <= 0xBF)
    {
      if (*(out + 27) <= 7u)
      {
        if (*(out + 27) <= 1u)
        {
          if (*(out + 27))
          {
            v22 = "61706673-7575-6964-0001-766f6c756d00";
          }

          else
          {
            v22 = "61706673-7575-6964-0000-766f6c756d00";
          }

          goto LABEL_121;
        }

        if (v21 == 2)
        {
          v22 = "61706673-7575-6964-0002-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 4)
        {
          v22 = "61706673-7575-6964-0004-766f6c756d00";
          goto LABEL_121;
        }
      }

      else if (*(out + 27) <= 0x1Fu)
      {
        if (v21 == 8)
        {
          v22 = "61706673-7575-6964-0008-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 16)
        {
          v22 = "61706673-7575-6964-0010-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x20u:
            v22 = "61706673-7575-6964-0020-766f6c756d00";
            goto LABEL_121;
          case 0x40u:
            v22 = "61706673-7575-6964-0040-766f6c756d00";
            goto LABEL_121;
          case 0x80u:
            v22 = "61706673-7575-6964-0080-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(out + 27) > 0x1FFu)
    {
      if (*(out + 27) <= 0x27Fu)
      {
        if (v21 == 512)
        {
          v22 = "61706673-7575-6964-0200-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 576)
        {
          v22 = "61706673-7575-6964-0240-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x280u:
            v22 = "61706673-7575-6964-0280-766f6c756d00";
            goto LABEL_121;
          case 0x2C0u:
            v22 = "61706673-7575-6964-02c0-766f6c756d00";
            goto LABEL_121;
          case 0x300u:
            v22 = "61706673-7575-6964-0300-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(out + 27) <= 0x13Fu)
    {
      if (v21 == 192)
      {
        v22 = "61706673-7575-6964-00c0-766f6c756d00";
        goto LABEL_121;
      }

      if (v21 == 256)
      {
        v22 = "61706673-7575-6964-0100-766f6c756d00";
        goto LABEL_121;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x140u:
          v22 = "61706673-7575-6964-0140-766f6c756d00";
          goto LABEL_121;
        case 0x180u:
          v22 = "61706673-7575-6964-0180-766f6c756d00";
          goto LABEL_121;
        case 0x1C0u:
          v22 = "61706673-7575-6964-01c0-766f6c756d00";
LABEL_121:
          uuid_parse(v22, out);
          return 0;
      }
    }

    return strerror(22);
  }

  if (!strncasecmp(v3, "password=", 9uLL))
  {
    v3 += 9;
    __strlcpy_chk();
    v23 = strnlen(v3, 0x80uLL);
    *(out + 110) = v23;
    if ((v23 & 0xFFFFFF80) == 0)
    {
      return 0;
    }

    return v3;
  }

  if (!strncasecmp(v3, "empty_password", 0xFuLL))
  {
    v3 = 0;
    out[312] = 0;
    *(out + 110) = 0;
    return v3;
  }

  if (!strncasecmp(v3, "volname=", 8uLL))
  {
    __strlcpy_chk();
    return 0;
  }

  v4 = strdup(v3);
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  __lasts = 0xAAAAAAAAAAAAAAAALL;
  v6 = strtok_r(v4, ",", &__lasts);
  if (!v6)
  {
    v3 = 0;
    goto LABEL_109;
  }

  v7 = v6;
  v8 = "fsquota=";
  v9 = "fsindex=";
  while (1)
  {
    if (!strncasecmp(v7, "fssize=", 7uLL))
    {
      v11 = sub_100004B78(v7 + 7);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      *(out + 2) = v11;
LABEL_36:
      *(out + 3) = v11;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "fsreserve=", 0xAuLL))
    {
      v12 = sub_100004B78(v7 + 10);
      if (v12 == -1)
      {
        goto LABEL_108;
      }

      *(out + 2) = v12;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, v8, 8uLL))
    {
      v11 = sub_100004B78(v7 + 8);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      goto LABEL_36;
    }

    if (!strncasecmp(v7, v9, 8uLL))
    {
      break;
    }

    if (!strcasecmp(v7, "omap=btree") || !strcasecmp(v7, "omap=physical"))
    {
      v13 = 1073741826;
LABEL_40:
      *(out + 8) = v13;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "omap=ephemeral"))
    {
      v13 = -2147483646;
      goto LABEL_40;
    }

    if (!strcasecmp(v7, "fstree=btree"))
    {
      *(out + 36) = 0x4000000200000002;
      *(out + 11) = 1073741826;
      *(out + 123) = 1073741826;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "encrypted"))
    {
      v10 = *(out + 26) | 1;
LABEL_55:
      *(out + 26) = v10;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "role=", 5uLL))
    {
      v17 = sub_100011B90(v7 + 5);
      if (v17 == -1)
      {
        goto LABEL_108;
      }

      *(out + 27) = v17;
    }

    else
    {
      if (!strcasecmp(v7, "case=insensitive"))
      {
        v10 = *(out + 26) & 0xFFF3 | 4;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "case=sensitive"))
      {
        v10 = *(out + 26) & 0xFFF3 | 8;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=yes"))
      {
        v10 = *(out + 26) & 0xFFCF | 0x20;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=no"))
      {
        v10 = *(out + 26) & 0xFFCF | 0x10;
        goto LABEL_55;
      }

      if (!strncasecmp(v7, "uid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0xAAAAAAAAAAAAAAAALL;
        v18 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v18 == -1)
        {
          goto LABEL_108;
        }

        *(out + 111) = v18;
        goto LABEL_45;
      }

      if (!strncasecmp(v7, "gid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0xAAAAAAAAAAAAAAAALL;
        v19 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v19 == -1)
        {
          goto LABEL_108;
        }

        *(out + 112) = v19;
        goto LABEL_45;
      }

      if (!strcasecmp(v7, "sealed=yes"))
      {
        *(out + 26) |= 0x80u;
        *(out + 122) = 1;
        *(out + 9) = 2;
        goto LABEL_37;
      }

      if (!strcasecmp(v7, "conformance"))
      {
        goto LABEL_108;
      }

      if (strncasecmp(v7, "hash=", 5uLL))
      {
        if (!strcasecmp(v7, "unwritten"))
        {
          v10 = *(out + 26) | 0x400;
        }

        else
        {
          if (strcasecmp(v7, "unwritten=no"))
          {
            goto LABEL_108;
          }

          v10 = *(out + 26) & 0xFBFF;
        }

        goto LABEL_55;
      }

      v20 = sub_1000056A8(v7 + 5);
      if (v20 == -1)
      {
        goto LABEL_108;
      }

      *(out + 122) = v20;
    }

LABEL_37:
    v7 = strtok_r(0, ",", &__lasts);
    if (!v7)
    {
      v3 = 0;
      goto LABEL_109;
    }
  }

  v14 = v8;
  v15 = v9;
  __endptr = 0xAAAAAAAAAAAAAAAALL;
  v16 = strtoull(v7 + 8, &__endptr, 10);
  if (__endptr != v7 + 8 && !*__endptr && v16 != -1)
  {
    *(out + 12) = v16;
LABEL_45:
    v9 = v15;
    v8 = v14;
    goto LABEL_37;
  }

LABEL_108:
  v3 += v7 - v5;
LABEL_109:
  free(v5);
  return v3;
}

uint64_t sub_1000056A8(const char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!strncasecmp(a1, "sha256", 7uLL))
  {
    return 1;
  }

  if (!strncasecmp(a1, "sha512_256", 0xBuLL))
  {
    return 5;
  }

  if (!strncasecmp(a1, "sha384", 7uLL))
  {
    return 3;
  }

  if (!strncasecmp(a1, "sha512", 7uLL))
  {
    return 4;
  }

  if (!strncmp(a1, "sha3_256_4k", 0xCuLL))
  {
    return 262;
  }

  if (!strncmp(a1, "sha3_384_4k", 0xCuLL))
  {
    return 263;
  }

  if (!strncmp(a1, "sha3_512_4k", 0xCuLL))
  {
    return 264;
  }

  if (!strncmp(a1, "sha3_256", 9uLL))
  {
    return 6;
  }

  if (!strncmp(a1, "sha3_384", 9uLL))
  {
    return 7;
  }

  if (!strncmp(a1, "sha3_512", 9uLL))
  {
    return 8;
  }

  return 0xFFFFFFFFLL;
}

const char *sub_100005818(const char *a1, uint64_t (*a2)(const char *, uint64_t), uint64_t a3, uint64_t (*a4)(const char *, uint64_t), uint64_t a5)
{
  v10 = strlen(a1);
  v11 = 0;
  v12 = 0;
  do
  {
    if (v11 != v10 && v11 <= v12)
    {
      v13 = a2(&a1[v11], a3);
      v11 = v10;
      if (v13)
      {
        v11 = v13 - a1;
        if (v13 - a1 < v12)
        {
          v14 = strchr(v13, 44);
          if (v14)
          {
            v11 = v14 - a1;
          }

          else
          {
            v11 = v10;
          }
        }
      }
    }

    if (v12 != v10 && v12 <= v11)
    {
      v15 = a4(&a1[v12], a5);
      v12 = v10;
      if (v15)
      {
        v12 = v15 - a1;
        if (v15 - a1 < v11)
        {
          v16 = strchr(v15, 44);
          if (v16)
          {
            v12 = v16 - a1;
          }

          else
          {
            v12 = v10;
          }
        }
      }
    }
  }

  while (v11 != v12);
  if (v11 == v10)
  {
    return 0;
  }

  else
  {
    return &a1[v11];
  }
}

uint64_t sub_10000590C(uint64_t *a1, char a2)
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
  v5 = sub_100042E24(a1, &v256);
  if (v5)
  {
    v6 = v5;
    sub_100012178("%s:%d: %s unable to get spaceman: %d\n", "nx_check", 70, (a1[48] + 212), v5);
    return v6;
  }

  v7 = v256[47];
  v237 = sub_100038020(v256);
  v8 = *(v7 + 32);
  v240 = v4;
  v9 = *(v4 + 36);
  if (v8 != v9)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman block size %d doesn't match nx superblock block size %d\n", "nx_check", 78, (a1[48] + 212), v8, v9);
    v8 = *(v7 + 32);
  }

  v227 = a2;
  v10 = *(v7 + 36);
  LODWORD(v11) = v8;
  if (v10 != 8 * v8)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman blocks per chunk is bad: %d\n", "nx_check", 82, (a1[48] + 212), v10);
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
    sub_100012128("%s:%d: %s spaceman chunks per cib is bad: %d\n", "nx_check", 86, (a1[48] + 212), v14);
    v11 = *(v7 + 32);
  }

  v243 = v11 + 0x7FFFFFFD8;
  v15 = (v11 + 0x7FFFFFFD8) >> 3;
  v16 = *(v7 + 44);
  if (v16 != v15)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman cibs per cab is bad: %d\n", "nx_check", 90, (a1[48] + 212), v16);
  }

  v17 = (8 * v8);
  v18 = *(v7 + 48);
  v231 = (v7 + 48);
  v19 = *(v7 + 96) + v18;
  v20 = *(v240 + 40);
  if (v19 != v20)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman block count %lld doesn't match nx superblock block count %lld\n", "nx_check", 94, (a1[48] + 212), v19, v20);
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
    sub_100012128("%s:%d: %s spaceman chunk count is bad: %lld\n", "nx_check", 97, (a1[48] + 212), v21);
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
    sub_100012128("%s:%d: %s spaceman cib count is bad: %d\n", "nx_check", 100, (a1[48] + 212), v24);
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
    sub_100012128("%s:%d: %s spaceman cab count is bad: %d\n", "nx_check", 109, (a1[48] + 212), v29);
  }

  v30 = *(v7 + 72);
  v31 = *(v7 + 48);
  if (v30 > v31)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman free count is too large: %lld > %lld\n", "nx_check", 112, (a1[48] + 212), v30, v31);
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
    sub_100012128("%s:%d: %s spaceman tier2 chunk count is bad: %lld\n", "nx_check", 116, (a1[48] + 212), v32);
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
    sub_100012128("%s:%d: %s spaceman tier2 cib count is bad: %d\n", "nx_check", 119, (a1[48] + 212), v35);
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
    sub_100012128("%s:%d: %s spaceman tier2 cab count is bad: %d\n", "nx_check", 128, (a1[48] + 212), v39);
  }

  v40 = *(v7 + 120);
  v41 = *(v7 + 96);
  if (v40 > v41)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman tier2 free count is too large: %lld > %lld\n", "nx_check", 131, (a1[48] + 212), v40, v41);
  }

  v42.i64[0] = *(v7 + 64);
  v42.i64[1] = *(v7 + 112);
  v43 = vaddlvq_u32(v42) + *(v7 + 56) + *(v7 + 104);
  v44 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v44 != 3 * v43)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP block count is bad: %lld\n", "nx_check", 137, (a1[48] + 212), v44);
    v44 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = *(v7 + 160);
  if ((*(v7 + 32) + 8 * ((v44 + 63) >> 6) - 1) / *(v7 + 32) != v45)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP bm block count is bad: %d\n", "nx_check", 140, (a1[48] + 212), v45);
  }

  v46 = *(v7 + 164) & 0x7FFFFFFF;
  if (v46 >= 0xFFFF)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP bitmap block count is too large: %d\n", "nx_check", 143, (a1[48] + 212), v46);
  }

  v47 = *(v7 + 148);
  if (v47 <= 3)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP bitmap tx multiplier is too small: %d\n", "nx_check", 146, (a1[48] + 212), v47);
  }

  v48 = *(v7 + 160);
  v49 = *(v7 + 164) & 0x7FFFFFFF;
  if (v49 / v48 <= 3)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP bitmap block count per tx is too small: %d\n", "nx_check", 149, (a1[48] + 212), v49 / v48);
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
      sub_100012128("%s:%d: %s spaceman IP bitmap block count is bad: %d\n", "nx_check", 156, (a1[48] + 212), v49);
      v48 = *(v7 + 160);
      v50 = *(v7 + 148);
      v51 = *(v7 + 164) & 0x7FFFFFFF;
    }

    if (v51 / v48 < v50 >> 1)
    {
      ++v254;
      sub_100012128("%s:%d: %s spaceman IP bitmap block count is too low: %d\n", "nx_check", 159, (a1[48] + 212), v51);
    }
  }

  v52 = *(v7 + 48);
  v53 = *(v7 + 168);
  if (!v53 || v53 >= v52)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP bm base address is bad: %lld\n", "nx_check", 166, (a1[48] + 212), v53);
  }

  v54 = *(v7 + 176);
  if (!v54 || v54 >= v52)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP base address is bad: %lld\n", "nx_check", 169, (a1[48] + 212), v54);
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
        sub_100012128("%s:%d: %s spaceman IP bitmap block %d xid %lld > spaceman xid %lld\n", "nx_check", 176, (a1[48] + 212), v55, v57, v23);
        v56 = v256;
      }

      v58 = *(v56[110] + 2 * v55);
      if ((*(v7 + 164) & 0x7FFFFFFFu) <= v58)
      {
        ++v254;
        sub_100012128("%s:%d: %s spaceman IP bitmap block %d index %d out of range\n", "nx_check", 179, (a1[48] + 212), v55, v58);
        v58 = *(v256[110] + 2 * v55);
      }

      v59 = sub_100042DE8(a1, v7, v58, &v249[2]);
      if (v59 || (v59 = sub_10003A1E8(a1[49], 0x40000000uLL, v249[2], &xmmword_10006A960, 0, 0, 0, 0, &v251)) != 0)
      {
        v23 = v237;
        ++v254;
        sub_100012128("%s:%d: %s spaceman IP bitmap unable to get bitmap block %d @ %lld: %d\n", "nx_check", 187, (a1[48] + 212), v55, v249[2], v59);
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

        v230 += sub_10001C584(v251[7], 0, 0, v60);
        sub_100037058(v251);
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
    sub_100012128("%s:%d: %s spaceman IP bitmap has too many free blocks %lld > %lld\n", "nx_check", 196, (a1[48] + 212), v230, v64);
  }

  v65 = *(v7 + 320);
  v66 = *(v7 + 164);
  LODWORD(v67) = v66 & 0x7FFFFFFF;
  if ((v66 & 0x7FFFFFFFu) <= v65)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 201, (a1[48] + 212), v65);
    v66 = *(v7 + 164);
    LODWORD(v67) = v66 & 0x7FFFFFFF;
  }

  v68 = *(v7 + 322);
  if (v67 > v68 || (++v254, sub_100012128("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 204, (a1[48] + 212), v68), v66 = *(v7 + 164), LODWORD(v67) = v66 & 0x7FFFFFFF, (v66 & 0x7FFFFFFF) != 0))
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
        sub_100012128("%s:%d: %s spaceman IP bitmap free next %d, value %d invalid\n", "nx_check", 209, (a1[48] + 212), v69, v72);
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
    sub_100012128("%s:%d: %s spaceman IP bitmap next array free count is wrong, %lld != %d\n", "nx_check", 224, (a1[48] + 212), v70, v75);
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
    sub_100012128("%s:%d: %s spaceman IP bitmap free list corrupted, too long, count %lld\n");
  }

  else if (v70)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP bitmap free list corrupted, too short, count %lld\n");
  }

  v79 = *(v7 + 200);
  v80 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v79 > v80)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP free queue count is too large: %lld > %lld\n", "nx_check", 244, (a1[48] + 212), v79, v80);
  }

  if (*(v7 + 208))
  {
    v81 = sub_10004464C(a1, v256, 0, 0, 0, &v250[4]);
    if (v81)
    {
      ++v254;
      sub_100012128("%s:%d: %s unable to get spaceman IP free queue tree: %d\n", "nx_check", 252, (a1[48] + 212), v81);
    }

    else if (v250[4])
    {
      v143 = sub_10000DB3C(v250[4], 0, 0, 0);
      if (v143)
      {
        v144 = v143;
        ++v254;
        sub_100012128("%s:%d: %s spaceman IP free queue tree sanity check failed: %d\n", "nx_check", 256, (a1[48] + 212), v143);
        v249[1] = 0x1000000008;
      }

      else
      {
        v249[1] = 0x1000000008;
        v144 = sub_100025198(v250[4], 0, &v250[1], &v249[1] + 1, &v250[3], &v249[1]);
      }

      v170 = 0;
      v171 = 0;
      for (i = 0; !v144; v144 = sub_100025428(v250[4], 0, &v250[1], &v249[1] + 1, HIDWORD(v249[1]), &v250[3], &v249[1], 4, 0, 0))
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
          sub_100012128("%s:%d: %s spaceman IP free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 269, (v247[48] + 212), v250[1], v250[2], v237);
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
              sub_100012128("%s:%d: %s spaceman IP free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 277, (v247[48] + 212), v250[2], v171);
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
          sub_100012128("%s:%d: %s spaceman IP free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 272, (v247[48] + 212), v174, i);
          v171 = 0;
          v176 = v250[2];
          i = v250[1];
        }

        v177 = sub_100046824(v175, v256, v176, v249);
        if (v177)
        {
          ++v254;
          if (v177 == 2)
          {
            sub_100012128("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld addr is bad\n");
          }

          else
          {
            sub_100012128("%s:%d: %s error getting IP block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
          }
        }

        if (v250[3] >= 2uLL)
        {
          v178 = sub_100046824(v247, v256, v250[3] + v250[2] - 1, v249);
          if (v178)
          {
            ++v254;
            if (v178 == 2)
            {
              sub_100012128("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld end addr is bad\n");
            }

            else
            {
              sub_100012128("%s:%d: %s error getting end block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
            }
          }
        }

        v170 += v173;
        LODWORD(v249[1]) = 8;
      }

      if (v144 != 2)
      {
        ++v254;
        sub_100012128("%s:%d: %s spaceman IP free queue tree iteration aborted with error %d\n", "nx_check", 304, (v247[48] + 212), v144);
      }

      sub_100037058(v250[4]);
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
    sub_100012128("%s:%d: %s spaceman IP free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 310, (v62[48] + 212), v83, v82);
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
              sub_100037058(v253);
              v253 = 0;
            }

            if (sub_10003A1E8(v62[49], 0x40000000uLL, v92, &xmmword_10006A940, 0, 0, 0, 0, &v253))
            {
              ++v254;
              sub_100012128("%s:%d: %s unable to read cab %d @ %lld: %d\n");
              goto LABEL_198;
            }

            v122 = *(v253 + 56);
            v123 = *(v122 + 36);
            if (v123 > (sub_10003835C(v253) - 40) >> 3)
            {
              ++v254;
              sub_100012128("%s:%d: %s cab %d @ %lld cab_cib_count %d invalid\n", "nx_check", 337, (v62[48] + 212), v242, v92, *(v122 + 36));
              v89 = v89 + v232 - 1 + ~((v89 + v232 - 1) % v232);
              v85 = v122;
              v77 = v237;
              goto LABEL_198;
            }

            if (sub_100038020(v253) > v237)
            {
              ++v254;
              v124 = (v62[48] + 212);
              v125 = sub_100038020(v253);
              sub_100012128("%s:%d: %s cab %d xid %lld > spaceman xid %lld\n", "nx_check", 344, v124, v242, v125, v237);
            }

            v85 = v122;
            v126 = *(v122 + 32);
            v95 = v89 / v86;
            if (v126 != v242)
            {
              ++v254;
              sub_100012128("%s:%d: %s cab %d index %d should be %d\n", "nx_check", 347, (v62[48] + 212), v242, v126, v242);
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

              sub_100012128("%s:%d: %s cab %d cib count %d should be %d\n", "nx_check", 352, (v62[48] + 212), v95, v127, v128);
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
        v97 = sub_100046824(v62, v93, *v94, v249);
        if (v97)
        {
          ++v254;
          if (v97 == 2)
          {
            sub_100012128("%s:%d: %s spaceman chunk info block %lld addr %lld not within IP block range\n");
          }

          else
          {
            sub_100012128("%s:%d: %s error getting IP block index for spaceman chunk info block %lld addr %lld\n");
          }
        }

        if (!sub_10003A1E8(v62[49], 0x40000000uLL, v96, &xmmword_10006A950, 0, 0, 0, 0, &v252))
        {
          v238 = v85;
          if (sub_100038020(v252) > v77)
          {
            ++v254;
            v98 = (v62[48] + 212);
            v99 = sub_100038020(v252);
            sub_100012128("%s:%d: %s cib %lld xid %lld > spaceman xid %lld\n", "nx_check", 374, v98, v89, v99, v77);
          }

          v100 = v252[7];
          v101 = *(v100 + 32);
          if (v89 != v101)
          {
            ++v254;
            sub_100012128("%s:%d: %s cib %lld index %d should be %lld\n", "nx_check", 378, (v62[48] + 212), v89, v101, v89);
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

              sub_100012128("%s:%d: %s cib %lld chunk info count %d should be %lld\n", "nx_check", 383, (v62[48] + 212), v89, v102, v104);
              v103 = *(v100 + 36);
            }

            if (v103 > v13)
            {
              ++v254;
              sub_100012128("%s:%d: %s cib %lld cib_chunk_info_count %d invalid\n", "nx_check", 387, (v62[48] + 212), v96, v103);
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
            sub_100037058(v252);
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
            if (v109 > sub_100038020(v252))
            {
              ++v254;
              v110 = (v247[48] + 212);
              v111 = *(v108 - 3);
              v112 = sub_100038020(v252);
              sub_100012128("%s:%d: %s cib %lld chunk info %d xid %lld > cib xid %lld\n", "nx_check", 392, v110, v89, v106, v111, v112);
            }

            v113 = *(v108 - 2);
            if (v107 != v113)
            {
              ++v254;
              sub_100012128("%s:%d: %s cib %lld chunk info %d addr %lld should be %lld\n", "nx_check", 396, (v247[48] + 212), v89, v106, v113, v107);
            }

            v114 = *(v108 - 1) & 0xFFFFF;
            if (v114 != v17 && (v89 != *(v88 + 4) - 1 || v106 != *(v100 + 36) - 1 || *v88 % v17 != v114))
            {
              ++v254;
              sub_100012128("%s:%d: %s cib %lld chunk info %d block count %d should be %d\n");
              goto LABEL_191;
            }

            if ((*(v108 - 1) & 0xFFFFFu) > v114)
            {
              ++v254;
              sub_100012128("%s:%d: %s cib %lld chunk info %d free count %d > chunk block count %d\n", "nx_check", 407, (v247[48] + 212), v89, v106, *(v108 - 1) & 0xFFFFF, *(v108 - 1) & 0xFFFFF);
            }

            if (*v108)
            {
              v115 = sub_100046824(v247, v256, *v108, v249);
              if (v115)
              {
                ++v254;
                if (v115 == 2)
                {
                  sub_100012128("%s:%d: %s cib %lld ci %d bm addr %lld not within IP block range\n");
                }

                else
                {
                  sub_100012128("%s:%d: %s error getting IP block index for cib %lld ci %d bm addr %lld\n");
                }

                goto LABEL_191;
              }

              if (sub_10003A1E8(v247[49], 0x40000000uLL, *v108, &xmmword_10006A960, 0, 0, 0, 0, &v251))
              {
                ++v254;
                sub_100012128("%s:%d: %s cib %lld chunk %d unable to get bitmap block @ %lld: %d\n");
                goto LABEL_191;
              }

              v116 = sub_10001C584(v251[7], 0, 0, *(v108 - 1) & 0xFFFFF);
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
              sub_100012128("%s:%d: %s cib %lld ci %d free count %d doesn't match free bits in bitmap block %lld\n", "nx_check", 429, (v247[48] + 212), v89, v106, *(v108 - 1) & 0xFFFFF, v116);
              v117 = *(v108 - 1) & 0xFFFFF;
            }

            v246 += v116;
            v244 += v117;
            v118 = *(v240 + 1248);
            if (v118)
            {
              v119 = *(v240 + 1240);
              v257[0] = 0xAAAAAAAAAAAAAAAALL;
              v120 = sub_100011DE8(*(v108 - 2), *(v108 - 1) & 0xFFFFF, v119, v118, v257);
              if (v120)
              {
                if (*v108)
                {
                  v120 = sub_10001C584(v251[7], 0, v257[0] - *(v108 - 2), v257[0] + v120 - *(v108 - 2));
                }

                v246 -= v120;
                v244 -= v120;
              }
            }

            if (*v108)
            {
              sub_100037058(v251);
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
        sub_100012128("%s:%d: %s unable to read cib %lld @ %lld: %d\n");
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
      sub_100037058(v253);
      v253 = 0;
    }

    v129 = v88[3];
    v130 = v244;
    if (v244 != v129)
    {
      ++v254;
      sub_100012128("%s:%d: %s spaceman free count %lld doesn't match free count in chunks %lld\n", "nx_check", 469, (v62[48] + 212), v129, v244);
      v130 = v88[3];
    }

    if (v246 != v130)
    {
      ++v254;
      sub_100012128("%s:%d: %s spaceman free count %lld doesn't match free count in bitmap %lld\n", "nx_check", 472, (v62[48] + 212), v130, v246);
    }

    v87 = 0;
    v84 = 1;
  }

  while ((v233 & 1) != 0);
  if (v229 + v230 != v241 + v228)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman IP free block count is wrong %lld != %lld\n", "nx_check", 477, (v62[48] + 212), v229 + v230, v241 + v228);
  }

  v131 = v234;
  v132 = v234[30];
  v133 = v234[6];
  if (v132 > v133)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 482, (v62[48] + 212), v132, v133);
  }

  if (!v234[31])
  {
    goto LABEL_227;
  }

  v134 = sub_10004464C(v62, v256, 1u, 0, 0, &v250[4]);
  if (v134)
  {
    ++v254;
    sub_100012128("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 490, (v62[48] + 212), v134);
    goto LABEL_227;
  }

  if (v250[4])
  {
    v145 = sub_10000DB3C(v250[4], 0, 0, 0);
    if (v145)
    {
      v146 = v145;
      ++v254;
      sub_100012128("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 494, (v62[48] + 212), v145);
      v249[1] = 0x1000000008;
    }

    else
    {
      v249[1] = 0x1000000008;
      v146 = sub_100025198(v250[4], 0, &v250[1], &v249[1] + 1, &v250[3], &v249[1]);
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
        sub_100012128("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 507, (v247[48] + 212), v250[1], v250[2], v237);
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
            sub_100012128("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 515, (v247[48] + 212), v250[2], v179);
            v183 = v250[2];
          }

          v179 = v250[3] + v183;
          goto LABEL_334;
        }
      }

      else
      {
        ++v254;
        sub_100012128("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 510, (v247[48] + 212), v182, v180);
        v182 = v250[1];
      }

      v179 = 0;
      v183 = v250[2];
      v180 = v182;
LABEL_334:
      if (v183 < 1 || (v184 = *v231, v183 >= *v231))
      {
        ++v254;
        sub_100012128("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 524, (v247[48] + 212), v250[1], v183, v250[3]);
        v184 = *v231;
        v183 = v250[2];
      }

      v73 = v184 > v250[3];
      v185 = v184 - v250[3];
      if (!v73 || v183 > v185)
      {
        ++v254;
        sub_100012128("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 527, (v247[48] + 212), v250[1], v183, v250[3]);
      }

      v135 += v181;
      LODWORD(v249[1]) = 8;
      v146 = sub_100025428(v250[4], 0, &v250[1], &v249[1] + 1, HIDWORD(v249[1]), &v250[3], &v249[1], 4, 0, 0);
    }

    v62 = v247;
    if (v146 != 2)
    {
      ++v254;
      sub_100012128("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 534, (v247[48] + 212), v146);
    }

    sub_100037058(v250[4]);
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
    sub_100012128("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 540, (v62[48] + 212), v136, v135);
  }

  v137 = v131[35];
  v138 = v131[12];
  if (v137 > v138)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 544, (v62[48] + 212), v137, v138);
  }

  if (!v131[36])
  {
    goto LABEL_235;
  }

  v139 = sub_10004464C(v62, v256, 2u, 0, 0, &v250[4]);
  if (v139)
  {
    ++v254;
    sub_100012128("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 552, (v62[48] + 212), v139);
LABEL_235:
    v140 = 0;
    goto LABEL_236;
  }

  if (!v250[4])
  {
    goto LABEL_235;
  }

  v147 = sub_10000DB3C(v250[4], 0, 0, 0);
  if (v147)
  {
    v148 = v147;
    ++v254;
    sub_100012128("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 556, (v62[48] + 212), v147);
    v249[1] = 0x1000000008;
  }

  else
  {
    v249[1] = 0x1000000008;
    v148 = sub_100025198(v250[4], 0, &v250[1], &v249[1] + 1, &v250[3], &v249[1]);
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
      sub_100012128("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 569, (v247[48] + 212), v250[1], v250[2], v77);
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
          sub_100012128("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 577, (v247[48] + 212), v250[2], v186);
          v190 = v250[2];
        }

        v186 = v250[3] + v190;
        goto LABEL_359;
      }
    }

    else
    {
      ++v254;
      sub_100012128("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 572, (v247[48] + 212), v189, v187);
      v189 = v250[1];
    }

    v186 = 0;
    v190 = v250[2];
    v187 = v189;
LABEL_359:
    if (v190 < 1 || (v191 = v234[12], v190 >= v191))
    {
      ++v254;
      sub_100012128("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 587, (v247[48] + 212), v250[1], v190, v250[3]);
      v191 = v234[12];
    }

    v73 = v191 > v250[3];
    v192 = v191 - v250[3];
    if (!v73 || v190 > v192)
    {
      ++v254;
      sub_100012128("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 590, (v247[48] + 212), v250[1], v250[2], v250[3]);
    }

    v140 += v188;
    LODWORD(v249[1]) = 8;
    v148 = sub_100025428(v250[4], 0, &v250[1], &v249[1] + 1, HIDWORD(v249[1]), &v250[3], &v249[1], 4, 0, 0);
    v77 = v237;
  }

  v62 = v247;
  if (v148 != 2)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 597, (v247[48] + 212), v148);
  }

  sub_100037058(v250[4]);
  v131 = v234;
LABEL_236:
  v141 = v131[35];
  if (v140 != v141)
  {
    ++v254;
    sub_100012128("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 603, (v62[48] + 212), v141, v140);
  }

  if (*(v240 + 168))
  {
    v142 = sub_10000EDC8(v62, &v255);
    if (v142)
    {
      v6 = v142;
      sub_100012178("%s:%d: %s unable to get reaper: %d\n");
      goto LABEL_380;
    }

    v149 = v255[47];
    v150 = *(v149 + 32);
    if (*(v149 + 40) >= v150)
    {
      sub_100012128("%s:%d: %s reaper completed ID 0x%llx not less than next reap ID 0x%llx\n", "nx_check_reaper", 940, (v62[48] + 212), *(v149 + 40), v150);
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
      sub_100012128("%s:%d: %s reaper needs more cowbell, flags 0x%x\n", "nx_check_reaper", 943, (v62[48] + 212), v152);
    }

    v153 = *(v149 + 48);
    if (!v153)
    {
      if (!*(v149 + 56) || (++v151, sub_100012128("%s:%d: %s reaper has tail with no head\n", "nx_check_reaper", 947, (v62[48] + 212)), (v153 = *(v149 + 48)) == 0))
      {
LABEL_372:
        v254 += v151;
        sub_100037058(v255);
        v77 = v237;
        goto LABEL_373;
      }
    }

    v257[0] = 0xAAAAAAAAAAAAAAAALL;
    v154 = *(v149 + 68);
    while (1)
    {
      v155 = sub_10003A1E8(v62[49], 0x80000000uLL, v153, &xmmword_10006A7D0, 0, 0, 0, 0, v257);
      if (v155)
      {
        v6 = v155;
        sub_100012178("%s:%d: %s failed to get reap list head: %d\n", "nx_check_reaper", 956, (v62[48] + 212), v155);
        sub_100037058(v255);
        sub_100012178("%s:%d: %s reaper check failed with error: %d\n");
        goto LABEL_380;
      }

      v156 = v257[0][47];
      v157 = *(v156 + 44);
      if (v157 != ((sub_10003835C(v257[0]) - 64) / 0x28))
      {
        ++v151;
        v158 = (v62[48] + 212);
        v159 = *(v156 + 44);
        v160 = sub_10003835C(v257[0]);
        sub_100012128("%s:%d: %s reap list object 0x%llx max record count %u not expected value %u\n", "nx_check_reaper", 963, v158, v153, v159, (v160 - 64) / 0x28);
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
        sub_100012128("%s:%d: %s reap list object 0x%llx record count %d larger than max %d\n", "nx_check_reaper", 966, (v247[48] + 212), v153, *(v156 + 48), v161);
      }

      v162 = *(v156 + 52);
      if (v162 != -1)
      {
        v163 = *(v156 + 44);
        if (v162 > v163)
        {
          ++v151;
          sub_100012128("%s:%d: %s reap list object 0x%llx first index %u larger than max %u\n", "nx_check_reaper", 969, (v62[48] + 212), v153, *(v156 + 52), v163);
        }
      }

      v164 = *(v156 + 56);
      if (v164 != -1)
      {
        v165 = *(v156 + 44);
        if (v164 > v165)
        {
          ++v151;
          sub_100012128("%s:%d: %s reap list object 0x%llx last index %u larger than max %u\n", "nx_check_reaper", 972, (v62[48] + 212), v153, *(v156 + 52), v165);
        }
      }

      v166 = *(v156 + 60);
      if (v166 != -1)
      {
        v167 = *(v156 + 44);
        if (v166 > v167)
        {
          ++v151;
          sub_100012128("%s:%d: %s reap list object 0x%llx free index %u larger than max %u\n", "nx_check_reaper", 975, (v62[48] + 212), v153, *(v156 + 60), v167);
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
        sub_100012128("%s:%d: %s last reap list object 0x%llx doesn't match tail 0x%llx\n", "nx_check_reaper", 984, (v62[48] + 212), v153, v169);
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
        sub_100012128("%s:%d: %s reap list tail 0x%llx is not last reap list object, next 0x%llx\n", "nx_check_reaper", 987, (v62[48] + 212), v153, v168);
        v153 = *(v156 + 32);
      }

      else
      {
        v153 = v168;
      }

LABEL_281:
      sub_100037058(v257[0]);
      if (*(v149 + 68))
      {
        --v154;
        if (v153 && !v154)
        {
          ++v151;
          sub_100012128("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n");
          goto LABEL_372;
        }

        if (!v153 && v154)
        {
          ++v151;
          sub_100012128("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n");
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
    v194 = sub_10003A1E8(v62[49], 0x40000000uLL, v193, &xmmword_10006A8D8, 0, 0, 0, 0, v250);
    if (v194)
    {
      v6 = v194;
      sub_100012178("%s:%d: %s unable to get omap: %d\n");
LABEL_380:
      sub_100037058(v256);
      return v6;
    }

    if (sub_100038020(v250[0]) > v77)
    {
      ++v254;
      v195 = (v62[48] + 212);
      v196 = sub_100038020(v250[0]);
      sub_100012128("%s:%d: %s omap xid %lld > spaceman xid %lld\n", "nx_check", 633, v195, v196, v77);
    }

    v6 = sub_100008824(v62, v250[0], v77, &v254);
    sub_100037058(v250[0]);
    if (v6)
    {
      sub_100012178("%s:%d: %s omap check failed with error: %d\n");
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
        v199 = sub_10003A1E8(v247[49], 0, v198, &xmmword_10006A8A8, 0, 0, 0, 0, v257);
        if (v199)
        {
          sub_100012178("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check", 654, (v247[48] + 212), j, v198, v199);
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

          v203 = sub_10003A1E8(v247[49], 0x40000000uLL, v202, &xmmword_10006A8D8, 0, v257[0], 0, 0, v250);
          if (v203)
          {
            sub_100012178("%s:%d: %s unable to get omap %lld: %d\n", "nx_check", 661, v257[0] + 4040, *(v257[0][47] + 128), v203);
            goto LABEL_440;
          }

          v204 = sub_100008824(v257[0], v250[0], v237, &v254);
          sub_100037058(v250[0]);
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
                v205 = sub_10002E504(v200, 0, 0, &v248);
                if (v205)
                {
                  sub_100012178("%s:%d: %s unable to get fs root tree: %d\n", "nx_check", 680, v257[0] + 4040, v205);
                }

                else
                {
                  if (sub_100038020(v248) > v237)
                  {
                    ++v254;
                    v206 = (v257[0] + 505);
                    v207 = sub_100038020(v248);
                    sub_100012128("%s:%d: %s fs root tree xid %lld > spaceman xid %lld\n", "nx_check", 683, v206, v207, v237);
                  }

                  v208 = sub_10000DB3C(v248, 0, 0, 0);
                  if (v208)
                  {
                    ++v254;
                    sub_100012128("%s:%d: %s fs root tree sanity check failed: %d\n", "nx_check", 688, v257[0] + 4040, v208);
                  }
                }

                if (v248)
                {
                  sub_100037058(v248);
                }
              }

              else
              {
                sub_100012178("%s:%d: %s skipping check of fs[%d] oid %lld fs root tree because it's encrypted\n", "nx_check", 675, v200 + 4040, j, v198);
              }
            }

            v209 = *(v257[0][47] + 144);
            if (v209)
            {
              v248 = 0;
              v210 = sub_10002E52C(v257[0], v209, 0, &v248);
              if (v210)
              {
                sub_100012178("%s:%d: %s unable to get fs extentref tree: %d\n", "nx_check", 700, v257[0] + 4040, v210);
              }

              else
              {
                if (sub_100038020(v248) > v237)
                {
                  ++v254;
                  v211 = (v257[0] + 505);
                  v212 = sub_100038020(v248);
                  sub_100012128("%s:%d: %s fs extentref tree xid %lld > spaceman xid %lld\n", "nx_check", 703, v211, v212, v237);
                }

                v213 = sub_10000DB3C(v248, 0, 0, 0);
                if (v213)
                {
                  ++v254;
                  sub_100012128("%s:%d: %s fs extentref tree sanity check failed: %d\n", "nx_check", 708, v257[0] + 4040, v213);
                }
              }

              if (v248)
              {
                sub_100037058(v248);
              }
            }

            if (*(v257[0][47] + 152))
            {
              v248 = 0;
              v214 = sub_10002E570(v257[0], 0, &v248);
              if (v214)
              {
                sub_100012178("%s:%d: %s unable to get fs snap meta tree: %d\n", "nx_check", 719, v257[0] + 4040, v214);
              }

              else
              {
                if (sub_100038020(v248) > v237)
                {
                  ++v254;
                  v215 = (v257[0] + 505);
                  v216 = sub_100038020(v248);
                  sub_100012128("%s:%d: %s fs snap meta tree xid %lld > spaceman xid %lld\n", "nx_check", 722, v215, v216, v237);
                }

                v217 = sub_10000DB3C(v248, 0, 0, 0);
                if (v217)
                {
                  ++v254;
                  sub_100012128("%s:%d: %s fs snap meta tree sanity check failed: %d\n", "nx_check", 727, v257[0] + 4040, v217);
                }
              }

              if (v248)
              {
                sub_100037058(v248);
              }
            }

            if (*(v257[0][47] + 1072))
            {
              v248 = 0;
              v218 = sub_10002E638(v257[0], 0, 0, 0, &v248);
              if (v218)
              {
                sub_100012178("%s:%d: %s unable to get doc-id tree: %d\n", "nx_check", 738, v257[0] + 4040, v218);
              }

              else
              {
                if (sub_100038020(v248) > v237)
                {
                  ++v254;
                  v219 = (v257[0] + 505);
                  v220 = sub_100038020(v248);
                  sub_100012128("%s:%d: %s doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 741, v219, v220, v237);
                }

                v221 = sub_10000DB3C(v248, 0, 0, 0);
                if (v221)
                {
                  ++v254;
                  sub_100012128("%s:%d: %s doc-id tree sanity check failed: %d\n", "nx_check", 746, v257[0] + 4040, v221);
                }
              }

              if (v248)
              {
                sub_100037058(v248);
              }
            }

            if (*(v257[0][47] + 1080))
            {
              v248 = 0;
              v222 = sub_10002E638(v257[0], 1, 0, 0, &v248);
              if (v222)
              {
                sub_100012178("%s:%d: %s unable to get prev doc-id tree: %d\n", "nx_check", 757, v257[0] + 4040, v222);
              }

              else
              {
                if (sub_100038020(v248) > v237)
                {
                  ++v254;
                  v223 = (v257[0] + 505);
                  v224 = sub_100038020(v248);
                  sub_100012128("%s:%d: %s prev doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 760, v223, v224, v237);
                }

                v225 = sub_10000DB3C(v248, 0, 0, 0);
                if (v225)
                {
                  ++v254;
                  sub_100012128("%s:%d: %s prev doc-id tree sanity check failed: %d\n", "nx_check", 765, v257[0] + 4040, v225);
                }
              }

              if (v248)
              {
                sub_100037058(v248);
              }
            }

LABEL_440:
            sub_100037058(v257[0]);
            continue;
          }

          sub_100012178("%s:%d: %s omap check failed for omap %lld: %d\n", "nx_check", 668, v257[0] + 4040, *(v257[0][47] + 128), v204);
          sub_100037058(v257[0]);
        }
      }
    }
  }

  sub_100037058(v256);
  if (v254)
  {
    return 22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008824(uint64_t *a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v8 = a1;
  if (sub_100036630(a1) == 13)
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
    if (sub_100036630(a1) == 13)
    {
      v11 = (a1 + 505);
    }

    else
    {
      v11 = (a1[48] + 212);
    }

    sub_100012128("%s:%d: %s omap snapshot count %d seems excessive\n", "nx_check_omap", 802, v11, *(*(a2 + 376) + 36));
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
    v46 = sub_10003DE40;
    DWORD2(v47) = 11;
    if (v13 == 2)
    {
      v16 = sub_100026D00(a1, v13 & 0xFFFF0000, v15, 0, 0, &v46, 0, &v45);
      if (!v16)
      {
        if (sub_100038020(v45) <= a3)
        {
          v22 = 0;
        }

        else
        {
          if (sub_100036630(a1) == 13)
          {
            v17 = (a1 + 505);
          }

          else
          {
            v17 = (a1[48] + 212);
          }

          v23 = sub_100038020(v45);
          sub_100012128("%s:%d: %s omap tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 817, v17, v23, a3);
          v22 = 1;
        }

        v24 = sub_10000DB3C(v45, 0, 0, 0);
        if (v24)
        {
          v25 = v24;
          ++v22;
          if (sub_100036630(a1) == 13)
          {
            v26 = (a1 + 505);
          }

          else
          {
            v26 = (a1[48] + 212);
          }

          sub_100012128("%s:%d: %s omap tree sanity check failed: %d\n", "nx_check_omap", 822, v26, v25);
          goto LABEL_83;
        }

        v41 = 0xAAAAAAAAAAAAAAAALL;
        v42 = 0xAAAAAAAAAAAAAAAALL;
        v46 = 0;
        *&v47 = 0;
        sub_100025DA4(v43, v45, 0, 0, &v46, 16, 16, &v41, 0x10u, 0);
        if (sub_100025F1C(v43))
        {
LABEL_83:
          sub_100037058(v45);
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
              if (sub_100036630(a1) == 13)
              {
                sub_100012128("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, v40, v46, v47, *&v39[4]);
              }

              else
              {
                sub_100012128("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, (a1[48] + 212), v46, v47, *&v39[4]);
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
            if (sub_100036630(a1) == 13)
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, v40, v46, v47, a3);
            }

            else
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, (a1[48] + 212), v46, v47, a3);
            }
          }

          if (v41 >= 0x800)
          {
            ++v22;
            if (sub_100036630(a1) == 13)
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, v40, v46, v47, v41 & 0xFFFFFFFE);
            }

            else
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, (a1[48] + 212), v46, v47, v41 & 0xFFFFFFFE);
            }
          }

          if ((v41 & 1) != 0 && v28 == -1)
          {
            ++v22;
            if (sub_100036630(a1) == 13)
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, v40, v46, v47);
            }

            else
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, (a1[48] + 212), v46, v47);
            }
          }

          else if (v28 != -1)
          {
            if (v28)
            {
              ++v22;
              if (sub_100036630(a1) == 13)
              {
                sub_100012128("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, v40, v46, v47, v28);
              }

              else
              {
                sub_100012128("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, (a1[48] + 212), v46, v47, v28);
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
            if (sub_100036630(a1) == 13)
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, v40, v46, v47, HIDWORD(v41));
            }

            else
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, (a1[48] + 212), v46, v47, HIDWORD(v41));
            }
          }

          if (sub_100003530(v8[47], 0, v42, (*v39 + HIDWORD(v41)) / v10, 0))
          {
            ++v22;
            if (sub_100036630(a1) == 13)
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, v40, v46, v47, v42, HIDWORD(v41));
            }

            else
            {
              sub_100012128("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, (a1[48] + 212), v46, v47, v42, HIDWORD(v41));
            }
          }

          sub_100025F38(v43);
          if (sub_100025F1C(v43))
          {
            goto LABEL_83;
          }
        }

        if (sub_100036630(a1) == 13)
        {
          sub_100012128("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, v40, v46, v27);
        }

        else
        {
          sub_100012128("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, (a1[48] + 212), v46, v27);
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
      v16 = 22;
    }

    if (sub_100036630(a1) == 13)
    {
      v18 = (a1 + 505);
    }

    else
    {
      v18 = (a1[48] + 212);
    }

    sub_100012128("%s:%d: %s unable to get omap tree: %d\n", "nx_check_omap", 812, v18, v16);
    v21 = *a4 + 1;
    goto LABEL_110;
  }

  v19 = sub_100036630(a1);
  if (v19 == 13)
  {
    v20 = (a1 + 505);
  }

  else
  {
    v20 = (a1[48] + 212);
  }

  sub_100012128("%s:%d: %s omap tree type 0x%x is bad\n", "nx_check_omap", 881, v20, *(*(a2 + 376) + 40));
  v22 = 1;
LABEL_84:
  v30 = *(a2 + 376);
  v31 = *(v30 + 56);
  if (!v31)
  {
LABEL_109:
    v16 = 0;
    v21 = *a4 + v22;
    goto LABEL_110;
  }

  v32 = *(v30 + 44);
  if (v32 != 1073741826 && v32 != -2147483646)
  {
    ++v22;
    if (sub_100036630(a1) == 13)
    {
      v35 = (a1 + 505);
    }

    else
    {
      v35 = (a1[48] + 212);
    }

    sub_100012128("%s:%d: %s omap snapshot tree type 0x%x is bad\n", "nx_check_omap", 920, v35, *(*(a2 + 376) + 40));
    goto LABEL_109;
  }

  v47 = 0u;
  v52 = 0;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v46 = sub_10003DE9C;
  DWORD2(v47) = 19;
  v16 = sub_100026D00(a1, v32 & 0xFFFF0000, v31, 0, 0, &v46, 0, &v45);
  if (!v16)
  {
    if (sub_100038020(v45) > a3)
    {
      ++v22;
      if (sub_100036630(a1) == 13)
      {
        v33 = (a1 + 505);
      }

      else
      {
        v33 = (a1[48] + 212);
      }

      v36 = sub_100038020(v45);
      sub_100012128("%s:%d: %s omap snapshot tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 896, v33, v36, a3);
    }

    if (sub_10000DB3C(v45, 0, 0, 0))
    {
      ++v22;
      sub_100036630(a1);
      sub_100012128("%s:%d: %s omap snapshot tree sanity check failed: %d\n");
    }

    else
    {
      v46 = 0xAAAAAAAAAAAAAAAALL;
      *&v47 = 0xAAAAAAAAAAAAAAAALL;
      v41 = 0;
      sub_100025DA4(v43, v45, 0, 0, &v41, 8, 8, &v46, 0x10u, 0);
      v37 = 0;
      if (!sub_100025F1C(v43))
      {
        v37 = 0;
        do
        {
          ++v37;
          sub_100025F38(v43);
        }

        while (!sub_100025F1C(v43));
      }

      if (v37 != *(*(a2 + 376) + 36))
      {
        ++v22;
        sub_100036630(a1);
        sub_100012128("%s:%d: %s omap snapshot count %d doesn't match snapshot tree record count %lld\n");
      }
    }

    sub_100037058(v45);
    goto LABEL_109;
  }

  if (sub_100036630(a1) == 13)
  {
    v34 = (a1 + 505);
  }

  else
  {
    v34 = (a1[48] + 212);
  }

  sub_100012128("%s:%d: %s unable to get omap snapshot tree: %d\n", "nx_check_omap", 891, v34, v16);
  v21 = v22 + 1 + *a4;
LABEL_110:
  *a4 = v21;
  return v16;
}

uint64_t sub_100009280(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, int a5, int *a6, int a7)
{
  v21 = 0;
  v22 = 0;
  v13 = sub_100036630(a1);
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
      v16 = sub_10003A1E8(*(v15 + 392), v20, *a4, &v21, 0, v14, v17, 0, &v23);
      if (v16)
      {
        if (sub_100036630(a1) == 13)
        {
          sub_100012178("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (a1 + 4040), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }

        else
        {
          sub_100012178("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (*(a1 + 384) + 212), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }
      }

      else
      {
        sub_100037058(v23);
      }
    }
  }

  return v16;
}

uint64_t sub_1000093F8(uint64_t *a1)
{
  memset(v49, 170, sizeof(v49));
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v2 = sub_100042E24(a1, &v49[2]);
  if (v2)
  {
    v3 = v2;
    sub_100012178("%s:%d: %s unable to get spaceman: %d\n");
    return v3;
  }

  v4 = *(v49[2] + 376);
  v5 = sub_100038020(v49[2]);
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
      v19 = sub_10003A1E8(a1[49], 0x40000000uLL, v18, &xmmword_10006A950, &v44, 0, 0, 0, &v46[2]);
      if (v19)
      {
        v21 = v19;
        sub_100012178("%s:%d: %s unable to read cib %lld @ %lld: %d\n", "nx_check_recent_sanity", 1152, (a1[48] + 212), v10, v18, v19);
        v3 = v21;
        goto LABEL_31;
      }

      sub_100037058(v46[2]);
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
      sub_100037058(v47);
      v47 = 0;
    }

    v46[0] = v4;
    v46[1] = __PAIR64__(v13, v6);
    v16 = sub_10003A1E8(a1[49], 0x40000000uLL, v15, &xmmword_10006A940, v46, 0, 0, 0, &v47);
    if (!v16)
    {
      v7 = v47[7];
      if (sub_100038020(v47) <= v43)
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
    sub_100012178("%s:%d: %s unable to read cab %d @ %lld: %d\n", "nx_check_recent_sanity", 1125, (a1[48] + 212), v13, v15, v16);
LABEL_31:
    if (v47)
    {
      sub_100037058(v47);
      v47 = 0;
    }
  }

  while (!(v3 | v6++));
  sub_100037058(v49[2]);
  if (v3)
  {
    return v3;
  }

  v24 = *(a1[47] + 160);
  if (v24)
  {
    v25 = sub_10003A1E8(a1[49], 0x40000000uLL, v24, &xmmword_10006A8D8, 0, 0, 0, 0, &v49[1]);
    if (v25)
    {
      v3 = v25;
      sub_100012178("%s:%d: %s unable to get omap: %d\n");
      return v3;
    }

    if (sub_100038020(v49[1]) <= v43)
    {
      sub_100037058(v49[1]);
    }

    else
    {
      v3 = sub_100009B00(a1, v49[1], v43);
      sub_100037058(v49[1]);
      if (v3)
      {
        sub_100012178("%s:%d: %s omap check failed with error: %d\n");
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

    v29 = sub_10003A1E8(a1[49], 0, v28, &xmmword_10006A8A8, 0, 0, 0, 0, v49);
    if (v29)
    {
      v41 = v29;
      sub_100012178("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check_recent_sanity", 1194, (a1[48] + 212), v27, v28, v29);
      return v41;
    }

    v30 = sub_100038020(v49[0]);
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

    v33 = sub_10003A1E8(a1[49], 0x40000000uLL, v32, &xmmword_10006A8D8, 0, v49[0], 0, 0, &v49[1]);
    if (!v33)
    {
      if (sub_100038020(v49[1]) <= v43)
      {
        sub_100037058(v49[1]);
        v31 = v49[0];
      }

      else
      {
        v34 = sub_100009B00(v49[0], v49[1], v43);
        sub_100037058(v49[1]);
        v31 = v49[0];
        if (v34)
        {
          sub_100012178("%s:%d: %s omap check failed for omap %lld: %d\n");
          goto LABEL_81;
        }
      }

LABEL_54:
      v35 = v31[47];
      v36 = *(v35 + 144);
      if (v36)
      {
        v48 = 0;
        v37 = sub_10002E52C(v31, v36, 0, &v48);
        if (v37)
        {
          v34 = v37;
          sub_100012178("%s:%d: %s unable to get extentref tree %lld: %d\n", "nx_check_recent_sanity", 1228, (v49[0] + 4040), *(*(v49[0] + 376) + 144), v37);
        }

        else if (sub_100038020(v48) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v38 = sub_10000DB54(v48, v43, 0, 0);
          v34 = v38;
          if (v38)
          {
            sub_100012178("%s:%d: %s extentref tree %lld: %d\n", "nx_check_recent_sanity", 1233, (v49[0] + 4040), *(*(v49[0] + 376) + 144), v38);
          }
        }

        if (v48)
        {
          sub_100037058(v48);
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
        v39 = sub_10002E570(v31, 0, &v48);
        if (v39)
        {
          v34 = v39;
          sub_100012178("%s:%d: %s unable to get snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1250, (v49[0] + 4040), *(*(v49[0] + 376) + 152), v39);
        }

        else if (sub_100038020(v48) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v40 = sub_10000DB54(v48, v43, 0, 0);
          v34 = v40;
          if (v40)
          {
            sub_100012178("%s:%d: %s snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1255, (v49[0] + 4040), *(*(v49[0] + 376) + 144), v40);
          }
        }

        if (v48)
        {
          sub_100037058(v48);
        }

        v31 = v49[0];
        if (v34)
        {
          goto LABEL_79;
        }
      }

LABEL_75:
      sub_100037058(v31);
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
  sub_100012178("%s:%d: %s unable to get omap %lld: %d\n");
LABEL_81:
  v42 = v49[0];
LABEL_82:
  sub_100037058(v42);
  return v34;
}

uint64_t sub_100009B00(uint64_t *a1, uint64_t a2, unint64_t a3)
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
  v15 = sub_10003DE40;
  DWORD2(v16) = 11;
  if (v8 != 2)
  {
    v9 = 22;
    goto LABEL_8;
  }

  v9 = sub_100026D00(a1, v8 & 0xFFFF0000, v7, 0, 0, &v15, 0, &v14);
  if (v9)
  {
LABEL_8:
    sub_100036630(a1);
    sub_100012178("%s:%d: %s unable to get omap tree: %d\n");
    return v9;
  }

  if (sub_100038020(v14) <= a3)
  {
    sub_100037058(v14);
  }

  else
  {
    v9 = sub_10000DB54(v14, a3, sub_100009280, 0);
    sub_100037058(v14);
    if (v9)
    {
      return v9;
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
  v15 = sub_10003DE9C;
  DWORD2(v16) = 19;
  if (v12 != 2)
  {
    v9 = 22;
    goto LABEL_17;
  }

  v9 = sub_100026D00(a1, v12 & 0xFFFF0000, v11, 0, 0, &v15, 0, &v14);
  if (v9)
  {
LABEL_17:
    sub_100036630(a1);
    sub_100012178("%s:%d: %s unable to get omap snapshot tree: %d\n");
    return v9;
  }

  if (sub_100038020(v14) <= a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_10000DB54(v14, a3, 0, 0);
  }

  sub_100037058(v14);
  return v9;
}

uint64_t sub_100009D78(void *a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v5 = a1[7];
  *a2 = (a1[50] >> 27) & 0x1F000;
  LODWORD(v5) = v5[25] + v5[23] + v5[27];
  *a3 = v5;
  v6 = *a2 >= v5;
  v7 = *a2 - v5;
  if (v6)
  {
    result = 0;
  }

  else
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v11 + 4040);
    }

    else
    {
      v12 = (*(*(*a1 + 392) + 384) + 212);
    }

    v14 = sub_100038018(a1);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): freespace %u larger than nodespace %u\n", "btree_node_space_stats", 52, v12, v14, *(a1[7] + 34), *a3, *a2);
    v7 = 0;
    result = 22;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_100009E68(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v7 = a2[7];
  if ((*(v7 + 32) & 2) != 0)
  {
    ++*(a4 + 4);
    *(a4 + 16) += *(v7 + 36);
  }

  else
  {
    ++*a4;
    *(a4 + 12) += *(v7 + 36);
  }

  if (*(a4 + 8) < a3)
  {
    *(a4 + 8) = a3;
  }

  v8 = *(v7 + 34);
  if (v8 <= 0xF)
  {
    ++*(a4 + 4 * v8 + 216);
  }

  v9 = sub_10001C8D4(a2, 0);
  if (!v9)
  {
    v32 = -1431655766;
    v33 = -1431655766;
    v31 = -1431655766;
    v9 = sub_100009D78(a2, &v33, &v32, &v31);
    v10 = v31;
    v11 = v33;
    v12 = 5 * v31 / v33;
    ++*(a4 + 4 * v12 + 20);
    v13 = *(a4 + 56) + v10;
    *(a4 + 48) += v11;
    *(a4 + 56) = v13;
    if ((*(a2[7] + 32) & 2) != 0)
    {
      ++*(a4 + 4 * v12 + 104);
      v15 = *(a4 + 136);
      *(a4 + 128) += v11;
      *(a4 + 136) = v15 + v10;
      if (*(v7 + 36))
      {
        v16 = 0;
        do
        {
          v17 = sub_10001D388(a2, v16);
          v18 = sub_10001D3DC(a2, v16);
          v19 = *(a1 + 392);
          if (*(v19 + 16) < v17)
          {
            if (v9)
            {
              v9 = v9;
            }

            else
            {
              v9 = 22;
            }

            v20 = a2[1];
            if (v20)
            {
              v21 = (v20 + 4040);
            }

            else
            {
              v21 = (*(*(*a2 + 392) + 384) + 212);
            }

            v22 = sub_100038018(a2);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): index %d key length %d longer than tree longest %d\n", "btree_node_debug_stats", 110, v21, v22, *(a2[7] + 34), v16, v17, *(*(a1 + 392) + 16));
            v19 = *(a1 + 392);
            v17 = *(v19 + 16);
          }

          if (v18 == 65534 || *(v19 + 20) < v18 && (v9 ? (v9 = v9) : (v9 = 22), (v23 = a2[1]) == 0 ? (v24 = (*(*(*a2 + 392) + 384) + 212)) : (v24 = (v23 + 4040)), v25 = sub_100038018(a2), sub_100012178("%s:%d: %s oid 0x%llx (level %d): index %d val length %d longer than tree longest %d\n", "btree_node_debug_stats", 115, v24, v25, *(a2[7] + 34), v16, v18, *(*(a1 + 392) + 20)), v19 = *(a1 + 392), v18 = *(v19 + 20), v18 == 65534))
          {
            v18 = 0;
          }

          if (*(a4 + 208) < v17)
          {
            *(a4 + 208) = v17;
          }

          if (*(a4 + 212) < v18)
          {
            *(a4 + 212) = v18;
          }

          *(a4 + 144) += v17;
          v26 = *(v19 + 16);
          v27 = (a4 + 180);
          if (v26)
          {
            v27 = (a4 + 160 + 4 * (5 * v17 / v26));
          }

          ++*v27;
          *(a4 + 152) += v18;
          v28 = *(v19 + 20);
          v29 = (a4 + 204);
          if (v28)
          {
            v29 = (a4 + 184 + 4 * (5 * v18 / v28));
          }

          ++*v29;
          ++v16;
        }

        while (v16 < *(v7 + 36));
      }
    }

    else
    {
      ++*(a4 + 4 * v12 + 64);
      v14 = *(a4 + 96) + v10;
      *(a4 + 88) += v11;
      *(a4 + 96) = v14;
    }
  }

  return v9;
}

uint64_t sub_10000A1F8(void *a1, unint64_t a2, _BYTE *a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, char a10, unsigned __int8 a11)
{
  if (!a5 || (v12 = a5[7]) == 0)
  {
    v19 = a5[1];
    if (v19)
    {
      v20 = (v19 + 4040);
    }

    else
    {
      v20 = (*(*(*a5 + 392) + 384) + 212);
    }

    sub_100012178("%s:%d: %s btree_node is null\n", "btree_node_check", 152, v20);
    return 22;
  }

  v15 = a6;
  v16 = a1;
  v284 = a2;
  v285 = a4;
  v287 = a3;
  v17 = a5[1];
  if (!v17)
  {
    v17 = *(*a5 + 392);
  }

  v286 = v17;
  if (a9)
  {
    a1 = sub_100009E68(a1, a5, a6, a9);
    v18 = a1;
    if (a1)
    {
      return v18;
    }
  }

  if (!v16 && (a5[4] & 1) == 0)
  {
    return 0;
  }

  v282 = a9;
  v281 = a11;
  v283 = v15;
  if (a11)
  {
LABEL_17:
    v294 = 0;
    v295 = 0xAAAAAAAAAAAAAAAALL;
    v293 = -21846;
    v292 = 0;
    v291 = 0;
    v22 = a5[7];
    v23 = v287;
    v24 = v285;
    if (v287 && *(v22 + 36))
    {
      v25 = sub_10001D454(v287, v285, &v295, &v293);
      if (v25)
      {
        v18 = v25;
        sub_100038018(v287);
LABEL_249:
        sub_100012178("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n");
        return v18;
      }

      v33 = sub_10001D454(a5, 0, &v294, &v292);
      if (v33)
      {
        v18 = v33;
        sub_100038018(a5);
        goto LABEL_249;
      }

      a1 = (a5[52])(v286, v295, v293, v294, v292, &v291);
      if (a1)
      {
        v18 = a1;
        sub_100038018(a5);
        sub_100012178("%s:%d: %s oid 0x%llx (level %d): minkey compare error: %d\n");
        return v18;
      }

      if (v291 >= 1)
      {
        sub_100038018(a5);
        sub_100012178("%s:%d: %s oid 0x%llx (level %d): minkey not correct\n");
        return 22;
      }

      if (v291)
      {
        sub_100038018(a5);
        sub_100012178("%s:%d: %s oid 0x%llx (level %d): minkey not in sync\n");
        return 22;
      }

      v22 = a5[7];
      v23 = v287;
      v24 = v285;
    }

    v81 = *(v22 + 36);
    if (v81 >= 2)
    {
      v279 = a7;
      v280 = a8;
      v18 = 0;
      for (i = 1; i < v81; ++i)
      {
        a1 = sub_10001D364(a5, (i - 1));
        if (a1 != 0xFFFF)
        {
          a1 = sub_10001D364(a5, i);
          if (a1 != 0xFFFF)
          {
            v83 = sub_10001D454(a5, (i - 1), &v295, &v293);
            if (v83)
            {
              v84 = v83;
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = v83;
              }

              v85 = a5[1];
              if (v85)
              {
                v86 = (v85 + 4040);
              }

              else
              {
                v86 = (*(*(*a5 + 392) + 384) + 212);
              }

              v87 = sub_100038018(a5);
              a1 = sub_100012178("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 536, v86, v87, *(a5[7] + 34), i - 1, v84);
            }

            else
            {
              a1 = sub_10001D454(a5, i, &v294, &v292);
              if (a1)
              {
                v88 = a1;
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = a1;
                }

                v89 = a5[1];
                if (v89)
                {
                  v90 = (v89 + 4040);
                }

                else
                {
                  v90 = (*(*(*a5 + 392) + 384) + 212);
                }

                v91 = sub_100038018(a5);
                a1 = sub_100012178("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 543, v90, v91, *(a5[7] + 34), i, v88);
              }
            }

            if (!v18)
            {
              a1 = (a5[52])(v286, v295, v293, v294, v292, &v291);
              if (a1)
              {
                v18 = a1;
                v92 = a5[1];
                if (v92)
                {
                  v93 = (v92 + 4040);
                }

                else
                {
                  v93 = (*(*(*a5 + 392) + 384) + 212);
                }

                v94 = sub_100038018(a5);
                a1 = sub_100012178("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n", "btree_node_check", 547, v93, v94, *(a5[7] + 34), i, v18);
              }

              else if (v291 < 0)
              {
                v18 = 0;
              }

              else
              {
                v95 = a5[1];
                if (v95)
                {
                  v96 = (v95 + 4040);
                }

                else
                {
                  v96 = (*(*(*a5 + 392) + 384) + 212);
                }

                v97 = sub_100038018(a5);
                a1 = sub_100012178("%s:%d: %s oid 0x%llx (level %d): keys out of order: %d\n", "btree_node_check", 550, v96, v97, *(a5[7] + 34), i);
                v18 = 22;
              }
            }
          }
        }

        v81 = *(a5[7] + 36);
      }

      a8 = v280;
      a7 = v279;
      v15 = v283;
      if (v18)
      {
        return v18;
      }

      v23 = v287;
      v24 = v285;
    }

    if (!v23)
    {
      goto LABEL_203;
    }

    a1 = sub_10001D454(a5, (v81 - 1), &v295, &v293);
    if (a1)
    {
      v98 = a1;
      v99 = a5[1];
      if (v99)
      {
        v100 = (v99 + 4040);
      }

      else
      {
        v100 = (*(*(*a5 + 392) + 384) + 212);
      }

      v101 = sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 559, v100, v101, *(a5[7] + 34), *(a5[7] + 36) - 1, v98);
      return 22;
    }

    if (*(*(v23 + 56) + 36) - 1 <= v24)
    {
      v294 = a7;
      v292 = a8;
      v102 = a8;
      v103 = a7;
    }

    else
    {
      a1 = sub_10001D454(v23, (v24 + 1), &v294, &v292);
      if (a1)
      {
        v18 = a1;
        sub_100038018(v287);
        goto LABEL_249;
      }

      v103 = v294;
      v102 = v292;
    }

    if (!v103 || !v102 || !v293)
    {
      goto LABEL_203;
    }

    a1 = (a5[52])(v286, v295);
    if (a1)
    {
      v18 = a1;
      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n");
      return v18;
    }

    if (v291 < 0)
    {
LABEL_203:
      if (v16)
      {
        v104 = a5[7];
        if ((*(v104 + 32) & 2) != 0 || *(v104 + 36))
        {
          v18 = 0;
        }

        else
        {
          v122 = a5[1];
          if (v122)
          {
            v123 = (v122 + 4040);
          }

          else
          {
            v123 = (*(*(*a5 + 392) + 384) + 212);
          }

          v124 = sub_100038018(a5);
          a1 = sub_100012178("%s:%d: %s oid 0x%llx (level %d): non-leaf node has no children?\n", "btree_node_check", 595, v123, v124, *(a5[7] + 34));
          v18 = 22;
        }

        if ((*(a5[7] + 32) & 2) == 0 && (a10 & 1) == 0)
        {
          v287 = v268;
          __chkstk_darwin(a1);
          v106 = &v268[-v105];
          bzero(&v268[-v105], v107);
          if (*(a5[7] + 36))
          {
            v280 = a8;
            v108 = v15;
            v109 = 0;
            LODWORD(v286) = v108 + 1;
            while (1)
            {
              if (sub_10001D364(a5, v109) != 0xFFFF && sub_10001D3B0(a5, v109) != 0xFFFF)
              {
                v110 = sub_10001D758(a5, v109, v106);
                if (v110)
                {
                  v111 = v110;
                  v112 = a7;
                  if (v18)
                  {
                    v18 = v18;
                  }

                  else
                  {
                    v18 = 22;
                  }

                  v113 = a5[1];
                  if (v113)
                  {
                    v114 = (v113 + 4040);
                  }

                  else
                  {
                    v114 = (*(*(*a5 + 392) + 384) + 212);
                  }

                  v115 = sub_100038018(a5);
                  sub_100012178("%s:%d: %s oid 0x%llx (level %d): can't get child %d oid: %d\n", "btree_node_check", 606, v114, v115, *(a5[7] + 34), v109, v111);
                  a7 = v112;
                }

                else if (*v106)
                {
                  v289 = a7;
                  v290 = 0xAAAAAAAAAAAAAAAALL;
                  v288 = v280;
                  v116 = a5[7];
                  if (v109 < *(v116 + 36) - 1)
                  {
                    v117 = sub_10001D454(a5, (v109 + 1), &v289, &v288);
                    if (v117)
                    {
                      v137 = v117;
                      if (v18)
                      {
                        v18 = v18;
                      }

                      else
                      {
                        v18 = 22;
                      }

                      v138 = a5[1];
                      if (v138)
                      {
                        v139 = (v138 + 4040);
                      }

                      else
                      {
                        v139 = (*(*(*a5 + 392) + 384) + 212);
                      }

                      v159 = sub_100038018(a5);
                      sub_100012178("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 625, v139, v159, *(a5[7] + 34), v109 + 1, v137);
                      return v18;
                    }

                    v116 = a5[7];
                  }

                  v118 = v284;
                  if (sub_10001D02C(v16, v106, v284, 0x202u, *(v116 + 34) - 1, 0, &v290))
                  {
                    v119 = 1;
                  }

                  else
                  {
                    v119 = v290 == 0;
                  }

                  if (v119)
                  {
                    if (v18)
                    {
                      v18 = v18;
                    }

                    else
                    {
                      v18 = 22;
                    }

                    sub_100038018(a5);
                    sub_100012178("%s:%d: %s oid 0x%llx (level %d): can't get child: 0x%llx\n");
                  }

                  else
                  {
                    v120 = sub_10000A1F8(v16, v118, a5, v109, v290, v286, v289, v288, v282, 0, v281);
                    if (v18)
                    {
                      v121 = 1;
                    }

                    else
                    {
                      v121 = v120 == 0;
                    }

                    if (v121)
                    {
                      v18 = v18;
                    }

                    else
                    {
                      v18 = v120;
                    }

                    sub_10003C190(v290, 1);
                    sub_100037058(v290);
                  }
                }

                else
                {
                  if (v18)
                  {
                    v18 = v18;
                  }

                  else
                  {
                    v18 = 22;
                  }

                  sub_100038018(a5);
                  sub_100012178("%s:%d: %s oid 0x%llx (level %d): invalid child oid: 0x%llx\n");
                }
              }

              if (++v109 >= *(a5[7] + 36))
              {
                return v18;
              }
            }
          }
        }

        return v18;
      }

      return 0;
    }

    sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): node's max key is not less than next sibling's entry in parent\n");
    return 22;
  }

  v18 = 0;
  if (v287 && (*(v12 + 32) & 1) != 0)
  {
    v26 = a5[1];
    if (v26)
    {
      v27 = (v26 + 4040);
    }

    else
    {
      v27 = (*(*(*a5 + 392) + 384) + 212);
    }

    v28 = sub_100038018(a5);
    v29 = *(a5[7] + 34);
    v30 = sub_100038018(v287);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): root node has a parent 0x%llx (level %d)\n", "btree_node_check", 183, v27, v28, v29, v30, *(*(v287 + 7) + 34));
    v18 = 22;
    v15 = v283;
  }

  if ((*(v12 + 32) & 2) != 0 && *(v12 + 34))
  {
    v31 = a5[1];
    if (v31)
    {
      v32 = (v31 + 4040);
    }

    else
    {
      v32 = (*(*(*a5 + 392) + 384) + 212);
    }

    v34 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): leaf node has non-zero level\n", "btree_node_check", 186, v32, v34, *(v12 + 34));
    v18 = 22;
  }

  if (v16)
  {
    if (*(a5[7] + 34) > *(v16[7] + 34))
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      v35 = a5[1];
      if (v35)
      {
        v36 = (v35 + 4040);
      }

      else
      {
        v36 = (*(*(*a5 + 392) + 384) + 212);
      }

      v37 = sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): node level greater than root level %d\n", "btree_node_check", 189, v36, v37, *(v12 + 34), *(v16[7] + 34));
    }

    v38 = v15 - 1;
    if (*(v16[7] + 34) - (v15 - 1) != *(a5[7] + 34))
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      v39 = a5[1];
      if (v39)
      {
        v40 = (v39 + 4040);
      }

      else
      {
        v40 = (*(*(*a5 + 392) + 384) + 212);
      }

      v41 = sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): node level should be %d\n", "btree_node_check", 192, v40, v41, *(v12 + 34), *(v16[7] + 34) - v38);
    }
  }

  if (*(v12 + 32))
  {
    v42 = -96;
  }

  else
  {
    v42 = -56;
  }

  v43 = v42 + ((a5[50] >> 27) & 0xF000);
  if (*(v12 + 40))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v44 = a5[1];
    if (v44)
    {
      v45 = (v44 + 4040);
    }

    else
    {
      v45 = (*(*(*a5 + 392) + 384) + 212);
    }

    v46 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): invalid table space offset\n", "btree_node_check", 203, v45, v46, *(a5[7] + 34));
  }

  if (*(v12 + 42) > v43)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v47 = a5[1];
    if (v47)
    {
      v48 = (v47 + 4040);
    }

    else
    {
      v48 = (*(*(*a5 + 392) + 384) + 212);
    }

    v49 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): table space length larger than available data space\n", "btree_node_check", 206, v48, v49, *(a5[7] + 34));
  }

  if ((*(v12 + 32) & 4) == 0)
  {
    v50 = *(v12 + 42);
    if (v50 < 8 * sub_10001D2A4(a5))
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): table space length smaller than minimum\n");
      return v18;
    }
  }

  if (v18)
  {
    return v18;
  }

  v51 = (v43 - *(v12 + 42));
  if (*(v12 + 44) <= (v43 - *(v12 + 42)))
  {
    v18 = 0;
  }

  else
  {
    v52 = a5[1];
    if (v52)
    {
      v53 = (v52 + 4040);
    }

    else
    {
      v53 = (*(*(*a5 + 392) + 384) + 212);
    }

    v54 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): free space offset too large\n", "btree_node_check", 218, v53, v54, *(a5[7] + 34));
    v18 = 22;
  }

  if (*(v12 + 46) + *(v12 + 44) > v51)
  {
    v55 = a5[1];
    if (v55)
    {
      v56 = (v55 + 4040);
    }

    else
    {
      v56 = (*(*(*a5 + 392) + 384) + 212);
    }

    v57 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): free space extends beyond end of node\n", "btree_node_check", 221, v56, v57, *(a5[7] + 34));
    v18 = 22;
  }

  v278 = *(v12 + 44);
  v58 = *(v12 + 46);
  if (*(v12 + 36) > v51)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v59 = a5[1];
    if (v59)
    {
      v60 = (v59 + 4040);
    }

    else
    {
      v60 = (*(*(*a5 + 392) + 384) + 212);
    }

    v61 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): key count larger than possible\n", "btree_node_check", 228, v60, v61, *(a5[7] + 34));
  }

  v62 = *(v12 + 36);
  v277 = v51;
  if (v62 > v278 && (*(v12 + 32) & 0x80000000) == 0)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v63 = a5[1];
    if (v63)
    {
      v64 = (v63 + 4040);
    }

    else
    {
      v64 = (*(*(*a5 + 392) + 384) + 212);
    }

    v65 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): key count larger than gross key space\n", "btree_node_check", 231, v64, v65, *(a5[7] + 34));
  }

  v66 = *(v12 + 36);
  v67 = *(v12 + 42);
  if (v66 > v67 / sub_10001D2A4(a5))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): key count larger than TOC space\n");
    return v18;
  }

  if (v18)
  {
    return v18;
  }

  if (a5[47] == v12 + 56)
  {
    v18 = 0;
  }

  else
  {
    v68 = a5[1];
    if (v68)
    {
      v69 = (v68 + 4040);
    }

    else
    {
      v69 = (*(*(*a5 + 392) + 384) + 212);
    }

    v70 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): invalid TOC[] pointer\n", "btree_node_check", 242, v69, v70, *(a5[7] + 34));
    v18 = 22;
  }

  if (a5[48] != v12 + 56 + *(v12 + 42))
  {
    v71 = a5[1];
    if (v71)
    {
      v72 = (v71 + 4040);
    }

    else
    {
      v72 = (*(*(*a5 + 392) + 384) + 212);
    }

    v73 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): invalid keys[] pointer\n", "btree_node_check", 245, v72, v73, *(a5[7] + 34));
    v18 = 22;
  }

  if ((*(v12 + 32) & 1) != 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000) - 40)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v74 = a5[1];
    if (v74)
    {
      v75 = (v74 + 4040);
    }

    else
    {
      v75 = (*(*(*a5 + 392) + 384) + 212);
    }

    v76 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n", "btree_node_check", 248, v75, v76, *(a5[7] + 34));
  }

  if ((*(v12 + 32) & 1) == 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n");
    return v18;
  }

  if (v18)
  {
    return v18;
  }

  v77 = v278 + v58;
  if (*(v12 + 50) <= v278)
  {
    v18 = 0;
    v80 = v277;
  }

  else
  {
    v78 = a5[1];
    if (v78)
    {
      v79 = (v78 + 4040);
    }

    else
    {
      v79 = (*(*(*a5 + 392) + 384) + 212);
    }

    v80 = v277;
    v125 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): key free list space larger than key space available\n", "btree_node_check", 259, v79, v125, *(a5[7] + 34));
    v18 = 22;
  }

  v126 = v80 - v77;
  v127 = *(v12 + 48);
  if (v127 != 0xFFFF && v278 - 4 < v127)
  {
    v128 = a5[1];
    if (v128)
    {
      v129 = (v128 + 4040);
    }

    else
    {
      v129 = (*(*(*a5 + 392) + 384) + 212);
    }

    v130 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): key free list head beyond key space available\n", "btree_node_check", 263, v129, v130, *(a5[7] + 34));
    v18 = 22;
  }

  if (*(v12 + 54) > v126)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v131 = a5[1];
    if (v131)
    {
      v132 = (v131 + 4040);
    }

    else
    {
      v132 = (*(*(*a5 + 392) + 384) + 212);
    }

    v133 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): val free list space larger than val space available\n", "btree_node_check", 266, v132, v133, *(a5[7] + 34));
  }

  v134 = *(v12 + 52);
  if (v134 != 0xFFFF)
  {
    if (v134 > v126)
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      v135 = a5[1];
      if (v135)
      {
        v136 = (v135 + 4040);
      }

      else
      {
        v136 = (*(*(*a5 + 392) + 384) + 212);
      }

      v140 = sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): val free list head beyond val space available\n", "btree_node_check", 270, v136, v140, *(a5[7] + 34));
      v134 = *(v12 + 52);
    }

    if (v134 <= 3)
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): val free list head beyond end of node\n");
      return v18;
    }
  }

  if (v18)
  {
    return v18;
  }

  v276 = v278 - 4;
  v141 = sub_1000122F4((v277 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
  v142 = sub_1000122F4((v277 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
  v274 = (v277 + 63) >> 6;
  v275 = v142;
  if (!v141 || !v142)
  {
    v156 = a5[1];
    if (v156)
    {
      v157 = (v156 + 4040);
    }

    else
    {
      v157 = (*(*(*a5 + 392) + 384) + 212);
    }

    v158 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): couldn't allocate bitmap to check btree node space usage\n", "btree_node_check", 286, v157, v158, *(a5[7] + 34));
    v18 = 12;
    goto LABEL_343;
  }

  v273 = v126;
  v279 = a7;
  v280 = a8;
  sub_10001C098(v141, *(v12 + 44), *(v12 + 46), v143);
  v144 = 0;
  LOWORD(v145) = *(v12 + 48);
  v146 = v141;
  while (1)
  {
    v147 = v145;
    if (v145 == 0xFFFF)
    {
      break;
    }

    if (v145 >= v278 || v276 < v145)
    {
      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): key free list entry starts beyond key space available\n");
LABEL_341:
      v18 = 22;
      goto LABEL_342;
    }

    v148 = (a5[48] + v145);
    v149 = v148[1];
    if (v149 <= 3)
    {
LABEL_339:
      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): key free list entry len value too small\n");
      goto LABEL_341;
    }

    v150 = v149 + v145;
    if (v150 > v278)
    {
      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): key free list entry extends beyond key space available\n");
      goto LABEL_341;
    }

    if (!sub_10001BFA8(v141, v147, v149, v150))
    {
      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): key free list entry overlaps with other free space\n");
      goto LABEL_341;
    }

    sub_10001C098(v141, v147, v148[1], v151);
    v144 += v148[1];
    v152 = *(v12 + 50);
    if (v144 <= v152)
    {
      v18 = 0;
    }

    else
    {
      v153 = a5[1];
      if (v153)
      {
        v154 = (v153 + 4040);
      }

      else
      {
        v154 = (*(*(*a5 + 392) + 384) + 212);
      }

      v155 = sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): key free list entries total space exceeds free list space\n", "btree_node_check", 326, v154, v155, *(a5[7] + 34));
      v18 = 22;
    }

    v145 = *v148;
    if (v147 == v145)
    {
LABEL_340:
      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): key free list entry points to itself\n");
      goto LABEL_341;
    }

    v141 = v146;
    if (v144 > v152)
    {
      goto LABEL_343;
    }
  }

  v160 = 0;
  LOWORD(v161) = *(v12 + 52);
  while (1)
  {
    v162 = v161;
    if (v161 == 0xFFFF)
    {
      break;
    }

    if (v161 <= 3u)
    {
      v163 = a5[1];
      if (v163)
      {
        v164 = (v163 + 4040);
      }

      else
      {
        v164 = (*(*(*a5 + 392) + 384) + 212);
      }

      v165 = sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): val free list entry beyond end of node\n", "btree_node_check", 342, v164, v165, *(a5[7] + 34));
      v18 = 22;
    }

    else
    {
      v18 = 0;
    }

    if (v162 > v273)
    {
      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): val free list entry starts beyond val space available\n");
      goto LABEL_341;
    }

    v141 = v146;
    if (v162 < 4)
    {
      goto LABEL_343;
    }

    v166 = (a5[49] - v162);
    v167 = v166[1];
    if (v167 <= 3)
    {
      goto LABEL_339;
    }

    if (v162 < v167)
    {
      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): val free list entry extends beyond val space available\n");
      goto LABEL_341;
    }

    v168 = v277 - v162;
    v169 = v168;
    if (!sub_10001BFA8(v146, v168, v167, v168))
    {
      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): val free list entry overlaps with other free space\n");
      goto LABEL_341;
    }

    sub_10001C098(v146, v169, v166[1], v170);
    v160 += v166[1];
    v171 = *(v12 + 54);
    if (v160 <= v171)
    {
      v18 = 0;
    }

    else
    {
      v172 = a5[1];
      if (v172)
      {
        v173 = (v172 + 4040);
      }

      else
      {
        v173 = (*(*(*a5 + 392) + 384) + 212);
      }

      v174 = sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): val free list entries total space exceeds free list space\n", "btree_node_check", 372, v173, v174, *(a5[7] + 34));
      v18 = 22;
    }

    v161 = *v166;
    if (v162 == v161)
    {
      goto LABEL_340;
    }

    v141 = v146;
    if (v160 > v171)
    {
      goto LABEL_343;
    }
  }

  if ((*(v12 + 32) & 4) != 0 && (*(a5 + 401) & 0x7FFE) == 0)
  {
    v177 = a5[1];
    if (v177)
    {
      v178 = (v177 + 4040);
    }

    else
    {
      v178 = (*(*(*a5 + 392) + 384) + 212);
    }

    v179 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says key size is variable\n", "btree_node_check", 387, v178, v179, *(a5[7] + 34));
    v18 = 22;
  }

  else
  {
    v18 = 0;
  }

  if ((*(a5[7] + 32) & 2) == 0 && (*(a5 + 401) & 0x7FFE) != 0 && (*(v12 + 32) & 4) == 0)
  {
    v175 = a5[1];
    if (v175)
    {
      v176 = (v175 + 4040);
    }

    else
    {
      v176 = (*(*(*a5 + 392) + 384) + 212);
    }

    v180 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): tree says key size is fixed, but node says kv size is variable\n", "btree_node_check", 390, v176, v180, *(a5[7] + 34));
    v18 = 22;
  }

  if ((*(v12 + 32) & 4) != 0 && (*(a5[7] + 32) & 2) != 0 && (*(a5 + 401) & 0x7FFF8000) == 0)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v181 = a5[1];
    if (v181)
    {
      v182 = (v181 + 4040);
    }

    else
    {
      v182 = (*(*(*a5 + 392) + 384) + 212);
    }

    v183 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says val size is variable\n", "btree_node_check", 393, v182, v183, *(a5[7] + 34));
  }

  v184 = a5[7];
  v185 = *(v184 + 32);
  if ((v185 & 2) != 0)
  {
    v229 = a5[50];
    if ((v229 & 0x7FFF800000) != 0 && (v229 & 4) == 0 && (v229 & 0x7FFE00) != 0 && (*(v12 + 32) & 4) == 0)
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): tree says kv sizes are fixed, but leaf says kv size is variable\n");
      goto LABEL_342;
    }
  }

  v141 = v146;
  if (v18)
  {
    goto LABEL_343;
  }

  v186 = a5[47];
  if ((*(v12 + 32) & 4) == 0)
  {
    if (*(v184 + 36))
    {
      v187 = 0;
      v188 = (v186 + 4);
      while (1)
      {
        v189 = *(v188 - 2);
        v276 = *v188;
        v190 = v188[1];
        if (v189 == 0xFFFF)
        {
          if ((*(v12 + 32) & 0x80000000) == 0)
          {
            sub_100038018(a5);
            goto LABEL_577;
          }

          v18 = 0;
        }

        else
        {
          v191 = *(v188 - 1);
          v192 = *(v184 + 32);
          if ((v192 & 2) != 0 && (v16 && *(v16[49] + 16) < v191 || (v192 & 1) != 0 && *(a5[49] + 16) < v191))
          {
            v193 = a5[1];
            if (v193)
            {
              v194 = (v193 + 4040);
            }

            else
            {
              v194 = (*(*(*a5 + 392) + 384) + 212);
            }

            v195 = sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 475, v194, v195, *(a5[7] + 34));
            v18 = 22;
          }

          else
          {
            v18 = 0;
          }

          if (v189 >= v278)
          {
            v196 = a5[1];
            if (v196)
            {
              v197 = (v196 + 4040);
            }

            else
            {
              v197 = (*(*(*a5 + 392) + 384) + 212);
            }

            v198 = sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 475, v197, v198, *(a5[7] + 34));
            v18 = 22;
          }

          v199 = (v191 + v189);
          if (v199 <= v278)
          {
            if (!v18)
            {
              if (sub_10001BFA8(v146, v189, v191, v199))
              {
                v18 = 0;
              }

              else
              {
                v204 = a5[1];
                if (v204)
                {
                  v205 = (v204 + 4040);
                }

                else
                {
                  v205 = (*(*(*a5 + 392) + 384) + 212);
                }

                v206 = sub_100038018(a5);
                sub_100012178("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 475, v205, v206, *(a5[7] + 34));
                v18 = 22;
              }

              if (!sub_10001BFA8(v275, v189, v191, v202))
              {
                v207 = a5[1];
                if (v207)
                {
                  v208 = (v207 + 4040);
                }

                else
                {
                  v208 = (*(*(*a5 + 392) + 384) + 212);
                }

                v209 = sub_100038018(a5);
                sub_100012178("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 475, v208, v209, *(a5[7] + 34));
                v18 = 22;
              }

              v210 = a5[50];
              if ((v210 & 0x40) != 0)
              {
                v211 = v191;
              }

              else
              {
                v211 = (v191 + 7) & 0x1FFF8;
              }

              sub_10001C098(v275, v189, v211, v210);
            }
          }

          else
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            v200 = a5[1];
            if (v200)
            {
              v201 = (v200 + 4040);
            }

            else
            {
              v201 = (*(*(*a5 + 392) + 384) + 212);
            }

            v203 = sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 475, v201, v203, *(a5[7] + 34));
          }
        }

        if (v276 > 0xFFFD)
        {
          if (v190 && v190 != 65534)
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): invalid val offset has non-zero length\n");
            goto LABEL_342;
          }
        }

        else
        {
          v212 = *(a5[7] + 32);
          if ((v212 & 2) != 0 && (v16 && *(v16[49] + 20) < v190 || (v212 & 1) != 0 && *(a5[49] + 20) < v190))
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            v213 = a5[1];
            if (v213)
            {
              v214 = (v213 + 4040);
            }

            else
            {
              v214 = (*(*(*a5 + 392) + 384) + 212);
            }

            v215 = sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 478, v214, v215, *(a5[7] + 34));
          }

          if (v276 > v273)
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            v216 = a5[1];
            if (v216)
            {
              v217 = (v216 + 4040);
            }

            else
            {
              v217 = (*(*(*a5 + 392) + 384) + 212);
            }

            v218 = sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 478, v217, v218, *(a5[7] + 34));
          }

          if (v276 < v190)
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            sub_100038018(a5);
            goto LABEL_576;
          }

          v141 = v146;
          if (v18)
          {
            goto LABEL_343;
          }

          v219 = v277 - v276;
          if (sub_10001BFA8(v146, v277 - v276, v190, v277))
          {
            v18 = 0;
          }

          else
          {
            v221 = a5[1];
            if (v221)
            {
              v222 = (v221 + 4040);
            }

            else
            {
              v222 = (*(*(*a5 + 392) + 384) + 212);
            }

            v223 = sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 478, v222, v223, *(a5[7] + 34));
            v18 = 22;
          }

          if (!sub_10001BFA8(v275, v219, v190, v220))
          {
            v224 = a5[1];
            if (v224)
            {
              v225 = (v224 + 4040);
            }

            else
            {
              v225 = (*(*(*a5 + 392) + 384) + 212);
            }

            v226 = sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 478, v225, v226, *(a5[7] + 34));
            v18 = 22;
          }

          v227 = a5[50];
          if ((v227 & 0x40) != 0)
          {
            v228 = v190;
          }

          else
          {
            v228 = (v190 + 7) & 0x1FFF8;
          }

          sub_10001C098(v275, v219, v228, v227);
        }

        v141 = v146;
        if (v18)
        {
          goto LABEL_343;
        }

        v188 += 4;
        ++v187;
        v184 = a5[7];
        if (v187 >= *(v184 + 36))
        {
          goto LABEL_561;
        }
      }
    }

    goto LABEL_561;
  }

  v230 = a5[50];
  if ((v185 & 2) != 0)
  {
    v231 = v230 >> 23;
  }

  else
  {
    v231 = 8;
  }

  if (!*(v184 + 36))
  {
LABEL_561:
    sub_1000123F8(v146, 8 * v274);
    sub_1000123F8(v275, 8 * v274);
    a8 = v280;
    a7 = v279;
    v15 = v283;
    goto LABEL_17;
  }

  v232 = 0;
  v272 = (v230 >> 9) & 0x3FFF;
  v269 = (v272 + 7) & 0x7FF8;
  v271 = v231;
  v270 = (v231 + 7) & 0x1FFF8;
  v233 = (v186 + 2);
  while (1)
  {
    v234 = *(v233 - 1);
    v276 = *v233;
    if (v234 == 0xFFFF)
    {
      if ((*(v12 + 32) & 0x80000000) == 0)
      {
        sub_100038018(a5);
LABEL_577:
        sub_100012178("%s:%d: %s oid 0x%llx (level %d): invalid key offset\n");
        goto LABEL_341;
      }

      v18 = 0;
    }

    else
    {
      v235 = *(v184 + 32);
      if ((v235 & 2) != 0 && (v16 && *(v16[49] + 16) < v272 || (v235 & 1) != 0 && *(a5[49] + 16) < v272))
      {
        v236 = a5[1];
        if (v236)
        {
          v237 = (v236 + 4040);
        }

        else
        {
          v237 = (*(*(*a5 + 392) + 384) + 212);
        }

        v238 = sub_100038018(a5);
        sub_100012178("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 452, v237, v238, *(a5[7] + 34));
        v18 = 22;
      }

      else
      {
        v18 = 0;
      }

      if (v234 >= v278)
      {
        v239 = a5[1];
        if (v239)
        {
          v240 = (v239 + 4040);
        }

        else
        {
          v240 = (*(*(*a5 + 392) + 384) + 212);
        }

        v241 = sub_100038018(a5);
        sub_100012178("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 452, v240, v241, *(a5[7] + 34));
        v18 = 22;
      }

      if (v272 + v234 <= v278)
      {
        if (!v18)
        {
          if (sub_10001BFA8(v146, v234, v272, &v296))
          {
            v18 = 0;
          }

          else
          {
            v245 = a5[1];
            if (v245)
            {
              v246 = (v245 + 4040);
            }

            else
            {
              v246 = (*(*(*a5 + 392) + 384) + 212);
            }

            v247 = sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 452, v246, v247, *(a5[7] + 34));
            v18 = 22;
          }

          if (!sub_10001BFA8(v275, v234, v272, &v296))
          {
            v248 = a5[1];
            if (v248)
            {
              v249 = (v248 + 4040);
            }

            else
            {
              v249 = (*(*(*a5 + 392) + 384) + 212);
            }

            v250 = sub_100038018(a5);
            sub_100012178("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 452, v249, v250, *(a5[7] + 34));
            v18 = 22;
          }

          if ((a5[50] & 0x40) != 0)
          {
            v251 = v272;
          }

          else
          {
            v251 = v269;
          }

          sub_10001C098(v275, v234, v251, v269);
        }
      }

      else
      {
        v18 = v18 ? v18 : 22;
        v242 = a5[1];
        v243 = (v242 ? v242 + 4040 : *(*(*a5 + 392) + 384) + 212);
        v244 = sub_100038018(a5);
        sub_100012178("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 452, v243, v244, *(a5[7] + 34));
      }
    }

    if (v276 <= 0xFFFD)
    {
      break;
    }

LABEL_559:
    v141 = v146;
    if (v18)
    {
      goto LABEL_343;
    }

    v233 += 2;
    ++v232;
    v184 = a5[7];
    if (v232 >= *(v184 + 36))
    {
      goto LABEL_561;
    }
  }

  v252 = *(a5[7] + 32);
  if ((v252 & 2) != 0 && (v16 && *(v16[49] + 20) < v271 || (v252 & 1) != 0 && *(a5[49] + 20) < v271))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v253 = a5[1];
    if (v253)
    {
      v254 = (v253 + 4040);
    }

    else
    {
      v254 = (*(*(*a5 + 392) + 384) + 212);
    }

    v255 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 455, v254, v255, *(a5[7] + 34));
  }

  if (v276 > v273)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v256 = a5[1];
    if (v256)
    {
      v257 = (v256 + 4040);
    }

    else
    {
      v257 = (*(*(*a5 + 392) + 384) + 212);
    }

    v258 = sub_100038018(a5);
    sub_100012178("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 455, v257, v258, *(a5[7] + 34));
  }

  if (v276 >= v231)
  {
    v141 = v146;
    if (v18)
    {
      goto LABEL_343;
    }

    v259 = v277 - v276;
    if (sub_10001BFA8(v146, v277 - v276, v231, v277))
    {
      v18 = 0;
    }

    else
    {
      v261 = a5[1];
      if (v261)
      {
        v262 = (v261 + 4040);
      }

      else
      {
        v262 = (*(*(*a5 + 392) + 384) + 212);
      }

      v263 = sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 455, v262, v263, *(a5[7] + 34));
      v18 = 22;
    }

    if (!sub_10001BFA8(v275, v259, v231, v260))
    {
      v264 = a5[1];
      if (v264)
      {
        v265 = (v264 + 4040);
      }

      else
      {
        v265 = (*(*(*a5 + 392) + 384) + 212);
      }

      v266 = sub_100038018(a5);
      sub_100012178("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 455, v265, v266, *(a5[7] + 34));
      v18 = 22;
    }

    if ((a5[50] & 0x40) != 0)
    {
      v267 = v271;
    }

    else
    {
      v267 = v270;
    }

    sub_10001C098(v275, v259, v267, v271);
    goto LABEL_559;
  }

  if (v18)
  {
    v18 = v18;
  }

  else
  {
    v18 = 22;
  }

  sub_100038018(a5);
LABEL_576:
  sub_100012178("%s:%d: %s oid 0x%llx (level %d): val location extends beyond val space\n");
LABEL_342:
  v141 = v146;
LABEL_343:
  if (v141)
  {
    sub_1000123F8(v141, (8 * v274));
  }

  if (v275)
  {
    sub_1000123F8(v275, (8 * v274));
  }

  return v18;
}

uint64_t sub_10000CF38(FILE *a1, void *a2, unint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  if (sub_100036630(a2) == 2)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v10 = sub_10000A1F8(a2, a3, 0, 0, a2, 1u, 0, 0, &v17, 0, 0);
    v11 = v10;
    if (*(a2[49] + 24) != v18)
    {
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 22;
      }

      v12 = a2[1];
      if (v12)
      {
        v13 = (v12 + 4040);
      }

      else
      {
        v13 = (*(*(*a2 + 392) + 384) + 212);
      }

      v14 = sub_100038018(a2);
      sub_100012178("%s:%d: %s oid 0x%llx: btree key count (%llu) doesn't match # leaf entries (%u)\n", "btree_check_ext", 681, v13, v14, *(a2[49] + 24), v18);
    }

    if (*(a2[49] + 32) == DWORD1(v17) + v17)
    {
      if (v5 && a4 && !v11)
      {
        if (a1)
        {
          v15 = a1;
        }

        else
        {
          v15 = __stdoutp;
        }

        sub_10000D190(v15, a2, &v17, v5);
      }
    }

    else
    {
      if (v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = 22;
      }

      sub_100038018(a2);
      sub_100012178("%s:%d: %s oid 0x%llx: btree node count (%llu) doesn't match # nodes traversed (%u)\n");
    }
  }

  else
  {
    v11 = 22;
    if (a2[1])
    {
      sub_100012178("%s:%d: %s btree check called with non-root btree node: %d\n");
    }

    else
    {
      sub_100012178("%s:%d: %s btree check called with non-root btree node: %d\n", "btree_check_ext", 672, (*(*(*a2 + 392) + 384) + 212), 22);
    }
  }

  return v11;
}

uint64_t sub_10000D190(FILE *a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (a1)
  {
    a4 = 5;
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = __stdoutp;
  }

  if (a4 >= 2)
  {
    v8 = *(a2 + 392);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v10 + 8;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v12 = 16;
      v13 = 8;
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = 8;
    }

    v15 = v14 + v13;
    v16 = *a3;
    if (*a3 <= 1u)
    {
      v16 = 1;
    }

    fprintf(v7, "nodesize: %d  dataspace: %d  key size: %d  val size: %d  max keys: node %d leaf %d  avg keys: node %d leaf %d\n", v9, v9 - 56, v10, v11, (v9 - 56) / v12, (v9 - 56) / v15, a3[3] / v16, a3[4] / a3[1]);
  }

  v18 = *(a3 + 11);
  v19 = v18;
  if (!v18)
  {
    v19 = 1.0;
  }

  v20 = *(a3 + 12) * 100.0 / v19;
  v21 = *(a3 + 16);
  v22 = v21;
  if (!v21)
  {
    v22 = 1.0;
  }

  v17 = a3[1];
  result = fprintf(v7, "levels: %d  keys: %lld  nodes: total %d  internal: %d (%.2f%%)  leaves: %d (%.2f%%)  usage: %.2f%% (%.2f%% %.2f%%)\n", a3[2], *(*(a2 + 392) + 24), v17 + *a3, *a3, *a3 * 100.0 / (v17 + *a3), v17, v17 * 100.0 / (v17 + *a3), *(a3 + 7) * 100.0 / *(a3 + 6), v20, *(a3 + 17) * 100.0 / v22);
  if (a4 > 2)
  {
    v24 = 0;
    v25 = 0;
    v26 = a3 + 54;
    do
    {
      if (v26[v24])
      {
        if (v24)
        {
          result = fprintf(v7, "level %d: %d nodes %.2f average descendents\n");
        }

        else
        {
          result = fprintf(v7, "level %d: %d nodes\n");
        }

        v25 += v26[v24];
      }

      ++v24;
    }

    while (v24 != 16);
  }

  if (a4 >= 2)
  {
    LODWORD(v27) = a3[4];
    v27 = v27 <= 1 ? 1 : v27;
    result = fprintf(v7, "key/val sizes:  tree max k:%d v:%d  max k:%d v:%d  avg k:%llu v:%llu\n", *(*(a2 + 392) + 16), *(*(a2 + 392) + 20), a3[52], a3[53], *(a3 + 18) / v27, *(a3 + 19) / v27);
    if (a4 >= 4)
    {
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v66 = v28;
      v67 = v28;
      v64 = v28;
      v65 = v28;
      *__str = v28;
      v63 = v28;
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 16) / 5u);
      snprintf(&v63, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v64, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v65, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v66, 0x10uLL, "<%d", *(*(a2 + 392) + 16));
      snprintf(&v67, 0x10uLL, "=%d", *(*(a2 + 392) + 16));
      fprintf(v7, "    keys: %9s %9s %9s %9s %9s %9s\n", __str, &v63, &v64, &v65, &v66, &v67);
      fprintf(v7, "    keys: %9d %9d %9d %9d %9d %9d\n", a3[40], a3[41], a3[42], a3[43], a3[44], a3[45]);
      LODWORD(v34) = a3[40];
      v35 = a3[4];
      v36 = v35;
      v37 = v34 * 100.0;
      if (!v35)
      {
        v36 = 1.0;
      }

      LODWORD(v29) = a3[41];
      LODWORD(v30) = a3[42];
      LODWORD(v31) = a3[43];
      LODWORD(v32) = a3[44];
      LODWORD(v33) = a3[45];
      fprintf(v7, "    keys: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v37 / v36, v29 * 100.0 / v36, v30 * 100.0 / v36, v31 * 100.0 / v36, v32 * 100.0 / v36, v33 * 100.0 / v36);
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 20) / 5u);
      snprintf(&v63, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v64, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v65, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v66, 0x10uLL, "<%d", *(*(a2 + 392) + 20));
      snprintf(&v67, 0x10uLL, "=%d", *(*(a2 + 392) + 20));
      fprintf(v7, "  values: %9s %9s %9s %9s %9s %9s\n", __str, &v63, &v64, &v65, &v66, &v67);
      fprintf(v7, "  values: %9d %9d %9d %9d %9d %9d\n", a3[46], a3[47], a3[48], a3[49], a3[50], a3[51]);
      LODWORD(v43) = a3[46];
      v44 = v43 * 100.0;
      v45 = a3[4];
      v46 = v45;
      if (!v45)
      {
        v46 = 1.0;
      }

      LODWORD(v38) = a3[47];
      LODWORD(v39) = a3[48];
      LODWORD(v40) = a3[49];
      LODWORD(v41) = a3[50];
      LODWORD(v42) = a3[51];
      fprintf(v7, "  values: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v44 / v46, v38 * 100.0 / v46, v39 * 100.0 / v46, v40 * 100.0 / v46, v41 * 100.0 / v46, v42 * 100.0 / v46);
      fprintf(v7, "capacity: all    %llu / %llu => %.2f %% used\n", *(a3 + 7), *(a3 + 6), *(a3 + 7) * 100.0 / *(a3 + 6));
      if (a4 == 4)
      {
        fprintf(v7, "capacity: nodes  %llu / %llu => %.2f %% used\n");
      }

      else
      {
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[5], a3[6], a3[7], a3[8], a3[9], a3[10]);
        LODWORD(v47) = a3[5];
        LODWORD(v48) = a3[6];
        v49 = a3[1] + *a3;
        LODWORD(v50) = a3[7];
        LODWORD(v51) = a3[8];
        LODWORD(v52) = a3[9];
        LODWORD(v53) = a3[10];
        fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v47 * 100.0 / v49, v48 * 100.0 / v49, v50 * 100.0 / v49, v51 * 100.0 / v49, v52 * 100.0 / v49, v53 * 100.0 / v49);
        fprintf(v7, "capacity: nodes  %llu / %llu => %.2f %% used\n", *(a3 + 12), *(a3 + 11), *(a3 + 12) * 100.0 / *(a3 + 11));
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[16], a3[17], a3[18], a3[19], a3[20], a3[21]);
        fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n");
      }

      result = fprintf(v7, "capacity: leaves %llu / %llu => %.2f %% used\n", *(a3 + 17), *(a3 + 16), *(a3 + 17) * 100.0 / *(a3 + 16));
      if (a4 != 4)
      {
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[26], a3[27], a3[28], a3[29], a3[30], a3[31]);
        LODWORD(v54) = a3[26];
        LODWORD(v55) = a3[27];
        LODWORD(v56) = a3[1];
        v57 = v56;
        LODWORD(v58) = a3[28];
        LODWORD(v59) = a3[29];
        LODWORD(v60) = a3[30];
        LODWORD(v61) = a3[31];
        return fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v54 * 100.0 / v57, v55 * 100.0 / v57, v58 * 100.0 / v57, v59 * 100.0 / v57, v60 * 100.0 / v57, v61 * 100.0 / v57);
      }
    }
  }

  return result;
}

uint64_t sub_10000DB54(atomic_ullong *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, unint64_t, void, uint64_t, void), uint64_t a4)
{
  v8 = a1[1];
  if (!v8)
  {
    v8 = *(*a1 + 392);
  }

  __chkstk_darwin(a1);
  v10 = (&v40 - v9);
  bzero(&v40 - v9, v11);
  v45 = 0;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v44 = -1431655766;
  v43 = -21846;
  v42 = 0;
  sub_10003BBDC(a1, 1);
  v12 = sub_100027AD8(a1, &v44);
  if (v12)
  {
    v13 = v12;
    sub_10003C190(a1, 1);
    return v13;
  }

  v14 = sub_1000122F4(v44, 0x10uLL, 0x1020040FFEA222EuLL);
  if (!v14)
  {
    sub_10003C190(a1, 1);
    return 12;
  }

  v15 = v14;
  *v14 = a1;
  *(v14 + 4) = 0;
  sub_10003C894(a1);
  v16 = 0;
  v41 = v15;
  while (1)
  {
    while (1)
    {
      v17 = &v15[16 * v16];
      if (sub_100038020(*v17) <= a2)
      {
        v19 = *v17;
LABEL_16:
        sub_10001D260(v19, 1);
        goto LABEL_17;
      }

      v18 = *(v17 + 4);
      v19 = *v17;
      v20 = *(*v17 + 56);
      if (*(v20 + 36) <= v18)
      {
        goto LABEL_16;
      }

      if ((*(v20 + 32) & 2) == 0)
      {
        break;
      }

      if (a3)
      {
        v24 = 0;
        while (1)
        {
          v25 = sub_10001D454(v19, v24, &v46, &v43);
          if (v25 || (v25 = sub_10001D56C(*v17, v24, &v45, &v42), v25))
          {
            v13 = v25;
            sub_100038018(*v17);
            sub_100012178("%s:%d: %s node 0x%llx (level %d): error getting index %d key/val: %d\n");
            goto LABEL_30;
          }

          v26 = a3(v8, a4, a2, v46, v43, v45, v42);
          if (v26)
          {
            break;
          }

          ++v24;
          v19 = *v17;
          if (v24 >= *(*(*v17 + 56) + 36))
          {
            goto LABEL_25;
          }
        }

        v13 = v26;
        goto LABEL_30;
      }

LABEL_25:
      sub_10001D260(v19, 1);
      v15 = v41;
LABEL_17:
      *v17 = 0;
      if ((--v16 & 0x8000) != 0)
      {
LABEL_28:
        v13 = 0;
        goto LABEL_31;
      }
    }

    v21 = sub_10001D758(v19, v18, v10);
    if (v21)
    {
      v13 = v21;
      sub_100038018(*v17);
      sub_100012178("%s:%d: %s node 0x%llx (level %d): error getting index %d child oid: %d\n");
LABEL_30:
      v15 = v41;
      goto LABEL_31;
    }

    ++*(v17 + 4);
    if (v44 <= ++v16)
    {
      break;
    }

    v22 = &v15[16 * v16];
    *(v22 + 4) = 0;
    v23 = sub_10001D02C(a1, v10, 0, 2u, *(*(*(v22 - 2) + 56) + 34) - 1, 0, v22);
    if (v23)
    {
      v13 = v23;
      sub_100038018(*(v22 - 2));
      sub_100012178("%s:%d: %s node 0x%llx (level %d): error getting index %d child: %d\n");
      goto LABEL_30;
    }

    if ((v16 & 0x8000) != 0)
    {
      goto LABEL_28;
    }
  }

  v34 = a1[1];
  if (v34)
  {
    v35 = v34 + 4040;
  }

  else
  {
    v35 = *(*(*a1 + 392) + 384) + 212;
  }

  v36 = v41;
  v37 = &v41[16 * v16];
  v38 = sub_100038018(*(v37 - 2));
  v39 = v35;
  v15 = v36;
  sub_100012178("%s:%d: %s node 0x%llx (level %d) index %d: more levels than expected\n", "btree_check_recent_sanity", 769, v39, v38, *(*(*(v37 - 2) + 56) + 34), *(v37 - 4));
  v13 = 22;
LABEL_31:
  v27 = v44;
  v28 = v44 - 1;
  if (((v44 - 1) & 0x8000) == 0)
  {
    v29 = v15;
    v30 = v28 + 1;
    v31 = &v29[16 * v28];
    do
    {
      if (*v31)
      {
        sub_10001D260(*v31, 1);
      }

      v31 -= 16;
    }

    while (v30-- > 1);
    v27 = v44;
    v15 = v41;
  }

  sub_1000123F8(v15, 16 * v27);
  return v13;
}

uint64_t sub_10000E064(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 635);
  }

  else
  {
    v1 = byte_100070158 & 1;
  }

  return v1 & 1;
}

uint64_t sub_10000E084(unsigned int a1, unint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_10000E3C4(uint64_t *a1, unsigned int a2, unint64_t a3, int a4, int a5, uint64_t *a6)
{
  *&v13 = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v12 = sub_1000197E4;
  DWORD2(v13) = 33;
  HIDWORD(v13) = a4;
  result = sub_100026D00(a1, a2, a3, 0, 0, &v12, 0, a6);
  if (result == 92 && a5)
  {
    v13 = 0u;
    v14 = 0u;
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v12 = sub_1000197E4;
    HIDWORD(v13) = a4;
    result = sub_100026D00(a1, 0, a3, 0, 0, &v12, 0, a6);
    if (!result)
    {
      sub_100012088("%s:%d: %s found mapping tree with old subtype\n", "nx_get_evict_mapping_tree", 526, (a1[48] + 212));
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000E508(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(a1 + 56) = xmmword_10006A770;
  v4 = *(a3 + 32);
  *(a1 + 88) = 1024;
  *(a1 + 96) = v4;
  uuid_copy((a1 + 72), (a3 + 64));
  return 0;
}

uint64_t sub_10000E570(uint64_t a1, unsigned int *a2)
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
  sub_100011924((a1 + 672));
  sub_100011924((a1 + 864));
  *(a1 + 928) = 0;
  sub_100011924((a1 + 1120));
  sub_100011924((a1 + 752));
  *(a1 + 828) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  sub_100011924((a1 + 504));
  sub_10001193C((a1 + 568));
  return 0;
}