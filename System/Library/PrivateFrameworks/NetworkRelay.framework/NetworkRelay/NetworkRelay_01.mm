__CFString *createStringFromNRLinkChannelPriority(uint64_t a1)
{
  if (a1 >= 4)
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", a1];
  }

  else
  {
    return off_27996AFF0[a1];
  }
}

void NRBluetoothPacketParserSuspendNexusBKInputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x40) == 0 && *(a1 + 360))
  {
    *(a1 + 144) = v2 | 0x40;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 360);

LABEL_6:
      dispatch_suspend(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusBKInput", "", "NRBluetoothPacketParserSuspendNexusBKInputSource", 483);

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 360);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserSuspendNexusBEInputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x20) == 0 && *(a1 + 344))
  {
    *(a1 + 144) = v2 | 0x20;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 344);

LABEL_6:
      dispatch_suspend(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusBEInput", "", "NRBluetoothPacketParserSuspendNexusBEInputSource", 477);

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 344);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserSuspendNexusVIInputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x10) == 0 && *(a1 + 328))
  {
    *(a1 + 144) = v2 | 0x10;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 328);

LABEL_6:
      dispatch_suspend(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusVIInput", "", "NRBluetoothPacketParserSuspendNexusVIInputSource", 481);

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 328);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserSuspendNexusVOInputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 8) == 0 && *(a1 + 312))
  {
    *(a1 + 144) = v2 | 8;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 312);

LABEL_6:
      dispatch_suspend(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusVOInput", "", "NRBluetoothPacketParserSuspendNexusVOInputSource", 479);

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 312);

    goto LABEL_6;
  }
}

uint64_t NRLinkLinkToNexusLoop6LoWPANPacket(uint64_t a1, _BYTE **a2, void *__src, size_t __n, void *a5, char a6)
{
  v6 = __n + 5;
  if (__n + 5 < 0x10000)
  {
    v9 = *a2;
    *v9 = 3;
    v10 = bswap32(__n);
    v9[1] = BYTE2(v10);
    v9[2] = HIBYTE(v10);
    memcpy(v9 + 3, __src, __n);
    v14 = 0;
    result = NRBluetoothPacketParserLinkToNexusLoopFastPath(a1, a2, v9, v6, &v14, a6);
    *a5 = v14;
  }

  else
  {
    if (nrCopyLogObj_onceToken_563 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || (result = os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR), result))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_564, 16, "%s%.30s:%-4d unexpected data size %zu", "", "NRLinkLinkToNexusLoop6LoWPANPacket", 2318, v6);
      return 0;
    }
  }

  return result;
}

uint64_t NRLinkLinkToNexusLoopPacket(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v103[1] = *MEMORY[0x277D85DE8];
  if (*a5 >= a4)
  {
    if (*a5 > a4)
    {
      if (nrCopyLogObj_onceToken_563 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_564, 16, "%s%.30s:%-4d read more than buffer length", "", "NRLinkLinkToNexusLoopPacket", 2349);
      }
    }

    return 1;
  }

  v12 = 0x280D73000uLL;
  if (*a5)
  {
    if (!gNRPacketLoggingEnabled)
    {
      goto LABEL_4;
    }

    v53 = a6;
    v54 = a7;
    v55 = a3;
    v56 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v65 = v56;
      v66 = os_log_type_enabled(v56, OS_LOG_TYPE_INFO);

      a3 = v55;
      a7 = v54;
      a6 = v53;
      v12 = 0x280D73000uLL;
      if (!v66)
      {
        goto LABEL_4;
      }
    }

    v67 = nrCopyLogObj_560();
    _NRLogWithArgs(v67, 1, "%s%.30s:%-4d re-processing incoming data of length %u at offset %zu", "", "NRLinkLinkToNexusLoopPacket", 2356, a4 - *a5, *a5);
    goto LABEL_61;
  }

  if (!gNRPacketLoggingEnabled)
  {
    goto LABEL_4;
  }

  v45 = a6;
  v46 = a7;
  v47 = a3;
  v48 = nrCopyLogObj_560();
  v49 = v48;
  if (sNRCopyLogToStdErr == 1)
  {

    a3 = v47;
    a7 = v46;
    a6 = v45;
LABEL_86:
    v53 = a6;
    v54 = a7;
    v55 = a3;
    v67 = nrCopyLogObj_560();
    _NRLogWithArgs(v67, 1, "%s%.30s:%-4d processing incoming data of length %u", "", "NRLinkLinkToNexusLoopPacket", 2354, a4 - *a5);
LABEL_61:

    a3 = v55;
    a7 = v54;
    a6 = v53;
    v12 = 0x280D73000uLL;
    goto LABEL_4;
  }

  v87 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);

  a3 = v47;
  a7 = v46;
  a6 = v45;
  v12 = 0x280D73000uLL;
  if (v87)
  {
    goto LABEL_86;
  }

LABEL_4:
  v13 = *(a2 + 8);
  if (v13)
  {
    goto LABEL_5;
  }

  v50 = a6;
  v51 = a7;
  v52 = a3;
  v13 = malloc_type_malloc(0x1000uLL, 0x581093B3uLL);
  if (!v13)
  {
    v88 = nrCopyLogObj_560();
    v89 = v88;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v90 = os_log_type_enabled(v88, OS_LOG_TYPE_ERROR);

      if (!v90)
      {
        goto LABEL_91;
      }
    }

    v91 = nrCopyLogObj_560();
    _NRLogWithArgs(v91, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "NRLinkLinkToNexusLoopPacket", 2360);

LABEL_91:
    v92 = _os_log_pack_size();
    v94 = &v99 - ((MEMORY[0x28223BE20](v92, v93) + 15) & 0xFFFFFFFFFFFFFFF0);
    v95 = __error();
    v96 = _os_log_pack_fill(v94, v92, *v95, &dword_25B98C000, "%{public}s strict allocator failed");
    *v96 = 136446210;
    *(v96 + 4) = "NRLinkLinkToNexusLoopPacket";
    v97 = nrCopyLogObj_560();
    _NRLogAbortWithPack(v97, v94);
  }

  *(a2 + 8) = v13;
  a3 = v52;
  a7 = v51;
  a6 = v50;
  v12 = 0x280D73000uLL;
LABEL_5:
  v14 = *(a2 + 43);
  v102 = a6;
  if ((v14 & 8) != 0)
  {
    v18 = a3;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_16:
      v103[0] = 0;
      v16 = (a2 + 32);
      v19 = a7;
      NRBluetoothPacketParserLinkToNexusLoopFastPath(a1, a2, *(a2 + 8) + *(a2 + 36), (*(a2 + 32) - *(a2 + 36)), v103, a6);
      v20 = v103[0];
      *(a2 + 36) = v103[0];
      if (*(a2 + 32) != v20)
      {
        result = 0;
        *(a2 + 43) |= 8u;
        return result;
      }

      *(a2 + 32) = 0;
      *(a2 + 43) &= ~8u;
      v13 = *(a2 + 8);
LABEL_18:
      *v13 = 2;
      *(v13 + 1) = 0;
      v15 = *v16 + 3;
      *v16 = v15;
      goto LABEL_19;
    }

    v62 = a6;
    v63 = a7;
    v64 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v74 = v64;
      v75 = os_log_type_enabled(v64, OS_LOG_TYPE_INFO);

      a7 = v63;
      LOBYTE(a6) = v62;
      if (!v75)
      {
        goto LABEL_16;
      }
    }

    v76 = nrCopyLogObj_560();
    _NRLogWithArgs(v76, 1, "%s%.30s:%-4d processing pending complete packet filledIn %u", "", "NRLinkLinkToNexusLoopPacket", 2364, *(a2 + 32));

    LOBYTE(a6) = v62;
    a7 = v63;
    goto LABEL_16;
  }

  v16 = (a2 + 32);
  v15 = *(a2 + 32);
  if (v15 >= 0x2B)
  {
    v17 = bswap32(*(v13 + 7)) >> 16;
    if ((gNRPacketLoggingEnabled & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_50:
    v57 = a7;
    v58 = a3;
    v59 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v68 = v59;
      LODWORD(v101) = os_log_type_enabled(v59, OS_LOG_TYPE_INFO);

      if (!v101)
      {
LABEL_64:
        a3 = v58;
        a7 = v57;
        v12 = 0x280D73000;
        goto LABEL_29;
      }
    }

    v69 = nrCopyLogObj_560();
    _NRLogWithArgs(v69, 1, "%s%.30s:%-4d -- ipv6 payload len %u", "", "NRLinkLinkToNexusLoopPacket", 2408, v17);

    goto LABEL_64;
  }

  v19 = a7;
  v18 = a3;
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_19:
  v21 = 43 - v15;
  if ((a4 - *a5) >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = (a4 - *a5);
  }

  v23 = v18;
  if (gNRPacketLoggingEnabled == 1)
  {
    v73 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v83 = v73;
      LODWORD(v101) = os_log_type_enabled(v73, OS_LOG_TYPE_INFO);

      v23 = v18;
      if (!v101)
      {
        goto LABEL_23;
      }
    }

    v84 = nrCopyLogObj_560();
    _NRLogWithArgs(v84, 1, "%s%.30s:%-4d -- filledIn %u numberOfBytesToFill: %u", "", "NRLinkLinkToNexusLoopPacket", 2393, *v16, v22);

    v23 = v18;
  }

LABEL_23:
  v24 = v23;
  memcpy((*(a2 + 8) + *(a2 + 32)), (v23 + *a5), v22);
  v25 = *(a2 + 32) + v22;
  *(a2 + 32) = v25;
  *a5 += v22;
  if (v25 <= 0x27)
  {
    if ((gNRPacketLoggingEnabled & 1) == 0)
    {
      return 1;
    }

    v26 = nrCopyLogObj_560();
    v27 = v26;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v85 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);

      result = 1;
      if (!v85)
      {
        return result;
      }
    }

    v86 = nrCopyLogObj_560();
    _NRLogWithArgs(v86, 1, "%s%.30s:%-4d -- waiting for full header", "", "NRLinkLinkToNexusLoopPacket", 2398);

    return 1;
  }

  v12 = 0x280D73000uLL;
  v17 = bswap32(*(*(a2 + 8) + 7)) >> 16;
  a3 = v24;
  a7 = v19;
  if (gNRPacketLoggingEnabled)
  {
    goto LABEL_50;
  }

LABEL_29:
  v29 = v17 - *v16 + 43;
  if ((v17 - *v16 + 43) < 0)
  {
    [(NRBluetoothPacketParser *)a1 handleInternalError:a3, a4, a5, a6, a7, a8, v29];
    return 0;
  }

  v30 = a7;
  v31 = a1;
  v32 = a3;
  v33 = v17 + 40;
  v34 = bswap32(v33) >> 16;
  if (*(v12 + 3640) == 1)
  {
    v60 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v101 = v60;
      v100 = os_log_type_enabled(v60, OS_LOG_TYPE_INFO);

      v12 = 0x280D73000;
      if (!v100)
      {
        goto LABEL_31;
      }
    }

    v101 = nrCopyLogObj_560();
    _NRLogWithArgs(v101, 1, "%s%.30s:%-4d -- ipv6 total packet len %u", "", "NRLinkLinkToNexusLoopPacket", 2416, v33);

    v12 = 0x280D73000;
  }

LABEL_31:
  *(*(a2 + 8) + 1) = v34;
  v35 = v32;
  if (*(v12 + 3640) != 1)
  {
    goto LABEL_32;
  }

  v61 = nrCopyLogObj_560();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v101 = v61;
    v100 = os_log_type_enabled(v61, OS_LOG_TYPE_INFO);

    v12 = 0x280D73000;
    if (!v100)
    {
      goto LABEL_32;
    }
  }

  v98 = v33 + 3;
  v72 = nrCopyLogObj_560();
  _NRLogWithArgs(v72, 1, "%s%.30s:%-4d -- expected %d filledIn %u pending %d received %u", "", "NRLinkLinkToNexusLoopPacket", 2421, v98, *v16, v29, a4 - *a5);

  v12 = 0x280D73000;
LABEL_32:
  if (a4 - *a5 < v29)
  {
    if (!*(v12 + 3640))
    {
LABEL_34:
      memcpy((*(a2 + 8) + *(a2 + 32)), (v35 + *a5), a4 - *a5);
      v36 = *a5;
      v37 = a4 - *a5;
      *(a2 + 32) += v37;
      *a5 = v36 + v37;
      return 1;
    }

    v70 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v77 = v70;
      v78 = os_log_type_enabled(v70, OS_LOG_TYPE_INFO);

      v35 = v32;
      if (!v78)
      {
        goto LABEL_34;
      }
    }

    v79 = nrCopyLogObj_560();
    _NRLogWithArgs(v79, 1, "%s%.30s:%-4d -- we have partial packet", "", "NRLinkLinkToNexusLoopPacket", 2452);

    v35 = v32;
    goto LABEL_34;
  }

  v38 = v31;
  v39 = v30;
  if (*(v12 + 3640))
  {
    v71 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v80 = v71;
      v81 = os_log_type_enabled(v71, OS_LOG_TYPE_INFO);

      if (!v81)
      {
        goto LABEL_38;
      }
    }

    v82 = nrCopyLogObj_560();
    _NRLogWithArgs(v82, 1, "%s%.30s:%-4d -- we have full packet", "", "NRLinkLinkToNexusLoopPacket", 2424);
  }

LABEL_38:
  memcpy((*(a2 + 8) + *(a2 + 32)), (v35 + *a5), v29);
  v40 = *(a2 + 32) + v29;
  *(a2 + 32) = v40;
  *a5 += v29;
  *(*(a2 + 8) + v40) = 0;
  v41 = (*(a2 + 32) + 2);
  *(a2 + 32) = v41;
  v103[0] = 0;
  v42 = v102;
  result = NRBluetoothPacketParserLinkToNexusLoopFastPath(v38, a2, *(a2 + 8), v41, v103, v102);
  v43 = v103[0];
  *(a2 + 36) = v103[0];
  if (*(a2 + 32) == v43)
  {
    *(a2 + 32) = 0;
    *(a2 + 43) &= ~8u;
    if (result)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *(a2 + 43) |= 8u;
    if (result)
    {
LABEL_42:
      v44 = result;
      NRLinkLinkToNexusLoopPacket(v38, a2, v35, a4, a5, v42, v39);
      return v44;
    }
  }

  return result;
}

double __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *&result = 136447234;
  *a1 = 136447234;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 2112;
  *(a1 + 32) = a6;
  return result;
}

double __os_log_helper_1_2_4_8_34_8_64_4_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a5;
  return result;
}

void NRBluetoothPacketParserResumeNexusBEOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x200) != 0 && *(a1 + 352))
  {
    *(a1 + 144) = v2 & 0xFFFFFFFFFFFFFDFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 352);

LABEL_6:
      dispatch_resume(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-resume: NexusBEOutput", "", "NRBluetoothPacketParserResumeNexusBEOutputSource", 488);

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 352);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserSuspendNexusVOOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x80) == 0 && *(a1 + 320))
  {
    *(a1 + 144) = v2 | 0x80;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 320);

LABEL_6:
      dispatch_suspend(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusVOOutput", "", "NRBluetoothPacketParserSuspendNexusVOOutputSource", 480);

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 320);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserResumeNexusVOOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x80) != 0 && *(a1 + 320))
  {
    *(a1 + 144) = v2 & 0xFFFFFFFFFFFFFF7FLL;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 320);

LABEL_6:
      dispatch_resume(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-resume: NexusVOOutput", "", "NRBluetoothPacketParserResumeNexusVOOutputSource", 490);

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 320);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserResumeNexusVIOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x100) != 0 && *(a1 + 336))
  {
    *(a1 + 144) = v2 & 0xFFFFFFFFFFFFFEFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 336);

LABEL_6:
      dispatch_resume(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-resume: NexusVIOutput", "", "NRBluetoothPacketParserResumeNexusVIOutputSource", 492);

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 336);

    goto LABEL_6;
  }
}

void sub_25B9B5E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *createStringForNRNexusChannelPriority(uint64_t a1)
{
  if (a1 <= 100)
  {
    if (!a1)
    {
      return @"Invalid";
    }

    if (a1 == 100)
    {
      return @"Voice";
    }
  }

  else
  {
    switch(a1)
    {
      case 'e':
        return @"Video";
      case 'f':
        return @"BestEffort";
      case 'g':
        return @"Background";
    }
  }

  return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", a1];
}

unsigned __int8 *NRBluetoothPacketParserCreate(const unsigned __int8 *a1, void *a2)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (uuid_is_null(a1))
    {
      if (nrCopyLogObj_onceToken_563 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_564, 17, "invalid bluetooth UUID");
      }

      goto LABEL_8;
    }

    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
    if (!v5)
    {
      v18 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v20 = v18;
        v21 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

        if (!v21)
        {
          v4 = 0;
          goto LABEL_18;
        }
      }

      v7 = nrCopyLogObj_560();
      _NRLogWithArgs(v7, 17, "%s called with null btUUID", "NRBluetoothPacketParserCreate");
      v4 = 0;
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    v6 = [[NRBluetoothPacketParser alloc] initWithBluetoothUUID:v5 queue:v3];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      if (copySharedManager_onceToken != -1)
      {
        dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
      }

      v8 = copySharedManager_manager;
      if (copySharedManager_manager)
      {
        v9 = v7;
        v10 = v5;
        v11 = v8;
        os_unfair_lock_lock(v8 + 2);
        [v11[2] setObject:v9 forKeyedSubscript:v10];

        os_unfair_lock_unlock(v8 + 2);
      }

      v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x1797C662uLL);
      if (v12)
      {
        v4 = v12;
        uuid_copy(v12, a1);
        goto LABEL_17;
      }

      v25 = nrCopyLogObj_560();
      v26 = v25;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v27 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

        if (!v27)
        {
          goto LABEL_38;
        }
      }

      v28 = nrCopyLogObj_560();
      _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", "", "NRBluetoothPacketParserCreate", 3105, 1uLL, 0x10uLL);

LABEL_38:
      v29 = _os_log_pack_size();
      v31 = v35 - ((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = __error();
      v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s strict_calloc(%zu, %zu) failed");
      *v33 = 136446722;
      *(v33 + 4) = "NRBluetoothPacketParserCreate";
      *(v33 + 12) = 2048;
      *(v33 + 14) = 1;
      *(v33 + 22) = 2048;
      *(v33 + 24) = 16;
      v34 = nrCopyLogObj_560();
      _NRLogAbortWithPack(v34, v31);
    }

    v19 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v22 = v19;
      v23 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (!v23)
      {
LABEL_32:
        v7 = 0;
        v4 = 0;
        goto LABEL_17;
      }
    }

    v24 = nrCopyLogObj_560();
    _NRLogWithArgs(v24, 17, "%s called with null parser", "NRBluetoothPacketParserCreate");

    goto LABEL_32;
  }

  v14 = nrCopyLogObj_560();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_23:
    v17 = nrCopyLogObj_560();
    _NRLogWithArgs(v17, 17, "%s called with null queue", "NRBluetoothPacketParserCreate");

    goto LABEL_8;
  }

  v15 = v14;
  v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_8:
  v4 = 0;
LABEL_19:

  return v4;
}

void NRBluetoothPacketParserStart(uint64_t a1)
{
  if (a1)
  {
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
    if (v11)
    {
      objc_opt_self();
      if (copySharedManager_onceToken != -1)
      {
        dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
      }

      v1 = copySharedManager_manager;
      if (v1)
      {
        v2 = v1;
        v3 = v11;
        os_unfair_lock_lock(v2 + 2);
        v4 = [*(v2 + 2) objectForKeyedSubscript:v3];

        os_unfair_lock_unlock(v2 + 2);
        if (v4 && *(v4 + 13) != 4)
        {
          dispatch_assert_queue_V2(*(v4 + 64));
          [v4 start];
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v6 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v9 = v6;
        v10 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);

        if (!v10)
        {
          v11 = 0;
          goto LABEL_10;
        }
      }

      v4 = nrCopyLogObj_560();
      _NRLogWithArgs(v4, 17, "%s called with null btUUID", "NRBluetoothPacketParserStart");
    }
  }

  else
  {
    v5 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        return;
      }
    }

    v11 = nrCopyLogObj_560();
    _NRLogWithArgs(v11, 17, "%s called with null parserRef", "NRBluetoothPacketParserStart");
  }

LABEL_10:
}

void NRBluetoothPacketParserCancel(uint64_t a1)
{
  if (a1)
  {
    v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
    if (!v14)
    {
      v9 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v12 = v9;
        v13 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);

        if (!v13)
        {
          v14 = 0;
          goto LABEL_12;
        }
      }

      v4 = nrCopyLogObj_560();
      _NRLogWithArgs(v4, 17, "%s called with null btUUID", "NRBluetoothPacketParserCancel");
      goto LABEL_11;
    }

    objc_opt_self();
    if (copySharedManager_onceToken != -1)
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
    }

    v1 = copySharedManager_manager;
    if (!v1)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v2 = v1;
    v3 = v14;
    os_unfair_lock_lock(v2 + 2);
    v4 = [*(v2 + 2) objectForKeyedSubscript:v3];

    os_unfair_lock_unlock(v2 + 2);
    if (!v4 || *(v4 + 13) == 4)
    {
      goto LABEL_11;
    }

    dispatch_assert_queue_V2(*(v4 + 64));
    [v4 resetContextForPriority:3];
    [v4 resetContextForPriority:2];
    [v4 resetContextForPriority:1];
    [v4 cancel];
    objc_opt_self();
    if (copySharedManager_onceToken == -1)
    {
      v5 = copySharedManager_manager;
      if (!copySharedManager_manager)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
      v5 = copySharedManager_manager;
      if (!copySharedManager_manager)
      {
        goto LABEL_11;
      }
    }

    v6 = v3;
    v7 = v5;
    os_unfair_lock_lock(v5 + 2);
    [v7[2] setObject:0 forKeyedSubscript:v6];

    os_unfair_lock_unlock(v5 + 2);
    goto LABEL_11;
  }

  v8 = nrCopyLogObj_560();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v10 = v8;
    v11 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);

    if (!v11)
    {
      return;
    }
  }

  v14 = nrCopyLogObj_560();
  _NRLogWithArgs(v14, 17, "%s called with null parserRef", "NRBluetoothPacketParserCancel");
LABEL_12:
}

uint64_t NRBluetoothPacketParserCreateReadContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v14 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        return 0;
      }
    }

    v7 = nrCopyLogObj_560();
    _NRLogWithArgs(v7, 17, "%s called with null parserRef");
LABEL_24:
    v12 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
    v15 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_23:
      v7 = nrCopyLogObj_560();
      _NRLogWithArgs(v7, 17, "%s called with null readAvailableCallback");
      goto LABEL_24;
    }

    v19 = v15;
    v20 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

    if (v20)
    {
      goto LABEL_23;
    }

    return 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
  if (v7)
  {
    objc_opt_self();
    if (copySharedManager_onceToken != -1)
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
    }

    v8 = copySharedManager_manager;
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      os_unfair_lock_lock(v9 + 2);
      v11 = [*(v9 + 2) objectForKeyedSubscript:v10];

      os_unfair_lock_unlock(v9 + 2);
      if (v11 && *(v11 + 13) != 4)
      {
        dispatch_assert_queue_V2(*(v11 + 64));
        v12 = [v11 createReadContextForPriority:a2 readAvailableCallback:a3 readAvailableContext:a4];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v16 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v21 = v16;
      v22 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

      if (!v22)
      {
        v7 = 0;
        v12 = 0;
        goto LABEL_12;
      }
    }

    v11 = nrCopyLogObj_560();
    _NRLogWithArgs(v11, 17, "%s called with null btUUID", "NRBluetoothPacketParserCreateReadContext");
    v12 = 0;
  }

LABEL_12:
  return v12;
}

uint64_t NRBluetoothPacketParserCreateWriteContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v14 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        return 0;
      }
    }

    v7 = nrCopyLogObj_560();
    _NRLogWithArgs(v7, 17, "%s called with null parserRef");
LABEL_24:
    v12 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
    v15 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_23:
      v7 = nrCopyLogObj_560();
      _NRLogWithArgs(v7, 17, "%s called with null writeOutputCallback");
      goto LABEL_24;
    }

    v19 = v15;
    v20 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

    if (v20)
    {
      goto LABEL_23;
    }

    return 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
  if (v7)
  {
    objc_opt_self();
    if (copySharedManager_onceToken != -1)
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
    }

    v8 = copySharedManager_manager;
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      os_unfair_lock_lock(v9 + 2);
      v11 = [*(v9 + 2) objectForKeyedSubscript:v10];

      os_unfair_lock_unlock(v9 + 2);
      if (v11 && *(v11 + 13) != 4)
      {
        dispatch_assert_queue_V2(*(v11 + 64));
        v12 = [v11 createWriteContextForPriority:a2 writeOutputCallback:a3 writeOutputContext:a4];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v16 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v21 = v16;
      v22 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

      if (!v22)
      {
        v7 = 0;
        v12 = 0;
        goto LABEL_12;
      }
    }

    v11 = nrCopyLogObj_560();
    _NRLogWithArgs(v11, 17, "%s called with null btUUID", "NRBluetoothPacketParserCreateWriteContext");
    v12 = 0;
  }

LABEL_12:
  return v12;
}

void NRBluetoothPacketParserResetContext(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
    if (!v16)
    {
      v11 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v14 = v11;
        v15 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);

        if (!v15)
        {
          v16 = 0;
          goto LABEL_14;
        }
      }

      v6 = nrCopyLogObj_560();
      _NRLogWithArgs(v6, 17, "%s called with null btUUID", "NRBluetoothPacketParserResetContext");
      goto LABEL_13;
    }

    objc_opt_self();
    if (copySharedManager_onceToken != -1)
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
    }

    v3 = copySharedManager_manager;
    if (!v3)
    {
      v6 = 0;
      goto LABEL_13;
    }

    v4 = v3;
    v5 = v16;
    os_unfair_lock_lock(v4 + 2);
    v6 = [*(v4 + 2) objectForKeyedSubscript:v5];

    os_unfair_lock_unlock(v4 + 2);
    if (!v6)
    {
      goto LABEL_13;
    }

    dispatch_assert_queue_V2(*(v6 + 64));
    [v6 resetContextForPriority:a2];
    if (a2 == 1)
    {
      [v6 cancel];
    }

    if (*(v6 + 680))
    {
      goto LABEL_13;
    }

    [v6 cancel];
    objc_opt_self();
    if (copySharedManager_onceToken == -1)
    {
      v7 = copySharedManager_manager;
      if (!copySharedManager_manager)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
      v7 = copySharedManager_manager;
      if (!copySharedManager_manager)
      {
        goto LABEL_13;
      }
    }

    v8 = v5;
    v9 = v7;
    os_unfair_lock_lock(v7 + 2);
    [v9[2] setObject:0 forKeyedSubscript:v8];

    os_unfair_lock_unlock(v7 + 2);
    goto LABEL_13;
  }

  v10 = nrCopyLogObj_560();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v12 = v10;
    v13 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);

    if (!v13)
    {
      return;
    }
  }

  v16 = nrCopyLogObj_560();
  _NRLogWithArgs(v16, 17, "%s called with null parserRef", "NRBluetoothPacketParserResetContext");
LABEL_14:
}

void NRBluetoothPacketParserGetSlotCount(uint64_t a1, uint64_t a2, _WORD *a3, _WORD *a4)
{
  if (a1)
  {
    if (a3)
    {
      *a3 = 64;
    }

    if (a4)
    {
      *a4 = 16;
    }
  }

  else
  {
    v4 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v5 = v4;
      v6 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);

      if (!v6)
      {
        return;
      }
    }

    v7 = nrCopyLogObj_560();
    _NRLogWithArgs(v7, 17, "%s called with null parserRef", "NRBluetoothPacketParserGetSlotCount");
  }
}

id nrCopyLogObj_672()
{
  if (nrCopyLogObj_onceToken_675 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
  }

  v1 = nrCopyLogObj_sNRLogObj_677;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_680()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_677;
  nrCopyLogObj_sNRLogObj_677 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __nrCopyLogObj_block_invoke_818()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_811;
  nrCopyLogObj_sNRLogObj_811 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id nrCopyLogObj_823()
{
  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  v1 = nrCopyLogObj_sNRLogObj_811;

  return v1;
}

BOOL _NRIsUUIDNonZero(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v2 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v3 = v2;
      v4 = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);

      if (!v4)
      {
        return 0;
      }
    }

    v5 = nrCopyLogObj_823();
    _NRLogWithArgs(v5, 17, "%s called with null nsUUID", "_NRIsUUIDNonZero");

    return 0;
  }

  *uu = 0;
  v7 = 0;
  [a1 getUUIDBytes:uu];
  return uuid_is_null(uu) == 0;
}

id nrCopyLogObj_966()
{
  if (nrCopyLogObj_onceToken_971 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_971, &__block_literal_global_972);
  }

  v1 = nrCopyLogObj_sNRLogObj_973;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_976()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_973;
  nrCopyLogObj_sNRLogObj_973 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __nrCopyLogObj_block_invoke_1061()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1055;
  nrCopyLogObj_sNRLogObj_1055 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id nrCopyLogObj_1074()
{
  if (nrCopyLogObj_onceToken_1053 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
  }

  v1 = nrCopyLogObj_sNRLogObj_1055;

  return v1;
}

void sub_25B9C7434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nrCopyLogObj_block_invoke_1136()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1129;
  nrCopyLogObj_sNRLogObj_1129 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __NRIdentityReferencesMonitorCacheLocked_block_invoke_2(uint64_t a1, int a2)
{
  if (NRIdentityReferencesMonitorCacheLocked_sIdentityReferencesChangeToken == a2)
  {
    os_unfair_lock_lock(&gNRSecKeyProxyCacheLock);
    (*(*(a1 + 32) + 16))();

    os_unfair_lock_unlock(&gNRSecKeyProxyCacheLock);
  }
}

uint64_t __Block_byref_object_copy__1143(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __NRIPCFetchReferencesLocked_block_invoke(uint64_t a1)
{
  v2 = nrXPCCopyIdentityReferences();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

id nrCopyLogObj_1145()
{
  if (nrCopyLogObj_onceToken_1127 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
  }

  v1 = nrCopyLogObj_sNRLogObj_1129;

  return v1;
}

void __NRIPCCopyQueue_block_invoke()
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (_NRShouldDebugAutoRelease_onceToken != -1)
  {
    dispatch_once(&_NRShouldDebugAutoRelease_onceToken, &__block_literal_global_40);
  }

  if (_NRShouldDebugAutoRelease_debugAutoRelease)
  {
    v0 = 0;
  }

  else
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  }

  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  if (!v1)
  {
    v5 = nrCopyLogObj_1145();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (!v8)
      {
        goto LABEL_17;
      }
    }

    v9 = nrCopyLogObj_1145();
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_attr_make_with_qos_class(%u) failed", "", "nr_dispatch_queue_create_with_qos", 208, 25);

LABEL_17:
    v10 = _os_log_pack_size();
    v12 = v25 - ((MEMORY[0x28223BE20](v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v10, *v13, &dword_25B98C000, "%{public}s dispatch_queue_attr_make_with_qos_class(%u) failed");
    *v14 = 136446466;
    *(v14 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v14 + 12) = 1024;
    *(v14 + 14) = 25;
    v15 = nrCopyLogObj_1145();
    _NRLogAbortWithPack(v15, v12);
  }

  v2 = dispatch_queue_create("com.apple.networkrelay.queue.identity-proxy-client", v1);
  if (!v2)
  {
    v6 = nrCopyLogObj_1145();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v16 = v6;
      v17 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v17)
      {
        goto LABEL_20;
      }
    }

    v18 = nrCopyLogObj_1145();
    _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create_with_qos", 212, "com.apple.networkrelay.queue.identity-proxy-client");

LABEL_20:
    v19 = _os_log_pack_size();
    v21 = v25 - ((MEMORY[0x28223BE20](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = __error();
    v23 = _os_log_pack_fill(v21, v19, *v22, &dword_25B98C000, "%{public}s dispatch_queue_create(%s) failed");
    *v23 = 136446466;
    *(v23 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v23 + 12) = 2080;
    *(v23 + 14) = "com.apple.networkrelay.queue.identity-proxy-client";
    v24 = nrCopyLogObj_1145();
    _NRLogAbortWithPack(v24, v21);
  }

  v3 = v2;

  v4 = NRIPCCopyQueue_queue;
  NRIPCCopyQueue_queue = v3;
}

void __NRIdentityReferencesMonitorCacheLocked_block_invoke()
{
  v0 = gNRSecKeyProxies;
  gNRSecKeyProxies = 0;

  v1 = gNRIdentityReferencesCache;
  gNRIdentityReferencesCache = 0;
}

id nrCopyLogObj_1215()
{
  if (nrCopyLogObj_onceToken_1219 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1219, &__block_literal_global_498);
  }

  v1 = nrCopyLogObj_sNRLogObj_1220;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_1222()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1220;
  nrCopyLogObj_sNRLogObj_1220 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *_NRKeyCreateLogString(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v8 = @"[nil]";
    goto LABEL_39;
  }

  if (_NRIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&_NRIsAppleInternal_onceToken, &__block_literal_global_435);
  }

  if (_NRIsAppleInternal_internal == 1 && [v1 length] && objc_msgSend(v1, "length") <= 0xFFFFFFE4)
  {
    v2 = [v1 length];
    v3 = (v2 + 26);
    if (v2 != -26)
    {
      v4 = malloc_type_malloc((v2 + 26), 0x6C03CDABuLL);
      if (v4)
      {
        v5 = v4;
        if (v3 != 1)
        {
          v6 = &aNetworkrelayke[v3 - 2];
          *v4 = 78;
          v5 = v4 + 1;
          if (v6 != "NetworkRelayKeyLogHashSalt")
          {
            v4[1] = 101;
            if (v6 == "etworkRelayKeyLogHashSalt")
            {
              v5 = v4 + 2;
            }

            else
            {
              v4[2] = 116;
              if (v6 == "tworkRelayKeyLogHashSalt")
              {
                v5 = v4 + 3;
              }

              else
              {
                v4[3] = 119;
                if (v6 == "workRelayKeyLogHashSalt")
                {
                  v5 = v4 + 4;
                }

                else
                {
                  v4[4] = 111;
                  if (v6 == "orkRelayKeyLogHashSalt")
                  {
                    v5 = v4 + 5;
                  }

                  else
                  {
                    v4[5] = 114;
                    if (v6 == "rkRelayKeyLogHashSalt")
                    {
                      v5 = v4 + 6;
                    }

                    else
                    {
                      v4[6] = 107;
                      if (v6 == "kRelayKeyLogHashSalt")
                      {
                        v5 = v4 + 7;
                      }

                      else
                      {
                        v4[7] = 82;
                        if (v6 == "RelayKeyLogHashSalt")
                        {
                          v5 = v4 + 8;
                        }

                        else
                        {
                          v4[8] = 101;
                          if (v6 == "elayKeyLogHashSalt")
                          {
                            v5 = v4 + 9;
                          }

                          else
                          {
                            v4[9] = 108;
                            if (v6 == "layKeyLogHashSalt")
                            {
                              v5 = v4 + 10;
                            }

                            else
                            {
                              v4[10] = 97;
                              if (v6 == "ayKeyLogHashSalt")
                              {
                                v5 = v4 + 11;
                              }

                              else
                              {
                                v4[11] = 121;
                                if (v6 == "yKeyLogHashSalt")
                                {
                                  v5 = v4 + 12;
                                }

                                else
                                {
                                  v4[12] = 75;
                                  if (v6 == "KeyLogHashSalt")
                                  {
                                    v5 = v4 + 13;
                                  }

                                  else
                                  {
                                    v4[13] = 101;
                                    if (v6 == "eyLogHashSalt")
                                    {
                                      v5 = v4 + 14;
                                    }

                                    else
                                    {
                                      v4[14] = 121;
                                      if (v6 == "yLogHashSalt")
                                      {
                                        v5 = v4 + 15;
                                      }

                                      else
                                      {
                                        v4[15] = 76;
                                        if (v6 == "LogHashSalt")
                                        {
                                          v5 = v4 + 16;
                                        }

                                        else
                                        {
                                          v4[16] = 111;
                                          if (v6 == "ogHashSalt")
                                          {
                                            v5 = v4 + 17;
                                          }

                                          else
                                          {
                                            v4[17] = 103;
                                            if (v6 == "gHashSalt")
                                            {
                                              v5 = v4 + 18;
                                            }

                                            else
                                            {
                                              v4[18] = 72;
                                              if (v6 == "HashSalt")
                                              {
                                                v5 = v4 + 19;
                                              }

                                              else
                                              {
                                                v4[19] = 97;
                                                if (v6 == "ashSalt")
                                                {
                                                  v5 = v4 + 20;
                                                }

                                                else
                                                {
                                                  v4[20] = 115;
                                                  if (v6 == "shSalt")
                                                  {
                                                    v5 = v4 + 21;
                                                  }

                                                  else
                                                  {
                                                    v4[21] = 104;
                                                    if (v6 == "hSalt")
                                                    {
                                                      v5 = v4 + 22;
                                                    }

                                                    else
                                                    {
                                                      v4[22] = 83;
                                                      if (v6 == "Salt")
                                                      {
                                                        v5 = v4 + 23;
                                                      }

                                                      else
                                                      {
                                                        v4[23] = 97;
                                                        if (v6 == "alt")
                                                        {
                                                          v5 = v4 + 24;
                                                        }

                                                        else
                                                        {
                                                          v4[24] = 108;
                                                          if (v6 == "lt")
                                                          {
                                                            v5 = v4 + 25;
                                                          }

                                                          else
                                                          {
                                                            v4[25] = 116;
                                                            v5 = v4 + 26;
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

        *v5 = 0;
        v20 = v4;
        [v1 getBytes:v4 + 26 length:v3 - 26];
        v35 = 0u;
        v36 = 0u;
        *md = 0u;
        v34 = 0u;
        CC_SHA512(v20, v3, md);
        cc_clear();
        free(v20);
        v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:64];
        v22 = [v21 base64EncodedStringWithOptions:0];
        v23 = objc_alloc(MEMORY[0x277CCACA8]);
        v24 = [v22 substringToIndex:6];
        v7 = [v23 initWithFormat:@":%@", v24];

        goto LABEL_37;
      }

      v25 = nrCopyLogObj_1215();
      v26 = v25;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v27 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

        if (!v27)
        {
LABEL_75:
          v29 = _os_log_pack_size();
          v16 = &md[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0)];
          v31 = __error();
          v32 = _os_log_pack_fill(v16, v29, *v31, &dword_25B98C000, "%{public}s strict allocator failed");
          *v32 = 136446210;
          *(v32 + 4) = "_NRKeyCreateLogString";
LABEL_59:
          v19 = nrCopyLogObj_1215();
          _NRLogAbortWithPack(v19, v16);
        }
      }

      v28 = nrCopyLogObj_1215();
      _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "_NRKeyCreateLogString", 530);

      goto LABEL_75;
    }

    v10 = nrCopyLogObj_1215();
    v11 = v10;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v12)
      {
LABEL_58:
        v14 = _os_log_pack_size();
        v16 = &md[-((MEMORY[0x28223BE20](v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v17 = __error();
        v18 = _os_log_pack_fill(v16, v14, *v17, &dword_25B98C000, "%{public}s strict_malloc called with size 0");
        *v18 = 136446210;
        *(v18 + 4) = "_NRKeyCreateLogString";
        goto LABEL_59;
      }
    }

    v13 = nrCopyLogObj_1215();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: strict_malloc called with size 0", "", "_NRKeyCreateLogString", 530);

    goto LABEL_58;
  }

  v7 = &stru_286D23DB8;
LABEL_37:
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[%llu%@]", objc_msgSend(v1, "length"), v7];

LABEL_39:
  return v8;
}

uint64_t createStringFromNRDeviceProxyProviderType(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = "SHOES";
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v3 = "HTTPConnect";
      goto LABEL_11;
    }

    return [v2 initWithFormat:@"Unknown(%llu)", a1];
  }

  if (!a1)
  {
    v3 = "Default";
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    return [v2 initWithFormat:@"Unknown(%llu)", a1];
  }

  v3 = "MASQUE";
LABEL_11:

  return [v2 initWithUTF8String:v3];
}

uint64_t createStringFromNRDeviceProxyProviderAuthMode(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 == 2)
  {
    v3 = "ImportedPSK";
  }

  else if (a1 == 1)
  {
    v3 = "RawPSK";
  }

  else
  {
    if (a1)
    {
      return [v2 initWithFormat:@"Unknown(%llu)", a1];
    }

    v3 = "Default";
  }

  return [v2 initWithUTF8String:v3];
}

id nrCopyLogObj_1529()
{
  if (nrCopyLogObj_onceToken_1533 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
  }

  v1 = nrCopyLogObj_sNRLogObj_1535;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_1538()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1535;
  nrCopyLogObj_sNRLogObj_1535 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25B9CD9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9CDE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9CE814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9CF114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_25B9CF48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9CF97C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25B9CFFAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t NRCreateStringFromPairingAuthMethod(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = "PIN";
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v3 = "PreviousPairing";
      goto LABEL_11;
    }

    return [v2 initWithFormat:@"Unknown(%zu)", a1];
  }

  if (!a1)
  {
    v3 = "Invalid";
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    return [v2 initWithFormat:@"Unknown(%zu)", a1];
  }

  v3 = "PreSharedKey";
LABEL_11:

  return [v2 initWithUTF8String:v3];
}

id nrCopyLogObj_1710()
{
  if (nrCopyLogObj_onceToken_1721 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
  }

  v1 = nrCopyLogObj_sNRLogObj_1723;

  return v1;
}

void sub_25B9D1A64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

uint64_t __nrCopyLogObj_block_invoke_1727()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1723;
  nrCopyLogObj_sNRLogObj_1723 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25B9D2A34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_25B9D5814(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_25B9D6200(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_25B9D6C0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_25B9D7D28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_25B9D8AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_1876()
{
  if (nrCopyLogObj_onceToken_1880 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
  }

  v1 = nrCopyLogObj_sNRLogObj_1881;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_1885()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1881;
  nrCopyLogObj_sNRLogObj_1881 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

double __os_log_helper_1_2_3_8_34_8_32_8_0(uint64_t a1, uint64_t a2)
{
  *&result = 136446722;
  *a1 = 136446722;
  *(a1 + 4) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
  *(a1 + 12) = 2080;
  *(a1 + 14) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
  *(a1 + 22) = 2048;
  *(a1 + 24) = a2;
  return result;
}

uint64_t __Block_byref_object_copy__1951(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t NRCompanionLinkIsEnabled()
{
  if (nrCopyLogObj_onceToken_1969 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1971, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1971, 0, "%s%.30s:%-4d Querying whether companion link is enabled", "", "NRCompanionLinkIsEnabled", 15);
  }

  IsEnabled = nrXPCCompanionLinkIsEnabled();
  if (nrCopyLogObj_onceToken_1969 == -1)
  {
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
LABEL_8:
      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1971, OS_LOG_TYPE_DEFAULT))
      {
        return IsEnabled;
      }
    }
  }

  v1 = "dis";
  if (IsEnabled)
  {
    v1 = "en";
  }

  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1971, 0, "%s%.30s:%-4d Returning that companion link is %sabled", "", "NRCompanionLinkIsEnabled", 17, v1);
  return IsEnabled;
}

uint64_t __nrCopyLogObj_block_invoke_1979()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1971;
  nrCopyLogObj_sNRLogObj_1971 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t NRDeviceSupportsIDSRestrictedPorts(void *a1)
{
  v1 = a1;
  if (nrCopyLogObj_onceToken_1969 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1971, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1971, 0, "%s%.30s:%-4d Querying whether device supports restricted ports", "", "NRDeviceSupportsIDSRestrictedPorts", 23);
  }

  if (!v1)
  {
    v6 = nrCopyLogObj_1982();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v6;
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
LABEL_20:
        v3 = 0;
        goto LABEL_13;
      }
    }

    v9 = nrCopyLogObj_1982();
    _NRLogWithArgs(v9, 17, "%s called with null device", "NRDeviceSupportsIDSRestrictedPorts");

    goto LABEL_20;
  }

  v2 = [v1 nrDeviceIdentifier];
  v3 = nrXPCSupportsRestrictedPorts(v2);

  if (nrCopyLogObj_onceToken_1969 == -1)
  {
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
LABEL_9:
      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1971, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }
    }
  }

  v4 = "NO";
  if (v3)
  {
    v4 = "YES";
  }

  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1971, 0, "%s%.30s:%-4d Device supports restricted ports: %s", "", "NRDeviceSupportsIDSRestrictedPorts", 26, v4);
LABEL_13:

  return v3;
}

id nrCopyLogObj_1982()
{
  if (nrCopyLogObj_onceToken_1969 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
  }

  v1 = nrCopyLogObj_sNRLogObj_1971;

  return v1;
}

__CFString *createIPv6AddrString(_DWORD *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return @"<NULL>";
  }

  v1 = a1;
  if (*a1)
  {
    v2 = 30;
  }

  else
  {
    v4 = a1[1];
    v2 = 30;
    if (!v4)
    {
      if (v1[2] == -65536)
      {
        v2 = 2;
      }

      else
      {
        v2 = 30;
      }

      v5 = 12;
      if (v1[2] != -65536)
      {
        v5 = 0;
      }

      v1 = (v1 + v5);
    }
  }

  if (inet_ntop(v2, v1, v6, 0x2Eu))
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v6];
  }

  if (nrCopyLogObj_onceToken_1989 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1989, &__block_literal_global_1990);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1991, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1991, 17, "inet_ntop failed");
  }

  return @"<ERROR>";
}

uint64_t __nrCopyLogObj_block_invoke_2001()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1991;
  nrCopyLogObj_sNRLogObj_1991 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *createIPv6AddrStringFromData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6[0] = 0;
    v6[1] = 0;
    if ([v1 length] == 16)
    {
      [v2 getBytes:v6 length:16];
      IPv6AddrString = createIPv6AddrString(v6);
    }

    else
    {
      IPv6AddrString = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<bad length %llu>", objc_msgSend(v2, "length")];
    }

    v4 = IPv6AddrString;
  }

  else
  {
    v4 = @"<nil>";
  }

  return v4;
}

__CFString *createSockaddrString(const sockaddr *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return @"<NULL>";
  }

  sa_len = a1->sa_len;
  if (!a1->sa_len)
  {
    sa_family = a1->sa_family;
    if (!a1->sa_family)
    {
      return @"<EMPTY>";
    }

LABEL_10:
    [MEMORY[0x277CCACA8] stringWithFormat:@"<invalid_%d_%d>", sa_family, sa_len];
    return objc_claimAutoreleasedReturnValue();
  }

  sa_family = a1->sa_family;
  if (sa_len == 1)
  {
    goto LABEL_10;
  }

  if (a1->sa_family <= 0x11u)
  {
    if (sa_family == 1)
    {
      if (sa_len == 2)
      {
        return @"<invalid_un>";
      }

      snprintf(__str, 7uLL, "%%.%lus", sa_len - 2);
      __str[6] = 0;
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:__str];
      v11 = [v9 initWithFormat:v10, a1->sa_data];

      return v11;
    }

    if (sa_family != 2)
    {
LABEL_7:
      [MEMORY[0x277CCACA8] stringWithFormat:@"<unsupported af: %u>", sa_family];
      return objc_claimAutoreleasedReturnValue();
    }

    goto LABEL_13;
  }

  if (sa_family != 18)
  {
    if (sa_family != 30)
    {
      goto LABEL_7;
    }

LABEL_13:
    if (getnameinfo(a1, sa_len, __str, 0x39u, v25, 6u, 10))
    {
      return @"<getnameinfo_fail>";
    }

    v5 = *v25;
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v5 == 48)
    {
      return [v6 initWithUTF8String:__str];
    }

    if (a1->sa_family == 2)
    {
      v7 = @"%s:%s";
    }

    else
    {
      v7 = @"%s.%s";
    }

    return [v6 initWithFormat:v7, __str, v25];
  }

  if (sa_len < 8 || a1->sa_data[3] + a1->sa_data[4] + a1->sa_data[5] + 8 > sa_len)
  {
    return @"<invalid_dl>";
  }

  v13 = [MEMORY[0x277CCAB68] string];
  v14 = v13;
  v15 = a1;
  v16 = a1->sa_data[3];
  if (a1->sa_data[4])
  {
    [v13 appendFormat:@"%x", a1->sa_data[v16 + 6]];
    v15 = a1;
    if (a1->sa_data[4] >= 2u)
    {
      v17 = &a1->sa_data[v16 + 7];
      v18 = 1;
      do
      {
        v19 = *v17++;
        [v14 appendFormat:@":%x", v19];
        v15 = a1;
        ++v18;
      }

      while (v18 < a1->sa_data[4]);
    }

    LODWORD(v16) = v15->sa_data[3];
  }

  if (v16)
  {
    v20 = v15;
    if ([v14 length])
    {
      snprintf(__str, 8uLL, "%%%%%%.%us");
    }

    else
    {
      snprintf(__str, 8uLL, "%%.%us");
    }

    __str[7] = 0;
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:__str];
    [v14 appendFormat:v21, &v20->sa_data[6]];
  }

  else if (*v15->sa_data)
  {
    v22 = v15;
    if ([v14 length])
    {
      v23 = @"%%%d";
    }

    else
    {
      v23 = @"%d";
    }

    [v14 appendFormat:v23, *v22->sa_data];
  }

  if ([v14 length])
  {
    v24 = v14;
  }

  else
  {
    v24 = @"<invalid_dl2>";
  }

  return v24;
}

__CFString *createSockaddrStringFromData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 length];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 bytes];
      if (v4 >= v5->sa_len)
      {
        SockaddrString = createSockaddrString(v5);
      }

      else
      {
        SockaddrString = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<bad sa_len %hhu length %llu>", v5->sa_len, v4];
      }
    }

    else
    {
      SockaddrString = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<bad length %llu>", 0];
    }

    v7 = SockaddrString;
  }

  else
  {
    v7 = @"<nil>";
  }

  return v7;
}

__CFString *createStringFromNRTLVType(int a1)
{
  if (a1 <= 99)
  {
    if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          return @"Encapsulated6LoWPAN";
        case 4:
          return @"IKEv2PointToPoint";
        case 5:
          return @"ControlMessage";
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          return @"Pad0";
        case 1:
          return @"PadN";
        case 2:
          return @"UncompressedIP";
      }
    }

    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 > 102)
  {
    switch(a1)
    {
      case 'g':
        return @"KnownIPv6Hdr_TCP_ECT0";
      case 'h':
        return @"KnownIPv6Hdr_ESP_ClassC";
      case 'i':
        return @"KnownIPv6Hdr_ESP_ClassC_ECT0";
    }

    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 == 100)
  {
    return @"KnownIPv6Hdr_ESP";
  }

  if (a1 == 101)
  {
    return @"KnownIPv6Hdr_ESP_ECT0";
  }

  return @"KnownIPv6Hdr_TCP";
}

__CFString *createIPProtoString(uint64_t a1)
{
  v2 = a1;
  result = @"HOPOPTS";
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      result = @"ICMP";
      break;
    case 2:
      result = @"IGMP";
      break;
    case 3:
      result = @"GGP";
      break;
    case 4:
      result = @"IPV4";
      break;
    case 6:
      result = @"TCP";
      break;
    case 7:
      result = @"ST";
      break;
    case 8:
      result = @"EGP";
      break;
    case 9:
      result = @"PIGP";
      break;
    case 10:
      result = @"RCCMON";
      break;
    case 11:
      result = @"NVPII";
      break;
    case 12:
      result = @"PUP";
      break;
    case 13:
      result = @"ARGUS";
      break;
    case 14:
      result = @"EMCON";
      break;
    case 15:
      result = @"XNET";
      break;
    case 16:
      result = @"CHAOS";
      break;
    case 17:
      result = @"UDP";
      break;
    case 18:
      result = @"MUX";
      break;
    case 19:
      result = @"MEAS";
      break;
    case 20:
      result = @"HMP";
      break;
    case 21:
      result = @"PRM";
      break;
    case 22:
      result = @"IDP";
      break;
    case 23:
      result = @"TRUNK1";
      break;
    case 24:
      result = @"TRUNK2";
      break;
    case 25:
      result = @"LEAF1";
      break;
    case 26:
      result = @"LEAF2";
      break;
    case 27:
      result = @"RDP";
      break;
    case 28:
      result = @"IRTP";
      break;
    case 29:
      result = @"TP";
      break;
    case 30:
      result = @"BLT";
      break;
    case 31:
      result = @"NSP";
      break;
    case 32:
      result = @"INP";
      break;
    case 33:
      result = @"SEP";
      break;
    case 34:
      result = @"3PC";
      break;
    case 35:
      result = @"IDPR";
      break;
    case 36:
      result = @"XTP";
      break;
    case 37:
      result = @"DDP";
      break;
    case 38:
      result = @"CMTP";
      break;
    case 39:
      result = @"TPXX";
      break;
    case 40:
      result = @"IL";
      break;
    case 41:
      result = @"IPV6";
      break;
    case 42:
      result = @"SDRP";
      break;
    case 43:
      result = @"ROUTING";
      break;
    case 44:
      result = @"FRAGMENT";
      break;
    case 45:
      result = @"IDRP";
      break;
    case 46:
      result = @"RSVP";
      break;
    case 47:
      result = @"GRE";
      break;
    case 48:
      result = @"MHRP";
      break;
    case 49:
      result = @"BHA";
      break;
    case 50:
      result = @"ESP";
      break;
    case 51:
      result = @"AH";
      break;
    case 52:
      result = @"INLSP";
      break;
    case 53:
      result = @"SWIPE";
      break;
    case 54:
      result = @"NHRP";
      break;
    case 58:
      result = @"ICMPV6";
      break;
    case 59:
      result = @"NONE";
      break;
    case 60:
      result = @"DSTOPTS";
      break;
    case 61:
      result = @"AHIP";
      break;
    case 62:
      result = @"CFTP";
      break;
    case 63:
      result = @"HELLO";
      break;
    case 64:
      result = @"SATEXPAK";
      break;
    case 65:
      result = @"KRYPTOLAN";
      break;
    case 66:
      result = @"RVD";
      break;
    case 67:
      result = @"IPPC";
      break;
    case 68:
      result = @"ADFS";
      break;
    case 69:
      result = @"SATMON";
      break;
    case 70:
      result = @"VISA";
      break;
    case 71:
      result = @"IPCV";
      break;
    case 72:
      result = @"CPNX";
      break;
    case 73:
      result = @"CPHB";
      break;
    case 74:
      result = @"WSN";
      break;
    case 75:
      result = @"PVP";
      break;
    case 76:
      result = @"BRSATMON";
      break;
    case 77:
      result = @"ND";
      break;
    case 78:
      result = @"WBMON";
      break;
    case 79:
      result = @"WBEXPAK";
      break;
    case 80:
      result = @"EON";
      break;
    case 81:
      result = @"VMTP";
      break;
    case 82:
      result = @"SVMTP";
      break;
    case 83:
      result = @"VINES";
      break;
    case 84:
      result = @"TTP";
      break;
    case 85:
      result = @"IGP";
      break;
    case 86:
      result = @"DGP";
      break;
    case 87:
      result = @"TCF";
      break;
    case 88:
      result = @"IGRP";
      break;
    case 89:
      result = @"OSPFIGP";
      break;
    case 90:
      result = @"SRPC";
      break;
    case 91:
      result = @"LARP";
      break;
    case 92:
      result = @"MTP";
      break;
    case 93:
      result = @"AX25";
      break;
    case 94:
      result = @"IPEIP";
      break;
    case 95:
      result = @"MICP";
      break;
    case 96:
      result = @"SCCSP";
      break;
    case 97:
      result = @"ETHERIP";
      break;
    case 98:
      result = @"ENCAP";
      break;
    case 99:
      result = @"APES";
      break;
    case 100:
      result = @"GMTP";
      break;
    case 103:
      result = @"PIM";
      break;
    case 108:
      result = @"IPCOMP";
      break;
    case 113:
      result = @"PGM";
      break;
    case 132:
      result = @"SCTP";
      break;
    default:
      result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IPProto(%u)", a1];
      break;
  }

  return result;
}

void *createIOVecString(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"ioVec[%u]{", a2];
  if (v2)
  {
    v5 = v2;
    v6 = (a1 + 8);
    do
    {
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 4;
      [v4 appendFormat:@"%p:%@%u;", v8, v7, v9];

      --v5;
    }

    while (v5);
  }

  [v4 appendString:@"}"];
  return v4;
}

void *createIOVecStringWithContents(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"ioVec[%u]{", a2];
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
      objc_msgSend(v6, "appendFormat:", @"(");
      v7 = (a1 + 16 * i);
      if (*(v7 + 2))
      {
        [v6 appendFormat:@"%s%02x", "", **v7];
        if (*(v7 + 2) >= 2u)
        {
          v8 = 1;
          do
          {
            [v6 appendFormat:@"%s%02x", " ", (*v7)[v8++]];
            v9 = *(v7 + 2);
            if (v9 >= 4)
            {
              v9 = 4;
            }
          }

          while (v9 > v8);
        }
      }

      [v6 appendFormat:@":"]);
      [v4 appendFormat:@"%p:%@%u;", *v7, v6, *(v7 + 2)];
    }
  }

  [v4 appendString:@"}"];
  return v4;
}

BOOL isPacketValidIPv6(_BYTE *a1, unsigned int a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 > 0x27)
    {
      return (*a1 & 0xF0) == 96;
    }

    if (gNRPacketLoggingEnabled != 1)
    {
      return 0;
    }

    v4 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v5 = v4;
      v6 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

      if (!v6)
      {
        return 0;
      }
    }

    v7 = nrCopyLogObj_2201();
    _NRLogWithArgs(v7, 1, "%s%.30s:%-4d Packet too short for determining address family", "", "isPacketValidIPv6", 454);

    return 0;
  }

  return result;
}

id nrCopyLogObj_2201()
{
  if (nrCopyLogObj_onceToken_1989 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1989, &__block_literal_global_1990);
  }

  v1 = nrCopyLogObj_sNRLogObj_1991;

  return v1;
}

uint64_t getDSCPFromPacket(_BYTE *a1, unsigned int a2)
{
  result = isPacketValidIPv6(a1, a2);
  if (result)
  {
    return (bswap32(*a1) >> 22) & 0x3F;
  }

  return result;
}

uint64_t getESPSPIFromPacket(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (isPacketValidIPv6(a1, a2) && isNextHeaderValidESP(a1, v2))
  {
    return bswap32(*(a1 + 40));
  }

  else
  {
    return 0;
  }
}

BOOL isNextHeaderValidESP(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 0x28)
    {
      if (gNRPacketLoggingEnabled != 1)
      {
        return 0;
      }

      v5 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v6 = v5;
        v7 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

        if (!v7)
        {
          return 0;
        }
      }

      v8 = nrCopyLogObj_2201();
      _NRLogWithArgs(v8, 1, "%s%.30s:%-4d Packet too short for determining next header", "", "isNextHeaderValidESP", 474);

      return 0;
    }

    return *(a1 + 6) == 50 && a2 > 0x2F;
  }

  return result;
}

uint64_t getESPSequenceNumberFromPacket(uint64_t a1, unsigned int a2)
{
  if (isPacketValidIPv6(a1, a2) && isNextHeaderValidESP(a1, a2))
  {
    return bswap32(*(a1 + 44));
  }

  else
  {
    return 0;
  }
}

__CFString *createPacketString(unsigned __int8 *a1, uint64_t a2)
{
  result = @"nil";
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (a2 > 0x27)
      {
        v5 = objc_alloc(MEMORY[0x277CCAB68]);
        v6 = *a1 >> 4;
        if (v6 == 6)
        {
          v7 = *a1;
          v8 = (bswap32(*a1) >> 22) & 0x3F;
          v9 = &stru_286D23DB8;
          if (v8)
          {
            v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DSCP:0x%02x ", v8];
            v7 = *a1;
          }

          else
          {
            v22 = &stru_286D23DB8;
          }

          v11 = @"CE ";
          if ((v7 & 0x1000) != 0)
          {
            v12 = @"ECT(1) ";
          }

          else
          {
            v11 = @"ECT(0) ";
            v12 = &stru_286D23DB8;
          }

          if ((v7 & 0x2000) != 0)
          {
            v13 = v11;
          }

          else
          {
            v13 = v12;
          }

          v14 = v7 & 0xFFFF0F00;
          v23 = v5;
          if (v14)
          {
            v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"FlowLabel:0x%03x ", bswap32(v14)];
          }

          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          IPv6AddrString = createIPv6AddrString(a1 + 2);
          v17 = createIPv6AddrString(a1 + 6);
          v18 = a1[7];
          v19 = bswap32(*(a1 + 2)) >> 16;
          IPProtoString = createIPProtoString(a1[6]);
          v10 = [v15 initWithFormat:@"%@ -> %@ hlim %u %@%@%@len %u %@", IPv6AddrString, v17, v18, v22, v13, v9, v19, IPProtoString];

          v5 = v23;
        }

        else
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IPv%u", v6];
        }

        v21 = [v5 initWithString:v10];

        if ((v4 & 0xFFF8) != 0x28 && a1[6] == 50)
        {
          [v21 appendFormat:@" SPI 0x%08x seq %u", bswap32(*(a1 + 10)), bswap32(*(a1 + 11))];
        }

        return v21;
      }

      else
      {
        return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IPv%u too short %u", *a1 >> 4, a2];
      }
    }
  }

  return result;
}

__CFString *NRDCreateIPHCString(unsigned __int16 *a1, unsigned int a2)
{
  if (!a1)
  {
    return @"nil";
  }

  v4 = bswap32(*a1);
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v6 = 48;
  if ((v4 & 0x20000) != 0)
  {
    v7 = 49;
  }

  else
  {
    v7 = 48;
  }

  v38 = v7;
  if ((v4 & 0x40000) != 0)
  {
    v8 = 49;
  }

  else
  {
    v8 = 48;
  }

  if ((v4 & 0x80000) != 0)
  {
    v9 = 49;
  }

  else
  {
    v9 = 48;
  }

  v36 = v9;
  v37 = v8;
  if ((v4 & 0x100000) != 0)
  {
    v10 = 49;
  }

  else
  {
    v10 = 48;
  }

  if ((v4 & 0x200000) != 0)
  {
    v11 = 49;
  }

  else
  {
    v11 = 48;
  }

  v34 = v11;
  v35 = v10;
  if ((v4 & 0x400000) != 0)
  {
    v12 = 49;
  }

  else
  {
    v12 = 48;
  }

  if ((v4 & 0x800000) != 0)
  {
    v13 = 49;
  }

  else
  {
    v13 = 48;
  }

  v32 = v13;
  v33 = v12;
  if ((v4 & 0x1000000) != 0)
  {
    v14 = 49;
  }

  else
  {
    v14 = 48;
  }

  if ((v4 & 0x2000000) != 0)
  {
    v15 = 49;
  }

  else
  {
    v15 = 48;
  }

  v30 = v15;
  v31 = v14;
  if ((v4 & 0x4000000) != 0)
  {
    v16 = 49;
  }

  else
  {
    v16 = 48;
  }

  if ((v4 & 0x8000000) != 0)
  {
    v17 = 49;
  }

  else
  {
    v17 = 48;
  }

  v28 = v17;
  v29 = v16;
  if ((v4 & 0x10000000) != 0)
  {
    v18 = 49;
  }

  else
  {
    v18 = 48;
  }

  if ((v4 & 0x20000000) != 0)
  {
    v19 = 49;
  }

  else
  {
    v19 = 48;
  }

  v27 = v18;
  if ((v4 & 0x40000000) != 0)
  {
    v20 = 49;
  }

  else
  {
    v20 = 48;
  }

  if (v4 >> 16 < 0)
  {
    v6 = 49;
  }

  v21 = [v5 initWithFormat:@"[D(%c%c%c) TF(%c%c) NH(%c) HLIM(%c%c) CID(%c) SAC(%c) SAM(%c%c) M(%c) DAC(%c) DAM(%c%c)", v6, v20, v19, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, HIWORD(v4) & 1 | 0x30];
  v22 = v21;
  if (a2 >= 3)
  {
    [v21 appendString:@" "];
    v23 = a2 - 2;
    v24 = a1 + 1;
    do
    {
      v25 = *v24;
      v24 = (v24 + 1);
      [v22 appendFormat:@"%02x", v25];
      --v23;
    }

    while (v23);
  }

  [v22 appendString:@"]"];
  return v22;
}

uint64_t nrMaxPacketLengthForTLV(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v4 = v3;
      v5 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v6 = nrCopyLogObj_2201();
    _NRLogWithArgs(v6, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: tlvLen > 0", "", "nrMaxPacketLengthForTLV", 1021);

LABEL_7:
    v7 = _os_log_pack_size();
    v9 = v13 - ((MEMORY[0x28223BE20](v7, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v7, *v10, &dword_25B98C000, "%{public}s Assertion Failed: tlvLen > 0");
    *v11 = 136446210;
    *(v11 + 4) = "nrMaxPacketLengthForTLV";
    v12 = nrCopyLogObj_2201();
    _NRLogAbortWithPack(v12, v9);
  }

  return (a2 + 40);
}

uint64_t nrPacketTo6LoWPAN(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v198 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v30 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v46 = v30;
      v47 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

      if (!v47)
      {
LABEL_74:
        v49 = _os_log_pack_size();
        v51 = &v185 - ((MEMORY[0x28223BE20](v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
        v52 = *__error();
        v53 = _os_log_pack_fill(v51, v49, v52, &dword_25B98C000, "%{public}s Assertion Failed: (packetBuffer) != ((void*)0)");
LABEL_81:
        *v53 = 136446210;
        v66 = "nrPacketTo6LoWPAN";
LABEL_180:
        *(v53 + 4) = v66;
        goto LABEL_187;
      }
    }

    v48 = nrCopyLogObj_2201();
    _NRLogWithArgs(v48, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (packetBuffer) != ((void*)0)", "", "nrPacketTo6LoWPAN", 1303);

    goto LABEL_74;
  }

  if (!a2)
  {
    v31 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v54 = v31;
      v55 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (!v55)
      {
LABEL_77:
        v57 = _os_log_pack_size();
        v51 = &v185 - ((MEMORY[0x28223BE20](v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
        v59 = *__error();
        v53 = _os_log_pack_fill(v51, v57, v59, &dword_25B98C000, "%{public}s Assertion Failed: packetLength > 0");
        goto LABEL_81;
      }
    }

    v56 = nrCopyLogObj_2201();
    _NRLogWithArgs(v56, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: packetLength > 0", "", "nrPacketTo6LoWPAN", 1304);

    goto LABEL_77;
  }

  if (!a3)
  {
    v32 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v60 = v32;
      v61 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (!v61)
      {
LABEL_80:
        v63 = _os_log_pack_size();
        v51 = &v185 - ((MEMORY[0x28223BE20](v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
        v65 = *__error();
        v53 = _os_log_pack_fill(v51, v63, v65, &dword_25B98C000, "%{public}s Assertion Failed: (ioVecs) != ((void*)0)");
        goto LABEL_81;
      }
    }

    v62 = nrCopyLogObj_2201();
    _NRLogWithArgs(v62, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (ioVecs) != ((void*)0)", "", "nrPacketTo6LoWPAN", 1305);

    goto LABEL_80;
  }

  if (!a4)
  {
    v33 = nrCopyLogObj_2201();
    v34 = "nrPacketTo6LoWPAN";
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v33;
      v68 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

      if (!v68)
      {
LABEL_84:
        v70 = _os_log_pack_size();
        v51 = &v185 - ((MEMORY[0x28223BE20](v70, v71) + 15) & 0xFFFFFFFFFFFFFFF0);
        v72 = *__error();
        v73 = _os_log_pack_fill(v51, v70, v72, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 0");
LABEL_186:
        *v73 = 136446210;
        *(v73 + 4) = v34;
LABEL_187:
        v143 = nrCopyLogObj_2201();
        _NRLogAbortWithPack(v143, v51);
      }
    }

    v69 = nrCopyLogObj_2201();
    _NRLogWithArgs(v69, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nrPacketTo6LoWPAN", 1306);

    goto LABEL_84;
  }

  if (!a5)
  {
    v35 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v74 = v35;
      v75 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      if (!v75)
      {
LABEL_87:
        v77 = _os_log_pack_size();
        v51 = &v185 - ((MEMORY[0x28223BE20](v77, v78) + 15) & 0xFFFFFFFFFFFFFFF0);
        v79 = *__error();
        v53 = _os_log_pack_fill(v51, v77, v79, &dword_25B98C000, "%{public}s Assertion Failed: (srcAddr) != ((void*)0)");
LABEL_91:
        *v53 = 136446210;
        v66 = "nrPacketTo6LoWPANTLV";
        goto LABEL_180;
      }
    }

    v76 = nrCopyLogObj_2201();
    _NRLogWithArgs(v76, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (srcAddr) != ((void*)0)", "", "nrPacketTo6LoWPANTLV", 1039);

    goto LABEL_87;
  }

  if (!a6)
  {
    v36 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v80 = v36;
      v81 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

      if (!v81)
      {
LABEL_90:
        v83 = _os_log_pack_size();
        v51 = &v185 - ((MEMORY[0x28223BE20](v83, v84) + 15) & 0xFFFFFFFFFFFFFFF0);
        v85 = *__error();
        v53 = _os_log_pack_fill(v51, v83, v85, &dword_25B98C000, "%{public}s Assertion Failed: (dstAddr) != ((void*)0)");
        goto LABEL_91;
      }
    }

    v82 = nrCopyLogObj_2201();
    _NRLogWithArgs(v82, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (dstAddr) != ((void*)0)", "", "nrPacketTo6LoWPANTLV", 1040);

    goto LABEL_90;
  }

  if (a2 <= 0x27)
  {
    v37 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v86 = v37;
      v87 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);

      if (!v87)
      {
        return 0;
      }
    }

    v88 = nrCopyLogObj_2201();
    _NRLogWithArgs(v88, 1, "%s%.30s:%-4d no 6lo compression - too short %u");
LABEL_108:

    return 0;
  }

  v9 = *a1 >> 4;
  if (v9 != 6)
  {
    if (v9 != 4)
    {
      v89 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v100 = v89;
        v101 = os_log_type_enabled(v89, OS_LOG_TYPE_INFO);

        if (!v101)
        {
          return 0;
        }
      }

      v88 = nrCopyLogObj_2201();
      _NRLogWithArgs(v88, 1, "%s%.30s:%-4d no 6lo compression - not IPv6 - v=%u");
      goto LABEL_108;
    }

    v38 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v97 = v38;
      v98 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);

      if (!v98)
      {
        return 0;
      }
    }

    v88 = nrCopyLogObj_2201();
    IPProtoString = createIPProtoString(a1[9]);
    _NRLogWithArgs(v88, 1, "%s%.30s:%-4d no 6lo compression - IPv4 - %@", "", "nrPacketTo6LoWPANTLV", 1050, IPProtoString);

    goto LABEL_108;
  }

  if (gNRPacketLoggingEnabled == 1)
  {
    v39 = a3;
    v40 = a4;
    v41 = a5;
    v42 = a7;
    v43 = a6;
    v44 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v90 = v44;
      v91 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);

      a6 = v43;
      a7 = v42;
      a5 = v41;
      a4 = v40;
      a3 = v39;
      if (!v91)
      {
        goto LABEL_10;
      }
    }

    v92 = nrCopyLogObj_2201();
    PacketString = createPacketString(a1, a2);
    _NRLogWithArgs(v92, 1, "%s%.30s:%-4d Got [%@] total len %u", "", "nrPacketTo6LoWPANTLV", 1056, PacketString, a2);

    a3 = v39;
    a4 = v40;
    a5 = v41;
    a7 = v42;
    a6 = v43;
  }

LABEL_10:
  v10 = (a2 - 40);
  if (v10 != bswap32(*(a1 + 2)) >> 16)
  {
    v45 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_99:
      v88 = nrCopyLogObj_2201();
      _NRLogWithArgs(v88, 1, "%s%.30s:%-4d Avoiding compression of strange length payload %u expected %u", "", "nrPacketTo6LoWPANTLV", 1060, bswap32(*(a1 + 2)) >> 16, (a2 - 40));
      goto LABEL_108;
    }

    v94 = v45;
    v95 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);

    if (v95)
    {
      goto LABEL_99;
    }

    return 0;
  }

  v11 = a1 + 8;
  v13 = *(a1 + 1) != *a5 || *(a1 + 2) != *(a5 + 8);
  v14 = a1 + 24;
  v16 = *(a1 + 3) != *a6 || *(a1 + 4) != *(a6 + 8);
  memset(v197, 0, sizeof(v197));
  v196 = 0u;
  v194 = 0;
  memset(v193, 0, sizeof(v193));
  v195 = 96;
  v17 = *a1;
  v18 = bswap32(*a1);
  if ((v18 & 0xFFFFF) != 0)
  {
    if ((v18 & 0xFC00000) != 0)
    {
      WORD1(v193[0]) = WORD1(a1);
      LOBYTE(v193[0]) = v18 >> 20;
      BYTE1(v193[0]) = BYTE1(a1) & 0xF;
      v21 = 4;
      v20 = 96;
    }

    else
    {
      v20 = 104;
      v195 = 104;
      LOWORD(v193[0]) = *(a1 + 1);
      BYTE2(v193[0]) = a1[3];
      v96 = v193[0] & 0xF | ((v17 >> 13) << 7);
      LOBYTE(v193[0]) = v96;
      if ((v17 & 0x1000) != 0)
      {
        LOBYTE(v193[0]) = v96 | 0x40;
        v21 = 3;
        v20 = 104;
      }

      else
      {
        v21 = 3;
      }
    }
  }

  else if ((v18 & 0xFF00000) != 0)
  {
    v19 = v18 >> 20;
    v20 = 112;
    v195 = 112;
    LOBYTE(v193[0]) = v19;
    v21 = 1;
  }

  else
  {
    v21 = 0;
    v20 = 120;
    v195 = 120;
  }

  *(v193 | v21) = a1[6];
  v22 = v21 + 1;
  v23 = a1[7];
  switch(v23)
  {
    case 64:
      v24 = v20 | 2;
      break;
    case 255:
      v24 = v20 | 3;
      break;
    case 1:
      v24 = v20 | 1;
      break;
    default:
      *(v193 | v22) = v23;
      v22 = v21 + 2;
      if (v13)
      {
        goto LABEL_30;
      }

LABEL_111:
      v27 = 48;
      LOBYTE(v196) = 48;
      goto LABEL_112;
  }

  v195 = v24;
  if (!v13)
  {
    goto LABEL_111;
  }

LABEL_30:
  if (a7 && *v11 == *a5 && (*(a1 + 18) == *(a5 + 10) ? (v25 = *(a1 + 11) == *(a5 + 14)) : (v25 = 0), v25))
  {
    v27 = 96;
    LOBYTE(v196) = 96;
    v29 = (v193 | v22);
    v28 = *(a1 + 8);
  }

  else
  {
    if (*v11 != 254 || (a1[9] & 0xC0) != 0x80)
    {
      v27 = 0;
      *(v193 | v22) = *v11;
      v22 = v22 | 0x10;
      goto LABEL_112;
    }

    if (*v11 != 33022 || *(a1 + 14) != 0xFEFF0000000000)
    {
      v27 = 16;
      LOBYTE(v196) = 16;
      *(v193 | v22) = *(a1 + 2);
      v22 = (v22 + 8);
      goto LABEL_112;
    }

    v27 = 32;
    LOBYTE(v196) = 32;
    v28 = *(a1 + 11);
    v29 = (v193 | v22);
  }

  *v29 = v28;
  v22 = (v22 + 2);
LABEL_112:
  v103 = *v14;
  v190 = a2;
  if (v103 == 255)
  {
    LOBYTE(v196) = v27 | 8;
    if (!(*v14 ^ 0x2FFLL | *(a1 + 31)))
    {
      LOBYTE(v196) = v27 | 0xB;
      *(v193 + v22) = a1[39];
      v22 = (v22 + 1);
      goto LABEL_135;
    }

    if (!a1[36])
    {
      LOBYTE(v196) = v27 | 0xA;
      *(v193 + v22) = a1[25];
      v163 = v193 + (v22 + 1);
      *v163 = *(a1 + 37);
      v163[2] = a1[39];
      v22 = (v22 + 4);
      goto LABEL_135;
    }

    if (!a1[34])
    {
      LOBYTE(v196) = v27 | 9;
      *(v193 + v22) = a1[25];
      v164 = v193 + (v22 + 1);
      *v164 = *(a1 + 35);
      v164[4] = a1[39];
      v22 = (v22 + 6);
      goto LABEL_135;
    }

    goto LABEL_134;
  }

  if (!v16)
  {
    LOBYTE(v196) = v27 | 3;
    goto LABEL_135;
  }

  if (a7 && *v14 == *a6 && *(a1 + 34) == *(a6 + 10) && *(a1 + 19) == *(a6 + 14))
  {
    LOBYTE(v196) = v27 | 6;
    v106 = *(a1 + 16);
    goto LABEL_130;
  }

  if (v103 != 254 || (a1[25] & 0xC0) != 0x80)
  {
LABEL_134:
    *(v193 + v22) = *v14;
    v22 = (v22 + 16);
    goto LABEL_135;
  }

  if (*v14 == 33022 && *(a1 + 30) == 0xFEFF0000000000)
  {
    LOBYTE(v196) = v27 | 2;
    v106 = *(a1 + 19);
LABEL_130:
    *(v193 + v22) = v106;
    v22 = (v22 + 2);
    goto LABEL_135;
  }

  LOBYTE(v196) = v27 | 1;
  *(v193 + v22) = *(a1 + 4);
  v22 = (v22 + 8);
LABEL_135:
  v107 = 0;
  v189 = a4;
  v191 = a3;
  v192 = a4;
  v108 = a4 - 1;
  v109 = (a3 + 8);
  do
  {
    if (*v109 >= 2 - v107)
    {
      v110 = 2 - v107;
    }

    else
    {
      v110 = *v109;
    }

    memcpy(*(v109 - 1), &v195 + v107, v110);
    v107 += v110;
    v111 = v107 > 1 || v108-- == 0;
    v109 += 2;
  }

  while (!v111);
  if (v107 != 2)
  {
    v129 = nrCopyLogObj_2201();
    v34 = "nrWriteBufferToIOVec";
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v137 = v129;
      v138 = os_log_type_enabled(v129, OS_LOG_TYPE_ERROR);

      if (!v138)
      {
LABEL_185:
        v140 = _os_log_pack_size();
        v51 = &v185 - ((MEMORY[0x28223BE20](v140, v141) + 15) & 0xFFFFFFFFFFFFFFF0);
        v142 = *__error();
        v73 = _os_log_pack_fill(v51, v140, v142, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length");
        goto LABEL_186;
      }
    }

    v139 = nrCopyLogObj_2201();
    _NRLogWithArgs(v139, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length", "", "nrWriteBufferToIOVec", 384);

    goto LABEL_185;
  }

  v112 = 0;
  v114 = v191;
  v113 = v192;
  v115 = (v191 + 8);
  v116 = 2;
  while (1)
  {
    v117 = *v115;
    if (!v116)
    {
      goto LABEL_151;
    }

    if (v116 <= v117)
    {
      break;
    }

    v116 -= v117;
LABEL_147:
    v115 += 4;
    if (!--v113)
    {
      goto LABEL_156;
    }
  }

  if (v116 >= v117)
  {
LABEL_155:
    v116 = 0;
    goto LABEL_147;
  }

LABEL_151:
  v118 = v117 - v116;
  if (v118 >= v22 - v112)
  {
    v119 = v22 - v112;
  }

  else
  {
    v119 = v118;
  }

  memcpy((*(v115 - 1) + v116), v193 + v112, v119);
  v112 += v119;
  if (v112 < v22)
  {
    goto LABEL_155;
  }

LABEL_156:
  if (v112 != v22)
  {
    goto LABEL_173;
  }

  if (!v10)
  {
    goto LABEL_170;
  }

  v120 = 0;
  v121 = (v191 + 8);
  v122 = v192;
  v123 = v22 + 2;
  while (2)
  {
    v124 = *v121;
    if (v123)
    {
      if (v123 > v124)
      {
        v123 -= v124;
      }

      else
      {
        if (v123 < v124)
        {
          break;
        }

LABEL_168:
        v123 = 0;
      }

      v121 += 4;
      if (!--v122)
      {
        goto LABEL_169;
      }

      continue;
    }

    break;
  }

  v125 = v124 - v123;
  if (v125 >= v10 - v120)
  {
    v126 = v10 - v120;
  }

  else
  {
    v126 = v125;
  }

  memcpy((*(v121 - 1) + v123), &a1[v120 + 40], v126);
  v120 += v126;
  if (v120 < v10)
  {
    goto LABEL_168;
  }

LABEL_169:
  v114 = v191;
  if (v120 != v10)
  {
LABEL_173:
    v128 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v130 = v128;
      v131 = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);

      if (!v131)
      {
LABEL_179:
        v133 = _os_log_pack_size();
        v51 = &v185 - ((MEMORY[0x28223BE20](v133, v134) + 15) & 0xFFFFFFFFFFFFFFF0);
        v135 = __error();
        v53 = _os_log_pack_fill(v51, v133, *v135, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length");
        *v53 = 136446210;
        v66 = "nrWriteBufferToIOVec";
        goto LABEL_180;
      }
    }

    v132 = nrCopyLogObj_2201();
    _NRLogWithArgs(v132, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length", "", "nrWriteBufferToIOVec", 384);

    goto LABEL_179;
  }

LABEL_170:
  v127 = v10 + v22 + 2;
  if (gNRPacketLoggingEnabled != 1)
  {
    return v127;
  }

  v136 = nrCopyLogObj_2201();
  if (sNRCopyLogToStdErr == 1)
  {

    goto LABEL_189;
  }

  v144 = v136;
  v145 = os_log_type_enabled(v136, OS_LOG_TYPE_INFO);

  if (v145)
  {
LABEL_189:
    v146 = nrCopyLogObj_2201();
    v147 = createPacketString(a1, v190);
    v187 = NRDCreateIPHCString(&v195, 2u);
    v188 = v147;
    v186 = &v185;
    if (v127)
    {
      v148 = malloc_type_malloc(v127, 0x87367FC4uLL);
      if (v148)
      {
        v149 = v148;
        v185 = &v185;
        v150 = 0;
        v151 = (v114 + 8);
        v152 = 3;
        v153 = v190;
        while (1)
        {
          v154 = *v151;
          if (!v152)
          {
            goto LABEL_197;
          }

          if (v152 <= v154)
          {
            break;
          }

          v152 -= v154;
LABEL_193:
          v151 += 4;
          if (!--v192)
          {
            goto LABEL_202;
          }
        }

        if (v152 < v154)
        {
LABEL_197:
          v155 = v154 - v152;
          if (v155 >= v127 - v150)
          {
            v156 = v127 - v150;
          }

          else
          {
            v156 = v155;
          }

          memcpy(&v149[v150], (*(v151 - 1) + v152), v156);
          v150 = (v156 + v150);
          if (v150 >= v127)
          {
LABEL_202:
            if (v150 == v127)
            {
              v157 = v146;
              v158 = objc_alloc(MEMORY[0x277CBEA90]);
              v159 = [v158 initWithBytesNoCopy:v149 length:v127 freeWhenDone:{1, v185, v186}];
              goto LABEL_204;
            }

            v165 = nrCopyLogObj_2201();
            v166 = v165;
            if (sNRCopyLogToStdErr == 1)
            {

              goto LABEL_213;
            }

            v167 = os_log_type_enabled(v165, OS_LOG_TYPE_ERROR);

            if (v167)
            {
LABEL_213:
              v168 = nrCopyLogObj_2201();
              IOVecString = createIOVecString(v191, v189);
              _NRLogWithArgs(v168, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v150, v127, 3, IOVecString);
            }

            v170 = _os_log_pack_size();
            v172 = &v185 - ((MEMORY[0x28223BE20](v170, v171) + 15) & 0xFFFFFFFFFFFFFFF0);
            v173 = __error();
            v174 = _os_log_pack_fill(v172, v170, *v173, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", v185, v186);
            v175 = createIOVecString(v191, v189);
            __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v174, "nrWriteIOVecToBuffer", v150, v127, 3, v175);
            v176 = nrCopyLogObj_2201();
            _NRLogAbortWithPack(v176, v172);
          }
        }

        v152 = 0;
        goto LABEL_193;
      }

      v177 = nrCopyLogObj_2201();
      v178 = v177;
      v34 = "createNSDataFromTLVIOVec";
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v179 = os_log_type_enabled(v177, OS_LOG_TYPE_ERROR);

        if (!v179)
        {
LABEL_219:
          v181 = _os_log_pack_size();
          v51 = &v185 - ((MEMORY[0x28223BE20](v181, v182) + 15) & 0xFFFFFFFFFFFFFFF0);
          v183 = *__error();
          v73 = _os_log_pack_fill(v51, v181, v183, &dword_25B98C000, "%{public}s strict allocator failed");
          goto LABEL_186;
        }
      }

      v180 = nrCopyLogObj_2201();
      _NRLogWithArgs(v180, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "createNSDataFromTLVIOVec", 423);

      goto LABEL_219;
    }

    v157 = v146;
    v159 = objc_alloc_init(MEMORY[0x277CBEA90]);
    v153 = v190;
LABEL_204:
    v160 = _NRCreateDataString(v159);
    v184 = v22;
    v161 = v187;
    v162 = v188;
    _NRLogWithArgs(v157, 1, "%s%.30s:%-4d Used 6LowPAN IPHC to compress %u to %u (inline %u, no tlv) - %@ %@ %@", "", "nrPacketTo6LoWPANTLV", 1242, v153, v127, v184, v188, v187, v160);
  }

  return v127;
}

void *createIKEv2PacketString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v12 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
LABEL_22:
        v3 = 0;
        goto LABEL_17;
      }
    }

    v15 = nrCopyLogObj_2201();
    _NRLogWithArgs(v15, 17, "%s called with null data", "createIKEv2PacketString");

    goto LABEL_22;
  }

  if ([v1 length] > 0x1B)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"["];
    v4 = [v2 bytes];
    v5 = v4[18] - 34;
    if (v5 < 0xB && ((0x61Fu >> v5) & 1) != 0)
    {
      v6 = *(&off_27996B440 + (v4[18] - 34));
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UNKNOWN_MSG_TYPE(%u)", v4[18]];
    }

    [v3 appendString:v6];
    if (v4[17] != 32)
    {
      [v3 appendFormat:@" vers %02X", v4[17]];
    }

    HIDWORD(v8) = v4[19];
    LODWORD(v8) = HIDWORD(v8);
    v7 = v8 >> 3;
    if (v7 < 6 && ((0x33u >> v7) & 1) != 0)
    {
      v9 = *(&off_27996B498 + v7);
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown Flags(%u)", v4[19]];
    }

    [v3 appendFormat:@" %@", v9];
    [v3 appendFormat:@" id %u", bswap32(*(v4 + 5))];
    v10 = bswap32(*(v4 + 6));
    if (v10 != [v2 length])
    {
      [v3 appendFormat:@" len %u", v10];
    }

    [v3 appendString:@" "];
    [v3 appendFormat:@"%02X", *v4];
    [v3 appendFormat:@"%02X", v4[1]];
    [v3 appendFormat:@"%02X", v4[2]];
    [v3 appendFormat:@"%02X", v4[3]];
    [v3 appendFormat:@"%02X", v4[4]];
    [v3 appendFormat:@"%02X", v4[5]];
    [v3 appendFormat:@"%02X", v4[6]];
    [v3 appendFormat:@"%02X", v4[7]];
    [v3 appendString:@"-"];
    [v3 appendFormat:@"%02X", v4[8]];
    [v3 appendFormat:@"%02X", v4[9]];
    [v3 appendFormat:@"%02X", v4[10]];
    [v3 appendFormat:@"%02X", v4[11]];
    [v3 appendFormat:@"%02X", v4[12]];
    [v3 appendFormat:@"%02X", v4[13]];
    [v3 appendFormat:@"%02X", v4[14]];
    [v3 appendFormat:@"%02X", v4[15]];
    [v3 appendString:@"]"];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[Invalid len %u]", objc_msgSend(v2, "length")];
  }

LABEL_17:

  return v3;
}

__CFString *createStringFromThermalPressureLevel(uint64_t a1)
{
  if (a1 > 29)
  {
    if (a1 == 30)
    {
      return @"Heavy";
    }

    if (a1 != 40)
    {
      if (a1 == 50)
      {
        return @"Sleeping";
      }

      return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", a1];
    }

    return @"Trapping";
  }

  else
  {
    if (!a1)
    {
      return @"Nominal";
    }

    if (a1 != 10)
    {
      if (a1 == 20)
      {
        return @"Moderate";
      }

      return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", a1];
    }

    return @"Light";
  }
}

__CFString *createStringFromNRXPCType(unint64_t a1)
{
  if (a1 < 0x3A && ((0x3FFFFFFFFFFFCFFuLL >> a1) & 1) != 0)
  {
    return off_27996B930[a1];
  }

  else
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
  }
}

__CFString *createStringFromNRXPCRes(uint64_t a1)
{
  if (a1 <= -3002)
  {
    if (a1 <= -3006)
    {
      switch(a1)
      {
        case -9999:
          return @"FailureUnimplemented";
        case -3007:
          return @"FailureDeviceAlreadyPaired";
        case -3006:
          return @"FailureTransportPairingFailed";
        default:
          return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
      }
    }

    else if (a1 > -3004)
    {
      if (a1 == -3003)
      {
        return @"FailureOperationAlreadyInProgress";
      }

      else
      {
        return @"FailureOperationFailed";
      }
    }

    else if (a1 == -3005)
    {
      return @"FailureIncorrectAuthenticationData";
    }

    else
    {
      return @"FailureOperationTimedOut";
    }
  }

  else
  {
    switch(a1)
    {
      case -2019:
        result = @"FailureXPCError";
        break;
      case -2018:
        result = @"FailureCopyIDSDeviceIDFailed";
        break;
      case -2017:
        result = @"FailurePairingClientFailed";
        break;
      case -2016:
        result = @"FailurePairingAttemptFixedInterfaceMode";
        break;
      case -2015:
        result = @"FailureBabelRoutes";
        break;
      case -2014:
        result = @"FailureInvalidOperationOnUnregisteredDevice";
        break;
      case -2013:
        result = @"FailureIKEPairingDidNotConnect";
        break;
      case -2012:
        result = @"FailureFileWriteFailed";
        break;
      case -2011:
        result = @"FailureNoBestTestingDevice";
        break;
      case -2010:
        result = @"FailureMonitorConnectionLost";
        break;
      case -2009:
        result = @"FailureCopyDeviceListFailed";
        break;
      case -2008:
        result = @"FailureNRUUIDIsUnknown";
        break;
      case -2007:
        result = @"FailureAsyncBadXPCResponse";
        break;
      case -2006:
        result = @"FailureResolveNoLink";
        break;
      case -2005:
        result = @"FailureInvalidInput";
        break;
      case -2004:
        result = @"FailureLinkStatus";
        break;
      case -2003:
        result = @"FailureInvalidType";
        break;
      case -2002:
        result = @"FailureMissingEntitlement";
        break;
      case -2001:
        result = @"FailureUnknown";
        break;
      case -2000:
        result = @"AsyncInProgress";
        break;
      default:
        if (a1 == -3001)
        {
          result = @"FailureInvalidState";
        }

        else
        {
          if (a1)
          {
            return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
          }

          result = @"Success";
        }

        break;
    }
  }

  return result;
}

id nrCopyLogObj_2646()
{
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  v1 = nrCopyLogObj_sNRLogObj_2653;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_2655()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_2653;
  nrCopyLogObj_sNRLogObj_2653 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

char *nrXPCSendPingCopyResponse()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v21 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v21;
      v24 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_78;
      }
    }

    v25 = nrCopyLogObj_2646();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_78:
    v26 = _os_log_pack_size();
    v28 = &__strerrbuf[-((MEMORY[0x28223BE20](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v26, *v29, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v30, "nr_xpc_dictionary_create");
    v31 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v31, v28);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 1uLL);
  v2 = nrXPCSendSyncInner("nrXPCSendPingCopyResponse", v1);
  v3 = v2;
  if (!v2)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v22;
      v33 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
    goto LABEL_32;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      string = xpc_dictionary_get_string(v3, "PingMessage");
      if (string)
      {
        string = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
      }

      goto LABEL_34;
    }

    v10 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v11 = nrCopyLogObj_2646();
        _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v12 = nrCopyLogObj_sNRLogObj_2653;
    if (!v10)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v12;
        v18 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

        if (!v18)
        {
          goto LABEL_32;
        }
      }

      v19 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCSendPingCopyResponse", 523, v10, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v15 = nrCopyLogObj_2646();
    v16 = createStringFromNRXPCRes(v10);
    _NRLogWithArgs(v15, 17, "received internal failure result code: [%lld] %@", v10, v16);

    goto LABEL_32;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    string = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCSendPingCopyResponse", 523);
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  string = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (string)
  {
    free(string);
LABEL_33:
    string = 0;
  }

LABEL_34:

  return string;
}

xpc_object_t nrXPCSendSyncInner(const char *a1, void *a2)
{
  v3 = a2;
  v4 = nrXPCCopyConnection();
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v6 = xpc_connection_send_message_with_reply_sync(v4, v3);
  v7 = MEMORY[0x277D863F0];
  if (v6 == MEMORY[0x277D863F0])
  {
    v10 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v10;
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v12)
      {
        goto LABEL_10;
      }
    }

    v13 = nrCopyLogObj_2646();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", "", "nrXPCSendSyncInner", 420, a1, 1);

LABEL_10:
    v8 = xpc_connection_send_message_with_reply_sync(v5, v3);

    if (v8 != v7)
    {
      goto LABEL_4;
    }

    v14 = nrCopyLogObj_2646();
    v15 = v14;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v16 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v17 = nrCopyLogObj_2646();
    _NRLogWithArgs(v17, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", "", "nrXPCSendSyncInner", 420, a1, 2);

LABEL_15:
    v8 = xpc_connection_send_message_with_reply_sync(v5, v3);

    if (v8 != v7)
    {
      goto LABEL_4;
    }

    v18 = nrCopyLogObj_2646();
    v19 = v18;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v20 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (!v20)
      {
        goto LABEL_20;
      }
    }

    v21 = nrCopyLogObj_2646();
    _NRLogWithArgs(v21, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", "", "nrXPCSendSyncInner", 420, a1, 3);

LABEL_20:
    v8 = xpc_connection_send_message_with_reply_sync(v5, v3);

    if (v8 != v7)
    {
      goto LABEL_4;
    }

    v22 = nrCopyLogObj_2646();
    v23 = v22;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    v25 = nrCopyLogObj_2646();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", "", "nrXPCSendSyncInner", 420, a1, 4);

LABEL_25:
    v8 = xpc_connection_send_message_with_reply_sync(v5, v3);

    if (v8 != v7)
    {
      goto LABEL_4;
    }

    v26 = nrCopyLogObj_2646();
    v27 = v26;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v28 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (!v28)
      {
LABEL_30:
        v8 = MEMORY[0x277D863F0];
        goto LABEL_4;
      }
    }

    v29 = nrCopyLogObj_2646();
    _NRLogWithArgs(v29, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", "", "nrXPCSendSyncInner", 420, a1, 5);

    goto LABEL_30;
  }

  v8 = v6;
LABEL_4:

  return v8;
}

id nrXPCCopyConnection()
{
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  v0 = nrXPCCopyQueue_nrXPCQueue;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2664;
  v11 = __Block_byref_object_dispose__2665;
  v12 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __nrXPCCopyConnection_block_invoke;
  v4[3] = &unk_27996B8C0;
  v5 = v0;
  v6 = &v7;
  v1 = v0;
  dispatch_sync(v1, v4);
  v2 = v8[5];

  _Block_object_dispose(&v7, 8);
  return v2;
}

uint64_t __Block_byref_object_copy__2664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __nrXPCCopyConnection_block_invoke(uint64_t a1)
{
  v2 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
  if (nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
  {
    goto LABEL_2;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.terminusd", *(a1 + 32), 2uLL);
  v4 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
  nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection = mach_service;

  if (nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
  {
    v5 = MEMORY[0x25F8746E0]();
    v6 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
    if (v5 == MEMORY[0x277D86450])
    {
      v7 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      v8 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __nrXPCCopyConnection_block_invoke_2;
      handler[3] = &unk_27996B898;
      v11 = v7;
      v9 = v7;
      xpc_connection_set_event_handler(v8, handler);
      xpc_connection_activate(nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection);

      v2 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      if (!nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
      {
        return;
      }

      goto LABEL_2;
    }

    if (nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
    {
      nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection = 0;

      v2 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      if (nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
      {
LABEL_2:
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
      }
    }
  }
}

uint64_t __nrXPCCopyConnection_block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = MEMORY[0x25F8746E0]();
  v4 = v9;
  if (v9 != MEMORY[0x277D863F0])
  {
    v5 = v3 != MEMORY[0x277D86480] || nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection == 0;
    if (!v5 && *(a1 + 32) == nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
    {
      xpc_connection_cancel(nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection);
      v7 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection = 0;

      goto LABEL_16;
    }

    if (v3 == MEMORY[0x277D86468])
    {
      v6 = MEMORY[0x25F874580](v9);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || (v3 = os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT), v3))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "unexpected message from %s: %s", "com.apple.terminusd", v6);
      }

      v4 = v9;
      if (v6)
      {
        free(v6);
LABEL_16:
        v4 = v9;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t nrXPCTestNRLinkDirectorMessage()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v21 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v21;
      v24 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_77;
      }
    }

    v25 = nrCopyLogObj_2646();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_77:
    v26 = _os_log_pack_size();
    v28 = &__strerrbuf[-((MEMORY[0x28223BE20](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v26, *v29, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v30, "nr_xpc_dictionary_create");
    v31 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v31, v28);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x22uLL);
  v2 = nrXPCSendSyncInner("nrXPCTestNRLinkDirectorMessage", v1);
  v3 = v2;
  if (!v2)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v22;
      v33 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
    goto LABEL_32;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      v5 = xpc_dictionary_get_BOOL(v3, "TestNRLinkDirectorMessage");
      goto LABEL_34;
    }

    v10 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v11 = nrCopyLogObj_2646();
        _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v12 = nrCopyLogObj_sNRLogObj_2653;
    if (!v10)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v12;
        v18 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

        if (!v18)
        {
          goto LABEL_32;
        }
      }

      v19 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCTestNRLinkDirectorMessage", 536, v10, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v15 = nrCopyLogObj_2646();
    v16 = createStringFromNRXPCRes(v10);
    _NRLogWithArgs(v15, 17, "received internal failure result code: [%lld] %@", v10, v16);

    goto LABEL_32;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v5 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCTestNRLinkDirectorMessage", 536);
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (v5)
  {
    free(v5);
LABEL_33:
    v5 = 0;
  }

LABEL_34:

  return v5;
}

BOOL nrXPCCompanionLinkDefault()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v22;
      v25 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_82;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v27 = _os_log_pack_size();
    v29 = &__strerrbuf[-((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x19uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkDefault", v1);
  v3 = v2;
  if (!v2)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v23;
      v6 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);

      if (!v6)
      {
        goto LABEL_62;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received nil response");
    goto LABEL_60;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v3, "Result");
    v8 = v7;
    if (!v7)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v7) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v8);
    if (!value)
    {
      v6 = 1;
      goto LABEL_35;
    }

    v10 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v14 = nrCopyLogObj_sNRLogObj_2653;
      if (!v10)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v18 = v14;
          v19 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

          if (!v19)
          {
            goto LABEL_34;
          }
        }

        v20 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v10);
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionLinkDefault", 545, v10, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v15 = v14;
        v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

        if (!v16)
        {
LABEL_34:
          v6 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v11 = nrCopyLogObj_2646();
      v17 = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v11, 17, "received internal failure result code: [%lld] %@", v10, v17);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v11 = nrCopyLogObj_2646();
      _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionLinkDefault", 545);
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v5 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v5);
      }

      if (v5)
      {
        goto LABEL_11;
      }

LABEL_61:
      v6 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v6 = 0;
    goto LABEL_62;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v5);
  }

  if (!v5)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v5);
  v6 = 0;
LABEL_62:

  return v6;
}

BOOL nrXPCCompanionLinkEnable()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v22;
      v25 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_82;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v27 = _os_log_pack_size();
    v29 = &__strerrbuf[-((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 2uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkEnable", v1);
  v3 = v2;
  if (!v2)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v23;
      v6 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);

      if (!v6)
      {
        goto LABEL_62;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received nil response");
    goto LABEL_60;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v3, "Result");
    v8 = v7;
    if (!v7)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v7) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v8);
    if (!value)
    {
      v6 = 1;
      goto LABEL_35;
    }

    v10 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v14 = nrCopyLogObj_sNRLogObj_2653;
      if (!v10)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v18 = v14;
          v19 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

          if (!v19)
          {
            goto LABEL_34;
          }
        }

        v20 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v10);
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionLinkEnable", 554, v10, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v15 = v14;
        v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

        if (!v16)
        {
LABEL_34:
          v6 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v11 = nrCopyLogObj_2646();
      v17 = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v11, 17, "received internal failure result code: [%lld] %@", v10, v17);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v11 = nrCopyLogObj_2646();
      _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionLinkEnable", 554);
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v5 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v5);
      }

      if (v5)
      {
        goto LABEL_11;
      }

LABEL_61:
      v6 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v6 = 0;
    goto LABEL_62;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v5);
  }

  if (!v5)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v5);
  v6 = 0;
LABEL_62:

  return v6;
}

BOOL nrXPCCompanionLinkDisable()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v22;
      v25 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_82;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v27 = _os_log_pack_size();
    v29 = &__strerrbuf[-((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 3uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkDisable", v1);
  v3 = v2;
  if (!v2)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v23;
      v6 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);

      if (!v6)
      {
        goto LABEL_62;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received nil response");
    goto LABEL_60;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v3, "Result");
    v8 = v7;
    if (!v7)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v7) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v8);
    if (!value)
    {
      v6 = 1;
      goto LABEL_35;
    }

    v10 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v14 = nrCopyLogObj_sNRLogObj_2653;
      if (!v10)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v18 = v14;
          v19 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

          if (!v19)
          {
            goto LABEL_34;
          }
        }

        v20 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v10);
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionLinkDisable", 563, v10, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v15 = v14;
        v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

        if (!v16)
        {
LABEL_34:
          v6 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v11 = nrCopyLogObj_2646();
      v17 = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v11, 17, "received internal failure result code: [%lld] %@", v10, v17);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v11 = nrCopyLogObj_2646();
      _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionLinkDisable", 563);
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v5 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v5);
      }

      if (v5)
      {
        goto LABEL_11;
      }

LABEL_61:
      v6 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v6 = 0;
    goto LABEL_62;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v5);
  }

  if (!v5)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v5);
  v6 = 0;
LABEL_62:

  return v6;
}

BOOL nrXPCCompanionEnableBluetoothPacketParser(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x2AuLL);
  xpc_dictionary_set_BOOL(v3, "EnableBluetoothPacketParser", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionEnableBluetoothPacketParser", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionEnableBluetoothPacketParser", 573, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionEnableBluetoothPacketParser", 573);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

uint64_t nrXPCCompanionLinkIsEnabled()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v21 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v21;
      v24 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_77;
      }
    }

    v25 = nrCopyLogObj_2646();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_77:
    v26 = _os_log_pack_size();
    v28 = &__strerrbuf[-((MEMORY[0x28223BE20](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v26, *v29, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v30, "nr_xpc_dictionary_create");
    v31 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v31, v28);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0xCuLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkIsEnabled", v1);
  v3 = v2;
  if (!v2)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v22;
      v33 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
    goto LABEL_32;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      v5 = xpc_dictionary_get_BOOL(v3, "CompanionLinkIsEnabled");
      goto LABEL_34;
    }

    v10 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v11 = nrCopyLogObj_2646();
        _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v12 = nrCopyLogObj_sNRLogObj_2653;
    if (!v10)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v12;
        v18 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

        if (!v18)
        {
          goto LABEL_32;
        }
      }

      v19 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionLinkIsEnabled", 582, v10, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v15 = nrCopyLogObj_2646();
    v16 = createStringFromNRXPCRes(v10);
    _NRLogWithArgs(v15, 17, "received internal failure result code: [%lld] %@", v10, v16);

    goto LABEL_32;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v5 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionLinkIsEnabled", 582);
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (v5)
  {
    free(v5);
LABEL_33:
    v5 = 0;
  }

LABEL_34:

  return v5;
}

uint64_t nrXPCSupportsRestrictedPorts(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v27 = v24;
      v28 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v28)
      {
        goto LABEL_81;
      }
    }

    v29 = nrCopyLogObj_2646();
    _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_81:
    v30 = _os_log_pack_size();
    v32 = &uuid[-((MEMORY[0x28223BE20](v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v33 = __error();
    v34 = _os_log_pack_fill(v32, v30, *v33, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v34, "nr_xpc_dictionary_create");
    v35 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v35, v32);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x23uLL);
  v4 = v3;
  if (v1)
  {
    *uuid = 0;
    v43 = 0;
    [v1 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "DeviceIdentifier", uuid);
    goto LABEL_4;
  }

  v25 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v36 = v25;
    v37 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

    if (!v37)
    {
      goto LABEL_4;
    }
  }

  v38 = nrCopyLogObj_2646();
  _NRLogWithArgs(v38, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_4:
  v5 = nrXPCSendSyncInner("nrXPCSupportsRestrictedPorts", v4);
  v6 = v5;
  if (!v5)
  {
    v26 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v39 = v26;
      v40 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);

      if (!v40)
      {
        goto LABEL_35;
      }
    }

    v10 = nrCopyLogObj_2646();
    _NRLogWithArgs(v10, 17, "received nil response");
    goto LABEL_34;
  }

  v7 = MEMORY[0x25F8746E0](v5);
  if (v7 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v6, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {

      v8 = xpc_dictionary_get_BOOL(v6, "SupportsRestrictedPorts");
      goto LABEL_36;
    }

    v13 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, uuid, 0x80uLL))
      {
        uuid[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v14 = nrCopyLogObj_2646();
        _NRLogWithArgs(v14, 17, "received failure result code: [%d] %s", v13, uuid);
      }

      goto LABEL_34;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v15 = nrCopyLogObj_sNRLogObj_2653;
    if (!v13)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v20 = v15;
        v21 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

        if (!v21)
        {
          goto LABEL_34;
        }
      }

      v22 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v13);
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCSupportsRestrictedPorts", 592, v13, StringFromNRXPCRes);

      goto LABEL_34;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v16 = v15;
      v17 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (!v17)
      {
LABEL_34:

        goto LABEL_35;
      }
    }

    v18 = nrCopyLogObj_2646();
    v19 = createStringFromNRXPCRes(v13);
    _NRLogWithArgs(v18, 17, "received internal failure result code: [%lld] %@", v13, v19);

    goto LABEL_34;
  }

  if (v7 != MEMORY[0x277D86480])
  {
    v8 = MEMORY[0x25F874580](v6);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_12;
  }

  if (v6 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_35;
  }

  if (v6 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCSupportsRestrictedPorts", 592);
    }

    goto LABEL_35;
  }

  if (v6 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v10 = nrCopyLogObj_2646();
    _NRLogWithArgs(v10, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_34;
  }

  v8 = MEMORY[0x25F874580](v6);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_12:
  if (v8)
  {
    free(v8);
LABEL_35:
    v8 = 0;
  }

LABEL_36:

  return v8;
}

void nrXPCRefreshCompanionProxyAgent()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v6 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v6;
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = nrCopyLogObj_2646();
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_12:
    v10 = _os_log_pack_size();
    v12 = &v17[-1] - ((MEMORY[0x28223BE20](v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v10, *v13, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v14, "nr_xpc_dictionary_create");
    v15 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v15, v12);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x24uLL);
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  v2 = nrXPCCopyQueue_nrXPCQueue;
  v3 = v1;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
  v17[3] = &unk_27996B8E8;
  v18 = &__block_literal_global_415;
  v4 = v17;
  v5 = nrXPCCopyConnection();
  if (v5)
  {
    nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v5, v3, v2, v4, 1u);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __nrXPCSendAsyncInner_block_invoke;
    block[3] = &unk_27996B870;
    v20 = v4;
    dispatch_async(v2, block);
  }
}

void __nrXPCSendAsyncOnlyResultCode_block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v31 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v31;
      v33 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
LABEL_107:
        v12 = *(*(a1 + 32) + 16);
        goto LABEL_58;
      }
    }

    v34 = nrCopyLogObj_2646();
    _NRLogWithArgs(v34, 17, "received nil response");

    goto LABEL_107;
  }

  v5 = MEMORY[0x25F8746E0](v3);
  v6 = MEMORY[0x277D86468];
  if (v5 == MEMORY[0x277D86468])
  {
    v10 = xpc_dictionary_get_value(v4, "Result");
    v9 = v10;
    if (!v10)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

LABEL_36:
      if (v4 != MEMORY[0x277D863F0])
      {
        if (v4 != MEMORY[0x277D863F8])
        {
          if (v4 != MEMORY[0x277D86420])
          {
            if (MEMORY[0x25F8746E0](v4) == v6)
            {
              string = xpc_dictionary_get_string(v4, "ErrorDescription");
              xpc_dictionary_get_int64(v4, "Result");
              if (string)
              {
                v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
              }

              else
              {
                v11 = @"Received bad XPC response";
              }

              goto LABEL_41;
            }

LABEL_40:
            v11 = @"Received bad XPC response";
LABEL_41:
            (*(*(a1 + 32) + 16))();

LABEL_100:
            goto LABEL_101;
          }

LABEL_98:
          v20 = *(*(a1 + 32) + 16);
          goto LABEL_99;
        }

LABEL_97:
        v20 = *(*(a1 + 32) + 16);
        goto LABEL_99;
      }

      goto LABEL_96;
    }

    if (MEMORY[0x25F8746E0](v10) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_36;
    }

    value = xpc_int64_get_value(v9);
    if (!value)
    {

      (*(*(a1 + 32) + 16))();
      goto LABEL_101;
    }

    v14 = value;
    if (value >> 31)
    {
      if ((value | 2) == 0xFFFFF822)
      {
        v18 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v25 = v18;
          v26 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

          if (!v26)
          {
            goto LABEL_90;
          }
        }

        v23 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v14);
        _NRLogWithArgs(v23, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCSendAsyncOnlyResultCode_block_invoke", 513, v14, StringFromNRXPCRes);
      }

      else
      {
        v24 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v28 = v24;
          v29 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

          if (!v29)
          {
            goto LABEL_90;
          }
        }

        v23 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v14);
        _NRLogWithArgs(v23, 17, "received internal failure result code: [%lld] %@", v14, StringFromNRXPCRes);
      }
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v15 = nrCopyLogObj_sNRLogObj_2653;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v21 = v15;
        v22 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

        if (!v22)
        {
          goto LABEL_90;
        }
      }

      v23 = nrCopyLogObj_2646();
      _NRLogWithArgs(v23, 17, "received failure result code: [%d] %s", v14, __strerrbuf);
    }

LABEL_90:
    if (v4 != MEMORY[0x277D863F0])
    {
      if (v4 != MEMORY[0x277D863F8])
      {
        if (v4 != MEMORY[0x277D86420])
        {
          if (MEMORY[0x25F8746E0](v4) == v6)
          {
            v30 = xpc_dictionary_get_string(v4, "ErrorDescription");
            xpc_dictionary_get_int64(v4, "Result");
            if (v30)
            {
              v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v30];
            }

            else
            {
              v11 = @"Received bad XPC response";
            }

            goto LABEL_41;
          }

          goto LABEL_40;
        }

        goto LABEL_98;
      }

      goto LABEL_97;
    }

LABEL_96:
    v20 = *(*(a1 + 32) + 16);
LABEL_99:
    v20();
    goto LABEL_100;
  }

  v7 = MEMORY[0x277D863F0];
  if (v5 != MEMORY[0x277D86480])
  {
    v8 = MEMORY[0x25F874580](v4);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

LABEL_9:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_11;
  }

  if (v4 != MEMORY[0x277D863F0])
  {
    if (v4 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCSendAsyncOnlyResultCode_block_invoke", 513);
      }
    }

    else
    {
      if (v4 != MEMORY[0x277D86420])
      {
        v8 = MEMORY[0x25F874580](v4);
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
        }

        goto LABEL_9;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v17 = nrCopyLogObj_2646();
        _NRLogWithArgs(v17, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
      }
    }

LABEL_11:
    if (v4 != v7)
    {
      if (v4 == MEMORY[0x277D863F8])
      {
        v12 = *(*(a1 + 32) + 16);
      }

      else
      {
        if (v4 != MEMORY[0x277D86420])
        {
          if (MEMORY[0x25F8746E0](v4) == v6)
          {
            v16 = xpc_dictionary_get_string(v4, "ErrorDescription");
            xpc_dictionary_get_int64(v4, "Result");
            if (v16)
            {
              v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v16];
            }

            else
            {
              v9 = @"Received bad XPC response";
            }
          }

          else
          {
            v9 = @"Received bad XPC response";
          }

          v20 = *(*(a1 + 32) + 16);
          goto LABEL_99;
        }

        v12 = *(*(a1 + 32) + 16);
      }

      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
  }

LABEL_56:
  v12 = *(*(a1 + 32) + 16);
LABEL_58:
  v12();
LABEL_101:
}

void nrXPCSendAsyncInnerRec(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (a6 >= 6)
  {
    (*(v14 + 2))(v14, MEMORY[0x277D863F0]);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __nrXPCSendAsyncInnerRec_block_invoke;
    v16[3] = &unk_27996B910;
    v20 = v14;
    v21 = a1;
    v22 = a6;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    xpc_connection_send_message_with_reply(v17, v18, v19, v16);
  }
}

void __nrXPCSendAsyncInnerRec_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != MEMORY[0x277D863F0])
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
    return;
  }

  v5 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_8:
    v8 = nrCopyLogObj_2646();
    _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", "", "nrXPCSendAsyncInnerRec_block_invoke", 445, *(a1 + 64), *(a1 + 72));

    goto LABEL_9;
  }

  v6 = v5;
  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 72) + 1;

  nrXPCSendAsyncInnerRec(v9, v11, v12, v13, v10, v14);
}

uint64_t __nrXPCRefreshCompanionProxyAgent_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = v4;
  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    v6 = v4;
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    v6 = v8;
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || (v5 = os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT), v6 = v8, v5))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Refresh generation response %lld (%@)", "", "nrXPCRefreshCompanionProxyAgent_block_invoke", 601, a2, v6);
    v6 = v8;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

char *nrXPCCompanionLinkCopyStatus()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v21 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v21;
      v24 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_78;
      }
    }

    v25 = nrCopyLogObj_2646();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_78:
    v26 = _os_log_pack_size();
    v28 = &__strerrbuf[-((MEMORY[0x28223BE20](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v26, *v29, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v30, "nr_xpc_dictionary_create");
    v31 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v31, v28);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 4uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkCopyStatus", v1);
  v3 = v2;
  if (!v2)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v22;
      v33 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
    goto LABEL_32;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      string = xpc_dictionary_get_string(v3, "CompanionLinkStatusMessage");
      if (string)
      {
        string = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
      }

      goto LABEL_34;
    }

    v10 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v11 = nrCopyLogObj_2646();
        _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v12 = nrCopyLogObj_sNRLogObj_2653;
    if (!v10)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v12;
        v18 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

        if (!v18)
        {
          goto LABEL_32;
        }
      }

      v19 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionLinkCopyStatus", 610, v10, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v15 = nrCopyLogObj_2646();
    v16 = createStringFromNRXPCRes(v10);
    _NRLogWithArgs(v15, 17, "received internal failure result code: [%lld] %@", v10, v16);

    goto LABEL_32;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    string = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionLinkCopyStatus", 610);
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  string = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (string)
  {
    free(string);
LABEL_33:
    string = 0;
  }

LABEL_34:

  return string;
}

BOOL NRDiagnosticSaveNetworkRelayStatusToDirectory(void *a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v7 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v7;
      v11 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v11)
      {
LABEL_31:
        v13 = _os_log_pack_size();
        v15 = v31 - ((MEMORY[0x28223BE20](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = *__error();
        v17 = _os_log_pack_fill(v15, v13, v16, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL directoryPath");
        goto LABEL_38;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL directoryPath", "", "NRDiagnosticSaveNetworkRelayStatusToDirectory", 676, "NRDiagnosticSaveNetworkRelayStatusToDirectory");

    goto LABEL_31;
  }

  v2 = v1;
  if (![v1 length])
  {
    v8 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v18 = v8;
      v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (!v19)
      {
LABEL_34:
        v21 = _os_log_pack_size();
        v15 = v31 - ((MEMORY[0x28223BE20](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = *__error();
        v17 = _os_log_pack_fill(v15, v21, v23, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL directoryPath.length");
        goto LABEL_38;
      }
    }

    v20 = nrCopyLogObj_2646();
    _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL directoryPath.length", "", "NRDiagnosticSaveNetworkRelayStatusToDirectory", 677, "NRDiagnosticSaveNetworkRelayStatusToDirectory");

    goto LABEL_34;
  }

  v3 = [v2 UTF8String];
  if (!v3)
  {
    v9 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v9;
      v25 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
LABEL_37:
        v27 = _os_log_pack_size();
        v15 = v31 - ((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = *__error();
        v17 = _os_log_pack_fill(v15, v27, v29, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL directoryPathC");
LABEL_38:
        *v17 = 136446466;
        *(v17 + 4) = "NRDiagnosticSaveNetworkRelayStatusToDirectory";
        *(v17 + 12) = 2080;
        *(v17 + 14) = "NRDiagnosticSaveNetworkRelayStatusToDirectory";
        v30 = nrCopyLogObj_2646();
        _NRLogAbortWithPack(v30, v15);
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL directoryPathC", "", "NRDiagnosticSaveNetworkRelayStatusToDirectory", 679, "NRDiagnosticSaveNetworkRelayStatusToDirectory");

    goto LABEL_37;
  }

  v4 = v3;
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saving diagnostic status to directory %s", "", "NRDiagnosticSaveNetworkRelayStatusToDirectory", 681, v4);
  }

  v5 = nrSaveNetworkRelayStatusToDirectory(v2);
  if (!v5)
  {
    if (nrCopyLogObj_onceToken_2652 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_19;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

LABEL_19:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Failed to save diagnostic status to directory %s");
    goto LABEL_20;
  }

  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_14:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saved diagnostic status to directory %s");
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_14;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_14;
  }

LABEL_20:

  return v5 != 0;
}

id nrSaveNetworkRelayStatusToDirectory(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0;
  if ([v2 fileExistsAtPath:v1 isDirectory:&v7] && (v7 & 1) != 0)
  {
LABEL_17:
    v4 = [v1 stringByAppendingPathComponent:@"companion_link_status_phone.txt"];
    if (nrSaveNetworkRelayStatusToFile(v4))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Creating temporary directory at %@", "", "nrSaveNetworkRelayStatusToDirectory", 647, v1);
  }

  v6 = 0;
  [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v6];
  v3 = v6;
  if (!v3)
  {
    if (nrCopyLogObj_onceToken_2652 == -1)
    {
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
LABEL_15:
        if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }
      }
    }

    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Created temporary directory at %@", "", "nrSaveNetworkRelayStatusToDirectory", 657, v1);
    goto LABEL_17;
  }

  v4 = v3;
  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_12:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d Failed to create directory at %@: %@", "", "nrSaveNetworkRelayStatusToDirectory", 654, v1, v4);
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

LABEL_18:

  v4 = 0;
LABEL_19:

  return v4;
}

BOOL nrSaveNetworkRelayStatusToFile(void *a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 UTF8String];
  if (!v2)
  {
    v31 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v34 = v31;
      v35 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (!v35)
      {
LABEL_90:
        v37 = _os_log_pack_size();
        v39 = &__strerrbuf[-((MEMORY[0x28223BE20](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v40 = __error();
        v41 = _os_log_pack_fill(v39, v37, *v40, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL filePathC");
        *v41 = 136446466;
        *(v41 + 4) = "nrSaveNetworkRelayStatusToFile";
        *(v41 + 12) = 2080;
        *(v41 + 14) = "nrSaveNetworkRelayStatusToFile";
        goto LABEL_94;
      }
    }

    v36 = nrCopyLogObj_2646();
    _NRLogWithArgs(v36, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL filePathC", "", "nrSaveNetworkRelayStatusToFile", 621, "nrSaveNetworkRelayStatusToFile");

    goto LABEL_90;
  }

  v3 = v2;
  v4 = open(v2, 1794, 420);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = v6;
      xpc_dictionary_set_uint64(v6, "Type", 0x21uLL);
      xpc_dictionary_set_fd(v7, "CompanionLinkStatusDumpToFileDescriptor", v5);
      xpc_dictionary_set_string(v7, "CompanionLinkStatusDumpToFilePath", v3);
      v8 = nrXPCSendSyncInner("nrSaveNetworkRelayStatusToFile", v7);
      close(v5);
      if (!v8)
      {
        v33 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v50 = v33;
          v11 = os_log_type_enabled(v33, OS_LOG_TYPE_FAULT);

          if (!v11)
          {
            goto LABEL_67;
          }
        }

        v18 = nrCopyLogObj_2646();
        _NRLogWithArgs(v18, 17, "received nil response");
        goto LABEL_65;
      }

      v9 = MEMORY[0x25F8746E0](v8);
      if (v9 != MEMORY[0x277D86468])
      {
        if (v9 != MEMORY[0x277D86480])
        {
          v10 = MEMORY[0x25F874580](v8);
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10);
          }

          if (v10)
          {
LABEL_13:
            free(v10);
            v11 = 0;
LABEL_67:

            goto LABEL_68;
          }

LABEL_66:
          v11 = 0;
          goto LABEL_67;
        }

        if (v8 == MEMORY[0x277D863F0])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
            v11 = 0;
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        if (v8 == MEMORY[0x277D863F8])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          v18 = nrCopyLogObj_2646();
          _NRLogWithArgs(v18, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrSaveNetworkRelayStatusToFile", 637);
        }

        else
        {
          if (v8 != MEMORY[0x277D86420])
          {
            v10 = MEMORY[0x25F874580](v8);
            if (nrCopyLogObj_onceToken_2652 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
            }

            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
            {
              v14 = nrCopyLogObj_2646();
              _NRLogWithArgs(v14, 17, "received returned unknown XPC error %s", v10);
            }

            if (v10)
            {
              goto LABEL_13;
            }

            goto LABEL_66;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_66;
          }

          v18 = nrCopyLogObj_2646();
          _NRLogWithArgs(v18, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
        }

LABEL_65:

        v11 = 0;
        goto LABEL_67;
      }

      v12 = xpc_dictionary_get_value(v8, "Result");
      v13 = v12;
      if (!v12)
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
        }

        goto LABEL_42;
      }

      if (MEMORY[0x25F8746E0](v12) != MEMORY[0x277D86498])
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
        }

        goto LABEL_42;
      }

      value = xpc_int64_get_value(v13);
      if (!value)
      {
        v11 = 1;
        goto LABEL_43;
      }

      v16 = value;
      if (!(value >> 31))
      {
        if (strerror_r(value, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v17 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {

LABEL_74:
          v23 = nrCopyLogObj_2646();
          _NRLogWithArgs(v23, 17, "received failure result code: [%d] %s", v16, __strerrbuf);
LABEL_79:

          goto LABEL_42;
        }

        v21 = v17;
        v22 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);

        if (v22)
        {
          goto LABEL_74;
        }

LABEL_42:
        v11 = 0;
LABEL_43:

        goto LABEL_67;
      }

      v20 = nrCopyLogObj_2646();
      if (!v16)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v27 = v20;
          v28 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

          if (!v28)
          {
            goto LABEL_42;
          }
        }

        v29 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v16);
        _NRLogWithArgs(v29, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrSaveNetworkRelayStatusToFile", 637, v16, StringFromNRXPCRes);

        goto LABEL_42;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v24 = v20;
        v25 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);

        if (!v25)
        {
          goto LABEL_42;
        }
      }

      v23 = nrCopyLogObj_2646();
      v26 = createStringFromNRXPCRes(v16);
      _NRLogWithArgs(v23, 17, "received internal failure result code: [%lld] %@", v16, v26);

      goto LABEL_79;
    }

    v32 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v42 = v32;
      v43 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (!v43)
      {
LABEL_93:
        v45 = _os_log_pack_size();
        v39 = &__strerrbuf[-((MEMORY[0x28223BE20](v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v47 = __error();
        v48 = _os_log_pack_fill(v39, v45, *v47, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
        __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v48, "nr_xpc_dictionary_create");
LABEL_94:
        v49 = nrCopyLogObj_2646();
        _NRLogAbortWithPack(v49, v39);
      }
    }

    v44 = nrCopyLogObj_2646();
    _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

    goto LABEL_93;
  }

  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "Failed to open %s", v3);
    v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_68:

  return v11;
}

id NRDiagnosticSaveNetworkRelayStatusToTempDirectory()
{
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saving diagnostic status to temp directory", "", "NRDiagnosticSaveNetworkRelayStatusToTempDirectory", 696);
  }

  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v1 = [MEMORY[0x277CCAD78] UUID];
  v2 = [v1 UUIDString];
  v3 = [v0 initWithFormat:@"/tmp/terminusd/%@", v2];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  if ([v4 fileExistsAtPath:v3 isDirectory:&v11] && (v11 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
LABEL_10:
      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }
  }

  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Creating temporary directory at %@", "", "NRDiagnosticSaveNetworkRelayStatusToTempDirectory", 704, v3);
LABEL_12:
  v10 = 0;
  [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = v5;
    if (nrCopyLogObj_onceToken_2652 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_16;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v7 = 0;
      goto LABEL_24;
    }

LABEL_16:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d Failed to create directory at %@: %@", "", "NRDiagnosticSaveNetworkRelayStatusToTempDirectory", 711, v3, v6);
    goto LABEL_17;
  }

  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
LABEL_20:
      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }
    }
  }

  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Created temporary directory at %@", "", "NRDiagnosticSaveNetworkRelayStatusToTempDirectory", 714, v3);
LABEL_22:
  v6 = nrSaveNetworkRelayStatusToDirectory(v3);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v8;
  if (v6)
  {
    [v8 addObject:v6];
  }

LABEL_24:

  return v7;
}

BOOL NRDiagnosticSaveNetworkRelayStatusToFile(void *a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v7 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v7;
      v11 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v11)
      {
LABEL_24:
        v13 = _os_log_pack_size();
        v15 = v31 - ((MEMORY[0x28223BE20](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = *__error();
        v17 = _os_log_pack_fill(v15, v13, v16, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL filePath");
        goto LABEL_31;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL filePath", "", "NRDiagnosticSaveNetworkRelayStatusToFile", 730, "NRDiagnosticSaveNetworkRelayStatusToFile");

    goto LABEL_24;
  }

  v2 = v1;
  if (![v1 length])
  {
    v8 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v18 = v8;
      v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (!v19)
      {
LABEL_27:
        v21 = _os_log_pack_size();
        v15 = v31 - ((MEMORY[0x28223BE20](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = *__error();
        v17 = _os_log_pack_fill(v15, v21, v23, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL filePath.length");
        goto LABEL_31;
      }
    }

    v20 = nrCopyLogObj_2646();
    _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL filePath.length", "", "NRDiagnosticSaveNetworkRelayStatusToFile", 731, "NRDiagnosticSaveNetworkRelayStatusToFile");

    goto LABEL_27;
  }

  v3 = [v2 UTF8String];
  if (!v3)
  {
    v9 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v9;
      v25 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
LABEL_30:
        v27 = _os_log_pack_size();
        v15 = v31 - ((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = *__error();
        v17 = _os_log_pack_fill(v15, v27, v29, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL filePathC");
LABEL_31:
        *v17 = 136446466;
        *(v17 + 4) = "NRDiagnosticSaveNetworkRelayStatusToFile";
        *(v17 + 12) = 2080;
        *(v17 + 14) = "NRDiagnosticSaveNetworkRelayStatusToFile";
        v30 = nrCopyLogObj_2646();
        _NRLogAbortWithPack(v30, v15);
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL filePathC", "", "NRDiagnosticSaveNetworkRelayStatusToFile", 733, "NRDiagnosticSaveNetworkRelayStatusToFile");

    goto LABEL_30;
  }

  v4 = v3;
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saving diagnostic status to file %s", "", "NRDiagnosticSaveNetworkRelayStatusToFile", 735, v4);
  }

  v5 = nrSaveNetworkRelayStatusToFile(v2);
  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_12:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saved diagnostic status to file %s", "", "NRDiagnosticSaveNetworkRelayStatusToFile", 739, v4);
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

void *nrXPCCompanionLinkCancel()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v21 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v21;
      v24 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_77;
      }
    }

    v25 = nrCopyLogObj_2646();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_77:
    v26 = _os_log_pack_size();
    v28 = &__strerrbuf[-((MEMORY[0x28223BE20](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v26, *v29, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v30, "nr_xpc_dictionary_create");
    v31 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v31, v28);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 5uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkCancel", v1);
  v3 = v2;
  if (!v2)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v22;
      v33 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
    goto LABEL_32;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      uint64 = xpc_dictionary_get_uint64(v3, "CompanionLinkCount");
      goto LABEL_34;
    }

    v10 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v11 = nrCopyLogObj_2646();
        _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v12 = nrCopyLogObj_sNRLogObj_2653;
    if (!v10)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v12;
        v18 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

        if (!v18)
        {
          goto LABEL_32;
        }
      }

      v19 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionLinkCancel", 749, v10, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v15 = nrCopyLogObj_2646();
    v16 = createStringFromNRXPCRes(v10);
    _NRLogWithArgs(v15, 17, "received internal failure result code: [%lld] %@", v10, v16);

    goto LABEL_32;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    uint64 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionLinkCancel", 749);
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  uint64 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (uint64)
  {
    free(uint64);
LABEL_33:
    uint64 = 0;
  }

LABEL_34:

  return uint64;
}