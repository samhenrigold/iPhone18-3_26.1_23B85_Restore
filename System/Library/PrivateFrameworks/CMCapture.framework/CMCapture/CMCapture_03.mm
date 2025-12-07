uint64_t FigCaptureSourceSensorRawHighResolutionFlavorFromDimensions(uint64_t a1)
{
  if (FigCaptureNumberOfPixelsForDimensions(a1) > 0x2DC6C00)
  {
    return 2;
  }

  if (FigCaptureLongerDimensionForDimensions(a1) >> 5 <= 0x98)
  {
    return FigCaptureNumberOfPixelsForDimensions(a1) > 0xCCB400;
  }

  return 0;
}

uint64_t BWGetMaximumDisplayFrequency(uint64_t a1, uint64_t a2)
{
  if (BWGetDisplaySupportsPerseus_onceToken != -1)
  {
    BWGetDisplaySupportsPerseus_cold_1();
  }

  if (BWGetDisplaySupportsPerseus_displaySupportsPerseus)
  {
    return 120;
  }

  else
  {
    return 60;
  }
}

void csp_shouldEnableLightSourceMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_80();
  if (([v29 isVideoGreenGhostMitigationUsesLightSourceMaskAndKeypointDescriptorData] & 1) != 0 || objc_msgSend(v27, "isVideoGreenGhostOfflineMetadataEnabled") && objc_msgSend(v27, "isVideoGreenGhostOfflineLightSourceMaskEnabled"))
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_43();
    if (OUTLINED_FUNCTION_1_18(v30, v31, v32, v33))
    {
      OUTLINED_FUNCTION_38_10();
LABEL_6:
      v34 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_71();
        if (!v35)
        {
          objc_enumerationMutation(v26);
        }

        v36 = *(a26 + 8 * v34);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = [objc_msgSend(v36 "sinkConfiguration")];
          if ((v37 | 2) == 6)
          {
            v38 = v37;
            if ([v36 videoGreenGhostMitigationEnabled] & 1) != 0 || v38 == 4 && objc_msgSend(v27, "isVideoGreenGhostOfflineMetadataEnabled") && (objc_msgSend(v27, "isVideoGreenGhostOfflineLightSourceMaskEnabled"))
            {
              break;
            }
          }
        }

        if (v28 == ++v34)
        {
          OUTLINED_FUNCTION_43();
          v28 = OUTLINED_FUNCTION_1_18(v39, v40, v41, v42);
          if (v28)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  OUTLINED_FUNCTION_56();
}

void csp_shouldEnableKeypointDescriptorData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27)
{
  OUTLINED_FUNCTION_97();
  v28 = v27;
  if ([v29 isVideoGreenGhostMitigationUsesLightSourceMaskAndKeypointDescriptorData])
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_43();
    v34 = OUTLINED_FUNCTION_1_18(v30, v31, v32, v33);
    if (v34)
    {
      v35 = v34;
      v36 = *a27;
LABEL_4:
      v37 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_4_10();
        if (v38 != v36)
        {
          objc_enumerationMutation(v28);
        }

        v39 = *(a26 + 8 * v37);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v39 "sinkConfiguration")] & 0xFFFFFFFD) == 4 && (objc_msgSend(v39, "videoGreenGhostMitigationEnabled"))
        {
          break;
        }

        if (v35 == ++v37)
        {
          OUTLINED_FUNCTION_43();
          v35 = OUTLINED_FUNCTION_1_18(v40, v41, v42, v43);
          if (v35)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  OUTLINED_FUNCTION_98();
}

void OUTLINED_FUNCTION_78_1(double a1, double a2, double a3, double a4)
{
  *&STACK[0x398] = a2;
  *&STACK[0x3A0] = a3;
  *&STACK[0x3A8] = a4;
}

unint64_t mscsn_scaleDimensionsWithAlignment(unint64_t a1, int a2, double a3, double a4)
{
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = a3 * a1;
  v10 = v9;
  v11 = a4 * SHIDWORD(a1);
  v12 = v11;
  if (FigCapturePlatformIdentifier() < 9)
  {
    goto LABEL_23;
  }

  v13 = v7;
  if (v8)
  {
    v14 = v7;
    v15 = v8;
    do
    {
      v13 = v15;
      v15 = v14 % v15;
      v14 = v13;
    }

    while (v15);
  }

  if (v13 % a2 || (v16 = v7 / v13, v7 / v13 > 16) || (v17 = a4 / a3 * (v8 / v13), v18 = llroundf(v17), v18 > 10))
  {
LABEL_23:
    v26 = (llroundf(v10 / a2) * a2);
    v25 = (llroundf(v12 / a2) * a2);
  }

  else
  {
    if (v16 % a2 || v18 % a2)
    {
      v16 *= a2;
      v18 *= a2;
    }

    v19 = vcvtps_s32_f32(v10 / v16);
    v20 = v16 * v19;
    v21 = vcvtps_s32_f32(v12 / v18);
    v22 = v18 * v21;
    v23 = v16 * v19 - v10;
    if (v23 < 0)
    {
      v23 = v10 - v16 * v19;
    }

    v24 = v22 - v12;
    if (v22 - v12 < 0)
    {
      v24 = v12 - v22;
    }

    LODWORD(v25) = v18 * v19;
    v26 = v16 * v21;
    if (v23 >= v24)
    {
      LODWORD(v25) = v22;
    }

    else
    {
      v26 = v20;
    }

    v27 = v9 / v11;
    v28 = vabds_f32(v26 / v25, v27);
    v29 = vabds_f32(v20 / v22, v27);
    if (v28 >= v29)
    {
      v25 = v22;
    }

    else
    {
      v25 = v25;
    }

    if (v28 >= v29)
    {
      v26 = v20;
    }
  }

  return v26 | (v25 << 32);
}

uint64_t FigCapturePixelFormatIsFullRange(int a1)
{
  result = 0;
  if (a1 > 1701738613)
  {
    if (a1 > 2033463855)
    {
      if (a1 > 2088269359)
      {
        if (a1 > 2100852271)
        {
          if (a1 == 2100852272)
          {
            return result;
          }

          v3 = 2105046576;
        }

        else
        {
          if (a1 == 2088269360)
          {
            return result;
          }

          v3 = 2088269362;
        }

        goto LABEL_39;
      }

      if (a1 == 2033463856 || a1 == 2037741171)
      {
        return result;
      }

      v3 = 2084075056;
    }

    else
    {
      if (a1 > 1882469427)
      {
        if (a1 > 2016686641)
        {
          if (a1 == 2016686642)
          {
            return result;
          }

          v4 = 13364;
        }

        else
        {
          if (a1 == 1882469428)
          {
            return result;
          }

          v4 = 12848;
        }

        v3 = v4 | 0x78340000;
        goto LABEL_39;
      }

      if (a1 == 1701738614 || a1 == 1882468912)
      {
        return result;
      }

      v3 = 1882468914;
    }

LABEL_39:
    if (a1 != v3)
    {
      return 1;
    }

    return result;
  }

  if (a1 > 792229423)
  {
    if (a1 > 875704437)
    {
      if (a1 > 1534621231)
      {
        if (a1 == 1534621232)
        {
          return result;
        }

        v3 = 1701722230;
      }

      else
      {
        if (a1 == 875704438)
        {
          return result;
        }

        v3 = 1530426928;
      }

      goto LABEL_39;
    }

    if (a1 == 792229424 || a1 == 796423728)
    {
      return result;
    }

    v3 = 796423730;
    goto LABEL_39;
  }

  if (a1 > 758674991)
  {
    if (a1 == 758674992 || a1 == 762869296)
    {
      return result;
    }

    v3 = 762869298;
    goto LABEL_39;
  }

  if ((a1 - 645428784) > 4 || ((1 << (a1 - 48)) & 0x15) == 0)
  {
    v3 = 641234480;
    goto LABEL_39;
  }

  return result;
}

uint64_t mscsn_streamOutputIDForOutputIndex(int a1)
{
  result = 0;
  if (a1 <= 7)
  {
    if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          v3 = off_1E798CA78;
        }

        else
        {
          v3 = off_1E798CA90;
        }
      }

      else if (a1 == 4)
      {
        v3 = off_1E798CAC0;
      }

      else
      {
        v3 = off_1E798CAD0;
      }
    }

    else if (a1 > 1)
    {
      if (a1 == 2)
      {
        v3 = off_1E798CA80;
      }

      else
      {
        v3 = off_1E798CAB8;
      }
    }

    else if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      v3 = off_1E798CAB0;
    }

    else
    {
      v3 = off_1E798CA98;
    }

    return *v3;
  }

  if ((a1 - 9) < 8)
  {
    v3 = off_1E798CA88;
    return *v3;
  }

  if (a1 == 8)
  {
    v3 = off_1E798CAA8;
    return *v3;
  }

  if (a1 == 17)
  {
    v3 = off_1E798CAA0;
    return *v3;
  }

  return result;
}

uint64_t flashlightRemote_sendBasicMessage(uint64_t a1, uint64_t a2, void *a3)
{
  if (flashlightRemote_createBasicMessage(a1, a2))
  {
    if (a3)
    {
      if (*a3)
      {
        flashlightRemote_sendBasicMessage_cold_1();
        v5 = 4294954516;
      }

      else
      {
        v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v4)
        {
          v5 = v4;
          flashlightRemote_sendBasicMessage_cold_2();
        }

        else if (*a3)
        {
          v5 = 0;
        }

        else
        {
          flashlightRemote_sendBasicMessage_cold_3();
          v5 = 4294954513;
        }
      }
    }

    else
    {
      v6 = FigXPCRemoteClientSendSyncMessage();
      v5 = v6;
      if (v6)
      {
        flashlightRemote_sendBasicMessage_cold_4(v6);
      }
    }
  }

  else
  {
    flashlightRemote_sendBasicMessage_cold_5();
    v5 = 4294954510;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t FigCaptureUncompressedPixelFormatForPixelFormat(uint64_t a1)
{
  v1 = a1;
  if (FigCapturePixelFormatGetCompressionType(a1))
  {
    v2 = FigCapturePixelFormatIs422(v1);
    v3 = FigCapturePixelFormatIs444(v1);
    IsTenBit = FigCapturePixelFormatIsTenBit(v1);
    v5 = v1 == 761816624 || v1 == 795371056;
    v6 = v5 || v1 == 1751527984;
    v7 = v6 || v1 == 2087216688;
    v8 = v7;
    IsFullRange = FigCapturePixelFormatIsFullRange(v1);
    v10 = v1 == 641877825 || v1 == 759318337;
    v11 = v10 || v1 == 792872769;
    v12 = v11 || v1 == 1111970369;
    v13 = v12 || v1 == 2084718401;
    v1 = 1111970369;
    if (!v13)
    {
      v1 = (v2 & IsTenBit & IsFullRange) != 0 ? 1885745714 : 1882468914;
      if ((v2 & IsTenBit & 1) == 0)
      {
        v1 = (v3 & IsTenBit & IsFullRange) != 0 ? 1885746228 : 1882469428;
        if ((v3 & IsTenBit & 1) == 0)
        {
          v1 = (IsTenBit & IsFullRange) != 0 ? 1885745712 : 1882468912;
          if ((IsTenBit & 1) == 0)
          {
            if (IsFullRange)
            {
              v15 = 875704422;
            }

            else
            {
              v15 = 875704438;
            }

            if (v8)
            {
              return 1751527984;
            }

            else
            {
              return v15;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t FigCapturePixelFormatIsYCbCr(int a1)
{
  result = 1;
  if (a1 > 1701738597)
  {
    if (a1 > 2019963955)
    {
      if (a1 <= 2088265263)
      {
        if (a1 <= 2037741170)
        {
          if (a1 == 2019963956 || a1 == 2033463856)
          {
            return result;
          }

          v3 = 2037741158;
        }

        else if (a1 > 2084075055)
        {
          if (a1 == 2084075056)
          {
            return result;
          }

          v3 = 2087216688;
        }

        else
        {
          if (a1 == 2037741171)
          {
            return result;
          }

          v3 = 2084070960;
        }
      }

      else if (a1 > 2100848175)
      {
        if (a1 > 2105042479)
        {
          if (a1 == 2105042480)
          {
            return result;
          }

          v3 = 2105046576;
        }

        else
        {
          if (a1 == 2100848176)
          {
            return result;
          }

          v3 = 2100852272;
        }
      }

      else
      {
        if (a1 > 2088269359)
        {
          if (a1 == 2088269360)
          {
            return result;
          }

          v4 = 30258;
        }

        else
        {
          if (a1 == 2088265264)
          {
            return result;
          }

          v4 = 26162;
        }

        v3 = v4 | 0x7C780000;
      }
    }

    else
    {
      if (a1 > 1885745711)
      {
        if (a1 > 2016686641)
        {
          if (a1 > 2019963439)
          {
            if (a1 == 2019963440)
            {
              return result;
            }

            v3 = 2019963442;
            goto LABEL_90;
          }

          if (a1 == 2016686642)
          {
            return result;
          }

          v8 = 13364;
        }

        else
        {
          if (a1 <= 1885746227)
          {
            if (a1 == 1885745712)
            {
              return result;
            }

            v3 = 1885745714;
            goto LABEL_90;
          }

          if (a1 == 1885746228)
          {
            return result;
          }

          v8 = 12848;
        }

        v3 = v8 | 0x78340000;
        goto LABEL_90;
      }

      if (a1 <= 1751527983)
      {
        if (a1 == 1701738598 || a1 == 1701738614)
        {
          return result;
        }

        v3 = 1714696752;
      }

      else
      {
        if (a1 > 1882468913)
        {
          if (a1 == 1882468914)
          {
            return result;
          }

          v6 = 13364;
        }

        else
        {
          if (a1 == 1751527984)
          {
            return result;
          }

          v6 = 12848;
        }

        v3 = v6 | 0x70340000;
      }
    }

LABEL_90:
    if (a1 == v3)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 792225327)
  {
    if (a1 <= 875704421)
    {
      if (a1 <= 796419631)
      {
        if (a1 == 792225328 || a1 == 792229424)
        {
          return result;
        }

        v3 = 795371056;
      }

      else
      {
        if (a1 > 796423727)
        {
          if (a1 == 796423728)
          {
            return result;
          }

          v7 = 30258;
        }

        else
        {
          if (a1 == 796419632)
          {
            return result;
          }

          v7 = 26162;
        }

        v3 = v7 | 0x2F780000;
      }
    }

    else if (a1 > 1534617135)
    {
      if (a1 > 1701722213)
      {
        if (a1 == 1701722214)
        {
          return result;
        }

        v3 = 1701722230;
      }

      else
      {
        if (a1 == 1534617136)
        {
          return result;
        }

        v3 = 1534621232;
      }
    }

    else if (a1 > 1530422831)
    {
      if (a1 == 1530422832)
      {
        return result;
      }

      v3 = 1530426928;
    }

    else
    {
      if (a1 == 875704422)
      {
        return result;
      }

      v3 = 875704438;
    }

    goto LABEL_90;
  }

  if (a1 > 758670895)
  {
    if (a1 <= 762865199)
    {
      if (a1 == 758670896 || a1 == 758674992)
      {
        return result;
      }

      v3 = 761816624;
    }

    else
    {
      if (a1 > 762869295)
      {
        if (a1 == 762869296)
        {
          return result;
        }

        v5 = 30258;
      }

      else
      {
        if (a1 == 762865200)
        {
          return result;
        }

        v5 = 26162;
      }

      v3 = v5 | 0x2D780000;
    }

    goto LABEL_90;
  }

  if (a1 > 645428783)
  {
    v9 = a1 - 645428784;
    if (v9 > 4 || ((1 << v9) & 0x15) == 0)
    {
      return 0;
    }
  }

  else if (((a1 - 645424688) > 4 || ((1 << (a1 - 48)) & 0x15) == 0) && a1 != 641230384)
  {
    v3 = 641234480;
    goto LABEL_90;
  }

  return result;
}

uint64_t FigCapturePixelFormatGetCompressionType(int a1)
{
  result = 0;
  if (a1 <= 795371055)
  {
    if (a1 <= 758674991)
    {
      if (a1 > 645424687)
      {
        if ((a1 - 645424688) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0 || (a1 - 645428784) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
        {
          return 4;
        }

        v4 = 758670896;
      }

      else
      {
        if (a1 == 641230384 || a1 == 641234480)
        {
          return 4;
        }

        v4 = 641877825;
      }

      goto LABEL_57;
    }

    if (a1 > 762869295)
    {
      if (a1 > 792225327)
      {
        if (a1 == 792225328 || a1 == 792229424)
        {
          return 4;
        }

        v4 = 792872769;
        goto LABEL_57;
      }

      if (a1 == 762869296)
      {
        return 4;
      }

      v6 = 30258;
    }

    else
    {
      if (a1 <= 761816623)
      {
        if (a1 == 758674992)
        {
          return 4;
        }

        v4 = 759318337;
        goto LABEL_57;
      }

      if (a1 == 761816624 || a1 == 762865200)
      {
        return 4;
      }

      v6 = 26162;
    }

    v4 = v6 | 0x2D780000;
    goto LABEL_57;
  }

  if (a1 <= 2084075055)
  {
    if (a1 > 1530422831)
    {
      if (a1 <= 1534617135)
      {
        if (a1 != 1530422832 && a1 != 1530426928)
        {
          return result;
        }
      }

      else if (a1 != 1534617136 && a1 != 1534621232)
      {
        v4 = 2084070960;
        goto LABEL_57;
      }

      return 1;
    }

    if (a1 <= 796419633)
    {
      if (a1 == 795371056)
      {
        return 4;
      }

      v5 = 26160;
    }

    else
    {
      if (a1 == 796419634 || a1 == 796423728)
      {
        return 4;
      }

      v5 = 30258;
    }

    v4 = v5 | 0x2F780000;
LABEL_57:
    if (a1 != v4)
    {
      return result;
    }

    return 4;
  }

  if (a1 <= 2088269359)
  {
    if (a1 <= 2087216687)
    {
      if (a1 == 2084075056)
      {
        return 4;
      }

      v4 = 2084718401;
    }

    else
    {
      if (a1 == 2087216688 || a1 == 2088265264)
      {
        return 4;
      }

      v4 = 2088265266;
    }

    goto LABEL_57;
  }

  if (a1 <= 2100852271)
  {
    if (a1 != 2088269360 && a1 != 2088269362)
    {
      v3 = 2100848176;
      goto LABEL_42;
    }

    return 4;
  }

  if (a1 == 2100852272 || a1 == 2105042480)
  {
    return 2;
  }

  v3 = 2105046576;
LABEL_42:
  if (a1 == v3)
  {
    return 2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_59_2(uint64_t a1)
{
  v2 = *(a1 + 72);

  return [v2 count];
}

BOOL OUTLINED_FUNCTION_59_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, os_log_type_t type, int a23, int a24)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_59_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  return [v57 countByEnumeratingWithState:&STACK[0x200] objects:&a57 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_59_6()
{
  v1 = STACK[0x2D8];

  return [v1 countByEnumeratingWithState:&STACK[0x660] objects:&STACK[0x6F0] count:16];
}

uint64_t OUTLINED_FUNCTION_59_9(uint64_t a1)
{

  return _FigIsCurrentDispatchQueue();
}

BOOL OUTLINED_FUNCTION_59_11(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_log_type_t type, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{

  return os_log_type_enabled(a1, type);
}

uint64_t mscsn_setScalerCropAndOutputDimensionsInConfiguration(void *a1, void *a2, void *a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, double d0_0, double a10, double a11, double a12, float a13, float a14, unsigned __int8 a9)
{
  v17 = 0;
  v18 = 0;
  mscsn_calculateScalerCropAndOutputDimensions(a2, a3, a4, a5, a6, a7, a8, a9, d0_0, a10, a11, a12, a13, a14, &v18, &v17);
  if (v18)
  {
    [a1 setObject:v18 forKeyedSubscript:*off_1E798C9D8];
  }

  [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v17), *off_1E798CA48}];
  return [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", HIDWORD(v17)), *off_1E798C9F8}];
}

uint64_t OUTLINED_FUNCTION_277(uint64_t a1)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_144()
{

  return [v0 requiredFormat];
}

uint64_t FigCapturePlatformSupportsUniversalCompression()
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  return sPlatformSupportsUniversalCompression;
}

uint64_t FigFlashlightGetTypeID(uint64_t a1)
{
  if (FigFlashlightGetClassID_onceToken != -1)
  {
    FigFlashlightGetClassID_cold_1();
  }

  v2 = FigFlashlightGetClassID_sFigFlashlightClassID;

  return MEMORY[0x1EEDBB488](v2);
}

uint64_t OUTLINED_FUNCTION_237()
{

  return [v0 objectForKeyedSubscript:v1];
}

__n128 OUTLINED_FUNCTION_99_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a27, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a28, unint64_t a29)
{
  result = a28;
  *v29 = a28;
  v29[1].n128_u64[0] = a29;
  return result;
}

uint64_t OUTLINED_FUNCTION_99_2()
{
  v3 = *(v1 + 3480);

  return [v3 numberWithUnsignedInt:v0];
}

void OUTLINED_FUNCTION_99_3(NSObject *a1@<X0>, __int16 a2@<W8>)
{
  *(v4 - 108) = a2;
  *(v4 - 112) = v2;
  *(v4 - 106) = 0;
  *(v4 - 128) = v3;
  *(v4 - 120) = 0;

  dispatch_async(a1, (v4 - 160));
}

uint64_t OUTLINED_FUNCTION_121_2()
{

  return [v0 countByEnumeratingWithState:&STACK[0x390] objects:&STACK[0x310] count:16];
}

double OUTLINED_FUNCTION_96_0(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v12 = *(v10 - 240);
  v13 = *(v10 - 232);
  v14 = *(v10 - 224);
  v15 = *(v10 - 216);

  return psn_limitRectWithinImageCircle(v8, v9, a1.n128_f64[0], a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], v12, v13, v14, v15);
}

uint64_t OUTLINED_FUNCTION_145(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_278()
{

  return [v0 baseZoomFactor];
}

void *BWFilterNonDisruptiveSwitchingFormatZoomFactors(void *a1, void *a2, float a3)
{
  v4 = a2;
  isEqualToString = objc_msgSend_isEqualToString_(a1, a2, *off_1E798A0D8);
  if (a3 <= 60.0 || (isEqualToString & 1) == 0)
  {
    if ([v4 count] < 2)
    {
      return v4;
    }

    v7 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v4 sortedArrayUsingSelector:sel_compare_];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (!v9)
    {
      return v7;
    }

    v10 = v9;
    v11 = *v20;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      [objc_msgSend(v7 "lastObject")];
      if (v14 == 0.0)
      {
        goto LABEL_14;
      }

      v15 = v14;
      [v13 floatValue];
      if ((v16 / v15) >= 1.2)
      {
        goto LABEL_14;
      }

      if (objc_msgSend_isEqualToString_(a1))
      {
        break;
      }

LABEL_15:
      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (!v10)
        {
          return v7;
        }

        goto LABEL_7;
      }
    }

    [v7 removeLastObject];
LABEL_14:
    [v7 addObject:v13];
    goto LABEL_15;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_58_5()
{

  return [v0 countByEnumeratingWithState:v1 - 192 objects:&STACK[0x7E0] count:16];
}

double OUTLINED_FUNCTION_58_7(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, double a29, double a30, double a31, double a32, double a33, double a34, double a35, double a36, double a37, double a38, double a39, double a40, double a41, double a42)
{

  v43 = a42;
  return FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(0.0, 0.0, a3.n128_f64[0], a4.n128_f64[0], v43);
}

BOOL OUTLINED_FUNCTION_58_8(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

BOOL OUTLINED_FUNCTION_58_14(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_4_13()
{
  v4 = *(v0 + *(v1 + 148));

  return [(BWRealtimeCinematographyNode *)v0 _updateFromQueue:v4 sampleBufferOut:(v2 - 104) captureID:(v2 - 116) bufferPTS:(v2 - 144)];
}

uint64_t OUTLINED_FUNCTION_4_14(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 requestForDescriptor:a3 adapter:v5 requestInitializationCustomizer:a5 outStatus:v6 - 244];
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1)
{

  return [v1 initWithKeyOptions:258 valueOptions:0 capacity:a1];
}

__n128 OUTLINED_FUNCTION_4_16@<Q0>(unint64_t a1@<X8>)
{
  STACK[0x280] = a1;
  result = *&STACK[0x320];
  *&STACK[0x250] = *&STACK[0x320];
  STACK[0x260] = STACK[0x330];
  return result;
}

__n128 OUTLINED_FUNCTION_4_20()
{
  result = *(v0 - 160);
  *(v0 - 192) = result;
  *(v0 - 176) = *(v0 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_22@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CMTime *time2, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t time2a, uint64_t time2_8, uint64_t time2_16)
{
  time2_16 = a1;

  return CMTimeCompare((v24 - 256), &time2a);
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return [v4 countByEnumeratingWithState:v5 - 128 objects:va count:16];
}

void OUTLINED_FUNCTION_4_25(double a1, double a2, double a3, double a4)
{
  *&STACK[0x4A0] = a1;
  *&STACK[0x4A8] = a2;
  *&STACK[0x4B0] = a3;
  *&STACK[0x4B8] = a4;
}

uint64_t OUTLINED_FUNCTION_4_28()
{

  return [v0 countByEnumeratingWithState:v1 - 160 objects:&STACK[0x2C0] count:16];
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{

  return [a20 safelyConnectOutput:v21 toInput:a1 pipelineStage:{a21, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_4_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);

  return [v38 countByEnumeratingWithState:v39 - 160 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_4_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return [v26 countByEnumeratingWithState:v27 - 176 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_4_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_4_40@<X0>(size_t dataLength@<X2>, CMBlockBufferRef *a2@<X8>, CMBlockBufferRef *blockBufferOut)
{

  return CMBlockBufferCreateWithMemoryBlock(v3, 0, dataLength, v3, 0, 0, dataLength, 1u, a2);
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return [v0 objectForKeyedSubscript:v1];
}

__n128 OUTLINED_FUNCTION_4_44()
{
  v1 = *(v0 + 128);
  *(v0 + 64) = *(v0 + 112);
  *(v0 + 80) = v1;
  result = *(v0 + 144);
  *(v0 + 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_45()
{
  *(v0 - 108) = 0;
  *(v0 - 109) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_4_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18)
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_4_49(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_4_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_4_54()
{
  *(v1 - 92) = 0;
  *(v1 - 93) = 0;
  return *(v0 + 872);
}

uint64_t OUTLINED_FUNCTION_4_57()
{
  *(v1 - 116) = 0;
  *(v1 - 117) = 0;
  return *(v0 + 824);
}

uint64_t OUTLINED_FUNCTION_4_60()
{
  *(v1 - 208) = 0;
  LOBYTE(STACK[0x2A0]) = 0;
  return *(v0 + 1576);
}

uint64_t OUTLINED_FUNCTION_4_62()
{
  *(v0 - 68) = 0;
  *(v0 - 69) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_4_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16)
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_4_67(void *a1)
{

  return penc_setBaseProcessorControllerConfigurationProperties(v1, a1);
}

uint64_t OUTLINED_FUNCTION_4_69()
{
  *(v1 - 92) = 0;
  *(v1 - 93) = 0;
  return *(v0 + 984);
}

void OUTLINED_FUNCTION_4_76(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_4_81(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38)
{
  a35 = 0u;
  a36 = 0u;
  a37 = 0u;
  a38 = 0u;

  return [a1 countByEnumeratingWithState:&a35 objects:&a19 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_4_82(uint64_t a1)
{

  return [v1 addObject:a1];
}

float OUTLINED_FUNCTION_4_87(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [(BWZoomCommandHandler *)v9 _applyFudgeToZoomFactor:a3, a4, a5, a6, a7, a8, a9, v11];
}

uint64_t OUTLINED_FUNCTION_4_89(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return [v26 countByEnumeratingWithState:v27 - 192 objects:va count:{16, a6, a7, a8}];
}

void OUTLINED_FUNCTION_4_90()
{
  *(v0 - 48) = 0;
  *(v0 - 40) = 0;
  *(v0 - 32) = 0;
}

uint64_t OUTLINED_FUNCTION_4_91(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

void OUTLINED_FUNCTION_4_92()
{
  *v3 = 0;
  v3[1] = 0;
  *(v4 + 16) = *(v0 + 208);
  *(v4 + 24) = v2;
  *(v0 + 208) = v1;
}

uint64_t OUTLINED_FUNCTION_4_93(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

float BWGetGeometricDistortionCorrectionStrengthFromDimensions(uint64_t a1, int a2)
{
  v4 = FigCapturePlatformIdentifier();
  result = 1.0;
  if (v4 <= 7)
  {
    if (a1 > 2304)
    {
      result = 0.6;
      if ((a1 / SHIDWORD(a1)) <= 1.65)
      {
        return 0.5;
      }
    }

    else
    {
      result = 0.75;
      if (a2)
      {
        return 1.0;
      }
    }
  }

  return result;
}

void *BWAddEntriesWithKeysFromDictionaryToDictionary(void *a1, void *a2, void *a3)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [a1 objectForKeyedSubscript:v10];
        if (v11)
        {
          [a3 setObject:v11 forKeyedSubscript:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t FigCapturePlatformSupportsHTPC16x8Compression()
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  return sPlatformSupportsHTPC16x8Compression;
}

BOOL OUTLINED_FUNCTION_156(NSObject *a1)
{
  v3 = *(v1 - 117);

  return os_log_type_enabled(a1, v3);
}

uint64_t FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(void *a1, int a2)
{
  LODWORD(v4) = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigCaptureConnectionConfigurationsFilterWithBlock_block_invoke;
  v5[3] = &unk_1E799B9F0;
  v5[4] = &v3;
  return [a1 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v5, MEMORY[0x1E69E9820], 3221225472, __FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType_block_invoke, &__block_descriptor_36_e43_B16__0__FigCaptureConnectionConfiguration_8l, v4)}];
}

uint64_t FigCaptureClientApplicationIDIsCameraOrDerivative(void *a1, uint64_t a2)
{
  if (qword_1ED845228 == -1)
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&qword_1ED845228, &__block_literal_global_250);
    if (!a1)
    {
      return 0;
    }
  }

  if (objc_msgSend_isEqualToString_(a1, a2, 0x1F216ED50) & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  objc_msgSend_isEqualToString_(a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);

  return [a33 countByEnumeratingWithState:v58 - 208 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_159@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *(v3 + a2);

  return [v5 setObject:a1 forKeyedSubscript:v2];
}

uint64_t OUTLINED_FUNCTION_104_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{

  return [a50 countByEnumeratingWithState:&STACK[0x380] objects:&STACK[0x300] count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_104_5(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return [a1 arrayWithObjects:va count:1];
}

uint64_t FigCapturePixelFormatIsDepthData(int a1)
{
  result = 1;
  if (a1 > 1717855599)
  {
    if (a1 > 1751410031)
    {
      if (a1 == 1751410032)
      {
        return result;
      }

      v4 = 1751411059;
    }

    else
    {
      if (a1 == 1717855600)
      {
        return result;
      }

      v4 = 1717856627;
    }
  }

  else
  {
    if (a1 > 1701734511)
    {
      if (a1 == 1701734512)
      {
        return result;
      }

      v3 = 26739;
    }

    else
    {
      if (a1 == 1701734000)
      {
        return result;
      }

      v3 = 26227;
    }

    v4 = v3 | 0x656E0000;
  }

  if (a1 != v4)
  {
    return 0;
  }

  return result;
}

__CFString *fvcd_streamingImageIntentToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E799C588[a1];
  }
}

uint64_t csp_supportsNondisruptiveSwitchingZoomFactors(int a1, void *a2, void *a3)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      [a3 objectAtIndexedSubscript:a1];
      v13 = *(MEMORY[0x1E695F050] + 16);
      v14 = *MEMORY[0x1E695F050];
      v18.origin = *MEMORY[0x1E695F050];
      v18.size = v13;
      FigCFDictionaryGetCGRectIfPresent();
      OUTLINED_FUNCTION_34_13();
      result = OUTLINED_FUNCTION_37(v7, v8, v9, v15);
      if (result)
      {
        while (1)
        {
          OUTLINED_FUNCTION_21_20();
          if (!v10)
          {
            objc_enumerationMutation(a2);
          }

          [a3 objectAtIndexedSubscript:{objc_msgSend(*v17, "intValue", v13, v14)}];
          FigCFDictionaryGetCGRectIfPresent();
          if (!CGRectIsNull(v18))
          {
            v19.origin = v14;
            v19.size = v13;
            if (!CGRectIsNull(v19) && v13.width < v18.size.width)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_131_2();
          if (v10)
          {
            result = OUTLINED_FUNCTION_37(v11, v12, v16, v15);
            if (!result)
            {
              return result;
            }
          }
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_69_4()
{
  v2 = *(v0 + 256);

  return [v2 settingsID];
}

void captureSession_destroyAudioSessionForMicPipeline(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_destroyAudioSessionForMicPipeline_cold_1();
  }

  CMBaseObjectGetDerivedStorage();
  IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
  if (!IsCurrentDispatchQueue)
  {
    IsCurrentDispatchQueue = captureSession_destroyAudioSessionForMicPipeline_cold_2();
  }

  v4 = FigCaptureAudiomxdSupportEnabled(IsCurrentDispatchQueue, v3);
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = _FigIsCurrentDispatchQueue();
  if (v4)
  {
    if (!v6)
    {
      v6 = captureSession_destroyAudioSessionForMicPipeline_cold_4();
    }

    v8 = *(v5 + 344);
    if (v8)
    {
      v9 = (v5 + 344);
      [*(v5 + 280) removeObserverForType:1 observer:v8 name:*MEMORY[0x1E698D558]];
LABEL_14:

      *v9 = 0;
    }
  }

  else
  {
    if (!v6)
    {
      v6 = captureSession_destroyAudioSessionForMicPipeline_cold_3();
    }

    if (*(v5 + 344))
    {
      v9 = (v5 + 344);
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      goto LABEL_14;
    }
  }

  if (FigCaptureAudiomxdSupportEnabled(v6, v7))
  {
    v10 = (DerivedStorage + 280);
  }

  else
  {
    v11 = *(DerivedStorage + 288);
    if (!v11)
    {
      return;
    }

    v10 = (DerivedStorage + 288);
    CFRelease(v11);
  }

  *v10 = 0;
}

void *cs_createAuxiliaryAVAudioSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v6 = [objc_alloc(MEMORY[0x1E698D710]) initAuxiliarySession];
  [v6 setMXSessionProperty:*MEMORY[0x1E69AFD90] value:a3 error:&v10];
  if (v10 || ([v6 setMXSessionProperty:*MEMORY[0x1E69AFDA8] value:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", a1), &v10}], v10) || (v7 = objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", a2, 32), objc_msgSend(v6, "setMXSessionProperty:value:error:", *MEMORY[0x1E69AFD18], v7, &v10), v10))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v10)
    {

      return 0;
    }
  }

  return v6;
}

uint64_t FigCaptureSessionRemoteCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    FigCaptureSessionRemoteCreate_cold_8(a1, a2);
    v14 = 4294954516;
    goto LABEL_12;
  }

  v4 = csr_ensureClientEstablished();
  if (v4)
  {
    v14 = v4;
    FigCaptureSessionRemoteCreate_cold_1();
    goto LABEL_12;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    v14 = v5;
    FigCaptureSessionRemoteCreate_cold_2();
    goto LABEL_12;
  }

  v6 = FigXPCMessageSetCFString();
  if (v6)
  {
    v14 = v6;
    FigCaptureSessionRemoteCreate_cold_3();
    goto LABEL_12;
  }

  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
    v14 = v7;
    FigCaptureSessionRemoteCreate_cold_4();
    goto LABEL_12;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  v10 = uint64;
  if (!uint64)
  {
    uint64 = FigCaptureSessionRemoteCreate_cold_5();
  }

  FigCaptureSessionGetClassID(uint64, v9);
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    v14 = v11;
    FigCaptureSessionRemoteCreate_cold_6(v11);
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = v10;
  FigXPCRemoteClientAssociateObject();
  *(DerivedStorage + 64) = 0;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v13)
  {
    v14 = 4294954514;
    goto LABEL_14;
  }

  v14 = v13(0, @"CaptureSession_RemoteVideoPreviewEnabled", *MEMORY[0x1E695E4D0]);
  if (v14)
  {
LABEL_14:
    FigCaptureSessionRemoteCreate_cold_7(v14);
    goto LABEL_12;
  }

  *a3 = 0;
LABEL_12:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v14;
}

uint64_t captureSessionServer_handleReplyMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v4 = OpCode;
    captureSessionServer_handleReplyMessage_cold_1();
  }

  else
  {
    v4 = 4294966630;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v4;
}

void FigCaptureSessionAttachToClient(const void *a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 24696, @"LastShownDate:FigCaptureSession.m:24696", @"LastShownBuild:FigCaptureSession.m:24696", 0);
    free(v8);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigCaptureSessionAttachToClient_block_invoke;
    v9[3] = &__block_descriptor_80_e5_v8__0l;
    v7 = a2[1];
    v10 = *a2;
    v11 = v7;
    v9[4] = DerivedStorage;
    v9[5] = a1;
    captureSession_performBlockOnWorkerQueue(a1, v9);
  }
}

void captureSession_performBlockOnWorkerQueue(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    v6 = *(v5 + 136);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __captureSession_performBlockOnWorkerQueue_block_invoke;
    v7[3] = &unk_1E79903B8;
    v7[4] = a2;
    v7[5] = a1;
    dispatch_async(v6, v7);
  }

  else
  {
    captureSession_performBlockOnWorkerQueue_cold_1(DerivedStorage);
  }
}

uint64_t FigCaptureSessionGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigCaptureSessionGetClassID_onceToken != -1)
  {
    FigCaptureSessionGetClassID_cold_1();
  }

  return FigCaptureSessionGetClassID_sFigCaptureSessionClassID;
}

uint64_t __FigCaptureSessionGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigCaptureSessionClassDesc, ClassID, 1, &FigCaptureSessionGetClassID_sFigCaptureSessionClassID);
}

uint64_t captureSessionRemote_SetProperty(uint64_t a1, const void *a2, void *a3)
{
  v9 = 0;
  ObjectID = captureSessionRemote_getObjectID(a1, &v9);
  if (ObjectID)
  {
    v7 = ObjectID;
    captureSessionRemote_SetProperty_cold_1();
    goto LABEL_11;
  }

  if (CFEqual(a2, @"CaptureSession_SmartStyle") || CFEqual(a2, @"CaptureSession_SystemStyleOverride"))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (a3 && (isKindOfClass & 1) == 0)
    {
      v7 = 4294954516;
      goto LABEL_13;
    }

    v10 = 0;
    if (!a3)
    {
      a3 = [MEMORY[0x1E695DFB0] null];
    }

    if (![MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v10])
    {
      captureSessionRemote_SetProperty_cold_2(&v10);
    }
  }

  v7 = FigXPCSendStdSetPropertyMessage();
  if (v7)
  {
LABEL_13:
    captureSessionRemote_SetProperty_cold_3(v7);
  }

LABEL_11:
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t captureSessionRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    captureSessionRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      captureSessionRemote_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

uint64_t captureSessionServer_messageUnpackCopy(uint64_t a1, xpc_object_t xdict, uint64_t a3, CFTypeRef *a4, void *a5, void *a6, uint64_t a7)
{
  v18 = 0;
  v19 = 0;
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  cf = 0;
  v11 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v11)
  {
    v17 = v11;
    captureSessionServer_messageUnpackCopy_cold_1();
  }

  else
  {
    captureSessionServer_messageUnpackCopy_cold_2(v21 + 1);
    v17 = HIDWORD(v21[0]);
  }

  if (v17)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v7, 0, v19, cf, v21[0], v21[1], v22);
LABEL_22:
    v15 = 0;
    goto LABEL_13;
  }

  if (a5)
  {
    v12 = FigXPCMessageCopyCFString();
    if (v12)
    {
      v17 = v12;
      captureSessionServer_messageUnpackCopy_cold_3();
      goto LABEL_22;
    }

    if (!*a5)
    {
      captureSessionServer_messageUnpackCopy_cold_4();
      v15 = 0;
      v17 = 4294954512;
      goto LABEL_13;
    }
  }

  if (!a6)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v13 = FigXPCMessageCopyCFData();
  if (v13)
  {
    v17 = v13;
    captureSessionServer_messageUnpackCopy_cold_5();
    goto LABEL_22;
  }

  v14 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:0 error:&v19];
  v15 = v14;
  if (v19)
  {
    captureSessionServer_messageUnpackCopy_cold_6(&v19, &cf);
    goto LABEL_24;
  }

  *a6 = [v14 decodeObjectOfClass:a3 forKey:*MEMORY[0x1E696A508]];
  [v15 finishDecoding];
  if (*a6)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  captureSessionServer_messageUnpackCopy_cold_7(&cf);
LABEL_24:
  v17 = cf;
LABEL_13:
  if (v18)
  {
    CFRelease(v18);
  }

  return v17;
}

uint64_t captureSession_SetProperty(const void *a1, const void *a2, const __CFBoolean *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"CaptureSession_SmartStyle"))
  {
    v16 = 0;
  }

  else
  {
    v16 = CFEqual(a2, @"CaptureSession_SystemStyleOverride") == 0;
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3 == 0 && v16)
      {
        captureSession_SetProperty_cold_2(&v23);
      }

      else
      {
        if (CFEqual(a2, @"CaptureSession_RemoteVideoPreviewEnabled"))
        {
          Value = CFBooleanGetValue(a3);
          result = 0;
          *(DerivedStorage + 216) = Value != 0;
          return result;
        }

        if (!CFEqual(a2, @"CaptureSession_ForegroundAutoResumeStopTime"))
        {
          if (CFEqual(a2, @"CaptureSession_SmartStyle"))
          {
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __captureSession_SetProperty_block_invoke;
            v22[3] = &unk_1E7991EF8;
            v22[4] = a3;
            v22[5] = a1;
            v22[6] = DerivedStorage;
            captureSession_performBlockOnWorkerQueue(a1, v22);
          }

          else if (CFEqual(a2, @"CaptureSession_SystemStyleOverride"))
          {
            FigCaptureSmartStyleSettingsSetSystemStyle(a3, *(DerivedStorage + 88));
          }

          else
          {
            if (!CFEqual(a2, @"CaptureSession_RunDeferredStartWhenNeeded"))
            {
              return 4294954512;
            }

            captureSession_runDeferredStartWhenNeeded(a1);
          }

          return 0;
        }

        v20 = CFGetTypeID(a3);
        if (v20 == CFNumberGetTypeID())
        {
          os_unfair_lock_lock((DerivedStorage + 384));
          [(__CFBoolean *)a3 doubleValue];
          *(DerivedStorage + 632) = v21;
          os_unfair_lock_unlock((DerivedStorage + 384));
          return 0;
        }

        captureSession_SetProperty_cold_1(&v23);
      }
    }

    else
    {
      captureSession_SetProperty_cold_3(&v23);
    }

    return v23;
  }

  v17 = qword_1ED844048;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFCE0FLL, "<<<< FigCaptureSession >>>>", 0x5C55, v9, v14, v15, a9);
}

uint64_t cs_clientWantsAudioResumptionOnBackground(void *a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, 0x1F216ED50) & 1) != 0 || (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  return objc_msgSend_isEqualToString_(a1);
}

void captureSession_buildGraphWithConfiguration_cold_11(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(a1 + 776) objectForKeyedSubscript:a2];
  if (v4)
  {
    v4 = v4[2];
  }

  -[FigCaptureMovieFileSinkPipelineConfiguration setAudioConnectionConfiguration:](a3, [v4 zoomCommandHandler]);
}

uint64_t captureSource_setPropertyWithDeviceCheck_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFBFBCLL, "<<<< FigCaptureSource >>>>", 0x946, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

int64_t captureSourceRemote_ProprietaryDefaultsDomainForAuditToken(uint64_t a1, const UInt8 *a2, uint64_t a3)
{
  v12 = 0;
  v5 = csr_ensureClientEstablished_0();
  if (v5)
  {
    v10 = v5;
    captureSourceRemote_ProprietaryDefaultsDomainForAuditToken_cold_1();
LABEL_11:
    FigXPCRelease();
    goto LABEL_8;
  }

  v6 = captureSourceRemote_createBasicMessage(a1, 1885626740, &v12);
  if (v6)
  {
    v10 = v6;
    captureSourceRemote_ProprietaryDefaultsDomainForAuditToken_cold_2(v6, &v12, &v13);
    goto LABEL_11;
  }

  v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, 32, *MEMORY[0x1E695E498]);
  v8 = FigXPCMessageSetCFData();
  if (v8)
  {
    v10 = v8;
    captureSourceRemote_ProprietaryDefaultsDomainForAuditToken_cold_3();
  }

  else
  {
    v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (v9)
    {
      v10 = v9;
      captureSourceRemote_ProprietaryDefaultsDomainForAuditToken_cold_4();
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
    }
  }

  FigXPCRelease();
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_8:
  FigXPCRelease();
  return v10;
}

uint64_t captureSourceServer_handleProprietaryDefaultsDomainForAuditToken(_xpc_connection_s *a1, void *a2, void *a3)
{
  v34 = 0;
  v35 = 0;
  v33 = 0;
  pid = xpc_connection_get_pid(a1);
  memset(&buffer[1], 0, sizeof(audit_token_t));
  v7 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &v35);
  if (v7)
  {
    v21 = v7;
    captureSourceServer_handleProprietaryDefaultsDomainForAuditToken_cold_1();
    goto LABEL_38;
  }

  v8 = FigXPCMessageCopyCFData();
  if (v8)
  {
    v21 = v8;
    captureSourceServer_handleProprietaryDefaultsDomainForAuditToken_cold_2();
    goto LABEL_38;
  }

  memset(buffer, 0, 32);
  v36.location = 0;
  v36.length = 32;
  CFDataGetBytes(v34, v36, buffer);
  xpc_connection_get_audit_token();
  v30 = 0uLL;
  v31 = 0uLL;
  if (*buffer[0].val)
  {
    v9 = 0;
  }

  else
  {
    v9 = *&buffer[0].val[2] == 0;
  }

  if (v9 && *&buffer[0].val[4] == 0 && *&buffer[0].val[6] == 0)
  {
    buffer[0] = buffer[1];
  }

  else
  {
    token = buffer[1];
    v12 = SecTaskCreateWithAuditToken(*MEMORY[0x1E695E480], &token);
    if (!v12)
    {
      goto LABEL_50;
    }

    v13 = v12;
    *token.val = 0;
    v14 = SecTaskCopyValueForEntitlement(v12, @"com.apple.private.tcc.manager.get-identity-for-credential", &token);
    v15 = 0;
    v16 = *token.val;
    if (!*token.val && v14)
    {
      v17 = CFGetTypeID(v14);
      v15 = v17 == CFBooleanGetTypeID() && CFBooleanGetValue(v14) != 0;
      v16 = *token.val;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    CFRelease(v13);
    if (!v15)
    {
LABEL_50:
      captureSourceServer_handleProprietaryDefaultsDomainForAuditToken_cold_3();
      goto LABEL_29;
    }
  }

  v18 = v35;
  v29 = buffer[0];
  v19 = *(CMBaseObjectGetVTable() + 16);
  if (*v19 < 5uLL || (v20 = v19[12]) == 0)
  {
    v21 = 4294954514;
    goto LABEL_38;
  }

  token = v29;
  v21 = v20(v18, &token, &v33);
  if (v21)
  {
LABEL_38:
    xpc_dictionary_set_int64(a3, kFigCaptureSourceServerMessagePayload_ErrorStatus, v21);
    goto LABEL_39;
  }

LABEL_29:
  xpc_dictionary_set_int64(a3, kFigCaptureSourceServerMessagePayload_ErrorStatus, 0);
  if (v33)
  {
    FigXPCMessageSetCFString();
  }

  if (dword_1ED843FB0)
  {
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = v28;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v29.val[0] = 136315651;
      *&v29.val[1] = "captureSourceServer_handleProprietaryDefaultsDomainForAuditToken";
      LOWORD(v29.val[3]) = 1025;
      *(&v29.val[3] + 2) = pid;
      HIWORD(v29.val[4]) = 2113;
      *&v29.val[5] = v33;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v21 = 0;
LABEL_39:
  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v21;
}

uint64_t captureSource_ProprietaryDefaultsDomainForAuditToken(uint64_t a1, _OWORD *a2, __CFString **a3)
{
  *a3 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 12))
  {
    return 4294954511;
  }

  getCMIOExtensionProviderClass();
  if (objc_opt_respondsToSelector())
  {
    CMIOExtensionProviderClass = getCMIOExtensionProviderClass();
    v7 = a2[1];
    v9[0] = *a2;
    v9[1] = v7;
    v8 = [CMIOExtensionProviderClass proprietaryDefaultsDomainForAuditToken:v9];
  }

  else
  {
    v8 = @"unknown";
  }

  result = 0;
  *a3 = v8;
  return result;
}

uint64_t getCMIOExtensionProviderClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__44;
  v0 = getCMIOExtensionProviderClass_softClass;
  v7 = __Block_byref_object_dispose__44;
  v8 = getCMIOExtensionProviderClass_softClass;
  if (!getCMIOExtensionProviderClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCMIOExtensionProviderClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getCMIOExtensionProviderClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC955DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *OUTLINED_FUNCTION_57_1(size_t a1, unsigned int a2)
{
  v3 = a2 | 0x100004000000000;

  return malloc_type_malloc(a1, v3);
}

double OUTLINED_FUNCTION_57_3()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 164);
  v4 = *&STACK[0x470];
  v5 = *&STACK[0x478];
  v6 = *&STACK[0x480];

  return FigCaptureMetadataUtilitiesRectNormalizedToRect(0.0, 0.0, v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_57_7()
{
  *(v0 - 96) = 0;
  *(v0 - 104) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_57_8()
{

  return [v0 countByEnumeratingWithState:&STACK[0xD60] objects:&STACK[0xCE0] count:16];
}

CMTime *OUTLINED_FUNCTION_57_12@<X0>(uint64_t a1@<X8>, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, int a11, int a12)
{
  lhs_16 = a1;

  return CMTimeAdd(&a12, &lhsa, (v12 - 176));
}

double FigCaptureSourceDefaultAudioSampleRateForClientSDKVersionToken(uint64_t a1)
{
  v1 = dyld_version_token_at_least();
  result = 44100.0;
  if (v1)
  {
    return 48000.0;
  }

  return result;
}

uint64_t cs_isTrueVideoCaptureEnabled(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [a1 parsedMovieFileSinkConfigurations];
  result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v7 + 1) + 8 * v5) "primaryVideoConnectionConfiguration")])
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id *cs_getMasterClockAndType(void *a1, id **a2, int *a3)
{
  v5 = a1;
  v6 = [a1 cameraSourcePipelines];
  if ([v5 micSourcePipeline])
  {
    result = -[FigCaptureMicSourcePipeline clock]([v5 micSourcePipeline]);
    v8 = 2;
  }

  else
  {
    result = [v6 count];
    if (result)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [v6 countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (!v9)
      {
        goto LABEL_21;
      }

      v10 = v9;
      v23 = v5;
      v24 = a2;
      v25 = a3;
      v26 = 0;
      v27 = 0;
      v11 = *v32;
      do
      {
        v12 = 0;
        v28 = v10;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          v14 = [-[FigCaptureCameraSourcePipeline cameraConfiguration](v13) pulseGeneratorFrameRate];
          if (FigCaptureFrameRateIsValidRational(v14, v15))
          {
            v29 = 0;
            v16 = +[FigPulseGenerator sharedFigPulseGenerator];
            v17 = [-[FigCaptureCameraSourcePipeline cameraConfiguration](v13) pulseGeneratorFrameRate];
            v5 = v5 & 0xFFFFFFFF00000000 | v18;
            if ([v16 startWithFrameRate:v17 cmClock:v5 clientAudioClockDeviceUIDOut:&v29 externalSync:{0, objc_msgSend(-[FigCaptureCameraSourcePipeline cameraConfiguration](v13), "isExternalSyncDevicePulse")}])
            {
              FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v21 = _os_log_send_and_compose_impl();
              FigCapturePleaseFileRadar(FrameworkRadarComponent, v21, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 950, @"LastShownDate:FigCaptureSession.m:950", @"LastShownBuild:FigCaptureSession.m:950", 0);
              free(v21);
              v10 = v28;
            }

            else
            {
              v27 = 3;
              v26 = v29;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v6 countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v10);
      a2 = v24;
      a3 = v25;
      v5 = v23;
      v8 = v27;
      result = v26;
      if (!v26)
      {
LABEL_21:
        v22 = [v5 firstColorCameraSourcePipeline];
        if (!v22)
        {
          v22 = [objc_msgSend(v5 "cameraSourcePipelines")];
        }

        result = [(FigCaptureCameraSourcePipeline *)v22 clock];
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2)
  {
    *a2 = result;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

void *captureSession_teardownImageQueueSinkNodesIfNeeded(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [DerivedStorage[70] allKeys];
  result = [v4 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [a2 countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(a2);
            }

            [*(*(&v15 + 1) + 8 * v13) sinkID];
            if (objc_msgSend_isEqualToString_(v9))
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [a2 countByEnumeratingWithState:&v15 objects:v14 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          [DerivedStorage[70] setObject:0 forKeyedSubscript:v9];
          [DerivedStorage[71] setObject:0 forKeyedSubscript:v9];
          [DerivedStorage[72] setObject:0 forKeyedSubscript:v9];
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      result = [v4 countByEnumeratingWithState:&v20 objects:v19 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 metadataIdentifiers];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 hasPrefix:@"mdta/com.apple.quicktime.detected-machine-readable-code."] & 1) != 0 || (objc_msgSend_isEqualToString_(v6))
        {
          return 1;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      result = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresVideoPreviewHistogramPipeline(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D150;

  return [v1 containsObject:v2];
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresSceneClassification(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D148;

  return [v1 containsObject:v2];
}

unint64_t BWInferenceSmartCameraCurrentVersion(uint64_t a1, uint64_t a2)
{
  if (BWInferenceSmartCameraCurrentVersion_onceToken != -1)
  {
    BWInferenceSmartCameraCurrentVersion_cold_1();
  }

  return BWInferenceSmartCameraCurrentVersion_version | (word_1ED844BC4 << 32);
}

uint64_t cs_isIrisMovieVitalityScoringEnabled(void *a1)
{
  if (!+[BWInferenceEngine isNeuralEngineSupported](BWInferenceEngine, "isNeuralEngineSupported") || ![objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")])
  {
    return 0;
  }

  return [a1 irisMovieCaptureEnabled];
}

uint64_t cs_shouldEnablePocketDetection(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!cs_isPocketDetectionNeeded(*(DerivedStorage + 88)))
  {
    return 0;
  }

  v4 = [objc_msgSend(a2 "sourceConfiguration")];

  return [v4 isPocketDetectionSupported];
}

uint64_t FigCaptureBuildSinkPipelineName(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a2 == a3 || (v6 = a3 - 2, (a3 - 2) > 0x12) || ((0x79223u >> v6) & 1) == 0)
  {
    v7 = &stru_1F216A3D0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@)", off_1E799BA30[v6]];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ %@", a1, v7, a4];
}

BOOL FigCaptureFrameRateEqual(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 == 2)
  {
    v4 = *&a1;
  }

  else
  {
    v4 = 0.0;
    if (a2 == 1)
    {
      v4 = a1 / SHIDWORD(a1);
    }
  }

  if (a4 == 2)
  {
    v5 = *&a3;
  }

  else
  {
    v5 = 0.0;
    if (a4 == 1)
    {
      v5 = a3 / SHIDWORD(a3);
    }
  }

  return v4 == v5;
}

BWInferenceScheduler *captureSession_inferenceScheduler(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 808);
  if (!result)
  {
    result = objc_alloc_init(BWInferenceScheduler);
    *(DerivedStorage + 808) = result;
  }

  return result;
}

uint64_t FigCaptureDeviceCoreRepairStatusesByKeys(uint64_t started)
{
  if (qword_1ED845228 != -1)
  {
    FigCaptureXPCServerStart_cold_1();
  }

  if (FigCaptureDeviceCoreRepairStatusesByKeys_sOnceToken != -1)
  {
    FigCaptureDeviceCoreRepairStatusesByKeys_cold_2();
  }

  return FigCaptureDeviceCoreRepairStatusesByKeys_sDeviceCoreRepairStatusesByKeys;
}

void FigCaptureSourceGetClientAuditToken(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7 = 0;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *a2 = v4;
  a2[1] = v4;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    if (v5(a1, 0x1F21863F0, *MEMORY[0x1E695E480], &v7))
    {
      v6 = 1;
    }

    else
    {
      v6 = v7 == 0;
    }

    if (!v6)
    {
      [v7 getBytes:a2 length:32];
    }
  }
}

uint64_t FigCaptureSourceAttachToClient(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844030)
  {
    v15 = 0;
    v14 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 32);
  v12 = *(DerivedStorage + 16);
  v13 = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  if (!FigCaptureAuditTokensAreEqual(&v12, v11))
  {
    v7 = a2[1];
    *(DerivedStorage + 16) = *a2;
    *(DerivedStorage + 32) = v7;
    v8 = *(DerivedStorage + 80);
    v9 = *(DerivedStorage + 32);
    v12 = *(DerivedStorage + 16);
    v13 = v9;
    [v8 updateClientAuditToken:&v12];
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCaptureBuildPipelineStageName(uint64_t a1, void *a2)
{
  v4 = [a2 sourcePosition];
  v5 = v4;
  v6 = @"back";
  if (v4 != 1)
  {
    v6 = 0;
  }

  v7 = v4 != 2 && v4 != 1;
  if (v4 == 2)
  {
    v8 = @"front";
  }

  else
  {
    v8 = v6;
  }

  v9 = [a2 sourceDeviceType] - 1;
  v10 = 0;
  v11 = @"infrared";
  switch(v9)
  {
    case 0:
      v10 = 0;
      v11 = @"mic";
      goto LABEL_30;
    case 1:
    case 10:
      v10 = v5 == 2;
      if (v5 == 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = @"wide";
      }

      goto LABEL_30;
    case 2:
      v10 = 0;
      v11 = @"tele";
      goto LABEL_30;
    case 3:
      v10 = 0;
      v11 = @"dual";
      goto LABEL_30;
    case 4:
      goto LABEL_30;
    case 5:
    case 11:
      v10 = 0;
      v11 = @"truedepth";
      goto LABEL_30;
    case 6:
      v10 = 0;
      v11 = @"superwide";
      goto LABEL_30;
    case 7:
      v10 = 0;
      v11 = @"widebravo";
      goto LABEL_30;
    case 8:
      v10 = 0;
      v11 = @"superbravo";
      goto LABEL_30;
    case 9:
      v10 = 0;
      v11 = @"time-of-flight";
      goto LABEL_30;
    case 12:
      v10 = 0;
      v11 = @"lidardepth";
      goto LABEL_30;
    case 13:
      v10 = 0;
      v11 = @"overhead";
      goto LABEL_30;
    case 14:
      v10 = 0;
      v11 = @"external";
      goto LABEL_30;
    case 15:
      v10 = 0;
      v11 = @"continuity";
      goto LABEL_30;
    case 16:
    case 17:
      v10 = 0;
      v11 = @"widemetadata";
      goto LABEL_30;
    case 18:
      v10 = 0;
      v11 = @"superwidemetadata";
      goto LABEL_30;
    case 19:
      v10 = 0;
      v11 = @"infraredmetadata";
LABEL_30:
      v14 = [MEMORY[0x1E696AD60] string];
      v13 = v14;
      if (v7)
      {
        if (v10)
        {
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", a1, v13];
        }

        v15 = @".";
      }

      else
      {
        [v14 appendFormat:@".%@", v8];
        if (v10)
        {
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", a1, v13];
        }

        v15 = @"-";
      }

      [v13 appendString:v15];
      [v13 appendString:v11];
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", a1, v13];
    default:
      v12 = [MEMORY[0x1E696AD60] string];
      v13 = v12;
      if (!v7)
      {
        [v12 appendFormat:@".%@", v8];
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", a1, v13];
  }
}

uint64_t FigMotionInitializeQuaternion(void *a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  result = 0;
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_5(int a1)
{
  v5 = (a1 - *(v1 + *(v3 + 2824)) + 1);

  return [v2 setInitialSemaphoreValue:v5];
}

void *FigCaptureSupportedCompressedPixelFormatsForSettings(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v16 = [MEMORY[0x1E695DF70] array];
  if (a1 == 4)
  {
    if (!FigCapturePlatformSupportsUniversalCompression())
    {
      return v16;
    }

    v18 = FigCapturePlatformSupportsUniversalLossyCompression();
    if (v18)
    {
      v19 = a2 > 0;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = a2 > 1;
    }

    else
    {
      v20 = 0;
    }

    if (v18)
    {
      v21 = a2 > 2;
    }

    else
    {
      v21 = 0;
    }

    if (!a4)
    {
      goto LABEL_58;
    }

    if (a6)
    {
      [v16 addObjectsFromArray:&unk_1F2249E40];
      if (v19)
      {
        [v16 addObjectsFromArray:&unk_1F2249E58];
        if (!v20)
        {
LABEL_40:
          if (!v21)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      else if (!v20)
      {
        goto LABEL_40;
      }

      [v16 addObjectsFromArray:&unk_1F2249E70];
      if (v21)
      {
LABEL_41:
        [v16 addObjectsFromArray:&unk_1F2249E88];
      }
    }

LABEL_42:
    if (!a7)
    {
      goto LABEL_58;
    }

    [v16 addObjectsFromArray:&unk_1F2249EA0];
    if (v19)
    {
      [v16 addObjectsFromArray:&unk_1F2249EB8];
      if (!v20)
      {
LABEL_45:
        if (!v21)
        {
          goto LABEL_46;
        }

        goto LABEL_53;
      }
    }

    else if (!v20)
    {
      goto LABEL_45;
    }

    [v16 addObjectsFromArray:&unk_1F2249ED0];
    if (!v21)
    {
LABEL_46:
      if (!a8)
      {
        goto LABEL_58;
      }

      goto LABEL_54;
    }

LABEL_53:
    [v16 addObjectsFromArray:&unk_1F2249EE8];
    if (!a8)
    {
      goto LABEL_58;
    }

LABEL_54:
    [v16 addObjectsFromArray:&unk_1F2249F00];
    if (v19)
    {
      [v16 addObjectsFromArray:&unk_1F2249F18];
      if (!v20)
      {
LABEL_56:
        if (!v21)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

    else if (!v20)
    {
      goto LABEL_56;
    }

    [v16 addObjectsFromArray:&unk_1F2249F30];
    if (v21)
    {
LABEL_57:
      [v16 addObjectsFromArray:&unk_1F2249F48];
    }

LABEL_58:
    if (!a3)
    {
      goto LABEL_80;
    }

    if (a6)
    {
      [v16 addObjectsFromArray:&unk_1F2249F60];
      if (v19)
      {
        [v16 addObjectsFromArray:&unk_1F2249F78];
        if (!v20)
        {
LABEL_62:
          if (!v21)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }
      }

      else if (!v20)
      {
        goto LABEL_62;
      }

      [v16 addObjectsFromArray:&unk_1F2249F90];
      if (v21)
      {
LABEL_63:
        [v16 addObjectsFromArray:&unk_1F2249FA8];
      }
    }

LABEL_64:
    if (!a7)
    {
      goto LABEL_80;
    }

    [v16 addObjectsFromArray:&unk_1F2249FC0];
    if (v19)
    {
      [v16 addObjectsFromArray:&unk_1F2249FD8];
      if (!v20)
      {
LABEL_67:
        if (!v21)
        {
          goto LABEL_68;
        }

        goto LABEL_75;
      }
    }

    else if (!v20)
    {
      goto LABEL_67;
    }

    [v16 addObjectsFromArray:&unk_1F2249FF0];
    if (!v21)
    {
LABEL_68:
      if (!a8)
      {
        goto LABEL_80;
      }

      goto LABEL_76;
    }

LABEL_75:
    [v16 addObjectsFromArray:&unk_1F224A008];
    if (!a8)
    {
      goto LABEL_80;
    }

LABEL_76:
    [v16 addObjectsFromArray:&unk_1F224A020];
    if (v19)
    {
      [v16 addObjectsFromArray:&unk_1F224A038];
      if (!v20)
      {
LABEL_78:
        if (v21)
        {
LABEL_79:
          [v16 addObjectsFromArray:&unk_1F224A068];
        }

LABEL_80:
        if (!a5 || !a6)
        {
          return v16;
        }

        [v16 addObjectsFromArray:&unk_1F224A080];
        if (v19)
        {
          [v16 addObjectsFromArray:&unk_1F224A098];
          if (!v20)
          {
LABEL_84:
            if (!v21)
            {
              return v16;
            }

            goto LABEL_88;
          }
        }

        else if (!v20)
        {
          goto LABEL_84;
        }

        [v16 addObjectsFromArray:&unk_1F224A0B0];
        if (!v21)
        {
          return v16;
        }

LABEL_88:
        v17 = &unk_1F224A0C8;
        goto LABEL_89;
      }
    }

    else if (!v20)
    {
      goto LABEL_78;
    }

    [v16 addObjectsFromArray:&unk_1F224A050];
    if (!v21)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  if (a1 == 2)
  {
    if (FigCapturePlatformSupportsHTPC32x4Compression())
    {
      if (a4)
      {
        if (a6)
        {
          [v16 addObjectsFromArray:&unk_1F2249DE0];
        }

        if (a7)
        {
          [v16 addObjectsFromArray:&unk_1F2249DF8];
        }
      }

      if (a3)
      {
        if (a6)
        {
          [v16 addObjectsFromArray:&unk_1F2249E10];
        }

        if (a7)
        {
          v17 = &unk_1F2249E28;
          goto LABEL_89;
        }
      }
    }
  }

  else if (a1 == 1 && FigCapturePlatformSupportsHTPC16x8Compression())
  {
    if (a4)
    {
      if (a6)
      {
        [v16 addObjectsFromArray:&unk_1F2249D80];
      }

      if (a7)
      {
        [v16 addObjectsFromArray:&unk_1F2249D98];
      }
    }

    if (a3)
    {
      if (a6)
      {
        [v16 addObjectsFromArray:&unk_1F2249DB0];
      }

      if (a7)
      {
        v17 = &unk_1F2249DC8;
LABEL_89:
        [v16 addObjectsFromArray:v17];
      }
    }
  }

  return v16;
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, int a32)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_67_2()
{
  v2 = *(v0 + 8);

  return [v2 applicationID];
}

uint64_t OUTLINED_FUNCTION_67_3(opaqueCMSampleBuffer *a1, uint64_t a2, __CVBuffer *a3, CMVideoFormatDescriptionRef *a4, uint64_t a5)
{

  return BWSampleBufferSetAttachedMediaFromPixelBuffer(a1, a2, a3, a4, a5, 0, 0);
}

BOOL OUTLINED_FUNCTION_67_7(NSObject *a1)
{
  v2 = STACK[0x2A0];

  return os_log_type_enabled(a1, v2);
}

uint64_t BWSmartCameraSceneInitialize(uint64_t result, char a2, __int16 a3, __int16 a4, uint64_t a5, float a6, float a7, float a8)
{
  *result = a2;
  *(result + 1) = 0;
  *(result + 4) = a8;
  *(result + 8) = 2143289344;
  *(result + 12) = a6;
  *(result + 16) = a7;
  *(result + 20) = a3;
  *(result + 22) = a4;
  *(result + 24) = 0;
  *(result + 26) = 0;
  *(result + 32) = a5;
  return result;
}

_BYTE *BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(_BYTE *result)
{
  if (*result == 1)
  {
    result[26] = 1;
  }

  return result;
}

uint64_t BWCIFilterArrayContainsFiltersRequiringSegmentation(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        NSClassFromString(&cfstr_Ciportraiteffe_0.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Ciportraiteffe_2.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Ciportraiteffe_4.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              NSClassFromString(&cfstr_Ciportraiteffe_6.isa);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                NSClassFromString(&cfstr_Ciportraiteffe_7.isa);
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }
          }
        }

        return 1;
      }

      v3 = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      result = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *cs_configurePreviewStitcherNodeOutputTransformAndHistogramGeneration(void *a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v7 = [a2 transform];
  v9 = v8;
  [a1 setRotationDegrees:HIDWORD(v7)];
  v10 = FigCaptureTransformFlipAppliedBeforeRotationToAfter(v7 & 1, SHIDWORD(v7));
  [a1 setFlipHorizontal:v10 == 1];
  [a1 setFlipVertical:v10 == 2];
  result = [a1 setGeneratesHistogram:a3];
  if (a4)
  {
    *a4 = v7;
    a4[1] = v9;
  }

  return result;
}

uint64_t FigCaptureTransformFlipAppliedBeforeRotationToAfter(uint64_t result, int a2)
{
  if (result && (a2 == 270 || a2 == 90))
  {
    if (result == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = result;
    }

    if (result == 2)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

void *ptn_supportedPixelFormats(int a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObjectsFromArray:&unk_1F2248208];
  [v2 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(1, 1, 0, 0)}];
  [v2 addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(4, a1, 1, 1, 1, 1, 1, 1)}];
  return v2;
}

void *FigCaptureNameSplitterNodeOutputsCorrespondingToConnections(void *a1, void *a2)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v5 = result;
    LODWORD(v6) = 0;
    v7 = *v11;
    do
    {
      v8 = 0;
      v6 = v6;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a1);
        }

        [*(*(&v10 + 1) + 8 * v8) setName:{+[FigCaptureSinkConfiguration stringForSinkType:](FigCaptureSinkConfiguration, "stringForSinkType:", objc_msgSend(objc_msgSend(objc_msgSend(a2, "objectAtIndexedSubscript:", v6++), "sinkConfiguration"), "sinkType"))}];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      result = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t BWCIFilterArrayContainsPortraitEffectFilters(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        NSClassFromString(&cfstr_Ciportraiteffe_8.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Ciportraiteffe_9.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        return 1;
      }

      v3 = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      result = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t FigCapturePlatformIdentifierString()
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  return sPlatformIDString;
}

uint64_t *vfr_resolveOptionalAlignmentFactors(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    if (*result)
    {
      if (v2 < 0)
      {
        LODWORD(v2) = -v2;
      }

      if (a2 >= 0)
      {
        v3 = a2;
      }

      else
      {
        v3 = -a2;
      }

      if (v3 <= v2)
      {
        v4 = v2;
      }

      else
      {
        v4 = v3;
      }

      if (v3 >= v2)
      {
        v5 = v2;
      }

      else
      {
        v5 = v3;
      }

      if (v5)
      {
        v6 = v4;
        do
        {
          v4 = v5;
          v5 = v6 % v5;
          v6 = v4;
        }

        while (v5 > 0);
      }

      else if (!v4)
      {
        a2 = 0;
        goto LABEL_22;
      }

      a2 = v2 * v3 / v4;
LABEL_22:
      *result = a2;
      return result;
    }
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getADPCEDisparityColorPipelineClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADPCEDisparityColorPipelineClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADPCEDisparityColorPipelineClass_softClass;
  if (!getADPCEDisparityColorPipelineClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADPCEDisparityColorPipelineClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADPCEDisparityColorPipelineClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC959748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t psp_rotationAngleForStreamingFilterInferences(void *a1)
{
  [objc_msgSend(objc_msgSend(a1 "sourceConfiguration")];
  if (FigCaptureSourceIsSensorMountedInPortraitOrientation(v2))
  {
    return 4294967206;
  }

  else
  {
    return [a1 transform] >> 32;
  }
}

uint64_t BWCIFilterArrayContainsPortraitFilters(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        NSClassFromString(&cfstr_Cideptheffect.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Ciportraiteffe_8.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Ciportraiteffe_9.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }
        }

        return 1;
      }

      v3 = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      result = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

BWNodeInputMediaConfiguration *simpleInputMediaConfigurationWithDelayedBufferCount(uint64_t a1)
{
  v2 = objc_alloc_init(BWNodeInputMediaConfiguration);
  [(BWNodeInputMediaConfiguration *)v2 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeInputMediaConfiguration *)v2 setPassthroughMode:0];
  [(BWNodeInputMediaConfiguration *)v2 setDelayedBufferCount:a1];
  return v2;
}

BOOL FigCaptureCameraRequires180DegreesRotation(int a1, char a2)
{
  result = 0;
  if (a1 && (a2 & 1) == 0)
  {
    if (FigCaptureFrontCameraRotationAngle_onceToken != -1)
    {
      FigCaptureFrontCameraRotationAngle_cold_1();
    }

    return FigCaptureFrontCameraRotationAngle_sFrontCameraRotationAngle == 180;
  }

  return result;
}

void sn_notifyOnStateTransition(void *a1, os_unfair_lock_s *a2, int a3, void *a4, id *a5)
{
  v13 = [a4 copy];
  os_unfair_lock_lock(a2);
  if ([a1 currentState] == a3)
  {
    os_unfair_lock_unlock(a2);
LABEL_3:

    v10 = a4[2];

    v10(a4);
    return;
  }

  if (*a5)
  {
    [*a5 addObject:v13];
    os_unfair_lock_unlock(a2);
  }

  else
  {
    os_unfair_lock_unlock(a2);
    v11 = objc_opt_new();
    os_unfair_lock_lock(a2);
    if ([a1 currentState] == a3)
    {
      os_unfair_lock_unlock(a2);

      goto LABEL_3;
    }

    v12 = *a5;
    if (!*a5)
    {
      *a5 = v11;
      v12 = v11;
      v11 = 0;
    }

    [v12 addObject:v13];
    os_unfair_lock_unlock(a2);
  }
}

void *__vtsp_invalidateThumbnailSinkContentsIfNeeded_block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 72) == 1)
  {
    v2 = result;
    result = [*(v1 + 80) postNotification:@"ThumbnailImageQueueUpdated" notificationPayload:0];
    v1 = v2[4];
  }

  *(v1 + 72) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);

  return [a32 countByEnumeratingWithState:va objects:&a47 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_53_8()
{
  v1 = STACK[0x2E8];

  return [v1 countByEnumeratingWithState:&STACK[0x520] objects:&STACK[0x4A0] count:16];
}

void OUTLINED_FUNCTION_53_10(dispatch_time_t start)
{

  dispatch_source_set_timer(v1, start, 0xFFFFFFFFFFFFFFFFLL, 0);
}

BOOL OUTLINED_FUNCTION_53_11(double a1, double a2, double a3, double a4)
{
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  return CGRectEqualToRect(*&a1, *&v9);
}

uint64_t mscsn_streamOutputIndexForOutputID(void *a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, *off_1E798CA98))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 8;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 6;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 7;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 17;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Internal inconsistency, mscsn_streamOutputIndexForOutputID() is not expected to be called with kFigCaptureStreamVideoOutputID_Metadata. Metadata output supports multiple data outputs. Check the call site and update."), 0}]);
  }

  mscsn_streamOutputIndexForOutputID_cold_1();
  return 0xFFFFFFFFLL;
}

uint64_t flashlightRemote_createBasicMessage(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (FigXPCCreateBasicMessage())
  {
    flashlightRemote_createBasicMessage_cold_1();
  }

  return 0;
}

void OUTLINED_FUNCTION_82_1()
{
  LOWORD(STACK[0x2AC]) = 2048;
  *(v0 + 14) = v1;
  LOWORD(STACK[0x2B6]) = 2112;
}

uint64_t OUTLINED_FUNCTION_82_5()
{
  v3 = *(v1 + 3480);

  return [v3 numberWithBool:v0];
}

uint64_t FigCapturePixelFormatIsBGRA(int a1)
{
  result = 1;
  if (a1 <= 792872768)
  {
    if (a1 == 641877825)
    {
      return result;
    }

    v3 = 759318337;
    goto LABEL_7;
  }

  if (a1 != 792872769 && a1 != 1111970369)
  {
    v3 = 2084718401;
LABEL_7:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t flashlightServer_handleReplyMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  xpc_connection_get_audit_token();
  memset(v6, 0, sizeof(v6));
  FigCaptureClientIsAVConferenced(v6);
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v4 = OpCode;
    flashlightServer_handleReplyMessage_cold_1();
  }

  else
  {
    v4 = 4294966630;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v4;
}

uint64_t flashlight_PowerOff(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 32) <= 0.0)
  {
    flashlight_teardownDevice(a1, 1);
  }

  FigSimpleMutexUnlock();
  return 0;
}

__n128 OUTLINED_FUNCTION_199()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0;
  *(v0 - 64) = 0;
  return *(v0 - 56);
}

uint64_t BWColorSpacePropertiesGetCaptureStreamColorSpace(int a1)
{
  if ((a1 - 3) > 9)
  {
    return 0;
  }

  else
  {
    return dword_1AD055110[a1 - 3];
  }
}

uint64_t BWColorSpacePropertiesGetYCbCrMatrix(int a1)
{
  if ((a1 - 2) > 0xA)
  {
    v1 = MEMORY[0x1E6965FC8];
  }

  else
  {
    v1 = qword_1E7991A68[a1 - 2];
  }

  return *v1;
}

void *BWFilterAndUpdateNondisruptiveSwitchingFormatIndicesByZoomFactor(uint64_t a1, void *a2, void *a3, int a4)
{
  result = [a3 count];
  if (result >= 2)
  {
    v8 = [objc_msgSend(a3 "allKeys")];
    OUTLINED_FUNCTION_43();
    result = [v9 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v10 = result;
      v11 = MEMORY[0];
      do
      {
        v12 = 0;
        do
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(8 * v12);
          if (([a2 containsObject:v13] & 1) == 0)
          {
            if (a4)
            {
              v14 = [v8 indexOfObject:v13] + 1;
              if (v14 < [v8 count])
              {
                v15 = [v8 objectAtIndexedSubscript:v14];
                [v15 floatValue];
                v17 = v16;
                [v13 floatValue];
                if ((v17 / v18) < 1.2)
                {
                  [a3 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", v13), v15}];
                }
              }
            }

            [a3 setObject:0 forKeyedSubscript:v13];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        OUTLINED_FUNCTION_43();
        result = [v8 countByEnumeratingWithState:? objects:? count:?];
        v10 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_283()
{

  return [v0 portType];
}

uint64_t OUTLINED_FUNCTION_282()
{

  return [v0 portType];
}

__n128 OUTLINED_FUNCTION_292()
{
  result = *(v1 - 256);
  *v0 = result;
  v0[1].n128_u64[0] = *(v1 - 240);
  return result;
}

CMAttachmentBearerRef OUTLINED_FUNCTION_61@<X0>(opaqueCMSampleBuffer *a1@<X1>, uint64_t a2@<X8>)
{

  return [(BWUBNRFProcessorController *)v2 _newOutputSampleBufferWithSampleBuffer:a1 pixelBuffer:v4 formatDescriptionInOut:&v2[a2] metadataToMerge:v3];
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return [v0 countByEnumeratingWithState:&STACK[0x3A0] objects:&STACK[0x320] count:16];
}

uint64_t OUTLINED_FUNCTION_61_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return fig_note_initialize_category_with_default_work_cf();
}

BOOL OUTLINED_FUNCTION_61_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, os_log_type_t type, int a21)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_61_4()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

BOOL OUTLINED_FUNCTION_61_5(NSObject *a1)
{
  v3 = *(v1 - 240);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_61_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);

  return [v36 countByEnumeratingWithState:va objects:&a21 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_61_9()
{

  return [v0 objectForKeyedSubscript:v1];
}

uint64_t BWVNSetRequiresHighQoS(uint64_t a1)
{
  VNSetRequiresHighQoSSymbolLoc = getVNSetRequiresHighQoSSymbolLoc();
  if (!VNSetRequiresHighQoSSymbolLoc)
  {
    BWVNSetRequiresHighQoS_cold_1();
  }

  return VNSetRequiresHighQoSSymbolLoc(a1);
}

uint64_t getVNSetRequiresHighQoSSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVNSetRequiresHighQoSSymbolLoc_ptr;
  v6 = getVNSetRequiresHighQoSSymbolLoc_ptr;
  if (!getVNSetRequiresHighQoSSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v4[3] = dlsym(v1, "VNSetRequiresHighQoS");
    getVNSetRequiresHighQoSSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC95C72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BWVNSetTargetDispatchQueue(uint64_t a1)
{
  VNSetTargetDispatchQueueSymbolLoc = getVNSetTargetDispatchQueueSymbolLoc();
  if (!VNSetTargetDispatchQueueSymbolLoc)
  {
    BWVNSetTargetDispatchQueue_cold_1();
  }

  return VNSetTargetDispatchQueueSymbolLoc(a1);
}

uint64_t FigCapturePlatformGetVariant()
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  return sPlatformVariant;
}

uint64_t vfr_resolveNumericalArrays(id *a1, void *a2)
{
  v4 = *a1;
  if ([*a1 count] && objc_msgSend(a2, "count"))
  {
    v5 = [v4 bw_intersectWithArray:a2];
    if (![v5 count])
    {

      return 0;
    }
  }

  else
  {
    if ([v4 count] || !objc_msgSend(a2, "count"))
    {
      return 1;
    }

    v5 = [a2 copy];
  }

  if (v5)
  {

    *a1 = v5;
  }

  return 1;
}

uint64_t FigCapturePlatformIOSurfaceWiringAssertionEnabled()
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  return sIOSurfaceWiringAssertionEnabled;
}

BOOL FigCaptureSourceIsSensorMountedInPortraitOrientation(float a1)
{
  HIDWORD(v1) = -1527099483 * a1 + 47721856;
  LODWORD(v1) = HIDWORD(v1);
  return (v1 >> 2) < 0x16C16C1;
}

void *captureSession_cleanUpUnusedPreparedBrackets(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [*(DerivedStorage + 592) allKeys];
  result = [v4 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [a2 countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(a2);
            }

            [objc_msgSend(objc_msgSend(*(*(&v15 + 1) + 8 * v13) "primaryStillImageConnectionConfiguration")];
            if (objc_msgSend_isEqualToString_(v9))
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [a2 countByEnumeratingWithState:&v15 objects:v14 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          [*(DerivedStorage + 592) setObject:0 forKeyedSubscript:v9];
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      result = [v4 countByEnumeratingWithState:&v20 objects:v19 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

FigCaptureStillImageSinkPipelineSessionStorage *captureSession_createStillImageSinkPipelineSessionStorage(uint64_t a1, void *a2, id *a3, id *a4, void *a5, void *a6, uint64_t a7, unsigned int a8, unsigned int *a9)
{
  v65 = a9;
  v87[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v78 = a2;
  v14 = [a2 primaryStillImageConnectionConfiguration];
  v62 = [(FigCaptureCameraSourcePipeline *)a3 captureDevice];
  v73 = a3;
  v63 = [(FigCaptureCameraSourcePipeline *)a3 stillImageOutputColorInfo];
  v68 = [MEMORY[0x1E695DF70] array];
  v67 = [MEMORY[0x1E695DF70] array];
  [v14 sinkConfiguration];
  objc_opt_class();
  v76 = 0;
  if (objc_opt_isKindOfClass())
  {
    v76 = [objc_msgSend(v14 "sinkConfiguration")];
  }

  v64 = DerivedStorage;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [a2 stillImageConnectionConfigurations];
  v15 = [obj countByEnumeratingWithState:&v83 objects:v82 count:16];
  if (!v15)
  {
    v17 = 0;
LABEL_21:
    v29 = [objc_msgSend(v14 "sourceConfiguration")];
    if ([objc_msgSend(v14 "sinkConfiguration")] == 10)
    {
      v30 = [v14 sinkConfiguration];
    }

    else
    {
      v30 = 0;
    }

    v31 = [v30 optimizesImagesForOfflineVideoStabilization];
    v32 = [(FigCapturePhotonicEngineSinkPipeline *)v17 stillImageCoordinatorNode];
    [(FigCapturePhotonicEngineSinkPipeline *)v17 compressedShotBufferNode];
    v33 = objc_alloc_init(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration);
    -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setFormatDimensionWidth:](v33, "setFormatDimensionWidth:", [v29 dimensions]);
    -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setFormatDimensionHeight:](v33, "setFormatDimensionHeight:", [v29 dimensions] >> 32);
    [v29 maxSupportedFrameRate];
    [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v33 setFormatMaxFrameRate:?];
    -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setIsHighQualityPhotoWithVideoFormatSupported:](v33, "setIsHighQualityPhotoWithVideoFormatSupported:", [v29 isHighPhotoQualitySupported]);
    -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setIsPhotoFormat:](v33, "setIsPhotoFormat:", [v29 isPhotoFormat]);
    [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v33 setIsTimeLapse:v31];
    -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setPixelFormat:](v33, "setPixelFormat:", [v29 format]);
    -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setBinned:](v33, "setBinned:", [v29 isBinned]);
    -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setIsSemanticStyleRenderingSupported:](v33, "setIsSemanticStyleRenderingSupported:", [v29 isSemanticStyleRenderingSupported]);
    -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setIsSmartStyleRenderingSupported:](v33, "setIsSmartStyleRenderingSupported:", [v29 isSmartStyleRenderingSupported]);
    [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v33 setFastCapturePrioritizationEnabled:[(BWStillImageCoordinatorNode *)v32 fastCapturePrioritizationEnabled]];
    v72 = v31;
    if (v76 && [v68 count] >= 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      -[FigCapturePhotonicEngineSinkPipeline connectToSecondaryMultiCameraClientCompositingPipeline:](v17, "connectToSecondaryMultiCameraClientCompositingPipeline:", [v68 objectAtIndexedSubscript:1]);
      v77 = [objc_msgSend(v68 objectAtIndexedSubscript:{1), "stillImageCoordinatorNode"}];
    }

    else
    {
      v77 = 0;
    }

    v34 = [(FigCapturePhotonicEngineSinkPipeline *)v17 stillImageSinkNode];
    v35 = [v14 sinkConfiguration];
    v70 = v29;
    v36 = v14;
    v37 = [v29 isCaptureTimePhotoCurationSupported];
    v38 = *(CMBaseObjectGetDerivedStorage() + 784);
    v39 = [v35 sinkID];
    if ([v35 sinkType] != 10)
    {
      v35 = 0;
    }

    [(BWStillImageSampleBufferSinkNode *)v34 setStillImageCapturePipeliningMode:[(BWStillImageCoordinatorNode *)v32 stillImageCapturePipeliningMode]];
    [(BWStillImageSampleBufferSinkNode *)v34 setDeferredPhotoProcessorEnabled:0];
    [(BWStillImageSampleBufferSinkNode *)v34 setClientIsCameraOrDerivative:captureSession_clientIsCameraOrDerivative(a1)];
    [(BWStillImageSampleBufferSinkNode *)v34 setCaptureTimePhotosCurationSupported:v37];
    -[BWStillImageSampleBufferSinkNode setFocusPixelBlurScoreEnabled:](v34, "setFocusPixelBlurScoreEnabled:", [v35 focusPixelBlurScoreEnabled]);
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __captureSession_configureStillImageSinkNode_block_invoke;
    v79[3] = &unk_1E7998EC0;
    v79[4] = v38;
    v79[5] = v39;
    v79[6] = v32;
    v79[7] = v77;
    v79[8] = a1;
    [(BWStillImageSampleBufferSinkNode *)v34 setSampleBufferAvailableHandler:v79];
    [(BWStillImageSampleBufferSinkNode *)v34 setAnalyticsConfiguration:v33];
    v40 = objc_alloc_init(FigCapturePixelConverter);
    v41 = v64;
    v42 = [*(v64 + 592) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v36, "sinkConfiguration"), "sinkID")}];
    if (!v42)
    {
      if ([objc_msgSend(v36 "sinkConfiguration")] == 3)
      {
        v42 = objc_alloc_init(FigCaptureSessionPreparedBracket);
      }

      else
      {
        v42 = 0;
      }
    }

    if ([objc_msgSend(v36 "irisSinkConfiguration")])
    {
      v43 = 0.90909;
    }

    else
    {
      v43 = 0.0;
    }

    v44 = [FigCaptureStillImageSinkPipelineSessionStorage alloc];
    v45 = [a6 imageQueueSinkNode];
    v46 = [v78 stillImageConnectionConfigurations];
    *&v47 = v43;
    v27 = [(FigCaptureStillImageSinkPipelineSessionStorage *)v44 initWithStillImageSinkPipelines:v68 cameraSourcePipelines:v67 previewSinkNode:v45 pixelConverter:v40 colorInfo:v63 stillImagesAreOptimizedForOfflineVideoStabilization:v72 videoStabilizationOverscanCropMultiplier:v47 preparedBracket:v42 stillImageConnectionConfigurations:v46];
    if (v27)
    {
      if ([objc_msgSend(v36 "sinkConfiguration")] == 10)
      {
        v48 = [*(v64 + 544) objectForKeyedSubscript:{-[FigCaptureSinkPipeline sinkID](v17, "sinkID")}];
        if ([v48 processedOutputFormat] && objc_msgSend(v48, "processedOutputFormat") != 1785750887 && objc_msgSend(v48, "processedOutputFormat") != 1752589105 && objc_msgSend(v48, "processedOutputFormat") != 1635148593)
        {
          v49 = [v48 figCaptureStillImageSettingsRepresentation];
          [-[FigCaptureCameraSourcePipeline captureDevice](-[FigCaptureStillImageSinkPipelineSessionStorage primaryCameraSourcePipeline](v27 "primaryCameraSourcePipeline"))];
          LODWORD(v79[0]) = v50;
          v51 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v27, v17, v49, v79);
          v52 = +[BWVideoFormat colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:](BWVideoFormat, "colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:", [v62 supportsWideColor], cs_figCaptureColorSpaceFromSourcePipeline(v73), objc_msgSend(v70, "format"), objc_msgSend(v70, "dimensions"), objc_msgSend(v48, "processedOutputFormat"));
          if ([v48 bracketedImageCount])
          {
            v53 = [v48 bracketedImageCount];
          }

          else
          {
            v53 = 1;
          }

          v41 = v64;
          if ([objc_msgSend(v48 "bravoConstituentImageDeliveryDeviceTypes")])
          {
            v53 = v53 * [objc_msgSend(v48 "bravoConstituentImageDeliveryDeviceTypes")];
          }

          v87[0] = -[FigCapturePixelConverter updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:](v40, "updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:", [v48 processedOutputFormat], v51, v53, v52);
        }

        v56 = [(FigCaptureSinkPipeline *)v17 sinkID];
        v57 = [v48 settingsID];
        v58 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v56, v57, v87[0]);

        *(v41 + 552) = v58;
      }

      else
      {
        v54 = [(FigCaptureSessionPreparedBracket *)[(FigCaptureStillImageSinkPipelineSessionStorage *)v27 preparedBracket] outputFormat];
        if (v54 > 1752589104)
        {
          if (v54 == 1752589105)
          {
            goto LABEL_58;
          }

          v55 = 1785750887;
        }

        else
        {
          if (!v54)
          {
            goto LABEL_58;
          }

          v55 = 1635148593;
        }

        if (v54 != v55)
        {
          [(FigCapturePixelConverter *)v40 updateOutputPixelFormat:v54 dimensions:[(FigCaptureSessionPreparedBracket *)[(FigCaptureStillImageSinkPipelineSessionStorage *)v27 preparedBracket] outputDimensions] poolCapacity:[(FigCaptureSessionPreparedBracket *)[(FigCaptureStillImageSinkPipelineSessionStorage *)v27 preparedBracket] imageCount] colorSpaceProperties:[(FigCaptureSessionPreparedBracket *)[(FigCaptureStillImageSinkPipelineSessionStorage *)v27 preparedBracket] colorSpaceProperties]];
        }
      }
    }

    else
    {
      LODWORD(v59) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v59, v61, v60, v61, v62, v63, v64, a9);
      v87[0] = -12786;
    }

LABEL_58:
    v26 = v65;
    if (!v65)
    {
      return v27;
    }

    goto LABEL_18;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v84;
LABEL_5:
  v19 = 0;
  while (1)
  {
    if (*v84 != v18)
    {
      objc_enumerationMutation(obj);
    }

    v20 = *(*(&v83 + 1) + 8 * v19);
    v21 = v14;
    v22 = v20 == v14 ? v73 : a4;
    StillImageSinkPipeline = captureSession_createStillImageSinkPipeline(a1, v78, v22, a5, a6, a7, v20, a8, v76, v87);
    if (v87[0])
    {
      break;
    }

    v24 = StillImageSinkPipeline;
    [v68 addObject:StillImageSinkPipeline];
    [v67 addObject:v22];
    if (v20 == v21)
    {
      v17 = v24;
    }

    ++v19;
    v14 = v21;
    if (v16 == v19)
    {
      v16 = [obj countByEnumeratingWithState:&v83 objects:v82 count:16];
      if (v16)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  v81 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v26 = a9;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v27 = 0;
  if (!a9)
  {
    return v27;
  }

LABEL_18:
  *v26 = v87[0];
  return v27;
}

uint64_t OUTLINED_FUNCTION_64_3()
{
  v3 = *(v0 + 3480);

  return [v3 numberWithInt:v1];
}

id *OUTLINED_FUNCTION_64_4()
{

  return [(FigCaptureClientApplicationStateMonitor *)v0 loggingPrefix];
}

uint64_t OUTLINED_FUNCTION_64_5(uint64_t a1)
{
  v4 = *(v1 - 88);

  return [v4 addObject:a1];
}

uint64_t OUTLINED_FUNCTION_64_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return [v28 countByEnumeratingWithState:va objects:&a13 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_64_10()
{
  LODWORD(STACK[0x8EC]) = 0;
  LOBYTE(STACK[0x8EB]) = 0;
  return qword_1ED844348;
}

uint64_t OUTLINED_FUNCTION_100_3(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 connectOutput:v4 toInput:a4 pipelineStage:0];
}

void mscsn_calculateScalerCropAndOutputDimensions(void *a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, unint64_t a7, int a8, double a9, double a10, double a11, double a12, float a13, float a14, void *a15, _DWORD *a16)
{
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v28 = a1;
  v29 = HIDWORD(a3);
  v30 = HIDWORD(a4);
  v31 = HIDWORD(a5);
  v168 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C9A0), "objectForKeyedSubscript:", a1}];
  v150 = *off_1E798C938;
  v165 = [objc_msgSend(a2 "objectForKeyedSubscript:"intValue"")] >= 1 && objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798C930), "intValue") > 0;
  v33 = v20 > 2 && v29 > 2;
  v155 = v33;
  v163 = v30;
  v35 = v19 > 0 && v30 > 0;
  v36 = a10 != *(MEMORY[0x1E695F060] + 8) || a9 != *MEMORY[0x1E695F060];
  v38 = v18 > 2 && v31 > 2;
  v161 = v36;
  v162 = v38;
  v39 = FigCapturePlatformIdentifier();
  v171 = *off_1E798CAB8;
  v159 = v18;
  if (v39 >= 6 && (([v28 isEqual:?] & 1) != 0 || (objc_msgSend(v28, "isEqual:", *off_1E798CA98) & 1) != 0 || objc_msgSend(v28, "isEqual:", *off_1E798A088)))
  {
    v40 = 4;
  }

  else
  {
    v40 = 2;
  }

  v158 = v31;
  if ([v28 isEqual:v171])
  {
    v165 = 0;
    if (a6)
    {
      v41 = 4;
    }

    else
    {
      v41 = 2;
    }

    if (a6)
    {
      v42 = 4;
    }

    else
    {
      v42 = v40;
    }

    v167 = v41;
    if (v162)
    {
      v43 = 2;
    }

    else
    {
      v43 = v41;
    }

    v170 = v43;
    if (!v162)
    {
      v40 = v42;
    }
  }

  else
  {
    if ([v28 isEqual:*off_1E798CAC8])
    {
      goto LABEL_44;
    }

    v44 = v168;
    if (objc_msgSend_isEqualToString_(v28) & 1) != 0 || (objc_msgSend_isEqualToString_(v28))
    {
      v167 = 2;
      v42 = v40;
      v170 = 2;
      goto LABEL_47;
    }

    if (![objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C990), "BOOLValue"}])
    {
LABEL_44:
      v167 = 2;
      v42 = v40;
    }

    else
    {
      v42 = 4;
      if (FigCapturePlatformIdentifier() <= 5)
      {
        v148 = 4;
      }

      else
      {
        v148 = 2;
      }

      v167 = v148;
    }

    v170 = 2;
  }

  v44 = v168;
LABEL_47:
  v174 = [objc_msgSend(v44 objectForKeyedSubscript:{*off_1E798CB18), "intValue"}];
  v173 = [objc_msgSend(v44 objectForKeyedSubscript:{*off_1E798CB08), "intValue"}];
  if (a8 && [objc_msgSend(v44 objectForKeyedSubscript:{*off_1E798CB50), "BOOLValue"}])
  {
    v45 = [objc_msgSend(v44 objectForKeyedSubscript:{*off_1E798CB20), "intValue"}];
    v46 = [objc_msgSend(v44 objectForKeyedSubscript:{*off_1E798CB10), "intValue"}];
    v48 = v45 > v174 || v46 > v173;
    if (v48)
    {
      v49 = v45;
    }

    else
    {
      v49 = v174;
    }

    v174 = v49;
    if (v48)
    {
      v50 = v46;
    }

    else
    {
      v50 = v173;
    }

    v173 = v50;
  }

  if (v174 < v20 || v173 < v29)
  {
    if (v35)
    {
      v53 = 0;
      v35 = 1;
    }

    else
    {
      v54 = [v28 isEqual:v171];
      v53 = 0;
      if (v54)
      {
        v35 = 1;
        v163 = v29;
        v19 = v20;
      }

      else
      {
        v35 = 0;
      }
    }
  }

  else
  {
    if (v155)
    {
      v51 = v40 * llroundf(v20 / v40);
      v52 = v170 * llroundf(v29 / v170);
      v53 = 1;
      goto LABEL_76;
    }

    v53 = 0;
  }

  v51 = v174;
  v52 = v173;
LABEL_76:
  if (v161)
  {
    v55 = v51 / (a9 + 1.0);
    v51 = (llroundf(v55 / v40) * v40);
    v56 = v52 / (a10 + 1.0);
    v52 = (llroundf(v56 / v170) * v170);
  }

  v57 = MEMORY[0x1E695F058];
  if (v35)
  {
    v156 = v28;
    v58 = v42;
    v59 = v53;
    v60 = v19 / v163;
    v61 = v165;
    if (v165)
    {
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C988), "floatValue"}];
      v63 = v62;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C980), "floatValue"}];
      v65 = v63 / v64;
      [objc_msgSend(a2 objectForKeyedSubscript:{v150), "floatValue"}];
      v67 = v66;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C930), "floatValue"}];
      v60 = v60 * ((v67 / v68) / v65);
    }

    v69 = v167;
    v70 = FigCaptureFitAspectInsideDimensions(v51 | (v52 << 32), v40 | (v170 << 32), v60);
    v51 = v70;
    v52 = HIDWORD(v70);
    v53 = v59;
    v42 = v58;
    v28 = v156;
  }

  else
  {
    v69 = v167;
    v61 = v165;
  }

  v154 = v57[3];
  v157 = v57[2];
  v164 = v157;
  v166 = v154;
  v72 = *v57;
  v71 = v57[1];
  v152 = v71;
  v153 = *v57;
  v151 = v51 | (v52 << 32);
  if ((v174 | (v173 << 32)) != v151)
  {
    v164 = v51;
    v166 = v52;
    v73 = (v174 - v51) * 0.5;
    v74 = (v173 - v52) * 0.5;
    v72 = (2 * llroundf(v73 * 0.5));
    v71 = (2 * llroundf(v74 * 0.5));
    if (((v53 | v161) & 1) != 0 && (a11 != *MEMORY[0x1E695EFF8] || a12 != *(MEMORY[0x1E695EFF8] + 8)))
    {
      if (v61)
      {
        v75 = [objc_msgSend(a2 objectForKeyedSubscript:{v150), "intValue"}];
        a11 = a11 * (v75 / [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C988), "intValue"}]);
        v76 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C930), "intValue"}];
        a12 = a12 * (v76 / [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C980), "intValue"}]);
      }

      v72 = a11 + v72;
      v71 = a12 + v71;
      v77 = v72 >= 0.0 && v72 + v164 <= v174;
      if (!v77 || (v71 >= 0.0 ? (v78 = v71 + v166 <= v173) : (v78 = 0), !v78))
      {
        v149 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Internal inconsistency, scalerCropRect %@ is out of bounds {%d, %d}", BWStringFromCGRect(v72, v71, v164, v166), v174, v173), 0}];
        objc_exception_throw(v149);
      }
    }
  }

  [objc_msgSend(v168 objectForKeyedSubscript:{*off_1E798CB00), "floatValue"}];
  v80 = v79;
  if (v79 == 0.0)
  {
    v80 = 1.0;
    if (([v28 isEqual:*off_1E798CA80] & 1) == 0)
    {
      [objc_msgSend(v168 objectForKeyedSubscript:{*off_1E798CAE8), "floatValue"}];
      if (v81 == 0.0)
      {
        v80 = 0.25;
      }

      else
      {
        v80 = v81;
      }
    }
  }

  if ([v28 isEqual:v171])
  {
    v82 = 1;
  }

  else
  {
    v82 = [v28 isEqual:*off_1E798CAC0];
  }

  v83 = v42;
  if (v82 & 1 | !v61)
  {
    v84 = a13;
  }

  else
  {
    v84 = a14;
  }

  v85 = v42 * llroundf(v159 / v83);
  v86 = v69;
  v87 = v69 * llroundf(v158 / v69);
  if (v162)
  {
    v88 = v85;
  }

  else
  {
    v88 = v51;
  }

  if (v162)
  {
    v89 = v87;
  }

  else
  {
    v89 = v52;
  }

  v169 = v84;
  if (a13 != 1.0)
  {
    if ([v28 isEqual:v171])
    {
      if (a13 >= 1.0)
      {
        v89 = (v89 * a13);
      }

      else
      {
        v88 = (v88 * a13);
      }
    }

    else
    {
      [v28 isEqual:*off_1E798CAC0];
    }
  }

  v90 = v51;
  v91 = vcvtps_s32_f32(v80 * v51);
  v92 = v52;
  v93 = vcvtps_s32_f32(v80 * v52);
  v94 = v88;
  if (v88 > v51 || v89 > v52)
  {
    FigCaptureMakeRectWithAspectRatioInsideDimensions(v151, 0, v94 / v89);
    v95 = llroundf(v97 / v83);
    v96 = v98;
  }

  else
  {
    v95 = llroundf(v94 / v83);
    v96 = v89;
  }

  v99 = v42 * v95;
  v100 = v69 * llroundf(v96 / v86);
  if (v99 < v91 || v100 < v93)
  {
    v172 = v71;
    v102 = v100;
    v103 = 1.0;
    v104 = v93;
    if (v99 < v91)
    {
      v103 = v91 / v99;
    }

    v105 = v104 / v102;
    if ((v104 / v102) <= v103)
    {
      v105 = v103;
    }

    if (v102 < v104)
    {
      v106 = v105;
    }

    else
    {
      v106 = v103;
    }

    if (FigCapturePlatformIdentifier() < 9)
    {
      LODWORD(v110) = v42 * llroundf(llroundf(v106 * v99) / v83);
      v109 = v167;
      LODWORD(v111) = v167 * llroundf(llroundf(v106 * v102) / v86);
    }

    else
    {
      if (v42 <= v167)
      {
        v107 = v167;
      }

      else
      {
        v107 = v42;
      }

      v108 = v99 | (v100 << 32);
      v109 = v167;
      v110 = mscsn_scaleDimensionsWithAlignment(v108, v107, v106, v106);
      v111 = HIDWORD(v110);
    }

    if (v110 >= v91)
    {
      v112 = 0;
    }

    else
    {
      v112 = v42;
    }

    LODWORD(v99) = v112 + v110;
    if (v111 >= v93)
    {
      v113 = 0;
    }

    else
    {
      v113 = v109;
    }

    LODWORD(v100) = v113 + v111;
    v114 = v99 <= v51 && v100 <= v52;
    v71 = v172;
    if (!v114)
    {
      v115 = v94 / v89;
      if (vabds_f32(v115, (v169 * v90) / v92) <= 0.01)
      {
        LODWORD(v99) = v42 * llroundf(v90 / v83);
        v118 = v92 / v86;
      }

      else
      {
        FigCaptureMakeRectWithAspectRatioInsideDimensions(v151, 0, v115);
        LODWORD(v99) = v42 * llroundf(v116 / v83);
        v118 = v117 / v86;
      }

      LODWORD(v100) = v167 * llroundf(v118);
    }
  }

  v178.size.height = v154;
  v178.size.width = v157;
  v178.origin.y = v152;
  v178.origin.x = v153;
  v175.origin.x = v72;
  v175.origin.y = v71;
  v120 = v164;
  v119 = v166;
  v175.size.width = v164;
  v175.size.height = v166;
  v121 = CGRectEqualToRect(v175, v178);
  v122 = (v40 * llroundf(v174 / v40));
  v123 = llroundf(v173 / v170);
  if (v121)
  {
    v119 = (v170 * v123);
    v120 = v122;
  }

  v124 = v120;
  v125 = v119;
  v126 = [v28 isEqual:*off_1E798CA80];
  v127 = v99;
  v128 = v100;
  if ((v126 & 1) == 0)
  {
    v129 = [v28 isEqual:*off_1E798CAC0];
    v127 = v99;
    v128 = v100;
    if ((v129 & 1) == 0)
    {
      if (v169 <= 1.0)
      {
        v127 = v99;
        v128 = v100;
        if (v169 < 1.0)
        {
          v128 = (v169 * v100);
          v127 = v99;
        }
      }

      else
      {
        v127 = (v99 / v169);
        v128 = v100;
      }
    }
  }

  v130 = HIDWORD(a7);
  v131 = v127 / v128;
  if (vabds_f32(v124 / v125, v131) > 0.0005)
  {
    RectWithAspectRatioInsideDimensions = FigCaptureMakeRectWithAspectRatioInsideDimensions(v124 | (v125 << 32), 1, v131);
    v134 = v133;
    v135 = (llroundf(v134 / v40) * v40);
    v137 = v136;
    v138 = (llroundf(v137 / v170) * v170);
    v139 = (v133 - v135) * 0.5;
    *&v136 = (v136 - v138) * 0.5;
    v72 = v72 + RectWithAspectRatioInsideDimensions + (2 * llroundf(v139 * 0.5));
    v71 = v71 + v140 + (2 * llroundf(*&v136 * 0.5));
    v120 = v99;
    v119 = v100;
    if (v135 < v99 || v138 < v119)
    {
      v142 = (v120 - v135) * 0.5;
      v143 = 2 * llroundf(v142 * 0.5);
      if (v72 - v143 >= 0.0)
      {
        v72 = v72 - v143;
      }

      else
      {
        v72 = 0.0;
      }

      v144 = (v119 - v138) * 0.5;
      v145 = 2 * llroundf(v144 * 0.5);
      if (v71 - v145 >= 0.0)
      {
        v71 = v71 - v145;
      }

      else
      {
        v71 = 0.0;
      }
    }

    else
    {
      v119 = v138;
      v120 = v135;
    }
  }

  if (v130 || a7)
  {
    if (a7)
    {
      v146 = v72;
      v72 = FigCaptureRoundFloatToMultipleOf(a7, v146);
      if (v120 + v72 > v174)
      {
        v72 = v72 - a7;
      }
    }

    if (v130)
    {
      v147 = v71;
      v71 = FigCaptureRoundFloatToMultipleOf(SHIDWORD(a7), v147);
      if (v119 + v71 > v173)
      {
        v71 = v71 - SHIDWORD(a7);
      }
    }
  }

  if (a15)
  {
    v176.origin.x = v72;
    v176.origin.y = v71;
    v176.size.width = v120;
    v176.size.height = v119;
    if (!CGRectIsEmpty(v176))
    {
      v177.origin.x = v72;
      v177.origin.y = v71;
      v177.size.width = v120;
      v177.size.height = v119;
      *a15 = CGRectCreateDictionaryRepresentation(v177);
    }
  }

  if (a16)
  {
    *a16 = v99;
    a16[1] = v100;
  }
}

uint64_t FigCapturePixelFormatGetLossyCompressionLevel(int a1)
{
  if (a1 <= 796419631)
  {
    if (a1 <= 762869295)
    {
      if (a1 > 761816623)
      {
        if (a1 == 761816624 || a1 == 762865200)
        {
          return 1;
        }

        v1 = 762865202;
      }

      else
      {
        if (a1 == 758670896 || a1 == 758674992)
        {
          return 1;
        }

        v1 = 759318337;
      }

      return a1 == v1;
    }

    if (a1 > 792229423)
    {
      if (a1 == 792229424 || a1 == 792872769)
      {
        return 2;
      }

      v3 = 795371056;
    }

    else
    {
      if (a1 == 762869296 || a1 == 762869298)
      {
        return 1;
      }

      v3 = 792225328;
    }

    goto LABEL_31;
  }

  v2 = 3;
  if (a1 <= 2084718400)
  {
    if (a1 <= 796423729)
    {
      if (a1 == 796419632 || a1 == 796419634)
      {
        return 2;
      }

      v3 = 796423728;
LABEL_31:
      if (a1 != v3)
      {
        return 0;
      }

      return 2;
    }

    if (a1 == 796423730)
    {
      return 2;
    }

    if (a1 == 2084070960)
    {
      return v2;
    }

    v5 = 2084075056;
LABEL_37:
    if (a1 == v5)
    {
      return v2;
    }

    return 0;
  }

  if (a1 > 2088265265)
  {
    if (a1 != 2088265266 && a1 != 2088269360)
    {
      v4 = 30258;
      goto LABEL_36;
    }
  }

  else if (a1 != 2084718401 && a1 != 2087216688)
  {
    v4 = 26160;
LABEL_36:
    v5 = v4 | 0x7C780000;
    goto LABEL_37;
  }

  return v2;
}

uint64_t flashlightServer_getAndRetainFlashlightObjectFromMessage(uint64_t a1, xpc_object_t xdict, CFTypeRef *a3)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    v5 = v3;
    flashlightServer_getAndRetainFlashlightObjectFromMessage_cold_1();
  }

  else
  {
    flashlightServer_getAndRetainFlashlightObjectFromMessage_cold_3();
    return 4294954513;
  }

  return v5;
}

uint64_t FigCapturePixelFormatTileAlignment(uint64_t a1)
{
  if (!FigCapturePixelFormatGetCompressionType(a1))
  {
    goto LABEL_24;
  }

  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (!DescriptionWithPixelFormatType)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v21, v22, obj, v25, v27, v29, v30);
    goto LABEL_24;
  }

  v2 = [DescriptionWithPixelFormatType objectForKeyedSubscript:*MEMORY[0x1E69662D8]];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obja = v2;
  v3 = [v2 countByEnumeratingWithState:&v31 objects:&v29 count:16];
  if (!v3)
  {
LABEL_24:
    v18 = 0;
    v6 = 0;
    return v18 | v6;
  }

  v4 = v3;
  LODWORD(v5) = 0;
  LODWORD(v6) = 0;
  v28 = *v32;
  v26 = *MEMORY[0x1E69662C8];
  v7 = *MEMORY[0x1E69662E0];
  v8 = *MEMORY[0x1E6966270];
  v9 = *MEMORY[0x1E6966268];
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v32 != v28)
      {
        objc_enumerationMutation(obja);
      }

      v11 = *(*(&v31 + 1) + 8 * i);
      v12 = [objc_msgSend(v11 objectForKeyedSubscript:{v26), "intValue"}];
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = [objc_msgSend(v11 objectForKeyedSubscript:{v7), "intValue"}];
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = [objc_msgSend(v11 objectForKeyedSubscript:{v8), "intValue"}] * v13;
      v17 = [objc_msgSend(v11 objectForKeyedSubscript:{v9), "intValue"}] * v15;
      if (v6 <= v16)
      {
        v6 = v16;
      }

      else
      {
        v6 = v6;
      }

      if (v5 <= v17)
      {
        v5 = v17;
      }

      else
      {
        v5 = v5;
      }
    }

    v4 = [obja countByEnumeratingWithState:&v31 objects:&v29 count:16];
  }

  while (v4);
  v18 = v5 << 32;
  return v18 | v6;
}

uint64_t csp_maxLossyCompressionLevelForConnectionConfigurations(void *a1, unsigned int *a2)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v4)
  {
    return 3;
  }

  v5 = v4;
  v6 = *v15;
  v7 = 3;
  do
  {
    v8 = 0;
    do
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(a1);
      }

      v9 = [objc_msgSend(*(*(&v14 + 1) + 8 * v8) "sinkConfiguration")];
      if (v9 > 5)
      {
        if (v9 == 6)
        {
          if (!a2)
          {
            goto LABEL_26;
          }

          v10 = a2[70];
          goto LABEL_22;
        }

        if (v9 != 10)
        {
          if (v9 != 12)
          {
            goto LABEL_24;
          }

LABEL_14:
          if (a2)
          {
            v10 = a2[69];
            goto LABEL_22;
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (v9 == 1)
        {
          goto LABEL_14;
        }

        if (v9 == 3)
        {
          if (!a2)
          {
            goto LABEL_26;
          }

          v10 = a2[72];
LABEL_22:
          if (v7 < v10)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if (v9 != 4)
        {
          goto LABEL_24;
        }
      }

      if (a2)
      {
        v10 = a2[71];
        goto LABEL_22;
      }

LABEL_26:
      if ((v7 & 0x80000000) == 0)
      {
        v10 = 0;
LABEL_23:
        v7 = v10;
      }

LABEL_24:
      ++v8;
    }

    while (v5 != v8);
    v11 = [a1 countByEnumeratingWithState:&v14 objects:v13 count:16];
    v5 = v11;
  }

  while (v11);
  return v7;
}

__n128 OUTLINED_FUNCTION_41_0()
{
  result = *&STACK[0x4A0];
  *&STACK[0x3C0] = *&STACK[0x4A0];
  STACK[0x3D0] = STACK[0x4B0];
  return result;
}

double OUTLINED_FUNCTION_41_3@<D0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  v6 = a1[1];
  *&STACK[0x390] = *a1;
  *&STACK[0x3A0] = v6;
  *&STACK[0x3B0] = a1[2];

  *&result = CGRectApplyAffineTransform(*&a2, &STACK[0x390]);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_7()
{

  return [v0 objectAtIndexedSubscript:1];
}

uint64_t OUTLINED_FUNCTION_41_9()
{

  return [v0 objectForKeyedSubscript:v1];
}

void *OUTLINED_FUNCTION_41_14(uint64_t a1)
{

  return BWPhotoEncoderEncodingOptionsForAuxiliaryImage(v1, v2, v3, v4, a1);
}

uint64_t FigCaptureCurrentProcessIsDeferredmediad()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = SecTaskCopySigningIdentifier(v0, 0);
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  CFRelease(v1);
  return isEqualToString;
}

uint64_t BWVNSetRequestConcurrentTasksProcessingTimeout(uint64_t a1)
{
  VNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc = getVNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc();
  if (!VNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc)
  {
    BWVNSetRequestConcurrentTasksProcessingTimeout_cold_1();
  }

  return VNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc(a1);
}

uint64_t getVNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc_ptr;
  v6 = getVNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc_ptr;
  if (!getVNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v4[3] = dlsym(v1, "VNSetRequestConcurrentTasksProcessingTimeout");
    getVNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC95F45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *BWIsSmartStyleAllowedForAdjustedImage(void *a1)
{
  v2 = [objc_msgSend(a1 "requestedSettings")];
  if ([objc_msgSend(a1 "requestedSettings")])
  {
    return 0;
  }

  result = [objc_msgSend(a1 "requestedSettings")];
  if (result)
  {
    result = BWCIFilterArrayContainsPortraitFilters(v2);
    if (result)
    {
      return (BWCIFilterArrayContainsPortraitEffectStageFilters(v2, 0) ^ 1);
    }
  }

  return result;
}

BOOL FigCapturePlatformMountsCamerasInLandscapeOrientation(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1)
  {
    if (!a2)
    {
      v2 = FigCaptureFrontCameraRotationAngle(a1, a2);
      if (v2 == 90 || FigCaptureFrontCameraRotationAngle(v2, v3) == 270)
      {
        return 0;
      }
    }
  }

  return result;
}

FigCapturePhotonicEngineSinkPipeline *captureSession_createStillImageSinkPipeline(uint64_t a1, void *a2, id *a3, void *a4, void *a5, uint64_t a6, void *a7, unsigned int a8, char a9, int *a10)
{
  v17 = a10;
  v336 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = [a7 sourceConfiguration];
  v299 = a2;
  v20 = [a2 movieFileVideoConnectionConfiguration];
  v332 = [v19 requiredFormat];
  v302 = [(FigCaptureCameraSourcePipeline *)a3 captureDevice];
  v303 = a1;
  v21 = captureSession_inferenceScheduler(a1);
  v304 = a7;
  if (![objc_msgSend(a7 "sourceConfiguration")])
  {
    goto LABEL_4;
  }

  if ([-[FigCaptureVideoDataSinkPipeline filterNode](a6) stillImageOutputsByPortType])
  {
    v23 = MEMORY[0x1E695DF20];
    v24 = [-[FigCaptureVideoDataSinkPipeline filterNode](a6) stillImageOutputsByPortType];
    v25 = v23;
LABEL_7:
    v22 = [v25 dictionaryWithDictionary:v24];
    goto LABEL_8;
  }

  if ([objc_msgSend(a5 "filterNode")])
  {
    v26 = MEMORY[0x1E695DF20];
    v24 = [objc_msgSend(a5 "filterNode")];
    v25 = v26;
    goto LABEL_7;
  }

LABEL_4:
  v22 = [(FigCaptureCameraSourcePipeline *)a3 stillImageOutputsByPortType];
LABEL_8:
  v335 = v22;
  IntAttribute = FigCaptureSourceGetIntAttribute([v19 source], 0x1F21A0530, &v336);
  if (v336)
  {
    captureSession_createStillImageSinkPipeline_cold_1();
LABEL_364:
    result = 0;
    if (v17)
    {
      goto LABEL_17;
    }

    return result;
  }

  v301 = v19;
  v28 = [(FigCaptureCameraSourcePipeline *)a3 stillImageOutputColorInfo];
  IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(v303);
  v334 = a3;
  if ((IntAttribute - 3) > 1)
  {
    if (IntAttribute != 5)
    {
      v30 = objc_alloc_init(FigCaptureStillImageSinkPipelineConfiguration);
      cs_updateStillImageSinkPipelineCommonConfiguration(v30, a3, a7, v20, v332, IsCameraOrDerivative);
      [(FigCaptureStillImageSinkPipelineConfiguration *)v30 setClientPID:?];
      -[FigCaptureStillImageSinkPipelineConfiguration setStillImageISPChromaNoiseReductionEnabled:](v30, [v332 ispChromaNoiseReductionEnabled]);
      -[FigCaptureStillImageSinkPipelineConfiguration setStereoFusionSupported:](v30, [v332 isStereoFusionSupported]);
      -[FigCaptureStillImageSinkPipelineConfiguration setIsIrisSupported:](v30, [v332 isIrisSupported]);
      -[FigCaptureStillImageSinkPipelineConfiguration setHdrSupported:](v30, [v332 isHDRSupported]);
      -[FigCaptureStillImageSinkPipelineConfiguration setGnrHDRSupported:](v30, [v332 isGNRHDRSupported]);
      if ([(FigCaptureCameraSourcePipeline *)a3 stillImageOutputDerivesFromVideoCaptureOutput])
      {
        [(FigCaptureStillImageSinkPipelineConfiguration *)v30 setStillImageColorInfoForFramesOriginatingFromVideoStream:v28];
      }

      v31 = [*(DerivedStorage + 776) objectForKeyedSubscript:{objc_msgSend(a3, "sourceID")}];
      if (v31)
      {
        v32 = *(v31 + 24);
      }

      else
      {
        v32 = 0;
      }

      result = -[FigCaptureStillImageSinkPipeline initWithConfiguration:captureDevice:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:name:]([FigCaptureStillImageSinkPipeline alloc], "initWithConfiguration:captureDevice:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:name:", v30, v302, v335, *(DerivedStorage + 832), v21, *(DerivedStorage + 752), [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v32, +[FigCaptureStillImageSinkPipeline pipelineBaseName](FigCaptureStillImageSinkPipeline, "pipelineBaseName")]);
      if (!result)
      {
        goto LABEL_440;
      }

      goto LABEL_16;
    }

    v36 = objc_alloc_init(FigCapturePhotonicEngineSinkPipelineConfiguration);
    v413[0] = 0;
    v330 = v36;
    cs_updateStillImageSinkPipelineCommonConfiguration(v36, a3, a7, v20, v332, IsCameraOrDerivative);
    v37 = [a7 sourceConfiguration];
    if ([objc_msgSend(v304 "sinkConfiguration")] == 10)
    {
      v323 = [v304 sinkConfiguration];
    }

    else
    {
      v323 = 0;
    }

    v286 = [v37 depthDataFormat];
    v297 = [(FigCaptureCameraSourcePipeline *)a3 captureDevice];
    v67 = [(FigCaptureCameraSourcePipeline *)a3 stillImageSensorRawOutputsByPortType];
    if (FigCaptureSoftISPEnabled(v37, [v304 sinkConfiguration]))
    {
      v68 = [(FigCaptureCameraSourcePipeline *)a3 stillImageOutputDerivesFromVideoCaptureOutput]^ 1;
    }

    else
    {
      v68 = 0;
    }

    v296 = a4;
    v69 = [v323 maxQualityPrioritization];
    v70 = [objc_msgSend(v37 "requiredFormat")];
    v289 = v69;
    if (v69 > 1)
    {
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    v287 = v71;
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setRawSensorDimensions:](v330, "setRawSensorDimensions:", [v332 sensorDimensions]);
    v318 = v68;
    v294 = a10;
    if (v68)
    {
      v72 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 rawSensorDimensions];
      if (v72 < 1 || v72 <= 0)
      {
        captureSession_createStillImageSinkPipeline_cold_9();
        goto LABEL_361;
      }
    }

    [v332 sensorCenterOffset];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSensorCenterOffset:?];
    v73 = [v335 allKeys];
    v316 = [v67 allKeys];
    v328 = [MEMORY[0x1E695DF90] dictionary];
    v325 = [MEMORY[0x1E695DF90] dictionary];
    if (FigCaptureSushiRawDNGDictionaryCreatedInGraph())
    {
      v74 = [v332 sushiRawSupported];
    }

    else
    {
      v74 = 0;
    }

    v75 = v332;
    v288 = [v323 demosaicedRawEnabled];
    v322 = v288 | v74;
    if ((v288 | v74))
    {
      v307 = [MEMORY[0x1E695DF90] dictionary];
    }

    else
    {
      v307 = 0;
    }

    v298 = v37;
    v291 = v21;
    v293 = DerivedStorage;
    v312 = v74;
    if (v74)
    {
      v309 = [MEMORY[0x1E695DF90] dictionary];
    }

    else
    {
      v309 = 0;
    }

    v314 = [MEMORY[0x1E695DF70] array];
    v409 = 0u;
    v410 = 0u;
    v411 = 0u;
    v412 = 0u;
    obja = [v297 captureStreams];
    v76 = [obja countByEnumeratingWithState:&v409 objects:v408 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v410;
      do
      {
        v79 = 0;
        do
        {
          if (*v410 != v78)
          {
            objc_enumerationMutation(obja);
          }

          v80 = *(*(&v409 + 1) + 8 * v79);
          v81 = [v80 portType];
          if (([v73 containsObject:v81] & 1) != 0 || objc_msgSend(v316, "containsObject:", v81))
          {
            [v328 setObject:objc_msgSend(v80 forKeyedSubscript:{"sensorIDString"), v81}];
            v82 = MEMORY[0x1E696AD98];
            [v80 baseZoomFactor];
            [v325 setObject:objc_msgSend(v82 forKeyedSubscript:{"numberWithFloat:"), v81}];
            v83 = [(FigCaptureCameraSourcePipeline *)a3 captureSource];
            v84 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(v83, v81, v413);
            if (v413[0])
            {
              captureSession_createStillImageSinkPipeline_cold_2();
            }

            else
            {
              v85 = v84;
              if (!v84)
              {
                v85 = [(FigCaptureCameraSourcePipeline *)a3 captureSource];
              }

              v86 = [(FigCaptureCameraSourcePipeline *)a3 captureSource];
              v37 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v86, v75, v81, v413);
              if (v413[0])
              {
                captureSession_createStillImageSinkPipeline_cold_3();
              }

              else
              {
                if (v37)
                {
                  v87 = v37;
                }

                else
                {
                  v87 = v75;
                }

                if (v322)
                {
                  Attribute = FigCaptureSourceGetAttribute(v85, @"WhiteBalanceCalibrations", v413);
                  if (!v413[0])
                  {
                    [v307 setObject:BWDNGColorCalibrations(Attribute forKeyedSubscript:{0), v81}];
                  }

                  if (v312)
                  {
                    [v309 setObject:objc_msgSend(v87 forKeyedSubscript:{"rawLensShadingCorrection"), v81}];
                  }
                }

                if (+[FigCaptureSourceFormatDimensions identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:](FigCaptureSourceFormatDimensions, "identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:", [v323 maxPhotoDimensions], objc_msgSend(v87, "highResStillImageDimensions"), -[FigCapturePhotonicEngineSinkPipelineConfiguration aspectRatio](v330, "aspectRatio")) == 2)
                {
                  [v314 addObject:v81];
                }

                v75 = v332;
                a3 = v334;
              }
            }

            if (v84)
            {
              CFRelease(v84);
            }

            if (v37)
            {
              CFRelease(v37);
            }
          }

          ++v79;
        }

        while (v77 != v79);
        v89 = [obja countByEnumeratingWithState:&v409 objects:v408 count:16];
        v77 = v89;
      }

      while (v89);
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setStillImageSinkPipelineProcessingMode:0];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setPipelineProcessingContext:0x1F2177850];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setPipelineStagePriority:14];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setInferencePriority:14];
    v90 = [(FigCaptureCameraSourcePipeline *)a3 captureSource];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setDeviceType:FigCaptureSourceGetIntAttribute(v90, @"DeviceType", 0)];
    v91 = [(FigCaptureCameraSourcePipeline *)a3 captureSource];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setDevicePosition:FigCaptureSourceGetIntAttribute(v91, @"Position", 0)];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeviceHasFlash:](v330, "setDeviceHasFlash:", [v297 hasFlash]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setAspectRatio:](v330, "setAspectRatio:", [v297 aspectRatio]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSensorIDStringsByPortType:v328];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setBaseZoomFactorsByPortType:v325];
    if (v318)
    {
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSfhrMode:FigCaptureSFHRMode(v298)];
      v92 = v296;
      v93 = v323;
      v94 = a8;
      if ([v75 swfrSupported])
      {
        v95 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
      }

      else
      {
        v95 = 0;
      }
    }

    else
    {
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSfhrMode:0];
      v95 = 0;
      v92 = v296;
      v93 = v323;
      v94 = a8;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSwfrVersion:v95];
    if ([v93 constantColorEnabled])
    {
      v110 = [v75 constantColorVersion];
    }

    else
    {
      v110 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setConstantColorVersion:v110];
    if ([v93 constantColorEnabled])
    {
      v111 = 0x18000000200;
    }

    else
    {
      v111 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setConstantColorConfidenceMapDimensions:v111];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setConstantColorClippingRecoveryEnabled:](v330, "setConstantColorClippingRecoveryEnabled:", [v93 constantColorClippingRecoveryEnabled]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setConstantColorSaturationBoostEnabled:](v330, "setConstantColorSaturationBoostEnabled:", [v93 constantColorSaturationBoostEnabled]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setRedEyeReductionVersion:](v330, "setRedEyeReductionVersion:", [v75 redEyeReductionVersion]);
    if ([v75 semanticRenderingSupported])
    {
      v112 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
    }

    else
    {
      v112 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSemanticRenderingVersion:v112];
    if ([v93 depthDataDeliveryEnabled])
    {
      v113 = 0;
    }

    else
    {
      v113 = [v75 semanticDevelopmentVersion];
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSemanticDevelopmentVersion:v113];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSemanticStyleRenderingEnabled:](v330, "setSemanticStyleRenderingEnabled:", [v93 semanticStyleRenderingEnabled]);
    v114 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
    if ((v94 & 1) != 0 || [v93 applyStandardSmartStyleForStillsWhenNoStyleRequested])
    {
      v115 = v114;
    }

    else
    {
      v115 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSmartStyleRenderingVersion:v115];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSmartStyleRenderingEnabled:v94];
    if (v114 > 0)
    {
      v116 = v94;
    }

    else
    {
      v116 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSmartStyleReversibilityEnabled:v116];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setGenerateInferencesForSemanticProcessingIfNeeded:1];
    if ([v75 isDeepZoomSupported])
    {
      v117 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters deepZoomVersion];
    }

    else
    {
      v117 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setDeepZoomVersion:v117];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setDeepZoomMode:0];
    v118 = [MEMORY[0x1E695DF70] array];
    v119 = [(FigCaptureCameraSourcePipeline *)a3 portTypesWithGeometricDistortionCorrectionOnPreviewOutputsEnabled];
    v120 = [(FigCaptureCameraSourcePipeline *)a3 portTypesWithGeometricDistortionCorrectionOnStillImageOutputEnabled];
    if (([(FigCaptureCameraSourcePipeline *)a3 stillImageOutputDerivesFromVideoCaptureOutput]& 1) == 0)
    {
      v407 = 0u;
      v406 = 0u;
      v405 = 0u;
      v404 = 0u;
      v121 = [v119 countByEnumeratingWithState:&v404 objects:v403 count:16];
      if (v121)
      {
        v122 = v121;
        v123 = *v405;
        do
        {
          for (i = 0; i != v122; ++i)
          {
            if (*v405 != v123)
            {
              objc_enumerationMutation(v119);
            }

            v125 = *(*(&v404 + 1) + 8 * i);
            if (v318 & 1 | (([v120 containsObject:v125] & 1) == 0))
            {
              [v118 addObject:v125];
            }
          }

          v122 = [v119 countByEnumeratingWithState:&v404 objects:v403 count:16];
        }

        while (v122);
      }
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setPortTypesWithGeometricDistortionCorrectionEnabled:v118];
    v126 = v332;
    v127 = [v332 stillImageGDCSourceMode];
    if (([v332 intelligentDistortionCorrectionSupported] & 1) != 0 || objc_msgSend(v118, "count"))
    {
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setDcProcessorVersion:](v330, "setDcProcessorVersion:", [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters distortionCorrectionVersion]);
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setDcProcessingWithDepthSupported:](v330, "setDcProcessingWithDepthSupported:", [objc_msgSend(FigCaptureSourceGetAttribute(objc_msgSend(v298 "source")]);
      if (v127 == 2)
      {
        v128 = [v323 depthDataDeliveryEnabled] ^ 1;
      }

      else if (v127 == 1)
      {
        v128 = 1;
      }

      else
      {
        v128 = (v127 == 3) & v318;
      }

      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setGdcInDCProcessorSupported:v128];
      if ([v323 intelligentDistortionCorrectionEnabled])
      {
        v134 = [MEMORY[0x1E695DF70] array];
        v399 = 0u;
        v400 = 0u;
        v401 = 0u;
        v402 = 0u;
        v135 = [v297 captureStreams];
        v136 = [v135 countByEnumeratingWithState:&v399 objects:v398 count:16];
        if (v136)
        {
          v138 = v136;
          v139 = *v400;
          while (2)
          {
            for (j = 0; j != v138; ++j)
            {
              if (*v400 != v139)
              {
                objc_enumerationMutation(v135);
              }

              v141 = [*(*(&v399 + 1) + 8 * j) portType];
              v142 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
              v143 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v142, v332, v141, v413);
              if (v413[0])
              {
                captureSession_createStillImageSinkPipeline_cold_4();
                v161 = v293;
                v201 = v334;
                goto LABEL_359;
              }

              if (!v143)
              {
                captureSession_createStillImageSinkPipeline_cold_5();
                goto LABEL_361;
              }

              if ([v143 intelligentDistortionCorrectionSupported])
              {
                [v134 addObject:v141];
              }
            }

            v138 = [v135 countByEnumeratingWithState:&v399 objects:v398 count:16];
            if (v138)
            {
              continue;
            }

            break;
          }
        }

        if ([v134 count])
        {
          v137 = [v134 copy];
        }

        else
        {
          v137 = 0;
        }

        v126 = v332;
        a3 = v334;
        [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setPortTypesWithIntelligentDistortionCorrectionEnabled:v137];
      }

      if ([v118 count] && !-[FigCapturePhotonicEngineSinkPipelineConfiguration gdcInDCProcessorSupported](v330, "gdcInDCProcessorSupported"))
      {
        v413[0] = -12780;
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        v397 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v264 = v397;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v265 = v264;
        }

        else
        {
          v265 = v264 & 0xFFFFFFFE;
        }

        if (v265)
        {
          v270 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 gdcInDCProcessorSupported];
          v271 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 dcProcessorVersion];
          v383 = 136315906;
          v384 = "cs_stillImagePhotonicEngineSinkPipelineConfiguration";
          v385 = 1024;
          v386 = v270;
          v387 = 1024;
          v388 = v271;
          v389 = 2112;
          v390 = v118;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v272 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 gdcInDCProcessorSupported];
        v273 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 dcProcessorVersion];
        LODWORD(v391) = 67109634;
        HIDWORD(v391) = v272;
        v392 = 1024;
        v393 = v273;
        v394 = 2112;
        v395 = v118;
        v274 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v274, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 9572, @"LastShownDate:FigCaptureSession.m:9572", @"LastShownBuild:FigCaptureSession.m:9572", 0);
        free(v274);
        v161 = v293;
        v201 = v334;
        v92 = v296;
LABEL_359:
        v162 = v301;
        goto LABEL_424;
      }
    }

    v151 = [(FigCaptureCameraSourcePipeline *)a3 captureSource];
    v152 = v330;
    if (FigCaptureSourceGetBoolAttribute(v151, @"GeometricDistortionCorrectionExpandsImageDimensions", 0) && [v126 gdcInStillImageSinkPipelineSupported] && (-[FigCaptureCameraSourcePipeline stillImageOutputDerivesFromVideoCaptureOutput](a3) & 1) == 0 && (objc_msgSend(v298, "cinematicFramingEnabled") & 1) == 0 && (objc_msgSend(v298, "manualCinematicFramingEnabled") & 1) == 0)
    {
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setGdcInDCProcessorOutputCropDimensions:](v330, "setGdcInDCProcessorOutputCropDimensions:", [v126 stillImageGDCInDCProcessorOutputCropDimensions]);
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setOutputStillImageDimensions:](v330, "setOutputStillImageDimensions:", [v126 soleHighResStillImageDimensions]);
    }

    if (cs_shouldEnableGreenGhostMitigation(v298))
    {
      v153 = [v126 greenGhostMitigationVersion];
    }

    else
    {
      v153 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setGreenGhostMitigationVersion:v153];
    if (v288)
    {
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setDemosaicedRawPixelFormat:](v330, "setDemosaicedRawPixelFormat:", [v126 internalDemosaicedRawPixelFormat]);
    }

    else if (!v312)
    {
      goto LABEL_226;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setRawColorCalibrationsByPortType:v307];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setRawLensShadingCorrectionCoefficientsByPortType:v309];
LABEL_226:
    v154 = [MEMORY[0x1E695DF90] dictionary];
    if (v323)
    {
      v172 = [v332 isDeepFusionSupported];
      if (v289 > 2)
      {
        v173 = v172;
      }

      else
      {
        v173 = 0;
      }

      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setDeepFusionSupported:v173];
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setDepthWithDeepFusionSupported:](v330, "setDepthWithDeepFusionSupported:", [objc_msgSend(FigCaptureSourceGetAttribute(objc_msgSend(v298 "source")]);
      v174 = +[FigCaptureSourceFormatDimensions identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:](FigCaptureSourceFormatDimensions, "identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:", [v323 maxPhotoDimensions], objc_msgSend(v332, "highResStillImageDimensions"), -[FigCapturePhotonicEngineSinkPipelineConfiguration aspectRatio](v330, "aspectRatio"));
      v175 = [(FigCaptureCameraSourcePipeline *)a3 ultraHighResolutionSensorRawDimensionsByPortType];
      if ([v323 deferredProcessingEnabled])
      {
        if (v174 == 2)
        {
          v382 = 0u;
          v381 = 0u;
          v380 = 0u;
          v379 = 0u;
          v176 = [v314 countByEnumeratingWithState:&v379 objects:&v375 count:16];
          if (v176)
          {
            v177 = v176;
            v178 = *v380;
            do
            {
              for (k = 0; k != v177; ++k)
              {
                if (*v380 != v178)
                {
                  objc_enumerationMutation(v314);
                }

                v180 = *(*(&v379 + 1) + 8 * k);
                if (![v154 objectForKeyedSubscript:v180])
                {
                  [v154 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v180}];
                }

                [objc_msgSend(v154 objectForKeyedSubscript:{v180), "setObject:forKeyedSubscript:", objc_msgSend(v175, "objectForKeyedSubscript:", v180), &unk_1F2244D70}];
              }

              v177 = [v314 countByEnumeratingWithState:&v379 objects:&v375 count:16];
            }

            while (v177);
          }

          v152 = v330;
          [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setUltraHighResolutionProcessingEnabled:0];
          a3 = v334;
        }

        if (v174 >= 1)
        {
          if ([(FigCapturePhotonicEngineSinkPipelineConfiguration *)v152 deepFusionSupported])
          {
            v374 = 0u;
            v373 = 0u;
            v372 = 0u;
            v371 = 0u;
            v181 = [v332 highResStillImageDimensions];
            v182 = [v181 countByEnumeratingWithState:&v371 objects:&v367 count:16];
            if (v182)
            {
              v183 = v182;
              v184 = *v372;
              do
              {
                for (m = 0; m != v183; ++m)
                {
                  if (*v372 != v184)
                  {
                    objc_enumerationMutation(v181);
                  }

                  v186 = *(*(&v371 + 1) + 8 * m);
                  if ([v186 flavor] == 1)
                  {
                    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeepFusionEnhancedResolutionDimensions:](v152, "setDeepFusionEnhancedResolutionDimensions:", [v186 dimensions]);
                  }
                }

                v183 = [v181 countByEnumeratingWithState:&v371 objects:&v367 count:16];
              }

              while (v183);
            }
          }
        }
      }

      else if (v174 == 2)
      {
        v366 = 0u;
        v365 = 0u;
        v364 = 0u;
        v363 = 0u;
        v195 = [v314 countByEnumeratingWithState:&v363 objects:&v359 count:16];
        if (v195)
        {
          v196 = v195;
          v197 = *v364;
          do
          {
            for (n = 0; n != v196; ++n)
            {
              if (*v364 != v197)
              {
                objc_enumerationMutation(v314);
              }

              v199 = *(*(&v363 + 1) + 8 * n);
              if (![v154 objectForKeyedSubscript:v199])
              {
                [v154 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v199}];
              }

              [objc_msgSend(v154 objectForKeyedSubscript:{v199), "setObject:forKeyedSubscript:", objc_msgSend(v175, "objectForKeyedSubscript:", v199), &unk_1F2244D70}];
            }

            v196 = [v314 countByEnumeratingWithState:&v363 objects:&v359 count:16];
          }

          while (v196);
        }

        -[FigCapturePhotonicEngineSinkPipelineConfiguration setUltraHighResolutionProcessingEnabled:](v330, "setUltraHighResolutionProcessingEnabled:", [v332 isLearnedNRSupported]);
      }
    }

    v155 = [(FigCaptureCameraSourcePipeline *)a3 zoomBasedQSubSensorRawDimensionsByPortType];
    v355 = 0u;
    v356 = 0u;
    v357 = 0u;
    v358 = 0u;
    v156 = [v155 countByEnumeratingWithState:&v355 objects:&v347 count:16];
    if (v156)
    {
      v157 = v156;
      v158 = *v356;
      do
      {
        for (ii = 0; ii != v157; ++ii)
        {
          if (*v356 != v158)
          {
            objc_enumerationMutation(v155);
          }

          v160 = *(*(&v355 + 1) + 8 * ii);
          objc_msgSend_isEqualToString_(v160);
          if (![v154 objectForKeyedSubscript:v160])
          {
            [v154 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v160}];
          }

          [objc_msgSend(v154 objectForKeyedSubscript:{v160), "setObject:forKeyedSubscript:", objc_msgSend(v155, "objectForKeyedSubscript:", v160), &unk_1F2244DD0}];
        }

        v157 = [v155 countByEnumeratingWithState:&v355 objects:&v347 count:16];
      }

      while (v157);
    }

    v161 = v293;
    v162 = v301;
    v163 = v298;
    v164 = v323;
    if (v318 && (([v332 isDynamicAspectRatioSupported] & 1) != 0 || objc_msgSend(v332, "isStillImageOutputDownscaledInHWISP")))
    {
      v165 = [MEMORY[0x1E695DF90] dictionary];
      v166 = FigCaptureAspectRatioForDimensions([v332 dimensions]);
      if (([v332 isDynamicAspectRatioSupported] & 1) != 0 || v166 > 1.0)
      {
        [v165 setObject:FigCaptureDictionaryRepresentationForDimensions(0xE5800001320uLL) forKeyedSubscript:&unk_1F2244D88];
      }

      if (([v332 isDynamicAspectRatioSupported] & 1) != 0 || v166 < 1.0)
      {
        [v165 setObject:FigCaptureDictionaryRepresentationForDimensions(0x132000000E58uLL) forKeyedSubscript:&unk_1F2244DB8];
      }

      if ([v332 isDynamicAspectRatioSupported] && (objc_msgSend(v332, "isDeepFusionSupported") & 1) == 0)
      {
        [v165 setObject:FigCaptureDictionaryRepresentationForDimensions(0x100000001000uLL) forKeyedSubscript:&unk_1F2244DE8];
      }

      [v154 setObject:v165 forKeyedSubscript:{objc_msgSend(objc_msgSend(v328, "allKeys"), "firstObject")}];
    }

    if ([v323 digitalFlashCaptureEnabled])
    {
      v167 = [MEMORY[0x1E695DF70] array];
      v168 = [MEMORY[0x1E695DF70] array];
      v343 = 0u;
      v344 = 0u;
      v345 = 0u;
      v346 = 0u;
      v169 = [v297 captureStreams];
      v170 = [v169 countByEnumeratingWithState:&v343 objects:v342 count:16];
      if (v170)
      {
        v187 = v170;
        v188 = *v344;
LABEL_281:
        v189 = 0;
        while (1)
        {
          if (*v344 != v188)
          {
            objc_enumerationMutation(v169);
          }

          v190 = [*(*(&v343 + 1) + 8 * v189) portType];
          v191 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
          v193 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v191, v332, v190, v413);
          v194 = v413[0];
          if (v413[0])
          {
            goto LABEL_362;
          }

          if ([v193 isDigitalFlashRawNightModeSupported])
          {
            [v167 addObject:v190];
          }

          if ([v193 isDigitalFlashZeroShutterLagSupported])
          {
            [v168 addObject:v190];
          }

          if (v187 == ++v189)
          {
            v187 = [v169 countByEnumeratingWithState:&v343 objects:v342 count:16];
            if (v187)
            {
              goto LABEL_281;
            }

            break;
          }
        }
      }

      if ([v167 count])
      {
        v171 = [v167 copy];
      }

      else
      {
        v171 = 0;
      }

      v162 = v301;
      v163 = v298;
      v164 = v323;
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setPortTypesWithRawNightModeEnabled:v171];
      v161 = v293;
      if ([v168 count])
      {
        v200 = [v168 copy];
      }

      else
      {
        v200 = 0;
      }

      v92 = v296;
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setPortTypesWithDigitalFlashZeroShutterLagEnabled:v200];
    }

    v201 = v334;
    if (v289 >= 3)
    {
      v202 = v161;
      v203 = [MEMORY[0x1E695DF70] array];
      v338 = 0u;
      v339 = 0u;
      v340 = 0u;
      v341 = 0u;
      v204 = [v297 captureStreams];
      v205 = [v204 countByEnumeratingWithState:&v338 objects:v337 count:16];
      if (v205)
      {
        v207 = v205;
        v208 = *v339;
LABEL_313:
        v209 = 0;
        while (1)
        {
          if (*v339 != v208)
          {
            objc_enumerationMutation(v204);
          }

          v210 = [*(*(&v338 + 1) + 8 * v209) portType];
          v211 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
          v212 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v211, v332, v210, v413);
          v194 = v413[0];
          if (v413[0])
          {
            goto LABEL_362;
          }

          if ([v212 isLearnedFusionSupported])
          {
            [v203 addObject:v210];
          }

          if (v207 == ++v209)
          {
            v207 = [v204 countByEnumeratingWithState:&v338 objects:v337 count:16];
            if (v207)
            {
              goto LABEL_313;
            }

            break;
          }
        }
      }

      if ([v203 count])
      {
        v206 = [v203 copy];
      }

      else
      {
        v206 = 0;
      }

      v161 = v202;
      v162 = v301;
      v163 = v298;
      v164 = v323;
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setPortTypesWithLearnedFusionEnabled:v206];
      v92 = v296;
    }

    if ([v154 count])
    {
      v213 = v154;
    }

    else
    {
      v213 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setDimensionsByResolutionFlavorByPortType:v213];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setLearnedNRSupported:](v330, "setLearnedNRSupported:", [v332 isLearnedNRSupported]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setLearnedHRNRSupported:](v330, "setLearnedHRNRSupported:", [v332 isLearnedHRNRSupported]);
    if ([v332 isDeferredPhotoProcessingSupported])
    {
      v214 = [v164 deferredProcessingEnabled];
    }

    else
    {
      v214 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setDeferredProcessingSupported:v214];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setResponsiveShutterSupported:](v330, "setResponsiveShutterSupported:", [v332 isResponsiveShutterSupported]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setResponsiveShutterEnabled:](v330, "setResponsiveShutterEnabled:", [v164 responsiveCaptureEnabled]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setFastCapturePrioritizationEnabled:](v330, "setFastCapturePrioritizationEnabled:", [v164 fastCapturePrioritizationEnabled]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setCaptureTimePhotosCurationSupported:](v330, "setCaptureTimePhotosCurationSupported:", [v332 isCaptureTimePhotoCurationSupported]);
    if ([v164 bravoConstituentPhotoDeliveryEnabled] && (FigCaptureSourceGetBoolAttribute(objc_msgSend(v163, "source"), @"ConstituentPhotoCalibrationData", 0) & 1) == 0)
    {
      captureSession_createStillImageSinkPipeline_cold_6();
    }

    if ([v332 isSIFRSupported])
    {
      if ([v332 isStillImageStabilizationSupported])
      {
        v215 = 1;
      }

      else
      {
        v215 = [v332 isHighPhotoQualitySupported];
      }
    }

    else
    {
      v215 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSifrStillImageCaptureEnabledIfAvailable:v215];
    if (![v164 depthDataDeliveryEnabled] || (captureSession_createStillImageSinkPipeline_cold_7(v163, v330, v413, v332) & 1) != 0)
    {
      if (([v332 isGainMapSupported] & 1) != 0 || objc_msgSend(v286, "gainMapSupported") && objc_msgSend(v164, "depthDataDeliveryEnabled"))
      {
        LODWORD(v216) = 0x40000000;
        [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setGainMapMainImageDownscalingFactor:v216];
      }

      LODWORD(v216) = 2.0;
      v217 = v330;
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setUbInferenceMainImageDownscalingFactor:v216];
      [v332 defaultPortraitLightingEffectStrength];
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setAdjustablePortraitLightingEffectStrengthSupported:1];
      v218 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSupportedSemanticSegmentationMatteURNs:FigCaptureSourceGetAttribute(v218, @"SupportedSemanticSegmentationMatteURNs", 0)];
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setEnabledSemanticSegmentationMatteURNs:](v330, "setEnabledSemanticSegmentationMatteURNs:", [v164 enabledSemanticSegmentationMatteURNs]);
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSoftISPSupported:v318];
      if (!v318)
      {
LABEL_347:
        -[FigCapturePhotonicEngineSinkPipelineConfiguration setStillImageGDCSourceMode:](v217, "setStillImageGDCSourceMode:", [objc_msgSend(v163 "requiredFormat")]);
        if ([(FigCapturePhotonicEngineSinkPipelineConfiguration *)v217 depthDataType]!= 8 || [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v217 softISPSupported])
        {
          -[FigCapturePhotonicEngineSinkPipelineConfiguration setCameraInfoByPortType:](v217, "setCameraInfoByPortType:", [v297 cameraInfoByPortTypeIncludingLSCGains:objc_msgSend(v332 includeCameraInfoForSensorRawProcessing:{"sushiRawSupported"), -[FigCapturePhotonicEngineSinkPipelineConfiguration softISPSupported](v217, "softISPSupported")}]);
          -[FigCapturePhotonicEngineSinkPipelineConfiguration setModuleCalibrationByPortType:](v217, "setModuleCalibrationByPortType:", [v297 moduleCalibrationByPortType]);
          [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v217 setMaxLossyCompressionLevel:+[FigCaptureCameraParameters stillImageMaxLossyCompressionLevel]];
          [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v217 setHighQualityPhotoCaptureForVideoFormatEnabled:v287 & v318];
          cs_setCinematicFramingWarpingForStillImageSinkPipelineConfigurationIfNeeded(v217, v163, v334);
          if ([v163 cinematicFramingEnabled])
          {
            v220 = [objc_msgSend(v163 "requiredFormat")];
          }

          else
          {
            v220 = 0;
          }

          [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSmartCropWarpingRequired:v220];
          if ([(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 smartCropWarpingRequired])
          {
            -[FigCapturePhotonicEngineSinkPipelineConfiguration setSmartCropWarpingOutputDimensions:](v330, "setSmartCropWarpingOutputDimensions:", [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v334) smartCropOutputDimensions]);
          }

          v221 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
          -[FigCapturePhotonicEngineSinkPipelineConfiguration setCameraSensorOrientationCompensationDegreesCW:](v330, "setCameraSensorOrientationCompensationDegreesCW:", cs_cameraSensorOrientationCompensationDegreesCW(v221, [v304 sinkConfiguration]));
          -[FigCapturePhotonicEngineSinkPipelineConfiguration setInputIsHLG:](v330, "setInputIsHLG:", BWColorSpaceIsHDR([v163 colorSpace]));
          if ([(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 inputIsHLG])
          {
            [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 gainMapMainImageDownscalingFactor];
            if (v222 != 0.0)
            {
              if ([(FigCaptureBaseStillImageSinkPipelineConfiguration *)v330 inputIs10Bit])
              {
                IsTenBit = 1;
              }

              else
              {
                IsTenBit = FigCapturePixelFormatIsTenBit([v332 format]);
              }

              [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v330 setInputIs10Bit:IsTenBit];
            }
          }

          goto LABEL_424;
        }

        goto LABEL_361;
      }

      v219 = [v297 sensorRawPixelFormat];
      if (v219)
      {
        v217 = v330;
        [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSensorRawPixelFormat:v219];
        -[FigCapturePhotonicEngineSinkPipelineConfiguration setQuadraProcessingSupportEnabled:](v330, "setQuadraProcessingSupportEnabled:", FigCaptureSourceGetBoolAttribute([v163 source], 0x1F21A04F0, 0));
        goto LABEL_347;
      }

      captureSession_createStillImageSinkPipeline_cold_8();
LABEL_361:
      v194 = 4294954516;
LABEL_362:
      v336 = v194;
LABEL_363:
      v17 = a10;
      captureSession_createStillImageSinkPipeline_cold_10(v194, v192);
      goto LABEL_364;
    }

LABEL_424:
    v194 = v413[0];
    v336 = v413[0];
    if (!v413[0])
    {
      v403[0] = 0;
      v398[0] = 0;
      v391 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 cameraInfoByPortType];
      *&v375 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 sensorIDStringsByPortType];
      if (cs_configurePointCloudSourceForStillImageSinkPipeline(v92, [v162 sourceDeviceType], &v335, &v391, &v375, v403, v398))
      {
        [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setCameraInfoByPortType:v391];
        [(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 setSensorIDStringsByPortType:v375];
      }

      v245 = [*(v161 + 776) objectForKeyedSubscript:{objc_msgSend(v201, "sourceID")}];
      if (v245)
      {
        v246 = *(v245 + 24);
      }

      else
      {
        v246 = 0;
      }

      v247 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v246, +[FigCapturePhotonicEngineSinkPipeline pipelineBaseName](FigCapturePhotonicEngineSinkPipeline, "pipelineBaseName")];
      v248 = [v299 primaryStillImageConnectionConfiguration];
      v249 = 0;
      v333 = v247;
      v329 = v248;
      if (a9 && v248 == v304)
      {
        v250 = [objc_msgSend(v304 "sinkConfiguration")];
        v251 = [FigWeakReference weakReferenceToObject:v303];
        v408[0] = MEMORY[0x1E69E9820];
        v408[1] = 3221225472;
        v408[2] = __captureSession_createMultiCamClientCompositingCallback_block_invoke;
        v408[3] = &unk_1E7998F28;
        v408[4] = v251;
        v408[5] = v250;
        v249 = [v408 copy];
        v252 = v249;
      }

      v253 = [FigCapturePhotonicEngineSinkPipeline alloc];
      v326 = v335;
      v254 = [(FigCaptureCameraSourcePipeline *)v201 stillImageSensorRawOutputsByPortType];
      v255 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v201) highResStillImageDimensions];
      v256 = v403[0];
      v257 = v398[0];
      v258 = v161;
      v259 = *(v161 + 832);
      if ([(FigCaptureBaseStillImageSinkPipelineConfiguration *)v330 cinematicFramingWarpingRequired])
      {
        v260 = [(FigCaptureCameraSourcePipeline *)v201 cinematicFramingCameraStatesProvider];
      }

      else
      {
        v260 = 0;
      }

      if ([(FigCapturePhotonicEngineSinkPipelineConfiguration *)v330 smartCropWarpingRequired])
      {
        v261 = [(FigCaptureCameraSourcePipeline *)v334 smartCropHomographyProvider];
      }

      else
      {
        v261 = 0;
      }

      LOBYTE(v284) = v329 == v304;
      v244 = [(FigCapturePhotonicEngineSinkPipeline *)v253 initWithConfiguration:v330 captureDevice:v302 sourceOutputsByPortType:v326 sourceSensorRawOutputsByPortType:v254 highResStillImageDimensions:v255 supplementalPointCloudCaptureDevice:v256 supplementalPointCloudSourceOutput:v257 captureStatusDelegate:v259 inferenceScheduler:v291 cinematicFramingStatesProvider:v260 smartCropHomographyProvider:v261 multiCamClientCompositingCallback:v249 isPrimaryStillImagePipeline:v284 graph:*(v258 + 752) name:v333];
      goto LABEL_439;
    }

    goto LABEL_363;
  }

  v34 = objc_alloc_init(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration);
  v342[0] = 0;
  v317 = v34;
  cs_updateStillImageSinkPipelineCommonConfiguration(v34, a3, a7, v20, v332, IsCameraOrDerivative);
  v315 = [a7 sourceConfiguration];
  if ([objc_msgSend(a7 "sinkConfiguration")] == 10)
  {
    v35 = [a7 sinkConfiguration];
  }

  else
  {
    v35 = 0;
  }

  v305 = [v315 depthDataFormat];
  v311 = [(FigCaptureCameraSourcePipeline *)a3 captureDevice];
  v313 = v35;
  v38 = [v35 maxQualityPrioritization];
  v39 = [objc_msgSend(v315 "requiredFormat")];
  v40 = 0;
  v295 = a4;
  v310 = v38;
  if (v39 && v38 >= 2)
  {
    v40 = [(FigCaptureCameraSourcePipeline *)a3 stillImageOutputDerivesFromVideoCaptureOutput]^ 1;
  }

  v306 = v40;
  -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setRawSensorDimensions:](v317, "setRawSensorDimensions:", [v332 sensorDimensions]);
  v41 = [v335 allKeys];
  v331 = [MEMORY[0x1E695DF90] dictionary];
  v42 = [MEMORY[0x1E695DF90] dictionary];
  if (FigCaptureSushiRawDNGDictionaryCreatedInGraph())
  {
    v43 = [v332 sushiRawSupported];
  }

  else
  {
    v43 = 0;
  }

  v44 = [v313 demosaicedRawEnabled];
  v45 = v44 | v43;
  v308 = v44;
  if ((v44 | v43))
  {
    v321 = [MEMORY[0x1E695DF90] dictionary];
  }

  else
  {
    v321 = 0;
  }

  v292 = DerivedStorage;
  v294 = a10;
  v290 = v21;
  v327 = v43;
  if (v43)
  {
    v324 = [MEMORY[0x1E695DF90] dictionary];
  }

  else
  {
    v324 = 0;
  }

  v378 = 0u;
  v377 = 0u;
  v376 = 0u;
  v375 = 0u;
  v46 = [v311 captureStreams];
  v47 = [v46 countByEnumeratingWithState:&v375 objects:v408 count:16];
  if (!v47)
  {
    goto LABEL_37;
  }

  v54 = v47;
  v55 = *v376;
  while (2)
  {
    for (jj = 0; jj != v54; ++jj)
    {
      if (*v376 != v55)
      {
        objc_enumerationMutation(v46);
      }

      v57 = *(*(&v375 + 1) + 8 * jj);
      v58 = [v57 portType];
      if ([v41 containsObject:v58])
      {
        [v331 setObject:objc_msgSend(v57 forKeyedSubscript:{"sensorIDString"), v58}];
        v59 = MEMORY[0x1E696AD98];
        [v57 baseZoomFactor];
        [v42 setObject:objc_msgSend(v59 forKeyedSubscript:{"numberWithFloat:"), v58}];
        if (v45)
        {
          v60 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
          v61 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(v60, v58, v342);
          if (v342[0])
          {
            captureSession_createStillImageSinkPipeline_cold_11();
            goto LABEL_367;
          }

          if (v61)
          {
            v62 = FigCaptureSourceGetAttribute(v61, @"WhiteBalanceCalibrations", v342);
            if (!v342[0])
            {
              [v321 setObject:BWDNGColorCalibrations(v62 forKeyedSubscript:{0), v58}];
            }

            if (!v327)
            {
LABEL_55:
              CFRelease(v61);
              continue;
            }

            v63 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
            v64 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v63, v332, v58, v342);
            if (!v342[0])
            {
              if (!v64)
              {
LABEL_207:
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, obj, v280, v281, v282, v283, v284, v285);
                v150 = 4294954516;
                v336 = -12780;
                goto LABEL_208;
              }

              [v324 setObject:objc_msgSend(v64 forKeyedSubscript:{"rawLensShadingCorrection"), v58}];

              goto LABEL_55;
            }

            captureSession_createStillImageSinkPipeline_cold_12();
LABEL_367:
            v51 = v302;
            v52 = v292;
LABEL_368:
            v224 = v334;
            v107 = v301;
            v105 = v317;
            goto LABEL_411;
          }

          v65 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
          v66 = FigCaptureSourceGetAttribute(v65, @"WhiteBalanceCalibrations", v342);
          if (!v342[0])
          {
            [v321 setObject:BWDNGColorCalibrations(v66 forKeyedSubscript:{0), v58}];
          }

          if (v327)
          {
            [v324 setObject:objc_msgSend(v332 forKeyedSubscript:{"rawLensShadingCorrection"), v58}];
          }
        }
      }
    }

    v54 = [v46 countByEnumeratingWithState:&v375 objects:v408 count:16];
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_37:
  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setStillImageSinkPipelineProcessingMode:0];
  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setPipelineStagePriority:14];
  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setInferencePriority:14];
  v48 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setDeviceType:FigCaptureSourceGetIntAttribute(v48, @"DeviceType", 0)];
  -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDeviceHasFlash:](v317, "setDeviceHasFlash:", [v311 hasFlash]);
  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setSensorIDStringsByPortType:v331];
  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setBaseZoomFactorsByPortType:v42];
  -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setRedEyeReductionVersion:](v317, "setRedEyeReductionVersion:", [v332 redEyeReductionVersion]);
  v49 = [v332 semanticRenderingSupported];
  v50 = 0;
  if (v49)
  {
    v50 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider];
  }

  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setSemanticRenderingVersion:v50];
  v51 = v302;
  v52 = v292;
  if ([v313 depthDataDeliveryEnabled])
  {
    v53 = 0;
  }

  else
  {
    v53 = [v332 semanticDevelopmentVersion];
  }

  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setSemanticDevelopmentVersion:v53];
  -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setSemanticStyleRenderingEnabled:](v317, "setSemanticStyleRenderingEnabled:", [v313 semanticStyleRenderingEnabled]);
  if ([v332 isDeepZoomSupported])
  {
    v96 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters deepZoomVersion];
  }

  else
  {
    v96 = 0;
  }

  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setDeepZoomVersion:v96];
  v97 = [MEMORY[0x1E695DF70] array];
  v98 = [(FigCaptureCameraSourcePipeline *)v334 portTypesWithGeometricDistortionCorrectionOnPreviewOutputsEnabled];
  v99 = [(FigCaptureCameraSourcePipeline *)v334 portTypesWithGeometricDistortionCorrectionOnStillImageOutputEnabled];
  if (([(FigCaptureCameraSourcePipeline *)v334 stillImageOutputDerivesFromVideoCaptureOutput]& 1) == 0)
  {
    v370 = 0u;
    v369 = 0u;
    v368 = 0u;
    v367 = 0u;
    v100 = [v98 countByEnumeratingWithState:&v367 objects:v403 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v368;
      do
      {
        for (kk = 0; kk != v101; ++kk)
        {
          if (*v368 != v102)
          {
            objc_enumerationMutation(v98);
          }

          v104 = *(*(&v367 + 1) + 8 * kk);
          if (([v99 containsObject:v104] & 1) == 0)
          {
            [v97 addObject:v104];
          }
        }

        v101 = [v98 countByEnumeratingWithState:&v367 objects:v403 count:16];
      }

      while (v101);
    }
  }

  v105 = v317;
  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setPortTypesWithGeometricDistortionCorrectionEnabled:v97];
  v106 = [v332 stillImageGDCSourceMode];
  v107 = v301;
  v108 = v313;
  if (([v332 intelligentDistortionCorrectionSupported] & 1) == 0 && !objc_msgSend(v97, "count"))
  {
    goto LABEL_373;
  }

  -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDcProcessorVersion:](v317, "setDcProcessorVersion:", [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters distortionCorrectionVersion]);
  if (v106 == 2)
  {
    v109 = [v313 depthDataDeliveryEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v109) = 0;
  }

  [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setGdcInDCProcessorSupported:(v106 == 1) | (v109 & 1)];
  if ([v313 intelligentDistortionCorrectionEnabled])
  {
    v130 = [MEMORY[0x1E695DF70] array];
    v359 = 0u;
    v360 = 0u;
    v361 = 0u;
    v362 = 0u;
    v131 = [v311 captureStreams];
    v132 = [v131 countByEnumeratingWithState:&v359 objects:v398 count:16];
    if (v132)
    {
      v144 = v132;
      v145 = *v360;
      while (2)
      {
        for (mm = 0; mm != v144; ++mm)
        {
          if (*v360 != v145)
          {
            objc_enumerationMutation(v131);
          }

          v147 = [*(*(&v359 + 1) + 8 * mm) portType];
          v148 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
          v149 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v148, v332, v147, v342);
          if (v342[0])
          {
            captureSession_createStillImageSinkPipeline_cold_13();
            goto LABEL_368;
          }

          if (!v149)
          {
            goto LABEL_207;
          }

          if ([v149 intelligentDistortionCorrectionSupported])
          {
            [v130 addObject:v147];
          }
        }

        v144 = [v131 countByEnumeratingWithState:&v359 objects:v398 count:16];
        if (v144)
        {
          continue;
        }

        break;
      }
    }

    if ([v130 count])
    {
      v133 = [v130 copy];
    }

    else
    {
      v133 = 0;
    }

    v107 = v301;
    v105 = v317;
    v108 = v313;
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 setPortTypesWithIntelligentDistortionCorrectionEnabled:v133];
  }

  if ([v97 count] && !-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration gdcInDCProcessorSupported](v105, "gdcInDCProcessorSupported"))
  {
    v342[0] = -12780;
    v266 = FigCaptureGetFrameworkRadarComponent();
    v337[0] = 0;
    LOBYTE(v409) = 0;
    v267 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v268 = v337[0];
    if (os_log_type_enabled(v267, v409))
    {
      v269 = v268;
    }

    else
    {
      v269 = v268 & 0xFFFFFFFE;
    }

    if (v269)
    {
      v275 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 gdcInDCProcessorSupported];
      v276 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 dcProcessorVersion];
      v347 = 136315906;
      v348 = "cs_stillImageUnifiedBracketingSinkPipelineConfiguration";
      v349 = 1024;
      v350 = v275;
      v351 = 1024;
      v352 = v276;
      v353 = 2112;
      v354 = v97;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v105 = v317;
    v277 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 gdcInDCProcessorSupported];
    v278 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v317 dcProcessorVersion];
    LODWORD(v391) = 67109634;
    HIDWORD(v391) = v277;
    v392 = 1024;
    v393 = v278;
    v394 = 2112;
    v395 = v97;
    v279 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v266, v279, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 9305, @"LastShownDate:FigCaptureSession.m:9305", @"LastShownBuild:FigCaptureSession.m:9305", 0);
    free(v279);
    v52 = v292;
    v224 = v334;
    v107 = v301;
  }

  else
  {
LABEL_373:
    v224 = v334;
    v225 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
    if (FigCaptureSourceGetBoolAttribute(v225, @"GeometricDistortionCorrectionExpandsImageDimensions", 0) && [v332 gdcInStillImageSinkPipelineSupported] && (-[FigCaptureCameraSourcePipeline stillImageOutputDerivesFromVideoCaptureOutput](v334) & 1) == 0 && (objc_msgSend(v315, "cinematicFramingEnabled") & 1) == 0 && (objc_msgSend(v315, "manualCinematicFramingEnabled") & 1) == 0)
    {
      -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setGdcInDCProcessorOutputCropDimensions:](v105, "setGdcInDCProcessorOutputCropDimensions:", [v332 stillImageGDCInDCProcessorOutputCropDimensions]);
      -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setOutputStillImageDimensions:](v105, "setOutputStillImageDimensions:", [v332 soleHighResStillImageDimensions]);
    }

    if (cs_shouldEnableGreenGhostMitigation(v315))
    {
      v226 = [v332 greenGhostMitigationVersion];
    }

    else
    {
      v226 = 0;
    }

    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setGreenGhostMitigationVersion:v226];
    if (v308)
    {
      -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDemosaicedRawPixelFormat:](v105, "setDemosaicedRawPixelFormat:", [v332 internalDemosaicedRawPixelFormat]);
      goto LABEL_385;
    }

    if (v327)
    {
LABEL_385:
      [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setRawColorCalibrationsByPortType:v321];
      [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setRawLensShadingCorrectionCoefficientsByPortType:v324];
    }

    v227 = [v332 isDeepFusionSupported];
    if (v310 > 2)
    {
      v228 = v227;
    }

    else
    {
      v228 = 0;
    }

    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setDeepFusionSupported:v228];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setLearnedNRSupported:](v105, "setLearnedNRSupported:", [v332 isLearnedNRSupported]);
    if ([v332 isDeferredPhotoProcessingSupported])
    {
      v229 = [v108 deferredProcessingEnabled];
    }

    else
    {
      v229 = 0;
    }

    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setDeferredProcessingSupported:v229];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setResponsiveShutterSupported:](v105, "setResponsiveShutterSupported:", [v332 isResponsiveShutterSupported]);
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setResponsiveShutterEnabled:](v105, "setResponsiveShutterEnabled:", [v108 responsiveCaptureEnabled]);
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setFastCapturePrioritizationEnabled:](v105, "setFastCapturePrioritizationEnabled:", [v108 fastCapturePrioritizationEnabled]);
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setCaptureTimePhotosCurationSupported:](v105, "setCaptureTimePhotosCurationSupported:", [v332 isCaptureTimePhotoCurationSupported]);
    if ([v108 bravoConstituentPhotoDeliveryEnabled] && (FigCaptureSourceGetBoolAttribute(objc_msgSend(v315, "source"), @"ConstituentPhotoCalibrationData", 0) & 1) == 0)
    {
      captureSession_createStillImageSinkPipeline_cold_14();
    }

    if ([v332 isSIFRSupported])
    {
      if ([v332 isStillImageStabilizationSupported])
      {
        v230 = 1;
      }

      else
      {
        v230 = [v332 isHighPhotoQualitySupported];
      }
    }

    else
    {
      v230 = 0;
    }

    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setSifrStillImageCaptureEnabledIfAvailable:v230];
    if (![v108 depthDataDeliveryEnabled] || (captureSession_createStillImageSinkPipeline_cold_15(v315, v105, v342) & 1) != 0)
    {
      if (([v332 isGainMapSupported] & 1) != 0 || objc_msgSend(v305, "gainMapSupported") && objc_msgSend(v108, "depthDataDeliveryEnabled"))
      {
        LODWORD(v231) = 0x40000000;
        [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setGainMapMainImageDownscalingFactor:v231];
      }

      LODWORD(v231) = 2.0;
      [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setUbInferenceMainImageDownscalingFactor:v231];
      [v332 defaultPortraitLightingEffectStrength];
      [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setAdjustablePortraitLightingEffectStrengthSupported:1];
      v232 = [(FigCaptureCameraSourcePipeline *)v334 captureSource];
      [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setSupportedSemanticSegmentationMatteURNs:FigCaptureSourceGetAttribute(v232, @"SupportedSemanticSegmentationMatteURNs", 0)];
      -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setEnabledSemanticSegmentationMatteURNs:](v105, "setEnabledSemanticSegmentationMatteURNs:", [v108 enabledSemanticSegmentationMatteURNs]);
      if ([(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 depthDataType]== 2 || [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 deepFusionSupported]|| [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 learnedNRSupported])
      {
        v233 = 1;
      }

      else
      {
        v233 = [v332 sushiRawSupported];
      }

      -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setCameraInfoByPortType:](v105, "setCameraInfoByPortType:", [v311 cameraInfoByPortTypeIncludingLSCGains:v233 includeCameraInfoForSensorRawProcessing:0]);
      [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setMaxLossyCompressionLevel:+[FigCaptureCameraParameters stillImageMaxLossyCompressionLevel]];
      [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setHighQualityPhotoCaptureForVideoFormatEnabled:v306];
      cs_setCinematicFramingWarpingForStillImageSinkPipelineConfigurationIfNeeded(v105, v315, v334);
    }
  }

LABEL_411:
  v150 = v342[0];
  v336 = v342[0];
  if (v342[0])
  {
LABEL_208:
    v17 = a10;
    captureSession_createStillImageSinkPipeline_cold_16(v150, v129);
    goto LABEL_364;
  }

  v408[0] = 0;
  v403[0] = 0;
  v398[0] = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 cameraInfoByPortType];
  v391 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 sensorIDStringsByPortType];
  if (cs_configurePointCloudSourceForStillImageSinkPipeline(v295, [v107 sourceDeviceType], &v335, v398, &v391, v408, v403))
  {
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setCameraInfoByPortType:v398[0]];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v105 setSensorIDStringsByPortType:v391];
  }

  v234 = [*(v52 + 776) objectForKeyedSubscript:{objc_msgSend(v224, "sourceID")}];
  if (v234)
  {
    v235 = *(v234 + 24);
  }

  else
  {
    v235 = 0;
  }

  v236 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v235, +[FigCaptureStillImageUnifiedBracketingSinkPipeline pipelineBaseName](FigCaptureStillImageUnifiedBracketingSinkPipeline, "pipelineBaseName")];
  v237 = [FigCaptureStillImageUnifiedBracketingSinkPipeline alloc];
  v238 = v335;
  v239 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v224) highResStillImageDimensions];
  v240 = v408[0];
  v241 = v403[0];
  v242 = *(v52 + 832);
  if ([(FigCaptureBaseStillImageSinkPipelineConfiguration *)v317 cinematicFramingWarpingRequired])
  {
    v243 = [(FigCaptureCameraSourcePipeline *)v224 cinematicFramingCameraStatesProvider];
  }

  else
  {
    v243 = 0;
  }

  v244 = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v237 initWithConfiguration:v317 captureDevice:v51 sourceOutputsByPortType:v238 highResStillImageDimensions:v239 supplementalPointCloudCaptureDevice:v240 supplementalPointCloudSourceOutput:v241 captureStatusDelegate:v242 inferenceScheduler:v290 cinematicFramingStatesProvider:v243 graph:*(v52 + 752) name:v236];
LABEL_439:
  result = v244;
  v17 = v294;
  if (!result)
  {
LABEL_440:
    captureSession_createStillImageSinkPipeline_cold_17(&v336);
    goto LABEL_364;
  }

LABEL_16:
  if (v17)
  {
LABEL_17:
    *v17 = v336;
  }

  return result;
}

void *vfr_cacheModesForOptimalAccess(int a1, int a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (a2 && (MEMORY[0xFFFFFC021] & 8) != 0)
  {
    [v4 addObject:&unk_1F22460F0];
  }

  if (MEMORY[0xFFFFFC080] == -1777893647 || MEMORY[0xFFFFFC080] == -1471079478 || MEMORY[0xFFFFFC080] == 506291073)
  {
    v8 = 1280;
  }

  else
  {
    v8 = 0;
  }

  if (MEMORY[0xFFFFFC080] != -400654602 && a1 != 0)
  {
    [v5 addObject:&unk_1F2246108];
  }

  [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v8)}];
  return v5;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresObjectDetection(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  if ([v1 containsObject:*MEMORY[0x1E6960388]] & 1) != 0 || (objc_msgSend(v1, "containsObject:", *MEMORY[0x1E6960390]) & 1) != 0 || (objc_msgSend(v1, "containsObject:", *off_1E798D0D0) & 1) != 0 || (objc_msgSend(v1, "containsObject:", @"mdta/com.apple.quicktime.detected-cat-head") & 1) != 0 || (objc_msgSend(v1, "containsObject:", *MEMORY[0x1E6960368]) & 1) != 0 || (objc_msgSend(v1, "containsObject:", @"mdta/com.apple.quicktime.detected-dog-head") & 1) != 0 || (objc_msgSend(v1, "containsObject:", *MEMORY[0x1E6960378]) & 1) != 0 || (objc_msgSend(v1, "containsObject:", *MEMORY[0x1E6960398]) & 1) != 0 || (objc_msgSend(v1, "containsObject:", *off_1E798D0E0) & 1) != 0 || (objc_msgSend(v1, "containsObject:", *MEMORY[0x1E6960370]) & 1) != 0 || (objc_msgSend(v1, "containsObject:", *MEMORY[0x1E6960380]))
  {
    return 1;
  }

  v3 = *off_1E798D0D8;

  return [v1 containsObject:v3];
}

double __FigCaptureTCCAccessPreflight_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_right();
  }

  return result;
}

uint64_t captureSessionRemote_createBasicMessage(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  if (captureSessionRemote_getObjectID(a1, &v3))
  {
    captureSessionRemote_createBasicMessage_cold_1();
  }

  else if (FigXPCCreateBasicMessage())
  {
    captureSessionRemote_createBasicMessage_cold_2();
  }

  return v4;
}

void captureSession_SetConfiguration(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v111 = objc_autoreleasePoolPush();
  if (getCameraCaptureExcessiveLog_cameraCaptureExcessiveLogOnceToken_0 != -1)
  {
    captureSession_SetConfiguration_cold_1();
  }

  v4 = *(DerivedStorage + 104);
  *v139 = 138543362;
  *&v139[4] = v4;
  LODWORD(v101) = 12;
  v5 = 0x1E696A000uLL;
  v110 = _os_log_send_and_compose_impl();
  v6 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s ", v110, v101), "length"];
  context = objc_autoreleasePoolPush();
  v7 = malloc_type_malloc(0x2800uLL, 0x6CD0C360uLL);
  v113 = DerivedStorage;
  if (getCameraCaptureExcessiveLog_cameraCaptureExcessiveLogOnceToken_0 != -1)
  {
    captureSession_SetConfiguration_cold_2();
  }

  *v139 = 138543362;
  v106 = a2;
  *&v139[4] = a2;
  LODWORD(v102) = 12;
  v108 = v7;
  v107 = _os_log_send_and_compose_impl();
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{v107, v139, v102}];
  v9 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s: ", "<<<< FigCaptureSession >>>>", "captureSession_SetConfiguration"), "length"] + v6;
  v112 = v8;
  v10 = v8;
  if ((v9 + [(__CFString *)v8 length]) >= 0x400)
  {
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v11 = @",";
    obj = [(__CFString *)v8 componentsSeparatedByString:@", "];
    v12 = [obj countByEnumeratingWithState:&v120 objects:v119 count:16];
    if (!v12)
    {
      v10 = &stru_1F216A3D0;
      goto LABEL_29;
    }

    v13 = v12;
    v10 = &stru_1F216A3D0;
    v14 = *v121;
    v114 = v9;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v121 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v120 + 1) + 8 * i);
        if (-[__CFString length](v10, "length") && (v17 = -[__CFString length](v10, "length"), v18 = -[__CFString length](v16, "length"), (v9 + v17 + [@"\n..." length] + v18) > 0x3FF))
        {
          if (dword_1ED844050)
          {
            v20 = v11;
            v21 = v5;
            LODWORD(v124) = 0;
            LOBYTE(v140) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v23 = v124;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v140))
            {
              v24 = v23;
            }

            else
            {
              v24 = v23 & 0xFFFFFFFE;
            }

            if (v24)
            {
              v25 = *(v113 + 104);
              LODWORD(v132[0]) = 136315906;
              *(v132 + 4) = "captureSession_SetConfiguration";
              WORD6(v132[0]) = 2114;
              *(v132 + 14) = v25;
              WORD3(v132[1]) = 2114;
              *(&v132[1] + 1) = v10;
              LOWORD(v133) = 2114;
              *(&v133 + 2) = @"\n...";
              LODWORD(v103) = 42;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v5 = v21;
            v11 = v20;
            v9 = v114;
          }

          v19 = [*(v5 + 3776) stringWithFormat:@"\n%@", v16, v103, v104];
        }

        else
        {
          if (![(__CFString *)v10 length])
          {
            v10 = v16;
            continue;
          }

          v19 = [*(v5 + 3776) stringWithFormat:@"%@%@%@", v10, v11, v16];
        }

        v10 = v19;
      }

      v13 = [obj countByEnumeratingWithState:&v120 objects:v119 count:16];
    }

    while (v13);
  }

LABEL_29:
  if (dword_1ED844050)
  {
    LODWORD(v124) = 0;
    LOBYTE(v140) = 0;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = v124;
    if (os_log_type_enabled(v26, v140))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v29 = *(v113 + 104);
      LODWORD(v132[0]) = 136315650;
      *(v132 + 4) = "captureSession_SetConfiguration";
      WORD6(v132[0]) = 2114;
      *(v132 + 14) = v29;
      WORD3(v132[1]) = 2114;
      *(&v132[1] + 1) = v10;
      LODWORD(v103) = 32;
      v100 = v132;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  free(v108);
  if (v107 != v108)
  {
    free(v107);
  }

  objc_autoreleasePoolPop(context);
  free(v110);
  objc_autoreleasePoolPop(v111);
  if (!*v113)
  {
    if (v106)
    {
      if ([v106 configurationID])
      {
        if (*(v113 + 452) != 1 || [objc_msgSend(v106 "sourceConfigurations")])
        {
          v31 = v106;
          memset(v132, 0, sizeof(v132));
          v133 = 0u;
          v134 = 0u;
          v32 = [v106 sinkConfigurations];
          v33 = [v32 countByEnumeratingWithState:v132 objects:v139 count:16];
          if (v33)
          {
            v35 = v33;
            v34 = 0;
            v36 = **&v132[1];
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (**&v132[1] != v36)
                {
                  objc_enumerationMutation(v32);
                }

                v38 = *(*(&v132[0] + 1) + 8 * j);
                if ([v38 sinkType] == 10)
                {
                  if (!v34)
                  {
                    v34 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
                  }

                  [v34 setObject:objc_msgSend(v38 forKeyedSubscript:{"irisPreparedSettings"), objc_msgSend(v38, "sinkID")}];
                }
              }

              v35 = [v32 countByEnumeratingWithState:v132 objects:v139 count:16];
            }

            while (v35);
          }

          else
          {
            v34 = 0;
          }

          v115 = v34;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v39 = [v106 connectionConfigurations];
          v40 = [v39 countByEnumeratingWithState:&v124 objects:v139 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v125;
            do
            {
              v43 = 0;
              obja = v41;
              do
              {
                if (*v125 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v124 + 1) + 8 * v43);
                if ([objc_msgSend(v44 sinkConfiguration] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v45 = v42;
                  v46 = v39;
                  v47 = [v44 sourceConfiguration];
                  v48 = [v47 requiredFormat];
                  [v48 dimensions];
                  MGGetFloat32Answer();
                  v50 = v49 / 3.14159265 * 180.0;
                  v51 = FigCaptureNormalizeAngle(-90 * llroundf(v50 / 90.0));
                  IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([v47 sourceDeviceType]);
                  v53 = [v47 sourcePosition];
                  [objc_msgSend(v44 "sourceConfiguration")];
                  if (FigCapturePlatformMountsCamerasInLandscapeOrientation(v53 == 2, IsExtensionDeviceType))
                  {
                    if ((v51 = FigCaptureNormalizeAngle(v51 + 90), v54 = FigCaptureCameraRequires180DegreesRotation(v53 == 2, IsExtensionDeviceType), [v44 mirroringEnabled]) && (IsExtensionDeviceType || v54) || !(objc_msgSend(v44, "mirroringEnabled") | IsExtensionDeviceType) && v53 == 2 && !v54)
                    {
                      v51 = FigCaptureNormalizeAngle(v51 + 180);
                    }
                  }

                  [v44 setRotationDegrees:{FigCaptureRotationDegreesWithMirroring(v51, objc_msgSend(v44, "mirroringEnabled"))}];
                  [v44 setOutputFormat:0];
                  *&v132[0] = [v48 previewDimensionsForAspectRatio:{objc_msgSend(v47, "outputAspectRatio")}];
                  *&v55 = FigCaptureSwapVideoDimensionsFor90Or270Rotation(v132, v51);
                  [v44 setOutputWidth:{LODWORD(v132[0]), v55}];
                  [v44 setOutputHeight:DWORD1(v132[0])];
                  v39 = v46;
                  v42 = v45;
                  v41 = obja;
                  if ((cs_shouldEnableOverCapture([v44 sourceConfiguration]) & 1) != 0 || objc_msgSend(objc_msgSend(v44, "videoPreviewSinkConfiguration"), "primaryCaptureRectModificationEnabled"))
                  {
                    v56 = [v44 sourceConfiguration];
                    v57 = [v56 sourcePosition] == 2;
                    v58 = BWDeviceTypeIsExtensionDeviceType([v56 sourceDeviceType]);
                    *&v132[0] = 0;
                    [v56 clientExpectsCameraMountedInLandscapeOrientation];
                    v59 = FigCapturePlatformMountsCamerasInLandscapeOrientation(v57, v58);
                    *&v132[0] = FigCaptureMainScreenDimensions(v59);
                    FigCaptureSwapVideoDimensionsFor90Or270Rotation(v132, [v44 transform] >> 32);
                    [v44 setOutputWidth:{FigCaptureRoundFloatToMultipleOf(2, SLODWORD(v132[0]))}];
                    [v44 setOutputHeight:{FigCaptureRoundFloatToMultipleOf(2, SDWORD1(v132[0]))}];
                  }
                }

                else if ([objc_msgSend(v44 "videoDataSinkConfiguration")] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  FigCaptureSetOptimalVideoPreviewDataConnectionDimensions(v44);
                }

                else if ([objc_msgSend(v44 "movieFileSinkConfiguration")])
                {
                  if ([objc_msgSend(v44 "sourceConfiguration")] == 2 && objc_msgSend(objc_msgSend(v44, "sourceConfiguration"), "sourceDeviceType") == 7)
                  {
                    [objc_msgSend(v44 "sourceConfiguration")];
                    if (v60 > 1.0)
                    {
                      v61 = [v44 sourceConfiguration];
                      LODWORD(v62) = 1.0;
                      [v61 setVideoZoomFactor:v62];
                    }
                  }
                }

                if (cs_shouldEnableOverCapture([v44 sourceConfiguration]))
                {
                  [objc_msgSend(v44 "sourceConfiguration")];
                }

                ++v43;
              }

              while (v41 != v43);
              v41 = [v39 countByEnumeratingWithState:&v124 objects:v139 count:16];
            }

            while (v41);
          }

          if ([v106 suppressVideoEffects])
          {
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v63 = [v106 connectionConfigurations];
            v64 = [v63 countByEnumeratingWithState:&v140 objects:v132 count:16];
            if (v64)
            {
              v65 = v64;
              v66 = *v141;
              do
              {
                for (k = 0; k != v65; ++k)
                {
                  if (*v141 != v66)
                  {
                    objc_enumerationMutation(v63);
                  }

                  v68 = [*(*(&v140 + 1) + 8 * k) sourceConfiguration];
                  [v68 setBackgroundBlurEnabled:0];
                  [v68 setStudioLightingEnabled:0];
                  [v68 setReactionEffectsEnabled:0];
                  [v68 setBackgroundReplacementEnabled:0];
                }

                v65 = [v63 countByEnumeratingWithState:&v140 objects:v132 count:16];
              }

              while (v65);
            }
          }

          v69 = CMBaseObjectGetDerivedStorage();
          if (captureSession_clientIsCameraOrDerivative(a1))
          {
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v70 = v106;
            v71 = [v106 sinkConfigurations];
            v72 = [v71 countByEnumeratingWithState:&v140 objects:v139 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = 0;
              v75 = *v141;
              do
              {
                for (m = 0; m != v73; ++m)
                {
                  if (*v141 != v75)
                  {
                    objc_enumerationMutation(v71);
                  }

                  if ([*(*(&v140 + 1) + 8 * m) sinkType] == 1)
                  {
                    ++v74;
                  }
                }

                v73 = [v71 countByEnumeratingWithState:&v140 objects:v139 count:16];
              }

              while (v73);
              v77 = v74 > 1;
              v70 = v106;
            }

            else
            {
              v77 = 0;
            }

            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v78 = [v70 connectionConfigurations];
            v79 = [v78 countByEnumeratingWithState:&v135 objects:v132 count:16];
            if (v79)
            {
              v80 = v79;
              v81 = *v136;
              do
              {
                for (n = 0; n != v80; ++n)
                {
                  if (*v136 != v81)
                  {
                    objc_enumerationMutation(v78);
                  }

                  v83 = *(*(&v135 + 1) + 8 * n);
                  v84 = [objc_msgSend(v83 "sinkConfiguration")];
                  if (v84 != 8)
                  {
                    v85 = v84 != 1 || !v77;
                    if (v85 || [objc_msgSend(v83 "sourceConfiguration")] != 1 || objc_msgSend(objc_msgSend(v83, "sourceConfiguration"), "sourcePosition") != 2)
                    {
                      continue;
                    }
                  }

                  [objc_msgSend(v83 "sinkConfiguration")];
                }

                v80 = [v78 countByEnumeratingWithState:&v135 objects:v132 count:16];
              }

              while (v80);
            }
          }

          if (FigCaptureClientApplicationIDIsMagnifier(*(v69 + 88)))
          {
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v86 = [v106 connectionConfigurations];
            v87 = [v86 countByEnumeratingWithState:&v128 objects:&v124 count:16];
            if (v87)
            {
              v88 = v87;
              v89 = *v129;
              do
              {
                for (ii = 0; ii != v88; ++ii)
                {
                  if (*v129 != v89)
                  {
                    objc_enumerationMutation(v86);
                  }

                  v91 = *(*(&v128 + 1) + 8 * ii);
                  if ([objc_msgSend(v91 "sinkConfiguration")] == 6)
                  {
                    [objc_msgSend(v91 "sinkConfiguration")];
                  }
                }

                v88 = [v86 countByEnumeratingWithState:&v128 objects:&v124 count:16];
              }

              while (v88);
            }
          }

          os_unfair_lock_lock((v113 + 384));
          v92 = *(v113 + 504);
          if (v92 == v106)
          {
            os_unfair_lock_unlock((v113 + 384));
            v93 = 0;
            v94 = 0;
          }

          else
          {
            v93 = v92;
            os_unfair_lock_unlock((v113 + 384));
            v94 = cs_configurationChangesAreLiveReconfigurable(v93, v106, 0);
          }

          v95 = v115;
          os_unfair_lock_lock((v113 + 384));
          if (*(v113 + 464) == 0.0)
          {
            *(v113 + 464) = CFAbsoluteTimeGetCurrent();
          }

          v96 = *(v113 + 504);
          if (v96 == v106)
          {
            v98 = *(v113 + 504);
            v96 = v106;
          }

          else
          {
            *(v113 + 504) = v106;
            v97 = *(v113 + 536);
            *(v113 + 536) = v115;
            v98 = v106;
            v95 = v97;
          }

          if (*(v113 + 600) != v94)
          {
            *(v113 + 600) = v94;
          }

          *(v113 + 398) = cs_configurationUsesSourceType(v98, 1);
          *(v113 + 432) = cs_configurationUsesSourceType(*(v113 + 504), 2);
          *(v113 + 399) = [*(v113 + 504) allowedToRunInMultitaskingMode];
          *(v113 + 632) = 0;
          *(v113 + 453) = 1;
          captureSession_updateRunningCondition(a1, 0, 0);
          os_unfair_lock_unlock((v113 + 384));

          v118[0] = MEMORY[0x1E69E9820];
          v118[1] = 3221225472;
          v118[2] = __captureSession_SetConfiguration_block_invoke;
          v118[3] = &__block_descriptor_48_e5_v8__0l;
          v118[4] = v113;
          v118[5] = a1;
          captureSession_performBlockOnWorkerQueue(a1, v118);
        }

        else
        {
          v30 = [v106 configurationID];
          captureSession_postNotificationWithPayload(a1, @"ConfigurationDidBecomeLive", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v30), @"ConfigurationID", 0, @"ErrorStatus", 0}]);
        }

        return;
      }

      if (captureSession_SetConfiguration_cold_3(v106, v132, v139))
      {
        return;
      }
    }

    else if (captureSession_SetConfiguration_cold_4(a1, v132, v139))
    {
      return;
    }

    v99 = *&v132[0];
    captureSession_postNotificationWithPayload(a1, @"ConfigurationCommitted", *v139);
    objc_autoreleasePoolPop(v99);
  }
}

void captureSession_postNotificationWithPayload(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    CFRetain(a2);
    if (a3)
    {
      CFRetain(a3);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v8 = *(v7 + 152);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __captureSession_postNotificationWithPayload_block_invoke;
    v9[3] = &__block_descriptor_64_e5_v8__0l;
    v9[4] = v7;
    v9[5] = a2;
    v9[6] = a3;
    v9[7] = a1;
    dispatch_async(v8, v9);
  }

  else
  {
    captureSession_postNotificationWithPayload_cold_1(DerivedStorage);
  }
}

void __FigCaptureGetTCCServer_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.coremedia.capture.tccserver", 0);
  FigCaptureGetTCCServer_sFigCaptureTCCServer = tcc_server_create();
  if (!FigCaptureGetTCCServer_sFigCaptureTCCServer)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_release(v0);
}

uint64_t FigCapturePlatformChipRevisionIdentifier(uint64_t a1, uint64_t a2)
{
  if (fcp_identifyChipRevision_identifyChipRevisionOnceToken != -1)
  {
    FigCapturePlatformChipRevisionIdentifier_cold_1();
  }

  return sPlatformChipRevisionID;
}

double FigCaptureMakeRectWithAspectRatioInsideDimensions(uint64_t a1, int a2, float a3)
{
  v3 = a1;
  v4 = SHIDWORD(a1);
  if ((a1 / SHIDWORD(a1)) >= a3)
  {
    v5 = v4 * a3;
    v6 = SHIDWORD(a1);
  }

  else
  {
    v5 = a1;
    v6 = v3 / a3;
  }

  v7 = v4 - v6;
  v8 = (v3 - v5) <= 2.0 && v7 <= 2.0;
  v9 = a1;
  if (!v8)
  {
    if (a2)
    {
      v9 = v5 & 0xFFFFFFFE;
    }

    else
    {
      v9 = 2 * llroundf(v5 * 0.5);
    }
  }

  v10 = round((a1 - v9) * 0.5 * 0.5);
  return v10 + v10;
}

uint64_t FigCaptureSessionRemoteSetClientCompositingSinkCallback(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    FigCaptureSessionRemoteSetClientCompositingSinkCallback_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      FigCaptureSessionRemoteSetClientCompositingSinkCallback_cold_2(&v7);
      return v7;
    }

    else
    {
      os_unfair_lock_lock((DerivedStorage + 64));

      *(v4 + 72) = [a2 copy];
      os_unfair_lock_unlock((v4 + 64));
      return 0;
    }
  }
}

uint64_t captureSessionRemote_SetConfiguration(uint64_t a1, void *a2)
{
  BasicMessage = captureSessionRemote_createBasicMessage(a1, 1668179559);
  if (BasicMessage)
  {
    v4 = [a2 copyXPCEncoding];
    xpc_dictionary_set_value(BasicMessage, *MEMORY[0x1E69615B0], v4);
    xpc_release(v4);
    if (FigXPCRemoteClientSendAsyncMessage())
    {
      captureSessionRemote_SetConfiguration_cold_1();
    }
  }

  else
  {
    captureSessionRemote_SetConfiguration_cold_2();
  }

  return FigXPCRelease();
}

uint64_t captureSessionServer_handleSessionSetConfigurationMessage(uint64_t a1, void *a2)
{
  v25 = 0;
  v4 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v25, 0, 0, 0);
  v5 = v25;
  if (v25)
  {
    v6 = [[FigCaptureSessionConfiguration alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, *MEMORY[0x1E69615B0])];
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v7(v5, v6);
    }

    else
    {
      *&v28 = @"ErrorStatus";
      v27[0] = &unk_1F2246228;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v28 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    uint64 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(FigCaptureSessionConfiguration *)v6 sinkConfigurations];
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v24 = v4;
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 multiCamClientCompositingEnabled] & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 multiCamClientCompositingEnabled] & 1) == 0)
            {
              continue;
            }
          }

          v15 = [FigWeakReference weakReferenceToObject:a1];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __captureSessionServer_configureCompositingSinkCallbackIfNecessary_block_invoke;
          v26[3] = &unk_1E799B708;
          v26[4] = v15;
          v26[5] = uint64;
          FigCaptureSessionSetClientCompositingSinkCallback(v5, v26, v16, v17, v18, v19, v20, v21, v23);
          goto LABEL_18;
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_18:
      v4 = v24;
    }

    CFRelease(v5);
  }

  return v4;
}

uint64_t captureSessionServer_handleNoReplyMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v3 = OpCode;
    captureSessionServer_handleNoReplyMessage_cold_1();
  }

  else
  {
    v3 = 4294966630;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v3;
}

void *cs_updateStillImageSinkPipelineCommonConfiguration(void *a1, id *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v33 = 0;
  v12 = [a3 sourceConfiguration];
  if ([objc_msgSend(a3 "sinkConfiguration")] == 10)
  {
    v13 = [a3 sinkConfiguration];
  }

  else
  {
    v13 = 0;
  }

  IntAttribute = FigCaptureSourceGetIntAttribute([v12 source], 0x1F21A0530, &v33);
  if (v33)
  {
    return cs_updateStillImageSinkPipelineCommonConfiguration_cold_1();
  }

  v31 = IntAttribute;
  v32 = [(FigCaptureCameraSourcePipeline *)a2 captureDevice];
  if (a4)
  {
    v15 = [objc_msgSend(a3 "irisSinkConfiguration")];
  }

  else
  {
    v15 = 1;
  }

  v30 = [objc_msgSend(a3 "irisSinkConfiguration")];
  v16 = [objc_msgSend(objc_msgSend(a3 "irisSinkConfiguration")] != 0;
  v17 = [v13 maxQualityPrioritization];
  v18 = 0;
  if ([objc_msgSend(v12 "requiredFormat")] && v17 >= 2)
  {
    v18 = [(FigCaptureCameraSourcePipeline *)a2 stillImageOutputDerivesFromVideoCaptureOutput]^ 1;
  }

  v19 = [objc_msgSend(FigCaptureSourceGetAttribute(objc_msgSend(v12 "source")];
  if ([a5 isPhotoFormat] && -[FigCaptureCameraSourcePipeline usesFirmwareStillImageOutput](a2))
  {
    v20 = [v32 depthDataDeliveryEnabled] ^ 1 | v19;
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  v21 = 875704422;
  [a1 setAllowsMultipleInflightCaptures:v20 & 1];
  [a1 setClientIsCameraOrDerivative:a6];
  [a1 setAllowedToModifyInputBuffers:-[FigCaptureCameraSourcePipeline stillImageOutputDerivesFromVideoCaptureOutput](a2) ^ 1];
  v22 = [a5 isHighPhotoQualitySupported];
  v23 = [a5 usesPacked10BitFirmwareStillImageOutputPixelFormat];
  if (v22)
  {
    v24 = v23 & v18;
  }

  else
  {
    v24 = v23;
  }

  [a1 setInputIs10Bit:v24];
  [a1 setHorizontalSensorBinningFactor:{objc_msgSend(a5, "horizontalSensorBinningFactor")}];
  [a1 setVerticalSensorBinningFactor:{objc_msgSend(a5, "verticalSensorBinningFactor")}];
  [a5 maxSupportedFrameRate];
  [a1 setMaxSupportedFrameRate:?];
  [a1 setMotionAttachmentsSource:-[FigCaptureCameraSourcePipeline motionAttachmentsSource](a2)];
  [a1 setSinkConfiguration:{objc_msgSend(a3, "sinkConfiguration")}];
  [a1 setUsesHighEncodingPriority:v15];
  if ([(FigCaptureCameraSourcePipeline *)a2 stillImageOutputDerivesFromVideoCaptureOutput])
  {
    if (FigCapturePixelFormatIsFullRange([a5 format]))
    {
      v21 = 875704422;
    }

    else
    {
      v21 = 875704438;
    }
  }

  [a1 setOutputPixelFormat:v21];
  if ((-[FigCaptureCameraSourcePipeline stillImageOutputDerivesFromVideoCaptureOutput](a2) & 1) != 0 || BWColorSpaceIsHDR([objc_msgSend(a3 "sourceConfiguration")]))
  {
    v25 = [-[FigCaptureCameraSourcePipeline captureDevice](a2) supportsWideColor];
    [a1 setOutputColorSpaceProperties:{+[BWVideoFormat colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:](BWVideoFormat, "colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:", v25, cs_figCaptureColorSpaceFromSourcePipeline(a2), objc_msgSend(a5, "format"), objc_msgSend(a5, "dimensions"), objc_msgSend(a1, "outputPixelFormat"))}];
  }

  v26 = v16 | v30;
  [a1 setStillImageStabilizationSupported:{objc_msgSend(a5, "isStillImageStabilizationSupported")}];
  [a1 setNoiseReductionAndFusionScheme:v31];
  [a1 setDepthDataTargetDimensions:{objc_msgSend(objc_msgSend(v12, "depthDataFormat"), "soleHighResStillImageDimensions")}];
  v27 = [v32 depthDataBaseRotation];
  if (v27 != 180 && v27)
  {
    v28 = __ROR8__([a1 depthDataTargetDimensions], 32);
  }

  else
  {
    v28 = [a1 depthDataTargetDimensions];
  }

  result = [a1 setDepthDataSourceDimensions:v28];
  if (v26)
  {
    [FigCaptureSourceGetAttribute(objc_msgSend(v12 "source")];
    return [a1 setPortraitEffectsMatteMainImageDownscalingFactor:?];
  }

  return result;
}

uint64_t getVNSetTargetDispatchQueueSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVNSetTargetDispatchQueueSymbolLoc_ptr;
  v6 = getVNSetTargetDispatchQueueSymbolLoc_ptr;
  if (!getVNSetTargetDispatchQueueSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v4[3] = dlsym(v1, "VNSetTargetDispatchQueue");
    getVNSetTargetDispatchQueueSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC965AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureSessionGetTypeID()
{
  if (FigCaptureSessionGetClassID_onceToken != -1)
  {
    FigCaptureSessionGetClassID_cold_1();
  }

  v1 = FigCaptureSessionGetClassID_sFigCaptureSessionClassID;

  return MEMORY[0x1EEDBB488](v1);
}

void *FigCaptureSFHRMode(void *result)
{
  if (result)
  {
    v1 = result;
    if ([result sourceDeviceType] == 10)
    {
      return 0;
    }

    else
    {
      v5 = 0;
      v2 = [v1 source];
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v3)
      {
        v3(v2, @"AttributesDictionary", *MEMORY[0x1E695E480], &v5);
        v3 = v5;
      }

      result = [objc_msgSend(v5 objectForKeyedSubscript:{0x1F21774D0), "BOOLValue"}];
      if (result)
      {
        v4 = [objc_msgSend(v5 objectForKeyedSubscript:{0x1F21A04B0), "BOOLValue"}];
        if ([objc_msgSend(v5 objectForKeyedSubscript:{0x1F21A04D0), "BOOLValue"}])
        {
          return (v4 | 2);
        }

        else
        {
          return v4;
        }
      }
    }
  }

  return result;
}

uint64_t captureSource_setPropertyWithDeviceCheck_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE0FLL, "<<<< FigCaptureSource >>>>", 0x92E, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t FigCaptureDictionaryRepresentationForDimensions(unint64_t a1)
{
  v1 = HIDWORD(a1);
  v3[1] = @"height";
  v4[0] = [MEMORY[0x1E696AD98] numberWithInt:{a1, @"width"}];
  v4[1] = [MEMORY[0x1E696AD98] numberWithInt:v1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
}

void *cs_setCinematicFramingWarpingForStillImageSinkPipelineConfigurationIfNeeded(void *a1, void *a2, uint64_t a3)
{
  if ([a2 backgroundBlurEnabled] & 1) != 0 || (objc_msgSend(a2, "studioLightingEnabled"))
  {
    v6 = 0;
  }

  else
  {
    v6 = [a2 backgroundReplacementEnabled] ^ 1;
  }

  if (([a2 cinematicFramingEnabled] & 1) == 0 && !objc_msgSend(a2, "manualCinematicFramingEnabled"))
  {
    v6 = 0;
  }

  [a1 setCinematicFramingWarpingRequired:v6];
  [a1 setCinematicFramingWarpingRequired:{objc_msgSend(a1, "cinematicFramingWarpingRequired") & (objc_msgSend(objc_msgSend(a2, "requiredFormat"), "isSmartCropSupported") ^ 1)}];
  result = [a1 cinematicFramingWarpingRequired];
  if (result)
  {
    v8 = [objc_msgSend(-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](a3) "highResStillImageDimensions")];
    if (v8)
    {
      v9 = [v8 dimensions];
    }

    else
    {
      v9 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](a3) cinematicFramingOutputDimensions];
    }

    return [a1 setCinematicFramingWarpingOutputDimensions:v9];
  }

  return result;
}

BOOL cs_configurePointCloudSourceForStillImageSinkPipeline(void *a1, int a2, void *a3, void *a4, void *a5, uint64_t *a6, void *a7)
{
  if (a1)
  {
    v14 = [(FigCaptureCameraSourcePipeline *)a1 nextPointCloudOutput];
    if (a2 == 13)
    {
      if (a3)
      {
        v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*a3];
        [v15 setObject:v14 forKeyedSubscript:*off_1E798A0C8];
        *a3 = [v15 copy];
      }

      if (a4)
      {
        v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*a4];
        [v16 addEntriesFromDictionary:{objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](a1), "cameraInfoByPortType")}];
        *a4 = [v16 copy];
      }

      if (a5)
      {
        [MEMORY[0x1E695DF90] dictionaryWithDictionary:*a5];
        v17 = OUTLINED_FUNCTION_87_2();
        [a4 setObject:objc_msgSend(objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v17) forKeyedSubscript:{"captureStream"), "sensorIDString"), *off_1E798A0C8}];
        *a5 = a4;
      }
    }

    else
    {
      if (a6)
      {
        *a6 = [(FigCaptureCameraSourcePipeline *)a1 captureDevice];
      }

      if (a7)
      {
        *a7 = v14;
      }
    }
  }

  return a1 != 0;
}

void OUTLINED_FUNCTION_38_1()
{
  STACK[0x488] = 0;
  STACK[0x480] = 0;
  STACK[0x490] = 0;
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{

  return [v61 countByEnumeratingWithState:&STACK[0x220] objects:&a61 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_38_5()
{
  *(v1 - 108) = 0;
  *(v1 - 109) = 0;
  return *(v0 + 584);
}

uint64_t OUTLINED_FUNCTION_38_12()
{

  return [v0 setBytesPerRowAlignment:64];
}

BOOL OUTLINED_FUNCTION_38_14(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

__n128 OUTLINED_FUNCTION_103_2()
{
  result = *(v0 - 144);
  *(v0 - 176) = result;
  *(v0 - 160) = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_103_3(int a1)
{
  if (v2 <= a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return *(v1 + *v5);
}

BOOL OUTLINED_FUNCTION_103_4(NSObject *a1)
{
  v2 = STACK[0x80B];

  return os_log_type_enabled(a1, v2);
}

uint64_t BWResolutionFlavorSupported(void *a1, uint64_t a2)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a1 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = [a1 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v7)];
        v9 = FigCaptureDimensionsFromDictionaryRepresentation([v8 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}]);
        if (v9 >= 1 && SHIDWORD(v9) > 0)
        {
          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v12 objects:v11 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t BWEmitUnstyledBufferForInferencesOrAdjustedImageWithConfigurations(void *a1, void *a2)
{
  if ([a1 smartStyleRenderingVersion] < 1)
  {
    return 0;
  }

  if ([a2 portraitEffectsMatteDeliveryEnabled] & 1) != 0 || objc_msgSend(objc_msgSend(a2, "enabledSemanticSegmentationMatteURNs"), "count") || objc_msgSend(a2, "depthDataDeliveryEnabled") && (objc_msgSend(a2, "filterRenderingEnabled"))
  {
    return 1;
  }

  result = [a2 depthDataDeliveryEnabled];
  if (result)
  {
    return [a1 depthDataType] == 10;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_126_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, __int16 a51, char a52, os_log_type_t type, int a54)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_126_3()
{

  return [v0 portType];
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{

  return [a52 countByEnumeratingWithState:&STACK[0x3B0] objects:&STACK[0x330] count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_37_4(double *a1)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *a1;

  return [v3 numberWithDouble:v4];
}

uint64_t OUTLINED_FUNCTION_37_6()
{

  return [v1 addObject:v0];
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return [v0 objectForKeyedSubscript:v1];
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_37_10()
{
  *(v0 - 68) = 0;
  *(v0 - 69) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_37_12(uint64_t a1)
{

  return [v1 formatByResolvingRequirements:a1];
}

uint64_t OUTLINED_FUNCTION_37_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);

  return [v54 countByEnumeratingWithState:va objects:&a39 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_37_15()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_124_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);

  return [v56 countByEnumeratingWithState:v57 - 192 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);

  return [a20 countByEnumeratingWithState:va objects:&a47 count:{16, a6, a7, a8}];
}

__n128 OUTLINED_FUNCTION_123_1()
{
  result = *v0;
  *(v1 - 208) = *v0;
  *(v1 - 192) = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_123_3()
{

  return [v0 countByEnumeratingWithState:v1 - 160 objects:&STACK[0x360] count:16];
}

uint64_t OUTLINED_FUNCTION_97_1(uint64_t a1, uint64_t a2)
{

  return objc_msgSend_isEqualToString_(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_97_3()
{
  v3 = *(v0 + *(v1 + 3756));

  return [v3 photoManifest];
}

__CFString *BWAspectRatioToShortString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Default";
  }

  else
  {
    return off_1E7991AC0[a1 - 1];
  }
}

uint64_t OUTLINED_FUNCTION_167()
{

  return [v0 pipelineParameters];
}

uint64_t OUTLINED_FUNCTION_165()
{
  *(v0 - 96) = 0;
  *(v0 - 97) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_160(int a1)
{

  return [v1 setRemainingProcessingCount:(a1 + 1)];
}

__n128 OUTLINED_FUNCTION_116_2()
{
  result = *(v0 - 136);
  *(v0 - 160) = result;
  *(v0 - 144) = *(v0 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_372(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [a1 setObject:a65 forKeyedSubscript:{v65, a5, a6, a7, a8}];
}

uint64_t penc_setBaseProcessorControllerConfigurationProperties(void *a1, void *a2)
{
  [a1 stillImageProcessingMode];
  [OUTLINED_FUNCTION_17() setStillImageProcessingMode:?];
  [a2 setPipelineProcessingContext:{objc_msgSend(a1, "pipelineProcessingContext")}];
  if (a1)
  {
    v4 = a1[16];
  }

  else
  {
    v4 = 0;
  }

  [a2 setSensorConfigurationsByPortType:v4];
  [a1 deferredCaptureSupportEnabled];
  [OUTLINED_FUNCTION_17() setDeferredCaptureSupportEnabled:?];
  [a1 deferredPhotoProcessorEnabled];
  [OUTLINED_FUNCTION_17() setDeferredPhotoProcessorEnabled:?];
  [a2 setMetalCommandQueue:{objc_msgSend(a1, "metalCommandQueue")}];
  [a2 setInferenceScheduler:{objc_msgSend(a1, "inferenceScheduler")}];
  [a1 figThreadPriority];
  v5 = OUTLINED_FUNCTION_17();

  return [v5 setFigThreadPriority:?];
}

void *BWDimensionsWithResolutionFlavor(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [a1 objectForKeyedSubscript:v9];
        if ([v10 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}])
        {
          v11 = [a1 objectForKeyedSubscript:v9];
          [v4 addObject:{objc_msgSend(v11, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2))}];
        }
      }

      v6 = [a1 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v6);
  }

  result = [v4 count];
  if (result)
  {
    return [v4 allObjects];
  }

  return result;
}

id BWInferenceLowResPersonInstanceMaskKeys()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v1 = 1;
  do
  {
    [v0 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%d", @"LowResPersonInstanceMask", v1)}];
    v1 = (v1 + 1);
  }

  while (v1 != 5);
  v2 = [v0 copy];

  return v2;
}

void *FigCaptureLargestDimensionsFromDimensionsArray(void *a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (result)
  {
    v3 = result;
    LODWORD(v4) = 0;
    LODWORD(v5) = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [objc_msgSend(v8 objectForKeyedSubscript:{@"width", "intValue"}];
        v10 = [objc_msgSend(v8 objectForKeyedSubscript:{@"height", "intValue"}];
        v11 = v5 * v4;
        if ((v10 * v9) <= v5 * v4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v10;
        }

        if ((v10 * v9) <= v11)
        {
          v5 = v5;
        }

        else
        {
          v5 = v9;
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v3);
    return (v5 | (v4 << 32));
  }

  return result;
}

double OUTLINED_FUNCTION_371(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

BOOL BWDeviceSupportsDeferredPhotoProcessorPrewarming(uint64_t a1, uint64_t a2)
{
  if (BWDeviceIsiPhone_onceToken != -1)
  {
    BWDeviceIsiPhone_cold_1();
  }

  if (BWDeviceIsiPhone_isiPhone != 1)
  {
    return 0;
  }

  if ([&unk_1F22486E8 containsObject:{FigCaptureGetModelSpecificName(a1, a2)}])
  {
    return 1;
  }

  return FigCapturePlatformIdentifier() > 9;
}

void *pesp_appendToName(void *a1, uint64_t a2)
{
  if (![a1 length])
  {
    return a1;
  }

  v4 = @"-";
  if (([a1 hasSuffix:@"LiveCapture"] & 1) == 0 && !objc_msgSend(a1, "hasSuffix:", @"Deferred"))
  {
    v4 = @"+";
  }

  return [a1 stringByAppendingFormat:@"%@%@", v4, a2];
}

BOOL OUTLINED_FUNCTION_148(NSObject *a1)
{
  v3 = *(v1 - 117);

  return os_log_type_enabled(a1, v3);
}

__n128 OUTLINED_FUNCTION_114_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a65;
  *(v66 - 192) = a65;
  *(v66 - 176) = a66;
  return result;
}

void *FigCapturePixelFormatsByAddingCompressedVariants(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a1;
  v5 = [a1 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = FigCaptureCompressedPixelFormatsForPixelFormat([*(*(&v23 + 1) + 8 * i) intValue], 4, v2);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v18 + 1) + 8 * j);
              if (([v4 containsObject:v14] & 1) == 0)
              {
                [v4 addObject:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v6);
  }

  return v4;
}

void *FigCaptureCompressedPixelFormatsForPixelFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = [MEMORY[0x1E695DF70] array];
  if ((a3 & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = a3 + 1;
    do
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureCompressedPixelFormatForPixelFormat(a1, v4, v7)}];
      if (([v6 containsObject:v9] & 1) == 0)
      {
        [v6 addObject:v9];
      }

      ++v7;
    }

    while (v8 != v7);
  }

  return v6;
}