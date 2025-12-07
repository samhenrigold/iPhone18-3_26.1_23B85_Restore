uint64_t VCImageQueue_EnqueueAttributes_cold_1(float *a1, float *a2)
{
  *a1 = 0.0;
  *a2 = 0.0;
  if (_VCImageQueue_computeVisibleFrameRatio() && _VCImageQueue_computeVisibleFrameRatio())
  {
    v4 = VCMU_CompareWithAccuracy(*a2, *a1, 0.01) << 31 >> 31;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

void VCImageQueue_EnqueueFrame_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCImageQueue_EnqueueFrame_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_40_6();
    if (os_log_type_enabled(v0, v1))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0x1Cu);
    }
  }
}

void VCImageQueue_EnqueueFrame_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCImageQueue_EnqueueFrame_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void VCImageQueue_EnqueueFrame_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void VCImageQueue_EnqueueFrame_cold_6(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }
}

void VCImageQueue_EnqueueFrame_cold_7(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a1 length];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }
}

void VCImageQueue_EnqueueFrame_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCImageQueue_EnqueueFrame_cold_9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x1Cu);
    }
  }
}

uint64_t _VCImageQueue_EnqueuePixelBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  v5 = OUTLINED_FUNCTION_40_6();
  return _VCImageQueue_applyLayerTransforms(v5, v6);
}

void _VCImageQueue_EnqueuePixelBuffer_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  v4 = 0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed for NULL queue=%p", v2, 0x26u);
}

void _VCImageQueue_EmitFrameEnqueuedSignposts_cold_1()
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

void _VCImageQueue_EmitFrameEnqueuedSignposts_cold_2()
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

void _VCImageQueue_EmitFrameEnqueuedSignposts_cold_3()
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

void VCImageQueue_EnqueueSampleBuffer_cold_1()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_11_3();
}

void VCImageQueue_EnqueueSampleBuffer_cold_2()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_11_3();
}

void VCImageQueue_EnqueueSampleBuffer_cold_3()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_11_3();
}

void VCImageQueue_EnqueueSampleBuffer_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCImageQueue_EnqueueSampleBuffer_cold_5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCImageQueue_EnqueueSampleBuffer_cold_6()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCImageQueue_EnqueueSampleBuffer_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCImageQueue_EnqueueSampleBuffer_cold_8()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCImageQueue_EnqueueSampleBuffer_cold_9()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCImageQueue_EnqueueSampleBuffer_cold_10()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCImageQueue_EnqueueSampleBuffer_cold_11()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  *v0 = v1 & 1;
}

void VCImageQueue_EnqueueSampleBuffer_cold_12()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCImageQueue_EnqueueSampleBuffer_cold_13(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    v3 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_4_4();
        v11 = a1;
        OUTLINED_FUNCTION_7_2(&dword_1DB56E000, v4, v5, " [%s] %s:%d [%p] No data queue setup", v6, v7, v8, v9);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v11 = a1;
      _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] No data queue setup", v10, 0x26u);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCImageQueue_EnqueueSampleBuffer_cold_14()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCImageQueue_EnqueueSampleBuffer_cold_15()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCImageQueue_EnqueueSampleBuffer_cold_16(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a3 = 0;
}

void VCImageQueue_CleanupStreamOutput_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCAudioStreamSendGroup_PushAudioSamples_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 958;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d audio no-op no MKM", v1, 0x1Cu);
}

CMFormatDescriptionRef VideoUtil_CreateDeserializedHEVCParameterSetsFromInputBuffer(uint64_t a1, unint64_t a2)
{
  v93 = *MEMORY[0x1E69E9840];
  formatDescriptionOut = 0;
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return formatDescriptionOut;
    }

    VRTraceErrorLogLevelToCSTR();
    v54 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_34())
    {
      return formatDescriptionOut;
    }

    OUTLINED_FUNCTION_14_8(4.8152e-34);
    OUTLINED_FUNCTION_7_15(v55);
    v91 = 761;
    v57 = " [%s] %s:%d inputBuffer is NULL";
    goto LABEL_67;
  }

  bzero(v86, 0x140uLL);
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v87;
    do
    {
      v7 = bswap32(*(a1 + v5));
      v8 = bswap32(*(a1 + v5 + 4));
      *(v6 - 4) = (v8 >> 25) & 0x3F;
      v6[12] = (v8 >> 19) & 0x3F;
      *(v6 - 1) = a1 + v5 + 4;
      *v6 = v7;
      v27 = v4++ > 8;
      v5 += (v7 + 4);
      v6 += 32;
      v9 = v27 || v5 >= a2;
    }

    while (!v9);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v85 = 0;
  *parameterSetPointers = 0u;
  v84 = 0u;
  *parameterSetSizes = 0u;
  v81 = 0u;
  v82 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v10 = 0;
  if (v4)
  {
    v11 = 0;
    v12 = v4;
    v13 = v87;
    v14 = 1;
    do
    {
      v15 = *(v13 - 4);
      v17 = *(v13 - 1);
      v16 = *v13;
      v18 = v13[12];
      if ((v15 - 33) < 2)
      {
        if (v18 == 1)
        {
          v24 = v15 != 33;
          *(&v78 + v24) = v17;
          *(&v76 + v24) = v16;
          goto LABEL_33;
        }
      }

      else if (v15 != 32 && v15 != 39)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_30_3(4.8152e-34);
            *(v20 + 14) = "_VideoUtil_ExtractParameterSetsFromNALUBlocks";
            v90 = 1024;
            v91 = 748;
            v21 = v19;
            v22 = " [%s] %s:%d Received a NALU Type not supported, wont be deserialized!";
            v23 = 28;
LABEL_25:
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
            goto LABEL_33;
          }
        }

        goto LABEL_33;
      }

      if (!v13[12])
      {
        v27 = v15 == 39 && v11 > 1u;
        if (!v27)
        {
          if (v15 == 39)
          {
            ++v11;
          }

          parameterSetPointers[v10] = v17;
          parameterSetSizes[v10++] = v16;
        }

        goto LABEL_33;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_30_3(4.8153e-34);
          *(v26 + 14) = "_VideoUtil_ExtractParameterSetsFromNALUBlocks";
          v90 = 1024;
          v91 = 743;
          v92 = 1024;
          *(v26 + 30) = v18;
          v21 = v25;
          v22 = " [%s] %s:%d Unsupported NALU layerID=%u";
          v23 = 34;
          goto LABEL_25;
        }
      }

LABEL_33:
      v13 += 32;
      v9 = v14++ >= v12;
    }

    while (!v9 && v10 < 6);
  }

  v29 = *MEMORY[0x1E695E480];
  if (CMVideoFormatDescriptionCreateFromHEVCParameterSets(*MEMORY[0x1E695E480], v10, parameterSetPointers, parameterSetSizes, 4, 0, &formatDescriptionOut))
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return formatDescriptionOut;
    }

    VRTraceErrorLogLevelToCSTR();
    v54 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_34())
    {
      return formatDescriptionOut;
    }

    OUTLINED_FUNCTION_14_8(4.8152e-34);
    OUTLINED_FUNCTION_7_15(v58);
    v91 = 779;
    v57 = " [%s] %s:%d Unable to create the video format description from the deserialized config records";
    goto LABEL_67;
  }

  v30 = v78;
  if (!v78)
  {
    return formatDescriptionOut;
  }

  v31 = v79;
  if (!v79)
  {
    return formatDescriptionOut;
  }

  v32 = v76;
  v33 = v77;
  Extensions = CMFormatDescriptionGetExtensions(formatDescriptionOut);
  if (!Extensions)
  {
    return formatDescriptionOut;
  }

  v35 = Extensions;
  v36 = *MEMORY[0x1E69600A0];
  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  if (Value)
  {
    v38 = Value;
    v39 = v32 + v33;
    v40 = malloc_type_malloc(v32 + v33 + 16, 0x5EEBA4FuLL);
    if (v40)
    {
      v41 = v40;
      *v40 = -67047423;
      *(v40 + 1) = 10552011;
      v40[8] = 1;
      *(v40 + 9) = __rev16(v32);
      memcpy(v40 + 11, v30, v32);
      v42 = &v41[v32];
      *(v42 + 11) = 162;
      v42[13] = 1;
      *(v42 + 7) = __rev16(v33);
      memcpy(&v41[v32 + 16], v31, v33);
      Mutable = CFDictionaryCreateMutable(v29, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v44 = Mutable;
        v45 = CFDictionaryGetValue(v38, @"hvcC");
        v46 = CFDataCreateWithBytesNoCopy(v29, v41, v39 + 16, *MEMORY[0x1E695E498]);
        if (v46)
        {
          v47 = v46;
          CFDictionarySetValue(v44, @"hvcC", v45);
          CFDictionarySetValue(v44, @"lhvC", v47);
          MutableCopy = CFDictionaryCreateMutableCopy(v29, 0, v35);
          CFDictionarySetValue(MutableCopy, v36, v44);
          Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescriptionOut);
          v50 = Dimensions;
          v51 = HIDWORD(Dimensions);
          if (formatDescriptionOut)
          {
            CFRelease(formatDescriptionOut);
          }

          if (CMVideoFormatDescriptionCreate(v29, 0x68766331u, v50, v51, MutableCopy, &formatDescriptionOut))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v68 = VRTraceErrorLogLevelToCSTR();
              v69 = *MEMORY[0x1E6986650];
              if (OUTLINED_FUNCTION_40())
              {
                *buf = 136315650;
                v89 = v68;
                OUTLINED_FUNCTION_7_15(2080);
                v91 = 655;
                OUTLINED_FUNCTION_26(&dword_1DB56E000, v69, v70, " [%s] %s:%d Failed to create a new format description with LHVC", buf);
              }
            }
          }

          free(v41);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          CFRelease(v44);
          v52 = v47;
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v66 = VRTraceErrorLogLevelToCSTR();
            v67 = *MEMORY[0x1E6986650];
            if (OUTLINED_FUNCTION_40())
            {
              *buf = 136315650;
              v89 = v66;
              OUTLINED_FUNCTION_7_15(2080);
              v91 = 640;
              OUTLINED_FUNCTION_26(&dword_1DB56E000, v67, v74, " [%s] %s:%d Failed to pull LHVC data", buf);
            }
          }

          free(v41);
          v52 = v44;
        }

        CFRelease(v52);
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v64 = VRTraceErrorLogLevelToCSTR();
          v65 = *MEMORY[0x1E6986650];
          if (OUTLINED_FUNCTION_28())
          {
            *buf = 136315650;
            v89 = v64;
            OUTLINED_FUNCTION_7_15(2080);
            v91 = 636;
            OUTLINED_FUNCTION_26(&dword_1DB56E000, v65, v73, " [%s] %s:%d Failed to create extension atoms dictionary", buf);
          }
        }

        free(v41);
      }

      return formatDescriptionOut;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return formatDescriptionOut;
    }

    VRTraceErrorLogLevelToCSTR();
    v54 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_34())
    {
      return formatDescriptionOut;
    }

    OUTLINED_FUNCTION_14_8(4.8152e-34);
    OUTLINED_FUNCTION_7_15(v63);
    v91 = 620;
    v57 = " [%s] %s:%d Failed to allocate memory for lhvC";
LABEL_67:
    OUTLINED_FUNCTION_26(&dword_1DB56E000, v54, v56, v57, buf);
    return formatDescriptionOut;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v59 = *MEMORY[0x1E6986650];
    v60 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_8(4.8152e-34);
        OUTLINED_FUNCTION_7_15(v61);
        v91 = 608;
        OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v59, v62, " [%s] %s:%d Failed to retrieve extension atoms from the extensions dictionary", buf);
      }
    }

    else if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_14_8(4.8152e-34);
      OUTLINED_FUNCTION_7_15(v71);
      v91 = 608;
      OUTLINED_FUNCTION_8_5(&dword_1DB56E000, v59, v72, " [%s] %s:%d Failed to retrieve extension atoms from the extensions dictionary", buf);
    }
  }

  return formatDescriptionOut;
}

BOOL VideoUtil_LayerBoundsAreValid(double a1, double a2, double a3, double a4)
{
  if (CGRectIsNull(*&a1))
  {
    return 0;
  }

  v5.origin.x = OUTLINED_FUNCTION_16_12();
  if (CGRectIsEmpty(v5))
  {
    return 0;
  }

  v6.origin.x = OUTLINED_FUNCTION_16_12();
  return !CGRectEqualToRect(v6, v7);
}

const __CFDictionary *VideoUtil_GetEncodedFrameSEINaluOverheadBytes(const __CFDictionary *result)
{
  v3 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    result = CFDictionaryContainsKey(result, @"PropagatableAttachmentsNALSize");
    if (result)
    {
      result = CFDictionaryGetValue(v1, @"PropagatableAttachmentsNALSize");
      if (result)
      {
        CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
        return valuePtr;
      }
    }
  }

  return result;
}

CFTypeRef VideoUtil_GetDecodedFrameSEINaluOverheadBytes(CFTypeRef result)
{
  v2 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (result)
  {
    result = CMGetAttachment(result, @"PropagatableAttachmentsNALSize", 0);
    if (result)
    {
      CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
      return valuePtr;
    }
  }

  return result;
}

void VideoUtil_PropagateSampleBufferAttachmentsToPixelBuffer(const void *a1, __CVBuffer *a2)
{
  if (a1 && a2)
  {
    v4 = CMGetAttachment(a1, @"PropagatableAttachmentData", 0);
    if (v4)
    {
      v5 = v4;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v7 = Mutable;
        CFDictionarySetValue(Mutable, @"BLOB2", v5);
        CVBufferSetAttachment(a2, @"PropagatableAttachmentData", v7, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v7);
      }
    }

    if (CMGetAttachment(a1, @"TransportLayer", 0))
    {
      v8 = OUTLINED_FUNCTION_34_3();
      CVBufferSetAttachment(v8, v9, v10, v11);
    }

    if (CMGetAttachment(a1, @"vcBufferAttachs", 0))
    {
      v12 = OUTLINED_FUNCTION_34_3();

      CVBufferSetAttachment(v12, v13, v14, v15);
    }
  }
}

void VideoUtil_PropagateSampleBufferAttachmentsClientToEncoder(const void *a1)
{
  if (a1 && CMGetAttachment(a1, @"TransportLayer", 0))
  {
    v2 = OUTLINED_FUNCTION_34_3();
    CMSetAttachment(v2, v3, v4, v5);

    CMRemoveAttachment(a1, @"TransportLayer");
  }
}

void VideoUtil_PropagateSampleBufferAttachmentsDecoderToClient(const void *a1)
{
  if (a1 && CMGetAttachment(a1, @"PropagatableAttachments", 0))
  {
    v2 = OUTLINED_FUNCTION_34_3();
    CMSetAttachment(v2, v3, v4, v5);

    CMRemoveAttachment(a1, @"PropagatableAttachments");
  }
}

double VideoUtil_ComputeScreenSizeClosestToNativeAspectRatio(unsigned int a1, double a2, double a3, double a4, double a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v5;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return v5;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v40 = 1797;
LABEL_43:
    OUTLINED_FUNCTION_9_0();
    _os_log_error_impl(v33, v34, v35, v36, v37, 0x1Cu);
    return v5;
  }

  if (a2 == 0.0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v5;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return v5;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v40 = 1798;
    goto LABEL_43;
  }

  if (a3 == 0.0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v5;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return v5;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v40 = 1799;
    goto LABEL_43;
  }

  if (VCDefaults_GetBoolValueForKey(@"forceScreenCaptureToMod16", 0) && +[VCHardwareSettings allowScreenShareResolutionModuloAdjustment])
  {
    v13 = v5 > a4 || v6 > a5;
    v14 = !v13;
    if (v13)
    {
      v15 = a5;
    }

    else
    {
      v15 = v6;
    }

    if (v14)
    {
      v16 = v5;
    }

    else
    {
      v16 = a4;
    }

    v5 = (v16 + a1 - 1) & -a1;
    v17 = (v15 + a1 - 1) & -a1;
    if (v5 >= (v5 * 0.98))
    {
      v18 = 0x7FFFFFFF;
      v19 = (v16 + a1 - 1) & -a1;
      v20 = a4 / a5;
      do
      {
        v21 = 0;
        v22 = 2 * llround(v19 / v20 * 0.5);
        v23 = (a1 - 1 + v22) & -a1;
        if (v19 == v5)
        {
          v23 = v22;
        }

        v38[0] = v22;
        v38[1] = v23;
        v38[2] = v22 / a1 * a1;
        do
        {
          v24 = v38[v21];
          if (!(v24 % a1))
          {
            v25 = (v20 * v24) - v19;
            if (v25 < 0)
            {
              v25 = v19 - (v20 * v24);
            }

            if (((v25 < v18) & (fabs((a4 * a5 - (v24 * v19)) / (a4 * a5)) * 100.0 < 1.2)) != 0)
            {
              v18 = v25;
              v17 = v38[v21];
              v5 = v19;
            }
          }

          ++v21;
        }

        while (v21 != 3);
        v19 -= a1;
      }

      while (v19 >= (v5 * 0.98));
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        v39 = v26;
        OUTLINED_FUNCTION_6();
        v40 = 1837;
        v41 = 2048;
        v42 = a2;
        v43 = 2048;
        v44 = a3;
        v45 = v27;
        v46 = v5;
        v47 = v27;
        v48 = v17;
        OUTLINED_FUNCTION_4_0();
        _os_log_impl(v28, v29, OS_LOG_TYPE_DEFAULT, v30, v31, 0x3Cu);
      }
    }
  }

  return v5;
}

const __CFNumber *VideoUtil_DisplayAndRenderScaleForPixelBuffer(CMAttachmentBearerRef target, float *a2, float *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!target || !a2 || !a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v22 = 136316418;
      v23 = v9;
      v24 = 2080;
      OUTLINED_FUNCTION_6();
      v25 = 1849;
      v26 = 2048;
      v27 = target;
      v28 = 2048;
      v29 = a2;
      v30 = 2048;
      v31 = a3;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d invalid parameters pixelBuffer=%p outDisplayScale=%p outRenderScale=%p", &v22, 0x3Au);
    }

    return 0;
  }

  v6 = CMGetAttachment(target, @"PropagatableAttachments", 0);
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v25 = 1851;
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_29_0(v12, v13, v14, v15, v16);
        return 0;
      }

      result = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v25 = 1851;
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_5(v17, v18, v19, v20, v21);
    }

    return 0;
  }

  v7 = v6;
  result = CFDictionaryGetValue(v6, @"scrs");
  if (result)
  {
    CFNumberGetValue(result, kCFNumberFloatType, a3);
    result = CFDictionaryGetValue(v7, @"scds");
    if (result)
    {
      CFNumberGetValue(result, kCFNumberFloatType, a2);
      return (*a3 > *a2);
    }
  }

  return result;
}

const __CFDictionary *VideoUtil_IsFrameAFBPerFrameAttachment(const void *a1)
{
  BOOLean[1] = *MEMORY[0x1E69E9840];
  result = CMGetAttachment(a1, @"PropagatableAttachments", 0);
  if (result)
  {
    BOOLean[0] = 0;
    result = CFDictionaryGetValueIfPresent(result, @"fb", BOOLean);
    if (result)
    {
      return (CFBooleanGetValue(BOOLean[0]) != 0);
    }
  }

  return result;
}

void __WriteYuvFrame_block_invoke_cold_1(uint64_t a1, int a2)
{
  FourccToCStr(a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

void VideoUtil_PrintFormatDesc_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d formatDesc is NULL", v2, v3, v4, v5);
}

void VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_1()
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

  OUTLINED_FUNCTION_18();
}

void VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_2()
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

  OUTLINED_FUNCTION_18();
}

void VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_3()
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

  OUTLINED_FUNCTION_18();
}

void VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_4()
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

  OUTLINED_FUNCTION_18();
}

void VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_5()
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

  OUTLINED_FUNCTION_18();
}

void _VideoUtil_SerializeBaseLayerParameterSets_cold_1()
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

  OUTLINED_FUNCTION_18();
}

void _VideoUtil_SerializeBaseLayerParameterSets_cold_2()
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
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *v0 = v1 & 1;
}

void _VideoUtil_SerializeEnhancementLayerParameterSets_cold_1(_BYTE *a1)
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

  *a1 = 1;
}

void _VideoUtil_SerializeEnhancementLayerParameterSets_cold_2(_BYTE *a1)
{
  v8 = *MEMORY[0x1E69E9840];
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
        v7 = 509;
        OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v2, v4, " [%s] %s:%d Failed to extract lhvC from format description", v6);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v7 = 509;
      OUTLINED_FUNCTION_8_5(&dword_1DB56E000, v2, v5, " [%s] %s:%d Failed to extract lhvC from format description", v6);
    }
  }

  *a1 = 1;
}

void VideoUtil_PrintBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void VideoUtil_PrintBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoUtil_PrintBuffer_cold_3()
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

void VideoUtil_AddImgDescToBitstream_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VideoUtil_AddImgDescToBitstream_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VideoUtil_AddImgDescToBitstream_cold_3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v4 = v0;
  OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoUtil.m:%d: FigSampleBufferGetFormatDescription returned NULL", v3);
}

void VideoUtil_CreateSampleBufferWithPixelBuffer_cold_1()
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

void VideoUtil_CreateSampleBufferWithPixelBuffer_cold_2()
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

void VideoUtil_CreateSampleBufferWithPixelBuffer_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d input PixelBuffer is nil", v2, v3, v4, v5);
}

void VideoUtil_SetVisibleRectFrame_cold_1()
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

void VideoUtil_SetVisibleRectAttachment_cold_1()
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

void VideoUtil_CreateSampleFromBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VideoUtil_GetEscapeCountForBuffer_cold_1()
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

void VideoUtil_PerformEscapingForBuffer_cold_1()
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

void VideoUtil_PerformEscapingForBuffer_cold_2()
{
  OUTLINED_FUNCTION_29_3();
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

void VideoUtil_GetEmulationByteCountForBuffer_cold_1()
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

void VideoUtil_RemoveEmulationBytesFromBuffer_cold_1()
{
  OUTLINED_FUNCTION_29_3();
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

void VideoUtil_RemoveEmulationBytesFromBuffer_cold_2()
{
  OUTLINED_FUNCTION_29_3();
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

void VCVideoUtil_AdjustFaceMetadata_cold_1()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_29_0(v1, v2, v3, v4, v5);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_8_5(v6, v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

void VCVideoUtil_AdjustFaceMetadata_cold_2()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_29_0(v1, v2, v3, v4, v5);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_8_5(v6, v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

void VCVideoUtil_AdjustFaceMetadata_cold_3()
{
  OUTLINED_FUNCTION_16_2();
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

  OUTLINED_FUNCTION_16_7();
}

void VCVideoUtil_AdjustFaceMetadata_cold_4()
{
  OUTLINED_FUNCTION_16_2();
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

  OUTLINED_FUNCTION_16_7();
}

void VCVideoUtil_AdjustFaceMetadata_cold_5()
{
  OUTLINED_FUNCTION_16_2();
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

  OUTLINED_FUNCTION_16_7();
}

void VCVideoUtil_AdjustFaceMetadata_cold_6()
{
  OUTLINED_FUNCTION_16_2();
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

  OUTLINED_FUNCTION_16_7();
}

void VCVideoUtil_AdjustFaceMetadata_cold_7()
{
  OUTLINED_FUNCTION_16_2();
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

  OUTLINED_FUNCTION_16_7();
}

void VCVideoUtil_AttachMetadata_cold_1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a2 = a1;
}

void VCVideoUtil_AttachMetadata_cold_2(const void *a1)
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

  CFRelease(a1);
}

void VCVideoUtil_AttachMetadata_cold_3()
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

void VCVideoUtil_AttachMetadata_cold_4()
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

void VCVideoUtil_AttachMetadata_cold_5()
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

void VideoUtil_CreateRxVideoAttributes_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d newRemoteVideoAttributes is NULL", v2, v3, v4, v5);
}

void VideoUtil_CreateTxRemoteScreenAttributes_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d newRemoteScreenAttributes is NULL", v2, v3, v4, v5);
}

void _VideoUtil_SerializeParameterSetsIntoBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_29_0(v1, v2, v3, v4, v5);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_5(v6, v7, v8, v9, v10);
    }
  }
}

void TPGetSignalStrength_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void TPGetSignalStrength_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void TPGetSignalStrength_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void TPUpdateBaseband_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void TPUpdateBaseband_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void TPUpdateBaseband_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void TPUpdateQualityIndictor_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void TPSendUDPPacketARPL_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void TPSendUDPPacketARPL_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void TPSendUDPPacketARPL_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void TPSendUDPPacketARPL_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void TPCreateHandle_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPCreateHandle_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPCleanupBaseband_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void dtls_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "SIP [%s] %s:%d dtls: ARPLSessionCreate(p2pID == %08X) ...", v1, 0x22u);
}

void dtls_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void dtls_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void dtls_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void TPListenVirtualInterface_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPListenVirtualInterface_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPListenVirtualInterface_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

uint64_t TPListenOnPhysicalInterface_cold_1(void *a1, pthread_rwlock_t *a2, uint64_t *a3)
{
  FreeLocalInterfaceList();
  pthread_rwlock_wrlock(a2);
  v5 = *a3;
  if (v5)
  {
    do
    {
      VTP_Close(*v5);
      v6 = *(v5 + 2144);
      v7 = *(v5 + 2128);
      if (v7 != 0xFFFFFFFFLL)
      {
        if (*(v5 + 2136) != 0xFFFFFFFFLL)
        {
          ARPLSessionRelease(*(v5 + 2136));
          *(v5 + 2136) = 0xFFFFFFFFLL;
          v7 = *(v5 + 2128);
        }

        DTLS_Cleanup(v7);
      }

      free(v5);
      v5 = v6;
    }

    while (v6);
  }

  return pthread_rwlock_unlock(a2);
}

void TPListenOnPhysicalInterface_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void TPSend_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPSend_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPSend_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPSend_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPAddTransaction_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPAddTransaction_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void TPGetConnectionData_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPGetConnectionData_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPUpdateInterfaceList_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void TPSetupCTContext_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void CreateSocketAndBind_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void CreateSocketAndBind_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void CreateSocketAndBind_cold_3(uint64_t a1, unsigned __int16 *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  __error();
  v8 = 136316418;
  v9 = a1;
  v10 = 2080;
  v11 = "CreateSocketAndBind";
  v12 = 1024;
  OUTLINED_FUNCTION_6_10();
  v13 = v6;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: bind on %d failed(%d)", &v8, 0x2Eu);
}

void CreateSocketAndBind_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void CreateSocketAndBind_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void CreateSocketAndBind_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TransportMapPacketMultiplexModeToVTPMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void TPProcessRemoteInterfaceChangeMessage_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x32u);
}

void SendUDPPacketForCList_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void TPEnsureRecvProcStarted_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPRecvProc_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPRecvProc_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void RecvMessageUDP_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 1567;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "SIP [%s] %s:%d RecvMessageUDP: pass message SIP", v1, 0x1Cu);
}

void RecvMessageUDP_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void PassMessage_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void PassMessage_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void PassMessage_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void PassMessage_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void PassMessage_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void PassMessage_cold_6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void PassMessage_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void CompressMsg_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TPGetLocalCellTech_cold_1(_DWORD *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 294;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d CTServerConnection is nil", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

void __TPConnectedCallback_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __TPNewCandidatesCallback_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __TPRemoveIPPort_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCBasebandCongestionDetector_SetMode_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCBasebandCongestionDetector_SetMode";
  v6 = 1024;
  v7 = 601;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d basebandCongestionDetector is nil", &v2, 0x1Cu);
}

uint64_t _VCTransportStreamRunLoopVTPWaitForReceive(uint64_t a1, double a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    OUTLINED_FUNCTION_15_6();
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v2;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return v2;
    }

    *buf = 136315650;
    *&buf[4] = v18;
    OUTLINED_FUNCTION_14_9(2080);
    LODWORD(v30) = 155;
LABEL_26:
    OUTLINED_FUNCTION_1_18();
    goto LABEL_13;
  }

  if (a2 < 0.0)
  {
    OUTLINED_FUNCTION_15_6();
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v2;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return v2;
    }

    *buf = 136315650;
    *&buf[4] = v19;
    OUTLINED_FUNCTION_14_9(2080);
    LODWORD(v30) = 156;
    goto LABEL_26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*DerivedStorage) < 1)
  {
    return 2151022653;
  }

  if (*(DerivedStorage + 12) == -1)
  {
    v16 = _VCTransportStreamRunLoopVTPUpdateFDSet();
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }
  }

  memmove(__dst, (DerivedStorage + 16), 0x80uLL);
  v25 = a2;
  v27 = -1431655766;
  v26 = ((a2 - a2) * 1000000.0);
  if (a2 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &v25;
  }

  v6 = VTP_Select((*(DerivedStorage + 144) + 1), __dst, 0, 0, v5);
  if (v6 != -1)
  {
    if (v6)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___VCTransportStreamRunLoopVTPPerformReceive_block_invoke;
      *&v30 = &__block_descriptor_tmp_2_0;
      *(&v30 + 1) = __dst;
      return _VCTransportStreamRunLoopVTPIterateTransportStreams(DerivedStorage, buf);
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return 2151022615;
    }

    VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    v21 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      v2 = 2151022615;
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        return v2;
      }

      OUTLINED_FUNCTION_4_22(4.8153e-34);
      OUTLINED_FUNCTION_7_16("_VCTransportStreamRunLoopVTPWaitForReceive");
      OUTLINED_FUNCTION_5_20(179);
      v22 = " [%s] %s:%d RunLoop %p wait for receive timed out";
LABEL_36:
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0x26u);
      return v2;
    }

    v2 = 2151022615;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      return v2;
    }

    OUTLINED_FUNCTION_4_22(4.8153e-34);
    OUTLINED_FUNCTION_7_16("_VCTransportStreamRunLoopVTPWaitForReceive");
    OUTLINED_FUNCTION_5_20(179);
    v24 = " [%s] %s:%d RunLoop %p wait for receive timed out";
LABEL_43:
    _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, v24, buf, 0x26u);
    return v2;
  }

  if (*__error() == 9)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return 2151022622;
    }

    VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    v23 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      v2 = 2151022622;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        return v2;
      }

      OUTLINED_FUNCTION_4_22(4.8153e-34);
      OUTLINED_FUNCTION_7_16("_VCTransportStreamRunLoopVTPWaitForReceive");
      OUTLINED_FUNCTION_5_20(177);
      v22 = " [%s] %s:%d RunLoop %p wait for receive was cancelled";
      goto LABEL_36;
    }

    v2 = 2151022622;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      return v2;
    }

    OUTLINED_FUNCTION_4_22(4.8153e-34);
    OUTLINED_FUNCTION_7_16("_VCTransportStreamRunLoopVTPWaitForReceive");
    OUTLINED_FUNCTION_5_20(177);
    v24 = " [%s] %s:%d RunLoop %p wait for receive was cancelled";
    goto LABEL_43;
  }

  v2 = *__error() | 0xC0360000;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_28())
    {
      v9 = *__error();
      *buf = 136315906;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = "_VCTransportStreamRunLoopVTPWaitForReceive";
      *&buf[22] = 1024;
      LODWORD(v30) = 180;
      WORD2(v30) = 1024;
      *(&v30 + 6) = v9;
      v10 = &dword_1DB56E000;
      v11 = " [%s] %s:%d Select failed %d";
      v12 = buf;
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 34;
LABEL_13:
      _os_log_error_impl(v10, v13, v14, v11, v12, v15);
    }
  }

  return v2;
}

uint64_t _VCTransportStreamRunLoopVTPUpdateFDSet()
{
  v40 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15_6();
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0x80000000;
  v37 = 0;
  v38 = v2;
  v39 = 0x9800000000;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  if (v1)
  {
    v3 = v1;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v24[2] = ___VCTransportStreamRunLoopVTPUpdateFDSet_block_invoke;
    v24[3] = &unk_1E85F6F70;
    v24[4] = &v25;
    v24[5] = v2;
    v4 = _VCTransportStreamRunLoopVTPIterateTransportStreams(v1, v24);
    if ((v4 & 0x80000000) != 0 && v4 != v0 + 64)
    {
      v0 = v4;
    }

    else
    {
      os_unfair_lock_lock(v3 + 2);
      os_unfair_lock_opaque = v3[3]._os_unfair_lock_opaque;
      if (os_unfair_lock_opaque == -1 && (os_unfair_lock_opaque = VTP_Socket(2, 2, 17), v3[3]._os_unfair_lock_opaque = os_unfair_lock_opaque, os_unfair_lock_opaque == -1))
      {
        v0 = *__error() | 0xC0360000;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_40())
          {
            v18 = *__error();
            v29 = 136315906;
            v30 = v17;
            v31 = 2080;
            v32 = "_VCTransportStreamRunLoopVTPUpdateFDSet";
            v33 = 1024;
            v34 = 232;
            v35 = 1024;
            v36 = v18;
            OUTLINED_FUNCTION_11_10();
            _os_log_error_impl(v19, v20, v21, v22, v23, 0x22u);
          }
        }

        os_unfair_lock_unlock(v3 + 2);
      }

      else
      {
        v6 = *(v26 + 6);
        if (v6 <= os_unfair_lock_opaque)
        {
          v6 = os_unfair_lock_opaque;
        }

        *(v26 + 6) = v6;
        v7 = v3[3]._os_unfair_lock_opaque;
        v8 = v38 + 24;
        if (__darwin_check_fd_set_overflow(v7, (v38 + 24), 0))
        {
          *(v8 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
        }

        os_unfair_lock_unlock(v3 + 2);
        memmove(&v3[4], (v38 + 24), 0x80uLL);
        v0 = 0;
        v3[36]._os_unfair_lock_opaque = v26[3];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      v29 = 136315650;
      v30 = v10;
      v31 = 2080;
      v32 = "_VCTransportStreamRunLoopVTPUpdateFDSet";
      v33 = 1024;
      v34 = 218;
      OUTLINED_FUNCTION_1_18();
      _os_log_error_impl(v11, v12, v13, v14, v15, v16);
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v25, 8);
  return v0;
}

uint64_t _VCTransportStreamRunLoopVTPIterateTransportStreams(CFArrayRef *a1, uint64_t a2)
{
  *&v29[13] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Count = CFArrayGetCount(*a1);
    if (Count < 1)
    {
      return 2151022657;
    }

    else
    {
      v6 = 0;
      v7 = *MEMORY[0x1E695E480];
      v8 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v6);
        number = 0;
        VCPacketFilterGetCMBaseObject();
        v11 = v10;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v12)
        {
          v2 = 4294954514;
LABEL_11:
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (OUTLINED_FUNCTION_40())
            {
              OUTLINED_FUNCTION_16_14();
              v25 = "_VCTransportStreamRunLoopVTPIterateTransportStreams";
              v26 = 1024;
              v27 = 279;
              v28 = 1024;
              *v29 = v2;
              v29[2] = 2048;
              *&v29[3] = ValueAtIndex;
              OUTLINED_FUNCTION_11_10();
              v19 = 44;
              goto LABEL_15;
            }
          }

          return v2;
        }

        v2 = v12(v11, @"UnderlyingVFD", v7, &number);
        if ((v2 & 0x80000000) != 0)
        {
          goto LABEL_11;
        }

        if (!number)
        {
          break;
        }

        valuePtr = -1;
        CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
        CFRelease(number);
        v2 = (*(a2 + 16))(a2, a1, ValueAtIndex, valuePtr);
        if ((v2 & 0x80000000) == 0 && v8 != ++v6)
        {
          continue;
        }

        return v2;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_40())
        {
          OUTLINED_FUNCTION_16_14();
          v25 = "_VCTransportStreamRunLoopVTPIterateTransportStreams";
          v26 = 1024;
          v27 = 280;
          v28 = 2048;
          *v29 = ValueAtIndex;
          OUTLINED_FUNCTION_11_10();
          v19 = 38;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_6();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        valuePtr = 136315650;
        v23 = v20;
        v24 = 2080;
        v25 = "_VCTransportStreamRunLoopVTPIterateTransportStreams";
        v26 = 1024;
        v27 = 270;
        OUTLINED_FUNCTION_1_18();
LABEL_15:
        _os_log_error_impl(v14, v15, v16, v17, v18, v19);
      }
    }
  }

  return v2;
}

void VCTransportStreamRunLoopVTPCreate_cold_1(int a1, unsigned int *a2)
{
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  v4 = v3 | 0xD0360000;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_11_10();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
    }
  }

  *a2 = v4;
}

void VCTransportStreamRunLoopVTPCreate_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_18();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

uint64_t VCTransportStreamRunLoopVTPCreate_cold_3(_DWORD *a1)
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
    OUTLINED_FUNCTION_1_18();
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  }

  result = 0;
  *a1 = -2143944703;
  return result;
}

void _VCTransportStreamRunLoopVTPAddTransportStream_cold_1()
{
  OUTLINED_FUNCTION_3_24();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_18();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCTransportStreamRunLoopVTPAddTransportStream_cold_2(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_11_10();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = -2143944663;
}

void _VCTransportStreamRunLoopVTPAddTransportStream_cold_3()
{
  OUTLINED_FUNCTION_3_24();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_18();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCTransportStreamRunLoopVTPAddTransportStream_cold_4()
{
  OUTLINED_FUNCTION_3_24();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_18();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCTransportStreamRunLoopVTPRemoveTransportStream_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_11_10();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = -2143944682;
}

void _VCTransportStreamRunLoopVTPRemoveTransportStream_cold_2()
{
  OUTLINED_FUNCTION_3_24();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_18();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCTransportStreamRunLoopVTPRemoveTransportStream_cold_3()
{
  OUTLINED_FUNCTION_3_24();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_18();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCTransportStreamRunLoopVTPCancelWait_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_18();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCTransportStreamRunLoopVTPCancelWait_cold_2()
{
  OUTLINED_FUNCTION_3_24();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_18();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

uint64_t SRTPUpdateRTCPReceiveSSRCAndDeriveNewKeys(_DWORD *a1, int a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  memset(v13, 0, sizeof(v13));
  if (a1)
  {
    if (*a1)
    {
      if (a1[98])
      {
        a1[30] = a2;
        SRTPDeriveMediaKeyInfo(a1, v13, a3);
        if ((v4 & 0x80000000) == 0)
        {
          v4 = _SRTPUpdateEncryptionInfo(a1, v13, 0);
        }

        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 2149711928;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_28())
        {
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v7, v8, " [%s] %s:%d SRTPInfo not initialized properly. Call SRTPPrepareEncryption first", v9, v10, v11, v12);
        }
      }
    }
  }

  else
  {
    v5 = 2147549186;
  }

  VCMediaKeyIndex_Release(v14);
  return v5;
}

void SRTPGetROC_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Tried to decrement ROC to -1, prevented this from happening", v2, v3, v4, v5);
}

void SRTPInitCrypt_cold_1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "SRTPInitCrypt";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d failed with error %d", v3, *v4, "SRTPInitCrypt" >> 16, v5);
}

void SRTPUseEncryption_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid SRTP exchange info provided", v2, v3, v4, v5);
}

void SRTPUseEncryption_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d SRTPInfo not initialized properly. Call SRTPPrepareEncryption first", v2, v3, v4, v5);
}

void _SRTPUpdateEncryption_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d SRTPInfo not initialized properly. Call SRTPPrepareEncryption first", v2, v3, v4, v5);
}

void SRTPUpdateKeyMaterialForRTPInfo_cold_1(uint64_t a1)
{
  _SRTPCancelEncryption(a1);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void SRTPUpdateKeyMaterialForRTPInfo_cold_2(uint64_t a1)
{
  _SRTPCancelEncryption(a1);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _SRTPCancelEncryption_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d SRTPInfo not initialized properly. Call SRTPPrepareEncryption first", v2, v3, v4, v5);
}

void SRTPUpdateEncryptionInfo_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d SRTPUpdateEncryptionInfo: attempt to set an invalid media key index", v2, v3, v4, v5);
}

void SRTPDeriveMediaKeyInfo_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d SRTPDeriveMediaKeyInfo: media key/salt derivation failed", v2, v3, v4, v5);
}

void SRTPEncryptData_cold_1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  HIWORD(v6) = v1;
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v1, v2, " [%s] %s:%d SRTPEncryptData: In=[%s]", v3, v4, v5, v6);
}

void SRTPEncryptData_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid operating mode %d, falling back to kSRTPOperatingModeRFCCompliant", v2, v3, v4, 434);
}

void SRTPEncryptData_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void SRTPEncryptData_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void SRTPEncryptData_cold_5()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  HIWORD(v6) = v1;
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v1, v2, " [%s] %s:%d SRTPEncryptData: Out=[%s]", v3, v4, v5, v6);
}

void SRTPEncrypt_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Max number of SRTP packets reached", v2, v3, v4, v5);
}

void SRTCPEncrypt_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Max number of SRTCP packets reached", v2, v3, v4, v5);
}

void SRTCPDecrypt_cold_1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "SRTCPDecrypt";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d SRTP header doesn't fit in packet. Packet length=%d", v3, *v4, "SRTCPDecrypt" >> 16, v5);
}

void SRTPCalculateTotalSuffixBytes_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not get MKI size - invalid parameter", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void SRTPCalculateTotalSuffixBytes_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not get HMAC size - invalid parameter", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void SRTPCalculateTotalSuffixBytes_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d SRTPInfo should not be nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void SRTPAddAuthenticationTag_cold_1()
{
  OUTLINED_FUNCTION_46();
  pthread_mutex_unlock(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid MediaKeyIndex. Stop sending the packet", v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void SRTPAddAuthenticationTag_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d inData should not be nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void SRTPAddAuthenticationTag_cold_3()
{
  OUTLINED_FUNCTION_46();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not generate RCCM tag: invalid parameter", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void SRTPAddAuthenticationTag_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d outMKI should not be nil", v2, v3, v4, v5);
}

void SRTPAddAuthenticationTag_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not generate MKI: invalid parameter", v2, v3, v4, v5);
}

void SRTPAddAuthenticationTag_cold_6()
{
  OUTLINED_FUNCTION_46();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not get HMAC size - invalid parameter", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void SRTPAddAuthenticationTag_cold_7()
{
  OUTLINED_FUNCTION_46();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not get MKI size - invalid parameter", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void SRTPAddAuthenticationTag_cold_8()
{
  OUTLINED_FUNCTION_46();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d outputLength should not be NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void SRTPAddAuthenticationTag_cold_9()
{
  OUTLINED_FUNCTION_46();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d SRTPInfo should not be NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void SRTPIsAuthenticationEnabled_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Authentication is enabled but the tag size is invalid. Size=%d", v2, v3, v4, 1549);
}

void SRTPVerifyAuthenticationTag_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not read RCCM tag: invalid parameter", v2, v3, v4, v5);
}

void SRTPVerifyAuthenticationTag_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d inMKI should not be nil", v2, v3, v4, v5);
}

void SRTPVerifyAuthenticationTag_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37();
  a20 = v21;
  a21 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  a13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315650;
      *(&a9 + 4) = v31;
      OUTLINED_FUNCTION_0();
      a11 = 1636;
      _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not read MKI: invalid parameter", &a9, 0x1Cu);
    }
  }

  *v24 = v28;
  *v26 = v30;
  OUTLINED_FUNCTION_36();
}

void SRTPVerifyAuthenticationTag_cold_4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13(&dword_1DB56E000, v0, v1, " [%s] %s:%d SRTP packet too short - no MKI present", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_36();
}

void SRTPVerifyAuthenticationTag_cold_5()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "SRTPVerifyAuthenticationTag";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Detected MKI collision with mkiSize=%d... Aborting the call", v3, *v4, "SRTPVerifyAuthenticationTag" >> 16, v5);
}

void SRTPVerifyAuthenticationTag_cold_6()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13(&dword_1DB56E000, v0, v1, " [%s] %s:%d Dropping packet to prevent MKI collision", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_36();
}

void SRTPVerifyAuthenticationTag_cold_7()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13(&dword_1DB56E000, v0, v1, " [%s] %s:%d Authentication tag doesn't match for non-RCCM2 cipher. Authentication failed", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_36();
}

void SRTPVerifyAuthenticationTag_cold_8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Authentication tag doesn't match. Authentication failed", v2, v3, v4, v5);
}

void SRTPVerifyAuthenticationTag_cold_9()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13(&dword_1DB56E000, v0, v1, " [%s] %s:%d Authentication tag doesn't match when no roll-over detected. Authentication failed", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_36();
}

void SRTPVerifyAuthenticationTag_cold_10()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
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

  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_36();
}

void SRTPVerifyAuthenticationTag_cold_11()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_14_10();
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

  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_36();
}

void SRTPVerifyAuthenticationTag_cold_12()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_14_10();
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

  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_36();
}

void SRTPVerifyAuthenticationTag_cold_13()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_14_10();
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

  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_36();
}

void SRTPVerifyAuthenticationTag_cold_14()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_14_10();
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

  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_36();
}

void SRTCPAddAuthenticationTag_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No extra buffer space to add authentication tag", v2, v3, v4, v5);
}

void SRTCPVerifyAuthenticationTag_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Authentication tag doesn't match. Authentication failed", v2, v3, v4, v5);
}

void SRTCPVerifyAuthenticationTag_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d SRTCP packet too short", v2, v3, v4, v5);
}

void _VCFECPacketListEntry_Allocate_cold_1()
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
      v4 = 17;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Fail to allocate list entry", &v2, 0x1Cu);
    }
  }
}

void VCFECPacketList_AllocateAndPush_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v9) = 136315650;
      *(&v9 + 4) = v2;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failing to push a packet, possibly a duplicate", v5, v6, v7, v8, v9, DWORD2(v9));
    }
  }

  *a1 = -2144141257;
}

void VCFECPacketList_AllocateAndPush_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v9) = 136315650;
      *(&v9 + 4) = v2;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failure in allocating an entry list", v5, v6, v7, v8, v9, DWORD2(v9));
    }
  }

  *a1 = -2144141311;
}

void MediaCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void MediaCallback_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPSendUncompressedVideoPacket_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = 136316162;
  v4 = a1;
  v5 = 2080;
  v6 = "RTPSendUncompressedVideoPacket";
  v7 = 1024;
  v8 = 49;
  v9 = 1024;
  v10 = 49;
  v11 = 1024;
  v12 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPUncompressedVideo.c:%d: data size too big (%d)", &v3, 0x28u);
}

void VCRateControlAlgorithm_IsPaused_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. algorithm=%p", v2, v3, v4, v5);
}

void VCRateControlAlgorithm_SetPaused_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. algorithm=%p", v2, v3, v4, v5);
}

void VCRateControlAlgorithm_EnableLogDump_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. algorithm=%p", v2, v3, v4, v5);
}

void _VCMediaQueuePacketBundler_BundlePacketsWithFCFSPolicy_cold_1()
{
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
}

void _VCMediaQueuePacketBundler_GetSizeOfHeaderWithBundledPackets_cold_1(int a1, __int16 a2, int a3, _DWORD *a4, _WORD *a5, _DWORD *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = v12;
      OUTLINED_FUNCTION_0();
      v16 = 119;
      _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Reach of number of max packets", &v14, 0x1Cu);
    }
  }

  *a6 = a3;
  *a5 = a2;
  *a4 = a1;
}

void VCMediaQueuePacketBundler_Create_cold_2(const void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  CFRelease(a1);
}

void VCMediaQueuePacketBundler_Create_cold_3()
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

  OUTLINED_FUNCTION_3_25();
}

void VCMediaQueuePacketBundler_Create_cold_4()
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

  OUTLINED_FUNCTION_3_25();
}

void VCMediaQueuePacketBundler_AddPacket_cold_1()
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

  OUTLINED_FUNCTION_3_25();
}

void VCMediaQueuePacketBundler_AddPacket_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

void VCMediaQueuePacketBundler_AddPacket_cold_3(int a1, _DWORD *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      OUTLINED_FUNCTION_6();
      v10 = 245;
      v11 = v6;
      v12 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enqueue media packet to bundler, status=%d", &v7, 0x22u);
    }
  }

  *a2 = 0;
}

void VCMediaQueuePacketBundler_AddPacket_cold_4()
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

  OUTLINED_FUNCTION_3_25();
}

void VCMediaQueuePacketBundler_AddPacket_cold_5()
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

  OUTLINED_FUNCTION_3_25();
}

void VCMediaQueuePacketBundler_SetMTU_cold_1()
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

  OUTLINED_FUNCTION_3_25();
}

void VCMediaQueuePacketBundler_SetOneToOne_cold_1()
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

  OUTLINED_FUNCTION_3_25();
}

void VCMediaQueuePacketBundler_BundlePackets_cold_1()
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

  OUTLINED_FUNCTION_3_25();
}

void VCMediaQueuePacketBundler_BundlePackets_cold_2()
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

  OUTLINED_FUNCTION_3_25();
}

void VTPCallback_cold_1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "VTPCallback";
  v4 = 1024;
  v5 = 952;
  v6 = 1024;
  v7 = 952;
  v8 = 1024;
  v9 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConferenceManager.m:%d: VTPCallback error: unknown notificaiton %d.", v2, 0x28u);
}

void _VTP_ReportIDSOnTheWireBytesLocked(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

LABEL_19:
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_4_24();
    OUTLINED_FUNCTION_9_0();
    _os_log_error_impl(v12, v13, v14, v15, v16, 0x2Cu);
    return;
  }

  if (!a2)
  {
    return;
  }

  v7 = VTP_getConnectionManagerForCallID(a1, a2);
  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = VCConnectionManager_CopyPrimaryConnection(v7);
  v10 = VCConnection_PerPacketConnectionOverhead(v9);
  if (v9)
  {
    CFRelease(v9);
  }

  v11 = v10 + a3 + IDSEstimateAdditionalOverheadForDatagramOptions();
  if (a5)
  {

    VCConnectionManager_UpdateOnTheWireBytesSentCount(v8, v11);
  }

  else
  {

    VCConnectionManager_UpdateOnTheWireBytesReceivedCount(v8, v11);
  }
}

void VTP_Initialize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_37_7())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20_6();
      _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }
  }
}

void VTP_Initialize_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_37_7())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20_6();
      _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }
  }
}

void VTP_Initialize_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_37_7())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20_6();
      _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }
  }
}

void VTP_Initialize_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NW connection metadata creation failed for background", v2, v3, v4, v5);
    }
  }
}

void VTP_Initialize_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NW connection metadata creation failed for video", v2, v3, v4, v5);
    }
  }
}

void VTP_Initialize_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d NW connection metadata creation failed for voice", v2, v3, v4, v5);
    }
  }
}

void VTP_Initialize_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x28u);
}

void VTP_Initialize_cold_8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Initialize_cold_9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Initialize_cold_10()
{
  OUTLINED_FUNCTION_11_0();
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Initialize_cold_11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_38_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Initialize_cold_12()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Initialize_cold_13()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
      }
    }

    else if (OUTLINED_FUNCTION_37_7())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_20_6();
      _os_log_fault_impl(v5, v6, v7, v8, v9, 0x22u);
    }
  }
}

void VTP_Initialize_cold_14(int a1)
{
  if (a1 >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_37_7())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20_6();
      _os_log_fault_impl(v6, v7, v8, v9, v10, 0x1Cu);
    }
  }
}

void VTP_Initialize_cold_15()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_37_7())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20_6();
      _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }
  }
}

void VTP_Initialize_cold_16()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_37_7())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20_6();
      _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }
  }
}

void VTP_Initialize_cold_17()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_38_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_Initialize_cold_18()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_Initialize_cold_19()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_38_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Initialize_cold_20()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTPRecvProc_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTPRecvProc_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_Cleanup_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_SocketWithRealSocket_cold_1()
{
  *__error() = 13;
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

  OUTLINED_FUNCTION_15_7();
}

void VTP_CopyPreferredSendQueue_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_CopyPreferredSendQueue_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SocketWithNWConnection_cold_1()
{
  v0 = __error();
  OUTLINED_FUNCTION_34_4(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v1, v2, " [%s] %s:%d Non-UDP protocol=%d is not supported", v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VTP_SocketWithNWConnection_cold_2(void *a1)
{
  v2 = __error();
  OUTLINED_FUNCTION_39_9(v2);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  free(a1);
}

void VTP_SocketWithNWConnection_cold_3()
{
  *__error() = 12;
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
      }
    }

    else if (OUTLINED_FUNCTION_37_7())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_20_6();
      _os_log_fault_impl(v5, v6, v7, v8, v9, 0x22u);
    }
  }
}

void VTP_SocketWithNWConnection_cold_4()
{
  *__error() = 13;
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

  OUTLINED_FUNCTION_15_7();
}

void VTP_SocketWithNWConnection_cold_5()
{
  v0 = __error();
  OUTLINED_FUNCTION_34_4(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VTP_GetVFD_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SocketWithMultiNWConnection_cold_1()
{
  *__error() = 2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VTP_SocketWithMultiNWConnection_cold_2()
{
  v0 = __error();
  OUTLINED_FUNCTION_39_9(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }
}

void VTP_SocketWithMultiNWConnection_cold_3(void *a1)
{
  *__error() = 13;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *a1 = 0;
}

void VTP_SocketWithMultiNWConnection_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_DuplicateVFD_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_DuplicateVFD_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_SocketWithRealSocketFromFVDList_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

void _VTP_SocketWithRealSocketFromFVDList_cold_2()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

void _VTP_SocketWithRealSocketFromFVDList_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _VTP_SocketWithRealSocketFromFVDList_cold_4()
{
  v0 = __error();
  OUTLINED_FUNCTION_39_9(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
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

void _VTP_SocketWithRealSocketFromFVDList_cold_5()
{
  *__error() = 12;
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_24_0();
      _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x22u);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void _VTP_SocketWithRealSocketFromFVDList_cold_6()
{
  v0 = __error();
  OUTLINED_FUNCTION_34_4(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      _os_log_fault_impl(v6, v7, OS_LOG_TYPE_FAULT, v8, v9, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

void VTP_SocketForIDSWithFileDescriptor_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  v2 = __error();
  OUTLINED_FUNCTION_39_9(v2);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v3, v4, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: VTP_GetVFD returned invalid handle.", v5, v6, v7, v8);
    }
  }

  *v0 = v1;
}

_DWORD *VTP_SocketForIDSWithFileDescriptor_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
    }
  }

  v0 = __error();
  return OUTLINED_FUNCTION_39_9(v0);
}

void VTP_SocketForIDSWithFileDescriptor_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SocketForIDSWithFileDescriptor_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SetPayloadList_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_38_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SetPayloadList_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SetPayloadList_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetSocketMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetSocketMode_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetPktType_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_AddPktType_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_RemovePktType_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_Getsockname_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_SetSSRC_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_UpdateRemoteSSRCList_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetTransportSessionID_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetTransportSessionID_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetDSCPTag_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_GetNWContentMetaData_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_GetNWContentMetaData_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_GetTransportSessionID_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_GetTransportSessionID_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_Setsockopt_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetSourceDestinationWithToken_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetSourceDestinationWithIPPort_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_Close_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_Bind_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Bind_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_BindNew_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_BindNew_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_Sendto_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_Sendto_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_Sendto_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Sendto_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_Sendto_cold_5()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Sendto_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void SendOnePacketOnVFDList_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_Send_cold_1()
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

void VTP_Send_cold_2(void *a1)
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

void VTP_Send_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_Send_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_Send_cold_5()
{
  v0 = __error();
  OUTLINED_FUNCTION_34_4(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v1 = OUTLINED_FUNCTION_40_8();
    if (v2)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d infoList is NULL! Dropped packet!", v5, v6, v7, v8);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_5(v10, v11, v12, v13, v14);
    }
  }
}

void VTP_Send_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_Send_cold_7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_Send_cold_8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_SendWithSourceDestinationInfo_cold_1(void *a1)
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

  *a1 = -1;
}

void _VTP_SendWithSourceDestinationInfo_cold_2(void *a1)
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

  *a1 = -1;
}

void _VTP_SendWithSourceDestinationInfo_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_SendWithSourceDestinationInfo_cold_4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VTP_SendWithSourceDestinationInfo_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_SendWithSourceDestinationInfo_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _VTP_SendWithSourceDestinationInfo_cold_7()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VTP_SendWithSourceDestinationInfo_cold_8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_HealthPrint_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SendCompoundPacket_cold_1()
{
  v0 = __error();
  OUTLINED_FUNCTION_34_4(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v1 = OUTLINED_FUNCTION_40_8();
    if (v2)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d infoList is NULL! Dropped packet!", v5, v6, v7, v8);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_5(v10, v11, v12, v13, v14);
    }
  }
}

void VTP_SendCompoundPacket_cold_2()
{
  v0 = __error();
  OUTLINED_FUNCTION_34_4(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
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

void VTP_SendCompoundPacket_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SendCompoundPacket_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SendCompoundPacket_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SendCompoundPacket_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SendCompoundPacket_cold_7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_GetReportingStats_cold_1()
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

void VTP_GetReportingStats_cold_2()
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

void VTP_SendWithSourceDestinationIP_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_SendWithSourceDestinationIP_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_ReleasePacket_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_Recvfrom_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_Recvfrom_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetAFRCRecvMode_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SetAFRC_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetAFRCConnectionNumber_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_NotifyAFRCRxEstimate_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_NotifyAFRCRxEstimate_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 4051;
  OUTLINED_FUNCTION_8_5(&dword_1DB56E000, v0, v1, " [%s] %s:%d VTP_NotifyAFRCRxEstimate INVALID_HANDLE", v2);
}

void VTP_RegisterPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_RegisterPacketCallback_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x22u);
}

void VTP_RegisterPacketCallback_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_RegisterPacketCallback_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_RegisterPacketCallback_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AddOneVFDSETList_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_38_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AddOneVFDSETList_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_UnregisterPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_Select_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_GetSendRecvStats_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SetCellularUniqueTag_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_SetPktTag_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SetRTPSrc_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_SetNetworkLogLevel_cold_1()
{
  OUTLINED_FUNCTION_18_2();
  __error();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x32u);
}

void VTP_SetNetworkLogLevel_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_SetNetworkLogLevel_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_NotifyRemoteNoRemotePacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_NotifySendFailed_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_NotifySendFailed_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VTP_DetectNAT64Prefix_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_RegisterConnectionManagerWithCallID_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_DeregisterConnectionManagerWithCallID_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_IncrementTotalBytesSent_cold_1(_DWORD *a1)
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

  *a1 = -2145976318;
}

void VTP_GetPktType_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_GetPktType_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_ReleaseVFD_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void PrepareOFTMAC_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void PrepareOFTMAC_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void PrepareOFTMAC_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void PrepareOFTCRC32_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VTP_LogOSChannelInfoToIDSDatagramChannel_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void VTP_ProcessPacketType_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_ProcessPacketType_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_ProcessPacketType_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_ProcessPacketType_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x22u);
}

void VTP_ProcessPacketType_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VTP_ProcessPacketType_cold_6()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
    }
  }

  *v0 = 0;
}

void VTP_ProcessPacketType_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
    }
  }

  *v0 = 0;
}

void VTP_ProcessPacketType_cold_8()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VTP_ProcessPacketType_cold_9()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VTP_ProcessPacketType_cold_10()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VTP_ProcessPacketType_cold_11()
{
  OUTLINED_FUNCTION_18_2();
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v3;
      v7 = 2080;
      OUTLINED_FUNCTION_6();
      v8 = 3837;
      v9 = 2048;
      v10 = v2;
      v11 = 2048;
      v12 = v1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTCP packet too small. bufferSize=%zu rtcpPacketLength=%zu", &v5, 0x30u);
    }
  }

  *v0 = 0;
}

void VTP_ProcessPacketType_cold_12()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VTP_ProcessPacketType_cold_13()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x28u);
}

void VTP_ProcessPacketType_cold_14()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_ProcessPacketType_cold_15()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_ProcessPacketType_cold_16()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VTP_ProcessPacketType_cold_17(uint64_t a1, _DWORD *a2)
{
  VRTraceErrorLogLevelToCSTR();
  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_24_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 0x28u);
  }

  *a2 = -2145976286;
}

void VTP_UpdateReceivedBytes_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _VTP_ShrinkPacket_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_40_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to retrieve blockBuffer pointer and size", v4, v5, v6, v7);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_5(v9, v10, v11, v12, v13);
    }
  }
}

void _VTP_ShrinkPacket_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_40_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to retrieve blockBuffer pointer and size", v4, v5, v6, v7);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_5(v9, v10, v11, v12, v13);
    }
  }
}

void _VTP_AllocatePacketWithBufferFreeCallback_cold_1()
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

void _VTP_AllocatePacketWithBufferFreeCallback_cold_2()
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

void _VTP_AllocatePacketWithBufferFreeCallback_cold_3()
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

void _VTP_AllocatePacketWithBufferFreeCallback_cold_4()
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

void _VTP_AllocatePacketWithBufferFreeCallback_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_40_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate VTP packet", v4, v5, v6, v7);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_5(v9, v10, v11, v12, v13);
    }
  }
}

void VTP_IFIndexToName_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x28u);
}

void VTP_IFIndexToName_cold_2()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VTP_IFIndexToName_cold_3()
{
  __error();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

void VTP_SendOnePacketWithSocket_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VTP_SendOnePacketWithSocket_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_UpdateIDSDatagramOptionWithChannelDataFormat_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _VTP_ProcessPacketForDirectIDSDataPath_cold_1()
{
  OUTLINED_FUNCTION_18_2();
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3 && (v3 = VRTraceErrorLogLevelToCSTR(), v4 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
  {
    v5 = 136315650;
    v6 = v3;
    OUTLINED_FUNCTION_0();
    v7 = 6623;
    _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d Parameter packet must not be NULL", &v5, 0x1Cu);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  _VTP_ReleaseVPKTPacket(v1, v0, 12, 0);
}

void _VTP_ProcessPacketForSharedIDSDataPath_cold_1()
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

void _VCAVFoundationCapture_AttachPropagatableAFB(uint64_t a1, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v4;
        OUTLINED_FUNCTION_0();
        v12 = 1219;
        OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v5, v7, " [%s] %s:%d isFrameForFullBleed VIDEO_UTIL_INTERNAL_ATTACHMENT_AFB_ON", &v10);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315650;
      v11 = v4;
      OUTLINED_FUNCTION_0();
      v12 = 1219;
      _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d isFrameForFullBleed VIDEO_UTIL_INTERNAL_ATTACHMENT_AFB_ON", &v10, 0x1Cu);
    }
  }

  Mutable = CFDictionaryCreateMutable(*(a1 + 488), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    CFDictionarySetValue(Mutable, @"fb", *MEMORY[0x1E695E4D0]);
    CMSetAttachment(a2, @"vcBufferAttachs", v9, 1u);
    CFRelease(v9);
  }
}

uint64_t _VCAVFoundationCapture_MatchedOrientationForPixelBuffer(uint64_t a1, __CVBuffer *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 252);
  if ((*(a1 + 261) & 1) == 0)
  {
    if (([a1 captureDevicePosition] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      OUTLINED_FUNCTION_19_9();
      if (!v7)
      {
        return v6;
      }
    }

    else if ((*(a1 + 444) & 1) == 0)
    {
      return v6;
    }

    OUTLINED_FUNCTION_19_9();
    if (!v7)
    {
      return v6;
    }
  }

  OUTLINED_FUNCTION_19_9();
  if (v7)
  {
    Width = CVPixelBufferGetWidth(a2);
    Height = CVPixelBufferGetHeight(a2);
    if (a3 && (!*(a1 + 368) ? (v10 = Width <= Height) : (v10 = Width >= Height), !v10))
    {
      v6 = *(a1 + 256);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 256);
          v15 = *(a1 + 252);
          v16 = 136316162;
          v17 = v12;
          v18 = 2080;
          v19 = "_VCAVFoundationCapture_MatchedOrientationForPixelBuffer";
          v20 = 1024;
          v21 = 1192;
          v22 = 1024;
          v23 = v14;
          v24 = 1024;
          v25 = v15;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Orientation overridden to previous orientation=%d while camera AR change is pending to=%d", &v16, 0x28u);
        }
      }
    }

    else
    {
      *(a1 + 260) = 0;
    }
  }

  return v6;
}

uint64_t _VCAVFoundationCapture_ProcessSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, CMTime *a3, uint64_t a4, void *a5, void *a6)
{
  v263 = *MEMORY[0x1E69E9840];
  if ([a6 position] == 2)
  {
    if ((*(a1 + 444) & 1) == 0)
    {
LABEL_14:
      v13 = 0;
LABEL_15:
      v15 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_19_9();
  if (!v14)
  {
    goto LABEL_14;
  }

  v12 = [a6 deviceType];
  v13 = v12 != *MEMORY[0x1E6986940];
  v14 = *(a1 + 262) != 1 || v12 == *MEMORY[0x1E6986940];
  if (v14)
  {
    goto LABEL_15;
  }

  if (*(a1 + 368))
  {
    v15 = 0;
  }

  else
  {
    valuePtr = *a3;
    v52 = [a1 newSimulatedTallFormat:a2 frameTime:&valuePtr];
    v15 = v52;
    if (v52)
    {
      a2 = v52;
    }
  }

  v13 = 1;
LABEL_16:
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v17 = [a6 position];
  if (ImageBuffer)
  {
    v18 = v17 != 2;
    v19 = _VCAVFoundationCapture_MatchedOrientationForPixelBuffer(a1, ImageBuffer, v13);
    LODWORD(valuePtr.value) = VCCameraStatusUtil_CVOFromCameraStatusBits(v19 & 0x77 | (8 * v18) | 0x80u);
    VCCVOExtensionUtils_SetCVOCamera(&valuePtr, v18);
    VCCVOExtensionUtils_AttachCVOToPixelBuffer(ImageBuffer, valuePtr.value);
  }

  if (a2 && CMSampleBufferGetImageBuffer(a2))
  {
    v245 = a4;
    v20 = CMSampleBufferGetImageBuffer(a2);
    Width = CVPixelBufferGetWidth(v20);
    v243 = Width;
    Height = CVPixelBufferGetHeight(v20);
    v241 = Height;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v22 = MEMORY[0x1E6986640];
    if (ErrorLogLevelForModule >= 8)
    {
      VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (*v22 == 1)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_1_19();
          OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_ProcessSampleBuffer");
          OUTLINED_FUNCTION_20_7();
          OUTLINED_FUNCTION_26_4(v24, v25, v26, v27, v28, v29, v30, v31, v233, v234, Height, Width, v239, Height, Width);
          OUTLINED_FUNCTION_18_8();
          _os_log_impl(v32, v33, OS_LOG_TYPE_DEFAULT, v34, v35, 0x30u);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_1_19();
        OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_ProcessSampleBuffer");
        OUTLINED_FUNCTION_20_7();
        OUTLINED_FUNCTION_26_4(v198, v199, v200, v201, v202, v203, v204, v205, v233, v234, Height, Width, v239, Height, Width);
        OUTLINED_FUNCTION_18_8();
        _os_log_debug_impl(v206, v207, OS_LOG_TYPE_DEBUG, v208, v209, 0x30u);
      }
    }

    OUTLINED_FUNCTION_25_7(308);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      VCVideoUtil_AttachMetadata([a5 metadataObjects], v20);
    }

    else
    {
      v36 = *(a1 + 400);
      Count = CFArrayGetCount(v36);
      v38 = VRTraceGetErrorLogLevelForModule();
      if (Count < 1)
      {
        if (v38 >= 8)
        {
          VRTraceErrorLogLevelToCSTR();
          v46 = *MEMORY[0x1E6986650];
          if (*v22 == 1)
          {
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_1_19();
              OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_ProcessSampleBuffer");
              v256 = 1277;
              OUTLINED_FUNCTION_18_8();
              OUTLINED_FUNCTION_29_0(v47, v48, v49, v50, v51);
            }
          }

          else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_1_19();
            OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_ProcessSampleBuffer");
            v256 = 1277;
            OUTLINED_FUNCTION_18_8();
            _os_log_debug_impl(v188, v189, OS_LOG_TYPE_DEBUG, v190, v191, 0x1Cu);
          }
        }
      }

      else
      {
        if (v38 >= 8)
        {
          v239 = VRTraceErrorLogLevelToCSTR();
          v39 = *MEMORY[0x1E6986650];
          if (*v22 == 1)
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_16_17();
              *(v40 + 4) = v239;
              OUTLINED_FUNCTION_17_9();
              OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_ProcessSampleBuffer");
              v256 = 1268;
              OUTLINED_FUNCTION_29_5();
              OUTLINED_FUNCTION_29_0(v41, v42, v43, v44, v45);
            }
          }

          else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_16_17();
            *(v210 + 4) = v239;
            OUTLINED_FUNCTION_17_9();
            OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_ProcessSampleBuffer");
            v256 = 1268;
            OUTLINED_FUNCTION_29_5();
            _os_log_debug_impl(v211, v212, OS_LOG_TYPE_DEBUG, v213, v214, 0x1Cu);
          }
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v36, 0);
        VCVideoUtil_AttachMetadata(ValueAtIndex, v20);
        CFArrayRemoveValueAtIndex(v36, 0);
      }
    }

    OUTLINED_FUNCTION_19_9();
    if (v14)
    {
      LOWORD(valuePtr.value) = 255;
      v54 = CFNumberCreate(*(a1 + 480), kCFNumberSInt16Type, &valuePtr);
      CVBufferSetAttachment(v20, @"CaptureMediaPriorirty", v54, kCVAttachmentMode_ShouldPropagate);
      if (v54)
      {
        CFRelease(v54);
      }
    }

    memset(&v248, 170, sizeof(v248));
    CMSampleBufferGetPresentationTimeStamp(&v248, a2);
    CVOFromPixelBuffer = VCCVOExtensionUtils_GetCVOFromPixelBuffer(v20);
    if (v13)
    {
      if ((*(a1 + 360) & 1) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_34())
        {
          OUTLINED_FUNCTION_1_19();
          OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_ProcessSampleBuffer");
          v256 = 1300;
          OUTLINED_FUNCTION_12_7();
          _os_log_error_impl(v56, v57, v58, v59, v60, v61);
        }
      }

      goto LABEL_57;
    }

    if ((*(a1 + 360) & 1) == 0)
    {
LABEL_57:
      [*(a1 + 408) ensureBufferPoolSupportsOutputWidth:v243 outputHeight:v241];
      OUTLINED_FUNCTION_30_5(*(a1 + 408), v75, v76, v77, v78, v79, v80, v81, v233, v234, Height, Width, v239, v241, v243, v245, v247, *&v248.value);
      v72 = VCImageResizingConverter_CreateResizedSampleBuffer(v82, a2, &valuePtr);
      v74 = v72;
      v71 = 0;
LABEL_58:
      v247 = v74;
      if (v74)
      {
        v83 = VCEffectsManager_SharedManager(v72, v73);
        IsEffectsOn = VCEffectsManager_IsEffectsOn(v83);
        if (*(a1 + 456) && a6 && (*(a1 + 233) & 1) != 0 && [a6 position] == 2)
        {
          v85 = !VCDefaults_GetBoolValueForKey(@"VPCDisableDuringCenterStage", 0);
          v239 = v71;
          if ((IsEffectsOn | v85))
          {
            v86 = v85 & ~IsEffectsOn;
          }

          else
          {
            v86 = *(a1 + 236) ^ 1;
          }

          OUTLINED_FUNCTION_25_7(300);
          LOBYTE(v254) = 0;
          memset(time, 170, 24);
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(time, HostTimeClock);
          VCViewpointCorrection_CorrectViewpoint(*(a1 + 456), v74, [*(a1 + 224) activeFormat], (v86 & 1), &v254);
          memset(&v253, 170, sizeof(v253));
          v88 = CMClockGetHostTimeClock();
          CMClockGetTime(&v253, v88);
          if (v254 == 1)
          {
            OUTLINED_FUNCTION_25_7(304);
          }

          lhs = v253;
          rhs = *time;
          CMTimeSubtract(&valuePtr, &lhs, &rhs);
          Seconds = CMTimeGetSeconds(&valuePtr);
          v90 = Seconds + *(a1 + 384);
          *(a1 + 384) = v90;
          if (Seconds > 0.0167 && VRTraceGetErrorLogLevelForModule() >= 5)
          {
            VRTraceErrorLogLevelToCSTR();
            if (OUTLINED_FUNCTION_19_3())
            {
              OUTLINED_FUNCTION_1_19();
              OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_ProcessViewPointCorrection");
              OUTLINED_FUNCTION_20_7();
              *(v91 + 30) = Seconds;
              OUTLINED_FUNCTION_18_8();
              _os_log_impl(v92, v93, OS_LOG_TYPE_DEFAULT, v94, v95, 0x26u);
            }
          }
        }

        if (IsEffectsOn)
        {
          v240 = v71;
          OUTLINED_FUNCTION_19_9();
          if (v14)
          {
            v142 = v245;
            if (!*(a1 + 512))
            {
              VTPixelTransferSessionCreate(0, (a1 + 512));
              VTPixelTransferSessionCreate(0, (a1 + 528));
            }

            v96 = CMSampleBufferGetImageBuffer(v74);
            v97 = CVPixelBufferGetWidth(v96);
            v98 = CVPixelBufferGetHeight(v96);
            if (!VCMediaRecorderUtil_PixelBufferPoolMatchDimensions(*(a1 + 520), v97, v98) || (VCMediaRecorderUtil_PixelBufferPoolMatchDimensions(*(a1 + 536), v97, v98) & 1) == 0)
            {
              CVPixelBufferPoolRelease(*(a1 + 520));
              CVPixelBufferPoolRelease(*(a1 + 536));
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v105 = VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  OUTLINED_FUNCTION_16_17();
                  *(v106 + 4) = v105;
                  OUTLINED_FUNCTION_17_9();
                  OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_CreateBufferPools");
                  OUTLINED_FUNCTION_20_7();
                  *(v107 + 30) = v97;
                  v258 = v108;
                  v259 = v98;
                  OUTLINED_FUNCTION_29_5();
                  _os_log_impl(v109, v110, OS_LOG_TYPE_DEFAULT, v111, v112, 0x30u);
                }
              }

              v113 = objc_opt_new();
              [v113 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696CF68]];
              [v113 setObject:@"AVConference:FoundationCapture" forKeyedSubscript:*MEMORY[0x1E696CF98]];
              v114 = objc_opt_new();
              v115 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v97];
              [v114 setObject:v115 forKeyedSubscript:*MEMORY[0x1E6966208]];
              v116 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v98];
              [v114 setObject:v116 forKeyedSubscript:*MEMORY[0x1E69660B8]];
              [v114 setObject:v113 forKeyedSubscript:*MEMORY[0x1E69660D8]];
              v117 = *MEMORY[0x1E6966130];
              [v114 setObject:&unk_1F579A038 forKeyedSubscript:*MEMORY[0x1E6966130]];
              OUTLINED_FUNCTION_31_7(520);
              [v114 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", *(a1 + 500)), v117}];
              OUTLINED_FUNCTION_31_7(536);

              v142 = v245;
            }

            OUTLINED_FUNCTION_30_5(*(a1 + 512), *(a1 + 520), v99, v100, v101, v102, v103, v104, v233, v234, Height, v15, v240, v241, v243, v245, v247, *&v248.value);
            _VCAVFoundationCapture_ConvertPixelFormat(v118, v119, &v247, &valuePtr);
            v74 = v247;
          }

          else
          {
            v142 = v245;
          }

          if (qword_1EDBDA8C0 != -1)
          {
            dispatch_once(&qword_1EDBDA8C0, &__block_literal_global_5);
          }

          v143 = [[qword_1EDBDA8B8 alloc] initWithSampleBuffer:v74 captureFramePerSecond:*(a1 + 288) captureDevice:a6 captureSession:*(a1 + 184)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v143 depthData] && (OUTLINED_FUNCTION_19_9(), v14))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                VRTraceErrorLogLevelToCSTR();
                if (OUTLINED_FUNCTION_19_3())
                {
                  OUTLINED_FUNCTION_1_19();
                  *(v144 + 14) = "_VCAVFoundationCapture_SendImageData";
                  HIWORD(valuePtr.epoch) = 1024;
                  v256 = 1426;
                  OUTLINED_FUNCTION_18_8();
                  OUTLINED_FUNCTION_29_0(v145, v146, v147, v148, v149);
                }
              }

              v150 = 0;
            }

            else
            {
              v150 = [v142 depthData];
              if (v150)
              {
                [v143 setDepthData:v150];
              }
            }
          }

          else
          {
            v150 = 0;
          }

          if (qword_1EDBDA8D0 != -1)
          {
            dispatch_once(&qword_1EDBDA8D0, &__block_literal_global_8);
          }

          v151 = objc_opt_new();
          v246 = objc_opt_new();
          [v151 setDetectedFaces:?];
          [v143 setFaceData:v151];
          v152 = CMSampleBufferGetImageBuffer(v74);
          if (v152)
          {
            v153 = v243;
            v154 = v241;
            v155 = v152;
            CFRetain(v152);
            memset(&v253, 170, sizeof(v253));
            CMSampleBufferGetPresentationTimeStamp(&v253, v74);
            v244 = v155;
            v156 = CVPixelBufferGetWidth(v155);
            v157 = CVPixelBufferGetHeight(v155);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v235 = v150;
              v237 = v143;
              v242 = v151;
              v261 = 0u;
              v262 = 0u;
              memset(time, 0, sizeof(time));
              v158 = [a5 metadataObjects];
              v159 = [v158 countByEnumeratingWithState:time objects:&valuePtr count:16];
              if (v159)
              {
                v160 = v159;
                v161 = **&time[16];
                v162 = *MEMORY[0x1E6987018];
                v163 = *MEMORY[0x1E6986FE8];
                v164 = v154 == v157 && v153 == v156;
                while (2)
                {
                  v165 = 0;
                  do
                  {
                    if (**&time[16] != v161)
                    {
                      objc_enumerationMutation(v158);
                    }

                    v166 = *(*&time[8] + 8 * v165);
                    if ([objc_msgSend(v166 "type")])
                    {
                      [v242 setFaceMeshPayload:{objc_msgSend(v166, "payload")}];
                      goto LABEL_136;
                    }

                    if ([objc_msgSend(v166 "type")])
                    {
                      if (qword_1EDBDA8E0 != -1)
                      {
                        dispatch_once(&qword_1EDBDA8E0, &__block_literal_global_11_0);
                      }

                      v167 = objc_opt_new();
                      [v167 setID:{objc_msgSend(v166, "faceID")}];
                      v168 = [v166 hasRollAngle];
                      v169 = 0.0;
                      if (v168)
                      {
                        [v166 rollAngle];
                      }

                      [v167 setRollAngleInDegrees:v169];
                      [v166 bounds];
                      if (!v164)
                      {
                        v170 = VCVideoUtil_AdjustFaceBounds(v170, v171, v172, v173, v153, v154, v156, v157);
                      }

                      [v167 setBoundingBox:v170];
                      [v167 setDetectionOrientation:4];
                      if (v166)
                      {
                        objc_msgSend_time(v166);
                      }

                      else
                      {
                        memset(&lhs, 0, sizeof(lhs));
                      }

                      rhs = lhs;
                      [v167 setTime:&rhs];
                      [v246 addObject:v167];
                    }

                    ++v165;
                  }

                  while (v160 != v165);
                  v160 = [v158 countByEnumeratingWithState:time objects:&valuePtr count:16];
                  if (v160)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_136:
              v143 = v237;
              v151 = v242;
              v150 = v235;
              if (![objc_msgSend(objc_msgSend(v237 "faceData")])
              {
                v183 = [objc_msgSend(v237 "faceData")];
                v185 = [v183 objectForKeyedSubscript:{VCGetCVAFaceTracking_DetectedFacesArray(v183, v184)}];
                if (qword_1EDBDA8E0 != -1)
                {
                  dispatch_once(&qword_1EDBDA8E0, &__block_literal_global_11_0);
                }

                v186 = [qword_1EDBDA8D8 faceDetectionFromDictionary:{objc_msgSend(v185, "firstObject")}];
                if (v186)
                {
                  v254 = v186;
                  v187 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v254 count:1];
                }

                else
                {
                  v187 = 0;
                }

                [objc_msgSend(v237 "faceData")];
              }
            }

            if (v153 != v156 || v154 != v157)
            {
              (_MergedGlobals_7)([v143 cameraIntrinsics]);
              [v143 setCameraIntrinsics:?];
            }

            v193 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v143 requiringSecureCoding:1 error:0];
            v194 = v244;
            atomic_store(VCCVOExtensionUtils_GetCVOFromPixelBuffer(v244), (a1 + 448));
            v195 = +[VCEffectsManager sharedManager];
            v196 = [v150 depthDataMap];
            rhs = v253;
            VCEffectsManager_CapturedPixelBuffer(v195, v194, v196, &rhs.value, v193);
            CVPixelBufferRelease(v194);
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v174 = VRTraceErrorLogLevelToCSTR();
            if (OUTLINED_FUNCTION_34())
            {
              OUTLINED_FUNCTION_16_17();
              *(v175 + 4) = v174;
              OUTLINED_FUNCTION_17_9();
              *(v176 + 14) = "_VCAVFoundationCapture_SendImageData";
              HIWORD(valuePtr.epoch) = 1024;
              v256 = 1498;
              OUTLINED_FUNCTION_12_7();
              _os_log_error_impl(v177, v178, v179, v180, v181, v182);
            }
          }

          v74 = v247;
          if (!v247)
          {
            goto LABEL_153;
          }
        }

        else
        {
          memset(&valuePtr, 170, sizeof(valuePtr));
          CMSampleBufferGetPresentationTimeStamp(&valuePtr, v74);
          OUTLINED_FUNCTION_19_9();
          if (v14)
          {
            v130 = *(a1 + 472);
            *v130 = Width;
            *(v130 + 4) = Height;
            OUTLINED_FUNCTION_28_5(v120, v121, v122, v123, v124, v125, v126, v127, v128, v233, v234, Height, Width, v239, v241, v243, v245, v247, v248.value, *&v248.timescale, v248.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v250, lhs.value, *&lhs.timescale, lhs.epoch, v252, v253.value, *&v253.timescale, v253.epoch, v254, v129, valuePtr.value);
            *(v130 + 32) = CMTimeGetSeconds(time);
            *(v130 + 8) = 0;
          }

          v131 = [a6 position];
          if (v131 == 2)
          {
            v141 = 0;
          }

          else
          {
            v131 = [a6 position];
            v141 = v131 != 0;
          }

          if (v13)
          {
            _VCAVFoundationCapture_AttachPropagatableAFB(a1, v74);
          }

          OUTLINED_FUNCTION_28_5(v131, v132, v133, v134, v135, v136, v137, v138, v139, v233, v234, Height, Width, v239, v241, v243, v245, v247, v248.value, *&v248.timescale, v248.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v250, lhs.value, *&lhs.timescale, lhs.epoch, v252, v253.value, *&v253.timescale, v253.epoch, v254, v140, valuePtr.value);
          _VCAVFoundationCapture_PushFrameToCaptureServer(a1, v74, time, v141, 0);
        }

        CFRelease(v74);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v215 = VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_34())
        {
          OUTLINED_FUNCTION_16_17();
          *(v216 + 4) = v215;
          OUTLINED_FUNCTION_17_9();
          OUTLINED_FUNCTION_9_19("_VCAVFoundationCapture_ProcessSampleBuffer");
          v256 = 1316;
          OUTLINED_FUNCTION_12_7();
          _os_log_error_impl(v217, v218, v219, v220, v221, v222);
        }
      }

LABEL_153:
      FigSampleBufferRelease();
      return FigSampleBufferRelease();
    }

    v62 = CVOFromPixelBuffer;
    v63 = v15;
    *time = v248;
    v64 = CMSampleBufferGetImageBuffer(a2);
    ResizedPixelBuffer = VCImageResizingConverter_CreateResizedPixelBuffer(*(a1 + 416), v64);
    if (ResizedPixelBuffer)
    {
      v66 = ResizedPixelBuffer;
      v67 = CVPixelBufferGetWidth(v64);
      v68 = CVPixelBufferGetHeight(v64);
      VCVideoUtil_AdjustFaceMetadata(v66, v67, v68);
      valuePtr = *time;
      SampleBufferWithPixelBuffer = createSampleBufferWithPixelBuffer(v66, &valuePtr.value);
      CMPropagateAttachments(a2, SampleBufferWithPixelBuffer);
      CVPixelBufferRelease(v66);
      goto LABEL_55;
    }

    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_167;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        goto LABEL_167;
      }

      OUTLINED_FUNCTION_1_19();
      OUTLINED_FUNCTION_9_19("VCAVFoundationCapture_CopyResizedFrame");
      v256 = 823;
      OUTLINED_FUNCTION_12_7();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v223 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v223 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_167;
      }

      v230 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_167;
      }

      OUTLINED_FUNCTION_16_17();
      *(v231 + 4) = v230;
      OUTLINED_FUNCTION_17_9();
      OUTLINED_FUNCTION_9_19("VCAVFoundationCapture_CopyResizedFrame");
      v256 = 823;
      v257 = 2112;
      *(v232 + 30) = v223;
      v258 = 2048;
      v259 = a1;
      OUTLINED_FUNCTION_29_5();
      v226 = OS_LOG_TYPE_ERROR;
      v229 = 48;
    }

    _os_log_error_impl(v224, v225, v226, v227, v228, v229);
LABEL_167:
    SampleBufferWithPixelBuffer = 0;
LABEL_55:
    v70 = CMSampleBufferGetImageBuffer(SampleBufferWithPixelBuffer);
    VCCVOExtensionUtils_AttachCVOToPixelBuffer(v70, v62);
    v15 = v63;
    if (SampleBufferWithPixelBuffer)
    {
      v71 = SampleBufferWithPixelBuffer;
      v72 = CFRetain(SampleBufferWithPixelBuffer);
      v74 = v72;
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  return FigSampleBufferRelease();
}

void __VCAVFoundationLoadARKit_block_invoke_cold_1()
{
  dlerror();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VCAVFoundationCapture_ConvertPixelFormat_cold_1()
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

void _VCAVFoundationCapture_ConvertPixelFormat_cold_2(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      v5 = v3;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v6 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTPixelTransferSessionTransferImage failed: status=%d", v4, 0x22u);
    }
  }
}

void _VCAVFoundationCapture_ConvertPixelFormat_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x22u);
}

void _VCRateControlAlgorithmTelephony_DoRateControl_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d This algorithm does not support statistics type=%d to do rate control", v2, v3, v4, v5);
}

void _VCRateControlAlgorithmTelephony_DoRateControl_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Wrong statistics interfaceType=%d!", v2, v3, v4, v5);
}

void _VCRateControlAlgorithmTelephony_DoRateControl_cold_3()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Unknown VCRateControl state=%d", v2, v3, v4, v5);
}

void VCBlockBufferUtlities_Create_cold_1(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 38;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d FigMemoryPoolAllocatorCopyMemoryPool failed", &v5);
    }
  }

  *a1 = 0;
}

void VCBlockBufferUtlities_Create_cold_2(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 40;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d FigMemoryPoolCreateBlockBuffer failed", &v5);
    }
  }

  *a1 = 0;
}

void VCBlockBufferUtlities_Create_cold_3(int a1, _DWORD *a2)
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
      v9 = 43;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v5, v6, " [%s] %s:%d CMBlockBufferCreateWithMemoryBlock failed", &v7);
    }
  }

  *a2 = a1;
}

void VCBlockBufferUtilities_CreateAndGetDataPointer_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      OUTLINED_FUNCTION_0();
      v5 = 62;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d VCBlockBufferUtlities_Create failed", &v3);
    }
  }
}

void VCBlockBufferUtilities_CreateAndGetDataPointer_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      OUTLINED_FUNCTION_0();
      v5 = 64;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d CMBlockBufferGetDataPointer failed", &v3);
    }
  }
}

void _VCSession_ReportingConfigurationCallback_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 775;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCSession [%s] %s:%d Reporting is enabled", v1, 0x1Cu);
}

void VCSession_RemoteScreenAttributesDidChange_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCNWConnectionMonitorUtils_GetRATFromNWNotification_cold_1(_DWORD *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v5 = 15;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v2, v3, " [%s] %s:%d notification is NULL", v4);
    }
  }

  *a1 = 0;
}

void VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification_cold_1(_WORD *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v5 = 29;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v2, v3, " [%s] %s:%d notification is NULL", v4);
    }
  }

  *a1 = 0;
}

void VCNWConnectionMonitorUtils_GetCDRXCycleFromNWNotification_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136316418;
      v9 = v6;
      v10 = 2080;
      v11 = "VCNWConnectionMonitorUtils_GetCDRXCycleFromNWNotification";
      v12 = 1024;
      v13 = 40;
      v14 = 2048;
      v15 = a1;
      v16 = 2048;
      v17 = a2;
      v18 = 2048;
      v19 = a3;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid input parameters. notification=%p, cdrxCycle=%p, cdrxState=%p", &v8, 0x3Au);
    }
  }
}

void VCNWConnectionMonitorUtils_GetNotificationFromAdvisory_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 165;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Notification type sent in the interface advisory is not valid", &v3);
}

void VCNWConnectionMonitorUtils_GetNotificationFromAdvisory_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d advisory is NULL", v2, v3, v4, v5);
    }
  }
}

void VCNWConnectionMonitorUtils_GetNotificationFromAdvisory_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d notification is NULL", v2, v3, v4, v5);
    }
  }
}

void VCFECConsumerCommon_Init_cold_1(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCFECConsumerCommon_Init";
      v8 = 1024;
      v9 = 65;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d single list initialization failed", &v4, 0x1Cu);
    }
  }

  *a1 = -2144141309;
}

void VCFECConsumerCommon_Init_cold_2(_DWORD *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "VCFECConsumerCommon_Init";
      v8 = 1024;
      v9 = 62;
      v10 = 2048;
      v11 = 0;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d parameter can't be NULL newInstance=%p", &v4, 0x26u);
    }
  }

  *a1 = -2144141311;
}

void _VCFECConsumerCommon_PeriodicReportingTask_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "_VCFECConsumerCommon_PeriodicReportingTask";
  v7 = 1024;
  v8 = 89;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCFECConsumer's payload='%@'", &v3, 0x26u);
}

void _VCSystemAudioCaptureSession_audioSink_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "_VCSystemAudioCaptureSession_audioSink";
  v7 = 1024;
  v8 = 183;
  v9 = 2048;
  v10 = a2;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %p audio sink buffer received", &v3, 0x26u);
}

void VCAudioIOControllerIOState_RegisterClientIO_cold_1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void VCAudioIOControllerIOState_RegisterClientIO_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCAudioIOControllerIOState_RegisterClientIO_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioIOControllerIOState_UnregisterClientIO_cold_1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void VCAudioIOControllerIOState_UnregisterClientIO_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCAudioIOControllerIOState_UnregisterClientIO_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

uint64_t _VCConnectionIDS_QRExperiments(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v11 = 716;
    v9 = " [%s] %s:%d Invalid context passed";
    goto LABEL_16;
  }

  v1 = *(a1 + 280);
  if (!v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v11 = 719;
    v9 = " [%s] %s:%d Invalid link context";
LABEL_16:
    _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, v9, v10, 0x1Cu);
    return 0;
  }

  v2 = [v1 qrExperiments];
  v3 = VCDefaults_CopyDictionaryValueForKey(@"qrExperimentsOverride");
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v3];
  v6 = v5;
  if (v2)
  {
    [v5 addEntriesFromDictionary:v2];
  }

  return v6;
}

void _VCConnectionIDS_SourceDestinationInfo_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v3 = 452;
      OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d nil context passed", v2);
    }
  }
}

void _VCConnectionIDS_IsOnSameInterfacesWithConnection_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v1, v2, v3, v4, v5);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

void _VCConnectionIDS_IsOnSameInterfacesWithConnection_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v1, v2, v3, v4, v5);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

void _VCConnectionIDS_IsOnSameInterfacesWithConnection_cold_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  OUTLINED_FUNCTION_7();
  v7 = 530;
  v8 = v1;
  v9 = v2;
  _os_log_debug_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCConnection: isOnSameInterfacesWithConnection: %{BOOL}d", &v4, 0x22u);
}

void _VCConnectionIDS_IsOnSameInterfacesWithConnection_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCConnection: connection to check is nil", v2, v3, v4, v5);
}

void _VCConnectionIDS_ReportingQRServerConfig_cold_1()
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

  OUTLINED_FUNCTION_18();
}

void _VCConnectionIDS_ReportingQRServerConfig_cold_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "_VCConnectionIDS_ReportingQRServerConfig";
      v12 = 1024;
      v13 = 700;
      v14 = 2112;
      v15 = a1;
      v16 = 2112;
      v17 = a2;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Argument not valid context=%@ and dictionary=%@", &v8, 0x30u);
    }
  }

  *a3 = 0;
}

void _VCConnectionIDS_ReportingSliceStatus_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      OUTLINED_FUNCTION_7();
      v12 = 740;
      v13 = 2112;
      v14 = a1;
      v15 = v7;
      v16 = v8;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection is not on cellular context=%@ isLocal=%d", &v9, 0x2Cu);
    }
  }

  *a3 = 0;
}

void _VCConnectionIDS_ReportingSliceStatus_cold_2()
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

  OUTLINED_FUNCTION_18();
}

void _VCConnectionIDS_ReportingSliceStatus_cold_3(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
    }
  }

  *a2 = 0;
}

void _VCConnectionIDS_IsHopByHopEncryptionSupported_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCConnectionIDS_IsP2PEncryptionSupported_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCConnectionIDS_ReportingSatelliteNetwork_cold_1(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136316162;
      v7 = v4;
      v8 = 2080;
      v9 = "VCConnectionIDS_ReportingSatelliteNetwork";
      v10 = 1024;
      v11 = 778;
      v12 = 2112;
      v13 = a1;
      v14 = 2112;
      v15 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Argument not valid context=%@ and dictionary=%@", &v6, 0x30u);
    }
  }
}

void *VCVideoAttributes_GetFrameOrientationReference(void *result, const char *a2)
{
  if (result)
  {
    return [result frameOrientationReference];
  }

  return result;
}

id *VCVideoAttributes_SetFrameOrientationReference(id *result, uint64_t a2)
{
  if (result)
  {
    return [*result setFrameOrientationReference:a2];
  }

  return result;
}

void VCVideoAttributeOrientationToAggregatorOrientation_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "VCVideoAttributeOrientationToAggregatorOrientation";
  v7 = 1024;
  v8 = 379;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d invalid orientation=%d!", &v3, 0x22u);
}

void VCSpeechTranslation_StartServer()
{
  v0 = _VCSpeechTranslation_LibraryHandle();
  if (v0)
  {
    v1 = dlsym(v0, "STServerStart");
    if (v1)
    {
      if (!v1())
      {
        return;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_2();
      v7 = 38;
LABEL_8:
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        dlerror();
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_2();
        v7 = 48;
        goto LABEL_8;
      }
    }
  }
}

void _VCSpeechTranslation_LibraryHandle_cold_2(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = 136316162;
  v3 = a1;
  v4 = 2080;
  v5 = "_VCSpeechTranslation_LibraryHandle";
  v6 = 1024;
  v7 = 45;
  v8 = 2080;
  v9 = qword_1EDBDA8F0;
  v10 = 2080;
  v11 = "/System/Library/PrivateFrameworks/SpeechTranslation.framework/SpeechTranslation";
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to softlink VCSpeechTranslation framework with error=%s path=%s", &v2, 0x30u);
}

void VCSpeechTranslation_STSpeechTranslatorConfigurationClass_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  v2 = "STSpeechTranslatorConfiguration";
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to fetch class name=%s", v1, 0x26u);
}

void VCSpeechTranslation_STSpeechTranslatorClientClass_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  v2 = "STSpeechTranslatorClient";
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to fetch class name=%s", v1, 0x26u);
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_ResetBytesInFlight(uint64_t result)
{
  if (result)
  {
    *(result + 5420) = 0;
    *(result + 5424) = 0;
  }

  return result;
}

BOOL VCRateControlAlgorithmStabilizedNOWRDPriv_DoRateControlWithNWStatistics(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    result = OUTLINED_FUNCTION_34();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v10 = "VCRC [%s] %s:%d algorithm is NULL";
LABEL_19:
    OUTLINED_FUNCTION_17(&dword_1DB56E000, v4, v5, v10, v6, v7, v8, v9);
    return 0;
  }

  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    result = OUTLINED_FUNCTION_34();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v10 = "VCRC [%s] %s:%d statistics is NULL";
    goto LABEL_19;
  }

  if (!*(a1 + 1088))
  {
    return 0;
  }

  if (*a2 != 11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = OUTLINED_FUNCTION_34();
      if (!result)
      {
        return result;
      }

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v10 = "VCRC [%s] %s:%d wrong type of statistics message is processed by VCRateControl WiFi";
      goto LABEL_19;
    }

    return 0;
  }

  v2 = *(a2 + 102) == 1 && *(a2 + 96) == 1;
  *(a1 + 25664) = v2;
  return 1;
}

BOOL VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldFastRampUp(uint64_t a1)
{
  if (a1)
  {
    if (((*(a1 + 5178) & 1) == 0 || *(a1 + 1100) < *(a1 + 72)) && *(a1 + 423) == 1 && *(a1 + 5008) == 0.0 && *(a1 + 5488) == 1)
    {
      v1 = *(a1 + 1100);
      v2 = *(a1 + 60);
      if (v2 >= *(a1 + 472) + v1)
      {
        v2 = *(a1 + 472) + v1;
      }

      if (*(*(a1 + 48) + 4 * v2) < (1000 * *(a1 + 1216)))
      {
        v3 = *(a1 + 1144);
        v4 = *(a1 + 480);
        if (v3 - *(a1 + 25656) > v4 && v1 <= *(a1 + 456))
        {
          v5 = *(a1 + 312);
          if (v3 - *(a1 + 1192) > v5 && v3 - *(a1 + 1200) > v5 && v3 - *(a1 + 25528) > v4)
          {
            return 1;
          }
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = OUTLINED_FUNCTION_34();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_17(&dword_1DB56E000, v7, v8, "VCRC [%s] %s:%d algorithm is NULL", v9, v10, v11, v12);
  }

  return 0;
}

BOOL VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDown(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (OUTLINED_FUNCTION_34())
      {
        v41 = 136315650;
        v42 = v38;
        v43 = 2080;
        v44 = "VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDown";
        v45 = 1024;
        v46 = 1257;
        OUTLINED_FUNCTION_26(&dword_1DB56E000, v39, v40, "VCRC [%s] %s:%d algorithm is NULL", &v41);
      }
    }

    return 0;
  }

  *(a1 + 25572) = *(a1 + 360);
  if (*(a1 + 2896) != 1)
  {
    return 0;
  }

  v2 = VCRateControlAlgorithmBasePriv_KeepOvershootingRampDownBandwidth(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_6_19();
    *(a1 + v4) = v3 | 0x10;
    *(a1 + 25572) = 0;
    OUTLINED_FUNCTION_11_12();
  }

  if ((*(a1 + 2888) & 1) == 0)
  {
    v5 = *(a1 + 25512);
    if (v5 > 0.0 && *(a1 + 1144) - v5 > *(a1 + 160))
    {
      *(a1 + 1096) |= 1u;
      *(a1 + 25512) = 0;
      OUTLINED_FUNCTION_11_12();
      v2 = 1;
    }
  }

  if ((*(a1 + 25608) & 1) == 0)
  {
    if ((*(a1 + 25568) & 1) != 0 || *(a1 + 1088) == 1)
    {
      v6 = *(a1 + 1169);
      v7 = 104;
      if (v6)
      {
        v7 = 88;
      }

      v8 = *(a1 + 40 + v7);
      v9 = *(a1 + 2912);
      if (v9 > v8 && *(a1 + 25504) > v8 && *(a1 + 2920) > 0.0)
      {
        *(a1 + 25504) = v9;
        if ((v6 & 1) == 0)
        {
          *(a1 + 1096) |= 4u;
          *(a1 + 2928) = 0;
          v2 = 1;
          if (*(a1 + 25608))
          {
            goto LABEL_53;
          }
        }

LABEL_22:
        v10 = VCRateControlCongestionLevel_BitrateRange(*(a1 + 1120));
        if (*(a1 + 5224))
        {
          v11 = *(a1 + 40 + 8 * v10 + 856) * *(a1 + 5128);
        }

        else
        {
          v11 = *(a1 + 136);
        }

        if (*(a1 + 25504) <= *(a1 + 2912))
        {
          if (((*(a1 + 25568) & 1) != 0 || *(a1 + 1088) == 1) && (*(a1 + 1169) & 1) == 0)
          {
            v11 = *(a1 + 152);
          }

          if (*(a1 + 5224) & 1) == 0 && (*(a1 + 25584))
          {
            v13 = *(a1 + 2928);
            if (v13 > v11)
            {
              VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Possible ramp down suppression with RTT:%.3f, minRTT:%.3f, bitrateThreshold:%u, suppressionFactor:%.3f, NOWRDAcc:%.3f", *(a1 + 5120), *(a1 + 5128), *(a1 + 25588), *(a1 + 448), v13);
            }

            v11 = v11 * *(a1 + 448);
          }

          v14 = *(a1 + 2928);
          if (v14 <= v11 || *(a1 + 1100) <= *(a1 + 64))
          {
            v12 = 0;
          }

          else
          {
            *(a1 + 2928) = v14 - v11;
            if (*(a1 + 2928) < 0.0)
            {
              *(a1 + 2928) = 0;
            }

            v12 = 1;
          }
        }

        else
        {
          v12 = 0;
        }

        if (*(a1 + 2904) <= 0.0)
        {
          v15 = *(a1 + 25552);
        }

        else
        {
          v15 = *(a1 + 1144);
          *(a1 + 25552) = v15;
        }

        v16 = *(a1 + 1144) - v15;
        if (v15 <= 0.0 || v16 <= 1.0)
        {
          if (!v12)
          {
            goto LABEL_53;
          }
        }

        else
        {
          *(a1 + 2928) = 0;
          *(a1 + 25552) = *(a1 + 1144);
          VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "OWRD has been 0 for %f seconds, reset NOWRDAcc", v16);
          if ((v12 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        OUTLINED_FUNCTION_6_19();
        *(a1 + v19) = v18 | 8;
        v2 = 1;
        goto LABEL_53;
      }
    }

    else
    {
      v9 = 0.0;
    }

    *(a1 + 25504) = v9;
    goto LABEL_22;
  }

LABEL_53:
  v20 = *(a1 + 112);
  if (v20 >= 1 && *(a1 + 5032) > v20 && *(a1 + 25636) && *(a1 + 1100) >= *(a1 + 116))
  {
    OUTLINED_FUNCTION_6_19();
    *(a1 + v22) = v21 | 0x100;
    OUTLINED_FUNCTION_11_12();
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "BurstyLossRampDown RTT=%f, avgPLR=%f, PLRThreshold=%f, threshold=%d", *(a1 + 5120), *(a1 + 5064), *(a1 + 5056), *(a1 + 112));
    v2 = 1;
    *(a1 + 5177) = 1;
  }

  if (VCRateControlAlgorithmBasePriv_ShouldRampDownDueToLossEvent(a1))
  {
    OUTLINED_FUNCTION_6_19();
    *(a1 + v24) = v23 | 0x200;
    *(a1 + 5000) = *(a1 + 1144);
    VCRateControlAlgorithmBasePriv_ResetLossEventBuffer(a1);
    OUTLINED_FUNCTION_11_12();
    v2 = 1;
  }

  v25 = *(a1 + 5184);
  v26 = *(a1 + 1120);
  v27 = *(a1 + 856);
  if (v25 > *(a1 + 840) && v26 >= v27)
  {
    if (*(*(a1 + 48) + 4 * *(a1 + 60)) == v27)
    {
      *(a1 + 25592) = 1;
    }
  }

  else
  {
    v29 = v26 > *(a1 + 848);
    v31 = v25 > *(a1 + 832) && v26 > *(a1 + 852);
    if (v25 > *(a1 + 824) && !v31)
    {
      v31 = v29;
    }

    if (!v31)
    {
      goto LABEL_80;
    }
  }

  OUTLINED_FUNCTION_6_19();
  *(a1 + v34) = v33 | 0x800;
  VCRateControlAlgorithmBasePriv_ResetLossEventBuffer(a1);
  OUTLINED_FUNCTION_11_12();
  v2 = 1;
LABEL_80:
  if (*(a1 + 5120) > *(a1 + 160) && *(a1 + 1100) > *(a1 + 76))
  {
    OUTLINED_FUNCTION_6_19();
    *(a1 + v36) = v35 | 0x400;
    OUTLINED_FUNCTION_11_12();
    return 1;
  }

  return v2;
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_Configure_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 256;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Could not initialize smart brake in rate control algorithm.", v2);
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_Configure_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d configuration is NULL", v2, v3, v4, v5);
    }
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_Configure_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }
}

void _VCRateControlAlgorithmStabilizedNOWRD_DoRateControl_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 435;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d media controller is required for VCRateControl", v2);
}

void _VCRateControlAlgorithmStabilizedNOWRD_DoRateControl_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "_VCRateControlAlgorithmStabilizedNOWRD_RunRateControlStateTransition";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Unknown VCRateControl state %d", v2, *v3, "_VCRateControlAlgorithmStabilizedNOWRD_RunRateControlStateTransition" >> 16, 618);
}

void _VCRateControlAlgorithmStabilizedNOWRD_DoRateControl_cold_3()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "_VCRateControlAlgorithmStabilizedNOWRD_DoRateControl";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d This algorithm does not support statistics type:%d to do rate control", v2, *v3, "_VCRateControlAlgorithmStabilizedNOWRD_DoRateControl" >> 16, 278);
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToLocalRCEvent_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      v4 = "VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToLocalRCEvent";
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_4_4();
      v5 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d _bytesInFlightThreshold is 0 in algorithm=%p", v3, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToLocalRCEvent_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    v3 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_5_0();
        v5 = "VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent";
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_4_4();
        v6 = a1;
        _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d _bytesInFlightThreshold is 0 in algorithm=%p", v4, 0x26u);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_5_0();
      v5 = "VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent";
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_4_4();
      v6 = a1;
      _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d _bytesInFlightThreshold is 0 in algorithm=%p", v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToLocalRCEvent_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCRC [%s] %s:%d algorithm is NULL", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateBytesInFlightThreshold_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d statistics type is not for baseband", v2, v3, v4, v5);
    }
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d statistics is NULL", v2, v3, v4, v5);
    }
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics_cold_1(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      v5 = "VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics";
      OUTLINED_FUNCTION_4_2();
      v6 = 648;
      v7 = v3;
      v8 = a1;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Duplicated feedback or out-of-order feedback messages! timestamp:0x%04X", v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d statistics is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateVCRateControlHistory_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToBaseband_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCRC [%s] %s:%d algorithm is NULL", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUp_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateSmartBrakeOutputWithVCRCStatistics_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d statistics is NULL", v2, v3, v4, v5);
    }
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateSmartBrakeOutputWithVCRCStatistics_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToBaseband_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 1515;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2);
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToBaseband_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_14();
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_BasebandAdditionalTiersForRampUp_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 1620;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d algorithm is NULL", v2);
}

void VCMediaNegotiatorMediaType_StreamGroupIDFromMediaType_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "VCMediaNegotiatorMediaType_StreamGroupIDFromMediaType";
  v7 = 1024;
  v8 = 31;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unexpected mediaType=%hhu", &v3, 0x22u);
}

void VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID_cold_1(uint64_t a1, int a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID";
  v8 = 1024;
  v9 = 67;
  v10 = 2080;
  v11 = FourccToCStr(a2);
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unexpected streamGroupID=%s", &v4, 0x26u);
}

void _VCSessionParticipantLocal_ProcessAudioSamples_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 4176;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d audio no-op no MKM", v1, 0x1Cu);
}

void _VCSessionParticipantLocal_ProcessAudioSamples_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCSessionPartipantLocal_OnVideoFrame_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 4029;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d video no-op no MKM", v1, 0x1Cu);
}

void VCSilencePredictor_Initialize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the VCSilencePredictor memory", v2, v3, v4, v5);
    }
  }
}

void VCSilencePredictor_Reset_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Silence predictor is NULL", v2, v3, v4, v5);
    }
  }
}

void VCSilencePredictor_AddFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Silence predictor is NULL", v2, v3, v4, v5);
    }
  }
}

void VCSilencePredictor_PredictSilence_cold_1(_BYTE *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 113;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Silence predictor is NULL", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

void _VCPacketFilterRTCPFinalize_cold_1()
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

void _VCPacketFilterRTCPFinalize_cold_2()
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
      v4 = 104;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Parameter 'filter' should not be NULL", &v2, 0x1Cu);
    }
  }
}

void _VCPacketFilterRTCPCopyProperty_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d kVCPacketFilterRTCPProperty_RemoteSSRC not set", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_6_28(-12783);
}

void _VCPacketFilterRTCPCopyProperty_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d kVCPacketFilterRTCPProperty_LocalSSRC not set", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_6_28(-12783);
}

void _VCPacketFilterRTCPCopyProperty_cold_3(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Unsupported property '%@' requested", v3, DWORD2(v3));
}

void _VCPacketFilterRTCPCopyProperty_cold_4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v11) = 136316162;
      *(&v11 + 4) = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_8_23(&dword_1DB56E000, v5, v6, " [%s] %s:%d Property name '%@' and property value out '%@' must not be NULL", v7, v8, v9, v10, v11, DWORD2(v11));
    }
  }

  *a3 = -12780;
}

void _VCPacketFilterRTCPCopyProperty_cold_5()
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

  OUTLINED_FUNCTION_6_28(-12780);
}

void _VCPacketFilterRTCPSetProperty_cold_1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Unsupported property '%@' requested", v3, DWORD2(v3));
}

void _VCPacketFilterRTCPSetProperty_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v11) = 136316162;
      *(&v11 + 4) = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_8_23(&dword_1DB56E000, v5, v6, " [%s] %s:%d Property name '%@' and property value out '%@' must not be NULL", v7, v8, v9, v10, v11, DWORD2(v11));
    }
  }

  *a3 = -12780;
}

void _VCPacketFilterRTCPSetProperty_cold_3()
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

  OUTLINED_FUNCTION_6_28(-12780);
}

void VCStatisticsCollectorQueue_DrainAndProcessAllStatistics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d This should be called only with _shouldProcessMessageOnExternalThread is true", v2, v3, v4, v5);
}

void VCStatisticsCollectorQueue_DrainAndProcessAllStatistics_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Collector is nil", v2, v3, v4, v5);
}

void VCStatisticsCollectorQueue_FlushAllStatistics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Collector is nil", v2, v3, v4, v5);
}

void VCTimescalePSOLA_Accelerate_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 66);
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "VCTimescalePSOLA_Accelerate";
  v8 = 1024;
  v9 = 113;
  v10 = 1024;
  v11 = v3;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Accelerate buffer  inputBufferLength=%d", &v4, 0x22u);
}

void VCTimescalePSOLA_Accelerate_cold_2(int a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "VCTimescalePSOLA_Accelerate";
      v10 = 1024;
      v11 = 135;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Signal Correlation check failed", &v6, 0x1Cu);
    }
  }

  *a2 = a1;
}

void VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle_cold_1(uint64_t a1, int a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_36_3(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to get SRTP Framing overhead from rtpHandle=%p result=0x%x", v7, v8, v9, v10);
    }
  }

  *a3 = a2;
}

void VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle_cold_2(uint64_t a1, int a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_36_3(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to get RTP Framing overhead from rtpHandle=%p result=0x%x", v7, v8, v9, v10);
    }
  }

  *a3 = a2;
}

void VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle_cold_3(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle";
      v8 = 1024;
      v9 = 21;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d framingOverhead pointer cannot be NULL", &v4, 0x1Cu);
    }
  }

  *a1 = 1;
}

void VCAudioCaptionsBufferInfoCollection_AddBufferInfo_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "VCAudioCaptionsBufferInfoCollection_AddBufferInfo";
  v8 = 1024;
  v9 = 175;
  v10 = 2048;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not create buffer info for captionsToken=%ld", &v4, 0x26u);
}

void VCPixelTransferSession_TransferPixelBuffer_cold_1(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v4, v5, " [%s] %s:%d VTPixelTransferSessionTransferImage failed %d", v6, v7, v8, v9);
    }
  }

  *a2 = a1;
}

void VCPixelTransferSession_TransferPixelBuffer_cold_2(int a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v4;
      v9 = 2080;
      OUTLINED_FUNCTION_6();
      v10 = 47;
      v11 = v6;
      v12 = a1;
      v13 = v6;
      v14 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid width (%d) / height (%d)", &v7, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCPixelTransferSession_TransferPixelBuffer_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d destinationPixelBuffer is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_7();
}

void VCPixelTransferSession_TransferPixelBuffer_cold_4()
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

void VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer_cold_1(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v4, v5, " [%s] %s:%d VTPixelTransferSessionTransferImage failed %d", v6, v7, v8, v9);
    }
  }

  *a2 = a1;
}

void VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d destinationPixelBuffer is NULL", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_7();
}