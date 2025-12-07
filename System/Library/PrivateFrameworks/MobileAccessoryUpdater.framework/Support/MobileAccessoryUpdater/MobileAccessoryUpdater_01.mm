uint64_t UARPLayer2PayloadData(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 144);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 152);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete2(uint64_t result, void *a2)
{
  v2 = a2[20];
  if (v2)
  {
    return v2(*(result + 608), a2[88]);
  }

  v3 = a2[19];
  if (v3)
  {
    return v3(*(result + 608), a2[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetGetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v7 = a3[21];
  if (v7)
  {
    return v7(*(a1 + 608), a2, a3[88], a4, a5, a6, a7);
  }

  v9 = a3[34];
  if (v9)
  {
    return v9(*(a1 + 608), a3[88], a4, a5, a6, a7);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetSetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v6 = a3[22];
  if (v6)
  {
    return v6(*(a1 + 608), a2, a3[88], a4, a5, a6);
  }

  v8 = a3[35];
  if (v8)
  {
    return v8(*(a1 + 608), a3[88], a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetRescinded(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 184);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetRescindedAck(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 192);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetOrphaned(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 208);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetReleased2(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = a3[27];
  if (v3)
  {
    return v3(*(result + 608), a2, a3[88]);
  }

  v4 = a3[36];
  if (v4)
  {
    return v4(*(result + 608), a3[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetProcessingNotification2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[28];
  if (v4)
  {
    return v4(*(a1 + 608), *(a2 + 40), a3[88], a4);
  }

  v6 = a3[37];
  if (v6)
  {
    return v6(*(a1 + 608), a3[88], a4);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 232);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 240);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetAllHeadersAndMetaDataComplete(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 256);
  if (v3)
  {
    return v3(*(result + 608), *(a2 + 40), *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetStore(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 264);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t uarpPlatformEndpointQueryActiveFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2ActiveFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformEndpointQueryStagedFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2StagedFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformAssetFindFirmware(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 46) == 1)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByAssetID(uint64_t a1, uint64_t a2, int a3, int a4)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 44) == a4)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByTag(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  for (i = *(a1 + 632); i; i = *(i + 712))
  {
    if (*(i + 304) == a3 && *(i + 696) == a2 && uarpAssetTagCompare((i + 48), a4))
    {
      break;
    }
  }

  return i;
}

void uarpPlatformCleanupAssetsForRemoteEndpoint(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 644) != 1)
  {
    v4 = *(result + 632);
    for (*(result + 632) = 0; v4; *(result + 632) = v7)
    {
      while (1)
      {
        v7 = v4;
        v4 = *(v4 + 712);
        *(v7 + 712) = 0;
        v8 = *(v7 + 696);
        v9 = v8 == a2 || a2 == 0;
        if (!v9 && v8 != 0)
        {
          break;
        }

        if (a3 == 1)
        {
          if (*(v7 + 46))
          {
            UARPLayer2AssetOrphaned(result, v7);
            *(v7 + 696) = 0;
            *(v7 + 704) = 0;
          }

          else
          {
            *(v7 + 72) = 1;
          }
        }

        if (*(v7 + 72) != 1)
        {
          break;
        }

        UARPLayer2AssetReleased2(result, a2, v7);
        *(v7 + 704) = 0;
        uarpPlatformAssetCleanup(result, v7);
        if (!v4)
        {
          return;
        }
      }

      *(v7 + 712) = *(result + 632);
    }
  }
}

double uarpPlatformAssetOrphan(uint64_t a1, uint64_t a2)
{
  UARPLayer2AssetOrphaned(a1, a2);
  result = 0.0;
  *(a2 + 696) = 0u;
  return result;
}

uint64_t uarpPlatformAssetRelease(uint64_t a1, uint64_t a2, void *a3)
{
  result = UARPLayer2AssetReleased2(a1, a2, a3);
  a3[88] = 0;
  return result;
}

void uarpPlatformAssetCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 640);
  if (v4 && !*(a2 + 652))
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 412);
  }

  *(a2 + 640) = 0;
  *(a2 + 648) = 0;
  v5 = *(a2 + 656);
  if (v5 && !*(a2 + 668))
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 432);
  }

  *(a2 + 656) = 0;
  *(a2 + 664) = 0;
  v6 = *(a2 + 672);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 451);
    *(a2 + 672) = 0;
  }

  *(a2 + 680) = 0;
  v7 = *(a2 + 720);
  if (v7)
  {
    do
    {
      v8 = v7[2];
      v7[2] = 0;
      UARPLayer2ReturnBuffer(a1, v7, 52428, 388);
      v7 = v8;
    }

    while (v8);
  }

  *(a2 + 720) = 0;
  v9 = *(a2 + 632);
  if (v9)
  {
    do
    {
      v10 = v9[21];
      v11 = v9[22];
      if (v10)
      {
        do
        {
          v12 = v10[2];
          v10[2] = 0;
          UARPLayer2ReturnBuffer(a1, v10, 52428, 388);
          v10 = v12;
        }

        while (v12);
      }

      v9[21] = 0;
      uarpPlatformPayloadCleanup(a1, v9);
      UARPLayer2ReturnBuffer(a1, v9, 52428, 487);
      v9 = v11;
    }

    while (v11);
  }

  uarpPlatformPayloadCleanup(a1, a2 + 464);

  UARPLayer2ReturnBuffer(a1, a2, 52428, 511);
}

void uarpPlatformCleanupAssets(uint64_t a1)
{
  v1 = *(a1 + 632);
  *(a1 + 632) = 0;
  if (v1)
  {
    do
    {
      v3 = *(v1 + 712);
      *(v1 + 712) = 0;
      uarpPlatformAssetCleanup(a1, v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t uarpPlatformAssetIsKnown(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 632);
  if (!v3)
  {
    return 0;
  }

  while (v3 != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t uarpPlatformPrepareAsset(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6)
{
  v6 = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v18 = 0;
        v6 = UARPLayer2RequestBuffer(a1, &v18, 0x2D8uLL, 52428, 245);
        if (!v6)
        {
          v14 = v18;
          if (v18)
          {
            *(v18 + 88) = a3;
            v14[87] = a2;
            uarpPlatformEndpointAssetSetCallbacks(a1, v14, a5);
            if (v15)
            {
              v6 = v15;
              UARPLayer2ReturnBuffer(a1, v18, 52428, 265);
            }

            else
            {
              v16 = v18;
              if (a4)
              {
                *(v18 + 23) = 2;
                *(v16 + 12) = *a4;
              }

              else
              {
                *(v18 + 23) = 1;
              }

              if (a6 == 1)
              {
                *(v16 + 76) = 1;
                v17 = *(a1 + 640);
                if (v17 == 65534)
                {
                  v17 = 1;
                }

                *(a1 + 640) = v17 + 1;
              }

              else
              {
                LOWORD(v17) = 0;
                *(v16 + 76) = 0;
              }

              *(v16 + 22) = v17;
              if (a4 && a6 == 1)
              {
                uarpPlatformAssetFindByTag(a1, a2, 1, v16 + 48);
                v16 = v18;
              }

              v6 = 0;
              *(v16 + 89) = *(a1 + 632);
              *(a1 + 632) = v16;
            }
          }

          else
          {
            return 11;
          }
        }
      }
    }
  }

  return v6;
}

void uarpPlatformPayloadCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (v4)
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 529);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  v5 = *(a2 + 96);
  if (v5)
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 546);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
  }

  v6 = *(a2 + 112);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 563);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  v7 = *(a2 + 64);
  if (v7)
  {
    UARPLayer2ReturnBuffer(a1, v7, 52428, 580);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
  }

  v8 = *(a2 + 152);
  if (v8)
  {
    UARPLayer2ReturnBuffer(a1, v8, 52428, 592);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
  }

  v9 = *(a2 + 136);
  if (v9)
  {
    UARPLayer2ReturnBuffer(a1, v9, 52428, 602);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
  }
}

uint64_t uarpPlatformEndpointAssetStore(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 <= 4)
  {
    return UARPLayer2AssetStore(result, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescind(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (a3)
    {
      uarpTransmitQueueAssetRescinded(result, a2, a3);
      *(a3 + 72) = 1;

      return UARPLayer2AssetRescinded(v5, a2, a3);
    }

    else
    {

      return UARPLayer2RescindAllAssets(result, a2, 0);
    }
  }

  return result;
}

uint64_t uarpPlatformReOfferFirmware(uint64_t result, uint64_t a2)
{
  v2 = *(result + 632);
  if (v2)
  {
    v4 = result;
    do
    {
      if (*(v2 + 304) == 1 && *(v2 + 696) == a2 && (*(v2 + 46) & 2) == 0)
      {
        result = uarpPlatformEndpointOfferAsset(v4, a2, *(v2 + 704));
      }

      v2 = *(v2 + 712);
    }

    while (v2);
  }

  return result;
}

uint64_t uarpCallbackUpdateInformationTLV(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v9 = v6;
  if (v5 != 7)
  {
    result = uarpPlatformQueryAccessoryInfo(a1, v5, a3 + 2, v6, &v9);
    if (result)
    {
      return result;
    }

    v7 = v9;
    goto LABEL_6;
  }

  if (v6 >= 0x10)
  {
    a3[2] = uarpHtonl(*(a2 + 66));
    a3[3] = uarpHtonl(*(a2 + 70));
    a3[4] = uarpHtonl(*(a2 + 74));
    a3[5] = uarpHtonl(*(a2 + 78));
    v7 = 16;
LABEL_6:
    result = 0;
    a3[1] = v7;
    return result;
  }

  return 39;
}

uint64_t uarpPlatformQueryAccessoryInfo(void *a1, int a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  *a5 = a4;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {

      return UARPLayer2ManufacturerName(a1, a3, a5);
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_22;
      }

      return UARPLayer2ModelName(a1, a3, a5);
    }
  }

  else
  {
    switch(a2)
    {
      case 3:

        return UARPLayer2SerialNumber(a1, a3, a5);
      case 4:

        return UARPLayer2HardwareVersion(a1, a3, a5);
      case 9:

        return UARPLayer2FriendlyName(a1, a3, a5);
      default:
LABEL_22:
        if ((a2 - 5) > 1)
        {
          if (a2 != 8)
          {
            *a5 = 0;
            return 28;
          }

          *a5 = 8;
          if (a4 >= 8)
          {
            Error = UARPLayer2LastError(a1, a3);
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            return Error;
          }
        }

        else
        {
          *a5 = 16;
          if (a4 >= 0x10)
          {
            if (a2 == 5)
            {
              v9 = 0;
              active = UARPLayer2ActiveFirmwareVersion2(a1, &v9, a3);
            }

            else
            {
              v10 = 0;
              active = UARPLayer2StagedFirmwareVersion2(a1, &v10, a3);
            }

            Error = active;
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            a3[2] = uarpHtonl(a3[2]);
            a3[3] = uarpHtonl(a3[3]);
            return Error;
          }
        }

        return 39;
    }
  }
}

uint64_t uarpPlatformResponseAccessoryInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int *a6)
{
  v8 = result;
  if (a4 <= 4)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {

        return UARPLayer2SerialNumberResponse(result, a2);
      }

      else
      {

        return UARPLayer2HardwareVersionResponse(result, a2);
      }
    }

    else if (a4 == 1)
    {

      return UARPLayer2ManufacturerNameResponse(result, a2);
    }

    else if (a4 == 2)
    {

      return UARPLayer2ModelNameResponse(result, a2);
    }
  }

  else if (a4 <= 6)
  {
    if (a4 == 5)
    {
      if (a5 >= 0x10)
      {
        uarpVersionEndianSwap(a6, a6);
        result = UARPLayer2ActiveFirmwareVersionResponse(v8, a2);
        *(a2 + 122) = *a6;
      }
    }

    else if (a5 >= 0x10)
    {
      uarpVersionEndianSwap(a6, a6);
      result = UARPLayer2StagedFirmwareVersionResponse(v8, a2);
      *(a2 + 138) = *a6;
    }
  }

  else
  {
    switch(a4)
    {
      case 7:
        if (a5 >= 0x10)
        {
          *a6 = uarpNtohl(*a6);
          a6[1] = uarpNtohl(a6[1]);
          a6[2] = uarpNtohl(a6[2]);
          a6[3] = uarpNtohl(a6[3]);

          return UARPLayer2StatisticsResponse(v8, a2);
        }

        break;
      case 8:
        if (a5 >= 8)
        {
          *a6 = uarpNtohl(*a6);
          a6[1] = uarpNtohl(a6[1]);

          return UARPLayer2LastErrorResponse(v8, a2);
        }

        break;
      case 9:

        return UARPLayer2FriendlyNameResponse(result, a2);
    }
  }

  return result;
}

uint64_t uarpPlatformAssetDataRequest(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *__dst, unsigned __int16 *a7)
{
  v8 = *(a1 + 632);
  if (!v8)
  {
    return 17;
  }

  while (*(v8 + 304) != 1 || *(v8 + 696) != a2 || *(v8 + 44) != a3)
  {
    v8 = *(v8 + 712);
    if (!v8)
    {
      return 17;
    }
  }

  v10 = *(v8 + 68);
  if (v10 < a5)
  {
    return 17;
  }

  if (v10 >= a4 + a5)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10 - a5;
  }

  return uarpPlatformEndpointAssetGetBytesAtOffset(a1, a2, v8, __dst, v11, a5, a7);
}

uint64_t uarpPlatformDataTransferResume(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 632);
  if (v4)
  {
    while (1)
    {
      if (!*(v4 + 304) && *(v4 + 696) == a2)
      {
        result = uarpPlatformAssetRequestData(a1, v4, (v4 + 312));
        if (result)
        {
          break;
        }
      }

      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    return UARPLayer2DataTransferResume(a1, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescinded(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(result + 632);
  if (a3 == 0xFFFF)
  {
    if (!v4)
    {
      return uarpPlatformAssetRescind(result, a2, v4);
    }

    v5 = *(result + 632);
    do
    {
      if (!*(v5 + 304) && *(v5 + 696) == a2)
      {
        *(v5 + 72) = 1;
      }

      v5 = *(v5 + 712);
    }

    while (v5);
  }

  if (v4)
  {
    while (*(v4 + 304) || *(v4 + 696) != a2 || *(v4 + 44) != a3)
    {
      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (a3 != 0xFFFF)
    {
      return result;
    }

    v4 = 0;
  }

  return uarpPlatformAssetRescind(result, a2, v4);
}

uint64_t uarpAssetProcessingComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2)
  {
    v8 = uarpAllocPrepareTransmitBuffer2(a1, a2, 9, 0xAu, 1);
    if (v8)
    {
      v9 = v8;
      v10 = v8[3];
      *(v10 + 6) = uarpHtons(*(a3 + 44));
      *(v10 + 8) = uarpHtons(v4);

      return uarpTransmitBuffer2(a1, a2, v9);
    }

    else
    {
      return 11;
    }
  }

  else if (a4 == 3)
  {
    return 0;
  }

  else
  {
    return 13;
  }
}

uint64_t uarpOfferAssetToRemoteEP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 5, 0x24u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpTagStructPack32((a3 + 48));
  *(v8 + 10) = uarpHtons(*(a3 + 46));
  *(v8 + 12) = uarpHtons(*(a3 + 44));
  uarpVersionEndianSwap((a3 + 52), (v8 + 14));
  *(v8 + 30) = uarpHtonl(*(a3 + 68));
  *(v8 + 34) = uarpHtons(*(a3 + 448));

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpAssetRescind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 12, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(v3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 17, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  *(v6[3] + 6) = *a3;

  return uarpTransmitBuffer2(a1, a2, v6);
}

uint64_t uarpPlatformFindPreparedAsset(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 *a5)
{
  if ((a4 & 2) == 0)
  {
    return 0;
  }

  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (!*(result + 304) && *(result + 696) == a2 && !*(result + 44) && *(result + 48) == *a5 && *(result + 49) == a5[1] && *(result + 50) == a5[2] && *(result + 51) == a5[3])
    {
      break;
    }
  }

  return result;
}

void *uarpPlatformCreateRxAsset(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (UARPLayer2RequestBuffer(a1, &v5, 0x2D8uLL, 52428, 1213))
  {
    return 0;
  }

  result = v5;
  if (v5)
  {
    v5[87] = a2;
    *(result + 76) = 0;
    result[89] = *(a1 + 632);
    *(a1 + 632) = result;
  }

  return result;
}

BOOL uarpPlatformCompareHash(uint64_t a1, void *__s1, size_t __n, void *__s2, int a5)
{
  if (!*(a1 + 416))
  {
    return 1;
  }

  if (__n == a5)
  {
    return memcmp(__s1, __s2, __n) == 0;
  }

  return 0;
}

uint64_t UARPPlatformDownstreamEndpointByID(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; ++i)
      {
        result = *i;
        if (*i)
        {
          if (*(result + 160) == a2 && *(result + 120) == a3)
          {
            break;
          }
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t UARPPlatformDownstreamEndpointByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; i += 8)
      {
        result = *i;
        if (*(*i + 160) == a2 && *(result + 40) == a3)
        {
          break;
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformRemoteEndpointAddEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 620);
  if (v4)
  {
    v5 = *(a1 + 624);
    v6 = *(a1 + 620);
    while (*v5)
    {
      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    *v5 = a2;
  }

  else
  {
LABEL_5:
    v7 = v4 + 1;
    v11 = 0;
    result = UARPLayer2RequestBuffer(a1, &v11, (8 * (v4 + 1)), 52428, 1360);
    if (!result)
    {
      v9 = *(a1 + 620);
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v11[i] = *(*(a1 + 624) + i * 8);
        }
      }

      else
      {
        v9 = 0;
      }

      v11[v9] = a2;
      UARPLayer2ReturnBuffer(a1, *(a1 + 624), 52428, 1377);
      result = 0;
      *(a1 + 620) = v7;
      *(a1 + 624) = v11;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointAddToList(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  v3 = *(result + 688);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    v5 = (v4 + 24);
  }

  else
  {
    v5 = (result + 688);
  }

  *v5 = a3;
  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnList(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 8) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 16) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointIDFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 16) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 8);
}

uint64_t uarpPlatformDownstreamEndpointDelegateFindOnListByID(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 8) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 16);
}

uint64_t uarpPlatformDownstreamEndpointRemoveFromList(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 688);
  if (result)
  {
    if (*(result + 8) == a3)
    {
      v5 = (a1 + 688);
LABEL_7:
      *v5 = *(result + 24);
    }

    else
    {
      while (1)
      {
        v6 = result;
        result = *(result + 24);
        if (!result)
        {
          break;
        }

        if (*(result + 8) == a3)
        {
          v5 = (v6 + 24);
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformSendDownstreamMessageWithDownstreamID(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5)
{
  v5 = *(a1 + 688);
  if (!v5)
  {
    return 58;
  }

  while (*(v5 + 8) != a3)
  {
    v5 = *(v5 + 24);
    if (!v5)
    {
      return 58;
    }
  }

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, a3, a4, a5);
}

void uarpPlatformReleaseEndpointIDs(uint64_t a1)
{
  if (*(a1 + 664))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 672) + v2;
      UARPLayer2ReturnBuffer(a1, *(v4 + 8), 52428, 1605);
      *(v4 + 2) = 0;
      *(v4 + 8) = 0;
      ++v3;
      v2 += 16;
    }

    while (v3 < *(a1 + 664));
  }

  UARPLayer2ReturnBuffer(a1, *(a1 + 672), 52428, 1592);
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
}

uint64_t uarpPlatformReleaseEndpointTags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UARPLayer2ReturnBuffer(a1, *(a3 + 8), 52428, 1605);
  *(a3 + 2) = 0;
  *(a3 + 8) = 0;
  return 0;
}

uint64_t uarpPlatformEndpointSendSyncMsg(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a1 + 616))
    {
      v5 = 1;
    }

    else
    {
      uarpTransmitQueuePurge(a1, a2);
      v5 = 0;
    }

    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0, 6u, v5);
    if (v6)
    {

      return uarpTransmitBuffer2(a1, a2, v6);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 1, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      if (a3 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = a3;
      }

      *(a2 + 48) = v10;
      *(v9 + 6) = uarpHtons(v10);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryResponse(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = 30;
  if (a1 && a2)
  {
    *(a2 + 48) = a3;
    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 2, 0xCu, 0);
    if (v6)
    {
      v7 = v6;
      v8 = v6[3];
      v8[3] = uarpHtons(0);
      v8[4] = uarpHtons(*(a2 + 48));
      v8[5] = *(a2 + 36);
      v9 = UARPProtocolVersionResponseAdjustByProtocolVersion(*(a2 + 48));
      v10 = uarpNtohs(v8[1]);
      v8[1] = v10 - v9;
      v8[1] = uarpHtons((v10 - v9));
      *(v7 + 18) -= v9;

      return uarpTransmitBuffer2(a1, a2, v7);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendInformationRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 3, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtonl(v3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t sub_1000403E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 30;
  if (a1 && a2)
  {
    v6 = a3;
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 8, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      *(v9 + 6) = uarpHtons(v6);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendDynamicAssetPreProcessingStatus(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, int a5)
{
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 19, 0xCu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = *a3;
  *(v12 + 10) = uarpHtons(a5 | a4);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendAssetRequestData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  v7 = a3;
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 6, 0xEu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = uarpHtons(v7);
  *(v12 + 8) = uarpHtonl(v6);
  if (a5 >= 0xFFFF)
  {
    v13 = 0xFFFF;
  }

  else
  {
    v13 = a5;
  }

  *(v12 + 12) = uarpHtons(v13);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, const void *a5, unsigned int a6)
{
  if (!a2)
  {
    return 13;
  }

  v8 = a4;
  v12 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFFFFLL, (a6 + 11), a4 == 32);
  if (!v12)
  {
    return 11;
  }

  v13 = v12;
  v14 = v12[3];
  v15 = *a3;
  *(v14 + 8) = *(a3 + 2);
  *(v14 + 6) = v15;
  *(v14 + 9) = uarpHtons(v8);
  if (a5 && a6)
  {
    memcpy((v14 + 11), a5, a6);
  }

  return uarpTransmitBuffer2(a1, a2, v13);
}

uint64_t uarpSendDownstreamEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 21, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpSendDownstreamEndpointReachable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 23, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(v3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSendDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 25, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(v3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpTransmitMessageToDownstreamEndpointID(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5)
{
  v7 = a3;
  v10 = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  v11 = uarpAllocPrepareTransmitBuffer2(a1, a2, 27, (a5 + 8), v10);
  if (!v11)
  {
    return 11;
  }

  v12 = v11;
  v13 = v11[3];
  *(v13 + 6) = uarpHtons(v7);
  memcpy((v13 + 8), a4, a5);

  return uarpTransmitBuffer2(a1, a2, v12);
}

uint64_t uarpPlatformEndpointRecvMessage(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = 30;
  if (a1 && a2 && a3)
  {
    UARPLayer2LogPacket(a1, a2);
    if (a4 <= 5)
    {
      v9 = *(a1 + 440);
      if (v9)
      {
        v10 = *(a1 + 608);
        v11 = uarpEndpointRoleToString(*(a1 + 616));
        v9(v10, 0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>", v11, a4);
      }

      else
      {
        uarpEndpointRoleToString(*(a1 + 616));
        uarpLogError(0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>");
      }

      return 8;
    }

    v12 = uarpNtohs(*a3);
    v13 = uarpNtohs(a3[1]);
    v14 = uarpNtohs(a3[2]);
    *(a2 + 32) = v14;
    v15 = v13 + 6;
    if (a4 < v15)
    {
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>";
LABEL_10:
      v16(v17, 0, v18);
      return 8;
    }

    if (a4 > v15)
    {
      v19 = *(a1 + 440);
      if (v19)
      {
        v19(*(a1 + 608), 0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      else
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      if (a4 - v15 < 6)
      {
        return 8;
      }

      v22 = (a3 + v15);
      uarpNtohs(*v22);
      uarpNtohs(v22[1]);
      uarpNtohs(v22[2]);
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>";
      goto LABEL_10;
    }

    v4 = 1;
    *(a1 + 644) = 1;
    switch(v12)
    {
      case 0:
        if (!*(a1 + 616))
        {
          uarpTransmitQueuePurge(a1, a2);
          uarpPlatformEndpointSendSyncMsg(a1, a2);
          goto LABEL_371;
        }

        v20 = a2[14];
        if (!v20)
        {
          goto LABEL_284;
        }

        while (!*(v20 + 40) || uarpNtohs(*v20[3]))
        {
          v20 = *v20;
          if (!v20)
          {
            goto LABEL_284;
          }
        }

        *(v20 + 40) = 0;
        *(v20 + 39) = *(v20 + 38);
LABEL_284:
        *(a2 + 130) = 0;
        *(a2 + 122) = 0;
        *(a2 + 146) = 0;
        *(a2 + 138) = 0;
        *(a2 + 24) = 0;
        if ((*(a1 + 616) - 1) <= 1)
        {
          uarpSendVersionDiscoveryRequest(a1, a2, *(a2 + 6));
        }

        goto LABEL_371;
      case 1:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v88 = uarpNtohs(a3[3]);
        v89 = *(a1 + 12);
        if (v88 < v89)
        {
          v89 = v88;
        }

        if (v89 <= 1)
        {
          v90 = 1;
        }

        else
        {
          v90 = v89;
        }

        *(a2 + 24) = v90;
        uarpSendVersionDiscoveryResponse(a1, a2, v90);
        UARPLayer2ProtocolVersion(a1, a2);
        goto LABEL_371;
      case 2:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v75 = a2[14];
        if (!v75)
        {
          goto LABEL_213;
        }

        while (!*(v75 + 40) || uarpNtohs(*v75[3]) != 1)
        {
          v75 = *v75;
          v4 = 9;
          if (!v75)
          {
            goto LABEL_372;
          }
        }

        *(v75 + 40) = 0;
        *(v75 + 39) = *(v75 + 38);
        v4 = uarpNtohs(a3[3]);
        v158 = uarpHtons(a3[4]);
        v159 = 0;
        v160 = 0;
        if (a4 >= 0xC)
        {
          v159 = *(a3 + 10);
          v160 = *(a3 + 11);
        }

        *(a2 + 25) = v159;
        *(a2 + 26) = v160;
        if (v4)
        {
          v4 = 2;
        }

        else
        {
          if (v158 <= 1)
          {
            v176 = 1;
          }

          else
          {
            v176 = v158;
          }

          if (v176 >= 7)
          {
            v177 = 7;
          }

          else
          {
            v177 = v176;
          }

          *(a2 + 24) = v177;
          UARPLayer2ProtocolVersion(a1, a2);
        }

        goto LABEL_372;
      case 3:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v77 = uarpAllocPrepareTransmitBuffer2(a1, a2, 4, 0x10u, 0);
        if (!v77)
        {
          goto LABEL_282;
        }

        v78 = v77;
        v79 = v77[3];
        *(v79 + 8) = uarpNtohl(*(a3 + 3));
        *(v79 + 12) = *(v78 + 8) - 16;
        updated = uarpCallbackUpdateInformationTLV(a1, a2, (v79 + 8));
        v81 = updated;
        if (updated)
        {
          v82 = 16;
        }

        else
        {
          v169 = *(v79 + 12);
          *(v79 + 2) = uarpHtons((v169 + 10));
          *(v79 + 8) = uarpHtonl(*(v79 + 8));
          *(v79 + 12) = uarpHtonl(*(v79 + 12));
          v82 = v169 + 16;
        }

        *(v79 + 6) = uarpHtons(v81);
        *(v78 + 18) = v82;
        goto LABEL_317;
      case 4:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v54 = uarpNtohs(a3[3]);
        if (a4 < 0x10)
        {
          goto LABEL_213;
        }

        v55 = v54;
        v56 = uarpNtohl(*(a3 + 2));
        v57 = uarpNtohl(*(a3 + 3));
        if (v57 > 0xFFFFFFEF)
        {
          goto LABEL_303;
        }

        if (v57 + 16 > a4)
        {
          goto LABEL_213;
        }

        v58 = v57;
        v59 = a2[14];
        if (!v59)
        {
          goto LABEL_370;
        }

        while (!*(v59 + 40) || uarpNtohs(*v59[3]) != 3 || v56 != uarpNtohl(*(v59[3] + 6)))
        {
          v59 = *v59;
          if (!v59)
          {
            goto LABEL_370;
          }
        }

        *(v59 + 40) = 0;
        *(v59 + 39) = *(v59 + 38);
LABEL_370:
        uarpPlatformResponseAccessoryInfo(a1, a2, v55, v56, v58, a3 + 4);
        goto LABEL_371;
      case 5:
        if (a4 < 0x24)
        {
          goto LABEL_213;
        }

        v194 = 0;
        uarpTagStructUnpack32(*(a3 + 3), &v194);
        v101 = uarpNtohs(a3[5]);
        v102 = uarpNtohs(a3[6]);
        v193[0] = 0;
        v193[1] = 0;
        uarpVersionEndianSwap((a3 + 7), v193);
        v103 = uarpNtohl(*(a3 + 15));
        v104 = uarpNtohs(a3[17]);
        v105 = uarpAllocPrepareTransmitBuffer2(a1, a2, 13, 0x24u, 0);
        if (!v105)
        {
          goto LABEL_282;
        }

        v106 = v105;
        v107 = v105[3];
        *(v107 + 6) = uarpTagStructPack32(&v194);
        *(v107 + 10) = uarpHtons(v101);
        *(v107 + 12) = uarpHtons(v102);
        uarpVersionEndianSwap(v193, (v107 + 14));
        *(v107 + 30) = uarpHtonl(v103);
        *(v107 + 34) = uarpHtons(v104);
        v4 = uarpTransmitBuffer2(a1, a2, v106);
        if (v4)
        {
          goto LABEL_372;
        }

        v108 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v102);
        if (v108 && !*(v108 + 8))
        {
          goto LABEL_371;
        }

        PreparedAsset = uarpPlatformFindPreparedAsset(a1, a2, v102, v101, &v194);
        if (!PreparedAsset)
        {
          PreparedAsset = uarpPlatformCreateRxAsset(a1, a2);
          if (!PreparedAsset)
          {
            goto LABEL_282;
          }
        }

        v110 = PreparedAsset;
        *(PreparedAsset + 452) = -1;
        *(PreparedAsset + 448) = uarpNtohs(a3[17]);
        *(v110 + 44) = v102;
        *(v110 + 46) = v101;
        *(v110 + 48) = v194;
        *(v110 + 52) = *v193;
        *(v110 + 68) = uarpNtohl(*(a3 + 15));
        v111 = *(v110 + 46);
        if (v111)
        {
          UARPLayer2SuperBinaryOffered(a1, a2);
        }

        else
        {
          if ((v111 & 2) == 0)
          {
            v4 = 22;
            goto LABEL_372;
          }

          UARPLayer2DynamicAssetOffered(a1, a2);
        }

        goto LABEL_371;
      case 6:
        if (a4 < 0xE)
        {
          goto LABEL_213;
        }

        v115 = uarpNtohs(a3[6]);
        if (*a2 >= v115)
        {
          v116 = v115;
        }

        else
        {
          v116 = *a2;
        }

        LOWORD(v193[0]) = v116;
        v117 = uarpNtohl(*(a3 + 2));
        v118 = uarpNtohs(a3[3]);
        v119 = uarpAllocPrepareTransmitBuffer2(a1, a2, 7, (v116 + 18), 0);
        if (!v119)
        {
          goto LABEL_282;
        }

        v78 = v119;
        v120 = v119[3];
        v121 = uarpPlatformAssetDataRequest(a1, a2, v118, v116, v117, (v120 + 18), v193);
        *(v120 + 6) = uarpHtons(v121);
        *(v120 + 8) = a3[3];
        *(v120 + 10) = *(a3 + 2);
        *(v120 + 14) = a3[6];
        *(v120 + 16) = uarpHtons(LOWORD(v193[0]));
        v122 = LOWORD(v193[0]) + 18;
        *(v120 + 2) = uarpHtons((LOWORD(v193[0]) + 12));
        *(v78 + 18) = v122;
LABEL_317:
        v126 = a1;
        v127 = a2;
        v128 = v78;
        goto LABEL_318;
      case 7:
        if (a4 < 0x12)
        {
          goto LABEL_213;
        }

        v83 = uarpNtohs(a3[4]);
        v84 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v83);
        if (!v84)
        {
          goto LABEL_327;
        }

        v85 = a2[14];
        if (!v85)
        {
          goto LABEL_213;
        }

        v86 = v84;
        while (1)
        {
          if (*(v85 + 40))
          {
            if (uarpNtohs(*v85[3]) == 6)
            {
              v87 = v85[3];
              if (v83 == uarpNtohs(*(v87 + 6)) && *(a3 + 5) == *(v87 + 8) && a3[7] == *(v87 + 12))
              {
                break;
              }
            }
          }

          v85 = *v85;
          v4 = 9;
          if (!v85)
          {
            goto LABEL_372;
          }
        }

        *(v85 + 40) = 0;
        *(v85 + 39) = *(v85 + 38);
        v188 = uarpNtohs(a3[3]);
        v189 = uarpNtohl(*(a3 + 5));
        v190 = uarpNtohs(a3[7]);
        v191 = uarpNtohs(a3[8]);
        if (v191 + 18 > a4)
        {
LABEL_213:
          v4 = 9;
        }

        else
        {
          v192 = uarpPlatformAssetResponseData(a1, v86, v188, a3 + 9, v189, v190, v191);
          if (v192 == 29)
          {
            v4 = 0;
          }

          else
          {
            v4 = v192;
          }
        }

        goto LABEL_372;
      case 8:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v150 = uarpNtohs(a3[3]);
        v151 = uarpAllocPrepareTransmitBuffer2(a1, a2, 14, 8u, 0);
        if (!v151)
        {
          goto LABEL_282;
        }

        *(v151[3] + 6) = a3[3];
        v24 = uarpTransmitBuffer2(a1, a2, v151);
        if (v24)
        {
          goto LABEL_319;
        }

        if ((v150 & 1) != 0 && *(a2 + 60) == 1)
        {
          *(a2 + 60) = 0;
          v24 = UARPLayer2DataTransferPause(a1, a2);
          goto LABEL_319;
        }

        if ((v150 & 2) == 0 || *(a2 + 60))
        {
          v4 = 33;
          goto LABEL_372;
        }

        *(a2 + 60) = 1;
        v24 = uarpPlatformDataTransferResume(a1, a2);
        goto LABEL_319;
      case 9:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v62 = uarpNtohs(a3[3]);
        v63 = uarpNtohs(a3[4]);
        v64 = uarpPlatformAssetFindByAssetID(a1, a2, 1, v62);
        if (!v64)
        {
          goto LABEL_371;
        }

        v65 = v64;
        v66 = uarpAllocPrepareTransmitBuffer2(a1, a2, 15, 0xAu, 0);
        if (!v66)
        {
          goto LABEL_282;
        }

        v67 = v66;
        v68 = v66[3];
        *(v68 + 6) = uarpHtons(v62);
        *(v68 + 8) = uarpHtons(v63);
        v24 = uarpTransmitBuffer2(a1, a2, v67);
        if (!v24)
        {
          v24 = UARPLayer2AssetProcessingNotification2(a1, a2, v65, v63);
        }

        goto LABEL_319;
      case 10:
        LOWORD(v193[0]) = 0;
        v123 = UARPLayer2ApplyStagedAssets(a1, a2);
        v4 = 11;
        v124 = uarpAllocPrepareTransmitBuffer2(a1, a2, 11, 0xAu, 0);
        if (!v124)
        {
          goto LABEL_372;
        }

        v92 = v124;
        v125 = v124[3];
        *(v125 + 6) = uarpHtons(v123);
        *(v125 + 8) = uarpHtons(LOWORD(v193[0]));
        goto LABEL_211;
      case 11:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v53 = a2[14];
        if (!v53)
        {
          goto LABEL_296;
        }

        while (!*(v53 + 40) || uarpNtohs(*v53[3]) != 10)
        {
          v53 = *v53;
          if (!v53)
          {
            goto LABEL_296;
          }
        }

        *(v53 + 40) = 0;
        *(v53 + 39) = *(v53 + 38);
LABEL_296:
        uarpNtohs(a3[3]);
        uarpNtohs(a3[4]);
        v24 = UARPLayer2ApplyStagedAssetsResponse(a1, a2);
        goto LABEL_319;
      case 12:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v60 = uarpNtohs(a3[3]);
        v61 = uarpAllocPrepareTransmitBuffer2(a1, a2, 16, 8u, 0);
        if (!v61)
        {
          goto LABEL_282;
        }

        *(v61[3] + 6) = a3[3];
        v4 = uarpTransmitBuffer2(a1, a2, v61);
        if (!v4)
        {
          uarpPlatformAssetRescinded(a1, a2, v60);
        }

        goto LABEL_372;
      case 13:
        if (a4 < 0x24)
        {
          goto LABEL_303;
        }

        v37 = a2[14];
        if (!v37)
        {
          goto LABEL_371;
        }

        while (!*(v37 + 40) || uarpNtohs(*v37[3]) != 5 || a3[6] != *(v37[3] + 12))
        {
          v4 = 0;
          v37 = *v37;
          if (!v37)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 14:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v46 = a2[14];
        if (!v46)
        {
          goto LABEL_290;
        }

        while (!*(v46 + 40) || uarpNtohs(*v46[3]) != 8)
        {
          v46 = *v46;
          if (!v46)
          {
            goto LABEL_290;
          }
        }

        *(v46 + 40) = 0;
        *(v46 + 39) = *(v46 + 38);
LABEL_290:
        v157 = uarpNtohs(a3[3]);
        if (v157)
        {
          v24 = UARPLayer2DataTransferPauseAck(a1, a2);
        }

        else
        {
          if ((v157 & 2) == 0)
          {
            v4 = 26;
            goto LABEL_372;
          }

          v24 = UARPLayer2DataTransferResumeAck(a1, a2);
        }

        goto LABEL_319;
      case 15:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_330;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 9 || a3[3] != *(v76[3] + 6))
        {
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_330;
          }
        }

        *(v76 + 40) = 0;
        *(v76 + 39) = *(v76 + 38);
LABEL_330:
        v172 = uarpNtohs(a3[3]);
        uarpNtohs(a3[4]);
        v173 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v172);
        if (!v173)
        {
          goto LABEL_371;
        }

        v174 = v173;
        v4 = UARPLayer2AssetProcessingNotificationAck(a1, a2, v173);
        *(v174 + 72) = 1;
        goto LABEL_372;
      case 16:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v45 = a2[14];
        if (!v45)
        {
          goto LABEL_324;
        }

        while (!*(v45 + 40) || uarpNtohs(*v45[3]) != 12 || a3[3] != *(v45[3] + 6))
        {
          v45 = *v45;
          if (!v45)
          {
            goto LABEL_324;
          }
        }

        *(v45 + 40) = 0;
        *(v45 + 39) = *(v45 + 38);
LABEL_324:
        v170 = uarpNtohs(a3[3]);
        if (v170 == 0xFFFF)
        {
          UARPLayer2RescindAllAssetsAck(a1, a2, 0);
          goto LABEL_371;
        }

        v171 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v170);
        if (v171)
        {
          UARPLayer2AssetRescindedAck(a1, a2, v171);
          goto LABEL_371;
        }

LABEL_327:
        v4 = 17;
        goto LABEL_372;
      case 17:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v97 = uarpAllocPrepareTransmitBuffer2(a1, a2, 18, 0xEu, 0);
        if (!v97)
        {
          goto LABEL_282;
        }

        v98 = v97;
        v99 = v97[3];
        *(v99 + 6) = uarpHtonl(0);
        *(v99 + 10) = *(a3 + 3);
        v24 = uarpTransmitBuffer2(a1, a2, v98);
        if (!v24)
        {
          v24 = UARPLayer2AssetSolicitation(a1, a2);
        }

        goto LABEL_319;
      case 18:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v37 = a2[14];
        if (!v37)
        {
          goto LABEL_371;
        }

        while (!*(v37 + 40) || uarpNtohs(*v37[3]) != 17 || !uarpAssetTagCompare(a3 + 10, (v37[3] + 6)))
        {
          v4 = 0;
          v37 = *v37;
          if (!v37)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 19:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v131 = uarpNtohs(a3[5]);
        v132 = *(a3 + 3);
        LODWORD(v193[0]) = v132;
        v133 = uarpAllocPrepareTransmitBuffer2(a1, a2, 20, 0xCu, 0);
        if (!v133)
        {
          goto LABEL_282;
        }

        v134 = v133;
        v135 = v133[3];
        *(v135 + 6) = v132;
        *(v135 + 10) = uarpHtons(v131);
        v4 = uarpTransmitBuffer2(a1, a2, v134);
        if (v4)
        {
          goto LABEL_372;
        }

        v136 = uarpPlatformAssetFindByTag(a1, a2, 0, v193);
        if (v136)
        {
          *(v136 + 72) = 1;
          v24 = UARPLayer2AssetPreProcessingNotification(a1, a2, v136);
          goto LABEL_319;
        }

        v4 = 3;
        goto LABEL_372;
      case 20:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v100 = a2[14];
        if (!v100)
        {
          goto LABEL_333;
        }

        while (!*(v100 + 40) || uarpNtohs(*v100[3]) != 19 || !uarpAssetTagCompare(a3 + 6, (v100[3] + 6)))
        {
          v100 = *v100;
          if (!v100)
          {
            goto LABEL_333;
          }
        }

        *(v100 + 40) = 0;
        *(v100 + 39) = *(v100 + 38);
LABEL_333:
        uarpNtohs(a3[5]);
        LODWORD(v193[0]) = *(a3 + 3);
        v175 = uarpPlatformAssetFindByTag(a1, a2, 1, v193);
        if (!v175)
        {
          goto LABEL_371;
        }

        *(v175 + 72) = 1;
        v24 = UARPLayer2AssetPreProcessingNotificationAck(a1, a2, v175);
        if (v24 == 3)
        {
          goto LABEL_371;
        }

        goto LABEL_319;
      case 21:
        v112 = uarpAllocPrepareTransmitBuffer2(a1, a2, 22, 8u, 0);
        if (!v112)
        {
          goto LABEL_282;
        }

        v113 = v112;
        v114 = v112[3];
        *(v114 + 6) = uarpHtons(0);
        v24 = uarpTransmitBuffer2(a1, a2, v113);
        if (!v24)
        {
          v24 = fUarpLayer3DownstreamEndpointDiscovery(a1, a2);
        }

        goto LABEL_319;
      case 22:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v74 = a2[14];
        if (!v74)
        {
          goto LABEL_371;
        }

        while (!*(v74 + 40) || uarpNtohs(*v74[3]) != 21)
        {
          v4 = 0;
          v74 = *v74;
          if (!v74)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 23:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v137 = uarpAllocPrepareTransmitBuffer2(a1, a2, 24, 0xAu, 0);
        if (!v137)
        {
          goto LABEL_282;
        }

        v138 = v137;
        v139 = v137[3];
        *(v139 + 6) = uarpHtons(0);
        *(v139 + 8) = a3[3];
        v24 = uarpTransmitBuffer2(a1, a2, v138);
        if (v24)
        {
          goto LABEL_319;
        }

        v193[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v193, 0x20uLL, 56797, 1483);
        if (!v4)
        {
          v140 = uarpNtohs(a3[3]);
          v141 = v193[0];
          *(v193[0] + 4) = v140;
          v141[2] = 0;
          v141[3] = 0;
          uarpPlatformDownstreamEndpointAddToList(a1, a2, v141);
          v142 = *(a1 + 448);
          if (v142)
          {
            v143 = *(a1 + 608);
            v144 = uarpEndpointRoleToString(*(a1 + 616));
            v142(v143, 6, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v144, a1, a2, *(v193[0] + 4));
          }

          else
          {
            v187 = uarpEndpointRoleToString(*(a1 + 616));
            uarpLogInfo(6u, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v187, a1, a2, *(v193[0] + 4));
          }

          v4 = fUarpLayer3DownstreamEndpointReachable(a1, a2);
          if (v4)
          {
            UARPLayer2ReturnBuffer(a1, v193[0], 56797, 1512);
          }
        }

        goto LABEL_372;
      case 24:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v74 = a2[14];
        if (!v74)
        {
          goto LABEL_371;
        }

        while (!*(v74 + 40) || uarpNtohs(*v74[3]) != 23)
        {
          v4 = 0;
          v74 = *v74;
          if (!v74)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 25:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v69 = uarpAllocPrepareTransmitBuffer2(a1, a2, 26, 0xAu, 0);
        if (!v69)
        {
          goto LABEL_282;
        }

        v70 = v69;
        v71 = uarpNtohs(a3[3]);
        v72 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v71);
        if (v72)
        {
          v73 = 0;
        }

        else
        {
          v168 = *(a1 + 440);
          if (v168)
          {
            v168(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          else
          {
            uarpLogError(8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          v73 = 58;
        }

        v178 = v70[3];
        *(v178 + 6) = uarpHtons(v73);
        *(v178 + 8) = a3[3];
        v179 = uarpTransmitBuffer2(a1, a2, v70);
        v4 = v179;
        if (!v72 || v179)
        {
          goto LABEL_372;
        }

        v180 = *(a1 + 448);
        if (v180)
        {
          v181 = *(a1 + 608);
          v182 = uarpEndpointRoleToString(*(a1 + 616));
          v180(v181, 6, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v182, a1, a2, v71);
        }

        else
        {
          v183 = uarpEndpointRoleToString(*(a1 + 616));
          uarpLogInfo(6u, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v183, a1, a2, v71);
        }

        if (fUarpLayer3DownstreamEndpointUnreachable(a1, a2))
        {
          goto LABEL_371;
        }

        v184 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v72 + 8));
        v185 = a1;
        v186 = 1655;
        goto LABEL_357;
      case 26:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v149 = a2[14];
        if (!v149)
        {
          goto LABEL_309;
        }

        while (!*(v149 + 40) || uarpNtohs(*v149[3]) != 25)
        {
          v149 = *v149;
          if (!v149)
          {
            goto LABEL_309;
          }
        }

        *(v149 + 40) = 0;
        *(v149 + 39) = *(v149 + 38);
LABEL_309:
        v165 = uarpHtons(a3[4]);
        v166 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v165);
        if (v166)
        {
          uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v166 + 8));
          fUarpLayer3DownstreamEndpointReleased(a1, a2);
          goto LABEL_371;
        }

        v167 = *(a1 + 440);
        if (v167)
        {
          v167(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        else
        {
          uarpLogError(8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        v4 = 58;
        goto LABEL_372;
      case 27:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v39 = uarpNtohs(a3[3]);
        v40 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v39);
        if (v40)
        {
          v41 = v40;
          sub_100042594(a1, a2, v39, 0);
          v24 = fUarpLayer3DownstreamEndpointRecvMessage(a1, a2, v41);
          goto LABEL_319;
        }

        v152 = *(a1 + 440);
        if (v152)
        {
          v152(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        else
        {
          uarpLogError(8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        v4 = 58;
        sub_100042594(a1, a2, v39, 58);
        goto LABEL_372;
      case 28:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v74 = a2[14];
        if (!v74)
        {
          goto LABEL_371;
        }

        while (!*(v74 + 40) || uarpNtohs(*v74[3]) != 27)
        {
          v4 = 0;
          v74 = *v74;
          if (!v74)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 29:
        v145 = uarpAllocPrepareTransmitBuffer2(a1, a2, 30, 8u, 0);
        if (!v145)
        {
          goto LABEL_282;
        }

        v146 = v145;
        v147 = v145[3];
        *(v147 + 6) = uarpHtons(0);
        v4 = uarpTransmitBuffer2(a1, a2, v146);
        if (!v4)
        {
          fUarpLayer3NoFirmwareUpdateAvailable(a1, a2);
        }

        goto LABEL_372;
      case 30:
        v74 = a2[14];
        if (!v74)
        {
          goto LABEL_371;
        }

        while (!*(v74 + 40) || uarpNtohs(*v74[3]) != 29)
        {
          v4 = 0;
          v74 = *v74;
          if (!v74)
          {
            goto LABEL_372;
          }
        }

LABEL_266:
        v4 = 0;
        *(v74 + 40) = 0;
        *(v74 + 39) = *(v74 + 38);
        goto LABEL_372;
      case 31:
        v91 = uarpAllocPrepareTransmitBuffer2(a1, a2, 32, (2 * *(a1 + 664) + 10) & 0xFFFE, 0);
        if (!v91)
        {
          goto LABEL_282;
        }

        v92 = v91;
        v93 = v91[3];
        *(v93 + 6) = uarpHtons(0);
        *(v93 + 8) = uarpHtons(*(a1 + 664));
        if (*(a1 + 664))
        {
          v94 = 0;
          v95 = 0;
          v96 = v93 + 10;
          do
          {
            *(v96 + 2 * v95++) = uarpHtons(*(*(a1 + 672) + v94));
            v94 += 16;
          }

          while (v95 < *(a1 + 664));
        }

LABEL_211:
        v126 = a1;
        v127 = a2;
        v128 = v92;
        goto LABEL_318;
      case 32:
        v42 = a4 >= 0xA;
        v129 = a4 - 10;
        if (!v42)
        {
          goto LABEL_303;
        }

        v130 = a2[14];
        if (!v130)
        {
          goto LABEL_302;
        }

        while (!*(v130 + 40) || uarpNtohs(*v130[3]) != 31)
        {
          v130 = *v130;
          if (!v130)
          {
            goto LABEL_302;
          }
        }

        *(v130 + 40) = 0;
        *(v130 + 39) = *(v130 + 38);
LABEL_302:
        v161 = uarpNtohs(a3[4]);
        if (v129 < 2 * v161)
        {
          goto LABEL_303;
        }

        v162 = a3 + 5;
        if (v161)
        {
          v163 = v161;
          v164 = v162;
          do
          {
            *v164 = uarpHtons(*v164);
            ++v164;
            --v163;
          }

          while (v163);
        }

        UARPLayer2EndpointIDs(a1, a2);
        goto LABEL_371;
      case 33:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v47 = uarpHtons(a3[3]);
        v48 = v47;
        v49 = *(a1 + 672);
        v50 = *(a1 + 664);
        if (!*(a1 + 664))
        {
          goto LABEL_89;
        }

        v51 = *(a1 + 672);
        while (*v51 != v47)
        {
          v51 += 8;
          if (!--v50)
          {
LABEL_89:
            v52 = 0;
            goto LABEL_277;
          }
        }

        v52 = v51[1];
        v49 = v51;
LABEL_277:
        v153 = uarpAllocPrepareTransmitBuffer2(a1, a2, 34, (4 * v52 + 12) & 0xFFFC, 0);
        if (!v153)
        {
LABEL_282:
          v4 = 11;
          goto LABEL_372;
        }

        v154 = v153;
        v155 = v153[3];
        v155[3] = uarpHtons(0);
        v155[4] = uarpHtons(v48);
        v155[5] = uarpHtons(v52);
        if (v52)
        {
          v156 = 0;
          do
          {
            *&v155[v156 + 6] = *(*(v49 + 1) + v156 * 2);
            v156 += 2;
          }

          while (2 * v52 != v156);
        }

        v126 = a1;
        v127 = a2;
        v128 = v154;
LABEL_318:
        v24 = uarpTransmitBuffer2(v126, v127, v128);
        goto LABEL_319;
      case 34:
        v42 = a4 >= 0xC;
        v43 = a4 - 12;
        if (!v42)
        {
          goto LABEL_303;
        }

        v44 = a2[14];
        if (!v44)
        {
          goto LABEL_287;
        }

        while (!*(v44 + 40) || uarpNtohs(*v44[3]) != 33)
        {
          v44 = *v44;
          if (!v44)
          {
            goto LABEL_287;
          }
        }

        *(v44 + 40) = 0;
        *(v44 + 39) = *(v44 + 38);
LABEL_287:
        uarpNtohs(a3[4]);
        if (v43 < 2 * uarpNtohs(a3[5]))
        {
LABEL_303:
          v4 = 8;
        }

        else
        {
          UARPLayer2EndpointIDComponents(a1, a2);
LABEL_371:
          v4 = 0;
        }

        goto LABEL_372;
      case 35:
        if (a4 < 0x10)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        v28 = *(a3 + 3);
        v194 = *(a3 + 2);
        v29 = uarpHtonl(v28);
        if (v29 >> 30)
        {
          goto LABEL_303;
        }

        v30 = v29;
        v31 = 4 * v29;
        if (v31 > a4 - 16)
        {
          goto LABEL_303;
        }

        v32 = uarpAllocPrepareTransmitBuffer2(a1, a2, 36, (4 * v29 + 18), 0);
        if (!v32)
        {
          goto LABEL_282;
        }

        v33 = v32;
        v34 = v32[3];
        *(v34 + 6) = uarpHtons(0);
        *(v34 + 8) = a3[3];
        *(v34 + 10) = *(a3 + 2);
        *(v34 + 14) = *(a3 + 3);
        memcpy((v34 + 18), a3 + 8, v31);
        v4 = uarpTransmitBuffer2(a1, a2, v33);
        if (v4)
        {
          goto LABEL_372;
        }

        v193[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v193, v31, 56797, 2292);
        if (v4)
        {
          goto LABEL_372;
        }

        if (v30)
        {
          v35 = 0;
          do
          {
            v36 = uarpNtohl(*&a3[v35 + 8]);
            *(v193[0] + v35 * 2) = v36;
            v35 += 2;
          }

          while (2 * v30 != v35);
        }

        UARPLayer2EndpointBulkInformationQuery(a1, a2);
        v184 = v193[0];
        v185 = a1;
        v186 = 2313;
LABEL_357:
        UARPLayer2ReturnBuffer(v185, v184, 56797, v186);
        goto LABEL_371;
      case 36:
        if (a4 < 0x12)
        {
          goto LABEL_303;
        }

        v37 = a2[14];
        if (!v37)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v37 + 40))
          {
            if (uarpNtohs(*v37[3]) == 35)
            {
              v38 = v37[3];
              if (*(v38 + 6) == a3[4] && uarp4ccCompare((v38 + 8), a3 + 10))
              {
                goto LABEL_273;
              }
            }
          }

          v4 = 0;
          v37 = *v37;
          if (!v37)
          {
            goto LABEL_372;
          }
        }

      case 37:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        LODWORD(v193[0]) = *(a3 + 2);
        uarpNtohs(a3[1]);
        v25 = uarpAllocPrepareTransmitBuffer2(a1, a2, 38, 0xEu, 0);
        if (!v25)
        {
          goto LABEL_282;
        }

        v26 = v25;
        v27 = v25[3];
        *(v27 + 6) = uarpHtons(0);
        *(v27 + 8) = a3[3];
        *(v27 + 10) = *(a3 + 2);
        v4 = uarpTransmitBuffer2(a1, a2, v26);
        if (!v4)
        {
          UARPLayer2EndpointBulkInformationResponse(a1, a2);
        }

        goto LABEL_372;
      case 38:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v37 = a2[14];
        if (!v37)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v37 + 40))
          {
            if (uarpNtohs(*v37[3]) == 37)
            {
              v148 = v37[3];
              if (*(v148 + 6) == a3[4] && uarp4ccCompare((v148 + 8), a3 + 10))
              {
                break;
              }
            }
          }

          v4 = 0;
          v37 = *v37;
          if (!v37)
          {
            goto LABEL_372;
          }
        }

LABEL_273:
        v4 = 0;
        *(v37 + 40) = 0;
        *(v37 + 39) = *(v37 + 38);
        goto LABEL_372;
      default:
        if (v12 != 0xFFFF)
        {
          goto LABEL_372;
        }

        if (a4 < 0xB)
        {
          goto LABEL_303;
        }

        v23 = a2[14];
        if (!v23)
        {
          goto LABEL_38;
        }

        break;
    }

    while (!*(v23 + 40) || uarpNtohs(*v23[3]) != 0xFFFF || !UARPLayer2VendorSpecificCheckExpectedResponse(a1, a2))
    {
      v23 = *v23;
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    *(v23 + 40) = 0;
    *(v23 + 39) = *(v23 + 38);
LABEL_38:
    uarpNtohs(*(a3 + 9));
    v24 = UARPLayer2VendorSpecificRecvMessage(a1, a2);
LABEL_319:
    v4 = v24;
LABEL_372:
    *(a1 + 644) = 0;
    uarpTransmitQueueReclaimEntries(a1, a2);
    uarpTransmitQueueService(a1, a2);
    uarpPlatformGarbageCollection();
  }

  return v4;
}

uint64_t sub_100042594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  result = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  if (result)
  {
    result = uarpAllocPrepareTransmitBuffer2(a1, a2, 28, 0xAu, 0);
    if (result)
    {
      v9 = result;
      v10 = *(result + 24);
      *(v10 + 6) = uarpHtons(v4);
      *(v10 + 8) = uarpHtons(v5);

      return uarpTransmitBuffer2(a1, a2, v9);
    }
  }

  return result;
}

uint64_t uarpCompressionHeaderEndianSwap(unsigned __int16 *a1, uint64_t a2)
{
  *a2 = uarpHtons(*a1);
  *(a2 + 2) = uarpHtonl(*(a1 + 1));
  *(a2 + 6) = uarpHtons(a1[3]);
  result = uarpHtons(a1[4]);
  *(a2 + 8) = result;
  return result;
}

char *uarpAssetTagChdr4cc()
{
  result = aChdr;
  aChdr[4] = 0;
  return result;
}

int *uarpAssetTagStructChdr()
{
  aChdr[4] = 0;
  result = &dword_100099888;
  dword_100099888 = *aChdr;
  return result;
}

uint64_t uarpPayloadTagUnpack(uint64_t result, char *a2)
{
  v2 = result >> 8;
  v3 = WORD1(result);
  if (result)
  {
    v4 = result;
  }

  else
  {
    v4 = 48;
  }

  if (!result)
  {
    LOBYTE(v2) = 48;
    LOBYTE(v3) = 48;
  }

  *a2 = v4;
  a2[1] = v2;
  if (result)
  {
    v5 = BYTE3(result);
  }

  else
  {
    v5 = 48;
  }

  a2[2] = v3;
  a2[3] = v5;
  return result;
}

_BYTE *uarpPayloadTagStructPack(_BYTE *result, _BYTE *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[2];
  a2[3] = result[3];
  return result;
}

_BYTE *uarpPayloadTagStructUnpack(_BYTE *result, _BYTE *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[2];
  a2[3] = result[3];
  return result;
}

uint64_t uarpVersionCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 > *a2)
  {
    return 2;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 > v4)
  {
    return 2;
  }

  if (v3 < v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 > v6)
  {
    return 2;
  }

  if (v5 < v6)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  v9 = v7 >= v8;
  v10 = v7 == v8;
  v11 = v7 < v8;
  if (!v10 && v9)
  {
    return 2;
  }

  else
  {
    return v11;
  }
}

uint64_t uarpAssetCompare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 46) == *(a2 + 46) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 50) == *(a2 + 50) && *(a1 + 51) == *(a2 + 51) && *(a1 + 68) == *(a2 + 68) && *(a1 + 448) == *(a2 + 448))
  {
    return uarpVersionCompare((a1 + 52), (a2 + 52));
  }

  else
  {
    return 3;
  }
}

uint64_t uarpVersionEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpNtohl(*a1);
  a2[1] = uarpNtohl(a1[1]);
  a2[2] = uarpNtohl(a1[2]);
  result = uarpNtohl(a1[3]);
  a2[3] = result;
  return result;
}

const char *uarpStatusCodeToString(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100082018)[a1];
  }
}

int *uarpAssetTagStructSuperBinary()
{
  result = &dword_10009988C;
  dword_10009988C = 0;
  return result;
}

const char *uarpApplyFlagsToString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100082228)[a1 - 1];
  }
}

const char *uarpProcessingFlagsReasonToString(int a1)
{
  HIDWORD(v2) = a1 - 256;
  LODWORD(v2) = a1 - 256;
  v1 = v2 >> 8;
  if (v1 > 0xE)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100082258)[v1];
  }
}

const char *uarpProcessingStatusToString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_1000822D0)[(a1 - 1)];
  }
}

__int128 *uarpStageStatusToString(unsigned __int16 a1)
{
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      result = xmmword_100099890;
      strcpy(xmmword_100099890, "Upload Complete");
      return result;
    }

    if (a1 == 2)
    {
      v1 = "Upload Denied";
      goto LABEL_13;
    }

LABEL_12:
    v1 = "<unknown>";
    goto LABEL_13;
  }

  if (a1 == 5)
  {
    v1 = "Asset Not Found";
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    v1 = "Asset Corrupt";
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    goto LABEL_12;
  }

  v1 = "Upload Abandoned";
LABEL_13:
  v3 = uarpProcessingFlagsReasonToString(a1 & 0xFF00);
  snprintf(xmmword_100099890, 0x100uLL, "%s (%s)", v1, v3);
  return xmmword_100099890;
}

const char *uarpEndpointRoleToString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100082340)[a1];
  }
}

const char *uarpLoggingCategoryToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_1000822F8)[a1];
  }
}

void *uarpProcessPayloadTLVInternal(void *result, uint64_t a2, uint64_t a3, uint64_t a4, size_t __size, unsigned __int16 *a6)
{
  v10 = result;
  if (a4 != -858619624)
  {
    v11 = a4;
    if (a4 == -858619625)
    {
      if (__size == 2)
      {
        v12 = uarpNtohs(*a6);
        *(a3 + 76) = v12;
        UARPLayer2HashInfo(v10, v12, (a3 + 88), (a3 + 104));
        v13 = *(a3 + 88);
        if (!v13 || !UARPLayer2RequestBuffer(v10, (a3 + 80), v13, 34952, 850) && *(a3 + 80))
        {
          v14 = *(a3 + 104);
          if (!v14 || !UARPLayer2RequestBuffer(v10, (a3 + 96), v14, 34952, 866) && *(a3 + 96))
          {
            v18 = *(a3 + 76);
            v19 = *(a3 + 80);

            return UARPLayer2HashInit(v10, v18, v19);
          }
        }

        *(a3 + 76) = 0;
      }

LABEL_11:

      return UARPLayer2AssetCorrupt(v10, a2);
    }

    if (*(a3 + 76))
    {
      v21 = uarpHtonl(a4);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v21, 4);
      v20 = uarpHtonl(__size);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v20, 4);
      result = UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), a6, __size);
    }

    if (v11 > -858619631)
    {
      if (v11 == -858619630)
      {
        if (__size == 2)
        {
          result = uarpNtohs(*a6);
          *(a3 + 56) = result;
          return result;
        }
      }

      else
      {
        if (v11 != -858619623)
        {
          return result;
        }

        if (__size == 4)
        {
          result = uarpNtohl(*a6);
          *(a3 + 128) = result;
          return result;
        }
      }
    }

    else if (v11 == -858619641)
    {
      *(a3 + 72) = __size;
      if (!UARPLayer2RequestBuffer(v10, (a3 + 64), __size, 34952, 966))
      {
        v17 = *(a3 + 64);
        if (v17)
        {
          return memcpy(v17, a6, *(a3 + 72));
        }
      }
    }

    else
    {
      if (v11 != -858619636)
      {
        return result;
      }

      if (__size == 4)
      {
        result = uarpNtohl(*a6);
        if (result)
        {
          *(a3 + 52) = 1;
          if (!*(a2 + 656))
          {
            result = UARPLayer2RequestBuffer(v10, (a2 + 656), *(a2 + 648), 34952, 942);
            if (*(a2 + 656))
            {
              *(a2 + 664) = *(a2 + 648);
              *(a2 + 668) = 0;
            }
          }

          return result;
        }
      }
    }

    return UARPLayer2AssetCorrupt(v10, a2);
  }

  *(a3 + 120) = __size;
  if (UARPLayer2RequestBuffer(result, (a3 + 112), __size, 34952, 887))
  {
    goto LABEL_11;
  }

  v15 = *(a3 + 112);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = *(a3 + 120);

  return memcpy(v15, a6, v16);
}

uint64_t uarpAssetSuperBinaryVersionForProtocolVersion(unsigned int a1)
{
  if (a1 < 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t uarpDownstreamEndpointGetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 120);
    }
  }

  return result;
}

void uarpPrintDataResponseDetails(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7)
{
  v12 = *(a1 + 448);
  if (v12)
  {
    v13 = *(a1 + 608);
    v14 = *(a1 + 616);
    if (v14 > 2)
    {
      v15 = "<unknown>";
    }

    else
    {
      v15 = (&off_100082340)[v14];
    }

    v18 = uarpStatusCodeToString(a4);
    v12(v13, 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v15, v18, a5, a6, a7);
  }

  else
  {
    v16 = *(a1 + 616);
    if (v16 > 2)
    {
      v17 = "<unknown>";
    }

    else
    {
      v17 = (&off_100082340)[v16];
    }

    v19 = uarpStatusCodeToString(a4);
    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v17, v19, a5, a6, a7);
  }

  v20 = *(a1 + 448);
  if (v20)
  {
    v21 = *(a1 + 616);
    if (v21 > 2)
    {
      v22 = "<unknown>";
    }

    else
    {
      v22 = (&off_100082340)[v21];
    }

    v20(*(a1 + 608), 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v22, *(a3 + 88), *(a3 + 92));
  }

  else
  {
    v23 = *(a1 + 616);
    if (v23 > 2)
    {
      v24 = "<unknown>";
    }

    else
    {
      v24 = (&off_100082340)[v23];
    }

    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v24, *(a3 + 88), *(a3 + 92));
  }
}

uint64_t uarpCopyDefaultInfoString(_DWORD *a1, uint64_t a2)
{
  if (a2 < 7)
  {
    return 0;
  }

  *(a1 + 3) = 1314344782;
  *a1 = 1313558101;
  return a2;
}

uint64_t uarpMessageAdjustedForEndpointID(unsigned __int16 *a1, unsigned int a2, _WORD *a3, void *a4, unsigned int *a5)
{
  result = 30;
  if (a2 >= 6 && a1 && a3 && a4 && a5)
  {
    v10 = a2;
    if (uarpNtohs(*a1) == 27)
    {
      v11 = v10 >= 8;
      v10 -= 8;
      if (!v11)
      {
        return 30;
      }

      *a3 = uarpNtohs(a1[3]);
      *a4 = a1 + 4;
    }

    else
    {
      *a3 = 0;
      *a4 = a1;
    }

    result = 0;
    *a5 = v10;
  }

  return result;
}

const char *uarpMessageTypeToString(__int16 a1)
{
  if ((a1 + 1) > 0x27u)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100082358)[(a1 + 1)];
  }
}

void *uarpAllocateTransmitBuffer2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = 0;
  v6 = UARPLayer2RequestBuffer(a1, &v12, 0x48uLL, 61166, 61);
  result = 0;
  if (!v6)
  {
    v8 = *a2 + *(a2 + 30) + 26;
    if (v8 <= a3)
    {
      v8 = a3;
    }

    v11 = v8;
    if (UARPLayer2RequestTransmitMsgBuffer(a1, a2, v12 + 1, &v11, 61166, 95))
    {
      UARPLayer2ReturnBuffer(a1, v12, 61166, 101);
      return 0;
    }

    else
    {
      v9 = v11;
      result = v12;
      *(v12 + 4) = v11;
      v10 = *(a2 + 30);
      result[3] = result[1] + v10;
      *(result + 8) = v9 - v10;
      *(result + 18) = 0;
    }
  }

  return result;
}

void *uarpAllocPrepareTransmitBuffer2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v7 = a3;
  v10 = *(a2 + 104);
  if (v10)
  {
    *(a2 + 104) = *v10;
    v11 = *(v10 + 8);
    if (v11 >= a4)
    {
      goto LABEL_6;
    }

    UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v10[1], 61166, 128);
    UARPLayer2ReturnBuffer(a1, v10, 61166, 133);
  }

  TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, a4);
  v10 = TransmitBuffer2;
  if (!TransmitBuffer2)
  {
    return v10;
  }

  v11 = *(TransmitBuffer2 + 8);
LABEL_6:
  *(v10 + 18) = a4;
  *(v10 + 40) = a5;
  if (a5)
  {
    v13 = *(a2 + 18) + 1;
  }

  else
  {
    v13 = 1;
  }

  *(v10 + 39) = v13;
  *(v10 + 32) = *(a2 + 16);
  bzero(v10[3], v11);
  v14 = uarpHtons(v7);
  v15 = v10[3];
  *v15 = v14;
  v15[1] = a4 - 6;
  v16 = uarpHtons((a4 - 6));
  v17 = v10[3];
  *(v17 + 2) = v16;
  *(v17 + 4) = 0;
  return v10;
}

uint64_t uarpAllocateTransmitBuffers(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 34))
  {
    v4 = 0;
    do
    {
      TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, 0);
      bzero(TransmitBuffer2[1], *(TransmitBuffer2 + 4));
      *(TransmitBuffer2 + 42) = 0;
      *(TransmitBuffer2 + 9) = 0;
      *(TransmitBuffer2 + 40) = 0;
      TransmitBuffer2[6] = 0;
      TransmitBuffer2[7] = 0;
      *(TransmitBuffer2 + 32) = 0;
      *TransmitBuffer2 = *(a2 + 104);
      *(a2 + 104) = TransmitBuffer2;
      ++v4;
    }

    while (v4 < *(a2 + 34));
  }

  return 0;
}

uint64_t uarpTransmitBuffer2(uint64_t a1, uint64_t a2, void *a3)
{
  UARPLayer2MonotonicClockTime(a1, a3 + 6);
  *a3 = 0;
  v6 = (a2 + 112);
  for (i = *(a2 + 112); i; i = *i)
  {
    v6 = i;
  }

  *v6 = a3;
  if (!*(a2 + 54))
  {
    uarpTransmitQueueService(a1, a2);
  }

  return 0;
}

uint64_t uarpTransmitQueueService(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 644) == 1)
  {
    return 0;
  }

  v15[11] = v2;
  v15[12] = v3;
  UARPLayer2WatchdogCancel(a1, a2);
  v15[0] = 0;
  v6 = UARPLayer2MonotonicClockTime(a1, v15);
  v7 = *(a2 + 112);
  if (!v7)
  {
    uarpTransmitQueueReclaimEntries(v6, a2);
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (*(v7 + 42) == 1)
    {
      goto LABEL_5;
    }

    v10 = v7[3];
    if (!v10)
    {
      v11 = *(a1 + 440);
      if (v11)
      {
        v6 = v11(*(a1 + 608), 6, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      else
      {
        uarpLogError(6, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      goto LABEL_5;
    }

    v6 = uarpNtohs(*v10);
    if (v6 != 0xFFFF)
    {
      break;
    }

    v6 = UARPLayer2VendorSpecificCheckValidToSend(a1, a2);
    if (v6)
    {
      goto LABEL_17;
    }

LABEL_5:
    *(v7 + 38) = *(v7 + 39) + 1;
    v7[7] = v15[0];
LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_26;
    }
  }

  if (v6 == 3)
  {
    v6 = uarpNtohl(*(v7[3] + 6));
    if (v6 == 9 && *(a2 + 48) <= 2u)
    {
      v6 = UARPLayer2FriendlyNameResponse(a1, a2);
      goto LABEL_5;
    }
  }

LABEL_17:
  v12 = v15[0];
  if (v15[0] && v15[0] - v7[7] < ((8389 * (*(v7 + 32) >> 3)) >> 20))
  {
    goto LABEL_6;
  }

  v13 = *(v7 + 38);
  if (v13 >= *(v7 + 39))
  {
    goto LABEL_6;
  }

  *(v7 + 38) = v13 + 1;
  v7[7] = v12;
  *(v7[3] + 4) = uarpHtons(*(a2 + 62));
  ++*(a2 + 62);
  UARPLayer2SendMessage(a1, a2, v7[1], *(a2 + 30) + *(v7 + 18));
  v6 = UARPLayer2LogPacket(a1, a2);
  if (*(v7 + 40) == 1)
  {
    v9 = 1;
  }

  if (++v8 < *(a2 + 20) || !*(v7 + 40))
  {
    goto LABEL_6;
  }

LABEL_26:
  uarpTransmitQueueReclaimEntries(v6, a2);
  if (v8 >= 1 && v9 == 1)
  {
    UARPLayer2WatchdogSet(a1, a2);
  }

  return 0;
}

void uarpTransmitQueueReclaimEntries(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 104);
    while (1)
    {
      v6 = *v3;
      *v3 = 0;
      if (!*(v3 + 40) && *(v3 + 38) >= *(v3 + 39))
      {
        break;
      }

      if (v4)
      {
        v7 = v4;
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
        goto LABEL_11;
      }

      v4 = v3;
LABEL_12:
      v3 = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    bzero(v3[1], *(v3 + 4));
    *(v3 + 42) = 0;
    *(v3 + 9) = 0;
    *(v3 + 40) = 0;
    v3[6] = 0;
    v3[7] = 0;
    *(v3 + 32) = 0;
    *v3 = *v5;
    v8 = (a2 + 104);
LABEL_11:
    *v8 = v3;
    goto LABEL_12;
  }

  v4 = 0;
LABEL_15:
  *(a2 + 112) = v4;
}

void uarpTransmitQueuesCleanup(uint64_t a1, uint64_t a2)
{
  UARPLayer2WatchdogCancel(a1, a2);
  v4 = *(a2 + 104);
  *(a2 + 104) = 0;
  if (v4)
  {
    do
    {
      v5 = *v4;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v4[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v4, 61166, 133);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v6)
  {
    do
    {
      v7 = *v6;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v6[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v6, 61166, 133);
      v6 = v7;
    }

    while (v7);
  }
}

void uarpTransmitQueueAssetRescinded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a2 + 112);
    while (v3)
    {
      if (uarpNtohs(*v3[3]) == 6)
      {
        v5 = uarpNtohs(*(v3[3] + 6));
        if (!a3 || v5 == *(a3 + 44))
        {
          *(v3 + 42) = 1;
          v3 = *v3;
        }
      }
    }
  }
}

void uarpTransmitQueuePurge(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v2)
  {
    do
    {
      v4 = *v2;
      bzero(v2[1], *(v2 + 4));
      *(v2 + 42) = 0;
      *(v2 + 9) = 0;
      *(v2 + 40) = 0;
      v2[6] = 0;
      v2[7] = 0;
      *(v2 + 32) = 0;
      *v2 = *(a2 + 104);
      *(a2 + 104) = v2;
      v2 = v4;
    }

    while (v4);
  }
}

uint64_t uarpPlatformDarwinDecompressBuffer(int a1, const uint8_t *__src, size_t src_size, uint8_t *__dst, size_t __n)
{
  result = 50;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = COMPRESSION_LZBITMAP;
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v7 = COMPRESSION_LZ4;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v7 = 1538;
LABEL_11:
    if (compression_decode_buffer(__dst, __n, __src, src_size, 0, v7) == __n)
    {
      return 0;
    }

    else
    {
      return 51;
    }
  }

  if (src_size != __n)
  {
    return 51;
  }

  memcpy(__dst, __src, __n);
  return 0;
}

uint64_t uarpPlatformDarwinHashInfo(uint64_t result, _DWORD *a2, int *a3)
{
  v3 = result - 1;
  if ((result - 1) > 2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *&aH[4 * v3];
    v5 = 16 * v3 + 32;
  }

  *a2 = v4;
  *a3 = v5;
  return result;
}

uint64_t uarpPlatformDarwinHashInit(uint64_t result, CC_SHA512_CTX *c)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Init(c);
    case 2:
      return CC_SHA384_Init(c);
    case 1:
      return CC_SHA256_Init(c);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashUpdate(uint64_t result, CC_SHA512_CTX *c, void *data, CC_LONG len)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Update(c, data, len);
    case 2:
      return CC_SHA384_Update(c, data, len);
    case 1:
      return CC_SHA256_Update(c, data, len);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashFinal(uint64_t result, CC_SHA512_CTX *a2, unsigned __int8 *md, int a4)
{
  if (result == 2)
  {
    if (a4 == 48)
    {
      return CC_SHA384_Final(md, a2);
    }
  }

  else if (result == 1)
  {
    if (a4 == 32)
    {
      return CC_SHA256_Final(md, a2);
    }
  }

  else if (result == 3 && a4 == 64)
  {
    return CC_SHA512_Final(md, a2);
  }

  return result;
}

void uarpLogError(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v2 = a1;
  vsnprintf(byte_100099990, 0x200uLL, __format, va);
  v3 = sub_100043BA8(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000541BC(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

void *sub_100043BA8(unsigned int a1)
{
  for (i = 0; i != 9; ++i)
  {
    v3 = uarpLoggingCategoryToString(i);
    qword_10009A990[i] = os_log_create("com.apple.uarp.embedded", v3);
  }

  if (a1 <= 8)
  {
    return qword_10009A990[a1];
  }

  else
  {
    return &_os_log_default;
  }
}

void uarpLogDebug(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_100099B90, 0x200uLL, __format, va);
  v3 = sub_100043BA8(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100054234(v3);
  }
}

void uarpLogInfo(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_100099D90, 0x200uLL, __format, va);
  v3 = sub_100043BA8(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = byte_100099D90;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }
}

void uarpLogFault(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_100099F90, 0x200uLL, __format, va);
  v3 = sub_100043BA8(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000542B8(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

void uarpPlatformDarwinLogError(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vsnprintf(byte_10009A190, 0x200uLL, a3, va);
  v9 = sub_100043BA8(a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100054330(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

void uarpPlatformDarwinLogInfo(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vsnprintf(byte_10009A390, 0x200uLL, a3, va);
  v9 = sub_100043BA8(a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = byte_10009A390;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }
}

void uarpPlatformDarwinLogDebug(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vsnprintf(byte_10009A590, 0x200uLL, a3, va);
  v9 = sub_100043BA8(a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000543A8(v9);
  }
}

void uarpPlatformDarwinLogFault(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vsnprintf(byte_10009A790, 0x200uLL, a3, va);
  v9 = sub_100043BA8(a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_10005442C(v9);
  }
}

void sub_100043FB4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t UARPSuperBinarySetupHeader(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4, int a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  result = 30;
  if (a3 >= 2)
  {
    if (v9)
    {
      v16 = 0x2C00000002;
      v18 = *a4;
      v20 = 0x2C00000000;
      v21 = 40 * a5;
      v19 = 40 * a5 + 44;
      v17 = v19;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v16, 44, 0);
      if (!result)
      {
        if (a5)
        {
          v11 = 44;
          while (1)
          {
            v15 = 0;
            v14 = 0u;
            v13 = 0u;
            v12 = 40;
            result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v12, 40, v11);
            if (result)
            {
              break;
            }

            v11 = (v11 + 40);
            if (!--a5)
            {
              return 0;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddMetaData(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  v16 = 0;
  LOWORD(__dst[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &v16, 4, 0, __dst);
  v12 = result;
  if (LOWORD(__dst[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(__dst[0]) != 4)
  {
    return result;
  }

  if (v16 < 2)
  {
    return 30;
  }

  memset(__dst, 0, 44);
  v18 = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, __dst, 44, 0, &v18);
  if (!result)
  {
    if (v18 == 44)
    {
      v14 = HIDWORD(__dst[1]);
      v15 = __dst[2];
      v17[0] = uarpHtonl(a3);
      v17[1] = uarpHtonl(a4);
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 8, (v15 + v14));
      if (!result)
      {
        LODWORD(__dst[2]) += 8;
        DWORD2(__dst[0]) += 8;
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a5, a4, (HIDWORD(__dst[1]) + LODWORD(__dst[2])));
        if (!result)
        {
          LODWORD(__dst[2]) += a4;
          DWORD2(__dst[0]) += a4;
          return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, __dst, 44, 0);
        }
      }
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryPreparePayload(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, _OWORD *a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v16[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v16);
  v12 = result;
  if (LOWORD(v16[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v16[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v19 = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v16, 44, 0, &v19);
  if (!result)
  {
    if (v19 != 44)
    {
      return 11;
    }

    v14 = (DWORD1(v16[2]) + 40 * a3);
    result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 40, v14, &v19);
    if (!result)
    {
      if (v19 == 40)
      {
        DWORD1(v17[0]) = uarpTagStructPack32(a4);
        *(v17 + 8) = *a5;
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 40, v14);
      }

      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadMetaData(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v11 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v11)
  {
    return 30;
  }

  v12 = v11;
  __dst = 0;
  LOWORD(v21[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v11, &__dst, 4, 0, v21);
  v14 = result;
  if (LOWORD(v21[0]) == 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v15;
  }

  if (v14 || LOWORD(v21[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, v21, 44, 0, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 44)
  {
    return 11;
  }

  v16 = (DWORD1(v21[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, &v22, 40, v16, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 40)
  {
    return 11;
  }

  v17 = DWORD2(v23);
  if (!DWORD2(v23))
  {
    v17 = DWORD2(v21[0]);
    DWORD2(v23) = DWORD2(v21[0]);
  }

  v18 = HIDWORD(v23);
  v20[0] = uarpHtonl(a4);
  v20[1] = uarpHtonl(a5);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v20, 8, (v18 + v17));
  if (!result)
  {
    HIDWORD(v23) += 8;
    DWORD2(v21[0]) += 8;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, a6, a5, (DWORD2(v23) + HIDWORD(v23)));
    if (!result)
    {
      HIDWORD(v23) += a5;
      DWORD2(v21[0]) += a5;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, &v22, 40, v16);
      if (!result)
      {
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v21, 44, 0);
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadDataLarge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = a3;
  v10 = 0;
  while (a5)
  {
    if (a5 >= 0xFFFF)
    {
      v11 = 0xFFFF;
    }

    else
    {
      v11 = a5;
    }

    result = UARPSuperBinaryAddPayloadData(a1, a2, v7, a4 + v10, v11);
    v10 += v11;
    a5 -= v11;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t UARPSuperBinaryAddPayloadData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (HIWORD(a5))
  {
    return 39;
  }

  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v17[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v17);
  v12 = result;
  if (LOWORD(v17[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v17[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v20 = 0;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 44, 0, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 44)
  {
    return 11;
  }

  v14 = (DWORD1(v17[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v18, 40, v14, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 40)
  {
    return 11;
  }

  v15 = v19;
  if (!v19)
  {
    v15 = DWORD2(v17[0]);
    LODWORD(v19) = DWORD2(v17[0]);
  }

  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a4, a5, (HIDWORD(v19) + v15));
  if (!result)
  {
    HIDWORD(v19) += a5;
    DWORD2(v17[0]) += a5;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v18, 40, v14);
    if (!result)
    {
      return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 44, 0);
    }
  }

  return result;
}

uint64_t UARPSuperBinaryFinalizeHeader(uint64_t a1, uint64_t a2)
{
  v3 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v3)
  {
    return 30;
  }

  v4 = v3;
  v12 = 0;
  __dst = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v3, &__dst, 4, 0, &v12);
  if (result)
  {
    return result;
  }

  if (v12 != 4)
  {
    return 11;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v16 = 0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v4, v13, 44, 0, &v16);
  if (result)
  {
    return result;
  }

  if (v16 != 44)
  {
    return 11;
  }

  v6 = v13[0];
  v7 = v13[1];
  *(v4 + 28) = *(&v13[1] + 12);
  *v4 = v6;
  *(v4 + 16) = v7;
  uarpSuperBinaryHeaderEndianSwap(v13, v13);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v4, v13, 44, 0);
  if (!result)
  {
    v8 = *(v4 + 40);
    if (v8 >= 0x28)
    {
      v9 = v8 / 0x28;
      v10 = *(v4 + 36);
      do
      {
        result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v4, v14, 40, v10, &v16);
        if (result)
        {
          break;
        }

        if (v16 != 40)
        {
          return 11;
        }

        uarpPayloadHeaderEndianSwap(v14, v14);
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v4, v14, 40, v10);
        if (result)
        {
          break;
        }

        v10 = (v10 + 40);
        --v9;
      }

      while (v9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpSuperBinaryHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = uarpHtonl(a1[1]);
  a2[2] = uarpHtonl(a1[2]);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  a2[9] = uarpHtonl(a1[9]);
  result = uarpHtonl(a1[10]);
  a2[10] = result;
  return result;
}

uint64_t uarpPayloadHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  v4 = uarpHtonl(*a1);
  v6 = a1[1];
  v5 = a1[2];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = uarpHtonl(v5);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

uint64_t uarpPayloadHeader2EndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = a1[1];
  uarpVersionEndianSwap(a1 + 2, a2 + 2);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

uint64_t UARPSuperBinaryQueryAssetLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  memset(__dst, 0, 44);
  v5 = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, a2, __dst, 44, 0, &v5);
  if (!result)
  {
    if (v5 == 44)
    {
      uarpSuperBinaryHeaderEndianSwap(__dst, __dst);
      result = 0;
      *a3 = DWORD2(__dst[0]);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryPrepareDynamicAsset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 12) = a3;
  *(a2 + 20) = a4;
  *(a2 + 8) = 44;
  *a2 = 0x2C00000002;
  *(a2 + 28) = xmmword_100060AB0;
  *(a2 + 48) = a5;
  *(a2 + 448) = 0;
  *(a2 + 632) = 0;
  *(a2 + 720) = 0;
  *(a2 + 672) = 0u;
  return 0;
}

uint64_t UARPSuperBinaryAddSuperBinaryMetaData(uint64_t a1, uint64_t a2, int a3, unsigned int a4, const void *a5)
{
  v13 = 0;
  v9 = a4;
  UARPLayer2RequestBuffer(a1, &v13, a4 + 24, 39321, 827);
  v10 = v13;
  v11 = (v13 + 3);
  v13[1] = v13 + 3;
  *v10 = a3;
  *(v10 + 1) = a4;
  memcpy(v11, a5, v9);
  v10[2] = *(a2 + 720);
  *(a2 + 720) = v10;
  *(a2 + 8) += a4 + 8;
  *(a2 + 32) += a4 + 8;
  *(a2 + 46) |= 0x80u;
  return 0;
}

uint64_t UARPSuperBinaryAddPayload2(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, const void *a7, size_t a8, char a9)
{
  v21 = 0;
  UARPLayer2RequestBuffer(a1, &v21, 0xB8uLL, 39321, 881);
  v17 = v21;
  v21[22] = *(a2 + 632);
  *(a2 + 632) = v17;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[4] = 0;
  *v17 = 40;
  *(v17 + 1) = a4;
  v17[1] = a5;
  v17[2] = a6;
  *(v17 + 9) = a8;
  *(v17 + 7) = 0;
  *(v17 + 31) = a3;
  if (!a9)
  {
    __dst = 0;
    UARPLayer2RequestBuffer(a1, &__dst, a8, 39321, 906);
    v18 = __dst;
    v17[17] = __dst;
    memcpy(v18, a7, a8);
  }

  *(v17 + 148) = a9;
  *(v17 + 36) = a8;
  v17[21] = 0;
  *(a2 + 8) += a8 + 40;
  *(a2 + 40) += 40;
  *(a2 + 28) += 40;
  ++*(a2 + 448);
  return 0;
}

uint64_t UARPSuperBinaryAppendPayloadMetaData(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, const void *a6)
{
  v6 = *(a2 + 448);
  v7 = *(a2 + 632);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 11;
  }

  v14 = 1;
  while (*(v7 + 124) != a3)
  {
    v9 = 11;
    if (v14 < v6)
    {
      v7 = *(v7 + 176);
      ++v14;
      if (v7)
      {
        continue;
      }
    }

    return v9;
  }

  v18 = 0;
  UARPLayer2RequestBuffer(a1, &v18, a5 + 24, 39321, 950);
  v15 = v18;
  v16 = (v18 + 3);
  v18[1] = v18 + 3;
  *v15 = a4;
  *(v15 + 1) = a5;
  memcpy(v16, a6, a5);
  v9 = 0;
  v15[2] = *(v7 + 168);
  *(v7 + 168) = v15;
  *(v7 + 28) += a5 + 8;
  *(a2 + 8) += a5 + 8;
  *(a2 + 684) += a5 + 8;
  *(a2 + 46) |= 8u;
  return v9;
}

uint64_t UARPSuperBinaryAppendPayloadMetaDataBlob(uint64_t a1, uint64_t a2, int a3, const void *a4, size_t a5)
{
  v5 = *(a2 + 448);
  v6 = *(a2 + 632);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 11;
  }

  v12 = 1;
  result = 11;
  while (*(v6 + 124) != a3)
  {
    if (v12 < v5)
    {
      v6 = *(v6 + 176);
      ++v12;
      if (v6)
      {
        continue;
      }
    }

    return result;
  }

  if (*(v6 + 152))
  {
    return 27;
  }

  UARPLayer2ReturnBuffer(a1, 0, 39321, 1001);
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  UARPLayer2RequestBuffer(a1, 0, a5, 39321, 1010);
  memcpy(*(v6 + 152), a4, a5);
  result = 0;
  *(v6 + 160) = a5;
  *(v6 + 28) += a5;
  *(a2 + 8) += a5;
  *(a2 + 684) += a5;
  *(a2 + 46) |= 8u;
  return result;
}

uint64_t UARPSuperBinaryBuildMetaData(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4, unsigned int a5, unsigned int *a6)
{
  v8 = *a6;
  v9 = *a4;
  if (a3)
  {
    v11 = a3;
    while (1)
    {
      v12 = uarpNtohl(*v11);
      v13 = uarpNtohl(*(v11 + 4));
      v8 += *(v11 + 4) + 8;
      if (v8 > a5)
      {
        return 11;
      }

      *v9 = v12 | (v13 << 32);
      v14 = (v9 + 1);
      memcpy(v14, *(v11 + 8), *(v11 + 4));
      v9 = &v14[*(v11 + 4)];
      v11 = *(v11 + 16);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = 0;
    *a6 = v8;
    *a4 = v9;
  }

  return result;
}

uint64_t UARPSuperBinaryFinalizeDynamicAsset(uint64_t a1, uint64_t a2)
{
  uarpSuperBinaryHeaderEndianSwap(a2, a2);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, a2, 44, 0);
  if (!result)
  {
    uarpSuperBinaryHeaderEndianSwap(a2, a2);
    v5 = *(a2 + 4);
    v6 = *(a2 + 32);
    v7 = (a2 + 632);
    v8 = *(a2 + 448);
    if (v8)
    {
      v9 = 0;
      v10 = *(a2 + 40) + v5 + v6;
      v11 = v10 + *(a2 + 684);
      v12 = (a2 + 632);
      while (1)
      {
        v13 = *v12;
        v13[6] = v10;
        v13[8] = v11;
        uarpPayloadHeader2EndianSwap(v13, v13);
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v13, 40, v5);
        if (result)
        {
          break;
        }

        uarpPayloadHeader2EndianSwap(v13, v13);
        v5 = *v13 + v5;
        v10 += v13[7];
        v11 += v13[9];
        v12 = (v13 + 44);
        ++v9;
        v8 = *(a2 + 448);
        if (v9 >= v8)
        {
          v6 = *(a2 + 32);
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      if (v6)
      {
        __dst = 0;
        v28 = 0;
        result = UARPLayer2RequestBuffer(a1, &__dst, v6, 39321, 1127);
        if (result)
        {
          return result;
        }

        v27 = __dst;
        result = UARPSuperBinaryBuildMetaData(result, v14, *(a2 + 720), &v27, *(a2 + 32), &v28);
        if (result)
        {
          return result;
        }

        v15 = __dst;
        *(a2 + 672) = __dst;
        v16 = v28;
        *(a2 + 680) = v28;
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v15, v16, v5);
        if (result)
        {
          return result;
        }

        v5 = v16 + v5;
        v8 = *(a2 + 448);
      }

      if (!v8)
      {
        return 0;
      }

      v17 = 0;
      v18 = (a2 + 632);
      do
      {
        v19 = *v18;
        v20 = *(*v18 + 28);
        if (v20)
        {
          __dst = 0;
          v28 = 0;
          result = UARPLayer2RequestBuffer(a1, &__dst, v20, 39321, 1171);
          if (result)
          {
            return result;
          }

          v21 = __dst;
          v27 = __dst;
          v22 = *(v19 + 152);
          if (v22)
          {
            v21 = memcpy(__dst, v22, *(v19 + 160));
            v28 = *(v19 + 160);
          }

          result = UARPSuperBinaryBuildMetaData(v21, v22, *(v19 + 168), &v27, *(v19 + 28), &v28);
          if (result)
          {
            return result;
          }

          v23 = __dst;
          *(v19 + 152) = __dst;
          v24 = v28;
          *(v19 + 160) = v28;
          result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v23, v24, v5);
          if (result)
          {
            return result;
          }

          v5 = v24 + v5;
          v8 = *(a2 + 448);
        }

        v18 = (v19 + 176);
        ++v17;
      }

      while (v17 < v8);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v26 = *v7;
          if (!*(v26 + 148))
          {
            result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, *(v26 + 136), *(v26 + 144), v5);
            if (result)
            {
              return result;
            }

            v8 = *(a2 + 448);
          }

          result = 0;
          v5 = (*(v26 + 144) + v5);
          v7 = (v26 + 176);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryGetInternalSuperBinaryMetaData(int a1, uint64_t a2, void *__dst, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = *(a2 + 32);
  if (v7 && ((v8 = *(a2 + 28), v9 = v7 + v8, v10 = a5 >= v8, v11 = a5 - v8, v10) ? (v12 = v9 > a5) : (v12 = 0), v12))
  {
    v15 = v7 - v11;
    if (a4 >= v15)
    {
      v13 = v15;
    }

    else
    {
      v13 = a4;
    }

    memcpy(__dst, (*(a2 + 672) + v11), v13);
    result = 0;
  }

  else
  {
    v13 = 0;
    result = 40;
  }

  *a6 = v13;
  return result;
}

uint64_t UARPSuperBinaryGetInternalPayloadMetaData(int a1, uint64_t a2, void *__dst, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = *(a2 + 632);
  if (!v7)
  {
LABEL_9:
    v14 = 0;
    result = 40;
    goto LABEL_14;
  }

  while (1)
  {
    v8 = *(v7 + 28);
    if (v8)
    {
      break;
    }

LABEL_8:
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v7 + 24);
  v10 = v8 + v9;
  v11 = a5 >= v9;
  v12 = a5 - v9;
  if (!v11 || v10 <= a5)
  {
    v7 = *(v7 + 176);
    goto LABEL_8;
  }

  v16 = v8 - v12;
  if (a4 >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = a4;
  }

  memcpy(__dst, (*(v7 + 152) + v12), v14);
  result = 0;
LABEL_14:
  *a6 = v14;
  return result;
}

uint64_t uarpPlatformEndpointInit(char *a1, uint64_t a2, unsigned int a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  result = 30;
  if (a3 <= 2 && a2 && a1 && a4 && a5)
  {
    bzero(a1, 0x2C8uLL);
    memcpy(a1 + 48, a5, 0x230uLL);
    *(a1 + 76) = a2;
    *(a1 + 5) = a6;
    *(a1 + 160) = 1;
    *(a1 + 82) = a7;
    v16 = *a4;
    v15 = a4[1];
    *(a1 + 4) = *(a4 + 4);
    *a1 = v16;
    *(a1 + 1) = v15;
    if (!*(a1 + 6))
    {
      *(a1 + 6) = 7;
    }

    *(a1 + 154) = a3;
    a1[644] = 0;
    *(a1 + 162) = 1;
    *(a1 + 340) = 1;
    *(a1 + 174) = 1024;
    v17 = calloc(0x20uLL, 0x400uLL);
    result = 0;
    *(a1 + 88) = v17;
  }

  return result;
}

void uarpPlatformEndpointDeinit(uint64_t a1)
{
  UARPLayer2ReturnBuffer(a1, *(a1 + 624), 43690, 85);
  *(a1 + 620) = 0;
  *(a1 + 624) = 0;

  uarpPlatformCleanupAssets(a1);
}

uint64_t uarpPlatformRemoteEndpointAdd(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        *(a2 + 40) = a4;
        v7 = *a1;
        v8 = a1[1];
        *(a2 + 32) = *(a1 + 4);
        *a2 = v7;
        *(a2 + 16) = v8;
        if (!a3 || (v10 = *a3, v9 = a3[1], *(a2 + 32) = *(a3 + 4), *a2 = v10, *(a2 + 16) = v9, (v11 = *(a2 + 4)) != 0) && *a2 && *(a2 + 8) >= v11)
        {
          if (!*(a2 + 12))
          {
            *(a2 + 12) = *(a1 + 6);
          }

          *(a2 + 48) = 0;
          v12 = *(a1 + 162);
          *(a1 + 162) = v12 + 1;
          *(a2 + 56) = v12;
          *(a2 + 60) = 1;
          *(a2 + 62) = 1;
          *(a2 + 28) = 0;
          *(a2 + 88) = 0;
          result = uarpPlatformRemoteEndpointAddEntry(a1, a2);
          if (!result)
          {
            if (!*(a2 + 20))
            {
              *(a2 + 20) = 1;
            }

            result = uarpAllocateTransmitBuffers(a1, a2);
            if (!result)
            {
              if ((*(a1 + 154) - 1) > 1)
              {
                return 0;
              }

              result = uarpPlatformEndpointSendSyncMsg(a1, a2);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformRemoteEndpointRemove(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    uarpTransmitQueuesCleanup(a1, a2);
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, a2, 1);
    uarpPlatformReleaseEndpointIDs(a1);
    v5 = *(a1 + 620);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(a1 + 624);
        if (*(v8 + v6) == a2)
        {
          *(v8 + v6) = 0;
        }

        v6 += 8;
      }

      while (v7 != v6);
    }

    uarpPlatformEndpointStreamingRecvDeinit(a1, a2);
    return 0;
  }

  return result;
}

uint64_t uarpPlatformEndpointRequestInfoProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 - 13) >= 0xFFFFFFF4)
  {
    return uarpSendInformationRequest(a1, a2, a3);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointAssetIsAcceptable(void *a1, uint64_t a2, _BYTE *a3, __int16 *a4)
{
  ActiveFirmwareVersion = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          *a3 = 1;
          *a4 = 0;
          v16[0] = 0;
          v16[1] = 0;
          ActiveFirmwareVersion = uarpPlatformEndpointQueryActiveFirmwareVersion(a1, a2, v16);
          if (!ActiveFirmwareVersion)
          {
            v9 = uarpVersionCompare(v16, (a2 + 52));
            if (v9 == 1)
            {
              v15[0] = 0;
              v15[1] = 0;
              ActiveFirmwareVersion = uarpPlatformEndpointQueryStagedFirmwareVersion(a1, a2, v15);
              if (ActiveFirmwareVersion)
              {
                return ActiveFirmwareVersion;
              }

              v10 = uarpVersionCompare(v15, (a2 + 52));
              if (v10 == 1)
              {
                return ActiveFirmwareVersion;
              }

              *a3 = 0;
              v11 = v10 == 0;
              v12 = 1280;
              v13 = 768;
            }

            else
            {
              ActiveFirmwareVersion = 0;
              *a3 = 0;
              v11 = v9 == 0;
              v12 = 1536;
              v13 = 1024;
            }

            if (v11)
            {
              v12 = v13;
            }

            *a4 = v12;
          }
        }
      }
    }
  }

  return ActiveFirmwareVersion;
}

uint64_t uarpPlatformEndpointAssetAcceptWithPayloadAndDecompressionWindows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, unsigned int a7, uint64_t a8, unsigned int a9)
{
  result = 30;
  if (a1 && a2 && a3 && (!a6 || a7 && *(a2 + 8) <= a7) && (!a8 || a9 && *(a2 + 8) <= a9))
  {
    v15 = *(a1 + 632);
    if (v15)
    {
      v16 = *(a1 + 632);
      while (v16 != a3 || *(v16 + 304))
      {
        v16 = *(v16 + 712);
        if (!v16)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      *(a3 + 712) = v15;
      *(a1 + 632) = a3;
    }

    if (a4)
    {
      *(a3 + 704) = a4;
    }

    *(a3 + 72) = 0;
    if (!a5)
    {
      return 30;
    }

    v17 = a5[1];
    *(a3 + 80) = *a5;
    *(a3 + 96) = v17;
    v18 = a5[2];
    v19 = a5[3];
    v20 = a5[5];
    *(a3 + 144) = a5[4];
    *(a3 + 160) = v20;
    *(a3 + 112) = v18;
    *(a3 + 128) = v19;
    v21 = a5[6];
    v22 = a5[7];
    v23 = a5[9];
    *(a3 + 208) = a5[8];
    *(a3 + 224) = v23;
    *(a3 + 176) = v21;
    *(a3 + 192) = v22;
    v24 = a5[10];
    v25 = a5[11];
    v26 = a5[13];
    *(a3 + 272) = a5[12];
    *(a3 + 288) = v26;
    *(a3 + 240) = v24;
    *(a3 + 256) = v25;
    if (a6)
    {
      if (!*(a3 + 652))
      {
        UARPLayer2ReturnBuffer(a1, *(a3 + 640), 43690, 425);
      }

      *(a3 + 640) = a6;
      *(a3 + 648) = a7;
      *(a3 + 652) = 1;
    }

    else if (!*(a3 + 640))
    {
      v29 = (a3 + 640);
      *(a3 + 652) = 0;
      v30 = *(a2 + 8);
      *(a3 + 648) = v30;
      result = UARPLayer2RequestBuffer(a1, (a3 + 640), v30, 43690, 443);
      if (result)
      {
        return result;
      }

      if (!*v29)
      {
        return 11;
      }
    }

    if (a8)
    {
      if (!*(a3 + 668))
      {
        UARPLayer2ReturnBuffer(a1, *(a3 + 656), 43690, 462);
      }

      *(a3 + 656) = a8;
      *(a3 + 664) = a9;
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    *(a3 + 668) = v27;
    if (uarpVersionCompare((a3 + 52), (a3 + 12)) || *(a3 + 68) != *(a3 + 8))
    {

      return uarpPlatformAssetSuperBinaryPullHeader(a1, a3);
    }

    else if (*(a3 + 688) == *(a3 + 32))
    {
      v28 = *(a3 + 452);
      if (v28 == -1)
      {
        UARPLayer2AssetMetaDataComplete(a1, a3);
        return 0;
      }

      else if (v28 == *(a3 + 456))
      {
        if (*(a3 + 512) == *(a3 + 492))
        {
          if (*(a3 + 508) || (result = uarpPlatformAssetPayloadPullData(a1, a3), !result))
          {

            return uarpPlatformAssetRequestData(a1, a3, (a3 + 312));
          }
        }

        else
        {

          return uarpPlatformAssetPayloadPullMetaData(a1, a3);
        }
      }

      else
      {

        return uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(a1, a3);
      }
    }

    else
    {

      return uarpPlatformAssetSuperBinaryPullMetaData(a1, a3);
    }
  }

  return result;
}

__n128 uarpPlatformEndpointAssetSetCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v3 = *(a3 + 16);
      *(a2 + 80) = *a3;
      *(a2 + 96) = v3;
      v4 = *(a3 + 32);
      v5 = *(a3 + 48);
      v6 = *(a3 + 80);
      *(a2 + 144) = *(a3 + 64);
      *(a2 + 160) = v6;
      *(a2 + 112) = v4;
      *(a2 + 128) = v5;
      v7 = *(a3 + 96);
      v8 = *(a3 + 112);
      v9 = *(a3 + 144);
      *(a2 + 208) = *(a3 + 128);
      *(a2 + 224) = v9;
      *(a2 + 176) = v7;
      *(a2 + 192) = v8;
      result = *(a3 + 160);
      v11 = *(a3 + 176);
      v12 = *(a3 + 208);
      *(a2 + 272) = *(a3 + 192);
      *(a2 + 288) = v12;
      *(a2 + 240) = result;
      *(a2 + 256) = v11;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetDeny(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _OWORD *a6)
{
  v6 = 30;
  if (a1 && a2 && a3)
  {
    if (a5)
    {
      *(a3 + 704) = a5;
    }

    if (a6)
    {
      v8 = a6[1];
      *(a3 + 80) = *a6;
      *(a3 + 96) = v8;
      v9 = a6[2];
      v10 = a6[3];
      v11 = a6[5];
      *(a3 + 144) = a6[4];
      *(a3 + 160) = v11;
      *(a3 + 112) = v9;
      *(a3 + 128) = v10;
      v12 = a6[6];
      v13 = a6[7];
      v14 = a6[9];
      *(a3 + 208) = a6[8];
      *(a3 + 224) = v14;
      *(a3 + 176) = v12;
      *(a3 + 192) = v13;
      v15 = a6[10];
      v16 = a6[11];
      v17 = a6[13];
      *(a3 + 272) = a6[12];
      *(a3 + 288) = v17;
      *(a3 + 240) = v15;
      *(a3 + 256) = v16;
      v6 = uarpAssetProcessingComplete(a1, a2, a3, a4 | 2u);
      if (!v6)
      {
        *(a3 + 72) = 1;
      }
    }

    else
    {
      return 30;
    }
  }

  return v6;
}

uint64_t uarpPlatformEndpointAssetRelease(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = uarpPlatformAssetFindByAssetContext(a1, *(a3 + 704));

  return uarpPlatformAssetProcessingCompleteInternal(a1, 0, v4, 1u, 0, 1);
}

uint64_t uarpPlatformEndpointAssetRelease2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = uarpPlatformAssetFindByAssetContext(a1, a3);

  return uarpPlatformAssetProcessingCompleteInternal(a1, 0, v4, 1u, 0, 1);
}

uint64_t uarpPlatformAssetFindByAssetContext(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 632);
    if (v4)
    {
      result = v4;
      while (*(result + 304) != 1 || *(result + 704) != a2)
      {
        result = *(result + 712);
        if (!result)
        {
          while (v4)
          {
            if (!*(v4 + 304) && *(v4 + 704) == a2)
            {
              return v4;
            }

            v4 = *(v4 + 712);
          }

          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryNumberOfPayloads(uint64_t a1, uint64_t a2, _WORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 448);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryFormatVersion(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *a2;
    }
  }

  return result;
}

__n128 uarpPlatformEndpointAssetQueryAssetVersion(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      result = *(a2 + 52);
      *a3 = result;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryAssetLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 68);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryTag(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 48);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetSetPayloadIndex2(void *a1, uint64_t a2, int a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a2 + 448) <= a3)
    {
      return 44;
    }

    else
    {
      *(a2 + 456) = a3;
      *(a2 + 508) = 0;
      if (*(a2 + 460) == 1)
      {
        v6 = *(a2 + 632);
        if (v6)
        {
          v7 = (a2 + 464);
          while (1)
          {
            v8 = *(v6 + 31);
            if (v8 == *(a2 + 456))
            {
              *(a2 + 452) = v8;
              v9 = *v6;
              v10 = v6[2];
              *(a2 + 480) = v6[1];
              *(a2 + 496) = v10;
              *v7 = v9;
              v11 = v6[3];
              v12 = v6[4];
              v13 = v6[6];
              *(a2 + 544) = v6[5];
              *(a2 + 560) = v13;
              *(a2 + 512) = v11;
              *(a2 + 528) = v12;
              v14 = v6[7];
              v15 = v6[8];
              v16 = v6[9];
              *(a2 + 624) = *(v6 + 20);
              *(a2 + 592) = v15;
              *(a2 + 608) = v16;
              *(a2 + 576) = v14;
              for (i = *(v6 + 21); i; i = *(i + 2))
              {
                uarpProcessPayloadTLVInternal(a1, a2, a2 + 464, *i, i[1], *(i + 1));
              }

              v18 = *(v6 + 19);
              if (v18)
              {
                UARPLayer2HashFinal(a1, v18, *(v6 + 10), *(v6 + 12), *(v6 + 26));
                if (memcmp(*(v6 + 12), *(v6 + 14), *(v6 + 30)))
                {
                  return 54;
                }
              }
            }

            v6 = *(v6 + 22);
            if (!v6)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:

          return uarpPlatformEndpointPayloadRequestData(a1, a2);
        }
      }

      else
      {

        return uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(a1, a2);
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestData(uint64_t a1, uint64_t a2)
{
  v3 = 30;
  if (!a1 || !a2)
  {
    return v3;
  }

  v4 = *(a2 + 500);
  if (v4)
  {
    v4 -= *(a2 + 508);
  }

  if (v4 >= *(a2 + 648))
  {
    v4 = *(a2 + 648);
  }

  if (!v4)
  {
    UARPLayer2PayloadDataComplete2(a1, a2);
    return 0;
  }

  return uarpPlatformAssetPayloadPullData(a1, a2);
}

uint64_t uarpPlatformEndpointAssetPayloadVersion(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    if (*(a2 + 452) == -1)
    {
      return 32;
    }

    else
    {
      result = 0;
      *a3 = *(a2 + 472);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetPayloadTag(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    if (*(a2 + 452) == -1)
    {
      return 32;
    }

    else
    {
      result = 0;
      *a3 = *(a2 + 468);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestAllHeadersAndMetaData(uint64_t a1, uint64_t a2)
{
  *(a2 + 460) = 1;
  if (*(a2 + 448) < 1)
  {
    if (*(a2 + 32))
    {

      return uarpPlatformAssetPullAllMetaData(a1, a2);
    }

    else
    {
      UARPLayer2AssetAllHeadersAndMetaDataComplete(a1, *(a2 + 696), a2);
      return 0;
    }
  }

  else
  {

    return uarpPlatformAssetPullAllPayloadHeaders(a1, a2);
  }
}

uint64_t uarpPlatformEndpointAssetSetPayloadOffset(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a2)
  {
    return 30;
  }

  if (a2[113] == -1)
  {
    return 44;
  }

  if (a2[125] <= a3)
  {
    return 43;
  }

  result = 0;
  a2[127] = a3;
  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestDataPause(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 73) = 1;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestDataResume(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2 && (v2 = *(a2 + 73), *(a2 + 73)) && (*(a2 + 73) = 0, (v2 = *(a2 + 696)) != 0))
  {
    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }

  else
  {
    return v2;
  }
}

uint64_t uarpPlatformEndpointAssetFullyStaged(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpAssetProcessingComplete(a1, *(a2 + 696), a2, 1);
  }

  else
  {
    return 30;
  }
}

double uarpPlatformEndpointSuperBinaryMerge(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v3 = *a2;
      v4 = a2[1];
      *(a3 + 28) = *(a2 + 28);
      *a3 = v3;
      *(a3 + 16) = v4;
      *(a2 + 72) = 1;
      *(a3 + 72) = 0;
      *(a3 + 73) = *(a2 + 73);
      *(a3 + 312) = *(a2 + 312);
      v5 = *(a2 + 328);
      v6 = *(a2 + 344);
      v7 = *(a2 + 376);
      *(a3 + 360) = *(a2 + 360);
      *(a3 + 376) = v7;
      *(a3 + 328) = v5;
      *(a3 + 344) = v6;
      v8 = *(a2 + 392);
      v9 = *(a2 + 408);
      v10 = *(a2 + 424);
      *(a3 + 440) = *(a2 + 55);
      *(a3 + 408) = v9;
      *(a3 + 424) = v10;
      *(a3 + 392) = v8;
      *(a3 + 452) = *(a2 + 452);
      v11 = a2[29];
      v12 = a2[31];
      *(a3 + 480) = a2[30];
      *(a3 + 496) = v12;
      *(a3 + 464) = v11;
      v13 = a2[32];
      v14 = a2[33];
      v15 = a2[35];
      *(a3 + 544) = a2[34];
      *(a3 + 560) = v15;
      *(a3 + 512) = v13;
      *(a3 + 528) = v14;
      v16 = a2[36];
      v17 = a2[37];
      v18 = a2[38];
      *(a3 + 624) = *(a2 + 78);
      *(a3 + 592) = v17;
      *(a3 + 608) = v18;
      *(a3 + 576) = v16;
      *(a2 + 78) = 0;
      result = 0.0;
      a2[37] = 0u;
      a2[38] = 0u;
      a2[35] = 0u;
      a2[36] = 0u;
      a2[33] = 0u;
      a2[34] = 0u;
      a2[31] = 0u;
      a2[32] = 0u;
      a2[29] = 0u;
      a2[30] = 0u;
      *(a3 + 640) = *(a2 + 80);
      *(a2 + 80) = 0;
      *(a3 + 652) = *(a2 + 652);
      *(a3 + 648) = *(a2 + 162);
      *(a2 + 162) = 0;
      *(a3 + 656) = *(a2 + 82);
      *(a2 + 82) = 0;
      *(a3 + 668) = *(a2 + 668);
      *(a3 + 664) = *(a2 + 166);
      *(a2 + 166) = 0;
      *(a3 + 688) = *(a2 + 172);
    }
  }

  return result;
}

void uarpPlatformEndpointCleanupAssets(uint64_t result)
{
  if (result)
  {
    uarpPlatformCleanupAssetsForRemoteEndpoint(result, 0, 0);
  }
}

void uarpPlatformEndpointCleanupAssets2(uint64_t result, uint64_t a2)
{
  if (result)
  {
    uarpPlatformCleanupAssetsForRemoteEndpoint(result, a2, 0);
  }
}

uint64_t uarpPlatformEndpointOfferAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = *(a1 + 632);
        if (v6)
        {
          while (*(v6 + 304) != 1 || *(v6 + 704) != a3)
          {
            v6 = *(v6 + 712);
            if (!v6)
            {
              return 30;
            }
          }

          memset(__dst, 0, 44);
          v7 = 0;
          result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, a2, v6, __dst, 44, 0, &v7);
          if (!result)
          {
            uarpSuperBinaryHeaderEndianSwap(__dst, v6);
            *(v6 + 52) = *(v6 + 12);
            *(v6 + 68) = *(v6 + 8);
            *(v6 + 448) = *(v6 + 40) / 0x28u;
            return uarpOfferAssetToRemoteEP(a1, a2, v6);
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByAssetContextAndList(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    for (result = *(result + 632); result; result = *(result + 712))
    {
      if (*(result + 304) == a3 && *(result + 704) == a2)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetGetBytesAtOffset(uint64_t a1, uint64_t a2, uint64_t a3, void *__dst, uint64_t a5, uint64_t a6, unsigned __int16 *a7)
{
  result = 30;
  if (a1 && a3 && __dst && a5)
  {
    v15 = *(a3 + 46);
    if ((v15 & 0x80) != 0)
    {
      result = UARPSuperBinaryGetInternalSuperBinaryMetaData(a1, a3, __dst, a5, a6, a7);
      if (result != 40)
      {
        return result;
      }

      v15 = *(a3 + 46);
    }

    if ((v15 & 8) == 0 || (result = UARPSuperBinaryGetInternalPayloadMetaData(a1, a3, __dst, a5, a6, a7), result == 40))
    {

      return UARPLayer2AssetGetBytesAtOffset2(a1, a2, a3, __dst, a5, a6, a7);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointRemoveAssetPayloadWindow(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 30;
  if (a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a2 + 640);
      *(a2 + 640) = 0;
      *a4 = *(a2 + 648);
      *(a2 + 648) = 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointProvideAssetPayloadWindow(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 30;
  if (a3 && a4)
  {
    v9 = *(a2 + 640);
    if (v9)
    {
      if (!*(a2 + 652))
      {
        UARPLayer2ReturnBuffer(a1, v9, 43690, 1180);
      }
    }

    result = 0;
    *(a2 + 640) = a3;
    *(a2 + 648) = a4;
    *(a2 + 652) = 1;
  }

  return result;
}

uint64_t uarpPlatformEndpointDynamicAssetSolicitationDeny(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (a1 && a2 && a3)
  {
    return uarpSendDynamicAssetPreProcessingStatus(a1, a2, a3, 2u, a4);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointAssetSetBytesAtOffset(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a3 && a4 && a5)
  {
    return UARPLayer2AssetSetBytesAtOffset2(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointWatchDogExpired(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      *(a2 + 54) = 0;
      uarpTransmitQueueService(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointRescindAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a3)
  {
    return 30;
  }

  v3 = *(a1 + 632);
  if (!v3)
  {
    return 30;
  }

  while (*(v3 + 304) != 1 || *(v3 + 704) != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 30;
    }
  }

  return uarpAssetRescind(a1, a2, *(v3 + 44));
}

uint64_t uarpPlatformEndpointRescindAllAssets(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpAssetRescind(a1, a2, 0xFFFFLL);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointApplyStagedAssets(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v5 = uarpAllocPrepareTransmitBuffer2(a1, a2, 10, 6u, 1);
    if (v5)
    {

      return uarpTransmitBuffer2(a1, a2, v5);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPauseAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationPause(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointResumeAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationResume(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a4)
  {
    return 30;
  }

  v4 = *(a1 + 632);
  if (!v4)
  {
    return 30;
  }

  while (*(v4 + 304) || *(v4 + 704) != a4)
  {
    v4 = *(v4 + 712);
    if (!v4)
    {
      return 30;
    }
  }

  return uarpSolicitDynamicAsset(a1, a2, a3);
}

uint64_t uarpPlatformEndpointSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, const void *a5, unsigned int a6)
{
  if (a1 && a2 && a3 && a5)
  {
    return uarpSendVendorSpecific(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformDownstreamEndpointAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  v6 = *(a1 + 680);
  do
  {
    if (!v6)
    {
      *(a1 + 680) = 1;
      return 11;
    }

    v7 = UARPPlatformDownstreamEndpointByID(a1, a2, v6);
    v8 = *(a1 + 680);
    v6 = v8 + 1;
    *(a1 + 680) = v8 + 1;
  }

  while (!v7 || !v8);

  return uarpPlatformDownstreamEndpointReachable(a1, a2, a3, v8);
}

uint64_t uarpPlatformDownstreamEndpointReachable(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    v10 = 0;
    result = UARPLayer2RequestBuffer(a1, &v10, 0x20uLL, 43690, 1499);
    if (!result)
    {
      *v10 = a2;
      v9 = v10;
      v10[4] = a4;
      v9[2] = a3;
      v9[3] = 0;
      uarpPlatformDownstreamEndpointAddToList(a1, a2, v9);
      return uarpSendDownstreamEndpointReachable(a1, a2, v10[4]);
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointRemove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = UARPPlatformDownstreamEndpointByDelegate(a1, a2, a3);
  if (!v5)
  {
    return 58;
  }

  v6 = *(v5 + 120);

  return uarpSendDownstreamEndpointUnreachable(a1, a2, v6);
}

uint64_t uarpPlatformDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, a4);
  if (!v6)
  {
    return 58;
  }

  v7 = v6;
  result = uarpSendDownstreamEndpointUnreachable(a1, a2, *(v6 + 8));
  if (!result)
  {
    v9 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v7 + 8));
    UARPLayer2ReturnBuffer(a1, v9, 43690, 1593);
    return 0;
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5)
{
  v9 = uarpPlatformDownstreamEndpointFindOnListByDelegate(a1, a2, a3);
  if (!v9)
  {
    return 58;
  }

  v10 = *(v9 + 8);

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, v10, a4, a5);
}

uint64_t uarpPlatformDelegateForDownstreamID(uint64_t a1, uint64_t a2, int a3)
{
  result = UARPPlatformDownstreamEndpointByID(a1, a2, a3);
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t uarpPlatformNoFirmwareUpdateAvailable(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 29, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformEndpointDiscoverEndpointIDs(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 31, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformQueryEndpointComponentDiscovery(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 33, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpPlatformEndpointBulkInfoQuery(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, int a5, unsigned int *a6)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        LODWORD(v10) = a5;
        if (a5)
        {
          v11 = a6;
          if (a6)
          {
            v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 35, (4 * a5 + 16) & 0xFFFC, 1);
            if (v13)
            {
              v14 = v13;
              v15 = v13[3];
              *(v15 + 6) = uarpHtons(a3);
              *(v15 + 8) = *a4;
              *(v15 + 12) = uarpNtohl(v10);
              v16 = (v15 + 16);
              v10 = v10;
              do
              {
                v17 = *v11++;
                *v16++ = uarpHtonl(v17);
                --v10;
              }

              while (v10);

              return uarpTransmitBuffer2(a1, a2, v14);
            }

            else
            {
              return 11;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointBulkInfoResponseAddTLV(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, unsigned int a6, unsigned int a7, _DWORD *a8)
{
  v8 = *a5;
  v9 = a7 + 8;
  if (a7 + 8 > a4 - v8)
  {
    return 65;
  }

  v15 = (a3 + v8);
  *v15 = uarpHtonl(a6);
  v15[1] = uarpHtonl(a7);
  v16 = a6 + 2001563387;
  if (v16 <= 0x34)
  {
    if (((1 << (a6 - 5)) & 0x10000000000071) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << (a6 - 5)) & 0x4000000080104) != 0)
    {
      goto LABEL_11;
    }

    if (v16 == 1)
    {
      if (a7 != 8)
      {
        return 39;
      }

      goto LABEL_19;
    }
  }

  if (a6 > 0xD)
  {
    goto LABEL_13;
  }

  if (((1 << a6) & 0x2E1E) != 0)
  {
LABEL_11:
    memcpy(v15 + 2, a8, a7);
    v17 = v9 + v8;
    goto LABEL_12;
  }

  if (((1 << a6) & 0x60) != 0)
  {
    if (a7 == 16)
    {
      v18 = 0uLL;
      uarpVersionEndianSwap(a8, &v18);
      *(v15 + 2) = v18;
      v17 = v8 + 24;
LABEL_12:
      result = 0;
      *a5 = v17;
      return result;
    }

    return 39;
  }

LABEL_13:
  if (a6 == -2001563388)
  {
    if (a7 != 8)
    {
LABEL_15:
      if (a7 == 4)
      {
        v15[2] = uarpHtonl(*a8);
        v17 = v8 + 12;
        goto LABEL_12;
      }

      return 39;
    }

LABEL_19:
    *(v15 + 1) = uarpHtonll(*a8);
    v17 = v8 + 16;
    goto LABEL_12;
  }

  return 10;
}

uint64_t uarpPlatformEndpointBulkInfoResponse(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, const void *a5, unsigned int a6)
{
  result = 30;
  if (a1 && a2 && a4 && a5 && a6)
  {
    v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 37, (a6 + 12), 1);
    if (v13)
    {
      v14 = v13;
      v15 = v13[3];
      *(v15 + 6) = uarpHtons(a3);
      *(v15 + 8) = *a4;
      memcpy((v15 + 12), a5, a6);

      return uarpTransmitBuffer2(a1, a2, v14);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpRemoteEndpointIDForAsset(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 696)) != 0)
  {
    return *(v1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpPlatformRemoteDelegateForAssetDelegate(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 696);
    if (v1)
    {
      return *(v1 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointForAsset(uint64_t result)
{
  if (result)
  {
    return *(result + 696);
  }

  return result;
}

__n128 uarpPlatformAssetSelectedPayloadInfo(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a1 + 452) != -1 && *(a1 + 460) != 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *a2 = *(a1 + 468);
    result = *(a1 + 472);
    *(a2 + 4) = result;
    v3 = *(a1 + 500);
    *(a2 + 20) = *(a1 + 492);
    *(a2 + 24) = v3;
  }

  return result;
}

uint64_t uarpAssetQuerySuperBinaryMetaData(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460))
    {
      return *(a2 + 720);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadMetaData(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460) && (v5 = *(a2 + 632)) != 0)
    {
      while (*(v5 + 124) != a3)
      {
        v5 = *(v5 + 176);
        if (!v5)
        {
          return 0;
        }
      }

      return *(v5 + 168);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 30;
  if (a1 && a2)
  {
    if (!a4)
    {
      return 26;
    }

    if (*(a2 + 460))
    {
      v6 = *(a2 + 632);
      if (!v6)
      {
        return 54;
      }

      while (*(v6 + 124) != a3)
      {
        v6 = *(v6 + 176);
        if (!v6)
        {
          return 54;
        }
      }

      *a4 = *(v6 + 4);
      *(a4 + 4) = *(v6 + 8);
      v9 = *(v6 + 36);
      *(a4 + 20) = *(v6 + 28);
      *(a4 + 24) = v9;
      v8 = (v6 + 128);
    }

    else
    {
      if (*(a2 + 452) != a3)
      {
        return 44;
      }

      *a4 = *(a2 + 468);
      *(a4 + 4) = *(a2 + 472);
      v7 = *(a2 + 500);
      *(a4 + 20) = *(a2 + 492);
      *(a4 + 24) = v7;
      v8 = (a2 + 592);
    }

    result = 0;
    *(a4 + 28) = *v8;
  }

  return result;
}

uint64_t uarpPlatformAssetQueryAssetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 44);
    }
  }

  return result;
}

__n128 uarpPlatformAssetQueryAssetVersion(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 52);
      *a2 = result;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxTxPayloadLength(uint64_t a1, _DWORD *a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformGetMaxTxPayloadLength(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *a2;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxRxPayloadLength(uint64_t a1, uint64_t a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 4) = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformGetMaxRxPayloadLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 4);
    }
  }

  return result;
}

uint64_t uarpPlatformGetSupportsBulkInfoQueries(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 50);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformGetUseHostPushModel(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 52);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformConfigureEndpointIDs(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = a4;
        if (a4)
        {
          if (*(a1 + 672))
          {
            uarpPlatformReleaseEndpointIDs(a1);
          }

          v11 = 0;
          result = UARPLayer2RequestBuffer(a1, &v11, 16 * a3, 43690, 2424);
          if (!result)
          {
            v8 = v11;
            *(a1 + 672) = v11;
            *(a1 + 664) = a3;
            v9 = a3;
            do
            {
              v10 = *v7++;
              *v8 = v10;
              v8 += 8;
              --v9;
            }

            while (v9);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformConfigureEndpointTags(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (a5)
        {
          v9 = *(a1 + 664);
          if (*(a1 + 664))
          {
            for (i = *(a1 + 672); *i != a3; i += 8)
            {
              if (!--v9)
              {
                return 30;
              }
            }

            if (*(i + 1))
            {
              uarpPlatformReleaseEndpointTags(a1, a2, i);
            }

            v12 = 0;
            result = UARPLayer2RequestBuffer(a1, &v12, (4 * a4), 43690, 2486);
            if (!result)
            {
              v11 = 0;
              *(i + 1) = v12;
              i[1] = a4;
              do
              {
                *(*(i + 1) + 4 * v11) = *(a5 + 4 * v11);
                ++v11;
              }

              while (a4 != v11);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100047600(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Checking mobileasset cache file %@", buf, 0xCu);
}

void sub_10004764C()
{
  sub_1000038D4();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000476D0()
{
  sub_1000038B8();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100047758()
{
  sub_1000038D4();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000477DC()
{
  sub_1000038B8();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100047864()
{
  v0 = 136315138;
  v1 = "[UARPObserverUpdate remoteObject]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: _xpcConnection is nil", &v0, 0xCu);
}

void sub_1000478EC(uint64_t a1)
{
  v1 = 136315394;
  v2 = "[UARPObserverUpdate remoteObject]_block_invoke";
  v3 = 2112;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to get remote object: %@", &v1, 0x16u);
}

void sub_100047980()
{
  v0 = 136315138;
  v1 = "[UARPObserverUpdate xpcConnectionToRequestor]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to get xpc connection", &v0, 0xCu);
}

void sub_100047A08(uint64_t a1)
{
  v1 = 136315394;
  v2 = "[AUHelperInstance remoteObject]_block_invoke";
  v3 = 2112;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to get remote object: %@", &v1, 0x16u);
}

void sub_100047A9C()
{
  v0 = 136315138;
  v1 = "+[AUHelperInstance xpcConnectionToHelper]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to get xpc connection", &v0, 0xCu);
}

void sub_100047B38()
{
  v3[0] = 136315650;
  sub_1000038D4();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: unknown key/value pair %@/%@", v3, 0x20u);
}

void sub_100047BC4()
{
  v1[0] = 136315394;
  sub_1000038D4();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s: setting %@", v1, 0x16u);
}

void sub_100047C44()
{
  v1[0] = 136315394;
  sub_1000038D4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: received unknown object = %@", v1, 0x16u);
}

void sub_100048180()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048280()
{
  sub_10000CF3C();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000482BC()
{
  sub_10000CF3C();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000482F8()
{
  sub_10000CF3C();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004846C()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048648(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() path];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF00(&_mh_execute_header, v4, v5, "Plugin policy is invalid, can't load it for service:%{public}@");
}

void sub_1000486A8(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() bundleIdentifier];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF70(&_mh_execute_header, v4, v5, "Successfully loaded service policy for: %{public}@");
}

void sub_100048708(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() path];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF00(&_mh_execute_header, v4, v5, "Failed to allocate service policy for service:%{public}@");
}

void sub_100048768(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() path];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF00(&_mh_execute_header, v4, v5, "Failed to fetch service info dictionary at path:%{public}@");
}

void sub_1000487C8(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() path];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF00(&_mh_execute_header, v4, v5, "Failed to load service bundle at path:%{public}@");
}

void sub_100048828(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() path];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF00(&_mh_execute_header, v4, v5, "Policy is invalid, can't load it for plugin:%{public}@");
}

void sub_100048888(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() bundleIdentifier];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF70(&_mh_execute_header, v4, v5, "Successfully loaded plugin policy for: %{public}@");
}

void sub_1000488E8(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() path];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF00(&_mh_execute_header, v4, v5, "Failed to allocate service policy for plugin:%{public}@");
}

void sub_100048948(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() path];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF00(&_mh_execute_header, v4, v5, "Failed to fetch plugin info dictionary at path:%{public}@");
}

void sub_1000489A8(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() path];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF00(&_mh_execute_header, v4, v5, "Failed to load plugin bundle at path:%{public}@");
}

void sub_100048A08(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() filterName];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF70(&_mh_execute_header, v4, v5, "Registering filter with XPC stream: %{public}@");
}

void sub_100048B5C()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048BCC()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048D58()
{
  sub_10000CF3C();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100048D94()
{
  sub_10000CF3C();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100048DD0()
{
  sub_10000CF3C();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100048E0C()
{
  sub_10000CF90();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048FE4()
{
  sub_10000CF90();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000491BC()
{
  sub_10000CF90();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100049394(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() filterName];
  sub_10000CFBC(v3, 5.8381e-34);
  sub_10000CF70(&_mh_execute_header, v4, v5, "Filter %{public}@ needs check");
}

void sub_1000493F4(uint64_t a1, void *a2)
{
  sub_10000CF54(a1, a2);
  v3 = [sub_10000CFC8() filterName];
  sub_10000CFBC(v3, 5.7779e-34);
  sub_10000CF70(&_mh_execute_header, v4, v5, "Filter %@ is not registered with XPC, creating xpcFilter");
}

void sub_1000494B4()
{
  sub_10000CF90();
  sub_10000CF48();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100049524()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100049614(void *a1)
{
  v2 = a1;
  v3 = [sub_100010A20() exclusionGroup];
  sub_10000CF90();
  sub_1000109F4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000496AC(void *a1)
{
  v2 = a1;
  v3 = [sub_100010A20() filter];
  sub_10000CF90();
  sub_1000109F4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100049744(void *a1)
{
  v2 = a1;
  v3 = [sub_100010A20() filter];
  sub_10000CF90();
  sub_1000109F4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000497DC()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100049818()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100049888()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000498F8()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100049968(char a1, void *a2, void *a3)
{
  v5 = a1 & 1;
  v6 = a2;
  v7 = [sub_100010A20() stateMachinePluginName];
  v8 = [a3 stateMachineFilterName];
  v9[0] = 67240706;
  v9[1] = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = v8;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "State machine exists: active=%{public}d for [%{public}@ : %{public}@]", v9, 0x1Cu);
}

void sub_100049A40(void *a1)
{
  v2 = a1;
  v3 = [sub_100010A20() filter];
  sub_10000CF90();
  sub_1000109F4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100049C10(uint64_t a1, void *a2)
{
  v3 = a2;
  [sub_100010A20() count];
  sub_10000CF90();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Performing done command, queueCount=%{public}lu", v4, 0xCu);
}

void sub_100049CD8(void *a1)
{
  v2 = a1;
  [sub_100010A20() commandType];
  sub_1000109F4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_100049D68(void *a1)
{
  v2 = a1;
  v3 = [sub_100010A20() pluginName];
  sub_10000CF90();
  sub_1000109F4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100049E00(void *a1)
{
  v2 = a1;
  v3 = [sub_100010A20() filter];
  sub_10000CF90();
  sub_1000109F4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100049E98(void *a1)
{
  v2 = a1;
  v3 = [sub_100010A20() filter];
  sub_10000CF90();
  sub_1000109F4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100049F30()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100049F6C()
{
  sub_100010A38(__stack_chk_guard);
  sub_100010A2C();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Remaining queuedEvents=%{public}@", v1, 0xCu);
}

void sub_100049FE4()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A054()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A090()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A0CC()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A13C()
{
  sub_10000CF90();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Can't load plugin with invalid filter name: %{public}@ plugin name: %{public}@", v2, 0x16u);
}

void sub_10004A1C0()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A1FC()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A238()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A2E8()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A358()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A394()
{
  sub_100010A38(__stack_chk_guard);
  sub_100010A2C();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Updated queuedEvents=%{public}@", v1, 0xCu);
}

void sub_10004A408()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A478()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A550()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A58C()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A63C()
{
  sub_10000CF3C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A678()
{
  sub_100010A38(__stack_chk_guard);
  sub_100010A2C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A6E8()
{
  sub_100010A38(__stack_chk_guard);
  sub_100010A2C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A810(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Connection from PID %d does not have the correct entitlement", v4, 8u);
}

void sub_10004A8AC()
{
  sub_100011500();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004A928()
{
  sub_100011500();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

id sub_10004AB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = FUDError();
  FudLog();
  v7 = *(a3 + 88);

  return [v7 personalizationDone:a4 response:0 error:v6];
}

void sub_10004ABDC()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_1000131C0(&_mh_execute_header, v0, v1, "failed to set temporary directory suffix: %d", v2, v3, v4, v5, v6);
}

void sub_10004AC5C()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_1000131C0(&_mh_execute_header, v0, v1, "failed to initialize temporary directory: %d", v2, v3, v4, v5, v6);
}

void sub_10004ACDC(uint64_t a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = [*(a1 + 40) processIdentifier];
  sub_1000131C0(&_mh_execute_header, v1, v2, "Connection to PID %d interrupted", v3, v4, v5, v6, v7);
}

void sub_10004AD5C(void *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = [a1 processIdentifier];
  sub_1000131C0(&_mh_execute_header, v1, v2, "Connection from PID %d does not have the correct entitlement", v3, v4, v5, v6, v7);
}

void sub_10004ADEC()
{
  v1[0] = 136315394;
  sub_1000038D4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Failed to encode %@", v1, 0x16u);
}

void sub_10004AE6C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[UARPDatabase updateActiveAccessory:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Crossed threshold for UARP accessory database. Clearing all entries.", &v1, 0xCu);
}

void sub_10004AEF0()
{
  sub_1000161A8(__stack_chk_guard);
  sub_100016190();
  sub_100016180();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004AF60()
{
  sub_1000161A8(__stack_chk_guard);
  sub_1000038B8();
  sub_100016180();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10004AFDC(void *a1, NSObject *a2)
{
  [a1 accessoryName];
  v3[0] = 136315394;
  sub_1000038D4();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Attempting to remove accessory not present in consent pending cache (%@)", v3, 0x16u);
}

void sub_10004B070()
{
  sub_1000161A8(__stack_chk_guard);
  sub_1000038B8();
  sub_100016180();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10004B0EC()
{
  sub_1000161A8(__stack_chk_guard);
  sub_100016190();
  sub_100016180();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004B15C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Dump state to %@", &v2, 0xCu);
}

void sub_10004B1D4()
{
  sub_1000161A8(__stack_chk_guard);
  sub_1000038B8();
  sub_100016180();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10004B250(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 xpcEventStream];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "XPC event stream '%@' is not supported", a1, 0xCu);
}

void sub_10004B2BC()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B32C()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B39C()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B40C()
{
  sub_10000CF90();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B47C()
{
  sub_10000CF90();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%@ checking for %@", v2, 0x16u);
}

void sub_10004B500(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "IOPortGetParentPortForService";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: IORegistryEntryCreateCFProperty failed", buf, 0xCu);
}

void sub_10004B5D8()
{
  v0 = 136316162;
  v1 = "IOPortGetParentPortForService";
  v2 = 2080;
  v3 = "IOPort";
  v4 = 2080;
  v5 = "port-type";
  v6 = 2080;
  v7 = "port-number";
  v8 = 1024;
  v9 = 0;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Did not find parent built-in port in %s plane, searching registry for %s and %s properties... (depth: %d)", &v0, 0x30u);
}

void sub_10004B790()
{
  sub_100019C6C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004B80C()
{
  sub_100011500();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004B888()
{
  v2 = 136315650;
  sub_1000038D4();
  sub_100019C80(&_mh_execute_header, v0, v1, "%s: Port type: %@ Port Number: %@ not valid for port", v2);
}

void sub_10004BA68()
{
  sub_100019C6C();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004BAE4()
{
  sub_100011500();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004BB60()
{
  sub_100011500();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004BBDC(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "_ioMatchingNotificationForBuiltInPortHandler";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Invalid transport class", buf, 0xCu);
}

void sub_10004BC30(void *a1)
{
  [a1 unsignedLongLongValue];
  v7 = 136315394;
  sub_100011500();
  sub_100019C4C(&_mh_execute_header, v1, v2, "%s: No registered IONotificationPort for registryEntryID: 0x%llx", v3, v4, v5, v6, v7);
}

void sub_10004BCB4(void *a1)
{
  [a1 unsignedLongLongValue];
  v7 = 136315394;
  sub_100011500();
  sub_100019C4C(&_mh_execute_header, v1, v2, "%s: Could not find updater associated with registryEntryID: 0x%llx", v3, v4, v5, v6, v7);
}

void sub_10004BD38(void *a1)
{
  [a1 updaterName];
  v7 = 136315394;
  sub_1000038D4();
  sub_100019C4C(&_mh_execute_header, v1, v2, "%s: No Supporting Service found for Process Name: %@", v3, v4, v5, v6, v7);
}

void sub_10004BDBC()
{
  sub_1000038D4();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004BE38()
{
  sub_1000038D4();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004BEB4()
{
  v2 = 136315650;
  sub_1000038D4();
  sub_100019C80(&_mh_execute_header, v0, v1, "%s: %@ has the following Pending TSS Requests %@", v2);
}

void sub_10004BF30()
{
  sub_1000038D4();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004BFAC()
{
  sub_1000038D4();
  sub_1000038AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004C028(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Checking age of temp file %@", buf, 0xCu);
}

void sub_10004C8FC(int *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1[42] = *(&off_1000992C0 + 8 * a1[41] + 3);
  if (a2)
  {
    [a1 setException:{a2, a4, a5, a6, a7, a8}];
    if ([objc_msgSend(a2 "domain")] && objc_msgSend(a2, "code") == 1)
    {
      v13 = "[FudStateMachine didBootstrap:info:error:]";
      v14 = a2;
      FudLog();
      v11 = @"com.apple.fud.updateInterrupted";
    }

    else
    {
      v11 = @"com.apple.fud.updateFailed";
    }

    v15 = [NSString stringWithString:v11, v13, v14];
    [a1 createEndOfUpdateDictForEvent:v15 info:a3];
    FudLog();
    AnalyticsSendEvent();
    if (v15)
    {
    }
  }

  else
  {
    v12 = sub_10001D234(a1, 7u, @"%s: unspecified error from plugin", a4, a5, a6, a7, a8, "[FudStateMachine didBootstrap:info:error:]");

    [a1 setException:v12];
  }
}

void sub_10004CACC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 56);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Not querying bsd notifications for %@ due to consent disabled", &v3, 0xCu);
}

void sub_10004CB48(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 56);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Not querying DAS rules for %@ due to consent disabled", &v3, 0xCu);
}

void sub_10004CEDC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD handleXPCStreamEvent:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004CF54(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD requestConsent:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004CFCC(void *a1)
{
  [a1 accessoryName];
  v7 = 136315394;
  sub_1000275F8();
  sub_100019C4C(&_mh_execute_header, v1, v2, "%s: Bypassing consent request for %{public}@. Update will proceed now.", v3, v4, v5, v6, v7);
}

void sub_10004D050(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "com.apple.uarp.disabledConsent.complete";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to register for %s (%u)", &v2, 0x12u);
}

void sub_10004D0DC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD revokeConsentRequest:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D154(void *a1)
{
  [a1 accessoryName];
  v7 = 136315394;
  sub_1000275F8();
  sub_100019C4C(&_mh_execute_header, v1, v2, "%s: Bypassing revoked consent request for %{public}@.", v3, v4, v5, v6, v7);
}

void sub_10004D1D8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD enableTRMSystemAuthenticationForRegistryEntryID:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D250(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD disableTRMSystemAuthenticationForRegistryEntryID:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D2C8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD consentReceived:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D340(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD consentReceivedPostLogoutMode:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D3B8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD firmwareUpdateProgressForUARPConsent:bytesSent:bytesTotal:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D430(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD progressForUARPConsent:bytesSent:bytesTotal:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D4A8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD progressForUARPConsentInPostLogout:bytesSent:bytesTotal:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D5A8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD personalizationHelperQueryPendingTssRequests:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D620(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD addAccessory:assetID:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D698(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD removeAccessory:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D710(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD firmwareUpdateProgressForAccessory:assetID:bytesSent:bytesTotal:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004D788(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPManagerAUD stagingCompleteForAccessoryID:assetID:status:]";
  sub_1000275DC(&_mh_execute_header, a1, a3, "%s: RECEIVED", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004DFE0()
{
  v1 = 136315650;
  v2 = "[UARPAssetManager initWithDelegate:]";
  v3 = 2080;
  sub_10002C4D4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Failed to register for %s (%u)", &v1, 0x1Cu);
}

void sub_10004E074()
{
  v1 = 136315650;
  v2 = "[UARPAssetManager initWithDelegate:]";
  v3 = 2080;
  sub_10002C4D4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Failed to register for %s (%u)", &v1, 0x1Cu);
}

void sub_10004E108(void *a1)
{
  [objc_msgSend(a1 "assetID")];
  [a1 accessoryID];
  sub_10002C4A0();
  sub_10002C438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004E1A4(void *a1)
{
  [objc_msgSend(a1 "assetID")];
  [a1 accessoryID];
  sub_10002C4A0();
  sub_10002C438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004E240(void *a1)
{
  [a1 accessoryID];
  sub_10000CF90();
  sub_10002C438();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004E2C0(uint64_t a1)
{
  if (sub_10002C448(a1))
  {
    v7 = 0;
    sub_10002C418(&_mh_execute_header, v1, v2, "_delegate = nil", v3, v4, v5, v6, v7);
  }
}

void sub_10004E304(uint64_t a1)
{
  if (sub_10002C448(a1))
  {
    v7 = 0;
    sub_10002C418(&_mh_execute_header, v1, v2, "assetID.remoteURL = nil", v3, v4, v5, v6, v7);
  }
}

void sub_10004E348(uint64_t a1)
{
  if (sub_10002C448(a1))
  {
    v7 = 0;
    sub_10002C418(&_mh_execute_header, v1, v2, "assetID = nil", v3, v4, v5, v6, v7);
  }
}

void sub_10004E38C(uint64_t a1)
{
  if (sub_10002C448(a1))
  {
    v7 = 0;
    sub_10002C418(&_mh_execute_header, v1, v2, "accessoryID = nil", v3, v4, v5, v6, v7);
  }
}

void sub_10004E3D0(id *a1)
{
  [*a1 type];
  sub_10000CF90();
  sub_10002C438();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

id sub_10004E454(char a1, NSObject *a2, void *a3)
{
  if (a1)
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_INFO, "Firmware download failed", v5, 2u);
  }

  return [a3 setDownloadStatus:2];
}

void sub_10004E4B0(uint64_t a1)
{
  if (sub_10002C448(a1))
  {
    v7 = 0;
    sub_10002C418(&_mh_execute_header, v1, v2, "assetID.releaseNotesRemoteURL = nil", v3, v4, v5, v6, v7);
  }
}

void sub_10004E4F4()
{
  LODWORD(v6) = 136315394;
  *(&v6 + 4) = "[UARPAssetManager changeAssetLocation:assetID:]_block_invoke";
  sub_10002C464();
  sub_10002C474(&_mh_execute_header, v0, v1, "%s: Cannot perform asset lookup without minimum required properties for %@", v2, v3, v4, v5, v6, DWORD2(v6));
}

void sub_10004E570(void *a1)
{
  [a1 type];
  sub_10000CF90();
  sub_10002C438();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004E5F0()
{
  LODWORD(v6) = 136315394;
  *(&v6 + 4) = "[UARPAssetManager assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:]";
  sub_10002C464();
  sub_10002C474(&_mh_execute_header, v0, v1, "%s: Failed to compute hash for this asset, not notifying delegate. Error: %@", v2, v3, v4, v5, v6, DWORD2(v6));
}

void sub_10004E66C()
{
  v6 = 136315394;
  sub_1000038D4();
  sub_10002C474(&_mh_execute_header, v0, v1, "%s: Still waiting on asset lookups for %@", v2, v3, v4, v5, v6);
}

void sub_10004E6E0()
{
  sub_10000CF90();
  sub_10002C464();
  sub_10000CF9C(&_mh_execute_header, v0, v1, "Unable to create directory at %@ with %@");
}

void sub_10004E750()
{
  sub_10000CF90();
  sub_10002C464();
  sub_10000CF9C(&_mh_execute_header, v0, v1, "Failed to set permission for location %@: %@");
}

void sub_10004E7C0()
{
  v6 = 136315394;
  sub_1000038D4();
  sub_10002C474(&_mh_execute_header, v0, v1, "%s: Unsupported assetID for CHIPAccessories request %@", v2, v3, v4, v5, v6);
}

void sub_10004E834()
{
  v6 = 136315394;
  sub_1000038D4();
  sub_10002C474(&_mh_execute_header, v0, v1, "%s: Unsupported assetID for AttestationCertificates request %@", v2, v3, v4, v5, v6);
}

NSNumber *sub_10004F3DC(void *a1, NSNumber **a2)
{
  v4 = 0;
  if (sscanf([objc_msgSend(a1 "lowercaseString")], "0x%x", &v4) == 1)
  {
    result = [NSNumber numberWithUnsignedInt:v4];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void sub_10004F448(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  LODWORD(v10) = 67109120;
  HIDWORD(v10) = [v2 processIdentifier];
  sub_10002FCAC(&_mh_execute_header, v4, v5, "Connection to PID %d interrupted", v6, v7, v8, v9, v10);
}

void sub_10004F4D4(void *a1, void *a2)
{
  v3 = a1;
  LODWORD(v10) = 67109120;
  HIDWORD(v10) = [a2 processIdentifier];
  sub_10002FCAC(&_mh_execute_header, v4, v5, "Connection from PID %d does not have the correct entitlement", v6, v7, v8, v9, v10);
}

void sub_10004F560(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Duplicate connection detected for UUID %@", &v2, 0xCu);
}

void sub_10004F5D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No connection detected for UUID %@", &v2, 0xCu);
}

void sub_10004FDF8(void *a1)
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325FC();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  if (a1)
  {
    [a1 handleHIDAccessoryDisconnect];
  }
}

void sub_10004FE84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a6 && [objc_msgSend(a1 eaHIDAccessory] >= a7)
    {
      v11 = a7 - 1;
      v12 = [NSData dataWithBytes:a6 + 1 length:a7 - 1];
      if (v12)
      {
        v13 = v12;
        if (qword_100099828 != -1)
        {
          dispatch_once(&qword_100099828, &stru_100081D38);
        }

        v14 = qword_100099830;
        if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
        {
          sub_100032718();
          v18 = v11;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received input report: reportID: %d, length: %ld, report: %@", v17, 0x1Cu);
        }

        [a1 parseInputReportWithId:a5 andBuffer:v13];
      }
    }

    else
    {
      if (qword_100099828 != -1)
      {
        dispatch_once(&qword_100099828, &stru_100081D38);
      }

      v15 = qword_100099830;
      if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(a1 "eaHIDAccessory")];
        sub_100032718();
        v18 = a7;
        v19 = 1024;
        LODWORD(v20) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ERROR: Input report (ID: %d) has invalid reportLength: %ld, expecting %u", v17, 0x18u);
      }
    }
  }
}

void sub_100050B90()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_100032698();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100050C44()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_100032698();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100050CF8()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }
}

void sub_100050DB0()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_100032698();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100050E64()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100050F08()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }
}

void sub_100050FC4(void *a1, id *a2)
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    [a1 length];
    [*a2 HIDReportSizeOutput];
    sub_1000326EC();
    sub_10003261C();
    _os_log_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

uint64_t sub_100051098(void *a1, char a2)
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    [a1 length];
    sub_100011500();
    sub_1000325FC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  return a2 & 1;
}

_BYTE *sub_100051170(_BYTE *result, uint64_t a2, void *a3)
{
  v4 = __rev16(*(result + 1));
  v5 = result[9];
  *(a2 + 36) = 2;
  if ((v5 & 2) != 0)
  {
    if (v4 == *(a2 + 32))
    {
      result = [a3 subdataWithRange:{6, objc_msgSend(a3, "length") - 6}];
      if (result)
      {

        return [a2 processControlMessageResponse:result];
      }
    }
  }

  else if ((v5 & 5) != 0)
  {
    *(a2 + 32) = v4;
    result = [a3 subdataWithRange:{6, objc_msgSend(a3, "length") - 6}];
    if (result)
    {

      return [a2 processControlMessageRequest:result];
    }
  }

  return result;
}

void sub_100051248()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(11);
}

void sub_100051310()
{
  sub_10003268C();
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    sub_10003260C();
    sub_10003263C();
    sub_10003262C();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_100032658(11);
}

id sub_1000513E4(void *a1)
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    LOWORD(v8) = 0;
    sub_1000325FC();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  return [a1 cleanupEASession];
}

void sub_10005146C()
{
  sub_10003268C();
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    sub_10003260C();
    sub_10003263C();
    sub_10003262C();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_100032658(6);
}

void sub_100051540()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(9);
}

void sub_100051608()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(9);
}

void sub_1000516D0()
{
  sub_10003268C();
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    sub_10003260C();
    sub_10003263C();
    sub_10003262C();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_100032658(9);
}

void sub_1000517A4()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(8);
}

void sub_10005186C()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(8);
}

void sub_100051934()
{
  sub_10003268C();
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    sub_10003260C();
    sub_10003263C();
    sub_10003262C();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_100032658(8);
}

void sub_100051A08()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(7);
}

void sub_100051AD0()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(7);
}

void sub_100051B98()
{
  sub_10003268C();
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    sub_10003260C();
    sub_10003263C();
    sub_10003262C();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_100032658(7);
}

void sub_100051C6C()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(5);
}

void sub_100051D34()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(5);
}

void sub_100051DFC()
{
  sub_10003268C();
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    sub_10003260C();
    sub_10003263C();
    sub_10003262C();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_100032658(5);
}

void sub_100051ED0()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(4);
}

void sub_100051F98()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(4);
}

void sub_100052060()
{
  sub_10003268C();
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    sub_10003260C();
    sub_10003263C();
    sub_10003262C();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_100032658(4);
}

void sub_100052134()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(1);
}

void sub_1000521FC()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325E8();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_100032658(1);
}

void sub_1000522C4()
{
  sub_10003268C();
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    sub_10003260C();
    sub_10003263C();
    sub_10003262C();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_100032658(1);
}

void sub_100052398(int a1, __int16 a2, _WORD *a3)
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  v6 = qword_100099830;
  if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invalid Control message flag 0x%x", v7, 8u);
  }

  *a3 = a2;
}

uint64_t sub_100052474(void *a1, char a2)
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    [a1 length];
    sub_100011500();
    sub_1000325FC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  return a2 & 1;
}

void sub_10005254C()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_1000525C8()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100052684()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100052700()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_10005277C()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

uint64_t sub_1000527F8(void *a1, void *a2, char a3)
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    [a1 length];
    LODWORD(v12) = 136315394;
    sub_100011500();
    sub_10003262C();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  [a2 cleanupEASession];
  return a3 & 1;
}

void sub_1000528DC()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

id sub_100052958(void *a1)
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    LOWORD(v8) = 0;
    sub_1000325FC();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  return [a1 cleanupEASession];
}

void sub_1000529E0()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100052A5C()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100052AD8()
{
  sub_10003268C();
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326D4())
  {
    sub_10003262C();
    _os_log_impl(v1, v2, v3, v4, v5, 8u);
  }

  *v0 = 0;
}

void sub_100052B9C(uint64_t a1, void *a2)
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    [a2 count];
    sub_10003260C();
    sub_10003261C();
    _os_log_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }
}

void sub_100052C84()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }
}

void sub_100052D40()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_100032698();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100052DF4()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_100032698();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100052EA8()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_100032698();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100052F5C()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100052FD8()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_100032698();
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_10005308C()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326BC())
  {
    sub_10003261C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100053108()
{
  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    sub_1000325FC();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }
}

void sub_100053248()
{
  v6 = 136315394;
  sub_1000275F8();
  sub_10002C474(&_mh_execute_header, v0, v1, "%s: Error override settings dictionary does not contains correct format for models: %{public}@", v2, v3, v4, v5, v6);
}

void sub_1000532BC()
{
  v6 = 136315394;
  sub_1000275F8();
  sub_10002C474(&_mh_execute_header, v0, v1, "%s: override dictionary contains incorrect format for model url %{public}@", v2, v3, v4, v5, v6);
}

void sub_1000533A4(void *a1)
{
  [objc_msgSend(a1 "accessoryID")];
  [objc_msgSend(a1 "accessoryID")];
  sub_100037CC8();
  sub_10002C438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100053450(void *a1)
{
  [objc_msgSend(a1 "accessoryID")];
  sub_10000CF90();
  sub_10002C438();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005354C(void *a1)
{
  [a1 accessoryID];
  sub_10000CF90();
  sub_10002C438();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000535CC()
{
  sub_100037CD8();
  [v1 results];
  [v0 accessoryID];
  sub_100037CC8();
  sub_10002C438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

uint64_t sub_100053668(void *a1, void *a2)
{
  if ([objc_msgSend(a1 "accessoryID")])
  {
    return 1;
  }

  [a2 setLocalURL:0];
  [a2 setDownloadStatus:2];
  return 0;
}

void sub_1000536B8(uint64_t a1, void *a2)
{
  v4 = sub_100037CE4(a1, a2);
  *v3 = 138412290;
  *v2 = v4;
  sub_100037D04(&_mh_execute_header, v5, v6, "Error getting downstream asset location for accessory:%@");
}

void sub_100053704(uint64_t a1, void *a2)
{
  v4 = sub_100037CE4(a1, a2);
  *v3 = 138412290;
  *v2 = v4;
  sub_100037D04(&_mh_execute_header, v5, v6, "Error getting supplemental asset location for accessory:%@");
}

void sub_100053750()
{
  sub_100037CD8();
  [v0 accessoryID];
  sub_100037CC8();
  sub_10002C438();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000537D8()
{
  sub_100037CD8();
  [v1 results];
  [v0 accessoryID];
  sub_100037CC8();
  sub_10002C438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100053874()
{
  sub_100037CD8();
  [v1 results];
  [v0 accessoryID];
  sub_100037CC8();
  sub_10002C438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100053910(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136315394;
  *&v8[4] = "[UARPMobileAssetManager(Query) handleSupplementalAssetDownloadCompletion:result:forAccessory:]";
  *&v8[12] = 2112;
  *&v8[14] = *a1;
  sub_10002C474(&_mh_execute_header, a2, a3, "%s: Failed to create cached asset directory error=%@", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16]);
}

void sub_100053994(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 136315650;
  v5 = "[UARPMobileAssetManager(Query) handleSupplementalAssetDownloadCompletion:result:forAccessory:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to clear cached supplemental asset at path: %@, error: %@", &v4, 0x20u);
}

void sub_100053A30()
{
  LODWORD(v6) = 136315394;
  *(&v6 + 4) = "[UARPMobileAssetManager(Query) handleSupplementalAssetDownloadCompletion:result:forAccessory:]";
  sub_100037CC8();
  sub_10002C474(&_mh_execute_header, v0, v1, "%s: No assetFileName found for asset=%@ ", v2, v3, v4, v5, v6, DWORD2(v6));
}

void sub_100053AA8()
{
  LODWORD(v6) = 136315394;
  *(&v6 + 4) = "[UARPMobileAssetManager(Query) handleSupplementalAssetDownloadCompletion:result:forAccessory:]";
  sub_100037CC8();
  sub_10002C474(&_mh_execute_header, v0, v1, "%s: No assetBundle found for asset=%@ ", v2, v3, v4, v5, v6, DWORD2(v6));
}

void sub_100053B54(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + 40);
  v4 = *(a2 + 40);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Update for %{public}@ already in progress. Queue up %{public}@", &v5, 0x16u);
}

void sub_100053CEC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get localized accessory name for %{public}@", &v2, 0xCu);
}

void sub_100053DCC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 72);
  v4 = *(*a2 + 56);
  v5 = *(*a2 + 72);
  v6 = 134349568;
  v7 = v3;
  v8 = 1026;
  v9 = v4;
  v10 = 1026;
  v11 = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "User response was: %{public}lu ignorePromptResponse=%{public}d updateInprogress=%{public}d", &v6, 0x18u);
}

void sub_100053E6C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Saving declined accessory at url %{public}@", &v2, 0xCu);
}

void sub_100053EE4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to save declined accessory at url %{public}@", &v2, 0xCu);
}

void sub_100053F5C()
{
  sub_10003268C();
  [v0 accessoryID];
  sub_10003C164();
  sub_10003C14C();
  sub_100019C4C(&_mh_execute_header, v1, v2, "Download consent requested: No state exists on %@ for %@", v3, v4, v5, v6);
}

void sub_100053FE0()
{
  sub_10003268C();
  [v0 accessoryID];
  sub_10003C164();
  sub_10003C14C();
  sub_100019C4C(&_mh_execute_header, v1, v2, "Download consent received: No state exists on %@ for %@", v3, v4, v5, v6);
}

void sub_100054064()
{
  sub_10003268C();
  [v0 accessoryID];
  sub_10003C164();
  sub_10003C14C();
  sub_100019C4C(&_mh_execute_header, v1, v2, "Download complete: No state exists on %@ for %@", v3, v4, v5, v6);
}

void sub_1000540E8()
{
  sub_10003268C();
  [v0 accessoryID];
  sub_10003C164();
  sub_10003C14C();
  sub_100019C4C(&_mh_execute_header, v1, v2, "Send update firmware event from framework: No state exists on %@ for %@", v3, v4, v5, v6);
}

void sub_1000541BC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = byte_100099990;
  sub_100043FB4(&_mh_execute_header, a1, a3, "%s\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100054234(os_log_t log)
{
  v1 = 136315138;
  v2 = byte_100099B90;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s\n", &v1, 0xCu);
}

void sub_1000542B8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = byte_100099F90;
  sub_100043FB4(&_mh_execute_header, a1, a3, "%s\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100054330(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = byte_10009A190;
  sub_100043FB4(&_mh_execute_header, a1, a3, "%s\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000543A8(os_log_t log)
{
  v1 = 136315138;
  v2 = byte_10009A590;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s\n", &v1, 0xCu);
}

void sub_10005442C(os_log_t log)
{
  v1 = 136315138;
  v2 = byte_10009A790;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s\n", &v1, 0xCu);
}