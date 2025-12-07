void sub_10017EB2C(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    v4 = result;
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v4);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_20;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 108, "void _SRS_ProprietaryRemoteFeaturesEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_13;
  }

  v9 = *(a3 + 5);
  v10 = *(a3 + 6);
  if ((v9 - v10) <= 5u)
  {
LABEL_13:
    if (sub_10000C240())
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 109, "void _SRS_ProprietaryRemoteFeaturesEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
        v15 = 0;
      }

      else
      {
        v15 = *(a3 + 5) - *(a3 + 6);
      }

      sub_10000AF54("Invalid data size %d", v15);
      v16 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 0;
    v4 = 608;
    goto LABEL_20;
  }

  if (v9 - v10 <= 1)
  {
    v17 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_25;
  }

  if (*(a3 + 14) != 1)
  {
    v17 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_25:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 114, v17);
  }

  v11 = *a3;
  v12 = (*a3 + v10);
  v13 = *v12;
  v14 = v12[1];
  *(a3 + 6) = v10 + 2;
  if (v9 - (v10 + 2) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 115, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v4 = 0;
  v7 = v13 | (v14 << 8);
  v6 = *(v11 + (v10 + 2));
  *(a3 + 6) = v10 + 6;
LABEL_20:
  if (a2)
  {
    a2(v4, v7, v6);
  }
}

void sub_10017ED1C(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t *a3)
{
  if (result)
  {
    v4 = result;
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v4);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 135, "void _SRS_AdvBufReadCommandEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_14;
  }

  v10 = *(a3 + 5);
  v11 = *(a3 + 6);
  if ((v10 - v11) <= 3u)
  {
LABEL_14:
    if (sub_10000C240())
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 136, "void _SRS_AdvBufReadCommandEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
        v13 = 0;
      }

      else
      {
        v13 = *(a3 + 5) - *(a3 + 6);
      }

      sub_10000AF54("Invalid data size %d", v13);
      v14 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v4 = 608;
    goto LABEL_21;
  }

  if (v10 <= v11)
  {
    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_26;
  }

  if (*(a3 + 14) != 1)
  {
    v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_26:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 141, v15);
  }

  v12 = *a3;
  *(a3 + 6) = v11 + 1;
  if (v10 <= (v11 + 1))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 142, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v8 = *(v12 + v11);
  *(a3 + 6) = v11 + 2;
  if ((v10 - (v11 + 2)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 143, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v4 = 0;
  v7 = *(v12 + v11 + 1);
  v6 = *(v12 + v11 + 2);
  *(a3 + 6) = v11 + 4;
LABEL_21:
  if (a2)
  {
    a2(v4, 255, v8, v7, v6);
  }
}

void sub_10017EF38(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 260, "void _SRS_AdvBufExtFilterConfigEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v9 = *(a3 + 5);
      v10 = *(a3 + 6);
      if (v9 > v10)
      {
        if (*(a3 + 14) == 1)
        {
          v11 = *a3;
          *(a3 + 6) = v10 + 1;
          if (v9 <= v10 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 261, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v8 = *(v11 + v10);
          *(a3 + 6) = v10 + 2;
          if (v9 <= v10 + 2)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 262, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v7 = *(v11 + v10 + 1);
          *(a3 + 6) = v10 + 3;
          v6 = *(v11 + v10 + 2);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v12 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_18:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 260, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_18;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 255;
  v7 = 255;
  v8 = 255;
  if (a2)
  {
LABEL_6:
    a2(result, 255, v8, v7, v6);
  }
}

void sub_10017F188(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10017F28C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v7 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;

    v4 = *(a1 + 8);
    v3 = v7;
  }

  [v4 addObject:v3];
  if ((*(a1 + 16) & 1) == 0)
  {
    if (qword_100B508B0 != -1)
    {
      sub_10080F6B4();
    }

    sub_100749B80(off_100B508A8, a1, 0);
    *(a1 + 16) = 1;
  }
}

void sub_10017F424(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 8) removeObject:?];
  if (*(a1 + 16) == 1 && ![*(a1 + 8) count])
  {
    if (qword_100B508B0 != -1)
    {
      sub_10080F6B4();
    }

    sub_100749C8C(off_100B508A8, a1);
    *(a1 + 16) = 0;
  }
}

unint64_t sub_10017F95C(uint64_t a1, unsigned __int8 a2)
{
  os_unfair_lock_lock(&unk_100B557B0);
  if (qword_100B557B8)
  {
    *&v5[3] = 0;
    *v5 = 0;
    sub_1002D2704(a2, v5);
    v3 = (v5[1] << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6] | (v5[0] << 48);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&unk_100B557B0);
  return v3;
}

void sub_10017FB54(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10017FBD0;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_10017FBD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock(&unk_100B557B0);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(v1 + 8);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10017FD70;
        block[3] = &unk_100ADF820;
        block[4] = v6;
        dispatch_async(v7, block);
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  os_unfair_lock_unlock(&unk_100B557B0);
}

unsigned __int16 *sub_10017FDE8(unsigned __int16 *result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 4))
  {
    result = sub_100259154(result, a2, 0, 0);
    if (!result)
    {
      return result;
    }

    byte_100B557C0 = 0;
    v3 = *qword_100B557C8;
    if (!*qword_100B557C8)
    {
      return result;
    }

    v4 = result;
    v5 = *v2;
  }

  else
  {
    byte_100B557C0 = 0;
    v3 = *qword_100B557C8;
    if (!*qword_100B557C8)
    {
      return result;
    }

    v5 = *result;
    v4 = 0;
  }

  return v3(v5, v4);
}

unsigned __int16 *sub_10017FE84(unsigned __int16 *result)
{
  v1 = *(qword_100B557C8 + 8);
  if (v1)
  {
    return v1(*result);
  }

  return result;
}

void sub_10017FEA0(unsigned __int16 *result, char *__src, size_t __len, int a4, uint64_t a5)
{
  v5 = __len;
  v8 = *(result + 2);
  if (v8 == 5)
  {
    v9 = 32;
  }

  else
  {
    if (v8 != 6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid CIS or BIS connection handle, drop the packet");
        v13 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }
      }

      return;
    }

    v9 = 28;
  }

  v10 = &result[v9];
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v14 = v10[13];
      v15 = (v10[12] - v14);
      if (v15 > __len)
      {
        v16 = *(v10 + 2);
        if (!v16)
        {
          return;
        }

        memmove((v16 + v14), __src, __len);
        v17 = v10[13] + v5;
        goto LABEL_49;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("remainingBufferLength: %d should be greater than readBufLen: %d", v15, v5);
        v22 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_52;
        }
      }

      goto LABEL_53;
    }

    if (a4)
    {
      v19 = v10[13];
      v20 = (v10[12] - v19);
      if (v20 == __len)
      {
        if (__len)
        {
          v21 = *(v10 + 2);
          if (v21)
          {
            memmove((v21 + v19), __src, __len);
            v10[13] += v5;
          }
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("remainingBufferLength: %d should be greater than readBufLen: %d", v20, v5);
          v32 = sub_10000C050(0x46u);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        *(v10 + 2) = 1;
      }

      v33 = *(qword_100B557C8 + 16);
      if (v33)
      {
        v33(*result, *(v10 + 2), v10[12], *(v10 + 8), a5);
      }

      return;
    }
  }

  if (a5)
  {
    v11 = 8;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= __len)
  {
    if (a5)
    {
      *(v10 + 1) = *__src;
      v18 = 4;
    }

    else
    {
      v18 = 0;
    }

    v23 = &__src[v18];
    v10[1] = *v23;
    v24 = v23[2];
    v25 = v23[3];
    v26 = v25 >> 6;
    *(v10 + 2) = v26;
    v27 = v24 & 0xFFFFF0FF | ((v25 & 0xF) << 8);
    v28 = v18 + 4;
    if (a4)
    {
      v29 = __len - v28;
      if (v27 != __len - v28)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid sdu_length: %d", v27);
          v30 = sub_10000C050(0x46u);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        v26 = 1;
        *(v10 + 2) = 1;
      }

      v31 = *(qword_100B557C8 + 16);
      if (v31)
      {
        v31(*result, &__src[v28], v29, v26);
      }

      return;
    }

    v34 = *(v10 + 2);
    if (v34)
    {
      sub_10000C1E8(v34);
    }

    *(v10 + 6) = 0;
    v35 = v5 - v28;
    if (v27 > v5 - v28)
    {
      v36 = sub_100007618(v27, 0xC7EA533EuLL);
      *(v10 + 2) = v36;
      v10[12] = v27;
      memmove(v36, &__src[v28], v35);
      v17 = v10[13] + v35;
LABEL_49:
      v10[13] = v17;
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invalid sdu_length: %d", v27);
      v37 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
LABEL_52:
        sub_10080F604();
      }
    }

LABEL_53:
    *(v10 + 2) = 1;
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("readBufLen: %d is less than ISO data load header length %d", v5, v11);
    v12 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      sub_10080F604();
    }
  }
}

uint64_t sub_100180250(uint64_t (*a1)(void, void), uint64_t (*a2)(void, void), uint64_t a3)
{
  off_100B557D0 = a1;
  off_100B557D8 = a2;
  if (!a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("dataCbs is NULL");
      v4 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  qword_100B557C8 = a3;
  mach_timebase_info(&stru_100BC7DB8);
  return 0;
}

uint64_t sub_1001802DC(unsigned __int16 *a1)
{
  if (off_100B557D0)
  {
    v2 = sub_1000ABB80(*a1);
    if (v2)
    {
      v9 = v2;
      v10 = *(v2 + 2);
      if (v10 == 5)
      {
        v11 = 132;
LABEL_12:
        if (*(a1 + 2) == 1)
        {
          v16 = *(v2 + v11);
          if ((v16 & 2) == 0)
          {
            v15 = v16 | 2;
            goto LABEL_18;
          }
        }

        else
        {
          if (*(a1 + 2))
          {
            goto LABEL_19;
          }

          v14 = *(v2 + v11);
          if ((v14 & 1) == 0)
          {
            v15 = v14 | 1;
LABEL_18:
            *(v2 + v11) = v15;
LABEL_19:
            v13 = sub_100018960(241, sub_100180454, v3, v4, v5, v6, v7, v8, *a1);
            if (v13)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("LE_Setup_ISO_Data_Path command failed");
                v17 = sub_10000C050(0x46u);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F604();
                }
              }

              *(v9 + v11) = 0;
            }

            return v13;
          }
        }

        return 712;
      }

      if (v10 == 6)
      {
        v11 = 88;
        goto LABEL_12;
      }
    }

    return 702;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No ISO Setup Cb");
    v12 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F6C8();
    }
  }

  return 114;
}

uint64_t sub_100180454(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to setup ISO data path with result %!", a1);
      v4 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v5 = sub_1000ABB80(a2);
    if (v5)
    {
      *(v5 + 33) = 0;
    }
  }

  return off_100B557D0(a1, a2);
}

uint64_t sub_1001804F4(uint64_t a1, int a2)
{
  v4 = sub_1000ABB80(a1);
  if (off_100B557D8)
  {
    v11 = v4;
    if (v4)
    {
      v12 = *(v4 + 2);
      if (v12 == 5)
      {
        v13 = 132;
LABEL_12:
        if (a2 == 1)
        {
          if ((*(v4 + v13) & 2) != 0)
          {
            v16 = *(v4 + v13) & 2;
            goto LABEL_20;
          }
        }

        else
        {
          if (a2)
          {
LABEL_21:
            v15 = sub_100018960(242, sub_100180660, v5, v6, v7, v8, v9, v10, a1);
            if (v15)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("LE_Remove_ISO_Data_Path command failed");
                v17 = sub_10000C050(0x46u);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F604();
                }
              }

              *(v11 + v13) = 0;
            }

            return v15;
          }

          if (*(v4 + v13))
          {
            v16 = *(v4 + v13) & 2;
LABEL_20:
            *(v4 + v13) = v16;
            goto LABEL_21;
          }
        }

        return 712;
      }

      if (v12 == 6)
      {
        v13 = 88;
        goto LABEL_12;
      }
    }

    return 702;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No ISO Remove Cb");
    v14 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F6C8();
    }
  }

  return 114;
}

uint64_t sub_100180660(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to remove ISO data path with result %!", a1);
      v4 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v5 = sub_1000ABB80(a2);
    if (v5)
    {
      *(v5 + 33) = 0;
    }
  }

  return off_100B557D8(a1, a2);
}

uint64_t sub_100180700(int a1, char *a2, size_t a3)
{
  if (a2 && a3)
  {
    if (a3 < 0x1000)
    {
      v5 = sub_1000ABB80(a1);
      if (byte_100B557C0 == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Write Iso Data is pending");
          v6 = sub_10000C050(0x46u);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        return 116;
      }

      v10 = v5;
      if (v5)
      {
        v11 = *(v5 + 2);
        if (v11 == 6)
        {
          if (sub_1002555E4(v5) && !*(v10 + 48))
          {
LABEL_38:
            sub_1001BACB0();
            v16 = 56;
            if (*(v10 + 2) == 5)
            {
              v16 = 64;
            }

            v17 = *(v10 + v16);
            *(v10 + v16) = v17 + 1;
            word_100B557E0 = v17;
            word_100B557E2 = a3;
            sub_10001FF10(byte_100B557E8, 2u);
            sub_10001F968(byte_100B557E8, &word_100B557E0, 4uLL, 2u);
            sub_10001F968(byte_100B557E8, a2, a3, 2u);
            byte_100B557C0 = 1;
            result = sub_100259154(v10, byte_100B557E8, 1, 0);
            if (result)
            {
              byte_100B557C0 = 0;
            }

            return result;
          }

          if (!sub_10000C240())
          {
            return 601;
          }

          sub_10000AF54("BIS connection handle is no longer valid or state is not connected. Dropping ISO data.");
          v14 = sub_10000C050(0x46u);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            return 601;
          }
        }

        else
        {
          if (v11 == 5)
          {
            if (!sub_1002555B4(v5) || *(v10 + 56))
            {
              if (!sub_10000C240())
              {
                return 601;
              }

              sub_10000AF54("CIS connection handle is no longer valid or state is not connected. Dropping ISO data.");
              v12 = sub_10000C050(0x46u);
              if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                return 601;
              }

              goto LABEL_35;
            }

            goto LABEL_38;
          }

          if (!sub_10000C240())
          {
            return 601;
          }

          sub_10000AF54("Neither valid CIS nor BIS handle");
          v15 = sub_10000C050(0x46u);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            return 601;
          }
        }
      }

      else
      {
        if (!sub_10000C240())
        {
          return 601;
        }

        sub_10000AF54("isoHandle is NULL");
        v13 = sub_10000C050(0x46u);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          return 601;
        }
      }

LABEL_35:
      sub_10080F604();
      return 601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("isoWriteLen: %d is over 12-bit", a3);
      v9 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 101;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Iso write buffer is empty or length is zero");
      v8 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 131;
  }
}

uint64_t IOBTDebug::init(IOBTDebug *this)
{
  std::mutex::lock(this);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315138;
    v24 = "init";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: \n", &v23, 0xCu);
  }

  v2 = IOServiceMatching("BTDebug");
  if (v2)
  {
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
    *(this + 16) = MatchingService;
    if (MatchingService)
    {
      v4 = IOServiceOpen(MatchingService, mach_task_self_, 0, this + 17);
      if (!v4)
      {
        v21 = 1;
        goto LABEL_13;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100181464(v4);
      }
    }

    else
    {
      v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        sub_1001814F8(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  else
  {
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      sub_100181574(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v21 = 0;
LABEL_13:
  std::mutex::unlock(this);
  return v21;
}

void IOBTDebug::~IOBTDebug(IOBTDebug *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "~IOBTDebug";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: \n", buf, 0xCu);
  }

  v2 = *(this + 17);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 17) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 16) = 0;
  }

  v4 = *(this + 9);
  if (*(this + 10))
  {
    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100180DFC;
      block[3] = &unk_100AE4588;
      block[4] = this;
      dispatch_sync(v4, block);
      dispatch_release(*(this + 9));
      *(this + 9) = 0;
      goto LABEL_11;
    }

    v5 = "fQueue";
    v6 = 65;
LABEL_16:
    __assert_rtn("~IOBTDebug", "IOBTDebug.cpp", v6, v5);
  }

  if (v4)
  {
    v5 = "!fQueue";
    v6 = 78;
    goto LABEL_16;
  }

LABEL_11:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "~IOBTDebug";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: --done\n", buf, 0xCu);
  }

  std::mutex::~mutex(this);
}

void sub_100180DF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1000F0588(a1);
}

void sub_100180DFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  v2 = *(v1 + 80);
  if (v2)
  {
    IONotificationPortDestroy(v2);
    *(v1 + 80) = 0;
  }

  std::mutex::unlock(v1);
}

void IOBTDebug::setNotificationPort(IOBTDebug *this)
{
  if (!*(this + 10))
  {
    if (*(this + 9))
    {
      sub_1001815F0();
    }

    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v3 = dispatch_queue_create("com.apple.BTDebug.IOBTDebug", v2);
    *(this + 9) = v3;
    if (!v3)
    {
      sub_100181648();
    }

    v4 = IONotificationPortCreate(kIOMainPortDefault);
    *(this + 10) = v4;
    if (!v4)
    {
      sub_10018161C();
    }

    v5 = *(this + 9);

    IONotificationPortSetDispatchQueue(v4, v5);
  }
}

uint64_t IOBTDebug::coreDump(std::mutex *this, uint64_t a2, const char *a3, void (*a4)(void *, int), void *a5)
{
  v39 = 0u;
  v40 = 0u;
  *reference = 0u;
  v38 = 0u;
  std::mutex::lock(this);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "coreDump";
    v34 = 1024;
    v35 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: size %u\n", buf, 0x12u);
  }

  if (!a4)
  {
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      sub_100181674(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  IOBTDebug::setNotificationPort(this);
  v18 = *&this[1].__m_.__opaque[8];
  if (v18)
  {
    input = a2;
    reference[1] = a4;
    *&v38 = a5;
    sig_high = HIDWORD(this[1].__m_.__sig);
    MachPort = IONotificationPortGetMachPort(v18);
    v21 = strlen(a3);
    v22 = IOConnectCallAsyncMethod(sig_high, 0, MachPort, reference, 3u, &input, 1u, a3, v21 + 1, 0, 0, 0, 0);
  }

  else
  {
    v22 = 3758097112;
    v23 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      sub_1001816F0(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  std::mutex::unlock(this);
  return v22;
}

uint64_t IOBTDebug::enableLogging(uint64_t a1, unsigned int a2, unsigned int a3, int *a4, int *a5, unsigned int a6)
{
  v6 = 3758097090;
  if (a4)
  {
    v7 = a5;
    if (a5)
    {
      if (a6 - 4 >= 0xFFFFFFFD)
      {
        v9 = a4;
        v13 = __chkstk_darwin(a1);
        v15 = &buf[-v14];
        std::mutex::lock(v13);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v23 = "enableLogging";
          v24 = 1024;
          v25 = a2;
          v26 = 1024;
          v27 = a3;
          v28 = 1024;
          v29 = a6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: bufferSize %u, numReads %u, numLogs %u\n", buf, 0x1Eu);
        }

        input[0] = a2;
        input[1] = a3;
        v16 = v15 + 4;
        v17 = a6;
        do
        {
          v19 = *v7++;
          v18 = v19;
          v20 = *v9++;
          *(v16 - 1) = v20;
          *v16 = v18;
          v16 += 2;
          --v17;
        }

        while (v17);
        v6 = IOConnectCallMethod(*(a1 + 68), 1u, input, 2u, v15, 8 * a6, 0, 0, 0, 0);
        std::mutex::unlock(a1);
      }
    }
  }

  return v6;
}

uint64_t IOBTDebug::disableLogging(IOBTDebug *this)
{
  std::mutex::lock(this);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "disableLogging";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: \n", &v4, 0xCu);
  }

  v2 = IOConnectCallScalarMethod(*(this + 17), 2u, 0, 0, 0, 0);
  std::mutex::unlock(this);
  return v2;
}

uint64_t IOBTDebug::dumpLogs(IOBTDebug *this, const char *a2)
{
  std::mutex::lock(this);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "dumpLogs";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: \n", &v7, 0xCu);
  }

  v4 = strlen(a2);
  v5 = IOConnectCallStructMethod(*(this + 17), 3u, a2, v4 + 1, 0, 0);
  std::mutex::unlock(this);
  return v5;
}

void sub_100181464(int a1)
{
  v1 = 136315394;
  v2 = "init";
  v3 = 1024;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "IOBTDebug::%s: could not open service: 0x%x\n", &v1, 0x12u);
}

void sub_1001814F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "init";
  sub_10003F484(&_mh_execute_header, &_os_log_default, a3, "IOBTDebug::%s: could not get matching service\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100181574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "init";
  sub_10003F484(&_mh_execute_header, &_os_log_default, a3, "IOBTDebug::%s: could not create matching dictionary\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100181674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "coreDump";
  sub_10003F484(&_mh_execute_header, &_os_log_default, a3, "IOBTDebug::%s: no callback\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001816F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "coreDump";
  sub_10003F484(&_mh_execute_header, &_os_log_default, a3, "IOBTDebug::%s: no async port\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

uint64_t sub_10018176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10006DC7C(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15[0]);
  v10 = sub_100181D40(v9, v8, v15);
  sub_1000E0A98(v10, &off_100AE4760, v11, v12);
  return (v16 >> 2) & 1;
}

BOOL sub_1001817B8(void *a1, uint64_t a2, uint64_t a3)
{
  memset(a1, 0, 0x40uLL);
  *a1 = a2;
  a1[1] = a3;

  return sub_10018180C(a1);
}

BOOL sub_10018180C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (v1 < v3)
  {
    v4 = (*v2 + 4 * *(a1 + 18));
    v5 = *v4;
    v6 = BYTE1(*v4);
    *(a1 + 30) = v6;
    switch(v5 & 3)
    {
      case 1u:
        v11 = v4[1];
        *(a1 + 28) = HIWORD(v5) & 0xFFF;
        *(a1 + 24) = (v11 >> 22) & 0x3C0 | (v5 >> 2);
        v7 = v5 >> 28;
        v8 = v11;
        v9 = HIWORD(v11) & 0xFFF;
        break;
      case 2u:
        v7 = v4[1];
        v8 = v4[2];
        v9 = v4[3];
        v10 = HIWORD(v5);
        goto LABEL_6;
      case 3u:
        v7 = v4[1];
        v8 = v4[2];
        v9 = v4[3];
        v10 = v4[4];
LABEL_6:
        *(a1 + 28) = v10;
        *(a1 + 24) = (v7 >> 2) & 0xFFC0 | (v5 >> 2);
        break;
      default:
        *(a1 + 28) = 1;
        *(a1 + 24) = v5 >> 2;
        v7 = HIBYTE(v5) & 0xF;
        v8 = BYTE2(v5);
        v9 = v5 >> 28;
        break;
    }

    *(a1 + 26) = v9;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 + v8);
      *(a1 + 32) = v13;
      v14 = v5 & 0x3000;
      v15 = (a1 + 28);
      if ((v6 & 0x40 | 0x80) != 0x80)
      {
        v15 = 0;
      }

      if (v14 == 0x2000)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v7)
      {
        v16 = v13 - v7;
      }

      *(a1 + 48) = v16;
      if ((v6 & 0xC0) == 0x80)
      {
        v13 = *v13;
      }

      v17 = 40;
    }

    else
    {
      v13 = 0;
      *(a1 + 32) = 0;
      v17 = 48;
    }

    *(a1 + v17) = v13;
    if ((v6 & 0xE) == 8)
    {
      v18 = *(v2[1] + 8 * *(a1 + 22));
    }

    else
    {
      v18 = 0;
    }

    *(a1 + 56) = v18;
  }

  return v1 < v3;
}

BOOL sub_100181970(void *a1, void *a2)
{
  v4 = a2 + 1;
  v5 = *(*a2 + 16);
  if ((**v5 & 0xC000) != 0x8000)
  {
    v4 = *v4;
  }

  result = sub_1001817B8(a1, v5, v4);
  a1[6] = a2 + 3;
  return result;
}

BOOL sub_1001819C8(_WORD *a1)
{
  sub_100181A00(a1);
  sub_10018180C(a1);
  return a1[8] != 0;
}

double sub_100181A00(_WORD *a1)
{
  v1 = a1[8] + 1;
  a1[8] = v1;
  if (*(*a1 + 32) <= v1)
  {
    result = 0.0;
    *(a1 + 2) = 0;
  }

  else
  {
    v2 = a1[9];
    v3 = *(**a1 + 4 * v2);
    a1[9] = v2 + (1 << (v3 & 3));
    v4 = a1[10];
    if ((v3 & 0x3000) == 0)
    {
      ++v4;
    }

    a1[10] = v4;
    if ((v3 & 0xE00) == 0x800)
    {
      v5 = a1[11] + 1;
    }

    else
    {
      v5 = a1[11];
    }

    a1[11] = v5;
  }

  return result;
}

uint64_t sub_100181A70(unsigned __int16 *a1, unsigned int a2)
{
  v2 = a1[12];
  if (v2 == a2)
  {
    return 1;
  }

  if (*(*a1 + 36) < a2)
  {
    return 0;
  }

  v6 = a1[8];
  if (v2 > a2)
  {
    a1[8] = *(*a1 + 32);
  }

  while (1)
  {
    sub_100181A00(a1);
    sub_10006DC9C();
    if (((a2 ^ (v7 >> 2)) & 0x3F) == 0)
    {
      sub_10018180C(a1);
      if (a1[12] == a2 && (a1[15] & 0xF) != 0xA)
      {
        break;
      }
    }

    if (a1[8] == v6)
    {
      sub_10018180C(a1);
      return 0;
    }
  }

  return 1;
}

BOOL sub_100181B34(uint64_t a1)
{
  if ((*(a1 + 30) & 0xF) == 0xA)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  while (1)
  {
    sub_100181A00(a1);
    sub_10006DC9C();
    if ((v4 & 0xF00) == 0xA00)
    {
      break;
    }

    if (*(a1 + 16) == v3)
    {
      sub_10018180C(a1);
      return 0;
    }
  }

  return sub_10018180C(a1);
}

uint64_t sub_100181BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 26) == 16)
  {
    v4 = *(a3 + 40);
    if (v4)
    {
      if (a1)
      {
        v5 = *v4;
        if (*v4)
        {
          v6 = v4 + 1;
          return v5(a1, a3, v6);
        }
      }

      if (a2)
      {
        v5 = *v4;
        if (*v4)
        {
          v6 = v4 + 1;
          a1 = a2;
          return v5(a1, a3, v6);
        }
      }
    }
  }

  return 1;
}

void sub_100181C10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    if (a2 || *a1 == sub_100181D14)
    {
      if (*(a1 + 16) >= a3 && ((*a1)(a1) & 1) != 0)
      {
        *(a1 + 16) -= v3;
      }

      else
      {
        sub_10006DCB0();
        sub_1000E0AB0();
        *(a1 + 24) = v6;
      }
    }

    else
    {
      while (v3 >= 0x11)
      {
        sub_100181C10(a1, v7, 0x10uLL);
        if (!v5)
        {
          return;
        }

        v3 -= 16;
      }

      sub_100181C10(a1, v7, v3);
    }
  }
}

uint64_t sub_100181D14(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = &v3[a3];
  if (a2 && a3)
  {
    do
    {
      v4 = *v3++;
      *a2++ = v4;
      --a3;
    }

    while (a3);
  }

  return 1;
}

uint64_t sub_100181D40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = sub_100181D14;
  a3[1] = result;
  a3[2] = a2;
  a3[3] = 0;
  return result;
}

void sub_100181D60(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_10009C610();
  sub_100181EF8(v6, &v17);
  if (v7)
  {
    v8 = v17;
    if (v17 < 0)
    {
      v8 = v17 & 0x7F;
      v9 = 7;
      while (1)
      {
        sub_100181EF8(v3, &v17);
        if (!v10)
        {
          break;
        }

        v11 = v9;
        if (v9 < 0x20u)
        {
          v8 |= (v17 & 0x7F) << v9;
        }

        else
        {
          if (v9 >= 0x3Fu)
          {
            v12 = 1;
          }

          else
          {
            v12 = 255;
          }

          v14 = v8 >= 0 || v12 != v17;
          if ((v17 & 0x7F) == 0)
          {
            v14 = 0;
          }

          if (v9 > 0x3Fu || v14)
          {
            goto LABEL_31;
          }
        }

        v9 += 7;
        if ((v17 & 0x80) == 0)
        {
          if (v11 == 28 && v17 >= 0x10u)
          {
LABEL_31:
            sub_10006DCB0();
            sub_1000E0AB0();
            *(v3 + 24) = v16;
            return;
          }

          goto LABEL_3;
        }
      }
    }

    else
    {
LABEL_3:
      *v4 = v8;
    }
  }

  else if (a3 && !*(v3 + 16))
  {
    *a3 = 1;
  }
}

void sub_100181E6C()
{
  sub_10009C610();
  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = v2;
    if (v2 >= 0x40u)
    {
      break;
    }

    sub_100181EF8(v0, &v7);
    if (!v5)
    {
      return;
    }

    v3 |= (v7 & 0x7F) << v4;
    v2 = v4 + 7;
    if ((v7 & 0x80) == 0)
    {
      *v1 = v3;
      return;
    }
  }

  sub_10006DCB0();
  sub_1000E0AB0();
  *(v0 + 24) = v6;
}

void sub_100181EF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && ((*a1)(a1, a2, 1) & 1) != 0)
  {
    --*(a1 + 16);
  }

  else
  {
    sub_10006DCB0();
    sub_1000E0AB0();
    *(a1 + 24) = v3;
  }
}

void sub_100181F6C(uint64_t a1, int *a2, unsigned int *a3, _BYTE *a4)
{
  *a4 = 0;
  *a2 = 0;
  *a3 = 0;
  sub_100181D60(a1, &v8, a4);
  if (v6)
  {
    v7 = v8;
    *a3 = v8 >> 3;
    *a2 = v7 & 7;
  }
}

void sub_100181FC8(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
      do
      {
        sub_100181C10(a1, &v7, 1uLL);
      }

      while (v3 && v7 < 0);
      break;
    case 1:
      v5 = 8;
      goto LABEL_9;
    case 2:
      sub_100181D58(a1, &v8);
      if (v4)
      {
        sub_100181C10(a1, 0, v8);
      }

      break;
    case 5:
      v5 = 4;
LABEL_9:

      sub_100181C10(a1, 0, v5);
      break;
    default:
      sub_10006DCB0();
      sub_1000E0AB0();
      *(a1 + 24) = v6;
      break;
  }
}

void sub_1001820B0()
{
  sub_10009C610();
  sub_100181D58(v2, &v7);
  if (v3)
  {
    v4 = *(v0 + 16);
    *v1 = *v0;
    v1[1] = v4;
    v5 = v7;
    if (*(v1 + 2) >= v7)
    {
      *(v1 + 2) = v7;
      *(v0 + 16) -= v5;
    }

    else
    {
      sub_10006DCB0();
      sub_1000E0AB0();
      *(v0 + 24) = v6;
    }
  }
}

void sub_100182128()
{
  sub_10009C610();
  v3 = *(v2 + 16);
  if (!v3 || (sub_100181C10(v1, 0, v3), v4))
  {
    *(v0 + 8) = *(v1 + 8);
    *(v0 + 24) = *(v1 + 24);
  }
}

void sub_100182174(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v51 = 0;
  v50 = 0;
  v6 = sub_1001817B8(v42, a2, a3);
  if ((a4 & 1) == 0 && v6)
  {
    sub_1001825E4(v42, v7, v8, v9, v10, v11, v12, v13);
    if ((v14 & 1) == 0)
    {
      sub_10006DCB0();
LABEL_74:
      sub_1000E0AB0();
      *(a1 + 24) = v37;
      return;
    }
  }

  v38 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0xFFFF;
  while (*(a1 + 16))
  {
    sub_100181F6C(a1, &v40, &v41, &v39);
    if ((v18 & 1) == 0)
    {
      if ((v39 & 1) == 0)
      {
        return;
      }

      break;
    }

    v19 = v41;
    if (!v41)
    {
      if ((a4 & 4) == 0)
      {
LABEL_55:
        sub_1000E0AB0();
        *(a1 + 24) = v31;
        return;
      }

      break;
    }

    if (sub_100181A70(v42, v41) && (v47 & 0xF) != 0xA)
    {
      if ((v47 & 0x30) == 0x20 && v49 == &v46)
      {
        if (v17 != v43)
        {
          if (v17 != 0xFFFF && v51 != v38)
          {
            goto LABEL_55;
          }

          v51 = 0;
          v38 = v46;
          v17 = v43;
        }

        v49 = &v51;
      }

      if ((v47 & 0x30) == 0 && v44 <= 0x3Fu)
      {
        *(&v50 + ((v44 >> 3) & 0x1FFC)) |= 1 << v44;
      }

      sub_100182794(a1, v40, v42);
      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (!v16)
      {
        if (sub_100181B34(v42))
        {
          v15 = *v48;
          v20 = v45;
        }

        else
        {
          v20 = 0;
        }

        if (v15)
        {
          v16 = v20;
        }

        else
        {
          v16 = -1;
        }
      }

      v24 = v40;
      if (v19 < v16)
      {
        goto LABEL_36;
      }

      v26 = *(a1 + 16);
      v27 = v26;
      v28 = v15;
      if (v15)
      {
        while (v26 == v27)
        {
          v29 = **v28;
          if (v29)
          {
            if ((v29(a1, v28, v19, v24) & 1) == 0)
            {
              return;
            }
          }

          else
          {
            if (!sub_100181970(v52, v28))
            {
              goto LABEL_55;
            }

            if (v19 == v53)
            {
              if (v52[1])
              {
                *(v28 + 24) = 1;
                sub_100182794(a1, v24, v52);
                if (!v30)
                {
                  return;
                }
              }
            }
          }

          v28 = v28[2];
          v27 = *(a1 + 16);
          if (!v28)
          {
            break;
          }
        }
      }

      if (v26 == v27)
      {
        LODWORD(v24) = v40;
LABEL_36:
        sub_100181FC8(a1, v24);
        if ((v25 & 1) == 0)
        {
          return;
        }
      }
    }
  }

  if (v17 != 0xFFFF && v51 != v38)
  {
    goto LABEL_73;
  }

  if (*(*v42 + 34))
  {
    v33 = 0;
    v34 = *(*v42 + 34) >= 0x40u ? 64 : *(*v42 + 34);
    v35 = v34 >> 5;
    while (v33 < v35)
    {
      v36 = *(&v50 + v33++);
      if (v36 != -1)
      {
        goto LABEL_73;
      }
    }

    if ((v34 & 0x1F) != 0 && *(&v50 + v35) != 0xFFFFFFFF >> -(v34 & 0x1F))
    {
LABEL_73:
      sub_10006DCB0();
      goto LABEL_74;
    }
  }
}

void sub_1001824D8(uint64_t a1, BOOL *a2)
{
  sub_100181D58(a1, &v4);
  if (v3)
  {
    *a2 = v4 != 0;
  }
}

void sub_10018251C(uint64_t a1, unint64_t *a2)
{
  sub_100181E6C();
  if (v3)
  {
    *a2 = -(v4 & 1) ^ (v4 >> 1);
  }
}

void sub_100182564(uint64_t a1, _DWORD *a2)
{
  sub_100181C10(a1, &v4, 4uLL);
  if (v3)
  {
    *a2 = v4;
  }
}

void sub_1001825A4(uint64_t a1, void *a2)
{
  sub_100181C10(a1, &v4, 8uLL);
  if (v3)
  {
    *a2 = v4;
  }
}

void sub_1001825E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  if (*(*a1 + 16))
  {
    *(&v41 + 1) = *(*a1 + 16);
    v42 = 0xFFFFFFFFFFFFFFFFLL;
    sub_1000B6F00(a1, a2, a3, a4, a5, a6, a7, a8, v39, SWORD2(v39), SBYTE6(v39), SHIBYTE(v39), 0, 0, sub_100181D14);
    if (!v9)
    {
      return;
    }
  }

  while (1)
  {
    v10 = *(a1 + 30);
    if ((v10 & 0xF) == 0xA)
    {
      break;
    }

    if ((v10 & 0xC0) == 0x80)
    {
      **(a1 + 32) = 0;
      if ((v10 & 0x20) != 0)
      {
        goto LABEL_23;
      }
    }

    else if ((v10 & 0xC0) == 0)
    {
      v19 = (v10 >> 4) & 3;
      if ((v19 - 2) < 2)
      {
        goto LABEL_23;
      }

      if (v19)
      {
        v20 = *(a1 + 48);
        if (v20)
        {
          *v20 = 0;
        }

        else if ((v10 & 0x20 | 0x10) == 0x30)
        {
LABEL_23:
          **(a1 + 48) = 0;
          goto LABEL_24;
        }
      }

      if ((v10 & 0xE) == 8 && ((v21 = *(a1 + 56), *(v21 + 16)) || *(v21 + 24) || **(v21 + 8)))
      {
        if (sub_1001817B8(v43, v21, *(a1 + 40)) && !sub_1001825E4(v43, v22, v23, v24, v25, v26, v27, v28))
        {
          return;
        }
      }

      else
      {
        memset(*(a1 + 40), 0, *(a1 + 26));
      }
    }

LABEL_24:
    if (HIDWORD(v40) && HIDWORD(v40) == *(a1 + 24))
    {
      sub_100182794(&v41, v40, a1);
      if (!v29)
      {
        return;
      }

      sub_1000B6F00(v29, v30, v31, v32, v33, v34, v35, v36, v39, SWORD2(v39), SBYTE6(v39), SHIBYTE(v39), v40, HIDWORD(v40), v41);
      if (!v37)
      {
        return;
      }

      v38 = *(a1 + 48);
      if (v38)
      {
        *v38 = 0;
      }
    }

    if (!sub_1001819C8(a1))
    {
      return;
    }
  }

  v11 = **(a1 + 40);
  if (!v11)
  {
    goto LABEL_24;
  }

  while (1)
  {
    if (sub_100181970(v43, v11))
    {
      *(v11 + 24) = 0;
      if (!sub_1001825E4(v43, v12, v13, v14, v15, v16, v17, v18))
      {
        break;
      }
    }

    v11 = *(v11 + 16);
    if (!v11)
    {
      goto LABEL_24;
    }
  }
}

void sub_100182794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 30);
  v5 = a2;
  switch(v3 >> 6)
  {
    case 1u:
      if (*(*a3 + 24))
      {
        if (a2 == 2)
        {
          sub_100183044();
          sub_1001820B0();
          if (v9)
          {
            v17 = v53;
            do
            {
              v18 = sub_10003F108(v9, v10, v11, v12, v13, v14, v15, v16, v51, v52[0]);
              v9 = v19(v18);
              if ((v9 & 1) == 0)
              {
                goto LABEL_5;
              }

              if (v53)
              {
                v20 = v53 >= v17;
              }

              else
              {
                v20 = 1;
              }

              v17 = v53;
            }

            while (!v20);
            sub_100183044();
            sub_100182128();
          }
        }

        else
        {
          if (a2 == 5)
          {
            v32 = 4;
            v48 = 4;
          }

          else
          {
            if (a2 != 1)
            {
              if (a2)
              {
LABEL_5:
                sub_10006DCB0();
              }

              else
              {
                v21 = 0;
                v22 = v55;
                while (v21 != -10)
                {
                  sub_100181C10(a1, v22, 1uLL);
                  if (!v23)
                  {
                    return;
                  }

                  v31 = *v22++;
                  --v21;
                  if ((v31 & 0x80000000) == 0)
                  {
                    v32 = -v21;
                    goto LABEL_55;
                  }
                }

                sub_10006DCB0();
              }

LABEL_6:
              sub_1000E0AB0();
              *(a1 + 24) = v8;
              return;
            }

            v32 = 8;
            v48 = 8;
          }

          sub_100181C10(a1, v55, v48);
          if (v23)
          {
LABEL_55:
            v52[1] = v55;
            v53 = v32;
            v54 = 0;
            v49 = sub_10003F108(v23, v24, v25, v26, v27, v28, v29, v30, v51, sub_100181D14);
            v50(v49);
          }
        }
      }

      else
      {

        sub_100181FC8(a1, a2);
      }

      return;
    case 2u:
    case 3u:
      goto LABEL_5;
    default:
      switch((v3 >> 4) & 3)
      {
        case 1u:
          v7 = *(a3 + 48);
          if (v7)
          {
            *v7 = 1;
          }

          goto LABEL_36;
        case 2u:
          v33 = v3 & 0xE;
          if (a2 != 2 || v33 > 5)
          {
            v35 = *(a3 + 48);
            v36 = *v35;
            *(a3 + 40) = *(a3 + 32) + *(a3 + 26) * *v35;
            *v35 = v36 + 1;
            if (v36 >= *(a3 + 28))
            {
              goto LABEL_60;
            }

LABEL_36:

            sub_100182BA0(a1, a2, a3);
          }

          else
          {
            v45 = *(a3 + 48);
            *(a3 + 40) = *(a3 + 32) + *v45 * *(a3 + 26);
            sub_100183044();
            sub_1001820B0();
            if (v46)
            {
              while (1)
              {
                if (!v53)
                {
                  goto LABEL_61;
                }

                if (*v45 >= *(a3 + 28))
                {
                  goto LABEL_60;
                }

                sub_100182BA0(v52, 255, a3);
                if (!v47)
                {
                  break;
                }

                ++*v45;
                *(a3 + 40) += *(a3 + 26);
              }

              if (v53)
              {
LABEL_60:
                sub_10006DCB0();
                goto LABEL_6;
              }

LABEL_61:
              sub_100183044();
              sub_100182128();
            }
          }

          return;
        case 3u:
          if ((v3 & 0xE) == 8 && **(a3 + 48) != *(a3 + 24))
          {
            memset(*(a3 + 40), 0, *(a3 + 26));
            v37 = *(a3 + 56);
            if ((*(v37 + 16) != 0 || **(v37 + 8)) && sub_1001817B8(v52, v37, *(a3 + 40)) && !sub_1001825E4(v52, v38, v39, v40, v41, v42, v43, v44))
            {
              goto LABEL_6;
            }
          }

          **(a3 + 48) = *(a3 + 24);
          sub_100182BA0(a1, v5, a3);
          return;
        default:
          goto LABEL_36;
      }
  }
}

void sub_100182BA0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a3 + 30) & 0xF;
  switch(*(a3 + 30) & 0xF)
  {
    case 0:
      if (a2 && a2 != 255)
      {
        goto LABEL_44;
      }

      v20 = *(a3 + 40);

      sub_1001824D8(a1, v20);
      return;
    case 1:
    case 2:
    case 3:
      if (a2 && a2 != 255)
      {
        goto LABEL_44;
      }

      if (v4 == 2)
      {
        sub_10003F4D8();
        sub_100181E6C();
        if (v6)
        {
          switch(*(a3 + 26))
          {
            case 1:
              sub_1000B70D8();
              *v8 = v7;
              v9 = v7;
              goto LABEL_80;
            case 2:
              sub_1000B70D8();
              *v44 = v7;
              v9 = v7;
              goto LABEL_80;
            case 4:
              sub_1000B70D8();
              *v43 = v7;
              v9 = v7;
              goto LABEL_80;
            case 8:
              sub_1000B70D8();
              *v46 = v45;
              break;
            default:
              goto LABEL_44;
          }
        }
      }

      else
      {
        if (v4 == 3)
        {
          v31 = sub_100183044();
          sub_10018251C(v31, v32);
          if (!v33)
          {
            return;
          }

          v34 = *(a3 + 26);
        }

        else
        {
          sub_10003F4D8();
          sub_100181E6C();
          if (!v35)
          {
            return;
          }

          v34 = *(a3 + 26);
          v36 = v48[0];
          if (v34 == 8)
          {
LABEL_83:
            **(a3 + 40) = v36;
            return;
          }

          v47 = SLODWORD(v48[0]);
        }

        switch(v34)
        {
          case 1:
            v7 = v47;
            **(a3 + 40) = v47;
            v9 = v47;
            break;
          case 2:
            v7 = v47;
            **(a3 + 40) = v47;
            v9 = v47;
            break;
          case 4:
            v7 = v47;
            **(a3 + 40) = v47;
            v9 = v47;
            break;
          case 8:
            v36 = v47;
            goto LABEL_83;
          default:
            goto LABEL_44;
        }

LABEL_80:
        if (v9 != v7)
        {
          goto LABEL_44;
        }
      }

      return;
    case 4:
      if (a2 != 5 && a2 != 255)
      {
        goto LABEL_44;
      }

      v24 = *(a3 + 40);

      sub_100182564(a1, v24);
      return;
    case 5:
      if (a2 != 1 && a2 != 255)
      {
        goto LABEL_44;
      }

      v25 = *(a3 + 40);

      sub_1001825A4(a1, v25);
      return;
    case 6:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v14 = sub_10003F4D8();
      sub_100181D58(v14, v15);
      if (v16)
      {
        v17 = LODWORD(v48[0]);
        if (LODWORD(v48[0]) < 0x10000 && (*(a3 + 30) & 0xC0) != 0x80 && LODWORD(v48[0]) + 2 <= *(a3 + 26))
        {
          v18 = *(a3 + 40);
          *v18 = v48[0];
          v19 = (v18 + 1);
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      return;
    case 7:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v26 = *(a3 + 40);
      v27 = sub_10003F4D8();
      sub_100181D58(v27, v28);
      if (v29)
      {
        v17 = LODWORD(v48[0]);
        if (LODWORD(v48[0]) != -1 && (*(a3 + 30) & 0xC0) != 0x80 && LODWORD(v48[0]) < *(a3 + 26))
        {
          *(v26 + LODWORD(v48[0])) = 0;
          v42 = a1;
          v19 = v26;
          goto LABEL_77;
        }

        goto LABEL_44;
      }

      return;
    case 8:
    case 9:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      sub_10003F4D8();
      sub_1001820B0();
      if (!v10)
      {
        return;
      }

      if (!*(a3 + 56))
      {
        goto LABEL_44;
      }

      if ((*(a3 + 30) & 0xF) == 9 && (v11 = *(a3 + 48)) != 0)
      {
        v12 = *(v11 - 16);
        if (v12)
        {
          v13 = v12(v48, a3, v11 - 8);
          LOBYTE(v12) = v48[2] == 0;
          goto LABEL_56;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      v13 = 1;
LABEL_56:
      if ((v12 & 1) == 0 && v13)
      {
        v37 = *(a3 + 30);
        v38 = v37 >= 0x40;
        v39 = v37 & 0x30;
        v41 = !v38 && v39 != 32;
        sub_100182174(v48, *(a3 + 56), *(a3 + 40), v41);
      }

      sub_10003F4D8();
      sub_100182128();
      return;
    case 0xB:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v21 = sub_10003F4D8();
      sub_100181D58(v21, v22);
      if (v23)
      {
        if (LODWORD(v48[0]) >= 0x10000)
        {
          goto LABEL_44;
        }

        if (LODWORD(v48[0]))
        {
          v17 = *(a3 + 26);
          if (LODWORD(v48[0]) != v17)
          {
            goto LABEL_44;
          }

          v19 = *(a3 + 40);
LABEL_70:
          v42 = a1;
LABEL_77:
          sub_100181C10(v42, v19, v17);
        }

        else
        {
          memset(*(a3 + 40), 0, *(a3 + 26));
        }
      }

      return;
    default:
LABEL_44:
      sub_10006DCB0();
      sub_1000E0AB0();
      *(a1 + 24) = v30;
      return;
  }
}

double sub_100183050(uint64_t a1)
{
  if ((*(a1 + 2) & 1) == 0)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 20);
  if (*(a1 + 20))
  {
    v3 = 0;
    do
    {
      v4 = *(*(*(a1 + 48) + 8 * v3) + 8);
      if (v4)
      {
        sub_1000E12C4(v4);
        v2 = *(a1 + 20);
      }

      *(a1 + 2) = 0;
      ++v3;
    }

    while (v3 < v2);
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001830C0(int a1, uint64_t (*a2)(void, void, void, __n128), void *a3)
{
  if (!a1 || a2 && a3)
  {
    result = 0;
    off_100B558D8 = a2;
    byte_100B558D0 = 0;
    byte_100B558D2 = 0;
    off_100B558E0 = a3;
    xmmword_100B558E8 = 0u;
    unk_100B558F8 = 0u;
    xmmword_100B55908 = 0u;
    unk_100B55918 = 0u;
    xmmword_100B55928 = 0u;
    unk_100B55938 = 0u;
    xmmword_100B55948 = 0u;
    xmmword_100B55958 = 0u;
    unk_100B55968 = 0u;
    xmmword_100B55978 = 0u;
    unk_100B55988 = 0u;
    xmmword_100B55998 = 0u;
    unk_100B559A8 = 0u;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_InitBisBroadcaster no createdCb or terminatedCb");
      v4 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  return result;
}

void sub_100183188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = &xmmword_100B558E8 + 56 * v8;
    if (v11[2] <= 1u && sub_1001832E0(*v11, 22, 1, a4, a5, a6, a7, a8) && sub_10000C240())
    {
      sub_10000AF54("Failed to terminate bigHandle %x", *v11);
      v12 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sub_10000C0FC();
        *buf = 136446466;
        v15 = v13;
        v16 = 1024;
        v17 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

    v9 = 0;
    v8 = 1;
  }

  while ((v10 & 1) != 0);
}

uint64_t sub_1001832E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&xmmword_100B558E8 + 56 * v9 + 2);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 != 6);
    if (v10 == 6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_CreateBig pending start command");
        v11 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 117;
    }
  }

  v13 = 0;
  for (i = 1; ; i = 0)
  {
    v15 = i;
    v16 = &xmmword_100B558E8 + 56 * v13;
    if (__PAIR64__(v16[1], *v16) == (a1 | 0x100000000))
    {
      break;
    }

    v13 = 1;
    if ((v15 & 1) == 0)
    {
      return 120;
    }
  }

  if (v16[2] > 1u)
  {
    return 0;
  }

  v17 = sub_1000D6178(0xEEu, a2, a3, a4, a5, a6, a7, a8, a1);
  if (!v17)
  {
    v16[2] = 6;
    if (v16[3])
    {
      v19 = 0;
      do
      {
        v12 = 0;
        *(*(*(*(v16 + 6) + 8 * v19++) + 8) + 48) = 6;
      }

      while (v19 < v16[3]);
      return v12;
    }

    return 0;
  }

  v12 = v17;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not terminate BIG %!", v12, a2);
    v18 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return v12;
}

double sub_100183470(uint64_t a1)
{
  if ((*(a1 + 1) & 1) == 0)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 3);
  if (*(a1 + 3))
  {
    v3 = 0;
    v4 = *(a1 + 48);
    do
    {
      v5 = *(v4 + 8 * v3);
      v6 = *(v5 + 8);
      if (v6)
      {
        sub_1000E12C4(v6);
        v4 = *(a1 + 48);
        v2 = *(a1 + 3);
        v5 = *(v4 + 8 * v3);
      }

      *v5 = 0;
      ++v3;
    }

    while (v3 < v2);
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001834E8(int a1, uint64_t (*a2)(void, void, void, __n128), void *a3, void *a4, uint64_t (*a5)(void))
{
  if (!a1 || a2 && a3 && a4 && a5)
  {
    result = 0;
    off_100B559C8 = a2;
    byte_100B559C0 = 0;
    off_100B559D0 = a3;
    off_100B559D8 = a4;
    off_100B559E0 = a5;
    xmmword_100B55858 = 0u;
    unk_100B55868 = 0u;
    xmmword_100B55878 = 0u;
    unk_100B55888 = 0u;
    xmmword_100B55898 = 0u;
    unk_100B558A8 = 0u;
    xmmword_100B558B8 = 0u;
    xmmword_100B559E8 = 0u;
    unk_100B559F8 = 0u;
    xmmword_100B55A08 = 0u;
    unk_100B55A18 = 0u;
    xmmword_100B55A28 = 0u;
    unk_100B55A38 = 0u;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_InitBisSync no establishedCb or lostCb or terminateCb or advReportCb");
      v6 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  return result;
}

void sub_1001835C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = &xmmword_100B55858 + 56 * v8;
    if (v11[3] <= 1u && sub_100183714(*v11, 1, a3, a4, a5, a6, a7, a8) && sub_10000C240())
    {
      sub_10000AF54("Failed to terminate bigHandle %x", *v11);
      v12 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sub_10000C0FC();
        *buf = 136446466;
        v15 = v13;
        v16 = 1024;
        v17 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

    v9 = 0;
    v8 = 1;
  }

  while ((v10 & 1) != 0);
}

uint64_t sub_100183714(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&xmmword_100B55858 + 56 * v9 + 3);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 != 6);
    if (v10 == 6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_BigTerminateSync pending start command");
        v11 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 117;
    }
  }

  v13 = 0;
  for (i = 1; ; i = 0)
  {
    v15 = i;
    v16 = &xmmword_100B55858 + 56 * v13;
    if (v16[2] == 1 && *v16 == a1)
    {
      break;
    }

    v13 = 1;
    if ((v15 & 1) == 0)
    {
      return 120;
    }
  }

  if (v16[3] > 1u)
  {
    return 0;
  }

  v17 = sub_100018960(240, sub_1001838B4, a3, a4, a5, a6, a7, a8, a1);
  if (!v17)
  {
    v16[3] = 6;
    if (v16[40])
    {
      v19 = 0;
      do
      {
        v12 = 0;
        *(*(*(*(v16 + 6) + 8 * v19++) + 8) + 48) = 6;
      }

      while (v19 < v16[40]);
      return v12;
    }

    return 0;
  }

  v12 = v17;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not terminate BIG sync %!", v12);
    v18 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return v12;
}

void sub_1001838B4(uint64_t a1, unsigned __int8 a2)
{
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = &xmmword_100B55858 + 56 * v4;
    if (v7[2] == 1 && *v7 == a2)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      sub_1000D660C();
      v7 = 0;
      break;
    }
  }

  v8.n128_f64[0] = sub_100183050(v7);
  v9 = off_100B559D8;
  if (off_100B559D8)
  {

    v9(a1, a2, v8);
  }
}

void sub_10018396C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 129)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = &xmmword_100B558E8 + 56 * v5;
      if (v8[1] == 1)
      {
        v8[2] = 7;
        v9 = sub_100183470(v8);
        if (off_100B558D8)
        {
          (off_100B558D8)(129, a2, a3, v9);
        }
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    return;
  }

  v10 = a1;
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = &xmmword_100B558E8 + 56 * v11;
    if (__PAIR64__(v14[1], *v14) == (a2 | 0x100000000))
    {
      break;
    }

    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      sub_1000D660C();
      v14 = 0;
      break;
    }
  }

  if (v10 == 768)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Create BIG completed, due to terminate a BIG while the create BIG is pending");
      v22 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v27 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v10 = 768;
    goto LABEL_31;
  }

  if (!v10)
  {
    if (!*(a3 + 18))
    {
LABEL_18:
      v10 = 0;
      v20 = *a3;
      v21 = *(a3 + 16);
      *(v14 + 5) = *(a3 + 32);
      *(v14 + 24) = v21;
      *(v14 + 8) = v20;
      v14[2] = 0;
      ++byte_100B558D0;
      byte_100B558D2 += *(a3 + 18);
      goto LABEL_32;
    }

    v15 = 0;
    while (1)
    {
      v16 = sub_1002561EC(*(*(a3 + 24) + 2 * v15));
      v17 = *(v14 + 6);
      *(*(v17 + 8 * v15) + 8) = v16;
      v18 = *(*(v17 + 8 * v15) + 8);
      if (!v18)
      {
        break;
      }

      *(v18 + 48) = 0;
      *(*(*(*(v14 + 6) + 8 * v15) + 8) + 49) = 1;
      v19 = *(*(*(v14 + 6) + 8 * v15) + 8);
      *v19 = *(*(a3 + 24) + 2 * v15);
      *(v19 + 88) = 0;
      *(*(a3 + 32) + 8 * v15) = *(*(*(v14 + 6) + 8 * v15) + 8);
      if (++v15 >= *(a3 + 18))
      {
        goto LABEL_18;
      }
    }

    if (sub_10000C240() && (sub_10000AF54("No resource for lmHandle %:", *(*(a3 + 24) + 2 * v15)), v23 = sub_10000C050(0x46u), os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (v15)
      {
LABEL_26:
        for (i = 0; i != v15; ++i)
        {
          v25 = *(*(*(v14 + 6) + 8 * i) + 8);
          if (!v25)
          {
            sub_1000D660C();
            v25 = *(*(*(v14 + 6) + 8 * i) + 8);
          }

          sub_1000E12C4(v25);
          *(*(a3 + 32) + 8 * i) = 0;
        }
      }
    }

    else if (v15)
    {
      goto LABEL_26;
    }

    v10 = 104;
  }

LABEL_31:
  v14[2] = 7;
  v20.n128_f64[0] = sub_100183470(v14);
LABEL_32:
  if (off_100B558D8)
  {
    off_100B558D8(v10, a2, a3, v20);
  }
}

void sub_100183C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 129)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = &xmmword_100B558E8 + 56 * v5;
      if (v8[1] == 1)
      {
        v8[2] = 7;
        --byte_100B558D0;
        byte_100B558D2 -= v8[26];
        v9 = sub_100183470(v8);
        if (off_100B558E0)
        {
          (off_100B558E0)(129, a2, a3, v9);
        }
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
  }

  else
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v12;
      v14 = &xmmword_100B558E8 + 56 * v11;
      if (__PAIR64__(v14[1], *v14) == (a2 | 0x100000000))
      {
        break;
      }

      v12 = 0;
      v11 = 1;
      if ((v13 & 1) == 0)
      {
        sub_1000D660C();
        v14 = 0;
        break;
      }
    }

    v14[2] = 7;
    --byte_100B558D0;
    byte_100B558D2 -= v14[26];
    v15.n128_f64[0] = sub_100183470(v14);
    v16 = off_100B558E0;
    if (off_100B558E0)
    {

      v16(a1, a2, a3, v15);
    }
  }
}

void sub_100183E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 129)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = &xmmword_100B55858 + 56 * v5;
      if (v8[2] == 1)
      {
        v8[3] = 7;
        v9 = sub_100183050(v8);
        if (off_100B559C8)
        {
          (off_100B559C8)(129, a2, a3, v9);
        }
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    return;
  }

  v10 = a1;
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = &xmmword_100B55858 + 56 * v11;
    if (v14[2] == 1 && *v14 == a2)
    {
      break;
    }

    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      sub_1000D660C();
      v14 = 0;
      break;
    }
  }

  if (v10 == 768)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("BIG sync established completed, due to terminate a BIG while the sync established BIG is pending");
      v21 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v26 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v10 = 768;
    goto LABEL_32;
  }

  if (!v10)
  {
    if (!*(a3 + 12))
    {
LABEL_19:
      v10 = 0;
      v20 = *a3;
      *(v14 + 24) = *(a3 + 16);
      *(v14 + 8) = v20;
      v14[3] = 0;
      ++byte_100B559C0;
      byte_100B559C2 += *(a3 + 12);
      goto LABEL_33;
    }

    v15 = 0;
    while (1)
    {
      v16 = sub_100256324(*(*(a3 + 16) + 2 * v15));
      v17 = *(v14 + 6);
      *(*(v17 + 8 * v15) + 8) = v16;
      v18 = *(*(v17 + 8 * v15) + 8);
      if (!v18)
      {
        break;
      }

      *(v18 + 48) = 0;
      *(*(*(*(v14 + 6) + 8 * v15) + 8) + 49) = 0;
      v19 = *(*(*(v14 + 6) + 8 * v15) + 8);
      *v19 = *(*(a3 + 16) + 2 * v15);
      *(v19 + 88) = 0;
      *(*(a3 + 24) + 8 * v15) = *(*(*(v14 + 6) + 8 * v15) + 8);
      if (++v15 >= *(a3 + 12))
      {
        goto LABEL_19;
      }
    }

    if (sub_10000C240() && (sub_10000AF54("No resource for lmHandle %:", *(*(a3 + 16) + 2 * v15)), v22 = sub_10000C050(0x46u), os_log_type_enabled(v22, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (v15)
      {
LABEL_27:
        for (i = 0; i != v15; ++i)
        {
          v24 = *(*(*(v14 + 6) + 8 * i) + 8);
          if (!v24)
          {
            sub_1000D660C();
            v24 = *(*(*(v14 + 6) + 8 * i) + 8);
          }

          sub_1000E12C4(v24);
          *(*(a3 + 24) + 8 * i) = 0;
        }
      }
    }

    else if (v15)
    {
      goto LABEL_27;
    }

    v10 = 104;
  }

LABEL_32:
  v14[3] = 7;
  v20.n128_f64[0] = sub_100183050(v14);
LABEL_33:
  if (off_100B559C8)
  {
    off_100B559C8(v10, a2, a3, v20);
  }
}

void sub_100184150(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = &xmmword_100B55858 + 56 * v4;
    if (v7[2] == 1 && *v7 == a1)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      sub_1000D660C();
      v7 = 0;
      break;
    }
  }

  v7[3] = 7;
  --byte_100B559C0;
  byte_100B559C2 -= v7[20];
  v8.n128_f64[0] = sub_100183050(v7);
  v9 = off_100B559D0;
  if (off_100B559D0)
  {

    v9(a1, a2, v8);
  }
}

uint64_t sub_10018421C()
{
  if (off_100B559E0)
  {
    return off_100B559E0();
  }

  return result;
}

void sub_100184230()
{
  sub_100304AF8("%s: [START]", "pcie_dump_state");
  if (qword_100B55A48)
  {
    sub_100304AF8("HCI/SCO Pool Info:");
    sub_100254AFC(qword_100B55A48);
  }

  if (qword_100B55A50)
  {
    sub_100304AF8("ACL Pool Info:");
    sub_100254AFC(qword_100B55A50);
  }

  sub_100304AF8("%s: [END]", "pcie_dump_state");
}

uint64_t sub_1001842BC(uint64_t a1, uint64_t a2)
{
  if (qword_100B55A70 != -1)
  {
    sub_10080F74C();
  }

  if (qword_100B55A68)
  {
    return 0;
  }

  else
  {
    return 114;
  }
}

uint64_t sub_100184300(int a1, uint64_t a2, unsigned int a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v6 = 3;
    }

    else
    {
      if (a1 != 243)
      {
        goto LABEL_8;
      }

      v6 = 4;
    }

    v7 = &qword_100B55A48;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v6 = 4;
        v7 = &qword_100B55A50;
        goto LABEL_12;
      }

LABEL_8:
      sub_100304AF8("PCIe default packet type: 0x%x\n", a1);
      off_100B55A60("PCIe bad packet type", 1);
      return 101;
    }

    v6 = 3;
    v7 = &qword_100B55A48;
  }

LABEL_12:
  v9 = sub_100254FA0(*v7);
  if (!v9)
  {
    v10 = malloc_type_malloc(v6 + a3, 0x100004077774924uLL);
    if (!v10)
    {
      sub_100304AF8("failed to allocate memory for tx_buff");
      off_100B55A60("PCIe memory allocation failure", 1);
      return 106;
    }

    v9 = v10;
  }

  *v9 = a2;
  *(v9 + 2) = a3;
  if (a1 == 243 || a1 == 2)
  {
    *(v9 + 3) = BYTE1(a3);
  }

  if (a3)
  {
    sub_10001F6DC((v9 + v6));
  }

  else
  {
    sub_10001F480(a2);
  }

  if (AppleConvergedTransportWrite())
  {
    return 625;
  }

  if ((byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe write failed: type %u\n", a1);
    off_100B55A60("PCIe write failed", 1);
  }

  return 1205;
}

uint64_t sub_100184550()
{
  sub_100304AF8("PCIe FLR\n");
  v0 = IOServiceMatching("AppleBluetoothModule");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    connect = 0;
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      sub_100304AF8("PCIe could not open AppleBluetoothModule service: %#x\n");
    }

    else
    {
      v3 = IOConnectCallScalarMethod(connect, 5u, 0, 0, 0, 0);
      if (!v3)
      {
        IOServiceClose(connect);
        return 0;
      }

      sub_100304AF8("PCIe FLR failed: %#x\n", v3);
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleBluetoothModule service\n");
  }

  return 1205;
}

uint64_t sub_100184634(uint64_t a1, uint64_t a2)
{
  sub_100304AF8("PCIe Download Firmware, size = %d\n", a1);
  AppleConvergedTransportInitParameters();
  v2 = 1205;
  if (AppleConvergedTransportCreate())
  {
    v3 = AppleConvergedTransportSendImage();
    v4 = v3 == 0;
    if (v3)
    {
      v5 = "PCIe Download Firmware -- Done\n";
    }

    else
    {
      v5 = "PCIe failed to send image\n";
    }

    if (v4)
    {
      v2 = 1205;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v5 = "PCIe failed to create BTI transport\n";
  }

  sub_100304AF8(v5);
  if (AppleConvergedTransportIsValid() && (AppleConvergedTransportFree() & 1) == 0)
  {
    sub_100304AF8("PCIe free BTI transport failed\n");
  }

  return v2;
}

uint64_t sub_100184744()
{
  sub_100304AF8("PCIe powercycle\n");
  v0 = IOServiceMatching("AppleBluetoothModule");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    connect = 0;
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      sub_100304AF8("PCIe could not open AppleBluetoothModule service: %#x\n");
    }

    else
    {
      v3 = IOConnectCallScalarMethod(connect, 3u, 0, 0, 0, 0);
      if (!v3)
      {
        IOServiceClose(connect);
        return 0;
      }

      sub_100304AF8("PCIe powercycle failed: %#x\n", v3);
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleBluetoothModule service\n");
  }

  return 1205;
}

uint64_t sub_100184828(uint64_t (*a1)(void, void), uint64_t a2, uint64_t (*a3)(void, void))
{
  if (a1 && a2 && a3)
  {
    if (qword_100B55A70 != -1)
    {
      sub_10080F74C();
    }

    if (qword_100B55A68)
    {
      off_100B55A60 = a1;
      if (!AppleConvergedTransportRegisterEventBlockQ())
      {
        sub_100304AF8("PCIe failed to register event listener\n", _NSConcreteStackBlock, 0x40000000, sub_10018495C, &unk_100AE4788, a1, a2);
        result = 0;
        off_100B55A60 = 0;
        return result;
      }

      sub_100304AF8("PCIe registered event listener successfully\n", _NSConcreteStackBlock, 0x40000000, sub_10018495C, &unk_100AE4788, a1, a2);
      if (sub_1003079A0(qword_100B55A68, a3))
      {
        sub_100304AF8("Registered ABTM listener successfully\n");
        return 1;
      }

      sub_100304AF8("Failed to register ABTM listener\n", v6, v7);
    }

    else
    {
      sub_100304AF8("Initialization failed\n", 0, a3);
    }
  }

  else
  {
    sub_100304AF8("Bad argument\n", a2, a3);
  }

  return 0;
}

uint64_t sub_10018495C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a2 == 2)
  {
    sub_100304AF8("PCIe detected controller is resetting", a2, a3, a4);
    v7 = *(a1 + 40);
    v9 = &byte_100B55A59;
    v8 = a3;
  }

  else
  {
    if (a2)
    {
      sub_100304AF8("Non-fatal event: %s\n", a3);
      v7 = *(a1 + 32);
      v8 = a3;
      v9 = 0;
    }

    else
    {
      v6 = a4;
      byte_100B55A59 = 1;
      sub_100304AF8("Fatal event: %s\n", a3);
      usleep(1000 * v6);
      v7 = *(a1 + 32);
      v8 = a3;
      v9 = 1;
    }
  }

  return v7(v8, v9);
}

uint64_t sub_100184A44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_100B55A70 != -1)
    {
      sub_10080F74C();
    }

    if (qword_100B55A68)
    {
      if (AppleConvergedTransportRegisterTimeSyncEventBlockQ())
      {
        sub_100304AF8("PCIe registered time sync listener successfully\n");
        return 1;
      }

      sub_100304AF8("PCIe failed to register time sync listener\n", v2);
    }

    else
    {
      sub_100304AF8("Initialization failed\n", 0);
    }
  }

  else
  {
    sub_100304AF8("Bad argument\n", a2);
  }

  return 0;
}

uint64_t sub_100184B74()
{
  qword_100B55A48 = sub_100254D50(0x10u, 0x200uLL);
  if (qword_100B55A48)
  {
    qword_100B55A50 = sub_100254D50(0x10u, 0x1000uLL);
    if (qword_100B55A50)
    {
      if ((AppleConvergedTransportIsValid() & 1) != 0 || (AppleConvergedTransportIsValid() & 1) != 0 || AppleConvergedTransportIsValid())
      {
        sub_1000D660C();
      }

      v2 = 0u;
      v3 = 0u;
      HIDWORD(v1) = 0;
      byte_100B55A59 = 0;
      AppleConvergedTransportInitParameters();
      DWORD2(v2) = 5000;
      LODWORD(v3) = 12;
      *(&v3 + 4) = 0x10200000020;
      HIDWORD(v4) = 0;
      if (AppleConvergedTransportCreate())
      {
        AppleConvergedTransportInitParameters();
        LODWORD(v1) = 3;
        DWORD2(v2) = 5000;
        LODWORD(v3) = 12;
        *(&v3 + 4) = 0xA2200000020;
        LODWORD(v4) = 33;
        if (AppleConvergedTransportCreate())
        {
          AppleConvergedTransportInitParameters();
          LODWORD(v1) = 4;
          DWORD2(v2) = 5000;
          LODWORD(v3) = 12;
          *(&v3 + 4) = 0x10200000020;
          LODWORD(v4) = 33;
          if (AppleConvergedTransportCreate())
          {
            return 0;
          }

          sub_100304AF8("PCIe failed to create SCO transport\n", v1, 0, &stru_100AE49A8, *(&v2 + 1), v3, &stru_100AE49E8, &stru_100AE4A28, 0, 0, v4);
        }

        else
        {
          sub_100304AF8("PCIe failed to create ACL transport\n", v1, 0, &stru_100AE48E8, *(&v2 + 1), v3, &stru_100AE4928, &stru_100AE4968, 0, 0, v4);
        }
      }

      else
      {
        sub_100304AF8("PCIe failed to create HCI transport\n", 2, 0, &stru_100AE4828, *(&v2 + 1), v3, &stru_100AE4868, &stru_100AE48A8, 0, 0, 25);
      }

      sub_1001850C0();
      sub_1001851B4();
      off_100B55A60("PCIe transport creation failed", 1);
    }

    else
    {
      sub_100254CB4(qword_100B55A48);
      off_100B55A60("acl mempool allocation failure", 1);
    }
  }

  else
  {
    off_100B55A60("hci-sco mempool allocation failure", 1);
  }

  return 633;
}

void sub_100184E0C(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  if (!a2)
  {
    if ((byte_100B55A59 & 1) == 0)
    {
      if ((byte_100B55A58 & 1) == 0)
      {
        sub_1000031B0();
        v9[0] = 0;
        v9[1] = 0;
        v8 = sub_100003560(a1, a3, a4, v9);
        sub_10000394C(a1, a3, v8, v9);
        sub_10000C198();
        if (!a3)
        {
          return;
        }

LABEL_10:
        free(a3);
        return;
      }

      sub_1000040DC(a3);
    }

    if (!a3)
    {
      return;
    }

    goto LABEL_10;
  }

  if ((byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe read failed: type %u, status 0x%x\n", a1, a2);
    sleep(0xC8u);
    v5 = off_100B55A60;

    v5("PCIe read failed", 1);
  }
}

void sub_100184F0C(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2 && (byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe HCI write failed: 0x%x\n", a2);
    sleep(0xC8u);
    v4 = off_100B55A60;

    v4("PCIe HCI write failed", 1);
  }
}

void sub_100184FB0(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2 && (byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe ACL write failed: 0x%x\n", a2);
    sleep(0xC8u);
    v4 = off_100B55A60;

    v4("PCIe ACL write failed", 1);
  }
}

void sub_100185054(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2 && (byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe SCO write failed: 0x%x\n", a2);
    sleep(0xC8u);
    v4 = off_100B55A60;

    v4("PCIe SCO write failed", 1);
  }
}

uint64_t sub_1001850C0()
{
  if (AppleConvergedTransportIsValid() && (AppleConvergedTransportFree() & 1) == 0)
  {
    sub_100304AF8("PCIe free HCI transport failed\n");
    off_100B55A60("PCIe free HCI transport failed", 1);
  }

  if (AppleConvergedTransportIsValid() && (AppleConvergedTransportFree() & 1) == 0)
  {
    sub_100304AF8("PCIe free ACL transport failed\n");
    off_100B55A60("PCIe free ACL transport failed", 1);
  }

  result = AppleConvergedTransportIsValid();
  if (result)
  {
    result = AppleConvergedTransportFree();
    if ((result & 1) == 0)
    {
      sub_100304AF8("PCIe free SCO transport failed\n");
      v1 = off_100B55A60;

      return v1("PCIe free SCO transport failed", 1);
    }
  }

  return result;
}

void sub_1001851B4()
{
  if (qword_100B55A48)
  {
    sub_100254EE8(qword_100B55A48);
    sub_100254CB4(qword_100B55A48);
    qword_100B55A48 = 0;
  }

  if (qword_100B55A50)
  {
    sub_100254EE8(qword_100B55A50);
    sub_100254CB4(qword_100B55A50);
    qword_100B55A50 = 0;
  }
}

uint64_t sub_100185210()
{
  sub_10000C198();
  sub_1001850C0();
  sub_1001851B4();
  sub_1000031B0();
  return 0;
}

uint64_t sub_100185294()
{
  if (!sub_10023E808())
  {
    return 114;
  }

  sub_100304AF8("pcie_force_doorbell_flush AppleConvergedIPCOLYBTControl\n");
  v0 = IOServiceMatching("AppleConvergedIPCOLYBTControl");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    connect = 0;
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      sub_100304AF8("PCIe could not open AppleConvergedIPCOLYBTControl service: %#x\n");
    }

    else
    {
      v3 = IOConnectCallScalarMethod(connect, 4u, 0, 0, 0, 0);
      if (!v3)
      {
        IOServiceClose(connect);
        sub_100304AF8("pcie_force_doorbell_flush completed successfully\n");
        return 0;
      }

      sub_100304AF8("PCIe doorbell flush failed: %#x\n", v3);
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleConvergedIPCOLYBTControl service\n");
  }

  return 1205;
}

uint64_t sub_1001853C4()
{
  qword_100B55A90 = 0;
  qword_100B55AA8 = 0;
  qword_100B55AB0 = -1;
  unk_100B55AB9 = 0;
  qword_100B55A98 = -1;
  qword_100B55AC0 = 0;
  qword_100B55AC8 = -1;
  unk_100B55AD1 = 0;
  unk_100B55AA1 = 0;
  qword_100B55AD8 = 0;
  qword_100B55AE0 = -1;
  *algn_100B55AE9 = 0;
  byte_100B55A59 = 0;
  if ((sub_10018567C("hci", &qword_100B55A90) & 0x80000000) != 0)
  {
    sub_100304AF8("PCIe Skywalk failed to create HCI transport\n");
    goto LABEL_5;
  }

  byte_100B55AA0 = 4;
  unk_100B55AA1 = 25448;
  byte_100B55AA3 = 105;
  if (pthread_create(&qword_100BC7DC0, 0, sub_1000032AC, &qword_100B55A90))
  {
    sub_100304AF8("failed to create hci rx thread\n");
LABEL_5:
    sub_100185E08();
    off_100B55A60("PCIe Skywalk transport creation failed", 1);
    return 633;
  }

  sub_1001C5C44(qword_100BC7DC0, 63);
  if ((sub_10018567C("acl", &qword_100B55AA8) & 0x80000000) != 0)
  {
    sub_100304AF8("PCIe Skywalk failed to create ACL transport\n");
    goto LABEL_5;
  }

  byte_100B55AB8 = 2;
  unk_100B55AB9 = 25441;
  byte_100B55ABB = 108;
  if (pthread_create(&qword_100BC7DC8, 0, sub_1000032AC, &qword_100B55AA8))
  {
    sub_100304AF8("failed to create acl rx thread\n");
    goto LABEL_5;
  }

  sub_1001C5C44(qword_100BC7DC8, 63);
  if ((sub_10018567C("sco", &qword_100B55AC0) & 0x80000000) != 0)
  {
    sub_100304AF8("PCIe Skywalk failed to create SCO transport\n");
    goto LABEL_5;
  }

  byte_100B55AD0 = 3;
  unk_100B55AD1 = 25459;
  byte_100B55AD3 = 111;
  if (pthread_create(&qword_100BC7DD0, 0, sub_1000032AC, &qword_100B55AC0))
  {
    sub_100304AF8("failed to create sco rx thread\n");
    goto LABEL_5;
  }

  sub_1001C5C44(qword_100BC7DD0, 63);
  if (sub_100185C94() && !sub_10018567C("iso", &qword_100B55AD8))
  {
    byte_100B55AE8 = 5;
    __strlcpy_chk();
    if (pthread_create(&qword_100BC7DD8, 0, sub_1000032AC, &qword_100B55AD8))
    {
      sub_100304AF8("failed to create iso rx thread\n");
      goto LABEL_5;
    }

    sub_1001C5C44(qword_100BC7DD8, 63);
  }

  result = 0;
  byte_100B56AF0 = 0;
  return result;
}

uint64_t sub_10018567C(const char *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    sub_100304AF8("%s: invalid input. protocol/channel_data null\n", a2);
    return 0xFFFFFFFFLL;
  }

  memset(&changelist, 0, sizeof(changelist));
  memset(uu, 0, sizeof(uu));
  sub_100304AF8("retrieving uuid for %s\n", a1);
  notification[0] = 0;
  *in = 0u;
  memset(v38, 0, sizeof(v38));
  v4 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v4);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  v7 = IOServiceMatching("AppleConvergedIPCInterface");
  if (v7)
  {
    v8 = v7;
    v9 = kCFAllocatorDefault;
    v10 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v8, @"ACIPCInterfaceProtocol", v10);
      CFRelease(v11);
      v12 = IOServiceAddMatchingNotification(v4, "IOServiceFirstMatch", v8, sub_100185C54, Current, notification);
      if (v12)
      {
        sub_100304AF8("IOServiceAddMatchingNotification returned 0x%08x", v12);
        CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        IONotificationPortDestroy(v4);
      }

      else
      {
        v13 = IOIteratorNext(notification[0]);
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = 0xFFFF;
        }

        else
        {
          do
          {
            sub_100304AF8("ACIPCInterface not found, waiting for it to appear");
            v16 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0);
            v17 = IOIteratorNext(notification[0]);
            v15 = v17 == 0;
            if (v17)
            {
              v18 = 1;
            }

            else
            {
              v18 = v16 == kCFRunLoopRunTimedOut;
            }
          }

          while (!v18);
          v14 = v17;
          v9 = kCFAllocatorDefault;
        }

        CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        IONotificationPortDestroy(v4);
        IOObjectRelease(notification[0]);
        if (!v15 && (v16 == 0xFFFF || v16 == kCFRunLoopRunStopped))
        {
          v19 = IORegistryEntrySearchCFProperty(v14, "IOService", @"ACIPCInterfaceTransport", v9, 1u);
          if (v19)
          {
            v20 = v19;
            *buffer = 0;
            v36 = 0;
            if (CFStringGetCString(v19, buffer, 16, 0x600u))
            {
              sub_100304AF8("ACIPCInterfaceTransport %s\n", buffer);
              if (*buffer == 0x6B6C6177796B73)
              {
                v29 = 0;
                while (1)
                {
                  v30 = IORegistryEntrySearchCFProperty(v14, "IOService", @"IOSkywalkNexusUUID", v9, 1u);
                  if (v30)
                  {
                    break;
                  }

                  usleep(0x30D40u);
                  sub_100304AF8("Retry: %d - trying to find ACIPCInterfaceTransport + IOSkywalkNexusUUID\n", v29++);
                  if (v29 == 25)
                  {
                    goto LABEL_29;
                  }
                }

                v31 = v30;
                if (CFStringGetCString(v30, in, 37, 0x600u))
                {
                  sub_100304AF8("protocol: %s, uuidstr: %s\n", a1, in);
                  uuid_parse(in, uu);
                }

                else
                {
                  sub_100304AF8("protocol: %s, failed to get uuid CString\n", a1);
                }

                sub_100304AF8("ACIPCInterfaceTransport + IOSkywalkNexusUUID found\n");
                CFRelease(v31);
              }

              else
              {
                sub_100304AF8("ACIPCInterfaceTransport is not skywalk\n");
              }
            }

            else
            {
              sub_100304AF8("failed to get cstring property");
            }

LABEL_29:
            CFRelease(v20);
            if (!v14)
            {
              goto LABEL_31;
            }
          }

          else
          {
            sub_100304AF8("ACIPCInterface found, ACIPCInterfaceTransport property not found");
          }
        }

        else
        {
          sub_100304AF8("ACIPCInterface not found after 5 second -- runLoopResult = 0x%02x", v16);
          if (!v14)
          {
            goto LABEL_31;
          }
        }

        IOObjectRelease(v14);
      }
    }

    else
    {
      sub_100304AF8("%s: failed to create stringRef", "get_uuid");
      CFRelease(v8);
    }
  }

  else
  {
    sub_100304AF8("%s: could not create matching dictionary", "get_uuid");
  }

LABEL_31:
  v21 = os_channel_create();
  if (v21)
  {
    *a2 = v21;
    if (os_channel_attr_create())
    {
      if (!os_channel_read_attr())
      {
        *in = 0;
        *buffer = 0;
        *notification = 0;
        os_channel_attr_get();
        os_channel_attr_get();
        os_channel_attr_get();
        sub_100304AF8("(%s) skywalk channel slotlen: %llu, rxslots: %llu, txslots: %llu\n", a1, *in, *buffer, *notification);
      }

      os_channel_attr_destroy();
    }

    v22 = kqueue();
    if (v22 == -1)
    {
      sub_100304AF8("(%s) failed to create write kqueue\n");
    }

    else
    {
      v23 = v22;
      *(a2 + 8) = v22;
      changelist.ident = os_channel_get_fd();
      *&changelist.filter = 393214;
      memset(&changelist.fflags, 0, 20);
      if (kevent(v23, &changelist, 1, 0, 0, 0) == -1)
      {
        sub_100304AF8("(%s) write kevent registration failed\n");
      }

      else
      {
        v24 = kqueue();
        if (v24 == -1)
        {
          sub_100304AF8("(%s) failed to create read kqueue\n");
        }

        else
        {
          v25 = v24;
          v26 = &changelist | 0xC;
          *(a2 + 12) = v24;
          changelist.ident = os_channel_get_fd();
          *&changelist.filter = 393215;
          *v26 = 0;
          *(v26 + 8) = 0;
          *(v26 + 16) = 0;
          if (kevent(v25, &changelist, 1, 0, 0, 0) != -1)
          {
            sub_100304AF8("(%s) channel created successfully\n", a1);
            return 0;
          }

          sub_100304AF8("(%s) read kevent registration failed\n");
        }
      }
    }
  }

  else
  {
    sub_100304AF8("(%s) failed to create channel\n");
  }

  sub_100304AF8("(%s) failed to create channel\n", v28);
  return 0xFFFFFFFFLL;
}

void sub_100185C54(__CFRunLoop *a1)
{
  sub_100304AF8("ACIPCInterface found, releasing waiting thread");

  CFRunLoopStop(a1);
}

uint64_t sub_100185C94()
{
  valuePtr = 0;
  v0 = IOServiceNameMatching("AppleOLYHAL");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    return 0;
  }

  v2 = MatchingService;
  v3 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"HWIdentifiers", kCFAllocatorDefault, 1u);
  if (!v3)
  {
    IOObjectRelease(v2);
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDictionaryGetTypeID())
  {
    v10 = 0;
    Value = 0;
    v8 = 0;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(v4, @"C");
  CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
  v7 = CFDictionaryGetValue(v4, @"s");
  v8 = v7;
  if (valuePtr == 4388)
  {
    if (CFStringCompare(v7, @"C2", 0))
    {
      v9 = valuePtr > 0x112E;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_14:
    v10 = 1;
    goto LABEL_15;
  }

  if (valuePtr >= 0x112F)
  {
    goto LABEL_14;
  }

LABEL_9:
  v10 = 0;
LABEL_15:
  IOObjectRelease(v2);
  CFRelease(v4);
  if (Value)
  {
    CFRelease(Value);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

uint64_t sub_100185E08()
{
  sub_100304AF8("closing hci channel\n");
  sub_100185E88(&qword_100B55A90);
  sub_100304AF8("closing acl channel\n");
  sub_100185E88(&qword_100B55AA8);
  sub_100304AF8("closing sco channel\n");
  sub_100185E88(&qword_100B55AC0);
  sub_100304AF8("closing iso channel\n");

  return sub_100185E88(&qword_100B55AD8);
}

uint64_t sub_100185E88(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2 != -1)
    {
      close(v2);
      *(v1 + 8) = -1;
    }

    v3 = *(v1 + 12);
    if (v3 != -1)
    {
      close(v3);
      *(v1 + 12) = -1;
    }

    result = *v1;
    if (*v1)
    {
      result = os_channel_destroy();
      *v1 = 0;
    }
  }

  return result;
}

uint64_t sub_100185EF8()
{
  sub_100185E08();
  sub_10000C198();
  v0 = pthread_join(qword_100BC7DC0, 0);
  if (v0)
  {
    sub_100304AF8("hci thread join failed: %d\n", v0);
  }

  sub_100304AF8("hci thread joined\n");
  v1 = pthread_join(qword_100BC7DC8, 0);
  if (v1)
  {
    sub_100304AF8("acl thread join failed: %d\n", v1);
  }

  sub_100304AF8("acl thread joined\n");
  v2 = pthread_join(qword_100BC7DD0, 0);
  if (v2)
  {
    sub_100304AF8("sco thread join failed: %d\n", v2);
  }

  sub_100304AF8("sco thread joined\n");
  v3 = pthread_join(qword_100BC7DD8, 0);
  if (v3)
  {
    sub_100304AF8("iso thread join failed: %d\n", v3);
  }

  sub_100304AF8("iso thread joined\n");
  sub_1000031B0();
  return 0;
}

const char *sub_10018601C(int a1)
{
  if (a1 > -536870353)
  {
    if (a1 > -536870257)
    {
      if (a1 <= -536870113)
      {
        switch(a1)
        {
          case -536870256:
            return "kIOMessageSystemWillNotSleep";
          case -536870144:
            return "kIOMessageSystemHasPoweredOn";
          case -536870128:
            return "kIOMessageSystemWillRestart";
        }
      }

      else if (a1 > -536870081)
      {
        if (a1 == -536870080)
        {
          return "kIOMessageSystemCapabilityChange";
        }

        if (a1 == -536870064)
        {
          return "kIOMessageDeviceSignaledWakeup";
        }
      }

      else
      {
        if (a1 == -536870112)
        {
          return "kIOMessageSystemWillPowerOn";
        }

        if (a1 == -536870096)
        {
          return "kIOMessageCopyClientID";
        }
      }
    }

    else if (a1 <= -536870316)
    {
      switch(a1)
      {
        case -536870352:
          return "kIOMessageDeviceHasPoweredOn";
        case -536870336:
          return "kIOMessageCanSystemPowerOff";
        case -536870320:
          return "kIOMessageSystemWillPowerOff";
      }
    }

    else if (a1 > -536870289)
    {
      if (a1 == -536870288)
      {
        return "kIOMessageCanSystemSleep";
      }

      if (a1 == -536870272)
      {
        return "kIOMessageSystemWillSleep";
      }
    }

    else
    {
      if (a1 == -536870315)
      {
        return "kIOMessageSystemPagingOff";
      }

      if (a1 == -536870304)
      {
        return "kIOMessageSystemWillNotPowerOff";
      }
    }
  }

  else if (a1 > -536870617)
  {
    if (a1 <= -536870385)
    {
      switch(a1)
      {
        case -536870616:
          return "kIOMessageConsoleSecurityChange";
        case -536870608:
          return "kIOMessageServicePropertyChange";
        case -536870400:
          return "kIOMessageCanDevicePowerOff";
      }
    }

    else if (a1 > -536870369)
    {
      if (a1 == -536870368)
      {
        return "kIOMessageDeviceWillNotPowerOff";
      }

      if (a1 == -536870363)
      {
        return "kIOMessageDeviceHasPoweredOff";
      }
    }

    else
    {
      if (a1 == -536870384)
      {
        return "kIOMessageDeviceWillPowerOff";
      }

      if (a1 == -536870379)
      {
        return "kIOMessageDeviceWillPowerOn";
      }
    }
  }

  else if (a1 <= -536870657)
  {
    switch(a1)
    {
      case -536870896:
        return "kIOMessageServiceIsTerminated";
      case -536870880:
        return "kIOMessageServiceIsSuspended";
      case -536870864:
        return "kIOMessageServiceIsResumed";
    }
  }

  else if (a1 > -536870641)
  {
    if (a1 == -536870640)
    {
      return "kIOMessageServiceWasClosed";
    }

    if (a1 == -536870624)
    {
      return "kIOMessageServiceBusyStateChange";
    }
  }

  else
  {
    if (a1 == -536870656)
    {
      return "kIOMessageServiceIsRequestingClose";
    }

    if (a1 == -536870655)
    {
      return "kIOMessageServiceIsAttemptingOpen";
    }
  }

  return "Unknown";
}

uint64_t sub_1001863E4(uint64_t (*a1)(void, void), uint64_t (*a2)(void, void))
{
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v4 = sub_10022EB48(&keys, &values, 1);
  notification = 0;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = IONotificationPortCreate(kIOMainPortDefault);
    if (v7)
    {
      v8 = v7;
      IONotificationPortSetDispatchQueue(v7, &_dispatch_main_q);
      v9 = IOServiceAddInterestNotification(v8, v6, "IOGeneralInterest", sub_100186530, 0, &notification);
      if (!v9)
      {
        IOObjectRelease(v6);
        off_100B56AF8 = a1;
        off_100B56B00 = a2;
        return 1;
      }

      sub_100304AF8("Could not add interest notification on service: %#x\n", v9);
      IONotificationPortDestroy(v8);
    }

    else
    {
      sub_100304AF8("Cannot create notification port\n");
    }
  }

  else
  {
    sub_100304AF8("Cannot find AppleBluetoothModule service\n");
  }

  return 0;
}

void sub_100186530(uint64_t a1, io_registry_entry_t a2, int a3)
{
  v5 = sub_10018601C(a3);
  sub_100304AF8("%s: messageType:%s (0x%x)\n", "pcieSrsListenerCallback", v5, a3);
  v6 = IORegistryEntrySearchCFProperty(a2, "IOService", @"errorCode", kCFAllocatorDefault, 1u);
  valuePtr = 0;
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (a3 == -536870608 && v6)
  {
    v10 = 0;
    if (!CFNumberGetValue(v6, kCFNumberSInt32Type, &v10))
    {
      sub_100304AF8("%s: failed to get property value\n");
      goto LABEL_34;
    }

    sub_100304AF8("%s: errorCode:%d\n", "pcieSrsListenerCallback", v10);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        if (off_100B56B00)
        {
          off_100B56B00("PCIE SRS Reset", &byte_100B56B10);
        }

        goto LABEL_32;
      }

      if (v10 != 4)
      {
        goto LABEL_29;
      }
    }

    else if (v10 != 1)
    {
      if (v10 == 2)
      {
        if (off_100B56AF8)
        {
          off_100B56AF8("Non Fatal Error", 0);
        }

        goto LABEL_32;
      }

LABEL_29:
      sub_100304AF8("%s: Invalid errorCode \n", "pcieSrsListenerCallback");
LABEL_32:
      if (IORegistryEntrySetCFProperty(a2, @"errorCode", v7))
      {
        sub_100304AF8("%s: failed to clear error code due to: %x\n");
      }

      goto LABEL_34;
    }

    if (off_100B56AF8)
    {
      if (v10 == 4)
      {
        v9 = "Driver Error";
      }

      else
      {
        v9 = "Fatal Error";
      }

      off_100B56AF8(v9, 1);
    }

    goto LABEL_32;
  }

  if ((a3 | 0x20) == 0xE0000230)
  {
    if (a3 == -536870352)
    {
      v8 = "woke up";
    }

    else
    {
      v8 = "in sleep";
    }

    sub_100304AF8("SRS Transport %s", v8);
  }

  else if (a3 == -536870896 && off_100B56AF8)
  {
    off_100B56AF8("Driver Terminated", 1);
  }

  if (!v6)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_34:
  CFRelease(v6);
  if (!v7)
  {
    return;
  }

LABEL_16:
  CFRelease(v7);
}

uint64_t sub_100186790(uint64_t (*a1)(void))
{
  connect = 0;
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v2 = sub_10022EB48(&keys, &values, 1);
  v13 = 0u;
  v14 = 0u;
  *reference = 0u;
  v12 = 0u;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    v5 = IONotificationPortCreate(kIOMainPortDefault);
    v6 = v5;
    if (v5)
    {
      MachPort = IONotificationPortGetMachPort(v5);
      if (MachPort)
      {
        v8 = MachPort;
        IONotificationPortSetDispatchQueue(v6, &_dispatch_main_q);
        if (a1)
        {
          reference[1] = sub_1001869B0;
          *&v12 = a1;
          if (IOServiceOpen(v4, mach_task_self_, 0, &connect))
          {
            sub_100304AF8("%s: PCIe could not open AppleSunriseBluetooth service: %#x\n");
          }

          else
          {
            if (!IOConnectCallAsyncScalarMethod(connect, 8u, v8, reference, 3u, 0, 0, 0, 0))
            {
              sub_100304AF8("%s: Created Timesync listener successfully\n", "create_pcie_srs_timesync_listener");
              off_100B56B08 = a1;
              IOObjectRelease(v4);
              return 1;
            }

            sub_100304AF8("%s: IOConnectCallAsyncScalarMethod failed with error:: %#x\n");
          }
        }

        else
        {
          sub_100304AF8("%s: Bad argument\n");
        }
      }

      else
      {
        sub_100304AF8("%s: Failed to get mach notification port\n");
      }
    }

    else
    {
      sub_100304AF8("%s: Cannot create notification port\n");
    }

    IOObjectRelease(v4);
    if (connect)
    {
      IOServiceClose(connect);
    }

    if (v6)
    {
      IONotificationPortDestroy(v6);
    }
  }

  else
  {
    sub_100304AF8("%s: Cannot find AppleBluetoothModule service\n", "create_pcie_srs_timesync_listener");
  }

  return 0;
}

void sub_1001869B0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (a3[1] == -1)
    {
      sub_100304AF8("%s: Invalid timestamp received\n", a2);
    }

    else
    {
      v3[1] = a3[1];
      v4 = 0;
      v3[0] = *a3;
      LODWORD(v4) = a3[2];
      off_100B56B08(v3);
    }
  }

  else
  {
    sub_100304AF8("%s: Invalid args\n", a2);
  }
}

uint64_t sub_100186A34(uint64_t a1, uint64_t a2)
{
  if (qword_100B56B18 != -1)
  {
    sub_10080F760();
  }

  if (qword_100B56B20)
  {
    return 0;
  }

  else
  {
    return 114;
  }
}

uint64_t sub_100186A78()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  qword_100B56B28 = dispatch_queue_create("com.apple.bluetoothd.pcie-srs", v0);
  byte_100B56B10 = 0;
  if (dword_100B56B30)
  {
    sub_1000D660C();
  }

  dword_100B56B30 = sub_100187344("hci");
  if (!dword_100B56B30)
  {
    sub_100304AF8("Failed to find SRS HCI transport");
    goto LABEL_29;
  }

  if (dword_100B56B78)
  {
    sub_1000D660C();
  }

  dword_100B56B78 = sub_100187344("acl");
  if (!dword_100B56B78)
  {
    sub_100304AF8("Failed to find SRS ACL transport");
    goto LABEL_29;
  }

  if (dword_100B56BC0)
  {
    sub_1000D660C();
  }

  dword_100B56BC0 = sub_100187344("sco");
  if (!dword_100B56BC0)
  {
    sub_100304AF8("Failed to find SRS SCO transport");
    goto LABEL_29;
  }

  if (dword_100B56C08)
  {
    sub_1000D660C();
  }

  dword_100B56C08 = sub_100187344("iso");
  if (!dword_100B56C08)
  {
    sub_100304AF8("Failed to find SRS ISO transport");
  }

  if (dword_100B56B34)
  {
    sub_1000D660C();
  }

  if (sub_100187518(dword_100B56B30, &dword_100B56B30))
  {
    sub_100304AF8("Failed to open SRS HCI transport");
LABEL_29:
    sub_10000C198();
    sub_100187BEC();
    sub_1000031B0();
    return 114;
  }

  if (dword_100B56B7C)
  {
    sub_1000D660C();
  }

  if (sub_100187518(dword_100B56B78, &dword_100B56B78))
  {
    sub_100304AF8("Failed to open SRS ACL transport");
    goto LABEL_29;
  }

  if (dword_100B56BC4)
  {
    sub_1000D660C();
  }

  if (sub_100187518(dword_100B56BC0, &dword_100B56BC0))
  {
    sub_100304AF8("Failed to open SRS SCO transport");
    goto LABEL_29;
  }

  v2 = dword_100B56C08;
  if (dword_100B56C08)
  {
    if (dword_100B56C0C)
    {
      sub_1000D660C();
      v2 = dword_100B56C08;
    }

    if (sub_100187518(v2, &dword_100B56C08))
    {
      sub_100304AF8("Failed to open SRS ISO transport");
    }
  }

  sub_100187594(&dword_100B56B30);
  sub_100187594(&dword_100B56B78);
  sub_100187594(&dword_100B56BC0);
  return 0;
}

uint64_t sub_100186C90()
{
  sub_10000C198();
  sub_100187BEC();
  sub_1000031B0();
  return 0;
}

void sub_100186CBC(int a1, uint64_t a2, int a3)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        goto LABEL_8;
      case 5:
        v4 = &dword_100B56C08;
        goto LABEL_11;
      case 243:
LABEL_8:
        v4 = &dword_100B56BC0;
        goto LABEL_11;
    }

LABEL_32:
    sub_100304AF8("PCIe default packet type: 0x%x\n", a2);
    goto LABEL_34;
  }

  if (a1 == 1)
  {
    v4 = &dword_100B56B30;
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    goto LABEL_32;
  }

  v4 = &dword_100B56B78;
LABEL_11:
  if (byte_100B57C51 == 1)
  {
    sub_1000D660C();
    return;
  }

  byte_100B56C51[&stru_100001000] = 1;
  byte_100B56C51[0] = a1;
  word_100B56C52 = a2;
  byte_100B56C54 = a3;
  if (a1 != 2 && a1 != 243 && a1 != 5)
  {
    v5 = 4;
    if (a3)
    {
      goto LABEL_17;
    }

LABEL_19:
    sub_10001F480(a2);
    goto LABEL_20;
  }

  byte_100B56C55 = BYTE1(a3);
  v5 = 5;
  if (!a3)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_10001F6DC(&byte_100B56C51[v5]);
LABEL_20:
  if (!*v4 || (v6 = v4[1]) == 0)
  {
    sub_100304AF8("Invalid SRS transport handle to write\n");
    byte_100B57C51 = 0;
LABEL_27:
    if (byte_100B56B10)
    {
      return;
    }

    sub_100304AF8("PCIe SRS write failed: type %u\n", v9);
LABEL_34:
    __break(1u);
    return;
  }

  if (byte_100B56C51[0] >= 6u)
  {
    sub_10080F774();
  }

  v7 = IOConnectCallMethod(v6, 1u, 0, 0, byte_100B56C51, (v5 + a3), 0, 0, 0, 0);
  if (v7)
  {
    v8 = v7;
    sub_100304AF8("Write to SRS transport failed with error: %x\n", v7);
    byte_100B57C51 = 0;
    if (v8 == -1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    byte_100B57C51 = 0;
  }
}

uint64_t sub_100186EE0()
{
  connect = 0;
  sub_100304AF8("SRS: PCIe FLR Start...");
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v0 = sub_10022EB48(&keys, &values, 1);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    v3 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v3)
    {
      sub_100304AF8("PCIe could not open AppleSunriseBluetooth service: %#x", v3);
      v4 = 1205;
    }

    else
    {
      v5 = IOConnectCallScalarMethod(connect, 5u, 0, 0, 0, 0);
      v4 = v5;
      if (v5)
      {
        sub_100304AF8("PCIe FLR failed: %#x", v5);
        if (v4 == -536870167)
        {
          v4 = 1220;
        }

        else
        {
          v4 = 1205;
        }
      }

      else
      {
        sub_100304AF8("SRS: PCIe FLR Done...");
      }
    }

    IOObjectRelease(v2);
    if (connect)
    {
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleSunriseBluetooth service");
    return 1205;
  }

  return v4;
}

uint64_t sub_100187044(int a1, const void *a2)
{
  connect = 0;
  sub_100304AF8("SRS: Send Image Start ...");
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v4 = sub_10022EB48(&keys, &values, 1);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v7)
    {
      sub_100304AF8("PCIe could not open AppleSunriseBluetooth service: %#x", v7);
      v8 = 1205;
    }

    else
    {
      v9 = IOConnectCallMethod(connect, 7u, 0, 0, a2, a1, 0, 0, 0, 0);
      v8 = v9;
      if (v9)
      {
        sub_100304AF8("SRS: sendImage failed: %#x", v9);
        if (v8 == -536870167)
        {
          v8 = 1220;
        }

        else
        {
          v8 = 1205;
        }
      }

      else
      {
        sub_100304AF8("SRS: Send Image Done ...");
      }
    }

    IOObjectRelease(v6);
    if (connect)
    {
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleSunriseBluetooth service");
    return 1205;
  }

  return v8;
}

uint64_t sub_1001871BC()
{
  connect = 0;
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v0 = sub_10022EB48(&keys, &values, 1);
  sub_100304AF8("SRS: PCIe Power Cycle ...");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    sub_100304AF8("PCIe could not find AppleSunriseBluetooth service");
    return 1205;
  }

  v2 = MatchingService;
  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
  {
    sub_100304AF8("PCIe could not open AppleSunriseBluetooth service: %#x");
LABEL_7:
    v3 = 1205;
    goto LABEL_8;
  }

  if (IOConnectCallScalarMethod(connect, 3u, 0, 0, 0, 0))
  {
    sub_100304AF8("SRS: PCIe Power Failed: %#x");
    goto LABEL_7;
  }

  sub_100304AF8("SRS: PCIe Power Cycle Done ...");
  v3 = 0;
LABEL_8:
  IOObjectRelease(v2);
  if (connect)
  {
    IOServiceClose(connect);
  }

  return v3;
}

uint64_t sub_100187344(const char *a1)
{
  notification = 0;
  v2 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v2);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  *keys = *off_100AE4AC8;
  values[0] = @"AppleSunriseBluetoothIPC";
  values[1] = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
  v5 = sub_10022EB48(keys, values, 2);
  v6 = CFAutorelease(v5);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 2, v6);
  v8 = IOServiceAddMatchingNotification(v2, "IOServiceFirstMatch", MutableCopy, sub_100187780, Current, &notification);
  if (v8)
  {
    sub_100304AF8("IOServiceAddMatchingNotification returned 0x%08x", v8);
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    return 0;
  }

  else
  {
    v10 = IOIteratorNext(notification);
    if (!v10)
    {
      do
      {
        sub_100304AF8("AppleSunriseIPCInterface not found, waiting for it to appear");
        v11 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0);
        v10 = IOIteratorNext(notification);
        if (v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11 == kCFRunLoopRunTimedOut;
        }
      }

      while (!v12);
    }

    v9 = v10;
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    IOObjectRelease(notification);
  }

  return v9;
}

uint64_t sub_100187518(io_service_t a1, uint64_t a2)
{
  connect = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  result = IOServiceOpen(a1, mach_task_self_, 0, &connect);
  if (result)
  {
    sub_100304AF8("Failed to open connection to AppleSunriseIPCInterface: %#x\n", result);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v5 = connect;
    *a2 = a1;
    *(a2 + 4) = v5;
  }

  return result;
}

void sub_100187594(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = IONotificationPortCreate(kIOMainPortDefault);
    if (v2)
    {
      v3 = v2;
      MachPort = IONotificationPortGetMachPort(v2);
      if (MachPort)
      {
        v5 = MachPort;
        IONotificationPortSetDispatchQueue(v3, qword_100B56B28);
        *(a1 + 8) = v5;
        *(a1 + 16) = v3;
      }

      else
      {
        sub_100304AF8("%s: Failed to get mach notification port\n");
      }
    }

    else
    {
      sub_100304AF8("%s: Cannot create notification port\n");
    }
  }

  if (a1 == &dword_100B56B30)
  {
    v6 = &qword_100B56B48;
    qword_100B56B48 = "hci";
    byte_100B56B50 = 4;
    qword_100B56B58 = &unk_100BC7DE0;
    v7 = xmmword_1008A30F0;
LABEL_14:
    *(v6 + 3) = v7;
    v8 = 266;
    goto LABEL_15;
  }

  if (a1 == &dword_100B56BC0)
  {
    v6 = &qword_100B56BD8;
    qword_100B56BD8 = "sco";
    byte_100B56BE0 = 3;
    qword_100B56BE8 = &unk_100BC7DE0;
    v7 = xmmword_1008A30E0;
    goto LABEL_14;
  }

  if (a1 == &dword_100B56B78)
  {
    v6 = &qword_100B56B90;
    qword_100B56B90 = "acl";
    byte_100B56B98 = 2;
    qword_100B56BA0 = &unk_100BC7DE0;
    unk_100B56BA8 = xmmword_1008A30D0;
    v8 = 2602;
  }

  else
  {
    if (a1 != &dword_100B56C08)
    {
      sub_1000D660C();
      goto LABEL_16;
    }

    v6 = &qword_100B56C20;
    qword_100B56C20 = "iso";
    byte_100B56C28 = 5;
    qword_100B56C30 = &unk_100BC7DE0;
    unk_100B56C38 = xmmword_1008A30D0;
    v8 = 2594;
  }

LABEL_15:
  v6[5] = v8;
LABEL_16:

  sub_1001877C0(a1);
}

void sub_100187780(__CFRunLoop *a1)
{
  sub_100304AF8("ACIPCInterface found, releasing waiting thread");

  CFRunLoopStop(a1);
}

void sub_1001877C0(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  *reference = 0u;
  v4 = 0u;
  if (a1 && *a1 && (v1 = *(a1 + 4)) != 0)
  {
    reference[1] = sub_1001878C4;
    *&v4 = a1;
    v2 = IOConnectCallAsyncMethod(v1, 0, *(a1 + 8), reference, 3u, 0, 0, (a1 + 56), 0x10uLL, 0, 0, *(a1 + 40), (a1 + 48));
    if (v2)
    {
      sub_100304AF8("Read from SRS transport failed with error: %x\n", v2);
    }
  }

  else
  {

    sub_100304AF8("Invalid SRS transport handle to read\n");
  }
}

uint64_t sub_1001878C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (byte_100B56B10)
  {
    sub_100304AF8("Read %d bytes from SRS %s transport but rx route suspended\n", a2);
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    if ((byte_100B56C50 & 1) != 0 || !v4)
    {
      if (v4)
      {
        sub_1000040DC(v6 + v7);
      }

      else
      {
        sub_100304AF8("Read invalid packet from SRS %s transport: %x", a2);
      }
    }

    else
    {
      info = 0;
      mach_timebase_info(&info);
      if (sub_1001B2A44())
      {
        v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
        v9 = dispatch_time(0, 1900000000);
        dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = sub_100187AB8;
        handler[3] = &unk_100AE4AD8;
        handler[4] = a1;
        dispatch_source_set_event_handler(v8, handler);
        sub_1000031B0();
        dispatch_resume(v8);
        v10 = mach_absolute_time();
        v13[0] = 0;
        v13[1] = 0;
        v11 = sub_100003560(*(a1 + 32), (v6 + v7), v4, v13);
        sub_10000394C(*(a1 + 32), (v6 + v7), v11, v13);
        dispatch_source_cancel(v8);
        dispatch_release(v8);
        sub_10000C198();
        if ((mach_absolute_time() - v10) * info.numer / info.denom >= 0x1C9C381)
        {
          sub_100304AF8("pcie_srs_read_completion_callback warning, it took %d ms, on %s", v12);
        }
      }
    }
  }

  return sub_1001877C0(a1);
}

uint64_t sub_100187AB8(uint64_t a1)
{
  result = sub_1001B2A44();
  if (result)
  {
    sub_100187BEC();
    v3 = a1;
    v4 = _os_log_pack_size();
    v5 = __error();
    v6 = _os_log_pack_fill(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4, *v5, &_mh_execute_header, "Bluetooth fatal error - crashing {reason=%d, RX Processing takes too long on %s}", v8, v9);
    v7 = *(*(v3 + 32) + 24);
    *v6 = 67109378;
    *(v6 + 4) = 656;
    *(v6 + 8) = 2080;
    *(v6 + 10) = v7;
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  return result;
}

unint64_t sub_100187BEC()
{
  sub_100187C3C(&dword_100B56B30);
  sub_100187C3C(&dword_100B56BC0);
  sub_100187C3C(&dword_100B56B78);

  return sub_100187C3C(&dword_100B56C08);
}

unint64_t sub_100187C3C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 4);
    if (v2)
    {
      IOConnectRelease(v2);
      v1[1] = 0;
    }

    result = *v1;
    if (result)
    {
      result = IOObjectRelease(result);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t sub_100187C84(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) || (sub_1000D660C(), *(a1 + 8)))
    {
      if (*(a1 + 16) || (sub_1000D660C(), *(a1 + 16)))
      {
        qword_100BC91E0 = a1;
        v3[2] = 0;
        v3[1] = 0x200010004;
        v3[0] = off_100AE4AF8;
        return sub_1001BD290(v3);
      }
    }
  }

  else
  {
    sub_1000D660C();
  }

  return 101;
}

uint64_t sub_100187D44(unsigned __int8 *a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AACP_CLIENT_Connect(addr=%:)", a1);
    v4 = sub_10000C050(0x53u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*(a2 + 8))
  {
    sub_1000D660C();
    if (!*(a2 + 8))
    {
      return 101;
    }
  }

  if (!*(a2 + 16))
  {
    sub_1000D660C();
    if (!*(a2 + 16))
    {
      return 101;
    }
  }

  v5 = qword_100B57C58;
  if (qword_100B57C58 || (v5 = sub_1001BBBD8(0xF8uLL, 0x1060040A177BD6EuLL), (qword_100B57C58 = v5) != 0))
  {
    v6 = sub_100188094(a1);
    if (v6 && *v6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Aready connected/connection in progress");
        v7 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 133;
    }

    else
    {
      v10 = v5 + 32;
      v11 = 5;
      while (!*v10 || *(v10 - 24) != 1)
      {
        v10 += 6;
        if (!--v11)
        {
          v12 = sub_100188114();
          if (v12)
          {
            v13 = v12;
            v12[3] = a2;
            v12[1] = 0;
            v14 = *a1;
            *(v12 + 5) = *(a1 + 2);
            *(v12 + 1) = v14;
            *v12 = 1;
            v21 = 0;
            *(&buf + 1) = 4;
            *(v12 + 8) = 0;
            *&buf = off_100AE4AF8;
            *(&buf + 10) = 131073;
            v15 = sub_1001BE058(v12 + 1, &buf);
            v8 = v15;
            if (v15 && v15 != 133)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("AAP Client Connect failure %u", v8);
                v16 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              sub_100188180(v13);
            }
          }

          else
          {
            if (sub_10000C240())
            {
              sub_10000AF54("No free AACP connection slot ");
              v19 = sub_10000C050(0x53u);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            return 104;
          }

          return v8;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Another AACP connection in progress");
        v17 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 118;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("init failed..!");
      v18 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }
}

uint64_t sub_100188094(unsigned __int8 *a1)
{
  v1 = 0;
  if (a1 && qword_100B57C58)
  {
    v2 = 0;
    v5 = *a1;
    v3 = a1 + 1;
    v4 = v5;
    for (i = qword_100B57C58 + 10; ; i += 48)
    {
      v1 = qword_100B57C58 + 8 + 48 * v2;
      if (*(v1 + 1) == v4)
      {
        v7 = 0;
        do
        {
          v8 = v7;
          if (v7 == 5)
          {
            break;
          }

          v9 = *(i + v7);
          v10 = v3[v7++];
        }

        while (v9 == v10);
        if (v8 >= 5)
        {
          break;
        }
      }

      if (++v2 == 5)
      {
        return 0;
      }
    }
  }

  return v1;
}

void *sub_100188114()
{
  v0 = qword_100B57C58;
  if (!qword_100B57C58)
  {
    v0 = sub_1001BBBD8(0xF8uLL, 0x1060040A177BD6EuLL);
    qword_100B57C58 = v0;
  }

  v1 = v0 + 32;
  v2 = 5;
  while (*v1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return v1 - 3;
}

void sub_100188180(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  if (qword_100B57C58)
  {
    v1 = 32;
    while (!*(qword_100B57C58 + v1))
    {
      v1 += 48;
      if (v1 == 272)
      {
        sub_10000C1E8(qword_100B57C58);
        qword_100B57C58 = 0;
        return;
      }
    }
  }
}

uint64_t sub_1001881D4(unsigned __int8 *a1)
{
  v1 = sub_100188094(a1);
  if (v1 && *v1 == 2)
  {
    result = *(v1 + 8);
    if (result)
    {
      sub_1001BD4DC(result);
      return 0;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No active connection");
      v3 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 408;
  }

  return result;
}

uint64_t sub_10018825C(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v6 = sub_100188094(a1);
  if (!v6)
  {
    return 122;
  }

  v7 = v6;
  if (!*(v6 + 8))
  {
    return 122;
  }

  v16[0] = 0;
  if (*v6 != 2)
  {
    return 408;
  }

  v8 = malloc_type_malloc(0xAuLL, 0x100004001E4F5AEuLL);
  v15 = v8;
  if (v8)
  {
    v9 = *a1;
    *(v8 + 2) = *(a1 + 2);
    *v8 = v9;
    *(v8 + 6) = a2;
    *(v8 + 4) = a3;
    v16[1] = &v15;
    LOWORD(v16[0]) = 8;
    switch(a2)
    {
      case 2:
        v10 = sub_100188554;
        v11 = v7 + 10;
        goto LABEL_17;
      case 1:
        v10 = sub_1001884CC;
        v11 = v7 + 9;
        goto LABEL_17;
      case 0:
        v10 = sub_100188418;
        v11 = v7 + 8;
LABEL_17:
        sub_10002195C(v10, v16, a3, v11);
        return 0;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invalid type for Request Periodically");
      v14 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    free(v15);
    return 117;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Memory allocation failure for AACP_PERIODICAL_REQUEST_ARG");
      v13 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }
}

uint64_t sub_100188418(uint64_t a1)
{
  v10.tv_sec = 0;
  *&v10.tv_usec = 0;
  v8 = 0;
  gettimeofday(&v10, 0);
  v7[0] = v10.tv_sec;
  v7[1] = v10.tv_usec;
  v9 = 0;
  v2 = **(a1 + 8);
  result = sub_100189258(v2, v7);
  if (!result)
  {
    v4 = sub_100188094(v2);
    v5 = *(v2 + 8);
    v6 = (v4 + 4 * *(v2 + 6) + 32);

    return sub_10002195C(sub_100188418, a1, v5, v6);
  }

  return result;
}

uint64_t sub_1001884CC(uint64_t a1)
{
  v2 = **(a1 + 8);
  result = sub_100189034(v2, 0x20u, 0, 0);
  if (!result)
  {
    v4 = sub_100188094(v2);
    v5 = *(v2 + 8);
    v6 = v4 + 4 * *(v2 + 6);

    return sub_10002195C(sub_1001884CC, a1, v5, (v6 + 32));
  }

  return result;
}

uint64_t sub_100188554(uint64_t a1)
{
  *&v5[3] = 6;
  *v5 = 100684801;
  v2 = **(a1 + 8);
  result = sub_100189034(v2, 4u, 7, v5);
  if (!result)
  {
    v4 = sub_100188094(v2);
    return sub_10002195C(sub_100188554, a1, *(v2 + 8), (v4 + 4 * *(v2 + 6) + 32));
  }

  return result;
}

uint64_t sub_1001885E0(unsigned __int8 *a1, unsigned int a2)
{
  v3 = sub_100188094(a1);
  if (!v3 || !*(v3 + 8))
  {
    return 122;
  }

  if (*v3 != 2)
  {
    return 408;
  }

  if (a2 > 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid type for Cancel Request Periodically");
      v6 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 117;
  }

  else
  {
    v4 = v3 + 4 * a2;
    sub_10002242C(*(v4 + 32));
    result = 0;
    *(v4 + 32) = 0;
  }

  return result;
}

uint64_t sub_100188690(unsigned __int8 *a1, void *a2, size_t a3)
{
  v6 = sub_100188094(a1);
  if (v6 && (v7 = v6, *(v6 + 8)))
  {
    if (*v6 == 2)
    {
      v15 = 0;
      v8 = sub_10023DB58(a1, &v15);
      if (v8)
      {
        v9 = v8;
        if (!sub_10000C240())
        {
          goto LABEL_25;
        }

        sub_10000AF54("BT_AACP_CLIENT_SendData: Unable to retrieve ACL handle, status: %u", v9);
        v10 = sub_10000C050(0x53u);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (*(v15 + 278) == 1 && *(v7 + 14) >= 0xA12u)
      {
        if (a3 >= 0xA13)
        {
          if (!sub_10000C240())
          {
            goto LABEL_20;
          }

          sub_10000AF54("BT_AACP_CLIENT_SendData: Attempting to send too much data, dataLen: %u, MTU: %u", a3, 2578);
          v11 = sub_10000C050(0x53u);
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }

      else if (a3 >= 0x3F4)
      {
        if (!sub_10000C240())
        {
          goto LABEL_20;
        }

        sub_10000AF54("BT_AACP_CLIENT_SendData: Attempting to send too much data, dataLen: %u, MTU: %u", a3, 1011);
        v12 = sub_10000C050(0x53u);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_10080F7A0();
LABEL_20:
        v9 = 142;
LABEL_25:
        sub_10000C1E8(a2);
        return v9;
      }

      v9 = sub_1001BE834(*(v7 + 8), a2, a3);
      if (v9)
      {
        if (!sub_10000C240())
        {
          goto LABEL_25;
        }

        sub_10000AF54("BT_AACP_CLIENT_SendData: Unable to send data due to: %u", v9);
        v13 = sub_10000C050(0x53u);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

LABEL_24:
        sub_10080F7A0();
        goto LABEL_25;
      }
    }

    else
    {
      sub_10000C1E8(a2);
      return 408;
    }
  }

  else
  {
    sub_10000C1E8(a2);
    return 122;
  }

  return v9;
}

uint64_t sub_100188894(unsigned __int8 *a1, char a2)
{
  v4 = sub_100007618(4uLL, 0xC0C226E7uLL);
  if (!v4)
  {
    return 106;
  }

  *v4 = 1;
  v4[2] = a2;

  return sub_100188690(a1, v4, 3uLL);
}

uint64_t sub_100188904(unsigned __int8 *a1, char a2)
{
  v4 = sub_100007618(3uLL, 0x8E2196E3uLL);
  if (!v4)
  {
    return 106;
  }

  *v4 = 3;
  v4[2] = a2;

  return sub_100188690(a1, v4, 3uLL);
}

uint64_t sub_100188980(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0xB83B56B6uLL);
  if (!v2)
  {
    return 106;
  }

  *v2 = 5;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_1001889E8(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0xBDF8CFEDuLL);
  if (!v2)
  {
    return 106;
  }

  *v2 = 7;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_100188A50(unsigned __int8 *a1, char a2, int a3)
{
  v6 = sub_100007618(7uLL, 0x5B2F198BuLL);
  if (!v6)
  {
    return 106;
  }

  *v6 = 9;
  v6[2] = a2;
  *(v6 + 3) = a3;

  return sub_100188690(a1, v6, 7uLL);
}

uint64_t sub_100188AEC(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0xD698862FuLL);
  if (!v2)
  {
    return 106;
  }

  *v2 = 13;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_100188B54(unsigned __int8 *a1, __int16 a2, __int16 a3)
{
  v6 = sub_100007618(6uLL, 0x9858E8D2uLL);
  if (!v6)
  {
    return 106;
  }

  *v6 = 15;
  v6[1] = a2;
  v6[2] = a3;

  return sub_100188690(a1, v6, 6uLL);
}

uint64_t sub_100188BE8(unsigned __int8 *a1, uint64_t a2, unsigned int a3, const void *a4)
{
  v8 = a3 + 10;
  v9 = sub_100007618(a3 + 10, 0xF186F3B2uLL);
  if (!v9)
  {
    return 106;
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2063, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2061, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 16;
  if (v8 <= 7u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2064, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
  }

  sub_1000075EC(v9 + 2, a2, 6uLL);
  if (v8 <= 9u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2065, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v10[4] = a3;
  if (v8 - 10 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2066, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v10 + 5, a4, a3);

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_100188D50(unsigned __int8 *a1, uint64_t a2, unsigned int a3, const void *a4)
{
  v8 = a3 + 9;
  v9 = sub_100007618(v8, 0xFDB90C3uLL);
  if (!v9)
  {
    return 106;
  }

  v10 = v9;
  *v9 = 18;
  sub_1000075EC(v9 + 2, a2, 6uLL);
  v10[8] = a3;
  if (a3)
  {
    memmove(v10 + 9, a4, a3);
  }

  else
  {
    v8 = 9;
  }

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_100188E10(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = 6 * a2;
  v7 = sub_100007618(6 * a2 + 3, 0xAAD96A7FuLL);
  if (!v7)
  {
    return 106;
  }

  v8 = v7;
  *v7 = 20;
  *(v7 + 2) = a2;
  if (a2)
  {
    v9 = 0;
    v10 = (v6 - 2);
    v11 = 6 * a2;
    do
    {
      if (v9 + 3 >= v10)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2126, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
      }

      sub_1000075EC(&v8[v9 + 3], a3 + v9, 6uLL);
      v9 += 6;
    }

    while (v11 != v9);
    v12 = v9 + 3;
  }

  else
  {
    v12 = 3;
  }

  return sub_100188690(a1, v8, v12);
}

uint64_t sub_100188F1C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_100007618(8uLL, 0x85B8BC88uLL);
  if (!v4)
  {
    return 106;
  }

  v5 = v4;
  *v4 = 21;
  sub_1000075EC(v4 + 2, a2, 6uLL);

  return sub_100188690(a1, v5, 8uLL);
}

uint64_t sub_100188FA4(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v6 = sub_100007618(9uLL, 0x2B8A06FDuLL);
  if (!v6)
  {
    return 106;
  }

  v7 = v6;
  *v6 = 22;
  sub_1000075EC(v6 + 2, a2, 6uLL);
  v7[8] = a3;

  return sub_100188690(a1, v7, 9uLL);
}

uint64_t sub_100189034(unsigned __int8 *a1, unsigned int a2, int a3, unsigned __int8 *a4)
{
  v8 = sub_100188094(a1);
  if (!v8)
  {
    return 122;
  }

  v9 = *(v8 + 16);
  if (v9 >= 0x10002)
  {
    v10 = 8;
  }

  else
  {
    v10 = 6;
  }

  if (a2 == 4 && a3 >= 2 && *a4 - 1 > 1)
  {
    return 101;
  }

  v11 = v10 + a3;
  v12 = sub_100007618((v10 + a3), 0xF806FF31uLL);
  if (!v12)
  {
    return 106;
  }

  if (v11 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2223, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v11)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2221, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v13 = v12;
  *v12 = 23;
  if (v9 > 0x10001)
  {
    if (v11 <= 5u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2227, "ByteStream_NumReadBytesAvail(bs) >= 4");
    }

    v18 = HIWORD(a2);
    v12[1] = a2;
    v14 = 3;
    v15 = 24;
    v16 = 5;
    v17 = 2;
  }

  else
  {
    if (v11 <= 3u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2225, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    v14 = 2;
    v15 = 8;
    v16 = 3;
    v17 = 1;
    LOBYTE(v18) = a2;
  }

  LOBYTE(v12[v17]) = v18;
  *(v12 + v16) = a2 >> v15;
  if ((v11 - v14 * 2) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2229, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v12[v14] = a3;
  v20 = v14 * 2 + 2;
  if (a3)
  {
    if ((v11 - v20) < a3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2231, "ByteStream_NumReadBytesAvail(bs) >= (len)");
    }

    memmove(v12 + v20, a4, a3);
    LOWORD(v20) = v20 + a3;
  }

  return sub_100188690(a1, v13, v20);
}

uint64_t sub_100189258(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *(a2 + 8) + 12;
  v5 = sub_100007618(*(a2 + 8) + 12, 0x8E8E32FuLL);
  if (!v5)
  {
    return 106;
  }

  if (v4 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2256, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2254, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v6 = v5;
  *v5 = 27;
  if (v4 <= 5u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2257, "ByteStream_NumReadBytesAvail(bs) >= 4");
  }

  *(v5 + 1) = *a2;
  v5[4] = *(a2 + 2);
  v5[5] = *(a2 + 3);
  if (v4 <= 9u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2258, "ByteStream_NumReadBytesAvail(bs) >= 4");
  }

  *(v5 + 3) = *(a2 + 4);
  v5[8] = *(a2 + 6);
  v5[9] = *(a2 + 7);
  if (v4 <= 0xBu)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2259, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v5[10] = *(a2 + 8);
  v5[11] = *(a2 + 9);
  v7 = *(a2 + 8);
  if (v4 - 12 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2260, "ByteStream_NumReadBytesAvail(bs) >= (timeStamp->strLen)");
  }

  memmove(v5 + 12, *(a2 + 16), v7);
  v8 = (*(a2 + 8) + 12);

  return sub_100188690(a1, v6, v8);
}

uint64_t sub_100189410(unsigned __int8 *a1, char a2, unsigned int a3, const void *a4)
{
  v8 = a3 + 5;
  v9 = sub_100007618(a3 + 5, 0x8FD9FC7FuLL);
  if (!v9)
  {
    return 106;
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2309, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2307, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 26;
  if (v8 <= 2u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2310, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v9[2] = a2;
  if (v8 <= 4u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2311, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  *(v9 + 3) = a3;
  if (a3)
  {
    if (v8 - 5 < a3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2313, "ByteStream_NumReadBytesAvail(bs) >= (len)");
    }

    memmove(v9 + 5, a4, a3);
  }

  else
  {
    v8 = 5;
  }

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_10018956C(unsigned __int8 *a1, unsigned int a2, char a3)
{
  if (a2 > 0x1F)
  {
    return 101;
  }

  v5 = a2;
  v7 = sub_100007618(4uLL, 0x45E3586AuLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2339, "stream");
  }

  *v7 = 30;
  v7[2] = a3;
  v7[3] = (4 * v5) | 0x80;

  return sub_100188690(a1, v7, 4uLL);
}

uint64_t sub_100189618(unsigned __int8 *a1, unsigned int a2, unsigned int a3, const void *a4)
{
  if (a2 > 0x1F || !a4)
  {
    return 101;
  }

  v6 = a2;
  v8 = a3 + 4;
  v9 = sub_100007618(a3 + 4, 0xDA5F1823uLL);
  if (!v9)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2366, "stream");
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2368, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2367, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 30;
  if (v8 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2369, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[2] = a3;
  v9[3] = ((v6 << 10) | a3) >> 8;
  if (v8 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2370, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v9 + 4, a4, a3);

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_100189778(unsigned __int8 *a1, char a2, int a3)
{
  v6 = sub_100007618(7uLL, 0x3FCC915CuLL);
  if (!v6)
  {
    return 106;
  }

  *v6 = 31;
  v6[2] = a2;
  *(v6 + 3) = a3;

  return sub_100188690(a1, v6, 7uLL);
}

uint64_t sub_100189814(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  if (!a2 || !a3)
  {
    return 101;
  }

  v6 = a2 + 4;
  v7 = sub_100007618(a2 + 4, 0xB68DA2E3uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2415, "stream");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2417, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2416, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 32;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2418, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a2;
  if (v6 - 4 < a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2419, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a3, a2);

  return sub_100188690(a1, v8, v6);
}

uint64_t sub_10018995C(unsigned __int8 *a1, char a2, char a3, unsigned int a4, const void *a5)
{
  v10 = a4 + 6;
  v11 = sub_100007618(a4 + 6, 0x727D466EuLL);
  if (!v11)
  {
    return 106;
  }

  if (v10 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2444, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v10)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2442, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v12 = v11;
  *v11 = 33;
  if (v10 <= 2u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2445, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v11[2] = a2;
  if (v10 == 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2446, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v11[3] = a3;
  if (v10 <= 5u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2447, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  *(v11 + 2) = a4;
  if (a4)
  {
    if (v10 - 6 < a4)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2449, "ByteStream_NumReadBytesAvail(bs) >= (pldLen)");
    }

    memmove(v11 + 6, a5, a4);
  }

  else
  {
    v10 = 6;
  }

  return sub_100188690(a1, v12, v10);
}

uint64_t sub_100189AEC(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0xC980B399uLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2467, "stream");
  }

  *v2 = 34;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_100189B5C(unsigned __int8 *a1, __int16 a2, unsigned int a3, const void *a4)
{
  v8 = a3 + 6;
  v9 = sub_100007618(a3 + 6, 0xF436E72EuLL);
  if (!v9)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2491, "data");
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2494, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2492, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 36;
  if (v8 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2495, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[1] = a2;
  if (v8 <= 5u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2496, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[2] = a3;
  if (a3)
  {
    if (v8 - 6 < a3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2498, "ByteStream_NumReadBytesAvail(bs) >= (pLen)");
    }

    memmove(v9 + 3, a4, a3);
  }

  else
  {
    v8 = 6;
  }

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_100189CB8(unsigned __int8 *a1, int a2)
{
  result = 101;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v5 = sub_100007618(4uLL, 0x415A632BuLL);
      if (v5)
      {
        *v5 = 48;
        v5[1] = v4;

        return sub_100188690(a1, v5, 4uLL);
      }

      else
      {
        return 106;
      }
    }
  }

  return result;
}

uint64_t sub_100189D3C(unsigned __int8 *a1, unsigned int a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    return 101;
  }

  v5 = a3;
  v6 = a2;
  v8 = a2;
  v9 = (a3 + 2);
  v10 = 3;
  v11 = a2;
  do
  {
    v12 = *v9;
    v9 += 8;
    v10 += v12 + 4;
    --v11;
  }

  while (v11);
  if (!a1)
  {
    return 101;
  }

  v13 = sub_100007618(v10, 0xFE384586uLL);
  if (!v13)
  {
    return 106;
  }

  if (v10 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2568, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v10)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2565, "(msgLen) > 0");
  }

  v14 = v13;
  if (a4)
  {
    v15 = 49;
  }

  else
  {
    v15 = 50;
  }

  *v13 = v15;
  v13[1] = 0;
  if (v10 <= 2u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2569, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v13[2] = v6;
  v16 = 3;
  do
  {
    if ((v10 - 1) <= v16)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2572, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    v17 = &v14[v16];
    *v17 = *v5;
    v17[1] = *(v5 + 1);
    if ((v10 - 1) <= (v16 + 2))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2573, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    v18 = &v14[(v16 + 2)];
    *v18 = *(v5 + 2);
    v18[1] = *(v5 + 3);
    v19 = v16 + 4;
    v20 = *(v5 + 2);
    if (v10 - (v16 + 4) < v20)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2576, "ByteStream_NumReadBytesAvail(bs) >= (keys[i].keyLength)");
    }

    memmove(&v14[v19], *(v5 + 8), v20);
    v16 = *(v5 + 2) + v19;
    v5 += 16;
    --v8;
  }

  while (v8);

  return sub_100188690(a1, v14, v16);
}

uint64_t sub_100189F4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (!a3)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*(a3 + 8))
  {
    sub_1000D660C();
    if (!*(a3 + 8))
    {
      return 101;
    }
  }

  if (!*(a3 + 16))
  {
    sub_1000D660C();
    if (!*(a3 + 16))
    {
      return 101;
    }
  }

  if (qword_100B57C58 || (qword_100B57C58 = sub_1001BBBD8(0xF8uLL, 0x1060040A177BD6EuLL)) != 0)
  {
    v8 = sub_100188094(a1);
    if (v8 && *v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AACP_CLIENT_fastConnectCreateChannel Aready connected/connection in progress");
        v9 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 133;
    }

    else
    {
      v12 = sub_100188114();
      if (v12)
      {
        v13 = v12;
        v12[3] = a3;
        v12[1] = 0;
        v14 = (v12 + 1);
        v15 = *(a1 + 4);
        *(v12 + 1) = *a1;
        v16 = v12 + 1;
        *(v16 + 4) = v15;
        *(v16 + 31) = 0;
        if (a2)
        {
          v21[2] = 0;
          v21[1] = 0x200010004;
          v21[0] = off_100AE4AF8;
          *(v13 + 6) = a2;
          v10 = sub_1001BEF5C(v16, a2, v21, a4, v14);
          if (v10)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("BT_AACP_CLIENT_fastConnectCreateChannel: Error creating AAP");
              v17 = sub_10000C050(0x53u);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                sub_10080F818(v10);
              }
            }
          }

          else
          {
            *v13 = 2;
          }
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("BT_AACP_CLIENT_fastConnectCreateChannel invalid PSM");
            v20 = sub_10000C050(0x53u);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          return 131;
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("BT_AACP_CLIENT_fastConnectCreateChannel No free AACP connection slot ");
          v18 = sub_10000C050(0x53u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return 104;
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("init failed..!");
      v19 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }

  return v10;
}

void sub_10018A214(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100188094(a1);
  if (v4)
  {
    sub_100188180(v4);
  }

  sub_1001BF328(a1, v2);
}

uint64_t sub_10018A25C(int a1, int a2, __int16 a3, unsigned __int8 *a4)
{
  v7 = sub_100188094(a4);
  if (!v7)
  {
    return 114;
  }

  v8 = v7;
  result = 0;
  *(v8 + 14) = a3;
  *(v8 + 16) = a1 | (a2 << 16);
  return result;
}

uint64_t sub_10018A2B4(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a2)
  {
    return 101;
  }

  v6 = a3 + 2;
  v7 = sub_100007618(v6, 0xC0E69430uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2729, "stream");
  }

  v8 = v7;
  *v7 = 41;
  memmove(v7 + 1, a2, a3);

  return sub_100188690(a1, v8, v6);
}

uint64_t sub_10018A36C(unsigned __int8 *a1, unsigned int a2, _BYTE *a3, _BYTE *a4, char *a5)
{
  v10 = a2;
  v11 = 3 * a2 + 3;
  v12 = sub_100007618(3 * a2 + 3, 0x3F81F2ACuLL);
  if (!v12)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2753, "stream");
  }

  *v12 = 84;
  v12[2] = a2;
  v13 = 3;
  if (a2)
  {
    do
    {
      if (v11 <= v13)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2759, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v12[v13] = *a3;
      if (v11 <= (v13 + 1))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2760, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v14 = v13 + 2;
      v12[v13 + 1] = *a4;
      if (v11 <= v14)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2761, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v15 = *a5++;
      v13 += 3;
      v12[v14] = v15;
      ++a4;
      ++a3;
      --v10;
    }

    while (v10);
  }

  return sub_100188690(a1, v12, v13);
}

uint64_t sub_10018A4BC(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0x513CBD58uLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2782, "data");
  }

  *v2 = 38;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_10018A52C(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0x1D6E8A9uLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2830, "data");
  }

  *v2 = 45;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_10018A59C(unsigned __int8 *a1, const void *a2, unsigned int a3, char a4)
{
  if (a2 && a3)
  {
    v8 = a3 + 6;
    v9 = sub_100007618(a3 + 6, 0x704BAC6FuLL);
    if (!v9)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2859, "data");
    }

    if (v8 == 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2862, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    if (!v8)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2860, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
    }

    v10 = v9;
    *v9 = 44;
    if (v8 <= 2u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2863, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    v9[2] = a4;
    if (v8 == 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2864, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    v9[3] = 1;
    if (v8 <= 5u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2865, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    *(v9 + 2) = a3;
    if (v8 - 6 < a3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2866, "ByteStream_NumReadBytesAvail(bs) >= (len)");
    }

    memmove(v9 + 6, a2, a3);

    return sub_100188690(a1, v10, (a3 + 6));
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("BT_AACP_CLIENT_GAPASendChallenge: Invalid data or len (%u)", a3);
      v12 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 101;
  }
}

uint64_t sub_10018A788(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 101;
  }

  v6 = a3 + 4;
  v7 = sub_100007618(a3 + 4, 0x2D3966E4uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2893, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2896, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2894, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 68;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2897, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a3;
  if (v6 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2898, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a2, a3);

  return sub_100188690(a1, v8, (a3 + 4));
}

uint64_t sub_10018A8D8(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 101;
  }

  v6 = a3 + 4;
  v7 = sub_100007618(a3 + 4, 0xEFC9BB78uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2924, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2927, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2925, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 75;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2928, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a3;
  if (v6 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2929, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a2, a3);

  return sub_100188690(a1, v8, (a3 + 4));
}

uint64_t sub_10018AA28(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 101;
  }

  v2 = sub_100007618(2uLL, 0x28A755A6uLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2949, "packet");
  }

  *v2 = 69;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_10018AAAC(unsigned __int8 *a1, int a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = sub_100007618(6uLL, 0x64FC31EDuLL);
  if (!v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2972, "packet");
  }

  v5 = v4;
  *v4 = 72;
  *(v4 + 2) = a2;
  v6 = sub_100188094(a1);
  if (v6 && (v7 = v6, (v8 = *(v6 + 8)) != 0))
  {
    if (*v7 == 2)
    {
      v9 = sub_1001BEAC8(v8, v5, 6uLL);
      if (v9)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("BT_AAP_Client_SendUnstallableData failed due to %u", v9);
          v10 = sub_10000C050(0x53u);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_10000C1E8(v5);
      }
    }

    else
    {
      sub_10000C1E8(v5);
      return 408;
    }
  }

  else
  {
    sub_10000C1E8(v5);
    return 122;
  }

  return v9;
}

uint64_t sub_10018ABE8(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 101;
  }

  v2 = sub_100007618(2uLL, 0xD0B7DECuLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2995, "packet");
  }

  *v2 = 74;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_10018AC6C(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  if (!a2 || !a1 || !a3)
  {
    return 101;
  }

  v6 = a2 + 5;
  v7 = sub_100007618(a2 + 5, 0x593359B9uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3024, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3027, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3025, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 76;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3028, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a2;
  if (v6 - 4 < a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3029, "ByteStream_NumReadBytesAvail(bs) >= (avMsgLen)");
  }

  memmove(v7 + 2, a3, a2);

  return sub_100188690(a1, v8, (a2 + 4));
}

uint64_t sub_10018ADBC(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  result = 101;
  if (a2 && a1 && a3)
  {
    v7 = a2 + 4;
    v8 = sub_100007618(a2 + 4, 0xE152A404uLL);
    if (v8)
    {
      if (v7 == 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3063, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      if (!v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3061, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
      }

      v9 = v8;
      *v8 = 79;
      if (v7 <= 3u)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3064, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v8[1] = a2;
      if (v7 - 4 < a2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3065, "ByteStream_NumReadBytesAvail(bs) >= (dataLen)");
      }

      memmove(v8 + 2, a3, a2);

      return sub_100188690(a1, v9, (a2 + 4));
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AACP_CLIENT_SendUARPData - failed to allocate memory");
        v10 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 106;
    }
  }

  return result;
}

uint64_t sub_10018AF38(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = sub_100007618(0xAuLL, 0x864E91E1uLL);
  if (!v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3086, "packet");
  }

  *v4 = 77;
  *(v4 + 2) = a2;

  return sub_100188690(a1, v4, 0xAuLL);
}

uint64_t sub_10018AFFC(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = sub_100007618(0xAuLL, 0x6E4DBD67uLL);
  if (!v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3110, "packet");
  }

  *v4 = 78;
  *(v4 + 2) = a2;

  return sub_100188690(a1, v4, 0xAuLL);
}

uint64_t sub_10018B0C0(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  result = 101;
  if (a2 && a1 && a3)
  {
    v7 = a2 + 4;
    v8 = sub_100007618(a2 + 4, 0xFE669342uLL);
    if (v8)
    {
      if (v7 == 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3147, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      if (!v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3145, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
      }

      v9 = v8;
      *v8 = 82;
      if (v7 <= 3u)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3148, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v8[1] = a2;
      if (v7 - 4 < a2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3149, "ByteStream_NumReadBytesAvail(bs) >= (dataLen)");
      }

      memmove(v8 + 2, a3, a2);

      return sub_100188690(a1, v9, (a2 + 4));
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AACP_CLIENT_SendSourceContextMessage - failed to allocate memory");
        v10 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 106;
    }
  }

  return result;
}

uint64_t sub_10018B23C(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  result = 101;
  if (a2 && a1 && a3)
  {
    v7 = a2 + 4;
    v8 = sub_100007618(a2 + 4, 0xAA1602B6uLL);
    if (v8)
    {
      if (v7 == 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3183, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      if (!v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3181, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
      }

      v9 = v8;
      *v8 = 83;
      if (v7 <= 3u)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3184, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v8[1] = a2;
      if (v7 - 4 < a2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3185, "ByteStream_NumReadBytesAvail(bs) >= (dataLen)");
      }

      memmove(v8 + 2, a3, a2);

      return sub_100188690(a1, v9, (a2 + 4));
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AACP_CLIENT_SendPMEConfig - failed to allocate memory");
        v10 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 106;
    }
  }

  return result;
}

uint64_t sub_10018B3B8(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 101;
  }

  v2 = sub_100007618(2uLL, 0x5AFD5D6CuLL);
  if (v2)
  {
    *v2 = 86;

    return sub_100188690(a1, v2, 2uLL);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("BT_AACP_CLIENT_SendUSBSpatialSensorDataReq - failed to allocate memory");
      v4 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }
}

uint64_t sub_10018B46C(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 101;
  }

  v6 = a3 + 4;
  v7 = sub_100007618(a3 + 4, 0x9E4A60DAuLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3237, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3240, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3238, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 87;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3241, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a3;
  if (v6 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3242, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a2, a3);

  return sub_100188690(a1, v8, (a3 + 4));
}

uint64_t sub_10018B5BC(unsigned __int8 *a1, __int16 a2, const void *a3, unsigned int a4)
{
  if (!a1 || !a3 || !a4)
  {
    return 101;
  }

  v8 = a4 + 6;
  v9 = sub_100007618(a4 + 6, 0x3DC917C8uLL);
  if (!v9)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3267, "packet");
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3270, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3268, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 88;
  if (v8 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3271, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[1] = a2;
  if (v8 <= 5u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3272, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[2] = a4;
  if (v8 - 6 < a4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3273, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v9 + 3, a3, a4);

  return sub_100188690(a1, v10, (a4 + 6));
}

uint64_t sub_10018B734(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 101;
  }

  v6 = a3 + 4;
  v7 = sub_100007618(a3 + 4, 0x57E922A9uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3300, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3303, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3301, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 89;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3304, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a3;
  if (v6 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3305, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a2, a3);

  return sub_100188690(a1, v8, (a3 + 4));
}

uint64_t sub_10018B884(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3, size_t a4)
{
  v7 = sub_100188094(a1);
  if (v7)
  {
    sub_10018B928(*(v7 + 8), a2, a3, a4);
    return 0;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle %x", 0);
      v9 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 414;
  }
}

void sub_10018B928(int a1, unsigned __int16 *a2, uint64_t a3, size_t size)
{
  if (qword_100B57C58)
  {
    v5 = size;
    v6 = a3;
    v7 = a2;
    v8 = qword_100B57C58 + 32;
    v9 = 5;
    while (*(v8 - 16) != a1)
    {
      v8 += 48;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    if (a2)
    {
      if (a3 == 1)
      {
        v11 = 0;
LABEL_35:
        if (sub_10000C240())
        {
          sub_10000AF54("Unknown AACP opcode: 0x%04x (AAP len %u)", v11, v6 + 4);
          v27 = sub_10000C050(0x53u);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 136446210;
            *&buf[1] = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        goto LABEL_38;
      }

      if (a3)
      {
        v11 = *a2;
        v12 = 2;
        switch(*a2)
        {
          case 2u:
            v294 = size;
            if (a3 < 3)
            {
              v141 = 0;
              v142 = 2;
              v140 = 1;
            }

            else
            {
              v140 = 0;
              v141 = *(a2 + 2);
              v142 = 3;
            }

            v207 = sub_1001BBBD8(5 * v141, 0x1000040957D8CC4uLL);
            if (v207)
            {
              v208 = v141;
              v209 = v207;
              ptrc = v208;
              if (!v208)
              {
LABEL_483:
                v215 = *(*v8 + 32);
                if (v215)
                {
                  v215(v8 - 23, ptrc, v209);
                }

                sub_10000C1E8(v209);
                if (v294)
                {
                  v11 = 2;
                  goto LABEL_39;
                }

                return;
              }

              v210 = v207 + 1;
              v211 = v208;
              while (!v140)
              {
                if (v6 <= v142)
                {
                  goto LABEL_362;
                }

                v140 = 0;
                *(v210 - 1) = v7[v142];
                v212 = 1;
                ++v142;
LABEL_363:
                v213 = *(v210 - 1);
                if (v213 <= 0x7F)
                {
                  switch(*(v210 - 1))
                  {
                    case 1:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 422;
                      goto LABEL_480;
                    case 2:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 425;
                      goto LABEL_480;
                    case 3:
                      if (v212)
                      {
                        goto LABEL_449;
                      }

                      v214 = 478;
                      goto LABEL_480;
                    case 4:
                      if (v212)
                      {
                        goto LABEL_449;
                      }

                      v214 = 428;
                      goto LABEL_480;
                    case 5:
                      if (v212)
                      {
                        goto LABEL_449;
                      }

                      v214 = 482;
                      goto LABEL_480;
                    case 6:
                      if (v212)
                      {
                        goto LABEL_449;
                      }

                      v214 = 486;
                      goto LABEL_480;
                    case 7:
                      if (v212)
                      {
                        goto LABEL_449;
                      }

                      v214 = 489;
                      goto LABEL_480;
                    case 8:
                      if (v212)
                      {
                        goto LABEL_449;
                      }

                      v214 = 431;
                      goto LABEL_480;
                    case 9:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 434;
                      goto LABEL_480;
                    case 0xA:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 437;
                      goto LABEL_480;
                    case 0xB:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 440;
                      goto LABEL_480;
                    case 0xC:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 443;
                      goto LABEL_480;
                    case 0xD:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 447;
                      goto LABEL_480;
                    case 0xF:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 497;
                      goto LABEL_480;
                    case 0x10:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 450;
                      goto LABEL_480;
                    case 0x11:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 453;
                      goto LABEL_480;
                    case 0x12:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 456;
                      goto LABEL_480;
                    case 0x13:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 548;
                      goto LABEL_480;
                    case 0x14:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 459;
                      goto LABEL_480;
                    case 0x15:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 538;
                      goto LABEL_480;
                    case 0x16:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 541;
                      goto LABEL_480;
                    case 0x17:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 544;
                      goto LABEL_480;
                    case 0x18:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 556;
                      goto LABEL_480;
                    case 0x19:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 564;
                      goto LABEL_480;
                    case 0x20:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 462;
                      goto LABEL_480;
                    case 0x21:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 568;
                      goto LABEL_480;
                    case 0x22:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 572;
                      goto LABEL_480;
                    case 0x23:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 580;
                      goto LABEL_480;
                    case 0x24:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 583;
                      goto LABEL_480;
                    case 0x25:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 587;
                      goto LABEL_480;
                    case 0x26:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 596;
                      goto LABEL_480;
                    case 0x28:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 606;
                      goto LABEL_480;
                    case 0x29:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 609;
                      goto LABEL_480;
                    case 0x30:
                      if ((v212 & 1) == 0)
                      {
                        v214 = 494;
                        goto LABEL_480;
                      }

LABEL_449:
                      if (v6 - 3 <= v142)
                      {
                        goto LABEL_481;
                      }

                      v140 = 0;
                      *v210 = *&v7[v142];
                      v142 += 4;
                      break;
                    case 0x31:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 614;
                      goto LABEL_480;
                    case 0x32:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 618;
                      goto LABEL_480;
                    case 0x33:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 624;
                      goto LABEL_480;
                    case 0x34:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 621;
                      goto LABEL_480;
                    case 0x40:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 465;
                      goto LABEL_480;
                    case 0x50:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 468;
                      goto LABEL_480;
                    case 0x60:
                      if (v212)
                      {
                        goto LABEL_476;
                      }

                      v214 = 471;
                      goto LABEL_480;
                    default:
                      goto LABEL_482;
                  }

                  goto LABEL_482;
                }

                if (*(v210 - 1) > 0xBFu)
                {
                  if (*(v210 - 1) > 0xDFu)
                  {
                    if (v213 == 224)
                    {
                      if ((v212 & 1) == 0)
                      {
                        v214 = 532;
                        goto LABEL_480;
                      }
                    }

                    else
                    {
                      if (v213 != 240)
                      {
                        goto LABEL_482;
                      }

                      if ((v212 & 1) == 0)
                      {
                        v214 = 535;
                        goto LABEL_480;
                      }
                    }
                  }

                  else if (v213 == 192)
                  {
                    if ((v212 & 1) == 0)
                    {
                      v214 = 512;
                      goto LABEL_480;
                    }
                  }

                  else
                  {
                    if (v213 != 208)
                    {
                      goto LABEL_482;
                    }

                    if ((v212 & 1) == 0)
                    {
                      v214 = 520;
                      goto LABEL_480;
                    }
                  }
                }

                else if (*(v210 - 1) > 0x9Fu)
                {
                  if (v213 == 160)
                  {
                    if ((v212 & 1) == 0)
                    {
                      v214 = 504;
                      goto LABEL_480;
                    }
                  }

                  else
                  {
                    if (v213 != 176)
                    {
                      goto LABEL_482;
                    }

                    if ((v212 & 1) == 0)
                    {
                      v214 = 507;
                      goto LABEL_480;
                    }
                  }
                }

                else if (v213 == 128)
                {
                  if ((v212 & 1) == 0)
                  {
                    v214 = 474;
                    goto LABEL_480;
                  }
                }

                else
                {
                  if (v213 != 144)
                  {
                    goto LABEL_482;
                  }

                  if ((v212 & 1) == 0)
                  {
                    v214 = 501;
LABEL_480:
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", v214, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
LABEL_481:
                    v140 = 1;
                    goto LABEL_482;
                  }
                }

LABEL_476:
                if (v6 <= v142)
                {
                  goto LABEL_481;
                }

                v140 = 0;
                *v210 = v7[v142++];
LABEL_482:
                v210 = (v210 + 5);
                if (!--v211)
                {
                  goto LABEL_483;
                }
              }

              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 419, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
LABEL_362:
              v212 = 0;
              v140 = 1;
              goto LABEL_363;
            }

            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("AACP_MSG_CAPABILITIES_RESP Could not allocate %d bytes", 5 * v141);
            v243 = sub_10000C050(0x53u);
            if (!os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            goto LABEL_671;
          case 4u:
            if (a3 >= 3 && (v150 = *(a2 + 2), *(a2 + 2)))
            {
              v152 = sub_1001BBBD8(5 * v150, 0x1000040957D8CC4uLL);
              if (v152)
              {
                v292 = v5;
                v153 = v6;
                v154 = 0;
                ptrb = v152;
                v155 = v152 + 2;
                v156 = 3;
                v157 = v150;
                while (!v154)
                {
                  if (v153 <= v156)
                  {
                    goto LABEL_246;
                  }

                  v158 = v156 + 1;
                  *(v155 - 2) = *(a2 + v156);
                  if (v153 <= (v156 + 1))
                  {
                    goto LABEL_247;
                  }

                  v159 = v156 + 2;
                  *(v155 - 1) = *(a2 + v158);
                  v158 = v159;
                  if (v153 <= v159)
                  {
                    goto LABEL_248;
                  }

                  v160 = v156 + 3;
                  *v155 = *(a2 + v159);
                  v158 = v160;
                  if (v153 > v160)
                  {
                    v158 = v156 + 4;
                    v155[1] = *(a2 + v160);
                    if (v153 <= v158)
                    {
                      v154 = 1;
                    }

                    else
                    {
                      v154 = 0;
                      v155[2] = *(a2 + v158);
                      v158 = (v156 + 5);
                    }

                    goto LABEL_250;
                  }

LABEL_249:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 658, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                  v154 = 1;
LABEL_250:
                  v155 += 5;
                  v156 = v158;
                  if (!--v157)
                  {
                    v271 = *(*v8 + 40);
                    if (v271)
                    {
                      v271(v8 - 23, v150, ptrb);
                    }

                    sub_10000C1E8(ptrb);
                    v11 = 4;
                    v6 = v153;
                    v7 = a2;
                    goto LABEL_310;
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 654, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
LABEL_246:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 655, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                v158 = v156;
LABEL_247:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 656, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
LABEL_248:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 657, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                goto LABEL_249;
              }

              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("BATT_INFO_MSG_BATT_INFO Could not allocate %d bytes", 5 * v150);
              v286 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("BATT_INFO_MSG_BATT_INFO: count = 0");
              v192 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            goto LABEL_671;
          case 6u:
            LOWORD(buf[0]) = 0;
            if ((a3 & 0xFFFE) != 2)
            {
              LOWORD(buf[0]) = a2[1];
            }

            v161 = *(*v8 + 48);
            if (v161)
            {
              v161(v8 - 23, buf);
            }

            v11 = 6;
            goto LABEL_38;
          case 8u:
            buf[0] = 0;
            if (a3 <= 2)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 681, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            }

            else
            {
              LOBYTE(buf[0]) = *(a2 + 2);
              if (a3 != 3)
              {
                BYTE1(buf[0]) = *(a2 + 3);
                if (a3 > 4)
                {
                  BYTE2(buf[0]) = *(a2 + 4);
                  if (a3 != 5)
                  {
                    HIBYTE(buf[0]) = *(a2 + 5);
                  }

LABEL_344:
                  v201 = *(*v8 + 56);
                  if (v201)
                  {
                    v201(v8 - 23, buf);
                  }

                  v11 = 8;
                  goto LABEL_38;
                }

LABEL_343:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 683, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                goto LABEL_344;
              }
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 682, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            goto LABEL_343;
          case 9u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1191, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 <= 6)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1192, "ByteStream_NumReadBytesAvail(bs) >= 4");
            }

            v125 = *(*v8 + 160);
            if (v125)
            {
              v125(v8 - 23, *(a2 + 2), *(a2 + 3));
            }

            v11 = 9;
            goto LABEL_38;
          case 0xBu:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 694, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 == 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 695, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v110 = *(a2 + 2);
            v111 = v7[3];
            if (!v7[3])
            {
              v75 = 0;
              goto LABEL_572;
            }

            ptra = v110;
            v293 = size;
            v298 = v7;
            v75 = sub_1001BBBD8(6 * v111, 0x1000040274DC3F3uLL);
            v112 = v6;
            v113 = 0;
            v296 = v112;
            v114 = v112 - 5;
            v115 = 4;
LABEL_166:
            v116 = v115;
            v117 = -6 * v113++;
            v118 = 1;
            while (1)
            {
              if (v118)
              {
                if (v114 > v116)
                {
                  sub_1000075EC(&v75[-v117], &v298[v116], 6uLL);
                  v115 = v116 + 6;
                  if (v113 == v111)
                  {
                    v6 = v296;
                    v7 = v298;
                    v5 = v293;
                    v110 = ptra;
LABEL_572:
                    v244 = *(*v8 + 64);
                    if (v244)
                    {
                      v244(v8 - 23, v110, v111, v75);
                    }

                    if (v75)
                    {
                      sub_10000C1E8(v75);
                    }

                    v11 = 11;
                    goto LABEL_38;
                  }

                  goto LABEL_166;
                }
              }

              else
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 699, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              }

              v118 = 0;
              ++v113;
              v117 -= 6;
              if (v113 - v111 == 1)
              {
                if (!sub_10000C240())
                {
                  goto LABEL_613;
                }

                sub_10000AF54("AACP_MSG_DEV_LIST error initializing device list");
                v194 = sub_10000C050(0x53u);
                if (!os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_613;
                }

                goto LABEL_612;
              }
            }

          case 0xCu:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 719, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 == 8)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 721, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v119 = 0;
            }

            else
            {
              v119 = v7[8];
              if (v6 >= 0xA)
              {
                v225 = v7[9];
                goto LABEL_526;
              }
            }

            v225 = 0;
LABEL_526:
            v226 = *(*v8 + 72);
            if (v226)
            {
              v226(v8 - 23, buf, v119, v225);
            }

            v11 = 12;
            goto LABEL_38;
          case 0xEu:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 731, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 == 8)
            {
              v101 = 0;
            }

            else
            {
              v101 = v7[8];
            }

            v224 = *(*v8 + 80);
            if (v224)
            {
              v224(v8 - 23, buf, v101);
            }

            v11 = 14;
            goto LABEL_38;
          case 0x11u:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 754, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 <= 9)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 755, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v107 = *(v7 + 4);
            v108 = sub_1001BBBD8(v107, 0x100004077774924uLL);
            v75 = v108;
            if (!v108 || !v107)
            {
              goto LABEL_617;
            }

            if (v6 - 10 < v107)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("AACP_MSG_RELAY_MSG_INDICATION, error initializing relayData");
                v109 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              goto LABEL_613;
            }

            v257 = (v7 + 10);
            v258 = v108;
            do
            {
              v259 = *v257++;
              *v258++ = v259;
            }

            while (v258 < &v108[v107]);
LABEL_617:
            v260 = *(*v8 + 88);
            if (v260)
            {
              v260(v8 - 23, buf, v107, v108);
            }

            if (v75)
            {
              sub_10000C1E8(v75);
            }

            v11 = 17;
            goto LABEL_38;
          case 0x13u:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 742, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 == 8)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 743, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v69 = *(*v8 + 96);
            if (v69)
            {
              v69(v8 - 23, buf, v7[8]);
            }

            v11 = 19;
            goto LABEL_38;
          case 0x15u:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 777, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            v102 = *(*v8 + 104);
            if (v102)
            {
              v102(v8 - 23, buf);
            }

            v11 = 21;
            goto LABEL_38;
          case 0x16u:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 788, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 == 8)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 789, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v143 = *(*v8 + 112);
            if (v143)
            {
              v143(v8 - 23, buf, v7[8]);
            }

            v11 = 22;
            goto LABEL_38;
          case 0x17u:
            if (*(v8 - 8) > 0x10001u)
            {
              if (a3 >= 6)
              {
                v126 = *(a2 + 1);
                v127 = 3;
                goto LABEL_349;
              }
            }

            else if (a3 >= 4)
            {
              v126 = a2[1];
              v127 = 2;
LABEL_349:
              if ((a3 - v127 * 2) > 1)
              {
                v36 = a2;
                v202 = a2[v127];
                v203 = v127 * 2 + 2;
                v204 = sub_1001BBBD8(v202, 0xFC3A5ED8uLL);
                v205 = v204;
                if (v6 - v203 >= v202 && v202)
                {
                  for (i = 0; i != v202; ++i)
                  {
                    *(v204 + i) = *(v36 + v203 + i);
                  }
                }

LABEL_605:
                v250 = *(*v8 + 120);
                if (v250)
                {
                  v250(v8 - 23, v126, v202, v205);
                }

                sub_10000C1E8(v205);
                v11 = 23;
LABEL_608:
                v7 = v36;
                goto LABEL_38;
              }

              v36 = a2;
LABEL_604:
              v205 = sub_1001BBBD8(0, 0xFC3A5ED8uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 809, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v202 = 0;
              goto LABEL_605;
            }

            v36 = a2;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 807, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            v126 = 0;
            goto LABEL_604;
          case 0x19u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1458, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 == 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1460, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v77 = *(*v8 + 336);
            if (v77)
            {
              v77(v8 - 23, *(a2 + 2), *(a2 + 3));
            }

            v11 = 25;
            goto LABEL_38;
          case 0x1Cu:
            if (a3 < 6)
            {
              v167 = 0;
            }

            else
            {
              v167 = *(a2 + 1);
            }

            v217 = *(*v8 + 152);
            if (v217)
            {
              v217(v8 - 23, v167);
            }

            v11 = 28;
            goto LABEL_38;
          case 0x1Du:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 829, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v168 = *(a2 + 2);
            if (a3 <= 4)
            {
              v43 = a2;
              v171 = sub_1001BBBD8(0, 0x7EB70963uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 832, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v169 = 0;
            }

            else
            {
              v43 = a2;
              v169 = *(a2 + 3);
              v170 = sub_1001BBBD8(v169, 0x7EB70963uLL);
              v171 = v170;
              if (v6 - 5 >= v169 && v169)
              {
                for (j = 0; j != v169; ++j)
                {
                  *(v170 + j) = *(v43 + j + 5);
                }
              }
            }

            v227 = *(*v8 + 168);
            if (v227)
            {
              v227(v8 - 23, v168, v169, v171);
            }

            sub_10000C1E8(v171);
            v11 = 29;
            goto LABEL_591;
          case 0x1Eu:
            if (a3 <= 3)
            {
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("AACP_MSG_EA_SESSION_DOWNLOAD, invalid PDU");
              v219 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
              {
                return;
              }

              goto LABEL_671;
            }

            v177 = *(a2 + 3);
            if ((v177 & 0x80000000) != 0)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("AACP_MSG_EA_SESSION_DOWNLOAD received unsupported control message");
                v272 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              v11 = 30;
              goto LABEL_38;
            }

            v178 = (*(a2 + 2) | (v177 << 8)) & 0x3FF;
            v179 = sub_100007618(v178, 0x8BBEBDD4uLL);
            v75 = v179;
            if (v6 - 4 >= v178)
            {
              if (v178)
              {
                v277 = (v7 + 4);
                v278 = v179;
                do
                {
                  v279 = *v277++;
                  *v278++ = v279;
                }

                while (v278 < &v179[v178]);
              }

              v280 = *(*v8 + 176);
              if (v280)
              {
                v280(v8 - 23, (v177 >> 2) & 0x1F, v178, v179);
              }

              sub_10000C1E8(v75);
              if (v5)
              {
                v11 = 30;
                goto LABEL_39;
              }

              return;
            }

            if (!sub_10000C240())
            {
              goto LABEL_613;
            }

            sub_10000AF54("AACP_MSG_EA_SESSION_DOWNLOAD, invalid PDU");
            v180 = sub_10000C050(0x53u);
            if (!os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_613;
            }

            goto LABEL_612;
          case 0x20u:
            if (a3 <= 3)
            {
              v175 = sub_1001BBBD8(0, 0xD4FC53DBuLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 876, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v173 = 0;
            }

            else
            {
              v173 = a2[1];
              v174 = sub_1001BBBD8(v173, 0xD4FC53DBuLL);
              v175 = v174;
              if (v6 - 4 >= v173 && v173)
              {
                for (k = 0; k != v173; ++k)
                {
                  *(v174 + k) = v7[k + 4];
                }
              }
            }

            v218 = *(*v8 + 184);
            if (v218)
            {
              v218(v8 - 23, v173, v175);
            }

            sub_10000C1E8(v175);
            v11 = 32;
            goto LABEL_38;
          case 0x21u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 891, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 == 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 892, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v59 = *(a2 + 2);
            v60 = *(a2 + 3);
            v61 = size;
            if (a3 < 6)
            {
              v62 = a2;
              v63 = 0;
            }

            else
            {
              v62 = a2;
              v63 = a2[2];
              if (a2[2])
              {
                v64 = sub_1001BBBD8(a2[2], 0x1F4D8532uLL);
                v65 = v64;
                if (v6 - 6 >= v63)
                {
                  v66 = (v62 + 3);
                  v67 = v64;
                  do
                  {
                    v68 = *v66++;
                    *v67++ = v68;
                  }

                  while (v67 < &v64[v63]);
                }

LABEL_535:
                v228 = *(*v8 + 192);
                if (v228)
                {
                  v228(v8 - 23, v59, v60, v63, v65);
                }

                if (v65)
                {
                  sub_10000C1E8(v65);
                }

                v11 = 33;
                v7 = v62;
                v5 = v61;
                goto LABEL_38;
              }
            }

            v65 = 0;
            goto LABEL_535;
          case 0x23u:
            memset(&buf[2] + 2, 0, 20);
            if (a3 <= 2)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 918, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            }

            else
            {
              v128 = *(a2 + 2);
              LOBYTE(buf[0]) = *(a2 + 2);
              if (a3 > 4)
              {
                *(buf + 1) = *(a2 + 3);
                if (a3 > 8)
                {
                  *(buf + 3) = *(a2 + 5);
                  if (a3 > 0xA)
                  {
                    *(&buf[1] + 3) = *(a2 + 9);
                    if (a3 != 11)
                    {
                      BYTE1(buf[2]) = *(a2 + 11);
                      if (a3 <= 0xD)
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 927, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                        v129 = 0;
                      }

                      else
                      {
                        v129 = a2[6];
                        *(&buf[2] + 2) = v129;
                        if (a3 != 14)
                        {
                          v131 = *(a2 + 14);
                          v132 = v131 + 1;
                          v133 = sub_1001BBBD8(v131 + 1, 0x8635BB43uLL);
                          *(&buf[5] + 2) = v133;
                          if (a3 - 15 > v131)
                          {
                            v134 = &v133[v132];
                            v135 = (v7 + 15);
                            do
                            {
                              v136 = *v135++;
                              *v133++ = v136;
                            }

                            while (v133 < v134);
                            v6 = a3;
                            if (v128 <= 1)
                            {
                              goto LABEL_562;
                            }

                            v137 = v132 + 15;
                            if (a3 - v137 > 1)
                            {
                              v138 = (v7[v137] << 16) | (v7[v137 + 1] << 24);
                              if (a3 - (v132 + 17) > 3)
                              {
                                v139 = v132 + 21;
                                *(&buf[2] + 2) = v129 | (*&v7[v132 + 17] << 32) | v138;
                                if (a3 - v139 >= 4)
                                {
                                  *(&buf[4] + 2) = *&v7[v139];
                                }

                                goto LABEL_562;
                              }

                              goto LABEL_561;
                            }

LABEL_560:
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 936, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                            v138 = 0;
LABEL_561:
                            *(&buf[2] + 2) = v129 | v138;
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 939, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                            goto LABEL_562;
                          }

                          v6 = a3;
LABEL_558:
                          if (v128 <= 1)
                          {
LABEL_562:
                            v242 = *(*v8 + 200);
                            if (v242)
                            {
                              v242(v8 - 23, buf);
                            }

                            if (*(&buf[5] + 2))
                            {
                              sub_10000C1E8(*(&buf[5] + 2));
                            }

                            v11 = 35;
                            goto LABEL_38;
                          }

                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 935, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                          goto LABEL_560;
                        }
                      }

                      *(&buf[5] + 2) = sub_1001BBBD8(1uLL, 0x8635BB43uLL);
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 929, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                      goto LABEL_558;
                    }

LABEL_713:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 921, "ByteStream_NumReadBytesAvail(bs) >= 1");
                  }

LABEL_712:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 921, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                  goto LABEL_713;
                }

LABEL_711:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 920, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                goto LABEL_712;
              }
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 919, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            goto LABEL_711;
          case 0x24u:
            if (a3 <= 3)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1203, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v185 = 0;
            }

            else
            {
              v185 = a2[1];
              if (a3 > 5)
              {
                v186 = a2[2];
                v187 = sub_1001BBBD8(v186, 0x10DC546AuLL);
                v188 = v187;
                if (v6 - 6 >= v186 && v186)
                {
                  for (m = 0; m != v186; ++m)
                  {
                    *(v187 + m) = v7[m + 6];
                  }
                }

LABEL_510:
                v221 = *(*v8 + 208);
                if (v221)
                {
                  v221(v8 - 23, v185, v186, v188);
                }

                sub_10000C1E8(v188);
                v11 = 36;
                goto LABEL_38;
              }
            }

            v188 = sub_1001BBBD8(0, 0x10DC546AuLL);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1205, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            v186 = 0;
            goto LABEL_510;
          case 0x27u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 968, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 == 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 969, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 970, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v292 = size;
            if (a3 == 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 971, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v70 = *(a2 + 2);
            v71 = *(a2 + 3);
            v72 = *(a2 + 4);
            v73 = *(a2 + 5);
            v74 = sub_1001BBBD8(v73 + 1, 0x9E629437uLL);
            v75 = v74;
            if (v6 - 6 < v73)
            {
              if (!sub_10000C240())
              {
                goto LABEL_613;
              }

              sub_10000AF54("AACP_MSG_GET_CERTIFICATES_RESP error reading serialNumber");
              v76 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_613;
              }

              goto LABEL_612;
            }

            if (v73)
            {
              v233 = (v7 + 6);
              v234 = v74;
              do
              {
                v235 = *v233++;
                *v234++ = v235;
              }

              while (v234 < &v74[v73]);
            }

            if (v6 - (v73 + 6) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 982, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v236 = v7;
            v237 = *&v7[v73 + 6];
            v238 = sub_1001BBBD8(v237, 0x7F0F4EDAuLL);
            v239 = v238;
            if (v6 - (v73 + 8) < v237)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("AACP_MSG_GET_CERTIFICATES_RESP error reading certificateData");
                v240 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              sub_10000C1E8(v75);
              v241 = v239;
              goto LABEL_614;
            }

            if (v237)
            {
              v261 = &v236[v73 + 8];
              v262 = v238;
              do
              {
                v263 = *v261++;
                *v262++ = v263;
              }

              while (v262 < &v238[v237]);
            }

            v264 = *(*v8 + 216);
            if (v264)
            {
              v264(v8 - 23, v70, v71, v72, v73, v75, v237, v238);
            }

            sub_10000C1E8(v75);
            sub_10000C1E8(v239);
            v11 = 39;
            v7 = v236;
            goto LABEL_310;
          case 0x28u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1006, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1007, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v120 = *(a2 + 2);
            v122 = *(a2 + 3);
            v123 = sub_1001BBBD8(v122, 0x100004077774924uLL);
            v75 = v123;
            if (v6 - 5 >= v122)
            {
              if (v122)
              {
                v229 = a2 + 5;
                v230 = v123;
                do
                {
                  v231 = *v229++;
                  *v230++ = v231;
                }

                while (v230 < &v123[v122]);
              }

              v232 = *(*v8 + 224);
              if (v232)
              {
                v232(v8 - 23, v123, v122, v120);
              }

              sub_10000C1E8(v75);
              if (v5)
              {
                v7 = a2;
                v11 = 40;
                goto LABEL_39;
              }

              return;
            }

            if (!sub_10000C240())
            {
              goto LABEL_613;
            }

            sub_10000AF54("AACP_MSG_GYRO_INFO, invalid gyroInfoData");
            v124 = sub_10000C050(0x53u);
            if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_613;
            }

            goto LABEL_612;
          case 0x2Bu:
            v91 = size;
            if (a3 <= 2)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1128, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v92 = 0;
              v199 = 2;
            }

            else
            {
              v92 = *(a2 + 2);
              if (a3 > 4)
              {
                v93 = *(a2 + 3);
                if (a3 > 8)
                {
                  v95 = *(a2 + 5);
                  if (a3 > 0xC)
                  {
                    v95 |= *(a2 + 9) << 32;
                    v96 = malloc_type_calloc(*(a2 + 3), 1uLL, 0x100004077774924uLL);
                    v97 = a2;
                    v98 = a2 + 13;
                    v99 = &v96[v93];
                    v100 = v6 - 13;
                    goto LABEL_596;
                  }

                  v97 = a2;
                  v199 = 9;
LABEL_595:
                  v96 = malloc_type_calloc(v93, 1uLL, 0x100004077774924uLL);
                  v98 = v97 + v199;
                  v99 = &v96[v93];
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1137, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                  v100 = 0;
LABEL_596:
                  if (v100 >= v93 && v93)
                  {
                    v247 = v96;
                    do
                    {
                      v248 = *v98++;
                      *v247++ = v248;
                    }

                    while (v247 < v99);
                  }

                  v249 = *(*v8 + 232);
                  if (v249)
                  {
                    v249(v8 - 23, v92, v95, v93, v96);
                  }

                  free(v96);
                  v11 = 43;
                  v7 = v97;
                  v5 = v91;
                  goto LABEL_38;
                }

                v97 = a2;
                v199 = 5;
LABEL_594:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1133, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                v95 = 0;
                goto LABEL_595;
              }

              v199 = 3;
            }

            v97 = v7;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1132, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            v93 = 0;
            goto LABEL_594;
          case 0x2Cu:
            if (a3 <= 5)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Invalid length=%d for GAPA message", v6);
                v162 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              v11 = 44;
              goto LABEL_38;
            }

            if ((a3 & 0xFFFE) == 4)
            {
              v75 = sub_1001BBBD8(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1043, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
LABEL_610:
              if (!sub_10000C240())
              {
                goto LABEL_613;
              }

              sub_10000AF54("AACP_MSG_GAPA, invalid gapaData");
              v256 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_613;
              }

              goto LABEL_612;
            }

            v251 = *(a2 + 2);
            v252 = *(a2 + 3);
            v254 = a2[2];
            v255 = sub_1001BBBD8(v254, 0x100004077774924uLL);
            v75 = v255;
            if (v6 - 6 < v254)
            {
              goto LABEL_610;
            }

            if (v254)
            {
              v281 = a2 + 3;
              v282 = v254;
              v283 = v255;
              do
              {
                v284 = *v281;
                v281 = (v281 + 1);
                *v283++ = v284;
                --v282;
              }

              while (v282);
              v285 = v254 + 6;
            }

            else
            {
              v285 = 6;
            }

            if (v251 != 2)
            {
              goto LABEL_682;
            }

            if (v254 + 7 <= v6)
            {
              if (v6 <= v285)
              {
LABEL_682:
                v288 = 0;
              }

              else
              {
                v288 = *(a2 + v285);
              }
            }

            else if (sub_10000C240())
            {
              sub_10000AF54("Invalid length=%d for GAPA version=%d message", v6, 2);
              v287 = sub_10000C050(0x53u);
              if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }

              v288 = 0;
            }

            else
            {
              v288 = 0;
            }

            if (v252 == 2)
            {
              v289 = *(*v8 + 248);
              if (v289)
              {
                v289(v8 - 23, v75, v254, v251, v288);
              }
            }

            else if (sub_10000C240())
            {
              sub_10000AF54("Unknown GAPA message type %d", v252);
              v290 = sub_10000C050(0x53u);
              if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            sub_10000C1E8(v75);
            if (v5)
            {
              v7 = a2;
              v11 = 44;
              goto LABEL_39;
            }

            return;
          case 0x2Eu:
            if (a3 <= 2)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1154, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            }

            else if (a3 != 3)
            {
              if (a3 > 4)
              {
                v78 = size;
                v79 = *(a2 + 3);
                v81 = *(a2 + 4);
                v82 = sub_1001BBBD8(8 * v81, 0xF8CF1C16uLL);
                v75 = v82;
                if (v6 - 5 >= 8 * v81)
                {
                  if (v81)
                  {
                    v83 = a2 + 5;
                    v84 = v82;
                    do
                    {
                      v85 = *v83++;
                      *v84++ = v85;
                    }

                    while (v84 < &v82[8 * v81]);
                  }

                  v86 = *(*v8 + 240);
                  if (v86)
                  {
                    v86(v8 - 23, v79, v81, v82);
                  }

                  sub_10000C1E8(v75);
                  if (v78)
                  {
                    v7 = a2;
                    v11 = 46;
                    goto LABEL_39;
                  }

                  return;
                }

LABEL_329:
                if (!sub_10000C240())
                {
                  goto LABEL_613;
                }

                sub_10000AF54("AACP_MSG_TIPI_TABLE, error initializing tipiTable");
                v197 = sub_10000C050(0x53u);
                if (!os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_613;
                }

LABEL_612:
                sub_10080F7A0();
LABEL_613:
                v241 = v75;
LABEL_614:
                sub_10000C1E8(v241);
                return;
              }

LABEL_328:
              v75 = sub_1001BBBD8(0, 0xF8CF1C16uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1159, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              goto LABEL_329;
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1155, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            goto LABEL_328;
          case 0x30u:
            if (a3 <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1087, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v54 = *(*v8 + 128);
            if (v54)
            {
              v54(v8 - 23, a2[1]);
            }

            v11 = 48;
            goto LABEL_38;
          case 0x31u:
          case 0x32u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1098, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v13 = *(a2 + 2);
            ptr = sub_1001BBBD8(16 * v13, 0x101004082113244uLL);
            v292 = v5;
            if (!v13)
            {
              v29 = *(*v8 + 136);
              if (!v29)
              {
                goto LABEL_309;
              }

              goto LABEL_305;
            }

            v14 = v6;
            v15 = 0;
            v16 = 0;
            v295 = v14;
            v297 = v7;
            v299 = v14 - 1;
            v17 = 3;
            while (1)
            {
              v18 = &ptr[2 * v15];
              if (v16)
              {
                break;
              }

              if (v299 <= v17)
              {
                goto LABEL_20;
              }

              LOWORD(ptr[2 * v15]) = *&v297[v17];
              if (v299 <= (v17 + 2))
              {
                v19 = 0;
                v16 = 1;
                v17 += 2;
              }

              else
              {
                v16 = 0;
                *(v18 + 1) = *&v297[(v17 + 2)];
                v17 += 4;
                v19 = 1;
              }

LABEL_21:
              v20 = sub_1001BBBD8(*(v18 + 1), 0x82F6A03CuLL);
              *(v18 + 1) = v20;
              v21 = *(v18 + 1);
              if (v19)
              {
                v22 = v295 - v17;
              }

              else
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1104, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
                v22 = 0;
              }

              v23 = *(v18 + 1);
              if (v22 >= v23)
              {
                if (v21)
                {
                  v24 = &v297[v17];
                  v25 = &v20[v21];
                  do
                  {
                    v26 = *v24++;
                    *v20++ = v26;
                  }

                  while (v20 < v25);
                  v23 = *(v18 + 1);
                }

                v17 += v23;
              }

              else
              {
                v16 = 1;
              }

              if (++v15 == v13)
              {
                v29 = *(*v8 + 136);
                v6 = v295;
                v7 = v297;
                if (!v29)
                {
                  goto LABEL_306;
                }

                if (v16)
                {
                  if (sub_10000C240())
                  {
                    sub_10000AF54("AACP_MSG_DELETE_KEYS, error getting keys");
                    v30 = sub_10000C050(0x53u);
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                    {
                      sub_10080F7A0();
                    }
                  }

LABEL_306:
                  if (v13)
                  {
                    v190 = ptr + 1;
                    do
                    {
                      v191 = *v190;
                      v190 += 2;
                      sub_10000C1E8(v191);
                      --v13;
                    }

                    while (v13);
                  }

LABEL_309:
                  sub_10000C1E8(ptr);
LABEL_310:
                  v5 = v292;
                  goto LABEL_38;
                }

LABEL_305:
                v29(v8 - 23, v13, ptr, v11 != 49);
                goto LABEL_306;
              }
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1101, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
LABEL_20:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1102, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            v19 = 0;
            v16 = 1;
            goto LABEL_21;
          case 0x40u:
            if (a3 <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1179, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            if (a3 <= 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1180, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1181, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v144 = *(*v8 + 144);
            v11 = 64;
            if (v144 && a2[1])
            {
              v144(v8 - 23, a2[1], a2[2], a2[3]);
              v11 = 64;
            }

            goto LABEL_38;
          case 0x47u:
            sub_1001B9F2C((v8 - 23));
            v11 = 71;
            goto LABEL_38;
          case 0x49u:
            sub_1001BA5F0(v8 - 23);
            v11 = 73;
            goto LABEL_38;
          case 0x4Bu:
            if (*(*v8 + 256))
            {
              if (a3 >= 4 && (v48 = a2[1], v48 > 1))
              {
                v273 = malloc_type_malloc(a2[1], 0x23159633uLL);
                if (!v273)
                {
                  sub_1000D660C();
                }

                if (v6 - 4 >= v48)
                {
                  v274 = (v7 + 4);
                  v275 = v273;
                  do
                  {
                    v276 = *v274++;
                    *v275++ = v276;
                  }

                  while (v275 < &v273[v48]);
                }

                (*(*v8 + 256))(v8 - 23, v273, v48);
                free(v273);
              }

              else if (sub_10000C240())
              {
                sub_10000AF54("CD message data length cannot be less than 2 bytes");
                v49 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }
            }

            v11 = 75;
            goto LABEL_38;
          case 0x4Cu:
            if (a3 <= 3)
            {
              v89 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1262, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v87 = 0;
            }

            else
            {
              v87 = a2[1];
              v88 = malloc_type_malloc(v87, 0x100004077774924uLL);
              v89 = v88;
              if (v6 - 4 >= v87 && v87)
              {
                for (n = 0; n != v87; ++n)
                {
                  *(v88 + n) = v7[n + 4];
                }
              }
            }

            v198 = *(*v8 + 264);
            if (v198)
            {
              v198(v8 - 23, v87, v89);
            }

            free(v89);
            v11 = 76;
            goto LABEL_38;
          case 0x4Eu:
            v35 = *(*v8 + 272);
            if (!v35)
            {
              v11 = 78;
              goto LABEL_38;
            }

            if (a3 < 0xA)
            {
              v35(v8 - 23, 0);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1284, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            }

            else
            {
              v35(v8 - 23, *(a2 + 1));
              v12 = 10;
LABEL_56:
              if ((v6 - v12) > 1)
              {
                v36 = v7;
                v37 = *&v7[v12];
                v38 = v12 + 2;
                v39 = malloc_type_malloc(v37, 0x100004077774924uLL);
                v40 = v39;
                if (v6 - v38 >= v37 && v37)
                {
                  for (ii = 0; ii != v37; ++ii)
                  {
                    *(v39 + ii) = *(v36 + v38 + ii);
                  }
                }

LABEL_579:
                v245 = *(*v8 + 280);
                if (v245)
                {
                  v245(v8 - 23, v37, v40);
                }

                free(v40);
                goto LABEL_608;
              }
            }

            v36 = v7;
            v40 = malloc_type_malloc(0, 0x100004077774924uLL);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1287, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            v37 = 0;
            goto LABEL_579;
          case 0x4Fu:
            goto LABEL_56;
          case 0x50u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1298, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v55 = *(a2 + 2);
            if (*(a2 + 2) > 1u)
            {
              if (v55 == 2)
              {
                v268 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
                v57 = v268;
                if ((v6 - 11) <= 0xFFFFFFF7)
                {
                  for (jj = 0; jj != 8; ++jj)
                  {
                    *(v268 + jj) = v7[jj + 3];
                  }
                }
              }

              else
              {
                if (v55 != 3)
                {
LABEL_628:
                  if (sub_10000C240())
                  {
                    sub_10000AF54("PerfStats: subtype %d not found", v55);
                    v265 = sub_10000C050(0x53u);
                    if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
                    {
                      buf[0] = 136446210;
                      *&buf[1] = sub_10000C0FC();
                      _os_log_impl(&_mh_execute_header, v265, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                    }
                  }

                  v57 = 0;
                  goto LABEL_639;
                }

                v222 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
                v57 = v222;
                if ((v6 - 11) <= 0xFFFFFFF7)
                {
                  for (kk = 0; kk != 8; ++kk)
                  {
                    *(v222 + kk) = v7[kk + 3];
                  }
                }
              }
            }

            else
            {
              if (*(a2 + 2))
              {
                if (v55 == 1)
                {
                  v56 = malloc_type_malloc(0xBuLL, 0x10000403B807CB7uLL);
                  v57 = v56;
                  if ((v6 - 14) <= 0xFFFFFFF4)
                  {
                    for (mm = 0; mm != 11; ++mm)
                    {
                      *(v56 + mm) = v7[mm + 3];
                    }
                  }

                  goto LABEL_639;
                }

                goto LABEL_628;
              }

              v266 = malloc_type_malloc(9uLL, 0x10000408EEE02DCuLL);
              v57 = v266;
              if ((v6 - 12) <= 0xFFFFFFF6)
              {
                for (nn = 0; nn != 9; ++nn)
                {
                  *(v266 + nn) = v7[nn + 3];
                }
              }
            }

LABEL_639:
            v270 = *(*v8 + 288);
            if (v270)
            {
              v270(v8 - 23, v55, v57);
            }

            free(v57);
            v11 = 80;
            goto LABEL_38;
          case 0x52u:
            if (a3 <= 3)
            {
              v165 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1383, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v163 = 0;
            }

            else
            {
              v163 = a2[1];
              v164 = malloc_type_malloc(v163, 0x100004077774924uLL);
              v165 = v164;
              if (v6 - 4 >= v163 && v163)
              {
                for (i1 = 0; i1 != v163; ++i1)
                {
                  *(v164 + i1) = v7[i1 + 4];
                }
              }
            }

            v216 = *(*v8 + 296);
            if (v216)
            {
              v216(v8 - 23, v163, v165);
            }

            free(v165);
            v11 = 82;
            goto LABEL_38;
          case 0x53u:
            if (a3 <= 3)
            {
              v52 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1397, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v50 = 0;
            }

            else
            {
              v50 = a2[1];
              v51 = malloc_type_malloc(v50, 0x100004077774924uLL);
              v52 = v51;
              if (v6 - 4 >= v50 && v50)
              {
                for (i2 = 0; i2 != v50; ++i2)
                {
                  *(v51 + i2) = v7[i2 + 4];
                }
              }
            }

            v196 = *(*v8 + 304);
            if (v196)
            {
              v196(v8 - 23, v50, v52);
            }

            free(v52);
            v11 = 83;
            goto LABEL_38;
          case 0x55u:
            if (a3 <= 2)
            {
              v43 = a2;
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1411, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v42 = 0;
            }

            else
            {
              v42 = *(a2 + 2);
              if (a3 > 4)
              {
                v43 = a2;
                v44 = *(a2 + 3);
                v45 = malloc_type_malloc(v44, 0x100004077774924uLL);
                v46 = v45;
                if (v6 - 5 >= v44 && v44)
                {
                  for (i3 = 0; i3 != v44; ++i3)
                  {
                    *(v45 + i3) = *(v43 + i3 + 5);
                  }
                }

LABEL_588:
                v246 = *(*v8 + 312);
                if (v246)
                {
                  v246(v8 - 23, v42, v44, v46);
                }

                free(v46);
                v11 = 85;
LABEL_591:
                v7 = v43;
LABEL_38:
                if (v5)
                {
LABEL_39:
                  v28 = *(*v8 + 352);
                  if (v28)
                  {
                    v28(v8 - 23, v11, v7, v6);
                  }
                }

                return;
              }

              v43 = a2;
            }

            v46 = malloc_type_malloc(0, 0x100004077774924uLL);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1414, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            v44 = 0;
            goto LABEL_588;
          case 0x57u:
            if (a3 <= 3)
            {
              v105 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1427, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v103 = 0;
            }

            else
            {
              v103 = a2[1];
              v104 = malloc_type_malloc(v103, 0x100004077774924uLL);
              v105 = v104;
              if (v6 - 4 >= v103 && v103)
              {
                for (i4 = 0; i4 != v103; ++i4)
                {
                  *(v104 + i4) = v7[i4 + 4];
                }
              }
            }

            v200 = *(*v8 + 320);
            if (v200)
            {
              v200(v8 - 23, v105, v103);
            }

            free(v105);
            v11 = 87;
            goto LABEL_38;
          case 0x58u:
            if (!*(*v8 + 328))
            {
              goto LABEL_585;
            }

            if (a3 <= 3)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1444, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v145 = 0;
            }

            else
            {
              v145 = a2[1];
              if (a3 > 5)
              {
                v146 = a2[2];
                v147 = malloc_type_malloc(v146, 0x100004077774924uLL);
                v148 = v147;
                if (v6 - 6 >= v146 && v146)
                {
                  for (i5 = 0; i5 != v146; ++i5)
                  {
                    *(v147 + i5) = v7[i5 + 6];
                  }
                }

LABEL_584:
                (*(*v8 + 328))(v8 - 23, v145, v148, v146);
                free(v148);
LABEL_585:
                v11 = 88;
                goto LABEL_38;
              }
            }

            v148 = malloc_type_malloc(0, 0x100004077774924uLL);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1447, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
            v146 = 0;
            goto LABEL_584;
          case 0x59u:
            if (a3 <= 3)
            {
              v183 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1476, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v181 = 0;
            }

            else
            {
              v181 = a2[1];
              v182 = malloc_type_malloc(v181, 0x100004077774924uLL);
              v183 = v182;
              if (v6 - 4 >= v181 && v181)
              {
                for (i6 = 0; i6 != v181; ++i6)
                {
                  *(v182 + i6) = v7[i6 + 4];
                }
              }
            }

            v220 = *(*v8 + 344);
            if (v220)
            {
              v220(v8 - 23, v183, v181);
            }

            v11 = 89;
            goto LABEL_38;
          case 0x60u:
            if (a3 <= 3)
            {
              v33 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1493, "void aapDataRecv(BT_AAP_HANDLE, uint8_t *, uint16_t, _Bool)");
              v31 = 0;
            }

            else
            {
              v31 = a2[1];
              v32 = malloc_type_malloc(v31, 0x100004077774924uLL);
              v33 = v32;
              if (v6 - 4 >= v31 && v31)
              {
                for (i7 = 0; i7 != v31; ++i7)
                {
                  *(v32 + i7) = v7[i7 + 4];
                }
              }
            }

            v195 = *(*v8 + 360);
            if (v195)
            {
              v195(v8 - 23, v33, v31);
            }

            free(v33);
            v11 = 96;
            goto LABEL_38;
          default:
            goto LABEL_35;
        }
      }

      v291 = "(length) > 0";
    }

    else
    {
      v291 = "data";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 401, v291);
  }

LABEL_5:
  if (sub_10000C240())
  {
    sub_10000AF54("No connection associated with handle (%d)", a1);
    v10 = sub_10000C050(0x53u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_671:
      sub_10080F7A0();
    }
  }
}