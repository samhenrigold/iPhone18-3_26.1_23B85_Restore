void VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d sourcePixelBuffer is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d session is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void _VCCaptionsStream_DidReceiveSampleBuffer_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 141;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error getting block buffer from metadata sample buffer!", &v2, 0x1Cu);
}

void _VCCaptionsStream_DidReceiveSampleBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136315650;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v1, v2, " [%s] %s:%d Error creating NSData from sample buffer for captions.", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }
}

void _VCCaptionsStream_DidReceiveSampleBuffer_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136315650;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v1, v2, " [%s] %s:%d VCVideoStream: null object was passed to DidReceiveSampleBuffer", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }
}

char *AVCStreamInputID_ConvertToCString(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a1 - 1684108337) >= 5 && (a1 - 1986618417) >= 4 && a1 != 1718909044 && a1 != 1650745716)
  {
    v11 = OUTLINED_FUNCTION_28_6();
    snprintf(v11, v12, v13, a1);
    return a2;
  }

  if (a3 < 6)
  {
    return a2;
  }

  FourccToCStr(a1);
  v7 = OUTLINED_FUNCTION_18_0();

  return strncpy(v7, v8, v9);
}

uint64_t AVCStreamInputID_ConvertToNSString(uint64_t a1)
{
  v3[3] = *MEMORY[0x1E69E9840];
  memset(v3, 170, 20);
  v1 = MEMORY[0x1E696AEC0];
  AVCStreamInputID_ConvertToCString(a1, v3, 0x14uLL);
  return [v1 stringWithUTF8String:v3];
}

void _AVCStreamInput_ComputeStats_cold_1()
{
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void VCVideoStreamRateAdaptationFeedbackOnly_SetDidReceiveVideo_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid parameter. rateAdaptation is nil!", v2, v3, v4, v5);
}

void VCScreenCaptureManager_SharedInstance_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCStreamInput_Identifier_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCAudioIOControllerClient_ControllerFormat_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCAudioIOControllerClient_ControllerFormat";
  v6 = 1024;
  v7 = 142;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d nil instance passed.", &v2, 0x1Cu);
}

void VCAllocatorFirstCome_Create_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      FourccToCStr(0);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  *a1 = 0;
}

void VCAllocatorFirstCome_Create_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_3_31())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_3_31())
    {
      FourccToCStr(1852663149);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v7, v8, v9, v10, v11, 0x26u);
    }
  }

  *a1 = 1852663149;
}

void VCAllocatorFirstCome_Create_cold_3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 1768846960;
}

void VCRemoteVideoManager_DidReceiveFirstRemoteFrameForStreamToken_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCRemoteVideoManager.m:%d: VCRemoteVideoManager: null object was passed to DidReceiveFirstRemoteFrameForStreamToken", v2, v3, v4, v5);
    }
  }
}

void VCRemoteVideoManager_RemoteScreenAttributesDidChange_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCRemoteVideoManager.m:%d: VCRemoteVideoManager: null object was passed to RemoteScreenAttributesDidChange", v2, v3, v4, v5);
    }
  }
}

void VCRemoteVideoManager_RemoteVideoAttributesDidChange_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCRemoteVideoManager.m:%d: VCRemoteVideoManager: null object was passed to RemoteVideoAttributesDidChange", v2, v3, v4, v5);
    }
  }
}

void networkProc_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

uint64_t VCCryptor_Decrypt(uint64_t a1, OpaqueCMBlockBuffer *a2, CMBlockBufferRef *a3)
{
  v4 = a2;
  v76 = *MEMORY[0x1E69E9840];
  cf = 0;
  theBuffer = 0;
  if (_VCCryptor_ValidateCryptographyInputParameters(a1, a2, a3, 0))
  {
    OUTLINED_FUNCTION_29_7();
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_35;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_1_21();
    v69 = 665;
    goto LABEL_64;
  }

  DataLength = CMBlockBufferGetDataLength(v4);
  if (CMBlockBufferIsRangeContiguous(v4, 0, DataLength))
  {
    dataPointerOut = 0;
    DataPointer = CMBlockBufferGetDataPointer(v4, 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      v4 = DataPointer;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_35;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_28())
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_13_13();
      OUTLINED_FUNCTION_1_21();
      v69 = 673;
    }

    else
    {
      v58 = 0;
      v59 = 0;
      CipherSuite = VCCryptor_GetCipherSuite(a1);
      v9 = 4;
      if (CipherSuite == 1)
      {
        v9 = 10;
      }

      if (CipherSuite)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = VCCryptor_ParseSFrameHeader(dataPointerOut, DataLength, v10, &cf, &v59, &v58);
      if (v11)
      {
        v4 = v11;
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_35;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_28())
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_13_13();
        OUTLINED_FUNCTION_1_21();
        v69 = 678;
      }

      else
      {
        if (cf)
        {
          v12 = v58 + v10;
          if (DataLength >= v58 + v10)
          {
            IsReady = _VCCryptor_EnsureCryptorIsReady(a1, cf, 0);
            if (IsReady)
            {
              v4 = IsReady;
              goto LABEL_35;
            }

            Mutable = 0;
            v15 = *MEMORY[0x1E695E480];
            v16 = MEMORY[0x1E695E9C0];
            while (1)
            {
              v17 = _VCCryptor_ValidateAuthenticationTag(a1, dataPointerOut, DataLength);
              if (v17 != -2143289274)
              {
                break;
              }

              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v15, 0, v16);
              }

              CFArrayAppendValue(Mutable, *(a1 + 24));
              if (_VCCryptor_EnsureCryptorIsReady(a1, cf, Mutable))
              {
                v4 = 2151678022;
                goto LABEL_33;
              }
            }

            v4 = v17;
            if (v17)
            {
              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_33;
              }

              VRTraceErrorLogLevelToCSTR();
              if (!OUTLINED_FUNCTION_40())
              {
                goto LABEL_33;
              }

              OUTLINED_FUNCTION_14_14();
              OUTLINED_FUNCTION_1_21();
              v69 = 704;
            }

            else
            {
              v18 = v59;
              if (*(a1 + 35) == 1)
              {
                v19 = *(a1 + 8352);
                v20 = a1 + 8 * (v59 & 0x3FF);
                v21 = v19 >= v59;
                v22 = v19 - v59;
                if (v21)
                {
                  if (v22 > 0x3FF || *(v20 + 160) == v59)
                  {
                    OUTLINED_FUNCTION_29_7();
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      v30 = VRTraceErrorLogLevelToCSTR();
                      v31 = *MEMORY[0x1E6986650];
                      v4 = (v4 + 54);
                      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_33;
                      }

                      v32 = *(a1 + 8352);
                      *buf = 136316418;
                      v65 = v30;
                      v66 = 2080;
                      v67 = "VCCryptor_Decrypt";
                      v68 = 1024;
                      v69 = 707;
                      v70 = 2048;
                      v71 = a1;
                      v72 = 2048;
                      v73 = v59;
                      v74 = 2048;
                      v75 = v32;
                      v33 = &dword_1DB56E000;
                      v34 = " [%s] %s:%d [%p] VCCryptor_CheckReplayWindow detected replay. counter=%llu, maxReceivedCounter=%llu";
                      v35 = buf;
                      v36 = v31;
                      v37 = OS_LOG_TYPE_ERROR;
                      v38 = 58;
                      goto LABEL_45;
                    }

                    v39 = 54;
                    goto LABEL_47;
                  }
                }

                else
                {
                  *(a1 + 8352) = v59;
                }

                *(v20 + 160) = v18;
              }

              iv = bswap64(v18);
              iv = veorq_s8(iv, *(a1 + 112));
              v23 = DataLength - v10 - v58;
              v24 = CMBlockBufferCreateWithMemoryBlock(v15, 0, v23, v15, 0, 0, v23, 1u, &theBuffer);
              if (v24)
              {
                v4 = v24;
                if (VRTraceGetErrorLogLevelForModule() < 3)
                {
                  goto LABEL_33;
                }

                VRTraceErrorLogLevelToCSTR();
                if (!OUTLINED_FUNCTION_40())
                {
                  goto LABEL_33;
                }

                OUTLINED_FUNCTION_14_14();
                OUTLINED_FUNCTION_1_21();
                v69 = 719;
              }

              else
              {
                v57 = 0;
                v25 = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v57);
                if (v25)
                {
                  v4 = v25;
                  if (VRTraceGetErrorLogLevelForModule() < 3)
                  {
                    goto LABEL_33;
                  }

                  VRTraceErrorLogLevelToCSTR();
                  if (!OUTLINED_FUNCTION_40())
                  {
                    goto LABEL_33;
                  }

                  OUTLINED_FUNCTION_14_14();
                  OUTLINED_FUNCTION_1_21();
                  v69 = 722;
                }

                else
                {
                  v26 = CCCryptorReset(*(a1 + 8360), &iv);
                  if (v26)
                  {
                    v4 = v26;
                    if (VRTraceGetErrorLogLevelForModule() < 3)
                    {
                      goto LABEL_33;
                    }

                    VRTraceErrorLogLevelToCSTR();
                    if (!OUTLINED_FUNCTION_40())
                    {
                      goto LABEL_33;
                    }

                    OUTLINED_FUNCTION_14_14();
                    OUTLINED_FUNCTION_1_21();
                    v69 = 726;
                  }

                  else
                  {
                    dataOutMoved = 0;
                    v27 = CCCryptorUpdate(*(a1 + 8360), &dataPointerOut[v58], v23, v57, v23, &dataOutMoved);
                    if (!v27)
                    {
                      if (dataOutMoved == v23)
                      {
                        if (*(a1 + 34))
                        {
LABEL_32:
                          v4 = 0;
                          *a3 = theBuffer;
                          theBuffer = 0;
                          goto LABEL_33;
                        }

                        v28 = VCSecurityKeyHolder_AssociateKeyIndex(*(a1 + 16), *(a1 + 24));
                        if (!v28)
                        {
                          *(a1 + 34) = 1;
                          goto LABEL_32;
                        }

                        v4 = v28;
                        if (VRTraceGetErrorLogLevelForModule() >= 3)
                        {
                          VRTraceErrorLogLevelToCSTR();
                          if (OUTLINED_FUNCTION_40())
                          {
                            OUTLINED_FUNCTION_14_14();
                            OUTLINED_FUNCTION_1_21();
                            v69 = 740;
                            goto LABEL_92;
                          }
                        }

LABEL_33:
                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        goto LABEL_35;
                      }

                      OUTLINED_FUNCTION_29_7();
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        v54 = VRTraceErrorLogLevelToCSTR();
                        v55 = *MEMORY[0x1E6986650];
                        v4 = (v4 + 68);
                        if (OUTLINED_FUNCTION_40())
                        {
                          *buf = 136316162;
                          v65 = v54;
                          v66 = 2080;
                          v67 = "VCCryptor_Decrypt";
                          v68 = 1024;
                          v69 = 734;
                          v70 = 2048;
                          v71 = v23;
                          v72 = 2048;
                          v73 = dataOutMoved;
                          v33 = &dword_1DB56E000;
                          v34 = " [%s] %s:%d Decrypor should have produced at least '%zu' bytes but only produced '%zu' bytes";
                          v35 = buf;
                          v36 = v55;
                          v37 = OS_LOG_TYPE_ERROR;
                          v38 = 48;
LABEL_45:
                          _os_log_error_impl(v33, v36, v37, v34, v35, v38);
                          goto LABEL_33;
                        }

                        goto LABEL_33;
                      }

                      v39 = 68;
LABEL_47:
                      v4 = v4 | v39;
                      goto LABEL_33;
                    }

                    v4 = v27;
                    if (VRTraceGetErrorLogLevelForModule() < 3)
                    {
                      goto LABEL_33;
                    }

                    VRTraceErrorLogLevelToCSTR();
                    if (!OUTLINED_FUNCTION_40())
                    {
                      goto LABEL_33;
                    }

                    OUTLINED_FUNCTION_14_14();
                    OUTLINED_FUNCTION_1_21();
                    v69 = 733;
                  }
                }
              }
            }

LABEL_92:
            OUTLINED_FUNCTION_16_0();
            goto LABEL_45;
          }

          OUTLINED_FUNCTION_29_7();
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            v4 = v4 | 0x3E;
            goto LABEL_35;
          }

          VRTraceErrorLogLevelToCSTR();
          v52 = *MEMORY[0x1E6986650];
          v4 = (v4 + 62);
          if (!OUTLINED_FUNCTION_28())
          {
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_13_13();
          v66 = v53;
          v67 = "VCCryptor_Decrypt";
          v68 = 1024;
          v69 = 681;
          v70 = 2048;
          v71 = v12;
          v72 = 2048;
          v73 = DataLength;
          v46 = &dword_1DB56E000;
          v49 = " [%s] %s:%d Size of encrypted SFrame is less than its required overhead. Minimum required size '%zu', actual size '%zu'";
          v50 = buf;
          v47 = v52;
          v48 = OS_LOG_TYPE_ERROR;
          v51 = 48;
LABEL_65:
          _os_log_error_impl(v46, v47, v48, v49, v50, v51);
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_29_7();
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_35;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_28())
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_13_13();
        OUTLINED_FUNCTION_1_21();
        v69 = 679;
      }
    }

LABEL_64:
    OUTLINED_FUNCTION_16_0();
    goto LABEL_65;
  }

  v4 = 2151678024;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_13_13();
      OUTLINED_FUNCTION_1_21();
      v69 = 669;
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v40, v41, v42, v43, v44, v45);
      v4 = 2151678024;
    }
  }

LABEL_35:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void VCCryptor_GetCipherSuite_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCCryptor_ComposeSFrameHeaderWithCounterAndMKI_cold_1()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ComposeSFrameHeaderWithCounterAndMKI_cold_2()
{
  OUTLINED_FUNCTION_20_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ComposeSFrameHeaderWithCounterAndMKI_cold_3()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ComposeSFrameHeaderWithCounterAndMKI_cold_4()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ParseSFrameHeader_cold_1()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ParseSFrameHeader_cold_2()
{
  OUTLINED_FUNCTION_20_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ParseSFrameHeader_cold_3()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ParseSFrameHeader_cold_4()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ParseSFrameHeader_cold_5()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ParseSFrameHeader_cold_6()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ParseSFrameHeader_cold_7()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_ParseSFrameHeader_cold_8(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }

  *a1 = -2143289281;
}

void VCCryptor_ParseSFrameHeader_cold_9()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCCryptor_ValidateAuthenticationTag_cold_1()
{
  OUTLINED_FUNCTION_20_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_Create_cold_3()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_Create_cold_4()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_Create_cold_5()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_Create_cold_6()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_Encrypt_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCryptor_Encrypt_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_Encrypt_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCryptor_Encrypt_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCryptor_Encrypt_cold_5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCryptor_Encrypt_cold_6()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCryptor_Encrypt_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCryptor_Encrypt_cold_8()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCryptor_Encrypt_cold_9(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a3 = -2143289276;
}

void VCCryptor_Encrypt_cold_10()
{
  OUTLINED_FUNCTION_20_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_Encrypt_cold_11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCCryptor_ValidateCryptographyInputParameters_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = v6;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      v10 = 307;
      v11 = 2048;
      v12 = a1;
      v13 = 2048;
      v14 = a2;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d inputBuffer contains incorrect data size '%zu'. Expected at least '%zu' bytes of input data", &v8, 0x30u);
    }
  }

  *a3 = -2143289343;
}

void _VCCryptor_ValidateCryptographyInputParameters_cold_2()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCCryptor_ValidateCryptographyInputParameters_cold_3()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCCryptor_ValidateCryptographyInputParameters_cold_4()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCCryptor_ValidateCryptographyInputParameters_cold_5()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCCryptor_EnsureCryptorIsReady_cold_1(_DWORD *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    v3 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        v5 = 420;
        _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cryptor is valid, nothing to do here", v4, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v5 = 420;
      _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Cryptor is valid, nothing to do here", v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

void _VCCryptor_EnsureCryptorIsReady_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCCryptor_EnsureCryptorIsReady_cold_3()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      VCMediaKeyIndex_Description(v1);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_36();
}

void _VCCryptor_EnsureCryptorIsReady_cold_4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_19_12();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _VCCryptor_EnsureCryptorIsReady_cold_5()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_19_12();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _VCCryptor_EnsureCryptorIsReady_cold_6()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_19_12();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _VCCryptor_EnsureCryptorIsReady_cold_7()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_19_12();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _VCCryptor_EnsureCryptorIsReady_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCCryptor_EnsureCryptorIsReady_cold_9()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_16_18();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _VCCryptor_EnsureCryptorIsReady_cold_10()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_16_18();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _VCCryptor_EnsureCryptorIsReady_cold_11(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid key material received '%@'", v3, DWORD2(v3));
}

void _VCCryptor_EnsureCryptorIsReady_cold_12(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid key material received '%@'", v3, DWORD2(v3));
}

void _VCCryptor_EnsureCryptorIsReady_cold_13(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d _VCCryptor_SetupCryptor failed for key material '%@'", v3, DWORD2(v3));
}

void _VCCryptor_EnsureCryptorIsReady_cold_14()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_16_18();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _VCCryptor_EnsureCryptorIsReady_cold_15()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  OUTLINED_FUNCTION_16_18();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      VCMediaKeyIndex_Description(v1);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _VCCryptor_EnsureCryptorIsReady_cold_16()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  OUTLINED_FUNCTION_16_18();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      VCMediaKeyIndex_Description(v1);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCCryptor_GetEncryptedBufferSize_cold_1()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCryptor_GetEncryptedBufferSize_cold_2()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCMediaStream_DefaultTransport_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCMediaStreamFillMediaControlInfoCallback_cold_1()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_25_8(v0, *MEMORY[0x1E69E9840]);
  if (objc_opt_class())
  {
    [objc_msgSend(objc_opt_class() "description")];
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void VCMediaStreamProcessMediaControlInfoCallback_cold_1()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_25_8(v0, *MEMORY[0x1E69E9840]);
  if (objc_opt_class())
  {
    [objc_msgSend(objc_opt_class() "description")];
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void VCMediaStreamProcessMediaControlInfoCallback_cold_2()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_25_8(v0, *MEMORY[0x1E69E9840]);
  if (objc_opt_class())
  {
    [objc_msgSend(objc_opt_class() "description")];
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void VCMediaStreamProcessMediaControlInfoCallback_cold_3()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_25_8(v0, *MEMORY[0x1E69E9840]);
  if (objc_opt_class())
  {
    [objc_msgSend(objc_opt_class() "description")];
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void VCVideoHardwareDumpCollector_CreateHeadersFromCArray_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate header string", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCVideoHardwareDumpCollector_CreateHeadersFromCArray_cold_2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to create mutable header array", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCVideoHardwareDumpCollector_CreateHeadersFromCArray_cold_3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL C headers array", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void _VCVideoHardwareDumpCollector_DumpFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate format generator", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordResizeForEncoder_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing frame data", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordResizeForEncoder_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil dump collector", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordEncoderBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing frame data", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordEncoderBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil dump collector", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordEncodedFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing frame data", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordEncodedFrame_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil dump collector", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordDecodedFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing frame data", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordDecodedFrame_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil dump collector", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordActiveCaptureDevice_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing frame data", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpCollector_RecordActiveCaptureDevice_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil dump collector", v2, v3, v4, v5);
    }
  }
}

void Throttling_MediaQueue_SetAudioInterval_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void Throttling_MediaQueue_SetIsIPv6_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void Throttling_AFRC_GetDefaults_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void Throttling_AFRC_GetDefaults_cold_2()
{
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  v5 = 2080;
  v6 = "Throttling_AFRC_GetDefaults";
  v7 = 1024;
  v8 = 1500;
  v9 = 1024;
  v10 = v0;
  v11 = 1024;
  v12 = v1;
  v13 = 1024;
  v14 = v2;
  _os_log_debug_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d g_bThrottlingSendLog: %d  g_bThrottlingRecvLog: %d  g_bThrottlingProbeSeqLog: %d ", v4, 0x2Eu);
}

void _VCExperimentManager_ReportExperimentPayload_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void _VCExperimentManager_ReportExperimentPayload_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void _VCExperimentManager_ReportExperimentPayload_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCExperimentManager_GetExperimentGroup_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_15_10();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_13_14();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCExperimentManager_GetExperimentGroup_cold_2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_15_10();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_13_14();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCExperimentManager_GetExperimentGroup_cold_3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_15_10();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_13_14();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCExperimentManager_GetExperimentGroup_cold_4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_13_14();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCExperimentManager_GetExperimentGroup_cold_5()
{
  OUTLINED_FUNCTION_5_25();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_22();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCExperimentManager_GetExperimentGroup_cold_6()
{
  OUTLINED_FUNCTION_5_25();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_22();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCExperimentManager_GetExperimentGroup_cold_7()
{
  OUTLINED_FUNCTION_5_25();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_22();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCExperimentManager_GetExperimentGroup_cold_8()
{
  OUTLINED_FUNCTION_5_25();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_22();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCExperimentManager_OverrideExperimentGroup_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_22();
      _os_log_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCExperimentManager_OverrideExperimentGroup_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_22();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCExperimentManager_OverrideExperimentGroup_cold_3()
{
  OUTLINED_FUNCTION_5_25();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_22();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCExperimentManager_OverrideExperimentGroup_cold_4()
{
  OUTLINED_FUNCTION_37();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_30_1())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  *v3 = -2142306303;
  *v0 = v1;
  OUTLINED_FUNCTION_36();
}

void VCExperimentManager_OverrideExperimentGroup_cold_5()
{
  OUTLINED_FUNCTION_37();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_30_1())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  *v3 = -2142306303;
  *v0 = v1;
  OUTLINED_FUNCTION_36();
}

void DTLS_SocketWrite_cold_1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = *a2;
  v8 = 136316162;
  v9 = a1;
  v10 = 2080;
  v11 = "DTLS_SocketWrite";
  v12 = 1024;
  v13 = 187;
  v14 = 1024;
  v15 = v6;
  v16 = 1024;
  v17 = v7;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d SECURETRANSPORT WRITE FAILED -1 errno: %d (%d bytes)...", &v8, 0x28u);
}

void DTLS_Cleanup_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  OUTLINED_FUNCTION_6();
  v7 = 325;
  v8 = v1;
  v9 = v2;
  _os_log_debug_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d DTLS_Cleanup done on handle %d", &v4, 0x22u);
}

void DTLS_Handshake_cold_1(uint64_t a1, char a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = "OK";
  v5 = a1;
  v4 = 136315906;
  v7 = "DTLS_Handshake";
  v6 = 2080;
  v8 = 1024;
  v9 = 463;
  if (a2)
  {
    v3 = "NO";
  }

  v10 = 2080;
  v11 = v3;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SECURETRANSPORT SETUP %s...", &v4, 0x26u);
}

void DTLS_Handshake_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 466;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SECURETRANSPORT FAILED...", &v2, 0x1Cu);
}

void DTLS_Read_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void DTLS_Read_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void DTLS_Read_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void DTLS_Read_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void HandleWRMEvent_cold_1()
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_6();
  v6 = 82;
  v7 = v1;
  v8 = 82;
  v9 = 2048;
  v10 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/WRMClient.m:%d: WRMClient: invalid configuration event with kMessageID %llu.", v4, 0x2Cu);
}

void VCCreateVFDForIDS_cold_1()
{
  __error();
  OUTLINED_FUNCTION_4_26();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCreateVFDForIDS_cold_2()
{
  __error();
  OUTLINED_FUNCTION_4_26();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCreateVFDForIDS_cold_3()
{
  __error();
  OUTLINED_FUNCTION_4_26();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCCreateVFDForIDS_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFECDecoder_Create_cold_2(uint64_t a1, const void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  CFRelease(a2);
}

void VCWRSFECDecoder_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d allocate failed", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFECDecoder_Create_cold_4(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
    }
  }

  *a2 = -2144141311;
}

void VCWRSFECDecoder_Create_cold_5()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL newInstance", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRS_Decode_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to retrieve received data packet index=%hu", v2, v3, v4, v5);
    }
  }
}

void VCWRS_Decode_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to retrieve lost data packet index at index=%hu", v2, v3, v4, v5);
    }
  }
}

void VCWRS_Decode_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v0, v1, " [%s] %s:%d _VCWRS_BuildSingleEquation failed with result=%x", v2);
}

void VCWRS_Decode_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to retrieve received parity index at index=%hu", v2, v3, v4, v5);
    }
  }
}

void VCWRS_Decode_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v0, v1, " [%s] %s:%d Internal error: _VCWRS_BuildSystemEquations failed with result=%x", v2);
}

void VCWRS_Decode_cold_6(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = a1;
}

void VCWRS_Decode_cold_7()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v3 = v0;
  OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v1, v1, " [%s] %s:%d Failed to retrieve lost data packet index at index=%hu", v2);
}

void VCWRS_Decode_cold_8()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v4 = v0;
  v5 = v1;
  v6 = -2144141311;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to recover data packets at offset=%hu with result=%x", v3, 0x28u);
}

void VCWRS_Decode_cold_9()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v0, v1, " [%s] %s:%d Internal error: _VCWRS_SolveSystemEquations failed with result=%x", v2);
}

void VCWRS_Decode_cold_10()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFECDecoder_Enqueue_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = -2144272383;
}

void VCWRSFECDecoder_Enqueue_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCGF256_InverseMatrix_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCGF256_InverseMatrix_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCGF256_InverseMatrix_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCGF256_InverseMatrix_cold_4()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCGF256_MultiplyMatrixByVector_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCGF256_MultiplyMatrixByVector_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCGF256_MultiplyMatrixByVector_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCGF256_MultiplyMatrixByVector_cold_4()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCGF256_MultiplyMatrixByVector_cold_5()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCRS255_SimdEncode_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_8_26();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Eu);
    }
  }

  *a3 = -2144141311;
}

void VCRS255_SimdEncode_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v5 = a1;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *v13 = 136316162;
      *&v13[4] = v6;
      *&v13[12] = 2080;
      *&v13[14] = "VCRS255_SimdEncode";
      *&v13[22] = 1024;
      LODWORD(v14) = 258;
      WORD2(v14) = 1024;
      *(&v14 + 6) = v5;
      WORD5(v14) = 1024;
      HIDWORD(v14) = v4;
      OUTLINED_FUNCTION_10_4(&dword_1DB56E000, v7, v8, " [%s] %s:%d dataPacketBuffers index=%d is NULL whereas numberOfDataPackets=%d", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], v14);
    }
  }

  *a3 = -2144141311;
}

void VCRS255_SimdEncode_cold_3(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_8_26();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x28u);
    }
  }

  *a3 = -2144141311;
}

void VCRS255_SimdEncode_cold_4()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCRS255_SimdEncode_cold_5()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCRS255_SimdEncode_cold_6()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCRS255_SimdEncode_cold_7()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCRS255_SimdEncode_cold_8()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCRS255_SimdEncode_cold_9(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *v12 = 136316162;
      *&v12[4] = v4;
      *&v12[12] = 2080;
      *&v12[14] = "VCRS255_SimdEncode";
      OUTLINED_FUNCTION_4_2();
      LODWORD(v13) = 255;
      WORD2(v13) = v5;
      *(&v13 + 6) = v3;
      WORD5(v13) = v5;
      HIDWORD(v13) = v5;
      OUTLINED_FUNCTION_10_4(&dword_1DB56E000, v6, v7, " [%s] %s:%d numberOfDataPackets=%i is greater than MAX_WINDOW_NUMBER_OF_DATA_PACKETS=%i", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16], v13);
    }
  }

  *a2 = -2144141311;
}

void VCRS255_SimdEncode_cold_10()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFECEncoder_Create_cold_2(uint64_t a1, const void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  CFRelease(a2);
}

void VCWRSFECEncoder_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFECEncoder_Create_cold_4(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
    }
  }

  *a2 = -2144141311;
}

void VCWRSFECEncoder_Create_cold_5()
{
  OUTLINED_FUNCTION_8_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRS_Encode_cold_1(uint64_t a1, int a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_36_3(&dword_1DB56E000, v5, v6, " [%s] %s:%d VCWRSFECEncoder[%p]: VCRS255_SimdEncode redundant bits failed - status=%d", v7, v8, v9, v10);
    }
  }

  *a3 = a2;
}

void VCWRS_Encode_cold_2(uint64_t a1, int a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_36_3(&dword_1DB56E000, v5, v6, " [%s] %s:%d VCWRSFECEncoder[%p]: VCRS255_SimdEncode failed - status=%d", v7, v8, v9, v10);
    }
  }

  *a3 = a2;
}

void VCWRS_Encode_cold_3()
{
  OUTLINED_FUNCTION_8_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRS_Encode_cold_4()
{
  OUTLINED_FUNCTION_8_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRS_Encode_cold_5()
{
  OUTLINED_FUNCTION_8_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFECEncoder_Enqueue_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = -2144141311;
}

void VCWRSFECEncoder_Enqueue_cold_2()
{
  OUTLINED_FUNCTION_8_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSUtil_FindTotalDataPackets_cold_1(_WORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d framesAmount is greater than maximum WR queue size", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCWRSUtil_FindTotalDataPackets_cold_2(_WORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d currentFrameIndex is greater than maximum WR queue size", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCWRSUtil_FindTotalDataPackets_cold_3(_WORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL object", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCWRSUtil_MultiCodewordsParamtersCalculation_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected! fecNumCodewords is 0!", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSUtil_MultiCodewordsParamtersCalculation_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL output multi codewords parameters", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSUtil_MultiCodewordsParamtersCalculation_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL input WRS queue", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSUtil_EncoderPermutation_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6_30();
      OUTLINED_FUNCTION_8_28(&dword_1DB56E000, v4, v5, " [%s] %s:%d Number of elements=%i less than step size=%i", v6, v7, v8, v9);
    }
  }

  *a3 = -2144141311;
}

void VCWRSUtil_EncoderPermutation_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL output buffer", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSUtil_DecoderInversePermutation_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6_30();
      OUTLINED_FUNCTION_8_28(&dword_1DB56E000, v4, v5, " [%s] %s:%d Number of elements=%i less than step size=%i", v6, v7, v8, v9);
    }
  }

  *a3 = -2144141311;
}

void VCWRSUtil_DecoderInversePermutation_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL output buffer", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

uint64_t VCWRSQueue_Create(int a1, void *a2)
{
  v2 = 2150694913;
  if (a1 == 1 && a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200406BD01464uLL);
    if (v4)
    {
      v2 = 0;
      *(v4 + 4) = 0;
      *(v4 + 12) = 0x10000FFFFFFFFLL;
      *v4 = 0;
      *a2 = v4;
    }

    else
    {
      v2 = 2150694915;
    }
  }

  VCWRSQueue_Destroy(0);
  return v2;
}

uint64_t VCWRSQueue_Destroy(const void **a1)
{
  if (!a1)
  {
    return 2150694913;
  }

  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
  return 0;
}

uint64_t VCWRSQueue_Enqueue(uint64_t a1, CFTypeRef cf)
{
  result = 2150694913;
  if (a1 && cf)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 18);
    if (v5 == v6)
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 8 * v7);
      if (v8)
      {
        CFRelease(v8);
        v7 = *(a1 + 8);
        *(a1 + 8 * v7) = 0;
        v6 = *(a1 + 18);
        LOWORD(v5) = *(a1 + 16);
      }

      else
      {
        v6 = *(a1 + 16);
      }

      *(a1 + 8 * v7) = 0;
      *(a1 + 8) = (v7 + 1) % v6;
      *(a1 + 16) = v5 - 1;
    }

    v9 = (*(a1 + 12) + 1) % v6;
    *(a1 + 12) = v9;
    *(a1 + 8 * v9) = cf;
    CFRetain(cf);
    result = 0;
    ++*(a1 + 16);
  }

  return result;
}

void VCWRSQueue_GetFrontIndex_cold_1(_WORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL object", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCWRSQueue_GetRearIndex_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VCWRSQueue_GetCapacity_cold_1(_WORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL object", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCWRSQueue_GetSize_cold_1(_WORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL object", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCWRSQueue_GetElement_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL object", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCWRSQueue_DistanceToFront_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_28();
      OUTLINED_FUNCTION_10_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d currentFrameIndex=%u greater than MAX_WRS_QUEUE_SIZE=%i", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VCWRSQueue_DistanceToFront_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VCWRSQueue_DistanceToFront_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VCWRSQueue_NextFrameIndex_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_28();
      OUTLINED_FUNCTION_10_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d currentFrameIndex=%u greater than MAX_WRS_QUEUE_SIZE=%i", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VCWRSQueue_NextFrameIndex_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VCWRSQueue_NextFrameIndex_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VCWRSFrame_Create_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_12_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_Create_cold_2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_12_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_Create_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFrame_Create_cold_4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_12_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_Create_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFrame_Create_cold_7()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_12_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_Create_cold_8()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_12_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_Create_cold_9()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFrame_Create_cold_10()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFrame_Create_cold_11()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_12_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_Create_cold_12()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFrame_Create_cold_13()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFrame_AddErasures_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFrame_AddErasures_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFrame_AddErasures_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCWRSFrame_GetFrameSequentialNumber_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCWRSFrame_GetNumberOfDataPackets_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void VCWRSFrame_GetNumberOfParityPackets_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void VCWRSFrame_SetNumberOfCodewords_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCWRSFrame_GetNumberOfLostData_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void VCWRSFrame_GetNumberOfReceivedParityPackets_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void VCWRSFrame_GetIsRecovered_cold_1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCWRSFrame_GetDataLocation_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_GetDataLocation_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCWRSFrame_GetPacketDataSize_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_GetPacketDataSize_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void VCWRSFrame_GetParityPacket_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_GetParityPacket_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCWRSFrame_GetParityPacketSize_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_GetParityPacketSize_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void VCWRSFrame_SetParitySizeLocation_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_SetParitySizeLocation_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCWRSFrame_SetNumberOfLostData_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCWRSFrame_SetIsRecovered_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCWRSFrame_GetLostDataPacketIndex_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_14_15();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_GetLostDataPacketIndex_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_14_15();
}

void VCWRSFrame_GetReceivedDataPacketIndex_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_14_15();
}

void VCWRSFrame_GetReceivedParityPacketIndex_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_14_15();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_GetReceivedParityPacketIndex_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_14_15();
}

void VCWRSFrame_SetReceivedData_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_SetReceivedData_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCWRSFrame_SetDataLocation_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_SetDataLocation_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCWRSFrame_SetDataPacketSize_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_SetDataPacketSize_cold_2()
{
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  *v0 = 1;
}

void VCWRSFrame_SetDataPacketSize_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCWRSFrame_GetRedundantBits_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_GetRedundantBits_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCWRSFrame_GetExtendedBytes_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_36();
}

void VCWRSFrame_GetExtendedBytes_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCBasebandNotificationParser_ParseNotification_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v0, v1, " [%s] %s:%d Corrupted baseband notification report packet. Length[%d] < needed[%d]", v2, v3, v4, v5, v6);
}

void VCBasebandNotificationParser_ParseNotification_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v0, v1, " [%s] %s:%d Corrupted baseband notification codec rate change packet. Length[%d] < needed[%d]", v2, v3, v4, v5, v6);
}

void VCBasebandNotificationParser_ParseNotification_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v0, v1, " [%s] %s:%d Corrupted baseband notification packet (cookie). Length[%d] < needed[%d]", v2, v3, v4, v5, v6);
}

void VCBasebandNotificationParser_ParseNotification_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v3 = 99;
  v4 = v0;
  v5 = 99;
  v6 = v0;
  v7 = 6;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCBasebandNotificationParser.c:%d: Got PTs more than VC_BBNOTE_MAX_PAYLOAD_TYPES (%d) in a DropACK", v2, 0x28u);
}

void VCBasebandNotificationParser_ParseNotification_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v0, v1, " [%s] %s:%d Corrupted baseband notification ACK packet. Length[%d] < needed[%d]", v2, v3, v4, v5, v6);
}

void VCBasebandNotificationParser_ParseNotification_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v0, v1, " [%s] %s:%d Corrupted baseband notification. Length[%d] < needed[%d]", v2, v3, v4, v5, v6);
}

void _VCPacketFilterBBNotificationFinalize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCPacketFilterBBNotificationFinalize_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 99;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Parameter 'filter' should not be NULL", &v2, 0x1Cu);
    }
  }
}

void _VCPacketFilterBBNotificationCopyProperty_cold_1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Unsupported property '%@' requested", v3, DWORD2(v3));
}

void _VCPacketFilterBBNotificationCopyProperty_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136316162;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_8_23(&dword_1DB56E000, v1, v2, " [%s] %s:%d Property name '%@' and property value out '%@' must not be NULL", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }

  OUTLINED_FUNCTION_6_31();
}

void _VCPacketFilterBBNotificationCopyProperty_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_6_31();
}

void _VCPacketFilterBBNotificationSetProperty_cold_1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Unsupported property '%@' requested", v3, DWORD2(v3));
}

void _VCPacketFilterBBNotificationSetProperty_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136316162;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_8_23(&dword_1DB56E000, v1, v2, " [%s] %s:%d Property name '%@' and property value out '%@' must not be NULL", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }

  OUTLINED_FUNCTION_6_31();
}

void _VCPacketFilterBBNotificationSetProperty_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_6_31();
}

void VCImageResizingConverter_CreateResizedPixelBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d CVPixelBufferPoolCreatePixelBuffer failed", v2, v3, v4, v5);
    }
  }
}

void VCImageResizingConverter_CreateResizedPixelBuffer_cold_2(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      OUTLINED_FUNCTION_6();
      v8 = 60;
      v9 = v4;
      v10 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTPixelTransferSessionTransferImage failed: %d", &v5, 0x22u);
    }
  }
}

void VCImageResizingConverter_CreateResizedPixelBuffer_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v4 = 63;
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d CVO=0x%02x", v3, 0x22u);
}

void VCImageResizingConverter_CreateResizedPixelBuffer_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _bufferPool is NULL", v2, v3, v4, v5);
    }
  }
}

void VCImageResizingConverter_CreateResizedPixelBuffer_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _transferSession is NULL", v2, v3, v4, v5);
    }
  }
}

void _VCImageResizingConverter_CreateSampleBufferWithNewTiming_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v4 = 85;
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d CMSampleBufferCreateCopyWithNewTiming failed with error=%d", v3, 0x22u);
}

void _VCImageResizingConverter_CreateSampleBufferWithNewTiming_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Input sample buffer is NULL", v2, v3, v4, v5);
    }
  }
}

void VCMicrophonePreferencesAVAS_BuiltInMicPortDescriptionFromSelectableInputsArray_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  v4 = 0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d selectableInputs is invalid=%p", &v2, 0x26u);
}

void VCMicrophonePreferencesAVAS_DataSourcesFromPortDescription_cold_1(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v9 = a1;
      v10 = v6;
      v11 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Did not find both orientations: front=%p, back=%p", &v7, 0x30u);
    }
  }
}

void VCMicrophonePreferencesAVAS_DataSourcesFromPortDescription_cold_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v9 = a1;
      v10 = v6;
      v11 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d frontDataSource [%p] or backDataSource [%p] == nil", &v7, 0x30u);
    }
  }
}

void VCMicrophonePreferencesAVAS_DataSourcesFromPortDescription_cold_3()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315906;
      v3 = v0;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v4 = 0;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d builtInMicPort invalid=%p", &v2, 0x26u);
    }
  }
}

void VCMicrophonePreferencesAVAS_ApplyMicrophonePreferences_cold_1(_BYTE *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v6 = 0;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d selectedInputDict [%p] == nil", &v4, 0x26u);
    }
  }

  *a1 = 0;
}

int32x4_t *_VCViewpointCorrection_UpdateCenterStageTransform(uint64_t a1, CMAttachmentBearerRef target)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!target)
  {
    return 0;
  }

  result = CMGetAttachment(target, *MEMORY[0x1E6990CF8], 0);
  if (result)
  {
    result = CFDataGetBytePtr(result);
    if (result)
    {
      v4 = 0;
      v5 = result[1];
      v6 = result[2];
      v7 = result[3];
      v8 = vzip1q_s32(*result, v6);
      v9 = vzip2q_s32(*result, v6);
      v10 = vzip1q_s32(v5, v7);
      v13[0] = vzip1q_s32(v8, v10);
      v13[1] = vzip2q_s32(v8, v10);
      v13[2] = vzip1q_s32(v9, vzip2q_s32(v5, v7));
      do
      {
        for (i = 0; i != 3; ++i)
        {
          *(a1 + i * 16 + 4 * (v4 & 3)) = *(&v13[i] + (v4 & 3));
        }

        v12 = v4++;
      }

      while (v12 < 2);
      return 1;
    }
  }

  return result;
}

CFArrayRef _VCViewpointCorrection_CreateCameraExtrinsicsArray(const void *a1, uint64_t a2)
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = VCHardwareSettings_FrontCameraOffsetFromDisplayCenter(a1, a2);
  *&v4 = COERCE_UNSIGNED_INT(1.0);
  DWORD2(v4) = 0;
  *(&v4 + 3) = v3;
  v112 = v4;
  v6 = *&v5;
  LODWORD(v5) = 0;
  DWORD1(v5) = 1.0;
  DWORD2(v5) = 0;
  *(&v5 + 3) = v6;
  v113 = v5;
  v114 = xmmword_1DBD4EA30;
  _VCViewpointCorrection_UpdateCenterStageTransform(&v112, a1);
  v90 = v112;
  v107 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v14 = OUTLINED_FUNCTION_6_32(v107, v7, v8, v9, v10, v11, v12, v13, v90);
  v14.n128_u32[0] = v14.n128_u32[1];
  v108 = [v15 numberWithFloat:v14.n128_f64[0]];
  v23 = OUTLINED_FUNCTION_6_32(v108, v16, v17, v18, v19, v20, v21, v22, v91);
  v23.n128_u32[0] = v23.n128_u32[2];
  v109 = [v24 numberWithFloat:v23.n128_f64[0]];
  v32 = OUTLINED_FUNCTION_6_32(v109, v25, v26, v27, v28, v29, v30, v31, v92);
  v32.n128_u32[0] = v32.n128_u32[3];
  v110 = [v33 numberWithFloat:v32.n128_f64[0]];
  v111[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:4];
  v93 = v113;
  v103 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v41 = OUTLINED_FUNCTION_6_32(v103, v34, v35, v36, v37, v38, v39, v40, v93);
  v41.n128_u32[0] = v41.n128_u32[1];
  v104 = [v42 numberWithFloat:v41.n128_f64[0]];
  v50 = OUTLINED_FUNCTION_6_32(v104, v43, v44, v45, v46, v47, v48, v49, v94);
  v50.n128_u32[0] = v50.n128_u32[2];
  v105 = [v51 numberWithFloat:v50.n128_f64[0]];
  v59 = OUTLINED_FUNCTION_6_32(v105, v52, v53, v54, v55, v56, v57, v58, v95);
  v59.n128_u32[0] = v59.n128_u32[3];
  v106 = [v60 numberWithFloat:v59.n128_f64[0]];
  v111[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:4];
  v96 = v114;
  v99 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v68 = OUTLINED_FUNCTION_6_32(v99, v61, v62, v63, v64, v65, v66, v67, v96);
  v68.n128_u32[0] = v68.n128_u32[1];
  v100 = [v69 numberWithFloat:v68.n128_f64[0]];
  v77 = OUTLINED_FUNCTION_6_32(v100, v70, v71, v72, v73, v74, v75, v76, v97);
  v77.n128_u32[0] = v77.n128_u32[2];
  v101 = [v78 numberWithFloat:v77.n128_f64[0]];
  v86 = OUTLINED_FUNCTION_6_32(v101, v79, v80, v81, v82, v83, v84, v85, v98);
  v86.n128_u32[0] = v86.n128_u32[3];
  v102 = [v87 numberWithFloat:v86.n128_f64[0]];
  v111[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:4];
  v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:3];
  return CFArrayCreateCopy(*MEMORY[0x1E695E480], v88);
}

void VCViewpointCorrection_PrepareProcessDictionary(opaqueCMSampleBuffer *a1, CFArrayRef a2, CFNumberRef Dimensions, __CFDictionary *a4)
{
  v7 = a1;
  v183 = *MEMORY[0x1E69E9840];
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  CFDictionarySetValue(a4, _MergedGlobals_14, ImageBuffer);
  LODWORD(valuePtr[0]) = Dimensions;
  v9 = *MEMORY[0x1E695E480];
  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  if (v10)
  {
    Dimensions = v10;
    CFDictionarySetValue(a4, qword_1EDBDA968, v10);
    CFRelease(Dimensions);
  }

  CMGetAttachment(v7, *MEMORY[0x1E6960470], 0);
  *&v12 = OUTLINED_FUNCTION_12_10(MEMORY[0x1E69E9B10]).n128_u64[0];
  if (v11 && (Dimensions = v11, CFDataGetLength(v11) >= 48))
  {
    v184.location = 0;
    v184.length = 48;
    CFDataGetBytes(Dimensions, v184, valuePtr);
  }

  else
  {
    if (qword_1EDBDA970 != a2)
    {
      qword_1EDBDA970 = a2;
      Dimensions = CMVideoFormatDescriptionGetDimensions([(__CFArray *)a2 formatDescription]);
      [(__CFArray *)a2 videoFieldOfView];
      v22 = tan(v21 * 3.14159265 / 180.0 * 0.5);
      *&v22 = Dimensions / (v22 + v22);
      LODWORD(v23) = 0;
      HIDWORD(v23) = LODWORD(v22);
      dword_1EDBDA988 = 0;
      qword_1EDBDA980 = LODWORD(v22);
      dword_1EDBDA998 = 0;
      qword_1EDBDA990 = v23;
      dword_1EDBDA9A8 = 1065353216;
      qword_1EDBDA9A0 = vadd_f32(vmul_f32(vcvt_f32_s32(Dimensions), 0x3F0000003F000000), 0xBF000000BF000000);
    }

    OUTLINED_FUNCTION_12_10(&qword_1EDBDA980);
  }

  v24 = OUTLINED_FUNCTION_4_29(v13, v14, v15, v16, v17, v18, v19, v20, valuePtr[0], v152, v155, cf, v161, theDict, v167);
  if (v24)
  {
    v32 = v24;
    v33 = OUTLINED_FUNCTION_4_29(v24, v25, v26, v27, v28, v29, v30, v31, valuePtr[5], v153, v156, cfa, v162, theDicta, v167);
    if (!v33)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_34())
        {
          OUTLINED_FUNCTION_1_24();
          OUTLINED_FUNCTION_0_17();
          v181 = 170;
          OUTLINED_FUNCTION_2_23(&dword_1DB56E000, v111, v112, " [%s] %s:%d Failed to allocate fy", v113, v114, v115, v116, v153, v156, cfa, v162, theDicta, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
        }
      }

      v65 = v32;
LABEL_30:
      CFRelease(v65);
      goto LABEL_31;
    }

    v41 = v33;
    v42 = OUTLINED_FUNCTION_4_29(v33, v34, v35, v36, v37, v38, v39, v40, valuePtr[8], v153, v156, cfa, v162, theDicta, v167);
    v50 = v42;
    v162 = v7;
    theDicta = a4;
    cfa = v32;
    if (v42)
    {
      v51 = OUTLINED_FUNCTION_4_29(v42, v43, v44, v45, v46, v47, v48, v49, valuePtr[9], v153, v156, v32, v7, a4, v167);
      v167 = 0;
      v52 = CFNumberCreate(v9, kCFNumberCGFloatType, &v167);
      if (v52)
      {
        v53 = v52;
        v167 = 0x3FF0000000000000;
        v54 = CFNumberCreate(v9, kCFNumberCGFloatType, &v167);
        if (v54)
        {
          v56 = v54;
          v177 = v32;
          v178 = v53;
          v179 = v50;
          v174 = v53;
          v175 = v41;
          v176 = v51;
          v171 = v53;
          v172 = v53;
          v173 = v54;
          v57 = OUTLINED_FUNCTION_14_16(v54, &v177, v55, MEMORY[0x1E695E9C0]);
          if (v57)
          {
            a4 = v57;
            v59 = OUTLINED_FUNCTION_14_16(v57, &v174, v58, MEMORY[0x1E695E9C0]);
            if (v59)
            {
              a2 = v59;
              v61 = OUTLINED_FUNCTION_14_16(v59, &v171, v60, MEMORY[0x1E695E9C0]);
              if (v61)
              {
                v32 = v61;
                v168 = a4;
                v169 = a2;
                v170 = v61;
                v63 = OUTLINED_FUNCTION_14_16(v61, &v168, v62, MEMORY[0x1E695E9C0]);
                if (v63)
                {
                  Dimensions = v63;
                }

                else
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v156 = VRTraceErrorLogLevelToCSTR();
                    v150 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v180.value) = 136315650;
                      *(&v180.value + 4) = v156;
                      OUTLINED_FUNCTION_0_17();
                      v181 = 198;
                      OUTLINED_FUNCTION_26(&dword_1DB56E000, v150, v151, " [%s] %s:%d Failed to allocate intrinisc array", &v180);
                    }
                  }

                  Dimensions = 0;
                }
              }

              else
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v147 = VRTraceErrorLogLevelToCSTR();
                  v148 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v180.value) = 136315650;
                    *(&v180.value + 4) = v147;
                    OUTLINED_FUNCTION_0_17();
                    v181 = 194;
                    OUTLINED_FUNCTION_26(&dword_1DB56E000, v148, v149, " [%s] %s:%d Failed to allocate row2", &v180);
                  }
                }

                Dimensions = 0;
                v32 = 0;
              }
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (OUTLINED_FUNCTION_34())
                {
                  OUTLINED_FUNCTION_1_24();
                  OUTLINED_FUNCTION_0_17();
                  v181 = 191;
                  OUTLINED_FUNCTION_2_23(&dword_1DB56E000, v141, v142, " [%s] %s:%d Failed to allocate row1", v143, v144, v145, v146, v153, v156, cfa, v162, theDicta, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
                }
              }

              Dimensions = 0;
              v32 = 0;
              a2 = 0;
            }
          }

          else
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              Dimensions = VRTraceErrorLogLevelToCSTR();
              a2 = *MEMORY[0x1E6986650];
              if (OUTLINED_FUNCTION_34())
              {
                OUTLINED_FUNCTION_1_24();
                OUTLINED_FUNCTION_0_17();
                v181 = 188;
                OUTLINED_FUNCTION_2_23(&dword_1DB56E000, v135, v136, " [%s] %s:%d Failed to allocate row0", v137, v138, v139, v140, v153, v156, cfa, v162, theDicta, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
              }
            }

            OUTLINED_FUNCTION_3_33();
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            Dimensions = VRTraceErrorLogLevelToCSTR();
            a2 = *MEMORY[0x1E6986650];
            if (OUTLINED_FUNCTION_34())
            {
              OUTLINED_FUNCTION_1_24();
              OUTLINED_FUNCTION_0_17();
              v181 = 182;
              OUTLINED_FUNCTION_2_23(&dword_1DB56E000, v129, v130, " [%s] %s:%d Failed to allocate one", v131, v132, v133, v134, v153, v156, cfa, v162, theDicta, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
            }
          }

          OUTLINED_FUNCTION_3_33();
          v56 = 0;
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          Dimensions = VRTraceErrorLogLevelToCSTR();
          a2 = *MEMORY[0x1E6986650];
          if (OUTLINED_FUNCTION_34())
          {
            OUTLINED_FUNCTION_1_24();
            OUTLINED_FUNCTION_0_17();
            v181 = 179;
            OUTLINED_FUNCTION_2_23(&dword_1DB56E000, v123, v124, " [%s] %s:%d Failed to allcoate zero", v125, v126, v127, v128, v153, v156, cfa, v162, theDicta, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
          }
        }

        OUTLINED_FUNCTION_3_33();
        v56 = 0;
        v53 = 0;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        Dimensions = VRTraceErrorLogLevelToCSTR();
        a2 = *MEMORY[0x1E6986650];
        if (OUTLINED_FUNCTION_34())
        {
          OUTLINED_FUNCTION_1_24();
          OUTLINED_FUNCTION_0_17();
          v181 = 173;
          OUTLINED_FUNCTION_2_23(&dword_1DB56E000, v117, v118, " [%s] %s:%d Failed to allocate cx", v119, v120, v121, v122, v153, v156, v32, v7, a4, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
        }
      }

      OUTLINED_FUNCTION_3_33();
      v56 = 0;
      v53 = 0;
      v51 = 0;
    }

    CFRelease(cfa);
    CFRelease(v41);
    if (v50)
    {
      CFRelease(v50);
      if (!v51)
      {
LABEL_21:
        if (!a4)
        {
          goto LABEL_22;
        }

        goto LABEL_43;
      }
    }

    else if (!v51)
    {
      goto LABEL_21;
    }

    CFRelease(v51);
    if (!a4)
    {
LABEL_22:
      if (!a2)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_43:
    CFRelease(a4);
    if (!a2)
    {
LABEL_24:
      a4 = theDicta;
      if (v32)
      {
        CFRelease(v32);
        if (!v53)
        {
LABEL_26:
          if (!v56)
          {
LABEL_28:
            v7 = v162;
            if (!Dimensions)
            {
              goto LABEL_31;
            }

            CFDictionarySetValue(theDicta, qword_1EDBDA948, Dimensions);
            v65 = Dimensions;
            goto LABEL_30;
          }

LABEL_27:
          CFRelease(v56);
          goto LABEL_28;
        }
      }

      else if (!v53)
      {
        goto LABEL_26;
      }

      CFRelease(v53);
      if (!v56)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_23:
    CFRelease(a2);
    goto LABEL_24;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_1_24();
      OUTLINED_FUNCTION_0_17();
      v181 = 167;
      OUTLINED_FUNCTION_2_23(&dword_1DB56E000, v105, v106, " [%s] %s:%d Failed to allocate fx", v107, v108, v109, v110, v153, v156, cfa, v162, theDicta, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
    }
  }

LABEL_31:
  CameraExtrinsicsArray = _VCViewpointCorrection_CreateCameraExtrinsicsArray(v7, v64);
  if (CameraExtrinsicsArray)
  {
    v67 = CameraExtrinsicsArray;
    CFDictionarySetValue(a4, qword_1EDBDA950, CameraExtrinsicsArray);
    CFRelease(v67);
  }

  LODWORD(v177) = 0;
  v68 = CMGetAttachment(v7, *MEMORY[0x1E6990D00], 0);
  if (v68)
  {
    CFNumberGetValue(v68, kCFNumberFloatType, &v177);
    v69 = CFNumberCreate(v9, kCFNumberFloatType, &v177);
    CFDictionarySetValue(a4, qword_1EDBDA958, v69);
    CFRelease(v69);
  }

  memset(&v180, 170, sizeof(v180));
  PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v180, v7);
  v78 = OUTLINED_FUNCTION_5_26(PresentationTimeStamp, v71, v72, v73, v74, v75, v76, v77, v153, v156, cfa, v162, theDicta, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, *&v180.value, v180.epoch);
  v79 = CMTimeCopyAsDictionary(v78, 0);
  if (v79)
  {
    v80 = v79;
    CFDictionarySetValue(a4, qword_1EDBDA960, v79);
    CFRelease(v80);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v81 = *MEMORY[0x1E6986650];
    v82 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
      if (v83)
      {
        v91 = OUTLINED_FUNCTION_5_26(v83, v84, v85, v86, v87, v88, v89, v90, v154, v157, cfb, v163, theDictb, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, *&v180.value, v180.epoch);
        Seconds = CMTimeGetSeconds(v91);
        OUTLINED_FUNCTION_10_15(Seconds, 4.8153e-34);
        OUTLINED_FUNCTION_7_22("VCViewpointCorrection_PrepareProcessDictionary", v93);
        _os_log_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Viewpoint Correction for timestamp: %f", valuePtr, 0x26u);
      }
    }

    else
    {
      v94 = os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG);
      if (v94)
      {
        v102 = OUTLINED_FUNCTION_5_26(v94, v95, v96, v97, v98, v99, v100, v101, v154, v157, cfb, v163, theDictb, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, *&v180.value, v180.epoch);
        v103 = CMTimeGetSeconds(v102);
        OUTLINED_FUNCTION_10_15(v103, 4.8153e-34);
        OUTLINED_FUNCTION_7_22("VCViewpointCorrection_PrepareProcessDictionary", v104);
        _os_log_debug_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Viewpoint Correction for timestamp: %f", valuePtr, 0x26u);
      }
    }
  }
}

void __VCLoadAppleCVA_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "VCLoadAppleCVA_block_invoke";
  v7 = 1024;
  v8 = 48;
  v9 = 2080;
  v10 = dlerror();
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to soft link AppleCVA.framework: %s", &v3, 0x26u);
}

void VCViewpointCorrection_CorrectViewpoint_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315906;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "VCViewpointCorrection_CorrectViewpoint";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, a2, a3, " [%s] %s:%d CVAViewpointCorrectProcess failed: %d", *v3, *&v3[8], "VCViewpointCorrection_CorrectViewpoint" >> 16, 324);
}

void VCViewpointCorrection_CorrectViewpoint_cold_2(_DWORD *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 303;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to allocate the view point correction parameter dictionary", &v7);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

void VCSecurityKeyHolder_CopyKeyManager_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d keyHolder should not be NULL", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCSecurityKeyHolder_ParticipantID_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d keyHolder should not be NULL", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCSecurityKeyHolder_SecurityKeyMode_cold_1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d keyHolder should not be NULL", v4, v5, v6, v7);
    }
  }

  *a1 = -1;
}

void VCSecurityKeyHolder_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Create instance failed", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSecurityKeyHolder_Create_cold_3()
{
  OUTLINED_FUNCTION_3_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid securityKeyMode", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSecurityKeyHolder_Create_cold_4(int a1, _DWORD *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "VCSecurityKeyHolder_Create";
      v10 = 1024;
      v11 = 152;
      v12 = 1024;
      v13 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d usage has invalid value '%d'", &v6, 0x22u);
    }
  }

  *a2 = -2143354879;
}

void VCSecurityKeyHolder_Create_cold_5()
{
  OUTLINED_FUNCTION_3_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d keyManager should not be NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSecurityKeyHolder_Create_cold_6()
{
  OUTLINED_FUNCTION_3_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d keyHolder should not be NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Immutable instance does not have key manager", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex_cold_2()
{
  OUTLINED_FUNCTION_3_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d MKMList should not be NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex_cold_3()
{
  OUTLINED_FUNCTION_3_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d keyHolder should not be NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSecurityKeyHolder_RegisterForKeyMaterialChangeNotification_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Can not set key material change notification handler for immutable instance of VCSecurityKeyholder", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSecurityKeyHolder_RegisterForKeyMaterialChangeNotification_cold_2()
{
  OUTLINED_FUNCTION_3_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d keyHolder should not be NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCSecurityKeyHolder_KeyMaterialCallback_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "_VCSecurityKeyHolder_KeyMaterialCallback";
  v7 = 1024;
  v8 = 109;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Wrong notification received from VCSecurityKeyManager : '%@'", &v3, 0x26u);
}

void VCSecurityKeyHolder_AssociateKeyIndex_cold_1()
{
  OUTLINED_FUNCTION_3_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d keyIndex should not be NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSecurityKeyHolder_AssociateKeyIndex_cold_2()
{
  OUTLINED_FUNCTION_3_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d keyHolder should not be NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_5(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 217;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error in preparing output", &v2, 0x1Cu);
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_6()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_7(int a1, int a2, _DWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "_VCFECGeneratorGroupBased_EncodeCurrentGroup";
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      v13 = a1;
      v14 = v8;
      v15 = a2;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Number of parity can't be larger than input packets parityPacketsNeeded=%d numPacketsInGroup=%d", &v9, 0x28u);
    }
  }

  *a3 = -2144141298;
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_8()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_9(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 252;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d FEC Encode failed", &v2, 0x1Cu);
}

void _VCFECGeneratorGroupBased_PerformTryEncode_cold_10()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorGroupBased_FlushPackets_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorGroupBased_PassThrough_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorGroupBased_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorGroupBased_Create_cold_2(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v4, v5, " [%s] %s:%d failed error=%d", v6, v7, v8, v9);
    }
  }

  *a2 = a1;
}

void VCFECGeneratorGroupBased_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorGroupBased_Create_cold_4(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v3, v4, " [%s] %s:%d invalid fec header version=%d", v5, v6, v7, v8);
    }
  }

  *a2 = -2144141311;
}

uint64_t VCFECGeneratorGroupBased_Create_cold_5(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }

  result = 0;
  *a1 = -2144141311;
  return result;
}

void VCDTMFToneGenerator_Reinit_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  OUTLINED_FUNCTION_6();
  v7 = 204;
  v8 = v1;
  v9 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Received Invalid sampleRate=%d", &v4, 0x22u);
}

void VCDTMFToneGenerator_Reinit_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_2_24();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = v2;
}

void VCDTMFToneGenerator_Reinit_cold_3(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_2_24();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = v2;
}

void VCDTMFToneGenerator_GenerateSamples_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_2_24();
  if (v5 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x26u);
    }
  }

  *a3 = v3;
}

void VCAudioFrameDelay_Create_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Failed to allocate the audio frame", v2, v3, v4, v5);
}

void VCAudioFrameDelay_Create_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Failed to setup the audio frames", v2, v3, v4, v5);
}

void VCAudioFrameDelay_Create_cold_4(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v9 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d [%p] Failed to setup the audio frames", &v6, 0x26u);
    }
  }

  *a2 = 0;
}

void VCAudioFrameDelay_Create_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCAudioFrameDelay_Create_cold_6()
{
  OUTLINED_FUNCTION_10_16();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCAudioFrameDelay_Create_cold_7()
{
  OUTLINED_FUNCTION_10_16();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCAudioFrameDelay_PullAudioSamples_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCAudioFrameDelay_PullAudioSamples_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCAudioFrameDelay_UpdateDelay_cold_1()
{
  OUTLINED_FUNCTION_10_16();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCAudioFrameDelay_RemoveDelayFrame_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Cannot remove frame that isn't in the list", v2, v3, v4, v5);
}

void _VCAudioFrameDelay_RemoveDelayFrame_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Frame cannot be removed from empty list", v2, v3, v4, v5);
}

void _VCAudioFrameDelay_RemoveDelayFrame_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Frame cannot be removed NULL frame", v2, v3, v4, v5);
}

void _VCAudioFrameDelay_AllocateDelayFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCAudioFrameDelay_AllocateDelayFrame_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCAudioFrameDelay_AllocateDelayFrame_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCAudioFrameDelay_InsertDelayFrame_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Cannot insert frame that is already in the list", v2, v3, v4, v5);
}

void _VCAudioFrameDelay_InsertDelayFrame_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Frame cannot be insert NULL frame", v2, v3, v4, v5);
}

void VCSignalErrorAt_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "VCSignalErrorAt";
  v8 = 1024;
  v9 = 25;
  v10 = 2080;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s", &v4, 0x26u);
}

void VCSignalErrorAt_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCSignalErrorAt";
  v6 = 1024;
  v7 = 23;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create formattedArguments", &v2, 0x1Cu);
}

void VCAudioIssueDetector_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_Create_cold_4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 43;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCAudioIssueDetector creation failed", &v2, 0x1Cu);
}

void VCAudioIssueDetector_Finalize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_Finalize_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_Configure_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  HIWORD(v5) = v0;
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCAudioIssueDetector=%p configured", v2, v3, v4, v5);
}

void VCAudioIssueDetector_Configure_cold_2()
{
  OUTLINED_FUNCTION_8_30(*MEMORY[0x1E69E9840]);
  if (v0 == v1)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_UpdateConnectionType_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  HIWORD(v5) = v0;
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCAudioIssueDetector=%p link type updated", v2, v3, v4, v5);
}

void VCAudioIssueDetector_UpdateConnectionType_cold_2()
{
  OUTLINED_FUNCTION_8_30(*MEMORY[0x1E69E9840]);
  if (v0 == v1)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_ProcessCellularNetworkNotification_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  HIWORD(v5) = v0;
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCAudioIssueDetector=%p NW notification received", v2, v3, v4, v5);
}

void VCAudioIssueDetector_ProcessCellularNetworkNotification_cold_2()
{
  OUTLINED_FUNCTION_8_30(*MEMORY[0x1E69E9840]);
  if (v0 == v1)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_Start_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  HIWORD(v5) = v0;
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCAudioIssueDetector=%p started", v2, v3, v4, v5);
}

void VCAudioIssueDetector_Start_cold_2()
{
  OUTLINED_FUNCTION_8_30(*MEMORY[0x1E69E9840]);
  if (v0 == v1)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_Stop_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  HIWORD(v5) = v0;
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCAudioIssueDetector=%p stopped", v2, v3, v4, v5);
}

void VCAudioIssueDetector_Stop_cold_2()
{
  OUTLINED_FUNCTION_8_30(*MEMORY[0x1E69E9840]);
  if (v0 == v1)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_ProcessFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136316162;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_15_11();
      OUTLINED_FUNCTION_10_17(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid parameter issueDetector=%p frameInfo=%p", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }
}

void VCAudioIssueDetector_ReportRTPTraffic_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_ReportRTCPTraffic_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioIssueDetector_GetReportingStats_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136316162;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_15_11();
      OUTLINED_FUNCTION_10_17(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid parameter issueDetector=%p reportingStats=%p", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }
}

void VCAudioIssueDetector_FlushLogEvents_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCFECGeneratorCommon_Init_cold_1()
{
  OUTLINED_FUNCTION_6_33();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d single list initialization failed", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_Init_cold_2()
{
  OUTLINED_FUNCTION_6_33();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d single list initialization failed", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_Init_cold_3()
{
  OUTLINED_FUNCTION_6_33();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d memory pool allocate failed", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_Init_cold_4(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_12_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = v2;
}

void VCFECGeneratorCommon_Init_cold_5(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_12_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = v2;
}

void VCFECGeneratorCommon_Init_cold_6()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL objectInstance", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_Finalize_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v2 = 101;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fecGenerator->_reportingAgent is NULL!", v1, 0x1Cu);
    }
  }
}

void VCFECGeneratorCommon_FlushPackets_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }
}

void VCFECGeneratorCommon_PushPacket_cold_1()
{
  OUTLINED_FUNCTION_6_33();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL fail to allocate list entry", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_PushPacket_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL packetBuffer", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_PushPacket_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_PopPacket_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL list entry", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_PopPacket_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL packetBuffer", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_PopPacket_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_PassThrough_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }
}

void VCFECGeneratorCommon_GetNumberOutputPackets_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL object", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCFECGeneratorCommon_GetNumberOutputMediaPackets_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL object", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCFECGeneratorCommon_SetFixedFECLevel_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d FEC level not in valid range", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_SetFixedFECLevel_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_SetFECLevelPerBlockSizeVector_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_12_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x28u);
    }
  }

  *a2 = v2;
}

void VCFECGeneratorCommon_SetFECLevelPerBlockSizeVector_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL object", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_UpdateProcessingAverageTime_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecGeneratorCommonStorage is NULL", v2, v3, v4, v5);
    }
  }
}

void VCFECGeneratorCommon_GetProcessingAverageTime_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d fecGenerator is NULL", v4, v5, v6, v7);
    }
  }

  *a1 = 0x7FF8000000000000;
}

void VCFECGeneratorCommon_Encode_PrepareOutputSinglePacketFrame_cold_1()
{
  OUTLINED_FUNCTION_6_33();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failure in allocating an entry list", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_Encode_PrepareOutputSinglePacketFrame_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecGeneratorCommonStorage is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorCommon_Encode_CleanBlockBuffers_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecGeneratorCommonStorage is NULL", v2, v3, v4, v5);
    }
  }
}

void VCConnectionHealthMonitor_UpdateReceiveStats_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d nil instance passed", v2, v3, v4, v5);
    }
  }
}

void VCConnectionHealthMonitor_ReportConnectionHealthWithStatsHistory_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d nil statsHistory passed", v2, v3, v4, v5);
    }
  }
}

void VCConnectionHealthMonitor_ReportConnectionHealthWithStatsHistory_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d nil instance passed", v2, v3, v4, v5);
    }
  }
}

void VCConnectionHealthMonitor_IsPrimaryConnectionImprovedFromHistory_cold_1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v2, v3, " [%s] %s:%d nil statsHistory passed", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCConnectionHealthMonitor_IsPrimaryConnectionImprovedFromHistory_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v2, v3, " [%s] %s:%d nil statsHistory passed", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCConnectionHealthMonitor_IsPrimaryConnectionImprovedFromHistory_cold_3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v2, v3, " [%s] %s:%d nil instance passed", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCPixelBufferOverlay_updateOverlayWithPixelBuffer_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9) = 136315650;
      *(&v9 + 4) = v2;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v3, v4, " [%s] %s:%d CTFramesetterCreateFrame was NULL", v5, v6, v7, v8, v9, DWORD2(v9));
    }
  }

  *a1 = 0;
}

void VCPixelBufferOverlay_updateOverlayWithPixelBuffer_cold_2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9) = 136315650;
      *(&v9 + 4) = v2;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v3, v4, " [%s] %s:%d CGPathCreateMutable was NULL", v5, v6, v7, v8, v9, DWORD2(v9));
    }
  }

  *a1 = 0;
}

void VCFFTMeter_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the first come allocator", v2, v3, v4, v5);
    }
  }
}

void VCFFTMeter_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the FFT", v2, v3, v4, v5);
    }
  }
}

void VCFFTMeter_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the FFT meter", v2, v3, v4, v5);
    }
  }
}

void _VCPacketFilterRTPFinalize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCPacketFilterRTPFinalize_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 114;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Parameter 'filter' should not be NULL", &v2, 0x1Cu);
    }
  }
}

void _VCPacketFilterRTPCopyProperty_cold_1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Unsupported property '%@' requested", v3, DWORD2(v3));
}

void _VCPacketFilterRTPCopyProperty_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136316162;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_8_23(&dword_1DB56E000, v1, v2, " [%s] %s:%d Property name '%@' and property value out '%@' must not be NULL", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }

  OUTLINED_FUNCTION_6_31();
}

void _VCPacketFilterRTPCopyProperty_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_6_31();
}

void _VCPacketFilterRTPSetProperty_cold_1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Unsupported property '%@' requested", v3, DWORD2(v3));
}

void _VCPacketFilterRTPSetProperty_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136316162;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_8_23(&dword_1DB56E000, v1, v2, " [%s] %s:%d Property name '%@' and property value out '%@' must not be NULL", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }

  OUTLINED_FUNCTION_6_31();
}

void _VCPacketFilterRTPSetProperty_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_6_31();
}

void _VCXPCConnection_timeoutHandlerFunc_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 110;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVConferenceXPCServer [%s] %s:%d ##### XPC Call timeout event", v1, 0x1Cu);
}

void VCSpatialAudioMetadata_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create the CoreAudio spatial metadata. error=%u", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCSpatialAudioMetadata_Create_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to retrieve spatial metadata serialized size. error=%u", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCSpatialAudioMetadata_Create_cold_5()
{
  OUTLINED_FUNCTION_6_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Create_cold_6()
{
  OUTLINED_FUNCTION_6_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Create_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Create_cold_8()
{
  OUTLINED_FUNCTION_6_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Create_cold_9()
{
  OUTLINED_FUNCTION_6_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Create_cold_10()
{
  OUTLINED_FUNCTION_6_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Create_cold_11()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Create_cold_12()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Create_cold_13()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_CreateEntry_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_CreateEntry_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_CreateEntry_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_CreateEntry_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata entry address is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_ChannelIndex_cold_1()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_ChannelIndex_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_ChannelIndex_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Entry is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_UpdateGlobalInfo_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCSpatialAudioMetadata_UpdateGlobalInfo_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCSpatialAudioMetadata_UpdateGlobalInfo_cold_3()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_UpdateGlobalInfo_cold_4()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_UpdateGlobalInfo_cold_5()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_UpdateGlobalInfo_cold_6()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_UpdateGlobalInfo_cold_7()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_UpdateGlobalInfo_cold_8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_UpdateOrientation_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_6();
  v6 = 332;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid orientation=%u", v4, 0x22u);
}

void VCSpatialAudioMetadata_UpdateOrientation_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_UpdatePositionalInfo_cold_1()
{
  OUTLINED_FUNCTION_5_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_UpdatePositionalInfo_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_UpdatePositionalInfo_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Entry is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_Serialize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Serialize_cold_2()
{
  OUTLINED_FUNCTION_6_34();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSpatialAudioMetadata_Serialize_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_Serialize_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d serializedBuffer is NULL", v2, v3, v4, v5);
}

void VCSpatialAudioMetadata_SetNeedsRefresh_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata is NULL", v2, v3, v4, v5);
}

void _VCSpatialAudioMetadata_Finalize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136315650;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v1, v2, " [%s] %s:%d The metadata still has an active channel. Unable to release the metadata", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }
}

void _VCSpatialAudioMetadata_Finalize_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136315650;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v1, v2, " [%s] %s:%d Metadata is NULL", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }
}

void _VCSpatialAudioMetadataEntry_Finalize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Channel is NULL", v2, v3, v4, v5);
}

void _VCSpatialAudioMetadataEntry_Finalize_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata is NULL", v2, v3, v4, v5);
}

void _VCSpatialAudioMetadataEntry_Finalize_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Metadata entry is NULL", v2, v3, v4, v5);
}

void VCTimescalePSOLA_CheckforSignalCorrelation_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCTimescalePSOLA_CheckforSignalCorrelation";
  v6 = 1024;
  v7 = 387;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Down sample coarse correlation failed", &v2, 0x1Cu);
}

void VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not create the shared memory pool for the new VCRemoteImageQueue sender returning NULL", v2, v3, v4, v5);
    }
  }
}

void VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

void VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate remoteImageQueue", v2, v3, v4, v5);
    }
  }
}

void VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_5(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 30;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Passed in NULL for remoteImageQueue", &v2, 0x1Cu);
}

void VCRemoteImageQueue_CreateReceiverQueue_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 69;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Passed in NULL sender queue or NULL remoteImageQueue to the Receiver create.", &v2, 0x1Cu);
}

void VCRemoteImageQueue_CreateReceiverQueue_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unable to create FigRemoteQueueReceiverHandler", v2, v3, v4, v5);
    }
  }
}

void VCRemoteImageQueue_CreateReceiverQueue_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unable to create FigRemoteQueueReceiver", v2, v3, v4, v5);
    }
  }
}

void VCRemoteImageQueue_CreateReceiverQueue_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not allocate space for the new VCRemoteImageQueue receiver, returning NULL", v2, v3, v4, v5);
    }
  }
}

void VCRemoteImageQueue_EnqueueFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioDump_Create_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate memory for audio dump packet", v4, v5, v6, v7);
    }
  }

  free(a1);
}

void VCAudioDump_Create_cold_2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate memory for audio dump", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCAudioDump_Create_cold_3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Parameter passed is NULL", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void _VCAudioDump_CreateFile_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d AudioFileCreateWithURL failed with error=%d", v2, v3, v4, v5);
}

void _VCAudioDump_CreateFile_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d ExtAudioFileWrapAudioFileID failed with error=%d", v2, v3, v4, v5);
}

void _VCAudioDump_CreateFile_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d ExtAudioFileWriteAsync failed with error=%d", v2, v3, v4, v5);
}

BOOL _VCAudioPlayerDTMF_ShouldPurgeJitterQueue(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 1196) != 117)
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 30);
    if (v11 >= v12)
    {
      if (v11 != v12)
      {
        v5 = 0;
        goto LABEL_21;
      }

      v12 = *(a2 + 40);
    }

    v5 = *(a1 + 12) - (*(a2 + 32) + v12) > 0x7FFFFFFE;
LABEL_21:
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return v5;
    }

    VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_5_31();
        OUTLINED_FUNCTION_1_27();
        OUTLINED_FUNCTION_3_36();
        OUTLINED_FUNCTION_0_20();
        OUTLINED_FUNCTION_4_31();
        OUTLINED_FUNCTION_14_4();
        v10 = 68;
        goto LABEL_25;
      }

      return v5;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      return v5;
    }

    OUTLINED_FUNCTION_5_31();
    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_3_36();
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_14_4();
    v22 = 68;
    goto LABEL_32;
  }

  v2 = *(a1 + 12);
  if (v2 == *(a2 + 36))
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return 1;
    }

    VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      v5 = 1;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_2_26();
        v6 = &dword_1DB56E000;
        v7 = " [%s] %s:%d VCAudioPlayerDTMF[%p] Should Purge re-transmitted end events, eventTimeStamp=%d, result=%d";
        v8 = v27;
        v9 = v3;
        v10 = 50;
LABEL_25:
        _os_log_impl(v6, v9, OS_LOG_TYPE_DEFAULT, v7, v8, v10);
        return v5;
      }

      return v5;
    }

    v5 = 1;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      return v5;
    }

    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_2_26();
    v18 = &dword_1DB56E000;
    v20 = " [%s] %s:%d VCAudioPlayerDTMF[%p] Should Purge re-transmitted end events, eventTimeStamp=%d, result=%d";
    v21 = v27;
    v19 = v3;
    v22 = 50;
LABEL_32:
    _os_log_debug_impl(v18, v19, OS_LOG_TYPE_DEBUG, v20, v21, v22);
    return v5;
  }

  if (*(a2 + 24) != 3)
  {
    return 0;
  }

  v5 = v2 == *(a2 + 32);
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return v5;
  }

  VRTraceErrorLogLevelToCSTR();
  v13 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      return v5;
    }

    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_3_36();
    OUTLINED_FUNCTION_0_20();
    v28 = v23;
    v29 = v24;
    v30 = v25;
    OUTLINED_FUNCTION_14_4();
    v22 = 56;
    goto LABEL_32;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_3_36();
    OUTLINED_FUNCTION_0_20();
    v28 = v14;
    v29 = v15;
    v30 = v16;
    OUTLINED_FUNCTION_14_4();
    v10 = 56;
    goto LABEL_25;
  }

  return v5;
}

void VCAudioPlayerDTMF_Initialize_cold_1(int a1)
{
  if (a1 >= 3)
  {
    v1 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v8) = 136315650;
      *(&v8 + 4) = v1;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to create the tone generator", v4, v5, v6, v7, v8, DWORD2(v8));
    }
  }
}

void VCAudioPlayerDTMF_Initialize_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136315650;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to create the float converter", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }
}

void VCAudioSessionAVAS_ScheduleNetworkUplinkClockUpdate(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 176);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __VCAudioSessionAVAS_ScheduleNetworkUplinkClockUpdate_block_invoke;
    v2[3] = &unk_1E85F3778;
    v2[4] = a1;
    dispatch_async(v1, v2);
  }
}

void VCTransportStreamCommonCopyProperty_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "VCTransportStreamCommonCopyProperty";
  v7 = 1024;
  v8 = 97;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported property '%@' requested", &v3, 0x26u);
}

void VCTransportStreamCommonSetSendFailedHandler_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d sendFailedHandler can only be set in created state", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCTransportStreamCommonSetSendFailedHandler_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL sendFailedHandler", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCTransportStreamCommonSetReceivedHandler_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d receivedHandler can only be set in created state", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCTransportStreamCommonSetReceivedHandler_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL receivedHandler", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCBlockBuffer_Copy_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCBlockBuffer_Copy";
  v6 = 1024;
  v7 = 17;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Attempt to copy a block buffer to an NULL poiner", &v2, 0x1Cu);
}

void VCMediaRecorderUtil_CreateResizeFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d , CVPixelBufferPoolCreatePixelBuffer failed", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCMediaRecorderUtil_CreateResizeFrame_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d , VTPixelTransferSessionTransferImage failed", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCMediaRecorderUtil_CreateResizeFrame_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d , bufferPool is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCMediaRecorderUtil_CreateResizeFrame_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d , transferSession is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCVideoStreamReceiveGroup_UpdateSourcePlayoutTime_cold_1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_5_1();
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_11;
    }
  }
}

void VCVideoStreamReceiveGroup_UpdateSourcePlayoutTime_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCPacketBundler_CleanupCDRXInfo_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCPacketBundler_BundleAudio_cold_1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCPacketBundler_BundleAudio_cold_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a3 = 0;
}

void VCPacketBundler_BundleAudio_cold_3(uint64_t a1, unsigned __int8 *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = *a2;
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "VCPacketBundler_BundleAudio";
      v13 = 1024;
      v14 = 326;
      v15 = 2048;
      v16 = a1;
      v17 = 1024;
      v18 = v8;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d :bundler=%p buffer is full=%d", &v9, 0x2Cu);
    }
  }

  *a3 = 0;
}

void VCPacketBundler_BundleAudio_cold_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = v6;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v11 = a1;
      v12 = v8;
      v13 = a2;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d NULL access: bundler=%p, audioBundleInfo=%p", &v9, 0x30u);
    }
  }

  *a3 = 0;
}

void VCAudioPacketBundler_UpdatePriority_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCPacketBundler_ExtractBundledPackets_cold_1(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v9 = a1;
      v10 = v6;
      v11 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d NULL access: packetBundler=[%p] rtpPacketInfo=[%p]", &v7, 0x30u);
    }
  }
}

void VCPacketBundler_StoreAndEnqueueCdrxInfo_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  v6 = 549;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cdrx event queue enqueue failed with error=%d", &v4, 0x22u);
}

void VCPacketBundler_StoreAndEnqueueCdrxInfo_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void VCVideoCaptureServer_OnCaptureVideoFrame_cold_1(uint64_t a1, const void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  VCCVOExtensionUtils_GetCVOFromPixelBuffer(a2);
  OUTLINED_FUNCTION_11();
  v8 = v4;
  OUTLINED_FUNCTION_6();
  v9 = 1747;
  v10 = v5;
  v11 = v6;
  _os_log_debug_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_DEBUG, "VCVideoCaptureServer [%s] %s:%d CVO=%d", v7, 0x22u);
}

void VCVideoCaptureServer_OnCaptureVideoFrame_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCVideoCaptureServer_ApplyPressureLevelChanges_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCVideoCaptureServer_CopyLocalVideoAttributes_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d captureServer must not be NULL", v2, v3, v4, v5);
}

void _VCVideoCaptureServer_ProcessPreviewSampleBuffer_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  v4 = 0x4024000000000000;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCVideoCaptureServer [%s] %s:%d VCVideoCaptureServer: KILLING PREVIEW after %g seconds of faltered rendering", v2, 0x26u);
}

void _VCVideoCaptureServer_ProcessPreviewSampleBuffer_cold_2()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCVideoCaptureServer_ProcessPreviewSampleBuffer_cold_3(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }
}

void _VCMediaQueue_GetInternalQueueIndexFromStreamId_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaQueue [%s] %s:%d isRTXStream should not be TRUE", v2, v3, v4, v5);
}

void _VCMediaQueue_GetInternalQueueIndexFromStreamId_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaQueue [%s] %s:%d internalQueueIndex should not be NULL!", v2, v3, v4, v5);
}

void VCMediaQueue_FreeMediaPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCMediaQueue_FreeMediaPacket_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
    }
  }
}

void VCMediaQueue_FreeMediaPacket_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

void VCMediaQueue_FreeMediaPacket_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCMediaQueue_FreeMediaPacketList_cold_1(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = *(a2 + 304);
    v5 = *(a2 + 8);
    if (v5 && *(a1 + 96) == 1 && (*(a2 + 294) & 1) != 0)
    {
      CFRelease(v5);
      *(a2 + 8) = 0;
      *(a2 + 294) = 0;
    }

    v6 = *(a2 + 184);
    if (v6)
    {
      VCMediaControlInfoDispose(v6);
      *(a2 + 184) = 0;
    }

    VCMediaQueue_FreeMediaPacket(a1, a2);
    a2 = v4;
  }

  while (v4);
}

void _VCMediaQueue_SchedulePackets_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCMediaQueue_SchedulePacketsWithLimitedBudget_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCMediaQueue [%s] %s:%d Starting budget in this interval: %d", v1, 0x22u);
}

void _VCMediaQueue_ScheduleThrottlingQueuesAndReduceRemainingBudget_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCMediaQueue_ScheduleFramesFromThrottlingQueue_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCMediaQueue_SendAndFreePackets_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCMediaQueue_SendAndFreePackets_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCMediaQueue_SendAndFreePackets_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCMediaQueue_SendAndFreePackets_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCMediaQueue_SendAndFreePackets_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCMediaQueue_SendAndFreePackets_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaQueue [%s] %s:%d Failed to encrypt/authenticate packet. Dropping packet...", v2, v3, v4, v5);
}

void _VCMediaQueue_SendAndFreePackets_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _VCMediaQueue_RateStats_TrackMediaPacket_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaQueue [%s] %s:%d mediaPacket or rateStats cannot be NULL", v2, v3, v4, v5);
}

void _VCMediaQueue_PreAllocVCMediaPacketsInFreePool_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaQueue [%s] %s:%d Out of memory when creating CMBlockBuffer!", v2, v3, v4, v5);
}

void _VCMediaQueue_PreAllocVCMediaPacketsInFreePool_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCMediaQueue_CreateInternalQueue_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCMediaQueue_CreateInternalQueue_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaQueue [%s] %s:%d Out of memory when creating internal queues!", v2, v3, v4, v5);
}

void _VCMediaQueue_DestroyInternalQueuePool_cold_1(int a1, CMSimpleQueueRef queue, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  CMSimpleQueueGetCount(queue);
  OUTLINED_FUNCTION_1_0();
  v8 = v5;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v9 = v6;
  v10 = 2048;
  v11 = queue;
  _os_log_debug_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_DEBUG, "VCMediaQueue [%s] %s:%d count=%d in pool=%p", v7, 0x2Cu);
}

void VCMediaQueue_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCMediaQueue_Create_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCMediaQueue_Create_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCMediaQueue_Create_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaQueue [%s] %s:%d VCMediaQueue IN/OUT RealTime stats cannot be malloced", v2, v3, v4, v5);
}

void VCMediaQueue_Create_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCMediaQueue_Create_cold_7()
{
  OUTLINED_FUNCTION_7_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCMediaQueue_Create_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCMediaQueue_Create_cold_9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaQueue [%s] %s:%d Number of internal queues are set too large", v2, v3, v4, v5);
}

void VCMediaQueueSendProc_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void VCMediaQueue_SetAudioStallBasebandFlushState_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaQueue [%s] %s:%d Cannot set audio stall state to flush baseband other than in oneToOne mode!", v2, v3, v4, v5);
}

void VCMediaQueue_SetAudioStallBasebandFlushState_cold_2()
{
  OUTLINED_FUNCTION_7_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}