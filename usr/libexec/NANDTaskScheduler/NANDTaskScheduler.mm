uint64_t sendTunnelBuffer(char **a1, int a2, uint64_t a3, int a4)
{
  inputStruct = 0;
  v18 = 0;
  v19 = 0;
  outputStruct = 0;
  v14 = 0;
  outputStructCnt = 4;
  if ((a3 == 0) != (a4 == 0))
  {
    v4 = __stderrp;
    v5 = "Error in inputBuffer or inputBufSize for sendTunnelBuffer\n";
    v6 = 58;
LABEL_11:
    fwrite(v5, v6, 1uLL, v4);
    goto LABEL_12;
  }

  if (a1)
  {
    v10 = *(a1 + 4);
  }

  else if (!findNandExporter_tunnel(&v14) || (a1 = v14) == 0 || (v10 = *(v14 + 4)) == 0)
  {
    v4 = __stderrp;
    v5 = "Unable to get nand connection\n";
    v6 = 30;
    goto LABEL_11;
  }

  v19 = a3;
  LODWORD(inputStruct) = a2;
  HIDWORD(v18) = a4;
  v11 = IOConnectCallStructMethod(v10, *(a1 + 7), &inputStruct, 0x18uLL, &outputStruct, &outputStructCnt);
  if (v11)
  {
    fprintf(__stderrp, "Failed to send tunnel buffer: 0x%08x\n", v11);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 1;
LABEL_13:
  if (v14)
  {
    ReleaseIOInterfaces(v14);
  }

  return v12;
}

void *fetchTunnelBufferWithInVal(char **a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v10 = a4;
  v12 = a2;
  v13 = a1;
  v21 = 0;
  *a5 = 0;
  if (!a1 && (!findNandExporter_tunnel(&v21) || (v13 = v21) == 0 || !*(v21 + 4)))
  {
    fwrite("Err: Finding internal NAND exporter failed for fetch tunnel buffer.\n", 0x44uLL, 1uLL, __stderrp);
LABEL_11:
    v19 = 0;
    goto LABEL_14;
  }

  v14 = a3;
  v15 = sub_100000CF8(v13, v12, a3, v10, v7);
  if (!v15)
  {
    fprintf(__stderrp, "failed to get data size for cmd option %d\n", v12);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = (vm_page_size + v15 - 1) / vm_page_size * vm_page_size;
  v18 = malloc_type_valloc(v17, 0x100004077774924uLL);
  v19 = v18;
  if (v18)
  {
    bzero(v18, v17);
    if (sub_100000DC0(v13, v12, v14, v10, v19, v17, v8, v7))
    {
      *a5 = v16;
    }

    else
    {
      free(v19);
      v19 = 0;
      *a5 = 0;
    }
  }

  else
  {
    fwrite("can't allocate buffer!\n", 0x17uLL, 1uLL, __stderrp);
  }

LABEL_14:
  if (v21)
  {
    ReleaseIOInterfaces(v21);
  }

  return v19;
}

uint64_t sub_100000CF8(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v13 = 0;
  v12 = 0;
  outputStruct = 0;
  inputStruct[0] = a2;
  outputStructCnt = 4;
  inputStruct[2] = a4;
  inputStruct[1] = a3 | 1;
  v7 = IOConnectCallStructMethod(*(a1 + 16), *(a1 + 28), inputStruct, 0x18uLL, &outputStruct, &outputStructCnt);
  if (v7)
  {
    if ((a5 & 1) == 0)
    {
      fprintf(__stderrp, "Error calling CoreDebugTunnel method! - 0x%X\n", v7);
    }

    return 0;
  }

  else
  {
    result = outputStruct;
    if (!outputStruct && (a5 & 1) == 0)
    {
      fprintf(__stderrp, "SizeOnly for tunnel command 0x%x returned 0\n", a2);
      return outputStruct;
    }
  }

  return result;
}

uint64_t sub_100000DC0(uint64_t a1, int a2, int a3, int a4, void *outputStruct, size_t a6, char a7, char a8)
{
  LOBYTE(v9) = a7;
  outputStructCnt = a6;
  v20 = 0;
  v19 = 0;
  while (1)
  {
    inputStruct[0] = a2;
    inputStruct[1] = a3;
    inputStruct[2] = a4;
    v15 = IOConnectCallStructMethod(*(a1 + 16), *(a1 + 28), inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
    if (v15 != -536870211)
    {
      break;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    if ((a8 & 1) == 0)
    {
      fprintf(__stderrp, "CoreDebugTunnel 0x%x returned kIOReturnNoMemory\n", a2);
    }

    v16 = outputStructCnt;
    outputStructCnt = vm_page_size;
    v9 = 1;
    if (vm_page_size == v16)
    {
      return v9;
    }
  }

  if (!v15)
  {
    return 1;
  }

LABEL_10:
  if ((a8 & 1) == 0)
  {
    fprintf(__stderrp, "Error calling CoreDebugTunnel method! - 0x%X\n", v15);
  }

  return 0;
}

void *fetchTunnelBufferSkipSizeWrap(char **a1, int a2, void *a3)
{
  v5 = a1;
  v11 = 0;
  if (a1 || findNandExporter_tunnel(&v11) && (v5 = v11) != 0 && *(v11 + 4))
  {
    v6 = *a3;
    v7 = (v6 + vm_page_size - 1) / vm_page_size * vm_page_size;
    v8 = malloc_type_valloc(v7, 0x100004077774924uLL);
    v9 = v8;
    if (v8)
    {
      bzero(v8, v7);
      if (sub_100000DC0(v5, a2, 0, 0, v9, v7, 0, 1))
      {
        *a3 = v6;
      }

      else
      {
        free(v9);
        v9 = 0;
        *a3 = 0;
      }
    }

    else
    {
      fwrite("can't allocate buffer!\n", 0x17uLL, 1uLL, __stderrp);
    }
  }

  else
  {
    fwrite("Err: Finding internal NAND exporter failed for fetch tunnel buffer.\n", 0x44uLL, 1uLL, __stderrp);
    v9 = 0;
  }

  if (v11)
  {
    ReleaseIOInterfaces(v11);
  }

  return v9;
}

uint64_t populateTunnelBuffer(uint64_t a1, void *a2, void *a3, int a4, int a5, int a6, char a7, char a8)
{
  if (!a1)
  {
    v18 = __stderrp;
    v19 = "Err: Need a valid nand exporter here.\n";
    v20 = 38;
    goto LABEL_10;
  }

  if (!a2 || !a3)
  {
    v18 = __stderrp;
    v19 = "Err: Need a valid outputbuffer and bufferSize";
    v20 = 45;
    goto LABEL_10;
  }

  v16 = sub_100000CF8(a1, a4, a5, a6, a8);
  if (!v16)
  {
    v21 = 0;
    goto LABEL_16;
  }

  v17 = v16;
  if (!*a3 || v16 <= *a3)
  {
    v23 = (vm_page_size + v16 - 1) / vm_page_size * vm_page_size;
    bzero(a2, v23);
    if ((sub_100000DC0(a1, a4, a5, a6, a2, v23, a7, a8) & 1) == 0)
    {
      goto LABEL_11;
    }

    v21 = v17;
LABEL_16:
    result = 1;
    goto LABEL_12;
  }

  v18 = __stderrp;
  v19 = "Err: Allocated buffer not large enough for the command.\n";
  v20 = 56;
LABEL_10:
  fwrite(v19, v20, 1uLL, v18);
LABEL_11:
  v21 = 0;
  result = 0;
LABEL_12:
  *a3 = v21;
  return result;
}

uint64_t populateTunnelOutputBufferWithoutSizeQuery_withFlags(char **a1, int a2, int a3, int a4, void *outputStruct, size_t a6, char a7, char a8)
{
  v17 = 0;
  if (a1 || findNandExporter_tunnel(&v17) && (a1 = v17) != 0 && *(v17 + 4))
  {
    if (sub_100000DC0(a1, a2, a3, a4, outputStruct, a6, a7, a8))
    {
      v15 = 1;
      goto LABEL_10;
    }

    fprintf(__stderrp, "Error fetching the tunnel output buffer for opcode [%d]\n", a2);
  }

  else
  {
    fwrite("Err: Finding internal NAND exporter failed.\n", 0x2CuLL, 1uLL, __stderrp);
  }

  v15 = 0;
LABEL_10:
  if (v17)
  {
    ReleaseIOInterfaces(v17);
  }

  return v15;
}

uint64_t getTunnelOutputThroughSizeOnlyHandling(char **a1, int a2, int a3, void *outputStruct)
{
  v15 = 0;
  v14 = 0;
  v16 = 0;
  outputStructCnt = 4;
  v11 = 0;
  inputStruct = a2;
  v13 = 1;
  *(&v14 + 2) = a3;
  if (!outputStruct)
  {
    syslog(3, "Error: must provide valid pointer for output value");
    goto LABEL_11;
  }

  if (a1)
  {
    v6 = *(a1 + 4);
  }

  else if (!findNandExporter_tunnel(&v11) || (a1 = v11) == 0 || (v6 = *(v11 + 4)) == 0)
  {
    fwrite("Err: Finding internal NAND exporter failed.\n", 0x2CuLL, 1uLL, __stderrp);
    goto LABEL_11;
  }

  v7 = IOConnectCallStructMethod(v6, *(a1 + 8), &inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
  if (v7)
  {
    fprintf(__stderrp, "Error fetching the tunnel output buffer for opcode [%d], Result [0x%X]\n", a2, v7);
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_12:
  if (v11)
  {
    ReleaseIOInterfaces(v11);
  }

  return v8;
}

uint64_t ASPParseBufferToCxt(uint64_t a1, unint64_t *a2, unsigned int a3)
{
  *(a1 + 36) = -1;
  if (a3 < 8)
  {
    return 0;
  }

  v6 = a3 >> 3;
  while (2)
  {
    v9 = *a2;
    v8 = (a2 + 1);
    v7 = v9;
    v10 = HIDWORD(v9);
    v11 = v6 - 1;
    if (v9 > 0x30000000 || v11 < v10)
    {
      result = 0;
      *(a1 + 32) = 0;
      return result;
    }

    switch(v7)
    {
      case 1:
        v13 = *v8;
        v14 = "version";
        goto LABEL_77;
      case 2:
        v13 = *v8;
        v14 = "hostWriteXacts";
        goto LABEL_77;
      case 3:
        v13 = *v8;
        v14 = "hostReadXacts";
        goto LABEL_77;
      case 4:
        v13 = *v8;
        *(a1 + 72) = *v8;
        v14 = "hostWrites";
        goto LABEL_77;
      case 5:
        v13 = *v8;
        v14 = "hostWritesDyn";
        goto LABEL_77;
      case 6:
        v13 = *v8;
        v14 = "hostWritesStatic";
        goto LABEL_77;
      case 7:
        v13 = *v8;
        *(a1 + 64) = *v8;
        v14 = "hostReads";
        goto LABEL_77;
      case 8:
        v13 = *v8;
        v14 = "validLbas";
        goto LABEL_77;
      case 9:
        v13 = *v8;
        v14 = "shutdowns";
        goto LABEL_77;
      case 10:
        v13 = *v8;
        v14 = "boots";
        goto LABEL_77;
      case 11:
        v13 = *v8;
        v14 = "uncleanBoots";
        goto LABEL_77;
      case 12:
        v13 = *v8;
        *(a1 + 144) = *v8;
        v14 = "IND_pool_free";
        goto LABEL_77;
      case 13:
        v13 = *v8;
        *(a1 + 152) = *v8;
        v14 = "IND_pool_count";
        goto LABEL_77;
      case 14:
        v15 = "hostWriteLogHisto";
        v16 = a1;
        v17 = 14;
        goto LABEL_44;
      case 15:
        v15 = "hostReadLogHisto";
        v16 = a1;
        v17 = 15;
LABEL_44:
        v18 = v8;
        v19 = 10;
        goto LABEL_51;
      case 16:
        v13 = *v8;
        v14 = "gcWrites";
        goto LABEL_77;
      case 17:
        v13 = *v8;
        *(a1 + 88) = *v8;
        v14 = "wearLevMoves";
        goto LABEL_77;
      case 18:
        v13 = *v8;
        *(a1 + 104) = *v8;
        v14 = "nandWrites";
        goto LABEL_77;
      case 19:
        v13 = *v8;
        *(a1 + 96) = *v8;
        v14 = "nandReads";
        goto LABEL_77;
      case 20:
        v13 = *v8;
        *(a1 + 112) = *v8;
        v14 = "bandErases";
        goto LABEL_77;
      case 22:
        v13 = *v8;
        v14 = "numPfail";
        goto LABEL_77;
      case 23:
        v13 = *v8;
        v14 = "numEfail";
        goto LABEL_77;
      case 24:
        v13 = *v8;
        v14 = "numPerformanceRefreshes";
        goto LABEL_77;
      case 27:
        v13 = *v8;
        v14 = "hostWritesMeta";
        goto LABEL_77;
      case 28:
        v13 = *v8;
        *(a1 + 168) = *v8;
        v14 = "numSleepOps";
        goto LABEL_77;
      case 30:
        v13 = *v8;
        v14 = "cntTimeWentBackWardOnBoot";
        goto LABEL_77;
      case 31:
        v13 = *v8;
        v14 = "cntTimeWentBackWard";
        goto LABEL_77;
      case 34:
        v13 = *v8;
        v14 = "powerOnHours";
        goto LABEL_77;
      case 36:
        v13 = *v8;
        v14 = "smartCritWarnings";
        goto LABEL_77;
      case 37:
        v13 = *v8;
        v14 = "numFlushes";
        goto LABEL_77;
      case 38:
        v13 = *v8;
        v14 = "numUnmap";
        goto LABEL_77;
      case 39:
        v13 = *v8;
        v14 = "numUnmapSec";
        goto LABEL_77;
      case 41:
        v13 = *v8;
        v14 = "clogProgram";
        goto LABEL_77;
      case 42:
        v13 = *v8;
        v14 = "clogPFail";
        goto LABEL_77;
      case 43:
        v13 = *v8;
        v14 = "clogRead";
        goto LABEL_77;
      case 44:
        v13 = *v8;
        v14 = "clogRFail";
        goto LABEL_77;
      case 45:
        v13 = *v8;
        *(a1 + 176) = *v8;
        v14 = "maxHighEnduranceBlockErases";
        goto LABEL_77;
      case 46:
        v13 = *v8;
        v14 = "numFactoryBad";
        goto LABEL_77;
      case 47:
        v13 = *v8;
        v14 = "numGrownBad";
        goto LABEL_77;
      case 48:
        v13 = *v8;
        *(a1 + 80) = *v8;
        v14 = "numFreeVirtualBlocks";
        goto LABEL_77;
      case 49:
        v13 = *v8;
        *(a1 + 56) = *v8;
        v14 = "bytesPerPage";
        goto LABEL_77;
      case 50:
        v13 = *v8;
        *(a1 + 52) = *v8;
        v14 = "pagesPerVirtualBlock";
        goto LABEL_77;
      case 51:
        v13 = *v8;
        *(a1 + 48) = *v8;
        v14 = "blocksPerVirtualBlock";
        goto LABEL_77;
      case 52:
        v13 = *v8;
        *(a1 + 44) = *v8;
        v14 = "numVirtualBlocks";
        goto LABEL_77;
      case 53:
        v13 = *v8;
        *(a1 + 32) = *v8;
        v14 = "exportVersion";
        goto LABEL_77;
      case 54:
        v15 = "ECBins";
        v16 = a1;
        v17 = 54;
        goto LABEL_50;
      case 55:
        v15 = "RCBins";
        v16 = a1;
        v17 = 55;
LABEL_50:
        v18 = v8;
        v19 = 100;
        goto LABEL_51;
      case 56:
        v13 = *v8;
        *(a1 + 160) = *v8;
        v14 = "utilFormatTime";
        goto LABEL_77;
      case 57:
        v13 = *v8;
        v14 = "calendarTime";
        goto LABEL_77;
      case 58:
        v13 = *v8;
        v14 = "wallTime";
        goto LABEL_77;
      case 59:
        v13 = *v8;
        v14 = "cmdq_flush_us";
        goto LABEL_77;
      case 60:
        v13 = *v8;
        v14 = "cmdq_unmap_us";
        goto LABEL_77;
      case 61:
        v13 = *v8;
        v14 = "cmdq_pri0_r_us";
        goto LABEL_77;
      case 62:
        v13 = *v8;
        v14 = "cmdq_pri0_w_us";
        goto LABEL_77;
      case 63:
        v13 = *v8;
        v14 = "cmdq_pri1_r_us";
        goto LABEL_77;
      case 64:
        v13 = *v8;
        v14 = "cmdq_pri1_w_us";
        goto LABEL_77;
      case 65:
        v13 = *v8;
        v14 = "cmdq_pri2_r_us";
        goto LABEL_77;
      case 66:
        v13 = *v8;
        v14 = "cmdq_pri2_w_us";
        goto LABEL_77;
      case 67:
        v13 = *v8;
        v14 = "cmdq_pri3_r_us";
        goto LABEL_77;
      case 68:
        v13 = *v8;
        v14 = "cmdq_pri3_w_us";
        goto LABEL_77;
      case 69:
        v13 = *v8;
        v14 = "host_idle_ms";
        goto LABEL_77;
      case 70:
        v13 = *v8;
        v14 = "cmd_hysteresis_window_us";
        goto LABEL_77;
      case 71:
        v13 = *v8;
        v14 = "cmd_lowPriHoldoffDelay_us";
        goto LABEL_77;
      case 72:
        v13 = *v8;
        v14 = "cmd_lowPriHoldoffEnabled";
LABEL_77:
        v20 = a1;
        goto LABEL_78;
      default:
        switch(v7)
        {
          case 73:
            v13 = *v8;
            v14 = "cmd_expedite_num_success";
            goto LABEL_77;
          case 75:
            v13 = *v8;
            v14 = "cmd_expedite_num_failures";
            goto LABEL_77;
          case 76:
            v13 = *v8;
            v14 = "num_trimerase";
            goto LABEL_77;
          case 77:
            v13 = *v8;
            v14 = "staticSizeInMB";
            goto LABEL_77;
          case 80:
            v13 = *v8;
            v14 = "slcInvalidations";
            goto LABEL_77;
          case 81:
            v13 = *v8;
            v14 = "slcGCInvalidations";
            goto LABEL_77;
          case 82:
            v13 = *v8;
            v14 = "hostSectorsDuringGCon";
            goto LABEL_77;
          case 83:
            v13 = *v8;
            v14 = "highWaterMarkSLCUsed";
            goto LABEL_77;
          case 84:
            v13 = *v8;
            v14 = "intermediateBandErases";
            goto LABEL_77;
          case 85:
            v13 = *v8;
            v14 = "intermediatePartitionStart";
            goto LABEL_77;
          case 86:
            v13 = *v8;
            v14 = "userPartitionStart";
            goto LABEL_77;
          case 87:
            v13 = *v8;
            v14 = "iolog_lbas";
            goto LABEL_77;
          case 88:
            v15 = "bandsAgeBins";
            v16 = a1;
            v17 = 88;
            goto LABEL_44;
          case 89:
            v15 = "intermediateBandsAgeBins";
            v16 = a1;
            v17 = 89;
            goto LABEL_44;
          case 90:
            v15 = "qosPerCmdQ";
            v16 = a1;
            v17 = 90;
            v18 = v8;
            v19 = 160;
            goto LABEL_51;
          case 91:
            v15 = "maxQosPerCmdQ";
            v16 = a1;
            v17 = 91;
            goto LABEL_44;
          case 92:
            v13 = *v8;
            v14 = "shutdownDuringGC";
            goto LABEL_77;
          case 93:
            v15 = "numBandsRefreshedForAgePerTier";
            v16 = a1;
            v17 = 93;
LABEL_130:
            v18 = v8;
            v19 = 3;
            goto LABEL_51;
          case 94:
            v15 = "bdrDeltaHot";
            v16 = a1;
            v17 = 94;
            goto LABEL_93;
          case 95:
            v13 = *v8;
            v14 = "numRefreshOnClockLoss";
            goto LABEL_77;
          case 96:
            v13 = *v8;
            v14 = "numRefreshOnErrNandRefreshRel";
            goto LABEL_77;
          case 97:
            v13 = *v8;
            v14 = "numBGRefreshMoves";
            goto LABEL_77;
          case 98:
            v13 = *v8;
            v14 = "numBGPaddingMoves";
            goto LABEL_77;
          case 99:
            v13 = *v8;
            v14 = "hostWritesPhoto";
            goto LABEL_77;
          case 100:
            v13 = *v8;
            v14 = "INDPooldFree";
            goto LABEL_77;
          case 101:
            v13 = *v8;
            v14 = "INDContigCount";
            goto LABEL_77;
          case 102:
            v13 = *v8;
            v14 = "INDValidContigCount";
            goto LABEL_77;
          case 103:
            v13 = *v8;
            v14 = "INDMinContigSize";
            goto LABEL_77;
          case 104:
            v13 = *v8;
            v14 = "INDMaxContigSize";
            goto LABEL_77;
          case 105:
            v13 = *v8;
            v14 = "INDAveContigSize";
            goto LABEL_77;
          case 106:
            v13 = *v8;
            v14 = "INDpoolSize";
            goto LABEL_77;
          case 107:
            v13 = *v8;
            v14 = "pushSyncWrites";
            goto LABEL_77;
          case 109:
            v13 = *v8;
            v14 = "cmd_rw_hysteresis_us";
            goto LABEL_77;
          case 110:
            v13 = *v8;
            v14 = "photoFlowMode";
            goto LABEL_77;
          case 112:
            v13 = *v8;
            v14 = "numBandsPaddedForAge";
            goto LABEL_77;
          case 113:
            v15 = "bandsPerHostFlow";
            v16 = a1;
            v17 = 113;
            goto LABEL_144;
          case 114:
            v15 = "bandsPerSpecialFlow";
            v16 = a1;
            v17 = 114;
            goto LABEL_102;
          case 115:
            v15 = "secsPerHostFlow";
            v16 = a1;
            v17 = 115;
            goto LABEL_144;
          case 116:
            v15 = "secsPerSpecialFlow";
            v16 = a1;
            v17 = 116;
            goto LABEL_102;
          case 118:
            v15 = "overWritesPerHostFlow";
            v16 = a1;
            v17 = 118;
            goto LABEL_144;
          case 119:
            v15 = "overWritesPerSpecialFlow";
            v16 = a1;
            v17 = 119;
            goto LABEL_102;
          case 120:
            v15 = "padSectorsPerFlow";
            v16 = a1;
            v17 = 120;
            goto LABEL_44;
          case 121:
            v15 = "padSizes";
            v16 = a1;
            v17 = 121;
            goto LABEL_144;
          case 122:
            v15 = "unmapsPerHostFlow";
            v16 = a1;
            v17 = 122;
            goto LABEL_144;
          case 123:
            v15 = "unmapsPerSpecialFlow";
            v16 = a1;
            v17 = 123;
LABEL_102:
            v18 = v8;
            v19 = 5;
            goto LABEL_51;
          case 124:
            v15 = "coldestCycle";
            v16 = a1;
            v17 = 124;
            goto LABEL_123;
          case 125:
            v15 = "hottestCycle";
            v16 = a1;
            v17 = 125;
            goto LABEL_123;
          case 126:
            v13 = *v8;
            v14 = "gcLonlyWrites";
            goto LABEL_77;
          case 127:
            v13 = *v8;
            v14 = "gcPLWrites";
            goto LABEL_77;
          case 129:
            v13 = *v8;
            v14 = "pagesPerVirtualBlockSlc";
            goto LABEL_77;
          case 130:
            v13 = *v8;
            v14 = "bdrPadding";
            goto LABEL_77;
          case 131:
            v15 = "errInjCounters";
            v16 = a1;
            v17 = 131;
            goto LABEL_149;
          case 132:
            v13 = *v8;
            v14 = "raidSuccessfulReconstructionInternal";
            goto LABEL_77;
          case 133:
            v13 = *v8;
            v14 = "raidSuccessfulReconstructionHost";
            goto LABEL_77;
          case 134:
            v13 = *v8;
            v14 = "raidFailedReconstructionInternal";
            goto LABEL_77;
          case 135:
            v13 = *v8;
            v14 = "raidFailedReconstructionHost";
            goto LABEL_77;
          case 136:
            v13 = *v8;
            v14 = "raidBandsPerHostFlow";
            goto LABEL_77;
          case 137:
            v13 = *v8;
            v14 = "raidSecsPerHostFlow";
            goto LABEL_77;
          case 138:
            v13 = *v8;
            v14 = "gcFreeL";
            goto LABEL_77;
          case 139:
            v13 = *v8;
            v14 = "gcDestinations";
            goto LABEL_77;
          case 140:
            v13 = *v8;
            v14 = "gcFragments";
            goto LABEL_77;
          case 141:
            v13 = *v8;
            v14 = "numMemChoke";
            goto LABEL_77;
          case 142:
            v13 = *v8;
            v14 = "maxMemChokeDuration";
            goto LABEL_77;
          case 143:
            v13 = *v8;
            v14 = "memChokeDuration";
            goto LABEL_77;
          default:
            switch(v7)
            {
              case 144:
                v13 = *v8;
                v14 = "numMemExtreme";
                goto LABEL_77;
              case 145:
                v13 = *v8;
                v14 = "maxMemExtremeDuration";
                goto LABEL_77;
              case 146:
                v13 = *v8;
                v14 = "memExtremeDuration";
                goto LABEL_77;
              case 147:
                v13 = *v8;
                v14 = "bandGetsExtreme";
                goto LABEL_77;
              case 148:
                v13 = *v8;
                v14 = "bandGetsLow";
                goto LABEL_77;
              case 149:
                v13 = *v8;
                v14 = "numHostChoke";
                goto LABEL_77;
              case 152:
                v13 = *v8;
                v14 = "AbortSkip_ProgramError";
                goto LABEL_77;
              case 153:
                v13 = *v8;
                v14 = "AbortSkip_ReadErrorOpenBand";
                goto LABEL_77;
              case 154:
                v13 = *v8;
                v14 = "AbortSkip_FailedRebuildingParity";
                goto LABEL_77;
              case 155:
                v13 = *v8;
                v14 = "AbortPad_OpenRefreshBand";
                goto LABEL_77;
              case 156:
                v13 = *v8;
                v14 = "AbortPad_CloseBands";
                goto LABEL_77;
              case 157:
                v13 = *v8;
                v14 = "AbortPad_SetPhoto";
                goto LABEL_77;
              case 158:
                v13 = *v8;
                v14 = "AbortPad_GcNoSource";
                goto LABEL_77;
              case 159:
                v13 = *v8;
                v14 = "AbortPad_Format";
                goto LABEL_77;
              case 160:
                v13 = *v8;
                v14 = "nandDiscoveryDuration";
                goto LABEL_77;
              case 161:
                v13 = *v8;
                v14 = "coreCCEnableDuration";
                goto LABEL_77;
              case 163:
                v13 = *v8;
                v14 = "coreOpenDuration";
                goto LABEL_77;
              case 164:
                v13 = *v8;
                v14 = "coreWritableDuration";
                goto LABEL_77;
              case 165:
                v13 = *v8;
                v14 = "coreClogLoadDuration";
                goto LABEL_77;
              case 167:
                v13 = *v8;
                v14 = "bulkPFail";
                goto LABEL_77;
              case 169:
                v13 = *v8;
                v14 = "bulkRFail";
                goto LABEL_77;
              case 172:
                v13 = *v8;
                v14 = "raidSmartErrors";
                goto LABEL_77;
              case 182:
                v13 = *v8;
                v14 = "internalUeccs";
                goto LABEL_77;
              case 183:
                v13 = *v8;
                v14 = "e2eFail";
                goto LABEL_77;
              case 184:
                v13 = *v8;
                v14 = "TempSensorMax";
                goto LABEL_77;
              case 185:
                v13 = *v8;
                v14 = "TempSensorMin";
                goto LABEL_77;
              case 186:
                v13 = *v8;
                v14 = "powerUpFromDDR";
                goto LABEL_77;
              case 187:
                v13 = *v8;
                v14 = "numMemLow";
                goto LABEL_77;
              case 188:
                v13 = *v8;
                v14 = "maxMemLowDuration";
                goto LABEL_77;
              case 189:
                v13 = *v8;
                v14 = "memLowDuration";
                goto LABEL_77;
              case 190:
                v13 = *v8;
                v14 = "numFences";
                goto LABEL_77;
              case 191:
                v13 = *v8;
                v14 = "hostPassiveIO";
                goto LABEL_77;
              case 192:
                v13 = *v8;
                v14 = "odtsMax";
                goto LABEL_77;
              case 193:
                v13 = *v8;
                v14 = "defragMFromOrphans";
                goto LABEL_77;
              case 194:
                v13 = *v8;
                v14 = "defragMFromFragments";
                goto LABEL_77;
              case 195:
                v13 = *v8;
                v14 = "defragMTime";
                goto LABEL_77;
              case 196:
                v13 = *v8;
                v14 = "defragMMaxTime";
                goto LABEL_77;
              case 197:
                v13 = *v8;
                v14 = "raidFailedLbaMismatch";
                goto LABEL_77;
              case 198:
                v13 = *v8;
                v14 = "numSyscfgWrites";
                goto LABEL_77;
              case 199:
                v13 = *v8;
                v14 = "indmbUnitsXfer";
                goto LABEL_77;
              case 200:
                v13 = *v8;
                v14 = "indmbUnitsCache";
                goto LABEL_77;
              case 201:
                v13 = *v8;
                v14 = "indmbUnitsInd";
                goto LABEL_77;
              case 202:
                v13 = *v8;
                v14 = "wcacheFS_Mbytes";
                goto LABEL_77;
              case 203:
                v13 = *v8;
                v14 = "wcacheDS_Mbytes";
                goto LABEL_77;
              case 204:
                v13 = *v8;
                v14 = "powerOnSeconds";
                goto LABEL_77;
              case 205:
                v13 = *v8;
                v14 = "numUnknownTokenHostRead";
                goto LABEL_77;
              case 206:
                v13 = *v8;
                v14 = "numUnmmapedTokenHostRead";
                goto LABEL_77;
              case 207:
                v15 = "numOfThrottlingEntriesPerLevel";
                v16 = a1;
                v17 = 207;
LABEL_213:
                v18 = v8;
                v19 = 25;
                goto LABEL_51;
              case 208:
                v13 = *v8;
                v14 = "wcacheFS_MbytesMin";
                goto LABEL_77;
              case 209:
                v13 = *v8;
                v14 = "wcacheFS_MbytesMax";
                goto LABEL_77;
              case 210:
                v13 = *v8;
                v14 = "prepareForShutdownFailCounter";
                goto LABEL_77;
              case 211:
                v13 = *v8;
                v14 = "lpsrEntry";
                goto LABEL_77;
              case 212:
                v13 = *v8;
                v14 = "lpsrExit";
                goto LABEL_77;
              case 213:
                v15 = "crcInternalReadFail";
                v16 = a1;
                v17 = 213;
                goto LABEL_149;
              case 214:
                v13 = *v8;
                v14 = "wcacheFSEvictCnt";
                goto LABEL_77;
              case 215:
                v13 = *v8;
                v14 = "wcacheFSEvictSize";
                goto LABEL_77;
              case 216:
                v13 = *v8;
                v14 = "wcacheFSWr";
                goto LABEL_77;
              case 217:
                v13 = *v8;
                v14 = "wcacheDSWr";
                goto LABEL_77;
              case 218:
                v15 = "wcacheFSEvictSizeLogDist";
                v16 = a1;
                v17 = 218;
                goto LABEL_44;
              case 219:
                v13 = *v8;
                v14 = "prepareForShutdownTimeoutCounter";
                goto LABEL_77;
              case 220:
                v13 = *v8;
                v14 = "prepareForShutdownCancelCounter";
                goto LABEL_77;
              case 221:
                v13 = *v8;
                v14 = "RD_openBandCount";
                goto LABEL_77;
              case 222:
                v13 = *v8;
                v14 = "RD_openBandNops";
                goto LABEL_77;
              case 223:
                v13 = *v8;
                v14 = "RD_closedBandEvictCount";
                goto LABEL_77;
              default:
                switch(v7)
                {
                  case 224:
                    v13 = *v8;
                    v14 = "RD_closedBandEvictSectors";
                    goto LABEL_77;
                  case 225:
                    v13 = *v8;
                    v14 = "RD_closedBandFragmentCount";
                    goto LABEL_77;
                  case 226:
                    v13 = *v8;
                    v14 = "RD_closedBandFragmentSectors";
                    goto LABEL_77;
                  case 227:
                    v15 = "wcacheFSOverWrLogSizeCnts";
                    v16 = a1;
                    v17 = 227;
                    goto LABEL_44;
                  case 228:
                    v15 = "wcacheFSOverWrSizeByFlow";
                    v16 = a1;
                    v17 = 228;
                    goto LABEL_144;
                  case 229:
                    v15 = "indmbXferCountTo";
                    v16 = a1;
                    v17 = 229;
                    goto LABEL_123;
                  case 230:
                    v15 = "indmbAccumulatedTimeBetweenXfers";
                    v16 = a1;
                    v17 = 230;
                    goto LABEL_123;
                  case 231:
                    v13 = *v8;
                    v14 = "maxGracefulBootTimeMs";
                    goto LABEL_77;
                  case 232:
                    v13 = *v8;
                    v14 = "maxUngracefulBootTimeMs";
                    goto LABEL_77;
                  case 233:
                    v13 = *v8;
                    v14 = "averageGracefulBootTimeMs";
                    goto LABEL_77;
                  case 234:
                    v13 = *v8;
                    v14 = "averageUngracefulBootTimeMs";
                    goto LABEL_77;
                  case 235:
                    v15 = "gracefulBootTimeLogMs";
                    v16 = a1;
                    v17 = 235;
                    goto LABEL_149;
                  case 236:
                    v15 = "ungracefulBootTimeLogMs";
                    v16 = a1;
                    v17 = 236;
                    goto LABEL_149;
                  case 237:
                    v15 = "CalibrationCount";
                    v16 = a1;
                    v17 = 237;
                    goto LABEL_144;
                  case 238:
                    v13 = *v8;
                    v14 = "CalibrationLastTmp";
                    goto LABEL_77;
                  case 239:
                    v13 = *v8;
                    v14 = "CalibrationMaxTmp";
                    goto LABEL_77;
                  case 240:
                    v13 = *v8;
                    v14 = "CalibrationMinTmp";
                    goto LABEL_77;
                  case 241:
                    v13 = *v8;
                    v14 = "ungracefulBootWorstIndicator";
                    goto LABEL_77;
                  case 242:
                    v13 = *v8;
                    v14 = "metaMismatchReread";
                    goto LABEL_77;
                  case 243:
                    v13 = *v8;
                    v14 = "numS3SleepOps";
                    goto LABEL_77;
                  case 244:
                    v13 = *v8;
                    v14 = "odtsCurrent";
                    goto LABEL_77;
                  case 245:
                    v13 = *v8;
                    v14 = "prefetchReads";
                    goto LABEL_77;
                  case 246:
                    v13 = *v8;
                    v14 = "prefetchHits";
                    goto LABEL_77;
                  case 247:
                    v13 = *v8;
                    v14 = "prefetchWritesInvalidation";
                    goto LABEL_77;
                  case 248:
                    v13 = *v8;
                    v14 = "indmbUnitsTotal";
                    goto LABEL_77;
                  case 249:
                    v13 = *v8;
                    v14 = "selfThrottlingEngage";
                    goto LABEL_77;
                  case 250:
                    v13 = *v8;
                    v14 = "selfThrottlingDisengage";
                    goto LABEL_77;
                  case 252:
                    v13 = *v8;
                    v14 = "AbortSkip_WlpMode";
                    goto LABEL_77;
                  case 253:
                    v13 = *v8;
                    v14 = "hostWritesWlpMode";
                    goto LABEL_77;
                  case 254:
                    v13 = *v8;
                    v14 = "numClogDoubleUnc";
                    goto LABEL_77;
                  case 256:
                    v13 = *v8;
                    v14 = "AbortPad_WlpMode";
                    goto LABEL_77;
                  case 257:
                    v13 = *v8;
                    v14 = "bonfireIntermediateBandErases";
                    goto LABEL_77;
                  case 258:
                    v13 = *v8;
                    v14 = "bonfireUserBandErases";
                    goto LABEL_77;
                  case 259:
                    v13 = *v8;
                    v14 = "bonfireIntermediateBandProgs";
                    goto LABEL_77;
                  case 260:
                    v13 = *v8;
                    v14 = "bonfireUserBandProgs";
                    goto LABEL_77;
                  case 261:
                    v13 = *v8;
                    v14 = "bonfireIntermediatePageReads";
                    goto LABEL_77;
                  case 262:
                    v13 = *v8;
                    v14 = "bonfireUserPageReads";
                    goto LABEL_77;
                  case 263:
                    v13 = *v8;
                    v14 = "refreshUtil00";
                    goto LABEL_77;
                  case 264:
                    v13 = *v8;
                    v14 = "failToReadUtil00";
                    goto LABEL_77;
                  case 265:
                    v15 = "readCountHisto";
                    v16 = a1;
                    v17 = 265;
                    goto LABEL_102;
                  case 266:
                    v15 = "readAmpHisto";
                    v16 = a1;
                    v17 = 266;
LABEL_246:
                    v18 = v8;
                    v19 = 16;
                    goto LABEL_51;
                  case 267:
                    v13 = *v8;
                    v14 = "totalReadAmp";
                    goto LABEL_77;
                  case 268:
                    v15 = "nvmeModeSelect";
                    v16 = a1;
                    v17 = 268;
                    goto LABEL_144;
                  case 269:
                    v15 = "numBootBlockRefreshSuccess";
                    v16 = a1;
                    v17 = 269;
                    goto LABEL_149;
                  case 270:
                    v15 = "numBootBlockRefreshFail";
                    v16 = a1;
                    v17 = 270;
                    goto LABEL_149;
                  case 271:
                    v13 = *v8;
                    v14 = "numUnsupportedAsi";
                    goto LABEL_77;
                  case 272:
                    v13 = *v8;
                    v14 = "NumTerminatedProgramSegs";
                    goto LABEL_77;
                  case 273:
                    v13 = *v8;
                    v14 = "indParityPagesDrops";
                    goto LABEL_77;
                  case 274:
                    v13 = *v8;
                    v14 = "indFlowPrograms";
                    goto LABEL_77;
                  case 277:
                    v15 = "powerBudgetSelect";
                    v16 = a1;
                    v17 = 277;
                    goto LABEL_144;
                  case 279:
                    v13 = *v8;
                    v14 = "RxBurnNandWrites";
                    goto LABEL_77;
                  case 280:
                    v15 = "E2EDPErrorCounters";
                    v16 = a1;
                    v17 = 280;
LABEL_282:
                    v18 = v8;
                    v19 = 12;
                    goto LABEL_51;
                  case 281:
                    v13 = *v8;
                    v14 = "wcacheSectorsMax";
                    goto LABEL_77;
                  case 282:
                    v13 = *v8;
                    v14 = "wcacheSectorsMin";
                    goto LABEL_77;
                  case 283:
                    v13 = *v8;
                    v14 = "wcacheSectorsCur";
                    goto LABEL_77;
                  case 284:
                    v13 = *v8;
                    v14 = "wcacheDS_SectorsMax";
                    goto LABEL_77;
                  case 285:
                    v13 = *v8;
                    v14 = "wcacheDS_SectorsMin";
                    goto LABEL_77;
                  case 286:
                    v13 = *v8;
                    v14 = "wcacheDS_SectorsCur";
                    goto LABEL_77;
                  case 287:
                    v13 = *v8;
                    v14 = "wcacheFS_Reads";
                    goto LABEL_77;
                  case 288:
                    v13 = *v8;
                    v14 = "wcacheDS_Reads";
                    goto LABEL_77;
                  case 289:
                    v15 = "mspBootBlockReadFail";
                    v16 = a1;
                    v17 = 289;
                    goto LABEL_284;
                  case 290:
                    v15 = "mspBootBlockProgFail";
                    v16 = a1;
                    v17 = 290;
                    goto LABEL_284;
                  case 291:
                    v15 = "mspBootBlockEraseFail";
                    v16 = a1;
                    v17 = 291;
                    goto LABEL_284;
                  case 292:
                    v13 = *v8;
                    v14 = "bandsRefreshedOnError";
                    goto LABEL_77;
                  default:
                    switch(v7)
                    {
                      case 298:
                        v15 = "perHostReads";
                        v16 = a1;
                        v17 = 298;
                        goto LABEL_123;
                      case 299:
                        v15 = "perHostReadXacts";
                        v16 = a1;
                        v17 = 299;
                        goto LABEL_123;
                      case 300:
                        v15 = "perHostWrites";
                        v16 = a1;
                        v17 = 300;
                        goto LABEL_123;
                      case 301:
                        v15 = "perHostWriteXacts";
                        v16 = a1;
                        v17 = 301;
                        goto LABEL_123;
                      case 302:
                        v15 = "perHostNumFlushes";
                        v16 = a1;
                        v17 = 302;
                        goto LABEL_123;
                      case 303:
                        v15 = "perHostNumFences";
                        v16 = a1;
                        v17 = 303;
                        goto LABEL_123;
                      case 304:
                        v15 = "commitPadSectorsPerFlow";
                        v16 = a1;
                        v17 = 304;
                        goto LABEL_44;
                      case 305:
                        v15 = "wcacheDSOverWrLogSizeCnts";
                        v16 = a1;
                        v17 = 305;
                        goto LABEL_44;
                      case 306:
                        v15 = "wcacheDSOverWrSizeByFlow";
                        v16 = a1;
                        v17 = 306;
                        goto LABEL_144;
                      case 307:
                        v15 = "CmdRaisePrioiryEvents";
                        v16 = a1;
                        v17 = 307;
                        goto LABEL_44;
                      case 308:
                        v13 = *v8;
                        v14 = "utilNumVerification";
                        goto LABEL_77;
                      case 309:
                        v13 = *v8;
                        v14 = "utilRefreshes";
                        goto LABEL_77;
                      case 310:
                        v13 = *v8;
                        v14 = "utilBDRErrors";
                        goto LABEL_77;
                      case 311:
                        v13 = *v8;
                        v14 = "indBandsPerFlow";
                        goto LABEL_77;
                      case 312:
                        v13 = *v8;
                        v14 = "secsPerIndFlow";
                        goto LABEL_77;
                      case 313:
                        v13 = *v8;
                        v14 = "indDecodedECC";
                        goto LABEL_77;
                      case 314:
                        v15 = "numBootBlockValidateSuccess";
                        v16 = a1;
                        v17 = 314;
                        goto LABEL_149;
                      case 315:
                        v15 = "numBootBlockValidateFail";
                        v16 = a1;
                        v17 = 315;
                        goto LABEL_149;
                      case 316:
                        v15 = "clogPagesFillingPercentage";
                        v16 = a1;
                        v17 = 316;
                        goto LABEL_144;
                      case 317:
                        v13 = *v8;
                        v14 = "bdrCalTimeAccFactor";
                        goto LABEL_77;
                      case 318:
                        v13 = *v8;
                        v14 = "bootChainRdError";
                        goto LABEL_77;
                      case 319:
                        v13 = *v8;
                        v14 = "bootChainBlankError";
                        goto LABEL_77;
                      case 320:
                        v13 = *v8;
                        v14 = "bootChainRefreshError";
                        goto LABEL_77;
                      case 321:
                        v13 = *v8;
                        v14 = "bootChainVersionError";
                        goto LABEL_77;
                      case 322:
                        v13 = *v8;
                        v14 = "mspBootBlockMismatch";
                        goto LABEL_77;
                      case 323:
                        v13 = *v8;
                        v14 = "mspBootBlockMismatchErr";
                        goto LABEL_77;
                      case 324:
                        v15 = "bitflipAddr";
                        v16 = a1;
                        v17 = 324;
                        goto LABEL_102;
                      case 325:
                        v15 = "bitflipCount";
                        v16 = a1;
                        v17 = 325;
                        goto LABEL_102;
                      case 326:
                        v15 = "bitflipDupes";
                        v16 = a1;
                        v17 = 326;
                        goto LABEL_102;
                      case 327:
                        v15 = "bandsMaxTempHisto";
                        v16 = a1;
                        v17 = 327;
                        goto LABEL_319;
                      case 328:
                        v15 = "bandsMinTempHisto";
                        v16 = a1;
                        v17 = 328;
                        goto LABEL_319;
                      case 329:
                        v15 = "bandsLifeTimeTempHisto";
                        v16 = a1;
                        v17 = 329;
LABEL_319:
                        v18 = v8;
                        v19 = 30;
                        goto LABEL_51;
                      case 330:
                        v15 = "bandsDeltaTempHisto";
                        v16 = a1;
                        v17 = 330;
                        v18 = v8;
                        v19 = 22;
                        goto LABEL_51;
                      case 331:
                        v15 = "bandsCrossTempHisto";
                        v16 = a1;
                        v17 = 331;
                        v18 = v8;
                        v19 = 45;
                        goto LABEL_51;
                      case 332:
                        v15 = "wcacheWaitLogMs";
                        v16 = a1;
                        v17 = 332;
                        goto LABEL_44;
                      case 333:
                        v15 = "wcacheDS_segsSortedLogSize";
                        v16 = a1;
                        v17 = 333;
                        goto LABEL_44;
                      case 334:
                        v13 = *v8;
                        v14 = "numFirmwareWrites";
                        goto LABEL_77;
                      case 335:
                        v13 = *v8;
                        v14 = "numBisWrites";
                        goto LABEL_77;
                      case 336:
                        v13 = *v8;
                        v14 = "numBootChainUpdates";
                        goto LABEL_77;
                      case 337:
                        v13 = *v8;
                        v14 = "cntCalTimeWentBackWard";
                        goto LABEL_77;
                      case 338:
                        v13 = *v8;
                        v14 = "indBoRecoveries";
                        goto LABEL_77;
                      case 340:
                        v13 = *v8;
                        v14 = "numCrossTempUecc";
                        goto LABEL_77;
                      case 341:
                        v13 = *v8;
                        v14 = "latencyMonitorError";
                        goto LABEL_77;
                      case 343:
                        v13 = *v8;
                        v14 = "utilUeccReads";
                        goto LABEL_77;
                      case 344:
                        v13 = *v8;
                        v14 = "numOfAvoidedGCDueToTemp";
                        goto LABEL_77;
                      case 345:
                        v13 = *v8;
                        v14 = "forceShutdowns";
                        goto LABEL_77;
                      case 346:
                        v13 = *v8;
                        v14 = "gcSlcDestinations";
                        goto LABEL_77;
                      case 347:
                        v13 = *v8;
                        v14 = "indReplayExtUsed";
                        goto LABEL_77;
                      case 348:
                        v13 = *v8;
                        v14 = "defectsPerPackageOverflow";
                        goto LABEL_77;
                      case 349:
                        v13 = *v8;
                        v14 = "RxBurnIntBandsProgrammed";
                        goto LABEL_77;
                      case 350:
                        v13 = *v8;
                        v14 = "RxBurnUsrBandsProgrammed";
                        goto LABEL_77;
                      case 351:
                        v13 = *v8;
                        v14 = "RxBurnIntNandWrites";
                        goto LABEL_77;
                      case 352:
                        v13 = *v8;
                        v14 = "RxBurnUsrNandWrites";
                        goto LABEL_77;
                      case 353:
                        v13 = *v8;
                        v14 = "clogLastStripeUeccs";
                        goto LABEL_77;
                      case 354:
                        v13 = *v8;
                        v14 = "GC_MidDestSrcSwitchSLC2TLC";
                        goto LABEL_77;
                      case 355:
                        v13 = *v8;
                        v14 = "GC_MidDestSrcSwitchTLC2SLC";
                        goto LABEL_77;
                      case 356:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host0_normal";
                        goto LABEL_77;
                      case 357:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host1_normal";
                        goto LABEL_77;
                      case 358:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host0_s2r";
                        goto LABEL_77;
                      case 359:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host1_s2r";
                        goto LABEL_77;
                      case 360:
                        v15 = "gcPDusterIntrSrcValidityHisto";
                        v16 = a1;
                        v17 = 360;
                        goto LABEL_246;
                      case 361:
                        v15 = "gcPDusterUserSrcValidityHisto";
                        v16 = a1;
                        v17 = 361;
                        goto LABEL_246;
                      case 362:
                        v13 = *v8;
                        v14 = "raidFailedReadParity";
                        goto LABEL_77;
                      case 364:
                        v13 = *v8;
                        v14 = "lhotNumSkipes";
                        goto LABEL_77;
                      default:
                        switch(v7)
                        {
                          case 365:
                            v13 = *v8;
                            v14 = "lhotNumIsHotCalls";
                            goto LABEL_77;
                          case 366:
                            v13 = *v8;
                            v14 = "lhotFullLap";
                            goto LABEL_77;
                          case 367:
                            v13 = *v8;
                            v14 = "lhotSkipPrecent";
                            goto LABEL_77;
                          case 368:
                            v13 = *v8;
                            v14 = "eraseSuspendEvents";
                            goto LABEL_77;
                          case 369:
                            v13 = *v8;
                            v14 = "eraseSuspendedStatuses";
                            goto LABEL_77;
                          case 370:
                            v13 = *v8;
                            v14 = "eraseSuspendedBands";
                            goto LABEL_77;
                          case 371:
                            v13 = *v8;
                            v14 = "eraseSuspendSituationsBelowThreshold";
                            goto LABEL_77;
                          case 372:
                            v13 = *v8;
                            v14 = "eraseSuspendSituationsAboveThreshold";
                            goto LABEL_77;
                          case 373:
                            v13 = *v8;
                            v14 = "eraseSuspendReadChainsProcessed";
                            goto LABEL_77;
                          case 374:
                            v13 = *v8;
                            v14 = "bdrLastDoneHr";
                            goto LABEL_77;
                          case 375:
                            v13 = *v8;
                            v14 = "bdrBackupThreshHrs";
                            goto LABEL_77;
                          case 376:
                            v13 = *v8;
                            v14 = "clogPortableProgBufs";
                            goto LABEL_77;
                          case 377:
                            v13 = *v8;
                            v14 = "clogPortableDropBufs";
                            goto LABEL_77;
                          case 378:
                            v13 = *v8;
                            v14 = "clogPortablePadSectors";
                            goto LABEL_77;
                          case 379:
                            v13 = *v8;
                            v14 = "numRetiredBlocks";
                            goto LABEL_77;
                          case 381:
                            v13 = *v8;
                            v14 = "numRefreshOnErrNandRefreshPerf";
                            goto LABEL_77;
                          case 382:
                            v13 = *v8;
                            v14 = "raidReconstructReads";
                            goto LABEL_77;
                          case 383:
                            v13 = *v8;
                            v14 = "gcReadsNoBlog";
                            goto LABEL_77;
                          case 384:
                            v13 = *v8;
                            v14 = "AbortSkip_MPBXReadVerifyClosedBand";
                            goto LABEL_77;
                          case 385:
                            v13 = *v8;
                            v14 = "openBandReadFail";
                            goto LABEL_77;
                          case 386:
                            v13 = *v8;
                            v14 = "AbortSkip_MPBXReadVerifyOpenBand";
                            goto LABEL_77;
                          case 387:
                            v13 = *v8;
                            v14 = "AbortSkip_MBPXFailedRebuildingParity";
                            goto LABEL_77;
                          case 388:
                            v13 = *v8;
                            v14 = "raidSuccessfulPMXReconstructionInternal";
                            goto LABEL_77;
                          case 389:
                            v13 = *v8;
                            v14 = "raidSuccessfulPMXReconstructionHost";
                            goto LABEL_77;
                          case 390:
                            v13 = *v8;
                            v14 = "raidFailedPMXReconstructionInternal";
                            goto LABEL_77;
                          case 391:
                            v13 = *v8;
                            v14 = "raidFailedPMXReconstructionHost";
                            goto LABEL_77;
                          case 392:
                            v13 = *v8;
                            v14 = "raidSuccessfulRMXReconstructionInternal";
                            goto LABEL_77;
                          case 393:
                            v13 = *v8;
                            v14 = "raidSuccessfulRMXReconstructionHost";
                            goto LABEL_77;
                          case 394:
                            v13 = *v8;
                            v14 = "raidFailedRMXReconstructionInternal";
                            goto LABEL_77;
                          case 395:
                            v13 = *v8;
                            v14 = "raidFailedRMXReconstructionHost";
                            goto LABEL_77;
                          case 396:
                            v13 = *v8;
                            v14 = "raidFailedReadParityInternal";
                            goto LABEL_77;
                          case 397:
                            v13 = *v8;
                            v14 = "raidFailedReadQParityInternal";
                            goto LABEL_77;
                          case 398:
                            v13 = *v8;
                            v14 = "raidFailedReadQParity";
                            goto LABEL_77;
                          case 399:
                            v13 = *v8;
                            v14 = "raidFailedReadQCopy";
                            goto LABEL_77;
                          case 400:
                            v13 = *v8;
                            v14 = "raidFailedReconstructionQParity";
                            goto LABEL_77;
                          case 401:
                            v13 = *v8;
                            v14 = "offlineBlocksCnt";
                            goto LABEL_77;
                          case 402:
                            v13 = *v8;
                            v14 = "bork0Revectors";
                            goto LABEL_77;
                          case 403:
                            v13 = *v8;
                            v14 = "raidFailedReadBlog";
                            goto LABEL_77;
                          case 404:
                            v13 = *v8;
                            v14 = "numReliabilityRefreshes";
                            goto LABEL_77;
                          case 405:
                            v13 = *v8;
                            v14 = "raidFailedReadQCopyInternal";
                            goto LABEL_77;
                          case 406:
                            v15 = "raidReconstructSuccessFlow";
                            v16 = a1;
                            v17 = 406;
                            goto LABEL_102;
                          case 407:
                            v15 = "raidReconstructFailFlow";
                            v16 = a1;
                            v17 = 407;
                            goto LABEL_102;
                          case 408:
                            v13 = *v8;
                            v14 = "raidReconstructFailP";
                            goto LABEL_77;
                          case 409:
                            v13 = *v8;
                            v14 = "raidReconstructFailQ";
                            goto LABEL_77;
                          case 410:
                            v13 = *v8;
                            v14 = "raidReconstructFailUECC";
                            goto LABEL_77;
                          case 411:
                            v13 = *v8;
                            v14 = "raidReconstructFailUnsupp";
                            goto LABEL_77;
                          case 412:
                            v13 = *v8;
                            v14 = "raidUECCOpenBand";
                            goto LABEL_77;
                          case 414:
                            v13 = *v8;
                            v14 = "ueccReads";
                            goto LABEL_77;
                          case 416:
                            v13 = *v8;
                            v14 = "raidSuccessfulVerify";
                            goto LABEL_77;
                          case 417:
                            v13 = *v8;
                            v14 = "raidFailedVerify";
                            goto LABEL_77;
                          case 418:
                            v13 = *v8;
                            v14 = "numBandsVerified";
                            goto LABEL_77;
                          case 419:
                            v13 = *v8;
                            v14 = "cache_heads";
                            goto LABEL_77;
                          case 420:
                            v13 = *v8;
                            v14 = "AbortSkip_RMXtoMPBX";
                            goto LABEL_77;
                          case 421:
                            v13 = *v8;
                            v14 = "s3eFwVer";
                            goto LABEL_77;
                          case 422:
                            v13 = *v8;
                            v14 = "readVerifyNative";
                            goto LABEL_77;
                          case 423:
                            v13 = *v8;
                            v14 = "reducedReadVerifyNative";
                            goto LABEL_77;
                          case 424:
                            v13 = *v8;
                            v14 = "readVerifySlc";
                            goto LABEL_77;
                          case 425:
                            v13 = *v8;
                            v14 = "reducedReadVerifySlc";
                            goto LABEL_77;
                          case 426:
                            v13 = *v8;
                            v14 = "RxBurnEvictions";
                            goto LABEL_77;
                          case 427:
                            v13 = *v8;
                            v14 = "directToTLCBands";
                            goto LABEL_77;
                          case 428:
                            v13 = *v8;
                            v14 = "nandDesc";
                            goto LABEL_77;
                          case 429:
                            v13 = *v8;
                            v14 = "fwUpdatesPercentUsed";
                            goto LABEL_77;
                          case 430:
                            v13 = *v8;
                            v14 = "slcPercentUsed";
                            goto LABEL_77;
                          case 431:
                            v13 = *v8;
                            v14 = "percentUsed";
                            goto LABEL_77;
                          default:
                            switch(v7)
                            {
                              case 432:
                                v13 = *v8;
                                v14 = "hostAutoWrites";
                                goto LABEL_77;
                              case 433:
                                v13 = *v8;
                                v14 = "hostAutoWriteXacts";
                                goto LABEL_77;
                              case 434:
                                v13 = *v8;
                                v14 = "gcDestDynamic";
                                goto LABEL_77;
                              case 435:
                                v13 = *v8;
                                v14 = "gcDestStatic";
                                goto LABEL_77;
                              case 436:
                                v13 = *v8;
                                v14 = "gcDestWearlevel";
                                goto LABEL_77;
                              case 437:
                                v13 = *v8;
                                v14 = "gcDestParity";
                                goto LABEL_77;
                              case 438:
                                v13 = *v8;
                                v14 = "AbortSkip_Format";
                                goto LABEL_77;
                              case 440:
                                v13 = *v8;
                                v14 = "raidSLCPadding";
                                goto LABEL_77;
                              case 441:
                                v13 = *v8;
                                v14 = "raidGCBands";
                                goto LABEL_77;
                              case 442:
                                v13 = *v8;
                                v14 = "raidGCSectors";
                                goto LABEL_77;
                              case 443:
                                v13 = *v8;
                                v14 = "raidGCPadding";
                                goto LABEL_77;
                              case 444:
                                v13 = *v8;
                                v14 = "raidSLCBandsPerHostFlow";
                                goto LABEL_77;
                              case 445:
                                v13 = *v8;
                                v14 = "raidSLCSecsPerHostFlow";
                                goto LABEL_77;
                              case 446:
                                v13 = *v8;
                                v14 = "rxBurnMinCycleRuns";
                                goto LABEL_77;
                              case 447:
                                v13 = *v8;
                                v14 = "clogNumFastCxt";
                                goto LABEL_77;
                              case 448:
                                v13 = *v8;
                                v14 = "clogNumRapidReboots";
                                goto LABEL_77;
                              case 449:
                                v13 = *v8;
                                v14 = "clogFastCxtAbvThr";
                                goto LABEL_77;
                              case 450:
                                v13 = *v8;
                                v14 = "rxBurnDiffModeRuns";
                                goto LABEL_77;
                              case 452:
                                v13 = *v8;
                                v14 = "indReadVerifyFail";
                                goto LABEL_77;
                              case 453:
                                v15 = "numOfThrottlingEntriesPerReadLevel";
                                v16 = a1;
                                v17 = 453;
                                goto LABEL_213;
                              case 454:
                                v15 = "numOfThrottlingEntriesPerWriteLevel";
                                v16 = a1;
                                v17 = 454;
                                goto LABEL_213;
                              case 456:
                                v15 = "slcFifoDepth";
                                v16 = a1;
                                v17 = 456;
                                goto LABEL_44;
                              case 457:
                                v13 = *v8;
                                v14 = "wcacheSectorsDirtyIdle";
                                goto LABEL_77;
                              case 458:
                                v13 = *v8;
                                v14 = "wcacheDS_SectorsDirtyIdle";
                                goto LABEL_77;
                              case 459:
                                v13 = *v8;
                                v14 = "wcacheFS_MbytesDirtyIdle";
                                goto LABEL_77;
                              case 460:
                                v15 = "CacheDepthVsThroughput";
                                v16 = a1;
                                v17 = 460;
                                v18 = v8;
                                v19 = 256;
                                goto LABEL_51;
                              case 461:
                                v13 = *v8;
                                v14 = "directToTLCSectors";
                                goto LABEL_77;
                              case 462:
                                v13 = *v8;
                                v14 = "fallbackToWaterfall";
                                goto LABEL_77;
                              case 463:
                                v15 = "balanceProportionBucketsHistogram";
                                v16 = a1;
                                v17 = 463;
LABEL_449:
                                v18 = v8;
                                v19 = 11;
                                goto LABEL_51;
                              case 464:
                                v13 = *v8;
                                v14 = "lockToTlc";
                                goto LABEL_77;
                              case 465:
                                v15 = "burstSizeHistogram";
                                v16 = a1;
                                v17 = 465;
                                goto LABEL_44;
                              case 466:
                                v15 = "qosDirectToTLC";
                                v16 = a1;
                                v17 = 466;
                                goto LABEL_471;
                              case 467:
                                v15 = "maxQosDirectToTLC";
                                v16 = a1;
                                v17 = 467;
                                goto LABEL_144;
                              case 468:
                                v15 = "wcacheDirtyAtFlush";
                                v16 = a1;
                                v17 = 468;
                                goto LABEL_246;
                              case 469:
                                v15 = "raidReconstructSuccessPartition";
                                v16 = a1;
                                v17 = 469;
                                goto LABEL_123;
                              case 470:
                                v15 = "raidReconstructFailPartition";
                                v16 = a1;
                                v17 = 470;
                                goto LABEL_123;
                              case 471:
                                v13 = *v8;
                                v14 = "raidUncleanBootBandFail";
                                goto LABEL_77;
                              case 472:
                                v13 = *v8;
                                v14 = "raidReconstructFailBandFlowHost";
                                goto LABEL_77;
                              case 473:
                                v13 = *v8;
                                v14 = "raidReconstructFailBandFlowGC";
                                goto LABEL_77;
                              case 476:
                                v15 = "raidSuccessfulRecoLbaRange";
                                v16 = a1;
                                v17 = 476;
                                goto LABEL_123;
                              case 477:
                                v15 = "raidFailedRecoLbaRange";
                                v16 = a1;
                                v17 = 477;
                                goto LABEL_123;
                              case 481:
                                v15 = "skinnyBandErases_481";
                                v16 = a1;
                                v17 = 481;
                                goto LABEL_284;
                              case 483:
                                v13 = *v8;
                                v14 = "tlcOverHeatWaterfall";
                                goto LABEL_77;
                              case 484:
                                v13 = *v8;
                                v14 = "skinnyCyclesConvert";
                                goto LABEL_77;
                              case 485:
                                v13 = *v8;
                                v14 = "non_proportional_directToTLCSectors";
                                goto LABEL_77;
                              case 486:
                                v13 = *v8;
                                v14 = "maxFailedFastCxtSync";
                                goto LABEL_77;
                              case 487:
                                v13 = *v8;
                                v14 = "numFormatUserArea";
                                goto LABEL_77;
                              case 488:
                                v13 = *v8;
                                v14 = "clogFastCxtSyncAborted";
                                goto LABEL_77;
                              case 489:
                                v15 = "clogOccupationSectors";
                                v16 = a1;
                                v17 = 489;
                                goto LABEL_102;
                              case 490:
                                v15 = "bdrTmpHist";
                                v16 = a1;
                                v17 = 490;
LABEL_471:
                                v18 = v8;
                                v19 = 64;
                                goto LABEL_51;
                              case 491:
                                v13 = *v8;
                                v14 = "numFWUpdates";
                                goto LABEL_77;
                              case 492:
                                v13 = *v8;
                                v14 = "numClogLoadFails";
                                goto LABEL_77;
                              case 493:
                                v13 = *v8;
                                v14 = "rxBurnNumForcedDiffMode";
                                goto LABEL_77;
                              case 494:
                                v13 = *v8;
                                v14 = "RD_numSaves";
                                goto LABEL_77;
                              case 495:
                                v13 = *v8;
                                v14 = "eanCompressWrites";
                                goto LABEL_77;
                              case 496:
                                v13 = *v8;
                                v14 = "eanHostWrites";
                                goto LABEL_77;
                              case 497:
                                v13 = *v8;
                                v14 = "bandPreErases";
                                goto LABEL_77;
                              case 498:
                                v13 = *v8;
                                v14 = "eanHostUnmaps";
                                goto LABEL_77;
                              case 499:
                                v13 = *v8;
                                v14 = "eanHostFlushes";
                                goto LABEL_77;
                              case 500:
                                v13 = *v8;
                                v14 = "eanFastWrites";
                                goto LABEL_77;
                              case 501:
                                v13 = *v8;
                                v14 = "autowriteDS2FSCollisions";
                                goto LABEL_77;
                              case 502:
                                v13 = *v8;
                                v14 = "autowriteWaitTransferTaskBlocks";
                                goto LABEL_77;
                              case 503:
                                v15 = "avgCycle";
                                v16 = a1;
                                v17 = 503;
                                goto LABEL_123;
                              case 504:
                                v13 = *v8;
                                v14 = "RD_DeferredClearsOverflowCnt";
                                goto LABEL_77;
                              default:
                                switch(v7)
                                {
                                  case 505:
                                    v13 = *v8;
                                    v14 = "maxVerticsInBand";
                                    goto LABEL_77;
                                  case 506:
                                    v13 = *v8;
                                    v14 = "numVertics";
                                    goto LABEL_77;
                                  case 507:
                                    v13 = *v8;
                                    v14 = "exceededCVertics";
                                    goto LABEL_77;
                                  case 510:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailMismatch";
                                    goto LABEL_77;
                                  case 511:
                                    v15 = "mspbootBlockRefreshCnt";
                                    v16 = a1;
                                    v17 = 511;
                                    goto LABEL_284;
                                  case 516:
                                    v15 = "mspBootBlockRefreshTime";
                                    v16 = a1;
                                    v17 = 516;
                                    goto LABEL_284;
                                  case 517:
                                    v13 = *v8;
                                    v14 = "mspBootBlockCountPerMsp";
                                    goto LABEL_77;
                                  case 518:
                                    v13 = *v8;
                                    v14 = "skinnyRevectorSLC";
                                    goto LABEL_77;
                                  case 519:
                                    v13 = *v8;
                                    v14 = "skinnyRevectorTLC";
                                    goto LABEL_77;
                                  case 520:
                                    v13 = *v8;
                                    v14 = "perfSetupAttempts";
                                    goto LABEL_77;
                                  case 521:
                                    v13 = *v8;
                                    v14 = "perfSetupSuccesses";
                                    goto LABEL_77;
                                  case 522:
                                    v13 = *v8;
                                    v14 = "perfWriteAttempts";
                                    goto LABEL_77;
                                  case 523:
                                    v13 = *v8;
                                    v14 = "perfWriteSuccesses";
                                    goto LABEL_77;
                                  case 524:
                                    v13 = *v8;
                                    v14 = "perfReadAttempts";
                                    goto LABEL_77;
                                  case 525:
                                    v13 = *v8;
                                    v14 = "perfReadSuccesses";
                                    goto LABEL_77;
                                  case 526:
                                    v13 = *v8;
                                    v14 = "perfCleanupAttempts";
                                    goto LABEL_77;
                                  case 527:
                                    v13 = *v8;
                                    v14 = "perfCleanupSuccesses";
                                    goto LABEL_77;
                                  case 530:
                                    v13 = *v8;
                                    v14 = "firstFailedDieId";
                                    goto LABEL_77;
                                  case 531:
                                    v13 = *v8;
                                    v14 = "numDieFailures";
                                    goto LABEL_77;
                                  case 532:
                                    v13 = *v8;
                                    v14 = "spareAvailablePercent";
                                    goto LABEL_77;
                                  case 533:
                                    v13 = *v8;
                                    v14 = "dataFabricErr";
                                    goto LABEL_77;
                                  case 534:
                                    v13 = *v8;
                                    v14 = "downlinkFabricErr";
                                    goto LABEL_77;
                                  case 535:
                                    v13 = *v8;
                                    v14 = "prpAccTimeoutErr";
                                    goto LABEL_77;
                                  case 537:
                                    v13 = *v8;
                                    v14 = "uplinkFabricErr";
                                    goto LABEL_77;
                                  case 538:
                                    v13 = *v8;
                                    v14 = "skinnyBandsGBB";
                                    goto LABEL_77;
                                  case 539:
                                    v13 = *v8;
                                    v14 = "AbortPad_GcMustPadBand";
                                    goto LABEL_77;
                                  case 540:
                                    v13 = *v8;
                                    v14 = "AbortPad_GcMustPadSkinny";
                                    goto LABEL_77;
                                  case 541:
                                    v13 = *v8;
                                    v14 = "bdrHostPingInitial";
                                    goto LABEL_77;
                                  case 542:
                                    v13 = *v8;
                                    v14 = "bdrHostPingMoreNeeded";
                                    goto LABEL_77;
                                  case 543:
                                    v13 = *v8;
                                    v14 = "bandParityAllocationFailed";
                                    goto LABEL_77;
                                  case 544:
                                    v13 = *v8;
                                    v14 = "fastHwBurstToSlc";
                                    goto LABEL_77;
                                  case 545:
                                    v13 = *v8;
                                    v14 = "slowHwToTlc";
                                    goto LABEL_77;
                                  case 546:
                                    v15 = "slcDemandBurstSizeDetected";
                                    v16 = a1;
                                    v17 = 546;
                                    goto LABEL_44;
                                  case 547:
                                    v15 = "slcDemandBurstDur";
                                    v16 = a1;
                                    v17 = 547;
                                    goto LABEL_44;
                                  case 548:
                                    v13 = *v8;
                                    v14 = "fastHwToTlcBurst";
                                    goto LABEL_77;
                                  case 549:
                                    v15 = "slcDemandBurstSizeSlc";
                                    v16 = a1;
                                    v17 = 549;
                                    goto LABEL_44;
                                  case 551:
                                    v15 = "balanceProportionBucketsHistogramTlc";
                                    v16 = a1;
                                    v17 = 551;
                                    goto LABEL_449;
                                  case 553:
                                    v13 = *v8;
                                    v14 = "slowHwFlushToSlc";
                                    goto LABEL_77;
                                  case 557:
                                    v13 = *v8;
                                    v14 = "slowHwToSlc";
                                    goto LABEL_77;
                                  case 558:
                                    v13 = *v8;
                                    v14 = "flushNwToSlc";
                                    goto LABEL_77;
                                  case 559:
                                    v13 = *v8;
                                    v14 = "flushNwToTlc";
                                    goto LABEL_77;
                                  case 560:
                                    v13 = *v8;
                                    v14 = "oslcHw";
                                    goto LABEL_77;
                                  case 561:
                                    v13 = *v8;
                                    v14 = "oslcTransitions";
                                    goto LABEL_77;
                                  case 563:
                                    v13 = *v8;
                                    v14 = "slcDemandFlushCount";
                                    goto LABEL_77;
                                  case 564:
                                    v13 = *v8;
                                    v14 = "slcDemandBurstCount";
                                    goto LABEL_77;
                                  case 565:
                                    v13 = *v8;
                                    v14 = "oslcBaseAvgPE";
                                    goto LABEL_77;
                                  case 566:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailNoSPBX";
                                    goto LABEL_77;
                                  case 567:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailDouble";
                                    goto LABEL_77;
                                  case 568:
                                    v13 = *v8;
                                    v14 = "oslcFastWAmpUOnOff";
                                    goto LABEL_77;
                                  case 569:
                                    v13 = *v8;
                                    v14 = "oslcSlowWAmpUOnOff";
                                    goto LABEL_77;
                                  case 570:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailInvalid";
                                    goto LABEL_77;
                                  case 572:
                                    v13 = *v8;
                                    v14 = "oslcLastWAmpUx10";
                                    goto LABEL_77;
                                  case 573:
                                    v13 = *v8;
                                    v14 = "raidFailedReadNoBlog";
                                    goto LABEL_77;
                                  case 574:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailBlank";
                                    goto LABEL_77;
                                  case 575:
                                    v13 = *v8;
                                    v14 = "oslcHotTLCOnOff";
                                    goto LABEL_77;
                                  case 576:
                                    v13 = *v8;
                                    v14 = "gcVPackDestinations";
                                    goto LABEL_77;
                                  case 581:
                                    v13 = *v8;
                                    v14 = "averageTLCPECycles";
                                    goto LABEL_77;
                                  case 582:
                                    v13 = *v8;
                                    v14 = "averageSLCPECycles";
                                    goto LABEL_77;
                                  case 583:
                                    v13 = *v8;
                                    v14 = "numAtomicBoots";
                                    goto LABEL_77;
                                  case 584:
                                    v13 = *v8;
                                    v14 = "clogMinorMismatch";
                                    goto LABEL_77;
                                  case 586:
                                    v13 = *v8;
                                    v14 = "raidExpectedFailRMXReconstructionInternal";
                                    goto LABEL_77;
                                  case 587:
                                    v13 = *v8;
                                    v14 = "raidExpectedFailRMXReconstructionHost";
                                    goto LABEL_77;
                                  case 588:
                                    v13 = *v8;
                                    v14 = "oslcGCinvalidations";
                                    goto LABEL_77;
                                  case 589:
                                    v13 = *v8;
                                    v14 = "oslcGCActivateReason";
                                    goto LABEL_77;
                                  default:
                                    switch(v7)
                                    {
                                      case 590:
                                        v13 = *v8;
                                        v14 = "oslcLowCleanBandsUOnOff";
                                        goto LABEL_77;
                                      case 591:
                                        v13 = *v8;
                                        v14 = "oslcTooManyGCMustOnOff";
                                        goto LABEL_77;
                                      case 592:
                                        v13 = *v8;
                                        v14 = "oslcBaseHostWrites";
                                        goto LABEL_77;
                                      case 593:
                                        v13 = *v8;
                                        v14 = "oslcBaseBandErases";
                                        goto LABEL_77;
                                      case 594:
                                        v13 = *v8;
                                        v14 = "oslcBdrBands";
                                        goto LABEL_77;
                                      case 595:
                                        v13 = *v8;
                                        v14 = "oslcBdrValid";
                                        goto LABEL_77;
                                      case 596:
                                        v13 = *v8;
                                        v14 = "unexpectedBlanksInternal";
                                        goto LABEL_77;
                                      case 597:
                                        v13 = *v8;
                                        v14 = "unexpectedBlanksOnRV";
                                        goto LABEL_77;
                                      case 601:
                                        v13 = *v8;
                                        v14 = "waterfallLockSectors";
                                        goto LABEL_77;
                                      case 602:
                                        v13 = *v8;
                                        v14 = "oslcGCActiveWrites";
                                        goto LABEL_77;
                                      case 603:
                                        v13 = *v8;
                                        v14 = "chipIdTemperatureSample";
                                        goto LABEL_77;
                                      case 604:
                                        v13 = *v8;
                                        v14 = "gcVPackWrites";
                                        goto LABEL_77;
                                      case 605:
                                        v15 = "gcActiveReasons";
                                        v16 = a1;
                                        v17 = 605;
                                        goto LABEL_44;
                                      case 606:
                                        v13 = *v8;
                                        v14 = "eanMaxInitTimeMs";
                                        goto LABEL_77;
                                      case 607:
                                        v13 = *v8;
                                        v14 = "eanMinToFirstReadTimeMs";
                                        goto LABEL_77;
                                      case 608:
                                        v13 = *v8;
                                        v14 = "skinnyAPGMRetire";
                                        goto LABEL_77;
                                      case 609:
                                        v13 = *v8;
                                        v14 = "unexpectedBlanksHost";
                                        goto LABEL_77;
                                      case 610:
                                        v15 = "pcieAerCounters";
                                        v16 = a1;
                                        v17 = 610;
                                        goto LABEL_471;
                                      case 611:
                                        v13 = *v8;
                                        v14 = "fastHwToTlcBalance";
                                        goto LABEL_77;
                                      case 612:
                                        v13 = *v8;
                                        v14 = "perfOSLCRuns";
                                        goto LABEL_77;
                                      case 613:
                                        v13 = *v8;
                                        v14 = "slcDemandBurstWritesInGC";
                                        goto LABEL_77;
                                      case 614:
                                        v13 = *v8;
                                        v14 = "slcDemandBurstWritesInTT";
                                        goto LABEL_77;
                                      case 615:
                                        v13 = *v8;
                                        v14 = "slcDemandBurstWritesInNRP";
                                        goto LABEL_77;
                                      case 616:
                                        v13 = *v8;
                                        v14 = "perfTotalDmaMb";
                                        goto LABEL_77;
                                      case 617:
                                        v13 = *v8;
                                        v14 = "eanAvgInitTimeMs";
                                        goto LABEL_77;
                                      case 618:
                                        v13 = *v8;
                                        v14 = "eanAvgToFirstReadTimeMs";
                                        goto LABEL_77;
                                      case 619:
                                        v13 = *v8;
                                        v14 = "eanMaxBootReadTimeMs";
                                        goto LABEL_77;
                                      case 620:
                                        v13 = *v8;
                                        v14 = "eanAvgBootReadTimeMs";
                                        goto LABEL_77;
                                      case 621:
                                        v15 = "eanBootReadsHist";
                                        v16 = a1;
                                        v17 = 621;
                                        goto LABEL_44;
                                      case 622:
                                        v13 = *v8;
                                        v14 = "maxBgInitTimeMs";
                                        goto LABEL_77;
                                      case 623:
                                        v13 = *v8;
                                        v14 = "avgBgInitTimeMs";
                                        goto LABEL_77;
                                      case 624:
                                        v15 = "clogFailReason";
                                        v16 = a1;
                                        v17 = 624;
                                        goto LABEL_246;
                                      case 625:
                                        v13 = *v8;
                                        v14 = "eanMinBootReadMBPerSec";
                                        goto LABEL_77;
                                      case 626:
                                        v13 = *v8;
                                        v14 = "eanAvgBootReadMBPerSec";
                                        goto LABEL_77;
                                      case 627:
                                        v13 = *v8;
                                        v14 = "minSkinnyPECycles";
                                        goto LABEL_77;
                                      case 628:
                                        v13 = *v8;
                                        v14 = "maxSkinnyPECycles";
                                        goto LABEL_77;
                                      case 629:
                                        v13 = *v8;
                                        v14 = "averageSkinnyPECycles";
                                        goto LABEL_77;
                                      case 630:
                                        v15 = "raidSuccessfulRecoEAN";
                                        v16 = a1;
                                        v17 = 630;
                                        goto LABEL_994;
                                      case 631:
                                        v15 = "raidFailedRecoEAN";
                                        v16 = a1;
                                        v17 = 631;
                                        goto LABEL_994;
                                      case 632:
                                        v15 = "eanFirstReadMode";
                                        v16 = a1;
                                        v17 = 632;
LABEL_994:
                                        v18 = v8;
                                        v19 = 6;
                                        goto LABEL_51;
                                      case 635:
                                        v13 = *v8;
                                        v14 = "oslcHwGC";
                                        goto LABEL_77;
                                      case 636:
                                        v13 = *v8;
                                        v14 = "oslcHwTT";
                                        goto LABEL_77;
                                      case 637:
                                        v13 = *v8;
                                        v14 = "oslcHwNRP";
                                        goto LABEL_77;
                                      case 638:
                                        v15 = "oslcDemandBurstSize";
                                        v16 = a1;
                                        v17 = 638;
                                        goto LABEL_44;
                                      case 639:
                                        v13 = *v8;
                                        v14 = "raidReconstructSuccessBandFlowOslc";
                                        goto LABEL_77;
                                      case 640:
                                        v13 = *v8;
                                        v14 = "raidReconstructFailBandFlowOslc";
                                        goto LABEL_77;
                                      case 641:
                                        v13 = *v8;
                                        v14 = "raidFailSectors";
                                        goto LABEL_77;
                                      case 642:
                                        v13 = *v8;
                                        v14 = "eanFailSectors";
                                        goto LABEL_77;
                                      case 643:
                                        v13 = *v8;
                                        v14 = "bdrTimeMode";
                                        goto LABEL_77;
                                      case 644:
                                        v13 = *v8;
                                        v14 = "raidParityNotSavedP";
                                        goto LABEL_77;
                                      case 645:
                                        v13 = *v8;
                                        v14 = "raidParityNotSavedQ";
                                        goto LABEL_77;
                                      case 646:
                                        v13 = *v8;
                                        v14 = "raidParityInvalid";
                                        goto LABEL_77;
                                      case 647:
                                        v13 = *v8;
                                        v14 = "raidParityUnknown";
                                        goto LABEL_77;
                                      case 648:
                                        v13 = *v8;
                                        v14 = "raidParityUnmapped";
                                        goto LABEL_77;
                                      case 649:
                                        v13 = *v8;
                                        v14 = "raidParityGCUnc";
                                        goto LABEL_77;
                                      case 657:
                                        v13 = *v8;
                                        v14 = "AbortSkip_MPBXProbational";
                                        goto LABEL_77;
                                      case 659:
                                        v13 = *v8;
                                        v14 = "raidVerificationReads";
                                        goto LABEL_77;
                                      case 666:
                                        v13 = *v8;
                                        v14 = "nofDies";
                                        goto LABEL_77;
                                      case 671:
                                        v13 = *v8;
                                        v14 = "skinnyBandsNum";
                                        goto LABEL_77;
                                      case 672:
                                        v13 = *v8;
                                        v14 = "skinnyBandsNumDips";
                                        goto LABEL_77;
                                      case 674:
                                        v15 = "oslcNoVotesHw";
                                        v16 = a1;
                                        v17 = 674;
                                        goto LABEL_149;
                                      case 675:
                                        v13 = *v8;
                                        v14 = "totalLbas";
                                        goto LABEL_77;
                                      case 676:
                                        v13 = *v8;
                                        v14 = "bdrHostPingExtra";
                                        goto LABEL_77;
                                      case 677:
                                        v13 = *v8;
                                        v14 = "magazineInstanceMeta";
                                        goto LABEL_77;
                                      default:
                                        switch(v7)
                                        {
                                          case 680:
                                            v15 = "magazineFWVersion";
                                            v16 = a1;
                                            v17 = 680;
                                            goto LABEL_130;
                                          case 681:
                                            v13 = *v8;
                                            v14 = "raidReconstructFailPMXUnsup";
                                            goto LABEL_77;
                                          case 682:
                                            v13 = *v8;
                                            v14 = "raidReconstructFailBMXUnsup";
                                            goto LABEL_77;
                                          case 683:
                                            v13 = *v8;
                                            v14 = "iBootNANDResets";
                                            goto LABEL_77;
                                          case 684:
                                            v13 = *v8;
                                            v14 = "pcieClkreqHighTimeout";
                                            goto LABEL_77;
                                          case 687:
                                            v15 = "cbdrInitSent";
                                            v16 = a1;
                                            v17 = 687;
                                            goto LABEL_130;
                                          case 688:
                                            v13 = *v8;
                                            v14 = "cbdrPauseSent";
                                            goto LABEL_77;
                                          case 689:
                                            v13 = *v8;
                                            v14 = "cbdrResumeSent";
                                            goto LABEL_77;
                                          case 690:
                                            v13 = *v8;
                                            v14 = "cbdrGetResultSent";
                                            goto LABEL_77;
                                          case 691:
                                            v13 = *v8;
                                            v14 = "cbdrEarlyExits";
                                            goto LABEL_77;
                                          case 694:
                                            v15 = "cbdrRefreshGrades";
                                            v16 = a1;
                                            v17 = 694;
                                            goto LABEL_44;
                                          case 695:
                                            v13 = *v8;
                                            v14 = "cbdrNotEnoughReads";
                                            goto LABEL_77;
                                          case 696:
                                            v13 = *v8;
                                            v14 = "cbdrAborts";
                                            goto LABEL_77;
                                          case 697:
                                            v13 = *v8;
                                            v14 = "TurboRaidHostClassifications";
                                            goto LABEL_77;
                                          case 698:
                                            v13 = *v8;
                                            v14 = "TurboRaidInternalClassifications";
                                            goto LABEL_77;
                                          case 699:
                                            v13 = *v8;
                                            v14 = "cbdrFullyDone";
                                            goto LABEL_77;
                                          case 702:
                                            v15 = "vcurve";
                                            v16 = a1;
                                            v17 = 702;
                                            goto LABEL_284;
                                          case 703:
                                            v15 = "injDepth";
                                            v16 = a1;
                                            v17 = 703;
                                            goto LABEL_282;
                                          case 704:
                                            v13 = *v8;
                                            v14 = "logical_disk_occupied_promiles";
                                            goto LABEL_77;
                                          case 711:
                                            v13 = *v8;
                                            v14 = "raidPrevFailedReconstructSkip";
                                            goto LABEL_77;
                                          case 712:
                                            v13 = *v8;
                                            v14 = "TurboRaidSuccessfulHostAuxReads";
                                            goto LABEL_77;
                                          case 713:
                                            v13 = *v8;
                                            v14 = "TurboRaidSuccessfulInternalAuxReads";
                                            goto LABEL_77;
                                          case 714:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationReliabilityHost";
                                            goto LABEL_77;
                                          case 715:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationReliabilityInternal";
                                            goto LABEL_77;
                                          case 716:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationQualityHost";
                                            goto LABEL_77;
                                          case 717:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationQualityInternal";
                                            goto LABEL_77;
                                          case 719:
                                            v13 = *v8;
                                            v14 = "skinnyBandErases";
                                            goto LABEL_77;
                                          case 721:
                                            v13 = *v8;
                                            v14 = "gcPDusterDestinations";
                                            goto LABEL_77;
                                          case 722:
                                            v13 = *v8;
                                            v14 = "gcPDusterWrites";
                                            goto LABEL_77;
                                          case 730:
                                            v13 = *v8;
                                            v14 = "rvFails";
                                            goto LABEL_77;
                                          case 737:
                                            v13 = *v8;
                                            v14 = "TurboRaidFailedHostAuxReads";
                                            goto LABEL_77;
                                          case 738:
                                            v13 = *v8;
                                            v14 = "TurboRaidFailedInternalAuxReads";
                                            goto LABEL_77;
                                          case 741:
                                            v13 = *v8;
                                            v14 = "autoSkipTriggers";
                                            goto LABEL_77;
                                          case 742:
                                            v13 = *v8;
                                            v14 = "autoSkipPlanes";
                                            goto LABEL_77;
                                          case 744:
                                            v15 = "raidReconstructDurationHisto";
                                            v16 = a1;
                                            v17 = 744;
                                            goto LABEL_149;
                                          case 745:
                                            v15 = "failsOnReconstructHisto";
                                            v16 = a1;
                                            v17 = 745;
                                            goto LABEL_149;
                                          case 746:
                                            v13 = *v8;
                                            v14 = "bandKill_userFlattenExcessive";
                                            goto LABEL_77;
                                          case 747:
                                            v13 = *v8;
                                            v14 = "bandKill_IntFlattenExcessive";
                                            goto LABEL_77;
                                          case 748:
                                            v13 = *v8;
                                            v14 = "bandKill_userFlattenBalance";
                                            goto LABEL_77;
                                          case 749:
                                            v13 = *v8;
                                            v14 = "bandKill_intFlattenBalance";
                                            goto LABEL_77;
                                          case 750:
                                            v13 = *v8;
                                            v14 = "bandKill_formatVertExcessive";
                                            goto LABEL_77;
                                          case 751:
                                            v13 = *v8;
                                            v14 = "bandKill_formatVertBalance";
                                            goto LABEL_77;
                                          case 753:
                                            v13 = *v8;
                                            v14 = "cbdrNumSlowRefreshes";
                                            goto LABEL_77;
                                          case 754:
                                            v13 = *v8;
                                            v14 = "cbdrNumFastRefreshes";
                                            goto LABEL_77;
                                          case 755:
                                            v13 = *v8;
                                            v14 = "cbdrTotalRefreshValidity";
                                            goto LABEL_77;
                                          case 756:
                                            v15 = "cbdrRefreshedAges";
                                            v16 = a1;
                                            v17 = 756;
                                            goto LABEL_673;
                                          case 758:
                                            v13 = *v8;
                                            v14 = "cbdrSkippedBlocks";
                                            goto LABEL_77;
                                          case 759:
                                            v15 = "cbdrScanPct";
                                            v16 = a1;
                                            v17 = 759;
                                            goto LABEL_102;
                                          case 760:
                                            v13 = *v8;
                                            v14 = "raidSuccessfulBMXReconstructionInternal";
                                            goto LABEL_77;
                                          case 761:
                                            v13 = *v8;
                                            v14 = "raidSuccessfulBMXReconstructionHost";
                                            goto LABEL_77;
                                          case 762:
                                            v13 = *v8;
                                            v14 = "raidFailedBMXReconstructionInternal";
                                            goto LABEL_77;
                                          case 763:
                                            v13 = *v8;
                                            v14 = "raidFailedBMXReconstructionHost";
                                            goto LABEL_77;
                                          case 764:
                                            v13 = *v8;
                                            v14 = "ricSPRVFail";
                                            goto LABEL_77;
                                          case 765:
                                            v13 = *v8;
                                            v14 = "ricMPRVFail";
                                            goto LABEL_77;
                                          case 767:
                                            v15 = "cbdrRefreshGradesSLC";
                                            v16 = a1;
                                            v17 = 767;
                                            goto LABEL_44;
                                          case 768:
                                            v15 = "cbdrRefreshedAgesSLC";
                                            v16 = a1;
                                            v17 = 768;
LABEL_673:
                                            v18 = v8;
                                            v19 = 9;
                                            goto LABEL_51;
                                          case 769:
                                            v15 = "cbdrScanPctSLC";
                                            v16 = a1;
                                            v17 = 769;
                                            goto LABEL_102;
                                          case 770:
                                            v15 = "cpuBurstLength";
                                            v16 = a1;
                                            v17 = 770;
                                            goto LABEL_149;
                                          case 771:
                                            v13 = *v8;
                                            v14 = "autoSkipRaidRecoFail";
                                            goto LABEL_77;
                                          case 772:
                                            v15 = "dmReasonsSlc";
                                            v16 = a1;
                                            v17 = 772;
                                            goto LABEL_284;
                                          case 773:
                                            v15 = "dmReasonsTlc";
                                            v16 = a1;
                                            v17 = 773;
                                            goto LABEL_284;
                                          case 774:
                                            v13 = *v8;
                                            v14 = "raidReconstructFailBMXAbort";
                                            goto LABEL_77;
                                          case 775:
                                            v13 = *v8;
                                            v14 = "bandKill_fatBindingNoBlocks";
                                            goto LABEL_77;
                                          case 776:
                                            v13 = *v8;
                                            v14 = "bandKill_fatBindingFewBlocks";
                                            goto LABEL_77;
                                          default:
                                            switch(v7)
                                            {
                                              case 777:
                                                v13 = *v8;
                                                v14 = "numBadBootBlocks";
                                                goto LABEL_77;
                                              case 778:
                                                v13 = *v8;
                                                v14 = "snapshotCPUHigh";
                                                goto LABEL_77;
                                              case 779:
                                                v13 = *v8;
                                                v14 = "snapshotCPULow";
                                                goto LABEL_77;
                                              case 780:
                                                v13 = *v8;
                                                v14 = "gcWithoutBMs";
                                                goto LABEL_77;
                                              case 781:
                                                v15 = "gcSearchTimeHistory";
                                                v16 = a1;
                                                v17 = 781;
                                                goto LABEL_44;
                                              case 785:
                                                v15 = "gcSearchPortion";
                                                v16 = a1;
                                                v17 = 785;
                                                goto LABEL_246;
                                              case 786:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBmxMp";
                                                goto LABEL_77;
                                              case 787:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBmx";
                                                goto LABEL_77;
                                              case 788:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBMXUECC";
                                                goto LABEL_77;
                                              case 789:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBMXBlank";
                                                goto LABEL_77;
                                              case 790:
                                                v13 = *v8;
                                                v14 = "raidPrevFailedReconstructBmxMpSkip";
                                                goto LABEL_77;
                                              case 792:
                                                v13 = *v8;
                                                v14 = "numTLCFatBands";
                                                goto LABEL_77;
                                              case 793:
                                                v13 = *v8;
                                                v14 = "fatValidity";
                                                goto LABEL_77;
                                              case 794:
                                                v13 = *v8;
                                                v14 = "fatTotal";
                                                goto LABEL_77;
                                              case 798:
                                                v15 = "raidBMXFailP";
                                                v16 = a1;
                                                v17 = 798;
                                                goto LABEL_144;
                                              case 799:
                                                v15 = "raidBMXFailUECC";
                                                v16 = a1;
                                                v17 = 799;
                                                goto LABEL_144;
                                              case 804:
                                                v15 = "raidBMXFailNoSPBX";
                                                v16 = a1;
                                                v17 = 804;
                                                goto LABEL_144;
                                              case 806:
                                                v15 = "raidBMXFailBlank";
                                                v16 = a1;
                                                v17 = 806;
                                                goto LABEL_144;
                                              case 809:
                                                v15 = "raidBMXFailUnsup";
                                                v16 = a1;
                                                v17 = 809;
                                                goto LABEL_144;
                                              case 811:
                                                v15 = "raidBMXFailMpSkip";
                                                v16 = a1;
                                                v17 = 811;
                                                goto LABEL_144;
                                              case 812:
                                                v15 = "raidBMXFailAbort";
                                                v16 = a1;
                                                v17 = 812;
                                                goto LABEL_144;
                                              case 813:
                                                v13 = *v8;
                                                v14 = "TurboRaidIsEnabled";
                                                goto LABEL_77;
                                              case 814:
                                                v15 = "raidBMXFailOther";
                                                v16 = a1;
                                                v17 = 814;
                                                goto LABEL_144;
                                              case 815:
                                                v15 = "raidBMXSuccess";
                                                v16 = a1;
                                                v17 = 815;
                                                goto LABEL_144;
                                              case 816:
                                                v13 = *v8;
                                                v14 = "skinnyBandsExtraDip";
                                                goto LABEL_77;
                                              case 821:
                                                v13 = *v8;
                                                v14 = "writeAmp";
                                                goto LABEL_77;
                                              case 822:
                                                v13 = *v8;
                                                v14 = "ricMaxClogOnlyPages";
                                                goto LABEL_77;
                                              case 823:
                                                v15 = "readClassifyStatusesHisto";
                                                v16 = a1;
                                                v17 = 823;
                                                goto LABEL_130;
                                              case 824:
                                                v15 = "readWithAuxStatusesHisto";
                                                v16 = a1;
                                                v17 = 824;
                                                goto LABEL_44;
                                              case 825:
                                                v15 = "readReconstructStatusesHisto";
                                                v16 = a1;
                                                v17 = 825;
                                                goto LABEL_44;
                                              case 826:
                                                v13 = *v8;
                                                v14 = "bdrBackupChecks";
                                                goto LABEL_77;
                                              case 827:
                                                v13 = *v8;
                                                v14 = "ricExceedClogOnlyPagesTH";
                                                goto LABEL_77;
                                              case 828:
                                                v13 = *v8;
                                                v14 = "numDipFailures";
                                                goto LABEL_77;
                                              case 831:
                                                v13 = *v8;
                                                v14 = "prefetchNextRange";
                                                goto LABEL_77;
                                              case 862:
                                                v13 = *v8;
                                                v14 = "raidSuccessfulSkip";
                                                goto LABEL_77;
                                              case 863:
                                                v13 = *v8;
                                                v14 = "raidFailedSkip";
                                                goto LABEL_77;
                                              case 864:
                                                v13 = *v8;
                                                v14 = "raidSkipAttempts";
                                                goto LABEL_77;
                                              case 865:
                                                v15 = "timeOfThrottlingPerLevel";
                                                v16 = a1;
                                                v17 = 865;
                                                goto LABEL_213;
                                              case 866:
                                                v15 = "timeOfThrottlingPerReadLevel";
                                                v16 = a1;
                                                v17 = 866;
                                                goto LABEL_213;
                                              case 867:
                                                v15 = "timeOfThrottlingPerWriteLevel";
                                                v16 = a1;
                                                v17 = 867;
                                                goto LABEL_213;
                                              case 868:
                                                v15 = "dmReasonsSlc_1bc";
                                                v16 = a1;
                                                v17 = 868;
                                                goto LABEL_284;
                                              case 869:
                                                v15 = "dmReasonsTlc_1bc";
                                                v16 = a1;
                                                v17 = 869;
                                                goto LABEL_284;
                                              case 870:
                                                v15 = "dmReasonsSlc_1bc_he";
                                                v16 = a1;
                                                v17 = 870;
                                                goto LABEL_284;
                                              case 871:
                                                v15 = "dmReasonsTlc_1bc_he";
                                                v16 = a1;
                                                v17 = 871;
                                                goto LABEL_284;
                                              case 876:
                                                v15 = "dmReasonsSlc_mbc";
                                                v16 = a1;
                                                v17 = 876;
                                                goto LABEL_284;
                                              case 877:
                                                v15 = "dmReasonsTlc_mbc";
                                                v16 = a1;
                                                v17 = 877;
                                                goto LABEL_284;
                                              case 883:
                                                v13 = *v8;
                                                v14 = "clogEmptyProgramms";
                                                goto LABEL_77;
                                              case 884:
                                                v13 = *v8;
                                                v14 = "oslcHwCloseBand";
                                                goto LABEL_77;
                                              case 891:
                                                v15 = "turboRaidSuccessAuxPartition";
                                                v16 = a1;
                                                v17 = 891;
                                                goto LABEL_123;
                                              case 892:
                                                v15 = "turboRaidFailAuxPartition";
                                                v16 = a1;
                                                v17 = 892;
                                                goto LABEL_123;
                                              case 893:
                                                v15 = "turboRaidClassifyQualPartition";
                                                v16 = a1;
                                                v17 = 893;
                                                goto LABEL_123;
                                              case 894:
                                                v15 = "turboRaidClassifyRelPartition";
                                                v16 = a1;
                                                v17 = 894;
                                                goto LABEL_123;
                                              case 895:
                                                v13 = *v8;
                                                v14 = "IND_pool_freeMinSilo";
                                                goto LABEL_77;
                                              case 896:
                                                v13 = *v8;
                                                v14 = "autoSweepBlocks";
                                                goto LABEL_77;
                                              case 897:
                                                v15 = "wcWrFragSizes";
                                                v16 = a1;
                                                v17 = 897;
                                                goto LABEL_246;
                                              case 898:
                                                v15 = "indStateAcrossGcDidNoL";
                                                v16 = a1;
                                                v17 = 898;
                                                goto LABEL_246;
                                              case 899:
                                                v15 = "indStateAcrossGcDidL";
                                                v16 = a1;
                                                v17 = 899;
                                                goto LABEL_246;
                                              case 900:
                                                v13 = *v8;
                                                v14 = "turboRaidNoClassifyDueToWasRetire";
                                                goto LABEL_77;
                                              case 901:
                                                v13 = *v8;
                                                v14 = "turboRaidNoClassifyDueToOpenBand";
                                                goto LABEL_77;
                                              case 902:
                                                v13 = *v8;
                                                v14 = "turboRaidNoClassifyDueToQualityBlock";
                                                goto LABEL_77;
                                              case 903:
                                                v13 = *v8;
                                                v14 = "turboRaidGbbOpenBand";
                                                goto LABEL_77;
                                              case 904:
                                                v13 = *v8;
                                                v14 = "turboRaidGbbShouldRetireOnRefresh";
                                                goto LABEL_77;
                                              case 905:
                                                v15 = "turboRaidRelPerBlock";
                                                v16 = a1;
                                                v17 = 905;
                                                goto LABEL_246;
                                              case 906:
                                                v15 = "turboRaidRelBetweenRefreshesPerBlock";
                                                v16 = a1;
                                                v17 = 906;
                                                goto LABEL_246;
                                              default:
                                                if (v7 <= 997)
                                                {
                                                  switch(v7)
                                                  {
                                                    case 907:
                                                      v15 = "turboRaidMaxRelBetweenRefreshesPerBlock";
                                                      v16 = a1;
                                                      v17 = 907;
                                                      goto LABEL_246;
                                                    case 908:
                                                      v15 = "turboRaidMinRelBetweenRefreshesPerBlock";
                                                      v16 = a1;
                                                      v17 = 908;
                                                      goto LABEL_246;
                                                    case 909:
                                                    case 910:
                                                    case 911:
                                                    case 912:
                                                    case 913:
                                                    case 914:
                                                    case 915:
                                                    case 916:
                                                    case 917:
                                                    case 924:
                                                    case 925:
                                                    case 926:
                                                    case 927:
                                                    case 928:
                                                    case 929:
                                                    case 936:
                                                    case 941:
                                                    case 945:
                                                    case 946:
                                                    case 947:
                                                    case 949:
                                                    case 950:
                                                    case 952:
                                                    case 954:
                                                    case 955:
                                                    case 956:
                                                    case 957:
                                                    case 958:
                                                    case 959:
                                                    case 960:
                                                    case 963:
                                                    case 966:
                                                    case 968:
                                                    case 969:
                                                    case 970:
                                                      goto LABEL_858;
                                                    case 918:
                                                      v15 = "turboRaidMaxCyclesBetweenRel";
                                                      v16 = a1;
                                                      v17 = 918;
                                                      goto LABEL_246;
                                                    case 919:
                                                      v15 = "turboRaidMinCyclesBetweenRel";
                                                      v16 = a1;
                                                      v17 = 919;
                                                      goto LABEL_246;
                                                    case 920:
                                                      v15 = "turboRaidAuxPerBlock";
                                                      v16 = a1;
                                                      v17 = 920;
                                                      goto LABEL_246;
                                                    case 921:
                                                      v15 = "turboRaidAuxBetweenRefreshesPerBlock";
                                                      v16 = a1;
                                                      v17 = 921;
                                                      goto LABEL_246;
                                                    case 922:
                                                      v13 = *v8;
                                                      v14 = "turboRaidRelLockMark";
                                                      goto LABEL_77;
                                                    case 923:
                                                      v13 = *v8;
                                                      v14 = "turboRaidAuxLockMark";
                                                      goto LABEL_77;
                                                    case 930:
                                                      v15 = "turboRaidMaxCyclesBetweenAux";
                                                      v16 = a1;
                                                      v17 = 930;
                                                      goto LABEL_246;
                                                    case 931:
                                                      v15 = "turboRaidMinCyclesBetweenAux";
                                                      v16 = a1;
                                                      v17 = 931;
                                                      goto LABEL_246;
                                                    case 932:
                                                      v15 = "turboRaidLastRelPECycles";
                                                      v16 = a1;
                                                      v17 = 932;
                                                      goto LABEL_246;
                                                    case 933:
                                                      v15 = "turboRaidRelQualPECycles";
                                                      v16 = a1;
                                                      v17 = 933;
                                                      goto LABEL_246;
                                                    case 934:
                                                      v15 = "turboRaidLastAuxPECycles";
                                                      v16 = a1;
                                                      v17 = 934;
                                                      goto LABEL_246;
                                                    case 935:
                                                      v15 = "turboRaidAuxQualPECycles";
                                                      v16 = a1;
                                                      v17 = 935;
                                                      goto LABEL_246;
                                                    case 937:
                                                      v13 = *v8;
                                                      v14 = "turboRaidPEFailAfterRel";
                                                      goto LABEL_77;
                                                    case 938:
                                                      v13 = *v8;
                                                      v14 = "turboRaidPEFailAfterAux";
                                                      goto LABEL_77;
                                                    case 939:
                                                      v13 = *v8;
                                                      v14 = "dvfmVotesCPU";
                                                      goto LABEL_77;
                                                    case 940:
                                                      v13 = *v8;
                                                      v14 = "dvfmVotesBandwidth";
                                                      goto LABEL_77;
                                                    case 942:
                                                      v13 = *v8;
                                                      v14 = "maxSLCEndurance";
                                                      goto LABEL_77;
                                                    case 943:
                                                      v13 = *v8;
                                                      v14 = "maxMixedEndurance";
                                                      goto LABEL_77;
                                                    case 944:
                                                      v13 = *v8;
                                                      v14 = "maxNativeEndurance";
                                                      goto LABEL_77;
                                                    case 948:
                                                      v15 = "assertHistory";
                                                      v16 = a1;
                                                      v17 = 948;
                                                      v18 = v8;
                                                      v19 = 40;
                                                      goto LABEL_51;
                                                    case 951:
                                                      v13 = *v8;
                                                      v14 = "asp3Support";
                                                      goto LABEL_77;
                                                    case 953:
                                                      v13 = *v8;
                                                      v14 = "numCrossTempRaidUecc";
                                                      goto LABEL_77;
                                                    case 961:
                                                      v13 = *v8;
                                                      v14 = "osBuildStr";
                                                      goto LABEL_77;
                                                    case 962:
                                                      v13 = *v8;
                                                      v14 = "raidConfig";
                                                      goto LABEL_77;
                                                    case 964:
                                                      v13 = *v8;
                                                      v14 = "raidBlkParityBands";
                                                      goto LABEL_77;
                                                    case 965:
                                                      v13 = *v8;
                                                      v14 = "raidBlkParitySecs";
                                                      goto LABEL_77;
                                                    case 967:
                                                      v15 = "indTrimFrags";
                                                      v16 = a1;
                                                      v17 = 967;
                                                      goto LABEL_282;
                                                    case 971:
                                                      v15 = "indUsedFrags";
                                                      v16 = a1;
                                                      v17 = 971;
                                                      goto LABEL_282;
                                                    default:
                                                      if (v7 == 996)
                                                      {
                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "clogFindFail";
                                                      }

                                                      else
                                                      {
                                                        if (v7 != 997)
                                                        {
                                                          goto LABEL_858;
                                                        }

                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "clogFindBlank";
                                                      }

                                                      break;
                                                  }

                                                  goto LABEL_78;
                                                }

                                                if (v7 > 1137)
                                                {
                                                  if (v7 <= 1170)
                                                  {
                                                    if (v7 > 1156)
                                                    {
                                                      if (v7 > 1167)
                                                      {
                                                        if (v7 == 1168)
                                                        {
                                                          v16 = a1;
                                                          v17 = 1168;
                                                          v15 = "poDetectPERemovalTotalCost";
LABEL_123:
                                                          v18 = v8;
                                                          v19 = 2;
                                                          goto LABEL_51;
                                                        }

                                                        if (v7 == 1169)
                                                        {
                                                          v16 = a1;
                                                          v17 = 1169;
                                                          v15 = "poDetectEmptySpotRemovalTotalCost";
                                                          goto LABEL_123;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v7 == 1157)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "eanMaxForceROTimeMs";
                                                          goto LABEL_78;
                                                        }

                                                        if (v7 == 1158)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "eanMaxForceRORecoTimeMs";
                                                          goto LABEL_78;
                                                        }
                                                      }

                                                      goto LABEL_858;
                                                    }

                                                    if (v7 > 1147)
                                                    {
                                                      if (v7 == 1148)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1148;
                                                        v15 = "gc_concurrent_dw_gc1";
                                                      }

                                                      else
                                                      {
                                                        if (v7 != 1149)
                                                        {
                                                          goto LABEL_858;
                                                        }

                                                        v16 = a1;
                                                        v17 = 1149;
                                                        v15 = "gc_concurrent_dw_gc2";
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v7 == 1138)
                                                      {
                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "numOfToHappySwitches";
                                                        goto LABEL_78;
                                                      }

                                                      if (v7 != 1147)
                                                      {
                                                        goto LABEL_858;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1147;
                                                      v15 = "gc_concurrent_dw_gc12";
                                                    }

LABEL_875:
                                                    v18 = v8;
                                                    v19 = 24;
                                                    goto LABEL_51;
                                                  }

                                                  if (v7 > 1180)
                                                  {
                                                    if (v7 > 1182)
                                                    {
                                                      if (v7 != 1183)
                                                      {
                                                        if (v7 != 1184)
                                                        {
                                                          goto LABEL_858;
                                                        }

                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "unhappy_state";
                                                        goto LABEL_78;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1183;
                                                      v15 = "gc_tot_dw_gc2";
                                                    }

                                                    else
                                                    {
                                                      v16 = a1;
                                                      if (v7 == 1181)
                                                      {
                                                        v17 = 1181;
                                                        v15 = "gc_cur_dw_gc3";
                                                      }

                                                      else
                                                      {
                                                        v17 = 1182;
                                                        v15 = "gc_tot_dw_gc1";
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v7 <= 1178)
                                                    {
                                                      if (v7 == 1171)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1171;
                                                        v15 = "poDetectEmptySpotRemovalAge";
                                                        goto LABEL_44;
                                                      }

                                                      if (v7 == 1172)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1172;
                                                        v15 = "poDetectGBBedMostSevereCost";
                                                        goto LABEL_130;
                                                      }

                                                      goto LABEL_858;
                                                    }

                                                    v16 = a1;
                                                    if (v7 == 1179)
                                                    {
                                                      v17 = 1179;
                                                      v15 = "gc_cur_dw_gc1";
                                                    }

                                                    else
                                                    {
                                                      v17 = 1180;
                                                      v15 = "gc_cur_dw_gc2";
                                                    }
                                                  }

LABEL_144:
                                                  v18 = v8;
                                                  v19 = 4;
                                                  goto LABEL_51;
                                                }

                                                if (v7 > 1039)
                                                {
                                                  if (v7 <= 1104)
                                                  {
                                                    if (v7 > 1041)
                                                    {
                                                      if (v7 != 1042)
                                                      {
                                                        if (v7 == 1080)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "raidForceClogLoad";
                                                          goto LABEL_78;
                                                        }

                                                        goto LABEL_858;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1042;
                                                      v15 = "bandsAgeBinsReadSectors";
                                                      v18 = v8;
                                                      v19 = 15;
                                                    }

                                                    else
                                                    {
                                                      v16 = a1;
                                                      if (v7 == 1040)
                                                      {
                                                        v17 = 1040;
                                                        v15 = "bandsAgeBinsV2";
                                                      }

                                                      else
                                                      {
                                                        v17 = 1041;
                                                        v15 = "bandsAgeBinsSnapshot";
                                                      }

                                                      v18 = v8;
                                                      v19 = 31;
                                                    }

LABEL_51:
                                                    sub_100007C40(v16, v17, v15, v18, v19);
                                                    goto LABEL_79;
                                                  }

                                                  if (v7 <= 1115)
                                                  {
                                                    if (v7 == 1105)
                                                    {
                                                      v16 = a1;
                                                      v17 = 1105;
                                                      v15 = "hostReadSequential";
                                                      goto LABEL_847;
                                                    }

                                                    if (v7 == 1106)
                                                    {
                                                      v16 = a1;
                                                      v17 = 1106;
                                                      v15 = "GCReadSequential";
LABEL_847:
                                                      v18 = v8;
                                                      v19 = 14;
                                                      goto LABEL_51;
                                                    }

                                                    goto LABEL_858;
                                                  }

                                                  if (v7 == 1116)
                                                  {
                                                    v16 = a1;
                                                    v17 = 1116;
                                                    v15 = "gcwamp";
LABEL_284:
                                                    v18 = v8;
                                                    v19 = 32;
                                                    goto LABEL_51;
                                                  }

                                                  if (v7 == 1137)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "numOfToUnhappySwitches";
                                                    goto LABEL_78;
                                                  }

LABEL_858:
                                                  switch(v7)
                                                  {
                                                    case 1185:
                                                      v13 = *v8;
                                                      v14 = "unhappy_level";
                                                      goto LABEL_77;
                                                    case 1186:
                                                    case 1187:
                                                    case 1188:
                                                    case 1191:
                                                    case 1192:
                                                    case 1193:
                                                    case 1194:
                                                    case 1195:
                                                    case 1200:
                                                    case 1203:
                                                    case 1204:
                                                    case 1205:
                                                    case 1206:
                                                    case 1207:
                                                    case 1208:
                                                    case 1209:
                                                    case 1210:
                                                    case 1212:
                                                    case 1213:
                                                    case 1214:
                                                    case 1219:
                                                    case 1220:
                                                    case 1235:
                                                    case 1236:
                                                    case 1237:
                                                    case 1238:
                                                    case 1239:
                                                    case 1240:
                                                    case 1242:
                                                    case 1243:
                                                    case 1245:
                                                    case 1247:
                                                    case 1248:
                                                    case 1249:
                                                    case 1250:
                                                    case 1251:
                                                    case 1252:
                                                    case 1253:
                                                    case 1254:
                                                    case 1255:
                                                    case 1256:
                                                    case 1257:
                                                    case 1258:
                                                    case 1259:
                                                    case 1260:
                                                    case 1261:
                                                    case 1262:
                                                    case 1263:
LABEL_896:
                                                      if (v7 <= 1447)
                                                      {
                                                        switch(v7)
                                                        {
                                                          case 1354:
                                                            v13 = *v8;
                                                            v14 = "numOfThrottlingLevels";
                                                            goto LABEL_77;
                                                          case 1355:
                                                            v13 = *v8;
                                                            v14 = "crossTempColdEvict";
                                                            goto LABEL_77;
                                                          case 1356:
                                                            v13 = *v8;
                                                            v14 = "crossTempHotEvict";
                                                            goto LABEL_77;
                                                          case 1357:
                                                            v13 = *v8;
                                                            v14 = "crossTempColdHotEvict";
                                                            goto LABEL_77;
                                                          case 1358:
                                                            v15 = "tempChangedHisto";
                                                            v16 = a1;
                                                            v17 = 1358;
                                                            goto LABEL_940;
                                                          case 1359:
                                                            v15 = "tempChangedEnterETHisto";
                                                            v16 = a1;
                                                            v17 = 1359;
LABEL_940:
                                                            v18 = v8;
                                                            v19 = 13;
                                                            goto LABEL_51;
                                                          case 1362:
                                                            v15 = "gcMustReasons";
                                                            v16 = a1;
                                                            v17 = 1362;
                                                            goto LABEL_93;
                                                          case 1367:
                                                            v15 = "asyncMessageHisto";
                                                            v16 = a1;
                                                            v17 = 1367;
                                                            goto LABEL_284;
                                                          case 1368:
                                                            v13 = *v8;
                                                            v14 = "massScanIgnoredTooFrequent";
                                                            goto LABEL_77;
                                                          case 1369:
                                                            v15 = "realGBBPerDipOfFailingDie";
                                                            v16 = a1;
                                                            v17 = 1369;
                                                            goto LABEL_149;
                                                          case 1379:
                                                            v13 = *v8;
                                                            v14 = "boffOrderedReadBlank";
                                                            goto LABEL_77;
                                                          case 1380:
                                                            v13 = *v8;
                                                            v14 = "boffOrderedRaidSuccessValidLba";
                                                            goto LABEL_77;
                                                          case 1381:
                                                            v13 = *v8;
                                                            v14 = "unexpectedRaidFailures";
                                                            goto LABEL_77;
                                                          case 1382:
                                                            v13 = *v8;
                                                            v14 = "boffOrderedUnexpectedBlankValid";
                                                            goto LABEL_77;
                                                          case 1383:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailPMXReconstructionInternal";
                                                            goto LABEL_77;
                                                          case 1384:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailPMXReconstructionHost";
                                                            goto LABEL_77;
                                                          case 1385:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailBMXReconstructionInternal";
                                                            goto LABEL_77;
                                                          case 1386:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailBMXReconstructionHost";
                                                            goto LABEL_77;
                                                          case 1392:
                                                            v13 = *v8;
                                                            v14 = "cbdrHPScanHP";
                                                            goto LABEL_77;
                                                          case 1393:
                                                            v13 = *v8;
                                                            v14 = "cbdrMPScanMP";
                                                            goto LABEL_77;
                                                          case 1394:
                                                            v13 = *v8;
                                                            v14 = "cbdrMPScanHP";
                                                            goto LABEL_77;
                                                          case 1401:
                                                            v13 = *v8;
                                                            v14 = "ldefragFailedMemBalancer";
                                                            goto LABEL_77;
                                                          case 1409:
                                                            v13 = *v8;
                                                            v14 = "BP_readThrottleEngagedCnt";
                                                            goto LABEL_77;
                                                          case 1410:
                                                            v13 = *v8;
                                                            v14 = "BP_readThrottleActualSize";
                                                            goto LABEL_77;
                                                          default:
                                                            goto LABEL_79;
                                                        }
                                                      }

                                                      if (v7 > 1535)
                                                      {
                                                        if (v7 > 1542)
                                                        {
                                                          if (v7 <= 1544)
                                                          {
                                                            v16 = a1;
                                                            if (v7 == 1543)
                                                            {
                                                              v17 = 1543;
                                                              v15 = "istkLowNoDIPingIntervals";
                                                            }

                                                            else
                                                            {
                                                              v17 = 1544;
                                                              v15 = "istkLowNoSUIPingIntervals";
                                                            }

                                                            goto LABEL_44;
                                                          }

                                                          if (v7 == 1545)
                                                          {
                                                            v16 = a1;
                                                            v17 = 1545;
                                                            v15 = "istkLowAfterMedIntervals";
                                                            goto LABEL_994;
                                                          }

                                                          if (v7 == 1547)
                                                          {
                                                            v16 = a1;
                                                            v17 = 1547;
                                                            v15 = "istkHWBetweenMed";
                                                            goto LABEL_102;
                                                          }

                                                          if (v7 != 1570)
                                                          {
                                                            goto LABEL_79;
                                                          }

                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "uptimeSeconds";
                                                        }

                                                        else if (v7 <= 1537)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          if (v7 == 1536)
                                                          {
                                                            v14 = "istkLowPings";
                                                          }

                                                          else
                                                          {
                                                            v14 = "istkLowNoDIPings";
                                                          }
                                                        }

                                                        else
                                                        {
                                                          switch(v7)
                                                          {
                                                            case 1538:
                                                              v13 = *v8;
                                                              v20 = a1;
                                                              v14 = "istkLowNoSUIPings";
                                                              break;
                                                            case 1539:
                                                              v13 = *v8;
                                                              v20 = a1;
                                                              v14 = "istkMedPings";
                                                              break;
                                                            case 1540:
                                                              v13 = *v8;
                                                              v20 = a1;
                                                              v14 = "istkHighPings";
                                                              break;
                                                            default:
                                                              goto LABEL_79;
                                                          }
                                                        }

                                                        goto LABEL_78;
                                                      }

                                                      if (v7 <= 1462)
                                                      {
                                                        if (v7 <= 1449)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          if (v7 == 1448)
                                                          {
                                                            v14 = "deviceTempMaxValue";
                                                          }

                                                          else
                                                          {
                                                            v14 = "deviceTempHighValue";
                                                          }

                                                          goto LABEL_78;
                                                        }

                                                        if (v7 == 1450)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "deviceTempLowValue";
                                                          goto LABEL_78;
                                                        }

                                                        if (v7 == 1452)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "selfPanicEnabled";
                                                          goto LABEL_78;
                                                        }

                                                        if (v7 != 1462)
                                                        {
                                                          goto LABEL_79;
                                                        }

                                                        v16 = a1;
                                                        v17 = 1462;
                                                        v15 = "nandWritesByMode";
                                                        goto LABEL_994;
                                                      }

                                                      if (v7 > 1532)
                                                      {
                                                        if (v7 == 1533)
                                                        {
                                                          v16 = a1;
                                                          v17 = 1533;
                                                          v15 = "istkLowPingIntervals";
                                                          goto LABEL_282;
                                                        }

                                                        v16 = a1;
                                                        if (v7 == 1534)
                                                        {
                                                          v17 = 1534;
                                                          v15 = "istkMedPingIntervals";
                                                        }

                                                        else
                                                        {
                                                          v17 = 1535;
                                                          v15 = "istkHighPingIntervals";
                                                        }

                                                        goto LABEL_44;
                                                      }

                                                      if (v7 == 1463)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1463;
                                                        v15 = "nandReadsByMode";
                                                        goto LABEL_994;
                                                      }

                                                      if (v7 != 1494)
                                                      {
                                                        goto LABEL_79;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1494;
                                                      v15 = "throttlingSecPerTTPerMW";
                                                      break;
                                                    case 1189:
                                                      v13 = *v8;
                                                      v14 = "lastLbaFormatTime";
                                                      goto LABEL_77;
                                                    case 1190:
                                                      v15 = "powerDownTime";
                                                      v16 = a1;
                                                      v17 = 1190;
                                                      goto LABEL_449;
                                                    case 1196:
                                                      v15 = "poDetectGBBedTotalCost";
                                                      v16 = a1;
                                                      v17 = 1196;
                                                      goto LABEL_102;
                                                    case 1197:
                                                      v15 = "poDetectGBBedAge";
                                                      v16 = a1;
                                                      v17 = 1197;
                                                      goto LABEL_44;
                                                    case 1198:
                                                      v15 = "poDetectPERemovalMostSevereCost";
                                                      v16 = a1;
                                                      v17 = 1198;
                                                      goto LABEL_130;
                                                    case 1199:
                                                      v13 = *v8;
                                                      v14 = "poDetectCurrentSize";
                                                      goto LABEL_77;
                                                    case 1201:
                                                      v15 = "gcVerticalSuccssfulAlignments";
                                                      v16 = a1;
                                                      v17 = 1201;
                                                      goto LABEL_144;
                                                    case 1202:
                                                      v15 = "gcVerticalNoAlignmentDueToMissingSegs";
                                                      v16 = a1;
                                                      v17 = 1202;
                                                      goto LABEL_144;
                                                    case 1211:
                                                      v15 = "forcedAllocationSmallEraseQ";
                                                      v16 = a1;
                                                      v17 = 1211;
                                                      goto LABEL_875;
                                                    case 1215:
                                                      v15 = "hostWritesPerThrottleZone";
                                                      v16 = a1;
                                                      v17 = 1215;
                                                      goto LABEL_102;
                                                    case 1216:
                                                      v15 = "tlcWLPerDipAvgPEC";
                                                      v16 = a1;
                                                      v17 = 1216;
                                                      goto LABEL_875;
                                                    case 1217:
                                                      v15 = "tlcWLPerDipMaxPEC";
                                                      v16 = a1;
                                                      v17 = 1217;
                                                      goto LABEL_875;
                                                    case 1218:
                                                      v15 = "tlcWLPerDipMinPEC";
                                                      v16 = a1;
                                                      v17 = 1218;
                                                      goto LABEL_875;
                                                    case 1221:
                                                      v13 = *v8;
                                                      v14 = "RD_openBandEvictBlocks";
                                                      goto LABEL_77;
                                                    case 1222:
                                                      v13 = *v8;
                                                      v14 = "RD_closedBandEvictBlocks";
                                                      goto LABEL_77;
                                                    case 1223:
                                                      v15 = "RD_closedBlocksTHHist";
                                                      v16 = a1;
                                                      v17 = 1223;
                                                      goto LABEL_44;
                                                    case 1224:
                                                      v15 = "apfsValidLbaOvershoot";
                                                      v16 = a1;
                                                      v17 = 1224;
                                                      break;
                                                    case 1225:
                                                      v13 = *v8;
                                                      v14 = "HUPolicySwitchPeMinSlc";
                                                      goto LABEL_77;
                                                    case 1226:
                                                      v13 = *v8;
                                                      v14 = "HUPolicySwitchPeInt";
                                                      goto LABEL_77;
                                                    case 1227:
                                                      v13 = *v8;
                                                      v14 = "HUPolicySwitchPeGap";
                                                      goto LABEL_77;
                                                    case 1228:
                                                      v15 = "HUPolicyWidthDown";
                                                      v16 = a1;
                                                      v17 = 1228;
                                                      goto LABEL_994;
                                                    case 1229:
                                                      v15 = "HUPolicyWidthUp";
                                                      v16 = a1;
                                                      v17 = 1229;
                                                      goto LABEL_994;
                                                    case 1230:
                                                      v13 = *v8;
                                                      v14 = "HUPolicyPrevPeSlc";
                                                      goto LABEL_77;
                                                    case 1231:
                                                      v13 = *v8;
                                                      v14 = "HUPolicyPrevPeTlc";
                                                      goto LABEL_77;
                                                    case 1232:
                                                      v13 = *v8;
                                                      v14 = "eanFastSize";
                                                      goto LABEL_77;
                                                    case 1233:
                                                      v13 = *v8;
                                                      v14 = "eanNumSlcEvictions";
                                                      goto LABEL_77;
                                                    case 1234:
                                                      v13 = *v8;
                                                      v14 = "eanNumForcedCompress";
                                                      goto LABEL_77;
                                                    case 1241:
                                                      v15 = "s2rTimeHisto";
                                                      v16 = a1;
                                                      v17 = 1241;
                                                      goto LABEL_44;
                                                    case 1244:
                                                      v13 = *v8;
                                                      v14 = "calendarTimeWentBackward";
                                                      goto LABEL_77;
                                                    case 1246:
                                                      v15 = "bandsUeccCrossTempHisto";
                                                      v16 = a1;
                                                      v17 = 1246;
                                                      goto LABEL_149;
                                                    case 1264:
                                                      v13 = *v8;
                                                      v14 = "numRefreshOnErrNandRefreshPerfOpt";
                                                      goto LABEL_77;
                                                    default:
                                                      switch(v7)
                                                      {
                                                        case 1271:
                                                          v13 = *v8;
                                                          v14 = "deviceTempMax";
                                                          goto LABEL_77;
                                                        case 1272:
                                                          v13 = *v8;
                                                          v14 = "deviceTempHigh";
                                                          goto LABEL_77;
                                                        case 1273:
                                                          v13 = *v8;
                                                          v14 = "deviceTempLow";
                                                          goto LABEL_77;
                                                        case 1282:
                                                          v13 = *v8;
                                                          v14 = "cbdrScanHP";
                                                          goto LABEL_77;
                                                        case 1283:
                                                          v13 = *v8;
                                                          v14 = "cbdrScanMP";
                                                          goto LABEL_77;
                                                        case 1285:
                                                          v13 = *v8;
                                                          v14 = "bitsPerCell";
                                                          goto LABEL_77;
                                                        case 1289:
                                                          v13 = *v8;
                                                          v14 = "numRefreshOnErrNandRefreshPerfOptOpen";
                                                          goto LABEL_77;
                                                        case 1293:
                                                          v15 = "bpZone2EntryTime";
                                                          v16 = a1;
                                                          v17 = 1293;
                                                          goto LABEL_246;
                                                        case 1294:
                                                          v15 = "bpZone2ExitTime";
                                                          v16 = a1;
                                                          v17 = 1294;
                                                          goto LABEL_246;
                                                        case 1295:
                                                          v15 = "bpHostChokeTime";
                                                          v16 = a1;
                                                          v17 = 1295;
                                                          goto LABEL_149;
                                                        case 1296:
                                                          v15 = "bpZone2EntryHW";
                                                          v16 = a1;
                                                          v17 = 1296;
                                                          goto LABEL_246;
                                                        case 1298:
                                                          v15 = "bpZone2ExitHW";
                                                          v16 = a1;
                                                          v17 = 1298;
                                                          goto LABEL_246;
                                                        case 1302:
                                                          v15 = "bpZone2EntryHostTP";
                                                          v16 = a1;
                                                          v17 = 1302;
                                                          goto LABEL_246;
                                                        case 1303:
                                                          v15 = "bpZone2EntryGCTP";
                                                          v16 = a1;
                                                          v17 = 1303;
                                                          goto LABEL_246;
                                                        case 1304:
                                                          v15 = "bpZone2ExitHostTP";
                                                          v16 = a1;
                                                          v17 = 1304;
                                                          goto LABEL_246;
                                                        case 1305:
                                                          v15 = "bpZone2ExitGCTP";
                                                          v16 = a1;
                                                          v17 = 1305;
                                                          goto LABEL_246;
                                                        case 1323:
                                                          v13 = *v8;
                                                          v14 = "prefetchNofHits";
                                                          goto LABEL_77;
                                                        case 1326:
                                                          v13 = *v8;
                                                          v14 = "massScanFullRounds";
                                                          goto LABEL_77;
                                                        case 1327:
                                                          v13 = *v8;
                                                          v14 = "massScanEarlyExits";
                                                          goto LABEL_77;
                                                        case 1328:
                                                          v13 = *v8;
                                                          v14 = "massScanMspFullScanRequests";
                                                          goto LABEL_77;
                                                        case 1329:
                                                          v13 = *v8;
                                                          v14 = "massScanMspEarlyExitRequests";
                                                          goto LABEL_77;
                                                        case 1333:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedRecoverableErrorGbbs";
                                                          goto LABEL_77;
                                                        case 1334:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedUnrecoverableErrorGbbs";
                                                          goto LABEL_77;
                                                        case 1335:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedBandOrphansNumBands";
                                                          goto LABEL_77;
                                                        case 1336:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedBandOrphansNumSectors";
                                                          goto LABEL_77;
                                                        case 1337:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedDefragEvents";
                                                          goto LABEL_77;
                                                        case 1338:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedDefragIterations";
                                                          goto LABEL_77;
                                                        case 1339:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedDefragSectors";
                                                          goto LABEL_77;
                                                        case 1344:
                                                          v15 = "unhappyWideGC1";
                                                          v16 = a1;
                                                          v17 = 1344;
                                                          goto LABEL_144;
                                                        case 1345:
                                                          v15 = "unhappyVertGC";
                                                          v16 = a1;
                                                          v17 = 1345;
                                                          goto LABEL_144;
                                                        case 1348:
                                                          v13 = *v8;
                                                          v14 = "thermalSelfThrottlingSupported";
                                                          goto LABEL_77;
                                                        case 1349:
                                                          v13 = *v8;
                                                          v14 = "thermalSelfThrottlingEnabled";
                                                          goto LABEL_77;
                                                        default:
                                                          goto LABEL_896;
                                                      }
                                                  }

LABEL_93:
                                                  v18 = v8;
                                                  v19 = 20;
                                                  goto LABEL_51;
                                                }

                                                if (v7 <= 1002)
                                                {
                                                  if (v7 > 1000)
                                                  {
                                                    if (v7 != 1001)
                                                    {
                                                      v13 = *v8;
                                                      v20 = a1;
                                                      v14 = "clogReplayTransientError";
                                                      goto LABEL_78;
                                                    }

                                                    v16 = a1;
                                                    v17 = 1001;
                                                    v15 = "clogReplayFailReason";
LABEL_149:
                                                    v18 = v8;
                                                    v19 = 8;
                                                    goto LABEL_51;
                                                  }

                                                  if (v7 == 998)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "clogFindUnc";
                                                    goto LABEL_78;
                                                  }

                                                  if (v7 == 999)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "clogFindUnexpected";
                                                    goto LABEL_78;
                                                  }

                                                  goto LABEL_858;
                                                }

                                                if (v7 <= 1015)
                                                {
                                                  if (v7 == 1003)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "clogReplaySpfError";
                                                    goto LABEL_78;
                                                  }

                                                  if (v7 == 1015)
                                                  {
                                                    v16 = a1;
                                                    v17 = 1015;
                                                    v15 = "eanEarlyBootUeccPage";
                                                    goto LABEL_144;
                                                  }

                                                  goto LABEL_858;
                                                }

                                                if (v7 != 1016)
                                                {
                                                  if (v7 == 1017)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "eanEarlyBootUeccMultiplane";
                                                    goto LABEL_78;
                                                  }

                                                  goto LABEL_858;
                                                }

                                                v13 = *v8;
                                                v20 = a1;
                                                v14 = "eanEarlyBootNumUeccPages";
LABEL_78:
                                                sub_10001D01C(v20, &unk_10004A471, v14, v13);
LABEL_79:
                                                a2 = &v8[v10];
                                                v6 = v11 - v10;
                                                if (v11 != v10)
                                                {
                                                  continue;
                                                }

                                                return 1;
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
}

uint64_t sub_100007C40(uint64_t result, int a2, const char *a3, uint64_t *a4, unsigned int a5)
{
  v7 = result;
  v8 = *a4;
  if (a2 > 44)
  {
    if (a2 <= 50)
    {
      if (a2 > 48)
      {
        if (a2 == 49)
        {
          *(result + 56) = v8;
          if (!a5)
          {
            return result;
          }
        }

        else
        {
          *(result + 52) = v8;
          if (!a5)
          {
            return result;
          }
        }

        goto LABEL_59;
      }

      if (a2 == 45)
      {
        *(result + 176) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }

      if (a2 == 48)
      {
        *(result + 80) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (a2 <= 52)
      {
        if (a2 == 51)
        {
          *(result + 48) = v8;
          if (!a5)
          {
            return result;
          }
        }

        else
        {
          *(result + 44) = v8;
          if (!a5)
          {
            return result;
          }
        }

        goto LABEL_59;
      }

      switch(a2)
      {
        case 53:
          *(result + 32) = v8;
          if (!a5)
          {
            return result;
          }

          goto LABEL_59;
        case 56:
          *(result + 160) = v8;
          if (!a5)
          {
            return result;
          }

          goto LABEL_59;
        case 265:
          if (!a5)
          {
            return result;
          }

          v9 = (result + 184);
          v10 = a5;
          v11 = a4;
          do
          {
            v12 = *v11++;
            *v9++ = v12;
            --v10;
          }

          while (v10);
          break;
      }
    }

    goto LABEL_58;
  }

  if (a2 <= 16)
  {
    if (a2 > 11)
    {
      if (a2 == 12)
      {
        *(result + 144) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }

      if (a2 == 13)
      {
        *(result + 152) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (a2 == 4)
      {
        *(result + 72) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }

      if (a2 == 7)
      {
        *(result + 64) = v8;
        if (!a5)
        {
          return result;
        }

        goto LABEL_59;
      }
    }

LABEL_58:
    if (!a5)
    {
      return result;
    }

    goto LABEL_59;
  }

  if (a2 <= 18)
  {
    if (a2 != 17)
    {
      *(result + 104) = v8;
      if (!a5)
      {
        return result;
      }

      goto LABEL_59;
    }

    *(result + 88) = v8;
    goto LABEL_58;
  }

  if (a2 == 19)
  {
    *(result + 96) = v8;
    if (!a5)
    {
      return result;
    }

    goto LABEL_59;
  }

  if (a2 == 20)
  {
    *(result + 112) = v8;
    if (!a5)
    {
      return result;
    }

    goto LABEL_59;
  }

  if (a2 != 28)
  {
    goto LABEL_58;
  }

  *(result + 168) = v8;
  if (!a5)
  {
    return result;
  }

LABEL_59:
  if (a5 == 1)
  {

    return sub_10001D01C(result, &unk_10004A471, a3, v8);
  }

  else
  {
    v13 = 0;
    v14 = a5;
    do
    {
      snprintf(__str, 0x64uLL, "%d", v13);
      __str[100] = 0;
      result = sub_10001D01C(v7, a3, __str, a4[v13++]);
    }

    while (v14 != v13);
  }

  return result;
}

double ASPReleaseContext(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = v2[14];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      v5 = v4[14];
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t ASPFTLParseBufferToCxt(uint64_t a1, unint64_t *a2, unsigned int a3)
{
  v5 = 0;
  v6 = a3 >> 3;
  *__str = 0u;
  v17 = 0u;
  do
  {
LABEL_2:
    if (!v6)
    {
      return v5;
    }

    v8 = *a2++;
    v7 = v8;
    --v6;
    v9 = HIDWORD(v8);
  }

  while (!HIDWORD(v8));
  if (v7 == 0xFFFF || v7 > 0x30000000 || v6 < v9)
  {
    return v5;
  }

  switch(v7)
  {
    case 1:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "version", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: version(1) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 2:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostWriteXacts", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWriteXacts(2) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 3:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostReadXacts", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostReadXacts(3) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 4:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostWrites", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWrites(4) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 5:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostWritesDyn", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWritesDyn(5) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 6:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostWritesStatic", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWritesStatic(6) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 7:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostReads", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostReads(7) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 8:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "validLbas", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: validLbas(8) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 9:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "shutdowns", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: shutdowns(9) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 10:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "boots", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: boots(10) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 11:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "uncleanBoots", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: uncleanBoots(11) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 12:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "IND_pool_free", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: IND_pool_free(12) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 13:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "IND_pool_count", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: IND_pool_count(13) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 14:
      if (v9 != 10)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWriteLogHisto(14): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "hostWriteLogHisto_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWriteLogHisto(14): Cannot add 10 elements to context", v14);
      return v5;
    case 15:
      if (v9 != 10)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostReadLogHisto(15): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "hostReadLogHisto_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostReadLogHisto(15): Cannot add 10 elements to context", v14);
      return v5;
    case 16:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcWrites", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcWrites(16) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 17:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wearLevMoves", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wearLevMoves(17) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 18:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "nandWrites", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandWrites(18) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 19:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "nandReads", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandReads(19) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 20:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandErases", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandErases(20) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 22:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numPfail", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numPfail(22) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 23:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numEfail", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numEfail(23) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 24:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numPerformanceRefreshes", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numPerformanceRefreshes(24) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 27:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostWritesMeta", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWritesMeta(27) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 28:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numSleepOps", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numSleepOps(28) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 30:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cntTimeWentBackWardOnBoot", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cntTimeWentBackWardOnBoot(30) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 31:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cntTimeWentBackWard", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cntTimeWentBackWard(31) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 34:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "powerOnHours", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: powerOnHours(34) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 36:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "smartCritWarnings", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: smartCritWarnings(36) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 37:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numFlushes", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numFlushes(37) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 38:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numUnmap", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numUnmap(38) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 39:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numUnmapSec", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numUnmapSec(39) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 41:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogProgram", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogProgram(41) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 42:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogPFail", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogPFail(42) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 43:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogRead", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogRead(43) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 44:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogRFail", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogRFail(44) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 45:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxHighEnduranceBlockErases", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxHighEnduranceBlockErases(45) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 46:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numFactoryBad", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numFactoryBad(46) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 47:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numGrownBad", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numGrownBad(47) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 48:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numFreeVirtualBlocks", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numFreeVirtualBlocks(48) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 49:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bytesPerPage", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bytesPerPage(49) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 50:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "pagesPerVirtualBlock", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: pagesPerVirtualBlock(50) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 51:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "blocksPerVirtualBlock", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: blocksPerVirtualBlock(51) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 52:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numVirtualBlocks", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numVirtualBlocks(52) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 53:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "exportVersion", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: exportVersion(53) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 54:
      if (v9 != 100)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: ECBins(54): (#100) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x65)
      {
        v12 = 100;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "ECBins_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: ECBins(54): Cannot add 100 elements to context", v14);
      return v5;
    case 55:
      if (v9 != 100)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: RCBins(55): (#100) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x65)
      {
        v12 = 100;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "RCBins_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: RCBins(55): Cannot add 100 elements to context", v14);
      return v5;
    case 56:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "utilFormatTime", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: utilFormatTime(56) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 57:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "calendarTime", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: calendarTime(57) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 58:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wallTime", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wallTime(58) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 59:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_flush_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_flush_us(59) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 60:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_unmap_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_unmap_us(60) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 61:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_pri0_r_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_pri0_r_us(61) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 62:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_pri0_w_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_pri0_w_us(62) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 63:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_pri1_r_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_pri1_r_us(63) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 64:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_pri1_w_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_pri1_w_us(64) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 65:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_pri2_r_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_pri2_r_us(65) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 66:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_pri2_w_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_pri2_w_us(66) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 67:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_pri3_r_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_pri3_r_us(67) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 68:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmdq_pri3_w_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmdq_pri3_w_us(68) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 69:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "host_idle_ms", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: host_idle_ms(69) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 70:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmd_hysteresis_window_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmd_hysteresis_window_us(70) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 71:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmd_lowPriHoldoffDelay_us", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmd_lowPriHoldoffDelay_us(71) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 72:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmd_lowPriHoldoffEnabled", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmd_lowPriHoldoffEnabled(72) cannot add 1 element to context");
      }

      goto LABEL_161;
    default:
      switch(v7)
      {
        case 73:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmd_expedite_num_success", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmd_expedite_num_success(73) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 75:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmd_expedite_num_failures", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmd_expedite_num_failures(75) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 76:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "num_trimerase", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: num_trimerase(76) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 77:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "staticSizeInMB", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: staticSizeInMB(77) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 80:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slcInvalidations", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcInvalidations(80) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 81:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slcGCInvalidations", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcGCInvalidations(81) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 82:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostSectorsDuringGCon", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostSectorsDuringGCon(82) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 83:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "highWaterMarkSLCUsed", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: highWaterMarkSLCUsed(83) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 84:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "intermediateBandErases", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: intermediateBandErases(84) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 85:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "intermediatePartitionStart", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: intermediatePartitionStart(85) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 86:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "userPartitionStart", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: userPartitionStart(86) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 87:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "iolog_lbas", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: iolog_lbas(87) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 88:
          if (v9 != 10)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBins(88): (#10) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xB)
          {
            v12 = 10;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bandsAgeBins_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBins(88): Cannot add 10 elements to context", v14);
          return v5;
        case 89:
          if (v9 != 10)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: intermediateBandsAgeBins(89): (#10) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xB)
          {
            v12 = 10;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "intermediateBandsAgeBins_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: intermediateBandsAgeBins(89): Cannot add 10 elements to context", v14);
          return v5;
        case 90:
          if (v9 != 160)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: qosPerCmdQ(90): (#160) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xA1)
          {
            v12 = 160;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "qosPerCmdQ_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: qosPerCmdQ(90): Cannot add 160 elements to context", v14);
          return v5;
        case 91:
          if (v9 != 10)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxQosPerCmdQ(91): (#10) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xB)
          {
            v12 = 10;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "maxQosPerCmdQ_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxQosPerCmdQ(91): Cannot add 10 elements to context", v14);
          return v5;
        case 92:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "shutdownDuringGC", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: shutdownDuringGC(92) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 93:
          if (v9 != 3)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBandsRefreshedForAgePerTier(93): (#3) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 34)
          {
            v12 = 3;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "numBandsRefreshedForAgePerTier_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBandsRefreshedForAgePerTier(93): Cannot add 3 elements to context", v14);
          return v5;
        case 94:
          if (v9 != 20)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrDeltaHot(94): (#20) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x15)
          {
            v12 = 20;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bdrDeltaHot_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrDeltaHot(94): Cannot add 20 elements to context", v14);
          return v5;
        case 95:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numRefreshOnClockLoss", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numRefreshOnClockLoss(95) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 96:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numRefreshOnErrNandRefreshRel", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshRel(96) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 97:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numBGRefreshMoves", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBGRefreshMoves(97) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 98:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numBGPaddingMoves", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBGPaddingMoves(98) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 99:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostWritesPhoto", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWritesPhoto(99) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 100:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "INDPooldFree", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: INDPooldFree(100) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 101:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "INDContigCount", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: INDContigCount(101) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 102:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "INDValidContigCount", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: INDValidContigCount(102) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 103:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "INDMinContigSize", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: INDMinContigSize(103) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 104:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "INDMaxContigSize", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: INDMaxContigSize(104) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 105:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "INDAveContigSize", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: INDAveContigSize(105) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 106:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "INDpoolSize", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: INDpoolSize(106) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 107:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "pushSyncWrites", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: pushSyncWrites(107) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 109:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cmd_rw_hysteresis_us", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cmd_rw_hysteresis_us(109) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 110:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "photoFlowMode", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: photoFlowMode(110) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 112:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numBandsPaddedForAge", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBandsPaddedForAge(112) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 113:
          if (v9 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsPerHostFlow(113): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bandsPerHostFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsPerHostFlow(113): Cannot add 4 elements to context", v14);
          return v5;
        case 114:
          if (v9 != 5)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsPerSpecialFlow(114): (#5) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 3)
          {
            v12 = 5;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bandsPerSpecialFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsPerSpecialFlow(114): Cannot add 5 elements to context", v14);
          return v5;
        case 115:
          if (v9 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: secsPerHostFlow(115): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "secsPerHostFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: secsPerHostFlow(115): Cannot add 4 elements to context", v14);
          return v5;
        case 116:
          if (v9 != 5)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: secsPerSpecialFlow(116): (#5) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 3)
          {
            v12 = 5;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "secsPerSpecialFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: secsPerSpecialFlow(116): Cannot add 5 elements to context", v14);
          return v5;
        case 118:
          if (v9 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: overWritesPerHostFlow(118): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "overWritesPerHostFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: overWritesPerHostFlow(118): Cannot add 4 elements to context", v14);
          return v5;
        case 119:
          if (v9 != 5)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: overWritesPerSpecialFlow(119): (#5) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 3)
          {
            v12 = 5;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "overWritesPerSpecialFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: overWritesPerSpecialFlow(119): Cannot add 5 elements to context", v14);
          return v5;
        case 120:
          if (v9 != 10)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: padSectorsPerFlow(120): (#10) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0xB)
          {
            v12 = 10;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "padSectorsPerFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: padSectorsPerFlow(120): Cannot add 10 elements to context", v14);
          return v5;
        case 121:
          if (v9 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: padSizes(121): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "padSizes_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: padSizes(121): Cannot add 4 elements to context", v14);
          return v5;
        case 122:
          if (v9 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: unmapsPerHostFlow(122): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "unmapsPerHostFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: unmapsPerHostFlow(122): Cannot add 4 elements to context", v14);
          return v5;
        case 123:
          if (v9 != 5)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: unmapsPerSpecialFlow(123): (#5) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 3)
          {
            v12 = 5;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "unmapsPerSpecialFlow_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: unmapsPerSpecialFlow(123): Cannot add 5 elements to context", v14);
          return v5;
        case 124:
          if (v9 != 2)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: coldestCycle(124): (#2) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 3)
          {
            v12 = 2;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "coldestCycle_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: coldestCycle(124): Cannot add 2 elements to context", v14);
          return v5;
        case 125:
          if (v9 != 2)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: hottestCycle(125): (#2) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 3)
          {
            v12 = 2;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "hottestCycle_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: hottestCycle(125): Cannot add 2 elements to context", v14);
          return v5;
        case 126:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcLonlyWrites", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcLonlyWrites(126) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 127:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcPLWrites", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcPLWrites(127) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 129:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "pagesPerVirtualBlockSlc", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: pagesPerVirtualBlockSlc(129) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 130:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bdrPadding", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrPadding(130) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 131:
          if (v9 != 8)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: errInjCounters(131): (#8) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 9)
          {
            v12 = 8;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "errInjCounters_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: errInjCounters(131): Cannot add 8 elements to context", v14);
          return v5;
        case 132:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulReconstructionInternal", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulReconstructionInternal(132) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 133:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulReconstructionHost", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulReconstructionHost(133) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 134:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReconstructionInternal", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReconstructionInternal(134) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 135:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReconstructionHost", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReconstructionHost(135) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 136:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidBandsPerHostFlow", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBandsPerHostFlow(136) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 137:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSecsPerHostFlow", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSecsPerHostFlow(137) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 138:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcFreeL", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcFreeL(138) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 139:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcDestinations", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcDestinations(139) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 140:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcFragments", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcFragments(140) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 141:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numMemChoke", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numMemChoke(141) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 142:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxMemChokeDuration", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxMemChokeDuration(142) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 143:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "memChokeDuration", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: memChokeDuration(143) cannot add 1 element to context");
          }

          goto LABEL_161;
        default:
          switch(v7)
          {
            case 144:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numMemExtreme", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numMemExtreme(144) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 145:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxMemExtremeDuration", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxMemExtremeDuration(145) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 146:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "memExtremeDuration", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: memExtremeDuration(146) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 147:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandGetsExtreme", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandGetsExtreme(147) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 148:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandGetsLow", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandGetsLow(148) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 149:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numHostChoke", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numHostChoke(149) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 152:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_ProgramError", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_ProgramError(152) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 153:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_ReadErrorOpenBand", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_ReadErrorOpenBand(153) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 154:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_FailedRebuildingParity", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_FailedRebuildingParity(154) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 155:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortPad_OpenRefreshBand", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortPad_OpenRefreshBand(155) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 156:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortPad_CloseBands", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortPad_CloseBands(156) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 157:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortPad_SetPhoto", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortPad_SetPhoto(157) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 158:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortPad_GcNoSource", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortPad_GcNoSource(158) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 159:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortPad_Format", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortPad_Format(159) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 160:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "nandDiscoveryDuration", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandDiscoveryDuration(160) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 161:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "coreCCEnableDuration", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: coreCCEnableDuration(161) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 163:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "coreOpenDuration", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: coreOpenDuration(163) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 164:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "coreWritableDuration", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: coreWritableDuration(164) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 165:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "coreClogLoadDuration", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: coreClogLoadDuration(165) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 167:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bulkPFail", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: bulkPFail(167) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 169:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bulkRFail", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: bulkRFail(169) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 172:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSmartErrors", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSmartErrors(172) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 182:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "internalUeccs", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: internalUeccs(182) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 183:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "e2eFail", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: e2eFail(183) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 184:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "TempSensorMax", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: TempSensorMax(184) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 185:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "TempSensorMin", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: TempSensorMin(185) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 186:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "powerUpFromDDR", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: powerUpFromDDR(186) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 187:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numMemLow", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numMemLow(187) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 188:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxMemLowDuration", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxMemLowDuration(188) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 189:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "memLowDuration", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: memLowDuration(189) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 190:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numFences", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numFences(190) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 191:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostPassiveIO", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostPassiveIO(191) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 192:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "odtsMax", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: odtsMax(192) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 193:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "defragMFromOrphans", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: defragMFromOrphans(193) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 194:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "defragMFromFragments", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: defragMFromFragments(194) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 195:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "defragMTime", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: defragMTime(195) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 196:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "defragMMaxTime", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: defragMMaxTime(196) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 197:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedLbaMismatch", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedLbaMismatch(197) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 198:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numSyscfgWrites", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numSyscfgWrites(198) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 199:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indmbUnitsXfer", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbUnitsXfer(199) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 200:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indmbUnitsCache", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbUnitsCache(200) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 201:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indmbUnitsInd", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbUnitsInd(201) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 202:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheFS_Mbytes", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFS_Mbytes(202) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 203:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheDS_Mbytes", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDS_Mbytes(203) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 204:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "powerOnSeconds", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: powerOnSeconds(204) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 205:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numUnknownTokenHostRead", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numUnknownTokenHostRead(205) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 206:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numUnmmapedTokenHostRead", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numUnmmapedTokenHostRead(206) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 207:
              if (v9 != 25)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerLevel(207): (#25) cfg elements != (%d) buffer elements", v9);
              }

              if (v7 >> 33 >= 0xD)
              {
                v12 = 25;
              }

              else
              {
                v12 = v9;
              }

              if (AddMultipleFieldsToGenericContext(a1, "numOfThrottlingEntriesPerLevel_", a2, 8u, v12))
              {
                goto LABEL_110;
              }

              SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerLevel(207): Cannot add 25 elements to context", v14);
              return v5;
            case 208:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheFS_MbytesMin", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFS_MbytesMin(208) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 209:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheFS_MbytesMax", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFS_MbytesMax(209) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 210:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "prepareForShutdownFailCounter", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: prepareForShutdownFailCounter(210) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 211:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "lpsrEntry", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: lpsrEntry(211) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 212:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "lpsrExit", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: lpsrExit(212) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 213:
              if (v9 != 8)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: crcInternalReadFail(213): (#8) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 9)
              {
                v12 = 8;
              }

              else
              {
                v12 = v9;
              }

              if (AddMultipleFieldsToGenericContext(a1, "crcInternalReadFail_", a2, 8u, v12))
              {
                goto LABEL_110;
              }

              SetAPIErrorMessage("ASPFTLParseBufferToCxt: crcInternalReadFail(213): Cannot add 8 elements to context", v14);
              return v5;
            case 214:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheFSEvictCnt", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSEvictCnt(214) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 215:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheFSEvictSize", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSEvictSize(215) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 216:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheFSWr", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSWr(216) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 217:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheDSWr", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDSWr(217) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 218:
              if (v9 != 10)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSEvictSizeLogDist(218): (#10) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 0xB)
              {
                v12 = 10;
              }

              else
              {
                v12 = v9;
              }

              if (AddMultipleFieldsToGenericContext(a1, "wcacheFSEvictSizeLogDist_", a2, 8u, v12))
              {
                goto LABEL_110;
              }

              SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSEvictSizeLogDist(218): Cannot add 10 elements to context", v14);
              return v5;
            case 219:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "prepareForShutdownTimeoutCounter", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: prepareForShutdownTimeoutCounter(219) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 220:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "prepareForShutdownCancelCounter", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: prepareForShutdownCancelCounter(220) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 221:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_openBandCount", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_openBandCount(221) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 222:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_openBandNops", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_openBandNops(222) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 223:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_closedBandEvictCount", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_closedBandEvictCount(223) cannot add 1 element to context");
              }

              goto LABEL_161;
            default:
              switch(v7)
              {
                case 224:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_closedBandEvictSectors", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_closedBandEvictSectors(224) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 225:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_closedBandFragmentCount", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_closedBandFragmentCount(225) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 226:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_closedBandFragmentSectors", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_closedBandFragmentSectors(226) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 227:
                  if (v9 != 10)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSOverWrLogSizeCnts(227): (#10) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0xB)
                  {
                    v12 = 10;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "wcacheFSOverWrLogSizeCnts_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSOverWrLogSizeCnts(227): Cannot add 10 elements to context", v14);
                  return v5;
                case 228:
                  if (v9 != 4)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSOverWrSizeByFlow(228): (#4) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 5)
                  {
                    v12 = 4;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "wcacheFSOverWrSizeByFlow_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSOverWrSizeByFlow(228): Cannot add 4 elements to context", v14);
                  return v5;
                case 229:
                  if (v9 != 2)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbXferCountTo(229): (#2) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 3)
                  {
                    v12 = 2;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "indmbXferCountTo_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbXferCountTo(229): Cannot add 2 elements to context", v14);
                  return v5;
                case 230:
                  if (v9 != 2)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbAccumulatedTimeBetweenXfers(230): (#2) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 3)
                  {
                    v12 = 2;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "indmbAccumulatedTimeBetweenXfers_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbAccumulatedTimeBetweenXfers(230): Cannot add 2 elements to context", v14);
                  return v5;
                case 231:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxGracefulBootTimeMs", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxGracefulBootTimeMs(231) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 232:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxUngracefulBootTimeMs", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxUngracefulBootTimeMs(232) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 233:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "averageGracefulBootTimeMs", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: averageGracefulBootTimeMs(233) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 234:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "averageUngracefulBootTimeMs", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: averageUngracefulBootTimeMs(234) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 235:
                  if (v9 != 8)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: gracefulBootTimeLogMs(235): (#8) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 9)
                  {
                    v12 = 8;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "gracefulBootTimeLogMs_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: gracefulBootTimeLogMs(235): Cannot add 8 elements to context", v14);
                  return v5;
                case 236:
                  if (v9 != 8)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: ungracefulBootTimeLogMs(236): (#8) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 9)
                  {
                    v12 = 8;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "ungracefulBootTimeLogMs_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: ungracefulBootTimeLogMs(236): Cannot add 8 elements to context", v14);
                  return v5;
                case 237:
                  if (v9 != 4)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: CalibrationCount(237): (#4) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 5)
                  {
                    v12 = 4;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "CalibrationCount_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: CalibrationCount(237): Cannot add 4 elements to context", v14);
                  return v5;
                case 238:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "CalibrationLastTmp", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: CalibrationLastTmp(238) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 239:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "CalibrationMaxTmp", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: CalibrationMaxTmp(239) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 240:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "CalibrationMinTmp", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: CalibrationMinTmp(240) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 241:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "ungracefulBootWorstIndicator", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: ungracefulBootWorstIndicator(241) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 242:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "metaMismatchReread", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: metaMismatchReread(242) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 243:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numS3SleepOps", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numS3SleepOps(243) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 244:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "odtsCurrent", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: odtsCurrent(244) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 245:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "prefetchReads", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: prefetchReads(245) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 246:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "prefetchHits", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: prefetchHits(246) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 247:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "prefetchWritesInvalidation", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: prefetchWritesInvalidation(247) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 248:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indmbUnitsTotal", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbUnitsTotal(248) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 249:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "selfThrottlingEngage", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: selfThrottlingEngage(249) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 250:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "selfThrottlingDisengage", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: selfThrottlingDisengage(250) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 252:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_WlpMode", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_WlpMode(252) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 253:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostWritesWlpMode", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWritesWlpMode(253) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 254:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numClogDoubleUnc", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numClogDoubleUnc(254) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 256:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortPad_WlpMode", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortPad_WlpMode(256) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 257:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bonfireIntermediateBandErases", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bonfireIntermediateBandErases(257) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 258:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bonfireUserBandErases", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bonfireUserBandErases(258) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 259:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bonfireIntermediateBandProgs", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bonfireIntermediateBandProgs(259) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 260:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bonfireUserBandProgs", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bonfireUserBandProgs(260) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 261:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bonfireIntermediatePageReads", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bonfireIntermediatePageReads(261) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 262:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bonfireUserPageReads", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bonfireUserPageReads(262) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 263:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "refreshUtil00", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: refreshUtil00(263) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 264:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "failToReadUtil00", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: failToReadUtil00(264) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 265:
                  if (v9 != 5)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: readCountHisto(265): (#5) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v7 >> 33 >= 3)
                  {
                    v12 = 5;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readCountHisto_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: readCountHisto(265): Cannot add 5 elements to context", v14);
                  return v5;
                case 266:
                  if (v9 != 16)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: readAmpHisto(266): (#16) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0x11)
                  {
                    v12 = 16;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readAmpHisto_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: readAmpHisto(266): Cannot add 16 elements to context", v14);
                  return v5;
                case 267:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "totalReadAmp", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: totalReadAmp(267) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 268:
                  if (v9 != 4)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: nvmeModeSelect(268): (#4) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 5)
                  {
                    v12 = 4;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nvmeModeSelect_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: nvmeModeSelect(268): Cannot add 4 elements to context", v14);
                  return v5;
                case 269:
                  if (v9 != 8)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockRefreshSuccess(269): (#8) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 9)
                  {
                    v12 = 8;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "numBootBlockRefreshSuccess_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockRefreshSuccess(269): Cannot add 8 elements to context", v14);
                  return v5;
                case 270:
                  if (v9 != 8)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockRefreshFail(270): (#8) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 9)
                  {
                    v12 = 8;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "numBootBlockRefreshFail_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockRefreshFail(270): Cannot add 8 elements to context", v14);
                  return v5;
                case 271:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numUnsupportedAsi", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numUnsupportedAsi(271) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 272:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "NumTerminatedProgramSegs", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: NumTerminatedProgramSegs(272) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 273:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indParityPagesDrops", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: indParityPagesDrops(273) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 274:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indFlowPrograms", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: indFlowPrograms(274) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 277:
                  if (v9 != 4)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: powerBudgetSelect(277): (#4) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 5)
                  {
                    v12 = 4;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "powerBudgetSelect_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: powerBudgetSelect(277): Cannot add 4 elements to context", v14);
                  return v5;
                case 279:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RxBurnNandWrites", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: RxBurnNandWrites(279) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 280:
                  if (v9 != 12)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: E2EDPErrorCounters(280): (#12) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0xD)
                  {
                    v12 = 12;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "E2EDPErrorCounters_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: E2EDPErrorCounters(280): Cannot add 12 elements to context", v14);
                  return v5;
                case 281:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheSectorsMax", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheSectorsMax(281) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 282:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheSectorsMin", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheSectorsMin(282) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 283:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheSectorsCur", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheSectorsCur(283) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 284:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheDS_SectorsMax", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDS_SectorsMax(284) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 285:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheDS_SectorsMin", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDS_SectorsMin(285) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 286:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheDS_SectorsCur", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDS_SectorsCur(286) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 287:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheFS_Reads", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFS_Reads(287) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 288:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheDS_Reads", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDS_Reads(288) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                case 289:
                  if (v9 != 32)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockReadFail(289): (#32) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0x21)
                  {
                    v12 = 32;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "mspBootBlockReadFail_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockReadFail(289): Cannot add 32 elements to context", v14);
                  return v5;
                case 290:
                  if (v9 != 32)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockProgFail(290): (#32) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0x21)
                  {
                    v12 = 32;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "mspBootBlockProgFail_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockProgFail(290): Cannot add 32 elements to context", v14);
                  return v5;
                case 291:
                  if (v9 != 32)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockEraseFail(291): (#32) cfg elements != (%d) buffer elements", v9);
                  }

                  if (v9 >= 0x21)
                  {
                    v12 = 32;
                  }

                  else
                  {
                    v12 = v9;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "mspBootBlockEraseFail_", a2, 8u, v12))
                  {
                    goto LABEL_110;
                  }

                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockEraseFail(291): Cannot add 32 elements to context", v14);
                  return v5;
                case 292:
                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandsRefreshedOnError", *a2) & 1) == 0)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsRefreshedOnError(292) cannot add 1 element to context");
                  }

                  goto LABEL_161;
                default:
                  switch(v7)
                  {
                    case 298:
                      if (v9 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostReads(298): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostReads_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostReads(298): Cannot add 2 elements to context", v14);
                      return v5;
                    case 299:
                      if (v9 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostReadXacts(299): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostReadXacts_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostReadXacts(299): Cannot add 2 elements to context", v14);
                      return v5;
                    case 300:
                      if (v9 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostWrites(300): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostWrites_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostWrites(300): Cannot add 2 elements to context", v14);
                      return v5;
                    case 301:
                      if (v9 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostWriteXacts(301): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostWriteXacts_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostWriteXacts(301): Cannot add 2 elements to context", v14);
                      return v5;
                    case 302:
                      if (v9 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostNumFlushes(302): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostNumFlushes_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostNumFlushes(302): Cannot add 2 elements to context", v14);
                      return v5;
                    case 303:
                      if (v9 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostNumFences(303): (#2) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 3)
                      {
                        v12 = 2;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostNumFences_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostNumFences(303): Cannot add 2 elements to context", v14);
                      return v5;
                    case 304:
                      if (v9 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: commitPadSectorsPerFlow(304): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "commitPadSectorsPerFlow_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: commitPadSectorsPerFlow(304): Cannot add 10 elements to context", v14);
                      return v5;
                    case 305:
                      if (v9 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDSOverWrLogSizeCnts(305): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "wcacheDSOverWrLogSizeCnts_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDSOverWrLogSizeCnts(305): Cannot add 10 elements to context", v14);
                      return v5;
                    case 306:
                      if (v9 != 4)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDSOverWrSizeByFlow(306): (#4) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 5)
                      {
                        v12 = 4;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "wcacheDSOverWrSizeByFlow_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDSOverWrSizeByFlow(306): Cannot add 4 elements to context", v14);
                      return v5;
                    case 307:
                      if (v9 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: CmdRaisePrioiryEvents(307): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "CmdRaisePrioiryEvents_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: CmdRaisePrioiryEvents(307): Cannot add 10 elements to context", v14);
                      return v5;
                    case 308:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "utilNumVerification", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: utilNumVerification(308) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 309:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "utilRefreshes", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: utilRefreshes(309) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 310:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "utilBDRErrors", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: utilBDRErrors(310) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 311:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indBandsPerFlow", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: indBandsPerFlow(311) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 312:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "secsPerIndFlow", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: secsPerIndFlow(312) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 313:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indDecodedECC", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: indDecodedECC(313) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 314:
                      if (v9 != 8)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockValidateSuccess(314): (#8) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 9)
                      {
                        v12 = 8;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "numBootBlockValidateSuccess_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockValidateSuccess(314): Cannot add 8 elements to context", v14);
                      return v5;
                    case 315:
                      if (v9 != 8)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockValidateFail(315): (#8) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 9)
                      {
                        v12 = 8;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "numBootBlockValidateFail_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockValidateFail(315): Cannot add 8 elements to context", v14);
                      return v5;
                    case 316:
                      if (v9 != 4)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogPagesFillingPercentage(316): (#4) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 5)
                      {
                        v12 = 4;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "clogPagesFillingPercentage_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogPagesFillingPercentage(316): Cannot add 4 elements to context", v14);
                      return v5;
                    case 317:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bdrCalTimeAccFactor", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrCalTimeAccFactor(317) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 318:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bootChainRdError", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bootChainRdError(318) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 319:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bootChainBlankError", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bootChainBlankError(319) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 320:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bootChainRefreshError", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bootChainRefreshError(320) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 321:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bootChainVersionError", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bootChainVersionError(321) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 322:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "mspBootBlockMismatch", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockMismatch(322) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 323:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "mspBootBlockMismatchErr", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockMismatchErr(323) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 324:
                      if (v9 != 5)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitflipAddr(324): (#5) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v7 >> 33 >= 3)
                      {
                        v12 = 5;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bitflipAddr_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitflipAddr(324): Cannot add 5 elements to context", v14);
                      return v5;
                    case 325:
                      if (v9 != 5)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitflipCount(325): (#5) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v7 >> 33 >= 3)
                      {
                        v12 = 5;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bitflipCount_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitflipCount(325): Cannot add 5 elements to context", v14);
                      return v5;
                    case 326:
                      if (v9 != 5)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitflipDupes(326): (#5) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v7 >> 33 >= 3)
                      {
                        v12 = 5;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bitflipDupes_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitflipDupes(326): Cannot add 5 elements to context", v14);
                      return v5;
                    case 327:
                      if (v9 != 30)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsMaxTempHisto(327): (#30) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x1F)
                      {
                        v12 = 30;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsMaxTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsMaxTempHisto(327): Cannot add 30 elements to context", v14);
                      return v5;
                    case 328:
                      if (v9 != 30)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsMinTempHisto(328): (#30) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x1F)
                      {
                        v12 = 30;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsMinTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsMinTempHisto(328): Cannot add 30 elements to context", v14);
                      return v5;
                    case 329:
                      if (v9 != 30)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsLifeTimeTempHisto(329): (#30) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x1F)
                      {
                        v12 = 30;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsLifeTimeTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsLifeTimeTempHisto(329): Cannot add 30 elements to context", v14);
                      return v5;
                    case 330:
                      if (v9 != 22)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsDeltaTempHisto(330): (#22) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x17)
                      {
                        v12 = 22;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsDeltaTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsDeltaTempHisto(330): Cannot add 22 elements to context", v14);
                      return v5;
                    case 331:
                      if (v9 != 45)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsCrossTempHisto(331): (#45) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v7 >> 33 >= 0x17)
                      {
                        v12 = 45;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsCrossTempHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsCrossTempHisto(331): Cannot add 45 elements to context", v14);
                      return v5;
                    case 332:
                      if (v9 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheWaitLogMs(332): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "wcacheWaitLogMs_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheWaitLogMs(332): Cannot add 10 elements to context", v14);
                      return v5;
                    case 333:
                      if (v9 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDS_segsSortedLogSize(333): (#10) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0xB)
                      {
                        v12 = 10;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "wcacheDS_segsSortedLogSize_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDS_segsSortedLogSize(333): Cannot add 10 elements to context", v14);
                      return v5;
                    case 334:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numFirmwareWrites", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numFirmwareWrites(334) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 335:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numBisWrites", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBisWrites(335) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 336:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numBootChainUpdates", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootChainUpdates(336) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 337:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cntCalTimeWentBackWard", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: cntCalTimeWentBackWard(337) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 338:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indBoRecoveries", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: indBoRecoveries(338) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 340:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numCrossTempUecc", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numCrossTempUecc(340) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 341:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "latencyMonitorError", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: latencyMonitorError(341) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 343:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "utilUeccReads", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: utilUeccReads(343) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 344:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numOfAvoidedGCDueToTemp", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfAvoidedGCDueToTemp(344) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 345:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "forceShutdowns", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: forceShutdowns(345) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 346:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcSlcDestinations", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcSlcDestinations(346) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 347:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indReplayExtUsed", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: indReplayExtUsed(347) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 348:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "defectsPerPackageOverflow", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: defectsPerPackageOverflow(348) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 349:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RxBurnIntBandsProgrammed", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: RxBurnIntBandsProgrammed(349) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 350:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RxBurnUsrBandsProgrammed", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: RxBurnUsrBandsProgrammed(350) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 351:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RxBurnIntNandWrites", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: RxBurnIntNandWrites(351) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 352:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RxBurnUsrNandWrites", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: RxBurnUsrNandWrites(352) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 353:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogLastStripeUeccs", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogLastStripeUeccs(353) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 354:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "GC_MidDestSrcSwitchSLC2TLC", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: GC_MidDestSrcSwitchSLC2TLC(354) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 355:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "GC_MidDestSrcSwitchTLC2SLC", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: GC_MidDestSrcSwitchTLC2SLC(355) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 356:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "nvme_stats_shutdown_count_host0_normal", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host0_normal(356) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 357:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "nvme_stats_shutdown_count_host1_normal", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host1_normal(357) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 358:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "nvme_stats_shutdown_count_host0_s2r", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host0_s2r(358) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 359:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "nvme_stats_shutdown_count_host1_s2r", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host1_s2r(359) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 360:
                      if (v9 != 16)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcPDusterIntrSrcValidityHisto(360): (#16) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x11)
                      {
                        v12 = 16;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "gcPDusterIntrSrcValidityHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcPDusterIntrSrcValidityHisto(360): Cannot add 16 elements to context", v14);
                      return v5;
                    case 361:
                      if (v9 != 16)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcPDusterUserSrcValidityHisto(361): (#16) cfg elements != (%d) buffer elements", v9);
                      }

                      if (v9 >= 0x11)
                      {
                        v12 = 16;
                      }

                      else
                      {
                        v12 = v9;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "gcPDusterUserSrcValidityHisto_", a2, 8u, v12))
                      {
                        goto LABEL_110;
                      }

                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcPDusterUserSrcValidityHisto(361): Cannot add 16 elements to context", v14);
                      return v5;
                    case 362:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReadParity", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReadParity(362) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    case 364:
                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "lhotNumSkipes", *a2) & 1) == 0)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: lhotNumSkipes(364) cannot add 1 element to context");
                      }

                      goto LABEL_161;
                    default:
                      switch(v7)
                      {
                        case 365:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "lhotNumIsHotCalls", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: lhotNumIsHotCalls(365) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 366:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "lhotFullLap", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: lhotFullLap(366) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 367:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "lhotSkipPrecent", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: lhotSkipPrecent(367) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 368:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eraseSuspendEvents", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: eraseSuspendEvents(368) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 369:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eraseSuspendedStatuses", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: eraseSuspendedStatuses(369) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 370:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eraseSuspendedBands", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: eraseSuspendedBands(370) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 371:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eraseSuspendSituationsBelowThreshold", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: eraseSuspendSituationsBelowThreshold(371) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 372:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eraseSuspendSituationsAboveThreshold", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: eraseSuspendSituationsAboveThreshold(372) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 373:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eraseSuspendReadChainsProcessed", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: eraseSuspendReadChainsProcessed(373) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 374:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bdrLastDoneHr", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrLastDoneHr(374) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 375:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bdrBackupThreshHrs", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrBackupThreshHrs(375) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 376:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogPortableProgBufs", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogPortableProgBufs(376) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 377:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogPortableDropBufs", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogPortableDropBufs(377) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 378:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogPortablePadSectors", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogPortablePadSectors(378) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 379:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numRetiredBlocks", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numRetiredBlocks(379) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 381:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numRefreshOnErrNandRefreshPerf", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshPerf(381) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 382:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructReads", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructReads(382) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 383:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcReadsNoBlog", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcReadsNoBlog(383) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 384:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_MPBXReadVerifyClosedBand", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_MPBXReadVerifyClosedBand(384) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 385:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "openBandReadFail", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: openBandReadFail(385) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 386:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_MPBXReadVerifyOpenBand", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_MPBXReadVerifyOpenBand(386) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 387:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_MBPXFailedRebuildingParity", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_MBPXFailedRebuildingParity(387) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 388:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulPMXReconstructionInternal", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulPMXReconstructionInternal(388) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 389:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulPMXReconstructionHost", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulPMXReconstructionHost(389) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 390:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedPMXReconstructionInternal", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedPMXReconstructionInternal(390) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 391:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedPMXReconstructionHost", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedPMXReconstructionHost(391) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 392:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulRMXReconstructionInternal", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulRMXReconstructionInternal(392) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 393:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulRMXReconstructionHost", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulRMXReconstructionHost(393) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 394:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedRMXReconstructionInternal", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedRMXReconstructionInternal(394) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 395:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedRMXReconstructionHost", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedRMXReconstructionHost(395) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 396:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReadParityInternal", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReadParityInternal(396) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 397:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReadQParityInternal", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReadQParityInternal(397) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 398:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReadQParity", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReadQParity(398) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 399:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReadQCopy", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReadQCopy(399) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 400:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReconstructionQParity", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReconstructionQParity(400) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 401:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "offlineBlocksCnt", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: offlineBlocksCnt(401) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 402:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bork0Revectors", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bork0Revectors(402) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 403:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReadBlog", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReadBlog(403) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 404:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numReliabilityRefreshes", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numReliabilityRefreshes(404) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 405:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReadQCopyInternal", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReadQCopyInternal(405) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 406:
                          if (v9 != 5)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructSuccessFlow(406): (#5) cfg elements != (%d) buffer elements", v9);
                          }

                          if (v7 >> 33 >= 3)
                          {
                            v12 = 5;
                          }

                          else
                          {
                            v12 = v9;
                          }

                          if (AddMultipleFieldsToGenericContext(a1, "raidReconstructSuccessFlow_", a2, 8u, v12))
                          {
                            goto LABEL_110;
                          }

                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructSuccessFlow(406): Cannot add 5 elements to context", v14);
                          return v5;
                        case 407:
                          if (v9 != 5)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailFlow(407): (#5) cfg elements != (%d) buffer elements", v9);
                          }

                          if (v7 >> 33 >= 3)
                          {
                            v12 = 5;
                          }

                          else
                          {
                            v12 = v9;
                          }

                          if (AddMultipleFieldsToGenericContext(a1, "raidReconstructFailFlow_", a2, 8u, v12))
                          {
                            goto LABEL_110;
                          }

                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailFlow(407): Cannot add 5 elements to context", v14);
                          return v5;
                        case 408:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailP", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailP(408) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 409:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailQ", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailQ(409) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 410:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailUECC", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailUECC(410) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 411:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailUnsupp", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailUnsupp(411) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 412:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidUECCOpenBand", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidUECCOpenBand(412) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 414:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "ueccReads", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: ueccReads(414) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 416:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulVerify", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulVerify(416) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 417:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedVerify", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedVerify(417) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 418:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numBandsVerified", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBandsVerified(418) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 419:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cache_heads", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cache_heads(419) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 420:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_RMXtoMPBX", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_RMXtoMPBX(420) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 421:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "s3eFwVer", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: s3eFwVer(421) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 422:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "readVerifyNative", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: readVerifyNative(422) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 423:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "reducedReadVerifyNative", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: reducedReadVerifyNative(423) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 424:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "readVerifySlc", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: readVerifySlc(424) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 425:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "reducedReadVerifySlc", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: reducedReadVerifySlc(425) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 426:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RxBurnEvictions", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: RxBurnEvictions(426) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 427:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "directToTLCBands", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: directToTLCBands(427) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 428:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "nandDesc", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandDesc(428) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 429:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "fwUpdatesPercentUsed", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: fwUpdatesPercentUsed(429) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 430:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slcPercentUsed", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcPercentUsed(430) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        case 431:
                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "percentUsed", *a2) & 1) == 0)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: percentUsed(431) cannot add 1 element to context");
                          }

                          goto LABEL_161;
                        default:
                          switch(v7)
                          {
                            case 432:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostAutoWrites", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostAutoWrites(432) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 433:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "hostAutoWriteXacts", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostAutoWriteXacts(433) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 434:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcDestDynamic", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcDestDynamic(434) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 435:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcDestStatic", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcDestStatic(435) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 436:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcDestWearlevel", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcDestWearlevel(436) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 437:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcDestParity", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcDestParity(437) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 438:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_Format", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_Format(438) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 440:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSLCPadding", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSLCPadding(440) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 441:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidGCBands", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidGCBands(441) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 442:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidGCSectors", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidGCSectors(442) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 443:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidGCPadding", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidGCPadding(443) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 444:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSLCBandsPerHostFlow", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSLCBandsPerHostFlow(444) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 445:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSLCSecsPerHostFlow", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSLCSecsPerHostFlow(445) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 446:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "rxBurnMinCycleRuns", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: rxBurnMinCycleRuns(446) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 447:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogNumFastCxt", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogNumFastCxt(447) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 448:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogNumRapidReboots", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogNumRapidReboots(448) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 449:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogFastCxtAbvThr", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogFastCxtAbvThr(449) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 450:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "rxBurnDiffModeRuns", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: rxBurnDiffModeRuns(450) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 452:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "indReadVerifyFail", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: indReadVerifyFail(452) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 453:
                              if (v9 != 25)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerReadLevel(453): (#25) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v7 >> 33 >= 0xD)
                              {
                                v12 = 25;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "numOfThrottlingEntriesPerReadLevel_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerReadLevel(453): Cannot add 25 elements to context", v14);
                              return v5;
                            case 454:
                              if (v9 != 25)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerWriteLevel(454): (#25) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v7 >> 33 >= 0xD)
                              {
                                v12 = 25;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "numOfThrottlingEntriesPerWriteLevel_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerWriteLevel(454): Cannot add 25 elements to context", v14);
                              return v5;
                            case 456:
                              if (v9 != 10)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcFifoDepth(456): (#10) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0xB)
                              {
                                v12 = 10;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "slcFifoDepth_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcFifoDepth(456): Cannot add 10 elements to context", v14);
                              return v5;
                            case 457:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheSectorsDirtyIdle", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheSectorsDirtyIdle(457) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 458:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheDS_SectorsDirtyIdle", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDS_SectorsDirtyIdle(458) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 459:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "wcacheFS_MbytesDirtyIdle", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFS_MbytesDirtyIdle(459) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 460:
                              if (v9 != 256)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: CacheDepthVsThroughput(460): (#256) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x101)
                              {
                                v12 = 256;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "CacheDepthVsThroughput_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: CacheDepthVsThroughput(460): Cannot add 256 elements to context", v14);
                              return v5;
                            case 461:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "directToTLCSectors", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: directToTLCSectors(461) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 462:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "fallbackToWaterfall", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: fallbackToWaterfall(462) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 463:
                              if (v9 != 11)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogram(463): (#11) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v7 >> 34 >= 3)
                              {
                                v12 = 11;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "balanceProportionBucketsHistogram_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogram(463): Cannot add 11 elements to context", v14);
                              return v5;
                            case 464:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "lockToTlc", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: lockToTlc(464) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 465:
                              if (v9 != 10)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: burstSizeHistogram(465): (#10) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0xB)
                              {
                                v12 = 10;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "burstSizeHistogram_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: burstSizeHistogram(465): Cannot add 10 elements to context", v14);
                              return v5;
                            case 466:
                              if (v9 != 64)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: qosDirectToTLC(466): (#64) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x41)
                              {
                                v12 = 64;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "qosDirectToTLC_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: qosDirectToTLC(466): Cannot add 64 elements to context", v14);
                              return v5;
                            case 467:
                              if (v9 != 4)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxQosDirectToTLC(467): (#4) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 5)
                              {
                                v12 = 4;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "maxQosDirectToTLC_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxQosDirectToTLC(467): Cannot add 4 elements to context", v14);
                              return v5;
                            case 468:
                              if (v9 != 16)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDirtyAtFlush(468): (#16) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x11)
                              {
                                v12 = 16;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "wcacheDirtyAtFlush_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDirtyAtFlush(468): Cannot add 16 elements to context", v14);
                              return v5;
                            case 469:
                              if (v9 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructSuccessPartition(469): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "raidReconstructSuccessPartition_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructSuccessPartition(469): Cannot add 2 elements to context", v14);
                              return v5;
                            case 470:
                              if (v9 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailPartition(470): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "raidReconstructFailPartition_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailPartition(470): Cannot add 2 elements to context", v14);
                              return v5;
                            case 471:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidUncleanBootBandFail", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidUncleanBootBandFail(471) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 472:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBandFlowHost", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBandFlowHost(472) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 473:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBandFlowGC", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBandFlowGC(473) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 476:
                              if (v9 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulRecoLbaRange(476): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "raidSuccessfulRecoLbaRange_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulRecoLbaRange(476): Cannot add 2 elements to context", v14);
                              return v5;
                            case 477:
                              if (v9 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedRecoLbaRange(477): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "raidFailedRecoLbaRange_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedRecoLbaRange(477): Cannot add 2 elements to context", v14);
                              return v5;
                            case 481:
                              if (v9 != 32)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyBandErases_481(481): (#32) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x21)
                              {
                                v12 = 32;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "skinnyBandErases_481_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyBandErases_481(481): Cannot add 32 elements to context", v14);
                              return v5;
                            case 483:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "tlcOverHeatWaterfall", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcOverHeatWaterfall(483) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 484:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "skinnyCyclesConvert", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyCyclesConvert(484) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 485:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "non_proportional_directToTLCSectors", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: non_proportional_directToTLCSectors(485) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 486:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxFailedFastCxtSync", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxFailedFastCxtSync(486) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 487:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numFormatUserArea", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numFormatUserArea(487) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 488:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogFastCxtSyncAborted", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogFastCxtSyncAborted(488) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 489:
                              if (v9 != 5)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogOccupationSectors(489): (#5) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v7 >> 33 >= 3)
                              {
                                v12 = 5;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "clogOccupationSectors_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogOccupationSectors(489): Cannot add 5 elements to context", v14);
                              return v5;
                            case 490:
                              if (v9 != 64)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrTmpHist(490): (#64) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 0x41)
                              {
                                v12 = 64;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "bdrTmpHist_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrTmpHist(490): Cannot add 64 elements to context", v14);
                              return v5;
                            case 491:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numFWUpdates", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numFWUpdates(491) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 492:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numClogLoadFails", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numClogLoadFails(492) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 493:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "rxBurnNumForcedDiffMode", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: rxBurnNumForcedDiffMode(493) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 494:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_numSaves", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_numSaves(494) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 495:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanCompressWrites", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanCompressWrites(495) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 496:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanHostWrites", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanHostWrites(496) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 497:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandPreErases", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandPreErases(497) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 498:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanHostUnmaps", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanHostUnmaps(498) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 499:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanHostFlushes", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanHostFlushes(499) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 500:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanFastWrites", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanFastWrites(500) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 501:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "autowriteDS2FSCollisions", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: autowriteDS2FSCollisions(501) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 502:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "autowriteWaitTransferTaskBlocks", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: autowriteWaitTransferTaskBlocks(502) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            case 503:
                              if (v9 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: avgCycle(503): (#2) cfg elements != (%d) buffer elements", v9);
                              }

                              if (v9 >= 3)
                              {
                                v12 = 2;
                              }

                              else
                              {
                                v12 = v9;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "avgCycle_", a2, 8u, v12))
                              {
                                goto LABEL_110;
                              }

                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: avgCycle(503): Cannot add 2 elements to context", v14);
                              return v5;
                            case 504:
                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_DeferredClearsOverflowCnt", *a2) & 1) == 0)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_DeferredClearsOverflowCnt(504) cannot add 1 element to context");
                              }

                              goto LABEL_161;
                            default:
                              switch(v7)
                              {
                                case 505:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxVerticsInBand", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxVerticsInBand(505) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 506:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numVertics", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numVertics(506) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 507:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "exceededCVertics", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: exceededCVertics(507) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 510:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailMismatch", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailMismatch(510) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 511:
                                  if (v9 != 32)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspbootBlockRefreshCnt(511): (#32) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0x21)
                                  {
                                    v12 = 32;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "mspbootBlockRefreshCnt_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspbootBlockRefreshCnt(511): Cannot add 32 elements to context", v14);
                                  return v5;
                                case 516:
                                  if (v9 != 32)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockRefreshTime(516): (#32) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0x21)
                                  {
                                    v12 = 32;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "mspBootBlockRefreshTime_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockRefreshTime(516): Cannot add 32 elements to context", v14);
                                  return v5;
                                case 517:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "mspBootBlockCountPerMsp", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockCountPerMsp(517) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 518:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "skinnyRevectorSLC", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyRevectorSLC(518) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 519:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "skinnyRevectorTLC", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyRevectorTLC(519) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 520:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfSetupAttempts", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfSetupAttempts(520) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 521:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfSetupSuccesses", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfSetupSuccesses(521) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 522:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfWriteAttempts", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfWriteAttempts(522) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 523:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfWriteSuccesses", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfWriteSuccesses(523) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 524:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfReadAttempts", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfReadAttempts(524) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 525:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfReadSuccesses", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfReadSuccesses(525) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 526:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfCleanupAttempts", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfCleanupAttempts(526) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 527:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfCleanupSuccesses", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfCleanupSuccesses(527) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 530:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "firstFailedDieId", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: firstFailedDieId(530) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 531:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numDieFailures", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numDieFailures(531) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 532:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "spareAvailablePercent", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: spareAvailablePercent(532) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 533:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "dataFabricErr", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: dataFabricErr(533) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 534:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "downlinkFabricErr", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: downlinkFabricErr(534) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 535:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "prpAccTimeoutErr", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: prpAccTimeoutErr(535) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 537:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "uplinkFabricErr", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: uplinkFabricErr(537) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 538:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "skinnyBandsGBB", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyBandsGBB(538) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 539:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortPad_GcMustPadBand", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortPad_GcMustPadBand(539) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 540:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortPad_GcMustPadSkinny", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortPad_GcMustPadSkinny(540) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 541:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bdrHostPingInitial", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrHostPingInitial(541) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 542:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bdrHostPingMoreNeeded", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrHostPingMoreNeeded(542) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 543:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandParityAllocationFailed", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandParityAllocationFailed(543) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 544:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "fastHwBurstToSlc", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: fastHwBurstToSlc(544) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 545:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slowHwToTlc", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slowHwToTlc(545) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 546:
                                  if (v9 != 10)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstSizeDetected(546): (#10) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0xB)
                                  {
                                    v12 = 10;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "slcDemandBurstSizeDetected_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstSizeDetected(546): Cannot add 10 elements to context", v14);
                                  return v5;
                                case 547:
                                  if (v9 != 10)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstDur(547): (#10) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0xB)
                                  {
                                    v12 = 10;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "slcDemandBurstDur_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstDur(547): Cannot add 10 elements to context", v14);
                                  return v5;
                                case 548:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "fastHwToTlcBurst", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: fastHwToTlcBurst(548) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 549:
                                  if (v9 != 10)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstSizeSlc(549): (#10) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v9 >= 0xB)
                                  {
                                    v12 = 10;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "slcDemandBurstSizeSlc_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstSizeSlc(549): Cannot add 10 elements to context", v14);
                                  return v5;
                                case 551:
                                  if (v9 != 11)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogramTlc(551): (#11) cfg elements != (%d) buffer elements", v9);
                                  }

                                  if (v7 >> 34 >= 3)
                                  {
                                    v12 = 11;
                                  }

                                  else
                                  {
                                    v12 = v9;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "balanceProportionBucketsHistogramTlc_", a2, 8u, v12))
                                  {
                                    goto LABEL_110;
                                  }

                                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogramTlc(551): Cannot add 11 elements to context", v14);
                                  return v5;
                                case 553:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slowHwFlushToSlc", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slowHwFlushToSlc(553) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 557:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slowHwToSlc", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slowHwToSlc(557) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 558:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "flushNwToSlc", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: flushNwToSlc(558) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 559:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "flushNwToTlc", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: flushNwToTlc(559) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 560:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcHw", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcHw(560) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 561:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcTransitions", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcTransitions(561) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 563:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slcDemandFlushCount", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandFlushCount(563) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 564:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slcDemandBurstCount", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstCount(564) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 565:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcBaseAvgPE", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcBaseAvgPE(565) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 566:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailNoSPBX", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailNoSPBX(566) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 567:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailDouble", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailDouble(567) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 568:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcFastWAmpUOnOff", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcFastWAmpUOnOff(568) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 569:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcSlowWAmpUOnOff", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcSlowWAmpUOnOff(569) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 570:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailInvalid", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailInvalid(570) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 572:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcLastWAmpUx10", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcLastWAmpUx10(572) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 573:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedReadNoBlog", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedReadNoBlog(573) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 574:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBlank", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBlank(574) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 575:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcHotTLCOnOff", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcHotTLCOnOff(575) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 576:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcVPackDestinations", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcVPackDestinations(576) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 581:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "averageTLCPECycles", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: averageTLCPECycles(581) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 582:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "averageSLCPECycles", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: averageSLCPECycles(582) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 583:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numAtomicBoots", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numAtomicBoots(583) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 584:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogMinorMismatch", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogMinorMismatch(584) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 586:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidExpectedFailRMXReconstructionInternal", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidExpectedFailRMXReconstructionInternal(586) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 587:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidExpectedFailRMXReconstructionHost", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidExpectedFailRMXReconstructionHost(587) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 588:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcGCinvalidations", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcGCinvalidations(588) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                case 589:
                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcGCActivateReason", *a2) & 1) == 0)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcGCActivateReason(589) cannot add 1 element to context");
                                  }

                                  goto LABEL_161;
                                default:
                                  switch(v7)
                                  {
                                    case 590:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcLowCleanBandsUOnOff", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcLowCleanBandsUOnOff(590) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 591:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcTooManyGCMustOnOff", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcTooManyGCMustOnOff(591) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 592:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcBaseHostWrites", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcBaseHostWrites(592) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 593:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcBaseBandErases", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcBaseBandErases(593) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 594:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcBdrBands", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcBdrBands(594) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 595:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcBdrValid", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcBdrValid(595) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 596:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "unexpectedBlanksInternal", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: unexpectedBlanksInternal(596) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 597:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "unexpectedBlanksOnRV", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: unexpectedBlanksOnRV(597) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 601:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "waterfallLockSectors", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: waterfallLockSectors(601) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 602:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcGCActiveWrites", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcGCActiveWrites(602) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 603:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "chipIdTemperatureSample", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: chipIdTemperatureSample(603) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 604:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcVPackWrites", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcVPackWrites(604) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 605:
                                      if (v9 != 10)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcActiveReasons(605): (#10) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0xB)
                                      {
                                        v12 = 10;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "gcActiveReasons_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcActiveReasons(605): Cannot add 10 elements to context", v14);
                                      return v5;
                                    case 606:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanMaxInitTimeMs", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanMaxInitTimeMs(606) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 607:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanMinToFirstReadTimeMs", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanMinToFirstReadTimeMs(607) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 608:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "skinnyAPGMRetire", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyAPGMRetire(608) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 609:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "unexpectedBlanksHost", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: unexpectedBlanksHost(609) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 610:
                                      if (v9 != 64)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: pcieAerCounters(610): (#64) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0x41)
                                      {
                                        v12 = 64;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "pcieAerCounters_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: pcieAerCounters(610): Cannot add 64 elements to context", v14);
                                      return v5;
                                    case 611:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "fastHwToTlcBalance", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: fastHwToTlcBalance(611) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 612:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfOSLCRuns", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfOSLCRuns(612) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 613:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slcDemandBurstWritesInGC", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstWritesInGC(613) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 614:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slcDemandBurstWritesInTT", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstWritesInTT(614) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 615:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "slcDemandBurstWritesInNRP", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstWritesInNRP(615) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 616:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "perfTotalDmaMb", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perfTotalDmaMb(616) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 617:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanAvgInitTimeMs", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanAvgInitTimeMs(617) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 618:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanAvgToFirstReadTimeMs", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanAvgToFirstReadTimeMs(618) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 619:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanMaxBootReadTimeMs", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanMaxBootReadTimeMs(619) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 620:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanAvgBootReadTimeMs", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanAvgBootReadTimeMs(620) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 621:
                                      if (v9 != 10)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanBootReadsHist(621): (#10) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0xB)
                                      {
                                        v12 = 10;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "eanBootReadsHist_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanBootReadsHist(621): Cannot add 10 elements to context", v14);
                                      return v5;
                                    case 622:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxBgInitTimeMs", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxBgInitTimeMs(622) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 623:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "avgBgInitTimeMs", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: avgBgInitTimeMs(623) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 624:
                                      if (v9 != 16)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogFailReason(624): (#16) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0x11)
                                      {
                                        v12 = 16;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "clogFailReason_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogFailReason(624): Cannot add 16 elements to context", v14);
                                      return v5;
                                    case 625:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanMinBootReadMBPerSec", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanMinBootReadMBPerSec(625) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 626:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanAvgBootReadMBPerSec", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanAvgBootReadMBPerSec(626) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 627:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "minSkinnyPECycles", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: minSkinnyPECycles(627) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 628:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxSkinnyPECycles", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxSkinnyPECycles(628) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 629:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "averageSkinnyPECycles", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: averageSkinnyPECycles(629) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 630:
                                      if (v9 != 6)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulRecoEAN(630): (#6) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 7)
                                      {
                                        v12 = 6;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "raidSuccessfulRecoEAN_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulRecoEAN(630): Cannot add 6 elements to context", v14);
                                      return v5;
                                    case 631:
                                      if (v9 != 6)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedRecoEAN(631): (#6) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 7)
                                      {
                                        v12 = 6;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "raidFailedRecoEAN_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedRecoEAN(631): Cannot add 6 elements to context", v14);
                                      return v5;
                                    case 632:
                                      if (v9 != 6)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanFirstReadMode(632): (#6) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 7)
                                      {
                                        v12 = 6;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "eanFirstReadMode_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanFirstReadMode(632): Cannot add 6 elements to context", v14);
                                      return v5;
                                    case 635:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcHwGC", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcHwGC(635) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 636:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcHwTT", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcHwTT(636) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 637:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcHwNRP", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcHwNRP(637) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 638:
                                      if (v9 != 10)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcDemandBurstSize(638): (#10) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 0xB)
                                      {
                                        v12 = 10;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "oslcDemandBurstSize_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcDemandBurstSize(638): Cannot add 10 elements to context", v14);
                                      return v5;
                                    case 639:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructSuccessBandFlowOslc", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructSuccessBandFlowOslc(639) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 640:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBandFlowOslc", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBandFlowOslc(640) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 641:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailSectors", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailSectors(641) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 642:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanFailSectors", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanFailSectors(642) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 643:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bdrTimeMode", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrTimeMode(643) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 644:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidParityNotSavedP", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidParityNotSavedP(644) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 645:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidParityNotSavedQ", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidParityNotSavedQ(645) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 646:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidParityInvalid", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidParityInvalid(646) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 647:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidParityUnknown", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidParityUnknown(647) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 648:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidParityUnmapped", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidParityUnmapped(648) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 649:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidParityGCUnc", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidParityGCUnc(649) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 657:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "AbortSkip_MPBXProbational", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: AbortSkip_MPBXProbational(657) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 659:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidVerificationReads", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidVerificationReads(659) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 666:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "nofDies", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: nofDies(666) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 671:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "skinnyBandsNum", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyBandsNum(671) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 672:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "skinnyBandsNumDips", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyBandsNumDips(672) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 674:
                                      if (v9 != 8)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcNoVotesHw(674): (#8) cfg elements != (%d) buffer elements", v9);
                                      }

                                      if (v9 >= 9)
                                      {
                                        v12 = 8;
                                      }

                                      else
                                      {
                                        v12 = v9;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "oslcNoVotesHw_", a2, 8u, v12))
                                      {
                                        goto LABEL_110;
                                      }

                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcNoVotesHw(674): Cannot add 8 elements to context", v14);
                                      return v5;
                                    case 675:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "totalLbas", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: totalLbas(675) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 676:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bdrHostPingExtra", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrHostPingExtra(676) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    case 677:
                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "magazineInstanceMeta", *a2) & 1) == 0)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: magazineInstanceMeta(677) cannot add 1 element to context");
                                      }

                                      goto LABEL_161;
                                    default:
                                      switch(v7)
                                      {
                                        case 680:
                                          if (v9 != 3)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: magazineFWVersion(680): (#3) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 34)
                                          {
                                            v12 = 3;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "magazineFWVersion_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: magazineFWVersion(680): Cannot add 3 elements to context", v14);
                                          return v5;
                                        case 681:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailPMXUnsup", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailPMXUnsup(681) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 682:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBMXUnsup", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBMXUnsup(682) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 683:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "iBootNANDResets", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: iBootNANDResets(683) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 684:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "pcieClkreqHighTimeout", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: pcieClkreqHighTimeout(684) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 687:
                                          if (v9 != 3)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrInitSent(687): (#3) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 34)
                                          {
                                            v12 = 3;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrInitSent_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrInitSent(687): Cannot add 3 elements to context", v14);
                                          return v5;
                                        case 688:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrPauseSent", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrPauseSent(688) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 689:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrResumeSent", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrResumeSent(689) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 690:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrGetResultSent", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrGetResultSent(690) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 691:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrEarlyExits", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrEarlyExits(691) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 694:
                                          if (v9 != 10)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshGrades(694): (#10) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0xB)
                                          {
                                            v12 = 10;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrRefreshGrades_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshGrades(694): Cannot add 10 elements to context", v14);
                                          return v5;
                                        case 695:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrNotEnoughReads", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrNotEnoughReads(695) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 696:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrAborts", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrAborts(696) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 697:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "TurboRaidHostClassifications", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: TurboRaidHostClassifications(697) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 698:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "TurboRaidInternalClassifications", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: TurboRaidInternalClassifications(698) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 699:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrFullyDone", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrFullyDone(699) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 702:
                                          if (v9 != 32)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: vcurve(702): (#32) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0x21)
                                          {
                                            v12 = 32;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "vcurve_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: vcurve(702): Cannot add 32 elements to context", v14);
                                          return v5;
                                        case 703:
                                          if (v9 != 12)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: injDepth(703): (#12) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0xD)
                                          {
                                            v12 = 12;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "injDepth_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: injDepth(703): Cannot add 12 elements to context", v14);
                                          return v5;
                                        case 704:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "logical_disk_occupied_promiles", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: logical_disk_occupied_promiles(704) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 711:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidPrevFailedReconstructSkip", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidPrevFailedReconstructSkip(711) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 712:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "TurboRaidSuccessfulHostAuxReads", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: TurboRaidSuccessfulHostAuxReads(712) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 713:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "TurboRaidSuccessfulInternalAuxReads", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: TurboRaidSuccessfulInternalAuxReads(713) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 714:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidClassificationReliabilityHost", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassificationReliabilityHost(714) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 715:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidClassificationReliabilityInternal", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassificationReliabilityInternal(715) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 716:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidClassificationQualityHost", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassificationQualityHost(716) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 717:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidClassificationQualityInternal", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassificationQualityInternal(717) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 719:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "skinnyBandErases", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyBandErases(719) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 721:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcPDusterDestinations", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcPDusterDestinations(721) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 722:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcPDusterWrites", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcPDusterWrites(722) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 730:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "rvFails", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: rvFails(730) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 737:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "TurboRaidFailedHostAuxReads", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: TurboRaidFailedHostAuxReads(737) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 738:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "TurboRaidFailedInternalAuxReads", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: TurboRaidFailedInternalAuxReads(738) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 741:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "autoSkipTriggers", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: autoSkipTriggers(741) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 742:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "autoSkipPlanes", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: autoSkipPlanes(742) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 744:
                                          if (v9 != 8)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructDurationHisto(744): (#8) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 9)
                                          {
                                            v12 = 8;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "raidReconstructDurationHisto_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructDurationHisto(744): Cannot add 8 elements to context", v14);
                                          return v5;
                                        case 745:
                                          if (v9 != 8)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: failsOnReconstructHisto(745): (#8) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 9)
                                          {
                                            v12 = 8;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "failsOnReconstructHisto_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: failsOnReconstructHisto(745): Cannot add 8 elements to context", v14);
                                          return v5;
                                        case 746:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandKill_userFlattenExcessive", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandKill_userFlattenExcessive(746) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 747:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandKill_IntFlattenExcessive", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandKill_IntFlattenExcessive(747) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 748:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandKill_userFlattenBalance", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandKill_userFlattenBalance(748) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 749:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandKill_intFlattenBalance", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandKill_intFlattenBalance(749) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 750:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandKill_formatVertExcessive", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandKill_formatVertExcessive(750) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 751:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandKill_formatVertBalance", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandKill_formatVertBalance(751) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 753:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrNumSlowRefreshes", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrNumSlowRefreshes(753) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 754:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrNumFastRefreshes", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrNumFastRefreshes(754) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 755:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrTotalRefreshValidity", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrTotalRefreshValidity(755) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 756:
                                          if (v9 != 9)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshedAges(756): (#9) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 33 >= 5)
                                          {
                                            v12 = 9;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrRefreshedAges_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshedAges(756): Cannot add 9 elements to context", v14);
                                          return v5;
                                        case 758:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrSkippedBlocks", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrSkippedBlocks(758) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 759:
                                          if (v9 != 5)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrScanPct(759): (#5) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 33 >= 3)
                                          {
                                            v12 = 5;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrScanPct_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrScanPct(759): Cannot add 5 elements to context", v14);
                                          return v5;
                                        case 760:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulBMXReconstructionInternal", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulBMXReconstructionInternal(760) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 761:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulBMXReconstructionHost", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulBMXReconstructionHost(761) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 762:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedBMXReconstructionInternal", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedBMXReconstructionInternal(762) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 763:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedBMXReconstructionHost", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedBMXReconstructionHost(763) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 764:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "ricSPRVFail", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: ricSPRVFail(764) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 765:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "ricMPRVFail", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: ricMPRVFail(765) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 767:
                                          if (v9 != 10)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshGradesSLC(767): (#10) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0xB)
                                          {
                                            v12 = 10;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrRefreshGradesSLC_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshGradesSLC(767): Cannot add 10 elements to context", v14);
                                          return v5;
                                        case 768:
                                          if (v9 != 9)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshedAgesSLC(768): (#9) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 33 >= 5)
                                          {
                                            v12 = 9;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrRefreshedAgesSLC_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshedAgesSLC(768): Cannot add 9 elements to context", v14);
                                          return v5;
                                        case 769:
                                          if (v9 != 5)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrScanPctSLC(769): (#5) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v7 >> 33 >= 3)
                                          {
                                            v12 = 5;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrScanPctSLC_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrScanPctSLC(769): Cannot add 5 elements to context", v14);
                                          return v5;
                                        case 770:
                                          if (v9 != 8)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cpuBurstLength(770): (#8) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 9)
                                          {
                                            v12 = 8;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cpuBurstLength_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: cpuBurstLength(770): Cannot add 8 elements to context", v14);
                                          return v5;
                                        case 771:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "autoSkipRaidRecoFail", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: autoSkipRaidRecoFail(771) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 772:
                                          if (v9 != 32)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc(772): (#32) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0x21)
                                          {
                                            v12 = 32;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "dmReasonsSlc_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc(772): Cannot add 32 elements to context", v14);
                                          return v5;
                                        case 773:
                                          if (v9 != 32)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc(773): (#32) cfg elements != (%d) buffer elements", v9);
                                          }

                                          if (v9 >= 0x21)
                                          {
                                            v12 = 32;
                                          }

                                          else
                                          {
                                            v12 = v9;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "dmReasonsTlc_", a2, 8u, v12))
                                          {
                                            goto LABEL_110;
                                          }

                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc(773): Cannot add 32 elements to context", v14);
                                          return v5;
                                        case 774:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBMXAbort", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBMXAbort(774) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 775:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandKill_fatBindingNoBlocks", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandKill_fatBindingNoBlocks(775) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        case 776:
                                          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bandKill_fatBindingFewBlocks", *a2) & 1) == 0)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandKill_fatBindingFewBlocks(776) cannot add 1 element to context");
                                          }

                                          goto LABEL_161;
                                        default:
                                          switch(v7)
                                          {
                                            case 777:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numBadBootBlocks", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBadBootBlocks(777) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 778:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "snapshotCPUHigh", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: snapshotCPUHigh(778) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 779:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "snapshotCPULow", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: snapshotCPULow(779) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 780:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcWithoutBMs", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcWithoutBMs(780) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 781:
                                              if (v9 != 10)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcSearchTimeHistory(781): (#10) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0xB)
                                              {
                                                v12 = 10;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "gcSearchTimeHistory_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcSearchTimeHistory(781): Cannot add 10 elements to context", v14);
                                              return v5;
                                            case 785:
                                              if (v9 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcSearchPortion(785): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "gcSearchPortion_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcSearchPortion(785): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 786:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBmxMp", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBmxMp(786) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 787:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBmx", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBmx(787) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 788:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBMXUECC", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBMXUECC(788) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 789:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidReconstructFailBMXBlank", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailBMXBlank(789) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 790:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidPrevFailedReconstructBmxMpSkip", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidPrevFailedReconstructBmxMpSkip(790) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 792:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numTLCFatBands", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numTLCFatBands(792) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 793:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "fatValidity", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: fatValidity(793) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 794:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "fatTotal", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: fatTotal(794) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 798:
                                              if (v9 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailP(798): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailP_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailP(798): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 799:
                                              if (v9 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailUECC(799): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailUECC_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailUECC(799): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 804:
                                              if (v9 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailNoSPBX(804): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailNoSPBX_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailNoSPBX(804): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 806:
                                              if (v9 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailBlank(806): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailBlank_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailBlank(806): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 809:
                                              if (v9 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailUnsup(809): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailUnsup_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailUnsup(809): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 811:
                                              if (v9 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailMpSkip(811): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailMpSkip_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailMpSkip(811): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 812:
                                              if (v9 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailAbort(812): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailAbort_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailAbort(812): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 813:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "TurboRaidIsEnabled", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: TurboRaidIsEnabled(813) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 814:
                                              if (v9 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailOther(814): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailOther_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailOther(814): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 815:
                                              if (v9 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXSuccess(815): (#4) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 5)
                                              {
                                                v12 = 4;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXSuccess_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXSuccess(815): Cannot add 4 elements to context", v14);
                                              return v5;
                                            case 816:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "skinnyBandsExtraDip", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyBandsExtraDip(816) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 821:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "writeAmp", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: writeAmp(821) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 822:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "ricMaxClogOnlyPages", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: ricMaxClogOnlyPages(822) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 823:
                                              if (v9 != 3)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: readClassifyStatusesHisto(823): (#3) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v7 >> 34)
                                              {
                                                v12 = 3;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "readClassifyStatusesHisto_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: readClassifyStatusesHisto(823): Cannot add 3 elements to context", v14);
                                              return v5;
                                            case 824:
                                              if (v9 != 10)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: readWithAuxStatusesHisto(824): (#10) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0xB)
                                              {
                                                v12 = 10;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "readWithAuxStatusesHisto_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: readWithAuxStatusesHisto(824): Cannot add 10 elements to context", v14);
                                              return v5;
                                            case 825:
                                              if (v9 != 10)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: readReconstructStatusesHisto(825): (#10) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0xB)
                                              {
                                                v12 = 10;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "readReconstructStatusesHisto_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: readReconstructStatusesHisto(825): Cannot add 10 elements to context", v14);
                                              return v5;
                                            case 826:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bdrBackupChecks", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrBackupChecks(826) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 827:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "ricExceedClogOnlyPagesTH", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: ricExceedClogOnlyPagesTH(827) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 828:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numDipFailures", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numDipFailures(828) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 831:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "prefetchNextRange", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: prefetchNextRange(831) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 862:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSuccessfulSkip", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulSkip(862) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 863:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidFailedSkip", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedSkip(863) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 864:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidSkipAttempts", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSkipAttempts(864) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 865:
                                              if (v9 != 25)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: timeOfThrottlingPerLevel(865): (#25) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v7 >> 33 >= 0xD)
                                              {
                                                v12 = 25;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "timeOfThrottlingPerLevel_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: timeOfThrottlingPerLevel(865): Cannot add 25 elements to context", v14);
                                              return v5;
                                            case 866:
                                              if (v9 != 25)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: timeOfThrottlingPerReadLevel(866): (#25) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v7 >> 33 >= 0xD)
                                              {
                                                v12 = 25;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "timeOfThrottlingPerReadLevel_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: timeOfThrottlingPerReadLevel(866): Cannot add 25 elements to context", v14);
                                              return v5;
                                            case 867:
                                              if (v9 != 25)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: timeOfThrottlingPerWriteLevel(867): (#25) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v7 >> 33 >= 0xD)
                                              {
                                                v12 = 25;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "timeOfThrottlingPerWriteLevel_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: timeOfThrottlingPerWriteLevel(867): Cannot add 25 elements to context", v14);
                                              return v5;
                                            case 868:
                                              if (v9 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc(868): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsSlc_1bc_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc(868): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 869:
                                              if (v9 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc(869): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsTlc_1bc_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc(869): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 870:
                                              if (v9 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc_he(870): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsSlc_1bc_he_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc_he(870): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 871:
                                              if (v9 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc_he(871): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsTlc_1bc_he_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc_he(871): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 876:
                                              if (v9 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc_mbc(876): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsSlc_mbc_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc_mbc(876): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 877:
                                              if (v9 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc_mbc(877): (#32) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x21)
                                              {
                                                v12 = 32;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsTlc_mbc_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc_mbc(877): Cannot add 32 elements to context", v14);
                                              return v5;
                                            case 883:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogEmptyProgramms", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogEmptyProgramms(883) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 884:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "oslcHwCloseBand", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcHwCloseBand(884) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 891:
                                              if (v9 != 2)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidSuccessAuxPartition(891): (#2) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 3)
                                              {
                                                v12 = 2;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidSuccessAuxPartition_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidSuccessAuxPartition(891): Cannot add 2 elements to context", v14);
                                              return v5;
                                            case 892:
                                              if (v9 != 2)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidFailAuxPartition(892): (#2) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 3)
                                              {
                                                v12 = 2;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidFailAuxPartition_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidFailAuxPartition(892): Cannot add 2 elements to context", v14);
                                              return v5;
                                            case 893:
                                              if (v9 != 2)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassifyQualPartition(893): (#2) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 3)
                                              {
                                                v12 = 2;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidClassifyQualPartition_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassifyQualPartition(893): Cannot add 2 elements to context", v14);
                                              return v5;
                                            case 894:
                                              if (v9 != 2)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassifyRelPartition(894): (#2) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 3)
                                              {
                                                v12 = 2;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidClassifyRelPartition_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassifyRelPartition(894): Cannot add 2 elements to context", v14);
                                              return v5;
                                            case 895:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "IND_pool_freeMinSilo", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: IND_pool_freeMinSilo(895) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 896:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "autoSweepBlocks", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: autoSweepBlocks(896) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 897:
                                              if (v9 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcWrFragSizes(897): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "wcWrFragSizes_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcWrFragSizes(897): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 898:
                                              if (v9 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: indStateAcrossGcDidNoL(898): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "indStateAcrossGcDidNoL_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: indStateAcrossGcDidNoL(898): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 899:
                                              if (v9 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: indStateAcrossGcDidL(899): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "indStateAcrossGcDidL_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: indStateAcrossGcDidL(899): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 900:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidNoClassifyDueToWasRetire", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidNoClassifyDueToWasRetire(900) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 901:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidNoClassifyDueToOpenBand", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidNoClassifyDueToOpenBand(901) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 902:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidNoClassifyDueToQualityBlock", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidNoClassifyDueToQualityBlock(902) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 903:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidGbbOpenBand", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidGbbOpenBand(903) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 904:
                                              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidGbbShouldRetireOnRefresh", *a2) & 1) == 0)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidGbbShouldRetireOnRefresh(904) cannot add 1 element to context");
                                              }

                                              goto LABEL_161;
                                            case 905:
                                              if (v9 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelPerBlock(905): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidRelPerBlock_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelPerBlock(905): Cannot add 16 elements to context", v14);
                                              return v5;
                                            case 906:
                                              if (v9 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelBetweenRefreshesPerBlock(906): (#16) cfg elements != (%d) buffer elements", v9);
                                              }

                                              if (v9 >= 0x11)
                                              {
                                                v12 = 16;
                                              }

                                              else
                                              {
                                                v12 = v9;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidRelBetweenRefreshesPerBlock_", a2, 8u, v12))
                                              {
                                                goto LABEL_110;
                                              }

                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelBetweenRefreshesPerBlock(906): Cannot add 16 elements to context", v14);
                                              return v5;
                                            default:
                                              if (v7 <= 997)
                                              {
                                                switch(v7)
                                                {
                                                  case 907:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMaxRelBetweenRefreshesPerBlock(907): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMaxRelBetweenRefreshesPerBlock_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMaxRelBetweenRefreshesPerBlock(907): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 908:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMinRelBetweenRefreshesPerBlock(908): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMinRelBetweenRefreshesPerBlock_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMinRelBetweenRefreshesPerBlock(908): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 909:
                                                  case 910:
                                                  case 911:
                                                  case 912:
                                                  case 913:
                                                  case 914:
                                                  case 915:
                                                  case 916:
                                                  case 917:
                                                  case 924:
                                                  case 925:
                                                  case 926:
                                                  case 927:
                                                  case 928:
                                                  case 929:
                                                  case 936:
                                                  case 941:
                                                  case 945:
                                                  case 946:
                                                  case 947:
                                                  case 949:
                                                  case 950:
                                                  case 952:
                                                  case 954:
                                                  case 955:
                                                  case 956:
                                                  case 957:
                                                  case 958:
                                                  case 959:
                                                  case 960:
                                                  case 963:
                                                  case 966:
                                                  case 968:
                                                  case 969:
                                                  case 970:
                                                    goto LABEL_2528;
                                                  case 918:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenRel(918): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMaxCyclesBetweenRel_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenRel(918): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 919:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenRel(919): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMinCyclesBetweenRel_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenRel(919): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 920:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxPerBlock(920): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidAuxPerBlock_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxPerBlock(920): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 921:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxBetweenRefreshesPerBlock(921): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidAuxBetweenRefreshesPerBlock_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxBetweenRefreshesPerBlock(921): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 922:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidRelLockMark", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelLockMark(922) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 923:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidAuxLockMark", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxLockMark(923) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 930:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenAux(930): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMaxCyclesBetweenAux_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenAux(930): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 931:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenAux(931): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMinCyclesBetweenAux_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenAux(931): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 932:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidLastRelPECycles(932): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidLastRelPECycles_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidLastRelPECycles(932): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 933:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelQualPECycles(933): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidRelQualPECycles_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelQualPECycles(933): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 934:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidLastAuxPECycles(934): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidLastAuxPECycles_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidLastAuxPECycles(934): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 935:
                                                    if (v9 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxQualPECycles(935): (#16) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x11)
                                                    {
                                                      v12 = 16;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidAuxQualPECycles_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxQualPECycles(935): Cannot add 16 elements to context", v14);
                                                    return v5;
                                                  case 937:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidPEFailAfterRel", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidPEFailAfterRel(937) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 938:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "turboRaidPEFailAfterAux", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidPEFailAfterAux(938) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 939:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "dvfmVotesCPU", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: dvfmVotesCPU(939) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 940:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "dvfmVotesBandwidth", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: dvfmVotesBandwidth(940) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 942:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxSLCEndurance", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxSLCEndurance(942) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 943:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxMixedEndurance", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxMixedEndurance(943) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 944:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "maxNativeEndurance", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxNativeEndurance(944) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 948:
                                                    if (v9 != 40)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: assertHistory(948): (#40) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x29)
                                                    {
                                                      v12 = 40;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "assertHistory_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: assertHistory(948): Cannot add 40 elements to context", v14);
                                                    return v5;
                                                  case 951:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "asp3Support", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: asp3Support(951) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 953:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numCrossTempRaidUecc", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: numCrossTempRaidUecc(953) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 961:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "osBuildStr", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: osBuildStr(961) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 962:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidConfig", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidConfig(962) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 964:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidBlkParityBands", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBlkParityBands(964) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 965:
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidBlkParitySecs", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBlkParitySecs(965) cannot add 1 element to context");
                                                    }

                                                    break;
                                                  case 967:
                                                    if (v9 != 12)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: indTrimFrags(967): (#12) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0xD)
                                                    {
                                                      v12 = 12;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "indTrimFrags_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: indTrimFrags(967): Cannot add 12 elements to context", v14);
                                                    return v5;
                                                  case 971:
                                                    if (v9 != 12)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: indUsedFrags(971): (#12) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0xD)
                                                    {
                                                      v12 = 12;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "indUsedFrags_", a2, 8u, v12))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: indUsedFrags(971): Cannot add 12 elements to context", v14);
                                                    return v5;
                                                  default:
                                                    if (v7 == 996)
                                                    {
                                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogFindFail", *a2) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogFindFail(996) cannot add 1 element to context");
                                                      }

                                                      break;
                                                    }

                                                    if (v7 != 997)
                                                    {
                                                      goto LABEL_2528;
                                                    }

                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogFindBlank", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogFindBlank(997) cannot add 1 element to context");
                                                    }

                                                    break;
                                                }

LABEL_161:
                                                v5 = (v5 + 1);
                                                goto LABEL_162;
                                              }

                                              if (v7 > 1137)
                                              {
                                                if (v7 > 1170)
                                                {
                                                  if (v7 > 1180)
                                                  {
                                                    if (v7 <= 1182)
                                                    {
                                                      if (v7 == 1181)
                                                      {
                                                        if (v9 != 4)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_cur_dw_gc3(1181): (#4) cfg elements != (%d) buffer elements", v9);
                                                        }

                                                        if (v9 >= 5)
                                                        {
                                                          v12 = 4;
                                                        }

                                                        else
                                                        {
                                                          v12 = v9;
                                                        }

                                                        if ((AddMultipleFieldsToGenericContext(a1, "gc_cur_dw_gc3_", a2, 8u, v12) & 1) == 0)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_cur_dw_gc3(1181): Cannot add 4 elements to context", v14);
                                                          return v5;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v9 != 4)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_tot_dw_gc1(1182): (#4) cfg elements != (%d) buffer elements", v9);
                                                        }

                                                        if (v9 >= 5)
                                                        {
                                                          v12 = 4;
                                                        }

                                                        else
                                                        {
                                                          v12 = v9;
                                                        }

                                                        if ((AddMultipleFieldsToGenericContext(a1, "gc_tot_dw_gc1_", a2, 8u, v12) & 1) == 0)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_tot_dw_gc1(1182): Cannot add 4 elements to context", v14);
                                                          return v5;
                                                        }
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1183)
                                                    {
                                                      if (v9 != 4)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_tot_dw_gc2(1183): (#4) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 5)
                                                      {
                                                        v12 = 4;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "gc_tot_dw_gc2_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_tot_dw_gc2(1183): Cannot add 4 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1184)
                                                    {
                                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "unhappy_state", *a2) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: unhappy_state(1184) cannot add 1 element to context");
                                                      }

                                                      goto LABEL_161;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v7 > 1178)
                                                    {
                                                      if (v7 == 1179)
                                                      {
                                                        if (v9 != 4)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_cur_dw_gc1(1179): (#4) cfg elements != (%d) buffer elements", v9);
                                                        }

                                                        if (v9 >= 5)
                                                        {
                                                          v12 = 4;
                                                        }

                                                        else
                                                        {
                                                          v12 = v9;
                                                        }

                                                        if ((AddMultipleFieldsToGenericContext(a1, "gc_cur_dw_gc1_", a2, 8u, v12) & 1) == 0)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_cur_dw_gc1(1179): Cannot add 4 elements to context", v14);
                                                          return v5;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v9 != 4)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_cur_dw_gc2(1180): (#4) cfg elements != (%d) buffer elements", v9);
                                                        }

                                                        if (v9 >= 5)
                                                        {
                                                          v12 = 4;
                                                        }

                                                        else
                                                        {
                                                          v12 = v9;
                                                        }

                                                        if ((AddMultipleFieldsToGenericContext(a1, "gc_cur_dw_gc2_", a2, 8u, v12) & 1) == 0)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_cur_dw_gc2(1180): Cannot add 4 elements to context", v14);
                                                          return v5;
                                                        }
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1171)
                                                    {
                                                      if (v9 != 10)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalAge(1171): (#10) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 0xB)
                                                      {
                                                        v12 = 10;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "poDetectEmptySpotRemovalAge_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalAge(1171): Cannot add 10 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1172)
                                                    {
                                                      if (v9 != 3)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectGBBedMostSevereCost(1172): (#3) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v7 >> 34)
                                                      {
                                                        v12 = 3;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "poDetectGBBedMostSevereCost_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectGBBedMostSevereCost(1172): Cannot add 3 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }
                                                  }
                                                }

                                                else if (v7 > 1156)
                                                {
                                                  if (v7 > 1167)
                                                  {
                                                    if (v7 == 1168)
                                                    {
                                                      if (v9 != 2)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectPERemovalTotalCost(1168): (#2) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 3)
                                                      {
                                                        v12 = 2;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "poDetectPERemovalTotalCost_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectPERemovalTotalCost(1168): Cannot add 2 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1169)
                                                    {
                                                      if (v9 != 2)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalTotalCost(1169): (#2) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 3)
                                                      {
                                                        v12 = 2;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "poDetectEmptySpotRemovalTotalCost_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalTotalCost(1169): Cannot add 2 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v7 == 1157)
                                                    {
                                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanMaxForceROTimeMs", *a2) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanMaxForceROTimeMs(1157) cannot add 1 element to context");
                                                      }

                                                      goto LABEL_161;
                                                    }

                                                    if (v7 == 1158)
                                                    {
                                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanMaxForceRORecoTimeMs", *a2) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanMaxForceRORecoTimeMs(1158) cannot add 1 element to context");
                                                      }

                                                      goto LABEL_161;
                                                    }
                                                  }
                                                }

                                                else if (v7 > 1147)
                                                {
                                                  if (v7 == 1148)
                                                  {
                                                    if (v9 != 24)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc1(1148): (#24) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x19)
                                                    {
                                                      v12 = 24;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "gc_concurrent_dw_gc1_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc1(1148): Cannot add 24 elements to context", v14);
                                                      return v5;
                                                    }

LABEL_110:
                                                    v5 = v12 + v5;
                                                    goto LABEL_162;
                                                  }

                                                  if (v7 == 1149)
                                                  {
                                                    if (v9 != 24)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc2(1149): (#24) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x19)
                                                    {
                                                      v12 = 24;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "gc_concurrent_dw_gc2_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc2(1149): Cannot add 24 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }
                                                }

                                                else
                                                {
                                                  if (v7 == 1138)
                                                  {
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numOfToHappySwitches", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfToHappySwitches(1138) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }

                                                  if (v7 == 1147)
                                                  {
                                                    if (v9 != 24)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc12(1147): (#24) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 0x19)
                                                    {
                                                      v12 = 24;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "gc_concurrent_dw_gc12_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc12(1147): Cannot add 24 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }
                                                }
                                              }

                                              else if (v7 > 1039)
                                              {
                                                if (v7 > 1104)
                                                {
                                                  if (v7 > 1115)
                                                  {
                                                    if (v7 == 1116)
                                                    {
                                                      if (v9 != 32)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcwamp(1116): (#32) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 0x21)
                                                      {
                                                        v12 = 32;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "gcwamp_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcwamp(1116): Cannot add 32 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1137)
                                                    {
                                                      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numOfToUnhappySwitches", *a2) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfToUnhappySwitches(1137) cannot add 1 element to context");
                                                      }

                                                      goto LABEL_161;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v7 == 1105)
                                                    {
                                                      if (v9 != 14)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostReadSequential(1105): (#14) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 0xF)
                                                      {
                                                        v12 = 14;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "hostReadSequential_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostReadSequential(1105): Cannot add 14 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v7 == 1106)
                                                    {
                                                      if (v9 != 14)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: GCReadSequential(1106): (#14) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v9 >= 0xF)
                                                      {
                                                        v12 = 14;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "GCReadSequential_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: GCReadSequential(1106): Cannot add 14 elements to context", v14);
                                                        return v5;
                                                      }

                                                      goto LABEL_110;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  if (v7 <= 1041)
                                                  {
                                                    v15 = v7 >> 37;
                                                    if (v7 == 1040)
                                                    {
                                                      if (v9 != 31)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBinsV2(1040): (#31) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v15)
                                                      {
                                                        v12 = 31;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "bandsAgeBinsV2_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBinsV2(1040): Cannot add 31 elements to context", v14);
                                                        return v5;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v9 != 31)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBinsSnapshot(1041): (#31) cfg elements != (%d) buffer elements", v9);
                                                      }

                                                      if (v15)
                                                      {
                                                        v12 = 31;
                                                      }

                                                      else
                                                      {
                                                        v12 = v9;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "bandsAgeBinsSnapshot_", a2, 8u, v12) & 1) == 0)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBinsSnapshot(1041): Cannot add 31 elements to context", v14);
                                                        return v5;
                                                      }
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if (v7 == 1042)
                                                  {
                                                    if (v9 != 15)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBinsReadSectors(1042): (#15) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v7 >> 36)
                                                    {
                                                      v12 = 15;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "bandsAgeBinsReadSectors_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBinsReadSectors(1042): Cannot add 15 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if (v7 == 1080)
                                                  {
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidForceClogLoad", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidForceClogLoad(1080) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }
                                                }
                                              }

                                              else if (v7 > 1002)
                                              {
                                                if (v7 > 1015)
                                                {
                                                  if (v7 == 1016)
                                                  {
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanEarlyBootNumUeccPages", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanEarlyBootNumUeccPages(1016) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }

                                                  if (v7 == 1017)
                                                  {
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanEarlyBootUeccMultiplane", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanEarlyBootUeccMultiplane(1017) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }
                                                }

                                                else
                                                {
                                                  if (v7 == 1003)
                                                  {
                                                    if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogReplaySpfError", *a2) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogReplaySpfError(1003) cannot add 1 element to context");
                                                    }

                                                    goto LABEL_161;
                                                  }

                                                  if (v7 == 1015)
                                                  {
                                                    if (v9 != 4)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanEarlyBootUeccPage(1015): (#4) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 5)
                                                    {
                                                      v12 = 4;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "eanEarlyBootUeccPage_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanEarlyBootUeccPage(1015): Cannot add 4 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                if (v7 > 1000)
                                                {
                                                  if (v7 == 1001)
                                                  {
                                                    if (v9 != 8)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogReplayFailReason(1001): (#8) cfg elements != (%d) buffer elements", v9);
                                                    }

                                                    if (v9 >= 9)
                                                    {
                                                      v12 = 8;
                                                    }

                                                    else
                                                    {
                                                      v12 = v9;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "clogReplayFailReason_", a2, 8u, v12) & 1) == 0)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogReplayFailReason(1001): Cannot add 8 elements to context", v14);
                                                      return v5;
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogReplayTransientError", *a2) & 1) == 0)
                                                  {
                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogReplayTransientError(1002) cannot add 1 element to context");
                                                  }

                                                  goto LABEL_161;
                                                }

                                                if (v7 == 998)
                                                {
                                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogFindUnc", *a2) & 1) == 0)
                                                  {
                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogFindUnc(998) cannot add 1 element to context");
                                                  }

                                                  goto LABEL_161;
                                                }

                                                if (v7 == 999)
                                                {
                                                  if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "clogFindUnexpected", *a2) & 1) == 0)
                                                  {
                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogFindUnexpected(999) cannot add 1 element to context");
                                                  }

                                                  goto LABEL_161;
                                                }
                                              }

                                              break;
                                          }

                                          break;
                                      }

                                      break;
                                  }

                                  break;
                              }

                              break;
                          }

                          break;
                      }

                      break;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
  }

LABEL_2528:
  switch(v7)
  {
    case 1185:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "unhappy_level", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: unhappy_level(1185) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1186:
    case 1187:
    case 1188:
    case 1191:
    case 1192:
    case 1193:
    case 1194:
    case 1195:
    case 1200:
    case 1203:
    case 1204:
    case 1205:
    case 1206:
    case 1207:
    case 1208:
    case 1209:
    case 1210:
    case 1212:
    case 1213:
    case 1214:
    case 1219:
    case 1220:
    case 1235:
    case 1236:
    case 1237:
    case 1238:
    case 1239:
    case 1240:
    case 1242:
    case 1243:
    case 1245:
    case 1247:
    case 1248:
    case 1249:
    case 1250:
    case 1251:
    case 1252:
    case 1253:
    case 1254:
    case 1255:
    case 1256:
    case 1257:
    case 1258:
    case 1259:
    case 1260:
    case 1261:
    case 1262:
    case 1263:
LABEL_2685:
      if (v7 > 1447)
      {
        if (v7 > 1535)
        {
          if (v7 > 1542)
          {
            if (v7 <= 1544)
            {
              if (v7 == 1543)
              {
                if (v9 != 10)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowNoDIPingIntervals(1543): (#10) cfg elements != (%d) buffer elements", v9);
                }

                if (v9 >= 0xB)
                {
                  v12 = 10;
                }

                else
                {
                  v12 = v9;
                }

                if ((AddMultipleFieldsToGenericContext(a1, "istkLowNoDIPingIntervals_", a2, 8u, v12) & 1) == 0)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowNoDIPingIntervals(1543): Cannot add 10 elements to context", v14);
                  return v5;
                }
              }

              else
              {
                if (v9 != 10)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowNoSUIPingIntervals(1544): (#10) cfg elements != (%d) buffer elements", v9);
                }

                if (v9 >= 0xB)
                {
                  v12 = 10;
                }

                else
                {
                  v12 = v9;
                }

                if ((AddMultipleFieldsToGenericContext(a1, "istkLowNoSUIPingIntervals_", a2, 8u, v12) & 1) == 0)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowNoSUIPingIntervals(1544): Cannot add 10 elements to context", v14);
                  return v5;
                }
              }

              goto LABEL_110;
            }

            switch(v7)
            {
              case 0x609:
                if (v9 != 6)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowAfterMedIntervals(1545): (#6) cfg elements != (%d) buffer elements", v9);
                }

                if (v9 >= 7)
                {
                  v12 = 6;
                }

                else
                {
                  v12 = v9;
                }

                if ((AddMultipleFieldsToGenericContext(a1, "istkLowAfterMedIntervals_", a2, 8u, v12) & 1) == 0)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowAfterMedIntervals(1545): Cannot add 6 elements to context", v14);
                  return v5;
                }

                goto LABEL_110;
              case 0x60B:
                if (v9 != 5)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkHWBetweenMed(1547): (#5) cfg elements != (%d) buffer elements", v9);
                }

                if (v7 >> 33 >= 3)
                {
                  v12 = 5;
                }

                else
                {
                  v12 = v9;
                }

                if ((AddMultipleFieldsToGenericContext(a1, "istkHWBetweenMed_", a2, 8u, v12) & 1) == 0)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkHWBetweenMed(1547): Cannot add 5 elements to context", v14);
                  return v5;
                }

                goto LABEL_110;
              case 0x622:
                if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "uptimeSeconds", *a2) & 1) == 0)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: uptimeSeconds(1570) cannot add 1 element to context");
                }

                goto LABEL_161;
            }
          }

          else
          {
            if (v7 <= 1537)
            {
              if (v7 == 1536)
              {
                if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "istkLowPings", *a2) & 1) == 0)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowPings(1536) cannot add 1 element to context");
                }
              }

              else if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "istkLowNoDIPings", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowNoDIPings(1537) cannot add 1 element to context");
              }

              goto LABEL_161;
            }

            switch(v7)
            {
              case 0x602:
                if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "istkLowNoSUIPings", *a2) & 1) == 0)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowNoSUIPings(1538) cannot add 1 element to context");
                }

                goto LABEL_161;
              case 0x603:
                if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "istkMedPings", *a2) & 1) == 0)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkMedPings(1539) cannot add 1 element to context");
                }

                goto LABEL_161;
              case 0x604:
                if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "istkHighPings", *a2) & 1) == 0)
                {
                  SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkHighPings(1540) cannot add 1 element to context");
                }

                goto LABEL_161;
            }
          }
        }

        else if (v7 > 1462)
        {
          if (v7 > 1532)
          {
            if (v7 == 1533)
            {
              if (v9 != 12)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowPingIntervals(1533): (#12) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 0xD)
              {
                v12 = 12;
              }

              else
              {
                v12 = v9;
              }

              if ((AddMultipleFieldsToGenericContext(a1, "istkLowPingIntervals_", a2, 8u, v12) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowPingIntervals(1533): Cannot add 12 elements to context", v14);
                return v5;
              }
            }

            else if (v7 == 1534)
            {
              if (v9 != 10)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkMedPingIntervals(1534): (#10) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 0xB)
              {
                v12 = 10;
              }

              else
              {
                v12 = v9;
              }

              if ((AddMultipleFieldsToGenericContext(a1, "istkMedPingIntervals_", a2, 8u, v12) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkMedPingIntervals(1534): Cannot add 10 elements to context", v14);
                return v5;
              }
            }

            else
            {
              if (v9 != 10)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkHighPingIntervals(1535): (#10) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 0xB)
              {
                v12 = 10;
              }

              else
              {
                v12 = v9;
              }

              if ((AddMultipleFieldsToGenericContext(a1, "istkHighPingIntervals_", a2, 8u, v12) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkHighPingIntervals(1535): Cannot add 10 elements to context", v14);
                return v5;
              }
            }

            goto LABEL_110;
          }

          if (v7 == 1463)
          {
            if (v9 != 6)
            {
              SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandReadsByMode(1463): (#6) cfg elements != (%d) buffer elements", v9);
            }

            if (v9 >= 7)
            {
              v12 = 6;
            }

            else
            {
              v12 = v9;
            }

            if ((AddMultipleFieldsToGenericContext(a1, "nandReadsByMode_", a2, 8u, v12) & 1) == 0)
            {
              SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandReadsByMode(1463): Cannot add 6 elements to context", v14);
              return v5;
            }

            goto LABEL_110;
          }

          if (v7 == 1494)
          {
            if (v9 != 20)
            {
              SetAPIErrorMessage("ASPFTLParseBufferToCxt: throttlingSecPerTTPerMW(1494): (#20) cfg elements != (%d) buffer elements", v9);
            }

            if (v9 >= 0x15)
            {
              v12 = 20;
            }

            else
            {
              v12 = v9;
            }

            if ((AddMultipleFieldsToGenericContext(a1, "throttlingSecPerTTPerMW_", a2, 8u, v12) & 1) == 0)
            {
              SetAPIErrorMessage("ASPFTLParseBufferToCxt: throttlingSecPerTTPerMW(1494): Cannot add 20 elements to context", v14);
              return v5;
            }

            goto LABEL_110;
          }
        }

        else
        {
          if (v7 <= 1449)
          {
            if (v7 == 1448)
            {
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "deviceTempMaxValue", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: deviceTempMaxValue(1448) cannot add 1 element to context");
              }
            }

            else if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "deviceTempHighValue", *a2) & 1) == 0)
            {
              SetAPIErrorMessage("ASPFTLParseBufferToCxt: deviceTempHighValue(1449) cannot add 1 element to context");
            }

            goto LABEL_161;
          }

          switch(v7)
          {
            case 0x5AA:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "deviceTempLowValue", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: deviceTempLowValue(1450) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 0x5AC:
              if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "selfPanicEnabled", *a2) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: selfPanicEnabled(1452) cannot add 1 element to context");
              }

              goto LABEL_161;
            case 0x5B6:
              if (v9 != 6)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandWritesByMode(1462): (#6) cfg elements != (%d) buffer elements", v9);
              }

              if (v9 >= 7)
              {
                v12 = 6;
              }

              else
              {
                v12 = v9;
              }

              if ((AddMultipleFieldsToGenericContext(a1, "nandWritesByMode_", a2, 8u, v12) & 1) == 0)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandWritesByMode(1462): Cannot add 6 elements to context", v14);
                return v5;
              }

              goto LABEL_110;
          }
        }

LABEL_2986:
        if (v7 >> 33)
        {
          snprintf(__str, 0x20uLL, "Stat_%d_");
        }

        else
        {
          snprintf(__str, 0x20uLL, "Stat_%d");
        }

        if ((AddMultipleFieldsToGenericContext(a1, __str, a2, 8u, v9) & 1) == 0)
        {
          SetAPIErrorMessage("ASPFTLParseBufferToCxt %d: Cannot add %d elements to context");
          return v5;
        }

        v5 = (v5 + v9);
LABEL_162:
        a2 += v9;
        v6 -= v9;
        goto LABEL_2;
      }

      switch(v7)
      {
        case 1354:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numOfThrottlingLevels", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingLevels(1354) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1355:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "crossTempColdEvict", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: crossTempColdEvict(1355) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1356:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "crossTempHotEvict", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: crossTempHotEvict(1356) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1357:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "crossTempColdHotEvict", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: crossTempColdHotEvict(1357) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1358:
          if (v9 != 13)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: tempChangedHisto(1358): (#13) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 7)
          {
            v12 = 13;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "tempChangedHisto_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: tempChangedHisto(1358): Cannot add 13 elements to context", v14);
          break;
        case 1359:
          if (v9 != 13)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: tempChangedEnterETHisto(1359): (#13) cfg elements != (%d) buffer elements", v9);
          }

          if (v7 >> 33 >= 7)
          {
            v12 = 13;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "tempChangedEnterETHisto_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: tempChangedEnterETHisto(1359): Cannot add 13 elements to context", v14);
          break;
        case 1362:
          if (v9 != 20)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcMustReasons(1362): (#20) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x15)
          {
            v12 = 20;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "gcMustReasons_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcMustReasons(1362): Cannot add 20 elements to context", v14);
          break;
        case 1367:
          if (v9 != 32)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: asyncMessageHisto(1367): (#32) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x21)
          {
            v12 = 32;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "asyncMessageHisto_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: asyncMessageHisto(1367): Cannot add 32 elements to context", v14);
          break;
        case 1368:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "massScanIgnoredTooFrequent", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: massScanIgnoredTooFrequent(1368) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1369:
          if (v9 != 8)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: realGBBPerDipOfFailingDie(1369): (#8) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 9)
          {
            v12 = 8;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "realGBBPerDipOfFailingDie_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: realGBBPerDipOfFailingDie(1369): Cannot add 8 elements to context", v14);
          break;
        case 1379:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "boffOrderedReadBlank", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: boffOrderedReadBlank(1379) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1380:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "boffOrderedRaidSuccessValidLba", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: boffOrderedRaidSuccessValidLba(1380) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1381:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "unexpectedRaidFailures", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: unexpectedRaidFailures(1381) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1382:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "boffOrderedUnexpectedBlankValid", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: boffOrderedUnexpectedBlankValid(1382) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1383:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidExpectedFailPMXReconstructionInternal", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidExpectedFailPMXReconstructionInternal(1383) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1384:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidExpectedFailPMXReconstructionHost", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidExpectedFailPMXReconstructionHost(1384) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1385:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidExpectedFailBMXReconstructionInternal", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidExpectedFailBMXReconstructionInternal(1385) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1386:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "raidExpectedFailBMXReconstructionHost", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidExpectedFailBMXReconstructionHost(1386) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1392:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrHPScanHP", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrHPScanHP(1392) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1393:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrMPScanMP", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrMPScanMP(1393) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1394:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrMPScanHP", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrMPScanHP(1394) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1401:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "ldefragFailedMemBalancer", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: ldefragFailedMemBalancer(1401) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1409:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "BP_readThrottleEngagedCnt", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: BP_readThrottleEngagedCnt(1409) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1410:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "BP_readThrottleActualSize", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: BP_readThrottleActualSize(1410) cannot add 1 element to context");
          }

          goto LABEL_161;
        default:
          goto LABEL_2986;
      }

      return v5;
    case 1189:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "lastLbaFormatTime", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: lastLbaFormatTime(1189) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1190:
      if (v9 != 11)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: powerDownTime(1190): (#11) cfg elements != (%d) buffer elements", v9);
      }

      if (v7 >> 34 >= 3)
      {
        v12 = 11;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "powerDownTime_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: powerDownTime(1190): Cannot add 11 elements to context", v14);
      return v5;
    case 1196:
      if (v9 != 5)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectGBBedTotalCost(1196): (#5) cfg elements != (%d) buffer elements", v9);
      }

      if (v7 >> 33 >= 3)
      {
        v12 = 5;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "poDetectGBBedTotalCost_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectGBBedTotalCost(1196): Cannot add 5 elements to context", v14);
      return v5;
    case 1197:
      if (v9 != 10)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectGBBedAge(1197): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "poDetectGBBedAge_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectGBBedAge(1197): Cannot add 10 elements to context", v14);
      return v5;
    case 1198:
      if (v9 != 3)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectPERemovalMostSevereCost(1198): (#3) cfg elements != (%d) buffer elements", v9);
      }

      if (v7 >> 34)
      {
        v12 = 3;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "poDetectPERemovalMostSevereCost_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectPERemovalMostSevereCost(1198): Cannot add 3 elements to context", v14);
      return v5;
    case 1199:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "poDetectCurrentSize", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectCurrentSize(1199) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1201:
      if (v9 != 4)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcVerticalSuccssfulAlignments(1201): (#4) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 5)
      {
        v12 = 4;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "gcVerticalSuccssfulAlignments_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcVerticalSuccssfulAlignments(1201): Cannot add 4 elements to context", v14);
      return v5;
    case 1202:
      if (v9 != 4)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcVerticalNoAlignmentDueToMissingSegs(1202): (#4) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 5)
      {
        v12 = 4;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "gcVerticalNoAlignmentDueToMissingSegs_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcVerticalNoAlignmentDueToMissingSegs(1202): Cannot add 4 elements to context", v14);
      return v5;
    case 1211:
      if (v9 != 24)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: forcedAllocationSmallEraseQ(1211): (#24) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x19)
      {
        v12 = 24;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "forcedAllocationSmallEraseQ_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: forcedAllocationSmallEraseQ(1211): Cannot add 24 elements to context", v14);
      return v5;
    case 1215:
      if (v9 != 5)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWritesPerThrottleZone(1215): (#5) cfg elements != (%d) buffer elements", v9);
      }

      if (v7 >> 33 >= 3)
      {
        v12 = 5;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "hostWritesPerThrottleZone_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWritesPerThrottleZone(1215): Cannot add 5 elements to context", v14);
      return v5;
    case 1216:
      if (v9 != 24)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcWLPerDipAvgPEC(1216): (#24) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x19)
      {
        v12 = 24;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "tlcWLPerDipAvgPEC_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcWLPerDipAvgPEC(1216): Cannot add 24 elements to context", v14);
      return v5;
    case 1217:
      if (v9 != 24)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcWLPerDipMaxPEC(1217): (#24) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x19)
      {
        v12 = 24;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "tlcWLPerDipMaxPEC_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcWLPerDipMaxPEC(1217): Cannot add 24 elements to context", v14);
      return v5;
    case 1218:
      if (v9 != 24)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcWLPerDipMinPEC(1218): (#24) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x19)
      {
        v12 = 24;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "tlcWLPerDipMinPEC_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcWLPerDipMinPEC(1218): Cannot add 24 elements to context", v14);
      return v5;
    case 1221:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_openBandEvictBlocks", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_openBandEvictBlocks(1221) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1222:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "RD_closedBandEvictBlocks", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_closedBandEvictBlocks(1222) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1223:
      if (v9 != 10)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_closedBlocksTHHist(1223): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "RD_closedBlocksTHHist_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_closedBlocksTHHist(1223): Cannot add 10 elements to context", v14);
      return v5;
    case 1224:
      if (v9 != 20)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: apfsValidLbaOvershoot(1224): (#20) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0x15)
      {
        v12 = 20;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "apfsValidLbaOvershoot_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: apfsValidLbaOvershoot(1224): Cannot add 20 elements to context", v14);
      return v5;
    case 1225:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "HUPolicySwitchPeMinSlc", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicySwitchPeMinSlc(1225) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1226:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "HUPolicySwitchPeInt", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicySwitchPeInt(1226) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1227:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "HUPolicySwitchPeGap", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicySwitchPeGap(1227) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1228:
      if (v9 != 6)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicyWidthDown(1228): (#6) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 7)
      {
        v12 = 6;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "HUPolicyWidthDown_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicyWidthDown(1228): Cannot add 6 elements to context", v14);
      return v5;
    case 1229:
      if (v9 != 6)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicyWidthUp(1229): (#6) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 7)
      {
        v12 = 6;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "HUPolicyWidthUp_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicyWidthUp(1229): Cannot add 6 elements to context", v14);
      return v5;
    case 1230:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "HUPolicyPrevPeSlc", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicyPrevPeSlc(1230) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1231:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "HUPolicyPrevPeTlc", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicyPrevPeTlc(1231) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1232:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanFastSize", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanFastSize(1232) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1233:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanNumSlcEvictions", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanNumSlcEvictions(1233) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1234:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "eanNumForcedCompress", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanNumForcedCompress(1234) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1241:
      if (v9 != 10)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: s2rTimeHisto(1241): (#10) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 0xB)
      {
        v12 = 10;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "s2rTimeHisto_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: s2rTimeHisto(1241): Cannot add 10 elements to context", v14);
      return v5;
    case 1244:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "calendarTimeWentBackward", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: calendarTimeWentBackward(1244) cannot add 1 element to context");
      }

      goto LABEL_161;
    case 1246:
      if (v9 != 8)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsUeccCrossTempHisto(1246): (#8) cfg elements != (%d) buffer elements", v9);
      }

      if (v9 >= 9)
      {
        v12 = 8;
      }

      else
      {
        v12 = v9;
      }

      if (AddMultipleFieldsToGenericContext(a1, "bandsUeccCrossTempHisto_", a2, 8u, v12))
      {
        goto LABEL_110;
      }

      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsUeccCrossTempHisto(1246): Cannot add 8 elements to context", v14);
      return v5;
    case 1264:
      if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numRefreshOnErrNandRefreshPerfOpt", *a2) & 1) == 0)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshPerfOpt(1264) cannot add 1 element to context");
      }

      goto LABEL_161;
    default:
      switch(v7)
      {
        case 1271:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "deviceTempMax", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: deviceTempMax(1271) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1272:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "deviceTempHigh", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: deviceTempHigh(1272) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1273:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "deviceTempLow", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: deviceTempLow(1273) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1282:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrScanHP", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrScanHP(1282) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1283:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "cbdrScanMP", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrScanMP(1283) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1285:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "bitsPerCell", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitsPerCell(1285) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1289:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "numRefreshOnErrNandRefreshPerfOptOpen", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshPerfOptOpen(1289) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1293:
          if (v9 != 16)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryTime(1293): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bpZone2EntryTime_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryTime(1293): Cannot add 16 elements to context", v14);
          break;
        case 1294:
          if (v9 != 16)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitTime(1294): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bpZone2ExitTime_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitTime(1294): Cannot add 16 elements to context", v14);
          break;
        case 1295:
          if (v9 != 8)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpHostChokeTime(1295): (#8) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 9)
          {
            v12 = 8;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bpHostChokeTime_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpHostChokeTime(1295): Cannot add 8 elements to context", v14);
          break;
        case 1296:
          if (v9 != 16)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryHW(1296): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bpZone2EntryHW_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryHW(1296): Cannot add 16 elements to context", v14);
          break;
        case 1298:
          if (v9 != 16)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitHW(1298): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bpZone2ExitHW_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitHW(1298): Cannot add 16 elements to context", v14);
          break;
        case 1302:
          if (v9 != 16)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryHostTP(1302): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bpZone2EntryHostTP_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryHostTP(1302): Cannot add 16 elements to context", v14);
          break;
        case 1303:
          if (v9 != 16)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryGCTP(1303): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bpZone2EntryGCTP_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryGCTP(1303): Cannot add 16 elements to context", v14);
          break;
        case 1304:
          if (v9 != 16)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitHostTP(1304): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bpZone2ExitHostTP_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitHostTP(1304): Cannot add 16 elements to context", v14);
          break;
        case 1305:
          if (v9 != 16)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitGCTP(1305): (#16) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 0x11)
          {
            v12 = 16;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bpZone2ExitGCTP_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitGCTP(1305): Cannot add 16 elements to context", v14);
          break;
        case 1323:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "prefetchNofHits", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: prefetchNofHits(1323) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1326:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "massScanFullRounds", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: massScanFullRounds(1326) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1327:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "massScanEarlyExits", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: massScanEarlyExits(1327) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1328:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "massScanMspFullScanRequests", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: massScanMspFullScanRequests(1328) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1329:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "massScanMspEarlyExitRequests", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: massScanMspEarlyExitRequests(1329) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1333:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcBoffOrderedRecoverableErrorGbbs", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcBoffOrderedRecoverableErrorGbbs(1333) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1334:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcBoffOrderedUnrecoverableErrorGbbs", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcBoffOrderedUnrecoverableErrorGbbs(1334) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1335:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcBoffOrderedBandOrphansNumBands", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcBoffOrderedBandOrphansNumBands(1335) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1336:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcBoffOrderedBandOrphansNumSectors", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcBoffOrderedBandOrphansNumSectors(1336) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1337:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcBoffOrderedDefragEvents", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcBoffOrderedDefragEvents(1337) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1338:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcBoffOrderedDefragIterations", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcBoffOrderedDefragIterations(1338) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1339:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "gcBoffOrderedDefragSectors", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcBoffOrderedDefragSectors(1339) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1344:
          if (v9 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: unhappyWideGC1(1344): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "unhappyWideGC1_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: unhappyWideGC1(1344): Cannot add 4 elements to context", v14);
          break;
        case 1345:
          if (v9 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: unhappyVertGC(1345): (#4) cfg elements != (%d) buffer elements", v9);
          }

          if (v9 >= 5)
          {
            v12 = 4;
          }

          else
          {
            v12 = v9;
          }

          if (AddMultipleFieldsToGenericContext(a1, "unhappyVertGC_", a2, 8u, v12))
          {
            goto LABEL_110;
          }

          SetAPIErrorMessage("ASPFTLParseBufferToCxt: unhappyVertGC(1345): Cannot add 4 elements to context", v14);
          break;
        case 1348:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "thermalSelfThrottlingSupported", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: thermalSelfThrottlingSupported(1348) cannot add 1 element to context");
          }

          goto LABEL_161;
        case 1349:
          if ((AddSingleValueToGenericContext(a1, &unk_10004A471, "thermalSelfThrottlingEnabled", *a2) & 1) == 0)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: thermalSelfThrottlingEnabled(1349) cannot add 1 element to context");
          }

          goto LABEL_161;
        default:
          goto LABEL_2685;
      }

      return v5;
  }
}