uint64_t ggctl_connect(io_object_t *a1)
{
  connect = 0;
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceMatching("AppleHDQGasGaugeControl");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    if (IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, &connect))
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        ggctl_connect_cold_1();
      }

      connect = 0;
    }

    if (a1)
    {
      *a1 = v5;
    }

    else
    {
      IOObjectRelease(v5);
    }

    return connect;
  }

  else
  {
    result = os_log_type_enabled(logger, OS_LOG_TYPE_ERROR);
    if (result)
    {
      ggctl_connect_cold_2();
      return 0;
    }
  }

  return result;
}

uint64_t ggctl_disconnect(uint64_t connect)
{
  if (connect)
  {
    return IOServiceClose(connect);
  }

  return connect;
}

void ggctl_reset(mach_port_t a1, unsigned int a2)
{
  input = a2;
  v2 = IOConnectCallMethod(a1, 0, &input, 1u, 0, 0, 0, 0, 0, 0);
  v3 = logger;
  if (v2)
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      ggctl_reset_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29D352000, v3, OS_LOG_TYPE_DEFAULT, "gas gauge: reset", buf, 2u);
    }

    ++gauge_reset_count;
  }
}

uint64_t ggctl_get_hdq_state(mach_port_t a1)
{
  output = 0;
  outputCnt = 1;
  v1 = IOConnectCallMethod(a1, 1u, 0, 0, 0, 0, &output, &outputCnt, 0, 0);
  if (v1 == -536870183)
  {
    return 4294967294;
  }

  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

  return output != 0;
}

uint64_t ggctl_map_currentlog(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  result = MEMORY[0x29ED52C10](a1, 0, *MEMORY[0x29EDCA6B0], &v6, &v5, 1);
  v4 = v6;
  if (result)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t ggctl_open_device(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (!a3)
  {
    return v3;
  }

  hdq_state = ggctl_get_hdq_state(a1);
  if (hdq_state < 0)
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      ggctl_open_device_cold_3();
    }
  }

  else
  {
    if (hdq_state)
    {
      if (IOConnectCallScalarMethod(v3, 6u, 0, 0, 0, 0) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        ggctl_open_device_cold_1();
      }

      return v3;
    }

    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      ggctl_open_device_cold_2();
    }

    ggctl_reset(v3, 1u);
  }

  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    ggctl_open_device_cold_4();
  }

  return 0xFFFFFFFFLL;
}

uint64_t hdqBreak(mach_port_t a1)
{
  v1 = IOConnectCallScalarMethod(a1, 6u, 0, 0, 0, 0);
  if (v1 == -536870183)
  {
    v2 = -2;
  }

  else
  {
    v2 = -1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ggctl_hdqBreak(mach_port_t a1)
{
  v1 = IOConnectCallScalarMethod(a1, 6u, 0, 0, 0, 0);
  if (v1 == -536870183)
  {
    v2 = -2;
  }

  else
  {
    v2 = -1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ggctl_hdqRead8(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  input = a2;
  v5 = vdupq_n_s64(8uLL);
  outputCnt = 1;
  if (IOConnectCallScalarMethod(a1, 7u, &input, 3u, output, &outputCnt))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return LODWORD(output[0]);
  }
}

uint64_t ggctl_hdqRead16(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v3 = a2;
  if (IOConnectCallScalarMethod(a1, 8u, &v3, 1u, output, &outputCnt))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return LODWORD(output[0]);
  }
}

uint64_t ggctl_hdqWrite8(mach_port_t a1, char a2, unsigned __int8 a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = a2 & 0x7F | (a3 << 8) | 0x80u;
  v5 = xmmword_29D35D0D0;
  if (IOConnectCallScalarMethod(a1, 7u, &v4, 3u, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ggctl_controlRead16(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v3 = a2;
  if (IOConnectCallScalarMethod(a1, 0xBu, &v3, 1u, output, &outputCnt))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return LODWORD(output[0]);
  }
}

uint64_t ggctl_controlWrite16(mach_port_t a1, int a2, int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  if (IOConnectCallScalarMethod(a1, 0xAu, input, 2u, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ggctl_readBlock(mach_port_t a1, int a2, int a3, void *outputStruct, _BYTE *a5)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  output = 0;
  outputCnt = 1;
  v7 = 32;
  if (IOConnectCallMethod(a1, 9u, input, 2u, 0, 0, &output, &outputCnt, outputStruct, &v7))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a5)
  {
    *a5 = output;
  }

  return result;
}

uint64_t ggctl_writeBlock(mach_port_t a1, int a2, int a3, void *inputStruct)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  if (IOConnectCallMethod(a1, 0xFu, input, 2u, inputStruct, 0x20uLL, 0, 0, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ggctl_drainDataLog(mach_port_t a1)
{
  if (IOConnectCallMethod(a1, 0xEu, 0, 0, 0, 0, 0, 0, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ggctl_gaugeInterrupts(mach_port_t a1, unsigned int a2)
{
  input = a2;
  v2 = IOConnectCallScalarMethod(a1, 0x10u, &input, 1u, 0, 0);
  if (v2 == -536870183)
  {
    v3 = -2;
  }

  else
  {
    v3 = -1;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

CFDictionaryRef pmps_service()
{
  keys = @"built-in";
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], &keys, MEMORY[0x29EDB8F00], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (result)
  {
    v1 = result;
    v2 = IOServiceMatching("IOPMPowerSource");
    CFDictionarySetValue(v2, @"IOPropertyMatch", v1);
    CFRelease(v1);
    return IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v2);
  }

  return result;
}

uint64_t hdqRead16(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v3 = a2;
  if (IOConnectCallScalarMethod(a1, 8u, &v3, 1u, output, &outputCnt))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return LODWORD(output[0]);
  }
}

uint64_t hdqWrite8(mach_port_t a1, char a2, unsigned __int8 a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = a2 & 0x7F | (a3 << 8) | 0x80u;
  v5 = xmmword_29D35D0D0;
  if (IOConnectCallScalarMethod(a1, 7u, &v4, 3u, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t controlOp16(mach_port_t a1, int a2)
{
  input = a2;
  if (IOConnectCallScalarMethod(a1, 0xAu, &input, 1u, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t controlRead16(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v3 = a2;
  if (IOConnectCallScalarMethod(a1, 0xBu, &v3, 1u, output, &outputCnt))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return LODWORD(output[0]);
  }
}

uint64_t controlWrite16(mach_port_t a1, int a2, int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  if (IOConnectCallScalarMethod(a1, 0xAu, input, 2u, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t writeBlock(mach_port_t a1, int a2, int a3, void *inputStruct)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  if (IOConnectCallMethod(a1, 0xFu, input, 2u, inputStruct, 0x20uLL, 0, 0, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t drainDataLog(mach_port_t a1)
{
  if (IOConnectCallMethod(a1, 0xEu, 0, 0, 0, 0, 0, 0, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t gaugeEnableInterrupts(mach_port_t a1)
{
  input = 1;
  v1 = IOConnectCallScalarMethod(a1, 0x10u, &input, 1u, 0, 0);
  if (v1 == -536870183)
  {
    v2 = -2;
  }

  else
  {
    v2 = -1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t gaugeDisableInterrupts(mach_port_t a1)
{
  input = 0;
  v1 = IOConnectCallScalarMethod(a1, 0x10u, &input, 1u, 0, 0);
  if (v1 == -536870183)
  {
    v2 = -2;
  }

  else
  {
    v2 = -1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t gaugeDisconnect(uint64_t connection)
{
  v1 = connection;
  v2 = 0;
  v15 = *MEMORY[0x29EDCA608];
  while (1)
  {
    output = 0;
    outputCnt = 1;
    input = 23;
    v3 = IOConnectCallScalarMethod(v1, 0xBu, &input, 1u, &output, &outputCnt) ? -1 : output;
    if (!v3)
    {
      break;
    }

    v4 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      LODWORD(output) = 67109376;
      HIDWORD(output) = v2;
      v13 = 1024;
      v14 = v3;
      _os_log_error_impl(&dword_29D352000, v4, OS_LOG_TYPE_ERROR, "%d: retry OpenProtector (%d)", &output, 0xEu);
    }

    usleep(0xF4240u);
    if (++v2 == 3)
    {
      v5 = -36;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  v9 = 0;
  output = 0;
  outputCnt = 1;
  input = 32;
  IOConnectCallScalarMethod(v1, 0xBu, &input, 1u, &output, &outputCnt);
  v6 = controlReadU16(v1, 0, &v9);
  if ((v9 & 0x2000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = -1;
  }

  if (v6)
  {
    return 4294967291;
  }

  else
  {
    return v7;
  }
}

uint64_t controlReadU16(mach_port_t a1, int a2, _WORD *a3)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v5 = a2;
  if (IOConnectCallScalarMethod(a1, 0xBu, &v5, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    return 0;
  }

  return result;
}

uint64_t hdqReadS16(mach_port_t a1, int a2, _WORD *a3)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v5 = a2;
  if (IOConnectCallScalarMethod(a1, 8u, &v5, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    return 0;
  }

  return result;
}

uint64_t hdqReadU16(mach_port_t a1, int a2, _WORD *a3)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v5 = a2;
  if (IOConnectCallScalarMethod(a1, 8u, &v5, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    return 0;
  }

  return result;
}

uint64_t hdqReadS8(mach_port_t a1, int a2, _BYTE *a3)
{
  result = ggctl_hdqRead8(a1, a2);
  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    return 0;
  }

  return result;
}

uint64_t hdqReadU8(mach_port_t a1, int a2, _BYTE *a3)
{
  result = ggctl_hdqRead8(a1, a2);
  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    return 0;
  }

  return result;
}

uint64_t controlReadS16(mach_port_t a1, int a2, _WORD *a3)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v5 = a2;
  if (IOConnectCallScalarMethod(a1, 0xBu, &v5, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    return 0;
  }

  return result;
}

uint64_t dumpBuffer(unsigned __int8 *a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      v5 = *a1++;
      printf(" %02x", v5);
      --v4;
    }

    while (v4);
  }

  return putchar(10);
}

uint64_t registerName(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x600)
  {
    if (a2 - 1281 > 1 || (*a1 | 4) != 0x1E)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if ((*a1 | 2) == 0xE)
  {
    return 0;
  }

LABEL_8:
  v2 = *(a1 + 72);
  if (!v2 && (a2 < 0x600 || (v2 = *(a1 + 48)) == 0) && (a2 < 0x501 || (v2 = *(a1 + 40)) == 0) && (a2 < 0x313 || (v2 = *(a1 + 32)) == 0) && (a2 < 0x132 || (v2 = *(a1 + 24)) == 0))
  {
    if (a2 < 0x119)
    {
      return *(a1 + 8);
    }

    v2 = *(a1 + 16);
    if (!v2)
    {
      return *(a1 + 8);
    }
  }

  return v2;
}

uint64_t readRegister(_WORD *a1, uint64_t a2, mach_port_t a3)
{
  v4 = *(a2 + 4);
  result = 0xFFFFFFFFLL;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v6 = *a2;

        return hdqReadU16(a3, v6, a1);
      }
    }

    else
    {
      v9 = *a2;

      return hdqReadS16(a3, v9, a1);
    }
  }

  else
  {
    switch(v4)
    {
      case 100:
        v7 = *(a2 + 64);
        if (v7)
        {

          return v7(a1);
        }

        break;
      case 10:
        v8 = *a2;

        return controlReadU16(a3, v8, a1);
      case 2:
        result = ggctl_hdqRead8(a3, *a2);
        if ((result & 0x80000000) == 0)
        {
          if (a1)
          {
            *a1 = result;
          }

          return 0;
        }

        break;
    }
  }

  return result;
}

uint64_t getFWVersion(mach_port_t a1, __int16 *a2)
{
  v3 = getFWVersion_gFWVersion;
  if (getFWVersion_gFWVersion)
  {
    goto LABEL_2;
  }

  if (!controlReadU16(a1, 2, &getFWVersion_gFWVersion))
  {
    v3 = getFWVersion_gFWVersion;
    if (getFWVersion_gFWVersion == 256)
    {
      v3 = 1536;
      getFWVersion_gFWVersion = 1536;
    }

LABEL_2:
    result = 0;
    *a2 = v3;
    return result;
  }

  return 0xFFFFFFFFLL;
}

double readLifetimeData(_OWORD *a1, uint64_t a2, mach_port_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = 0;
  if ((getFWVersion(a3, &v8) & 0x80000000) == 0 && v8 >= 0x313u && !ggctl_readBlock(a3, -1, 4, &outputStruct, 0))
  {
    v6 = v10;
    *a1 = outputStruct;
    a1[1] = v6;
    if (!ggctl_readBlock(a3, -1, 6, &outputStruct, 0))
    {
      result = *&outputStruct;
      v7 = v10;
      a1[2] = outputStruct;
      a1[3] = v7;
    }
  }

  return result;
}

double readRaTableData(_OWORD *a1, uint64_t a2, mach_port_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = 0;
  if ((getFWVersion(a3, &v7) & 0x80000000) == 0 && v7 >= 0x600u && !ggctl_readBlock(a3, -1, 7, outputStruct, 0))
  {
    result = *outputStruct;
    v6 = outputStruct[1];
    *a1 = outputStruct[0];
    a1[1] = v6;
  }

  return result;
}

double readIMAXAndSOCSmoothData(_OWORD *a1, uint64_t a2, mach_port_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = 0;
  if ((getFWVersion(a3, &v7) & 0x80000000) == 0 && v7 >= 0x600u && !ggctl_readBlock(a3, -1, 8, outputStruct, 0))
  {
    result = *outputStruct;
    v6 = outputStruct[1];
    *a1 = outputStruct[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t findRaWeightMulitplier(int a1)
{
  v1 = &dword_2A17A180C;
  v2 = 17;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

CFDictionaryRef readShutdownReasonData(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v8 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v13, 0, sizeof(v13));
  ggctl_logShutdownReason(a1, v6, 1u);
  if (v2)
  {
    v3 = logger;
    if (!os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315394;
    v10 = "readShutdownReasonData";
    v11 = 1024;
    v12 = 2502;
    v4 = "%s:%d cannot read data";
LABEL_4:
    _os_log_impl(&dword_29D352000, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 0x12u);
    return 0;
  }

  if (!*(&v7 + 1))
  {
    v3 = logger;
    if (!os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315394;
    v10 = "readShutdownReasonData";
    v11 = 1024;
    v12 = 2506;
    v4 = "%s:%d invalid timestamp";
    goto LABEL_4;
  }

  return parseShutdownReason(v6, v13, a1);
}

double ggctl_logShutdownReason(mach_port_t a1, uint64_t a2, unsigned int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v9 = 64;
  if (a2)
  {
    if (a3)
    {
      v12 = 0u;
      v13 = 0u;
      outputStruct = 0u;
      v11 = 0u;
      input = a3;
      if (!IOConnectCallMethod(a1, 0x11u, &input, 1u, inputStruct, 0x40uLL, 0, 0, &outputStruct, &v9))
      {
        v6 = v11;
        *a2 = outputStruct;
        *(a2 + 16) = v6;
        result = *&v12;
        *(a2 + 32) = v12;
        *(a2 + 48) = v13;
      }
    }

    else
    {
      v5 = *(a2 + 16);
      inputStruct[0] = *a2;
      inputStruct[1] = v5;
      inputStruct[2] = *(a2 + 32);
      v15 = *(a2 + 48);
      v8 = a3;
      IOConnectCallMethod(a1, 0x11u, &v8, 1u, inputStruct, 0x40uLL, 0, 0, &outputStruct, &v9);
    }
  }

  return result;
}

CFDictionaryRef parseShutdownReason(__int16 *a1, const UInt8 *a2, uint64_t a3)
{
  v3 = a3;
  v48 = *MEMORY[0x29EDCA608];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  keys[0] = @"ShutDownTimestamp";
  v6 = *MEMORY[0x29EDB8ED8];
  valuePtr = *(a1 + 5);
  values[0] = CFNumberCreate(v6, kCFNumberLongType, &valuePtr);
  keys[1] = @"ShutDownUISoc";
  v35 = *(a1 + 12);
  values[1] = CFNumberCreate(v6, kCFNumberFloatType, &v35);
  keys[2] = @"ShutDownTemperature";
  v34 = *a1;
  values[2] = CFNumberCreate(v6, kCFNumberIntType, &v34);
  keys[3] = @"ShutDownPresentDOD";
  v33 = a1[1];
  values[3] = CFNumberCreate(v6, kCFNumberIntType, &v33);
  keys[4] = @"ShutDownMaxRa08";
  v32 = a1[2];
  values[4] = CFNumberCreate(v6, kCFNumberIntType, &v32);
  keys[5] = @"ShutDownNominalChargeCapacity";
  v31 = a1[3];
  values[5] = CFNumberCreate(v6, kCFNumberIntType, &v31);
  keys[6] = @"ShutDownPrevNominalChargeCapacity";
  v30 = a1[4];
  values[6] = CFNumberCreate(v6, kCFNumberIntType, &v30);
  keys[7] = @"ShutDownFullChargeCapacity";
  v29 = a1[5];
  values[7] = CFNumberCreate(v6, kCFNumberIntType, &v29);
  keys[8] = @"ShutDownPrevFullChargeCapacity";
  v28 = a1[6];
  values[8] = CFNumberCreate(v6, kCFNumberIntType, &v28);
  keys[9] = @"ShutDownRemainingCapacity";
  v27 = a1[7];
  values[9] = CFNumberCreate(v6, kCFNumberIntType, &v27);
  keys[10] = @"ShutDownPrevRemainingCapacity";
  v26 = a1[8];
  values[10] = CFNumberCreate(v6, kCFNumberIntType, &v26);
  keys[11] = @"ShutDownCycleCount";
  v25 = a1[9];
  values[11] = CFNumberCreate(v6, kCFNumberIntType, &v25);
  keys[12] = @"ShutDownMaxDischargeCurrent";
  v24 = a1[10];
  values[12] = CFNumberCreate(v6, kCFNumberIntType, &v24);
  keys[13] = @"ShutDownTimeAbove95";
  v23 = *(a1 + 22);
  values[13] = CFNumberCreate(v6, kCFNumberIntType, &v23);
  keys[14] = @"ShutDownVoltage";
  v22 = *(a1 + 23);
  values[14] = CFNumberCreate(v6, kCFNumberIntType, &v22);
  keys[15] = @"ShutDownPrevVoltage";
  v21 = *(a1 + 25);
  values[15] = CFNumberCreate(v6, kCFNumberIntType, &v21);
  keys[16] = @"ShutDownAverageCurrent";
  v20 = *(a1 + 27);
  values[16] = CFNumberCreate(v6, kCFNumberIntType, &v20);
  keys[17] = @"ShutDownPrevAverageCurrent";
  v19 = *(a1 + 29);
  values[17] = CFNumberCreate(v6, kCFNumberIntType, &v19);
  keys[18] = @"ShutDownCycleCountLastQmax";
  v18 = *(a1 + 31);
  values[18] = CFNumberCreate(v6, kCFNumberIntType, &v18);
  keys[19] = @"ShutDownResScale";
  v17 = a1[16];
  values[19] = CFNumberCreate(v6, kCFNumberIntType, &v17);
  keys[20] = @"ShutDownQstart";
  v16 = a1[17];
  values[20] = CFNumberCreate(v6, kCFNumberIntType, &v16);
  keys[21] = @"ShutDownPassedCharge";
  v15 = a1[18];
  values[21] = CFNumberCreate(v6, kCFNumberIntType, &v15);
  keys[22] = @"ShutDownDOD0";
  v14 = a1[19];
  *&v42 = CFNumberCreate(v6, kCFNumberIntType, &v14);
  *&v38 = @"Raw";
  *(&v42 + 1) = CFDataCreate(v6, a1, 52);
  v47 = 0;
  *bytes = 0u;
  v46 = 0u;
  ggctl_logShutdownDLog(v3, bytes, 1u);
  *(&v38 + 1) = @"ShutDownDLog";
  *&v43 = CFDataCreate(v6, bytes, 40);
  *&v39 = @"timeSinceAwake";
  v13 = *a2;
  *(&v43 + 1) = CFNumberCreate(v6, kCFNumberLongType, &v13);
  *(&v39 + 1) = @"ShutDownRaTableRaw";
  *&v44 = CFDataCreate(v6, a2 + 8, 32);
  v40 = @"ShutDownRSS";
  v12 = *(a2 + 20);
  v7 = &v44 + 1;
  *(&v44 + 1) = CFNumberCreate(v6, kCFNumberIntType, &v12);
  v8 = CFDictionaryCreate(v6, keys, values, 28, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  for (i = 29; i > 1; --i)
  {
    v10 = *v7--;
    CFRelease(v10);
  }

  return v8;
}

void writeBatteryDiagnosticData(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v7[44] = *MEMORY[0x29EDCA608];
  bzero(v5, 0x258uLL);
  outputStructCnt = 352;
  IOConnectCallStructMethod(a1, 2u, 0, 0, v7, &outputStructCnt);
  v6 = 4000;
  logBatteryDiagnosticData(v5, a1, v2);
}

void logBatteryDiagnosticData(uint64_t a1, uint64_t a2, int a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  v6 = IOServiceMatching("IOPMPowerSource");
  service = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v6);
  if (service)
  {
    if ((getSInt32ForKey(@"CurrentCapacity", &v14 + 1) & 0x80000000) != 0)
    {
      IOObjectRelease(service);
    }

    else
    {
      SInt32ForKey = getSInt32ForKey(@"MaxCapacity", &v14);
      IOObjectRelease(service);
      if ((SInt32ForKey & 0x80000000) == 0)
      {
        v8 = (100 * HIDWORD(v14)) / v14;
        setUPOData(@"IOPMUBootUPOState", v8 > 10.0);
        if (*(a1 + 596) && v8 > 10.0 && *(a1 + 48) >= 2742)
        {
          setUPOData(@"IOPMUBootUPOCounter", 1);
        }

        v9 = (*(a1 + 104) << 8) | *(a1 + 105);
        v10 = (*(a1 + 126) << 8) | *(a1 + 127);
        v11 = *(a1 + 142);
        v12 = *(a1 + 139);
        if (a3)
        {
          v38 = time(0);
          v39 = v8;
          *__str = *(a1 + 48);
          v21 = *(a1 + 58);
          v22 = v10;
          v23 = *(a1 + 46);
          v24 = *(a1 + 228);
          v25 = *(a1 + 44);
          v26 = *(a1 + 226);
          v27 = *(a1 + 52);
          v28 = *(a1 + 230);
          v29 = *(a1 + 84);
          v30 = v9;
          v31 = v11;
          v32 = *(a1 + 42);
          v33 = *(a1 + 222);
          v34 = *(a1 + 50);
          v35 = *(a1 + 224);
          v36 = v12;
          v37 = *(a1 + 60);
          v19 = 0;
          *v17 = v38 - *(a1 + 232);
          *&v17[8] = *(a1 + 158);
          v18 = *(a1 + 174);
          LOWORD(v19) = bswap32(*(a1 + 191)) >> 16;
          ggctl_logShutdownReason(a2, __str, 0);
          ggctl_logShutdownDLog(a2, &v40, 0);
          ggctl_logShutdownReason2(a2, v17, 0);
        }

        *v17 = *a1;
        *&v17[16] = *(a1 + 16);
        snprintf(__str, 0x200uLL, "%s,%5.2f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d,%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d", v17, v8, *(a1 + 48), *(a1 + 58), v10, *(a1 + 46), *(a1 + 228), *(a1 + 44), *(a1 + 226), *(a1 + 52), *(a1 + 230), *(a1 + 84), v9, v11, *(a1 + 42), *(a1 + 222), *(a1 + 50), *(a1 + 224), v12, *(a1 + 60), __rev16(*(a1 + 191)), __rev16(*(a1 + 158)), __rev16(*(a1 + 160)), __rev16(*(a1 + 162)), __rev16(*(a1 + 164)), __rev16(*(a1 + 166)), __rev16(*(a1 + 168)), __rev16(*(a1 + 170)), __rev16(*(a1 + 172)), __rev16(*(a1 + 174)), __rev16(*(a1 + 176)), __rev16(*(a1 + 178)), __rev16(*(a1 + 180)), __rev16(*(a1 + 182)), __rev16(*(a1 + 184)), __rev16(*(a1 + 186)), v40, WORD1(v40), WORD2(v40), WORD3(v40), WORD4(v40), WORD5(v40), WORD6(v40), HIWORD(v40), v41, WORD1(v41), WORD2(v41), WORD3(v41), WORD4(v41), WORD5(v41), WORD6(v41), HIWORD(v41), v42, WORD1(v42), WORD2(v42), HIWORD(v42));
        CFAbsoluteTimeGetCurrent();
        logLineForAppleCare();
        v13 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v16 = __str;
          _os_log_impl(&dword_29D352000, v13, OS_LOG_TYPE_DEFAULT, "Battery Diagnostic Data:: %s", buf, 0xCu);
        }
      }
    }
  }

  else if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    logBatteryDiagnosticData_cold_1();
  }
}

uint64_t startUpdateThread(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  memset(&v7, 0, sizeof(v7));
  if (stat("/dev/cu.gas-gauge", &v7))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  memset(&v7, 0, 64);
  pthread_attr_init(&v7);
  pthread_attr_setdetachstate(&v7, 2);
  logger = os_log_create("com.apple.AppleHDQGasGauge", "battery");
  if (!logger)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = pthread_create(&v6, &v7, updateThread, a1);
  if (v2)
  {
    v4 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_29D352000, v4, OS_LOG_TYPE_ERROR, "pthread_create", v5, 2u);
      v4 = logger;
    }

    os_release(v4);
  }

  else
  {
    pthread_attr_destroy(&v7);
  }

  return v2;
}

uint64_t updateThread(uint64_t a1)
{
  v392 = *MEMORY[0x29EDCA608];
  *notification = 0;
  v334 = 0;
  v333 = 0;
  thePortRef = 0;
  notifier = 0;
  notificationID = 0;
  refCon = 0;
  pthread_setname_np("GasGauge-updateThread");
  gRestrictLogMessagesCounter = 0;
  v2 = 0x2A17A1000uLL;
  v3 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29D352000, v3, OS_LOG_TYPE_DEFAULT, "gasgauge: updateThread start", buf, 2u);
  }

  v4 = pmps_service();
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x29EDBB110];
    v7 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    if (IOServiceAddInterestNotification(v7, v5, "IOGeneralInterest", iokit_callback, &refCon, notification))
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        updateThread_cold_1();
      }

      return 0;
    }

    Current = CFRunLoopGetCurrent();
    RunLoopSource = IONotificationPortGetRunLoopSource(v7);
    v10 = *MEMORY[0x29EDB8FC0];
    CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x29EDB8FC0]);
    kernelPort = IORegisterForSystemPower(&refCon, &thePortRef, iokit_callback, &notifier);
    if (kernelPort && thePortRef)
    {
      v11 = CFRunLoopGetCurrent();
      v12 = IONotificationPortGetRunLoopSource(thePortRef);
      CFRunLoopAddSource(v11, v12, v10);
      v13 = ggctl_connect(&notification[1]);
      v14 = 0x2A1A12000uLL;
      if (!v13)
      {
        return 0;
      }

      v15 = v13;
      *buf = 0;
      v348[0] = 0;
      v16 = MEMORY[0x29ED52C10](v13, 0, *MEMORY[0x29EDCA6B0], buf, v348, 1);
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *buf;
      }

      if (v16)
      {
        v18 = v16;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          updateThread_cold_2(v18);
        }

        IOServiceClose(v15);
        return 0;
      }

      v280 = *buf;
      v285 = v17;
      *buf = 352;
      v291 = v15;
      IOConnectCallStructMethod(v15, 2u, 0, 0, &dword_2A17A1B40, buf);
      byte_2A17A1A8C = dword_2A17A1BE4 != 0;
      v333 = word_2A17A1BCE;
      v278 = dword_2A17A1C98;
      valuePtr = dword_2A17A1BD4;
      v288 = *MEMORY[0x29EDB8FA8];
      v289 = *MEMORY[0x29EDB8FB0];
      v20 = CFPreferencesCopyValue(@"UpdateSampleConfig", @"com.apple.gasgauge", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8FA8]);
      if (v20)
      {
        v21 = v20;
        v22 = CFGetTypeID(v20);
        if (v22 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
          v23 = logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = valuePtr;
            _os_log_impl(&dword_29D352000, v23, OS_LOG_TYPE_DEFAULT, "changed updateSampleConfig=%#x", buf, 8u);
          }
        }

        CFRelease(v21);
      }

      v284 = valuePtr;
      v24 = CFPreferencesCopyValue(@"CriticalBattery", @"com.apple.gasgauge", v289, v288);
      if (v24)
      {
        v25 = v24;
        v26 = CFGetTypeID(v24);
        if (v26 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v25, kCFNumberSInt32Type, &word_2A17A1BCC);
          CFRelease(v25);
        }

        else
        {
          Value = CFBooleanGetValue(v25);
          CFRelease(v25);
          if (!Value)
          {
            v263 = logger;
            v283 = 0;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_29D352000, v263, OS_LOG_TYPE_DEFAULT, "Critical battery shutdown disabled", buf, 2u);
              v283 = 0;
            }

LABEL_30:
            v28 = CFPreferencesCopyValue(@"UserMode", @"com.apple.gasgauge", v289, v288);
            if (v28)
            {
              v29 = v28;
              v30 = CFGetTypeID(v28);
              v286 = v30 == CFBooleanGetTypeID() && CFBooleanGetValue(v29) != 0;
              CFRelease(v29);
              v31 = logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v286;
                _os_log_impl(&dword_29D352000, v31, OS_LOG_TYPE_DEFAULT, "gas gauge: userModeEnabled=%d", buf, 8u);
              }
            }

            else
            {
              v286 = 0;
            }

            v32 = CFPreferencesCopyValue(@"CriticalFlagDelay", @"com.apple.gasgauge", v289, v288);
            if (v32)
            {
              v33 = v32;
              v34 = CFGetTypeID(v32);
              if (v34 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v33, kCFNumberSInt32Type, &v333);
              }

              CFRelease(v33);
              v35 = logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v333;
                _os_log_impl(&dword_29D352000, v35, OS_LOG_TYPE_DEFAULT, "gas gauge: critical flag delay %d", buf, 8u);
              }
            }

            v36 = CFPreferencesCopyValue(@"DebugPolling", @"com.apple.gasgauge", v289, v288);
            if (v36)
            {
              v37 = v36;
              v38 = CFGetTypeID(v36);
              if (v38 == CFBooleanGetTypeID())
              {
                debug_polling = CFBooleanGetValue(v37) != 0;
              }

              CFRelease(v37);
              v39 = logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = debug_polling;
                _os_log_impl(&dword_29D352000, v39, OS_LOG_TYPE_DEFAULT, "gas gauge: debug_polling=%d", buf, 8u);
              }
            }

            v40 = CFPreferencesCopyValue(@"RestricLogCounter", @"com.apple.gasgauge", v289, v288);
            if (v40)
            {
              v41 = v40;
              v42 = CFGetTypeID(v40);
              if (v42 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v41, kCFNumberSInt32Type, &gRestrictLogCounter);
              }

              CFRelease(v41);
              v43 = logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = gRestrictLogCounter;
                _os_log_impl(&dword_29D352000, v43, OS_LOG_TYPE_DEFAULT, "gas gauge: log counter %d", buf, 8u);
              }
            }

            v299 = dword_2A17A1BD8;
            if (dword_2A17A1BD8)
            {
              v44 = IONotificationPortCreate(v6);
              v45 = IOServiceAddInterestNotification(v44, notification[1], "IOGeneralInterest", iokit_callback, &refCon, notification);
              v46 = logger;
              if (v45)
              {
                if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                {
                  updateThread_cold_3();
                }
              }

              else
              {
                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_29D352000, v46, OS_LOG_TYPE_DEFAULT, "gasgauge: listening for battery interrupts", buf, 2u);
                }

                v47 = CFRunLoopGetCurrent();
                v48 = IONotificationPortGetRunLoopSource(v44);
                CFRunLoopAddSource(v47, v48, v10);
              }
            }

            v334 = 0;
            getUPOData(@"IOPMUBootUPOState", &v334);
            v292 = v334 != 0;
            getUPOData(@"IOPMUBootBatteryHealthMetric", &dword_2A17A1B38);
            v327 = 64;
            if (sysctlbyname("hw.model", v391, &v327, 0, 0) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
            {
              updateThread_cold_4();
            }

            mode = v10;
            v49 = UpSeconds();
            v50 = logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134219776;
              *&buf[4] = v49;
              *&buf[12] = 1024;
              *&buf[14] = v283;
              *&buf[18] = 1024;
              *&buf[20] = word_2A17A1BCC;
              *&buf[24] = 1024;
              *&buf[26] = valuePtr;
              *&buf[30] = 1024;
              LODWORD(v371) = byte_2A17A1A8C;
              WORD2(v371) = 1024;
              *(&v371 + 6) = v333;
              WORD5(v371) = 1024;
              HIDWORD(v371) = dword_2A17A1BD0;
              LOWORD(v372) = 1024;
              *(&v372 + 2) = v334;
              _os_log_impl(&dword_29D352000, v50, OS_LOG_TYPE_DEFAULT, "gasgauge: %llu updateThread critical(%d, 0x%x), uscfg=0x%x, dyn=%d cfd=%d cfd-voltage=%d, upos=%x", buf, 0x36u);
            }

            v275 = a1;
            v271 = a1 != 0;
            v270 = 0;
            v272 = 0;
            v300 = 0;
            v51 = 0;
            v287 = 0;
            v293 = 0;
            v297 = 0;
            v52 = 0;
            v53 = 0;
            v281 = 0;
            v54 = 0;
            qword_2A17A1B30 = time(0);
            v273 = (dword_2A17A1BE8 | dword_2A17A1C2C) != 0;
            v276 = (v284 >> 3) & 1;
            v277 = 0;
            v279 = (v284 >> 2) & 1;
            allocator = *MEMORY[0x29EDB8ED8];
            v296 = *MEMORY[0x29EDB8F00];
            v282 = *MEMORY[0x29EDB8EF8];
            v55 = 0.0;
            v56 = 0.0;
            v298 = -1;
            v274 = 1;
LABEL_65:
            v57 = -1;
            while (1)
            {
              v390 = 0u;
              v389 = 0u;
              v388 = 0u;
              v387 = 0u;
              v386 = 0u;
              v385 = 0u;
              v384 = 0u;
              v383 = 0u;
              v382 = 0u;
              v381 = 0u;
              v380 = 0u;
              v379 = 0u;
              v378 = 0u;
              v377 = 0u;
              v376 = 0u;
              v375 = 0u;
              v374 = 0u;
              v373 = 0u;
              v372 = 0u;
              v371 = 0u;
              memset(buf, 0, sizeof(buf));
              v369 = 0u;
              v368 = 0u;
              v367 = 0u;
              v366 = 0u;
              v365 = 0u;
              v364 = 0u;
              v363 = 0u;
              v362 = 0u;
              v360 = 0u;
              v361 = 0u;
              v358 = 0u;
              v359 = 0u;
              v356 = 0u;
              v357 = 0u;
              v354 = 0u;
              v355 = 0u;
              v352 = 0u;
              v353 = 0u;
              v350 = 0u;
              v351 = 0u;
              *v348 = 0u;
              v349 = 0u;
              if (v299 && v57 != -1)
              {
                *input = 1;
                v58 = IOConnectCallScalarMethod(v57, 0x10u, input, 1u, 0, 0);
                v59 = v58 == -536870183 ? -2 : -1;
                if (v58)
                {
                  v60 = *(v2 + 2048);
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *input = 67109120;
                    *&input[4] = v59;
                    _os_log_impl(&dword_29D352000, v60, OS_LOG_TYPE_DEFAULT, "cannot enable gauge interrupts (%d)", input, 8u);
                  }
                }
              }

              LODWORD(refCon) = 0;
              if (v53)
              {
                v61 = *(v14 + 3432);
                if (v61)
                {
                  v62 = v61 - 1;
                }

                else
                {
                  if (v56 == 0.0)
                  {
                    goto LABEL_82;
                  }

                  v63 = *(v2 + 2048);
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                  {
                    v64 = CFAbsoluteTimeGetCurrent();
                    *input = 67109632;
                    *&input[4] = v53;
                    *&input[8] = 2048;
                    *&input[10] = v64 - v56;
                    *&input[18] = 1024;
                    *&input[20] = gRestrictLogCounter;
                    _os_log_impl(&dword_29D352000, v63, OS_LOG_TYPE_DEFAULT, "failure last_update_failed_counter=%d last_success at %g, supressing %d subsequent errors", input, 0x18u);
                  }

                  v62 = gRestrictLogCounter;
                }

                *(v14 + 3432) = v62;
              }

LABEL_82:
              if (v298 != -1 && v298 < 50)
              {
                v65 = 5.0;
              }

              else
              {
                v65 = 20.0;
              }

              if (v51)
              {
LABEL_507:
                IOObjectRelease(v5);
                MEMORY[0x29ED52C20](v291, 0, *MEMORY[0x29EDCA6B0], v285);
                IOServiceClose(v291);
                *(v14 + 3432) = 0;
                v262 = *(v2 + 2048);
                if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_29D352000, v262, OS_LOG_TYPE_DEFAULT, "gasgauge: updateThread terminated", buf, 2u);
                }

                return 0;
              }

              if (!(v54 | v53))
              {
                v68 = 1;
                goto LABEL_122;
              }

              v66 = CFAbsoluteTimeGetCurrent();
              if (debug_polling == 1 && (v67 = *(v2 + 2048), os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG)))
              {
                *input = 136316418;
                *&input[4] = "updateThread";
                *&input[12] = 1024;
                *&input[14] = 2802;
                *&input[18] = 1024;
                *&input[20] = v54;
                *&input[24] = 1024;
                *&input[26] = v52 & 1;
                *&input[30] = 2048;
                *&input[32] = v66;
                *&input[40] = 2048;
                *&input[42] = v55;
                _os_log_debug_impl(&dword_29D352000, v67, OS_LOG_TYPE_DEBUG, "*** %s:%d updatesDone=%d last_update_ignored=%d now=%f deadline=%f *** ", input, 0x32u);
                if ((v52 & 1) == 0)
                {
LABEL_94:
                  v55 = v65 + v66;
                  goto LABEL_95;
                }
              }

              else if ((v52 & 1) == 0)
              {
                goto LABEL_94;
              }

              v65 = 0.0;
              if (v66 < v55)
              {
                v65 = v55 - v66;
              }

LABEL_95:
              if (debug_polling == 1)
              {
                v69 = *(v2 + 2048);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  *input = 136316674;
                  *&input[4] = "updateThread";
                  *&input[12] = 1024;
                  *&input[14] = 2860;
                  *&input[18] = 1024;
                  *&input[20] = v54;
                  *&input[24] = 1024;
                  *&input[26] = v52 & 1;
                  *&input[30] = 2048;
                  *&input[32] = v66;
                  *&input[40] = 2048;
                  *&input[42] = v55;
                  *&input[50] = 2048;
                  v346 = v65;
                  _os_log_error_impl(&dword_29D352000, v69, OS_LOG_TYPE_ERROR, "*** %s:%d updatesDone=%d last_update_ignored=%d now=%f deadline=%f update_interval=%f *** ", input, 0x3Cu);
                }
              }

              if (v65 == 0.0)
              {
                v68 = 0;
                v52 = 0;
                LODWORD(refCon) = 0;
                goto LABEL_122;
              }

              v68 = 1;
              if (CFRunLoopRunInMode(mode, v65, 1u) != kCFRunLoopRunHandledSource)
              {
                v52 = 0;
                goto LABEL_122;
              }

              v52 = 0;
              v70 = refCon;
              v71 = 1;
              if (refCon > -536870145)
              {
                if (refCon != -536870144 && refCon != -536723200)
                {
                  v72 = -469794560;
LABEL_109:
                  if (refCon != v72)
                  {
                    if (debug_polling == 1)
                    {
                      v73 = *(v2 + 2048);
                      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                      {
                        *input = 136315906;
                        *&input[4] = "updateThread";
                        *&input[12] = 1024;
                        *&input[14] = 2879;
                        *&input[18] = 1024;
                        *&input[20] = v54;
                        *&input[24] = 1024;
                        *&input[26] = v70;
                        _os_log_error_impl(&dword_29D352000, v73, OS_LOG_TYPE_ERROR, "*** %s:%d updatesDone=%d message.messageType=%#x  (ign) *** ", input, 0x1Eu);
                      }
                    }

                    v71 = 0;
                    v52 = 1;
                  }
                }
              }

              else if ((refCon + 536870288) > 0x20 || ((1 << (refCon - 112)) & 0x100010001) == 0)
              {
                v72 = -536870320;
                goto LABEL_109;
              }

              if (v70 > -536870145)
              {
                if (v70 == -536870144 || v70 == -536723200)
                {
                  goto LABEL_122;
                }

                v74 = -469794560;
              }

              else
              {
                if ((v70 + 536870288) <= 0x20 && ((1 << (v70 - 112)) & 0x100010001) != 0)
                {
                  goto LABEL_122;
                }

                v74 = -536870320;
              }

              if (v70 == v74 || v71)
              {
LABEL_122:
                if (debug_polling == 1 && (v75 = *(v2 + 2048), os_log_type_enabled(v75, OS_LOG_TYPE_ERROR)))
                {
                  *input = 136316162;
                  *&input[4] = "updateThread";
                  *&input[12] = 1024;
                  *&input[14] = 2897;
                  *&input[18] = 1024;
                  *&input[20] = v54;
                  *&input[24] = 1024;
                  *&input[26] = refCon;
                  *&input[30] = 1024;
                  *&input[32] = v300 & 1;
                  _os_log_error_impl(&dword_29D352000, v75, OS_LOG_TYPE_ERROR, "*** %s:%d updatesDone=%d message.messageType=%#x system_sleep=%d *** ", input, 0x24u);
                  if (v54)
                  {
                    goto LABEL_125;
                  }

LABEL_126:
                  CFProperty = IORegistryEntryCreateCFProperty(v5, @"AdapterInfo", allocator, 0);
                  v78 = IORegistryEntryCreateCFProperty(v5, @"AppleRawExternalConnected", allocator, 0);
                  LODWORD(keys[0]) = 0;
                  if (CFProperty)
                  {
                    v79 = CFGetTypeID(CFProperty);
                    if (v79 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(CFProperty, kCFNumberSInt32Type, keys);
                    }

                    CFRelease(CFProperty);
                    v80 = keys[0];
                    if (v297 != (LODWORD(keys[0]) == 0))
                    {
                      goto LABEL_135;
                    }
                  }

                  else
                  {
                    if (!v297)
                    {
                      v80 = 0;
LABEL_135:
                      v81 = v293 ^ (v78 != v296);
                      goto LABEL_136;
                    }

                    v80 = 0;
                  }

                  v81 = 0;
LABEL_136:
                  if (debug_polling == 1)
                  {
                    v82 = logger;
                    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                    {
                      *input = 136316418;
                      *&input[4] = "updateThread";
                      *&input[12] = 1024;
                      *&input[14] = 2921;
                      *&input[18] = 1024;
                      *&input[20] = v54;
                      *&input[24] = 1024;
                      *&input[26] = v81 & 1;
                      *&input[30] = 1024;
                      *&input[32] = v80;
                      *&input[36] = 1024;
                      *&input[38] = v78 == v296;
                      _os_log_impl(&dword_29D352000, v82, OS_LOG_TYPE_DEFAULT, "*** %s:%d updatesDone=%d same_adaptor=%d adaptor_type=%d external_connected=%d *** ", input, 0x2Au);
                    }
                  }

                  if ((v68 & v81 & (v54 != 0)) != 1)
                  {
                    v83 = keys[0];
                    v297 = LODWORD(keys[0]) != 0;
                    v293 = v78 == v296;
                    v2 = 0x2A17A1000uLL;
                    if (v78)
                    {
                      CFRelease(v78);
                    }

                    if (v83 != 0 && v292)
                    {
                      setUPOData(@"IOPMUBootUPOState", 0);
                      v292 = 0;
                    }

                    ++debug_cnt_ut_recv;
                    v76 = refCon;
                    v14 = 0x2A1A12000;
                    goto LABEL_148;
                  }

                  v2 = 0x2A17A1000;
                  if (v78)
                  {
                    CFRelease(v78);
                  }

                  v51 = 0;
                  v57 = -1;
                  v52 = 1;
                  v14 = 0x2A1A12000;
                }

                else
                {
                  if (!v54)
                  {
                    goto LABEL_126;
                  }

LABEL_125:
                  v76 = refCon;
                  if (refCon == -536723200)
                  {
                    goto LABEL_126;
                  }

LABEL_148:
                  if (v76 == -469794560)
                  {
                    v84 = v68;
                  }

                  else
                  {
                    v84 = 0;
                  }

                  v52 |= v76 == -469794560;
                  if ((v300 & (v76 != -536870144)) != 0)
                  {
LABEL_152:
                    v51 = 0;
                    v57 = -1;
                    v300 = 1;
                  }

                  else if (v76 == -536870288)
                  {
                    IOAllowPowerChange(kernelPort, notificationID);
                    v51 = 0;
                    v57 = -1;
                    v52 = 1;
                  }

                  else
                  {
                    if (v53 && v76 == -536870272)
                    {
                      IOAllowPowerChange(kernelPort, notificationID);
                      goto LABEL_152;
                    }

                    if (v291 == -1)
                    {
                      v51 = 0;
                      ++v53;
                      goto LABEL_65;
                    }

                    if (v76 == -536870144)
                    {
                      if (v287)
                      {
                        updateThermalCoolDownState(notification[1], 0);
                      }

                      if (v300)
                      {
                        v300 = 0;
                        v287 = 0;
                        qword_2A17A1B30 = time(0);
                      }

                      else
                      {
                        v300 = 0;
                        v287 = 0;
                      }
                    }

                    hdq_state = ggctl_get_hdq_state(v291);
                    if (hdq_state == -2)
                    {
                      v51 = 1;
                      v57 = v291;
                    }

                    else if (hdq_state)
                    {
                      if (hdq_state < 0)
                      {
                        if (os_log_type_enabled(*(v2 + 2048), OS_LOG_TYPE_ERROR))
                        {
                          updateThread_cold_9(&v321, v322);
                        }

                        v51 = 0;
                        ++v53;
                        v57 = v291;
                      }

                      else
                      {
                        v89 = hdqBreak(v291);
                        if (v89 != -2)
                        {
                          if (v89 < 0)
                          {
                            v90 = ++updateThread_debug_break_failures;
                            v91 = *(v2 + 2048);
                            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                            {
                              *input = 136315906;
                              *&input[4] = "updateThread";
                              *&input[12] = 1024;
                              *&input[14] = 3024;
                              *&input[18] = 1024;
                              *&input[20] = v90;
                              *&input[24] = 1024;
                              *&input[26] = -1;
                              _os_log_error_impl(&dword_29D352000, v91, OS_LOG_TYPE_ERROR, "%s:%d break failed break_failures=%d (%d)", input, 0x1Eu);
                              v90 = updateThread_debug_break_failures;
                            }

                            if ((-858993459 * v90) <= 0x33333333)
                            {
                              statsAndLogs(notification[1], 0);
                              v14 = 0x2A1A12000;
                            }

                            else
                            {
                              v92 = -1227133513 * v90;
                              v14 = 0x2A1A12000;
                              if (v92 <= 0x24924924)
                              {
                                debugLog(notification[1], 63);
                              }
                            }
                          }

                          else if (updateThread_debug_break_failures)
                          {
                            statsAndLogs(notification[1], 1);
                            debugLog(notification[1], 0);
                            updateThread_debug_break_failures = 0;
                          }
                        }

                        if (v299)
                        {
                          if (v54)
                          {
                            v93 = gaugeDisableInterrupts(v291);
                            if (v93 < 0)
                            {
                              v94 = v93;
                              v95 = logger;
                              if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                              {
                                *input = 136315650;
                                *&input[4] = "updateThread";
                                *&input[12] = 1024;
                                *&input[14] = 3044;
                                *&input[18] = 1024;
                                *&input[20] = v94;
                                _os_log_error_impl(&dword_29D352000, v95, OS_LOG_TYPE_ERROR, "%s:%d cannot disable gauge interrupts (%d)", input, 0x18u);
                              }
                            }
                          }
                        }

                        if (refCon == -536870272)
                        {
                          v101 = OSThermalNotificationCurrentLevel();
                          v287 = v101 > 14;
                          if (v101 >= 15)
                          {
                            updateThermalCoolDownState(notification[1], 1);
                          }

                          IOAllowPowerChange(kernelPort, notificationID);
                          v51 = 0;
                          v300 = 1;
LABEL_420:
                          v57 = v291;
                          v2 = 0x2A17A1000;
                        }

                        else
                        {
                          v2 = 0x2A17A1000uLL;
                          if (refCon == -536870320)
                          {
                            goto LABEL_507;
                          }

                          if (v54)
                          {
                            v269 = 0;
LABEL_202:
                            if (debug_polling == 1)
                            {
                              v96 = *(v2 + 2048);
                              if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                              {
                                *input = 136315650;
                                *&input[4] = "updateThread";
                                *&input[12] = 1024;
                                *&input[14] = 3146;
                                *&input[18] = 1024;
                                *&input[20] = v54;
                                _os_log_impl(&dword_29D352000, v96, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d READING FLAGS", input, 0x18u);
                              }
                            }

                            v97 = hdqReadU16(v291, 10, &word_2A17A1AA2) == 0;
                            v98 = word_2A17A1AA2 != 0xFFFF && v97;
                            if ((v98 & v283) != 1)
                            {
                              LOBYTE(v100) = 0;
                              goto LABEL_265;
                            }

                            v265 = v97;
                            if (word_2A17A1BCC)
                            {
                              v267 = 0;
                              v99 = v277;
                              LOBYTE(v100) = ((v284 & 0x20) == 0 || v277) && (word_2A17A1BCC & ~word_2A17A1AA2) == 0;
                              if ((v284 & 0x20) != 0)
                              {
                                v99 = (word_2A17A1BCC & ~word_2A17A1AA2) == 0;
                              }

                              v277 = v99;
                            }

                            else if (v54 && dword_2A17A1BD0 >= word_2A17A1A72)
                            {
                              v267 = 0;
                              LOBYTE(v100) = 1;
                            }

                            else
                            {
                              v100 = (word_2A17A1AA2 >> 2) & 1;
                              v267 = 1;
                            }

                            v109 = v100;
                            if (debug_polling == 1)
                            {
                              v110 = logger;
                              v111 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                              LOBYTE(v100) = v109;
                              if (v111)
                              {
                                v112 = UpSeconds();
                                *input = 136317186;
                                *&input[4] = "updateThread";
                                *&input[12] = 1024;
                                *&input[14] = 3178;
                                *&input[18] = 1024;
                                *&input[20] = v54;
                                *&input[24] = 1024;
                                *&input[26] = v109 & 1;
                                v14 = 0x2A1A12000;
                                *&input[30] = 1024;
                                *&input[32] = v293;
                                *&input[36] = 2048;
                                *&input[38] = v112;
                                *&input[46] = 1024;
                                *&input[48] = v333;
                                LOWORD(v346) = 1024;
                                *(&v346 + 2) = dword_2A17A1BD0;
                                HIWORD(v346) = 1024;
                                v347 = word_2A17A1A72;
                                _os_log_impl(&dword_29D352000, v110, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d criticalValue=%d external_connected=%d UpSeconds=%llu cfd=%d cfd-voltage=%d batteryInfo.voltage=%d", input, 0x40u);
                                LOBYTE(v100) = v109;
                              }
                            }

                            if (v333)
                            {
                              v113 = UpSeconds();
                              if (v113 <= v333)
                              {
                                LOBYTE(v100) = v109;
                                if (!v54)
                                {
                                  goto LABEL_513;
                                }

                                v116 = word_2A17A1A72;
                                if (dword_2A17A1BD0 >= word_2A17A1A72)
                                {
                                  v120 = v113;
                                  v121 = logger;
                                  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *input = 136316162;
                                    *&input[4] = "updateThread";
                                    *&input[12] = 1024;
                                    *&input[14] = 3201;
                                    *&input[18] = 1024;
                                    *&input[20] = v54;
                                    *&input[24] = 2048;
                                    *&input[26] = v120;
                                    *&input[34] = 1024;
                                    *&input[36] = v116;
                                    _os_log_impl(&dword_29D352000, v121, OS_LOG_TYPE_DEFAULT, "%s:%d updatesDone=%d UpSeconds=%llu voltage=%d (low)", input, 0x28u);
                                  }

                                  v267 = 0;
                                  LOBYTE(v100) = 1;
                                  v14 = 0x2A1A12000;
                                  goto LABEL_260;
                                }

                                v14 = 0x2A1A12000;
                                if (v293)
                                {
LABEL_513:
                                  if (debug_polling & v109)
                                  {
                                    v117 = logger;
                                    v118 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                                    LOBYTE(v100) = v109;
                                    if (v118)
                                    {
                                      v119 = UpSeconds();
                                      *input = 136315906;
                                      *&input[4] = "updateThread";
                                      *&input[12] = 1024;
                                      *&input[14] = 3209;
                                      *&input[18] = 2048;
                                      *&input[20] = v119;
                                      *&input[28] = 1024;
                                      *&input[30] = v333;
                                      _os_log_impl(&dword_29D352000, v117, OS_LOG_TYPE_DEFAULT, "%s:%d UpSeconds=%llu (cfd = %u) forcing critical to 0", input, 0x22u);
                                      LOBYTE(v100) = v109;
                                    }
                                  }

                                  LOBYTE(v100) = v267 & v100;
                                  v267 = v267 << 31 >> 31;
                                }
                              }

                              else
                              {
                                if (debug_polling == 1)
                                {
                                  v114 = logger;
                                  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v115 = UpSeconds();
                                    *input = 136315906;
                                    *&input[4] = "updateThread";
                                    *&input[12] = 1024;
                                    *&input[14] = 3191;
                                    *&input[18] = 2048;
                                    *&input[20] = v115;
                                    *&input[28] = 1024;
                                    *&input[30] = v333;
                                    _os_log_impl(&dword_29D352000, v114, OS_LOG_TYPE_DEFAULT, "%s:%d deadline expired at UpSeconds=%llu (cfd = %u)", input, 0x22u);
                                  }
                                }

                                LOBYTE(v100) = v109;
                              }
                            }

LABEL_260:
                            v97 = v265;
                            if (!word_2A17A1BCC)
                            {
                              v320 = v267;
                              v122 = v100;
                              v123 = CFNumberCreate(allocator, kCFNumberIntType, &v320);
                              LOBYTE(v100) = v122;
                              *(buf | (8 * v269)) = v123;
                              *(v348 & 0xFFFFFFFFFFFFFFF7 | (8 * (v269++ & 1))) = @"SOCBasedShutdown";
                            }

                            if (debug_polling & v100)
                            {
                              v124 = logger;
                              v125 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                              LOBYTE(v100) = 1;
                              if (v125)
                              {
                                v126 = UpSeconds();
                                *input = 136316674;
                                *&input[4] = "updateThread";
                                *&input[12] = 1024;
                                *&input[14] = 3227;
                                *&input[18] = 1024;
                                *&input[20] = v54;
                                *&input[24] = 1024;
                                *&input[26] = 1;
                                *&input[30] = 1024;
                                *&input[32] = v293;
                                v14 = 0x2A1A12000;
                                *&input[36] = 2048;
                                *&input[38] = v126;
                                *&input[46] = 1024;
                                *&input[48] = word_2A17A1A72;
                                _os_log_impl(&dword_29D352000, v124, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d criticalValue=%d external_connected=%d UpSeconds=%llu batteryInfo.voltage=%d", input, 0x34u);
                                LOBYTE(v100) = 1;
                              }
                            }

LABEL_265:
                            if (!(v84 & 1 | (v298 != -1 && v298 < 50)) || (v281 > 2) | v100 & 1 || v53)
                            {
                              v268 = v100;
                              v281 = 0;
                              goto LABEL_272;
                            }

                            ++v281;
                            v2 = 0x2A17A1000uLL;
                            v127 = logger;
                            if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
                            {
                              *input = 0;
                              _os_log_impl(&dword_29D352000, v127, OS_LOG_TYPE_INFO, "flags update only", input, 2u);
                            }

                            v51 = 0;
                            v53 = 0;
                            v57 = v291;
                          }

                          else if ((getFWVersion(v291, &word_2A17A1A6E) & 0x80000000) != 0)
                          {
                            v51 = 0;
                            v54 = 0;
                            ++v53;
                            v57 = v291;
                          }

                          else
                          {
                            v102 = CFNumberCreate(allocator, kCFNumberIntType, &word_2A17A1A6E);
                            if (v102)
                            {
                              v103 = v102;
                              IORegistryEntrySetCFProperty(v5, @"GasGaugeFirmwareVersion", v102);
                              CFRelease(v103);
                            }

                            v104 = word_2A17A1A6E;
                            v105 = word_2A17A1A6E - 1281 < 2;
                            *v285 = word_2A17A1A6E > 0x131u;
                            if (v104 == 265)
                            {
                              v106 = logger;
                              v283 = 0;
                              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                              {
                                *input = 0;
                                _os_log_impl(&dword_29D352000, v106, OS_LOG_TYPE_DEFAULT, "gas gauge firmware 1.09: disabling critical battery shutdown", input, 2u);
                                v283 = 0;
                              }
                            }

                            LOBYTE(v279) = v279 | v105;
                            keys[0] = 0;
                            if ((readChargeTable(v291, keys) & 0x80000000) != 0)
                            {
                              v51 = 0;
                              v54 = 0;
                              ++v53;
                              v57 = v291;
                              v14 = 0x2A1A12000;
                            }

                            else
                            {
                              v14 = 0x2A1A12000;
                              if (keys[0])
                              {
                                *buf = keys[0];
                                v348[0] = @"ChargeTable";
                                v269 = 1;
                              }

                              else
                              {
                                v269 = 0;
                              }

                              if (dword_2A17A1B40)
                              {
                                v107 = dword_2A17A1B40;
                              }

                              else
                              {
                                v107 = 2;
                              }

                              Block = ggctl_readBlock(v291, -1, v107, updateThread_batteryInfo, 0);
                              if (Block < 0)
                              {
                                strcpy(updateThread_batteryInfo, "000000");
                              }

                              if (v276)
                              {
                                byte_2A17A1A70 = dword_2A17A1BE0;
                                if (dword_2A17A1BE0)
                                {
                                  LOBYTE(v276) = 1;
                                  goto LABEL_431;
                                }

                                v228 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                {
                                  *input = 67109376;
                                  *&input[8] = 1024;
                                  *&input[10] = Block;
                                  _os_log_error_impl(&dword_29D352000, v228, OS_LOG_TYPE_ERROR, "disabled passedCharge PCFF=%d err=%d", input, 0xEu);
                                }
                              }

                              LOBYTE(v276) = 0;
LABEL_431:
                              if (byte_2A17A1A8C == 1)
                              {
                                word_2A17A1A6C = 136;
                              }

                              if (hdqReadS16(v291, 60, &word_2A17A1A6A))
                              {
                                word_2A17A1A6A = 0;
                              }

                              if (!controlReadU16(v291, 8, &word_2A17A1A68))
                              {
                                v2 = 0x2A17A1000;
                                goto LABEL_202;
                              }

                              v268 = 0;
                              v97 = 0;
                              word_2A17A1A68 = 0;
LABEL_272:
                              v319 = v54 < 16;
                              *&buf[8 * v269] = CFNumberCreate(allocator, kCFNumberIntType, &v319);
                              v348[v269] = @"ForceFullGGUpdateOnBoot";
                              if (20 * v54 % 60)
                              {
                                v128 = 0;
                              }

                              else
                              {
                                v128 = v54 < 16;
                              }

                              if (v128)
                              {
                                v129 = 1;
                              }

                              else
                              {
                                HIDWORD(v130) = -1813430636 * v54 + 9544368;
                                LODWORD(v130) = HIDWORD(v130);
                                v129 = (v130 >> 4) < 0x123457;
                              }

                              v131 = debug_polling;
                              if (debug_polling == 1)
                              {
                                v132 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 136316418;
                                  *&input[4] = "updateThread";
                                  *&input[12] = 1024;
                                  *&input[14] = 3254;
                                  *&input[18] = 1024;
                                  *&input[20] = v54;
                                  *&input[24] = 1024;
                                  *&input[26] = v129;
                                  *&input[30] = 1024;
                                  *&input[32] = v128;
                                  *&input[36] = 1024;
                                  *&input[38] = v54 < 16;
                                  _os_log_impl(&dword_29D352000, v132, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d, fullUpdate=%d, bootFullUpdate=%d, forceFullUpdate=%d] ", input, 0x2Au);
                                  v131 = debug_polling;
                                }

                                else
                                {
                                  v131 = 1;
                                }
                              }

                              if (v54)
                              {
                                v133 = v129;
                              }

                              else
                              {
                                v133 = 0;
                              }

                              if ((v131 & 1) != 0 && v133)
                              {
                                statsAndLogs(notification[1], 1);
                              }

                              v14 = 0x2A1A12000;
                              v134 = v280;
                              if (!v97)
                              {
                                v140 = v285;
                                goto LABEL_416;
                              }

                              v264 = v133;
                              v266 = v129;
                              if (debug_polling == 1)
                              {
                                v135 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 136315650;
                                  *&input[4] = "updateThread";
                                  *&input[12] = 1024;
                                  *&input[14] = 3295;
                                  *&input[18] = 1024;
                                  *&input[20] = v54;
                                  _os_log_impl(&dword_29D352000, v135, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d POLLING THE BATTERY", input, 0x18u);
                                }
                              }

                              v136 = v269 + 1;
                              if (v54)
                              {
                                v137 = !v286;
                              }

                              else
                              {
                                v137 = 1;
                              }

                              if (v137 == 1)
                              {
                                if (v266)
                                {
                                  v138 = 18;
                                }

                                else
                                {
                                  v138 = 10;
                                }

                                BatteryData = readBatteryData(&updateThread_updates, v138, v291);
                                if (BatteryData == v138)
                                {
                                  calculateBatteryHealthMetric();
                                }

                                else
                                {
                                  v141 = BatteryData;
                                  v142 = logger;
                                  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *input = 67109376;
                                    *&input[4] = v138;
                                    *&input[8] = 1024;
                                    *&input[10] = v141;
                                    _os_log_impl(&dword_29D352000, v142, OS_LOG_TYPE_DEFAULT, "cannot read battery data count=%d (err=%d)", input, 0xEu);
                                  }

                                  calculateBatteryHealthMetric();
                                  if (v141)
                                  {
                                    goto LABEL_316;
                                  }
                                }
                              }

                              v143 = word_2A17A1A72;
                              v144 = word_2A17A1A7A;
                              if (word_2A17A1A7A)
                              {
                                v145 = 0;
                              }

                              else
                              {
                                v145 = word_2A17A1A72 == 3600;
                              }

                              v146 = word_2A17A1AA2;
                              if (v145 || word_2A17A1AA2 == 0xFFFF)
                              {
                                v151 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 67110144;
                                  *&input[4] = v146;
                                  *&input[8] = 1024;
                                  *&input[10] = word_2A17A1A7C;
                                  *&input[14] = 1024;
                                  *&input[16] = word_2A17A1A74;
                                  *&input[20] = 1024;
                                  *&input[22] = v143;
                                  *&input[26] = 1024;
                                  *&input[28] = v144;
                                  _os_log_impl(&dword_29D352000, v151, OS_LOG_TYPE_DEFAULT, "gas gauge reset detected (flags %#x capacity %d/%dmAh voltage %dmV current %dmA)", input, 0x20u);
                                }

LABEL_316:
                                LOBYTE(v152) = v137 ^ 1;
                                v153 = !v293;
                                v154 = 1;
                                goto LABEL_336;
                              }

                              if (!v54 && v334)
                              {
                                v334 = 0;
                                v147 = word_2A17A1A74;
                                v148 = 100 * (word_2A17A1A74 / 100) + 100;
                                v149 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 67110144;
                                  v150 = ((26215 * v148) >> 18) + ((26215 * v148) >> 31);
                                  *&input[8] = 1024;
                                  *&input[10] = v147;
                                  *&input[14] = 1024;
                                  *&input[16] = word_2A17A1A7C;
                                  *&input[20] = 1024;
                                  *&input[22] = v148;
                                  *&input[26] = 1024;
                                  *&input[28] = v150;
                                  _os_log_impl(&dword_29D352000, v149, OS_LOG_TYPE_DEFAULT, "mask real UPOState=%x FCC=%d RemCap=%d new FCC=%d new RemCap=%d", input, 0x20u);
                                }

                                else
                                {
                                  v150 = ((26215 * v148) >> 18) + ((26215 * v148) >> 31);
                                }

                                word_2A17A1A74 = v148;
                                word_2A17A1A7C = v150;
                              }

                              v152 = v137 ^ 1;
                              if ((v137 & 1) == 0)
                              {
                                v154 = 0;
                                v153 = !v293;
                                v157 = 1;
LABEL_333:
                                if (!v157)
                                {
                                  goto LABEL_336;
                                }

LABEL_334:
                                if (word_2A17A1A6E >= 0x501u)
                                {
                                  v318 = word_2A17A1A76;
                                  *&buf[8 * v136] = CFNumberCreate(allocator, kCFNumberIntType, &v318);
                                  v348[v136++] = @"NominalChargeCapacity";
                                }

                                goto LABEL_336;
                              }

                              if (v293)
                              {
                                v155 = 24;
                              }

                              else
                              {
                                v155 = 22;
                              }

                              S16 = hdqReadS16(v291, v155, &word_2A17A1A7E);
                              v157 = S16 == 0;
                              v154 = S16 != 0;
                              v158 = (v284 & 2) == 0 || S16 != 0;
                              v153 = !v293;
                              if ((v158 | !v293 | v152))
                              {
                                goto LABEL_333;
                              }

                              ChargerData = readChargerData(v279 & 1, v276 & 1, v291);
                              *&buf[8 * v136] = ChargerData;
                              if (!ChargerData)
                              {
                                v153 = 0;
                                v154 = 0;
                                if (!v157)
                                {
                                  goto LABEL_336;
                                }

                                goto LABEL_334;
                              }

                              if (v275)
                              {
                                CFShow(ChargerData);
                              }

                              v153 = 0;
                              v154 = 0;
                              v348[v136] = @"ChargerData";
                              v136 = v269 + 2;
                              if (v157)
                              {
                                goto LABEL_334;
                              }

LABEL_336:
                              if (debug_polling == 1)
                              {
                                v160 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 67109376;
                                  *&input[4] = dword_2A17A1BE8;
                                  *&input[8] = 1024;
                                  *&input[10] = dword_2A17A1C2C;
                                  _os_log_impl(&dword_29D352000, v160, OS_LOG_TYPE_DEFAULT, "determineVACVoltage, vacLevelCount=%d, vac95LevelCount=%d", input, 0xEu);
                                }
                              }

                              if (byte_2A17A1A8C == 1 && (v54 == 0 || v293))
                              {
                                v161 = dynamicATV(v291);
                                *&buf[8 * v136] = v161;
                                if (!v161)
                                {
                                  goto LABEL_351;
                                }

                                if (v275)
                                {
                                  CFShow(v161);
                                }

                                v162 = @"AppleDynamicATV";
                              }

                              else
                              {
                                if (!v273 || v54 != 0 && !v293)
                                {
                                  goto LABEL_351;
                                }

                                v163 = determineVACVoltage();
                                if (v163 == dword_2A17A1A90)
                                {
                                  goto LABEL_351;
                                }

                                v164 = v163;
                                dword_2A17A1A90 = v163;
                                v165 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 67109120;
                                  *&input[4] = v164;
                                  _os_log_impl(&dword_29D352000, v165, OS_LOG_TYPE_DEFAULT, "Added atvAbsMaxVoltageMV=%u to battery dict", input, 8u);
                                  v164 = dword_2A17A1A90;
                                }

                                v317 = v164;
                                *&buf[8 * v136] = CFNumberCreate(allocator, kCFNumberIntType, &v317);
                                v162 = @"atvAbsMaxVoltageMV";
                              }

                              v348[v136++] = v162;
LABEL_351:
                              if (v152 & 1 | v154 | (v284 >> 1) & 1 | v153)
                              {
                                v166 = allocator;
                              }

                              else
                              {
                                *input = 0;
                                keys[0] = 0;
                                v166 = allocator;
                                *input = CFNumberCreate(allocator, kCFNumberIntType, &dword_2A17A1A90);
                                keys[0] = @"ChargingVoltage";
                                *&buf[8 * v136] = CFDictionaryCreate(allocator, keys, input, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                                v348[v136++] = @"ChargerData";
                                CFRelease(*input);
                              }

                              if (dword_2A17A1C70)
                              {
                                v167 = determinePoSMThreshold();
                                if (v167 != dword_2A17A1A98)
                                {
                                  dword_2A17A1A98 = v167;
                                }

                                *input = HIWORD(v167);
                                LODWORD(keys[0]) = v167;
                                if (v167 == 0xFFFF || HIWORD(v167) == 0xFFFF)
                                {
                                  v169 = 0;
                                }

                                else
                                {
                                  v169 = dword_2A17A1C70;
                                }

                                *v338 = v169;
                                *&buf[8 * v136] = CFNumberCreate(v166, kCFNumberIntType, v338);
                                v348[v136] = @"PoSMEnabled";
                                v170 = CFNumberCreate(v166, kCFNumberIntType, input);
                                v171 = 8 * v136 + 8;
                                *&buf[v171] = v170;
                                *(v348 + v171) = @"PoSMUpperThreshold";
                                v172 = CFNumberCreate(v166, kCFNumberIntType, keys);
                                v174 = 8 * v136 + 16;
                                *&buf[v174] = v172;
                                *(v348 + v174) = @"PoSMLowerThreshold";
                                v175 = v136 + 3;
                              }

                              else
                              {
                                *input = 0;
                                *&buf[8 * v136] = CFNumberCreate(v166, kCFNumberIntType, input);
                                v348[v136] = @"PoSMEnabled";
                                v175 = v136 + 1;
                              }

                              if (v152 & 1 | (v154 || (v284 & 1) == 0))
                              {
                                if (v154)
                                {
                                  goto LABEL_378;
                                }
                              }

                              else if (hdqReadU16(v291, 110, &word_2A17A1A80))
                              {
LABEL_378:
                                v206 = 0;
                                v2 = 0x2A17A1000uLL;
                                v205 = v268;
                                goto LABEL_379;
                              }

                              v316 = 10 * word_2A17A1A78 - 27320;
                              v176 = 8 * v175;
                              *&buf[8 * v175] = CFNumberCreate(v166, kCFNumberIntType, &v316);
                              v348[v175] = @"Temperature";
                              v315 = word_2A17A1A7A;
                              v177 = CFNumberCreate(v166, kCFNumberIntType, &v315);
                              v178 = 8 * v175 + 8;
                              *&buf[v178] = v177;
                              *(v348 + v178) = @"Amperage";
                              v314 = word_2A17A1A72;
                              v179 = CFNumberCreate(v166, kCFNumberIntType, &v314);
                              v180 = 8 * v175 + 16;
                              *&buf[v180] = v179;
                              *(v348 + v180) = @"Voltage";
                              v313 = word_2A17A1A7E;
                              v181 = CFNumberCreate(v166, kCFNumberIntType, &v313);
                              v182 = 8 * v175 + 24;
                              *&buf[v182] = v181;
                              *(v348 + v182) = @"TimeRemaining";
                              v298 = word_2A17A1A7C;
                              v312 = word_2A17A1A7C;
                              v183 = CFNumberCreate(v166, kCFNumberIntType, &v312);
                              v184 = 8 * v175 + 32;
                              *&buf[v184] = v183;
                              *(v348 + v184) = @"CurrentCapacity";
                              v311 = word_2A17A1A74;
                              v185 = CFNumberCreate(v166, kCFNumberIntType, &v311);
                              v186 = 8 * v175 + 40;
                              *&buf[v186] = v185;
                              *(v348 + v186) = @"MaxCapacity";
                              HIWORD(v187) = -18304;
                              LOWORD(v187) = word_2A17A1A9E;
                              *input = llroundf(((word_2A17A1A82 * -0.000061035) + 1.0) * v187);
                              v188 = CFNumberCreate(v166, kCFNumberIntType, input);
                              v189 = 8 * v175 + 48;
                              *&buf[v189] = v188;
                              *(v348 + v189) = @"AbsoluteCapacity";
                              v190 = v296;
                              if ((v268 & 1) == 0)
                              {
                                v190 = v282;
                              }

                              v191 = v176 + 56;
                              *&buf[v191] = v190;
                              *(v348 + v191) = @"AtCriticalLevel";
                              v310 = word_2A17A1AA2;
                              v192 = CFNumberCreate(v166, kCFNumberIntType, &v310);
                              v193 = v176 + 64;
                              *&buf[v193] = v192;
                              *(v348 + v193) = @"AppleRawBatteryFlags";
                              v194 = v166;
                              v195 = v175 + 9;
                              if (v284)
                              {
                                v309 = word_2A17A1A80;
                                *&buf[8 * v195] = CFNumberCreate(v194, kCFNumberIntType, &v309);
                                v348[v195] = @"ITMiscStatus";
                                v308 = word_2A17A1A80 & 3;
                                v196 = CFNumberCreate(v194, kCFNumberIntType, &v308);
                                v197 = v176 + 80;
                                *&buf[v197] = v196;
                                *(v348 + v197) = @"ITSimulationCounter";
                                v307 = (word_2A17A1A80 >> 2) & 3;
                                v198 = CFNumberCreate(v194, kCFNumberIntType, &v307);
                                v199 = v176 + 88;
                                *&buf[v199] = v198;
                                *(v348 + v199) = @"RaUpdateCounter";
                                v195 = v175 + 12;
                              }

                              v306 = word_2A17A1AA2 & 0x80;
                              *&buf[8 * v195] = CFNumberCreate(v194, kCFNumberIntType, &v306);
                              v348[v195] = @"OCVTakenFlag";
                              v305 = word_2A17A1AA2 & 0x200;
                              v200 = CFNumberCreate(v194, kCFNumberIntType, &v305);
                              v201 = 8 * v195 + 8;
                              *&buf[v201] = v200;
                              *(v348 + v201) = @"FCFlag";
                              v175 = v195 + 2;
                              v2 = 0x2A17A1000;
                              if (v266)
                              {
                                v304 = word_2A17A1A9C;
                                *&buf[8 * v175] = CFNumberCreate(v194, kCFNumberIntType, &v304);
                                v348[v175] = @"CycleCount";
                                v303 = word_2A17A1A6A;
                                v202 = CFNumberCreate(v194, kCFNumberIntType, &v303);
                                v203 = 8 * v195 + 24;
                                *&buf[v203] = v202;
                                *(v348 + v203) = @"DesignCapacity";
                                v175 = v195 + 4;
                                v204 = parseBatteryData(v284 & 1, v271);
                                *&buf[8 * v195 + 32] = v204;
                                if (v204)
                                {
                                  if (v275)
                                  {
                                    CFShow(v204);
                                  }

                                  v348[v175] = @"BatteryData";
                                  v175 = v195 + 5;
                                }
                              }

                              v205 = v268;
                              v206 = 1;
                              v166 = allocator;
LABEL_379:
                              if (v278 && (updateThread_oneTime & 1) == 0)
                              {
                                v344 = 0u;
                                memset(input, 0, sizeof(input));
                                *keys = 0u;
                                v343 = 0u;
                                ggctl_logShutdownReason(v291, input, 1u);
                                if (v207 || !*&input[40])
                                {
                                  v210 = *(v2 + 2048);
                                  if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v338 = 136315394;
                                    v339 = "updateThread";
                                    v340 = 1024;
                                    v341 = 3577;
                                    _os_log_impl(&dword_29D352000, v210, OS_LOG_TYPE_DEFAULT, "%s:%d  Error Reading Shutdown reason", v338, 0x12u);
                                  }
                                }

                                else
                                {
                                  ggctl_logShutdownReason2(v291, keys, 1u);
                                  v208 = parseShutdownReason(input, keys, v291);
                                  if (v208)
                                  {
                                    v209 = v208;
                                    if (v275)
                                    {
                                      CFShow(v208);
                                    }

                                    *&buf[8 * v175] = v209;
                                    v348[v175++] = @"BatteryShutdownReason";
                                  }

                                  memset(input, 0, sizeof(input));
                                  ggctl_logShutdownReason(v291, input, 0);
                                  *keys = 0u;
                                  v343 = 0u;
                                  v344 = 0u;
                                  ggctl_logShutdownReason2(v291, keys, 0);
                                }

                                updateThread_oneTime = 1;
                                v205 = v268;
                              }

                              if (v205)
                              {
                                readIMAXAndSOCSmoothData(xmmword_2A17A1B06, v173, v291);
                                v166 = allocator;
                                logBatteryDiagnosticData(updateThread_batteryInfo, v291, v278 != 0);
                              }

                              if (v206)
                              {
                                v211 = CFDictionaryCreate(v166, v348, buf, v175, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                                if (v211)
                                {
                                  v212 = v211;
                                  if (v275)
                                  {
                                    CFShow(v211);
                                  }

                                  if (debug_polling == 1)
                                  {
                                    v213 = logger;
                                    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *input = 136315650;
                                      *&input[4] = "updateThread";
                                      *&input[12] = 1024;
                                      *&input[14] = 3600;
                                      *&input[18] = 1024;
                                      *&input[20] = v54;
                                      _os_log_impl(&dword_29D352000, v213, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d PUBLISHING BATTERY data", input, 0x18u);
                                    }
                                  }

                                  v214 = IORegistryEntrySetCFProperties(v5, v212);
                                  LOBYTE(v206) = v214 == 0;
                                  if (v214)
                                  {
                                    v215 = v214;
                                    v216 = logger;
                                    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                    {
                                      *input = 67109120;
                                      *&input[4] = v215;
                                      _os_log_error_impl(&dword_29D352000, v216, OS_LOG_TYPE_ERROR, "IORegistryEntrySetCFProperties(0x%x)", input, 8u);
                                    }
                                  }

                                  CFRelease(v212);
                                  ++debug_cnt_ut_sent;
                                  v2 = 0x2A17A1000;
                                }

                                else
                                {
                                  v217 = *(v2 + 2048);
                                  if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
                                  {
                                    *input = 136315650;
                                    *&input[4] = "updateThread";
                                    *&input[12] = 1024;
                                    *&input[14] = 3608;
                                    *&input[18] = 1024;
                                    *&input[20] = v54;
                                    _os_log_error_impl(&dword_29D352000, v217, OS_LOG_TYPE_ERROR, "%s:%d  updatesDone=%d dictionary failed", input, 0x18u);
                                  }

                                  LOBYTE(v206) = 1;
                                }
                              }

                              v218 = v175 + 1;
                              v219 = &buf[8 * v175 - 8];
                              do
                              {
                                v220 = *v219--;
                                CFRelease(v220);
                                --v218;
                              }

                              while (v218 > 1);
                              v14 = 0x2A1A12000uLL;
                              if ((v206 & 1) == 0)
                              {
                                v140 = v285;
                                v134 = v280;
LABEL_416:
                                if (*v140 && *(v134 + 4))
                                {
                                  ++*(v134 + 28);
                                }

                                v51 = 0;
                                ++debug_cnt_ut_err;
                                ++v53;
                                goto LABEL_420;
                              }

                              if (!v286)
                              {
                                if (word_2A17A1A6E < 0x132u)
                                {
                                  goto LABEL_494;
                                }

                                if (v272)
                                {
                                  v224 = time(0);
                                  if (v224 < v270)
                                  {
                                    v225 = *(v2 + 2048);
                                    if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *input = 134217984;
                                      *&input[4] = v270;
                                      v226 = v225;
                                      v227 = "CCA: wait for deadline now=%lu";
                                      goto LABEL_426;
                                    }

                                    goto LABEL_457;
                                  }

                                  v229 = v224;
                                  if (word_2A17A1A6E >= 0x600u)
                                  {
                                    v230 = word_2A17A1AA2;
                                    v231 = logger;
                                    v232 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                                    if ((v230 & 0x20) == 0)
                                    {
                                      if (v232)
                                      {
                                        *input = 67109376;
                                        *&input[4] = v54;
                                        *&input[8] = 2048;
                                        *&input[10] = v229;
                                        v233 = v231;
                                        v234 = "CCA: re-enable DLOG updatesDone=%u, now=%lu";
                                        goto LABEL_453;
                                      }

                                      goto LABEL_454;
                                    }

                                    if (!v232)
                                    {
                                      goto LABEL_457;
                                    }

LABEL_449:
                                    *input = 134217984;
                                    *&input[4] = v229;
                                    v226 = v231;
                                    v227 = "CCA: GasGauge still calibrating now=%lu";
LABEL_426:
                                    _os_log_impl(&dword_29D352000, v226, OS_LOG_TYPE_DEFAULT, v227, input, 0xCu);
LABEL_457:
                                    v240 = 1;
LABEL_458:
                                    if (v274)
                                    {
                                      if (*(v280 + 4))
                                      {
                                        goto LABEL_465;
                                      }

                                      v241 = logger;
                                      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v242 = *(v280 + 4);
                                        *input = 67109120;
                                        *&input[4] = v242;
                                        _os_log_impl(&dword_29D352000, v241, OS_LOG_TYPE_DEFAULT, "disabling DLOG (num_clients=%i)", input, 8u);
                                      }

                                      v243 = controlReadS16(v291, 25, 0);
                                      if (v243)
                                      {
                                        v244 = v243;
                                        v245 = logger;
                                        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                        {
                                          *input = 67109120;
                                          *&input[4] = v244;
                                          _os_log_error_impl(&dword_29D352000, v245, OS_LOG_TYPE_ERROR, "cannot disable DLOG (%#x)", input, 8u);
                                        }

LABEL_465:
                                        v246 = 1;
                                      }

                                      else
                                      {
                                        v246 = 0;
                                        *(v280 + 24) = 0;
                                        *(v280 + 16) = 0;
                                        *(v280 + 8) = 0;
                                      }
                                    }

                                    else
                                    {
                                      v246 = 0;
                                    }

                                    if (*(v280 + 4))
                                    {
                                      v247 = v240;
                                    }

                                    else
                                    {
                                      v247 = 1;
                                    }

                                    if ((v247 & 1) == 0)
                                    {
                                      if (!v54 || v246 != 1)
                                      {
                                        v248 = logger;
                                        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v249 = *(v280 + 4);
                                          *input = 67109376;
                                          *&input[4] = v54;
                                          *&input[8] = 1024;
                                          *&input[10] = v249;
                                          _os_log_impl(&dword_29D352000, v248, OS_LOG_TYPE_DEFAULT, "gathering data log updatesDone=%d num_clients=%d", input, 0xEu);
                                        }
                                      }

                                      if ((*(v280 + 4) & 0x80000000) != 0 && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                      {
                                        updateThread_cold_7(&v301, v302);
                                      }

                                      if (drainDataLog(v291))
                                      {
                                        v250 = logger;
                                        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                        {
                                          updateThread_cold_8(v336, v337, v250);
                                        }
                                      }

                                      v246 = 1;
                                    }

                                    if (v240)
                                    {
                                      v251 = 1;
                                    }

                                    else if (word_2A17A1A6E < 0x600u)
                                    {
                                      v251 = word_2A17A1A6E > 0x501u && v264;
                                    }

                                    else
                                    {
                                      v251 = (word_2A17A1AA2 >> 5) & 1;
                                    }

                                    v272 = v251;
                                    v274 = v246;
                                    if ((v246 & v251) != 1)
                                    {
                                      goto LABEL_493;
                                    }

                                    v252 = controlReadS16(v291, 25, 0);
                                    if (!v252)
                                    {
                                      *(v280 + 16) = 0;
                                      *(v280 + 8) = 0;
                                      v270 = time(0) + 20;
                                      v261 = logger;
                                      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *input = 67109376;
                                        *&input[4] = v54;
                                        *&input[8] = 2048;
                                        *&input[10] = v270;
                                        _os_log_impl(&dword_29D352000, v261, OS_LOG_TYPE_DEFAULT, "CCA: disabled DLOG updatesDone=%d ccaDeadline=%lu", input, 0x12u);
                                      }

                                      v274 = 0;
                                      v272 = 1;
                                      goto LABEL_493;
                                    }

                                    v253 = v252;
                                    v254 = logger;
                                    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                    {
                                      *input = 67109120;
                                      *&input[4] = v253;
                                      _os_log_error_impl(&dword_29D352000, v254, OS_LOG_TYPE_ERROR, "CCA: cannot disable DLOG (%#x)", input, 8u);
                                    }

                                    v272 = 0;
                                    goto LABEL_492;
                                  }

                                  LOWORD(keys[0]) = 0;
                                  U16 = controlReadU16(v291, 0, keys);
                                  if (U16)
                                  {
                                    v236 = U16;
                                    v237 = logger;
                                    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                    {
                                      *input = 67109120;
                                      *&input[4] = v236;
                                      _os_log_error_impl(&dword_29D352000, v237, OS_LOG_TYPE_ERROR, "CCA: cannot read DLOG status (%#x)", input, 8u);
                                    }

                                    goto LABEL_457;
                                  }

                                  v238 = keys[0];
                                  v231 = logger;
                                  v239 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                                  if ((v238 & 0x800) != 0)
                                  {
                                    if (!v239)
                                    {
                                      goto LABEL_457;
                                    }

                                    goto LABEL_449;
                                  }

                                  if (v239)
                                  {
                                    *input = 67109376;
                                    *&input[4] = v54;
                                    *&input[8] = 2048;
                                    *&input[10] = v229;
                                    v233 = v231;
                                    v234 = "CCA: re-enable DLOG updatesDone=%d, now=%lu";
LABEL_453:
                                    _os_log_impl(&dword_29D352000, v233, OS_LOG_TYPE_DEFAULT, v234, input, 0x12u);
                                  }

LABEL_454:
                                  v270 = 0;
                                }

                                v240 = 0;
                                goto LABEL_458;
                              }

                              if ((v274 & 1) == 0)
                              {
                                v274 = 0;
                                goto LABEL_494;
                              }

                              v221 = controlReadS16(v291, 25, 0);
                              if (v221)
                              {
                                v222 = v221;
                                v223 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                {
                                  *input = 67109120;
                                  *&input[4] = v222;
                                  _os_log_error_impl(&dword_29D352000, v223, OS_LOG_TYPE_ERROR, "CCA: usermode cannot disable DLOG (%#x)", input, 8u);
                                }

LABEL_492:
                                v274 = 1;
                                goto LABEL_493;
                              }

                              v274 = 0;
                              *(v280 + 24) = 0;
                              *(v280 + 16) = 0;
                              *(v280 + 8) = 0;
LABEL_493:
                              v2 = 0x2A17A1000uLL;
LABEL_494:
                              if (!gRestrictLogMessagesCounter)
                              {
                                goto LABEL_501;
                              }

                              gRestrictLogMessagesCounter = 0;
                              v255 = *(v2 + 2048);
                              v256 = os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT);
                              if (v56 == 0.0)
                              {
                                if (!v256)
                                {
                                  goto LABEL_501;
                                }

                                *input = 0;
                                v257 = v255;
                                v258 = "gasgauge success after previous failure";
                                v259 = 2;
                              }

                              else
                              {
                                if (!v256)
                                {
                                  goto LABEL_501;
                                }

                                v260 = CFAbsoluteTimeGetCurrent();
                                *input = 134217984;
                                *&input[4] = v260 - v56;
                                v257 = v255;
                                v258 = "gasgauge success after previous %gs failure";
                                v259 = 12;
                              }

                              _os_log_impl(&dword_29D352000, v257, OS_LOG_TYPE_DEFAULT, v258, input, v259);
LABEL_501:
                              v56 = CFAbsoluteTimeGetCurrent();
                              v51 = 0;
                              v53 = 0;
                              word_2A17A1B26 = word_2A17A1A72;
                              word_2A17A1B28 = word_2A17A1A7A;
                              dword_2A17A1B2A = *&word_2A17A1A74;
                              word_2A17A1B2E = word_2A17A1A7C;
                              ++v54;
                              v57 = v291;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      v86 = CFPreferencesCopyValue(@"ResetEnabled", @"com.apple.gasgauge", v289, v288);
                      v87 = os_log_type_enabled(*(v2 + 2048), OS_LOG_TYPE_ERROR);
                      if (v86 == v282)
                      {
                        v88 = v291;
                        if (v87)
                        {
                          updateThread_cold_6(&v325, v326);
                        }
                      }

                      else
                      {
                        if (v87)
                        {
                          updateThread_cold_5(&v323, v324);
                        }

                        v88 = v291;
                        ggctl_reset(v291, 1u);
                      }

                      v51 = 0;
                      ++v53;
                      v57 = v88;
                    }
                  }
                }
              }

              else
              {
                v51 = 0;
                v57 = -1;
              }
            }
          }
        }
      }

      v283 = 1;
      goto LABEL_30;
    }

    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      updateThread_cold_10();
    }
  }

  return 0;
}

void *GGHIDPlugInFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 5u, 0x16u, 0xB5u, 0x63u, 0xB1u, 0x5Bu, 0x11u, 0xDAu, 0x96u, 0xEBu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = calloc(1uLL, 0x98uLL);
  *v4 = &GGHID_IOCFPlugInInterface;
  v4[1] = v4;
  v4[2] = &GGHID_IOHIDServiceInterface2;
  v4[3] = v4;
  v5 = *MEMORY[0x29EDB8EF0];
  v6 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0xABu, 0x58u, 0xEBu, 0x3Eu, 0xA7u, 0x74u, 0x4Fu, 0xCCu, 0xA1u, 0x1Au, 0x5Au, 0xCDu, 0x74u, 0xE7u, 0xDAu, 0x17u);
  v4[4] = CFRetain(v6);
  v7 = CFUUIDGetConstantUUIDWithBytes(v5, 0xABu, 0x58u, 0xEBu, 0x3Eu, 0xA7u, 0x74u, 0x4Fu, 0xCCu, 0xA1u, 0x1Au, 0x5Au, 0xCDu, 0x74u, 0xE7u, 0xDAu, 0x17u);
  CFPlugInAddInstanceForFactory(v7);
  v4[5] = 1;
  v4[6] = 0;
  v11 = 5;
  valuePtr = 65280;
  v8 = *MEMORY[0x29EDB8ED8];
  v4[7] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  v4[8] = CFNumberCreate(v8, kCFNumberSInt32Type, &v11);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  if (!clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp))
  {
    v4[16] = __tp.tv_nsec / 1000 + 1000000 * __tp.tv_sec;
  }

  return v4;
}

double ggctl_logShutdownDLog(mach_port_t a1, uint64_t a2, unsigned int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v9 = 40;
  if (a3)
  {
    if (!a2)
    {
      return result;
    }

    v12 = 0;
    outputStruct = 0u;
    v11 = 0u;
    v7 = a3;
    v4 = IOConnectCallMethod(a1, 0x12u, &v7, 1u, 0, 0, 0, 0, &outputStruct, &v9);
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v12 = 0;
    outputStruct = 0u;
    v11 = 0u;
    input = a3;
    v4 = IOConnectCallMethod(a1, 0x12u, &input, 1u, 0, 0, 0, 0, &outputStruct, &v9);
  }

  if (!v4)
  {
    result = *&outputStruct;
    v6 = v11;
    *a2 = outputStruct;
    *(a2 + 16) = v6;
    *(a2 + 32) = v12;
  }

  return result;
}

uint64_t getSInt32ForKey(CFStringRef key, _DWORD *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(service, key, *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v4 = CFProperty;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      Value = CFNumberGetValue(v4, kCFNumberSInt32Type, a2);
      CFRelease(v4);
      if (Value)
      {
        return 0;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  result = 0xFFFFFFFFLL;
  *a2 = -1;
  return result;
}

void setUPOData(const __CFString *a1, int a2)
{
  v14 = a2;
  v3 = IOServiceMatching("IOService");
  if (v3)
  {
    v4 = v3;
    valuePtr = 0;
    v5 = *MEMORY[0x29EDB8ED8];
    v12 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
    v6 = CFDictionaryCreate(v5, &setUPOData_tmp, &v12, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(v4, @"IOPropertyMatch", v6);
      CFRelease(v7);
      MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v4);
      if (!MatchingService)
      {
        return;
      }

      v9 = MatchingService;
      v10 = CFNumberCreate(v5, kCFNumberSInt32Type, &v14);
      IORegistryEntrySetCFProperty(v9, a1, v10);
      IOObjectRelease(v9);
      v11 = v10;
    }

    else
    {
      v11 = v4;
    }

    CFRelease(v11);
  }
}

uint64_t ggctl_logShutdownReason2(uint64_t result, _OWORD *a2, unsigned int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 48;
  if (a2)
  {
    if (a3)
    {
      v10 = 0u;
      v11 = 0u;
      outputStruct = 0u;
      input = a3;
      result = IOConnectCallMethod(result, 0x13u, &input, 1u, inputStruct, 0x30uLL, 0, 0, &outputStruct, &v8);
      if (!result)
      {
        v4 = v10;
        *a2 = outputStruct;
        a2[1] = v4;
        a2[2] = v11;
      }
    }

    else
    {
      v5 = a2[1];
      inputStruct[0] = *a2;
      inputStruct[1] = v5;
      inputStruct[2] = a2[2];
      v7 = a3;
      return IOConnectCallMethod(result, 0x13u, &v7, 1u, inputStruct, 0x30uLL, 0, 0, &outputStruct, &v8);
    }
  }

  return result;
}

uint64_t iokit_callback(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = a3;
  *(result + 8) = a4;
  return result;
}

void getUPOData(CFStringRef key, void *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = find_pmu_pmu_service;
  v5 = MEMORY[0x29EDB8ED8];
  if (find_pmu_pmu_service)
  {
    goto LABEL_7;
  }

  v6 = IOServiceMatching("IOService");
  if (v6)
  {
    v7 = v6;
    v15 = 0;
    v8 = *v5;
    find_pmu_zero_number = CFNumberCreate(*v5, kCFNumberSInt32Type, &v15);
    v9 = CFDictionaryCreate(v8, &find_pmu_tmp, &find_pmu_zero_number, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(v7, @"IOPropertyMatch", v9);
      CFRelease(v10);
      find_pmu_pmu_service = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v7);
    }

    else
    {
      CFRelease(v7);
    }
  }

  v4 = find_pmu_pmu_service;
  if (find_pmu_pmu_service)
  {
LABEL_7:
    CFProperty = IORegistryEntryCreateCFProperty(v4, key, *v5, 0);
    if (CFProperty)
    {
      v12 = CFProperty;
      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(v12) || !CFNumberGetValue(v12, kCFNumberSInt32Type, a2))
      {
        v14 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315394;
          v16 = "/Library/Caches/com.apple.xbs/Sources/AppleHDQGasGauge/AppleHDQGasGauge.c";
          v17 = 1024;
          v18 = 2348;
          _os_log_impl(&dword_29D352000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d cannot read upo data", &v15, 0x12u);
        }
      }

      CFRelease(v12);
    }
  }
}

void updateThermalCoolDownState(io_registry_entry_t a1, int a2)
{
  keys[1] = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  keys[0] = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "ThermalCoolDown", 0x8000100u);
  v5 = MEMORY[0x29EDB8F00];
  if (!a2)
  {
    v5 = MEMORY[0x29EDB8EF8];
  }

  values = *v5;
  v6 = CFDictionaryCreate(v4, keys, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v6)
  {
    v7 = v6;
    IORegistryEntrySetCFProperties(a1, v6);
    CFRelease(v7);
  }

  else if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    updateThermalCoolDownState_cold_1();
  }
}

void statsAndLogs(io_registry_entry_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v12 = 0;
  cf = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  keys = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "stats", 0x8000100u);
  v5 = *MEMORY[0x29EDB8EF8];
  values = *MEMORY[0x29EDB8EF8];
  if (a2)
  {
    v12 = CFStringCreateWithCString(v4, "log", 0x8000100u);
    cf = v5;
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = CFDictionaryCreate(v4, &keys, &values, v6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v7)
  {
    v8 = v7;
    if (IORegistryEntrySetCFProperties(a1, v7) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      statsAndLogs_cold_1();
    }

    CFRelease(v8);
    CFRelease(values);
    if (a2)
    {
      CFRelease(cf);
    }
  }

  else if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    statsAndLogs_cold_2();
  }
}

void debugLog(io_registry_entry_t a1, int a2)
{
  keys[1] = *MEMORY[0x29EDCA608];
  valuePtr = a2;
  v3 = *MEMORY[0x29EDB8ED8];
  keys[0] = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "debug", 0x8000100u);
  values = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
  v4 = CFDictionaryCreate(v3, keys, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v4)
  {
    v5 = v4;
    if (IORegistryEntrySetCFProperties(a1, v4))
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        debugLog_cold_1();
      }
    }

    CFRelease(v5);
    CFRelease(values);
  }

  else if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    debugLog_cold_2();
  }
}

uint64_t readChargeTable(mach_port_t a1, __CFData **a2)
{
  *&v45[26] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  if (!dword_2A17A1B44)
  {
    return 0;
  }

  v3 = 0xFFFFFFFFLL;
  if (!ggctl_readBlock(a1, -1, dword_2A17A1B44, &outputStruct, 0))
  {
    v4 = v43;
    if (v43 != 255)
    {
      v5 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v35 = v4;
        v6 = "gas gauge charge table invalid type: %#x";
        v7 = v5;
        v8 = 8;
LABEL_14:
        _os_log_impl(&dword_29D352000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
        return 0;
      }

      return 0;
    }

    v9 = outputStruct;
    v10 = outputStruct >> 4;
    v11 = 6 * v10 + 4;
    if (outputStruct > 0x4Fu)
    {
      v12 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v35 = v10;
        v36 = 1024;
        v37 = 6 * v10 + 4;
        v6 = "gas gauge charge table inconsistent: %d data entries, %d bytes";
        v7 = v12;
        v8 = 14;
        goto LABEL_14;
      }

      return 0;
    }

    v13 = 0;
    v33 = v42;
    p_outputStruct = &outputStruct;
    do
    {
      v15 = *p_outputStruct++;
      v13 += v15;
      --v11;
    }

    while (v11);
    v16 = v13;
    if (v13)
    {
      v17 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v35 = v16;
        v36 = 1024;
        v37 = v41;
        v38 = 1024;
        v39 = 256 - (v16 - v41);
        v6 = "gas gauge charge table bad checksum: checksum %#x checksum byte %#x expecting %#x";
        v7 = v17;
        v8 = 20;
        goto LABEL_14;
      }

      return 0;
    }

    v32 = v42 >> 4;
    v19 = 4 * v32 + 8;
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], v19 * v10);
    CFDataSetLength(Mutable, v19 * v10);
    if (v9 >= 0x10)
    {
      v21 = 0;
      v22 = v45;
      v23 = 10;
      do
      {
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        v25 = &MutableBytePtr[v21 * v19];
        v26 = &v44[6 * v21];
        *v25 = 100 * *v26;
        *(v25 + 1) = 100 * v26[1];
        *(v25 + 1) = v32;
        if (v33 >= 0x10)
        {
          v27 = &MutableBytePtr[v23];
          v28 = v22;
          v29 = v32;
          do
          {
            if (v29 == 1)
            {
              LOWORD(v30) = -1;
            }

            else
            {
              v30 = updateThread_batteryInfo[(*v28 & 0xF) + 64];
            }

            *(v27 - 1) = v30;
            v31 = *v28++;
            *v27 = *(&updateThread_batteryInfo[80] + ((v31 >> 2) & 0x3C));
            v27 += 4;
            --v29;
          }

          while (v29);
        }

        ++v21;
        v22 += 6;
        v23 += v19;
      }

      while (v21 != v10);
    }

    v3 = 0;
    *a2 = Mutable;
  }

  return v3;
}

uint64_t readRemainingCapacity__(_WORD *a1, int *a2, mach_port_t a3)
{
  v8 = 0;
  if ((getFWVersion(a3, &v8) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v8 <= 0x118u)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 50;
  }

  return hdqReadS16(a3, v6, a1);
}

uint64_t readFAC__(_WORD *a1, uint64_t a2, mach_port_t a3)
{
  v6 = 0;
  if ((getFWVersion(a3, &v6) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 == 1536)
  {
    return 0;
  }

  return hdqReadU16(a3, 14, a1);
}

uint64_t readBatteryData(uint64_t a1, uint64_t a2, mach_port_t a3)
{
  v10 = 0;
  if ((getFWVersion(a3, &v10) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 >= 1)
  {
    v6 = 0;
    v7 = v10;
    while (1)
    {
      if (*(a1 + 4) == -1)
      {
        return v6;
      }

      if (registerName(a1, v7))
      {
        Register = readRegister(*(a1 + 56), a1, a3);
        if ((Register & 0x80000000) != 0)
        {
          break;
        }
      }

      ++v6;
      a1 += 80;
      if (a2 == v6)
      {
        return a2;
      }
    }

    return Register;
  }

  return a2;
}

void calculateBatteryHealthMetric()
{
  if (word_2A17A1A6E >= 0x600u)
  {
    v0 = (bswap32(word_2A17A1AE8) >> 16) * 0.137995 + (bswap32(word_2A17A1AE6) >> 16) * 0.0693069 + (bswap32(word_2A17A1AEA) >> 16) * 0.137376 + (bswap32(word_2A17A1AEC) >> 16) * 0.137376 + (bswap32(word_2A17A1AEE) >> 16) * 0.137376 + (bswap32(word_2A17A1AF0) >> 16) * 0.137376 + (bswap32(word_2A17A1AF2) >> 16) * 0.137376 + (bswap32(word_2A17A1AF4) >> 16) * 0.0872525 + (bswap32(word_2A17A1AF6) >> 16) * 0.0185644;
    word_2A17A1B3C = v0;
    v1 = &dword_2A17A180C;
    v2 = 17;
    while (*(v1 - 2) != word_2A17A1A68)
    {
      v1 += 2;
      if (!--v2)
      {
        v3 = 0.0;
        goto LABEL_7;
      }
    }

    v3 = *v1;
LABEL_7:
    v4 = (v3 * v0) / 1000.0;
    word_2A17A1B3E = v4;
    if (dword_2A17A1B38 < v4)
    {
      dword_2A17A1B38 = v4;
      setUPOData(@"IOPMUBootBatteryHealthMetric", v4);
    }
  }
}

CFDictionaryRef readChargerData(int a1, int a2, mach_port_t a3)
{
  v27[6] = *MEMORY[0x29EDCA608];
  if (readBatteryData(&readChargerData_chargerRegs, 5, a3) != 5)
  {
    return 0;
  }

  v6 = v25;
  v7 = v27;
  memset(v27, 0, 48);
  memset(v25, 0, sizeof(v25));
  v8 = *MEMORY[0x29EDB8ED8];
  values[0] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt8Type, &readChargerData_notChargingReason);
  keys[0] = @"NotChargingReason";
  values[1] = CFNumberCreate(v8, kCFNumberSInt8Type, &readChargerData_chargerAlert);
  keys[1] = @"ChargerAlert";
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a2 && (readChargerData_notChargingReason & 0x10) != 0)
  {
    LOWORD(v23) = 0;
    if ((hdqReadU16(a3, 52, &v23) & 0x80000000) != 0)
    {
      goto LABEL_7;
    }

    v9 = 1717986919 * byte_2A17A1A70 * word_2A17A1A6A;
    if (((v9 >> 34) + (v9 >> 63)) <= v23)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = 2;
    goto LABEL_11;
  }

  if ((readChargerData_notChargingReason & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v6 = &v25[1];
  v7 = &v27[1];
  v27[0] = *MEMORY[0x29EDB8F00];
  v25[0] = @"ChargerTimeout";
  v10 = 3;
LABEL_11:
  if ((readChargerData_notChargingReason & 0x20) != 0)
  {
    *v7 = *MEMORY[0x29EDB8F00];
    *v6 = @"ChargerWatchdogTimeout";
    ++v10;
  }

  v12 = &values[v10];
  *v12 = CFNumberCreate(v8, kCFNumberSInt8Type, &readChargerData_chargingCurrent);
  v13 = (v12 + 3);
  keys[v10] = @"ChargingCurrent";
  v14 = CFNumberCreate(v8, kCFNumberSInt8Type, &readChargerData_chargingVoltage);
  v15 = 8 * v10 + 8;
  *(values + v15) = v14;
  *(keys + v15) = @"ChargingVoltage";
  v16 = CFNumberCreate(v8, kCFNumberSInt8Type, &readChargerData_chargerStatus);
  v17 = 8 * v10 + 16;
  *(values + v17) = v16;
  *(keys + v17) = @"ChargerStatus";
  v23 = time(0);
  v18 = CFNumberCreate(v8, kCFNumberLongType, &v23);
  v19 = 8 * v10 + 24;
  *(values + v19) = v18;
  *(keys + v19) = @"UpdateTime";
  v11 = CFDictionaryCreate(v8, keys, values, v10 + 4, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v20 = v10 + 5;
  do
  {
    v21 = *v13--;
    CFRelease(v21);
    --v20;
  }

  while (v20 > 1);
  return v11;
}

CFDictionaryRef dynamicATV(mach_port_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v13 = 0;
  *input = xmmword_29D35D0E0;
  v17 = 0;
  if (IOConnectCallScalarMethod(a1, 7u, input, 3u, 0, 0) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    dynamicATV_cold_1();
  }

  v1 = word_2A17A1A6C + word_2A17A1A76;
  v2 = word_2A17A1A6A;
  if (v1 <= (v2 + ((v2 & 0x8000) >> 15)) >> 1)
  {
    v3 = (word_2A17A1A6A + ((word_2A17A1A6A & 0x8000u) >> 15)) >> 1;
  }

  else
  {
    v3 = word_2A17A1A6C + word_2A17A1A76;
  }

  if (v1 <= word_2A17A1A6A)
  {
    v2 = v3;
  }

  dword_2A17A1A94 = v2;
  v4 = *MEMORY[0x29EDB8ED8];
  values = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &dword_2A17A1A94);
  v12 = @"atvBatteryCapacityMA";
  if (dword_2A17A1BE8)
  {
    v5 = determineVACVoltage();
    if (v5 != dword_2A17A1A90)
    {
      dword_2A17A1A90 = v5;
    }

    v15 = CFNumberCreate(v4, kCFNumberIntType, &dword_2A17A1A90);
    v13 = @"atvAbsMaxVoltageMV";
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = CFDictionaryCreate(v4, &v12, &values, v6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = v6 + 1;
  v9 = (&values + v6 - 1);
  do
  {
    v10 = *v9--;
    CFRelease(v10);
    --v8;
  }

  while (v8 > 1);
  return v7;
}

uint64_t determineVACVoltage()
{
  v41 = *MEMORY[0x29EDCA608];
  v0 = dword_2A17A1A90;
  v1 = dword_2A17A1BE8;
  if (dword_2A17A1BE8)
  {
    if (determineVACVoltage_lastBatteryCycleCount != word_2A17A1A9C || dword_2A17A1A90 == 0)
    {
      determineVACVoltage_lastBatteryCycleCount = word_2A17A1A9C;
      v3 = &dword_2A17A1BEC;
      while (1)
      {
        v5 = *v3++;
        v4 = v5;
        v6 = HIWORD(v5);
        if (v5 < 0x10000 || v6 > word_2A17A1A9C)
        {
          break;
        }

        if (!--v1)
        {
          v8 = determineVACVoltage_vacBasedVoltageMV;
          if (determineVACVoltage_vacBasedVoltageMV)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      v8 = v4;
      if (v4)
      {
        goto LABEL_17;
      }

LABEL_16:
      v8 = LOWORD(updateThread_batteryInfo[dword_2A17A1BE8 + 104]);
LABEL_17:
      determineVACVoltage_vacBasedVoltageMV = v8;
      v9 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 67109120;
        v38 = v8;
        _os_log_impl(&dword_29D352000, v9, OS_LOG_TYPE_DEFAULT, "determineVACVoltage:: vacBasedVoltageMV=%d", &v37, 8u);
        v8 = determineVACVoltage_vacBasedVoltageMV;
      }

      if (v0)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 == 0;
      }

      if (!v10)
      {
        v0 = v8;
      }
    }
  }

  v11 = dword_2A17A1C2C;
  if (dword_2A17A1C2C && word_2A17A1A6E >= 0x313u)
  {
    v12 = word_2A17A1AD6;
    if (word_2A17A1A6E <= 0x500u)
    {
      v13 = word_2A17A1AD6;
    }

    else
    {
      v13 = word_2A17A1AD4;
    }

    v14 = &word_2A17A1AD6 + 1;
    if (word_2A17A1A6E > 0x500u)
    {
      v14 = &word_2A17A1AD4 + 1;
    }

    v15 = *v14 | (v13 << 8);
    if (word_2A17A1A6E <= 0x500u)
    {
      v12 = byte_2A17A1AD8;
    }

    if (v12 && v15 != 0)
    {
      if (determineVACVoltage_lastTimeAbove95 != v12 || (determineVACVoltage_lastToT == v15 ? (v17 = v0 == 0) : (v17 = 1), v17))
      {
        determineVACVoltage_lastTimeAbove95 = v12;
        determineVACVoltage_lastToT = v15;
        v18 = (42949673 * (v12 * v15)) >> 32;
        v19 = &dword_2A17A1C30;
        while (1)
        {
          v21 = *v19++;
          v20 = v21;
          v22 = HIWORD(v21);
          if (v21 < 0x10000 || v18 < v22)
          {
            break;
          }

          if (!--v11)
          {
            v24 = determineVACVoltage_vac95BasedVoltageMV;
            if (determineVACVoltage_vac95BasedVoltageMV)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        v24 = v20;
        if (v20)
        {
          goto LABEL_54;
        }

LABEL_53:
        v24 = LOWORD(updateThread_batteryInfo[dword_2A17A1C2C + 121]);
LABEL_54:
        determineVACVoltage_vac95BasedVoltageMV = v24;
        v25 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v37 = 67109376;
          v38 = v24;
          v39 = 1024;
          v40 = v0;
          _os_log_impl(&dword_29D352000, v25, OS_LOG_TYPE_DEFAULT, "determineVACVoltage:: vac95BasedVoltageMV=%d absMaxVoltageMV=%d", &v37, 0xEu);
          v24 = determineVACVoltage_vac95BasedVoltageMV;
        }

        if (v0)
        {
          v26 = 1;
        }

        else
        {
          v26 = v24 == 0;
        }

        if (!v26)
        {
          v0 = v24;
        }
      }
    }
  }

  if (determineVACVoltage_vacBasedVoltageMV >= v0)
  {
    v27 = v0;
  }

  else
  {
    v27 = determineVACVoltage_vacBasedVoltageMV;
  }

  if (determineVACVoltage_vacBasedVoltageMV)
  {
    v28 = v27;
  }

  else
  {
    v28 = v0;
  }

  if (determineVACVoltage_vac95BasedVoltageMV >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = determineVACVoltage_vac95BasedVoltageMV;
  }

  if (determineVACVoltage_vac95BasedVoltageMV)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  v31 = dword_2A17A1A90;
  v32 = word_2A17A1A72;
  if (dword_2A17A1A90)
  {
    v33 = v30 >= word_2A17A1A72;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    return v30;
  }

  v34 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 67109376;
    v38 = v32;
    v39 = 1024;
    v40 = v30;
    _os_log_impl(&dword_29D352000, v34, OS_LOG_TYPE_DEFAULT, "determineVACVoltage:: waiting for vbat(%d) < vac(%d)", &v37, 0xEu);
    return dword_2A17A1A90;
  }

  return v31;
}

uint64_t determinePoSMThreshold()
{
  v50 = *MEMORY[0x29EDCA608];
  if (word_2A17A1A6E <= 0x500u)
  {
    if (word_2A17A1A6E < 0x313u)
    {
      return 0xFFFFFFFFLL;
    }

    v2 = &word_2A17A1AD6;
    v0 = &byte_2A17A1AD8;
    v1 = &word_2A17A1AD6 + 1;
  }

  else
  {
    v0 = &word_2A17A1AD6;
    v1 = &word_2A17A1AD4 + 1;
    v2 = &word_2A17A1AD4;
  }

  v3 = *v1 | (*v2 << 8);
  v4 = *v0;
  v5 = dword_2A17A1C74;
  v6 = dword_2A17A1C74 != 0;
  v7 = word_2A17A1C78;
  v8 = word_2A17A1C78 != 0;
  v9 = dword_2A17A1C7C;
  v10 = dword_2A17A1C7C != 0;
  v11 = word_2A17A1C80;
  v12 = word_2A17A1C80 != 0;
  v13 = determinePoSMThreshold_lastBatteryCycleCount != word_2A17A1A9C && dword_2A17A1C74 != 0;
  v14 = determinePoSMThreshold_lastToT != v3 && word_2A17A1C78 != 0;
  v15 = determinePoSMThreshold_lastAbove95 != v4 && word_2A17A1C80 != 0;
  v31 = v15;
  v32 = v13;
  if (v13)
  {
    determinePoSMThreshold_lastBatteryCycleCount = word_2A17A1A9C;
    if (word_2A17A1A9C <= HIWORD(dword_2A17A1C74))
    {
      v16 = -1;
    }

    else
    {
      v16 = dword_2A17A1C84;
    }

    determinePoSMThreshold_vacThreshold = v16;
  }

  v17 = v10 && (determinePoSMThreshold_lastToT != v3 || determinePoSMThreshold_lastAbove95 != v4);
  if (v14)
  {
    determinePoSMThreshold_lastToT = v3;
    if (v3 <= HIWORD(*&word_2A17A1C78))
    {
      v18 = -1;
    }

    else
    {
      v18 = dword_2A17A1C88;
    }

    determinePoSMThreshold_vacpThreshold = v18;
  }

  if (v17)
  {
    determinePoSMThreshold_lastToT = v3;
    determinePoSMThreshold_lastAbove95 = v4;
    if ((42949673 * (v4 * v3)) >> 32 <= HIWORD(dword_2A17A1C7C))
    {
      v19 = -1;
    }

    else
    {
      v19 = dword_2A17A1C8C;
    }

    determinePoSMThreshold_vac95Threshold = v19;
  }

  v33 = word_2A17A1A9C;
  v30 = v14;
  if (word_2A17A1C80)
  {
    determinePoSMThreshold_lastAbove95 = v4;
    if (v4 <= HIWORD(*&word_2A17A1C80))
    {
      v21 = 0x2A17A1000uLL;
      v20 = -1;
    }

    else
    {
      v20 = dword_2A17A1C90;
      v21 = 0x2A17A1000;
    }

    *(v21 + 3348) = v20;
  }

  else
  {
    v20 = determinePoSMThreshold_vac95pThreshold;
  }

  if (v5)
  {
    v23 = determinePoSMThreshold_vacThreshold;
  }

  else
  {
    v23 = -1;
  }

  v24 = determinePoSMThreshold_vacpThreshold;
  if (determinePoSMThreshold_vacpThreshold >= v23)
  {
    v24 = v23;
  }

  if (v7)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v26 = determinePoSMThreshold_vac95Threshold;
  if (determinePoSMThreshold_vac95Threshold >= v25)
  {
    v26 = v25;
  }

  if (v9)
  {
    v25 = v26;
  }

  if (v20 >= v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v20;
  }

  if (v11)
  {
    v22 = v27;
  }

  else
  {
    v22 = v25;
  }

  v28 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v35 = v6;
    v36 = 1024;
    v37 = v8;
    v38 = 1024;
    v39 = v10;
    v40 = 1024;
    v41 = v12;
    _os_log_impl(&dword_29D352000, v28, OS_LOG_TYPE_DEFAULT, "determinePoSMThreshold, enabled:%d %d %d %d ", buf, 0x1Au);
    v28 = logger;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v35 = v32;
    v36 = 1024;
    v37 = v30;
    v38 = 1024;
    v39 = v17;
    v40 = 1024;
    v41 = v31;
    _os_log_impl(&dword_29D352000, v28, OS_LOG_TYPE_DEFAULT, "determinePoSMThreshold, changed:%d %d %d %d ", buf, 0x1Au);
    v28 = logger;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v35 = v33;
    v36 = 1024;
    v37 = HIWORD(dword_2A17A1C74);
    v38 = 1024;
    v39 = v3;
    v40 = 1024;
    v41 = word_2A17A1C7A;
    v42 = 1024;
    v43 = (42949673 * (v4 * v3)) >> 32;
    v44 = 1024;
    v45 = HIWORD(dword_2A17A1C7C);
    v46 = 1024;
    v47 = v4;
    v48 = 1024;
    v49 = word_2A17A1C82;
    _os_log_impl(&dword_29D352000, v28, OS_LOG_TYPE_DEFAULT, "determinePoSMThreshold, cmp:%d>%u %d>%u %d>%u %d>%u", buf, 0x32u);
    v28 = logger;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    v35 = v22;
    v36 = 1024;
    v37 = determinePoSMThreshold_vacThreshold;
    v38 = 1024;
    v39 = determinePoSMThreshold_vacpThreshold;
    v40 = 1024;
    v41 = determinePoSMThreshold_vac95Threshold;
    v42 = 1024;
    v43 = determinePoSMThreshold_vac95pThreshold;
    _os_log_impl(&dword_29D352000, v28, OS_LOG_TYPE_DEFAULT, "determinePoSMThreshold,minThreshold=%u threshold:%u %u %u %u", buf, 0x20u);
  }

  return v22;
}

CFDictionaryRef parseBatteryData(int a1, int a2)
{
  v112 = *MEMORY[0x29EDCA608];
  *&valuePtr[4] = 0;
  memset(v103, 0, sizeof(v103));
  memset(v101, 0, sizeof(v101));
  v4 = *MEMORY[0x29EDB8ED8];
  v102[0] = CFDataCreate(*MEMORY[0x29EDB8ED8], updateThread_batteryInfo, 32);
  v100[0] = @"MfgData";
  v102[1] = createStringWithBytes(updateThread_batteryInfo, 0x12uLL);
  v100[1] = @"Serial";
  *valuePtr = word_2A17A1A6A;
  v102[2] = CFNumberCreate(v4, kCFNumberIntType, valuePtr);
  v100[2] = @"DesignCapacity";
  v71 = word_2A17A1A9E;
  values = CFNumberCreate(v4, kCFNumberIntType, &v71);
  if (values)
  {
    v5 = &v103[1];
    v6 = &v101[1];
    v103[0] = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    v101[0] = @"Qmax";
    CFRelease(values);
    v7 = 4;
  }

  else
  {
    v5 = v103;
    v6 = v101;
    v7 = 3;
  }

  v70 = word_2A17A1A74;
  *v5 = CFNumberCreate(v4, kCFNumberIntType, &v70);
  *v6 = @"MaxCapacity";
  v69 = word_2A17A1A9C;
  v8 = CFNumberCreate(v4, kCFNumberIntType, &v69);
  v9 = 8 * v7 + 8;
  *(v102 + v9) = v8;
  *(v100 + v9) = @"CycleCount";
  v68 = word_2A17A1AA0;
  v10 = CFNumberCreate(v4, kCFNumberIntType, &v68);
  v11 = 8 * v7 + 16;
  *(v102 + v11) = v10;
  *(v100 + v11) = @"StateOfCharge";
  v67 = word_2A17A1A72;
  v12 = CFNumberCreate(v4, kCFNumberIntType, &v67);
  v13 = 8 * v7 + 24;
  *(v102 + v13) = v12;
  *(v100 + v13) = @"Voltage";
  v66 = word_2A17A1AA2;
  v14 = CFNumberCreate(v4, kCFNumberIntType, &v66);
  v15 = 8 * v7 + 32;
  *(v102 + v15) = v14;
  *(v100 + v15) = @"Flags";
  StringWithBytes = createStringWithBytes(updateThread_batteryInfo + 2, 4uLL);
  v17 = 8 * v7 + 40;
  *(v102 + v17) = StringWithBytes;
  *(v100 + v17) = @"ManufactureDate";
  v65 = word_2A17A1A68;
  v18 = CFNumberCreate(v4, kCFNumberSInt16Type, &v65);
  v19 = 8 * v7 + 48;
  *(v102 + v19) = v18;
  *(v100 + v19) = @"ChemID";
  v20 = v7 + 7;
  if (word_2A17A1A6E != 1536)
  {
    v64 = word_2A17A1AA4;
    v102[v20] = CFNumberCreate(v4, kCFNumberIntType, &v64);
    v100[v20] = @"FullAvailableCapacity";
    v20 = v7 | 8;
    if (word_2A17A1A6E < 0x313u)
    {
      goto LABEL_20;
    }
  }

  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0;
  v99 = time(0);
  keys[0] = @"UpdateTime";
  v108[0] = CFNumberCreate(v4, kCFNumberLongType, &v99);
  keys[1] = @"MaximumTemperature";
  v98 = (byte_2A17A1AA6 << 8) | byte_2A17A1AA7;
  v108[1] = CFNumberCreate(v4, kCFNumberIntType, &v98);
  keys[2] = @"MinimumTemperature";
  v97 = (byte_2A17A1AA8 << 8) | byte_2A17A1AA9;
  v108[2] = CFNumberCreate(v4, kCFNumberIntType, &v97);
  keys[3] = @"MaximumPackVoltage";
  v96 = (byte_2A17A1AAA << 8) | byte_2A17A1AAB;
  v108[3] = CFNumberCreate(v4, kCFNumberIntType, &v96);
  keys[4] = @"MinimumPackVoltage";
  v95 = (byte_2A17A1AAC << 8) | byte_2A17A1AAD;
  v108[4] = CFNumberCreate(v4, kCFNumberIntType, &v95);
  keys[5] = @"MaximumChargeCurrent";
  v94 = (byte_2A17A1AAE << 8) | byte_2A17A1AAF;
  v108[5] = CFNumberCreate(v4, kCFNumberIntType, &v94);
  keys[6] = @"MaximumDischargeCurrent";
  v93 = (byte_2A17A1AB0 << 8) | byte_2A17A1AB1;
  v108[6] = CFNumberCreate(v4, kCFNumberIntType, &v93);
  keys[7] = @"MaximumOverChargedCapacity";
  v92 = (byte_2A17A1AB2 << 8) | byte_2A17A1AB3;
  v108[7] = CFNumberCreate(v4, kCFNumberIntType, &v92);
  keys[8] = @"MaximumOverDischargedCapacity";
  v91 = (byte_2A17A1AB4 << 8) | byte_2A17A1AB5;
  v108[8] = CFNumberCreate(v4, kCFNumberIntType, &v91);
  keys[9] = @"MaximumFCC";
  v90 = (byte_2A17A1AB6 << 8) | byte_2A17A1AB7;
  v108[9] = CFNumberCreate(v4, kCFNumberIntType, &v90);
  keys[10] = @"MinimumFCC";
  v89 = (byte_2A17A1AB8 << 8) | byte_2A17A1AB9;
  v108[10] = CFNumberCreate(v4, kCFNumberIntType, &v89);
  keys[11] = @"MaximumDeltaVoltage";
  v88 = (byte_2A17A1ABA << 8) | byte_2A17A1ABB;
  v108[11] = CFNumberCreate(v4, kCFNumberIntType, &v88);
  keys[12] = @"MinimumDeltaVoltage";
  v87 = (byte_2A17A1ABC << 8) | byte_2A17A1ABD;
  v108[12] = CFNumberCreate(v4, kCFNumberIntType, &v87);
  keys[13] = @"LowAvgCurrentLastRun";
  v86 = (byte_2A17A1ABE << 8) | byte_2A17A1ABF;
  v108[13] = CFNumberCreate(v4, kCFNumberIntType, &v86);
  keys[14] = @"HighAvgCurrentLastRun";
  v85 = (byte_2A17A1AC0 << 8) | byte_2A17A1AC1;
  v108[14] = CFNumberCreate(v4, kCFNumberIntType, &v85);
  keys[15] = @"MaximumQmax";
  v84 = (byte_2A17A1AC2 << 8) | byte_2A17A1AC3;
  v108[15] = CFNumberCreate(v4, kCFNumberIntType, &v84);
  keys[16] = @"MinimumQmax";
  v83 = (byte_2A17A1AC4 << 8) | byte_2A17A1AC5;
  v108[16] = CFNumberCreate(v4, kCFNumberIntType, &v83);
  keys[17] = @"MaximumRa0-8";
  v82 = (byte_2A17A1AC6 << 8) | byte_2A17A1AC7;
  v108[17] = CFNumberCreate(v4, kCFNumberIntType, &v82);
  keys[18] = @"MinimumRa0-8";
  v81 = (byte_2A17A1AC8 << 8) | byte_2A17A1AC9;
  v108[18] = CFNumberCreate(v4, kCFNumberIntType, &v81);
  keys[19] = @"AverageTemperature";
  v80 = byte_2A17A1ACA;
  v108[19] = CFNumberCreate(v4, kCFNumberIntType, &v80);
  keys[20] = @"TemperatureSamples";
  v79 = bswap32(unk_2A17A1ACB);
  v108[20] = CFNumberCreate(v4, kCFNumberIntType, &v79);
  keys[21] = @"FlashWriteCount";
  v78 = __rev16(unk_2A17A1ACF);
  *&v109 = CFNumberCreate(v4, kCFNumberIntType, &v78);
  *&v105 = @"RDISCnt";
  v77 = __rev16(unk_2A17A1AD1);
  *(&v109 + 1) = CFNumberCreate(v4, kCFNumberIntType, &v77);
  *(&v105 + 1) = @"CycleCountLastQmax";
  v76 = byte_2A17A1AD3;
  *&v110 = CFNumberCreate(v4, kCFNumberIntType, &v76);
  if (word_2A17A1A6E < 0x501u)
  {
    if (word_2A17A1A6E < 0x313u)
    {
      v24 = &v106;
      v25 = &v110 + 8;
      v26 = 25;
      goto LABEL_12;
    }

    v21 = &word_2A17A1AD6;
  }

  else
  {
    v21 = &word_2A17A1AD4;
  }

  v22 = __rev16(*v21);
  *&v106 = @"TotalOperatingTime";
  v75 = v22;
  *(&v110 + 1) = CFNumberCreate(v4, kCFNumberIntType, &v75);
  v23 = *(v21 + 2);
  *(&v106 + 1) = @"TimeAbove95Perc";
  v74 = v23;
  v24 = &v107;
  v25 = &v111 + 8;
  *&v111 = CFNumberCreate(v4, kCFNumberIntType, &v74);
  v26 = 27;
LABEL_12:
  *v24 = @"Raw";
  *v25 = CFDataCreate(v4, &byte_2A17A1AA6, 64);
  v27 = CFDictionaryCreate(v4, keys, v108, v26, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v28 = v26 - 1;
  do
  {
    CFRelease(v108[v28]);
    v29 = v28-- + 1;
  }

  while (v29 > 1);
  if (!v27)
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      parseBatteryData_cold_1();
      if (!a1)
      {
        goto LABEL_22;
      }

LABEL_21:
      v63 = word_2A17A1A80;
      v102[v20] = CFNumberCreate(v4, kCFNumberIntType, &v63);
      v100[v20] = @"ITMiscStatus";
      v62 = word_2A17A1A80 & 3;
      v30 = CFNumberCreate(v4, kCFNumberIntType, &v62);
      v31 = 8 * v20 + 8;
      *(v102 + v31) = v30;
      *(v100 + v31) = @"ITSimulationCounter";
      v20 += 2;
      goto LABEL_22;
    }

LABEL_20:
    if (!a1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a2)
  {
    CFShow(v27);
  }

  v102[v20] = v27;
  v100[v20++] = @"LifetimeData";
  if (a1)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (word_2A17A1A6E >= 0x600u)
  {
    *&valuePtr[4] = CFDataCreate(v4, &word_2A17A1AE6, 32);
    if (*&valuePtr[4])
    {
      v102[v20] = CFArrayCreate(v4, &valuePtr[4], 1, MEMORY[0x29EDB9000]);
      v100[v20++] = @"RaTableRaw";
      CFRelease(*&valuePtr[4]);
    }

    v61 = word_2A17A1B3C;
    v102[v20] = CFNumberCreate(v4, kCFNumberIntType, &v61);
    v100[v20] = @"WeightedRa";
    v60 = word_2A17A1B3E;
    v32 = CFNumberCreate(v4, kCFNumberIntType, &v60);
    v33 = 8 * v20 + 8;
    *(v102 + v33) = v32;
    *(v100 + v33) = @"ChemicalWeightedRa";
    v59 = dword_2A17A1B38;
    v34 = CFNumberCreate(v4, kCFNumberIntType, &v59);
    v35 = 8 * v20 + 16;
    *(v102 + v35) = v34;
    *(v100 + v35) = @"BatteryHealthMetric";
    v36 = v20 + 3;
    if (word_2A17A1A6E < 0x600u)
    {
      v20 += 3;
    }

    else
    {
      v102[v36] = CFDataCreate(v4, xmmword_2A17A1B06, 32);
      v100[v36] = @"iMaxAndSocSmoothTable";
      v58 = __rev16(*(xmmword_2A17A1B06 + 1));
      v37 = CFNumberCreate(v4, kCFNumberIntType, &v58);
      v38 = 8 * v20 + 32;
      *(v102 + v38) = v37;
      *(v100 + v38) = @"RSS";
      v20 += 5;
    }
  }

  v57 = word_2A17A1A84;
  v102[v20] = CFNumberCreate(v4, kCFNumberIntType, &v57);
  v100[v20] = @"ResScale";
  v56 = word_2A17A1A86;
  v39 = CFNumberCreate(v4, kCFNumberIntType, &v56);
  v40 = 8 * v20 + 8;
  *(v102 + v40) = v39;
  *(v100 + v40) = @"Qstart";
  v55 = word_2A17A1A88;
  v41 = CFNumberCreate(v4, kCFNumberIntType, &v55);
  v42 = 8 * v20 + 16;
  *(v102 + v42) = v41;
  *(v100 + v42) = @"PassedCharge";
  v43 = v20 + 3;
  v54 = word_2A17A1A8A;
  values = CFNumberCreate(v4, kCFNumberIntType, &v54);
  if (values)
  {
    v102[v43] = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    v100[v43] = @"DOD0";
    v43 = v20 + 4;
    CFRelease(values);
  }

  v53 = word_2A17A1A82;
  values = CFNumberCreate(v4, kCFNumberIntType, &v53);
  if (values)
  {
    v102[v43] = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    v100[v43++] = @"PresentDOD";
    CFRelease(values);
  }

  v52 = word_2A17A1AA2;
  v102[v43] = CFNumberCreate(v4, kCFNumberIntType, &v52);
  v100[v43] = @"GaugeFlagRaw";
  v51 = gauge_reset_count;
  v44 = CFNumberCreate(v4, kCFNumberLongLongType, &v51);
  v45 = 8 * v43 + 8;
  *(v102 + v45) = v44;
  *(v100 + v45) = @"GaugeResetCounter";
  if (v43 >= 27)
  {
    parseBatteryData_cold_2();
  }

  v46 = CFDictionaryCreate(v4, v100, v102, v43 + 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v43 >= -1)
  {
    v47 = v43 + 3;
    v48 = &v102[v43 + 1];
    do
    {
      v49 = *v48--;
      CFRelease(v49);
      --v47;
    }

    while (v47 > 1);
  }

  return v46;
}

__darwin_time_t UpSeconds()
{
  if (!UpSeconds_boottime)
  {
    v1.tv_sec = 16;
    sysctlbyname("kern.boottime", &UpSeconds_boottime, &v1, 0, 0);
  }

  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec - UpSeconds_boottime;
}

CFStringRef createStringWithBytes(UInt8 *bytes, unint64_t a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = 1;
    do
    {
      if (!bytes[v2])
      {
        break;
      }

      v2 = v3++;
    }

    while (v2 < a2);
  }

  return CFStringCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], bytes, v2, 0x8000100u, 0, *MEMORY[0x29EDB8EE8]);
}

uint64_t GGHIDQueryInterface(uint64_t a1, CFUUIDBytes a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  v8 = CFEqual(v5, v7);
  v9 = v4;
  if (!v8)
  {
    v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v11 = CFEqual(v5, v10);
    v9 = v4;
    if (!v11)
    {
      v12 = CFUUIDGetConstantUUIDWithBytes(v6, 0x6Fu, 0xE2u, 0x2Au, 0xBFu, 0x68u, 0xB9u, 0x11u, 0xDBu, 0xA7u, 0x1Fu, 0, 0x16u, 0xCBu, 0xC1u, 0x10u, 0xF7u);
      if (!CFEqual(v5, v12))
      {
        v13 = 2147483652;
        goto LABEL_6;
      }

      v9 = v4 + 16;
    }
  }

  v13 = 0;
  *a3 = v9;
  ++*(v4 + 40);
LABEL_6:
  CFRelease(v5);
  return v13;
}

uint64_t GGHIDAddRef(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = (*(v1 + 40) + 1);
  *(v1 + 40) = result;
  return result;
}

uint64_t GGHIDRelease(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  v3 = (v2 - 1);
  *(v1 + 40) = v3;
  if (v2 == 1)
  {
    v4 = *(v1 + 32);
    GGHIDStop(a1);
    free(v1);
    CFPlugInRemoveInstanceForFactory(v4);
    CFRelease(v4);
  }

  return v3;
}

uint64_t GGHIDProbe(int a1, int a2, io_object_t object)
{
  if (!object)
  {
    return 3758097090;
  }

  if (!IOObjectConformsTo(object, "AppleHDQGasGaugeControl"))
  {
    return 3758097090;
  }

  memset(&v4, 0, sizeof(v4));
  result = stat("/dev/cu.gas-gauge", &v4);
  if (result)
  {
    return 3758097090;
  }

  return result;
}

uint64_t GGHIDStart(uint64_t a1, int a2, io_service_t service)
{
  v3 = *(a1 + 8);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = IOServiceOpen(service, *MEMORY[0x29EDCA6B0], 0, (v3 + 44));
  if (v4)
  {
    v5 = v4;
LABEL_5:
    *(v3 + 44) = 0;
    return v5;
  }

  v6 = *(v3 + 44);
  outputStructCnt = 352;
  v5 = IOConnectCallStructMethod(v6, 2u, 0, 0, v9, &outputStructCnt);
  if (v5)
  {
    IOServiceClose(*(v3 + 44));
    goto LABEL_5;
  }

  v8 = DWORD2(v10);
  if (DWORD2(v10) == -1)
  {
    v8 = 1413951554;
  }

  LODWORD(outputStructCnt) = v8;
  *(v3 + 48) = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &outputStructCnt);
  *(v3 + 72) = DWORD2(v11);
  return v5;
}

uint64_t GGHIDStop(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 44);
  if (v2)
  {
    IOServiceClose(v2);
    *(v1 + 44) = 0;
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 48) = 0;
  }

  return 0;
}

CFDictionaryRef GGHIDCopyProperty(uint64_t a1, CFTypeRef cf1)
{
  v20[4] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  if (CFEqual(cf1, @"ServicePluginDebug"))
  {
    memset(v20, 0, 32);
    memset(v18, 0, sizeof(v18));
    values[0] = @"AppleHDQGasGaugeHID";
    keys[0] = @"PluginName";
    keys[1] = @"TemperatureEventCnt";
    v4 = *MEMORY[0x29EDB8ED8];
    values[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, (v3 + 88));
    keys[2] = @"TemperatureEventFailCnt";
    values[2] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 96));
    keys[3] = @"TemperatureEventConsFailCnt";
    values[3] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 104));
    keys[4] = @"LastCalledTs";
    values[4] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 112));
    keys[5] = @"LastErrTs";
    values[5] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 120));
    keys[6] = @"LastSuccessTs";
    values[6] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 128));
    v5 = *(v3 + 136);
    if (v5)
    {
      v6 = &v20[1];
      v7 = v18 + 1;
      *&v18[0] = @"ErrorHistory";
      v20[0] = v5;
      CFRetain(v5);
      v8 = 8;
    }

    else
    {
      v6 = v20;
      v7 = v18;
      v8 = 7;
    }

    v10 = *(v3 + 144);
    if (v10)
    {
      *v7 = @"ErrorCounts";
      *v6 = v10;
      CFRetain(v10);
      ++v8;
    }

    keys[v8] = @"ErrorInjection";
    if (*(v3 + 76))
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    else
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    v12 = *v11;
    values[v8] = *v11;
    CFRetain(v12);
    v13 = v8 + 1;
    keys[v8 + 1] = @"ErrorInjectionCode";
    values[v8 + 1] = CFNumberCreate(v4, kCFNumberSInt32Type, (v3 + 80));
    v14 = CFDictionaryCreate(v4, keys, values, v8 + 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    do
    {
      CFRelease(values[v13]);
      v15 = v13-- + 1;
    }

    while (v15 > 1);
  }

  else
  {
    if (CFEqual(cf1, @"PrimaryUsagePage"))
    {
      v9 = *(v3 + 56);
    }

    else
    {
      v9 = 0;
    }

    if (CFEqual(cf1, @"PrimaryUsage"))
    {
      v9 = *(v3 + 64);
    }

    if (CFEqual(cf1, @"LocationID"))
    {
      v9 = *(v3 + 48);
    }

    if (CFEqual(cf1, @"Product"))
    {
      v14 = @"gas gauge battery";
    }

    else
    {
      v14 = v9;
    }

    if (v14)
    {
      CFRetain(v14);
    }
  }

  return v14;
}

uint64_t GGHIDSetProperty(uint64_t a1, CFTypeRef cf1, const __CFNumber *a3)
{
  v5 = *(a1 + 8);
  if (CFEqual(cf1, @"ErrorInjectionCode"))
  {
    TypeID = CFNumberGetTypeID();
    if (a3 && CFGetTypeID(a3) == TypeID)
    {
      CFNumberGetValue(a3, kCFNumberSInt32Type, (v5 + 80));
      return 1;
    }
  }

  else
  {
    result = CFEqual(cf1, @"ErrorInjection");
    if (!result)
    {
      return result;
    }

    v8 = CFBooleanGetTypeID();
    if (a3)
    {
      if (CFGetTypeID(a3) == v8)
      {
        v9 = *MEMORY[0x29EDB8F00] == a3;
      }

      else
      {
        v10 = CFNumberGetTypeID();
        if (CFGetTypeID(a3) != v10)
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        v9 = valuePtr != 0;
      }

      *(v5 + 76) = v9;
      return 1;
    }

    CFNumberGetTypeID();
  }

  return 0;
}

uint64_t GGHIDCopyEvent(uint64_t a1, int a2)
{
  v48 = *MEMORY[0x29EDCA608];
  if (a2 == 15)
  {
    v2 = *(a1 + 8);
    outputCnt = 1;
    output = 0;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    if (!clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp))
    {
      *(v2 + 112) = __tp.tv_nsec / 1000 + 1000000 * __tp.tv_sec;
    }

    v3 = *(v2 + 88);
    if (v3 != -1)
    {
      *(v2 + 88) = v3 + 1;
    }

    if (*(v2 + 72))
    {
      v4 = *(v2 + 44);
      input = 0;
      v5 = IOConnectCallScalarMethod(v4, 0x10u, &input, 1u, 0, 0);
      v6 = v5 == -536870183 || v5 == 0;
      if (!v6 && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        GGHIDCopyEvent_cold_1();
      }
    }

    v7 = *(v2 + 44);
    v38 = 6;
    v8 = IOConnectCallScalarMethod(v7, 8u, &v38, 1u, &output, &outputCnt);
    if (*(v2 + 76) == 1)
    {
      v9 = *(v2 + 80);
    }

    else
    {
      v9 = v8;
    }

    valuePtr = v9;
    v11 = MEMORY[0x29EDB8ED8];
    if (v9)
    {
      Mutable = *(v2 + 136);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 10, MEMORY[0x29EDB9000]);
        *(v2 + 136) = Mutable;
      }

      if (!*(v2 + 144))
      {
        *(v2 + 144) = CFDictionaryCreateMutable(*v11, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        Mutable = *(v2 + 136);
      }

      *(v2 + 120) = *(v2 + 112);
      if (CFArrayGetCount(Mutable) >= 10)
      {
        CFArrayRemoveValueAtIndex(*(v2 + 136), 0);
      }

      if (*(v2 + 136))
      {
        v13 = CFNumberCreate(*v11, kCFNumberIntType, &valuePtr);
        if (v13)
        {
          v14 = v13;
          CFArrayAppendValue(*(v2 + 136), v13);
          CFRelease(v14);
        }
      }

      v15 = *(v2 + 96);
      if (v15 != -1)
      {
        *(v2 + 96) = v15 + 1;
      }

      v16 = *(v2 + 104);
      if (v16 != -1)
      {
        *(v2 + 104) = v16 + 1;
      }

      if (*(v2 + 144))
      {
        *&__str[7] = 0;
        *__str = 0;
        snprintf(__str, 0xBuLL, "%#x", valuePtr);
        v17 = *v11;
        v18 = CFStringCreateWithCString(*v11, __str, 0x8000100u);
        if (v18)
        {
          v19 = v18;
          v42 = 0;
          Value = CFDictionaryGetValue(*(v2 + 144), v18);
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberIntType, &v42);
            v21 = v42 + 1;
          }

          else
          {
            v21 = 1;
          }

          v42 = v21;
          v22 = CFNumberCreate(v17, kCFNumberIntType, &v42);
          if (v22)
          {
            v23 = v22;
            CFDictionarySetValue(*(v2 + 144), v19, v22);
            CFRelease(v23);
          }

          CFRelease(v19);
        }
      }

      v24 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        v31 = *(v2 + 96);
        v32 = *(v2 + 104);
        *__str = 136315906;
        *&__str[4] = "GGHID_log_error";
        v46 = 1024;
        *v47 = valuePtr;
        *&v47[4] = 2048;
        *&v47[6] = v31;
        *&v47[14] = 2048;
        *&v47[16] = v32;
        _os_log_error_impl(&dword_29D352000, v24, OS_LOG_TYPE_ERROR, "%s: cannot read temperature: rc:%u cnt:%zu ccnt:%zu", __str, 0x26u);
      }

      if (*(v2 + 112) - *(v2 + 128) >= 0x9896801uLL)
      {
        v25 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_FAULT))
        {
          v33 = *(v2 + 96);
          v34 = *(v2 + 104);
          v35 = *(v2 + 136);
          v36 = *(v2 + 144);
          *__str = 134218754;
          *&__str[4] = v33;
          v46 = 2048;
          *v47 = v34;
          *&v47[8] = 2112;
          *&v47[10] = v35;
          *&v47[18] = 2112;
          *&v47[20] = v36;
          _os_log_fault_impl(&dword_29D352000, v25, OS_LOG_TYPE_FAULT, "cnt:%zu ccnt:%zu errs:%@ errCnts:%@", __str, 0x2Au);
        }
      }

      if (v9 == -536870183)
      {
        goto LABEL_52;
      }

      if (v9 == -536870163)
      {
LABEL_51:
        v10 = 0;
        gRestrictLogMessagesCounter = gRestrictLogCounter;
        return v10;
      }
    }

    else
    {
      *(v2 + 104) = 0;
      *(v2 + 128) = *(v2 + 112);
    }

    if (*(v2 + 72) && (v26 = *(v2 + 44), v37 = 1, (v27 = IOConnectCallScalarMethod(v26, 0x10u, &v37, 1u, 0, 0)) != 0) && (v28 = v27, v29 = logger, os_log_type_enabled(logger, OS_LOG_TYPE_ERROR)))
    {
      *__str = 136315650;
      *&__str[4] = "GGHID_GetTemperature";
      v46 = 1024;
      *v47 = 4343;
      *&v47[4] = 1024;
      *&v47[6] = v28;
      _os_log_error_impl(&dword_29D352000, v29, OS_LOG_TYPE_ERROR, "%s:%d cannot enable interrupts (%x)", __str, 0x18u);
      if (v9)
      {
        goto LABEL_51;
      }
    }

    else if (v9)
    {
      goto LABEL_51;
    }

LABEL_52:
    gRestrictLogMessagesCounter = 0;
    mach_absolute_time();
    v10 = IOHIDEventCreate();
    IOHIDEventSetFloatValue();
    return v10;
  }

  return 0;
}

_BYTE *OUTLINED_FUNCTION_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void ggctl_reset_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ggctl_open_device_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ggctl_open_device_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ggctl_open_device_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ggctl_open_device_cold_4()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void logBatteryDiagnosticData_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void updateThread_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void updateThread_cold_2(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void updateThread_cold_4()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void updateThread_cold_8(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = -1;
  _os_log_error_impl(&dword_29D352000, log, OS_LOG_TYPE_ERROR, "cannot drain the data log (%d)", buf, 8u);
}

void updateThread_cold_10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void updateThermalCoolDownState_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void statsAndLogs_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void statsAndLogs_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void debugLog_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void debugLog_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void parseBatteryData_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void GGHIDCopyEvent_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}