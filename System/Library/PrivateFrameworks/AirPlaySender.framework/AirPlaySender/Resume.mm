@interface Resume
@end

@implementation Resume

void __audioEngineCarPlay_Resume_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 144) = *(v2 + 24);
  *(v2 + 160) = v3;
  *(v2 + 176) = *(v2 + 56);
  v4 = *(a1 + 32);
  v5 = *(v4 + 184);
  v6 = *(v4 + 72);
  *(v4 + 184) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 192);
  v9 = *(v7 + 80);
  *(v7 + 192) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 200);
  v12 = *(v10 + 88);
  *(v10 + 200) = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 208);
  v15 = *(v13 + 96);
  *(v13 + 208) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  *(*(a1 + 32) + 216) = *(*(a1 + 32) + 104);
  *(*(a1 + 32) + 224) = *(*(a1 + 32) + 112);
  v16 = *(a1 + 32);
  *(v16 + 232) = 0;
  *(v16 + 236) = 0;
  *(v16 + 136) = 1;
}

void __screenstream_Resume_block_invoke_2(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __screenstreamudp_Resume_block_invoke(uint64_t a1)
{
  v114 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v92 = *(a1 + 48);
  v93 = *(a1 + 64);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = &unk_27CFF0000;
  if (DerivedStorage[24])
  {
    v15 = 4294950534;
    goto LABEL_148;
  }

  v5 = DerivedStorage;
  if (DerivedStorage[26] || !DerivedStorage[25])
  {
    goto LABEL_75;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  v110 = 0;
  v111 = 0;
  v108 = 0;
  v109 = 0;
  *buffer = 0;
  v113 = 0;
  v106 = 0;
  v107 = 0;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  v97 = *MEMORY[0x277CBF3A8];
  v96 = 0;
  if (!*(v6 + 48))
  {
    v15 = 4294950536;
LABEL_153:
    APSLogErrorAt();
    v17 = 0;
    Int64 = 0;
    v42 = 0;
    Mutable = 0;
    goto LABEL_45;
  }

  v7 = v6;
  if (!*(v6 + 40))
  {
    v15 = 4294950536;
    goto LABEL_153;
  }

  v8 = RandomBytes();
  if (v8)
  {
    v15 = v8;
    goto LABEL_153;
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v11 = *(v7 + 48);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v12)
  {
    v15 = 4294954514;
LABEL_13:
    APSLogErrorAt();
    v17 = 0;
    Int64 = 0;
    goto LABEL_44;
  }

  v13 = v12(v11, 1935897205, Mutable, v7 + 104);
  if (v13)
  {
    v15 = v13;
    goto LABEL_13;
  }

  if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreenUDP)))
  {
    v81 = v2;
    v83 = *(v7 + 104);
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_setupStream(FigEndpointStreamRef, StreamScreenUDPCompletionContext)", v14, "screen stream %{ptr}: Created transport data stream [%{ptr}]\n");
  }

  v19 = [*(v7 + 40) getClientUPID:{&v109, v81, v83}];
  if (v19)
  {
    v15 = v19;
    goto LABEL_13;
  }

  Int64 = CFNumberCreateInt64();
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v21)
  {
    v22 = v21(CMBaseObject, *MEMORY[0x277CE4FE8], Int64);
    if (v22)
    {
      v15 = v22;
    }

    else
    {
      v23 = *(v7 + 104);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v24)
      {
        v25 = v24(v23);
        if (!v25)
        {
          v26 = CMBaseObjectGetDerivedStorage();
          value[0] = 0;
          v27 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v17 = v27;
          if (!v27)
          {
            APSLogErrorAt();
            v15 = 4294960568;
            goto LABEL_114;
          }

          v28 = *MEMORY[0x277CBED28];
          CFDictionarySetValue(v27, @"useAVConfMirroring", *MEMORY[0x277CBED28]);
          FigCFDictionarySetInt32();
          v85 = *MEMORY[0x277CBED10];
          cf = v28;
          if (*(v26 + 276))
          {
            v29 = v28;
          }

          else
          {
            v29 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(v17, @"remoteShouldShowHUD", v29);
          v30 = FigTransportStreamGetCMBaseObject();
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v31)
          {
            v32 = v31(v30, *MEMORY[0x277CE5038], v9, value);
            if (!v32)
            {
              CFDictionarySetValue(v17, @"networkInfo", value[0]);
              v33 = [*(v26 + 40) negotiationDataForPresentationMode:*(v26 + 248) == 1];
              if (!v33)
              {
                APSLogErrorAt();
                cfa = 0;
                theDict = 0;
                v15 = 4294950535;
                goto LABEL_81;
              }

              CFDictionarySetValue(v17, @"negotiationData", v33);
              CFDictionarySetInt64();
              DisplayHDRMode = screenstreamudp_getDisplayHDRMode(v26, v34);
              CFDictionarySetInt64();
              if (DisplayHDRMode)
              {
                CFDictionarySetValue(v17, @"displayHDRMode", DisplayHDRMode);
              }

              if (*(v26 + 263))
              {
                v36 = cf;
              }

              else
              {
                v36 = v85;
              }

              CFDictionarySetValue(v17, @"hdrMirroringSupported", v36);
              theDict = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!theDict)
              {
                APSLogErrorAt();
                theDict = 0;
                goto LABEL_166;
              }

              if (!*(v26 + 112))
              {
                goto LABEL_38;
              }

              v37 = RandomBytes();
              if (!v37)
              {
                v38 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v38)
                {
                  v39 = v38;
                  v40 = CFDictionarySetInt64();
                  if (!v40)
                  {
                    CFDictionarySetValue(theDict, @"streamConnectionTypeMediaDataControl", v39);
                    CFRelease(v39);
LABEL_38:
                    CFDictionarySetValue(v17, @"streamConnections", theDict);
                    v41 = &unk_27CFF0000;
                    if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_createSetupRequest(FigEndpointStreamRef, uint64_t, CFDictionaryRef *)", 40, "screenstreamudp_createSetupRequest: %@\n", v17);
                    }

                    cfa = 0;
                    v15 = 0;
LABEL_84:
                    if (value[0])
                    {
                      CFRelease(value[0]);
                    }

                    if (theDict)
                    {
                      CFRelease(theDict);
                    }

                    if (cfa)
                    {
                      CFRelease(cfa);
                    }

                    if (!v15)
                    {
                      v50 = v41[200];
                      if (v50 <= 40)
                      {
                        if (v50 != -1 || _LogCategory_Initialize())
                        {
                          LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_setupStream(FigEndpointStreamRef, StreamScreenUDPCompletionContext)", 40, "screen stream %{ptr}: request: %@\n", v2, v17);
                        }

                        v51 = v41[200];
                        if (v51 <= 40)
                        {
                          if (v51 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
                          {
                            OUTLINED_FUNCTION_8();
                            LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_setupStream(FigEndpointStreamRef, StreamScreenUDPCompletionContext)", (v52 - 10), "screen stream %{ptr}: creating transport stream\n", v2);
                          }
                        }
                      }

                      v53 = *(v7 + 48);
                      v54 = *(v7 + 96);
                      v55 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                      if (v55)
                      {
                        v56 = v55(v53, v54, v17, &v110, &v111, 0);
                        if (!v56)
                        {
                          v57 = v110;
                          if (v110)
                          {
                            LODWORD(value[0]) = 0;
                            v58 = CMBaseObjectGetDerivedStorage();
                            CFDictionaryGetTypeID();
                            theDicta = CFDictionaryGetTypedValue();
                            if (!LODWORD(value[0]))
                            {
                              cfb = v58;
                              v59 = FigTransportStreamGetCMBaseObject();
                              v60 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                              if (v60)
                              {
                                LODWORD(value[0]) = v60(v59, *MEMORY[0x277CE5098], theDicta);
                                if (!LODWORD(value[0]))
                                {
                                  CFDataGetTypeID();
                                  theDictb = CFDictionaryGetTypedValue();
                                  if (!LODWORD(value[0]))
                                  {
                                    if (!CFDictionaryContainsKey(v57, @"streamConnections"))
                                    {
                                      goto LABEL_118;
                                    }

                                    v61 = CFDictionaryGetValue(v57, @"streamConnections");
                                    if (!CFDictionaryContainsKey(v61, @"streamConnectionTypeMediaDataControl"))
                                    {
                                      goto LABEL_118;
                                    }

                                    CFDictionaryGetValue(v61, @"streamConnectionTypeMediaDataControl");
                                    v62 = CFDictionaryGetInt64();
                                    if (!LODWORD(value[0]))
                                    {
                                      LODWORD(value[0]) = screenstreamudp_createAndResumeTransportMediaDataControlStream(*(cfb + 6), v62, *(cfb + 17), cfb + 15);
                                      v4 = &unk_27CFF0000;
                                      if (LODWORD(value[0]))
                                      {
                                        APSLogErrorAt();
                                      }

                                      else
                                      {
                                        if (gLogCategory_APEndpointStreamScreenUDP >= 51)
                                        {
                                          goto LABEL_120;
                                        }

                                        if (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreenUDP))
                                        {
                                          *&v82 = v2;
                                          *(&v82 + 1) = *(cfb + 15);
                                          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_handleSetupResponse(FigEndpointStreamRef, CFDictionaryRef, CFDataRef *)", v63, "screen stream %{ptr}: Created transport media data control stream [%{ptr}]\n");
                                        }
                                      }

LABEL_119:
                                      v15 = LODWORD(value[0]);
                                      if (LODWORD(value[0]))
                                      {
LABEL_135:
                                        APSLogErrorAt();
                                        goto LABEL_44;
                                      }

LABEL_120:
                                      v64 = FigTransportStreamGetCMBaseObject();
                                      v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                      if (v65)
                                      {
                                        v66 = v65(v64, *MEMORY[0x277CE5058], v9, &v108);
                                        if (v66)
                                        {
                                          v15 = v66;
                                        }

                                        else
                                        {
                                          v115.location = 0;
                                          v115.length = 16;
                                          CFDataGetBytes(v108, v115, buffer);
                                          APSenderSessionGetCMBaseObject();
                                          v68 = v67;
                                          v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                          if (v69)
                                          {
                                            v70 = v69(v68, @"KeyHolder", v9, &v106);
                                            if (!v70)
                                            {
                                              if (v106)
                                              {
                                                v42 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(v9, v107);
                                                if (!v42)
                                                {
                                                  APSLogErrorAt();
                                                  v15 = 4294960568;
                                                  goto LABEL_45;
                                                }

                                                v71 = v106;
                                                v72 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                                                if (v72)
                                                {
                                                  v73 = v72(v71, v42, 46, &v105, 46, &v104);
                                                  if (!v73)
                                                  {
                                                    if (*(v7 + 248) == 1)
                                                    {
                                                      APSScreenGetMediaPresentationParams();
                                                      if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreenUDP)))
                                                      {
                                                        v84 = v96;
                                                        v82 = v97;
                                                        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_setupStream(FigEndpointStreamRef, StreamScreenUDPCompletionContext)", v75, "display parameters for media presentation mode: size: %.1f x %.1f, fps: %d\n");
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v97 = *(v7 + 152);
                                                      v96 = *(v7 + 268);
                                                    }

                                                    v98 = v97;
                                                    LODWORD(v99) = v96;
                                                    *(&v99 + 1) = v104;
                                                    *&v100 = v105;
                                                    BYTE8(v100) = *(v7 + 248) == 1;
                                                    v76 = screenstreamudp_getDisplayHDRMode(v7, v74);
                                                    v77 = *(v7 + 192);
                                                    *&v101 = v76;
                                                    *(&v101 + 1) = v77;
                                                    LOBYTE(v102) = *(v7 + 256);
                                                    v78 = *(v7 + 216);
                                                    if (!v78 || (*(&v102 + 1) = CFDictionaryGetValue(v78, @"encoderEncryptionData")) != 0 && (FigCFDictionaryGetInt64IfPresent(), v103))
                                                    {
                                                      v79 = *(v7 + 40);
                                                      *value = v92;
                                                      v95 = v93;
                                                      v15 = [v79 startWithNWConnectionClientID:buffer negotiatedBlob:theDictb screenOptions:&v98 completion:{value, v82, v84}];
                                                      if (!v15)
                                                      {
                                                        goto LABEL_49;
                                                      }

                                                      goto LABEL_137;
                                                    }

                                                    APSLogErrorAt();
LABEL_174:
                                                    v15 = 4294950531;
                                                    goto LABEL_45;
                                                  }

                                                  v15 = v73;
                                                }

                                                else
                                                {
                                                  v15 = 4294954514;
                                                }

LABEL_137:
                                                APSLogErrorAt();
                                                goto LABEL_45;
                                              }

                                              APSLogErrorAt();
                                              v42 = 0;
                                              goto LABEL_174;
                                            }

                                            v15 = v70;
                                          }

                                          else
                                          {
                                            v15 = 4294954514;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v15 = 4294954514;
                                      }

                                      goto LABEL_135;
                                    }
                                  }

                                  APSLogErrorAt();
LABEL_118:
                                  v4 = &unk_27CFF0000;
                                  goto LABEL_119;
                                }
                              }

                              else
                              {
                                LODWORD(value[0]) = -12782;
                              }
                            }

                            APSLogErrorAt();
                            theDictb = 0;
                            goto LABEL_118;
                          }

                          APSLogErrorAt();
                          v42 = 0;
                          v15 = 4294950531;
LABEL_115:
                          v4 = &unk_27CFF0000;
                          goto LABEL_45;
                        }

                        v15 = v56;
                      }

                      else
                      {
                        v15 = 4294954514;
                      }
                    }

LABEL_114:
                    APSLogErrorAt();
                    v42 = 0;
                    goto LABEL_115;
                  }

                  v15 = v40;
                  cfa = v39;
                  APSLogErrorAt();
LABEL_81:
                  v41 = &unk_27CFF0000;
                  CFRelease(v17);
                  v17 = 0;
                  goto LABEL_84;
                }

                APSLogErrorAt();
LABEL_166:
                cfa = 0;
                v15 = 4294960568;
                goto LABEL_81;
              }

              v15 = v37;
              APSLogErrorAt();
LABEL_80:
              cfa = 0;
              goto LABEL_81;
            }

            v15 = v32;
          }

          else
          {
            v15 = 4294954514;
          }

          APSLogErrorAt();
          theDict = 0;
          goto LABEL_80;
        }

        v15 = v25;
      }

      else
      {
        v15 = 4294954514;
      }
    }
  }

  else
  {
    v15 = 4294954514;
  }

  APSLogErrorAt();
  v17 = 0;
LABEL_44:
  v42 = 0;
LABEL_45:
  v43 = v4[200];
  if (v43 <= 90)
  {
    if (v43 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_8();
      LogPrintF(v45, v46, (v44 + 40), v47, v2, v15);
    }
  }

LABEL_49:
  if (Int64)
  {
    CFRelease(Int64);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v110)
  {
    CFRelease(v110);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (v104)
  {
    CFRelease(v104);
  }

  if (!v15)
  {
    v48 = v4[200];
    if (v48 <= 50 && (v48 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreenUDP)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_resumeInternal(FigEndpointStreamRef, CFDictionaryRef, StreamScreenUDPCompletionContext)", v16, "screen stream %{ptr} resumed\n");
    }

    v5[27] = 1;
    goto LABEL_75;
  }

LABEL_148:
  APSLogErrorAt();
  v80 = v4[200];
  if (v80 <= 90 && (v80 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_resumeInternal(FigEndpointStreamRef, CFDictionaryRef, StreamScreenUDPCompletionContext)", 33554522, "### screen stream %{ptr}: resume failed: %#m\n", v2, v15);
  }

  v98 = v92;
  *&v99 = v93;
  screenstreamudp_dispatchCallback(v2, &v98, v15);
  screenstreamudp_handleFatalError(v2, v15, @"Resume failed");
LABEL_75:
  v49 = *(a1 + 40);
  if (v49)
  {
    CFRelease(v49);
  }

  CFRelease(*(a1 + 32));
}

void __audioEngineCarPlay_Resume_block_invoke(uint64_t a1)
{
  v36 = 0;
  memset(__s1, 0, sizeof(__s1));
  v2 = *(a1 + 40);
  if (!*(v2 + 120))
  {
    if (*(v2 + 72) && *(v2 + 80) && *(v2 + 96))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v37 = 0;
      v38 = 0;
      if (*(DerivedStorage + 120))
      {
        APSLogErrorAt();
        v5 = -72077;
      }

      else
      {
        v4 = DerivedStorage;
        if (*(DerivedStorage + 64))
        {
          if (*(DerivedStorage + 88))
          {
            v5 = 0;
          }

          else
          {
            v6 = *MEMORY[0x277CBECE8];
            v7 = APTransportStreamSendBackingProviderCreateWithStreamID();
            if (v7)
            {
              v5 = v7;
              APSLogErrorAt();
            }

            else
            {
              v8 = *(v4 + 64);
              v9 = arc4random();
              v5 = APMessageRingCreate(v6, v8, v9, v37, 48, 0, &v38);
              if (v5)
              {
                APSLogErrorAt();
                if (v38)
                {
                  CFRelease(v38);
                }
              }

              else
              {
                *(v4 + 88) = v38;
                v38 = 0;
              }
            }
          }
        }

        else
        {
          APSLogErrorAt();
          v5 = -72071;
        }
      }

      if (v37)
      {
        CFRelease(v37);
      }

      OUTLINED_FUNCTION_2_16();
      *(v10 + 24) = v5;
      OUTLINED_FUNCTION_2_16();
      if (*(v11 + 24))
      {
        goto LABEL_41;
      }

      v12 = *(*(a1 + 40) + 72);
      v13 = *(CMBaseObjectGetVTable() + 16);
      if (*v13 >= 2uLL)
      {
        v14 = v13[1];
        if (v14)
        {
          v14(v12, __s1);
        }
      }

      OUTLINED_FUNCTION_2_16();
      *(v16 + 24) = v15;
      OUTLINED_FUNCTION_2_16();
      if (*(v17 + 24))
      {
        goto LABEL_41;
      }

      v18 = *(a1 + 40);
      if (!memcmp(__s1, (v18 + 24), 0x28uLL))
      {
        *(v18 + 4) = *v18 * *(v18 + 24) / (1000 * *(v18 + 44));
        v19 = *(v18 + 128);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __audioEngineCarPlay_Resume_block_invoke_2;
        block[3] = &__block_descriptor_tmp_22;
        block[4] = v18;
        dispatch_sync(v19, block);
        APSSetFBOPropertyInt64();
        v20 = *(a1 + 40);
        v21 = *(a1 + 48);
        v22 = *(v20 + 72);
        v23 = *(v20 + 4);
        v24 = *(v20 + 128);
        v25 = *(CMBaseObjectGetVTable() + 16);
        if (*v25 >= 2uLL)
        {
          v26 = v25[3];
          if (v26)
          {
            v26(v22, v23, v24, audioEngineCarPlay_HandleDataReady, v21);
          }
        }

        if (gLogCategory_APAudioEngineCarPlay <= 40 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAudioEngineCarPlay, "OSStatus audioEngineCarPlay_Resume(APAudioEngineRef)_block_invoke", 33554472, "[%{ptr}] Configured audio source data ready interval = %u ms, maxPackets = %u\n", *(a1 + 48), **(a1 + 40), *(*(a1 + 40) + 4));
        }

        v27 = *(*(a1 + 40) + 72);
        v28 = *(CMBaseObjectGetVTable() + 16);
        if (*v28 >= 2uLL)
        {
          v29 = v28[4];
          if (v29)
          {
            v29(v27);
          }
        }

        OUTLINED_FUNCTION_2_16();
        *(v31 + 24) = v30;
        OUTLINED_FUNCTION_2_16();
        if (!*(v32 + 24))
        {
          *(*(a1 + 40) + 120) = 1;
          goto LABEL_32;
        }

LABEL_41:
        APSLogErrorAt();
        goto LABEL_32;
      }
    }

    APSLogErrorAt();
    OUTLINED_FUNCTION_2_16();
    *(v33 + 24) = -72074;
  }

LABEL_32:
  CFRelease(*(a1 + 48));
}

void __screenstream_Resume_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_8_14();
  v4 = *(v3 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v7 = &unk_27CFF1000;
  v8 = "\n";
  if (*(DerivedStorage + 24))
  {
    v90 = 4294950534;
    goto LABEL_107;
  }

  if (*(DerivedStorage + 26) || !*(DerivedStorage + 25))
  {
LABEL_118:
    LODWORD(v90) = 0;
    goto LABEL_119;
  }

  if (!*(DerivedStorage + 160))
  {
    v90 = 4294950528;
    goto LABEL_107;
  }

  atomic_store(0, (DerivedStorage + 1200));
  v118[0] = 0;
  v9 = CMBaseObjectGetDerivedStorage();
  v116 = 0;
  v117 = 0;
  v10 = (v9 + 136);
  if (!*(v9 + 136))
  {
    v11 = v9;
    if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_ensureTransportStream(FigEndpointStreamRef)", (v1 - 10), "%@ creating transport stream\n", *(v11 + 40));
    }

    v1 = *MEMORY[0x277CBECE8];
    v12 = OUTLINED_FUNCTION_12_9();
    Mutable = CFDictionaryCreateMutable(v12, v13, v14, v15);
    if (!Mutable)
    {
      APSLogErrorAt();
      v34 = 0;
      v118[0] = -16761;
      OUTLINED_FUNCTION_8_14();
LABEL_96:
      if (v116)
      {
        CFRelease(v116);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      goto LABEL_100;
    }

    v17 = Mutable;
    v18 = FigCFDictionarySetInt32();
    if (*(v11 + 48))
    {
      if (*(v11 + 394))
      {
        CFDictionarySetValue(v17, @"uuid", *(v11 + 312));
        if (*(v11 + 120))
        {
          v111 = MEMORY[0x277D85DD0];
          v112 = 0x40000000;
          v113 = __screenstream_ensureTransportStream_block_invoke;
          v114 = &__block_descriptor_tmp_115;
          v115 = v17;
          CFDictionaryApplyBlock();
        }
      }

      else if (*(v11 + 409))
      {
        v26 = APDemoManagerCopyDeviceInfo(v18);
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(v17, @"DemoDeviceInfo", v26);
          CFRelease(v27);
        }
      }

      v28 = *(v11 + 48);
      v29 = *(v11 + 88);
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v30)
      {
        v107 = v4;
        v118[0] = v30(v28, v29, v17, &v116, &v117, 0);
        if (!v118[0])
        {
          Int64 = CFDictionaryGetInt64();
          v7 = &unk_27CFF1000;
          if (!v118[0])
          {
            OUTLINED_FUNCTION_24_5();
            if (v24 ^ v25 | v23 && (v33 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
            {
              *byte15 = Int64;
              OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_ensureTransportStream(FigEndpointStreamRef)", v32, "%@ remote screen port: %d\n");
            }

            v35 = OUTLINED_FUNCTION_12_9();
            v39 = CFDictionaryCreateMutable(v35, v36, v37, v38);
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            if (*(v11 + 394))
            {
              v40 = *MEMORY[0x277CC1B08];
              v41 = CFUUIDGetConstantUUIDWithBytes(0, 0x99u, 0xA4u, 0x2Au, 0xF4u, 0x23u, 0xE3u, 0x4Au, 0, 0x91u, 0x6Eu, 0xC1u, 0x43u, 0xD3u, 0x32u, 0x3Bu, 0x92u);
              CFDictionarySetValue(v39, v40, v41);
            }

            v42 = *(v11 + 48);
            v43 = APTransportStreamIDMakeWithPort();
            v44 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            if (v44)
            {
              v45 = v42;
              v34 = v39;
              v118[0] = v44(v45, v43, v39, v10);
              if (!v118[0])
              {
                v7 = &unk_27CFF1000;
                OUTLINED_FUNCTION_24_5();
                if (v24 ^ v25 | v23 && (v47 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
                {
                  *byte15 = *(v11 + 136);
                  OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_ensureTransportStream(FigEndpointStreamRef)", v46, "%@ Created transport data stream [%{ptr}]\n");
                }

                v118[0] = APSSetFBOPropertyInt64();
                if (!v118[0])
                {
                  v4 = v107;
LABEL_49:
                  v48 = *(v11 + 1184);
                  if (v48 >= 1)
                  {
                    if (gLogCategory_APEndpointStreamScreen <= 50)
                    {
                      if (gLogCategory_APEndpointStreamScreen != -1 || (v49 = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen), v48 = *(v11 + 1184), v49))
                      {
                        *byte15 = v48;
                        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_ensureTransportStream(FigEndpointStreamRef)", v21, "%@ setting data send timeout to %d sec\n");
                      }
                    }

                    APSSetFBOPropertyInt64();
                  }

                  v105 = v34;
                  v106 = v17;
                  v108 = v4;
                  v50 = CMBaseObjectGetDerivedStorage();
                  *(v50 + 1176) = mach_absolute_time();
                  v51 = MEMORY[0x277CBF138];
                  v52 = MEMORY[0x277CBF150];
                  v53 = OUTLINED_FUNCTION_12_9();
                  v55 = CFDictionaryCreateMutable(v53, v54, v51, v52);
                  v56 = OUTLINED_FUNCTION_12_9();
                  v1 = CFDictionaryCreateMutable(v56, v57, v51, v52);
                  v58 = *(v11 + 1128);
                  if (v58)
                  {
                    CFRelease(v58);
                    *(v11 + 1128) = 0;
                  }

                  v59 = *MEMORY[0x277CEA338];
                  CFDictionarySetValue(v55, *MEMORY[0x277CEA338], @"fps");
                  v60 = FigCFDictionarySetDouble();
                  OUTLINED_FUNCTION_23_8(v60, v61, @"Source Frames");
                  v62 = APSStatsHistogramCreate();
                  if (v62)
                  {
                    v64 = v62;
                    OUTLINED_FUNCTION_31_2(v62, @"Source Frames");
                    CFRelease(v64);
                  }

                  OUTLINED_FUNCTION_23_8(v62, v63, @"Sent Frames");
                  v65 = APSStatsHistogramCreate();
                  if (v65)
                  {
                    v67 = v65;
                    OUTLINED_FUNCTION_31_2(v65, @"Sent Frames");
                    CFRelease(v67);
                  }

                  OUTLINED_FUNCTION_23_8(v65, v66, @"Dropped Overflow Frames");
                  v68 = APSStatsHistogramCreate();
                  if (v68)
                  {
                    v69 = v68;
                    OUTLINED_FUNCTION_31_2(v68, @"Dropped Overflow Frames");
                    CFRelease(v69);
                  }

                  CFDictionarySetValue(v55, v59, @"Mbps");
                  v70 = FigCFDictionarySetDouble();
                  OUTLINED_FUNCTION_23_8(v70, v71, @"Used Bandwidth");
                  v72 = APSStatsHistogramCreate();
                  if (v72)
                  {
                    v73 = v72;
                    OUTLINED_FUNCTION_31_2(v72, @"Used Bandwidth");
                    CFRelease(v73);
                  }

                  FigCFDictionarySetDouble();
                  v74 = FigCFDictionarySetInt32();
                  OUTLINED_FUNCTION_23_8(v74, v75, @"Available Bandwidth");
                  v76 = APSStatsHistogramCreate();
                  if (v76)
                  {
                    v77 = v76;
                    CFDictionarySetValue(v1, @"Available Bandwidth", v76);
                    CFRelease(v77);
                  }

                  CFRelease(v55);
                  *(v11 + 1128) = v1;
                  v78 = v117;
                  v79 = *(v11 + 936);
                  *(v11 + 936) = v117;
                  v8 = "\n";
                  v17 = v106;
                  if (v78)
                  {
                    CFRetain(v78);
                  }

                  v4 = v108;
                  OUTLINED_FUNCTION_8_14();
                  if (v79)
                  {
                    CFRelease(v79);
                  }

                  if (v78)
                  {
                    v80 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                    v7 = &unk_27CFF1000;
                    if (v80)
                    {
                      v81 = v80(v78);
                    }

                    else
                    {
                      v81 = 0;
                    }
                  }

                  else
                  {
                    v81 = 0;
                    v7 = &unk_27CFF1000;
                  }

                  *(v11 + 944) = v81;
                  v82 = *(v11 + 984);
                  v83 = *(v11 + 64);
                  *(v11 + 984) = v83;
                  if (v83)
                  {
                    CFRetain(v83);
                  }

                  if (v82)
                  {
                    CFRelease(v82);
                  }

                  v84 = *v10;
                  v85 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (v85)
                  {
                    v118[0] = v85(v84);
                    if (!v118[0])
                    {
                      v86 = *v10;
                      v87 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                      if (v87)
                      {
                        v118[0] = v87(v86);
                        if (!v118[0])
                        {
                          if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                          {
                            v88 = OUTLINED_FUNCTION_17_6();
                            v118[0] = v89(v88);
                            if (!v118[0])
                            {
LABEL_93:
                              v34 = v105;
                              goto LABEL_94;
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_18_8();
                          }
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_18_8();
                      }
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_18_8();
                  }

                  APSLogErrorAt();
                  goto LABEL_93;
                }

                APSLogErrorAt();
                v4 = v107;
                OUTLINED_FUNCTION_8_14();
LABEL_45:
                v8 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
                goto LABEL_94;
              }
            }

            else
            {
              OUTLINED_FUNCTION_18_8();
            }

            APSLogErrorAt();
            v4 = v107;
            OUTLINED_FUNCTION_8_14();
            v7 = &unk_27CFF1000;
            v34 = v39;
            goto LABEL_45;
          }

          APSLogErrorAt();
          v34 = 0;
          v4 = v107;
LABEL_130:
          OUTLINED_FUNCTION_8_14();
LABEL_94:
          CFRelease(v17);
          if (v117)
          {
            CFRelease(v117);
          }

          goto LABEL_96;
        }
      }

      else
      {
        OUTLINED_FUNCTION_18_8();
      }

      APSLogErrorAt();
      v34 = 0;
      OUTLINED_FUNCTION_8_14();
      v7 = &unk_27CFF1000;
      goto LABEL_94;
    }

    v19 = *(v11 + 128);
    if (!v19)
    {
      APSLogErrorAt();
      v34 = 0;
      v118[0] = -16765;
      goto LABEL_130;
    }

    *v10 = CFRetain(v19);
    OUTLINED_FUNCTION_24_5();
    if (v24 ^ v25 | v23)
    {
      if (v22 == -1)
      {
        if (!OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen))
        {
          goto LABEL_33;
        }

        v20 = *v10;
      }

      *byte15 = v20;
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_ensureTransportStream(FigEndpointStreamRef)", v21, "%@ retained client transport stream [%{ptr}]\n");
    }

LABEL_33:
    v34 = 0;
    goto LABEL_49;
  }

LABEL_100:
  v90 = v118[0];
  if (!v118[0])
  {
    v91 = *(v6 + 160);
    v92 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v92)
    {
      v93 = v92(v91);
      if (!v93)
      {
        v94 = CMBaseObjectGetDerivedStorage();
        v95 = v7[1002];
        if (v95 <= 30 && (v95 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_startStatsTimer(FigEndpointStreamRef)", (v1 - 20), "%@ starting stats timer\n", *(v94 + 40), *byte15);
        }

        v97 = *(v94 + 200);
        v98 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v97, v98, 0x3B9ACA00uLL, 0x5F5E100uLL);
        screenStream_setResumedAndNotifiyObservers(v4, 1);
        OUTLINED_FUNCTION_24_5();
        if (v24 ^ v25 | v23 && (v100 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v99, "%@ resumed\n");
        }

        goto LABEL_118;
      }

      v90 = v93;
    }

    else
    {
      v90 = 4294954514;
    }
  }

LABEL_107:
  APSLogErrorAt();
  v96 = v7[1002];
  if (v96 <= 90 && (v96 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", (v1 + 40), "%@ ### resume failed: %#m\n", *(v6 + 40), v90);
  }

  screenstream_cleanup(v4);
LABEL_119:
  if (*(a1 + 48))
  {
    CFRetain(*(a1 + 32));
    v101 = *(*(a1 + 56) + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = *(v8 + 35);
    block[2] = __screenstream_Resume_block_invoke_2;
    block[3] = &__block_descriptor_tmp_107_1;
    v102 = *(a1 + 32);
    block[4] = *(a1 + 48);
    block[5] = v102;
    v110 = v90;
    block[6] = *(a1 + 64);
    dispatch_async(v101, block);
  }

  v103 = *(a1 + 40);
  if (v103)
  {
    CFRelease(v103);
  }

  CFRelease(*(a1 + 32));
}

@end