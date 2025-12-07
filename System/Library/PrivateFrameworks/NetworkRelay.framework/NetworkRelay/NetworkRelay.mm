void sub_25B98D41C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void __nrXPCCopyQueue_block_invoke()
{
  v23[1] = *MEMORY[0x277D85DE8];
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

  v1 = dispatch_queue_create("com.apple.networkrelay.xpc", v0);

  if (!v1)
  {
    v3 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v5 = v3;
      v6 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

      if (!v6)
      {
        goto LABEL_15;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create", 196, "com.apple.networkrelay.xpc");

LABEL_15:
    v8 = _os_log_pack_size();
    v10 = v23 - ((MEMORY[0x28223BE20](v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v8, *v11, &dword_25B98C000, "%{public}s dispatch_queue_create(%s) failed");
    *v12 = 136446466;
    *(v12 + 4) = "nr_dispatch_queue_create";
    *(v12 + 12) = 2080;
    *(v12 + 14) = "com.apple.networkrelay.xpc";
    v13 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v13, v10);
  }

  v2 = nrXPCCopyQueue_nrXPCQueue;
  nrXPCCopyQueue_nrXPCQueue = v1;

  if (!nrXPCCopyQueue_nrXPCQueue)
  {
    v4 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v14 = v4;
      v15 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (!v15)
      {
        goto LABEL_18;
      }
    }

    v16 = nrCopyLogObj_2646();
    _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrXPCQueue) != ((void*)0)", "", "nrXPCCopyQueue_block_invoke", 332);

LABEL_18:
    v17 = _os_log_pack_size();
    v19 = v23 - ((MEMORY[0x28223BE20](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = __error();
    v21 = _os_log_pack_fill(v19, v17, *v20, &dword_25B98C000, "%{public}s Assertion Failed: (nrXPCQueue) != ((void*)0)");
    *v21 = 136446210;
    *(v21 + 4) = "nrXPCCopyQueue_block_invoke";
    v22 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v22, v19);
  }
}

void _NRLogWithArgs(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v4 = a2;
  os_log_with_args();
  if (v4 != 17 && (sNRCopyLogToStdErr & 1) == 0)
  {
    return;
  }

  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3];
  v7 = [v5 initWithFormat:v6 arguments:va];

  os_unfair_lock_lock(&sNRLogLock);
  if (sNRCopyLogToStdErr == 1)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        v8 = "DEFLT";
        goto LABEL_16;
      }

      if (v4 == 1)
      {
        v8 = "INFO ";
        goto LABEL_16;
      }
    }

    else
    {
      switch(v4)
      {
        case 2:
          v8 = "DEBUG";
          goto LABEL_16;
        case 16:
          v8 = "ERROR";
          goto LABEL_16;
        case 17:
          v8 = "FAULT";
LABEL_16:
          v9 = _NRCopyTimeString();
          fprintf(*MEMORY[0x277D85DF8], "%s %s %s\n", v8, -[__CFString UTF8String](v9, "UTF8String"), [v7 UTF8String]);

          goto LABEL_17;
      }
    }

    v8 = "?????";
    goto LABEL_16;
  }

LABEL_17:
  v10 = sNRLogSimCrashHook;
  os_unfair_lock_unlock(&sNRLogLock);
  if (v4 == 17)
  {
    if (v10)
    {
      v10(v7);
    }
  }
}

uint64_t NRCreateStringFromInternalManagerState(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        v3 = "Discovery";
      }

      else if (a1 == 6)
      {
        v3 = "StoppingDiscovery";
      }

      else
      {
        v3 = "StartingPairing";
      }

      goto LABEL_24;
    }

    switch(a1)
    {
      case 8:
        v3 = "Pairing";
        goto LABEL_24;
      case 9:
        v3 = "StoppingPairing";
        goto LABEL_24;
      case 10:
        v3 = "Invalidated";
        goto LABEL_24;
    }

    return [v2 initWithFormat:@"Unknown(%zu)", a1];
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = "Invalid";
      goto LABEL_24;
    }

    if (a1 == 1)
    {
      v3 = "Initial";
      goto LABEL_24;
    }

    return [v2 initWithFormat:@"Unknown(%zu)", a1];
  }

  if (a1 == 2)
  {
    v3 = "Activating";
  }

  else if (a1 == 3)
  {
    v3 = "Activated";
  }

  else
  {
    v3 = "StartingDiscovery";
  }

LABEL_24:

  return [v2 initWithUTF8String:v3];
}

uint64_t nrMaxTLVLengthForPacket(uint64_t a1, int a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v5 = v3;
      v6 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

      if (!v6)
      {
LABEL_10:
        v8 = _os_log_pack_size();
        v10 = v21 - ((MEMORY[0x28223BE20](v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        v11 = __error();
        v12 = _os_log_pack_fill(v10, v8, *v11, &dword_25B98C000, "%{public}s Assertion Failed: (packetBuffer) != ((void*)0)");
        *v12 = 136446210;
        *(v12 + 4) = "nrMaxTLVLengthForPacket";
        goto LABEL_14;
      }
    }

    v7 = nrCopyLogObj_2201();
    _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (packetBuffer) != ((void*)0)", "", "nrMaxTLVLengthForPacket", 1013);

    goto LABEL_10;
  }

  if (!a2)
  {
    v4 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v4;
      v14 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (!v14)
      {
LABEL_13:
        v16 = _os_log_pack_size();
        v10 = v21 - ((MEMORY[0x28223BE20](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __error();
        v19 = _os_log_pack_fill(v10, v16, *v18, &dword_25B98C000, "%{public}s Assertion Failed: packetLength > 0");
        *v19 = 136446210;
        *(v19 + 4) = "nrMaxTLVLengthForPacket";
LABEL_14:
        v20 = nrCopyLogObj_2201();
        _NRLogAbortWithPack(v20, v10);
      }
    }

    v15 = nrCopyLogObj_2201();
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: packetLength > 0", "", "nrMaxTLVLengthForPacket", 1014);

    goto LABEL_13;
  }

  return (a2 + 5);
}

uint64_t NRBluetoothPacketParserLinkToNexusLoopFastPath(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t *a5, char a6)
{
  v556 = *MEMORY[0x277D85DE8];
  if (*(a1 + 13) == 4)
  {
    v6 = 0;
    return v6 & 1;
  }

  v10 = a1;
  v531 = a3;
  v521 = a5;
  dispatch_assert_queue_V2(*(a1 + 64));
  v532 = *a2;
  v11 = *(a2 + 43);
  if ((v11 & 4) == 0 && (a6 & 1) == 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  *(a2 + 43) = v12 | v11 & 0xFB;
  if ((v11 & 4) == 0 && (a6 & 1) == 0)
  {
    v13 = *(v10 + 24);
  }

  else
  {
    v13 = 1;
  }

  v520 = v13;
  v14 = *(a2 + 42) - 1;
  if (v14 > 2)
  {
    v27 = 0;
  }

  else
  {
    v15 = (*(a2 + 42) - 1);
    v16 = off_286D23748[v15];
    v17 = off_286D23760[v15];
    v18 = *(v10 - 8 * v15 + 232);
    v19 = v10 - 16 * v14;
    v529 = *(v19 + 288);
    v20 = *(v19 + 352);
    v27 = v20;
    if (v18)
    {
      v514 = v17;
      v527 = v20;
      v515 = (v10 - v15 + 21);
      v516 = v19;
      goto LABEL_14;
    }
  }

  v529 = *(v10 + 288);
  v28 = *(v10 + 352);

  v514 = NRBluetoothPacketParserSuspendNexusBEOutputSource;
  v515 = (v10 + 21);
  v16 = NRBluetoothPacketParserResumeNexusBEOutputSource;
  v527 = v28;
  v516 = v10;
LABEL_14:
  v29 = v532;
  if (gNRPacketLoggingEnabled == 1)
  {
    v294 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v296 = v294;
      v297 = os_log_type_enabled(v294, OS_LOG_TYPE_INFO);

      v29 = v532;
      if (!v297)
      {
        goto LABEL_15;
      }
    }

    v298 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    _NRLogWithArgs(v298, 1, "%s%.30s:%-4d start LtN fast path outer loop", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2539);

    v29 = v532;
  }

LABEL_15:
  v517 = v16;
  v30 = 0;
  next_slot = 0;
  v519 = 0;
  v524 = 0;
  v525 = &v540 + 8;
  v526 = 0;
  v6 = 1;
  v530 = v10;
  v533 = a4;
  while (1)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v147 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {

LABEL_291:
        v153 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        _NRLogWithArgs(v153, 1, "%s%.30s:%-4d start LtN fast path inner loop", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2548);

        v29 = v532;
        goto LABEL_17;
      }

      v151 = v147;
      v152 = os_log_type_enabled(v147, OS_LOG_TYPE_INFO);

      v29 = v532;
      if (v152)
      {
        goto LABEL_291;
      }
    }

LABEL_17:
    if (a4 == 0 || (v6 & 1) == 0 || v30 >= a4)
    {
      if (v30 < a4)
      {
        a4 = v30;
        goto LABEL_433;
      }

      if (v30 != a4)
      {
        [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, v30];
        goto LABEL_446;
      }

      if (gNRPacketLoggingEnabled != 1)
      {
        goto LABEL_452;
      }

      v451 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v452 = v451;
      if (sNRCopyLogToStdErr == 1)
      {

        v10 = v530;
        a4 = v533;
        goto LABEL_618;
      }

      v464 = os_log_type_enabled(v451, OS_LOG_TYPE_INFO);

      v10 = v530;
      v29 = v532;
      a4 = v533;
      if (v464)
      {
LABEL_618:
        v465 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        _NRLogWithArgs(v465, 1, "%s%.30s:%-4d read all of len=%zu alreadyRead=%zu nexusOutputAvailable=%d", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2561, a4, a4, v6 & 1);

        v29 = v532;
      }

LABEL_452:
      v514(v10);
      goto LABEL_433;
    }

    if (v30 && (gNRPacketLoggingEnabled & 1) != 0)
    {
      v154 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v169 = v154;
        v170 = os_log_type_enabled(v154, OS_LOG_TYPE_INFO);

        v29 = v532;
        if (!v170)
        {
          goto LABEL_21;
        }
      }

      v171 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      _NRLogWithArgs(v171, 1, "%s%.30s:%-4d reusing existing len=%zu alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2572, a4, v30);

      v29 = v532;
    }

LABEL_21:
    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_22;
    }

    v148 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v155 = v148;
      v156 = os_log_type_enabled(v148, OS_LOG_TYPE_INFO);

      v29 = v532;
      if (!v156)
      {
        goto LABEL_22;
      }
    }

    v157 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    _NRLogWithArgs(v157, 1, "%s%.30s:%-4d Reading from buf=%p len=%zu alreadyRead=%zu handled=%u filledIn=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2578, v531, a4, v30, *(a2 + 28), *(a2 + 24));

    v29 = v532;
LABEL_22:
    LODWORD(v31) = *(a2 + 24);
    v32 = *(a2 + 28);
    if (v31 <= v32)
    {
      break;
    }

    v33 = v29[v32];
    if (v29[v32])
    {
LABEL_42:
      v34 = v531;
LABEL_43:
      v43 = v32 + 2;
      if (v31 > v32 + 2)
      {
        v44 = bswap32(*&v29[v32 + 1]);
        v45 = BYTE2(v44);
        v46 = HIBYTE(v44);
        if (gNRPacketLoggingEnabled != 1)
        {
          goto LABEL_45;
        }

        v51 = BYTE2(v44);
        LODWORD(v518) = HIBYTE(v44);
        v160 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
        if (sNRCopyLogToStdErr == 1)
        {

LABEL_322:
          v182 = HIWORD(v44);
          v10 = v530;
          v183 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          v498 = v182;
          v47 = 1;
          _NRLogWithArgs(v183, 1, "%s%.30s:%-4d Looking into incoming TLV o1 %@ len=%u handled=%u filledIn=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2631, StringFromNRTLVType, v498, *(a2 + 28), *(a2 + 24), v506);
          goto LABEL_385;
        }

        v47 = 1;
        v180 = v160;
        v181 = os_log_type_enabled(v160, OS_LOG_TYPE_INFO);

        if (v181)
        {
          goto LABEL_322;
        }

LABEL_381:
        v10 = v530;
        goto LABEL_386;
      }

      v48 = v32 + 1;
      if (v31 == v43)
      {
        v46 = v29[v48];
        if (a4 > v30)
        {
          v45 = v34[v30];
          if (gNRPacketLoggingEnabled != 1)
          {
            v47 = 1;
            goto LABEL_68;
          }

          v51 = v34[v30];
          LODWORD(v518) = v29[v48];
          v194 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v47 = 1;
            v233 = v194;
            v234 = os_log_type_enabled(v194, OS_LOG_TYPE_INFO);

            if (!v234)
            {
              goto LABEL_381;
            }
          }

          v10 = v530;
          v183 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          v47 = 1;
          _NRLogWithArgs(v183, 1, "%s%.30s:%-4d Looking into incoming TLV o2 %@ len=%u handled=%u filledIn=%u slotLen=%zu alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2640, StringFromNRTLVType, v51 | (v518 << 8), *(a2 + 28), *(a2 + 24), v533, v30);
          goto LABEL_385;
        }

        if (gNRPacketLoggingEnabled != 1)
        {
          goto LABEL_67;
        }

        LODWORD(v518) = v29[v48];
        v54 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        if (sNRCopyLogToStdErr == 1)
        {

LABEL_378:
          v10 = v530;
          v183 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          _NRLogWithArgs(v183, 1, "%s%.30s:%-4d Looking into incoming TLV o3 %@", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2642, StringFromNRTLVType);
          goto LABEL_384;
        }

        v232 = v54;
        v47 = os_log_type_enabled(v54, OS_LOG_TYPE_INFO);

        if (v47)
        {
          goto LABEL_378;
        }

        v45 = 0;
        v10 = v530;
        v34 = v531;
        v29 = v532;
        v46 = v518;
      }

      else
      {
        if (v31 == v48)
        {
          v49 = v30;
        }

        else
        {
          v49 = v30 + 1;
        }

        if (v49 + 2 < a4)
        {
          v50 = bswap32(*&v34[v49]);
          v45 = BYTE2(v50);
          v46 = HIBYTE(v50);
          if (gNRPacketLoggingEnabled != 1)
          {
LABEL_45:
            v47 = 1;
            v10 = v530;
            goto LABEL_68;
          }

          v51 = BYTE2(v50);
          LODWORD(v518) = HIBYTE(v50);
          v52 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v47 = 1;
            v229 = v52;
            v230 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);

            if (!v230)
            {
              goto LABEL_381;
            }
          }

          v231 = HIWORD(v50);
          v10 = v530;
          v183 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          v499 = v231;
          v47 = 1;
          _NRLogWithArgs(v183, 1, "%s%.30s:%-4d Looking into incoming TLV o4 %@ len=%u handled=%u filledIn=%u slotLen=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2660, StringFromNRTLVType, v499, *(a2 + 28), *(a2 + 24), v533);
          goto LABEL_385;
        }

        if (gNRPacketLoggingEnabled != 1)
        {
          v46 = 0;
LABEL_67:
          v45 = 0;
          v47 = 0;
          goto LABEL_68;
        }

        v195 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        if (sNRCopyLogToStdErr == 1)
        {

LABEL_383:
          v10 = v530;
          v183 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          _NRLogWithArgs(v183, 1, "%s%.30s:%-4d Looking into incoming TLV o5 %@", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2662, StringFromNRTLVType);
          LODWORD(v518) = 0;
LABEL_384:
          v51 = 0;
          v47 = 0;
LABEL_385:

LABEL_386:
          v34 = v531;
          v29 = v532;
          v46 = v518;
          v45 = v51;
          goto LABEL_68;
        }

        v235 = v195;
        v47 = os_log_type_enabled(v195, OS_LOG_TYPE_INFO);

        if (v47)
        {
          goto LABEL_383;
        }

        v46 = 0;
        v45 = 0;
        v10 = v530;
        v34 = v531;
        v29 = v532;
      }

LABEL_68:
      if (gNRPacketLoggingEnabled != 1)
      {
        goto LABEL_69;
      }

      v149 = v45;
      LODWORD(v518) = v46;
      v150 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v161 = v150;
        v162 = os_log_type_enabled(v150, OS_LOG_TYPE_INFO);

        v34 = v531;
        v29 = v532;
        v46 = v518;
        v45 = v149;
        if (!v162)
        {
          goto LABEL_69;
        }
      }

      v163 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v164 = createStringFromNRTLVType(v33);
      v165 = v164;
      LODWORD(v166) = v149 | (v518 << 8);
      if (v47)
      {
        v166 = v166;
      }

      else
      {
        v166 = 0;
      }

      v167 = " (not filled in)";
      if (v47)
      {
        v167 = "";
      }

      _NRLogWithArgs(v163, 1, "%s%.30s:%-4d Looking into incoming TLV %@ len=%u%s", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2669, v164, v166, v167);

      v45 = v149;
      v46 = v518;
      v34 = v531;
      v29 = v532;
LABEL_69:
      v554 = 0u;
      v555 = 0u;
      v552 = 0u;
      v553 = 0u;
      v550 = 0u;
      v551 = 0u;
      v548 = 0u;
      v549 = 0u;
      v546 = 0u;
      v547 = 0u;
      v544 = 0u;
      v545 = 0u;
      v542 = 0u;
      v543 = 0u;
      v540 = 0u;
      v541 = 0u;
      v55 = *(a2 + 24);
      v56 = *(a2 + 28);
      if (v55 <= v56)
      {
        v60 = 0;
        v59 = 0;
        goto LABEL_77;
      }

      *&v540 = &v29[v56];
      v57 = (v45 | (v46 << 8)) + 5;
      v58 = (v55 - v56);
      if (v57 >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v57;
      }

      if (!v59)
      {
        [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, v45 | (v46 << 8)];
LABEL_604:
        v265 = v527;
        v6 = 0;
        goto LABEL_461;
      }

      DWORD2(v540) = v59;
      if (gNRPacketLoggingEnabled != 1)
      {
        v60 = 1;
        goto LABEL_77;
      }

      LODWORD(v513) = v45;
      LODWORD(v518) = v46;
      v522 = v56;
      v512 = v55;
      v168 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {

LABEL_324:
        v60 = 1;
        v186 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        _NRLogWithArgs(v186, 1, "%s%.30s:%-4d Placing linkReadBuffer handled=%u filledIn=%u in ioVec[%u] buf=%p len=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2687, *(a2 + 28), *(a2 + 24), 0, v540, DWORD2(v540));

        goto LABEL_325;
      }

      v60 = 1;
      v185 = v168;
      LODWORD(v523) = os_log_type_enabled(v168, OS_LOG_TYPE_INFO);

      if (v523)
      {
        goto LABEL_324;
      }

LABEL_325:
      v34 = v531;
      v55 = v512;
      v56 = v522;
      v46 = v518;
      v45 = v513;
LABEL_77:
      v61 = v533 - v30;
      if (v533 <= v30)
      {
        if (!v47)
        {
          LODWORD(v63) = v60;
          v29 = v532;
          goto LABEL_115;
        }

LABEL_88:
        v66 = 0;
        v63 = v60;
LABEL_109:
        v29 = v532;
        goto LABEL_110;
      }

      if (v47 && (v45 | (v46 << 8)) + 5 <= v59)
      {
        goto LABEL_88;
      }

      v62 = &v540 + v60;
      *v62 = &v34[v30];
      *(v62 + 2) = v61;
      if (gNRPacketLoggingEnabled == 1)
      {
        LODWORD(v513) = v45;
        LODWORD(v518) = v46;
        v522 = v56;
        v512 = v55;
        v172 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v523 = v172;
          LODWORD(v511) = os_log_type_enabled(v172, OS_LOG_TYPE_INFO);

          v55 = v512;
          v56 = v522;
          v46 = v518;
          v45 = v513;
          if (!v511)
          {
            goto LABEL_81;
          }
        }

        v504 = v30;
        v188 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
        _NRLogWithArgs(v188, 1, "%s%.30s:%-4d Placing in ioVec[%u] buf=%p len=%u alreadyRead=%zu += %zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2700, v60, *v62, *(v62 + 2), v504, v61);

        v45 = v513;
        v46 = v518;
        v56 = v522;
        v55 = v512;
      }

LABEL_81:
      v59 = (v59 + v61);
      v63 = (v60 + 1);
      v64 = v59 < 3 || v47;
      if (v64)
      {
        v65 = gNRPacketLoggingEnabled;
        if (!v47)
        {
          v10 = v530;
          if ((gNRPacketLoggingEnabled & 1) == 0)
          {
            v29 = v532;
            v30 = v533;
            goto LABEL_115;
          }

          v74 = 0;
          goto LABEL_349;
        }

        v10 = v530;
      }

      else
      {
        if (DWORD2(v540) < 3)
        {
          if (DWORD2(v540) == 2)
          {
            v10 = v530;
            if (v55 <= v56)
            {
              v338 = nrCopyLogObj_560();
              v339 = v338;
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_559;
              }

              v385 = os_log_type_enabled(v338, OS_LOG_TYPE_ERROR);

              if (v385)
              {
LABEL_559:
                v386 = nrCopyLogObj_560();
                _NRLogWithArgs(v386, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1", "", "nrReadTLVLenHBOFromIOVec", 265);
              }

              v387 = _os_log_pack_size();
              v334 = &v508 - ((MEMORY[0x28223BE20](v387, v388) + 15) & 0xFFFFFFFFFFFFFFF0);
              v389 = __error();
              v336 = _os_log_pack_fill(v334, v387, *v389, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 1");
              *v336 = 136446210;
              v337 = "nrReadTLVLenHBOFromIOVec";
              goto LABEL_561;
            }

            v67 = *(v540 + 1);
            v68 = *v541;
          }

          else
          {
            v10 = v530;
            if (DWORD2(v540) != 1)
            {
              v340 = (v60 + 1);
              v341 = nrCopyLogObj_560();
              v342 = v341;
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_563;
              }

              v390 = os_log_type_enabled(v341, OS_LOG_TYPE_ERROR);

              if (v390)
              {
LABEL_563:
                v391 = nrCopyLogObj_560();
                IOVecString = createIOVecString(&v540, v340);
                _NRLogWithArgs(v391, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].len == 1; %@", "", "nrReadTLVLenHBOFromIOVec", 269, IOVecString);
              }

              v393 = _os_log_pack_size();
              v334 = &v508 - ((MEMORY[0x28223BE20](v393, v394) + 15) & 0xFFFFFFFFFFFFFFF0);
              v395 = __error();
              v396 = _os_log_pack_fill(v334, v393, *v395, &dword_25B98C000, "%{public}s Assertion Failed: ioVecs[0].len == 1; %@");
              v397 = createIOVecString(&v540, v340);
              *v396 = 136446466;
              *(v396 + 4) = "nrReadTLVLenHBOFromIOVec";
              goto LABEL_569;
            }

            if (DWORD2(v541) < 2)
            {
              v343 = (v60 + 1);
              v480 = nrCopyLogObj_560();
              v481 = v480;
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_634;
              }

              v482 = os_log_type_enabled(v480, OS_LOG_TYPE_ERROR);

              if (v482)
              {
LABEL_634:
                v483 = nrCopyLogObj_560();
                v484 = createIOVecString(&v540, v343);
                _NRLogWithArgs(v483, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 2; %@", "", "nrReadTLVLenHBOFromIOVec", 274, v484);
              }

              v485 = _os_log_pack_size();
              v334 = &v508 - ((MEMORY[0x28223BE20](v485, v486) + 15) & 0xFFFFFFFFFFFFFFF0);
              v487 = *__error();
              v404 = _os_log_pack_fill(v334, v485, v487, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 2; %@");
              goto LABEL_568;
            }

            if (v55 <= v56)
            {
              v343 = (v60 + 1);
              v344 = nrCopyLogObj_560();
              v345 = v344;
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_566;
              }

              v398 = os_log_type_enabled(v344, OS_LOG_TYPE_ERROR);

              if (v398)
              {
LABEL_566:
                v399 = nrCopyLogObj_560();
                v400 = createIOVecString(&v540, v343);
                _NRLogWithArgs(v399, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1; %@", "", "nrReadTLVLenHBOFromIOVec", 271, v400);
              }

              v401 = _os_log_pack_size();
              v334 = &v508 - ((MEMORY[0x28223BE20](v401, v402) + 15) & 0xFFFFFFFFFFFFFFF0);
              v403 = *__error();
              v404 = _os_log_pack_fill(v334, v401, v403, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 1; %@");
LABEL_568:
              v396 = v404;
              v397 = createIOVecString(&v540, v343);
              *v396 = 136446466;
              *(v396 + 4) = "nrReadTLVLenHBOFromIOVec";
LABEL_569:
              *(v396 + 12) = 2112;
              *(v396 + 14) = v397;
              goto LABEL_587;
            }

            v67 = *v541;
            v68 = HIBYTE(*v541);
          }
        }

        else
        {
          v67 = *(v540 + 1);
          v68 = HIBYTE(*(v540 + 1));
          v10 = v530;
        }

        v69 = bswap32(v67 | (v68 << 8));
        v45 = BYTE2(v69);
        v46 = HIBYTE(v69);
        v65 = gNRPacketLoggingEnabled;
      }

      v70 = (v45 | (v46 << 8)) + 5;
      if (v70 < v59)
      {
        v71 = (v59 - v70);
        if ((v65 & 1) == 0)
        {
LABEL_104:
          v72 = &v540 + v60;
          v73 = *(v72 + 2) - v71;
          *(v72 + 2) = v73;
          if (!v73)
          {
            v284 = createIOVecString(&v540, v63);
            [(NRBluetoothPacketParser *)v10 handleInternalError:v285, v286, v287, v288, v289, v290, v60];

            goto LABEL_604;
          }

          v30 = v533 - v71;
          if (gNRPacketLoggingEnabled == 1)
          {
            v511 = v71;
            v512 = v55;
            LODWORD(v513) = v45;
            LODWORD(v518) = v46;
            v522 = v56;
            LODWORD(v523) = v63;
            v193 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            if (sNRCopyLogToStdErr == 1)
            {

              goto LABEL_374;
            }

            v66 = 1;
            v225 = v193;
            v226 = os_log_type_enabled(v193, OS_LOG_TYPE_INFO);

            if (v226)
            {
LABEL_374:
              v10 = v530;
              v510 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
              v227 = createIOVecString(&v540, v523);
              v496 = v60;
              v66 = 1;
              v228 = v510;
              _NRLogWithArgs(v510, 1, "%s%.30s:%-4d Shrunk ioVecs[%u] down by %u - %@ ioVecContentLen=%u alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2726, v496, v511, v227, v70, v30);

              v63 = v523;
              v59 = v70;
              v29 = v532;
LABEL_405:
              v55 = v512;
              v56 = v522;
              v46 = v518;
              v45 = v513;
              goto LABEL_110;
            }

            v59 = v70;
LABEL_404:
            v10 = v530;
            v29 = v532;
            v63 = v523;
            goto LABEL_405;
          }

          v66 = 1;
          v59 = v70;
          goto LABEL_109;
        }

        v511 = (v59 - v70);
        v512 = v55;
        LODWORD(v513) = v45;
        LODWORD(v518) = v46;
        v522 = v56;
        LODWORD(v523) = v60 + 1;
        v192 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v219 = v192;
          v220 = os_log_type_enabled(v192, OS_LOG_TYPE_INFO);

          v63 = v523;
          v71 = v511;
          v55 = v512;
          v56 = v522;
          v46 = v518;
          v45 = v513;
          if (!v220)
          {
            goto LABEL_104;
          }
        }

        v221 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        v222 = createIOVecString(&v540, v523);
        _NRLogWithArgs(v221, 1, "%s%.30s:%-4d Shrinking ioVecs[%u] down by %u - %@ ioVecContentLen=%u alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2714, v60, v511, v222, v59, v533);

        v71 = v511;
        v55 = v512;
        v45 = v513;
        v46 = v518;
        v56 = v522;
        v63 = v523;
        goto LABEL_104;
      }

      v74 = 1;
      if ((v65 & 1) == 0)
      {
        v30 = v533;
        v66 = 1;
        goto LABEL_109;
      }

LABEL_349:
      LODWORD(v513) = v45;
      LODWORD(v518) = v46;
      v522 = v56;
      v512 = v55;
      LODWORD(v523) = v60 + 1;
      v202 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {

        goto LABEL_352;
      }

      v203 = v202;
      v204 = os_log_type_enabled(v202, OS_LOG_TYPE_INFO);

      if (v204)
      {
LABEL_352:
        v10 = v530;
        v205 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
        v206 = v513 | (v518 << 8);
        if (!v74)
        {
          v206 = 0;
        }

        v207 = " (not filled in)";
        if (v74)
        {
          v207 = "";
        }

        v30 = v533;
        v66 = 1;
        v208 = v205;
        _NRLogWithArgs(v205, 1, "%s%.30s:%-4d not shrinking len %u%s ioVecContentLen=%u alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2730, v206, v207, v59, v533);

        v45 = v513;
        v46 = v518;
        v29 = v532;
        v63 = v523;
        v55 = v512;
        v56 = v522;
        if ((v74 & 1) == 0)
        {
          goto LABEL_115;
        }

LABEL_110:
        v75 = v33 - 100;
        if ((v33 - 100) >= 6 && (v33 - 2) >= 4)
        {
          if (v33 != 1)
          {
            v77 = v45 | (v46 << 8);
            goto LABEL_114;
          }

          v76 = 255;
        }

        else
        {
          v76 = 2000;
        }

        v77 = v45 | (v46 << 8);
        if (v77 > v76)
        {
          v513 = v45 | (v46 << 8);
          v267 = v63;
          if (*(a2 + 42) != 3)
          {
            v270 = createStringFromNRTLVType(v33);
            IOVecStringWithContents = createIOVecStringWithContents(&v540, v267);
            [(NRBluetoothPacketParser *)v10 handleInternalError:v271, v272, v273, v274, v275, v276, v513];

            goto LABEL_604;
          }

          v268 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v280 = v268;
            v281 = os_log_type_enabled(v268, OS_LOG_TYPE_INFO);

            if (!v281)
            {
              goto LABEL_475;
            }
          }

          v279 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v282 = createStringFromNRTLVType(v33);
          v283 = createIOVecStringWithContents(&v540, v267);
          _NRLogWithArgs(v279, 1, "%s%.30s:%-4d Received invalid TLV len %u for %@ (max=%u) %@", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2739, v513, v282, v76, v283);

          goto LABEL_474;
        }

LABEL_114:
        v22 = v77;
        if (v77 + 5 > v59)
        {
          goto LABEL_115;
        }

        v513 = v77;
        v518 = v77;
        LODWORD(v523) = v63;
        v522 = v56;
        if (gNRPacketLoggingEnabled == 1)
        {
          LODWORD(v511) = v33 - 100;
          v512 = v55;
          v179 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v190 = v179;
            LODWORD(v510) = os_log_type_enabled(v179, OS_LOG_TYPE_INFO);

            v63 = v523;
            v55 = v512;
            LODWORD(v77) = v513;
            LODWORD(v56) = v522;
            v22 = v518;
            v75 = v511;
            if (!v510)
            {
              goto LABEL_130;
            }
          }

          v510 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v191 = createStringFromNRTLVType(v33);
          v509 = createIOVecString(&v540, v523);
          _NRLogWithArgs(v510, 1, "%s%.30s:%-4d Ready to handle %@ len %u in %@ ioVecContentLen=%u alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2787, v191, v513, v509, v59, v30);

          v75 = v511;
          v22 = v518;
          v55 = v512;
          LODWORD(v77) = v513;
          LODWORD(v56) = v522;
          v63 = v523;
        }

LABEL_130:
        if (v66)
        {
          if (!gNRPacketLoggingEnabled)
          {
            goto LABEL_135;
          }

          LODWORD(v511) = v75;
          v512 = v55;
          v88 = v63;
          v89 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v209 = v89;
            LODWORD(v510) = os_log_type_enabled(v89, OS_LOG_TYPE_INFO);

            v63 = v88;
            v55 = v512;
            LODWORD(v77) = v513;
            LODWORD(v56) = v522;
            v22 = v518;
            v75 = v511;
            if (!v510)
            {
              goto LABEL_135;
            }
          }

          v210 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          _NRLogWithArgs(v210, 1, "%s%.30s:%-4d Marking as completed");
        }

        else
        {
          if (!gNRPacketLoggingEnabled)
          {
            goto LABEL_135;
          }

          LODWORD(v511) = v75;
          v512 = v55;
          v88 = v63;
          v189 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v211 = v189;
            LODWORD(v510) = os_log_type_enabled(v189, OS_LOG_TYPE_INFO);

            v63 = v88;
            v55 = v512;
            LODWORD(v77) = v513;
            LODWORD(v56) = v522;
            v22 = v518;
            v75 = v511;
            if (!v510)
            {
              goto LABEL_135;
            }
          }

          v210 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          _NRLogWithArgs(v210, 1, "%s%.30s:%-4d Not marking as completed (all in linkReadBuffer)");
        }

        v63 = v88;
        v55 = v512;
        LODWORD(v77) = v513;
        LODWORD(v56) = v522;
        v22 = v518;
        v75 = v511;
LABEL_135:
        if ((*(v10 + 9) & 1) == 0)
        {
          if (v33 >= 100)
          {
            LOWORD(v534) = 0;
            if (!v63)
            {
              goto LABEL_498;
            }

            v90 = (v77 + 3);
            v91 = v90 - DWORD2(v540);
            if (v90 > DWORD2(v540))
            {
              v92 = 0;
              goto LABEL_163;
            }

            if (v90 >= DWORD2(v540))
            {
              v92 = 0;
              v91 = 0;
LABEL_163:
              if (v63 != 1 && (!v91 || DWORD2(v541) > v91))
              {
                if (DWORD2(v541) - v91 >= 2 - v92)
                {
                  v100 = (2 - v92);
                }

                else
                {
                  v100 = DWORD2(v541) - v91;
                }

                v512 = v55;
                LODWORD(v511) = v75;
                v509 = v92;
                v510 = v90;
                memcpy(&v534 + v92, (v541 + v91), v100);
                v90 = v510;
                v75 = v511;
                v22 = v518;
                LODWORD(v56) = v522;
                LODWORD(v55) = v512;
                v63 = v523;
                v92 = (v100 + v509);
              }
            }

            else
            {
              LODWORD(v511) = v75;
              v512 = v55;
              v98 = DWORD2(v540) - v90;
              if ((DWORD2(v540) - v90) >= 2)
              {
                v99 = 2;
              }

              else
              {
                v99 = v98;
              }

              v509 = v99;
              v510 = (v77 + 3);
              memcpy(&v534, (v540 + v90), v99);
              if (v98 <= 1)
              {
                v91 = 0;
                v63 = v523;
                v55 = v512;
                LODWORD(v56) = v522;
                v22 = v518;
                v75 = v511;
                v92 = v509;
                v90 = v510;
                goto LABEL_163;
              }

              v63 = v523;
              LODWORD(v55) = v512;
              LODWORD(v56) = v522;
              v22 = v518;
              v75 = v511;
              v92 = v509;
              v90 = v510;
            }

            if (v92 != 2)
            {
              v317 = v92;
              v318 = v90;
              v319 = v63;
              v320 = nrCopyLogObj_560();
              v321 = v320;
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_536;
              }

              v357 = os_log_type_enabled(v320, OS_LOG_TYPE_ERROR);

              if (v357)
              {
LABEL_536:
                v358 = nrCopyLogObj_560();
                v359 = createIOVecString(&v540, v319);
                _NRLogWithArgs(v358, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v317, 2, v318, v359);
              }

              v360 = _os_log_pack_size();
              v334 = &v508 - ((MEMORY[0x28223BE20](v360, v361) + 15) & 0xFFFFFFFFFFFFFFF0);
              v362 = __error();
              v363 = _os_log_pack_fill(v334, v360, *v362, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
              v364 = createIOVecString(&v540, v319);
              __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v363, "nrWriteIOVecToBuffer", v317, 2, v318, v364);
              goto LABEL_586;
            }

            v101 = bswap32(v22);
            if (v534 != (((v33 >> 4) ^ BYTE2(v101)) | (((16 * v33) ^ HIBYTE(v101)) << 8)))
            {
              goto LABEL_592;
            }

            goto LABEL_195;
          }

          LODWORD(v511) = v75;
          v512 = v55;
          if (!v63)
          {
            v315 = nrCopyLogObj_560();
            v316 = v315;
            if (sNRCopyLogToStdErr == 1)
            {

              goto LABEL_533;
            }

            v352 = os_log_type_enabled(v315, OS_LOG_TYPE_ERROR);

            if (v352)
            {
LABEL_533:
              v353 = nrCopyLogObj_560();
              _NRLogWithArgs(v353, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nrChecksumIOVecInner", 143);
            }

            v354 = _os_log_pack_size();
            v334 = &v508 - ((MEMORY[0x28223BE20](v354, v355) + 15) & 0xFFFFFFFFFFFFFFF0);
            v356 = __error();
            v336 = _os_log_pack_fill(v334, v354, *v356, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 0");
            *v336 = 136446210;
            v337 = "nrChecksumIOVecInner";
            goto LABEL_561;
          }

          v510 = &v508;
          v93 = v77 + 3;
          v94 = DWORD2(v540);
          if (DWORD2(v540) >= (v77 + 3))
          {
            v95 = v93;
          }

          else
          {
            v95 = DWORD2(v540);
          }

          if (!DWORD2(v540))
          {
LABEL_504:
            v312 = nrCopyLogObj_560();
            v313 = v312;
            v314 = "nrChecksumUpdate";
            if (sNRCopyLogToStdErr == 1)
            {

              goto LABEL_530;
            }

            v346 = os_log_type_enabled(v312, OS_LOG_TYPE_ERROR);

            if (v346)
            {
LABEL_530:
              v347 = nrCopyLogObj_560();
              _NRLogWithArgs(v347, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", "", "nrChecksumUpdate", 69);
            }

            v348 = _os_log_pack_size();
            v334 = &v508 - ((MEMORY[0x28223BE20](v348, v349) + 15) & 0xFFFFFFFFFFFFFFF0);
            v350 = *__error();
            v351 = _os_log_pack_fill(v334, v348, v350, &dword_25B98C000, "%{public}s Assertion Failed: dataLen > 0");
LABEL_541:
            *v351 = 136446210;
            *(v351 + 4) = v314;
LABEL_587:
            v433 = nrCopyLogObj_560();
            _NRLogAbortWithPack(v433, v334);
          }

          v21 = MEMORY[0x25F874350](v540, v95, 0);
          if (v94 >= v93 && v95 < DWORD2(v540))
          {
            v96 = 0;
            v97 = v95;
            v29 = v532;
            v22 = v518;
            if (v95 != v93)
            {
              goto LABEL_510;
            }

LABEL_186:
            v102 = ~v21;
            v103 = (~v21 >> 8);
            v104 = &v540 + v96;
            v105 = *(v104 + 2);
            if (v105 >= v97 + 2)
            {
              v63 = v523;
              LODWORD(v55) = v512;
              LODWORD(v56) = v522;
              v75 = v511;
              if (__PAIR64__(*(*v104 + v97 + 1), *(*v104 + v97)) != __PAIR64__(v103, v102))
              {
                v531 = ~v21;
                v370 = nrCopyLogObj_560();
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v409 = v370;
                  LODWORD(next_slot) = os_log_type_enabled(v370, OS_LOG_TYPE_ERROR);

                  if (!next_slot)
                  {
                    goto LABEL_591;
                  }
                }

                v410 = nrCopyLogObj_560();
                v411 = (*v104 + v97);
                v505 = v103;
                v500 = v411[1];
                v502 = v531;
                v412 = "%s%.30s:%-4d checksum failed same IOVec received 0x%02x%02x != computed 0x%02x%02x";
                v495 = 179;
                v497 = *v411;
                goto LABEL_590;
              }
            }

            else
            {
              LODWORD(v55) = v512;
              LODWORD(v56) = v522;
              v75 = v511;
              if (v105 < v97 + 1)
              {
                v371 = v96;
                v372 = nrCopyLogObj_560();
                v373 = v372;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_577;
                }

                v413 = os_log_type_enabled(v372, OS_LOG_TYPE_ERROR);

                if (v413)
                {
LABEL_577:
                  v414 = nrCopyLogObj_560();
                  v415 = createIOVecString(&v540, v523);
                  _NRLogWithArgs(v414, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 189, v415, v371, v97);
                }

                v416 = _os_log_pack_size();
                v334 = &v508 - ((MEMORY[0x28223BE20](v416, v417) + 15) & 0xFFFFFFFFFFFFFFF0);
                v418 = __error();
                v419 = _os_log_pack_fill(v334, v416, *v418, &dword_25B98C000, "%{public}s Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
                v420 = createIOVecString(&v540, v523);
                goto LABEL_585;
              }

              v63 = v523;
              if (v96 + 1 >= v523)
              {
                v371 = v96;
                v374 = nrCopyLogObj_560();
                v375 = v374;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_580;
                }

                v421 = os_log_type_enabled(v374, OS_LOG_TYPE_ERROR);

                if (v421)
                {
LABEL_580:
                  v422 = nrCopyLogObj_560();
                  v423 = createIOVecString(&v540, v523);
                  _NRLogWithArgs(v422, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 191, v423, v371, v97);
                }

                v424 = _os_log_pack_size();
                v334 = &v508 - ((MEMORY[0x28223BE20](v424, v425) + 15) & 0xFFFFFFFFFFFFFFF0);
                v426 = __error();
                v419 = _os_log_pack_fill(v334, v424, *v426, &dword_25B98C000, "%{public}s Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
                v420 = createIOVecString(&v540, v523);
                goto LABEL_585;
              }

              if (!DWORD2(v541))
              {
                v371 = v96;
                v376 = nrCopyLogObj_560();
                v377 = v376;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_583;
                }

                v427 = os_log_type_enabled(v376, OS_LOG_TYPE_ERROR);

                if (v427)
                {
LABEL_583:
                  v428 = nrCopyLogObj_560();
                  v429 = createIOVecString(&v540, v523);
                  _NRLogWithArgs(v428, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 193, v429, v371, v97);
                }

                v430 = _os_log_pack_size();
                v334 = &v508 - ((MEMORY[0x28223BE20](v430, v431) + 15) & 0xFFFFFFFFFFFFFFF0);
                v432 = __error();
                v419 = _os_log_pack_fill(v334, v430, *v432, &dword_25B98C000, "%{public}s Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
                v420 = createIOVecString(&v540, v523);
LABEL_585:
                v364 = v420;
                __os_log_helper_1_2_4_8_34_8_64_4_0_4_0(v419, "nrChecksumIOVecInner", v364, v371, v97);
LABEL_586:

                goto LABEL_587;
              }

              if (*(*v104 + v97) != v102 || *v541 != v103)
              {
                v531 = ~v21;
                v378 = nrCopyLogObj_560();
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_589;
                }

                v434 = v378;
                LODWORD(next_slot) = os_log_type_enabled(v378, OS_LOG_TYPE_ERROR);

                if (next_slot)
                {
LABEL_589:
                  v410 = nrCopyLogObj_560();
                  v505 = v103;
                  v500 = *v541;
                  v502 = v531;
                  v412 = "%s%.30s:%-4d checksum failed disjoint IOVec received 0x%02x%02x != computed 0x%02x%02x";
                  v495 = 202;
                  v497 = *(*v104 + v97);
LABEL_590:
                  v435 = v410;
                  _NRLogWithArgs(v410, 16, v412, "", "nrChecksumIOVecInner", v495, v497, v500, v502, v505);
                }

LABEL_591:
                v10 = v530;
                v29 = v532;
                v63 = v523;
LABEL_592:
                v436 = *(a2 + 42);
                if (*(a2 + 42) <= 1u)
                {
                  if (!*(a2 + 42))
                  {
                    v437 = v63;
                    v438 = @"Invalid";
                    goto LABEL_603;
                  }

                  if (v436 == 1)
                  {
                    v437 = v63;
                    v438 = @"Medium";
LABEL_603:
                    v440 = createStringFromNRTLVType(v33);
                    v503 = createIOVecString(&v540, v437);
                    [(NRBluetoothPacketParser *)v10 handleInternalError:v441, v442, v443, v444, v445, v446, v438];

                    goto LABEL_604;
                  }

LABEL_600:
                  v437 = v63;
                  v438 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", v436];
                  goto LABEL_603;
                }

                if (v436 == 2)
                {
                  v437 = v63;
                  v438 = @"High";
                  goto LABEL_603;
                }

                if (v436 != 3)
                {
                  goto LABEL_600;
                }

                v439 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_606;
                }

                v447 = v439;
                v448 = os_log_type_enabled(v439, OS_LOG_TYPE_INFO);

                if (v448)
                {
LABEL_606:
                  v279 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                  _NRLogWithArgs(v279, 1, "%s%.30s:%-4d Invalid checksum detected in Isoch loop len %u filledIn=%u handled=%u ioVecContentLen=%u alreadyRead=%zu ", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2806, v513, *(a2 + 24), *(a2 + 28), v59, v30);
LABEL_474:
                }

LABEL_475:
                v6 = 1;
                a4 = v533;
                goto LABEL_433;
              }
            }

            v10 = v530;
            goto LABEL_195;
          }

          v29 = v532;
          v22 = v518;
          if (v523 == 1)
          {
            v97 = v95;
            goto LABEL_160;
          }

          if (v94 >= v93)
          {
            v97 = 0;
          }

          else
          {
            if (DWORD2(v541) >= v93 - v95)
            {
              v97 = v93 - v95;
            }

            else
            {
              v97 = DWORD2(v541);
            }

            if (!v97)
            {
              goto LABEL_504;
            }

            v509 = &v508;
            if (v95)
            {
              v257 = v541;
              LOWORD(v534) = *v541 << 8;
              v21 = MEMORY[0x25F874350](&v534, 2, v21, v518);
              if (v97 != 1)
              {
                v21 = MEMORY[0x25F874350](v257 + 1, (v97 - 1), v21);
              }

              v29 = v532;
            }

            else
            {
              v21 = MEMORY[0x25F874350](v541, v97, v21, v518);
            }

            LODWORD(v95) = v97 + v95;
            if (v95 < v93)
            {
              v22 = v518;
              goto LABEL_160;
            }

            v22 = v518;
            if (v97 >= DWORD2(v541))
            {
LABEL_160:
              v96 = v523;
              if (v95 != v93)
              {
                goto LABEL_510;
              }

              goto LABEL_186;
            }
          }

          v96 = 1;
          if (v95 != v93)
          {
LABEL_510:
            v322 = nrCopyLogObj_560();
            v323 = v322;
            v314 = "nrChecksumIOVecInner";
            if (sNRCopyLogToStdErr == 1)
            {

              goto LABEL_539;
            }

            v365 = os_log_type_enabled(v322, OS_LOG_TYPE_ERROR);

            if (v365)
            {
LABEL_539:
              v366 = nrCopyLogObj_560();
              _NRLogWithArgs(v366, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: computedBytes == writtenLength", "", "nrChecksumIOVecInner", 164);
            }

            v367 = _os_log_pack_size();
            v334 = &v508 - ((MEMORY[0x28223BE20](v367, v368) + 15) & 0xFFFFFFFFFFFFFFF0);
            v369 = *__error();
            v351 = _os_log_pack_fill(v334, v367, v369, &dword_25B98C000, "%{public}s Assertion Failed: computedBytes == writtenLength");
            goto LABEL_541;
          }

          goto LABEL_186;
        }

LABEL_195:
        v536 = 0u;
        v537 = 0u;
        v534 = 0u;
        v535 = 0u;
        a4 = v533;
        if (!v529)
        {
          goto LABEL_199;
        }

        v106 = v75;
        v107 = v55;
        next_slot = os_channel_get_next_slot();
        if (next_slot)
        {
          if (gNRPacketLoggingEnabled == 1)
          {
            v196 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v236 = v196;
              v237 = os_log_type_enabled(v196, OS_LOG_TYPE_INFO);

              if (!v237)
              {
                v10 = v530;
                goto LABEL_411;
              }
            }

            v10 = v530;
            v238 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
            _NRLogWithArgs(v238, 1, "%s%.30s:%-4d Using new nexusOutputSlot=%p", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2878, next_slot);

LABEL_411:
            v29 = v532;
            a4 = v533;
          }

          v63 = v523;
          LODWORD(v55) = v107;
          LODWORD(v56) = v522;
          v22 = v518;
          v75 = v106;
LABEL_199:
          if (v55 <= v56)
          {
            goto LABEL_202;
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            LODWORD(v511) = v75;
            v197 = v63;
            v198 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            if (sNRCopyLogToStdErr == 1)
            {

LABEL_390:
              v240 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              _NRLogWithArgs(v240, 1, "%s%.30s:%-4d Advancing linkReadBuffer handled by %u handled=%u filledIn=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2884, DWORD2(v540), *(a2 + 28), *(a2 + 24));

              v75 = v511;
              v22 = v518;
              v63 = v197;
              goto LABEL_201;
            }

            v239 = v198;
            LODWORD(v522) = os_log_type_enabled(v198, OS_LOG_TYPE_INFO);

            v63 = v197;
            v22 = v518;
            v75 = v511;
            if (v522)
            {
              goto LABEL_390;
            }
          }

LABEL_201:
          *(a2 + 28) += DWORD2(v540);
LABEL_202:
          if (v33 <= 99)
          {
            if ((v33 - 2) < 2)
            {
              goto LABEL_213;
            }

            if (v33 == 1)
            {
              if (gNRPacketLoggingEnabled == 1)
              {
                v134 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                v135 = v134;
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v254 = os_log_type_enabled(v134, OS_LOG_TYPE_INFO);

                  if (!v254)
                  {
                    goto LABEL_421;
                  }
                }

                v10 = v530;
                v251 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
                _NRLogWithArgs(v251, 1, "%s%.30s:%-4d Handling PadN %u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2892, v513);
                goto LABEL_417;
              }

              goto LABEL_281;
            }

            if (v33 != 4)
            {
              goto LABEL_281;
            }

            if (!v22)
            {
              v140 = objc_alloc_init(MEMORY[0x277CBEA90]);
              goto LABEL_272;
            }

            v108 = malloc_type_malloc(v22, 0x87367FC4uLL);
            if (v108)
            {
              v109 = v523;
              v110 = v513;
              if (v523)
              {
                v111 = v108;
                if (DWORD2(v540) > 2)
                {
                  v136 = DWORD2(v540) - 3;
                  if (DWORD2(v540) == 3)
                  {
                    v112 = 0;
                    v113 = 0;
                  }

                  else
                  {
                    if (v136 >= v513)
                    {
                      v137 = v513;
                    }

                    else
                    {
                      v137 = v136;
                    }

                    v112 = v137;
                    memcpy(v108, (v540 + 3), v137);
                    v110 = v513;
                    if (v136 >= v513)
                    {
LABEL_270:
                      if (v112 != v110)
                      {
                        v407 = nrCopyLogObj_560();
                        v408 = v407;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_615;
                        }

                        v454 = os_log_type_enabled(v407, OS_LOG_TYPE_ERROR);

                        if (v454)
                        {
LABEL_615:
                          v455 = nrCopyLogObj_560();
                          v456 = createIOVecString(&v540, v523);
                          _NRLogWithArgs(v455, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v112, v513, 3, v456);
                        }

                        v457 = _os_log_pack_size();
                        v459 = &v508 - ((MEMORY[0x28223BE20](v457, v458) + 15) & 0xFFFFFFFFFFFFFFF0);
                        v460 = __error();
                        v461 = _os_log_pack_fill(v459, v457, *v460, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
                        v462 = createIOVecString(&v540, v523);
                        __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v461, "nrWriteIOVecToBuffer", v112, v513, 3, v462);

                        v463 = nrCopyLogObj_560();
                        _NRLogAbortWithPack(v463, v459);
                      }

                      v139 = objc_alloc(MEMORY[0x277CBEA90]);
                      v140 = [v139 initWithBytesNoCopy:v111 length:v518 freeWhenDone:1];
LABEL_272:
                      v141 = *(a2 + 42);
                      v142 = v140;
                      a4 = v533;
                      if (*(v10 + 13) == 4)
                      {
LABEL_277:

                        if (v520)
                        {
                          [(NRBluetoothPacketParser *)v10 handleIncomingWakePacket:0 spi:?];
                        }

                        *(v10 + 24) = 0;
                        *(a2 + 43) &= ~4u;

                        v520 = 0;
                        goto LABEL_280;
                      }

                      if (gNRPacketLoggingEnabled != 1)
                      {
LABEL_274:
                        v143 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        v144 = v143;
                        v145 = &unk_286D2CF68;
                        if ((v141 - 1) <= 2)
                        {
                          v145 = qword_27996B010[(v141 - 1)];
                        }

                        [v143 setObject:v145 forKeyedSubscript:@"channel-id"];
                        [v144 setObject:v142 forKeyedSubscript:@"message-data"];
                        v146 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        [v146 setObject:v144 forKeyedSubscript:@"message"];
                        [(NRBluetoothPacketParser *)v10 sendXPCDictionary:v146];

                        goto LABEL_277;
                      }

                      v255 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                      v256 = v255;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        v10 = v530;
                        a4 = v533;
                      }

                      else
                      {
                        v258 = os_log_type_enabled(v255, OS_LOG_TYPE_INFO);

                        v10 = v530;
                        a4 = v533;
                        if (!v258)
                        {
                          goto LABEL_274;
                        }
                      }

                      v259 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                      _NRLogWithArgs(v259, 1, "%s%.30s:%-4d handling uIKE packet of %llu bytes", "", "-[NRBluetoothPacketParser handleIncomingIKEData:linkPriority:]", 2229, [v142 length]);

                      goto LABEL_274;
                    }

                    v113 = 0;
                    v109 = v523;
                  }
                }

                else
                {
                  v112 = 0;
                  v113 = 3 - DWORD2(v540);
                }

                if (v109 != 1 && (!v113 || DWORD2(v541) > v113))
                {
                  if (DWORD2(v541) - v113 >= v110 - v112)
                  {
                    v138 = (v110 - v112);
                  }

                  else
                  {
                    v138 = DWORD2(v541) - v113;
                  }

                  memcpy(&v111[v112], (v541 + v113), v138);
                  v110 = v513;
                  v112 = (v138 + v112);
                }

                goto LABEL_270;
              }

LABEL_498:
              v304 = nrCopyLogObj_560();
              v305 = v304;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v330 = os_log_type_enabled(v304, OS_LOG_TYPE_ERROR);

                if (!v330)
                {
LABEL_520:
                  v332 = _os_log_pack_size();
                  v334 = &v508 - ((MEMORY[0x28223BE20](v332, v333) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v335 = __error();
                  v336 = _os_log_pack_fill(v334, v332, *v335, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 0");
                  *v336 = 136446210;
                  v337 = "nrWriteIOVecToBuffer";
LABEL_561:
                  *(v336 + 4) = v337;
                  goto LABEL_587;
                }
              }

              v331 = nrCopyLogObj_560();
              _NRLogWithArgs(v331, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nrWriteIOVecToBuffer", 313);

              goto LABEL_520;
            }

            v488 = nrCopyLogObj_560();
            v489 = v488;
            v314 = "createNSDataFromTLVIOVec";
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v490 = os_log_type_enabled(v488, OS_LOG_TYPE_ERROR);

              if (!v490)
              {
LABEL_640:
                v492 = _os_log_pack_size();
                v334 = &v508 - ((MEMORY[0x28223BE20](v492, v493) + 15) & 0xFFFFFFFFFFFFFFF0);
                v494 = *__error();
                v351 = _os_log_pack_fill(v334, v492, v494, &dword_25B98C000, "%{public}s strict allocator failed");
                goto LABEL_541;
              }
            }

            v491 = nrCopyLogObj_560();
            _NRLogWithArgs(v491, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "createNSDataFromTLVIOVec", 423);

            goto LABEL_640;
          }

          if (v75 >= 6)
          {
            goto LABEL_281;
          }

LABEL_213:
          if (next_slot)
          {
            v114 = v535;
            v115 = WORD1(v534);
            if (*(v10 + 28))
            {
              *v535 = 503316480;
              v116 = *(v10 + 28);
            }

            else
            {
              v116 = 0;
            }

            v129 = nrTLVToPacket(&v540, v63, v33, v22, v114 + v116, (v115 - v116), (v10 + 704), (v10 + 688)) + v116;
            if (v129)
            {
              if (!gNRPacketLoggingEnabled)
              {
                goto LABEL_237;
              }

              v523 = v129;
              v223 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              v224 = v223;
              if (sNRCopyLogToStdErr == 1)
              {

                v10 = v530;
                goto LABEL_402;
              }

              LODWORD(v526) = os_log_type_enabled(v223, OS_LOG_TYPE_INFO);

              v10 = v530;
              if (v526)
              {
LABEL_402:
                v526 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                v247 = createStringFromNRTLVType(v33);
                PacketString = createPacketString(v114, v129);
                v501 = v115;
                v249 = v526;
                _NRLogWithArgs(v526, 1, "%s%.30s:%-4d Reinjecting %@ packet len %u to nexusOutputSlot=%p buf=%p len=%u: %@, buflet: %d", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2930, v247, v523, next_slot, v114, v501, PacketString, 0);
              }

LABEL_237:
              v538 = 0;
              v539 = 0;
              if (v520)
              {
                LOBYTE(v538) = 1;
                WORD1(v534) = v129;
                packet = os_channel_slot_get_packet();
                a4 = v533;
                if (packet)
                {
                  os_packet_set_flow_uuid();
                }

                os_channel_set_slot_properties();
                if (isPacketValidIPv6(v114, v129) && isNextHeaderValidESP(v114, v129))
                {
                  v131 = bswap32(*(v114 + 44));
                }

                else
                {
                  v131 = 0;
                }

                if (isPacketValidIPv6(v114, v129) && isNextHeaderValidESP(v114, v129))
                {
                  v133 = bswap32(*(v114 + 40));
                }

                else
                {
                  v133 = 0;
                }

                [(NRBluetoothPacketParser *)v10 handleIncomingWakePacket:v131 spi:v133];
                v132 = next_slot;
              }

              else
              {
                WORD1(v534) = v129;
                v132 = next_slot;
                os_channel_slot_get_packet();
                os_packet_clear_flow_uuid();
                os_channel_set_slot_properties();
                a4 = v533;
              }

              v520 = 0;
              *(a2 + 43) &= ~4u;
              *(v10 + 24) = 0;
              ++*(v516 + 488);
              *v515 = 1;
              ++v524;
              v519 += v129;
              v526 = v132;
LABEL_280:
              v29 = v532;
              goto LABEL_281;
            }

            if (gNRPacketLoggingEnabled)
            {
              v241 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              v242 = v241;
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_415;
              }

              v253 = os_log_type_enabled(v241, OS_LOG_TYPE_INFO);

              if (v253)
              {
LABEL_415:
                v10 = v530;
                v251 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
                v252 = createStringFromNRTLVType(v33);
                _NRLogWithArgs(v251, 1, "%s%.30s:%-4d failed to reinject %@ tlvLen=%u slotLen=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2971, v252, v513, v115);
LABEL_416:

LABEL_417:
                a4 = v533;
                goto LABEL_280;
              }

LABEL_421:
              v10 = v530;
              a4 = v533;
              goto LABEL_280;
            }

            a4 = v533;
          }

          else if (gNRPacketLoggingEnabled == 1)
          {
            v127 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v128 = v127;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v250 = os_log_type_enabled(v127, OS_LOG_TYPE_INFO);

              if (!v250)
              {
                goto LABEL_421;
              }
            }

            v10 = v530;
            v251 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
            v252 = createStringFromNRTLVType(v33);
            _NRLogWithArgs(v251, 1, "%s%.30s:%-4d no curNexusOutputSlot, dropping %@ tlvLen=%u slotLen=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2975, v252, v513, WORD1(v534));
            goto LABEL_416;
          }

LABEL_281:
          if (gNRPacketLoggingEnabled == 1)
          {
            v187 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v6 = 1;
              v199 = v187;
              v200 = os_log_type_enabled(v187, OS_LOG_TYPE_INFO);

              if (!v200)
              {
                goto LABEL_400;
              }
            }

            v201 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v6 = 1;
            _NRLogWithArgs(v201, 1, "%s%.30s:%-4d end of LtN inner loop alreadyRead=%zu splen=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2997, v30, a4);
LABEL_399:

LABEL_400:
            v29 = v532;
          }

          else
          {
            v6 = 1;
          }
        }

        else
        {
          v517(v10);
          if (gNRPacketLoggingEnabled != 1)
          {
            goto LABEL_217;
          }

          v212 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v213 = v212;
          if (sNRCopyLogToStdErr == 1)
          {

            v10 = v530;
          }

          else
          {
            v243 = os_log_type_enabled(v212, OS_LOG_TYPE_INFO);

            v10 = v530;
            v29 = v532;
            if (!v243)
            {
              goto LABEL_217;
            }
          }

          v244 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v245 = createIOVecString(&v540, v523);
          _NRLogWithArgs(v244, 1, "%s%.30s:%-4d no nexusOutputSlot highestSlot=%p %@ filledIn=%u handled=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2829, v526, v245, *(a2 + 24), *(a2 + 28));

          v29 = v532;
LABEL_217:
          if (v523 > (v107 > v522))
          {
            v117 = v107 > v522;
            v118 = v523;
            v119 = &v525[16 * v117];
            do
            {
              if (gNRPacketLoggingEnabled != 1)
              {
                goto LABEL_220;
              }

              v123 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v124 = v123;
                LODWORD(next_slot) = os_log_type_enabled(v123, OS_LOG_TYPE_INFO);

                v29 = v532;
                if (!next_slot)
                {
                  goto LABEL_220;
                }
              }

              v125 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              _NRLogWithArgs(v125, 1, "%s%.30s:%-4d no nexusOutputSlot - consolidating %u bytes from linkInputSlot ioVecs[%u].buf=%p to linkReadBuffer filledIn=%u handled=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2835, *v119, v117, *(v119 - 1), *(a2 + 24), *(a2 + 28));

              v29 = v532;
LABEL_220:
              v120 = *(a2 + 24);
              v121 = *v119;
              if ((v121 + v120) >= 0xFFFF)
              {
                if (gNRPacketLoggingEnabled != 1)
                {
                  goto LABEL_485;
                }

                v472 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                v473 = v472;
                if (sNRCopyLogToStdErr == 1)
                {

                  v474 = v530;
                  goto LABEL_630;
                }

                v477 = os_log_type_enabled(v472, OS_LOG_TYPE_INFO);

                v474 = v530;
                if (v477)
                {
LABEL_630:
                  v478 = _NRCopyLogObjectForNRUUID(*(v474 + 48));
                  v479 = createIOVecString(&v540, v523);
                  _NRLogWithArgs(v478, 1, "%s%.30s:%-4d no nexusOutputSlot and linkReadBuffer is full %@ filledIn=%u handled=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2842, v479, *(a2 + 24), *(a2 + 28));
                }

LABEL_485:
                v6 = 0;
                goto LABEL_460;
              }

              memcpy(&v29[v120], *(v119 - 1), v121);
              v122 = *v119;
              v119 += 2;
              *(a2 + 24) += v122;
              ++v117;
            }

            while (v118 != v117);
          }

          v126 = v531;
          if (v107 > v522 && v523 == 1)
          {
            a4 = v533;
            if (!gNRPacketLoggingEnabled)
            {
              goto LABEL_478;
            }

            v466 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v467 = v466;
            if (sNRCopyLogToStdErr == 1)
            {

              v10 = v530;
              a4 = v533;
              goto LABEL_622;
            }

            v468 = os_log_type_enabled(v466, OS_LOG_TYPE_INFO);

            v10 = v530;
            v126 = v531;
            v29 = v532;
            a4 = v533;
            if (v468)
            {
LABEL_622:
              v469 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              _NRLogWithArgs(v469, 1, "%s%.30s:%-4d no nexusOutputSlot and everything in linkReadBuffer alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2853, v30);

              v126 = v531;
              v29 = v532;
            }

LABEL_478:
            if (!v30)
            {
              a4 = 0;
              v6 = 0;
              goto LABEL_433;
            }

            v291 = a4 - v30;
            if (a4 <= v30)
            {
              a4 = v30;
              v29 = v532;
              v6 = 0;
              goto LABEL_433;
            }

            if (gNRPacketLoggingEnabled != 1)
            {
LABEL_481:
              v292 = v532;
              memcpy(&v532[*(a2 + 24)], &v126[v30], v291);
              v293 = *(a2 + 24) + v291;
              v29 = v292;
              *(a2 + 24) = v293;
              v6 = 0;
              goto LABEL_433;
            }

            v470 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v471 = v470;
            if (sNRCopyLogToStdErr == 1)
            {

              v10 = v530;
              a4 = v533;
            }

            else
            {
              v475 = os_log_type_enabled(v470, OS_LOG_TYPE_INFO);

              v10 = v530;
              v126 = v531;
              a4 = v533;
              if (!v475)
              {
                goto LABEL_481;
              }
            }

            v476 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            _NRLogWithArgs(v476, 1, "%s%.30s:%-4d no nexusOutputSlot - tail consolidating %zu bytes from linkInputSlot to linkReadBuffer filledIn=%u handled=%u and marking as completed", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2861, v291, *(a2 + 24), *(a2 + 28));

            v126 = v531;
            goto LABEL_481;
          }

          a4 = v533;
          if (gNRPacketLoggingEnabled)
          {
            v217 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v218 = v217;
            if (sNRCopyLogToStdErr == 1)
            {

LABEL_398:
              v10 = v530;
              v201 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
              _NRLogWithArgs(v201, 1, "%s%.30s:%-4d Marking as completed (no nexusOutputSlot) alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2874, v30);
              next_slot = 0;
              v6 = 0;
              a4 = v533;
              goto LABEL_399;
            }

            v246 = os_log_type_enabled(v217, OS_LOG_TYPE_INFO);

            if (v246)
            {
              goto LABEL_398;
            }

            next_slot = 0;
            v6 = 0;
            v10 = v530;
            v29 = v532;
            a4 = v533;
          }

          else
          {
            next_slot = 0;
            v6 = 0;
          }
        }
      }

      else
      {
        if (v74)
        {
          v66 = 1;
          v30 = v533;
          goto LABEL_404;
        }

        v29 = v532;
        v30 = v533;
        v10 = v530;
        LODWORD(v63) = v523;
        v55 = v512;
        v56 = v522;
        v46 = v518;
        v45 = v513;
LABEL_115:
        v78 = v45;
        v79 = v46;
        if (gNRPacketLoggingEnabled == 1)
        {
          v522 = v56;
          v512 = v55;
          LODWORD(v523) = v63;
          v158 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {

LABEL_316:
            v174 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v175 = createStringFromNRTLVType(v33);
            _NRLogWithArgs(v174, 1, "%s%.30s:%-4d LtN not enough input bytes from linkInputSlot %u to fit %@ tlvLen %u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2753, v59, v175, v78 | (v79 << 8));

            LODWORD(v56) = v522;
            LODWORD(v55) = v512;
            LODWORD(v63) = v523;
            v29 = v532;
            goto LABEL_116;
          }

          v173 = v158;
          LODWORD(v518) = os_log_type_enabled(v158, OS_LOG_TYPE_INFO);

          v29 = v532;
          LODWORD(v63) = v523;
          LODWORD(v55) = v512;
          LODWORD(v56) = v522;
          if (v518)
          {
            goto LABEL_316;
          }
        }

LABEL_116:
        if (*(a2 + 42) == 3)
        {
          v80 = (v78 | (v79 << 8)) + 5;
          if (v80 > v59)
          {
            v269 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v277 = v269;
              v278 = os_log_type_enabled(v269, OS_LOG_TYPE_INFO);

              v29 = v532;
              if (!v278)
              {
                goto LABEL_475;
              }
            }

            v279 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            _NRLogWithArgs(v279, 1, "%s%.30s:%-4d truncated packet received %u != %lu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2758, v59, v80);
            goto LABEL_474;
          }
        }

        a4 = v533;
        if (v63 > (v55 > v56))
        {
          v81 = v63 - (v55 > v56);
          v82 = &v525[16 * (v55 > v56)];
          do
          {
            if (gNRPacketLoggingEnabled == 1)
            {
              v84 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              if (sNRCopyLogToStdErr == 1)
              {

LABEL_126:
                v87 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                _NRLogWithArgs(v87, 1, "%s%.30s:%-4d partial TLV - consolidating %u bytes from linkInputSlot buf %p to linkReadBuffer filledIn=%u handled=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2767, *v82, *(v82 - 1), *(a2 + 24), *(a2 + 28));

                v29 = v532;
                goto LABEL_121;
              }

              v85 = v84;
              v86 = os_log_type_enabled(v84, OS_LOG_TYPE_INFO);

              v29 = v532;
              if (v86)
              {
                goto LABEL_126;
              }
            }

LABEL_121:
            memcpy(&v29[*(a2 + 24)], *(v82 - 1), *v82);
            v83 = *v82;
            v82 += 2;
            *(a2 + 24) += v83;
            --v81;
          }

          while (v81);
        }

        if (gNRPacketLoggingEnabled)
        {
          v159 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v176 = v159;
            v177 = os_log_type_enabled(v159, OS_LOG_TYPE_INFO);

            v29 = v532;
            if (!v177)
            {
              goto LABEL_128;
            }
          }

          v178 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          _NRLogWithArgs(v178, 1, "%s%.30s:%-4d Marking as completed (not enough input bytes) alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2773, v30);

          v29 = v532;
        }

LABEL_128:
        v6 = 1;
      }
    }

    else
    {
      while (1)
      {
        if (gNRPacketLoggingEnabled == 1)
        {
          v39 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v40 = v39;
            v41 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);

            v29 = v532;
            if (!v41)
            {
              goto LABEL_40;
            }
          }

          v42 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          _NRLogWithArgs(v42, 1, "%s%.30s:%-4d Handling Pad0 in linkReadBuffer", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2590);

          v29 = v532;
        }

LABEL_40:
        v31 = *(a2 + 24);
        v32 = *(a2 + 28) + 1;
        *(a2 + 28) = v32;
        if (v31 <= v32)
        {
          break;
        }

        v33 = v29[v32];
        if (v29[v32])
        {
          goto LABEL_42;
        }
      }

      if (v31 != v32)
      {
        [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, v31];
LABEL_446:
        v6 = 0;
        goto LABEL_460;
      }

      v6 = 1;
      if (gNRPacketLoggingEnabled == 1)
      {
        v53 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        if (sNRCopyLogToStdErr == 1)
        {

          goto LABEL_366;
        }

        v6 = 1;
        v214 = v53;
        v215 = os_log_type_enabled(v53, OS_LOG_TYPE_INFO);

        v29 = v532;
        if (v215)
        {
LABEL_366:
          v216 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v6 = 1;
          _NRLogWithArgs(v216, 1, "%s%.30s:%-4d Ended linkReadBuffer on a Pad0 handled=%u filledIn=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2598, *(a2 + 28), *(a2 + 24));

          v29 = v532;
        }
      }
    }
  }

  v34 = v531;
  do
  {
    v33 = v34[v30];
    if (v34[v30])
    {
      LODWORD(v31) = *(a2 + 24);
      v32 = *(a2 + 28);
      goto LABEL_43;
    }

    if (gNRPacketLoggingEnabled == 1)
    {
      v35 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v36 = v35;
        v37 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);

        v34 = v531;
        v29 = v532;
        if (!v37)
        {
          goto LABEL_28;
        }
      }

      v38 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      _NRLogWithArgs(v38, 1, "%s%.30s:%-4d Handling Pad0 in linkInputSlot alreadyRead=%zu", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2608, v30);

      v34 = v531;
      v29 = v532;
    }

LABEL_28:
    ++v30;
  }

  while (v30 < a4);
  if (v30 != a4)
  {
    [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, v30];
    goto LABEL_446;
  }

  if (gNRPacketLoggingEnabled != 1)
  {
    v6 = 1;
    goto LABEL_433;
  }

  v299 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
  if (sNRCopyLogToStdErr == 1)
  {

    goto LABEL_501;
  }

  v6 = 1;
  v306 = v299;
  v307 = os_log_type_enabled(v299, OS_LOG_TYPE_INFO);

  if (v307)
  {
LABEL_501:
    v10 = v530;
    v308 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
    v6 = 1;
    _NRLogWithArgs(v308, 1, "%s%.30s:%-4d Ended linkInputSlot on a Pad0 handled=%u filledIn=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2616, *(a2 + 28), *(a2 + 24));
  }

  else
  {
    v10 = v530;
  }

  v29 = v532;
  a4 = v533;
LABEL_433:
  if (gNRPacketLoggingEnabled == 1)
  {
    v295 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v301 = v295;
      v302 = os_log_type_enabled(v295, OS_LOG_TYPE_INFO);

      v29 = v532;
      if (!v302)
      {
        goto LABEL_434;
      }
    }

    v303 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    _NRLogWithArgs(v303, 1, "%s%.30s:%-4d out of LtN fast path inner loop", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 2999);

    v29 = v532;
  }

LABEL_434:
  v261 = *(a2 + 24);
  v260 = *(a2 + 28);
  if (v261 <= v260)
  {
    if (v260 != v261)
    {
      [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, *(a2 + 28)];
      goto LABEL_446;
    }

    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_440;
    }

    v328 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    v329 = v328;
    if (sNRCopyLogToStdErr == 1)
    {

      v10 = v530;
    }

    else
    {
      v383 = os_log_type_enabled(v328, OS_LOG_TYPE_INFO);

      v10 = v530;
      if (!v383)
      {
LABEL_440:
        *(a2 + 24) = 0;
        goto LABEL_454;
      }
    }

    v384 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    _NRLogWithArgs(v384, 1, "%s%.30s:%-4d resetting the linkReadBuffer (filledIn=%u)", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 3024, *(a2 + 24));

    goto LABEL_440;
  }

  if (v260 <= 0x8000)
  {
    if (v260)
    {
      if (!gNRPacketLoggingEnabled)
      {
        goto LABEL_454;
      }

      v262 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v263 = v262;
      if (sNRCopyLogToStdErr == 1)
      {

        v10 = v530;
      }

      else
      {
        v449 = os_log_type_enabled(v262, OS_LOG_TYPE_INFO);

        v10 = v530;
        if (!v449)
        {
          goto LABEL_454;
        }
      }

      v450 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      _NRLogWithArgs(v450, 1, "%s%.30s:%-4d not memmoving the linkReadBuffer thresh handled=%u filledIn=%u thresh=%u", "");
    }

    else
    {
      if (!gNRPacketLoggingEnabled)
      {
        goto LABEL_454;
      }

      v405 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v406 = v405;
      if (sNRCopyLogToStdErr == 1)
      {

        v10 = v530;
      }

      else
      {
        v453 = os_log_type_enabled(v405, OS_LOG_TYPE_INFO);

        v10 = v530;
        if (!v453)
        {
          goto LABEL_454;
        }
      }

      v450 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      _NRLogWithArgs(v450, 1, "%s%.30s:%-4d not memmoving the linkReadBuffer zero handled=%u filledIn=%u thresh=%u", "");
    }
  }

  else
  {
    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_437;
    }

    v326 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    v327 = v326;
    if (sNRCopyLogToStdErr == 1)
    {

      v10 = v530;
      goto LABEL_555;
    }

    v381 = os_log_type_enabled(v326, OS_LOG_TYPE_INFO);

    v10 = v530;
    v29 = v532;
    if (v381)
    {
LABEL_555:
      v382 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      _NRLogWithArgs(v382, 1, "%s%.30s:%-4d memmoving the linkReadBuffer by handled=%u (filledIn=%u) thresh=%u", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 3004, *(a2 + 28), *(a2 + 24), 0x8000);

      v29 = v532;
    }

LABEL_437:
    memmove(v29, &v29[*(a2 + 28)], (*(a2 + 24) - *(a2 + 28)));
    *(a2 + 24) = (*(a2 + 24) - *(a2 + 28));
  }

LABEL_454:
  if (v521)
  {
    *v521 = a4;
  }

  if (v526)
  {
    os_channel_advance_slot();
    v264 = v524;
  }

  else
  {
    v264 = v524;
    if (gNRPacketLoggingEnabled == 1)
    {
      v324 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v325 = v324;
      if (sNRCopyLogToStdErr == 1)
      {

        v10 = v530;
        v264 = v524;
      }

      else
      {
        v379 = os_log_type_enabled(v324, OS_LOG_TYPE_INFO);

        v10 = v530;
        v264 = v524;
        if (!v379)
        {
          goto LABEL_459;
        }
      }

      v380 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      _NRLogWithArgs(v380, 1, "%s%.30s:%-4d highestNexusOutputSlotWrittenTo is NULL", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 3039);
    }
  }

LABEL_459:
  *(a2 + 40) += v264;
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_460;
  }

  v300 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v309 = v300;
    v310 = os_log_type_enabled(v300, OS_LOG_TYPE_INFO);

    if (!v310)
    {
      goto LABEL_460;
    }
  }

  v311 = _NRCopyLogObjectForNRUUID(*(v530 + 48));
  _NRLogWithArgs(v311, 1, "%s%.30s:%-4d out of LtN fast path loop (%llu/%llu bytes)", "", "NRBluetoothPacketParserLinkToNexusLoopFastPath", 3043, v524, v519);

LABEL_460:
  v265 = v527;
LABEL_461:

  return v6 & 1;
}

uint64_t nrTLVToPacket(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v9 = a4;
  v10 = a2;
  v11 = a1;
  v212 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    if (a6 < a4)
    {
      LOWORD(v9) = 0;
      return v9;
    }

    if (!a4)
    {
      return v9;
    }

    if (a1)
    {
      if (a2)
      {
        if (a5)
        {
          v15 = 0;
          v16 = a1 + 2;
          v17 = 3;
          v18 = a2;
          while (1)
          {
            v19 = *v16;
            if (!v17)
            {
              goto LABEL_25;
            }

            if (v17 <= v19)
            {
              break;
            }

            v17 -= v19;
LABEL_21:
            v16 += 4;
            if (!--v18)
            {
              goto LABEL_30;
            }
          }

          if (v17 < v19)
          {
LABEL_25:
            v20 = v19 - v17;
            if (v20 >= v9 - v15)
            {
              v21 = (v9 - v15);
            }

            else
            {
              v21 = v20;
            }

            memcpy((a5 + v15), (*(v16 - 1) + v17), v21);
            v15 = (v21 + v15);
            if (v15 >= v9)
            {
LABEL_30:
              if (v15 == v9)
              {
                return v9;
              }

              v110 = nrCopyLogObj_2201();
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_239;
              }

              v173 = v110;
              v174 = os_log_type_enabled(v110, OS_LOG_TYPE_ERROR);

              if (v174)
              {
LABEL_239:
                v175 = nrCopyLogObj_2201();
                IOVecString = createIOVecString(v11, v10);
                _NRLogWithArgs(v175, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v15, v9, 3, IOVecString);
              }

              v177 = _os_log_pack_size();
              v179 = &v202 - ((MEMORY[0x28223BE20](v177, v178) + 15) & 0xFFFFFFFFFFFFFFF0);
              v180 = __error();
              v181 = _os_log_pack_fill(v179, v177, *v180, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
              v182 = createIOVecString(v11, v10);
              __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v181, "nrWriteIOVecToBuffer", v15, v9, 3, v182);
              v183 = nrCopyLogObj_2201();
              _NRLogAbortWithPack(v183, v179);
            }
          }

          v17 = 0;
          goto LABEL_21;
        }

        v103 = nrCopyLogObj_2201();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v167 = v103;
          v168 = os_log_type_enabled(v103, OS_LOG_TYPE_ERROR);

          if (!v168)
          {
LABEL_236:
            v170 = _os_log_pack_size();
            v86 = &v202 - ((MEMORY[0x28223BE20](v170, v171) + 15) & 0xFFFFFFFFFFFFFFF0);
            v172 = *__error();
            v88 = _os_log_pack_fill(v86, v170, v172, &dword_25B98C000, "%{public}s Assertion Failed: (outBuffer) != ((void*)0)");
            goto LABEL_237;
          }
        }

        v169 = nrCopyLogObj_2201();
        _NRLogWithArgs(v169, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (outBuffer) != ((void*)0)", "", "nrWriteIOVecToBuffer", 314);

        goto LABEL_236;
      }

      v96 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v161 = v96;
        v162 = os_log_type_enabled(v96, OS_LOG_TYPE_ERROR);

        if (!v162)
        {
LABEL_233:
          v164 = _os_log_pack_size();
          v86 = &v202 - ((MEMORY[0x28223BE20](v164, v165) + 15) & 0xFFFFFFFFFFFFFFF0);
          v166 = *__error();
          v88 = _os_log_pack_fill(v86, v164, v166, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 0");
          goto LABEL_237;
        }
      }

      v163 = nrCopyLogObj_2201();
      _NRLogWithArgs(v163, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nrWriteIOVecToBuffer", 313);

      goto LABEL_233;
    }

    v89 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v155 = v89;
      v156 = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);

      if (!v156)
      {
LABEL_230:
        v158 = _os_log_pack_size();
        v86 = &v202 - ((MEMORY[0x28223BE20](v158, v159) + 15) & 0xFFFFFFFFFFFFFFF0);
        v160 = *__error();
        v88 = _os_log_pack_fill(v86, v158, v160, &dword_25B98C000, "%{public}s Assertion Failed: (ioVecs) != ((void*)0)");
LABEL_237:
        *v88 = 136446210;
        v129 = "nrWriteIOVecToBuffer";
LABEL_201:
        *(v88 + 4) = v129;
        v130 = nrCopyLogObj_2201();
        _NRLogAbortWithPack(v130, v86);
      }
    }

    v157 = nrCopyLogObj_2201();
    _NRLogWithArgs(v157, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (ioVecs) != ((void*)0)", "", "nrWriteIOVecToBuffer", 312);

    goto LABEL_230;
  }

  if (!a1)
  {
    v59 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v81 = v59;
      v82 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);

      if (!v82)
      {
LABEL_173:
        v84 = _os_log_pack_size();
        v86 = &v202 - ((MEMORY[0x28223BE20](v84, v85) + 15) & 0xFFFFFFFFFFFFFFF0);
        v87 = *__error();
        v88 = _os_log_pack_fill(v86, v84, v87, &dword_25B98C000, "%{public}s Assertion Failed: (ioVecs) != ((void*)0)");
LABEL_200:
        *v88 = 136446210;
        v129 = "nr6LoWPANTLVToPacket";
        goto LABEL_201;
      }
    }

    v83 = nrCopyLogObj_2201();
    _NRLogWithArgs(v83, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (ioVecs) != ((void*)0)", "", "nr6LoWPANTLVToPacket", 753);

    goto LABEL_173;
  }

  if (!a2)
  {
    v60 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v90 = v60;
      v91 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);

      if (!v91)
      {
LABEL_178:
        v93 = _os_log_pack_size();
        v86 = &v202 - ((MEMORY[0x28223BE20](v93, v94) + 15) & 0xFFFFFFFFFFFFFFF0);
        v95 = *__error();
        v88 = _os_log_pack_fill(v86, v93, v95, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 0");
        goto LABEL_200;
      }
    }

    v92 = nrCopyLogObj_2201();
    _NRLogWithArgs(v92, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nr6LoWPANTLVToPacket", 754);

    goto LABEL_178;
  }

  if (!a4)
  {
    v61 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v97 = v61;
      v98 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);

      if (!v98)
      {
LABEL_183:
        v100 = _os_log_pack_size();
        v86 = &v202 - ((MEMORY[0x28223BE20](v100, v101) + 15) & 0xFFFFFFFFFFFFFFF0);
        v102 = *__error();
        v88 = _os_log_pack_fill(v86, v100, v102, &dword_25B98C000, "%{public}s Assertion Failed: tlvLen > 0");
        goto LABEL_200;
      }
    }

    v99 = nrCopyLogObj_2201();
    _NRLogWithArgs(v99, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: tlvLen > 0", "", "nr6LoWPANTLVToPacket", 755);

    goto LABEL_183;
  }

  if (!a5)
  {
    v62 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v104 = v62;
      v105 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);

      if (!v105)
      {
LABEL_188:
        v107 = _os_log_pack_size();
        v86 = &v202 - ((MEMORY[0x28223BE20](v107, v108) + 15) & 0xFFFFFFFFFFFFFFF0);
        v109 = *__error();
        v88 = _os_log_pack_fill(v86, v107, v109, &dword_25B98C000, "%{public}s Assertion Failed: (packetBuffer) != ((void*)0)");
        goto LABEL_200;
      }
    }

    v106 = nrCopyLogObj_2201();
    _NRLogWithArgs(v106, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (packetBuffer) != ((void*)0)", "", "nr6LoWPANTLVToPacket", 756);

    goto LABEL_188;
  }

  if (a6 <= 0x27)
  {
    v63 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v111 = v63;
      v112 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);

      if (!v112)
      {
LABEL_193:
        v114 = _os_log_pack_size();
        v86 = &v202 - ((MEMORY[0x28223BE20](v114, v115) + 15) & 0xFFFFFFFFFFFFFFF0);
        v116 = *__error();
        v88 = _os_log_pack_fill(v86, v114, v116, &dword_25B98C000, "%{public}s Assertion Failed: packetLength >= sizeof(NRIPv6Hdr_s)");
        goto LABEL_200;
      }
    }

    v113 = nrCopyLogObj_2201();
    _NRLogWithArgs(v113, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: packetLength >= sizeof(NRIPv6Hdr_s)", "", "nr6LoWPANTLVToPacket", 757);

    goto LABEL_193;
  }

  if (!a7)
  {
    v64 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v117 = v64;
      v118 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);

      if (!v118)
      {
LABEL_196:
        v120 = _os_log_pack_size();
        v86 = &v202 - ((MEMORY[0x28223BE20](v120, v121) + 15) & 0xFFFFFFFFFFFFFFF0);
        v122 = *__error();
        v88 = _os_log_pack_fill(v86, v120, v122, &dword_25B98C000, "%{public}s Assertion Failed: (srcAddr) != ((void*)0)");
        goto LABEL_200;
      }
    }

    v119 = nrCopyLogObj_2201();
    _NRLogWithArgs(v119, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (srcAddr) != ((void*)0)", "", "nr6LoWPANTLVToPacket", 758);

    goto LABEL_196;
  }

  if (!a8)
  {
    v65 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v123 = v65;
      v124 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);

      if (!v124)
      {
LABEL_199:
        v126 = _os_log_pack_size();
        v86 = &v202 - ((MEMORY[0x28223BE20](v126, v127) + 15) & 0xFFFFFFFFFFFFFFF0);
        v128 = *__error();
        v88 = _os_log_pack_fill(v86, v126, v128, &dword_25B98C000, "%{public}s Assertion Failed: (dstAddr) != ((void*)0)");
        goto LABEL_200;
      }
    }

    v125 = nrCopyLogObj_2201();
    _NRLogWithArgs(v125, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (dstAddr) != ((void*)0)", "", "nr6LoWPANTLVToPacket", 759);

    goto LABEL_199;
  }

  v12 = a3;
  v13 = &v202;
  if (a3 <= 101)
  {
    if (a3 != 3)
    {
      if (a3 == 100)
      {
        v14 = &nrKnownIPv6HdrESP;
        goto LABEL_82;
      }

      if (a3 == 101)
      {
        v14 = &nrKnownIPv6HdrESP_ECT0;
        goto LABEL_82;
      }

LABEL_45:
      if (nrCopyLogObj_onceToken_1989 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1989, &__block_literal_global_1990);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1991, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_271;
      }

      v22 = nrCopyLogObj_sNRLogObj_1991;
      if (v12 <= 3)
      {
        switch(v12)
        {
          case 0:
            StringFromNRTLVType = @"Pad0";
            goto LABEL_124;
          case 1:
            StringFromNRTLVType = @"PadN";
            goto LABEL_124;
          case 3:
            StringFromNRTLVType = @"Encapsulated6LoWPAN";
            goto LABEL_124;
        }
      }

      else if (v12 > 103)
      {
        if (v12 == 104)
        {
          StringFromNRTLVType = @"KnownIPv6Hdr_ESP_ClassC";
          goto LABEL_124;
        }

        if (v12 == 105)
        {
          StringFromNRTLVType = @"KnownIPv6Hdr_ESP_ClassC_ECT0";
          goto LABEL_124;
        }
      }

      else
      {
        if (v12 == 4)
        {
          StringFromNRTLVType = @"IKEv2PointToPoint";
          goto LABEL_124;
        }

        if (v12 == 5)
        {
          StringFromNRTLVType = @"ControlMessage";
LABEL_124:
          _NRLogWithArgs(v22, 17, "unexpected tlvType %@", StringFromNRTLVType);
LABEL_125:

          goto LABEL_126;
        }
      }

      StringFromNRTLVType = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", v12];
      goto LABEL_124;
    }

    if (a4 == 1)
    {
      if (nrCopyLogObj_onceToken_1989 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1989, &__block_literal_global_1990);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1991, OS_LOG_TYPE_ERROR))
      {
        v22 = nrCopyLogObj_2201();
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received 6LoWPAN TLV too short %u");
LABEL_126:

        v57 = 0;
        goto LABEL_117;
      }

      goto LABEL_271;
    }

    v209 = &v202;
    v206 = &v202;
    v207 = a6;
    v24 = 0;
    if (a4 >= 0x2A)
    {
      v25 = 42;
    }

    else
    {
      v25 = a4;
    }

    v210 = a1;
    v26 = a1 + 2;
    v27 = 3;
    v208 = a2;
    v28 = a2;
    while (1)
    {
      v29 = *v26;
      if (v27)
      {
        if (v27 > v29)
        {
          v27 -= v29;
          goto LABEL_62;
        }

        if (v27 >= v29)
        {
          v27 = 0;
          goto LABEL_62;
        }
      }

      v30 = a7;
      v31 = a8;
      v32 = v29 - v27;
      if (v32 >= v25 - v24)
      {
        v33 = (v25 - v24);
      }

      else
      {
        v33 = v32;
      }

      memcpy(&v211[v24], (*(v26 - 1) + v27), v33);
      v24 = (v33 + v24);
      if (v24 >= v25)
      {
        a8 = v31;
        a7 = v30;
LABEL_80:
        if (v24 == v25)
        {
          a6 = v207;
          v14 = v211;
          v13 = v209;
          v11 = v210;
          v10 = v208;
          goto LABEL_82;
        }

        v189 = nrCopyLogObj_2201();
        v190 = v189;
        if (sNRCopyLogToStdErr == 1)
        {

          goto LABEL_262;
        }

        v191 = os_log_type_enabled(v189, OS_LOG_TYPE_ERROR);

        if (v191)
        {
LABEL_262:
          v192 = nrCopyLogObj_2201();
          v193 = createIOVecString(v210, v208);
          _NRLogWithArgs(v192, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v24, v25, 3, v193);
        }

        v194 = _os_log_pack_size();
        v196 = &v202 - ((MEMORY[0x28223BE20](v194, v195) + 15) & 0xFFFFFFFFFFFFFFF0);
        v197 = __error();
        v198 = _os_log_pack_fill(v196, v194, *v197, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
        v199 = createIOVecString(v210, v208);
        __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v198, "nrWriteIOVecToBuffer", v24, v25, 3, v199);
        v200 = nrCopyLogObj_2201();
        _NRLogAbortWithPack(v200, v196);
      }

      v27 = 0;
      a8 = v31;
      a7 = v30;
LABEL_62:
      v26 += 4;
      if (!--v28)
      {
        goto LABEL_80;
      }
    }
  }

  if (a3 > 103)
  {
    if (a3 == 104)
    {
      v14 = &nrKnownIPv6HdrESP_ClassC;
      goto LABEL_82;
    }

    if (a3 == 105)
    {
      v14 = &nrKnownIPv6HdrESP_ClassC_ECT0;
      goto LABEL_82;
    }

    goto LABEL_45;
  }

  if (a3 == 102)
  {
    v14 = &nrKnownIPv6HdrTCP;
  }

  else
  {
    v14 = &nrKnownIPv6HdrTCP_ECT0;
  }

LABEL_82:
  if ((*v14 & 0xE0) != 0x60)
  {
    v66 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v131 = v66;
      v132 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);

      if (!v132)
      {
        goto LABEL_271;
      }
    }

    v22 = nrCopyLogObj_2201();
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received unknown 6LoWPAN dispatch %u");
    goto LABEL_126;
  }

  if (v14[1] < 0)
  {
    v34 = 3;
  }

  else
  {
    v34 = 2;
  }

  v35 = &v14[v34];
  *a5 = 96;
  v36 = (*v14 >> 3) & 3;
  if (v36 == 3)
  {
    v37 = 0;
    goto LABEL_87;
  }

  if (!v36)
  {
    v67 = *(v35 + 1);
    *(a5 + 3) = v35[3];
    *(a5 + 1) = v67;
    v37 = 4;
LABEL_242:
    v184 = bswap32(*v35 << 20);
LABEL_243:
    *a5 |= v184;
    goto LABEL_87;
  }

  if (v36 != 1)
  {
    v37 = 1;
    goto LABEL_242;
  }

  v135 = *v35;
  *(a5 + 3) = v35[2];
  *(a5 + 1) = v135;
  if ((*v35 & 0x80) == 0)
  {
    v37 = 3;
    if ((*v35 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_256;
  }

  *a5 |= 0x2000u;
  v37 = 3;
  if ((*v35 & 0x40) != 0)
  {
LABEL_256:
    v184 = 4096;
    goto LABEL_243;
  }

LABEL_87:
  v38 = *v14;
  if ((*v14 & 4) != 0)
  {
    v68 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v133 = v68;
      v134 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);

      if (!v134)
      {
        goto LABEL_271;
      }
    }

    v22 = nrCopyLogObj_2201();
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d can't handle NH=1 yet");
    goto LABEL_126;
  }

  *(a5 + 6) = v35[v37];
  v39 = v37 + 1;
  v40 = v38 & 3;
  if (v40 == 2)
  {
    v41 = 64;
LABEL_90:
    *(a5 + 7) = v41;
    goto LABEL_91;
  }

  if (v40)
  {
    if (v40 == 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    goto LABEL_90;
  }

  *(a5 + 7) = v35[v39];
  LODWORD(v39) = v37 + 2;
LABEL_91:
  v42 = v14[1];
  v43 = (v42 >> 4) & 3;
  if ((v42 & 0x40) != 0)
  {
    switch(v43)
    {
      case 3:
        goto LABEL_93;
      case 0:
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        goto LABEL_94;
      case 1:
        *(a5 + 8) = *a7;
        goto LABEL_219;
    }

    *(a5 + 8) = *a7;
    *(a5 + 16) = *&v35[v39];
  }

  else
  {
    switch(v43)
    {
      case 3:
LABEL_93:
        *(a5 + 8) = *a7;
        goto LABEL_94;
      case 0:
        *(a5 + 8) = *&v35[v39];
        LODWORD(v39) = v39 | 0x10;
        goto LABEL_94;
      case 1:
        *(a5 + 8) = -32514;
        *(a5 + 10) = 0;
        *(a5 + 14) = 0;
LABEL_219:
        *(a5 + 16) = *&v35[v39];
        LODWORD(v39) = v39 + 8;
        goto LABEL_94;
    }

    *(a5 + 8) = -32514;
    *(a5 + 10) = 0;
    *(a5 + 19) = -257;
    *(a5 + 21) = 0;
    *(a5 + 22) = *&v35[v39];
  }

  LODWORD(v39) = v39 + 2;
LABEL_94:
  v44 = v42 & 3;
  v206 = v14;
  if ((v42 & 8) != 0)
  {
    if ((v42 & 4) == 0)
    {
      if ((v42 & 3) > 1)
      {
        if (v44 == 2)
        {
          *(a5 + 24) = -1;
          v185 = &v35[v39];
          *(a5 + 25) = *v185;
          *(a5 + 26) = 0;
          *(a5 + 33) = 0;
          v186 = *(v185 + 1);
          *(a5 + 39) = v185[3];
          *(a5 + 37) = v186;
          LODWORD(v39) = v39 + 4;
        }

        else
        {
          *(a5 + 31) = 0;
          *(a5 + 24) = 767;
          *(a5 + 39) = v35[v39];
          LODWORD(v39) = v39 + 1;
        }

        goto LABEL_98;
      }

      if ((v42 & 3) != 0)
      {
        *(a5 + 24) = -1;
        v69 = &v35[v39];
        *(a5 + 25) = *v69;
        *(a5 + 26) = 0;
        *(a5 + 34) = 0;
        v70 = *(v69 + 1);
        *(a5 + 39) = v69[5];
        *(a5 + 35) = v70;
        LODWORD(v39) = v39 + 6;
        goto LABEL_98;
      }

      goto LABEL_166;
    }

    v136 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr)
    {

      if (!v44)
      {
        goto LABEL_258;
      }
    }

    else
    {
      v187 = v136;
      v188 = os_log_type_enabled(v136, OS_LOG_TYPE_ERROR);

      if (!v44)
      {
        if (!v188)
        {
          goto LABEL_271;
        }

LABEL_258:
        v22 = nrCopyLogObj_2201();
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d can't handle M=1 DAC=1 DAM=00 yet");
        goto LABEL_126;
      }

      if (!v188)
      {
        goto LABEL_271;
      }
    }

    v22 = nrCopyLogObj_2201();
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d M=1 DAC=1 DAM!=00 is reserved");
    goto LABEL_126;
  }

  if ((v42 & 4) != 0)
  {
    if (v44 == 3)
    {
      goto LABEL_97;
    }

    if ((v42 & 3) == 0)
    {
      v73 = nrCopyLogObj_2201();
      v74 = v73;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v201 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);

        if (!v201)
        {
          goto LABEL_271;
        }
      }

      v22 = nrCopyLogObj_2201();
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d M=0 DAC=1 DAM=00 is reserved");
      goto LABEL_126;
    }

    if (v44 == 1)
    {
      *(a5 + 24) = *a8;
      goto LABEL_222;
    }

    *(a5 + 24) = *a8;
    *(a5 + 32) = *&v35[v39];
  }

  else
  {
    if (v44 == 3)
    {
LABEL_97:
      *(a5 + 24) = *a8;
      goto LABEL_98;
    }

    if ((v42 & 3) == 0)
    {
LABEL_166:
      *(a5 + 24) = *&v35[v39];
      LODWORD(v39) = v39 + 16;
      goto LABEL_98;
    }

    if (v44 == 1)
    {
      *(a5 + 24) = -32514;
      *(a5 + 26) = 0;
      *(a5 + 30) = 0;
LABEL_222:
      *(a5 + 32) = *&v35[v39];
      LODWORD(v39) = v39 + 8;
      goto LABEL_98;
    }

    *(a5 + 24) = -32514;
    *(a5 + 26) = 0;
    *(a5 + 35) = -257;
    *(a5 + 37) = 0;
    *(a5 + 38) = *&v35[v39];
  }

  LODWORD(v39) = v39 + 2;
LABEL_98:
  v45 = v34 + v39;
  if (v12 == 3)
  {
    v46 = v34 + v39;
  }

  else
  {
    v46 = 0;
  }

  v47 = v9 - v46;
  *(a5 + 4) = bswap32(v9 - v46) >> 16;
  if ((v9 - v46 + 40) > a6)
  {
    v71 = a6;
    v72 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_216:
      v22 = nrCopyLogObj_2201();
      StringFromNRTLVType = createStringFromNRTLVType(v12);
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d packet too big %@ tlvLen=%u payloadLength=%u packetLength=%u", "", "nr6LoWPANTLVToPacket", 981, StringFromNRTLVType, v9, v47, v71);
      goto LABEL_125;
    }

    v137 = v72;
    v138 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);

    if (v138)
    {
      goto LABEL_216;
    }

LABEL_271:
    v57 = 0;
    goto LABEL_117;
  }

  v204 = v45;
  v205 = (v9 - v46 + 40);
  v208 = v9 - v46 + 40;
  v207 = a6;
  v209 = v13;
  v210 = v11;
  if (v46 == v9)
  {
    goto LABEL_115;
  }

  v48 = 0;
  v49 = (v9 - v46);
  v50 = v10;
  v51 = v10;
  v52 = v210 + 2;
  v203 = (v46 + 3);
  v53 = v46 + 3;
  while (1)
  {
    v54 = *v52;
    if (!v53)
    {
      goto LABEL_109;
    }

    if (v53 <= v54)
    {
      break;
    }

    v53 -= v54;
LABEL_105:
    v52 += 4;
    if (!--v51)
    {
      goto LABEL_114;
    }
  }

  if (v53 >= v54)
  {
LABEL_113:
    v53 = 0;
    goto LABEL_105;
  }

LABEL_109:
  v55 = v54 - v53;
  if (v55 >= v49 - v48)
  {
    v56 = (v49 - v48);
  }

  else
  {
    v56 = v55;
  }

  memcpy((a5 + 40 + v48), (*(v52 - 1) + v53), v56);
  v48 = (v56 + v48);
  if (v48 < v49)
  {
    goto LABEL_113;
  }

LABEL_114:
  if (v48 != v49)
  {
    v79 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {

      v80 = v203;
    }

    else
    {
      v144 = v79;
      v145 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);

      v80 = v203;
      if (!v145)
      {
        goto LABEL_227;
      }
    }

    v146 = nrCopyLogObj_2201();
    v147 = createIOVecString(v210, v50);
    _NRLogWithArgs(v146, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v48, v49, v80, v147);

LABEL_227:
    v148 = _os_log_pack_size();
    v150 = &v202 - ((MEMORY[0x28223BE20](v148, v149) + 15) & 0xFFFFFFFFFFFFFFF0);
    v151 = __error();
    v152 = _os_log_pack_fill(v150, v148, *v151, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
    v153 = createIOVecString(v210, v50);
    __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v152, "nrWriteIOVecToBuffer", v48, v49, v80, v153);
    v154 = nrCopyLogObj_2201();
    _NRLogAbortWithPack(v154, v150);
  }

LABEL_115:
  if (gNRPacketLoggingEnabled != 1)
  {
    v57 = v208;
    goto LABEL_117;
  }

  v75 = nrCopyLogObj_2201();
  v76 = v207;
  v57 = v208;
  if (sNRCopyLogToStdErr == 1)
  {

    v78 = v205;
    v77 = v206;
    goto LABEL_224;
  }

  v139 = v75;
  v140 = os_log_type_enabled(v75, OS_LOG_TYPE_INFO);

  v78 = v205;
  v77 = v206;
  if (v140)
  {
LABEL_224:
    v141 = nrCopyLogObj_2201();
    v142 = NRDCreateIPHCString(v77, v204);
    PacketString = createPacketString(a5, v76);
    _NRLogWithArgs(v141, 1, "%s%.30s:%-4d Decompressed 6LoWPAN data from %u to %u, %@ to %@", "", "nr6LoWPANTLVToPacket", 988, v9, v78, v142, PacketString);
  }

LABEL_117:
  LOWORD(v9) = v57;
  return v9;
}

uint64_t NRBluetoothParserReadInputCallback(uint64_t a1, void *a2, size_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v30 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v30;
      v33 = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
        return 0;
      }
    }

    v14 = nrCopyLogObj_560();
    _NRLogWithArgs(v14, 17, "%s called with null buffer");
LABEL_40:
    v15 = 0;
    goto LABEL_31;
  }

  if (!a4)
  {
    v31 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v34 = v31;
      v35 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);

      if (!v35)
      {
        return 0;
      }
    }

    v14 = nrCopyLogObj_560();
    _NRLogWithArgs(v14, 17, "%s called with null handledBufferLength");
    goto LABEL_40;
  }

  if (!a1)
  {
    return 0;
  }

  v12 = *(a1 + 16);
  v14 = v12;
  if (*(v12 + 13) != 4)
  {
    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_7;
    }

    v37 = _NRCopyLogObjectForNRUUID(v12[6]);
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v38 = v37;
      v39 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);

      if (!v39)
      {
        goto LABEL_7;
      }
    }

    v40 = _NRCopyLogObjectForNRUUID(v14[6]);
    StringFromNRLinkChannelPriority = createStringFromNRLinkChannelPriority(*(a1 + 42));
    _NRLogWithArgs(v40, 1, "%s%.30s:%-4d Link input available - %@", "", "NRBluetoothParserReadInputCallback", 2270, StringFromNRLinkChannelPriority);

LABEL_7:
    v16 = *(a1 + 42);
    v17 = 576;
    if (v16 == 3)
    {
      v17 = 592;
    }

    v18 = v16 == 2;
    v19 = 608;
    if (!v18)
    {
      v19 = v17;
    }

    *(v14 + v19) = *(v14 + v19) + a3;
    if ((*(a1 + 43) & 1) == 0)
    {
      v20 = _NRCopyLogObjectForNRUUID(v14[6]);
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v25 = v20;
        v26 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (!v26)
        {
LABEL_20:
          v15 = 0;
          *a4 = 0;
          goto LABEL_31;
        }
      }

      v27 = _NRCopyLogObjectForNRUUID(v14[6]);
      _NRLogWithArgs(v27, 0, "%s%.30s:%-4d not ready to accept data", "", "NRBluetoothParserReadInputCallback", 2282);

      goto LABEL_20;
    }

    if ((*(a1 + 43) & 2) != 0)
    {
      if (*(v14 + 9) == 1)
      {
        if (*(v14 + 10) == 1)
        {
          v28 = NRLinkLinkToNexusLoop6LoWPANPacket(v14, a1, a2, a3, a4, a5);
        }

        else
        {
          v28 = NRLinkLinkToNexusLoopPacket(v14, a1, a2, a3, a4, a5, a6, v13);
        }
      }

      else
      {
        v28 = NRBluetoothPacketParserLinkToNexusLoopFastPath(v14, a1, a2, a3, a4, a5);
      }

      v15 = v28;
      goto LABEL_31;
    }

    if (*(v14 + 13) == 4)
    {
LABEL_28:
      *a4 = a3;
      v15 = 1;
      goto LABEL_31;
    }

    v21 = *a1;
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (*(a1 + 42) - 1 > 2)
    {
      v24 = &unk_286D2CF68;
    }

    else
    {
      v24 = qword_27996B010[(*(a1 + 42) - 1)];
    }

    memcpy(&v21[*(a1 + 24)], a2, a3);
    *(a1 + 24) += a3;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_27:
      v29 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 length:a3];
      [v23 setObject:v24 forKeyedSubscript:@"channel-id"];
      [v23 setObject:v29 forKeyedSubscript:@"message-data"];
      [v23 setObject:&unk_286D2CF80 forKeyedSubscript:@"message-pre-act"];
      [v22 setObject:v23 forKeyedSubscript:@"message"];
      [(NRBluetoothPacketParser *)v14 sendXPCDictionary:v22];

      goto LABEL_28;
    }

    v42 = _NRCopyLogObjectForNRUUID(v14[6]);
    v43 = v42;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v44 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);

      if (!v44)
      {
        goto LABEL_27;
      }
    }

    v45 = _NRCopyLogObjectForNRUUID(v14[6]);
    _NRLogWithArgs(v45, 1, "%s%.30s:%-4d Reading link input, setting filledIn=%u (linkChannelPriority=%u)", "", "[NRBluetoothPacketParser readDataFromChannelWithReadContext:data:dataLength:]", 2208, *(a1 + 24), *(a1 + 42));

    goto LABEL_27;
  }

  v15 = 0;
LABEL_31:

  return v15;
}

uint64_t nrPacketToTLV(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v398 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v29 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v42 = v29;
      v43 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

      if (!v43)
      {
LABEL_70:
        v45 = _os_log_pack_size();
        v47 = &v387 - ((MEMORY[0x28223BE20](v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
        v48 = *__error();
        v49 = _os_log_pack_fill(v47, v45, v48, &dword_25B98C000, "%{public}s Assertion Failed: (packetBuffer) != ((void*)0)");
LABEL_77:
        *v49 = 136446210;
        v62 = "nrPacketToTLV";
LABEL_318:
        *(v49 + 4) = v62;
        goto LABEL_319;
      }
    }

    v44 = nrCopyLogObj_2201();
    _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (packetBuffer) != ((void*)0)", "", "nrPacketToTLV", 1318);

    goto LABEL_70;
  }

  if (!a2)
  {
    v30 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v50 = v30;
      v51 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

      if (!v51)
      {
LABEL_73:
        v53 = _os_log_pack_size();
        v47 = &v387 - ((MEMORY[0x28223BE20](v53, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
        v55 = *__error();
        v49 = _os_log_pack_fill(v47, v53, v55, &dword_25B98C000, "%{public}s Assertion Failed: packetLength > 0");
        goto LABEL_77;
      }
    }

    v52 = nrCopyLogObj_2201();
    _NRLogWithArgs(v52, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: packetLength > 0", "", "nrPacketToTLV", 1319);

    goto LABEL_73;
  }

  v7 = a3;
  if (!a3)
  {
    v31 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v56 = v31;
      v57 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (!v57)
      {
LABEL_76:
        v59 = _os_log_pack_size();
        v47 = &v387 - ((MEMORY[0x28223BE20](v59, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
        v61 = *__error();
        v49 = _os_log_pack_fill(v47, v59, v61, &dword_25B98C000, "%{public}s Assertion Failed: (ioVecs) != ((void*)0)");
        goto LABEL_77;
      }
    }

    v58 = nrCopyLogObj_2201();
    _NRLogWithArgs(v58, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (ioVecs) != ((void*)0)", "", "nrPacketToTLV", 1320);

    goto LABEL_76;
  }

  v8 = a4;
  if (!a4)
  {
    v32 = nrCopyLogObj_2201();
    v33 = "nrPacketToTLV";
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v63 = v32;
      v64 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (!v64)
      {
LABEL_80:
        v66 = _os_log_pack_size();
        v47 = &v387 - ((MEMORY[0x28223BE20](v66, v67) + 15) & 0xFFFFFFFFFFFFFFF0);
        v68 = *__error();
        v69 = _os_log_pack_fill(v47, v66, v68, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 0", v387, v388);
        goto LABEL_305;
      }
    }

    v65 = nrCopyLogObj_2201();
    _NRLogWithArgs(v65, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nrPacketToTLV", 1321);

    goto LABEL_80;
  }

  if (!a5)
  {
    v34 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v70 = v34;
      v71 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

      if (!v71)
      {
LABEL_83:
        v73 = _os_log_pack_size();
        v47 = &v387 - ((MEMORY[0x28223BE20](v73, v74) + 15) & 0xFFFFFFFFFFFFFFF0);
        v75 = *__error();
        v49 = _os_log_pack_fill(v47, v73, v75, &dword_25B98C000, "%{public}s Assertion Failed: (srcAddr) != ((void*)0)");
LABEL_87:
        *v49 = 136446210;
        v62 = "nrPacketTo6LoWPANTLV";
        goto LABEL_318;
      }
    }

    v72 = nrCopyLogObj_2201();
    _NRLogWithArgs(v72, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (srcAddr) != ((void*)0)", "", "nrPacketTo6LoWPANTLV", 1039);

    goto LABEL_83;
  }

  if (!a6)
  {
    v35 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v76 = v35;
      v77 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      if (!v77)
      {
LABEL_86:
        v79 = _os_log_pack_size();
        v47 = &v387 - ((MEMORY[0x28223BE20](v79, v80) + 15) & 0xFFFFFFFFFFFFFFF0);
        v81 = *__error();
        v49 = _os_log_pack_fill(v47, v79, v81, &dword_25B98C000, "%{public}s Assertion Failed: (dstAddr) != ((void*)0)");
        goto LABEL_87;
      }
    }

    v78 = nrCopyLogObj_2201();
    _NRLogWithArgs(v78, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (dstAddr) != ((void*)0)", "", "nrPacketTo6LoWPANTLV", 1040);

    goto LABEL_86;
  }

  v9 = a1;
  PacketString = a1;
  v389 = a2;
  if (a2 <= 0x27)
  {
    v36 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v36;
      v83 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);

      if (!v83)
      {
        goto LABEL_103;
      }
    }

    v84 = nrCopyLogObj_2201();
    _NRLogWithArgs(v84, 1, "%s%.30s:%-4d no 6lo compression - too short %u");
  }

  else
  {
    v10 = *a1 >> 4;
    if (v10 == 6)
    {
      if (gNRPacketLoggingEnabled != 1)
      {
LABEL_10:
        v11 = (a2 - 40);
        if (v11 == bswap32(*(v9 + 2)) >> 16)
        {
          v12 = v9 + 8;
          v14 = *(v9 + 1) != *a5 || *(v9 + 2) != *(a5 + 8);
          v15 = v9 + 24;
          v17 = *(v9 + 3) != *a6 || *(v9 + 4) != *(a6 + 8);
          memset(&v397[4] + 1, 0, 27);
          *(v397 + 1) = 0u;
          v396 = 0;
          memset(v395, 0, sizeof(v395));
          v18 = bswap32(*v9);
          if ((v18 & 0xFF00000) != 0)
          {
            LOBYTE(v395[0]) = v18 >> 20;
            v19 = 1;
            v20 = 112;
          }

          else
          {
            v19 = 0;
            v20 = 120;
          }

          LOBYTE(v397[0]) = v20;
          *(v395 | v19) = v9[6];
          v21 = v19 + 1;
          v22 = v9[7];
          switch(v22)
          {
            case 64:
              v23 = v20 | 2;
              break;
            case 255:
              v23 = v20 | 3;
              break;
            case 1:
              v23 = v20 | 1;
              break;
            default:
              *(v395 | v21) = v22;
              LODWORD(v21) = v19 | 2;
              if (v14)
              {
LABEL_29:
                if (*v12 == *a5 && (*(v9 + 18) == *(a5 + 10) ? (v24 = *(v9 + 11) == *(a5 + 14)) : (v24 = 0), v24))
                {
                  v26 = 96;
                  BYTE1(v397[0]) = 96;
                  v27 = (v395 | v21);
                  v28 = *(v9 + 8);
                }

                else
                {
                  if (*v12 != 254 || (v9[9] & 0xC0) != 0x80)
                  {
                    v26 = 0;
                    *(v395 | v21) = *v12;
                    LODWORD(v21) = v21 | 0x10;
                    goto LABEL_146;
                  }

                  if (*v12 != 33022 || *(v9 + 14) != 0xFEFF0000000000)
                  {
                    v26 = 16;
                    BYTE1(v397[0]) = 16;
                    *(v395 | v21) = *(v9 + 2);
                    LODWORD(v21) = v21 | 8;
                    goto LABEL_146;
                  }

                  v26 = 32;
                  BYTE1(v397[0]) = 32;
                  v28 = *(v9 + 11);
                  v27 = (v395 | v21);
                }

                *v27 = v28;
                LODWORD(v21) = v21 + 2;
LABEL_146:
                v123 = *v15;
                if (v123 != 255)
                {
                  if (!v17)
                  {
                    BYTE1(v397[0]) = v26 | 3;
                    goto LABEL_168;
                  }

                  if (*v15 == *a6 && *(v9 + 34) == *(a6 + 10) && *(v9 + 19) == *(a6 + 14))
                  {
                    BYTE1(v397[0]) = v26 | 6;
                    v126 = *(v9 + 16);
LABEL_163:
                    *(v395 + v21) = v126;
                    LODWORD(v21) = v21 + 2;
                    goto LABEL_168;
                  }

                  if (v123 == 254 && (v9[25] & 0xC0) == 0x80)
                  {
                    if (*v15 != 33022 || *(v9 + 30) != 0xFEFF0000000000)
                    {
                      BYTE1(v397[0]) = v26 | 1;
                      *(v395 + v21) = *(v9 + 4);
                      LODWORD(v21) = v21 + 8;
                      goto LABEL_168;
                    }

                    BYTE1(v397[0]) = v26 | 2;
                    v126 = *(v9 + 19);
                    goto LABEL_163;
                  }

                  goto LABEL_167;
                }

                BYTE1(v397[0]) = v26 | 8;
                if (*v15 ^ 0x2FFLL | *(v9 + 31))
                {
                  if (v9[36])
                  {
                    if (v9[34])
                    {
LABEL_167:
                      *(v395 + v21) = *v15;
                      LODWORD(v21) = v21 + 16;
                      goto LABEL_168;
                    }

                    BYTE1(v397[0]) = v26 | 9;
                    *(v395 + v21) = v9[25];
                    v251 = v395 + (v21 + 1);
                    *v251 = *(v9 + 35);
                    v251[4] = v9[39];
                    LODWORD(v21) = v21 + 6;
                  }

                  else
                  {
                    BYTE1(v397[0]) = v26 | 0xA;
                    *(v395 + v21) = v9[25];
                    v250 = v395 + (v21 + 1);
                    *v250 = *(v9 + 37);
                    v250[2] = v9[39];
                    LODWORD(v21) = v21 + 4;
                  }
                }

                else
                {
                  BYTE1(v397[0]) = v26 | 0xB;
                  *(v395 + v21) = v9[39];
                  LODWORD(v21) = v21 + 1;
                }

LABEL_168:
                __memcpy_chk();
                if (v21 > 4)
                {
                  if (v21 == 5)
                  {
                    if (v397[0] == 3303034 && *(v397 + 3) == 201329664)
                    {
                      v132 = 0;
                      v131 = 0;
                      LODWORD(v21) = 5;
                      v133 = 104;
                      goto LABEL_196;
                    }
                  }

                  else if (v21 == 6 && *v397 == 0xC000C0032026672)
                  {
                    v132 = 0;
                    v131 = 0;
                    LODWORD(v21) = 6;
                    v133 = 105;
                    goto LABEL_196;
                  }
                }

                else
                {
                  if (v21 == 1)
                  {
                    if (LOWORD(v397[0]) == 13178 && BYTE2(v397[0]) == 50)
                    {
                      v132 = 0;
                      v131 = 0;
                      LODWORD(v21) = 1;
                      v133 = 100;
                    }

                    else
                    {
                      v135 = bswap32(LOWORD(v397[0]) | (BYTE2(v397[0]) << 16));
                      v128 = v135 >= 0x7A330600;
                      v136 = v135 > 0x7A330600;
                      v137 = !v128;
                      LODWORD(v21) = 1;
                      if (v136 != v137)
                      {
                        v131 = 3;
                        goto LABEL_195;
                      }

                      v132 = 0;
                      v131 = 0;
                      v133 = 102;
                    }

LABEL_196:
                    v139 = v11 + v131;
                    **v7 = v133;
                    v140 = v7[2];
                    v392 = v11 + v131;
                    LODWORD(v388) = v133;
                    if (v140 >= 3)
                    {
                      *(*v7 + 1) = bswap32(v139) >> 16;
LABEL_198:
                      v393 = v8;
                      if (!v132)
                      {
                        goto LABEL_225;
                      }

                      v387 = __PAIR64__(v132, v131);
                      LODWORD(StringFromNRTLVType) = v8;
                      v141 = 0;
                      v142 = v7;
                      v143 = v7 + 2;
                      v144 = 3;
                      v145 = v393;
                      while (1)
                      {
                        v146 = *v143;
                        if (!v144)
                        {
                          goto LABEL_205;
                        }

                        if (v144 <= v146)
                        {
                          break;
                        }

                        v144 -= v146;
LABEL_201:
                        v143 += 4;
                        if (!--v145)
                        {
                          goto LABEL_210;
                        }
                      }

                      if (v144 >= v146)
                      {
LABEL_209:
                        v144 = 0;
                        goto LABEL_201;
                      }

LABEL_205:
                      v147 = v146 - v144;
                      if (v147 >= 2 - v141)
                      {
                        v148 = 2 - v141;
                      }

                      else
                      {
                        v148 = v147;
                      }

                      memcpy((*(v143 - 1) + v144), v397 + v141, v148);
                      v141 += v148;
                      if (v141 <= 1)
                      {
                        goto LABEL_209;
                      }

LABEL_210:
                      if (v141 != 2)
                      {
                        goto LABEL_306;
                      }

                      v7 = v142;
                      v9 = PacketString;
                      if (!v21)
                      {
                        goto LABEL_224;
                      }

                      v149 = 0;
                      v150 = v7 + 2;
                      v151 = 5;
                      v152 = v393;
                      while (2)
                      {
                        v153 = *v150;
                        if (v151)
                        {
                          if (v151 > v153)
                          {
                            v151 -= v153;
                          }

                          else
                          {
                            if (v151 < v153)
                            {
                              break;
                            }

LABEL_222:
                            v151 = 0;
                          }

                          v150 += 4;
                          if (!--v152)
                          {
                            goto LABEL_223;
                          }

                          continue;
                        }

                        break;
                      }

                      v154 = v153 - v151;
                      if (v154 >= v21 - v149)
                      {
                        v155 = v21 - v149;
                      }

                      else
                      {
                        v155 = v154;
                      }

                      memcpy((*(v150 - 1) + v151), v395 + v149, v155);
                      v149 += v155;
                      if (v149 < v21)
                      {
                        goto LABEL_222;
                      }

LABEL_223:
                      if (v149 != v21)
                      {
                        goto LABEL_306;
                      }

LABEL_224:
                      v8 = StringFromNRTLVType;
                      v131 = v387;
                      v132 = HIDWORD(v387);
LABEL_225:
                      if (!v11)
                      {
                        goto LABEL_238;
                      }

                      v156 = 0;
                      v157 = v9 + 40;
                      v158 = v131 + 3;
                      v159 = v7 + 2;
                      v160 = v393;
                      while (2)
                      {
                        v161 = *v159;
                        if (v158)
                        {
                          if (v158 > v161)
                          {
                            v158 -= v161;
                          }

                          else
                          {
                            if (v158 < v161)
                            {
                              break;
                            }

LABEL_236:
                            v158 = 0;
                          }

                          v159 += 4;
                          if (!--v160)
                          {
                            goto LABEL_237;
                          }

                          continue;
                        }

                        break;
                      }

                      v162 = v161 - v158;
                      if (v162 >= v11 - v156)
                      {
                        v163 = v11 - v156;
                      }

                      else
                      {
                        v163 = v162;
                      }

                      memcpy((*(v159 - 1) + v158), &v157[v156], v163);
                      v156 += v163;
                      if (v156 < v11)
                      {
                        goto LABEL_236;
                      }

LABEL_237:
                      if (v156 == v11)
                      {
LABEL_238:
                        if (v132)
                        {
                          v164 = 0;
                          v165 = 0;
                          v166 = 0;
                          v167 = 0;
                          v168 = v392 + 3;
                          v169 = v7 + 2;
                          while (1)
                          {
                            v170 = v168 - v165;
                            if (v168 <= v165)
                            {
                              v171 = 0;
                              goto LABEL_263;
                            }

                            v171 = *v169 >= v170 ? v170 : *v169;
                            if (!v171)
                            {
                              break;
                            }

                            v172 = *(v169 - 1);
                            if (v166)
                            {
                              LODWORD(StringFromNRTLVType) = v8;
                              v173 = v172;
                              v394 = *v172 << 8;
                              v167 = MEMORY[0x25F874350](&v394, 2, v167);
                              if (v171 != 1)
                              {
                                v167 = MEMORY[0x25F874350](v173 + 1, (v171 - 1), v167);
                              }

                              v8 = StringFromNRTLVType;
                            }

                            else
                            {
                              v167 = MEMORY[0x25F874350](v172, v171, v167);
                            }

                            if (v171)
                            {
                              v166 ^= 1u;
                            }

                            v165 += v171;
                            if (v165 >= v168 && v171 < *v169)
                            {
                              goto LABEL_263;
                            }

                            ++v164;
                            v169 += 4;
                            if (v393 == v164)
                            {
                              LOWORD(v164) = v8;
LABEL_263:
                              v178 = v392;
                              if (v165 == v168)
                              {
                                v179 = ~v167;
                                v180 = &v7[4 * v164];
                                v181 = v180[2];
                                if (v181 < v171 + 2)
                                {
                                  v182 = 0x280D73000;
                                  if (v181 >= v171 + 1)
                                  {
                                    if (v164 + 1 < v8)
                                    {
                                      v183 = &v7[4 * v164 + 4];
                                      if (v183[2])
                                      {
                                        *(*v180 + v171) = v179;
                                        v184 = *v183;
                                        goto LABEL_270;
                                      }

                                      v249 = nrCopyLogObj_2201();
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        goto LABEL_369;
                                      }

                                      v270 = v249;
                                      v271 = os_log_type_enabled(v249, OS_LOG_TYPE_ERROR);

                                      if (v271)
                                      {
LABEL_369:
                                        v272 = nrCopyLogObj_2201();
                                        IOVecString = createIOVecString(v7, v8);
                                        _NRLogWithArgs(v272, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 193, IOVecString, v164, v171);
                                      }

                                      v274 = _os_log_pack_size();
                                      v260 = &v387 - ((MEMORY[0x28223BE20](v274, v275) + 15) & 0xFFFFFFFFFFFFFFF0);
                                      v276 = *__error();
                                      v262 = _os_log_pack_fill(v260, v274, v276, &dword_25B98C000, "%{public}s Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v387, v388);
LABEL_371:
                                      v277 = v262;
                                      v278 = createIOVecString(v7, v8);
                                      __os_log_helper_1_2_4_8_34_8_64_4_0_4_0(v277, "nrChecksumIOVecInner", v278, v164, v171);
LABEL_395:
                                      v323 = nrCopyLogObj_2201();
                                      _NRLogAbortWithPack(v323, v260);
                                    }

                                    v248 = nrCopyLogObj_2201();
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      goto LABEL_366;
                                    }

                                    v263 = v248;
                                    v264 = os_log_type_enabled(v248, OS_LOG_TYPE_ERROR);

                                    if (v264)
                                    {
LABEL_366:
                                      v265 = nrCopyLogObj_2201();
                                      v266 = createIOVecString(v7, v8);
                                      _NRLogWithArgs(v265, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 191, v266, v164, v171);
                                    }

                                    v267 = _os_log_pack_size();
                                    v260 = &v387 - ((MEMORY[0x28223BE20](v267, v268) + 15) & 0xFFFFFFFFFFFFFFF0);
                                    v269 = *__error();
                                    v262 = _os_log_pack_fill(v260, v267, v269, &dword_25B98C000, "%{public}s Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v387, v388);
                                    goto LABEL_371;
                                  }

                                  v247 = nrCopyLogObj_2201();
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    goto LABEL_363;
                                  }

                                  v254 = v247;
                                  v255 = os_log_type_enabled(v247, OS_LOG_TYPE_ERROR);

                                  if (v255)
                                  {
LABEL_363:
                                    v256 = nrCopyLogObj_2201();
                                    v257 = createIOVecString(v7, v8);
                                    _NRLogWithArgs(v256, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 189, v257, v164, v171);
                                  }

                                  v258 = _os_log_pack_size();
                                  v260 = &v387 - ((MEMORY[0x28223BE20](v258, v259) + 15) & 0xFFFFFFFFFFFFFFF0);
                                  v261 = *__error();
                                  v262 = _os_log_pack_fill(v260, v258, v261, &dword_25B98C000, "%{public}s Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v387, v388);
                                  goto LABEL_371;
                                }

                                *(*v180 + v171) = v179;
                                v184 = (*v180 + v171 + 1);
                                v182 = 0x280D73000;
LABEL_270:
                                *v184 = HIBYTE(v179);
LABEL_295:
                                if (*(v182 + 3640) != 1)
                                {
LABEL_296:
                                  v120 = v178;
                                  return (v120 + 5);
                                }

                                v205 = nrCopyLogObj_2201();
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v220 = v205;
                                  v221 = os_log_type_enabled(v205, OS_LOG_TYPE_INFO);

                                  if (!v221)
                                  {
                                    goto LABEL_296;
                                  }
                                }

                                v222 = nrCopyLogObj_2201();
                                StringFromNRTLVType = createStringFromNRTLVType(v388);
                                v223 = v178;
                                PacketString = createPacketString(PacketString, v389);
                                v224 = NRDCreateIPHCString(v397, 2u);
                                v388 = &v387;
                                if (!v178)
                                {
                                  v235 = objc_alloc_init(MEMORY[0x277CBEA90]);
LABEL_341:
                                  v236 = v235;
                                  v237 = _NRCreateDataString(v235);
                                  v386 = v223;
                                  v238 = StringFromNRTLVType;
                                  v239 = PacketString;
                                  _NRLogWithArgs(v222, 1, "%s%.30s:%-4d Used 6LowPAN IPHC to compress %@, %u to %u - %@ %@ %@", "", "nrPacketTo6LoWPANTLV", 1291, StringFromNRTLVType, v389, v386, PacketString, v224, v237);

                                  v178 = v392;
                                  goto LABEL_296;
                                }

                                v225 = v222;
                                v226 = malloc_type_malloc(v178, 0x87367FC4uLL);
                                if (v226)
                                {
                                  v227 = v226;
                                  v228 = 0;
                                  v229 = v7 + 2;
                                  v230 = 3;
                                  while (1)
                                  {
                                    v231 = *v229;
                                    if (!v230)
                                    {
                                      goto LABEL_334;
                                    }

                                    if (v230 <= v231)
                                    {
                                      break;
                                    }

                                    v230 -= v231;
LABEL_330:
                                    v229 += 4;
                                    if (!--v393)
                                    {
                                      goto LABEL_339;
                                    }
                                  }

                                  if (v230 < v231)
                                  {
LABEL_334:
                                    v232 = v231 - v230;
                                    if (v232 >= v178 - v228)
                                    {
                                      v233 = v178 - v228;
                                    }

                                    else
                                    {
                                      v233 = v232;
                                    }

                                    memcpy(&v227[v228], (*(v229 - 1) + v230), v233);
                                    v228 = (v233 + v228);
                                    if (v228 >= v178)
                                    {
LABEL_339:
                                      if (v228 == v178)
                                      {
                                        v222 = v225;
                                        v234 = objc_alloc(MEMORY[0x277CBEA90]);
                                        v235 = [v234 initWithBytesNoCopy:v227 length:v392 freeWhenDone:1];
                                        goto LABEL_341;
                                      }

                                      v346 = nrCopyLogObj_2201();
                                      v347 = v346;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        goto LABEL_436;
                                      }

                                      v371 = os_log_type_enabled(v346, OS_LOG_TYPE_ERROR);

                                      if (v371)
                                      {
LABEL_436:
                                        v372 = nrCopyLogObj_2201();
                                        v373 = createIOVecString(v7, v8);
                                        _NRLogWithArgs(v372, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v228, v178, 3, v373);
                                      }

                                      v374 = _os_log_pack_size();
                                      v353 = &v387 - ((MEMORY[0x28223BE20](v374, v375) + 15) & 0xFFFFFFFFFFFFFFF0);
                                      v376 = __error();
                                      v377 = _os_log_pack_fill(v353, v374, *v376, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
                                      v378 = createIOVecString(v7, v8);
                                      __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v377, "nrWriteIOVecToBuffer", v228, v223, 3, v378);

LABEL_434:
                                      v370 = nrCopyLogObj_2201();
                                      _NRLogAbortWithPack(v370, v353);
                                    }
                                  }

                                  v230 = 0;
                                  goto LABEL_330;
                                }

                                v379 = nrCopyLogObj_2201();
                                v380 = v379;
                                v33 = "createNSDataFromTLVIOVec";
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  goto LABEL_441;
                                }

                                v381 = os_log_type_enabled(v379, OS_LOG_TYPE_ERROR);

                                if (v381)
                                {
LABEL_441:
                                  v382 = nrCopyLogObj_2201();
                                  _NRLogWithArgs(v382, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "createNSDataFromTLVIOVec", 423);
                                }

                                v383 = _os_log_pack_size();
                                v47 = &v387 - ((MEMORY[0x28223BE20](v383, v384) + 15) & 0xFFFFFFFFFFFFFFF0);
                                v385 = *__error();
                                v69 = _os_log_pack_fill(v47, v383, v385, &dword_25B98C000, "%{public}s strict allocator failed", v387, v388);
LABEL_305:
                                *v69 = 136446210;
                                *(v69 + 4) = v33;
LABEL_319:
                                v212 = nrCopyLogObj_2201();
                                _NRLogAbortWithPack(v212, v47);
                              }

                              v240 = nrCopyLogObj_2201();
                              v33 = "nrChecksumIOVecInner";
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_348;
                              }

                              v241 = v240;
                              v242 = os_log_type_enabled(v240, OS_LOG_TYPE_ERROR);

                              if (v242)
                              {
LABEL_348:
                                v243 = nrCopyLogObj_2201();
                                _NRLogWithArgs(v243, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: computedBytes == writtenLength", "", "nrChecksumIOVecInner", 164);
                              }

                              v244 = _os_log_pack_size();
                              v47 = &v387 - ((MEMORY[0x28223BE20](v244, v245) + 15) & 0xFFFFFFFFFFFFFFF0);
                              v246 = *__error();
                              v69 = _os_log_pack_fill(v47, v244, v246, &dword_25B98C000, "%{public}s Assertion Failed: computedBytes == writtenLength", v387, v388);
                              goto LABEL_305;
                            }
                          }

                          v195 = nrCopyLogObj_2201();
                          v33 = "nrChecksumUpdate";
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v196 = v195;
                            v197 = os_log_type_enabled(v195, OS_LOG_TYPE_ERROR);

                            if (!v197)
                            {
LABEL_304:
                              v199 = _os_log_pack_size();
                              v47 = &v387 - ((MEMORY[0x28223BE20](v199, v200) + 15) & 0xFFFFFFFFFFFFFFF0);
                              v201 = *__error();
                              v69 = _os_log_pack_fill(v47, v199, v201, &dword_25B98C000, "%{public}s Assertion Failed: dataLen > 0", v387, v388);
                              goto LABEL_305;
                            }
                          }

                          v198 = nrCopyLogObj_2201();
                          _NRLogWithArgs(v198, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", "", "nrChecksumUpdate", 69);

                          goto LABEL_304;
                        }

                        v174 = v7[2];
                        if (v174 >= 3)
                        {
                          v175 = *(*v7 + 1);
                          v176 = v175 >> 8;
LABEL_282:
                          v186 = 0;
                          v187 = v7 + 2;
                          v188 = **v7;
                          LOBYTE(v394) = v175 ^ (v188 >> 4);
                          HIBYTE(v394) = v176 ^ (16 * v188);
                          v189 = __rev16(v175 | (v176 << 8)) + 3;
                          v190 = v393;
                          while (1)
                          {
                            v191 = *v187;
                            if (!v189)
                            {
                              goto LABEL_288;
                            }

                            if (v189 <= v191)
                            {
                              break;
                            }

                            v189 -= v191;
LABEL_284:
                            v187 += 4;
                            if (!--v190)
                            {
                              goto LABEL_293;
                            }
                          }

                          if (v189 < v191)
                          {
LABEL_288:
                            v192 = v191 - v189;
                            if (v192 >= 2 - v186)
                            {
                              v193 = 2 - v186;
                            }

                            else
                            {
                              v193 = v192;
                            }

                            memcpy((*(v187 - 1) + v189), &v394 + v186, v193);
                            v186 += v193;
                            if (v186 > 1)
                            {
LABEL_293:
                              if (v186 == 2)
                              {
                                v182 = 0x280D73000uLL;
                                v178 = v392;
                                goto LABEL_295;
                              }

LABEL_306:
                              v202 = nrCopyLogObj_2201();
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_316;
                              }

                              v206 = v202;
LABEL_315:
                              v207 = os_log_type_enabled(v202, OS_LOG_TYPE_ERROR);

                              if (v207)
                              {
                                goto LABEL_316;
                              }

                              goto LABEL_317;
                            }
                          }

                          v189 = 0;
                          goto LABEL_284;
                        }

                        if (v174 == 2)
                        {
                          if (v8 != 1)
                          {
                            LOBYTE(v175) = *(*v7 + 1);
                            v177 = *(v7 + 2);
LABEL_281:
                            v176 = *v177;
                            goto LABEL_282;
                          }

                          v253 = nrCopyLogObj_2201();
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v288 = v253;
                            v289 = os_log_type_enabled(v253, OS_LOG_TYPE_ERROR);

                            if (!v289)
                            {
LABEL_377:
                              v291 = _os_log_pack_size();
                              v47 = &v387 - ((MEMORY[0x28223BE20](v291, v292) + 15) & 0xFFFFFFFFFFFFFFF0);
                              v293 = __error();
                              v49 = _os_log_pack_fill(v47, v291, *v293, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 1");
                              *v49 = 136446210;
                              v62 = "nrReadTLVLenHBOFromIOVec";
                              goto LABEL_318;
                            }
                          }

                          v290 = nrCopyLogObj_2201();
                          _NRLogWithArgs(v290, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1", "", "nrReadTLVLenHBOFromIOVec", 265);

                          goto LABEL_377;
                        }

                        if (v174 == 1)
                        {
                          v185 = v7[6];
                          if (v185 >= 2)
                          {
                            if (v8 != 1)
                            {
                              v175 = **(v7 + 2);
                              v176 = v175 >> 8;
                              goto LABEL_282;
                            }

                            v294 = nrCopyLogObj_2201();
                            v295 = v294;
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v300 = os_log_type_enabled(v294, OS_LOG_TYPE_ERROR);

                              if (!v300)
                              {
                                goto LABEL_386;
                              }
                            }

                            v301 = nrCopyLogObj_2201();
                            v302 = createIOVecString(v7, 1);
                            _NRLogWithArgs(v301, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1; %@", "", "nrReadTLVLenHBOFromIOVec", 271, v302);

LABEL_386:
                            v303 = _os_log_pack_size();
                            v305 = &v387 - ((MEMORY[0x28223BE20](v303, v304) + 15) & 0xFFFFFFFFFFFFFFF0);
                            v306 = __error();
                            v307 = _os_log_pack_fill(v305, v303, *v306, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 1; %@");
                            v308 = createIOVecString(v7, 1);
                            *v307 = 136446466;
                            *(v307 + 4) = "nrReadTLVLenHBOFromIOVec";
                            *(v307 + 12) = 2112;
                            *(v307 + 14) = v308;
                            v309 = nrCopyLogObj_2201();
                            _NRLogAbortWithPack(v309, v305);
                          }

                          if (v8 > 2)
                          {
                            if (v185 == 1)
                            {
                              LOBYTE(v175) = **(v7 + 2);
                              v177 = *(v7 + 4);
                              goto LABEL_281;
                            }

                            v298 = nrCopyLogObj_2201();
                            v299 = v298;
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v317 = os_log_type_enabled(v298, OS_LOG_TYPE_ERROR);

                              if (!v317)
                              {
LABEL_392:
                                v320 = _os_log_pack_size();
                                v260 = &v387 - ((MEMORY[0x28223BE20](v320, v321) + 15) & 0xFFFFFFFFFFFFFFF0);
                                v322 = *__error();
                                v316 = _os_log_pack_fill(v260, v320, v322, &dword_25B98C000, "%{public}s Assertion Failed: ioVecs[1].len == 1; %@", v387, v388);
                                goto LABEL_393;
                              }
                            }

                            v318 = nrCopyLogObj_2201();
                            v319 = createIOVecString(v7, v8);
                            _NRLogWithArgs(v318, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[1].len == 1; %@", "", "nrReadTLVLenHBOFromIOVec", 275, v319);

                            goto LABEL_392;
                          }

                          v296 = nrCopyLogObj_2201();
                          v297 = v296;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v310 = os_log_type_enabled(v296, OS_LOG_TYPE_ERROR);

                            if (!v310)
                            {
LABEL_389:
                              v313 = _os_log_pack_size();
                              v260 = &v387 - ((MEMORY[0x28223BE20](v313, v314) + 15) & 0xFFFFFFFFFFFFFFF0);
                              v315 = *__error();
                              v316 = _os_log_pack_fill(v260, v313, v315, &dword_25B98C000, "%{public}s Assertion Failed: numIOVecs > 2; %@", v387, v388);
LABEL_393:
                              v286 = v316;
                              v287 = createIOVecString(v7, v8);
                              *v286 = 136446466;
                              *(v286 + 4) = "nrReadTLVLenHBOFromIOVec";
                              goto LABEL_394;
                            }
                          }

                          v311 = nrCopyLogObj_2201();
                          v312 = createIOVecString(v7, v8);
                          _NRLogWithArgs(v311, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 2; %@", "", "nrReadTLVLenHBOFromIOVec", 274, v312);

                          goto LABEL_389;
                        }

                        v252 = nrCopyLogObj_2201();
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v279 = v252;
                          v280 = os_log_type_enabled(v252, OS_LOG_TYPE_ERROR);

                          if (!v280)
                          {
LABEL_374:
                            v283 = _os_log_pack_size();
                            v260 = &v387 - ((MEMORY[0x28223BE20](v283, v284) + 15) & 0xFFFFFFFFFFFFFFF0);
                            v285 = __error();
                            v286 = _os_log_pack_fill(v260, v283, *v285, &dword_25B98C000, "%{public}s Assertion Failed: ioVecs[0].len == 1; %@");
                            v287 = createIOVecString(v7, v8);
                            *v286 = 136446466;
                            *(v286 + 4) = "nrReadTLVLenHBOFromIOVec";
LABEL_394:
                            *(v286 + 12) = 2112;
                            *(v286 + 14) = v287;
                            goto LABEL_395;
                          }
                        }

                        v281 = nrCopyLogObj_2201();
                        v282 = createIOVecString(v7, v8);
                        _NRLogWithArgs(v281, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].len == 1; %@", "", "nrReadTLVLenHBOFromIOVec", 269, v282);

                        goto LABEL_374;
                      }

                      v204 = nrCopyLogObj_2201();
                      v33 = "nrWriteBufferToIOVec";
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v214 = v204;
                        v215 = os_log_type_enabled(v204, OS_LOG_TYPE_ERROR);

                        if (!v215)
                        {
LABEL_324:
                          v217 = _os_log_pack_size();
                          v47 = &v387 - ((MEMORY[0x28223BE20](v217, v218) + 15) & 0xFFFFFFFFFFFFFFF0);
                          v219 = *__error();
                          v69 = _os_log_pack_fill(v47, v217, v219, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length", v387, v388);
                          goto LABEL_305;
                        }
                      }

                      v216 = nrCopyLogObj_2201();
                      _NRLogWithArgs(v216, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length", "", "nrWriteBufferToIOVec", 384);

                      goto LABEL_324;
                    }

                    if (v140 == 2)
                    {
                      *(*v7 + 1) = BYTE1(v139);
                      v203 = *(v7 + 2);
                    }

                    else
                    {
                      v213 = *(v7 + 2);
                      if (v7[6] >= 2u)
                      {
                        *v213 = bswap32(v139) >> 16;
                        goto LABEL_198;
                      }

                      *(v213 + 1) = BYTE1(v139);
                      v203 = *(v7 + 4);
                    }

                    *v203 = v139;
                    goto LABEL_198;
                  }

                  if (v21 == 2)
                  {
                    if (v397[0] == 839005042)
                    {
                      v132 = 0;
                      v131 = 0;
                      LODWORD(v21) = 2;
                      v133 = 101;
                    }

                    else
                    {
                      v127 = bswap32(v397[0]);
                      v128 = v127 >= 0x72330206;
                      v129 = v127 > 0x72330206;
                      v130 = !v128;
                      LODWORD(v21) = 2;
                      if (v129 != v130)
                      {
                        v131 = 4;
LABEL_195:
                        v132 = 1;
                        v133 = 3;
                        goto LABEL_196;
                      }

                      v132 = 0;
                      v131 = 0;
                      v133 = 103;
                    }

                    goto LABEL_196;
                  }
                }

                v131 = v21 + 2;
                goto LABEL_195;
              }

LABEL_145:
              v26 = 48;
              BYTE1(v397[0]) = 48;
              goto LABEL_146;
          }

          LOBYTE(v397[0]) = v23;
          if (v14)
          {
            goto LABEL_29;
          }

          goto LABEL_145;
        }

        v41 = nrCopyLogObj_2201();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v90 = v41;
          v91 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);

          if (!v91)
          {
            goto LABEL_103;
          }
        }

        v84 = nrCopyLogObj_2201();
        _NRLogWithArgs(v84, 1, "%s%.30s:%-4d Avoiding compression of strange length payload %u expected %u", "", "nrPacketTo6LoWPANTLV", 1060, bswap32(*(PacketString + 2)) >> 16, (a2 - 40));
        goto LABEL_102;
      }

      v38 = a5;
      v39 = a6;
      v40 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v86 = v40;
        v87 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);

        v9 = PacketString;
        a6 = v39;
        a5 = v38;
        if (!v87)
        {
          goto LABEL_10;
        }
      }

      v88 = nrCopyLogObj_2201();
      v89 = createPacketString(PacketString, a2);
      _NRLogWithArgs(v88, 1, "%s%.30s:%-4d Got [%@] total len %u", "", "nrPacketTo6LoWPANTLV", 1056, v89, a2);

      v9 = PacketString;
      a5 = v38;
      a6 = v39;
      goto LABEL_10;
    }

    if (v10 == 4)
    {
      v37 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v92 = v37;
        v93 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);

        if (!v93)
        {
          goto LABEL_103;
        }
      }

      v84 = nrCopyLogObj_2201();
      IPProtoString = createIPProtoString(PacketString[9]);
      _NRLogWithArgs(v84, 1, "%s%.30s:%-4d no 6lo compression - IPv4 - %@", "", "nrPacketTo6LoWPANTLV", 1050, IPProtoString);
    }

    else
    {
      v85 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v95 = v85;
        v96 = os_log_type_enabled(v85, OS_LOG_TYPE_INFO);

        if (!v96)
        {
          goto LABEL_103;
        }
      }

      v84 = nrCopyLogObj_2201();
      _NRLogWithArgs(v84, 1, "%s%.30s:%-4d no 6lo compression - not IPv6 - v=%u");
    }
  }

LABEL_102:

LABEL_103:
  **v7 = 2;
  v97 = v7[2];
  if (v97 <= 2)
  {
    if (v97 == 2)
    {
      v98 = v389;
      *(*v7 + 1) = BYTE1(v389);
      v331 = *(v7 + 2);
    }

    else
    {
      v334 = *(v7 + 2);
      if (v7[6] >= 2u)
      {
        v98 = v389;
        *v334 = __rev16(v389);
        goto LABEL_105;
      }

      v98 = v389;
      *(v334 + 1) = BYTE1(v389);
      v331 = *(v7 + 4);
    }

    *v331 = v98;
    goto LABEL_105;
  }

  v98 = v389;
  *(*v7 + 1) = __rev16(v389);
LABEL_105:
  v99 = 0;
  v100 = v8;
  v101 = v7 + 2;
  v102 = 3;
  v103 = v8;
  while (1)
  {
    v104 = *v101;
    if (!v102)
    {
      goto LABEL_111;
    }

    if (v102 <= v104)
    {
      break;
    }

    v102 -= v104;
LABEL_107:
    v101 += 4;
    if (!--v103)
    {
      goto LABEL_116;
    }
  }

  if (v102 >= v104)
  {
LABEL_115:
    v102 = 0;
    goto LABEL_107;
  }

LABEL_111:
  v105 = v104 - v102;
  if (v105 >= v98 - v99)
  {
    v106 = v98 - v99;
  }

  else
  {
    v106 = v105;
  }

  memcpy((*(v101 - 1) + v102), &PacketString[v99], v106);
  v99 += v106;
  if (v99 < v98)
  {
    goto LABEL_115;
  }

LABEL_116:
  if (v99 != v98)
  {
    v202 = nrCopyLogObj_2201();
    v206 = v202;
    if (sNRCopyLogToStdErr != 1)
    {
      goto LABEL_315;
    }

LABEL_316:
    v208 = nrCopyLogObj_2201();
    _NRLogWithArgs(v208, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length", "", "nrWriteBufferToIOVec", 384);

LABEL_317:
    v209 = _os_log_pack_size();
    v47 = &v387 - ((MEMORY[0x28223BE20](v209, v210) + 15) & 0xFFFFFFFFFFFFFFF0);
    v211 = __error();
    v49 = _os_log_pack_fill(v47, v209, *v211, &dword_25B98C000, "%{public}s Assertion Failed: bytesWritten == length");
    *v49 = 136446210;
    v62 = "nrWriteBufferToIOVec";
    goto LABEL_318;
  }

  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = v98 + 3;
  v112 = v7 + 2;
  while (2)
  {
    v113 = v111 - v108;
    if (v111 <= v108)
    {
      v114 = 0;
      goto LABEL_136;
    }

    if (*v112 >= v113)
    {
      v114 = v113;
    }

    else
    {
      v114 = *v112;
    }

    if (!v114)
    {
      v324 = nrCopyLogObj_2201();
      v325 = v324;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v326 = os_log_type_enabled(v324, OS_LOG_TYPE_ERROR);

        if (!v326)
        {
LABEL_400:
          v328 = _os_log_pack_size();
          v47 = &v387 - ((MEMORY[0x28223BE20](v328, v329) + 15) & 0xFFFFFFFFFFFFFFF0);
          v330 = __error();
          v49 = _os_log_pack_fill(v47, v328, *v330, &dword_25B98C000, "%{public}s Assertion Failed: dataLen > 0");
          *v49 = 136446210;
          v62 = "nrChecksumUpdate";
          goto LABEL_318;
        }
      }

      v327 = nrCopyLogObj_2201();
      _NRLogWithArgs(v327, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", "", "nrChecksumUpdate", 69);

      goto LABEL_400;
    }

    v115 = *(v112 - 1);
    if (v110)
    {
      LODWORD(StringFromNRTLVType) = v8;
      v116 = v115;
      LOWORD(v397[0]) = *v115 << 8;
      v109 = MEMORY[0x25F874350](v397, 2, v109);
      if (v114 != 1)
      {
        v109 = MEMORY[0x25F874350](v116 + 1, (v114 - 1), v109);
      }

      v8 = StringFromNRTLVType;
    }

    else
    {
      v109 = MEMORY[0x25F874350](v115, v114, v109);
    }

    if (v114)
    {
      v110 ^= 1u;
    }

    v108 += v114;
    if (v108 >= v111 && v114 < *v112)
    {
      goto LABEL_136;
    }

    ++v107;
    v112 += 4;
    if (v100 != v107)
    {
      continue;
    }

    break;
  }

  LOWORD(v107) = v8;
LABEL_136:
  if (v108 != v111)
  {
    v332 = nrCopyLogObj_2201();
    v333 = v332;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v335 = os_log_type_enabled(v332, OS_LOG_TYPE_ERROR);

      if (!v335)
      {
LABEL_412:
        v337 = _os_log_pack_size();
        v47 = &v387 - ((MEMORY[0x28223BE20](v337, v338) + 15) & 0xFFFFFFFFFFFFFFF0);
        v339 = __error();
        v49 = _os_log_pack_fill(v47, v337, *v339, &dword_25B98C000, "%{public}s Assertion Failed: computedBytes == writtenLength");
        *v49 = 136446210;
        v62 = "nrChecksumIOVecInner";
        goto LABEL_318;
      }
    }

    v336 = nrCopyLogObj_2201();
    _NRLogWithArgs(v336, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: computedBytes == writtenLength", "", "nrChecksumIOVecInner", 164);

    goto LABEL_412;
  }

  v117 = ~v109;
  v118 = &v7[4 * v107];
  v119 = v118[2];
  v120 = v389;
  if (v119 >= v114 + 2)
  {
    *(*v118 + v114) = v117;
    v122 = (*v118 + v114 + 1);
    goto LABEL_143;
  }

  if (v119 < v114 + 1)
  {
    v340 = nrCopyLogObj_2201();
    v341 = v340;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v348 = os_log_type_enabled(v340, OS_LOG_TYPE_ERROR);

      if (!v348)
      {
LABEL_426:
        v351 = _os_log_pack_size();
        v353 = &v387 - ((MEMORY[0x28223BE20](v351, v352) + 15) & 0xFFFFFFFFFFFFFFF0);
        v354 = *__error();
        v355 = _os_log_pack_fill(v353, v351, v354, &dword_25B98C000, "%{public}s Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
LABEL_433:
        v368 = v355;
        v369 = createIOVecString(v7, v8);
        __os_log_helper_1_2_4_8_34_8_64_4_0_4_0(v368, "nrChecksumIOVecInner", v369, v107, v114);
        goto LABEL_434;
      }
    }

    v349 = nrCopyLogObj_2201();
    v350 = createIOVecString(v7, v8);
    _NRLogWithArgs(v349, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 189, v350, v107, v114);

    goto LABEL_426;
  }

  if (v107 + 1 >= v8)
  {
    v342 = nrCopyLogObj_2201();
    v343 = v342;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v356 = os_log_type_enabled(v342, OS_LOG_TYPE_ERROR);

      if (!v356)
      {
LABEL_429:
        v359 = _os_log_pack_size();
        v353 = &v387 - ((MEMORY[0x28223BE20](v359, v360) + 15) & 0xFFFFFFFFFFFFFFF0);
        v361 = *__error();
        v355 = _os_log_pack_fill(v353, v359, v361, &dword_25B98C000, "%{public}s Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
        goto LABEL_433;
      }
    }

    v357 = nrCopyLogObj_2201();
    v358 = createIOVecString(v7, v8);
    _NRLogWithArgs(v357, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 191, v358, v107, v114);

    goto LABEL_429;
  }

  v121 = &v7[4 * v107 + 4];
  if (!v121[2])
  {
    v344 = nrCopyLogObj_2201();
    v345 = v344;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v362 = os_log_type_enabled(v344, OS_LOG_TYPE_ERROR);

      if (!v362)
      {
LABEL_432:
        v365 = _os_log_pack_size();
        v353 = &v387 - ((MEMORY[0x28223BE20](v365, v366) + 15) & 0xFFFFFFFFFFFFFFF0);
        v367 = *__error();
        v355 = _os_log_pack_fill(v353, v365, v367, &dword_25B98C000, "%{public}s Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
        goto LABEL_433;
      }
    }

    v363 = nrCopyLogObj_2201();
    v364 = createIOVecString(v7, v8);
    _NRLogWithArgs(v363, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 193, v364, v107, v114);

    goto LABEL_432;
  }

  *(*v118 + v114) = v117;
  v122 = *v121;
LABEL_143:
  *v122 = HIBYTE(v117);
  return (v120 + 5);
}

uint64_t NRBluetoothParserReadFlushCallback(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = v2;
  if (v2[13] == 4)
  {
    goto LABEL_15;
  }

  v4 = *(v1 + 42) - 1;
  if (v4 <= 2)
  {
    v2 = *&v2[-8 * v4 + 232];
    if (v2)
    {
      v5 = &v3[-16 * v4 + 288];
      if (!*(v1 + 40))
      {
        goto LABEL_6;
      }

LABEL_11:
      v17 = v3;
      if (!*v5)
      {
        if (!gNRPacketLoggingEnabled)
        {
          goto LABEL_15;
        }

        v8 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
        v9 = v8;
        if (sNRCopyLogToStdErr == 1)
        {

          v3 = v17;
        }

        else
        {
          v16 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

          v3 = v17;
          if (!v16)
          {
            goto LABEL_15;
          }
        }

        v15 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
        _NRLogWithArgs(v15, 1, "%s%.30s:%-4d Tried to sync nexus output but _nexusOutputRing is NULL");
        goto LABEL_27;
      }

      if (!gNRPacketLoggingEnabled)
      {
LABEL_13:
        v2 = os_channel_sync();
        *(v1 + 40) = 0;
LABEL_14:
        v3 = v17;
        goto LABEL_15;
      }

      v10 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v11 = v10;
        v12 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

        if (!v12)
        {
          goto LABEL_13;
        }
      }

      v13 = _NRCopyLogObjectForNRUUID(*(v17 + 6));
      _NRLogWithArgs(v13, 1, "%s%.30s:%-4d syncing nexus output (%u packets)", "", "NRBluetoothPacketParserLinkToNexusLoopFlush", 3079, *(v1 + 40));

      goto LABEL_13;
    }
  }

  v2 = *(v3 + 29);
  v5 = v3 + 288;
  if (*(v1 + 40))
  {
    goto LABEL_11;
  }

LABEL_6:
  if (gNRPacketLoggingEnabled == 1)
  {
    v17 = v3;
    v6 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
    v7 = v6;
    if (sNRCopyLogToStdErr == 1)
    {

      v3 = v17;
    }

    else
    {
      v14 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      v3 = v17;
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v15 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
    _NRLogWithArgs(v15, 1, "%s%.30s:%-4d highestNexusOutputSlotWrittenTo is NULL");
LABEL_27:

    goto LABEL_14;
  }

LABEL_15:

  return MEMORY[0x2821F96F8](v2, v3);
}

void NRBluetoothPacketParserSuspendNexusBEOutputSource(void *a1)
{
  v2 = a1[18];
  if ((v2 & 0x200) == 0 && a1[44])
  {
    a1[18] = v2 | 0x200;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = a1[44];

LABEL_6:
      dispatch_suspend(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(a1[6]);
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

    v9 = _NRCopyLogObjectForNRUUID(v6[6]);
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusBEOutput", "", "NRBluetoothPacketParserSuspendNexusBEOutputSource", 478);

    v6 = a1;
LABEL_12:
    v3 = v6[44];

    goto LABEL_6;
  }
}

uint64_t _NRIsAppleInternal()
{
  if (_NRIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&_NRIsAppleInternal_onceToken, &__block_literal_global_435);
  }

  return _NRIsAppleInternal_internal;
}

os_log_t _NRCopyLogObjectForNRUUID(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  v2 = sNRUUIDToLogObject;
  if (!sNRUUIDToLogObject)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = sNRUUIDToLogObject;
    sNRUUIDToLogObject = v3;

    v2 = sNRUUIDToLogObject;
  }

  v5 = [v2 objectForKeyedSubscript:v1];
  if (v5)
  {
    v6 = v5;
    os_unfair_lock_unlock(&sNRLogLock);
    goto LABEL_5;
  }

  if (([sNRUUIDsEligibleForLogObject containsObject:v1] & 1) == 0)
  {
    os_unfair_lock_unlock(&sNRLogLock);
LABEL_12:
    if (nrCopyLogObj_onceToken_400 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
    }

    v6 = nrCopyLogObj_sNRLogObj_401;
    goto LABEL_5;
  }

  v8 = [v1 UUIDString];
  v9 = [v8 substringToIndex:13];

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v9];
  v6 = os_log_create("com.apple.networkrelay", [v10 UTF8String]);
  v11 = nrCopyLogObj_408();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v1;
    _os_log_impl(&dword_25B98C000, v11, OS_LOG_TYPE_DEFAULT, "adding log object for %@", buf, 0xCu);
  }

  [sNRUUIDToLogObject setObject:v6 forKeyedSubscript:v1];
  os_unfair_lock_unlock(&sNRLogLock);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:

  return v6;
}

__CFString *_NRCopyTimeString()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = _NRCopyTimeStringForDate(v0);

  return v1;
}

__CFString *_NRCopyTimeStringForDate(void *a1)
{
  if (!a1)
  {
    return @"nil";
  }

  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:224 fromDate:v2];
  [v2 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = v6 - floor(v6) + [v4 second];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%02u:%02u:%07.4f", objc_msgSend(v4, "hour"), objc_msgSend(v4, "minute"), *&v7];

  return v8;
}

void NRBluetoothPacketParserSuspendNexusVIOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x100) == 0 && *(a1 + 336))
  {
    *(a1 + 144) = v2 | 0x100;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 336);

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
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusVIOutput", "", "NRBluetoothPacketParserSuspendNexusVIOutputSource", 482);

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 336);

    goto LABEL_6;
  }
}

os_log_t _NRCopyEventLogObjectForNRUUID(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  v2 = sNRUUIDToEventLogObject;
  if (!sNRUUIDToEventLogObject)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = sNRUUIDToEventLogObject;
    sNRUUIDToEventLogObject = v3;

    v2 = sNRUUIDToEventLogObject;
  }

  v5 = [v2 objectForKeyedSubscript:v1];
  if (v5)
  {
    v6 = v5;
    os_unfair_lock_unlock(&sNRLogLock);
    goto LABEL_5;
  }

  if (([sNRUUIDsEligibleForLogObject containsObject:v1] & 1) == 0)
  {
    os_unfair_lock_unlock(&sNRLogLock);
LABEL_12:
    if (nrCopyEventLogObj_onceToken != -1)
    {
      dispatch_once(&nrCopyEventLogObj_onceToken, &__block_literal_global_60);
    }

    v6 = nrCopyEventLogObj_sNREventLogObj;
    goto LABEL_5;
  }

  v8 = [v1 UUIDString];
  v9 = [v8 substringToIndex:13];

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.events", v9];
  v6 = os_log_create("com.apple.networkrelay", [v10 UTF8String]);
  v11 = nrCopyLogObj_408();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v1;
    _os_log_impl(&dword_25B98C000, v11, OS_LOG_TYPE_DEFAULT, "adding event log object for %@", buf, 0xCu);
  }

  [sNRUUIDToEventLogObject setObject:v6 forKeyedSubscript:v1];
  os_unfair_lock_unlock(&sNRLogLock);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:

  return v6;
}

id NREndpointCopyDictionary(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v3 UUIDString];
  v6 = [v4 initWithFormat:@"%@/%llu", v5, a2];

  os_unfair_lock_lock(&sAddressCacheLock);
  v7 = NREndpointCacheValidLocked_sAddressCacheChangeToken;
  if (NREndpointCacheValidLocked_sAddressCacheChangeToken == -1)
  {
    v9 = notify_register_check("com.apple.private.restrict-post.networkrelay.endpointcache", &NREndpointCacheValidLocked_sAddressCacheChangeToken);
    if (!v9)
    {
      v7 = NREndpointCacheValidLocked_sAddressCacheChangeToken;
      if (NREndpointCacheValidLocked_sAddressCacheChangeToken == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_2;
    }

    v10 = v9;
    NREndpointCacheValidLocked_sAddressCacheChangeToken = -1;
    if (nrCopyLogObj_onceToken == -1)
    {
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
LABEL_16:
        if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }
      }
    }

    _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 17, "notify_register_check(%s) failed: %u", "com.apple.private.restrict-post.networkrelay.endpointcache", v10);
    goto LABEL_29;
  }

LABEL_2:
  v8 = NREndpointCacheValidLocked_sAddressCacheGeneration;
  state64 = NREndpointCacheValidLocked_sAddressCacheGeneration;
  check = 0;
  if (notify_check(v7, &check))
  {
    if (nrCopyLogObj_onceToken == -1)
    {
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
LABEL_5:
        if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_7;
        }
      }
    }

    _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 17, "notify_check(%s, %d) failed: %u");
    goto LABEL_7;
  }

  if (check)
  {
    if (notify_get_state(NREndpointCacheValidLocked_sAddressCacheChangeToken, &state64))
    {
      if (nrCopyLogObj_onceToken == -1)
      {
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_22:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_7;
          }
        }
      }

      _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 17, "notify_get_state(%s, %d) failed: %u");
LABEL_7:
      notify_cancel(NREndpointCacheValidLocked_sAddressCacheChangeToken);
      NREndpointCacheValidLocked_sAddressCacheChangeToken = -1;
      state64 = 0;
      if (!NREndpointCacheValidLocked_sAddressCacheGeneration)
      {
        goto LABEL_29;
      }

LABEL_8:
      if (nrCopyLogObj_onceToken == -1)
      {
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_INFO))
      {
LABEL_12:
        NREndpointCacheValidLocked_sAddressCacheGeneration = state64;
        goto LABEL_29;
      }

LABEL_11:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 1, "%s%.30s:%-4d NREndpoint cache generation changed: %llu -> %llu", "", "NREndpointCacheValidLocked", 99, NREndpointCacheValidLocked_sAddressCacheGeneration, state64);
      goto LABEL_12;
    }

    v8 = state64;
  }

  if (NREndpointCacheValidLocked_sAddressCacheGeneration != v8)
  {
    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_34;
  }

LABEL_29:
  if (nrCopyLogObj_onceToken == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_32:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 1, "%s%.30s:%-4d Clearing NREndpoint cache", "", "NREndpointCopyDictionary", 120);
      goto LABEL_33;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_32;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_INFO))
  {
    goto LABEL_32;
  }

LABEL_33:
  v11 = sAddressDataCache;
  sAddressDataCache = 0;

LABEL_34:
  if (sAddressDataCache)
  {
    v12 = [sAddressDataCache objectForKeyedSubscript:v6];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"AddrData"];
      v15 = v13;
      if (v14)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = nrXPCCopyResolvedEndpointWithMetadata(v3, a2);

  v16 = [v15 objectForKeyedSubscript:@"AddrData"];
  v14 = v16;
  if (v16 && [v16 length] == 16)
  {
    state64 = 0;
    v23 = 0;
    [v14 getBytes:&state64 length:16];
    v17 = BYTE1(v23) != 12 && a2 == 3;
    if (!v17 && WORD1(v23) && WORD2(v23) && HIWORD(v23))
    {
      v18 = sAddressDataCache;
      if (!sAddressDataCache)
      {
        v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v20 = sAddressDataCache;
        sAddressDataCache = v19;

        v18 = sAddressDataCache;
      }

      if ([v18 count] <= 0x1F)
      {
        [sAddressDataCache setObject:v15 forKeyedSubscript:v6];
      }
    }
  }

LABEL_52:
  os_unfair_lock_unlock(&sAddressCacheLock);

  return v15;
}

uint64_t __nrCopyLogObj_block_invoke()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj;
  nrCopyLogObj_sNRLogObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id nrCopyLogObj()
{
  if (nrCopyLogObj_onceToken != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
  }

  v1 = nrCopyLogObj_sNRLogObj;

  return v1;
}

__CFString *NRDataProtectionClassCreateString(unsigned int a1)
{
  if (a1 < 5 && ((0x1Bu >> a1) & 1) != 0)
  {
    return off_27996ADB0[a1];
  }

  else
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown[%lld]", a1];
  }
}

__CFString *createStringFromNRDeviceEndpointType(uint64_t a1)
{
  if ((a1 + 1) >= 9u)
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%u)", a1];
  }

  else
  {
    return off_27996AD68[(a1 + 1)];
  }
}

uint64_t NREndpointUsesASQUIC(void *a1, unsigned int a2)
{
  v2 = NREndpointCopyDictionary(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"UseASQUIC"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];

  return v5;
}

uint64_t __nrCopyLogObj_block_invoke_11()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_8;
  nrCopyLogObj_sNRLogObj_8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25B99A1D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_22()
{
  if (nrCopyLogObj_onceToken_7 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
  }

  v1 = nrCopyLogObj_sNRLogObj_8;

  return v1;
}

uint64_t scDynamicStoreCallout(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 48) == result)
    {
      return [(NRLaunchEventMonitor *)a3 processSCDUpdate:a2];
    }
  }

  return result;
}

void __NRLaunchEventMonitorCopyQueue_block_invoke()
{
  v13[1] = *MEMORY[0x277D85DE8];
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

  v1 = dispatch_queue_create("com.apple.networkrelay.launchEventMonitor", v0);

  if (!v1)
  {
    v3 = nrCopyLogObj_22();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v4 = v3;
      v5 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

      if (!v5)
      {
        goto LABEL_14;
      }
    }

    v6 = nrCopyLogObj_22();
    _NRLogWithArgs(v6, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create", 196, "com.apple.networkrelay.launchEventMonitor");

LABEL_14:
    v7 = _os_log_pack_size();
    v9 = v13 - ((MEMORY[0x28223BE20](v7, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v7, *v10, &dword_25B98C000, "%{public}s dispatch_queue_create(%s) failed");
    *v11 = 136446466;
    *(v11 + 4) = "nr_dispatch_queue_create";
    *(v11 + 12) = 2080;
    *(v11 + 14) = "com.apple.networkrelay.launchEventMonitor";
    v12 = nrCopyLogObj_22();
    _NRLogAbortWithPack(v12, v9);
  }

  v2 = NRLaunchEventMonitorCopyQueue_queue;
  NRLaunchEventMonitorCopyQueue_queue = v1;
}

uint64_t createStringFromNRLinkType(unsigned int a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3u:
        v3 = "Cellular";
        goto LABEL_15;
      case 4u:
        v3 = "QuickRelay";
        goto LABEL_15;
      case 5u:
        v3 = "Wired";
        goto LABEL_15;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (!a1)
  {
    v3 = "Invalid";
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v3 = "Bluetooth";
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  v3 = "WiFi";
LABEL_15:

  return [v2 initWithUTF8String:v3];
}

uint64_t createStringFromNRLinkSubtype(unsigned int a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 <= 102)
  {
    switch(a1)
    {
      case 0u:
        v3 = "None";
        goto LABEL_18;
      case 0x65u:
        v3 = "WiFiInfra";
        goto LABEL_18;
      case 0x66u:
        v3 = "WiFiP2PAWDL";
        goto LABEL_18;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 > 119)
  {
    if (a1 == 120)
    {
      v3 = "BluetoothScalable";
      goto LABEL_18;
    }

    if (a1 == 121)
    {
      v3 = "BluetoothL2CAP";
      goto LABEL_18;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 == 103)
  {
    v3 = "WiFiP2PNAN";
    goto LABEL_18;
  }

  if (a1 != 104)
  {
    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  v3 = "WiFiP2PInfraRelay";
LABEL_18:

  return [v2 initWithUTF8String:v3];
}

__CFString *createShortStringFromNRLinkType(unsigned int a1)
{
  if ((a1 - 1) < 4u)
  {
    return off_27996AE50[(a1 - 1)];
  }

  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 == 5)
  {
    v4 = "Wired";
  }

  else
  {
    if (a1)
    {
      return [v3 initWithFormat:@"Unknown(%lld)", a1];
    }

    v4 = "Invalid";
  }

  return [v3 initWithUTF8String:v4];
}

__CFString *createShortStringFromNRLinkSubtype(int a1)
{
  if (a1 > 103)
  {
    if (a1 == 104)
    {
      return @"IR";
    }

    if (a1 != 120)
    {
      if (a1 == 121)
      {
        return @"L2C";
      }

      return createStringFromNRLinkSubtype(a1);
    }

    return @"P";
  }

  else
  {
    if (a1 == 101)
    {
      return @"Ifr";
    }

    if (a1 != 102)
    {
      if (a1 == 103)
      {
        return @"N";
      }

      return createStringFromNRLinkSubtype(a1);
    }

    return @"A";
  }
}

uint64_t getNRLinkTypeForNRLinkSubtype(int a1)
{
  if ((a1 - 101) >= 4)
  {
    return (a1 - 120) < 2;
  }

  else
  {
    return 2;
  }
}

id nrCopyLogObj_68()
{
  if (nrCopyLogObj_onceToken_75 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
  }

  v1 = nrCopyLogObj_sNRLogObj_76;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_78()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_76;
  nrCopyLogObj_sNRLogObj_76 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void NRPreferP2PImmediatelySet(char a1)
{
  objc_opt_self();
  if (sharedInstanceForP2PImmediate_onceToken != -1)
  {
    dispatch_once(&sharedInstanceForP2PImmediate_onceToken, &__block_literal_global_4);
  }

  if (sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance)
  {
    v2 = *(sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__NRPreferWiFi_submitRequest___block_invoke;
    v4[3] = &unk_27996AF70;
    v4[4] = sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance;
    v5 = a1;
    v3 = sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance;
    dispatch_async(v2, v4);
  }
}

void NRPreferP2PSet(char a1)
{
  objc_opt_self();
  if (sharedInstanceForP2P_onceToken != -1)
  {
    dispatch_once(&sharedInstanceForP2P_onceToken, &__block_literal_global_2);
  }

  if (sharedInstanceForP2P_gPreferP2PWiFiInstance)
  {
    v2 = *(sharedInstanceForP2P_gPreferP2PWiFiInstance + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__NRPreferWiFi_submitRequest___block_invoke;
    v4[3] = &unk_27996AF70;
    v4[4] = sharedInstanceForP2P_gPreferP2PWiFiInstance;
    v5 = a1;
    v3 = sharedInstanceForP2P_gPreferP2PWiFiInstance;
    dispatch_async(v2, v4);
  }
}

void NRPreferWiFiSet(char a1)
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_84);
  }

  if (sharedInstance_gPreferWiFiInstance)
  {
    v2 = *(sharedInstance_gPreferWiFiInstance + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__NRPreferWiFi_submitRequest___block_invoke;
    v4[3] = &unk_27996AF70;
    v4[4] = sharedInstance_gPreferWiFiInstance;
    v5 = a1;
    v3 = sharedInstance_gPreferWiFiInstance;
    dispatch_async(v2, v4);
  }
}

__CFString *_NRCopyPolicyTrafficClassifiersDescription(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = [v1 anyObject];
      if ([v3 isEqualToString:@"com.apple.ids.trafficclass.nanoregistry.check"])
      {
        v4 = @"Check";
      }

      else if ([v3 isEqualToString:@"com.apple.ids.trafficclass.nanoregistry.update"])
      {
        v4 = @"Update";
      }

      else if ([v3 isEqualToString:@"com.apple.ids.trafficclass.nanoregistry.configure"])
      {
        v4 = @"Configure";
      }

      else if ([v3 isEqualToString:@"com.apple.ids.trafficclass.all"])
      {
        v4 = @"All";
      }

      else
      {
        v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v3];
      }
    }

    else
    {
      v5 = [v1 allObjects];
      v6 = [v5 sortedArrayUsingSelector:sel_compare_];

      v4 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @"{(");
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v3 = v6;
      v7 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        v10 = "";
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v3);
          }

          [(__CFString *)v4 appendFormat:@"%s%@", v10, **(&v13 + 1), v13];
          if (v8 >= 2)
          {
            for (i = 1; i != v8; ++i)
            {
              if (*v14 != v9)
              {
                objc_enumerationMutation(v3);
              }

              [(__CFString *)v4 appendFormat:@"%s%@", ", ", *(*(&v13 + 1) + 8 * i)];
            }
          }

          v8 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
          v10 = ", ";
        }

        while (v8);
      }

      [(__CFString *)v4 appendString:@"}"]);
    }
  }

  else
  {
    v4 = @"Null";
  }

  return v4;
}

void sub_25B99D614(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_117()
{
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  v1 = nrCopyLogObj_sNRLogObj_115;

  return v1;
}

double __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(uint64_t a1, uint64_t a2)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = 0;
  *(a1 + 22) = 2048;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1024;
  *(a1 + 34) = 0;
  return result;
}

double __os_log_helper_1_2_3_8_34_8_0_4_0(uint64_t a1, uint64_t a2)
{
  *&result = 136446722;
  *a1 = 136446722;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = 0;
  *(a1 + 22) = 1024;
  *(a1 + 24) = 0;
  return result;
}

uint64_t __nrCopyLogObj_block_invoke_166()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_115;
  nrCopyLogObj_sNRLogObj_115 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25B99E308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nrCopyLogObj_block_invoke_236()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_229;
  nrCopyLogObj_sNRLogObj_229 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25B99FFA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_237()
{
  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  v1 = nrCopyLogObj_sNRLogObj_229;

  return v1;
}

void sub_25B9A06B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_25B9A3224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9A3C24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_336()
{
  if (nrCopyLogObj_onceToken_345 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_345, &__block_literal_global_346);
  }

  v1 = nrCopyLogObj_sNRLogObj_347;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_350()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_347;
  nrCopyLogObj_sNRLogObj_347 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void _NRLogSetCopyToStderr(char a1)
{
  os_unfair_lock_lock(&sNRLogLock);
  sNRCopyLogToStdErr = a1;

  os_unfair_lock_unlock(&sNRLogLock);
}

void _NRLogAbortWithPack(void *a1, uint64_t a2)
{
  v2 = a1;
  qword_27FBB2050 = os_log_pack_compose();
  __break(1u);
}

void _NRLogRegisterSimCrashHook(void *a1)
{
  os_unfair_lock_lock(&sNRLogLock);
  sNRLogSimCrashHook = a1;

  os_unfair_lock_unlock(&sNRLogLock);
}

void _NRLogPackSend(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (v3 == 17 || (sNRCopyLogToStdErr & 1) != 0)
  {
    if (os_log_type_enabled(v5, v3))
    {
      v7 = os_log_pack_send_and_compose();
    }

    else
    {
      mach_get_times();
      v7 = os_log_pack_compose();
    }

    v8 = v7;
    os_unfair_lock_lock(&sNRLogLock);
    if (sNRCopyLogToStdErr == 1)
    {
      if ((_NRLogPackSend_sHasSetTZ & 1) == 0)
      {
        tzset();
        _NRLogPackSend_sHasSetTZ = 1;
      }

      memset(&v12, 0, sizeof(v12));
      v9 = localtime_r((a2 + 8), &v12);
      if (strftime(v13, 9uLL, "%T", v9))
      {
        v13[8] = 0;
        fprintf(*MEMORY[0x277D85DF8], "%s %s.%04ld %s\n");
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "%s %s\n");
      }
    }

    v10 = sNRLogSimCrashHook;
    os_unfair_lock_unlock(&sNRLogLock);
    if (v3 == 17 && v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v8];
      v10();
    }

    if (v8 != &v14 && v8)
    {
      free(v8);
    }
  }

  else if (os_log_type_enabled(v5, v3))
  {
    os_log_pack_send();
  }
}

void _NRAddEligibleNRUUIDForLogObject(void *a1)
{
  v4 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  v1 = sNRUUIDsEligibleForLogObject;
  if (!sNRUUIDsEligibleForLogObject)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCA940]);
    v3 = sNRUUIDsEligibleForLogObject;
    sNRUUIDsEligibleForLogObject = v2;

    v1 = sNRUUIDsEligibleForLogObject;
  }

  [v1 addObject:v4];
  os_unfair_lock_unlock(&sNRLogLock);
}

void _NRRemoveEligibleNRUUIDForLogObject(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  [sNRUUIDsEligibleForLogObject removeObject:v1];

  os_unfair_lock_unlock(&sNRLogLock);
}

void _NRUpdateNRUUIDsEligibleForLogObjects(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  if ([sNRUUIDToLogObject count])
  {
    v2 = [sNRUUIDToLogObject allKeys];
    v3 = [v2 copy];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v32;
      *&v6 = 138412290;
      v25 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          if (([v1 containsObject:{v10, v25}] & 1) == 0)
          {
            if (nrCopyLogObj_onceToken_400 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
            }

            v11 = nrCopyLogObj_sNRLogObj_401;
            if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v25;
              v37 = v10;
              _os_log_impl(&dword_25B98C000, v11, OS_LOG_TYPE_DEFAULT, "removing log object for %@", buf, 0xCu);
            }

            [sNRUUIDToLogObject setObject:0 forKeyedSubscript:v10];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v7);
    }
  }

  if ([sNRUUIDToEventLogObject count])
  {
    v12 = [sNRUUIDToEventLogObject allKeys];
    v13 = [v12 copy];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v28;
      *&v16 = 138412290;
      v26 = v16;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v27 + 1) + 8 * j);
          if (([v1 containsObject:{v20, v26, v27}] & 1) == 0)
          {
            if (nrCopyLogObj_onceToken_400 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
            }

            v21 = nrCopyLogObj_sNRLogObj_401;
            if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v26;
              v37 = v20;
              _os_log_impl(&dword_25B98C000, v21, OS_LOG_TYPE_DEFAULT, "removing event log object for %@", buf, 0xCu);
            }

            [sNRUUIDToEventLogObject setObject:0 forKeyedSubscript:v20];
          }
        }

        v17 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v17);
    }
  }

  v22 = sNRUUIDsEligibleForLogObject;
  if (!sNRUUIDsEligibleForLogObject)
  {
    v23 = objc_alloc_init(MEMORY[0x277CCA940]);
    v24 = sNRUUIDsEligibleForLogObject;
    sNRUUIDsEligibleForLogObject = v23;

    v22 = sNRUUIDsEligibleForLogObject;
  }

  [v22 removeAllObjects];
  [sNRUUIDsEligibleForLogObject addObjectsFromArray:v1];
  os_unfair_lock_unlock(&sNRLogLock);
}

uint64_t __nrCopyLogObj_block_invoke_403()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_401;
  nrCopyLogObj_sNRLogObj_401 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id nrCopyLogObj_408()
{
  if (nrCopyLogObj_onceToken_400 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
  }

  v1 = nrCopyLogObj_sNRLogObj_401;

  return v1;
}

uint64_t __nrCopyEventLogObj_block_invoke()
{
  v0 = os_log_create("com.apple.networkrelay", "events");
  v1 = nrCopyEventLogObj_sNREventLogObj;
  nrCopyEventLogObj_sNREventLogObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *_NRCreateMACAddressString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v3 = [v1 bytes];
    if ([v1 length])
    {
      [(__CFString *)v2 appendFormat:@"%02X", *v3];
      if ([v1 length] >= 2)
      {
        v4 = 1;
        do
        {
          [(__CFString *)v2 appendFormat:@":%02X", v3[v4++]];
        }

        while (v4 < [v1 length]);
      }
    }
  }

  else
  {
    v2 = @"[nil]";
  }

  return v2;
}

__CFString *_NRCreateDataStringTruncated(void *a1, unsigned int a2)
{
  v3 = a1;
  if (!v3)
  {
    v4 = @"[nil]";
    goto LABEL_13;
  }

  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"[%llu:", objc_msgSend(v3, "length")];
  v5 = [v3 bytes];
  v6 = [v3 length];
  v7 = v6;
  if (a2)
  {
    if (v6 >= a2)
    {
      v7 = a2;
    }

    v8 = v7 != [v3 length];
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  if (v6)
  {
    do
    {
LABEL_9:
      v9 = *v5++;
      [(__CFString *)v4 appendFormat:@"%02X", v9];
      --v7;
    }

    while (v7);
  }

LABEL_10:
  if (v8)
  {
    [(__CFString *)v4 appendString:@"..."];
  }

  [(__CFString *)v4 appendString:@"]"];
LABEL_13:

  return v4;
}

__CFString *_NRCreateDataString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"[%llu:", objc_msgSend(v1, "length")];
    v3 = [v1 bytes];
    v4 = [v1 length];
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = *v3++;
        [(__CFString *)v2 appendFormat:@"%02X", v6];
        --v5;
      }

      while (v5);
    }

    [(__CFString *)v2 appendString:@"]"];
  }

  else
  {
    v2 = @"[nil]";
  }

  return v2;
}

uint64_t _NRShouldDebugAutoRelease()
{
  if (_NRShouldDebugAutoRelease_onceToken != -1)
  {
    dispatch_once(&_NRShouldDebugAutoRelease_onceToken, &__block_literal_global_40);
  }

  return _NRShouldDebugAutoRelease_debugAutoRelease;
}

uint64_t _NRCopySerialQueueAttr()
{
  if (_NRShouldDebugAutoRelease_onceToken != -1)
  {
    dispatch_once(&_NRShouldDebugAutoRelease_onceToken, &__block_literal_global_40);
  }

  if (_NRShouldDebugAutoRelease_debugAutoRelease)
  {
    return 0;
  }

  dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  return objc_claimAutoreleasedReturnValue();
}

void NRTLVAddData(void *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v6 = a1;
  NRTLVAdd(v6, v3, [v5 length], objc_msgSend(v5, "bytes"));
}

void NRTLVAdd(void *a1, char a2, unsigned int a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v9 = nrCopyLogObj_408();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v9;
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v12 = nrCopyLogObj_408();
    _NRLogWithArgs(v12, 17, "%s called with null tlvData", "NRTLVAdd");

    goto LABEL_17;
  }

  if ([v7 length] + a3 < 0x10000)
  {
    if ((a3 || !a4) && (!a3 || a4))
    {
      v13 = a2;
      v14 = __rev16(a3);
      [v8 appendBytes:&v13 length:3];
      if (a4)
      {
        [v8 appendBytes:a4 length:a3];
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_400 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_401, 17, "invalid tlv length and value");
      }
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_400 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_401, 17, "tlv buffer full");
    }
  }

LABEL_17:
}

BOOL NRTLVParse(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v18 = nrCopyLogObj_408();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v20 = v18;
      v21 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

      if (!v21)
      {
        goto LABEL_11;
      }
    }

    v22 = nrCopyLogObj_408();
    _NRLogWithArgs(v22, 17, "%s called with null tlvData");
LABEL_38:

    goto LABEL_11;
  }

  if (!v4)
  {
    v19 = nrCopyLogObj_408();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v19;
      v24 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (!v24)
      {
        goto LABEL_11;
      }
    }

    v22 = nrCopyLogObj_408();
    _NRLogWithArgs(v22, 17, "%s called with null block");
    goto LABEL_38;
  }

  if ([v3 length] < 0x10000)
  {
    v9 = [v3 bytes];
    v10 = [v3 length];
    if (v10 >= 3uLL)
    {
      v13 = v10;
      v14 = 0;
      while (1)
      {
        v11 = v13 <= v14;
        if (v13 <= v14)
        {
          goto LABEL_12;
        }

        if ((v13 - v14) <= 2u)
        {
          break;
        }

        v15 = bswap32(*(v9 + 1)) >> 16;
        v16 = v15 + 3;
        if (v15 + 3 > (v13 - v14))
        {
          if (nrCopyLogObj_onceToken_400 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_ERROR))
          {
            v6 = nrCopyLogObj_sNRLogObj_401;
            v29 = 3;
            v30 = v15;
            v27 = 413;
            v28 = (v13 - v14);
            v25 = "";
            v26 = "NRTLVParse";
            v7 = "%s%.30s:%-4d Invalid tlv buffer (%u < %zu + %u)";
            goto LABEL_29;
          }

          goto LABEL_11;
        }

        v17 = v5[2](v5, v9);
        v9 += v16;
        v14 += v16;
        if ((v17 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (nrCopyLogObj_onceToken_400 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_ERROR))
      {
        v6 = nrCopyLogObj_sNRLogObj_401;
        v29 = 3;
        v27 = 405;
        v28 = (v13 - v14);
        v25 = "";
        v26 = "NRTLVParse";
        v7 = "%s%.30s:%-4d Incomplete tlv buffer (%u < %zu)";
LABEL_29:
        v8 = 16;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_400 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_FAULT))
    {
      v6 = nrCopyLogObj_sNRLogObj_401;
      v7 = "tlv buffer larger than expected";
      v8 = 17;
LABEL_9:
      _NRLogWithArgs(v6, v8, v7, v25, v26, v27, v28, v29, v30);
    }
  }

LABEL_11:
  v11 = 0;
LABEL_12:

  return v11;
}

id nrCopyLogObj_461()
{
  if (nrCopyLogObj_onceToken_466 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_466, &__block_literal_global_467);
  }

  v1 = nrCopyLogObj_sNRLogObj_468;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_471()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_468;
  nrCopyLogObj_sNRLogObj_468 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id NRLPCopyUInt64NSNumberFromXPCDict(void *a1, const char *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!a2)
  {
    v10 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v10;
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v12)
      {
LABEL_13:
        v14 = _os_log_pack_size();
        v16 = v28 - ((MEMORY[0x28223BE20](v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = __error();
        v18 = _os_log_pack_fill(v16, v14, *v17, &dword_25B98C000, "%{public}s Assertion Failed: (xpcKey) != ((void*)0)");
        *v18 = 136446210;
        *(v18 + 4) = "NRLPCopyUInt64NSNumberFromXPCDict";
        goto LABEL_14;
      }
    }

    v13 = nrCopyLogObj_461();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (xpcKey) != ((void*)0)", "", "NRLPCopyUInt64NSNumberFromXPCDict", 21);

    goto LABEL_13;
  }

  v5 = v3;
  v6 = xpc_dictionary_get_value(v3, v4);
  v7 = v6;
  if (!v6 || MEMORY[0x25F8746E0](v6) != MEMORY[0x277D864C8])
  {
    v8 = 0;
    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:xpc_uint64_get_value(v7)];
  if (!v8)
  {
    v20 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v21 = v20;
      v22 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v22)
      {
LABEL_19:
        v24 = _os_log_pack_size();
        v16 = v28 - ((MEMORY[0x28223BE20](v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = __error();
        v27 = _os_log_pack_fill(v16, v24, *v26, &dword_25B98C000, "%{public}s Assertion Failed: (retNum) != ((void*)0)");
        *v27 = 136446210;
        *(v27 + 4) = "NRLPCopyUInt64NSNumberFromXPCDict";
LABEL_14:
        v19 = nrCopyLogObj_461();
        _NRLogAbortWithPack(v19, v16);
      }
    }

    v23 = nrCopyLogObj_461();
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (retNum) != ((void*)0)", "", "NRLPCopyUInt64NSNumberFromXPCDict", 27);

    goto LABEL_19;
  }

LABEL_6:

  return v8;
}

id checkAndCapValue(void *a1)
{
  v1 = a1;
  v2 = [v1 unsignedLongLongValue];
  if (!HIDWORD(v2))
  {
    v3 = v1;
    goto LABEL_3;
  }

  v5 = v2;
  v6 = nrCopyLogObj_461();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_9:
    v9 = nrCopyLogObj_461();
    _NRLogWithArgs(v9, 17, "%llu > UINT32_MAX, capping", v5);

    goto LABEL_10;
  }

  v7 = v6;
  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);

  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v3 = &unk_286D2CEC0;
LABEL_3:

  return v3;
}

void NRLPAddUint64ToXPCDict(void *a1, const char *a2, void *a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v24[0] = a1;
  v5 = a3;
  if (!v24[0])
  {
    v6 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v6;
      v9 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v9)
      {
LABEL_14:
        v11 = _os_log_pack_size();
        v13 = v24 - ((MEMORY[0x28223BE20](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v11, *v14, &dword_25B98C000, "%{public}s Assertion Failed: (xpcDict) != ((void*)0)");
        *v15 = 136446210;
        *(v15 + 4) = "NRLPAddUint64ToXPCDict";
        goto LABEL_18;
      }
    }

    v10 = nrCopyLogObj_461();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (xpcDict) != ((void*)0)", "", "NRLPAddUint64ToXPCDict", 33);

    goto LABEL_14;
  }

  if (!a2)
  {
    v7 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v16 = v7;
      v17 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v17)
      {
LABEL_17:
        v19 = _os_log_pack_size();
        v13 = v24 - ((MEMORY[0x28223BE20](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = __error();
        v22 = _os_log_pack_fill(v13, v19, *v21, &dword_25B98C000, "%{public}s Assertion Failed: (xpcKey) != ((void*)0)");
        *v22 = 136446210;
        *(v22 + 4) = "NRLPAddUint64ToXPCDict";
LABEL_18:
        v23 = nrCopyLogObj_461();
        _NRLogAbortWithPack(v23, v13);
      }
    }

    v18 = nrCopyLogObj_461();
    _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (xpcKey) != ((void*)0)", "", "NRLPAddUint64ToXPCDict", 34);

    goto LABEL_17;
  }

  if (v5)
  {
    xpc_dictionary_set_uint64(v24[0], a2, [v5 unsignedLongLongValue]);
  }
}

id nrCopyLogObj_560()
{
  if (nrCopyLogObj_onceToken_563 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
  }

  v1 = nrCopyLogObj_sNRLogObj_564;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_566()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_564;
  nrCopyLogObj_sNRLogObj_564 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void NRParserLinkWriteAvailable(uint64_t a1)
{
  v1157 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = v2;
    if (*(v2 + 13) == 4)
    {
      goto LABEL_1397;
    }

    v4 = 0x280D73000uLL;
    if (gNRPacketLoggingEnabled == 1)
    {
      v566 = _NRCopyLogObjectForNRUUID(v2[6]);
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v567 = v566;
        v568 = os_log_type_enabled(v566, OS_LOG_TYPE_INFO);

        v4 = 0x280D73000;
        if (!v568)
        {
          goto LABEL_4;
        }
      }

      v569 = _NRCopyLogObjectForNRUUID(v3[6]);
      StringFromNRLinkChannelPriority = createStringFromNRLinkChannelPriority(*(a1 + 83));
      _NRLogWithArgs(v569, 1, "%s%.30s:%-4d Link output available - %@", "", "NRParserLinkWriteAvailable", 1728, StringFromNRLinkChannelPriority);

      v4 = 0x280D73000;
    }

LABEL_4:
    v5 = *(a1 + 84);
    v1150 = v3;
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    *(a1 + 84) = v5 & 0xFE;
    v10 = *(a1 + 83);
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v3[21] = v3[21] + 1;
        v3[18] = (v3[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 84) & 1)));
        if (*(v4 + 3640) != 1)
        {
          goto LABEL_5;
        }

        v171 = _NRCopyLogObjectForNRUUID(v3[6]);
        v172 = v171;
        if (sNRCopyLogToStdErr == 1)
        {

          v3 = v1150;
        }

        else
        {
          v768 = os_log_type_enabled(v171, OS_LOG_TYPE_INFO);

          v3 = v1150;
          if (!v768)
          {
            goto LABEL_5;
          }
        }

        v518 = _NRCopyLogObjectForNRUUID(v3[6]);
        _NRLogWithArgs(v518, 1, "%s%.30s:%-4d source-%s: High");
        goto LABEL_721;
      }

      if (v10 == 3)
      {
        v3[23] = v3[23] + 1;
        v3[18] = (v3[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(a1 + 84) & 1)));
        if (*(v4 + 3640) == 1)
        {
          v157 = _NRCopyLogObjectForNRUUID(v3[6]);
          v158 = v157;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v1150;
          }

          else
          {
            v767 = os_log_type_enabled(v157, OS_LOG_TYPE_INFO);

            v3 = v1150;
            if (!v767)
            {
              goto LABEL_5;
            }
          }

          v518 = _NRCopyLogObjectForNRUUID(v3[6]);
          _NRLogWithArgs(v518, 1, "%s%.30s:%-4d source-%s: Isochronous");
          goto LABEL_721;
        }
      }
    }

    else
    {
      if (!*(a1 + 83))
      {
        v170 = _NRCopyLogObjectForNRUUID(v3[6]);
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v516 = v170;
          v517 = os_log_type_enabled(v170, OS_LOG_TYPE_ERROR);

          if (!v517)
          {
            goto LABEL_5;
          }
        }

        v518 = _NRCopyLogObjectForNRUUID(v3[6]);
        _NRLogWithArgs(v518, 16, "%s%.30s:%-4d invalid link channel priority");
        goto LABEL_721;
      }

      if (v10 == 1)
      {
        v11 = v3[18];
        v3[19] = v3[19] + 1;
        v3[18] = (v11 & 0xFFFFFFFFFFFFFFFELL | *(a1 + 84) & 1);
        if (*(v4 + 3640) == 1)
        {
          v12 = _NRCopyLogObjectForNRUUID(v3[6]);
          v13 = v12;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v1150;
LABEL_1162:
            v518 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v518, 1, "%s%.30s:%-4d source-%s: Medium");
LABEL_721:

            goto LABEL_5;
          }

          v766 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

          v3 = v1150;
          if (v766)
          {
            goto LABEL_1162;
          }
        }
      }
    }

LABEL_5:
    v6 = *(a1 + 82);
    if (v6 >= 0xB)
    {
      v6 -= 11 * ((((117 * v6) >> 8) + (((v6 - ((117 * v6) >> 8)) & 0xFE) >> 1)) >> 3);
    }

    *(a1 + 4 * v6 + 36) = 0x80000;
    if (v6 < 0xAu)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 - 10;
    }

    *(a1 + 82) = v7;
    v8 = *(a1 + 83);
    switch(v8)
    {
      case 1:
        v9 = 2;
        goto LABEL_22;
      case 3:
        v14 = 8;
        break;
      case 2:
        v9 = 4;
LABEL_22:
        v16 = v3 + 15;
        v15 = *(v3 + 15);
        v17 = (v15 & v9) == 0;
LABEL_23:
        if ((v8 & 0xFE) == 2 && !v17)
        {
          if (*(v3 + 13) == 4)
          {
            goto LABEL_754;
          }

          dispatch_assert_queue_V2(v3[8]);
          v1140 = v3[27];
          v18 = v3[31];
          v19 = v3[39];
          v20 = v19;
          v21 = 0x280D73000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v571 = v19;
            v572 = _NRCopyLogObjectForNRUUID(v3[6]);
            v573 = v572;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v1150;
            }

            else
            {
              v587 = os_log_type_enabled(v572, OS_LOG_TYPE_INFO);

              v3 = v1150;
              v21 = 0x280D73000;
              v20 = v571;
              if (!v587)
              {
                goto LABEL_27;
              }
            }

            v588 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v588, 1, "%s%.30s:%-4d starting NtL fast-path for %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1858, 100);

            v20 = v571;
            v21 = 0x280D73000;
          }

LABEL_27:
          v22 = *v16;
          if ((v22 & 8) != 0)
          {
            v27 = v3 + 17;
            v397 = "Isochronous";
            v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource;
            v398 = 3;
            v399 = v3[17];
            if (!v399)
            {
              goto LABEL_831;
            }

            goto LABEL_550;
          }

          if ((v22 & 4) != 0)
          {
            v27 = v3 + 15;
            v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource;
            goto LABEL_830;
          }

          v23 = v3[14];
          if (!v23)
          {
            v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource;
            goto LABEL_1168;
          }

          v24 = *(*v23 + 43) & 3;
          v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource;
          if (v24 == 1 && (v25 = *(v3 + 17), v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource, (v25 & 1) == 0))
          {
            v26 = v22;

            v21 = 0x280D73000uLL;
            v1144 = 0;
            v28 = 0;
            v20 = 0;
            v18 = 0;
            v1140 = 0;
            v27 = v3 + 15;
          }

          else
          {
            v26 = v22;
            v27 = 0;
            v28 = 1;
          }

          if (*(v3 + 17) == 1 && (*(v21 + 3640) & 1) != 0)
          {
            v965 = v20;
            v966 = _NRCopyLogObjectForNRUUID(v3[6]);
            v967 = v966;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v1150;
            }

            else
            {
              v995 = os_log_type_enabled(v966, OS_LOG_TYPE_INFO);

              v3 = v1150;
              v21 = 0x280D73000;
              v20 = v965;
              if (!v995)
              {
                goto LABEL_826;
              }
            }

            v996 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v996, 1, "%s%.30s:%-4d sending packets over medium pipe", "", "NRBluetoothPacketParserNexusToLinkLoop", 1887);

            v20 = v965;
            v21 = 0x280D73000;
          }

LABEL_826:
          v22 = v26;
          if (v27)
          {
            if (v28)
            {
              v398 = 0;
              v397 = "Invalid";
              v399 = *v27;
              if (!*v27)
              {
                goto LABEL_831;
              }

              goto LABEL_550;
            }

LABEL_830:
            v397 = "High";
            v398 = 2;
            v399 = *v27;
            if (!*v27)
            {
              goto LABEL_831;
            }

            goto LABEL_550;
          }

LABEL_1168:
          v27 = v3 + 13;
          v397 = "Medium";
          v398 = 1;
          v399 = v3[13];
          if (!v399)
          {
LABEL_831:
            if (*(v21 + 3640) != 1)
            {
              goto LABEL_832;
            }

            v1086 = _NRCopyLogObjectForNRUUID(v1150[6]);
            v1087 = v1086;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v1094 = os_log_type_enabled(v1086, OS_LOG_TYPE_INFO);

              if (!v1094)
              {
                goto LABEL_832;
              }
            }

            v1095 = _NRCopyLogObjectForNRUUID(v1150[6]);
            _NRLogWithArgs(v1095, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 1923);

LABEL_832:
            v553 = _NRCopyLogObjectForNRUUID(v1150[6]);
            v554 = v553;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v1150;
            }

            else
            {
              v585 = os_log_type_enabled(v553, OS_LOG_TYPE_FAULT);

              v3 = v1150;
              if (!v585)
              {
                goto LABEL_753;
              }
            }

            v586 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v586, 17, "%s: Invalid write context for nexus priority: %u", v397, 100);

LABEL_753:
LABEL_754:
            if (*(v3 + 13) != 4)
            {
              dispatch_assert_queue_V2(v3[8]);
              v525 = v3[28];
              v526 = v3[33];
              v527 = v3[41];
              v528 = 0x280D73000uLL;
              if (gNRPacketLoggingEnabled != 1)
              {
                goto LABEL_756;
              }

              v574 = _NRCopyLogObjectForNRUUID(v3[6]);
              v575 = v574;
              if (sNRCopyLogToStdErr == 1)
              {

                v3 = v1150;
              }

              else
              {
                v725 = os_log_type_enabled(v574, OS_LOG_TYPE_INFO);

                v3 = v1150;
                v528 = 0x280D73000;
                if (!v725)
                {
                  goto LABEL_756;
                }
              }

              v726 = _NRCopyLogObjectForNRUUID(v3[6]);
              _NRLogWithArgs(v726, 1, "%s%.30s:%-4d starting NtL fast-path for %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1858, 101);

              v528 = 0x280D73000;
LABEL_756:
              if ((*v16 & 4) != 0)
              {
                v1146 = (v3 + 15);
                v530 = NRBluetoothPacketParserSuspendNexusVIInputSource;
LABEL_792:
                v544 = "High";
                v543 = 2;
                goto LABEL_904;
              }

              v529 = v3[14];
              if (!v529)
              {
                v530 = NRBluetoothPacketParserSuspendNexusVIInputSource;
                goto LABEL_903;
              }

              if ((*(*v529 + 43) & 3) == 1 && (*(v3 + 17) & 1) == 0)
              {

                v528 = 0x280D73000uLL;
                v530 = 0;
                v531 = 0;
                v527 = 0;
                v526 = 0;
                v525 = 0;
                v1146 = (v3 + 15);
              }

              else
              {
                v530 = NRBluetoothPacketParserSuspendNexusVIInputSource;
                v1146 = 0;
                v531 = 1;
              }

              if (*(v3 + 17) == 1 && (*(v528 + 3640) & 1) != 0)
              {
                v775 = _NRCopyLogObjectForNRUUID(v3[6]);
                v776 = v775;
                if (sNRCopyLogToStdErr == 1)
                {

                  v3 = v1150;
                }

                else
                {
                  v971 = os_log_type_enabled(v775, OS_LOG_TYPE_INFO);

                  v3 = v1150;
                  v528 = 0x280D73000;
                  if (!v971)
                  {
                    goto LABEL_789;
                  }
                }

                v972 = _NRCopyLogObjectForNRUUID(v3[6]);
                _NRLogWithArgs(v972, 1, "%s%.30s:%-4d sending packets over medium pipe", "", "NRBluetoothPacketParserNexusToLinkLoop", 1887);

                v528 = 0x280D73000;
              }

LABEL_789:
              if (v1146)
              {
                if (v531)
                {
                  v543 = 0;
                  v544 = "Invalid";
                  goto LABEL_904;
                }

                goto LABEL_792;
              }

LABEL_903:
              v1146 = (v3 + 13);
              v544 = "Medium";
              v543 = 1;
LABEL_904:
              v1141 = v525;
              if (*v1146)
              {
                v595 = *(*v1146 + 24);
                v596 = *(v595 + 84);
                v1143 = v530;
                if ((v596 & 1) == 0)
                {
                  LODWORD(v1138) = v543;
                  v1136 = v544;
                  v1139 = v527;
                  v1140 = v1102;
                  v1142 = *(v595 + 8);
                  v597 = *(v595 + 83);
                  v598 = 584;
                  if (v597 == 3)
                  {
                    v598 = 600;
                  }

                  v39 = v597 == 2;
                  v599 = 616;
                  if (!v39)
                  {
                    v599 = v598;
                  }

                  v1144 = v599;
                  if (*(v528 + 3640) != 1)
                  {
                    goto LABEL_911;
                  }

                  v729 = _NRCopyLogObjectForNRUUID(v3[6]);
                  v730 = v729;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    v3 = v1150;
                  }

                  else
                  {
                    v777 = os_log_type_enabled(v729, OS_LOG_TYPE_INFO);

                    v3 = v1150;
                    v528 = 0x280D73000;
                    if (!v777)
                    {
LABEL_911:
                      LODWORD(v1148) = 0;
                      v600 = 0;
                      v601 = 0;
                      v1147 = 0;
                      v602 = 0;
                      v1145 = 0;
                      v1137 = (v3 + 41);
                      v1149 = (v595 + 36);
                      v1155 = 0u;
                      v1156 = 0u;
                      v603 = 9;
                      v1153 = 0u;
                      v1154 = 0u;
LABEL_912:
                      if (*(v528 + 3640) == 1)
                      {
                        v672 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v676 = v672;
                          v677 = os_log_type_enabled(v672, OS_LOG_TYPE_INFO);

                          v528 = 0x280D73000;
                          if (!v677)
                          {
                            goto LABEL_913;
                          }
                        }

                        v678 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        _NRLogWithArgs(v678, 1, "%s%.30s:%-4d %s: starting NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1949, v1136);

                        v528 = 0x280D73000;
                      }

LABEL_913:
                      v605 = *(v595 + 28);
                      v604 = *(v595 + 32);
                      if (v605 <= v604)
                      {
                        v614 = v603 | 0x10;
                        v615 = v1150;
                        v616 = v1147;
                        if (!v526)
                        {
LABEL_925:
                          if (!v616)
                          {
                            v647 = 0;
                            v648 = *(v595 + 80);
                            if (!*(v595 + 80))
                            {
                              goto LABEL_1061;
                            }

                            goto LABEL_973;
                          }

                          while (1)
                          {
                            v617 = 0x4000 - *(v595 + 80);
                            v618 = nrMaxTLVLengthForPacket(v1154 + *(v615 + 14), (WORD1(v1153) - *(v615 + 14)));
                            if (v617 < v618)
                            {
                              v614 |= 0x40u;
                              v528 = 0x280D73000uLL;
                              if (gNRPacketLoggingEnabled != 1)
                              {
                                v647 = v616;
                                v648 = *(v595 + 80);
                                if (!*(v595 + 80))
                                {
                                  goto LABEL_1061;
                                }

LABEL_973:
                                v1147 = v647;
                                v1151 = 0;
                                v649 = v528;
                                if (*(v528 + 3640) == 1)
                                {
                                  v673 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v649 = 0x280D73000;
                                  }

                                  else
                                  {
                                    v680 = v673;
                                    v681 = os_log_type_enabled(v673, OS_LOG_TYPE_INFO);

                                    v649 = 0x280D73000;
                                    if (!v681)
                                    {
                                      goto LABEL_974;
                                    }
                                  }

                                  v682 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  _NRLogWithArgs(v682, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2075, v1136, *(v595 + 80));
                                }

LABEL_974:
                                v650 = (*(*v1146 + 8))(**v1146, *v595, *(v595 + 80), &v1151, 0, 0);
                                v651 = v1150;
                                v528 = v649;
                                if (*(v649 + 3640) == 1)
                                {
                                  v674 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v683 = v674;
                                    v684 = os_log_type_enabled(v674, OS_LOG_TYPE_INFO);

                                    v651 = v1150;
                                    v528 = 0x280D73000;
                                    if (!v684)
                                    {
                                      goto LABEL_975;
                                    }
                                  }

                                  v685 = _NRCopyLogObjectForNRUUID(v651[6]);
                                  _NRLogWithArgs(v685, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2078, v1136, v650, v1151, *(v595 + 80));

                                  v528 = 0x280D73000;
                                  v651 = v1150;
                                }

LABEL_975:
                                if (v650)
                                {
                                  v652 = v614 | 0x800;
                                  v653 = v1151;
                                  if (!v1151)
                                  {
                                    goto LABEL_1007;
                                  }

LABEL_1001:
                                  if (v653 < *(v595 + 80))
                                  {
                                    if (!*(v528 + 3640))
                                    {
                                      goto LABEL_1003;
                                    }

                                    v688 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      goto LABEL_1046;
                                    }

                                    v697 = v688;
                                    v698 = os_log_type_enabled(v688, OS_LOG_TYPE_INFO);

                                    if (v698)
                                    {
LABEL_1046:
                                      v699 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                      _NRLogWithArgs(v699, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2092, v1136, *(v595 + 80), v1151);
                                    }

LABEL_1003:
                                    v652 |= 0x2000u;
                                    memmove(*v595, (*v595 + v1151), *(v595 + 80) - v1151);
                                    v669 = v1151;
                                    *(v595 + 80) -= v1151;
                                    v1145 = (v1145 + 1);
                                    v528 = 0x280D73000;
LABEL_1006:
                                    *&v1144[v1150] += v669;
LABEL_1007:
                                    LODWORD(v1148) = v1148 + 1;
                                    if (v650)
                                    {
                                      v670 = *(v595 + 82);
                                      if (v670 >= 0xB)
                                      {
                                        v670 -= 11 * ((((117 * v670) >> 8) + (((v670 - ((117 * v670) >> 8)) & 0xFE) >> 1)) >> 3);
                                      }

                                      v603 = 0;
                                      *(v1149 + v670) = v652;
                                      if (v670 < 0xAu)
                                      {
                                        v671 = v670 + 1;
                                      }

                                      else
                                      {
                                        v671 = v670 - 10;
                                      }

                                      *(v595 + 82) = v671;
                                      goto LABEL_912;
                                    }

LABEL_1062:
                                    v708 = v652 | 0x8000;
                                    if (*(v528 + 3640) == 1)
                                    {
                                      v741 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                      v742 = v741;
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v793 = os_log_type_enabled(v741, OS_LOG_TYPE_INFO);

                                        v528 = 0x280D73000;
                                        if (!v793)
                                        {
                                          goto LABEL_1063;
                                        }
                                      }

                                      v794 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                      _NRLogWithArgs(v794, 1, "%s%.30s:%-4d %s: out of NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2110, v1136);

                                      v528 = 0x280D73000;
                                    }

LABEL_1063:
                                    if (v602)
                                    {
                                      os_channel_advance_slot();
                                      v528 = 0x280D73000;
                                      *(v1150 + 18) = 1;
LABEL_1066:
                                      v709 = v1148;
                                      if (v1148 > 8u || v526 && (v710 = os_channel_available_slot_count(), v528 = 0x280D73000uLL, v710 <= 1))
                                      {
                                        v708 = v652 | 0x18000;
                                        if (*(v528 + 3640) != 1)
                                        {
                                          goto LABEL_1070;
                                        }

                                        v781 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                        v782 = v781;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          goto LABEL_1478;
                                        }

                                        v973 = os_log_type_enabled(v781, OS_LOG_TYPE_INFO);

                                        if (v973)
                                        {
LABEL_1478:
                                          v974 = v1150;
                                          v975 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                          _NRLogWithArgs(v975, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2123, v1136, v600, v601, v709, v974[54] * 0.000001, v648 == 0, v1145);
                                        }

LABEL_1070:
                                        os_channel_sync();
                                        *(v1150 + 18) = 0;
                                        v528 = 0x280D73000uLL;
                                      }
                                    }

                                    else if (*(v1150 + 18))
                                    {
                                      goto LABEL_1066;
                                    }

                                    if (*(v528 + 3640) == 1)
                                    {
                                      v743 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                      v744 = v743;
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v795 = os_log_type_enabled(v743, OS_LOG_TYPE_INFO);

                                        v528 = 0x280D73000;
                                        if (!v795)
                                        {
                                          goto LABEL_1072;
                                        }
                                      }

                                      v796 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                      _NRLogWithArgs(v796, 1, "%s%.30s:%-4d %s: out of NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2134, v1136);

                                      v528 = 0x280D73000;
                                    }

LABEL_1072:
                                    v3 = v1150;
                                    v527 = v1139;
                                    if (v648)
                                    {
LABEL_1073:
                                      v711 = v708 | 0x60000;
                                      if (*(v528 + 3640) != 1)
                                      {
                                        goto LABEL_1074;
                                      }

                                      v745 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      v746 = v745;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        v3 = v1150;
                                        goto LABEL_1199;
                                      }

                                      v797 = os_log_type_enabled(v745, OS_LOG_TYPE_INFO);

                                      v3 = v1150;
                                      v527 = v1139;
                                      if (v797)
                                      {
LABEL_1199:
                                        v798 = _NRCopyLogObjectForNRUUID(v3[6]);
                                        _NRLogWithArgs(v798, 1, "%s%.30s:%-4d %s: done with NtL fast-path", "", "NRBluetoothPacketParserNexusToLinkLoop", 2168, v1136);

                                        v527 = v1139;
                                      }

LABEL_1074:
                                      v706 = *(v595 + 82);
                                      if (v706 >= 0xB)
                                      {
                                        v706 -= 11 * ((((117 * v706) >> 8) + (((v706 - ((117 * v706) >> 8)) & 0xFE) >> 1)) >> 3);
                                      }

                                      v707 = v706;
                                      *(v1149 + v706) = v711;
LABEL_1077:
                                      if (v707 < 0xA)
                                      {
                                        v712 = v706 + 1;
                                      }

                                      else
                                      {
                                        v712 = v706 - 10;
                                      }

                                      *(v595 + 82) = v712;
                                      goto LABEL_1081;
                                    }

                                    if (v1138 != 2)
                                    {
                                      if (v1138 == 1)
                                      {
                                        v713 = v1150[18];
                                        if ((*(v1150 + 15) & 4) != 0)
                                        {
                                          if ((v713 & 0x20) == 0 || !v1150[43])
                                          {
LABEL_1111:
                                            if ((v713 & 0x40) == 0 || !v3[45])
                                            {
                                              goto LABEL_1073;
                                            }

                                            v1137 = (v3 + 45);
                                            v3[18] = (v713 & 0xFFFFFFFFFFFFFFBFLL);
                                            if (*(v528 + 3640) != 1)
                                            {
                                              goto LABEL_1114;
                                            }

                                            v1007 = _NRCopyLogObjectForNRUUID(v3[6]);
                                            v1008 = v1007;
                                            if (sNRCopyLogToStdErr == 1)
                                            {

                                              goto LABEL_1541;
                                            }

                                            v1035 = os_log_type_enabled(v1007, OS_LOG_TYPE_INFO);

                                            if (v1035)
                                            {
LABEL_1541:
                                              v1036 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                              _NRLogWithArgs(v1036, 1, "%s%.30s:%-4d source-resume: NexusBKInput");
                                              goto LABEL_1578;
                                            }

                                            goto LABEL_1579;
                                          }

LABEL_1108:
                                          v3[18] = (v713 & 0xFFFFFFFFFFFFFFDFLL);
                                          if (*(v528 + 3640) == 1)
                                          {
                                            v1005 = _NRCopyLogObjectForNRUUID(v3[6]);
                                            v1006 = v1005;
                                            if (sNRCopyLogToStdErr == 1)
                                            {

                                              v3 = v1150;
                                            }

                                            else
                                            {
                                              v1037 = os_log_type_enabled(v1005, OS_LOG_TYPE_INFO);

                                              v3 = v1150;
                                              v527 = v1139;
                                              if (!v1037)
                                              {
                                                goto LABEL_1109;
                                              }
                                            }

                                            v1038 = _NRCopyLogObjectForNRUUID(v3[6]);
                                            _NRLogWithArgs(v1038, 1, "%s%.30s:%-4d source-resume: NexusBEInput", "", "NRBluetoothPacketParserResumeNexusBEInputSource", 487);

                                            v527 = v1139;
                                          }

LABEL_1109:
                                          dispatch_resume(v3[43]);
                                          v713 = v3[18];
LABEL_1110:
                                          v528 = 0x280D73000uLL;
                                          goto LABEL_1111;
                                        }
                                      }

                                      else
                                      {
                                        v713 = v1150[18];
                                      }

                                      if ((v713 & 8) != 0 && v1150[39])
                                      {
                                        v1150[18] = (v713 & 0xFFFFFFFFFFFFFFF7);
                                        if (*(v528 + 3640) != 1)
                                        {
                                          goto LABEL_1101;
                                        }

                                        v1013 = _NRCopyLogObjectForNRUUID(v3[6]);
                                        v1014 = v1013;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v3 = v1150;
                                          goto LABEL_1557;
                                        }

                                        v1051 = os_log_type_enabled(v1013, OS_LOG_TYPE_INFO);

                                        v3 = v1150;
                                        v527 = v1139;
                                        if (v1051)
                                        {
LABEL_1557:
                                          v1052 = _NRCopyLogObjectForNRUUID(v3[6]);
                                          _NRLogWithArgs(v1052, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);

                                          v527 = v1139;
                                        }

LABEL_1101:
                                        dispatch_resume(v3[39]);
                                        v713 = v3[18];
                                      }

                                      if ((v713 & 0x10) != 0 && *v1137)
                                      {
                                        v3[18] = (v713 & 0xFFFFFFFFFFFFFFEFLL);
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_1105;
                                        }

                                        v1015 = _NRCopyLogObjectForNRUUID(v3[6]);
                                        v1016 = v1015;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v3 = v1150;
                                          goto LABEL_1559;
                                        }

                                        v1053 = os_log_type_enabled(v1015, OS_LOG_TYPE_INFO);

                                        v3 = v1150;
                                        v527 = v1139;
                                        if (v1053)
                                        {
LABEL_1559:
                                          v1054 = _NRCopyLogObjectForNRUUID(v3[6]);
                                          _NRLogWithArgs(v1054, 1, "%s%.30s:%-4d source-resume: NexusVIInput", "", "NRBluetoothPacketParserResumeNexusVIInputSource", 491);

                                          v527 = v1139;
                                        }

LABEL_1105:
                                        dispatch_resume(v3[41]);
                                        v713 = v3[18];
                                      }

                                      if ((v713 & 0x20) != 0)
                                      {
                                        v528 = 0x280D73000uLL;
                                        if (!v3[43])
                                        {
                                          goto LABEL_1111;
                                        }

                                        goto LABEL_1108;
                                      }

                                      goto LABEL_1110;
                                    }

                                    v714 = v1150[18];
                                    if ((v714 & 8) != 0 && v1150[39])
                                    {
                                      v1150[18] = (v714 & 0xFFFFFFFFFFFFFFF7);
                                      if (*(v528 + 3640) != 1)
                                      {
                                        goto LABEL_1091;
                                      }

                                      v1033 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      v1034 = v1033;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        v3 = v1150;
                                        goto LABEL_1581;
                                      }

                                      v1072 = os_log_type_enabled(v1033, OS_LOG_TYPE_INFO);

                                      v3 = v1150;
                                      v527 = v1139;
                                      if (v1072)
                                      {
LABEL_1581:
                                        v1073 = _NRCopyLogObjectForNRUUID(v3[6]);
                                        _NRLogWithArgs(v1073, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);

                                        v527 = v1139;
                                      }

LABEL_1091:
                                      dispatch_resume(v3[39]);
                                      v714 = v3[18];
                                      v528 = 0x280D73000uLL;
                                    }

                                    if ((v714 & 0x10) == 0 || !*v1137)
                                    {
                                      goto LABEL_1073;
                                    }

                                    v3[18] = (v714 & 0xFFFFFFFFFFFFFFEFLL);
                                    if (*(v528 + 3640) != 1)
                                    {
LABEL_1114:
                                      dispatch_resume(*v1137);
                                      v528 = 0x280D73000;
                                      goto LABEL_1073;
                                    }

                                    v715 = _NRCopyLogObjectForNRUUID(v3[6]);
                                    v716 = v715;
                                    if (sNRCopyLogToStdErr == 1)
                                    {
                                    }

                                    else
                                    {
                                      v1071 = os_log_type_enabled(v715, OS_LOG_TYPE_INFO);

                                      if (!v1071)
                                      {
                                        goto LABEL_1579;
                                      }
                                    }

                                    v1036 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                    _NRLogWithArgs(v1036, 1, "%s%.30s:%-4d source-resume: NexusVIInput");
LABEL_1578:

LABEL_1579:
                                    v3 = v1150;
                                    v527 = v1139;
                                    goto LABEL_1114;
                                  }

                                  if (!*(v528 + 3640))
                                  {
LABEL_1005:
                                    v652 |= 0x4000u;
                                    *(v595 + 80) = 0;
                                    v669 = v1151;
                                    goto LABEL_1006;
                                  }

                                  v689 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v700 = v689;
                                    v701 = os_log_type_enabled(v689, OS_LOG_TYPE_INFO);

                                    v528 = 0x280D73000;
                                    if (!v701)
                                    {
                                      goto LABEL_1005;
                                    }
                                  }

                                  v702 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  _NRLogWithArgs(v702, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2099, v1136, *(v595 + 80), v1151);

                                  v528 = 0x280D73000;
                                  goto LABEL_1005;
                                }

                                if (v1143)
                                {
                                  v1143(v651);
                                  v528 = 0x280D73000uLL;
                                }

                                *(v595 + 84) |= 1u;
                                v654 = *(v595 + 83);
                                if (v654 > 1)
                                {
                                  if (v654 == 2)
                                  {
                                    v651[21] = v651[21] + 1;
                                    v651[18] = (v651[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v595 + 84) & 1)));
                                    if (*(v528 + 3640) != 1)
                                    {
                                      goto LABEL_999;
                                    }

                                    v663 = _NRCopyLogObjectForNRUUID(v651[6]);
                                    v664 = v663;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v665 = v1150;
                                    }

                                    else
                                    {
                                      v705 = os_log_type_enabled(v663, OS_LOG_TYPE_INFO);

                                      v665 = v1150;
                                      v528 = 0x280D73000;
                                      if (!v705)
                                      {
                                        goto LABEL_999;
                                      }
                                    }

                                    v668 = _NRCopyLogObjectForNRUUID(v665[6]);
                                    _NRLogWithArgs(v668, 1, "%s%.30s:%-4d source-%s: High");
                                  }

                                  else
                                  {
                                    if (v654 != 3)
                                    {
                                      goto LABEL_999;
                                    }

                                    v651[23] = v651[23] + 1;
                                    v651[18] = (v651[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v595 + 84) & 1)));
                                    if (*(v528 + 3640) != 1)
                                    {
                                      goto LABEL_999;
                                    }

                                    v659 = _NRCopyLogObjectForNRUUID(v651[6]);
                                    v660 = v659;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v661 = v1150;
                                    }

                                    else
                                    {
                                      v704 = os_log_type_enabled(v659, OS_LOG_TYPE_INFO);

                                      v661 = v1150;
                                      v528 = 0x280D73000;
                                      if (!v704)
                                      {
                                        goto LABEL_999;
                                      }
                                    }

                                    v668 = _NRCopyLogObjectForNRUUID(v661[6]);
                                    _NRLogWithArgs(v668, 1, "%s%.30s:%-4d source-%s: Isochronous");
                                  }

LABEL_998:

                                  v528 = 0x280D73000uLL;
                                  goto LABEL_999;
                                }

                                if (!*(v595 + 83))
                                {
                                  v662 = _NRCopyLogObjectForNRUUID(v651[6]);
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v666 = v662;
                                    v667 = os_log_type_enabled(v662, OS_LOG_TYPE_ERROR);

                                    v651 = v1150;
                                    v528 = 0x280D73000;
                                    if (!v667)
                                    {
                                      goto LABEL_999;
                                    }
                                  }

                                  v668 = _NRCopyLogObjectForNRUUID(v651[6]);
                                  _NRLogWithArgs(v668, 16, "%s%.30s:%-4d invalid link channel priority");
                                  goto LABEL_998;
                                }

                                if (v654 == 1)
                                {
                                  v655 = v651[18];
                                  v651[19] = v651[19] + 1;
                                  v651[18] = (v655 & 0xFFFFFFFFFFFFFFFELL | *(v595 + 84) & 1);
                                  if (*(v528 + 3640) == 1)
                                  {
                                    v656 = _NRCopyLogObjectForNRUUID(v651[6]);
                                    v657 = v656;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v658 = v1150;
                                      goto LABEL_1050;
                                    }

                                    v703 = os_log_type_enabled(v656, OS_LOG_TYPE_INFO);

                                    v658 = v1150;
                                    v528 = 0x280D73000;
                                    if (v703)
                                    {
LABEL_1050:
                                      v668 = _NRCopyLogObjectForNRUUID(v658[6]);
                                      _NRLogWithArgs(v668, 1, "%s%.30s:%-4d source-%s: Medium");
                                      goto LABEL_998;
                                    }
                                  }
                                }

LABEL_999:
                                v652 = v614 | 0x1800;
                                if (*(v528 + 3640) != 1)
                                {
                                  v653 = v1151;
                                  if (v1151)
                                  {
                                    goto LABEL_1001;
                                  }

                                  goto LABEL_1007;
                                }

                                v679 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  goto LABEL_1039;
                                }

                                v692 = v679;
                                v693 = os_log_type_enabled(v679, OS_LOG_TYPE_INFO);

                                if (v693)
                                {
LABEL_1039:
                                  v694 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  _NRLogWithArgs(v694, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 2086);
                                }

                                v528 = 0x280D73000;
                                v653 = v1151;
                                if (!v1151)
                                {
                                  goto LABEL_1007;
                                }

                                goto LABEL_1001;
                              }

                              v686 = v618;
                              v687 = _NRCopyLogObjectForNRUUID(v615[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_1043;
                              }

                              v695 = v687;
                              LODWORD(v1147) = os_log_type_enabled(v687, OS_LOG_TYPE_INFO);

                              if (v1147)
                              {
LABEL_1043:
                                v696 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v696, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1984, v1136, v617, v686);
                              }

                              v647 = v616;
LABEL_972:
                              v528 = 0x280D73000uLL;
                              v648 = *(v595 + 80);
                              if (*(v595 + 80))
                              {
                                goto LABEL_973;
                              }

LABEL_1061:
                              v652 = v614 | 0x400;
                              if (*(v528 + 3640) != 1)
                              {
                                goto LABEL_1062;
                              }

                              v791 = _NRCopyLogObjectForNRUUID(v1150[6]);
                              v792 = v791;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_1485;
                              }

                              v980 = os_log_type_enabled(v791, OS_LOG_TYPE_INFO);

                              if (v980)
                              {
LABEL_1485:
                                v981 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v981, 1, "%s%.30s:%-4d %s: nothing to read from nexus", "", "NRBluetoothPacketParserNexusToLinkLoop", 2065, v1136);
                              }

                              v528 = 0x280D73000;
                              goto LABEL_1062;
                            }

                            os_channel_slot_get_packet();
                            os_packet_get_next_buflet();
                            data_offset = os_buflet_get_data_offset();
                            object_address = os_buflet_get_object_address();
                            data_length = os_buflet_get_data_length();
                            if (data_length >= 0x10000)
                            {
                              if (nrCopyLogObj_onceToken_563 != -1)
                              {
                                dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
                              }

                              v717 = nrCopyLogObj_sNRLogObj_564;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_1120;
                              }

                              v718 = v717;
                              v719 = os_log_type_enabled(v717, OS_LOG_TYPE_ERROR);

                              if (v719)
                              {
LABEL_1120:
                                v720 = nrCopyLogObj_560();
                                _NRLogWithArgs(v720, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", "", "NRBluetoothPacketParserNexusToLinkLoop", 1997);
                              }

LABEL_863:
                              v557 = _os_log_pack_size();
                              v559 = &v1102[-((MEMORY[0x28223BE20](v557, v558) + 15) & 0xFFFFFFFFFFFFFFF0)];
                              v560 = __error();
                              v561 = _os_log_pack_fill(v559, v557, *v560, &dword_25B98C000, "%{public}s Assertion Failed: dataLen <= 65535");
                              *v561 = 136446210;
                              *(v561 + 4) = "NRBluetoothPacketParserNexusToLinkLoop";
                              v562 = nrCopyLogObj_560();
                              _NRLogAbortWithPack(v562, v559);
                            }

                            if (*(v1150 + 9) == 1)
                            {
                              v1151 = 0;
                              v1152 = 0;
                              v622 = (*v595 + *(v595 + 80));
                              v1151 = v622;
                              LODWORD(v1152) = v617;
                              v623 = *(v1150 + 14);
                              v615 = v1150;
                              if (*(v1150 + 10) == 1)
                              {
                                v624 = nrPacketTo6LoWPAN((v1154 + v623), (WORD1(v1153) - v623), &v1151, 1u, (v1150 + 86), (v1150 + 88), 0);
                              }

                              else
                              {
                                memcpy(v622, (v1154 + v623), WORD1(v1153) - v623);
                                v624 = WORD1(v1153) - *(v615 + 14);
                              }

                              if (gNRPacketLoggingEnabled != 1)
                              {
                                goto LABEL_941;
                              }

                              v631 = _NRCopyLogObjectForNRUUID(v615[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                v632 = v631;
                                v633 = os_log_type_enabled(v631, OS_LOG_TYPE_INFO);

                                v615 = v1150;
                                if (!v633)
                                {
                                  goto LABEL_941;
                                }
                              }

                              v634 = _NRCopyLogObjectForNRUUID(v615[6]);
                              _NRLogWithArgs(v634, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2015, v1136, v624, WORD1(v1153));
                              goto LABEL_959;
                            }

                            if (!data_length && WORD1(v1153))
                            {
                              v1151 = 0;
                              v1152 = 0;
                              v1151 = *v595 + *(v595 + 80);
                              LODWORD(v1152) = v617;
                              v615 = v1150;
                              v624 = nrPacketToTLV((v1154 + *(v1150 + 14)), (WORD1(v1153) - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                              if (gNRPacketLoggingEnabled == 1)
                              {
                                v625 = _NRCopyLogObjectForNRUUID(v615[6]);
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  goto LABEL_958;
                                }

                                v636 = v625;
                                v637 = os_log_type_enabled(v625, OS_LOG_TYPE_INFO);

                                v615 = v1150;
                                if (v637)
                                {
LABEL_958:
                                  v634 = _NRCopyLogObjectForNRUUID(v615[6]);
                                  ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket(v1154, WORD1(v1153));
                                  ESPSPIFromPacket = getESPSPIFromPacket(v1154, WORD1(v1153));
                                  _NRLogWithArgs(v634, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2027, v1136, v624, ESPSequenceNumberFromPacket, ESPSPIFromPacket);
LABEL_959:

                                  v615 = v1150;
                                }
                              }

LABEL_941:
                              v614 |= 0x80u;
                              goto LABEL_942;
                            }

                            if (data_length)
                            {
                              v626 = object_address + data_offset;
                              v1151 = 0;
                              v1152 = 0;
                              v1151 = *v595 + *(v595 + 80);
                              LODWORD(v1152) = v617;
                              v615 = v1150;
                              v627 = data_length;
                              v624 = nrPacketToTLV((v626 + *(v1150 + 14)), (data_length - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                              if (gNRPacketLoggingEnabled != 1)
                              {
LABEL_938:
                                v614 |= 0x100u;
                                goto LABEL_942;
                              }

                              v635 = _NRCopyLogObjectForNRUUID(v615[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                v641 = v635;
                                LODWORD(v1147) = os_log_type_enabled(v635, OS_LOG_TYPE_INFO);

                                v615 = v1150;
                                if (!v1147)
                                {
                                  goto LABEL_938;
                                }
                              }

                              v642 = _NRCopyLogObjectForNRUUID(v615[6]);
                              v1147 = getESPSequenceNumberFromPacket(v626, v627);
                              v643 = getESPSPIFromPacket(v626, v627);
                              _NRLogWithArgs(v642, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2037, v1136, v624, v1147, v643);

                              v615 = v1150;
                              goto LABEL_938;
                            }

                            v614 |= 0x200u;
                            if (gNRPacketLoggingEnabled != 1)
                            {
                              break;
                            }

                            v640 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v644 = v640;
                              v645 = os_log_type_enabled(v640, OS_LOG_TYPE_INFO);

                              if (!v645)
                              {
                                break;
                              }
                            }

                            v615 = v1150;
                            v646 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v646, 1, "%s%.30s:%-4d %s: No data to write", "", "NRBluetoothPacketParserNexusToLinkLoop", 2039, v1136);

                            v624 = 0;
LABEL_942:
                            *(v595 + 80) += v624;
                            next_slot = os_channel_get_next_slot();
                            ++v600;
                            v615[58] = v615[58] + 1;
                            *(v615 + 20) = 1;
                            v601 += v624;
                            if (!next_slot)
                            {
                              v647 = 0;
                              v602 = v616;
                              goto LABEL_972;
                            }

                            v629 = *(v595 + 82);
                            if (v629 >= 0xB)
                            {
                              v629 -= 11 * ((((117 * v629) >> 8) + (((v629 - ((117 * v629) >> 8)) & 0xFE) >> 1)) >> 3);
                            }

                            *(v1149 + v629) = v614;
                            if (v629 < 0xAu)
                            {
                              v630 = v629 + 1;
                            }

                            else
                            {
                              v630 = v629 - 10;
                            }

                            *(v595 + 82) = v630;
                            v602 = v616;
                            v616 = next_slot;
                            v614 = 0;
                          }

                          v624 = 0;
                          v615 = v1150;
                          goto LABEL_942;
                        }

LABEL_924:
                        v616 = os_channel_get_next_slot();
                        v528 = 0x280D73000uLL;
                        goto LABEL_925;
                      }

                      v606 = *(v595 + 80);
                      v607 = (0x4000 - v606);
                      v608 = (v605 - v604);
                      if (v608 >= v607)
                      {
                        v609 = (0x4000 - v606);
                      }

                      else
                      {
                        v609 = (v605 - v604);
                      }

                      v610 = v1142;
                      memcpy((*v595 + v606), v1142 + v604, v609);
                      v611 = *(v595 + 28);
                      v612 = *(v595 + 32) + v609;
                      *(v595 + 32) = v612;
                      if (v611 <= v612)
                      {
                        v613 = 0;
                      }

                      else
                      {
                        memmove(v610, v610 + v612, v611 - v612);
                        v613 = *(v595 + 28) - *(v595 + 32);
                      }

                      v615 = v1150;
                      v528 = 0x280D73000uLL;
                      *(v595 + 28) = v613;
                      *(v595 + 32) = 0;
                      *(v595 + 80) += v609;
                      if (gNRPacketLoggingEnabled == 1)
                      {
                        v675 = _NRCopyLogObjectForNRUUID(v615[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v690 = v675;
                          LODWORD(v1135) = os_log_type_enabled(v675, OS_LOG_TYPE_INFO);

                          v615 = v1150;
                          v528 = 0x280D73000;
                          if (!v1135)
                          {
                            goto LABEL_923;
                          }
                        }

                        v691 = _NRCopyLogObjectForNRUUID(v615[6]);
                        _NRLogWithArgs(v691, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", "", "NRBluetoothPacketParserNexusToLinkLoop", 1968, v1136, v609, v607, v608);

                        v528 = 0x280D73000;
                        v615 = v1150;
                      }

LABEL_923:
                      v614 = v603 | 0x30;
                      v601 += v609;
                      v616 = v1147;
                      if (!v526)
                      {
                        goto LABEL_925;
                      }

                      goto LABEL_924;
                    }
                  }

                  v778 = _NRCopyLogObjectForNRUUID(v3[6]);
                  _NRLogWithArgs(v778, 1, "%s%.30s:%-4d %s: starting NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1938, v1136);

                  v528 = 0x280D73000;
                  goto LABEL_911;
                }

                if (*(v528 + 3640) != 1)
                {
LABEL_1056:
                  if (v530)
                  {
                    v530(v3);
                  }

                  v706 = *(v595 + 82);
                  if (v706 >= 0xB)
                  {
                    v706 -= 11 * ((((117 * v706) >> 8) + (((v706 - ((117 * v706) >> 8)) & 0xFE) >> 1)) >> 3);
                  }

                  v707 = v706;
                  *(v595 + 4 * v706 + 36) = 3;
                  goto LABEL_1077;
                }

                v731 = v544;
                v732 = v527;
                v733 = _NRCopyLogObjectForNRUUID(v3[6]);
                v734 = v733;
                if (sNRCopyLogToStdErr == 1)
                {

                  v3 = v1150;
                  v530 = v1143;
                }

                else
                {
                  v779 = os_log_type_enabled(v733, OS_LOG_TYPE_INFO);

                  v3 = v1150;
                  v527 = v732;
                  v530 = v1143;
                  if (!v779)
                  {
                    goto LABEL_1056;
                  }
                }

                v780 = _NRCopyLogObjectForNRUUID(v3[6]);
                _NRLogWithArgs(v780, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", "", "NRBluetoothPacketParserNexusToLinkLoop", 1903, v731, 101);

                v527 = v732;
                goto LABEL_1056;
              }

              v721 = v544;
              v722 = v527;
              if (*(v528 + 3640) != 1)
              {
                goto LABEL_1123;
              }

              v1088 = _NRCopyLogObjectForNRUUID(v1150[6]);
              v1089 = v1088;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v1096 = os_log_type_enabled(v1088, OS_LOG_TYPE_INFO);

                if (!v1096)
                {
                  goto LABEL_1123;
                }
              }

              v1097 = _NRCopyLogObjectForNRUUID(v1150[6]);
              _NRLogWithArgs(v1097, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 1923);

LABEL_1123:
              v723 = _NRCopyLogObjectForNRUUID(v1150[6]);
              v724 = v723;
              if (sNRCopyLogToStdErr == 1)
              {

                v3 = v1150;
              }

              else
              {
                v727 = os_log_type_enabled(v723, OS_LOG_TYPE_FAULT);

                v3 = v1150;
                v527 = v722;
                if (!v727)
                {
                  goto LABEL_1081;
                }
              }

              v728 = _NRCopyLogObjectForNRUUID(v3[6]);
              _NRLogWithArgs(v728, 17, "%s: Invalid write context for nexus priority: %u", v721, 101);

              v527 = v722;
LABEL_1081:
            }

LABEL_1397:

            return;
          }

LABEL_550:
          v400 = v399[3];
          if ((*(v400 + 84) & 1) == 0)
          {
            v1145 = v27;
            LODWORD(v1149) = v22;
            LODWORD(v1137) = v398;
            v1134 = v397;
            v1138 = v20;
            v1139 = v1102;
            v1130 = v16;
            v1141 = *(v400 + 8);
            v401 = *(v400 + 83);
            v402 = 584;
            if (v401 == 3)
            {
              v402 = 600;
            }

            v39 = v401 == 2;
            v403 = 616;
            if (!v39)
            {
              v403 = v402;
            }

            v1142 = v403;
            if (*(v21 + 3640) != 1)
            {
              goto LABEL_556;
            }

            v589 = _NRCopyLogObjectForNRUUID(v3[6]);
            v590 = v589;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v1150;
            }

            else
            {
              v769 = os_log_type_enabled(v589, OS_LOG_TYPE_INFO);

              v3 = v1150;
              v21 = 0x280D73000;
              if (!v769)
              {
LABEL_556:
                LODWORD(v1147) = 0;
                v404 = 0;
                v405 = 0;
                v1146 = 0;
                v406 = 0;
                v1143 = 0;
                v1135 = (v3 + 39);
                v1148 = v400 + 36;
                v1155 = 0u;
                v1156 = 0u;
                v407 = 9;
                v1153 = 0u;
                v1154 = 0u;
LABEL_557:
                if (*(v21 + 3640) != 1)
                {
LABEL_558:
                  v408 = v407 | 0x10;
                  if ((v1149 & 8) != 0 || (v410 = *(v400 + 28), v409 = *(v400 + 32), v411 = v1141, v410 <= v409))
                  {
LABEL_568:
                    v419 = v1146;
                    if (v18)
                    {
                      v419 = os_channel_get_next_slot();
                      v21 = 0x280D73000uLL;
                    }

                    v420 = v1150;
                    if (!v419)
                    {
                      v451 = 0;
                      v452 = *(v400 + 80);
                      if (!*(v400 + 80))
                      {
                        goto LABEL_723;
                      }

                      goto LABEL_621;
                    }

                    while (1)
                    {
                      v421 = 0x4000 - *(v400 + 80);
                      v422 = nrMaxTLVLengthForPacket(v1154 + *(v420 + 14), (WORD1(v1153) - *(v420 + 14)));
                      if (v421 < v422)
                      {
                        v408 |= 0x40u;
                        v21 = 0x280D73000uLL;
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          v451 = v419;
                          v452 = *(v400 + 80);
                          if (!*(v400 + 80))
                          {
                            goto LABEL_723;
                          }

LABEL_621:
                          v1146 = v451;
                          v1151 = 0;
                          v453 = v21;
                          if (*(v21 + 3640) == 1)
                          {
                            v476 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v453 = 0x280D73000;
                            }

                            else
                            {
                              v482 = v476;
                              v483 = os_log_type_enabled(v476, OS_LOG_TYPE_INFO);

                              v453 = 0x280D73000;
                              if (!v483)
                              {
                                goto LABEL_622;
                              }
                            }

                            v484 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v484, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2075, v1134, *(v400 + 80));
                          }

LABEL_622:
                          v454 = (*(*v1145 + 8))(**v1145, *v400, *(v400 + 80), &v1151, 0, 0);
                          v455 = v1150;
                          v21 = v453;
                          if (*(v453 + 3640) == 1)
                          {
                            v477 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v485 = v477;
                              LODWORD(v1136) = os_log_type_enabled(v477, OS_LOG_TYPE_INFO);

                              v455 = v1150;
                              v21 = 0x280D73000;
                              if (!v1136)
                              {
                                goto LABEL_623;
                              }
                            }

                            v486 = _NRCopyLogObjectForNRUUID(v455[6]);
                            _NRLogWithArgs(v486, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2078, v1134, v454, v1151, *(v400 + 80));

                            v21 = 0x280D73000;
                            v455 = v1150;
                          }

LABEL_623:
                          if (v454)
                          {
                            v456 = v408 | 0x800;
                            v457 = v1151;
                            if (!v1151)
                            {
                              goto LABEL_655;
                            }

LABEL_649:
                            if (v457 < *(v400 + 80))
                            {
                              if (!*(v21 + 3640))
                              {
                                goto LABEL_651;
                              }

                              v489 = _NRCopyLogObjectForNRUUID(v1150[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_692;
                              }

                              v497 = v489;
                              v498 = os_log_type_enabled(v489, OS_LOG_TYPE_INFO);

                              if (v498)
                              {
LABEL_692:
                                v499 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v499, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2092, v1134, *(v400 + 80), v1151);
                              }

LABEL_651:
                              v456 |= 0x2000u;
                              memmove(*v400, (*v400 + v1151), *(v400 + 80) - v1151);
                              v472 = v1151;
                              *(v400 + 80) -= v1151;
                              v1143 = (v1143 + 1);
                              v21 = 0x280D73000;
LABEL_654:
                              *(v1142 + v1150) += v472;
LABEL_655:
                              LODWORD(v1147) = v1147 + 1;
                              if (v454)
                              {
                                v473 = *(v400 + 82);
                                if (v473 >= 0xB)
                                {
                                  v473 -= 11 * ((((117 * v473) >> 8) + (((v473 - ((117 * v473) >> 8)) & 0xFE) >> 1)) >> 3);
                                }

                                v407 = 0;
                                *(v1148 + 4 * v473) = v456;
                                if (v473 < 0xAu)
                                {
                                  v474 = v473 + 1;
                                }

                                else
                                {
                                  v474 = v473 - 10;
                                }

                                *(v400 + 82) = v474;
                                goto LABEL_557;
                              }

LABEL_724:
                              v519 = v456 | 0x8000;
                              if (*(v21 + 3640) == 1)
                              {
                                v735 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                v736 = v735;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v785 = os_log_type_enabled(v735, OS_LOG_TYPE_INFO);

                                  v21 = 0x280D73000;
                                  if (!v785)
                                  {
                                    goto LABEL_725;
                                  }
                                }

                                v786 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v786, 1, "%s%.30s:%-4d %s: out of NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2110, v1134);

                                v21 = 0x280D73000;
                              }

LABEL_725:
                              if (v406)
                              {
                                os_channel_advance_slot();
                                v21 = 0x280D73000;
                                *(v1150 + 18) = 1;
LABEL_738:
                                v522 = v1147;
                                if (v1147 > 8u || v18 && (v523 = os_channel_available_slot_count(), v21 = 0x280D73000uLL, v523 <= 1))
                                {
                                  v519 = v456 | 0x18000;
                                  if (*(v21 + 3640) != 1)
                                  {
                                    goto LABEL_742;
                                  }

                                  v773 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  v774 = v773;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    goto LABEL_1474;
                                  }

                                  v968 = os_log_type_enabled(v773, OS_LOG_TYPE_INFO);

                                  if (v968)
                                  {
LABEL_1474:
                                    v969 = v1150;
                                    v970 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                    _NRLogWithArgs(v970, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2123, v1134, v404, v405, v522, v969[54] * 0.000001, v452 == 0, v1143);
                                  }

LABEL_742:
                                  os_channel_sync();
                                  *(v1150 + 18) = 0;
                                  v21 = 0x280D73000uLL;
                                }
                              }

                              else if (*(v1150 + 18))
                              {
                                goto LABEL_738;
                              }

                              if (*(v21 + 3640) == 1)
                              {
                                v737 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                v738 = v737;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v787 = os_log_type_enabled(v737, OS_LOG_TYPE_INFO);

                                  v21 = 0x280D73000;
                                  if (!v787)
                                  {
                                    goto LABEL_744;
                                  }
                                }

                                v788 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v788, 1, "%s%.30s:%-4d %s: out of NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2134, v1134);

                                v21 = 0x280D73000;
                              }

LABEL_744:
                              v3 = v1150;
                              v20 = v1138;
                              if (v452)
                              {
LABEL_745:
                                if (*(v21 + 3640) != 1)
                                {
                                  goto LABEL_746;
                                }

                                v739 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v740 = v739;
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  v3 = v1150;
                                  v20 = v1138;
                                  goto LABEL_1191;
                                }

                                v789 = os_log_type_enabled(v739, OS_LOG_TYPE_INFO);

                                v3 = v1150;
                                v20 = v1138;
                                if (v789)
                                {
LABEL_1191:
                                  v790 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  _NRLogWithArgs(v790, 1, "%s%.30s:%-4d %s: done with NtL fast-path", "", "NRBluetoothPacketParserNexusToLinkLoop", 2168, v1134);
                                }

LABEL_746:
                                v508 = *(v400 + 82);
                                v16 = v1130;
                                if (v508 >= 0xB)
                                {
                                  v508 -= 11 * ((((117 * v508) >> 8) + (((v508 - ((117 * v508) >> 8)) & 0xFE) >> 1)) >> 3);
                                }

                                v509 = v508;
                                *(v1148 + 4 * v508) = v519 | 0x60000;
LABEL_749:
                                if (v509 < 0xA)
                                {
                                  v524 = v508 + 1;
                                }

                                else
                                {
                                  v524 = v508 - 10;
                                }

                                *(v400 + 82) = v524;
                                goto LABEL_753;
                              }

                              if (v1137 <= 1)
                              {
                                if (v1137)
                                {
                                  v532 = v1150[18];
                                  if ((*(v1150 + 15) & 4) == 0)
                                  {
                                    goto LABEL_835;
                                  }

                                  if ((v532 & 0x20) != 0 && v1150[43])
                                  {
                                    goto LABEL_866;
                                  }
                                }

                                else
                                {
                                  v532 = v1150[18];
LABEL_835:
                                  if ((v532 & 8) != 0 && *v1135)
                                  {
                                    v1150[18] = (v532 & 0xFFFFFFFFFFFFFFF7);
                                    if (*(v21 + 3640) != 1)
                                    {
                                      goto LABEL_838;
                                    }

                                    v1021 = _NRCopyLogObjectForNRUUID(v3[6]);
                                    v1022 = v1021;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v3 = v1150;
                                      v20 = v1138;
                                      goto LABEL_1565;
                                    }

                                    v1059 = os_log_type_enabled(v1021, OS_LOG_TYPE_INFO);

                                    v3 = v1150;
                                    v20 = v1138;
                                    if (v1059)
                                    {
LABEL_1565:
                                      v1060 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      _NRLogWithArgs(v1060, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);
                                    }

LABEL_838:
                                    dispatch_resume(v3[39]);
                                    v532 = v3[18];
                                  }

                                  if ((v532 & 0x10) != 0 && v3[41])
                                  {
                                    v3[18] = (v532 & 0xFFFFFFFFFFFFFFEFLL);
                                    if (gNRPacketLoggingEnabled != 1)
                                    {
                                      goto LABEL_842;
                                    }

                                    v1023 = _NRCopyLogObjectForNRUUID(v3[6]);
                                    v1024 = v1023;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v3 = v1150;
                                      v20 = v1138;
                                      goto LABEL_1567;
                                    }

                                    v1061 = os_log_type_enabled(v1023, OS_LOG_TYPE_INFO);

                                    v3 = v1150;
                                    v20 = v1138;
                                    if (v1061)
                                    {
LABEL_1567:
                                      v1062 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      _NRLogWithArgs(v1062, 1, "%s%.30s:%-4d source-resume: NexusVIInput", "", "NRBluetoothPacketParserResumeNexusVIInputSource", 491);
                                    }

LABEL_842:
                                    dispatch_resume(v3[41]);
                                    v532 = v3[18];
                                  }

                                  if ((v532 & 0x20) != 0)
                                  {
                                    v21 = 0x280D73000;
                                    if (!v3[43])
                                    {
                                      goto LABEL_869;
                                    }

LABEL_866:
                                    v3[18] = (v532 & 0xFFFFFFFFFFFFFFDFLL);
                                    if (*(v21 + 3640) == 1)
                                    {
                                      v1009 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      v1010 = v1009;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        v3 = v1150;
                                        v20 = v1138;
                                      }

                                      else
                                      {
                                        v1049 = os_log_type_enabled(v1009, OS_LOG_TYPE_INFO);

                                        v3 = v1150;
                                        v20 = v1138;
                                        if (!v1049)
                                        {
                                          goto LABEL_867;
                                        }
                                      }

                                      v1050 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      _NRLogWithArgs(v1050, 1, "%s%.30s:%-4d source-resume: NexusBEInput", "", "NRBluetoothPacketParserResumeNexusBEInputSource", 487);
                                    }

LABEL_867:
                                    dispatch_resume(v3[43]);
                                    v532 = v3[18];
                                  }

                                  v21 = 0x280D73000uLL;
                                }

LABEL_869:
                                if ((v532 & 0x40) == 0 || !v3[45])
                                {
                                  goto LABEL_745;
                                }

                                v546 = (v3 + 45);
                                v3[18] = (v532 & 0xFFFFFFFFFFFFFFBFLL);
                                if (*(v21 + 3640) != 1)
                                {
LABEL_872:
                                  dispatch_resume(*v546);
                                  v21 = 0x280D73000;
                                  goto LABEL_745;
                                }

                                v1135 = (v3 + 45);
                                v1011 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v1012 = v1011;
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  goto LABEL_1553;
                                }

                                v1047 = os_log_type_enabled(v1011, OS_LOG_TYPE_INFO);

                                if (v1047)
                                {
LABEL_1553:
                                  v1048 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  _NRLogWithArgs(v1048, 1, "%s%.30s:%-4d source-resume: NexusBKInput");
                                  goto LABEL_1588;
                                }

LABEL_1589:
                                v3 = v1150;
                                v20 = v1138;
LABEL_849:
                                v546 = v1135;
                                goto LABEL_872;
                              }

                              if (v1137 == 2)
                              {
                                v545 = v1150[18];
                                if ((v545 & 8) != 0 && *v1135)
                                {
                                  v1150[18] = (v545 & 0xFFFFFFFFFFFFFFF7);
                                  if (*(v21 + 3640) != 1)
                                  {
                                    goto LABEL_797;
                                  }

                                  v1039 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  v1040 = v1039;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v3 = v1150;
                                    v20 = v1138;
                                    goto LABEL_1585;
                                  }

                                  v1075 = os_log_type_enabled(v1039, OS_LOG_TYPE_INFO);

                                  v3 = v1150;
                                  v20 = v1138;
                                  if (v1075)
                                  {
LABEL_1585:
                                    v1076 = _NRCopyLogObjectForNRUUID(v3[6]);
                                    _NRLogWithArgs(v1076, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);
                                  }

LABEL_797:
                                  dispatch_resume(v3[39]);
                                  v545 = v3[18];
                                  v21 = 0x280D73000uLL;
                                }

                                if ((v545 & 0x10) == 0 || !v3[41])
                                {
                                  goto LABEL_745;
                                }

                                v546 = (v3 + 41);
                                v3[18] = (v545 & 0xFFFFFFFFFFFFFFEFLL);
                                if (*(v21 + 3640) != 1)
                                {
                                  goto LABEL_872;
                                }

                                v1135 = (v3 + 41);
                                v547 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v548 = v547;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v1074 = os_log_type_enabled(v547, OS_LOG_TYPE_INFO);

                                  if (!v1074)
                                  {
                                    goto LABEL_1589;
                                  }
                                }

                                v1048 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v1048, 1, "%s%.30s:%-4d source-resume: NexusVIInput");
                              }

                              else
                              {
                                v555 = v1150[18];
                                if ((v555 & 8) == 0 || !*v1135)
                                {
                                  goto LABEL_745;
                                }

                                v1150[18] = (v555 & 0xFFFFFFFFFFFFFFF7);
                                if (*(v21 + 3640) != 1)
                                {
                                  goto LABEL_849;
                                }

                                v1041 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v1042 = v1041;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v1077 = os_log_type_enabled(v1041, OS_LOG_TYPE_INFO);

                                  if (!v1077)
                                  {
                                    goto LABEL_1589;
                                  }
                                }

                                v1048 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v1048, 1, "%s%.30s:%-4d source-resume: NexusVOInput");
                              }

LABEL_1588:

                              goto LABEL_1589;
                            }

                            if (!*(v21 + 3640))
                            {
LABEL_653:
                              v456 |= 0x4000u;
                              *(v400 + 80) = 0;
                              v472 = v1151;
                              goto LABEL_654;
                            }

                            v490 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v500 = v490;
                              v501 = os_log_type_enabled(v490, OS_LOG_TYPE_INFO);

                              v21 = 0x280D73000;
                              if (!v501)
                              {
                                goto LABEL_653;
                              }
                            }

                            v502 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v502, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2099, v1134, *(v400 + 80), v1151);

                            v21 = 0x280D73000;
                            goto LABEL_653;
                          }

                          if (v1144)
                          {
                            (v1144)(v455);
                            v21 = 0x280D73000uLL;
                          }

                          *(v400 + 84) |= 1u;
                          v458 = *(v400 + 83);
                          if (v458 > 1)
                          {
                            if (v458 == 2)
                            {
                              v455[21] = v455[21] + 1;
                              v455[18] = (v455[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v400 + 84) & 1)));
                              if (*(v21 + 3640) != 1)
                              {
                                goto LABEL_647;
                              }

                              v467 = _NRCopyLogObjectForNRUUID(v455[6]);
                              v468 = v467;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v469 = v1150;
                              }

                              else
                              {
                                v507 = os_log_type_enabled(v467, OS_LOG_TYPE_INFO);

                                v469 = v1150;
                                v21 = 0x280D73000;
                                if (!v507)
                                {
                                  goto LABEL_647;
                                }
                              }

                              v471 = _NRCopyLogObjectForNRUUID(v469[6]);
                              _NRLogWithArgs(v471, 1, "%s%.30s:%-4d source-%s: High");
                            }

                            else
                            {
                              if (v458 != 3)
                              {
                                goto LABEL_647;
                              }

                              v455[23] = v455[23] + 1;
                              v455[18] = (v455[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v400 + 84) & 1)));
                              if (*(v21 + 3640) != 1)
                              {
                                goto LABEL_647;
                              }

                              v463 = _NRCopyLogObjectForNRUUID(v455[6]);
                              v464 = v463;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v465 = v1150;
                              }

                              else
                              {
                                v506 = os_log_type_enabled(v463, OS_LOG_TYPE_INFO);

                                v465 = v1150;
                                v21 = 0x280D73000;
                                if (!v506)
                                {
                                  goto LABEL_647;
                                }
                              }

                              v471 = _NRCopyLogObjectForNRUUID(v465[6]);
                              _NRLogWithArgs(v471, 1, "%s%.30s:%-4d source-%s: Isochronous");
                            }

LABEL_646:

                            v21 = 0x280D73000uLL;
                            goto LABEL_647;
                          }

                          if (!*(v400 + 83))
                          {
                            v466 = _NRCopyLogObjectForNRUUID(v455[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v470 = v466;
                              LODWORD(v1136) = os_log_type_enabled(v466, OS_LOG_TYPE_ERROR);

                              v455 = v1150;
                              v21 = 0x280D73000;
                              if (!v1136)
                              {
                                goto LABEL_647;
                              }
                            }

                            v471 = _NRCopyLogObjectForNRUUID(v455[6]);
                            _NRLogWithArgs(v471, 16, "%s%.30s:%-4d invalid link channel priority");
                            goto LABEL_646;
                          }

                          if (v458 == 1)
                          {
                            v459 = v455[18];
                            v455[19] = v455[19] + 1;
                            v455[18] = (v459 & 0xFFFFFFFFFFFFFFFELL | *(v400 + 84) & 1);
                            if (*(v21 + 3640) == 1)
                            {
                              v460 = _NRCopyLogObjectForNRUUID(v455[6]);
                              v461 = v460;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v462 = v1150;
                                goto LABEL_698;
                              }

                              v505 = os_log_type_enabled(v460, OS_LOG_TYPE_INFO);

                              v462 = v1150;
                              v21 = 0x280D73000;
                              if (v505)
                              {
LABEL_698:
                                v471 = _NRCopyLogObjectForNRUUID(v462[6]);
                                _NRLogWithArgs(v471, 1, "%s%.30s:%-4d source-%s: Medium");
                                goto LABEL_646;
                              }
                            }
                          }

LABEL_647:
                          v456 = v408 | 0x1800;
                          if (*(v21 + 3640) != 1)
                          {
                            v457 = v1151;
                            if (v1151)
                            {
                              goto LABEL_649;
                            }

                            goto LABEL_655;
                          }

                          v481 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_685;
                          }

                          v492 = v481;
                          v493 = os_log_type_enabled(v481, OS_LOG_TYPE_INFO);

                          if (v493)
                          {
LABEL_685:
                            v494 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v494, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 2086);
                          }

                          v21 = 0x280D73000;
                          v457 = v1151;
                          if (!v1151)
                          {
                            goto LABEL_655;
                          }

                          goto LABEL_649;
                        }

                        v487 = v422;
                        v488 = _NRCopyLogObjectForNRUUID(v420[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_689;
                        }

                        v495 = v488;
                        LODWORD(v1146) = os_log_type_enabled(v488, OS_LOG_TYPE_INFO);

                        if (v1146)
                        {
LABEL_689:
                          v496 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          _NRLogWithArgs(v496, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1984, v1134, v421, v487);
                        }

                        v451 = v419;
LABEL_620:
                        v21 = 0x280D73000uLL;
                        v452 = *(v400 + 80);
                        if (*(v400 + 80))
                        {
                          goto LABEL_621;
                        }

LABEL_723:
                        v456 = v408 | 0x400;
                        if (*(v21 + 3640) != 1)
                        {
                          goto LABEL_724;
                        }

                        v783 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        v784 = v783;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_1480;
                        }

                        v976 = os_log_type_enabled(v783, OS_LOG_TYPE_INFO);

                        if (v976)
                        {
LABEL_1480:
                          v977 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          _NRLogWithArgs(v977, 1, "%s%.30s:%-4d %s: nothing to read from nexus", "", "NRBluetoothPacketParserNexusToLinkLoop", 2065, v1134);
                        }

                        v21 = 0x280D73000;
                        goto LABEL_724;
                      }

                      os_channel_slot_get_packet();
                      os_packet_get_next_buflet();
                      v423 = os_buflet_get_data_offset();
                      v424 = os_buflet_get_object_address();
                      v425 = os_buflet_get_data_length();
                      if (v425 >= 0x10000)
                      {
                        if (nrCopyLogObj_onceToken_563 == -1)
                        {
                          goto LABEL_860;
                        }

LABEL_1499:
                        dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
LABEL_860:
                        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
                        {
                          v556 = nrCopyLogObj_560();
                          _NRLogWithArgs(v556, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", "", "NRBluetoothPacketParserNexusToLinkLoop", 1997);
                        }

                        goto LABEL_863;
                      }

                      if (*(v1150 + 9) == 1)
                      {
                        v1151 = 0;
                        v1152 = 0;
                        v426 = (*v400 + *(v400 + 80));
                        v1151 = v426;
                        LODWORD(v1152) = v421;
                        v427 = *(v1150 + 14);
                        v420 = v1150;
                        if (*(v1150 + 10) == 1)
                        {
                          v428 = nrPacketTo6LoWPAN((v1154 + v427), (WORD1(v1153) - v427), &v1151, 1u, (v1150 + 86), (v1150 + 88), 0);
                        }

                        else
                        {
                          memcpy(v426, (v1154 + v427), WORD1(v1153) - v427);
                          v428 = WORD1(v1153) - *(v420 + 14);
                        }

                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_586;
                        }

                        v435 = _NRCopyLogObjectForNRUUID(v420[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v436 = v435;
                          v437 = os_log_type_enabled(v435, OS_LOG_TYPE_INFO);

                          v420 = v1150;
                          if (!v437)
                          {
                            goto LABEL_586;
                          }
                        }

                        v438 = _NRCopyLogObjectForNRUUID(v420[6]);
                        _NRLogWithArgs(v438, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2015, v1134, v428, WORD1(v1153));
                        goto LABEL_607;
                      }

                      if (!v425 && WORD1(v1153))
                      {
                        v1151 = 0;
                        v1152 = 0;
                        v1151 = *v400 + *(v400 + 80);
                        LODWORD(v1152) = v421;
                        v420 = v1150;
                        v428 = nrPacketToTLV((v1154 + *(v1150 + 14)), (WORD1(v1153) - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v429 = _NRCopyLogObjectForNRUUID(v420[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_606;
                          }

                          v440 = v429;
                          v441 = os_log_type_enabled(v429, OS_LOG_TYPE_INFO);

                          v420 = v1150;
                          if (v441)
                          {
LABEL_606:
                            v438 = _NRCopyLogObjectForNRUUID(v420[6]);
                            v442 = getESPSequenceNumberFromPacket(v1154, WORD1(v1153));
                            v443 = getESPSPIFromPacket(v1154, WORD1(v1153));
                            _NRLogWithArgs(v438, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2027, v1134, v428, v442, v443);
LABEL_607:

                            v420 = v1150;
                          }
                        }

LABEL_586:
                        v408 |= 0x80u;
                        goto LABEL_587;
                      }

                      if (v425)
                      {
                        v430 = v424 + v423;
                        v1151 = 0;
                        v1152 = 0;
                        v1151 = *v400 + *(v400 + 80);
                        LODWORD(v1152) = v421;
                        v420 = v1150;
                        v431 = v425;
                        v428 = nrPacketToTLV((v430 + *(v1150 + 14)), (v425 - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                        if (gNRPacketLoggingEnabled != 1)
                        {
LABEL_583:
                          v408 |= 0x100u;
                          goto LABEL_587;
                        }

                        v439 = _NRCopyLogObjectForNRUUID(v420[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v445 = v439;
                          LODWORD(v1146) = os_log_type_enabled(v439, OS_LOG_TYPE_INFO);

                          v420 = v1150;
                          if (!v1146)
                          {
                            goto LABEL_583;
                          }
                        }

                        v446 = _NRCopyLogObjectForNRUUID(v420[6]);
                        v1146 = getESPSequenceNumberFromPacket(v430, v431);
                        v447 = getESPSPIFromPacket(v430, v431);
                        _NRLogWithArgs(v446, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2037, v1134, v428, v1146, v447);

                        v420 = v1150;
                        goto LABEL_583;
                      }

                      v408 |= 0x200u;
                      if (gNRPacketLoggingEnabled != 1)
                      {
                        break;
                      }

                      v444 = _NRCopyLogObjectForNRUUID(v1150[6]);
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v448 = v444;
                        v449 = os_log_type_enabled(v444, OS_LOG_TYPE_INFO);

                        if (!v449)
                        {
                          break;
                        }
                      }

                      v420 = v1150;
                      v450 = _NRCopyLogObjectForNRUUID(v1150[6]);
                      _NRLogWithArgs(v450, 1, "%s%.30s:%-4d %s: No data to write", "", "NRBluetoothPacketParserNexusToLinkLoop", 2039, v1134);

                      v428 = 0;
LABEL_587:
                      *(v400 + 80) += v428;
                      if ((v1149 & 8) != 0)
                      {
                        v432 = 0;
                      }

                      else
                      {
                        v432 = os_channel_get_next_slot();
                      }

                      ++v404;
                      v420[56] = v420[56] + 1;
                      *(v420 + 19) = 1;
                      v405 += v428;
                      if (!v432)
                      {
                        v451 = 0;
                        v406 = v419;
                        goto LABEL_620;
                      }

                      v433 = *(v400 + 82);
                      if (v433 >= 0xB)
                      {
                        v433 -= 11 * ((((117 * v433) >> 8) + (((v433 - ((117 * v433) >> 8)) & 0xFE) >> 1)) >> 3);
                      }

                      *(v1148 + 4 * v433) = v408;
                      if (v433 < 0xAu)
                      {
                        v434 = v433 + 1;
                      }

                      else
                      {
                        v434 = v433 - 10;
                      }

                      *(v400 + 82) = v434;
                      v406 = v419;
                      v419 = v432;
                      v408 = 0;
                    }

                    v428 = 0;
                    v420 = v1150;
                    goto LABEL_587;
                  }

                  v412 = *(v400 + 80);
                  v413 = (0x4000 - v412);
                  v414 = (v410 - v409);
                  if (v414 >= v413)
                  {
                    v415 = (0x4000 - v412);
                  }

                  else
                  {
                    v415 = (v410 - v409);
                  }

                  memcpy((*v400 + v412), (v1141 + v409), v415);
                  v416 = *(v400 + 28);
                  v417 = *(v400 + 32) + v415;
                  *(v400 + 32) = v417;
                  if (v416 <= v417)
                  {
                    v418 = 0;
                  }

                  else
                  {
                    memmove(v411, &v411[v417], v416 - v417);
                    v418 = *(v400 + 28) - *(v400 + 32);
                  }

                  v21 = 0x280D73000uLL;
                  *(v400 + 28) = v418;
                  *(v400 + 32) = 0;
                  *(v400 + 80) += v415;
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_567:
                    v408 = v407 | 0x30;
                    v405 += v415;
                    goto LABEL_568;
                  }

                  v491 = _NRCopyLogObjectForNRUUID(v1150[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v503 = v491;
                    LODWORD(v1136) = os_log_type_enabled(v491, OS_LOG_TYPE_INFO);

                    v21 = 0x280D73000;
                    if (!v1136)
                    {
                      goto LABEL_567;
                    }
                  }

                  v504 = _NRCopyLogObjectForNRUUID(v1150[6]);
                  _NRLogWithArgs(v504, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", "", "NRBluetoothPacketParserNexusToLinkLoop", 1968, v1134, v415, v413, v414);

                  v21 = 0x280D73000;
                  goto LABEL_567;
                }

                v475 = _NRCopyLogObjectForNRUUID(v1150[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v478 = v475;
                  v479 = os_log_type_enabled(v475, OS_LOG_TYPE_INFO);

                  v21 = 0x280D73000;
                  if (!v479)
                  {
                    goto LABEL_558;
                  }
                }

                v480 = _NRCopyLogObjectForNRUUID(v1150[6]);
                _NRLogWithArgs(v480, 1, "%s%.30s:%-4d %s: starting NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1949, v1134);

                v21 = 0x280D73000;
                goto LABEL_558;
              }
            }

            v770 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v770, 1, "%s%.30s:%-4d %s: starting NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1938, v1134);

            v21 = 0x280D73000;
            goto LABEL_556;
          }

          if (*(v21 + 3640) != 1)
          {
LABEL_704:
            if (v1144)
            {
              (v1144)(v3);
            }

            v508 = *(v400 + 82);
            if (v508 >= 0xB)
            {
              v508 -= 11 * ((((117 * v508) >> 8) + (((v508 - ((117 * v508) >> 8)) & 0xFE) >> 1)) >> 3);
            }

            v509 = v508;
            *(v400 + 4 * v508 + 36) = 3;
            goto LABEL_749;
          }

          v591 = v397;
          v592 = v20;
          v593 = _NRCopyLogObjectForNRUUID(v3[6]);
          v594 = v593;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v1150;
            v20 = v592;
          }

          else
          {
            v771 = os_log_type_enabled(v593, OS_LOG_TYPE_INFO);

            v3 = v1150;
            v20 = v592;
            if (!v771)
            {
              goto LABEL_704;
            }
          }

          v772 = _NRCopyLogObjectForNRUUID(v3[6]);
          _NRLogWithArgs(v772, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", "", "NRBluetoothPacketParserNexusToLinkLoop", 1903, v591, 100);

          goto LABEL_704;
        }

        if (v8 == 1)
        {
          v29 = (v15 >> 2) & 1;
        }

        else
        {
          v29 = 0;
        }

        if ([v3[9] count] == 1 || *(v3 + 12) == 1)
        {
          if (*(v3 + 13) == 4)
          {
            goto LABEL_1397;
          }

          dispatch_assert_queue_V2(v3[8]);
          v30 = v3[29];
          v31 = v3[35];
          v32 = v3[43];
          v33 = 0x280D73000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v576 = v32;
            v577 = _NRCopyLogObjectForNRUUID(v3[6]);
            v578 = v577;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v1150;
              v32 = v576;
            }

            else
            {
              v747 = os_log_type_enabled(v577, OS_LOG_TYPE_INFO);

              v3 = v1150;
              v33 = 0x280D73000;
              v32 = v576;
              if (!v747)
              {
                goto LABEL_40;
              }
            }

            v748 = v32;
            v749 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v749, 1, "%s%.30s:%-4d starting NtL fast-path for %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1858, 102);

            v32 = v748;
            v33 = 0x280D73000;
          }

LABEL_40:
          v34 = v3[13];
          if (v34)
          {
            v35 = v34[3];
            if ((*(v35 + 84) & 1) == 0)
            {
              v1141 = v30;
              v1142 = v32;
              v36 = *(v35 + 8);
              v1143 = v1102;
              v1144 = v36;
              v37 = *(v35 + 83);
              v38 = 584;
              if (v37 == 3)
              {
                v38 = 600;
              }

              v39 = v37 == 2;
              v40 = 616;
              if (!v39)
              {
                v40 = v38;
              }

              v1145 = v40;
              if (*(v33 + 3640) != 1)
              {
                goto LABEL_47;
              }

              v753 = _NRCopyLogObjectForNRUUID(v1150[6]);
              v754 = v753;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v799 = os_log_type_enabled(v753, OS_LOG_TYPE_INFO);

                v33 = 0x280D73000;
                if (!v799)
                {
LABEL_47:
                  LODWORD(v1148) = 0;
                  v41 = 0;
                  v42 = 0;
                  v43 = 0;
                  v44 = 0;
                  v1146 = 0;
                  v1149 = (v35 + 36);
                  v1155 = 0u;
                  v1156 = 0u;
                  v45 = 9;
                  v1153 = 0u;
                  v1154 = 0u;
LABEL_48:
                  if (*(v33 + 3640) == 1)
                  {
                    v118 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v122 = v43;
                      v123 = v118;
                      v124 = os_log_type_enabled(v118, OS_LOG_TYPE_INFO);

                      v43 = v122;
                      v33 = 0x280D73000;
                      if (!v124)
                      {
                        goto LABEL_49;
                      }
                    }

                    v125 = v43;
                    v126 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    _NRLogWithArgs(v126, 1, "%s%.30s:%-4d %s: starting NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1949, "Medium");

                    v43 = v125;
                    v33 = 0x280D73000;
                  }

LABEL_49:
                  v47 = *(v35 + 28);
                  v46 = *(v35 + 32);
                  if (v47 <= v46)
                  {
                    v57 = v45 | 0x10;
                    if (!v31)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_60;
                  }

                  LODWORD(v1147) = v45;
                  v48 = v43;
                  v49 = *(v35 + 80);
                  v50 = (0x4000 - v49);
                  v51 = (v47 - v46);
                  if (v51 >= v50)
                  {
                    v52 = (0x4000 - v49);
                  }

                  else
                  {
                    v52 = (v47 - v46);
                  }

                  v53 = v1144;
                  memcpy((*v35 + v49), &v1144[v46], v52);
                  v54 = *(v35 + 28);
                  v55 = *(v35 + 32) + v52;
                  *(v35 + 32) = v55;
                  if (v54 <= v55)
                  {
                    v56 = 0;
                  }

                  else
                  {
                    memmove(v53, &v53[v55], v54 - v55);
                    v56 = *(v35 + 28) - *(v35 + 32);
                  }

                  v33 = 0x280D73000uLL;
                  *(v35 + 28) = v56;
                  *(v35 + 32) = 0;
                  *(v35 + 80) += v52;
                  v43 = v48;
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v121 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v144 = v121;
                      LODWORD(v1140) = os_log_type_enabled(v121, OS_LOG_TYPE_INFO);

                      v43 = v48;
                      v33 = 0x280D73000;
                      if (!v1140)
                      {
                        goto LABEL_59;
                      }
                    }

                    v145 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    _NRLogWithArgs(v145, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", "", "NRBluetoothPacketParserNexusToLinkLoop", 1968, "Medium", v52, v50, v51);

                    v43 = v48;
                    v33 = 0x280D73000;
                  }

LABEL_59:
                  v57 = v1147 | 0x30;
                  v42 += v52;
                  if (!v31)
                  {
LABEL_61:
                    if (!v43)
                    {
                      goto LABEL_106;
                    }

                    v58 = v43;
                    while (1)
                    {
                      v59 = 0x4000 - *(v35 + 80);
                      v60 = nrMaxTLVLengthForPacket(v1154 + *(v1150 + 14), (WORD1(v1153) - *(v1150 + 14)));
                      if (v59 < v60)
                      {
                        v57 |= 0x40u;
                        v33 = 0x280D73000uLL;
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          v43 = v58;
                          goto LABEL_106;
                        }

                        v138 = v60;
                        v139 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_179;
                        }

                        v148 = v139;
                        LODWORD(v1147) = os_log_type_enabled(v139, OS_LOG_TYPE_INFO);

                        if (v1147)
                        {
LABEL_179:
                          v149 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          _NRLogWithArgs(v149, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1984, "Medium", v59, v138);

                          v43 = v58;
                        }

                        else
                        {
                          v43 = v58;
                        }

LABEL_105:
                        v33 = 0x280D73000uLL;
LABEL_106:
                        v92 = *(v35 + 80);
                        if (*(v35 + 80))
                        {
                          v1151 = 0;
                          v93 = v33;
                          if (*(v33 + 3640) != 1)
                          {
                            goto LABEL_108;
                          }

                          v119 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v93 = 0x280D73000;
                            goto LABEL_163;
                          }

                          v129 = v43;
                          v130 = v119;
                          v131 = os_log_type_enabled(v119, OS_LOG_TYPE_INFO);

                          v43 = v129;
                          v93 = 0x280D73000;
                          if (v131)
                          {
LABEL_163:
                            v132 = v43;
                            v133 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v133, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2075, "Medium", *(v35 + 80));

                            v43 = v132;
                          }

LABEL_108:
                          v94 = (*(v1150[13] + 1))(*v1150[13], *v35, *(v35 + 80), &v1151, 0, 0);
                          v33 = v93;
                          if (*(v93 + 3640) == 1)
                          {
                            v120 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v134 = v43;
                              v135 = v120;
                              LODWORD(v1147) = os_log_type_enabled(v120, OS_LOG_TYPE_INFO);

                              v43 = v134;
                              v33 = 0x280D73000;
                              if (!v1147)
                              {
                                goto LABEL_109;
                              }
                            }

                            v136 = v43;
                            v137 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v137, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2078, "Medium", v94, v1151, *(v35 + 80));

                            v43 = v136;
                            v33 = 0x280D73000;
                          }

LABEL_109:
                          if (v94)
                          {
                            v95 = v57 | 0x800;
                            v96 = v1151;
                            if (!v1151)
                            {
                              goto LABEL_143;
                            }

LABEL_137:
                            if (v96 < *(v35 + 80))
                            {
                              if (!*(v33 + 3640))
                              {
                                goto LABEL_139;
                              }

                              v140 = v43;
                              v141 = _NRCopyLogObjectForNRUUID(v1150[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_183;
                              }

                              v152 = v141;
                              LODWORD(v1147) = os_log_type_enabled(v141, OS_LOG_TYPE_INFO);

                              v43 = v140;
                              if (v1147)
                              {
LABEL_183:
                                v153 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v153, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2092, "Medium", *(v35 + 80), v1151);

                                v43 = v140;
                              }

LABEL_139:
                              v95 |= 0x2000u;
                              memmove(*v35, (*v35 + v1151), *(v35 + 80) - v1151);
                              v115 = v1151;
                              *(v35 + 80) -= v1151;
                              v1146 = (v1146 + 1);
                              v33 = 0x280D73000;
LABEL_142:
                              *(v1150 + v1145) = *(v1150 + v1145) + v115;
LABEL_143:
                              LODWORD(v1148) = v1148 + 1;
                              if (v94)
                              {
                                v116 = *(v35 + 82);
                                if (v116 >= 0xB)
                                {
                                  v116 -= 11 * ((((117 * v116) >> 8) + (((v116 - ((117 * v116) >> 8)) & 0xFE) >> 1)) >> 3);
                                }

                                v45 = 0;
                                *(v1149 + v116) = v95;
                                if (v116 < 0xAu)
                                {
                                  v117 = v116 + 1;
                                }

                                else
                                {
                                  v117 = v116 - 10;
                                }

                                *(v35 + 82) = v117;
                                goto LABEL_48;
                              }

LABEL_734:
                              v521 = v95 | 0x8000;
                              if (*(v33 + 3640) == 1)
                              {
                                v758 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                v759 = v758;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v808 = os_log_type_enabled(v758, OS_LOG_TYPE_INFO);

                                  v33 = 0x280D73000;
                                  if (!v808)
                                  {
                                    goto LABEL_735;
                                  }
                                }

                                v809 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v809, 1, "%s%.30s:%-4d %s: out of NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2110, "Medium");

                                v33 = 0x280D73000;
                              }

LABEL_735:
                              if (v44)
                              {
                                os_channel_advance_slot();
                                v33 = 0x280D73000;
                                *(v1150 + 18) = 1;
LABEL_767:
                                v533 = v1148;
                                if (v1148 > 8u || v31 && (v534 = os_channel_available_slot_count(), v33 = 0x280D73000uLL, v534 <= 1))
                                {
                                  v521 = v95 | 0x18000;
                                  if (*(v33 + 3640) != 1)
                                  {
                                    goto LABEL_771;
                                  }

                                  v804 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  v805 = v804;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    goto LABEL_1488;
                                  }

                                  v982 = os_log_type_enabled(v804, OS_LOG_TYPE_INFO);

                                  if (v982)
                                  {
LABEL_1488:
                                    v983 = v1150;
                                    v984 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                    _NRLogWithArgs(v984, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2123, "Medium", v41, v42, v533, v983[54] * 0.000001, v92 == 0, v1146);
                                  }

LABEL_771:
                                  os_channel_sync();
                                  *(v1150 + 18) = 0;
                                  v33 = 0x280D73000uLL;
                                }
                              }

                              else if (*(v1150 + 18))
                              {
                                goto LABEL_767;
                              }

                              if (*(v33 + 3640) == 1)
                              {
                                v760 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                v761 = v760;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v810 = os_log_type_enabled(v760, OS_LOG_TYPE_INFO);

                                  v33 = 0x280D73000;
                                  if (!v810)
                                  {
                                    goto LABEL_773;
                                  }
                                }

                                v811 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v811, 1, "%s%.30s:%-4d %s: out of NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2134, "Medium");

                                v33 = 0x280D73000;
                              }

LABEL_773:
                              v32 = v1142;
                              if (v92)
                              {
                                goto LABEL_813;
                              }

                              v535 = v1150[18];
                              if ((*(v1150 + 15) & 4) == 0)
                              {
                                if ((v535 & 8) != 0 && v1150[39])
                                {
                                  v536 = v1142;
                                  v537 = v1150;
                                  v1150[18] = (v535 & 0xFFFFFFFFFFFFFFF7);
                                  if (*(v33 + 3640) != 1)
                                  {
                                    goto LABEL_778;
                                  }

                                  v1017 = _NRCopyLogObjectForNRUUID(v537[6]);
                                  v1018 = v1017;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v537 = v1150;
                                    v536 = v1142;
                                    goto LABEL_1561;
                                  }

                                  v1055 = os_log_type_enabled(v1017, OS_LOG_TYPE_INFO);

                                  v537 = v1150;
                                  v536 = v1142;
                                  if (v1055)
                                  {
LABEL_1561:
                                    v1056 = _NRCopyLogObjectForNRUUID(v537[6]);
                                    _NRLogWithArgs(v1056, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);
                                  }

LABEL_778:
                                  dispatch_resume(v537[39]);
                                  v535 = v537[18];
                                  v33 = 0x280D73000uLL;
                                  v32 = v536;
                                }

                                if ((v535 & 0x10) != 0)
                                {
                                  v538 = v1150;
                                  if (v1150[41])
                                  {
                                    v539 = v32;
                                    v1150[18] = (v535 & 0xFFFFFFFFFFFFFFEFLL);
                                    if (*(v33 + 3640) != 1)
                                    {
                                      goto LABEL_782;
                                    }

                                    v1019 = _NRCopyLogObjectForNRUUID(v538[6]);
                                    v1020 = v1019;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v538 = v1150;
                                      v539 = v1142;
                                      goto LABEL_1563;
                                    }

                                    v1057 = os_log_type_enabled(v1019, OS_LOG_TYPE_INFO);

                                    v538 = v1150;
                                    v539 = v1142;
                                    if (v1057)
                                    {
LABEL_1563:
                                      v1058 = _NRCopyLogObjectForNRUUID(v538[6]);
                                      _NRLogWithArgs(v1058, 1, "%s%.30s:%-4d source-resume: NexusVIInput", "", "NRBluetoothPacketParserResumeNexusVIInputSource", 491);
                                    }

LABEL_782:
                                    dispatch_resume(v538[41]);
                                    v535 = v538[18];
                                    v33 = 0x280D73000;
                                    v32 = v539;
                                  }
                                }

                                if ((v535 & 0x20) != 0)
                                {
                                  v540 = v1150;
                                  if (v1150[43])
                                  {
                                    v541 = v32;
                                    v542 = v535 & 0xFFFFFFFFFFFFFFDFLL;
                                    goto LABEL_806;
                                  }
                                }

LABEL_808:
                                if ((v535 & 0x40) != 0 && v1150[45])
                                {
                                  v549 = (v1150 + 45);
                                  v1150[18] = (v535 & 0xFFFFFFFFFFFFFFBFLL);
                                  if (*(v33 + 3640) != 1)
                                  {
                                    v550 = v32;
                                    goto LABEL_812;
                                  }

                                  v1001 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  v1002 = v1001;
                                  if (sNRCopyLogToStdErr)
                                  {

                                    v550 = v1142;
                                    goto LABEL_1531;
                                  }

                                  v1025 = os_log_type_enabled(v1001, OS_LOG_TYPE_INFO);

                                  v550 = v1142;
                                  if (v1025)
                                  {
LABEL_1531:
                                    v1026 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                    _NRLogWithArgs(v1026, 1, "%s%.30s:%-4d source-resume: NexusBKInput", "", "NRBluetoothPacketParserResumeNexusBKInputSource", 493);
                                  }

LABEL_812:
                                  dispatch_resume(*v549);
                                  v33 = 0x280D73000uLL;
                                  v32 = v550;
                                }

LABEL_813:
                                v551 = v521 | 0x60000;
                                if (*(v33 + 3640) == 1)
                                {
                                  v762 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  v763 = v762;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v32 = v1142;
                                  }

                                  else
                                  {
                                    v812 = os_log_type_enabled(v762, OS_LOG_TYPE_INFO);

                                    v32 = v1142;
                                    if (!v812)
                                    {
                                      goto LABEL_814;
                                    }
                                  }

                                  v813 = v32;
                                  v814 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                  _NRLogWithArgs(v814, 1, "%s%.30s:%-4d %s: done with NtL fast-path", "", "NRBluetoothPacketParserNexusToLinkLoop", 2168, "Medium");

                                  v32 = v813;
                                }

LABEL_814:
                                v512 = *(v35 + 82);
                                v3 = v1150;
                                if (v512 >= 0xB)
                                {
                                  v512 -= 11 * ((((117 * v512) >> 8) + (((v512 - ((117 * v512) >> 8)) & 0xFE) >> 1)) >> 3);
                                }

                                v513 = v512;
                                *(v1149 + v512) = v551;
LABEL_817:
                                if (v513 < 0xA)
                                {
                                  v552 = v512 + 1;
                                }

                                else
                                {
                                  v552 = v512 - 10;
                                }

                                *(v35 + 82) = v552;
                                goto LABEL_821;
                              }

                              if ((v535 & 0x20) == 0 || !v1150[43])
                              {
                                goto LABEL_808;
                              }

                              v541 = v1142;
                              v542 = v535 & 0xFFFFFFFFFFFFFFDFLL;
                              v540 = v1150;
LABEL_806:
                              v540[18] = v542;
                              if (*(v33 + 3640) != 1)
                              {
LABEL_807:
                                dispatch_resume(v540[43]);
                                v535 = v540[18];
                                v33 = 0x280D73000uLL;
                                v32 = v541;
                                goto LABEL_808;
                              }

                              v1003 = _NRCopyLogObjectForNRUUID(v540[6]);
                              v1004 = v1003;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v540 = v1150;
                                v541 = v1142;
                              }

                              else
                              {
                                v1027 = os_log_type_enabled(v1003, OS_LOG_TYPE_INFO);

                                v540 = v1150;
                                v541 = v1142;
                                if (!v1027)
                                {
                                  goto LABEL_807;
                                }
                              }

                              v1028 = _NRCopyLogObjectForNRUUID(v540[6]);
                              _NRLogWithArgs(v1028, 1, "%s%.30s:%-4d source-resume: NexusBEInput", "", "NRBluetoothPacketParserResumeNexusBEInputSource", 487);

                              goto LABEL_807;
                            }

                            if (!*(v33 + 3640))
                            {
LABEL_141:
                              v95 |= 0x4000u;
                              *(v35 + 80) = 0;
                              v115 = v1151;
                              goto LABEL_142;
                            }

                            v142 = v43;
                            v143 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v154 = v143;
                              LODWORD(v1147) = os_log_type_enabled(v143, OS_LOG_TYPE_INFO);

                              v33 = 0x280D73000;
                              v43 = v142;
                              if (!v1147)
                              {
                                goto LABEL_141;
                              }
                            }

                            v155 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v155, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2099, "Medium", *(v35 + 80), v1151);

                            v43 = v142;
                            v33 = 0x280D73000;
                            goto LABEL_141;
                          }

                          v97 = v1150;
                          v98 = v1150[18];
                          if ((v98 & 0x20) == 0 && v1150[43])
                          {
                            v1150[18] = (v98 | 0x20);
                            if (*(v33 + 3640) != 1)
                            {
                              goto LABEL_115;
                            }

                            v1147 = v43;
                            v150 = _NRCopyLogObjectForNRUUID(v97[6]);
                            v151 = v150;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v97 = v1150;
                              goto LABEL_188;
                            }

                            LODWORD(v1140) = os_log_type_enabled(v150, OS_LOG_TYPE_INFO);

                            v97 = v1150;
                            v43 = v1147;
                            if (v1140)
                            {
LABEL_188:
                              v156 = _NRCopyLogObjectForNRUUID(v97[6]);
                              _NRLogWithArgs(v156, 1, "%s%.30s:%-4d source-suspend: NexusBEInput", "", "NRBluetoothPacketParserSuspendNexusBEInputSource", 477);

                              v43 = v1147;
                            }

LABEL_115:
                            dispatch_suspend(v97[43]);
                            v33 = 0x280D73000uLL;
                          }

                          *(v35 + 84) |= 1u;
                          v99 = *(v35 + 83);
                          if (v99 > 1)
                          {
                            if (v99 == 2)
                            {
                              v109 = v1150;
                              v1150[21] = v1150[21] + 1;
                              v109[18] = (v109[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v35 + 84) & 1)));
                              if (*(v33 + 3640) != 1)
                              {
                                goto LABEL_135;
                              }

                              v102 = v43;
                              v110 = _NRCopyLogObjectForNRUUID(v1150[6]);
                              v111 = v110;
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                LODWORD(v1147) = os_log_type_enabled(v110, OS_LOG_TYPE_INFO);

                                v33 = 0x280D73000;
                                v43 = v102;
                                if (!v1147)
                                {
                                  goto LABEL_135;
                                }
                              }

                              v114 = _NRCopyLogObjectForNRUUID(v1150[6]);
                              _NRLogWithArgs(v114, 1, "%s%.30s:%-4d source-%s: High");
                            }

                            else
                            {
                              if (v99 != 3)
                              {
                                goto LABEL_135;
                              }

                              v105 = v1150;
                              v1150[23] = v1150[23] + 1;
                              v105[18] = (v105[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v35 + 84) & 1)));
                              if (*(v33 + 3640) != 1)
                              {
                                goto LABEL_135;
                              }

                              v102 = v43;
                              v106 = _NRCopyLogObjectForNRUUID(v1150[6]);
                              v107 = v106;
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                LODWORD(v1147) = os_log_type_enabled(v106, OS_LOG_TYPE_INFO);

                                v33 = 0x280D73000;
                                v43 = v102;
                                if (!v1147)
                                {
                                  goto LABEL_135;
                                }
                              }

                              v114 = _NRCopyLogObjectForNRUUID(v1150[6]);
                              _NRLogWithArgs(v114, 1, "%s%.30s:%-4d source-%s: Isochronous");
                            }

LABEL_134:

                            v33 = 0x280D73000uLL;
                            v43 = v102;
                            goto LABEL_135;
                          }

                          if (!*(v35 + 83))
                          {
                            v108 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v112 = v43;
                              v113 = v108;
                              LODWORD(v1147) = os_log_type_enabled(v108, OS_LOG_TYPE_ERROR);

                              v43 = v112;
                              v33 = 0x280D73000;
                              if (!v1147)
                              {
                                goto LABEL_135;
                              }
                            }

                            v102 = v43;
                            v114 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v114, 16, "%s%.30s:%-4d invalid link channel priority");
                            goto LABEL_134;
                          }

                          if (v99 == 1)
                          {
                            v100 = v1150;
                            v101 = v1150[18];
                            v1150[19] = v1150[19] + 1;
                            v100[18] = (v101 & 0xFFFFFFFFFFFFFFFELL | *(v35 + 84) & 1);
                            if (*(v33 + 3640) == 1)
                            {
                              v102 = v43;
                              v103 = _NRCopyLogObjectForNRUUID(v1150[6]);
                              v104 = v103;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_190;
                              }

                              LODWORD(v1147) = os_log_type_enabled(v103, OS_LOG_TYPE_INFO);

                              v33 = 0x280D73000;
                              v43 = v102;
                              if (v1147)
                              {
LABEL_190:
                                v114 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v114, 1, "%s%.30s:%-4d source-%s: Medium");
                                goto LABEL_134;
                              }
                            }
                          }

LABEL_135:
                          v95 = v57 | 0x1800;
                          if (*(v33 + 3640) != 1)
                          {
                            v96 = v1151;
                            if (v1151)
                            {
                              goto LABEL_137;
                            }

                            goto LABEL_143;
                          }

                          v127 = v43;
                          v128 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_175;
                          }

                          v146 = v128;
                          LODWORD(v1147) = os_log_type_enabled(v128, OS_LOG_TYPE_INFO);

                          if (v1147)
                          {
LABEL_175:
                            v147 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v147, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 2086);
                          }

                          v33 = 0x280D73000;
                          v43 = v127;
                          v96 = v1151;
                          if (!v1151)
                          {
                            goto LABEL_143;
                          }

                          goto LABEL_137;
                        }

                        v95 = v57 | 0x400;
                        if (*(v33 + 3640) != 1)
                        {
                          goto LABEL_734;
                        }

                        v806 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        v807 = v806;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_1490;
                        }

                        v985 = os_log_type_enabled(v806, OS_LOG_TYPE_INFO);

                        if (v985)
                        {
LABEL_1490:
                          v986 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          _NRLogWithArgs(v986, 1, "%s%.30s:%-4d %s: nothing to read from nexus", "", "NRBluetoothPacketParserNexusToLinkLoop", 2065, "Medium");
                        }

                        v33 = 0x280D73000;
                        goto LABEL_734;
                      }

                      os_channel_slot_get_packet();
                      os_packet_get_next_buflet();
                      v61 = os_buflet_get_data_offset();
                      v62 = os_buflet_get_object_address();
                      v63 = os_buflet_get_data_length();
                      if (v63 >= 0x10000)
                      {
                        if (nrCopyLogObj_onceToken_563 != -1)
                        {
                          goto LABEL_1499;
                        }

                        goto LABEL_860;
                      }

                      v64 = v1150;
                      if (*(v1150 + 9) == 1)
                      {
                        v1151 = 0;
                        v1152 = 0;
                        v65 = (*v35 + *(v35 + 80));
                        v1151 = v65;
                        LODWORD(v1152) = v59;
                        v66 = *(v1150 + 14);
                        if (*(v1150 + 10) == 1)
                        {
                          v67 = nrPacketTo6LoWPAN((v1154 + v66), (WORD1(v1153) - v66), &v1151, 1u, (v1150 + 86), (v1150 + 88), 0);
                        }

                        else
                        {
                          memcpy(v65, (v1154 + v66), WORD1(v1153) - v66);
                          v67 = WORD1(v1153) - *(v64 + 14);
                        }

                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_78;
                        }

                        v75 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v76 = v75;
                          v77 = os_log_type_enabled(v75, OS_LOG_TYPE_INFO);

                          if (!v77)
                          {
                            goto LABEL_78;
                          }
                        }

                        v78 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        _NRLogWithArgs(v78, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2015, "Medium", v67, WORD1(v1153));

                        goto LABEL_78;
                      }

                      if (!v63 && WORD1(v1153))
                      {
                        v1151 = 0;
                        v1152 = 0;
                        v1151 = *v35 + *(v35 + 80);
                        LODWORD(v1152) = v59;
                        v67 = nrPacketToTLV((v1154 + *(v1150 + 14)), (WORD1(v1153) - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v68 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_95;
                          }

                          v80 = v68;
                          v81 = os_log_type_enabled(v68, OS_LOG_TYPE_INFO);

                          if (v81)
                          {
LABEL_95:
                            v82 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            v83 = getESPSequenceNumberFromPacket(v1154, WORD1(v1153));
                            v84 = getESPSPIFromPacket(v1154, WORD1(v1153));
                            _NRLogWithArgs(v82, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2027, "Medium", v67, v83, v84);
                          }
                        }

LABEL_78:
                        v57 |= 0x80u;
                        goto LABEL_79;
                      }

                      if (v63)
                      {
                        v69 = v62 + v61;
                        v1151 = 0;
                        v1152 = 0;
                        v1151 = *v35 + *(v35 + 80);
                        LODWORD(v1152) = v59;
                        v70 = v63;
                        v67 = nrPacketToTLV((v69 + *(v1150 + 14)), (v63 - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                        if (gNRPacketLoggingEnabled != 1)
                        {
LABEL_75:
                          v57 |= 0x100u;
                          goto LABEL_79;
                        }

                        v79 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v86 = v79;
                          LODWORD(v1147) = os_log_type_enabled(v79, OS_LOG_TYPE_INFO);

                          if (!v1147)
                          {
                            goto LABEL_75;
                          }
                        }

                        v87 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        v1147 = getESPSequenceNumberFromPacket(v69, v70);
                        v88 = getESPSPIFromPacket(v69, v70);
                        _NRLogWithArgs(v87, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2037, "Medium", v67, v1147, v88);

                        goto LABEL_75;
                      }

                      v57 |= 0x200u;
                      if (gNRPacketLoggingEnabled == 1)
                      {
                        v85 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

LABEL_101:
                          v91 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          _NRLogWithArgs(v91, 1, "%s%.30s:%-4d %s: No data to write", "", "NRBluetoothPacketParserNexusToLinkLoop", 2039, "Medium");

                          goto LABEL_87;
                        }

                        v89 = v85;
                        v90 = os_log_type_enabled(v85, OS_LOG_TYPE_INFO);

                        if (v90)
                        {
                          goto LABEL_101;
                        }
                      }

LABEL_87:
                      v67 = 0;
LABEL_79:
                      *(v35 + 80) += v67;
                      v71 = os_channel_get_next_slot();
                      ++v41;
                      v72 = v1150;
                      v1150[60] = v1150[60] + 1;
                      *(v72 + 21) = 1;
                      v42 += v67;
                      if (!v71)
                      {
                        v43 = 0;
                        v44 = v58;
                        goto LABEL_105;
                      }

                      v73 = *(v35 + 82);
                      if (v73 >= 0xB)
                      {
                        v73 -= 11 * ((((117 * v73) >> 8) + (((v73 - ((117 * v73) >> 8)) & 0xFE) >> 1)) >> 3);
                      }

                      *(v1149 + v73) = v57;
                      if (v73 < 0xAu)
                      {
                        v74 = v73 + 1;
                      }

                      else
                      {
                        v74 = v73 - 10;
                      }

                      *(v35 + 82) = v74;
                      v44 = v58;
                      v58 = v71;
                      v57 = 0;
                    }
                  }

LABEL_60:
                  v43 = os_channel_get_next_slot();
                  v33 = 0x280D73000;
                  goto LABEL_61;
                }
              }

              v800 = _NRCopyLogObjectForNRUUID(v1150[6]);
              _NRLogWithArgs(v800, 1, "%s%.30s:%-4d %s: starting NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1938, "Medium");

              v33 = 0x280D73000;
              goto LABEL_47;
            }

            if (*(v33 + 3640) != 1)
            {
LABEL_710:
              v510 = v3[18];
              if ((v510 & 0x20) != 0 || !v3[43])
              {
                goto LABEL_714;
              }

              v511 = v32;
              v3[18] = (v510 | 0x20);
              if (*(v33 + 3640) != 1)
              {
LABEL_713:
                dispatch_suspend(v3[43]);
                v32 = v511;
LABEL_714:
                v512 = *(v35 + 82);
                if (v512 >= 0xB)
                {
                  v512 -= 11 * ((((117 * v512) >> 8) + (((v512 - ((117 * v512) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                v513 = v512;
                *(v35 + 4 * v512 + 36) = 3;
                goto LABEL_817;
              }

              v978 = _NRCopyLogObjectForNRUUID(v3[6]);
              v979 = v978;
              if (sNRCopyLogToStdErr == 1)
              {

                v3 = v1150;
              }

              else
              {
                v997 = os_log_type_enabled(v978, OS_LOG_TYPE_INFO);

                v3 = v1150;
                if (!v997)
                {
                  goto LABEL_713;
                }
              }

              v998 = _NRCopyLogObjectForNRUUID(v3[6]);
              _NRLogWithArgs(v998, 1, "%s%.30s:%-4d source-suspend: NexusBEInput", "", "NRBluetoothPacketParserSuspendNexusBEInputSource", 477);

              goto LABEL_713;
            }

            v755 = v32;
            v756 = _NRCopyLogObjectForNRUUID(v3[6]);
            v757 = v756;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v1150;
              v32 = v755;
            }

            else
            {
              v801 = os_log_type_enabled(v756, OS_LOG_TYPE_INFO);

              v3 = v1150;
              v33 = 0x280D73000;
              v32 = v755;
              if (!v801)
              {
                goto LABEL_710;
              }
            }

            v802 = v32;
            v803 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v803, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", "", "NRBluetoothPacketParserNexusToLinkLoop", 1903, "Medium", 102);

            v32 = v802;
            v33 = 0x280D73000;
            goto LABEL_710;
          }

          v579 = v32;
          if (*(v33 + 3640) == 1)
          {
            v1090 = _NRCopyLogObjectForNRUUID(v1150[6]);
            v1091 = v1090;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v1098 = os_log_type_enabled(v1090, OS_LOG_TYPE_INFO);

              if (!v1098)
              {
                goto LABEL_890;
              }
            }

            v1099 = _NRCopyLogObjectForNRUUID(v1150[6]);
            _NRLogWithArgs(v1099, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 1923);
          }

LABEL_890:
          v580 = _NRCopyLogObjectForNRUUID(v1150[6]);
          v581 = v580;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v1150;
            v32 = v579;
          }

          else
          {
            v750 = os_log_type_enabled(v580, OS_LOG_TYPE_FAULT);

            v3 = v1150;
            v32 = v579;
            if (!v750)
            {
              goto LABEL_821;
            }
          }

          v751 = v32;
          v752 = _NRCopyLogObjectForNRUUID(v3[6]);
          _NRLogWithArgs(v752, 17, "%s: Invalid write context for nexus priority: %u", "Medium", 102);

          v32 = v751;
LABEL_821:

          goto LABEL_1397;
        }

        v173 = 0;
        v174 = &NRParserLinkWriteAvailable_priorityArrayFull;
        if (v29)
        {
          v174 = &NRParserLinkWriteAvailable_priorityArrayForMedium;
        }

        v1134 = v174;
        if (v29)
        {
          v175 = 26;
        }

        else
        {
          v175 = 25;
        }

        if (v29)
        {
          v176 = 2;
        }

        else
        {
          v176 = 4;
        }

        v177 = *(v3 + v175) & (v176 - 1);
        v1104 = v175;
        *(v3 + v175) = v177;
        v178 = v176 + 127;
        v1121 = (v3 + 30);
        v1120 = (v3 + 37);
        v1124 = v3 + 45;
        v1119 = (v3 + 62);
        v1118 = v3 + 22;
        v1117 = (v3 + 29);
        v1116 = (v3 + 35);
        v1122 = v3 + 43;
        v1115 = (v3 + 60);
        v1114 = v3 + 21;
        v1113 = (v3 + 28);
        v1112 = (v3 + 33);
        v1123 = v3 + 41;
        v1111 = (v3 + 58);
        v1110 = v3 + 20;
        v1109 = (v3 + 27);
        v1108 = (v3 + 31);
        v1125 = v3 + 39;
        v1107 = (v3 + 56);
        v1106 = v3 + 19;
        v1105 = (v3 + 15);
        v1126 = (v3 + 13);
        v1128 = (v3 + 17);
        v1130 = v16;
        v1133 = v176;
        v1132 = v176 + 127;
        while (1)
        {
          v181 = v177 & v178;
          if (*(v3 + 13) != 4)
          {
            break;
          }

LABEL_232:
          v177 = v181 + 1;
          if (++v173 == v176)
          {
            ++*(v3 + v1104);
            goto LABEL_1397;
          }
        }

        v1137 = v1102;
        LODWORD(v1136) = v177 & v178;
        v182 = v1134[v181];
        dispatch_assert_queue_V2(v3[8]);
        v1142 = 0;
        v183 = 0;
        if (v182 > 101)
        {
          v184 = 0x280D73000;
          if (v182 == 102)
          {
            v183 = 0;
            v185 = 0;
            v1142 = NRBluetoothPacketParserSuspendNexusBEInputSource;
            v190 = v1117;
            v191 = v1116;
            v192 = v1122;
            v1146 = v1114;
            v193 = &v1148;
          }

          else
          {
            v185 = 0;
            v186 = v1142;
            v1146 = v1142;
            v187 = v1142;
            v188 = v1142;
            v189 = v1142;
            if (v182 != 103)
            {
              goto LABEL_244;
            }

            v183 = 0;
            v185 = 0;
            v1142 = NRBluetoothPacketParserSuspendNexusBKInputSource;
            v190 = v1121;
            v191 = v1120;
            v192 = v1124;
            v1146 = v1118;
            v193 = &v1152;
          }
        }

        else
        {
          v184 = 0x280D73000;
          if (v182 == 100)
          {
            v183 = 1;
            v190 = v1109;
            v191 = v1108;
            v192 = v1125;
            v185 = 1;
            v1142 = NRBluetoothPacketParserSuspendNexusVOInputSource;
            v1146 = v1106;
            v193 = &v1140;
          }

          else
          {
            v185 = 0;
            v186 = v1142;
            v1146 = v1142;
            v187 = v1142;
            v188 = v1142;
            v189 = v1142;
            if (v182 != 101)
            {
              goto LABEL_244;
            }

            v185 = 0;
            v1142 = NRBluetoothPacketParserSuspendNexusVIInputSource;
            v183 = 1;
            v190 = v1113;
            v191 = v1112;
            v192 = v1123;
            v1146 = v1110;
            v193 = &v1144;
          }
        }

        v187 = *(v193 - 32);
        v186 = *v190;
        v189 = *v191;
        v188 = *v192;
        v184 = 0x280D73000uLL;
LABEL_244:
        v1149 = v189;
        v1135 = v186;
        if (*(v184 + 3640) != 1)
        {
LABEL_245:
          v194 = *v16;
          LODWORD(v1148) = *&v185 & ((*v16 & 8) >> 3);
          if (v1148)
          {
            v195 = 3;
            v196 = v1128;
            v197 = "Isochronous";
            goto LABEL_263;
          }

          if (!v183)
          {
            goto LABEL_261;
          }

          if ((v194 & 4) != 0)
          {
            v196 = v1105;
LABEL_262:
            v195 = 2;
            v197 = "High";
LABEL_263:
            v201 = *v196;
            v1138 = v188;
            if (v201)
            {
              v202 = *(v201 + 24);
              if ((*(v202 + 84) & 1) == 0)
              {
                v1143 = v196;
                v1129 = v195;
                v1127 = v197;
                v203 = *(v202 + 8);
                v204 = *(v202 + 83);
                v205 = 584;
                if (v204 == 3)
                {
                  v205 = 600;
                }

                v39 = v204 == 2;
                v206 = 616;
                if (!v39)
                {
                  v206 = v205;
                }

                v1140 = v206;
                v207 = v1149;
                if (*(v184 + 3640) != 1)
                {
                  goto LABEL_270;
                }

                v336 = _NRCopyLogObjectForNRUUID(v3[6]);
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_498;
                }

                v342 = v336;
                v343 = os_log_type_enabled(v336, OS_LOG_TYPE_INFO);

                v184 = 0x280D73000;
                if (v343)
                {
LABEL_498:
                  v344 = _NRCopyLogObjectForNRUUID(v3[6]);
                  _NRLogWithArgs(v344, 1, "%s%.30s:%-4d %s: starting NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1938, v1127);

                  v184 = 0x280D73000;
                }

LABEL_270:
                v1139 = v203;
                v1131 = v173;
                LODWORD(v1145) = 0;
                v208 = 0;
                v209 = 0;
                v1144 = 0;
                v210 = 0;
                v1141 = 0;
                v1155 = 0u;
                v1156 = 0u;
                v1147 = v202 + 36;
                v1153 = 0u;
                v1154 = 0u;
                v211 = 9;
                while (2)
                {
                  if (*(v184 + 3640) == 1)
                  {
                    v277 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v280 = v277;
                      v281 = os_log_type_enabled(v277, OS_LOG_TYPE_INFO);

                      v184 = 0x280D73000;
                      if (!v281)
                      {
                        goto LABEL_272;
                      }
                    }

                    v282 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    _NRLogWithArgs(v282, 1, "%s%.30s:%-4d %s: starting NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1949, v1127);

                    v184 = 0x280D73000;
                  }

LABEL_272:
                  v212 = v211 | 0x10;
                  if ((v1148 & 1) == 0)
                  {
                    v214 = *(v202 + 28);
                    v213 = *(v202 + 32);
                    if (v214 > v213)
                    {
                      v215 = *(v202 + 80);
                      v216 = (0x4000 - v215);
                      v217 = (v214 - v213);
                      if (v217 >= v216)
                      {
                        v218 = (0x4000 - v215);
                      }

                      else
                      {
                        v218 = (v214 - v213);
                      }

                      v219 = v1139;
                      memcpy((*v202 + v215), &v1139[v213], v218);
                      v220 = *(v202 + 28);
                      v221 = *(v202 + 32) + v218;
                      *(v202 + 32) = v221;
                      if (v220 <= v221)
                      {
                        v222 = 0;
                      }

                      else
                      {
                        memmove(v219, &v219[v221], v220 - v221);
                        v222 = *(v202 + 28) - *(v202 + 32);
                      }

                      v223 = v1150;
                      v184 = 0x280D73000uLL;
                      *(v202 + 28) = v222;
                      *(v202 + 32) = 0;
                      *(v202 + 80) += v218;
                      if (gNRPacketLoggingEnabled == 1)
                      {
                        v294 = _NRCopyLogObjectForNRUUID(v223[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v306 = v294;
                          v1103 = os_log_type_enabled(v294, OS_LOG_TYPE_INFO);

                          v223 = v1150;
                          v184 = 0x280D73000;
                          if (!v1103)
                          {
                            goto LABEL_281;
                          }
                        }

                        v307 = _NRCopyLogObjectForNRUUID(v223[6]);
                        _NRLogWithArgs(v307, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", "", "NRBluetoothPacketParserNexusToLinkLoop", 1968, v1127, v218, v216, v217);

                        v184 = 0x280D73000;
                      }

LABEL_281:
                      v212 = v211 | 0x30;
                      v209 += v218;
                      v207 = v1149;
                    }
                  }

                  v224 = v1144;
                  if (v207)
                  {
                    v224 = os_channel_get_next_slot();
                    v184 = 0x280D73000uLL;
                  }

                  v225 = v1150;
                  if (!v224)
                  {
                    v256 = 0;
                    v257 = *(v202 + 80);
                    if (!*(v202 + 80))
                    {
                      goto LABEL_421;
                    }

                    goto LABEL_336;
                  }

LABEL_285:
                  v226 = 0x4000 - *(v202 + 80);
                  v227 = nrMaxTLVLengthForPacket(v1154 + *(v225 + 14), (WORD1(v1153) - *(v225 + 14)));
                  if (v226 < v227)
                  {
                    v212 |= 0x40u;
                    v184 = 0x280D73000uLL;
                    if (gNRPacketLoggingEnabled != 1)
                    {
                      v256 = v224;
                      v257 = *(v202 + 80);
                      if (!*(v202 + 80))
                      {
                        goto LABEL_421;
                      }

LABEL_336:
                      v1144 = v256;
                      v1151 = 0;
                      v258 = v184;
                      if (*(v184 + 3640) == 1)
                      {
                        v278 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v258 = 0x280D73000;
                        }

                        else
                        {
                          v284 = v278;
                          v285 = os_log_type_enabled(v278, OS_LOG_TYPE_INFO);

                          v258 = 0x280D73000;
                          if (!v285)
                          {
                            goto LABEL_337;
                          }
                        }

                        v286 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        _NRLogWithArgs(v286, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2075, v1127, *(v202 + 80));
                      }

LABEL_337:
                      v259 = (*(*v1143 + 8))(**v1143, *v202, *(v202 + 80), &v1151, 0, 0);
                      v184 = v258;
                      if (*(v258 + 3640) == 1)
                      {
                        v279 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v287 = v279;
                          v288 = os_log_type_enabled(v279, OS_LOG_TYPE_INFO);

                          v184 = 0x280D73000;
                          if (!v288)
                          {
                            goto LABEL_338;
                          }
                        }

                        v289 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        _NRLogWithArgs(v289, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2078, v1127, v259, v1151, *(v202 + 80));

                        v184 = 0x280D73000;
                      }

LABEL_338:
                      if (v259)
                      {
                        v260 = v212 | 0x800;
                        v261 = v1151;
                        if (!v1151)
                        {
                          goto LABEL_370;
                        }

LABEL_364:
                        if (v261 < *(v202 + 80))
                        {
                          if (!*(v184 + 3640))
                          {
                            goto LABEL_366;
                          }

                          v292 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_407;
                          }

                          v300 = v292;
                          v301 = os_log_type_enabled(v292, OS_LOG_TYPE_INFO);

                          if (v301)
                          {
LABEL_407:
                            v302 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v302, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2092, v1127, *(v202 + 80), v1151);
                          }

LABEL_366:
                          v260 |= 0x2000u;
                          memmove(*v202, (*v202 + v1151), *(v202 + 80) - v1151);
                          v274 = v1151;
                          *(v202 + 80) -= v1151;
                          v1141 = (v1141 + 1);
                          v184 = 0x280D73000;
LABEL_369:
                          *&v1140[v1150] += v274;
LABEL_370:
                          LODWORD(v1145) = v1145 + 1;
                          if (v259)
                          {
                            v275 = *(v202 + 82);
                            if (v275 >= 0xB)
                            {
                              v275 -= 11 * ((((117 * v275) >> 8) + (((v275 - ((117 * v275) >> 8)) & 0xFE) >> 1)) >> 3);
                            }

                            v211 = 0;
                            *(v1147 + 4 * v275) = v260;
                            if (v275 < 0xAu)
                            {
                              v276 = v275 + 1;
                            }

                            else
                            {
                              v276 = v275 - 10;
                            }

                            *(v202 + 82) = v276;
                            v207 = v1149;
                            continue;
                          }

LABEL_422:
                          if (*(v184 + 3640) == 1)
                          {
                            v339 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v352 = v339;
                              v353 = os_log_type_enabled(v339, OS_LOG_TYPE_INFO);

                              v184 = 0x280D73000;
                              if (!v353)
                              {
                                goto LABEL_423;
                              }
                            }

                            v354 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v354, 1, "%s%.30s:%-4d %s: out of NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2110, v1127);

                            v184 = 0x280D73000;
                          }

LABEL_423:
                          v314 = v260 | 0x8000;
                          if (v210)
                          {
                            os_channel_advance_slot();
                            v184 = 0x280D73000;
                            *(v1150 + 18) = 1;
                            v16 = v1130;
LABEL_426:
                            v315 = v1145;
                            if (v1145 > 8u || v1149 && (v316 = os_channel_available_slot_count(), v184 = 0x280D73000uLL, v316 <= 1))
                            {
                              if (*(v184 + 3640) != 1)
                              {
                                goto LABEL_430;
                              }

                              v348 = _NRCopyLogObjectForNRUUID(v1150[6]);
                              v349 = v348;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v16 = v1130;
                                goto LABEL_512;
                              }

                              v361 = os_log_type_enabled(v348, OS_LOG_TYPE_INFO);

                              v16 = v1130;
                              if (v361)
                              {
LABEL_512:
                                v362 = v1150;
                                v363 = _NRCopyLogObjectForNRUUID(v1150[6]);
                                _NRLogWithArgs(v363, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2123, v1127, v208, v209, v315, v362[54] * 0.000001, v257 == 0, v1141);
                              }

LABEL_430:
                              v314 = v260 | 0x18000;
                              os_channel_sync();
                              *(v1150 + 18) = 0;
                              v184 = 0x280D73000uLL;
                            }
                          }

                          else
                          {
                            v16 = v1130;
                            if (*(v1150 + 18))
                            {
                              goto LABEL_426;
                            }
                          }

                          v3 = v1150;
                          v173 = v1131;
                          if (*(v184 + 3640) == 1)
                          {
                            v340 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v355 = v340;
                              v356 = os_log_type_enabled(v340, OS_LOG_TYPE_INFO);

                              v184 = 0x280D73000;
                              if (!v356)
                              {
                                goto LABEL_432;
                              }
                            }

                            v357 = _NRCopyLogObjectForNRUUID(v3[6]);
                            _NRLogWithArgs(v357, 1, "%s%.30s:%-4d %s: out of NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2134, v1127);

                            v184 = 0x280D73000;
                          }

LABEL_432:
                          if (v257)
                          {
LABEL_433:
                            if (*(v184 + 3640) != 1)
                            {
                              goto LABEL_434;
                            }

                            v341 = _NRCopyLogObjectForNRUUID(v3[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {

                              goto LABEL_510;
                            }

                            v358 = v341;
                            v359 = os_log_type_enabled(v341, OS_LOG_TYPE_INFO);

                            if (v359)
                            {
LABEL_510:
                              v360 = _NRCopyLogObjectForNRUUID(v3[6]);
                              _NRLogWithArgs(v360, 1, "%s%.30s:%-4d %s: done with NtL fast-path", "", "NRBluetoothPacketParserNexusToLinkLoop", 2168, v1127);
                            }

LABEL_434:
                            v317 = *(v202 + 82);
                            if (v317 >= 0xB)
                            {
                              v317 -= 11 * ((((117 * v317) >> 8) + (((v317 - ((117 * v317) >> 8)) & 0xFE) >> 1)) >> 3);
                            }

                            *(v1147 + 4 * v317) = v314 | 0x60000;
                            if (v317 < 0xAu)
                            {
                              v180 = v317 + 1;
                            }

                            else
                            {
                              v180 = v317 - 10;
                            }

LABEL_230:
                            *(v202 + 82) = v180;
                            goto LABEL_231;
                          }

                          if (v1129 <= 1)
                          {
                            if (v1129)
                            {
                              v318 = v3[18];
                              if ((*(v3 + 15) & 4) == 0)
                              {
                                goto LABEL_453;
                              }

                              if ((v318 & 0x20) != 0 && *v1122)
                              {
                                goto LABEL_471;
                              }
                            }

                            else
                            {
                              v318 = v3[18];
LABEL_453:
                              if ((v318 & 8) != 0 && *v1125)
                              {
                                v3[18] = (v318 & 0xFFFFFFFFFFFFFFF7);
                                if (*(v184 + 3640) != 1)
                                {
                                  goto LABEL_456;
                                }

                                v374 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v375 = v374;
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  v3 = v1150;
                                  v16 = v1130;
                                  v173 = v1131;
                                  goto LABEL_535;
                                }

                                v385 = os_log_type_enabled(v374, OS_LOG_TYPE_INFO);

                                v3 = v1150;
                                v16 = v1130;
                                v173 = v1131;
                                if (v385)
                                {
LABEL_535:
                                  v386 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  _NRLogWithArgs(v386, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);
                                }

LABEL_456:
                                dispatch_resume(v3[39]);
                                v318 = v3[18];
                              }

                              if ((v318 & 0x10) != 0 && *v1123)
                              {
                                v3[18] = (v318 & 0xFFFFFFFFFFFFFFEFLL);
                                if (gNRPacketLoggingEnabled != 1)
                                {
                                  goto LABEL_460;
                                }

                                v376 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v377 = v376;
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  v3 = v1150;
                                  v16 = v1130;
                                  v173 = v1131;
                                  goto LABEL_537;
                                }

                                v387 = os_log_type_enabled(v376, OS_LOG_TYPE_INFO);

                                v3 = v1150;
                                v16 = v1130;
                                v173 = v1131;
                                if (v387)
                                {
LABEL_537:
                                  v388 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  _NRLogWithArgs(v388, 1, "%s%.30s:%-4d source-resume: NexusVIInput", "", "NRBluetoothPacketParserResumeNexusVIInputSource", 491);
                                }

LABEL_460:
                                dispatch_resume(v3[41]);
                                v318 = v3[18];
                              }

                              if ((v318 & 0x20) != 0)
                              {
                                v184 = 0x280D73000;
                                if (!*v1122)
                                {
                                  goto LABEL_474;
                                }

LABEL_471:
                                v3[18] = (v318 & 0xFFFFFFFFFFFFFFDFLL);
                                if (*(v184 + 3640) == 1)
                                {
                                  v372 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  v373 = v372;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v3 = v1150;
                                    v16 = v1130;
                                    v173 = v1131;
                                  }

                                  else
                                  {
                                    v383 = os_log_type_enabled(v372, OS_LOG_TYPE_INFO);

                                    v3 = v1150;
                                    v16 = v1130;
                                    v173 = v1131;
                                    if (!v383)
                                    {
                                      goto LABEL_472;
                                    }
                                  }

                                  v384 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  _NRLogWithArgs(v384, 1, "%s%.30s:%-4d source-resume: NexusBEInput", "", "NRBluetoothPacketParserResumeNexusBEInputSource", 487);
                                }

LABEL_472:
                                dispatch_resume(v3[43]);
                                v318 = v3[18];
                              }

                              v184 = 0x280D73000uLL;
                            }

LABEL_474:
                            if ((v318 & 0x40) == 0 || !*v1124)
                            {
                              goto LABEL_433;
                            }

                            v3[18] = (v318 & 0xFFFFFFFFFFFFFFBFLL);
                            v320 = v1124;
                            if (*(v184 + 3640) != 1)
                            {
LABEL_477:
                              dispatch_resume(*v320);
                              v184 = 0x280D73000;
                              goto LABEL_433;
                            }

                            v370 = _NRCopyLogObjectForNRUUID(v3[6]);
                            v371 = v370;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v3 = v1150;
                            }

                            else
                            {
                              v378 = os_log_type_enabled(v370, OS_LOG_TYPE_INFO);

                              v320 = v1124;
                              v3 = v1150;
                              v16 = v1130;
                              v173 = v1131;
                              if (!v378)
                              {
                                goto LABEL_477;
                              }
                            }

                            v379 = _NRCopyLogObjectForNRUUID(v3[6]);
                            _NRLogWithArgs(v379, 1, "%s%.30s:%-4d source-resume: NexusBKInput", "", "NRBluetoothPacketParserResumeNexusBKInputSource", 493);
                            v380 = &v1155;
LABEL_542:
                            v320 = *(v380 - 32);

                            v3 = v1150;
                            v16 = v1130;
                            v173 = v1131;
                            goto LABEL_477;
                          }

                          if (v1129 != 2)
                          {
                            v323 = v3[18];
                            if ((v323 & 8) == 0 || !*v1125)
                            {
                              goto LABEL_433;
                            }

                            v3[18] = (v323 & 0xFFFFFFFFFFFFFFF7);
                            v320 = v1125;
                            if (*(v184 + 3640) != 1)
                            {
                              goto LABEL_477;
                            }

                            v324 = _NRCopyLogObjectForNRUUID(v3[6]);
                            v325 = v324;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v3 = v1150;
                            }

                            else
                            {
                              v390 = os_log_type_enabled(v324, OS_LOG_TYPE_INFO);

                              v320 = v1125;
                              v3 = v1150;
                              v16 = v1130;
                              v173 = v1131;
                              if (!v390)
                              {
                                goto LABEL_477;
                              }
                            }

                            v379 = _NRCopyLogObjectForNRUUID(v3[6]);
                            _NRLogWithArgs(v379, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);
                            v380 = &v1155 + 8;
                            goto LABEL_542;
                          }

                          v319 = v3[18];
                          if ((v319 & 8) != 0 && *v1125)
                          {
                            v3[18] = (v319 & 0xFFFFFFFFFFFFFFF7);
                            if (*(v184 + 3640) != 1)
                            {
                              goto LABEL_446;
                            }

                            v381 = _NRCopyLogObjectForNRUUID(v3[6]);
                            v382 = v381;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v3 = v1150;
                              v16 = v1130;
                              v173 = v1131;
                              goto LABEL_544;
                            }

                            v391 = os_log_type_enabled(v381, OS_LOG_TYPE_INFO);

                            v3 = v1150;
                            v16 = v1130;
                            v173 = v1131;
                            if (v391)
                            {
LABEL_544:
                              v392 = _NRCopyLogObjectForNRUUID(v3[6]);
                              _NRLogWithArgs(v392, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);
                            }

LABEL_446:
                            dispatch_resume(v3[39]);
                            v319 = v3[18];
                            v184 = 0x280D73000uLL;
                          }

                          if ((v319 & 0x10) == 0 || !*v1123)
                          {
                            goto LABEL_433;
                          }

                          v3[18] = (v319 & 0xFFFFFFFFFFFFFFEFLL);
                          v320 = v1123;
                          if (*(v184 + 3640) != 1)
                          {
                            goto LABEL_477;
                          }

                          v321 = _NRCopyLogObjectForNRUUID(v3[6]);
                          v322 = v321;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v3 = v1150;
                          }

                          else
                          {
                            v389 = os_log_type_enabled(v321, OS_LOG_TYPE_INFO);

                            v320 = v1123;
                            v3 = v1150;
                            v16 = v1130;
                            v173 = v1131;
                            if (!v389)
                            {
                              goto LABEL_477;
                            }
                          }

                          v379 = _NRCopyLogObjectForNRUUID(v3[6]);
                          _NRLogWithArgs(v379, 1, "%s%.30s:%-4d source-resume: NexusVIInput", "", "NRBluetoothPacketParserResumeNexusVIInputSource", 491);
                          v380 = &v1154 + 8;
                          goto LABEL_542;
                        }

                        if (!*(v184 + 3640))
                        {
LABEL_368:
                          v260 |= 0x4000u;
                          *(v202 + 80) = 0;
                          v274 = v1151;
                          goto LABEL_369;
                        }

                        v293 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v303 = v293;
                          v304 = os_log_type_enabled(v293, OS_LOG_TYPE_INFO);

                          v184 = 0x280D73000;
                          if (!v304)
                          {
                            goto LABEL_368;
                          }
                        }

                        v305 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        _NRLogWithArgs(v305, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2099, v1127, *(v202 + 80), v1151);

                        v184 = 0x280D73000;
                        goto LABEL_368;
                      }

                      v262 = v1150;
                      if (v1142)
                      {
                        v1142(v1150);
                        v184 = 0x280D73000uLL;
                      }

                      *(v202 + 84) |= 1u;
                      v263 = *(v202 + 83);
                      if (v263 > 1)
                      {
                        if (v263 == 2)
                        {
                          v262[21] = v262[21] + 1;
                          v262[18] = (v262[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v202 + 84) & 1)));
                          if (*(v184 + 3640) != 1)
                          {
                            goto LABEL_362;
                          }

                          v270 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v312 = v270;
                            v313 = os_log_type_enabled(v270, OS_LOG_TYPE_INFO);

                            v184 = 0x280D73000;
                            if (!v313)
                            {
                              goto LABEL_362;
                            }
                          }

                          v273 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          _NRLogWithArgs(v273, 1, "%s%.30s:%-4d source-%s: High");
                        }

                        else
                        {
                          if (v263 != 3)
                          {
                            goto LABEL_362;
                          }

                          v267 = v1150;
                          v1150[23] = v1150[23] + 1;
                          v267[18] = (v267[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v202 + 84) & 1)));
                          if (*(v184 + 3640) != 1)
                          {
                            goto LABEL_362;
                          }

                          v268 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v310 = v268;
                            v311 = os_log_type_enabled(v268, OS_LOG_TYPE_INFO);

                            v184 = 0x280D73000;
                            if (!v311)
                            {
                              goto LABEL_362;
                            }
                          }

                          v273 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          _NRLogWithArgs(v273, 1, "%s%.30s:%-4d source-%s: Isochronous");
                        }

LABEL_361:

                        v184 = 0x280D73000uLL;
                        goto LABEL_362;
                      }

                      if (!*(v202 + 83))
                      {
                        v269 = _NRCopyLogObjectForNRUUID(v262[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v271 = v269;
                          v272 = os_log_type_enabled(v269, OS_LOG_TYPE_ERROR);

                          v184 = 0x280D73000;
                          if (!v272)
                          {
                            goto LABEL_362;
                          }
                        }

                        v273 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        _NRLogWithArgs(v273, 16, "%s%.30s:%-4d invalid link channel priority");
                        goto LABEL_361;
                      }

                      if (v263 == 1)
                      {
                        v264 = v1150;
                        v265 = v1150[18];
                        v1150[19] = v1150[19] + 1;
                        v264[18] = (v265 & 0xFFFFFFFFFFFFFFFELL | *(v202 + 84) & 1);
                        if (*(v184 + 3640) == 1)
                        {
                          v266 = _NRCopyLogObjectForNRUUID(v1150[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_413;
                          }

                          v308 = v266;
                          v309 = os_log_type_enabled(v266, OS_LOG_TYPE_INFO);

                          v184 = 0x280D73000;
                          if (v309)
                          {
LABEL_413:
                            v273 = _NRCopyLogObjectForNRUUID(v1150[6]);
                            _NRLogWithArgs(v273, 1, "%s%.30s:%-4d source-%s: Medium");
                            goto LABEL_361;
                          }
                        }
                      }

LABEL_362:
                      v260 = v212 | 0x1800;
                      if (*(v184 + 3640) != 1)
                      {
                        v261 = v1151;
                        if (v1151)
                        {
                          goto LABEL_364;
                        }

                        goto LABEL_370;
                      }

                      v283 = _NRCopyLogObjectForNRUUID(v1150[6]);
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_400;
                      }

                      v295 = v283;
                      v296 = os_log_type_enabled(v283, OS_LOG_TYPE_INFO);

                      if (v296)
                      {
LABEL_400:
                        v297 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        _NRLogWithArgs(v297, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 2086);
                      }

                      v184 = 0x280D73000;
                      v261 = v1151;
                      if (!v1151)
                      {
                        goto LABEL_370;
                      }

                      goto LABEL_364;
                    }

                    v290 = v227;
                    v291 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {

                      goto LABEL_404;
                    }

                    v298 = v291;
                    LODWORD(v1144) = os_log_type_enabled(v291, OS_LOG_TYPE_INFO);

                    if (v1144)
                    {
LABEL_404:
                      v299 = _NRCopyLogObjectForNRUUID(v1150[6]);
                      _NRLogWithArgs(v299, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1984, v1127, v226, v290);
                    }

                    v256 = v224;
LABEL_335:
                    v184 = 0x280D73000uLL;
                    v257 = *(v202 + 80);
                    if (*(v202 + 80))
                    {
                      goto LABEL_336;
                    }

LABEL_421:
                    v260 = v212 | 0x400;
                    if (*(v184 + 3640) != 1)
                    {
                      goto LABEL_422;
                    }

                    v350 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    v351 = v350;
                    if (sNRCopyLogToStdErr == 1)
                    {

                      goto LABEL_514;
                    }

                    v364 = os_log_type_enabled(v350, OS_LOG_TYPE_INFO);

                    if (v364)
                    {
LABEL_514:
                      v365 = _NRCopyLogObjectForNRUUID(v1150[6]);
                      _NRLogWithArgs(v365, 1, "%s%.30s:%-4d %s: nothing to read from nexus", "", "NRBluetoothPacketParserNexusToLinkLoop", 2065, v1127);
                    }

                    v184 = 0x280D73000;
                    goto LABEL_422;
                  }

                  break;
                }

                os_channel_slot_get_packet();
                os_packet_get_next_buflet();
                v228 = os_buflet_get_data_offset();
                v229 = os_buflet_get_object_address();
                v230 = os_buflet_get_data_length();
                if (v230 >= 0x10000)
                {
                  if (nrCopyLogObj_onceToken_563 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
                  }

                  if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_863;
                  }

                  v520 = nrCopyLogObj_sNRLogObj_564;
                  goto LABEL_732;
                }

                if (*(v1150 + 9) == 1)
                {
                  v1151 = 0;
                  v1152 = 0;
                  v231 = (*v202 + *(v202 + 80));
                  v1151 = v231;
                  LODWORD(v1152) = v226;
                  v232 = *(v1150 + 14);
                  v225 = v1150;
                  if (*(v1150 + 10) == 1)
                  {
                    v233 = nrPacketTo6LoWPAN((v1154 + v232), (WORD1(v1153) - v232), &v1151, 1u, (v1150 + 86), (v1150 + 88), 0);
                  }

                  else
                  {
                    memcpy(v231, (v1154 + v232), WORD1(v1153) - v232);
                    v233 = WORD1(v1153) - *(v225 + 14);
                  }

                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_300:
                    v212 |= 0x80u;
                    goto LABEL_301;
                  }

                  v240 = _NRCopyLogObjectForNRUUID(v225[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v241 = v240;
                    v242 = os_log_type_enabled(v240, OS_LOG_TYPE_INFO);

                    v225 = v1150;
                    if (!v242)
                    {
                      goto LABEL_300;
                    }
                  }

                  v243 = _NRCopyLogObjectForNRUUID(v225[6]);
                  _NRLogWithArgs(v243, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2015, v1127, v233, WORD1(v1153));
LABEL_321:

                  v225 = v1150;
                  goto LABEL_300;
                }

                if (!v230 && WORD1(v1153))
                {
                  v1151 = 0;
                  v1152 = 0;
                  v1151 = *v202 + *(v202 + 80);
                  LODWORD(v1152) = v226;
                  v225 = v1150;
                  v233 = nrPacketToTLV((v1154 + *(v1150 + 14)), (WORD1(v1153) - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                  if (gNRPacketLoggingEnabled != 1)
                  {
                    goto LABEL_300;
                  }

                  v234 = _NRCopyLogObjectForNRUUID(v225[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v245 = v234;
                    v246 = os_log_type_enabled(v234, OS_LOG_TYPE_INFO);

                    v225 = v1150;
                    if (!v246)
                    {
                      goto LABEL_300;
                    }
                  }

                  v243 = _NRCopyLogObjectForNRUUID(v225[6]);
                  v247 = getESPSequenceNumberFromPacket(v1154, WORD1(v1153));
                  v248 = getESPSPIFromPacket(v1154, WORD1(v1153));
                  _NRLogWithArgs(v243, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2027, v1127, v233, v247, v248);
                  goto LABEL_321;
                }

                if (v230)
                {
                  v235 = v229 + v228;
                  v1151 = 0;
                  v1152 = 0;
                  v1151 = *v202 + *(v202 + 80);
                  LODWORD(v1152) = v226;
                  v225 = v1150;
                  v236 = v230;
                  v233 = nrPacketToTLV((v235 + *(v1150 + 14)), (v230 - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_297:
                    v212 |= 0x100u;
LABEL_301:
                    *(v202 + 80) += v233;
                    if (v1148)
                    {
                      v237 = 0;
                    }

                    else
                    {
                      v237 = os_channel_get_next_slot();
                    }

                    ++v208;
                    ++*v187;
                    *v1146 = 1;
                    v209 += v233;
                    if (!v237)
                    {
                      v256 = 0;
                      v210 = v224;
                      goto LABEL_335;
                    }

                    v238 = *(v202 + 82);
                    if (v238 >= 0xB)
                    {
                      v238 -= 11 * ((((117 * v238) >> 8) + (((v238 - ((117 * v238) >> 8)) & 0xFE) >> 1)) >> 3);
                    }

                    *(v1147 + 4 * v238) = v212;
                    if (v238 < 0xAu)
                    {
                      v239 = v238 + 1;
                    }

                    else
                    {
                      v239 = v238 - 10;
                    }

                    *(v202 + 82) = v239;
                    v210 = v224;
                    v224 = v237;
                    v212 = 0;
                    goto LABEL_285;
                  }

                  v244 = _NRCopyLogObjectForNRUUID(v225[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v250 = v244;
                    LODWORD(v1144) = os_log_type_enabled(v244, OS_LOG_TYPE_INFO);

                    v225 = v1150;
                    if (!v1144)
                    {
                      goto LABEL_297;
                    }
                  }

                  v251 = _NRCopyLogObjectForNRUUID(v225[6]);
                  v1144 = getESPSequenceNumberFromPacket(v235, v236);
                  v252 = getESPSPIFromPacket(v235, v236);
                  _NRLogWithArgs(v251, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2037, v1127, v233, v1144, v252);

                  v225 = v1150;
                  goto LABEL_297;
                }

                v212 |= 0x200u;
                if (gNRPacketLoggingEnabled != 1)
                {
                  v233 = 0;
                  v225 = v1150;
                  goto LABEL_301;
                }

                v225 = v1150;
                v249 = _NRCopyLogObjectForNRUUID(v1150[6]);
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_327;
                }

                v253 = v249;
                v254 = os_log_type_enabled(v249, OS_LOG_TYPE_INFO);

                if (v254)
                {
LABEL_327:
                  v255 = _NRCopyLogObjectForNRUUID(v225[6]);
                  _NRLogWithArgs(v255, 1, "%s%.30s:%-4d %s: No data to write", "", "NRBluetoothPacketParserNexusToLinkLoop", 2039, v1127);
                }

                v233 = 0;
                goto LABEL_301;
              }

              if (*(v184 + 3640) != 1)
              {
LABEL_419:
                if (v1142)
                {
                  v1142(v3);
                }

                v179 = *(v202 + 82);
                if (v179 >= 0xB)
                {
                  v179 -= 11 * ((((117 * v179) >> 8) + (((v179 - ((117 * v179) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                *(v202 + 4 * v179 + 36) = 3;
                if (v179 < 0xAu)
                {
                  v180 = v179 + 1;
                }

                else
                {
                  v180 = v179 - 10;
                }

                goto LABEL_230;
              }

              v337 = v197;
              v338 = _NRCopyLogObjectForNRUUID(v3[6]);
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v345 = v338;
                v346 = os_log_type_enabled(v338, OS_LOG_TYPE_INFO);

                if (!v346)
                {
                  goto LABEL_419;
                }
              }

              v347 = _NRCopyLogObjectForNRUUID(v3[6]);
              _NRLogWithArgs(v347, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", "", "NRBluetoothPacketParserNexusToLinkLoop", 1903, v337, v182);

              goto LABEL_419;
            }

            v328 = v197;
            if (*(v184 + 3640) != 1)
            {
              goto LABEL_481;
            }

            v393 = _NRCopyLogObjectForNRUUID(v3[6]);
            v394 = v393;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v1150;
            }

            else
            {
              v395 = os_log_type_enabled(v393, OS_LOG_TYPE_INFO);

              v3 = v1150;
              if (!v395)
              {
                goto LABEL_481;
              }
            }

            v396 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v396, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 1923);

LABEL_481:
            v329 = _NRCopyLogObjectForNRUUID(v3[6]);
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v333 = v329;
              v334 = os_log_type_enabled(v329, OS_LOG_TYPE_FAULT);

              if (!v334)
              {
                goto LABEL_231;
              }
            }

            v335 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v335, 17, "%s: Invalid write context for nexus priority: %u", v328, v182);

LABEL_231:
            v176 = v1133;
            v178 = v1132;
            v181 = v1136;
            goto LABEL_232;
          }

          v198 = v3[14];
          if (!v198)
          {
LABEL_261:
            v195 = 1;
            v196 = v1126;
            v197 = "Medium";
            goto LABEL_263;
          }

          v199 = v1135;
          if ((*(*v198 + 43) & 3) == 1)
          {
            if (*(v3 + 17))
            {
              v196 = 0;
              v200 = 1;
            }

            else
            {

              v184 = 0x280D73000uLL;
              v1142 = 0;
              v200 = 0;
              v188 = 0;
              v1149 = 0;
              v199 = 0;
              v196 = v1105;
              if ((*(v3 + 17) & 1) == 0)
              {
                goto LABEL_258;
              }
            }
          }

          else
          {
            v196 = 0;
            v200 = 1;
            if ((*(v3 + 17) & 1) == 0)
            {
              goto LABEL_258;
            }
          }

          if ((*(v184 + 3640) & 1) == 0)
          {
            goto LABEL_258;
          }

          v1138 = v188;
          v366 = _NRCopyLogObjectForNRUUID(v3[6]);
          v367 = v366;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v1150;
          }

          else
          {
            v368 = os_log_type_enabled(v366, OS_LOG_TYPE_INFO);

            v3 = v1150;
            v184 = 0x280D73000;
            v188 = v1138;
            if (!v368)
            {
              goto LABEL_258;
            }
          }

          v369 = _NRCopyLogObjectForNRUUID(v3[6]);
          _NRLogWithArgs(v369, 1, "%s%.30s:%-4d sending packets over medium pipe", "", "NRBluetoothPacketParserNexusToLinkLoop", 1887);

          v188 = v1138;
          v184 = 0x280D73000;
LABEL_258:
          v1135 = v199;
          if (v196)
          {
            if (v200)
            {
              v195 = 0;
              v197 = "Invalid";
              goto LABEL_263;
            }

            goto LABEL_262;
          }

          goto LABEL_261;
        }

        v326 = v188;
        v327 = _NRCopyLogObjectForNRUUID(v3[6]);
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v330 = v327;
          v331 = os_log_type_enabled(v327, OS_LOG_TYPE_INFO);

          v184 = 0x280D73000;
          v188 = v326;
          if (!v331)
          {
            goto LABEL_245;
          }
        }

        v332 = _NRCopyLogObjectForNRUUID(v3[6]);
        _NRLogWithArgs(v332, 1, "%s%.30s:%-4d starting NtL fast-path for %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1858, v182);

        v188 = v326;
        v184 = 0x280D73000;
        goto LABEL_245;
      default:
        v14 = 0;
        break;
    }

    v16 = v3 + 15;
    v15 = *(v3 + 15);
    v159 = v15 & v14;
    v17 = (v15 & v14) == 0;
    if (v8 != 3 || !v159)
    {
      goto LABEL_23;
    }

    if (*(v3 + 13) == 4)
    {
      goto LABEL_1397;
    }

    dispatch_assert_queue_V2(v3[8]);
    v1140 = v3[27];
    v160 = v3[31];
    v161 = v3[39];
    v162 = v161;
    v163 = 0x280D73000uLL;
    if (gNRPacketLoggingEnabled == 1)
    {
      v582 = v161;
      v583 = _NRCopyLogObjectForNRUUID(v3[6]);
      v584 = v583;
      if (sNRCopyLogToStdErr == 1)
      {

        v3 = v1150;
      }

      else
      {
        v764 = os_log_type_enabled(v583, OS_LOG_TYPE_INFO);

        v3 = v1150;
        v163 = 0x280D73000;
        v162 = v582;
        if (!v764)
        {
          goto LABEL_205;
        }
      }

      v765 = _NRCopyLogObjectForNRUUID(v3[6]);
      _NRLogWithArgs(v765, 1, "%s%.30s:%-4d starting NtL fast-path for %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1858, 100);

      v162 = v582;
      v163 = 0x280D73000;
    }

LABEL_205:
    v164 = *v16;
    if ((v164 & 8) != 0)
    {
      v168 = (v3 + 17);
      v514 = "Isochronous";
      v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource;
      v515 = 3;
      goto LABEL_1216;
    }

    if ((v164 & 4) != 0)
    {
      v168 = (v3 + 15);
      v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource;
LABEL_856:
      v514 = "High";
      v515 = 2;
      goto LABEL_1216;
    }

    v165 = v3[14];
    if (!v165)
    {
      v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource;
      goto LABEL_1215;
    }

    v166 = *(*v165 + 43) & 3;
    v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource;
    if (v166 == 1 && (v167 = *(v3 + 17), v1144 = NRBluetoothPacketParserSuspendNexusVOInputSource, (v167 & 1) == 0))
    {

      v163 = 0x280D73000uLL;
      v1144 = 0;
      v169 = 0;
      v162 = 0;
      v160 = 0;
      v1140 = 0;
      v168 = (v3 + 15);
    }

    else
    {
      v168 = 0;
      v169 = 1;
    }

    if (*(v3 + 17) == 1 && (*(v163 + 3640) & 1) != 0)
    {
      v987 = v162;
      v988 = _NRCopyLogObjectForNRUUID(v3[6]);
      v989 = v988;
      if (sNRCopyLogToStdErr == 1)
      {

        v3 = v1150;
      }

      else
      {
        v999 = os_log_type_enabled(v988, OS_LOG_TYPE_INFO);

        v3 = v1150;
        v163 = 0x280D73000;
        v162 = v987;
        if (!v999)
        {
          goto LABEL_853;
        }
      }

      v1000 = _NRCopyLogObjectForNRUUID(v3[6]);
      _NRLogWithArgs(v1000, 1, "%s%.30s:%-4d sending packets over medium pipe", "", "NRBluetoothPacketParserNexusToLinkLoop", 1887);

      v162 = v987;
      v163 = 0x280D73000;
    }

LABEL_853:
    if (v168)
    {
      if (v169)
      {
        v515 = 0;
        v514 = "Invalid";
        goto LABEL_1216;
      }

      goto LABEL_856;
    }

LABEL_1215:
    v168 = (v3 + 13);
    v514 = "Medium";
    v515 = 1;
LABEL_1216:
    if (*v168)
    {
      v815 = *(*v168 + 24);
      if ((*(v815 + 84) & 1) == 0)
      {
        v1145 = v168;
        LODWORD(v1149) = v164;
        LODWORD(v1136) = v515;
        v1134 = v514;
        v1138 = v162;
        v1139 = v1102;
        v1141 = *(v815 + 8);
        v816 = *(v815 + 83);
        v817 = 584;
        if (v816 == 3)
        {
          v817 = 600;
        }

        v39 = v816 == 2;
        v818 = 616;
        if (!v39)
        {
          v818 = v817;
        }

        v1142 = v818;
        if (*(v163 + 3640) != 1)
        {
          goto LABEL_1223;
        }

        v939 = _NRCopyLogObjectForNRUUID(v3[6]);
        v940 = v939;
        if (sNRCopyLogToStdErr == 1)
        {

          v3 = v1150;
        }

        else
        {
          v951 = os_log_type_enabled(v939, OS_LOG_TYPE_INFO);

          v3 = v1150;
          v163 = 0x280D73000;
          if (!v951)
          {
LABEL_1223:
            LODWORD(v1147) = 0;
            v819 = 0;
            v820 = 0;
            v1146 = 0;
            v821 = 0;
            v1143 = 0;
            v1135 = (v3 + 39);
            v1148 = v815 + 36;
            v1155 = 0u;
            v1156 = 0u;
            v822 = 9;
            v1153 = 0u;
            v1154 = 0u;
            while (1)
            {
              if (*(v163 + 3640) == 1)
              {
                v890 = _NRCopyLogObjectForNRUUID(v1150[6]);
                if (sNRCopyLogToStdErr == 1)
                {

LABEL_1336:
                  v895 = _NRCopyLogObjectForNRUUID(v1150[6]);
                  _NRLogWithArgs(v895, 1, "%s%.30s:%-4d %s: starting NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1949, v1134);

                  v163 = 0x280D73000;
                  goto LABEL_1225;
                }

                v893 = v890;
                v894 = os_log_type_enabled(v890, OS_LOG_TYPE_INFO);

                v163 = 0x280D73000;
                if (v894)
                {
                  goto LABEL_1336;
                }
              }

LABEL_1225:
              v823 = v822 | 0x10;
              if ((v1149 & 8) == 0)
              {
                v825 = *(v815 + 28);
                v824 = *(v815 + 32);
                v826 = v1141;
                if (v825 > v824)
                {
                  v827 = *(v815 + 80);
                  v828 = (0x4000 - v827);
                  v829 = (v825 - v824);
                  if (v829 >= v828)
                  {
                    v830 = (0x4000 - v827);
                  }

                  else
                  {
                    v830 = (v825 - v824);
                  }

                  memcpy((*v815 + v827), (v1141 + v824), v830);
                  v831 = *(v815 + 28);
                  v832 = *(v815 + 32) + v830;
                  *(v815 + 32) = v832;
                  if (v831 <= v832)
                  {
                    v833 = 0;
                  }

                  else
                  {
                    memmove(v826, &v826[v832], v831 - v832);
                    v833 = *(v815 + 28) - *(v815 + 32);
                  }

                  v163 = 0x280D73000uLL;
                  *(v815 + 28) = v833;
                  *(v815 + 32) = 0;
                  *(v815 + 80) += v830;
                  if (gNRPacketLoggingEnabled != 1)
                  {
                    goto LABEL_1234;
                  }

                  v906 = _NRCopyLogObjectForNRUUID(v1150[6]);
                  v907 = v906;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_1363;
                  }

                  LODWORD(v1137) = os_log_type_enabled(v906, OS_LOG_TYPE_INFO);

                  v163 = 0x280D73000;
                  if (v1137)
                  {
LABEL_1363:
                    v919 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    _NRLogWithArgs(v919, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", "", "NRBluetoothPacketParserNexusToLinkLoop", 1968, v1134, v830, v828, v829);

                    v163 = 0x280D73000;
                  }

LABEL_1234:
                  v823 = v822 | 0x30;
                  v820 += v830;
                }
              }

              v834 = v1146;
              if (v160)
              {
                v834 = os_channel_get_next_slot();
                v163 = 0x280D73000uLL;
              }

              v835 = v1150;
              if (!v834)
              {
                v866 = 0;
                v867 = *(v815 + 80);
                if (*(v815 + 80))
                {
                  goto LABEL_1288;
                }

LABEL_1376:
                v871 = v823 | 0x400;
                if (*(v163 + 3640) != 1)
                {
LABEL_1377:
                  v925 = v871 | 0x8000;
                  if (*(v163 + 3640) != 1)
                  {
                    goto LABEL_1378;
                  }

                  v945 = _NRCopyLogObjectForNRUUID(v1150[6]);
                  v946 = v945;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_1466;
                  }

                  v959 = os_log_type_enabled(v945, OS_LOG_TYPE_INFO);

                  v163 = 0x280D73000;
                  if (v959)
                  {
LABEL_1466:
                    v960 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    _NRLogWithArgs(v960, 1, "%s%.30s:%-4d %s: out of NtL inner loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2110, v1134);

                    v163 = 0x280D73000;
                  }

LABEL_1378:
                  if (v821)
                  {
                    os_channel_advance_slot();
                    v163 = 0x280D73000;
                    *(v1150 + 18) = 1;
LABEL_1381:
                    v926 = v1147;
                    if (v1147 > 8u || v160 && (v927 = os_channel_available_slot_count(), v163 = 0x280D73000uLL, v927 <= 1))
                    {
                      v925 = v871 | 0x18000;
                      if (*(v163 + 3640) != 1)
                      {
                        goto LABEL_1385;
                      }

                      v955 = _NRCopyLogObjectForNRUUID(v1150[6]);
                      v956 = v955;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_1495;
                      }

                      v990 = os_log_type_enabled(v955, OS_LOG_TYPE_INFO);

                      if (v990)
                      {
LABEL_1495:
                        v991 = v1150;
                        v992 = _NRCopyLogObjectForNRUUID(v1150[6]);
                        _NRLogWithArgs(v992, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2123, v1134, v819, v820, v926, v991[54] * 0.000001, v867 == 0, v1143);
                      }

LABEL_1385:
                      os_channel_sync();
                      *(v1150 + 18) = 0;
                      v163 = 0x280D73000uLL;
                    }
                  }

                  else if (*(v1150 + 18))
                  {
                    goto LABEL_1381;
                  }

                  if (*(v163 + 3640) == 1)
                  {
                    v947 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    v948 = v947;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v961 = os_log_type_enabled(v947, OS_LOG_TYPE_INFO);

                      v163 = 0x280D73000;
                      if (!v961)
                      {
                        goto LABEL_1387;
                      }
                    }

                    v962 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    _NRLogWithArgs(v962, 1, "%s%.30s:%-4d %s: out of NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 2134, v1134);

                    v163 = 0x280D73000;
                  }

LABEL_1387:
                  v3 = v1150;
                  v162 = v1138;
                  if (v867)
                  {
LABEL_1388:
                    if (*(v163 + 3640) != 1)
                    {
                      goto LABEL_1389;
                    }

                    v949 = _NRCopyLogObjectForNRUUID(v3[6]);
                    v950 = v949;
                    if (sNRCopyLogToStdErr == 1)
                    {

                      v3 = v1150;
                      v162 = v1138;
                      goto LABEL_1470;
                    }

                    v963 = os_log_type_enabled(v949, OS_LOG_TYPE_INFO);

                    v3 = v1150;
                    v162 = v1138;
                    if (v963)
                    {
LABEL_1470:
                      v964 = _NRCopyLogObjectForNRUUID(v3[6]);
                      _NRLogWithArgs(v964, 1, "%s%.30s:%-4d %s: done with NtL fast-path", "", "NRBluetoothPacketParserNexusToLinkLoop", 2168, v1134);
                    }

LABEL_1389:
                    v923 = *(v815 + 82);
                    if (v923 >= 0xB)
                    {
                      v923 -= 11 * ((((117 * v923) >> 8) + (((v923 - ((117 * v923) >> 8)) & 0xFE) >> 1)) >> 3);
                    }

                    v924 = v923;
                    *(v1148 + 4 * v923) = v925 | 0x60000;
LABEL_1392:
                    if (v924 < 0xA)
                    {
                      v928 = v923 + 1;
                    }

                    else
                    {
                      v928 = v923 - 10;
                    }

                    *(v815 + 82) = v928;
                    goto LABEL_1396;
                  }

                  if (v1136 <= 1)
                  {
                    if (v1136)
                    {
                      v929 = v1150[18];
                      if ((*(v1150 + 15) & 4) == 0)
                      {
                        goto LABEL_1413;
                      }

                      if ((v929 & 0x20) != 0 && v1150[43])
                      {
                        goto LABEL_1435;
                      }
                    }

                    else
                    {
                      v929 = v1150[18];
LABEL_1413:
                      if ((v929 & 8) != 0 && *v1135)
                      {
                        v1150[18] = (v929 & 0xFFFFFFFFFFFFFFF7);
                        if (*(v163 + 3640) != 1)
                        {
                          goto LABEL_1416;
                        }

                        v1043 = _NRCopyLogObjectForNRUUID(v3[6]);
                        v1044 = v1043;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v3 = v1150;
                          v162 = v1138;
                          goto LABEL_1591;
                        }

                        v1078 = os_log_type_enabled(v1043, OS_LOG_TYPE_INFO);

                        v3 = v1150;
                        v162 = v1138;
                        if (v1078)
                        {
LABEL_1591:
                          v1079 = _NRCopyLogObjectForNRUUID(v3[6]);
                          _NRLogWithArgs(v1079, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);
                        }

LABEL_1416:
                        dispatch_resume(v3[39]);
                        v929 = v3[18];
                      }

                      if ((v929 & 0x10) != 0 && v3[41])
                      {
                        v3[18] = (v929 & 0xFFFFFFFFFFFFFFEFLL);
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_1420;
                        }

                        v1045 = _NRCopyLogObjectForNRUUID(v3[6]);
                        v1046 = v1045;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v3 = v1150;
                          v162 = v1138;
                          goto LABEL_1593;
                        }

                        v1080 = os_log_type_enabled(v1045, OS_LOG_TYPE_INFO);

                        v3 = v1150;
                        v162 = v1138;
                        if (v1080)
                        {
LABEL_1593:
                          v1081 = _NRCopyLogObjectForNRUUID(v3[6]);
                          _NRLogWithArgs(v1081, 1, "%s%.30s:%-4d source-resume: NexusVIInput", "", "NRBluetoothPacketParserResumeNexusVIInputSource", 491);
                        }

LABEL_1420:
                        dispatch_resume(v3[41]);
                        v929 = v3[18];
                      }

                      if ((v929 & 0x20) != 0)
                      {
                        v163 = 0x280D73000;
                        if (!v3[43])
                        {
                          goto LABEL_1438;
                        }

LABEL_1435:
                        v3[18] = (v929 & 0xFFFFFFFFFFFFFFDFLL);
                        if (*(v163 + 3640) == 1)
                        {
                          v1029 = _NRCopyLogObjectForNRUUID(v3[6]);
                          v1030 = v1029;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v3 = v1150;
                            v162 = v1138;
                          }

                          else
                          {
                            v1069 = os_log_type_enabled(v1029, OS_LOG_TYPE_INFO);

                            v3 = v1150;
                            v162 = v1138;
                            if (!v1069)
                            {
                              goto LABEL_1436;
                            }
                          }

                          v1070 = _NRCopyLogObjectForNRUUID(v3[6]);
                          _NRLogWithArgs(v1070, 1, "%s%.30s:%-4d source-resume: NexusBEInput", "", "NRBluetoothPacketParserResumeNexusBEInputSource", 487);
                        }

LABEL_1436:
                        dispatch_resume(v3[43]);
                        v929 = v3[18];
                      }

                      v163 = 0x280D73000uLL;
                    }

LABEL_1438:
                    if ((v929 & 0x40) == 0 || !v3[45])
                    {
                      goto LABEL_1388;
                    }

                    v931 = (v3 + 45);
                    v3[18] = (v929 & 0xFFFFFFFFFFFFFFBFLL);
                    if (*(v163 + 3640) != 1)
                    {
LABEL_1441:
                      dispatch_resume(*v931);
                      v163 = 0x280D73000;
                      goto LABEL_1388;
                    }

                    v1135 = (v3 + 45);
                    v1031 = _NRCopyLogObjectForNRUUID(v3[6]);
                    v1032 = v1031;
                    if (sNRCopyLogToStdErr == 1)
                    {

                      goto LABEL_1573;
                    }

                    v1067 = os_log_type_enabled(v1031, OS_LOG_TYPE_INFO);

                    if (v1067)
                    {
LABEL_1573:
                      v1068 = _NRCopyLogObjectForNRUUID(v1150[6]);
                      _NRLogWithArgs(v1068, 1, "%s%.30s:%-4d source-resume: NexusBKInput");
                      goto LABEL_1600;
                    }

LABEL_1601:
                    v3 = v1150;
                    v162 = v1138;
LABEL_1427:
                    v931 = v1135;
                    goto LABEL_1441;
                  }

                  if (v1136 == 2)
                  {
                    v930 = v1150[18];
                    if ((v930 & 8) != 0 && *v1135)
                    {
                      v1150[18] = (v930 & 0xFFFFFFFFFFFFFFF7);
                      if (*(v163 + 3640) != 1)
                      {
                        goto LABEL_1406;
                      }

                      v1063 = _NRCopyLogObjectForNRUUID(v3[6]);
                      v1064 = v1063;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        v3 = v1150;
                        v162 = v1138;
                        goto LABEL_1597;
                      }

                      v1083 = os_log_type_enabled(v1063, OS_LOG_TYPE_INFO);

                      v3 = v1150;
                      v162 = v1138;
                      if (v1083)
                      {
LABEL_1597:
                        v1084 = _NRCopyLogObjectForNRUUID(v3[6]);
                        _NRLogWithArgs(v1084, 1, "%s%.30s:%-4d source-resume: NexusVOInput", "", "NRBluetoothPacketParserResumeNexusVOInputSource", 489);
                      }

LABEL_1406:
                      dispatch_resume(v3[39]);
                      v930 = v3[18];
                      v163 = 0x280D73000uLL;
                    }

                    if ((v930 & 0x10) == 0 || !v3[41])
                    {
                      goto LABEL_1388;
                    }

                    v931 = (v3 + 41);
                    v3[18] = (v930 & 0xFFFFFFFFFFFFFFEFLL);
                    if (*(v163 + 3640) != 1)
                    {
                      goto LABEL_1441;
                    }

                    v1135 = (v3 + 41);
                    v932 = _NRCopyLogObjectForNRUUID(v3[6]);
                    v933 = v932;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v1082 = os_log_type_enabled(v932, OS_LOG_TYPE_INFO);

                      if (!v1082)
                      {
                        goto LABEL_1601;
                      }
                    }

                    v1068 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    _NRLogWithArgs(v1068, 1, "%s%.30s:%-4d source-resume: NexusVIInput");
                  }

                  else
                  {
                    v934 = v1150[18];
                    if ((v934 & 8) == 0 || !*v1135)
                    {
                      goto LABEL_1388;
                    }

                    v1150[18] = (v934 & 0xFFFFFFFFFFFFFFF7);
                    if (*(v163 + 3640) != 1)
                    {
                      goto LABEL_1427;
                    }

                    v1065 = _NRCopyLogObjectForNRUUID(v3[6]);
                    v1066 = v1065;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v1085 = os_log_type_enabled(v1065, OS_LOG_TYPE_INFO);

                      if (!v1085)
                      {
                        goto LABEL_1601;
                      }
                    }

                    v1068 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    _NRLogWithArgs(v1068, 1, "%s%.30s:%-4d source-resume: NexusVOInput");
                  }

LABEL_1600:

                  goto LABEL_1601;
                }

                v957 = _NRCopyLogObjectForNRUUID(v1150[6]);
                v958 = v957;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_1497;
                }

                v993 = os_log_type_enabled(v957, OS_LOG_TYPE_INFO);

                if (v993)
                {
LABEL_1497:
                  v994 = _NRCopyLogObjectForNRUUID(v1150[6]);
                  _NRLogWithArgs(v994, 1, "%s%.30s:%-4d %s: nothing to read from nexus", "", "NRBluetoothPacketParserNexusToLinkLoop", 2065, v1134);
                }

                v163 = 0x280D73000;
                goto LABEL_1377;
              }

              while (1)
              {
                v836 = 0x4000 - *(v815 + 80);
                v837 = nrMaxTLVLengthForPacket(v1154 + *(v835 + 14), (WORD1(v1153) - *(v835 + 14)));
                if (v836 < v837)
                {
                  break;
                }

                os_channel_slot_get_packet();
                os_packet_get_next_buflet();
                v838 = os_buflet_get_data_offset();
                v839 = os_buflet_get_object_address();
                v840 = os_buflet_get_data_length();
                if (v840 >= 0x10000)
                {
                  if (nrCopyLogObj_onceToken_563 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
                  }

                  if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_863;
                  }

                  v520 = nrCopyLogObj_sNRLogObj_564;
LABEL_732:
                  _NRLogWithArgs(v520, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", "", "NRBluetoothPacketParserNexusToLinkLoop", 1997);
                  goto LABEL_863;
                }

                if (*(v1150 + 9) == 1)
                {
                  v1151 = 0;
                  v1152 = 0;
                  v841 = (*v815 + *(v815 + 80));
                  v1151 = v841;
                  LODWORD(v1152) = v836;
                  v842 = *(v1150 + 14);
                  v835 = v1150;
                  if (*(v1150 + 10) == 1)
                  {
                    v843 = nrPacketTo6LoWPAN((v1154 + v842), (WORD1(v1153) - v842), &v1151, 1u, (v1150 + 86), (v1150 + 88), 0);
                  }

                  else
                  {
                    memcpy(v841, (v1154 + v842), WORD1(v1153) - v842);
                    v843 = WORD1(v1153) - *(v835 + 14);
                  }

                  if (gNRPacketLoggingEnabled != 1)
                  {
                    goto LABEL_1253;
                  }

                  v850 = _NRCopyLogObjectForNRUUID(v835[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_1269;
                  }

                  v851 = v850;
                  v852 = os_log_type_enabled(v850, OS_LOG_TYPE_INFO);

                  v835 = v1150;
                  if (v852)
                  {
LABEL_1269:
                    v853 = _NRCopyLogObjectForNRUUID(v835[6]);
                    _NRLogWithArgs(v853, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2015, v1134, v843, WORD1(v1153));
                    goto LABEL_1274;
                  }

                  goto LABEL_1253;
                }

                if (!v840 && WORD1(v1153))
                {
                  v1151 = 0;
                  v1152 = 0;
                  v1151 = *v815 + *(v815 + 80);
                  LODWORD(v1152) = v836;
                  v835 = v1150;
                  v843 = nrPacketToTLV((v1154 + *(v1150 + 14)), (WORD1(v1153) - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v844 = _NRCopyLogObjectForNRUUID(v835[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v855 = v844;
                      v856 = os_log_type_enabled(v844, OS_LOG_TYPE_INFO);

                      v835 = v1150;
                      if (!v856)
                      {
                        goto LABEL_1253;
                      }
                    }

                    v853 = _NRCopyLogObjectForNRUUID(v835[6]);
                    v857 = getESPSequenceNumberFromPacket(v1154, WORD1(v1153));
                    v858 = getESPSPIFromPacket(v1154, WORD1(v1153));
                    _NRLogWithArgs(v853, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2027, v1134, v843, v857, v858);
LABEL_1274:

                    v835 = v1150;
                  }

LABEL_1253:
                  v823 |= 0x80u;
                  goto LABEL_1254;
                }

                if (v840)
                {
                  v845 = v839 + v838;
                  v1151 = 0;
                  v1152 = 0;
                  v1151 = *v815 + *(v815 + 80);
                  LODWORD(v1152) = v836;
                  v835 = v1150;
                  v846 = v840;
                  v843 = nrPacketToTLV((v845 + *(v1150 + 14)), (v840 - *(v1150 + 14)), &v1151, 1, (v1150 + 86), (v1150 + 88));
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_1250:
                    v823 |= 0x100u;
                    goto LABEL_1254;
                  }

                  v854 = _NRCopyLogObjectForNRUUID(v835[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v860 = v854;
                    LODWORD(v1146) = os_log_type_enabled(v854, OS_LOG_TYPE_INFO);

                    v835 = v1150;
                    if (!v1146)
                    {
                      goto LABEL_1250;
                    }
                  }

                  v861 = _NRCopyLogObjectForNRUUID(v835[6]);
                  v1146 = getESPSequenceNumberFromPacket(v845, v846);
                  v862 = getESPSPIFromPacket(v845, v846);
                  _NRLogWithArgs(v861, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", "", "NRBluetoothPacketParserNexusToLinkLoop", 2037, v1134, v843, v1146, v862);

                  v835 = v1150;
                  goto LABEL_1250;
                }

                v823 |= 0x200u;
                if (gNRPacketLoggingEnabled != 1)
                {
LABEL_1265:
                  v843 = 0;
                  v835 = v1150;
                  goto LABEL_1254;
                }

                v859 = _NRCopyLogObjectForNRUUID(v1150[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v863 = v859;
                  v864 = os_log_type_enabled(v859, OS_LOG_TYPE_INFO);

                  if (!v864)
                  {
                    goto LABEL_1265;
                  }
                }

                v835 = v1150;
                v865 = _NRCopyLogObjectForNRUUID(v1150[6]);
                _NRLogWithArgs(v865, 1, "%s%.30s:%-4d %s: No data to write", "", "NRBluetoothPacketParserNexusToLinkLoop", 2039, v1134);

                v843 = 0;
LABEL_1254:
                *(v815 + 80) += v843;
                if ((v1149 & 8) != 0)
                {
                  v847 = 0;
                }

                else
                {
                  v847 = os_channel_get_next_slot();
                }

                ++v819;
                v835[56] = v835[56] + 1;
                *(v835 + 19) = 1;
                v820 += v843;
                if (!v847)
                {
                  v866 = 0;
                  v821 = v834;
                  goto LABEL_1287;
                }

                v848 = *(v815 + 82);
                if (v848 >= 0xB)
                {
                  v848 -= 11 * ((((117 * v848) >> 8) + (((v848 - ((117 * v848) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                *(v1148 + 4 * v848) = v823;
                if (v848 < 0xAu)
                {
                  v849 = v848 + 1;
                }

                else
                {
                  v849 = v848 - 10;
                }

                *(v815 + 82) = v849;
                v821 = v834;
                v834 = v847;
                v823 = 0;
              }

              v823 |= 0x40u;
              v163 = 0x280D73000uLL;
              if (gNRPacketLoggingEnabled != 1)
              {
                v866 = v834;
                v867 = *(v815 + 80);
                if (*(v815 + 80))
                {
                  goto LABEL_1288;
                }

                goto LABEL_1376;
              }

              v902 = v837;
              v903 = _NRCopyLogObjectForNRUUID(v835[6]);
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_1356;
              }

              v911 = v903;
              LODWORD(v1146) = os_log_type_enabled(v903, OS_LOG_TYPE_INFO);

              if (v1146)
              {
LABEL_1356:
                v912 = _NRCopyLogObjectForNRUUID(v1150[6]);
                _NRLogWithArgs(v912, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 1984, v1134, v836, v902);
              }

              v866 = v834;
LABEL_1287:
              v163 = 0x280D73000uLL;
              v867 = *(v815 + 80);
              if (!*(v815 + 80))
              {
                goto LABEL_1376;
              }

LABEL_1288:
              v1146 = v866;
              v1151 = 0;
              v868 = v163;
              if (*(v163 + 3640) == 1)
              {
                v891 = _NRCopyLogObjectForNRUUID(v1150[6]);
                if (sNRCopyLogToStdErr == 1)
                {

                  v868 = 0x280D73000;
                }

                else
                {
                  v897 = v891;
                  v898 = os_log_type_enabled(v891, OS_LOG_TYPE_INFO);

                  v868 = 0x280D73000;
                  if (!v898)
                  {
                    goto LABEL_1289;
                  }
                }

                v899 = _NRCopyLogObjectForNRUUID(v1150[6]);
                _NRLogWithArgs(v899, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2075, v1134, *(v815 + 80));
              }

LABEL_1289:
              v869 = (*(*v1145 + 8))(**v1145, *v815, *(v815 + 80), &v1151, 0, 0);
              v870 = v1150;
              v163 = v868;
              if (*(v868 + 3640) == 1)
              {
                v892 = _NRCopyLogObjectForNRUUID(v1150[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v900 = v892;
                  LODWORD(v1137) = os_log_type_enabled(v892, OS_LOG_TYPE_INFO);

                  v870 = v1150;
                  v163 = 0x280D73000;
                  if (!v1137)
                  {
                    goto LABEL_1290;
                  }
                }

                v901 = _NRCopyLogObjectForNRUUID(v870[6]);
                _NRLogWithArgs(v901, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", "", "NRBluetoothPacketParserNexusToLinkLoop", 2078, v1134, v869, v1151, *(v815 + 80));

                v163 = 0x280D73000;
                v870 = v1150;
              }

LABEL_1290:
              if (v869)
              {
                v871 = v823 | 0x800;
                v872 = v1151;
                if (!v1151)
                {
                  goto LABEL_1322;
                }

LABEL_1316:
                if (v872 < *(v815 + 80))
                {
                  if (!*(v163 + 3640))
                  {
                    goto LABEL_1318;
                  }

                  v904 = _NRCopyLogObjectForNRUUID(v1150[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_1359;
                  }

                  v913 = v904;
                  v914 = os_log_type_enabled(v904, OS_LOG_TYPE_INFO);

                  if (v914)
                  {
LABEL_1359:
                    v915 = _NRCopyLogObjectForNRUUID(v1150[6]);
                    _NRLogWithArgs(v915, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2092, v1134, *(v815 + 80), v1151);
                  }

LABEL_1318:
                  v871 |= 0x2000u;
                  memmove(*v815, (*v815 + v1151), *(v815 + 80) - v1151);
                  v887 = v1151;
                  *(v815 + 80) -= v1151;
                  v1143 = (v1143 + 1);
                  v163 = 0x280D73000;
LABEL_1321:
                  *(v1142 + v1150) += v887;
                  goto LABEL_1322;
                }

                if (!*(v163 + 3640))
                {
LABEL_1320:
                  v871 |= 0x4000u;
                  *(v815 + 80) = 0;
                  v887 = v1151;
                  goto LABEL_1321;
                }

                v905 = _NRCopyLogObjectForNRUUID(v1150[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v916 = v905;
                  v917 = os_log_type_enabled(v905, OS_LOG_TYPE_INFO);

                  v163 = 0x280D73000;
                  if (!v917)
                  {
                    goto LABEL_1320;
                  }
                }

                v918 = _NRCopyLogObjectForNRUUID(v1150[6]);
                _NRLogWithArgs(v918, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", "", "NRBluetoothPacketParserNexusToLinkLoop", 2099, v1134, *(v815 + 80), v1151);

                v163 = 0x280D73000;
                goto LABEL_1320;
              }

              if (v1144)
              {
                (v1144)(v870);
                v163 = 0x280D73000uLL;
              }

              *(v815 + 84) |= 1u;
              v873 = *(v815 + 83);
              if (v873 > 1)
              {
                if (v873 == 2)
                {
                  v870[21] = v870[21] + 1;
                  v870[18] = (v870[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v815 + 84) & 1)));
                  if (*(v163 + 3640) != 1)
                  {
                    goto LABEL_1314;
                  }

                  v882 = _NRCopyLogObjectForNRUUID(v870[6]);
                  v883 = v882;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    v884 = v1150;
                  }

                  else
                  {
                    v922 = os_log_type_enabled(v882, OS_LOG_TYPE_INFO);

                    v884 = v1150;
                    v163 = 0x280D73000;
                    if (!v922)
                    {
                      goto LABEL_1314;
                    }
                  }

                  v886 = _NRCopyLogObjectForNRUUID(v884[6]);
                  _NRLogWithArgs(v886, 1, "%s%.30s:%-4d source-%s: High");
                }

                else
                {
                  if (v873 != 3)
                  {
                    goto LABEL_1314;
                  }

                  v870[23] = v870[23] + 1;
                  v870[18] = (v870[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v815 + 84) & 1)));
                  if (*(v163 + 3640) != 1)
                  {
                    goto LABEL_1314;
                  }

                  v878 = _NRCopyLogObjectForNRUUID(v870[6]);
                  v879 = v878;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    v880 = v1150;
                  }

                  else
                  {
                    v921 = os_log_type_enabled(v878, OS_LOG_TYPE_INFO);

                    v880 = v1150;
                    v163 = 0x280D73000;
                    if (!v921)
                    {
                      goto LABEL_1314;
                    }
                  }

                  v886 = _NRCopyLogObjectForNRUUID(v880[6]);
                  _NRLogWithArgs(v886, 1, "%s%.30s:%-4d source-%s: Isochronous");
                }

LABEL_1313:

                v163 = 0x280D73000uLL;
                goto LABEL_1314;
              }

              if (!*(v815 + 83))
              {
                v881 = _NRCopyLogObjectForNRUUID(v870[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v885 = v881;
                  LODWORD(v1137) = os_log_type_enabled(v881, OS_LOG_TYPE_ERROR);

                  v870 = v1150;
                  v163 = 0x280D73000;
                  if (!v1137)
                  {
                    goto LABEL_1314;
                  }
                }

                v886 = _NRCopyLogObjectForNRUUID(v870[6]);
                _NRLogWithArgs(v886, 16, "%s%.30s:%-4d invalid link channel priority");
                goto LABEL_1313;
              }

              if (v873 == 1)
              {
                v874 = v870[18];
                v870[19] = v870[19] + 1;
                v870[18] = (v874 & 0xFFFFFFFFFFFFFFFELL | *(v815 + 84) & 1);
                if (*(v163 + 3640) == 1)
                {
                  v875 = _NRCopyLogObjectForNRUUID(v870[6]);
                  v876 = v875;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    v877 = v1150;
                    goto LABEL_1365;
                  }

                  v920 = os_log_type_enabled(v875, OS_LOG_TYPE_INFO);

                  v877 = v1150;
                  v163 = 0x280D73000;
                  if (v920)
                  {
LABEL_1365:
                    v886 = _NRCopyLogObjectForNRUUID(v877[6]);
                    _NRLogWithArgs(v886, 1, "%s%.30s:%-4d source-%s: Medium");
                    goto LABEL_1313;
                  }
                }
              }

LABEL_1314:
              v871 = v823 | 0x1800;
              if (*(v163 + 3640) != 1)
              {
                v872 = v1151;
                if (!v1151)
                {
                  goto LABEL_1322;
                }

                goto LABEL_1316;
              }

              v896 = _NRCopyLogObjectForNRUUID(v1150[6]);
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_1352;
              }

              v908 = v896;
              v909 = os_log_type_enabled(v896, OS_LOG_TYPE_INFO);

              if (v909)
              {
LABEL_1352:
                v910 = _NRCopyLogObjectForNRUUID(v1150[6]);
                _NRLogWithArgs(v910, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 2086);
              }

              v163 = 0x280D73000;
              v872 = v1151;
              if (v1151)
              {
                goto LABEL_1316;
              }

LABEL_1322:
              LODWORD(v1147) = v1147 + 1;
              if ((v869 & 1) == 0)
              {
                goto LABEL_1377;
              }

              v888 = *(v815 + 82);
              if (v888 >= 0xB)
              {
                v888 -= 11 * ((((117 * v888) >> 8) + (((v888 - ((117 * v888) >> 8)) & 0xFE) >> 1)) >> 3);
              }

              v822 = 0;
              *(v1148 + 4 * v888) = v871;
              if (v888 < 0xAu)
              {
                v889 = v888 + 1;
              }

              else
              {
                v889 = v888 - 10;
              }

              *(v815 + 82) = v889;
            }
          }
        }

        v952 = _NRCopyLogObjectForNRUUID(v3[6]);
        _NRLogWithArgs(v952, 1, "%s%.30s:%-4d %s: starting NtL outer loop", "", "NRBluetoothPacketParserNexusToLinkLoop", 1938, v1134);

        v163 = 0x280D73000;
        goto LABEL_1223;
      }

      if (*(v163 + 3640) != 1)
      {
LABEL_1371:
        if (v1144)
        {
          (v1144)(v3);
        }

        v923 = *(v815 + 82);
        if (v923 >= 0xB)
        {
          v923 -= 11 * ((((117 * v923) >> 8) + (((v923 - ((117 * v923) >> 8)) & 0xFE) >> 1)) >> 3);
        }

        v924 = v923;
        *(v815 + 4 * v923 + 36) = 3;
        goto LABEL_1392;
      }

      v941 = v514;
      v942 = v162;
      v943 = _NRCopyLogObjectForNRUUID(v3[6]);
      v944 = v943;
      if (sNRCopyLogToStdErr == 1)
      {

        v3 = v1150;
        v162 = v942;
      }

      else
      {
        v953 = os_log_type_enabled(v943, OS_LOG_TYPE_INFO);

        v3 = v1150;
        v162 = v942;
        if (!v953)
        {
          goto LABEL_1371;
        }
      }

      v954 = _NRCopyLogObjectForNRUUID(v3[6]);
      _NRLogWithArgs(v954, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", "", "NRBluetoothPacketParserNexusToLinkLoop", 1903, v941, 100);

      goto LABEL_1371;
    }

    if (*(v163 + 3640) == 1)
    {
      v1092 = _NRCopyLogObjectForNRUUID(v1150[6]);
      v1093 = v1092;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v1100 = os_log_type_enabled(v1092, OS_LOG_TYPE_INFO);

        if (!v1100)
        {
          goto LABEL_1443;
        }
      }

      v1101 = _NRCopyLogObjectForNRUUID(v1150[6]);
      _NRLogWithArgs(v1101, 1, "%s%.30s:%-4d ", "", "NRBluetoothPacketParserNexusToLinkLoop", 1923);
    }

LABEL_1443:
    v935 = _NRCopyLogObjectForNRUUID(v1150[6]);
    v936 = v935;
    if (sNRCopyLogToStdErr == 1)
    {

      v3 = v1150;
    }

    else
    {
      v937 = os_log_type_enabled(v935, OS_LOG_TYPE_FAULT);

      v3 = v1150;
      if (!v937)
      {
        goto LABEL_1396;
      }
    }

    v938 = _NRCopyLogObjectForNRUUID(v3[6]);
    _NRLogWithArgs(v938, 17, "%s: Invalid write context for nexus priority: %u", v514, 100);

LABEL_1396:
    goto LABEL_1397;
  }

  v563 = nrCopyLogObj_560();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v564 = v563;
    v565 = os_log_type_enabled(v563, OS_LOG_TYPE_FAULT);

    if (!v565)
    {
      return;
    }
  }

  v1150 = nrCopyLogObj_560();
  _NRLogWithArgs(v1150, 17, "%s called with null linkWriteContext", "NRParserLinkWriteAvailable");
}