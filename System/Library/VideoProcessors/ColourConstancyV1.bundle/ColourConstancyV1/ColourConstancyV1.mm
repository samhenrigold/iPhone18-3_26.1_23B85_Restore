uint64_t sub_2B48()
{

  return fig_log_get_emitter();
}

uint64_t sub_7AC0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13, char a14)
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t sub_7B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return _os_log_send_and_compose_impl(a1, 0, va, 128, a5, v12, v13, a8);
}

BOOL sub_7B54(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t sub_7B74()
{

  return fig_log_get_emitter();
}

void sub_97E0(uint64_t a1)
{
  v2 = 80;
  v3 = a1;
  do
  {
    sub_9850(v3);
    v3 += 40;
    v2 -= 40;
  }

  while (v2);

  v4 = *(a1 + 104);
}

void sub_9850(uint64_t a1)
{
  v2 = *(a1 + 32);
}

uint64_t sub_98EC(uint64_t a1)
{

  return kdebug_trace();
}

void sub_E250(int a1, void *a2)
{
  fig_log_get_emitter();
  sub_2B20();
  v4 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
}

void sub_F0C0(const char *a1)
{
  fig_log_get_emitter();
  sub_2B08();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

void sub_F150(const char *a1)
{
  fig_log_get_emitter();
  sub_2B08();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

void sub_F1E0(const char *a1)
{
  fig_log_get_emitter();
  sub_2B08();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

void sub_F270(int a1, const char *a2)
{
  fig_log_get_emitter();
  sub_2B20();
  v3 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, a2, v8, v9, vars0, vars8);
}

void sub_F308(const char *a1)
{
  fig_log_get_emitter();
  sub_2B08();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

void sub_F398(const char *a1)
{
  fig_log_get_emitter();
  sub_2B08();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

uint64_t sub_F428(_DWORD *a1)
{
  sub_2B48();
  sub_2B34();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  sub_2B48();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

void sub_F4D8(const char *a1)
{
  fig_log_get_emitter();
  sub_2B08();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

void sub_F568(const char *a1)
{
  fig_log_get_emitter();
  sub_2B08();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

uint64_t sub_F5F8(_DWORD *a1)
{
  sub_2B48();
  sub_2B34();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  sub_2B48();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

void sub_1227C(const char *a1)
{
  fig_log_get_emitter();
  sub_2B08();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

void sub_1230C(const char *a1)
{
  fig_log_get_emitter();
  sub_2B08();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

uint64_t sub_1289C(_DWORD *a1)
{
  fig_log_get_emitter();
  v4 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v1, v7, v9, v10, v11, vars0, vars8);
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sub_13B04()
{
  sub_7B74();
  sub_2B34();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  sub_7B74();
  sub_7B48();
  return FigSignalErrorAtGM(v0);
}

uint64_t sub_13BA8()
{
  sub_7B74();
  sub_2B34();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  sub_7B74();
  sub_7B48();
  return FigSignalErrorAtGM(v0);
}

uint64_t sub_13D3C(_DWORD *a1)
{
  sub_2B48();
  sub_2B34();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  sub_2B48();
  sub_7B48();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t sub_13DE8(_DWORD *a1)
{
  sub_2B48();
  sub_2B34();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  sub_2B48();
  sub_7B48();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

void sub_13E94()
{
  fig_log_get_emitter();
  sub_2B20();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v26, v29, v32, v38, v40, v41, v42);
  sub_7AF0();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (sub_7B54(v2, v3, v4, v5, v6, v7, v8, v9, v24, v27, v30, v33, v35, v36, v37))
  {
    v16 = v0;
  }

  else
  {
    v16 = v0 & 0xFFFFFFFE;
  }

  if (v16)
  {
    sub_7B0C("[CMIColourConstancyRegistrationV1 registerImage:referenceLumaTexture:]");
    v16 = sub_7B24(v17, v18, v19, v20, &dword_0, v21, v22, "<<<< CMIColourConstancy >>>> %s: allocateResources failed", v25, v28, v31, v34);
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

  sub_7AC0(v16, v10, v11, v23, v12, v13, v14, v15, v25, v28, v31, v34, SHIDWORD(v34), v39);
}

void sub_13F74()
{
  fig_log_get_emitter();
  sub_2B20();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v26, v29, v32, v38, v40, v41, v42);
  sub_7AF0();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (sub_7B54(v2, v3, v4, v5, v6, v7, v8, v9, v24, v27, v30, v33, v35, v36, v37))
  {
    v16 = v0;
  }

  else
  {
    v16 = v0 & 0xFFFFFFFE;
  }

  if (v16)
  {
    sub_7B0C("[CMIColourConstancyRegistrationV1 registerImage:referenceLumaTexture:]");
    v16 = sub_7B24(v17, v18, v19, v20, &dword_0, v21, v22, "<<<< CMIColourConstancy >>>> %s: processReferenceTexture failed", v25, v28, v31, v34);
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

  sub_7AC0(v16, v10, v11, v23, v12, v13, v14, v15, v25, v28, v31, v34, SHIDWORD(v34), v39);
}

void sub_142B0(void *a1, void *a2, const char *a3)
{
  sub_80BC();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, a3, v10, v11, vars0, vars8);
}

void sub_14344(void *a1, const char *a2)
{
  sub_80BC();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, a2, v8, v9, vars0, vars8);
}

void *sub_14A0C(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_new() init];
    v3 = v1[24];
    v1[24] = v2;

    if (v1[24] && (v4 = [objc_opt_new() initWithMetalContext:v1[1]], v5 = v1[25], v1[25] = v4, v5, v1[25]))
    {
      return 0;
    }

    else
    {
      sub_80BC();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return (&dword_4 + 3);
    }
  }

  return result;
}

id sub_14B9C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, double a5)
{
  if (!a1)
  {
    return 0;
  }

  v64 = 0uLL;
  v63 = 0uLL;
  v62 = 0uLL;
  v60 = 0;
  v61 = 0;
  v10 = matrix_identity_float3x3.columns[1];
  v59[0] = matrix_identity_float3x3.columns[0];
  v59[1] = v10;
  v59[2] = matrix_identity_float3x3.columns[2];
  v11 = [CMIColourConstancyCommon getWhiteBalanceGains:*(a1 + 96) outputVector:&v64];
  if (v11)
  {
    v38 = v11;
    sub_80BC();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v40, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", 0, "CMIColourConstancyProcessorV1.m", 683);
  }

  else
  {
    v12 = [CMIColourConstancyCommon getWhiteBalanceGains:*(a1 + 136) outputVector:&v63];
    if (v12)
    {
      v38 = v12;
      sub_80BC();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", 0, "CMIColourConstancyProcessorV1.m", 686);
    }

    else
    {
      v13 = [CMIColourConstancyCommon getStrobeWhiteBalanceGains:*(a1 + 216) metadata:*(a1 + 136) outputVector:&v62];
      if (v13)
      {
        v38 = v13;
        sub_80BC();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v42, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", 0, "CMIColourConstancyProcessorV1.m", 689);
      }

      else
      {
        v14 = [CMIColourConstancyCommon calculateEIT:*(a1 + 96) result:&v61 + 4];
        if (v14)
        {
          v38 = v14;
          sub_80BC();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v43, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", 0, "CMIColourConstancyProcessorV1.m", 693);
        }

        else
        {
          v15 = [CMIColourConstancyCommon calculateEIT:*(a1 + 136) result:&v61];
          if (v15)
          {
            v38 = v15;
            sub_80BC();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", 0, "CMIColourConstancyProcessorV1.m", 696);
          }

          else
          {
            v16 = [CMIColourConstancyCommon getLensShadingCorrectionMaxGain:*(a1 + 112) outputMaxGain:&v60 + 4];
            if (v16)
            {
              v38 = v16;
              sub_80BC();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v45, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", 0, "CMIColourConstancyProcessorV1.m", 700);
            }

            else
            {
              v17 = [CMIColourConstancyCommon getLensShadingCorrectionMaxGain:*(a1 + 152) outputMaxGain:&v60];
              if (v17)
              {
                v38 = v17;
                sub_80BC();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", 0, "CMIColourConstancyProcessorV1.m", 703);
              }

              else
              {
                v18 = [CMIColourConstancyCommon getStrobeColourCorrectionMatrix:*(a1 + 136) outputMatrix:v59];
                if (v18)
                {
                  v38 = v18;
                  sub_80BC();
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v47, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", 0, "CMIColourConstancyProcessorV1.m", 707);
                }

                else
                {
                  *v19.f32 = vmaxnm_f32(*&v62, 0x3400000034000000);
                  v19.i32[2] = fmaxf(*(&v62 + 2), 0.00000011921);
                  v53 = v63;
                  __asm { FMOV            V0.4S, #1.0 }

                  v54 = _Q0;
                  v55 = v64;
                  v56 = vdivq_f32(_Q0, v19);
                  *(a1 + 64) = v56;
                  v25 = [*(a1 + 200) prepareToProcessWithConfig:*(a1 + 192) processingType:0];
                  if (v25)
                  {
                    v38 = v25;
                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_3D058, "<<<< CMIColourConstancy >>>> Fig", "err == 0 ", "bail", "failed to setup ColourConstancyCoreProcessor", "CMIColourConstancyProcessorV1.m", 720, v25);
                  }

                  else
                  {
                    *v26.f32 = vmaxnm_f32(*&v53, 0x3400000034000000);
                    v26.i32[2] = fmaxf(*(&v53 + 2), 0.00000011921);
                    *v28.f32 = vmaxnm_f32(*&v55, 0x3400000034000000);
                    v28.i64[1] = __PAIR64__(HIDWORD(v53), COERCE_UNSIGNED_INT(fmaxf(*(&v55 + 2), 0.00000011921)));
                    v29 = *(a1 + 200);
                    v30 = *(a1 + 80);
                    v31 = *(a1 + 88);
                    v32 = *(a1 + 120);
                    v33 = *(a1 + 128);
                    v34 = *(a1 + 104);
                    v35 = *(a1 + 144);
                    LODWORD(v27) = HIDWORD(v61);
                    v57 = *a4;
                    v58 = *(a4 + 4);
                    LODWORD(v51) = v61;
                    v36 = [v29 applyWithAmbientLumaTexture:v30 ambientChromaTexture:v31 flashLumaTexture:v32 flashChromaTexture:v33 ambientYUVOffsets:v34 flashYUVOffsets:v35 ambientLSCGainsTexture:0.0 flashLSCGainsTexture:0.0 ambientLSCMaxGain:COERCE_DOUBLE(__PAIR64__(v54.u32[1] flashLSCMaxGain:HIDWORD(v60))) ambientWhitePoint:COERCE_DOUBLE(__PAIR64__(DWORD1(v55) flashWhitePoint:v60)) strobeWhitePoint:*vdivq_f32(v54 ambientIntegrationTime:v28).i64 flashIntegrationTime:*vdivq_f32(v54 cropRect:v26).i64 LSCCropRect:*v56.i64 fullSizeDimensions:v27 strobeCCM:v51 outputColourAccuracyConfidenceTexture:a2 outputLumaTexture:a3 outputChromaTexture:&v57 outputLinearRGBTexture:*&a5];
                    if (v36)
                    {
                      v38 = v36;
                      sub_80BC();
                      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v48, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", "Calculating ColourConstancyCore failed.", "CMIColourConstancyProcessorV1.m", 745, v52);
                    }

                    else
                    {
                      v37 = [*(a1 + 200) finishProcessing];
                      if (v37)
                      {
                        v38 = v37;
                        sub_80BC();
                        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v49, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", "Finish processing ColourConstancyCore failed.", "CMIColourConstancyProcessorV1.m", 748, v52);
                      }

                      else
                      {
                        v38 = [*(a1 + 200) getCenterWeightedColourAccuracyConfidenceLevel:a1 + 212];
                        if (v38)
                        {
                          sub_80BC();
                          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v50, "<<<< CMIColourConstancy >>>> Fig", "err == CMIColourConstancyStatusNoError", "bail", "Getting the centerWeightedColourAccuracyConfidenceLevel from the ColourConstancyCoreProcessor failed.", "CMIColourConstancyProcessorV1.m", 752, v52);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v38;
}

uint64_t sub_15168(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 objectForKeyedSubscript:@"ThumbnailHeight"];
    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"ThumbnailHeight"];
      v9 = (a1 + 192);
      [*(a1 + 192) setThumbnailHeight:{objc_msgSend(v8, "intValue")}];
    }

    else
    {
      v9 = (a1 + 192);
      [*(a1 + 192) setThumbnailHeight:{objc_msgSend(*(a1 + 192), "thumbnailHeight")}];
    }

    v10 = [v6 objectForKeyedSubscript:@"ThumbnailWidth"];
    if (v10)
    {
      v11 = [v6 objectForKeyedSubscript:@"ThumbnailWidth"];
      [*v9 setThumbnailWidth:{objc_msgSend(v11, "intValue")}];
    }

    else
    {
      [*v9 setThumbnailWidth:{objc_msgSend(*v9, "thumbnailWidth")}];
    }

    v407 = a1;
    [*(a1 + 192) setClippingRecoveryEnabled:*(a1 + 209)];
    v12 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v13 = [v12 objectForKeyedSubscript:@"PyramidGaussianSigma"];
    if (v13)
    {
      v14 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v2 = [v14 objectForKeyedSubscript:@"PyramidGaussianSigma"];
      [v2 floatValue];
    }

    else
    {
      v14 = [*v9 clippingRecoveryConfig];
      [v14 pyramidGaussianSigma];
    }

    [*v9 clippingRecoveryConfig];
    objc_claimAutoreleasedReturnValue();
    *&v15 = sub_98C8();
    [v16 setPyramidGaussianSigma:v15];

    if (v13)
    {
    }

    v17 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v18 = [v17 objectForKeyedSubscript:@"PyramidGaussianKernelRadius"];
    if (v18)
    {
      v19 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v2 = [v19 objectForKeyedSubscript:@"PyramidGaussianKernelRadius"];
      v20 = [v2 intValue];
    }

    else
    {
      v19 = [*v9 clippingRecoveryConfig];
      v20 = [v19 pyramidGaussianKernelRadius];
    }

    v21 = [*v9 clippingRecoveryConfig];
    [v21 setPyramidGaussianKernelRadius:v20];

    if (v18)
    {
    }

    v22 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v23 = [v22 objectForKeyedSubscript:@"ClippedLikelihoodScalar"];
    if (v23)
    {
      v24 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v2 = [v24 objectForKeyedSubscript:@"ClippedLikelihoodScalar"];
      [v2 floatValue];
    }

    else
    {
      v24 = [*v9 clippingRecoveryConfig];
      [v24 clippedLikelihoodScalar];
    }

    [*v9 clippingRecoveryConfig];
    objc_claimAutoreleasedReturnValue();
    *&v25 = sub_98C8();
    [v26 setClippedLikelihoodScalar:v25];

    if (v23)
    {
    }

    v27 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v28 = [v27 objectForKeyedSubscript:@"ClippedLikelihoodExponent"];
    if (v28)
    {
      v29 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v2 = [v29 objectForKeyedSubscript:@"ClippedLikelihoodExponent"];
      [v2 floatValue];
    }

    else
    {
      v29 = [*v9 clippingRecoveryConfig];
      [v29 clippedLikelihoodExponent];
    }

    [*v9 clippingRecoveryConfig];
    objc_claimAutoreleasedReturnValue();
    *&v30 = sub_98C8();
    [v31 setClippedLikelihoodExponent:v30];

    if (v28)
    {
    }

    v32 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v33 = [v32 objectForKeyedSubscript:@"FusionMapDilationRadius"];
    if (v33)
    {
      v34 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v2 = [v34 objectForKeyedSubscript:@"FusionMapDilationRadius"];
      v35 = [v2 intValue];
    }

    else
    {
      v34 = [*v9 clippingRecoveryConfig];
      v35 = [v34 fusionMapDilationRadius];
    }

    v36 = [*v9 clippingRecoveryConfig];
    [v36 setFusionMapDilationRadius:v35];

    if (v33)
    {
    }

    v37 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v38 = [v37 objectForKeyedSubscript:@"FusionMapGaussianSigma"];
    if (v38)
    {
      v39 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v2 = [v39 objectForKeyedSubscript:@"FusionMapGaussianSigma"];
      [v2 floatValue];
    }

    else
    {
      v39 = [*v9 clippingRecoveryConfig];
      [v39 fusionMapGaussianSigma];
    }

    [*v9 clippingRecoveryConfig];
    objc_claimAutoreleasedReturnValue();
    *&v40 = sub_98C8();
    [v41 setFusionMapGaussianSigma:v40];

    if (v38)
    {
    }

    v42 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v43 = [v42 objectForKeyedSubscript:@"FusionMapGaussianKernelRadius"];
    if (v43)
    {
      v44 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v2 = [v44 objectForKeyedSubscript:@"FusionMapGaussianKernelRadius"];
      v45 = [v2 intValue];
    }

    else
    {
      v44 = [*v9 clippingRecoveryConfig];
      v45 = [v44 fusionMapGaussianKernelRadius];
    }

    v46 = [*v9 clippingRecoveryConfig];
    [v46 setFusionMapGaussianKernelRadius:v45];

    if (v43)
    {
    }

    v47 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v48 = [v47 objectForKeyedSubscript:@"Gamma"];
    if (v48)
    {
      v49 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v2 = [v49 objectForKeyedSubscript:@"Gamma"];
      [v2 floatValue];
    }

    else
    {
      v49 = [*v9 clippingRecoveryConfig];
      [v49 gamma];
    }

    [*v9 clippingRecoveryConfig];
    objc_claimAutoreleasedReturnValue();
    *&v50 = sub_98C8();
    [v51 setGamma:v50];

    if (v48)
    {
    }

    v52 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v53 = [v52 objectForKeyedSubscript:@"MicroHazeDetection"];
    v54 = [v53 objectForKeyedSubscript:@"GridWidth"];
    if (v54)
    {
      v55 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v56 = [v55 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v56 objectForKeyedSubscript:@"GridWidth"];
      v57 = [v46 intValue];
    }

    else
    {
      v55 = [*v9 clippingRecoveryConfig];
      v56 = [v55 microHazeDetectionConfig];
      v57 = [v56 gridWidth];
    }

    v408 = v9;
    v58 = [*v9 clippingRecoveryConfig];
    v59 = [v58 microHazeDetectionConfig];
    [v59 setGridWidth:v57];

    if (v54)
    {
    }

    v60 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v61 = [v60 objectForKeyedSubscript:@"MicroHazeDetection"];
    v62 = [v61 objectForKeyedSubscript:@"GridHeight"];
    if (v62)
    {
      v63 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v64 = [v63 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v64 objectForKeyedSubscript:@"GridHeight"];
      [v46 intValue];
      v65 = v408;
    }

    else
    {
      v65 = v408;
      v63 = [*v408 clippingRecoveryConfig];
      v64 = [v63 microHazeDetectionConfig];
      [v64 gridHeight];
    }

    v66 = [*v65 clippingRecoveryConfig];
    [v66 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98E0();
    [v67 setGridHeight:?];

    if (v62)
    {
    }

    v68 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v69 = [v68 objectForKeyedSubscript:@"MicroHazeDetection"];
    v70 = [v69 objectForKeyedSubscript:@"GridBands"];
    if (v70)
    {
      v71 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v72 = [v71 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v72 objectForKeyedSubscript:@"GridBands"];
      v73 = [v46 intValue];
      v74 = v408;
    }

    else
    {
      v74 = v408;
      v71 = [*v408 clippingRecoveryConfig];
      v72 = [v71 microHazeDetectionConfig];
      v73 = [v72 gridBands];
    }

    v75 = [*v74 clippingRecoveryConfig];
    [v75 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98E0();
    [v76 setGridBands:?];

    if (v70)
    {
    }

    v77 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v78 = [v77 objectForKeyedSubscript:@"MicroHazeDetection"];
    v79 = [v78 objectForKeyedSubscript:@"GridRegionScale"];
    if (v79)
    {
      v80 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v81 = [v80 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v81 objectForKeyedSubscript:@"GridRegionScale"];
      [v46 floatValue];
      v82 = v408;
    }

    else
    {
      v82 = v408;
      v80 = [*v408 clippingRecoveryConfig];
      v81 = [v80 microHazeDetectionConfig];
      [v81 gridRegionScale];
    }

    v83 = [*v82 clippingRecoveryConfig];
    [v83 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v84 = sub_98A4();
    [v85 setGridRegionScale:v84];

    if (v79)
    {
    }

    v86 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v87 = [v86 objectForKeyedSubscript:@"MicroHazeDetection"];
    v88 = [v87 objectForKeyedSubscript:@"GainMapWidth"];
    if (v88)
    {
      v89 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v90 = [v89 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v90 objectForKeyedSubscript:@"GainMapWidth"];
      [v46 intValue];
    }

    else
    {
      v89 = [*v82 clippingRecoveryConfig];
      v90 = [v89 microHazeDetectionConfig];
      [v90 gainMapWidth];
    }

    v91 = [*v82 clippingRecoveryConfig];
    [v91 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98E0();
    [v92 setGainMapWidth:?];

    if (v88)
    {
    }

    v93 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v94 = [v93 objectForKeyedSubscript:@"MicroHazeDetection"];
    v95 = [v94 objectForKeyedSubscript:@"GainMapHeight"];
    if (v95)
    {
      v96 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v97 = [v96 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v97 objectForKeyedSubscript:@"GainMapHeight"];
      v98 = [v46 intValue];
      v99 = v408;
    }

    else
    {
      v99 = v408;
      v96 = [*v408 clippingRecoveryConfig];
      v97 = [v96 microHazeDetectionConfig];
      v98 = [v97 gainMapHeight];
    }

    v100 = [*v99 clippingRecoveryConfig];
    [v100 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98E0();
    [v101 setGainMapHeight:?];

    if (v95)
    {
    }

    v102 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v103 = [v102 objectForKeyedSubscript:@"MicroHazeDetection"];
    v104 = [v103 objectForKeyedSubscript:@"BandingMinWeight"];
    if (v104)
    {
      v105 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v106 = [v105 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v106 objectForKeyedSubscript:@"BandingMinWeight"];
      [v46 floatValue];
      v107 = v408;
    }

    else
    {
      v107 = v408;
      v105 = [*v408 clippingRecoveryConfig];
      v106 = [v105 microHazeDetectionConfig];
      [v106 bandingMinWeight];
    }

    v108 = [*v107 clippingRecoveryConfig];
    [v108 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v109 = sub_98A4();
    [v110 setBandingMinWeight:v109];

    if (v104)
    {
    }

    v111 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v112 = [v111 objectForKeyedSubscript:@"MicroHazeDetection"];
    v113 = [v112 objectForKeyedSubscript:@"BandingGaussianSigmaScale"];
    if (v113)
    {
      v114 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v115 = [v114 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v115 objectForKeyedSubscript:@"BandingGaussianSigmaScale"];
      [v46 floatValue];
    }

    else
    {
      v114 = [*v107 clippingRecoveryConfig];
      v115 = [v114 microHazeDetectionConfig];
      [v115 bandingGaussianSigmaScale];
    }

    v116 = [*v107 clippingRecoveryConfig];
    [v116 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v117 = sub_98A4();
    [v118 setBandingGaussianSigmaScale:v117];

    if (v113)
    {
    }

    v119 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v120 = [v119 objectForKeyedSubscript:@"MicroHazeDetection"];
    v121 = [v120 objectForKeyedSubscript:@"FilterToSigmaScale"];
    if (v121)
    {
      v122 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v123 = [v122 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v123 objectForKeyedSubscript:@"FilterToSigmaScale"];
      [v46 floatValue];
    }

    else
    {
      v122 = [*v107 clippingRecoveryConfig];
      v123 = [v122 microHazeDetectionConfig];
      [v123 filterToSigmaScale];
    }

    v124 = [*v107 clippingRecoveryConfig];
    [v124 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v125 = sub_98A4();
    [v126 setFilterToSigmaScale:v125];

    if (v121)
    {
    }

    v127 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v128 = [v127 objectForKeyedSubscript:@"MicroHazeDetection"];
    v129 = [v128 objectForKeyedSubscript:@"SpatialGaussianSigmaScale"];
    if (v129)
    {
      v130 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v131 = [v130 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v131 objectForKeyedSubscript:@"SpatialGaussianSigmaScale"];
      [v46 floatValue];
    }

    else
    {
      v130 = [*v107 clippingRecoveryConfig];
      v131 = [v130 microHazeDetectionConfig];
      [v131 spatialGaussianSigmaScale];
    }

    v132 = [*v107 clippingRecoveryConfig];
    [v132 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v133 = sub_98A4();
    [v134 setSpatialGaussianSigmaScale:v133];

    if (v129)
    {
    }

    v135 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v136 = [v135 objectForKeyedSubscript:@"MicroHazeDetection"];
    v137 = [v136 objectForKeyedSubscript:@"StrongGradientsMaskResponseGain"];
    if (v137)
    {
      v138 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v139 = [v138 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v139 objectForKeyedSubscript:@"StrongGradientsMaskResponseGain"];
      [v46 floatValue];
    }

    else
    {
      v138 = [*v107 clippingRecoveryConfig];
      v139 = [v138 microHazeDetectionConfig];
      [v139 strongGradientsMaskResponseGain];
    }

    v140 = [*v107 clippingRecoveryConfig];
    [v140 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v141 = sub_98A4();
    [v142 setStrongGradientsMaskResponseGain:v141];

    if (v137)
    {
    }

    v143 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v144 = [v143 objectForKeyedSubscript:@"MicroHazeDetection"];
    v145 = [v144 objectForKeyedSubscript:@"StrongGradientsMaskResponseBias"];
    if (v145)
    {
      v146 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v147 = [v146 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v147 objectForKeyedSubscript:@"StrongGradientsMaskResponseBias"];
      [v46 floatValue];
    }

    else
    {
      v146 = [*v107 clippingRecoveryConfig];
      v147 = [v146 microHazeDetectionConfig];
      [v147 strongGradientsMaskResponseBias];
    }

    v148 = [*v107 clippingRecoveryConfig];
    [v148 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v149 = sub_98A4();
    [v150 setStrongGradientsMaskResponseBias:v149];

    if (v145)
    {
    }

    v151 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v152 = [v151 objectForKeyedSubscript:@"MicroHazeDetection"];
    v153 = [v152 objectForKeyedSubscript:@"StrongGradientsMaskResponseExponent"];
    if (v153)
    {
      v154 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v155 = [v154 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v155 objectForKeyedSubscript:@"StrongGradientsMaskResponseExponent"];
      [v46 floatValue];
    }

    else
    {
      v154 = [*v107 clippingRecoveryConfig];
      v155 = [v154 microHazeDetectionConfig];
      [v155 strongGradientsMaskResponseExponent];
    }

    v156 = [*v107 clippingRecoveryConfig];
    [v156 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v157 = sub_98A4();
    [v158 setStrongGradientsMaskResponseExponent:v157];

    if (v153)
    {
    }

    v159 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v160 = [v159 objectForKeyedSubscript:@"MicroHazeDetection"];
    v161 = [v160 objectForKeyedSubscript:@"PositiveIntensityMaskResponseGain"];
    if (v161)
    {
      v162 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v163 = [v162 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v163 objectForKeyedSubscript:@"PositiveIntensityMaskResponseGain"];
      [v46 floatValue];
    }

    else
    {
      v162 = [*v107 clippingRecoveryConfig];
      v163 = [v162 microHazeDetectionConfig];
      [v163 positiveIntensityMaskResponseGain];
    }

    v164 = [*v107 clippingRecoveryConfig];
    [v164 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v165 = sub_98A4();
    [v166 setPositiveIntensityMaskResponseGain:v165];

    if (v161)
    {
    }

    v167 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v168 = [v167 objectForKeyedSubscript:@"MicroHazeDetection"];
    v169 = [v168 objectForKeyedSubscript:@"PositiveIntensityMaskResponseBias"];
    if (v169)
    {
      v170 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v171 = [v170 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v171 objectForKeyedSubscript:@"PositiveIntensityMaskResponseBias"];
      [v46 floatValue];
    }

    else
    {
      v170 = [*v107 clippingRecoveryConfig];
      v171 = [v170 microHazeDetectionConfig];
      [v171 positiveIntensityMaskResponseBias];
    }

    v172 = [*v107 clippingRecoveryConfig];
    [v172 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v173 = sub_98A4();
    [v174 setPositiveIntensityMaskResponseBias:v173];

    if (v169)
    {
    }

    v175 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v176 = [v175 objectForKeyedSubscript:@"MicroHazeDetection"];
    v177 = [v176 objectForKeyedSubscript:@"PositiveIntensityMaskResponseExponent"];
    if (v177)
    {
      v178 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v179 = [v178 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v179 objectForKeyedSubscript:@"PositiveIntensityMaskResponseExponent"];
      [v46 floatValue];
    }

    else
    {
      v178 = [*v107 clippingRecoveryConfig];
      v179 = [v178 microHazeDetectionConfig];
      [v179 positiveIntensityMaskResponseExponent];
    }

    v180 = [*v107 clippingRecoveryConfig];
    [v180 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v181 = sub_98A4();
    [v182 setPositiveIntensityMaskResponseExponent:v181];

    if (v177)
    {
    }

    v183 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v184 = [v183 objectForKeyedSubscript:@"MicroHazeDetection"];
    v185 = [v184 objectForKeyedSubscript:@"MaskFusionGain"];
    if (v185)
    {
      v186 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v187 = [v186 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v187 objectForKeyedSubscript:@"MaskFusionGain"];
      [v46 floatValue];
    }

    else
    {
      v186 = [*v107 clippingRecoveryConfig];
      v187 = [v186 microHazeDetectionConfig];
      [v187 maskFusionGain];
    }

    v188 = [*v107 clippingRecoveryConfig];
    [v188 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v189 = sub_98A4();
    [v190 setMaskFusionGain:v189];

    if (v185)
    {
    }

    v191 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v192 = [v191 objectForKeyedSubscript:@"MicroHazeDetection"];
    v193 = [v192 objectForKeyedSubscript:@"MaskFusionMixFactor"];
    if (v193)
    {
      v194 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v195 = [v194 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v195 objectForKeyedSubscript:@"MaskFusionMixFactor"];
      [v46 floatValue];
    }

    else
    {
      v194 = [*v107 clippingRecoveryConfig];
      v195 = [v194 microHazeDetectionConfig];
      [v195 maskFusionMixFactor];
    }

    v196 = [*v107 clippingRecoveryConfig];
    [v196 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v197 = sub_98A4();
    [v198 setMaskFusionMixFactor:v197];

    if (v193)
    {
    }

    v199 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v200 = [v199 objectForKeyedSubscript:@"MicroHazeDetection"];
    v201 = [v200 objectForKeyedSubscript:@"AmbientQualityMinGain"];
    if (v201)
    {
      v202 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v203 = [v202 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v203 objectForKeyedSubscript:@"AmbientQualityMinGain"];
      [v46 floatValue];
    }

    else
    {
      v202 = [*v107 clippingRecoveryConfig];
      v203 = [v202 microHazeDetectionConfig];
      [v203 ambientQualityMinGain];
    }

    v204 = [*v107 clippingRecoveryConfig];
    [v204 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v205 = sub_98A4();
    [v206 setAmbientQualityMinGain:v205];

    if (v201)
    {
    }

    v207 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v208 = [v207 objectForKeyedSubscript:@"MicroHazeDetection"];
    v209 = [v208 objectForKeyedSubscript:@"AmbientQualityMaxGain"];
    if (v209)
    {
      v210 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v211 = [v210 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v211 objectForKeyedSubscript:@"AmbientQualityMaxGain"];
      [v46 floatValue];
    }

    else
    {
      v210 = [*v107 clippingRecoveryConfig];
      v211 = [v210 microHazeDetectionConfig];
      [v211 ambientQualityMaxGain];
    }

    v212 = [*v107 clippingRecoveryConfig];
    [v212 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v213 = sub_98A4();
    [v214 setAmbientQualityMaxGain:v213];

    if (v209)
    {
    }

    v215 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v216 = [v215 objectForKeyedSubscript:@"MicroHazeDetection"];
    v217 = [v216 objectForKeyedSubscript:@"AmbientQualityZeroThreshold"];
    if (v217)
    {
      v218 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v219 = [v218 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v219 objectForKeyedSubscript:@"AmbientQualityZeroThreshold"];
      [v46 floatValue];
    }

    else
    {
      v218 = [*v107 clippingRecoveryConfig];
      v219 = [v218 microHazeDetectionConfig];
      [v219 ambientQualityZeroThreshold];
    }

    v220 = [*v107 clippingRecoveryConfig];
    [v220 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v221 = sub_98A4();
    [v222 setAmbientQualityZeroThreshold:v221];

    if (v217)
    {
    }

    v223 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v224 = [v223 objectForKeyedSubscript:@"MicroHazeDetection"];
    v225 = [v224 objectForKeyedSubscript:@"AmbientQualityOneThreshold"];
    if (v225)
    {
      v226 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v227 = [v226 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v227 objectForKeyedSubscript:@"AmbientQualityOneThreshold"];
      [v46 floatValue];
    }

    else
    {
      v226 = [*v107 clippingRecoveryConfig];
      v227 = [v226 microHazeDetectionConfig];
      [v227 ambientQualityOneThreshold];
    }

    v228 = [*v107 clippingRecoveryConfig];
    [v228 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v229 = sub_98A4();
    [v230 setAmbientQualityOneThreshold:v229];

    if (v225)
    {
    }

    v231 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v232 = [v231 objectForKeyedSubscript:@"MicroHazeDetection"];
    v233 = [v232 objectForKeyedSubscript:@"ShadowEdgesResponseGain"];
    if (v233)
    {
      v234 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v235 = [v234 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v235 objectForKeyedSubscript:@"ShadowEdgesResponseGain"];
      [v46 floatValue];
    }

    else
    {
      v234 = [*v107 clippingRecoveryConfig];
      v235 = [v234 microHazeDetectionConfig];
      [v235 shadowEdgesResponseGain];
    }

    v236 = [*v107 clippingRecoveryConfig];
    [v236 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v237 = sub_98A4();
    [v238 setShadowEdgesResponseGain:v237];

    if (v233)
    {
    }

    v239 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v240 = [v239 objectForKeyedSubscript:@"MicroHazeDetection"];
    v241 = [v240 objectForKeyedSubscript:@"ShadowEdgesResponseExponent"];
    if (v241)
    {
      v242 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v243 = [v242 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v243 objectForKeyedSubscript:@"ShadowEdgesResponseExponent"];
      [v46 floatValue];
    }

    else
    {
      v242 = [*v107 clippingRecoveryConfig];
      v243 = [v242 microHazeDetectionConfig];
      [v243 shadowEdgesResponseExponent];
    }

    v244 = [*v107 clippingRecoveryConfig];
    [v244 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v245 = sub_98A4();
    [v246 setShadowEdgesResponseExponent:v245];

    if (v241)
    {
    }

    v247 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v248 = [v247 objectForKeyedSubscript:@"MicroHazeDetection"];
    v249 = [v248 objectForKeyedSubscript:@"FusionDiffuseGaussianSigma"];
    if (v249)
    {
      v250 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v251 = [v250 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v251 objectForKeyedSubscript:@"FusionDiffuseGaussianSigma"];
      [v46 floatValue];
    }

    else
    {
      v250 = [*v107 clippingRecoveryConfig];
      v251 = [v250 microHazeDetectionConfig];
      [v251 fusionDiffuseGaussianSigma];
    }

    v252 = [*v107 clippingRecoveryConfig];
    [v252 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v253 = sub_98A4();
    [v254 setFusionDiffuseGaussianSigma:v253];

    if (v249)
    {
    }

    v255 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
    v256 = [v255 objectForKeyedSubscript:@"MicroHazeDetection"];
    v257 = [v256 objectForKeyedSubscript:@"FusionDiffuseSigmaToHalfFilterScale"];
    if (v257)
    {
      v258 = [v6 objectForKeyedSubscript:@"ClippingRecovery"];
      v259 = [v258 objectForKeyedSubscript:@"MicroHazeDetection"];
      v46 = [v259 objectForKeyedSubscript:@"FusionDiffuseSigmaToHalfFilterScale"];
      [v46 floatValue];
    }

    else
    {
      v258 = [*v107 clippingRecoveryConfig];
      v259 = [v258 microHazeDetectionConfig];
      [v259 fusionDiffuseSigmaToHalfFilterScale];
    }

    v260 = [*v107 clippingRecoveryConfig];
    [v260 microHazeDetectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v261 = sub_98A4();
    [v262 setFusionDiffuseSigmaToHalfFilterScale:v261];

    if (v257)
    {
    }

    v263 = [v6 objectForKeyedSubscript:@"SensorSpaceConversion"];
    v264 = [v263 objectForKeyedSubscript:@"ClippedConfidenceLikelihoodScale"];
    if (v264)
    {
      v265 = [v6 objectForKeyedSubscript:@"SensorSpaceConversion"];
      v258 = [v265 objectForKeyedSubscript:@"ClippedConfidenceLikelihoodScale"];
      [v258 floatValue];
    }

    else
    {
      v265 = [*v107 sensorSpaceConversionConfig];
      [v265 clippedConfidenceLikelihoodScale];
    }

    [*v107 sensorSpaceConversionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v266 = sub_98B0();
    [v267 setClippedConfidenceLikelihoodScale:v266];

    if (v264)
    {
    }

    v268 = [v6 objectForKeyedSubscript:@"SensorSpaceConversion"];
    v269 = [v268 objectForKeyedSubscript:@"ClippedConfidenceLikelihoodExponent"];
    if (v269)
    {
      v270 = [v6 objectForKeyedSubscript:@"SensorSpaceConversion"];
      v258 = [v270 objectForKeyedSubscript:@"ClippedConfidenceLikelihoodExponent"];
      [v258 floatValue];
    }

    else
    {
      v270 = [*v107 sensorSpaceConversionConfig];
      [v270 clippedConfidenceLikelihoodExponent];
    }

    [*v107 sensorSpaceConversionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v271 = sub_98B0();
    [v272 setClippedConfidenceLikelihoodExponent:v271];

    if (v269)
    {
    }

    v273 = [v6 objectForKeyedSubscript:@"StrobeCorrection"];
    v274 = [v273 objectForKeyedSubscript:@"StrobeBeamProfileScaleMinimum"];
    if (v274)
    {
      v275 = [v6 objectForKeyedSubscript:@"StrobeCorrection"];
      v258 = [v275 objectForKeyedSubscript:@"StrobeBeamProfileScaleMinimum"];
      [v258 floatValue];
    }

    else
    {
      v275 = [*v107 strobeCorrectionConfig];
      [v275 strobeBeamProfileScaleMinimum];
    }

    [*v107 strobeCorrectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v276 = sub_98B0();
    [v277 setStrobeBeamProfileScaleMinimum:v276];

    if (v274)
    {
    }

    v278 = [v6 objectForKeyedSubscript:@"StrobeCorrection"];
    v279 = [v278 objectForKeyedSubscript:@"StrobeBeamProfileScaleMaximum"];
    if (v279)
    {
      v280 = [v6 objectForKeyedSubscript:@"StrobeCorrection"];
      v258 = [v280 objectForKeyedSubscript:@"StrobeBeamProfileScaleMaximum"];
      [v258 floatValue];
    }

    else
    {
      v280 = [*v107 strobeCorrectionConfig];
      [v280 strobeBeamProfileScaleMaximum];
    }

    [*v107 strobeCorrectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v281 = sub_98B0();
    [v282 setStrobeBeamProfileScaleMaximum:v281];

    if (v279)
    {
    }

    v283 = [v6 objectForKeyedSubscript:@"StrobeCorrection"];
    v284 = [v283 objectForKeyedSubscript:@"StrobeBeamProfileComponentZeroThreshold"];
    if (v284)
    {
      v285 = [v6 objectForKeyedSubscript:@"StrobeCorrection"];
      v258 = [v285 objectForKeyedSubscript:@"StrobeBeamProfileComponentZeroThreshold"];
      [v258 floatValue];
    }

    else
    {
      v285 = [*v107 strobeCorrectionConfig];
      [v285 strobeBeamProfileComponentZeroThreshold];
    }

    [*v107 strobeCorrectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v286 = sub_98B0();
    [v287 setStrobeBeamProfileComponentZeroThreshold:v286];

    if (v284)
    {
    }

    v288 = [v6 objectForKeyedSubscript:@"StrobeCorrection"];
    v289 = [v288 objectForKeyedSubscript:@"StrobeBeamProfileComponentOneThreshold"];
    if (v289)
    {
      v290 = [v6 objectForKeyedSubscript:@"StrobeCorrection"];
      v258 = [v290 objectForKeyedSubscript:@"StrobeBeamProfileComponentOneThreshold"];
      [v258 floatValue];
    }

    else
    {
      v290 = [*v107 strobeCorrectionConfig];
      [v290 strobeBeamProfileComponentOneThreshold];
    }

    [*v107 strobeCorrectionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v291 = sub_98B0();
    [v292 setStrobeBeamProfileComponentOneThreshold:v291];

    if (v289)
    {
    }

    v293 = [v6 objectForKeyedSubscript:@"ToneCompression"];
    v294 = [v293 objectForKeyedSubscript:@"NumIntensityHistogramBins"];
    if (v294)
    {
      v295 = [v6 objectForKeyedSubscript:@"ToneCompression"];
      v258 = [v295 objectForKeyedSubscript:@"NumIntensityHistogramBins"];
      [v258 intValue];
    }

    else
    {
      v295 = [*v107 toneCompressionConfig];
      [v295 numIntensityHistogramBins];
    }

    [*v107 toneCompressionConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98BC();
    [v296 setNumIntensityHistogramBins:?];

    if (v294)
    {
    }

    v297 = [v6 objectForKeyedSubscript:@"ToneCompression"];
    v298 = [v297 objectForKeyedSubscript:@"BalanceDenseToSparseExponentFactor"];
    if (v298)
    {
      v299 = [v6 objectForKeyedSubscript:@"ToneCompression"];
      v258 = [v299 objectForKeyedSubscript:@"BalanceDenseToSparseExponentFactor"];
      [v258 floatValue];
    }

    else
    {
      v299 = [*v107 toneCompressionConfig];
      [v299 balanceDenseToSparseExponentFactor];
    }

    [*v107 toneCompressionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v300 = sub_98B0();
    [v301 setBalanceDenseToSparseExponentFactor:v300];

    if (v298)
    {
    }

    v302 = [v6 objectForKeyedSubscript:@"ToneCompression"];
    v303 = [v302 objectForKeyedSubscript:@"MinimumProbabilityDensity"];
    if (v303)
    {
      v304 = [v6 objectForKeyedSubscript:@"ToneCompression"];
      v258 = [v304 objectForKeyedSubscript:@"MinimumProbabilityDensity"];
      [v258 floatValue];
    }

    else
    {
      v304 = [*v107 toneCompressionConfig];
      [v304 minimumProbabilityDensity];
    }

    [*v107 toneCompressionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v305 = sub_98B0();
    [v306 setMinimumProbabilityDensity:v305];

    if (v303)
    {
    }

    v307 = [v6 objectForKeyedSubscript:@"ToneCompression"];
    v308 = [v307 objectForKeyedSubscript:@"KernelSupportGaussianSigma"];
    if (v308)
    {
      v309 = [v6 objectForKeyedSubscript:@"ToneCompression"];
      v258 = [v309 objectForKeyedSubscript:@"KernelSupportGaussianSigma"];
      [v258 floatValue];
    }

    else
    {
      v309 = [*v107 toneCompressionConfig];
      [v309 kernelSupportGaussianSigma];
    }

    [*v107 toneCompressionConfig];
    objc_claimAutoreleasedReturnValue();
    *&v310 = sub_98B0();
    [v311 setKernelSupportGaussianSigma:v310];

    if (v308)
    {
    }

    v312 = [v6 objectForKeyedSubscript:@"ColourAccuracyConfidence"];
    v313 = [v312 objectForKeyedSubscript:@"StrobeIlluminationZeroThreshold"];
    if (v313)
    {
      v314 = [v6 objectForKeyedSubscript:@"ColourAccuracyConfidence"];
      v258 = [v314 objectForKeyedSubscript:@"StrobeIlluminationZeroThreshold"];
      [v258 floatValue];
    }

    else
    {
      v314 = [*v107 colourAccuracyConfidenceConfig];
      [v314 strobeIlluminationZeroThreshold];
    }

    [*v107 colourAccuracyConfidenceConfig];
    objc_claimAutoreleasedReturnValue();
    *&v315 = sub_98B0();
    [v316 setStrobeIlluminationZeroThreshold:v315];

    if (v313)
    {
    }

    v317 = [v6 objectForKeyedSubscript:@"ColourAccuracyConfidence"];
    v318 = [v317 objectForKeyedSubscript:@"StrobeIlluminationOneThreshold"];
    if (v318)
    {
      v319 = [v6 objectForKeyedSubscript:@"ColourAccuracyConfidence"];
      v258 = [v319 objectForKeyedSubscript:@"StrobeIlluminationOneThreshold"];
      [v258 floatValue];
    }

    else
    {
      v319 = [*v107 colourAccuracyConfidenceConfig];
      [v319 strobeIlluminationOneThreshold];
    }

    [*v107 colourAccuracyConfidenceConfig];
    objc_claimAutoreleasedReturnValue();
    *&v320 = sub_98B0();
    [v321 setStrobeIlluminationOneThreshold:v320];

    if (v318)
    {
    }

    v322 = [v6 objectForKeyedSubscript:@"ColourAccuracyConfidence"];
    v323 = [v322 objectForKeyedSubscript:@"CenterWeightingGaussianSigmaScale"];
    if (v323)
    {
      v324 = [v6 objectForKeyedSubscript:@"ColourAccuracyConfidence"];
      v258 = [v324 objectForKeyedSubscript:@"CenterWeightingGaussianSigmaScale"];
      [v258 floatValue];
    }

    else
    {
      v324 = [*v107 colourAccuracyConfidenceConfig];
      [v324 centerWeightingGaussianSigmaScale];
    }

    [*v107 colourAccuracyConfidenceConfig];
    objc_claimAutoreleasedReturnValue();
    *&v325 = sub_98B0();
    [v326 setCenterWeightingGaussianSigmaScale:v325];

    if (v323)
    {
    }

    [*v107 thumbnailWidth];
    [*v107 whiteBalanceStrobeConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98D4();
    [v327 setThumbnailWidth:?];

    v328 = [*v107 thumbnailHeight];
    [*v107 whiteBalanceStrobeConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98D4();
    [v329 setThumbnailHeight:?];

    v330 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
    v331 = [v330 objectForKeyedSubscript:@"LowStrobeIlluminationFlashFusionEnabled"];
    if (v331)
    {
      v332 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
      v258 = [v332 objectForKeyedSubscript:@"LowStrobeIlluminationFlashFusionEnabled"];
      [v258 BOOLValue];
    }

    else
    {
      v332 = [*v107 whiteBalanceStrobeConfig];
      [v332 lowStrobeIlluminationFlashFusionEnabled];
    }

    [*v107 whiteBalanceStrobeConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98BC();
    [v333 setLowStrobeIlluminationFlashFusionEnabled:?];

    if (v331)
    {
    }

    v334 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
    v335 = [v334 objectForKeyedSubscript:@"BalanceMatchingMinimumConfidenceWeight"];
    if (v335)
    {
      v336 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
      v258 = [v336 objectForKeyedSubscript:@"BalanceMatchingMinimumConfidenceWeight"];
      [v258 floatValue];
    }

    else
    {
      v336 = [*v107 whiteBalanceStrobeConfig];
      [v336 balanceMatchingMinimumConfidenceWeight];
    }

    [*v107 whiteBalanceStrobeConfig];
    objc_claimAutoreleasedReturnValue();
    *&v337 = sub_98B0();
    [v338 setBalanceMatchingMinimumConfidenceWeight:v337];

    if (v335)
    {
    }

    v339 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
    v340 = [v339 objectForKeyedSubscript:@"BalanceMatchingThumbnailWidth"];
    if (v340)
    {
      v341 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
      v258 = [v341 objectForKeyedSubscript:@"BalanceMatchingThumbnailWidth"];
      [v258 intValue];
    }

    else
    {
      v341 = [*v107 whiteBalanceStrobeConfig];
      [v341 balanceMatchingThumbnailWidth];
    }

    [*v107 whiteBalanceStrobeConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98BC();
    [v342 setBalanceMatchingThumbnailWidth:?];

    if (v340)
    {
    }

    v343 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
    v344 = [v343 objectForKeyedSubscript:@"BalanceMatchingThumbnailHeight"];
    if (v344)
    {
      v345 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
      v258 = [v345 objectForKeyedSubscript:@"BalanceMatchingThumbnailHeight"];
      [v258 intValue];
    }

    else
    {
      v345 = [*v107 whiteBalanceStrobeConfig];
      [v345 balanceMatchingThumbnailHeight];
    }

    [*v107 whiteBalanceStrobeConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98BC();
    [v346 setBalanceMatchingThumbnailHeight:?];

    if (v344)
    {
    }

    v347 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
    v348 = [v347 objectForKeyedSubscript:@"BalanceMatchingGaussianSigma"];
    if (v348)
    {
      v349 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
      v258 = [v349 objectForKeyedSubscript:@"BalanceMatchingGaussianSigma"];
      [v258 floatValue];
    }

    else
    {
      v349 = [*v107 whiteBalanceStrobeConfig];
      [v349 balanceMatchingGaussianSigma];
    }

    [*v107 whiteBalanceStrobeConfig];
    objc_claimAutoreleasedReturnValue();
    *&v350 = sub_98B0();
    [v351 setBalanceMatchingGaussianSigma:v350];

    if (v348)
    {
    }

    v352 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
    v353 = [v352 objectForKeyedSubscript:@"BalanceMatchingSigmaToFilterScale"];
    if (v353)
    {
      v354 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
      v258 = [v354 objectForKeyedSubscript:@"BalanceMatchingSigmaToFilterScale"];
      [v258 floatValue];
    }

    else
    {
      v354 = [*v107 whiteBalanceStrobeConfig];
      [v354 balanceMatchingSigmaToFilterScale];
    }

    [*v107 whiteBalanceStrobeConfig];
    objc_claimAutoreleasedReturnValue();
    *&v355 = sub_98B0();
    [v356 setBalanceMatchingSigmaToFilterScale:v355];

    if (v353)
    {
    }

    v357 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
    v358 = [v357 objectForKeyedSubscript:@"FlashToStrobeIntensityFusionMixFactor"];
    if (v358)
    {
      v359 = [v6 objectForKeyedSubscript:@"WhiteBalanceStrobe"];
      v258 = [v359 objectForKeyedSubscript:@"FlashToStrobeIntensityFusionMixFactor"];
      [v258 floatValue];
    }

    else
    {
      v359 = [*v107 whiteBalanceStrobeConfig];
      [v359 flashToStrobeIntensityFusionMixFactor];
    }

    [*v107 whiteBalanceStrobeConfig];
    objc_claimAutoreleasedReturnValue();
    *&v360 = sub_98B0();
    [v361 setFlashToStrobeIntensityFusionMixFactor:v360];

    if (v358)
    {
    }

    v362 = [*v107 thumbnailWidth];
    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98D4();
    [v363 setSourceThumbnailWidth:?];

    v364 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
    v365 = [v364 objectForKeyedSubscript:@"SpeedModeStyleTransferEnabled"];
    if (v365)
    {
      v366 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
      v258 = [v366 objectForKeyedSubscript:@"SpeedModeStyleTransferEnabled"];
      [v258 BOOLValue];
    }

    else
    {
      v366 = [*v107 styleTransferConfig];
      [v366 speedModeStyleTransferEnabled];
    }

    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98BC();
    [v367 setSpeedModeStyleTransferEnabled:?];

    if (v365)
    {
    }

    v368 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
    v369 = [v368 objectForKeyedSubscript:@"StyleTransferThumbnailWidth"];
    if (v369)
    {
      v370 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
      v258 = [v370 objectForKeyedSubscript:@"StyleTransferThumbnailWidth"];
      [v258 intValue];
    }

    else
    {
      v370 = [*v107 styleTransferConfig];
      [v370 styleTransferThumbnailWidth];
    }

    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98BC();
    [v371 setStyleTransferThumbnailWidth:?];

    if (v369)
    {
    }

    v372 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
    v373 = [v372 objectForKeyedSubscript:@"StyleTransferThumbnailHeight"];
    if (v373)
    {
      v374 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
      v258 = [v374 objectForKeyedSubscript:@"StyleTransferThumbnailHeight"];
      [v258 intValue];
    }

    else
    {
      v374 = [*v107 styleTransferConfig];
      [v374 styleTransferThumbnailHeight];
    }

    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98BC();
    [v375 setStyleTransferThumbnailHeight:?];

    if (v373)
    {
    }

    v376 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
    v377 = [v376 objectForKeyedSubscript:@"StyleTransferThumbnailSharpness"];
    if (v377)
    {
      v378 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
      v258 = [v378 objectForKeyedSubscript:@"StyleTransferThumbnailSharpness"];
      [v258 floatValue];
    }

    else
    {
      v378 = [*v107 styleTransferConfig];
      [v378 styleTransferThumbnailSharpness];
    }

    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    *&v379 = sub_98B0();
    [v380 setStyleTransferThumbnailSharpness:v379];

    if (v377)
    {
    }

    v381 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
    v382 = [v381 objectForKeyedSubscript:@"StyleTransferGammaCorrection"];
    if (v382)
    {
      v383 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
      v258 = [v383 objectForKeyedSubscript:@"StyleTransferGammaCorrection"];
      [v258 floatValue];
    }

    else
    {
      v383 = [*v107 styleTransferConfig];
      [v383 styleTransferGammaCorrection];
    }

    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    *&v384 = sub_98B0();
    [v385 setStyleTransferGammaCorrection:v384];

    if (v382)
    {
    }

    v386 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
    v387 = [v386 objectForKeyedSubscript:@"ClippingCorrectionEnabled"];
    if (v387)
    {
      v388 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
      v258 = [v388 objectForKeyedSubscript:@"ClippingCorrectionEnabled"];
      [v258 BOOLValue];
    }

    else
    {
      v388 = [*v107 styleTransferConfig];
      [v388 clippingCorrectionEnabled];
    }

    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98BC();
    [v389 setClippingCorrectionEnabled:?];

    if (v387)
    {
    }

    v390 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
    v391 = [v390 objectForKeyedSubscript:@"ClippingCorrectionTransitionGain"];
    if (v391)
    {
      v392 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
      v258 = [v392 objectForKeyedSubscript:@"ClippingCorrectionTransitionGain"];
      [v258 floatValue];
    }

    else
    {
      v392 = [*v107 styleTransferConfig];
      [v392 clippingCorrectionTransitionGain];
    }

    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    *&v393 = sub_98B0();
    [v394 setClippingCorrectionTransitionGain:v393];

    if (v391)
    {
    }

    v395 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
    v396 = [v395 objectForKeyedSubscript:@"ClippingCorrectionTransitionExponent"];
    if (v396)
    {
      v397 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
      v258 = [v397 objectForKeyedSubscript:@"ClippingCorrectionTransitionExponent"];
      [v258 floatValue];
    }

    else
    {
      v397 = [*v107 styleTransferConfig];
      [v397 clippingCorrectionTransitionExponent];
    }

    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    *&v398 = sub_98B0();
    [v399 setClippingCorrectionTransitionExponent:v398];

    if (v396)
    {
    }

    v400 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
    v401 = [v400 objectForKeyedSubscript:@"ColourSaturationBoostGain"];
    if (v401)
    {
      v402 = [v6 objectForKeyedSubscript:@"StyleTransfer"];
      v258 = [v402 objectForKeyedSubscript:@"ColourSaturationBoostGain"];
      [v258 floatValue];
    }

    else
    {
      v402 = [*v107 styleTransferConfig];
      [v402 colourSaturationBoostGain];
    }

    [*v107 styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    *&v403 = sub_98B0();
    [v404 setColourSaturationBoostGain:v403];

    if (v401)
    {
    }

    [*(v407 + 192) styleTransferConfig];
    objc_claimAutoreleasedReturnValue();
    sub_98D4();
    [v405 setGlobalRGBToneCurveEnabled:?];

    *(v407 + 208) = 1;
  }

  return 0;
}

uint64_t sub_185E8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_18638(_DWORD *a1)
{
  v4 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v1, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v8);
  *a1 = result;
  return result;
}

id sub_186DC(uint64_t a1, void *a2)
{
  if (!a1 || (*(a1 + 16) & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    *(a1 + 17) = 0;
    v3 = 92274688;
  }

  [a2 setMemSize:v3];

  return [a2 setAllocatorType:2];
}

uint64_t sub_18798(uint64_t a1)
{
  v5 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v1, v6, v7, v8, v9, vars0, vars8);
  v3 = qword_3D058;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, a1, "<<<< CMIColourConstancy >>>>", 239, v1);
}

uint64_t sub_188A8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_18924(_DWORD *a1)
{
  v4 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v1, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sub_189CC(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void sub_18FCC(void *a1, void *a2, void *a3)
{
  sub_80BC();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
}

void sub_19054(void *a1, void *a2, void *a3)
{
  sub_80BC();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
}

void sub_190DC(void *a1, void *a2, void *a3)
{
  sub_80BC();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
}

void sub_19164(void *a1, void *a2, void *a3)
{
  sub_80BC();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
}

void sub_191F0(void *a1, void *a2, void *a3)
{
  sub_80BC();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
}

void sub_19278(void *a1, void *a2, void *a3)
{
  sub_80BC();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
}

void sub_1AFC8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_C524(a1, a2, a3);
  fig_log_get_emitter();
  sub_2B20();
  v5 = v4;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
}

void sub_1B050(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_C524(a1, a2, a3);
  fig_log_get_emitter();
  sub_2B20();
  v5 = v4;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
}

void sub_1B0D8(int a1, void *a2)
{
  fig_log_get_emitter();
  sub_2B20();
  v4 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
}

void sub_1B434(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_C524(a1, a2, a3);
  fig_log_get_emitter();
  sub_2B20();
  v5 = v4;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
}

void sub_1B4BC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_C524(a1, a2, a3);
  fig_log_get_emitter();
  sub_2B20();
  v5 = v4;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
}

void sub_1B544(int a1, void *a2)
{
  fig_log_get_emitter();
  sub_2B20();
  v4 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
}