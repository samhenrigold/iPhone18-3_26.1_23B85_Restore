uint64_t sub_1001D38C0(uint64_t a1, char a2, void (*a3)())
{
  v19 = 0;
  v20 = 0;
  result = sub_10001FFD8(&v19);
  if (!result)
  {
    if (HIBYTE(v20))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3374, "OI_STATUS _ACI_LEMetaTrackSensor(const BTAddress, uint8_t, BT_VSC_READ_STATUS_DF_CB)");
    }

    else
    {
      v7 = WORD2(v20);
      if (WORD1(v20) > WORD2(v20))
      {
        if (BYTE6(v20) == 2)
        {
          ++WORD2(v20);
          *(v19 + v7) = 12;
          v18[0] = BYTE5(a1);
          v18[1] = BYTE4(a1);
          v18[2] = BYTE3(a1);
          v18[3] = BYTE2(a1);
          v18[4] = BYTE1(a1);
          v18[5] = a1;
          if (HIBYTE(v20))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3377, "OI_STATUS _ACI_LEMetaTrackSensor(const BTAddress, uint8_t, BT_VSC_READ_STATUS_DF_CB)");
          }

          else if (WORD1(v20) - WORD2(v20) > 5)
          {
            if (BYTE6(v20) == 2)
            {
              sub_1000075EC((v19 + WORD2(v20)), v18, 6uLL);
              v11 = WORD2(v20);
              v12 = WORD2(v20) + 6;
              WORD2(v20) += 6;
              if (HIBYTE(v20))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3378, "OI_STATUS _ACI_LEMetaTrackSensor(const BTAddress, uint8_t, BT_VSC_READ_STATUS_DF_CB)");
              }

              else if (WORD1(v20) > v12)
              {
                if (BYTE6(v20) == 2)
                {
                  WORD2(v20) = v11 + 7;
                  *(v19 + v12) = BYTE6(a1);
                  if (HIBYTE(v20))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3379, "OI_STATUS _ACI_LEMetaTrackSensor(const BTAddress, uint8_t, BT_VSC_READ_STATUS_DF_CB)");
                  }

                  else
                  {
                    v13 = WORD2(v20);
                    if (WORD1(v20) > WORD2(v20))
                    {
                      if (BYTE6(v20) == 2)
                      {
                        ++WORD2(v20);
                        *(v19 + v13) = a2;
                        return sub_100020078(65017, v19, BYTE4(v20), a3, sub_1001ED778, v8, v9, v10);
                      }

                      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3379, v17);
                    }
                  }

                  v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3378, v16);
              }

              v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_27;
            }

            v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3377, v15);
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3374, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D3B54(void (*a1)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3190, "OI_STATUS _ACI_LEMetaClearAllMatchingRules(BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 3)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = -1;
        *(v9 + WORD2(v10) + 1) = -1;
        *(v9 + WORD2(v10) + 2) = -1;
        *(v9 + WORD2(v10) + 3) = -1;
        v6 = WORD2(v10) + 4;
        WORD2(v10) += 4;
        if (HIBYTE(v10))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3191, "OI_STATUS _ACI_LEMetaClearAllMatchingRules(BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v10) - v6 > 3)
        {
          if (BYTE6(v10) == 2)
          {
            *(v9 + v6) = -1;
            *(v9 + WORD2(v10) + 1) = -1;
            *(v9 + WORD2(v10) + 2) = -1;
            *(v9 + WORD2(v10) + 3) = -1;
            WORD2(v10) += 4;
            return sub_100020078(64946, v9, BYTE4(v10), a1, sub_1001C62CC, v3, v4, v5);
          }

          v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3191, v8);
        }

        v8 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_17;
      }

      v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3190, v7);
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D3D14(char a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1713, "OI_STATUS _ACI_LEMetaEnableAsymmetricPeripheralLatency(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = -1;
        *(v14 + WORD2(v15) + 1) = -1;
        v8 = WORD2(v15);
        v9 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1714, "OI_STATUS _ACI_LEMetaEnableAsymmetricPeripheralLatency(_Bool, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v15) > v9)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v8 + 3;
            *(v14 + v9) = a1;
            if (HIBYTE(v15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1715, "OI_STATUS _ACI_LEMetaEnableAsymmetricPeripheralLatency(_Bool, BT_VSC_COMPLETE_CB)");
            }

            else
            {
              v10 = WORD2(v15);
              if (WORD1(v15) > WORD2(v15))
              {
                if (BYTE6(v15) == 2)
                {
                  ++WORD2(v15);
                  *(v14 + v10) = 2;
                  return sub_100020078(64958, v14, BYTE4(v15), a2, sub_1001C62CC, v5, v6, v7);
                }

                v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1715, v13);
              }
            }

            v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1714, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1713, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D3EFC(uint64_t a1, void (*a2)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3205, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithInterval(BT_VSCAddFilterAcceptListParams_t *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v25);
      if (WORD1(v25) > WORD2(v25))
      {
        if (BYTE6(v25) == 2)
        {
          v6 = *(a1 + 20);
          ++WORD2(v25);
          *(v24 + v5) = v6;
          if (HIBYTE(v25))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3206, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithInterval(BT_VSCAddFilterAcceptListParams_t *, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v25) - WORD2(v25) > 5)
          {
            if (BYTE6(v25) == 2)
            {
              sub_1000075EC((v24 + WORD2(v25)), *a1, 6uLL);
              v10 = WORD2(v25) + 6;
              WORD2(v25) += 6;
              if (HIBYTE(v25))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3207, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithInterval(BT_VSCAddFilterAcceptListParams_t *, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v25) - v10 > 1)
              {
                if (BYTE6(v25) == 2)
                {
                  *(v24 + v10) = *(a1 + 8);
                  *(v24 + WORD2(v25) + 1) = *(a1 + 9);
                  v11 = WORD2(v25) + 2;
                  WORD2(v25) += 2;
                  if (HIBYTE(v25))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3208, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithInterval(BT_VSCAddFilterAcceptListParams_t *, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v25) - v11 > 1)
                  {
                    if (BYTE6(v25) == 2)
                    {
                      *(v24 + v11) = *(a1 + 10);
                      *(v24 + WORD2(v25) + 1) = *(a1 + 11);
                      v12 = WORD2(v25) + 2;
                      WORD2(v25) += 2;
                      if (HIBYTE(v25))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3209, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithInterval(BT_VSCAddFilterAcceptListParams_t *, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v25) - v12 > 1)
                      {
                        if (BYTE6(v25) == 2)
                        {
                          *(v24 + v12) = *(a1 + 12);
                          *(v24 + WORD2(v25) + 1) = *(a1 + 13);
                          v13 = WORD2(v25) + 2;
                          WORD2(v25) += 2;
                          if (HIBYTE(v25))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3210, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithInterval(BT_VSCAddFilterAcceptListParams_t *, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v25) - v13 > 1)
                          {
                            if (BYTE6(v25) == 2)
                            {
                              *(v24 + v13) = *(a1 + 14);
                              *(v24 + WORD2(v25) + 1) = *(a1 + 15);
                              v14 = WORD2(v25) + 2;
                              WORD2(v25) += 2;
                              if (HIBYTE(v25))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3211, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithInterval(BT_VSCAddFilterAcceptListParams_t *, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v25) - v14 > 1)
                              {
                                if (BYTE6(v25) == 2)
                                {
                                  *(v24 + v14) = *(a1 + 16);
                                  *(v24 + WORD2(v25) + 1) = *(a1 + 17);
                                  v15 = WORD2(v25) + 2;
                                  WORD2(v25) += 2;
                                  if (HIBYTE(v25))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3212, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithInterval(BT_VSCAddFilterAcceptListParams_t *, BT_VSC_COMPLETE_CB)");
                                  }

                                  else if (WORD1(v25) - v15 > 1)
                                  {
                                    if (BYTE6(v25) == 2)
                                    {
                                      *(v24 + v15) = *(a1 + 18);
                                      *(v24 + WORD2(v25) + 1) = *(a1 + 19);
                                      WORD2(v25) += 2;
                                      return sub_100020078(65278, v24, BYTE4(v25), a2, sub_1001C62CC, v7, v8, v9);
                                    }

                                    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3212, v23);
                                  }

                                  v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_59;
                                }

                                v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3211, v22);
                              }

                              v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_55;
                            }

                            v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3210, v21);
                          }

                          v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_51;
                        }

                        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3209, v20);
                      }

                      v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_47;
                    }

                    v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3208, v19);
                  }

                  v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_43;
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3207, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_39;
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3206, v17);
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_35;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3205, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1001D43F4(uint64_t a1, void (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3229, "OI_STATUS _ACI_LEMetaAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v13);
      if (WORD1(v13) > WORD2(v13))
      {
        if (BYTE6(v13) == 2)
        {
          ++WORD2(v13);
          *(v12 + v5) = BYTE6(a1);
          v11[0] = BYTE5(a1);
          v11[1] = BYTE4(a1);
          v11[2] = BYTE3(a1);
          v11[3] = BYTE2(a1);
          v11[4] = BYTE1(a1);
          v11[5] = a1;
          if (HIBYTE(v13))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3233, "OI_STATUS _ACI_LEMetaAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v13) - WORD2(v13) > 5)
          {
            if (BYTE6(v13) == 2)
            {
              sub_1000075EC((v12 + WORD2(v13)), v11, 6uLL);
              WORD2(v13) += 6;
              return sub_100020078(64986, v12, BYTE4(v13), a2, sub_1001C62CC, v6, v7, v8);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3233, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3229, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D4588(uint64_t a1, void (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3249, "OI_STATUS _ACI_LEMetaRemoveDeviceFromMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v13);
      if (WORD1(v13) > WORD2(v13))
      {
        if (BYTE6(v13) == 2)
        {
          ++WORD2(v13);
          *(v12 + v5) = BYTE6(a1);
          v11[0] = BYTE5(a1);
          v11[1] = BYTE4(a1);
          v11[2] = BYTE3(a1);
          v11[3] = BYTE2(a1);
          v11[4] = BYTE1(a1);
          v11[5] = a1;
          if (HIBYTE(v13))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3253, "OI_STATUS _ACI_LEMetaRemoveDeviceFromMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v13) - WORD2(v13) > 5)
          {
            if (BYTE6(v13) == 2)
            {
              sub_1000075EC((v12 + WORD2(v13)), v11, 6uLL);
              WORD2(v13) += 6;
              return sub_100020078(64991, v12, BYTE4(v13), a2, sub_1001C62CC, v6, v7, v8);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3253, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3249, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D471C(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(64969, v6, BYTE4(v7), a1, sub_1001C62CC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001D4778(const void *a1, unsigned int a2, const void *a3, unsigned int a4, char a5, char a6, int a7, char a8, int a9, char a13, char a14, __int16 a15, char a16, char a17, char a18, void (*a19)())
{
  v61 = 0;
  v62 = 0;
  result = sub_10001FFD8(&v61);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3281, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_49;
  }

  v25 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_49:
    v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_51;
  }

  if (BYTE6(v62) != 2)
  {
    v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3281, v49);
  }

  ++WORD2(v62);
  *(v61 + v25) = a8;
  v60[0] = a14;
  v60[1] = a13;
  v60[2] = HIBYTE(a9);
  v60[3] = BYTE2(a9);
  v60[4] = BYTE1(a9);
  v60[5] = a9;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3284, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_53;
  }

  if (WORD1(v62) - WORD2(v62) <= 5)
  {
LABEL_53:
    v50 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_55;
  }

  if (BYTE6(v62) != 2)
  {
    v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3284, v50);
  }

  sub_1000075EC((v61 + WORD2(v62)), v60, 6uLL);
  v26 = WORD2(v62) + 6;
  WORD2(v62) += 6;
  v27 = v61;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3285, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    v28 = 0;
  }

  else
  {
    v28 = WORD1(v62) - v26;
  }

  if (v28 < a2)
  {
    v51 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
    goto LABEL_58;
  }

  if (BYTE6(v62) != 2)
  {
    v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3285, v51);
  }

  memmove((v27 + v26), a1, a2);
  v29 = WORD2(v62) + a2;
  WORD2(v62) += a2;
  v30 = v61;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3286, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    v31 = 0;
  }

  else
  {
    v31 = WORD1(v62) - v29;
  }

  v32 = 25 - a2;
  if (v31 < v32)
  {
    v52 = "ByteStream_NumReadBytesAvail(bs) >= (((22)+(3)) - dataLen)";
    goto LABEL_61;
  }

  if (BYTE6(v62) != 2)
  {
    v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3286, v52);
  }

  bzero((v30 + v29), v32);
  v33 = WORD2(v62) + v32;
  WORD2(v62) = v33;
  v34 = v61;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3287, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    v35 = 0;
  }

  else
  {
    v35 = WORD1(v62) - v33;
  }

  if (v35 < a4)
  {
    v53 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
    goto LABEL_64;
  }

  if (BYTE6(v62) != 2)
  {
    v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3287, v53);
  }

  memmove((v34 + v33), a3, a4);
  v36 = WORD2(v62) + a4;
  WORD2(v62) += a4;
  v37 = v61;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3288, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    v38 = 0;
  }

  else
  {
    v38 = WORD1(v62) - v36;
  }

  v39 = 25 - a4;
  if (v38 < v39)
  {
    v54 = "ByteStream_NumReadBytesAvail(bs) >= (((22)+(3)) - maskLen)";
    goto LABEL_67;
  }

  if (BYTE6(v62) != 2)
  {
    v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_67:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3288, v54);
  }

  bzero((v37 + v36), v39);
  v43 = WORD2(v62) + v39;
  WORD2(v62) += v39;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3289, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_69;
  }

  if (WORD1(v62) <= v43)
  {
LABEL_69:
    v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_71;
  }

  if (BYTE6(v62) != 2)
  {
    v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_71:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3289, v55);
  }

  WORD2(v62) = v43 + 1;
  *(v61 + v43) = a6;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3290, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_73;
  }

  v44 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_73:
    v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_75;
  }

  if (BYTE6(v62) != 2)
  {
    v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_75:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3290, v56);
  }

  ++WORD2(v62);
  *(v61 + v44) = a5;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3291, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_77;
  }

  v45 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_77:
    v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_79;
  }

  if (BYTE6(v62) != 2)
  {
    v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_79:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3291, v57);
  }

  ++WORD2(v62);
  *(v61 + v45) = a16;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3292, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_81;
  }

  v46 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_81:
    v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_83;
  }

  if (BYTE6(v62) != 2)
  {
    v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_83:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3292, v58);
  }

  ++WORD2(v62);
  *(v61 + v46) = a17;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3293, "OI_STATUS _ACI_LEMetaAdvMatchingRuleEnhanced(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, uint8_t, const BTAddress, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_85;
  }

  v47 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_85:
    v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_87;
  }

  if (BYTE6(v62) != 2)
  {
    v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_87:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3293, v59);
  }

  ++WORD2(v62);
  *(v61 + v47) = a18;
  if (a7)
  {
    v48 = 65453;
  }

  else
  {
    v48 = 65452;
  }

  return sub_100020078(v48, v61, BYTE4(v62), a19, sub_1001C62CC, v40, v41, v42);
}

uint64_t sub_1001D4DF8(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65341, v6, BYTE4(v7), a1, sub_1001ED778, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001D4E54(uint64_t a1, uint64_t a2, void (*a3)())
{
  v8 = 0;
  v9 = 0;
  result = sub_10001FFD8(&v8);
  if (!result)
  {
    return sub_100020078(64924, v8, BYTE4(v9), a3, sub_1001ED888, v5, v6, v7);
  }

  return result;
}

uint64_t sub_1001D4EB0(char a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5278, "OI_STATUS _ACI_GetScanStats(_Bool, uint8_t, BT_VSC_COMPLETE_CB)");
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
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5279, "OI_STATUS _ACI_GetScanStats(_Bool, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v11) = a2;
                return sub_100020078(65064, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5279, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5278, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D500C(char a1, uint64_t a2, char a3, void (*a4)())
{
  v19 = 0;
  v20 = 0;
  result = sub_10001FFD8(&v19);
  if (!result)
  {
    if (HIBYTE(v20))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3414, "OI_STATUS _ACI_LEMetaAdvMatchingRuleRemoveDuplicateEntry(uint8_t, const BTAddress, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v9 = WORD2(v20);
      if (WORD1(v20) > WORD2(v20))
      {
        if (BYTE6(v20) == 2)
        {
          ++WORD2(v20);
          *(v19 + v9) = a1;
          v18[0] = BYTE5(a2);
          v18[1] = BYTE4(a2);
          v18[2] = BYTE3(a2);
          v18[3] = BYTE2(a2);
          v18[4] = BYTE1(a2);
          v18[5] = a2;
          if (HIBYTE(v20))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3417, "OI_STATUS _ACI_LEMetaAdvMatchingRuleRemoveDuplicateEntry(uint8_t, const BTAddress, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v20) - WORD2(v20) > 5)
          {
            if (BYTE6(v20) == 2)
            {
              sub_1000075EC((v19 + WORD2(v20)), v18, 6uLL);
              v13 = WORD2(v20);
              v14 = WORD2(v20) + 6;
              WORD2(v20) += 6;
              if (HIBYTE(v20))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3418, "OI_STATUS _ACI_LEMetaAdvMatchingRuleRemoveDuplicateEntry(uint8_t, const BTAddress, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v20) > v14)
              {
                if (BYTE6(v20) == 2)
                {
                  WORD2(v20) = v13 + 7;
                  *(v19 + v14) = a3;
                  return sub_100020078(65344, v19, BYTE4(v20), a4, sub_1001C62CC, v10, v11, v12);
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3418, v17);
              }

              v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3417, v16);
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_20;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3414, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D5224(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3432, "OI_STATUS _ACI_LEMetaAdvMatchingRuleWipeDuplicateList(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65343, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3432, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001D52FC(uint64_t a1, void (*a2)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3447, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithOptions(BT_VSCAddFilterAcceptListOptions_t *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          v6 = *(a1 + 16);
          ++WORD2(v22);
          *(v21 + v5) = v6;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3448, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithOptions(BT_VSCAddFilterAcceptListOptions_t *, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v22) - WORD2(v22) > 5)
          {
            if (BYTE6(v22) == 2)
            {
              sub_1000075EC((v21 + WORD2(v22)), *(a1 + 8), 6uLL);
              v10 = WORD2(v22);
              v11 = WORD2(v22) + 6;
              WORD2(v22) += 6;
              if (HIBYTE(v22))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3449, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithOptions(BT_VSCAddFilterAcceptListOptions_t *, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v22) > v11)
              {
                if (BYTE6(v22) == 2)
                {
                  v12 = *(a1 + 17);
                  WORD2(v22) = v10 + 7;
                  *(v21 + v11) = v12;
                  if (HIBYTE(v22))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3450, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithOptions(BT_VSCAddFilterAcceptListOptions_t *, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v22) > WORD2(v22))
                  {
                    if (BYTE6(v22) == 2)
                    {
                      *(v21 + WORD2(v22)) = *(a1 + 18);
                      v13 = WORD2(v22);
                      v14 = ++WORD2(v22);
                      if (HIBYTE(v22))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3451, "OI_STATUS _ACI_LEMetaAddToFilterAcceptListWithOptions(BT_VSCAddFilterAcceptListOptions_t *, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v22) > v14)
                      {
                        if (BYTE6(v22) == 2)
                        {
                          v15 = *(a1 + 19);
                          WORD2(v22) = v13 + 2;
                          *(v21 + v14) = v15;
                          return sub_100020078(65470, v21, BYTE4(v22), a2, sub_1001C62CC, v7, v8, v9);
                        }

                        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3451, v20);
                      }

                      v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_38;
                    }

                    v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3450, v19);
                  }

                  v19 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                  goto LABEL_34;
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3449, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_30;
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3448, v17);
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_26;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3447, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001D55DC(char a1, __int16 a2, __int16 a3, char a4, void (*a5)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5744, "OI_STATUS _ACI_BTSCLESetConnectionScan(_Bool, uint16_t, uint16_t, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v14 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v14) = a1;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5745, "OI_STATUS _ACI_BTSCLESetConnectionScan(_Bool, uint16_t, uint16_t, _Bool, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v23) - WORD2(v23) > 1)
          {
            if (BYTE6(v23) == 2)
            {
              *(v22 + WORD2(v23)) = a2;
              v15 = WORD2(v23) + 2;
              WORD2(v23) += 2;
              if (HIBYTE(v23))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5746, "OI_STATUS _ACI_BTSCLESetConnectionScan(_Bool, uint16_t, uint16_t, _Bool, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v23) - v15 > 1)
              {
                if (BYTE6(v23) == 2)
                {
                  *(v22 + v15) = a3;
                  *(v22 + WORD2(v23) + 1) = HIBYTE(a3);
                  v16 = WORD2(v23);
                  v17 = WORD2(v23) + 2;
                  WORD2(v23) += 2;
                  if (HIBYTE(v23))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5747, "OI_STATUS _ACI_BTSCLESetConnectionScan(_Bool, uint16_t, uint16_t, _Bool, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v23) > v17)
                  {
                    if (BYTE6(v23) == 2)
                    {
                      WORD2(v23) = v16 + 3;
                      *(v22 + v17) = a4;
                      return sub_100020078(65150, v22, BYTE4(v23), a5, sub_1001C62CC, v11, v12, v13);
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5747, v21);
                  }

                  v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5746, v20);
              }

              v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_27;
            }

            v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5745, v19);
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_23;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5744, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D5870(uint64_t a1, unsigned int a2, unsigned int a3, char a4, char a5, char a6, void (*a7)())
{
  v14 = a2 == 2;
  v46 = 0;
  v47 = 0;
  result = sub_10001FFD8(&v46);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1873, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_60;
  }

  v19 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_60:
    v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_62;
  }

  if (BYTE6(v47) != 2)
  {
    v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1873, v39);
  }

  ++WORD2(v47);
  *(v46 + v19) = a3;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1874, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_64;
  }

  if (WORD1(v47) - WORD2(v47) <= 5)
  {
LABEL_64:
    v40 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
    goto LABEL_66;
  }

  if (BYTE6(v47) != 2)
  {
    v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1874, v40);
  }

  v20 = v46 + WORD2(v47);
  *(v20 + 4) = 0;
  *v20 = 0;
  v21 = WORD2(v47);
  v22 = WORD2(v47) + 6;
  WORD2(v47) += 6;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1875, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_68;
  }

  if (WORD1(v47) <= v22)
  {
LABEL_68:
    v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_70;
  }

  if (BYTE6(v47) != 2)
  {
    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1875, v41);
  }

  WORD2(v47) = v21 + 7;
  *(v46 + v22) = 2;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1876, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_72;
  }

  v23 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_72:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_74;
  }

  if (BYTE6(v47) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1876, v42);
  }

  ++WORD2(v47);
  *(v46 + v23) = 2 * v14;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1878, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_76;
  }

  v24 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_76:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_78;
  }

  if (BYTE6(v47) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1878, v43);
  }

  ++WORD2(v47);
  *(v46 + v24) = a4;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1879, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_80;
  }

  v25 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_80:
    v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_82;
  }

  if (BYTE6(v47) != 2)
  {
    v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1879, v44);
  }

  ++WORD2(v47);
  *(v46 + v25) = a5;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1880, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_84;
  }

  v26 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_84:
    v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_86;
  }

  if (BYTE6(v47) != 2)
  {
    v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_86:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1880, v45);
  }

  ++WORD2(v47);
  *(v46 + v26) = a6;
  if (a3 <= 1)
  {
    if (a2 == 16 || a2 == 2)
    {
      if (a2 == 2)
      {
        v27 = 1;
        while (!HIBYTE(v47))
        {
          v28 = WORD2(v47);
          if (WORD1(v47) <= WORD2(v47))
          {
            goto LABEL_53;
          }

          if (BYTE6(v47) != 2)
          {
            v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
            goto LABEL_54;
          }

          v29 = *(a1 + v27);
          ++WORD2(v47);
          *(v46 + v28) = v29;
          if (--v27 == -1)
          {
            v30 = -14;
            while (!HIBYTE(v47))
            {
              v31 = WORD2(v47);
              if (WORD1(v47) <= WORD2(v47))
              {
                goto LABEL_57;
              }

              if (BYTE6(v47) != 2)
              {
                v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_58;
              }

              ++WORD2(v47);
              *(v46 + v31) = 0;
              if (__CFADD__(v30++, 1))
              {
                return sub_100020078(64998, v46, BYTE4(v47), a7, sub_1001C62CC, v16, v17, v18);
              }
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1890, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_57:
            v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_58:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1890, v38);
          }
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1887, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_53:
        v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_54:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1887, v37);
      }

      goto LABEL_40;
    }

    sub_1000D660C();
    if (a2)
    {
LABEL_40:
      v33 = a2;
      while (!HIBYTE(v47))
      {
        v34 = WORD2(v47);
        if (WORD1(v47) <= WORD2(v47))
        {
          goto LABEL_49;
        }

        if (BYTE6(v47) != 2)
        {
          v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_50;
        }

        v35 = *(a1 - 1 + v33--);
        ++WORD2(v47);
        *(v46 + v34) = v35;
        if ((v33 + 1) <= 1)
        {
          return sub_100020078(64998, v46, BYTE4(v47), a7, sub_1001C62CC, v16, v17, v18);
        }
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1895, "OI_STATUS _ACI_LEMetaScanFilterUUIDV2(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_49:
      v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_50:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1895, v36);
    }
  }

  return sub_100020078(64998, v46, BYTE4(v47), a7, sub_1001C62CC, v16, v17, v18);
}

uint64_t sub_1001D5E34(uint64_t a1, unsigned int a2, unsigned int a3, char a4, char a5, char a6, int a7, const void *a8, void *__src, void (*a10)())
{
  LODWORD(v11) = a7;
  v18 = a2 == 2;
  v60 = 0;
  v61 = 0;
  result = sub_10001FFD8(&v60);
  if (!result)
  {
    if (HIBYTE(v61))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1916, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v23 = WORD2(v61);
      if (WORD1(v61) > WORD2(v61))
      {
        if (BYTE6(v61) == 2)
        {
          ++WORD2(v61);
          *(v60 + v23) = a3;
          if (HIBYTE(v61))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1917, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v61) - WORD2(v61) > 5)
          {
            if (BYTE6(v61) == 2)
            {
              v24 = v60 + WORD2(v61);
              *(v24 + 4) = 0;
              *v24 = 0;
              v25 = WORD2(v61);
              v26 = WORD2(v61) + 6;
              WORD2(v61) += 6;
              if (HIBYTE(v61))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1918, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v61) > v26)
              {
                if (BYTE6(v61) == 2)
                {
                  WORD2(v61) = v25 + 7;
                  *(v60 + v26) = 2;
                  if (HIBYTE(v61))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1919, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
                  }

                  else
                  {
                    v27 = WORD2(v61);
                    if (WORD1(v61) > WORD2(v61))
                    {
                      if (BYTE6(v61) == 2)
                      {
                        ++WORD2(v61);
                        *(v60 + v27) = 2 * v18;
                        if (HIBYTE(v61))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1921, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v28 = WORD2(v61);
                          if (WORD1(v61) > WORD2(v61))
                          {
                            if (BYTE6(v61) == 2)
                            {
                              ++WORD2(v61);
                              *(v60 + v28) = a4;
                              if (HIBYTE(v61))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1922, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v29 = WORD2(v61);
                                if (WORD1(v61) > WORD2(v61))
                                {
                                  if (BYTE6(v61) == 2)
                                  {
                                    ++WORD2(v61);
                                    *(v60 + v29) = a5;
                                    if (HIBYTE(v61))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1923, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
                                    }

                                    else
                                    {
                                      v30 = WORD2(v61);
                                      if (WORD1(v61) > WORD2(v61))
                                      {
                                        if (BYTE6(v61) == 2)
                                        {
                                          ++WORD2(v61);
                                          *(v60 + v30) = a6;
                                          if (a3 >= 2)
                                          {
                                            v37 = BYTE4(v61);
                                            return sub_100020078(64985, v60, v37, a10, sub_1001C62CC, v20, v21, v22);
                                          }

                                          if (a2 == 16 || a2 == 2)
                                          {
                                            if (a2 == 2)
                                            {
                                              v31 = 1;
                                              while (!HIBYTE(v61))
                                              {
                                                v32 = WORD2(v61);
                                                if (WORD1(v61) <= WORD2(v61))
                                                {
                                                  goto LABEL_71;
                                                }

                                                if (BYTE6(v61) != 2)
                                                {
                                                  v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                  goto LABEL_72;
                                                }

                                                v33 = *(a1 + v31);
                                                ++WORD2(v61);
                                                *(v60 + v32) = v33;
                                                if (--v31 == -1)
                                                {
                                                  v34 = -14;
                                                  while (!HIBYTE(v61))
                                                  {
                                                    v35 = WORD2(v61);
                                                    if (WORD1(v61) <= WORD2(v61))
                                                    {
                                                      goto LABEL_75;
                                                    }

                                                    if (BYTE6(v61) != 2)
                                                    {
                                                      v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                      goto LABEL_76;
                                                    }

                                                    ++WORD2(v61);
                                                    *(v60 + v35) = 0;
                                                    if (__CFADD__(v34++, 1))
                                                    {
                                                      goto LABEL_46;
                                                    }
                                                  }

                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1933, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_75:
                                                  v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_76:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1933, v49);
                                                }
                                              }

                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1930, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_71:
                                              v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_72:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1930, v48);
                                            }

                                            goto LABEL_41;
                                          }

                                          sub_1000D660C();
                                          if (a2)
                                          {
LABEL_41:
                                            v38 = a2;
                                            while (!HIBYTE(v61))
                                            {
                                              v39 = WORD2(v61);
                                              if (WORD1(v61) <= WORD2(v61))
                                              {
                                                goto LABEL_67;
                                              }

                                              if (BYTE6(v61) != 2)
                                              {
                                                v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_68;
                                              }

                                              v40 = *(a1 - 1 + v38--);
                                              ++WORD2(v61);
                                              *(v60 + v39) = v40;
                                              if ((v38 + 1) <= 1)
                                              {
                                                goto LABEL_46;
                                              }
                                            }

                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1938, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_67:
                                            v47 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_68:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1938, v47);
                                          }

LABEL_46:
                                          if (v11 >= 0x1B)
                                          {
                                            v11 = 27;
                                          }

                                          else
                                          {
                                            v11 = v11;
                                          }

                                          if (HIBYTE(v61))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1945, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
                                          }

                                          else if (WORD1(v61) - WORD2(v61) > 1)
                                          {
                                            if (BYTE6(v61) == 2)
                                            {
                                              *(v60 + WORD2(v61)) = v11;
                                              v41 = WORD2(v61) + 2;
                                              WORD2(v61) += 2;
                                              v42 = v60;
                                              if (HIBYTE(v61))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1946, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
                                                v43 = 0;
                                              }

                                              else
                                              {
                                                v43 = WORD1(v61) - v41;
                                              }

                                              if (v43 < v11)
                                              {
                                                v58 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                              }

                                              else
                                              {
                                                if (BYTE6(v61) == 2)
                                                {
                                                  memmove((v42 + v41), a8, v11);
                                                  v44 = WORD2(v61) + v11;
                                                  WORD2(v61) += v11;
                                                  v45 = v60;
                                                  if (HIBYTE(v61))
                                                  {
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1947, "OI_STATUS _ACI_LEMetaScanFilterUUIDV3(uint8_t *, uint8_t, uint8_t, _Bool, uint8_t, uint8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
                                                    v46 = 0;
                                                  }

                                                  else
                                                  {
                                                    v46 = WORD1(v61) - v44;
                                                  }

                                                  if (v46 < v11)
                                                  {
                                                    v59 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                                  }

                                                  else
                                                  {
                                                    if (BYTE6(v61) == 2)
                                                    {
                                                      memmove((v45 + v44), __src, v11);
                                                      v37 = BYTE4(v61) + v11;
                                                      WORD2(v61) += v11;
                                                      return sub_100020078(64985, v60, v37, a10, sub_1001C62CC, v20, v21, v22);
                                                    }

                                                    v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                  }

                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1947, v59);
                                                }

                                                v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                              }

                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1946, v58);
                                            }

                                            v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_108:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1945, v57);
                                          }

                                          v57 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                          goto LABEL_108;
                                        }

                                        v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_104:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1923, v56);
                                      }
                                    }

                                    v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_104;
                                  }

                                  v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_100:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1922, v55);
                                }
                              }

                              v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_100;
                            }

                            v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_96:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1921, v54);
                          }
                        }

                        v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_96;
                      }

                      v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_92:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1919, v53);
                    }
                  }

                  v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_92;
                }

                v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_88:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1918, v52);
              }

              v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_88;
            }

            v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_84:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1917, v51);
          }

          v51 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
          goto LABEL_84;
        }

        v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1916, v50);
      }
    }

    v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_80;
  }

  return result;
}

uint64_t sub_1001D65C8(__int16 a1, char a2, char a3, uint64_t a4, char a5, char a6, void (*a7)())
{
  v27 = 0;
  v28 = 0;
  result = sub_10001FFD8(&v27);
  if (!result)
  {
    if (HIBYTE(v28))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3393, "OI_STATUS _ACI_LEMetaSetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v28) - WORD2(v28) > 1)
    {
      if (BYTE6(v28) == 2)
      {
        *(v27 + WORD2(v28)) = a1;
        v17 = WORD2(v28);
        v18 = WORD2(v28) + 2;
        WORD2(v28) += 2;
        if (HIBYTE(v28))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3394, "OI_STATUS _ACI_LEMetaSetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v28) > v18)
        {
          if (BYTE6(v28) == 2)
          {
            WORD2(v28) = v17 + 3;
            *(v27 + v18) = a2;
            if (HIBYTE(v28))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3395, "OI_STATUS _ACI_LEMetaSetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
            }

            else
            {
              v19 = WORD2(v28);
              if (WORD1(v28) > WORD2(v28))
              {
                if (BYTE6(v28) == 2)
                {
                  ++WORD2(v28);
                  *(v27 + v19) = a3;
                  if (HIBYTE(v28))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3397, "OI_STATUS _ACI_LEMetaSetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else
                  {
                    v20 = WORD2(v28);
                    if (WORD1(v28) > WORD2(v28))
                    {
                      if (BYTE6(v28) == 2)
                      {
                        ++WORD2(v28);
                        *(v27 + v20) = a5;
                        if (HIBYTE(v28))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3398, "OI_STATUS _ACI_LEMetaSetConnectionPrioritization(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v21 = WORD2(v28);
                          if (WORD1(v28) > WORD2(v28))
                          {
                            if (BYTE6(v28) == 2)
                            {
                              ++WORD2(v28);
                              *(v27 + v21) = a6;
                              return sub_100020078(65051, v27, BYTE4(v28), a7, sub_1001C62CC, v14, v15, v16);
                            }

                            v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3398, v26);
                          }
                        }

                        v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_38;
                      }

                      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3397, v25);
                    }
                  }

                  v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3395, v24);
              }
            }

            v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_30;
          }

          v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3394, v23);
        }

        v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_26;
      }

      v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3393, v22);
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001D68BC(__int16 a1, char a2, char a3, unsigned int a4, int *a5, char a6, char a7, __int16 a8, __int16 a9, char a10, char a11, char a12, char a13, __int16 a14, void (*a15)())
{
  v58 = 0;
  v59 = 0;
  result = sub_10001FFD8(&v58);
  if (!result)
  {
    if (HIBYTE(v59))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5779, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v59) - WORD2(v59) > 1)
    {
      if (BYTE6(v59) == 2)
      {
        *(v58 + WORD2(v59)) = a1;
        v27 = WORD2(v59);
        v28 = WORD2(v59) + 2;
        WORD2(v59) += 2;
        if (HIBYTE(v59))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5780, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v59) > v28)
        {
          if (BYTE6(v59) == 2)
          {
            WORD2(v59) = v27 + 3;
            *(v58 + v28) = a2;
            if (HIBYTE(v59))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5781, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
            }

            else
            {
              v29 = WORD2(v59);
              if (WORD1(v59) > WORD2(v59))
              {
                if (BYTE6(v59) == 2)
                {
                  ++WORD2(v59);
                  *(v58 + v29) = a3;
                  if (!a4)
                  {
                    goto LABEL_33;
                  }

                  v30 = a4;
                  do
                  {
                    v32 = *a5++;
                    v31 = v32;
                    if (v32 == 762)
                    {
                      v33 = 62;
                    }

                    else
                    {
                      v33 = 0;
                    }

                    if (v31 == 761)
                    {
                      v33 = 61;
                    }

                    if (v31 == 734)
                    {
                      v33 = 34;
                    }

                    if (v31 == 719)
                    {
                      v34 = 19;
                    }

                    else
                    {
                      v34 = 0;
                    }

                    if (v31 == 708)
                    {
                      v34 = 8;
                    }

                    if (v31 <= 733)
                    {
                      v35 = v34;
                    }

                    else
                    {
                      v35 = v33;
                    }

                    if (HIBYTE(v59))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5803, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
LABEL_68:
                      v47 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_69:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5803, v47);
                    }

                    v36 = WORD2(v59);
                    if (WORD1(v59) <= WORD2(v59))
                    {
                      goto LABEL_68;
                    }

                    if (BYTE6(v59) != 2)
                    {
                      v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      goto LABEL_69;
                    }

                    ++WORD2(v59);
                    *(v58 + v36) = v35;
                    --v30;
                  }

                  while (v30);
                  if (a4 <= 4)
                  {
LABEL_33:
                    v37 = a4 - 5;
                    while (!HIBYTE(v59))
                    {
                      v38 = WORD2(v59);
                      if (WORD1(v59) <= WORD2(v59))
                      {
                        goto LABEL_64;
                      }

                      if (BYTE6(v59) != 2)
                      {
                        v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        goto LABEL_65;
                      }

                      ++WORD2(v59);
                      *(v58 + v38) = 0;
                      if (__CFADD__(v37++, 1))
                      {
                        goto LABEL_39;
                      }
                    }

                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5806, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
LABEL_64:
                    v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_65:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5806, v46);
                  }

LABEL_39:
                  if (HIBYTE(v59))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5808, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                  }

                  else
                  {
                    v40 = WORD2(v59);
                    if (WORD1(v59) > WORD2(v59))
                    {
                      if (BYTE6(v59) == 2)
                      {
                        ++WORD2(v59);
                        *(v58 + v40) = a6;
                        if (HIBYTE(v59))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5809, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v41 = WORD2(v59);
                          if (WORD1(v59) > WORD2(v59))
                          {
                            if (BYTE6(v59) == 2)
                            {
                              ++WORD2(v59);
                              *(v58 + v41) = a7;
                              if (HIBYTE(v59))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5810, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v59) - WORD2(v59) > 1)
                              {
                                if (BYTE6(v59) == 2)
                                {
                                  *(v58 + WORD2(v59)) = a9;
                                  v42 = WORD2(v59) + 2;
                                  WORD2(v59) += 2;
                                  if (HIBYTE(v59))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5811, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else if (WORD1(v59) - v42 > 1)
                                  {
                                    if (BYTE6(v59) == 2)
                                    {
                                      *(v58 + v42) = a8;
                                      *(v58 + WORD2(v59) + 1) = HIBYTE(a8);
                                      v43 = WORD2(v59);
                                      v44 = WORD2(v59) + 2;
                                      WORD2(v59) += 2;
                                      if (HIBYTE(v59))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5812, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                      }

                                      else if (WORD1(v59) > v44)
                                      {
                                        if (BYTE6(v59) == 2)
                                        {
                                          WORD2(v59) = v43 + 3;
                                          *(v58 + v44) = a10;
                                          if (HIBYTE(v59))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5813, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                          }

                                          else if (WORD1(v59) - WORD2(v59) > 1)
                                          {
                                            if (BYTE6(v59) == 2)
                                            {
                                              *(v58 + WORD2(v59)) = a14;
                                              v45 = WORD2(v59) + 2;
                                              WORD2(v59) += 2;
                                              if (HIBYTE(v59))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5814, "OI_STATUS _ACI_LEMetaDisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                              }

                                              else if (WORD1(v59) - v45 > 1)
                                              {
                                                if (BYTE6(v59) == 2)
                                                {
                                                  *(v58 + v45) = a12;
                                                  *(v58 + WORD2(v59) + 1) = a13;
                                                  WORD2(v59) += 2;
                                                  return sub_100020078(65176, v58, BYTE4(v59), a15, sub_1001C62CC, v24, v25, v26);
                                                }

                                                v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_109:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5814, v57);
                                              }

                                              v57 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                              goto LABEL_109;
                                            }

                                            v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_105:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5813, v56);
                                          }

                                          v56 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                          goto LABEL_105;
                                        }

                                        v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5812, v55);
                                      }

                                      v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_101;
                                    }

                                    v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_97:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5811, v54);
                                  }

                                  v54 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_97;
                                }

                                v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_93:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5810, v53);
                              }

                              v53 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_93;
                            }

                            v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5809, v52);
                          }
                        }

                        v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_89;
                      }

                      v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5808, v51);
                    }
                  }

                  v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_85;
                }

                v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5781, v50);
              }
            }

            v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_81;
          }

          v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5780, v49);
        }

        v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_77;
      }

      v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5779, v48);
    }

    v48 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_73;
  }

  return result;
}

uint64_t sub_1001D6FF4(char a1, void (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3619, "OI_STATUS _ACI_WriteLocalHostState(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v8) = a1;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3620, "OI_STATUS _ACI_WriteLocalHostState(_Bool, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v12) > WORD2(v12))
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = 0;
              ++WORD2(v12);
              return sub_100020078(64928, v11, BYTE4(v12), a2, sub_1001C62CC, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3620, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3619, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D7148(uint64_t a1, char a2, uint64_t a3, void (*a4)())
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v6 = sub_10023DB58(a1, &v19);
  if (!v6)
  {
    v7 = sub_10001FFD8(&v17);
    if (v7)
    {
      return v7;
    }

    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3656, "OI_STATUS _ACI_WriteHiPrioConn(OI_BD_ADDR *, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v18) - WORD2(v18) > 1)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = *v19;
        v12 = WORD2(v18);
        v13 = WORD2(v18) + 2;
        WORD2(v18) += 2;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3657, "OI_STATUS _ACI_WriteHiPrioConn(OI_BD_ADDR *, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v18) > v13)
        {
          if (BYTE6(v18) == 2)
          {
            WORD2(v18) = v12 + 3;
            *(v17 + v13) = a2;
            return sub_100020078(65065, v17, BYTE4(v18), a4, sub_1001C62CC, v9, v10, v11);
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3657, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_21;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3656, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_17;
  }

  v7 = v6;
  if (sub_10000C240())
  {
    sub_10000AF54("VSC Error %!", v7);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v7;
}

uint64_t sub_1001D732C(char a1, _WORD *a2, void (*a3)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3673, "OI_STATUS _ACI_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3674, "OI_STATUS _ACI_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v16) - WORD2(v16) > 1)
          {
            if (BYTE6(v16) == 2)
            {
              *(v15 + WORD2(v16)) = *a2;
              v11 = WORD2(v16) + 2;
              WORD2(v16) += 2;
              if (HIBYTE(v16))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3675, "OI_STATUS _ACI_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v16) - v11 > 3)
              {
                if (BYTE6(v16) == 2)
                {
                  *(v15 + v11) = -1;
                  *(v15 + WORD2(v16) + 1) = -1;
                  *(v15 + WORD2(v16) + 2) = -1;
                  *(v15 + WORD2(v16) + 3) = -1;
                  WORD2(v16) += 4;
                  return sub_100020078(65041, v15, BYTE4(v16), a3, sub_1001C62CC, v7, v8, v9);
                }

                v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3675, v14);
              }

              v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_24;
            }

            v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3674, v13);
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3673, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D755C(int a1, void (*a2)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3714, "OI_STATUS _ACI_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v8) = a1 == 1;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3715, "OI_STATUS _ACI_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v21);
            if (WORD1(v21) > WORD2(v21))
            {
              if (BYTE6(v21) == 2)
              {
                ++WORD2(v21);
                *(v20 + v9) = 0;
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3716, "OI_STATUS _ACI_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v21);
                  if (WORD1(v21) > WORD2(v21))
                  {
                    if (BYTE6(v21) == 2)
                    {
                      ++WORD2(v21);
                      *(v20 + v10) = -1;
                      if (HIBYTE(v21))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3717, "OI_STATUS _ACI_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v11 = WORD2(v21);
                        if (WORD1(v21) > WORD2(v21))
                        {
                          if (BYTE6(v21) == 2)
                          {
                            ++WORD2(v21);
                            *(v20 + v11) = -1;
                            if (HIBYTE(v21))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3718, "OI_STATUS _ACI_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v12 = WORD2(v21);
                              if (WORD1(v21) > WORD2(v21))
                              {
                                if (BYTE6(v21) == 2)
                                {
                                  ++WORD2(v21);
                                  *(v20 + v12) = -1;
                                  if (HIBYTE(v21))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3719, "OI_STATUS _ACI_WriteVoiceConfig(VSCVoiceRouting, BT_VSC_COMPLETE_CB)");
                                  }

                                  else
                                  {
                                    v13 = WORD2(v21);
                                    if (WORD1(v21) > WORD2(v21))
                                    {
                                      if (BYTE6(v21) == 2)
                                      {
                                        ++WORD2(v21);
                                        *(v20 + v13) = -1;
                                        return sub_100020078(65040, v20, BYTE4(v21), a2, sub_1001C62CC, v5, v6, v7);
                                      }

                                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3719, v19);
                                    }
                                  }

                                  v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_45;
                                }

                                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3718, v18);
                              }
                            }

                            v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_41;
                          }

                          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3717, v17);
                        }
                      }

                      v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_37;
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3716, v16);
                  }
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_33;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3715, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_29;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3714, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1001D78A4(_WORD *a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4582, "OI_STATUS _ACI_ReadRawRSSI(OI_HCI_CONNECTION_HANDLE, BT_VSC_READ_RAW_RSSI_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = *a1;
        WORD2(v10) += 2;
        return sub_100020078(65020, v9, BYTE4(v10), a2, sub_1001EE1E0, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4582, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001D799C(_WORD *a1, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, void (*a7)())
{
  v31 = 0;
  v32 = 0;
  result = sub_10001FFD8(&v31);
  if (!result)
  {
    if (HIBYTE(v32))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3915, "OI_STATUS _ACI_WriteLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v32) - WORD2(v32) > 1)
    {
      if (BYTE6(v32) == 2)
      {
        *(v31 + WORD2(v32)) = *a1;
        v18 = WORD2(v32);
        v19 = WORD2(v32) + 2;
        WORD2(v32) += 2;
        if (HIBYTE(v32))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3916, "OI_STATUS _ACI_WriteLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v32) > v19)
        {
          if (BYTE6(v32) == 2)
          {
            WORD2(v32) = v18 + 3;
            *(v31 + v19) = a2;
            if (HIBYTE(v32))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3917, "OI_STATUS _ACI_WriteLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
            }

            else
            {
              v20 = WORD2(v32);
              if (WORD1(v32) > WORD2(v32))
              {
                if (BYTE6(v32) == 2)
                {
                  ++WORD2(v32);
                  *(v31 + v20) = 0;
                  if (HIBYTE(v32))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3918, "OI_STATUS _ACI_WriteLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v32) - WORD2(v32) > 1)
                  {
                    if (BYTE6(v32) == 2)
                    {
                      *(v31 + WORD2(v32)) = a3;
                      v21 = WORD2(v32) + 2;
                      WORD2(v32) += 2;
                      if (HIBYTE(v32))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3919, "OI_STATUS _ACI_WriteLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v32) - v21 > 1)
                      {
                        if (BYTE6(v32) == 2)
                        {
                          *(v31 + v21) = a4;
                          *(v31 + WORD2(v32) + 1) = HIBYTE(a4);
                          v22 = WORD2(v32) + 2;
                          WORD2(v32) += 2;
                          if (HIBYTE(v32))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3920, "OI_STATUS _ACI_WriteLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v32) - v22 > 1)
                          {
                            if (BYTE6(v32) == 2)
                            {
                              *(v31 + v22) = a5;
                              *(v31 + WORD2(v32) + 1) = HIBYTE(a5);
                              v23 = WORD2(v32) + 2;
                              WORD2(v32) += 2;
                              if (HIBYTE(v32))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3921, "OI_STATUS _ACI_WriteLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v32) - v23 > 1)
                              {
                                if (BYTE6(v32) == 2)
                                {
                                  *(v31 + v23) = a6;
                                  *(v31 + WORD2(v32) + 1) = HIBYTE(a6);
                                  WORD2(v32) += 2;
                                  return sub_100020078(65294, v31, BYTE4(v32), a7, sub_1001C62CC, v15, v16, v17);
                                }

                                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3921, v30);
                              }

                              v30 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_52;
                            }

                            v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3920, v29);
                          }

                          v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_48;
                        }

                        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3919, v28);
                      }

                      v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_44;
                    }

                    v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3918, v27);
                  }

                  v27 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_40;
                }

                v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3917, v26);
              }
            }

            v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_36;
          }

          v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3916, v25);
        }

        v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_32;
      }

      v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3915, v24);
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1001D7E00(_WORD *a1, char a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9, void (*a10)())
{
  v34 = 0;
  v35 = 0;
  result = sub_10001FFD8(&v34);
  if (a3)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (a5)
  {
    v22 = 8;
  }

  else
  {
    v22 = 0;
  }

  if (a6)
  {
    v23 = 16;
  }

  else
  {
    v23 = 0;
  }

  if (a7)
  {
    v24 = 64;
  }

  else
  {
    v24 = 0;
  }

  if (a8)
  {
    v25 = 0x80;
  }

  else
  {
    v25 = 0;
  }

  if (!result)
  {
    if (HIBYTE(v35))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3941, "OI_STATUS _ACI_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v26 = WORD2(v35);
      if (WORD1(v35) > WORD2(v35))
      {
        if (BYTE6(v35) == 2)
        {
          ++WORD2(v35);
          *(v34 + v26) = 0;
          if (HIBYTE(v35))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3942, "OI_STATUS _ACI_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v35) - WORD2(v35) > 1)
          {
            if (BYTE6(v35) == 2)
            {
              *(v34 + WORD2(v35)) = *a1;
              v27 = WORD2(v35);
              v28 = WORD2(v35) + 2;
              WORD2(v35) += 2;
              if (HIBYTE(v35))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3943, "OI_STATUS _ACI_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v35) > v28)
              {
                if (BYTE6(v35) == 2)
                {
                  WORD2(v35) = v27 + 3;
                  *(v34 + v28) = v21 | a2 | v22 | v23 | v24 | v25 | (4 * (a9 != 0));
                  if (HIBYTE(v35))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3944, "OI_STATUS _ACI_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else
                  {
                    v29 = WORD2(v35);
                    if (WORD1(v35) > WORD2(v35))
                    {
                      if (BYTE6(v35) == 2)
                      {
                        ++WORD2(v35);
                        *(v34 + v29) = a9;
                        return sub_100020078(65151, v34, BYTE4(v35), a10, sub_1001C62CC, v18, v19, v20);
                      }

                      v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3944, v33);
                    }
                  }

                  v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_46;
                }

                v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3943, v32);
              }

              v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_42;
            }

            v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3942, v31);
          }

          v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_38;
        }

        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3941, v30);
      }
    }

    v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1001D80F4(_WORD *a1, __int16 a2, void (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4369, "OI_STATUS _ACI_EnableBTSync(OI_HCI_CONNECTION_HANDLE, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = *a1;
        v10 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4370, "OI_STATUS _ACI_EnableBTSync(OI_HCI_CONNECTION_HANDLE, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v14) - v10 > 1)
        {
          if (BYTE6(v14) == 2)
          {
            *(v13 + v10) = a2;
            *(v13 + WORD2(v14) + 1) = HIBYTE(a2);
            WORD2(v14) += 2;
            return sub_100020078(65261, v13, BYTE4(v14), a3, sub_1001C62CC, v7, v8, v9);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4370, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4369, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D828C(__int16 a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3993, "OI_STATUS _ACI_DelayedHostWake(uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(64916, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3993, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001D8380(int a1, void (*a2)())
{
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (!result)
  {
    switch(a1)
    {
      case 145:
        result = 64805;
        return sub_100020078(result, v39, BYTE4(v40), a2, sub_1001C69E8, v5, v6, v7);
      case 146:
        result = 64806;
        return sub_100020078(result, v39, BYTE4(v40), a2, sub_1001C69E8, v5, v6, v7);
      case 147:
        result = 64807;
        return sub_100020078(result, v39, BYTE4(v40), a2, sub_1001C69E8, v5, v6, v7);
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4614, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v8 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              ++WORD2(v40);
              *(v39 + v8) = 0;
              if (HIBYTE(v40))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4615, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
              }

              else
              {
                v9 = WORD2(v40);
                if (WORD1(v40) > WORD2(v40))
                {
                  if (BYTE6(v40) == 2)
                  {
                    ++WORD2(v40);
                    *(v39 + v9) = 1;
                    if (HIBYTE(v40))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4616, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
                    }

                    else
                    {
                      v10 = WORD2(v40);
                      if (WORD1(v40) > WORD2(v40))
                      {
                        if (BYTE6(v40) == 2)
                        {
                          ++WORD2(v40);
                          *(v39 + v10) = 2;
                          if (HIBYTE(v40))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4617, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
                          }

                          else
                          {
                            v11 = WORD2(v40);
                            if (WORD1(v40) > WORD2(v40))
                            {
                              if (BYTE6(v40) == 2)
                              {
                                ++WORD2(v40);
                                *(v39 + v11) = 3;
                                if (HIBYTE(v40))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4618, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
                                }

                                else
                                {
                                  v12 = WORD2(v40);
                                  if (WORD1(v40) > WORD2(v40))
                                  {
                                    if (BYTE6(v40) == 2)
                                    {
                                      ++WORD2(v40);
                                      *(v39 + v12) = 4;
                                      if (HIBYTE(v40))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4619, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
                                      }

                                      else
                                      {
                                        v13 = WORD2(v40);
                                        if (WORD1(v40) > WORD2(v40))
                                        {
                                          if (BYTE6(v40) == 2)
                                          {
                                            ++WORD2(v40);
                                            *(v39 + v13) = 5;
                                            result = 64812;
                                            return sub_100020078(result, v39, BYTE4(v40), a2, sub_1001C69E8, v5, v6, v7);
                                          }

                                          v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_98:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4619, v27);
                                        }
                                      }

                                      v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_98;
                                    }

                                    v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_94:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4618, v26);
                                  }
                                }

                                v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_94;
                              }

                              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_90:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4617, v25);
                            }
                          }

                          v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_90;
                        }

                        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_86:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4616, v24);
                      }
                    }

                    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_86;
                  }

                  v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4615, v23);
                }
              }

              v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_82;
            }

            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4614, v22);
          }
        }

        v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_78;
      case 154:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4624, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v20 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              ++WORD2(v40);
              *(v39 + v20) = 0;
LABEL_72:
              result = 64814;
              return sub_100020078(result, v39, BYTE4(v40), a2, sub_1001C69E8, v5, v6, v7);
            }

            v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_138:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4624, v36);
          }
        }

        v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_138;
      case 155:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4628, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v17 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v18 = v39;
              ++WORD2(v40);
              v19 = 1;
              goto LABEL_71;
            }

            v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_126:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4628, v30);
          }
        }

        v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_126;
      case 156:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4632, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v17 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v18 = v39;
              ++WORD2(v40);
              v19 = 2;
              goto LABEL_71;
            }

            v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_132:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4632, v33);
          }
        }

        v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_132;
      case 157:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4636, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v17 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v18 = v39;
              ++WORD2(v40);
              v19 = 3;
              goto LABEL_71;
            }

            v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_128:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4636, v31);
          }
        }

        v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_128;
      case 158:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4640, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v17 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v18 = v39;
              ++WORD2(v40);
              v19 = 4;
LABEL_71:
              *(v18 + v17) = v19;
              goto LABEL_72;
            }

            v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_124:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4640, v29);
          }
        }

        v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_124;
      case 159:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4644, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v17 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v18 = v39;
              ++WORD2(v40);
              v19 = 5;
              goto LABEL_71;
            }

            v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_134:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4644, v34);
          }
        }

        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_134;
      case 161:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4648, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v17 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v18 = v39;
              ++WORD2(v40);
              v19 = 6;
              goto LABEL_71;
            }

            v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_136:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4648, v35);
          }
        }

        v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_136;
      case 162:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4652, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v17 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v18 = v39;
              ++WORD2(v40);
              v19 = 7;
              goto LABEL_71;
            }

            v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_142:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4652, v38);
          }
        }

        v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_142;
      case 163:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4657, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v21 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              ++WORD2(v40);
              *(v39 + v21) = 0;
              goto LABEL_66;
            }

            v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_140:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4657, v37);
          }
        }

        v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_140;
      case 164:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4661, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v14 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v15 = v39;
              ++WORD2(v40);
              v16 = 1;
LABEL_42:
              *(v15 + v14) = v16;
LABEL_66:
              result = 64800;
              return sub_100020078(result, v39, BYTE4(v40), a2, sub_1001C69E8, v5, v6, v7);
            }

            v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_122:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4661, v28);
          }
        }

        v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_122;
      case 165:
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4665, "OI_STATUS _ACI_ReadFactoryCalTable(uint8_t, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v14 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v15 = v39;
              ++WORD2(v40);
              v16 = 2;
              goto LABEL_42;
            }

            v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_130:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4665, v32);
          }
        }

        v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_130;
      default:
        return sub_100020078(result, v39, BYTE4(v40), a2, sub_1001C69E8, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1001D8C6C(_WORD *a1, char a2, char a3, char a4, void (*a5)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3736, "OI_STATUS _ACI_ConfigureLinkQualityStatsTriggers(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v23) - WORD2(v23) > 1)
    {
      if (BYTE6(v23) == 2)
      {
        *(v22 + WORD2(v23)) = *a1;
        v14 = WORD2(v23);
        v15 = WORD2(v23) + 2;
        WORD2(v23) += 2;
        if (HIBYTE(v23))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3737, "OI_STATUS _ACI_ConfigureLinkQualityStatsTriggers(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v23) > v15)
        {
          if (BYTE6(v23) == 2)
          {
            WORD2(v23) = v14 + 3;
            *(v22 + v15) = a2;
            if (HIBYTE(v23))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3738, "OI_STATUS _ACI_ConfigureLinkQualityStatsTriggers(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
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
                  if (HIBYTE(v23))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3739, "OI_STATUS _ACI_ConfigureLinkQualityStatsTriggers(OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else
                  {
                    v17 = WORD2(v23);
                    if (WORD1(v23) > WORD2(v23))
                    {
                      if (BYTE6(v23) == 2)
                      {
                        ++WORD2(v23);
                        *(v22 + v17) = a4;
                        return sub_100020078(65276, v22, BYTE4(v23), a5, sub_1001C62CC, v11, v12, v13);
                      }

                      v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3739, v21);
                    }
                  }

                  v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3738, v20);
              }
            }

            v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_27;
          }

          v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3737, v19);
        }

        v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_23;
      }

      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3736, v18);
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D8EE8(char *a1, void (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3754, "OI_STATUS _ACI_CreateMultipleAdvInstance(const LE_Address *, BT_VSC_CREATE_MULTI_ADV_INST_CB)");
    }

    else
    {
      v5 = WORD2(v13);
      if (WORD1(v13) > WORD2(v13))
      {
        if (BYTE6(v13) == 2)
        {
          v6 = *a1;
          ++WORD2(v13);
          *(v12 + v5) = v6;
          if (HIBYTE(v13))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3755, "OI_STATUS _ACI_CreateMultipleAdvInstance(const LE_Address *, BT_VSC_CREATE_MULTI_ADV_INST_CB)");
          }

          else if (WORD1(v13) - WORD2(v13) > 5)
          {
            if (BYTE6(v13) == 2)
            {
              sub_1000075EC((v12 + WORD2(v13)), (a1 + 1), 6uLL);
              WORD2(v13) += 6;
              return sub_100020078(64826, v12, BYTE4(v13), a2, sub_1001EE33C, v7, v8, v9);
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3755, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3754, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D9050(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3770, "OI_STATUS _ACI_RemoveMultipleAdvInstance(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(64827, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3770, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001D9128(char a1, __int16 a2, __int16 a3, char a4, char a5, char a6, void (*a7)())
{
  v30 = 0;
  v31 = 0;
  result = sub_10001FFD8(&v30);
  if (!result)
  {
    if (HIBYTE(v31))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3785, "OI_STATUS _ACI_SetMultipleAdvInstanceParams(uint8_t, uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3786, "OI_STATUS _ACI_SetMultipleAdvInstanceParams(uint8_t, uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v31) - WORD2(v31) > 1)
          {
            if (BYTE6(v31) == 2)
            {
              *(v30 + WORD2(v31)) = a2;
              v19 = WORD2(v31) + 2;
              WORD2(v31) += 2;
              if (HIBYTE(v31))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3787, "OI_STATUS _ACI_SetMultipleAdvInstanceParams(uint8_t, uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v31) - v19 > 1)
              {
                if (BYTE6(v31) == 2)
                {
                  *(v30 + v19) = a3;
                  *(v30 + WORD2(v31) + 1) = HIBYTE(a3);
                  v20 = WORD2(v31);
                  v21 = WORD2(v31) + 2;
                  WORD2(v31) += 2;
                  if (HIBYTE(v31))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3788, "OI_STATUS _ACI_SetMultipleAdvInstanceParams(uint8_t, uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v31) > v21)
                  {
                    if (BYTE6(v31) == 2)
                    {
                      WORD2(v31) = v20 + 3;
                      *(v30 + v21) = a4;
                      if (HIBYTE(v31))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3789, "OI_STATUS _ACI_SetMultipleAdvInstanceParams(uint8_t, uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v22 = WORD2(v31);
                        if (WORD1(v31) > WORD2(v31))
                        {
                          if (BYTE6(v31) == 2)
                          {
                            ++WORD2(v31);
                            *(v30 + v22) = a5;
                            if (HIBYTE(v31))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3790, "OI_STATUS _ACI_SetMultipleAdvInstanceParams(uint8_t, uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v23 = WORD2(v31);
                              if (WORD1(v31) > WORD2(v31))
                              {
                                if (BYTE6(v31) == 2)
                                {
                                  ++WORD2(v31);
                                  *(v30 + v23) = a6;
                                  return sub_100020078(64828, v30, BYTE4(v31), a7, sub_1001C62CC, v15, v16, v17);
                                }

                                v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3790, v29);
                              }
                            }

                            v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_45;
                          }

                          v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3789, v28);
                        }
                      }

                      v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_41;
                    }

                    v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3788, v27);
                  }

                  v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_37;
                }

                v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3787, v26);
              }

              v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_33;
            }

            v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3786, v25);
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_29;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3785, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1001D94BC(char a1, unsigned int a2, const void *a3, void (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3805, "OI_STATUS _ACI_SetMultipleAdvInstanceData(uint8_t, uint8_t, const uint8_t *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v9 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v9) = a1;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3806, "OI_STATUS _ACI_SetMultipleAdvInstanceData(uint8_t, uint8_t, const uint8_t *, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v10 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                if (a2 >= 0x1F)
                {
                  v11 = 31;
                }

                else
                {
                  v11 = a2;
                }

                ++WORD2(v19);
                *(v18 + v10) = v11;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3807, "OI_STATUS _ACI_SetMultipleAdvInstanceData(uint8_t, uint8_t, const uint8_t *, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v19) - WORD2(v19) > 30)
                {
                  if (BYTE6(v19) == 2)
                  {
                    memmove((v18 + WORD2(v19)), a3, 0x1FuLL);
                    WORD2(v19) += 31;
                    return sub_100020078(64829, v18, BYTE4(v19), a4, sub_1001C62CC, v12, v13, v14);
                  }

                  v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3807, v17);
                }

                v17 = "ByteStream_NumReadBytesAvail(bs) >= (31)";
                goto LABEL_27;
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3806, v16);
            }
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3805, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D96B4(char a1, unsigned int a2, const void *a3, void (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3822, "OI_STATUS _ACI_SetMultipleScanRspInstanceData(uint8_t, uint8_t, const uint8_t *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v9 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v9) = a1;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3823, "OI_STATUS _ACI_SetMultipleScanRspInstanceData(uint8_t, uint8_t, const uint8_t *, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v10 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                if (a2 >= 0x1F)
                {
                  v11 = 31;
                }

                else
                {
                  v11 = a2;
                }

                ++WORD2(v19);
                *(v18 + v10) = v11;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3824, "OI_STATUS _ACI_SetMultipleScanRspInstanceData(uint8_t, uint8_t, const uint8_t *, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v19) - WORD2(v19) > 30)
                {
                  if (BYTE6(v19) == 2)
                  {
                    memmove((v18 + WORD2(v19)), a3, 0x1FuLL);
                    WORD2(v19) += 31;
                    return sub_100020078(64830, v18, BYTE4(v19), a4, sub_1001C62CC, v12, v13, v14);
                  }

                  v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3824, v17);
                }

                v17 = "ByteStream_NumReadBytesAvail(bs) >= (31)";
                goto LABEL_27;
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3823, v16);
            }
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3822, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D98AC(char a1, char a2, int a3, char a4, void (*a5)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3839, "OI_STATUS _ACI_SetMultipleAdvInstanceEnable(uint8_t, _Bool, uint32_t, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v14 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v14) = a1;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3840, "OI_STATUS _ACI_SetMultipleAdvInstanceEnable(uint8_t, _Bool, uint32_t, _Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v15 = WORD2(v23);
            if (WORD1(v23) > WORD2(v23))
            {
              if (BYTE6(v23) == 2)
              {
                ++WORD2(v23);
                *(v22 + v15) = a2;
                if (HIBYTE(v23))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3841, "OI_STATUS _ACI_SetMultipleAdvInstanceEnable(uint8_t, _Bool, uint32_t, _Bool, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v23) - WORD2(v23) > 3)
                {
                  if (BYTE6(v23) == 2)
                  {
                    *(v22 + WORD2(v23)) = a3;
                    *(v22 + WORD2(v23) + 2) = BYTE2(a3);
                    *(v22 + WORD2(v23) + 3) = HIBYTE(a3);
                    v16 = WORD2(v23);
                    v17 = WORD2(v23) + 4;
                    WORD2(v23) += 4;
                    if (HIBYTE(v23))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3842, "OI_STATUS _ACI_SetMultipleAdvInstanceEnable(uint8_t, _Bool, uint32_t, _Bool, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v23) > v17)
                    {
                      if (BYTE6(v23) == 2)
                      {
                        WORD2(v23) = v16 + 5;
                        *(v22 + v17) = a4;
                        return sub_100020078(64831, v22, BYTE4(v23), a5, sub_1001C62CC, v11, v12, v13);
                      }

                      v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3842, v21);
                    }

                    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3841, v20);
                }

                v20 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_27;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3840, v19);
            }
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3839, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D9B4C(char a1, char *a2, void (*a3)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3858, "OI_STATUS _ACI_UpdateMultipleAdvInstanceAddress(uint8_t, const LE_Address *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v7 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v7) = a1;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3859, "OI_STATUS _ACI_UpdateMultipleAdvInstanceAddress(uint8_t, const LE_Address *, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v8 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                v9 = *a2;
                ++WORD2(v17);
                *(v16 + v8) = v9;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3860, "OI_STATUS _ACI_UpdateMultipleAdvInstanceAddress(uint8_t, const LE_Address *, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v17) - WORD2(v17) > 5)
                {
                  if (BYTE6(v17) == 2)
                  {
                    sub_1000075EC((v16 + WORD2(v17)), (a2 + 1), 6uLL);
                    WORD2(v17) += 6;
                    return sub_100020078(64833, v16, BYTE4(v17), a3, sub_1001C62CC, v10, v11, v12);
                  }

                  v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3860, v15);
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_24;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3859, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3858, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D9D38(char a1, __int16 a2, void (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3878, "OI_STATUS _ACI_EnableExtendedDuplicateFilter(_Bool, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v18) - WORD2(v18) > 1)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = a2;
        v10 = WORD2(v18);
        v11 = WORD2(v18) + 2;
        WORD2(v18) += 2;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3879, "OI_STATUS _ACI_EnableExtendedDuplicateFilter(_Bool, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v18) > v11)
        {
          if (BYTE6(v18) == 2)
          {
            WORD2(v18) = v10 + 3;
            *(v17 + v11) = a1;
            if (HIBYTE(v18))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3880, "OI_STATUS _ACI_EnableExtendedDuplicateFilter(_Bool, uint16_t, BT_VSC_COMPLETE_CB)");
            }

            else
            {
              v12 = WORD2(v18);
              if (WORD1(v18) > WORD2(v18))
              {
                if (BYTE6(v18) == 2)
                {
                  ++WORD2(v18);
                  *(v17 + v12) = -1;
                  if (HIBYTE(v18))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3881, "OI_STATUS _ACI_EnableExtendedDuplicateFilter(_Bool, uint16_t, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v18) - WORD2(v18) > 1)
                  {
                    if (BYTE6(v18) == 2)
                    {
                      *(v17 + WORD2(v18)) = -1;
                      *(v17 + WORD2(v18) + 1) = -1;
                      WORD2(v18) += 2;
                      return sub_100020078(64960, v17, BYTE4(v18), a3, sub_1001C62CC, v7, v8, v9);
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3881, v16);
                  }

                  v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_31;
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3880, v15);
              }
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_27;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3879, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_23;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3878, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D9FBC(int a1, void (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3896, "OI_STATUS _ACI_LMPRoutingEnable(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v13);
      if (WORD1(v13) > WORD2(v13))
      {
        if (BYTE6(v13) == 2)
        {
          ++WORD2(v13);
          *(v12 + v8) = 1;
          if (HIBYTE(v13))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3898, "OI_STATUS _ACI_LMPRoutingEnable(_Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v13);
            if (WORD1(v13) > WORD2(v13))
            {
              if (BYTE6(v13) == 2)
              {
                ++WORD2(v13);
                *(v12 + v9) = a1 << 31 >> 31;
                return sub_100020078(65384, v12, BYTE4(v13), a2, sub_1001C62CC, v5, v6, v7);
              }

              v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3898, v11);
            }
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3896, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DA114(_WORD *a1, __int16 a2, __int16 a3, void (*a4)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3977, "OI_STATUS _ACI_EnableAudioStats(OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v18) - WORD2(v18) > 1)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = *a1;
        v12 = WORD2(v18) + 2;
        WORD2(v18) += 2;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3978, "OI_STATUS _ACI_EnableAudioStats(OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v18) - v12 > 1)
        {
          if (BYTE6(v18) == 2)
          {
            *(v17 + v12) = a2;
            *(v17 + WORD2(v18) + 1) = HIBYTE(a2);
            v13 = WORD2(v18) + 2;
            WORD2(v18) += 2;
            if (HIBYTE(v18))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3979, "OI_STATUS _ACI_EnableAudioStats(OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v18) - v13 > 1)
            {
              if (BYTE6(v18) == 2)
              {
                *(v17 + v13) = a3;
                *(v17 + WORD2(v18) + 1) = HIBYTE(a3);
                WORD2(v18) += 2;
                return sub_100020078(65383, v17, BYTE4(v18), a4, sub_1001C62CC, v9, v10, v11);
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3979, v16);
            }

            v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_24;
          }

          v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3978, v15);
        }

        v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3977, v14);
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001DA344(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4007, "OI_STATUS _ACI_GetAwdDataEvent(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65396, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4007, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DA41C(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65510, v6, BYTE4(v7), a1, sub_1001EE444, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001DA478(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65512, v6, BYTE4(v7), a1, sub_1001C62CC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001DA4D4(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(64932, v6, BYTE4(v7), a1, sub_1001EE864, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001DA530(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(64933, v6, BYTE4(v7), a1, sub_1001C62CC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001DA58C(uint64_t a1, char a2, char a3, char a4, char a5, void (*a6)())
{
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v11 = sub_10023DB58(a1, &v28);
  if (!v11)
  {
    v12 = sub_10001FFD8(&v29);
    if (v12)
    {
      return v12;
    }

    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4141, "OI_STATUS _ACI_HighPowerEnable(OI_BD_ADDR *, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v17 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          ++WORD2(v30);
          *(v29 + v17) = a2;
          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4142, "OI_STATUS _ACI_HighPowerEnable(OI_BD_ADDR *, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v30) - WORD2(v30) > 1)
          {
            if (BYTE6(v30) == 2)
            {
              *(v29 + WORD2(v30)) = *v28;
              v18 = WORD2(v30);
              v19 = WORD2(v30) + 2;
              WORD2(v30) += 2;
              if (HIBYTE(v30))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4143, "OI_STATUS _ACI_HighPowerEnable(OI_BD_ADDR *, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v30) > v19)
              {
                if (BYTE6(v30) == 2)
                {
                  WORD2(v30) = v18 + 3;
                  *(v29 + v19) = a3;
                  if (HIBYTE(v30))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4144, "OI_STATUS _ACI_HighPowerEnable(OI_BD_ADDR *, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else
                  {
                    v20 = WORD2(v30);
                    if (WORD1(v30) > WORD2(v30))
                    {
                      if (BYTE6(v30) == 2)
                      {
                        ++WORD2(v30);
                        *(v29 + v20) = a4;
                        if (HIBYTE(v30))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4145, "OI_STATUS _ACI_HighPowerEnable(OI_BD_ADDR *, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v21 = WORD2(v30);
                          if (WORD1(v30) > WORD2(v30))
                          {
                            if (BYTE6(v30) == 2)
                            {
                              ++WORD2(v30);
                              *(v29 + v21) = a5;
                              return sub_100020078(64808, v29, BYTE4(v30), a6, sub_1001C62CC, v14, v15, v16);
                            }

                            v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4145, v27);
                          }
                        }

                        v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_42;
                      }

                      v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4144, v26);
                    }
                  }

                  v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_38;
                }

                v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4143, v25);
              }

              v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_34;
            }

            v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4142, v24);
          }

          v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_30;
        }

        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4141, v23);
      }
    }

    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_26;
  }

  v12 = v11;
  if (sub_10000C240())
  {
    sub_10000AF54("VSC Error %!", v12);
    v13 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v12;
}

uint64_t sub_1001DA8E4(_WORD *a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5761, "OI_STATUS _ACI_SetMaximumConnectionUpdateInstant(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = *a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5762, "OI_STATUS _ACI_SetMaximumConnectionUpdateInstant(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65075, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5762, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5761, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DAA60(unsigned __int8 a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5157, "OI_STATUS _ACI_ConfigPageScanResponse(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(64876, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5157, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DAB50(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4158, "OI_STATUS _ACI_HDRControl(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65011, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4158, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DAC28(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65443, v6, BYTE4(v7), a1, sub_1001C6430, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001DAC84(__int16 a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4219, "OI_STATUS _ACI_ReadProprietaryRemoteFeatures(OI_HCI_LM_HANDLE, BT_VSC_READ_PROP_REMOTE_FEATURES_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(65444, v9, BYTE4(v10), a2, sub_1001C6540, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4219, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DAD78(__int16 a1, int a2, void (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4285, "OI_STATUS _ACI_HDRChangeConnPktType(OI_HCI_LM_HANDLE, uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = a1;
        v10 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4286, "OI_STATUS _ACI_HDRChangeConnPktType(OI_HCI_LM_HANDLE, uint32_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v14) - v10 > 3)
        {
          if (BYTE6(v14) == 2)
          {
            *(v13 + v10) = a2;
            *(v13 + WORD2(v14) + 1) = BYTE1(a2);
            *(v13 + WORD2(v14) + 2) = BYTE2(a2);
            *(v13 + WORD2(v14) + 3) = HIBYTE(a2);
            WORD2(v14) += 4;
            return sub_100020078(65425, v13, BYTE4(v14), a3, sub_1001C62CC, v7, v8, v9);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4286, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4285, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DAF34(__int16 a1, int a2, int a3, __int16 a4, __int16 a5, char a6, int a7, void (*a8)())
{
  v38 = 0;
  v39 = 0;
  result = sub_10001FFD8(&v38);
  if (!result)
  {
    if (HIBYTE(v39))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4302, "OI_STATUS _ACI_HDRSetupSynchConn(OI_HCI_LM_HANDLE, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v39) - WORD2(v39) > 1)
    {
      if (BYTE6(v39) == 2)
      {
        *(v38 + WORD2(v39)) = a1;
        v20 = WORD2(v39) + 2;
        WORD2(v39) += 2;
        if (HIBYTE(v39))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4303, "OI_STATUS _ACI_HDRSetupSynchConn(OI_HCI_LM_HANDLE, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v39) - v20 > 3)
        {
          if (BYTE6(v39) == 2)
          {
            *(v38 + v20) = a2;
            *(v38 + WORD2(v39) + 1) = BYTE1(a2);
            *(v38 + WORD2(v39) + 2) = BYTE2(a2);
            *(v38 + WORD2(v39) + 3) = HIBYTE(a2);
            v21 = WORD2(v39) + 4;
            WORD2(v39) += 4;
            if (HIBYTE(v39))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4304, "OI_STATUS _ACI_HDRSetupSynchConn(OI_HCI_LM_HANDLE, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v39) - v21 > 3)
            {
              if (BYTE6(v39) == 2)
              {
                *(v38 + v21) = a3;
                *(v38 + WORD2(v39) + 1) = BYTE1(a3);
                *(v38 + WORD2(v39) + 2) = BYTE2(a3);
                *(v38 + WORD2(v39) + 3) = HIBYTE(a3);
                v22 = WORD2(v39) + 4;
                WORD2(v39) += 4;
                if (HIBYTE(v39))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4305, "OI_STATUS _ACI_HDRSetupSynchConn(OI_HCI_LM_HANDLE, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v39) - v22 > 1)
                {
                  if (BYTE6(v39) == 2)
                  {
                    *(v38 + v22) = a4;
                    *(v38 + WORD2(v39) + 1) = HIBYTE(a4);
                    v23 = WORD2(v39) + 2;
                    WORD2(v39) += 2;
                    if (HIBYTE(v39))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4306, "OI_STATUS _ACI_HDRSetupSynchConn(OI_HCI_LM_HANDLE, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v39) - v23 > 1)
                    {
                      if (BYTE6(v39) == 2)
                      {
                        *(v38 + v23) = a5;
                        *(v38 + WORD2(v39) + 1) = HIBYTE(a5);
                        v24 = WORD2(v39);
                        v25 = WORD2(v39) + 2;
                        WORD2(v39) += 2;
                        if (HIBYTE(v39))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4307, "OI_STATUS _ACI_HDRSetupSynchConn(OI_HCI_LM_HANDLE, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                        }

                        else if (WORD1(v39) > v25)
                        {
                          if (BYTE6(v39) == 2)
                          {
                            WORD2(v39) = v24 + 3;
                            *(v38 + v25) = a6;
                            if (HIBYTE(v39))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4310, "OI_STATUS _ACI_HDRSetupSynchConn(OI_HCI_LM_HANDLE, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v26 = WORD2(v39);
                              if (WORD1(v39) > WORD2(v39))
                              {
                                if (BYTE6(v39) == 2)
                                {
                                  ++WORD2(v39);
                                  *(v38 + v26) = a7;
                                  if (HIBYTE(v39))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4312, "OI_STATUS _ACI_HDRSetupSynchConn(OI_HCI_LM_HANDLE, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else
                                  {
                                    v27 = WORD2(v39);
                                    if (WORD1(v39) > WORD2(v39))
                                    {
                                      if (BYTE6(v39) == 2)
                                      {
                                        ++WORD2(v39);
                                        *(v38 + v27) = BYTE1(a7);
                                        if (HIBYTE(v39))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4314, "OI_STATUS _ACI_HDRSetupSynchConn(OI_HCI_LM_HANDLE, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                                        }

                                        else
                                        {
                                          v28 = WORD2(v39);
                                          if (WORD1(v39) > WORD2(v39))
                                          {
                                            if (BYTE6(v39) == 2)
                                            {
                                              ++WORD2(v39);
                                              *(v38 + v28) = BYTE2(a7);
                                              return sub_100020078(64967, v38, BYTE4(v39), a8, sub_1001C62CC, v17, v18, v19);
                                            }

                                            v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4314, v37);
                                          }
                                        }

                                        v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_66;
                                      }

                                      v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4312, v36);
                                    }
                                  }

                                  v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_62;
                                }

                                v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4310, v35);
                              }
                            }

                            v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_58;
                          }

                          v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4307, v34);
                        }

                        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_54;
                      }

                      v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4306, v33);
                    }

                    v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_50;
                  }

                  v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4305, v32);
                }

                v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_46;
              }

              v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4304, v31);
            }

            v31 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_42;
          }

          v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4303, v30);
        }

        v30 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_38;
      }

      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4302, v29);
    }

    v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1001DB4E0(uint64_t a1, int a2, int a3, __int16 a4, __int16 a5, char a6, int a7, void (*a8)())
{
  v38 = 0;
  v39 = 0;
  result = sub_10001FFD8(&v38);
  if (!result)
  {
    if (HIBYTE(v39))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4328, "OI_STATUS _ACI_HDRAcceptSynchConn(OI_BD_ADDR *, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v39) - WORD2(v39) > 5)
    {
      if (BYTE6(v39) == 2)
      {
        sub_1000075EC((v38 + WORD2(v39)), a1, 6uLL);
        v20 = WORD2(v39) + 6;
        WORD2(v39) += 6;
        if (HIBYTE(v39))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4329, "OI_STATUS _ACI_HDRAcceptSynchConn(OI_BD_ADDR *, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v39) - v20 > 3)
        {
          if (BYTE6(v39) == 2)
          {
            *(v38 + v20) = a2;
            *(v38 + WORD2(v39) + 1) = BYTE1(a2);
            *(v38 + WORD2(v39) + 2) = BYTE2(a2);
            *(v38 + WORD2(v39) + 3) = HIBYTE(a2);
            v21 = WORD2(v39) + 4;
            WORD2(v39) += 4;
            if (HIBYTE(v39))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4330, "OI_STATUS _ACI_HDRAcceptSynchConn(OI_BD_ADDR *, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v39) - v21 > 3)
            {
              if (BYTE6(v39) == 2)
              {
                *(v38 + v21) = a3;
                *(v38 + WORD2(v39) + 1) = BYTE1(a3);
                *(v38 + WORD2(v39) + 2) = BYTE2(a3);
                *(v38 + WORD2(v39) + 3) = HIBYTE(a3);
                v22 = WORD2(v39) + 4;
                WORD2(v39) += 4;
                if (HIBYTE(v39))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4331, "OI_STATUS _ACI_HDRAcceptSynchConn(OI_BD_ADDR *, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v39) - v22 > 1)
                {
                  if (BYTE6(v39) == 2)
                  {
                    *(v38 + v22) = a4;
                    *(v38 + WORD2(v39) + 1) = HIBYTE(a4);
                    v23 = WORD2(v39) + 2;
                    WORD2(v39) += 2;
                    if (HIBYTE(v39))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4332, "OI_STATUS _ACI_HDRAcceptSynchConn(OI_BD_ADDR *, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v39) - v23 > 1)
                    {
                      if (BYTE6(v39) == 2)
                      {
                        *(v38 + v23) = a5;
                        *(v38 + WORD2(v39) + 1) = HIBYTE(a5);
                        v24 = WORD2(v39);
                        v25 = WORD2(v39) + 2;
                        WORD2(v39) += 2;
                        if (HIBYTE(v39))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4333, "OI_STATUS _ACI_HDRAcceptSynchConn(OI_BD_ADDR *, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                        }

                        else if (WORD1(v39) > v25)
                        {
                          if (BYTE6(v39) == 2)
                          {
                            WORD2(v39) = v24 + 3;
                            *(v38 + v25) = a6;
                            if (HIBYTE(v39))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4336, "OI_STATUS _ACI_HDRAcceptSynchConn(OI_BD_ADDR *, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v26 = WORD2(v39);
                              if (WORD1(v39) > WORD2(v39))
                              {
                                if (BYTE6(v39) == 2)
                                {
                                  ++WORD2(v39);
                                  *(v38 + v26) = a7;
                                  if (HIBYTE(v39))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4338, "OI_STATUS _ACI_HDRAcceptSynchConn(OI_BD_ADDR *, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else
                                  {
                                    v27 = WORD2(v39);
                                    if (WORD1(v39) > WORD2(v39))
                                    {
                                      if (BYTE6(v39) == 2)
                                      {
                                        ++WORD2(v39);
                                        *(v38 + v27) = BYTE1(a7);
                                        if (HIBYTE(v39))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4340, "OI_STATUS _ACI_HDRAcceptSynchConn(OI_BD_ADDR *, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint32_t, BT_VSC_COMPLETE_CB)");
                                        }

                                        else
                                        {
                                          v28 = WORD2(v39);
                                          if (WORD1(v39) > WORD2(v39))
                                          {
                                            if (BYTE6(v39) == 2)
                                            {
                                              ++WORD2(v39);
                                              *(v38 + v28) = BYTE2(a7);
                                              return sub_100020078(65016, v38, BYTE4(v39), a8, sub_1001C62CC, v17, v18, v19);
                                            }

                                            v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4340, v37);
                                          }
                                        }

                                        v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_66;
                                      }

                                      v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4338, v36);
                                    }
                                  }

                                  v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_62;
                                }

                                v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4336, v35);
                              }
                            }

                            v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_58;
                          }

                          v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4333, v34);
                        }

                        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_54;
                      }

                      v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4332, v33);
                    }

                    v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_50;
                  }

                  v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4331, v32);
                }

                v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_46;
              }

              v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4330, v31);
            }

            v31 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_42;
          }

          v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4329, v30);
        }

        v30 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_38;
      }

      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4328, v29);
    }

    v29 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1001DBA84(char a1, __int16 a2, char a3, void (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5365, "OI_STATUS _ACI_SCOBufferSizeControl(uint8_t, uint16_t, uint8_t, BT_VSC_SCO_BUFFER_SIZE_CONTROL_CB)");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5366, "OI_STATUS _ACI_SCOBufferSizeControl(uint8_t, uint16_t, uint8_t, BT_VSC_SCO_BUFFER_SIZE_CONTROL_CB)");
          }

          else if (WORD1(v19) - WORD2(v19) > 1)
          {
            if (BYTE6(v19) == 2)
            {
              *(v18 + WORD2(v19)) = a2;
              v13 = WORD2(v19);
              v14 = WORD2(v19) + 2;
              WORD2(v19) += 2;
              if (HIBYTE(v19))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5367, "OI_STATUS _ACI_SCOBufferSizeControl(uint8_t, uint16_t, uint8_t, BT_VSC_SCO_BUFFER_SIZE_CONTROL_CB)");
              }

              else if (WORD1(v19) > v14)
              {
                if (BYTE6(v19) == 2)
                {
                  WORD2(v19) = v13 + 3;
                  *(v18 + v14) = a3;
                  return sub_100020078(65025, v18, BYTE4(v19), a4, sub_1001EEA30, v9, v10, v11);
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5367, v17);
              }

              v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5366, v16);
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_20;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5365, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001DBC78(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2448, "OI_STATUS _ACI_HRBControl(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65399, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2448, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DBD50(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2462, "OI_STATUS _ACI_HRBAllowedBands(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65401, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2462, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DBE28(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2476, "OI_STATUS _ACI_HRBClassificationBands(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65402, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2476, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DBF00(uint64_t a1, __int16 a2, char a3, char a4, __int16 a5, char a6, char a7, char a8, __int16 a9)
{
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (!result)
  {
    if (HIBYTE(v40))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2490, "OI_STATUS _ACI_HRBCreateConnection(OI_BD_ADDR *, uint16_t, uint8_t, _Bool, uint16_t, uint8_t, uint8_t, uint8_t, BTConnectionTaggingDeviceType)");
    }

    else if (WORD1(v40) - WORD2(v40) > 5)
    {
      if (BYTE6(v40) == 2)
      {
        sub_1000075EC((v39 + WORD2(v40)), a1, 6uLL);
        v21 = WORD2(v40) + 6;
        WORD2(v40) += 6;
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2491, "OI_STATUS _ACI_HRBCreateConnection(OI_BD_ADDR *, uint16_t, uint8_t, _Bool, uint16_t, uint8_t, uint8_t, uint8_t, BTConnectionTaggingDeviceType)");
        }

        else if (WORD1(v40) - v21 > 1)
        {
          if (BYTE6(v40) == 2)
          {
            *(v39 + v21) = a2;
            *(v39 + WORD2(v40) + 1) = HIBYTE(a2);
            v22 = WORD2(v40);
            v23 = WORD2(v40) + 2;
            WORD2(v40) += 2;
            if (HIBYTE(v40))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2492, "OI_STATUS _ACI_HRBCreateConnection(OI_BD_ADDR *, uint16_t, uint8_t, _Bool, uint16_t, uint8_t, uint8_t, uint8_t, BTConnectionTaggingDeviceType)");
            }

            else if (WORD1(v40) > v23)
            {
              if (BYTE6(v40) == 2)
              {
                WORD2(v40) = v22 + 3;
                *(v39 + v23) = a3;
                if (HIBYTE(v40))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2493, "OI_STATUS _ACI_HRBCreateConnection(OI_BD_ADDR *, uint16_t, uint8_t, _Bool, uint16_t, uint8_t, uint8_t, uint8_t, BTConnectionTaggingDeviceType)");
                }

                else
                {
                  v24 = WORD2(v40);
                  if (WORD1(v40) > WORD2(v40))
                  {
                    if (BYTE6(v40) == 2)
                    {
                      ++WORD2(v40);
                      *(v39 + v24) = a4;
                      if (HIBYTE(v40))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2494, "OI_STATUS _ACI_HRBCreateConnection(OI_BD_ADDR *, uint16_t, uint8_t, _Bool, uint16_t, uint8_t, uint8_t, uint8_t, BTConnectionTaggingDeviceType)");
                      }

                      else if (WORD1(v40) - WORD2(v40) > 1)
                      {
                        if (BYTE6(v40) == 2)
                        {
                          *(v39 + WORD2(v40)) = a5;
                          v25 = WORD2(v40);
                          v26 = WORD2(v40) + 2;
                          WORD2(v40) += 2;
                          if (HIBYTE(v40))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2495, "OI_STATUS _ACI_HRBCreateConnection(OI_BD_ADDR *, uint16_t, uint8_t, _Bool, uint16_t, uint8_t, uint8_t, uint8_t, BTConnectionTaggingDeviceType)");
                          }

                          else if (WORD1(v40) > v26)
                          {
                            if (BYTE6(v40) == 2)
                            {
                              WORD2(v40) = v25 + 3;
                              *(v39 + v26) = a6;
                              if (HIBYTE(v40))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2496, "OI_STATUS _ACI_HRBCreateConnection(OI_BD_ADDR *, uint16_t, uint8_t, _Bool, uint16_t, uint8_t, uint8_t, uint8_t, BTConnectionTaggingDeviceType)");
                              }

                              else
                              {
                                v27 = WORD2(v40);
                                if (WORD1(v40) > WORD2(v40))
                                {
                                  if (BYTE6(v40) == 2)
                                  {
                                    ++WORD2(v40);
                                    *(v39 + v27) = a7;
                                    if (HIBYTE(v40))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2497, "OI_STATUS _ACI_HRBCreateConnection(OI_BD_ADDR *, uint16_t, uint8_t, _Bool, uint16_t, uint8_t, uint8_t, uint8_t, BTConnectionTaggingDeviceType)");
                                    }

                                    else
                                    {
                                      v28 = WORD2(v40);
                                      if (WORD1(v40) > WORD2(v40))
                                      {
                                        if (BYTE6(v40) == 2)
                                        {
                                          ++WORD2(v40);
                                          *(v39 + v28) = a8;
                                          if ((a4 & 1) == 0)
                                          {
                                            v29 = BYTE4(v40);
                                            return sub_100020078(65403, v39, v29, 0, sub_1001C62CC, v18, v19, v20);
                                          }

                                          if (HIBYTE(v40))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2499, "OI_STATUS _ACI_HRBCreateConnection(OI_BD_ADDR *, uint16_t, uint8_t, _Bool, uint16_t, uint8_t, uint8_t, uint8_t, BTConnectionTaggingDeviceType)");
                                          }

                                          else if (WORD1(v40) - WORD2(v40) > 1)
                                          {
                                            if (BYTE6(v40) == 2)
                                            {
                                              *(v39 + WORD2(v40)) = a9;
                                              v29 = BYTE4(v40) + 2;
                                              WORD2(v40) += 2;
                                              return sub_100020078(65403, v39, v29, 0, sub_1001C62CC, v18, v19, v20);
                                            }

                                            v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2499, v38);
                                          }

                                          v38 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                          goto LABEL_69;
                                        }

                                        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2497, v37);
                                      }
                                    }

                                    v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_65;
                                  }

                                  v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2496, v36);
                                }
                              }

                              v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_61;
                            }

                            v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2495, v35);
                          }

                          v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_57;
                        }

                        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2494, v34);
                      }

                      v34 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_53;
                    }

                    v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2493, v33);
                  }
                }

                v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_49;
              }

              v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2492, v32);
            }

            v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_45;
          }

          v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2491, v31);
        }

        v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_41;
      }

      v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2490, v30);
    }

    v30 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1001DC440(__int16 a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2513, "OI_STATUS _ACI_HRBChangeConnectionBand(OI_HCI_LM_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2514, "OI_STATUS _ACI_HRBChangeConnectionBand(OI_HCI_LM_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65404, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2514, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2513, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DC5B8(char a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2528, "OI_STATUS _ACI_HRBWriteScanEnable(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
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
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2529, "OI_STATUS _ACI_HRBWriteScanEnable(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v11) = a2;
                return sub_100020078(65405, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2529, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2528, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DC714(__int16 a1, __int16 a2, void (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2543, "OI_STATUS _ACI_HRBWritePageScanActivity(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = a1;
        v10 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2544, "OI_STATUS _ACI_HRBWritePageScanActivity(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v14) - v10 > 1)
        {
          if (BYTE6(v14) == 2)
          {
            *(v13 + v10) = a2;
            *(v13 + WORD2(v14) + 1) = HIBYTE(a2);
            WORD2(v14) += 2;
            return sub_100020078(65406, v13, BYTE4(v14), a3, sub_1001C62CC, v7, v8, v9);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2544, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2543, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DC8A8(int a1, _WORD *a2, _BYTE *a3, char *a4, void (*a5)())
{
  LODWORD(v9) = a1;
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v23))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2572, "OI_STATUS _ACI_HRBSetAFHHostChannelClassification(uint8_t, uint16_t *, uint16_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_34;
  }

  v14 = WORD2(v23);
  if (WORD1(v23) <= WORD2(v23))
  {
LABEL_34:
    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_36;
  }

  if (BYTE6(v23) != 2)
  {
    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2572, v21);
  }

  ++WORD2(v23);
  *(v22 + v14) = v9;
  if (v9)
  {
    v9 = v9;
    while (!HIBYTE(v23))
    {
      if (WORD1(v23) - WORD2(v23) <= 1)
      {
        goto LABEL_31;
      }

      if (BYTE6(v23) != 2)
      {
        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_32;
      }

      *(v22 + WORD2(v23)) = *a2;
      v15 = WORD2(v23) + 2;
      WORD2(v23) += 2;
      if (HIBYTE(v23))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2576, "OI_STATUS _ACI_HRBSetAFHHostChannelClassification(uint8_t, uint16_t *, uint16_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_27:
        v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2576, v19);
      }

      if (WORD1(v23) - v15 <= 1)
      {
        goto LABEL_27;
      }

      if (BYTE6(v23) != 2)
      {
        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_28;
      }

      *(v22 + v15) = *a3;
      *(v22 + WORD2(v23) + 1) = a3[1];
      v16 = WORD2(v23) + 2;
      WORD2(v23) += 2;
      if (HIBYTE(v23))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2577, "OI_STATUS _ACI_HRBSetAFHHostChannelClassification(uint8_t, uint16_t *, uint16_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_23:
        v18 = "ByteStream_NumReadBytesAvail(bs) >= (63)";
LABEL_24:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2577, v18);
      }

      if (WORD1(v23) - v16 <= 62)
      {
        goto LABEL_23;
      }

      if (BYTE6(v23) != 2)
      {
        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_24;
      }

      memmove((v22 + v16), a4, 0x3FuLL);
      v17 = BYTE4(v23) + 63;
      WORD2(v23) += 63;
      a4 += 63;
      a3 += 2;
      ++a2;
      if (!--v9)
      {
        return sub_100020078(65408, v22, v17, a5, sub_1001C62CC, v11, v12, v13);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2575, "OI_STATUS _ACI_HRBSetAFHHostChannelClassification(uint8_t, uint16_t *, uint16_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_31:
    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_32:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2575, v20);
  }

  v17 = BYTE4(v23);
  return sub_100020078(65408, v22, v17, a5, sub_1001C62CC, v11, v12, v13);
}

uint64_t sub_1001DCB78(__int16 a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2603, "OI_STATUS _ACI_HRBReadEnhancedTransmitPowerLevel(uint16_t, uint8_t, BT_VSC_HRB_READ_ENHANCED_TX_POWER_LEVEL_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2604, "OI_STATUS _ACI_HRBReadEnhancedTransmitPowerLevel(uint16_t, uint8_t, BT_VSC_HRB_READ_ENHANCED_TX_POWER_LEVEL_CB)");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65400, v14, BYTE4(v15), a3, sub_1001C5D84, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2604, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2603, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DCCF0(__int16 a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2558, "OI_STATUS _ACI_HRBReadAFHChannelMap(uint16_t, BT_VSC_HRB_READ_AFH_CHANNEL_MAP_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(65407, v9, BYTE4(v10), a2, sub_1001C60DC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2558, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DCDE4(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2591, "OI_STATUS _ACI_HRBLimitChannelMap(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65449, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2591, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DCEBC(unsigned int a1, char *a2, char *a3, char *a4, void (*a5)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v27))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2616, "OI_STATUS _ACI_HRBSetBandEdges(uint8_t, uint8_t *, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_32;
  }

  v14 = WORD2(v27);
  if (WORD1(v27) <= WORD2(v27))
  {
LABEL_32:
    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  if (BYTE6(v27) != 2)
  {
    v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2616, v25);
  }

  ++WORD2(v27);
  *(v26 + v14) = a1;
  if (a1)
  {
    v15 = a1;
    while (!HIBYTE(v27))
    {
      v16 = WORD2(v27);
      if (WORD1(v27) <= WORD2(v27))
      {
        goto LABEL_29;
      }

      if (BYTE6(v27) != 2)
      {
        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_30;
      }

      v17 = *a2;
      ++WORD2(v27);
      *(v26 + v16) = v17;
      if (HIBYTE(v27))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2619, "OI_STATUS _ACI_HRBSetBandEdges(uint8_t, uint8_t *, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_25:
        v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_26:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2619, v23);
      }

      v18 = WORD2(v27);
      if (WORD1(v27) <= WORD2(v27))
      {
        goto LABEL_25;
      }

      if (BYTE6(v27) != 2)
      {
        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_26;
      }

      v19 = *a3;
      ++WORD2(v27);
      *(v26 + v18) = v19;
      if (HIBYTE(v27))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2620, "OI_STATUS _ACI_HRBSetBandEdges(uint8_t, uint8_t *, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_21:
        v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2620, v22);
      }

      v20 = WORD2(v27);
      if (WORD1(v27) <= WORD2(v27))
      {
        goto LABEL_21;
      }

      if (BYTE6(v27) != 2)
      {
        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_22;
      }

      v21 = *a4++;
      ++WORD2(v27);
      *(v26 + v20) = v21;
      ++a3;
      ++a2;
      if (!--v15)
      {
        return sub_100020078(65422, v26, BYTE4(v27), a5, sub_1001C62CC, v11, v12, v13);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2618, "OI_STATUS _ACI_HRBSetBandEdges(uint8_t, uint8_t *, uint8_t *, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_29:
    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_30:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2618, v24);
  }

  return sub_100020078(65422, v26, BYTE4(v27), a5, sub_1001C62CC, v11, v12, v13);
}

uint64_t sub_1001DD13C(__int16 a1, __int16 a2, char a3, char a4, char a5, __int16 a6, __int16 a7, __int16 a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, void (*a17)())
{
  v55 = 0;
  v56 = 0;
  result = sub_10001FFD8(&v55);
  if (!result)
  {
    if (HIBYTE(v56))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6367, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v56) - WORD2(v56) > 1)
    {
      if (BYTE6(v56) == 2)
      {
        *(v55 + WORD2(v56)) = a1;
        v29 = WORD2(v56) + 2;
        WORD2(v56) += 2;
        if (HIBYTE(v56))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6368, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v56) - v29 > 1)
        {
          if (BYTE6(v56) == 2)
          {
            *(v55 + v29) = a2;
            *(v55 + WORD2(v56) + 1) = HIBYTE(a2);
            v30 = WORD2(v56);
            v31 = WORD2(v56) + 2;
            WORD2(v56) += 2;
            if (HIBYTE(v56))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6369, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v56) > v31)
            {
              if (BYTE6(v56) == 2)
              {
                WORD2(v56) = v30 + 3;
                *(v55 + v31) = a3;
                if (HIBYTE(v56))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6370, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v32 = WORD2(v56);
                  if (WORD1(v56) > WORD2(v56))
                  {
                    if (BYTE6(v56) == 2)
                    {
                      ++WORD2(v56);
                      *(v55 + v32) = a4;
                      if (HIBYTE(v56))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6371, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v33 = WORD2(v56);
                        if (WORD1(v56) > WORD2(v56))
                        {
                          if (BYTE6(v56) == 2)
                          {
                            ++WORD2(v56);
                            *(v55 + v33) = a5;
                            if (HIBYTE(v56))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6372, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                            }

                            else if (WORD1(v56) - WORD2(v56) > 1)
                            {
                              if (BYTE6(v56) == 2)
                              {
                                *(v55 + WORD2(v56)) = a6;
                                v34 = WORD2(v56) + 2;
                                WORD2(v56) += 2;
                                if (HIBYTE(v56))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6373, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                }

                                else if (WORD1(v56) - v34 > 1)
                                {
                                  if (BYTE6(v56) == 2)
                                  {
                                    *(v55 + v34) = a7;
                                    *(v55 + WORD2(v56) + 1) = HIBYTE(a7);
                                    v35 = WORD2(v56) + 2;
                                    WORD2(v56) += 2;
                                    if (HIBYTE(v56))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6374, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                    }

                                    else if (WORD1(v56) - v35 > 1)
                                    {
                                      if (BYTE6(v56) == 2)
                                      {
                                        *(v55 + v35) = a8;
                                        *(v55 + WORD2(v56) + 1) = HIBYTE(a8);
                                        v36 = WORD2(v56) + 2;
                                        WORD2(v56) += 2;
                                        if (HIBYTE(v56))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6375, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                        }

                                        else if (WORD1(v56) - v36 > 1)
                                        {
                                          if (BYTE6(v56) == 2)
                                          {
                                            *(v55 + v36) = a9;
                                            *(v55 + WORD2(v56) + 1) = a10;
                                            v37 = WORD2(v56) + 2;
                                            WORD2(v56) += 2;
                                            if (HIBYTE(v56))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6376, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                            }

                                            else if (WORD1(v56) - v37 > 1)
                                            {
                                              if (BYTE6(v56) == 2)
                                              {
                                                *(v55 + v37) = a11;
                                                *(v55 + WORD2(v56) + 1) = a12;
                                                v38 = WORD2(v56) + 2;
                                                WORD2(v56) += 2;
                                                if (HIBYTE(v56))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6377, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                }

                                                else if (WORD1(v56) - v38 > 1)
                                                {
                                                  if (BYTE6(v56) == 2)
                                                  {
                                                    *(v55 + v38) = a13;
                                                    *(v55 + WORD2(v56) + 1) = a14;
                                                    v39 = WORD2(v56);
                                                    v40 = WORD2(v56) + 2;
                                                    WORD2(v56) += 2;
                                                    if (HIBYTE(v56))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6378, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                    }

                                                    else if (WORD1(v56) > v40)
                                                    {
                                                      if (BYTE6(v56) == 2)
                                                      {
                                                        WORD2(v56) = v39 + 3;
                                                        *(v55 + v40) = a15;
                                                        if (HIBYTE(v56))
                                                        {
                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6379, "OI_STATUS _ACI_AdvancedSniffMode(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                        }

                                                        else
                                                        {
                                                          v41 = WORD2(v56);
                                                          if (WORD1(v56) > WORD2(v56))
                                                          {
                                                            if (BYTE6(v56) == 2)
                                                            {
                                                              ++WORD2(v56);
                                                              *(v55 + v41) = a16;
                                                              return sub_100020078(65122, v55, BYTE4(v56), a17, sub_1001C62CC, v26, v27, v28);
                                                            }

                                                            v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_94:
                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6379, v54);
                                                          }
                                                        }

                                                        v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                        goto LABEL_94;
                                                      }

                                                      v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_90:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6378, v53);
                                                    }

                                                    v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                    goto LABEL_90;
                                                  }

                                                  v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_86:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6377, v52);
                                                }

                                                v52 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                goto LABEL_86;
                                              }

                                              v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6376, v51);
                                            }

                                            v51 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                            goto LABEL_82;
                                          }

                                          v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6375, v50);
                                        }

                                        v50 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                        goto LABEL_78;
                                      }

                                      v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6374, v49);
                                    }

                                    v49 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                    goto LABEL_74;
                                  }

                                  v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6373, v48);
                                }

                                v48 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                goto LABEL_70;
                              }

                              v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6372, v47);
                            }

                            v47 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                            goto LABEL_66;
                          }

                          v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6371, v46);
                        }
                      }

                      v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_62;
                    }

                    v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6370, v45);
                  }
                }

                v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_58;
              }

              v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6369, v44);
            }

            v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_54;
          }

          v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6368, v43);
        }

        v43 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_50;
      }

      v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6367, v42);
    }

    v42 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_1001DD8D8(__int16 a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6392, "OI_STATUS _ACI_ExitAdvancedSniffMode(uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(65123, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6392, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DD9CC(__int16 a1, __int16 a2, __int16 a3, __int16 a4, char a5, __int16 a6, void (*a7)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (!result)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6405, "OI_STATUS _ACI_AdvancedSniffReconfig(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v30) - WORD2(v30) > 1)
    {
      if (BYTE6(v30) == 2)
      {
        *(v29 + WORD2(v30)) = a1;
        v18 = WORD2(v30) + 2;
        WORD2(v30) += 2;
        if (HIBYTE(v30))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6406, "OI_STATUS _ACI_AdvancedSniffReconfig(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v30) - v18 > 1)
        {
          if (BYTE6(v30) == 2)
          {
            *(v29 + v18) = a2;
            *(v29 + WORD2(v30) + 1) = HIBYTE(a2);
            v19 = WORD2(v30) + 2;
            WORD2(v30) += 2;
            if (HIBYTE(v30))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6407, "OI_STATUS _ACI_AdvancedSniffReconfig(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint16_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v30) - v19 > 1)
            {
              if (BYTE6(v30) == 2)
              {
                *(v29 + v19) = a3;
                *(v29 + WORD2(v30) + 1) = HIBYTE(a3);
                v20 = WORD2(v30) + 2;
                WORD2(v30) += 2;
                if (HIBYTE(v30))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6408, "OI_STATUS _ACI_AdvancedSniffReconfig(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v30) - v20 > 1)
                {
                  if (BYTE6(v30) == 2)
                  {
                    *(v29 + v20) = a4;
                    *(v29 + WORD2(v30) + 1) = HIBYTE(a4);
                    v21 = WORD2(v30);
                    v22 = WORD2(v30) + 2;
                    WORD2(v30) += 2;
                    if (HIBYTE(v30))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6409, "OI_STATUS _ACI_AdvancedSniffReconfig(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint16_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v30) > v22)
                    {
                      if (BYTE6(v30) == 2)
                      {
                        WORD2(v30) = v21 + 3;
                        *(v29 + v22) = a5;
                        if (HIBYTE(v30))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6410, "OI_STATUS _ACI_AdvancedSniffReconfig(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, uint16_t, BT_VSC_COMPLETE_CB)");
                        }

                        else if (WORD1(v30) - WORD2(v30) > 1)
                        {
                          if (BYTE6(v30) == 2)
                          {
                            *(v29 + WORD2(v30)) = a6;
                            WORD2(v30) += 2;
                            return sub_100020078(65124, v29, BYTE4(v30), a7, sub_1001C62CC, v15, v16, v17);
                          }

                          v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6410, v28);
                        }

                        v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_45;
                      }

                      v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6409, v27);
                    }

                    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_41;
                  }

                  v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6408, v26);
                }

                v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_37;
              }

              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6407, v25);
            }

            v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_33;
          }

          v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6406, v24);
        }

        v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_29;
      }

      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6405, v23);
    }

    v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1001DDDB4(__int16 a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6424, "OI_STATUS _ACI_AoSEmptyPacketReport(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6425, "OI_STATUS _ACI_AoSEmptyPacketReport(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65264, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6425, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6424, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DDF2C(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6438, "OI_STATUS _ACI_ControlAoS(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65162, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6438, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DE004(char a1, char a2, char a3, int a4, char a5, void (*a6)())
{
  v28 = 0;
  v29 = 0;
  result = sub_10001FFD8(&v28);
  if (!result)
  {
    if (HIBYTE(v29))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6234, "OI_STATUS _ACI_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v16 = WORD2(v29);
      if (WORD1(v29) > WORD2(v29))
      {
        if (BYTE6(v29) == 2)
        {
          ++WORD2(v29);
          *(v28 + v16) = 2;
          if (HIBYTE(v29))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6235, "OI_STATUS _ACI_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v17 = WORD2(v29);
            if (WORD1(v29) > WORD2(v29))
            {
              if (BYTE6(v29) == 2)
              {
                ++WORD2(v29);
                *(v28 + v17) = a1;
                if (HIBYTE(v29))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6236, "OI_STATUS _ACI_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v18 = WORD2(v29);
                  if (WORD1(v29) > WORD2(v29))
                  {
                    if (BYTE6(v29) == 2)
                    {
                      ++WORD2(v29);
                      *(v28 + v18) = a2;
                      if (HIBYTE(v29))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6237, "OI_STATUS _ACI_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v19 = WORD2(v29);
                        if (WORD1(v29) > WORD2(v29))
                        {
                          if (BYTE6(v29) == 2)
                          {
                            ++WORD2(v29);
                            *(v28 + v19) = a3;
                            if (HIBYTE(v29))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6238, "OI_STATUS _ACI_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                            }

                            else if (WORD1(v29) - WORD2(v29) > 3)
                            {
                              if (BYTE6(v29) == 2)
                              {
                                *(v28 + WORD2(v29)) = a4;
                                *(v28 + WORD2(v29) + 2) = BYTE2(a4);
                                *(v28 + WORD2(v29) + 3) = HIBYTE(a4);
                                v20 = WORD2(v29);
                                v21 = WORD2(v29) + 4;
                                WORD2(v29) += 4;
                                if (HIBYTE(v29))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6239, "OI_STATUS _ACI_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                }

                                else if (WORD1(v29) > v21)
                                {
                                  if (BYTE6(v29) == 2)
                                  {
                                    WORD2(v29) = v20 + 5;
                                    *(v28 + v21) = a5;
                                    return sub_100020078(65062, v28, BYTE4(v29), a6, sub_1001C62CC, v13, v14, v15);
                                  }

                                  v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6239, v27);
                                }

                                v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_45;
                              }

                              v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6238, v26);
                            }

                            v26 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                            goto LABEL_41;
                          }

                          v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6237, v25);
                        }
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_37;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6236, v24);
                  }
                }

                v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_33;
              }

              v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6235, v23);
            }
          }

          v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_29;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6234, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1001DE39C(_WORD *a1, __int16 a2, char a3, void (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4353, "OI_STATUS _ACI_PhyStatsEnable(OI_HCI_CONNECTION_HANDLE, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v19) - WORD2(v19) > 1)
    {
      if (BYTE6(v19) == 2)
      {
        *(v18 + WORD2(v19)) = *a1;
        v12 = WORD2(v19) + 2;
        WORD2(v19) += 2;
        if (HIBYTE(v19))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4354, "OI_STATUS _ACI_PhyStatsEnable(OI_HCI_CONNECTION_HANDLE, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v19) - v12 > 1)
        {
          if (BYTE6(v19) == 2)
          {
            *(v18 + v12) = a2;
            *(v18 + WORD2(v19) + 1) = HIBYTE(a2);
            v13 = WORD2(v19);
            v14 = WORD2(v19) + 2;
            WORD2(v19) += 2;
            if (HIBYTE(v19))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4355, "OI_STATUS _ACI_PhyStatsEnable(OI_HCI_CONNECTION_HANDLE, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v19) > v14)
            {
              if (BYTE6(v19) == 2)
              {
                WORD2(v19) = v13 + 3;
                *(v18 + v14) = a3;
                return sub_100020078(65378, v18, BYTE4(v19), a4, sub_1001C62CC, v9, v10, v11);
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4355, v17);
            }

            v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4354, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4353, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001DE5B0(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4397, "OI_STATUS _ACI_SetMWSRxCoexGainMode(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65450, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4397, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DE688(_WORD *a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4426, "OI_STATUS _ACI_SetBidirectionalMaxPowerMode(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = *a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4427, "OI_STATUS _ACI_SetBidirectionalMaxPowerMode(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(64820, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4427, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4426, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DE804(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4384, "OI_STATUS _ACI_EnableHostWakeReport(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65385, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4384, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001DE8DC(unsigned int a1, uint64_t a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v19))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4694, "OI_STATUS _ACI_Enable2MPHYOnDenylistedDevices(uint8_t, uint16_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_27;
  }

  v10 = WORD2(v19);
  if (WORD1(v19) <= WORD2(v19))
  {
LABEL_27:
    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_29;
  }

  if (BYTE6(v19) != 2)
  {
    v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4694, v17);
  }

  v11 = 0;
  ++WORD2(v19);
  *(v18 + v10) = a1;
  do
  {
    if (v11 >= a1)
    {
      if (HIBYTE(v19))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4699, "OI_STATUS _ACI_Enable2MPHYOnDenylistedDevices(uint8_t, uint16_t *, BT_VSC_COMPLETE_CB)");
LABEL_24:
        v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4699, v16);
      }

      if (WORD1(v19) - WORD2(v19) <= 1)
      {
        goto LABEL_24;
      }

      if (BYTE6(v19) != 2)
      {
        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_25;
      }

      v13 = 0;
      *(v18 + WORD2(v19)) = 0;
    }

    else
    {
      if (HIBYTE(v19))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4697, "OI_STATUS _ACI_Enable2MPHYOnDenylistedDevices(uint8_t, uint16_t *, BT_VSC_COMPLETE_CB)");
LABEL_20:
        v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_21:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4697, v15);
      }

      if (WORD1(v19) - WORD2(v19) <= 1)
      {
        goto LABEL_20;
      }

      if (BYTE6(v19) != 2)
      {
        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_21;
      }

      v12 = a2 + 2 * v11;
      *(v18 + WORD2(v19)) = *v12;
      v13 = *(v12 + 1);
    }

    *(v18 + WORD2(v19) + 1) = v13;
    v14 = BYTE4(v19) + 2;
    WORD2(v19) += 2;
    ++v11;
  }

  while (v11 != 4);
  return sub_100020078(64896, v18, v14, a3, sub_1001C62CC, v7, v8, v9);
}

uint64_t sub_1001DEAF0(char a1, _WORD *a2, _BYTE *a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7, void (*a8)())
{
  v33 = 0;
  v34 = 0;
  result = sub_10001FFD8(&v33);
  if (!result)
  {
    if (HIBYTE(v34))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6302, "OI_STATUS _ACI_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v20 = WORD2(v34);
      if (WORD1(v34) > WORD2(v34))
      {
        if (BYTE6(v34) == 2)
        {
          ++WORD2(v34);
          *(v33 + v20) = a1;
          if (HIBYTE(v34))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6303, "OI_STATUS _ACI_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v34) - WORD2(v34) > 1)
          {
            if (BYTE6(v34) == 2)
            {
              *(v33 + WORD2(v34)) = *a2;
              v21 = WORD2(v34) + 2;
              WORD2(v34) += 2;
              if (HIBYTE(v34))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6304, "OI_STATUS _ACI_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v34) - v21 > 1)
              {
                if (BYTE6(v34) == 2)
                {
                  *(v33 + v21) = *a3;
                  *(v33 + WORD2(v34) + 1) = a3[1];
                  v22 = WORD2(v34) + 2;
                  WORD2(v34) += 2;
                  if (HIBYTE(v34))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6305, "OI_STATUS _ACI_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v34) - v22 > 1)
                  {
                    if (BYTE6(v34) == 2)
                    {
                      *(v33 + v22) = a4;
                      *(v33 + WORD2(v34) + 1) = HIBYTE(a4);
                      v23 = WORD2(v34) + 2;
                      WORD2(v34) += 2;
                      if (HIBYTE(v34))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6306, "OI_STATUS _ACI_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v34) - v23 > 1)
                      {
                        if (BYTE6(v34) == 2)
                        {
                          *(v33 + v23) = a5;
                          *(v33 + WORD2(v34) + 1) = HIBYTE(a5);
                          v24 = WORD2(v34) + 2;
                          WORD2(v34) += 2;
                          if (HIBYTE(v34))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6307, "OI_STATUS _ACI_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v34) - v24 > 1)
                          {
                            if (BYTE6(v34) == 2)
                            {
                              *(v33 + v24) = a6;
                              *(v33 + WORD2(v34) + 1) = HIBYTE(a6);
                              v25 = WORD2(v34) + 2;
                              WORD2(v34) += 2;
                              if (HIBYTE(v34))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6308, "OI_STATUS _ACI_EnableWirelessSplitter(_Bool, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v34) - v25 > 1)
                              {
                                if (BYTE6(v34) == 2)
                                {
                                  *(v33 + v25) = a7;
                                  *(v33 + WORD2(v34) + 1) = HIBYTE(a7);
                                  WORD2(v34) += 2;
                                  return sub_100020078(65067, v33, BYTE4(v34), a8, sub_1001C62CC, v17, v18, v19);
                                }

                                v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6308, v32);
                              }

                              v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_52;
                            }

                            v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6307, v31);
                          }

                          v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_48;
                        }

                        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6306, v30);
                      }

                      v30 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_44;
                    }

                    v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6305, v29);
                  }

                  v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_40;
                }

                v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6304, v28);
              }

              v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_36;
            }

            v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6303, v27);
          }

          v27 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_32;
        }

        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6302, v26);
      }
    }

    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1001DEF78(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void (*a9)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4736, "OI_STATUS _ACI_AdvBufConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
    }

    else
    {
      v15 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v15) = 1;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4737, "OI_STATUS _ACI_AdvBufConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
          }

          else if (WORD1(v22) - WORD2(v22) > 1)
          {
            if (BYTE6(v22) == 2)
            {
              *(v21 + WORD2(v22)) = a1;
              v16 = WORD2(v22);
              v17 = WORD2(v22) + 2;
              WORD2(v22) += 2;
              if (HIBYTE(v22))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4738, "OI_STATUS _ACI_AdvBufConfig(uint16_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_ADVBUF_CONFIG_CB)");
              }

              else if (WORD1(v22) > v17)
              {
                if (BYTE6(v22) == 2)
                {
                  WORD2(v22) = v16 + 3;
                  *(v21 + v17) = a8;
                  return sub_100020078(65014, v21, BYTE4(v22), a9, sub_1001EEB88, v12, v13, v14);
                }

                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4738, v20);
              }

              v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4737, v19);
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_20;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4736, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001DF160(__int16 a1, void (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4776, "OI_STATUS _ACI_AdvBufReadCommand(uint16_t, BT_VSC_ADVBUF_READ_CB)");
    }

    else
    {
      v8 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v8) = 2;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4777, "OI_STATUS _ACI_AdvBufReadCommand(uint16_t, BT_VSC_ADVBUF_READ_CB)");
          }

          else if (WORD1(v12) - WORD2(v12) > 1)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = a1;
              WORD2(v12) += 2;
              return sub_100020078(65014, v11, BYTE4(v12), a2, sub_1001EECFC, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4777, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4776, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001DF2D0(__int16 a1, char a2, char a3, __int16 a4, char a5, char a6, char a7, void (*a8)())
{
  v36 = 0;
  v37 = 0;
  result = sub_10001FFD8(&v36);
  if (!result)
  {
    if (HIBYTE(v37))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4809, "OI_STATUS _ACI_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
    }

    else
    {
      v20 = WORD2(v37);
      if (WORD1(v37) > WORD2(v37))
      {
        if (BYTE6(v37) == 2)
        {
          ++WORD2(v37);
          *(v36 + v20) = 3;
          if (HIBYTE(v37))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4810, "OI_STATUS _ACI_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
          }

          else if (WORD1(v37) - WORD2(v37) > 1)
          {
            if (BYTE6(v37) == 2)
            {
              *(v36 + WORD2(v37)) = a1;
              v21 = WORD2(v37);
              v22 = WORD2(v37) + 2;
              WORD2(v37) += 2;
              if (HIBYTE(v37))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4811, "OI_STATUS _ACI_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
              }

              else if (WORD1(v37) > v22)
              {
                if (BYTE6(v37) == 2)
                {
                  WORD2(v37) = v21 + 3;
                  *(v36 + v22) = a2;
                  if (HIBYTE(v37))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4812, "OI_STATUS _ACI_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                  }

                  else
                  {
                    v23 = WORD2(v37);
                    if (WORD1(v37) > WORD2(v37))
                    {
                      if (BYTE6(v37) == 2)
                      {
                        ++WORD2(v37);
                        *(v36 + v23) = a3;
                        if (HIBYTE(v37))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4813, "OI_STATUS _ACI_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                        }

                        else if (WORD1(v37) - WORD2(v37) > 1)
                        {
                          if (BYTE6(v37) == 2)
                          {
                            *(v36 + WORD2(v37)) = a4;
                            v24 = WORD2(v37);
                            v25 = WORD2(v37) + 2;
                            WORD2(v37) += 2;
                            if (HIBYTE(v37))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4814, "OI_STATUS _ACI_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                            }

                            else if (WORD1(v37) > v25)
                            {
                              if (BYTE6(v37) == 2)
                              {
                                WORD2(v37) = v24 + 3;
                                *(v36 + v25) = a5;
                                if (HIBYTE(v37))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4815, "OI_STATUS _ACI_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                                }

                                else
                                {
                                  v26 = WORD2(v37);
                                  if (WORD1(v37) > WORD2(v37))
                                  {
                                    if (BYTE6(v37) == 2)
                                    {
                                      ++WORD2(v37);
                                      *(v36 + v26) = a6;
                                      if (HIBYTE(v37))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4816, "OI_STATUS _ACI_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                                      }

                                      else
                                      {
                                        v27 = WORD2(v37);
                                        if (WORD1(v37) > WORD2(v37))
                                        {
                                          if (BYTE6(v37) == 2)
                                          {
                                            ++WORD2(v37);
                                            *(v36 + v27) = a7;
                                            return sub_100020078(65014, v36, BYTE4(v37), a8, sub_1001EEF20, v17, v18, v19);
                                          }

                                          v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4816, v35);
                                        }
                                      }

                                      v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_59;
                                    }

                                    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4815, v34);
                                  }
                                }

                                v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_55;
                              }

                              v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4814, v33);
                            }

                            v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_51;
                          }

                          v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4813, v32);
                        }

                        v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_47;
                      }

                      v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4812, v31);
                    }
                  }

                  v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_43;
                }

                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4811, v30);
              }

              v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_39;
            }

            v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4810, v29);
          }

          v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_35;
        }

        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4809, v28);
      }
    }

    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1001DF75C(__int16 a1, __int16 a2, char a3, __int16 a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9, void (*a10)())
{
  v46 = 0;
  v47 = 0;
  result = sub_10001FFD8(&v46);
  if (!result)
  {
    if (HIBYTE(v47))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4851, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    }

    else
    {
      v21 = WORD2(v47);
      if (WORD1(v47) > WORD2(v47))
      {
        if (BYTE6(v47) == 2)
        {
          ++WORD2(v47);
          *(v46 + v21) = 10;
          if (HIBYTE(v47))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4852, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
          }

          else if (WORD1(v47) - WORD2(v47) > 1)
          {
            if (BYTE6(v47) == 2)
            {
              *(v46 + WORD2(v47)) = a1;
              v22 = WORD2(v47) + 2;
              WORD2(v47) += 2;
              if (HIBYTE(v47))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4853, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
              }

              else if (WORD1(v47) - v22 > 1)
              {
                if (BYTE6(v47) == 2)
                {
                  *(v46 + v22) = a2;
                  *(v46 + WORD2(v47) + 1) = HIBYTE(a2);
                  v23 = WORD2(v47);
                  v24 = WORD2(v47) + 2;
                  WORD2(v47) += 2;
                  if (HIBYTE(v47))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4854, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
                  }

                  else if (WORD1(v47) > v24)
                  {
                    if (BYTE6(v47) == 2)
                    {
                      WORD2(v47) = v23 + 3;
                      *(v46 + v24) = a3;
                      if (HIBYTE(v47))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4855, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
                      }

                      else if (WORD1(v47) - WORD2(v47) > 1)
                      {
                        if (BYTE6(v47) == 2)
                        {
                          *(v46 + WORD2(v47)) = a4;
                          v25 = WORD2(v47);
                          v26 = WORD2(v47) + 2;
                          WORD2(v47) += 2;
                          if (HIBYTE(v47))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4856, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
                          }

                          else if (WORD1(v47) > v26)
                          {
                            if (BYTE6(v47) == 2)
                            {
                              WORD2(v47) = v25 + 3;
                              *(v46 + v26) = a5;
                              if (HIBYTE(v47))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4857, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
                              }

                              else
                              {
                                v27 = WORD2(v47);
                                if (WORD1(v47) > WORD2(v47))
                                {
                                  if (BYTE6(v47) == 2)
                                  {
                                    ++WORD2(v47);
                                    *(v46 + v27) = a6;
                                    if (HIBYTE(v47))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4858, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
                                    }

                                    else
                                    {
                                      v28 = WORD2(v47);
                                      if (WORD1(v47) > WORD2(v47))
                                      {
                                        if (BYTE6(v47) == 2)
                                        {
                                          ++WORD2(v47);
                                          *(v46 + v28) = a7;
                                          v29 = -16;
                                          do
                                          {
                                            if (HIBYTE(v47))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4860, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
LABEL_45:
                                              v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_46:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4860, v34);
                                            }

                                            v30 = WORD2(v47);
                                            if (WORD1(v47) <= WORD2(v47))
                                            {
                                              goto LABEL_45;
                                            }

                                            if (BYTE6(v47) != 2)
                                            {
                                              v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                              goto LABEL_46;
                                            }

                                            ++WORD2(v47);
                                            *(v46 + v30) = 0;
                                          }

                                          while (!__CFADD__(v29++, 1));
                                          if (HIBYTE(v47))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4862, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
                                          }

                                          else
                                          {
                                            v32 = WORD2(v47);
                                            if (WORD1(v47) > WORD2(v47))
                                            {
                                              if (BYTE6(v47) == 2)
                                              {
                                                ++WORD2(v47);
                                                *(v46 + v32) = 0;
                                                if (HIBYTE(v47))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4863, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
                                                }

                                                else if (WORD1(v47) - WORD2(v47) > 1)
                                                {
                                                  if (BYTE6(v47) == 2)
                                                  {
                                                    *(v46 + WORD2(v47)) = 0;
                                                    v33 = WORD2(v47) + 2;
                                                    WORD2(v47) += 2;
                                                    if (HIBYTE(v47))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4864, "OI_STATUS _ACI_MatchTableConfigV2(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
                                                    }

                                                    else if (WORD1(v47) - v33 > 1)
                                                    {
                                                      if (BYTE6(v47) == 2)
                                                      {
                                                        *(v46 + v33) = 0;
                                                        *(v46 + WORD2(v47) + 1) = 0;
                                                        WORD2(v47) += 2;
                                                        return sub_100020078(65014, v46, BYTE4(v47), a10, sub_1001EF094, v18, v19, v20);
                                                      }

                                                      v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_90:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4864, v45);
                                                    }

                                                    v45 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                    goto LABEL_90;
                                                  }

                                                  v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_86:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4863, v44);
                                                }

                                                v44 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                goto LABEL_86;
                                              }

                                              v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4862, v43);
                                            }
                                          }

                                          v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_82;
                                        }

                                        v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4858, v42);
                                      }
                                    }

                                    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_78;
                                  }

                                  v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4857, v41);
                                }
                              }

                              v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_74;
                            }

                            v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4856, v40);
                          }

                          v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_70;
                        }

                        v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4855, v39);
                      }

                      v39 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_66;
                    }

                    v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4854, v38);
                  }

                  v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_62;
                }

                v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4853, v37);
              }

              v37 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_58;
            }

            v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4852, v36);
          }

          v36 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_54;
        }

        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4851, v35);
      }
    }

    v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_50;
  }

  return result;
}

uint64_t sub_1001DFE1C(__int16 a1, __int16 a2, char a3, __int16 a4, char a5, char a6, char a7, char a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, void (*a15)())
{
  v70 = 0;
  v71 = 0;
  result = sub_10001FFD8(&v70);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4904, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_102;
  }

  v27 = WORD2(v71);
  if (WORD1(v71) <= WORD2(v71))
  {
LABEL_102:
    v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_104;
  }

  if (BYTE6(v71) != 2)
  {
    v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_104:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4904, v59);
  }

  ++WORD2(v71);
  *(v70 + v27) = 10;
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4905, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_106;
  }

  if (WORD1(v71) - WORD2(v71) <= 1)
  {
LABEL_106:
    v60 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_108;
  }

  if (BYTE6(v71) != 2)
  {
    v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_108:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4905, v60);
  }

  *(v70 + WORD2(v71)) = a1;
  v28 = WORD2(v71) + 2;
  WORD2(v71) += 2;
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4906, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_110;
  }

  if (WORD1(v71) - v28 <= 1)
  {
LABEL_110:
    v61 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_112;
  }

  if (BYTE6(v71) != 2)
  {
    v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_112:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4906, v61);
  }

  *(v70 + v28) = a2;
  *(v70 + WORD2(v71) + 1) = HIBYTE(a2);
  v29 = WORD2(v71);
  v30 = WORD2(v71) + 2;
  WORD2(v71) += 2;
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4907, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_114;
  }

  if (WORD1(v71) <= v30)
  {
LABEL_114:
    v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_116;
  }

  if (BYTE6(v71) != 2)
  {
    v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_116:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4907, v62);
  }

  WORD2(v71) = v29 + 3;
  *(v70 + v30) = a3;
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4908, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_118;
  }

  if (WORD1(v71) - WORD2(v71) <= 1)
  {
LABEL_118:
    v63 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_120;
  }

  if (BYTE6(v71) != 2)
  {
    v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_120:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4908, v63);
  }

  *(v70 + WORD2(v71)) = a4;
  v31 = WORD2(v71);
  v32 = WORD2(v71) + 2;
  WORD2(v71) += 2;
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4909, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_122;
  }

  if (WORD1(v71) <= v32)
  {
LABEL_122:
    v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_124;
  }

  if (BYTE6(v71) != 2)
  {
    v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_124:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4909, v64);
  }

  WORD2(v71) = v31 + 3;
  *(v70 + v32) = a5;
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4910, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_126;
  }

  v33 = WORD2(v71);
  if (WORD1(v71) <= WORD2(v71))
  {
LABEL_126:
    v65 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_128;
  }

  if (BYTE6(v71) != 2)
  {
    v65 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_128:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4910, v65);
  }

  ++WORD2(v71);
  *(v70 + v33) = a6;
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4911, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_130;
  }

  v34 = WORD2(v71);
  if (WORD1(v71) <= WORD2(v71))
  {
LABEL_130:
    v66 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_132;
  }

  if (BYTE6(v71) != 2)
  {
    v66 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_132:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4911, v66);
  }

  ++WORD2(v71);
  *(v70 + v34) = a7;
  if (a10)
  {
    v35 = 15;
    while (!HIBYTE(v71))
    {
      v36 = WORD2(v71);
      if (WORD1(v71) <= WORD2(v71))
      {
        goto LABEL_79;
      }

      if (BYTE6(v71) != 2)
      {
        v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_80;
      }

      v37 = *(a10 + v35);
      ++WORD2(v71);
      *(v70 + v36) = v37;
      if (--v35 == -1)
      {
        goto LABEL_39;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4919, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
LABEL_79:
    v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_80:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4919, v53);
  }

  v38 = -16;
  do
  {
    if (HIBYTE(v71))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4914, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
LABEL_91:
      v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_92:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4914, v56);
    }

    v39 = WORD2(v71);
    if (WORD1(v71) <= WORD2(v71))
    {
      goto LABEL_91;
    }

    if (BYTE6(v71) != 2)
    {
      v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_92;
    }

    ++WORD2(v71);
    *(v70 + v39) = 0;
  }

  while (!__CFADD__(v38++, 1));
LABEL_39:
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4922, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_134;
  }

  v41 = WORD2(v71);
  if (WORD1(v71) <= WORD2(v71))
  {
LABEL_134:
    v67 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_136;
  }

  if (BYTE6(v71) != 2)
  {
    v67 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_136:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4922, v67);
  }

  ++WORD2(v71);
  *(v70 + v41) = a8;
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4923, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_138;
  }

  if (WORD1(v71) - WORD2(v71) <= 1)
  {
LABEL_138:
    v68 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_140;
  }

  if (BYTE6(v71) != 2)
  {
    v68 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_140:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4923, v68);
  }

  *(v70 + WORD2(v71)) = a9;
  v42 = WORD2(v71) + 2;
  WORD2(v71) += 2;
  if (HIBYTE(v71))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4924, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
    goto LABEL_142;
  }

  if (WORD1(v71) - v42 <= 1)
  {
LABEL_142:
    v69 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_144;
  }

  if (BYTE6(v71) != 2)
  {
    v69 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_144:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4924, v69);
  }

  v43 = a14;
  *(v70 + v42) = a14;
  *(v70 + WORD2(v71) + 1) = 0;
  WORD2(v71) += 2;
  if (a12)
  {
    if (a14)
    {
      v44 = a14;
      while (!HIBYTE(v71))
      {
        v45 = WORD2(v71);
        if (WORD1(v71) <= WORD2(v71))
        {
          goto LABEL_83;
        }

        if (BYTE6(v71) != 2)
        {
          v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_84;
        }

        v46 = *(a12 - 1 + v44--);
        ++WORD2(v71);
        *(v70 + v45) = v46;
        if ((v44 + 1) <= 1)
        {
          goto LABEL_62;
        }
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4932, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
LABEL_83:
      v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_84:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4932, v54);
    }
  }

  else if (a14)
  {
    v47 = a14 + 1;
    while (!HIBYTE(v71))
    {
      v48 = WORD2(v71);
      if (WORD1(v71) <= WORD2(v71))
      {
        goto LABEL_95;
      }

      if (BYTE6(v71) != 2)
      {
        v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_96;
      }

      ++WORD2(v71);
      *(v70 + v48) = 0;
      if (--v47 <= 1)
      {
        goto LABEL_62;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4927, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
LABEL_95:
    v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_96:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4927, v57);
  }

LABEL_62:
  if (a13)
  {
    if (a14)
    {
      while (!HIBYTE(v71))
      {
        v49 = WORD2(v71);
        if (WORD1(v71) <= WORD2(v71))
        {
          goto LABEL_87;
        }

        if (BYTE6(v71) != 2)
        {
          v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_88;
        }

        v50 = *(a13 - 1 + v43--);
        ++WORD2(v71);
        *(v70 + v49) = v50;
        if ((v43 + 1) <= 1)
        {
          return sub_100020078(65014, v70, BYTE4(v71), a15, sub_1001EF208, v24, v25, v26);
        }
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4942, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
LABEL_87:
      v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_88:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4942, v55);
    }
  }

  else if (a14)
  {
    v51 = a14 + 1;
    while (!HIBYTE(v71))
    {
      v52 = WORD2(v71);
      if (WORD1(v71) <= WORD2(v71))
      {
        goto LABEL_99;
      }

      if (BYTE6(v71) != 2)
      {
        v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_100;
      }

      ++WORD2(v71);
      *(v70 + v52) = 0;
      if (--v51 <= 1)
      {
        return sub_100020078(65014, v70, BYTE4(v71), a15, sub_1001EF208, v24, v25, v26);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4937, "OI_STATUS _ACI_MatchTableConfigV3(uint16_t, uint16_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, int8_t, uint16_t, uint8_t *, uint8_t, uint8_t *, uint8_t *, uint8_t, BT_VSC_MATCHTABLE_CONFIG_V2_CB)");
LABEL_99:
    v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_100:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4937, v58);
  }

  return sub_100020078(65014, v70, BYTE4(v71), a15, sub_1001EF208, v24, v25, v26);
}

uint64_t sub_1001E07E0(__int16 a1, char a2, char a3, void (*a4)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5095, "OI_STATUS _ACI_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
    }

    else
    {
      v12 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v12) = 7;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5096, "OI_STATUS _ACI_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
          }

          else if (WORD1(v21) - WORD2(v21) > 1)
          {
            if (BYTE6(v21) == 2)
            {
              *(v20 + WORD2(v21)) = a1;
              v13 = WORD2(v21);
              v14 = WORD2(v21) + 2;
              WORD2(v21) += 2;
              if (HIBYTE(v21))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5097, "OI_STATUS _ACI_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
              }

              else if (WORD1(v21) > v14)
              {
                if (BYTE6(v21) == 2)
                {
                  WORD2(v21) = v13 + 3;
                  *(v20 + v14) = a2;
                  if (HIBYTE(v21))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5098, "OI_STATUS _ACI_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
                  }

                  else
                  {
                    v15 = WORD2(v21);
                    if (WORD1(v21) > WORD2(v21))
                    {
                      if (BYTE6(v21) == 2)
                      {
                        ++WORD2(v21);
                        *(v20 + v15) = a3;
                        return sub_100020078(65014, v20, BYTE4(v21), a4, sub_1001EF37C, v9, v10, v11);
                      }

                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5098, v19);
                    }
                  }

                  v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5097, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_27;
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5096, v17);
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_23;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5095, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001E0A50(__int16 a1, char a2, char a3, char a4, void (*a5)())
{
  v23 = 0;
  v24 = 0;
  result = sub_10001FFD8(&v23);
  if (!result)
  {
    if (HIBYTE(v24))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5493, "OI_STATUS _ACI_AdvBufRSSIBinsThreshold(uint16_t, int8_t, int8_t, int8_t, BT_VSC_ADVBUF_RSSI_BINS_THRESHOLD_CB)");
    }

    else
    {
      v14 = WORD2(v24);
      if (WORD1(v24) > WORD2(v24))
      {
        if (BYTE6(v24) == 2)
        {
          ++WORD2(v24);
          *(v23 + v14) = 9;
          if (HIBYTE(v24))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5494, "OI_STATUS _ACI_AdvBufRSSIBinsThreshold(uint16_t, int8_t, int8_t, int8_t, BT_VSC_ADVBUF_RSSI_BINS_THRESHOLD_CB)");
          }

          else if (WORD1(v24) - WORD2(v24) > 1)
          {
            if (BYTE6(v24) == 2)
            {
              *(v23 + WORD2(v24)) = a1;
              v15 = WORD2(v24) + 2;
              WORD2(v24) += 2;
              if (HIBYTE(v24))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5495, "OI_STATUS _ACI_AdvBufRSSIBinsThreshold(uint16_t, int8_t, int8_t, int8_t, BT_VSC_ADVBUF_RSSI_BINS_THRESHOLD_CB)");
              }

              else if (WORD1(v24) > v15)
              {
                if (BYTE6(v24) == 2)
                {
                  *(v23 + v15) = a2;
                  v16 = ++WORD2(v24);
                  if (HIBYTE(v24))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5496, "OI_STATUS _ACI_AdvBufRSSIBinsThreshold(uint16_t, int8_t, int8_t, int8_t, BT_VSC_ADVBUF_RSSI_BINS_THRESHOLD_CB)");
                  }

                  else if (WORD1(v24) > v16)
                  {
                    if (BYTE6(v24) == 2)
                    {
                      *(v23 + v16) = a3;
                      v17 = ++WORD2(v24);
                      if (HIBYTE(v24))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5497, "OI_STATUS _ACI_AdvBufRSSIBinsThreshold(uint16_t, int8_t, int8_t, int8_t, BT_VSC_ADVBUF_RSSI_BINS_THRESHOLD_CB)");
                      }

                      else if (WORD1(v24) > v17)
                      {
                        if (BYTE6(v24) == 2)
                        {
                          *(v23 + v17) = a4;
                          ++WORD2(v24);
                          return sub_100020078(65014, v23, BYTE4(v24), a5, sub_1001EF4F0, v11, v12, v13);
                        }

                        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5497, v22);
                      }

                      v22 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                      goto LABEL_38;
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5496, v21);
                  }

                  v21 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                  goto LABEL_34;
                }

                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5495, v20);
              }

              v20 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
              goto LABEL_30;
            }

            v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5494, v19);
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5493, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001E0D50(__int16 a1, char a2, char a3, uint64_t a4, char a5, __int16 a6, char a7, char a8, char a9, char a10, unsigned __int8 a11, const void *a12, const void *a13, void (*a14)())
{
  if (a11)
  {
    if (!a12 || a13 == 0)
    {
      return 101;
    }
  }

  v57 = 0;
  v58 = 0;
  result = sub_10001FFD8(&v57);
  if (!result)
  {
    if (HIBYTE(v58))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5568, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
    }

    else
    {
      v24 = WORD2(v58);
      if (WORD1(v58) > WORD2(v58))
      {
        if (BYTE6(v58) == 2)
        {
          ++WORD2(v58);
          *(v57 + v24) = 12;
          if (HIBYTE(v58))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5569, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
          }

          else
          {
            v25 = WORD2(v58);
            if (WORD1(v58) > WORD2(v58))
            {
              if (BYTE6(v58) == 2)
              {
                ++WORD2(v58);
                *(v57 + v25) = a2;
                if (HIBYTE(v58))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5570, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                }

                else if (WORD1(v58) - WORD2(v58) > 1)
                {
                  if (BYTE6(v58) == 2)
                  {
                    *(v57 + WORD2(v58)) = a1;
                    v26 = WORD2(v58);
                    v27 = WORD2(v58) + 2;
                    WORD2(v58) += 2;
                    if (HIBYTE(v58))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5571, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                    }

                    else if (WORD1(v58) > v27)
                    {
                      if (BYTE6(v58) == 2)
                      {
                        WORD2(v58) = v26 + 3;
                        *(v57 + v27) = a3;
                        if (HIBYTE(v58))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5572, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                        }

                        else if (WORD1(v58) - WORD2(v58) > 5)
                        {
                          if (BYTE6(v58) == 2)
                          {
                            sub_1000075EC((v57 + WORD2(v58)), a4, 6uLL);
                            v31 = WORD2(v58);
                            v32 = WORD2(v58) + 6;
                            WORD2(v58) += 6;
                            if (HIBYTE(v58))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5573, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                            }

                            else if (WORD1(v58) > v32)
                            {
                              if (BYTE6(v58) == 2)
                              {
                                WORD2(v58) = v31 + 7;
                                *(v57 + v32) = a5;
                                if (HIBYTE(v58))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5574, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                }

                                else if (WORD1(v58) - WORD2(v58) > 1)
                                {
                                  if (BYTE6(v58) == 2)
                                  {
                                    *(v57 + WORD2(v58)) = a6;
                                    v33 = WORD2(v58);
                                    v34 = WORD2(v58) + 2;
                                    WORD2(v58) += 2;
                                    if (HIBYTE(v58))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5575, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                    }

                                    else if (WORD1(v58) > v34)
                                    {
                                      if (BYTE6(v58) == 2)
                                      {
                                        WORD2(v58) = v33 + 3;
                                        *(v57 + v34) = a7;
                                        if (HIBYTE(v58))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5576, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                        }

                                        else
                                        {
                                          v35 = WORD2(v58);
                                          if (WORD1(v58) > WORD2(v58))
                                          {
                                            if (BYTE6(v58) == 2)
                                            {
                                              ++WORD2(v58);
                                              *(v57 + v35) = a8;
                                              if (HIBYTE(v58))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5577, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                              }

                                              else if (WORD1(v58) > WORD2(v58))
                                              {
                                                if (BYTE6(v58) == 2)
                                                {
                                                  *(v57 + WORD2(v58)) = a9;
                                                  v36 = ++WORD2(v58);
                                                  if (HIBYTE(v58))
                                                  {
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5578, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                                  }

                                                  else if (WORD1(v58) > v36)
                                                  {
                                                    if (BYTE6(v58) == 2)
                                                    {
                                                      *(v57 + v36) = a10;
                                                      v37 = ++WORD2(v58);
                                                      if (HIBYTE(v58))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5579, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                                      }

                                                      else if (WORD1(v58) - v37 > 1)
                                                      {
                                                        if (BYTE6(v58) == 2)
                                                        {
                                                          *(v57 + v37) = a11;
                                                          *(v57 + WORD2(v58) + 1) = 0;
                                                          v38 = WORD2(v58) + 2;
                                                          WORD2(v58) += 2;
                                                          if (a11)
                                                          {
                                                            v39 = v57;
                                                            if (HIBYTE(v58))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5581, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                                              v40 = 0;
                                                            }

                                                            else
                                                            {
                                                              v40 = WORD1(v58) - v38;
                                                            }

                                                            if (v40 < a11)
                                                            {
                                                              v55 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                                            }

                                                            else
                                                            {
                                                              if (BYTE6(v58) == 2)
                                                              {
                                                                memmove((v39 + v38), a12, a11);
                                                                v38 = WORD2(v58) + a11;
                                                                WORD2(v58) = v38;
                                                                v41 = v57;
                                                                if (HIBYTE(v58))
                                                                {
                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5582, "OI_STATUS _ACI_AdvBufExtFilterConfig(uint16_t, uint8_t, uint8_t, OI_BD_ADDR *, uint8_t, uint16_t, uint8_t, uint8_t, int8_t, int8_t, uint8_t, uint8_t *, uint8_t *, BT_VSC_ADVBUF_EXT_FILTER_CONFIG_CB)");
                                                                  v42 = 0;
                                                                }

                                                                else
                                                                {
                                                                  v42 = WORD1(v58) - v38;
                                                                }

                                                                if (v42 < a11)
                                                                {
                                                                  v56 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                                                }

                                                                else
                                                                {
                                                                  if (BYTE6(v58) == 2)
                                                                  {
                                                                    memmove((v41 + v38), a13, a11);
                                                                    LOBYTE(v38) = BYTE4(v58) + a11;
                                                                    WORD2(v58) += a11;
                                                                    return sub_100020078(65014, v57, v38, a14, sub_1001EF64C, v28, v29, v30);
                                                                  }

                                                                  v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                                }

                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5582, v56);
                                                              }

                                                              v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                            }

                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5581, v55);
                                                          }

                                                          return sub_100020078(65014, v57, v38, a14, sub_1001EF64C, v28, v29, v30);
                                                        }

                                                        v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_106:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5579, v54);
                                                      }

                                                      v54 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                      goto LABEL_106;
                                                    }

                                                    v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_102:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5578, v53);
                                                  }

                                                  v53 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                                  goto LABEL_102;
                                                }

                                                v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_98:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5577, v52);
                                              }

                                              v52 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                              goto LABEL_98;
                                            }

                                            v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_94:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5576, v51);
                                          }
                                        }

                                        v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_94;
                                      }

                                      v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_90:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5575, v50);
                                    }

                                    v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_90;
                                  }

                                  v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_86:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5574, v49);
                                }

                                v49 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                goto LABEL_86;
                              }

                              v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5573, v48);
                            }

                            v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_82;
                          }

                          v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5572, v47);
                        }

                        v47 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                        goto LABEL_78;
                      }

                      v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5571, v46);
                    }

                    v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_74;
                  }

                  v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5570, v45);
                }

                v45 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_70;
              }

              v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5569, v44);
            }
          }

          v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_66;
        }

        v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5568, v43);
      }
    }

    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_62;
  }

  return result;
}

uint64_t sub_1001E1548(__int16 a1, __int16 a2, void (*a3)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5528, "OI_STATUS _ACI_AdvBufConfigTimeSlice(uint16_t, uint16_t, BT_VSC_ADVBUF_CFG_TIME_SLICE_CB)");
    }

    else
    {
      v10 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v10) = 8;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5529, "OI_STATUS _ACI_AdvBufConfigTimeSlice(uint16_t, uint16_t, BT_VSC_ADVBUF_CFG_TIME_SLICE_CB)");
          }

          else if (WORD1(v16) - WORD2(v16) > 1)
          {
            if (BYTE6(v16) == 2)
            {
              *(v15 + WORD2(v16)) = a1;
              v11 = WORD2(v16) + 2;
              WORD2(v16) += 2;
              if (HIBYTE(v16))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5530, "OI_STATUS _ACI_AdvBufConfigTimeSlice(uint16_t, uint16_t, BT_VSC_ADVBUF_CFG_TIME_SLICE_CB)");
              }

              else if (WORD1(v16) - v11 > 1)
              {
                if (BYTE6(v16) == 2)
                {
                  *(v15 + v11) = a2;
                  *(v15 + WORD2(v16) + 1) = HIBYTE(a2);
                  WORD2(v16) += 2;
                  return sub_100020078(65014, v15, BYTE4(v16), a3, sub_1001EF820, v7, v8, v9);
                }

                v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5530, v14);
              }

              v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_24;
            }

            v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5529, v13);
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5528, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001E1758(__int16 a1, __int16 a2, __int16 a3, _BYTE *a4, void (*a5)())
{
  v45 = 0;
  v46 = 0;
  result = sub_10001FFD8(&v45);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v46))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4976, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_69;
  }

  v14 = WORD2(v46);
  if (WORD1(v46) <= WORD2(v46))
  {
LABEL_69:
    v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_71;
  }

  if (BYTE6(v46) != 2)
  {
    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_71:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4976, v41);
  }

  ++WORD2(v46);
  *(v45 + v14) = 4;
  if (HIBYTE(v46))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4977, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_73;
  }

  if (WORD1(v46) - WORD2(v46) <= 1)
  {
LABEL_73:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_75;
  }

  if (BYTE6(v46) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_75:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4977, v42);
  }

  *(v45 + WORD2(v46)) = a1;
  v15 = WORD2(v46);
  v16 = WORD2(v46) + 2;
  WORD2(v46) += 2;
  if (HIBYTE(v46))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4978, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_77;
  }

  if (WORD1(v46) <= v16)
  {
LABEL_77:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_79;
  }

  if (BYTE6(v46) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_79:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4978, v43);
  }

  WORD2(v46) = v15 + 3;
  *(v45 + v16) = a2;
  if (HIBYTE(v46))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4979, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_81;
  }

  v17 = WORD2(v46);
  if (WORD1(v46) <= WORD2(v46))
  {
LABEL_81:
    v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_83;
  }

  if (BYTE6(v46) != 2)
  {
    v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_83:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4979, v44);
  }

  ++WORD2(v46);
  *(v45 + v17) = a3;
  v18 = a3 - a2 + 1;
  if (a3 - a2 != 0xFFFF)
  {
    v19 = 0;
    v20 = v18;
    while (!HIBYTE(v46))
    {
      if (WORD1(v46) - WORD2(v46) <= 5)
      {
        goto LABEL_60;
      }

      if (BYTE6(v46) != 2)
      {
        v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_61;
      }

      sub_1000075EC((v45 + WORD2(v46)), a4, 6uLL);
      v21 = WORD2(v46);
      v22 = WORD2(v46) + 6;
      WORD2(v46) += 6;
      if (HIBYTE(v46))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4984, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_56:
        v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_57:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4984, v38);
      }

      if (WORD1(v46) <= v22)
      {
        goto LABEL_56;
      }

      if (BYTE6(v46) != 2)
      {
        v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_57;
      }

      v23 = a4[6];
      WORD2(v46) = v21 + 7;
      *(v45 + v22) = v23;
      if (HIBYTE(v46))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4985, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_52:
        v37 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_53:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4985, v37);
      }

      if (WORD1(v46) - WORD2(v46) <= 5)
      {
        goto LABEL_52;
      }

      if (BYTE6(v46) != 2)
      {
        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_53;
      }

      v24 = a4 + 7;
      sub_1000075EC((v45 + WORD2(v46)), v24, 6uLL);
      v25 = WORD2(v46);
      v26 = WORD2(v46) + 6;
      WORD2(v46) += 6;
      if (HIBYTE(v46))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4986, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_48:
        v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_49:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4986, v36);
      }

      if (WORD1(v46) <= v26)
      {
        goto LABEL_48;
      }

      if (BYTE6(v46) != 2)
      {
        v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_49;
      }

      v27 = v24[6];
      WORD2(v46) = v25 + 7;
      *(v45 + v26) = v27;
      if (HIBYTE(v46))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4987, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_44:
        v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_45:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4987, v35);
      }

      v28 = WORD2(v46);
      if (WORD1(v46) <= WORD2(v46))
      {
        goto LABEL_44;
      }

      if (BYTE6(v46) != 2)
      {
        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_45;
      }

      v29 = v24[7];
      ++WORD2(v46);
      *(v45 + v28) = v29;
      if (HIBYTE(v46))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4988, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_41:
        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_67:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4988, v34);
      }

      v30 = WORD2(v46);
      if (WORD1(v46) <= WORD2(v46))
      {
        goto LABEL_41;
      }

      if (BYTE6(v46) != 2)
      {
        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_67;
      }

      v31 = v24[8];
      ++WORD2(v46);
      *(v45 + v30) = v31;
      if (HIBYTE(v46))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4989, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_64:
        v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_65:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4989, v40);
      }

      v32 = WORD2(v46);
      if (WORD1(v46) <= WORD2(v46))
      {
        goto LABEL_64;
      }

      if (BYTE6(v46) != 2)
      {
        v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_65;
      }

      v33 = v24[9];
      ++WORD2(v46);
      *(v45 + v32) = v33;
      ++v19;
      a4 = v24 + 10;
      if (v19 >= v20)
      {
        return sub_100020078(65014, v45, BYTE4(v46), a5, sub_1001EF97C, v11, v12, v13);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4983, "OI_STATUS _ACI_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_60:
    v39 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_61:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4983, v39);
  }

  return sub_100020078(65014, v45, BYTE4(v46), a5, sub_1001EF97C, v11, v12, v13);
}

uint64_t sub_1001E1D84(__int16 a1, char a2, char a3, char a4, char a5, void (*a6)())
{
  v28 = 0;
  v29 = 0;
  result = sub_10001FFD8(&v28);
  if (!result)
  {
    if (HIBYTE(v29))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5023, "OI_STATUS _ACI_MatchBufferConfig(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHBUFFER_CONFIG_CB)");
    }

    else
    {
      v16 = WORD2(v29);
      if (WORD1(v29) > WORD2(v29))
      {
        if (BYTE6(v29) == 2)
        {
          ++WORD2(v29);
          *(v28 + v16) = 5;
          if (HIBYTE(v29))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5024, "OI_STATUS _ACI_MatchBufferConfig(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHBUFFER_CONFIG_CB)");
          }

          else if (WORD1(v29) - WORD2(v29) > 1)
          {
            if (BYTE6(v29) == 2)
            {
              *(v28 + WORD2(v29)) = a1;
              v17 = WORD2(v29);
              v18 = WORD2(v29) + 2;
              WORD2(v29) += 2;
              if (HIBYTE(v29))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5025, "OI_STATUS _ACI_MatchBufferConfig(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHBUFFER_CONFIG_CB)");
              }

              else if (WORD1(v29) > v18)
              {
                if (BYTE6(v29) == 2)
                {
                  WORD2(v29) = v17 + 3;
                  *(v28 + v18) = a2;
                  if (HIBYTE(v29))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5026, "OI_STATUS _ACI_MatchBufferConfig(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHBUFFER_CONFIG_CB)");
                  }

                  else
                  {
                    v19 = WORD2(v29);
                    if (WORD1(v29) > WORD2(v29))
                    {
                      if (BYTE6(v29) == 2)
                      {
                        ++WORD2(v29);
                        *(v28 + v19) = a3;
                        if (HIBYTE(v29))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5027, "OI_STATUS _ACI_MatchBufferConfig(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHBUFFER_CONFIG_CB)");
                        }

                        else
                        {
                          v20 = WORD2(v29);
                          if (WORD1(v29) > WORD2(v29))
                          {
                            if (BYTE6(v29) == 2)
                            {
                              ++WORD2(v29);
                              *(v28 + v20) = a4;
                              if (HIBYTE(v29))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5028, "OI_STATUS _ACI_MatchBufferConfig(uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHBUFFER_CONFIG_CB)");
                              }

                              else
                              {
                                v21 = WORD2(v29);
                                if (WORD1(v29) > WORD2(v29))
                                {
                                  if (BYTE6(v29) == 2)
                                  {
                                    ++WORD2(v29);
                                    *(v28 + v21) = a5;
                                    return sub_100020078(65014, v28, BYTE4(v29), a6, sub_1001EFAF0, v13, v14, v15);
                                  }

                                  v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5028, v27);
                                }
                              }

                              v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_45;
                            }

                            v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5027, v26);
                          }
                        }

                        v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_41;
                      }

                      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5026, v25);
                    }
                  }

                  v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_37;
                }

                v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5025, v24);
              }

              v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_33;
            }

            v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5024, v23);
          }

          v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_29;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5023, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}