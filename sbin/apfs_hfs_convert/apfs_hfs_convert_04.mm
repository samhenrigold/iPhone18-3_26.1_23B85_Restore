uint64_t sub_10003342C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  if (a5 < 0xFFFFFFFFFFFFFFFELL)
  {
    if (a6)
    {
      v8 = a4;
      v9 = a3;
      return sub_10001B234(a6, 0, &v9, 8, &v8, 8u, 0);
    }

    else
    {

      return sub_10003D878(a1, a2, a3, a4);
    }
  }

  else if (a6)
  {
    sub_10003E5FC("%s:%d: %s Trying to delete space for extent %lld %lld which has invalid owning_obj_id %lld\n", "apfs_free_data_blocks_if_needed", 6050, (a1 + 4040), a3, a4, a5);
    return 22;
  }

  else
  {
    v7 = *(a1 + 504);
    if (!v7)
    {
      v7 = a1;
    }

    if (!*(*(v7 + 376) + 216))
    {
      sub_10003E5FC("%s:%d: %s deleting extent %lld %lld with invalid owning_obj_id %lld while apfs_num_snapshots is 0, this will cause overallocation\n", "apfs_free_data_blocks_if_needed", 6055, (a1 + 4040), a3, a4, a5);
    }

    return 0;
  }
}

uint64_t sub_100033510(const char *a1, uint64_t a2, void *a3, unint64_t a4, _DWORD *a5, uint64_t *a6)
{
  v21 = a4;
  if (a6)
  {
    v11 = *(a6 + 76);
    if ((v11 & 8) != 0)
    {
      v12 = a6 + 2;
      if ((a4 & 0xFFFFFFFFFFFFFFFLL) == (a6[2] & 0xFFFFFFFFFFFFFFFLL) + (*a6 & 0xFFFFFFFFFFFFFFFLL) && a5[4] == *(a6 + 8) && *(a5 + 1) == a6[3])
      {
        v13 = *a5;
        v14 = sub_1000229C0(a3, 0, &v21, 8u, a2);
        if ((v14 & 0xFFFFFFFD) != 0)
        {
          v15 = v14;
          sub_10003E5FC("%s:%d: %s Couldn't remove extent at pbn %llu, err=%d\n", "insert_phys_extent", 5718, a1 + 4040, v21 & 0xFFFFFFFFFFFFFFFLL, v14);
          return v15;
        }

        a4 = *a6;
        v21 = *a6;
        v16 = *(a6 + 8);
        *a5 = *v12;
        a5[4] = v16;
        *a5 = ((*a5 & 0xFFFFFFFFFFFFFFFLL) + (v13 & 0xFFFFFFFFFFFFFFFLL)) | *a5 & 0xF000000000000000;
        v11 = *(a6 + 76) & 0xF7;
        *(a6 + 76) = v11;
      }
    }

    if ((v11 & 0x10) != 0 && (*a5 & 0xFFFFFFFFFFFFFFFLL) + (a4 & 0xFFFFFFFFFFFFFFFLL) == (a6[1] & 0xFFFFFFFFFFFFFFFLL) && a5[4] == *(a6 + 18) && *(a5 + 1) == a6[8])
    {
      v17 = sub_1000229C0(a3, 0, a6 + 1, 8u, a2);
      if (v17)
      {
        v18 = v17;
        sub_10003E5FC("%s:%d: %s Couldn't remove extent at pbn %llu, err=%d\n", "insert_phys_extent", 5743, a1 + 4040, a6[1] & 0xFFFFFFFFFFFFFFFLL, v17);
        return v18;
      }

      *a5 = ((a6[7] & 0xFFFFFFFFFFFFFFFLL) + (*a5 & 0xFFFFFFFFFFFFFFFLL)) | *a5 & 0xF000000000000000;
      *(a6 + 76) &= ~0x10u;
    }
  }

  if (*a5 >> 60 == 1)
  {
    if ((a5[4] & 0x80000000) != 0)
    {
      sub_10003E50C("%s:%d: %s key @ %p key.hdr.obj_id %lld val @ %p val.kind %d refcnt %d owning_obj_id 0x%llx\n", "insert_phys_extent", 5764, a1 + 4040, &v21, v21 & 0xFFFFFFFFFFFFFFFLL, a5, 1, a5[4], *(a5 + 1));
      panic("kind == NEW && refcnt = %d\n", a5[4]);
    }
  }

  else if (!*(*(a1 + 47) + 216) && (*(*(a1 + 49) + 629) & 1) == 0)
  {
    sub_10003E5FC("%s:%d: %s key.hdr.kind != NEW && numsnapshots == 0\n", "insert_phys_extent", 5771, a1 + 4040);
  }

  v19 = sub_10001B234(a3, *(a1 + 55), &v21, 8, a5, 0x14u, a2);
  v15 = v19;
  if (v19)
  {
    sub_10003E5FC("%s:%d: %s Couldn't insert extent, err=%d\n", "insert_phys_extent", 5776, a1 + 4040, v19);
  }

  return v15;
}

void sub_100033828(uint64_t a1, uint64_t a2)
{
  sub_1000155FC(*(*(a1 + 392) + 384));
  nullsub_1();
  nullsub_1();
  if (*a2 >> 60 != 1 || !*(a2 + 16))
  {
    nullsub_1();

    nullsub_1();
  }
}

uint64_t sub_1000338F4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_10002F2B4(a1, 2, a2, *(a1 + 440), &v15, a6, a7, a8);
  if (!v13)
  {
    v13 = sub_100032A20(a1, a2, v15, a3, a4, 1, -1, 1, a5, 0, 0);
    sub_100046D50(v15);
  }

  return v13;
}

uint64_t sub_10003399C(uint64_t a1, uint64_t a2)
{
  v2 = *a2 >> 60;
  if (v2 == 14)
  {
    if (!a1 || (*(*(a1 + 376) + 57) & 2) != 0)
    {
      LODWORD(v2) = *(a2 + 8);
    }

    else
    {
      v4 = sub_10003FC54(*(a1 + 392));
      sub_10003E64C(v4, "%s:%d: %s expanded record found on unsupported volume\n", "jobj_type_from_possibly_large_key", 6667, (a1 + 4040));
      LOBYTE(v2) = 15;
    }
  }

  return v2;
}

uint64_t sub_100033A60(const char *a1, int a2, unint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t (*a6)(__int128 *, uint64_t), uint64_t a7, _OWORD *a8, unsigned int a9)
{
  v16 = sub_100030D10(a1, *a5, a2);
  if (v16 == 5)
  {
    v17 = *(a5 + 2);
    if (v17 == -1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(a5 + 2);
    }

    if (v17 == -1 && a9 == 4)
    {
      v20 = a9 & 0xFFFF0000;
    }

    else
    {
      v20 = a9;
    }

    return sub_100003710(a1, a3, a4, *(a5 + 1), v18, a8, v20, a6, a7);
  }

  v22 = v16;
  v23 = sub_10003FA04(3u);
  if (!v23)
  {
    return 12;
  }

  v24 = v23;
  v44 = 832;
  v42 = a6;
  if (!*(a5 + 1) && !*a5)
  {
    if ((a9 & 0x10000) == 0 && a5[1])
    {
      goto LABEL_16;
    }

LABEL_20:
    v25 = 1;
    goto LABEL_21;
  }

  if ((a9 & 0x10000) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v25 = 0;
LABEL_21:
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[2] = v27;
  v46 = v27;
  v45[0] = v27;
  v45[1] = v27;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  if ((a9 & 0x20000) != 0)
  {
    v28 = v25;
  }

  else
  {
    v28 = 1;
  }

  v41 = v28;
  sub_10002CF30(a1, a5, v23, &v44);
  if (v22 == 1)
  {
    v32 = *(a5 + 1);
    if ((~v32 & 0xFFFFFFFFFFF0000) == 0 || v32 == 2)
    {
      v22 = 4;
    }

    else
    {
      v22 = 1;
    }
  }

  v34 = sub_10002F2B4(a1, v22, a3, a4, &v43, v29, v30, v31);
  if (v34)
  {
    v26 = v34;
    goto LABEL_38;
  }

  sub_1000236D0(v45, v43, a4, a9, v24, v44, 832, v24 + 104, 0xEE0u, a8);
  if ((v35 & 0xFFFFFFFD) != 0)
  {
    v26 = v35;
    goto LABEL_37;
  }

  if (sub_100023848(v45))
  {
LABEL_36:
    v26 = 0;
    goto LABEL_37;
  }

  v36 = v25 | ((a9 & 0x20000) >> 17);
  while (1)
  {
    if (v36)
    {
      if ((v41 & 1) == 0)
      {
        if (*a5)
        {
          v37 = *a5;
          if (v37 != sub_10003399C(a1, v24))
          {
            goto LABEL_54;
          }
        }
      }
    }

    else if ((*v24 & 0xFFFFFFFFFFFFFFFLL) != *(a5 + 1) || *a5 && sub_10003399C(a1, v24) != *a5)
    {
      goto LABEL_36;
    }

    v38 = sub_10003148C(a1, v24, v46, v24 + 416, DWORD1(v46));
    if (!v38)
    {
      break;
    }

    v39 = v38;
    v26 = v42(v38, a7);
    sub_10002CA94(v26, v39);
    if (v26)
    {
      goto LABEL_37;
    }

LABEL_54:
    v40 = sub_100023864(v45);
    if ((a9 & 0x40000) == 0)
    {
      v26 = v40;
      if (v40)
      {
        goto LABEL_37;
      }
    }

    if (sub_100023848(v45))
    {
      goto LABEL_36;
    }
  }

  if ((a9 & 0x40000) != 0)
  {
    goto LABEL_54;
  }

  v26 = 12;
LABEL_37:
  sub_100046D50(v43);
LABEL_38:
  sub_10003FB10(v24, 3u);
  return v26;
}

uint64_t sub_100033D20(uint64_t a1, int a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, __int128 *a9, int a10)
{
  v27[0] = a1;
  v27[1] = a6;
  v14 = *a4;
  v15 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  v27[2] = a7;
  v27[3] = v15;
  v16 = v14 >> 60;
  if (v14 >> 60 == 14)
  {
    LODWORD(v16) = a4[8];
  }

  v28 = 0xAAAAAAAAAA0000AALL;
  LOBYTE(v28) = v16;
  *v26 = 0xAAAAAAAAAAAAAAAALL;
  if (a8)
  {
    *a8 = 0;
  }

  if (v15 || v16)
  {
    if ((a10 & 0x20000) != 0)
    {
      BYTE2(v28) = 1;
    }
  }

  else
  {
    BYTE1(v28) = 1;
  }

  if ((~v14 & 0xFFFFFFFFFFF0000) == 0 || v15 == 2)
  {
    v18 = 4;
  }

  else
  {
    v18 = 1;
  }

  if (a2 == 1)
  {
    a2 = v18;
  }

  result = sub_10002F2B4(a1, a2, a3, *(a1 + 440), v26, a6, a7, a8);
  if (!result)
  {
    if ((a10 & 0x4000) != 0)
    {
      v20 = sub_10003FA04(3u);
      if (!v20)
      {
        return 12;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 440);
    v22 = a10 & 0x7000;
    switch(v22)
    {
      case 0x4000:
        v23 = sub_1000238F4(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_100033F08, v27, v20, v20 + 832);
        break;
      case 0x2000:
        v23 = sub_100023AEC(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_100033F08, v27);
        break;
      case 0x1000:
        v23 = sub_100023F50(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_100033F08, v27);
        break;
      default:
        v24 = 22;
        if ((a10 & 0x4000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
    }

    v24 = v23;
    if ((a10 & 0x4000) == 0)
    {
LABEL_30:
      sub_100046D50(*v26);
      if (v24 == 2 || v24 == 0x80000000)
      {
        result = 0;
      }

      else
      {
        result = v24;
      }

      if (a8)
      {
        *a8 = result == 0;
      }

      return result;
    }

LABEL_29:
    sub_10003FB10(v20, 3u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_100033F08(void *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  result = sub_10002DE7C(*a5, a1, a2, a3, a4);
  if (result)
  {
    return result;
  }

  if (*(a5 + 33) != 1)
  {
    if ((*(a5 + 34) & 1) == 0)
    {
      if ((*a1 & 0xFFFFFFFFFFFFFFFLL) != *(a5 + 24) || *(a5 + 32) && sub_10003399C(*a5, a1) != *(a5 + 32))
      {
        return 0x80000000;
      }

      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (*(a5 + 34))
  {
LABEL_6:
    if (*(a5 + 32) && sub_10003399C(*a5, a1) != *(a5 + 32))
    {
      return 0;
    }
  }

LABEL_12:
  v12 = *(a5 + 8);
  v11 = *(a5 + 16);

  return v12(a1, v8, a3, v9, v11);
}

uint64_t sub_10003401C(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = v4 - 2;
  if (v4 < 2)
  {
LABEL_11:
    if (a3 < a4)
    {
      LODWORD(v7) = -1;
    }

    else
    {
      LODWORD(v7) = 1;
    }

    if (a3 == a4)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    while (1)
    {
      v6 = *a1;
      v7 = v6 - *a2;
      if (v7)
      {
        break;
      }

      ++a1;
      ++a2;
      if (v6)
      {
        v8 = v5 == 0;
      }

      else
      {
        v8 = 1;
      }

      --v5;
      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  return v7;
}

uint64_t sub_100034088(uint64_t result, void *a2)
{
  if (a2 && (result + 536) != a2)
  {
    v2 = *(result + 504);
    if (!v2)
    {
      v2 = result;
    }

    if ((v2 + 536) != a2)
    {
      if (*a2 == 4)
      {
        result = v2;
      }

      return sub_10002BFF8(result, 1, a2);
    }
  }

  return result;
}

uint64_t sub_1000340CC(uint64_t a1, unsigned int a2, char a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  v12 = sub_100018DC4(a1);
  if (v12 <= 1)
  {
    if (!v12)
    {
      *a5 = 0;
      goto LABEL_4;
    }

    v16 = *(a1 + 504);
    if (!v16)
    {
      v16 = a1;
    }

    if ((*(*(v16 + 376) + 264) & 9) != 0)
    {
      panic("assertion failed: %s", "fs_is_content_protected(apfs)");
    }

    if (*(a1 + 1108))
    {
      panic("assertion failed: %s", "!apfs->apfs_readonly");
    }

    v17 = sub_10003FA58(1uLL, 0x60uLL, 0x10A00405D85AB5CuLL);
    if (v17)
    {
      v18 = v17;
      if ((*a5 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        panic("invalid crypto id");
      }

      v19 = sub_10003FB98(0xD0uLL, 0x1000040B4E0BC51uLL);
      if (v19)
      {
        v20 = v19;
        add_explicit = *a5;
        if (!*a5)
        {
          add_explicit = atomic_fetch_add_explicit((*(a1 + 376) + 176), 1uLL, memory_order_relaxed);
          *a5 = add_explicit;
        }

        *v18 = add_explicit;
        *v19 = 2621703;
        v19[1] = *a5;
        *(v19 + 4) = 1;
        if (sub_10002C3B4())
        {
          v14 = 1;
        }

        else
        {
          sub_10002C390(a1, v18, v20);
          *(v20 + 2) += *(v20 + 38);
          v22 = sub_100030EB4(a1, 1, v20, a4);
          if (v22)
          {
            v14 = v22;
            *a5 = 0;
          }

          else
          {
            v23 = sub_10002BE34(a1, 1, v18);
            if (!v23)
            {
              sub_10003FB5C(v20, 208);
              if (*a5)
              {
                return 0;
              }

LABEL_4:
              v13 = *(a1 + 504);
              if (!v13)
              {
                v13 = a1;
              }

              if ((*(*(v13 + 376) + 264) & 9) == 0)
              {
                panic("assertion failed: %s", "!((err == 0) && (*crypto_id == 0) && fs_is_content_protected(apfs))");
              }

              return 0;
            }

            v14 = v23;
            sub_10003E5FC("%s:%d: %s crypto_obj_insert of new crypto_id %lld should not have failed (ret %d)\n", "icp_new_crypto", 8016, (a1 + 4040), *a5, v23);
            *(v20 + 1) = 3;
            sub_10003135C(a1, 1, v20, a4);
          }
        }

        sub_10002B760(a1, 1, v18);
        sub_10003FB5C(v20, 208);
        return v14;
      }

      sub_10003FB5C(v18, 96);
    }

    return 12;
  }

  if (v12 != 2)
  {
    if (*(a1 + 1108))
    {
      panic("assertion failed: %s", "!apfs->apfs_readonly");
    }

    if ((a3 & 2) != 0 || a2 <= 6 && ((1 << a2) & 0x46) != 0 || (v15 = sub_10002C480(a1, 4u), a2 == 4) && v15)
    {
      if (!a6)
      {
        panic("assertion failed: %s", "ino");
      }

      panic("assertion failed: %s", "ino_has_vnode(ino)");
    }
  }

  v14 = 0;
  *a5 = 4;
  return v14;
}

uint64_t sub_100034488(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 504);
  if (!v2)
  {
    v2 = a1;
  }

  v3 = *(*(v2 + 376) + 264);
  if ((v3 & 0x109) == 1)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if ((v3 & 0x109) == 0x100)
  {
    if (*(a2 + 48))
    {
      return 4;
    }
  }

  else
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      sub_10003E5FC("%s:%d: ** BOGUS FEXT FLAGS = 0x%02x (crypto_flags = 0x%llx)\n", "fext_get_crypto_id", 13897, v5, v3 & 9);
    }
  }

  return v4;
}

uint64_t sub_100034538(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t **a5)
{
  v9 = a1;
  v10 = sub_100018DC4(a1);
  if (a2 == 4 || v10 != 3)
  {
    if (a2)
    {
      if (a2 == 5)
      {
        v12 = 0;
        v13 = *(v9 + 504);
        if (!v13)
        {
          v13 = v9;
        }

        v11 = (v13 + 536);
      }

      else
      {
        if (a2 == 4 && *(v9 + 504))
        {
          v9 = *(v9 + 504);
        }

        v14 = sub_10002BCF8(v9, 1, a2);
        if (v14)
        {
          v11 = v14;
          v12 = 0;
        }

        else
        {
          v20 = 0xAAAAAAAAAAAAAAAALL;
          while (1)
          {
            v22 = 0u;
            v21[0] = 2621703;
            v23 = 0;
            v21[1] = a2;
            v15 = sub_100032160(v9, 1, a3, v21, *(v9 + 440), &v20);
            if (v15)
            {
              break;
            }

            v16 = sub_10003FA58(1uLL, 0x60uLL, 0x10A00405D85AB5CuLL);
            v11 = v16;
            v17 = v20;
            if (!v16)
            {
              v12 = 12;
LABEL_34:
              sub_10002CA94(v16, v17);
              goto LABEL_35;
            }

            *v16 = *(v20 + 1);
            if (a4)
            {
              *(v16 + 48) = *(v17 + 10);
              v18 = *(v17 + 7);
              *(v16 + 56) = *(v17 + 8);
              *(v16 + 60) = v17[18];
              *(v16 + 8) = 0;
              *(v16 + 12) = v18;
            }

            else
            {
              if (a2 == 4)
              {
                v12 = 1;
LABEL_33:
                sub_10002B760(v9, 1, v11);
                goto LABEL_34;
              }

              v16 = sub_10002C3B4();
              if (v16)
              {
                v12 = v16;
                if (v16 != 1)
                {
                  sub_10003E5FC("%s:%d: %s could not unwrap crypto-id %lld (err %d)\n", "legacy_get_ek", 34637, (v9 + 4040), a2, v16);
                }

                goto LABEL_33;
              }
            }

            sub_10002CA94(v16, v17);
            v20 = 0;
            v16 = sub_10002BE34(v9, 1, v11);
            if (!v16)
            {
              v17 = 0;
              v12 = 0;
              goto LABEL_34;
            }

            sub_10002B760(v9, 1, v11);
            v11 = sub_10002BCF8(v9, 1, a2);
            v12 = 0;
            if (v11)
            {
              goto LABEL_35;
            }
          }

          v12 = v15;
          if (v15 == 2)
          {
            sub_10003DB8C(v9, "legacy_get_ek", 34579);
            v11 = 0;
            v12 = 2;
          }

          else
          {
            v11 = 0;
          }
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 2 * (sub_100018DC4(v9) == 1);
    }
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

LABEL_35:
  *a5 = v11;
  return v12;
}

uint64_t sub_1000347D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    panic("assertion failed: %s", "xid");
  }

  if ((sub_100018DC4(a1) | 2) != 3)
  {
    return 0;
  }

  return sub_10003D960(a1, a2, a3);
}

uint64_t sub_100034870(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    panic("assertion failed: %s", "xid");
  }

  if ((sub_100018DC4(a1) | 2) != 3)
  {
    return 0;
  }

  return sub_10003DA28(a1, a2, a3);
}

uint64_t sub_100034920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v14 = a5;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  v9 = *(a2 + 76);
  if ((*(a2 + 64) & 8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1000340CC(a1, v9, v10, a6, &v14, a2);
  if (!v11)
  {
    v12 = v14;
    *(a4 + 16) = v14;
    if (sub_100018DC4(a1) == 1)
    {
      sub_10002C104(a1, 1, v12);
    }
  }

  return v11;
}

uint64_t sub_1000349C0(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[0] = v8;
  __src[1] = v8;
  v21 = 0;
  if ((*(a2 + 96) & 0xF000) != 0x8000)
  {
    add_explicit = 0;
    v11 = 0;
    v12 = 0;
    v13 = 22;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = *(a1 + 376);
  if ((*(v9 + 57) & 2) == 0 || (~*(a2 + 84) & 0x40000020) != 0)
  {
    add_explicit = *(a2 + 8);
  }

  else
  {
    add_explicit = atomic_fetch_add_explicit((v9 + 176), 1uLL, memory_order_relaxed);
  }

  v14 = sub_100034920(a1, a2, a3, __src, add_explicit, a3);
  if (v14)
  {
    v13 = v14;
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v15 = sub_100062AD8((a2 + 408), 8, 32, __src, 0x28uLL);
  if (v15)
  {
    sub_10003E5FC("%s:%d: %s *** failed to set dstream as an extended field of ino %lld (ret %d)\n", "fs_create_dstream", 10892, (a1 + 4040), *(a2 + 8), v15);
    v12 = 0;
    v11 = 1;
    v13 = 12;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v20 = -1431655766;
  v17 = sub_100062E90((a2 + 408), 8, 0, &v21, &v20);
  if (v17 || v20 != 40)
  {
    sub_10003E5FC("%s:%d: %s *** failed to fetch the dstream pointer for %lld (ret %d)\n", "fs_create_dstream", 10899, (a1 + 4040), *(a2 + 8), v17);
    v21 = 0;
    v11 = 1;
    v13 = 2;
  }

  else
  {
    v19[1] = *(a2 + 24);
    v19[0] = 1573126;
    v11 = 1;
    v19[2] = 1;
    v18 = sub_100030EB4(a1, 1, v19, a3);
    v13 = v18;
    if (v18)
    {
      sub_10003E5FC("%s:%d: %s failed to insert new dstream_id %llu (ret %d)", "fs_create_dstream", 10916, (a1 + 4040), *(a2 + 24), v18);
      v21 = 0;
    }
  }

  v12 = 1;
  if (a4)
  {
LABEL_13:
    *a4 = v13;
  }

LABEL_14:
  if (v13)
  {
    if (v11)
    {
      sub_100034870(a1, add_explicit, a3);
    }

    if (v12)
    {
      sub_100062F1C((a2 + 408), 8);
    }
  }

  return v21;
}

uint64_t sub_100034C18(uint64_t a1, uint64_t a2)
{
  v3 = sub_100018DC4(a1);
  if (v3 <= 1)
  {
    if (!v3)
    {
      return 0;
    }

    return *(a2 + 16);
  }

  if (v3 == 3)
  {
    return *(a2 + 16);
  }

  return 4;
}

uint64_t sub_100034C64(uint64_t a1, char a2, char *__s, size_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  if (a8)
  {
    v12 = a4;
    *a8 = 0;
    if (a4)
    {
      if (__s[a4 - 1])
      {
        v12 = a4 + 1;
        goto LABEL_8;
      }
    }

    else
    {
      v12 = strlen(__s) + 1;
    }

    if (v12 != 1)
    {
LABEL_8:
      if (v12 > 0x2FE)
      {
        return 7;
      }

      v17 = sub_10003FA58(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
      if (v17)
      {
        v18 = v17;
        v19 = sub_10003FB98(v12, 0x47093A9uLL);
        *(v18 + 8) = v19;
        if (v19)
        {
          *v18 = 9;
          *(v18 + 1) = a2;
          *(v18 + 1) = v12 + 72;
          *(v18 + 1) = a6;
          memcpy(v19, __s, v12 - 1);
          *(*(v18 + 8) + v12 - 1) = 0;
          *(v18 + 31) = v12;
          v20 = *(*(a1 + 376) + 56);
          if (v20)
          {
            if (a5 == -1)
            {
              v22 = (v20 >> 3) & 1;
              goto LABEL_25;
            }
          }

          else if (a5 == -1 || (v20 & 8) == 0)
          {
            if ((v20 & 8) == 0)
            {
              v18[14] = 0;
LABEL_21:
              *(v18 + 30) = 0;
              *(v18 + 2) = a7;
              *(v18 + 3) = 0;
              sub_100062624((v18 + 8), 0);
              v16 = 0;
              *a8 = v18;
              return v16;
            }

            v22 = 1;
LABEL_25:
            v24 = -1;
            v23 = sub_100003878(*(v18 + 8), v12 - 1, v22, sub_100034E54, &v24);
            if (v23)
            {
              v16 = v23;
              sub_10003FB5C(*(v18 + 8), *(v18 + 31));
              sub_10003FB5C(v18, 72);
              return v16;
            }

            v18[14] = v24 & 0x3FFFFF;
            goto LABEL_21;
          }

          v18[14] = a5;
          goto LABEL_21;
        }

        sub_10003FB5C(v18, 72);
      }

      return 12;
    }
  }

  return 22;
}

uint64_t sub_100034E54(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = off_1000885C8(*a3, a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100034E94(uint64_t a1, uint64_t a2)
{
  __dst = 0;
  v3 = *(a1 + 376);
  if ((*(v3 + 57) & 2) != 0)
  {
    result = 0;
    ++*(a2 + 104);
  }

  else if ((*(v3 + 48) & 2) != 0)
  {
    result = sub_100062DA0((a2 + 408), 17, 0, &__dst, 8uLL);
    if (!result)
    {
      ++__dst;
      return sub_100062AD8((a2 + 408), 17, 0, &__dst, 8uLL);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100034F48(uint64_t a1, uint64_t a2)
{
  __src = 0;
  v2 = *(a1 + 376);
  if ((*(v2 + 57) & 2) != 0)
  {
    result = 0;
    *(a2 + 104) = 0;
  }

  else if ((*(v2 + 48) & 2) != 0)
  {
    return sub_100062AD8((a2 + 408), 17, 0, &__src, 8uLL);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100034FB4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  __dst = 0;
  if (a1)
  {
    if (a1 < 0 && (*(a2 + 64) & 0x200) == 0)
    {
      v9 = 0xAAAAAAAAAAAAAAAALL;
      v8 = 0;
      if (sub_100062E90((a2 + 408), 4, 0, &v9, &v8) || v8 < 1)
      {
        v4 = "no-name";
        v9 = "no-name";
      }

      else
      {
        v4 = v9;
      }

      sub_10003E5FC("%s:%d: Sparse bytes removed from inode %lld internal flags: 0x%llx iflags 0x%llx, new_sparse_bytes %lld; name %s parent-id %lld), but it wasn't marked sparse.\n", "update_sparse_bytes", 23546, *(a2 + 8), *(a2 + 64), *(a2 + 112), v2, v4, *(a2 + 16));
    }

    if (sub_100062DA0((a2 + 408), 13, 0, &__dst, 8uLL) && v2 < 0)
    {
      sub_10003E5FC("%s:%d: Sparse bytes removed from inode %lld that didn't have an extended field.\n", "update_sparse_bytes", 23551, *(a2 + 8));
      return 2;
    }

    else
    {
      __src = __dst + v2;
      if (__dst + v2 <= 0)
      {
        v6 = sub_100062F1C((a2 + 408), 13);
        v2 = v6;
        if (v6)
        {
          sub_10003E5FC("%s:%d: Failed to remove sparse bytes attribute from ino %lld, but it was successfully got, errro %d\n", "update_sparse_bytes", 23560, *(a2 + 8), v6);
        }

        *(a2 + 64) &= ~0x200uLL;
      }

      else
      {
        *(a2 + 64) |= 0x200uLL;
        v5 = sub_100062AD8((a2 + 408), 13, 40, &__src, 8uLL);
        v2 = v5;
        if (v5)
        {
          sub_10003E5FC("%s:%d: Couldn't set sparse bytes extended attribute on ino %lld, error %d\n", "update_sparse_bytes", 23570, *(a2 + 8), v5);
        }
      }
    }
  }

  return v2;
}

uint64_t sub_10003516C(uint64_t a1, unint64_t a2, unsigned __int8 a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 0;
  v11 = 0;
  v18 = -1431655766;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v12 = a2 - v11;
  if (a2 > v11)
  {
    v13 = (a1 + v11);
    while (1)
    {
      v14 = sub_1000352D8(v13, v12, &v18);
      v15 = v18;
      if ((v18 & 0x80000000) != 0)
      {
        v10 = 0;
        if (!a5)
        {
          return v10;
        }

        v16 = 92;
        goto LABEL_29;
      }

      if (!v18)
      {
        break;
      }

      if (a4 && v18 >= 0x80)
      {
        *a4 = 1;
      }

      if (v15 >= 0x2000)
      {
        if ((a3 & 2) != 0 && ((v15 & 0x7FFFFFFE) == 0x200E || v15 - 8234 < 6 || v15 - 8298 < 6 || (~v15 & 0xFFFE) == 0 || v15 == 65279 || v15 - 64976 <= 0x1F))
        {
          v10 = 0;
          if (!a5)
          {
            return v10;
          }

          v16 = 1;
LABEL_29:
          *a5 = v16;
          return v10;
        }

        v10 += a3 & ((v15 & 0xFFFF0000) != 0);
      }

      v11 += v14;
      ++v10;
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_6:
      v13 = (a1 + v11);
      v12 = -1;
    }
  }

  if (a5)
  {
    v16 = 0;
    goto LABEL_29;
  }

  return v10;
}

uint64_t sub_1000352D8(char *a1, uint64_t a2, int *a3)
{
  *a3 = -1;
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  if (a2 == -1)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  v5 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v6 = 1;
LABEL_10:
    *a3 = v5;
    return v6;
  }

  if ((v5 - 194) <= 0x1D)
  {
    if (v4 != 1)
    {
      v7 = a1[1];
      if ((v7 & 0xC0) == 0x80)
      {
        v8 = v7 & 0x3F | ((v5 & 0x1F) << 6);
        v6 = 2;
        v5 = v8;
        goto LABEL_10;
      }
    }

    return 0;
  }

  if ((v5 & 0xF0) == 0xE0)
  {
    if (v4 < 3)
    {
      return 0;
    }

    if (v5 == 224)
    {
      if (a1[1] - 192 < 0xFFFFFFE0)
      {
        return 0;
      }

      goto LABEL_38;
    }

    if ((v5 - 225) > 0xB)
    {
      if (v5 == 237)
      {
        if (a1[1] > -97)
        {
          return 0;
        }

        goto LABEL_38;
      }
    }

    else if ((a1[1] & 0xC0) != 0x80)
    {
      return 0;
    }

    if ((~v5 & 0xEE) == 0 && (a1[1] & 0xC0) != 0x80)
    {
      return 0;
    }

LABEL_38:
    v11 = a1[2];
    if ((v11 & 0xC0) == 0x80)
    {
      v5 = ((v5 & 0xF) << 12) | ((a1[1] & 0x3F) << 6) | v11 & 0x3F;
      v6 = 3;
      goto LABEL_10;
    }

    return 0;
  }

  v6 = 0;
  if (v4 >= 4 && (v5 - 245) >= 0xFFFFFFFB)
  {
    if (v5 == 240)
    {
      v10 = a1[1];
      if ((v10 - 192) < 0xFFFFFFD0)
      {
        return 0;
      }
    }

    else
    {
      LOBYTE(v10) = a1[1];
      if ((v5 - 241) > 2)
      {
        if (v10 > -113)
        {
          return 0;
        }
      }

      else if ((v10 & 0xC0) != 0x80)
      {
        return 0;
      }
    }

    v12 = a1[2];
    if ((v12 & 0xC0) == 0x80)
    {
      v13 = a1[3];
      if ((v13 & 0xC0) == 0x80)
      {
        v5 = ((v5 & 7) << 18) | ((v10 & 0x3F) << 12) | ((v12 & 0x3F) << 6) | v13 & 0x3F;
        v6 = 4;
        goto LABEL_10;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1000354A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 504);
  if (!v3)
  {
    v3 = result;
  }

  v4 = *(*(v3 + 376) + 264);
  if (a3 == 4 && (v4 & 0x108) != 0)
  {
    *(a2 + 48) = 1;
    *(a2 + 32) = *(a2 + 24);
  }

  else
  {
    if ((v4 & 8) != 0)
    {
      if (*(a2 + 24))
      {
        panic("invalid crypto id %llu", a3);
      }
    }

    *(a2 + 32) = a3;
    *(a2 + 48) = 0;
  }

  return result;
}

uint64_t sub_100035530(uint64_t a1, uint64_t a2, __int128 *a3, _DWORD *a4)
{
  v5 = a3;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  if (!a3)
  {
    v24 = 0;
    v25 = 0;
    v5 = &v24;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v26 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v20 = a1;
  v21 = 0;
  v22 = a2;
  v23 = 0;
  v8 = sub_100033D20(a1, 1, 0, &v26, 8, sub_100035790, &v20, 0, v5, 4096);
  v9 = v21;
  if (v21)
  {
    if (!HIDWORD(v23))
    {
      *(v21 + 112) |= 0x200000000uLL;
    }

    *(v9 + 336) = *v5;
    *(v9 + 320) = *v5;
    v10 = *(v9 + 96) & 0xF000;
    if (v10 == 40960)
    {
      v19 = 0xAAAAAAAAAAAAAAAALL;
      if (!sub_100039A20(a1, *(v9 + 8), *(a1 + 440), (v9 + 320), "com.apple.fs.symlink", &v19))
      {
        v12 = v19;
        v13 = sub_10003FB98(*(v19 + 11), 0x15A443C2uLL);
        *(v9 + 352) = v13;
        v14 = *(v12 + 11);
        *(v9 + 360) = v14;
        if (v13)
        {
          v13 = strlcpy(v13, &v12[*(v12 + 10) + 24], v14);
        }

        sub_10002CA94(v13, v12);
      }
    }

    else if (v10 == 0x4000)
    {
      *(v9 + 352) = 0;
      *(v9 + 360) = v9 + 352;
    }

    sub_10003E3C8((v9 + 120));
    sub_10003E3C8((v9 + 448));
    *(v9 + 112) |= 0x100000000000uLL;
    if ((*(v9 + 65) & 0xC0) == 0)
    {
      v19 = 0xAAAAAAAAAAAAAAAALL;
      v15 = sub_100039A20(a1, *(v9 + 8), *(a1 + 440), (v9 + 320), "com.apple.ResourceFork", &v19);
      v16 = *(v9 + 64);
      if (v15)
      {
        *(v9 + 64) = v16 | 0x8000;
      }

      else
      {
        *(v9 + 64) = v16 | 0x4000;
        sub_10002CA94(v15, v19);
      }

      *(v9 + 112) |= 0x40000uLL;
    }
  }

  else
  {
    v11 = v8;
    if ((v23 & 0xFFFFFFFD) != 0)
    {
      sub_10003E5FC("%s:%d: %s failed to load inode %lld ret %d on volume: %s\n", "fs_get_inode_with_hint", 15993, (a1 + 4040), a2, v23, (*(a1 + 376) + 704));
    }

    else if (!v23)
    {
      LODWORD(v23) = 2;
    }

    if (a4)
    {
      v17 = v23;
      if (v11)
      {
        v17 = v11;
      }

      *a4 = v17;
    }
  }

  return v9;
}

uint64_t sub_100035790(uint64_t *a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFFLL) != *(a5 + 16))
  {
    result = 2;
LABEL_6:
    *(a5 + 24) = result;
    return result;
  }

  v6 = *a1 >> 60;
  if (v6 == 3)
  {
    v7 = sub_10003148C(*a5, a1, a2, a3, a4);
    *(a5 + 8) = v7;
    if (v7)
    {
      return 0;
    }

    result = 12;
    goto LABEL_6;
  }

  if (v6 == 4 && *(a5 + 8) != 0)
  {
    *(a5 + 28) = 1;
  }

  return 2;
}

uint64_t sub_100035828(uint64_t a1, uint64_t a2, char *__s, size_t a4, __int128 *a5, int *a6, void *a7)
{
  v35 = 0;
  v13 = *(*(a1 + 376) + 56);
  if ((v13 & 9) == 0)
  {
    v29[0] = 0xAAAAAAAAAAAAAAAALL;
    v14 = sub_100034C64(a1, 0, __s, a4, -1, a2, 0, v29);
    if (!v14)
    {
      v14 = sub_100032160(a1, 1, a5, v29[0], *(a1 + 440), &v35);
      sub_10002CA94(v14, v29[0]);
    }

    goto LABEL_18;
  }

  if (a4)
  {
    if (__s[a4 - 1])
    {
      ++a4;
      goto LABEL_10;
    }
  }

  else
  {
    a4 = strlen(__s) + 1;
  }

  if (a4 == 1)
  {
    v15 = 0;
    v14 = 22;
    goto LABEL_19;
  }

LABEL_10:
  if (a4 > 0x2FE)
  {
    v15 = 0;
    v14 = 7;
    goto LABEL_19;
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29[0] = 4718601;
  v30 = 0u;
  v29[1] = a2;
  DWORD2(v32) = 0;
  v16 = a4 - 1;
  v34 = -1;
  v17 = sub_100003878(__s, a4 - 1, (v13 >> 3) & 1, sub_100034E54, &v34);
  if (v17)
  {
    v14 = v17;
    if (v17 == 92)
    {
      v23 = __s;
      v24 = v16;
      v18 = sub_100033A60(a1, 1, 0, *(a1 + 440), v29, sub_100035B08, &v23, a5, 4u);
      if (v18 == -1)
      {
        v14 = 0;
        if (*(&v24 + 1))
        {
          v35 = *(&v24 + 1);
        }
      }

      else if (v18)
      {
        v14 = v18;
      }

      else
      {
        v14 = 2;
      }

      v15 = -1;
      goto LABEL_19;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v15 = v34 & 0x3FFFFF;
  DWORD1(v24) = -1431655766;
  v26 = a1;
  v28 = -1431655766;
  v23 = __s;
  LODWORD(v24) = v34 & 0x3FFFFF;
  *(&v24 + 1) = v16;
  v25 = 0;
  v27 = a7 != 0;
  v21 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x9000000000000000;
  v22 = v34 << 10;
  v20 = sub_100033D20(a1, 1, 0, &v21, 12, sub_100035C2C, &v23, 0, a5, 4100);
  if (v20 == -1)
  {
    v14 = 0;
    if (v25)
    {
      v35 = v25;
    }
  }

  else if (v20)
  {
    v14 = v20;
  }

  else
  {
    v14 = 2;
  }

LABEL_19:
  if (a7 && !v14)
  {
    *a7 = v35;
  }

  if (a6 && (v14 | 2) == 2)
  {
    *a6 = v15;
  }

  return v14;
}

uint64_t sub_100035B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 + 1 != *(a1 + 62) || memcmp(*(a1 + 64), *a2, v2))
  {
    return 0;
  }

  v7 = sub_10003FA58(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
  *(a2 + 16) = v7;
  if (!v7)
  {
    return 12;
  }

  v8 = sub_10003FB98(*(a1 + 62), 0x76690F2EuLL);
  v9 = *(a2 + 16);
  *(v9 + 8) = v8;
  if (!v8)
  {
    sub_10003FB5C(v9, 72);
    return 12;
  }

  *v9 = *a1;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  *(v9 + 8) = *(a1 + 64);
  v9[2] = v11;
  v9[3] = v12;
  v9[1] = v10;
  memcpy(*(*(a2 + 16) + 64), *(a1 + 64), *(a1 + 62));
  v13 = sub_100062934(*(a2 + 16) + 32, (a1 + 32));
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v13;
  sub_10003FB5C(*(*(a2 + 16) + 64), *(a1 + 62));
  sub_10003FB5C(*(a2 + 16), 72);
  *(a2 + 16) = 0;
  return v5;
}

uint64_t sub_100035C2C(uint64_t a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5)
{
  v17 = 0;
  v5 = *(a1 + 8);
  v6 = *(a5 + 8);
  if (v5 >> 10 < v6)
  {
    return 0;
  }

  if (v5 >> 10 != v6)
  {
    return 2;
  }

  v12 = *(a1 + 8) & 0x3FF;
  v13 = *(a5 + 16);
  v14 = *a5;
  if (v13 == (v5 & 0x3FF) && !strncmp((a1 + 12), *a5, v5 & 0x3FF))
  {
    v17 = 1;
  }

  else if (sub_100004224((a1 + 12), (v12 - 1), v14, v13, (*(*(*(a5 + 32) + 376) + 56) >> 3) & 1, &v17) || (v17 & 1) == 0)
  {
    return 0;
  }

  if (*(a5 + 40) && (v16 = sub_10003148C(*(a5 + 32), a1, a2, a3, a4), (*(a5 + 24) = v16) == 0))
  {
    return 12;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100035D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v6 = a6;
  if (!a6)
  {
    v6 = *(*(a1 + 392) + 384);
  }

  if (sub_100034488(a1, a2))
  {
    panic("jdev_fext_read_data() corrupts encrypted data");
  }

  v11 = sub_100015AE4(v6, a3, a4, a5, 0);
  sub_100034088(a1, 0);
  return v11;
}

uint64_t sub_100035E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (sub_100034488(a1, a2))
  {
    panic("jdev_fext_write_data() corrupts encrypted data");
  }

  v9 = sub_100015B6C(*(*(a1 + 392) + 384), a3, a4, a5, 0);
  sub_100034088(a1, 0);
  return v9;
}

unint64_t sub_100035F50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1000155FC(*(*(a1 + 392) + 384));
  v19 = 0;
  v18 = 0;
  v7 = sub_100062E90((a3 + 408), 8, 0, &v19, &v18);
  v8 = v18 == 40 && v7 == 0;
  v9 = v19;
  if (!v8)
  {
    v9 = 0;
  }

  if ((*(*(a1 + 376) + 48) & 2) != 0 || (*(a3 + 118) & 0x80) != 0)
  {
    return 0;
  }

  v10 = *(v9 + 8);
  if (v10 < 0x10000 || v10 > a2)
  {
    return 0;
  }

  v13 = 12;
  if (v10 < 0x4000001)
  {
    v13 = 8;
  }

  if (v10 <= 0x100000)
  {
    v13 = 4;
  }

  v14 = v6 << v13;
  v15 = a2 + v6 - 1 - v10 - (a2 + v6 - 1) % v6;
  v16 = v14 >= v15;
  v17 = v14 - v15;
  if (v16)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036044(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4, int a5, uint64_t a6, unint64_t a7, uint64_t *a8, unint64_t a9, uint64_t a10)
{
  LODWORD(v12) = a5;
  v17 = a10;
  v166 = 0;
  v146 = *(a2 + 8);
  v18 = *(a2 + 24);
  v19 = *a4;
  v20 = sub_1000155FC(*(*(a1 + 392) + 384));
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = a2;
  }

  if ((a7 & 0x8000000000000000) != 0 || (v12 & 0x10) != 0 && !v17 || (v12 & 0x20) != 0 && (*(*(a1 + 376) + 56) & 0x80) == 0)
  {
    return 22;
  }

  v149 = v19;
  v138 = *(a2 + 112);
  v139 = v21;
  v135 = a4;
  v24 = v20;
  v134 = v20 - 1;
  v165 = 0xAAAAAAAAAAAAAAAALL;
  v25 = (v134 + a7) / v20;
  v144 = v25;
  if (v17)
  {
    v133 = 0;
  }

  else
  {
    a10 = 0;
    v44 = sub_100039E1C(a1, 1, v25 / 0x32 + 2, v25, 0, &a10);
    v45 = v25;
    v22 = v44;
    v133 = v45;
    if (v44)
    {
      return v22;
    }
  }

  sub_10002CCA8((a1 + 3296), v18);
  v28 = v149[1];
  *a8 = *v149;
  v29 = v149[1];
  v132 = a7 + a6;
  v145 = v24;
  v136 = v17;
  if (a7 + a6 <= v29)
  {
    v141 = 0;
    v22 = 0;
    v42 = 0;
    v43 = 0;
LABEL_172:
    v52 = v18;
    goto LABEL_208;
  }

  v22 = 0;
  if (!a7 && v28)
  {
    v164 = 0xAAAAAAAAAAAAAAAALL;
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v162 = v30;
    v163 = v30;
    v161 = v30;
    v31 = v29 != 0;
    v32 = v29 - 1;
    if (v31)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = sub_1000322C0(a1, v18, v33, 0, &v161, 0, v26, v27);
    v22 = v34;
    if (v34 == 2)
    {
      if (*v149)
      {
        if (sub_100015624(*(*(a1 + 392) + 384)) && *(*(a1 + 392) + 636) == 1)
        {
          sub_10003E50C("%s:%d: %s ino %lld no extent covering dstream alloced_size %lld (fsize %lld) pos/len %lld:%lld\n", "alloc_space_for_write_with_hint_and_spino", 18756, (a1 + 4040), *(a2 + 8), v149[1], *v149, a6, 0);
        }

        else
        {
          sub_10003E5FC("%s:%d: %s ino %lld no extent covering dstream alloced_size %lld (fsize %lld) pos/len %lld:%lld\n", "alloc_space_for_write_with_hint_and_spino", 18759, (a1 + 4040), *(a2 + 8), v149[1], *v149, a6, 0);
        }
      }
    }

    else
    {
      if (!v34)
      {
        v39 = (v134 + a6) / v24 * v24;
        if (*(&v162 + 1))
        {
          BYTE1(v161) = 1;
          v40 = *(&v163 + 1) + v162;
          v41 = v149[1];
          if (*(&v163 + 1) + v162 < v41)
          {
            panic("ino %lld illogical file extent %lld:%lld != alloced_size %lld (fsize %lld)\n", *(a2 + 8), v162, *(&v163 + 1), v149[1], *v149);
          }

          if (*(&v163 + 1) + v162 > v41)
          {
            sub_10003E50C("%s:%d: %s ino %lld file extent %lld:%lld extends beyond alloced_size %lld (fsize %lld). fixing it.\n", "alloc_space_for_write_with_hint_and_spino", 18726, (a1 + 4040), *(a2 + 8), v162, *(&v163 + 1), v149[1], *v149);
            v40 = *(&v163 + 1) + v162;
            v149[1] = *(&v163 + 1) + v162;
          }

          if (v39 > v40)
          {
            v162 = v40;
            *(&v163 + 1) = v39 - v40;
            LOBYTE(v164) = 0;
            *&v163 = 0;
            v22 = sub_100030EB4(a1, 1, &v161, a10);
            v52 = v18;
            if (v22)
            {
              v42 = 0;
            }

            else
            {
              v42 = *(&v163 + 1);
              v149[1] = *(&v163 + 1) + v162;
              *a8 = a6;
            }

            goto LABEL_191;
          }

          v22 = 0;
        }

        else
        {
          v110 = *(&v163 + 1);
          if (*(&v163 + 1) + v162 >= a6)
          {
            panic("ino %lld pos:len %lld:%lld fext %lld:%lld (%lld)\n", *(a2 + 8), a6, 0, v162, *(&v163 + 1), 0);
          }

          v111 = v39 - v162;
          *(&v163 + 1) = v39 - v162;
          BYTE1(v161) = 2;
          v112 = sub_1000324BC(a1, a2, &v161, a10, v35, v36, v37, v38);
          v22 = v112;
          if (!v112)
          {
            v42 = v111 - v110;
            v149[1] = v39;
            goto LABEL_190;
          }

          sub_10003E5FC("%s:%d: %s failed updating hole %lld:%lld (pos %lld, len %lld alloced_size %lld) err %d\n", "alloc_space_for_write_with_hint_and_spino", 18708, (a1 + 4040), v162, *(&v163 + 1), a6, 0, v39, v112);
        }

LABEL_189:
        v42 = 0;
LABEL_190:
        v52 = v18;
LABEL_191:
        v141 = 0;
        v43 = 0;
        v166 = 0;
        goto LABEL_208;
      }

      if ((v34 & 0xFFFFFFDF) != 2)
      {
        goto LABEL_189;
      }
    }

    v29 = v149[1];
  }

  if (a6 > v29 && a6 % v24 && (a6 % v24 + a7) > v24)
  {
    v47 = a7 + v24 - 1 + a6 % v24 - (a7 + a6 + v24 - 1) % v24;
LABEL_43:
    v144 = v47 / v24;
    goto LABEL_44;
  }

  if (a6 < v29)
  {
    a7 += a6 - v29;
    v47 = v134 + a7;
    a6 = v29;
    goto LABEL_43;
  }

LABEL_44:
  v48 = 0;
  if ((v12 & 0x80) == 0 && (v144 - 1) <= 0xF)
  {
    if (*v149 < 0x10000 || (sub_100062550() - *(a2 + 32)) < 0x3B9ACA00)
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_100035F50(a1, a6 + a7, a2) / v24;
    }
  }

  v166 = 0;
  v43 = v48 + v144;
  if ((v48 + v144) < 0)
  {
    v141 = 0;
    v42 = 0;
    goto LABEL_172;
  }

  v131 = 0;
  v49 = (v138 >> 19) & 1;
  v142 = v12 & 5;
  v50 = &v165;
  if (v142 == 5)
  {
    v50 = 0;
  }

  v129 = v50;
  v128 = (16 * v12) & 0x20;
  if (!a3)
  {
    LODWORD(v49) = 1;
  }

  if (!v139)
  {
    LODWORD(v49) = 0;
  }

  v141 = v49;
  v127 = -v24;
  v51 = a9;
  v130 = (v12 & 0x20) >> 4;
  v126 = (a1 + 4040);
  v147 = v48 + v144;
  v52 = v18;
  v137 = v18;
  v143 = v12;
  while (1)
  {
    v165 = 0;
    v53 = v52;
    if (v51)
    {
      v166 = v51;
      v54 = 2;
    }

    else
    {
      v54 = 0;
    }

    v55 = v147;
    if (v43 >= v147)
    {
      v56 = v147;
    }

    else
    {
      v56 = v43;
    }

    if (v43)
    {
      v55 = v56;
    }

    v147 = v55;
    v160 = 0xAAAAAAAAAAAAAAAALL;
    if (v43)
    {
      LODWORD(v156) = -1431655766;
      *&v161 = 0xAAAAAAAAAAAAAAAALL;
      sub_10005530C(a1, &v156, &v161, 0, 0, &v160, 0);
      v57 = v161 / 0x64;
      if (v161 / 0x64 * v156 >= 0x1400001)
      {
        v57 = 0x1400000 / v156;
      }

      if (v160 < v43 || v160 - v43 < v57)
      {
        v141 = 0;
        v166 = 0;
        v22 = 28;
        v42 = v131;
        goto LABEL_195;
      }

      v58 = sub_100058A6C(a1, v54 | v128, v56, a10, &v166, v129);
      v22 = v58;
      if (v58)
      {
        v166 = 0;
        v42 = v131;
        if (v58 == 28)
        {
          v141 = 0;
          v22 = 28;
        }

        else
        {
          v115 = v165;
          if (v142 == 5)
          {
            v115 = 0;
          }

          sub_10003E5FC("%s:%d: %s spaceman_alloc() FAILED, err: %d xid: %lld paddr: %lld blocks requested: %lld blocks allocated: %lld\n", "alloc_space_for_write_with_hint_and_spino", 18877, v126, v58, a10, 0, v56, v115);
          v141 = 0;
        }

LABEL_195:
        v52 = v53;
        v60 = v43;
        goto LABEL_207;
      }
    }

    if (v142 == 5)
    {
      v59 = v147;
      v165 = v147;
    }

    else
    {
      v59 = v165;
    }

    v52 = v53;
    if (v59 > v43)
    {
      panic("we asked for %lld blocks but got %lld (orig %lld, blks_this_allocation %lld)\n");
    }

    if (v147 >= 1 && !v59)
    {
      panic("we asked for %lld blocks but got zero (paddr %lld) from spaceman_alloc() and no error.\n");
    }

    v60 = v165;
    if (v142 == 5 && v165 != v147)
    {
      v141 = 0;
      v22 = 28;
      goto LABEL_197;
    }

    if (v141)
    {
      v61 = v165 * v145;
      if ((v138 & 0x80000) != 0)
      {
        v62 = 0;
      }

      else
      {
        v62 = v165 * v145;
      }

      *&v161 = 0;
      *(&v161 + 1) = v62;
      if ((v138 & 0x80000) == 0)
      {
        v61 = 0;
      }

      v162 = 0uLL;
      v163 = v61;
      v164 = 0;
      sub_10002C5E0(a1, v139, &v161, a10);
      v60 = v165;
    }

    atomic_fetch_add_explicit((*(a1 + 376) + 224), v60, memory_order_relaxed);
    sub_10003728C(a1, a10);
    v60 = v165;
    v43 -= v165;
    v140 = v165;
    if (a6 / v145 <= v149[1] / v145)
    {
      if (!v165 || a6 <= *v149)
      {
        goto LABEL_126;
      }

      v70 = v145;
      if (a6 % v145)
      {
        v71 = sub_10003FB98(v145, 0xE8A92192uLL);
        if (!v71)
        {
          sub_10003E5FC("%s:%d: %s failed to allocate temporary block memory\n", "alloc_space_for_write_with_hint_and_spino", 19066, v126);
          v22 = 12;
          LOBYTE(v12) = v143;
          goto LABEL_205;
        }

        v72 = v71;
        *&v163 = 0;
        v161 = 0u;
        *(&v163 + 1) = v145;
        v164 = 0;
        *&v162 = a6 - a6 % v145;
        *(&v162 + 1) = v166;
        sub_1000354A4(a1, &v161, v149[2]);
        v22 = sub_100035D40(a1, &v161, v166, 1, v72, 0);
        if (!v22)
        {
          bzero(v72, a6 % v145);
          v22 = sub_100035E50(a1, &v161, v166, 1, v72);
        }

        sub_10003FB5C(v72, v145);
        LOBYTE(v12) = v143;
        v70 = v145;
      }

      else
      {
        LOBYTE(v12) = v143;
      }
    }

    else
    {
      v164 = 0xAAAAAAAAAAAAAAAALL;
      *&v65 = 0xAAAAAAAAAAAAAAAALL;
      *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v162 = v65;
      v163 = v65;
      v161 = v65;
      v159 = 0xAAAAAAAAAAAAAAAALL;
      v157 = v65;
      v158 = v65;
      v156 = v65;
      if (!sub_1000322C0(a1, v52, a6 & v127, 0, &v156, 0, v63, v64))
      {
        v73 = *(&v158 + 1);
        if (v165)
        {
          v74 = *(&v158 + 1) + v157;
        }

        else
        {
          BYTE1(v156) = 2;
          v12 = v134 + a6 - v157 - (v134 + a6) % v145;
          *(&v158 + 1) = v12;
          v79 = sub_1000324BC(a1, a2, &v156, a10, v66, v67, v63, v64);
          v22 = v79;
          if (v79)
          {
            sub_10003E5FC("%s:%d: %s failed updating hole %lld:%lld (pos %lld, len %lld alloced_size %lld) err %d\n", "alloc_space_for_write_with_hint_and_spino", 19040, v126, v157, *(&v158 + 1), a6, a7, *(&v158 + 1) + v157, v79);
            LOBYTE(v12) = v143;
            goto LABEL_197;
          }

          v131 = v131 - v73 + v12;
          v74 = *(&v158 + 1) + v157;
          v149[1] = *(&v158 + 1) + v157;
          LOBYTE(v12) = v143;
        }

        if (a7 >= v74 - a6)
        {
          a7 -= v74 - a6;
        }

        else
        {
          a7 = 0;
        }

        a6 = v74;
LABEL_126:
        v70 = v145;
        goto LABEL_127;
      }

      LODWORD(v161) = 3670280;
      *(&v161 + 1) = v52;
      v68 = v149[1];
      v162 = v68;
      LOBYTE(v164) = 0;
      *&v163 = 0;
      if (a7)
      {
        v69 = (a6 - v68) / v145 * v145;
      }

      else
      {
        v69 = v134 + a6 - v68 - (v134 + a6) % v145;
      }

      *(&v163 + 1) = v69;
      v75 = sub_100030EB4(a1, 1, &v161, a10);
      if (v75)
      {
        v22 = v75;
        sub_10003E5FC("%s:%d: %s failed inserting hole %lld:%lld (pos %lld, len %lld alloced_size %lld) err %d\n", "alloc_space_for_write_with_hint_and_spino", 18971, v126, v162, *(&v163 + 1), a6, a7, v149[1], v75);
LABEL_197:
        v42 = v131;
        goto LABEL_207;
      }

      v76 = *(&v163 + 1);
      if (*v149 != v149[1])
      {
        sub_100037330(a1, v137, *v149);
      }

      v131 += v76;
      if (v165)
      {
        v70 = v145;
        if (a6 % v145)
        {
          if (!v166)
          {
            panic("trying to zero the superblock!\n");
          }

          v77 = sub_10003FB98(v145, 0x534CE65EuLL);
          if (!v77)
          {
            sub_10003E5FC("%s:%d: %s failed to allocate temporary block memory\n", "alloc_space_for_write_with_hint_and_spino", 18996, v126);
            v22 = 12;
            LOBYTE(v12) = v143;
            v42 = v131;
            v52 = v137;
            goto LABEL_206;
          }

          v78 = v77;
          v153 = v163;
          v150 = v161;
          v154 = v145;
          v155 = v164;
          v151 = a6 - a6 % v145;
          v152 = v166;
          sub_1000354A4(a1, &v150, v149[2]);
          v22 = sub_100035D40(a1, &v150, v166, 1, v78, 0);
          if (!v22)
          {
            bzero(v78, a6 % v145);
            v22 = sub_100035E50(a1, &v150, v166, 1, v78);
          }

          sub_10003FB5C(v78, v145);
          LOBYTE(v12) = v143;
          v70 = v145;
        }

        else
        {
          v22 = 0;
          LOBYTE(v12) = v143;
        }
      }

      else
      {
        v22 = 0;
        LOBYTE(v12) = v143;
        v70 = v145;
      }

      if (a6 > *v149)
      {
        *a8 = a6;
      }

      if (!v165)
      {
        v149[1] = *(&v163 + 1) + v162;
      }
    }

LABEL_127:
    v80 = a6 / v70;
    if (!v165)
    {
      break;
    }

    v81 = v80 * v70;
    v82 = v165 * v70;
    v12 = v81 + v82;
    if (a6 < 1)
    {
      goto LABEL_136;
    }

    v164 = 0xAAAAAAAAAAAAAAAALL;
    *&v83 = 0xAAAAAAAAAAAAAAAALL;
    *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v162 = v83;
    v163 = v83;
    v161 = v83;
    if (sub_1000322C0(a1, v137, v81 - 1, 0, &v161, 0, v63, v64) || !*(&v162 + 1) || *(&v163 + 1) + v162 != v81 || *(&v163 + 1) / v145 + *(&v162 + 1) != v166 || (v130 & ~v164) != 0)
    {
      goto LABEL_136;
    }

    BYTE1(v161) = 2;
    *(&v163 + 1) += v82;
    v88 = sub_1000324BC(a1, a2, &v161, a10, v84, v85, v86, v87);
    if (v88)
    {
      v92 = v88;
      v124 = *(&v163 + 1);
      v125 = v162;
      v123 = *(a2 + 8);
      v93 = strerror(v88);
      sub_10003E5FC("%s:%d: %s failed to extend existing extent %lld:%lld of inode %lld: %s(%d)\n", "alloc_space_for_write_with_hint_and_spino", 19114, v126, v125, v124, v123, v93, v92);
LABEL_136:
      v94 = sub_100034C18(a1, v149);
      v95 = sub_100037468(a1, a2, v94, v81, v82, v166, v130, a10);
      if (v95)
      {
        v22 = v95;
        v113 = v136;
        v52 = v137;
        LOBYTE(v12) = v143;
        v42 = v131;
        v114 = v140;
        goto LABEL_214;
      }

      if (v12 > *v149)
      {
        v99 = a6 + a7;
        if (a7 >= v82)
        {
          v99 = v81 + v82;
        }

        *a8 = v99;
        v149[1] = v12;
      }

      LOBYTE(v12) = v143;
      if ((v143 & 8) != 0)
      {
        v105 = v165;
        v104 = v166;
        *&v156 = 0xAAAAAAAAAAAAAAAALL;
        v22 = sub_10002F2B4(a1, 2, a10, *(a1 + 440), &v156, v96, v97, v98);
        if (!v22)
        {
          *&v161 = v105 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
          *(&v161 + 1) = v146;
          LODWORD(v162) = 1;
          v22 = sub_100033510(a1, a10, v156, v104 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000, &v161, 0);
          sub_100046D50(v156);
        }

        LOBYTE(v12) = v143;
      }

      else
      {
        sub_1000338F4(a1, a10, v166, v165, v146, v96, v97, v98);
        v22 = 0;
      }

      v166 = 0;
      v70 = v145;
LABEL_153:
      if (a7 >= v165 * v70)
      {
        v106 = v165 * v70;
      }

      else
      {
        v106 = 0;
      }

      if ((v12 & 1) != 0 || !v43)
      {
        goto LABEL_204;
      }

      v12 = v165 * v70 + v80 * v70;
      a7 -= v106;
      v52 = v137;
      v107 = v140;
      goto LABEL_159;
    }

    sub_1000338F4(a1, a10, v166, v165, v146, v89, v90, v91);
    v166 = 0;
    if (v12 > *v149)
    {
      v108 = a6 + a7;
      if (a7 >= v82)
      {
        v108 = v81 + v82;
      }

      *a8 = v108;
      v149[1] = v12;
    }

    if (v143 & 1 | (v43 == 0) | (a7 < v82))
    {
      v109 = 0;
    }

    else
    {
      v109 = v82;
    }

    v52 = v137;
    v107 = v140;
    v22 = 0;
    if (v143 & 1 | (v43 == 0))
    {
      v144 = v140;
      LOBYTE(v12) = v143;
      goto LABEL_174;
    }

    a7 -= v109;
LABEL_159:
    v51 = a9;
    a6 = v12;
    LOBYTE(v12) = v143;
    if (v43 < 0)
    {
      v144 = v107;
LABEL_174:
      v42 = v131;
      goto LABEL_208;
    }
  }

  if (a7)
  {
    goto LABEL_153;
  }

  v100 = v149[1];
  if (v80 < v100 / v70 || (v101 = (v134 + a6) / v70 * v70 - v100) == 0)
  {
LABEL_148:
    a7 = 0;
    *a8 = a6;
    goto LABEL_153;
  }

  *(&v163 + 1) = v101;
  v164 = 0xAAAAAAAAAAAAAA00;
  *&v161 = 0xAAAAAAAA00380108;
  *(&v161 + 1) = v137;
  v162 = a6 & v127;
  *&v163 = 0;
  v102 = sub_100030EB4(a1, 1, &v161, a10);
  v22 = v102;
  v103 = *(&v163 + 1);
  if (!v102)
  {
    v149[1] = *(&v163 + 1) + v162;
    v131 += v103;
    goto LABEL_148;
  }

  sub_10003E5FC("%s:%d: %s failed inserting hole %lld:%lld (pos %lld, len %lld alloced_size %lld) err %d\n", "alloc_space_for_write_with_hint_and_spino", 19216, v126, v162, *(&v163 + 1), a6, 0, *(&v163 + 1) + v162, v102);
LABEL_204:
  v52 = v137;
LABEL_205:
  v42 = v131;
LABEL_206:
  v60 = v140;
LABEL_207:
  v144 = v60;
LABEL_208:
  if (v22 || v43 > 0)
  {
    v114 = v144;
    v113 = v136;
  }

  else
  {
    v113 = v136;
    if (v132 > *v149)
    {
      v22 = 0;
      *a8 = v132;
      goto LABEL_224;
    }

    v22 = 0;
    v114 = v144;
  }

LABEL_214:
  v116 = v166;
  if (v166)
  {
    if (v114)
    {
      atomic_fetch_add_explicit((*(a1 + 376) + 232), v114, memory_order_relaxed);
      sub_10005C5F4(a1, 0, v116, v114, a10);
      if (v141)
      {
        v117 = v114 * v145;
        if ((v138 & 0x80000) != 0)
        {
          v118 = 0;
        }

        else
        {
          v118 = -v117;
        }

        *&v161 = 0;
        *(&v161 + 1) = v118;
        if ((v138 & 0x80000) != 0)
        {
          v119 = -v117;
        }

        else
        {
          v119 = 0;
        }

        v162 = 0uLL;
        v164 = 0;
        v163 = v119;
        sub_10002C5E0(a1, v139, &v161, a10);
      }
    }
  }

LABEL_224:
  if (v42)
  {
    sub_100034FB4(v42, a2);
    if ((v12 & 0x10) == 0 && (*(a2 + 115) & 1) == 0)
    {
      sub_100031204(a1, 1, a2, a10);
    }

    *&v161 = 0;
    LODWORD(v156) = 0;
    v120 = sub_100062E90((a2 + 408), 8, 0, &v161, &v156);
    v121 = v156 == 40 && v120 == 0;
    v122 = v161;
    if (!v121)
    {
      v122 = 0;
    }

    *v135 = v122;
  }

  if (!v113)
  {
    sub_10003A410(a1, 1, v133 / 0x32 + 2, v133, a10, 0);
  }

  sub_10002CE04((a1 + 3296), v52);
  return v22;
}

void sub_10003728C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 484) & 4) != 0)
  {
    v4 = *(a1 + 376);
    if ((*(v4 + 264) & 4) == 0)
    {
      atomic_fetch_or_explicit((v4 + 264), 4uLL, memory_order_relaxed);
    }

    pthread_mutex_lock((a1 + 1280));
    *(a1 + 480) &= ~0x400000000uLL;
    pthread_mutex_unlock((a1 + 1280));
  }

  *(*(a1 + 376) + 1056) = a2;
  v5 = sub_1000191F0(a1);
  v6 = *(a1 + 376);
  if (v5)
  {
    *(v6 + 1064) |= 0x10u;
  }

  *(v6 + 1120) = a2;

  sub_10004C7D8(a1, a2, 0);
}

void sub_100037330(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_1000155FC(*(*(a1 + 392) + 384));
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v7;
  v16 = v7;
  v14 = v7;
  if (sub_1000322C0(a1, a2, a3 - 1, 0, &v14, 0, v8, v9))
  {
    sub_10003E5FC("%s:%d: %s failed to lookup pos %lld in obj-id %lld\n", "zero_tail_of_last_block", 18277, (a1 + 4040), a3 - 1, a2);
  }

  else if (*(&v15 + 1))
  {
    v10 = v6;
    v11 = sub_10003FB98(v6, 0x5D6DA4F3uLL);
    v12 = *(&v15 + 1);
    v13 = (a3 - v15) / v10;
    if (!sub_100035D40(a1, &v14, v13 + *(&v15 + 1), 1, v11, 0))
    {
      bzero(&v11[a3 % v10], v10 - a3 % v10);
      sub_100035E50(a1, &v14, v13 + v12, 1, v11);
    }

    sub_10003FB5C(v11, v10);
  }
}

uint64_t sub_100037468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, unint64_t a8)
{
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v12;
  v29 = v12;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = a5;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v28) = 3670280;
  *(&v28 + 1) = *(a2 + 24);
  *&v29 = a4;
  *(&v29 + 1) = a6;
  v30 = 0;
  LOBYTE(v32) = 0;
  sub_1000354A4(a1, &v28, a3);
  LOBYTE(v32) = v32 | a7;
  v13 = sub_100034488(a1, &v28);
  v14 = sub_1000347D4(a1, v13, a8);
  if (v14)
  {
    v15 = v14;
    sub_10003E5FC("%s:%d: %s fext_ref_extent_key for fext %llu with crid %llu failed with %d\n", "fs_insert_fext_record", 18598, (a1 + 4040), *(&v28 + 1), a3, v14);
  }

  else
  {
    v17 = sub_100030EB4(a1, 1, &v28, a8);
    v15 = v17;
    if (v17)
    {
      v18 = (a1 + 4040);
      v19 = v31;
      v21 = *(&v28 + 1);
      v20 = v29;
      v22 = strerror(v17);
      sub_10003E5FC("%s:%d: %s cannot insert file extent record for extent of %lld bytes at offset %lld of data stream %lld in transaction %lld: %s(%d)\n", "fs_insert_fext_record", 18588, (a1 + 4040), v19, v20, v21, a8, v22, v15);
      v23 = sub_100034488(a1, &v28);
      v24 = sub_100034870(a1, v23, a8);
      if (v24)
      {
        v25 = v24;
        v26 = *(&v28 + 1);
        v27 = strerror(v24);
        sub_10003E5FC("%s:%d: %s Failed to release reference to crypto ID %lld for data stream %lld: %s(%d)\n", "fs_insert_fext_record", 18593, v18, a3, v26, v27, v25);
      }
    }
  }

  return v15;
}

uint64_t sub_1000375F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, char *a5, unint64_t a6, unint64_t *a7)
{
  v12 = a1;
  v49 = 0;
  v50[0] = a3;
  v13 = sub_1000155FC(*(*(a1 + 392) + 384));
  *a7 = 0;
  v14 = a6 + a4;
  v15 = *a3;
  v39 = v15;
  if (a6 + a4 > v15)
  {
    v16 = sub_100036044(v12, a2, 0, v50, 0, a4, a6, &v49, 0, 0);
    if (v16)
    {
      v17 = v16;
      sub_10003E5FC("%s:%d: %s could not alloc %zd bytes @ pos %lld for obj-id %lld (err %d)\n", "fs_write_stream", 19330, (v12 + 4040), a6, a4, *(a2 + 24), v16);
      return v17;
    }

    v39 = v49;
    *v50[0] = v49;
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v18;
  v47 = v18;
  v45 = v18;
  if (a6)
  {
    v36 = v15;
    v37 = a6 + a4;
    v40 = a2;
    v41 = a6;
    v38 = a7;
    v19 = 0;
    v35 = (v12 + 4040);
    v20 = a6;
    v21 = a6;
    v43 = v12;
    while (1)
    {
      v22 = sub_100037A94(v12, v40, v50, a4, v20, 2, (v40 + 336), &v45, 0, 0);
      if (v22)
      {
        break;
      }

      v23 = v46;
      v24 = *(&v47 + 1) + v46;
      if (a4 < *(&v47 + 1) + v46 && v19 < v21)
      {
        while (1)
        {
          v26 = *(&v46 + 1);
          v27 = a4 - v23;
          if (v27)
          {
            v26 = v27 / v13 + *(&v46 + 1);
          }

          v28 = a4 + v20 >= v24 ? v24 - a4 : v20;
          v29 = a4 % v13;
          v30 = v28 / v13;
          v42 = v30;
          if (v29)
          {
            break;
          }

          if (v28 < v13)
          {
            v33 = sub_10003FB98(v13, 0x2B2F0B04uLL);
            if (v20 >= v13)
            {
              v32 = v13;
            }

            else
            {
              v32 = v20;
            }

            v17 = sub_100035D40(v43, &v45, v26, 1, v33, 0);
            if (!v17)
            {
              if (a4 + v20 == v39)
              {
                bzero(v33, v13);
              }

              memcpy(v33, a5, v32);
              v17 = sub_100035E50(v43, &v45, v26, 1, v33);
            }

            sub_10003FB5C(v33, v13);
            v12 = v43;
LABEL_36:
            v21 = v41;
            if (v17)
            {
              goto LABEL_44;
            }

            goto LABEL_37;
          }

          if (v20 >= v30 * v13)
          {
            v32 = v30 * v13;
          }

          else
          {
            v32 = v20;
          }

          v12 = v43;
          v17 = sub_100035E50(v43, &v45, v26, v30, a5);
          if (v17)
          {
LABEL_44:
            a2 = v40;
            sub_10003E50C("%s:%d: %s got err %d writing at pos %lld in obj-id %lld (blkcount %llu, len %zd)\n", "fs_write_stream", 19424, v35, v17, a4, *(v40 + 24), v42, v20);
            goto LABEL_45;
          }

LABEL_37:
          v20 -= v32;
          a5 += v32;
          v19 += v32;
          a4 += v32;
          v23 = v46;
          v24 = *(&v47 + 1) + v46;
          if (a4 >= *(&v47 + 1) + v46 || v19 >= v21)
          {
            goto LABEL_13;
          }
        }

        v31 = sub_10003FB98(v13, 0x36E98DE4uLL);
        if (v13 - v29 >= v20)
        {
          v32 = v20;
        }

        else
        {
          v32 = v13 - v29;
        }

        v12 = v43;
        v17 = sub_100035D40(v43, &v45, v26, 1, v31, 0);
        if (!v17)
        {
          memcpy(&v31[v29], a5, v32);
          v17 = sub_100035E50(v43, &v45, v26, 1, v31);
        }

        sub_10003FB5C(v31, v13);
        goto LABEL_36;
      }

LABEL_13:
      if (v19 >= v21)
      {
        v17 = 0;
        a7 = v38;
        a2 = v40;
        goto LABEL_46;
      }
    }

    v17 = v22;
    a2 = v40;
    sub_10003E5FC("%s:%d: %s failed to lookup pos %lld in obj-id %lld err %d\n", "fs_write_stream", 19348, v35, a4, *(v40 + 24), v22);
LABEL_45:
    a7 = v38;
LABEL_46:
    v15 = v36;
    v14 = v37;
  }

  else
  {
    v19 = 0;
    v17 = 0;
  }

  if (v14 > v15)
  {
    if (a4 != v49)
    {
      sub_10003E5FC("%s:%d: %s failed to finish writing to obj-id %lld (pos %lld / new_size %lld)\n", "fs_write_stream", 19446, (v12 + 4040), *(a2 + 24), a4, v49);
    }

    *v50[0] = a4;
  }

  *a7 = v19;
  return v17;
}

BOOL sub_100037A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 376);
  result = 1;
  if ((*(v2 + 264) & 0x40) == 0)
  {
    v3 = *(v2 + 984);
    if (v3)
    {
      v4 = *(a2 + 8);
      if (v4 >= v3 && (*(a2 + 65) & 4) == 0 && (*(a2 + 112) & 0x4000000002) == 0 && (!*(v2 + 216) || *(a1 + 472) - 1 < v4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100037A94(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, unint64_t a5, char a6, uint64_t *a7, uint64_t a8, _DWORD *a9, unint64_t a10)
{
  v17 = a10;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v18 = sub_1000155FC(*(*(a1 + 392) + 384));
  if (a9)
  {
    *a9 = 0;
  }

  v77 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75 = v19;
  v76 = v19;
  v74 = v19;
  if (*(*a3 + 8) <= a4)
  {
    return 2;
  }

  if ((a6 & 4) != 0 && v17)
  {
    return 22;
  }

  v63 = a3;
  v21 = 0;
  v22 = 0;
  v65 = (a5 + v18 - 1 - (a4 + a5 + v18 - 1) % v18 + a4 % v18) / v18;
  v64 = v65 / 50;
  while (1)
  {
    while (1)
    {
      if (v21)
      {
        if ((a6 & 4) != 0)
        {
          a10 = -1;
        }

        v23 = 1;
        v24 = sub_100039E1C(a1, 1, v64 + 7, v65, 0, &a10);
        if (v24)
        {
          v20 = v24;
          if (v24 == 28 && !sub_100042AEC(*(a1 + 392)))
          {
            v36 = 0;
            v20 = 28;
          }

          else
          {
            v37 = a10;
            v38 = strerror(v20);
            sub_10003E5FC("%s:%d: %s Cannot start transaction with XID %lld: %s(%d)\n", "fs_map_file_offset_ext", 21558, (a1 + 4040), v37, v38, v20);
            v36 = 0;
          }

          goto LABEL_65;
        }
      }

      else
      {
        v23 = v22;
      }

      sub_10002CCA8((a1 + 3296), *(a2 + 24));
      v27 = sub_1000322C0(a1, *(a2 + 24), a4, a7, &v74, 0, v25, v26);
      if (v27)
      {
        v20 = v27;
        if (v27 == 6 && !sub_100042AEC(*(a1 + 392)))
        {
          v36 = 1;
          v20 = 6;
        }

        else
        {
          v33 = *(a2 + 24);
          v34 = *(a2 + 8);
          v35 = strerror(v20);
          sub_10003E5FC("%s:%d: %s Cannot find extent at offset %lld in dstream %lld of inode %lld: %s(%d)\n", "fs_map_file_offset_ext", 21569, (a1 + 4040), a4, v33, v34, v35, v20);
          v36 = 1;
        }

        goto LABEL_64;
      }

      v28 = v77;
      if ((v77 & 2) != 0 && (*(*(a1 + 376) + 56) & 0x80) == 0)
      {
        sub_10003E5FC("%s:%d: %s Unexpected unwritten extent for offset %lld of data stream %lld in inode %lld\n", "fs_map_file_offset_ext", 21576, (a1 + 4040), v75, *(&v74 + 1), *(a2 + 8));
        v36 = 1;
        v20 = 22;
        goto LABEL_64;
      }

      if (a6)
      {
        goto LABEL_62;
      }

      if ((a6 & 4) != 0)
      {
        v29 = *(a1 + 392);
        if ((*(v29 + 629) & 1) == 0 && (*(a2 + 115) & 1) == 0 && *(&v75 + 1))
        {
          break;
        }
      }

      if (!*(&v75 + 1))
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (v75 - a4 + *(&v76 + 1) >= a5)
        {
          v51 = a5;
        }

        else
        {
          v51 = v75 - a4 + *(&v76 + 1);
        }

        v72 = 0;
        v52 = sub_100038430(a1, a2, *v63, a4, v51, &v74, &v72, &v73, a10);
        if (v52)
        {
          v53 = v52;
          if (v52 == 6 && !sub_100042AEC(*(a1 + 392)))
          {
            LOBYTE(v22) = 1;
            v20 = 6;
          }

          else
          {
            v22 = *(a2 + 24);
            v54 = *(a2 + 8);
            v55 = strerror(v53);
            sub_10003E5FC("%s:%d: %s Cannot allocate space for %zu bytes at offset %lld in dstream %lld of inode %lld: %s(%d)\n", "fs_map_file_offset_ext", 21936, (a1 + 4040), v51, a4, v22, v54, v55, v53);
            LOBYTE(v22) = 1;
            v20 = v53;
          }

          goto LABEL_83;
        }

        if (a9)
        {
          *a9 = v72;
        }

        LOBYTE(v23) = 1;
LABEL_62:
        v20 = 0;
        v56 = v75;
        *a8 = v74;
        *(a8 + 16) = v56;
        *(a8 + 32) = v76;
        *(a8 + 48) = v77;
LABEL_63:
        v36 = 1;
LABEL_64:
        LOBYTE(v22) = v23;
        goto LABEL_65;
      }

LABEL_30:
      if ((v28 & 2) != 0)
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_38;
        }

        v31 = sub_10003810C(a1, a2, a4, a5, &v74, a10);
        if (v31)
        {
          v20 = v31;
          LOBYTE(v22) = 1;
LABEL_83:
          v36 = 1;
          goto LABEL_65;
        }
      }

      v32 = sub_100038960(a1, a2, *v63, a4, a5, &v74, a10, &v71, a9, (v28 & 2) != 0);
      if (v32)
      {
        v20 = v32;
        v39 = *(a2 + 24);
        v40 = *(a2 + 8);
        v41 = strerror(v32);
        sub_10003E5FC("%s:%d: %s Cannot mark space for %zu bytes at offset %lld in dstream %lld of inode %lld as writable: %s(%d)\n", "fs_map_file_offset_ext", 21971, (a1 + 4040), a5, a4, v39, v40, v41, v20);
        if ((v28 & 2) != 0)
        {
          LOBYTE(v77) = v77 | 2;
          v46 = sub_1000324BC(a1, a2, &v74, a10, v42, v43, v44, v45);
          if (v46)
          {
            v47 = v46;
            v48 = *(a2 + 24);
            v49 = *(a2 + 8);
            v50 = strerror(v46);
            sub_10003E5FC("%s:%d: %s Cannot restore unwritten status of extent at offset %lld in dstream %lld of inode %lld: %s(%d)\n", "fs_map_file_offset_ext", 21979, (a1 + 4040), a4, v48, v49, v50, v47);
          }
        }

        goto LABEL_63;
      }

      if (a10 || v71 != 1)
      {
        goto LABEL_62;
      }

      sub_10002CE04((a1 + 3296), *(a2 + 24));
      v21 = 1;
      v22 = v23;
    }

    v30 = *(v29 + 376);
    if (*(v30 + 1240) || *(v30 + 1248) || sub_100037A30(a1, a2))
    {
      goto LABEL_30;
    }

    if ((v28 & 2) == 0)
    {
      goto LABEL_62;
    }

    if (v23)
    {
      break;
    }

LABEL_38:
    sub_10002CE04((a1 + 3296), *(a2 + 24));
    v22 = 0;
    v21 = 1;
    v71 = 1;
  }

  v62 = sub_10003810C(a1, a2, a4, a5, &v74, a10);
  v20 = v62;
  LOBYTE(v23) = 1;
  LOBYTE(v22) = 1;
  v36 = 1;
  if (!v62)
  {
    goto LABEL_62;
  }

LABEL_65:
  v57 = v73;
  if (v73)
  {
    sub_100034FB4(v73, a2);
    if ((*(a2 + 115) & 1) == 0)
    {
      sub_100031204(a1, 1, a2, a10);
    }

    v67[0] = 0;
    v78[0] = 0;
    v58 = sub_100062E90((a2 + 408), 8, 0, v67, v78);
    v59 = v78[0] == 40 && v58 == 0;
    v60 = v67[0];
    if (!v59)
    {
      v60 = 0;
    }

    *v63 = v60;
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v67[0] = 0;
    v67[1] = -v57;
    sub_10002C5E0(a1, a2, v67, a10);
  }

  if (v22)
  {
    sub_10003A410(a1, 1, v64 + 7, v65, a10, 0);
    if (!v36)
    {
      goto LABEL_76;
    }

LABEL_80:
    sub_10002CE04((a1 + 3296), *(a2 + 24));
    if (!v20)
    {
      return v20;
    }

LABEL_77:
    *(a8 + 48) = 0;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0u;
    *a8 = 0u;
    return v20;
  }

  if (v36)
  {
    goto LABEL_80;
  }

LABEL_76:
  if (v20)
  {
    goto LABEL_77;
  }

  return v20;
}

uint64_t sub_10003810C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __int128 *a5, unint64_t a6)
{
  v12 = sub_1000155FC(*(*(a1 + 392) + 384));
  v13 = a3 / v12 * v12;
  v14 = *(a5 + 2);
  v15 = *(a5 + 3);
  v16 = a5[1];
  v48 = *a5;
  v49 = v16;
  v17 = *(a5 + 6);
  v18 = (a3 + a4 + v12 - 1) / v12 * v12;
  v19 = *(a5 + 5) + v14;
  v20 = v18 - v13;
  v50 = a5[2];
  v51 = v17;
  v21 = sub_100034488(a1, a5);
  BYTE1(v48) = 2;
  if (v13 != *(a5 + 2))
  {
    v46 = v15;
    v47 = v21;
    *(&v50 + 1) = v13 - *(a5 + 2);
    v30 = sub_1000324BC(a1, a2, &v48, a6, v22, v23, v24, v25);
    if (!v30)
    {
      v38 = *(&v50 + 1);
      v39 = v19 - v18;
      if (v19 <= v18)
      {
        v20 = *(a5 + 5) - *(&v50 + 1);
        v41 = v47;
      }

      else
      {
        v40 = *(&v50 + 1);
        v41 = v47;
        v42 = sub_100037468(a1, a2, v47, v18, v39, (v18 - *(a5 + 2)) / v12 + *(a5 + 3), 2, a6);
        v38 = v40;
        if (v42)
        {
          return v42;
        }
      }

      v45 = v38 / v12 + v46;
      v29 = sub_100037468(a1, a2, v41, v13, v20, v45, 0, a6);
      if (!v29)
      {
        *(a5 + 5) = v20;
        *(a5 + 2) = v13;
        *(a5 + 3) = v45;
        *(a5 + 48) &= ~2u;
      }

      return v29;
    }

    v29 = v30;
    v31 = (a1 + 4040);
    v32 = *(a2 + 8);
    v33 = *(a5 + 5);
    v34 = v49;
    v35 = *(&v50 + 1);
    v36 = strerror(v30);
    sub_10003E5FC("%s:%d: %s Cannot trim extent at offset %lld in inode %lld from %lld to %lld bytes: %s(%d)\n", "fs_update_unwritten_extent_record", 21426, v31, v34, v32, v33, v35, v36, v29);
    return v29;
  }

  *(a5 + 1) = 2;
  v26 = v19 - v18;
  if (v19 <= v18)
  {
    *(a5 + 48) &= ~2u;
    v37 = sub_1000324BC(a1, a2, a5, a6, v22, v23, v24, v25);
    v29 = v37;
    if (v37)
    {
      strerror(v37);
      sub_10003E5FC("%s:%d: %s Cannot update extent at offset %lld in inode %lld: %s(%d)\n");
    }

    return v29;
  }

  v27 = v21;
  *(a5 + 5) = v20;
  *(a5 + 48) &= ~2u;
  v28 = sub_1000324BC(a1, a2, a5, a6, v22, v23, v24, v25);
  if (v28)
  {
    v29 = v28;
    strerror(v28);
    sub_10003E5FC("%s:%d: %s Cannot trim extent at offset %lld in inode %lld from %lld to %lld bytes: %s(%d)\n", "fs_update_unwritten_extent_record", 21463);
    return v29;
  }

  v43 = *(a5 + 5) / v12 + *(a5 + 3);

  return sub_100037468(a1, a2, v27, v18, v26, v43, 2, a6);
}

uint64_t sub_100038430(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int *a7, void *a8, unint64_t a9)
{
  v69 = *(a2 + 8);
  v16 = sub_1000155FC(*(*(a1 + 392) + 384));
  v17 = v16;
  v18 = a4 % v16;
  v19 = a4 - *(a6 + 16);
  v73 = a6;
  v20 = *(a6 + 40);
  v70 = v19;
  v71 = a8;
  v21 = v20 - v19;
  if (v21 >= a5)
  {
    v22 = a5;
  }

  else
  {
    v22 = v21;
  }

  v76 = 0;
  v77 = 0;
  v23 = (v18 + v16 + v22 - 1) / v16;
  *a8 = 0;
  v24 = sub_100058A6C(a1, 0, v23, a9, &v76, &v77);
  v25 = v77;
  if (v24)
  {
    v26 = 1;
  }

  else
  {
    v26 = v77 <= 0;
  }

  if (v26)
  {
    if (v24)
    {
      return v24;
    }

    else
    {
      return 28;
    }
  }

  v67 = a2;
  atomic_fetch_add_explicit((*(a1 + 376) + 224), v77, memory_order_relaxed);
  sub_10003728C(a1, a9);
  v68 = v25 * v17;
  v31 = v25 * v17 - v18;
  if (v25 == v23)
  {
    v31 = v22;
  }

  v32 = v76;
  v33 = (v31 + v18) % v17;
  if (a7)
  {
    v34 = *a7 | 4;
    *a7 = v34;
    v35 = v32;
    v36 = a1;
    v37 = v73;
    v38 = v25 * v17;
    if (!(v18 | v33))
    {
      goto LABEL_23;
    }

    *a7 = (v18 != 0) | (2 * (v33 != 0)) | v34;
  }

  else
  {
    v35 = v76;
    v36 = a1;
    v37 = v73;
    v38 = v25 * v17;
    if (!(v18 | v33))
    {
      goto LABEL_23;
    }
  }

  v39 = sub_10003FA58(1uLL, v17, 0x58938E58uLL);
  *&v40 = 0xAAAAAAAAAAAAAAAALL;
  *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v75[8] = v40;
  *&v75[40] = v40;
  *&v75[24] = v40;
  *v75 = v37;
  *&v75[16] = *(v37 + 40) - 0x5555555555555556;
  *&v75[24] = v32;
  *&v75[40] = v38;
  sub_1000354A4(v36, v75, *(a3 + 16));
  v27 = sub_100035E50(v36, v75, v32, 1, v39);
  if (!v27 && v25 != 1)
  {
    *&v75[24] = v25 + v32 - 1;
    v27 = sub_100035E50(v36, v75, *&v75[24], 1, v39);
  }

  sub_10003FB5C(v39, v17);
  if (v27)
  {
    return v27;
  }

  v35 = v76;
LABEL_23:
  v41 = v32;
  v42 = v70 - v18;
  *v71 -= v38;
  v43 = sub_1000338F4(v36, a9, v35, v25, v69, v28, v29, v30);
  if (v43)
  {
    v27 = v43;
    v44 = *(v37 + 16) + v42;
    *(v37 + 40) = v38;
    *(v37 + 16) = v44;
    *(v37 + 24) = v41;
    return v27;
  }

  v49 = sub_100034C18(v36, a3);
  v74 = v38 + v42;
  if (v70 == v18)
  {
    *&v75[48] = 0xAAAAAAAAAAAAAAAALL;
    *&v50 = 0xAAAAAAAAAAAAAAAALL;
    *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v75[16] = v50;
    *&v75[32] = v50;
    *v75 = v50;
    *(v37 + 1) = 2;
    *(v37 + 40) = v38;
    v51 = v41;
    *(v37 + 24) = v41;
    sub_1000354A4(v36, v37, v49);
    v56 = *(v37 + 16);
    v57 = v20;
    if (!v56 || sub_1000322C0(v36, *(v37 + 8), v56 - 1, (v67 + 336), v75, 0, v54, v55))
    {
      goto LABEL_28;
    }

    if (*&v75[24])
    {
      v65 = *&v75[40] + *&v75[16];
      v66 = *(v37 + 16);
      if (*&v75[40] + *&v75[16] == v66)
      {
        if (*&v75[40] / v17 + *&v75[24] == v51)
        {
          v75[1] = 2;
          *&v75[40] += v68;
          *(v37 + 1) = 3;
          sub_10003135C(v36, 1, v37, a9);
          v59 = sub_100031204(v36, 1, v75, a9);
          if (v59)
          {
            return v59;
          }

          v61 = v38 + v42;
          if (v20 == v74)
          {
            return 0;
          }

          goto LABEL_34;
        }

LABEL_28:
        v58 = a9;
        v59 = sub_1000324BC(v36, v67, v37, a9, v52, v53, v54, v55);
        if (!v59)
        {
          goto LABEL_32;
        }

        return v59;
      }
    }

    else
    {
      v66 = *(v37 + 16);
      v65 = *&v75[40] + *&v75[16];
    }

    if (v65 != v66 && *&v75[40] / v17 + *&v75[24] == v51)
    {
      sub_10003E50C("%s:%d: %s BUG BUG BUG: ino %lld non-contiguous extents! prev_fext %lld:%lld (%lld) and orig_fext %lld:%lld (%lld)\n", "fs_make_hole_range_writable", 19851, (v36 + 4040), *(v67 + 8), *&v75[16], *&v75[40], *&v75[24], v66, *(v37 + 40), *(v37 + 24));
    }

    goto LABEL_28;
  }

  *(v37 + 40) = v42;
  *(v37 + 1) = 2;
  v58 = a9;
  v27 = sub_1000324BC(v36, v67, v37, a9, v45, v46, v47, v48);
  *(v37 + 1) = 1;
  v60 = *(v37 + 16) + *(v37 + 40);
  *(v37 + 40) = v38;
  *(v37 + 16) = v60;
  *(v37 + 24) = v41;
  sub_1000354A4(v36, v37, v49);
  v57 = v20;
  if (v27)
  {
    return v27;
  }

  v59 = sub_100030EB4(v36, 1, v37, a9);
  if (v59)
  {
    return v59;
  }

LABEL_32:
  v27 = sub_1000347D4(v36, v49, v58);
  if (!v27)
  {
    v61 = v38 + v42;
    if (v57 != v74)
    {
LABEL_34:
      *&v62 = 0xAAAAAAAAAAAAAAAALL;
      *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v75 = v62;
      *&v75[16] = v62;
      *&v75[48] = 0xAAAAAAAAAAAAAAAALL;
      *&v75[2] = *(v37 + 2);
      *v75 = 264;
      v63 = *(v37 + 40) + *(v37 + 16);
      *&v75[8] = *(v37 + 8);
      *&v75[16] = v63;
      *&v75[40] = v57 - v61;
      *&v75[24] = 0uLL;
      v75[48] = 0;
      return sub_100030EB4(v36, 1, v75, a9);
    }
  }

  return v27;
}

uint64_t sub_100038960(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, unint64_t a7, _BYTE *a8, _DWORD *a9, char a10)
{
  v136[0] = a7;
  v20 = sub_1000155FC(*(*(a1 + 49) + 384));
  v133 = -1;
  v21 = a6[5];
  v23 = a6[2];
  v22 = a6[3];
  if (v21 - a4 + v23 >= a5)
  {
    v24 = a5;
  }

  else
  {
    v24 = v21 - a4 + v23;
  }

  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  *a8 = 0;
  if (a9)
  {
    *a9 = 0;
  }

  if ((*(a2 + 116) & 8) != 0)
  {
    return 0;
  }

  v117 = v21;
  v118 = v23;
  v119 = v22;
  v120 = a2;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v134 = 0xAAAAAAAAAAAAAAAALL;
  v129 = v25;
  v130 = v25;
  v131 = v25;
  v132 = 0xAAAAAAAAAAAAAAAALL;
  memset(v135, 0, 77);
  v26 = sub_10002F2B4(a1, 2, a7, *(a1 + 55), &v134, v17, v18, v19);
  if (v26)
  {
    v27 = v26;
    sub_10003E5FC("%s:%d: %s Couldn't get active extentref tree, err=%d\n", "fs_make_phys_range_writable", 20205, a1 + 4040, v26);
    return v27;
  }

  v106 = a6;
  v107 = a3;
  v29 = v20;
  v30 = v24;
  v31 = a4 / v20 * v20;
  v32 = a4 % v20;
  v33 = v32 + v20;
  v34 = a4 - v118;
  v35 = (a4 - v118) / v29;
  v36 = v35 + v119;
  v112 = v30;
  v114 = (v33 + v30 - 1) / v29;
  v37 = sub_1000326D0(v26, v134, v35 + v119, v114 + v35 + v119 - 1, &v133, v135);
  if (v37)
  {
    v27 = v37;
    v38 = a1;
    v116 = v35 + v119;
    sub_10003E5FC("%s:%d: %s Couldn't acquire lock on %llu-%llu, err=%d\n", "fs_make_phys_range_writable", 20214, a1 + 4040, v36, v114 + v35 + v119 - 1, v37);
    v111 = 0;
    v113 = 0;
    v109 = 0;
    v110 = 0;
    v39 = 0;
    LOBYTE(v40) = 0;
    v41 = 0;
    v115 = 0;
LABEL_17:
    v43 = v38 + 4040;
    sub_10003E5FC("%s:%d: %s Failing with error=%d\n", "fs_make_phys_range_writable", 20587, v38 + 4040, v27);
    v44 = 0;
    v108 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_18;
  }

  v101 = v35;
  v102 = v34;
  v104 = v29;
  v42 = sub_10003DC28(a1, v120, v134, v36, v114, v135, &v124, &v128, &v125);
  if (v42)
  {
    v27 = v42;
    v116 = v35 + v119;
    v111 = 0;
    v113 = 0;
    v109 = 0;
    v110 = 0;
    v39 = 0;
    LOBYTE(v40) = 0;
LABEL_15:
    v41 = 0;
    v115 = 0;
LABEL_16:
    v38 = a1;
    goto LABEL_17;
  }

  if (v124 && v128 == v114)
  {
    v27 = 0;
    goto LABEL_130;
  }

  if (v124)
  {
    v27 = 0;
    v106[5] = (v128 + v36 - v106[3]) * v29;
    goto LABEL_130;
  }

  if (!v136[0])
  {
    v27 = 0;
    *a8 = 1;
    goto LABEL_130;
  }

  v116 = v35 + v119;
  v109 = v125 + 6;
  v48 = v128;
  v49 = sub_100039E1C(a1, 1, v125 + 6, v128, 0, v136);
  v110 = v48;
  if (v49)
  {
    v27 = v49;
    v111 = 0;
    v113 = 0;
    v39 = 0;
    LOBYTE(v40) = 0;
    v41 = 0;
    v115 = 0;
    v38 = a1;
    goto LABEL_17;
  }

  v50 = sub_100058A6C(a1, 0, v48, v136[0], &v126, &v127);
  if (v50 || (v51 = v127, v127 <= 0))
  {
    v111 = 0;
    v113 = 0;
    LOBYTE(v40) = 0;
    v41 = 0;
    v115 = 0;
    if (v50)
    {
      v27 = v50;
    }

    else
    {
      v27 = 28;
    }

    goto LABEL_60;
  }

  v128 = v127;
  atomic_fetch_add_explicit((*(a1 + 47) + 224), v127, memory_order_relaxed);
  sub_10003728C(a1, v136[0]);
  v98 = v51 * v29;
  v99 = v126;
  v52 = v51 * v29 - v32;
  v53 = v29;
  if (v51 == v114)
  {
    v52 = v112;
  }

  v54 = (v52 + v32) % v29;
  v111 = sub_100034488(a1, v106);
  v97 = *(v106 + 48);
  if (v97)
  {
    v96 = v106[4];
  }

  else
  {
    v96 = 0;
  }

  v100 = v51 + v36;
  v113 = sub_100034C18(a1, v107);
  v59 = v120;
  if (v54 | v32)
  {
    v60 = sub_10003FA58(1uLL, v29, 0xE79BD7ABuLL);
    if (a9)
    {
      *a9 |= 8u;
    }

    if (v32 && ((a10 & 1) == 0 && (v61 = sub_100035D40(a1, v106, v116, 1, v60, 0), v61) || (v122 = 0u, memset(v123, 0, sizeof(v123)), *(&v122 + 1) = *(v120 + 24), *v123 = v31, *&v123[24] = v104, *&v123[8] = v99, sub_1000354A4(a1, &v122, v113), v61 = sub_100035E50(a1, &v122, v99, 1, v60), v61)) || (v32 ? (v62 = v51 == 1) : (v62 = 0), !v62 ? (v63 = 0) : (v63 = 1), v54 && (v63 & 1) == 0 && ((a10 & 1) == 0 && (v61 = sub_100035D40(a1, v106, v100 - 1, 1, v60, 0), v61) || (v122 = 0u, memset(v123, 0, sizeof(v123)), *(&v122 + 1) = *(v120 + 24), *v123 = v31 - v104 + v98, *&v123[24] = v104, *&v123[8] = v51 + v99 - 1, sub_1000354A4(a1, &v122, v113), v61 = sub_100035E50(a1, &v122, v51 + v99 - 1, 1, v60), v61))))
    {
      v27 = v61;
      sub_10003FB5C(v60, v104);
      LOBYTE(v40) = 0;
      v41 = 0;
LABEL_59:
      v115 = 0;
LABEL_60:
      v39 = 1;
      goto LABEL_16;
    }

    sub_10003FB5C(v60, v104);
  }

  v64 = v117 / v104 + v119;
  v65 = v102;
  v40 = v102 >= v104;
  if (v64 == v100)
  {
    v41 = 0;
  }

  else
  {
    v66 = sub_1000347D4(a1, v111, v136[0]);
    v39 = 1;
    if (v66)
    {
      v27 = v66;
      goto LABEL_15;
    }

    v41 = 1;
    v65 = v102;
    v53 = v104;
  }

  v95 = v64 != v100;
  if (v65 < v53)
  {
    if (v111 == v113)
    {
      v115 = 0;
    }

    else
    {
      v73 = sub_1000347D4(a1, v113, v136[0]);
      if (v73)
      {
        v27 = v73;
        LOBYTE(v40) = 0;
        goto LABEL_59;
      }

      v77 = sub_100034870(a1, v111, v136[0]);
      if (v77)
      {
        v27 = v77;
        LOBYTE(v40) = 0;
        v39 = 1;
        v115 = 1;
        goto LABEL_16;
      }

      --v41;
      v115 = 1;
      v59 = v120;
    }

    *(v106 + 1) = 2;
    v106[5] = v98;
    v106[3] = v99;
    sub_1000354A4(a1, v106, v113);
    v72 = sub_1000324BC(a1, v59, v106, v136[0], v68, v69, v70, v71);
    if (v72)
    {
      v27 = v72;
      LOBYTE(v40) = 0;
      goto LABEL_60;
    }

    v103 = 0;
  }

  else
  {
    v106[5] = v101 * v53;
    *(v106 + 1) = 2;
    v67 = sub_1000324BC(a1, v120, v106, v136[0], v55, v56, v57, v58);
    v39 = 1;
    if (v67)
    {
      v27 = v67;
      v115 = 0;
      LOBYTE(v40) = 1;
      goto LABEL_16;
    }

    *(v106 + 1) = 1;
    v74 = v106[2] + v106[5];
    v106[5] = v98;
    v106[2] = v74;
    v106[3] = v99;
    sub_1000354A4(a1, v106, v113);
    v75 = sub_1000347D4(a1, v113, v136[0]);
    if (v75)
    {
      v27 = v75;
      v95 = 0;
      v105 = 0;
      v115 = 0;
LABEL_86:
      v108 = 0;
      v103 = 0;
      goto LABEL_96;
    }

    v115 = 1;
    v78 = sub_100030EB4(a1, 1, v106, v136[0]);
    if (v78)
    {
      v27 = v78;
      v95 = 0;
      v105 = 0;
      goto LABEL_86;
    }

    v103 = v106[2];
    v115 = 1;
  }

  if (v64 == v100)
  {
    goto LABEL_91;
  }

  WORD1(v129) = *(v106 + 1);
  LOWORD(v129) = 264;
  v76 = v106[5] + v106[2];
  *(&v129 + 1) = v106[1];
  *&v130 = v76;
  *(&v130 + 1) = v100;
  *(&v131 + 1) = (v64 - v100) * v104;
  if (v97)
  {
    LOBYTE(v132) = 1;
    *&v131 = v51 + v101 + v96;
  }

  else
  {
    sub_1000354A4(a1, &v129, v111);
  }

  v79 = sub_100030EB4(a1, 1, &v129, v136[0]);
  if (!v79)
  {
LABEL_91:
    v80 = sub_100032A20(a1, v136[0], v134, v116, v51, -1, v133, 0, 0, 0, 0);
    v133 = -1;
    if (v80)
    {
      v27 = v80;
      sub_10003E5FC("%s:%d: %s apfs_update_phys_range failed, err = %d\n", "fs_make_phys_range_writable", 20562, a1 + 4040, v80);
      v108 = 0;
    }

    else
    {
      v81 = sub_100032A20(a1, v136[0], v134, v99, v51, 1, -1, 1, *(v120 + 8), 0, 0);
      v27 = v81;
      if (!v81)
      {
        v91 = a1;
        sub_10003DF54((a1 + 3832), v51);
        goto LABEL_128;
      }

      sub_10003E5FC("%s:%d: %s apfs_update_phys_range failed, err = %d\n", "fs_make_phys_range_writable", 20574, a1 + 4040, v81);
      v108 = 1;
    }

    v105 = v40;
  }

  else
  {
    v27 = v79;
    v95 = 0;
    v108 = 0;
    v105 = v40;
  }

LABEL_96:
  v43 = a1 + 4040;
  sub_10003E5FC("%s:%d: %s Failing with error=%d\n", "fs_make_phys_range_writable", 20587, a1 + 4040, v27);
  *(v106 + 1) = 2;
  v106[2] = v118;
  v106[3] = v119;
  v106[4] = v111;
  v106[5] = v117;
  v86 = sub_1000324BC(a1, v120, v106, v136[0], v82, v83, v84, v85);
  v47 = v86 == 0;
  if (v86)
  {
    sub_10003E5FC("%s:%d: %s failed to restore orig_fext, ino %llu, pbn 0x%llx, laddr 0x%llx, len %llu, crypto_id %llu, error %d\n", "fs_make_phys_range_writable", 20602, v43, *(v120 + 8), v119, v118, v117, v111, v86);
    if (v105)
    {
      goto LABEL_98;
    }

LABEL_103:
    v44 = 0;
    if (!v95)
    {
      v46 = 1;
      v45 = 0;
      goto LABEL_133;
    }

    v45 = 0;
LABEL_105:
    v46 = 1;
    v88 = sub_10003135C(a1, 1, &v129, v136[0]);
    if (v88)
    {
      sub_10003E5FC("%s:%d: %s failed to remove tail_fext, ino %llu, laddr 0x%llx, error %d\n", "fs_make_phys_range_writable", 20626, v43, *(v120 + 8), v130, v88);
      v39 = 1;
      v38 = a1;
      goto LABEL_107;
    }

    goto LABEL_133;
  }

  if (!v105)
  {
    goto LABEL_103;
  }

LABEL_98:
  memset(&v123[8], 0, 32);
  v122 = *v106;
  *v123 = v103;
  v87 = sub_10003135C(a1, 1, &v122, v136[0]);
  v44 = v87 == 0;
  if (v87)
  {
    sub_10003E5FC("%s:%d: %s failed to remove head_fext, ino %llu, laddr 0x%llx, error %d\n", "fs_make_phys_range_writable", 20616, v43, *(v120 + 8), v103, v87);
  }

  v45 = 1;
  if (v95)
  {
    goto LABEL_105;
  }

  v46 = 1;
LABEL_133:
  v39 = 1;
  v38 = a1;
LABEL_18:
  if (v41 >= 1)
  {
    if (sub_100034870(v38, v111, v136[0]))
    {
      sub_10003E5FC("%s:%d: %s failed to decrement crypto state refcnt, ino %llu, crypto_id %llu, error %d\n");
    }

    goto LABEL_111;
  }

LABEL_107:
  if ((v47 | v46 ^ 1) == 1 && v41 < 0 && sub_1000347D4(v38, v111, v136[0]))
  {
    sub_10003E5FC("%s:%d: %s failed to increment crypto state refcnt, ino %llu, crypto_id %llu, error %d\n");
  }

LABEL_111:
  if (v40)
  {
    v89 = v45 & ~v44 & v40;
  }

  else
  {
    v89 = v46 & !v47;
  }

  if (v115)
  {
    if ((v89 & 1) == 0)
    {
      v90 = sub_100034870(a1, v113, v136[0]);
      if (v90)
      {
        sub_10003E5FC("%s:%d: %s failed to decrement crypto state refcnt, ino %llu, crypto_id %llu, error %d\n", "fs_make_phys_range_writable", 20678, v43, *(v120 + 8), v113, v90);
      }
    }
  }

  if ((v89 & 1) == 0)
  {
    v91 = a1;
    if (v126)
    {
      v92 = sub_10005C5F4(a1, 0, v126, v127, v136[0]);
      if (v92)
      {
        sub_10003E5FC("%s:%d: %s failed to free allocated blocks, ino %llu, 0x%llx+%llu, error %d\n", "fs_make_phys_range_writable", 20688, v43, *(v120 + 8), v126, v127, v92);
      }
    }

    if (v108)
    {
      v93 = v128;
      v94 = sub_100032A20(a1, v136[0], v134, v116, v128, 1, -1, 0, 0, 0, 0);
      if (v94)
      {
        sub_10003E5FC("%s:%d: %s apfs_update_phys_range for satisfiable range failed on 0x%llx+%llu, error %d\n", "fs_make_phys_range_writable", 20694, v43, v116, v93, v94);
      }
    }

    if (!v39)
    {
      goto LABEL_130;
    }

    goto LABEL_128;
  }

  v91 = a1;
  if (v39)
  {
LABEL_128:
    if (v136[0])
    {
      sub_10003A410(v91, 1, v109, v110, v136[0], 0);
    }
  }

LABEL_130:
  if (v134)
  {
    sub_100046D50(v134);
  }

  return v27;
}

uint64_t sub_100039688(uint64_t a1, unint64_t a2, char *__s, void *a4, int64_t a5, __int16 a6, unint64_t a7)
{
  v17 = strlen(__s);
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[1] = v18;
  v42[2] = v18;
  v42[0] = v18;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  if ((~a2 & 0xFFFFFFFFFFF0000) != 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = 4;
  }

  v20 = sub_10002F2B4(a1, v19, a7, *(a1 + 440), &v41, v14, v15, v16);
  if (!v20)
  {
    __n = v17 + 1;
    if (a5 <= 3804)
    {
      v21 = sub_10001A12C(v41, v17 + 11, a5 + 4);
      if (!v21)
      {
        v36 = a5 + 4;
        v37 = a4;
        LODWORD(v20) = 1;
        add_explicit = 0xAAAAAAAAAAAAAAAALL;
        goto LABEL_13;
      }

      v20 = v21;
      if (v21 != 34)
      {
LABEL_10:
        sub_100046D50(v41);
        return v20;
      }
    }

    v37 = a4;
    memset(v42 + 8, 0, 40);
    add_explicit = atomic_fetch_add_explicit((*(a1 + 376) + 176), 1uLL, memory_order_relaxed);
    *&v42[0] = add_explicit;
    v43[0] = add_explicit;
    v20 = sub_1000340CC(a1, 4u, 0, a7, v43, 0);
    if (v20)
    {
      sub_10003E5FC("%s:%d: %s failed to get a new default crypto-id, ino %lld\n", "_fs_add_xattr", 22938, (a1 + 4040), a2);
      goto LABEL_10;
    }

    *(&v42[1] + 1) = v43[0];
    v36 = 52;
LABEL_13:
    v35 = v17 + 11;
    v23 = sub_10003FB98(v17 + 11, 0x100004080B1215BuLL);
    if (v23)
    {
      v24 = v23;
      v34 = v20;
      v25 = sub_10003FB98(v36, 0x100004052888210uLL);
      if (v25)
      {
        v26 = v25;
        *v24 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x4000000000000000;
        v24[4] = __n;
        memcpy(v24 + 5, __s, __n);
        __na = v26;
        *v26 = a6;
        if (!strcmp(__s, "com.apple.fs.symlink") || !strcmp(__s, "com.apple.fs.altlink") || !strcmp(__s, "com.apple.system.fs.speculative_telemetry"))
        {
          a6 |= 4u;
          *v26 = a6;
        }

        if (v34)
        {
          v27 = v26;
          *v26 = a6 | 2;
          *(v26 + 1) = a5;
          memcpy(v26 + 4, v37, a5);
        }

        else
        {
          bzero(v43, 0x288uLL);
          LOWORD(v43[0]) = 515;
          v43[1] = a2;
          v43[3] = add_explicit;
          v28 = sub_1000375F8(a1, v43, v42 + 1, 0, v37, a5, &v40);
          if (v28)
          {
            v20 = v28;
            sub_100046D50(v41);
            sub_10003FB5C(v24, v35);
            v29 = __na;
            v30 = v36;
LABEL_28:
            sub_10003FB5C(v29, v30);
            return v20;
          }

          v27 = v26;
          *v26 |= 1u;
          *(v26 + 1) = 48;
          v31 = v42[0];
          v32 = v42[1];
          *(v26 + 36) = v42[2];
          *(v26 + 20) = v32;
          *(v26 + 4) = v31;
        }

        v20 = sub_10001B234(v41, *(a1 + 440), v24, v35, v27, v36, a7);
        sub_100046D50(v41);
        sub_10003FB5C(v27, v36);
        v29 = v24;
        v30 = v35;
        goto LABEL_28;
      }

      sub_100046D50(v41);
      sub_10003FB5C(v24, v35);
    }

    else
    {
      sub_100046D50(v41);
    }

    return 12;
  }

  return v20;
}

uint64_t sub_100039A20(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, char *__s, void *a6)
{
  v17 = 0;
  v12 = strlen(__s);
  *a6 = 0;
  v13 = sub_10003FB98(v12 + 25, 0x1000040D315E998uLL);
  bzero(v13, v12 + 25);
  if (!v13)
  {
    return 12;
  }

  *v13 = 4;
  *(v13 + 1) = a2;
  strlcpy(v13 + 24, __s, v12 + 1);
  *(v13 + 10) = v12 + 1;
  if ((~a2 & 0xFFFFFFFFFFF0000) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 4;
  }

  v15 = sub_100032160(a1, v14, a4, v13, a3, &v17);
  sub_10003FB5C(v13, v12 + 25);
  if (!v15)
  {
    *a6 = v17;
  }

  return v15;
}

uint64_t sub_100039B28(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 96) & 0xF000) != 0x8000)
  {
    return 0;
  }

  if (sub_100018DC4(a1) != 3 || (*(a2 + 64) & 8) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 76) & 0x1F;
  if (v4 == 3)
  {
    return 1;
  }

  else
  {
    return (v4 == 4) & ~sub_10002C480(a1, 4u);
  }
}

uint64_t sub_100039BB4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (sub_100039B28(a1, a2))
  {
    *a3 = 5;
    return 1;
  }

  else
  {
    v6 = *(a2 + 76);

    return sub_100039C10(v6, a3);
  }
}

uint64_t sub_100039C10(char a1, unsigned int *a2)
{
  v2 = a1 & 0x1F;
  if (v2 > 7 || v2 == 5)
  {
    return 0;
  }

  *a2 = v2;
  return 1;
}

uint64_t sub_100039C34(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v6 = *a2 > *a4;
  if (*a2 < *a4)
  {
    v6 = -1;
  }

  *a6 = v6;
  return 0;
}

unint64_t sub_100039C54(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 - 2;
  if (a2 - 2) < 5 && ((0x1Du >> v4))
  {
    v5 = qword_100081150[v4];
    v6 = qword_100081178[v4];
  }

  else
  {
    v6 = 100;
    if (((a4 > 4) & ((*(*(a1 + 376) + 48) & 2) >> 1)) != 0)
    {
      v6 = 80;
    }

    v5 = 3;
  }

  return 3 * a3 * v5 + a4 + v6;
}

unint64_t sub_100039CC4(uint64_t a1, int a2, unint64_t a3)
{
  if (a2 == 6)
  {
    return 0;
  }

  if (a2 == 2 || a2 == 4)
  {
    v4 = *(a1 + 392);
    if (!*(v4 + 648))
    {
      return 0;
    }

    v5 = 17920;
  }

  else
  {
    v4 = *(a1 + 392);
    v5 = 25600;
  }

  if (*(v4 + 640) == 1)
  {
    v6 = *(v4 + 656) == 0;
    v7 = 4000;
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 4000;
  }

  if (a3 / 0x64 < v7)
  {
    v7 = a3 / 0x64;
  }

  if (v7 <= 0x64)
  {
    return 100;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100039D58(uint64_t a1)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  v2 = 1000000 * v5.tv_sec + SLODWORD(v5.tv_nsec) / 1000;
  atomic_fetch_add_explicit((a1 + 3816), 1u, memory_order_relaxed);
  v3 = v2 - *(a1 + 3808);
  if (*(a1 + 3816) >= 17)
  {
    if (v3 < 0xF4240)
    {
      result = 0;
      *(a1 + 3808) = v2;
      return result;
    }

    goto LABEL_5;
  }

  if (v3 > 0xF423F)
  {
LABEL_5:
    *(a1 + 3808) = v2;
    result = 1;
    *(a1 + 3816) = 1;
    return result;
  }

  return 1;
}

uint64_t sub_100039E1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t *a6)
{
  v9 = a3;
  v10 = a2;
  v12 = (*(a1 + 392) + 488);
  v13 = *(a1 + 376);
  v14 = *(v13 + 72);
  if (v14 && v14 == *(v13 + 80))
  {
    v12 = (a1 + 424);
  }

  memset(v57, 170, sizeof(v57));
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v55 = -86;
  v54 = -86;
  v15 = sub_100039C54(a1, a2, a3, a4);
  sub_100054ED8(a1, 0, &v57[3], 0, 0, 0);
  v16 = sub_100039CC4(a1, v10, v57[3]);
  pthread_mutex_lock((*(a1 + 392) + 504));
  v17 = sub_1000551B4(a1, v15, v16, 0, v12, &v57[2], &v57[1], &v55, v57, &v56, &v54);
  v50 = a4;
  if (v17 != 28)
  {
    v25 = v17;
    v47 = a5;
    v51 = 0;
    v52 = 0;
    v22 = 0;
    if (v17)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v18 = *a6;
  if (*a6 && v54 != 1)
  {
    v51 = 0;
    v52 = 0;
    v22 = 0;
    v25 = 28;
    goto LABEL_32;
  }

  v47 = a5;
  v48 = v9;
  v43 = v10;
  v45 = a6;
  v19 = v12;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v51 = 0;
  v52 = v18 != 0;
  if (v18)
  {
    v23 = 10000000;
  }

  else
  {
    v23 = 250000000;
  }

  while (1)
  {
    if (v55 != 1 || v18 || v57[0] < v57[2])
    {
      goto LABEL_21;
    }

    if (v20)
    {
      break;
    }

    if (v51 <= 31)
    {
      goto LABEL_16;
    }

LABEL_21:
    if (v54 != 1)
    {
      v25 = 28;
      goto LABEL_31;
    }

    v25 = 28;
    if (*(a1 + 1124) <= v52 || ((v18 != 0) & v21) != 0)
    {
      goto LABEL_31;
    }

    v58[0].tv_sec = 0;
    v58[0].tv_nsec = v23;
    ++v22;
    v26 = *(a1 + 392);
    *(v26 + 496) += v15;
    v27 = sub_10003E3E8((v26 + 568), (v26 + 504), 8, "blocks_in_txn", v58);
    *(*(a1 + 392) + 496) -= v15;
    v21 |= v27 == 35;
LABEL_25:
    v28 = sub_1000551B4(a1, v15, v16, 0, v19, &v57[2], &v57[1], &v55, v57, &v56, &v54);
    if (v28 != 28)
    {
      v25 = v28;
      goto LABEL_31;
    }
  }

  if (v56 > v20 || v51 >= 32)
  {
    goto LABEL_21;
  }

LABEL_16:
  ++v51;
  pthread_mutex_unlock((*(a1 + 392) + 504));
  v53 = 0;
  v24 = sub_10006084C(*(a1 + 392), &v53);
  if (!v24)
  {
    if (!v20)
    {
      v20 = v53;
    }

    sub_1000555CC(*(a1 + 392), v57, v53);
    sub_10006085C(*(a1 + 392), v53, 4);
    pthread_mutex_lock((*(a1 + 392) + 504));
    goto LABEL_25;
  }

  v25 = v24;
  pthread_mutex_lock((*(a1 + 392) + 504));
LABEL_31:
  v12 = v19;
  a6 = v45;
  v10 = v43;
  v9 = v48;
  if (v25)
  {
LABEL_32:
    *a6 = 0;
    if (sub_100039D58(a1) || v10 == 2 && v15 <= 0x31 && *(a1 + 3820) <= 9)
    {
      if (v25 == 28)
      {
        v29.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v29.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        v58[0] = v29;
        v58[1] = v29;
        __strlcpy_chk();
        v30 = sub_10003A6A8(v10);
        v44 = v57[1];
        v46 = v30;
        v41 = *(a1 + 3800);
        v42 = *v12;
        v40 = v57[2];
        v49 = v9;
        v31 = v57[0];
        v32 = v55;
        v33 = v54;
        v34 = *(a1 + 1124);
        v35 = sub_100054DDC(*(a1 + 392), 0);
        sub_10003E50C("%s:%d: %s %s: ENOSPC: ttype %s (r %lld d %lld tx %d) blocks %lld free %lld txn %lld # %d th %lld rr %lld sh %lld fq %lld lim %d %d freeup %d wait %d er %d\n", "fs_tx_enter_internal", 28354, (a1 + 4040), v58, v46, v49, v50, v52, v15, v44, v42, v34, v16, v41, v40, v31, v32, v33, v51, v22, v35);
        if (v10 == 2 && v15 <= 0x31)
        {
          ++*(a1 + 3820);
        }
      }

      else
      {
        sub_10003E5FC("%s:%d: %s failed to compare currently available space: error %d\n", "fs_tx_enter_internal", 28340, (a1 + 4040), v25);
      }
    }

    pthread_mutex_unlock((*(a1 + 392) + 504));
    return v25;
  }

LABEL_37:
  atomic_fetch_add_explicit((a1 + 1124), 1u, memory_order_relaxed);
  pthread_mutex_unlock((*(a1 + 392) + 504));
  v36 = *(a1 + 392);
  if (v47)
  {
    v37 = sub_100060854(v36, a6);
    if (v37)
    {
      v25 = v37;
      sub_10003E5FC("%s:%d: %s tx_enter_frozen() failed: %d\n");
LABEL_52:
      pthread_mutex_lock((*(a1 + 392) + 504));
      atomic_fetch_add_explicit(v12, -v15, memory_order_relaxed);
      atomic_fetch_add_explicit((a1 + 1124), 0xFFFFFFFF, memory_order_relaxed);
      pthread_mutex_unlock((*(a1 + 392) + 504));
      *a6 = 0;
      return v25;
    }
  }

  else
  {
    v38 = sub_10006084C(v36, a6);
    if (v38)
    {
      v25 = v38;
      sub_10003E5FC("%s:%d: %s tx_enter() failed: %d\n");
      goto LABEL_52;
    }
  }

  if (*(a1 + 3820))
  {
    *(a1 + 3820) = 0;
  }

  v25 = sub_10004B964(a1, 0, *a6);
  if (v25)
  {
    sub_10006085C(*(a1 + 392), *a6, 0);
    goto LABEL_52;
  }

  return v25;
}

uint64_t sub_10003A410(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v10 = a2;
  v12 = *(a1 + 392);
  v13 = (v12 + 488);
  v14 = *(a1 + 376);
  v15 = *(v14 + 72);
  if (v15 && v15 == *(v14 + 80))
  {
    v13 = (a1 + 424);
  }

  pthread_mutex_lock((v12 + 504));
  atomic_fetch_add_explicit((a1 + 1124), 0xFFFFFFFF, memory_order_relaxed);
  v16 = sub_100039C54(a1, v10, a3, a4);
  v17 = v16;
  add_explicit = atomic_fetch_add_explicit(v13, -v16, memory_order_relaxed);
  v19 = add_explicit - v16;
  if ((add_explicit - v16) < 0)
  {
    sub_10003E5FC("%s:%d: %s old reserve was %lld, num_blocks %lld. blocks_in_txn_counter %lld num_active_txns=%d\n", "fs_tx_leave_ext", 28485, (a1 + 4040), add_explicit, v16, *v13, *(a1 + 1124));
  }

  *(*(a1 + 376) + 256) = sub_100062550();
  sub_10003728C(a1, a5);
  v20 = *(a1 + 392);
  if (*(v20 + 496))
  {
    j__pthread_cond_broadcast((v20 + 568));
    v20 = *(a1 + 392);
  }

  pthread_mutex_unlock((v20 + 504));
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  sub_100054ED8(a1, 0, &v33, &v32, 0, 0);
  if (add_explicit)
  {
    v21 = (*(*(a1 + 376) + 48) & 2) == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21 && v33 >= 0xA01 && add_explicit + 4000 >= v32)
  {
    v6 |= 4u;
  }

  v22 = *(a1 + 392);
  v23 = v33 / 0x64;
  if (*(v22 + 640) == 1)
  {
    v21 = *(v22 + 656) == 0;
    v24 = 4000;
    if (v21)
    {
      v24 = 25600;
    }
  }

  else
  {
    v24 = 4000;
  }

  if (v23 >= v24)
  {
    v23 = v24;
  }

  if (v23 <= 0x64)
  {
    v23 = 100;
  }

  v25 = v23 + v19;
  v26 = v32;
  v27 = *(a1 + 3824);
  if (v25 >= v32)
  {
    *(a1 + 3824) = v27 + 1;
    if (v27 <= 99)
    {
      v28 = sub_10003A6A8(v10);
      sub_10003E55C("%s:%d: %s gettin' low on space: ttype %s num_blocks %lld blocks_in_txn %lld free_blocks %lld xid %lld\n", "fs_tx_leave_ext", 28516, (a1 + 4040), v28, v17, v19, v26, a5);
    }
  }

  else if (v27 >= 100)
  {
    *(a1 + 3824) = 0;
  }

  if (!a5)
  {
    return 0;
  }

  ++*(a1 + 432);
  v29 = sub_10006085C(*(a1 + 392), a5, v6);
  v30 = v29;
  if (v29)
  {
    sub_10003E5FC("%s:%d: %s tx_leave failed: %d\n", "fs_tx_leave_ext", 28531, (a1 + 4040), v29);
  }

  return v30;
}

const char *sub_10003A6A8(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "UNKNOWN TXN TYPE";
  }

  else
  {
    return off_100084EF0[a1 - 1];
  }
}

const char *sub_10003A6D0(const char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (!*(result + 277))
    {
      v5 = 0;
      v4 = sub_100039E1C(result, 4, 1, 0, 0, &v5);
      if (v4)
      {
        return sub_10003E5AC("%s:%d: %s couldn't enter transaction to set apfs_fixup_flags, %d\n", "clear_invalid_fixups", 29454, v2 + 4040, v4);
      }

      else
      {
        atomic_fetch_and_explicit((*(v2 + 47) + 1128), ~a2, memory_order_relaxed);
        sub_10003E50C("%s:%d: %s set apfs_fixup_flags to %#llx\n", "clear_invalid_fixups", 29449, v2 + 4040, *(*(v2 + 47) + 1128));
        return sub_10003A410(v2, 4, 1, 0, v5, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10003A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = *(a1 + 376);
  if (!sub_1000191F0(a1))
  {
    return 0;
  }

  v13 = *(v5 + 1056);
  if (v13 == a2)
  {
    v14 = *(v5 + 964);
    v15 = !*(v5 + 964) || v14 == 2;
    if (v15 || v14 == 64 || (v13 = a2, (*(v5 + 1064) & 0x10) != 0))
    {
      if (!sub_1000111B8(a1, v6, v7, v8, v9, v10, v11, v12))
      {
        return 0;
      }

      v13 = *(v5 + 1056);
    }
  }

  sub_10003E50C("%s:%d: %s doc-id index needs rebuild, doc_id_index_flags 0x%x, role %u, doc_id_index_xid %llu, expected_xid %llu\n", "mark_doc_id_index_for_rebuild_if_needed", 29539, (a1 + 4040), *(v5 + 1064), *(v5 + 964), v13, a2);
  if (*(a1 + 1108))
  {
    sub_10003E5AC("%s:%d: %s doc-id index is stale (apfs_doc_id_index_xid %llu, expected xid %llu), but volume is RO\n", "mark_doc_id_index_for_rebuild_if_needed", 29545, (a1 + 4040), *(v5 + 1056), a2);
    return 0;
  }

  v18 = sub_100039E1C(a1, 2, 1, 0, 0, &v20);
  if (v18)
  {
    v16 = v18;
    sub_10003E5FC("%s:%d: %s failed to enter tx, error %d\n", "mark_doc_id_index_for_rebuild_if_needed", 29553, (a1 + 4040), v18);
  }

  else
  {
    *(v5 + 1064) |= 2u;
    v19 = sub_10003A410(a1, 2, 1, 0, v20, 0);
    v16 = v19;
    if (v19)
    {
      sub_10003E5FC("%s:%d: %s failed to leave tx, error %d\n", "mark_doc_id_index_for_rebuild_if_needed", 29559, (a1 + 4040), v19);
    }
  }

  return v16;
}

uint64_t sub_10003A928(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 376);
  if (!a2)
  {
    a2 = *(a1 + 144);
    if (!a2)
    {
      a2 = *(v3 + 16);
    }
  }

  v4 = *(v3 + 1064);
  v5 = sub_10003A7AC(a1, a2, 0);
  if (v5)
  {
    v6 = v5;
    sub_10003E5FC("%s:%d: %s failed to mark doc-id index for rebuild, error %d\n");
    return v6;
  }

  if (*(a1 + 1108))
  {
    return 0;
  }

  v7 = *(a1 + 376);
  if ((sub_1000191F0(a1) & 1) == 0 && (v14 = *(v7 + 1064), (v14 & 2) != 0))
  {
    sub_10003E5AC("%s:%d: %s volume marked for doc-id index rebuild but does not support index (role %d, flags 0x%x)\n", "clean_up_doc_id_trees_if_needed", 29475, (a1 + 4040), *(v7 + 964), v14);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  if (!*(v7 + 1080) || (v16 = *(v7 + 1064), (v16 & 1) != 0))
  {
    v17 = 0;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_17:
    if ((*(v7 + 1064) & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_10003E5AC("%s:%d: %s prev doc-id tree oid is non-zero (%llu), but index is not being built (flags 0x%x), deleting prev tree\n", "clean_up_doc_id_trees_if_needed", 29485, (a1 + 4040), *(v7 + 1080), v16);
  v17 = 1;
  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v18 = sub_100010CDC(a1, 0, v8, v9, v10, v11, v12, v13);
  if (v18)
  {
    v6 = v18;
    sub_10003E5FC("%s:%d: %s failed to delete doc-id tree, error %d\n");
LABEL_24:
    sub_10003E5FC("%s:%d: %s failed to clean up doc-id trees, error %d\n");
    return v6;
  }

LABEL_20:
  if (((v15 | v17) & 1) != 0 || (*(v7 + 1064) & 8) != 0)
  {
    v19 = sub_100010CDC(a1, 1, v8, v9, v10, v11, v12, v13);
    if (v19)
    {
      v6 = v19;
      sub_10003E5FC("%s:%d: %s failed to delete prev doc-id tree, error %d\n");
      goto LABEL_24;
    }
  }

  if (!sub_1000191F0(a1))
  {
    return 0;
  }

  v21 = *(v3 + 1064);
  if ((v21 & 2) == 0)
  {
    return 0;
  }

  sub_10003E50C("%s:%d: %s prepare for rebuild, doc_id_index_flags 0x%x, doc_id_tree_oid %llu, prev_doc_id_tree_oid %llu, doc_id_tree_type %u, apfs_next_doc_id %d\n", "check_stale_doc_id_index", 29618, (a1 + 4040), v21, *(v3 + 1072), *(v3 + 1080), *(v3 + 1068), *(v3 + 960));
  if (*(v3 + 1072) && ((*(v3 + 1064) & 1) != 0 || *(v3 + 1068) != 2))
  {
    v28 = sub_100010CDC(a1, 0, v22, v23, v24, v25, v26, v27);
    if (v28)
    {
      v6 = v28;
      sub_10003E5FC("%s:%d: %s failed to delete doc-id tree, error %d\n");
      return v6;
    }
  }

  if (*(v3 + 1080))
  {
    if (*(v3 + 1068) != 2)
    {
      v29 = sub_100010CDC(a1, 1, v22, v23, v24, v25, v26, v27);
      if (v29)
      {
        v6 = v29;
        sub_10003E5FC("%s:%d: %s failed to delete prev doc-id tree, error %d\n");
        return v6;
      }
    }
  }

  v43 = 0;
  v30 = sub_100039E1C(a1, 2, 1, 0, 0, &v43);
  if (v30)
  {
    v6 = v30;
    sub_10003E5FC("%s:%d: %s failed to enter tx, error %d\n");
    return v6;
  }

  pthread_mutex_lock((a1 + 1664));
  v31 = *(v3 + 1064);
  *(v3 + 1064) = v31 & 0xFFFFFFFD;
  if ((v31 & 1) == 0)
  {
    *(v3 + 1080) = *(v3 + 1072);
    *(v3 + 1064) = v31 & 0xFFFFFFFC | 1;
  }

  if ((v4 & 0x10) != 0 || (v32 = *(v3 + 964), !*(v3 + 964)) || v32 == 2 || v32 == 64)
  {
    *(v3 + 1072) = 0;
LABEL_46:
    *(v3 + 1068) = 2;
    *(v3 + 1088) = 0;
    if (*(v3 + 960) == 3)
    {
      *(v3 + 1064) &= ~1u;
    }

    v33 = *(a1 + 3616);
    if (v33)
    {
      sub_100046D50(v33);
      v6 = 0;
      *(a1 + 3616) = 0;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_51;
  }

  v42 = sub_10001922C(a1, v43, 1);
  if (!v42)
  {
    goto LABEL_46;
  }

  v6 = v42;
  sub_10003E5FC("%s:%d: %s failed to create doc-id tree, error %d\n", "check_stale_doc_id_index", 29666, (a1 + 4040), v42);
LABEL_51:
  pthread_mutex_unlock((a1 + 1664));
  v34 = sub_10003A410(a1, 2, 1, 0, v43, 0);
  if (v34)
  {
    v41 = v34;
    sub_10003E5FC("%s:%d: %s failed to leave tx, error %d\n", "check_stale_doc_id_index", 29691, (a1 + 4040), v34);
    if (v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = v41;
    }
  }

  if (*(v3 + 960) == 3 && *(v3 + 1080) && sub_100010CDC(a1, 1, v35, v36, v37, v38, v39, v40))
  {
    sub_10003E5FC("%s:%d: %s failed to delete prev doc-id tree (no tracked files), error %d\n");
  }

  return v6;
}

uint64_t sub_10003AD74(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 392);
  v5 = sub_100047D18(a1);
  v6 = *(a1 + 376);
  v7 = v6[141];
  if (v6[140] == v5)
  {
    v7 &= (v6[7] >> 9) & 1 ^ 0xFFFFFFFFFFFFFFF3;
  }

  if (*(v4 + 627))
  {
    v8 = 1;
  }

  else
  {
    v8 = *a2 & 1;
  }

  pthread_mutex_lock((a1 + 1280));
  if ((*(a1 + 480) & 0x4040) != 0 || *(a1 + 1116))
  {
    sub_10003E5FC("%s:%d: %s unable to mount livefs as volume is restoring or mounted\n", "apfs_mount_livefs", 29725, (a1 + 4040));
    pthread_mutex_unlock((a1 + 1280));
    return 16;
  }

  pthread_mutex_unlock((a1 + 1280));
  v11 = *(a1 + 376);
  if ((*(v11 + 56) & 0x20) != 0 && (v8 & 1) == 0)
  {
    v12 = sub_10000177C(a1);
    if (v12)
    {
      v9 = v12;
      strerror(v12);
      sub_10003E5FC("%s:%d: %s failed to mark sealed volume's seal as broken: %s(%d)\n");
      return v9;
    }

    v11 = *(a1 + 376);
  }

  *(a1 + 1108) = v8;
  if ((*(v11 + 48) & 0xFFFFFFFFFFFFFFF1) != 0)
  {
    v45 = *(v11 + 48) & 0xFFFFFFFFFFFFFFF1;
    sub_10003E50C("%s:%d: %s unsupported apfs_readonly_compatible_features (%llx): mount r/o\n");
LABEL_17:
    *(a1 + 1108) = 1;
    goto LABEL_18;
  }

  if (*(v11 + 964) == 704)
  {
    if ((v8 & 1) == 0)
    {
      sub_10003E50C("%s:%d: %s overprovisioning volume can only mount r/o\n");
      goto LABEL_17;
    }
  }

  else if ((v8 & 1) == 0)
  {
    sub_100002398(a1);
  }

LABEL_18:
  *(a1 + 520) = sub_100062550();
  if ((*(*(a1 + 376) + 56) & 0x20) == 0)
  {
    goto LABEL_22;
  }

  pthread_mutex_lock((a1 + 1536));
  if (!*(a1 + 3600))
  {
    v24 = *(a1 + 376);
    v25 = *(v24 + 1040);
    v26 = *(v24 + 1032);
    v27 = *(a1 + 440);
    *&v48 = 0;
    v49 = 0u;
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v47 = sub_100003350;
    *(&v48 + 1) = 0x20000001FLL;
    if (v25 == 2)
    {
      v9 = sub_10002462C(a1, v25 & 0xFFFF0000, v26, v27, 0, &v47, 0, (a1 + 3600));
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = 22;
    }

    sub_10003E5FC("%s:%d: %s failed to fetch the fext tree (error %d)\n", "apfs_mount_livefs", 29844, (a1 + 4040), v9);
    *(a1 + 3600) = 0;
    pthread_mutex_unlock((a1 + 1536));
    return v9;
  }

LABEL_20:
  pthread_mutex_unlock((a1 + 1536));
  v17 = sub_1000014D0(a1);
  if (v17)
  {
    v9 = v17;
    sub_10003E5FC("%s:%d: %s failed to fetch the integrity object (error %d)\n");
    return v9;
  }

LABEL_22:
  if (!*(a1 + 3568))
  {
    v22 = sub_1000190A8(a1, *(a1 + 440), 0, (a1 + 3568));
    if (v22)
    {
      v9 = v22;
      v23 = strerror(v22);
      sub_10003E50C("%s:%d: %s Cannot load the filesystem root tree: %s(%d)\n", "apfs_mount_livefs", 29865, (a1 + 4040), v23, v9);
      *(a1 + 3568) = 0;
      return v9;
    }
  }

  if (!*(a1 + 3576))
  {
    v28 = sub_1000190BC(a1, *(a1 + 440), 0, (a1 + 3576), v13, v14, v15, v16, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1));
    v9 = v28;
    if (!v28)
    {
      goto LABEL_25;
    }

    *(a1 + 3576) = 0;
    if (v28 != 45)
    {
      v29 = strerror(v28);
      sub_10003E50C("%s:%d: %s Cannot load the secondary filesystem root tree: %s(%d)\n", "apfs_mount_livefs", 29878, (a1 + 4040), v29, v9);
      goto LABEL_25;
    }
  }

  v9 = 0;
LABEL_25:
  if (*(v4 + 629) != 1 || *(a1 + 1108) || (*(a1 + 481) & 0x10) != 0)
  {
    pthread_mutex_lock((a1 + 1408));
    if (*(a1 + 3592))
    {
      pthread_mutex_unlock((a1 + 1408));
      if (v9)
      {
        return v9;
      }
    }

    else
    {
      v30 = sub_1000190D0(a1, *(*(a1 + 376) + 144), 0, (a1 + 3592), v18, v19, v20, v21, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1));
      if (v30)
      {
        v9 = v30;
        sub_10003E5FC("%s:%d: %s failed to fetch the extentref tree (error %d)\n", "apfs_mount_livefs", 29896, (a1 + 4040), v30);
        *(a1 + 3592) = 0;
        v31 = (a1 + 1408);
        goto LABEL_48;
      }

      pthread_mutex_unlock((a1 + 1408));
    }
  }

  else
  {
    v9 = sub_10003B3AC(a1);
    if (v9)
    {
      return v9;
    }
  }

  v32 = *(a1 + 376);
  if ((*(v32 + 56) & 0x40) == 0 || (*(v32 + 48) & 2) != 0)
  {
    goto LABEL_56;
  }

  pthread_mutex_lock((a1 + 1600));
  if (!*(a1 + 3608))
  {
    v36 = *(a1 + 376);
    v37 = *(v36 + 1044);
    v38 = *(v36 + 1048);
    v39 = *(a1 + 440);
    v48 = 0u;
    v49 = 0u;
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v47 = sub_100004D10;
    DWORD2(v48) = 32;
    if (v37 == 2)
    {
      v9 = sub_10002462C(a1, v37 & 0xFFFF0000, v38, v39, 0, &v47, 0, (a1 + 3608));
      if (!v9)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v9 = 22;
    }

    sub_10003E5FC("%s:%d: %s failed to fetch the pfkur tree (error %d)\n", "apfs_mount_livefs", 29915, (a1 + 4040), v9);
    *(a1 + 3608) = 0;
    v31 = (a1 + 1600);
LABEL_48:
    pthread_mutex_unlock(v31);
    return v9;
  }

LABEL_55:
  pthread_mutex_unlock((a1 + 1600));
LABEL_56:
  sub_100002524(a1);
  v33 = sub_10003A928(a1, 0);
  if (v33)
  {
    sub_10003E5FC("%s:%d: %s failed to check if doc-id index is stale (error %d)\n", "apfs_mount_livefs", 29934, (a1 + 4040), v33);
  }

  sub_10003B580(a1);
  if (!*(a1 + 1108))
  {
    v34 = *(a1 + 376);
    if (!v34[123] || v34[124] != v34[45])
    {
      v47 = 0;
      v35 = sub_100039E1C(a1, 1, 1, 0, 0, &v47);
      if (v35)
      {
        sub_10003E50C("%s:%d: %s couldn't enter transaction to set apfs_cloneinfo_id_epoch, %d\n", "set_cloneinfo_id_epoch", 29428, (a1 + 4040), v35);
      }

      else
      {
        v40 = *(a1 + 376);
        v41 = *(v40 + 176);
        *(v40 + 984) = v41;
        sub_10003E50C("%s:%d: %s set cloneinfo_id_epoch to %llu\n", "set_cloneinfo_id_epoch", 29421, (a1 + 4040), v41);
        sub_10003A410(a1, 1, 1, 0, v47, 0);
      }
    }
  }

  sub_10003A6D0(a1, v7);
  return 0;
}

uint64_t sub_10003B3AC(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v2 = sub_100039E1C(a1, 1, 0, 1uLL, 0, &v9);
  if (v2)
  {
    v3 = v2;
    sub_10003E5FC("%s:%d: %s Couldn't enter TX on mount for demo mode: %d\n", "setup_demo_mode", 28775, (a1 + 4040), v2);
    return v3;
  }

  v4 = *(*(a1 + 376) + 120);
  v10[1] = 0;
  v11 = 0u;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10[0] = sub_10002E330;
  v10[2] = 0x420000000FLL;
  if (v4 != 2)
  {
    v3 = 22;
    goto LABEL_9;
  }

  v3 = sub_1000242A4(a1, v4 & 0xFFFFFFFFBFFF0000 | 0x40000000, 0, 0, 0, v10, v9, &v8);
  if (v3)
  {
LABEL_9:
    sub_10003E5FC("%s:%d: %s Couldn't create extentref tree for demo mode: %d\n", "setup_demo_mode", 28791, (a1 + 4040), v3);
    sub_10003A410(a1, 1, 0, 1uLL, v9, 0);
    return v3;
  }

  pthread_mutex_lock((a1 + 1408));
  v5 = *(a1 + 3592);
  if (v5)
  {
    sub_100046D50(v5);
  }

  v6 = v8;
  *(a1 + 3592) = v8;
  *(*(a1 + 376) + 144) = sub_100047D10(v6);
  pthread_mutex_unlock((a1 + 1408));
  pthread_mutex_lock((a1 + 1280));
  *(a1 + 480) |= 0x1000uLL;
  pthread_mutex_unlock((a1 + 1280));
  sub_10004C19C(a1);
  sub_10003A410(a1, 1, 0, 1uLL, v9, 0);
  return 0;
}

const char *sub_10003B580(uint64_t *a1)
{
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  result = a1[446];
  if (result && a1[449] && !a1[63] && !*(a1[47] + 216))
  {
    if (sub_100025E3C(result, &v50))
    {
      v50 = 0;
    }

    v3 = a1[447];
    if (!v3 || sub_100025E3C(v3, &v49))
    {
      v49 = 0;
    }

    if (sub_100025E3C(a1[449], &v48))
    {
      v48 = 0;
    }

    v40 = 0xAAAAAAAAAAAAAAAALL;
    if (!sub_10002F2B4(a1, 3, 0, a1[55], &v40, v4, v5, v6))
    {
      if (sub_100025E3C(v40, &v46))
      {
        v46 = 0;
      }

      sub_100046D50(v40);
    }

    v39 = 0xAAAAAAAAAAAAAAAALL;
    if (!sub_10004EE18(a1, 0, 0, &v39))
    {
      v10 = v39[47];
      v11 = *(v10 + 40);
      v12 = *(v10 + 48);
      v52 = 0u;
      v53 = 0u;
      v57 = 0;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v51 = sub_10004D314;
      DWORD2(v52) = 11;
      if (v11 == 2 && !sub_10002462C(a1, v11 & 0xFFFF0000, v12, 0, 0, &v51, 0, &v40))
      {
        if (sub_100025E3C(v40, &v47))
        {
          v47 = 0;
        }

        sub_100046D50(v40);
      }

      sub_100046D50(v39);
    }

    if (!sub_10002F2B4(a1, 7, 0, a1[55], &v40, v7, v8, v9))
    {
      if (sub_100025E3C(v40, &v45))
      {
        v45 = 0;
      }

      sub_100046D50(v40);
    }

    if (!sub_1000191DC(a1, 1, 0, 0, &v40, v13, v14, v15, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38))
    {
      if (sub_100025E3C(v40, &v44))
      {
        v44 = 0;
      }

      sub_100046D50(v40);
    }

    if (!sub_100019354(a1, 0, a1[55], 0, &v40))
    {
      if (sub_100025E3C(v40, &v41))
      {
        v41 = 0;
      }

      sub_100046D50(v40);
    }

    v20 = a1[47];
    if ((*(v20 + 56) & 0x20) != 0 && sub_10003DFBC(a1, *(v20 + 1040), 5, &v43, v16, v17, v18, v19))
    {
      v43 = 0;
    }

    v21 = a1[47];
    if ((*(v21 + 56) & 0x40) == 0 || (*(v21 + 48) & 2) != 0)
    {
      v22 = 0;
    }

    else if (sub_10003DFBC(a1, *(v21 + 1044), 6, &v42, v16, v17, v18, v19))
    {
      v22 = 0;
      v42 = 0;
    }

    else
    {
      v22 = v42;
    }

    v23 = a1[47];
    if ((*(v23 + 56) & 0x20) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    v25 = *(v23 + 224) - *(v23 + 232);
    result = (v49 + v50 + v48 + v47 + v46 + v45 + v44 + v24 + v43 + v41 + v22 + v25);
    if (*(v23 + 1000))
    {
      ++result;
    }

    v26 = *(v23 + 88);
    if (result != v26)
    {
      return sub_10003E50C("%s:%d: %s fs_alloc_count mismatch: fs root nodes %lld extent %lld omap %lld snap_meta %lld doc_id %lld prev_doc_id %lld fext: %lld clonegroup: %lld pfkur: %lld er: %lld udata: %lld fs_alloc_count %lld != count %lld\n", "sanity_check_alloced_blocks", 736, a1 + 4040, v50, v48, v47, v46, v45, v44, v43, v41, v22, 0, v25, v26, result);
    }
  }

  return result;
}

uint64_t sub_10003B910(uint64_t a1, unint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *a6 = 0;
  v11 = sub_100049EE0(*(a1 + 392), 0, a2, &xmmword_1000810F0, 0, 0, 0, 0, &v28);
  if (!v11)
  {
    pthread_mutex_lock((v28 + 1280));
    if (*(v28 + 520) || *(v28 + 3944))
    {
      pthread_mutex_unlock((v28 + 1280));
      v13 = v28;
      if (*(v28 + 3944))
      {
        *a6 = v28;
        sub_100046D50(v13);
        sub_10003E5FC("%s:%d: %s EALREADY; rooted from snap, apfs %p\n", "apfs_mount", 30104, (v28 + 4040), v28);
        return 37;
      }

      sub_100046D50(v28);
      return 16;
    }

    if ((*(v28 + 481) & 0x40) != 0 || *(v28 + 1116))
    {
      pthread_mutex_unlock((v28 + 1280));
      sub_100046D50(v28);
      sub_10003E5FC("%s:%d: %s Can't mount a volume undergoing restore/livefs-create\n", "apfs_mount", 30113, (v28 + 4040));
      return 16;
    }

    v15 = sub_100062550();
    v16 = v28;
    *(v28 + 520) = v15;
    pthread_mutex_unlock(v16 + 20);
    v29 = -1431655766;
    if ((sub_100018E14(v28, &v29) & 1) == 0 || v29 > 3 || v29 == 2)
    {
      sub_10003E5FC("%s:%d: %s encryption type %llx unsupported\n");
    }

    else
    {
      v17 = v28;
      v18 = *(v28 + 376);
      v19 = v18[7];
      if ((v19 & 0xFFFFFFFFFFFFFC00) == 0 && (v18[7] & 9) != 9)
      {
        if ((v19 & 0x10) != 0)
        {
          sub_10003E5FC("%s:%d: %s Volume is incompletely restored and needs to be cleaned up\n", "apfs_mount", 30145, (v28 + 4040));
          v12 = 16;
        }

        else
        {
          if (a3 && (a3[4] & 2) != 0)
          {
            sub_10003E50C("%s:%d: %s mount for ramdisk\n", "apfs_mount", 30150, (v28 + 4040));
            v17 = v28;
            v18 = *(v28 + 376);
          }

          else
          {
            *(v28 + 512) = v18[32];
          }

          v17[66] = v18[22];
          v17[50] = v18 + 88;
          if (v17[63])
          {
            v21 = v17[63];
          }

          else
          {
            v21 = v17;
          }

          v22 = *(*(v21 + 376) + 264);
          if ((v22 & 1) == 0)
          {
            v17[143] = a5;
          }

          if (sub_100018FAC(v21))
          {
            sub_10003E50C("%s:%d: %s resizing will be cancelled as the user volume is encrypted and is changing mount state to mounted\n", "apfs_mount", 30194, (v28 + 4040));
            sub_10001561C();
          }

          v23 = v28;
          if (v22)
          {
            v24 = *(v28 + 504);
            if (!v24)
            {
              v24 = v28;
            }

            if (!*(*(v24 + 376) + 976))
            {
              sub_10002C3BC(v28 + 536);
              goto LABEL_53;
            }
          }

          if (*(v28 + 608))
          {
LABEL_43:
            if (!v23[127])
            {
              v25 = v23[63];
              if (!v25)
              {
                v25 = v23;
              }

              if ((*(v25[47] + 264) & 1) == 0)
              {
                sub_10002B810(v23, 1);
                v23 = v28;
              }
            }

            sub_10002C3D8(v23);
LABEL_53:
            pthread_mutex_lock((v28 + 1280));
            v27 = v28;
            *(v28 + 480) &= ~0x200uLL;
            pthread_mutex_unlock(v27 + 20);
            if (!a3 || (v12 = sub_10003AD74(v28, a3), !v12))
            {
              v12 = 0;
              *a6 = v28;
              return v12;
            }

            goto LABEL_24;
          }

          v26 = sub_10002C464(v28, v28 + 536, v28 + 632);
          v23 = v28;
          if (!v26)
          {
            *(v28 + 616) = v28;
            if (v23[88])
            {
              v23[89] = v23;
            }

            goto LABEL_43;
          }

          sub_10003E5FC("%s:%d: %s Failed to unwrap metadata crypto state: %d\n", "apfs_mount", 30326, (v28 + 4040), v26);
          *(v28 + 520) = 0;
          if (v26 == 2)
          {
            v12 = 92;
          }

          else if (v26 == 92)
          {
            v12 = 92;
          }

          else
          {
            v12 = 1;
          }
        }

LABEL_24:
        sub_10003BD88(v28);
        return v12;
      }

      sub_10003E5FC("%s:%d: %s unsupported apfs_incompatible_features (%llx): unable to mount\n");
    }

    v12 = 75;
    goto LABEL_24;
  }

  v12 = v11;
  sub_10003E5FC("%s:%d: %s failed to get fsys oid %lld: %d\n", "apfs_mount", 30092, (*(a1 + 384) + 212), a2, v11);
  return v12;
}

void sub_10003BD88(uint64_t a1)
{
  v2 = sub_10003B580(a1);
  v3 = *(a1 + 488);
  if (v3)
  {
    sub_10002CA94(v2, v3);
    *(a1 + 488) = 0;
  }

  sub_100018414(a1, 1);
  v4 = *(a1 + 3640);
  if (v4)
  {
    sub_10004B8D4(*(a1 + 3640), 2);
    v5 = v4[53];
    if (v5)
    {
      sub_100025B30(v5, 0, 0);
      sub_100046D50(v4[53]);
      v4[53] = 0;
    }

    *(a1 + 3640) = 0;
    sub_10004BE88(v4, 2);
    sub_100046D50(v4);
  }

  sub_100002398(a1);
  pthread_mutex_lock((a1 + 1280));
  *(a1 + 480) |= 0x200uLL;
  pthread_mutex_unlock((a1 + 1280));
  sub_10002BAB4(a1, 1);
  pthread_mutex_lock((a1 + 1280));
  *(a1 + 520) = 0;
  *(a1 + 480) &= 0xFFFFFFFFFFFFF7BELL;
  pthread_mutex_unlock((a1 + 1280));
  *(a1 + 472) = 0;
  v6 = *(a1 + 1144);
  if (v6)
  {
    sub_100015350(v6);
    *(a1 + 1144) = 0;
  }

  sub_100046D50(a1);
}

uint64_t sub_10003BE90(int a1, int a2)
{
  v2 = 0;
  if (a2 != -1 && a2 <= 1)
  {
    v2 = 0;
    if (a1 == 1)
    {
      if (a2)
      {
        v2 = 1;
        sub_10003E5FC("%s:%d: Volume role %d is not allowed at fs index %d\n", "apfs_is_volume_fsindex_allowed", 30994, 1, a2);
      }
    }
  }

  return v2;
}

uint64_t sub_10003BF00(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 == 576)
  {
    if ((a5 & 1) == 0)
    {
      sub_10003E5FC("%s:%d: Volume role 0x%x is not allowed for an unencrypted volume\n");
      return 1;
    }
  }

  else if (a3 == 768)
  {
    sub_10003E5FC("%s:%d: Volume role 0x%x is not supported", a2);
    return 45;
  }

  if (a2 != a3)
  {
    if (a2 <= 319)
    {
      if (a2 <= 127)
      {
        if (a2 != 4 && a2 != 16)
        {
          goto LABEL_7;
        }
      }

      else if (a2 != 128 && a2 != 192)
      {
        if (a2 == 256)
        {
          sub_10003E5FC("%s:%d: cannot change role of xART volume\n");
          return 1;
        }

        goto LABEL_7;
      }
    }

    else if (a2 > 575)
    {
      if (a2 != 576 && a2 != 704 && a2 != 768)
      {
        goto LABEL_7;
      }
    }

    else if (a2 != 320)
    {
      if (a2 == 384)
      {
        sub_10003E5FC("%s:%d: cannot change role of Backup volume\n");
        return 1;
      }

      if (a2 == 448)
      {
        sub_10003E5FC("%s:%d: cannot change role of SideCar volume\n");
        return 1;
      }

      goto LABEL_7;
    }

    sub_10003E5FC("%s:%d: cannot change role of system-unique volume\n");
    return 1;
  }

LABEL_7:
  if (a3)
  {
    if (sub_10003BE90(a3, a4))
    {
      return 1;
    }

    v10 = a3 == 704;
    if (a3 <= 191)
    {
      if (((a3 - 1) > 0x3F || ((1 << (a3 - 1)) & 0x800000008000800BLL) == 0) && a3 != 128)
      {
        goto LABEL_104;
      }

      goto LABEL_27;
    }

    if (a3 <= 511)
    {
      if (a3 != 192 && a3 != 256 && a3 != 320)
      {
        goto LABEL_104;
      }
    }

    else if (a3 > 639)
    {
      if (a3 != 640 && a3 != 704)
      {
        goto LABEL_104;
      }
    }

    else if (a3 != 512 && a3 != 576)
    {
LABEL_104:
      sub_10003E5FC("%s:%d: Volume role 0x%x is not supported in container\n", v9);
      return 45;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_27:
  v11 = a1[47];
  if (!*(v11 + 180))
  {
    return 0;
  }

  v23 = v10;
  v12 = 0;
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v13;
  *&out[16] = v13;
  while (1)
  {
    v24 = 0;
    v14 = *(v11 + 8 * v12 + 184);
    if (v14)
    {
      break;
    }

LABEL_72:
    ++v12;
    v11 = a1[47];
    if (v12 >= *(v11 + 180))
    {
      return 0;
    }
  }

  v15 = sub_100049EE0(a1[49], 0, v14, &xmmword_1000810F0, 0, 0, 0, 0, &v24);
  v8 = v15;
  if (v15)
  {
    v21 = (a1[48] + 212);
    v22 = strerror(v15);
    sub_10003E5FC("%s:%d: %s Failed to get fsys oid %lld - %s\n", "apfs_is_volume_role_allowed", 31214, v21, v14, v22);
    return v8;
  }

  v16 = 1;
  if (a3 > 191)
  {
    if (a3 > 511)
    {
      if (a3 == 512)
      {
        v17 = v24;
        v18 = *(*(v24 + 47) + 964);
        if (v18 == 512)
        {
          goto LABEL_66;
        }

        if (v23)
        {
          goto LABEL_47;
        }

        goto LABEL_79;
      }

      if (a3 != 640)
      {
        if (a3 == 704)
        {
          v18 = *(*(v24 + 47) + 964);
LABEL_47:
          if (v18 == 704)
          {
            goto LABEL_66;
          }

          v8 = 0;
        }

        goto LABEL_67;
      }

      if (*(*(v24 + 47) + 964) != 640)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (a3 == 192)
      {
        v17 = v24;
        if (*(*(v24 + 47) + 964) == 192)
        {
          goto LABEL_66;
        }

        goto LABEL_79;
      }

      if (a3 != 256)
      {
        v17 = v24;
        if (*(*(v24 + 47) + 964) == 320)
        {
          goto LABEL_66;
        }

LABEL_79:
        sub_100046D50(v17);
        goto LABEL_72;
      }

      if (*(*(v24 + 47) + 964) != 256)
      {
        goto LABEL_62;
      }
    }

LABEL_66:
    uuid_unparse((a1[47] + 72), out);
    sub_10003E5FC("%s:%d: %s Volume role 0x%x already exists in container uuid %s\n", "apfs_is_volume_role_allowed", 31236, v24 + 4040, a3, out);
    v16 = 0;
    v8 = 17;
LABEL_67:
    if (a3 > 255)
    {
      if (a3 == 256 || a3 == 640 || a3 == 704)
      {
        goto LABEL_70;
      }
    }

    else if (a3 <= 0x20 && ((1 << a3) & 0x100010110) != 0)
    {
      goto LABEL_70;
    }

    v19 = v24;
LABEL_71:
    sub_100046D50(v19);
    if ((v16 & 1) == 0)
    {
      return v8;
    }

    goto LABEL_72;
  }

  if (a3 > 15)
  {
    if (a3 == 16)
    {
      if (*(*(v24 + 47) + 964) == 16)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (a3 == 32)
    {
      if (*(*(v24 + 47) + 964) != 32)
      {
        goto LABEL_62;
      }

      goto LABEL_66;
    }

    if (a3 != 128)
    {
      goto LABEL_67;
    }

    v17 = v24;
    if (*(*(v24 + 47) + 964) == 128)
    {
      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (a3 == 1)
  {
    v17 = v24;
    if (*(*(v24 + 47) + 964) == 1)
    {
      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (a3 != 4)
  {
    goto LABEL_67;
  }

  if (*(*(v24 + 47) + 964) == 4)
  {
    goto LABEL_66;
  }

LABEL_62:
  v8 = 0;
LABEL_70:
  v19 = v24;
  if (!a5)
  {
    goto LABEL_71;
  }

  sub_10003E5FC("%s:%d: %s Encrypted volume is not allowed with special role = 0X%x\n", "apfs_is_volume_role_allowed", 31240, v24 + 4040, a3);
  sub_100046D50(v24);
  return 1;
}

uint64_t sub_10003C4BC(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v136 = 0xAAAAAAAAAAAAAAAALL;
  *v137 = 0;
  v134 = 0;
  v135 = 0xAAAAAAAAAAAAAAAALL;
  memset(uu, 170, sizeof(uu));
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v129 = 0;
  uuid_clear(uu);
  *a5 = 0;
  if (a2)
  {
    v10 = a1;
    v11 = *(a1[47] + 36);
    if (strnlen((a2 + 56), 0x100uLL) > 0xFF)
    {
      return 63;
    }

    if (!sub_10003516C(a2 + 56, 0, 0, 0, 0))
    {
      return 92;
    }

    v124 = a4;
    v29 = *(a2 + 32);
    v24 = *(a2 + 36);
    v28 = *(a2 + 40);
    v27 = *(a2 + 44);
    v26 = *(a2 + 492);
    v36 = *(a2 + 16);
    v37 = *(a2 + 24);
    if (v36 % v11)
    {
      v38 = v36 / v11 + 1;
    }

    else
    {
      v38 = v36 / v11;
    }

    v39 = v37 / v11;
    if (v37 % v11)
    {
      ++v39;
    }

    v125 = v39;
    v126 = v38;
    v25 = *(a2 + 48);
    v40 = *(a2 + 52);
    v13 = v40 & 1;
    v23 = vand_s8(vshl_u16(vdup_n_s16(v40), 0xFFFEFFF7FFFAFFFCLL), 0x3000100010003);
    v15 = *(a2 + 444);
    v16 = *(a2 + 448);
    v128 = (v40 >> 7) & 1;
    v17 = (v40 >> 8) & 1;
    v19 = (a3 >> 5) & 1;
    v21 = (a3 >> 8) & 1;
    v18 = (v40 >> 10) & 1;
    v123 = a3;
    v20 = (a3 & 0x880) == 2176;
    v22 = (a3 & 0x880) == 128;
    v41 = (v25 == 1) << 6;
    if (!v25)
    {
      v41 = 1;
    }

    if (*(a2 + 54))
    {
      v42 = 1;
    }

    else
    {
      v42 = v25 == -1;
    }

    if (v42)
    {
      v14 = *(a2 + 54);
    }

    else
    {
      v14 = v41;
    }

    if (v14 == 64 || v14 == 1)
    {
      a1 = v10;
      if (*(a2 + 452) > 0)
      {
        return 45;
      }
    }

    else
    {
      a1 = v10;
    }
  }

  else
  {
    v123 = a3;
    v124 = a4;
    v125 = 0;
    v126 = 0;
    v13 = 0;
    v14 = 0;
    v128 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0x8000000000000;
    v24 = 2;
    v25 = -1;
    v26 = 1073741826;
    v27 = 1073741826;
    v28 = 1073741826;
    v29 = 1073741826;
  }

  v127 = v23;
  v121 = v17;
  v122 = v18;
  v119 = v19;
  v120 = v29;
  v117 = v20;
  v118 = v21;
  v115 = v15;
  v116 = v22;
  v114 = v16;
  v113 = a5;
  v30 = v26;
  v31 = (v13 | v23.u8[4]) != 0;
  v32 = sub_10003BF00(a1, 0, v14, v25, v31);
  v33 = a1;
  v12 = v32;
  if (v32)
  {
    return v12;
  }

  v34 = v33;
  if (v24 != 2)
  {
    sub_10003E5AC("%s:%d: %s fs tree type 0x%x invalid, using virtual btree instead\n", "apfs_newfs", 31801, (v33[48] + 212), v24);
  }

  if (v28 != 1073741826)
  {
    sub_10003E5AC("%s:%d: %s extentref tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31805, (*(v34 + 384) + 212), v28);
  }

  if (v27 != 1073741826)
  {
    sub_10003E5AC("%s:%d: %s snapmeta tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31809, (*(v34 + 384) + 212), v27);
  }

  v35 = v127.i8[0];
  if (v128 && v30 != 1073741826)
  {
    sub_10003E5AC("%s:%d: %s fext tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31814, (*(v34 + 384) + 212), v30);
    v35 = v127.i8[0];
    v30 = 1073741826;
  }

  if (v31 & *(v34 + 629))
  {
    return 1;
  }

  if (v35)
  {
    return 22;
  }

  if (v14 == 704 && (!v126 || v126 != v125))
  {
    sub_10003E5FC("%s:%d: %s bad overprovisioning volume configuration: reserve %lld quota %lld\n", "apfs_newfs", 31844, (*(v34 + 384) + 212), v126, v125);
    return 22;
  }

  v44 = *(v34 + 376);
  if (v25 == -1)
  {
    if (v14 == 64)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (v14 == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    if (v47 == -1)
    {
      v45 = *(v44 + 180);
      if (v45 < 3)
      {
        v25 = 2;
      }

      else
      {
        v48 = (v44 + 200);
        v49 = 2;
        while (*v48++)
        {
          if (v45 == ++v49)
          {
            v25 = *(v44 + 180);
            goto LABEL_63;
          }
        }

        v25 = v49;
LABEL_63:
        if ((v25 & 0x80000000) != 0)
        {
LABEL_66:
          if (v47 != -1)
          {
            v25 = v47;
            goto LABEL_68;
          }

          if (!v45)
          {
            v25 = 0;
            goto LABEL_117;
          }

          v54 = 0;
          while (*(v44 + 184 + 8 * v54))
          {
            if (v45 == ++v54)
            {
              v25 = v45;
              goto LABEL_45;
            }
          }

          v25 = v54;
          goto LABEL_45;
        }
      }
    }

    else
    {
      LODWORD(v45) = *(v44 + 180);
      v25 = v47;
    }

    if (v25 < v45 && !*(v44 + 8 * v25 + 184))
    {
      goto LABEL_68;
    }

    goto LABEL_66;
  }

LABEL_45:
  if ((v25 & 0x80000000) != 0)
  {
LABEL_117:
    sub_10003E5FC("%s:%d: %s no space for a new file system (slot %d, max %d)\n", "apfs_newfs", 31879, (*(v34 + 384) + 212), v25, *(v44 + 180));
    return 34;
  }

  LODWORD(v45) = *(v44 + 180);
LABEL_68:
  if (v25 >= v45)
  {
    goto LABEL_117;
  }

  if (*(v44 + 8 * v25 + 184))
  {
    sub_10003E5FC("%s:%d: %s existing file system (slot %d)\n", "apfs_newfs", 31882, (*(v34 + 384) + 212), v25);
    return 16;
  }

  v51 = v25;
  v52 = sub_10006084C(v34, &v134);
  v53 = v34;
  if (v52)
  {
    v12 = v52;
    sub_10003E5FC("%s:%d: %s tx_enter() failed: %d\n", "apfs_newfs", 31888, (v53[48] + 212), v52);
    return v12;
  }

  v55 = sub_1000487E8(*(v34 + 392), 0, 0, &xmmword_1000810F0, 0, 0, v134, v137);
  if (v55)
  {
    v12 = v55;
    sub_10003E5FC("%s:%d: %s failed to create fs: %d\n");
LABEL_80:
    sub_10003E5FC("%s:%d: %s fs creation failed: %d ... cleaning up...\n", "apfs_newfs", 32403, (v53[48] + 212), v12);
    v135 = 0;
    if (*v137)
    {
      if (v131)
      {
        v58 = sub_100025B30(v131, v134, &v135);
        if (v58)
        {
          sub_10003E5FC("%s:%d: %s failed to delete fs root tree after fs creation failed: %d\n", "apfs_newfs", 32415, (*v137 + 4040), v58);
        }

        sub_100046D50(v131);
      }

      if (v132)
      {
        v59 = sub_100025B30(v132, v134, &v135);
        if (v59)
        {
          sub_10003E5FC("%s:%d: %s failed to delete fs snap metadata tree after fs creation failed: %d\n", "apfs_newfs", 32431, (*v137 + 4040), v59);
        }

        sub_100046D50(v132);
      }

      if (v133)
      {
        v60 = sub_100025B30(v133, v134, &v135);
        if (v60)
        {
          sub_10003E5FC("%s:%d: %s failed to delete fs extentref tree after fs creation failed: %d\n", "apfs_newfs", 32438, (*v137 + 4040), v60);
        }

        sub_100046D50(v133);
      }

      if (v130)
      {
        v61 = sub_10003E1CC(*v137, v30, 5, v134, v130, &v135, v56, v57);
        if (v61)
        {
          sub_10003E5FC("%s:%d: %s failed to delete fs fext tree after fs creation failed: %d\n", "apfs_newfs", 32446, (*v137 + 4040), v61);
        }
      }

      if (v129)
      {
        v62 = sub_100025B30(v129, v134, &v135);
        if (v62)
        {
          sub_10003E5FC("%s:%d: %s failed to delete fs clonegroup tree after fs creation failed: %d\n", "apfs_newfs", 32461, (*v137 + 4040), v62);
        }

        sub_100046D50(v129);
      }

      v63 = *v137;
      v64 = *(*(*v137 + 376) + 128);
      if (v64)
      {
        v65 = sub_10004EC68(*v137, v64, v134, &v135);
        v63 = *v137;
        if (v65)
        {
          sub_10003E5FC("%s:%d: %s failed to destroy omap after fs creation failed: %d\n", "apfs_newfs", 32469, (*v137 + 4040), v65);
          v63 = *v137;
        }
      }

      if (*(v63 + 449))
      {
        sub_100046D50(*(v63 + 449));
        v63 = *v137;
      }

      if (*(v63 + 446))
      {
        sub_100046D50(*(v63 + 446));
        v63 = *v137;
      }

      sub_10002CA94(v63, *(v63 + 61));
      sub_10002CA94(v66, *(*v137 + 496));
    }

    if (v134)
    {
      sub_10006085C(v53, v134, 0);
      v134 = 0;
    }

    if (v135)
    {
      v67 = sub_100042014(v53, v135);
      if (v67)
      {
        sub_10003E5FC("%s:%d: %s failed to wait on reaper: %d\n", "apfs_newfs", 32494, (v53[48] + 212), v67);
      }
    }

    if (*v137)
    {
      v68 = sub_10006084C(v53, &v134);
      if (v68)
      {
        sub_10003E5FC("%s:%d: %s Couldn't reopen transaction to clean up: %d\n", "apfs_newfs", 32502, (v53[48] + 212), v68);
      }

      else
      {
        sub_10005DF34(v53, *v137, v134);
        sub_100049B88(*v137, v134);
        sub_10006085C(v53, v134, 0);
        v134 = 0;
      }

      sub_100046D50(*v137);
    }

    return v12;
  }

  v112 = v34;
  v70 = !v31;
  v71 = *v137;
  if (!v124)
  {
    v70 = 1;
  }

  if ((v70 & 1) == 0)
  {
    *(*v137 + 1144) = v124;
  }

  *(*(v71 + 47) + 36) = v25;
  sub_1000183A4(v71);
  v72 = *(*v137 + 376);
  *(v72 + 964) = v14;
  uuid_copy((v72 + 1008), uu);
  v73 = *v137;
  *(*v137 + 3928) = 0;
  v73[3941] = (v123 & 8) != 0;
  sub_100001A54(*(v73 + 47), (a2 + 456), v134);
  v53 = v34;
  if (a2 && !uuid_is_null(a2))
  {
    uuid_copy((*(*v137 + 376) + 240), a2);
    v77 = *v137;
    v78 = *(*v137 + 376);
    if (!strncmp((v78 + 240), "apfsuuid", 8uLL))
    {
      *(v78 + 255) = v51;
      v78 = *(v77 + 47);
    }

    v79 = sub_10003D75C(v34, (v78 + 240));
    if (v79)
    {
      v12 = v79;
      *&out[29] = 0xAAAAAAAAAAAAAAAALL;
      *&v80 = 0xAAAAAAAAAAAAAAAALL;
      *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *out = v80;
      *&out[16] = v80;
      uuid_unparse(a2, out);
      v53 = v112;
      sub_10003E5FC("%s:%d: %s UUID %s is not allowed, error %d\n");
      goto LABEL_80;
    }
  }

  else
  {
    if (v14 == 768)
    {
      sub_10003E5FC("%s:%d: %s this volume requires valid UUID option specified\n", "apfs_newfs", 31926, (*(v34 + 384) + 212));
      v12 = 0;
      goto LABEL_80;
    }

    uuid_generate((*(*v137 + 376) + 240));
  }

  v74 = *v137;
  v75 = *(*v137 + 376);
  *(v75 + 176) = 16;
  *(v75 + 960) = 3;
  *(v75 + 966) = 0;
  if (v121)
  {
    *(v75 + 40) |= 0x10uLL;
  }

  if (v127.u8[6] == 1)
  {
    v76 = v127.u8[6];
  }

  else
  {
    if (v127.u8[6] != 2)
    {
      goto LABEL_142;
    }

    v76 = 8;
  }

  *(v75 + 56) |= v76;
LABEL_142:
  if (v128)
  {
    *(v75 + 56) |= 0x20uLL;
  }

  if (v122)
  {
    *(v75 + 56) |= 0x80uLL;
    sub_10003E50C("%s:%d: %s allocated unwritten file extents are now supported\n", "apfs_newfs", 31997, v74 + 4040);
    v74 = *v137;
    v75 = *(*v137 + 376);
  }

  *(v75 + 40) |= 2uLL;
  v12 = sub_10005DB08(v34, v74, v126, v125, v134);
  if (v12)
  {
    sub_10003E5FC("%s:%d: %s Could not set fs bounds for guarantee %lld and quota %lld: %d\n");
LABEL_162:
    v53 = v112;
    goto LABEL_80;
  }

  if (v31)
  {
    sub_10002B810(*v137, 1);
    v81 = sub_10002C3E4(*v137, v134, 0, 0, *(*v137 + 376) + 96, *v137 + 536, *v137 + 632);
    if (v81)
    {
      v12 = v81;
      sub_10003E5FC("%s:%d: %s unable to create/store metadata crypto (%d)\n");
      goto LABEL_162;
    }
  }

  else
  {
    sub_10003E50C("%s:%d: %s FS will NOT be encrypted.\n", "apfs_newfs", 32033, (*v137 + 4040));
    v82 = *v137;
    v83 = *(*v137 + 376);
    *(v83 + 264) |= 1uLL;
    sub_10002C3E4(v82, 0, 0, 0, v83 + 96, (v82 + 536), (v82 + 632));
    sub_10002C3BC(*v137 + 536);
  }

  v84 = *v137;
  v85 = *(*v137 + 376);
  *(v85 + 116) = 0x4000000200000002;
  *(v85 + 124) = 1073741826;
  *(v85 + 1104) = 2;
  v86 = sub_10004EA78(v84, 0x40000000u, 0, v120, v134, &v136);
  if (v86)
  {
    v12 = v86;
    sub_10003E5FC("%s:%d: %s fs omap initialization failed: %d\n");
    goto LABEL_162;
  }

  v87 = sub_100047D10(v136);
  *(*(*v137 + 376) + 128) = v87;
  sub_100046D50(v136);
  v140 = xmmword_100084E50;
  v141 = unk_100084E60;
  v142 = xmmword_100084E70;
  v143 = unk_100084E80;
  v138 = off_100084E30;
  v139 = unk_100084E40;
  if (v128)
  {
    v12 = sub_100001614(*v137, *(a2 + 488), v134, 0);
    v53 = v112;
    if (v12)
    {
      goto LABEL_80;
    }

    HIDWORD(v139) = sub_100001234(*(a2 + 488));
    DWORD2(v139) = *(a2 + 488);
    DWORD1(v139) |= 0x180u;
  }

  if (*(*(*v137 + 376) + 116) != 2)
  {
    v12 = 22;
    goto LABEL_161;
  }

  v88 = sub_1000242A4(*v137, *(*(*v137 + 376) + 116) & 0xFFFF0000, 0, 0, 0, &v138, v134, &v131);
  if (v88)
  {
    v12 = v88;
LABEL_161:
    sub_10003E5FC("%s:%d: %s fs root tree creation failed: %d\n");
    goto LABEL_162;
  }

  v89 = sub_100047D10(v131);
  v90 = *v137;
  v91 = *(*v137 + 376);
  *(v91 + 136) = v89;
  if (v119)
  {
    *(v91 + 56) |= 0x200uLL;
    sub_10003E50C("%s:%d: %s expanded records are now supported\n", "apfs_newfs", 32150, v90 + 4040);
    v90 = *v137;
    if (v117)
    {
      *(*(*v137 + 376) + 48) |= 4uLL;
      sub_10003E50C("%s:%d: %s clone mapping is enabled for this volume\n", "apfs_newfs", 32154, v90 + 4040);
      v90 = *v137;
    }
  }

  if (v118)
  {
    *(*(v90 + 47) + 48) |= 8uLL;
    sub_10003E50C("%s:%d: %s attribution tags are supported on this volume\n", "apfs_newfs", 32160, v90 + 4040);
    v90 = *v137;
  }

  v92 = *(*(v90 + 47) + 120);
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = sub_10002E330;
  *&out[16] = 0x420000000FLL;
  if (v92 != 2)
  {
    v12 = 22;
    goto LABEL_172;
  }

  v93 = sub_1000242A4(v90, v92 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v134, &v133);
  if (v93)
  {
    v12 = v93;
LABEL_172:
    sub_10003E5FC("%s:%d: %s fs extentref tree creation failed: %d\n");
    goto LABEL_162;
  }

  v94 = sub_100047D10(v133);
  v95 = *v137;
  v96 = *(*v137 + 376);
  *(v96 + 144) = v94;
  v97 = *(v96 + 124);
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = sub_10002E330;
  *&out[16] = 0x4200000010;
  if (v97 != 2)
  {
    v12 = 22;
    goto LABEL_177;
  }

  v98 = sub_1000242A4(v95, v97 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v134, &v132);
  if (v98)
  {
    v12 = v98;
LABEL_177:
    sub_10003E5FC("%s:%d: %s fs snapshot metadata tree creation failed: %d\n");
    goto LABEL_162;
  }

  v99 = sub_100047D10(v132);
  v100 = *v137;
  *(*(*v137 + 376) + 152) = v99;
  if (v128)
  {
    v101 = sub_10003E058(v100, v30, 5, v134, &v130);
    if (v101)
    {
      v12 = v101;
      sub_10003E5FC("%s:%d: %s fs fext tree creation failed: %d\n");
      goto LABEL_162;
    }

    v100 = *v137;
    *(*(*v137 + 376) + 1032) = v130;
  }

  if ((v119 & v116) == 1)
  {
    memset(&out[32], 0, 64);
    *out = off_100084E90;
    *&out[16] = unk_100084EA0;
    v102 = sub_1000242A4(v100, 0, 0, 0, 0, out, v134, &v129);
    if (v102)
    {
      v12 = v102;
      v103 = (*v137 + 4040);
      v104 = strerror(v102);
      sub_10003E5FC("%s:%d: %s clonegroup tree creation failed: %s\n", "apfs_newfs", 32235, v103, v104);
      goto LABEL_162;
    }

    v105 = sub_100047D10(v129);
    v106 = *v137;
    v107 = *(*v137 + 376);
    *(v107 + 1112) = v105;
    *(v107 + 1108) |= 1u;
    *(v107 + 1136) = 1024;
    *(v107 + 48) |= 4uLL;
    sub_10003E50C("%s:%d: %s clonegroups enabled for this volume\n", "apfs_newfs", 32244, v106 + 4040);
    v100 = *v137;
  }

  v108 = sub_10002EB84(v100, 1, 0, "root", 0, 2, 16877, v115, v114, 0, -1, 0, 0, v100 + 61, v134, 0, -1);
  if (v108)
  {
    v12 = v108;
    sub_10003E5FC("%s:%d: %s fs root dir creation failed: %d\n");
    goto LABEL_162;
  }

  __strlcpy_chk();
  v12 = sub_10002EB84(*v137, 1, 0, "private-dir", 0, 3, 16804, 0, 0, 0, -1, 0, 0, (*v137 + 496), v134, 0, -1);
  if (v12)
  {
    sub_10003E5FC("%s:%d: %s fs private dir creation failed: %d\n");
    goto LABEL_162;
  }

  *(*(v112 + 376) + 8 * v51 + 184) = sub_100047D10(*v137);
  v109 = *(*v137 + 376);
  v109[140] = v134;
  v109[141] = (v109[7] >> 9) & 1 | 0xC;
  v110 = sub_100062550();
  v111 = *v137;
  *(*(*v137 + 376) + 256) = v110;
  sub_10003728C(v111, v134);
  sub_100046D50(v132);
  sub_100046D50(v133);
  sub_100046D50(v131);
  if (v129)
  {
    sub_100046D50(v129);
  }

  *(v112 + 656) += (*(*(*v137 + 376) + 48) >> 1) & 1;
  sub_10006085C(v112, v134, 5);
  v12 = 0;
  *v113 = *v137;
  return v12;
}

uint64_t sub_10003D75C(void *a1, const unsigned __int8 *a2)
{
  v2 = a1[47];
  if (*(v2 + 180))
  {
    for (i = 0; i < *(v2 + 180); ++i)
    {
      v13 = 0;
      v6 = *(v2 + 8 * i + 184);
      if (v6)
      {
        v7 = sub_100049EE0(a1[49], 0, v6, &xmmword_1000810F0, 0, 0, 0, 0, &v13);
        if (v7)
        {
          v9 = v7;
          v10 = (a1[48] + 212);
          v11 = strerror(v7);
          sub_10003E5FC("%s:%d: %s Failed to get fsys oid %lld - %s\n", "apfs_is_volume_uuid_allowed", 31297, v10, v6, v11);
          return v9;
        }

        v8 = uuid_compare(a2, (v13[47] + 240));
        sub_100046D50(v13);
        if (!v8)
        {
          return 17;
        }

        v2 = a1[47];
      }
    }
  }

  return 0;
}

uint64_t sub_10003D878(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (*(a1 + 504))
  {
    v7 = *(a1 + 504);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_10005C5F4(v7, 0, a3, a4, a2);
  v9 = v8;
  if (v8)
  {
    v10 = strerror(v8);
    sub_10003E5FC("%s:%d: %s spaceman_free failed for LBA %llx, size %llu : %d %s\n", "apfs_free_data_blocks", 32582, (v7 + 4040), a3, a4, v9, v10);
  }

  else
  {
    atomic_fetch_add_explicit((*(v7 + 376) + 232), a4, memory_order_relaxed);
    sub_10003728C(v7, a2);
  }

  return v9;
}

uint64_t sub_10003D930(uint64_t a1)
{
  v1 = *(a1 + 504);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(*(v1 + 376) + 264);
  if (v2)
  {
    LOBYTE(v2) = *(*(a1 + 376) + 976) == 0;
  }

  return v2 & 1;
}

uint64_t sub_10003D960(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  if (a2 + 1) < 7 && ((0x63u >> (a2 + 1)))
  {
    return 0;
  }

  v4 = *(a1 + 504);
  if (!v4)
  {
    v4 = a1;
  }

  if ((*(*(v4 + 376) + 264) & 9) != 0)
  {
    panic("assertion failed: %s", "fs_is_content_protected(apfs)");
  }

  LODWORD(v5) = 2622471;
  *(&v5 + 1) = a2;
  LODWORD(v6) = 1;
  return sub_100030EB4(a1, 1, &v5, a3);
}

uint64_t sub_10003DA28(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  if (a2 + 1) < 7 && ((0x63u >> (a2 + 1)))
  {
    return 0;
  }

  v6 = *(a1 + 504);
  if (!v6)
  {
    v6 = a1;
  }

  if ((*(*(v6 + 376) + 264) & 9) != 0)
  {
    panic("assertion failed: %s", "fs_is_content_protected(apfs)");
  }

  LODWORD(v10) = 2622471;
  *(&v10 + 1) = a2;
  LODWORD(v11) = -1;
  v7 = sub_100030EB4(a1, 1, &v10, a3);
  if (!v7)
  {
    if (v11 == 1)
    {
LABEL_12:
      BYTE1(v10) = 3;
      return sub_10003135C(a1, 1, &v10, a3);
    }

    if (!v11)
    {
      sub_10003E50C("%s:%d: %s danger - crypto id %lld had refcnt %d\n", "icp_dec_ref", 34834, (a1 + 4040), *(&v10 + 1), 0);
      LODWORD(v11) = 1;
      goto LABEL_12;
    }

    return 0;
  }

  v8 = v7;
  sub_10003E50C("%s:%d: %s was NOT able to update/decrement crypto state %lld, err = %d\n", "icp_dec_ref", 34828, (a1 + 4040), a2, v7);
  return v8;
}

uint64_t sub_10003DB8C(uint64_t result, const char *a2, int a3)
{
  if ((*(*(result + 376) + 264) & 4) == 0)
  {
    v3 = result;
    if ((*(result + 484) & 4) == 0)
    {
      sub_10003E5FC("%s:%d: %s Volume inconsistency detected by %s:%u!\n", "apfs_mark_inconsistent_", 37588, (result + 4040), a2, a3);
      pthread_mutex_lock((v3 + 1280));
      *(v3 + 480) |= 0x400000000uLL;

      return pthread_mutex_unlock((v3 + 1280));
    }
  }

  return result;
}

uint64_t sub_10003DC28(uint64_t a1, uint64_t a2, atomic_ullong *a3, unint64_t a4, unint64_t a5, uint64_t a6, BOOL *a7, unint64_t *a8, void *a9)
{
  v12 = a4;
  memset(v43, 170, 20);
  if ((*(a6 + 76) & 1) == 0 || (v15 = *a6, v16 = *a6 & 0xFFFFFFFFFFFFFFFLL, v16 > a4) || (*(a6 + 16) & 0xFFFFFFFFFFFFFFFLL) + v16 <= a4)
  {
    v15 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  }

  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[2] = v17;
  v45[3] = v17;
  v45[0] = v17;
  v45[1] = v17;
  v44 = v15;
  sub_1000236D0(v45, a3, 0, 0, &v44, 8, 8, v43, 0x14u, 0);
  v19 = v18;
  if ((v18 & 0xFFFFFFFD) == 0)
  {
    if (v18 == 2)
    {
      v12 = 0;
      *a7 = (*(a2 + 64) & 0x400000) != 0;
      *a8 = a5;
      goto LABEL_8;
    }

    v29 = v44 & 0xFFFFFFFFFFFFFFFLL;
    v30 = v43[0] & 0xFFFFFFFFFFFFFFFLL;
    v31 = (v43[0] & 0xFFFFFFFFFFFFFFFLL) + (v44 & 0xFFFFFFFFFFFFFFFLL);
    if (v31 <= v12)
    {
      *a7 = 0;
      v33 = sub_100023864(v45);
      if (!v33)
      {
        a8 = 0;
        goto LABEL_8;
      }

      v19 = v33;
      v34 = strerror(v33);
      sub_10003E5FC("%s:%d: %s failed to get next physical extent, error %s(%d)\n", "fs_is_phys_range_writable", 19965, (a1 + 4040), v34, v19);
    }

    else
    {
      v32 = v29 - v12;
      if (v29 <= v12)
      {
        v36 = v43[1] != -1 && LODWORD(v43[2]) == 1;
        *a7 = v36;
        v37 = *(*(a1 + 392) + 376);
        v38 = *(v37 + 1240);
        if (v29 >= v38 && v31 <= *(v37 + 1248) + v38)
        {
          *a7 = 0;
        }

        v39 = v32 + v30;
        if (v32 + v30 >= a5)
        {
          v39 = a5;
        }

        *a8 = v39;
        v40 = sub_100023864(v45);
        if (!v40)
        {
          v12 = v31;
          goto LABEL_8;
        }

        v19 = v40;
        v41 = strerror(v40);
        sub_10003E5FC("%s:%d: %s failed to get next physical extent, error %s(%d)\n", "fs_is_phys_range_writable", 19988, (a1 + 4040), v41, v19);
      }

      else
      {
        *a7 = (*(a2 + 64) & 0x400000) != 0;
        if (v32 >= a5)
        {
          v32 = a5;
        }

        *a8 = v32;
        ++*a9;
        v12 = v29;
        while (1)
        {
LABEL_8:
          if (*a8 >= a5)
          {
            return 0;
          }

          if (sub_100023848(v45))
          {
            break;
          }

          v20 = v44 & 0xFFFFFFFFFFFFFFFLL;
          v21 = *a7;
          v22 = (v44 & 0xFFFFFFFFFFFFFFFLL) - v12;
          if ((v44 & 0xFFFFFFFFFFFFFFFLL) == v12)
          {
            v24 = v43[1] != -1 && LODWORD(v43[2]) == 1;
            if (v21 != v24)
            {
              return 0;
            }

            v25 = *a8;
          }

          else
          {
            if (v21)
            {
              return 0;
            }

            ++*a9;
            v25 = v22 + *a8;
            if (v25 >= a5)
            {
              v25 = a5;
            }

            *a8 = v25;
            if (v43[1] != -1 && LODWORD(v43[2]) == 1)
            {
              return 0;
            }
          }

          v26 = v43[0] & 0xFFFFFFFFFFFFFFFLL;
          v27 = (v43[0] & 0xFFFFFFFFFFFFFFFLL) + v25;
          if (v27 >= a5)
          {
            v27 = a5;
          }

          *a8 = v27;
          v12 = v26 + v20;
          v28 = sub_100023864(v45);
          if ((v28 & 0xFFFFFFFD) != 0)
          {
            return v28;
          }
        }

        if (*a7 && (*(a2 + 66) & 0x40) == 0)
        {
          return 0;
        }

        v19 = 0;
        *a8 = a5;
      }
    }
  }

  return v19;
}

uint64_t sub_10003DF54(uint64_t a1, unint64_t a2)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  if (v5.tv_sec - *(a1 + 64) >= *(a1 + 72))
  {
    result = sub_1000182E4(a1);
  }

  atomic_fetch_add_explicit((a1 + 88), a2, memory_order_relaxed);
  return result;
}

uint64_t sub_10003DFBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 - 5) >= 2)
  {
    sub_10003E5FC("%s:%d: %s unsupported tree type: %d\n", "supplemental_tree_get", 81, (a1 + 4040), a3);
    return 45;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v9 = sub_10002F2A8(a1, a3, 0, &v11, a5, a6, a7, a8);
    if (!v9)
    {
      v9 = sub_100025E3C(v11, a4);
      sub_100046D50(v11);
    }
  }

  return v9;
}

uint64_t sub_10003E058(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  v15 = 0;
  v9 = sub_100003350;
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
      sub_10003E5FC("%s:%d: %s unsupported tree type: %d\n", "supplemental_tree_get_descriptor", 64, (a1 + 4040), a3);
      return 45;
    }

    v10 = 32;
    v9 = sub_100004D10;
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

  v13 = sub_1000242A4(a1, a2 & 0xFFFF0000, 0, v12, v11, v16, a4, &v15);
  if (v13)
  {
LABEL_9:
    sub_10003E5FC("%s:%d: %s Failed to create supplemental tree (type %d): %d\n", "supplemental_tree_create", 123, (a1 + 4040), a3, v13);
    return v13;
  }

  *a5 = sub_100047D10(v15);
  sub_100046D50(v15);
  return v13;
}

uint64_t sub_10003E1CC(char *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v11 = a3;
  v13 = sub_100003350;
  if (a3 == 5)
  {
    v14 = 0x20000001FLL;
  }

  else
  {
    if (a3 != 6)
    {
      sub_10003E5FC("%s:%d: %s unsupported tree type: %d\n", "supplemental_tree_get_descriptor", 64, a1 + 4040, a3);
      return 45;
    }

    v14 = 32;
    v13 = sub_100004D10;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  if (!a5)
  {
    v15 = sub_10002F2A8(a1, a3, a4, &v20, 0, a6, a7, a8);
    if (v15)
    {
      return v15;
    }

    goto LABEL_11;
  }

  v21[1] = 0;
  v22 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21[0] = v13;
  v21[2] = v14;
  if (a2 != 2)
  {
    v15 = 22;
    goto LABEL_15;
  }

  v15 = sub_10002462C(a1, a2 & 0xFFFF0000, a5, 0, 0, v21, 0, &v20);
  if (v15)
  {
LABEL_15:
    v18 = strerror(v15);
    sub_10003E5FC("%s:%d: %s Failed to get supplemental tree (type %d, oid %llu): %d (%s)\n", "supplemental_tree_destroy", 159, a1 + 4040, v11, a5, v15, v18);
    return v15;
  }

LABEL_11:
  v16 = sub_100025B30(v20, a4, a6);
  v15 = v16;
  if (v16)
  {
    v17 = strerror(v16);
    sub_10003E5FC("%s:%d: %s Failed to delete supplemental tree (type %d): %d (%s)\n", "supplemental_tree_destroy", 167, a1 + 4040, v11, v15, v17);
  }

  sub_100046D50(v20);
  return v15;
}

pthread_cond_t *sub_10003E3DC(pthread_cond_t *result)
{
  if (result)
  {
    return pthread_cond_destroy(result);
  }

  return result;
}

uint64_t sub_10003E3E8(pthread_cond_t *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, timespec *a5)
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

const char *sub_10003E50C(const char *result, ...)
{
  va_start(va, result);
  if (dword_100088254 >= 5)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *sub_10003E55C(const char *result, ...)
{
  va_start(va, result);
  if (dword_100088254 >= 4)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *sub_10003E5AC(const char *result, ...)
{
  va_start(va, result);
  if (dword_100088254 >= 3)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *sub_10003E5FC(const char *result, ...)
{
  va_start(va, result);
  if (dword_100088254 >= 2)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

uint64_t sub_10003E64C(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (dword_100088254 >= 1)
  {
    return vfprintf(__stderrp, a2, va);
  }

  return result;
}

uLong sub_10003E698(uint64_t a1)
{
  result = uuid_compare(a1, byte_1000811A8);
  if (!result)
  {
    *(a1 + 44) = 0;
    result = crc32(0, a1, 0x1000u);
    *(a1 + 44) = result;
  }

  return result;
}

uint64_t sub_10003E6E0(uint64_t a1)
{
  if (uuid_compare(a1, byte_1000811A8))
  {
    if (uuid_compare(a1, byte_1000811B8))
    {
      return 4294967294;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 44);
    sub_10003E698(a1);
    if (v3 == *(a1 + 44))
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t sub_10003E748(uint64_t a1, unint64_t a2, unsigned int a3)
{
  *a1 = a2;
  *(a1 + 20) = a3;
  if (a2 < 0x40000000001)
  {
    if (a3 > 0xFFF)
    {
      if (a3 <= 0x4000)
      {
        v4 = __clz((a2 - 1) >> 10);
        v5 = 32 - v4;
        v6 = 1 << -v4;
        *(a1 + 24) = __clz(a3) ^ 0x1F;
        *(a1 + 28) = v6;
        *(a1 + 32) = v5;
        if (v6 >= a3)
        {
          result = 0;
          *(a1 + 16) = a2 >> v5;
          *(a1 + 8) = ((a2 >> v5) - 8) << v5;
          return result;
        }

        if (dword_1000885E4)
        {
          warn("LwVM: media too small");
        }
      }

      else if (dword_1000885E4)
      {
        warn("LwVM: media block size too large");
      }
    }

    else if (dword_1000885E4)
    {
      warn("LwVM: media block size too small");
    }
  }

  else if (dword_1000885E4)
  {
    warn("LwVM: media too large");
  }

  return 22;
}

void sub_10003E850(int a1, void *a2, uint64_t a3)
{
  v7 = -1431655766;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"Writable", kCFBooleanTrue);
  dup(a1);
  a2[24] = MKMediaCreateWithFileDescriptor();
  CFRelease(Mutable);
  if (!v7)
  {
    CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v6 = -1431655766;
    MKCFBuildPartition();
    CFRelease(@"7C3457EF-0000-11AA-AA11-00306543ECAC");
    CFRelease(@"Container");
    sub_100063A58(-1431655766, &v6);
  }

  sub_100063A18(v7, &v7);
}

uint64_t sub_10003EC20(uint64_t a1)
{
  v2 = MKCFWriteMedia();
  if (v2)
  {
    sub_100063AD8(v2);
  }

  MKCFDisposeMedia();
  *(a1 + 200) = 0;
  CFRelease(*(a1 + 192));
  *(a1 + 192) = 0;
  return 0;
}

void sub_10003EC7C(int a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  if (a3 < 0x1000)
  {
    return;
  }

  v9 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10E00402D90A1C7uLL);
  if (!v9)
  {
    v36 = 605;
    v37 = 133;
    goto LABEL_45;
  }

  v10 = v9;
  if (!sub_10003E748((v9 + 17), a2, a3))
  {
    v11 = a3;
    v12 = *(v10 + 41);
    v10[23] = v12 - a3;
    v13 = (a3 + 4095) / a3 * a3;
    v14 = malloc_type_calloc(1uLL, v13, 0x744EAD47uLL);
    v10[22] = v14;
    if (v14)
    {
      v15 = v14;
      if (pread(a1, v14, v13, 0) != v13)
      {
        sub_100063B18();
      }

      if (sub_10003E6E0(v15))
      {
        free(v15);
        goto LABEL_8;
      }

      v16 = v15[10];
      *(v10 + 54) = v16;
      v10[26] = malloc_type_calloc(v16, 0x10uLL, 0x1020040FFEA222EuLL);
      if ((dword_1000885E4 & 0x80) != 0)
      {
        printf("totalChunks = %u\n", *(v10 + 38));
        printf("chunkSize   = %u (0x%x)\n", v12, v12);
        putchar(10);
        puts("Chunk  Part  Index");
        puts("------------------");
        for (i = 0; i != 1024; ++i)
        {
          v18 = *(v15 + i + 1024);
          printf("%5d  %4d  %5d\n", i, v18 >> 12, v18 & 0x3FF);
        }
      }

      v19 = malloc_type_calloc(0x400uLL, 0x10uLL, 0x1000040451B5BE8uLL);
      v10[14] = v19;
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = v12;
        do
        {
          if (*(v15 + v23 + 2048) >= 0xF000u)
          {
            if (v22 > a2)
            {
              break;
            }

            if (dword_100088038)
            {
              v26 = 0;
            }

            else
            {
              v26 = v23 == 0;
            }

            if (v26)
            {
              v27 = v11;
            }

            else
            {
              v27 = 0;
            }

            v28 = v25 - v27;
            if (a2 >= v28)
            {
              v29 = v28;
            }

            else
            {
              v29 = a2;
            }

            if (v24 >= 1 && (v30 = &v19[16 * v24], v31 = *(v30 - 1), v22 == v31 + *(v30 - 2)))
            {
              if (a2 < v28)
              {
                v28 = a2;
              }

              *(v30 - 1) = v21 + v31 + v28;
            }

            else
            {
              v32 = &v19[16 * v24];
              *v32 = v22;
              v32[1] = v29 + v21;
              ++v24;
            }
          }

          v23 += 2;
          v22 += v12;
          v21 -= v12;
          v25 += v12;
        }

        while (v23 != 2048);
        if ((dword_1000885E4 & 0x80) != 0)
        {
          putchar(10);
          printf("Free extents (count = %d)\n", v24);
          putchar(10);
          puts("    Offset      Length");
          puts("----------------------");
          if (v24 >= 1)
          {
            v33 = v24;
            v34 = v20 + 1;
            do
            {
              printf("%10llx  %10llx\n", *(v34 - 1), *v34);
              v34 += 2;
              --v33;
            }

            while (v33);
          }
        }

        *v10 = 1;
        v10[1] = sub_10003F104;
        v10[2] = sub_10003F1D0;
        v10[3] = sub_10003F2BC;
        v10[4] = sub_10003F358;
        v10[5] = sub_10003F360;
        v10[6] = sub_10003F3B4;
        v10[7] = sub_10003F3C0;
        v10[8] = sub_10003F56C;
        v10[9] = sub_10003F5F0;
        v10[10] = sub_10003F704;
        v10[11] = sub_10003F720;
        v10[12] = sub_10003F728;
        v10[13] = sub_10003F77C;
        v10[15] = v24;
        v35 = reallocf(v20, 16 * v24);
        v10[14] = v35;
        if (v35)
        {
          *a5 = v10;
          return;
        }

        v36 = 752;
        v37 = 125;
      }

      else
      {
        v36 = 677;
        v37 = 135;
      }
    }

    else
    {
      v36 = 621;
      v37 = 134;
    }

LABEL_45:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/lwvm.c", v36, v37, 12);
  }

LABEL_8:

  free(v10);
}

uint64_t sub_10003F104(uint64_t a1, unsigned int a2, uint64_t a3, int64_t a4, void *a5, int64_t *a6)
{
  v6 = *(a1 + 164);
  v7 = *(a1 + 208) + 16 * a2;
  v8 = *(v7 + 8);
  if (*(v7 + 8))
  {
    v9 = 0;
    v10 = *v7;
    v11 = (a3 >> *(a1 + 168));
    while (1)
    {
      v12 = *v10;
      if (v11 >= v12 && v10[2] + v12 > v11)
      {
        break;
      }

      ++v9;
      v10 += 3;
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  if (v9 >= v8)
  {
LABEL_13:
    warnx("Unable to find LwVM extent for logical offset %lld", a3);
    return 4294967172;
  }

  else
  {
    result = 0;
    v14 = *v10;
    v15 = v10[1];
    v16 = v10[2] * v6;
    v17 = a3 - v14 * v6;
    *a5 = v17 + v15 * v6;
    v18 = v16 - v17;
    if ((v16 - v17) >= a4)
    {
      v18 = a4;
    }

    *a6 = v18;
  }

  return result;
}

uint64_t sub_10003F1D0(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, int64_t a5, void *a6, int64_t *a7)
{
  v7 = *(a1 + 208) + 16 * a2;
  v8 = *(v7 + 8);
  if (*(v7 + 8))
  {
    v9 = 0;
    v10 = *v7;
    while (v10[2] + v10[1] <= (a4 >> *(a1 + 168)))
    {
      ++v9;
      v10 += 3;
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  if (v9 >= v8)
  {
LABEL_13:
    *a6 = -1;
    *a7 = a5;
  }

  else
  {
    v11 = *(a1 + 164);
    v12 = v10[1] * v11;
    if (v12 <= a4)
    {
      v15 = v10[2] * v11;
      v16 = a4 - v12;
      *a6 = v16 + *v10 * v11;
      if ((v15 - v16) >= a5)
      {
        v17 = a5;
      }

      else
      {
        v17 = v15 - v16;
      }

      *a7 = v17;
      v13 = a3 - *a6;
      if (a3 <= *a6)
      {
        *a6 = -1;
        return 0;
      }

      if (*a6 + v17 <= a3)
      {
        return 0;
      }
    }

    else
    {
      *a6 = -1;
      if (v12 - a4 >= a5)
      {
        v13 = a5;
      }

      else
      {
        v13 = v12 - a4;
      }
    }

    *a7 = v13;
  }

  return 0;
}

uint64_t sub_10003F2BC(uint64_t a1, uint64_t a2, int64_t a3, _DWORD *a4, void *a5, int64_t *a6)
{
  v7 = a2 / *(a1 + 164);
  if (v7 > 1023 || (v8 = *(a1 + 176), v9 = *(v8 + 2 * v7 + 2048) >> 12, v9 == 15))
  {
    *a4 = -1;
    *a5 = -1;
    v10 = *(a1 + 164) + *(a1 + 164) * v7 - a2;
    if (v10 >= a3)
    {
      v10 = a3;
    }

    *a6 = v10;
  }

  else
  {
    *a4 = v9;
    sub_10003F1D0(a1, v9, *(v8 + (v9 << 7) + 552) - *(v8 + (v9 << 7) + 544), a2, a3, a5, a6);
  }

  return 0;
}

uint64_t sub_10003F360(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v6 = *(result + 184);
  if (v6)
  {
    v7 = v6 < a4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v6 < a5 + a4)
  {
    *(a2 + ((v6 - a4) / a6 + a3) / 8) &= ~(1 << (((v6 - a4) / a6 + a3) % 8));
  }

  return result;
}

char *sub_10003F3C0(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 176);
  v6 = *(a1 + 208) + 16 * a2;
  *a3 = *(v5 + (a2 << 7) + 552) - *(v5 + (a2 << 7) + 544);
  v7 = malloc_type_calloc(0x400uLL, 6uLL, 0x1000040274DC3F3uLL);
  *v6 = v7;
  v8 = *(a1 + 152);
  if (v8)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    do
    {
      v11 = *(v5 + 2048 + 2 * v9);
      if (a2 == v11 >> 12)
      {
        v12 = v11 & 0x3FF;
        if (v10 >= 1 && (v13 = &v7[6 * v10], v14 = *(v13 - 1), v14 + *(v13 - 3) == v12) && v9 == *(v13 - 2) + v14)
        {
          *(v13 - 1) = v14 + 1;
        }

        else
        {
          v15 = &v7[6 * v10];
          *v15 = v12;
          *(v15 + 1) = v9;
          *(v15 + 2) = 1;
          LODWORD(v10) = v10 + 1;
        }
      }

      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    LODWORD(v10) = 0;
  }

  *(v6 + 8) = v10;
  result = reallocf(v7, 6 * v10);
  *v6 = result;
  if ((dword_1000885E4 & 0x80) != 0)
  {
    v17 = result;
    putchar(10);
    printf("Extents for slice #%d (count = %d)\n", a2, v10);
    putchar(10);
    puts("Logical  Physical  Length");
    result = puts("-------------------------");
    if (v10 >= 1)
    {
      v10 = v10;
      v18 = (v17 + 4);
      do
      {
        v19 = *(v18 - 2);
        v20 = *(v18 - 1);
        v21 = *v18;
        v18 += 3;
        result = printf("%7d  %8d  %6d\n", v19, v20, v21);
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t sub_10003F56C(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = 0;
    result = 0;
    v5 = 1;
    do
    {
      result += *(*(a1 + 112) + 16 * v3 + 8);
      v3 = v5;
    }

    while (v2 > v5++);
  }

  else
  {
    result = 0;
  }

  v7 = *(a1 + 176);
  v8 = *(v7 + 40);
  if (v8)
  {
    v9 = *(a1 + 164);
    v10 = (v7 + 552);
    do
    {
      v11 = (*v10 - *(v10 - 1)) % v9;
      if (v11)
      {
        v12 = v9 - v11;
      }

      else
      {
        v12 = 0;
      }

      result += v12;
      v10 += 16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_10003F5F0(uint64_t a1, uint64_t a2)
{
  sub_10003E850(*(a2 + 248), a1, a2);
  if (dword_100088038)
  {
    if (dword_1000885E4)
    {
      v11 = time(0);
      v4 = ctime(&v11);
      printf("%.24s: Overwriting backup LwVM header.\n", v4);
    }

    v5 = malloc_type_calloc(1uLL, *(a1 + 156), 0xA5F88C7DuLL);
    v6 = *(a1 + 156);
    v7 = *(a1 + 164) - v6;
    if ((dword_1000885E4 & 0x100) != 0)
    {
      printf("pwrite: offset=0x%llx size=0x%x\n", *(a1 + 164) - v6, v6);
      v6 = *(a1 + 156);
    }

    v8 = pwrite(*(a2 + 248), v5, v6, v7);
    free(v5);
    if (v8 == -1)
    {
      sub_100063B90();
    }

    v9 = *(a1 + 156);
    if (v8 != v9)
    {
      sub_100063B58(v8, v9);
    }
  }

  return 0;
}

uint64_t sub_10003F728(int a1, const char *a2, int a3, char *__str, size_t __size)
{
  if (__size < 0x40)
  {
    return 12;
  }

  snprintf(__str, __size, "%ss1s%u", a2, a3 + 1);
  return 0;
}

unint64_t sub_10003F7D0(uint32x4_t *a1, unint64_t a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  if ((a2 & 3) == 0)
  {
    for (i = a2 >> 2; i; v6 = v34 + HIDWORD(v34))
    {
      if (i >= 0x16A00)
      {
        v8 = 92672;
      }

      else
      {
        v8 = i;
      }

      i -= v8;
      v9 = veorq_s8(a4, a4);
      v10 = veorq_s8(a5, a5);
      v9.i64[0] = v5;
      v10.i64[0] = v6;
      if (v8 >= 16)
      {
        v11 = *a1;
        v12 = a1[1];
        v13 = a1[2];
        v14 = a1[3];
        a1 += 4;
        v15 = vshlq_n_s64(v9, 4uLL);
        v16 = vmull_u32(*v12.i8, 0xB0000000CLL);
        v17 = vmull_u32(*v13.i8, 0x700000008);
        v18 = vmlal_u32(vmlal_u32(v10, *v11.i8, 0xF00000010), *v14.i8, 0x300000004);
        v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v9, v11), v12), v13);
        v20 = v8 < 32;
        for (v8 -= 32; !v20; v8 -= 16)
        {
          v21 = vmlal_high_u32(v16, v11, *qword_10003F790);
          v22 = *a1;
          a1 += 4;
          v11 = v22;
          v23 = vmlal_high_u32(v17, v12, *&qword_10003F790[2]);
          v12 = a1[-3];
          v24 = vpadalq_u32(v19, v14);
          v25 = vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_10003F790[4]);
          v13 = a1[-2];
          v26 = vmlal_high_u32(v21, v14, *&qword_10003F790[6]);
          v14 = a1[-1];
          v15 = vshlq_n_s64(v24, 4uLL);
          v16 = vmlal_u32(v26, *v12.i8, 0xB0000000CLL);
          v17 = vmlal_u32(v23, *v13.i8, 0x700000008);
          v18 = vmlal_u32(vmlal_u32(v25, *v22.i8, 0xF00000010), *v14.i8, 0x300000004);
          v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v24, v22), v12), v13);
          v20 = v8 < 16;
        }

        v9 = vpadalq_u32(v19, v14);
        v10 = vaddq_s64(vaddq_s64(vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_10003F790[4]), vmlal_high_u32(v17, v12, *&qword_10003F790[2])), vmlal_high_u32(vmlal_high_u32(v16, v11, *qword_10003F790), v14, *&qword_10003F790[6]));
      }

      if ((v8 & 8) != 0)
      {
        v27 = *a1;
        a1 += 2;
        v28 = a1[-1];
        v29 = vshlq_n_s64(v9, 3uLL);
        v9 = vpadalq_u32(vpadalq_u32(v9, v27), v28);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_high_u32(vmlal_u32(vmlal_u32(v10, *v27.i8, 0x700000008), *v28.i8, 0x300000004), v27, *&qword_10003F790[4]), v28, *&qword_10003F790[6]), v29);
      }

      if ((v8 & 4) != 0)
      {
        v30 = *a1++;
        v31 = vshlq_n_s64(v9, 2uLL);
        v9 = vpadalq_u32(v9, v30);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_u32(v10, *v30.i8, 0x300000004), v30, *&qword_10003F790[6]), v31);
      }

      v32 = v8 & 3;
      a4 = vpaddq_s64(v9, v9);
      a5 = vpaddq_s64(v10, v10);
      v33 = a4.i64[0];
      v34 = a5.i64[0];
      if (v32)
      {
        do
        {
          v35 = a1->i32[0];
          a1 = (a1 + 4);
          v33 += v35;
          v34 += v33;
          v20 = v32-- <= 1;
        }

        while (!v20);
      }

      v5 = v33 + HIDWORD(v33);
    }
  }

  v36 = v5 + HIDWORD(v5);
  v37 = v6 + HIDWORD(v6);
  if (v36 == 0xFFFFFFFF)
  {
    v36 = 0;
  }

  if (v37 == 0xFFFFFFFF)
  {
    v37 = 0;
  }

  return v36 + (v37 << 32);
}

void *sub_10003F978(size_t size, uint64_t a2)
{
  if (size == 0x2000)
  {
    v2 = qword_100088340;
    goto LABEL_5;
  }

  v2 = size;
  if (size == 4096)
  {
    v2 = *(&unk_100088320 + ((a2 << 63 >> 63) & 0x78) + 8);
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
    atomic_fetch_add_explicit(&qword_100088648, v2, memory_order_relaxed);
  }

  return result;
}

void *sub_10003FA04(unsigned int a1)
{
  v1 = *(&unk_100088320 + 3 * a1 + 1);
  result = malloc_type_calloc(1uLL, v1, 0xCD2DD0FDuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100088648, v1, memory_order_relaxed);
  }

  return result;
}

void *sub_10003FA58(size_t a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_calloc(a1, a2, a3);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100088648, a2 * a1, memory_order_relaxed);
  }

  return result;
}

void sub_10003FA94(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x2000)
  {
    if (!a1)
    {
      return;
    }

    v4 = &qword_100088340;
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

    v4 = (&unk_100088320 + ((a3 << 63 >> 63) & 0x78) + 8);
  }

  v3 = *v4;
LABEL_9:
  free(a1);
  atomic_fetch_add_explicit(&qword_100088648, -v3, memory_order_relaxed);
}

void sub_10003FB10(void *a1, unsigned int a2)
{
  if (a1)
  {
    v2 = *(&unk_100088320 + 3 * a2 + 1);
    free(a1);
    atomic_fetch_add_explicit(&qword_100088648, -v2, memory_order_relaxed);
  }
}

void sub_10003FB5C(void *a1, uint64_t a2)
{
  if (a1)
  {
    free(a1);
    atomic_fetch_add_explicit(&qword_100088648, -a2, memory_order_relaxed);
  }
}

void *sub_10003FB98(size_t a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100088648, a1, memory_order_relaxed);
  }

  return result;
}

void *sub_10003FBCC(void *a1, uint64_t a2, size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_realloc(a1, size, type_id);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100088648, size - a2, memory_order_relaxed);
  }

  return result;
}

void *sub_10003FC10(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x7012DB5EuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_100088648, a2 * a1, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10003FC54(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 635);
  }

  else
  {
    v1 = byte_100088650 & 1;
  }

  return v1 & 1;
}

uint64_t sub_10003FC74(unsigned int a1, unint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_10003FFB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(a1 + 56) = xmmword_100081390;
  v4 = *(a3 + 32);
  *(a1 + 88) = 1024;
  *(a1 + 96) = v4;
  uuid_copy((a1 + 72), (a3 + 64));
  return 0;
}

uint64_t sub_10004001C(uint64_t a1, unsigned int *a2)
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
  sub_10003E3BC((a1 + 672));
  sub_10003E3BC((a1 + 864));
  *(a1 + 928) = 0;
  sub_10003E3BC((a1 + 1120));
  sub_10003E3BC((a1 + 752));
  *(a1 + 828) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  sub_10003E3BC((a1 + 504));
  sub_10003E3D4((a1 + 568));
  return 0;
}

uint64_t sub_100040140(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2 && !*(*a1 + 940))
  {
    sub_100046D50(v2);
  }

  j__pthread_mutex_destroy((a1 + 864));
  j__pthread_mutex_destroy((a1 + 672));
  j__pthread_mutex_destroy((a1 + 1120));
  j__pthread_mutex_destroy((a1 + 752));
  j__pthread_mutex_destroy((a1 + 504));
  sub_10003E3DC((a1 + 568));
  return 0;
}

uint64_t sub_1000401AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v6 = sub_100054E54(a1, &v46);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 400);
    if (!v8 || !*(v8 + 76))
    {
      LODWORD(v9) = 739;
      sub_10003E5FC("%s:%d: %s failed to get spaceman oid %lld for checkpoint %s traverse: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v7 = sub_100056644(a1, a2, v46, a3);
  sub_100046D50(v46);
  if (v7)
  {
    v10 = *(a1 + 400);
    if (!v10 || !*(v10 + 76))
    {
      LODWORD(v9) = 746;
      sub_10003E5FC("%s:%d: %s spaceman checkpoint %s traverse failed: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v13 = *(a1 + 376);
  v14 = *(v13 + 160);
  if (v14 && !*(a1 + 744))
  {
    v17 = sub_100049EE0(*(a1 + 392), 0x40000000uLL, v14, &xmmword_100081418, 0, 0, 0, 0, &v44);
    if (v17)
    {
      v7 = v17;
      v18 = *(a1 + 400);
      if (!v18 || !*(v18 + 76))
      {
        LODWORD(v9) = 756;
        sub_10003E5FC("%s:%d: %s failed to get omap for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = sub_10004EFF0(a1, a2, v44, a3);
    sub_100046D50(v44);
    if (v7)
    {
      v20 = *(a1 + 400);
      if (!v20 || !*(v20 + 76))
      {
        LODWORD(v9) = 762;
        sub_10003E5FC("%s:%d: %s omap checkpoint %s traverse failed: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v13 = *(a1 + 376);
  }

  if (*(v13 + 168))
  {
    v15 = sub_100040874(a1, &v45);
    if (v15)
    {
      v7 = v15;
      v16 = *(a1 + 400);
      if (!v16 || !*(v16 + 76))
      {
        LODWORD(v9) = 775;
        sub_10003E5FC("%s:%d: %s failed to get reaper for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = sub_1000408F8(a1, a2, v45, a3);
    sub_100046D50(v45);
    if (v7)
    {
      v19 = *(a1 + 400);
      if (!v19 || !*(v19 + 76))
      {
        LODWORD(v9) = 782;
        sub_10003E5FC("%s:%d: %s nx reaper checkpoint %s traverse failed: %d\n");
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
        v23 = sub_100049EE0(*(a1 + 392), 0, v22, &xmmword_1000810F0, 0, 0, 0, 0, &v43);
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
          sub_10003E5FC(v28, "nx_checkpoint_traverse", v9, v34, v35, v36, v37, v38, v39);
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

        v7 = sub_100018C74(a1, a2, v43, a3);
        sub_100046D50(v43);
        if (v7)
        {
          v31 = *(a1 + 400);
          if (!v31 || !*(v31 + 76))
          {
            LODWORD(v9) = 802;
            sub_10003E5FC("%s:%d: %s fs[%d] checkpoint %s traverse failed: %d\n");
            goto LABEL_9;
          }

          return v7;
        }

        v13 = *(a1 + 376);
      }
    }
  }

  if (!*(v13 + 1344) || !sub_10004805C(*(v13 + 176)))
  {
    return 0;
  }

  v42[0] = 0;
  v42[1] = 0;
  v41 = 0;
  v40 = 0;
  v24 = sub_100048B64(*(*(a1 + 376) + 176), &v40, v42);
  HIDWORD(v42[0]) = 255;
  if (v24 || (v24 = sub_100049EE0(*(a1 + 392), v40, *(*(a1 + 376) + 1344), v42, 0, 0, 0, 0, &v41), v24))
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
    v7 = sub_10004C9EC(a1, a2, v41, a3);
    sub_100046D50(v41);
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
        sub_10003E5FC("%s:%d: %s failed to checkpoint %s traverse test object 0x%llx of type 0x%x/0x%x: %d\n", "nx_checkpoint_traverse", 829, (*(a1 + 384) + 212), v33, *(*(a1 + 376) + 1344), *(*(a1 + 376) + 176), 255, v7);
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

uint64_t sub_100040874(void *a1, uint64_t *a2)
{
  v3 = a1[53];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = sub_100049EE0(a1[49], 0x80000000, *(a1[47] + 168), &xmmword_1000813E0, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[53] = *a2;
LABEL_2:
    sub_10004C19C(v3);
    return 0;
  }

  return result;
}

uint64_t sub_1000408F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 376);
  v36 = 0;
  if (a4 == 2)
  {
    v7 = sub_10004C960(a3);
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
    v7 = sub_10004C8EC(a3);
    goto LABEL_5;
  }

LABEL_6:
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  if (*(v6 + 88) && sub_10004805C(*(v6 + 72)))
  {
    v8 = 0;
    if ((*(v6 + 104) & 0x10) == 0 && (*(v6 + 104) & 6) != 2)
    {
      v9 = sub_10004107C(a1, *(v6 + 72), *(v6 + 76), *(v6 + 80), *(v6 + 88), &v36, &v37);
      if (v9)
      {
        v8 = v9;
        v10 = a1[50];
        if (!v10 || !*(v10 + 76))
        {
          sub_10003E5FC("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1105, (a1[48] + 212), *(v6 + 88), v9);
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

        v8 = sub_10004C9EC(v32, a2, v37, a4);
        sub_100046D50(v37);
      }

      if (v36)
      {
        sub_100046D50(v36);
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
    v13 = sub_100049EE0(a1[49], 0x80000000uLL, v11, &xmmword_1000813F0, 0, 0, 0, 0, &v38);
    if (v13)
    {
      v8 = v13;
      v30 = a1[50];
      if (!v30 || !*(v30 + 76))
      {
        sub_10003E5FC("%s:%d: %s failed to get reap list object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1125, (a1[48] + 212), v11, v13);
      }

      return v8;
    }

    v14 = v38[47];
    v34 = v12;
    if (a4 == 2)
    {
      v15 = sub_10004C960(v38);
      goto LABEL_23;
    }

    if (a4 == 1)
    {
      v15 = sub_10004C8EC(v38);
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

          if (sub_10004805C(v21))
          {
            v23 = sub_10004107C(a1, *(v19 + 8), *(v19 + 12), *(v19 + 16), *(v19 + 24), &v36, &v37);
            if (v23)
            {
              v8 = v23;
              v24 = a1[50];
              if (!v24 || !*(v24 + 76))
              {
                sub_10003E5FC("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1185, (a1[48] + 212), *(v19 + 24), v23);
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

              v8 = sub_10004C9EC(v25, a2, v37, a4);
              sub_100046D50(v37);
            }

            if (v36)
            {
              sub_100046D50(v36);
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
      sub_10003E5FC("%s:%d: %s Invalid reap list entry nrl_entries[%d].nrle_next = %d\n", "nx_reaper_checkpoint_traverse", 1147, (a1[48] + 212), v16, v20);
    }

    sub_100046D50(v38);
    v8 = sub_1000048F4(a1);
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
          sub_10003E5FC("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n", "nx_reaper_checkpoint_traverse", 1201, (a1[48] + 212), v27);
        }

        v8 = sub_1000048F4(a1);
        v12 = 0;
      }

      else if (!v35 && v34 != 1)
      {
        v29 = a1[50];
        if (!v29 || !*(v29 + 76))
        {
          sub_10003E5AC("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n", "nx_reaper_checkpoint_traverse", 1206, (a1[48] + 212), *(v6 + 68), v34 - 1);
        }
      }
    }

    else
    {
      v12 = v34;
      v11 = v35;
    }

    sub_100046D50(v38);
  }

  while (!v8 && v11);
  return v8;
}