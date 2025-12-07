uint64_t sub_100170BB8(_WORD *a1, char a2, char a3, void (*a4)())
{
  v25 = 0;
  v26 = 0;
  result = sub_10001FFD8(&v25);
  if (!result)
  {
    if (HIBYTE(v26))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2439, "OI_STATUS _SRS_EnableLEALink(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v12 = WORD2(v26);
      if (WORD1(v26) > WORD2(v26))
      {
        if (BYTE6(v26) == 2)
        {
          ++WORD2(v26);
          *(v25 + v12) = 7;
          if (HIBYTE(v26))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2440, "OI_STATUS _SRS_EnableLEALink(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v13 = WORD2(v26);
            if (WORD1(v26) > WORD2(v26))
            {
              if (BYTE6(v26) == 2)
              {
                ++WORD2(v26);
                *(v25 + v13) = 6;
                if (HIBYTE(v26))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2441, "OI_STATUS _SRS_EnableLEALink(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v26) - WORD2(v26) > 1)
                {
                  if (BYTE6(v26) == 2)
                  {
                    *(v25 + WORD2(v26)) = *a1;
                    v14 = WORD2(v26);
                    v15 = WORD2(v26) + 2;
                    WORD2(v26) += 2;
                    if (a1[10] == 70)
                    {
                      if (HIBYTE(v26))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2443, "OI_STATUS _SRS_EnableLEALink(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v26) > v15)
                      {
                        if (BYTE6(v26) == 2)
                        {
                          a2 |= 8u;
                          goto LABEL_19;
                        }

                        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2443, v23);
                      }

                      v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_52;
                    }

                    if (HIBYTE(v26))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2445, "OI_STATUS _SRS_EnableLEALink(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v26) > v15)
                    {
                      if (BYTE6(v26) == 2)
                      {
LABEL_19:
                        WORD2(v26) = v14 + 3;
                        *(v25 + v15) = a2;
                        if (HIBYTE(v26))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2447, "OI_STATUS _SRS_EnableLEALink(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v16 = WORD2(v26);
                          if (WORD1(v26) > WORD2(v26))
                          {
                            if (BYTE6(v26) == 2)
                            {
                              ++WORD2(v26);
                              *(v25 + v16) = a3;
                              if (HIBYTE(v26))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2448, "OI_STATUS _SRS_EnableLEALink(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v17 = WORD2(v26);
                                if (WORD1(v26) > WORD2(v26))
                                {
                                  if (BYTE6(v26) == 2)
                                  {
                                    ++WORD2(v26);
                                    *(v25 + v17) = 1;
                                    return sub_100020078(464, v25, BYTE4(v26), a4, sub_1001665F4, v9, v10, v11);
                                  }

                                  v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2448, v22);
                                }
                              }

                              v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_46;
                            }

                            v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2447, v21);
                          }
                        }

                        v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_42;
                      }

                      v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2445, v24);
                    }

                    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_54;
                  }

                  v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2441, v20);
                }

                v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_38;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2440, v19);
            }
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_34;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2439, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_100170F98(_WORD *a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2461, "OI_STATUS _SRS_EnableLEAStats(OI_HCI_CONNECTION_HANDLE, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 7;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2462, "OI_STATUS _SRS_EnableLEAStats(OI_HCI_CONNECTION_HANDLE, _Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 7;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2463, "OI_STATUS _SRS_EnableLEAStats(OI_HCI_CONNECTION_HANDLE, _Bool, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v19) - WORD2(v19) > 1)
                {
                  if (BYTE6(v19) == 2)
                  {
                    *(v18 + WORD2(v19)) = *a1;
                    v12 = WORD2(v19);
                    v13 = WORD2(v19) + 2;
                    WORD2(v19) += 2;
                    if (HIBYTE(v19))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2464, "OI_STATUS _SRS_EnableLEAStats(OI_HCI_CONNECTION_HANDLE, _Bool, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v19) > v13)
                    {
                      if (BYTE6(v19) == 2)
                      {
                        WORD2(v19) = v12 + 3;
                        *(v18 + v13) = a2;
                        return sub_100020078(464, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                      }

                      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2464, v17);
                    }

                    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2463, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2462, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2461, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10017120C(unsigned int a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (a1 > 3)
  {
    return 101;
  }

  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1769, "OI_STATUS _SRS_WriteLeNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 1;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1770, "OI_STATUS _SRS_WriteLeNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 13;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1771, "OI_STATUS _SRS_WriteLeNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1771, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_26;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1770, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_22;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_18:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1769, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1001713EC(unsigned int a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (a1 > 3)
  {
    return 101;
  }

  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1750, "OI_STATUS _SRS_WriteNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 1;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1751, "OI_STATUS _SRS_WriteNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 12;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1752, "OI_STATUS _SRS_WriteNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1752, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_26;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1751, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_22;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_18:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1750, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1001715CC(char a1, int a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (a2)
  {
    if (!result)
    {
      if (HIBYTE(v19))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2128, "OI_STATUS _SRS_GetPowerStats(_Bool, uint8_t, BT_VSC_ENHANCED_PROFILING_STATS_CB)");
      }

      else
      {
        v10 = WORD2(v19);
        if (WORD1(v19) > WORD2(v19))
        {
          if (BYTE6(v19) == 2)
          {
            ++WORD2(v19);
            *(v18 + v10) = 10;
            if (HIBYTE(v19))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2129, "OI_STATUS _SRS_GetPowerStats(_Bool, uint8_t, BT_VSC_ENHANCED_PROFILING_STATS_CB)");
            }

            else
            {
              v11 = WORD2(v19);
              if (WORD1(v19) > WORD2(v19))
              {
                if (BYTE6(v19) == 2)
                {
                  ++WORD2(v19);
                  *(v18 + v11) = 2;
                  if (HIBYTE(v19))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2131, "OI_STATUS _SRS_GetPowerStats(_Bool, uint8_t, BT_VSC_ENHANCED_PROFILING_STATS_CB)");
                  }

                  else
                  {
                    v12 = WORD2(v19);
                    if (WORD1(v19) > WORD2(v19))
                    {
                      if (BYTE6(v19) == 2)
                      {
                        ++WORD2(v19);
                        *(v18 + v12) = a2;
                        if (HIBYTE(v19))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2132, "OI_STATUS _SRS_GetPowerStats(_Bool, uint8_t, BT_VSC_ENHANCED_PROFILING_STATS_CB)");
                        }

                        else if (WORD1(v19) - WORD2(v19) > 3)
                        {
                          if (BYTE6(v19) == 2)
                          {
                            *(v18 + WORD2(v19)) = a1;
                            *(v18 + WORD2(v19) + 1) = 0;
                            *(v18 + WORD2(v19) + 3) = 0;
                            return sub_100020078(464, v18, (BYTE4(v19) + 4), a3, sub_10017DB08, v7, v8, v9);
                          }

                          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2132, v17);
                        }

                        v17 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                        goto LABEL_36;
                      }

                      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2131, v16);
                    }
                  }

                  v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_32;
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2129, v15);
              }
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_28;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2128, v14);
        }
      }

      v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
      goto LABEL_24;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No Status Report commandType, not sending VSC");
      v13 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 101;
  }

  return result;
}

uint64_t sub_1001718A4(char a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1818, "OI_STATUS _SRS_LESetZoneRSSIThreashold(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 4;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1819, "OI_STATUS _SRS_LESetZoneRSSIThreashold(uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 26;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1821, "OI_STATUS _SRS_LESetZoneRSSIThreashold(uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = -a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1821, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1819, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1818, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100171A78(char a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2383, "OI_STATUS _SRS_SetHiPrioRSSI(uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 2;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2384, "OI_STATUS _SRS_SetHiPrioRSSI(uint32_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 8;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2385, "OI_STATUS _SRS_SetHiPrioRSSI(uint32_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2385, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2384, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2383, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100171C48(char a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1159, "OI_STATUS _SRS_SetMinAFHLeChannels(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 1;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1160, "OI_STATUS _SRS_SetMinAFHLeChannels(uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 7;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1161, "OI_STATUS _SRS_SetMinAFHLeChannels(uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1161, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1160, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1159, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100171E18(char a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1424, "OI_STATUS _SRS_SetSARLocation(_Bool, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 1;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1425, "OI_STATUS _SRS_SetSARLocation(_Bool, _Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 14;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1426, "OI_STATUS _SRS_SetSARLocation(_Bool, _Bool, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v19);
                  if (WORD1(v19) > WORD2(v19))
                  {
                    if (BYTE6(v19) == 2)
                    {
                      ++WORD2(v19);
                      *(v18 + v12) = a1;
                      if (HIBYTE(v19))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1427, "OI_STATUS _SRS_SetSARLocation(_Bool, _Bool, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v13 = WORD2(v19);
                        if (WORD1(v19) > WORD2(v19))
                        {
                          if (BYTE6(v19) == 2)
                          {
                            ++WORD2(v19);
                            *(v18 + v13) = a2;
                            return sub_100020078(464, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                          }

                          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1427, v17);
                        }
                      }

                      v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_31;
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1426, v16);
                  }
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1425, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1424, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10017206C(char a1, char a2, __int16 a3, __int16 a4, __int16 a5, void (*a6)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (!result)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2363, "OI_STATUS _SRS_ConfigureGpioAudioSync(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v16 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          ++WORD2(v30);
          *(v29 + v16) = 7;
          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2364, "OI_STATUS _SRS_ConfigureGpioAudioSync(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v17 = WORD2(v30);
            if (WORD1(v30) > WORD2(v30))
            {
              if (BYTE6(v30) == 2)
              {
                ++WORD2(v30);
                *(v29 + v17) = 1;
                if (HIBYTE(v30))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2365, "OI_STATUS _SRS_ConfigureGpioAudioSync(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v18 = WORD2(v30);
                  if (WORD1(v30) > WORD2(v30))
                  {
                    if (BYTE6(v30) == 2)
                    {
                      ++WORD2(v30);
                      *(v29 + v18) = a1;
                      if (HIBYTE(v30))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2366, "OI_STATUS _SRS_ConfigureGpioAudioSync(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v19 = WORD2(v30);
                        if (WORD1(v30) > WORD2(v30))
                        {
                          if (BYTE6(v30) == 2)
                          {
                            ++WORD2(v30);
                            *(v29 + v19) = a2;
                            if (HIBYTE(v30))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2367, "OI_STATUS _SRS_ConfigureGpioAudioSync(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                            }

                            else if (WORD1(v30) - WORD2(v30) > 1)
                            {
                              if (BYTE6(v30) == 2)
                              {
                                *(v29 + WORD2(v30)) = a4;
                                v20 = WORD2(v30) + 2;
                                WORD2(v30) += 2;
                                if (HIBYTE(v30))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2368, "OI_STATUS _SRS_ConfigureGpioAudioSync(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                }

                                else if (WORD1(v30) - v20 > 1)
                                {
                                  if (BYTE6(v30) == 2)
                                  {
                                    *(v29 + v20) = a5;
                                    *(v29 + WORD2(v30) + 1) = HIBYTE(a5);
                                    v21 = WORD2(v30) + 2;
                                    WORD2(v30) += 2;
                                    if (HIBYTE(v30))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2369, "OI_STATUS _SRS_ConfigureGpioAudioSync(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                    }

                                    else if (WORD1(v30) - v21 > 1)
                                    {
                                      if (BYTE6(v30) == 2)
                                      {
                                        *(v29 + v21) = a3;
                                        *(v29 + WORD2(v30) + 1) = HIBYTE(a3);
                                        WORD2(v30) += 2;
                                        return sub_100020078(464, v29, BYTE4(v30), a6, sub_1001665F4, v13, v14, v15);
                                      }

                                      v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2369, v28);
                                    }

                                    v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                    goto LABEL_52;
                                  }

                                  v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2368, v27);
                                }

                                v27 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                goto LABEL_48;
                              }

                              v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2367, v26);
                            }

                            v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                            goto LABEL_44;
                          }

                          v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2366, v25);
                        }
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2365, v24);
                  }
                }

                v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2364, v23);
            }
          }

          v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2363, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_100172490(char a1, char a2, char a3, char a4, char a5, __int16 a6, __int16 a7, void (*a8)())
{
  v37 = 0;
  v38 = 0;
  result = sub_10001FFD8(&v37);
  if (!result)
  {
    if (HIBYTE(v38))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1439, "OI_STATUS _SRS_LESetScanEnable(uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v20 = WORD2(v38);
      if (WORD1(v38) > WORD2(v38))
      {
        if (BYTE6(v38) == 2)
        {
          ++WORD2(v38);
          *(v37 + v20) = 4;
          if (HIBYTE(v38))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1440, "OI_STATUS _SRS_LESetScanEnable(uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v21 = WORD2(v38);
            if (WORD1(v38) > WORD2(v38))
            {
              if (BYTE6(v38) == 2)
              {
                ++WORD2(v38);
                *(v37 + v21) = 1;
                if (HIBYTE(v38))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1442, "OI_STATUS _SRS_LESetScanEnable(uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v22 = WORD2(v38);
                  if (WORD1(v38) > WORD2(v38))
                  {
                    if (BYTE6(v38) == 2)
                    {
                      ++WORD2(v38);
                      *(v37 + v22) = a1;
                      if (HIBYTE(v38))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1443, "OI_STATUS _SRS_LESetScanEnable(uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v23 = WORD2(v38);
                        if (WORD1(v38) > WORD2(v38))
                        {
                          if (BYTE6(v38) == 2)
                          {
                            ++WORD2(v38);
                            *(v37 + v23) = a2;
                            if (HIBYTE(v38))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1444, "OI_STATUS _SRS_LESetScanEnable(uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v24 = WORD2(v38);
                              if (WORD1(v38) > WORD2(v38))
                              {
                                if (BYTE6(v38) == 2)
                                {
                                  ++WORD2(v38);
                                  *(v37 + v24) = a3;
                                  if (HIBYTE(v38))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1445, "OI_STATUS _SRS_LESetScanEnable(uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else
                                  {
                                    v25 = WORD2(v38);
                                    if (WORD1(v38) > WORD2(v38))
                                    {
                                      if (BYTE6(v38) == 2)
                                      {
                                        ++WORD2(v38);
                                        *(v37 + v25) = a4;
                                        if (HIBYTE(v38))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1446, "OI_STATUS _SRS_LESetScanEnable(uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                        }

                                        else
                                        {
                                          v26 = WORD2(v38);
                                          if (WORD1(v38) > WORD2(v38))
                                          {
                                            if (BYTE6(v38) == 2)
                                            {
                                              ++WORD2(v38);
                                              *(v37 + v26) = a5;
                                              if (HIBYTE(v38))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1447, "OI_STATUS _SRS_LESetScanEnable(uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                              }

                                              else if (WORD1(v38) - WORD2(v38) > 1)
                                              {
                                                if (BYTE6(v38) == 2)
                                                {
                                                  *(v37 + WORD2(v38)) = a6;
                                                  v27 = WORD2(v38) + 2;
                                                  WORD2(v38) += 2;
                                                  if (HIBYTE(v38))
                                                  {
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1448, "OI_STATUS _SRS_LESetScanEnable(uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                                  }

                                                  else if (WORD1(v38) - v27 > 1)
                                                  {
                                                    if (BYTE6(v38) == 2)
                                                    {
                                                      *(v37 + v27) = a7;
                                                      *(v37 + WORD2(v38) + 1) = HIBYTE(a7);
                                                      WORD2(v38) += 2;
                                                      return sub_100020078(464, v37, BYTE4(v38), a8, sub_1001665F4, v17, v18, v19);
                                                    }

                                                    v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1448, v36);
                                                  }

                                                  v36 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                  goto LABEL_66;
                                                }

                                                v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1447, v35);
                                              }

                                              v35 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                              goto LABEL_62;
                                            }

                                            v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1446, v34);
                                          }
                                        }

                                        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_58;
                                      }

                                      v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1445, v33);
                                    }
                                  }

                                  v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_54;
                                }

                                v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1444, v32);
                              }
                            }

                            v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_50;
                          }

                          v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1443, v31);
                        }
                      }

                      v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_46;
                    }

                    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1442, v30);
                  }
                }

                v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_42;
              }

              v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1440, v29);
            }
          }

          v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_38;
        }

        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1439, v28);
      }
    }

    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100172998(char a1, __int16 a2, char a3, __int16 a4, char a5, void (*a6)())
{
  v30 = 0;
  v31 = 0;
  result = sub_10001FFD8(&v30);
  if (!result)
  {
    if (HIBYTE(v31))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2069, "OI_STATUS _SRS_SetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v16 = WORD2(v31);
      if (WORD1(v31) > WORD2(v31))
      {
        if (BYTE6(v31) == 2)
        {
          ++WORD2(v31);
          *(v30 + v16) = 4;
          if (HIBYTE(v31))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2070, "OI_STATUS _SRS_SetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v17 = WORD2(v31);
            if (WORD1(v31) > WORD2(v31))
            {
              if (BYTE6(v31) == 2)
              {
                ++WORD2(v31);
                *(v30 + v17) = 42;
                if (HIBYTE(v31))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2071, "OI_STATUS _SRS_SetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v18 = WORD2(v31);
                  if (WORD1(v31) > WORD2(v31))
                  {
                    if (BYTE6(v31) == 2)
                    {
                      ++WORD2(v31);
                      *(v30 + v18) = a1;
                      if (HIBYTE(v31))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2072, "OI_STATUS _SRS_SetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v31) - WORD2(v31) > 1)
                      {
                        if (BYTE6(v31) == 2)
                        {
                          *(v30 + WORD2(v31)) = a2;
                          v19 = WORD2(v31);
                          v20 = WORD2(v31) + 2;
                          WORD2(v31) += 2;
                          if (HIBYTE(v31))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2073, "OI_STATUS _SRS_SetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v31) > v20)
                          {
                            if (BYTE6(v31) == 2)
                            {
                              WORD2(v31) = v19 + 3;
                              *(v30 + v20) = a3;
                              if (HIBYTE(v31))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2074, "OI_STATUS _SRS_SetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v31) - WORD2(v31) > 1)
                              {
                                if (BYTE6(v31) == 2)
                                {
                                  *(v30 + WORD2(v31)) = a4;
                                  v21 = WORD2(v31);
                                  v22 = WORD2(v31) + 2;
                                  WORD2(v31) += 2;
                                  if (HIBYTE(v31))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2075, "OI_STATUS _SRS_SetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else if (WORD1(v31) > v22)
                                  {
                                    if (BYTE6(v31) == 2)
                                    {
                                      WORD2(v31) = v21 + 3;
                                      *(v30 + v22) = a5;
                                      return sub_100020078(464, v30, BYTE4(v31), a6, sub_1001665F4, v13, v14, v15);
                                    }

                                    v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2075, v29);
                                  }

                                  v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_52;
                                }

                                v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2074, v28);
                              }

                              v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_48;
                            }

                            v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2073, v27);
                          }

                          v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_44;
                        }

                        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2072, v26);
                      }

                      v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_40;
                    }

                    v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2071, v25);
                  }
                }

                v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2070, v24);
            }
          }

          v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2069, v23);
      }
    }

    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_100172DA0(char a1, __int16 a2, uint64_t a3, void (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2088, "OI_STATUS _SRS_SetExtendedScanBuffer(_Bool, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v11 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v11) = 4;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2089, "OI_STATUS _SRS_SetExtendedScanBuffer(_Bool, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v12 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v12) = 43;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2090, "OI_STATUS _SRS_SetExtendedScanBuffer(_Bool, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v13 = WORD2(v19);
                  if (WORD1(v19) > WORD2(v19))
                  {
                    if (BYTE6(v19) == 2)
                    {
                      ++WORD2(v19);
                      *(v18 + v13) = a1;
                      if (HIBYTE(v19))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2091, "OI_STATUS _SRS_SetExtendedScanBuffer(_Bool, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v19) - WORD2(v19) > 1)
                      {
                        if (BYTE6(v19) == 2)
                        {
                          *(v18 + WORD2(v19)) = a2;
                          WORD2(v19) += 2;
                          return sub_100020078(464, v18, BYTE4(v19), a4, sub_1001665F4, v8, v9, v10);
                        }

                        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2091, v17);
                      }

                      v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_31;
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2090, v16);
                  }
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2089, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2088, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100173010(uint64_t a1, void (*a2)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1726, "OI_STATUS _SRS_UpdateLEPhyDenylist(const BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v5) = 6;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1727, "OI_STATUS _SRS_UpdateLEPhyDenylist(const BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v6 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                ++WORD2(v17);
                *(v16 + v6) = 7;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1728, "OI_STATUS _SRS_UpdateLEPhyDenylist(const BTAddress, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v7 = WORD2(v17);
                  if (WORD1(v17) > WORD2(v17))
                  {
                    if (BYTE6(v17) == 2)
                    {
                      ++WORD2(v17);
                      *(v16 + v7) = BYTE6(a1);
                      v15[0] = BYTE5(a1);
                      v15[1] = BYTE4(a1);
                      v15[2] = BYTE3(a1);
                      v15[3] = BYTE2(a1);
                      v15[4] = BYTE1(a1);
                      v15[5] = a1;
                      if (HIBYTE(v17))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1731, "OI_STATUS _SRS_UpdateLEPhyDenylist(const BTAddress, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v17) - WORD2(v17) > 5)
                      {
                        if (BYTE6(v17) == 2)
                        {
                          sub_1000075EC((v16 + WORD2(v17)), v15, 6uLL);
                          WORD2(v17) += 6;
                          return sub_100020078(464, v16, BYTE4(v17), a2, sub_1001665F4, v8, v9, v10);
                        }

                        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1731, v14);
                      }

                      v14 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_31;
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1728, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1727, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1726, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10017329C(__int16 a1, char a2, char a3, void (*a4)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1942, "OI_STATUS _SRS_SetHIDLatencyStats(OI_HCI_LM_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v12 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v12) = 2;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1943, "OI_STATUS _SRS_SetHIDLatencyStats(OI_HCI_LM_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v13 = WORD2(v23);
            if (WORD1(v23) > WORD2(v23))
            {
              if (BYTE6(v23) == 2)
              {
                ++WORD2(v23);
                *(v22 + v13) = 11;
                if (HIBYTE(v23))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1945, "OI_STATUS _SRS_SetHIDLatencyStats(OI_HCI_LM_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v23) - WORD2(v23) > 1)
                {
                  if (BYTE6(v23) == 2)
                  {
                    *(v22 + WORD2(v23)) = a1;
                    v14 = WORD2(v23);
                    v15 = WORD2(v23) + 2;
                    WORD2(v23) += 2;
                    if (HIBYTE(v23))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1946, "OI_STATUS _SRS_SetHIDLatencyStats(OI_HCI_LM_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v23) > v15)
                    {
                      if (BYTE6(v23) == 2)
                      {
                        WORD2(v23) = v14 + 3;
                        *(v22 + v15) = a2;
                        if (HIBYTE(v23))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1947, "OI_STATUS _SRS_SetHIDLatencyStats(OI_HCI_LM_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v16 = WORD2(v23);
                          if (WORD1(v23) > WORD2(v23))
                          {
                            if (BYTE6(v23) == 2)
                            {
                              ++WORD2(v23);
                              *(v22 + v16) = a3;
                              return sub_100020078(464, v22, BYTE4(v23), a4, sub_1001665F4, v9, v10, v11);
                            }

                            v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1947, v21);
                          }
                        }

                        v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_38;
                      }

                      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1946, v20);
                    }

                    v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_34;
                  }

                  v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1945, v19);
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_30;
              }

              v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1943, v18);
            }
          }

          v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_26;
        }

        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1942, v17);
      }
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100173588(char a1, _BYTE *a2, _WORD *a3, char a4, char a5, void (*a6)())
{
  v30 = 0;
  v31 = 0;
  if (!sub_10001FFD8(&v30))
  {
    if (HIBYTE(v31))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2498, "OI_STATUS _SRS_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v15 = WORD2(v31);
      if (WORD1(v31) > WORD2(v31))
      {
        if (BYTE6(v31) == 2)
        {
          ++WORD2(v31);
          *(v30 + v15) = 7;
          if (HIBYTE(v31))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2499, "OI_STATUS _SRS_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v16 = WORD2(v31);
            if (WORD1(v31) > WORD2(v31))
            {
              if (BYTE6(v31) == 2)
              {
                ++WORD2(v31);
                *(v30 + v16) = 13;
                if (HIBYTE(v31))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2500, "OI_STATUS _SRS_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v17 = WORD2(v31);
                  if (WORD1(v31) > WORD2(v31))
                  {
                    if (BYTE6(v31) == 2)
                    {
                      ++WORD2(v31);
                      *(v30 + v17) = a1;
                      if (HIBYTE(v31))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2501, "OI_STATUS _SRS_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v31) - WORD2(v31) > 1)
                      {
                        if (BYTE6(v31) == 2)
                        {
                          *(v30 + WORD2(v31)) = *a3;
                          v18 = WORD2(v31) + 2;
                          WORD2(v31) += 2;
                          if (HIBYTE(v31))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2502, "OI_STATUS _SRS_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v31) - v18 > 1)
                          {
                            if (BYTE6(v31) == 2)
                            {
                              *(v30 + v18) = *a2;
                              *(v30 + WORD2(v31) + 1) = a2[1];
                              v19 = WORD2(v31);
                              v20 = WORD2(v31) + 2;
                              WORD2(v31) += 2;
                              if (HIBYTE(v31))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2503, "OI_STATUS _SRS_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v31) > v20)
                              {
                                if (BYTE6(v31) == 2)
                                {
                                  WORD2(v31) = v19 + 3;
                                  *(v30 + v20) = a4;
                                  if (HIBYTE(v31))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2504, "OI_STATUS _SRS_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else
                                  {
                                    v21 = WORD2(v31);
                                    if (WORD1(v31) > WORD2(v31))
                                    {
                                      if (BYTE6(v31) == 2)
                                      {
                                        ++WORD2(v31);
                                        *(v30 + v21) = a5;
                                        return sub_100020078(464, v30, BYTE4(v31), a6, sub_1001665F4, v12, v13, v14);
                                      }

                                      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2504, v29);
                                    }
                                  }

                                  v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_52;
                                }

                                v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2503, v28);
                              }

                              v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_48;
                            }

                            v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2502, v27);
                          }

                          v27 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_44;
                        }

                        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2501, v26);
                      }

                      v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_40;
                    }

                    v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2500, v25);
                  }
                }

                v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2499, v24);
            }
          }

          v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2498, v23);
      }
    }

    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return sub_100020078(464, v30, BYTE4(v31), a6, sub_1001665F4, v12, v13, v14);
}

uint64_t sub_100173998(char a1, uint64_t a2, const void *a3, unsigned int a4, void (*a5)())
{
  v25 = 0;
  v26 = 0;
  result = sub_10001FFD8(&v25);
  if (!result)
  {
    if (HIBYTE(v26))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1368, "OI_STATUS _SRS_LEAddIrk(_Bool, const OI_BD_ADDR *, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v11 = WORD2(v26);
      if (WORD1(v26) > WORD2(v26))
      {
        if (BYTE6(v26) == 2)
        {
          ++WORD2(v26);
          *(v25 + v11) = 6;
          if (HIBYTE(v26))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1369, "OI_STATUS _SRS_LEAddIrk(_Bool, const OI_BD_ADDR *, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v12 = WORD2(v26);
            if (WORD1(v26) > WORD2(v26))
            {
              if (BYTE6(v26) == 2)
              {
                ++WORD2(v26);
                *(v25 + v12) = 1;
                v13 = v25;
                v14 = WORD2(v26);
                if (HIBYTE(v26))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1370, "OI_STATUS _SRS_LEAddIrk(_Bool, const OI_BD_ADDR *, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
                  v15 = 0;
                }

                else
                {
                  v15 = WORD1(v26) - WORD2(v26);
                }

                if (v15 < a4)
                {
                  v22 = "ByteStream_NumReadBytesAvail(bs) >= (IrkLength)";
                }

                else
                {
                  if (BYTE6(v26) == 2)
                  {
                    memmove((v13 + v14), a3, a4);
                    v16 = WORD2(v26) + a4;
                    WORD2(v26) += a4;
                    if (HIBYTE(v26))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1371, "OI_STATUS _SRS_LEAddIrk(_Bool, const OI_BD_ADDR *, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v26) > v16)
                    {
                      if (BYTE6(v26) == 2)
                      {
                        WORD2(v26) = v16 + 1;
                        *(v25 + v16) = a1;
                        if (HIBYTE(v26))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1372, "OI_STATUS _SRS_LEAddIrk(_Bool, const OI_BD_ADDR *, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
                        }

                        else if (WORD1(v26) - WORD2(v26) > 5)
                        {
                          if (BYTE6(v26) == 2)
                          {
                            sub_1000075EC((v25 + WORD2(v26)), a2, 6uLL);
                            WORD2(v26) += 6;
                            return sub_100020078(464, v25, BYTE4(v26), a5, sub_1001665F4, v17, v18, v19);
                          }

                          v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1372, v24);
                        }

                        v24 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                        goto LABEL_39;
                      }

                      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1371, v23);
                    }

                    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_35;
                  }

                  v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1370, v22);
              }

              v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1369, v21);
            }
          }

          v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_28;
        }

        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1368, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_100173CAC(char a1, uint64_t a2, void (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1385, "OI_STATUS _SRS_LERemoveIrk(_Bool, const OI_BD_ADDR *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v7 = WORD2(v18);
      if (WORD1(v18) > WORD2(v18))
      {
        if (BYTE6(v18) == 2)
        {
          ++WORD2(v18);
          *(v17 + v7) = 6;
          if (HIBYTE(v18))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1386, "OI_STATUS _SRS_LERemoveIrk(_Bool, const OI_BD_ADDR *, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v8 = WORD2(v18);
            if (WORD1(v18) > WORD2(v18))
            {
              if (BYTE6(v18) == 2)
              {
                ++WORD2(v18);
                *(v17 + v8) = 6;
                if (HIBYTE(v18))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1387, "OI_STATUS _SRS_LERemoveIrk(_Bool, const OI_BD_ADDR *, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v9 = WORD2(v18);
                  if (WORD1(v18) > WORD2(v18))
                  {
                    if (BYTE6(v18) == 2)
                    {
                      ++WORD2(v18);
                      *(v17 + v9) = a1;
                      if (HIBYTE(v18))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1388, "OI_STATUS _SRS_LERemoveIrk(_Bool, const OI_BD_ADDR *, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v18) - WORD2(v18) > 5)
                      {
                        if (BYTE6(v18) == 2)
                        {
                          sub_1000075EC((v17 + WORD2(v18)), a2, 6uLL);
                          WORD2(v18) += 6;
                          return sub_100020078(464, v17, BYTE4(v18), a3, sub_1001665F4, v10, v11, v12);
                        }

                        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1388, v16);
                      }

                      v16 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_31;
                    }

                    v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1387, v15);
                  }
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1386, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1385, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100173F14(const void *a1, unsigned int a2, char a3, void (*a4)())
{
  v35 = 0;
  v36 = 0;
  result = sub_10001FFD8(&v35);
  if (!result)
  {
    if (HIBYTE(v36))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1834, "OI_STATUS _SRS_LEAddZoneMonitorEntry(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v9 = WORD2(v36);
      if (WORD1(v36) > WORD2(v36))
      {
        if (BYTE6(v36) == 2)
        {
          ++WORD2(v36);
          *(v35 + v9) = 4;
          if (HIBYTE(v36))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1835, "OI_STATUS _SRS_LEAddZoneMonitorEntry(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v10 = WORD2(v36);
            if (WORD1(v36) > WORD2(v36))
            {
              if (BYTE6(v36) == 2)
              {
                ++WORD2(v36);
                *(v35 + v10) = 24;
                v11 = v35;
                v12 = WORD2(v36);
                if (HIBYTE(v36))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1836, "OI_STATUS _SRS_LEAddZoneMonitorEntry(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                  v13 = 0;
                }

                else
                {
                  v13 = WORD1(v36) - WORD2(v36);
                }

                if (v13 < a2)
                {
                  v30 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                }

                else
                {
                  if (BYTE6(v36) == 2)
                  {
                    memmove((v11 + v12), a1, a2);
                    v14 = WORD2(v36) + a2;
                    WORD2(v36) += a2;
                    v15 = v35;
                    if (HIBYTE(v36))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1837, "OI_STATUS _SRS_LEAddZoneMonitorEntry(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      v16 = 0;
                    }

                    else
                    {
                      v16 = WORD1(v36) - v14;
                    }

                    v17 = 21 - a2;
                    if (v16 < (21 - a2))
                    {
                      v31 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
                    }

                    else
                    {
                      if (BYTE6(v36) == 2)
                      {
                        bzero((v15 + v14), v17);
                        v18 = WORD2(v36) + v17;
                        WORD2(v36) += v17;
                        v19 = v35;
                        if (HIBYTE(v36))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1838, "OI_STATUS _SRS_LEAddZoneMonitorEntry(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                          v20 = 0;
                        }

                        else
                        {
                          v20 = WORD1(v36) - v18;
                        }

                        if (v20 < a2)
                        {
                          v32 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                        }

                        else
                        {
                          if (BYTE6(v36) == 2)
                          {
                            memset((v19 + v18), 255, a2);
                            v21 = WORD2(v36) + a2;
                            WORD2(v36) = v21;
                            v22 = v35;
                            if (HIBYTE(v36))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1839, "OI_STATUS _SRS_LEAddZoneMonitorEntry(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                              v23 = 0;
                            }

                            else
                            {
                              v23 = WORD1(v36) - v21;
                            }

                            if (v23 < v17)
                            {
                              v33 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
                            }

                            else
                            {
                              if (BYTE6(v36) == 2)
                              {
                                bzero((v22 + v21), v17);
                                v27 = WORD2(v36) + v17;
                                WORD2(v36) += v17;
                                if (HIBYTE(v36))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1840, "OI_STATUS _SRS_LEAddZoneMonitorEntry(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                }

                                else if (WORD1(v36) > v27)
                                {
                                  if (BYTE6(v36) == 2)
                                  {
                                    WORD2(v36) = v27 + 1;
                                    *(v35 + v27) = a3;
                                    return sub_100020078(464, v35, BYTE4(v36), a4, sub_1001665F4, v24, v25, v26);
                                  }

                                  v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_56:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1840, v34);
                                }

                                v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_56;
                              }

                              v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            }

                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1839, v33);
                          }

                          v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1838, v32);
                      }

                      v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1837, v31);
                  }

                  v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1836, v30);
              }

              v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1835, v29);
            }
          }

          v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_40;
        }

        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1834, v28);
      }
    }

    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_100174350(void (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1854, "OI_STATUS _SRS_LEResetZoneMonitor(BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v6) = 4;
          if (HIBYTE(v11))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1855, "OI_STATUS _SRS_LEResetZoneMonitor(BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v7 = WORD2(v11);
            if (WORD1(v11) > WORD2(v11))
            {
              if (BYTE6(v11) == 2)
              {
                ++WORD2(v11);
                *(v10 + v7) = 25;
                return sub_100020078(464, v10, BYTE4(v11), a1, sub_1001665F4, v3, v4, v5);
              }

              v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1855, v9);
            }
          }

          v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1854, v8);
      }
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001744A4(void (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1553, "OI_STATUS _SRS_LeClearAdvancedMatchingRules(BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v6) = 4;
          if (HIBYTE(v11))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1554, "OI_STATUS _SRS_LeClearAdvancedMatchingRules(BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v7 = WORD2(v11);
            if (WORD1(v11) > WORD2(v11))
            {
              if (BYTE6(v11) == 2)
              {
                ++WORD2(v11);
                *(v10 + v7) = 19;
                return sub_100020078(464, v10, BYTE4(v11), a1, sub_1001665F4, v3, v4, v5);
              }

              v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1554, v9);
            }
          }

          v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1553, v8);
      }
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001745F8(uint64_t a1, void (*a2)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1568, "OI_STATUS _SRS_LEAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v5) = 4;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1569, "OI_STATUS _SRS_LEAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v6 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                ++WORD2(v17);
                *(v16 + v6) = 20;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1570, "OI_STATUS _SRS_LEAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v7 = WORD2(v17);
                  if (WORD1(v17) > WORD2(v17))
                  {
                    if (BYTE6(v17) == 2)
                    {
                      ++WORD2(v17);
                      *(v16 + v7) = BYTE6(a1);
                      v15[0] = BYTE5(a1);
                      v15[1] = BYTE4(a1);
                      v15[2] = BYTE3(a1);
                      v15[3] = BYTE2(a1);
                      v15[4] = BYTE1(a1);
                      v15[5] = a1;
                      if (HIBYTE(v17))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1574, "OI_STATUS _SRS_LEAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v17) - WORD2(v17) > 5)
                      {
                        if (BYTE6(v17) == 2)
                        {
                          sub_1000075EC((v16 + WORD2(v17)), v15, 6uLL);
                          WORD2(v17) += 6;
                          return sub_100020078(464, v16, BYTE4(v17), a2, sub_1001665F4, v8, v9, v10);
                        }

                        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1574, v14);
                      }

                      v14 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_31;
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1570, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1569, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1568, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100174884(uint64_t a1, void (*a2)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1588, "OI_STATUS _SRS_LERemoveDeviceFromMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v5) = 4;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1589, "OI_STATUS _SRS_LERemoveDeviceFromMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v6 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                ++WORD2(v17);
                *(v16 + v6) = 21;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1590, "OI_STATUS _SRS_LERemoveDeviceFromMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v7 = WORD2(v17);
                  if (WORD1(v17) > WORD2(v17))
                  {
                    if (BYTE6(v17) == 2)
                    {
                      ++WORD2(v17);
                      *(v16 + v7) = BYTE6(a1);
                      v15[0] = BYTE5(a1);
                      v15[1] = BYTE4(a1);
                      v15[2] = BYTE3(a1);
                      v15[3] = BYTE2(a1);
                      v15[4] = BYTE1(a1);
                      v15[5] = a1;
                      if (HIBYTE(v17))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1594, "OI_STATUS _SRS_LERemoveDeviceFromMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v17) - WORD2(v17) > 5)
                      {
                        if (BYTE6(v17) == 2)
                        {
                          sub_1000075EC((v16 + WORD2(v17)), v15, 6uLL);
                          WORD2(v17) += 6;
                          return sub_100020078(464, v16, BYTE4(v17), a2, sub_1001665F4, v8, v9, v10);
                        }

                        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1594, v14);
                      }

                      v14 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_31;
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1590, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1589, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1588, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100174B10(int a1, char a2, uint64_t *a3, void (*a4)())
{
  LODWORD(v7) = a1;
  v27 = 0;
  v28 = 0;
  result = sub_10001FFD8(&v27);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v28))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1609, "OI_STATUS _SRS_LEConfigDeviceToMatchingAddressListBatched(uint8_t, uint8_t, const BTAddress *, BT_VSC_MATCHING_ADDRESS_LIST_BATCHED_CB)");
    goto LABEL_36;
  }

  v12 = WORD2(v28);
  if (WORD1(v28) <= WORD2(v28))
  {
LABEL_36:
    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_38;
  }

  if (BYTE6(v28) != 2)
  {
    v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1609, v22);
  }

  ++WORD2(v28);
  *(v27 + v12) = 4;
  if (HIBYTE(v28))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1610, "OI_STATUS _SRS_LEConfigDeviceToMatchingAddressListBatched(uint8_t, uint8_t, const BTAddress *, BT_VSC_MATCHING_ADDRESS_LIST_BATCHED_CB)");
    goto LABEL_40;
  }

  v13 = WORD2(v28);
  if (WORD1(v28) <= WORD2(v28))
  {
LABEL_40:
    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_42;
  }

  if (BYTE6(v28) != 2)
  {
    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1610, v23);
  }

  ++WORD2(v28);
  *(v27 + v13) = 45;
  if (HIBYTE(v28))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1611, "OI_STATUS _SRS_LEConfigDeviceToMatchingAddressListBatched(uint8_t, uint8_t, const BTAddress *, BT_VSC_MATCHING_ADDRESS_LIST_BATCHED_CB)");
    goto LABEL_44;
  }

  v14 = WORD2(v28);
  if (WORD1(v28) <= WORD2(v28))
  {
LABEL_44:
    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_46;
  }

  if (BYTE6(v28) != 2)
  {
    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1611, v24);
  }

  ++WORD2(v28);
  *(v27 + v14) = v7;
  if (HIBYTE(v28))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1613, "OI_STATUS _SRS_LEConfigDeviceToMatchingAddressListBatched(uint8_t, uint8_t, const BTAddress *, BT_VSC_MATCHING_ADDRESS_LIST_BATCHED_CB)");
    goto LABEL_48;
  }

  v15 = WORD2(v28);
  if (WORD1(v28) <= WORD2(v28))
  {
LABEL_48:
    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_50;
  }

  if (BYTE6(v28) != 2)
  {
    v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1613, v25);
  }

  ++WORD2(v28);
  *(v27 + v15) = a2;
  if (v7)
  {
    v7 = v7;
    while (!HIBYTE(v28))
    {
      v16 = WORD2(v28);
      if (WORD1(v28) <= WORD2(v28))
      {
        goto LABEL_33;
      }

      if (BYTE6(v28) != 2)
      {
        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_34;
      }

      v17 = *(a3 + 3);
      ++WORD2(v28);
      *(v27 + v16) = v17;
      v18 = *a3;
      v26[0] = WORD2(*a3) >> 8;
      v26[1] = BYTE4(v18);
      v26[2] = BYTE3(v18);
      v26[3] = BYTE2(v18);
      v26[4] = BYTE1(v18);
      v26[5] = v18;
      if (HIBYTE(v28))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1619, "OI_STATUS _SRS_LEConfigDeviceToMatchingAddressListBatched(uint8_t, uint8_t, const BTAddress *, BT_VSC_MATCHING_ADDRESS_LIST_BATCHED_CB)");
LABEL_29:
        v20 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_30:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1619, v20);
      }

      if (WORD1(v28) - WORD2(v28) <= 5)
      {
        goto LABEL_29;
      }

      if (BYTE6(v28) != 2)
      {
        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_30;
      }

      sub_1000075EC((v27 + WORD2(v28)), v26, 6uLL);
      v19 = BYTE4(v28) + 6;
      WORD2(v28) += 6;
      ++a3;
      if (!--v7)
      {
        return sub_100020078(464, v27, v19, a4, sub_10017E5A0, v9, v10, v11);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1616, "OI_STATUS _SRS_LEConfigDeviceToMatchingAddressListBatched(uint8_t, uint8_t, const BTAddress *, BT_VSC_MATCHING_ADDRESS_LIST_BATCHED_CB)");
LABEL_33:
    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_34:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1616, v21);
  }

  v19 = BYTE4(v28);
  return sub_100020078(464, v27, v19, a4, sub_10017E5A0, v9, v10, v11);
}

uint64_t sub_100174EBC(void (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1635, "OI_STATUS _SRS_LEClearDevicesFromMatchingAddressList(BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v6) = 4;
          if (HIBYTE(v11))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1636, "OI_STATUS _SRS_LEClearDevicesFromMatchingAddressList(BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v7 = WORD2(v11);
            if (WORD1(v11) > WORD2(v11))
            {
              if (BYTE6(v11) == 2)
              {
                ++WORD2(v11);
                *(v10 + v7) = 22;
                return sub_100020078(464, v10, BYTE4(v11), a1, sub_1001665F4, v3, v4, v5);
              }

              v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1636, v9);
            }
          }

          v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1635, v8);
      }
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100175010(const void *a1, unsigned int a2, const void *a3, unsigned int a4, char a5, char a6, int a7, char a8, int a9, char a13, char a14, __int16 a15, char a16, char a17, char a18, void (*a19)())
{
  v66 = 0;
  v67 = 0;
  result = sub_10001FFD8(&v66);
  if (!result)
  {
    if (HIBYTE(v67))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1489, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v25 = WORD2(v67);
      if (WORD1(v67) > WORD2(v67))
      {
        if (BYTE6(v67) == 2)
        {
          ++WORD2(v67);
          *(v66 + v25) = 4;
          if (a7)
          {
            if (HIBYTE(v67))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1491, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
            }

            else
            {
              v26 = WORD2(v67);
              if (WORD1(v67) > WORD2(v67))
              {
                if (BYTE6(v67) == 2)
                {
                  v27 = 17;
                  goto LABEL_14;
                }

                v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_106:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1491, v63);
              }
            }

            v63 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_106;
          }

          if (HIBYTE(v67))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1493, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v26 = WORD2(v67);
            if (WORD1(v67) > WORD2(v67))
            {
              if (BYTE6(v67) == 2)
              {
                v27 = 18;
LABEL_14:
                WORD2(v67) = v26 + 1;
                *(v66 + v26) = v27;
                if (HIBYTE(v67))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1495, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v28 = WORD2(v67);
                  if (WORD1(v67) > WORD2(v67))
                  {
                    if (BYTE6(v67) == 2)
                    {
                      ++WORD2(v67);
                      *(v66 + v28) = a8;
                      v65[0] = a14;
                      v65[1] = a13;
                      v65[2] = HIBYTE(a9);
                      v65[3] = BYTE2(a9);
                      v65[4] = BYTE1(a9);
                      v65[5] = a9;
                      if (HIBYTE(v67))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1498, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v67) - WORD2(v67) > 5)
                      {
                        if (BYTE6(v67) == 2)
                        {
                          sub_1000075EC((v66 + WORD2(v67)), v65, 6uLL);
                          v29 = WORD2(v67) + 6;
                          WORD2(v67) += 6;
                          v30 = v66;
                          if (HIBYTE(v67))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1499, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                            v31 = 0;
                          }

                          else
                          {
                            v31 = WORD1(v67) - v29;
                          }

                          if (v31 < a2)
                          {
                            v54 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                          }

                          else
                          {
                            if (BYTE6(v67) == 2)
                            {
                              memmove((v30 + v29), a1, a2);
                              v32 = WORD2(v67) + a2;
                              WORD2(v67) += a2;
                              v33 = v66;
                              if (HIBYTE(v67))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1500, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                v34 = 0;
                              }

                              else
                              {
                                v34 = WORD1(v67) - v32;
                              }

                              v35 = 25 - a2;
                              if (v34 < v35)
                              {
                                v55 = "ByteStream_NumReadBytesAvail(bs) >= (25 - dataLen)";
                              }

                              else
                              {
                                if (BYTE6(v67) == 2)
                                {
                                  bzero((v33 + v32), v35);
                                  v36 = WORD2(v67) + v35;
                                  WORD2(v67) = v36;
                                  v37 = v66;
                                  if (HIBYTE(v67))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1501, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                    v38 = 0;
                                  }

                                  else
                                  {
                                    v38 = WORD1(v67) - v36;
                                  }

                                  if (v38 < a4)
                                  {
                                    v56 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
                                  }

                                  else
                                  {
                                    if (BYTE6(v67) == 2)
                                    {
                                      memmove((v37 + v36), a3, a4);
                                      v39 = WORD2(v67) + a4;
                                      WORD2(v67) += a4;
                                      v40 = v66;
                                      if (HIBYTE(v67))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1502, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                        v41 = 0;
                                      }

                                      else
                                      {
                                        v41 = WORD1(v67) - v39;
                                      }

                                      v42 = 25 - a4;
                                      if (v41 < v42)
                                      {
                                        v57 = "ByteStream_NumReadBytesAvail(bs) >= (25 - maskLen)";
                                      }

                                      else
                                      {
                                        if (BYTE6(v67) == 2)
                                        {
                                          bzero((v40 + v39), v42);
                                          v46 = WORD2(v67) + v42;
                                          WORD2(v67) += v42;
                                          if (HIBYTE(v67))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1503, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                          }

                                          else if (WORD1(v67) > v46)
                                          {
                                            if (BYTE6(v67) == 2)
                                            {
                                              WORD2(v67) = v46 + 1;
                                              *(v66 + v46) = a6;
                                              if (HIBYTE(v67))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1504, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                              }

                                              else
                                              {
                                                v47 = WORD2(v67);
                                                if (WORD1(v67) > WORD2(v67))
                                                {
                                                  if (BYTE6(v67) == 2)
                                                  {
                                                    ++WORD2(v67);
                                                    *(v66 + v47) = a5;
                                                    if (HIBYTE(v67))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1505, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                    }

                                                    else
                                                    {
                                                      v48 = WORD2(v67);
                                                      if (WORD1(v67) > WORD2(v67))
                                                      {
                                                        if (BYTE6(v67) == 2)
                                                        {
                                                          ++WORD2(v67);
                                                          *(v66 + v48) = a16;
                                                          if (HIBYTE(v67))
                                                          {
                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1506, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                          }

                                                          else
                                                          {
                                                            v49 = WORD2(v67);
                                                            if (WORD1(v67) > WORD2(v67))
                                                            {
                                                              if (BYTE6(v67) == 2)
                                                              {
                                                                ++WORD2(v67);
                                                                *(v66 + v49) = a17;
                                                                if (HIBYTE(v67))
                                                                {
                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1507, "OI_STATUS _SRS_LEAddRemoveAdvancedMatchingRule(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                                }

                                                                else
                                                                {
                                                                  v50 = WORD2(v67);
                                                                  if (WORD1(v67) > WORD2(v67))
                                                                  {
                                                                    if (BYTE6(v67) == 2)
                                                                    {
                                                                      ++WORD2(v67);
                                                                      *(v66 + v50) = a18;
                                                                      return sub_100020078(464, v66, BYTE4(v67), a19, sub_1001665F4, v43, v44, v45);
                                                                    }

                                                                    v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_100:
                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1507, v62);
                                                                  }
                                                                }

                                                                v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                goto LABEL_100;
                                                              }

                                                              v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_96:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1506, v61);
                                                            }
                                                          }

                                                          v61 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                          goto LABEL_96;
                                                        }

                                                        v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_92:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1505, v60);
                                                      }
                                                    }

                                                    v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                    goto LABEL_92;
                                                  }

                                                  v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_88:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1504, v59);
                                                }
                                              }

                                              v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_88;
                                            }

                                            v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_84:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1503, v58);
                                          }

                                          v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_84;
                                        }

                                        v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                      }

                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1502, v57);
                                    }

                                    v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                  }

                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1501, v56);
                                }

                                v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                              }

                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1500, v55);
                            }

                            v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                          }

                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1499, v54);
                        }

                        v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1498, v53);
                      }

                      v53 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_68;
                    }

                    v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1495, v52);
                  }
                }

                v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_64;
              }

              v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_108:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1493, v64);
            }
          }

          v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_108;
        }

        v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_60:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1489, v51);
      }
    }

    v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_60;
  }

  return result;
}

uint64_t sub_1001757E8(unsigned int a1, signed int a2, uint64_t a3, void (*a4)())
{
  v57 = 0;
  v58 = 0;
  result = sub_10001FFD8(&v57);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v58))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1520, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
    goto LABEL_105;
  }

  v12 = WORD2(v58);
  if (WORD1(v58) <= WORD2(v58))
  {
LABEL_105:
    v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_107;
  }

  if (BYTE6(v58) != 2)
  {
    v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_107:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1520, v53);
  }

  ++WORD2(v58);
  *(v57 + v12) = 4;
  if (HIBYTE(v58))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1521, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
    goto LABEL_109;
  }

  v13 = WORD2(v58);
  if (WORD1(v58) <= WORD2(v58))
  {
LABEL_109:
    v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_111;
  }

  if (BYTE6(v58) != 2)
  {
    v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_111:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1521, v54);
  }

  ++WORD2(v58);
  *(v57 + v13) = 44;
  if (HIBYTE(v58))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1522, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
    goto LABEL_113;
  }

  v14 = WORD2(v58);
  if (WORD1(v58) <= WORD2(v58))
  {
LABEL_113:
    v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_115;
  }

  if (BYTE6(v58) != 2)
  {
    v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_115:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1522, v55);
  }

  ++WORD2(v58);
  *(v57 + v14) = a1;
  if (HIBYTE(v58))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1523, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
    goto LABEL_117;
  }

  v15 = WORD2(v58);
  if (WORD1(v58) <= WORD2(v58))
  {
LABEL_117:
    v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_119;
  }

  if (BYTE6(v58) != 2)
  {
    v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_119:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1523, v56);
  }

  ++WORD2(v58);
  *(v57 + v15) = a2;
  if (a2 > 0x19)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1524, "blobLen <= MATCH_BLOB_MASK_MAX_SIZE_DEFAULT");
  }

  if (a1)
  {
    v16 = 25 - a2;
    v17 = a1;
    v18 = (a3 + 61);
    do
    {
      if (HIBYTE(v58))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1527, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
LABEL_78:
        v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_79:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1527, v45);
      }

      v19 = WORD2(v58);
      if (WORD1(v58) <= WORD2(v58))
      {
        goto LABEL_78;
      }

      if (BYTE6(v58) != 2)
      {
        v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_79;
      }

      v20 = *(v18 - 61);
      ++WORD2(v58);
      *(v57 + v19) = v20;
      if (HIBYTE(v58))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1528, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
LABEL_74:
        v44 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_75:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1528, v44);
      }

      if (WORD1(v58) - WORD2(v58) <= 5)
      {
        goto LABEL_74;
      }

      if (BYTE6(v58) != 2)
      {
        v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_75;
      }

      sub_1000075EC((v57 + WORD2(v58)), (v18 - 60), 6uLL);
      v21 = WORD2(v58) + 6;
      WORD2(v58) += 6;
      if (a2)
      {
        v22 = v57;
        if (HIBYTE(v58))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1530, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
          v23 = 0;
        }

        else
        {
          v23 = WORD1(v58) - v21;
        }

        if (v23 < a2)
        {
          v51 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
LABEL_103:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1530, v51);
        }

        if (BYTE6(v58) != 2)
        {
          v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_103;
        }

        memmove((v22 + v21), v18 - 54, a2);
        v24 = WORD2(v58) + a2;
        WORD2(v58) += a2;
        v25 = v57;
        if (HIBYTE(v58))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1531, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
          v26 = 0;
        }

        else
        {
          v26 = WORD1(v58) - v24;
        }

        if (v26 < v16)
        {
          v50 = "ByteStream_NumReadBytesAvail(bs) >= (((22)+(3)) - blobLen)";
          goto LABEL_95;
        }

        if (BYTE6(v58) != 2)
        {
          v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_95:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1531, v50);
        }

        bzero((v25 + v24), (25 - a2));
        v27 = WORD2(v58) + v16;
        WORD2(v58) += v16;
        v28 = v57;
        if (HIBYTE(v58))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1532, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
          v29 = 0;
        }

        else
        {
          v29 = WORD1(v58) - v27;
        }

        if (v29 < a2)
        {
          v49 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
LABEL_97:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1532, v49);
        }

        if (BYTE6(v58) != 2)
        {
          v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_97;
        }

        memmove((v28 + v27), v18 - 29, a2);
        v30 = WORD2(v58) + a2;
        WORD2(v58) += a2;
        v31 = v57;
        if (HIBYTE(v58))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1533, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
          v32 = 0;
        }

        else
        {
          v32 = WORD1(v58) - v30;
        }

        if (v32 < v16)
        {
          v52 = "ByteStream_NumReadBytesAvail(bs) >= (((22)+(3)) - blobLen)";
          goto LABEL_101;
        }

        if (BYTE6(v58) != 2)
        {
          v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1533, v52);
        }

        bzero((v31 + v30), (25 - a2));
        v21 = WORD2(v58) + v16;
        WORD2(v58) += v16;
      }

      if (HIBYTE(v58))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1535, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
LABEL_70:
        v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_71:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1535, v43);
      }

      if (WORD1(v58) <= v21)
      {
        goto LABEL_70;
      }

      if (BYTE6(v58) != 2)
      {
        v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_71;
      }

      v33 = *(v18 - 4);
      WORD2(v58) = v21 + 1;
      *(v57 + v21) = v33;
      if (HIBYTE(v58))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1536, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
LABEL_66:
        v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_67:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1536, v42);
      }

      v34 = WORD2(v58);
      if (WORD1(v58) <= WORD2(v58))
      {
        goto LABEL_66;
      }

      if (BYTE6(v58) != 2)
      {
        v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_67;
      }

      v35 = *(v18 - 3);
      ++WORD2(v58);
      *(v57 + v34) = v35;
      if (HIBYTE(v58))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1537, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
LABEL_90:
        v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_91:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1537, v48);
      }

      v36 = WORD2(v58);
      if (WORD1(v58) <= WORD2(v58))
      {
        goto LABEL_90;
      }

      if (BYTE6(v58) != 2)
      {
        v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_91;
      }

      v37 = *(v18 - 2);
      ++WORD2(v58);
      *(v57 + v36) = v37;
      if (HIBYTE(v58))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1538, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
LABEL_86:
        v47 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_87:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1538, v47);
      }

      v38 = WORD2(v58);
      if (WORD1(v58) <= WORD2(v58))
      {
        goto LABEL_86;
      }

      if (BYTE6(v58) != 2)
      {
        v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_87;
      }

      v39 = *(v18 - 1);
      ++WORD2(v58);
      *(v57 + v38) = v39;
      if (HIBYTE(v58))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1539, "OI_STATUS _SRS_LEAddAdvancedMatchingRuleBatched(uint8_t, uint8_t, BT_VSC_AddMatchingRuleEnhanced_t *, BT_VSC_MATCH_RULE_ENHANCED_BATCHED_CB)");
LABEL_82:
        v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_83:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1539, v46);
      }

      v40 = WORD2(v58);
      if (WORD1(v58) <= WORD2(v58))
      {
        goto LABEL_82;
      }

      if (BYTE6(v58) != 2)
      {
        v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_83;
      }

      v41 = *v18;
      v18 += 62;
      ++WORD2(v58);
      *(v57 + v40) = v41;
      --v17;
    }

    while (v17);
  }

  return sub_100020078(464, v57, BYTE4(v58), a4, sub_10017E6DC, v9, v10, v11);
}

uint64_t sub_10017603C(char a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2146, "OI_STATUS _SRS_GetScanStats(_Bool, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 10;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2147, "OI_STATUS _SRS_GetScanStats(_Bool, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 3;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2149, "OI_STATUS _SRS_GetScanStats(_Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v19);
                  if (WORD1(v19) > WORD2(v19))
                  {
                    if (BYTE6(v19) == 2)
                    {
                      ++WORD2(v19);
                      *(v18 + v12) = a1;
                      if (HIBYTE(v19))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2150, "OI_STATUS _SRS_GetScanStats(_Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v13 = WORD2(v19);
                        if (WORD1(v19) > WORD2(v19))
                        {
                          if (BYTE6(v19) == 2)
                          {
                            ++WORD2(v19);
                            *(v18 + v13) = a2;
                            return sub_100020078(464, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                          }

                          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2150, v17);
                        }
                      }

                      v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_31;
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2149, v16);
                  }
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2147, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2146, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100176290(uint64_t a1, void (*a2)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1867, "OI_STATUS _SRS_LEAddDeviceAcceptListPollConnectionStats(BT_VSCAddFilterAcceptListOptionsPollStats_t *, BT_VSC_ADD_DEVICE_TO_FILTERACCEPTLIST_WITH_OPTIONS_POLL_STATS_CB)");
    }

    else
    {
      v5 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v5) = 6;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1868, "OI_STATUS _SRS_LEAddDeviceAcceptListPollConnectionStats(BT_VSCAddFilterAcceptListOptionsPollStats_t *, BT_VSC_ADD_DEVICE_TO_FILTERACCEPTLIST_WITH_OPTIONS_POLL_STATS_CB)");
          }

          else
          {
            v6 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                ++WORD2(v17);
                *(v16 + v6) = 3;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1869, "OI_STATUS _SRS_LEAddDeviceAcceptListPollConnectionStats(BT_VSCAddFilterAcceptListOptionsPollStats_t *, BT_VSC_ADD_DEVICE_TO_FILTERACCEPTLIST_WITH_OPTIONS_POLL_STATS_CB)");
                }

                else
                {
                  v7 = WORD2(v17);
                  if (WORD1(v17) > WORD2(v17))
                  {
                    if (BYTE6(v17) == 2)
                    {
                      v8 = *(a1 + 8);
                      ++WORD2(v17);
                      *(v16 + v7) = v8;
                      if (HIBYTE(v17))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1870, "OI_STATUS _SRS_LEAddDeviceAcceptListPollConnectionStats(BT_VSCAddFilterAcceptListOptionsPollStats_t *, BT_VSC_ADD_DEVICE_TO_FILTERACCEPTLIST_WITH_OPTIONS_POLL_STATS_CB)");
                      }

                      else if (WORD1(v17) - WORD2(v17) > 5)
                      {
                        if (BYTE6(v17) == 2)
                        {
                          sub_1000075EC((v16 + WORD2(v17)), *a1, 6uLL);
                          WORD2(v17) += 6;
                          return sub_100020078(464, v16, BYTE4(v17), a2, sub_1001656F4, v9, v10, v11);
                        }

                        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1870, v15);
                      }

                      v15 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_31;
                    }

                    v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1869, v14);
                  }
                }

                v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1868, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1867, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001764F0(uint64_t a1, unsigned int a2, unsigned int a3, char a4, char a5, char a6, void (*a7)())
{
  v11 = a3;
  if (a3 <= 1 && a2 != 2 && a2 != 16)
  {
    sub_1000D660C();
  }

  v41 = 0;
  v42 = 0;
  result = sub_10001FFD8(&v41);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v42))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1655, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_46;
  }

  v18 = WORD2(v42);
  if (WORD1(v42) <= WORD2(v42))
  {
LABEL_46:
    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_48;
  }

  if (BYTE6(v42) != 2)
  {
    v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1655, v32);
  }

  ++WORD2(v42);
  *(v41 + v18) = 4;
  if (HIBYTE(v42))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1656, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_50;
  }

  v19 = WORD2(v42);
  if (WORD1(v42) <= WORD2(v42))
  {
LABEL_50:
    v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_52;
  }

  if (BYTE6(v42) != 2)
  {
    v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1656, v33);
  }

  ++WORD2(v42);
  *(v41 + v19) = 23;
  if (HIBYTE(v42))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1657, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_54;
  }

  v20 = WORD2(v42);
  if (WORD1(v42) <= WORD2(v42))
  {
LABEL_54:
    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_56;
  }

  if (BYTE6(v42) != 2)
  {
    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_56:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1657, v34);
  }

  ++WORD2(v42);
  *(v41 + v20) = v11;
  if (HIBYTE(v42))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1658, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_58;
  }

  if (WORD1(v42) - WORD2(v42) <= 5)
  {
LABEL_58:
    v35 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
    goto LABEL_60;
  }

  if (BYTE6(v42) != 2)
  {
    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_60:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1658, v35);
  }

  v21 = v41 + WORD2(v42);
  *(v21 + 4) = 0;
  *v21 = 0;
  v22 = WORD2(v42);
  v23 = WORD2(v42) + 6;
  WORD2(v42) += 6;
  if (HIBYTE(v42))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1659, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_62;
  }

  if (WORD1(v42) <= v23)
  {
LABEL_62:
    v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_64;
  }

  if (BYTE6(v42) != 2)
  {
    v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1659, v36);
  }

  WORD2(v42) = v22 + 7;
  *(v41 + v23) = 2;
  if (HIBYTE(v42))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1660, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_66;
  }

  v24 = WORD2(v42);
  if (WORD1(v42) <= WORD2(v42))
  {
LABEL_66:
    v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_68;
  }

  if (BYTE6(v42) != 2)
  {
    v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1660, v37);
  }

  ++WORD2(v42);
  *(v41 + v24) = 2 * (a2 == 2);
  if (HIBYTE(v42))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1662, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_70;
  }

  v25 = WORD2(v42);
  if (WORD1(v42) <= WORD2(v42))
  {
LABEL_70:
    v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_72;
  }

  if (BYTE6(v42) != 2)
  {
    v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_72:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1662, v38);
  }

  ++WORD2(v42);
  *(v41 + v25) = a4;
  if (HIBYTE(v42))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1663, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_74;
  }

  v26 = WORD2(v42);
  if (WORD1(v42) <= WORD2(v42))
  {
LABEL_74:
    v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_76;
  }

  if (BYTE6(v42) != 2)
  {
    v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1663, v39);
  }

  ++WORD2(v42);
  *(v41 + v26) = a5;
  if (HIBYTE(v42))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1664, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_78;
  }

  v27 = WORD2(v42);
  if (WORD1(v42) <= WORD2(v42))
  {
LABEL_78:
    v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_80;
  }

  if (BYTE6(v42) != 2)
  {
    v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1664, v40);
  }

  ++WORD2(v42);
  *(v41 + v27) = a6;
  if (a2)
  {
    v28 = a2;
    while (!HIBYTE(v42))
    {
      v29 = WORD2(v42);
      if (WORD1(v42) <= WORD2(v42))
      {
        goto LABEL_43;
      }

      if (BYTE6(v42) != 2)
      {
        v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_44;
      }

      v30 = *(a1 - 1 + v28--);
      ++WORD2(v42);
      *(v41 + v29) = v30;
      if ((v28 + 1) <= 1)
      {
        return sub_100020078(464, v41, BYTE4(v42), a7, sub_1001665F4, v15, v16, v17);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1667, "OI_STATUS _SRS_LEScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_43:
    v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_44:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1667, v31);
  }

  return sub_100020078(464, v41, BYTE4(v42), a7, sub_1001665F4, v15, v16, v17);
}

uint64_t sub_100176A90(uint64_t a1, unsigned int a2, unsigned int a3, char a4, char a5, char a6, unsigned int a7, uint64_t a8, uint64_t a9, void (*a10)())
{
  v15 = a3;
  if (a3 <= 1 && a2 != 2 && a2 != 16)
  {
    sub_1000D660C();
  }

  v54 = 0;
  v55 = 0;
  result = sub_10001FFD8(&v54);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1689, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_71;
  }

  v22 = WORD2(v55);
  if (WORD1(v55) <= WORD2(v55))
  {
LABEL_71:
    v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_73;
  }

  if (BYTE6(v55) != 2)
  {
    v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1689, v44);
  }

  ++WORD2(v55);
  *(v54 + v22) = 4;
  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1690, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_75;
  }

  v23 = WORD2(v55);
  if (WORD1(v55) <= WORD2(v55))
  {
LABEL_75:
    v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_77;
  }

  if (BYTE6(v55) != 2)
  {
    v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1690, v45);
  }

  ++WORD2(v55);
  *(v54 + v23) = 27;
  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1691, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_79;
  }

  v24 = WORD2(v55);
  if (WORD1(v55) <= WORD2(v55))
  {
LABEL_79:
    v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_81;
  }

  if (BYTE6(v55) != 2)
  {
    v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1691, v46);
  }

  ++WORD2(v55);
  *(v54 + v24) = v15;
  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1692, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_83;
  }

  if (WORD1(v55) - WORD2(v55) <= 5)
  {
LABEL_83:
    v47 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
    goto LABEL_85;
  }

  if (BYTE6(v55) != 2)
  {
    v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1692, v47);
  }

  v25 = v54 + WORD2(v55);
  *(v25 + 4) = 0;
  *v25 = 0;
  v26 = WORD2(v55);
  v27 = WORD2(v55) + 6;
  WORD2(v55) += 6;
  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1693, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_87;
  }

  if (WORD1(v55) <= v27)
  {
LABEL_87:
    v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_89;
  }

  if (BYTE6(v55) != 2)
  {
    v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1693, v48);
  }

  WORD2(v55) = v26 + 7;
  *(v54 + v27) = 2;
  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1694, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_91;
  }

  v28 = WORD2(v55);
  if (WORD1(v55) <= WORD2(v55))
  {
LABEL_91:
    v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_93;
  }

  if (BYTE6(v55) != 2)
  {
    v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_93:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1694, v49);
  }

  ++WORD2(v55);
  *(v54 + v28) = 2 * (a2 == 2);
  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1696, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_95;
  }

  v29 = WORD2(v55);
  if (WORD1(v55) <= WORD2(v55))
  {
LABEL_95:
    v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_97;
  }

  if (BYTE6(v55) != 2)
  {
    v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_97:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1696, v50);
  }

  ++WORD2(v55);
  *(v54 + v29) = a4;
  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1697, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_99;
  }

  v30 = WORD2(v55);
  if (WORD1(v55) <= WORD2(v55))
  {
LABEL_99:
    v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_101;
  }

  if (BYTE6(v55) != 2)
  {
    v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1697, v51);
  }

  ++WORD2(v55);
  *(v54 + v30) = a5;
  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1698, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_103;
  }

  v31 = WORD2(v55);
  if (WORD1(v55) <= WORD2(v55))
  {
LABEL_103:
    v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_105;
  }

  if (BYTE6(v55) != 2)
  {
    v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_105:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1698, v52);
  }

  ++WORD2(v55);
  *(v54 + v31) = a6;
  if (a2)
  {
    v32 = a2;
    while (!HIBYTE(v55))
    {
      v33 = WORD2(v55);
      if (WORD1(v55) <= WORD2(v55))
      {
        goto LABEL_60;
      }

      if (BYTE6(v55) != 2)
      {
        v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_61;
      }

      v34 = *(a1 - 1 + v32--);
      ++WORD2(v55);
      *(v54 + v33) = v34;
      if ((v32 + 1) <= 1)
      {
        goto LABEL_39;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1702, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_60:
    v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_61:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1702, v41);
  }

LABEL_39:
  if (HIBYTE(v55))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1705, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_107;
  }

  if (WORD1(v55) - WORD2(v55) <= 1)
  {
LABEL_107:
    v53 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_109;
  }

  if (BYTE6(v55) != 2)
  {
    v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_109:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1705, v53);
  }

  *(v54 + WORD2(v55)) = a7;
  WORD2(v55) += 2;
  if (a8 && a7)
  {
    v35 = 0;
    while (!HIBYTE(v55))
    {
      v36 = WORD2(v55);
      if (WORD1(v55) <= WORD2(v55))
      {
        goto LABEL_64;
      }

      if (BYTE6(v55) != 2)
      {
        v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_65;
      }

      v37 = *(a8 + v35);
      ++WORD2(v55);
      *(v54 + v36) = v37;
      if (++v35 >= a7)
      {
        goto LABEL_49;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1708, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_64:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_65:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1708, v42);
  }

LABEL_49:
  if (a9 && a7)
  {
    v38 = 0;
    while (!HIBYTE(v55))
    {
      v39 = WORD2(v55);
      if (WORD1(v55) <= WORD2(v55))
      {
        goto LABEL_68;
      }

      if (BYTE6(v55) != 2)
      {
        v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_69;
      }

      v40 = *(a9 + v38);
      ++WORD2(v55);
      *(v54 + v39) = v40;
      if (++v38 >= a7)
      {
        return sub_100020078(464, v54, BYTE4(v55), a10, sub_1001665F4, v19, v20, v21);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1712, "OI_STATUS _SRS_LEScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_68:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_69:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1712, v43);
  }

  return sub_100020078(464, v54, BYTE4(v55), a10, sub_1001665F4, v19, v20, v21);
}

uint64_t sub_1001771F8(__int16 a1, char a2, char a3, char a4, char a5, char a6, void (*a7)())
{
  v34 = 0;
  v35 = 0;
  result = sub_10001FFD8(&v34);
  if (!result)
  {
    if (HIBYTE(v35))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1884, "OI_STATUS _SRS_SetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v18 = WORD2(v35);
      if (WORD1(v35) > WORD2(v35))
      {
        if (BYTE6(v35) == 2)
        {
          ++WORD2(v35);
          *(v34 + v18) = 2;
          if (HIBYTE(v35))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1885, "OI_STATUS _SRS_SetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v19 = WORD2(v35);
            if (WORD1(v35) > WORD2(v35))
            {
              if (BYTE6(v35) == 2)
              {
                ++WORD2(v35);
                *(v34 + v19) = 5;
                if (HIBYTE(v35))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1887, "OI_STATUS _SRS_SetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v35) - WORD2(v35) > 1)
                {
                  if (BYTE6(v35) == 2)
                  {
                    *(v34 + WORD2(v35)) = a1;
                    v20 = WORD2(v35);
                    v21 = WORD2(v35) + 2;
                    WORD2(v35) += 2;
                    if (HIBYTE(v35))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1888, "OI_STATUS _SRS_SetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v35) > v21)
                    {
                      if (BYTE6(v35) == 2)
                      {
                        WORD2(v35) = v20 + 3;
                        *(v34 + v21) = a2;
                        if (HIBYTE(v35))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1889, "OI_STATUS _SRS_SetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v22 = WORD2(v35);
                          if (WORD1(v35) > WORD2(v35))
                          {
                            if (BYTE6(v35) == 2)
                            {
                              ++WORD2(v35);
                              *(v34 + v22) = a3;
                              if (HIBYTE(v35))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1890, "OI_STATUS _SRS_SetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v23 = WORD2(v35);
                                if (WORD1(v35) > WORD2(v35))
                                {
                                  if (BYTE6(v35) == 2)
                                  {
                                    ++WORD2(v35);
                                    *(v34 + v23) = a4;
                                    if (HIBYTE(v35))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1891, "OI_STATUS _SRS_SetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                    }

                                    else
                                    {
                                      v24 = WORD2(v35);
                                      if (WORD1(v35) > WORD2(v35))
                                      {
                                        if (BYTE6(v35) == 2)
                                        {
                                          ++WORD2(v35);
                                          *(v34 + v24) = a5;
                                          if (HIBYTE(v35))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1892, "OI_STATUS _SRS_SetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                          }

                                          else
                                          {
                                            v25 = WORD2(v35);
                                            if (WORD1(v35) > WORD2(v35))
                                            {
                                              if (BYTE6(v35) == 2)
                                              {
                                                ++WORD2(v35);
                                                *(v34 + v25) = a6;
                                                return sub_100020078(464, v34, BYTE4(v35), a7, sub_1001665F4, v15, v16, v17);
                                              }

                                              v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1892, v33);
                                            }
                                          }

                                          v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_59;
                                        }

                                        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1891, v32);
                                      }
                                    }

                                    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_55;
                                  }

                                  v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1890, v31);
                                }
                              }

                              v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_51;
                            }

                            v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1889, v30);
                          }
                        }

                        v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_47;
                      }

                      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1888, v29);
                    }

                    v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_43;
                  }

                  v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1887, v28);
                }

                v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_39;
              }

              v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1885, v27);
            }
          }

          v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_35;
        }

        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1884, v26);
      }
    }

    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_100177668(char a1, void (*a2)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1784, "OI_STATUS _SRS_WriteLocalHostState(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v8) = 1;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1785, "OI_STATUS _SRS_WriteLocalHostState(_Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v16);
            if (WORD1(v16) > WORD2(v16))
            {
              if (BYTE6(v16) == 2)
              {
                ++WORD2(v16);
                *(v15 + v9) = 10;
                if (HIBYTE(v16))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1787, "OI_STATUS _SRS_WriteLocalHostState(_Bool, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v16);
                  if (WORD1(v16) > WORD2(v16))
                  {
                    if (BYTE6(v16) == 2)
                    {
                      ++WORD2(v16);
                      *(v15 + v10) = a1;
                      if (HIBYTE(v16))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1788, "OI_STATUS _SRS_WriteLocalHostState(_Bool, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v16) > WORD2(v16))
                      {
                        if (BYTE6(v16) == 2)
                        {
                          *(v15 + WORD2(v16)) = 0;
                          ++WORD2(v16);
                          return sub_100020078(464, v15, BYTE4(v16), a2, sub_1001665F4, v5, v6, v7);
                        }

                        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1788, v14);
                      }

                      v14 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                      goto LABEL_31;
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1787, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1785, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1784, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001778B4(uint64_t a1, int a2, int a3, void (*a4)())
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v7 = sub_10023DB58(a1, &v31);
  if (!v7)
  {
    v8 = sub_10001FFD8(&v29);
    if (v8)
    {
      return v8;
    }

    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1275, "OI_STATUS _SRS_WriteHiPrioConn(OI_BD_ADDR *, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v13 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          ++WORD2(v30);
          *(v29 + v13) = 2;
          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1276, "OI_STATUS _SRS_WriteHiPrioConn(OI_BD_ADDR *, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v14 = WORD2(v30);
            if (WORD1(v30) > WORD2(v30))
            {
              if (BYTE6(v30) == 2)
              {
                ++WORD2(v30);
                *(v29 + v14) = 1;
                if (HIBYTE(v30))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1277, "OI_STATUS _SRS_WriteHiPrioConn(OI_BD_ADDR *, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v30) - WORD2(v30) > 1)
                {
                  if (BYTE6(v30) == 2)
                  {
                    *(v29 + WORD2(v30)) = *v31;
                    v15 = WORD2(v30);
                    v16 = WORD2(v30) + 2;
                    WORD2(v30) += 2;
                    if (HIBYTE(v30))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1278, "OI_STATUS _SRS_WriteHiPrioConn(OI_BD_ADDR *, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v30) > v16)
                    {
                      if (BYTE6(v30) == 2)
                      {
                        WORD2(v30) = v15 + 3;
                        *(v29 + v16) = a2;
                        if (HIBYTE(v30))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1279, "OI_STATUS _SRS_WriteHiPrioConn(OI_BD_ADDR *, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v17 = WORD2(v30);
                          if (WORD1(v30) > WORD2(v30))
                          {
                            if (BYTE6(v30) == 2)
                            {
                              ++WORD2(v30);
                              *(v29 + v17) = 0;
                              if (HIBYTE(v30))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1280, "OI_STATUS _SRS_WriteHiPrioConn(OI_BD_ADDR *, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v18 = WORD2(v30);
                                if (WORD1(v30) > WORD2(v30))
                                {
                                  if (BYTE6(v30) == 2)
                                  {
                                    ++WORD2(v30);
                                    *(v29 + v18) = 1;
                                    if (a3 == 2)
                                    {
                                      v19 = 2 * (a2 != 0);
                                    }

                                    else
                                    {
                                      v19 = a3 == 1 && a2 != 0;
                                    }

                                    if (HIBYTE(v30))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1297, "OI_STATUS _SRS_WriteHiPrioConn(OI_BD_ADDR *, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                                    }

                                    else
                                    {
                                      v20 = WORD2(v30);
                                      if (WORD1(v30) > WORD2(v30))
                                      {
                                        if (BYTE6(v30) == 2)
                                        {
                                          ++WORD2(v30);
                                          *(v29 + v20) = v19;
                                          return sub_100020078(464, v29, BYTE4(v30), a4, sub_1001665F4, v10, v11, v12);
                                        }

                                        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1297, v28);
                                      }
                                    }

                                    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_61;
                                  }

                                  v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1280, v27);
                                }
                              }

                              v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_57;
                            }

                            v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1279, v26);
                          }
                        }

                        v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_53;
                      }

                      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1278, v25);
                    }

                    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_49;
                  }

                  v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1277, v24);
                }

                v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_45;
              }

              v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1276, v23);
            }
          }

          v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_41;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1275, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_37;
  }

  v8 = v7;
  if (sub_10000C240())
  {
    sub_10000AF54("VSC Error %!", v8);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v8;
}

uint64_t sub_100177D30(_WORD *a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1116, "OI_STATUS _SRS_ReadRawRSSI(OI_HCI_CONNECTION_HANDLE, BT_VSC_READ_RAW_RSSI_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = *a1;
        WORD2(v10) += 2;
        return sub_100020078(97, v9, BYTE4(v10), a2, sub_10017E82C, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1116, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100177E28(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(347, v6, BYTE4(v7), a1, sub_1001665F4, v3, v4, v5);
  }

  return result;
}

uint64_t sub_100177E84(_WORD *a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1336, "OI_STATUS _SRS_LeSetPrioritizationThreshold(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 2;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1337, "OI_STATUS _SRS_LeSetPrioritizationThreshold(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 3;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1338, "OI_STATUS _SRS_LeSetPrioritizationThreshold(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v19) - WORD2(v19) > 1)
                {
                  if (BYTE6(v19) == 2)
                  {
                    *(v18 + WORD2(v19)) = *a1;
                    v12 = WORD2(v19);
                    v13 = WORD2(v19) + 2;
                    WORD2(v19) += 2;
                    if (HIBYTE(v19))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1339, "OI_STATUS _SRS_LeSetPrioritizationThreshold(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v19) > v13)
                    {
                      if (BYTE6(v19) == 2)
                      {
                        WORD2(v19) = v12 + 3;
                        *(v18 + v13) = a2;
                        return sub_100020078(464, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                      }

                      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1339, v17);
                    }

                    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1338, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1337, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1336, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001780F8(char a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1353, "OI_STATUS _SRS_LMPRoutingEnable(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 8;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1354, "OI_STATUS _SRS_LMPRoutingEnable(_Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 1;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1355, "OI_STATUS _SRS_LMPRoutingEnable(_Bool, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1355, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1354, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1353, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001782C8(_WORD *a1, char a2, void (*a3)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2248, "OI_STATUS _SRS_SetMaximumConnectionUpdateInstant(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v10) = 6;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2249, "OI_STATUS _SRS_SetMaximumConnectionUpdateInstant(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v23);
            if (WORD1(v23) > WORD2(v23))
            {
              if (BYTE6(v23) == 2)
              {
                ++WORD2(v23);
                *(v22 + v11) = 9;
                if (HIBYTE(v23))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2250, "OI_STATUS _SRS_SetMaximumConnectionUpdateInstant(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v23);
                  if (WORD1(v23) > WORD2(v23))
                  {
                    if (BYTE6(v23) == 2)
                    {
                      ++WORD2(v23);
                      *(v22 + v12) = 3;
                      if (HIBYTE(v23))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2251, "OI_STATUS _SRS_SetMaximumConnectionUpdateInstant(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v23) - WORD2(v23) > 1)
                      {
                        if (BYTE6(v23) == 2)
                        {
                          *(v22 + WORD2(v23)) = *a1;
                          v13 = WORD2(v23);
                          v14 = WORD2(v23) + 2;
                          WORD2(v23) += 2;
                          if (HIBYTE(v23))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2252, "OI_STATUS _SRS_SetMaximumConnectionUpdateInstant(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v23) > v14)
                          {
                            if (BYTE6(v23) == 2)
                            {
                              WORD2(v23) = v13 + 3;
                              *(v22 + v14) = a2;
                              if (HIBYTE(v23))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2253, "OI_STATUS _SRS_SetMaximumConnectionUpdateInstant(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v15 = WORD2(v23);
                                if (WORD1(v23) > WORD2(v23))
                                {
                                  if (BYTE6(v23) == 2)
                                  {
                                    ++WORD2(v23);
                                    *(v22 + v15) = 1;
                                    return sub_100020078(464, v22, BYTE4(v23), a3, sub_1001665F4, v7, v8, v9);
                                  }

                                  v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2253, v21);
                                }
                              }

                              v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_45;
                            }

                            v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2252, v20);
                          }

                          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_41;
                        }

                        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2251, v19);
                      }

                      v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_37;
                    }

                    v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2250, v18);
                  }
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_33;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2249, v17);
            }
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_29;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2248, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100178634(void (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1130, "OI_STATUS _SRS_ReadProprietaryLocalFeatures(BT_VSC_READ_PROP_LOCAL_FEATURES_CB)");
    }

    else
    {
      v6 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v6) = 1;
          if (HIBYTE(v11))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1131, "OI_STATUS _SRS_ReadProprietaryLocalFeatures(BT_VSC_READ_PROP_LOCAL_FEATURES_CB)");
          }

          else
          {
            v7 = WORD2(v11);
            if (WORD1(v11) > WORD2(v11))
            {
              if (BYTE6(v11) == 2)
              {
                ++WORD2(v11);
                *(v10 + v7) = 8;
                return sub_100020078(464, v10, BYTE4(v11), a1, sub_10017E984, v3, v4, v5);
              }

              v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1131, v9);
            }
          }

          v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1130, v8);
      }
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100178788(__int16 a1, void (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1144, "OI_STATUS _SRS_ReadProprietaryRemoteFeatures(OI_HCI_LM_HANDLE, BT_VSC_READ_PROP_REMOTE_FEATURES_CB)");
    }

    else
    {
      v8 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v8) = 1;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1145, "OI_STATUS _SRS_ReadProprietaryRemoteFeatures(OI_HCI_LM_HANDLE, BT_VSC_READ_PROP_REMOTE_FEATURES_CB)");
          }

          else
          {
            v9 = WORD2(v14);
            if (WORD1(v14) > WORD2(v14))
            {
              if (BYTE6(v14) == 2)
              {
                ++WORD2(v14);
                *(v13 + v9) = 9;
                if (HIBYTE(v14))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1146, "OI_STATUS _SRS_ReadProprietaryRemoteFeatures(OI_HCI_LM_HANDLE, BT_VSC_READ_PROP_REMOTE_FEATURES_CB)");
                }

                else if (WORD1(v14) - WORD2(v14) > 1)
                {
                  if (BYTE6(v14) == 2)
                  {
                    *(v13 + WORD2(v14)) = a1;
                    WORD2(v14) += 2;
                    return sub_100020078(464, v13, BYTE4(v14), a2, sub_10017EB2C, v5, v6, v7);
                  }

                  v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1146, v12);
                }

                v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_24;
              }

              v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1145, v11);
            }
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1144, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100178974(_WORD *a1, __int16 a2, char a3, void (*a4)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2104, "OI_STATUS _SRS_PhyStatsEnable(OI_HCI_CONNECTION_HANDLE, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v12 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v12) = 10;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2105, "OI_STATUS _SRS_PhyStatsEnable(OI_HCI_CONNECTION_HANDLE, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v13 = WORD2(v23);
            if (WORD1(v23) > WORD2(v23))
            {
              if (BYTE6(v23) == 2)
              {
                ++WORD2(v23);
                *(v22 + v13) = 1;
                if (HIBYTE(v23))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2107, "OI_STATUS _SRS_PhyStatsEnable(OI_HCI_CONNECTION_HANDLE, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v23) - WORD2(v23) > 1)
                {
                  if (BYTE6(v23) == 2)
                  {
                    *(v22 + WORD2(v23)) = *a1;
                    v14 = WORD2(v23) + 2;
                    WORD2(v23) += 2;
                    if (HIBYTE(v23))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2108, "OI_STATUS _SRS_PhyStatsEnable(OI_HCI_CONNECTION_HANDLE, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v23) - v14 > 1)
                    {
                      if (BYTE6(v23) == 2)
                      {
                        *(v22 + v14) = a2;
                        *(v22 + WORD2(v23) + 1) = HIBYTE(a2);
                        v15 = WORD2(v23);
                        v16 = WORD2(v23) + 2;
                        WORD2(v23) += 2;
                        if (HIBYTE(v23))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2109, "OI_STATUS _SRS_PhyStatsEnable(OI_HCI_CONNECTION_HANDLE, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                        }

                        else if (WORD1(v23) > v16)
                        {
                          if (BYTE6(v23) == 2)
                          {
                            WORD2(v23) = v15 + 3;
                            *(v22 + v16) = a3;
                            return sub_100020078(464, v22, BYTE4(v23), a4, sub_1001665F4, v9, v10, v11);
                          }

                          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2109, v21);
                        }

                        v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_38;
                      }

                      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2108, v20);
                    }

                    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_34;
                  }

                  v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2107, v19);
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_30;
              }

              v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2105, v18);
            }
          }

          v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_26;
        }

        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2104, v17);
      }
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100178C80(__int16 a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2672, "OI_STATUS _SRS_EnhancedReadPowerCapState(uint16_t, uint8_t, BT_VSC_READ_POWERCAP_STATE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 1;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2673, "OI_STATUS _SRS_EnhancedReadPowerCapState(uint16_t, uint8_t, BT_VSC_READ_POWERCAP_STATE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 20;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2674, "OI_STATUS _SRS_EnhancedReadPowerCapState(uint16_t, uint8_t, BT_VSC_READ_POWERCAP_STATE_CB)");
                }

                else if (WORD1(v19) - WORD2(v19) > 1)
                {
                  if (BYTE6(v19) == 2)
                  {
                    *(v18 + WORD2(v19)) = a1;
                    v12 = WORD2(v19);
                    v13 = WORD2(v19) + 2;
                    WORD2(v19) += 2;
                    if (HIBYTE(v19))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2675, "OI_STATUS _SRS_EnhancedReadPowerCapState(uint16_t, uint8_t, BT_VSC_READ_POWERCAP_STATE_CB)");
                    }

                    else if (WORD1(v19) > v13)
                    {
                      if (BYTE6(v19) == 2)
                      {
                        WORD2(v19) = v12 + 3;
                        *(v18 + v13) = a2;
                        return sub_100020078(464, v18, BYTE4(v19), a3, sub_10016A5F0, v7, v8, v9);
                      }

                      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2675, v17);
                    }

                    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2674, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2673, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2672, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100178EF0(char a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2203, "OI_STATUS _SRS_EnableHostWakeReport(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 9;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2204, "OI_STATUS _SRS_EnableHostWakeReport(_Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 1;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2205, "OI_STATUS _SRS_EnableHostWakeReport(_Bool, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2205, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2204, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2203, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001790C0(char a1, void (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2219, "OI_STATUS _SRS_EnablePowerTag(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v8) = 9;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2220, "OI_STATUS _SRS_EnablePowerTag(_Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v14);
            if (WORD1(v14) > WORD2(v14))
            {
              if (BYTE6(v14) == 2)
              {
                ++WORD2(v14);
                *(v13 + v9) = 2;
                if (HIBYTE(v14))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2221, "OI_STATUS _SRS_EnablePowerTag(_Bool, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v14) - WORD2(v14) > 3)
                {
                  if (BYTE6(v14) == 2)
                  {
                    *(v13 + WORD2(v14)) = a1;
                    *(v13 + WORD2(v14) + 1) = 0;
                    *(v13 + WORD2(v14) + 3) = 0;
                    WORD2(v14) += 4;
                    return sub_100020078(464, v13, BYTE4(v14), a2, sub_1001665F4, v5, v6, v7);
                  }

                  v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2221, v12);
                }

                v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_24;
              }

              v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2220, v11);
            }
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2219, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001792C8(char a1, _WORD *a2, _BYTE *a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7, void (*a8)())
{
  v37 = 0;
  v38 = 0;
  result = sub_10001FFD8(&v37);
  if (!result)
  {
    if (HIBYTE(v38))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2519, "OI_STATUS _SRS_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v20 = WORD2(v38);
      if (WORD1(v38) > WORD2(v38))
      {
        if (BYTE6(v38) == 2)
        {
          ++WORD2(v38);
          *(v37 + v20) = 7;
          if (HIBYTE(v38))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2520, "OI_STATUS _SRS_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v21 = WORD2(v38);
            if (WORD1(v38) > WORD2(v38))
            {
              if (BYTE6(v38) == 2)
              {
                ++WORD2(v38);
                *(v37 + v21) = 8;
                if (HIBYTE(v38))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2521, "OI_STATUS _SRS_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v22 = WORD2(v38);
                  if (WORD1(v38) > WORD2(v38))
                  {
                    if (BYTE6(v38) == 2)
                    {
                      ++WORD2(v38);
                      *(v37 + v22) = a1;
                      if (HIBYTE(v38))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2522, "OI_STATUS _SRS_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v38) - WORD2(v38) > 1)
                      {
                        if (BYTE6(v38) == 2)
                        {
                          *(v37 + WORD2(v38)) = *a2;
                          v23 = WORD2(v38) + 2;
                          WORD2(v38) += 2;
                          if (HIBYTE(v38))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2523, "OI_STATUS _SRS_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v38) - v23 > 1)
                          {
                            if (BYTE6(v38) == 2)
                            {
                              *(v37 + v23) = *a3;
                              *(v37 + WORD2(v38) + 1) = a3[1];
                              v24 = WORD2(v38) + 2;
                              WORD2(v38) += 2;
                              if (HIBYTE(v38))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2524, "OI_STATUS _SRS_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v38) - v24 > 1)
                              {
                                if (BYTE6(v38) == 2)
                                {
                                  *(v37 + v24) = a4;
                                  *(v37 + WORD2(v38) + 1) = HIBYTE(a4);
                                  v25 = WORD2(v38) + 2;
                                  WORD2(v38) += 2;
                                  if (HIBYTE(v38))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2525, "OI_STATUS _SRS_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else if (WORD1(v38) - v25 > 1)
                                  {
                                    if (BYTE6(v38) == 2)
                                    {
                                      *(v37 + v25) = a5;
                                      *(v37 + WORD2(v38) + 1) = HIBYTE(a5);
                                      v26 = WORD2(v38) + 2;
                                      WORD2(v38) += 2;
                                      if (HIBYTE(v38))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2526, "OI_STATUS _SRS_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                      }

                                      else if (WORD1(v38) - v26 > 1)
                                      {
                                        if (BYTE6(v38) == 2)
                                        {
                                          *(v37 + v26) = a6;
                                          *(v37 + WORD2(v38) + 1) = HIBYTE(a6);
                                          v27 = WORD2(v38) + 2;
                                          WORD2(v38) += 2;
                                          if (HIBYTE(v38))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2527, "OI_STATUS _SRS_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                          }

                                          else if (WORD1(v38) - v27 > 1)
                                          {
                                            if (BYTE6(v38) == 2)
                                            {
                                              *(v37 + v27) = a7;
                                              *(v37 + WORD2(v38) + 1) = HIBYTE(a7);
                                              WORD2(v38) += 2;
                                              return sub_100020078(464, v37, BYTE4(v38), a8, sub_1001665F4, v17, v18, v19);
                                            }

                                            v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2527, v36);
                                          }

                                          v36 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                          goto LABEL_66;
                                        }

                                        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2526, v35);
                                      }

                                      v35 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                      goto LABEL_62;
                                    }

                                    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2525, v34);
                                  }

                                  v34 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_58;
                                }

                                v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2524, v33);
                              }

                              v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_54;
                            }

                            v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2523, v32);
                          }

                          v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_50;
                        }

                        v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2522, v31);
                      }

                      v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_46;
                    }

                    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2521, v30);
                  }
                }

                v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_42;
              }

              v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2520, v29);
            }
          }

          v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_38;
        }

        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2519, v28);
      }
    }

    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100179848(__int16 a1, char a2, uint64_t a3, char a4, __int16 a5, char a6, char a7, char a8, void (*a9)())
{
  v41 = 0;
  v42 = 0;
  result = sub_10001FFD8(&v41);
  if (!result)
  {
    if (HIBYTE(v42))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1962, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
    }

    else
    {
      v18 = WORD2(v42);
      if (WORD1(v42) > WORD2(v42))
      {
        if (BYTE6(v42) == 2)
        {
          ++WORD2(v42);
          *(v41 + v18) = 4;
          if (HIBYTE(v42))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1963, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
          }

          else
          {
            v19 = WORD2(v42);
            if (WORD1(v42) > WORD2(v42))
            {
              if (BYTE6(v42) == 2)
              {
                ++WORD2(v42);
                *(v41 + v19) = 32;
                if (HIBYTE(v42))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1964, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
                }

                else if (WORD1(v42) - WORD2(v42) > 1)
                {
                  if (BYTE6(v42) == 2)
                  {
                    *(v41 + WORD2(v42)) = a1;
                    v20 = WORD2(v42);
                    v21 = WORD2(v42) + 2;
                    WORD2(v42) += 2;
                    if (HIBYTE(v42))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1965, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
                    }

                    else if (WORD1(v42) > v21)
                    {
                      if (BYTE6(v42) == 2)
                      {
                        WORD2(v42) = v20 + 3;
                        *(v41 + v21) = a2;
                        if (HIBYTE(v42))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1966, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
                        }

                        else if (WORD1(v42) - WORD2(v42) > 5)
                        {
                          if (BYTE6(v42) == 2)
                          {
                            sub_1000075EC((v41 + WORD2(v42)), a3, 6uLL);
                            v25 = WORD2(v42);
                            v26 = WORD2(v42) + 6;
                            WORD2(v42) += 6;
                            if (HIBYTE(v42))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1967, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
                            }

                            else if (WORD1(v42) > v26)
                            {
                              if (BYTE6(v42) == 2)
                              {
                                WORD2(v42) = v25 + 7;
                                *(v41 + v26) = a4;
                                if (HIBYTE(v42))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1968, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
                                }

                                else if (WORD1(v42) - WORD2(v42) > 1)
                                {
                                  if (BYTE6(v42) == 2)
                                  {
                                    *(v41 + WORD2(v42)) = a5;
                                    v27 = WORD2(v42);
                                    v28 = WORD2(v42) + 2;
                                    WORD2(v42) += 2;
                                    if (HIBYTE(v42))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1969, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
                                    }

                                    else if (WORD1(v42) > v28)
                                    {
                                      if (BYTE6(v42) == 2)
                                      {
                                        WORD2(v42) = v27 + 3;
                                        *(v41 + v28) = a6;
                                        if (HIBYTE(v42))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1970, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
                                        }

                                        else
                                        {
                                          v29 = WORD2(v42);
                                          if (WORD1(v42) > WORD2(v42))
                                          {
                                            if (BYTE6(v42) == 2)
                                            {
                                              ++WORD2(v42);
                                              *(v41 + v29) = a7;
                                              if (HIBYTE(v42))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1971, "OI_STATUS _SRS_AdvBufferConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
                                              }

                                              else
                                              {
                                                v30 = WORD2(v42);
                                                if (WORD1(v42) > WORD2(v42))
                                                {
                                                  if (BYTE6(v42) == 2)
                                                  {
                                                    ++WORD2(v42);
                                                    *(v41 + v30) = a8;
                                                    return sub_100020078(464, v41, BYTE4(v42), a9, sub_1001665F4, v22, v23, v24);
                                                  }

                                                  v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1971, v40);
                                                }
                                              }

                                              v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_73;
                                            }

                                            v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1970, v39);
                                          }
                                        }

                                        v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_69;
                                      }

                                      v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1969, v38);
                                    }

                                    v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_65;
                                  }

                                  v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1968, v37);
                                }

                                v37 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                goto LABEL_61;
                              }

                              v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1967, v36);
                            }

                            v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_57;
                          }

                          v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1966, v35);
                        }

                        v35 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                        goto LABEL_53;
                      }

                      v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1965, v34);
                    }

                    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_49;
                  }

                  v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1964, v33);
                }

                v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_45;
              }

              v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1963, v32);
            }
          }

          v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_41;
        }

        v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1962, v31);
      }
    }

    v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_100179DDC(__int16 a1, void (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2003, "OI_STATUS _SRS_AdvBufReadCommand(uint16_t, BT_VSC_ADVBUF_READ_CB)");
    }

    else
    {
      v8 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v8) = 4;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2004, "OI_STATUS _SRS_AdvBufReadCommand(uint16_t, BT_VSC_ADVBUF_READ_CB)");
          }

          else
          {
            v9 = WORD2(v14);
            if (WORD1(v14) > WORD2(v14))
            {
              if (BYTE6(v14) == 2)
              {
                ++WORD2(v14);
                *(v13 + v9) = 37;
                if (HIBYTE(v14))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2005, "OI_STATUS _SRS_AdvBufReadCommand(uint16_t, BT_VSC_ADVBUF_READ_CB)");
                }

                else if (WORD1(v14) - WORD2(v14) > 1)
                {
                  if (BYTE6(v14) == 2)
                  {
                    *(v13 + WORD2(v14)) = a1;
                    WORD2(v14) += 2;
                    return sub_100020078(464, v13, BYTE4(v14), a2, sub_10017ED1C, v5, v6, v7);
                  }

                  v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2005, v12);
                }

                v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_24;
              }

              v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2004, v11);
            }
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2003, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100179FC8(__int16 a1, char a2, char a3, __int16 a4, char a5, char a6, char a7, void (*a8)())
{
  v38 = 0;
  v39 = 0;
  result = sub_10001FFD8(&v38);
  if (!result)
  {
    if (HIBYTE(v39))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3116, "OI_STATUS _SRS_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
    }

    else
    {
      v20 = WORD2(v39);
      if (WORD1(v39) > WORD2(v39))
      {
        if (BYTE6(v39) == 2)
        {
          ++WORD2(v39);
          *(v38 + v20) = 4;
          if (HIBYTE(v39))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3117, "OI_STATUS _SRS_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
          }

          else
          {
            v21 = WORD2(v39);
            if (WORD1(v39) > WORD2(v39))
            {
              if (BYTE6(v39) == 2)
              {
                ++WORD2(v39);
                *(v38 + v21) = 48;
                if (HIBYTE(v39))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3119, "OI_STATUS _SRS_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                }

                else if (WORD1(v39) - WORD2(v39) > 1)
                {
                  if (BYTE6(v39) == 2)
                  {
                    *(v38 + WORD2(v39)) = a1;
                    v22 = WORD2(v39);
                    v23 = WORD2(v39) + 2;
                    WORD2(v39) += 2;
                    if (HIBYTE(v39))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3120, "OI_STATUS _SRS_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                    }

                    else if (WORD1(v39) > v23)
                    {
                      if (BYTE6(v39) == 2)
                      {
                        WORD2(v39) = v22 + 3;
                        *(v38 + v23) = a2;
                        if (HIBYTE(v39))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3121, "OI_STATUS _SRS_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                        }

                        else
                        {
                          v24 = WORD2(v39);
                          if (WORD1(v39) > WORD2(v39))
                          {
                            if (BYTE6(v39) == 2)
                            {
                              ++WORD2(v39);
                              *(v38 + v24) = a3;
                              if (HIBYTE(v39))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3122, "OI_STATUS _SRS_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                              }

                              else if (WORD1(v39) - WORD2(v39) > 1)
                              {
                                if (BYTE6(v39) == 2)
                                {
                                  *(v38 + WORD2(v39)) = a4;
                                  v25 = WORD2(v39);
                                  v26 = WORD2(v39) + 2;
                                  WORD2(v39) += 2;
                                  if (HIBYTE(v39))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3123, "OI_STATUS _SRS_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                                  }

                                  else if (WORD1(v39) > v26)
                                  {
                                    if (BYTE6(v39) == 2)
                                    {
                                      WORD2(v39) = v25 + 3;
                                      *(v38 + v26) = a5;
                                      if (HIBYTE(v39))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3124, "OI_STATUS _SRS_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                                      }

                                      else
                                      {
                                        v27 = WORD2(v39);
                                        if (WORD1(v39) > WORD2(v39))
                                        {
                                          if (BYTE6(v39) == 2)
                                          {
                                            ++WORD2(v39);
                                            *(v38 + v27) = a6;
                                            if (HIBYTE(v39))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3125, "OI_STATUS _SRS_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                                            }

                                            else
                                            {
                                              v28 = WORD2(v39);
                                              if (WORD1(v39) > WORD2(v39))
                                              {
                                                if (BYTE6(v39) == 2)
                                                {
                                                  ++WORD2(v39);
                                                  *(v38 + v28) = a7;
                                                  return sub_100020078(464, v38, BYTE4(v39), a8, sub_1001665F4, v17, v18, v19);
                                                }

                                                v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3125, v37);
                                              }
                                            }

                                            v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                            goto LABEL_66;
                                          }

                                          v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3124, v36);
                                        }
                                      }

                                      v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_62;
                                    }

                                    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3123, v35);
                                  }

                                  v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_58;
                                }

                                v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3122, v34);
                              }

                              v34 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_54;
                            }

                            v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3121, v33);
                          }
                        }

                        v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_50;
                      }

                      v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3120, v32);
                    }

                    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_46;
                  }

                  v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3119, v31);
                }

                v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_42;
              }

              v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3117, v30);
            }
          }

          v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_38;
        }

        v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3116, v29);
      }
    }

    v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_10017A4D0(__int16 a1, char a2, char a3, __int16 a4, __int16 a5, void (*a6)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (!result)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3171, "OI_STATUS _SRS_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
    }

    else
    {
      v16 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          ++WORD2(v30);
          *(v29 + v16) = 4;
          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3172, "OI_STATUS _SRS_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
          }

          else
          {
            v17 = WORD2(v30);
            if (WORD1(v30) > WORD2(v30))
            {
              if (BYTE6(v30) == 2)
              {
                ++WORD2(v30);
                *(v29 + v17) = 50;
                if (HIBYTE(v30))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3173, "OI_STATUS _SRS_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
                }

                else if (WORD1(v30) - WORD2(v30) > 1)
                {
                  if (BYTE6(v30) == 2)
                  {
                    *(v29 + WORD2(v30)) = a1;
                    v18 = WORD2(v30);
                    v19 = WORD2(v30) + 2;
                    WORD2(v30) += 2;
                    if (HIBYTE(v30))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3174, "OI_STATUS _SRS_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
                    }

                    else if (WORD1(v30) > v19)
                    {
                      if (BYTE6(v30) == 2)
                      {
                        WORD2(v30) = v18 + 3;
                        *(v29 + v19) = a2;
                        if (HIBYTE(v30))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3175, "OI_STATUS _SRS_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
                        }

                        else if (WORD1(v30) > WORD2(v30))
                        {
                          if (BYTE6(v30) == 2)
                          {
                            *(v29 + WORD2(v30)) = a3;
                            v20 = ++WORD2(v30);
                            if (HIBYTE(v30))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3176, "OI_STATUS _SRS_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
                            }

                            else if (WORD1(v30) - v20 > 1)
                            {
                              if (BYTE6(v30) == 2)
                              {
                                *(v29 + v20) = a4;
                                *(v29 + WORD2(v30) + 1) = HIBYTE(a4);
                                v21 = WORD2(v30) + 2;
                                WORD2(v30) += 2;
                                if (HIBYTE(v30))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3177, "OI_STATUS _SRS_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
                                }

                                else if (WORD1(v30) - v21 > 1)
                                {
                                  if (BYTE6(v30) == 2)
                                  {
                                    *(v29 + v21) = a5;
                                    *(v29 + WORD2(v30) + 1) = HIBYTE(a5);
                                    WORD2(v30) += 2;
                                    return sub_100020078(464, v29, BYTE4(v30), a6, sub_1001665F4, v13, v14, v15);
                                  }

                                  v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3177, v28);
                                }

                                v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                goto LABEL_52;
                              }

                              v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3176, v27);
                            }

                            v27 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                            goto LABEL_48;
                          }

                          v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3175, v26);
                        }

                        v26 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                        goto LABEL_44;
                      }

                      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3174, v25);
                    }

                    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_40;
                  }

                  v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3173, v24);
                }

                v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_36;
              }

              v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3172, v23);
            }
          }

          v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3171, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10017A8F8(__int16 a1, char a2, char a3, void (*a4)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1985, "OI_STATUS _SRS_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
    }

    else
    {
      v12 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v12) = 4;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1986, "OI_STATUS _SRS_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
          }

          else
          {
            v13 = WORD2(v23);
            if (WORD1(v23) > WORD2(v23))
            {
              if (BYTE6(v23) == 2)
              {
                ++WORD2(v23);
                *(v22 + v13) = 36;
                if (HIBYTE(v23))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1987, "OI_STATUS _SRS_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
                }

                else if (WORD1(v23) - WORD2(v23) > 1)
                {
                  if (BYTE6(v23) == 2)
                  {
                    *(v22 + WORD2(v23)) = a1;
                    v14 = WORD2(v23);
                    v15 = WORD2(v23) + 2;
                    WORD2(v23) += 2;
                    if (HIBYTE(v23))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1988, "OI_STATUS _SRS_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
                    }

                    else if (WORD1(v23) > v15)
                    {
                      if (BYTE6(v23) == 2)
                      {
                        WORD2(v23) = v14 + 3;
                        *(v22 + v15) = a2;
                        if (HIBYTE(v23))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1989, "OI_STATUS _SRS_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
                        }

                        else
                        {
                          v16 = WORD2(v23);
                          if (WORD1(v23) > WORD2(v23))
                          {
                            if (BYTE6(v23) == 2)
                            {
                              ++WORD2(v23);
                              *(v22 + v16) = a3;
                              return sub_100020078(464, v22, BYTE4(v23), a4, sub_1001665F4, v9, v10, v11);
                            }

                            v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1989, v21);
                          }
                        }

                        v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_38;
                      }

                      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1988, v20);
                    }

                    v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_34;
                  }

                  v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1987, v19);
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_30;
              }

              v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1986, v18);
            }
          }

          v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_26;
        }

        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1985, v17);
      }
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10017ABE4(__int16 a1, char a2, char a3, uint64_t a4, char a5, __int16 a6, char a7, char a8, char a9, char a10, unsigned __int8 a11, const void *a12, const void *a13, void (*a14)())
{
  if (a11)
  {
    if (!a12 || a13 == 0)
    {
      return 101;
    }
  }

  v59 = 0;
  v60 = 0;
  result = sub_10001FFD8(&v59);
  if (!result)
  {
    if (HIBYTE(v60))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2040, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
    }

    else
    {
      v24 = WORD2(v60);
      if (WORD1(v60) > WORD2(v60))
      {
        if (BYTE6(v60) == 2)
        {
          ++WORD2(v60);
          *(v59 + v24) = 4;
          if (HIBYTE(v60))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2041, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
          }

          else
          {
            v25 = WORD2(v60);
            if (WORD1(v60) > WORD2(v60))
            {
              if (BYTE6(v60) == 2)
              {
                ++WORD2(v60);
                *(v59 + v25) = 33;
                if (HIBYTE(v60))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2042, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                }

                else
                {
                  v26 = WORD2(v60);
                  if (WORD1(v60) > WORD2(v60))
                  {
                    if (BYTE6(v60) == 2)
                    {
                      ++WORD2(v60);
                      *(v59 + v26) = a2;
                      if (HIBYTE(v60))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2043, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                      }

                      else if (WORD1(v60) - WORD2(v60) > 1)
                      {
                        if (BYTE6(v60) == 2)
                        {
                          *(v59 + WORD2(v60)) = a1;
                          v27 = WORD2(v60);
                          v28 = WORD2(v60) + 2;
                          WORD2(v60) += 2;
                          if (HIBYTE(v60))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2044, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                          }

                          else if (WORD1(v60) > v28)
                          {
                            if (BYTE6(v60) == 2)
                            {
                              WORD2(v60) = v27 + 3;
                              *(v59 + v28) = a3;
                              if (HIBYTE(v60))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2045, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                              }

                              else if (WORD1(v60) - WORD2(v60) > 5)
                              {
                                if (BYTE6(v60) == 2)
                                {
                                  sub_1000075EC((v59 + WORD2(v60)), a4, 6uLL);
                                  v32 = WORD2(v60);
                                  v33 = WORD2(v60) + 6;
                                  WORD2(v60) += 6;
                                  if (HIBYTE(v60))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2046, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                  }

                                  else if (WORD1(v60) > v33)
                                  {
                                    if (BYTE6(v60) == 2)
                                    {
                                      WORD2(v60) = v32 + 7;
                                      *(v59 + v33) = a5;
                                      if (HIBYTE(v60))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2047, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                      }

                                      else if (WORD1(v60) - WORD2(v60) > 1)
                                      {
                                        if (BYTE6(v60) == 2)
                                        {
                                          *(v59 + WORD2(v60)) = a6;
                                          v34 = WORD2(v60);
                                          v35 = WORD2(v60) + 2;
                                          WORD2(v60) += 2;
                                          if (HIBYTE(v60))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2048, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                          }

                                          else if (WORD1(v60) > v35)
                                          {
                                            if (BYTE6(v60) == 2)
                                            {
                                              WORD2(v60) = v34 + 3;
                                              *(v59 + v35) = a7;
                                              if (HIBYTE(v60))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2049, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                              }

                                              else
                                              {
                                                v36 = WORD2(v60);
                                                if (WORD1(v60) > WORD2(v60))
                                                {
                                                  if (BYTE6(v60) == 2)
                                                  {
                                                    ++WORD2(v60);
                                                    *(v59 + v36) = a8;
                                                    if (HIBYTE(v60))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2050, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                                    }

                                                    else if (WORD1(v60) > WORD2(v60))
                                                    {
                                                      if (BYTE6(v60) == 2)
                                                      {
                                                        *(v59 + WORD2(v60)) = a9;
                                                        v37 = ++WORD2(v60);
                                                        if (HIBYTE(v60))
                                                        {
                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2051, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                                        }

                                                        else if (WORD1(v60) > v37)
                                                        {
                                                          if (BYTE6(v60) == 2)
                                                          {
                                                            *(v59 + v37) = a10;
                                                            v38 = ++WORD2(v60);
                                                            if (HIBYTE(v60))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2052, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                                            }

                                                            else if (WORD1(v60) - v38 > 1)
                                                            {
                                                              if (BYTE6(v60) == 2)
                                                              {
                                                                *(v59 + v38) = a11;
                                                                *(v59 + WORD2(v60) + 1) = 0;
                                                                v39 = WORD2(v60) + 2;
                                                                WORD2(v60) += 2;
                                                                if (a11)
                                                                {
                                                                  v40 = v59;
                                                                  if (HIBYTE(v60))
                                                                  {
                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2054, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                                                    v41 = 0;
                                                                  }

                                                                  else
                                                                  {
                                                                    v41 = WORD1(v60) - v39;
                                                                  }

                                                                  if (v41 < a11)
                                                                  {
                                                                    v57 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                                                  }

                                                                  else
                                                                  {
                                                                    if (BYTE6(v60) == 2)
                                                                    {
                                                                      memmove((v40 + v39), a12, a11);
                                                                      v39 = WORD2(v60) + a11;
                                                                      WORD2(v60) = v39;
                                                                      v42 = v59;
                                                                      if (HIBYTE(v60))
                                                                      {
                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2055, "OI_STATUS _SRS_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                                                        v43 = 0;
                                                                      }

                                                                      else
                                                                      {
                                                                        v43 = WORD1(v60) - v39;
                                                                      }

                                                                      if (v43 < a11)
                                                                      {
                                                                        v58 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                                                      }

                                                                      else
                                                                      {
                                                                        if (BYTE6(v60) == 2)
                                                                        {
                                                                          memmove((v42 + v39), a13, a11);
                                                                          LOBYTE(v39) = BYTE4(v60) + a11;
                                                                          WORD2(v60) += a11;
                                                                          return sub_100020078(464, v59, v39, a14, sub_10017EF38, v29, v30, v31);
                                                                        }

                                                                        v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                                      }

                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2055, v58);
                                                                    }

                                                                    v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                                  }

                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2054, v57);
                                                                }

                                                                return sub_100020078(464, v59, v39, a14, sub_10017EF38, v29, v30, v31);
                                                              }

                                                              v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_113:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2052, v56);
                                                            }

                                                            v56 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                            goto LABEL_113;
                                                          }

                                                          v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_109:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2051, v55);
                                                        }

                                                        v55 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                                        goto LABEL_109;
                                                      }

                                                      v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_105:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2050, v54);
                                                    }

                                                    v54 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                                    goto LABEL_105;
                                                  }

                                                  v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2049, v53);
                                                }
                                              }

                                              v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_101;
                                            }

                                            v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_97:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2048, v52);
                                          }

                                          v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_97;
                                        }

                                        v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_93:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2047, v51);
                                      }

                                      v51 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                      goto LABEL_93;
                                    }

                                    v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2046, v50);
                                  }

                                  v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_89;
                                }

                                v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2045, v49);
                              }

                              v49 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                              goto LABEL_85;
                            }

                            v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2044, v48);
                          }

                          v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_81;
                        }

                        v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2043, v47);
                      }

                      v47 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_77;
                    }

                    v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2042, v46);
                  }
                }

                v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_73;
              }

              v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2041, v45);
            }
          }

          v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_69;
        }

        v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2040, v44);
      }
    }

    v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_10017B458(__int16 a1, __int16 a2, void (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2019, "OI_STATUS _SRS_AdvBufConfigTimeSlice(uint16_t, uint16_t, BT_VSC_ADVBUF_CFG_TIME_SLICE_CB)");
    }

    else
    {
      v10 = WORD2(v18);
      if (WORD1(v18) > WORD2(v18))
      {
        if (BYTE6(v18) == 2)
        {
          ++WORD2(v18);
          *(v17 + v10) = 4;
          if (HIBYTE(v18))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2020, "OI_STATUS _SRS_AdvBufConfigTimeSlice(uint16_t, uint16_t, BT_VSC_ADVBUF_CFG_TIME_SLICE_CB)");
          }

          else
          {
            v11 = WORD2(v18);
            if (WORD1(v18) > WORD2(v18))
            {
              if (BYTE6(v18) == 2)
              {
                ++WORD2(v18);
                *(v17 + v11) = 40;
                if (HIBYTE(v18))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2021, "OI_STATUS _SRS_AdvBufConfigTimeSlice(uint16_t, uint16_t, BT_VSC_ADVBUF_CFG_TIME_SLICE_CB)");
                }

                else if (WORD1(v18) - WORD2(v18) > 1)
                {
                  if (BYTE6(v18) == 2)
                  {
                    *(v17 + WORD2(v18)) = a1;
                    v12 = WORD2(v18) + 2;
                    WORD2(v18) += 2;
                    if (HIBYTE(v18))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2022, "OI_STATUS _SRS_AdvBufConfigTimeSlice(uint16_t, uint16_t, BT_VSC_ADVBUF_CFG_TIME_SLICE_CB)");
                    }

                    else if (WORD1(v18) - v12 > 1)
                    {
                      if (BYTE6(v18) == 2)
                      {
                        *(v17 + v12) = a2;
                        *(v17 + WORD2(v18) + 1) = HIBYTE(a2);
                        WORD2(v18) += 2;
                        return sub_100020078(464, v17, BYTE4(v18), a3, sub_1001665F4, v7, v8, v9);
                      }

                      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2022, v16);
                    }

                    v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_31;
                  }

                  v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2021, v15);
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2020, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2019, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10017B6E4(__int16 a1, char a2, char a3, _BYTE *a4, void (*a5)())
{
  v46 = 0;
  v47 = 0;
  result = sub_10001FFD8(&v46);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3140, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_72;
  }

  v14 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_72:
    v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_74;
  }

  if (BYTE6(v47) != 2)
  {
    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3140, v41);
  }

  ++WORD2(v47);
  *(v46 + v14) = 4;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3141, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_76;
  }

  v15 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_76:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_78;
  }

  if (BYTE6(v47) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3141, v42);
  }

  ++WORD2(v47);
  *(v46 + v15) = 49;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3142, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_80;
  }

  if (WORD1(v47) - WORD2(v47) <= 1)
  {
LABEL_80:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_82;
  }

  if (BYTE6(v47) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3142, v43);
  }

  *(v46 + WORD2(v47)) = a1;
  v16 = WORD2(v47);
  v17 = WORD2(v47) + 2;
  WORD2(v47) += 2;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3143, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_84;
  }

  if (WORD1(v47) <= v17)
  {
LABEL_84:
    v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_86;
  }

  if (BYTE6(v47) != 2)
  {
    v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_86:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3143, v44);
  }

  WORD2(v47) = v16 + 3;
  *(v46 + v17) = a2;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3144, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_88;
  }

  v18 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_88:
    v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_90;
  }

  if (BYTE6(v47) != 2)
  {
    v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_90:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3144, v45);
  }

  v19 = a3 - a2 + 1;
  ++WORD2(v47);
  *(v46 + v18) = a3;
  if (v19)
  {
    v20 = 0;
    while (!HIBYTE(v47))
    {
      if (WORD1(v47) - WORD2(v47) <= 5)
      {
        goto LABEL_63;
      }

      if (BYTE6(v47) != 2)
      {
        v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_64;
      }

      sub_1000075EC((v46 + WORD2(v47)), a4, 6uLL);
      v21 = WORD2(v47);
      v22 = WORD2(v47) + 6;
      WORD2(v47) += 6;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3149, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_59:
        v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_60:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3149, v38);
      }

      if (WORD1(v47) <= v22)
      {
        goto LABEL_59;
      }

      if (BYTE6(v47) != 2)
      {
        v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_60;
      }

      v23 = a4[6];
      WORD2(v47) = v21 + 7;
      *(v46 + v22) = v23;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3150, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_55:
        v37 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_56:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3150, v37);
      }

      if (WORD1(v47) - WORD2(v47) <= 5)
      {
        goto LABEL_55;
      }

      if (BYTE6(v47) != 2)
      {
        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_56;
      }

      v24 = a4 + 7;
      sub_1000075EC((v46 + WORD2(v47)), v24, 6uLL);
      v25 = WORD2(v47);
      v26 = WORD2(v47) + 6;
      WORD2(v47) += 6;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3151, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_51:
        v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_52:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3151, v36);
      }

      if (WORD1(v47) <= v26)
      {
        goto LABEL_51;
      }

      if (BYTE6(v47) != 2)
      {
        v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_52;
      }

      v27 = v24[6];
      WORD2(v47) = v25 + 7;
      *(v46 + v26) = v27;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3152, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_47:
        v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_48:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3152, v35);
      }

      v28 = WORD2(v47);
      if (WORD1(v47) <= WORD2(v47))
      {
        goto LABEL_47;
      }

      if (BYTE6(v47) != 2)
      {
        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_48;
      }

      v29 = v24[7];
      ++WORD2(v47);
      *(v46 + v28) = v29;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3153, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_44:
        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_70:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3153, v34);
      }

      v30 = WORD2(v47);
      if (WORD1(v47) <= WORD2(v47))
      {
        goto LABEL_44;
      }

      if (BYTE6(v47) != 2)
      {
        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_70;
      }

      v31 = v24[8];
      ++WORD2(v47);
      *(v46 + v30) = v31;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3154, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_67:
        v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_68:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3154, v40);
      }

      v32 = WORD2(v47);
      if (WORD1(v47) <= WORD2(v47))
      {
        goto LABEL_67;
      }

      if (BYTE6(v47) != 2)
      {
        v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_68;
      }

      v33 = v24[9];
      ++WORD2(v47);
      *(v46 + v32) = v33;
      ++v20;
      a4 = v24 + 10;
      if (v20 >= v19)
      {
        return sub_100020078(464, v46, BYTE4(v47), a5, sub_1001665F4, v11, v12, v13);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3148, "OI_STATUS _SRS_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_63:
    v39 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_64:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3148, v39);
  }

  return sub_100020078(464, v46, BYTE4(v47), a5, sub_1001665F4, v11, v12, v13);
}

uint64_t sub_10017BD8C(char a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3251, "OI_STATUS _SRS_BTLETxAdvTrigTimeStamp(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 14;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3252, "OI_STATUS _SRS_BTLETxAdvTrigTimeStamp(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 2;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3253, "OI_STATUS _SRS_BTLETxAdvTrigTimeStamp(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v19);
                  if (WORD1(v19) > WORD2(v19))
                  {
                    if (BYTE6(v19) == 2)
                    {
                      ++WORD2(v19);
                      *(v18 + v12) = a1;
                      if (HIBYTE(v19))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3254, "OI_STATUS _SRS_BTLETxAdvTrigTimeStamp(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v13 = WORD2(v19);
                        if (WORD1(v19) > WORD2(v19))
                        {
                          if (BYTE6(v19) == 2)
                          {
                            ++WORD2(v19);
                            *(v18 + v13) = a2;
                            return sub_100020078(464, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                          }

                          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3254, v17);
                        }
                      }

                      v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_31;
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3253, v16);
                  }
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3252, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3251, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10017BFE0(char a1, char a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9, char a10, void (*a11)())
{
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (!result)
  {
    if (HIBYTE(v40))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2164, "OI_STATUS _SRS_GetScanStatsWithThreshold(uint8_t, uint8_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v21 = WORD2(v40);
      if (WORD1(v40) > WORD2(v40))
      {
        if (BYTE6(v40) == 2)
        {
          ++WORD2(v40);
          *(v39 + v21) = 10;
          if (HIBYTE(v40))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2165, "OI_STATUS _SRS_GetScanStatsWithThreshold(uint8_t, uint8_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v22 = WORD2(v40);
            if (WORD1(v40) > WORD2(v40))
            {
              if (BYTE6(v40) == 2)
              {
                ++WORD2(v40);
                *(v39 + v22) = 5;
                if (HIBYTE(v40))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2166, "OI_STATUS _SRS_GetScanStatsWithThreshold(uint8_t, uint8_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v23 = WORD2(v40);
                  if (WORD1(v40) > WORD2(v40))
                  {
                    if (BYTE6(v40) == 2)
                    {
                      ++WORD2(v40);
                      *(v39 + v23) = a1;
                      if (HIBYTE(v40))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2167, "OI_STATUS _SRS_GetScanStatsWithThreshold(uint8_t, uint8_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v24 = WORD2(v40);
                        if (WORD1(v40) > WORD2(v40))
                        {
                          if (BYTE6(v40) == 2)
                          {
                            ++WORD2(v40);
                            *(v39 + v24) = a2;
                            if (HIBYTE(v40))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2168, "OI_STATUS _SRS_GetScanStatsWithThreshold(uint8_t, uint8_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                            }

                            else if (WORD1(v40) - WORD2(v40) > 3)
                            {
                              if (BYTE6(v40) == 2)
                              {
                                *(v39 + WORD2(v40)) = a3;
                                *(v39 + WORD2(v40) + 2) = BYTE2(a3);
                                *(v39 + WORD2(v40) + 3) = HIBYTE(a3);
                                v25 = WORD2(v40) + 4;
                                WORD2(v40) += 4;
                                if (HIBYTE(v40))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2169, "OI_STATUS _SRS_GetScanStatsWithThreshold(uint8_t, uint8_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                }

                                else if (WORD1(v40) - v25 > 3)
                                {
                                  if (BYTE6(v40) == 2)
                                  {
                                    *(v39 + v25) = a4;
                                    *(v39 + WORD2(v40) + 1) = BYTE1(a4);
                                    *(v39 + WORD2(v40) + 2) = BYTE2(a4);
                                    *(v39 + WORD2(v40) + 3) = HIBYTE(a4);
                                    v26 = WORD2(v40) + 4;
                                    WORD2(v40) += 4;
                                    if (HIBYTE(v40))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2170, "OI_STATUS _SRS_GetScanStatsWithThreshold(uint8_t, uint8_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                    }

                                    else if (WORD1(v40) - v26 > 3)
                                    {
                                      if (BYTE6(v40) == 2)
                                      {
                                        *(v39 + v26) = a6;
                                        *(v39 + WORD2(v40) + 1) = BYTE1(a6);
                                        *(v39 + WORD2(v40) + 2) = BYTE2(a6);
                                        *(v39 + WORD2(v40) + 3) = HIBYTE(a6);
                                        v27 = WORD2(v40) + 4;
                                        WORD2(v40) += 4;
                                        if (HIBYTE(v40))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2171, "OI_STATUS _SRS_GetScanStatsWithThreshold(uint8_t, uint8_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                        }

                                        else if (WORD1(v40) - v27 > 3)
                                        {
                                          if (BYTE6(v40) == 2)
                                          {
                                            *(v39 + v27) = a8;
                                            *(v39 + WORD2(v40) + 1) = BYTE1(a8);
                                            *(v39 + WORD2(v40) + 2) = BYTE2(a8);
                                            *(v39 + WORD2(v40) + 3) = HIBYTE(a8);
                                            v28 = WORD2(v40);
                                            v29 = WORD2(v40) + 4;
                                            WORD2(v40) += 4;
                                            if (HIBYTE(v40))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2172, "OI_STATUS _SRS_GetScanStatsWithThreshold(uint8_t, uint8_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                            }

                                            else if (WORD1(v40) > v29)
                                            {
                                              if (BYTE6(v40) == 2)
                                              {
                                                WORD2(v40) = v28 + 5;
                                                *(v39 + v29) = a10;
                                                return sub_100020078(464, v39, BYTE4(v40), a11, sub_1001665F4, v18, v19, v20);
                                              }

                                              v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2172, v38);
                                            }

                                            v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                            goto LABEL_66;
                                          }

                                          v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2171, v37);
                                        }

                                        v37 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                        goto LABEL_62;
                                      }

                                      v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2170, v36);
                                    }

                                    v36 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                    goto LABEL_58;
                                  }

                                  v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2169, v35);
                                }

                                v35 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                goto LABEL_54;
                              }

                              v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2168, v34);
                            }

                            v34 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                            goto LABEL_50;
                          }

                          v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2167, v33);
                        }
                      }

                      v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_46;
                    }

                    v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2166, v32);
                  }
                }

                v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_42;
              }

              v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2165, v31);
            }
          }

          v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_38;
        }

        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2164, v30);
      }
    }

    v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_10017C5B4(int a1, void (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2233, "OI_STATUS _SRS_ConfigAppleExtAdvReport(uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v8) = 4;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2234, "OI_STATUS _SRS_ConfigAppleExtAdvReport(uint32_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v14);
            if (WORD1(v14) > WORD2(v14))
            {
              if (BYTE6(v14) == 2)
              {
                ++WORD2(v14);
                *(v13 + v9) = 15;
                if (HIBYTE(v14))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2235, "OI_STATUS _SRS_ConfigAppleExtAdvReport(uint32_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v14) - WORD2(v14) > 3)
                {
                  if (BYTE6(v14) == 2)
                  {
                    *(v13 + WORD2(v14)) = a1;
                    *(v13 + WORD2(v14) + 2) = BYTE2(a1);
                    *(v13 + WORD2(v14) + 3) = HIBYTE(a1);
                    WORD2(v14) += 4;
                    return sub_100020078(464, v13, BYTE4(v14), a2, sub_1001665F4, v5, v6, v7);
                  }

                  v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2235, v12);
                }

                v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_24;
              }

              v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2234, v11);
            }
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2233, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10017C7C8(_WORD *a1, char a2, char a3, __int16 a4, __int16 a5, void (*a6)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (!result)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1800, "OI_STATUS _SRS_CentralSkipSniffMode(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v16 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          ++WORD2(v30);
          *(v29 + v16) = 2;
          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1801, "OI_STATUS _SRS_CentralSkipSniffMode(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v17 = WORD2(v30);
            if (WORD1(v30) > WORD2(v30))
            {
              if (BYTE6(v30) == 2)
              {
                ++WORD2(v30);
                *(v29 + v17) = 2;
                if (HIBYTE(v30))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1802, "OI_STATUS _SRS_CentralSkipSniffMode(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v30) - WORD2(v30) > 1)
                {
                  if (BYTE6(v30) == 2)
                  {
                    *(v29 + WORD2(v30)) = *a1;
                    v18 = WORD2(v30);
                    v19 = WORD2(v30) + 2;
                    WORD2(v30) += 2;
                    if (HIBYTE(v30))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1803, "OI_STATUS _SRS_CentralSkipSniffMode(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v30) > v19)
                    {
                      if (BYTE6(v30) == 2)
                      {
                        WORD2(v30) = v18 + 3;
                        *(v29 + v19) = a2;
                        if (HIBYTE(v30))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1804, "OI_STATUS _SRS_CentralSkipSniffMode(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v20 = WORD2(v30);
                          if (WORD1(v30) > WORD2(v30))
                          {
                            if (BYTE6(v30) == 2)
                            {
                              ++WORD2(v30);
                              *(v29 + v20) = a3;
                              if (HIBYTE(v30))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1805, "OI_STATUS _SRS_CentralSkipSniffMode(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v30) - WORD2(v30) > 1)
                              {
                                if (BYTE6(v30) == 2)
                                {
                                  *(v29 + WORD2(v30)) = a4;
                                  v21 = WORD2(v30) + 2;
                                  WORD2(v30) += 2;
                                  if (HIBYTE(v30))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1806, "OI_STATUS _SRS_CentralSkipSniffMode(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else if (WORD1(v30) - v21 > 1)
                                  {
                                    if (BYTE6(v30) == 2)
                                    {
                                      *(v29 + v21) = a5;
                                      *(v29 + WORD2(v30) + 1) = HIBYTE(a5);
                                      WORD2(v30) += 2;
                                      return sub_100020078(464, v29, BYTE4(v30), a6, sub_1001665F4, v13, v14, v15);
                                    }

                                    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1806, v28);
                                  }

                                  v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_52;
                                }

                                v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1805, v27);
                              }

                              v27 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_48;
                            }

                            v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1804, v26);
                          }
                        }

                        v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_44;
                      }

                      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1803, v25);
                    }

                    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_40;
                  }

                  v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1802, v24);
                }

                v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_36;
              }

              v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1801, v23);
            }
          }

          v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1800, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10017CBF8(char *a1, void (*a2)())
{
  v51 = 0;
  v52 = 0;
  result = sub_10001FFD8(&v51);
  if (!result)
  {
    if (HIBYTE(v52))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1460, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v52);
      if (WORD1(v52) > WORD2(v52))
      {
        if (BYTE6(v52) == 2)
        {
          ++WORD2(v52);
          *(v51 + v5) = 6;
          if (HIBYTE(v52))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1461, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v6 = WORD2(v52);
            if (WORD1(v52) > WORD2(v52))
            {
              if (BYTE6(v52) == 2)
              {
                ++WORD2(v52);
                *(v51 + v6) = 2;
                if (HIBYTE(v52))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1462, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v7 = WORD2(v52);
                  if (WORD1(v52) > WORD2(v52))
                  {
                    if (BYTE6(v52) == 2)
                    {
                      v8 = *a1;
                      ++WORD2(v52);
                      *(v51 + v7) = v8;
                      if (HIBYTE(v52))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1463, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v9 = WORD2(v52);
                        if (WORD1(v52) > WORD2(v52))
                        {
                          if (BYTE6(v52) == 2)
                          {
                            v10 = a1[1];
                            ++WORD2(v52);
                            *(v51 + v9) = v10;
                            if (HIBYTE(v52))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1464, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                            }

                            else if (WORD1(v52) - WORD2(v52) > 5)
                            {
                              if (BYTE6(v52) == 2)
                              {
                                sub_1000075EC((v51 + WORD2(v52)), *(a1 + 1), 6uLL);
                                v11 = WORD2(v52);
                                v12 = WORD2(v52) + 6;
                                WORD2(v52) += 6;
                                if (HIBYTE(v52))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1465, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                }

                                else if (WORD1(v52) > v12)
                                {
                                  if (BYTE6(v52) == 2)
                                  {
                                    v13 = *(a1 + 4);
                                    WORD2(v52) = v11 + 7;
                                    *(v51 + v12) = v13;
                                    if (HIBYTE(v52))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1466, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                    }

                                    else if (WORD1(v52) - WORD2(v52) > 1)
                                    {
                                      if (BYTE6(v52) == 2)
                                      {
                                        *(v51 + WORD2(v52)) = *(a1 + 10);
                                        v14 = WORD2(v52) + 2;
                                        WORD2(v52) += 2;
                                        if (HIBYTE(v52))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1467, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                        }

                                        else if (WORD1(v52) - v14 > 1)
                                        {
                                          if (BYTE6(v52) == 2)
                                          {
                                            *(v51 + v14) = a1[22];
                                            *(v51 + WORD2(v52) + 1) = a1[23];
                                            v15 = WORD2(v52) + 2;
                                            WORD2(v52) += 2;
                                            if (HIBYTE(v52))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1468, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                            }

                                            else if (WORD1(v52) - v15 > 1)
                                            {
                                              if (BYTE6(v52) == 2)
                                              {
                                                *(v51 + v15) = a1[24];
                                                *(v51 + WORD2(v52) + 1) = a1[25];
                                                v16 = WORD2(v52) + 2;
                                                WORD2(v52) += 2;
                                                if (HIBYTE(v52))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1469, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                                }

                                                else if (WORD1(v52) - v16 > 1)
                                                {
                                                  if (BYTE6(v52) == 2)
                                                  {
                                                    *(v51 + v16) = a1[26];
                                                    *(v51 + WORD2(v52) + 1) = a1[27];
                                                    v17 = WORD2(v52) + 2;
                                                    WORD2(v52) += 2;
                                                    if (HIBYTE(v52))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1470, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                                    }

                                                    else if (WORD1(v52) - v17 > 1)
                                                    {
                                                      if (BYTE6(v52) == 2)
                                                      {
                                                        *(v51 + v17) = a1[28];
                                                        *(v51 + WORD2(v52) + 1) = a1[29];
                                                        v18 = WORD2(v52) + 2;
                                                        WORD2(v52) += 2;
                                                        if (HIBYTE(v52))
                                                        {
                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1471, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                                        }

                                                        else if (WORD1(v52) - v18 > 1)
                                                        {
                                                          if (BYTE6(v52) == 2)
                                                          {
                                                            *(v51 + v18) = a1[30];
                                                            *(v51 + WORD2(v52) + 1) = a1[31];
                                                            v19 = WORD2(v52);
                                                            v20 = WORD2(v52) + 2;
                                                            WORD2(v52) += 2;
                                                            if (HIBYTE(v52))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1472, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                                            }

                                                            else if (WORD1(v52) > v20)
                                                            {
                                                              if (BYTE6(v52) == 2)
                                                              {
                                                                v21 = a1[32];
                                                                WORD2(v52) = v19 + 3;
                                                                *(v51 + v20) = v21;
                                                                if (HIBYTE(v52))
                                                                {
                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1473, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                                                }

                                                                else if (WORD1(v52) - WORD2(v52) > 5)
                                                                {
                                                                  if (BYTE6(v52) == 2)
                                                                  {
                                                                    sub_1000075EC((v51 + WORD2(v52)), *(a1 + 5), 6uLL);
                                                                    v25 = WORD2(v52);
                                                                    v26 = WORD2(v52) + 6;
                                                                    WORD2(v52) += 6;
                                                                    if (HIBYTE(v52))
                                                                    {
                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1474, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                                                    }

                                                                    else if (WORD1(v52) > v26)
                                                                    {
                                                                      if (BYTE6(v52) == 2)
                                                                      {
                                                                        v27 = a1[48];
                                                                        WORD2(v52) = v25 + 7;
                                                                        *(v51 + v26) = v27;
                                                                        if (HIBYTE(v52))
                                                                        {
                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1475, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                                                        }

                                                                        else if (WORD1(v52) > WORD2(v52))
                                                                        {
                                                                          if (BYTE6(v52) == 2)
                                                                          {
                                                                            *(v51 + WORD2(v52)) = a1[49];
                                                                            v28 = WORD2(v52);
                                                                            v29 = ++WORD2(v52);
                                                                            if (HIBYTE(v52))
                                                                            {
                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1476, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                                                            }

                                                                            else if (WORD1(v52) > v29)
                                                                            {
                                                                              if (BYTE6(v52) == 2)
                                                                              {
                                                                                v30 = a1[50];
                                                                                WORD2(v52) = v28 + 2;
                                                                                *(v51 + v29) = v30;
                                                                                if (HIBYTE(v52))
                                                                                {
                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1477, "OI_STATUS _SRS_LEAddToFilterAcceptListUnified(BT_VSCAddFilterAcceptListUnified_t *, BT_VSC_COMPLETE_CB)");
                                                                                }

                                                                                else
                                                                                {
                                                                                  v31 = WORD2(v52);
                                                                                  if (WORD1(v52) > WORD2(v52))
                                                                                  {
                                                                                    if (BYTE6(v52) == 2)
                                                                                    {
                                                                                      v32 = a1[51];
                                                                                      ++WORD2(v52);
                                                                                      *(v51 + v31) = v32;
                                                                                      return sub_100020078(464, v51, BYTE4(v52), a2, sub_1001665F4, v22, v23, v24);
                                                                                    }

                                                                                    v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_129:
                                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1477, v50);
                                                                                  }
                                                                                }

                                                                                v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                goto LABEL_129;
                                                                              }

                                                                              v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_125:
                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1476, v49);
                                                                            }

                                                                            v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                            goto LABEL_125;
                                                                          }

                                                                          v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_121:
                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1475, v48);
                                                                        }

                                                                        v48 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                                                        goto LABEL_121;
                                                                      }

                                                                      v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_117:
                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1474, v47);
                                                                    }

                                                                    v47 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                    goto LABEL_117;
                                                                  }

                                                                  v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_113:
                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1473, v46);
                                                                }

                                                                v46 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                                                                goto LABEL_113;
                                                              }

                                                              v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_109:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1472, v45);
                                                            }

                                                            v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                            goto LABEL_109;
                                                          }

                                                          v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_105:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1471, v44);
                                                        }

                                                        v44 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                        goto LABEL_105;
                                                      }

                                                      v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1470, v43);
                                                    }

                                                    v43 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                    goto LABEL_101;
                                                  }

                                                  v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_97:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1469, v42);
                                                }

                                                v42 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                goto LABEL_97;
                                              }

                                              v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_93:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1468, v41);
                                            }

                                            v41 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                            goto LABEL_93;
                                          }

                                          v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1467, v40);
                                        }

                                        v40 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                        goto LABEL_89;
                                      }

                                      v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1466, v39);
                                    }

                                    v39 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                    goto LABEL_85;
                                  }

                                  v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1465, v38);
                                }

                                v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_81;
                              }

                              v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1464, v37);
                            }

                            v37 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                            goto LABEL_77;
                          }

                          v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1463, v36);
                        }
                      }

                      v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_73;
                    }

                    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1462, v35);
                  }
                }

                v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_69;
              }

              v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1461, v34);
            }
          }

          v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_65;
        }

        v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1460, v33);
      }
    }

    v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_61;
  }

  return result;
}

uint64_t sub_10017D5DC(char a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1049, "OI_STATUS _SRS_FwLogConfig(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 0;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1050, "OI_STATUS _SRS_FwLogConfig(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 0;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1051, "OI_STATUS _SRS_FwLogConfig(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v19);
                  if (WORD1(v19) > WORD2(v19))
                  {
                    if (BYTE6(v19) == 2)
                    {
                      ++WORD2(v19);
                      *(v18 + v12) = a2;
                      if (HIBYTE(v19))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1052, "OI_STATUS _SRS_FwLogConfig(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v13 = WORD2(v19);
                        if (WORD1(v19) > WORD2(v19))
                        {
                          if (BYTE6(v19) == 2)
                          {
                            ++WORD2(v19);
                            *(v18 + v13) = a1;
                            return sub_100020078(93, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                          }

                          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1052, v17);
                        }
                      }

                      v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_31;
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1051, v16);
                  }
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1050, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1049, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10017D828(void (*a1)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1067, "OI_STATUS _SRS_FwLogUTCTimeSync(BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v3 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v3) = 0;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1068, "OI_STATUS _SRS_FwLogUTCTimeSync(BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v4 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                v15.tv_sec = 0;
                *&v15.tv_usec = 0;
                ++WORD2(v17);
                *(v16 + v4) = 2;
                gettimeofday(&v15, 0);
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1070, "OI_STATUS _SRS_FwLogUTCTimeSync(BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v17) - WORD2(v17) > 3)
                {
                  if (BYTE6(v17) == 2)
                  {
                    v8 = WORD1(v15.tv_sec);
                    *(v16 + WORD2(v17)) = v15.tv_sec;
                    *(v16 + WORD2(v17) + 2) = v8;
                    v9 = WORD2(v17) + 4;
                    WORD2(v17) += 4;
                    if (HIBYTE(v17))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1071, "OI_STATUS _SRS_FwLogUTCTimeSync(BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v17) - v9 > 3)
                    {
                      if (BYTE6(v17) == 2)
                      {
                        tv_usec = v15.tv_usec;
                        *(v16 + v9) = v15.tv_usec;
                        *(v16 + WORD2(v17) + 1) = BYTE1(tv_usec);
                        *(v16 + WORD2(v17) + 2) = BYTE2(tv_usec);
                        *(v16 + WORD2(v17) + 3) = HIBYTE(tv_usec);
                        WORD2(v17) += 4;
                        return sub_100020078(93, v16, BYTE4(v17), a1, sub_1001665F4, v5, v6, v7);
                      }

                      v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1071, v14);
                    }

                    v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                    goto LABEL_31;
                  }

                  v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1070, v13);
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1068, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1067, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10017DB08(uint64_t a1, uint64_t (*a2)(uint64_t, _DWORD *), uint64_t *a3)
{
  v4 = a1;
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 193, "void _SRS_PowerStatsParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v33 = *(a3 + 5);
      v34 = *(a3 + 6);
      if (v33 > v34)
      {
        if (*(a3 + 14) == 1)
        {
          v35 = *a3;
          *(a3 + 6) = v34 + 1;
          if ((v33 - (v34 + 1)) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 196, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v36 = *(v35 + v34);
          v37 = *(v35 + v34 + 1);
          *(a3 + 6) = v34 + 3;
          if ((v33 - (v34 + 3)) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 199, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v38 = *(v35 + (v34 + 3));
          *(a3 + 6) = v34 + 5;
          if ((v33 - (v34 + 5)) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 202, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v8 = *(v35 + (v34 + 5));
          *(a3 + 6) = v34 + 7;
          if ((v33 - (v34 + 7)) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 205, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v39 = *(v35 + (v34 + 7));
          *(a3 + 6) = v34 + 9;
          if ((v33 - (v34 + 9)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 208, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v40 = *(v35 + (v34 + 9));
          *(a3 + 6) = v34 + 13;
          if ((v33 - (v34 + 13)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 209, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v41 = *(v35 + (v34 + 13));
          *(a3 + 6) = v34 + 17;
          if ((v33 - (v34 + 17)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 210, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v42 = *(v35 + (v34 + 17));
          *(a3 + 6) = v34 + 21;
          if ((v33 - (v34 + 21)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 211, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v43 = *(v35 + (v34 + 21));
          *(a3 + 6) = v34 + 25;
          if ((v33 - (v34 + 25)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 212, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v44 = *(v35 + (v34 + 25));
          *(a3 + 6) = v34 + 29;
          if ((v33 - (v34 + 29)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 213, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v45 = *(v35 + (v34 + 29));
          *(a3 + 6) = v34 + 33;
          if ((v33 - (v34 + 33)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 214, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v46 = *(v35 + (v34 + 33));
          *(a3 + 6) = v34 + 37;
          if ((v33 - (v34 + 37)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 215, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v47 = *(v35 + (v34 + 37));
          *(a3 + 6) = v34 + 41;
          if ((v33 - (v34 + 41)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 216, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v48 = *(v35 + (v34 + 41));
          *(a3 + 6) = v34 + 45;
          if ((v33 - (v34 + 45)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 217, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v49 = *(v35 + (v34 + 45));
          *(a3 + 6) = v34 + 49;
          if ((v33 - (v34 + 49)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 218, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v50 = *(v35 + (v34 + 49));
          *(a3 + 6) = v34 + 53;
          if ((v33 - (v34 + 53)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 219, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v51 = *(v35 + (v34 + 53));
          *(a3 + 6) = v34 + 57;
          if ((v33 - (v34 + 57)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 220, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v52 = *(v35 + (v34 + 57));
          *(a3 + 6) = v34 + 61;
          if ((v33 - (v34 + 61)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 221, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v53 = *(v35 + (v34 + 61));
          *(a3 + 6) = v34 + 65;
          if ((v33 - (v34 + 65)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 222, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v54 = *(v35 + (v34 + 65));
          *(a3 + 6) = v34 + 69;
          if ((v33 - (v34 + 69)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 223, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v55 = *(v35 + (v34 + 69));
          *(a3 + 6) = v34 + 73;
          if ((v33 - (v34 + 73)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 224, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v78) = *(v35 + (v34 + 73));
          *(a3 + 6) = v34 + 77;
          if ((v33 - (v34 + 77)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 225, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v77) = *(v35 + (v34 + 77));
          LODWORD(v78) = v55;
          *(a3 + 6) = v34 + 81;
          if ((v33 - (v34 + 81)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 226, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v56 = *(v35 + (v34 + 81));
          *(a3 + 6) = v34 + 85;
          if ((v33 - (v34 + 85)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 227, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v76) = v54;
          LODWORD(v77) = v53;
          v57 = *(v35 + (v34 + 85));
          *(a3 + 6) = v34 + 89;
          if ((v33 - (v34 + 89)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 228, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v58 = *(v35 + (v34 + 89));
          *(a3 + 6) = v34 + 93;
          if ((v33 - (v34 + 93)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 229, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v75) = v52;
          LODWORD(v76) = v51;
          v59 = *(v35 + (v34 + 93));
          *(a3 + 6) = v34 + 97;
          if ((v33 - (v34 + 97)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 230, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          LODWORD(v75) = *(v35 + (v34 + 97));
          *(a3 + 6) = v34 + 101;
          if ((v33 - (v34 + 101)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 231, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v73 = v58;
          v74 = __PAIR64__(v49, v50);
          v22 = *(v35 + (v34 + 101));
          *(a3 + 6) = v34 + 105;
          if ((v33 - (v34 + 105)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 232, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v23 = *(v35 + (v34 + 105));
          *(a3 + 6) = v34 + 109;
          if ((v33 - (v34 + 109)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 233, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v69 = v46;
          v70 = v36;
          v71 = v37;
          v72 = v45;
          v24 = *(v35 + (v34 + 109));
          *(a3 + 6) = v34 + 113;
          if ((v33 - (v34 + 113)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 234, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v19 = v56;
          v17 = v47;
          v60 = v43;
          v25 = *(v35 + (v34 + 113));
          *(a3 + 6) = v34 + 117;
          if ((v33 - (v34 + 117)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 235, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v61 = v40;
          v26 = *(v35 + (v34 + 117));
          *(a3 + 6) = v34 + 121;
          if ((v33 - (v34 + 121)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 236, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v21 = v59;
          v20 = v57;
          v18 = v48;
          v62 = v44;
          v63 = v39;
          result = *(v35 + (v34 + 121));
          *(a3 + 6) = v34 + 125;
          if ((v33 - (v34 + 125)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 237, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v64 = v41;
          v65 = v38;
          v27 = *(v35 + (v34 + 125));
          *(a3 + 6) = v34 + 129;
          if ((v33 - (v34 + 129)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 238, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v66 = v4;
          v67 = v42;
          v28 = *(v35 + (v34 + 129));
          *(a3 + 6) = v34 + 133;
          if ((v33 - (v34 + 133)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 239, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v29 = *(v35 + (v34 + 133));
          *(a3 + 6) = v34 + 137;
          if ((v33 - (v34 + 137)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 240, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v30 = *(v35 + (v34 + 137));
          *(a3 + 6) = v34 + 141;
          v7 = v65;
          v9 = v63;
          v10 = v61;
          v11 = v64;
          v12 = v67;
          v4 = v66;
          v13 = v60;
          v14 = v62;
          v31 = v71;
          v15 = v72;
          v16 = v69;
          v32 = v70;
          if (a2)
          {
            goto LABEL_6;
          }

          return result;
        }

        v68 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_54:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 193, v68);
      }
    }

    v68 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_54;
  }

  result = sub_10000C240();
  if (result && (sub_10000AF54("status %!", v4), v6 = sub_10000C050(0x54u), result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR), result))
  {
    sub_10080F604();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v19 = 0;
    v20 = 0;
    v73 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    result = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v19 = 0;
    v20 = 0;
    v73 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (a2)
  {
LABEL_6:
    v79[0] = v32;
    v79[1] = v31;
    v79[2] = v7;
    v79[3] = v8;
    v79[4] = v9;
    v79[5] = v10;
    v79[6] = v11;
    v79[7] = v12;
    v79[8] = v13;
    v79[9] = v14;
    v79[10] = v15;
    v79[11] = v16;
    v79[12] = v17;
    v79[13] = v18;
    v79[14] = HIDWORD(v74);
    v79[15] = v74;
    v79[16] = v76;
    v79[17] = HIDWORD(v75);
    v79[18] = v77;
    v79[19] = HIDWORD(v76);
    v80 = v78;
    v81 = HIDWORD(v77);
    v82 = v19;
    v83 = v20;
    v84 = v73;
    v85 = v21;
    v86 = v75;
    v87 = v22;
    v88 = v23;
    v89 = v24;
    v90 = v25;
    v91 = v26;
    v92 = result;
    v93 = v27;
    v94 = v28;
    v95 = v29;
    v96 = v30;
    v102 = 0;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    return a2(v4, v79);
  }

  return result;
}

void sub_10017E5A0(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 304, "void _SRS_ConfigMatchingAddressListEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 5);
      v9 = *(a3 + 6);
      if (v8 > v9)
      {
        if (*(a3 + 14) == 1)
        {
          v10 = *a3;
          *(a3 + 6) = v9 + 1;
          if (v8 <= v9 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 305, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v7 = *(v10 + v9);
          *(a3 + 6) = v9 + 2;
          v6 = *(v10 + v9 + 1);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 304, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_17;
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
  if (a2)
  {
LABEL_6:
    a2(result, v7, v6);
  }
}

void sub_10017E6DC(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 282, "void _SRS_AddAdvancedMatchingRuleBatchedEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v10 = *(a3 + 5);
      v11 = *(a3 + 6);
      if (v10 > v11)
      {
        if (*(a3 + 14) == 1)
        {
          v12 = *a3;
          v13 = v11 + 1;
          *(a3 + 6) = v11 + 1;
          if (v10 <= (v11 + 1))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 283, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v9 = *(v12 + v11);
          v14 = v11 + 2;
          *(a3 + 6) = v14;
          v8 = *(v12 + v13);
          v6 = v12 + v14;
          v7 = v10 - v14;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 282, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_17;
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

  v6 = 0;
  v7 = 0;
  v8 = 255;
  v9 = 255;
  if (a2)
  {
LABEL_6:
    a2(result, v9, v8, v6, v7);
  }
}

void sub_10017E82C(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1101, "void _SRS_ReadRawRssiEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 5);
      v9 = *(a3 + 6);
      if ((v8 - v9) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v10 = *a3;
          v11 = (*a3 + v9);
          v12 = *v11;
          v13 = v11[1];
          *(a3 + 6) = v9 + 2;
          if (v8 <= (v9 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1102, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v7 = v12 | (v13 << 8);
          *(a3 + 6) = v9 + 3;
          v6 = *(v10 + (v9 + 2));
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1101, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%s status %d", "_SRS_ReadRawRssiEventParser", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v7, v6);
  }
}

void sub_10017E984(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
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
  }

  else
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 84, "void _SRS_ProprietaryLocalFeaturesEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 12);
      if ((*(a3 + 10) - v8) > 3u)
      {
        if (*(a3 + 10) - v8 <= 3)
        {
          v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
        }

        else
        {
          if (*(a3 + 14) == 1)
          {
            v4 = 0;
            v6 = *(*a3 + *(a3 + 12));
            *(a3 + 12) = v8 + 4;
            goto LABEL_19;
          }

          v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        }

        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 90, v11);
      }
    }

    if (sub_10000C240())
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 85, "void _SRS_ProprietaryLocalFeaturesEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
        v9 = 0;
      }

      else
      {
        v9 = *(a3 + 10) - *(a3 + 12);
      }

      sub_10000AF54("Invalid data size %d", v9);
      v10 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v4 = 608;
  }

LABEL_19:
  if (a2)
  {
    a2(v4, v6);
  }
}