uint64_t sub_10000CE54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = a3;
  result = sub_100001850(a1, a2, a3, a4);
  if (result)
  {

    return sub_100039350(a1, a2, v5, a4);
  }

  return result;
}

void sub_10000CEC0(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, void *a8, unint64_t a9, char a10)
{
  if (a3)
  {
    v13 = a5;
    v14 = a4;
    if (!sub_100027D7C(a3, 7u, a4, a5, a6, a7, 0x10u, a8, 0x18u))
    {
      v17 = a8[1];
      if (v17)
      {
        if (v14)
        {
          if (v14 == 1 && v13 == 10 && !sub_10001F974(a2, v17, a9 / *(*(a1 + 8) + 36)))
          {
            sub_10001F568(a2, a8[1], (*a8 & 0xFFFFFFFFFFFFFFuLL) / *(*(a1 + 8) + 36), *a7 & 0xFFFFFFFFFFFFFFFLL, a10);
          }
        }

        else
        {
          sub_1000071C4(a7, a8);
          if (!v18)
          {
            sub_10001F974(a2, a8[1], (*a8 & 0xFFFFFFFFFFFFFFuLL) / *(*(a1 + 8) + 36));
          }
        }
      }
    }
  }

  else
  {

    sub_10002797C();
  }
}

uint64_t sub_10000CFF8(uint64_t a1, unint64_t a2)
{
  if (HIBYTE(a2))
  {
    sub_10004565C("file extent length %llu does not fit inside %u bits, refusing to repair\n", a2, 56);
    v2 = 92;
    sub_100049C40(0x37E, 92);
  }

  else
  {
    v2 = 0;
    *a1 = a2 | (*(a1 + 7) << 56);
  }

  return v2;
}

uint64_t sub_10000D060(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (result)
    {
      v7 = (result + 48 + 48 * v3);
      v8 = *v7;
      v9 = v7[3];
      if (v8 > v9)
      {
        v4 = v8 + v4 - v9;
      }
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  byte_100080C78 = 0;
  qword_100080C88 = v4;
  if (*(qword_10009BA60 + 54))
  {
    v10 = sub_10000D2AC;
  }

  else
  {
    v10 = nullsub_1;
  }

  if (*(qword_10009BA60 + 54))
  {
    v11 = j__FSKitCheckUpdate;
  }

  else
  {
    v11 = sub_10000D340;
  }

  v12 = nullsub_2;
  if (*(qword_10009BA60 + 54))
  {
    v12 = j__FSKitCheckDone;
  }

  qword_100080CA8 = v10;
  off_100080C98 = v11;
  off_100080CA0 = v12;
  if (a2)
  {
    return v10(a2, a3);
  }

  return result;
}

uint64_t sub_10000D154(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 88);
  }

  else
  {
    v2 = 0;
  }

  byte_100080C78 = 1;
  qword_100080C88 = v2;
  if (*(qword_10009BA60 + 54))
  {
    v3 = sub_10000D2AC;
  }

  else
  {
    v3 = nullsub_1;
  }

  if (*(qword_10009BA60 + 54))
  {
    v4 = j__FSKitCheckUpdate;
  }

  else
  {
    v4 = sub_10000D340;
  }

  v5 = nullsub_2;
  if (*(qword_10009BA60 + 54))
  {
    v5 = j__FSKitCheckDone;
  }

  qword_100080CA8 = v3;
  off_100080C98 = v4;
  off_100080CA0 = v5;
  if (a2)
  {
    return v3(a2, 1);
  }

  return result;
}

uint64_t sub_10000D218(uint64_t result, int a2)
{
  if (byte_100080C78 != 1 || a2 != 0)
  {
    v3 = qword_100080C80 + result;
    qword_100080C80 += result;
    if (qword_100080C88)
    {
      v4 = 100 * v3 / qword_100080C88;
      if (dword_100080C90 < v4 && v4 <= 100)
      {
        result = off_100080C98(v4);
        dword_100080C90 = v4;
      }
    }
  }

  return result;
}

uint64_t sub_10000D2AC(uint64_t *a1, uint64_t a2)
{
  v4 = *(qword_10009BA60 + 24);
  v5 = sub_10002DDB4(*qword_10009BA60);
  if (v4 == -1)
  {

    return _FSKitCheckContainerStart(v5, a1, a2);
  }

  else
  {
    v6 = *a1;

    return _FSKitCheckStart(v5, v6);
  }
}

uint64_t sub_10000D37C(uint64_t a1, char *a2, char *a3, int64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  v7 = 22;
  if (a2)
  {
    if (a3)
    {
      v9 = a4;
      if ((a4 & 0x8000000000000000) == 0)
      {
        if (a4)
        {
          v12 = a5;
          if (!a5)
          {
            panic("Can't read/write encrypted data to/from block 0!");
          }

          if (a1 && *(a1 + 72))
          {
            v39[1] = v39;
            __chkstk_darwin(a1);
            v40 = (v39 - v16);
            if (v17 >= 8)
            {
              memset(v40, 170, v15);
            }

            __rqtp = xmmword_100076D40;
            pthread_mutex_lock(&stru_100080CB0);
            v18 = dword_10007C044;
            if (!dword_10007C044)
            {
              v39[0] = v12;
              v19 = 200;
              v20 = 200;
              while (1)
              {
                pthread_mutex_unlock(&stru_100080CB0);
                nanosleep(&__rqtp, 0);
                if (!--v19)
                {
                  if (__rqtp.tv_nsec < 3126)
                  {
                    return 60;
                  }

                  __rqtp.tv_nsec *= 4;
                  v20 >>= 2;
                  v19 = v20;
                }

                pthread_mutex_lock(&stru_100080CB0);
                v18 = dword_10007C044;
                if (dword_10007C044)
                {
                  v21 = 1;
                }

                else
                {
                  v21 = v19 == 0;
                }

                if (v21)
                {
                  v12 = v39[0];
                  break;
                }
              }
            }

            dword_10007C044 = v18 - 1;
            pthread_mutex_unlock(&stru_100080CB0);
            if (a2 == a3)
            {
              v22 = sub_10002B43C(0x200uLL, 0x6FED1243uLL);
              if (!v22)
              {
                v7 = 12;
LABEL_57:
                sub_10002B400(v22, 512);
LABEL_58:
                pthread_mutex_lock(&stru_100080CB0);
                ++dword_10007C044;
                pthread_mutex_unlock(&stru_100080CB0);
                return v7;
              }
            }

            else
            {
              v22 = 0;
            }

            v41 = 0;
            v23 = *(a1 + 72);
            v24 = CCCryptorCreateWithMode(a7 ^ 1, 8u, 0, 0, 0, (v23 + 16), *(v23 + 6) >> 1, (v23 + 16 + (*(v23 + 6) >> 1)), *(v23 + 6) >> 1, 0, 0, &v41);
            if (v24)
            {
              sub_10002B374("%s:%d: CCCryptorCreateWithMode failed (E%d)\n", "userfs_data_cryptor", 153, v24);
              v7 = 13;
            }

            else
            {
              v25 = *(a1 + 72);
              bzero(v40, *(v25 + 6));
              if (v9 >= 512)
              {
                v27 = 0;
                v28 = *(v25 + 8);
                v39[0] = v12;
                if (v28)
                {
                  v29 = v28 * a6;
                }

                else
                {
                  v29 = v12;
                }

                v30 = a3;
                v31 = a2;
                while (1)
                {
                  *v40 = v29 >> 9;
                  v32 = v31;
                  if (a2 == a3)
                  {
                    memcpy(v22, v31, 0x200uLL);
                    v32 = v22;
                  }

                  v33 = a7 ? CCCryptorEncryptDataBlock() : CCCryptorDecryptDataBlock();
                  if (v33)
                  {
                    break;
                  }

                  v29 += 512;
                  v34 = v9 - 512;
                  v31 += 512;
                  v30 += 512;
                  v27 -= 512;
                  v22 = v32;
                  v35 = v9 <= 1023;
                  v9 -= 512;
                  if (v35)
                  {
                    v26 = -v27;
                    v22 = v32;
                    v9 = v34;
                    v12 = v39[0];
                    goto LABEL_45;
                  }
                }

                v37 = "Decryption";
                if (a7)
                {
                  v37 = "Encryption";
                }

                sub_10002B374("%s:%d: %s failed (E%d)\n", "userfs_data_cryptor", 179, v37, v33);
                v7 = 5;
              }

              else
              {
                v26 = 0;
LABEL_45:
                if (v9)
                {
                  v36 = "decrypt";
                  if (a7)
                  {
                    v36 = "encrypt";
                  }

                  sub_10002B324("%s:%d: Zero'ing excess data to %s: paddr %lld, completed %lld, remaining %zu\n", "userfs_data_cryptor", 189, v36, v12, v26, v9);
                  bzero(&a3[v26], v9);
                }

                v7 = 0;
                v32 = v22;
              }

              CCCryptorRelease(v41);
              v22 = v32;
            }

            if (a2 != a3)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

          return 13;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v7;
}

uint64_t sub_10000D7DC()
{
  v0 = qword_100080CF0;
  if (!qword_100080CF0)
  {
    v1 = sub_10004FD4C(&qword_100080CF0);
    if (v1 || (v0 = qword_100080CF0) == 0)
    {
      sub_10002B374("%s:%d: lib_get_file_vault_services failed (E%d)\n", "AKS_FV_service", 213, v1);
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10000D854(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 72);
  if (!a2)
  {
    v4 = a1 + 4;
  }

  v5 = *v4;
  v6 = (a2 + 104);
  v7 = (a2 + 112);
  if (!a2)
  {
    v7 = (a1 + 15);
    v6 = (a1 + 14);
  }

  v8 = *v6;
  v9 = *v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 32);
  if (v11 >= 0x40)
  {
    sub_100045744("omap (oid 0x%llx): invalid om_flags (0x%x)\n", *(v5 + 8), v11);
    sub_100049C40(0x16C, -3);
    v11 = *(v5 + 32);
  }

  if ((v11 & 1) != 0 && *(v5 + 36))
  {
    sub_10004565C("omap (oid 0x%llx): invalid om_snap_count (%u), given om_flags (0x%x)\n", v10, *(v5 + 36), v11);
    v12 = 92;
    v13 = 365;
LABEL_20:
    sub_100049C40(v13, 92);
    return v12;
  }

  v14 = *(v5 + 40);
  if (v14 >> 30 == 3 || *(v5 + 40) != 2)
  {
    sub_10004565C("omap (oid 0x%llx): invalid om_tree_type (0x%x)\n", v10, v14);
    v12 = 92;
    v13 = 366;
    goto LABEL_20;
  }

  v16 = *(v5 + 44);
  if (v16 >> 30 == 3 || *(v5 + 44) != 2)
  {
    sub_10004565C("omap (oid 0x%llx): invalid om_snapshot_tree_type (0x%x)\n", v10, v16);
    v12 = 92;
    v13 = 367;
    goto LABEL_20;
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  v19 = sub_10002CF5C(a1, a2, &v22);
  if (v19)
  {
    return v19;
  }

  v19 = sub_10003570C(v22, 0, sub_10000DADC, 0, 0, 1);
  if (v19)
  {
    return v19;
  }

  v20 = *(v5 + 32);
  if (v20)
  {
    if (*(v5 + 56))
    {
      sub_10004565C("omap (oid 0x%llx): invalid om_snapshot_tree_oid (0x%llx), given om_flags (0x%x)\n", v10, *(v5 + 56), v20);
      v12 = 92;
      v13 = 368;
      goto LABEL_20;
    }

    if (*(v5 + 64))
    {
      sub_10004565C("omap (oid 0x%llx): invalid om_most_recent_snap (0x%llx), given om_flags (0x%x)\n", v10, *(v5 + 64), v20);
      v12 = 92;
      v13 = 369;
      goto LABEL_20;
    }

    if (*(v5 + 72))
    {
      sub_10004565C("omap (oid 0x%llx): invalid om_pending_revert_min (0x%llx), given om_flags (0x%x)\n", v10, *(v5 + 72), v20);
      v12 = 92;
      v13 = 370;
      goto LABEL_20;
    }

    if (*(v5 + 80))
    {
      sub_10004565C("omap (oid 0x%llx): invalid om_pending_revert_max (0x%llx), given om_flags (0x%x)\n", v10, *(v5 + 80), v20);
      v12 = 92;
      v13 = 371;
      goto LABEL_20;
    }
  }

  if (a2)
  {
    v21 = *(*(a2 + 40) + 8);
  }

  else
  {
    v21 = 0;
  }

  sub_1000422DC(a1, v8, v9 / *(a1[1] + 36), v21, 0x40000000, v10, 0, 11, &_mh_execute_header, &_mh_execute_header >> 32);
  return 0;
}

uint64_t sub_10000DADC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = *(a1 + 8);
  v10 = a3[1];
  if (v10 > *(v9 + 16))
  {
    sub_10004565C("omap entry (oid 0x%llx): invalid ok_xid (0x%llx)\n", *a3, v10);
    v11 = 92;
    v12 = 359;
LABEL_20:
    sub_100049C40(v12, 92);
    return v11;
  }

  if (!a5)
  {
    return 0;
  }

  v17 = *(v9 + 36);
  v18 = *a5;
  if (*a5 >= 0x800)
  {
    sub_100045744("omap entry (oid 0x%llx): invalid ov_flags (0x%x)\n", *a3, v18);
    sub_100049C40(0x168, -3);
    v18 = *a5;
  }

  v19 = v18 >> 5;
  if (v19 >= 2)
  {
    sub_10004565C("omap entry (oid 0x%llx): invalid crypto key index (%u) given ov_flags (0x%x)\n", *a3, v18 >> 5, v18);
    v11 = 92;
    v12 = 1151;
    goto LABEL_20;
  }

  if (v19 != 1)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    if (!*(*(a2 + 40) + 1096))
    {
      v20 = "non-multikey volume";
      goto LABEL_13;
    }

LABEL_15:
    if (((v18 >> 8) & 7) >= 2)
    {
      sub_10004565C("omap entry (oid 0x%llx): invalid tweak type (%u) given ov_flags (0x%x)\n", *a3, (v18 >> 8) & 7, v18);
      v11 = 92;
      v12 = 1231;
      goto LABEL_20;
    }

    v21 = a5[1];
    if (!v21 || (v22 = v21 / v17, v21 % v17))
    {
      sub_10004565C("omap entry (oid 0x%llx): invalid ov_size (%u)\n", *a3, v21);
      v11 = 92;
      v12 = 361;
      goto LABEL_20;
    }

    if ((v18 & 1) == 0)
    {
      v23 = *(a5 + 1);
      v24 = *(*(a1 + 8) + 40);
      if (v24 - v22 < v23 || v24 <= v22 || v23 < 1 || v24 <= v23)
      {
        sub_10004565C("omap entry (oid 0x%llx): invalid ov_paddr (%llu)\n", *a3, v23);
        v11 = 92;
        v12 = 362;
        goto LABEL_20;
      }

      if ((v18 & 0xE0) == 0x20)
      {
        v28 = 36;
      }

      else
      {
        v28 = 14;
      }

      if (a2)
      {
        v29 = *(*(a2 + 40) + 8);
      }

      else
      {
        v29 = 0;
      }

      v30 = a2 == 0;
      v31 = a2 != 0;
      if (v30)
      {
        v32 = 13;
      }

      else
      {
        v32 = 3;
      }

      if (v30)
      {
        v28 = 0;
      }

      sub_1000422DC(a1, v23, v22, v29, 0, *a3, a3[1], v32, v28, 1u);
      v33 = sub_10001DC68(v31, *a3, 0);
      if (v33)
      {
        v34 = v33;
        sub_100045744("object (oid 0x%llx): Unable to mark omap entry for omap space verification \n", *a3);
        sub_100049C40(0x3D0, v34);
      }
    }

    return 0;
  }

  v20 = "container";
LABEL_13:
  sub_10004565C("omap entry (oid 0x%llx): invalid crypto key index (%u) on %s\n", *a3, 1, v20);
  v11 = 92;
  sub_100049C40(0x4B0, 92);
  if (sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) crypto key index? ", *a3))
  {
    *a5 &= 0xFFFFFF1F;
    *a8 = 1;
    v18 = *a5;
    goto LABEL_15;
  }

  return v11;
}

uint64_t sub_10000DDA4(uint64_t *a1, void *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a2[9];
  v9 = a2[13];
  v10 = a2[14];
  v11 = a2[15];
  v23 = 0;
  if (!*(v8 + 56))
  {
    v14 = 0;
    goto LABEL_5;
  }

  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v12 = sub_10002D04C(a1, a2, v22);
  if (v12)
  {
    return v12;
  }

  if (*(qword_10009BA60 + 46))
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_10000DFC0;
  }

  v13 = sub_10003570C(v22[0], 0, v18, a3, &v23, 1);
  if (!v13)
  {
    v14 = v23;
    if (HIDWORD(v23))
    {
      sub_10004565C("om: invalid om_snap_count (overflow)\n");
      v13 = 92;
      v19 = 375;
LABEL_28:
      v20 = 92;
      goto LABEL_29;
    }

LABEL_5:
    v15 = *(v8 + 36);
    v16 = v14;
    if (v14 != v15)
    {
      sub_10004565C("om: om_snap_count (%u) is not equal to the number of snapshots found (%llu)\n", *(v8 + 36), v14);
      if (!sub_10004758C(qword_10009BA58, "Fix om_snap_count (oid 0x%llx)? ", *(v8 + 8)))
      {
        v13 = 92;
        v19 = 376;
        goto LABEL_28;
      }

      v16 = v23;
      *(v8 + 36) = v23;
    }

    if (v16)
    {
      v17 = *(a3 + 64);
    }

    else
    {
      v17 = 0;
    }

    if ((*(qword_10009BA60 + 46) & 1) != 0 || *(v8 + 64) == v17)
    {
      if (v14 == v15)
      {
        return 0;
      }
    }

    else
    {
      sub_10004565C("om: om_most_recent_snap (%llu) is not equal to the largest snapshot xid (%llu)\n", *(v8 + 64), v17);
      if (!sub_10004758C(qword_10009BA58, "Fix om_most_recent_snap (oid 0x%llx)? ", *(v8 + 8)))
      {
        v13 = 92;
        v19 = 671;
        goto LABEL_28;
      }

      *(v8 + 64) = v17;
    }

    v22[0] = v9;
    v22[1] = v10;
    v22[2] = v11;
    v13 = sub_100026A10(a1, a2, v8, v22, a4, a5);
    if (!v13)
    {
      sub_100049BF0();
      return v13;
    }

    v19 = 377;
    v20 = v13;
LABEL_29:
    sub_100049C40(v19, v20);
  }

  return v13;
}

uint64_t sub_10000DFC0(uint64_t *a1, int8x16_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a2[2].i64[1];
  v14 = *(v13 + 1000);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v98[2] = v15;
  v98[3] = v15;
  v98[0] = v15;
  v98[1] = v15;
  v96 = 3808;
  v97 = 832;
  v16 = *a5;
  v17 = *a3;
  *(a7 + 64) = *a3;
  a2[3].i64[1] = v17;
  if (v16)
  {
    sub_100047FFC(qword_10009BA58, 215, a3, a4, a5, a6, a7, a8);
  }

  else if ((v16 & 2) == 0)
  {
    v18 = *a3;
    v19 = v16;
    if (*a3 > *(a1[1] + 16))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_10001DC28(1);
  v18 = *a3;
  if (*a3 > *(a1[1] + 16))
  {
    if (v16)
    {
LABEL_10:
      sub_10004565C("omap snapshot: invalid key (0x%llx)\n", v18);
      v22 = 92;
      sub_100049C40(0x174, 92);
LABEL_50:
      v53 = 0;
LABEL_51:
      v57 = a2->i8[14] & (v16 | v53);
      goto LABEL_52;
    }

    v13 = a2[2].i64[1];
LABEL_9:
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v113 + 15) = v20;
    v113[0] = v20;
    v112 = v20;
    v111 = v20;
    v110 = v20;
    v109 = v20;
    v108 = v20;
    v107 = v20;
    v106 = v20;
    v105 = v20;
    v104 = v20;
    v103 = v20;
    *&v102[49] = v20;
    *&v102[33] = v20;
    *&v102[17] = v20;
    *&v102[1] = v20;
    v21 = *(a7 + 32) + 1;
    *(a7 + 32) = v21;
    v102[0] = 0;
    sub_100047FFC(qword_10009BA58, 214, a3, a4, a5, a6, a7, a8, v21, *(v13 + 216), v102, v18);
    v18 = *a3;
    goto LABEL_10;
  }

  v19 = *a5;
LABEL_12:
  if (v19 >= 4)
  {
    sub_100045744("omap snapshot: invalid oms_flags (0x%x)\n", v19);
    sub_100049C40(0x175, -3);
  }

  if (*(a5 + 4))
  {
    sub_100045744("omap snapshot: invalid oms_pad (0x%x)\n", *(a5 + 4));
    sub_100049C40(0x176, -10);
  }

  if (*(a5 + 8))
  {
    sub_100045744("omap snapshot: oms_oid should be unused but has value (0x%llx)\n", *(a5 + 8));
    sub_100049C40(0x312, -2);
  }

  if (v16)
  {
    v22 = 0;
    goto LABEL_50;
  }

  v23 = a2[2].i64[1];
  if (v14 && ((*(v23 + 264) & 1) != 0 && !*(v23 + 976) || a2[1].i64[1]))
  {
    v24 = *a3;
    v101 = 0;
    memset(v102, 170, 24);
    v25 = sub_100025548(a1, a2, 0, v14, v24, 0, 29, 0, &v101, v102, 0);
    if (v25)
    {
      v22 = v25;
      if (v25 != 2)
      {
LABEL_34:
        if (v101)
        {
          free(v101);
        }

        if (v22)
        {
          goto LABEL_50;
        }

        v23 = a2[2].i64[1];
        goto LABEL_38;
      }

      sub_100045614("snap_meta_ext: object (oid 0x%llx): no record for snapshot (xid 0x%llx)\n", v14, v24);
    }

    else
    {
      v26 = v101;
      v27 = *(v101 + 8);
      if (v27 < 2)
      {
        if (v27)
        {
          v28 = *(v101 + 5);
          if (v28 == v24 || (sub_100045744("snap_meta_ext: (0x%llx:0x%llx): invalid xid (0x%llx)\n", v14, v24, v28), sub_100049C40(0x35F, 92), !sub_10004758C(qword_10009BA58, "Fix sme_snap_xid (xid 0x%llx)? ", *(v26 + 5))))
          {
            v22 = 0;
          }

          else
          {
            *(v26 + 5) = v24;
            v22 = 1;
          }

          v78 = *(v26 + 9);
          if (v78)
          {
            sub_100045744("snap_meta_ext: (0x%llx:0x%llx): unknown flags (%u)\n", v14, v24, v78);
            sub_100049C40(0x360, -3);
          }

          if (uuid_is_null(v26 + 48))
          {
            sub_100045744("snap_meta_ext: (0x%llx:0x%llx): sme_uuid is NULL\n", v14, v24);
            sub_100049C40(0x361, 92);
          }

          if (v22)
          {
            v99 = *v102;
            v100 = *&v102[16];
            v22 = sub_100026A10(a1, a2, v101, &v99, *v102, v79);
            if (v22)
            {
              sub_100049C40(0x362, v22);
            }

            else
            {
              sub_100049BF0();
            }
          }

          goto LABEL_34;
        }
      }

      else
      {
        sub_100045744("snap_meta_ext: (0x%llx:0x%llx): unknown version (%u)\n", v14, v24, v27);
        sub_100049C40(0x35E, -6);
      }
    }

    v22 = 0;
    goto LABEL_34;
  }

LABEL_38:
  v29 = sub_100039748(v98, a1, a2, *(v23 + 124) & 0xC0000000, *(v23 + 124), 16, 0, *(a1[1] + 36), 0, 0, 0, *(v23 + 152), sub_10003F384);
  v30 = malloc_type_calloc(1uLL, 0x340uLL, 0xAF9E5F5EuLL);
  v31 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x3A80B5D4uLL);
  v38 = v31;
  v39 = *a3;
  if (v29 || !v30 || !v31)
  {
    *&v54 = 0xAAAAAAAAAAAAAAAALL;
    *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v113 + 15) = v54;
    v113[0] = v54;
    v112 = v54;
    v111 = v54;
    v110 = v54;
    v109 = v54;
    v108 = v54;
    v107 = v54;
    v106 = v54;
    v105 = v54;
    v104 = v54;
    v103 = v54;
    *&v102[49] = v54;
    *&v102[33] = v54;
    *&v102[17] = v54;
    *&v102[1] = v54;
    v55 = *(a7 + 32) + 1;
    *(a7 + 32) = v55;
    v102[0] = 0;
    sub_100047FFC(qword_10009BA58, 214, v32, v33, v34, v35, v36, v37, v55, *(a2[2].i64[1] + 216), v102, v39);
    if (v29)
    {
      v22 = v29;
    }

    else
    {
      v22 = 12;
    }

    v56 = strerror(v22);
    sub_10004565C("unable to init snap_meta tree for extentref_tree_oid lookup: %s\n", v56);
    sub_100049C40(0x2B0, v22);
    if (v38)
    {
      free(v38);
    }

    if (v30)
    {
      free(v30);
    }

    goto LABEL_50;
  }

  *v30 = v39 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v40 = sub_1000397B8(v98, 0, 0, v30, &v97, 832, v31, &v96);
  v47 = *a3;
  if (v40)
  {
    v22 = v40;
    *&v48 = 0xAAAAAAAAAAAAAAAALL;
    *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v113 + 15) = v48;
    v113[0] = v48;
    v112 = v48;
    v111 = v48;
    v110 = v48;
    v109 = v48;
    v108 = v48;
    v107 = v48;
    v106 = v48;
    v105 = v48;
    v104 = v48;
    v103 = v48;
    *&v102[49] = v48;
    *&v102[33] = v48;
    *&v102[17] = v48;
    *&v102[1] = v48;
    v49 = *(a7 + 32) + 1;
    *(a7 + 32) = v49;
    v102[0] = 0;
    sub_100047FFC(qword_10009BA58, 214, v41, v42, v43, v44, v45, v46, v49, *(a2[2].i64[1] + 216), v102, v47);
    v50 = *a3;
    v51 = strerror(v22);
    sub_10004565C("Could not lookup cached extent_ref_tree information at snap xid (0x%llx): %s\n", v50, v51);
    sub_100049C40(0x2B7, 92);
    v52 = 0;
    v53 = 0;
    goto LABEL_104;
  }

  v94 = v30;
  *&v59 = 0xAAAAAAAAAAAAAAAALL;
  *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v113 + 15) = v59;
  v113[0] = v59;
  v112 = v59;
  v111 = v59;
  v110 = v59;
  v109 = v59;
  v108 = v59;
  v107 = v59;
  v106 = v59;
  v105 = v59;
  v104 = v59;
  v103 = v59;
  *&v102[49] = v59;
  *&v102[33] = v59;
  *&v102[17] = v59;
  *&v102[1] = v59;
  ++*(a7 + 32);
  v102[0] = 0;
  __strlcpy_chk();
  sub_100047FFC(qword_10009BA58, 214, v60, v61, v62, v63, v64, v65, *(a7 + 32), *(a2[2].i64[1] + 216), v102, v47);
  v93 = *(v38 + 10);
  v67 = *v38;
  v66 = v38[1];
  v95 = v38;
  v53 = *v38 == 0;
  v68 = a2 + 3;
  v69 = sub_100025548(a1, 0, 0x40000000, v66, 0, 0, 13, 0, &a2[3], 0, 0);
  if (v69)
  {
    v22 = v69;
    v52 = 0;
LABEL_57:
    v30 = v94;
    v38 = v95;
    goto LABEL_104;
  }

  v92 = v67;
  v70 = v68->i64[0];
  v71 = v68->i64[0];
  v72 = a2 + 3;
  if (!v68->i64[0])
  {
    v71 = a2[2].i64[1];
  }

  v30 = v94;
  v38 = v95;
  if ((*(v71 + 56) & 0x20) != 0)
  {
    if (*(v70 + 1024))
    {
      v80 = sub_10004BD04(a1, a2, *a3);
      v72 = a2 + 3;
      v38 = v95;
      if (!v80)
      {
        goto LABEL_61;
      }

      v22 = v80;
    }

    else
    {
      sub_10004565C("Snapshot (0x%llx): apfs_integrity_meta_oid is invalid\n", *a3);
      v22 = 92;
      sub_100049C40(0x387, 92);
    }

    v52 = 0;
    goto LABEL_104;
  }

LABEL_61:
  v90 = v72;
  v91 = sub_100004AE0(v38 + 50, *(v38 + 24));
  if (v92 && !v91)
  {
    if (a2->i8[9])
    {
      goto LABEL_67;
    }

    v73 = *v90;
    if (!*v90)
    {
      v73 = a2[2].i64[1];
    }

    if ((*(v73 + 56) & 0x20) != 0)
    {
LABEL_67:
      sub_10001F400(a2->i8);
    }
  }

  v74 = a2[3].i64[0];
  if (a2->i8[9] == 1)
  {
    *&v75 = 0xAAAAAAAAAAAAAAAALL;
    *(&v75 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v102[32] = v75;
    *&v102[48] = v75;
    *v102 = v75;
    *&v102[16] = v75;
    sub_10000EAF8(v102, a1, a2, *(a2[2].i64[1] + 116), 14, *(v74 + 136));
    sub_10001476C(v102, *a3);
    sub_100005298(a1, a2, *a3);
    v76 = sub_1000059E8(a1, a2, *a3);
    if (v76 || (v76 = sub_100038C78(a1, a2, *a3, a7), v76) || (v76 = sub_10003570C(v102, *a3, sub_10000F144, a7, 0, 0), v76) || *(a2[2].i64[1] + 1096) && ((v76 = sub_100014830(a1, a2, 0), v76) || (sub_10000EAF8(v102, a1, a2, *(a2[2].i64[1] + 1104), 36, *(a2[3].i64[0] + 1096)), v76 = sub_10003570C(v102, *a3, sub_10000F144, a7, 0, 0), v76)) || (v76 = sub_10002E53C(a1, a2), v76))
    {
LABEL_102:
      v22 = v76;
      goto LABEL_103;
    }

    v77 = sub_100014884(a1, a2, *a3, 0);
    if (v77 || (v77 = sub_10000583C(a1, a2, *a3), v77))
    {
      v22 = v77;
      v52 = v91;
      goto LABEL_57;
    }

    v74 = *v90;
    v30 = v94;
    v38 = v95;
  }

  v81 = v74;
  v82 = v93;
  if (!v74)
  {
    v81 = a2[2].i64[1];
  }

  if ((*(v81 + 56) & 0x20) != 0)
  {
    *&v83 = 0xAAAAAAAAAAAAAAAALL;
    *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v102[32] = v83;
    *&v102[48] = v83;
    *v102 = v83;
    *&v102[16] = v83;
    sub_10000EB8C(v102, a1, a2, *(a2[2].i64[1] + 1040), *(v74 + 1032));
    v76 = sub_10003570C(v102, 0, sub_100014238, a7, 0, 1);
    v82 = v93;
    if (v76)
    {
      goto LABEL_102;
    }
  }

  if (!v92 || (*&v84 = 0xAAAAAAAAAAAAAAAALL, *(&v84 + 1) = 0xAAAAAAAAAAAAAAAALL, *&v102[32] = v84, *&v102[48] = v84, *v102 = v84, *&v102[16] = v84, sub_10000EBE4(v102, a1, a2, v82, v92), v85 = sub_10003570C(v102, 0, sub_10000F144, a7, 0, 1), !v85))
  {
    v76 = sub_10002045C(a2, *a3);
    if (!v76)
    {
      v86 = a2[2].i64[1];
      if ((*(v86 + 56) & 0x40) != 0)
      {
        *&v87 = 0xAAAAAAAAAAAAAAAALL;
        *(&v87 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v102[32] = v87;
        *&v102[48] = v87;
        *v102 = v87;
        *&v102[16] = v87;
        sub_10000EC38(v102, a1, a2, *(v86 + 1044), *(a2[3].i64[0] + 1048));
        v88 = sub_10003570C(v102, 0, sub_100034204, a7, 0, 1);
        v89 = sub_1000340B4(a1, a2, 0);
        if (v88)
        {
          v22 = v88;
        }

        else
        {
          v22 = v89;
        }
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v22 = v85;
  v53 = 0;
LABEL_103:
  v52 = v91;
LABEL_104:
  free(v38);
  free(v30);
  if (!v52)
  {
    goto LABEL_51;
  }

  v57 = 1;
LABEL_52:
  sub_10002CAEC(a2, v57 & 1);
  if (v22 == 92)
  {
    sub_10001DC28(1);
    sub_1000147E8(a2);
    sub_1000053DC();
    v22 = 0;
    a2->i8[11] = 1;
    a2->i8[13] = 1;
  }

  return v22;
}

uint64_t sub_10000EAF8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 48);
  v7 = v6;
  if (!v6)
  {
    v7 = *(a3 + 40);
  }

  if ((*(v7 + 56) & 0x20) != 0)
  {
    v8 = *(a3 + 16);
  }

  else
  {
    v8 = 0;
  }

  if (!v6)
  {
    v6 = *(a3 + 40);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a3 + 20);
  }

  else
  {
    v9 = 0;
  }

  return sub_100039748(a1, a2, a3, a4 & 0xC0000000, a4, a5, v8, *(*(a2 + 8) + 36), 0, 0, v9, a6, sub_10003F384);
}

uint64_t sub_10000EC94()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return sub_10000ECCC(&v1.tv_sec);
}

uint64_t sub_10000ECCC(uint64_t *a1)
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

uint64_t sub_10000EDD8(uint64_t a1, uint64_t *a2, int a3, unint64_t *a4, int a5, int a6, _DWORD *a7)
{
  *a7 = 0;
  if ((a3 - 267) <= 0xFFFFFEFE)
  {
    if (a6)
    {
      v10 = sub_10003EDFC(*a2 >> 60);
      sub_10004565C("%s (id %llu): invalid key length (%u)\n", v10, *a2 & 0xFFFFFFFFFFFFFFFLL, a3);
      v11 = 330;
LABEL_37:
      v27 = 92;
      sub_100049C40(v11, 92);
      return v27;
    }

    return 92;
  }

  v12 = *a2;
  if ((~*a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    if (a6)
    {
      v28 = sub_10003EDFC(v12 >> 60);
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v28, *a2 & 0xFFFFFFFFFFFFFFFLL);
      v11 = 331;
      goto LABEL_37;
    }

    return 92;
  }

  v17 = *(a2 + 4);
  if (v17 + 10 != a3 && a6 != 0)
  {
    v19 = sub_10003EDFC(v12 >> 60);
    sub_100045744("%s (id %llu): invalid name_len (%u), given key length (%u)\n", v19, *a2 & 0xFFFFFFFFFFFFFFFLL, *(a2 + 4), a3);
    sub_100049C40(0x14D, -9);
    *a7 |= 2u;
    v17 = *(a2 + 4);
  }

  if ((v17 - 257) <= 0xFF00u && a6 != 0)
  {
    v21 = sub_10003EDFC(*a2 >> 60);
    sub_100045744("%s (id %llu): invalid name_len (%u)\n", v21, *a2 & 0xFFFFFFFFFFFFFFFLL, *(a2 + 4));
    *a7 |= 2u;
    sub_100049C40(0x14C, -9);
    v17 = *(a2 + 4);
  }

  if (*(a2 + v17 + 9))
  {
    v22 = a6 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = sub_10003EDFC(*a2 >> 60);
    sub_10004565C("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v23, *a2 & 0xFFFFFFFFFFFFFFFLL, *(a2 + 4), a2 + 10, *(a2 + 4));
    *a7 |= 1u;
    sub_100049C40(0x14E, -9);
    v17 = *(a2 + 4);
  }

  if (sub_10000F0D0(a2 + 10, v17) && a6)
  {
    v24 = sub_10003EDFC(*a2 >> 60);
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v24, *a2 & 0xFFFFFFFFFFFFFFFLL, *(a2 + 4), a2 + 10);
    *a7 |= 1u;
    sub_100049C40(0x14F, -9);
  }

  if (a5 != 8)
  {
    if (a6)
    {
      v29 = sub_10003EDFC(*a2 >> 60);
      sub_10004565C("%s (id %llu): invalid value length (%u)\n", v29, *a2 & 0xFFFFFFFFFFFFFFFLL, a5);
      v11 = 336;
      goto LABEL_37;
    }

    return 92;
  }

  v25 = *a4;
  if (!*a4)
  {
    if (!a6)
    {
      return 92;
    }

LABEL_36:
    v30 = sub_10003EDFC(*a2 >> 60);
    sub_10004565C("%s (id %llu): invalid snap_xid (%llu)\n", v30, *a2 & 0xFFFFFFFFFFFFFFFLL, *a4);
    v11 = 337;
    goto LABEL_37;
  }

  v26 = *(*(a1 + 40) + 16);
  if (v25 <= v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = 92;
  }

  if (v25 > v26 && (a6 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v27;
}

uint64_t sub_10000F0D0(UInt8 *bytes, CFIndex numBytes)
{
  v2 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, numBytes, 0x8000100u, 0, kCFAllocatorNull);
  if (v2)
  {
    CFRelease(v2);
    return 0;
  }

  else
  {
    v3 = 92;
    sub_100049C40(0xB7, 92);
  }

  return v3;
}

uint64_t sub_10000F320(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v8 = a6;
  v10 = a4;
  v13 = *a3;
  if (a4 != 8)
  {
    v16 = sub_10003EDFC(v13 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL, v10);
    v15 = 313;
    goto LABEL_6;
  }

  if ((v13 & 0xFFFFFFFFFFFFFFFLL) == 0 || (v13 & 0xFFFFFFFFFFFFFFFLL) > *(*(a2 + 40) + 16))
  {
    v14 = sub_10003EDFC(v13 >> 60);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v14, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v15 = 314;
    goto LABEL_6;
  }

  if ((a6 - 307) <= 0xFFFFFEFE)
  {
    v19 = sub_10003EDFC(v13 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL, v8);
    v15 = 315;
    goto LABEL_6;
  }

  if (!*(a5 + 8))
  {
    v22 = sub_10003EDFC(v13 >> 60);
    sub_10004565C("%s (id %llu): invalid sblock_oid (%llu)\n", v22, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 8));
    v15 = 317;
    goto LABEL_6;
  }

  v20 = *(a5 + 32);
  if (v20 <= 1)
  {
    v21 = sub_10003EDFC(v13 >> 60);
    sub_10004565C("%s (id %llu): invalid inum (%llu)\n", v21, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 32));
    v15 = 320;
    goto LABEL_6;
  }

  if (v20 <= 0xF && (v20 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v26 = sub_10003EDFC(v13 >> 60);
    sub_100045744("%s (id %llu): invalid inum (%llu)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 32));
    sub_100049C40(0x141, -2);
    v20 = *(a5 + 32);
  }

  if (*(a7 + 40) < v20 + 1)
  {
    *(a7 + 40) = v20 + 1;
  }

  if (!*(a5 + 40))
  {
    v30 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid extentref_tree_type (0x%x)\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 40));
    v15 = 322;
    goto LABEL_6;
  }

  if (*(a5 + 44) >= 4u)
  {
    v27 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 44), 3);
    sub_100049C40(0x143, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", *(a5 + 44) & 0xFFFFFFFC))
      {
        *(a5 + 44) &= 3u;
        *a8 = 1;
      }
    }
  }

  v28 = *(a5 + 48);
  if (v28 + 50 == v8)
  {
    v29 = 0;
  }

  else
  {
    v31 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid name_len (%u), given value length (%u)\n", v31, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 48), v8);
    sub_100049C40(0x145, 92);
    v28 = *(a5 + 48);
    v29 = 2 * (v28 + 50 > v8);
  }

  if ((v28 - 257) <= 0xFF00u)
  {
    v32 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid name_len (%u)\n", v32, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 48));
    sub_100049C40(0x144, 92);
    v28 = *(a5 + 48);
    v29 = 2;
  }

  if (*(a5 + 50 + v28 - 1))
  {
    v33 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 48), (a5 + 50), *(a5 + 48));
    v29 |= 1u;
    sub_100049C40(0x146, -9);
    v28 = *(a5 + 48);
  }

  if (sub_10000F0D0((a5 + 50), v28))
  {
    v34 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v34, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 48), (a5 + 50));
    LOBYTE(v29) = v29 | 1;
    sub_100049C40(0x147, -9);
  }

  else if (!v29)
  {
LABEL_41:
    v17 = sub_10002BC8C(a3, a5);
    if (v17)
    {
      goto LABEL_7;
    }

    ++*(a7 + 32);
    v35 = *(a5 + 8);
    v36 = *(*(a1 + 8) + 40);
    v37 = *a3;
    if (v36 - 1 >= v35 && v36 >= 2 && v35 >= 1 && v36 > v35)
    {
      sub_1000422DC(a1, v35, 1uLL, 0, 0x40000000, v35, v37 & 0xFFFFFFFFFFFFFFFLL, 13, &_mh_execute_header, &_mh_execute_header >> 32);
      return 0;
    }

    v38 = sub_10003EDFC(v37 >> 60);
    sub_10004565C("%s (id %llu): invalid sblock_oid (%llu)\n", v38, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 8));
    v15 = 1244;
LABEL_6:
    v17 = 92;
    sub_100049C40(v15, 92);
LABEL_7:
    sub_100045938(a2, a3, v10, a5, v8);
    return v17;
  }

  if (v8 == 50)
  {
    v17 = 92;
  }

  else
  {
    v17 = sub_10002B61C(a1, a2, a3, a5, v8, v29, a8);
  }

  if ((v29 & 2) == 0 || !v17)
  {
    goto LABEL_41;
  }

  return v17;
}

uint64_t sub_10000F85C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v6 = a6;
  v10 = *a3;
  if (a4 != 8)
  {
    v21 = a4;
    v22 = sub_10003EDFC(v10 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v22, *a3 & 0xFFFFFFFFFFFFFFFLL, v21);
    sub_100045938(a2, a3, v21, a5, v6);
    v23 = 92;
    v24 = 205;
LABEL_16:
    v26 = 92;
    goto LABEL_17;
  }

  if (a6 != 20)
  {
    v25 = sub_10003EDFC(v10 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, v6);
    sub_100045938(a2, a3, 8u, a5, v6);
    v23 = 92;
    v24 = 206;
    goto LABEL_16;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFLL;
  v13 = *a5;
  v14 = *a5 & 0xFFFFFFFFFFFFFFFLL;
  v15 = *(*(a1 + 8) + 40);
  if (v15 > v14 && v12 != 0 && v15 > v12 && v15 - v14 >= v12)
  {
    v20 = 0;
  }

  else
  {
    v19 = sub_10003EDFC(v10 >> 60);
    sub_10004565C("%s (id %llu): Bad phys_block_num + len (%llu) for physical extent record\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL, v14);
    sub_100049C40(0x467, 92);
    v20 = 1;
  }

  v28 = v13 >> 60;
  if (!v14)
  {
    v29 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): length is 0\n", v29, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0xCF, 92);
    v20 = 1;
  }

  if (v28 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): unknown kind (%u)\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL, v28);
    sub_100049C40(0x33A, 92);
    v20 |= 2u;
  }

  v31 = *(a5 + 1);
  if (!v31)
  {
    v35 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): owning_obj_id is 0\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0xD0, 92);
    LOBYTE(v20) = v20 | 4;
LABEL_37:
    sub_100045938(a2, a3, 8u, a5, 0x14u);
    goto LABEL_38;
  }

  if (v28 == 2 && v31 != -1)
  {
    v32 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid owning_obj_id (%llu) for update extent\n", v32, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 1));
    v33 = 1230;
    v34 = 92;
LABEL_35:
    sub_100049C40(v33, v34);
    goto LABEL_36;
  }

  if (v28 == 1 && v31 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v36 = sub_10003EDFC(*a3 >> 60);
    if (*(a5 + 1) == -1)
    {
      v37 = "invalid";
    }

    else
    {
      v37 = "unknown";
    }

    sub_100045744("%s (id %llu): owning_obj_id is '%s'\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL, v37);
    v33 = 988;
    v34 = -2;
    goto LABEL_35;
  }

LABEL_36:
  if (v20)
  {
    goto LABEL_37;
  }

LABEL_38:
  v23 = sub_10001FCF8(a1, a2, a3, a5, v20);
  if (!v23)
  {
    return v23;
  }

  v24 = 827;
  v26 = v23;
LABEL_17:
  sub_100049C40(v24, v26);
  return v23;
}

uint64_t sub_10000FB74(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, _DWORD *a8)
{
  v10 = a4;
  v13 = *a3;
  if (a4 != 8)
  {
    v18 = sub_10003EDFC(v13 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL, v10);
    v16 = 92;
    v17 = 218;
    goto LABEL_5;
  }

  v14 = (v13 & 0xFFFFFFFFFFFFFFFLL);
  if ((v13 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v15 = sub_10003EDFC(v13 >> 60);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v15, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v16 = 92;
    v17 = 219;
LABEL_5:
    v19 = 92;
LABEL_6:
    sub_100049C40(v17, v19);
LABEL_7:
    sub_100045938(a2, a3, v10, a5, a6);
    return v16;
  }

  v24 = (v14 - 4);
  if (v14 <= 0xF && (v14 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = sub_10003EDFC(v13 >> 60);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0xDC, -2);
  }

  if (a7[5] <= v14)
  {
    a7[5] = v14 + 1;
  }

  if (a6 <= 0x5B)
  {
    v27 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    v16 = 92;
    v17 = 221;
    goto LABEL_5;
  }

  v28 = *(a5 + 40) >> 12;
  if (v28 <= 0xE)
  {
    v29 = 1 << v28;
    if ((v29 & 0x1556) != 0)
    {
      goto LABEL_20;
    }

    if ((v29 & 0x4001) != 0)
    {
      v36 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid type (0%o)\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[10] & 0xF000);
      v16 = 92;
      v17 = 222;
      goto LABEL_5;
    }
  }

  v50 = sub_10003EDFC(*a3 >> 60);
  sub_100045744("%s (id %llu): invalid type (0%o)\n", v50, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[10] & 0xF000);
  sub_100049C40(0xDF, -5);
LABEL_20:
  if (!*a5)
  {
    v35 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid parent_id (%llu)\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    v16 = 92;
    v17 = 224;
    goto LABEL_5;
  }

  if ((*a5 - 16) >= 0xFFFFFFFFFFFFFFF4)
  {
    v30 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid parent_id (%llu)\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    sub_100049C40(0xE1, -2);
  }

  if (v24 <= 0xFFFFFFFFFFFFFFFDLL && *a5 == 1)
  {
    v31 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid parent_id (%llu) for regular directory\n", v31, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    sub_100049C40(0xE2, 92);
    v87 = 0xAAAAAAAAAAAAAAAALL;
    v86 = -21846;
    v32 = sub_100040474(a5 + 46, a6 - 92, 4, &v87, &v86, 0, 0);
    if ((a5[10] & 0xF000) == 0x4000 && !v32 && !strncmp(v87, ".DocumentRevisions-V100", v86) && sub_10004758C(qword_10009BA58, "Fix inode_val: parent_id (%llu)? ", *a5))
    {
      *a5 = 2;
      *a8 = 1;
    }

    else
    {
      *(a2 + 13) = 1;
    }
  }

  v33 = *a5;
  if (v14 == 2)
  {
    if (v33 != 1)
    {
      v51 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid parent_id (%llu) for root directory\n", v51, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
      v16 = 92;
      v17 = 227;
      goto LABEL_5;
    }

LABEL_37:
    v37 = 2;
    goto LABEL_39;
  }

  if (v14 == 3)
  {
    if (v33 != 1)
    {
      v34 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid parent_id (%llu) for private directory\n", v34, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
      v16 = 92;
      v17 = 228;
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  v37 = v33 + 1;
LABEL_39:
  if (a7[5] < v37)
  {
    a7[5] = v37;
  }

  v38 = a5[1];
  if (!v38)
  {
    LOBYTE(v87) = 0;
    v40 = sub_10003FD88(a1, a2, a7[8], *a3 & 0xFFFFFFFFFFFFFFFLL, &v87);
    if (v40)
    {
      v16 = v40;
      v17 = 1263;
      v19 = v16;
      goto LABEL_6;
    }

    if ((v87 & 1) == 0)
    {
      v56 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid private_id (%llu)\n", v56, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1]);
      v16 = 92;
      v17 = 229;
      goto LABEL_5;
    }

    v38 = a5[1];
    v24 = (v14 - 4);
  }

  if (v38 == 1)
  {
    v39 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid private_id (%llu)\n", v39, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1]);
    v16 = 92;
    v17 = 1264;
    goto LABEL_5;
  }

  if (v38 <= 0xF && (v38 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v41 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid private_id (%llu)\n", v41, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1]);
    sub_100049C40(0xE6, -2);
    v38 = a5[1];
  }

  v42 = v38 + 1;
  if (a7[5] < v42)
  {
    a7[5] = v42;
  }

  v81 = v24;
  if ((a5[10] & 0xF000) != 0x4000)
  {
    if ((a5[7] & 0x80000000) != 0)
    {
      v57 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid nlink (%d)\n", v57, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 14));
      v16 = 92;
      v17 = 236;
      goto LABEL_5;
    }

LABEL_67:
    v52 = a5[6];
    if (v52 >> 31)
    {
      v53 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): unknown internal_flags (0x%llx / known flags are: 0x%llx)\n", v53, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6], 0x7FFFFFFFLL);
      sub_100049C40(0xED, -3);
      v52 = a5[6];
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        v54 = sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v52 & 0xFFFFFFFF80000000);
        v52 = a5[6];
        if (v54)
        {
          v52 = a5[6] & 0x7FFFFFFFLL;
          a5[6] = v52;
          *a8 = 1;
        }
      }
    }

    if ((v52 & 0x800000) != 0)
    {
      if ((*(*(a2 + 40) + 56) & 0x40) != 0)
      {
        v55 = v52 & 8;
        if ((v52 & 8) != 0 && (a5[10] & 0xF000) == 0x8000)
        {
          sub_100034004(v14);
          v52 = a5[6];
          goto LABEL_88;
        }
      }

      else
      {
        v55 = v52 & 8;
      }

      sub_10003EDFC(*a3 >> 60);
      if (v55)
      {
        sub_10004565C("%s (id %llu): invalid internal_flags (0x%llx), given type (0%o)\n");
      }

      else
      {
        sub_10004565C("%s (id %llu): invalid internal_flags (0x%llx), inconsistent protection class\n");
      }

      if (!sub_10004758C(qword_10009BA58, "Fix inode_val: internal_flags (0x%llx)? ", a5[6]))
      {
        v16 = 92;
        v17 = 972;
        goto LABEL_5;
      }

      v52 = a5[6] & 0xFFFFFFFFFF7FFFFFLL;
      a5[6] = v52;
      *a8 = 1;
    }

LABEL_88:
    if ((a5[10] & 0xF000) != 0x4000 && (v52 & 4) != 0)
    {
      v58 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid internal_flags (0x%llx), given type (0%o)\n", v58, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6], a5[10] & 0xF000);
      if (!sub_10004758C(qword_10009BA58, "Fix inode_val: internal_flags (0x%llx)? ", a5[6]))
      {
        v16 = 92;
        v17 = 238;
        goto LABEL_5;
      }

      v52 = a5[6] & 0xFFFFFFFFFFFFFFFBLL;
      a5[6] = v52;
      *a8 = 1;
    }

    if ((v52 & 0x800000) != 0 && (*(*(a2 + 40) + 264) & 0x109) != 0x100)
    {
      v59 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid internal_flags (0x%llx) given apfs_fs_flags (0x%llx) PFK bit\n", v59, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6], *(*(a2 + 40) + 264));
      sub_100049C40(0x5E5, -3);
      v60 = sub_10004758C(qword_10009BA58, "Fix inode_val: internal_flags (0x%llx)? ", a5[6]);
      v52 = a5[6];
      if (v60)
      {
        v52 &= ~0x800000uLL;
        a5[6] = v52;
        *a8 = 1;
      }
    }

    if ((v52 & 0x70000000) != 0 && (*(*(a2 + 40) + 48) & 8) == 0)
    {
      v61 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid internal_flags (0x%llx) given volume readonly compatible features (0x%llx)\n", v61, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6], *(*(a2 + 40) + 48));
      sub_100049C40(0x5E6, -3);
      v62 = sub_10004758C(qword_10009BA58, "Fix inode_val: internal_flags (0x%llx)? ", a5[6]);
      v52 = a5[6];
      if (v62)
      {
        v52 &= 0xFFFFFFFF8FFFFFFFLL;
        a5[6] = v52;
        *a8 = 1;
      }
    }

    if ((v52 & 6) == 4)
    {
      v63 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid internal_flags (0x%llx), (dir-stats origin but not dir-stats maintained)\n", v63, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6]);
      sub_100049C40(0x532, -3);
      v52 = a5[6];
    }

    if ((v52 & 0x20000002) == 0x20000000)
    {
      v64 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid internal_flags (0x%llx), (dir-stats SAF but not dir-stats maintained)\n", v64, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6]);
      sub_100049C40(0x533, -3);
    }

    if (*(a5 + 15) >= 8u)
    {
      v65 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid default_protection_class (%u)\n", v65, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 15));
      v16 = 92;
      v17 = 239;
      goto LABEL_5;
    }

    if ((*(a5 + 35) & 0xBF60) != 0)
    {
      v66 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid bsd_flags (0x%x)\n", v66, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 17));
      sub_100049C40(0xF0, -3);
    }

    if (*(a5 + 41))
    {
      v67 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid pad1 (0x%hx)\n", v67, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 41));
      sub_100049C40(0xF1, -10);
    }

    if ((*(*(a2 + 40) + 57) & 2) != 0 && (a5[10] & 0xB000 | 0x4000) == 0x6000 && !*(a5 + 21))
    {
      v68 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): zero rdev on char/block device (mode %u)\n", v68, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 40));
      sub_100049C40(0x4C0, 92);
    }

    if (*(a5 + 84) && (*(a5 + 50) & 4) == 0)
    {
      if ((*(*(a2 + 40) + 57) & 2) != 0)
      {
        v70 = a5[10] & 0xF000;
        if (v70 != 0x2000 && v70 != 0x4000 && v70 != 24576)
        {
          v71 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): uncompressed_size/rdev/dir_nlink union field is set (%llu) but inode flags and mode do not indicate it should (flags: 0x%llx, mode %u)\n", v71, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 84), a5[6], *(a5 + 40));
          sub_100049C40(0x4AC, 92);
          if (sub_10004758C(qword_10009BA58, "Clear uncompressed size/rdev/dir_nlink? "))
          {
            *(a5 + 84) = 0;
            *a8 = 1;
          }
        }

        if (*(a5 + 22))
        {
          v72 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): invalid pad2 (0x%x)\n", v72, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 22));
          sub_100049C40(0x4C1, -10);
        }
      }

      else
      {
        v69 = sub_10003EDFC(*a3 >> 60);
        sub_100045744("%s (id %llu): uncompressed size is set (%llu) but has-uncompressed-size flag is not set (flags: 0x%llx)\n", v69, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 84), a5[6]);
        sub_100049C40(0xF2, 92);
        if (sub_10004758C(qword_10009BA58, "Clear uncompressed size? "))
        {
          *(a5 + 84) = 0;
          *a8 = 1;
        }
      }
    }

    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v85 = a5;
    v73 = sub_1000149BC(a1, a2, a3, a5 + 46, a6 - 92, sub_100014BE8, a7, a8, &v82);
    if (v73 || (v73 = sub_100015CC4(a1, a2, a7, &v82, a3, a8), v73))
    {
      v16 = v73;
      v74 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid xfields\n", v74, *a3 & 0xFFFFFFFFFFFFFFFLL);
      goto LABEL_7;
    }

    if (a7[8])
    {
      v75 = 0;
    }

    else
    {
      v75 = (a2 + 768);
    }

    v76 = sub_1000278CC(a1, a2, v75, v14, a5, *(&v82 + 1), v84, *(&v84 + 1));
    if (v76 || (a5[6] & 0x10) != 0 && (a5[10] & 0xF000) == 0x8000 && (v83 >= *(&v83 + 1) ? (v77 = v83 - *(&v83 + 1)) : (v77 = 0), !BYTE5(v82) ? (v78 = 0) : (v78 = v84), !BYTE2(v82) ? (v79 = 0) : (v79 = *(&v82 + 1)), v76 = sub_10000164C(v14, a5, a6, v77, v78, v79), v76) || *(&v84 + 1) && (v76 = sub_10003843C(v14, a5, a6), v76))
    {
      v16 = v76;
      goto LABEL_7;
    }

    if ((a5[6] & 1) == 0)
    {
      v80 = a5[10] & 0xF000;
      if (v80 == 40960)
      {
        a7 += 2;
      }

      else if (v80 != 0x8000)
      {
        if (v80 == 0x4000)
        {
          if (v81 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_159;
          }

          ++a7;
        }

        else
        {
          a7 += 3;
        }
      }

      ++*a7;
    }

LABEL_159:
    if ((*(*(a2 + 40) + 57) & 2) == 0 || (*(a5 + 50) & 8) == 0)
    {
      return 0;
    }

    v16 = sub_100022D78(a2, v14);
    if (!v16)
    {
      return v16;
    }

    goto LABEL_7;
  }

  v43 = a7[8];
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = (a2 + 768);
  }

  v16 = sub_10002C1F0(a1, a2, v43, v14, v44);
  if (!v16)
  {
    v45 = *(a5 + 14);
    if (v45 < 0)
    {
      v46 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid nchildren (%d)\n", v46, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 14));
      sub_100049C40(0x4BE, -8);
      v45 = *(a5 + 14);
    }

    sub_10002C3BC(v14, v45);
    if ((*(*(a2 + 40) + 57) & 2) != 0)
    {
      v47 = *(a5 + 21);
      if (v47 < 0)
      {
        v48 = sub_10003EDFC(*a3 >> 60);
        sub_100045744("%s (id %llu): invalid dir_nlink (%d)\n", v48, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 21));
        sub_100049C40(0x4BF, -8);
        v47 = *(a5 + 21);
      }

      if (*(a5 + 14) < v47)
      {
        v49 = sub_10003EDFC(*a3 >> 60);
        sub_100045744("%s (id %llu): directory nlink value %d is greater than nchildren (%d)\n", v49, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 21), *(a5 + 14));
        sub_100049C40(0x483, -8);
        v47 = *(a5 + 21);
      }

      sub_10002C3CC(v14, v47);
    }

    goto LABEL_67;
  }

  return v16;
}

uint64_t sub_100010A54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, void *a7, _DWORD *a8)
{
  v8 = a6;
  v10 = a4;
  v13 = *a3;
  v64 = -86;
  if ((a4 - 777) <= 0xFFFFFD00)
  {
    v14 = sub_10003EDFC(v13 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v14, *a3 & 0xFFFFFFFFFFFFFFFLL, v10);
    v15 = 92;
    v16 = 257;
LABEL_20:
    v28 = 92;
LABEL_21:
    sub_100049C40(v16, v28);
LABEL_22:
    sub_100045938(a2, a3, v10, a5, v8);
    return v15;
  }

  v17 = v13 & 0xFFFFFFFFFFFFFFFLL;
  if ((v13 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v18 = sub_10003EDFC(v13 >> 60);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v15 = 92;
    v16 = 258;
    goto LABEL_20;
  }

  if (v17 <= 0xF && (v17 > 7 || ((1 << v13) & 0x8C) == 0))
  {
    v23 = sub_10003EDFC(v13 >> 60);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v23, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x103, -2);
  }

  if (a7[5] <= v17)
  {
    a7[5] = v17 + 1;
  }

  v24 = *(a3 + 4);
  if ((v24 - 767) <= 0xFD02u)
  {
    v25 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid name_len (%u)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 4));
    v15 = 92;
    v16 = 260;
    goto LABEL_20;
  }

  if (v10 != (v24 + 10))
  {
    v27 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u), given name_len (%u)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, v10, *(a3 + 4));
    v15 = 92;
    v16 = 261;
    goto LABEL_20;
  }

  if (*(a3 + (v24 - 1) + 10))
  {
    v26 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 4), a3 + 10, *(a3 + 4));
    v15 = 92;
    v16 = 262;
    goto LABEL_20;
  }

  if (sub_10000F0D0(a3 + 10, v24))
  {
    v30 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 4), a3 + 10);
    sub_100049C40(0x107, -9);
  }

  if (v8 <= 3)
  {
    v31 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v31, *a3 & 0xFFFFFFFFFFFFFFFLL, v8);
    v15 = 92;
    v16 = 264;
    goto LABEL_20;
  }

  __s1 = a3 + 10;
  v32 = *a5;
  if ((v32 & 0xFFE8) != 0)
  {
    v33 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, 23);
    sub_100049C40(0x109, -3);
    v32 = *a5;
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v34 = sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v32 & 0xFFE8);
      v32 = *a5;
      if (v34)
      {
        v32 &= 0x17u;
        *a5 = v32;
        *a8 = 1;
      }
    }
  }

  if ((~v32 & 3) == 0)
  {
    v35 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid flags (0x%x)\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    v15 = 92;
    v16 = 266;
    goto LABEL_20;
  }

  if ((v32 & 4) != 0)
  {
    v59 = *(a3 + 4);
    if (strncmp(__s1, "com.apple.fs.symlink", v59))
    {
      if (strncmp(__s1, "com.apple.fs.altlink", v59) && strncmp(__s1, "com.apple.fs.firmlink", v59) && strncmp(__s1, "com.apple.fs.cow-exempt-file-count", v59) && strncmp(__s1, "com.apple.fs.graft-vol-uuid", v59) && strncmp(__s1, "com.apple.fs.graft-jobj-id-base", v59) && strncmp(__s1, "com.apple.fs.graft-jobj-id-len", v59) && strncmp(__s1, "com.apple.system.fs.speculative_telemetry", v59))
      {
        v36 = sub_10003EDFC(*a3 >> 60);
        sub_100045744("%s (id %llu): invalid flags (0x%x), given name (<%.*s> ; name_len %d)\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, *(a3 + 4), __s1, *(a3 + 4));
        sub_100049C40(0x10B, -3);
        LOWORD(v32) = *a5;
      }
    }
  }

  if ((v32 & 1) != 0 && a5[1] != 48)
  {
    v41 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid xdata_len (%u), given flags (0x%x)\n", v41, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1], *a5);
    v15 = 92;
    v16 = 268;
    goto LABEL_20;
  }

  v37 = a5[1];
  if ((v32 & 2) != 0 && v37 >= 0xEDD)
  {
    v38 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid xdata_len (%u), given flags (0x%x)\n", v38, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1], *a5);
    v15 = 92;
    v16 = 269;
    goto LABEL_20;
  }

  if (v37 + 4 != v8)
  {
    v42 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid length (%u), given xdata_len (%u)\n", v42, *a3 & 0xFFFFFFFFFFFFFFFLL, v8, a5[1]);
    v15 = 92;
    v16 = 270;
    goto LABEL_20;
  }

  if (a7[8])
  {
    v39 = 0;
  }

  else
  {
    v39 = (a2 + 768);
  }

  sub_100026C9C(a1, v39, a8, a3, a5, &v64);
  if (v40)
  {
    v15 = v40;
    v16 = 973;
LABEL_55:
    v28 = v15;
    goto LABEL_21;
  }

  v43 = *(a3 + 4);
  v44 = strncmp(__s1, "com.apple.ResourceFork", v43);
  v45 = *a5;
  if (!v44)
  {
    if ((v45 & 1) == 0)
    {
      v50 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): com.apple.ResourceFork is expected to be stream based\n", v50, *a3 & 0xFFFFFFFFFFFFFFFLL);
      v15 = 92;
      v16 = 1453;
      goto LABEL_20;
    }

LABEL_70:
    v51 = *(a5 + 10);
    __src = *(a5 + 2);
    v62 = v51;
    v63 = *(a5 + 18);
    if (__src <= 1)
    {
      v52 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid xattr_obj_id (%llu)\n", v52, *a3 & 0xFFFFFFFFFFFFFFFLL, __src);
      v15 = 92;
      v16 = 271;
      goto LABEL_20;
    }

    if (__src <= 0xF && (__src - 4) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v53 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid xattr_obj_id (%llu)\n", v53, *a3 & 0xFFFFFFFFFFFFFFFLL, __src);
      sub_100049C40(0x110, -2);
    }

    if (a7[5] < (__src + 1))
    {
      a7[5] = __src + 1;
    }

    v54 = sub_1000162BC(a1, a2, a3, 0, &__src + 1, a7, a8);
    if (!v54)
    {
      v56 = *(a2 + 48);
      v57 = v56;
      if (!v56)
      {
        v57 = *(a2 + 40);
      }

      if ((*(v57 + 56) & 0x20) != 0)
      {
        v58 = __src;
        a7[9] = v17;
        a7[10] = v58;
      }

      if ((v64 & 1) == 0)
      {
        v54 = sub_10000B5B8(v17, __src, v62, 0, 0, 0);
        if (v54)
        {
          goto LABEL_78;
        }

        v56 = *(a2 + 48);
      }

      if (!v56)
      {
        v56 = *(a2 + 40);
      }

      if ((*(v56 + 56) & 0x20) != 0 || (v64 & 1) != 0 || (sub_100007070(v17, &__src + 8), !v54))
      {
        if (*a8)
        {
          memcpy(a5 + 2, &__src, a5[1]);
        }

        return 0;
      }
    }

LABEL_78:
    v15 = v54;
    v55 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid dstream\n", v55, *a3 & 0xFFFFFFFFFFFFFFFLL);
    goto LABEL_22;
  }

  if (v45)
  {
    goto LABEL_70;
  }

  v46 = *(a2 + 48);
  if (!v46)
  {
    v46 = *(a2 + 40);
  }

  if ((*(v46 + 56) & 0x20) == 0)
  {
    return 0;
  }

  v47 = v43;
  v15 = 0;
  if (v8 == 20 && v17 == a7[9])
  {
    if (!strncmp(__s1, "com.apple.decmpfs", v47))
    {
      v48 = *(*(a1 + 8) + 36);
      v15 = sub_10000B984(a7[10], (*(a5 + 6) + v48 - 1) / v48 * v48);
      if (!v15)
      {
        return v15;
      }

      v49 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): failed to update dstream (%llu)\n", v49, *a3 & 0xFFFFFFFFFFFFFFFLL, a7[10]);
      v16 = 953;
      goto LABEL_55;
    }

    return 0;
  }

  return v15;
}

uint64_t sub_1000112C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v9 = a4;
  v12 = *a3;
  if (a4 != 16)
  {
    v16 = sub_10003EDFC(v12 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL, v9);
    v15 = 293;
    goto LABEL_5;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = sub_10003EDFC(v12 >> 60);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v14, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v15 = 294;
LABEL_5:
    v17 = 92;
    sub_100049C40(v15, 92);
    sub_100045938(a2, a3, v9, a5, v7);
    return v17;
  }

  if (v13 <= 0xF && v13 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = sub_10003EDFC(v12 >> 60);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v21, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x127, -2);
  }

  v22 = *(a7 + 40);
  if (v22 <= v13)
  {
    v22 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v23 = a3[1];
  if (v23 <= 1)
  {
    v24 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid sibling_id (%llu)\n", v24, *a3 & 0xFFFFFFFFFFFFFFFLL, a3[1]);
    v15 = 296;
    goto LABEL_5;
  }

  if (v23 <= 0xF && (v23 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v25 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid sibling_id (%llu)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, a3[1]);
    sub_100049C40(0x129, -2);
    v23 = a3[1];
    v22 = *(a7 + 40);
  }

  v26 = v23 + 1;
  if (v22 < v26)
  {
    *(a7 + 40) = v26;
    v22 = v26;
  }

  if (v7 - 777 <= 0xFFFFFD00)
  {
    v27 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, v7);
    v15 = 298;
    goto LABEL_5;
  }

  v28 = *a5;
  if (*a5 <= 1uLL)
  {
    v29 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid parent_id (%llu)\n", v29, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    v15 = 299;
    goto LABEL_5;
  }

  if (v28 <= 0xF && (v28 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v30 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid parent_id (%llu)\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    sub_100049C40(0x12C, -2);
    v28 = *a5;
    v22 = *(a7 + 40);
  }

  v31 = v28 + 1;
  if (v22 < v31)
  {
    *(a7 + 40) = v31;
  }

  v32 = *(a5 + 4);
  if ((v32 - 767) <= 0xFD02u)
  {
    v33 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL, v7);
    v15 = 301;
    goto LABEL_5;
  }

  if (v7 != (v32 + 10))
  {
    v35 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u), given name_len (%u)\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL, v7, *(a5 + 4));
    v15 = 302;
    goto LABEL_5;
  }

  if (*(a5 + (v32 - 1) + 10))
  {
    v34 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v34, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 4), a5 + 10, *(a5 + 4));
    v15 = 303;
    goto LABEL_5;
  }

  if (sub_10000F0D0(a5 + 10, v32))
  {
    v36 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 4), a5 + 10);
    sub_100049C40(0x130, -9);
  }

  return 0;
}

void sub_100011694(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v11 = *a3;
  if (a4 != 8)
  {
    v15 = a4;
    v16 = sub_10003EDFC(v11 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL, v15);
    sub_100045938(a2, a3, v15, a5, v7);
    v14 = 210;
    goto LABEL_5;
  }

  v12 = v11 & 0xFFFFFFFFFFFFFFFLL;
  if ((v11 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v13 = sub_10003EDFC(v11 >> 60);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v13, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v14 = 625;
LABEL_5:
    sub_100049C40(v14, 92);
    return;
  }

  if (v12 <= 0xF && (v12 > 7 || ((1 << v11) & 0x8C) == 0))
  {
    v19 = sub_10003EDFC(v11 >> 60);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x272, -2);
  }

  if (*(a7 + 40) <= v12)
  {
    *(a7 + 40) = v12 + 1;
  }

  if (v7 != 4)
  {
    v20 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v20, *a3 & 0xFFFFFFFFFFFFFFFLL, v7);
    sub_100045938(a2, a3, 8u, a5, v7);
    v14 = 211;
    goto LABEL_5;
  }

  sub_10000BA58(a3, a5);
}

uint64_t sub_100011850(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v10 = a4;
  v14 = *(a2 + 48);
  if (!v14)
  {
    v14 = *(a2 + 40);
  }

  v15 = *a3;
  if ((*(v14 + 56) & 0x20) != 0)
  {
    v19 = sub_10003EDFC(v15 >> 60);
    sub_10004565C("%s (id %llu): present on sealed volume\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v18 = 922;
  }

  else if (a4 == 8)
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFFLL;
    if ((v15 & 0xFFFFFFFFFFFFFFFLL) > 1)
    {
      if (v16 <= 0xF && v16 - 6 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        v24 = sub_10003EDFC(v15 >> 60);
        sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v24, *a3 & 0xFFFFFFFFFFFFFFFLL);
        sub_100049C40(0xF6, -2);
      }

      if (*(a7 + 40) <= v16)
      {
        *(a7 + 40) = v16 + 1;
      }

      if (v8 > 0x17)
      {
        if (*(a5 + 6) == 1)
        {
          v26 = 336;
        }

        else
        {
          v26 = 256;
        }

        if (*(a5 + 6) == 1)
        {
          v27 = 168;
        }

        else
        {
          v27 = 128;
        }

        if (*(a5 + 4) != 6)
        {
          v26 = v27;
        }

        if (v26 + 24 < v8)
        {
          v28 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): invalid value length (%u)\n", v28, *a3 & 0xFFFFFFFFFFFFFFFLL, v8);
        }

        if (*(a7 + 64))
        {
          v29 = 0;
        }

        else
        {
          v29 = (a2 + 768);
        }

        sub_100006E48(a2, a3, a5, v29);
        v21 = v30;
        if (v30 || v16 == 4)
        {
          if (!v30)
          {
            return v21;
          }

          goto LABEL_10;
        }

        if ((*(*(a2 + 40) + 264) & 0x109) == 0x100)
        {
          v31 = 6;
        }

        else
        {
          v31 = 5;
        }

        if (v31 != *(a5 + 4) && (*(a5 + 4) || sub_100046E74(a1)))
        {
          v32 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): invalid state.major_version (%u)\n", v32, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 4));
          sub_100049C40(0xF9, -6);
        }

        if (*(a5 + 6) >= 2u)
        {
          v33 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): invalid state.minor_version (%u)\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 6));
          sub_100049C40(0xFA, -6);
        }

        if (*(a5 + 8))
        {
          v34 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): invalid state.cpflags (%u)\n", v34, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 8));
          sub_100049C40(0xFB, -3);
        }

        if ((*(a5 + 12) & 0x18) != 0)
        {
          v35 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): invalid state.persistent_class (%u)\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 12));
          sub_100049C40(0xFC, -6);
        }

        if (!*(a5 + 16) && *(a5 + 4) != 6 && sub_100046E74(a1))
        {
          v36 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): invalid state.key_os_version (%u)\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 16));
          sub_100049C40(0xFD, -6);
        }

        if (*(a5 + 20) >= 2u)
        {
          v37 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): invalid state.key_revision (%u)\n", v37, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 20));
          sub_100049C40(0xFE, -6);
        }

        LODWORD(v38) = *(a5 + 22);
        v39 = *(a5 + 4);
        v40 = (v38 >> 8) + v38;
        if (*(a5 + 6) == 1)
        {
          v41 = 336;
        }

        else
        {
          v41 = 256;
        }

        if (*(a5 + 6) == 1)
        {
          v42 = 168;
        }

        else
        {
          v42 = 128;
        }

        if (v39 == 6)
        {
          v43 = (v38 >> 8) + v38;
        }

        else
        {
          v43 = *(a5 + 22);
        }

        if (v39 != 6)
        {
          v41 = v42;
        }

        if (v43 > v41)
        {
          v44 = sub_10003EDFC(*a3 >> 60);
          sub_100045744("%s (id %llu): invalid state.key_len (%u)\n", v44, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 22));
          sub_100049C40(0xFF, -11);
          LODWORD(v38) = *(a5 + 22);
          v39 = *(a5 + 4);
          v40 = (v38 >> 8) + v38;
        }

        if (v39 == 6)
        {
          v38 = v40;
        }

        else
        {
          v38 = v38;
        }

        if (v38 + 24 == v8)
        {
          return 0;
        }

        v45 = sub_10003EDFC(*a3 >> 60);
        sub_10004565C("%s (id %llu): invalid length (%u), given state.key_len (%u)\n", v45, *a3 & 0xFFFFFFFFFFFFFFFLL, v8, *(a5 + 22));
        v18 = 256;
      }

      else
      {
        v25 = sub_10003EDFC(*a3 >> 60);
        sub_10004565C("%s (id %llu): invalid value length (%u)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, v8);
        v18 = 247;
      }
    }

    else
    {
      v17 = sub_10003EDFC(v15 >> 60);
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v17, *a3 & 0xFFFFFFFFFFFFFFFLL);
      v18 = 245;
    }
  }

  else
  {
    v20 = sub_10003EDFC(v15 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v20, *a3 & 0xFFFFFFFFFFFFFFFLL, v10);
    v18 = 244;
  }

  v21 = 92;
  sub_100049C40(v18, 92);
LABEL_10:
  sub_100045938(a2, a3, v10, a5, v8);
  return v21;
}

uint64_t sub_100011D50(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v10 = a6;
  v12 = a4;
  v15 = a2[6];
  if (!v15)
  {
    v15 = a2[5];
  }

  if ((*(v15 + 56) & 0x20) != 0)
  {
    v18 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): file extent record present on sealed volume\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v19 = 921;
LABEL_12:
    v17 = 92;
    sub_100049C40(v19, 92);
    goto LABEL_13;
  }

  if (a4 != 16)
  {
    v20 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v20, *a3 & 0xFFFFFFFFFFFFFFFLL, v12);
    v19 = 212;
    goto LABEL_12;
  }

  if (a6 != 24)
  {
    v21 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v21, *a3 & 0xFFFFFFFFFFFFFFFLL, v10);
    v19 = 213;
    goto LABEL_12;
  }

  v16 = sub_100016AEC(a1, a2, a3, a5, a7, a8);
  if (v16 || (sub_10000BB38(a3, a5), v16))
  {
    v17 = v16;
  }

  else
  {
    sub_100017118(a2, a3, a5, a7, a8);
    v17 = v23;
    if (!v23)
    {
      return v17;
    }
  }

LABEL_13:
  sub_100045938(a2, a3, v12, a5, v10);
  return v17;
}

uint64_t sub_100011ED4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, void *a7, _DWORD *a8)
{
  v9 = a5;
  v13 = *(*(a2 + 40) + 56);
  if ((v13 & 9) != 0)
  {
    v14 = 12;
  }

  else
  {
    v14 = 10;
  }

  v15 = *a3;
  v16 = a4;
  if (v14 > a4 || v14 + 766 < a4)
  {
    v18 = sub_10003EDFC(v15 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    v19 = 92;
    v20 = 275;
LABEL_9:
    sub_100049C40(v20, 92);
LABEL_27:
    sub_100045938(a2, a3, a4, v9, a6);
    return v19;
  }

  v21 = a1;
  v22 = v15 & 0xFFFFFFFFFFFFFFFLL;
  if ((v13 & 9) == 0)
  {
    v23 = a3 + 10;
    v25 = *(a3 + 4);
    v26 = -1;
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_20:
    v30 = sub_10003EDFC(v15 >> 60);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v19 = 92;
    v29 = 276;
    goto LABEL_25;
  }

  v23 = a3 + 12;
  v24 = *(a3 + 2);
  v25 = v24 & 0x3FF;
  v26 = v24 >> 10;
  if (!v22)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v22 <= 0xF && (v22 > 7 || ((1 << v15) & 0x8E) == 0))
  {
    v66 = v23;
    v68 = a8;
    v72 = a7;
    v74 = v25;
    v37 = sub_10003EDFC(v15 >> 60);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v37, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x115, -2);
    v23 = v66;
    a8 = v68;
    a7 = v72;
    v25 = v74;
    v21 = a1;
  }

  if (a7[5] <= v22)
  {
    a7[5] = v22 + 1;
  }

  if ((v25 - 767) <= 0xFD02u)
  {
    v27 = v25;
    v28 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid name_len (%u)\n", v28, *a3 & 0xFFFFFFFFFFFFFFFLL, v27);
    v19 = 92;
    v29 = 278;
LABEL_25:
    sub_100049C40(v29, 92);
LABEL_26:
    v9 = a5;
    goto LABEL_27;
  }

  if (v14 + v25 != v16)
  {
    v34 = v25;
    v35 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u), given name_len (%u)\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL, a4, v34);
    v19 = 92;
    v29 = 279;
    goto LABEL_25;
  }

  if (v23[(v25 - 1)])
  {
    v31 = v23;
    v32 = v25;
    v33 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL, v32, v31, v32);
    v19 = 92;
    v29 = 280;
    goto LABEL_25;
  }

  v67 = (v25 - 1);
  v69 = a8;
  v71 = v21;
  v73 = a7;
  v38 = v23;
  v39 = v25;
  if (sub_10000F0D0(v23, v25))
  {
    v40 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v40, *a3 & 0xFFFFFFFFFFFFFFFLL, v39, v38);
    sub_100049C40(0x119, -9);
  }

  v75 = v39;
  if ((v13 & 9) != 0)
  {
    v77 = -1;
    if (!sub_100002E7C(v38, v67, (v13 >> 3) & 1, sub_100017544, &v77))
    {
      v41 = v77 & 0x3FFFFF;
      if ((v77 & 0x3FFFFF) != v26)
      {
        v42 = sub_10003EDFC(*a3 >> 60);
        sub_10004565C("%s (id %llu): invalid hash (0x%x, expected 0x%x) of name (%.*s)\n", v42, *a3 & 0xFFFFFFFFFFFFFFFLL, v26, v41, v39, v38);
        sub_100049C40(0x11A, 92);
        v43 = sub_10002C590(a3, a4, v41, (a2 + 768));
        if (v43)
        {
          v19 = v43;
          goto LABEL_26;
        }
      }
    }
  }

  if (a6 <= 0x11)
  {
    v44 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v44, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    v19 = 92;
    v29 = 283;
    goto LABEL_25;
  }

  v9 = a5;
  v45 = *a5;
  if (*a5 <= 1)
  {
    v46 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid file_id (%llu) (%s)\n", v46, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, v38);
    v19 = 92;
    v20 = 284;
    goto LABEL_9;
  }

  if (v45 <= 0xF && (v45 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v47 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid file_id (%llu) (%s)\n", v47, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, v38);
    sub_100049C40(0x11D, -2);
    v45 = *a5;
  }

  v48 = v39;
  if (v73[5] < v45 + 1)
  {
    v73[5] = v45 + 1;
    v45 = *a5;
  }

  if (v45 == 2)
  {
    if (v39 == 5 && v22 == 1 && !(*v38 ^ 0x746F6F72 | v38[4]))
    {
      goto LABEL_57;
    }

    v49 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): file_id (%llu) and name (%.*s) mismatch for root directory\n", v49, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, v39, v38);
    sub_100049C40(0x11E, -9);
    v48 = v39;
    v45 = *a5;
  }

  if (v45 == 3)
  {
    if (v48 == 12 && v22 == 1 && !(*v38 ^ 0x2D65746176697270 | *(v38 + 2) ^ 0x726964))
    {
      goto LABEL_57;
    }

    v50 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): file_id (%llu) and name (%.*s) mismatch for private directory\n", v50, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, v39, v38);
    sub_100049C40(0x11F, -9);
  }

  if (v22 == 7)
  {
    goto LABEL_63;
  }

LABEL_57:
  v51 = *(a5 + 8);
  if (v51 >= 0x10)
  {
    v52 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): unknown flags (0x%hx / known flags are: 0x%hx)\n", v52, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 8), 15);
    sub_100049C40(0x121, -3);
    LOWORD(v51) = *(a5 + 8);
    if (*(*(v71 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v53 = sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v51 & 0xFFF0);
      LOWORD(v51) = *(a5 + 8);
      if (v53)
      {
        LOWORD(v51) = a5[2] & 0xF;
        *(a5 + 8) = v51;
        *v69 = 1;
      }
    }
  }

  v54 = v51 & 0xF;
  if (v54 <= 0xE)
  {
    v55 = 1 << v54;
    if ((v55 & 0x1556) != 0)
    {
      goto LABEL_63;
    }

    if ((v55 & 0x4001) != 0)
    {
      v62 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid type (%u)\n", v62, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[2] & 0xF);
      v19 = 92;
      v20 = 290;
      goto LABEL_9;
    }
  }

  v63 = sub_10003EDFC(*a3 >> 60);
  sub_100045744("%s (id %llu): invalid type (%u)\n", v63, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[2] & 0xF);
  sub_100049C40(0x123, -5);
LABEL_63:
  v56 = v71;
  v57 = v73;
  v58 = sub_1000149BC(v71, a2, a3, a5 + 9, a6 - 18, sub_100017584, v73, v69, 0);
  if (v58)
  {
    v19 = v58;
    v59 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid xfields\n", v59, *a3 & 0xFFFFFFFFFFFFFFFLL);
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    if (v75 < 0xE || (v56 = v71, v57 = v73, strncmp("tmp-ino-clone-", v38, 0xEuLL)))
    {
      v60 = a5[2] & 0xF;
      if (v60 == 10)
      {
        v61 = v57 + 2;
        goto LABEL_78;
      }

      v61 = v57;
      if (v60 == 8)
      {
LABEL_78:
        --*v61;
        goto LABEL_79;
      }

      if (v60 != 4)
      {
        v61 = v57 + 3;
        goto LABEL_78;
      }

      if ((*a5 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        v61 = v57 + 1;
        goto LABEL_78;
      }
    }
  }

LABEL_79:
  v64 = v57[8];
  if (v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = (a2 + 768);
  }

  return sub_10002C3DC(v56, a2, v64, a3, a4, a5, a6, v65);
}

uint64_t sub_1000126E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v10 = a4;
  v13 = *(a2 + 48);
  if (!v13)
  {
    v13 = *(a2 + 40);
  }

  v14 = *a3;
  if ((*(v13 + 57) & 2) != 0)
  {
    v18 = sub_10003EDFC(v14 >> 60);
    sub_10004565C("%s (id %llu): invalid key on expanded-records volume\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v17 = 1399;
  }

  else if (a4 == 8)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFLL;
    if ((v14 & 0xFFFFFFFFFFFFFFFLL) > 1)
    {
      if (v15 <= 0xF && v15 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = sub_10003EDFC(v14 >> 60);
        sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v23, *a3 & 0xFFFFFFFFFFFFFFFLL);
        sub_100049C40(0x133, -2);
      }

      v24 = *(a7 + 40);
      if (v24 <= v15)
      {
        v24 = v15 + 1;
        *(a7 + 40) = v15 + 1;
      }

      if (v8 == 32)
      {
        v25 = a5[2];
        if (v25 == 1)
        {
          v26 = sub_10003EDFC(*a3 >> 60);
          sub_10004565C("%s (id %llu): invalid chained_key (%llu)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[2]);
          v17 = 310;
        }

        else
        {
          if (v25 <= 0xF && v25 > 3)
          {
            v28 = sub_10003EDFC(*a3 >> 60);
            sub_100045744("%s (id %llu): invalid chained_key (%llu)\n", v28, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[2]);
            sub_100049C40(0x137, -2);
            v25 = a5[2];
            v24 = *(a7 + 40);
          }

          v29 = v25 + 1;
          if (v24 < v29)
          {
            *(a7 + 40) = v29;
          }

          if (a5[3])
          {
            sub_1000183E8(v15, a5);
            v20 = v30;
            if (!v30)
            {
              return v20;
            }

            goto LABEL_10;
          }

          v31 = sub_10003EDFC(*a3 >> 60);
          sub_10004565C("%s (id %llu): invalid gen_count (%llu)\n", v31, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[3]);
          v17 = 312;
        }
      }

      else
      {
        v27 = sub_10003EDFC(*a3 >> 60);
        sub_10004565C("%s (id %llu): invalid value length (%u)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, v8);
        v17 = 308;
      }
    }

    else
    {
      v16 = sub_10003EDFC(v14 >> 60);
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL);
      v17 = 306;
    }
  }

  else
  {
    v19 = sub_10003EDFC(v14 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL, v10);
    v17 = 305;
  }

  v20 = 92;
  sub_100049C40(v17, 92);
LABEL_10:
  sub_100045938(a2, a3, v10, a5, v8);
  return v20;
}

uint64_t sub_10001298C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  v6 = a6;
  v8 = a4;
  v14 = 0;
  v11 = sub_10000EDD8(a2, a3, a4, a5, a6, 1, &v14);
  if (v11)
  {
    v12 = v11;
LABEL_4:
    sub_100045938(a2, a3, v8, a5, v6);
    return v12;
  }

  v12 = sub_10002BE0C(a3, a5);
  if (v12)
  {
    goto LABEL_4;
  }

  return v12;
}

uint64_t sub_100012A34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v9 = a4;
  v12 = *a3;
  if (a4 != 8)
  {
    v16 = sub_10003EDFC(v12 >> 60);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL, v9);
    v15 = 530;
    goto LABEL_7;
  }

  if (a6 != 8)
  {
    v17 = sub_10003EDFC(v12 >> 60);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v17, *a3 & 0xFFFFFFFFFFFFFFFLL, v7);
    v15 = 531;
    goto LABEL_7;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = sub_10003EDFC(v12 >> 60);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v14, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v15 = 532;
LABEL_7:
    v18 = 92;
    sub_100049C40(v15, 92);
    sub_100045938(a2, a3, v9, a5, v7);
    return v18;
  }

  if (v13 <= 0xF && v13 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = sub_10003EDFC(v12 >> 60);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v22, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x215, -2);
  }

  v23 = *(a7 + 40);
  if (v23 <= v13)
  {
    v23 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v24 = *a5;
  if (*a5 <= 1)
  {
    v25 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): invalid file_id (%llu)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    v15 = 534;
    goto LABEL_7;
  }

  if (v24 <= 0xF)
  {
    v26 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): invalid file_id (%llu)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    sub_100049C40(0x217, -2);
    v24 = *a5;
    v23 = *(a7 + 40);
  }

  v27 = v24 + 1;
  v18 = 0;
  if (v23 < v27)
  {
    *(a7 + 40) = v27;
  }

  return v18;
}

uint64_t sub_100012C44(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v8 = a6;
  v10 = a4;
  v13 = *a3;
  if (a4 == 16)
  {
    v16 = v13 & 0xFFFFFFFFFFFFFFFLL;
    v17 = *(a3 + 1);
    v18 = HIBYTE(v17);
    if (HIBYTE(v17) != 2)
    {
      if (v18 != 1)
      {
        v19 = v13 >> 60;
        if (v18)
        {
          v27 = sub_10003EDFC(v19);
          sub_100045744("%s (id %llu): Unknown type (0x%x)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, a3[15]);
          sub_100049C40(0x3AF, -5);
          return 0;
        }

        v20 = sub_10003EDFC(v19);
        sub_10004565C("%s (id %llu): Invalid type (0x%x)\n", v20, *a3 & 0xFFFFFFFFFFFFFFFLL, a3[15]);
        v21 = 942;
        goto LABEL_7;
      }

      if (a6 <= 2)
      {
        v25 = sub_10003EDFC(v13 >> 60);
        sub_10004565C("%s (id %llu): invalid value length (%u)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, v8);
        v21 = 938;
        goto LABEL_7;
      }

      if (v16 <= 1)
      {
        v28 = sub_10003EDFC(v13 >> 60);
        sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v28, *a3 & 0xFFFFFFFFFFFFFFFLL);
        v21 = 939;
        goto LABEL_7;
      }

      v32 = *(*(a1 + 8) + 36);
      if (v16 <= 0xF && v16 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v33 = sub_10003EDFC(v13 >> 60);
        sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL);
        sub_100049C40(0x3AC, -2);
      }

      if (*(a7 + 40) <= v16)
      {
        *(a7 + 40) = v16 + 1;
      }

      if ((*(a3 + 1) & 0xFFFFFFFFFFFFFFuLL) % v32)
      {
        v34 = sub_10003EDFC(*a3 >> 60);
        sub_10004565C("%s (id %llu): Logical address %llu not a multiple of the block size (%u)\n", v34, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 1) & 0xFFFFFFFFFFFFFFLL, v32);
        v21 = 941;
        goto LABEL_7;
      }

      v46 = sub_10001775C(a1, a2, a3, a5);
      goto LABEL_54;
    }

    if (a6 <= 0x19)
    {
      v26 = sub_10003EDFC(v13 >> 60);
      sub_10004565C("%s (id %llu): invalid value length (%u)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, v8);
      v21 = 1319;
      goto LABEL_7;
    }

    v30 = v17 & 0x1FFFFFFFFFFFFFLL;
    if ((*(*(a2 + 40) + 48) & 8) == 0)
    {
      v31 = sub_10003EDFC(v13 >> 60);
      sub_100045744("%s (id %llu): found attribution tag on a volume that doesn't support them\n", v31, *a3 & 0xFFFFFFFFFFFFFFFLL);
      sub_100049C40(0x528, -5);
    }

    if (v16 == 9)
    {
      if (*(a7 + 40) > 9uLL)
      {
        v53 = 0;
        if (v30)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v53 = 0;
      *(a7 + 40) = 10;
      if (!v30)
      {
LABEL_31:
        v36 = sub_10003EDFC(*a3 >> 60);
        sub_100045744("%s (id %llu): invalid hash (0)\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL);
        sub_100049C40(0x52A, -7);
      }
    }

    else
    {
      v35 = sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL);
      sub_100049C40(0x529, 92);
      v53 = v16;
      if (!v30)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    v37 = *(*(a1 + 8) + 36);
    if (*(a5 + 8) % v37)
    {
      v38 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid physical size (%llu) for hash (%llu)\n", v38, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 8), v30);
      sub_100049C40(0x52B, -11);
      v37 = *(*(a1 + 8) + 36);
    }

    v39 = *(a5 + 16);
    if (v39 % v37)
    {
      v40 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): invalid full clone size (%llu) for hash (%llu)\n", v40, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 16), v30);
      sub_100049C40(0x53C, -11);
      v39 = *(a5 + 16);
    }

    if (*(a5 + 8) < v39)
    {
      v41 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): physical size (%llu) is less than full clone size (%llu) for hash (%llu)\n", v41, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 8), *(a5 + 16), v30);
      sub_100049C40(0x53D, -11);
    }

    if (*(a5 + 24) >= 2u)
    {
      v42 = sub_10003EDFC(*a3 >> 60);
      sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v42, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 24), 1);
      sub_100049C40(0x52C, -3);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", *(a5 + 24) & 0xFFFE))
        {
          *(a5 + 24) &= 1u;
          *a8 = 1;
        }
      }
    }

    memset(v54, 0, sizeof(v54));
    v43 = sub_1000149BC(a1, a2, a3, (a5 + 26), v8 - 26, sub_100017928, a7, a8, v54);
    if (v43)
    {
      v23 = v43;
      sub_10003EDFC(*a3 >> 60);
      sub_10004565C("%s (id %llu): invalid xfields\n");
      goto LABEL_55;
    }

    if (v54[0])
    {
      v44 = strlen(v54 + 1);
      v45 = sub_10004F548(v54 + 1, v44);
      if (v45 == v30)
      {
        v30 = 0;
      }

      else
      {
        v52 = sub_10003EDFC(*a3 >> 60);
        v49 = strlen(v54 + 1);
        sub_100045744("%s (id %llu): signing id hash (%llu) for signing id (%s) with length (%zu) does not match attribution tag hash (%llu)\n", v52, *a3 & 0xFFFFFFFFFFFFFFFLL, v45, v54 + 1, v49, v30);
        sub_100049C40(0x52E, 92);
      }

      if (*(a7 + 64))
      {
        v50 = 0;
      }

      else
      {
        v50 = (a2 + 768);
      }

      sub_10000604C(v50, v45, *a5, *(a5 + 8), *(a5 + 16), *(a5 + 24), v53, v30);
      v23 = v51;
      if (v51)
      {
        sub_10003EDFC(*a3 >> 60);
        sub_10004565C("%s (id %llu): failed to register file info (hash %llu): %d\n");
      }

LABEL_55:
      if (!v23)
      {
        return v23;
      }

      goto LABEL_8;
    }

    v47 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): signing id does not exist\n", v47, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x52D, 92);
    if (*(a7 + 64))
    {
      v48 = 0;
    }

    else
    {
      v48 = (a2 + 768);
    }

    v46 = sub_100005FB4(v48, v16, v30, 1);
LABEL_54:
    v23 = v46;
    goto LABEL_55;
  }

  v22 = sub_10003EDFC(v13 >> 60);
  sub_10004565C("%s (id %llu): invalid key length (%u)\n", v22, *a3 & 0xFFFFFFFFFFFFFFFLL, v10);
  v21 = 937;
LABEL_7:
  v23 = 92;
  sub_100049C40(v21, 92);
LABEL_8:
  sub_100045938(a2, a3, v10, a5, v8);
  return v23;
}

uint64_t sub_10001333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v10 = a6;
  v12 = a4;
  v16 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  if (a4 != 28)
  {
    v21 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v21, v16, v12);
    v19 = 92;
    v20 = 1168;
    goto LABEL_7;
  }

  if (a6 <= 0x17)
  {
    v18 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v18, v16, v10);
    v19 = 92;
    v20 = 1169;
LABEL_7:
    sub_100049C40(v20, 92);
    goto LABEL_8;
  }

  if (v16 <= 1)
  {
    v23 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v23, v16);
    v19 = 92;
    v20 = 1170;
    goto LABEL_7;
  }

  if (v16 <= 0xF && (v16 > 7 || ((1 << *a3) & 0x8C) == 0))
  {
    v25 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v25, v16);
    sub_100049C40(0x493, -2);
  }

  if (*(a7 + 40) <= v16)
  {
    *(a7 + 40) = v16 + 1;
  }

  if (!*(a3 + 12))
  {
    v26 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid atime (0)\n", v26, v16);
    sub_100049C40(0x58E, -2);
  }

  v27 = *(a3 + 20);
  if (v27 <= 1)
  {
    v28 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid file_id (%llu)\n", v28, v16, *(a3 + 20));
    v19 = 92;
    v20 = 1172;
    goto LABEL_7;
  }

  if (v27 <= 0xF && (v27 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v29 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid file_id (%llu)\n", v29, v16, *(a3 + 20));
    sub_100049C40(0x495, -2);
    v27 = *(a3 + 20);
  }

  v30 = *(a7 + 40);
  v31 = v27 + 1;
  if (v30 < v31)
  {
    *(a7 + 40) = v31;
    v30 = v31;
  }

  v32 = *(a5 + 8);
  if (v32 <= 1)
  {
    v33 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid dstream_id (%llu)\n", v33, v16, *(a5 + 8));
    v19 = 92;
    v20 = 1175;
    goto LABEL_7;
  }

  if (v32 <= 0xF && (v32 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v34 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid dstream_id (%llu)\n", v34, v16, *(a5 + 8));
    sub_100049C40(0x498, -2);
    v32 = *(a5 + 8);
    v30 = *(a7 + 40);
  }

  v35 = v32 + 1;
  if (v30 < v35)
  {
    *(a7 + 40) = v35;
  }

  if ((*(a5 + 18) & 0xFF43) != 0)
  {
    v36 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v36, v16, *(a5 + 16), 12386303);
    sub_100049C40(0x499, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", *(a5 + 16) & 0xFF430000))
      {
        *(a5 + 16) &= 0xBCFFFFu;
        *a8 = 1;
      }
    }
  }

  v37 = sub_1000149BC(a1, a2, a3, (a5 + 24), v10 - 24, sub_100017A74, a7, a8, 0);
  if (v37)
  {
    v19 = v37;
    v38 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid xfields\n", v38, v16);
  }

  else
  {
    v39 = sub_100022B7C(*(a3 + 20));
    if (v39)
    {
      v19 = v39;
    }

    else
    {
      v19 = sub_10003884C(*(a5 + 8), *(a3 + 20), *(a5 + 16));
      if (!v19)
      {
        return v19;
      }
    }
  }

LABEL_8:
  sub_100045938(a2, a3, v12, a5, v10);
  return v19;
}

uint64_t sub_10001373C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v10 = a4;
  v13 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v14 = *a3 >> 60;
  if (v14 == 14)
  {
    LODWORD(v14) = *(a3 + 8);
  }

  if (a4 != 20)
  {
    v17 = sub_10003EDFC(v14);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v17, v13, v10);
    v16 = 1178;
    goto LABEL_9;
  }

  if (a6 != 8)
  {
    v18 = sub_10003EDFC(v14);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v18, v13, v8);
    v16 = 1179;
    goto LABEL_9;
  }

  if (v13 <= 1)
  {
    v15 = sub_10003EDFC(v14);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v15, v13);
    v16 = 1180;
LABEL_9:
    v19 = 92;
    sub_100049C40(v16, 92);
    goto LABEL_10;
  }

  if (v13 <= 0xF && (v13 > 7 || ((1 << *a3) & 0x8C) == 0))
  {
    v22 = sub_10003EDFC(v14);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v22, v13);
    sub_100049C40(0x49D, -2);
  }

  v23 = *(a7 + 40);
  if (v23 <= v13)
  {
    v23 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v24 = *(a3 + 12);
  if (v24 <= 1)
  {
    v25 = sub_10003EDFC(v14);
    sub_10004565C("%s (id %llu): invalid file_id (%llu)\n", v25, v13, *(a3 + 12));
    v16 = 1182;
    goto LABEL_9;
  }

  if (v24 <= 0xF && (v24 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v26 = sub_10003EDFC(v14);
    sub_100045744("%s (id %llu): invalid file_id (%llu)\n", v26, v13, *(a3 + 12));
    sub_100049C40(0x49F, -2);
    v24 = *(a3 + 12);
    v23 = *(a7 + 40);
  }

  v27 = v24 + 1;
  if (v23 < v27)
  {
    *(a7 + 40) = v27;
    v23 = v27;
  }

  v28 = *a5;
  if (*a5 <= 1)
  {
    v29 = sub_10003EDFC(v14);
    sub_10004565C("%s (id %llu): invalid dstream_id (%llu)\n", v29, v13, *a5);
    v16 = 1184;
    goto LABEL_9;
  }

  if (v28 <= 0xF && (v28 > 7 || ((1 << v28) & 0x8C) == 0))
  {
    v30 = sub_10003EDFC(v14);
    sub_100045744("%s (id %llu): invalid dstream_id (%llu)\n", v30, v13, *a5);
    sub_100049C40(0x4A1, -2);
    v28 = *a5;
    v23 = *(a7 + 40);
  }

  v31 = v28 + 1;
  if (v23 < v31)
  {
    *(a7 + 40) = v31;
  }

  v32 = sub_10000BD20(a3, a5);
  if (v32)
  {
    v19 = v32;
  }

  else
  {
    v19 = sub_100022D74(*(a3 + 12));
    if (!v19)
    {
      return v19;
    }
  }

LABEL_10:
  sub_100045938(a2, a3, v10, a5, v8);
  return v19;
}

uint64_t sub_100013A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v12 = a4;
  v16 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  if (a4 != 12)
  {
    v21 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v21, v16, v12);
    v19 = 92;
    v20 = 1186;
    goto LABEL_7;
  }

  if (a6 <= 0x33)
  {
    v18 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v18, v16, a6);
    v19 = 92;
    v20 = 1187;
LABEL_7:
    sub_100049C40(v20, 92);
LABEL_8:
    sub_100045938(a2, a3, v12, a5, a6);
    return v19;
  }

  if (v16 <= 1)
  {
    v23 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v23, v16);
    v19 = 92;
    v20 = 1188;
    goto LABEL_7;
  }

  if (v16 <= 0xF && v16 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v25, v16);
    sub_100049C40(0x4A5, -2);
  }

  v26 = *(a7 + 40);
  if (v26 <= v16)
  {
    v26 = v16 + 1;
    *(a7 + 40) = v16 + 1;
  }

  v27 = *(a5 + 32);
  if (v27 == 1)
  {
    v28 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid chained_key (%llu)\n", v28, v16, *(a5 + 32));
    v19 = 92;
    v20 = 1192;
    goto LABEL_7;
  }

  if (v27 <= 0xF && v27 > 3)
  {
    v29 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid chained_key (%llu)\n", v29, v16, *(a5 + 32));
    sub_100049C40(0x4A9, -2);
    v27 = *(a5 + 32);
    v26 = *(a7 + 40);
  }

  v30 = v27 + 1;
  if (v26 < v30)
  {
    *(a7 + 40) = v30;
  }

  if (!*(a5 + 40))
  {
    v31 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid gen_count (%llu)\n", v31, v16, *(a5 + 40));
    sub_100049C40(0x4AA, -8);
  }

  v32 = *(a5 + 48);
  if (v32 >= 0x1000)
  {
    v33 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v33, v16, *(a5 + 48), 4095);
    sub_100049C40(0x4AB, -3);
    v32 = *(a5 + 48);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v34 = sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v32 & 0xFFFFF000);
      v32 = *(a5 + 48);
      if (v34)
      {
        *(a5 + 48) &= 0xFFFu;
        *a8 = 1;
        v32 = *(a5 + 48);
      }
    }
  }

  if ((v32 & 0x200) != 0)
  {
    v35 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): found dir-stats object (chained-key %llu) that is unexpectedly being moved\n", v35, v16, *(a5 + 32));
    sub_100049C40(0x5A8, 92);
    v32 = *(a5 + 48);
  }

  if ((v32 & 2) != 0 && (*(*(a2 + 40) + 48) & 8) == 0)
  {
    v36 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid dir-stats flags (0x%x) on volume without attribution tags\n", v36, v16, *(a5 + 48));
    sub_100049C40(0x5E7, -3);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v37 = sub_1000149BC(a1, a2, a3, (a5 + 52), a6 - 52, sub_100017BA8, a7, a8, &v41);
  if (v37)
  {
    v19 = v37;
    v38 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid xfields\n", v38, v16);
    goto LABEL_8;
  }

  if ((~*(a5 + 48) & 0x801) == 0 && v43 == 1 && *(&v43 + 1) > *(a5 + 16))
  {
    v39 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): purgeable resource fork size (%llu) is larger than resource fork size (%llu)\n", v39, v16, *(&v43 + 1), *(a5 + 16));
    sub_100049C40(0x5B4, -3);
  }

  sub_100018574(v16, a5, a6, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1));
  v19 = v40;
  if (v40)
  {
    goto LABEL_8;
  }

  return v19;
}

uint64_t sub_100013E50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v10 = a6;
  v12 = a4;
  v16 = *a3;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  v18 = *(a2 + 40);
  if ((*(v18 + 48) & 4) == 0)
  {
    sub_100045744("found clone mapping in an unsupported volume format\n");
    sub_100049C40(0x5F0, -2);
    v18 = *(a2 + 40);
  }

  if ((*(v18 + 1108) & 1) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFFFFLL;
    if (v12 != 28)
    {
      v23 = sub_10003EDFC(v17);
      sub_10004565C("%s (id %llu): invalid key length (%u)\n", v23, v19, v12);
      v21 = 92;
      v22 = 1299;
      goto LABEL_12;
    }

    if (v10 <= 7)
    {
      v20 = sub_10003EDFC(v17);
      sub_10004565C("%s (id %llu): invalid value length (%u)\n", v20, v19, v10);
      v21 = 92;
      v22 = 1300;
LABEL_12:
      sub_100049C40(v22, 92);
LABEL_13:
      sub_100045938(a2, a3, v12, a5, v10);
      return v21;
    }

    if (v19 != 9)
    {
      v27 = sub_10003EDFC(v17);
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v27, v19);
      v21 = 92;
      v22 = 1301;
      goto LABEL_12;
    }

    v25 = *(a7 + 40);
    if (v25 <= 9)
    {
      v25 = 10;
      *(a7 + 40) = 10;
    }

    v26 = *(a3 + 12);
    if (v26 > 0xF)
    {
      v28 = v26 + 1;
      if (v25 < v28)
      {
        *(a7 + 40) = v28;
      }
    }

    else
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): invalid private_id\n", *(a3 + 12), *(a3 + 20));
      sub_100049C40(0x516, -2);
    }

    v29 = *(a3 + 20);
    if (v29 > 0xF)
    {
      v30 = v29 + 1;
      if (*(a7 + 40) < v30)
      {
        *(a7 + 40) = v30;
      }
    }

    else
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): invalid file_id\n", *(a3 + 12), v29);
      sub_100049C40(0x517, -2);
    }

    v31 = *a5;
    v32 = *a5 & 0xFFFFFFFFFFFFFFLL;
    v33 = *(a1 + 8);
    v34 = *(v33 + 36);
    if (v32 % v34 || v32 / v34 > *(v33 + 40))
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): invalid physical_size (%llu)\n", *(a3 + 12), *(a3 + 20), v32);
      sub_100049C40(0x518, 92);
    }

    if (v31 >> 57)
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", *(a3 + 12), *(a3 + 20), HIBYTE(v31), 1);
      sub_100049C40(0x554, -3);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", HIBYTE(v31) & 0xFE))
        {
          *a5 = v31 & 0x1FFFFFFFFFFFFFFLL;
          *a8 = 1;
        }
      }
    }

    v38 = 0;
    v39 = 0;
    v35 = sub_1000149BC(a1, a2, a3, a5 + 4, v10 - 8, sub_100017DFC, a7, a8, &v38);
    if (v35)
    {
      v21 = v35;
      sub_10004565C("clone mapping (private_id %llu, file_id %llu): invalid xfields\n", *(a3 + 12), *(a3 + 20));
      goto LABEL_13;
    }

    if (!v39 || (v36 = sub_100006328(v39, v32), !v36))
    {
      if (v38)
      {
        v36 = sub_100018970(v38, v32);
        if (v36)
        {
          goto LABEL_42;
        }

        v37 = v38;
      }

      else
      {
        v37 = 0;
      }

      v21 = sub_1000012BC(*(a3 + 12), *(a3 + 20), a5, v39, v37);
      if (!v21)
      {
        return v21;
      }

      goto LABEL_13;
    }

LABEL_42:
    v21 = v36;
    goto LABEL_13;
  }

  sub_10004565C("found clone mapping in a volume with initialized clonegroup tree\n");
  sub_100049C40(0x612, 92);
  if (*(a7 + 64))
  {
    sub_10002797C();
  }

  else
  {
    sub_100027D7C((a2 + 768), 7u, 0, 0, 0, a3, 0x1Cu, 0, 0);
  }

  return 0;
}

uint64_t sub_100014238(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v11 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v12 = a2[6];
  if (!v12)
  {
    v12 = a2[5];
  }

  if ((*(v12 + 56) & 0x20) != 0)
  {
    if (!(*a3 >> 60))
    {
      v16 = sub_100016AEC(a1, a2, a3, a5, a7, a8);
      if (!v16)
      {
        return v16;
      }

      goto LABEL_8;
    }

    v15 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): ID larger than MAX_JOBJ_ID (%llu)\n", v15, v11, 0xFFFFFFFFFFFFFFFLL);
    v14 = 920;
  }

  else
  {
    v13 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): fext tree record present on non-sealed volume\n", v13, v11);
    v14 = 919;
  }

  v16 = 92;
  sub_100049C40(v14, 92);
LABEL_8:
  sub_1000458CC(a2, a3, a5);
  return v16;
}

uint64_t sub_10001431C(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, void *a5, unsigned int a6, uint64_t a7, _DWORD *a8)
{
  if (a4 <= 8)
  {
    sub_10004565C("clone group tree: invalid key length (%u)\n", a4);
    v8 = 92;
    v9 = 1531;
LABEL_3:
    v10 = 92;
LABEL_4:
    sub_100049C40(v9, v10);
    return v8;
  }

  v15 = *(a3 + 8);
  if (v15 == 2)
  {
    if (a4 != 17)
    {
      sub_10004565C("clone group tree: invalid cookie key length (%u)\n", a4);
      v8 = 92;
      v9 = 1559;
      goto LABEL_3;
    }

    if (a6 != 1)
    {
      sub_10004565C("clone group tree (id %llu): invalid cookie val length (%u)\n", *(a3 + 9), a6);
      v8 = 92;
      v9 = 1560;
      goto LABEL_3;
    }

    v17 = *(a3 + 9);
    if (*a3 != 1 || v17 <= 0x3FF)
    {
      sub_10004565C("clone group tree: cookie group_id (%llu) or cookie_group_id (%llu) is invalid\n", *a3, v17);
      v8 = 92;
      v9 = 1561;
      goto LABEL_3;
    }

    v18 = v17 + 1;
    if (*(a7 + 56) < v18)
    {
      v8 = 0;
      *(a7 + 56) = v18;
      return v8;
    }

    return 0;
  }

  if (v15 != 1)
  {
    sub_100045744("clone group tree: unknown type (%u)\n", *(a3 + 8));
    return 0;
  }

  v16 = *a3;
  if (*a3 <= 0x3FF)
  {
    sub_10004565C("clone group tree: mapping group_id (%llu) is invalid\n", *a3);
    v8 = 92;
    v9 = 1532;
    goto LABEL_3;
  }

  if (*(a7 + 56) < (v16 + 1))
  {
    *(a7 + 56) = v16 + 1;
  }

  if (a4 != 25)
  {
    sub_10004565C("clone group tree (id %llu): invalid key length (%u)\n", v16, a4);
    v8 = 92;
    v9 = 1524;
    goto LABEL_3;
  }

  v23 = *(a3 + 9);
  if (v23 <= 0xF)
  {
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): private_id is invalid\n", v16, *(a3 + 9), *(a3 + 17));
    v8 = 92;
    v9 = 1525;
    goto LABEL_3;
  }

  v24 = *(a7 + 40);
  if (v24 < v23 + 1)
  {
    *(a7 + 40) = v23 + 1;
    v24 = v23 + 1;
  }

  v25 = *(a3 + 17);
  if (v25 <= 0xF)
  {
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): inum is invalid\n", v16, v23, v25);
    v8 = 92;
    v9 = 1526;
    goto LABEL_3;
  }

  if (v24 < v25 + 1)
  {
    *(a7 + 40) = v25 + 1;
  }

  if (a6 <= 0xB)
  {
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): invalid value length (%u)\n", v16, v23, v25, a6);
    v8 = 92;
    v9 = 1527;
    goto LABEL_3;
  }

  v26 = *(a1 + 8);
  v27 = *(v26 + 36);
  if (*a5 % v27 || *a5 / v27 > *(v26 + 40))
  {
    sub_100045744("clonegroup (group id %llu, private_id %llu, file id %llu): invalid physical_size (%llu)\n", v16, v23, v25, *a5);
    sub_100049C40(0x5F8, -11);
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if (*(a5 + 2) >= 0x20u)
  {
    sub_100045744("clonegroup (group id %llu, private_id %llu, file id %llu): unknown flags (0x%x / known flags are: 0x%x)", *a3, *(a3 + 9), *(a3 + 17), *(a5 + 2), 31);
    sub_100049C40(0x5F9, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", a5[1] & 0xFFFFFFE0))
      {
        *(a5 + 2) &= 0x1Fu;
        *a8 = 1;
      }
    }
  }

  v29 = *a3 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
  v38 = 0;
  v39 = v29;
  v40 = 20;
  v37 = 0;
  v30 = sub_1000149BC(a1, a2, &v39, a5 + 6, a6 - 12, sub_100018048, a7, a8, &v37);
  if (v30)
  {
    v8 = v30;
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): invalid xfields\n", *a3, *(a3 + 9), *(a3 + 17));
    return v8;
  }

  if ((a5[1] & 0x10) != 0)
  {
    if (v38)
    {
      v36 = sub_100006328(v38, *a5);
      if (v36)
      {
        return v36;
      }
    }

    if (v37)
    {
      v36 = sub_100018970(v37, *a5);
      if (v36)
      {
        return v36;
      }
    }
  }

  v31 = sub_100038958(a3, v37, v38, *(a5 + 2), v28);
  v8 = v31;
  if (v31)
  {
    v32 = *a3;
    v33 = *(a3 + 9);
    v34 = *(a3 + 17);
    v35 = strerror(v31);
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): can't register for cross checks: %d (%s)\n", v32, v33, v34, v8, v35);
    v9 = 1530;
    v10 = v8;
    goto LABEL_4;
  }

  return v8;
}

char *sub_10001476C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_100008AD4(a1);
  }

  sub_10000B374(a2);
  sub_100006D30(a2);
  sub_10002794C(a2);
  sub_100018290(a2);
  sub_100005EA4();
  result = sub_100000B78();
  if (a1)
  {
    v5 = *(a1 + 8);

    return sub_1000229E8(v5);
  }

  return result;
}

uint64_t sub_1000147E8(uint64_t a1)
{
  sub_10000B450();
  sub_100006E0C();
  sub_10002C5D4();
  sub_10001835C(v2);
  sub_100005F78();
  sub_100000C60();
  sub_100022B40();
  sub_100038400();
  result = sub_10001F4EC();
  *(a1 + 10) = 0;
  return result;
}

uint64_t sub_100014830(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = sub_10000B48C(0xFFFFFFFFFFFFFFFFLL);
  LODWORD(result) = sub_100027244(a1, a2, a3);
  if (result)
  {
    return result;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100014884(uint64_t *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1000091D0(a1, a2, a4);
  }

  v9 = sub_10000BEE4(a1, a2, a4);
  if (v9)
  {
    v8 = v9;
  }

  v10 = sub_100007270(a1, a2, a4);
  if (v10)
  {
    v8 = v10;
  }

  v11 = sub_100027244(a1, a2, a4);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = sub_10002C578(a1, a2, a3, a4);
  if (!(sub_100000C9C(a1, a2, a4) | v13))
  {
    v13 = v12;
  }

  v14 = sub_100018AF0(a1, a2, a4);
  if (v14)
  {
    v13 = v14;
  }

  v15 = sub_100006454(a1, a2, a3);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  v17 = sub_100022F40(a1, a2, a4);
  if (v17)
  {
    v16 = v17;
  }

  LODWORD(result) = sub_100038E98(a1, a2, a4);
  if (result)
  {
    return result;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_1000149BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unsigned int a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unsigned __int16 *, unint64_t, uint64_t, uint64_t, _DWORD *, uint64_t), uint64_t a7, _DWORD *a8, uint64_t a9)
{
  if (a5 >= 4)
  {
    v11 = *a4;
    v12 = a4[1];
    if (v12 + 4 * v11 + 4 <= a5)
    {
      if (!*a4)
      {
        v21 = 0;
LABEL_15:
        if (v21 < a4[1])
        {
          sub_100045744("xf: xf_used_data (%u) is larger than expected (%u)\n", a4[1], v21);
          sub_100049C40(0x44C, -11);
          if (sub_10004758C(qword_10009BA58, "Fix xf_used_data? "))
          {
            v9 = 0;
            a4[1] = v21;
            *a8 = 1;
            return v9;
          }
        }

        return 0;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v31 = &a4[2 * v11 + 2];
      v22 = a4 + 3;
      do
      {
        if ((a4[1] - v20) < *v22)
        {
          v26 = *a3 >> 60;
          if (v26 == 14)
          {
            LODWORD(v26) = *(a3 + 8);
          }

          v27 = sub_10003EDFC(v26);
          v28 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v29 = *a4;
          v30 = sub_10003EE2C(a3, *(v22 - 2));
          sub_10004565C("%s (id %llu): xf %u/%u: %s: extended field at offset %u+%u extends beyond xf_used_data (%u)\n", v27, v28, v19, v29, v30, v20, *v22, a4[1]);
          v9 = 92;
          v13 = 899;
          goto LABEL_5;
        }

        v23 = a6(a1, a2, a3, a4, v19, v31 + v20, a7, a8, a9);
        if (v23)
        {
          return v23;
        }

        v24 = *v22;
        v22 += 2;
        v25 = (v24 + 7) & 0x1FFF8;
        v21 += v25;
        ++v19;
        v20 += v25;
      }

      while (v19 < *a4);
      if (v21 < 0x10000)
      {
        goto LABEL_15;
      }

      sub_10004565C("xf: xf total size (%u) is larger than UINT16_MAX\n", v21);
      v9 = 92;
      v13 = 1099;
    }

    else
    {
      sub_10004565C("xf: xf_num_exts (%u) extended fields do not fit in the given xf_used_data (%u)\n", *a4, v12);
      v9 = 92;
      v13 = 191;
    }

LABEL_5:
    sub_100049C40(v13, 92);
    return v9;
  }

  return 0;
}

uint64_t sub_100014BE8(uint64_t *a1, int8x16_t *a2, unint64_t *a3, unsigned __int16 *a4, int a5, UInt8 *bytes, uint64_t a7, _DWORD *a8, uint64_t a9)
{
  v16 = &a4[2 * a5];
  v17 = *(a9 + 48);
  v20 = *(v16 + 4);
  v19 = (v16 + 2);
  v18 = v20;
  v21 = *(v19 + 1);
  if (v20 <= 0x15 && ((0x251uLL >> v18) & 1) == 0)
  {
    v41 = word_100076D50[v18];
    if (v41 != v21)
    {
      v42 = *a3 >> 60;
      if (v42 == 14)
      {
        LODWORD(v42) = *(a3 + 8);
      }

      v43 = sub_10003EDFC(v42);
      v44 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v45 = *a4;
      v46 = sub_10003EE2C(a3, *v19);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, expected %u\n", v43, v44, a5, v45, v46, *(v19 + 1), v41);
      v22 = 92;
      v39 = 983;
LABEL_20:
      v40 = 92;
      goto LABEL_21;
    }
  }

  v22 = 0;
  switch(v18)
  {
    case 1:
    case 2:
    case 6:
    case 7:
    case 9:
      v23 = a2;
      v24 = a7;
      v25 = *a3 >> 60;
      if (v25 == 14)
      {
        LODWORD(v25) = *(a3 + 8);
      }

      v26 = sub_10003EDFC(v25);
      v27 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v28 = *a4;
      v29 = sub_10003EE2C(a3, *v19);
      sub_100045744("%s (id %llu): xf %u/%u: %s: extended field type is no longer used\n", v26, v27, a5, v28, v29);
      v30 = 987;
      goto LABEL_6;
    case 3:
      *uu = *bytes;
      v208 = *uu;
      v211 = a7;
      v207 = a2;
      if (*uu <= 2u)
      {
        v107 = *a3 >> 60;
        if (v107 == 14)
        {
          LODWORD(v107) = *(a3 + 8);
        }

        v108 = sub_10003EDFC(v107);
        v202 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v204 = v108;
        v109 = *a4;
        v110 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: invalid doc_id (%u), less than MIN_DOC_ID (%u)\n", v204, v202, a5, v109, v110, *uu, 3);
        sub_100049C40(0xC2, -2);
        a7 = v211;
        a2 = v207;
      }

      v111 = *(v17 + 68);
      if ((v111 & 0x40) != 0)
      {
        goto LABEL_88;
      }

      v205 = v111 | 0x40;
      v112 = *a3 >> 60;
      if (v112 == 14)
      {
        LODWORD(v112) = *(a3 + 8);
      }

      v113 = sub_10003EDFC(v112);
      v201 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v203 = v113;
      v114 = *a4;
      v115 = sub_10003EE2C(a3, *v19);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: doc_id exists (%u), despite bsd_flags (0x%x)\n", v203, v201, a5, v114, v115, *uu, *(v17 + 68));
      v22 = 92;
      sub_100049C40(0x44D, 92);
      if (sub_10004758C(qword_10009BA58, "Set bsd_flags to 0x%x? ", v205))
      {
        a2 = v207;
        *(v17 + 68) = v205;
        *a8 = 1;
        a7 = v211;
LABEL_88:
        if (*(a7 + 48) < (v208 + 1))
        {
          *(a7 + 48) = v208 + 1;
        }

        v116 = sub_100005408(a1, a2, *a3 & 0xFFFFFFFFFFFFFFFLL, uu, a7, a8);
        if (v116)
        {
          v22 = v116;
          v117 = *a3 >> 60;
          if (v117 == 14)
          {
            LODWORD(v117) = *(a3 + 8);
          }

          sub_10003EDFC(v117);
          sub_10003EE2C(a3, *v19);
          sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid doc_id index\n");
        }

        else
        {
          if (*a8)
          {
            *bytes = *uu;
          }

          v22 = 0;
          *a9 = 1;
        }
      }

      return v22;
    case 4:
      if (bytes[v21 - 1])
      {
        v60 = *a3 >> 60;
        if (v60 == 14)
        {
          LODWORD(v60) = *(a3 + 8);
        }

        v61 = sub_10003EDFC(v60);
        v62 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v63 = *a4;
        v64 = sub_10003EE2C(a3, *v19);
        sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid name (%.*s), given name_len (%u)\n", v61, v62, a5, v63, v64, *(v19 + 1), bytes, *(v19 + 1));
        v22 = 92;
        v39 = 196;
        goto LABEL_20;
      }

      if (!sub_10000F0D0(bytes, v21))
      {
        return 0;
      }

      v152 = *a3 >> 60;
      if (v152 == 14)
      {
        LODWORD(v152) = *(a3 + 8);
      }

      v153 = sub_10003EDFC(v152);
      v154 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v155 = *a4;
      v156 = sub_10003EE2C(a3, *v19);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid name (%s)\n", v153, v154, a5, v155, v156, bytes);
      v53 = 197;
      v54 = -9;
      goto LABEL_60;
    case 5:
    case 12:
    case 15:
    case 16:
    case 18:
      return v22;
    case 8:
      v65 = *(bytes + 1);
      *uu = *bytes;
      v213 = v65;
      v214 = *(bytes + 4);
      if ((*(v17 + 80) & 0xF000) == 0x8000)
      {
        v209 = a7;
        v206 = a2;
        v66 = sub_1000162BC(a1, a2, a3, v17, uu, a7, a8);
        if (v66)
        {
          v22 = v66;
          v67 = *a3 >> 60;
          if (v67 == 14)
          {
            LODWORD(v67) = *(a3 + 8);
          }

          sub_10003EDFC(v67);
          sub_10003EE2C(a3, *v19);
          sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid dstream\n");
          return v22;
        }

        v176 = *(v17 + 8);
        v177 = *&uu[8];
        if (v176)
        {
          v178 = *&uu[8];
          v179 = sub_10000B5B8(*a3 & 0xFFFFFFFFFFFFFFFLL, v176, *&uu[8], 1, (*(v17 + 48) >> 7) & 1, (*(v17 + 48) >> 22) & 1);
          v177 = v178;
          if (v179)
          {
            v22 = v179;
            v180 = *a3 >> 60;
            if (v180 == 14)
            {
              LODWORD(v180) = *(a3 + 8);
            }

            sub_10003EDFC(v180);
            sub_10003EE2C(a3, *v19);
            sub_10004565C("%s (id %llu): xf %u/%u: %s: failed to register dstream: %d\n");
            return v22;
          }
        }

        *(a9 + 16) = v177;
        v191 = v206[3].i64[0];
        if (!v191)
        {
          v191 = v206[2].i64[1];
        }

        if ((*(v191 + 56) & 0x20) == 0)
        {
          sub_100007070(*a3 & 0xFFFFFFFFFFFFFFFLL, uu);
          if (v192)
          {
            v22 = v192;
            v193 = *a3 >> 60;
            if (v193 == 14)
            {
              LODWORD(v193) = *(a3 + 8);
            }

            sub_10003EDFC(v193);
            sub_10003EE2C(a3, *v19);
            sub_10004565C("%s (id %llu): xf %u/%u: %s: failed to register dstream for crypto state tracking: %d\n");
            return v22;
          }

          v199 = *(v17 + 8);
          if (v199 < (*a3 & 0xFFFFFFFFFFFFFFFLL) && (*(v17 + 50) & 0x40) != 0 && *(v209 + 64))
          {
            sub_1000169D0(a1, v206, v199, v209);
          }
        }

        if (*a8)
        {
          v200 = v213;
          *bytes = *uu;
          *(bytes + 1) = v200;
          *(bytes + 4) = v214;
        }

LABEL_174:
        v22 = 0;
        *(a9 + 3) = 1;
        return v22;
      }

      v128 = a2;
      v129 = a7;
      v130 = *a3 >> 60;
      if (v130 == 14)
      {
        LODWORD(v130) = *(a3 + 8);
      }

      v131 = sub_10003EDFC(v130);
      v132 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v133 = *a4;
      v134 = sub_10003EE2C(a3, *v19);
      sub_100045744("%s (id %llu): xf %u/%u: %s: found unexpected dstream associated with non-regular file\n", v131, v132, a5, v133, v134);
      if (*(v129 + 64))
      {
        v135 = 0;
      }

      else
      {
        v135 = v128 + 48;
      }

      v136 = sub_10000B8E0(v135, *a3);
      if (!v136)
      {
        goto LABEL_174;
      }

      v22 = v136;
      v137 = *a3 >> 60;
      if (v137 == 14)
      {
        LODWORD(v137) = *(a3 + 8);
      }

      v138 = sub_10003EDFC(v137);
      v139 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v140 = *a4;
      v141 = sub_10003EE2C(a3, *v19);
      sub_100045744("%s (id %llu): xf %u/%u: %s: unable to remove dstream of non-regular inode\n", v138, v139, a5, v140, v141);
      return v22;
    case 10:
      v91 = *bytes;
      if (*bytes <= 0xFuLL && (*bytes - 4) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v210 = a7;
        v93 = *a3 >> 60;
        if (v93 == 14)
        {
          LODWORD(v93) = *(a3 + 8);
        }

        v94 = sub_10003EDFC(v93);
        v95 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v96 = *a4;
        v97 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v94, v95, a5, v96, v97, v91);
        sub_100049C40(0xC7, -2);
        a7 = v210;
      }

      v98 = *(v17 + 48);
      if ((v98 & 4) != 0 && (v99 = a7, sub_100018834(v91, *a3 & 0xFFFFFFFFFFFFFFFLL, v98), a7 = v99, v100))
      {
        v22 = v100;
        v101 = *a3 >> 60;
        if (v101 == 14)
        {
          LODWORD(v101) = *(a3 + 8);
        }

        sub_10003EDFC(v101);
        sub_10003EE2C(a3, *v19);
        sub_10004565C("%s (id %llu): xf %u/%u: %s: failed to register dir-stats (%llu) origin: %d\n");
      }

      else
      {
        if (*(a7 + 40) < (v91 + 1))
        {
          *(a7 + 40) = v91 + 1;
        }

        v22 = 0;
        *(a9 + 2) = 1;
        *(a9 + 8) = v91;
      }

      return v22;
    case 11:
      *uu = *bytes;
      if (!uuid_is_null(uu))
      {
        return 0;
      }

      v55 = *a3 >> 60;
      if (v55 == 14)
      {
        LODWORD(v55) = *(a3 + 8);
      }

      v56 = sub_10003EDFC(v55);
      v57 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v58 = *a4;
      v59 = sub_10003EE2C(a3, *v19);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: uuid is NULL\n", v56, v57, a5, v58, v59);
      v22 = 92;
      v39 = 200;
      goto LABEL_20;
    case 13:
      if ((*(v17 + 49) & 2) == 0)
      {
        v68 = *a3 >> 60;
        if (v68 == 14)
        {
          LODWORD(v68) = *(a3 + 8);
        }

        v69 = sub_10003EDFC(v68);
        v70 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v71 = *a4;
        v72 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: sparse_bytes set even though inode is not sparse\n", v69, v70, a5, v71, v72);
        sub_100049C40(0xC9, -5);
      }

      v22 = 0;
      *(a9 + 24) = *bytes;
      *(a9 + 4) = 1;
      return v22;
    case 14:
      *(a9 + 1) = 1;
      if ((*(a2[2].i64[1] + 57) & 2) != 0)
      {
        v23 = a2;
        v24 = a7;
        v123 = *a3 >> 60;
        if (v123 == 14)
        {
          LODWORD(v123) = *(a3 + 8);
        }

        v124 = sub_10003EDFC(v123);
        v125 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v126 = *a4;
        v127 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found rdev x-field but volume has rdev in core-inode\n", v124, v125, a5, v126, v127);
        v30 = 1156;
        goto LABEL_6;
      }

      if ((*(v17 + 80) & 0xB000 | 0x4000) != 0x6000)
      {
        v23 = a2;
        v24 = a7;
        v181 = *a3 >> 60;
        if (v181 == 14)
        {
          LODWORD(v181) = *(a3 + 8);
        }

        v182 = sub_10003EDFC(v181);
        v183 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v184 = *a4;
        v185 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found rdev x-field even though inode is not a char/block device\n", v182, v183, a5, v184, v185);
        v30 = 1157;
        goto LABEL_6;
      }

      if (!*bytes)
      {
        v48 = *a3 >> 60;
        if (v48 == 14)
        {
          LODWORD(v48) = *(a3 + 8);
        }

        v49 = sub_10003EDFC(v48);
        v50 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v51 = *a4;
        v52 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found zero rdev on char/block device (mode %u)\n", v49, v50, a5, v51, v52, *(v17 + 80));
        v53 = 1212;
        v54 = 92;
LABEL_60:
        sub_100049C40(v53, v54);
      }

      return 0;
    case 17:
      v73 = a2[2].i64[1];
      if ((*(v73 + 57) & 2) != 0)
      {
        v23 = a2;
        v24 = a7;
        v142 = *a3 >> 60;
        if (v142 == 14)
        {
          LODWORD(v142) = *(a3 + 8);
        }

        v143 = sub_10003EDFC(v142);
        v144 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v145 = *a4;
        v146 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found nlink x-field but volume has dir-nlink in core-inode\n", v143, v144, a5, v145, v146);
        v30 = 1154;
      }

      else
      {
        if ((*(v73 + 48) & 2) == 0)
        {
          v23 = a2;
          v24 = a7;
          v74 = *a3 >> 60;
          if (v74 == 14)
          {
            LODWORD(v74) = *(a3 + 8);
          }

          v75 = sub_10003EDFC(v74);
          v76 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v77 = *a4;
          v78 = sub_10003EE2C(a3, *v19);
          sub_100045744("%s (id %llu): xf %u/%u: %s: found nlink field but volume doesn't support it\n", v75, v76, a5, v77, v78);
          v30 = 984;
          goto LABEL_6;
        }

        if ((*(v17 + 80) & 0xF000) == 0x4000)
        {
          v163 = *bytes;
          if (*bytes <= *(v17 + 56))
          {
            if (!(v163 >> 31))
            {
LABEL_166:
              sub_10002C3CC(*a3 & 0xFFFFFFFFFFFFFFFLL, v163);
              return 0;
            }

            v194 = *a3 >> 60;
            if (v194 == 14)
            {
              LODWORD(v194) = *(a3 + 8);
            }

            v195 = sub_10003EDFC(v194);
            v196 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v197 = *a4;
            v198 = sub_10003EE2C(a3, *v19);
            sub_100045744("%s (id %llu): xf %u/%u: %s: directory nlink value is invalid (%llu)\n", v195, v196, a5, v197, v198, v163);
            LODWORD(v163) = 0;
            v169 = 1211;
          }

          else
          {
            v164 = *a3 >> 60;
            if (v164 == 14)
            {
              LODWORD(v164) = *(a3 + 8);
            }

            v165 = sub_10003EDFC(v164);
            v166 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v167 = *a4;
            v168 = sub_10003EE2C(a3, *v19);
            sub_100045744("%s (id %llu): xf %u/%u: %s: directory nlink value %lld is greater than nchildren (%d)\n", v165, v166, a5, v167, v168, v163, *(v17 + 56));
            v169 = 986;
          }

          sub_100049C40(v169, -8);
          goto LABEL_166;
        }

        v23 = a2;
        v24 = a7;
        v186 = *a3 >> 60;
        if (v186 == 14)
        {
          LODWORD(v186) = *(a3 + 8);
        }

        v187 = sub_10003EDFC(v186);
        v188 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v189 = *a4;
        v190 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found nlink field even though inode is not a directory\n", v187, v188, a5, v189, v190);
        v30 = 985;
      }

LABEL_6:
      v31 = -5;
LABEL_7:
      sub_100049C40(v30, v31);
LABEL_8:
      if (*(v24 + 64))
      {
        v32 = 0;
      }

      else
      {
        v32 = v23 + 48;
      }

      v22 = sub_100026C40(v32, *a3, *v19);
      if (v22)
      {
        v33 = *a3 >> 60;
        if (v33 == 14)
        {
          LODWORD(v33) = *(a3 + 8);
        }

        v34 = sub_10003EDFC(v33);
        v35 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v36 = *a4;
        v37 = sub_10003EE2C(a3, *v19);
        v38 = strerror(v22);
        sub_10004565C("%s (id %llu): xf %u/%u: %s: unable to add repair for unexpected xfield: %s\n", v34, v35, a5, v36, v37, v38);
        v39 = 1213;
        v40 = v22;
LABEL_21:
        sub_100049C40(v39, v40);
      }

      return v22;
    case 19:
      if ((*(v17 + 51) & 0x20) != 0)
      {
        v23 = a2;
        v24 = a7;
        v147 = *a3 >> 60;
        if (v147 == 14)
        {
          LODWORD(v147) = *(a3 + 8);
        }

        v148 = sub_10003EDFC(v147);
        v149 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v150 = *a4;
        v151 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found attribution tag on an inode with unsupported flags\n", v148, v149, a5, v150, v151);
        v30 = 1336;
        goto LABEL_6;
      }

      if ((*(a2[2].i64[1] + 48) & 8) == 0)
      {
        v23 = a2;
        v24 = a7;
        v102 = *a3 >> 60;
        if (v102 == 14)
        {
          LODWORD(v102) = *(a3 + 8);
        }

        v103 = sub_10003EDFC(v102);
        v104 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v105 = *a4;
        v106 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found attribution tag on a volume that doesn't support them\n", v103, v104, a5, v105, v106);
        v30 = 1315;
        goto LABEL_6;
      }

      v170 = *bytes;
      *(a9 + 32) = *bytes;
      if (!v170)
      {
        v171 = *a3 >> 60;
        if (v171 == 14)
        {
          LODWORD(v171) = *(a3 + 8);
        }

        v172 = sub_10003EDFC(v171);
        v173 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v174 = *a4;
        v175 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: invalid hash: (0)\n", v172, v173, a5, v174, v175);
        sub_100049C40(0x524, -7);
      }

      v22 = 0;
      *(a9 + 5) = 1;
      return v22;
    case 20:
      if ((~*(v17 + 48) & 0x20000004) == 0)
      {
        return 0;
      }

      v23 = a2;
      v24 = a7;
      v118 = *a3 >> 60;
      if (v118 == 14)
      {
        LODWORD(v118) = *(a3 + 8);
      }

      v119 = sub_10003EDFC(v118);
      v120 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v121 = *a4;
      v122 = sub_10003EE2C(a3, *v19);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: inode is expected to be an SAF dir-stats origin\n", v119, v120, a5, v121, v122);
      v30 = 1470;
      v31 = 92;
      goto LABEL_7;
    case 21:
      *(a9 + 40) = *bytes;
      if (*(a2[2].i64[1] + 1112))
      {
        v79 = *(a9 + 40);
        if (v79 > 0x3FF)
        {
          v162 = v79 + 1;
          if (*(a7 + 56) >= v162)
          {
            return 0;
          }

          v22 = 0;
          *(a7 + 56) = v162;
          return v22;
        }

        v23 = a2;
        v24 = a7;
        v80 = *a3 >> 60;
        if (v80 == 14)
        {
          LODWORD(v80) = *(a3 + 8);
        }

        v81 = sub_10003EDFC(v80);
        v82 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v83 = *a4;
        v84 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: invalid clonegroup_id (%llu), less than CLONEGROUP_ID_MIN (%u)\n", v81, v82, a5, v83, v84, *(a9 + 40), 1024);
        v85 = 1519;
      }

      else
      {
        v23 = a2;
        v24 = a7;
        v157 = *a3 >> 60;
        if (v157 == 14)
        {
          LODWORD(v157) = *(a3 + 8);
        }

        v158 = sub_10003EDFC(v157);
        v159 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v160 = *a4;
        v161 = sub_10003EE2C(a3, *v19);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found in an unsupported volume\n", v158, v159, a5, v160, v161);
        v85 = 1518;
      }

      sub_100049C40(v85, -2);
      *(a9 + 40) = 0;
      goto LABEL_8;
    default:
      v86 = *a3 >> 60;
      if (v86 == 14)
      {
        LODWORD(v86) = *(a3 + 8);
      }

      v87 = sub_10003EDFC(v86);
      v88 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v89 = *a4;
      v90 = sub_10003EE2C(a3, *v19);
      sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v87, v88, a5, v89, v90, *v19);
      v53 = 202;
      v54 = -5;
      goto LABEL_60;
  }
}

uint64_t sub_100015CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v12 = *(a4 + 48);
  v58 = 0;
  v13 = *(v12 + 48);
  if ((v13 & 6) != 0 && (*(a4 + 2) & 1) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFF9;
    v15 = sub_10003EDFC(*a5 >> 60);
    sub_100045744("%s (id %llu): dir-stats key xf does not exist, despite internal_flags (0x%llx)\n", v15, *a5 & 0xFFFFFFFFFFFFFFFLL, *(v12 + 48));
    sub_100049C40(0x4CD, -3);
    if (sub_10004758C(qword_10009BA58, "Set internal_flags to 0x%llx? ", v14))
    {
      *(v12 + 48) = v14;
      *a6 = 1;
    }
  }

  if (*(a4 + 4) == 1 && (*(a4 + 3) & 1) == 0)
  {
    v16 = sub_10003EDFC(*a5 >> 60);
    sub_10004565C("%s (id %llu): dstream xf does not exist, despite existence of sparse bytes xf\n", v16, *a5 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x4EA, -5);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  if (*(a4 + 2) != 1)
  {
    v33 = a6;
    v22 = (a4 + 24);
    v21 = *(a4 + 24);
    v25 = (a4 + 16);
    v24 = *(a4 + 16);
    if (v21 > v24 && v24 != 0)
    {
      v17 = a3;
      v18 = a1;
      v19 = a2;
      v57 = v33;
      v23 = 0;
      goto LABEL_26;
    }

    v35 = v33;
    goto LABEL_33;
  }

  v17 = a3;
  v18 = a1;
  v19 = a2;
  v57 = a6;
  v20 = *(v12 + 48);
  v22 = (a4 + 24);
  v21 = *(a4 + 24);
  v23 = (v20 & 6) == 2;
  v25 = (a4 + 16);
  v24 = *(a4 + 16);
  if (v21 > v24 && v24 != 0)
  {
LABEL_26:
    v36 = sub_10003FD88(v18, v19, *(v17 + 64), *a5 & 0xFFFFFFFFFFFFFFFLL, &v58);
    if (v36)
    {
      v31 = v36;
      v37 = 1333;
      v38 = v31;
LABEL_43:
      sub_100049C40(v37, v38);
      return v31;
    }

    if ((v58 & 1) == 0)
    {
      v42 = sub_10003EDFC(*a5 >> 60);
      sub_10004565C("%s (id %llu): number of sparse bytes (%llu) is larger than alloced_size (%llu)\n", v42, *a5 & 0xFFFFFFFFFFFFFFFLL, *v22, *v25);
      v31 = 92;
      v37 = 1259;
      v38 = 92;
      goto LABEL_43;
    }

    if (v23 || (*(v12 + 51) & 0x10) != 0)
    {
      v43 = sub_10003EDFC(*a5 >> 60);
      sub_100045744("%s (id %llu): sparse bytes mismatch for a file in the purgatory\n", v43, *a5 & 0xFFFFFFFFFFFFFFFLL);
      sub_100049C40(0x5FF, -11);
      v44 = *(v12 + 48) & 0xFFFFFFFFEFFFFFFDLL;
      v39 = 1;
      if (sub_10004758C(qword_10009BA58, "Set internal_flags to 0x%llx? ", v44))
      {
        *(v12 + 48) = v44;
        v35 = v57;
        *v57 = 1;
LABEL_47:
        a2 = v19;
        a1 = v18;
        a3 = v17;
        goto LABEL_48;
      }
    }

    else
    {
      v39 = 1;
    }

    v35 = v57;
    goto LABEL_47;
  }

  if ((v20 & 6) != 2)
  {
    v35 = v57;
    a2 = v19;
    a1 = v18;
    a3 = v17;
LABEL_33:
    if (*(a4 + 5) != 1)
    {
LABEL_41:
      v39 = 0;
LABEL_48:
      v45 = *(v12 + 68);
      if ((v45 & 0x40) != 0 && (*a4 & 1) == 0)
      {
        v46 = v35;
        v47 = v45 & 0xFFFFFFBF;
        v48 = sub_10003EDFC(*a5 >> 60);
        sub_10004565C("%s (id %llu): doc_id xf does not exist, despite bsd_flags (0x%x)\n", v48, *a5 & 0xFFFFFFFFFFFFFFFLL, *(v12 + 68));
        v31 = 92;
        sub_100049C40(0x44E, 92);
        if (!sub_10004758C(qword_10009BA58, "Set bsd_flags to 0x%x? ", v47))
        {
          return v31;
        }

        *(v12 + 68) = v47;
        v35 = v46;
        *v46 = 1;
      }

      if ((*(v12 + 80) & 0xB000 | 0x4000) == 0x6000 && (*(a4 + 1) & 1) == 0)
      {
        v49 = sub_10003EDFC(*a5 >> 60);
        sub_100045744("%s (id %llu): no rdev xf on char/block device (mode %u)\n", v49, *a5 & 0xFFFFFFFFFFFFFFFLL, *(v12 + 80));
      }

      v50 = *(v12 + 48);
      if (*(a4 + 5) != (v50 & 0x10000000) >> 28)
      {
        if ((v50 & 0x10000000) != 0 || !*(a4 + 5))
        {
          v51 = v50 & 0xFFFFFFFFEFFFFFFFLL;
          v52 = 1318;
          v53 = "%s (id %llu): attribution tag xf does not exist, despite internal_flags (0x%llx)\n";
          goto LABEL_66;
        }

        if (v39)
        {
          if (v58)
          {
            return 0;
          }

          goto LABEL_65;
        }

        v31 = sub_10003FD88(a1, a2, *(a3 + 64), *a5 & 0xFFFFFFFFFFFFFFFLL, &v58);
        if (v31)
        {
          return v31;
        }

        if ((v58 & 1) == 0)
        {
          v50 = *(v12 + 48);
LABEL_65:
          v51 = v50 | 0x10000000;
          v52 = 1317;
          v53 = "%s (id %llu): attribution tag xf exists, despite internal_flags (0x%llx)\n";
LABEL_66:
          v54 = sub_10003EDFC(*a5 >> 60);
          sub_100045744(v53, v54, *a5 & 0xFFFFFFFFFFFFFFFLL, *(v12 + 48));
          sub_100049C40(v52, -3);
          if (sub_10004758C(qword_10009BA58, "Set internal_flags to 0x%llx? ", v51))
          {
            v31 = 0;
            *(v12 + 48) = v51;
            *v35 = 1;
            return v31;
          }
        }
      }

      return 0;
    }

    v27 = v24 >= v21;
    v40 = v24 - v21;
    if (v27)
    {
      v29 = v40;
    }

    else
    {
      v29 = 0;
    }

LABEL_37:
    if (*(a4 + 5) == 1)
    {
      sub_100006234(*a5 & 0xFFFFFFFFFFFFFFFLL, *(a4 + 32), v29);
      if (v41)
      {
        v31 = v41;
        sub_10003EDFC(*a5 >> 60);
        sub_10004565C("%s (id %llu): failed to register attribution tag: %d\n");
        return v31;
      }
    }

    goto LABEL_41;
  }

  v27 = v24 >= v21;
  v28 = v24 - v21;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  sub_100018778(*(a4 + 8), v29, (v20 >> 29) & 1);
  if (!v30)
  {
    if ((*(v12 + 80) & 0xF000) == 0x8000)
    {
      v35 = v57;
      if (*(v12 + 56) == 1)
      {
        a2 = v19;
        if ((*(v12 + 48) & 0x180000) == 0x80000)
        {
          a1 = v18;
          if ((*(v12 + 68) & 0x40000020) != 0x20)
          {
            sub_1000189F8(*(a4 + 8), v29);
            a3 = v17;
            if (v56)
            {
              v31 = v56;
              sub_10003EDFC(*a5 >> 60);
              sub_10004565C("%s (id %llu): failed to register dir-stats (%llu) purgeable_size: %d\n");
              return v31;
            }

            goto LABEL_37;
          }

          goto LABEL_79;
        }

LABEL_78:
        a1 = v18;
LABEL_79:
        a3 = v17;
        goto LABEL_37;
      }
    }

    else
    {
      v35 = v57;
    }

    a2 = v19;
    goto LABEL_78;
  }

  v31 = v30;
  v32 = sub_10003EDFC(*a5 >> 60);
  sub_10004565C("%s (id %llu): failed to register dir-stats (%llu) descendant: %d\n", v32, *a5 & 0xFFFFFFFFFFFFFFFLL, *(a4 + 8), v31);
  return v31;
}

uint64_t sub_1000162BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, _DWORD *a7)
{
  v13 = *(*(a1 + 8) + 36);
  v14 = *(a2 + 40);
  v15 = a5[1];
  v55 = v14;
  if (v15 % v13)
  {
    v16 = a4;
    v17 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): dstream.alloced_size (%llu) is not a multiple of the block size (%u)\n", v17, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1], v13);
    v18 = 92;
    sub_100049C40(0x381, 92);
    if (!sub_10004758C(qword_10009BA58, "Truncate alloced_size to block size? "))
    {
      return v18;
    }

    v15 = a5[1] / v13 * v13;
    a5[1] = v15;
    *a7 = 1;
    v14 = v55;
    a4 = v16;
  }

  v19 = *(a6 + 64);
  v53 = a7;
  v54 = a3;
  v52 = a6;
  if (v19)
  {
    v20 = (*(*(a2 + 40) + 264) & 9) == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 0;
  v22 = a5[2];
  v23 = *(v14 + 264) & 0x109;
  v24 = *a5;
  if (v23)
  {
    v25 = v22 != -1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 && v22 == -1 && a4 && !v23)
  {
    v21 = (*(a4 + 48) & 0x10) == 0;
  }

  v56 = 0;
  if (v24 <= v15 && v25 && !v21 || (v26 = a4, v27 = sub_10003FD88(a1, a2, v19, *v54 & 0xFFFFFFFFFFFFFFFLL, &v56), a4 = v26, v14 = v55, v18 = v27, !v27))
  {
    if (v24 > v15 && (v56 & 1) == 0)
    {
      if ((v28 = *v54, !a4) && (v28 & 0xF000000000000000) == 0x4000000000000000 || (*(a4 + 48) & 0x80) == 0)
      {
        v29 = a4;
        v30 = sub_10003EDFC(v28 >> 60);
        sub_10004565C("%s (id %llu): dstream.size (%llu) is greater than dstream.alloced_size (%llu)\n", v30, *v54 & 0xFFFFFFFFFFFFFFFLL, *a5, a5[1]);
        v18 = 92;
        sub_100049C40(0xB8, 92);
        if (!sub_10004758C(qword_10009BA58, "Truncate size to alloced size? "))
        {
          return v18;
        }

        *a5 = a5[1];
        *v53 = 1;
        v14 = v55;
        a4 = v29;
      }
    }

    if (!v25 && (v56 & 1) == 0)
    {
      v31 = a4;
      v32 = sub_10003EDFC(*v54 >> 60);
      sub_10004565C("%s (id %llu): found dstream with unassigned default_crypto_id\n", v32, *v54 & 0xFFFFFFFFFFFFFFFLL);
      v18 = 92;
      sub_100049C40(0x3F5, 92);
      if (!sub_10004758C(qword_10009BA58, "Fix unassigned default_crypto_id? "))
      {
        return v18;
      }

      v14 = v55;
      a5[2] = 4 * ((*(v55 + 264) & 0x108) != 0);
      *v53 = 1;
      a4 = v31;
    }

    if (!v20)
    {
      return 0;
    }

    v33 = *(v14 + 264);
    if (v33)
    {
      v34 = a5[2];
      if (!*(v14 + 976))
      {
        if (v34 + 1 < 2)
        {
          return 0;
        }

        v38 = v14;
        v39 = sub_10003EDFC(*v54 >> 60);
        sub_10004565C("%s (id %llu): invalid dstream.default_crypto_id (%llu) on unencrypted volume, given apfs_fs_flags (0x%llx)\n", v39, *v54 & 0xFFFFFFFFFFFFFFFLL, a5[2], *(v38 + 264));
        v18 = 92;
        sub_100049C40(0xBD, 92);
        if (!sub_10004758C(qword_10009BA58, "Fix default_crypto_id (%llu)? ", a5[2]))
        {
          return v18;
        }

        v18 = 0;
        a5[2] = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v34 = a5[2];
    }

    if (v34 == 1)
    {
      v35 = sub_10003EDFC(*v54 >> 60);
      sub_10004565C("%s (id %llu): invalid dstream.default_crypto_id (%llu)\n", v35, *v54 & 0xFFFFFFFFFFFFFFFLL, a5[2]);
      v18 = 92;
      sub_100049C40(0xB9, 92);
      return v18;
    }

    if (v22 != -1)
    {
      if ((*(v14 + 264) & 0x109) == 8)
      {
        v18 = 0;
        if (v34 != 4 && !*(v14 + 976))
        {
          v36 = v14;
          v37 = sub_10003EDFC(*v54 >> 60);
          sub_10004565C("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume, given apfs_fs_flags (0x%llx)\n", v37, *v54 & 0xFFFFFFFFFFFFFFFLL, a5[2], *(v36 + 264));
          v18 = 92;
          sub_100049C40(0xBA, 92);
          if (sub_10004758C(qword_10009BA58, "Fix default_crypto_id (%llu)? ", a5[2]))
          {
            v18 = 0;
            a5[2] = 4;
            goto LABEL_49;
          }
        }

        return v18;
      }

      if ((v33 & 1) != 0 || *(v14 + 976) | v34)
      {
        goto LABEL_60;
      }

      v42 = a4;
      v43 = v14;
      v44 = sub_10003EDFC(*v54 >> 60);
      sub_10004565C("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume, given apfs_fs_flags (0x%llx)\n", v44, *v54 & 0xFFFFFFFFFFFFFFFLL, a5[2], *(v43 + 264));
      sub_100049C40(0x34A, 92);
      if ((*(*(a2 + 40) + 57) & 2) == 0 || (~*(v42 + 68) & 0x40000020) != 0)
      {
        v14 = v55;
        if ((*(v55 + 264) & 0x109) == 0x100)
        {
          v48 = sub_10004758C(qword_10009BA58, "Fix default_crypto_id (%llu)? ", a5[2]);
          v14 = v55;
          if (v48)
          {
            a5[2] = 4;
            *v53 = 1;
            goto LABEL_64;
          }
        }
      }

      else
      {
        v45 = sub_10000B8E0((a2 + 768), *v54);
        v14 = v55;
        if (!v45)
        {
LABEL_60:
          v49 = a5[2];
          if (v49 - 16 < 0xFFFFFFFFFFFFFFF1)
          {
            goto LABEL_70;
          }

          if (v49 - 2 < 2 || v49 == 5)
          {
            goto LABEL_71;
          }

          if (v49 != 4)
          {
            goto LABEL_69;
          }

LABEL_64:
          if ((*(v14 + 264) & 1) == 0)
          {
            if ((*(v14 + 264) & 0x108) == 0x100)
            {
              v49 = 4;
              goto LABEL_71;
            }

            goto LABEL_69;
          }

          v49 = 4;
          if ((*(v14 + 264) & 0x109) != 0x100 && !*(v14 + 976))
          {
LABEL_69:
            v50 = sub_10003EDFC(*v54 >> 60);
            sub_100045744("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume\n", v50, *v54 & 0xFFFFFFFFFFFFFFFLL, a5[2]);
            sub_100049C40(0xBC, -2);
            v49 = a5[2];
LABEL_70:
            if (v49 != -1)
            {
              goto LABEL_71;
            }

            return 0;
          }

LABEL_71:
          if (*(v52 + 40) <= v49)
          {
            v18 = 0;
            *(v52 + 40) = v49 + 1;
            return v18;
          }

          return 0;
        }

        v46 = v45;
        v47 = sub_10003EDFC(*v54 >> 60);
        sub_100045744("%s (id %llu): unable to remove dstream of inode %llu\n", v47, *v54 & 0xFFFFFFFFFFFFFFFLL, *v54 & 0xFFFFFFFFFFFFFFFLL);
        sub_100049C40(0x58F, v46);
        v14 = v55;
      }

      *(a2 + 13) = 1;
      goto LABEL_60;
    }

    if (!v21 || (v56 & 1) != 0)
    {
      return 0;
    }

    v40 = a4;
    v41 = sub_10003EDFC(*v54 >> 60);
    sub_10004565C("%s (id %llu): invalid internal_flags (0x%llx) given unassigned default_crypto_id\n", v41, *v54 & 0xFFFFFFFFFFFFFFFLL, *(v40 + 48));
    v18 = 92;
    sub_100049C40(0x534, 92);
    if (!sub_10004758C(qword_10009BA58, "Fix internal flags (0x%llx)? ", *(v40 + 48)))
    {
      return v18;
    }

    v18 = 0;
    *(v40 + 48) |= 0x10uLL;
LABEL_49:
    *v53 = 1;
  }

  return v18;
}

uint64_t sub_1000169D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  memset(v12, 170, sizeof(v12));
  result = sub_10003F8AC(a1, a2, 8u, &v14);
  if (!result)
  {
    v11[0] = a1;
    v11[1] = a2;
    v13[0] = a3 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
    v13[1] = 0;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    result = sub_100039F68(v9, v14, *(a4 + 64), v13, 0x10u, 0x10u, v12, 24);
    if (!result)
    {
      return sub_10002C648(v9, sub_100016A94, v11, 0);
    }
  }

  return result;
}

uint64_t sub_100016A94(void *a1, int a2, void *a3, int a4, void *a5)
{
  result = 0xFFFFFFFFLL;
  if (a4 == 24 && a2 == 16 && (*a1 & 0xF000000000000000) == 0x8000000000000000)
  {
    v7 = a3[1];
    if (v7)
    {
      return sub_10001F94C(a5[1], v7, (*a3 & 0xFFFFFFFFFFFFFFuLL) / *(*(*a5 + 8) + 36));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100016AEC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  if (v6 <= 1)
  {
    v7 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v7, v6);
    v8 = 92;
    v9 = 627;
LABEL_3:
    v10 = 92;
LABEL_4:
    sub_100049C40(v9, v10);
    return v8;
  }

  v18 = *(*(a1 + 8) + 36);
  if (v6 <= 0xF && v6 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = sub_10003EDFC(8u);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v20, v6);
    sub_100049C40(0x274, -2);
  }

  if (*(a5 + 40) <= v6)
  {
    *(a5 + 40) = v6 + 1;
  }

  if (a3[1] % v18)
  {
    v21 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): Logical address %llu of file extent not a multiple of the block size (%u)\n", v21, v6, a3[1], v18);
    v8 = 92;
    sub_100049C40(0x259, 92);
    if (!sub_10004758C(qword_10009BA58, "Round down logical address (%llu) to block size? ", a3[1]))
    {
      return v8;
    }

    a3[1] = a3[1] / v18 * v18;
    *a6 = 1;
  }

  v50 = a6;
  v51 = a2;
  v22 = *a4;
  v23 = *a4 & 0xFFFFFFFFFFFFFFLL;
  if (v23 % v18)
  {
    v24 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): Length %llu of file extent not a multiple of the block size (%u)\n", v24, v6, v23, v18);
    sub_100049C40(0xD6, 92);
    v59[0] = 0xAAAAAAAAAAAAAAAALL;
    v25 = sub_10003F8AC(a1, a2, 8u, v59);
    v26 = a3[1];
    v54 = v6;
    v55 = v26;
    memset(v60, 170, 24);
    LODWORD(v52) = 16;
    v61[0] = 24;
    if (v25 || sub_1000397B8(v59[0], *(a5 + 64), 2, &v54, &v52, 16, v60, v61) || v52 != 16 || v54 != v6)
    {
      if (sub_10004758C(qword_10009BA58, "Round %s length (%llu) to block size? ", "down", v23))
      {
LABEL_19:
        v27 = v23 - v23 % v18;
LABEL_20:
        v22 = v27 & 0xFFFFFFFFFFFFFFLL | (*(a4 + 7) << 56);
        *a4 = v22;
        *v50 = 1;
        v23 = v27;
        goto LABEL_21;
      }
    }

    else
    {
      v27 = (v18 + v23 - 1) / v18 * v18;
      v49 = v55 - a3[1] == v27;
      v40 = "up";
      if (v55 - a3[1] != v27)
      {
        v40 = "down";
      }

      if (sub_10004758C(qword_10009BA58, "Round %s length (%llu) to block size? ", v40, v23))
      {
        if (v49)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    return 92;
  }

LABEL_21:
  v28 = HIBYTE(v22);
  if (v22 >> 58)
  {
    v33 = sub_10003EDFC(8u);
    sub_100045744("%s (id %llu): unknown flags: (0x%02x / known flags are: 0x%02x)\n", v33, v6, HIBYTE(v22), 3);
    sub_100049C40(0xD7, -3);
    if (*(*(a1 + 8) + 1384) > 0x959D39220F1C2uLL || !sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", HIBYTE(v22) & 0xFC))
    {
      goto LABEL_32;
    }

    v31 = 0x300000000000000;
    v32 = 3;
    goto LABEL_31;
  }

  v29 = v51[6];
  if (!v29)
  {
    v29 = v51[5];
  }

  if ((*(v29 + 56) & 0x20) != 0 && (v22 & 0x100000000000000) != 0)
  {
    v30 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): invalid flags: (0x%02x)\n", v30, v6, 1);
    v8 = 92;
    sub_100049C40(0x396, 92);
    if (!sub_10004758C(qword_10009BA58, "Remove invalid flags (0x%02x)? ", 1))
    {
      return v8;
    }

    v31 = 0x200000000000000;
    v32 = 2;
LABEL_31:
    LOBYTE(v28) = v32 & HIBYTE(v22);
    *a4 = *a4 & 0xFFFFFFFFFFFFFFLL | v22 & v31;
    *v50 = 1;
  }

LABEL_32:
  v34 = v51;
  if ((v28 & 2) != 0)
  {
    v35 = v51[6];
    if (!v35)
    {
      v35 = v51[5];
    }

    if ((*(v35 + 56) & 0x80) == 0)
    {
      v36 = sub_10003EDFC(8u);
      sub_10004565C("%s (id %llu): invalid flag: (0x%02x)\n", v36, v6, 2);
      v8 = 92;
      sub_100049C40(0x3F6, 92);
      if (!sub_10004758C(qword_10009BA58, "Remove invalid flag (0x%02x)? ", 2))
      {
        return v8;
      }

      LOBYTE(v28) = v28 & 0xFD;
      *(a4 + 7) = v28;
      v34 = v51;
      *v50 = 1;
    }
  }

  v37 = *(a4 + 8);
  if ((v28 & 2) != 0)
  {
    if (!v37)
    {
      v46 = sub_10003EDFC(8u);
      sub_10004565C("%s (id %llu): expected physical block number for extent at offset %lld\n", v46, v6, a3[1]);
      v8 = 92;
      v9 = 1015;
      goto LABEL_3;
    }
  }

  else if (!v37)
  {
    goto LABEL_46;
  }

  v38 = *(*(a1 + 8) + 40);
  if (v38 - v23 / v18 < v37 || v38 <= v23 / v18 || v37 < 1 || v38 <= v37)
  {
    v41 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): Bad phys_block_num + len (%llu + %llu) for physical file extent record\n", v41, v6, *(a4 + 8), v23);
    v8 = 92;
    v9 = 216;
    goto LABEL_3;
  }

LABEL_46:
  v59[0] = 0;
  v59[1] = 0;
  if (v34)
  {
    v39 = *(*(v34 + 40) + 8);
  }

  else
  {
    v39 = 0;
  }

  v60[0] = v39;
  v60[1] = 0xF000040000000;
  v42 = *(a5 + 64);
  v60[2] = v37;
  v60[3] = v42;
  v57 = 16;
  v58 = 32;
  if (sub_1000397B8(dword_10009BA68, 0, 0, v60, &v58, 32, v59, &v57) || ((v55 = 0, v56 = 0, v52 = 0, v53 = 0, !v34) ? (v45 = 0) : (v45 = *(*(v34 + 40) + 8)), v47 = *(a4 + 8), v54 = v45, v55 = v47, v56 = v6, v48 = a3[1], v52 = *(a5 + 64), v53 = v48, v8 = sub_10003B12C(dword_10009BAA8, 0, &v54, 24, &v52, 16), !v8))
  {
    v43 = *(a4 + 8);
    if (!v43)
    {
      return 0;
    }

    v44 = sub_10000BE34(a3);
    v8 = sub_10001F568(v34, v43, v23 / v18, v6, v44);
    if (v8)
    {
      v9 = 828;
      v10 = v8;
      goto LABEL_4;
    }
  }

  return v8;
}

double sub_100017118(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4, _DWORD *a5)
{
  v10 = *a3;
  if ((*a3 & 0x100000000000000) == 0)
  {
    v11 = a3[2];
    if (v11 <= 0xF)
    {
      v12 = v11 > 5;
      v13 = (1 << v11) & 0x2D;
      if (v12 || v13 == 0)
      {
        v27 = sub_10003EDFC(*a2 >> 60);
        sub_100045744("%s (id %llu): invalid crypto_id (%llu)\n", v27, *a2 & 0xFFFFFFFFFFFFFFFLL, a3[2]);
        sub_100049C40(0xD9, -2);
      }
    }
  }

  if (a3[1])
  {
    v15 = HIBYTE(v10);
    v16 = *(a1 + 40);
    v17 = *(v16 + 264);
    if (*(a4 + 64))
    {
      v18 = (*(v16 + 264) & 9) == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = *(v16 + 976);
      if (v17)
      {
        if (!v19)
        {
          if (a3[2])
          {
            v25 = sub_10003EDFC(*a2 >> 60);
            sub_10004565C("%s (id %llu): invalid nonzero crypto_id (%llu) on unencrypted volume\n", v25, *a2 & 0xFFFFFFFFFFFFFFFLL, a3[2]);
            sub_100049C40(0x342, 92);
            if (!sub_10004758C(qword_10009BA58, "Fix crypto_id (%llu)? ", a3[2]))
            {
              return result;
            }

            a3[2] = 0;
            *a5 = 1;
          }

          if ((v10 & 0x100000000000000) != 0)
          {
            v26 = sub_10003EDFC(*a2 >> 60);
            sub_10004565C("%s (id %llu): extent crypto flag set on unencrypted volume\n", v26, *a2 & 0xFFFFFFFFFFFFFFFLL);
            sub_100049C40(0x3CF, 92);
            if (!sub_10004758C(qword_10009BA58, "Clear invalid flag? "))
            {
              return result;
            }

            *(a3 + 7) = (v10 & 0xFE00000000000000) >> 56;
            *a5 = 1;
            goto LABEL_32;
          }
        }
      }

      else if (!v19)
      {
        if (!a3[2])
        {
          v29 = sub_10003EDFC(*a2 >> 60);
          sub_10004565C("%s (id %llu): invalid zero crypto_id on encrypted volume\n", v29, *a2 & 0xFFFFFFFFFFFFFFFLL);
          sub_100049C40(0x343, 92);
          if ((*(*(a1 + 40) + 264) & 0x108) == 0 || !sub_10004758C(qword_10009BA58, "Fix crypto_id? "))
          {
            return result;
          }

          a3[2] = a3[1];
          LOBYTE(v15) = HIBYTE(v10) | 1;
          *(a3 + 7) = HIBYTE(v10) | 1;
          *a5 = 1;
          v17 = *(*(a1 + 40) + 264);
        }

        if ((v17 & 0x109) == 8 && (v15 & 1) == 0)
        {
          v21 = sub_10003EDFC(*a2 >> 60);
          sub_10004565C("%s (id %llu): extent crypto flag missing on encrypted volume\n", v21, *a2 & 0xFFFFFFFFFFFFFFFLL);
          sub_100049C40(0x3CE, 92);
          if (!sub_10004758C(qword_10009BA58, "Set missing flag? "))
          {
            return result;
          }

          LOBYTE(v15) = v15 | 1;
          *(a3 + 7) = v15;
          a3[2] = a3[1];
          *a5 = 1;
        }
      }
    }

    if (v15)
    {
LABEL_34:

      return sub_100007114(a2, a3);
    }

LABEL_32:
    v23 = a3[2] + 1;
    if (*(a4 + 40) < v23)
    {
      *(a4 + 40) = v23;
    }

    goto LABEL_34;
  }

  if (a3[2])
  {
    v22 = sub_10003EDFC(*a2 >> 60);
    sub_100045744("%s (id %llu): invalid sparse extent with nonzero crypto_id (%llu)\n", v22, *a2 & 0xFFFFFFFFFFFFFFFLL, a3[2]);
    sub_100049C40(0x341, 92);
    if (sub_10004758C(qword_10009BA58, "Fix crypto_id (%llu)? ", a3[2]))
    {
      a3[2] = 0;
      *a5 = 1;
    }
  }

  if ((v10 & 0x100000000000000) != 0 && (*(*(a1 + 40) + 264) & 9) == 0)
  {
    v24 = sub_10003EDFC(*a2 >> 60);
    sub_100045744("%s (id %llu): extent crypto flag set on sparse extent\n", v24, *a2 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x3E8, -3);
    if (sub_10004758C(qword_10009BA58, "Clear invalid flag? "))
    {
      *(a3 + 7) = (v10 & 0xFE00000000000000) >> 56;
      *a5 = 1;
    }
  }

  return result;
}

uint64_t sub_100017544(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = off_10009B0E8(*a3, a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100017584(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, unint64_t *a6, uint64_t a7)
{
  v11 = &a4[2 * a5];
  v14 = *(v11 + 4);
  v13 = (v11 + 2);
  v12 = v14;
  if ((v14 - 1) > 1 || *(v13 + 1) == 8)
  {
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        v15 = *a6;
        if (*a6 <= 0xF && *a6 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = *a3 >> 60;
          if (v17 == 14)
          {
            LODWORD(v17) = *(a3 + 8);
          }

          v18 = sub_10003EDFC(v17);
          v19 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v20 = *a4;
          v21 = sub_10003EE2C(a3, *v13);
          sub_100045744("%s (id %llu): xf %u/%u: %s: invalid sibling_id (%llu)\n", v18, v19, a5, v20, v21, v15);
          sub_100049C40(0xC0, -2);
        }

        if (*(a7 + 40) < v15 + 1)
        {
          v22 = 0;
          *(a7 + 40) = v15 + 1;
          return v22;
        }
      }

      else
      {
        v28 = *a3 >> 60;
        if (v28 == 14)
        {
          LODWORD(v28) = *(a3 + 8);
        }

        v29 = sub_10003EDFC(v28);
        v30 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v31 = *a4;
        v32 = sub_10003EE2C(a3, *v13);
        sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v29, v30, a5, v31, v32, *v13);
        sub_100049C40(0xC1, -5);
      }
    }

    return 0;
  }

  v23 = *a3 >> 60;
  if (v23 == 14)
  {
    LODWORD(v23) = *(a3 + 8);
  }

  v24 = sub_10003EDFC(v23);
  v25 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v26 = *a4;
  v27 = sub_10003EE2C(a3, *v13);
  sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %lu\n", v24, v25, a5, v26, v27, *(v13 + 1), *v13, 8);
  v22 = 92;
  sub_100049C40(0x3D6, 92);
  return v22;
}

uint64_t sub_10001775C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *(a2 + 48);
  if (!v8)
  {
    v8 = *(a2 + 40);
  }

  if ((*(v8 + 56) & 0x20) == 0)
  {
    v9 = sub_10003EDFC(*a3 >> 60);
    sub_100045744("%s (id %llu): Found data hash on unsealed volume\n", v9, *a3 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x3A4, -5);
    return sub_100027D7C((a2 + 768), 7u, 0, 0, 0, a3, 0x10u, 0, 0);
  }

  if ((*(a3 + 4) & 0x3FFF) != 0)
  {
    v11 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): Logical address %llu of data hash not a multiple of the hash chunk size (%u)\n", v11, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 1) & 0xFFFFFFFFFFFFFFLL, 0x4000);
    v12 = 92;
    v13 = 933;
LABEL_15:
    v17 = 92;
    goto LABEL_16;
  }

  v14 = *(a4 + 2);
  v15 = *(a2 + 20);
  if (v15 != v14 && (v15 > v14 || (*(a2 + 16) & 0xC00) == 0))
  {
    v18 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): Unexpected hash size (%u != %u)\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a4 + 2), *(a2 + 20));
    v12 = 92;
    v13 = 934;
    goto LABEL_15;
  }

  if (sub_1000082B8(a4 + 3, 0, 8 * *(a4 + 2), *(a4 + 2)))
  {
    v16 = sub_10003EDFC(*a3 >> 60);
    sub_10004565C("%s (id %llu): Invalid hash at offset %llu\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 1) & 0xFFFFFFFFFFFFFFLL);
    v12 = 92;
    v13 = 935;
    goto LABEL_15;
  }

  v12 = sub_10000BBDC(a1, a3, a4);
  if (v12)
  {
    v13 = 936;
    v17 = v12;
LABEL_16:
    sub_100049C40(v13, v17);
  }

  return v12;
}

uint64_t sub_100017928(int a1, int a2, uint64_t a3, unsigned __int16 *a4, int a5, void *__src, int a7, int a8, _BYTE *a9)
{
  v12 = &a4[2 * a5];
  v14 = *(v12 + 4);
  v13 = (v12 + 2);
  if (v14 == 1)
  {
    v15 = *(v13 + 1);
    if (v15 < 0x100)
    {
      memcpy(a9 + 1, __src, v15);
      v21 = 0;
      *a9 = 1;
    }

    else
    {
      v16 = *a3 >> 60;
      if (v16 == 14)
      {
        LODWORD(v16) = *(a3 + 8);
      }

      v17 = sub_10003EDFC(v16);
      v18 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v19 = *a4;
      v20 = sub_10003EE2C(a3, *v13);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, max %u\n", v17, v18, a5, v19, v20, *(v13 + 1), 255);
      v21 = 92;
      sub_100049C40(0x521, 92);
    }
  }

  else
  {
    v22 = *a3 >> 60;
    if (v22 == 14)
    {
      LODWORD(v22) = *(a3 + 8);
    }

    v23 = sub_10003EDFC(v22);
    v24 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v25 = *a4;
    v26 = sub_10003EE2C(a3, *v13);
    sub_100045744("%s (id %llu): xf %u/%u: %s: invalid x_type (%u)\n", v23, v24, a5, v25, v26, *v13);
    sub_100049C40(0x522, -5);
    return 0;
  }

  return v21;
}

uint64_t sub_100017A74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  v8 = &a4[2 * a5];
  v10 = *(v8 + 4);
  v9 = (v8 + 2);
  if ((v10 - 1) > 1)
  {
    v17 = *a3 >> 60;
    if (v17 == 14)
    {
      LODWORD(v17) = *(a3 + 8);
    }

    v18 = sub_10003EDFC(v17);
    v19 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v20 = *a4;
    v21 = sub_10003EE2C(a3, *v9);
    sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v18, v19, a5, v20, v21, *v9);
    sub_100049C40(0x50A, -5);
    return 0;
  }

  if (*(v9 + 1) == 8)
  {
    return 0;
  }

  v11 = *a3 >> 60;
  if (v11 == 14)
  {
    LODWORD(v11) = *(a3 + 8);
  }

  v12 = sub_10003EDFC(v11);
  v13 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v14 = *a4;
  v15 = sub_10003EE2C(a3, *v9);
  sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %lu\n", v12, v13, a5, v14, v15, *(v9 + 1), *v9, 8);
  v16 = 92;
  sub_100049C40(0x509, 92);
  return v16;
}

uint64_t sub_100017BA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &a4[2 * a5];
  v15 = *(v12 + 4);
  v14 = (v12 + 2);
  v13 = v15;
  if (v15 <= 4)
  {
    v16 = word_100076D7C[v13];
    if (v13 && v16 != *(v14 + 1))
    {
      v25 = *a3 >> 60;
      if (v25 == 14)
      {
        LODWORD(v25) = *(a3 + 8);
      }

      v26 = sub_10003EDFC(v25);
      v27 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v28 = *a4;
      v29 = sub_10003EE2C(a3, *v14);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, expected %u\n", v26, v27, a5, v28, v29, *(v14 + 1), v16);
      v24 = 92;
      sub_100049C40(0x4E6, 92);
      return v24;
    }
  }

  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v24 = 0;
      *(a9 + 24) = *a6;
      *(a9 + 16) = 1;
      return v24;
    }

    if (v13 == 4)
    {
      v24 = 0;
      *(a9 + 40) = *a6;
      *(a9 + 32) = 1;
      return v24;
    }
  }

  else
  {
    if (v13 == 1)
    {
      v24 = 0;
      *(a9 + 8) = *a6;
      *a9 = 1;
      return v24;
    }

    if (v13 == 2)
    {
      v18 = *a6;
      if ((*a6 - 1) > 0xE || (v18 - 4) > 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*(a7 + 40) < (v18 + 1))
        {
          *(a7 + 40) = v18 + 1;
        }
      }

      else
      {
        v19 = *a3 >> 60;
        if (v19 == 14)
        {
          LODWORD(v19) = *(a3 + 8);
        }

        v20 = sub_10003EDFC(v19);
        v21 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v22 = *a4;
        v23 = sub_10003EE2C(a3, *v14);
        sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid shadow_key (%llu)\n", v20, v21, a5, v22, v23, v18);
        sub_100049C40(0x53B, -2);
      }

      v24 = 0;
      *(a9 + 56) = v18;
      *(a9 + 48) = 1;
      return v24;
    }
  }

  v30 = *a3 >> 60;
  if (v30 == 14)
  {
    LODWORD(v30) = *(a3 + 8);
  }

  v31 = sub_10003EDFC(v30);
  v32 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v33 = *a4;
  v34 = sub_10003EE2C(a3, *v14);
  sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v31, v32, a5, v33, v34, *v14);
  sub_100049C40(0x4E7, -5);
  return 0;
}

uint64_t sub_100017DFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v12 = &a4[2 * a5];
  v15 = *(v12 + 4);
  v14 = (v12 + 2);
  v13 = v15;
  if (v15 > 2 || ((v16 = word_100076D86[v13], v13) ? (v17 = v16 == *(v14 + 1)) : (v17 = 1), v17))
  {
    if (v13 == 1)
    {
      v21 = *a6;
      if ((*a6 & 0x1FFFFFFFFFFFFFLL) != 0)
      {
        v20 = 0;
        a9[1] = v21;
        return v20;
      }

      v39 = *a3 >> 60;
      if (v39 == 14)
      {
        LODWORD(v39) = *(a3 + 8);
      }

      v40 = sub_10003EDFC(v39);
      v41 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v42 = *a4;
      v43 = sub_10003EE2C(a3, *v14);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid attribution hash (%llu)\n", v40, v41, a5, v42, v43, v21);
      v32 = 1297;
    }

    else
    {
      if (v13 != 2)
      {
        v27 = *a3 >> 60;
        if (v27 == 14)
        {
          LODWORD(v27) = *(a3 + 8);
        }

        v28 = sub_10003EDFC(v27);
        v29 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v30 = *a4;
        v31 = sub_10003EE2C(a3, *v14);
        sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v28, v29, a5, v30, v31, *v14);
        v32 = 1298;
        v33 = -5;
        goto LABEL_31;
      }

      v18 = *a6;
      if (*a6 > 0xF || v18 == 2)
      {
        *a9 = v18;
        if (*(a7 + 40) < (v18 + 1))
        {
          v20 = 0;
          *(a7 + 40) = v18 + 1;
          return v20;
        }

        return 0;
      }

      v34 = *a3 >> 60;
      if (v34 == 14)
      {
        LODWORD(v34) = *(a3 + 8);
      }

      v35 = sub_10003EDFC(v34);
      v36 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v37 = *a4;
      v38 = sub_10003EE2C(a3, *v14);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v35, v36, a5, v37, v38, v18);
      v32 = 1296;
    }

    v33 = -2;
LABEL_31:
    sub_100049C40(v32, v33);
    return 0;
  }

  v22 = *a3 >> 60;
  if (v22 == 14)
  {
    LODWORD(v22) = *(a3 + 8);
  }

  v23 = sub_10003EDFC(v22);
  v24 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v25 = *a4;
  v26 = sub_10003EE2C(a3, *v14);
  sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %u\n", v23, v24, a5, v25, v26, *(v14 + 1), *v14, v16);
  v20 = 92;
  sub_100049C40(0x50F, 92);
  return v20;
}

uint64_t sub_100018048(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, unint64_t *a6, uint64_t a7, uint64_t a8, unint64_t *a9)
{
  v12 = &a4[2 * a5];
  v15 = *(v12 + 4);
  v14 = (v12 + 2);
  v13 = v15;
  if (v15 > 2 || ((v16 = word_100076D86[v13], v13) ? (v17 = v16 == *(v14 + 1)) : (v17 = 1), v17))
  {
    if (v13 == 1)
    {
      v19 = *a6;
      if (*a6 > 0xF || v19 == 2)
      {
        *a9 = v19;
        if (*(a7 + 40) < v19 + 1)
        {
          v18 = 0;
          *(a7 + 40) = v19 + 1;
          return v18;
        }

        return 0;
      }

      v33 = *a3 >> 60;
      if (v33 == 14)
      {
        LODWORD(v33) = *(a3 + 8);
      }

      v34 = sub_10003EDFC(v33);
      v35 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v36 = *a4;
      v37 = sub_10003EE2C(a3, *v14);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v34, v35, a5, v36, v37, v19);
      v31 = 1534;
    }

    else
    {
      if (v13 != 2)
      {
        v26 = *a3 >> 60;
        if (v26 == 14)
        {
          LODWORD(v26) = *(a3 + 8);
        }

        v27 = sub_10003EDFC(v26);
        v28 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v29 = *a4;
        v30 = sub_10003EE2C(a3, *v14);
        sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v27, v28, a5, v29, v30, *v14);
        v31 = 1523;
        v32 = -5;
        goto LABEL_31;
      }

      if (*a6)
      {
        v18 = 0;
        a9[1] = *a6;
        return v18;
      }

      v38 = *a3 >> 60;
      if (v38 == 14)
      {
        LODWORD(v38) = *(a3 + 8);
      }

      v39 = sub_10003EDFC(v38);
      v40 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v41 = *a4;
      v42 = sub_10003EE2C(a3, *v14);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid attribution hash (%llu)\n", v39, v40, a5, v41, v42, 0);
      v31 = 1522;
    }

    v32 = -2;
LABEL_31:
    sub_100049C40(v31, v32);
    return 0;
  }

  v21 = *a3 >> 60;
  if (v21 == 14)
  {
    LODWORD(v21) = *(a3 + 8);
  }

  v22 = sub_10003EDFC(v21);
  v23 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v24 = *a4;
  v25 = sub_10003EE2C(a3, *v14);
  sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %u", v22, v23, a5, v24, v25, *(v14 + 1), *v14, v16);
  v18 = 92;
  sub_100049C40(0x5F1, 92);
  return v18;
}

uint64_t sub_100018290(uint64_t a1)
{
  qword_100080CF8 = a1;
  if (!sub_100039748(&unk_100080D00, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 160, 0, 0, sub_100030C88))
  {
    sub_10003B84C(&unk_100080D00, 0, 64);
  }

  result = sub_10001C108(&unk_100080D00, "dir stats", sub_10001835C);
  if (result)
  {
    sub_100045744("failed to register the dir stats tree in the fsck memory storage\n");
    result = sub_100049C40(0x57C, 12);
  }

  byte_100080D40 = 0;
  return result;
}

uint64_t sub_10001835C(uint64_t result)
{
  if (qword_100080E28)
  {
    result = sub_10003B928(&unk_100080DF0, 0);
  }

  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    result = sub_10001835C(result);
  }

  if (qword_100080D38)
  {
    result = sub_10003B928(&unk_100080D00, 0);
  }

  qword_100080D48 = 0;
  return result;
}

uint64_t sub_1000183C8()
{
  if (qword_100080E28)
  {
    return sub_10003B928(&unk_100080DF0, 0);
  }

  return result;
}

void sub_10001843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C(a1);
  }

  if (qword_100080D38)
  {
    sub_100018660(a1);
    if (!v23)
    {
      if (a1 == a3)
      {
        v24 = 0;
      }

      else
      {
        v24 = a3;
      }

      qword_100080D60 = v24;
      qword_100080D68 = a2;
      if (a1 == a3)
      {
        v25 = 257;
      }

      else
      {
        v25 = 1;
      }

      if (a14)
      {
        v26 = 128;
      }

      else
      {
        v26 = 0;
      }

      *&xmmword_100080D50 = a15;
      *(&xmmword_100080D50 + 1) = a3;
      qword_100080D78 = a4;
      qword_100080D88 = a5;
      dword_100080DE8 = a7;
      qword_100080D98 = a6;
      if (a8)
      {
        v27 = 8;
      }

      else
      {
        v27 = 0;
      }

      qword_100080DA8 = a9;
      if (a10)
      {
        v28 = 32;
      }

      else
      {
        v28 = 0;
      }

      v29 = v27 | v28;
      qword_100080DB8 = a11;
      if (a12)
      {
        v30 = 64;
      }

      else
      {
        v30 = 0;
      }

      word_100080DEC = word_100080DEC & 0xFF16 | v25 | v26 | v29 | v30;
      qword_100080DC8 = a13;
    }
  }
}

void sub_1000185E4(uint64_t a1, uint64_t a2)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C(a1);
  }

  if (a2 && qword_100080D38)
  {
    sub_100018660(a1);
    if (!v4)
    {
      sub_10001870C(&qword_100080DA0, a2, a1, "resource fork size");
    }
  }
}

double sub_100018660(uint64_t a1)
{
  if (qword_100080D48 != a1 && !sub_10001A45C() && a1)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v3;
    v13 = v3;
    v10 = v3;
    v11 = v3;
    v8 = v3;
    v9 = v3;
    v6 = v3;
    v7 = v3;
    v4 = v3;
    v5 = v3;
    if (!sub_10001B350(a1, &v4))
    {
      qword_100080D48 = a1;
      *&qword_100080DB0 = v10;
      *&qword_100080DC0 = v11;
      xmmword_100080DD0 = v12;
      unk_100080DE0 = v13;
      *&qword_100080D70 = v6;
      *&qword_100080D80 = v7;
      *&qword_100080D90 = v8;
      *&qword_100080DA0 = v9;
      result = *&v4;
      xmmword_100080D50 = v4;
      *&qword_100080D60 = v5;
    }
  }

  return result;
}

char *sub_10001870C(char *result, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = __OFADD__(*result, a2);
  *result += a2;
  if (v5)
  {
    v6 = result;
    sub_100045744("dir-stats object (id %llu): %s overflow\n", a3, a4);
    *v6 = 0x7FFFFFFFFFFFFFFFLL;

    return sub_100049C40(0x56D, 84);
  }

  return result;
}

void sub_100018778(uint64_t a1, uint64_t a2, int a3)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C(a1);
  }

  if (qword_100080D38)
  {
    sub_100018660(a1);
    if (!v6)
    {
      if (a3)
      {
        sub_10001870C(&xmmword_100080DD0 + 8, 1, a1, "SAF descendants");
      }

      sub_10001870C(&qword_100080D80, 1, a1, "descendants");
      sub_10001870C(&qword_100080D90, a2, a1, "physical size");
    }
  }
}

void sub_100018834(uint64_t a1, uint64_t a2, int a3)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C(a1);
  }

  if (!qword_100080D38)
  {
    return;
  }

  sub_100018660(a1);
  if (v6)
  {
    return;
  }

  if ((qword_100080D70 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_11:
    qword_100080D70 = a2;
    if ((a3 & 0x20000000) != 0)
    {
      word_100080DEC |= 4u;
    }

    if ((a3 & 0x80000) != 0)
    {
      word_100080DEC |= 0x10u;
    }

    return;
  }

  v7 = qword_100080D68;
  if (!qword_100080D68)
  {
    sub_100045744("dir_stats (id %llu) already has a registered origin (id %llu), but we found another one (id %llu)\n", a1, qword_100080D70, a2);
    sub_100049C40(0x4DE, -8);
    goto LABEL_11;
  }

  if (qword_100080D68 == qword_100080D70)
  {
    sub_100045744("dir_stats (id %llu) already has a registered origin (id %llu), but we found another one (id %llu)\n", a1, qword_100080D70, a2);
    sub_100049C40(0x4DE, -8);
    return;
  }

  sub_100045744("dir_stats (id %llu) already has a registered origin (id %llu), but we found another one (id %llu)\n", a1, qword_100080D70, a2);
  sub_100049C40(0x4DE, -8);
  if (v7 == a2)
  {
    goto LABEL_11;
  }
}

void sub_100018974(uint64_t a1, uint64_t a2)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C(a1);
  }

  if (a2 && qword_100080D38)
  {
    sub_100018660(a1);
    if (!v4)
    {
      sub_10001870C(&qword_100080DB0, a2, a1, "clone size");
    }
  }
}

void sub_1000189F8(uint64_t a1, uint64_t a2)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C(a1);
  }

  if (a2 && qword_100080D38)
  {
    sub_100018660(a1);
    if (!v4)
    {
      sub_10001870C(&qword_100080DC0, a2, a1, "purgeable size");
    }
  }
}

void sub_100018A74(uint64_t a1, uint64_t a2)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C(a1);
  }

  if (a2 && qword_100080D38)
  {
    sub_100018660(a1);
    if (!v4)
    {
      sub_10001870C(&xmmword_100080DD0, a2, a1, "purgeable rsrc size");
    }
  }
}

uint64_t sub_100018AF0(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = &unk_100080000;
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C(a1);
  }

  v7 = &unk_100080000;
  if (!qword_100080D38)
  {
    return 0;
  }

  v119 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v8 = a2[6];
  if (!v8)
  {
    v8 = a2[5];
  }

  v9 = *(v8 + 56);
  v10 = sub_1000019A8();
  v11 = sub_10001A45C();
  if (v11)
  {
    goto LABEL_7;
  }

  *&v122 = 0;
  v11 = sub_10003B724(dword_100080D00, 0, &v122);
  if (!v122)
  {
    goto LABEL_103;
  }

  v92 = v10;
  v94 = v9;
  v95 = a3;
  v106 = 8;
  v105 = 160;
  if (!sub_100039CDC(dword_100080D00, 0, &v119, &v106, &v107, &v105))
  {
    while (1)
    {
      if ((BYTE9(v116) & 4) != 0 || (WORD6(v116) & 0x100) != 0 || v108 != *(&v107 + 1))
      {
        v11 = sub_10001A730(v5, a2, v119, &v107);
        if (v11)
        {
          break;
        }
      }

      v104 = 8;
      v103 = 160;
      if (sub_1000397B8(dword_100080D00, 0, 2, &v119, &v104, 8, &v107, &v103))
      {
        goto LABEL_16;
      }
    }

LABEL_7:
    v12 = v11;
    goto LABEL_104;
  }

LABEL_16:
  v102 = 8;
  v101 = 160;
  v96 = v5;
  if (sub_100039CDC(dword_100080D00, 0, &v119, &v102, &v107, &v101))
  {
LABEL_17:
    *v136 = 0;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    if (!sub_100039748(dword_100080DF0, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 0, 0, 0, sub_100030CBC))
    {
      sub_10003B84C(dword_100080DF0, 0, 64);
    }

    if (sub_10001C108(dword_100080DF0, "dir stats repairs", sub_1000183C8))
    {
      sub_100045744("failed to register the dir stats repair tree in the fsck memory storage\n");
      sub_100049C40(0x59C, 12);
    }

    if (qword_100080E28)
    {
      LODWORD(v97) = 8;
      LODWORD(v133) = 160;
      v11 = sub_100039CDC(dword_100080D00, 0, v136, &v97, &v122, &v133);
      if (v11)
      {
LABEL_25:
        v7 = &unk_100080000;
        if (qword_100080E28)
        {
          if (v6[3392] == 1)
          {
            v6[3392] = 0;
            v11 = sub_10001835C(v11);
          }

          if (qword_100080D38)
          {
            *&v122 = 0;
            sub_10003B724(dword_100080DF0, 0, &v122);
            v14 = v122;
            *&v122 = 0;
            v11 = sub_10003B724(dword_100080D00, 0, &v122);
            if (v14 == v122)
            {
              *&v122 = v118;
              LODWORD(v120) = 16;
              *v136 = 0;
              v11 = sub_1000397B8(dword_100080DF0, 0, 2, &v117, &v120, 16, &v134, v136);
              if (!v11)
              {
                *&v122 = v118;
                LODWORD(v97) = 8;
                LODWORD(v133) = 160;
                v11 = sub_1000397B8(dword_100080D00, 0, 0, &v122, &v97, 8, &v107, &v133);
              }

              v15 = 1;
              goto LABEL_99;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v120 = v131;
          v121 = *v136;
          v13 = sub_10003B12C(dword_100080DF0, 0, &v120, 16, &v134, 0);
          if (v13)
          {
            break;
          }

          LODWORD(v132) = 8;
          v135 = 160;
          v11 = sub_1000397B8(dword_100080D00, 0, 2, v136, &v132, 8, &v122, &v135);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v36 = v13;
        sub_100045744("failed to insert dir-stats entry %llu into the repair tree\n", *v136);
        sub_100049C40(0x59F, v36);
        v11 = sub_10003B928(dword_100080DF0, 0);
        v7 = &unk_100080000;
      }
    }

    else
    {
      sub_100045744("failed to init the dir stats repair tree\n");
      v11 = sub_100049C40(0x59E, 12);
    }

    if (v6[3392] == 1)
    {
      v6[3392] = 0;
      v11 = sub_10001835C(v11);
    }

    if (v7[423])
    {
      *&v122 = v118;
      LODWORD(v132) = 8;
      v135 = 160;
      v11 = sub_1000397B8(dword_100080D00, 0, 2, &v122, &v132, 8, &v107, &v135);
      v15 = 0;
      v117 = v116;
      v118 = v122;
LABEL_99:
      if (v11)
      {
LABEL_100:
        if (v11 == 2)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11;
        }

        goto LABEL_104;
      }

      if ((v94 & 0x200) != 0)
      {
        v38 = &v97;
      }

      else
      {
        v38 = &v132;
      }

      if ((v94 & 0x200) != 0)
      {
        v39 = 12;
      }

      else
      {
        v39 = 8;
      }

      v93 = v92 ^ 1;
      while (1)
      {
        v132 = (v118 & 0xFFFFFFFFFFFFFFFLL | 0xA000000000000000);
        v133 = v118;
        v97 = v118 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
        v98 = 18;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v121 = 0xAAAAAAAAAAAAAA00;
        v120 = v118;
        sub_10003F6E8(v5, a2, qword_100080CF8, 3, 1u, sub_10001AADC, &v120);
        if (v121)
        {
          goto LABEL_124;
        }

        v40 = " [reconstructed]";
        if ((WORD6(v116) & 0x200) == 0)
        {
          v40 = &byte_10005C3F3;
        }

        sub_100045614("\ndir-stats %llu (has dir-stats? %d)%s:\nflags: 0x%x\nchained-key: %llu (computed: %llu)\norigin-id: %llu (computed: %llu)\nshadow-key: %llu (exists? %d)\ndescendants: %llu (computed: %llu)\nSAF descendants: %llu\ndir-stats descendants: %llu\nphysical size: %llu (computed: %llu)\nresource fork size: %llu (computed: %llu)\nclone size: %llu (exists? %d; computed: %llu)\npurgeable size: %llu (exists? %d; computed: %llu)\npurgeable resource fork size: %llu (exists? %d; computed: %llu)\nhas calculating dir-stats? %d\norigin is SAF? %d (parent is SAF? %d)\norigin is purgeable? %d\n\n", v133, BYTE12(v116) & 1, v40, DWORD2(v116), *(&v107 + 1), v108, *(&v108 + 1), v109, v107, (WORD6(v116) >> 7) & 1, *(&v109 + 1), v110, *(&v115 + 1), v116, *(&v110 + 1), v111, *(&v111 + 1), v112, *(&v112 + 1), (WORD6(v116) >> 3) & 1, v113, *(&v113 + 1), (WORD6(v116) >> 5) & 1, v114, *(&v114 + 1), (WORD6(v116) >> 6) & 1, v115, (WORD6(v116) >> 1) & 1, (WORD6(v116) >> 2) & 1, (WORD6(v116) >> 10) & 1, (WORD6(v116) >> 4) & 1);
        if ((BYTE12(v116) & 1) != 0 && !v109 && !v110)
        {
          sub_100045744("found orphan dir-stats object (id %llu)\n", v133);
          sub_100049C40(0x576, -8);
          v11 = sub_10001BC00(v95, 0, 0, v38, v39, 0, 0);
          if (v11)
          {
            goto LABEL_7;
          }

LABEL_124:
          *&v122 = v118;
          if (v15)
          {
            goto LABEL_125;
          }

          goto LABEL_290;
        }

        v41 = DWORD2(v116);
        if ((~DWORD2(v116) & 0x30) == 0)
        {
          sub_100045744("found dir-stats object (id %llu) that is both shadow and calculating\n", v133);
          sub_100049C40(0x573, 92);
          v41 = DWORD2(v116);
        }

        if ((v41 & 0x120) != 0)
        {
          goto LABEL_124;
        }

        if ((BYTE12(v116) & 1) == 0)
        {
          v44 = &byte_10005C3F3;
          if (v109)
          {
            v44 = "an origin and ";
          }

          sub_100045744("missing dir-stats object (id %llu) referenced by %s%llu files / directories\n", v133, v44, v110);
          sub_100049C40(0x4E1, 92);
          if ((v109 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v11 = sub_10001AB68(v96, a2, v95, v38, &v107);
            if (v11)
            {
              goto LABEL_7;
            }
          }

          goto LABEL_286;
        }

        if ((v41 & 0x10) != 0)
        {
          break;
        }

        if ((v41 & 0x80) != 0)
        {
          if (*(&v108 + 1) && v109 == *(&v108 + 1))
          {
            goto LABEL_160;
          }

          if ((v109 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            if (!*(&v108 + 1))
            {
              sub_100045744("dir-stats object (id %llu) unexpectedly marked as having origin-id\n", v133);
              sub_100049C40(0x579, -3);
              DWORD2(v116) &= ~0x80u;
            }

            goto LABEL_160;
          }

          if (v109 == *(&v108 + 1))
          {
            goto LABEL_160;
          }

          sub_100045744("origin_id (%llu) of dir-stats object (id %llu) is not as expected (%llu)\n", *(&v108 + 1), v133, v109);
          v43 = 1400;
        }

        else
        {
          if (v109)
          {
            v42 = *(&v108 + 1) == 0;
          }

          else
          {
            v42 = 0;
          }

          if (v42)
          {
            goto LABEL_160;
          }

          if (!v109)
          {
            goto LABEL_160;
          }

          if (!*(&v108 + 1))
          {
            goto LABEL_160;
          }

          sub_100045744("dir-stats object (id %llu) unexpectedly unmarked as having origin-id\n", v133);
          sub_100049C40(0x57A, -3);
          DWORD2(v116) |= 0x80u;
          if ((v109 - 1) > 0xFFFFFFFFFFFFFFFDLL || *(&v108 + 1) == v109)
          {
            goto LABEL_160;
          }

          sub_100045744("origin_id (%llu) of dir-stats object (id %llu) is not as expected (%llu)\n", *(&v108 + 1), v133, v109);
          v43 = 1407;
        }

        sub_100049C40(v43, -2);
        v11 = sub_10001BC00(v95, 1, 4, v38, v39, &v109, 8u);
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_160:
        if (((((BYTE8(v116) & 0x10) == 0) ^ ((BYTE12(v116) & 2) >> 1)) & 1) == 0)
        {
          if ((BYTE8(v116) & 0x10) != 0)
          {
            sub_100045744("found shadow dir-stats object (id %llu) but did not find its calculating dir-stats (%llu)\n", v133, *(&v107 + 1));
            v45 = 1396;
          }

          else
          {
            sub_100045744("found non-shadow dir-stats object (id %llu) that has calculating dir-stats\n", v133);
            v45 = 1408;
          }

          sub_100049C40(v45, 92);
        }

        if (v107)
        {
          sub_100045744("found shadow key (%llu) on non-calculating dir-stats object (id %llu)\n", v107, v133);
          sub_100049C40(0x575, -2);
          v136[0] = 2;
          v11 = sub_10001BC00(v95, 1, 6, v38, v39, v136, 1u);
          if (v11)
          {
            goto LABEL_7;
          }
        }

        v46 = BYTE8(v116);
        if ((BYTE8(v116) & 0x12) == 2 && (BYTE12(v116) & 4) == 0)
        {
          sub_100045744("dir-stats object (id %llu) is SAF, but its origin isn't\n", v133);
          sub_100049C40(0x52F, 92);
          v46 = BYTE8(v116);
        }

        if ((v46 & 2) != 0 || (BYTE12(v116) & 4) != 0)
        {
          if (v110 == *(&v115 + 1))
          {
            goto LABEL_193;
          }

          v49 = "greater";
          if (*(&v115 + 1) < v110)
          {
            v49 = "less";
          }

          sub_100045744("SAF descendants (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v115 + 1), v133, v49, v110);
          sub_100049C40(0x530, 92);
          v47 = DWORD2(v116);
          if (v110 < 1 || *(&v115 + 1))
          {
            goto LABEL_192;
          }

          if ((BYTE8(v116) & 2) != 0)
          {
            DWORD2(v116) &= ~2u;
          }

          if ((BYTE12(v116) & 4) != 0 && (v109 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v11 = sub_100026C04(v95, v109, 0x20000000);
            if (v11)
            {
              goto LABEL_7;
            }

            v48 = -1;
LABEL_191:
            *(&v122 + 1) = v48;
          }
        }

        else if (!v116 && *(&v115 + 1) && (WORD6(v116) & 0x200) == 0)
        {
          sub_100045744("SAF descendants (%llu) of dir-stats object (id %llu) is greater than expected (0)\n", *(&v115 + 1), v133);
          sub_100049C40(0x59B, 92);
          v47 = DWORD2(v116);
          if (v110 >= 1 && *(&v115 + 1) == v110)
          {
            DWORD2(v116) |= 2u;
            if ((v109 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_193;
            }

            v11 = sub_100026B74(v95, v109, 0x20000000);
            if (v11)
            {
              goto LABEL_7;
            }

            v48 = 1;
            goto LABEL_191;
          }

LABEL_192:
          DWORD2(v116) = v47 | 0x100;
        }

LABEL_193:
        if (v110 != *(&v109 + 1))
        {
          v50 = "greater";
          if (*(&v109 + 1) < v110)
          {
            v50 = "less";
          }

          sub_100045744("descendants (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v109 + 1), v133, v50, v110);
          sub_100049C40(0x4E2, 92);
          v11 = sub_10001BC00(v95, 1, 2, v38, v39, &v110, 8u);
          if (v11)
          {
            goto LABEL_7;
          }
        }

        if (v111 != *(&v110 + 1))
        {
          v51 = "greater";
          if (*(&v110 + 1) < v111)
          {
            v51 = "less";
          }

          sub_100045744("physical_size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v110 + 1), v133, v51, v111);
          sub_100049C40(0x4E3, 92);
          v11 = sub_10001BC00(v95, 1, 5, v38, v39, &v111, 8u);
          if (v11)
          {
            goto LABEL_7;
          }
        }

        if (!(((BYTE12(v116) & 8) == 0) | v93 & 1))
        {
          sub_100045614("skipping dir stats clone sizes repair because the clone mapping repairs were aborted\n");
          goto LABEL_210;
        }

        if ((BYTE12(v116) & 8) != 0 && (*(&v112 + 1) & 0x8000000000000000) != 0)
        {
          sub_100045744("skipping dir stats clone sizes repair: present clone size %llu > %llu\n", *(&v112 + 1), 0x7FFFFFFFFFFFFFFFLL);
          v52 = 1417;
          v53 = 84;
LABEL_209:
          sub_100049C40(v52, v53);
          goto LABEL_210;
        }

        if ((BYTE12(v116) & 8) != 0 && (v113 & 0x8000000000000000) != 0)
        {
          sub_100045614("skipping dir stats clone sizes repair because the computed clone size is negative\n");
          v52 = 1418;
          v53 = 92;
          goto LABEL_209;
        }

        if ((BYTE12(v116) & 8) != 0 && (BYTE8(v116) & 4) != 0)
        {
          goto LABEL_252;
        }

        if (!(BYTE12(v116) & 8 | BYTE8(v116) & 4))
        {
          goto LABEL_210;
        }

        if ((BYTE8(v116) & 4) != 0)
        {
          if ((BYTE12(v116) & 8) != 0)
          {
LABEL_252:
            if (v113 == *(&v112 + 1))
            {
              goto LABEL_210;
            }

            v76 = "greater";
            if (*(&v112 + 1) < v113)
            {
              v76 = "less";
            }

            sub_100045744("clone size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v112 + 1), v133, v76, v113);
            v77 = 1380;
            v78 = 92;
          }

          else
          {
            sub_100045744("clone size xfield is missing from dir-stats object (id %llu)\n", v133);
            v77 = 1379;
            v78 = -3;
          }

          sub_100049C40(v77, v78);
          *v136 = 524289;
          *&v136[4] = v113;
          v79 = v95;
          v80 = 8;
          v81 = v38;
          v82 = v39;
          v83 = 12;
          goto LABEL_257;
        }

        if ((BYTE12(v116) & 8) == 0)
        {
          goto LABEL_210;
        }

        sub_100045744("clone size xfield of dir-stats object (id %llu) exists unexpectedly\n", v133);
        sub_100049C40(0x562, -3);
        v136[0] = 1;
        v79 = v95;
        v80 = 6;
        v81 = v38;
        v82 = v39;
        v83 = 1;
LABEL_257:
        v11 = sub_10001BC00(v79, 1, v80, v81, v82, v136, v83);
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_210:
        v54 = BYTE8(v116);
        if ((WORD4(v116) & 0x800) != 0)
        {
          if ((~DWORD2(v116) & 9) == 0 && (BYTE12(v116) & 0x40) != 0 && v115 == *(&v114 + 1))
          {
            goto LABEL_228;
          }

          if ((BYTE8(v116) & 8) == 0)
          {
            sub_100045744("purgeable resource forks are maintained on dir-stats object (id %llu) but not purgeable data forks\n", v133);
            sub_100049C40(0x5AF, -3);
            v54 = BYTE8(v116) | 8;
            DWORD2(v116) |= 8u;
          }

          if ((v54 & 1) == 0)
          {
            sub_100045744("purgeable resource forks are maintained on dir-stats object (id %llu) but not rsrc forks\n", v133);
            sub_100049C40(0x5B0, -3);
            DWORD2(v116) |= 1u;
          }

          if ((BYTE12(v116) & 0x40) != 0)
          {
            if (v115 == *(&v114 + 1))
            {
              goto LABEL_228;
            }

            v62 = "greater";
            if (*(&v114 + 1) < v115)
            {
              v62 = "less";
            }

            sub_100045744("purgeable resource fork size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v114 + 1), v133, v62, v115);
            v60 = 1458;
            v61 = 92;
          }

          else
          {
            sub_100045744("purgeable resource fork size xfield is missing from dir-stats object (id %llu)\n", v133);
            v60 = 1457;
            v61 = -3;
          }

          sub_100049C40(v60, v61);
          *v136 = 524292;
          *&v136[4] = v115;
          v55 = v95;
          v56 = 8;
          v57 = v38;
          v58 = v39;
          v59 = 12;
        }

        else
        {
          if ((BYTE12(v116) & 0x40) == 0)
          {
            goto LABEL_228;
          }

          sub_100045744("purgeable resource fork size xfield of dir-stats object (id %llu) exists unexpectedly\n", v133);
          sub_100049C40(0x5B3, -3);
          v136[0] = 4;
          v55 = v95;
          v56 = 6;
          v57 = v38;
          v58 = v39;
          v59 = 1;
        }

        v11 = sub_10001BC00(v55, 1, v56, v57, v58, v136, v59);
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_228:
        v63 = BYTE8(v116);
        if ((BYTE8(v116) & 0x50) != 0x40)
        {
          goto LABEL_235;
        }

        if ((BYTE8(v116) & 8) != 0)
        {
          if ((BYTE12(v116) & 0x10) != 0)
          {
LABEL_235:
            LOBYTE(v64) = BYTE8(v116);
            goto LABEL_236;
          }
        }

        else
        {
          sub_100045744("dir-stats object (id %llu) is purgeable, but it doesn't track purgeable size\n", v133);
          sub_100049C40(0x568, 92);
        }

        if ((v109 - 1) > 0xFFFFFFFFFFFFFFFDLL || (BYTE12(v116) & 0x10) != 0)
        {
          v64 = DWORD2(v116);
          if ((v63 & 8) != 0)
          {
            goto LABEL_236;
          }
        }

        else
        {
          sub_100045744("dir-stats object (id %llu) is purgeable, but its origin isn't\n", v133);
          sub_100049C40(0x569, 92);
          v64 = DWORD2(v116);
        }

        v75 = v64;
        v64 &= ~0x40u;
        DWORD2(v116) = v64;
        *&v125 = v114 - v111;
        if ((v75 & 0x800) != 0)
        {
          *(&v125 + 1) = v115 - v112;
        }

LABEL_236:
        if ((v64 & 8) != 0 && (BYTE12(v116) & 0x20) != 0)
        {
          v65 = *(&v113 + 1);
          v66 = v114;
          if (v114 == *(&v113 + 1))
          {
            goto LABEL_263;
          }

          goto LABEL_239;
        }

        if (!(v64 & 8 | BYTE12(v116) & 0x20))
        {
          goto LABEL_263;
        }

        if ((v64 & 8) != 0)
        {
          if ((BYTE12(v116) & 0x20) == 0)
          {
            sub_100045744("purgeable size xfield is missing from dir-stats object (id %llu)\n", v133);
            v68 = 1387;
            v69 = -3;
LABEL_261:
            sub_100049C40(v68, v69);
            *v136 = 524291;
            *&v136[4] = v114;
            v70 = v95;
            v71 = 8;
            v72 = v38;
            v73 = v39;
            v74 = 12;
            goto LABEL_262;
          }

          v65 = *(&v113 + 1);
          v66 = v114;
LABEL_239:
          if (v66 == v65)
          {
            goto LABEL_263;
          }

          v67 = "greater";
          if (v65 < v66)
          {
            v67 = "less";
          }

          sub_100045744("purgeable size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v65, v133, v67, v66);
          v68 = 1388;
          v69 = 92;
          goto LABEL_261;
        }

        if ((BYTE12(v116) & 0x20) == 0)
        {
          goto LABEL_263;
        }

        sub_100045744("purgeable size xfield of dir-stats object (id %llu) exists unexpectedly\n", v133);
        sub_100049C40(0x56A, -3);
        v136[0] = 3;
        v70 = v95;
        v71 = 6;
        v72 = v38;
        v73 = v39;
        v74 = 1;
LABEL_262:
        v11 = sub_10001BC00(v70, 1, v71, v72, v73, v136, v74);
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_263:
        if (BYTE8(v116))
        {
          if (v112 == *(&v111 + 1))
          {
            goto LABEL_271;
          }

          v85 = "greater";
          if (*(&v111 + 1) < v112)
          {
            v85 = "less";
          }

          sub_100045744("resource fork size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v111 + 1), v133, v85, v112);
          sub_100049C40(0x558, 92);
          v84 = &v112;
        }

        else
        {
          if (!*(&v111 + 1))
          {
            goto LABEL_271;
          }

          sub_100045744("resource fork size (%llu) of dir-stats object (id %llu) exists unexpectedly\n", *(&v111 + 1), v133);
          sub_100049C40(0x566, 92);
          *v136 = 0;
          v84 = v136;
        }

        v11 = sub_10001BC00(v95, 1, 7, v38, v39, v84, 8u);
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_271:
        v86 = DWORD2(v116);
        if ((WORD4(v116) & 0x400) != 0)
        {
          v87 = *(&v107 + 1);
          v88 = v108;
LABEL_276:
          sub_100045744("found dir-stats object (id %llu; flags 0x%x) with bad chained key (%llu/%llu)\n", v133, DWORD2(v116), v87, v88);
          sub_100049C40(0x591, 92);
          if (*(&v107 + 1) != v108)
          {
            v11 = sub_10001BC00(v95, 1, 1, v38, v39, &v108, 8u);
            if (v11)
            {
              goto LABEL_7;
            }
          }

          v86 = DWORD2(v116);
          if ((WORD4(v116) & 0x400) != 0)
          {
            v86 = DWORD2(v116) & 0xFFFFFBFF;
            DWORD2(v116) &= ~0x400u;
          }

          if ((v94 & 0x200) != 0)
          {
            DWORD2(v116) = v86 | 0x100;
            v11 = sub_10001B004(v96, a2, v95, v133, v108);
            if (v11)
            {
              goto LABEL_7;
            }

            v86 = DWORD2(v116);
          }

          goto LABEL_283;
        }

        v87 = *(&v107 + 1);
        v88 = v108;
        if ((WORD6(v116) & 0x100) != 0 || v108 != *(&v107 + 1))
        {
          goto LABEL_276;
        }

LABEL_283:
        if (v41 != v86)
        {
          v11 = sub_10001BC00(v95, 1, 3, v38, v39, &v116 + 8, 4u);
          if (v11)
          {
            goto LABEL_7;
          }

          v11 = sub_10003B12C(dword_100080D00, 0, &v133, 8, &v107, 160);
          if (v11)
          {
            goto LABEL_7;
          }
        }

LABEL_286:
        if (v15)
        {
          v11 = sub_10001B2B8(&v107, &v122);
          if (v11)
          {
            goto LABEL_7;
          }

          *&v122 = v118;
LABEL_125:
          LODWORD(v120) = 16;
          *v136 = 0;
          v11 = sub_1000397B8(dword_100080DF0, 0, 2, &v117, &v120, 16, &v134, v136);
          if (!v11)
          {
            *&v122 = v118;
            LODWORD(v97) = 8;
            LODWORD(v133) = 160;
            v11 = sub_1000397B8(dword_100080D00, 0, 0, &v122, &v97, 8, &v107, &v133);
          }

          goto LABEL_291;
        }

        *&v122 = v118;
LABEL_290:
        LODWORD(v132) = 8;
        v135 = 160;
        v11 = sub_1000397B8(dword_100080D00, 0, 2, &v122, &v132, 8, &v107, &v135);
        v117 = v116;
        v118 = v122;
LABEL_291:
        v5 = v96;
        if (v11)
        {
          goto LABEL_100;
        }
      }

      if ((v41 & 0x80) != 0)
      {
        sub_100045744("shadow dir-stats object (id %llu) unexpectedly marked as having origin-id\n", v133);
        sub_100049C40(0x57D, -3);
        DWORD2(v116) &= ~0x80u;
      }

      else if (!v109)
      {
        if (!*(&v108 + 1))
        {
          goto LABEL_160;
        }

        goto LABEL_157;
      }

      if (!*(&v108 + 1))
      {
LABEL_158:
        if (v109)
        {
          sub_100045744("found shadow dir-stats object (id %llu) with origin (id %llu)\n", v133, v109);
          sub_100049C40(0x572, -2);
        }

        goto LABEL_160;
      }

LABEL_157:
      sub_100045744("shadow dir-stats object (id %llu) unexpectedly has origin-id\n", v133);
      sub_100049C40(0x57E, -2);
      *v136 = 0;
      v11 = sub_10001BC00(v95, 1, 4, v38, v39, v136, 8u);
      if (v11)
      {
        goto LABEL_7;
      }

      goto LABEL_158;
    }

LABEL_103:
    v12 = 0;
    goto LABEL_104;
  }

  v16 = dword_100080D00;
  while (1)
  {
    if (BYTE12(v116))
    {
      goto LABEL_91;
    }

    v17 = v16;
    v18 = v119;
    *v136 = v119;
    v19 = a2[6];
    if (!v19)
    {
      v19 = a2[5];
    }

    v20 = *(v19 + 56);
    v97 = v119 & 0xFFFFFFFFFFFFFFFLL | 0xA000000000000000;
    v120 = v119 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
    v21 = (v20 & 0x200) != 0 ? 18 : 10;
    LODWORD(v121) = 18;
    v22 = (v20 & 0x200) != 0 ? &v120 : &v97;
    v23 = (v20 & 0x200) != 0 ? 12 : 8;
    v135 = v23;
    v122 = 0u;
    v123 = 0u;
    if ((v20 & 0x200) != 0)
    {
      v26 = 3808;
      v27 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xB471C2A6uLL);
      if (!v27)
      {
        sub_10004565C("failed to allocate memory for dir-stats lookup\n");
        v12 = 12;
        sub_100049C40(0x560, 12);
        v24 = 0;
        goto LABEL_305;
      }

      v25 = v27;
      v24 = v27;
    }

    else
    {
      v24 = 0;
      v25 = &v122;
      v26 = 32;
    }

    v134 = v26;
    v133 = 0xAAAAAAAAAAAAAAAALL;
    v28 = sub_10003F8AC(v96, a2, v21, &v133);
    if (v28)
    {
      break;
    }

    v29 = sub_1000397B8(v133, qword_100080CF8, 0, v22, &v135, v23, v25, &v134);
    if (v29)
    {
      v12 = v29;
      v5 = v96;
      v16 = v17;
      v6 = &unk_100080000;
      if (v29 != 2)
      {
        v90 = strerror(v29);
        sub_10004565C("failed to look up dir-stats object (id %llu): %s\n", v18, v90);
        v91 = 1247;
        goto LABEL_304;
      }

      goto LABEL_89;
    }

    WORD6(v116) |= 1u;
    v5 = v96;
    if ((v20 & 0x200) == 0)
    {
      v30 = *(&v122 + 1);
      v31 = __OFADD__(v110, v122);
      *(&v109 + 1) = v122;
      *&v110 = v110 + v122;
      *(&v110 + 1) = *(&v122 + 1);
      if (v31)
      {
        sub_100045744("dir-stats object (id %llu): %s overflow\n", v18, "descendants");
        *&v110 = 0x7FFFFFFFFFFFFFFFLL;
        sub_100049C40(0x56D, 84);
        v30 = *(&v122 + 1);
      }

      v31 = __OFADD__(v111, v30);
      *&v111 = v111 + v30;
      v16 = v17;
      if (v31)
      {
        sub_100045744("dir-stats object (id %llu): %s overflow\n", v18, "physical size");
        *&v111 = 0x7FFFFFFFFFFFFFFFLL;
        sub_100049C40(0x56D, 84);
      }

      *&v109 = -1;
      v6 = &unk_100080000;
      goto LABEL_88;
    }

    DWORD2(v116) = *(v24 + 12);
    v32 = ((DWORD2(v116) >> 4) & 1) - 1;
    if (v24[3])
    {
      v32 = v24[3];
    }

    *(&v108 + 1) = v24[3];
    *&v109 = v32;
    v33 = v24[1];
    v31 = __OFADD__(v110, *v24);
    v34 = v110 + *v24;
    *(&v109 + 1) = *v24;
    *&v110 = v34;
    *(&v110 + 1) = v33;
    if (v31)
    {
      sub_100045744("dir-stats object (id %llu): %s overflow\n", v18, "descendants");
      *&v110 = 0x7FFFFFFFFFFFFFFFLL;
      sub_100049C40(0x56D, 84);
      v33 = v24[1];
    }

    v31 = __OFADD__(v111, v33);
    *&v111 = v111 + v33;
    v16 = v17;
    if (v31)
    {
      sub_100045744("dir-stats object (id %llu): %s overflow\n", v18, "physical size");
      *&v111 = 0x7FFFFFFFFFFFFFFFLL;
      sub_100049C40(0x56D, 84);
    }

    v35 = WORD4(v116);
    v6 = &unk_100080000;
    if (BYTE8(v116))
    {
      *(&v111 + 1) = v24[2];
      sub_10001870C(&v112, *(&v111 + 1), v18, "resource fork size");
      v35 = WORD4(v116);
      if ((BYTE8(v116) & 4) != 0)
      {
LABEL_75:
        v132 = 0;
        if (!sub_100040474(v24 + 26, v134 - 52, 1, &v132, 0, 0, 0))
        {
          WORD6(v116) |= 8u;
          *(&v112 + 1) = *v132;
          sub_10001870C(&v113, *(&v112 + 1), *v136, "clone size");
        }

        v35 = WORD4(v116);
        if ((BYTE8(v116) & 8) == 0)
        {
          goto LABEL_82;
        }

LABEL_78:
        v132 = 0;
        if (!sub_100040474(v24 + 26, v134 - 52, 3, &v132, 0, 0, 0))
        {
          WORD6(v116) |= 0x20u;
          *(&v113 + 1) = *v132;
          sub_10001870C(&v114, *(&v113 + 1), *v136, "purgeable size");
        }

        v35 = WORD4(v116);
        if ((BYTE8(v116) & 0x40) != 0)
        {
          WORD6(v116) |= 0x10u;
        }

        goto LABEL_82;
      }
    }

    else if ((BYTE8(v116) & 4) != 0)
    {
      goto LABEL_75;
    }

    if ((v35 & 8) != 0)
    {
      goto LABEL_78;
    }

LABEL_82:
    if ((v35 & 0x800) != 0)
    {
      v132 = 0;
      if (!sub_100040474(v24 + 26, v134 - 52, 4, &v132, 0, 0, 0))
      {
        WORD6(v116) |= 0x40u;
        *(&v114 + 1) = *v132;
        sub_10001870C(&v115, *(&v114 + 1), *v136, "purgeable rsrc size");
      }

      LOBYTE(v35) = BYTE8(v116);
    }

    if ((v35 & 2) != 0)
    {
      WORD6(v116) |= 4u;
      sub_10001870C(&v115 + 8, *v24, *v136, "SAF descendants");
    }

LABEL_88:
    WORD6(v116) |= 0x200u;
    v11 = sub_10003B12C(v16, 0, v136, 8, &v107, 160);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_89:
    free(v24);
    v7 = &unk_100080000;
    if ((BYTE12(v116) & 1) == 0)
    {
      v11 = sub_10001A730(v5, a2, v119, &v107);
      if (v11)
      {
        goto LABEL_7;
      }
    }

LABEL_91:
    v100 = 8;
    v99 = 160;
    if (sub_1000397B8(v16, 0, 2, &v119, &v100, 8, &v107, &v99))
    {
      goto LABEL_17;
    }
  }

  v12 = v28;
  v89 = strerror(v28);
  sub_10004565C("failed to get fsroot tree for jobj type %d: %s\n", v21, v89);
  v91 = 1447;
LABEL_304:
  sub_100049C40(v91, v12);
LABEL_305:
  free(v24);
LABEL_104:
  sub_10001835C(v11);
  return v12;
}

uint64_t sub_10001A45C()
{
  if (!qword_100080D48)
  {
    return 0;
  }

  v43 = 0;
  v44 = 0;
  v0 = xmmword_100080D50;
  result = sub_10001B3F0(&xmmword_100080D50, &v44, &v43);
  if (result)
  {
    return result;
  }

  v2 = v43;
  v3 = v44;
  if (!v44 && !v0 && v43 == 0)
  {
    v5 = 0;
LABEL_10:
    result = sub_10001BAD8(v2, v5);
    if (!result)
    {
      result = sub_10001B6B4(qword_100080D48, &xmmword_100080D50);
      if (!result)
      {
        qword_100080D48 = 0;
      }
    }

    return result;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v6;
  v42 = v6;
  v39 = v6;
  v40 = v6;
  v37 = v6;
  v38 = v6;
  v35 = v6;
  v36 = v6;
  v33 = v6;
  v34 = v6;
  v31 = 0u;
  v32 = 0u;
  __s2 = 0u;
  v30 = 0u;
  v27 = 160;
  v28 = 8;
  result = sub_1000397B8(dword_100080D00, 0, 0, &qword_100080D48, &v28, 8, &v33, &v27);
  if (result)
  {
    return result;
  }

  if (qword_100080D60)
  {
    v7 = v34 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = (qword_100080D70 - 1) < 0xFFFFFFFFFFFFFFFELL;
  if (v8 == 1)
  {
    v10 = (word_100080DEC >> 2) & 1;
  }

  else
  {
    v9 = (qword_100080D70 - 1) < 0xFFFFFFFFFFFFFFFELL && (v35 + 1) < 2;
    v10 = ((BYTE12(v42) & 4) == 0) & (word_100080DEC >> 2);
  }

  sub_10001B490(&v33, v8, word_100080DEC & (BYTE12(v42) ^ 1) & 1, v9, v10, &__s2);
  if (!v0)
  {
    goto LABEL_53;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v12;
  v26 = v12;
  v23 = v12;
  v24 = v12;
  v21 = v12;
  v22 = v12;
  v19[2] = v12;
  v20 = v12;
  v19[0] = v12;
  v19[1] = v12;
  if (xmmword_100080D50)
  {
    v13 = v33 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  sub_10001B490(&v33, v14, 0, 0, 0, v17);
  result = sub_10001B350(v0, v19);
  if (!result)
  {
    if (v14)
    {
      v18 = v18 - v26 - (BYTE12(v26) & 1);
    }

    sub_10001B5B8(v0, v19, v17);
    if (word_100080DEC)
    {
      WORD6(v26) |= 2u;
    }

    result = sub_10001B6B4(v0, v19);
    v15 = v8 ^ 1;
    if (result)
    {
      v15 = 1;
    }

    if (v15)
    {
      if (result)
      {
        return result;
      }

      goto LABEL_53;
    }

    *&__s2 = v20 + v9;
    *(&__s2 + 1) = *(&v25 + 1) + v10;
    v16 = v22;
    *(&v30 + 1) = v21;
    *&v31 = v22;
    *(&v31 + 1) = v23;
    if ((BYTE8(v26) & 0x40) != 0)
    {
      *&v32 = v21;
      if ((WORD4(v26) & 0x800) != 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      *&v32 = v24;
      if ((WORD4(v26) & 0x800) != 0)
      {
        v16 = v25;
LABEL_52:
        *(&v32 + 1) = v16;
      }
    }

LABEL_53:
    result = sub_10001B920(v3, &__s2);
    if (result)
    {
      return result;
    }

    v5 = v30;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10001A730(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  if ((~*(a4 + 152) & 0x410) == 0 && (*(a4 + 156) & 0x100) == 0)
  {
    LODWORD(v7) = 0;
    v8 = *(a4 + 8);
    v45 = v8;
    goto LABEL_9;
  }

  v9 = *(a4 + 32);
  if ((v9 + 1) <= 1)
  {
    v9 = *(a4 + 24);
  }

  if ((v9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v45 = 0;
  if (v9 == 2)
  {
    v8 = 0;
    LODWORD(v7) = 0;
    goto LABEL_9;
  }

  v38 = 0xAAAAAAAAAAAAAAAALL;
  v49 = v9 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v48 = 8;
  v26 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x4642D9C4uLL);
  v47 = 3808;
  if (!v26)
  {
    sub_10004565C("unable to allocate memory to repair dir-stats chained key\n");
    v25 = 12;
    v28 = 1430;
    v29 = 12;
    goto LABEL_22;
  }

  v27 = sub_10003F8AC(a1, a2, 3u, &v38);
  if (v27)
  {
    v25 = v27;
    sub_10004565C("failed to init fsroot tree to repair dir-stats chained key\n");
    v28 = 1431;
LABEL_20:
    v29 = v25;
LABEL_22:
    sub_100049C40(v28, v29);
    free(v26);
    return v25;
  }

  v30 = sub_1000397B8(v38, qword_100080CF8, 0, &v49, &v48, 8, v26, &v47);
  if (v30)
  {
    v25 = v30;
    if (v30 == 2)
    {
      free(v26);
      return 0;
    }

    v35 = strerror(v30);
    sub_10004565C("unable to load inode (id %llu) to repair dir-stats chained key: %s\n", v9, v35);
    sub_100049C40(0x598, v25);
    LOBYTE(v7) = 0;
    goto LABEL_33;
  }

  v32 = *v26;
  v49 = *v26 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v47 = 3808;
  v33 = sub_1000397B8(v38, qword_100080CF8, 0, &v49, &v48, v48, v26, &v47);
  if (v33)
  {
    v25 = v33;
    v34 = strerror(v33);
    sub_10004565C("unable to load inode (id %llu) to repair dir-stats chained key: %s\n", v32, v34);
    v28 = 1433;
    goto LABEL_20;
  }

  v7 = (v26[6] >> 29) & 1;
  v36 = sub_100040B74(v26, v47, 10, &v45);
  if (v36 == 2)
  {
    v8 = 0;
    v45 = 0;
  }

  else
  {
    v25 = v36;
    if (v36)
    {
      v37 = strerror(v36);
      sub_10004565C("unable to get dir-stats key of inode (id %llu) to repair dir-stats chained key: %s\n", v32, v37);
      sub_100049C40(0x59A, v25);
LABEL_33:
      free(v26);
      if (v25)
      {
        return v25;
      }

LABEL_10:
      if (v7)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v8 = v45;
  }

  free(v26);
LABEL_9:
  if (v8 == *(a4 + 16))
  {
    goto LABEL_10;
  }

  v11 = -*(a4 + 136) - ((*(a4 + 156) >> 2) & 1);
  v12 = ~*(a4 + 144);
  v13 = -*(a4 + 64);
  v14 = -*(a4 + 80);
  v15 = -*(a4 + 96);
  v16 = -*(a4 + 112);
  v17 = -*(a4 + 128);
  v38 = ~*(a4 + 48);
  v39.i64[0] = v11;
  v39.i64[1] = v12;
  v40 = v13;
  v41 = v14;
  v42 = v15;
  v43 = v16;
  v44 = v17;
  v10 = sub_10001B2B8(a4, &v38);
  if (!v10)
  {
    *(a4 + 16) = v45;
    v18 = (*(a4 + 156) >> 2) & 1;
    v19 = *(a4 + 64);
    v20 = *(a4 + 80);
    v21 = *(a4 + 96);
    v22 = *(a4 + 112);
    v23 = *(a4 + 128);
    v38 = *(a4 + 48) + 1;
    v24 = vdupq_n_s64(1uLL);
    v24.i64[0] = v18;
    v39 = vaddq_s64(*(a4 + 136), v24);
    v40 = v19;
    v41 = v20;
    v42 = v21;
    v43 = v22;
    v44 = v23;
    v10 = sub_10001B2B8(a4, &v38);
    if (!v10)
    {
      if (!v7)
      {
LABEL_12:
        v10 = sub_10003B12C(dword_100080D00, 0, &v46, 8, a4, 160);
        if (!v10)
        {
          return 0;
        }

        return v10;
      }

LABEL_11:
      *(a4 + 156) |= 0x400u;
      goto LABEL_12;
    }
  }

  return v10;
}

uint64_t sub_10001AADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (a4 & 0xFFFFFFFC) == 0x5C || (*(a3 + 48) & 2) == 0;
  if (v7)
  {
    return 0;
  }

  v10[3] = v5;
  v10[4] = v6;
  v10[0] = 0;
  LODWORD(result) = sub_100040B74(a3, a4, 10, v10);
  if (result)
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

  else
  {
    v7 = v10[0] == *a5;
    *(a5 + 8) = v7;
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001AB68(uint64_t a1, void *a2, _DWORD *a3, char *a4, uint64_t a5)
{
  v9 = a2[6];
  v10 = v9;
  if (!v9)
  {
    v10 = a2[5];
  }

  if ((*(v10 + 57) & 2) != 0)
  {
    v13 = *(a5 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }

    if (!v9)
    {
      v9 = a2[5];
    }

    if ((*(v9 + 57) & 2) == 0)
    {
LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }

    v41 = 0xAAAAAAAAAAAAAAAALL;
    v42 = v13 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
    LODWORD(v43) = 18;
    v39 = 3808;
    v40 = 12;
    v21 = sub_10003F8AC(a1, a2, 0x12u, &v41);
    if (v21)
    {
      v12 = v21;
      v22 = strerror(v21);
      sub_10004565C("failed to get fsroot tree to find expanded dir-stats %llu: %s\n", v13, v22);
      sub_100049C40(0x5A1, v12);
      v23 = 0;
    }

    else
    {
      v23 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x184A08F5uLL);
      if (v23)
      {
        v28 = sub_1000397B8(v41, a2[7], 0, &v42, &v40, 12, v23, &v39);
        if (!v28)
        {
          v14 = v23[12];
          free(v23);
          if (v14 > 0xFFF)
          {
            v18 = 0;
            v12 = 0;
            goto LABEL_51;
          }

LABEL_10:
          v15 = ((v14 << 29) >> 31) & 0xC;
          if ((v14 & 8) != 0)
          {
            v15 = (((v14 << 29) >> 31) & 0xC) + 12;
          }

          if (v14 >= 0x800)
          {
            v15 += 12;
          }

          if (v15)
          {
            v16 = v15 + 4;
          }

          else
          {
            v16 = 0;
          }

          v17 = malloc_type_calloc(1uLL, v16 + 52, 0x5C640E9CuLL);
          v18 = v17;
          if (v17)
          {
            *v17 = *(a5 + 48);
            v17[1] = *(a5 + 64);
            v17[4] = v13;
            v17[5] = (random() << 32) | 0x80000000;
            v18[3] = *(a5 + 32);
            v19 = *(v18 + 12);
            v20 = v19 | 0x80;
            *(v18 + 12) = v19 | 0x80;
            if ((v14 & 1) != 0 || !*(a5 + 144))
            {
              v18[2] = *(a5 + 80);
              v20 = v19 | 0x81;
              *(v18 + 12) = v19 | 0x81;
              if ((v14 & 4) == 0)
              {
LABEL_21:
                if ((v14 & 8) == 0)
                {
                  goto LABEL_37;
                }

                goto LABEL_34;
              }
            }

            else if ((v14 & 4) == 0)
            {
              goto LABEL_21;
            }

            v24 = sub_10004052C(v18 + 26, v16, 1, (a5 + 96), 8u, 0);
            if (!v24)
            {
              v20 = *(v18 + 12) | 4;
              *(v18 + 12) = v20;
              if ((v14 & 8) == 0)
              {
                goto LABEL_37;
              }

LABEL_34:
              v32 = sub_10004052C(v18 + 26, v16, 3, (a5 + 112), 8u, 0);
              if (v32)
              {
                v12 = v32;
                v33 = strerror(v32);
                sub_10004565C("can't add purgeable size for dir-stats: %s (%d)\n", v33, v12);
                v34 = 1446;
LABEL_40:
                sub_100049C40(v34, v12);
                goto LABEL_51;
              }

              v20 = *(v18 + 12) | 8;
              *(v18 + 12) = v20;
LABEL_37:
              if (v14 >= 0x800)
              {
                v35 = sub_10004052C(v18 + 26, v16, 4, (a5 + 128), 8u, 0);
                if (v35)
                {
                  v12 = v35;
                  v36 = strerror(v35);
                  sub_10004565C("can't add purgeable resource fork size for dir-stats: %s (%d)\n", v36, v12);
                  v34 = 1454;
                  goto LABEL_40;
                }

                v20 = *(v18 + 12) | 0x800;
                *(v18 + 12) = v20;
              }

              v37 = *(a5 + 156) & 0x404;
              if ((v14 & 0x100) != 0 || v37 == 4)
              {
                if (v37 == 4)
                {
                  v20 |= 2u;
                }

                *(v18 + 12) = v20 | v14 & 0x100;
              }

              v12 = sub_10001BC00(a3, 2, 0, a4, 12, v18, v16 + 52);
              goto LABEL_51;
            }

            v12 = v24;
            v25 = strerror(v24);
            sub_10004565C("can't add clone size for dir-stats: %s (%d)\n", v25, v12);
            v26 = 1445;
            v27 = v12;
          }

          else
          {
            sub_10004565C("failed to allocate memory for insertion of dir-stats\n");
            v12 = 12;
            v26 = 1444;
            v27 = 12;
          }

          sub_100049C40(v26, v27);
LABEL_51:
          free(v18);
          return v12;
        }

        v12 = v28;
        v29 = strerror(v28);
        sub_10004565C("unable to load dir-stats %llu to retrieve attributes: %s\n", v13, v29);
        v30 = 1443;
        v31 = v12;
      }

      else
      {
        sub_10004565C("failed to allocate memory to find dir-stats %llu\n", v13);
        v12 = 12;
        v30 = 1442;
        v31 = 12;
      }

      sub_100049C40(v30, v31);
    }

    free(v23);
    v18 = 0;
    goto LABEL_51;
  }

  v11 = *(a5 + 64);
  v42 = *(a5 + 48);
  v43 = v11;
  v44 = *(a5 + 16);
  v45 = (random() << 32) | 0x80000000;
  return sub_10001BC00(a3, 2, 0, a4, 8, &v42, 0x20u);
}

BOOL sub_10001AF84(uint64_t a1)
{
  if ((*(a1 + 152) & 2) != 0 || (*(a1 + 156) & 4) != 0)
  {
    return *(a1 + 48) == *(a1 + 136);
  }

  else
  {
    if (*(a1 + 144))
    {
      return 1;
    }

    return *(a1 + 136) == 0;
  }
}

BOOL sub_10001AFC4(uint64_t a1)
{
  v1 = *(a1 + 152);
  if ((v1 & 0x800) != 0)
  {
    if ((~v1 & 9) != 0 || (*(a1 + 156) & 0x40) == 0)
    {
      return 0;
    }

    return *(a1 + 128) == *(a1 + 120);
  }

  else
  {
    return (*(a1 + 156) & 0x40) == 0;
  }
}

uint64_t sub_10001B004(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v35[0] = a5;
  if (!a5)
  {
    return 0;
  }

  v5 = a5;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0;
  v33 = 18;
  v31 = 12;
  v10 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xC49D8672uLL);
  v30 = 3808;
  if (!v10)
  {
    sub_10004565C("failed to allocate memory to mark dir-stats chain as inconsistent\n");
    v12 = 12;
    v13 = 1426;
    v14 = 12;
    goto LABEL_8;
  }

  v11 = sub_10003F8AC(a1, a2, 0x12u, &v34);
  if (v11)
  {
    v12 = v11;
    sub_10004565C("failed to init fsroot tree to mark dir-stats chain as inconsistent\n");
    v13 = 1427;
    goto LABEL_5;
  }

  v16 = 513;
  while (1)
  {
    if (!--v16)
    {
      sub_100045744("performed too many chained-key iterations (current id %llu); can't mark the entire chain as needing reconciliation\n", v5);
      sub_100049C40(0x594, 92);
LABEL_26:
      v12 = 0;
      goto LABEL_9;
    }

    v29 = 0;
    v32 = v5 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27[8] = v17;
    v28 = v17;
    v27[6] = v17;
    v27[7] = v17;
    v27[4] = v17;
    v27[5] = v17;
    v27[2] = v17;
    v27[3] = v17;
    v27[0] = v17;
    v27[1] = v17;
    v25 = 160;
    v26 = 8;
    v18 = sub_1000397B8(dword_100080D00, 0, 0, v35, &v26, 8, v27, &v25);
    if (v18)
    {
      break;
    }

    v21 = DWORD2(v28);
    if ((WORD4(v28) & 0x100) != 0)
    {
      goto LABEL_21;
    }

    DWORD2(v28) |= 0x100u;
    v29 = v21 | 0x100;
    v22 = sub_10003B12C(dword_100080D00, 0, v35, 8, v27, 160);
    if (v22)
    {
      goto LABEL_27;
    }

LABEL_20:
    sub_100045744("need to mark dir-stats %llu as needing reconciliation, due to an issue with dir-stats %llu\n", v35[0], a4);
    v22 = sub_10001BC00(a3, 1, 3, &v32, v31, &v29, 4u);
    if (v22)
    {
LABEL_27:
      v12 = v22;
      goto LABEL_9;
    }

LABEL_21:
    v5 = v10[4];
    if (v5 != v35[0])
    {
      v35[0] = v10[4];
      if (v5)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  v12 = v18;
  if (v18 != 2)
  {
    goto LABEL_9;
  }

  v30 = 3808;
  v19 = sub_1000397B8(v34, qword_100080CF8, 0, &v32, &v31, v31, v10, &v30);
  if (!v19)
  {
    v20 = *(v10 + 12);
    v29 = v20 | 0x100;
    if ((v20 & 0x100) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v12 = v19;
  if (v19 == 2)
  {
    goto LABEL_26;
  }

  v23 = v35[0];
  v24 = strerror(v19);
  sub_10004565C("failed to look up dir-stats object (id %llu): %s\n", v23, v24);
  v13 = 1429;
LABEL_5:
  v14 = v12;
LABEL_8:
  sub_100049C40(v13, v14);
LABEL_9:
  free(v10);
  return v12;
}

uint64_t sub_10001B2B8(uint64_t a1, void *a2)
{
  v6 = 0;
  *v7 = 0;
  memset(__s1, 0, sizeof(__s1));
  result = memcmp(__s1, a2, 0x40uLL);
  if (result)
  {
    result = sub_10001B3F0(a1, v7, &v6);
    if (!result)
    {
      result = sub_10001BAD8(v6, a2[2]);
      if (!result)
      {
        v5 = *v7;

        return sub_10001B920(v5, a2);
      }
    }
  }

  return result;
}