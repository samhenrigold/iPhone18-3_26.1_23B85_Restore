uint64_t *sub_1000AEAF8(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  a2[6] = &off_100AE0AB8;
  v4 = a2[7];
  if (v4)
  {
    sub_10000C808(v4);
  }

  operator delete(a2);
  return v3;
}

void sub_1000AEBD0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000533E0(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AEBEC(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E520 != -1)
  {
    sub_100831404();
  }

  return byte_100B6E518;
}

uint64_t sub_1000AEC24(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AED74;
  v7[3] = &unk_100AF2230;
  v7[4] = a2;
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AF2A4;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  return sub_10002173C(a1, 258, 1, v7, v6);
}

uint64_t sub_1000AECE8()
{
  if (off_100B60770)
  {
    v0 = off_100B60770();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v0);
    v1 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000AED9C(uint64_t a1, unsigned int a2, char a3, char a4, void (*a5)())
{
  v36 = 0;
  v37 = 0;
  result = sub_10001FFD8(&v36);
  if (!result)
  {
    if (HIBYTE(v37))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3977, "OI_STATUS _BCM_LEMetaAdvMatchingRuleRemoveMultipleDuplicateFilterEntries(LE_Address *, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v11 = WORD2(v37);
      if (WORD1(v37) > WORD2(v37))
      {
        if (BYTE6(v37) == 2)
        {
          ++WORD2(v37);
          *(v36 + v11) = 77;
          if (HIBYTE(v37))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3978, "OI_STATUS _BCM_LEMetaAdvMatchingRuleRemoveMultipleDuplicateFilterEntries(LE_Address *, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v12 = WORD2(v37);
            if (WORD1(v37) > WORD2(v37))
            {
              if (BYTE6(v37) == 2)
              {
                ++WORD2(v37);
                *(v36 + v12) = a2;
                if (!a2)
                {
LABEL_18:
                  v20 = a2;
                  v21 = a1 - a2 + 8 * a2 + 1;
                  v22 = v20 - 8;
                  while (!HIBYTE(v37))
                  {
                    v23 = WORD2(v37);
                    if (WORD1(v37) <= WORD2(v37))
                    {
                      goto LABEL_41;
                    }

                    if (BYTE6(v37) != 2)
                    {
                      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      goto LABEL_42;
                    }

                    v24 = *(v21 - 1);
                    ++WORD2(v37);
                    *(v36 + v23) = v24;
                    if (HIBYTE(v37))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3985, "OI_STATUS _BCM_LEMetaAdvMatchingRuleRemoveMultipleDuplicateFilterEntries(LE_Address *, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_37:
                      v28 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_38:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3985, v28);
                    }

                    if (WORD1(v37) - WORD2(v37) <= 5)
                    {
                      goto LABEL_37;
                    }

                    if (BYTE6(v37) != 2)
                    {
                      v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      goto LABEL_38;
                    }

                    sub_1000075EC((v36 + WORD2(v37)), v21, 6uLL);
                    WORD2(v37) += 6;
                    v21 += 7;
                    if (__CFADD__(v22++, 1))
                    {
                      goto LABEL_27;
                    }
                  }

                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3984, "OI_STATUS _BCM_LEMetaAdvMatchingRuleRemoveMultipleDuplicateFilterEntries(LE_Address *, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_41:
                  v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_42:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3984, v29);
                }

                v13 = a2;
                v14 = a1 + 1;
                while (!HIBYTE(v37))
                {
                  v15 = WORD2(v37);
                  if (WORD1(v37) <= WORD2(v37))
                  {
                    goto LABEL_49;
                  }

                  if (BYTE6(v37) != 2)
                  {
                    v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    goto LABEL_50;
                  }

                  v16 = *(v14 - 1);
                  ++WORD2(v37);
                  *(v36 + v15) = v16;
                  if (HIBYTE(v37))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3981, "OI_STATUS _BCM_LEMetaAdvMatchingRuleRemoveMultipleDuplicateFilterEntries(LE_Address *, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_45:
                    v30 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_46:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3981, v30);
                  }

                  if (WORD1(v37) - WORD2(v37) <= 5)
                  {
                    goto LABEL_45;
                  }

                  if (BYTE6(v37) != 2)
                  {
                    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    goto LABEL_46;
                  }

                  sub_1000075EC((v36 + WORD2(v37)), v14, 6uLL);
                  WORD2(v37) += 6;
                  v14 += 7;
                  if (!--v13)
                  {
                    if (a2 <= 7)
                    {
                      goto LABEL_18;
                    }

LABEL_27:
                    if (HIBYTE(v37))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3987, "OI_STATUS _BCM_LEMetaAdvMatchingRuleRemoveMultipleDuplicateFilterEntries(LE_Address *, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else
                    {
                      v26 = WORD2(v37);
                      if (WORD1(v37) > WORD2(v37))
                      {
                        if (BYTE6(v37) == 2)
                        {
                          ++WORD2(v37);
                          *(v36 + v26) = a3;
                          if (HIBYTE(v37))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3988, "OI_STATUS _BCM_LEMetaAdvMatchingRuleRemoveMultipleDuplicateFilterEntries(LE_Address *, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                          }

                          else
                          {
                            v27 = WORD2(v37);
                            if (WORD1(v37) > WORD2(v37))
                            {
                              if (BYTE6(v37) == 2)
                              {
                                ++WORD2(v37);
                                *(v36 + v27) = a4;
                                return sub_100020078(233, v36, BYTE4(v37), a5, sub_100022AD0, v17, v18, v19);
                              }

                              v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3988, v35);
                            }
                          }

                          v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_66;
                        }

                        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3987, v34);
                      }
                    }

                    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_62;
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3980, "OI_STATUS _BCM_LEMetaAdvMatchingRuleRemoveMultipleDuplicateFilterEntries(LE_Address *, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_49:
                v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_50:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3980, v31);
              }

              v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3978, v33);
            }
          }

          v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_58;
        }

        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3977, v32);
      }
    }

    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_54;
  }

  return result;
}

uint64_t sub_1000AF254(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 258);
}

void sub_1000AF2D8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v9 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = [v7 isEqualToString:v9];

    if (v8)
    {
      sub_100055FD8(a3, v5);
    }

    v5 += 14;
  }
}

void sub_1000AF378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  sub_100018458(&a10);

  _Unwind_Resume(a1);
}

uint64_t sub_1000AF3A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13))
  {
    goto LABEL_40;
  }

  v4 = *(a1 + 39);
  if (v4 >= 0)
  {
    v5 = *(a1 + 39);
  }

  else
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a2 + 39);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 24);
  }

  if (v5 == v6 && (v4 >= 0 ? (v8 = (a1 + 16)) : (v8 = *(a1 + 16)), v7 >= 0 ? (v9 = (a2 + 16)) : (v9 = *(a2 + 16)), !memcmp(v8, v9, v5) && *(a1 + 40) == *(a2 + 40) && *(a1 + 42) == *(a2 + 42) && (!*(a1 + 42) || *(a1 + 43) == *(a2 + 43)) && sub_1000AF598(a1 + 48, a2 + 48) && sub_1000AF598(a1 + 224, a2 + 224) && sub_1000D6740((a1 + 64), a2 + 64) && sub_1000D6740((a1 + 88), a2 + 88) && *(a1 + 128) == *(a2 + 128) && sub_1000AF598(a1 + 136, a2 + 136) && sub_1000AF598(a1 + 152, a2 + 152) && sub_1000AF598(a1 + 448, a2 + 448)))
  {
    v10 = *(a1 + 112);
    v11 = (a1 + 120);
    if (v10 == (a1 + 120))
    {
      v12 = 1;
    }

    else
    {
      v12 = 1;
      do
      {
        v13 = sub_100058794(a2 + 112, v10 + 32);
        v14 = a2 + 120 != v13 && sub_1000AF598((v10 + 56), v13 + 56);
        v15 = *(v10 + 1);
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = *(v10 + 2);
            v17 = *v16 == v10;
            v10 = v16;
          }

          while (!v17);
        }

        v12 &= v14;
        v10 = v16;
      }

      while (v16 != v11);
    }
  }

  else
  {
LABEL_40:
    v12 = 0;
  }

  return v12 & 1;
}

BOOL sub_1000AF598(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v2)
  {
    v6 = (v2 + 24);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = (v4 + 24);
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = *(v2 + 16);
  }

  else
  {
    v8 = 0;
  }

  return memcmp(v6, v7, v8) == 0;
}

unint64_t sub_1000AF61C(void *a1)
{
  v1 = a1;
  v2 = v1;
  v6 = 0;
  v5 = 0;
  if (!v1)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008721E0();
    }

    goto LABEL_9;
  }

  if ([v1 length] != 6 && objc_msgSend(v2, "length") != 7)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10087216C();
    }

LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  [v2 getBytes:&v5 range:{objc_msgSend(v2, "length") - 6, 6}];
  v3 = (v5 << 40) | (BYTE1(v5) << 32) | (BYTE2(v5) << 24) | (HIBYTE(v5) << 16) | (v6 << 8) | HIBYTE(v6) | 0x1000000000000;
LABEL_10:

  return v3;
}

BOOL sub_1000AF748(uint64_t a1)
{
  v1 = [*(a1 + 64) longTermKeyMap];
  v2 = [v1 count] != 0;

  return v2;
}

uint64_t sub_1000AF798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000AF8E0(a1, a2, a3))
  {
    return 1;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008743BC();
  }

  sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, v11);
  v7 = sub_10004DF60(v11);
  if (!v7)
  {
    goto LABEL_10;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000C32C8();
  }

  v8 = sub_1000AFA48(off_100B508C8, v7);
  v9 = sub_1000AFB14(a1, v8, a3);

  if (v9)
  {
    v6 = 1;
  }

  else
  {
LABEL_10:
    v6 = 0;
  }

  return v6;
}

BOOL sub_1000AF8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2112);
  v6 = sub_100063D0C(a2);
  v7 = [v5 objectForKey:v6];

  v8 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v9 = sub_100063D0C(a2);
    v12 = 138412803;
    v13 = v9;
    v14 = 2160;
    v15 = 1752392040;
    v16 = 2113;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "getDeviceEncryptionKey address:%@ key:%{private, mask.hash}@", &v12, 0x20u);
  }

  v10 = [v7 length];
  if (v10)
  {
    [v7 getBytes:a3 length:16];
  }

  return v10 != 0;
}

id sub_1000AFA48(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 serialNumber];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_1000AFAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

BOOL sub_1000AFB14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 2112) objectForKey:v5];
  v7 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v10 = 141558787;
    v11 = 1752392040;
    v12 = 2113;
    v13 = v5;
    v14 = 2160;
    v15 = 1752392040;
    v16 = 2113;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "getDeviceEncryptionKey SN:%{private, mask.hash}@ key:%{private, mask.hash}@", &v10, 0x2Au);
  }

  v8 = [v6 length];
  if (v8)
  {
    [v6 getBytes:a3 length:16];
  }

  return v8 != 0;
}

uint64_t sub_1000AFC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_1000AF2D8(*(a1 + 8), v8, &v15);
  v9 = v15;
  if (v15 != v16)
  {
    v10 = 0;
    do
    {
      v11 = *(v9 + 73) | v10;
      v10 = v11 != 0;
      v9 += 112;
    }

    while (v9 != v16);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v12 = *(a1 + 8);
  if ((*v12 & 1) != 0 || [*(v12 + 112) count])
  {
LABEL_7:
    v13 = 1;
  }

  else
  {
    v13 = sub_1000AF3A4(*(a3 + 8), *(a4 + 8)) ^ 1;
  }

  v18 = &v15;
  sub_100018458(&v18);

  return v13;
}

void sub_1000AFD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100018458(&a12);

  _Unwind_Resume(a1);
}

void sub_1000AFD60(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v7 = a2;
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 96);
  v8 = [*(a1 + 176) objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8[8];
    if (v10)
    {
      v11 = v9[9];
      if ([v11 count])
      {
        if (!a3)
        {
          v12 = [v10 lastConnectedLEMAC];
          *buf = sub_1000AF61C(v12);
          sub_10005B93C(a4, buf, buf);
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v14)
        {
          v15 = *v19;
LABEL_8:
          v16 = 0;
          while (1)
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(v13);
            }

            *buf = sub_1000AF61C(*(*(&v18 + 1) + 8 * v16));
            sub_10005B93C(a4, buf, buf);
            if (a3)
            {
              if (a4[2] >= a3)
              {
                break;
              }
            }

            if (v14 == ++v16)
            {
              v14 = [v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
              if (v14)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      else
      {
        v17 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "getDeviceExtraAddresses returning empty", buf, 2u);
        }
      }
    }
  }

  sub_1000088CC(v23);
}

void sub_1000AFF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  sub_1000088CC(va);
  sub_10000CEDC(v19, *(v19 + 8));

  _Unwind_Resume(a1);
}

void sub_1000AFFEC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 24);
  v3 = a1 + 24;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a2)
  {
    v7 = *(v6 + 48);
    *a3 = &off_100AE0A78;
    a3[1] = v7;
    if (v7)
    {
      sub_10000C69C(v7);
    }
  }

  else
  {
LABEL_8:
    *a3 = &off_100AE0A78;
    a3[1] = 0;
  }
}

void sub_1000B006C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    if (*(v6 + 231) < 0)
    {
      sub_100008904(a3, v6[26], v6[27]);
    }

    else
    {
      v7 = *(v6 + 13);
      *(a3 + 16) = v6[28];
      *a3 = v7;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  sub_1000088CC(v8);
}

void sub_1000B0128()
{
  dword_100B5FCB0 = 0;
  v0 = sub_1000B11F4();
  v1 = v0 - qword_100B5FCA8;
  if (v0 - qword_100B5FCA8 < 0x7D0)
  {

    sub_10002195C(sub_1000B0128, 0, (1311 * (2099 - v1)) >> 17, &dword_100B5FCB0);
  }

  else
  {

    sub_1000CC39C(v0);
  }
}

void sub_1000B01B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  if (sub_1000ABC7C(a1, &v17))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Data received for invalid CID %d, ignoring packet", a1);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(v17))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.");
    v15 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_12:
    sub_10080F7A0();
    return;
  }

  if (*(sub_1000B12AC(v17) + 16) == 4)
  {
    v13 = v17;
    v17[21] += a3;
    v14 = *(v13 + 5);
    if (v14)
    {
      v14(a1, a2, a3, a4, a5);
    }

    else
    {
      (*(v13 + 4))(a1, a2, a3, a5, a6);
    }

    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Data received for connection not in OPEN state, ignoring packet");
    v16 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }
  }
}

void sub_1000B034C(void *ptr)
{
  v2 = ptr[1];
  if (v2)
  {
    sub_10000C1E8(v2);
  }

  ptr[1] = 0;

  sub_10000C1E8(ptr);
}

uint64_t sub_1000B0390(int *a1)
{
  v2 = *(sub_1000B12AC(a1) + 128);
  if (*(v2 + 16) == 1)
  {

    return sub_100297860(a1, 0, 0);
  }

  if ((*(v2 + 15) & 1) != 0 || !sub_1000B4E50(*(a1 + 2)) || (v4 = sub_1000B12AC(a1), v5 = sub_10000C248(*(*(v4 + 128) + 176)), v5 >= *(sub_1000B12AC(a1) + 66)))
  {
    v13[1] = a1 + 1;
    v13[0] = 2;
    v7 = *(v2 + 168);
    v6 = (v2 + 168);
    v8 = *(v6 - 78) + 1;
    *(v6 - 78) = v8;
    if (v7)
    {
      v9 = v8;
      result = sub_1000B12AC(a1);
      if (*(result + 54) <= 0x23u)
      {
        result = sub_1000B12AC(a1);
        v10 = *(result + 54) >> 2;
      }

      else
      {
        v10 = 8;
      }

      if (v10 >= v9)
      {
        return result;
      }

      sub_10002242C(*v6);
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = 1;
      v12 = v6;
    }

    return sub_10002195C(sub_1000BC2B4, v13, v11, v12);
  }

  return sub_1000BE1E4(a1, 0);
}

BOOL sub_1000B0514(unsigned __int8 *a1, int a2)
{
  v2 = 0;
  v3 = *(a1 + 9);
  v4 = 1;
  v5 = &xmmword_100B5C832 + 2;
  do
  {
    if (*(v5 + 5) == 1 && a1[8] == *(v5 - 2) && *(v5 - 2) == (*a1 | ((a1[1] & 0xF) << 8)) && v3 >= *v5 && v3 <= v5[1] && *(v5 + 4) == a2)
    {
      break;
    }

    v5 += 5;
    v4 = v2++ < 9;
  }

  while (v2 != 10);
  return v4;
}

void sub_1000B05A4(unsigned __int16 *result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a2 > 3)
    {
      if (!result)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 728, "buf");
      }

      v9 = *result;
      v10 = result[1];
      if (*(a4 + 8))
      {
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = "HCI_ACL";
        if (a3 == 6)
        {
          v11 = "HCI_ACL_TS";
        }

        *__str = 0uLL;
        v16 = 0uLL;
        snprintf(__str, 0x64uLL, "BT Controller %s wakeupCause (handle=0x%04X dataLen=%d)", v11, v9, v10);
        sub_100304AF8("OI_HCIFlow_AclPacketReceived: %s", __str);
        sub_1001C499C(__str);
      }

      v12 = a2 - 4;
      if (v12 == v10)
      {
        sub_1000B07AC(v9, v10, (result + 2), a3, a4);
        v13 = sub_1000B11F4();
        qword_100B5FCA8 = v13;
        if (!dword_100B5FCB0)
        {
          sub_1000C2558();
          v13 = sub_10002195C(sub_1000B0128, 0, 2, &dword_100B5FCB0);
        }

        sub_10000C1F8(v13);
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Potentially malicious packet received (actually %d bytes, but claims it is %d bytes), ignoring packet", v12, v10);
        v14 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100814A68();
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Short ACL packet received (%d bytes), ignoring packet", a2);
      v5 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100814D84();
      }
    }
  }
}

void sub_1000B07AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v5 = dword_100BCE0C0 == 2;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIIfc_AclPacketReceived, HCI not initialized - discarding data");
      v6 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_7:
        sub_100814BF4();
        return;
      }
    }

    return;
  }

  if (!a2)
  {
    return;
  }

  v9 = a4;
  v11 = result;
  v12 = off_100BCE0A8;
  if (off_100BCE0A8)
  {

    v12(a4, result, a2, a3);
    return;
  }

  v13 = result & 0xFFF;
  v14 = (result >> 12) & 3;
  if ((byte_100BCDFEA & 0x40) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  if (v14 - 1 >= 3)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v17 = sub_1000ABB80(result & 0xFFF);
  if (sub_100084230() <= 0x12 && !v17)
  {
    sub_1000D660C();
LABEL_32:
    if (sub_10000C240())
    {
      sub_10000AF54("connection handle %p is invalid, ignoring ACL packet.", 0);
      v28 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100814A68();
      }
    }

    return;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = *(v17 + 2);
  if (v18 == 1)
  {
    sub_1000D660C();
    v18 = *(v17 + 2);
  }

  v19 = v11 >> 12;
  if (v18 != 8)
  {
    if (v18 == 4)
    {
      ++HIWORD(dword_100B5FC98);
      LOWORD(dword_100B5FC98) = v13;
      if (*(v17 + 124) == 6 && (v9 != 6 || *a5 >= *(v17 + 38)))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received ACL data for disconnecting handle %d, discarding packet", v11 & 0xFFF);
          v33 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_100814BF4();
          }
        }
      }

      else
      {
        (*(qword_100BCE0C8 + 8))(v17, v16, v19 & 4, a3, a2, v9 == 6, a5);
      }

      if (*(qword_100BCE0B8 + 9) != 1)
      {
        return;
      }

      v32 = &dword_100B5FC98;
    }

    else
    {
      if (v18)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received ACL data for unknown handle %d, discarding packet", v11 & 0xFFF);
          v30 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100814C74();
          }
        }

        return;
      }

      ++HIWORD(dword_100B5FC92);
      LOWORD(dword_100B5FC92) = v13;
      if (*(v17 + 54) == 6)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received ACL data for disconnecting handle %d, discarding packet", v11 & 0xFFF);
          v27 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100814BF4();
          }
        }
      }

      else
      {
        (*(qword_100BCE0C8 + 8))(v17, v16, v19 & 4, a3, a2, 0, a5);
      }

      if (*(qword_100BCE0B8 + 7) != 1)
      {
        return;
      }

      v32 = &dword_100B5FC92;
    }

    sub_100258588(v32, v20, v21, v22, v23, v24, v25, v26);
    return;
  }

  if (*(v17 + 60) == 6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received Other data for disconnecting handle %d, discarding packet", v11 & 0xFFF);
      v29 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v31 = *(qword_100BCE0C8 + 8);

    v31(v17, v16, v19 & 4, a3, a2, 0, a5);
  }
}

void sub_1000B0C00(unsigned __int16 *a1, int a2, int a3, char *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + 8) == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("HciEvent_AclDataPacketReceived: wakeupCause ACL Packet from BT Controller (handle=0x%04x pbf=%d bf=%d dataLen=%d)\n", *a1, a2, a3, a5);
      v13 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v21 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  if (*(a1 + 2))
  {
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_18:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("SAR, HciEvent_AclDataPacketReceived received zero-length packet, ignoring");
    v17 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_33:
    sub_10080F7A0();
    return;
  }

  if (!*(a1 + 37))
  {
    sub_10023B840(a1);
  }

  *(a1 + 192) = 1;
  if (!a5)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (a3 == 4 && *(a4 + 1) != 2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("SAR, HciEvent_AclDataPacketReceived received APB for wrong CID=%d, ignoring", *(a4 + 1));
    v18 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_33;
  }

  v14 = *(a7 + 8);
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      sub_100295EF0(a1, 0x2Bu, a4, a5, v14);
      return;
    }

    if (a2 != 2)
    {
LABEL_31:
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Invalid packet boundary flag - dropping packet");
      v19 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_33;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (!a3 && *(a1 + 25) == 1)
      {
        v15 = a1;
        v16 = 1;
LABEL_26:
        sub_10029F510(v15, v16, a4, a5, v14, a7);
        return;
      }

      sub_1000C0944(a4, a5, a1, a3, v14, a7);
      return;
    }

    goto LABEL_31;
  }

  if (!a3 && *(a1 + 25) == 1)
  {
    v15 = a1;
    v16 = a2;
    goto LABEL_26;
  }

  sub_1000B0EC4(a4, a5, a1, a3, v14, a7);
}

void sub_1000B0EC4(char *__src, size_t __len, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v10 = __len;
  v12 = *(a3 + 2);
  if (!a4)
  {
    if (*(a3 + 2))
    {
      if (v12 == 8)
      {
        v14 = 64;
      }

      else
      {
        if (v12 != 4)
        {
LABEL_17:
          sub_1000D660C();
          v15 = 0;
          goto LABEL_18;
        }

        v14 = 224;
      }
    }

    else
    {
      v14 = 160;
    }

    v15 = *(a3 + v14);
    if (v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!*(a3 + 2))
  {
    v15 = *(a3 + 168);
    if (!v15)
    {
      if (!sub_1000B8B5C(a3))
      {
        return;
      }

      v16 = sub_1001BBBD8(0x18uLL, 0x10100403708C548uLL);
      *(a3 + 168) = v16;
      if (!v16)
      {
        return;
      }

      v15 = v16;
      v16[6] = *(sub_1003045A0(0x2Fu) + 4);
      *(a3 + 168) = v15;
    }

LABEL_18:
    v17 = v15[6];
    if (v15[7])
    {
      if (sub_10000C240())
      {
        sub_10000AF54("SAR: Rcvd FIRST packet, previous packet incomplete.  Discarding previous packet.");
        v18 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v15[7] = 0;
      *(v15 + 16) = 0;
    }

    if (v10 <= 3)
    {
      memmove(v15 + 4, __src, v10);
      v15[7] += v10;
      return;
    }

    v20 = *__src;
    v19 = __src + 4;
    *(v15 + 2) = v20;
    *(v15 + 16) = a5;
    v21 = v20;
    v22 = (v10 - 4);
    if (v20 < v22)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Packet size of %d exceeds the payload length %d", (v10 - 4), v21);
        v23 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_5;
        }
      }

      return;
    }

    if (v21 > v17)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Recv_FirstPacket, length in L2CAP header %d exceeds buffer size %d", v21, v17);
        v24 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_5;
        }
      }

      return;
    }

    v25 = v15[5];
    v33 = 0;
    v32 = v25;
    if (sub_1000ABC7C(v25, &v33))
    {
      if (v21 == v22)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = *(v33 + 48);
      if (v21 == v22)
      {
        if (v31)
        {
          memmove(*(v33 + 48), v19, (v10 - 4));
          v26 = *(v15 + 16) != 0;
          v27 = a3;
          v28 = v32;
          v29 = v31;
          v30 = (v10 - 4);
          goto LABEL_40;
        }

LABEL_36:
        v26 = *(v15 + 16) != 0;
        v27 = a3;
        v28 = v32;
        v29 = v19;
        v30 = v21;
LABEL_40:
        sub_1000B13B4(v27, v28, v29, v30, v26, a6);
        return;
      }

      if (v31)
      {
LABEL_46:
        memmove(v31, v19, (v10 - 4));
        v15[7] = v10;
        return;
      }
    }

    v31 = *v15;
    if (!*v15)
    {
      if (!a4)
      {
        sub_1000D660C();
      }

      v31 = sub_100007618(v17, 0x5E573636uLL);
      *v15 = v31;
      if (!v31)
      {
        return;
      }
    }

    goto LABEL_46;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Broadcast packet on non-ACL handle 0x%x. Bailing.", a3);
    v13 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1000B11F4()
{
  if (!dword_100B5B42C)
  {
    mach_timebase_info(&dword_100B5B428);
    v0 = dword_100B5B42C;
    v1 = dword_100B5B42C;
    v2 = dword_100B5B428;
    while (v2)
    {
      if (v2 > v1)
      {
        v3 = v2 % v1;
        v2 = v1;
        v1 = v3;
      }

      v4 = v1;
      v1 = v2;
      v5 = v4 == v2;
      v2 = v4;
      if (v5)
      {
        LODWORD(v1) = 1;
        break;
      }
    }

    v6 = dword_100B5B42C / v1;
    dword_100B5B428 /= v1;
    dword_100B5B42C /= v1;
    if ((v0 / v1) >> 1 >= 0x863)
    {
      sub_1000D660C();
      v6 = dword_100B5B42C;
    }

    dword_100B5B42C = 1000000 * v6;
  }

  return mach_absolute_time() * dword_100B5B428 / dword_100B5B42C;
}

uint64_t sub_1000B12AC(int *a1)
{
  v2 = *a1;
  if (*a1 != 2 && v2 != 4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid access: type %d, cid %d, psm %d", *a1, *(a1 + 2), *(a1 + 3));
      v4 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v2 = *a1;
  }

  if (v2 != 2 && v2 != 4)
  {
    sub_1000D660C();
  }

  result = *(a1 + 14);
  if (!result)
  {
    sub_1000D660C();
    return *(a1 + 14);
  }

  return result;
}

BOOL sub_1000B135C(unsigned int a1)
{
  v3 = 0;
  if (!sub_1000ABC7C(a1, &v3) && (*v3 != 4 ? (v2 = *v3 == 2) : (v2 = 1), v2))
  {
    return *(sub_1000B12AC(v3) + 64) == 3;
  }

  else
  {
    return 0;
  }
}

void sub_1000B13B4(unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  if (a5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("UpperLayerRecv: wakeupCause Packet from BT Controller (handle=0x%04x cid=0x%4x, len=%d)\n", *a1, a2, a4);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  word_100B603B8 = a2;
  switch(a2)
  {
    case 2:
      sub_100296308(a1, a3, a4);
      goto LABEL_15;
    case 1:
      sub_1002AD9B8(a1, a3, a4);
LABEL_15:
      word_100B603B8 = 0;
      return;
    case 0:
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", 105, 0);
        v13 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      goto LABEL_15;
  }

  if (a2 <= 0x3F)
  {
    sub_100295EF0(a1, a2, a3, a4, a5);
    goto LABEL_15;
  }

  if (sub_1000ABC7C(a2, &v21))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Data received for invalid CID %d, ignoring packet", a2);
      v14 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_39:
        sub_10080F7A0();
      }
    }
  }

  else if (sub_1000B12AC(v21))
  {
    if (*sub_1000B12AC(v21) == a1)
    {
      if (!*(sub_1000B12AC(v21) + 78) || (v17 = *(a3 + a4 - 2), *buf = a4, *&buf[2] = a2, LOWORD(a4) = a4 - 2, sub_10029C638(buf, 4u, a3, a4, v17)))
      {
        if (sub_1000B135C(a2) || sub_1000E10E0(a2))
        {
          sub_1000B1748(a2, a3, a4, a5, a6);
        }

        else
        {
          sub_100291AF0(a2, a3, a4, a5, a6);
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (a1)
      {
        v15 = *a1;
      }

      else
      {
        v15 = 0xFFFF;
      }

      if (*sub_1000B12AC(v21))
      {
        v18 = **sub_1000B12AC(v21);
      }

      else
      {
        v18 = 0xFFFF;
      }

      if (sub_10000C240())
      {
        v19 = sub_1000B12AC(v21);
        sub_10000AF54("(CID: %#06x) Received ACL handle %#06x (%p) does not match stored handle %#06x (%p), ignoring packet", a2, v15, a1, v18, *v19);
        v20 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("No connection data, ignoring packet", a2);
    v16 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }
  }
}

uint64_t sub_1000B1748(unsigned int a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  if (sub_1000ABC7C(a1, &v12))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unable to get channel from CID=0x%x", a1);
      v10 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 536;
  }

  else
  {
    if (!*(sub_1000B12AC(v12) + 64))
    {
      sub_1000D660C();
    }

    if (*(sub_1000B12AC(v12) + 64) == 3)
    {
      return sub_1000B1864(v12, a2, a3, a4, a5);
    }

    else if (*(sub_1000B12AC(v12) + 64) == 5)
    {
      return sub_10028A468(v12, a2, a3, a4, a5);
    }

    else
    {
      sub_1000D660C();
      return 0;
    }
  }
}

uint64_t sub_1000B1864(uint64_t a1, _BYTE *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || a3 <= 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received bad packet with length %d", a3);
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v16 = sub_1000B12AC(a1);
    sub_1002976B0(*(v16 + 128));
    return 546;
  }

  if (*a2)
  {
    if (a3 != 2 && a3 != 4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Received bad S-Frame packet with length %d", a3);
        v29 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v30 = sub_1000B12AC(a1);
      sub_1002976B0(*(v30 + 128));
      return 547;
    }

    v17 = *a2;
    if (a4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("AP wakeup by SFrame bundleID=com.apple.bluetoothd, dataLen=%d", a3);
        v18 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v177 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    if (!*(*(sub_1000B12AC(a1) + 128) + 3))
    {
      return sub_1000BC844(a1, v17);
    }

    if (*(*(sub_1000B12AC(a1) + 128) + 3) == 1)
    {
      v19 = (v17 >> 2) & 3;
      if (v19 <= 1)
      {
        if (!v19)
        {
          if ((v17 & 0x80) == 0)
          {
            v20 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v21 = (v17 >> 8) & 0x3F;
            if ((v17 & 0x10) == 0)
            {
              if (v20 <= v21 && v21 <= *(*(sub_1000B12AC(a1) + 128) + 4))
              {
                goto LABEL_228;
              }

              v22 = *(*(sub_1000B12AC(a1) + 128) + 6);
              v23 = *(*(sub_1000B12AC(a1) + 128) + 6);
              if (v22 > v21)
              {
                if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v23) & 0x3Fu) < v21)
                {
                  goto LABEL_300;
                }

LABEL_228:
                sub_1000B4F34(a1, v21, 0);
                if (*(*(sub_1000B12AC(a1) + 128) + 15) != 1)
                {
                  goto LABEL_310;
                }

                v114 = sub_1000B12AC(a1);
                if (!sub_10000C248(*(*(v114 + 128) + 176)))
                {
                  goto LABEL_310;
                }

                v115 = sub_1000BBA6C(a1);
                if (!v115)
                {
                  goto LABEL_310;
                }

                v116 = v115;
                if (!sub_10000C240())
                {
                  goto LABEL_310;
                }

                sub_10000AF54("Failed to start retransmission timer %!.", v116);
                v117 = sub_10000C050(0x2Fu);
                if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_310;
                }

                goto LABEL_309;
              }

              if (v21 - v23 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_228;
              }

              goto LABEL_300;
            }

            if (v20 > v21 || v21 > *(*(sub_1000B12AC(a1) + 128) + 4))
            {
              v76 = *(*(sub_1000B12AC(a1) + 128) + 6);
              v77 = *(*(sub_1000B12AC(a1) + 128) + 6);
              if (v76 <= v21)
              {
                if (v21 - v77 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
                {
                  goto LABEL_300;
                }
              }

              else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v77) & 0x3Fu) < v21)
              {
                goto LABEL_300;
              }
            }

            sub_1000B4F34(a1, v21, 0);
            if (*(*(sub_1000B12AC(a1) + 128) + 15) == 1)
            {
              v125 = sub_1000B12AC(a1);
              if (sub_10000C248(*(*(v125 + 128) + 176)))
              {
                v126 = sub_1000BBA6C(a1);
                if (v126)
                {
                  v127 = v126;
                  if (sub_10000C240())
                  {
                    sub_10000AF54("Failed to start retransmission timer %!.", v127);
                    v128 = sub_10000C050(0x2Fu);
                    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000E09C0();
                    }
                  }
                }
              }
            }

            *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
            result = sub_1000BC368(a1, 0, 1);
            if (!result)
            {
              return result;
            }

            v129 = result;
            result = sub_10000C240();
            if (!result)
            {
              return result;
            }

            sub_10000AF54("Failed to send RR(F=1) : %!", v129);
            v130 = sub_10000C050(0x2Fu);
            result = os_log_type_enabled(v130, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

LABEL_355:
            sub_1000E09C0();
            return 0;
          }

          v58 = (v17 >> 8) & 0x3F;
          if (*(*(sub_1000B12AC(a1) + 128) + 6) > v58 || v58 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v59 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v60 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v59 <= v58)
            {
              if (v58 - v60 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_300;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v60) & 0x3Fu) < v58)
            {
              goto LABEL_300;
            }
          }

          if (*(*(sub_1000B12AC(a1) + 128) + 2))
          {
            goto LABEL_300;
          }

          *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
          sub_1000B4F34(a1, (v17 >> 8) & 0x3F, 1);
          if ((*(*(sub_1000B12AC(a1) + 128) + 148) & 1) == 0)
          {
            v91 = sub_1002993EC(a1, (v17 >> 8) & 0x3F, (v17 & 0x10) != 0);
            if (!v91)
            {
              goto LABEL_360;
            }

            v92 = v91;
            if (!sub_10000C240())
            {
              goto LABEL_360;
            }

            sub_10000AF54("Failed to retransmit I-Frames %!.", v92);
            v93 = sub_10000C050(0x2Fu);
            if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_360;
            }

            goto LABEL_359;
          }

LABEL_280:
          v137 = sub_1000B12AC(a1);
          result = 0;
          *(*(v137 + 128) + 148) = 0;
          return result;
        }

        v46 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v47 = (v17 >> 8) & 0x3F;
        if ((v17 & 0x80) == 0)
        {
          if (v46 > v47 || v47 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v48 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v49 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v48 <= v47)
            {
              if (v47 - v49 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_300;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v49) & 0x3Fu) < v47)
            {
              goto LABEL_300;
            }
          }

          if (!*(sub_1000B12AC(a1) + 67) || (v87 = sub_100297AC4(a1, (v17 >> 8) & 0x3F), v87 < *(sub_1000B12AC(a1) + 67)))
          {
            *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
            sub_1000B4F34(a1, (v17 >> 8) & 0x3F, 0);
            v88 = sub_1002993EC(a1, (v17 >> 8) & 0x3F, (v17 & 0x10) != 0);
            if (v88)
            {
              v89 = v88;
              if (sub_10000C240())
              {
                sub_10000AF54("Failed to retransmit I-Frames %!.", v89);
                v90 = sub_10000C050(0x2Fu);
                if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                {
LABEL_247:
                  sub_1000E09C0();
                }
              }
            }

LABEL_248:
            sub_1000BE1E4(a1, 0);
            if (!*(*(sub_1000B12AC(a1) + 128) + 2))
            {
              v124 = sub_1000B12AC(a1);
              result = 0;
              *(*(v124 + 128) + 148) = 1;
              return result;
            }

            return 0;
          }

LABEL_300:
          v145 = sub_1000B12AC(a1);
          sub_1002976B0(*(v145 + 128));
          if (!sub_10000C240())
          {
            return sub_10029104C(*(a1 + 4), 436);
          }

          sub_10000AF54("Invalid S-Frame header while in REJ");
          v146 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
          {
            return sub_10029104C(*(a1 + 4), 436);
          }

          goto LABEL_344;
        }

        if (v46 > v47 || v47 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v67 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v68 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v67 <= v47)
          {
            if (v47 - v68 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
              goto LABEL_300;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v68) & 0x3Fu) < v47)
          {
            goto LABEL_300;
          }
        }

        if (*(sub_1000B12AC(a1) + 67))
        {
          v96 = sub_100297AC4(a1, (v17 >> 8) & 0x3F);
          if (v96 >= *(sub_1000B12AC(a1) + 67))
          {
            goto LABEL_300;
          }
        }

        if (*(*(sub_1000B12AC(a1) + 128) + 2))
        {
          goto LABEL_300;
        }

        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B4F34(a1, (v17 >> 8) & 0x3F, 1);
        if (*(*(sub_1000B12AC(a1) + 128) + 148))
        {
          goto LABEL_280;
        }

        v97 = sub_1002993EC(a1, (v17 >> 8) & 0x3F, (v17 & 0x10) != 0);
        if (!v97)
        {
          goto LABEL_360;
        }

        v98 = v97;
        if (!sub_10000C240())
        {
          goto LABEL_360;
        }

        sub_10000AF54("Failed to retransmit I-Frames %!.", v98);
        v99 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_360;
        }

LABEL_359:
        sub_1000E09C0();
LABEL_360:
        sub_1000BE1E4(a1, 0);
        return 0;
      }

      if (v19 == 2)
      {
        v40 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v41 = (v17 >> 8) & 0x3F;
        if ((v17 & 0x10) != 0)
        {
          if (v40 > v41 || v41 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v65 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v66 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v65 <= v41)
            {
              if (v41 - v66 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_300;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v66) & 0x3Fu) < v41)
            {
              goto LABEL_300;
            }
          }

          if (((v17 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2))
          {
            *(*(sub_1000B12AC(a1) + 128) + 15) = 1;
            sub_1000B4F34(a1, (v17 >> 8) & 0x3F, (v17 >> 7) & 1);
            result = sub_1000BC368(a1, 0, 1);
            if (!result)
            {
              return result;
            }

            v94 = result;
            result = sub_10000C240();
            if (!result)
            {
              return result;
            }

            sub_10000AF54("Failed to send RR(F=1) : %!", v94);
            v95 = sub_10000C050(0x2Fu);
            result = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            goto LABEL_355;
          }
        }

        else
        {
          if (v40 > v41 || v41 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v42 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v43 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v42 <= v41)
            {
              if (v41 - v43 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_300;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v43) & 0x3Fu) < v41)
            {
              goto LABEL_300;
            }
          }

          if (((v17 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2))
          {
            *(*(sub_1000B12AC(a1) + 128) + 15) = 1;
            sub_1000B4F34(a1, (v17 >> 8) & 0x3F, (v17 >> 7) & 1);
            result = sub_1000BC368(a1, 0, 0);
            if (!result)
            {
              return result;
            }

            v85 = result;
            result = sub_10000C240();
            if (!result)
            {
              return result;
            }

            sub_10000AF54("Failed to send RR(F=1) : %!", v85);
            v86 = sub_10000C050(0x2Fu);
            result = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            goto LABEL_355;
          }
        }

        goto LABEL_300;
      }

      if (v17 & 0x10 | (v17 >> 7) & 1)
      {
        v54 = (v17 >> 7) & 1;
        if ((v17 & 0x10) == 0 && v54)
        {
          v55 = (v17 >> 8) & 0x3F;
          if (*(*(sub_1000B12AC(a1) + 128) + 6) > v55 || v55 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v56 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v57 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v56 <= v55)
            {
              if (v55 - v57 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_300;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v57) & 0x3Fu) < v55)
            {
              goto LABEL_300;
            }
          }

          if (!*(sub_1000B12AC(a1) + 67) || (v112 = sub_100297AC4(a1, v55), v112 < *(sub_1000B12AC(a1) + 67)))
          {
            if (!*(*(sub_1000B12AC(a1) + 128) + 2))
            {
              *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
              sub_1002997C8(a1, 1);
              if (*(*(sub_1000B12AC(a1) + 128) + 149) == 1 && v55 == *(*(sub_1000B12AC(a1) + 128) + 150))
              {
                v113 = sub_1000B12AC(a1);
                result = 0;
                *(*(v113 + 128) + 149) = 0;
                return result;
              }

              result = sub_1002998A0(a1, v55, 0);
              if (!result)
              {
                return result;
              }

              v163 = result;
              result = sub_10000C240();
              if (!result)
              {
                return result;
              }

              sub_10000AF54("Failed to retransmit requested I-Frames %!.", v163);
              v164 = sub_10000C050(0x2Fu);
              result = os_log_type_enabled(v164, OS_LOG_TYPE_ERROR);
              if (!result)
              {
                return result;
              }

              goto LABEL_355;
            }
          }

          goto LABEL_300;
        }

        if ((v17 & 0x10) == 0)
        {
          goto LABEL_300;
        }

        v69 = (v17 >> 8) & 0x3F;
        if (*(*(sub_1000B12AC(a1) + 128) + 6) > v69 || v69 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v74 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v75 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v74 <= v69)
          {
            if (v69 - v75 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
              goto LABEL_300;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v75) & 0x3Fu) < v69)
          {
            goto LABEL_300;
          }
        }

        if (*(sub_1000B12AC(a1) + 67))
        {
          v144 = sub_100297AC4(a1, v69);
          if (v144 >= *(sub_1000B12AC(a1) + 67))
          {
            goto LABEL_300;
          }
        }

        if (v54 && *(*(sub_1000B12AC(a1) + 128) + 2))
        {
          goto LABEL_300;
        }

        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B4F34(a1, v69, v54);
        v157 = sub_1002998A0(a1, v69, 1);
        if (v157)
        {
          v158 = v157;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to retransmit requested I-Frames %!.", v158);
            v159 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        sub_1000BE1E4(a1, 0);
        goto LABEL_327;
      }

      v69 = (v17 >> 8) & 0x3F;
      if (*(*(sub_1000B12AC(a1) + 128) + 6) > v69 || v69 > *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        v72 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v73 = *(*(sub_1000B12AC(a1) + 128) + 6);
        if (v72 <= v69)
        {
          if (v69 - v73 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
          {
            goto LABEL_300;
          }
        }

        else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v73) & 0x3Fu) < v69)
        {
          goto LABEL_300;
        }
      }

      if (*(sub_1000B12AC(a1) + 67))
      {
        v106 = sub_100297AC4(a1, v69);
        if (v106 >= *(sub_1000B12AC(a1) + 67))
        {
          goto LABEL_300;
        }
      }

      *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
      sub_1000B12AC(a1);
      v107 = sub_1002998A0(a1, v69, 0);
      if (!v107 || (v108 = v107, !sub_10000C240()) || (sub_10000AF54("Failed to retransmit requested I-Frames %!.", v108), v109 = sub_10000C050(0x2Fu), !os_log_type_enabled(v109, OS_LOG_TYPE_ERROR)))
      {
LABEL_327:
        if (*(*(sub_1000B12AC(a1) + 128) + 2))
        {
          return 0;
        }

        *(*(sub_1000B12AC(a1) + 128) + 149) = 1;
        v160 = v69 == 0;
LABEL_329:
        v161 = !v160;
        v162 = sub_1000B12AC(a1);
        result = 0;
        *(*(v162 + 128) + 150) = v161;
        return result;
      }

LABEL_214:
      sub_1000E09C0();
      goto LABEL_327;
    }

    if (*(*(sub_1000B12AC(a1) + 128) + 3) != 2)
    {
      goto LABEL_79;
    }

    v31 = (v17 >> 2) & 3;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v50 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v51 = (v17 >> 8) & 0x3F;
        if ((v17 & 0x10) != 0)
        {
          if (v50 > v51 || v51 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v81 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v82 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v81 <= v51)
            {
              if (v51 - v82 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_342;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v82) & 0x3Fu) < v51)
            {
              goto LABEL_342;
            }
          }

          if (((v17 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2))
          {
            *(*(sub_1000B12AC(a1) + 128) + 15) = 1;
            sub_1000B4F34(a1, (v17 >> 8) & 0x3F, (v17 >> 7) & 1);
            result = sub_100299A2C(a1);
            if (!result)
            {
              return result;
            }

            v134 = result;
            result = sub_10000C240();
            if (!result)
            {
              return result;
            }

            sub_10000AF54("Failed to send SREJ's tail %!", v134);
            v135 = sub_10000C050(0x2Fu);
            result = os_log_type_enabled(v135, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            goto LABEL_355;
          }
        }

        else
        {
          if (v50 > v51 || v51 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v52 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v53 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v52 <= v51)
            {
              if (v51 - v53 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_342;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v53) & 0x3Fu) < v51)
            {
              goto LABEL_342;
            }
          }

          if (((v17 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2))
          {
            *(*(sub_1000B12AC(a1) + 128) + 15) = 1;
            sub_1000B4F34(a1, (v17 >> 8) & 0x3F, (v17 >> 7) & 1);
            result = sub_1000BC368(a1, 0, 0);
            if (!result)
            {
              return result;
            }

            v118 = result;
            result = sub_10000C240();
            if (!result)
            {
              return result;
            }

            sub_10000AF54("Failed to send RR(F=1) : %!", v118);
            v119 = sub_10000C050(0x2Fu);
            result = os_log_type_enabled(v119, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            goto LABEL_355;
          }
        }
      }

      else if ((v17 & 0x90) == 0x80)
      {
        v100 = (v17 >> 8) & 0x3F;
        if (*(*(sub_1000B12AC(a1) + 128) + 6) > v100 || v100 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v101 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v102 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v101 <= v100)
          {
            if (v100 - v102 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
              goto LABEL_342;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v102) & 0x3Fu) < v100)
          {
            goto LABEL_342;
          }
        }

        if (!*(sub_1000B12AC(a1) + 67) || (v142 = sub_100297AC4(a1, v100), v142 < *(sub_1000B12AC(a1) + 67)))
        {
          if (!*(*(sub_1000B12AC(a1) + 128) + 2))
          {
            *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
            sub_1002997C8(a1, 1);
            if (*(*(sub_1000B12AC(a1) + 128) + 149) == 1 && v100 == *(*(sub_1000B12AC(a1) + 128) + 150))
            {
              v143 = sub_1000B12AC(a1);
              result = 0;
              *(*(v143 + 128) + 149) = 1;
              return result;
            }

            result = sub_1002998A0(a1, v100, 0);
            if (!result)
            {
              return result;
            }

            v171 = result;
            result = sub_10000C240();
            if (!result)
            {
              return result;
            }

            sub_10000AF54("Failed to retransmit requested I-Frames %!.", v171);
            v172 = sub_10000C050(0x2Fu);
            result = os_log_type_enabled(v172, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            goto LABEL_355;
          }
        }
      }

      else if ((v17 & 0x90) != 0)
      {
        if ((v17 & 0x10) != 0)
        {
          v103 = (v17 >> 8) & 0x3F;
          if (*(*(sub_1000B12AC(a1) + 128) + 6) > v103 || v103 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v104 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v105 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v104 <= v103)
            {
              if (v103 - v105 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_342;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v105) & 0x3Fu) < v103)
            {
              goto LABEL_342;
            }
          }

          if (!*(sub_1000B12AC(a1) + 67) || (v165 = sub_100297AC4(a1, (v17 >> 8) & 0x3F), v165 < *(sub_1000B12AC(a1) + 67)))
          {
            if (((v17 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2))
            {
              *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
              sub_1000B4F34(a1, (v17 >> 8) & 0x3F, (v17 >> 7) & 1);
              v168 = sub_1002998A0(a1, (v17 >> 8) & 0x3F, 1);
              if (v168)
              {
                v169 = v168;
                if (sub_10000C240())
                {
                  sub_10000AF54("Failed to retransmit requested I-Frames %!.", v169);
                  v170 = sub_10000C050(0x2Fu);
                  if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }
              }

              sub_1000BE1E4(a1, 0);
              if (*(*(sub_1000B12AC(a1) + 128) + 2))
              {
                return 0;
              }

              *(*(sub_1000B12AC(a1) + 128) + 149) = 1;
              v160 = v103 == 0;
              goto LABEL_329;
            }
          }
        }
      }

      else
      {
        v69 = (v17 >> 8) & 0x3F;
        if (*(*(sub_1000B12AC(a1) + 128) + 6) > v69 || v69 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v70 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v71 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v70 <= v69)
          {
            if (v69 - v71 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
              goto LABEL_342;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v71) & 0x3Fu) < v69)
          {
            goto LABEL_342;
          }
        }

        if (!*(sub_1000B12AC(a1) + 67) || (v138 = sub_100297AC4(a1, v69), v138 < *(sub_1000B12AC(a1) + 67)))
        {
          *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
          sub_1000B12AC(a1);
          v139 = sub_1002998A0(a1, v69, 0);
          if (!v139)
          {
            goto LABEL_327;
          }

          v140 = v139;
          if (!sub_10000C240())
          {
            goto LABEL_327;
          }

          sub_10000AF54("Failed to retransmit requested I-Frames %!.", v140);
          v141 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_327;
          }

          goto LABEL_214;
        }
      }
    }

    else if (v31)
    {
      v61 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v62 = (v17 >> 8) & 0x3F;
      if ((v17 & 0x80) != 0)
      {
        if (v61 > v62 || v62 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v83 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v84 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v83 <= v62)
          {
            if (v62 - v84 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
              goto LABEL_342;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v84) & 0x3Fu) < v62)
          {
            goto LABEL_342;
          }
        }

        if (!*(sub_1000B12AC(a1) + 67) || (v136 = sub_100297AC4(a1, (v17 >> 8) & 0x3F), v136 < *(sub_1000B12AC(a1) + 67)))
        {
          if (!*(*(sub_1000B12AC(a1) + 128) + 2))
          {
            *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
            sub_1000B4F34(a1, (v17 >> 8) & 0x3F, 1);
            if (*(*(sub_1000B12AC(a1) + 128) + 148))
            {
              goto LABEL_280;
            }

            v173 = sub_1002993EC(a1, (v17 >> 8) & 0x3F, (v17 & 0x10) != 0);
            if (!v173)
            {
              goto LABEL_360;
            }

            v174 = v173;
            if (!sub_10000C240())
            {
              goto LABEL_360;
            }

            sub_10000AF54("Failed to retransmit I-Frames %!.", v174);
            v175 = sub_10000C050(0x2Fu);
            if (!os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_360;
            }

            goto LABEL_359;
          }
        }
      }

      else
      {
        if (v61 > v62 || v62 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v63 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v64 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v63 <= v62)
          {
            if (v62 - v64 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
              goto LABEL_342;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v64) & 0x3Fu) < v62)
          {
            goto LABEL_342;
          }
        }

        if (!*(sub_1000B12AC(a1) + 67) || (v120 = sub_100297AC4(a1, (v17 >> 8) & 0x3F), v120 < *(sub_1000B12AC(a1) + 67)))
        {
          *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
          sub_1000B4F34(a1, (v17 >> 8) & 0x3F, 0);
          v121 = sub_1002993EC(a1, (v17 >> 8) & 0x3F, (v17 & 0x10) != 0);
          if (v121)
          {
            v122 = v121;
            if (sub_10000C240())
            {
              sub_10000AF54("Failed to retransmit I-Frames %!.", v122);
              v123 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_247;
              }
            }
          }

          goto LABEL_248;
        }
      }
    }

    else if ((v17 & 0x80) != 0)
    {
      v78 = (v17 >> 8) & 0x3F;
      if (*(*(sub_1000B12AC(a1) + 128) + 6) > v78 || v78 > *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        v79 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v80 = *(*(sub_1000B12AC(a1) + 128) + 6);
        if (v79 <= v78)
        {
          if (v78 - v80 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
          {
            goto LABEL_342;
          }
        }

        else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v80) & 0x3Fu) < v78)
        {
          goto LABEL_342;
        }
      }

      if (!*(*(sub_1000B12AC(a1) + 128) + 2))
      {
        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B4F34(a1, (v17 >> 8) & 0x3F, 1);
        if (*(*(sub_1000B12AC(a1) + 128) + 148))
        {
          goto LABEL_280;
        }

        v131 = sub_1002993EC(a1, (v17 >> 8) & 0x3F, (v17 & 0x10) != 0);
        if (!v131)
        {
          goto LABEL_360;
        }

        v132 = v131;
        if (!sub_10000C240())
        {
          goto LABEL_360;
        }

        sub_10000AF54("Failed to retransmit I-Frames %!.", v132);
        v133 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_360;
        }

        goto LABEL_359;
      }
    }

    else
    {
      v32 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v33 = (v17 >> 8) & 0x3F;
      if ((v17 & 0x10) != 0)
      {
        if (v32 > v33 || v33 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v110 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v111 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v110 <= v33)
          {
            if (v33 - v111 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
              goto LABEL_342;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v111) & 0x3Fu) < v33)
          {
            goto LABEL_342;
          }
        }

        sub_1000B4F34(a1, v33, 0);
        if (*(*(sub_1000B12AC(a1) + 128) + 15) == 1)
        {
          v151 = sub_1000B12AC(a1);
          if (sub_10000C248(*(*(v151 + 128) + 176)))
          {
            v152 = sub_1000BBA6C(a1);
            if (v152)
            {
              v153 = v152;
              if (sub_10000C240())
              {
                sub_10000AF54("Failed to start retransmission timer %!.", v153);
                v154 = sub_10000C050(0x2Fu);
                if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }
            }
          }
        }

        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        result = sub_100299A2C(a1);
        if (!result)
        {
          return result;
        }

        v155 = result;
        result = sub_10000C240();
        if (!result)
        {
          return result;
        }

        sub_10000AF54("Failed to send SREJ's tail %!", v155);
        v156 = sub_10000C050(0x2Fu);
        result = os_log_type_enabled(v156, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        goto LABEL_355;
      }

      if (v32 <= v33 && v33 <= *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        goto LABEL_304;
      }

      v34 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v35 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v34 > v33)
      {
        if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v35) & 0x3Fu) < v33)
        {
          goto LABEL_342;
        }

LABEL_304:
        sub_1000B4F34(a1, v33, 0);
        if (*(*(sub_1000B12AC(a1) + 128) + 15) != 1)
        {
          goto LABEL_310;
        }

        v147 = sub_1000B12AC(a1);
        if (!sub_10000C248(*(*(v147 + 128) + 176)))
        {
          goto LABEL_310;
        }

        v148 = sub_1000BBA6C(a1);
        if (!v148)
        {
          goto LABEL_310;
        }

        v149 = v148;
        if (!sub_10000C240())
        {
          goto LABEL_310;
        }

        sub_10000AF54("Failed to start retransmission timer %!.", v149);
        v150 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_310;
        }

LABEL_309:
        sub_1000E09C0();
LABEL_310:
        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B0390(a1);
        return 0;
      }

      if (v33 - v35 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_304;
      }
    }

LABEL_342:
    v166 = sub_1000B12AC(a1);
    sub_1002976B0(*(v166 + 128));
    if (!sub_10000C240())
    {
      return sub_10029104C(*(a1 + 4), 436);
    }

    sub_10000AF54("Invalid S-Frame header while in SREJ");
    v167 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
    {
      return sub_10029104C(*(a1 + 4), 436);
    }

LABEL_344:
    sub_10080F604();
    return sub_10029104C(*(a1 + 4), 436);
  }

  v10 = sub_1000B12AC(a1);
  v11 = 4;
  if (!*(v10 + 78))
  {
    v11 = 2;
  }

  if (v11 > a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received bad I-Frame packet with length %d", a3);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = sub_1000B12AC(a1);
    sub_1002976B0(*(v13 + 128));
    return 548;
  }

  v24 = *a2;
  v25 = sub_100007618(0x18uLL, 0x1010040221C9B19uLL);
  if (!v25)
  {
    if (!sub_10000C240())
    {
      return 549;
    }

    sub_10000AF54("Could not allocate enough memory for incoming frame.");
    v36 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 549;
    }

LABEL_63:
    sub_1000E09C0();
    return 549;
  }

  v26 = v25;
  *v25 = *(a1 + 4);
  v25[1] = (v24 >> 1) & 0x3F;
  *(v25 + 4) = v24 >> 14;
  if (v24 >> 14 == 1)
  {
    v27 = a2[2] | (a2[4] << 8);
    v28 = -4;
  }

  else
  {
    v27 = 0;
    v28 = -2;
  }

  v37 = v28 + a3;
  v25[3] = v27;
  v25[8] = v37;
  v38 = sub_100007618(v37, 0xCF0724F6uLL);
  *(v26 + 8) = v38;
  if (!v38)
  {
    sub_10000C1E8(v26);
    if (!sub_10000C240())
    {
      return 549;
    }

    sub_10000AF54("Could not allocate enough memory for incoming frame.");
    v39 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      return 549;
    }

    goto LABEL_63;
  }

  memmove(v38, &a2[a3 - *(v26 + 16)], *(v26 + 16));
  if (*(*(sub_1000B12AC(a1) + 128) + 3))
  {
    if (*(*(sub_1000B12AC(a1) + 128) + 3) == 1)
    {

      return sub_100297B70(a1, v24, v26, a4, a5);
    }

    if (*(*(sub_1000B12AC(a1) + 128) + 3) == 2)
    {

      return sub_10029809C(a1, v24, v26, a4, a5);
    }

LABEL_79:
    v44 = sub_1000B12AC(a1);
    sub_1002976B0(*(v44 + 128));
    v45 = sub_1000B12AC(a1);
    sub_1002976B0(*(v45 + 128));
    return 550;
  }

  return sub_1000B3B18(a1, v24, v26, a4, a5);
}

uint64_t sub_1000B3B18(int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2 >> 7;
  v11 = *(*(sub_1000B12AC(a1) + 128) + 8);
  v12 = (a2 >> 1) & 0x3F;
  if ((v10 & 1) == 0)
  {
    if (v11 != v12)
    {
      goto LABEL_21;
    }

    v13 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v13 || v13 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v14 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v15 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v14 <= v13)
      {
        if (v13 - v15 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_21;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v15) & 0x3Fu) < v13)
      {
        goto LABEL_21;
      }
    }

    if (*(*(sub_1000B12AC(a1) + 128) + 16))
    {
      goto LABEL_21;
    }

    v19 = (*(*(sub_1000B12AC(a1) + 128) + 8) + 1) & 0x3F;
    *(*(sub_1000B12AC(a1) + 128) + 8) = v19;
    sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 0);
    sub_1000B4B20(a1, a3, a4, a5);
LABEL_17:
    sub_1000B0390(a1);
    return 0;
  }

  if (v11 != v12)
  {
    goto LABEL_21;
  }

  v16 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v16 || v16 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v17 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v18 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v17 <= v16)
    {
      if (v16 - v18 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_21;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v18) & 0x3Fu) < v16)
    {
      goto LABEL_21;
    }
  }

  if (!*(*(sub_1000B12AC(a1) + 128) + 2) && (*(*(sub_1000B12AC(a1) + 128) + 16) & 1) == 0)
  {
    v76 = (*(*(sub_1000B12AC(a1) + 128) + 8) + 1) & 0x3F;
    *(*(sub_1000B12AC(a1) + 128) + 8) = v76;
    sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 1);
    sub_1000B4B20(a1, a3, a4, a5);
    if (*(*(sub_1000B12AC(a1) + 128) + 148))
    {
      *(*(sub_1000B12AC(a1) + 128) + 148) = 0;
    }

    else
    {
      v77 = sub_1002993EC(a1, (a2 >> 8) & 0x3F, 0);
      if (v77)
      {
        v78 = v77;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to retransmit I-Frames %!.", v78);
          v79 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      sub_1000BE1E4(a1, 0);
    }

    goto LABEL_17;
  }

LABEL_21:
  v20 = (a2 >> 7) & 1;
  v21 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v22 = *(sub_1000B12AC(a1) + 54) + v21;
  v23 = *(*(sub_1000B12AC(a1) + 128) + 10);
  if (v22 > 0x3F)
  {
    if (v12 < v23)
    {
      v25 = *(*(sub_1000B12AC(a1) + 128) + 10);
      if (((*(sub_1000B12AC(a1) + 54) + v25) & 0x3Fu) <= v12)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (v23 > v12)
    {
      goto LABEL_41;
    }

    v24 = *(*(sub_1000B12AC(a1) + 128) + 10);
    if (*(sub_1000B12AC(a1) + 54) + v24 < v12)
    {
      goto LABEL_41;
    }
  }

  v26 = *(*(sub_1000B12AC(a1) + 128) + 8);
  v27 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v28 = *(*(sub_1000B12AC(a1) + 128) + 10);
  if (v26 >= v27)
  {
    if (v28 > v12)
    {
      goto LABEL_41;
    }

LABEL_31:
    if (v12 >= *(*(sub_1000B12AC(a1) + 128) + 8))
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  if (v28 > v12)
  {
    goto LABEL_31;
  }

LABEL_32:
  v29 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v29 || v29 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v30 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v31 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v30 <= v29)
    {
      if (v29 - v31 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_41;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v31) & 0x3Fu) < v29)
    {
      goto LABEL_41;
    }
  }

  if ((!v20 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && (*(*(sub_1000B12AC(a1) + 128) + 16) & 1) == 0)
  {
    v64 = sub_1000B12AC(a1);
    sub_1002976B0(*(v64 + 128));
    v55 = a1;
    v56 = (a2 >> 8) & 0x3F;
LABEL_96:
    sub_1000B4F34(v55, v56, v20);
    return 0;
  }

LABEL_41:
  v32 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v33 = *(sub_1000B12AC(a1) + 54) + v32;
  v34 = *(*(sub_1000B12AC(a1) + 128) + 10);
  if (v33 > 0x3F)
  {
    if (v12 < v34)
    {
      v36 = *(*(sub_1000B12AC(a1) + 128) + 10);
      if (((*(sub_1000B12AC(a1) + 54) + v36) & 0x3Fu) <= v12)
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    if (v34 > v12)
    {
      goto LABEL_61;
    }

    v35 = *(*(sub_1000B12AC(a1) + 128) + 10);
    if (*(sub_1000B12AC(a1) + 54) + v35 < v12)
    {
      goto LABEL_61;
    }
  }

  v37 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v38 = *(sub_1000B12AC(a1) + 54) + v37;
  v39 = *(*(sub_1000B12AC(a1) + 128) + 8);
  if (v38 > 0x3F)
  {
    if (v12 <= v39)
    {
      v40 = *(*(sub_1000B12AC(a1) + 128) + 8);
      if (v40 + *(sub_1000B12AC(a1) + 54) - 64 <= v12)
      {
        goto LABEL_61;
      }
    }
  }

  else if (v12 <= v39)
  {
    goto LABEL_61;
  }

  v41 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v41 || v41 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v42 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v43 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v42 <= v41)
    {
      if (v41 - v43 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_61;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v43) & 0x3Fu) < v41)
    {
      goto LABEL_61;
    }
  }

  if (v20 && *(*(sub_1000B12AC(a1) + 128) + 2) || (*(*(sub_1000B12AC(a1) + 128) + 16) & 1) != 0)
  {
LABEL_61:
    if (*(*(sub_1000B12AC(a1) + 128) + 8) == v12)
    {
      v44 = (a2 >> 8) & 0x3F;
      if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v44 && v44 <= *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        goto LABEL_87;
      }

      v45 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v46 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v45 <= v44)
      {
        if (v44 - v46 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_87;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v46) & 0x3Fu) >= v44)
      {
LABEL_87:
        if ((!v20 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && *(*(sub_1000B12AC(a1) + 128) + 16) == 1)
        {
          sub_1000B4F34(a1, v44, v20);
          sub_100299D40(a1, a3);
          v59 = (*(*(sub_1000B12AC(a1) + 128) + 8) + 1) & 0x3F;
          v60 = sub_1000B12AC(a1);
          result = 0;
          *(*(v60 + 128) + 8) = v59;
          return result;
        }
      }
    }

    else
    {
      v44 = (a2 >> 8) & 0x3F;
    }

    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v44 || v44 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v47 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v48 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v47 <= v44)
      {
        if (v44 - v48 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
LABEL_85:
          v57 = sub_1000B12AC(a1);
          sub_1002976B0(*(v57 + 128));
          return 543;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v48) & 0x3Fu) < v44)
      {
        goto LABEL_85;
      }
    }

    v49 = *(*(sub_1000B12AC(a1) + 128) + 10);
    v50 = *(sub_1000B12AC(a1) + 54) + v49;
    v51 = *(*(sub_1000B12AC(a1) + 128) + 10);
    if (v50 > 0x3F)
    {
      if (v12 < v51)
      {
        v53 = *(*(sub_1000B12AC(a1) + 128) + 10);
        if (((*(sub_1000B12AC(a1) + 54) + v53) & 0x3Fu) <= v12)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      if (v51 > v12)
      {
        goto LABEL_85;
      }

      v52 = *(*(sub_1000B12AC(a1) + 128) + 10);
      if (*(sub_1000B12AC(a1) + 54) + v52 < v12)
      {
        goto LABEL_85;
      }
    }

    if (*(*(sub_1000B12AC(a1) + 128) + 8) == v12 || v20 && *(*(sub_1000B12AC(a1) + 128) + 2) || *(*(sub_1000B12AC(a1) + 128) + 16) != 1)
    {
      goto LABEL_85;
    }

    v54 = sub_1000B12AC(a1);
    sub_1002976B0(*(v54 + 128));
    v55 = a1;
    v56 = v44;
    goto LABEL_96;
  }

  v61 = sub_1000B12AC(a1);
  sub_1002976B0(*(v61 + 128));
  if (v12 >= *(*(sub_1000B12AC(a1) + 128) + 8))
  {
    v63 = v12 - *(*(sub_1000B12AC(a1) + 128) + 8);
  }

  else
  {
    v62 = sub_1000B12AC(a1);
    if ((*(*(v62 + 128) + 8) - (v12 | 0x40)) >= 0)
    {
      v63 = -((*(*(v62 + 128) + 8) - (v12 | 0x40)) & 0x3F);
    }

    else
    {
      v63 = ((v12 | 0x40) - *(*(v62 + 128) + 8)) & 0x3F;
    }
  }

  sub_1000B4F34(a1, v41, v20);
  if (v63 > 2)
  {
    v72 = sub_100299F14(a1);
    if (v72)
    {
      v73 = v72;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to send a REJ %!", v73);
        v74 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    v75 = sub_1000B12AC(a1);
    result = 0;
    v70 = *(v75 + 128);
    v71 = 1;
  }

  else
  {
    *(*(sub_1000B12AC(a1) + 128) + 144) = 0;
    *(*(sub_1000B12AC(a1) + 128) + 151) = 0;
    v65 = *(*(sub_1000B12AC(a1) + 128) + 10);
    *(*(sub_1000B12AC(a1) + 128) + 152) = v65;
    sub_100299D40(a1, a3);
    v66 = sub_100299DEC(a1, v12);
    if (v66)
    {
      v67 = v66;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to send SREJ : %!", v67);
        v68 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    v69 = sub_1000B12AC(a1);
    result = 0;
    v70 = *(v69 + 128);
    v71 = 2;
  }

  *(v70 + 3) = v71;
  return result;
}

uint64_t sub_1000B46E0(int *a1, unsigned int a2)
{
  v4 = *(sub_1000B12AC(a1) + 128);
  v5 = sub_1000B47B8(*(v4 + 176));
  ptr = v5;
  if (v5)
  {
    do
    {
      while (1)
      {
        v6 = sub_1000BC720(v5);
        v7 = *(v4 + 6);
        v8 = *(v6 + 38);
        if (v7 <= v8 && v8 < a2)
        {
          break;
        }

        v10 = v7 > v8 && v8 >= a2;
        v11 = !v10;
        if (v7 > a2 && v11)
        {
          break;
        }

        sub_1000BC828(&ptr);
        v5 = ptr;
        if (!ptr)
        {
          goto LABEL_21;
        }
      }

      sub_1000BC728(v6);
      v14 = ptr;
      sub_1000BC828(&v14);
      sub_1000BC77C(*(v4 + 176), ptr, 1);
      v5 = v14;
      ptr = v14;
    }

    while (v14);
  }

LABEL_21:
  *(v4 + 6) = a2;
  result = sub_10000C248(*(v4 + 176));
  if (!result)
  {
    return sub_1000B47C0(a1);
  }

  return result;
}

uint64_t sub_1000B47C0(int *a1)
{
  result = sub_1000B12AC(a1);
  if (*(*(result + 128) + 160))
  {
    v3 = sub_1000B12AC(a1);
    sub_10002242C(*(*(v3 + 128) + 160));
    result = sub_1000B12AC(a1);
    *(*(result + 128) + 160) = 0;
  }

  return result;
}

void sub_1000B4814(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v10 = qword_100B540E8;

  sub_1000B4898(v10, a1, a2, v7, a4, a5);
}

void sub_1000B4898(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v11 = *(a1 + 192);
  v12 = *(a1 + 200);
  if (v11 != v12)
  {
    while (*v11 != a2)
    {
      if (++v11 == v12)
      {
        goto LABEL_9;
      }
    }
  }

  if (v11 != v12)
  {
    v13 = qword_100BCE928;
    v14 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Queueing initial data on pipe 0x%04x as the scalable pipe hasn't finished registration", buf, 8u);
    }

    sub_100007EE8(v14, v15);
    operator new();
  }

LABEL_9:
  v16 = sub_1000B4EFC(a1, a2);
  sub_1000B5050(v16, a2, a3, a4, v7, 1, v6);
  if (v6)
  {
    v19 = sub_100007EE8(v17, v18);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10036E338;
    v20[3] = &unk_100AE0900;
    v21 = a2;
    v22 = a4;
    sub_10000CA94(v19, v20);
  }
}

void sub_1000B4B20(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*(sub_1000B12AC(a1) + 128) + 10) + 1) & 0x3F;
  *(*(sub_1000B12AC(a1) + 128) + 10) = v8;
  sub_1000B47C0(a1);
  sub_1000B4BB0(a1);

  sub_1000B4C04(a1, a2, a3, a4);
}

uint64_t sub_1000B4BB0(int *a1)
{
  result = sub_1000B12AC(a1);
  if (*(*(result + 128) + 164))
  {
    v3 = sub_1000B12AC(a1);
    sub_10002242C(*(*(v3 + 128) + 164));
    result = sub_1000B12AC(a1);
    *(*(result + 128) + 164) = 0;
  }

  return result;
}

void sub_1000B4C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(sub_1000B12AC(a1) + 128);
  if (*(a2 + 4) == 1)
  {
    if (*(v8 + 696))
    {
      sub_1000D660C();
    }

    v9 = sub_100007618(*(a2 + 6), 0x90A84752uLL);
    *(v8 + 696) = v9;
    if (!v9)
    {
      goto LABEL_23;
    }

    *(v8 + 708) = 0;
  }

  else
  {
    if (!*(a2 + 4))
    {
      sub_1000B01B8(*(a1 + 4), *(a2 + 8), *(a2 + 16), *(a2 + 2), a3, a4);
LABEL_12:

LABEL_14:
      sub_1000B034C(a2);
      return;
    }

    v9 = *(v8 + 696);
    if (!v9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Looks like we didn't get a START before this position (%d) -> ignoring.", *(a2 + 4));
        v14 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_14;
    }
  }

  v10 = *(a2 + 16);
  v11 = *(v8 + 704);
  if (*(a2 + 6) - v11 >= v10)
  {
    memmove(&v9[v11], *(a2 + 8), v10);
    v12 = *(v8 + 704) + *(a2 + 16);
    *(v8 + 704) = v12;
    v13 = *(v8 + 708) | a3;
    *(v8 + 708) = v13;
    if (*(a2 + 4) == 2)
    {
      sub_1000B01B8(*(a1 + 4), *(v8 + 696), v12, *(a2 + 2), v13 != 0, a4);
      sub_10000C1E8(*(v8 + 696));
      *(v8 + 696) = 0;
      *(v8 + 704) = 0;
    }

    goto LABEL_12;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("retransmissionData->reassemblyPacket buffer space (%d) is too small for received data (%d).", *(a2 + 6) - *(v8 + 704), *(a2 + 16));
    a2 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_1000C52F4(428);
LABEL_23:
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to allocate %d bytes for retransmissionData.", *(a2 + 6));
    v15 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_1000C52F4(106);
  sub_1000B4E50(v16);
}

uint64_t sub_1000B4E50(int a1)
{
  if (qword_100B60318)
  {
    v1 = qword_100B60318;
    while (*(v1 + 24) != a1)
    {
      v1 = *(v1 + 80);
      if (v1 == qword_100B60318 || v1 == 0)
      {
        goto LABEL_12;
      }
    }

    if (*(v1 + 16))
    {
      return sub_10000C248(*v1) != 0;
    }
  }

LABEL_12:
  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Why is this called with a channel where retransmission isn't enabled ?");
    v4 = sub_10000C050(0x2Fu);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B4EFC(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D2F8 != -1)
  {
    sub_10081F1F4();
  }

  return qword_100BCE4D0;
}

uint64_t sub_1000B4F34(uint64_t a1, unsigned int a2, int a3)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 2) == 1)
  {

    return sub_1000B46E0(a1, a2);
  }

  else
  {
    result = sub_1000B46E0(a1, a2);
    if (a3 == 1)
    {
      sub_1000B4BB0(a1);
      v7 = sub_1000B12AC(a1);
      if (sub_10000C248(*(*(v7 + 128) + 176)))
      {
        v8 = sub_1000BBA6C(a1);
        if (v8)
        {
          v9 = v8;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to restart retransmission timer : %!", v9);
            v10 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }
      }

      *(*(sub_1000B12AC(a1) + 128) + 2) = 1;
      return sub_1000BE23C(*(a1 + 4));
    }
  }

  return result;
}

void sub_1000B5050(uint64_t a1, uint64_t a2, const void *a3, size_t a4, __int16 a5, int a6, char a7)
{
  v12 = a2;
  v14 = malloc_type_malloc(a4 + 24, 0x1000040D79C9B88uLL);
  *v14 = v12;
  v14[1] = a4;
  *(v14 + 8) = a5;
  *(v14 + 18) = a7;
  memcpy(v14 + 19, a3, a4);
  v15 = sub_10000E92C();
  v16 = (*(*v15 + 8))(v15);
  if (v16)
  {
    v18 = sub_10000C7D0(v16, v17);
    if ((sub_1000ABD54(v18) & 1) == 0)
    {
      if (a6)
      {
        sub_1001975E0(v12);
      }

      else
      {
        v19 = 0;
        sub_1000216B4(&v19);
        sub_1001975E0(v12);
        sub_100022214(&v19);
        sub_10002249C(&v19);
      }
    }
  }

  dispatch_async_f(*(a1 + 8), v14, sub_1000B4B10);
}

void sub_1000B5190(uint64_t a1, unsigned __int16 *a2)
{
  v17 = a2;
  if (a2)
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      goto LABEL_42;
    }

    v4 = *a2;
    v5 = a1 + 24;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 == a1 + 24 || v4 < *(v5 + 32))
    {
LABEL_42:
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
      {
        sub_10081FD58();
      }

      goto LABEL_12;
    }

    v10 = *(v5 + 40);
    if (*(v10 + 372) == 3)
    {
      if (*(v10 + 416))
      {
LABEL_23:
        v11 = [NSData dataWithBytes:a2 + 19 length:*(a2 + 1)];
        (*(**(v10 + 416) + 8))(*(v10 + 416), *a2, v11, *(a2 + 18));

LABEL_12:
        free(a2);
        return;
      }

      v12 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "pipe->getListener() != NULL";
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
        if (*(v10 + 416))
        {
          goto LABEL_23;
        }

        v12 = qword_100BCE958;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10081FCE8();
      }

      goto LABEL_12;
    }

    if (*(v10 + 168))
    {
      sub_100375774((v10 + 128), &v17);
    }

    else if (sub_1000B5528(a1, v4, *(v5 + 40), a2 + 19, *(a2 + 1), a2[8], *(a2 + 18)))
    {

      free(a2);
    }

    else
    {
      v13 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
      {
        v14 = *a2;
        *buf = 67109120;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Socket is now full on pipe 0x%04x - starting write source", buf, 8u);
      }

      sub_100375774((v10 + 128), &v17);
      if (!*(v10 + 8))
      {
        dispatch_resume(*(v10 + 192));
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
    {
      sub_10081FDC8();
    }

    if (qword_100B53FE8 != -1)
    {
      sub_10081FE04();
    }

    v9 = qword_100B53FE0;
    sub_100007E30(buf, "Magnet");
    sub_100007E30(__p, "receivedDataFromStackDispatched");
    sub_1005780BC(v9, buf, __p, 0.0);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(*buf);
    }
  }
}

uint64_t sub_1000B5528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7)
{
  v7 = a7;
  v11 = a2;
  if (*(a1 + 139) == 1)
  {
    sub_100374308(a1);
  }

  if (!*(a3 + 8))
  {
    if (v7)
    {
      v14 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WakeUpState=1. Waking up packet", buf, 2u);
      }
    }

    if (!*(a3 + 224))
    {
      v28 = a5 - *(a3 + 176);
      sub_100066F74(22, 0);
      v29 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Writing %zu bytes to pipe %#06x", buf, 0x12u);
      }

      v30 = write(*(a3 + 200), (a4 + *(a3 + 176)), v28);
      if (v30 == -1)
      {
        if (*__error() != 35 && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
        {
          sub_10081FFC4();
        }

        return 0;
      }

      else
      {
        v31 = *(a3 + 176) + v30;
        if (v31 >= a5)
        {
          *(a3 + 176) = 0;
          return 1;
        }

        else
        {
          v27 = 0;
          *(a3 + 176) = v31;
        }
      }

      return v27;
    }

    v62 = 0u;
    v63 = 0u;
    memset(buf, 0, sizeof(buf));
    if (!*(a3 + 232) && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
    {
      sub_10081FE2C();
    }

    next_slot = os_channel_get_next_slot();
    v16 = *(a3 + 176);
    v59 = 0;
    v60 = 0;
    v17 = a5 - v16;
    if (a5 != v16)
    {
      v18 = next_slot;
      v33 = a5 - v16;
      if (!next_slot)
      {
        v27 = 0;
LABEL_49:
        if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
        {
          sub_10081FF88();
        }

        v17 = v33;
        if (v27)
        {
          os_channel_advance_slot();
          v27 = 0;
        }

        goto LABEL_59;
      }

      v35 = a4;
      v34 = v7;
      while (1)
      {
        v19 = *(a3 + 176);
        ++*(a3 + 264);
        os_channel_slot_get_packet();
        if (!os_packet_get_next_buflet() && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
        {
          sub_10081FEAC(&v45, v46);
        }

        object_address = os_buflet_get_object_address();
        LOWORD(v59) = a6;
        BYTE2(v59) = v7;
        LOWORD(v60) = a6;
        os_packet_set_flow_uuid();
        v21 = *&buf[2];
        if (v17 < *&buf[2])
        {
          v21 = v17;
        }

        *&buf[2] = v21;
        data_limit = os_buflet_get_data_limit();
        LOWORD(v23) = data_limit;
        if (data_limit >= 0x10000 && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
        {
          sub_10081FED8(&v43, v44);
        }

        if (v17 >= v23)
        {
          v23 = v23;
        }

        else
        {
          v23 = v17;
        }

        if (os_buflet_set_data_length() && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
        {
          sub_10081FF04(&v41, v42);
        }

        if (os_packet_finalize() && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
        {
          sub_10081FF30(&v39, v40);
        }

        if (v23 != *&buf[2] && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
        {
          sub_10081FF5C(&v37, v38);
        }

        memcpy(object_address, (v35 + v19), v23);
        *(a3 + 176) = v23 + v19;
        os_channel_set_slot_properties();
        if (*(a1 + 138) == 1)
        {
          v24 = qword_100BCE990;
          if (os_log_type_enabled(qword_100BCE990, OS_LOG_TYPE_DEFAULT))
          {
            v25 = byte_100BCE998++;
            *v47 = 67110400;
            v48 = 20;
            v49 = 1024;
            v50 = 60;
            v51 = 1024;
            v52 = a6;
            v53 = 1024;
            v54 = a6;
            v55 = 1024;
            v56 = v23;
            v57 = 1024;
            v58 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "27 {curProtocol: %hhu, nextProtocol: %hhu, curSeqnStart: %hu, curSeqnEnd: %hu, curLen: %hu, logSeqn: %hhu}", v47, 0x26u);
          }
        }

        v17 -= v23;
        v26 = os_channel_get_next_slot();
        if (!v17)
        {
          break;
        }

        v27 = v18;
        v18 = v26;
        LOBYTE(v7) = v34;
        if (!v26)
        {
          goto LABEL_49;
        }
      }

      os_channel_advance_slot();
      v17 = v33;
    }

    *(a3 + 176) = 0;
    v27 = 1;
LABEL_59:
    v32 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (sub_1000B5B8C(a3, v32, v17) || !v27)
    {
      *(a3 + 264) = 0;
      *(a3 + 328) = v32;
      sub_1000B5C64(a3, 0);
      os_channel_sync();
    }

    else
    {
      sub_1000B5C64(a3, 1);
    }

    return v27;
  }

  return sub_1000B5E78(a1, 0, a3, a4, a5, 0, v7);
}

BOOL sub_1000B5B8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 276);
  if (v3)
  {
    v4 = *(a1 + 304);
    if (v4)
    {
      v5 = *(a1 + 328) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (*(a1 + 368) == 3)
    {
      return 1;
    }

    a3 = (a3 - v3 + (v3 << *(a1 + 280))) >> *(a1 + 280);
  }

  else
  {
    if (*(a1 + 368) == 3)
    {
      return 1;
    }

    v4 = *(a1 + 304);
    v5 = 1;
  }

  *(a1 + 276) = a3;
  v6 = *(a1 + 288);
  *(a1 + 288) = a2;
  if (v4)
  {
    v7 = (a2 - (v6 + v4) + (v4 << *(a1 + 312))) >> *(a1 + 312);
  }

  else
  {
    v7 = *(a1 + 296);
  }

  *(a1 + 304) = v7;
  if (!v5 && v7 <= *(a1 + 296) && *(a1 + 272) < a3 && *(a1 + 264) < *(a1 + 256))
  {
    return (a2 - *(a1 + 328)) > *(a1 + 320);
  }

  return 1;
}

void sub_1000B5C64(uint64_t a1, int a2)
{
  v3 = *(a1 + 304);
  v4 = 2 * v3;
  if (2 * v3 >= 0x1312D00)
  {
    v4 = 20000000;
  }

  if (v4 <= 0xF4240)
  {
    v5 = 1000000;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 344);
  if (a2)
  {
    v7 = *(a1 + 336);
    v8 = dispatch_time(0, v5);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    if ((*(a1 + 344) & 1) == 0)
    {
      *(a1 + 344) = 1;
      dispatch_resume(*(a1 + 336));
    }

    v9 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
    {
      v10 = "ARMED";
      if (v6)
      {
        v10 = "RE-ARMED";
      }

      v11 = *(a1 + 276);
      v12 = *(a1 + 304) / 0xF4240uLL;
      v15 = 136446978;
      *v16 = v10;
      *&v16[8] = 1024;
      *&v16[10] = v11;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = v5 / 0xF4240uLL;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}s: lenAvg %u, ivalAvg %llu ms, deadline %llu ms", &v15, 0x26u);
    }
  }

  else if (*(a1 + 344))
  {
    v13 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 276);
      v15 = 67109376;
      *v16 = v14;
      *&v16[4] = 2048;
      *&v16[6] = v3 / 0xF4240;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "DISARMED: lenAvg %u, ivalAvg %llu ms", &v15, 0x12u);
    }

    *(a1 + 344) = 0;
    dispatch_suspend(*(a1 + 336));
  }
}

uint64_t sub_1000B5E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = *(a3 + 176);
  v9 = *(a3 + 16);
  v10 = a5 - v8;
  if (a5 == v8)
  {
LABEL_14:
    *(a3 + 176) = 0;
    v17 = 1;
    goto LABEL_15;
  }

  v13 = a7;
  v14 = a5 - v8;
  do
  {
    ++*(a3 + 264);
    if (v14 >= a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = v14;
    }

    v21 = 0;
    if (!v9)
    {
      v16 = 0;
LABEL_10:
      v17 = 1;
      goto LABEL_11;
    }

    v16 = v9[1];
    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = (v16)(*v9, a4 + v8, v15, &v21, v13, 0);
    v16 = v21;
LABEL_11:
    v8 += v16;
    *(a3 + 176) = v8;
    v14 -= v16;
  }

  while (v17 && v14);
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  v18 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (sub_1000B5B8C(a3, v18, v10) || !v17)
  {
    *(a3 + 264) = 0;
    *(a3 + 328) = v18;
    sub_1000B5C64(a3, 0);
    if (v9)
    {
      v19 = v9[2];
      if (v19)
      {
        v19(*v9);
      }
    }
  }

  else
  {
    sub_1000B5C64(a3, 1);
  }

  return v17;
}

void sub_1000B5FB0(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v128 = a3;
  v127 = 0;
  v6 = &qword_100BC9CB0[134 * a3];
  v7 = 274877907 * *(v6 + 55);
  v8 = 274877907 * *(v6 + 54);
  v125 = 0;
  v126 = 0;
  v124 = 0;
  sub_100016250(&v126);
  v9 = *(v6 + 57);
  if (!v9)
  {
    v9 = 0x3E8u / *(v6 + 56);
  }

  v10 = v7 >> 38;
  v11 = v8 >> 38;
  v12 = a3;
  if (*(v6 + 10) && (v13 = *(v6 + 18), v13))
  {
    v14 = 0;
    v15 = (v6[8] + 1);
    while (1)
    {
      v16 = *v15;
      v15 += 64;
      if (v16 == *(v6 + 76))
      {
        break;
      }

      if (v13 == ++v14)
      {
        goto LABEL_8;
      }
    }

    v17 = v14;
  }

  else
  {
LABEL_8:
    v17 = 0;
  }

  v121 = v17;
  v122 = v7 >> 38;
  if (a1 - 1 >= 3)
  {
    if (!a1)
    {
      v19 = &qword_100BC9CB0[134 * a3];
      v22 = *(v19 + 25);
      v20 = v19 + 25;
      v21 = v22;
      if (v22)
      {
        v23 = (5 * v21 + a2) / 6;
      }

      else
      {
        v23 = a2;
      }

      *v20 = v23;
      if (HIDWORD(qword_100BC9CB0[134 * a3 + 13]))
      {
        v25 = sub_1000B6B74(&v126);
        v26 = v25 - sub_1000B6B74(&qword_100BC9CB0[134 * v128 + 17]);
        v12 = v128;
        v27 = &qword_100BC9CB0[134 * v128];
        v29 = *(v27 + 26);
        v28 = (v27 + 13);
        v30 = (5 * v29 + v26) / 6;
        v120 = v26;
        if (v29)
        {
          v31 = v30;
        }

        else
        {
          v31 = v26;
        }

        *v28 = v31;
      }

      else
      {
        v120 = 0;
      }

      qword_100BC9CB0[134 * v12 + 17] = v126;
      goto LABEL_32;
    }

    if (a1 != 4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("TS inputType %d", a1);
        v24 = sub_10000C050(0x57u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10080FFF8();
        }
      }

      sub_1000D660C();
      v120 = 0;
      v12 = v128;
      goto LABEL_32;
    }

    if ((qword_100BC9CB0[134 * a3 + 55] & 0x100000000) != 0)
    {
      v119 = 0;
      v120 = 0;
      v18 = 1;
      goto LABEL_63;
    }
  }

  if (HIDWORD(qword_100BC9CB0[134 * a3 + 13]) <= 0xA)
  {
    v18 = sub_1000B6B9C(a3, v11 + v10, v9, v9, v17, &v127);
    v119 = 0;
    v120 = 0;
    goto LABEL_63;
  }

  v120 = 0;
LABEL_32:
  v125 = &v128;
  LOWORD(v124) = 2;
  v32 = sub_10002260C(LODWORD(qword_100BC9CB0[134 * v12 + 55]));
  v33 = &qword_100BC9CB0[134 * v128 + 55];
  if (v32)
  {
    v34 = sub_1000B7ADC(*v33, 30);
  }

  else
  {
    v34 = sub_10002195C(sub_1000B71C4, &v124, 30, v33);
  }

  v35 = v34;
  if (v34)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Transport timer registration failed with status %!", v35);
      v36 = sub_10000C050(0x57u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10080FFF8();
      }
    }

    sub_1000D660C();
  }

  v37 = v128;
  v38 = &qword_100BC9CB0[134 * v128];
  if (*(v38 + 12) != 6)
  {
    v119 = 0;
LABEL_64:
    v46 = 1;
    v18 = v17;
    goto LABEL_76;
  }

  if (*(v38 + 27) < 0xBu)
  {
    v119 = 0;
LABEL_46:
    v18 = v17;
    goto LABEL_59;
  }

  v39 = *(v38 + 26);
  if (v39)
  {
    v40 = *(v38 + 25) * (0x3E8 / v39) / 0x3E8;
  }

  else
  {
    v40 = *(v38 + 25);
  }

  v119 = 8 * v40;
  if (v11 + v10 <= 8 * v40)
  {
    v41 = 8 * v40;
  }

  else
  {
    v41 = v11 + v10;
  }

  if (v9 >= v39)
  {
    v42 = v39;
  }

  else
  {
    v42 = v9;
  }

  if (v9)
  {
    v43 = v42;
  }

  else
  {
    v43 = v39;
  }

  v18 = sub_1000B6B9C(v128, v41, v43, v9, v17, &v127);
  v37 = v128;
  if ((a1 & 0xFFFFFFFD) == 1 || (qword_100BC9CB0[134 * v128 + 55] & 0x100000000) != 0)
  {
    goto LABEL_59;
  }

  v90 = sub_1000B6B74(&v126);
  v91 = sub_1000B6B74(&qword_100BC9CB0[134 * v128 + 16]);
  v37 = v128;
  v92 = v90 - v91;
  if (v90 == v91)
  {
    v93 = 0;
  }

  else
  {
    v93 = 8 * HIDWORD(qword_100BC9CB0[134 * v128 + 11]) / v92;
  }

  v94 = &qword_100BC9CB0[134 * v128];
  if (*(v94 + 31) == 1 && (v92 < 0x1389 || v92 <= 0x2710 && v18 < v17 && v93 > *(v94[8] + (v18 << 6) + 4)))
  {
    v127 = 8;
    v18 = v17;
    goto LABEL_133;
  }

  if (v18 > v17)
  {
    if (*(v94 + 30) == 2)
    {
      *(v94 + 78) = 0;
    }

    LODWORD(qword_100BC9CB0[134 * v37 + 15]) = 1;
    v95 = sub_100084230();
    v96 = v128;
    if (v95 <= 0xE)
    {
      v97 = &qword_100BC9CB0[134 * v128];
      if (!*(v97 + 78))
      {
        v98 = sub_1000ABD24(*v97);
        v96 = v128;
        if (v98)
        {
          sub_10024DE3C(sub_1001954C0, qword_100BC9CB0[134 * v128], v99, v100, v101, v102, v103, v104);
          v96 = v128;
        }
      }
    }

    v105 = &qword_100BC9CB0[134 * v96];
    LOBYTE(v106) = *(v105 + 78) + 1;
    *(v105 + 78) = v106;
    v37 = v96;
    goto LABEL_134;
  }

  if (v18 >= v17)
  {
LABEL_133:
    LOBYTE(v106) = 0;
    v108 = &qword_100BC9CB0[134 * v128];
    *(v108 + 78) = 0;
    *(v108 + 30) = 0;
    goto LABEL_134;
  }

  v106 = *(v94 + 30);
  if (v106 != 1)
  {
    LOBYTE(v106) = BYTE6(qword_100BC9CB0[134 * v128 + 9]) + 1;
  }

  v107 = &qword_100BC9CB0[134 * v128];
  *(v107 + 30) = 2;
  *(v107 + 78) = v106;
LABEL_134:
  if (!v127)
  {
    goto LABEL_46;
  }

  if ((v106 & 0xFC) == 0)
  {
    v18 = v17;
  }

LABEL_59:
  if (LOBYTE(qword_100BC9CB0[134 * v37 + 133]) == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Disabling upgrade due to failed security authentication, we'll retry later");
      v44 = sub_10000C050(0x57u);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = sub_10000C0FC();
        *buf = 136446210;
        v130 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    goto LABEL_64;
  }

LABEL_63:
  if (v18 == v17)
  {
    goto LABEL_64;
  }

  v47 = &qword_100BC9CB0[134 * v128];
  *(v47 + 78) = 0;
  *(v47 + 29) = v18;
  *(v47 + 30) = 0;
  v48 = v127;
  if (a1 == 2)
  {
    v48 = v127 | 0x40;
  }

  *(v47 + 28) = v48;
  if (*(v47 + 40) == *(v47 + 48) || *(v47 + 82) == *(v47 + 98))
  {
    goto LABEL_74;
  }

  v123 = 0;
  sub_1000D4354(&v123);
  v49 = 1000 * (v123 - LODWORD(qword_100BC9CB0[134 * v128 + 20])) - SWORD2(qword_100BC9CB0[134 * v128 + 20]) + SWORD2(v123);
  if (v49 >> 2 >= 0x465)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("TS connection timeout detected %d mseconds ago, allowing transport switch", v49);
      v50 = sub_10000C050(0x57u);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = sub_10000C0FC();
        *buf = 136446210;
        v130 = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v52 = &qword_100BC9CB0[134 * dword_100BC9C74];
    v53 = &qword_100BC9CB0[134 * v128];
    *(v53 + 40) = *(v52 + 48);
    *(v53 + 82) = *(v52 + 98);
LABEL_74:
    sub_1000228C0(sub_1000CAA68, 0, 0);
  }

  v46 = 0;
LABEL_76:
  v54 = sub_1000B6B74(&v126);
  v55 = sub_1000B6B74(&qword_100BC9CB0[134 * v128 + 18]);
  v56 = v128;
  if (!a1)
  {
    ++LODWORD(qword_100BC9CB0[134 * v128 + 23]);
    LODWORD(qword_100BC9CB0[134 * v128 + 21]) += sub_1000B6B88(0);
    v57 = sub_1000B6B88(2);
    v56 = v128;
    v58 = &qword_100BC9CB0[134 * v128];
    v59 = *(v58 + 43) + v57;
    v60 = *(v58 + 46);
    v61 = *(v58 + 42) / v60;
    *(v58 + 43) = v59;
    *(v58 + 44) = v61;
    *(v58 + 45) = v59 / v60;
  }

  v62 = &qword_100BC9CB0[134 * v56];
  if (!*(v62 + 18) || !v62[8])
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Caps is null while upgrade request: lTsPeers[peerIndex].caps=%d.  peerIndex=%d Handle=0x%s", qword_100BC9CB0[134 * v128 + 8], v128, qword_100BC9CB0[134 * v128]);
      v64 = sub_10000C050(0x57u);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
LABEL_105:
        v86 = sub_10000C0FC();
        *buf = 136446210;
        v130 = v86;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

LABEL_106:
    if ((a1 | 2) != 2)
    {
      return;
    }

    goto LABEL_107;
  }

  v63 = v54 - v55;
  if (v46)
  {
    if (a1)
    {
      goto LABEL_91;
    }
  }

  else if (sub_1000B6E74(*v62) || a1 || LODWORD(qword_100BC9CB0[134 * v128 + 10]) != *(qword_100BC9CB0[134 * v128 + 8] + (v18 << 6) + 1))
  {
LABEL_91:
    if (sub_100084230() <= 0xE && v63 >= 0xFA0)
    {
      v71 = sub_10024DE3C(sub_1001954C0, qword_100BC9CB0[134 * v128], v65, v66, v67, v68, v69, v70);
      if (v71)
      {
        v72 = v71;
        if (sub_10000C240())
        {
          sub_10000AF54("Read RSSI failed with status %!", v72);
          v73 = sub_10000C050(0x57u);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            sub_10080FFF8();
          }
        }
      }
    }

    sub_100016250(&qword_100BC9CB0[134 * v128 + 18]);
    if (sub_10000C240())
    {
      v74 = &qword_100BC9CB0[134 * v128];
      v75 = a1 > 4 ? "" : off_100AE4B40[a1];
      v115 = v75;
      v116 = *(v74 + 27);
      v113 = *(v74 + 26);
      v112 = *(v74 + 25);
      v111 = v127;
      v110 = *(v74 + 78);
      v77 = *(v74 + 29);
      v76 = *(v74 + 30);
      v114 = v77;
      v118 = v9;
      v117 = v11;
      v78 = v76 > 2 ? "" : off_100AE4B68[v76];
      v109 = v78;
      v79 = sub_1000B74A0(qword_100BC9CB0[134 * v128 + 10]);
      v80 = sub_1000B74A0(HIDWORD(qword_100BC9CB0[134 * v128 + 10]));
      v81 = sub_1000B7518();
      v82 = qword_100BC9CB0[134 * v128 + 11];
      v83 = sub_1000B755C();
      v84 = sub_1000B6B88(0);
      v85 = sub_1000B6B88(2);
      sub_10000AF54("TS Assess [%d]: t {%d->%d, %d}, in {%s, %d, %d}, ewma {g %d, l %d, t %d}, req {%d, %d, %d}, rsn 0x%2x, cfm {%d, %s}, preq {%s, %s}, B {Tx %d TxQ %d, Rx %d}, Cav {%d, %d}, r %d, f %d, p %d, s %d", v116, v121, v18, v114, v115, v120, a2, v113, v112, v119, v117, v122, v118, v111, v110, v109, v79, v80, v81, v82, v83, v84, v85, HIDWORD(qword_100BC9CB0[134 * v128 + 23]), BYTE4(qword_100BC9CB0[134 * v128 + 55]), byte_100B5A078, LOBYTE(qword_100BC9CB0[134 * v128 + 133]));
      v64 = sub_10000C050(0x57u);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_105;
      }
    }

    goto LABEL_106;
  }

  if (v63 > 0xF9F || byte_100B5A079 == 1)
  {
    goto LABEL_91;
  }

LABEL_107:
  v87 = &qword_100BC9CB0[134 * v128];
  v88 = *(v87 + 27);
  if (v88 == -2)
  {
    v89 = 10;
  }

  else
  {
    v89 = v88 + 1;
  }

  *(v87 + 27) = v89;
}

unint64_t sub_1000B6B9C(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unint64_t a5, int *a6)
{
  v11 = a1;
  if (!a6)
  {
    sub_1000D660C();
  }

  v12 = &qword_100BC9CB0[134 * v11];
  v13 = *(v12 + 18);
  if (v13 < a5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_TS_Switching.c", 317, "currentTransport <= lTsPeers[peerIndex].nbCaps");
  }

  if (*(v12 + 444))
  {
    return 1;
  }

  if (!v13)
  {
    v20 = 16;
    v14 = a5;
    goto LABEL_23;
  }

  v15 = 0;
  v14 = 0;
  v16 = a5;
  while (!sub_1000B6DB0(v11, v14))
  {
LABEL_19:
    ++v14;
    v15 += 64;
    if (v14 >= *(v12 + 18))
    {
      v20 = 16;
      v14 = v16;
      goto LABEL_23;
    }
  }

  v17 = v12[8] + v15;
  v18 = *(v17 + 4);
  if (*(v17 + 8) <= a3)
  {
    if (v18 >= a2)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (*(v12 + 26) - 1 >= a4 || (a2 < v18 >> 1 ? (v19 = v18 >= a2) : (v19 = 0), !v19))
  {
LABEL_18:
    v16 = v14;
    goto LABEL_19;
  }

LABEL_22:
  v20 = 3;
LABEL_23:
  v21 = *(v12 + 24);
  if (v21)
  {
    if (v14 <= a5)
    {
      a5 = a5;
    }

    else
    {
      a5 = v14;
    }

    if (v21 >= 5)
    {
      v22 = v14 + 1;
      if (v22 < *(v12 + 18))
      {
        if (sub_1000B6DB0(v11, v22))
        {
          a5 = v22;
        }

        else
        {
          a5 = a5;
        }
      }
    }

    v20 |= 4u;
    v14 = a5;
  }

  if (sub_1000B6E74(*v12))
  {
    v23 = *(v12 + 18);
    if (v23)
    {
      v24 = v12[8];
      if (v24)
      {
        v25 = *(v24 + (v14 << 6) + 1);
        v26 = *(v12 + 21);
        if (v26 != v25)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = (v24 + 1);
          do
          {
            v32 = *v30;
            v30 += 64;
            v31 = v32;
            if (v32 == v25)
            {
              v29 = v27;
            }

            if (v26 == v31)
            {
              v28 = v27;
            }

            ++v27;
          }

          while (v23 != v27);
          if (v29 <= v28)
          {
            v33 = v28;
          }

          else
          {
            v33 = v29;
          }

          if (v33 > v14)
          {
            v34 = sub_1000B6DB0(v11, v33);
            if (v34)
            {
              v14 = v33;
            }

            else
            {
              v14 = v14;
            }

            if (v34)
            {
              v20 = 32;
            }
          }
        }
      }
    }
  }

  *(v12 + 29) = v14;
  *a6 = v20;
  return v14;
}

BOOL sub_1000B6DB0(unsigned int a1, unsigned int a2)
{
  v2 = &qword_100BC9CB0[134 * a1];
  if (*(v2 + 18) <= a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_TS_Switching.c", 300, "lTsPeers[peerIndex].nbCaps > techIndex");
  }

  v3 = v2[8] + (a2 << 6);
  if (*(v3 + 2) != 1)
  {
    return 0;
  }

  v4 = byte_100BC9C70;
  if (!byte_100BC9C70)
  {
    return 0;
  }

  for (i = (qword_100BC9C68 + 2); *(i - 1) != *(v3 + 1); i += 64)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  return *i == 1 && *(v3 + 20) <= *(v2 + 47);
}

BOOL sub_1000B6E74(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    return !sub_1000BE280(a1);
  }

  result = sub_1000B8B5C(a1);
  if (result)
  {
    return *(a1 + 144) == 0;
  }

  return result;
}

void *sub_1000B6EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[62])
  {
    return [result _stackBLEScannerDeviceLost:a2];
  }

  return result;
}

uint64_t sub_1000B6EE0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF_safe(a1, a2, 90, a4);
}

void sub_1000B6F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, int a13, unsigned int a15, char a17)
{

  sub_100181F6C(&a17, &a13, &a15, &a12);
}

void sub_1000B6F30(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

void sub_1000B6F4C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_1000E5A58(a1, va);
}

void sub_1000B6F64(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x16u);
}

void sub_1000B6F8C(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 - 24) = a2;

  sub_1000E5A58(a1, va);
}

void sub_1000B6FB8(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x20u);
}

id sub_1000B6FF0(uint64_t a1)
{

  return [v1 appendData:a1];
}

void sub_1000B704C(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

id sub_1000B7068(uint64_t a1)
{
  v2 = *(a1 + 16);

  return v2;
}

void sub_1000B7080(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a4 = a1;
  *(a4 + 4) = v4;
  *(a4 + 12) = 1024;
  *(a4 + 14) = v5;
}

uint64_t sub_1000B70A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF_safe(a1, a2, 35, a4);
}

void sub_1000B70E4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_error_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_1000B70FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1000B7144(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void sub_1000B7164(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_debug_impl(a1, v12, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1000B71C4(uint64_t a1)
{
  if (a1)
  {
    v23[0] = 0;
    v24 = **(a1 + 8);
    v1 = v24;
    v2 = &qword_100BC9CB0[134 * v24];
    if (*(v2 + 10) && (v3 = *(v2 + 18), v3))
    {
      v4 = 0;
      v5 = v2[8];
      v6 = *(v2 + 76);
      v7 = (v5 + 1);
      while (1)
      {
        v8 = *v7;
        v7 += 64;
        if (v8 == v6)
        {
          break;
        }

        if (v3 == ++v4)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      LODWORD(v4) = 0;
    }

    v9 = &qword_100BC9CB0[134 * v24];
    v9[13] = 0;
    *(v9 + 25) = 0;
    v10 = sub_10000C240();
    if (v4)
    {
      if (v10)
      {
        sub_10000AF54("Restarting TS Idle timer peer %d due to currentTransport %d", v1, v4);
        v11 = sub_10000C050(0x57u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v26 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v23[1] = &v24;
      LOWORD(v23[0]) = 2;
      if (sub_10002195C(sub_1000B71C4, v23, 30, &qword_100BC9CB0[134 * v1 + 55]))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("TS Idle timer registration failed");
          v12 = sub_10000C050(0x57u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10080FFF8();
          }
        }
      }

      v13 = v24;
      v14 = &qword_100BC9CB0[134 * v24];
      v15 = *(v14 + 10);
      if (*(v14 + 10))
      {
        v16 = &qword_100BC9CB0[134 * v24 + 3];
        v17 = v16;
        do
        {
          v18 = *v17;
          v17 += 2;
          if (v18 != 1)
          {
            v19 = *(v16 - 1);
            if (v19)
            {
              if (*(v19 + 16) <= 1u)
              {
                *(v14 + 24) = 0;
              }
            }
          }

          v16 = v17;
          --v15;
        }

        while (v15);
      }

      sub_1000B5FB0(2u, 0, v13);
    }

    else if (v10)
    {
      v20 = sub_1000B6B88(0);
      v21 = sub_1000B6B88(2);
      sub_10000AF54("TS idle expiration for peer %d with transport %d, avail [acl %d, le %d]", v1, 0, v20, v21);
      v22 = sub_10000C050(0x57u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v26 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {

    sub_1000D660C();
  }
}

const char *sub_1000B74A0(int a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return "LE";
    }

    if (a1 == 2)
    {
      return "BT";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        return "WL";
      case 16:
        return "USB";
      case 17:
        return "AWDL";
    }
  }

  return "??";
}

uint64_t sub_1000B7518()
{
  v0 = word_100B60268;
  if (!word_100B60268)
  {
    return 0;
  }

  result = 0;
  v2 = qword_100B60260;
  do
  {
    if (*v2 == 4)
    {
      result = (v2[20] + result);
    }

    v2 += 36;
    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_1000B755C()
{
  v0 = word_100B60268;
  if (!word_100B60268)
  {
    return 0;
  }

  result = 0;
  v2 = qword_100B60260;
  do
  {
    if (*v2 == 4)
    {
      result = (v2[21] + result);
    }

    v2 += 36;
    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_1000B75A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  *a6 = 0;
  while (1)
  {
    v17 = 0;
    v16 = 0;
    sub_1000216B4(&v16);
    v11 = sub_1000B77E0(*(a3 + 112), &v17);
    if (v11)
    {
      v12 = v11 == 5007;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v17 = 1015;
    }

    v13 = v17 >= a5 - *a6 ? a5 - *a6 : v17;
    v14 = sub_1000B7BFC(sub_10037465C, *(a3 + 112), a2, (a4 + *a6), v13, 0);
    sub_100022214(&v16);
    *a6 += v13;
    if (v14 != 412)
    {
      break;
    }

    sub_10002249C(&v16);
    if (*a6 >= a5)
    {
      return 1;
    }
  }

  if (v14)
  {
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
    {
      sub_10082033C();
    }
  }

  sub_10002249C(&v16);
  return 0;
}

uint64_t sub_1000B76FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v7 = *(a1 + 24);
  v5 = a1 + 24;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_17;
  }

  v11 = v5;
  do
  {
    v12 = *(v6 + 32);
    v13 = v12 >= a2;
    v14 = v12 < a2;
    if (v13)
    {
      v11 = v6;
    }

    v6 = *(v6 + 8 * v14);
  }

  while (v6);
  if (v11 != v5 && *(v11 + 32) <= a2)
  {
    v16 = *(v11 + 40);

    return sub_1000B75A0(v5, a2, v16, a3, a4, a5);
  }

  else
  {
LABEL_17:
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
    {
      sub_10081F63C();
    }

    return 0;
  }
}

uint64_t sub_1000B77B4(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (a1 && *a1)
  {
    return sub_1000B76FC(*a1, a1[1], a2, a3, a4);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000B77E0(uint64_t a1, int *a2)
{
  v4 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v5 = qword_100BC9CB0;
    while (*v5 != a1)
    {
      v5 += 134;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    result = sub_1000B78F0(v5);
    if (result)
    {
      v11 = result;
      v12 = *(result + 2);
      if (v12 == 8)
      {
        result = 0;
        v10 = 1460;
      }

      else
      {
        result = 0;
        if (v12)
        {
          v10 = 1015;
        }

        else if (*(v11 + 278))
        {
          v10 = 2570;
        }

        else
        {
          v10 = 2031;
        }
      }
    }

    else
    {
      v13 = *(a1 + 104);
      v14 = *(a1 + 248) / v13;
      if (v14 <= 1)
      {
        v14 = 1;
      }

      if (v14 >= 0xF)
      {
        v14 = 15;
      }

      v10 = v14 * v13 - 6;
    }

    goto LABEL_25;
  }

LABEL_5:
  v6 = sub_1000ABD24(a1);
  result = 601;
  if (a2 && v6)
  {
    v8 = *(a1 + 104);
    v9 = *(a1 + 248) / v8;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    if (v9 >= 0xF)
    {
      v9 = 15;
    }

    v10 = v9 * v8 - 6;
    result = 5007;
LABEL_25:
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1000B78F0(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 48);
  if (v2 <= 0xC)
  {
    v3 = 1 << v2;
    if ((v3 & 0x780) != 0)
    {
      v4 = *(a1 + 77);
      if (v4 == *(a1 + 24))
      {
        v5 = (a1 + 16);
        return *v5;
      }

      if (v4 == *(a1 + 40))
      {
        v5 = (a1 + 32);
        return *v5;
      }

      return 0;
    }

    if ((v3 & 0x1840) != 0)
    {
      if (*(a1 + 10))
      {
        v6 = 0;
        for (i = 1; ; i = 0)
        {
          v8 = i;
          v5 = (a1 + 16 + 16 * v6);
          if (v5[8] == *(a1 + 76))
          {
            break;
          }

          v6 = 1;
          if ((v8 & 1) == 0)
          {
            return 0;
          }
        }

        return *v5;
      }

      return 0;
    }
  }

  return v1;
}

uint64_t sub_1000B7994(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FC20;
    if (qword_100B5FC20)
    {
      while (v2 != a1)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return v1;
}

uint64_t sub_1000B79CC(unsigned int a1)
{
  v2 = 0;
  if (sub_1000ABC7C(a1, &v2) || *(sub_1000B12AC(v2) + 64) != 3)
  {
    return 0;
  }

  else
  {
    return sub_1000B8B2C(v2);
  }
}

void sub_1000B7A1C(uint64_t a1, unsigned int a2, int a3)
{
  if (dword_100BC9C74)
  {
    v3 = 0;
    for (i = &qword_100BC9CC0; ; i += 134)
    {
      v5 = v3;
      v6 = &qword_100BC9CB0[134 * v3];
      if (*v6 == a1)
      {
        break;
      }

      v7 = v6[1].u8[2];
      v8 = i;
      if (v6[1].i8[2])
      {
        while (*v8 != a1)
        {
          v8 += 2;
          if (!--v7)
          {
            goto LABEL_9;
          }
        }

        if (*v6)
        {
          goto LABEL_12;
        }
      }

LABEL_9:
      v3 = v5 + 1;
      if (v5 + 1 == dword_100BC9C74)
      {
        return;
      }
    }

    if (!a1)
    {
      return;
    }

LABEL_12:
    v9 = &qword_100BC9CB0[134 * v5];
    if (a3)
    {
      v10 = *(v9 + 24) + 1;
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 24) = v10;
    if (a2)
    {
      v6[11] = vadd_s32(v6[11], vdup_n_s32(a2));
    }

    sub_1000B5FB0(0, a2, v5);
  }
}

uint64_t sub_1000B7ADC(uint64_t a1, int a2)
{
  v3 = a1;
  if (!sub_10002260C(a1))
  {
    return 1001;
  }

  if ((a2 & 0x8000) != 0)
  {
    sub_1000D660C();
    return 101;
  }

  else
  {
    sub_100022690(qword_100B6D1A8 + 24 * HIWORD(v3), a2);
    return 0;
  }
}

void sub_1000B7B40(uint64_t a1)
{
  v2 = *(a1 + 2);
  if (*(a1 + 2))
  {
    v3 = 0;
    v4 = a1 + 18;
    do
    {
      v5 = *(v4 - 2);
      if (v5 >= 2)
      {
        if (v5 == 4)
        {
          *(*(v4 + 6) + 1) = *(v4 + 14);
          *(*(v4 + 6) + 6) = *(v4 + 16);
          *(*(v4 + 6) + 4) = *v4;
        }
      }

      else
      {
        v6 = *(v4 + 6);
        if (!v6)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 207, "cell->buf.ptr");
        }

        sub_10000C1E8(v6);
        *(v4 + 6) = 0;
        v2 = *(a1 + 2);
      }

      ++v3;
      v4 += 24;
    }

    while (v3 < v2);
  }

  *(a1 + 4) = 0;
  *(a1 + 1) = 0;
  *(a1 + 8) = 0;
}

uint64_t sub_1000B7BFC(uint64_t a1, __int128 *a2, uint64_t a3, char *a4, size_t a5, int a6)
{
  v6 = 101;
  if (!a4 || !a5)
  {
    return v6;
  }

  memset(v22, 0, sizeof(v22));
  if (sub_1000B7E7C(a2) != -1)
  {
    v13 = sub_10001FF10(v22, 1u);
    if (v13 || (a6 ? (v14 = 1) : (v14 = 2), v13 = sub_10001F968(v22, a4, a5, v14), v13))
    {
      v6 = v13;
      goto LABEL_10;
    }

    v6 = sub_1000B7EDC(a1, a3, a2, v22, 1);
    if (sub_10000EFCC() && sub_100084230() <= 0xE)
    {
      sub_1001975E0(a3);
    }

    if (v6)
    {
      if (v6 != 410)
      {
        if (v6 != 412)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("CL send error on pipeID %d data size %d", a3, a5);
            v21 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          goto LABEL_27;
        }

        v16 = a2;
        v17 = a5;
        v18 = 0;
LABEL_26:
        sub_1000B7A1C(v16, v17, v18);
LABEL_27:
        sub_1000B7B40(v22);
        return v6;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("CL L2CAP pipe %d is already full, not enqueing data of %d", a3, a5);
        v19 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = sub_10000C0FC();
          *buf = 136446210;
          v24 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v16 = a2;
      v17 = 0;
    }

    else
    {
      v16 = a2;
      v17 = a5;
    }

    v18 = 1;
    goto LABEL_26;
  }

LABEL_10:
  if (a6)
  {
    sub_10000C1E8(a4);
  }

  return v6;
}

BOOL sub_1000B7E2C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    if (sub_1000ABD24(result))
    {
      return 1;
    }

    else
    {

      return sub_1000B8B5C(v1);
    }
  }

  return result;
}

uint64_t sub_1000B7E7C(uint64_t a1)
{
  if (!sub_1000B7E2C(a1) || !word_100B5A19A)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  while (**(&xmmword_100B5A1A0 + result) != a1)
  {
    if (word_100B5A19A == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_1000B7EDC(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v8 = a2;
  v24 = a2;
  v23 = 0;
  v10 = sub_1000ABC7C(a2, &v23);
  if (v10)
  {
    v11 = v10;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ChanMan_GetChannel failed: %!", v11);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v13 = v23;
    if (!v23)
    {
      sub_1000D660C();
    }

    v14 = *v13;
    if ((*v13 - 1) >= 4)
    {
      sub_1000D660C();
      v14 = *v13;
    }

    v15 = v14 == 4 || v14 == 2;
    if (!v15 || *(sub_1000B12AC(v13) + 16) == 4 || *(sub_1000B12AC(v13) + 16) == 3 || *(sub_1000B12AC(v13) + 16) == 5)
    {
      if (*(v13 + 8))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Write in progress");
          v16 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 410;
      }

      else
      {
        v17 = *v13;
        if (*v13 > 2)
        {
          goto LABEL_26;
        }

        if (v17 == 1)
        {
          v18 = sub_1002961E4(v13, a3, a4);
        }

        else if (v17 == 2)
        {
LABEL_28:
          if (sub_1000B135C(v8))
          {
            v18 = sub_1000B81E0(v13, a4);
          }

          else if (sub_1000E10E0(v8))
          {
            v18 = sub_10029150C(v13, a4);
          }

          else
          {
            v18 = sub_1002918D8(v13, a4);
          }
        }

        else
        {
          while (1)
          {
            sub_1000C52F4(105);
LABEL_26:
            if (v17 == 3)
            {
              break;
            }

            if (v17 == 4)
            {
              goto LABEL_28;
            }
          }

          *(a4 + 8) = 0;
          v18 = sub_100295C20(a3, v8, a4);
        }

        v11 = v18;
        if ((v5 & 1) != 0 || v18 != 412)
        {
          if (v18)
          {
            *(v13 + 8) = 0;
            *(v13 + 16) = 0;
            *(v13 + 24) = 0;
            return v11;
          }

          if (a1)
          {
            v11 = 0;
            *(v13 + 8) = a1;
            *(v13 + 16) = a4;
            *(v13 + 24) = *(a4 + 4);
            return v11;
          }
        }

        else
        {
          v22[0] = 0;
          if (a1)
          {
            *(v13 + 8) = a1;
            *(v13 + 16) = a4;
            *(v13 + 24) = *(a4 + 4);
          }

          v22[1] = &v24;
          LOWORD(v22[0]) = 2;
          sub_10002195C(sub_10028E1DC, v22, 0, 0);
        }

        return 0;
      }
    }

    else
    {
      if (sub_10000C240())
      {
        v19 = sub_1000B12AC(v13);
        sub_10000AF54("OI_L2CAP_WriteMBUF, channel is not OPEN (%d)", *(v19 + 16));
        v20 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 404;
    }
  }

  return v11;
}

uint64_t sub_1000B81E0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = *(a2 + 4);
  v4 = sub_1000B12AC(a1);
  v5 = *(v4 + 72);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  bzero(&v32 - v6, v8);
  v9 = *(sub_1000B12AC(a1) + 77);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(v37, 0, 120);
  v35 = 0u;
  v10 = *(sub_1000B12AC(a1) + 72);
  if (*(sub_1000B12AC(a1) + 66) * v10 >= v3 || *(sub_1000B12AC(a1) + 64) == 3)
  {
    v11 = sub_1000B12AC(a1);
    if (!v3)
    {
      return 531;
    }

    v13 = 0;
    if (*(v11 + 78))
    {
      v14 = v5 - 8;
    }

    else
    {
      v14 = v5 - 6;
    }

    v15 = v14;
    v33 = v9 & 0xFFFFFFFD;
    *&v12 = 136446466;
    v32 = v12;
    while (1)
    {
      if ((v3 - v13) >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v3 - v13;
      }

      if (!v33)
      {
        if (!v13 && v16 == v3)
        {
          goto LABEL_22;
        }

        if (!v13)
        {
          *(sub_1000B12AC(a1) + 77) = 1;
          LOWORD(v16) = v16 - 2;
          goto LABEL_23;
        }
      }

      v17 = v13 + v16;
      if (v17 < v3)
      {
        v18 = sub_1000B12AC(a1);
        v19 = 3;
LABEL_21:
        *(v18 + 77) = v19;
        goto LABEL_23;
      }

      if (v17 == v3)
      {
        v18 = sub_1000B12AC(a1);
        v19 = 2;
        goto LABEL_21;
      }

      sub_1000D660C();
LABEL_22:
      *(sub_1000B12AC(a1) + 77) = 0;
LABEL_23:
      v20 = sub_10001F788(v7, v34, v16);
      if (v20 != v16)
      {
        v21 = v20;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to get the full payload size (%d), only got %d bytes", v16, v21);
          v22 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v28 = sub_10000C0FC();
            *buf = v32;
            v46 = v28;
            v47 = 1024;
            v48 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        LOWORD(v16) = v21;
      }

      sub_10001FF10(&v38, 1u);
      sub_10001F968(&v38, v7, v16, 2u);
      BYTE8(v36) = *(sub_1000B12AC(a1) + 77);
      WORD5(v36) = v3;
      v23 = *(sub_1000B12AC(a1) + 38);
      *&v37[5] = v40;
      *&v37[3] = v39;
      *&v37[1] = v38;
      *&v37[13] = v44;
      *&v37[11] = v43;
      *&v37[9] = v42;
      LOBYTE(v35) = v23 == -1;
      *&v37[7] = v41;
      v24 = *(a1 + 128);
      v37[2] = a1;
      v37[0] = v24;
      *(a1 + 128) = 0;
      v25 = sub_1000B12AC(a1);
      v26 = sub_1000B85D8(&v35, *v25, 0, *(a1 + 4));
      v27 = v26;
      if (v26 != 412)
      {
        if (v26)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to send packet. Bailing. result %!", v27);
            v29 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }

        return v27;
      }

      v13 = (v16 + v13);
      if (v13 == v3)
      {
        return v27;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Error, packet too large (exceeds MaxPDUSize * window)");
    v30 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 472;
}

uint64_t sub_1000B85D8(uint64_t a1, _BYTE *a2, int a3, __int16 a4)
{
  if (!a3)
  {
    if (sub_1000B8B5C(a2) || sub_1000ABD24(a2) || sub_1000B7994(a2))
    {
      if (sub_1000B8B5C(a2) && (a2[152] == 255 || (a2[54] & 0xFE) == 6))
      {
        if (!sub_10000C240())
        {
          return 414;
        }

        sub_10000AF54("Link going down");
        v9 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          return 414;
        }
      }

      else
      {
        if (sub_1000ABD24(a2) && (a2[124] & 0xFE) == 6)
        {
          return 414;
        }

        if (!sub_1000B7994(a2) || (a2[60] & 0xFE) != 6)
        {
          goto LABEL_2;
        }

        if (!sub_10000C240())
        {
          return 414;
        }

        sub_10000AF54("Invalid handle");
        v10 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          return 414;
        }
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        return 414;
      }

      sub_10000AF54("Invalid handle");
      v11 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        return 414;
      }
    }

    sub_10080F7A0();
    return 414;
  }

LABEL_2:
  *(a1 + 8) = a2;
  *(a1 + 20) = a4;
  *(a1 + 16) = a3;

  return sub_1000B8788(a1);
}

uint64_t sub_1000B8788(uint64_t a1)
{
  if (!qword_100B60318)
  {
    return 404;
  }

  v2 = *(a1 + 20);
  v3 = qword_100B60318;
  while (*(v3 + 24) != v2)
  {
    v3 = *(v3 + 80);
    if (v3 == qword_100B60318 || v3 == 0)
    {
      return 404;
    }
  }

  v7 = (v3 + 24);
  if (*(v3 + 16) != sub_1000B135C(v2))
  {
    sub_1000D660C();
    if ((*(v3 + 16) & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    v11 = sub_10000C248(*v3);
    v12 = v11 - *(v3 + 20);
    v13 = *(v3 + 26);
    if (v12 >= v13)
    {
      return 410;
    }

    v14 = v11;
    if (v12 == v13 - 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 412;
    }

    v15 = sub_100007618(0x40uLL, 0x10A0040CDCE5640uLL);
    if (v15)
    {
      v16 = v15;
      *v15 = 0;
      *(v15 + 1) = *a1;
      *(v15 + 1) = 0;
      v15[1] = *(a1 + 8);
      *(v15 + 4) = *(a1 + 16);
      if (!sub_1000B8BE0(v15 + 5, a1 + 40, 0))
      {
        *(v16 + 32) = *(v3 + 27);
        *(v16 + 33) = *(a1 + 24);
        *(v16 + 17) = *(a1 + 26);
        v21 = *(v3 + 24);
        *(v16 + 18) = v21;
        *(v16 + 19) = sub_1000B79CC(v21);
        v16[3] = 0;
        *(v16 + 48) = 0;
        v16[7] = *(a1 + 32);
        if (!v14 && *(v3 + 56) == 0xFFFFFFFFLL)
        {
          *(v3 + 48) = sub_1000B11F4();
        }

        v22 = *v3;
        v23 = v16;
        goto LABEL_53;
      }

      sub_10000C1E8(v16);
    }

    return 106;
  }

  if (*(v3 + 16))
  {
    goto LABEL_20;
  }

LABEL_13:
  v26[0] = 0;
  v27 = 0;
  v8 = sub_10000C248(*v3);
  if (v8 >= *(v3 + 26))
  {
    v5 = 410;
    goto LABEL_54;
  }

  v9 = v8;
  if (sub_1000E10E0(*v7) && (v10 = *(v3 + 26), v9 >= ~sub_10029DECC(*(v3 + 24)) + v10))
  {
    v5 = 0;
  }

  else if (v9 == *(v3 + 26) - 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 412;
  }

  v17 = sub_100007618(0x40uLL, 0x10A0040CDCE5640uLL);
  if (!v17)
  {
    goto LABEL_43;
  }

  v18 = v17;
  *v17 = -1;
  v19 = *v7;
  *(v18 + 18) = v19;
  v18[1] = *a1;
  *(v18 + 1) = 0;
  *(v18 + 1) = *(a1 + 8);
  *(v18 + 4) = *(a1 + 16);
  *(v18 + 7) = *(a1 + 32);
  v20 = !sub_1000ABC7C(v19, v26) && (*v26[0] == 4 || *v26[0] == 2) && *(sub_1000B12AC(v26[0]) + 78) != 0;
  if (sub_1000B8BE0(v18 + 3, a1 + 40, v20))
  {
    sub_10000C1E8(v18);
LABEL_43:
    v5 = 106;
    goto LABEL_54;
  }

  if (v20)
  {
    sub_10029C6AC(*(v18 + 3), &v27);
    sub_10001F968(*(v18 + 3), &v27, 2uLL, 0);
  }

  *(v18 + 17) = *(*(v18 + 3) + 4);
  *(v18 + 5) = 0;
  v18[32] = *(v3 + 27);
  if (!v9 && *(v3 + 56) == 0xFFFFFFFFLL)
  {
    *(v3 + 48) = sub_1000B11F4();
  }

  if (*(a1 + 1) == 1)
  {
    v22 = qword_100B60330;
  }

  else
  {
    v22 = *v3;
  }

  v23 = v18;
LABEL_53:
  sub_1000B8B8C(v22, v23, 8);
LABEL_54:
  if (v5 == 412 || !v5)
  {
    dword_100B6033C = 2;
    if (*(v3 + 40))
    {
      v25 = *(v3 + 32);
      v24 = (v3 + 32);
      if (sub_10002260C(v25))
      {
        sub_1000B7ADC(*v24, 300);
      }

      else
      {
        v26[1] = v7;
        v26[0] = 2;
        sub_10002195C(sub_10029E8D0, v26, 300, v24);
      }
    }
  }

  return v5;
}

uint64_t sub_1000B8B2C(int *a1)
{
  v1 = *(sub_1000B12AC(a1) + 128);
  v2 = *(v1 + 4);
  *(v1 + 4) = (v2 + 1) & 0x3F;
  return v2;
}

BOOL sub_1000B8B5C(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FBD0; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

void *sub_1000B8B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BBD40(a1, a2, a3);
  if (result)
  {
    result[1] = 0;
    v5 = *(a1 + 24);
    if (v5)
    {
      *(v5 + 8) = result;
    }

    *(a1 + 24) = result;
    if (!*(a1 + 16))
    {
      *(a1 + 16) = result;
    }

    ++*(a1 + 32);
  }

  return result;
}

uint64_t sub_1000B8BE0(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = sub_1000B914C((*a2 + a3));
  if (!v6)
  {
    return 106;
  }

  v7 = v6;
  *v6 = *a2 + a3;
  *(v6 + 1) = *(a2 + 1);
  *(v6 + 1) = *(a2 + 4);
  *(v6 + 1) = *(a2 + 8);
  if (*(a2 + 2))
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + v8 + 18);
      v11 = v7 + v8;
      *(v7 + v8 + 18) = v10;
      v12 = *(a2 + v8 + 16);
      if (v12 < 3)
      {
        break;
      }

      if (v12 == 4)
      {
        *(v11 + 16) = 4;
        v15 = v7 + v8;
        *(v15 + 34) = *(a2 + v8 + 34);
        *(v15 + 32) = *(a2 + v8 + 32);
        sub_1000B8BE0((v7 + v8 + 24), *(a2 + v8 + 24), 0);
        goto LABEL_13;
      }

      if (v12 == 3)
      {
        *(v11 + 16) = 3;
        v13 = (v7 + v8 + 24);
        v14 = (a2 + v8 + 24);
LABEL_10:
        memmove(v13, v14, v10);
      }

LABEL_13:
      ++v9;
      v8 += 24;
      if (v9 >= *(a2 + 2))
      {
        goto LABEL_14;
      }
    }

    *(v11 + 16) = 0;
    v13 = sub_100007618(v10, 0xAD055055uLL);
    *(v11 + 24) = v13;
    if (!v13)
    {
      *(v11 + 18) = 0;
      goto LABEL_13;
    }

    v14 = *(a2 + v8 + 24);
    v10 = *(a2 + v8 + 18);
    goto LABEL_10;
  }

LABEL_14:
  result = 0;
  *a1 = v7;
  return result;
}

BOOL sub_1000B8D48(uint64_t *a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  *a2 = 0;
  if (*(a1 + 29))
  {
    return 0;
  }

  v5 = *a1;
  a1[12] = *a1;
  v6 = sub_1000BA5F8(v5);
  if (!v6)
  {
    if (a1[7] == 0xFFFFFFFFLL)
    {
      v10 = sub_1000B11F4();
      result = 0;
      a1[6] = v10;
      return result;
    }

    return 0;
  }

  v7 = v6;
  v8 = *(v6 + 8);
  if (!sub_1000B8B5C(v8) && !sub_1000C0E08(v8) && !sub_1000ABD24(v8) && !sub_1000B7994(v8))
  {
LABEL_26:
    *a2 = v7;
    return 1;
  }

  v9 = *(v8 + 2);
  if (v9 == 8)
  {
    goto LABEL_24;
  }

  if (v9 != 4)
  {
    if (!*(v8 + 2))
    {
      if (byte_100BCE1B9 == 1 && (sub_1000BB0CC(v8) & 1) != 0)
      {
        goto LABEL_25;
      }

      return 0;
    }

    sub_1000D660C();
LABEL_24:
    if (byte_100BCE1B8 == 1)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((*(v8 + 129) & 1) == 0 && (byte_100BCE1BA != 1 || !sub_100255644(v8)))
  {
    return 0;
  }

LABEL_25:
  result = sub_1000B8E94(v8, *(v7 + 32));
  if (result)
  {
    goto LABEL_26;
  }

  return result;
}

BOOL sub_1000B8E94(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 2) == 4)
  {
    v8 = sub_1000C0E90();
    v9 = sub_1000C0E38();
    v11 = sub_1000B6B88(2);
    if (*(a1 + 129))
    {
      return 1;
    }

    v10 = v11;
  }

  else
  {
    if (*(a1 + 2))
    {
      sub_1000D660C();
      return 0;
    }

    v4 = sub_1000BBF68();
    v5 = sub_1000BB104();
    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = sub_1000BB110() - v7;
    v9 = sub_1000BBF7C();
    v10 = sub_1000B6B88(0) - v7;
  }

  v19 = 0;
  if (!v9)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("connectionHandle %x and NumOfConnections %d", a1, 0);
      v18 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 1;
  }

  v12 = sub_1000BA760(a1, &v19);
  if (v9 + 2 * v19 <= v8)
  {
    v13 = 2;
  }

  else
  {
    v13 = v19 + v9 <= v8;
  }

  v14 = v8 - v9 + (v12 - v19) * v13;
  v15 = v14 + 1;
  if (v10 >= v14 + 1)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v10;
  }

  if (v15 <= *(a1 + 16))
  {
    return 0;
  }

  if (a2 <= 0xA)
  {
    return !*(a1 + 16) || v16 > v13 * v12;
  }

  return v10 != 0;
}

uint64_t sub_1000B9010(uint64_t a1)
{
  v2 = sub_1000B47B8(qword_100B60328);
  v3 = v2;
  v8 = v2;
  if (!a1)
  {
    sub_1000D660C();
    if (v3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  while (1)
  {
LABEL_5:
    v4 = sub_1000BC720(v3);
    v5 = *(v4 + 8);
    if (*a1 && v5 != *(*a1 + 8))
    {
      goto LABEL_19;
    }

    if (!sub_1000B8B5C(v5) && !sub_1000C0E08(*(v4 + 8)) && !sub_1000ABD24(*(v4 + 8)) && !sub_1000B7994(*(v4 + 8)))
    {
      break;
    }

    v6 = *(*(v4 + 8) + 2);
    if (v6 == 8)
    {
      if (byte_100BCE1B8 == 1)
      {
        goto LABEL_21;
      }
    }

    else if (v6 == 4)
    {
      if (byte_100BCE1BA)
      {
        goto LABEL_21;
      }
    }

    else if (!*(*(v4 + 8) + 2) && (byte_100BCE1B9 & 1) != 0)
    {
LABEL_21:
      *a1 = v4;
      sub_1000C2318(qword_100B60328, v8);
      return 1;
    }

LABEL_19:
    sub_1000BC828(&v8);
    v3 = v8;
    if (!v8)
    {
      return 0;
    }
  }

  *a1 = v4;
  return 1;
}

char *sub_1000B914C(unsigned int a1)
{
  v1 = a1;
  result = sub_100007618(24 * a1 + 16, 0x11AD2B49uLL);
  if (result)
  {
    *result = v1;
    *(result + 1) = 0;
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_1000B9194(uint64_t a1)
{
  if (sub_1000B8B5C(a1))
  {
    if (*(a1 + 26))
    {
      return 1288;
    }

    else
    {
      return 679;
    }
  }

  else
  {
    v3 = sub_1000ABD24(a1);
    v2 = word_100BCE184;
    if (!v3)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1000B91F0(unsigned __int16 *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (sub_1000B8B5C(a1))
  {
    if (DWORD2(xmmword_100BCE2E0))
    {
      v8 = dword_100BCE0C0 == 2;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      return 103;
    }

    if (BYTE14(xmmword_100BCE158[0]) != 1)
    {
LABEL_10:
      if (!sub_10000C240())
      {
        return 613;
      }

      sub_10000AF54("writeAclData, transmit is not ready");
      v9 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        return 613;
      }

      goto LABEL_12;
    }

    if (WORD3(xmmword_100BCE158[0]))
    {
      if (WORD5(xmmword_100BCE158[0]) <= 2u)
      {
        goto LABEL_10;
      }
    }

    else if (!WORD5(xmmword_100BCE158[0]))
    {
      goto LABEL_10;
    }

    if (*(a4 + 4) >= WORD6(xmmword_100BCE158[0]))
    {
      v19 = WORD6(xmmword_100BCE158[0]);
    }

    else
    {
      v19 = *(a4 + 4);
    }

    if (a3 != 2)
    {
      if (a3 != 1)
      {
        if (a3)
        {
          return 101;
        }

        if (*(a1 + 2) || (v35 = *a1, v35 == 0xFFFF))
        {
          if (!sub_10000C240())
          {
            return 601;
          }

          sub_10000AF54("writeAclData, %d is not an ACL connection handle", *a1);
          v20 = sub_10000C050(0x2Eu);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            return 601;
          }

          goto LABEL_163;
        }

        if (*(a1 + 152) == 2)
        {
          ++WORD2(xmmword_100BCE158[0]);
        }

        v34 = v35 & 0xFFF;
LABEL_121:
        if (a2)
        {
          if (a2 != 1)
          {
            if (a2 == 2)
            {
              v34 |= 0x2000u;
              goto LABEL_159;
            }

            return 101;
          }

          v34 |= 0x1000u;
        }

        else if ((byte_100BCDFEA & 0x40) == 0)
        {
          sub_1000D660C();
        }

LABEL_159:
        v43 = *(a1 + 54);
        if (v43 == 6)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("writeAclData, handle %d is disconnecting.  Sending anyway", *a1);
            v45 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              sub_100814450();
            }
          }
        }

        else if (v43 == 7)
        {
          if (!sub_10000C240())
          {
            return 601;
          }

          sub_10000AF54("writeAclData, handle %d is disconnected.  discarding", *a1);
          v44 = sub_10000C050(0x2Eu);
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            return 601;
          }

          goto LABEL_163;
        }

        if (off_100BCE0A8)
        {
          result = 629;
          goto LABEL_175;
        }

        result = sub_10001FD90(2, v34, a4, v19);
        if (result != 625)
        {
          if (result)
          {
            goto LABEL_175;
          }

          BYTE14(xmmword_100BCE158[0]) = 0;
        }

        --WORD5(xmmword_100BCE158[0]);
        ++a1[8];
        ++WORD1(xmmword_100BCE158[0]);
        (*qword_100BCE0C8)(a1);
        result = 0;
LABEL_175:
        if (BYTE14(xmmword_100BCE158[0]) == 1)
        {
          if (WORD3(xmmword_100BCE158[0]))
          {
            v41 = WORD5(xmmword_100BCE158[0]) > 2u;
          }

          else
          {
            v41 = WORD5(xmmword_100BCE158[0]) != 0;
          }

          goto LABEL_180;
        }

LABEL_179:
        v41 = 0;
LABEL_180:
        byte_100BCE1B9 = v41;
        return result;
      }

      if (&xmmword_100B5F8D8 != a1)
      {
        if (!sub_10000C240())
        {
          return 601;
        }

        sub_10000AF54("writeAclData not the active broadcast connection handle");
        v27 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          return 601;
        }

        goto LABEL_163;
      }

      v32 = *a1;
      v33 = 0x4000;
LABEL_116:
      v34 = v33 & 0xF000 | v32 & 0xFFF;
      goto LABEL_121;
    }

    if (&xmmword_100B5FA50 == a1)
    {
      v32 = *a1;
      v33 = 0x8000;
      goto LABEL_116;
    }

    if (!sub_10000C240())
    {
      return 601;
    }

    sub_10000AF54("writeAclData not the piconet broadcast connection handle");
    v28 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return 601;
    }

LABEL_163:
    sub_100814E94();
    return 601;
  }

  if (!sub_1000ABD24(a1))
  {
    if (sub_1000B7994(a1))
    {
      v12 = byte_100BCE1B0;
      if (byte_100BCE1B0)
      {
        for (i = &qword_100BCE1A8; *(a1 + 14) != *(i - 1); i += 2)
        {
          if (!--v12)
          {
            return 105;
          }
        }

        if (*(a4 + 4) >= *(i - 2))
        {
          v18 = *(i - 2);
        }

        else
        {
          v18 = *(a4 + 4);
        }

        if (a2 >= 2)
        {
          sub_1000D660C();
        }

        result = (*i)(*a1, a2 == 0, a4, v18);
        if (result != 625)
        {
          if (result)
          {
LABEL_54:
            byte_100BCE1B8 = *(i - 2);
            return result;
          }

          *(i - 2) = 0;
        }

        --*(i - 3);
        ++WORD1(xmmword_100BCE158[0]);
        ++a1[8];
        (*qword_100BCE0C8)(a1);
        result = 0;
        goto LABEL_54;
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Can't write to unknown handle type.");
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100814A68();
      }
    }

    return 105;
  }

  if (DWORD2(xmmword_100BCE2E0))
  {
    v11 = dword_100BCE0C0 == 2;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 103;
  }

  if (WORD4(xmmword_100BCE158[0]))
  {
    v14 = xmmword_100BCE158[0];
  }

  else
  {
    v14 = 0;
  }

  if ((v14 & 1) != 0 || word_100BCE180)
  {
    if (!LOBYTE(xmmword_100BCE158[0]))
    {
      goto LABEL_32;
    }
  }

  else
  {
    sub_1000D660C();
    if ((xmmword_100BCE158[0] & 1) == 0)
    {
LABEL_32:
      v15 = 0;
      if (byte_100BCE186 == 1 && word_100BCE182)
      {
        v16 = *(a4 + 4);
        if (a2 == 3)
        {
          goto LABEL_77;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }
  }

  if (BYTE14(xmmword_100BCE158[0]) == 1)
  {
    v15 = 1;
    if (WORD3(xmmword_100BCE158[0]))
    {
      if (WORD5(xmmword_100BCE158[0]) > 2u)
      {
        goto LABEL_68;
      }
    }

    else if (WORD5(xmmword_100BCE158[0]))
    {
      goto LABEL_68;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_67:
  if ((*(a1 + 129) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      return 613;
    }

    sub_10000AF54("writeLeData, transmit is not ready");
    v22 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 613;
    }

LABEL_12:
    sub_100814E0C();
    return 613;
  }

LABEL_68:
  v16 = *(a4 + 4);
  if (a2 == 3)
  {
    goto LABEL_77;
  }

  if (v15)
  {
    v21 = WORD6(xmmword_100BCE158[0]);
    goto LABEL_75;
  }

LABEL_74:
  v21 = word_100BCE184;
LABEL_75:
  if (v16 >= v21)
  {
    v16 = v21;
  }

LABEL_77:
  if (a3 == 2)
  {
    if (&xmmword_100B5FA50 != a1)
    {
      if (!sub_10000C240())
      {
        return 601;
      }

      sub_10000AF54("writeLeData not the piconet broadcast connection handle");
      v26 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        return 601;
      }

      goto LABEL_163;
    }

    v30 = *a1;
    v31 = 0x8000;
    goto LABEL_106;
  }

  if (a3 == 1)
  {
    if (&xmmword_100B5F8D8 != a1)
    {
      if (!sub_10000C240())
      {
        return 601;
      }

      sub_10000AF54("writeLeData not the active broadcast connection handle");
      v25 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        return 601;
      }

      goto LABEL_163;
    }

    v30 = *a1;
    v31 = 0x4000;
LABEL_106:
    v24 = v31 & 0xF000 | v30 & 0xFFF;
    goto LABEL_107;
  }

  if (a3)
  {
    return 101;
  }

  if (*(a1 + 2) != 4 || (v23 = *a1, v23 == 0xFFFF))
  {
    if (!sub_10000C240())
    {
      return 601;
    }

    sub_10000AF54("writeLeData, %d is not an LE connection handle", *a1);
    v29 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return 601;
    }

    goto LABEL_163;
  }

  v24 = v23 & 0xFFF;
LABEL_107:
  result = 101;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v24 |= 0x2000u;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v24 |= 0x3000u;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v24 |= 0x1000u;
  }

  else if ((byte_100BCDFEA & 0x40) == 0)
  {
    sub_1000D660C();
  }

  v36 = *(a1 + 124);
  if (v36 == 6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeLeData, handle %d is disconnecting.  Sending anyway", *a1);
      v38 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_100814450();
      }
    }
  }

  else if (v36 == 7)
  {
    if (!sub_10000C240())
    {
      return 601;
    }

    sub_10000AF54("writeLeData, handle %d is disconnected.  discarding", *a1);
    v37 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      return 601;
    }

    goto LABEL_163;
  }

  if (off_100BCE0A8)
  {
    result = 629;
    goto LABEL_149;
  }

  result = sub_10001FD90(2, v24, a4, v16);
  if (result != 625)
  {
    if (result)
    {
      goto LABEL_149;
    }

    v39 = 46;
    if (LOBYTE(xmmword_100BCE158[0]))
    {
      v39 = 14;
    }

    *(xmmword_100BCE158 + v39) = 0;
  }

  if ((*(a1 + 129) & 1) == 0)
  {
    v40 = 42;
    if (LOBYTE(xmmword_100BCE158[0]))
    {
      v40 = 10;
    }

    --*(xmmword_100BCE158 + v40);
    ++WORD1(xmmword_100BCE158[0]);
    ++a1[8];
  }

  (*qword_100BCE0C8)(a1);
  result = 0;
LABEL_149:
  if (LOBYTE(xmmword_100BCE158[0]) == 1)
  {
    if (BYTE14(xmmword_100BCE158[0]) == 1)
    {
      v41 = WORD5(xmmword_100BCE158[0]) != 0;
      if (WORD3(xmmword_100BCE158[0]))
      {
        v41 = WORD5(xmmword_100BCE158[0]) > 2u;
      }

      goto LABEL_180;
    }

    goto LABEL_179;
  }

  if (byte_100BCE186 == 1 && word_100BCE182)
  {
    v42 = 1;
  }

  else
  {
    v42 = *(a1 + 129);
  }

  byte_100BCE1BA = v42 & 1;
  return result;
}

int *sub_1000B9BD8(int *result)
{
  if (!*(result + 2))
  {
    v11[3] = v1;
    v11[4] = v2;
    v3 = result;
    *(result + 192) = 1;
    if (*(result + 152) == 2 && *(result + 256) == 1)
    {
      v11[0] = 0;
      sub_100016250(v11);
      result = sub_100306DA4(v3 + 51, v11);
      if (result <= (5 * *(v3 + 68)) >> 3)
      {
        result = sub_1000D6178(0x2Au, v4, v5, v6, v7, v8, v9, v10, v3);
        if (!result)
        {
          *(v3 + 152) |= 0x80u;
        }
      }

      *(v3 + 51) = v11[0];
    }
  }

  return result;
}

uint64_t sub_1000B9C80(pthread_cond_t *a1)
{
  pthread_cond_wait(a1, &stru_100B5AC18);
  v1 = pthread_self();

  return pthread_getname_np(v1, &byte_100B5AC58, 0x40uLL);
}

void sub_1000B9CC0()
{
  ptr = sub_1000BAE38(0, sub_1000BC728);
  v27 = 0;
  while (1)
  {
    v28 = 0;
    v0 = sub_1000B11F4();
    v1 = qword_100B60318;
    if (qword_100B60318)
    {
      v2 = v0;
      v3 = qword_100B60318;
      do
      {
        v4 = v3[7];
        v5 = v2 - v3[6];
        if (v5 > v4 || v4 == 0xFFFFFFFF && v5 >= 0xFA1)
        {
          v6 = sub_1000BA28C(v3, &v28, v2, &v27);
          if (v6)
          {
            goto LABEL_18;
          }

          v1 = qword_100B60318;
        }

        v3 = v3[10];
        if (v3 == v1)
        {
          v28 = 0;
          if (!v1)
          {
            goto LABEL_20;
          }

LABEL_14:
          while (1)
          {
            v6 = sub_1000BA28C(v1, &v28, v2, &v27);
            if (v6)
            {
              break;
            }

            v1 = *(v1 + 80);
            if (v1 == qword_100B60318)
            {
              v28 = 0;
              goto LABEL_20;
            }

            if (!v1)
            {
              goto LABEL_20;
            }
          }

LABEL_18:
          v7 = v6;
          goto LABEL_25;
        }
      }

      while (v3);
      if (v1)
      {
        goto LABEL_14;
      }
    }

LABEL_20:
    if (sub_10000C248(qword_100B60330))
    {
      v7 = qword_100B60330;
      v28 = sub_1000BA5F8(qword_100B60330);
    }

    else
    {
      v8 = sub_1000B9010(&v28);
      v7 = qword_100B60328;
      if (!v8 || !v28)
      {
        goto LABEL_89;
      }
    }

    if (!v7)
    {
      break;
    }

LABEL_25:
    sub_1000B9194(*(v28 + 8));
    v9 = v28;
    v10 = *(v28 + 4);
    if (v10 != 1)
    {
      if (v10)
      {
        sub_1000D660C();
        v10 = 1;
      }

      else
      {
        *(v28 + 4) = 1;
        if (*(v9 + 1) && (byte_100BCDFEA & 0x40) != 0)
        {
          v10 = 0;
        }

        else if (*(v9 + 36) == 43)
        {
          v10 = 3;
        }

        else
        {
          v10 = 2;
        }
      }
    }

    v11 = sub_1000B91F0(*(v9 + 8), v10, *(v9 + 16), *(v9 + 24));
    v12 = v11;
    if (v11 == 613)
    {
      if (!sub_1002565E8())
      {
        sub_1000C52F4(613);
      }
    }

    else if (!v11)
    {
      if (*(*(v9 + 24) + 4))
      {
        *(v9 + 4) = 1;
      }

      else
      {
        *(v9 + 4) = 2;
      }

      goto LABEL_49;
    }

    if (sub_10000C240() && (sub_10000AF54("OI_HCIAPI_WriteAclData failed with %!", v12), v13 = sub_10000C050(0x2Fu), os_log_type_enabled(v13, OS_LOG_TYPE_ERROR)))
    {
      sub_1008145E4(&v31, &v32);
      if (!v12)
      {
        goto LABEL_49;
      }
    }

    else if (!v12)
    {
      goto LABEL_49;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Send packet fail with status %!", v12);
      v14 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1008145E4(&v29, &v30);
      }
    }

    if (v12 == 118 || v12 == 613)
    {
      goto LABEL_93;
    }

    *(v28 + 4) = 2;
LABEL_49:
    v15 = v28;
    if (*(v28 + 4) == 2)
    {
      *buf = 0;
      v16 = sub_1000ABC7C(*(v28 + 36), buf);
      v17 = v28;
      if (!v16 && *v28 != 1)
      {
        *(*buf + 80) += *(v28 + 34);
      }

      if (*(v17 + 56))
      {
        v18 = sub_1000CBF58(*(v17 + 8));
        v17 = v28;
        v19 = *(v28 + 8);
        *(v19 + 18) = v18;
        *(v19 + 8) = *(v17 + 56);
      }

      if (v17 != sub_1000BAE84(v7))
      {
        sub_10029DCCC();
        sub_1000D660C();
      }

      if (v7 == qword_100B60328)
      {
        if (qword_100B60318)
        {
          v7 = qword_100B60318;
          while (*(v7 + 24) != *(v28 + 36))
          {
            v7 = *(v7 + 80);
            if (v7 == qword_100B60318 || v7 == 0)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
LABEL_66:
          sub_1000D660C();
          v7 = 0;
        }
      }

      if (v7 == qword_100B60330)
      {
        if (qword_100B60318)
        {
          v7 = qword_100B60318;
          while (*(v7 + 24) != *(v28 + 36))
          {
            v7 = *(v7 + 80);
            if (v7 == qword_100B60318 || v7 == 0)
            {
              goto LABEL_76;
            }
          }
        }

        else
        {
LABEL_76:
          sub_1000D660C();
          v7 = 0;
        }
      }

      if (*(v7 + 40))
      {
        sub_10002242C(*(v7 + 32));
      }

      (*(v7 + 72))(v7, v28);
    }

    else if (qword_100B60328 != v7)
    {
      if (sub_1000BAE84(v7) != v15)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Wrong packet dequeued !!!");
          v22 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = sub_10000C0FC();
            *buf = 136446466;
            *&buf[4] = v23;
            v34 = 1024;
            v35 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }
      }

      sub_1000B8B8C(qword_100B60328, v15, 8);
    }
  }

  v7 = qword_100B60328;
LABEL_89:
  v24 = qword_100B60318;
  if (sub_10000C248(v7) || sub_10000C248(qword_100B60330))
  {
LABEL_91:
    v25 = 1;
  }

  else
  {
    do
    {
      if (!v24)
      {
        break;
      }

      if (*(v24 + 16) == 1 && sub_10000C248(*(v24 + 8)) || sub_10000C248(*v24))
      {
        goto LABEL_91;
      }

      v24 = *(v24 + 80);
    }

    while (v24 != qword_100B60318);
    v25 = 0;
  }

  dword_100B6033C = v25;
LABEL_93:
  sub_1000BBDD0(ptr);
}

uint64_t sub_1000BA218()
{
  sub_1001C5D20("TxLoop");
  sub_1000031B0();
  if (byte_100B60339 == 1)
  {
    do
    {
      sub_1000B9CC0();
      sub_1000B9C80(&stru_100B60348);
    }

    while ((byte_100B60339 & 1) != 0);
  }

  sub_10000C198();
  byte_100B603A8 = 0;
  j__pthread_cond_signal(&stru_100B60378);
  return 0;
}

uint64_t sub_1000BA28C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  if (!(*(a1 + 64))())
  {
    return 0;
  }

  if (sub_1000B9010(a2))
  {
    if (qword_100B60318)
    {
      v8 = *(*a2 + 36);
      v9 = qword_100B60318;
      while (*(v9 + 24) != v8)
      {
        v9 = *(v9 + 80);
        if (v9 == qword_100B60318 || v9 == 0)
        {
          goto LABEL_11;
        }
      }

      if (*(v9 + 16) != 1 || (sub_1000BA8E4(v8) & 1) != 0)
      {
        v19 = &qword_100B60328;
        goto LABEL_47;
      }

      return 0;
    }

LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Fragmented packet with cid 0x%4x available, but no queue with corresponding CID exists", *(*a2 + 36));
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    goto LABEL_14;
  }

  v13 = sub_1000B47B8(qword_100B60330);
  v14 = v13;
  v25 = v13;
  if (!a2)
  {
    sub_1000D660C();
    if (v14)
    {
      goto LABEL_21;
    }

LABEL_36:
    if (*(v7 + 16) == 1)
    {
      if (!sub_10000C248(*(v7 + 8)))
      {
        if (!sub_1000BA8E4(*(v7 + 24)))
        {
          return 0;
        }

        v24 = sub_1000BA5F8(*v7);
        *a2 = v24;
        if (!*v24)
        {
          sub_1000BA988(v24);
        }

LABEL_41:
        if (qword_100B60328 != v7 && qword_100B60330 != v7)
        {
          goto LABEL_54;
        }

        return v7;
      }

      v18 = *(v7 + 8);
    }

    else
    {
      v18 = *v7;
    }

    *a2 = sub_1000BA5F8(v18);
    goto LABEL_41;
  }

  if (!v13)
  {
    goto LABEL_36;
  }

  while (1)
  {
LABEL_21:
    v15 = sub_1000BC720(v14);
    v16 = *(v15 + 8);
    if (*a2 && v16 != *(*a2 + 8))
    {
      goto LABEL_35;
    }

    if (!sub_1000B8B5C(v16) && !sub_1000C0E08(*(v15 + 8)) && !sub_1000ABD24(*(v15 + 8)) && !sub_1000B7994(*(v15 + 8)))
    {
      break;
    }

    v17 = *(*(v15 + 8) + 2);
    if (v17 == 8)
    {
      if (byte_100BCE1B8 == 1)
      {
        goto LABEL_55;
      }
    }

    else if (v17 == 4)
    {
      if (byte_100BCE1BA)
      {
        goto LABEL_55;
      }
    }

    else if (!*(*(v15 + 8) + 2) && (byte_100BCE1B9 & 1) != 0)
    {
LABEL_55:
      *a2 = v15;
      sub_1000C2318(qword_100B60330, v25);
      v15 = *a2;
      goto LABEL_56;
    }

LABEL_35:
    sub_1000BC828(&v25);
    v14 = v25;
    if (!v25)
    {
      goto LABEL_36;
    }
  }

  *a2 = v15;
LABEL_56:
  if (!qword_100B60318)
  {
LABEL_64:
    if (sub_10000C240())
    {
      sub_10000AF54("Unstallable packet with cid 0x%4x available, but no queue with corresponding CID exists", *(*a2 + 36));
      v23 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

LABEL_14:
    sub_1000D660C();
    return 0;
  }

  v21 = *(v15 + 36);
  v9 = qword_100B60318;
  while (*(v9 + 24) != v21)
  {
    v9 = *(v9 + 80);
    if (v9 == qword_100B60318 || v9 == 0)
    {
      goto LABEL_64;
    }
  }

  if (*(v9 + 16) == 1 && (sub_1000BA8E4(v21) & 1) == 0)
  {
    return 0;
  }

  v19 = &qword_100B60330;
LABEL_47:
  v7 = *v19;
  if (*v19)
  {
    if (v7 == qword_100B60328 || v7 == qword_100B60330)
    {
      *a4 = a3 - *(v9 + 48);
      *(v9 + 48) = a3;
    }

    else
    {
LABEL_54:
      *a4 = a3 - *(v7 + 48);
      *(v7 + 48) = a3;
    }
  }

  return v7;
}

uint64_t sub_1000BA5F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BA610(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  *a2 = 0;
  if (*(a1 + 29))
  {
    return 0;
  }

  v5 = (a1 + 8);
  if (!sub_10000C248(*(a1 + 8)))
  {
    v5 = a1;
    if (!sub_10000C248(*a1))
    {
      if (*(a1 + 56) == 0xFFFFFFFFLL)
      {
        v11 = sub_1000B11F4();
        result = 0;
        *(a1 + 48) = v11;
        return result;
      }

      return 0;
    }
  }

  v6 = sub_1000BA5F8(*v5);
  v7 = v6;
  *(a1 + 96) = *v5;
  v8 = *(v6 + 8);
  v9 = *(v8 + 2);
  if (v9 == 8)
  {
    if (byte_100BCE1B8 == 1)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v9 == 4)
  {
    v10 = &byte_100BCE1BA;
  }

  else
  {
    if (*(v8 + 2))
    {
      goto LABEL_16;
    }

    v10 = &byte_100BCE1B9;
  }

  if ((*v10 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (!sub_1000B8B5C(*(v6 + 8)) && !sub_1000C0E08(v8) && !sub_1000ABD24(v8) && !sub_1000B7994(v8) || (*(*(v7 + 8) + 2) || (result = sub_1000BB0CC(v8), result)) && (result = sub_1000B8E94(v8, *(a1 + 27)), result))
  {
    *a2 = v7;
    return 1;
  }

  return result;
}

uint64_t sub_1000BA760(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (word_100B60268)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = qword_100B60260 + v4;
      if (*(qword_100B60260 + v4))
      {
        v9 = *(v8 + 96);
        if (v9)
        {
          if (*(v9 + 27) >= 0xBu)
          {
            v10 = sub_1000B12AC((qword_100B60260 + v4));
            if (a1 && *v10)
            {
              if (*(*sub_1000B12AC(v8) + 2) == *(a1 + 2))
              {
                ++v7;
              }

              if (*sub_1000B12AC(v8) == a1)
              {
                ++v6;
              }
            }

            else if (sub_10000C240())
            {
              sub_10000AF54("L2CAP reserved priority channel does not contain valid ACL");
              v11 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                sub_10080FE78(v13, &v14, v11);
              }
            }
          }
        }
      }

      ++v5;
      v4 += 144;
    }

    while (v5 < word_100B60268);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  return v6;
}

uint64_t sub_1000BA8E4(unsigned int a1)
{
  v4 = 0;
  if (sub_1000ABC7C(a1, &v4))
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Invalid channel 0x%x", a1);
      v3 = sub_10000C050(0x2Fu);
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10080F7A0();
        return 0;
      }
    }
  }

  else
  {
    return *(sub_1000B12AC(v4) + 64) != 3 || sub_1000BAC14(v4);
  }

  return result;
}

void sub_1000BA988(uint64_t a1)
{
  v2 = *(a1 + 36);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  if (!sub_1000ABC7C(v2, &v13) && (*v13 != 4 ? (v4 = *v13 == 2) : (v4 = 1), v4))
  {
    if (!*(a1 + 24))
    {
      WORD1(v14) = *(sub_1000B12AC(v13) + 8);
      if (*a1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Why are we trying to add a header to a S-Frame ???");
          v5 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        v6 = sub_1000BACB0(v13, &v14 + 2, *(a1 + 33), *(a1 + 38));
        v7 = v6 + 4;
        if (*(a1 + 33) == 1)
        {
          *(&v14 + (v6 + 4)) = *(a1 + 34);
          v7 = v6 + 6;
        }

        v8 = *(*(a1 + 40) + 4) + v7 - 4;
        LOBYTE(v14) = v8 + 2 * (*(sub_1000B12AC(v13) + 78) != 0);
        BYTE1(v14) = (v8 + 2 * (*(sub_1000B12AC(v13) + 78) != 0)) >> 8;
        v9 = sub_1000B914C(7u);
        *(a1 + 24) = v9;
        if (v9)
        {
          sub_10001F968(v9, &v14, v7, 0);
          if (!*a1)
          {
            sub_1000BAD68(*(a1 + 24), *(a1 + 40));
          }

          if (*(sub_1000B12AC(v13) + 78))
          {
            sub_10029C6AC(*(a1 + 24), &v12);
            sub_10001F968(*(a1 + 24), &v12, 2uLL, 0);
          }

          v10 = *(*(a1 + 24) + 4);
          if (v10 > *(sub_1000B12AC(v13) + 72))
          {
            sub_1000D660C();
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Failed to allocate a MBUF for flow control.");
          v11 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Failed to get channel for CID 0x%x", v2);
    v3 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      sub_1000E09C0();
    }
  }
}

BOOL sub_1000BAC14(int *a1)
{
  v2 = sub_1000B12AC(a1);
  v3 = sub_10000C248(*(*(v2 + 128) + 176));
  return v3 < *(sub_1000B12AC(a1) + 66) && (*(*(sub_1000B12AC(a1) + 128) + 15) & 1) == 0 && *(*(sub_1000B12AC(a1) + 128) + 2) == 1;
}

uint64_t sub_1000BACB0(int *a1, _WORD *a2, __int16 a3, char a4)
{
  v8 = *(sub_1000B12AC(a1) + 64);
  if ((v8 - 3) < 2)
  {
    v11 = ((sub_1000BAD44(a1) & 1) << 7) | (2 * (a4 & 0x3F));
    *a2 = (a3 << 14) | ((sub_1000BAC90(a1) & 0x3F) << 8) | v11;
    return 2;
  }

  else
  {
    if (v8)
    {
      v9 = v8 == 5;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      sub_1000D660C();
    }

    return 0;
  }
}

uint64_t sub_1000BAD44(int *a1)
{
  v1 = *(sub_1000B12AC(a1) + 128);
  result = *(v1 + 14);
  *(v1 + 14) = 0;
  return result;
}

uint64_t sub_1000BAD68(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1[2];
  if (v3 >= *a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MBUF Append Mbuf overflow: alloc %d", *a1);
      v6 = sub_10000C050(0x30u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 124;
  }

  else
  {
    result = 0;
    v5 = &a1[24 * v3];
    a1[2] = v3 + 1;
    *(a1 + 2) += *(a2 + 4);
    v5[16] = 4;
    *(v5 + 3) = a2;
    *(v5 + 9) = *(a2 + 4);
    v5[32] = *(a2 + 1);
    *(v5 + 17) = *(a2 + 6);
  }

  return result;
}

void *sub_1000BAE38(uint64_t a1, uint64_t a2)
{
  result = sub_100007618(0x28uLL, 0x10A0040C9A46F13uLL);
  if (result)
  {
    *result = a1;
    result[1] = a2;
    result[2] = 0;
    result[3] = 0;
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1000BAE84(uint64_t *a1)
{
  v2 = qword_100B60328;
  if (qword_100B60328 != a1)
  {
    v2 = qword_100B60330;
    if (qword_100B60330 != a1)
    {
      if (*(a1 + 16) == 1)
      {
        if (sub_10000C248(a1[1]))
        {
          v2 = a1[1];
          goto LABEL_6;
        }

        if (!sub_10000C248(*a1))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to dequeue packet, there is no SFrames or IFrames queued.");
            v10 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          sub_1000D660C();
          return 0;
        }

        v9 = *(a1 + 5);
        if (v9)
        {
          *(a1 + 5) = v9 - 1;
        }

        v8 = sub_1000BB054(*a1, 0);
        if (sub_10000C248(*a1) - *(a1 + 5) != *(a1 + 26) - 1)
        {
          return v8;
        }
      }

      else
      {
        if (!sub_10000C248(*a1))
        {
          sub_1000D660C();
        }

        v4 = sub_1000E10E0(*(a1 + 12));
        v5 = sub_10000C248(*a1);
        v6 = *(a1 + 26);
        if (v4)
        {
          v7 = v6 - sub_10029DECC(*(a1 + 12));
          v8 = sub_1000BB054(*a1, 0);
          if (v5 != v7)
          {
            return v8;
          }
        }

        else
        {
          v8 = sub_1000BB054(*a1, 0);
          if (v5 < v6)
          {
            return v8;
          }
        }
      }

      v11[0] = 2;
      v11[1] = a1 + 3;
      sub_10002195C(sub_10029F154, v11, 0, 0);
      return v8;
    }
  }

LABEL_6:

  return sub_1000BB054(v2, 0);
}

uint64_t sub_1000BB054(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  v5 = v3[1];
  if (a2)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v6(*v3);
      v3 = *(a1 + 16);
    }
  }

  sub_10000C1E8(v3);
  *(a1 + 16) = v5;
  if (!v5)
  {
    *(a1 + 24) = 0;
  }

  --*(a1 + 32);
  return v4;
}

uint64_t sub_1000BB0CC(uint64_t a1)
{
  if (*(a1 + 2))
  {
    sub_1000D660C();
  }

  return (*(a1 + 152) >> 7) ^ 1u;
}

uint64_t sub_1000BB110()
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v0 = dword_100BCE0C0 == 2;
  }

  else
  {
    v0 = 0;
  }

  if (v0)
  {
    return WORD4(xmmword_100BCE158[0]);
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("OI_HCIAPI_GetTotalNumAclBuffers - not initialized");
    v2 = sub_10000C050(0x2Eu);
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100814AEC();
      return 0;
    }
  }

  return result;
}

void sub_1000BB1A4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 8) == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIFlow_HandleNumCompletedPackets: wakeupCause HCI_EVENT Packet from BT Controller (len=%d)\n", a2);
      v5 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  if (dword_100BCE0C0 != 2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("HCI not initialized, ignoring AclPacketSent event");
      v8 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100814AEC();
      }
    }

    return;
  }

  if (!a1)
  {
    v21 = "eventBuf";
    goto LABEL_69;
  }

  if (a2 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 2007, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  if (!a2)
  {
    v21 = "(numBytes) > 0";
LABEL_69:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 2004, v21);
  }

  if (a2 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 2008, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v6 = *(a1 + 1);
  if ((a2 - 2) > v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("NumCompletedPackets short packet expected %d, got %d", v6 + 2, a2);
      v7 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100814D84();
      }
    }

    return;
  }

  v9 = *(a1 + 2);
  if (v6 == ((4 * v9) | 1))
  {
    if (!*(a1 + 2))
    {
      return;
    }

    v10 = 0;
    v11 = (a2 - 1);
    while (1)
    {
      if (v10 + 3 >= v11)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 2027, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      if (v10 + 5 >= v11)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 2028, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v12 = *(a1 + v10 + 5);
      v13 = sub_1000ABB80(*(a1 + v10 + 3));
      if (!v13)
      {
        goto LABEL_58;
      }

      v14 = v13;
      v15 = *(v13 + 2);
      if (v15 > 4)
      {
        if (v15 - 5 >= 2)
        {
          if (v15 == 8)
          {
            sub_1000BB6BC(v13, v12);
            if (byte_100BCE1A6 == 1)
            {
              (*(qword_100BCE0C8 + 16))(0, 5);
            }

            goto LABEL_58;
          }

LABEL_48:
          if (sub_10000C240())
          {
            sub_10000AF54("Unknown connection type.");
            v18 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = sub_10000C0FC();
              *buf = 136446466;
              v23 = v19;
              v24 = 1024;
              v25 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          goto LABEL_58;
        }

        sub_1000BB6BC(v13, v12);
        sub_10017FE84(v14);
      }

      else if (*(v13 + 2))
      {
        if (v15 == 1)
        {
          sub_100249EA8(v13, v12);
          goto LABEL_58;
        }

        if (v15 != 4)
        {
          goto LABEL_48;
        }

        if (*(v13 + 129) == 1)
        {
          goto LABEL_55;
        }

        sub_1000BB6BC(v13, v12);
        if (LOBYTE(xmmword_100BCE158[0]) == 1)
        {
          if (BYTE14(xmmword_100BCE158[0]) != 1)
          {
            goto LABEL_58;
          }

          v16 = WORD5(xmmword_100BCE158[0]);
          if (WORD3(xmmword_100BCE158[0]))
          {
            if (WORD5(xmmword_100BCE158[0]) <= 2u)
            {
              goto LABEL_58;
            }

LABEL_55:
            (*(qword_100BCE0C8 + 16))(0, 3);
            goto LABEL_58;
          }
        }

        else
        {
          if (byte_100BCE186 != 1)
          {
            goto LABEL_58;
          }

          v16 = word_100BCE182;
        }

        if (v16)
        {
          goto LABEL_55;
        }
      }

      else
      {
        sub_1000BB6BC(v13, v12);
        if (qword_100BCE148 == v14 && !v14[8] && off_100BCE150 != 0)
        {
          off_100BCE150();
        }

        if (BYTE14(xmmword_100BCE158[0]) != 1)
        {
          goto LABEL_58;
        }

        if (WORD3(xmmword_100BCE158[0]))
        {
          if (WORD5(xmmword_100BCE158[0]) <= 2u)
          {
            goto LABEL_58;
          }

LABEL_57:
          (*(qword_100BCE0C8 + 16))(0, 1);
          goto LABEL_58;
        }

        if (WORD5(xmmword_100BCE158[0]))
        {
          goto LABEL_57;
        }
      }

LABEL_58:
      --v9;
      v10 += 4;
      if (!v9)
      {
        return;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("NumCompletedPackets bad parm length: expected %d, got %d", (4 * v9) | 1, v6);
    v20 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100814D84();
    }
  }
}

void sub_1000BB6BC(unsigned __int16 *result, unsigned int a2)
{
  v2 = a2;
  v4 = result[8];
  if (v4 < a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("hciflow inconsistency - %d packets completed for handle %d, but only %d were outstanding", v2, *result, result[8]);
      v5 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100814BF4();
      }
    }

    v2 = result[8];
    LOWORD(v4) = result[8];
  }

  result[8] = v4 - v2;
  v6 = WORD1(xmmword_100BCE158[0]);
  if (v2 > WORD1(xmmword_100BCE158[0]))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("hciflow inconsistency - %d packets completed, only %d were outstannding", v2, WORD1(xmmword_100BCE158[0]));
      v7 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100814BF4();
      }
    }

    v6 = WORD1(xmmword_100BCE158[0]);
    v2 = WORD1(xmmword_100BCE158[0]);
  }

  v8 = v6 - v2;
  WORD1(xmmword_100BCE158[0]) = v8;
  if (!*(result + 2) && *(result + 152) == 2)
  {
    if (WORD2(xmmword_100BCE158[0]) >= v2)
    {
      WORD2(xmmword_100BCE158[0]) -= v2;
    }

    else
    {
      sub_1000D660C();
      WORD2(xmmword_100BCE158[0]) = 0;
      v8 = WORD1(xmmword_100BCE158[0]);
    }
  }

  if (!v8)
  {
    WORD2(xmmword_100BCE158[0]) = 0;
  }

  v9 = *(result + 2);
  if (v9 > 4)
  {
    if (v9 - 5 < 2)
    {
      word_100BCE192 += v2;
      goto LABEL_38;
    }

    if (v9 == 8)
    {
      word_100BCE1A2 += v2;
      byte_100BCE1B8 = byte_100BCE1A6;
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if (!*(result + 2))
  {
    goto LABEL_24;
  }

  if (v9 != 4)
  {
LABEL_30:
    if (sub_10000C240())
    {
      sub_10000AF54("Unexpected connection type");
      v13 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100814A68();
      }
    }

    goto LABEL_38;
  }

  if (LOBYTE(xmmword_100BCE158[0]) != 1)
  {
    word_100BCE182 += v2;
    v14 = byte_100BCE186;
    if (!word_100BCE182)
    {
      v14 = 0;
    }

    byte_100BCE1BA = v14;
  }

  else
  {
LABEL_24:
    v10 = WORD5(xmmword_100BCE158[0]) + v2;
    WORD5(xmmword_100BCE158[0]) += v2;
    if (BYTE14(xmmword_100BCE158[0]) == 1)
    {
      v11 = v10 != 0;
      v12 = v10 > 2u;
      if (!WORD3(xmmword_100BCE158[0]))
      {
        v12 = v11;
      }
    }

    else
    {
      v12 = 0;
    }

    byte_100BCE1B9 = v12;
  }

LABEL_38:
  v15 = result[9];
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v17 < 0 == v16)
  {
    result[9] = v17;
    if (!v17)
    {
      v18 = *(result + 1);
      if (v18)
      {
        *(result + 1) = 0;
        result[9] = 0;
      }

      else
      {
        sub_1000D660C();
        v18 = *(result + 1);
        *(result + 1) = 0;
        result[9] = 0;
        if (!v18)
        {
          return;
        }
      }

      v18(result);
    }
  }
}

void sub_1000BB990(uint64_t result)
{
  if (!result && dword_100B6033C == 1 || result && dword_100B6033C != 2)
  {
    dword_100B6033C = 2;
    sub_1000B9CC0();
  }
}

void sub_1000BB9CC(void *a1)
{
  sub_1000B7B40(a1);

  sub_10000C1E8(a1);
}

uint64_t sub_1000BBA04(unsigned int a1, uint64_t a2)
{
  v4 = 0;
  if (sub_1000ABC7C(a1, &v4))
  {
    return 533;
  }

  if (*(sub_1000B12AC(v4) + 64) == 3)
  {
    return sub_1000BC048(v4, a2);
  }

  return 534;
}

uint64_t sub_1000BBA6C(int *a1)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 156) != 1 || !*(sub_1000B12AC(a1) + 68) || *(*(sub_1000B12AC(a1) + 128) + 164))
  {
    return 0;
  }

  if (*(*(sub_1000B12AC(a1) + 128) + 160))
  {
    v4 = *(*(sub_1000B12AC(a1) + 128) + 160);
    v5 = sub_1000B12AC(a1);
    v6 = sub_1000B7ADC(v4, (5243 * (*(v5 + 68) >> 2)) >> 17);
  }

  else
  {
    v10[1] = a1 + 1;
    v10[0] = 2;
    v7 = (5243 * (*(sub_1000B12AC(a1) + 68) >> 2)) >> 17;
    v8 = sub_1000B12AC(a1);
    v6 = sub_10002195C(sub_10029A4CC, v10, v7, (*(v8 + 128) + 160));
  }

  v2 = v6;
  if (v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register timer %!", v2);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v2;
}

void *sub_1000BBBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = 0;
    while (1)
    {
      v11 = v7;
      result = a4(*v7, a2);
      if (!result)
      {
        break;
      }

      if (result >= 1)
      {
        result = sub_1000BBD40(a1, a2, a3);
        if (!result)
        {
          return result;
        }

        result[1] = v11;
        v14 = v10 + 1;
        if (!v10)
        {
          v14 = v8;
        }

        *v14 = result;
        goto LABEL_15;
      }

      v7 = v11[1];
      v10 = v11;
      if (!v7)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = sub_1000BBD40(a1, a2, a3);
    if (result)
    {
      v13 = *(a1 + 24);
      if (v13)
      {
        *(v13 + 8) = result;
      }

      *(a1 + 24) = result;
      if (!*(a1 + 16))
      {
        *v8 = result;
      }

LABEL_15:
      ++*(a1 + 32);
    }
  }

  return result;
}