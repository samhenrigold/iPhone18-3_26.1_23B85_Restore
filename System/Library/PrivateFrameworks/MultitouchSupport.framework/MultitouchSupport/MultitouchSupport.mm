void __MTDeviceCreateMultitouchDispatchSource_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  CFRetain(*(a1 + 32));
  v2 = *MEMORY[0x277CBECE8];
  v3 = 92;
  for (i = MEMORY[0x25F854EB0](*MEMORY[0x277CBECE8], 92, 0x1000040504FFAC1, 0); ; i = MEMORY[0x25F854ED0](v2, i, v3, 4153542228, 0))
  {
    i->msgh_bits = 0;
    i->msgh_size = v3;
    Port = CFMachPortGetPort(*(*(a1 + 32) + 2088));
    i->msgh_remote_port = 0;
    i->msgh_local_port = Port;
    i->msgh_id = 0;
    v6 = mach_msg(i, 117440774, 0, i->msgh_size, Port, 0x3E8u, 0);
    if (v6 != 268451844)
    {
      break;
    }

    v3 = (i->msgh_size + 71) & 0xFFFFFFFC;
  }

  v8 = v6;
  if (v6)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      if (*(v10 + 133) == 1)
      {
        mt_CachePropertiesForDevice(v10);
      }

      v11 = MTLoggingFramework(v10, v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = *(*(a1 + 32) + 64);
        LODWORD(v13.version) = 67109376;
        HIDWORD(v13.version) = v8;
        LOWORD(v13.info) = 2048;
        *(&v13.info + 2) = v12;
        _os_log_impl(&dword_25AD59000, v11, OS_LOG_TYPE_FAULT, "mach_msg failed: 0x%08x (deviceID 0x%llX)", &v13, 0x12u);
      }
    }

    else
    {
      __MTDeviceCreateMultitouchDispatchSource_block_invoke_cold_1(v8, v7);
    }
  }

  else
  {
    v13.copyDescription = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v13.version = v9;
    *&v13.retain = v9;
    CFMachPortGetContext(*(*(a1 + 32) + 2088), &v13);
    mt_DequeueMultitouchDataMachPortCallBack(*(*(a1 + 32) + 2088), 0, 0, v13.info);
  }

  CFAllocatorDeallocate(v2, i);
  CFRelease(*(a1 + 32));
}

uint64_t MTDeviceSetReport(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 3758097090;
  if (a1)
  {
    if (a4 <= 512)
    {
      if (*(a1 + 212))
      {
        return mt_DeviceSetReportViaDriver(a1, a2, a3, a4);
      }

      else
      {
        return mt_DeviceSetReportViaDriverLegacyUSB(a1, a2, a3, a4);
      }
    }

    else
    {
      return 3758097095;
    }
  }

  return result;
}

uint64_t mt_DeviceSetReportViaDriver(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = 3758097084;
  if (!a1)
  {
    return 3758097101;
  }

  *&v46[15] = -1431655766;
  outputStructCnt = 520;
  outputStruct = a2;
  if (a4 > 0x200)
  {
    puts("Too many bytes for the report to be set");
    return 3758097128;
  }

  v47 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  *v46 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  __memmove_chk();
  v8 = *(a1 + 20);
  connect = v8;
  if (v8)
  {
    v4 = IOConnectCallStructMethod(v8, 2u, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
    if (!v4)
    {
      return v4;
    }

    goto LABEL_13;
  }

  v9 = *(a1 + 16);
  waitTime = 5;
  if (IOServiceWaitQuiet(v9, &waitTime) == -536870186)
  {
    printf("MT Error: service still busy after %d seconds\n", waitTime.tv_sec);
  }

  if (!IOServiceOpen(v9, *MEMORY[0x277D85F48], 0, &connect))
  {
    v4 = IOConnectCallStructMethod(connect, 2u, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
  }

  IOServiceClose(connect);
  if (v4)
  {
LABEL_13:
    if ((gMT_BE_LESS_VERBOSE & 1) == 0)
    {
      printf("Error 0x%08X setting report 0x%02X with length %d\n", v4, a2, a4);
    }
  }

  return v4;
}

void mt_DequeueMultitouchDataMachPortCallBack(__CFMachPort *port, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    v5 = *a4;
    if ((*(*a4 + 2112) & 1) == 0)
    {
      do
      {
        if (!CFMachPortIsValid(port) || !IODataQueueDataAvailable(a4[3]))
        {
          break;
        }

        dataSize = *(v5 + 384);
        v7 = IODataQueueDequeue(a4[3], a4[1], &dataSize);
        if (v7 == -536870181)
        {
          IODataQueueDequeue(a4[3], 0, 0);
        }

        else if (!v7)
        {
          mt_HandleMultitouchFrame(v5, a4[1], dataSize, *(v5 + 384));
        }
      }

      while (*(v5 + 2112) != 1);
    }
  }
}

void mt_HandleMultitouchFrame(uint64_t a1, unsigned __int8 *a2, size_t a3, uint64_t a4)
{
  if (a2)
  {
    __memcpy_chk();
  }

  kdebug_trace();
  if (a2 && a3 && (*(a1 + 135) & 1) == 0)
  {
    if (*(a1 + 5736))
    {
      mach_absolute_time();
    }

    *(a1 + 5748) = 0;
    if (*(a1 + 1872))
    {
      for (i = 0; i != 32; i += 8)
      {
        v9 = *(a1 + i + 1840);
        if (v9)
        {
          v9(a1, 1, *(a1 + i + 1880));
        }
      }
    }

    if (*(a1 + 2296))
    {
      mt_ApplyBinaryFilters(a1, a2, a3, a4);
    }

    else
    {
      mt_ProcessMultitouchFrame(a1, a2, a3);
    }

    if (*(a1 + 5736) && *(a1 + 5748) == 1)
    {
      mach_absolute_time();
      work_interval_join();
      work_interval_notify();
      work_interval_leave();
    }

    if (*(a1 + 1872))
    {
      for (j = 0; j != 32; j += 8)
      {
        v11 = *(a1 + j + 1840);
        if (v11)
        {
          v11(a1, 0, *(a1 + j + 1880));
        }
      }
    }
  }
}

void mt_ProcessMultitouchFrame(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  v101 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    return;
  }

  v6 = (a1 + 4096);
  v7 = *(a1 + 392);
  *(a1 + 2312) = 0;
  *(a1 + 2320) = 0;
  *(a1 + 2328) = 0;
  *(a1 + 2356) = 0;
  *(a1 + 2332) = 0;
  *(a1 + 2340) = 0u;
  bzero((a1 + 2368), 0xC00uLL);
  *(a1 + 5704) = 0u;
  *(a1 + 2360) = 0;
  *(a1 + 5440) = 0;
  mt_PostFullFrameCallbacks(a1, a2, a3);
  ParsedMultitouchFrameRepInitialize(v7);
  *(v7 + 30) = *(a1 + 88);
  *(v7 + 28) = *(a1 + 84);
  *(v7 + 32) = *(a1 + 364);
  v10 = *a2;
  v11 = v6[1631];
  if (v6[1631])
  {
    if (v6[1624] == v10)
    {
      goto LABEL_9;
    }

    v12 = v6 + 1625;
    v13 = 1;
    do
    {
      v14 = v13;
      if (v11 == v13)
      {
        break;
      }

      v15 = *v12++;
      ++v13;
    }

    while (v15 != v10);
    if (v14 < v11)
    {
LABEL_9:
      v16 = (a3 - 1);
      v17 = a2 + 1;
LABEL_10:
      mt_PostExternalMessage(a1, v17, v10, v16);
      goto LABEL_104;
    }
  }

  if (*a2 > 0x59u)
  {
    if (*a2 <= 0x77u)
    {
      if ((v10 - 117) < 3)
      {
        if (MTParse_V4PrecisePathAndImage(a2, a3, v7, a1))
        {
          goto LABEL_62;
        }

        goto LABEL_104;
      }

      if ((v10 - 115) < 2)
      {
        if (MTParse_V3BinaryPathOrImage(a2, a3, v7, a1))
        {
          goto LABEL_62;
        }

        goto LABEL_104;
      }

      if (v10 == 90)
      {
        if (MTParse_SABinary(a2, a3, v7, a1))
        {
          goto LABEL_62;
        }

        goto LABEL_104;
      }

      goto LABEL_114;
    }

    if (*a2 > 0xC4u)
    {
      if ((v10 - 197) < 2)
      {
        if (MTProcess_0xC5_Data(a2, a3, v7, a1))
        {
          goto LABEL_62;
        }

        goto LABEL_104;
      }

      if (v10 == 204 || v10 == 206)
      {
        if (MTProcess_0xCC_Data(a2, a3, v7, a1))
        {
          goto LABEL_62;
        }

        goto LABEL_104;
      }

      goto LABEL_114;
    }

    if (v10 != 120)
    {
      if (v10 == 121)
      {
        if (MTParse_HostPathAndImage(a2, a3, v7))
        {
          goto LABEL_62;
        }

        goto LABEL_104;
      }

      goto LABEL_114;
    }

    if (MTParse_SensorImage(a2, a3, v7, a1))
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (*a2 <= 0x30u)
    {
      if (*a2 <= 0x26u)
      {
        if ((v10 - 36) < 3)
        {
          MTParse_CompactBinaryPath(a2, a3, v7, a1);
          if (v18)
          {
            goto LABEL_62;
          }

          goto LABEL_104;
        }

        goto LABEL_114;
      }

      if (v10 != 39)
      {
        if (v10 == 40)
        {
          if (MTParse_CompactV4BinaryPath(a2, a3, v7, a1))
          {
            goto LABEL_62;
          }

          goto LABEL_104;
        }

        if (v10 != 41)
        {
          goto LABEL_114;
        }
      }

      if (MTParse_CompactV3orV5BinaryPath(a2, a3, v7, a1))
      {
        goto LABEL_62;
      }

      goto LABEL_104;
    }

    if (*a2 > 0x33u)
    {
      if ((v10 - 67) < 3)
      {
        if ((MTParse_BinaryPathOrImage(a2, a3, v7, a1) & 1) == 0)
        {
          goto LABEL_104;
        }

LABEL_62:
        mt_CheckForTimestampErrors(a1, *v7);
        if (!*(a1 + 152))
        {
          if (*(a1 + 133) == 1)
          {
            mt_CachePropertiesForDevice(a1);
          }

          else
          {
            mt_InitializeAlgorithmsForDevice(a1, v19, v20, v21, v22, v23, v24, v25);
          }
        }

        if (*(v7 + 53))
        {
          v26 = 2;
        }

        else
        {
          v26 = 0;
        }

        mt_UpdateDeviceOrientation(a1, v26, 0);
        v30 = *(v7 + 16);
        if (v30 >= *(a1 + 176))
        {
          v31 = *(a1 + 168);
        }

        else
        {
          v31 = *(a1 + 168) + 256;
        }

        *(a1 + 168) = v31 & 0xFFFFFFFFFFFFFF00 | v30;
        *(a1 + 176) = v30;
        if (*(a1 + 210) != *(v7 + 55))
        {
          if (*(v7 + 55))
          {
            if (*(a1 + 1224))
            {
              for (i = 0; i != 32; i += 8)
              {
                v33 = *(a1 + i + 1192);
                if (v33)
                {
                  v33(a1, 29, *(a1 + i + 1232));
                }
              }
            }
          }

          else if (*(a1 + 1224))
          {
            for (j = 0; j != 32; j += 8)
            {
              v35 = *(a1 + j + 1192);
              if (v35)
              {
                v35(a1, 30, *(a1 + j + 1232));
              }
            }
          }

          *(a1 + 210) = *(v7 + 55);
        }

        mt_PostLegacyFrameHeaderCallbacks(a1, v7, v27, v28, v29);
        mt_PostButtonStateCallbacks(a1, *(v7 + 52));
        if (*(a1 + 1080))
        {
          for (k = 0; k != 32; k += 8)
          {
            v37 = *(a1 + k + 1048);
            if (v37)
            {
              v37(a1, *(a1 + 168), a3, 1, *(a1 + k + 1088));
            }
          }
        }

        mt_PostForceCentroidCallbacks(a1, v7);
        if (!*(a1 + 152))
        {
          puts("Algorithms uninitialized!");
          goto LABEL_98;
        }

        if (*(v7 + 39))
        {
LABEL_98:
          if (*(a1 + 1080))
          {
            for (m = 0; m != 32; m += 8)
            {
              v41 = *(a1 + m + 1048);
              if (v41)
              {
                v41(a1, *(a1 + 168), a3, 0, *(a1 + m + 1088));
              }
            }
          }

          *(a1 + 180) = *v7;
          goto LABEL_104;
        }

        v38 = *(v7 + 8);
        if (v38 > 0x73)
        {
          if (v38 == 116 || v38 == 204 || v38 == 206)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v39 = v38 - 36;
          if (v39 <= 0x20 && ((1 << v39) & 0x10000E03DLL) != 0)
          {
LABEL_96:
            mtalg_ProcessPathFrame(a1, v7, *(a1 + 168), *v7);
            goto LABEL_98;
          }
        }

        if (*(v7 + 11) != 1 || (*(v7 + 12) & 1) != 0)
        {
          mtalg_ProcessImageFrame(a1, v7, *(v7 + 40), *(a1 + 168), *v7);
          goto LABEL_98;
        }

        goto LABEL_96;
      }

      if (v10 == 52)
      {
        if (MTParse_CompactV10BinaryPath(a2, a3, v7, a1))
        {
          goto LABEL_62;
        }

        goto LABEL_104;
      }

LABEL_114:
      if (a3 >= 2 && v10 == 64)
      {
        if (a3 < 3 || a2[1])
        {
          switch(a2[1])
          {
            case 1u:
              if (*(a1 + 1224))
              {
                for (n = 0; n != 32; n += 8)
                {
                  v52 = *(a1 + n + 1192);
                  if (v52)
                  {
                    v52(a1, 1, *(a1 + n + 1232));
                  }
                }
              }

              break;
            case 2u:
              *(a1 + 2136) = 0;
              *(a1 + 2128) = 0;
              *(a1 + 2140) = 0;
              *(a1 + 180) = 0;
              *(a1 + 176) = 0;
              mt_CachePropertiesForDevice(a1);
              if (*(a1 + 1224))
              {
                for (ii = 0; ii != 32; ii += 8)
                {
                  v89 = *(a1 + ii + 1192);
                  if (v89)
                  {
                    v89(a1, 5, *(a1 + ii + 1232));
                  }
                }
              }

              break;
            case 3u:
              if (*(a1 + 1224))
              {
                for (jj = 0; jj != 32; jj += 8)
                {
                  v87 = *(a1 + jj + 1192);
                  if (v87)
                  {
                    v87(a1, 6, *(a1 + jj + 1232));
                  }
                }
              }

              goto LABEL_236;
            case 4u:
              if (*(a1 + 1224))
              {
                for (kk = 0; kk != 32; kk += 8)
                {
                  v85 = *(a1 + kk + 1192);
                  if (v85)
                  {
                    v85(a1, 7, *(a1 + kk + 1232));
                  }
                }
              }

              break;
            case 5u:
              *(a1 + 184) = 0;
              if (*(a1 + 1224))
              {
                for (mm = 0; mm != 32; mm += 8)
                {
                  v77 = *(a1 + mm + 1192);
                  if (v77)
                  {
                    v77(a1, 8, *(a1 + mm + 1232));
                  }
                }
              }

LABEL_236:
              mt_FlushInternalStateForDevice(a1);
              break;
            case 6u:
              if (*(a1 + 1224))
              {
                for (nn = 0; nn != 32; nn += 8)
                {
                  v81 = *(a1 + nn + 1192);
                  if (v81)
                  {
                    v81(a1, 14, *(a1 + nn + 1232));
                  }
                }
              }

              break;
            case 7u:
              if (*(a1 + 1224))
              {
                for (i1 = 0; i1 != 32; i1 += 8)
                {
                  v91 = *(a1 + i1 + 1192);
                  if (v91)
                  {
                    v91(a1, 15, *(a1 + i1 + 1232));
                  }
                }
              }

              break;
            case 8u:
              if (*(a1 + 1224))
              {
                for (i2 = 0; i2 != 32; i2 += 8)
                {
                  v93 = *(a1 + i2 + 1192);
                  if (v93)
                  {
                    v93(a1, 12, *(a1 + i2 + 1232));
                  }
                }
              }

              break;
            case 9u:
              if (*(a1 + 1224))
              {
                for (i3 = 0; i3 != 32; i3 += 8)
                {
                  v97 = *(a1 + i3 + 1192);
                  if (v97)
                  {
                    v97(a1, 13, *(a1 + i3 + 1232));
                  }
                }
              }

              break;
            case 0xAu:
              if (*(a1 + 1224))
              {
                for (i4 = 0; i4 != 32; i4 += 8)
                {
                  v95 = *(a1 + i4 + 1192);
                  if (v95)
                  {
                    v95(a1, 16, *(a1 + i4 + 1232));
                  }
                }
              }

              break;
            case 0xBu:
              if (*(a1 + 1224))
              {
                for (i5 = 0; i5 != 32; i5 += 8)
                {
                  v75 = *(a1 + i5 + 1192);
                  if (v75)
                  {
                    v75(a1, 17, *(a1 + i5 + 1232));
                  }
                }
              }

              break;
            case 0xEu:
              if (*(a1 + 1224))
              {
                for (i6 = 0; i6 != 32; i6 += 8)
                {
                  v83 = *(a1 + i6 + 1192);
                  if (v83)
                  {
                    v83(a1, 32, *(a1 + i6 + 1232));
                  }
                }
              }

              break;
            case 0xFu:
              if (*(a1 + 1224))
              {
                for (i7 = 0; i7 != 32; i7 += 8)
                {
                  v79 = *(a1 + i7 + 1192);
                  if (v79)
                  {
                    v79(a1, 33, *(a1 + i7 + 1232));
                  }
                }
              }

              break;
            case 0x10u:
              if (*(a1 + 1224))
              {
                for (i8 = 0; i8 != 32; i8 += 8)
                {
                  v73 = *(a1 + i8 + 1192);
                  if (v73)
                  {
                    v73(a1, 34, *(a1 + i8 + 1232));
                  }
                }
              }

              break;
            default:
              goto LABEL_104;
          }
        }

        else if (*(a1 + 1224))
        {
          v43 = 0;
          v44 = a2[2];
          do
          {
            v45 = *(a1 + v43 + 1192);
            if (v45)
            {
              v45(a1, v44, *(a1 + v43 + 1232));
            }

            v43 += 8;
          }

          while (v43 != 32);
        }

        goto LABEL_104;
      }

      if (v10 == 80)
      {
        goto LABEL_104;
      }

      if (a3 >= 2 && v10 == 96)
      {
        v46 = a2[1];
        if (*(a1 + 1224))
        {
          for (i9 = 0; i9 != 32; i9 += 8)
          {
            v48 = *(a1 + i9 + 1192);
            if (v48)
            {
              v48(a1, (v46 + 300), *(a1 + i9 + 1232));
            }
          }

          v46 = a2[1];
        }

        if (v46 == 2)
        {
          *(a1 + 2136) = 0;
          *(a1 + 2128) = 0;
          *(a1 + 2140) = 0;
          *(a1 + 180) = 0;
          *(a1 + 184) = 0;
          mt_CachePropertiesForDevice(a1);
          if (*(a1 + 1224))
          {
            for (i10 = 0; i10 != 32; i10 += 8)
            {
              v60 = *(a1 + i10 + 1192);
              if (v60)
              {
                v60(a1, 5, *(a1 + i10 + 1232));
              }
            }
          }
        }

        else if (v46 == 1)
        {
          if (*(a1 + 1224))
          {
            for (i11 = 0; i11 != 32; i11 += 8)
            {
              v50 = *(a1 + i11 + 1192);
              if (v50)
              {
                v50(a1, 6, *(a1 + i11 + 1232));
              }
            }
          }
        }

        else if (a3 >= 3 && v46 == 48)
        {
          v61 = a2[2] ? 35 : 36;
          if (*(a1 + 1224))
          {
            for (i12 = 0; i12 != 32; i12 += 8)
            {
              v63 = *(a1 + i12 + 1192);
              if (v63)
              {
                v63(a1, v61, *(a1 + i12 + 1232));
              }
            }
          }
        }

        goto LABEL_104;
      }

      if (*a2 > 0x7Fu)
      {
        if (v10 != 128)
        {
          if (v10 == 129)
          {
            *buf = 0xAAAAAAAAAAAAAAAALL;
            if (MTParse_HIDOffTableHeightReport(a2, a3, buf))
            {
              mt_PostOffTableHeightCallbacks(a1, *&buf[4], 0, 0xFFFFFFFFLL);
            }

            goto LABEL_104;
          }

          if (v10 != 130)
          {
            goto LABEL_182;
          }

          *&v53 = 0xAAAAAAAAAAAAAAAALL;
          *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *buf = v53;
          *&buf[16] = v53;
          if (!MTParse_HIDRelativePointerV2Report(a2, a3, buf))
          {
            goto LABEL_104;
          }

          mt_PostTrackingCallbacks(a1, *&buf[8], *&buf[12], *&buf[2]);
          v54 = *&buf[8];
          v55 = *&buf[12];
          v56 = *&buf[4];
          v57 = *&buf[24];
          v58 = a1;
LABEL_181:
          mt_PostRelativePointerCallbacks(v58, v54, v55, v56, v57);
          goto LABEL_104;
        }

        memset(buf, 170, 24);
        if (!MTParse_HIDRelativePointerReport(a2, a3, buf))
        {
          goto LABEL_104;
        }

        mt_PostTrackingCallbacks(a1, *&buf[8], *&buf[12], *&buf[2]);
        v68 = *&buf[8];
        v67 = *&buf[12];
        v66 = *&buf[4];
        v57 = mach_absolute_time();
        v58 = a1;
        v54 = v68;
        v55 = v67;
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 82)
          {
            MTParse_TimestampSync(a2, a3, a1);
            goto LABEL_104;
          }

          if (v10 == 83)
          {
            *buf = 0xAAAAAAAAAAAAAAAALL;
            v99 = -21846;
            v98 = -1431655766;
            if (MTParse_ExternalMessage(a2, a3, buf, &v99, &v98))
            {
              v17 = *buf;
              v10 = v99;
              v16 = v98;
              goto LABEL_10;
            }

            goto LABEL_104;
          }

LABEL_182:
          if (*(a1 + 133) == 1)
          {
            mt_CachePropertiesForDevice(a1);
          }

          v69 = MTLoggingFramework(v8, v9);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            v70 = *a2;
            v71 = *(a1 + 64);
            *buf = 67109632;
            *&buf[4] = v70;
            *&buf[8] = 1024;
            *&buf[10] = a3;
            *&buf[14] = 2048;
            *&buf[16] = v71;
            _os_log_impl(&dword_25AD59000, v69, OS_LOG_TYPE_DEBUG, "Data packet with format 0x%02X length %u. Ignoring... (deviceID 0x%llX)", buf, 0x18u);
          }

          goto LABEL_104;
        }

        memset(buf, 170, 6);
        if (!MTParse_HIDMouseReport(a2, a3, buf))
        {
          goto LABEL_104;
        }

        mt_PostTrackingCallbacks(a1, buf[2], buf[3], 400);
        v64 = buf[2];
        v65 = buf[3];
        v66 = buf[1];
        v57 = mach_absolute_time();
        v58 = a1;
        v54 = v64;
        v55 = v65;
      }

      v56 = v66;
      goto LABEL_181;
    }

    if (v10 == 49)
    {
      if ((MTParse_CompactV7BinaryPath(a2, a3, v7, a1) & 1) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_62;
    }

    if (v10 == 50)
    {
      if (MTParse_CompactV8BinaryPath(a2, a3, v7, a1))
      {
        goto LABEL_62;
      }
    }

    else if (MTParse_CompactV9BinaryPath(a2, a3, v7, a1))
    {
      goto LABEL_62;
    }
  }

LABEL_104:
  v42 = *(a1 + 1768);
  if (v42)
  {
    if ((*(a1 + 2076) & *(a1 + 2312)) != 0)
    {
      v42(a1, a1 + 2312, *(a1 + 1808));
    }
  }
}

uint64_t mt_PostFullFrameCallbacks(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(result + 2076))
  {
    *(result + 2312) |= 1u;
    *(result + 2320) = a2;
    *(result + 2328) = a3;
  }

  if (*(result + 1152))
  {
    for (i = 0; i != 32; i += 8)
    {
      v7 = *(v5 + i + 1120);
      if (v7)
      {
        result = v7(v5, a2, a3, *(v5 + i + 1160));
      }
    }
  }

  return result;
}

void ParsedMultitouchFrameRepInitialize(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  bzero(a1, 0x678uLL);
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
}

uint64_t MTLoggingFramework(uint64_t a1, uint64_t a2)
{
  if (MTLoggingFramework_onceToken != -1)
  {
    MTLoggingFramework_cold_1();
  }

  return MTLoggingFramework___logObj;
}

uint64_t MTDevicePowerSetState(io_service_t *a1, int a2)
{
  v77 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v4;
  v42 = v4;
  v39 = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  v27 = v4;
  v28 = v4;
  v26 = v4;
  v25 = v4;
  v24 = v4;
  v23 = v4;
  v22 = v4;
  v21 = v4;
  v20 = v4;
  v19 = v4;
  v18 = v4;
  v17 = v4;
  v16 = v4;
  v15 = v4;
  v14 = v4;
  v13 = v4;
  v12 = v4;
  v11 = v4;
  memset(__b, 170, sizeof(__b));
  inputStruct = 4;
  if (a2)
  {
    if (a2 == 2)
    {
      LOBYTE(v11) = 2;
      v6 = MTDeviceIssueDriverRequest(a1, &inputStruct, __b);
      goto LABEL_8;
    }

    if (a2 != 1)
    {
      return 3758097090;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  LOBYTE(v11) = v5;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75 = v7;
  v76 = v7;
  v73 = v7;
  v74 = v7;
  v71 = v7;
  v72 = v7;
  v69 = v7;
  v70 = v7;
  v67 = v7;
  v68 = v7;
  v65 = v7;
  v66 = v7;
  v63 = v7;
  v64 = v7;
  v61 = v7;
  v62 = v7;
  v60 = v7;
  v59 = v7;
  v58 = v7;
  v57 = v7;
  v56 = v7;
  v55 = v7;
  v54 = v7;
  v53 = v7;
  v52 = v7;
  v51 = v7;
  v50 = v7;
  v49 = v7;
  v48 = v7;
  v47 = v7;
  v46 = v7;
  v45 = v7;
  memset(outputStruct, 170, sizeof(outputStruct));
  v44 = 12;
  MTDeviceIssueDriverRequest(a1, &v44, outputStruct);
  v6 = MTDeviceIssueDriverRequest(a1, &inputStruct, __b);
  MTDeviceUpdateUILockState(a1, 1);
LABEL_8:
  if (v6)
  {
    return v6;
  }

  else
  {
    return __b[0];
  }
}

uint64_t MTDeviceIssueDriverRequest(io_service_t *a1, void *inputStruct, void *outputStruct)
{
  v3 = 3758097090;
  if (a1 && inputStruct && outputStruct)
  {
    v7 = a1[53];
    v8 = v7 > 4;
    v9 = (1 << v7) & 0x16;
    if (v8 || v9 == 0)
    {
      return 3758097095;
    }

    else
    {
      v11 = a1[5];
      if (v11)
      {
        outputStructCnt = 516;
        return IOConnectCallStructMethod(v11, 4u, inputStruct, 0x204uLL, outputStruct, &outputStructCnt);
      }

      else
      {
        connect = 0;
        outputStructCnt = 5;
        if (IOServiceWaitQuiet(a1[4], &outputStructCnt) == -536870186)
        {
          printf("MT Error: service still busy after %d seconds\n", outputStructCnt.tv_sec);
        }

        v3 = IOServiceOpen(a1[4], *MEMORY[0x277D85F48], 0, &connect);
        if (!v3)
        {
          v13 = 516;
          v3 = IOConnectCallStructMethod(connect, 4u, inputStruct, 0x204uLL, outputStruct, &v13);
        }

        IOServiceClose(connect);
      }
    }
  }

  return v3;
}

uint64_t MTParse_SABinary(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v10 = 0;
  v11 = v14;
  v8 = a1 + 1;
  v9 = a2 - 1;
  v12 = 0xAAAAAAAAAAAAAA00;
  v13 = 0;
  if (v9 >= 2 && *(a1 + 1) == 1 && *(a1 + 2) == 2 && (*(a3 + 80) = 90, *(a3 + 82) = 540, *(a3 + 8) = 90, *(a3 + 15) = 2, *(a3 + 62) = *(a3 + 102), *(a3 + 64) = *(a3 + 104), *(a3 + 66) = *(a3 + 98), *(a3 + 68) = *(a3 + 100), *(a3 + 72) = *(a3 + 96), v5 = *(a3 + 88), *(a3 + 73) = v5, *(a3 + 36) = 16, *(a3 + 52) = 0, *(a3 + 54) = v5, *(a3 + 11) = 0, *(a3 + 12) = *(a3 + 94) != 0, *(a3 + 113) = 0, SABinaryParser::parseRunFrame(&v8, MTParse_SABinary::$_0::__invoke, MTParse_SABinary::$_1::__invoke, MTParse_SABinary::$_2::__invoke)))
  {
    v6 = *(a3 + 11);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t SABinaryParser::parseRunFrame(void *a1, unsigned int (*a2)(void), uint64_t (*a3)(uint64_t, unsigned __int8 *, char *), uint64_t (*a4)(void, unsigned __int8 *, unsigned __int8 *))
{
  v4 = a1[1];
  v5 = a1[2];
  if ((v4 - v5) < 2)
  {
    return 0;
  }

  a1[2] = v5 + 2;
  if ((v4 - (v5 + 2)) < 4)
  {
    return 0;
  }

  v8 = *a1 + v5 + 2;
  v9 = v5 + 6;
  a1[2] = v9;
  v10 = *(v8 + 2);
  if (v4 - v9 < v10)
  {
    return 0;
  }

  a1[2] = v9 + v10;
  if (a2)
  {
    if (!a2(a1[3]))
    {
      return 0;
    }
  }

  return SABinaryParser::parseInjExtData(a1, a3, a4, 0);
}

uint64_t mt_ForwardBinaryContacts(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  result = MTAlg_GetAlgLibStateRef(a1);
  if (result)
  {
    v9 = (result + 376);
  }

  else
  {
    v9 = 0;
  }

  if (a2 && result)
  {
    v10 = a4 / 1000.0;
    if (a2[72])
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = a2 + 116;
      v25 = a3;
      v26 = a2 + 116;
      do
      {
        if (a2[113] == 1)
        {
          v15 = mt_PathLifeCycleFromPreciseContact(a1, v9, v14, a2, a3, v10);
          if (v15)
          {
            v15[24] = *(v14 + 12);
LABEL_13:
            v16 = *v15;
            v17 = v15[7];
            v18 = (v15 + 2);
LABEL_24:
            MTAlg_IssuePathCallbacks(a1, v16, v17, v18);
          }
        }

        else if (a2[112] == 1)
        {
          v15 = mt_PathLifeCycleFromPreciseContact(a1, v9, &v26[v11], a2, a3, v10);
          if (v15)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v19 = &v26[v12];
          v20 = v26[v12];
          AlgLibStateRef = MTAlg_GetAlgLibStateRef(a1);
          if (AlgLibStateRef)
          {
            if (v20 - 1 >= 0x1F)
            {
              v22 = (AlgLibStateRef + 520);
            }

            else
            {
              v22 = (AlgLibStateRef + 520 + 616 * v20);
            }

            if (v19[1] == 1)
            {
              v23 = v9;
              v24 = *v22;
              bzero(v22, 0x268uLL);
              *v22 = v24;
              v9 = v23;
              a3 = v25;
              *(v22 + 146) = xmmword_25AD7B390;
              *(v22 + 150) = 0u;
            }

            if ((a2[10] & 1) != 0 || MTAlg_AlwaysNeedsVelocityCalculated(a1))
            {
              mt_CalculateMTBinaryContactVelocity((v22 + 2), v19, v10);
            }

            mt_FillMTContactDirectFromBinary(v9, (v22 + 2), v19, a3, (a2[76] & 2) != 0, v10);
            v16 = *v22;
            v17 = v22[7];
            v18 = (v22 + 2);
            goto LABEL_24;
          }
        }

        ++v13;
        v12 += 30;
        v11 += 48;
        v14 += 60;
      }

      while (v13 < a2[72]);
    }

    mt_CleanupOldPaths(a1, a3, v10);

    return MTAlg_IssueContactFrameCallbacks(a1, a3, v10);
  }

  return result;
}

uint64_t MTAlg_IssuePathCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (*(a1 + 504) || *(a1 + 1656) || (*(a1 + 2076) & 4) != 0)
  {
    if ((*(a1 + 2076) & 4) != 0)
    {
      *(a1 + 2312) |= 4u;
      v9 = *(a1 + 2360);
      v10 = (a1 + 96 * v9);
      *(a1 + 2360) = v9 + 1;
      v11 = *a4;
      v10[149] = a4[1];
      v10[148] = v11;
      v12 = a4[2];
      v13 = a4[3];
      v14 = a4[4];
      v10[153] = a4[5];
      v10[152] = v14;
      v10[151] = v13;
      v10[150] = v12;
    }

    v15 = 0;
    v8 = 0;
    do
    {
      v16 = *(a1 + v15 + 472);
      if (v16)
      {
        v16(a1, a2, a3, a4);
        v8 = 1;
      }

      v17 = *(a1 + v15 + 1624);
      if (v17)
      {
        v17(a1, a2, a3, a4, *(a1 + v15 + 1664));
        v8 = 1;
      }

      v15 += 8;
    }

    while (v15 != 32);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t mtalg_ProcessPathFrame(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = MTAlg_GetAlgLibStateRef(a1);
  if (result)
  {
    alg_UpdateTimeState((result + 488), a3, a4);

    return mt_ForwardPathFrame(a1, a2, a3, a4);
  }

  return result;
}

_DWORD *alg_UpdateTimeState(_DWORD *result, int a2, int a3)
{
  v3 = result[1];
  *result = v3;
  result[1] = a2;
  v4 = result[3];
  result[3] = a3;
  result[4] = v4;
  result[2] = a2 - v3;
  if (v3 && (v5 = a3 - v4, v5 >= 3))
  {
    result[5] = 12 * v5;
    v6 = 16 * v5;
  }

  else
  {
    v7 = result[6];
    result[5] = v7 * (a2 - v3);
    v6 = v7 / 192;
  }

  result[7] = v6;
  return result;
}

uint64_t MTDeviceNotifyWorkInterval(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  result = 0;
  *(a1 + 5744) = a2;
  *(a1 + 5748) = 1;
  return result;
}

void mt_PostLegacyFrameHeaderCallbacks(void *result, uint64_t a2, uint8x8_t a3, uint8x8_t a4, uint8x8_t a5)
{
  if (!*(result + 1296) && (*(result + 2076) & 2) == 0)
  {
    return;
  }

  v6 = *(a2 + 15);
  if (*(a2 + 9) == 1)
  {
    if (*(a2 + 15) <= 3u)
    {
      if (v6 < 3)
      {
        MTConvert_CompactHeaderToV2Header(a2 + 80, &v29);
LABEL_25:
        LODWORD(v7) = v29;
        v10 = vmovl_u8(*&v7).u64[0];
        v11 = v30;
        v8.i32[0] = v31;
        v12 = vmovl_u8(v8).u64[0];
        v13 = v32;
        v14 = v33;
        v15 = v34;
        v16 = v35;
        v17 = v36;
        v18 = v37;
        v9.i32[0] = v39;
        v19 = vmovl_u8(v9).u64[0];
        v20 = v38;
        goto LABEL_26;
      }
    }

    else if (*(a2 + 15) <= 7u)
    {
      if (v6 != 4)
      {
        if (v6 != 5)
        {
          return;
        }

        v7 = MTConvert_CompactV5HeaderToV2Header(a2 + 80, &v29);
        goto LABEL_25;
      }
    }

    else if (v6 != 8)
    {
      if (v6 == 9)
      {
        v7 = MTConvert_CompactV9HeaderToV2Header(a2 + 80, &v29);
      }

      else
      {
        if (v6 != 10)
        {
          return;
        }

        MTConvert_CompactV10HeaderToV2Header(a2 + 80, &v29);
      }

      goto LABEL_25;
    }

    v7 = MTConvert_CompactV3HeaderToV2Header(a2 + 80, &v29);
    goto LABEL_25;
  }

  if (*(a2 + 15) > 2u)
  {
    if (v6 == 3)
    {
      MTConvert_V3HeaderToV2Header((a2 + 80), &v29);
    }

    else
    {
      if (v6 != 4)
      {
        return;
      }

      MTConvert_V4HeaderToV2Header(a2 + 80, &v29);
    }

    goto LABEL_25;
  }

  a3.i32[0] = *(a2 + 80);
  v10 = vmovl_u8(a3).u64[0];
  v11 = *(a2 + 84);
  a4.i32[0] = *(a2 + 88);
  v12 = vmovl_u8(a4).u64[0];
  v13 = *(a2 + 92);
  v14 = *(a2 + 94);
  v15 = *(a2 + 96);
  v16 = *(a2 + 97);
  v17 = *(a2 + 98);
  v18 = *(a2 + 100);
  a5.i32[0] = *(a2 + 104);
  v19 = vmovl_u8(a5).u64[0];
  v20 = *(a2 + 102);
LABEL_26:
  if ((*(result + 2076) & 2) != 0)
  {
    *(result + 578) |= 2u;
    *(result + 583) = vuzp1_s8(v10, v10).u32[0];
    *(result + 584) = v11;
    *(result + 585) = vuzp1_s8(v12, v10).u32[0];
    *(result + 1172) = v13;
    *(result + 1173) = v14;
    *(result + 2348) = v15;
    *(result + 2349) = v16;
    *(result + 1175) = v17;
    *(result + 1176) = v18;
    *(result + 1177) = v20;
    *(result + 589) = vuzp1_s8(v19, v10).u32[0];
  }

  if (*(result + 1296))
  {
    v21 = 0;
    v22 = vuzp1_s8(v10, v10);
    v28 = v22.i32[0];
    v23 = vuzp1_s8(v12, v22);
    v27 = v23.i32[0];
    v26 = vuzp1_s8(v19, v23).u32[0];
    do
    {
      v24 = result[v21 + 158];
      if (v24)
      {
        v25 = result[v21 + 163];
        v29 = v28;
        v30 = v11;
        v31 = v27;
        v32 = v13;
        v33 = v14;
        v34 = v15;
        v35 = v16;
        v36 = v17;
        v37 = v18;
        v38 = v20;
        v39 = v26;
        v24(result, &v29, v25);
      }

      ++v21;
    }

    while (v21 != 4);
  }
}

uint64_t MTParse_SABinary_Paths(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __MTDevice *a4)
{
  v4 = *(a1 + 2);
  if (v4 < 4)
  {
    return 0;
  }

  v5 = *a2;
  if (((16 * ((3 * v5) & 0x3FF)) | 4u) > v4)
  {
    return 0;
  }

  *(a3 + 96) = v5;
  v7 = *(a2 + 1);
  *(a3 + 100) = v7;
  *(a3 + 97) = 48;
  *(a3 + 72) = v5;
  *(a3 + 68) = v7;
  *(a3 + 11) = 1;
  return MTParse_PrecisePathPayload(a2 + 4, *(a1 + 2) - 4, a3, a4, *a2, 0, 48 * v5, 0);
}

uint64_t MTParse_SABinary::$_2::__invoke(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a2 + 18);
  v3 = a2 + 18;
  v4 = v5;
  if (v5 == 12293)
  {
    return MTParse_SABinary_FireflyPaths(v3, a3, *a1, a1[1]);
  }

  if (v4 == 12288)
  {
    return MTParse_SABinary_Paths(v3, a3, *a1, a1[1]);
  }

  return 1;
}

uint64_t mt_UpdateDeviceOrientation(uint64_t result, int a2, int a3)
{
  if (*(result + 208) != a2)
  {
    *(result + 208) = a2;
    if (a2 == 2)
    {
      if (a3)
      {
        v3 = 19;
        return mt_PostNotificationEventToDriver(result, v3);
      }

      v4 = 119;
      return mt_PostNotificationEvent(result, v4);
    }

    if (!a2)
    {
      if (a3)
      {
        v3 = 118;
        return mt_PostNotificationEventToDriver(result, v3);
      }

      v4 = 18;
      return mt_PostNotificationEvent(result, v4);
    }
  }

  return result;
}

uint64_t MTParse_SABinary::$_0::__invoke(uint64_t *a1, uint64_t a2)
{
  if (*a2 != 0x2000 || *(a2 + 2) < 0x10u)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (!*(a2 + 4) && v3 == 0)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *(a2 + 4) / 0x3E8uLL;
  *(v5 + 84) = v6;
  *(v5 + 81) = v3;
  *(v5 + 16) = v3;
  *v5 = v6;
  return 1;
}

uint64_t MTParse_PrecisePathPayload(unsigned __int8 *a1, int a2, MTParsedMultitouchFrameRep_t *a3, __MTDevice *a4, int a5, int a6, unsigned int a7, int a8)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*(a3 + 11) != 1)
  {
    return a7 == 0;
  }

  v9 = a8 ? 2 : 32;
  if (!a7 || v9 < a5 || a5 < 1 || (a7 + a6) > a2 || a7 % a5)
  {
    return a7 == 0;
  }

  v13 = 0;
  v14 = a3 + 116;
  v15 = (a7 / a5);
  v16 = a5;
  v17 = &a1[a6];
  v18 = vdup_n_s32(0x42C80000u);
  v19 = a3 + 116;
  v57 = v17;
  v58 = a3 + 116;
  do
  {
    if (a8)
    {
      v20 = v14;
    }

    else
    {
      v20 = v19;
    }

    v21 = memcpy(v20, &v17[v13 * v15], v15);
    v23 = v20[2];
    v24 = bswap32(v20[1]);
    if (a4->var21 == 1)
    {
      v25 = v20[1];
    }

    else
    {
      v25 = v24;
    }

    v20[1] = v25;
    v26 = bswap32(v23);
    if (a4->var21 == 1)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v20[2] = v27;
    v28 = v20[4];
    v29 = bswap32(v20[3]);
    if (a4->var21 == 1)
    {
      v30 = v20[3];
    }

    else
    {
      v30 = v29;
    }

    v20[3] = v30;
    v31 = bswap32(v28);
    if (a4->var21 == 1)
    {
      v32 = v28;
    }

    else
    {
      v32 = v31;
    }

    v20[4] = v32;
    v33 = v20[6];
    v34 = bswap32(v20[5]);
    if (a4->var21 == 1)
    {
      v35 = v20[5];
    }

    else
    {
      v35 = v34;
    }

    v20[5] = v35;
    v36 = bswap32(v33);
    if (a4->var21 == 1)
    {
      v37 = v33;
    }

    else
    {
      v37 = v36;
    }

    v20[6] = v37;
    v38 = v20[8];
    v39 = bswap32(v20[7]);
    if (a4->var21 == 1)
    {
      v40 = v20[7];
    }

    else
    {
      v40 = v39;
    }

    v20[7] = v40;
    v42 = v20[9];
    v41 = v20[10];
    v43 = bswap32(v41);
    if (a4->var21 != 1)
    {
      v41 = v43;
    }

    v20[10] = v41;
    v44 = bswap32(v38);
    if (a4->var21 == 1)
    {
      v44 = v38;
    }

    v20[8] = v44;
    v45 = bswap32(v42);
    if (a4->var21 == 1)
    {
      v46 = v42;
    }

    else
    {
      v46 = v45;
    }

    v20[9] = v46;
    v47 = *(v20 + 22);
    if (a4->var21 == 1)
    {
      if (!a8)
      {
        goto LABEL_63;
      }

      v48 = &v58[60 * v13 + 48];
      v49 = *(v14 + 12);
    }

    else
    {
      LOWORD(v47) = __rev16(v47);
      *(v20 + 22) = v47;
      *(v20 + 23) = bswap32(*(v20 + 23)) >> 16;
      if ((a8 & 1) == 0)
      {
LABEL_63:
        *(a3 + 112) = 1;
        goto LABEL_64;
      }

      v48 = (v14 + 48);
      v49 = bswap32(*(v14 + 12));
    }

    *v48 = v49;
    v50 = *(v14 + 13);
    v51 = *(v14 + 14);
    v52 = bswap32(v50);
    if (a4->var21 != 1)
    {
      v50 = v52;
    }

    *(v14 + 13) = v50;
    v53 = bswap32(v51);
    if (a4->var21 == 1)
    {
      v54 = v51;
    }

    else
    {
      v54 = v53;
    }

    *(v14 + 14) = v54;
    *(a3 + 113) = 1;
    *(v20 + 22) = v47 | 0x1000;
    if (v14[2] != 7 && a4->var47)
    {
      if (a4->var37)
      {
        mt_CachePropertiesForDevice(a4);
      }

      v55 = MTLoggingFramework(v21, v22);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        var13 = a4->var13;
        *buf = 134217984;
        v60 = var13;
        _os_log_impl(&dword_25AD59000, v55, OS_LOG_TYPE_DEFAULT, "Non tstamp-synced contact detected. Clearing device timestamp offset (deviceID 0x%llX)", buf, 0xCu);
      }

      a4->var47 = 0;
      v17 = v57;
    }

    if (*(v20 + 5) == 0.0 || *(v20 + 6) == 0.0)
    {
      *(v20 + 5) = v18;
    }

LABEL_64:
    ++v13;
    v14 += 60;
    v19 += 48;
    --v16;
  }

  while (v16);
  return 1;
}

uint64_t SABinaryParser::parseInjExtData(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned __int8 *, char *), uint64_t (*a3)(void, unsigned __int8 *, unsigned __int8 *), uint64_t (*a4)(void))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 <= v5)
  {
    return 1;
  }

  while (1)
  {
    v10 = (*a1 + v5);
    v11 = *v10;
    if ((v11 & 0x80000000) == 0)
    {
      if (v4 - v5 < 0x12)
      {
        return 0;
      }

      v12 = *v10;
      *(a1 + 16) = v5 + 18;
      if (v12 > 0x3F)
      {
        return 0;
      }

      if (v12 == 3)
      {
        if (a4 && (a4(*(a1 + 24)) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v4 - (v5 + 18) < 4)
        {
          return 0;
        }

        v19 = v5 + 22;
        *(a1 + 16) = v19;
        v20 = *(v10 + 10);
        if (v4 - v19 < v20)
        {
          return 0;
        }

        *(a1 + 16) = v19 + v20;
        if (v12 == 2)
        {
          if (a3)
          {
            result = a3(*(a1 + 24), v10, v10 + 22);
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_28;
        }

        if (v12 != 1)
        {
          return 0;
        }

        if (a2)
        {
          v17 = *(a1 + 24);
          v18 = v10 + 22;
LABEL_21:
          if ((a2(v17, v10, v18) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_28;
        }
      }

      goto LABEL_28;
    }

    v13 = *(a1 + 40);
    if (!v13)
    {
      return 0;
    }

    v14 = v11 & 0x7F;
    if (v14 >= *(a1 + 32))
    {
      return 0;
    }

    v15 = (v13 + 22 * v14);
    v16 = *(v15 + 10);
    if (v4 - v5 <= v16)
    {
      return 0;
    }

    *(a1 + 16) = v5 + v16 + 1;
    if (*v15 == 1)
    {
      if (!a2)
      {
        goto LABEL_28;
      }

      v17 = *(a1 + 24);
      v18 = v10 + 1;
      v10 = v15;
      goto LABEL_21;
    }

    if (a3 && (a3(*(a1 + 24), v15, v10 + 1) & 1) == 0)
    {
      return 0;
    }

LABEL_28:
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 <= v5)
    {
      return 1;
    }
  }
}

uint64_t mt_CheckForTimestampErrors(uint64_t result, unsigned int a2)
{
  v2 = result;
  v44 = *MEMORY[0x277D85DE8];
  v3 = *(result + 2128 + 4 * *(result + 2140));
  v4 = *(result + 2140) + 1 - 3 * ((21846 * (*(result + 2140) + 1)) >> 16);
  *(result + 2140) = v4;
  *(result + 2128 + 4 * v4) = a2;
  if (a2)
  {
    if (v3 <= a2)
    {
      return result;
    }

    puts("\nERROR: timestamps out of order (time travel, eh?)!");
    printf("last == %u, curr == %u\n", v3, a2);
  }

  else
  {
    puts("\nERROR: timestamp invalid!");
  }

  printf("timestamps: (most recent timestamp is at index %d\n\t", *(v2 + 2140));
  for (i = 2128; i != 2140; i += 4)
  {
    printf("0x%08X (%ums)  ", *(v2 + i), *(v2 + i));
  }

  puts("\n");
  if (*(v2 + 1224))
  {
    for (j = 0; j != 32; j += 8)
    {
      v8 = *(v2 + j + 1192);
      if (v8)
      {
        v8(v2, 2, *(v2 + j + 1232));
      }
    }
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v9;
  v43 = v9;
  v40 = v9;
  v41 = v9;
  v38 = v9;
  v39 = v9;
  v36 = v9;
  v37 = v9;
  v34 = v9;
  v35 = v9;
  v32 = v9;
  v33 = v9;
  v30 = v9;
  v31 = v9;
  v28 = v9;
  v29 = v9;
  v27 = v9;
  v26 = v9;
  v25 = v9;
  v24 = v9;
  v23 = v9;
  v22 = v9;
  v21 = v9;
  v20 = v9;
  v19 = v9;
  v18 = v9;
  v17 = v9;
  v16 = v9;
  v15 = v9;
  v14 = v9;
  v13 = v9;
  v12 = v9;
  memset(__b, 170, sizeof(__b));
  inputStruct = 8;
  LOBYTE(v12) = 102;
  return MTDeviceIssueDriverRequest(v2, &inputStruct, __b);
}

uint64_t mt_PostButtonStateCallbacks(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 200);
    if (v4 != a2)
    {
      if (*(result + 648))
      {
        for (i = 0; i != 32; i += 8)
        {
          v6 = *(v3 + i + 616);
          if (v6)
          {
            result = v6(v3, a2, *(v3 + 200), *(v3 + i + 656));
          }
        }

        v4 = *(v3 + 200);
      }

      if ((v4 & ~a2) != 0)
      {
        result = mt_PostNotificationEvent(v3, 17);
        v4 = *(v3 + 200);
      }

      if ((a2 & ~v4) != 0)
      {
        result = mt_PostNotificationEvent(v3, 16);
      }

      *(v3 + 200) = a2;
    }
  }

  return result;
}

void mt_PostForceCentroidCallbacks(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(a2 + 13) == 1)
    {
      v12 = v2;
      v13 = v3;
      v9 = -1;
      v10 = -1;
      v11 = 0xAAAAAAAAFFFFFFFFLL;
      v8.i64[0] = *(result + 168);
      *&v8.i64[1] = *a2;
      v5.n128_f32[0] = mtalg_ConvertBinaryForceCentroidToMTFC(result, *(a2 + 56) | (*(a2 + 60) << 32), &v8);
      if (*(result + 1512))
      {
        for (i = 0; i != 32; i += 8)
        {
          v7 = *(result + i + 1480);
          if (v7)
          {
            v7(result, &v8, *(result + i + 1520), v5);
          }
        }
      }
    }
  }
}

uint64_t MTAlg_GetAlgLibStateRef(uint64_t result)
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

uint64_t mt_ForwardPathFrame(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  MTAlg_IssueOpticalProximityCallback(a1, *(a2 + 62));
  MTAlg_IssueInputDetectionStateCallback(a1, *(a2 + 68), *(a2 + 62), *(a2 + 66));
  MTAlg_IssueFarfieldProximityCallback(a1, *(a2 + 66), *(a2 + 66));

  return mt_ForwardBinaryContacts(a1, a2, a3, a4);
}

uint64_t MTAlg_IssueInputDetectionStateCallback(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 196) & a2;
    if (*(result + 192) != v5)
    {
      if (*(result + 1008))
      {
        for (i = 0; i != 32; i += 8)
        {
          v9 = *(v4 + i + 976);
          if (v9)
          {
            result = v9(v4, v5, a3, a4, *(v4 + i + 1016));
          }
        }
      }

      *(v4 + 192) = v5;
    }
  }

  return result;
}

uint64_t MTAlg_IssueOpticalProximityCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 1924);
    v5 = v4 * 0.875 + a2 * 0.125;
    *(result + 1924) = v5;
    if (*(result + 864))
    {
      for (i = 0; i != 4; ++i)
      {
        v7 = *(v3 + 8 * i + 832);
        if (v7)
        {
          v8 = *(v3 + 2 * i + 1916);
          v9 = a2;
          if (*(v3 + 2 * i + 1916))
          {
            v10 = v8;
            if (v4 <= v8 || (v11 = *(v3 + 1924), v11 >= v10))
            {
              if (v4 >= v10)
              {
                continue;
              }

              v11 = *(v3 + 1924);
              if (v11 <= v10)
              {
                continue;
              }
            }

            v9 = v11;
          }

          result = v7(v3, v9);
        }
      }
    }
  }

  return result;
}

int *mt_PathLifeCycleFromPreciseContact(uint64_t a1, __int16 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *a3;
  AlgLibStateRef = MTAlg_GetAlgLibStateRef(a1);
  if (!AlgLibStateRef)
  {
    return 0;
  }

  v14 = (v12 - 1 >= 0x1F ? AlgLibStateRef + 520 : AlgLibStateRef + 520 + 616 * v12);
  if (!a4)
  {
    return 0;
  }

  if (a3[1] == 1)
  {
    v15 = *v14;
    bzero(v14, 0x268uLL);
    *v14 = v15;
    *(v14 + 146) = xmmword_25AD7B390;
    *(v14 + 150) = 0u;
  }

  if ((*(a4 + 10) & 1) != 0 || MTAlg_AlwaysNeedsVelocityCalculated(a1))
  {
    mt_CalculateMTPreciseContactVelocity((v14 + 2), a3, a6);
  }

  v16.n128_f64[0] = a6;
  mt_FillMTContactDirectFromPrecise(a2, (v14 + 2), a3, a5, v16);
  return v14;
}

uint64_t MTAlg_IssueFarfieldProximityCallback(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 1936);
    *(result + 1936) = a2;
    if (*(result + 936))
    {
      for (i = 0; i != 4; ++i)
      {
        v7 = *(v3 + 8 * i + 904);
        if (v7)
        {
          v8 = *(v3 + 2 * i + 1928);
          v9 = a3;
          if (*(v3 + 2 * i + 1928))
          {
            v10 = v8;
            if (v4 <= v8 || (v11 = *(v3 + 1936), v11 >= v10))
            {
              if (v4 >= v10)
              {
                continue;
              }

              v11 = *(v3 + 1936);
              if (v11 <= v10)
              {
                continue;
              }
            }

            v9 = v11;
          }

          result = v7(v3, v9);
        }
      }
    }
  }

  return result;
}

uint64_t mt_CleanupOldPaths(uint64_t a1, uint64_t a2, double a3)
{
  v6 = a2;
  v7 = 1232;
  v8 = 31;
  do
  {
    result = MTAlg_GetAlgLibStateRef(a1);
    if (result)
    {
      v10 = result + v7;
      v11 = (result + v7 - 88);
      if (*v11 != a2)
      {
        v12 = *(v10 - 68);
        if (v12)
        {
          if (v12 == 7)
          {
            v13 = 0;
          }

          else
          {
            v13 = 7;
          }

          *(v10 - 68) = v13;
          v14 = (result + v7);
          *(v14 - 23) = v13;
          *(v14 - 5) = 0;
          *v14 = 0;
          *(v14 - 10) = a3;
          *v11 = v6;
          result = MTAlg_IssuePathCallbacks(a1, *(v10 - 96), v13, v11);
        }
      }
    }

    v7 += 616;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t MTAlg_AlwaysNeedsVelocityCalculated(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 130);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

unsigned __int16 mt_FillMTContactDirectFromPrecise@<H0>(__int16 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, __n128 a5@<Q0>)
{
  if (a1 && a2 && a3)
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 20);
    *a2 = a4;
    *(a2 + 8) = a5.n128_u64[0];
    v7 = v6 - 3;
    if (a5.n128_f64[0] - v5 < 0.04 && v7 < 2 && a3[1] == 0)
    {
      v10 = 7;
    }

    else
    {
      v10 = a3[1];
    }

    *(a2 + 16) = *a3;
    *(a2 + 20) = v10;
    v11 = a3[3];
    *(a2 + 24) = a3[2];
    *(a2 + 28) = v11;
    v13 = *(a3 + 9);
    v12 = *(a3 + 10);
    *(a2 + 48) = *(a3 + 8);
    *(a2 + 52) = v12;
    *(a2 + 92) = v13;
    v14 = vdupq_n_s32(0x447A0000u);
    v15 = vdiv_f32(*(a3 + 12), *v14.f32);
    v16 = a1[1];
    v17 = (*a1 - v16);
    *(a2 + 76) = v15;
    v18 = v17 / 100.0;
    v19 = a1[3];
    v20 = (a1[2] - v19) / 100.0;
    *(a2 + 40) = v15.f32[0] / v18;
    *(a2 + 44) = v15.f32[1] / v20;
    *(a2 + 56) = *(a3 + 7);
    v21.i64[0] = *(a3 + 20);
    v21.i64[1] = *(a3 + 4);
    a5 = vdivq_f32(v21, v14);
    *(a2 + 60) = a5;
    *(a2 + 32) = (a5.n128_f32[2] - (v16 / 100.0)) / v18;
    *(a2 + 36) = (a5.n128_f32[3] - (v19 / 100.0)) / v20;
    *(a2 + 88) = 0;
    *(a2 + 84) = *(a3 + 22);
    a5.n128_u16[0] = *(a3 + 23);
    *(a2 + 86) = a5.n128_u16[0];
  }

  return a5.n128_u16[0];
}

uint64_t MTAlg_IssueContactFrameCallbacks(uint64_t result, uint64_t a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    if (*(result + 432))
    {
      memcpy(__dst, &unk_25AD79620, sizeof(__dst));
      result = MTGetPathFrame(v3, __dst);
      v6 = result;
      if (result > 0 || *(v3 + 1912) >= 1)
      {
        for (i = 0; i != 32; i += 8)
        {
          v8 = *(v3 + i + 400);
          if (v8)
          {
            result = v8(v3, __dst, v6, a2, *(v3 + i + 440), a3);
          }
        }
      }

      *(v3 + 1912) = v6;
    }
  }

  return result;
}

__CFArray *MTDeviceCreateList()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 25, MEMORY[0x277CBF128]);
  ListForDriverType = __MTDeviceCreateListForDriverType(2u);
  if (ListForDriverType)
  {
    v2 = ListForDriverType;
    if (CFArrayGetCount(ListForDriverType) >= 1)
    {
      v6.length = CFArrayGetCount(v2);
      v6.location = 0;
      CFArrayAppendArray(Mutable, v2, v6);
    }

    CFRelease(v2);
  }

  v3 = __MTDeviceCreateListForDriverType(4u);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) >= 1)
    {
      v7.length = CFArrayGetCount(v4);
      v7.location = 0;
      CFArrayAppendArray(Mutable, v4, v7);
    }

    CFRelease(v4);
  }

  return Mutable;
}

__CFArray *__MTDeviceCreateListForDriverType(unsigned int a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 25, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    existing = -1431655766;
    if (a1 > 4)
    {
      v3 = "UnknownMultiouchDriverType";
    }

    else
    {
      v3 = off_279923198[a1];
    }

    v4 = IOServiceMatching(v3);
    if (v4)
    {
      MatchingServices = IOServiceGetMatchingServices(0, v4, &existing);
      if (MatchingServices)
      {
        printf("IOServiceGetMatchingServices() returned 0x%08X\n", MatchingServices);
      }

      else
      {
        v6 = IOIteratorNext(existing);
        if (v6)
        {
          v7 = v6;
          do
          {
            v8 = MTDeviceCreateFromService(v7);
            if (v8)
            {
              v9 = v8;
              if (*(v8 + 133) == 1)
              {
                mt_CachePropertiesForDevice(v8);
              }

              if (v9[16])
              {
                CFArrayAppendValue(Mutable, v9);
              }

              CFRelease(v9);
            }

            IOObjectRelease(v7);
            v7 = IOIteratorNext(existing);
          }

          while (v7);
        }

        IOObjectRelease(existing);
      }
    }

    else
    {
      puts("IOServiceMatching() returned a NULL dictionary.");
    }
  }

  return Mutable;
}

__CFArray *MTDeviceCreateListFromDeviceUsagePairs(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  List = MTDeviceCreateList();
  v4 = List;
  if (!Count)
  {
    return List;
  }

  if (!List)
  {
    return 0;
  }

  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v6 = CFArrayGetCount(v4);
    if (v6 >= 1)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          v11 = ValueAtIndex[4];
          if (v11)
          {
            CFProperty = IORegistryEntryCreateCFProperty(v11, @"DeviceUsagePairs", allocator, 0);
            if (CFProperty)
            {
              v13 = CFProperty;
              if (Count >= 1)
              {
                v14 = 0;
                while (1)
                {
                  v15 = CFArrayGetCount(v13);
                  v16 = CFArrayGetValueAtIndex(a1, v14);
                  v19.location = 0;
                  v19.length = v15;
                  if (CFArrayContainsValue(v13, v19, v16))
                  {
                    break;
                  }

                  if (Count == ++v14)
                  {
                    goto LABEL_16;
                  }
                }

                CFArrayAppendValue(Mutable, v10);
              }

LABEL_16:
              CFRelease(v13);
            }
          }
        }
      }
    }
  }

  CFRelease(v4);
  return Mutable;
}

uint64_t MTDeviceGetService(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t MTDeviceCreateFromService(io_object_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = MTDeviceCreate(a1);
  if (IOObjectConformsTo(a1, "AppleMultitouchSPI"))
  {
    v3 = 2;
  }

  else if (IOObjectConformsTo(a1, "AppleUSBMultitouchDriver"))
  {
    v3 = 1;
  }

  else if (IOObjectConformsTo(a1, "AppleMultitouchDevice"))
  {
    v3 = 4;
  }

  else if (IOObjectConformsTo(a1, "AppleMultitouchDummy"))
  {
    v3 = 3;
  }

  else if (IOObjectConformsTo(a1, "MultitouchDriver"))
  {
    v3 = 0;
  }

  else
  {
    v3 = 255;
  }

  *(v2 + 212) = v3;
  v4 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"Transport", *MEMORY[0x277CBECE8], 0);
  v6 = CFProperty;
  if (!CFProperty || (v7 = CFGetTypeID(CFProperty), v7 != CFStringGetTypeID()))
  {
    if (IOObjectConformsTo(a1, "AppleMultitouchSPI"))
    {
      v8 = 2;
    }

    else if (IOObjectConformsTo(a1, "AppleUSBMultitouchDriver"))
    {
      v8 = 1;
    }

    else if (IOObjectConformsTo(a1, "AppleMultitouchDevice"))
    {
      v8 = 4;
    }

    else if (IOObjectConformsTo(a1, "AppleMultitouchDummy"))
    {
      v8 = 3;
    }

    else if (IOObjectConformsTo(a1, "MultitouchDriver"))
    {
      v8 = 0;
    }

    else
    {
      v8 = 255;
    }

    if (!v6)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (CFStringCompare(v6, @"SPI", 0))
  {
    if (CFStringCompare(v6, @"USB", 0) == kCFCompareEqualTo)
    {
      v8 = 1;
      goto LABEL_41;
    }

    if (CFStringCompare(v6, @"Bluetooth", 0) == kCFCompareEqualTo || CFStringCompare(v6, @"BluetoothLowEnergy", 0) == kCFCompareEqualTo)
    {
      v8 = 4;
      goto LABEL_41;
    }

    if (CFStringCompare(v6, @"SPU", 0))
    {
      if (CFStringCompare(v6, @"Dummy", 0))
      {
        if (CFStringCompare(v6, @"Dummy Network", 0))
        {
          if (CFStringCompare(v6, @"Dummy Playback", 0))
          {
            v8 = 255;
          }

          else
          {
            v8 = 6;
          }
        }

        else
        {
          v8 = 5;
        }
      }

      else
      {
        v8 = 6;
      }

      goto LABEL_41;
    }
  }

  v8 = 2;
LABEL_41:
  CFRelease(v6);
LABEL_42:
  *(v2 + 216) = v8;
  if (CFPreferencesGetAppBooleanValue(@"Recording", @"com.apple.MultitouchSupport", 0) == 1 || !geteuid())
  {
    *(v2 + 2176) = dispatch_semaphore_create(1);
  }

  if (*(v2 + 212) == 3)
  {
    v12 = 0;
    if (mt_ServiceGetBoolProperty(*(v2 + 16), @"FramePumperPresent", &v12) || !v12)
    {
      CFRelease(v2);
      v2 = 0;
    }
  }

  v9 = IORegistryEntryCreateCFProperty(a1, @"Multitouch Subdevice ID", v4, 0);
  if (v9)
  {
    v10 = v9;
    CFNumberGetValue(v9, kCFNumberSInt8Type, (v2 + 2224));
    CFRelease(v10);
  }

  return v2;
}

uint64_t MTDeviceGetGUID(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  if (*(a1 + 133) == 1)
  {
    mt_CachePropertiesForDevice(a1);
  }

  result = 0;
  *a2 = *(a1 + 64);
  return result;
}

CFStringRef mt_CreateSavedNameForDevice(uint64_t a1)
{
  if (!a1)
  {
    v2 = 0;
    v3 = 0;
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"0x%016qX,0x%x", v3, v2);
  }

  if (*(a1 + 133) != 1)
  {
    v2 = *(a1 + 72);
    goto LABEL_8;
  }

  mt_CachePropertiesForDevice(a1);
  v2 = *(a1 + 72);
  if ((*(a1 + 133) & 1) == 0)
  {
LABEL_8:
    v3 = *(a1 + 64);
    goto LABEL_9;
  }

  mt_CachePropertiesForDevice(a1);
  v3 = *(a1 + 64);
  if (*(a1 + 133))
  {
    mt_CachePropertiesForDevice(a1);
  }

LABEL_9:
  v4 = *(a1 + 216);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x68;
  if (!v5 && v6 != 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"0x%016qX", v3);
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"0x%016qX,0x%x", v3, v2);
}

uint64_t MTDeviceGetFamilyID(uint64_t a1, _DWORD *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    result = 0;
    *a2 = *(a1 + 72);
  }

  return result;
}

uint64_t MTDeviceGetDeviceID(uint64_t a1, void *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    result = 0;
    *a2 = *(a1 + 64);
  }

  return result;
}

uint64_t MTDeviceGetTransportMethod(uint64_t a1, _DWORD *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    result = 0;
    *a2 = *(a1 + 216);
  }

  return result;
}

unsigned __int8 *MTDeviceCreateDefault()
{
  List = MTDeviceCreateList();
  if (List)
  {
    v1 = List;
    if (CFArrayGetCount(List) < 1)
    {
      ValueAtIndex = 0;
      goto LABEL_21;
    }

    v2 = CFPreferencesCopyAppValue(@"DefaultDevice", @"com.apple.MultitouchSupport");
    v3 = CFPreferencesCopyAppValue(@"DisabledDevices", @"com.apple.MultitouchSupport");
    v4 = v3;
    if (v2)
    {
      if (v3)
      {
        v16.length = CFArrayGetCount(v3);
        v16.location = 0;
        if (CFArrayContainsValue(v4, v16, v2))
        {
          puts("(the specified Default device is Disabled)");
          ValueAtIndex = 0;
LABEL_18:
          CFRelease(v2);
          goto LABEL_19;
        }
      }

      if (CFArrayGetCount(v1) >= 1)
      {
        v6 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v6);
          SavedNameForDevice = mt_CreateSavedNameForDevice(ValueAtIndex);
          if (CFStringCompare(v2, SavedNameForDevice, 1uLL))
          {
            CFRelease(SavedNameForDevice);
          }

          else
          {
            CFRetain(ValueAtIndex);
            CFRelease(SavedNameForDevice);
            if (ValueAtIndex)
            {
              goto LABEL_17;
            }
          }

          ++v6;
        }

        while (CFArrayGetCount(v1) > v6);
      }

      puts("(the specified Default device could not be found)");
LABEL_16:
      ValueAtIndex = 0;
LABEL_17:
      if (v2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v3 && CFArrayGetCount(v3))
      {
        if (CFArrayGetCount(v1) < 1)
        {
          ValueAtIndex = 0;
          goto LABEL_20;
        }

        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v9);
          v10 = mt_CreateSavedNameForDevice(ValueAtIndex);
          v17.length = CFArrayGetCount(v4);
          v17.location = 0;
          CFArrayContainsValue(v4, v17, v10);
          v11 = ValueAtIndex[2224];
          CFRelease(v10);
          if (ValueAtIndex)
          {
            if (!v11)
            {
              break;
            }
          }

          if (CFArrayGetCount(v1) <= ++v9)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        Count = CFArrayGetCount(v1);
        if (Count < 1)
        {
          ValueAtIndex = 0;
          goto LABEL_19;
        }

        v13 = Count;
        v14 = 0;
        while (1)
        {
          v15 = CFArrayGetValueAtIndex(v1, v14);
          if (!v15[2224])
          {
            break;
          }

          if (++v14 >= v13)
          {
            goto LABEL_16;
          }
        }

        ValueAtIndex = v15;
      }

      CFRetain(ValueAtIndex);
    }

LABEL_19:
    if (v4)
    {
LABEL_20:
      CFRelease(v4);
    }

LABEL_21:
    CFRelease(v1);
    return ValueAtIndex;
  }

  return 0;
}

_DWORD *MTDeviceCreateFromGUID(int a1)
{
  List = MTDeviceCreateList();
  if (!List)
  {
    return 0;
  }

  v3 = List;
  Count = CFArrayGetCount(List);
  if (Count < 1)
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      if (ValueAtIndex)
      {
        v8 = ValueAtIndex;
        if (*(ValueAtIndex + 133) == 1)
        {
          mt_CachePropertiesForDevice(ValueAtIndex);
        }

        if (v8[16] == a1)
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_9;
      }
    }

    CFRetain(v8);
  }

  CFRelease(v3);
  return v8;
}

uint64_t mt_DeviceCreateFromDeviceID(uint64_t a1, int a2)
{
  valuePtr = a1;
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  if (v4)
  {
    v5 = v4;
    existing = 0;
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(v8, @"Multitouch ID", v5);
        if (a2)
        {
          CFDictionarySetValue(v9, @"MTHIDDevice", *MEMORY[0x277CBED28]);
        }

        CFDictionarySetValue(v7, @"IOPropertyMatch", v9);
        CFRelease(v9);
        if (!IOServiceGetMatchingServices(0, v7, &existing))
        {
          while (1)
          {
            v12 = IOIteratorNext(existing);
            if (!v12)
            {
              break;
            }

            v10 = v12;
            v11 = MTDeviceCreateFromService(v12);
            IOObjectRelease(v10);
            if (v11)
            {
              goto LABEL_11;
            }
          }

          v11 = 0;
LABEL_11:
          IOObjectRelease(existing);
          goto LABEL_15;
        }
      }

      else
      {
        CFRelease(v7);
      }
    }

    v11 = 0;
LABEL_15:
    CFRelease(v5);
    return v11;
  }

  return 0;
}

uint64_t mt_DeviceGetBoolProperty(uint64_t a1, const __CFString *a2, BOOL *a3)
{
  if (a1 && a2 && a3)
  {
    return mt_ServiceGetBoolProperty(*(a1 + 16), a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

void MTDeviceRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL MTDeviceIsAvailable()
{
  Default = MTDeviceCreateDefault();
  v1 = Default;
  if (Default)
  {
    CFRelease(Default);
  }

  return v1 != 0;
}

uint64_t mt_ParseExternalMessageIDs(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  result = CFArrayGetTypeID();
  if (v4 == result)
  {
    result = CFArrayGetCount(cf);
    if (result <= 7)
    {
      v6 = result;
      if (result < 1)
      {
LABEL_8:
        *(a1 + 5727) = v6;
      }

      else
      {
        v7 = 0;
        v8 = (a1 + 5720);
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, v7);
          v10 = CFGetTypeID(ValueAtIndex);
          result = CFNumberGetTypeID();
          if (v10 != result)
          {
            break;
          }

          result = CFNumberGetValue(ValueAtIndex, kCFNumberSInt8Type, v8);
          if (!result)
          {
            break;
          }

          ++v7;
          ++v8;
          if (v6 == v7)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  return result;
}

void mt_CachePropertiesForDevice(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v50 = 0;
    v2 = *(a1 + 152);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 152) = 0;
    }

    *(a1 + 2304) = 1;
    if (mt_ServiceGetInt64Property(*(a1 + 16), @"Multitouch ID", (a1 + 64)))
    {
      *(a1 + 64) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"Family ID", (a1 + 72)))
    {
      *(a1 + 72) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"bcdVersion", (a1 + 76)))
    {
      *(a1 + 76) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"ExpectedVersion", (a1 + 80)))
    {
      *(a1 + 80) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"Sensor Rows", (a1 + 84)))
    {
      *(a1 + 84) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"Sensor Columns", (a1 + 88)))
    {
      *(a1 + 88) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"Endianness", (a1 + 100)))
    {
      *(a1 + 100) = 1;
    }

    Int32Property = mt_ServiceGetInt32Property(*(a1 + 16), @"Sensor Surface Width", (a1 + 92));
    v4 = Int32Property != 0;
    if (Int32Property)
    {
      *(a1 + 92) = 5000;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"Sensor Surface Height", (a1 + 96)))
    {
      *(a1 + 96) = 7500;
      v4 = 1;
    }

    v49 = 0;
    if (!mt_ServiceGetStringProperty(*(a1 + 16), @"Multitouch Serial Number", &v49))
    {
      v5 = v49;
      if (v49)
      {
        v6 = *(a1 + 104);
        if (v6)
        {
          CFRelease(v6);
          v5 = v49;
        }

        *(a1 + 104) = v5;
      }
    }

    v48 = 0;
    BoolProperty = mt_ServiceGetBoolProperty(*(a1 + 16), @"Driver is Ready", &v48);
    v8 = v48;
    if (BoolProperty)
    {
      v8 = 1;
    }

    *(a1 + 134) = v8;
    if (mt_ServiceGetInt32Property(*(a1 + 16), @"parser-type", (a1 + 2144)))
    {
      *(a1 + 2144) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"parser-options", (a1 + 2148)))
    {
      *(a1 + 2148) = 0;
    }

    v47 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"MTHIDDevice", &v47))
    {
      *(a1 + 2152) = v47;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"touch-size-id", (a1 + 2156)))
    {
      *(a1 + 2156) = 0;
    }

    v46 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"MT Built-In", &v46))
    {
      *(a1 + 2160) = v46;
    }

    v45 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"MaintainPowerInUILock", &v45))
    {
      *(a1 + 114) = v45;
    }

    v44 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"PowerControlSupported", &v44))
    {
      *(a1 + 115) = v44;
    }

    v43 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"SupportTapToWake", &v43))
    {
      *(a1 + 116) = v43;
    }

    v42 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"SupportTouchReadyNotification", &v42))
    {
      *(a1 + 117) = v42;
    }

    v41 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"ShouldSkipFaceDetectionMode", &v41))
    {
      *(a1 + 129) = v41;
    }

    v40 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"FirstPowerOffSuppressed", &v40))
    {
      *(a1 + 119) = v40;
    }

    v39 = 0;
    if (!mt_ServiceGetInt32Property(*(a1 + 16), @"SATelemetryReportID", &v39))
    {
      *(a1 + 5749) = v39;
    }

    v38 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"ContextualPower", &v38))
    {
      *(a1 + 118) = v38;
    }

    v37 = 0;
    if (!mt_ServiceGetInt32Property(*(a1 + 16), @"ResetOnLockMs", &v37))
    {
      *(a1 + 120) = v37;
    }

    v36 = 0;
    if (!mt_ServiceGetInt32Property(*(a1 + 16), @"ResetOnUnlockMs", &v36))
    {
      *(a1 + 124) = v36;
    }

    v35 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"ShouldResetOnButton", &v35))
    {
      *(a1 + 128) = v35;
    }

    v34 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"AlwaysNeedsVelocityCalculated", &v34))
    {
      *(a1 + 130) = v34;
    }

    v33 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"ShouldDispatchNormalizedVelocity", &v33))
    {
      *(a1 + 131) = v33;
    }

    v32 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"ShouldDispatchRelativeCoordinates", &v32))
    {
      *(a1 + 132) = v32;
    }

    v31 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"ActuationSupported", &v31))
    {
      *(a1 + 24) = v31;
    }

    v30 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"ForceSupported", &v30))
    {
      *(a1 + 40) = v30;
    }

    v29 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"WirelessChargingNotificationSupported", &v29))
    {
      *(a1 + 42) = v29;
    }

    v28 = 0;
    if (!mt_ServiceGetBoolProperty(*(a1 + 16), @"USBChargingNotificationSupported", &v28))
    {
      *(a1 + 43) = v28;
    }

    cf = 0;
    if (!mt_DeviceCopyArrayProperty(a1, @"ExternalMessageIDs", &cf) && cf)
    {
      mt_ParseExternalMessageIDs(a1, cf);
      CFRelease(cf);
    }

    if (mt_ServiceCFPropertyExists(*(a1 + 16), @"SupportsSilentClick") && mt_ServiceGetBoolProperty(*(a1 + 16), @"SupportsSilentClick", (a1 + 41)))
    {
      *(a1 + 41) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"MinDigitizerPressureValue", (a1 + 44)))
    {
      *(a1 + 44) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"AccurateMaxDigitizerPressureValue", (a1 + 48)))
    {
      *(a1 + 48) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"ExtendedMaxDigitizerPressureValue", (a1 + 52)))
    {
      *(a1 + 52) = 0;
    }

    if (mt_ServiceGetInt32Property(*(a1 + 16), @"MaxHoverHeight", (a1 + 56)))
    {
      *(a1 + 56) = 0;
    }

    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    mt_ServiceGetDataProperty(*(a1 + 16), @"Sensor Region Descriptor", &v26, &v25);
    MTParseSensorRegionsReport(v26, v25, (a1 + 220), 20);
    mt_ServiceGetDataProperty(*(a1 + 16), @"Sensor Surface Descriptor", &v22, &v21);
    if (MTParseSensorSurfaceDescriptor(v22, v21, a1 + 368, a1))
    {
      if (v4)
      {
        *(a1 + 92) = *(a1 + 368);
      }
    }

    else
    {
      *(a1 + 368) = *(a1 + 92);
      *(a1 + 376) = 0;
    }

    mt_ServiceGetDataProperty(*(a1 + 16), @"Sensor Region Param", &v24, &v23);
    if (!MTParseSensorRegionParam(v24, v23, (a1 + 360), a1))
    {
      *(a1 + 360) = 0;
      *(a1 + 364) = 255;
    }

    if (v26)
    {
      free(v26);
    }

    if (v24)
    {
      free(v24);
    }

    if (v22)
    {
      free(v22);
    }

    if (!mt_ServiceGetInt32Property(*(a1 + 16), @"WANTS_FRAMES_IGNORED", &v50))
    {
      if (CFPreferencesGetAppBooleanValue(@"NoBrick", @"com.apple.MultitouchSupport", 0))
      {
        *(a1 + 135) = 0;
      }

      else
      {
        *(a1 + 135) = 1;
        puts("Multitouch: Ignoring frames from device!");
      }
    }

    if (CFPreferencesGetAppBooleanValue(@"BrickDevice", @"com.apple.MultitouchSupport", 0) == 1)
    {
      *(a1 + 135) = 1;
      puts("Multitouch: Ignoring frames from device!");
    }

    v20 = 0;
    v19 = 0;
    if (!mt_ServiceGetDataProperty(*(a1 + 16), @"AnimationThresholds", &v20, &v19))
    {
      v9 = v20;
      if (v19 == 20)
      {
        v10 = *v20;
        *(a1 + 2244) = *(v20 + 4);
        *(a1 + 2228) = v10;
      }

      free(v9);
    }

    v20 = 0;
    v19 = 0;
    if (!mt_ServiceGetDataProperty(*(a1 + 16), @"ActivationThresholds", &v20, &v19))
    {
      v11 = v20;
      if (v19 == 20)
      {
        v12 = *v20;
        *(a1 + 2264) = *(v20 + 4);
        *(a1 + 2248) = v12;
      }

      free(v11);
    }

    v18 = 0;
    v13 = mt_DeviceCopyDictionaryProperty(a1, @"MultipleFirmwaresConfig", &v18);
    if (!v13)
    {
      v13 = *(a1 + 5752);
      if (v13)
      {
        CFRelease(v13);
      }

      *(a1 + 5752) = v18;
    }

    if ((v4 & *(a1 + 133)) == 1)
    {
      v15 = MTLoggingFramework(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 92);
        v17 = *(a1 + 96);
        *buf = 134218240;
        v52 = v16;
        v53 = 2048;
        v54 = v17;
        _os_log_impl(&dword_25AD59000, v15, OS_LOG_TYPE_ERROR, "Sensor Surface dimensions not provided. Using defaults or getting from descriptor (%lu x %lu)", buf, 0x16u);
      }
    }

    *(a1 + 133) = 0;
  }
}

void mt_TerminateAlgorithmsForDevice(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 152) = 0;
    }

    *(a1 + 2304) = 1;
  }
}

uint64_t mt_DeviceGetInt64Property(uint64_t a1, const __CFString *a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    return mt_ServiceGetInt64Property(*(a1 + 16), a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t mt_DeviceGetInt32Property(uint64_t a1, const __CFString *a2, _DWORD *a3)
{
  if (a1 && a2 && a3)
  {
    return mt_ServiceGetInt32Property(*(a1 + 16), a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t mt_DeviceGetStringProperty(uint64_t a1, const __CFString *a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    return mt_ServiceGetStringProperty(*(a1 + 16), a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t mt_DeviceCopyArrayProperty(uint64_t a1, const __CFString *a2, void *a3)
{
  result = 3758097090;
  if (a1)
  {
    if (a3)
    {
      if (a2)
      {
        v6 = *(a1 + 16);
        if (v6)
        {
          CFProperty = IORegistryEntryCreateCFProperty(v6, a2, *MEMORY[0x277CBECE8], 0);
          *a3 = 0;
          if (CFProperty)
          {
            v8 = CFProperty;
            v9 = CFGetTypeID(CFProperty);
            if (v9 == CFArrayGetTypeID())
            {
              result = 0;
              *a3 = v8;
              return result;
            }

            CFRelease(v8);
          }

          return 3758097084;
        }
      }
    }
  }

  return result;
}

uint64_t mt_DeviceCFPropertyExists(uint64_t a1, const __CFString *a2)
{
  if (a1 && a2)
  {
    return mt_ServiceCFPropertyExists(*(a1 + 16), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t mt_DeviceGetSensorRegionDescriptor(uint64_t a1, UInt8 **a2, _DWORD *a3)
{
  if (a1 && a2 && a3)
  {
    return mt_ServiceGetDataProperty(*(a1 + 16), @"Sensor Region Descriptor", a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t mt_DeviceGetSensorSurfaceDescriptor(uint64_t a1, UInt8 **a2, _DWORD *a3)
{
  if (a1 && a2 && a3)
  {
    return mt_ServiceGetDataProperty(*(a1 + 16), @"Sensor Surface Descriptor", a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t mt_DeviceGetSensorRegionParam(uint64_t a1, UInt8 **a2, _DWORD *a3)
{
  if (a1 && a2 && a3)
  {
    return mt_ServiceGetDataProperty(*(a1 + 16), @"Sensor Region Param", a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t mt_DeviceGetDataProperty(uint64_t a1, const __CFString *a2, UInt8 **a3, _DWORD *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    return mt_ServiceGetDataProperty(*(a1 + 16), a2, a3, a4);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t mt_DeviceCopyDictionaryProperty(uint64_t a1, const __CFString *a2, void *a3)
{
  result = 3758097090;
  if (a1 && a2 && a3)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v6, a2, *MEMORY[0x277CBECE8], 0);
      *a3 = 0;
      if (CFProperty)
      {
        v8 = CFProperty;
        v9 = CFGetTypeID(CFProperty);
        if (v9 == CFDictionaryGetTypeID())
        {
          result = 0;
          *a3 = v8;
          return result;
        }

        CFRelease(v8);
      }

      return 3758097084;
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t MTDeviceStart(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = 3758097090;
  if (a1)
  {
    if (*(a1 + 20))
    {
      return 3758097109;
    }

    else
    {
      *(a1 + 160) = a2;
      if ((a2 & 0x10000000) != 0)
      {
        gMT_BE_LESS_VERBOSE = 1;
      }

      if (*(a1 + 133) == 1)
      {
        mt_CachePropertiesForDevice(a1);
      }

      if (!*(a1 + 72) && (*(a1 + 163) & 0x40) == 0)
      {
        MTDeviceForcePropertiesRecache(a1);
        mt_CachePropertiesForDevice(a1);
        if (!*(a1 + 72))
        {
          if (*(a1 + 133) == 1)
          {
            mt_CachePropertiesForDevice(a1);
          }

          v6 = MTLoggingFramework(v4, v5);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v7 = *(a1 + 64);
            *buf = 134217984;
            *&buf[4] = v7;
            _os_log_impl(&dword_25AD59000, v6, OS_LOG_TYPE_ERROR, "familyID is invalid, even after AMD re-fetching properties (deviceID 0x%llX)", buf, 0xCu);
          }
        }
      }

      connect = 0;
      *buf = 5;
      if (IOServiceWaitQuiet(*(a1 + 16), buf) == -536870186)
      {
        printf("MT Error: service still busy after %d seconds\n", *buf);
      }

      if (*(a1 + 212) == 4)
      {
        v8 = (*(a1 + 163) << 25 >> 31) & 0x464C5452;
      }

      else
      {
        v8 = 0;
      }

      v2 = IOServiceOpen(*(a1 + 16), *MEMORY[0x277D85F48], v8, &connect);
      if (!v2)
      {
        *(a1 + 20) = connect;
        if (!*(a1 + 152))
        {
          mt_InitializeAlgorithmsForDevice(a1, v9, v10, v11, v12, v13, v14, v15);
        }

        v16 = *(a1 + 160);
        if ((v16 & 1) == 0)
        {
          *(a1 + 2112) = 0;
          if ((v16 & 0x20000000) == 0)
          {
            *(a1 + 160) = v16 | 0x20000000;
            v19 = 0;
            v17 = malloc_type_calloc(0x10uLL, 1uLL, 0x6DBDACD8uLL);
            *v17 = a1;
            v17[1] = MTDeviceCreateMultitouchRunLoopSource(a1);
            CFRetain(a1);
            if (pthread_create(&v19, 0, mt_ThreadedMTEntry, v17))
            {
              CFRelease(*v17);
              CFRelease(v17[1]);
              free(v17);
            }
          }
        }
      }
    }
  }

  return v2;
}

BOOL MTDeviceIsRunning(_BOOL8 result)
{
  if (result)
  {
    return *(result + 20) != 0;
  }

  return result;
}

uint64_t MTDeviceForcePropertiesRecache(io_service_t *a1)
{
  v1 = 3758097090;
  if (a1)
  {
    v3 = a1[53];
    if (v3)
    {
      if (v3 != 4 && v3 != 1)
      {
        return 3758097095;
      }

      v5 = 9;
    }

    else
    {
      v5 = 22;
    }

    v6 = a1[5];
    if (v6)
    {
      outputCnt[0] = 0;
      return IOConnectCallScalarMethod(v6, v5, 0, 0, 0, outputCnt);
    }

    else
    {
      connect = 0;
      *outputCnt = 5;
      if (IOServiceWaitQuiet(a1[4], outputCnt) == -536870186)
      {
        printf("MT Error: service still busy after %d seconds\n", outputCnt[0]);
      }

      v1 = IOServiceOpen(a1[4], *MEMORY[0x277D85F48], 0, &connect);
      if (!v1)
      {
        v8 = 0;
        v1 = IOConnectCallScalarMethod(connect, v5, 0, 0, 0, &v8);
      }

      IOServiceClose(connect);
    }
  }

  return v1;
}

uint64_t mt_InitializeAlgorithmsForDevice(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = mtalg_CreateAlgLibraryForDevice(result, *(result + 84), *(result + 88), *(result + 72), result + 220, 20, *(result + 364), a8, *(result + 368), *(result + 376));
    *(v8 + 152) = result;
  }

  return result;
}

CFRunLoopSourceRef MTDeviceCreateMultitouchRunLoopSource(__CFMachPort *a1)
{
  result = MTDeviceCreateMultitouchMachPort(a1);
  if (result)
  {
    v2 = result;
    v3 = *MEMORY[0x277CBECE8];

    return CFMachPortCreateRunLoopSource(v3, v2, 0);
  }

  return result;
}

void mt_ThreadedMTEntry(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v2[265] = CFRunLoopGetCurrent();
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, v3, *MEMORY[0x277CBF048]);
  CFRelease(v3);
  CFRunLoopRun();
  CFRelease(v2);

  free(a1);
}

uint64_t MTDeviceStop(uint64_t a1)
{
  result = 3758097090;
  if (a1)
  {
    if (*(a1 + 20))
    {
      if (*(a1 + 2104))
      {
        mt_DeviceUnregisterForHotplugNotifications(a1);
      }

      *(a1 + 2112) = 1;
      if (*(a1 + 2120))
      {
        Current = CFRunLoopGetCurrent();
        v4 = *(a1 + 2120);
        if (Current == v4)
        {
          CFRunLoopStop(v4);
        }

        else
        {
          v9 = 0;
          v10 = &v9;
          v11 = 0x2000000000;
          v12 = 0;
          v5 = *MEMORY[0x277CBF048];
          v8[0] = MEMORY[0x277D85DD0];
          v8[1] = 0x40000000;
          v8[2] = __MTDeviceStop_block_invoke;
          v8[3] = &unk_279923128;
          v8[4] = &v9;
          v8[5] = a1;
          CFRunLoopPerformBlock(v4, v5, v8);
          CFRunLoopWakeUp(*(a1 + 2120));
          if ((v10[3] & 1) == 0)
          {
            do
            {
              usleep(0x3E8u);
            }

            while (*(v10 + 24) != 1);
          }

          _Block_object_dispose(&v9, 8);
        }

        *(a1 + 2120) = 0;
      }

      if (*(a1 + 2088))
      {
        mt_StopDequeueOfMultitouchDataFromDevice(a1);
        *(a1 + 2088) = 0;
      }

      v6 = *(a1 + 20);
      if (*(a1 + 2272))
      {
        MEMORY[0x25F855340](v6, 0, *MEMORY[0x277D85F48]);
        *(a1 + 2272) = 0;
        *(a1 + 2280) = 0;
        LODWORD(v6) = *(a1 + 20);
      }

      if (v6)
      {
        IOServiceClose(v6);
        *(a1 + 20) = 0;
      }

      if (*(a1 + 2168) == 1)
      {
        MTDeviceEndRecording(a1);
      }

      v7 = *(a1 + 152);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 152) = 0;
      }

      result = 0;
      *(a1 + 2304) = 1;
      *(a1 + 133) = 1;
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

void mt_DeviceUnregisterForHotplugNotifications(uint64_t a1)
{
  v2 = *(a1 + 2104);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    CFRelease(*(a1 + 2104));
    *(a1 + 2104) = 0;
  }
}

CFMachPortRef MTDeviceCreateMultitouchMachPort(CFMachPortRef result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 5) && *(result + 4) && !*(result + 261) && (*(result + 163) & 0x20) != 0)
    {
      MaxPacketSizeByKey = _MTDeviceGetMaxPacketSizeByKey(result, @"Max Injection Packet Size", 0);
      v3 = _MTDeviceGetMaxPacketSizeByKey(v1, @"Max Packet Size", 4096);
      if (MaxPacketSizeByKey > v3)
      {
        v3 = MaxPacketSizeByKey;
      }

      *(v1 + 96) = v3;
      if (*(v1 + 49))
      {
        ParsedMultitouchFrameRepDestroy(*(v1 + 49));
        v3 = *(v1 + 96);
      }

      *(v1 + 49) = MT_ParsedMultitouchFrameRepCreate(v3);
      v4 = malloc_type_malloc(0x28uLL, 0x1030040C0747FF5uLL);
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 4) = 0;
      v5 = malloc_type_malloc(*(v1 + 96), 0x67B54624uLL);
      *(v1 + 17) = v5;
      *v4 = v1;
      *(v4 + 1) = v5;
      v4[4] = *(v1 + 5);
      context.version = 0;
      context.info = v4;
      memset(&context.retain, 0, 24);
      if (v5)
      {
        bzero(v5, *(v1 + 96));
        v12 = 0;
        v13 = 0;
        NotificationPort = IODataQueueAllocateNotificationPort();
        v7 = MEMORY[0x277D85F48];
        if (NotificationPort)
        {
          if (MEMORY[0x25F855330](v4[4], 0, NotificationPort, 0))
          {
            printf("IOConnectSetNotificationPort returned %d\n");
          }

          else if (MEMORY[0x25F855310](v4[4], 0, *v7, &v13, &v12, 1))
          {
            printf("IOConnectMapMemory returned %d\n");
          }

          else
          {
            v8 = v12;
            *(v4 + 3) = v13;
            *(v4 + 4) = v8;
            if ((*(v1 + 160) & 1) != 0 || ((input = 1, outputCnt = 0, *(v1 + 53)) ? (v9 = 0) : (v9 = 21), !IOConnectCallScalarMethod(v4[4], v9, &input, 1u, 0, &outputCnt)))
            {
              LOBYTE(input) = -86;
              result = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], NotificationPort, mt_DequeueMultitouchDataMachPortCallBack, &context, &input);
              if (input == 1)
              {
                printf("CFMachPortCreateWithPort returned a re-used CFMachPort for port %d\n");
              }

              else if (result)
              {
                *(v1 + 261) = result;
                return result;
              }
            }

            else
            {
              printf("IOConnectMethodScalarIScalarO/IOConnectCallScalarMethod returned %d\n");
            }
          }
        }

        else
        {
          puts("IODataQueueAllocateNotificationPort returned a NULL mach_port_t");
        }

        free(v4);
        mach_port_mod_refs(*v7, NotificationPort, 1u, -1);
      }
    }

    return 0;
  }

  return result;
}

uint64_t MTDeviceGetMaxPacketSize(uint64_t a1)
{
  MaxPacketSizeByKey = _MTDeviceGetMaxPacketSizeByKey(a1, @"Max Injection Packet Size", 0);
  LODWORD(result) = _MTDeviceGetMaxPacketSizeByKey(a1, @"Max Packet Size", 4096);
  if (MaxPacketSizeByKey <= result)
  {
    return result;
  }

  else
  {
    return MaxPacketSizeByKey;
  }
}

NSObject *MTDeviceCreateMultitouchDispatchSource(__CFMachPort *a1, NSObject *a2)
{
  MultitouchMachPort = MTDeviceCreateMultitouchMachPort(a1);
  if (!MultitouchMachPort)
  {
    return 0;
  }

  Port = CFMachPortGetPort(MultitouchMachPort);
  v6 = dispatch_source_create(MEMORY[0x277D85D08], Port, 0, a2);
  v7 = v6;
  if (v6)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __MTDeviceCreateMultitouchDispatchSource_block_invoke;
    handler[3] = &__block_descriptor_tmp_178;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v7);
  }

  return v7;
}

void mt_DeviceRegisterForHotplugNotifications(void *a1, __CFRunLoop *a2, const __CFString *a3)
{
  iterator = -1431655766;
  notification = -1431655766;
  v6 = IONotificationPortCreate(0);
  RunLoopSource = IONotificationPortGetRunLoopSource(v6);
  a1[263] = CFRetain(RunLoopSource);
  CFRunLoopAddSource(a2, RunLoopSource, a3);
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, a1 + 8);
  v10 = MEMORY[0x277CBF138];
  v11 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(v8, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = CFDictionaryCreateMutable(v8, 1, v10, v11);
  v14 = v13;
  if (v9)
  {
    v15 = Mutable == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || v13 == 0)
  {
    if (!v9)
    {
      if (!Mutable)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    CFDictionarySetValue(v13, @"Multitouch ID", v9);
    CFDictionarySetValue(Mutable, @"IOPropertyMatch", v14);
    CFRetain(Mutable);
    if (!IOServiceAddMatchingNotification(v6, "IOServiceFirstMatch", Mutable, mt_HotPlugMatchingDeviceAdded, a1, &notification))
    {
      CFRetain(Mutable);
      if (!IOServiceAddMatchingNotification(v6, "IOServiceTerminate", Mutable, mt_HotPlugMatchingDeviceRemoved, a1, &iterator))
      {
        mt_HotPlugMatchingDeviceAdded(0, notification);
        mt_HotPlugMatchingDeviceRemoved(0, iterator);
      }
    }
  }

  CFRelease(v9);
  if (Mutable)
  {
LABEL_11:
    CFRelease(Mutable);
  }

LABEL_12:
  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t mt_HotPlugMatchingDeviceAdded(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x277D85F48];
    do
    {
      if (a1 && !*(a1 + 16) && !*(a1 + 20))
      {
        connect = 0;
        waitTime = 5;
        if (IOServiceWaitQuiet(v5, &waitTime) == -536870186)
        {
          printf("MT Error: service still busy after %d seconds\n", waitTime.tv_sec);
        }

        if (!IOServiceOpen(v5, *v6, 0, &connect))
        {
          *(a1 + 16) = v5;
          IOObjectRetain(v5);
          *(a1 + 20) = connect;
          *(a1 + 2128) = 0;
          *(a1 + 2136) = 0;
          *(a1 + 2140) = 0;
          *(a1 + 180) = 0;
          *(a1 + 184) = 0;
          mt_CachePropertiesForDevice(a1);
          mt_PostNotificationEvent(a1, 5);
          MultitouchRunLoopSource = MTDeviceCreateMultitouchRunLoopSource(a1);
          if (MultitouchRunLoopSource)
          {
            v8 = MultitouchRunLoopSource;
            Current = CFRunLoopGetCurrent();
            CFRunLoopAddSource(Current, v8, *(a1 + 2096));
            CFRelease(v8);
          }
        }
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t mt_HotPlugMatchingDeviceRemoved(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    v6 = (a1 + 2272);
    v7 = MEMORY[0x277D85F48];
    do
    {
      if (a1)
      {
        v8 = *(a1 + 20);
        if (v8)
        {
          if (*(a1 + 2088))
          {
            mt_StopDequeueOfMultitouchDataFromDevice(a1);
            *(a1 + 2088) = 0;
            v8 = *(a1 + 20);
          }

          if (*v6)
          {
            MEMORY[0x25F855340](v8, 0, *v7);
            *v6 = 0;
            *(a1 + 2280) = 0;
            LODWORD(v8) = *(a1 + 20);
          }

          IOServiceClose(v8);
          *(a1 + 20) = 0;
          IOObjectRelease(*(a1 + 16));
          *(a1 + 16) = 0;
        }
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t MTDeviceScheduleOnRunLoop(uint64_t a1, __CFRunLoop *a2, const __CFString *a3)
{
  result = 3758097090;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 20))
    {
      if (*(a1 + 16) && !*(a1 + 2088) && (*(a1 + 163) & 0x20) != 0)
      {
        MultitouchRunLoopSource = MTDeviceCreateMultitouchRunLoopSource(a1);
        if (MultitouchRunLoopSource)
        {
          v8 = MultitouchRunLoopSource;
          *(a1 + 2096) = a3;
          mt_DeviceRegisterForHotplugNotifications(a1, a2, a3);
          CFRunLoopAddSource(a2, v8, a3);
          CFRelease(v8);
          return 0;
        }

        else
        {
          return 3758097084;
        }
      }

      else
      {
        return 3758096385;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t MTActuatorCreateFromDeviceID(uint64_t a1)
{
  valuePtr = a1;
  v1 = *MEMORY[0x277CBECE8];
  v2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    existing = 0;
    Mutable = CFDictionaryCreateMutable(v1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(v6, @"Multitouch Actuator ID", v3);
        CFDictionarySetValue(v5, @"IOPropertyMatch", v7);
        CFRelease(v7);
        if (!IOServiceGetMatchingServices(0, v5, &existing))
        {
          while (1)
          {
            v10 = IOIteratorNext(existing);
            if (!v10)
            {
              break;
            }

            v8 = v10;
            v9 = MTActuatorCreate(v10, 0);
            IOObjectRelease(v8);
            if (v9)
            {
              goto LABEL_9;
            }
          }

          v9 = 0;
LABEL_9:
          IOObjectRelease(existing);
          goto LABEL_13;
        }
      }

      else
      {
        CFRelease(v5);
      }
    }

    v9 = 0;
LABEL_13:
    CFRelease(v3);
    return v9;
  }

  return 0;
}

uint64_t MTActuatorCreateFromService(uint64_t a1)
{
  if (a1)
  {
    return MTActuatorCreate(a1, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t MTDeviceSupportsActuation(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v2 = *(a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTDeviceGetMTActuator(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 133) == 1)
  {
    mt_CachePropertiesForDevice(a1);
  }

  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v3 = MTActuatorCreateFromDeviceID(*(a1 + 64));
    if (v3)
    {
      v2 = v3;
      MTActuatorSetMTDevice(v3, a1);
      *(a1 + 32) = v2;
    }

    else
    {
      return *(a1 + 32);
    }
  }

  return v2;
}

uint64_t MTActuatorGetService(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t MTActuatorGetMTDevice(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t MTActuatorOpen(CFTypeID a1, int a2)
{
  v2 = 3758097090;
  if (a1)
  {
    connect = 0;
    waitTime = 5;
    if (*(a1 + 20))
    {
      return MTActuatorChangeHostClickControl(a1, 1u);
    }

    *(a1 + 24) = a2;
    if (IOServiceWaitQuiet(*(a1 + 16), &waitTime) == -536870186)
    {
      printf("MTActuator Error: service still busy after %d seconds\n", waitTime.tv_sec);
    }

    v2 = IOServiceOpen(*(a1 + 16), *MEMORY[0x277D85F48], 0, &connect);
    if (!v2)
    {
      *(a1 + 20) = connect;
      if (*(a1 + 48) == 1)
      {
        mt_CachePropertiesForActuator(a1);
        MTActuatorLoadActuations(a1);
      }

      return MTActuatorRequestHostClickControl(a1);
    }
  }

  return v2;
}

BOOL MTActuatorIsOpen(_BOOL8 result)
{
  if (result)
  {
    return *(result + 20) != 0;
  }

  return result;
}

uint64_t mt_CachePropertiesForActuator(uint64_t a1)
{
  if (mt_ServiceGetInt64Property(*(a1 + 16), @"Multitouch Actuator ID", (a1 + 56)))
  {
    *(a1 + 56) = 0;
  }

  if (mt_ServiceGetInt64Property(*(a1 + 16), @"Transport", (a1 + 64)))
  {
    *(a1 + 64) = 0;
  }

  result = mt_ServiceGetInt32Property(*(a1 + 16), @"ActuatorRevision", (a1 + 68));
  if (result)
  {
    *(a1 + 68) = 0;
  }

  *(a1 + 48) = 0;
  return result;
}

uint64_t MTActuatorRequestHostClickControl(uint64_t a1)
{
  v1 = 3758097090;
  if (a1)
  {
    v2 = *(a1 + 20);
    if (v2)
    {
      input = 1;
      v3 = IOConnectCallScalarMethod(v2, 0, &input, 1u, 0, 0);
      v1 = v3;
      if (v3)
      {
        printf("MTActuator Error: Could not request host click control. Status = 0x%08x\n", v3);
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return v1;
}

uint64_t MTActuatorChangeHostClickControl(uint64_t a1, unsigned int a2)
{
  v2 = 3758097090;
  if (a1)
  {
    v3 = *(a1 + 20);
    if (v3)
    {
      input = a2;
      v4 = IOConnectCallScalarMethod(v3, 5u, &input, 1u, 0, 0);
      v2 = v4;
      if (v4)
      {
        printf("MTActuator Error: Could not reclaim host click control. Status = 0x%08x\n", v4);
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return v2;
}

uint64_t MTActuatorClose(uint64_t a1)
{
  result = 3758097090;
  if (a1)
  {
    if (*(a1 + 20))
    {
      IOServiceClose(*(a1 + 20));
      result = 0;
      *(a1 + 20) = 0;
      *(a1 + 48) = 1;
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t MTActuatorGetDeviceID(uint64_t a1, void *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 48) == 1)
    {
      mt_CachePropertiesForActuator(a1);
    }

    result = 0;
    *a2 = *(a1 + 56);
  }

  return result;
}

uint64_t MTActuatorGetTransportMethod(uint64_t a1, _DWORD *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 48) == 1)
    {
      mt_CachePropertiesForActuator(a1);
    }

    result = 0;
    *a2 = *(a1 + 64);
  }

  return result;
}

uint64_t MTActuatorIssueDriverRequest(uint64_t a1, void *inputStruct, void *outputStruct)
{
  v3 = 3758097090;
  if (a1 && inputStruct && outputStruct)
  {
    v7 = *(a1 + 20);
    if (v7)
    {
      outputStructCnt = 516;
      return IOConnectCallStructMethod(v7, 4u, inputStruct, 0x204uLL, outputStruct, &outputStructCnt);
    }

    else
    {
      connect = 0;
      outputStructCnt = 5;
      if (IOServiceWaitQuiet(*(a1 + 16), &outputStructCnt) == -536870186)
      {
        printf("MT Error: service still busy after %d seconds\n", outputStructCnt.tv_sec);
      }

      v3 = IOServiceOpen(*(a1 + 16), *MEMORY[0x277D85F48], 0, &connect);
      if (!v3)
      {
        v9 = 516;
        v3 = IOConnectCallStructMethod(connect, 4u, inputStruct, 0x204uLL, outputStruct, &v9);
      }

      IOServiceClose(connect);
    }
  }

  return v3;
}

uint64_t MTActuatorSetSystemActuationsEnabled(uint64_t a1, char a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v3;
  v39 = v3;
  result = 3758097086;
  v36 = v3;
  v37 = v3;
  v34 = v3;
  v35 = v3;
  v32 = v3;
  v33 = v3;
  v30 = v3;
  v31 = v3;
  v28 = v3;
  v29 = v3;
  v26 = v3;
  v27 = v3;
  v24 = v3;
  v25 = v3;
  v23 = v3;
  v22 = v3;
  v21 = v3;
  v20 = v3;
  v19 = v3;
  v18 = v3;
  v17 = v3;
  v16 = v3;
  v15 = v3;
  v14 = v3;
  v13 = v3;
  v12 = v3;
  v11 = v3;
  v10 = v3;
  v9 = v3;
  v8 = v3;
  inputStruct = 13;
  LOBYTE(v8) = a2;
  if (a1)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      memset(v6, 170, sizeof(v6));
      result = MTActuatorIssueDriverRequest(a1, &inputStruct, v6);
      if (!result)
      {
        result = v6[0];
        if (!v6[0])
        {
          mt_PostNotificationEventToDriver(v5, 27);
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL MTActuatorGetSystemActuationsEnabled(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v2;
  v38 = v2;
  v35 = v2;
  v36 = v2;
  v33 = v2;
  v34 = v2;
  v31 = v2;
  v32 = v2;
  v29 = v2;
  v30 = v2;
  v27 = v2;
  v28 = v2;
  v25 = v2;
  v26 = v2;
  v23 = v2;
  v24 = v2;
  v22 = v2;
  v21 = v2;
  v20 = v2;
  v19 = v2;
  v18 = v2;
  v17 = v2;
  v16 = v2;
  v15 = v2;
  v14 = v2;
  v13 = v2;
  v12 = v2;
  v11 = v2;
  v10 = v2;
  v9 = v2;
  v8 = v2;
  v7 = v2;
  memset(v5, 170, sizeof(v5));
  inputStruct = 14;
  v3 = MTActuatorIssueDriverRequest(a1, &inputStruct, v5);
  return !(v3 | v5[0]) && LOBYTE(v5[1]) != 0;
}

uint64_t mt_ServiceCFPropertyExists(io_registry_entry_t entry, const __CFString *a2)
{
  result = 0;
  if (entry && a2)
  {
    result = IORegistryEntryCreateCFProperty(entry, a2, *MEMORY[0x277CBECE8], 0);
    if (result)
    {
      CFRelease(result);
      return 1;
    }
  }

  return result;
}

uint64_t mt_ServiceGetInt32Property(io_registry_entry_t entry, const __CFString *a2, _DWORD *a3)
{
  v4 = 3758097084;
  result = 3758097090;
  if (entry && a2 && a3)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, a2, *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v8 = CFProperty;
      v9 = CFGetTypeID(CFProperty);
      if (v9 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr) == 1)
        {
          v4 = 0;
          *a3 = valuePtr;
        }
      }

      CFRelease(v8);
      return v4;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t mt_ServiceGetInt64Property(io_registry_entry_t entry, const __CFString *a2, void *a3)
{
  v4 = 3758097084;
  result = 3758097090;
  if (entry && a2 && a3)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, a2, *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v8 = CFProperty;
      v9 = CFGetTypeID(CFProperty);
      if (v9 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v8, kCFNumberSInt64Type, &valuePtr) == 1)
        {
          v4 = 0;
          *a3 = valuePtr;
        }
      }

      CFRelease(v8);
      return v4;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t mt_ServiceGetDataProperty(io_registry_entry_t entry, const __CFString *a2, UInt8 **a3, _DWORD *a4)
{
  v5 = 3758097084;
  result = 3758097090;
  if (entry && a2 && a3 && a4)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, a2, *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v10 = CFProperty;
      v11 = CFGetTypeID(CFProperty);
      if (v11 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(v10);
        *a3 = malloc_type_malloc(Length, 0xFBCD0744uLL);
        v13.length = CFDataGetLength(v10);
        v13.location = 0;
        CFDataGetBytes(v10, v13, *a3);
        v5 = 0;
        *a4 = CFDataGetLength(v10);
      }

      CFRelease(v10);
      return v5;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t mt_ServiceGetStringProperty(io_registry_entry_t entry, const __CFString *a2, void *a3)
{
  result = 3758097090;
  if (entry && a2 && a3)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, a2, *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      v8 = CFGetTypeID(CFProperty);
      if (v8 == CFStringGetTypeID())
      {
        result = 0;
        *a3 = v7;
        return result;
      }

      *a3 = 0;
      CFRelease(v7);
    }

    else
    {
      *a3 = 0;
    }

    return 3758097084;
  }

  return result;
}

uint64_t mt_ServiceGetBoolProperty(io_registry_entry_t entry, const __CFString *a2, BOOL *a3)
{
  v4 = 3758097084;
  result = 3758097090;
  if (entry && a2 && a3)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, a2, *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v8 = CFProperty;
      v9 = CFGetTypeID(CFProperty);
      if (v9 == CFBooleanGetTypeID())
      {
        v4 = 0;
        *a3 = CFBooleanGetValue(v8) != 0;
      }

      CFRelease(v8);
      return v4;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t MTDeviceIsOpaqueSurface(uint64_t result)
{
  if (result)
  {
    return mtalg_IsOpaqueSurface(result);
  }

  return result;
}

uint64_t MTDeviceGetVersion(uint64_t a1, _DWORD *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    result = 0;
    *a2 = *(a1 + 76);
  }

  return result;
}

BOOL MTDeviceHasExpectedVersion(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 133) == 1)
    {
      mt_CachePropertiesForDevice(result);
    }

    v2 = *(v1 + 80);
    return !v2 || *(v1 + 76) == v2;
  }

  return result;
}

uint64_t MTDeviceGetSensorDimensions(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = 3758097090;
  if (a1 && a2 | a3)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    if (a2)
    {
      *a2 = *(a1 + 84);
    }

    result = 0;
    if (a3)
    {
      *a3 = *(a1 + 88);
    }
  }

  return result;
}

uint64_t MTDeviceGetSensorSurfaceDimensions(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = 3758097090;
  if (a1 && a2 | a3)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    if (a2)
    {
      *a2 = *(a1 + 92);
    }

    result = 0;
    if (a3)
    {
      *a3 = *(a1 + 96);
    }
  }

  return result;
}

uint64_t MTDeviceGetSerialNumber(uint64_t a1, void *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    result = 0;
    *a2 = *(a1 + 104);
  }

  return result;
}

uint64_t MTDeviceGetDriverType(uint64_t a1, _DWORD *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    result = 0;
    *a2 = *(a1 + 212);
  }

  return result;
}

uint64_t MTDeviceDriverIsReady(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v2 = *(a1 + 134);
    if ((v2 & 1) == 0)
    {
      v5 = 0;
      BoolProperty = mt_ServiceGetBoolProperty(*(a1 + 16), @"Driver is Ready", &v5);
      v2 = v5;
      if (BoolProperty)
      {
        v2 = 1;
      }

      *(a1 + 134) = v2;
      if (v2)
      {
        mt_CachePropertiesForDevice(a1);
        v2 = *(a1 + 134);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTDeviceGetSensorRegionMaxTypes(uint64_t a1, _DWORD *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    result = 0;
    *a2 = 20;
  }

  return result;
}

uint64_t MTDeviceGetSensorRegionOfType(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    if (a3 > 0x13)
    {
      return 3758097136;
    }

    else
    {
      v7 = a1 - a3 + 8 * a3;
      v9 = *(v7 + 220);
      v8 = (v7 + 220);
      result = 3758097136;
      if (v9 == a3)
      {
        result = 0;
        v10 = *v8;
        *(a2 + 3) = *(v8 + 3);
        *a2 = v10;
      }
    }
  }

  return result;
}

uint64_t MTDeviceGetThresholdsForSensorRegionOfType(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    if (a3 == 1)
    {
      v3 = 0;
      v7 = *(a1 + 360);
      *(a2 + 4) = *(a1 + 364);
      *a2 = v7;
    }

    else
    {
      return 3758097136;
    }
  }

  return v3;
}

uint64_t MTAlg_DeviceGetSensorRegionArray(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 3758097090;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    result = 0;
    *a3 = 20;
    *a2 = a1 + 220;
  }

  return result;
}

uint64_t MTDeviceGetParserType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 133) == 1)
    {
      mt_CachePropertiesForDevice(result);
    }

    return *(v1 + 2144);
  }

  return result;
}

uint64_t MTDeviceGetParserOptions(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 133) == 1)
    {
      mt_CachePropertiesForDevice(result);
    }

    return *(v1 + 2148);
  }

  return result;
}

uint64_t MTDeviceIsMTHIDDevice(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v2 = *(a1 + 2152);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTDeviceGetTouchSizeIdentifier(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 133) == 1)
    {
      mt_CachePropertiesForDevice(result);
    }

    return *(v1 + 2156);
  }

  return result;
}

uint64_t MTDeviceIsBuiltIn(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v2 = *(a1 + 2160);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTDeviceSupportsWirelessChargingNotification(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v2 = *(a1 + 42);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTDeviceSupportsUSBChargingNotification(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v2 = *(a1 + 43);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTDeviceSupportsForce(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTDeviceSupportsSilentClick(uint64_t a1, _BYTE *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    result = 0;
    *a2 = *(a1 + 41);
  }

  return result;
}

uint64_t MTDeviceGetMinDigitizerPressureValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 133) == 1)
    {
      mt_CachePropertiesForDevice(result);
    }

    return *(v1 + 44);
  }

  return result;
}

uint64_t MTDeviceGetAccurateMaxDigitizerPressureValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 133) == 1)
    {
      mt_CachePropertiesForDevice(result);
    }

    return *(v1 + 48);
  }

  return result;
}

uint64_t MTDeviceGetExtendedMaxDigitizerPressureValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 133) == 1)
    {
      mt_CachePropertiesForDevice(result);
    }

    return *(v1 + 52);
  }

  return result;
}

uint64_t MTDeviceGetMaxHoverHeightValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 133) == 1)
    {
      mt_CachePropertiesForDevice(result);
    }

    return *(v1 + 56);
  }

  return result;
}

uint64_t MTDeviceShouldDispatchNormalizedVelocity(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v2 = *(a1 + 131);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTDeviceShouldDispatchRelativeCoordinates(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v2 = *(a1 + 132);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void MTDeviceForcePropertiesRecacheForAll()
{
  List = MTDeviceCreateList();
  if (List)
  {
    v1 = List;
    if (CFArrayGetCount(List) >= 1)
    {
      Count = CFArrayGetCount(v1);
      if (Count >= 1)
      {
        v3 = 0;
        v4 = Count & 0x7FFFFFFF;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v3);
          MTDeviceForcePropertiesRecache(ValueAtIndex);
          ++v3;
        }

        while (v4 != v3);
      }
    }

    CFRelease(v1);
  }
}

uint64_t MTDeviceEnableBinaryFilters(uint64_t a1, char a2)
{
  v2 = 3758097090;
  if (a1)
  {
    v5 = *(a1 + 2296);
    if (a2)
    {
      if (!v5)
      {
        *(a1 + 2304) = 0;
        BinaryFilters = mt_CreateBinaryFilters(a1);
        *(a1 + 2296) = BinaryFilters;
        if (BinaryFilters)
        {
          v2 = 0;
        }

        else
        {
          v2 = 3758097095;
        }

        goto LABEL_10;
      }
    }

    else if (v5)
    {
      CFRelease(v5);
      v2 = 0;
      *(a1 + 2296) = 0;
LABEL_10:
      *(a1 + 2288) = a2;
      return v2;
    }

    v2 = 0;
    goto LABEL_10;
  }

  return v2;
}

uint64_t MTDeviceSetBinaryFiltersProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 3758097090;
  if (a1)
  {
    if (*(a1 + 2296))
    {
      mt_SetBinaryFiltersProperty(a1, a2, a3);
      return 0;
    }

    else
    {
      return 3758097095;
    }
  }

  return result;
}

uint64_t MTDeviceGetMultipleFirmwaresConfig(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 133) == 1)
    {
      mt_CachePropertiesForDevice(result);
    }

    return *(v1 + 5752);
  }

  return result;
}

double MTAbsoluteTimeGetCurrent()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  v0 = mach_absolute_time();
  mach_timebase_info(&info);
  return v0 / 1000000000.0 * (info.numer / info.denom);
}

unint64_t mt_GetTimeStamp_ms(uint64_t a1)
{
  Current = MTAbsoluteTimeGetCurrent();
  if (a1)
  {
    v3 = *(a1 + 144);
  }

  else
  {
    v3 = *&mt_GetTimeStamp_ms_globalStartTime;
    if (*&mt_GetTimeStamp_ms_globalStartTime == 0.0)
    {
      mt_GetTimeStamp_ms_globalStartTime = *&Current;
      v3 = Current;
    }
  }

  return ((Current - v3) * 1000.0);
}

uint64_t MTDeviceGetForceThresholdForMotion(uint64_t a1, _DWORD *a2, _DWORD *a3, unsigned int a4)
{
  result = 3758097090;
  if (a1 && a2 && a3 && a4 <= 4)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v9 = *(a1 + 4 * a4 + 2228);
    if (v9 && *(a1 + 2248 + 4 * a4))
    {
      result = 0;
      *a2 = v9;
      *a3 = *(a1 + 2248 + 4 * a4);
    }

    else
    {
      return 3758096385;
    }
  }

  return result;
}

io_service_t *MTDeviceIsAlive(io_service_t *result)
{
  v38 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = v2;
    v37 = v2;
    v34 = v2;
    v35 = v2;
    v32 = v2;
    v33 = v2;
    v30 = v2;
    v31 = v2;
    v28 = v2;
    v29 = v2;
    v26 = v2;
    v27 = v2;
    v24 = v2;
    v25 = v2;
    v22 = v2;
    v23 = v2;
    v21 = v2;
    v20 = v2;
    v19 = v2;
    v18 = v2;
    v17 = v2;
    v16 = v2;
    v15 = v2;
    v14 = v2;
    v13 = v2;
    v12 = v2;
    v11 = v2;
    v10 = v2;
    v9 = v2;
    v8 = v2;
    v7 = v2;
    v6 = v2;
    memset(v4, 170, sizeof(v4));
    inputStruct = 0;
    v3 = MTDeviceIssueDriverRequest(v1, &inputStruct, v4);
    return ((v3 | v4[0]) == 0);
  }

  return result;
}

uint64_t MTDeviceGetSubdeviceID(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  if (*(a1 + 133) == 1)
  {
    mt_CachePropertiesForDevice(a1);
  }

  result = 0;
  *a2 = *(a1 + 2224);
  return result;
}

uint64_t MTDeviceGetDeviceTimestampOffset(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  result = 0;
  *a2 = *(a1 + 184);
  return result;
}

uint64_t MTDeviceCopyDeviceUsagePairs(uint64_t a1, void *a2)
{
  if (a1)
  {
    return mt_DeviceCopyArrayProperty(a1, @"DeviceUsagePairs", a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t _MTDeviceGetMaxPacketSizeByKey(uint64_t a1, const __CFString *a2, uint64_t a3)
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

  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      Value = CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr > 511 && Value == 1)
      {
        a3 = valuePtr;
      }

      else
      {
        a3 = a3;
      }
    }

    CFRelease(v6);
  }

  return a3;
}

uint64_t MTDeviceSetInjectionMaxPacketSize(io_service_t *a1, int a2)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v42[12] = v4;
  v41 = v4;
  *v42 = v4;
  v39 = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  v28 = v4;
  v27 = v4;
  v26 = v4;
  v25 = v4;
  v24 = v4;
  v23 = v4;
  v22 = v4;
  v21 = v4;
  v20 = v4;
  v19 = v4;
  v18 = v4;
  v17 = v4;
  v16 = v4;
  v15 = v4;
  v14 = v4;
  v13 = v4;
  v12 = v4;
  memset(v6, 170, sizeof(v6));
  inputStruct = 19;
  v8 = HIBYTE(a2);
  v9 = BYTE2(a2);
  v10 = BYTE1(a2);
  v11 = a2;
  LODWORD(result) = MTDeviceIssueDriverRequest(a1, &inputStruct, v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v6[0];
  }
}

uint64_t MTDeviceGetSATelemetryReportID(uint64_t result)
{
  if (result)
  {
    return *(result + 5749);
  }

  return result;
}

uint64_t MTDeviceSupportsTapToWake(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 116);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t MTDeviceSupportsTouchReadyNotification(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 117);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t MTDeviceNeedsFirstPowerOffSuppressed(uint64_t a1)
{
  if (a1 && (*(a1 + 72) - 93) <= 1 && (*(a1 + 42) & 1) == 0)
  {
    v1 = *(a1 + 119) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t MTDeviceNotifyFirstPowerOffSuppressed(uint64_t a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  *(a1 + 119) = 1;
  return IORegistryEntrySetCFProperty(*(a1 + 16), @"FirstPowerOffSuppressed", *MEMORY[0x277CBED28]);
}

uint64_t MTDeviceUseContextualPower(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 118);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t MTDeviceGetResetOnLockMs(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t MTDeviceGetResetOnUnlockMs(uint64_t result)
{
  if (result)
  {
    return *(result + 124);
  }

  return result;
}

uint64_t MTDeviceShouldResetOnButton(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t MTDeviceShouldSkipFaceDetectionMode(uint64_t result)
{
  if (result)
  {
    return *(result + 129);
  }

  return result;
}

uint64_t MTDeviceUpdateUILockState(uint64_t result, int a2)
{
  v2 = result;
  if (*(result + 112) == 1)
  {
    v3 = *(result + 113);
    *(result + 112) = 1;
    *(result + 113) = a2;
    if (v3 == a2)
    {
      return result;
    }
  }

  else
  {
    *(result + 112) = 1;
    *(result + 113) = a2;
  }

  v4 = a2 == 0;
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  if (v4)
  {
    v6 = 104;
  }

  else
  {
    v6 = 103;
  }

  mt_PostNotificationEvent(result, v5);

  return mt_PostNotificationEventToDriver(v2, v6);
}

uint64_t MTDevicePowerControlSupported(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 115);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t MTDevicePowerSetEnabled(io_service_t *a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return MTDevicePowerSetState(a1, v2);
}

uint64_t MTDeviceUpdatePowerStatistics(io_service_t *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v2;
  v38 = v2;
  v35 = v2;
  v36 = v2;
  v33 = v2;
  v34 = v2;
  v31 = v2;
  v32 = v2;
  v29 = v2;
  v30 = v2;
  v27 = v2;
  v28 = v2;
  v25 = v2;
  v26 = v2;
  v23 = v2;
  v24 = v2;
  v22 = v2;
  v21 = v2;
  v20 = v2;
  v19 = v2;
  v18 = v2;
  v17 = v2;
  v16 = v2;
  v15 = v2;
  v14 = v2;
  v13 = v2;
  v12 = v2;
  v11 = v2;
  v10 = v2;
  v9 = v2;
  v8 = v2;
  v7 = v2;
  memset(v5, 170, sizeof(v5));
  inputStruct = 12;
  LODWORD(result) = MTDeviceIssueDriverRequest(a1, &inputStruct, v5);
  if (v5[0])
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return v5[0];
  }

  else
  {
    return result;
  }
}

uint64_t MTDevicePowerGetEnabled(io_service_t *a1, BOOL *a2)
{
  v4 = -1431655766;
  result = MTDevicePowerGetState(a1, &v4);
  if (a2)
  {
    if (!result)
    {
      *a2 = v4 == 2;
    }
  }

  return result;
}

uint64_t MTDevicePowerGetState(io_service_t *a1, _DWORD *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v4;
  v39 = v4;
  v36 = v4;
  v37 = v4;
  v34 = v4;
  v35 = v4;
  v32 = v4;
  v33 = v4;
  v30 = v4;
  v31 = v4;
  v28 = v4;
  v29 = v4;
  v26 = v4;
  v27 = v4;
  v24 = v4;
  v25 = v4;
  v23 = v4;
  v22 = v4;
  v21 = v4;
  v20 = v4;
  v19 = v4;
  v18 = v4;
  v17 = v4;
  v16 = v4;
  v15 = v4;
  v14 = v4;
  v13 = v4;
  v12 = v4;
  v11 = v4;
  v10 = v4;
  v9 = v4;
  v8 = v4;
  memset(v6, 170, sizeof(v6));
  inputStruct = 3;
  result = MTDeviceIssueDriverRequest(a1, &inputStruct, v6);
  if (!result)
  {
    result = v6[0];
    if (a2)
    {
      if (!v6[0])
      {
        if (LOBYTE(v6[1]) > 2u)
        {
          return 3758096385;
        }

        else
        {
          result = 0;
          *a2 = LOBYTE(v6[1]);
        }
      }
    }
  }

  return result;
}

uint64_t mt_RecursiveMakeDirectory(const char *a1, mode_t a2, uid_t a3, gid_t a4, int a5)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x400uLL, "%s", a1);
  v10 = strlen(__b);
  if (v10 >= 2)
  {
    v11 = v10;
    v12 = 0;
    for (i = 1; v11 != i; ++i)
    {
      if (__b[i] == 47)
      {
        if (v12 >= a5)
        {
          __b[i] = 0;
          v14 = mkdir(__b, a2);
          if (v14)
          {
            v15 = v14;
            if (*__error() != 17)
            {
              return v15;
            }
          }

          v16.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v16.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&v19.st_blksize = v16;
          *v19.st_qspare = v16;
          v19.st_birthtimespec = v16;
          *&v19.st_size = v16;
          v19.st_mtimespec = v16;
          v19.st_ctimespec = v16;
          *&v19.st_uid = v16;
          v19.st_atimespec = v16;
          *&v19.st_dev = v16;
          v17 = stat(__b, &v19);
          if (v17)
          {
            return v17;
          }

          if (v19.st_uid != a3 || v19.st_gid != a4)
          {
            v17 = chown(__b, a3, a4);
            if (v17)
            {
              return v17;
            }
          }

          __b[i] = 47;
        }

        else
        {
          ++v12;
        }
      }
    }
  }

  return 0;
}

uint64_t MTDeviceUpdateDynamicCalibration(uint64_t a1)
{
  v16 = 0;
  v1 = mt_DeviceCopyDictionaryProperty(a1, @"Dynamic Calibration", &v16);
  if (v16)
  {
    v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v15.st_blksize = v2;
    *v15.st_qspare = v2;
    v3 = 3758097086;
    v15.st_birthtimespec = v2;
    *&v15.st_size = v2;
    v15.st_mtimespec = v2;
    v15.st_ctimespec = v2;
    *&v15.st_uid = v2;
    v15.st_atimespec = v2;
    *&v15.st_dev = v2;
    if (!stat("/var/mobile/Library/Application Support/Multitouch/", &v15) || !stat("/var/mobile/Library/", &v15) && (!mt_RecursiveMakeDirectory("/var/mobile/Library/Application Support/Multitouch/", 0x1C0u, v15.st_uid, v15.st_gid, 3) || *__error() == 17))
    {
      v4 = open("/var/mobile/Library/Application Support/Multitouch/multitouch.dycal", 512, 420);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = v4;
        v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v14.st_blksize = v6;
        *v14.st_qspare = v6;
        v14.st_birthtimespec = v6;
        *&v14.st_size = v6;
        v14.st_mtimespec = v6;
        v14.st_ctimespec = v6;
        *&v14.st_uid = v6;
        v14.st_atimespec = v6;
        *&v14.st_dev = v6;
        if (!fstat(v4, &v14))
        {
          if (v14.st_uid == v15.st_uid)
          {
            st_gid = v15.st_gid;
            if (v14.st_gid == v15.st_gid)
            {
LABEL_13:
              if (fcntl(v5, 64, 4))
              {
                v3 = 3758097095;
              }

              else
              {
                close(v5);
                v8 = *MEMORY[0x277CBECE8];
                v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "/var/mobile/Library/Application Support/Multitouch/multitouch.dycal", 0);
                v10 = CFURLCreateWithFileSystemPath(v8, v9, kCFURLPOSIXPathStyle, 0);
                v11 = CFWriteStreamCreateWithFile(v8, v10);
                v3 = 3758097085;
                if (v9)
                {
                  if (v10)
                  {
                    v12 = v11;
                    if (v11)
                    {
                      if (CFWriteStreamOpen(v11))
                      {
                        CFPropertyListWrite(v16, v12, kCFPropertyListXMLFormat_v1_0, 0, 0);
                        CFWriteStreamClose(v12);
                      }

                      else
                      {
                        v1 = 3758097101;
                      }

                      CFRelease(v12);
                      CFRelease(v9);
                      CFRelease(v10);
                      v3 = v1;
                    }
                  }
                }
              }

              goto LABEL_22;
            }
          }

          else
          {
            st_gid = v15.st_gid;
          }

          if (!chown("/var/mobile/Library/Application Support/Multitouch/multitouch.dycal", v15.st_uid, st_gid))
          {
            goto LABEL_13;
          }
        }
      }
    }

LABEL_22:
    CFRelease(v16);
    return v3;
  }

  return v1;
}

uint64_t MTDeviceSetParserEnabled(io_service_t *a1, char a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v4;
  v39 = v4;
  v36 = v4;
  v37 = v4;
  v34 = v4;
  v35 = v4;
  v32 = v4;
  v33 = v4;
  v30 = v4;
  v31 = v4;
  v28 = v4;
  v29 = v4;
  v26 = v4;
  v27 = v4;
  v24 = v4;
  v25 = v4;
  v23 = v4;
  v22 = v4;
  v21 = v4;
  v20 = v4;
  v19 = v4;
  v18 = v4;
  v17 = v4;
  v16 = v4;
  v15 = v4;
  v14 = v4;
  v13 = v4;
  v12 = v4;
  v11 = v4;
  v10 = v4;
  v9 = v4;
  v8 = v4;
  memset(v6, 170, sizeof(v6));
  inputStruct = 17;
  LOBYTE(v8) = a2;
  result = MTDeviceIssueDriverRequest(a1, &inputStruct, v6);
  if (!result)
  {
    result = v6[0];
    if (!v6[0])
    {
      mt_PostNotificationEventToDriver(a1, 26);
      return 0;
    }
  }

  return result;
}

uint64_t MTDeviceGetParserEnabled(io_service_t *a1, BOOL *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  v27 = v4;
  v28 = v4;
  v25 = v4;
  v26 = v4;
  v24 = v4;
  v23 = v4;
  v22 = v4;
  v21 = v4;
  v20 = v4;
  v19 = v4;
  v18 = v4;
  v17 = v4;
  v16 = v4;
  v15 = v4;
  v14 = v4;
  v13 = v4;
  v12 = v4;
  v11 = v4;
  v10 = v4;
  v9 = v4;
  memset(v7, 170, sizeof(v7));
  inputStruct = 18;
  LODWORD(result) = MTDeviceIssueDriverRequest(a1, &inputStruct, v7);
  v6 = v7[0];
  if (a2 && !result && !v7[0])
  {
    *a2 = LOBYTE(v7[1]) == 1;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v6;
  }
}

uint64_t MTDeviceSetSystemForceResponseEnabled(io_service_t *a1, char a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v4;
  v39 = v4;
  v36 = v4;
  v37 = v4;
  v34 = v4;
  v35 = v4;
  v32 = v4;
  v33 = v4;
  v30 = v4;
  v31 = v4;
  v28 = v4;
  v29 = v4;
  v26 = v4;
  v27 = v4;
  v24 = v4;
  v25 = v4;
  v23 = v4;
  v22 = v4;
  v21 = v4;
  v20 = v4;
  v19 = v4;
  v18 = v4;
  v17 = v4;
  v16 = v4;
  v15 = v4;
  v14 = v4;
  v13 = v4;
  v12 = v4;
  v11 = v4;
  v10 = v4;
  v9 = v4;
  v8 = v4;
  memset(v6, 170, sizeof(v6));
  inputStruct = 15;
  LOBYTE(v8) = a2;
  result = MTDeviceIssueDriverRequest(a1, &inputStruct, v6);
  if (!result)
  {
    result = v6[0];
    if (!v6[0])
    {
      mt_PostNotificationEventToDriver(a1, 28);
      return 0;
    }
  }

  return result;
}

BOOL MTDeviceGetSystemForceResponseEnabled(io_service_t *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v2;
  v38 = v2;
  v35 = v2;
  v36 = v2;
  v33 = v2;
  v34 = v2;
  v31 = v2;
  v32 = v2;
  v29 = v2;
  v30 = v2;
  v27 = v2;
  v28 = v2;
  v25 = v2;
  v26 = v2;
  v23 = v2;
  v24 = v2;
  v22 = v2;
  v21 = v2;
  v20 = v2;
  v19 = v2;
  v18 = v2;
  v17 = v2;
  v16 = v2;
  v15 = v2;
  v14 = v2;
  v13 = v2;
  v12 = v2;
  v11 = v2;
  v10 = v2;
  v9 = v2;
  v8 = v2;
  v7 = v2;
  memset(v5, 170, sizeof(v5));
  inputStruct = 16;
  v3 = MTDeviceIssueDriverRequest(a1, &inputStruct, v5);
  return !(v3 | v5[0]) && LOBYTE(v5[1]) != 0;
}

uint64_t MTDeviceEnableWorkIntervalNotification(uint64_t a1)
{
  v1 = 3758097084;
  if (!a1)
  {
    return 3758097090;
  }

  if (*(a1 + 5736))
  {
    return 3758097109;
  }

  v5 = -1431655766;
  if (mt_ServiceGetInt32Property(*(a1 + 16), @"FrameProcessingTimeoutUs", &v5))
  {
    return 3758097095;
  }

  v4 = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&v4);
  *(a1 + 5728) = 1000 * v5 * v4.denom / v4.numer;
  if (!work_interval_create())
  {
    return 0;
  }

  *(a1 + 5736) = 0;
  return v1;
}

void _MTDriverAppendIOReporterChannelsToResetInfo(uint64_t a1, uint64_t a2)
{
  v2 = IOReportCopyChannelsForDriver();
  if (v2)
  {
    v3 = v2;
    if (IOReportGetChannelCount() >= 1)
    {
      IOReportCreateSubscription();
    }

    CFRelease(v3);
  }
}

__CFArray *MTDriverCreateResetInfo()
{
  v22[3] = *MEMORY[0x277D85DE8];
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (theArray)
  {
    v0 = 0;
    v1 = *MEMORY[0x277CBECE8];
    v2 = kRootDriverNames;
    v3 = 1;
    do
    {
      v4 = v3;
      v5 = v2[v0];
      v6 = IOServiceNameMatching(v5);
      if (v6)
      {
        MatchingService = IOServiceGetMatchingService(0, v6);
        ChildServiceWithProperty = findChildServiceWithProperty(MatchingService, @"ResetCount");
        if (ChildServiceWithProperty)
        {
          v9 = ChildServiceWithProperty;
          v22[0] = @"ResetCount";
          v22[1] = @"Core Dumps Count";
          v22[2] = @"Core Dump";
          Mutable = CFDictionaryCreateMutable(v1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v11 = Mutable;
            v12 = CFStringCreateWithCString(0, v5, 0x8000100u);
            if (v12)
            {
              v13 = v12;
              v14 = v2;
              CFDictionarySetValue(v11, @"Name", v12);
              for (i = 0; i != 3; ++i)
              {
                v16 = v22[i];
                CFProperty = IORegistryEntryCreateCFProperty(v9, v16, v1, 0);
                if (CFProperty)
                {
                  v18 = CFProperty;
                  CFDictionarySetValue(v11, v16, CFProperty);
                  CFRelease(v18);
                }
              }

              _MTDriverAppendIOReporterChannelsToResetInfo(v9, v11);
              v19 = CFRetain(v11);
              CFRelease(v13);
              v2 = v14;
            }

            else
            {
              v19 = 0;
            }

            CFRelease(v11);
            IOObjectRelease(v9);
            if (v19)
            {
              CFArrayAppendValue(theArray, v19);
              CFRelease(v19);
            }
          }

          else
          {
            IOObjectRelease(v9);
          }
        }
      }

      v3 = 0;
      v0 = 1;
    }

    while ((v4 & 1) != 0);
  }

  return theArray;
}

uint64_t findChildServiceWithProperty(uint64_t a1, const __CFString *a2)
{
  v3 = 0;
  iterator = 0;
  if (a1 && a2)
  {
    CFProperty = IORegistryEntryCreateCFProperty(a1, a2, 0, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      IOObjectRetain(a1);
      v3 = a1;
    }

    else
    {
      if (!MEMORY[0x25F855470](a1, "IOService", &iterator))
      {
        while (1)
        {
          v8 = IOIteratorNext(iterator);
          if (!v8)
          {
            break;
          }

          ChildServiceWithProperty = findChildServiceWithProperty(v8, a2);
          if (ChildServiceWithProperty)
          {
            v3 = ChildServiceWithProperty;
            v6 = 0;
            goto LABEL_10;
          }
        }
      }

      v6 = 0;
      v3 = 0;
    }

LABEL_10:
    if (iterator)
    {
      IOObjectRelease(iterator);
      iterator = 0;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (a1)
  {
    IOObjectRelease(a1);
  }

  return v3;
}

uint64_t MTDeviceGetResetCount(uint64_t a1, _DWORD *a2)
{
  v3 = 0;
  for (i = 1; ; i = 0)
  {
    v5 = i;
    v6 = IOServiceNameMatching(kRootDriverNames[v3]);
    if (v6)
    {
      MatchingService = IOServiceGetMatchingService(0, v6);
      ChildServiceWithProperty = findChildServiceWithProperty(MatchingService, @"ResetCount");
      if (ChildServiceWithProperty)
      {
        v9 = ChildServiceWithProperty;
        CFProperty = IORegistryEntryCreateCFProperty(ChildServiceWithProperty, @"ResetCount", 0, 0);
        IOObjectRelease(v9);
        if (CFProperty)
        {
          valuePtr = 0;
          Value = CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
          CFRelease(CFProperty);
          if (Value)
          {
            if ((valuePtr & 0x80000000) == 0)
            {
              break;
            }
          }
        }
      }
    }

    v3 = 1;
    if ((v5 & 1) == 0)
    {
      return 3758097136;
    }
  }

  if (a2)
  {
    *a2 = valuePtr;
  }

  return 0;
}

uint64_t MTSwapInt16DeviceToHost(uint64_t a1, unsigned int a2)
{
  v2 = __rev16(a2);
  if (*(a1 + 100) == 1)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

uint64_t MTSwapInt16PtrDeviceToHost(uint64_t result, unsigned __int16 *a2)
{
  v2 = bswap32(*a2) >> 16;
  if (*(result + 100) == 1)
  {
    v3 = *a2;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t MTSwapInt16HostToDevice(uint64_t a1, unsigned int a2)
{
  v2 = __rev16(a2);
  if (*(a1 + 100) == 1)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

uint64_t MTSwapInt16PtrHostToDevice(uint64_t result, unsigned __int16 *a2)
{
  v2 = bswap32(*a2) >> 16;
  if (*(result + 100) == 1)
  {
    v3 = *a2;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t MTSwapInt32DeviceToHost(uint64_t a1, unsigned int a2)
{
  v2 = bswap32(a2);
  if (*(a1 + 100) == 1)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

uint64_t MTSwapInt32PtrDeviceToHost(uint64_t result, unsigned int *a2)
{
  v2 = bswap32(*a2);
  if (*(result + 100) == 1)
  {
    v3 = *a2;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t MTSwapInt32HostToDevice(uint64_t a1, unsigned int a2)
{
  v2 = bswap32(a2);
  if (*(a1 + 100) == 1)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

uint64_t MTSwapInt32PtrHostToDevice(uint64_t result, unsigned int *a2)
{
  v2 = bswap32(*a2);
  if (*(result + 100) == 1)
  {
    v3 = *a2;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

NSObject *mt_CreateBinaryFilters(uint64_t a1)
{
  v184 = *MEMORY[0x277D85DE8];
  v162 = 0xAAAAAAAAAAAAAAAALL;
  if (mt_DeviceCopyArrayProperty(a1, @"BinaryFilters", &v162))
  {
    v2 = 0;
    v162 = 0;
  }

  else
  {
    v2 = v162;
  }

  v3 = [v2 count];
  if (v3)
  {
    v5 = objc_opt_new();
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/MultitouchPlugins" isDirectory:1];
    v8 = v6;
    if (v6)
    {
      v9 = objc_opt_new();
      v135 = v9;
      if (v9)
      {
        v11 = [MTAHTSupport getInterfaceInServiceTree:MTDeviceGetService(a1)];
        v13 = v11;
        v136 = v8;
        v137 = v5;
        v156 = a1;
        if (!v11)
        {
          if (a1)
          {
            if (*(a1 + 133) == 1)
            {
              mt_CachePropertiesForDevice(a1);
            }

            v18 = MTLoggingFramework(v11, v12);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v36 = *(a1 + 64);
              *buf = 134217984;
              *&buf[4] = v36;
              _os_log_impl(&dword_25AD59000, v18, OS_LOG_TYPE_ERROR, "MTDevice doesn't have an AHTInterface (deviceID 0x%llX)", buf, 0xCu);
            }

            v17 = a1;
            v19 = 0;
LABEL_59:

            if (v19)
            {
              v48 = v19;
            }

            else
            {
              v48 = &__block_literal_global;
            }

            v142 = MEMORY[0x25F855B00](v48);

            v49 = objc_opt_new();
            LODWORD(v163) = -1431655766;
            if (!MTDeviceGetVersion(v17, &v163))
            {
              v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@0x%08X", @"MTFW-", v163];
              [v49 addObject:v50];
            }

            v51 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/System/Library/Extensions/AppleMultitouchSPI.kext/PlugIns/MultitouchHID.plugin/"];
            v52 = v51;
            v53 = 0x277CBE000;
            v31 = v142;
            if (v51)
            {
              v54 = [v51 objectForInfoDictionaryKey:@"CFBundleVersion"];
              if (v54)
              {
                v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"MultitouchHID.plugin-", v54];
                [v49 addObject:v55];

                v31 = v142;
              }
            }

            v56 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/System/Library/PrivateFrameworks/MultitouchSupport.framework/"];
            if (v56)
            {
              v57 = [v52 objectForInfoDictionaryKey:@"CFBundleVersion"];
              if (v57)
              {
                [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"MultitouchSupport.framework-", v57];
                v59 = v58 = v2;
                [v49 addObject:v59];

                v2 = v58;
                v53 = 0x277CBE000uLL;
              }

              v31 = v142;
            }

            v60 = [v49 count];
            if (v60)
            {
              v62 = v49;
            }

            else if (v156)
            {
              if (*(v156 + 133) == 1)
              {
                mt_CachePropertiesForDevice(v156);
              }

              v63 = MTLoggingFramework(v60, v61);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                v64 = *(v156 + 64);
                *buf = 134217984;
                *&buf[4] = v64;
                _os_log_impl(&dword_25AD59000, v63, OS_LOG_TYPE_ERROR, "No versions could be retrieved (deviceID 0x%llX)", buf, 0xCu);
              }

              v62 = 0;
              v31 = v142;
            }

            else
            {
              mt_CreateBinaryFilters_cold_1(0, v61);
              v62 = 0;
            }

            v160 = 0u;
            v161 = 0u;
            v158 = 0u;
            v159 = 0u;
            v134 = v2;
            obj = v2;
            v65 = v156;
            v149 = [obj countByEnumeratingWithState:&v158 objects:v173 count:16];
            v66 = v5;
            if (v149)
            {
              v157 = &v31[2];
              v147 = *v159;
              v67 = 0x277CBE000uLL;
              v148 = v62;
              do
              {
                v68 = 0;
                do
                {
                  if (*v159 != v147)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v153 = v68;
                  v69 = *(*(&v158 + 1) + 8 * v68);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v171 = @"Name";
                    v172 = v69;
                    v71 = [*(v67 + 2752) dictionaryWithObjects:&v172 forKeys:&v171 count:1];
                    v70 = [v71 mutableCopy];

                    if (!v62)
                    {
                      goto LABEL_90;
                    }

LABEL_89:
                    v72 = [v62 mutableCopy];
                    [v70 setObject:v72 forKey:@"Versions"];

                    goto LABEL_90;
                  }

                  v70 = [v69 mutableCopy];
                  if (v62)
                  {
                    goto LABEL_89;
                  }

LABEL_90:
                  v73 = v8;
                  v74 = v70;
                  v154 = v31;
                  v155 = v74;
                  v75 = [v74 objectForKeyedSubscript:@"Name"];
                  v152 = v73;
                  if (!v75)
                  {
                    v77 = 0;
                    v67 = 0x277CBE000;
                    v78 = v153;
                    goto LABEL_148;
                  }

                  v151 = v75;
                  v150 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.plugin", v75];
                  v76 = [objc_alloc(*(v53 + 3008)) initWithString:v150 relativeToURL:v73];
                  v77 = 0;
                  v67 = 0x277CBE000;
                  v78 = v153;
                  if ([v76 checkResourceIsReachableAndReturnError:0])
                  {
                    v79 = v76;
                    v80 = v155;
                    v146 = v154;
                    v81 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithURL:v79];
                    v144 = v80;
                    v145 = v76;
                    if (![v81 load])
                    {
                      v77 = 0;
                      goto LABEL_133;
                    }

                    v82 = v8;
                    v83 = v66;
                    v84 = v81;
                    v85 = [v81 principalClass];
                    if (([v85 conformsToProtocol:&unk_286C2B818] & 1) == 0)
                    {
                      v87 = [[MTBinaryFilterLegacy alloc] initFromURL:v79 device:v65];
LABEL_99:
                      v77 = v87;
                      v67 = 0x277CBE000;
                      v66 = v83;
                      v8 = v82;
                      v53 = 0x277CBE000;
                      goto LABEL_133;
                    }

                    v86 = [v85 alloc];
                    if (objc_opt_respondsToSelector())
                    {
                      v87 = [v86 initWithInfo:v80 getProperty:v146];
                      goto LABEL_99;
                    }

                    v138 = v86;
                    v88 = v80;
                    v89 = v146;
                    v141 = v88;
                    v90 = [v88 objectForKeyedSubscript:@"PropertyNames"];
                    objc_opt_class();
                    v140 = v90;
                    isKindOfClass = objc_opt_isKindOfClass();
                    v67 = 0x277CBE000;
                    v139 = v79;
                    if (isKindOfClass)
                    {
                      v93 = objc_opt_new();
                      if (v93)
                      {
                        v95 = v93;
                        v165 = 0u;
                        v166 = 0u;
                        v163 = 0u;
                        v164 = 0u;
                        v96 = v140;
                        v97 = [v96 countByEnumeratingWithState:&v163 objects:buf count:16];
                        if (v97)
                        {
                          v98 = v97;
                          v99 = *v164;
                          do
                          {
                            v100 = 0;
                            do
                            {
                              if (*v164 != v99)
                              {
                                objc_enumerationMutation(v96);
                              }

                              v101 = *(*(&v163 + 1) + 8 * v100);
                              v102 = (*v157)(v89, v101);
                              v104 = v102;
                              if (v102)
                              {
                                [v95 setObject:v102 forKeyedSubscript:v101];
                              }

                              else if (v65)
                              {
                                if (*(v65 + 133) == 1)
                                {
                                  mt_CachePropertiesForDevice(v65);
                                }

                                v105 = MTLoggingFramework(v102, v103);
                                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                {
                                  v106 = *(v156 + 64);
                                  *v176 = 138543618;
                                  v177 = v101;
                                  v178 = 2048;
                                  v179 = v106;
                                  _os_log_impl(&dword_25AD59000, v105, OS_LOG_TYPE_ERROR, "Could not retrieve the property %{public}@ (deviceID 0x%llX)", v176, 0x16u);
                                }

                                v65 = v156;
                              }

                              else
                              {
                                mt_CreateBinaryFilters_cold_2(v174, v101, &v175);
                              }

                              ++v100;
                            }

                            while (v98 != v100);
                            v81 = v84;
                            v107 = [v96 countByEnumeratingWithState:&v163 objects:buf count:16];
                            v98 = v107;
                          }

                          while (v107);
                        }

                        [v141 setObject:v95 forKeyedSubscript:@"Properties"];
                        v8 = v136;
                        v66 = v137;
                        v53 = 0x277CBE000;
                        v67 = 0x277CBE000;
                        v78 = v153;
LABEL_132:

                        v77 = [v138 initWithInfo:v141];
                        v79 = v139;
LABEL_133:

                        v113 = v79;
                        if (v77)
                        {
                          if (v65)
                          {
                            if (*(v65 + 133) == 1)
                            {
                              mt_CachePropertiesForDevice(v65);
                            }

                            v114 = MTLoggingFramework(v111, v112);
                            if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                            {
                              v115 = *(v65 + 64);
                              *buf = 138543618;
                              *&buf[4] = v113;
                              *&buf[12] = 2048;
                              *&buf[14] = v115;
                              v116 = v114;
                              v117 = OS_LOG_TYPE_INFO;
                              v118 = "Created binary filter from %{public}@ (deviceID 0x%llX)";
                              goto LABEL_144;
                            }

LABEL_146:

                            v31 = v142;
                            v76 = v145;
                            goto LABEL_147;
                          }

                          v114 = MTLoggingFramework(v111, v112);
                          if (!os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                          {
                            goto LABEL_146;
                          }

                          *buf = 138543362;
                          *&buf[4] = v113;
                          v116 = v114;
                          v117 = OS_LOG_TYPE_INFO;
                          v118 = "Created binary filter from %{public}@";
LABEL_163:
                          v120 = 12;
                        }

                        else
                        {
                          if (!v65)
                          {
                            v114 = MTLoggingFramework(v111, v112);
                            if (!os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_146;
                            }

                            *buf = 138543362;
                            *&buf[4] = v113;
                            v116 = v114;
                            v117 = OS_LOG_TYPE_ERROR;
                            v118 = "Couldn't create binary filter from %{public}@";
                            goto LABEL_163;
                          }

                          if (*(v65 + 133) == 1)
                          {
                            mt_CachePropertiesForDevice(v65);
                          }

                          v114 = MTLoggingFramework(v111, v112);
                          if (!os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_146;
                          }

                          v119 = *(v65 + 64);
                          *buf = 138543618;
                          *&buf[4] = v113;
                          *&buf[12] = 2048;
                          *&buf[14] = v119;
                          v116 = v114;
                          v117 = OS_LOG_TYPE_ERROR;
                          v118 = "Couldn't create binary filter from %{public}@ (deviceID 0x%llX)";
LABEL_144:
                          v120 = 22;
                        }

                        _os_log_impl(&dword_25AD59000, v116, v117, v118, buf, v120);
                        goto LABEL_146;
                      }

                      if (v65)
                      {
                        v66 = v83;
                        if (*(v65 + 133) == 1)
                        {
                          mt_CachePropertiesForDevice(v65);
                        }

                        v109 = MTLoggingFramework(v93, v94);
                        v8 = v82;
                        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                        {
                          v110 = *(v65 + 64);
                          *buf = 134217984;
                          *&buf[4] = v110;
                          _os_log_impl(&dword_25AD59000, v109, OS_LOG_TYPE_ERROR, "Could not allocate properties dict (deviceID 0x%llX)", buf, 0xCu);
                        }

                        v95 = 0;
                        v67 = 0x277CBE000;
                        goto LABEL_131;
                      }

                      mt_CreateBinaryFilters_cold_3(&v167, v168);
                      v95 = 0;
                      v66 = v83;
                    }

                    else
                    {
                      if (v65)
                      {
                        v66 = v83;
                        if (*(v65 + 133) == 1)
                        {
                          mt_CachePropertiesForDevice(v65);
                        }

                        v95 = MTLoggingFramework(isKindOfClass, v92);
                        v8 = v82;
                        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
                        {
                          v108 = *(v65 + 64);
                          *buf = 134217984;
                          *&buf[4] = v108;
                          _os_log_impl(&dword_25AD59000, v95, OS_LOG_TYPE_DEBUG, "No property names to read (deviceID 0x%llX)", buf, 0xCu);
                        }

                        goto LABEL_131;
                      }

                      v95 = MTLoggingFramework(isKindOfClass, v92);
                      v66 = v83;
                      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_25AD59000, v95, OS_LOG_TYPE_DEBUG, "No property names to read", buf, 2u);
                      }
                    }

                    v8 = v82;
LABEL_131:
                    v53 = 0x277CBE000;
                    goto LABEL_132;
                  }

LABEL_147:

                  v75 = v151;
LABEL_148:

                  if (v77)
                  {
                    mt_UpdateMaxPacketSize(v65, v77);
                    [v66 addObject:v77];
                  }

                  else if (v65)
                  {
                    if (*(v65 + 133) == 1)
                    {
                      mt_CachePropertiesForDevice(v65);
                    }

                    v123 = MTLoggingFramework(v121, v122);
                    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                    {
                      v124 = [v155 objectForKeyedSubscript:@"Name"];
                      v125 = *(v156 + 64);
                      *buf = 138543618;
                      *&buf[4] = v124;
                      *&buf[12] = 2048;
                      *&buf[14] = v125;
                      _os_log_impl(&dword_25AD59000, v123, OS_LOG_TYPE_ERROR, "Cannot create filter %{public}@ (deviceID 0x%llX)", buf, 0x16u);

                      v65 = v156;
                    }

                    v67 = 0x277CBE000;
                  }

                  else
                  {
                    mt_CreateBinaryFilters_cold_4(v169, v155, &v170);
                  }

                  v68 = v78 + 1;
                  v62 = v148;
                }

                while (v68 != v149);
                v126 = [obj countByEnumeratingWithState:&v158 objects:v173 count:16];
                v149 = v126;
              }

              while (v126);
            }

            v127 = [v66 count];
            if (v127 < 0xB)
            {
              if ([v66 count])
              {
                v5 = v66;
                v30 = v66;
LABEL_180:
                v2 = v134;
LABEL_181:

                goto LABEL_182;
              }

              v5 = v66;
            }

            else
            {
              if (v65)
              {
                v5 = v66;
                if (*(v65 + 133) == 1)
                {
                  mt_CachePropertiesForDevice(v65);
                }

                v129 = MTLoggingFramework(v127, v128);
                v2 = v134;
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  v130 = [v5 count];
                  v131 = *(v65 + 64);
                  *buf = 67109632;
                  *&buf[4] = v130;
                  *&buf[8] = 1024;
                  *&buf[10] = 10;
                  *&buf[14] = 2048;
                  *&buf[16] = v131;
                  _os_log_impl(&dword_25AD59000, v129, OS_LOG_TYPE_ERROR, "Too many filters. Found %u, max supported: %u (deviceID 0x%llX)", buf, 0x18u);
                }

                v30 = 0;
                goto LABEL_181;
              }

              v5 = v66;
              mt_CreateBinaryFilters_cold_5(v66, v128);
            }

            v30 = 0;
            goto LABEL_180;
          }

          v18 = MTLoggingFramework(0, v12);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_25AD59000, v18, OS_LOG_TYPE_ERROR, "MTDevice doesn't have an AHTInterface", buf, 2u);
          }

          v19 = 0;
LABEL_58:
          v17 = v156;
          goto LABEL_59;
        }

        v14 = [v11 getBootLoader];
        v16 = v14;
        if (v14)
        {
LABEL_9:
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __mt_CreateGetPropertyBlock_block_invoke;
          v181 = &unk_2799231E8;
          v17 = v156;
          v182 = v16;
          v183 = v156;
          v18 = v16;
          v19 = MEMORY[0x25F855B00](buf);

          goto LABEL_59;
        }

        v37 = v156;
        if (v156)
        {
          if (*(v156 + 133) == 1)
          {
            mt_CachePropertiesForDevice(v156);
          }

          v38 = MTLoggingFramework(v14, v15);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(v156 + 64);
            *buf = 134217984;
            *&buf[4] = v39;
            _os_log_impl(&dword_25AD59000, v38, OS_LOG_TYPE_DEFAULT, "AHTInterface doesn't have an AHTBootloader. Trying with AHTDevice (deviceID 0x%llX)", buf, 0xCu);
          }
        }

        else
        {
          v38 = MTLoggingFramework(0, v15);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25AD59000, v38, OS_LOG_TYPE_DEFAULT, "AHTInterface doesn't have an AHTBootloader. Trying with AHTDevice", buf, 2u);
          }

          v37 = 0;
        }

        v40 = [MTAHTSupport getDeviceInServiceTree:MTDeviceGetService(v37)];
        v18 = v40;
        if (v40)
        {
          v42 = [v40 getBootLoader];
          if (v42)
          {
            v16 = v42;

            goto LABEL_9;
          }

          if (v156)
          {
            if (*(v156 + 133) == 1)
            {
              mt_CachePropertiesForDevice(v156);
            }

            v44 = MTLoggingFramework(v42, v43);
            if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            v47 = *(v156 + 64);
            *buf = 134217984;
            *&buf[4] = v47;
            v46 = "AHTDevice doesn't have an AHTBootloader (deviceID 0x%llX)";
            goto LABEL_56;
          }

          v44 = MTLoggingFramework(0, v43);
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 0;
          v133 = "AHTDevice doesn't have an AHTBootloader";
        }

        else
        {
          if (v37)
          {
            if (*(v37 + 133) == 1)
            {
              mt_CachePropertiesForDevice(v156);
            }

            v44 = MTLoggingFramework(v40, v41);
            if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            v45 = *(v156 + 64);
            *buf = 134217984;
            *&buf[4] = v45;
            v46 = "MTDevice doesn't have an AHTDevice (deviceID 0x%llX)";
LABEL_56:
            _os_log_impl(&dword_25AD59000, v44, OS_LOG_TYPE_ERROR, v46, buf, 0xCu);
LABEL_57:

            v19 = 0;
            goto LABEL_58;
          }

          v44 = MTLoggingFramework(0, v41);
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 0;
          v133 = "MTDevice doesn't have an AHTDevice";
        }

        _os_log_impl(&dword_25AD59000, v44, OS_LOG_TYPE_ERROR, v133, buf, 2u);
        goto LABEL_57;
      }

      if (a1)
      {
        if (*(a1 + 133) == 1)
        {
          mt_CachePropertiesForDevice(a1);
        }

        v31 = MTLoggingFramework(v9, v10);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v32 = *(a1 + 64);
        *buf = 134217984;
        *&buf[4] = v32;
        v33 = "Cannot allocate bundles (deviceID 0x%llX)";
        v34 = v31;
        v35 = 12;
      }

      else
      {
        v31 = MTLoggingFramework(0, v10);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 0;
        v33 = "Cannot allocate bundles";
        v34 = v31;
        v35 = 2;
      }

      _os_log_impl(&dword_25AD59000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
LABEL_31:
      v30 = 0;
LABEL_182:

      goto LABEL_183;
    }

    if (a1)
    {
      if (*(a1 + 133) == 1)
      {
        mt_CachePropertiesForDevice(a1);
      }

      v25 = MTLoggingFramework(v6, v7);
      v135 = v25;
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v26 = *(a1 + 64);
      *buf = 134217984;
      *&buf[4] = v26;
      v27 = "Cannot create URL from default path (deviceID 0x%llX)";
      v28 = v25;
      v29 = 12;
    }

    else
    {
      v135 = MTLoggingFramework(0, v7);
      if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v27 = "Cannot create URL from default path";
      v28 = v135;
      v29 = 2;
    }

    _os_log_impl(&dword_25AD59000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
LABEL_22:
    v30 = 0;
LABEL_183:

    goto LABEL_184;
  }

  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v20 = MTLoggingFramework(v3, v4);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v5 = v20;
      goto LABEL_24;
    }

    v21 = *(a1 + 64);
    *buf = 134217984;
    *&buf[4] = v21;
    v22 = "No binary filters found (deviceID 0x%llX)";
    v5 = v20;
    v23 = v20;
    v24 = 12;
  }

  else
  {
    v5 = MTLoggingFramework(0, v4);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v22 = "No binary filters found";
    v23 = v5;
    v24 = 2;
  }

  _os_log_impl(&dword_25AD59000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
LABEL_24:
  v30 = 0;
LABEL_184:

  return v30;
}

void mt_UpdateMaxPacketSize(uint64_t a1, void *a2)
{
  *&v22[7] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 maxFrameSize];
  DriverMaxPacketSize = MTDeviceGetDriverMaxPacketSize(a1);
  if (v4 > DriverMaxPacketSize)
  {
    if (a1)
    {
      if (*(a1 + 133) == 1)
      {
        mt_CachePropertiesForDevice(a1);
      }

      v7 = MTLoggingFramework(DriverMaxPacketSize, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [v3 maxFrameSize];
        v9 = *(a1 + 64);
        LODWORD(v20) = 67109376;
        HIDWORD(v20) = v8;
        v21 = 2048;
        *v22 = v9;
        _os_log_impl(&dword_25AD59000, v7, OS_LOG_TYPE_DEBUG, "Setting a max injection packet size of %u (deviceID 0x%llX)", &v20, 0x12u);
      }
    }

    else
    {
      mt_UpdateMaxPacketSize_cold_1(v3, &v20);
      v7 = v20;
    }

    v10 = MTDeviceSetInjectionMaxPacketSize(a1, [v3 maxFrameSize]);
    if (v10)
    {
      v12 = v10;
      if (a1)
      {
        if (*(a1 + 133) == 1)
        {
          mt_CachePropertiesForDevice(a1);
        }

        v13 = MTLoggingFramework(v10, v11);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v14 = [v3 maxFrameSize];
        v15 = *(a1 + 64);
        LODWORD(v20) = 67109632;
        HIDWORD(v20) = v14;
        v21 = 1024;
        *v22 = v12;
        v22[2] = 2048;
        *&v22[3] = v15;
        v16 = "Error setting max injection packet size to %u: 0x%08X (deviceID 0x%llX)";
        v17 = v13;
        v18 = 24;
      }

      else
      {
        v13 = MTLoggingFramework(v10, v11);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v19 = [v3 maxFrameSize];
        LODWORD(v20) = 67109376;
        HIDWORD(v20) = v19;
        v21 = 1024;
        *v22 = v12;
        v16 = "Error setting max injection packet size to %u: 0x%08X";
        v17 = v13;
        v18 = 14;
      }

      _os_log_impl(&dword_25AD59000, v17, OS_LOG_TYPE_ERROR, v16, &v20, v18);
LABEL_14:
    }
  }
}

void mt_ApplyBinaryFilters(uint64_t a1, unsigned __int8 *a2, size_t a3, uint64_t a4)
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2304) == 1)
  {
    *(a1 + 2304) = 0;
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v8 = MTLoggingFramework(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 64);
      *buf = 134217984;
      v21 = v9;
      _os_log_impl(&dword_25AD59000, v8, OS_LOG_TYPE_INFO, "Resetting Binary Filters (deviceID 0x%llX)", buf, 0xCu);
    }

    v10 = *(a1 + 2296);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:buf count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          [v15 reset];
          mt_UpdateMaxPacketSize(a1, v15);
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:buf count:16];
      }

      while (v12);
    }
  }

  kdebug_trace();
  mt_ApplyBinaryFilter(a1, 0, a2, a3, v4, 1);
}

void mt_ApplyBinaryFilter(uint64_t a1, unsigned int a2, unsigned __int8 *a3, size_t a4, unsigned int a5, uint64_t a6)
{
  v17 = a3;
  v15 = a5;
  v16 = a4;
  v11 = *(a1 + 2296);
  if ([v11 count] == a2)
  {
    if (a6)
    {
      kdebug_trace();
    }

    mt_ProcessMultitouchFrame(a1, a3, a4);
  }

  else
  {
    v12 = [v11 objectAtIndexedSubscript:a2];
    kdebug_trace();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __mt_ApplyBinaryFilter_block_invoke;
    v13[3] = &__block_descriptor_41_e14_v24__0_8I16I20l;
    v14 = a2;
    v13[4] = a1;
    [v12 filterFrame:&v17 size:&v16 maxSize:&v15 extraFrame:v13];
    kdebug_trace();
    if (v16)
    {
      mt_ApplyBinaryFilter(a1, (a2 + 1), v17, v16, v15, a6);
    }

    else if (a6)
    {
      kdebug_trace();
    }
  }
}

void mt_SetBinaryFiltersProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 133) == 1)
    {
      mt_CachePropertiesForDevice(a1);
    }

    v6 = MTLoggingFramework(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 64);
      *buf = 138543874;
      v23 = a2;
      v24 = 2114;
      v25 = a3;
      v26 = 2048;
      v27 = v7;
      v8 = "Setting Binary Filters property %{public}@ = %{public}@ (deviceID 0x%llX)";
      v9 = v6;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_25AD59000, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
    }
  }

  else
  {
    v6 = MTLoggingFramework(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v23 = a2;
      v24 = 2114;
      v25 = a3;
      v8 = "Setting Binary Filters property %{public}@ = %{public}@";
      v9 = v6;
      v10 = 22;
      goto LABEL_6;
    }
  }

  v11 = *(a1 + 2296);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 setProperty:a2 withValue:a3];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

BOOL OUTLINED_FUNCTION_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t MTSet16BitScalingRange(uint64_t result, unsigned int a2)
{
  if (a2 > result)
  {
    gMT16BitConversionRange = result;
    word_27FA116BA = a2;
  }

  return result;
}

__int16 *mt_Scale8BitBufferTo16BitRange(__int16 *result, unsigned int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      *result = *result * a3 / 256;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t mt_Scale16BitRangeTo8Bits(uint64_t result, int a2, int a3, int a4, int a5)
{
  if (a2 >= 1)
  {
    v5 = (result + 134);
    v6 = 1;
    do
    {
      if (a3 >= 1)
      {
        v7 = (a3 + 1) - 1;
        v8 = v5;
        do
        {
          *v8 = ((*v8 - a4) * (65280 / (a5 - a4))) >> 8;
          ++v8;
          --v7;
        }

        while (v7);
      }

      ++v6;
      v5 += 66;
    }

    while (v6 != a2 + 1);
  }

  return result;
}

uint64_t mt_UncompressTouchpadCodecV1Force(char *a1, uint64_t a2, unint64_t a3, int a4, unsigned int a5, int a6, _DWORD *a7)
{
  v24 = *MEMORY[0x277D85DE8];
  *a7 = 0;
  if (a3 > 0xF)
  {
    *a7 = 16;
    bzero(a1, 2 * a5 * a4);
    for (i = 0; i != 4; ++i)
    {
      if (i == 2)
      {
        v15 = (a5 >> 1) - 1;
      }

      else
      {
        v15 = a5 >> 1;
      }

      if (i == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = a5 - 4;
      }

      if (i)
      {
        v17 = ((3 * a5) >> 1) - 1;
      }

      else
      {
        v17 = (3 * a5) >> 1;
      }

      if (i)
      {
        v18 = a5;
      }

      else
      {
        v18 = 2 * a5 - 4;
      }

      if (i <= 1u)
      {
        LOWORD(v15) = v17;
        v16 = v18;
      }

      v19 = *(a2 + 4 * i);
      if (a6)
      {
        *&a1[2 * v15] = v19;
      }

      else
      {
        *&a1[2 * v15] = v19 >> 8;
        v20 = &a1[2 * v16];
        *(v20 + 2) = HIWORD(v19);
        *(v20 + 3) = v19;
      }
    }

    return 0;
  }

  else
  {
    v7 = a3;
    v8 = MTLoggingFramework(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 67109376;
      v21[1] = v7;
      v22 = 1024;
      v23 = 16;
      _os_log_impl(&dword_25AD59000, v8, OS_LOG_TYPE_ERROR, "Uncompressed image buffer(%u) was too small to handle expected number of force bytes(%u)\n", v21, 0xEu);
    }

    return 3758096385;
  }
}

uint64_t mt_UncompressTouchpadCodecV1Touch(_WORD *a1, uint64_t a2, unint64_t a3, unsigned __int16 a4, unsigned int a5)
{
  v9 = touchpadCodecCreate(a5, a4, 16, 0, 0);
  if (v9)
  {
    v11 = touchpadCodecDecodeImage(v9, a1, 2 * a5, a2, a3);
    v13 = 0;
    if (!v11)
    {
      v13 = 3758097084;
      v14 = MTLoggingFramework(0, v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v15 = "Touchpad codec v1 failed to decode the provided image\n";
        v16 = &v18;
LABEL_7:
        _os_log_impl(&dword_25AD59000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
      }
    }
  }

  else
  {
    v13 = 3758097084;
    v14 = MTLoggingFramework(0, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Touchpad codec v1 failed to create codec\n";
      v16 = buf;
      goto LABEL_7;
    }
  }

  return v13;
}

uint64_t mt_UncompressTouchpadCodecV1Image(_WORD *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  result = 3758097085;
  v9 = a5 - 2;
  if (a5 < 2)
  {
    return 3758097090;
  }

  if (a2 >= 2 * (a6 * a5))
  {
    v13 = 0;
    result = mt_UncompressTouchpadCodecV1Force(&a1[v9 * a6], a3, a4, 2, a6, a7, &v13);
    if (!result)
    {
      return mt_UncompressTouchpadCodecV1Touch(a1, a3 + v13, a4 - v13, v9, a6);
    }
  }

  return result;
}

double alg_InitTimeState(uint64_t a1, int a2)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 20) = 12000 / a2;
  *(a1 + 24) = 12000 / a2;
  *(a1 + 28) = ((10923 * (12000 / a2)) >> 21) + ((10923 * (12000 / a2)) >> 31);
  return result;
}

uint64_t mtalg_LibraryGetTypeID()
{
  result = __kmtalg_LibraryTypeID;
  if (!__kmtalg_LibraryTypeID)
  {
    pthread_once(&__mtalgLibraryTypeInit, __mtalgLibraryRegister);
    return __kmtalg_LibraryTypeID;
  }

  return result;
}

uint64_t __mtalgLibraryRegister()
{
  result = _CFRuntimeRegisterClass();
  __kmtalg_LibraryTypeID = result;
  return result;
}

uint64_t mtalg_CreateAlgLibraryForDevice(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if (!a1)
  {
    return 0;
  }

  v10 = a7;
  if (!__kmtalg_LibraryTypeID)
  {
    pthread_once(&__mtalgLibraryTypeInit, __mtalgLibraryRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v18 = Instance;
  if (Instance)
  {
    mt_InitImagerGridAndTimeState(Instance + 24, a2, a3, a4, a5, a6, v10, v17, a9, a10);
    mt_InitPathLifeCycles(v18);
  }

  return v18;
}

void mt_InitImagerGridAndTimeState(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v12 = a4;
  v13 = a3;
  v14 = a2;
  memset(v18, 170, 7);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  mt_FillDefaultMultitouchRegion(a2, a3, a5, a4, v18);
  if (a7 >= 1)
  {
    v16 = a7;
  }

  else
  {
    v16 = 256;
  }

  alg_InitSurfaceGrid(a1, v12, v18, (a5 + 84), (a5 + 91), v16);
  alg_InitTimeState(a1 + 464, 60);
  v17 = HIWORD(a10);
  if (WORD2(a10) || a10 || v17)
  {
    *(a1 + 354) = a10;
    *(a1 + 352) = WORD2(a10);
    *(a1 + 356) = HIWORD(a10);
    *(a1 + 358) = WORD1(a10);
    LOBYTE(v17) = 1;
  }

  *(a1 + 459) = v17;
  if ((gMT_BE_LESS_VERBOSE & 1) == 0)
  {
    printf("*** %s (0x%lx) family*** (%2d cols X %2d rows)\n", *(a1 + 32), *(a1 + 24), v13, v14);
  }
}

size_t mt_FillDefaultMultitouchRegion(size_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  if (result > 64 || a2 >= 65)
  {
    result = fprintf(*MEMORY[0x277D85DF8], "Image Buffer from device (%dx%d) larger than host arrays (%dx%d)!\n", result, a2, 64, 64);
    if (v8 >= 65)
    {
      mt_FillDefaultMultitouchRegion_cold_2();
    }

    if (a2 >= 65)
    {
      mt_FillDefaultMultitouchRegion_cold_1();
    }
  }

  if (!a3)
  {
    result = fwrite("WARNING:  No Multitouch Device image regions specified!\n", 0x38uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v10 = *(a3 + 7);
  v9 = (a3 + 7);
  if (v10 == 1)
  {
    v11 = *v9;
    *(a5 + 3) = *(v9 + 3);
    *a5 = v11;
  }

  else
  {
    *a5 = 1;
    *(a5 + 3) = 1;
    *(a5 + 2) = v8;
    *(a5 + 5) = a2;
    *(a5 + 6) = 0;
  }

  return result;
}

uint64_t mt_ExpandImageAndForward(_BYTE *a1, __int16 *a2, unsigned int *a3, uint64_t a4)
{
  v8 = *(a3 + 7);
  v9 = *(a3 + 6);
  v10 = v9 + v8;
  v11 = *a3;
  if (*a3)
  {
    v12 = a3[1];
  }

  else if (*(a3 + 17) == 1)
  {
    if (*(a3 + 16) == 8)
    {
      mt_Scale8BitBufferTo16BitRange(a2, *(a3 + 5) * *(a3 + 4), v9);
      v11 = *a3;
      v12 = 66562;
    }

    else
    {
      v11 = 0;
      if (*(a3 + 18))
      {
        v12 = 65794;
      }

      else
      {
        v12 = 258;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = 34816;
    v8 = 30720;
    v12 = 66;
  }

  mtp_ForwardDeviceImageBuffer(a1, a2, *(a3 + 4), *(a3 + 5), a4, v11, v12, v8, v10, 1);
  return v12;
}

void __mtalgLibraryInit(uint64_t a1)
{
  if (a1)
  {
    bzero((a1 + 16), 0x4EF8uLL);
  }
}

uint64_t MTDeviceGetTypeID()
{
  result = __kMTDeviceTypeID;
  if (!__kMTDeviceTypeID)
  {
    pthread_once(&__deviceTypeInit, __MTDeviceRegister);
    return __kMTDeviceTypeID;
  }

  return result;
}

uint64_t __MTDeviceRegister()
{
  result = _CFRuntimeRegisterClass();
  __kMTDeviceTypeID = result;
  return result;
}

uint64_t MTDeviceCreate(io_object_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (!__kMTDeviceTypeID)
  {
    pthread_once(&__deviceTypeInit, __MTDeviceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a1)
    {
      IOObjectRetain(a1);
      *(Instance + 16) = a1;
    }

    *(Instance + 41) = 1;
    *(Instance + 135) = 0;
    *(Instance + 114) = 0;
    *(Instance + 130) = 0;
    *(Instance + 132) = 0;
    *(Instance + 144) = MTAbsoluteTimeGetCurrent();
    *(Instance + 104) = CFStringCreateWithCString(v2, "", 0x600u);
    *(Instance + 384) = 0;
    *(Instance + 392) = 0;
  }

  return Instance;
}

void *MT_ParsedMultitouchFrameRepCreate(unsigned int a1)
{
  v2 = malloc_type_malloc(0x678uLL, 0x10100404899599CuLL);
  if (v2)
  {
    v3 = malloc_type_malloc(a1, 0xAE0C13E0uLL);
    if (v3)
    {
      v4 = v3;
      bzero(v2, 0x678uLL);
      *(v2 + 5) = v4;
      *(v2 + 12) = a1;
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void ParsedMultitouchFrameRepDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

double __MTDeviceInit(uint64_t a1)
{
  if (a1)
  {
    bzero((a1 + 16), 0x1670uLL);
    *(a1 + 16) = 0;
    *(a1 + 136) = 0;
    Current = MTAbsoluteTimeGetCurrent();
    *(a1 + 220) = 0u;
    *(a1 + 144) = Current;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 180) = 0;
    *(a1 + 184) = 0;
    *(a1 + 212) = 0xFF000000FFLL;
    *(a1 + 192) = 0xFFFFFFFF00000000;
    *(a1 + 200) = 0;
    *(a1 + 207) = 0;
    *(a1 + 236) = 0u;
    *(a1 + 252) = 0u;
    *(a1 + 268) = 0u;
    *(a1 + 284) = 0u;
    *(a1 + 300) = 0u;
    *(a1 + 316) = 0u;
    *(a1 + 332) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 133) = 1;
    bzero((a1 + 400), 0x698uLL);
    v3 = 0;
    v4 = a1 + 2032;
    do
    {
      *(a1 + 1972 + 4 * v3) = 0;
      *(v4 + 8 * v3) = 0;
      v5 = malloc_type_malloc(0xFAuLL, 0x580A250CuLL);
      *(v4 + 8 * v3) = v5;
      if (v5)
      {
        *(v5 + 234) = 0u;
        v5[13] = 0u;
        v5[14] = 0u;
        v5[11] = 0u;
        v5[12] = 0u;
        v5[9] = 0u;
        v5[10] = 0u;
        v5[7] = 0u;
        v5[8] = 0u;
        v5[5] = 0u;
        v5[6] = 0u;
        v5[3] = 0u;
        v5[4] = 0u;
        v5[1] = 0u;
        v5[2] = 0u;
        v6 = v3 + 1;
        *v5 = 0u;
        snprintf(*(v4 + 8 * v3), 8uLL, "Channel %d", v3 + 1);
      }

      else
      {
        v6 = v3 + 1;
      }

      *(a1 + 1992 + 8 * v3) = 0x40C000003F800000;
      v3 = v6;
    }

    while (v6 != 5);
    *(a1 + 2072) = 0;
    result = 0.0;
    *(a1 + 2120) = 0u;
    *(a1 + 2088) = 0;
    *(a1 + 2104) = 0;
    *(a1 + 2096) = 0;
    *(a1 + 2112) = 0;
    *(a1 + 2136) = 0;
    *(a1 + 2140) = 0;
    *(a1 + 2164) = 0;
    *(a1 + 2168) = 0;
    *(a1 + 2176) = 0;
    *(a1 + 2184) = -1;
    *(a1 + 2225) = 0;
    *(a1 + 2192) = 0u;
    *(a1 + 2208) = 0u;
  }

  return result;
}

void __MTDeviceRelease(uint64_t a1)
{
  if (a1)
  {
    MTDeviceStop(a1);
    v2 = *(a1 + 16);
    if (v2)
    {
      IOObjectRelease(v2);
      *(a1 + 16) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      MTActuatorSetMTDevice(v3, 0);
      CFRelease(*(a1 + 32));
      *(a1 + 32) = 0;
    }

    v4 = *(a1 + 104);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 104) = 0;
    }

    v5 = *(a1 + 392);
    if (v5)
    {
      ParsedMultitouchFrameRepDestroy(v5);
      *(a1 + 392) = 0;
    }

    v6 = 0;
    v7 = a1 + 2032;
    do
    {
      v8 = *(v7 + v6);
      if (v8)
      {
        free(v8);
        *(v7 + v6) = 0;
      }

      v6 += 8;
    }

    while (v6 != 40);
    v9 = *(a1 + 152);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 152) = 0;
    }

    v10 = *(a1 + 2296);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 2296) = 0;
    }

    v11 = *(a1 + 2088);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 2088) = 0;
    }

    v12 = *(a1 + 2104);
    if (v12)
    {
      CFRunLoopSourceInvalidate(v12);
      CFRelease(*(a1 + 2104));
      *(a1 + 2104) = 0;
    }

    v13 = *(a1 + 2176);
    if (v13)
    {
      dispatch_release(v13);
      *(a1 + 2176) = 0;
    }

    v14 = 0;
    v15 = a1 + 5448;
    do
    {
      MTImageInfoRelease(*(v15 + v14));
      *(v15 + v14) = 0;
      v14 += 8;
    }

    while (v14 != 256);
    if (*(a1 + 5736))
    {
      work_interval_destroy();
      *(a1 + 5736) = 0;
    }

    v16 = *(a1 + 5752);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 5752) = 0;
    }
  }
}

uint64_t mtalg_ProcessImageFrame(_BYTE *a1, uint64_t a2, __int16 *a3, uint64_t a4, unint64_t a5)
{
  result = MTAlg_GetAlgLibStateRef(a1);
  if (result)
  {
    v11 = result;
    alg_UpdateTimeState((result + 488), a4, a5);
    if (*(a2 + 11) == 1 && *(a2 + 12) == 1)
    {
      mt_ForwardPathFrame(a1, a2, a4, a5);
    }

    else
    {
      MTAlg_IssueOpticalProximityCallback(a1, *(a2 + 62));
    }

    return mt_ExpandImageAndForward(a1, a3, (a2 + 20), v11 + 488);
  }

  return result;
}

uint64_t alg_ClipPosPointToScreenEdge(int a1, unsigned __int16 *a2)
{
  v2 = a1;
  v3 = a1 >> 16;
  if (a1 >= *a2)
  {
    v2 = *a2;
  }

  if (a2[1] > a1)
  {
    v2 = a2[1];
  }

  if (v3 >= a2[2])
  {
    LOWORD(v3) = a2[2];
  }

  if (a2[3] > a1 >> 16)
  {
    LOWORD(v3) = a2[3];
  }

  return v2 | (v3 << 16);
}

uint64_t alg_DeriveExtrapolationGain(int a1)
{
  result = 89;
  if ((a1 - 96) >= 8)
  {
    v3 = a1 - 112;
    if (v3 > 0x30 || ((1 << v3) & 0x1000000030001) == 0)
    {
      return 51;
    }
  }

  return result;
}

uint64_t alg_ComputeMinDistToSideElectrodes(uint64_t a1, __int16 a2, int a3)
{
  if ((a2 - *(a1 + 362)) >= (*(a1 + 360) - a2))
  {
    v3 = (*(a1 + 360) - a2);
  }

  else
  {
    v3 = (a2 - *(a1 + 362));
  }

  if (v3 < 0 && a3)
  {
    v3 = (v3 << 8) / *(a1 + 64);
  }

  return v3;
}

uint64_t alg_ComputeMinDistToTopBottomElectrodes(uint64_t a1, int a2, int a3)
{
  if ((*(a1 + 364) - HIWORD(a2)) >= (HIWORD(a2) - *(a1 + 366)))
  {
    v3 = (HIWORD(a2) - *(a1 + 366));
  }

  else
  {
    v3 = (*(a1 + 364) - HIWORD(a2));
  }

  if (v3 < 0 && a3)
  {
    v3 = (v3 << 8) / *(a1 + 68);
  }

  return v3;
}

uint64_t alg_FindSwipeEdgeType(uint64_t a1, int a2, int a3, int a4)
{
  if ((a2 - *(a1 + 362)) >= (*(a1 + 360) - a2))
  {
    v4 = (*(a1 + 360) - a2);
  }

  else
  {
    v4 = (a2 - *(a1 + 362));
  }

  if (v4 < 0)
  {
    v4 = (v4 << 8) / *(a1 + 64);
  }

  v5 = (*(a1 + 364) - HIWORD(a2));
  if (v5 >= (HIWORD(a2) - *(a1 + 366)))
  {
    v5 = (HIWORD(a2) - *(a1 + 366));
  }

  if (v5 < 0)
  {
    v5 = (v5 << 8) / *(a1 + 68);
  }

  if (v4 >= v5)
  {
    v9 = (a2 >> 16) - *(a1 + 366);
    v10 = *(a1 + 364) - (a2 >> 16);
    if (a4 < 1 || v9 >= v10)
    {
      if (v9 > v10)
      {
        v14 = __OFSUB__(a4, 1);
        v13 = a4 - 1 < 0;
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      if (v13 != v14)
      {
        return 2;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v6 = a2 - *(a1 + 362);
    v7 = *(a1 + 360) - a2;
    if (a3 < 1 || v6 >= v7)
    {
      if (v6 > v7)
      {
        v12 = __OFSUB__(a3, 1);
        v11 = a3 - 1 < 0;
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      if (v11 != v12)
      {
        return 1;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t alg_ComputeMinDistToEdges(uint64_t a1, int a2, __int16 a3)
{
  if ((a3 & 0xC) == 0)
  {
    LOWORD(v3) = 0x7FFF;
    goto LABEL_11;
  }

  if ((a2 - *(a1 + 362)) >= (*(a1 + 360) - a2))
  {
    v3 = (*(a1 + 360) - a2);
  }

  else
  {
    v3 = (a2 - *(a1 + 362));
  }

  if (v3 < 0)
  {
    v3 = (v3 << 8) / *(a1 + 64);
    if ((a3 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a3)
  {
LABEL_10:
    LOWORD(v3) = *(a1 + 346) + v3;
  }

LABEL_11:
  if ((a3 & 0x30) != 0)
  {
    if ((*(a1 + 364) - HIWORD(a2)) >= (HIWORD(a2) - *(a1 + 366)))
    {
      v4 = (HIWORD(a2) - *(a1 + 366));
    }

    else
    {
      v4 = (*(a1 + 364) - HIWORD(a2));
    }

    if (v4 < 0)
    {
      v4 = (v4 << 8) / *(a1 + 68);
      if ((a3 & 1) == 0)
      {
LABEL_17:
        if ((a3 & 0x100) == 0)
        {
          goto LABEL_18;
        }

LABEL_21:
        v3 = hypot(v3, v4);
        return v3;
      }
    }

    else if ((a3 & 1) == 0)
    {
      goto LABEL_17;
    }

    LOWORD(v4) = *(a1 + 348) + v4;
    if ((a3 & 0x100) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    LOWORD(v4) = 0x7FFF;
    if ((a3 & 0x100) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_18:
  if (v3 >= v4)
  {
    LOWORD(v3) = v4;
  }

  return v3;
}

uint64_t alg_InitRowColXYConvert(uint64_t a1)
{
  v2 = 100 * *(a1 + 48);
  v3 = *(a1 + 52);
  v4 = vdupq_n_s32(~*(a1 + 72));
  v5 = vdupq_n_s32(v2);
  v6 = xmmword_25AD794B0;
  v7 = xmmword_25AD794C0;
  v8 = xmmword_25AD794D0;
  v9 = (a1 + 218);
  v10 = 68;
  v11 = vdupq_n_s64(0x42uLL);
  v12 = vdupq_n_s64(4uLL);
  v13.i64[0] = 0x400000004;
  v13.i64[1] = 0x400000004;
  do
  {
    v14 = vmulq_s32(v5, vaddq_s32(v8, v4));
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v11, v7)), *v4.i8).u8[0])
    {
      *(v9 - 3) = v14.i32[0] / v3;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x42uLL), *&v7)), *&v4).i8[2])
    {
      *(v9 - 2) = v14.i32[1] / v3;
    }

    if (vuzp1_s16(*&v4, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x42uLL), *&v6))).i32[1])
    {
      *(v9 - 1) = v14.i32[2] / v3;
      *v9 = v14.i32[3] / v3;
    }

    v6 = vaddq_s64(v6, v12);
    v7 = vaddq_s64(v7, v12);
    v8 = vaddq_s32(v8, v13);
    v9 += 4;
    v10 -= 4;
  }

  while (v10);
  v15 = 100 * *(a1 + 56);
  v16 = *(a1 + 60);
  v17 = vdupq_n_s32(~*(a1 + 76));
  v18 = vdupq_n_s32(v15);
  v19 = xmmword_25AD794B0;
  v20 = xmmword_25AD794C0;
  v21 = xmmword_25AD794D0;
  v22 = (a1 + 86);
  v23 = 68;
  v24 = vdupq_n_s64(0x42uLL);
  v25 = vdupq_n_s64(4uLL);
  v26.i64[0] = 0x400000004;
  v26.i64[1] = 0x400000004;
  do
  {
    v27 = vmulq_s32(v18, vaddq_s32(v21, v17));
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v24, v20)), *v17.i8).u8[0])
    {
      *(v22 - 3) = v27.i32[0] / v16;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x42uLL), *&v20)), *&v17).i8[2])
    {
      *(v22 - 2) = v27.i32[1] / v16;
    }

    if (vuzp1_s16(*&v17, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x42uLL), *&v19))).i32[1])
    {
      *(v22 - 1) = v27.i32[2] / v16;
      *v22 = v27.i32[3] / v16;
    }

    v19 = vaddq_s64(v19, v25);
    v20 = vaddq_s64(v20, v25);
    v21 = vaddq_s32(v21, v26);
    v22 += 4;
    v23 -= 4;
  }

  while (v23);
  v28 = *(a1 + 212 + 2 * *(a1 + 2));
  v29 = *(a1 + 5);
  *(a1 + 364) = v28;
  v30 = *(a1 + 214);
  *(a1 + 366) = v30;
  v31 = *(a1 + 80 + 2 * v29);
  *(a1 + 360) = v31;
  v32 = *(a1 + 82);
  *(a1 + 362) = v32;
  v33 = *(a1 + 24);
  v43 = v28;
  if (v33 <= 25)
  {
    if ((v33 - 20) < 2)
    {
      v34 = 384;
      v35 = 384;
      goto LABEL_30;
    }

    if (v33 == 23)
    {
      v35 = 373;
      goto LABEL_28;
    }

    if (v33 == 25)
    {
      v35 = 340;
      v34 = 448;
      goto LABEL_30;
    }
  }

  else
  {
    if ((v33 - 87) < 6)
    {
      v34 = 512;
      v35 = 512;
      goto LABEL_30;
    }

    if (v33 == 26)
    {
      v35 = 330;
LABEL_28:
      v34 = 343;
      goto LABEL_30;
    }
  }

  v34 = 256;
  v35 = 256;
LABEL_30:
  v36 = v15 / v16;
  result = alg_DeriveExtrapolationGain(v33);
  if ((v33 - 87) >= 6)
  {
    v38 = 384;
  }

  else
  {
    v38 = 424;
  }

  v39 = ((result * v38) & 0xFF00u) / (((result * v38) >> 8) | 0x100u);
  v40 = v36 * v39;
  *(a1 + 64) = v34;
  *(a1 + 68) = v35;
  v41 = ((v2 / v3 * v39) / 256) * v35 / 256;
  *(a1 + 348) = v41;
  *(a1 + 350) = v41;
  v42 = (v40 / 256) * v34 / 256;
  *(a1 + 346) = v42;
  *(a1 + 344) = v42;
  if ((*(a1 + 459) & 1) == 0)
  {
    *(a1 + 356) = v43 + v41;
    *(a1 + 358) = v30 - v41;
    *(a1 + 352) = v31 + v42;
    *(a1 + 354) = v32 - v42;
  }

  return result;
}