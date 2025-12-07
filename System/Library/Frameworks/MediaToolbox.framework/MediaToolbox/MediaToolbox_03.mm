uint64_t crabsUnlockWithActions(uint64_t a1)
{
  if (*(a1 + 176))
  {
    v2 = (*(a1 + 176) & 0x10) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    FigRetainProxyRetain();
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      CFRetain(Owner);
    }

    *(a1 + 176) |= 0x10u;
    CMNotificationCenterGetDefaultLocalCenter();
    FigThreadGetGlobalNetworkBufferingQueue();
    FigDeferNotificationToDispatchQueue();
  }

  return FigRetainProxyUnlockMutex();
}

void FigCRABSRead(uint64_t a1)
{
  OUTLINED_FUNCTION_22_3(a1);
  FigGetUpTimeNanoseconds();
  v3 = OUTLINED_FUNCTION_26_3();
  readOrRef(v3, v4, v5, v2, 0, v6, -1);
  if (v1)
  {
    *v1 = v16;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  OUTLINED_FUNCTION_21_3(UpTimeNanoseconds, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_843();
}

uint64_t readOrRef(const void *a1, size_t a2, unint64_t a3, char *a4, CMBlockBufferRef *a5, uint64_t *a6, int a7)
{
  v148 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v146 = 0;
  v13 = *(DerivedStorage + 760);
  if (v13)
  {
    v14 = CFRetain(v13);
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a1)
  {
LABEL_3:
    CFRetain(a1);
  }

LABEL_4:
  if (a5)
  {
    *a5 = 0;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, v133, v134);
    goto LABEL_223;
  }

  blockBufferOut = a5;
  v15 = 0;
  if (!a4)
  {
    goto LABEL_21;
  }

  v16 = a3;
  if (*(DerivedStorage + 96) < a2)
  {
    goto LABEL_22;
  }

  if (FigReadWriteLockLockForRead())
  {
LABEL_20:
    v15 = 0;
LABEL_21:
    v16 = a3;
    goto LABEL_22;
  }

  v17 = *(DerivedStorage + 160);
  v18 = a3 - v17;
  if (a3 < v17 || (v19 = *(DerivedStorage + 96) + v17, v20 = v19 - a3, v19 <= a3))
  {
    FigReadWriteLockUnlockForRead();
    goto LABEL_20;
  }

  v21 = a3;
  if (v20 >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = v19 - a3;
  }

  memcpy(a4, (*(DerivedStorage + 152) + v18), v22);
  FigReadWriteLockUnlockForRead();
  if (v20 >= a2)
  {
    if (a6)
    {
      v128 = v22;
      v38 = 0;
      *a6 = v128;
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_203;
  }

  v23 = v21;
  v16 = v22 + v21;
  v15 = v22;
  a3 = v23;
LABEL_22:
  v139 = a3;
  v24 = FigRetainProxyLockMutex();
  if (v24)
  {
LABEL_223:
    v38 = v24;
    goto LABEL_203;
  }

  if (FigRetainProxyIsInvalidated())
  {
    v38 = 4294954511;
    goto LABEL_203;
  }

  v143 = a2;
  v137 = a6;
  if ((*(DerivedStorage + 56) == -1 || !*(DerivedStorage + 80)) && !crabsUpdateLength(DerivedStorage))
  {
    v25 = crabsInitialize(DerivedStorage);
    if (v25)
    {
      LODWORD(v37) = v25;
LABEL_50:
      v39 = blockBufferOut;
      v40 = v15;
LABEL_174:
      v121 = v40 > 0 && v37 == -12930;
      if (v121)
      {
        v122 = 0;
      }

      else
      {
        v122 = v37;
      }

      if (v137)
      {
        *v137 = v40;
      }

      if (v143)
      {
        v123 = v122 == 0;
      }

      else
      {
        v123 = 0;
      }

      if (v123 && v40 == 0)
      {
        v122 = -12930;
      }

      if (v122 == -12930)
      {
        v38 = 4294954423;
      }

      else
      {
        v38 = v122;
      }

      if (v39 && v38 && *v39)
      {
        CFRelease(*v39);
        *v39 = 0;
      }

      if (v38 != -12873 && v38 != 0)
      {
        *(DerivedStorage + 176) |= 4u;
      }

      goto LABEL_202;
    }

    if (dword_1EAF16BD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  cf = a1;
  v27 = v16 >> 16;
  if (*(DerivedStorage + 56) == -1 || !*(DerivedStorage + 80))
  {
    if (*(DerivedStorage + 560) == 1)
    {
      v28 = (DerivedStorage + 512);
    }

    else
    {
      v28 = (DerivedStorage + 616);
      if (*(DerivedStorage + 664) != 1)
      {
        if (!*(DerivedStorage + 116) || (*(DerivedStorage + 504) & 8) != 0 && *(DerivedStorage + 360) == *(DerivedStorage + 88))
        {
          OUTLINED_FUNCTION_31_3();
          v33 = OUTLINED_FUNCTION_309();
          v32 = crabsIssueImmedLoad(v33, v34, v35, v36, 7782);
          if (v32)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v29 = OUTLINED_FUNCTION_309();
          v32 = crabsMoveFirehose(v29, v30, v31, 7771);
          v28 = (DerivedStorage + 512);
          if (v32)
          {
            goto LABEL_44;
          }
        }
      }
    }

    v32 = crabsWaitForLoad(DerivedStorage, v28, 0, 0, a7);
LABEL_44:
    LODWORD(v37) = v32;
    if (v32 == -12930)
    {
      v38 = 0;
    }

    else
    {
      v38 = v32;
    }

    if (v38)
    {
      if (v38 == -12785)
      {
        goto LABEL_202;
      }

      OUTLINED_FUNCTION_15_4(v38);
      goto LABEL_50;
    }
  }

  v41 = a2;
  if (*(DerivedStorage + 129))
  {
    OUTLINED_FUNCTION_31_3();
    if (v121)
    {
      v27 = v16 >> 14;
    }

    else if (v42 != 0x10000)
    {
      v27 = v16 / v42;
    }

    if (*(DerivedStorage + 184) >= 1)
    {
      v43 = 0;
      v44 = *(DerivedStorage + 192);
      do
      {
        *(v44 + 8 * v43++) = v27;
      }

      while (v43 < *(DerivedStorage + 184));
    }

    crabsMoveAnchor(DerivedStorage, v27);
    *(DerivedStorage + 129) = 0;
  }

  IsBusy = crabsDiskBackingIsBusy(DerivedStorage, 0);
  v40 = v15;
  if (v15 >= a2)
  {
    v45 = 0;
LABEL_159:
    v146 = v45;
    if (*(DerivedStorage + 560) == 1)
    {
      LODWORD(v37) = 0;
      a1 = cf;
      v39 = blockBufferOut;
      goto LABEL_174;
    }

    a1 = cf;
    v39 = blockBufferOut;
    if (!*(DerivedStorage + 116) || (v117 = *(DerivedStorage + 504), (v117 & 8) != 0) && *(DerivedStorage + 360) == *(DerivedStorage + 88))
    {
      LODWORD(v37) = 0;
      goto LABEL_174;
    }

    v118 = v40;
    if ((v117 & 3) == 0)
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (*(DerivedStorage + 496) > UpTimeNanoseconds)
      {
        goto LABEL_172;
      }

      *(DerivedStorage + 496) = UpTimeNanoseconds + 50000000;
    }

    LODWORD(v37) = 0;
    if (crabsSelectNextFill(DerivedStorage, &v146))
    {
      goto LABEL_173;
    }

    v120 = v146;
    if (!v146)
    {
      goto LABEL_173;
    }

    if (crabsShouldStartFirehose(DerivedStorage, *v146))
    {
      v38 = 4294954511;
      if (crabsMoveFirehose(DerivedStorage, *(DerivedStorage + 96) * *v120, "readOrRef", 8027) == -12785)
      {
        goto LABEL_202;
      }
    }

LABEL_172:
    LODWORD(v37) = 0;
LABEL_173:
    v40 = v118;
    goto LABEL_174;
  }

  v45 = 0;
  v135 = *MEMORY[0x1E695E480];
  v142 = v14;
  while (1)
  {
    v46 = *(DerivedStorage + 96);
    if (v46 == 0x4000)
    {
      v47 = v16 >> 14;
    }

    else if (v46 == 0x10000)
    {
      v47 = v16 >> 16;
    }

    else
    {
      v47 = v16 / v46;
    }

    if (v47 >= *(DerivedStorage + 88) || !*(DerivedStorage + 104))
    {
      goto LABEL_159;
    }

    v45 = *(*(DerivedStorage + 80) + 8 * v47);
    v145 = v40;
    if (!v45)
    {
      inited = crabsInitBlock(DerivedStorage, v47);
      v40 = v145;
      if (inited || (v45 = *(*(DerivedStorage + 80) + 8 * v47)) == 0)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, v133, v134);
        v38 = v127;
        goto LABEL_209;
      }
    }

    if ((~*(v45 + 8) & 0x14) != 0)
    {
      v49 = *(DerivedStorage + 192);
      v50 = *(DerivedStorage + 200);
      if (v49[v50] != v47)
      {
        v51 = (v50 + 1) % *(DerivedStorage + 184);
        *(DerivedStorage + 200) = v51;
        v52 = *(DerivedStorage + 224);
        v53 = v49[v51];
        v49[v51] = v47;
        v54 = *(DerivedStorage + 216);
        v55 = v54 < 1;
        v56 = v54 - 1;
        if (!v55)
        {
          *(DerivedStorage + 216) = v56;
        }

        if (v52 == v53)
        {
          v57 = *(DerivedStorage + 88);
          v58 = *(DerivedStorage + 184);
          if (v58 >= 1)
          {
            do
            {
              v60 = *v49++;
              v59 = v60;
              if (v57 >= v60)
              {
                v57 = v59;
              }

              --v58;
            }

            while (v58);
          }

          if (*(DerivedStorage + 224) != v57)
          {
            crabsMoveAnchor(DerivedStorage, v57);
            v40 = v145;
          }
        }
      }
    }

    v61 = v47 * v46;
    v62 = v16 - v47 * v46;
    if (*(DerivedStorage + 96) - v62 >= v41 - v40)
    {
      v63 = v41 - v40;
    }

    else
    {
      v63 = *(DerivedStorage + 96) - v62;
    }

    v64 = v63 + v16;
    if (a4 && (*(DerivedStorage + 504) & 1) != 0 && !IsBusy && v64 == v61 + *(v45 + 4))
    {
      v65 = *(v45 + 8);
      if ((v65 & 0x200) != 0)
      {
        if (((v65 >> 8) & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      else if (!*(v45 + 88))
      {
        goto LABEL_95;
      }

      if (!*(v45 + 80))
      {
        *&customBlockSource.version = v63;
        FigFileForkRead();
        v40 = v145;
        v102 = *&customBlockSource.version;
        goto LABEL_151;
      }
    }

LABEL_95:
    if (*(v45 + 80))
    {
      if ((*(DerivedStorage + 504) & 1) != 0 && v45 == *(DerivedStorage + 744))
      {
        crabsCompleteLazyPagein(DerivedStorage, 1);
LABEL_109:
        v40 = v145;
      }
    }

    else
    {
      if ((*(v45 + 8) & 0x80) != 0)
      {
        v67 = OUTLINED_FUNCTION_2_17();
        v66 = crabsMakeBackingNonvolatile(v67, v45, v68) != 0;
      }

      else
      {
        v66 = 0;
      }

      v69 = OUTLINED_FUNCTION_797();
      if (!crabAllocWorkingSet(v69, v70))
      {
        v71 = OUTLINED_FUNCTION_797();
        crabsSwipeUnusedWorking(v71, v72);
        if (v73)
        {
          v38 = v73;
          if (!v66)
          {
            goto LABEL_226;
          }

          v14 = v142;
          if ((*(DerivedStorage + 504) & 3) == 0)
          {
            v129 = OUTLINED_FUNCTION_797();
            crabsMakeBlockVolatileRelativeToAnchor(v129, v130);
          }

LABEL_209:
          a1 = cf;
          goto LABEL_202;
        }
      }

      v74 = *(v45 + 8);
      if ((v74 & 0x200) != 0)
      {
        v75 = (v74 >> 8) & 1;
      }

      else
      {
        OUTLINED_FUNCTION_400_1();
      }

      v41 = v143;
      v40 = v145;
      if (v75)
      {
        v76 = OUTLINED_FUNCTION_797();
        crabsPageInBlock(v76, v77, v78, v79, v80, v81, v82, v83);
        goto LABEL_109;
      }
    }

    if ((*(v45 + 8) & 4) == 0 && v64 > (v61 + *(v45 + 4)))
    {
      break;
    }

LABEL_127:
    v101 = v61 + *(v45 + 4);
    if (v64 <= v101)
    {
      v102 = v63;
    }

    else
    {
      v102 = v101 - v16;
    }

    if (v102 < 1)
    {
      goto LABEL_151;
    }

    if (a4)
    {
      memcpy(&a4[v40], (*(*(v45 + 80) + 16) + v139 + v40 - v47 * v46), v102);
      v103 = OUTLINED_FUNCTION_797();
      crabsRetainWorking(v103, v104);
      OUTLINED_FUNCTION_797();
      OUTLINED_FUNCTION_29_2();
      crabsReleaseWorking(v105, v106, v107, v108);
      goto LABEL_139;
    }

    if (blockBufferOut)
    {
      HIDWORD(customBlockSource.AllocateBlock) = 0;
      *&customBlockSource.version = 0;
      customBlockSource.FreeBlock = crabsBBufRefReleaseFn;
      customBlockSource.refCon = *(v45 + 80);
      if (!*blockBufferOut)
      {
        Empty = CMBlockBufferCreateEmpty(v135, (v143 - 1 + *(DerivedStorage + 96)) / *(DerivedStorage + 96) + 1, 0, blockBufferOut);
        v40 = v145;
        if (Empty)
        {
          LODWORD(v37) = Empty;
          goto LABEL_220;
        }
      }

      if ((v40 + v139 - v61) >= 0)
      {
        appended = CMBlockBufferAppendMemoryBlock(*blockBufferOut, *(*(v45 + 80) + 16), *(DerivedStorage + 96), 0, &customBlockSource, v40 + v139 - v61, v102, 0);
        if (!appended)
        {
          v111 = OUTLINED_FUNCTION_797();
          crabsRetainWorking(v111, v112);
          CFRetain(cf);
          ++qword_1EAF189F0;
          ++*(DerivedStorage + 872);
          v113 = *(DerivedStorage + 96);
          qword_1EAF189E0 += v113;
          *(DerivedStorage + 856) += v113;
          v41 = v143;
LABEL_139:
          if (!FigReadWriteLockLockForWrite())
          {
            if ((*(v45 + 8) & 4) == 0)
            {
              v114 = *(DerivedStorage + 160);
              goto LABEL_143;
            }

            v115 = *(DerivedStorage + 96);
            v114 = *(DerivedStorage + 160);
            if (v115 >= v41)
            {
              if (v114 != v61)
              {
                memcpy(*(DerivedStorage + 152), *(*(v45 + 80) + 16), v115);
LABEL_148:
                *(DerivedStorage + 160) = v61;
              }
            }

            else
            {
LABEL_143:
              if (v114 != v61)
              {
                v61 = -1;
                goto LABEL_148;
              }
            }

            FigReadWriteLockUnlockForWrite();
          }

          v40 = v145;
          goto LABEL_151;
        }

        LODWORD(v37) = appended;
        v40 = v145;
LABEL_220:
        v39 = blockBufferOut;
        v14 = v142;
        a1 = cf;
        if (*blockBufferOut)
        {
          CFRelease(*blockBufferOut);
          v40 = v145;
          *blockBufferOut = 0;
        }

        goto LABEL_174;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, v133, v134);
      LODWORD(v37) = v131;
LABEL_217:
      a1 = cf;
      v39 = blockBufferOut;
      v14 = v142;
      v40 = v145;
      goto LABEL_174;
    }

LABEL_151:
    v40 += v102;
    v16 += v102;
    v116 = v102 < v63 || v40 >= v41;
    v14 = v142;
    if (v116)
    {
      goto LABEL_159;
    }
  }

  LOBYTE(customBlockSource.version) = 0;
  *(DerivedStorage + 176) |= 4u;
  v84 = OUTLINED_FUNCTION_797();
  crabsRetainWorking(v84, v85);
  if (*(DerivedStorage + 664) == 1 && (v86 = *(DerivedStorage + 632), v86 <= v16) && *(DerivedStorage + 640) + v86 >= v64 && (v87 = (DerivedStorage + 616), *(DerivedStorage + 648) + v86 < v64) || ((*(DerivedStorage + 504) & 8) == 0 || *(DerivedStorage + 116) && *(DerivedStorage + 360) != *(DerivedStorage + 88)) && (v88 = OUTLINED_FUNCTION_797(), v91 = crabsEvaluateFirehose(v88, v89, 0, v90), v91 | LOBYTE(customBlockSource.version)) && ((v87 = (DerivedStorage + 512), !LOBYTE(customBlockSource.version)) || (v92 = OUTLINED_FUNCTION_309(), v94 = crabsMoveFirehose(v92, v93, "readOrRef", 7900), v87 = (DerivedStorage + 512), !v94)) || (v95 = OUTLINED_FUNCTION_309(), v37 = crabsIssueImmedLoad(v95, v96, v63, "readOrRef", 7912), v87 = (DerivedStorage + 616), !v37))
  {
    v37 = crabsWaitForLoad(DerivedStorage, v87, v16, v63, a7);
  }

  if (v37 != -12785)
  {
    OUTLINED_FUNCTION_797();
    OUTLINED_FUNCTION_29_2();
    crabsReleaseWorking(v97, v98, v99, v100);
    if (v37 && v37 != -12930)
    {
      OUTLINED_FUNCTION_15_4(v37);
      goto LABEL_217;
    }

    v41 = v143;
    v40 = v145;
    goto LABEL_127;
  }

  v38 = 4294954511;
LABEL_226:
  a1 = cf;
  v14 = v142;
LABEL_202:
  crabsUnlockWithActions(DerivedStorage);
LABEL_203:
  if (v14)
  {
    CFRelease(v14);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  return v38;
}

uint64_t crabsInitBlock(uint64_t a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x68uLL, 0x10B0040C2E76BD9uLL);
  if (v4)
  {
    if (*(a1 + 504))
    {
      v4[4] |= 0x200u;
    }

    v5 = 0;
    *v4 = a2;
    *(v4 + 12) = -1;
    *(*(a1 + 80) + 8 * a2) = v4;
  }

  else
  {
    crabsInitBlock_cold_1(&v7);
    return v7;
  }

  return v5;
}

uint64_t crabAllocWorkingSet(CFAllocatorRef *a1, uint64_t a2)
{
  if (a1[43] > 15)
  {
    return 0;
  }

  v5 = MEMORY[0x19A8CC720](*a1, a1[12], 801318823, 0);
  if (v5)
  {
    goto LABEL_4;
  }

  if (a1[63])
  {
    return 0;
  }

  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = *(a2 + 8);
  *(a2 + 8) = v10 | 0x400;
  crabsSwipeBacking(a1, v12, 0);
  v2 = 0;
  v5 = *(&v13 + 1);
  *(a2 + 8) = *(a2 + 8) & 0xFBFF | v10 & 0x400;
  if (!v11)
  {
    if (v5)
    {
LABEL_4:
      v6 = (a1 + 12);
      v7 = vld1q_dup_f64(v6);
      gCRABS_Stats = vaddq_s64(gCRABS_Stats, v7);
      *(a1 + 105) = vaddq_s64(*(a1 + 105), v7);
      v8 = malloc_type_malloc(0x20uLL, 0x10300405ED1140EuLL);
      *(a2 + 80) = v8;
      if (v8)
      {
        *v8 = a2;
        v8[1] = a1;
        *(v8 + 6) = 0;
        v8[2] = v5;
        v2 = 1;
        addToWorkingSet(a1, a2, 1, 1);
        return v2;
      }

      CFAllocatorDeallocate(*a1, v5);
      return 0;
    }
  }

  return v2;
}

vm_address_t QTMovieCacheMemAllocateCallBack(vm_size_t size, uint64_t a2, uint64_t a3)
{
  valuePtr = size;
  address = 0;
  if (*(a3 + 16) + size > *(a3 + 24))
  {
    return 0;
  }

  v4 = size;
  v5 = MEMORY[0x1E69E9A60];
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, size, 1610612739))
  {
    return 0;
  }

  v7 = *(a3 + 16);
  if (!v7)
  {
    *a3 = v4;
    goto LABEL_13;
  }

  if (*a3 == v4)
  {
LABEL_13:
    *(a3 + 16) = v7 + v4;
    return address;
  }

  v8 = *MEMORY[0x1E695E480];
  if (*(a3 + 8) || (memset(&v12, 0, sizeof(v12)), v9 = CFDictionaryCreateMutable(v8, 0, &v12, MEMORY[0x1E695E9E8]), (*(a3 + 8) = v9) != 0))
  {
    v10 = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      CFDictionaryAddValue(*(a3 + 8), address, v10);
      CFRelease(v11);
      v4 = valuePtr;
      if (*(a3 + 8))
      {
        v7 = *(a3 + 16);
        goto LABEL_13;
      }
    }

    else
    {
      v4 = valuePtr;
    }
  }

  MEMORY[0x19A8D6C70](*v5, address, v4);
  return 0;
}

uint64_t addToWorkingSet(void *a1, uint64_t a2, int a3, int a4)
{
  FigSimpleMutexLock();
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  if (v8)
  {
    v10 = (v8 + 72);
LABEL_5:
    *v10 = v9;
    *v9 = v8;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    goto LABEL_6;
  }

  if (v9)
  {
    v10 = a1 + 47;
    goto LABEL_5;
  }

LABEL_6:
  result = FigSimpleMutexUnlock();
  v12 = a2 + 32;
  if (!*(a2 + 32) && !*(a2 + 40))
  {
    if (a3)
    {
      if (!a4)
      {
        v18 = a1[40];
        *(a2 + 32) = 0;
        *(a2 + 40) = v18;
        *v18 = a2;
        a1[40] = v12;
        goto LABEL_22;
      }

      v13 = a1 + 39;
      v14 = a1[39];
      *(a2 + 32) = v14;
      if (v14)
      {
        v15 = (v14 + 40);
      }

      else
      {
        v15 = a1 + 40;
      }

      *v15 = v12;
      a1[39] = a2;
    }

    else
    {
      ++a1[44];
      *(a2 + 8) |= 0x20u;
      if (!a4)
      {
        v19 = a1[42];
        *(a2 + 32) = 0;
        *(a2 + 40) = v19;
        *v19 = a2;
        a1[42] = v12;
        goto LABEL_22;
      }

      v13 = a1 + 41;
      v16 = a1[41];
      *(a2 + 32) = v16;
      if (v16)
      {
        v17 = (v16 + 40);
      }

      else
      {
        v17 = a1 + 42;
      }

      *v17 = v12;
      a1[41] = a2;
    }

    *(a2 + 40) = v13;
LABEL_22:
    ++a1[43];
  }

  return result;
}

void *crabsRetainWorking(void *a1, void *a2)
{
  result = FigAtomicIncrement32();
  if (result == 1 && (a2[4] || a2[5]))
  {
    v5 = a1[12];
    *(&gCRABS_Stats + 1) -= v5;
    a1[106] -= v5;

    return removeFromWorkingSet(a1, a2);
  }

  return result;
}

void *removeFromWorkingSet(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x20) != 0)
  {
    --result[44];
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    if (*(a2 + 32) != 0)
    {
      v9 = result + 42;
      if (v7)
      {
        v9 = (v7 + 40);
      }

      *v9 = v8;
      *v8 = v7;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
    }

    *(a2 + 8) = v2 & 0xFFDF;
  }

  else
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    v3 = (a2 + 32);
    if (v4 | v5)
    {
      v6 = result + 40;
      if (v4)
      {
        v6 = (v4 + 40);
      }

      *v6 = v5;
      *v5 = v4;
      *v3 = 0;
      v3[1] = 0;
    }
  }

  --result[43];
  return result;
}

uint64_t crabsEvaluateFirehose(uint64_t a1, int *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (*(a1 + 560) != 1 || *(a1 + 56) == -1 || !*(a1 + 80))
  {
    return 0;
  }

  v4 = *(a1 + 528);
  v5 = *(a1 + 544);
  v6 = v5 + v4;
  v7 = *(a1 + 96);
  if (v7 == 0x4000)
  {
    v8 = v6 >> 14;
  }

  else
  {
    v8 = v6 / v7;
    if (v7 == 0x10000)
    {
      v8 = v6 >> 16;
    }
  }

  v9 = *a2;
  v10 = v7 * v9;
  if (v4 <= v7 * v9 + a2[1] && *(a1 + 536) + v4 >= v10 + v7 && v6 < v10 + v7)
  {
    if (v5 < 1)
    {
      if (v7 == 0x4000)
      {
        v12 = v4 >> 14;
      }

      else if (v7 == 0x10000)
      {
        v12 = v4 >> 16;
      }

      else
      {
        v12 = v4 / v7;
      }

      if (v12 > v9 || v12 + 2 < v9)
      {
        goto LABEL_26;
      }
    }

    else if (*(a1 + 584) / *(a1 + 600) + v6 < v10)
    {
      goto LABEL_26;
    }

    v13 = 1;
LABEL_61:
    *a4 = 0;
    return v13;
  }

LABEL_26:
  if (!a3)
  {
    v16 = 1;
LABEL_38:
    if (*(a1 + 568) >= 1)
    {
      v16 = 0;
      *a4 = 0;
    }

    goto LABEL_40;
  }

  v14 = v8 + 2;
  if (__OFSUB__(v8, v8 + 2))
  {
    v14 = v8;
  }

  v15 = v14 + 1;
  v16 = 1;
  v17 = v8;
  do
  {
    if (v17 >= *(a1 + 88))
    {
      break;
    }

    v18 = *(*(a1 + 80) + 8 * v17);
    if (v18 && (*(v18 + 8) & 1) != 0)
    {
      v16 = 0;
      *a4 = 0;
    }

    ++v17;
  }

  while (v15 != v17);
  if (v16)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (*(a1 + 216) <= 0)
  {
    v23 = *(a1 + 184);
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = v8 - 8;
      v26 = v8 + 2;
      while (v16 && *(a1 + 116))
      {
        v27 = *(*(a1 + 192) + 8 * v24);
        if (v27 >= v25 && v27 <= v26)
        {
          v16 = 0;
          *a4 = 0;
          v23 = *(a1 + 184);
        }

        v22 = 0;
        if (++v24 >= v23)
        {
          return v22;
        }
      }
    }

    return 0;
  }

  v19 = *(a1 + 208);
  v20 = *(a1 + 88);
  if (v19 >= v20)
  {
    return 0;
  }

  while (1)
  {
    v21 = *(*(a1 + 80) + 8 * v19);
    if (!v21 || (*(v21 + 8) & 4) == 0)
    {
      break;
    }

    v22 = 0;
    if (v20 == ++v19)
    {
      return v22;
    }
  }

  v13 = 0;
  v22 = 0;
  if (*a2 != v19)
  {
    goto LABEL_61;
  }

  return v22;
}

uint64_t crabsMoveFirehose(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  IsBusy = crabsDiskBackingIsBusy(a1, 0);
  v7 = *(a1 + 760);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 560) == 1)
  {
    v9 = *(a1 + 512);
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (*(a1 + 56) == -1 || (v11 = *(a1 + 80)) == 0)
  {
    if (dword_1EAF16BD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = crabsIssueLoad(a1, a1 + 512, a2, 0, v10, v9);
  }

  else
  {
    v12 = *(a1 + 96);
    if (v12 == 0x4000)
    {
      v13 = a2 >> 14;
    }

    else if (v12 == 0x10000)
    {
      v13 = a2 >> 16;
    }

    else
    {
      v13 = a2 / v12;
    }

    v14 = *(a1 + 88);
    if (v13 >= v14)
    {
LABEL_23:
      if (v13 < v14)
      {
        v18 = v13 + 1;
        if (v13 + 1 < v14)
        {
          while (1)
          {
            v19 = *(v11 + 8 * v18);
            if (v19)
            {
              if ((*(v19 + 8) & 4) != 0 && (!IsBusy || *(v19 + 80)))
              {
                break;
              }
            }

            if (v14 == ++v18)
            {
              v18 = v14;
              break;
            }
          }
        }

        v20 = *(a1 + 96);
        v21 = v20 * v13;
        v22 = v20 * v18;
        if (dword_1EAF16BD0)
        {
          v27 = v20 * v18;
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v22 = v27;
        }

        v23 = *(a1 + 920);
        if (v23)
        {
          v24 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v24)
          {
            v24(v23, 0x1F0B64598, 0x1F0B3F378, 1);
          }
        }

        v16 = crabsIssueLoad(a1, a1 + 512, v21, v22 - v21, v10, v9);
        if (!v16)
        {
          *(a1 + 112) = 1;
        }
      }

      else
      {
        v16 = 4294954366;
      }
    }

    else
    {
      while (1)
      {
        v15 = *(v11 + 8 * v13);
        if (!v15)
        {
          if (crabsInitBlock(a1, v13))
          {
            break;
          }

          v11 = *(a1 + 80);
          v15 = *(v11 + 8 * v13);
          if (!v15)
          {
            break;
          }
        }

        if ((*(v15 + 8) & 4) != 0 && (!IsBusy || *(v15 + 80)) && ++v13 < *(a1 + 88))
        {
          continue;
        }

        v14 = *(a1 + 88);
        goto LABEL_23;
      }

      crabsMoveFirehose_cold_1(v28);
      v16 = v28[0];
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v16;
}

uint64_t crabsIssueLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *(a1 + 760);
  if (v11)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v63 = CFRetain(v13);
  }

  else
  {
    v63 = 0;
  }

  v14 = *(a1 + 920);
  if (v14)
  {
    v15 = CFRetain(v14);
    if (!a5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = 0;
    if (!a5)
    {
      goto LABEL_19;
    }
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v17 = UpTimeNanoseconds - *(a2 + 64);
  if (v17 >= 1 && v15)
  {
    v18 = UpTimeNanoseconds;
    v19 = *(a2 + 32);
    v61 = -256490088;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v20)
    {
      v20(v15, 0x1F0B64598, 0x1F0B3F338, v19);
    }

    v60 = v19;
    v21 = *(a2 + 64);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v22)
    {
      v22(v15, 0x1F0B64598, 0x1F0B3F358, (v18 - v21) / 0xF4240uLL);
    }

    v23 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v23)
    {
      v23(v15, 0x1F0B64598, 0x1F0B3F298, (v60 * 8.0 / (v17 / 1000000000.0)));
    }
  }

LABEL_19:
  v64 = 0;
  v24 = *(a1 + 56);
  if (v24 == -1 || (v25 = *(a1 + 80)) == 0)
  {
    v35 = *(a1 + 96);
    v28 = a3 / v35 * v35;
    v36 = a3 % v35 + a4;
    v37 = (a4 + a3) % v35;
    v38 = v36 + v35 - v37;
    if (!v37)
    {
      v38 = v36;
    }

    if (a4)
    {
      v31 = v38;
    }

    else
    {
      v31 = 0;
    }

LABEL_40:
    *(a2 + 16) = v28;
    *(a2 + 24) = v31;
    *(a2 + 32) = 0;
    *(a2 + 48) = 1;
    *a2 = 1;
    *(a2 + 64) = FigGetUpTimeNanoseconds();
    *(a2 + 96) = 0;
    v39 = FigAtomicIncrement32();
    *(a2 + 8) = v39;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = a1 + 512;
    FigCFDictionarySetInt();
    FigRetainProxyUnlockMutex();
    if (a5)
    {
      v42 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v42)
      {
        v42(v63, a6);
      }

      if (v15)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 32))
        {
          v43 = OUTLINED_FUNCTION_267_0();
          v44(v43);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 32))
        {
          v45 = OUTLINED_FUNCTION_267_0();
          v46(v45);
        }
      }
    }

    v47 = v63;
    v48 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v48)
    {
      v31 = v48(v63, v28, v31, Mutable, crabsIncrementalReadCallback, v12, v39, &v64);
    }

    else
    {
      v31 = 4294954514;
    }

    FigRetainProxyLockMutex();
    if (!FigRetainProxyIsInvalidated())
    {
      if (v31)
      {
        *(a2 + 48) = v31;
        *a2 = 1;
        goto LABEL_70;
      }

      if (v39 == *(a2 + 8) && *a2 == 1)
      {
        *a2 = v64;
        if (v15)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 32))
          {
            v49 = OUTLINED_FUNCTION_797();
            v50(v49);
          }

          if (v41 != a2)
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 32))
            {
              v51 = OUTLINED_FUNCTION_797();
              v52(v51);
            }

            goto LABEL_62;
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 32))
          {
            v58 = OUTLINED_FUNCTION_797();
            v59(v58);
          }
        }

        else if (v41 != a2)
        {
LABEL_62:
          v31 = 0;
          ++*(a1 + 836);
          goto LABEL_70;
        }

        v31 = 0;
        ++*(a1 + 832);
LABEL_70:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v15)
        {
          goto LABEL_73;
        }

        goto LABEL_74;
      }

      FigRetainProxyUnlockMutex();
      v53 = v64;
      v54 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v54)
      {
        v54(v63, v53);
      }

      FigRetainProxyLockMutex();
      if (!FigRetainProxyIsInvalidated())
      {
        if (v15)
        {
          v55 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v55)
          {
            v55(v15, 0x1F0B64598, 0x1F0B655B8, 1);
          }
        }

        OUTLINED_FUNCTION_5_8();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v61, a6);
        v31 = v56;
        goto LABEL_70;
      }
    }

    v31 = 4294954511;
    goto LABEL_70;
  }

  v26 = *(a1 + 96);
  v27 = a3 / v26;
  v28 = a3 / v26 * v26;
  v29 = (a4 + a3) % v26;
  if (v29)
  {
    v30 = v26 - v29;
  }

  else
  {
    v30 = 0;
  }

  if (a3 % v26 + a4 + v30 + v28 <= v24)
  {
    v31 = a3 % v26 + a4 + v30;
  }

  else
  {
    v31 = v24 - v28;
  }

  v32 = v28 >> 14;
  if (v26 == 0x10000)
  {
    v27 = v28 >> 16;
  }

  if (v26 != 0x4000)
  {
    v32 = v27;
  }

  v33 = *(v25 + 8 * v32);
  if (!v33)
  {
    goto LABEL_40;
  }

  v34 = *(v33 + 4);
  if (!v34)
  {
    goto LABEL_40;
  }

  v31 -= v34;
  if (v31)
  {
    v28 += v34;
    goto LABEL_40;
  }

  *(a2 + 48) = 0;
  v47 = v63;
  if (v15)
  {
LABEL_73:
    CFRelease(v15);
  }

LABEL_74:
  if (v47)
  {
    CFRelease(v47);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v31;
}

uint64_t crabsWaitForLoad(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v105 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 760);
  if (v11)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v14 = CFRetain(Owner);
  }

  else
  {
    v14 = 0;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  ++a2[7];
  clock = HostTimeClock;
  if (a5 == -1)
  {
    v20 = *(a1 + 968);
    CMTimeMake(&time, *(a1 + 48), 1000);
    v18 = FigNetworkUrgencyAssertDeadline(v20, &time);
    v19 = 0.0;
  }

  else
  {
    CMClockGetTime(&time, HostTimeClock);
    v16 = a5 * 1000000.0 + CMTimeGetSeconds(&time) * 1000000000.0;
    v17 = *(a1 + 968);
    CMTimeMake(&time, a5, 1000);
    v18 = FigNetworkUrgencyAssertDeadline(v17, &time);
    v19 = v16;
  }

  FigRetainProxyUnlockMutex();
  v21 = FigThreadRegisterAbortAction();
  FigRetainProxyLockMutex();
  if (!v21)
  {
    v84 = v18;
    v85 = v14;
    if (FigRetainProxyIsInvalidated() || !*(a1 + 104))
    {
LABEL_81:
      v21 = 4294954425;
      goto LABEL_74;
    }

    v80 = v5;
    if (*(a1 + 56) != -1 && a4 && *(a1 + 80))
    {
      OUTLINED_FUNCTION_31_3();
      if (v25)
      {
        v26 = a3 >> 14;
      }

      else
      {
        v26 = v23 == 0x10000 ? a3 >> 16 : a3 / v23;
      }

      v27 = *(v24 + 8 * v26);
      if (v27)
      {
        v28 = v27[1] + v23 * *v27;
        v29 = v28 <= a3;
        v30 = v28 - a3;
        if (!v29)
        {
          if (v30 >= a4)
          {
            v30 = a4;
          }

          a3 += v30;
          a4 -= v30;
        }
      }
    }

    v90 = 0;
    v31 = a3 + a4;
    v88 = @"CoreMediaErrorDomain";
    *&v22 = 136316162;
    *v86 = v22;
    *&v22 = 136316418;
    *v81 = v22;
    *&v22 = 136315650;
    *v87 = v22;
    if (!a4)
    {
      goto LABEL_33;
    }

LABEL_27:
    v21 = *(a2 + 12);
    if (v21 == 1)
    {
      v32 = a2[2];
      if (v32 <= a3 && a2[3] + v32 >= v31 && a2[4] + v32 < v31 && !crabsRangeInBlockIsCached(a1, a3, a4))
      {
        while (1)
        {
          if (a5 == -1)
          {
            v90 = *(a1 + 400);
          }

          else
          {
            CMClockGetTime(&time, clock);
            if ((v19 + CMTimeGetSeconds(&time) * -1000000000.0) < 1)
            {
              v21 = 4294966295;
              goto LABEL_74;
            }
          }

          v21 = FigRetainProxyConditionVariableWaitRelative();
          if (FigRetainProxyIsInvalidated())
          {
            goto LABEL_73;
          }

          if (v21 == -12792)
          {
            crabsReportingReportError(a1, v88, @"CRABS Timed out", -1001);
            OUTLINED_FUNCTION_1_18();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(type)))
            {
              v34 = HIDWORD(type);
            }

            else
            {
              v34 = HIDWORD(type) & 0xFFFFFFFE;
            }

            if (v34)
            {
              v92 = v86[0];
              OUTLINED_FUNCTION_5_10();
              v98 = 1024;
              v99 = -1001;
              v100 = 1024;
              LODWORD(v101) = a5;
              OUTLINED_FUNCTION_4_13();
              _os_log_send_and_compose_impl(v35, v36, v37, v38, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(type), "<<<< CRABS >>>> %s: [%p] Request %llu Wait time out - %d (msRequestTimeout %d)", v77, v78, v79, v80, LODWORD(v81[0]));
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v21 = 4294966295;
          }

          if (a5 == -1 && v21 && v90 != *(a1 + 400))
          {
            if (dword_1EAF16BD0)
            {
              v83 = a3;
              OUTLINED_FUNCTION_1_18();
              v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v54 = os_log_type_enabled(v53, BYTE3(type));
              if (OUTLINED_FUNCTION_115_1(v54))
              {
                v55 = *a2;
                v56 = *(a1 + 400);
                v92 = v81[0];
                v93 = "crabsWaitForLoad";
                v94 = 2048;
                v95 = a1;
                v96 = 2048;
                v97 = v55;
                v98 = 1024;
                v99 = v21;
                v100 = 2048;
                v101 = v90;
                v102 = 2048;
                v103 = v56;
                OUTLINED_FUNCTION_4_13();
                _os_log_send_and_compose_impl(v57, v58, v59, v60, &dword_1962D5000, v53, BYTE3(type), "<<<< CRABS >>>> %s: [%p] Request %llu has received data, cancel waitErr %d, prevSeed %lld dataArrivedSeed %lld", v77, v78, v79, v80, v81[0], v81[1]);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414(v66, v67, v68, v69, v70);
            }
          }

          else if (v21)
          {
            goto LABEL_74;
          }

          v39 = *(a1 + 104);
          if (!*(a1 + 104) && dword_1EAF16BD0)
          {
            OUTLINED_FUNCTION_1_18();
            v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v48 = OUTLINED_FUNCTION_33_3(v40, v41, v42, v43, v44, v45, v46, v47, v77, v78, v79, v80, v81[0], v81[1], v82, v83, v84, v85, v86[0], v86[1], v87[0], v87[1], v88, clock, v90, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
            if (OUTLINED_FUNCTION_115_1(v48))
            {
              v92 = v87[0];
              OUTLINED_FUNCTION_5_10();
              OUTLINED_FUNCTION_4_13();
              _os_log_send_and_compose_impl(v49, v50, v51, v52, &dword_1962D5000, &unk_1EAF16000, v21, "<<<< CRABS >>>> %s: [%p] Request %llu invalidated while waiting for load", v77, v78, v79);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414(v61, v62, v63, v64, v65);
            v39 = *(a1 + 104);
          }

          if (!v39)
          {
            goto LABEL_81;
          }

          v21 = *(a2 + 12);
          if (v21 > 1)
          {
            goto LABEL_74;
          }

          ++qword_1EAF18A08;
          ++*(a1 + 896);
          if (a4)
          {
            goto LABEL_27;
          }

LABEL_33:
          if (*(a1 + 56) != -1 && *(a1 + 80))
          {
            goto LABEL_73;
          }
        }
      }
    }

    OUTLINED_FUNCTION_31_3();
    if (v25)
    {
      v73 = a3 >> 14;
    }

    else if (v71 == 0x10000)
    {
      v73 = a3 >> 16;
    }

    else
    {
      v73 = a3 / v71;
    }

    v74 = *(v72 + 8 * v73);
    if (v74 && v74[1] + v71 * *v74 >= v31)
    {
LABEL_73:
      v21 = 0;
    }

    else if (v21 <= 1)
    {
      OUTLINED_FUNCTION_5_8();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v21 = v75;
    }

LABEL_74:
    FigRetainProxyUnlockMutex();
    FigThreadUnregisterAbortAction();
    FigRetainProxyLockMutex();
    v18 = v84;
    v14 = v85;
    if (FigRetainProxyIsInvalidated())
    {
      v21 = 4294954425;
    }
  }

  FigNetworkUrgencyCancelDeadline(*(a1 + 968), v18);
  --a2[7];
  if (v14)
  {
    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v21;
}

uint64_t FigCFHTTPReadResponse(uint64_t a1, int a2, uint64_t a3, void *a4, size_t a5, size_t a6, int a7, uint64_t a8)
{
  v9 = a8;
  HIDWORD(v447) = a7;
  v484[16] = *MEMORY[0x1E69E9840];
  v460 = 0;
  v461 = 0;
  HIBYTE(v459) = 0;
  blockBufferOut = 0;
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_115;
  }

  v436 = v8;
  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v16 = CFRetain(Owner);
  }

  else
  {
    v16 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = *(DerivedStorage + 56);
  if (v18)
  {
    v19 = DerivedStorage;
    while (*(v18 + 24) != a1 || *(v18 + 32) != a2)
    {
      v18 = *(v18 + 128);
      if (!v18)
      {
        goto LABEL_111;
      }
    }

    if (!*(v18 + 125))
    {
      FigAtomicIncrement32();
      v20 = BYTE4(v447);
      if (*(v18 + 104))
      {
        goto LABEL_13;
      }

      v484[0] = 0;
      v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v48 && !v48(a1, @"FHRP_CFNetworkTimingData", *MEMORY[0x1E695E480], v484))
      {
        LODWORD(v49) = FigNetworkInterfaceGetInterfaceTypeFromCFNStats(v484[0]);
        *(v19 + 388) = v49;
        if (!v484[0])
        {
          goto LABEL_52;
        }

        CFRelease(v484[0]);
      }

      LODWORD(v49) = *(v19 + 388);
LABEL_52:
      if (!v49)
      {
        v49 = *(v19 + 408);
        if (v49)
        {
          LODWORD(v49) = FigNetworkPathInformationGetInterfaceType(v49);
          *(v19 + 388) = v49;
        }
      }

      if (FigNetworkInterfaceIsCellular(v49))
      {
        ++*(v19 + 360);
      }

      fbf_ConfigurePathEvaluator(v19);
      *(v18 + 104) = 1;
LABEL_13:
      HIDWORD(v426) = v9;
      if (*(v19 + 72))
      {
        if (!v9)
        {
          if ((v447 & 0x100000000) != 0)
          {
            v484[0] = 0;
            v95 = fbf_httpRequestHandlesNetworkTransitions(a1);
            *(v18 + 124) = v95;
            fbf_UpdateAndReportMultiPathActivity(v19, v95);
            v96 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v96)
            {
              if (!v96(a1, @"FHRP_RemoteIPAddress", *MEMORY[0x1E695E480], v484))
              {
                v97 = *(v19 + 136);
                if (v97)
                {
                  if (CFEqual(v97, v484[0]))
                  {
                    CFRelease(v484[0]);
                  }

                  else
                  {
                    FigReportingAgentStatsAddToCountValue_1(*(v19 + 32), 0x1F0B645B8, 0x1F0B65778);
                    CFRelease(*(v19 + 136));
                    v124 = *(v19 + 144) + 1;
                    *(v19 + 136) = v484[0];
                    *(v19 + 144) = v124;
                  }
                }

                else
                {
                  *(v19 + 136) = v484[0];
                }

                fbf_ReportingAgentSetServerAddress(v19);
              }
            }
          }

          goto LABEL_16;
        }
      }

      else
      {
        v416 = v16;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 24) || (v50 = OUTLINED_FUNCTION_249(), v51(v50)))
        {
          *(v19 + 336) = 0;
        }

        fbf_GetResponseProperties(a1, v19);
        if (*(v19 + 32) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v52 = OUTLINED_FUNCTION_41_6();
          v53(v52);
        }

        fbf_ReportingAgentSetCDNHeaders(v19, a1);
        v20 = BYTE4(v447);
        if (!v9)
        {
          Error = fbf_ParseResponseHeadersAndSetLastError(a1, v19, 0);
          if (Error)
          {
            v9 = Error;
            goto LABEL_149;
          }

          v55 = fbf_httpRequestHandlesNetworkTransitions(a1);
          *(v18 + 124) = v55;
          fbf_UpdateAndReportMultiPathActivity(v19, v55);
          if (!*(v18 + 8))
          {
            *(v18 + 8) = *(v19 + 216) - *v18;
          }

          *(v19 + 72) = 1;
LABEL_16:
          if (!a4 || !a6)
          {
LABEL_73:
            if ((v20 & 2) == 0)
            {
              HTTPRequestFlags = fbf_CreateHTTPRequestFlags(v19);
              v63 = *(v18 + 36);
              if (((v63 ^ HTTPRequestFlags) & 0xFFFFFE7F) == 0)
              {
                if (!FigNetworkInterfaceIsCellular(*(v19 + 388)))
                {
                  if (!*(v18 + 105))
                  {
                    if (dword_1EAF16F58)
                    {
                      v83 = OUTLINED_FUNCTION_43_4(qword_1EAF16F50, v56, v64, v57, v58, v59, v60, v61, v386, v396, v406, v416, v426, v436, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, 0, *&type[4], 0);
                      v84 = v470;
                      v85 = type[0];
                      if (os_log_type_enabled(v83, type[0]))
                      {
                        v86 = v84;
                      }

                      else
                      {
                        v86 = v84 & 0xFFFFFFFE;
                      }

                      if (v86)
                      {
                        v87 = *(v18 + 36);
                        v88 = *(v19 + 388);
                        *cf = 136316162;
                        *&cf[4] = "FigCFHTTPReadResponse";
                        v472 = 2048;
                        v473 = v19;
                        v474 = 1024;
                        *v475 = v87;
                        *&v475[4] = 1024;
                        *&v475[6] = HTTPRequestFlags;
                        v476 = 1024;
                        LODWORD(v477) = v88;
                        OUTLINED_FUNCTION_47_0();
                        OUTLINED_FUNCTION_12_19();
                        _os_log_send_and_compose_impl(v89, v90, v91, v92, v93, v83, v85, v94);
                      }

                      OUTLINED_FUNCTION_7();
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      v20 = v457;
                    }

                    v9 = 0;
                    *(v18 + 105) = 1;
                    goto LABEL_83;
                  }

                  goto LABEL_82;
                }

                v63 = *(v18 + 36);
              }

              if (HTTPRequestFlags != v63)
              {
                v65 = *(v18 + 112);
                v66 = *(v18 + 8) - v65;
                if (dword_1EAF16F58)
                {
                  v67 = OUTLINED_FUNCTION_43_4(qword_1EAF16F50, v56, v65 + *v18, v57, v58, v59, v60, v61, v386, v396, v406, v416, v426, v65 + *v18, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, 0, *&type[4], 0);
                  v68 = type[0];
                  v69 = os_log_type_enabled(v67, type[0]);
                  if (OUTLINED_FUNCTION_28_1(v69))
                  {
                    v100 = *(v18 + 36);
                    v101 = *v18;
                    v102 = *(v18 + 8);
                    *cf = 136316930;
                    *&cf[4] = "FigCFHTTPReadResponse";
                    v472 = 2048;
                    v473 = v19;
                    v474 = 1024;
                    *v475 = v100;
                    *&v475[4] = 1024;
                    *&v475[6] = HTTPRequestFlags;
                    v476 = 2048;
                    v477 = v437;
                    v478 = 2048;
                    v479 = v66;
                    v480 = 2048;
                    v481 = v101;
                    v482 = 2048;
                    v483 = v102;
                    OUTLINED_FUNCTION_47_0();
                    OUTLINED_FUNCTION_12_19();
                    _os_log_send_and_compose_impl(v103, v104, v105, v106, v107, v67, v68, v108);
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_417(v109, v110, v111, v112, v113);
                }

                v114 = v16;
                v115 = *(v18 + 24);
                v116 = *(v18 + 32);
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 36) = HTTPRequestFlags;
                v117 = OUTLINED_FUNCTION_184();
                HTTPRequest = fbf_CreateHTTPRequest(v117, v118, v119, v66);
                if (HTTPRequest)
                {
                  *(v18 + 24) = v115;
                  *(v18 + 32) = v116;
                  *(v18 + 120) = HTTPRequest;
                  v16 = v114;
                  if (!*(v18 + 125))
                  {
                    v121 = OUTLINED_FUNCTION_184();
                    FigCFHTTPFinishReadRequest(v121, v122, 0);
                  }

                  goto LABEL_110;
                }

                if (v115)
                {
                  v123 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                  v16 = v114;
                  if (v123)
                  {
                    v123(v115);
                  }

                  CFRelease(v115);
                  v9 = 0;
                }

                else
                {
                  v9 = 0;
                  v16 = v114;
                }

                goto LABEL_141;
              }

LABEL_82:
              v9 = 0;
              goto LABEL_83;
            }

            FigReportingAgentUpdateFinalTransactionMetrics(*(v19 + 32), a1, 0, 1);
            *(v18 + 120) = -12930;
            if (*(v18 + 125))
            {
              goto LABEL_82;
            }

            v98 = OUTLINED_FUNCTION_184();
            FigCFHTTPFinishReadRequest(v98, v99, 1);
            if (!FigRetainProxyIsInvalidated())
            {
              goto LABEL_82;
            }

LABEL_110:
            ReadRequestRelease(v18);
            goto LABEL_111;
          }

          v416 = v16;
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v460 = UpTimeNanoseconds - *(v19 + 320);
          LODWORD(v461) = a6;
          ++*(v19 + 284);
          FigByteRateHistoryAddToSample(*(v19 + 344), &v460);
          if (FigByteRateHistoryGetCurrentSampleDuration(*(v19 + 344)) >= 100000000)
          {
            FigByteRateHistoryNextSample(*(v19 + 344));
          }

          v22 = *(v19 + 312) + v460;
          *(v19 + 312) = v22;
          *(v19 + 320) = UpTimeNanoseconds;
          v23 = *(v19 + 288) + a6;
          *(v19 + 288) = v23;
          if (v22 >= 1 && *(v19 + 32))
          {
            v406 = 0x1F0B645B8;
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v24 = OUTLINED_FUNCTION_41_6();
              v25(v24, 0x1F0B645B8);
            }

            v26 = *(v19 + 32);
            if (v26)
            {
              v27 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v27)
              {
                v27(v26, 0x1F0B645B8, 0x1F0B647F8, (v23 * 8.0 / (v22 / 1000000000.0)));
              }
            }
          }

          v20 = BYTE4(v447);
          if ((v447 & 0x400000000) != 0)
          {
            *(v19 + 296) += a6;
          }

          v16 = v416;
          if ((v447 & 0x800000000) != 0)
          {
            *(v19 + 304) += a6;
          }

          if (!a5 && CMBlockBufferGetDataLength(a4) == a6)
          {
            CFRetain(a4);
            blockBufferOut = a4;
            goto LABEL_35;
          }

          if (!CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a4, 0, 0, a5, a6, 0, &blockBufferOut))
          {
LABEL_35:
            v35 = *(v18 + 112);
            *(v18 + 112) = v35 + a6;
            if ((v35 + a6) >= *(v18 + 8))
            {
              v36 = 1;
              *(v18 + 127) = 1;
            }

            else
            {
              v36 = 0;
            }

            v37 = *(v19 + 24);
            if (v37)
            {
              CFRelease(v37);
              *(v19 + 24) = 0;
            }

            *(v19 + 328) = 0;
            if (*(v19 + 17) == 1)
            {
              if (dword_1EAF16F58)
              {
                v38 = OUTLINED_FUNCTION_43_4(qword_1EAF16F50, v28, v29, v30, v31, v32, v33, v34, v386, v396, v406, v416, v426, v8, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, 0, *&type[4], 0);
                v39 = v470;
                v40 = type[0];
                if (os_log_type_enabled(v38, type[0]))
                {
                  v41 = v39;
                }

                else
                {
                  v41 = v39 & 0xFFFFFFFE;
                }

                if (v41)
                {
                  *cf = 136315394;
                  OUTLINED_FUNCTION_1_50();
                  OUTLINED_FUNCTION_12_19();
                  _os_log_send_and_compose_impl(v42, v43, v44, v45, v46, v38, v40, v47);
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v20 = BYTE4(v447);
              }

              *(v19 + 17) = 0;
              *(v19 + 496) = 0;
              if (FigByteFlumePostHostAvailableNotification(v19))
              {
                fbf_ReportingAgentResetErrorStats(v19);
              }
            }

            (*(v18 + 16))(*(v18 + 40), *(v18 + 48), *(v18 + 64), v35, blockBufferOut, v36, 0);
            if (FigRetainProxyIsInvalidated())
            {
              goto LABEL_110;
            }

            goto LABEL_73;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v386, v396, v406);
          v9 = v125;
          if (!v125)
          {
            goto LABEL_196;
          }

LABEL_149:
          v470 = 0;
          v126 = *(v19 + 44);
          if (*(v19 + 40))
          {
            v127 = v126 == 1;
          }

          else
          {
            v127 = 0;
          }

          v129 = v127 || v126 == 2;
          FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v19 + 592), a1, *(v19 + 32), 0x1F0B645B8, v129);
          v130 = *(v19 + 72);
          if (v130)
          {
            if (*(v19 + 152))
            {
              v131 = *(v19 + 24);
              if (v131)
              {
                if (*(v19 + 216) > *(v19 + 160) && CFErrorGetCode(*(v19 + 24)) == -1009)
                {
                  CFErrorGetDomain(v131);
                  if (FigCFEqual() || (CFErrorGetDomain(v131), FigCFEqual()))
                  {
                    v164 = -17760;
                    fbf_ReleaseAndCreateLastError(v19, -17760, @"CoreMediaErrorDomain", @"File exceeds max size allowed over cellular.");
                    fbf_FailImmediately(v19);
                    v158 = 1;
LABEL_177:
                    FigByteFlumePostHostUnavailableNotification(v19);
                    FigRetainProxyRetainOwner();
                    FigCFHTTPStopAllReads(v19, v164);
                    FigRetainProxyReleaseOwner();
                    if (FigRetainProxyIsInvalidated())
                    {
                      v16 = v416;
                      goto LABEL_110;
                    }

                    if (!v130)
                    {
                      if (dword_1EAF16F58)
                      {
                        OUTLINED_FUNCTION_23_13();
                        v246 = OUTLINED_FUNCTION_22_11(qword_1EAF16F50, v239, v240, v241, v242, v243, v244, v245, v386, v396, v406, v416, v426, v436, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), type[0]);
                        v254 = OUTLINED_FUNCTION_15_15(v246, v247, v248, v249, v250, v251, v252, v253, v391, v401, v411, v421, v431, v442, v452, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), *type);
                        if (OUTLINED_FUNCTION_28_1(v254))
                        {
                          *cf = 136315394;
                          OUTLINED_FUNCTION_1_50();
                          OUTLINED_FUNCTION_12_19();
                          OUTLINED_FUNCTION_27_10(v308, v309, v310, v311, v312, v313, v314, v315);
                          OUTLINED_FUNCTION_24_9();
                        }

                        OUTLINED_FUNCTION_7();
                        OUTLINED_FUNCTION_417(v316, v317, v318, v319, v320);
                      }

                      *(v19 + 608) = 1;
                      fbf_FailImmediately(v19);
                      v321 = HIDWORD(v426);
                      if (!HIDWORD(v426))
                      {
                        v321 = v9;
                      }

                      fbf_ReportingAgentReportErrorEvent(v19, @"CoreMediaErrorDomain", @"Failed without successful flume open", 1u, v321);
                      goto LABEL_196;
                    }

                    if ((v158 & 1) == 0)
                    {
                      *(v19 + 17) = 1;
                      if (HIDWORD(v426) == -12421 || HIBYTE(v459))
                      {
                        v181 = *(v19 + 328) + 300000000000;
                        if (v181 >= FigGetUpTimeNanoseconds())
                        {
                          v206 = v470;
                          if (v470)
                          {
                            if (dword_1EAF16F58)
                            {
                              OUTLINED_FUNCTION_23_13();
                              v214 = OUTLINED_FUNCTION_22_11(qword_1EAF16F50, v207, v208, v209, v210, v211, v212, v213, v386, v396, v406, v416, v426, v436, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), type[0]);
                              v222 = OUTLINED_FUNCTION_15_15(v214, v215, v216, v217, v218, v219, v220, v221, v390, v400, v410, v420, v430, v441, v451, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), *type);
                              if (OUTLINED_FUNCTION_28_1(v222))
                              {
                                *cf = 136315650;
                                OUTLINED_FUNCTION_3_41();
                                v474 = v223;
                                *v475 = v224 / v225;
                                OUTLINED_FUNCTION_47_0();
                                OUTLINED_FUNCTION_12_19();
                                OUTLINED_FUNCTION_27_10(v226, v227, v228, v229, v230, v231, v232, v233);
                                OUTLINED_FUNCTION_24_9();
                              }

                              OUTLINED_FUNCTION_7();
                              OUTLINED_FUNCTION_417(v303, v304, v305, v306, v307);
                            }

                            *(v19 + 512) = &v206[FigGetUpTimeNanoseconds()];
                            FigHTTPRescheduleTimer(v206 / 1000000000.0, *(v19 + 48), *(v19 + 456));
                          }

                          else
                          {
                            if (dword_1EAF16F58)
                            {
                              OUTLINED_FUNCTION_23_13();
                              v262 = OUTLINED_FUNCTION_22_11(qword_1EAF16F50, v255, v256, v257, v258, v259, v260, v261, v386, v396, v406, v416, v426, v436, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), type[0]);
                              v270 = OUTLINED_FUNCTION_15_15(v262, v263, v264, v265, v266, v267, v268, v269, v392, v402, v412, v422, v432, v443, v453, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), *type);
                              if (OUTLINED_FUNCTION_28_1(v270))
                              {
                                *cf = 136315394;
                                OUTLINED_FUNCTION_1_50();
                                OUTLINED_FUNCTION_12_19();
                                OUTLINED_FUNCTION_27_10(v271, v272, v273, v274, v275, v276, v277, v278);
                                OUTLINED_FUNCTION_24_9();
                              }

                              OUTLINED_FUNCTION_7();
                              OUTLINED_FUNCTION_417(v347, v348, v349, v350, v351);
                            }

                            fbf_TryReconnect(v19);
                          }

                          goto LABEL_196;
                        }

                        if (!dword_1EAF16F58)
                        {
                          goto LABEL_195;
                        }

                        OUTLINED_FUNCTION_23_13();
                        v189 = OUTLINED_FUNCTION_22_11(qword_1EAF16F50, v182, v183, v184, v185, v186, v187, v188, v386, v396, v406, v416, v426, v436, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), type[0]);
                        v197 = OUTLINED_FUNCTION_15_15(v189, v190, v191, v192, v193, v194, v195, v196, v389, v399, v409, v419, v429, v440, v450, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), *type);
                        if (!OUTLINED_FUNCTION_28_1(v197))
                        {
                          goto LABEL_194;
                        }

                        *cf = 136315650;
                        OUTLINED_FUNCTION_3_41();
                        v474 = 1024;
                        *v475 = 30;
                        OUTLINED_FUNCTION_47_0();
                      }

                      else
                      {
                        if (!dword_1EAF16F58)
                        {
LABEL_195:
                          *(v19 + 512) = 0;
                          fbf_postConnectionToHostLostNotification(v19);
                          goto LABEL_196;
                        }

                        OUTLINED_FUNCTION_23_13();
                        v172 = OUTLINED_FUNCTION_22_11(qword_1EAF16F50, v165, v166, v167, v168, v169, v170, v171, v386, v396, v406, v416, v426, v436, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), type[0]);
                        v180 = OUTLINED_FUNCTION_15_15(v172, v173, v174, v175, v176, v177, v178, v179, v388, v398, v408, v418, v428, v439, v449, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), *type);
                        if (!OUTLINED_FUNCTION_28_1(v180))
                        {
LABEL_194:
                          OUTLINED_FUNCTION_7();
                          OUTLINED_FUNCTION_417(v234, v235, v236, v237, v238);
                          goto LABEL_195;
                        }

                        *cf = 136315650;
                        OUTLINED_FUNCTION_3_41();
                        v474 = 1024;
                        *v475 = HIDWORD(v426);
                        OUTLINED_FUNCTION_47_0();
                      }

                      OUTLINED_FUNCTION_12_19();
                      OUTLINED_FUNCTION_27_10(v198, v199, v200, v201, v202, v203, v204, v205);
                      OUTLINED_FUNCTION_24_9();
                      goto LABEL_194;
                    }

LABEL_196:
                    v16 = v416;
LABEL_141:
                    v20 = BYTE4(v447);
LABEL_83:
                    if (v20 & 2 | HIDWORD(v426) | v9)
                    {
                      v484[0] = 0;
                      if (HIDWORD(v426))
                      {
                        v70 = HIDWORD(v426);
                      }

                      else
                      {
                        v70 = v9;
                      }

                      v470 = 0;
                      *cf = 0;
                      v468 = 0;
                      *type = 0;
                      v466 = 0;
                      v467 = 0;
                      v464 = 0;
                      v465 = 0;
                      v462 = 0;
                      v463 = 0;
                      if (*(v19 + 648))
                      {
                        AllocatorForMedia = FigGetAllocatorForMedia();
                        v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v72)
                        {
                          v72(a1, @"FHRP_CFNetworkTimingData", AllocatorForMedia, cf);
                        }

                        FigCFDictionaryGetDoubleIfPresent();
                        FigCFDictionaryGetDoubleIfPresent();
                        FigCFDictionaryGetDoubleIfPresent();
                        FigCFDictionaryGetDoubleIfPresent();
                        v73 = FigGetAllocatorForMedia();
                        v74 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v74)
                        {
                          v74(a1, @"FHRP_CFNetworkTransactionMetrics", v73, type);
                        }

                        v75 = FigCFHTTPCreateAddressString(*(v19 + 136));
                        v76 = FigGetAllocatorForMedia();
                        v77 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v77)
                        {
                          v77(a1, 0x1F0B5D218, v76, &v470);
                        }

                        FigCFDictionaryGetInt64IfPresent();
                        FigCFDictionaryGetInt64IfPresent();
                        FigCreateErrorForOSStatus(v70, v484);
                        if (!v78)
                        {
                          v79 = FigGetAllocatorForMedia();
                          if (!FigMetricMediaResourceRequestEventCreate(v79, *(v19 + 168), v75, v464, v463, 0, v484[0], *type, *&v468, *&v467, *&v466, *&v465, &v462))
                          {
                            if (*(*(CMBaseObjectGetVTable() + 16) + 40))
                            {
                              v80 = OUTLINED_FUNCTION_249();
                              v81(v80);
                            }
                          }
                        }
                      }

                      else
                      {
                        v75 = 0;
                      }

                      if (*cf)
                      {
                        CFRelease(*cf);
                      }

                      if (*type)
                      {
                        CFRelease(*type);
                      }

                      if (v75)
                      {
                        CFRelease(v75);
                      }

                      if (v470)
                      {
                        CFRelease(v470);
                      }

                      if (v484[0])
                      {
                        CFRelease(v484[0]);
                      }

                      if (v462)
                      {
                        CFRelease(v462);
                      }
                    }

                    goto LABEL_110;
                  }
                }
              }
            }

            if (!*(v19 + 380))
            {
              if (dword_1EAF16F58)
              {
                OUTLINED_FUNCTION_23_13();
                v139 = OUTLINED_FUNCTION_22_11(qword_1EAF16F50, v132, v133, v134, v135, v136, v137, v138, v386, v396, v406, v416, v426, v8, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), type[0]);
                v147 = OUTLINED_FUNCTION_15_15(v139, v140, v141, v142, v143, v144, v145, v146, v387, v397, v407, v417, v427, v438, v448, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), *type);
                if (OUTLINED_FUNCTION_28_1(v147))
                {
                  *cf = 136315394;
                  OUTLINED_FUNCTION_1_50();
                  OUTLINED_FUNCTION_12_19();
                  OUTLINED_FUNCTION_27_10(v148, v149, v150, v151, v152, v153, v154, v155);
                  OUTLINED_FUNCTION_24_9();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_417(v159, v160, v161, v162, v163);
              }

              fbf_FailImmediately(v19);
LABEL_175:
              v158 = 1;
              goto LABEL_176;
            }

            FigCFHTTPGoInactiveIfUnreachable(v19, &v470);
            if (*(v19 + 392))
            {
              if (dword_1EAF16F58)
              {
                OUTLINED_FUNCTION_23_13();
                v286 = OUTLINED_FUNCTION_22_11(qword_1EAF16F50, v279, v280, v281, v282, v283, v284, v285, v386, v396, v406, v416, v426, v8, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), type[0]);
                v294 = OUTLINED_FUNCTION_15_15(v286, v287, v288, v289, v290, v291, v292, v293, v393, v403, v413, v423, v433, v444, v454, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), *type);
                if (OUTLINED_FUNCTION_28_1(v294))
                {
                  *cf = 136315394;
                  OUTLINED_FUNCTION_1_50();
                  OUTLINED_FUNCTION_12_19();
                  OUTLINED_FUNCTION_27_10(v295, v296, v297, v298, v299, v300, v301, v302);
                  OUTLINED_FUNCTION_24_9();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_417(v352, v353, v354, v355, v356);
              }

              FigHTTPRescheduleTimer(8073216000.0, *(v19 + 48), *(v19 + 456));
              fbf_CancelReconnect(v19);
              goto LABEL_175;
            }

            if (*(v19 + 17))
            {
              if (dword_1EAF16F58)
              {
                OUTLINED_FUNCTION_23_13();
                v329 = OUTLINED_FUNCTION_22_11(qword_1EAF16F50, v322, v323, v324, v325, v326, v327, v328, v386, v396, v406, v416, v426, v8, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), type[0]);
                v337 = OUTLINED_FUNCTION_15_15(v329, v330, v331, v332, v333, v334, v335, v336, v394, v404, v414, v424, v434, v445, v455, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), *type);
                if (OUTLINED_FUNCTION_28_1(v337))
                {
                  *cf = 136315394;
                  OUTLINED_FUNCTION_1_50();
                  OUTLINED_FUNCTION_12_19();
                  OUTLINED_FUNCTION_27_10(v338, v339, v340, v341, v342, v343, v344, v345);
                  OUTLINED_FUNCTION_24_9();
                }

                else
                {
                  v346 = 0;
                }

                v158 = 1;
                OUTLINED_FUNCTION_417(qword_1EAF16F50, 1, 1, v346, v346 != v484);
                goto LABEL_176;
              }

              goto LABEL_175;
            }

            if (dword_1EAF16F58)
            {
              OUTLINED_FUNCTION_23_13();
              v364 = OUTLINED_FUNCTION_22_11(qword_1EAF16F50, v357, v358, v359, v360, v361, v362, v363, v386, v396, v406, v416, v426, v8, v447, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), type[0]);
              v372 = OUTLINED_FUNCTION_15_15(v364, v365, v366, v367, v368, v369, v370, v371, v395, v405, v415, v425, v435, v446, v456, blockBufferOut, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, SHIDWORD(v468), *type);
              if (OUTLINED_FUNCTION_28_1(v372))
              {
                *cf = 136315650;
                *&cf[4] = "FigCFHTTPReadResponse";
                v472 = 2048;
                v473 = v19;
                v474 = 1024;
                *v475 = v470 / 0x3B9ACA00;
                OUTLINED_FUNCTION_47_0();
                OUTLINED_FUNCTION_12_19();
                OUTLINED_FUNCTION_27_10(v373, v374, v375, v376, v377, v378, v379, v380);
                OUTLINED_FUNCTION_24_9();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_417(v381, v382, v383, v384, v385);
            }
          }

          else
          {
            *(v19 + 72) = 2;
            v156 = *(v19 + 88);
            if (v156)
            {
              v157 = *(*(CMBaseObjectGetVTable() + 8) + 24);
              if (v157)
              {
                v157(v156);
              }
            }
          }

          v158 = 0;
LABEL_176:
          v164 = -12935;
          goto LABEL_177;
        }
      }

      v416 = v16;
      fbf_ReleaseAndSetLastErrorFromHTTPRequest(v19, a1, v9, &v459 + 7);
      goto LABEL_149;
    }
  }

LABEL_111:
  if (v16)
  {
    CFRelease(v16);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

LABEL_115:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

double FigByteRateHistoryNextSample(uint64_t *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  v3 = v1 * 1000000000.0 / v2;
  v4 = *(a1 + 4) + 1;
  v5 = *(a1 + 2);
  if (v4 >= v5)
  {
    v6 = *(a1 + 5);
    if (v6 == 0.0)
    {
      v7 = v1 * 1000000000.0 / v2;
    }

    else
    {
      v7 = v3 * 0.1 + v6 * 0.9;
    }

    *(a1 + 5) = v7;
  }

  v8 = *(a1 + 3);
  v9 = *a1;
  v10 = *(*a1 + 16 * v8 + 8) * 1000000000.0 / *(*a1 + 16 * v8) - v3;
  v11 = v10 * v10;
  v12 = *(a1 + 6);
  if (1.79769313e308 - v11 >= v12)
  {
    v13 = a1[7] + 1;
  }

  else
  {
    v12 = 0.0;
    v13 = 1;
  }

  result = v11 + v12;
  *(a1 + 6) = result;
  a1[7] = v13;
  v15 = (v8 + 1) % v5;
  *(a1 + 3) = v15;
  *(a1 + 4) = v4;
  v16 = v9 + 16 * v15;
  v17 = v1 - *(v16 + 8);
  a1[3] = v2 - *v16;
  a1[4] = v17;
  *v16 = 0;
  *(v16 + 8) = 0;
  return result;
}

void crabsIncrementalReadCallback(CFTypeRef a1, uint64_t a2, uint64_t a3, uint64_t a4, OpaqueCMBlockBuffer *a5, char a6, unsigned int a7)
{
  v117[21] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = CFRetain(a1);
  }

  else
  {
    v10 = 0;
  }

  v117[0] = 0;
  FigMemoryBarrier();
  if (a7 == -12932 || !v10)
  {
LABEL_235:
    if (!v10)
    {
      return;
    }

    goto LABEL_236;
  }

  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    v116 = a7;
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      Owner = CFRetain(Owner);
    }

    cf = Owner;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 104))
    {
      goto LABEL_233;
    }

    v13 = DerivedStorage;
    v115 = *(DerivedStorage + 520);
    if (v115 == a2)
    {
      v14 = 512;
      v15 = 568;
      v16 = 544;
      v17 = 528;
    }

    else
    {
      if (*(DerivedStorage + 624) != a2)
      {
        v49 = *(DerivedStorage + 32);
        v50 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v50)
        {
          v50(v49, a3);
        }

        v51 = *(v13 + 920);
        if (v51)
        {
          v52 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v52)
          {
            v52(v51, 0x1F0B64598, 0x1F0B655B8, 1);
          }
        }

        goto LABEL_233;
      }

      v14 = 616;
      v15 = 672;
      v16 = 648;
      v17 = 632;
    }

    v18 = (DerivedStorage + v14);
    v19 = *(DerivedStorage + v17);
    v20 = *(DerivedStorage + v16);
    v107 = *(DerivedStorage + v15);
    if (*(DerivedStorage + 56) == -1 || !*(DerivedStorage + 80))
    {
      updated = v116;
      if (v116)
      {
        goto LABEL_49;
      }

      updated = crabsUpdateLength(DerivedStorage);
      if (updated)
      {
        goto LABEL_49;
      }

      if (!v18[3])
      {
        v18[3] = *(v13 + 56) - v18[2];
      }

      updated = crabsInitialize(v13);
      if (updated)
      {
LABEL_49:
        v53 = crabsCancelRead(v13, v18, updated);
        goto LABEL_50;
      }
    }

    if ((*(v13 + 504) & 1) != 0 && !*(v13 + 720))
    {
      FigRetainProxyUnlockMutex();
      Current = CFRunLoopGetCurrent();
      FigAIOClientCreate(Current, crabsAIOCallback, *(v13 + 760), (v13 + 720));
      FigRetainProxyLockMutex();
      if (FigRetainProxyIsInvalidated() || !*(v13 + 104))
      {
        goto LABEL_233;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = v116;
    if (v116)
    {
      v26 = v116 == -12930;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26;
    v109 = 1;
    if (a5)
    {
      v105 = 0;
      DataLength = 0;
      v29 = 0;
      if (v27)
      {
        DataLength = CMBlockBufferGetDataLength(a5);
        if (DataLength)
        {
          v110 = v19;
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v38 = UpTimeNanoseconds;
          v112 = v18;
          v39 = UpTimeNanoseconds - v18[8];
          if (v39 >= 1)
          {
            v40 = *(v13 + 920);
            v41 = v115 == a2 ? &kFigReportingEventKey_SampleFirehoseObservedBitrate : kFigReportingEventKey_SampleImmediateObservedBitrate;
            if (v40)
            {
              v42 = v112[4];
              VTable = CMBaseObjectGetVTable();
              v44 = *(VTable + 16);
              UpTimeNanoseconds = VTable + 16;
              v45 = *(v44 + 40);
              if (v45)
              {
                UpTimeNanoseconds = v45(v40, 0x1F0B64598, *v41, (v42 * 8.0 / (v39 / 1000000000.0)));
              }
            }
          }

          v18 = v112;
          v46 = v112[4];
          v47 = v112[8];
          if (v46)
          {
            v48 = (v38 - (v47 + v112[9])) / (v46 + DataLength - v112[10]);
          }

          else
          {
            v54 = v38 - v47;
            v112[9] = v54;
            v112[10] = DataLength;
            v48 = v54 / DataLength;
          }

          if (v48 <= 1)
          {
            v48 = 1;
          }

          v112[11] = v48;
          if (v46 + DataLength <= v112[3])
          {
            v106 = 0;
            goto LABEL_61;
          }

          UpTimeNanoseconds = FigLogBacktrace();
          v55 = v112[3];
          v56 = v112[4];
          DataLength = v55 - v56;
          if (v55 != v56)
          {
            v106 = 1;
LABEL_61:
            v29 = 0;
            v105 = 0;
            v57 = 0;
            v58 = 0;
            v23 = 0;
            v111 = v20 + v110;
            while (1)
            {
              v59 = v111 + v58;
              v60 = *(v13 + 96);
              if (v60 == 0x4000)
              {
                v61 = v59 >> 14;
              }

              else if (v60 == 0x10000)
              {
                v61 = v59 >> 16;
              }

              else
              {
                v61 = v59 / v60;
              }

              v62 = *(v13 + 88);
              if (v61 >= v62)
              {
                UpTimeNanoseconds = FigLogBacktrace();
                v62 = *(v13 + 88);
                v106 = 1;
              }

              if (v61 >= v62)
              {
                crabsIncrementalReadCallback_cold_1(v23, v117, v32, v33, v34, v35, v36, v37, v102, v103, SHIDWORD(v103), v104);
                v109 = 1;
                v18 = v112;
                goto LABEL_140;
              }

              v23 = *(*(v13 + 80) + 8 * v61);
              if (!v23)
              {
                UpTimeNanoseconds = crabsInitBlock(v13, v61);
                if (UpTimeNanoseconds || (v23 = *(*(v13 + 80) + 8 * v61)) == 0)
                {
                  crabsIncrementalReadCallback_cold_4(UpTimeNanoseconds, v31, v32, v33, v34, v35, v36, v37, v102, v103, SHIDWORD(v103), v104);
                  v18 = v112;
                  goto LABEL_232;
                }
              }

              if (*(v23 + 10))
              {
                if ((*(v13 + 504) & 1) != 0 && v23 == *(v13 + 744))
                {
                  UpTimeNanoseconds = crabsCompleteLazyPagein(v13, 1);
                }
              }

              else
              {
                if (v107 <= 0)
                {
                  v64 = *(v23 + 4);
                  v63 = (v64 & 1) != 0 && (v64 & 0x800) == 0;
                }

                else
                {
                  v63 = 1;
                }

                UpTimeNanoseconds = crabsReadyBlockForLoad(v13, v23, v63);
                if (!*(v23 + 10))
                {
                  v117[0] = v23;
                  if ((v23[2] & 0x800) != 0)
                  {
                    crabsUnhint(v13, v23);
                  }

                  v109 = 0;
                  *(v13 + 134) = 1;
                  v29 = -12876;
                  goto LABEL_137;
                }
              }

              v65 = *(v13 + 96);
              v66 = v23[1];
              v67 = v59 - v65 * *v23;
              if (v66 > v67)
              {
                v58 += v66 - v67;
                if (v58 >= DataLength)
                {
                  v18 = v112;
                  goto LABEL_133;
                }

                v67 = v23[1];
              }

              v68 = v65 - v67;
              if ((DataLength - v58) >= v68)
              {
                v69 = v68;
              }

              else
              {
                v69 = DataLength - v58;
              }

              if (v67 > v66 || (v23[2] & 4) != 0)
              {
                goto LABEL_100;
              }

              if (v29 || (v71 = *(v23 + 10)) == 0)
              {
                v117[0] = v23;
                *(v13 + 134) = 1;
                v29 = -12876;
                crabsReportingReportError(v13, @"CoreMediaErrorDomain", @"No space for load", -12876);
                v109 = 0;
LABEL_137:
                v18 = v112;
                goto LABEL_138;
              }

              if ((v58 & 0x8000000000000000) != 0)
              {
                crabsIncrementalReadCallback_cold_3(UpTimeNanoseconds, v31, v32, v33, v34, v35, v36, v37, v102, v103, SHIDWORD(v103), v104);
                goto LABEL_233;
              }

              if ((v69 & 0x8000000000000000) != 0)
              {
                crabsIncrementalReadCallback_cold_2(UpTimeNanoseconds, v31, v32, v33, v34, v35, v36, v37, v102, v103, SHIDWORD(v103), v104);
                goto LABEL_233;
              }

              v72 = CMBlockBufferCopyDataBytes(a5, v58, v69, (*(v71 + 16) + v67));
              if (v72)
              {
                break;
              }

              v73 = *(v23 + 4);
              *(v23 + 4) = v73 | 8;
              ++*(v13 + 400);
              if ((*(v13 + 504) & 1) == 0 && (v73 & 0x100) != 0)
              {
                *(v23 + 4) = v73 | 0x48;
              }

              v74 = v23[1];
              v75 = v69 + v67;
              if ((v69 + v67) > v74)
              {
                FigSimpleMutexLock();
                v80 = *(v13 + 64) - v23[1];
                v23[1] = v75;
                *(v13 + 64) = v80 + v75;
                FigReportingAgentStatsSetIntValue_0(*(v13 + 920));
                FigSimpleMutexUnlock();
                v74 = v23[1];
              }

              v18 = v112;
              if (v116 == -12930 || (v76 = *(v13 + 96), v76 == v74) || (v77 = *v23, v78 = *(v13 + 88) - 1, (a6 & 1) != 0) && v78 == v77 || v78 == v77 && v74 + v76 * v77 >= *(v13 + 56))
              {
                v79 = *(v23 + 4);
                *(v23 + 4) = v79 | 4;
                if (v79)
                {
                  crabsUnhint(v13, v23);
                  v105 = *(v13 + 248) == 0;
                }

                else if (!v107 && (*(v23 + 4) || *(v23 + 5)))
                {
                  removeFromWorkingSet(v13, v23);
                  addToWorkingSet(v13, v23, 1, 0);
                }
              }

              if ((v23[2] & 0x20) != 0)
              {
                crabsRetainWorking(v13, v23);
                crabsReleaseWorking(v13, v23, 1, 1);
              }

              v29 = 0;
              *(v13 + 176) |= 1u;
LABEL_101:
              v58 += v69;
              if (v58 >= DataLength)
              {
                goto LABEL_133;
              }

              if (v115 == a2 && *(v13 + 664) == 1 && crabsRangeInBlockIsCached(v13, *(v13 + 632), *(v13 + 640)))
              {
                MEMORY[0x19A8D12E0](*(v13 + 656));
              }

              FigRetainProxyUnlockMutex();
              FigRetainProxyLockMutex();
              UpTimeNanoseconds = FigRetainProxyIsInvalidated();
              if (UpTimeNanoseconds || !*(v13 + 104))
              {
                goto LABEL_233;
              }

              if (*(v18 + 2) != a2)
              {
                v57 = 1;
              }
            }

            v29 = v72;
LABEL_100:
            v18 = v112;
            goto LABEL_101;
          }

          v105 = 0;
          v106 = 1;
          v23 = 0;
          v57 = 0;
          v29 = 0;
LABEL_133:
          v117[0] = v23;
          v109 = 1;
LABEL_138:
          if (v57)
          {
            goto LABEL_233;
          }

          v18[4] += DataLength;
LABEL_140:
          v25 = v116;
          v24 = v106;
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v105 = 0;
          v29 = 0;
          v109 = 1;
        }
      }
    }

    else
    {
      v105 = 0;
      DataLength = 0;
      v29 = 0;
    }

    if (v24)
    {
      v81 = -12870;
    }

    else
    {
      v81 = v29;
    }

    if (v81)
    {
      v25 = v81;
    }

    if (v24 | v25)
    {
      if (crabsCancelRead(v13, v18, v25) == -12785)
      {
        goto LABEL_233;
      }
    }

    else if ((a6 & 1) != 0 || v18[4] == v18[3])
    {
      *(v18 + 12) = 0;
    }

    if (*(v13 + 116))
    {
      if (v115 != a2 || !*(v13 + 135))
      {
        goto LABEL_172;
      }
    }

    else if (v115 != a2)
    {
      goto LABEL_172;
    }

    if (*(v13 + 560) == 1)
    {
      v82 = *(v13 + 544) + *(v13 + 528);
      v83 = v82 - DataLength;
      v84 = *(v13 + 96);
      if (v84 == 0x4000)
      {
        v85 = v83 >> 14;
        v86 = v82 >> 14;
      }

      else if (v84 == 0x10000)
      {
        v85 = v83 >> 16;
        v86 = v82 >> 16;
      }

      else
      {
        v85 = v83 / v84;
        v86 = v82 / v84;
      }

      if (v85 > v86)
      {
LABEL_168:
        v117[0] = v23;
        if (!*(v13 + 568) && crabsCancelRead(v13, (v13 + 512), -12932) == -12785)
        {
          goto LABEL_233;
        }
      }

      else
      {
        v87 = v86 - v85 + 1;
        v88 = (*(v13 + 80) + 8 * v85);
        while (1)
        {
          v23 = *v88;
          if (*v88)
          {
            if (v23[2])
            {
              break;
            }
          }

          ++v88;
          if (!--v87)
          {
            goto LABEL_168;
          }
        }

        v117[0] = *v88;
      }
    }

LABEL_172:
    if ((*(v13 + 504) & 3) == 0)
    {
      crabsPurgeCompletionSweep(v13);
    }

    if (*(v13 + 560) != 1)
    {
      goto LABEL_215;
    }

    v89 = *(v13 + 544) + *(v13 + 528);
    v90 = *(v13 + 96);
    if (v90 == 0x4000)
    {
      v91 = v89 >> 14;
    }

    else if (v90 == 0x10000)
    {
      v91 = v89 >> 16;
    }

    else
    {
      v91 = v89 / v90;
    }

    if (*(v13 + 416) != *(v13 + 408) || v105)
    {
      v92 = 1;
      if (!crabsSelectNextFill(v13, v117) && v117[0])
      {
        v92 = v91 <= *v117[0];
      }

      *(v13 + 416) = *(v13 + 408);
    }

    else
    {
      v92 = 1;
    }

    v93 = *(*(v13 + 80) + 8 * v91);
    if (v93)
    {
      if (v92)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (!crabsInitBlock(v13, v91))
      {
        v93 = *(*(v13 + 80) + 8 * v91);
        if (!v92)
        {
          goto LABEL_203;
        }

LABEL_189:
        if ((*(v13 + 504) & 3) != 0 || (v93[2] & 0x10) != 0)
        {
          goto LABEL_205;
        }

        v94 = *(v13 + 224);
        v95 = *v93;
        if (*(v13 + 133))
        {
          if (v94 <= v95 && *(v13 + 472) + v94 > v95)
          {
            goto LABEL_205;
          }
        }

        else if (v94 <= v95)
        {
          goto LABEL_205;
        }

        if (!crabsEnsureSafetyMargin(v13, v91))
        {
          *(v13 + 134) = 1;
          goto LABEL_203;
        }

LABEL_205:
        v96 = *(v13 + 568);
        if (*(v13 + 132))
        {
          if (v96)
          {
            goto LABEL_215;
          }

LABEL_211:
          if (*(v13 + 560) != 1 || !*(v13 + 608))
          {
            goto LABEL_215;
          }

          crabsIncrementalReadCallback_cold_5((v13 + 608), v13);
          goto LABEL_214;
        }

        if (v96)
        {
          goto LABEL_215;
        }

        if (v91 >= *(v13 + 224) || (v93[2] & 1) != 0)
        {
          goto LABEL_211;
        }

LABEL_214:
        if (crabsCancelRead(v13, (v13 + 512), -12932) == -12785)
        {
          goto LABEL_233;
        }

LABEL_215:
        if (*(v13 + 104))
        {
          crabsRebalanceWorkingSet(v13);
        }

        if (v25 == -12935)
        {
          if (!v18[7])
          {
            crabsReportingReportError(v13, @"CoreMediaErrorDomain", @"Network error with no clients", -12935);
LABEL_232:
            MEMORY[0x19A8D12E0](v18[5]);
LABEL_233:
            crabsRetainProxyUnlockWithActions(v10);
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_235;
          }
        }

        else if (!v25 || v25 == -12930)
        {
          v53 = crabsStartIdleRead(v13);
LABEL_50:
          if (v53 == -12785)
          {
            goto LABEL_233;
          }

          goto LABEL_232;
        }

        if (v109)
        {
          v97 = *(v13 + 952);
          if (v97)
          {
            CFRelease(v97);
            *(v13 + 952) = 0;
          }

          FigByteFlumeGetFigBaseObject();
          v99 = v98;
          v100 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v100)
          {
            v100(v99, @"FBF_LastError", *MEMORY[0x1E695E480], v13 + 952);
          }

          *(v13 + 944) = v25;
          *(v13 + 176) |= 0x20u;
        }

        else if (*(v13 + 112))
        {
          *(v13 + 112) = 0;
          *(v13 + 176) |= 8u;
          if (dword_1EAF16BD0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        goto LABEL_232;
      }

      v93 = 0;
      if (v92)
      {
        goto LABEL_189;
      }
    }

LABEL_203:
    if (!*(v13 + 568) && (v93[2] & 1) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_205;
  }

  crabsRetainProxyUnlockWithActions(v10);
LABEL_236:
  CFRelease(v10);
}

float crabsPurgeCompletionSweep(void *a1)
{
  crabsEnsureCanary(a1);
  v3 = **(a1[36] + 8);
  v4 = MEMORY[0x1E69E9A60];
  v5 = 0;
  if (v3)
  {
    do
    {
      v6 = **(*(v3 + 56) + 8);
      if ((*(v3 + 8) & 0x80) != 0)
      {
        v7 = *(v3 + 88);
        v13 = 0;
        if (MEMORY[0x19A8D6C80](*v4, v7, 1, &v13))
        {
          v8 = 0;
        }

        else
        {
          v8 = (v13 & 3) == 2;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        crabsRemovePurgedBacking(a1, v3, 0);
        crabsCleanupOrphan(a1, v3);
        ++v5;
      }

      v3 = v6;
    }

    while (v6);
  }

  v9 = **(a1[34] + 8);
  if (v9)
  {
    do
    {
      v10 = **(*(v9 + 56) + 8);
      if ((*(v9 + 8) & 0x80) != 0)
      {
        v11 = *(v9 + 88);
        v14 = 0;
        if (MEMORY[0x19A8D6C80](*v4, v11, 1, &v14))
        {
          v12 = 0;
        }

        else
        {
          v12 = (v14 & 3) == 2;
        }

        if (!v12)
        {
          break;
        }

        crabsRemovePurgedBacking(a1, v9, 1);
        crabsCleanupOrphan(a1, v9);
        ++v5;
      }

      v9 = v10;
    }

    while (v10);
  }

LABEL_19:
  if (v5 >= 1)
  {
    result = vcvts_n_f32_s64(a1[60], 1uLL) + v5 * 0.5 + 0.5;
    a1[60] = result;
  }

  return result;
}

BOOL crabsEnsureCanary(void *a1)
{
  v2 = a1[57];
  v3 = MEMORY[0x1E69E9A60];
  if (!v2)
  {
    goto LABEL_8;
  }

  v8 = 0;
  v4 = 1;
  if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v2, 1, &v8))
  {
    v5 = 0;
  }

  else
  {
    v5 = (v8 & 3) == 2;
  }

  if (v5)
  {
    CFAllocatorDeallocate(*a1, a1[57]);
    a1[57] = 0;
LABEL_8:
    v6 = MEMORY[0x19A8CC720](*a1, a1[12], 3221054981, 0);
    a1[57] = v6;
    if (v6)
    {
      v9 = 33;
      MEMORY[0x19A8D6C80](*v3, v6, 0, &v9);
      return a1[57] != 0;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL crabsMakeVolatile(uint64_t a1, int a2, int a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      v3 = 577;
      v4 = 769;
    }

    else
    {
      v3 = 1089;
      v4 = 1281;
    }

    if (a3 == 1)
    {
      v3 = v4;
    }
  }

  else if (a2 == 2)
  {
    v3 = 257;
  }

  else if (a2 == 3)
  {
    v3 = 1537;
  }

  else
  {
    v3 = 33;
  }

  v7 = v3;
  if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], a1, 0, &v7))
  {
    v5 = 1;
  }

  else
  {
    v5 = (v7 & 3) == 2;
  }

  return !v5;
}

void crabsStartIdleRead(uint64_t a1)
{
  v8[20] = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) && !*(a1 + 108) && !*(a1 + 135))
  {
    if (*(a1 + 56) == -1 || !*(a1 + 80))
    {
      if (*(a1 + 560) != 1 && ((*(a1 + 504) & 8) == 0 || *(a1 + 116) && *(a1 + 360) != *(a1 + 88)))
      {
        crabsMoveFirehose(a1, 0, "crabsStartIdleRead", 5914);
        OUTLINED_FUNCTION_13_3();
      }
    }

    else
    {
      v7 = 0;
      crabsTaskHints(a1, &v7);
      OUTLINED_FUNCTION_13_3();
      if (!v3)
      {
        if ((*(a1 + 504) & 8) != 0)
        {
          if (!*(a1 + 116))
          {
            return;
          }

          v4 = *(a1 + 360) != *(a1 + 88);
        }

        else
        {
          v4 = 1;
        }

        if (!v2 && v4 && *(a1 + 116) && !v7 && *(a1 + 560) != 1)
        {
          v8[0] = 0;
          if (!crabsSelectNextFill(a1, v8) && (v5 = v8[0]) != 0 && crabsShouldStartFirehose(a1, *v8[0]))
          {
            crabsMoveFirehose(a1, *(a1 + 96) * *v5, "crabsStartIdleRead", 5898);
            OUTLINED_FUNCTION_13_3();
          }

          else if (*(a1 + 112))
          {
            *(a1 + 112) = 0;
            *(a1 + 176) |= 8u;
            if (dword_1EAF16BD0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }
  }
}

uint64_t crabsTaskHints(uint64_t a1, _BYTE *a2)
{
  IsBusy = crabsDiskBackingIsBusy(a1, 0);
  v5 = *(a1 + 760);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 504))
  {
    crabsCompleteLazyPagein(a1, 0);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = !*(a1 + 568) && !*(a1 + 672);
  v9 = *(a1 + 248);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (!v8 && !v7)
      {
        goto LABEL_53;
      }

      if ((v9[2] & 4) != 0 && !IsBusy)
      {
        if ((*(a1 + 504) & 1) != 0 && !*(v9 + 10))
        {
          if (v7 && !*(a1 + 744) && *(a1 + 720) && (crabAllocWorkingSet(a1, v9) || (crabsSwipeUnusedWorking(a1, v9), !v19)))
          {
            v10 = FigAIOIssueRead();
            if (v10)
            {
              crabsReleaseWorkingBlock(a1, v9);
              if (v10 == 35)
              {
                v7 = 0;
                v10 = 0;
              }

              else
              {
                v10 = v10;
              }
            }

            else
            {
              *(a1 + 744) = v9;
              crabsRetainWorking(a1, v9);
            }
          }

          else
          {
            v7 = 0;
          }
        }

        goto LABEL_46;
      }

      v21 = 0;
      if (v8)
      {
        if (!crabsEvaluateFirehose(a1, v9, 1, &v21))
        {
          v12 = *(a1 + 96);
          v13 = v12 * *v9;
          v16 = *(a1 + 664) == 1 && (v14 = *(a1 + 632), v14 <= v13 + v9[1]) && (v15 = v13 + v12, *(a1 + 640) + v14 >= v15) && *(a1 + 648) + v14 < v15;
          if (v21 && !v16)
          {
            v17 = crabsMoveFirehose(a1, v13, "crabsTaskHints", 5516);
            v10 = v17;
            if (!v17)
            {
              goto LABEL_44;
            }

            if (v17 == -12785)
            {
              goto LABEL_60;
            }

            v10 = 0;
          }

          if (v11 != 0 || v16)
          {
            goto LABEL_45;
          }

          if (*(a1 + 664) != 1)
          {
            v18 = crabsIssueImmedLoad(a1, *(a1 + 96) * *v9, *(a1 + 96), "crabsTaskHints", 5533);
            if (v18 == -12785)
            {
              LOBYTE(v11) = 0;
LABEL_60:
              v10 = 4294954511;
              if (a2)
              {
                goto LABEL_54;
              }

              goto LABEL_55;
            }

            v10 = v18;
LABEL_44:
            v11 = 1;
LABEL_45:
            v8 = 1;
            goto LABEL_46;
          }

          v11 = 0;
        }

        v8 = 0;
      }

LABEL_46:
      v9 = *(v9 + 6);
      if (!v9)
      {
        goto LABEL_53;
      }
    }
  }

  LOBYTE(v11) = 0;
  v10 = 0;
LABEL_53:
  if (a2)
  {
LABEL_54:
    *a2 = v11;
  }

LABEL_55:
  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

uint64_t crabsReleaseWorking(void *a1, void *a2, int a3, int a4)
{
  result = FigAtomicDecrement32();
  if (!result)
  {
    if (a4 || (result = FigRetainProxyTryLockMutex(), result))
    {
      if (*(a2[10] + 24))
      {
        if (a4)
        {
          return result;
        }
      }

      else
      {
        result = addToWorkingSet(a1, a2, a3, 1);
        v9 = a1[12];
        *(&gCRABS_Stats + 1) += v9;
        a1[106] += v9;
        if (a4)
        {
          return result;
        }
      }

      return crabsUnlockWithActions(a1);
    }

    else
    {
      FigSimpleMutexLock();
      if (!a2[8] && !a2[9])
      {
        v10 = a1[46];
        a2[8] = v10;
        if (v10)
        {
          v11 = (v10 + 72);
        }

        else
        {
          v11 = a1 + 47;
        }

        *v11 = a2 + 8;
        a1[46] = a2;
        a2[9] = a1 + 46;
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t crabsCancelRead(void *a1, uint64_t *a2, int a3)
{
  v6 = a1[95];
  if (v6)
  {
    v7 = CFRetain(v6);
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 12) != 1)
  {
    v28 = 0;
    goto LABEL_45;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  *a2 = 0;
  *(a2 + 12) = a3;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v11 = UpTimeNanoseconds - a2[8];
  if (v11 >= 1)
  {
    v12 = UpTimeNanoseconds;
    v13 = v9;
    v14 = a2[4];
    v15 = a1[115];
    v34 = v8;
    v16 = a1 + 64;
    if (a1 + 64 == a2)
    {
      v17 = &kFigReportingEventKey_FirehoseRequestBytes;
    }

    else
    {
      v17 = &kFigReportingEventKey_ImmediateRequestBytes;
    }

    if (v15)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v18)
      {
        v18(v15, 0x1F0B64598, *v17, v14);
      }
    }

    v33 = v14;
    v19 = a1[115];
    if (v16 == a2)
    {
      v20 = &kFigReportingEventKey_FirehoseRequestTimeMilliseconds;
    }

    else
    {
      v20 = &kFigReportingEventKey_ImmediateRequestTimeMilliseconds;
    }

    if (v19)
    {
      v21 = a2[8];
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v22)
      {
        v22(v19, 0x1F0B64598, *v20, ((v12 - v21) / 1000000.0));
      }
    }

    v23 = a1[115];
    if (v16 == a2)
    {
      v24 = &kFigReportingEventKey_SampleFirehoseObservedBitrate;
    }

    else
    {
      v24 = kFigReportingEventKey_SampleImmediateObservedBitrate;
    }

    v9 = v13;
    v8 = v34;
    if (v23)
    {
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v25)
      {
        v25(v23, 0x1F0B64598, *v24, (v33 * 8.0 / (v11 / 1000000000.0)));
      }
    }
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v27 = CFRetain(Owner);
  }

  else
  {
    v27 = 0;
  }

  v29 = a1[4];
  if (v29)
  {
    v30 = CFRetain(v29);
  }

  else
  {
    v30 = 0;
  }

  FigRetainProxyUnlockMutex();
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v31)
  {
    v28 = v31(v30, v8);
  }

  else
  {
    v28 = 4294954514;
  }

  FigRetainProxyLockMutex();
  if (v30)
  {
    CFRelease(v30);
  }

  if (FigRetainProxyIsInvalidated())
  {
    v28 = 4294954511;
  }

  else
  {
    if (*(a2 + 2) != v9)
    {
      goto LABEL_43;
    }

    if (v28 == -12934)
    {
      if (*a2)
      {
        v28 = 4294954362;
        goto LABEL_43;
      }
    }

    else if (v28)
    {
      goto LABEL_43;
    }

    crabsCancelRead_cold_1(a1, a2, v28, &v35);
    v28 = v35;
  }

LABEL_43:
  if (v27)
  {
    CFRelease(v27);
  }

LABEL_45:
  if (v7)
  {
    CFRelease(v7);
  }

  return v28;
}

uint64_t FigCFHTTPCancel(uint64_t a1, uint64_t a2)
{
  FigByteFlumeGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigCFHTTPCancel_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    FigRetainProxyRetainOwner();
    v4 = *(DerivedStorage + 56);
    if (v4)
    {
      while (*(v4 + 64) != a2)
      {
        v4 = *(v4 + 128);
        if (!v4)
        {
          goto LABEL_5;
        }
      }

      *(v4 + 120) = -12932;
      FigCFHTTPFinishReadRequest(DerivedStorage, v4, 1);
      v5 = 0;
    }

    else
    {
LABEL_5:
      v5 = 4294954362;
    }

    FigRetainProxyReleaseOwner();
  }

  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  return v5;
}

uint64_t FigCFHTTPFinishReadRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_172(a1);
  FigRetainProxyRetainOwner();
  v6 = (a2 + 125);
  if (*(a2 + 125))
  {
    goto LABEL_41;
  }

  if (*(a2 + 126))
  {
    RemoveReadRequestFromQueue(v3, a2);
  }

  v7 = *(v3 + 44);
  if (*(v3 + 40))
  {
    v8 = v7 == 1;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8 || v7 == 2;
  FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v3 + 592), *(a2 + 24), *(v3 + 32), 0x1F0B645B8, v10);
  if (*(a2 + 127) || *v6)
  {
    goto LABEL_18;
  }

  if (*(v3 + 377))
  {
    *v6 = 1;
LABEL_17:
    (*(a2 + 16))(*(a2 + 40), *(a2 + 48), *(a2 + 64), *(a2 + 112), 0, a3, *(a2 + 120));
    v6 = (a2 + 127);
LABEL_18:
    *v6 = 1;
    goto LABEL_19;
  }

  IsInvalidated = FigRetainProxyIsInvalidated();
  *v6 = 1;
  if (!IsInvalidated)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11 = *(a2 + 120);
  if (v11 && v11 != -12930)
  {
    v15 = 0;
    v14 = 1;
  }

  else
  {
    v12 = *(v3 + 128);
    if (v12)
    {
      CFRelease(v12);
      *(v3 + 128) = 0;
    }

    v13 = *(a2 + 24);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    v14 = 0;
    *(v3 + 128) = v13;
    v15 = 1;
  }

  v16 = *(a2 + 24);
  *(a2 + 24) = 0;
  FigRetainProxyUnlockMutex();
  if ((v15 & 1) == 0)
  {
    if (v16)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v17)
      {
        v17(v16);
      }
    }
  }

  v18 = *(v3 + 88);
  v19 = v14 ^ 1;
  if (v16 != v18)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0 && !*(v3 + 72))
  {
    if (v16)
    {
      CFRelease(v18);
      *(v3 + 88) = 0;
    }

    *(v3 + 96) = -1;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  FigRetainProxyLockMutex();
  ReadRequestRelease(a2);
LABEL_41:

  return FigRetainProxyReleaseOwner();
}

void ReadRequestRelease(uint64_t a1)
{
  if (!FigAtomicDecrement32())
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 24) = 0;
    }

    if (*(a1 + 126))
    {
      FigRetainProxyLockMutex();
      if (!FigRetainProxyIsInvalidated())
      {
        FigRetainProxyGetOwner();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        RemoveReadRequestFromQueue(DerivedStorage, a1);
      }

      FigRetainProxyUnlockMutex();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
    }

    FigRetainProxyRelease();

    free(a1);
  }
}

void crabsBBufRefReleaseFn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  crabsReleaseWorking(v4, *a1, 1, 0);
  --qword_1EAF189F0;
  --*(v4 + 872);
  qword_1EAF189E0 -= a3;
  *(v4 + 856) -= a3;
  if ((*(v4 + 504) & 1) == 0 && FigRetainProxyTryLockMutex())
  {
    if (*(v4 + 344) >= 49)
    {
      do
      {
        v8 = 0;
        memset(v7, 0, sizeof(v7));
        crabsSwipeUnusedWorking(v4, v7);
        if (v5)
        {
          break;
        }

        removeFromWorkingSet(v4, v7);
        crabsReleaseWorkingBlock(v4, v7);
      }

      while (*(v4 + 344) >= 17);
    }

    crabsUnlockWithActions(v4);
  }

  v6 = *(v4 + 40);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t FigByteRateHistoryAddToSample(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * *(result + 12);
  *v2 += *a2;
  *(v2 + 8) += *(a2 + 8);
  v3 = *(result + 32) + *(a2 + 8);
  *(result + 24) += *a2;
  *(result + 32) = v3;
  return result;
}

uint64_t crabsIssueImmedLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a1 + 760);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  do
  {
    while (1)
    {
      if (*(a1 + 664) != 1)
      {
        goto LABEL_14;
      }

      if (*(a1 + 56) == -1)
      {
        break;
      }

      v10 = *(a1 + 632);
      v11 = *(a1 + 640);
      if (!*(a1 + 80) || !crabsRangeInBlockIsCached(a1, *(a1 + 632), *(a1 + 640)))
      {
        goto LABEL_9;
      }

LABEL_14:
      if (dword_1EAF16BD0 >= 2)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v15 = crabsIssueLoad(a1, a1 + 616, a2, a3, 0, 0);
      if (v15 != -12871)
      {
        if (!v9)
        {
          return v15;
        }

        goto LABEL_18;
      }
    }

    v10 = *(a1 + 632);
    v11 = *(a1 + 640);
LABEL_9:
    v12 = crabsWaitForLoad(a1, (a1 + 616), v10, v11, -1);
    if (v12)
    {
      v13 = v12 == -12930;
    }

    else
    {
      v13 = 1;
    }
  }

  while (v13);
  v15 = v12;
  if (v9)
  {
LABEL_18:
    CFRelease(v9);
  }

  return v15;
}

uint64_t crabsReadyBlockForLoad(uint64_t a1, int *a2, int a3)
{
  v6 = (a2[2] & 0x80) != 0 && crabsMakeBackingNonvolatile(a1, a2, *(a1 + 224) <= *a2) != 0;
  if (crabAllocWorkingSet(a1, a2))
  {
    LODWORD(v13) = 0;
    goto LABEL_6;
  }

  if (a3)
  {
    goto LABEL_22;
  }

  v18 = *(a2 + 4);
  if ((v18 & 0x200) != 0)
  {
    if ((v18 >> 8))
    {
      goto LABEL_22;
    }
  }

  else if (*(a2 + 11))
  {
LABEL_22:
    LODWORD(v13) = 0;
    goto LABEL_23;
  }

  if (crabsAllocBacking(a1, a2))
  {
    LODWORD(v13) = 1;
  }

  else
  {
    v13 = 0;
    if (!crabsBlockIsAKeeper(a1, a2))
    {
      v16 = 1;
      goto LABEL_27;
    }
  }

LABEL_23:
  crabsSwipeUnusedWorking(a1, a2);
  if (!v19)
  {
LABEL_6:
    v14 = *(a2 + 4);
    if ((v14 & 0x200) != 0)
    {
      v15 = (v14 >> 8) & 1;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v15 = *(a2 + 11) != 0;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    if (v15)
    {
      crabsPageInBlock(a1, a2, v7, v8, v9, v10, v11, v12);
      v14 = *(a2 + 4);
    }

LABEL_12:
    if ((v14 & 0x200) != 0)
    {
      if ((v14 >> 8))
      {
        goto LABEL_14;
      }
    }

    else if (*(a2 + 11))
    {
LABEL_14:
      v16 = 0;
LABEL_15:
      v17 = 1;
      goto LABEL_25;
    }

    if (crabsAllocBacking(a1, a2))
    {
      v16 = 0;
      v17 = 1;
LABEL_26:
      crabsAddBlockToBackedList(a1, a2);
      v13 = v17;
      goto LABEL_27;
    }

    crabsSwipeBacking(a1, a2, 0);
    v16 = 0;
    LODWORD(v13) = v22 == 0;
    goto LABEL_15;
  }

  v17 = 0;
  v16 = 1;
LABEL_25:
  v20 = v13;
  v13 = v17;
  if (v20)
  {
    goto LABEL_26;
  }

LABEL_27:
  if ((v6 & v16) == 1 && (*(a1 + 504) & 3) == 0)
  {
    crabsMakeBlockVolatileRelativeToAnchor(a1, a2);
  }

  return v13;
}

BOOL crabsAllocBacking(void *a1, int *a2)
{
  v4 = *(a1 + 126);
  if (v4)
  {
    *host_info_out = 0;
    v6 = a1[1];
    if (v6)
    {
      v7 = a1[12];
      v8 = a2 + 24;
      v9 = *a2;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10)
      {
        if (v10(v6, v7, v7 * v9, host_info_out, a2 + 24))
        {
          v11 = a1[2];
          if (v11)
          {
            if (v11 != *host_info_out)
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
              result = 0;
              *v8 = -1;
              return result;
            }
          }

          else
          {
            a1[2] = *host_info_out;
          }

          *(a2 + 4) |= 0x100u;
        }
      }
    }
  }

  else if ((v4 & 2) != 0)
  {
    *(a2 + 11) = MEMORY[0x19A8CC720](*a1, a1[12], 4260386219, 0);
  }

  else
  {
    v5 = a1[58] >= a1[59] && (a2[2] & 0x10) == 0;
    v31 = 0u;
    memset(v32, 0, sizeof(v32));
    *host_info_out = 0u;
    host_info_outCnt = 60;
    v27 = 8;
    v28 = 0;
    v18 = MEMORY[0x19A8D5D90]();
    if (host_statistics(v18, 2, host_info_out, &host_info_outCnt) || sysctlbyname("vm.vm_page_free_target", &v28, &v27, 0, 0) || host_info_out[0] <= v28)
    {
      v19 = 0;
    }

    else
    {
      v19 = *MEMORY[0x1E69E9AC8] * (host_info_out[0] - v28);
    }

    if (!v5 || v19 > a1[12] && crabsEnsureCanary(a1))
    {
      v20 = MEMORY[0x19A8CC720](*a1, a1[12], 3307936231, 0);
      if (v20)
      {
        v21 = v20;
        if (a1[12])
        {
          v22 = 0;
          v23 = MEMORY[0x1E69E9AC8];
          do
          {
            *(v20 + v22) = 0;
            v22 += *v23;
          }

          while (v22 < a1[12]);
        }

        if (v5 && ((v24 = a1[57], host_info_out[0] = 0, !MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v24, 1, host_info_out)) ? (v25 = (host_info_out[0] & 3) == 2) : (v25 = 0), v25))
        {
          CFAllocatorDeallocate(*a1, v21);
        }

        else
        {
          *(a2 + 11) = v21;
          if ((a2[2] & 0x10) == 0)
          {
            ++a1[58];
          }
        }
      }
    }
  }

  v13 = *(a2 + 4);
  result = (v13 >> 8) & 1;
  if ((v13 & 0x200) != 0)
  {
    if (!result)
    {
      goto LABEL_21;
    }

LABEL_16:
    v14 = a1[12];
    v15 = (a1[63] & 1) == 0;
    v16 = 40;
    if ((a1[63] & 1) == 0)
    {
      v16 = 0;
    }

    *(&gCRABS_Stats + v16) += v14;
    v17 = 105;
    if (!v15)
    {
      v17 = 110;
    }

    a1[v17] += v14;
    goto LABEL_21;
  }

  if (*(a2 + 11))
  {
    goto LABEL_16;
  }

LABEL_21:
  if ((v13 & 0x200) == 0)
  {
    return *(a2 + 11) != 0;
  }

  return result;
}

uint64_t *crabsAddBlockToBackedList(uint64_t *result, int *a2)
{
  v2 = *(a2 + 4);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 0x10) != 0)
    {
      v6 = result[37];
      *(a2 + 6) = v6;
      if (v6)
      {
        v7 = (v6 + 56);
      }

      else
      {
        v7 = result + 38;
      }

      *v7 = a2 + 12;
      v5 = result + 37;
      result[37] = a2;
    }

    else
    {
      if (result[28] <= *a2)
      {
        return addToAscendingBackedBlockList(result, result + 33, a2);
      }

      v3 = result[35];
      *(a2 + 6) = v3;
      if (v3)
      {
        v4 = (v3 + 56);
      }

      else
      {
        v4 = result + 36;
      }

      *v4 = a2 + 12;
      v5 = result + 35;
      result[35] = a2;
    }

    *(a2 + 7) = v5;
  }

  return result;
}

void *addToAscendingBackedBlockList(void *result, uint64_t *a2, int *a3)
{
  v3 = *a2;
  if (!*a2)
  {
    *(a3 + 6) = 0;
    a2[1] = (a3 + 12);
    goto LABEL_5;
  }

  v4 = *a3;
  if (v4 < *v3)
  {
    *(a3 + 6) = v3;
    *(v3 + 56) = a3 + 12;
LABEL_5:
    *a2 = a3;
    *(a3 + 7) = a2;
    goto LABEL_6;
  }

  v5 = a2[1];
  if (v4 <= ***(v5 + 8))
  {
    v6 = *(result[10] + 8 * v4 - 8);
    if (!v6 || (*(v6 + 8) & 0x1000) == 0 || (v7 = *(v6 + 48)) == 0)
    {
      while (v4 > *v3)
      {
        v3 = *(v3 + 48);
        if (!v3)
        {
          goto LABEL_18;
        }
      }

      v7 = v3;
    }

    v8 = *(v7 + 56);
    *(a3 + 7) = v8;
    *(a3 + 6) = v7;
    *v8 = a3;
    *(v7 + 56) = a3 + 12;
LABEL_18:
    ++qword_1EAF18A00;
    ++result[111];
  }

  else
  {
    *(a3 + 6) = 0;
    *(a3 + 7) = v5;
    *v5 = a3;
    a2[1] = (a3 + 12);
  }

LABEL_6:
  if (result + 33 == a2)
  {
    *(a3 + 4) |= 0x1000u;
  }

  return result;
}

void crabsSyncBlock(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 504);
  if ((v4 & 1) != 0 && *(a1 + 728) == a2)
  {

    crabsCompleteLazySync(a1, 1);
    return;
  }

  v5 = *(a2 + 8);
  if ((v5 & 8) == 0)
  {
    return;
  }

  if ((v5 & 0x200) != 0)
  {
    if ((v5 >> 8))
    {
      goto LABEL_6;
    }

LABEL_10:
    v6 = qword_1EAF16BC8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954426, "<<<< CRABS >>>>", 4061, v2);
    return;
  }

  if (!*(a2 + 88))
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    memcpy(*(a2 + 88), *(*(a2 + 80) + 16), *(a2 + 4));
LABEL_8:
    *(a2 + 8) &= ~8u;
    return;
  }

  if (!*(a1 + 135))
  {
    v7 = *(a2 + 4);
    if (!crabsDiskBackingIsBusy(a1, 0))
    {
      FigFileForkWrite();
      if (!v7)
      {
        goto LABEL_8;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0, v9);
    }
  }
}

uint64_t FigCRABSHintActiveRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 1, a3);
}

void FigCRABS_HintActiveRanges(const void *a1, int a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (!crabsEnsureInitialized(a1))
  {
    if (a3 < 1)
    {
      v22 = 1;
      if (a2)
      {
        goto LABEL_31;
      }

LABEL_30:
      if (!v22)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v9 = 0;
      v10 = *(DerivedStorage + 96);
      v11 = 1;
      do
      {
        v12 = (a4 + 16 * v9);
        v13 = *v12;
        if (v10 == 0x4000)
        {
          v14 = v13 >> 14;
        }

        else if (v10 == 0x10000)
        {
          v14 = v13 >> 16;
        }

        else
        {
          v14 = v13 / v10;
        }

        if (v14 < 0 || (v15 = *(DerivedStorage + 88), v14 >= v15))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v95);
          goto LABEL_182;
        }

        v16 = v13 + v12[1] - 1;
        v17 = v16 >> 14;
        v18 = v16 >> 16;
        v19 = v16 / v10;
        while (1)
        {
          v20 = v18;
          if (v10 != 0x10000)
          {
            v20 = v17;
            if (v10 != 0x4000)
            {
              v20 = v19;
            }
          }

          if (v14 >= v15 || v14 > v20)
          {
            break;
          }

          if (v14 != *(DerivedStorage + 360))
          {
            v11 = 0;
          }

          ++v14;
        }

        ++v9;
        v22 = v11 != 0;
      }

      while (v9 < a3 && v11);
      if (!a2)
      {
        goto LABEL_30;
      }

LABEL_31:
      if (!FigRetainProxyLockMutex())
      {
        if (!*(DerivedStorage + 104))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v95);
          v24 = 0;
          goto LABEL_160;
        }

        v23 = *(DerivedStorage + 760);
        if (v23)
        {
          v24 = CFRetain(v23);
        }

        else
        {
          v24 = 0;
        }

        if (a3 >= 1)
        {
          v94 = v24;
          v25 = 0;
          v96 = a1;
          v97 = DerivedStorage + 8;
          v26 = (DerivedStorage + 248);
          v27 = *(DerivedStorage + 96);
          while (2)
          {
            v28 = (a4 + 16 * v25);
            v29 = *v28;
            if (v27 == 0x4000)
            {
              v30 = v29 >> 14;
            }

            else if (v27 == 0x10000)
            {
              v30 = v29 >> 16;
            }

            else
            {
              v30 = v29 / v27;
            }

LABEL_43:
            v31 = v29 + v28[1] - 1;
            if (v27 == 0x4000)
            {
              v32 = v31 >> 14;
            }

            else if (v27 == 0x10000)
            {
              v32 = v31 >> 16;
            }

            else
            {
              v32 = v31 / v27;
            }

            if (v30 > v32 || v30 >= *(DerivedStorage + 88))
            {
              if (++v25 != a3)
              {
                continue;
              }

              if ((a2 & 2) != 0)
              {
                v24 = v94;
                a1 = v96;
                do
                {
                  OUTLINED_FUNCTION_28_3();
                  if (v83)
                  {
                    v91 = v90;
                  }

                  else if (v86 == 0x10000)
                  {
                    v91 = v88;
                  }

                  else
                  {
                    v91 = v89;
                  }

                  if (v77 > v91)
                  {
                    if (v86 == 0x4000)
                    {
                      v77 = v90;
                    }

                    else if (v86 == 0x10000)
                    {
                      v77 = v88;
                    }

                    else
                    {
                      v77 = v89;
                    }
                  }
                }

                while (v87 != 1);
                v85 = 0;
              }

              else
              {
                v24 = v94;
                a1 = v96;
                if ((a2 & 0x10) == 0)
                {
                  goto LABEL_165;
                }

                do
                {
                  OUTLINED_FUNCTION_28_3();
                  if (v83)
                  {
                    v84 = v82;
                  }

                  else if (v78 == 0x10000)
                  {
                    v84 = v80;
                  }

                  else
                  {
                    v84 = v81;
                  }

                  if (v77 > v84)
                  {
                    if (v78 == 0x4000)
                    {
                      v77 = v82;
                    }

                    else if (v78 == 0x10000)
                    {
                      v77 = v80;
                    }

                    else
                    {
                      v77 = v81;
                    }
                  }
                }

                while (v79 != 1);
LABEL_152:
                v85 = 1;
                if (*(DerivedStorage + 224) <= v77)
                {
LABEL_158:
                  if ((v85 & 1) == 0 && !a3)
                  {
                    goto LABEL_160;
                  }

LABEL_165:
                  crabsStartIdleRead(DerivedStorage);
                  goto LABEL_160;
                }
              }

              goto LABEL_157;
            }

            break;
          }

          v33 = *(*(DerivedStorage + 80) + 8 * v30);
          if (!v33)
          {
            v34 = OUTLINED_FUNCTION_309();
            if (crabsInitBlock(v34, v35) || (v33 = *(*(DerivedStorage + 80) + 8 * v30)) == 0)
            {
LABEL_154:
              OUTLINED_FUNCTION_3_12();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_155:
              v24 = v94;
              a1 = v96;
              goto LABEL_160;
            }
          }

          if ((a2 & 4) != 0 && *(DerivedStorage + 232) > v30)
          {
            *(DerivedStorage + 232) = v30;
          }

          *(DerivedStorage + 360) = v30;
          if ((a2 & 8) != 0)
          {
            if (*(DerivedStorage + 504))
            {
              if (v33 == *(DerivedStorage + 728) && crabsCompleteLazySync(DerivedStorage, 1))
              {
                goto LABEL_155;
              }

              if (v33 == *(DerivedStorage + 744))
              {
                crabsCompleteLazyPagein(DerivedStorage, 1);
              }
            }

            v36 = *(v33 + 10);
            if (v36 && *(v36 + 24) >= 1)
            {
              goto LABEL_154;
            }

            if ((v33[2] & 4) != 0 || v33[1])
            {
              v72 = OUTLINED_FUNCTION_267_0();
              crabsMarkBlockUnfilled(v72, v73);
            }
          }

          if ((*(DerivedStorage + 504) & 3) != 0)
          {
            if ((a2 & 1) == 0)
            {
              goto LABEL_72;
            }

LABEL_70:
            if ((v33[2] & 0x80) != 0)
            {
              v39 = OUTLINED_FUNCTION_2_17();
              crabsMakeBackingNonvolatile(v39, v33, v40);
            }
          }

          else
          {
            v37 = OUTLINED_FUNCTION_267_0();
            crabsCleanupBlockIfPurged(v37, v38);
            if (a2)
            {
              goto LABEL_70;
            }
          }

LABEL_72:
          v41 = *(v33 + 4);
          if ((v41 & 1) == 0 && ((v41 & 4) == 0 || (*(DerivedStorage + 504) & 1) != 0 && !*(v33 + 10)))
          {
            if ((v41 & 0x80) != 0)
            {
              v42 = OUTLINED_FUNCTION_2_17();
              crabsMakeBackingNonvolatile(v42, v33, v43);
              v41 = *(v33 + 4);
            }

            if ((v41 & 0x200) != 0)
            {
              if (((v41 >> 8) & 1) == 0)
              {
                goto LABEL_93;
              }
            }

            else if (!*(v33 + 11))
            {
              goto LABEL_93;
            }

            if ((v41 & 0x10) != 0)
            {
              v44 = 0;
              v45 = 296;
            }

            else
            {
              v44 = *(DerivedStorage + 224) <= *v33;
              v45 = 280;
              if (*(DerivedStorage + 224) <= *v33)
              {
                v45 = 264;
              }
            }

            v46 = *(v33 + 6);
            v47 = *(v33 + 7);
            if (*(v33 + 3) != 0)
            {
              v48 = (v97 + v45);
              if (v46)
              {
                v48 = (v46 + 56);
              }

              *v48 = v47;
              *v47 = v46;
              *(v33 + 6) = 0;
              *(v33 + 7) = 0;
              if (v44)
              {
                v41 &= ~0x1000u;
              }
            }

LABEL_93:
            v49 = v41 & 0xFFFFF7FF;
            v50 = v41 | ~(v41 << 11) & 0x800;
            if ((a2 & 0x10) == 0)
            {
              v50 = v49;
            }

            v41 = v50 | 1;
            *(v33 + 4) = v41;
            v51 = *v26;
            if (*v26)
            {
              v52 = *v33;
              if (v52 < *v51)
              {
                *(v33 + 2) = v51;
                *(v51 + 3) = v33 + 4;
                goto LABEL_99;
              }

              v63 = *(DerivedStorage + 256);
              if (v52 <= ***(v63 + 8))
              {
                v74 = *(*(DerivedStorage + 80) + 8 * v52 - 8);
                if (!v74 || (*(v74 + 8) & 1) == 0 || (v75 = *(v74 + 16)) == 0)
                {
                  while (v52 > *v51)
                  {
                    v51 = *(v51 + 2);
                    if (!v51)
                    {
                      goto LABEL_132;
                    }
                  }

                  v75 = v51;
                }

                v76 = *(v75 + 3);
                *(v33 + 3) = v76;
                *(v33 + 2) = v75;
                *v76 = v33;
                *(v75 + 3) = v33 + 4;
LABEL_132:
                ++qword_1EAF18A00;
                ++*(DerivedStorage + 888);
              }

              else
              {
                *(v33 + 2) = 0;
                *(v33 + 3) = v63;
                *v63 = v33;
                *(DerivedStorage + 256) = v33 + 4;
              }
            }

            else
            {
              *(v33 + 2) = 0;
              *(DerivedStorage + 256) = v33 + 4;
LABEL_99:
              *v26 = v33;
              *(v33 + 3) = v26;
            }
          }

          if ((a2 & 1) == 0 || (v41 & 0x10) != 0)
          {
            LOBYTE(v55) = v41;
          }

          else
          {
            if ((v41 & 0x80) != 0)
            {
              v53 = OUTLINED_FUNCTION_2_17();
              crabsMakeBackingNonvolatile(v53, v33, v54);
              v41 = *(v33 + 4);
            }

            v55 = v41 | 0x10;
            *(v33 + 4) = v41 | 0x10;
            if (v41)
            {
              goto LABEL_109;
            }

            if ((v41 & 0x200) == 0)
            {
              OUTLINED_FUNCTION_400_1();
              if (!v56)
              {
                goto LABEL_109;
              }

LABEL_115:
              v64 = *(v33 + 6);
              v65 = *(v33 + 7);
              if (*(v33 + 3) != 0)
              {
                v66 = *(DerivedStorage + 224);
                v67 = *v33;
                v68 = 280;
                if (v66 <= v67)
                {
                  v68 = 264;
                }

                v69 = (v97 + v68);
                if (v64)
                {
                  v69 = (v64 + 56);
                }

                *v69 = v65;
                *v65 = v64;
                *(v33 + 6) = 0;
                *(v33 + 7) = 0;
                if (v66 <= v67)
                {
                  *(v33 + 4) = v55 & 0xEFFE;
                }
              }

              v70 = OUTLINED_FUNCTION_267_0();
              crabsAddBlockToBackedList(v70, v71);
              v55 = *(v33 + 4);
              goto LABEL_109;
            }

            if ((v41 >> 8))
            {
              goto LABEL_115;
            }
          }

LABEL_109:
          if ((v55 & 0x20) != 0)
          {
            v57 = OUTLINED_FUNCTION_267_0();
            removeFromWorkingSet(v57, v58);
            OUTLINED_FUNCTION_267_0();
            OUTLINED_FUNCTION_29_2();
            addToWorkingSet(v59, v60, v61, v62);
          }

          ++v30;
          v29 = *v28;
          v27 = *(DerivedStorage + 96);
          goto LABEL_43;
        }

        if ((a2 & 2) == 0)
        {
          if ((a2 & 0x10) != 0)
          {
            v77 = *(DerivedStorage + 88);
            goto LABEL_152;
          }

          goto LABEL_165;
        }

        v85 = 0;
        v77 = *(DerivedStorage + 88);
LABEL_157:
        if (!crabsDoJump(DerivedStorage, v77))
        {
          goto LABEL_158;
        }

LABEL_160:
        crabsRetainProxyUnlockWithActions(v24);
        if (a1)
        {
          goto LABEL_161;
        }

        goto LABEL_162;
      }
    }
  }

LABEL_182:
  v24 = 0;
  if (a1)
  {
LABEL_161:
    CFRelease(a1);
  }

LABEL_162:
  if (v24)
  {
    CFRelease(v24);
  }

  OUTLINED_FUNCTION_207_0();
}

void crabsCleanupBlockIfPurged(uint64_t result, int *a2)
{
  if ((a2[2] & 0x80) != 0)
  {
    v4 = *(a2 + 11);
    v6 = 0;
    if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v4, 1, &v6))
    {
      v5 = 0;
    }

    else
    {
      v5 = (v6 & 3) == 2;
    }

    if (v5)
    {
      crabsRemovePurgedBacking(result, a2, *(result + 224) <= *a2);
    }
  }
}

uint64_t fpSupport_copyFormatDescription(uint64_t a1, void *a2)
{
  theArray = 0;
  FigTrackReaderGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = v5(v4, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  v7 = theArray;
  if (v6)
  {
    goto LABEL_8;
  }

  if (!theArray)
  {
    return 4294954513;
  }

  Count = CFArrayGetCount(theArray);
  v7 = theArray;
  if (Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    v6 = 0;
    *a2 = ValueAtIndex;
    v7 = theArray;
LABEL_8:
    if (!v7)
    {
      return v6;
    }

    goto LABEL_13;
  }

  v6 = 4294954513;
  if (theArray)
  {
LABEL_13:
    CFRelease(v7);
  }

  return v6;
}

void crabsUnhint(uint64_t *result, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a2 + 8) = v4 & 0xF7FE;
  if (result[45] == *a2)
  {
    result[45] = result[11];
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (v5)
  {
    v7 = (v5 + 24);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = result + 32;
  }

  *v7 = v6;
  *v6 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
LABEL_8:
  if ((v4 & 0x200) != 0)
  {
    if (((v4 >> 8) & 1) == 0)
    {
      return;
    }
  }

  else if (!*(a2 + 88))
  {
    return;
  }

  crabsAddBlockToBackedList(result, a2);
  if ((result[63] & 3) == 0 && !*(a2 + 80) && (*(a2 + 8) & 0x10) == 0)
  {

    crabsMakeBlockVolatileRelativeToAnchor(result, a2);
  }
}

uint64_t crabsSelectNextFill(uint64_t a1, int **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 504) & 3) == 0)
  {
    crabsPurgeCompletionSweep(a1);
  }

  *a2 = 0;
  if (*(a1 + 131))
  {
    return 0;
  }

  v5 = *(a1 + 88);
  if (v5 < 1)
  {
    v6 = 0;
LABEL_26:
    if (*(a1 + 56) != -1 && *(a1 + 80))
    {
      *(a1 + 131) = 1;
      if (v6 == *(a1 + 88))
      {
        *(a1 + 130) = 1;
      }

      if (dword_1EAF16BD0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v6 + *(a1 + 240)) % v5;
    v8 = *(*(a1 + 80) + 8 * v7);
    if (!v8 && (crabsInitBlock(a1, v7) || (v8 = *(*(a1 + 80) + 8 * v7)) == 0))
    {
      crabsSelectNextFill_cold_1(v14);
      return v14[0];
    }

    if ((*(a1 + 504) & 3) == 0 && *(a1 + 224) > *v8)
    {
      crabsCleanupBlockIfPurged(a1, v8);
    }

    if ((v8[2] & 4) == 0)
    {
      v9 = *v8;
      if (*(a1 + 664) != 1)
      {
        break;
      }

      v10 = *(a1 + 96);
      v11 = *(a1 + 632);
      if (v11 > v10 * v9 + v8[1])
      {
        break;
      }

      v12 = v10 * v9 + v10;
      if (*(a1 + 640) + v11 < v12 || *(a1 + 648) + v11 >= v12)
      {
        break;
      }
    }

    ++v6;
    v5 = *(a1 + 88);
    if (v6 >= v5)
    {
      goto LABEL_26;
    }
  }

  if (*(a1 + 224) > v9 && !*(a1 + 132))
  {
    goto LABEL_26;
  }

  *(a1 + 240) = v7;
  if (!*(v8 + 10))
  {
    crabsReadyBlockForLoad(a1, v8, 0);
    if (!*(v8 + 10))
    {
      return 4294954420;
    }
  }

  result = 0;
  *a2 = v8;
  return result;
}

void crabsSwipeUnusedWorking(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 336); ; i = *(a1 + 336))
  {
    v6 = *(i + 8);
    v7 = *v6;
    if (!*v6)
    {
      break;
    }

    removeFromWorkingSet(a1, *v6);
    if ((*(v7 + 8) & 8) == 0 || !crabsBlockIsAKeeper(a1, v7))
    {
      v9 = 0;
      goto LABEL_9;
    }

    addToWorkingSet(a1, v7, 1, 1);
  }

  flushPendingReleaseSet(a1);
  v8 = *(*(a1 + 320) + 8);
  v7 = *v8;
  if (*v8)
  {
    removeFromWorkingSet(a1, *v8);
    v9 = 1;
LABEL_9:
    if ((*(a1 + 504) & 1) != 0 && v7 == *(a1 + 728) && crabsCompleteLazySync(a1, 0))
    {
      addToWorkingSet(a1, v7, 1, 1);
      return;
    }

    v10 = *(v7 + 8);
    if ((v10 & 8) == 0)
    {
LABEL_33:
      v19 = *(v7 + 80);
      *(a2 + 80) = v19;
      *v19 = a2;
      *(v7 + 80) = 0;
      if ((*(a1 + 504) & 3) == 0)
      {
        v20 = *(v7 + 8);
        if ((v20 & 0x200) != 0)
        {
          v21 = (v20 >> 8) & 1;
        }

        else
        {
          v21 = *(v7 + 88) != 0;
        }

        if ((v20 & 0x11) == 0)
        {
          if (v21)
          {
            crabsMakeBlockVolatileRelativeToAnchor(a1, v7);
          }
        }
      }

      crabsCleanupOrphan(a1, v7);
      addToWorkingSet(a1, a2, 1, 1);
      return;
    }

    if ((v10 & 0x200) != 0)
    {
      v11 = (v10 >> 8) & 1;
    }

    else
    {
      v11 = *(v7 + 88) != 0;
    }

    if ((v9 ^ 1 | v11))
    {
      v13 = 0;
      if ((v10 & 0x200) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = crabsAllocBacking(a1, v7);
      v10 = *(v7 + 8);
      if ((v10 & 0x200) != 0)
      {
LABEL_21:
        v14 = (v10 >> 8) & 1;
LABEL_24:
        if (((v9 ^ 1 | v14) & 1) == 0 && crabsBlockIsAKeeper(a1, v7))
        {
          v15 = *(a2 + 8);
          *(a2 + 8) = v15 | 0x400;
          crabsSwipeBacking(a1, v7, 0);
          v13 = v16 == 0;
          *(a2 + 8) = *(a2 + 8) & 0xFBFF | v15 & 0x400;
          v10 = *(v7 + 8);
        }

        if ((v10 & 0x200) != 0)
        {
          if ((v10 >> 8))
          {
LABEL_29:
            crabsSyncBlock(a1, v7);
            v18 = v17 == 0;
            if (!v13)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else if (*(v7 + 88))
        {
          goto LABEL_29;
        }

        v18 = 1;
        if (!v13)
        {
LABEL_31:
          if (!v18)
          {
            crabsMarkBlockUnfilled(a1, v7);
          }

          goto LABEL_33;
        }

LABEL_30:
        crabsAddBlockToBackedList(a1, v7);
        goto LABEL_31;
      }
    }

    v14 = *(v7 + 88) != 0;
    goto LABEL_24;
  }

  v12 = qword_1EAF16BC8;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294954420, "<<<< CRABS >>>>", 4808, v2);
}

void crabsMakeBlockVolatileRelativeToAnchor(void *a1, int *a2)
{
  if (!*(a2 + 11))
  {
    return;
  }

  v2 = a2;
  if ((a2[2] & 0x91) != 0)
  {
    return;
  }

  v3 = a1;
  v4 = a1[28];
  v5 = *a2;
  if (*(a1 + 133))
  {
    if (v4 <= v5 && a1[59] + v4 > v5)
    {
      return;
    }
  }

  else if (v4 <= v5)
  {
    return;
  }

  if (v4 > v5)
  {
    if (crabsChangeBlockVolatility(a1, a2, 2, 1) && (v2[2] & 0x80) == 0)
    {
      v6 = v3[12];
      qword_1EAF189E8 += v6;
      v3[108] += v6;
    }

    return;
  }

  v7 = a1[53];
  if (v7 < v5)
  {
    v8 = a1[54];
    if (v8 > v5)
    {
      v9 = 0;
      v10 = 0;
      v11 = a1[10];
      v12 = *(v11 + 8 * v7);
      v13 = *(v11 + 8 * v8);
      v14 = 16;
      v15 = v12;
      v16 = v13;
      while (1)
      {
        if (v10)
        {
LABEL_24:
          if (v9 == 1)
          {
            if (*v12 < v5)
            {
              do
              {
                v17 = *(v12 + 6);
                if ((v12[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v12, 3, 1))
                {
                  crabsRemovePurgedBacking(v3, v12, 1);
                }

                v12 = v17;
              }

              while (*v17 < *v2);
            }

            v18 = crabsChangeBlockVolatility(v3, v2, 0, 1);
            v19 = **(*(v2 + 7) + 8);
            while (v19 && v7 <= *v19)
            {
              v20 = v19;
              v19 = **(*(v19 + 7) + 8);
              if ((v20[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v20, 0, 1))
              {
                crabsRemovePurgedBacking(v3, v20, 1);
              }
            }

            goto LABEL_77;
          }

          if (*v13 > v5)
          {
            do
            {
              v36 = **(*(v13 + 7) + 8);
              if ((v13[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v13, 1, 1))
              {
                crabsRemovePurgedBacking(v3, v13, 1);
              }

              v13 = v36;
            }

            while (*v36 > *v2);
          }

LABEL_74:
          a1 = v3;
          a2 = v2;
          v34 = 1;
LABEL_75:
          v35 = 1;
          goto LABEL_76;
        }

        v15 = *(v15 + 6);
        v16 = **(*(v16 + 7) + 8);
        if (v15 == a2)
        {
          break;
        }

        if (v16 == a2)
        {
          v9 = 2;
          goto LABEL_22;
        }

        v10 = 0;
LABEL_23:
        if (!--v14)
        {
          goto LABEL_24;
        }
      }

      v9 = 1;
LABEL_22:
      v10 = v9;
      goto LABEL_23;
    }
  }

  v21 = a1[55];
  if (v21 >= v5 || (v22 = a1[56], v22 <= v5))
  {
    if (v7 > v5)
    {
      v34 = 0;
      goto LABEL_75;
    }

    if (a1[56] >= v5)
    {
      goto LABEL_74;
    }

    v34 = 1;
    v35 = 2;
LABEL_76:
    v18 = crabsChangeBlockVolatility(a1, a2, v34, v35);
    goto LABEL_77;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1[10];
  v26 = *(v25 + 8 * v21);
  v27 = *(v25 + 8 * v22);
  v28 = 16;
  v29 = v26;
  v30 = v27;
  while (!v24)
  {
    v29 = *(v29 + 6);
    v30 = **(*(v30 + 7) + 8);
    if (v29 == a2)
    {
      v23 = 1;
LABEL_45:
      v24 = v23;
      goto LABEL_46;
    }

    if (v30 == a2)
    {
      v23 = 2;
      goto LABEL_45;
    }

    v24 = 0;
LABEL_46:
    if (!--v28)
    {
      break;
    }
  }

  if (v23 != 2)
  {
    if (*v26 < v5)
    {
      do
      {
        v37 = *(v26 + 6);
        if ((v26[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v26, 0, 2))
        {
          crabsRemovePurgedBacking(v3, v26, 1);
        }

        v26 = v37;
      }

      while (*v37 < *v2);
    }

    goto LABEL_74;
  }

  if (*v27 > v5)
  {
    do
    {
      v31 = **(*(v27 + 7) + 8);
      if ((v27[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v27, 3, 1))
      {
        crabsRemovePurgedBacking(v3, v27, 1);
      }

      v27 = v31;
    }

    while (*v31 > *v2);
  }

  v18 = crabsChangeBlockVolatility(v3, v2, 1, 2);
  v32 = *(v2 + 6);
  while (v32 && v22 >= *v32)
  {
    v33 = v32;
    v32 = *(v32 + 6);
    if ((v33[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v33, 1, 2))
    {
      crabsRemovePurgedBacking(v3, v33, 1);
    }
  }

LABEL_77:
  if (v18)
  {
    *(v2 + 4) &= ~0x80u;
    crabsPurgeCompletionSweep(v3);
    *(v2 + 4) |= 0x80u;
  }
}

void crabsCleanupOrphan(void *result, uint64_t a2)
{
  if (!*(a2 + 80))
  {
    v2 = *(a2 + 8);
    if ((v2 & 0x200) != 0)
    {
      v3 = (v2 >> 8) & 1;
      if ((v2 & 0x400) != 0)
      {
        return;
      }
    }

    else
    {
      LOBYTE(v3) = *(a2 + 88) != 0;
      if ((v2 & 0x400) != 0)
      {
        return;
      }
    }

    if ((v3 & 1) == 0)
    {
      crabsCleanupOrphan_cold_1(result, a2, (a2 + 8));
    }
  }
}

double crabsPageInBlock(void *result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(result + 126);
  if ((v11 & 1) != 0 && result[93] == a2)
  {

    crabsCompleteLazyPagein(result, 1);
  }

  else
  {
    v12 = *(a2 + 10);
    if (v12)
    {
      v13 = *(a2 + 4);
      if ((v13 & 0x200) != 0)
      {
        v14 = (v13 >> 8) & 1;
      }

      else
      {
        v14 = *(a2 + 11) != 0;
      }

      v15 = a2[1];
      if (v14)
      {
        if (v15)
        {
          if (v11)
          {
            if (crabsDiskBackingIsBusy(result, 0))
            {
              crabsMarkBlockUnbacked(result, a2, result[28] <= *a2);
            }

            else
            {
              FigFileForkRead();
              crabsMarkBlockUnbacked(result, a2, result[28] <= *a2);
              __error();
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0, v20);
            }
          }

          else
          {
            memcpy(*(v12 + 16), *(a2 + 11), a2[1]);
            if ((~*(a2 + 4) & 5) == 0)
            {
              crabsUnhint(result, a2);
            }
          }
        }
      }

      else if (v15)
      {
        v17 = qword_1EAF16BC8;

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294954426, "<<<< CRABS >>>>", 4164, v8);
      }
    }

    else
    {
      return crabsPageInBlock_cold_1(result, a2, a3, a4, a5, a6, a7, a8, v18, v19, SHIDWORD(v19), v20);
    }
  }

  return v16;
}

void crabsReleaseWorkingBlock(CFAllocatorRef *a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    CFAllocatorDeallocate(*a1, *(v2 + 16));
    free(*(a2 + 80));
    *(a2 + 80) = 0;
  }
}

uint64_t QTMovieCacheMemDeallocateCallBack(void *key, uint64_t *a2)
{
  valuePtr = 0;
  v4 = a2[1];
  if (v4 && (Value = CFDictionaryGetValue(v4, key)) != 0)
  {
    CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
    v6 = valuePtr;
  }

  else
  {
    v6 = *a2;
    valuePtr = *a2;
  }

  result = MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], key, v6);
  a2[2] -= valuePtr;
  return result;
}

void itemfig_CopyTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFAllocator *a4, CFDictionaryRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v49 = 0;
  valuePtr = 0;
  v47 = 0;
  if (*DerivedStorage)
  {
    v12 = qword_1EAF16A08;
    v13 = v5;
    v14 = 4294954511;
    v15 = 24554;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v14, "<<<< FigFilePlayer >>>>", v15, v13);
    return;
  }

  if (!a5)
  {
    v12 = qword_1EAF16A08;
    v13 = v5;
    v14 = 4294954516;
    v15 = 24557;
    goto LABEL_5;
  }

  v16 = DerivedStorage;
  v17 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v17)
  {
    itemfig_CopyTrackProperty_cold_1(v46);
    goto LABEL_23;
  }

  if (itemfig_assureBasicsReadyForInspection(a1))
  {
    goto LABEL_23;
  }

  v18 = *(v16 + 1008);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v19 || v19(v18, a2, &v49, &valuePtr))
  {
    goto LABEL_23;
  }

  CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a3, @"MediaType"))
  {
    if (CFEqual(a3, @"FormatDescriptionArray"))
    {
      FigTrackReaderGetFigBaseObject();
      v25 = v24;
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v26)
      {
        goto LABEL_23;
      }

      v27 = kFigTrackProperty_FormatDescriptionArray;
LABEL_22:
      v26(v25, *v27, a4, a5);
      goto LABEL_23;
    }

    if (CFEqual(a3, @"Dimensions"))
    {
      FigTrackReaderGetFigBaseObject();
      v25 = v28;
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v26)
      {
        goto LABEL_23;
      }

      v27 = kFigTrackProperty_Dimensions;
      goto LABEL_22;
    }

    if (CFEqual(a3, @"EstimatedDataRate"))
    {
      v29 = kFigTrackProperty_EstimatedDataRate;
LABEL_35:
      v30 = *v29;
      FigTrackReaderGetFigBaseObject();
      CMBaseObjectCopyProperty(v31, v30, a4, a5);
      goto LABEL_23;
    }

    if (CFEqual(a3, @"NominalFrameRate"))
    {
      v29 = kFigTrackProperty_NominalFrameRate;
      goto LABEL_35;
    }

    if (CFEqual(a3, @"CurrentVideoFrameRate"))
    {
      if (itemfig_getTrackStorage(a1, a2, &v47))
      {
        goto LABEL_23;
      }

      FigSimpleMutexLock();
      if (valuePtr != 1986618469 || !*(v47 + 16))
      {
        goto LABEL_114;
      }

      v39 = kFigRenderPipelineProperty_CurrentVideoFrameRate;
    }

    else
    {
      if (CFEqual(a3, @"Matrix"))
      {
        v29 = kFigTrackProperty_Matrix;
        goto LABEL_35;
      }

      if (CFEqual(a3, @"FormatDetails"))
      {
        itemfig_createTrackFormatDetailsDictionary(v16, v49, a4, a5);
        goto LABEL_23;
      }

      if (CFEqual(a3, @"HasMultipleNonEmptyEdits"))
      {
        if (FigTrackReaderImplementsGetTrackEditCount(v49) && (TrackEditCount = FigTrackReaderGetTrackEditCount(v49), TrackEditCount >= 1))
        {
          v33 = TrackEditCount;
          v34 = 0;
          v35 = 0;
          v36 = MEMORY[0x1E695E4D0];
          v37 = MEMORY[0x1E695E4C0];
          do
          {
            memset(v46, 0, sizeof(v46));
            if (!FigTrackReaderGetTrackEditWithIndex(v49, v34, v46) && (BYTE12(v46[0]) & 1) != 0)
            {
              if (v35 > 0)
              {
                goto LABEL_50;
              }

              ++v35;
            }

            ++v34;
          }

          while (v33 != v34);
          v36 = v37;
        }

        else
        {
          v36 = MEMORY[0x1E695E4C0];
        }

LABEL_50:
        v38 = *v36;
        *a5 = *v36;
        CFRetain(v38);
        goto LABEL_23;
      }

      if (CFEqual(a3, @"AudioCurves"))
      {
        if (itemfig_getTrackStorage(a1, a2, &v47))
        {
          goto LABEL_23;
        }

        if (valuePtr != 1936684398)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24647, v5);
          goto LABEL_23;
        }

        Copy = *(v47 + 80);
        if (!Copy)
        {
          goto LABEL_15;
        }

        goto LABEL_140;
      }

      if (CFEqual(a3, @"AudioProcessingUnits"))
      {
        if (itemfig_getTrackStorage(a1, a2, &v47))
        {
          goto LABEL_23;
        }

        if (valuePtr != 1936684398)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24657, v5);
          goto LABEL_23;
        }

        Copy = *(v47 + 96);
        if (!Copy)
        {
          goto LABEL_15;
        }

        goto LABEL_140;
      }

      if (CFEqual(a3, @"Enabled"))
      {
        if (itemfig_getTrackStorage(a1, a2, &v47))
        {
          goto LABEL_23;
        }

        if (*(v47 + 8))
        {
          v42 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v42 = MEMORY[0x1E695E4C0];
        }

        Copy = CFRetain(*v42);
        goto LABEL_15;
      }

      if (CFEqual(a3, @"VideoFieldMode"))
      {
        if (itemfig_getTrackStorage(a1, a2, &v47))
        {
          goto LABEL_23;
        }

        if (valuePtr != 1986618469)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 24674, v5);
          goto LABEL_23;
        }

        Copy = *(v47 + 24);
        if (!Copy)
        {
          goto LABEL_15;
        }

        goto LABEL_140;
      }

      if (CFEqual(a3, @"AudioProcessingTap"))
      {
        if (itemfig_getTrackStorage(a1, a2, &v47))
        {
          goto LABEL_23;
        }

        if (valuePtr != 1936684398)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24684, v5);
          goto LABEL_23;
        }

        Copy = *(v47 + 88);
        if (!Copy)
        {
          goto LABEL_15;
        }

        goto LABEL_140;
      }

      if (CFEqual(a3, @"LoudnessInfo"))
      {
        if (itemfig_getTrackStorage(a1, a2, &v47))
        {
          goto LABEL_23;
        }

        if (valuePtr != 1936684398)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24694, v5);
          goto LABEL_23;
        }

        Copy = *(v47 + 104);
        if (!Copy)
        {
          goto LABEL_15;
        }

        goto LABEL_140;
      }

      if (CFEqual(a3, @"EffectiveLoudnessInfo"))
      {
        if (!itemfig_getTrackStorage(a1, a2, &v47))
        {
          if (valuePtr == 1936684398)
          {
            itemfig_copyCombinedLoudnessInfoDictionary(a1, a2, a5);
          }

          else
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24704, v5);
          }
        }

        goto LABEL_23;
      }

      if (CFEqual(a3, @"EffectiveEQPreset"))
      {
        if (itemfig_getTrackStorage(a1, a2, &v47))
        {
          goto LABEL_23;
        }

        FigSimpleMutexLock();
        if (valuePtr != 1936684398 || !*(v47 + 16))
        {
          goto LABEL_114;
        }

        v39 = kFigAudioRenderPipelineProperty_EQPreset;
      }

      else if (CFEqual(a3, @"WillTrimShortDurationAudioSamples"))
      {
        if (itemfig_getTrackStorage(a1, a2, &v47))
        {
          goto LABEL_23;
        }

        FigSimpleMutexLock();
        if (valuePtr != 1936684398)
        {
          goto LABEL_114;
        }

        if (!*(v47 + 16))
        {
          v45 = *MEMORY[0x1E695E4D0];
          if (*MEMORY[0x1E695E4D0])
          {
            v45 = CFRetain(v45);
          }

          *a5 = v45;
          goto LABEL_114;
        }

        v39 = kFigAudioRenderPipelineProperty_WillTrimShortDurationSamples;
      }

      else
      {
        if (!CFEqual(a3, @"EmploysHardwarePassthrough"))
        {
          if (!CFEqual(a3, @"TimePitchAlgorithm"))
          {
            if (CFEqual(a3, @"SweepFilterConfiguration"))
            {
              if (itemfig_getTrackStorage(a1, a2, &v47))
              {
                goto LABEL_23;
              }

              if (valuePtr != 1936684398)
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24769, v5);
                goto LABEL_23;
              }

              v43 = *(v47 + 128);
              if (!v43)
              {
                Copy = CFDictionaryCreate(a4, &kFigPlaybackItemTrackSweepFilterConfigurationKey_Enabled, MEMORY[0x1E695E4C0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                goto LABEL_15;
              }
            }

            else
            {
              if (CFEqual(a3, @"SweepFilterSweepValue"))
              {
                if (itemfig_getTrackStorage(a1, a2, &v47))
                {
                  goto LABEL_23;
                }

                if (valuePtr != 1936684398)
                {
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24786, v5);
                  goto LABEL_23;
                }

                v20 = *MEMORY[0x1E695E480];
                p_valuePtr = (v47 + 136);
                v22 = kCFNumberFloat32Type;
                goto LABEL_14;
              }

              if (CFEqual(a3, @"CinematicAudioParameters"))
              {
                if (itemfig_getTrackStorage(a1, a2, &v47))
                {
                  goto LABEL_23;
                }

                if (valuePtr != 1936684398)
                {
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24798, v5);
                  goto LABEL_23;
                }

                v44 = *(v47 + 152);
                if (v44)
                {
                  Copy = CFDataCreateCopy(*MEMORY[0x1E695E480], v44);
                }

                else
                {
                  Copy = 0;
                }

                goto LABEL_15;
              }

              if (!CFEqual(a3, @"VideoEnhancementFilterOptions"))
              {
                if (!CFEqual(a3, @"DisableColorMatching") || itemfig_getTrackStorage(a1, a2, &v47))
                {
                  goto LABEL_23;
                }

                if (valuePtr != 1986618469)
                {
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24824, v5);
                  goto LABEL_23;
                }

                Copy = *(v47 + 64);
                if (!Copy)
                {
                  goto LABEL_15;
                }

                goto LABEL_140;
              }

              if (itemfig_getTrackStorage(a1, a2, &v47))
              {
                goto LABEL_23;
              }

              if (valuePtr != 1986618469)
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24810, v5);
                goto LABEL_23;
              }

              v43 = *(v47 + 56);
              if (!v43)
              {
                *a5 = 0;
                goto LABEL_23;
              }
            }

            Copy = CFDictionaryCreateCopy(a4, v43);
            goto LABEL_15;
          }

          if (itemfig_getTrackStorage(a1, a2, &v47))
          {
            goto LABEL_23;
          }

          if (valuePtr != 1936684398)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 24762, v5);
            goto LABEL_23;
          }

          Copy = *(v47 + 112);
          if (!Copy)
          {
            goto LABEL_15;
          }

LABEL_140:
          Copy = CFRetain(Copy);
          goto LABEL_15;
        }

        if (itemfig_getTrackStorage(a1, a2, &v47))
        {
          goto LABEL_23;
        }

        FigSimpleMutexLock();
        if (valuePtr != 1936684398 || !*(v47 + 16))
        {
LABEL_114:
          FigSimpleMutexUnlock();
          goto LABEL_23;
        }

        v39 = kFigAudioRenderPipelineProperty_EmploysHardwarePassthrough;
      }
    }

    v40 = *v39;
    FigRenderPipelineGetFigBaseObject();
    CMBaseObjectCopyProperty(v41, v40, a4, a5);
    goto LABEL_114;
  }

  v20 = *MEMORY[0x1E695E480];
  p_valuePtr = &valuePtr;
  v22 = kCFNumberSInt32Type;
LABEL_14:
  Copy = CFNumberCreate(v20, v22, p_valuePtr);
LABEL_15:
  *a5 = Copy;
LABEL_23:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

CFArrayRef FigMatrixToCFArray(const __CFAllocator *a1, char *valuePtr)
{
  v4 = 0;
  v5 = 0;
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v6 = *MEMORY[0x1E695E480];
  do
  {
    v7 = valuePtr;
    v8 = 3;
    do
    {
      v9 = v4;
      v10 = CFNumberCreate(v6, kCFNumberFloat32Type, v7);
      v4 = v9 + 1;
      *(v15 + v9) = v10;
      v7 += 4;
      --v8;
    }

    while (v8);
    ++v5;
    valuePtr += 12;
  }

  while (v5 != 3);
  v11 = CFArrayCreate(a1, v15, 9, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 72; i += 8)
  {
    v13 = *(v15 + i);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  return v11;
}

uint64_t FPSupport_CreateDestinationPixelBufferAttributes(int a1, int a2, char *valuePtr, unsigned int a4, char a5, int a6, int a7, int a8, int a9, CFDictionaryRef *a10)
{
  v10 = a8;
  v12 = a6;
  v13 = a5;
  v14 = valuePtr;
  v61 = *MEMORY[0x1E69E9840];
  v39 = a2;
  valuePtra = a1;
  v37 = a8;
  v38 = a7;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  *keys = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = &v41[1];
  v18 = &keys[1];
  *v41 = 0u;
  v42 = 0u;
  v19 = MEMORY[0x1E695E480];
  if (a4 == 1)
  {
    keys[0] = *MEMORY[0x1E6966130];
    v41[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
    v20 = 1;
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a4 < 2)
  {
    v20 = 0;
    v18 = keys;
    v17 = v41;
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v21 = 0;
  keys[0] = *MEMORY[0x1E6966130];
  v22 = *MEMORY[0x1E695E480];
  v59 = 0uLL;
  v60 = 0uLL;
  v57 = 0uLL;
  v58 = 0uLL;
  v55 = 0uLL;
  v56 = 0uLL;
  v53 = 0uLL;
  v54 = 0uLL;
  *values = 0uLL;
  v52 = 0uLL;
  v23 = a4;
  v24 = 8 * a4;
  do
  {
    values[v21 / 8] = CFNumberCreate(v22, kCFNumberSInt32Type, v14);
    v21 += 8;
    v14 += 4;
  }

  while (v24 != v21);
  v25 = CFArrayCreate(v22, values, v23, MEMORY[0x1E695E9C0]);
  v26 = 0;
  v27 = 8 * v23;
  v10 = a8;
  v17 = &v41[1];
  do
  {
    v28 = values[v26 / 8];
    if (v28)
    {
      CFRelease(v28);
    }

    v26 += 8;
  }

  while (v27 != v26);
  v41[0] = v25;
  v20 = 1;
  v13 = a5;
  v12 = a6;
  v19 = MEMORY[0x1E695E480];
  if (a1)
  {
LABEL_14:
    *v18 = *MEMORY[0x1E6966208];
    *v17 = CFNumberCreate(*v19, kCFNumberIntType, &valuePtra);
    ++v20;
  }

LABEL_15:
  if (a2)
  {
    keys[v20] = *MEMORY[0x1E69660B8];
    v41[v20++] = CFNumberCreate(*v19, kCFNumberIntType, &v39);
  }

  if (v13)
  {
    keys[v20] = *MEMORY[0x1E6966110];
    v41[v20++] = CFRetain(*MEMORY[0x1E695E4D0]);
  }

  if (a7 >= 2)
  {
    keys[v20] = *MEMORY[0x1E6966140];
    v41[v20++] = CFNumberCreate(*v19, kCFNumberSInt32Type, &v38);
  }

  if (v10 >= 2)
  {
    keys[v20] = *MEMORY[0x1E6966020];
    v41[v20++] = CFNumberCreate(*v19, kCFNumberSInt32Type, &v37);
  }

  if ((v13 & 2) != 0)
  {
    keys[v20] = *MEMORY[0x1E69660F0];
    v41[v20++] = *MEMORY[0x1E695E4D0];
  }

  v29 = CFDictionaryCreate(*v19, keys, v41, v20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v12)
  {
    values[0] = 0;
    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    if (PixelBufferAttributesWithIOSurfaceSupport)
    {
      v31 = PixelBufferAttributesWithIOSurfaceSupport;
      if (!v20)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    if (v29)
    {
      CFRelease(v29);
    }

    v29 = values[0];
  }

  v31 = 0;
  *a10 = v29;
  v29 = 0;
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_31:
  v32 = v41;
  do
  {
    if (*v32)
    {
      CFRelease(*v32);
    }

    ++v32;
    --v20;
  }

  while (v20);
LABEL_35:
  if (v29)
  {
    CFRelease(v29);
  }

  return v31;
}

void FPSupport_EnsureCAImageQueue(CFTypeRef *a1, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_autoreleasePoolPush();
  if (*a1)
  {
    if (CAImageQueueGetWidth() != v6 || CAImageQueueGetHeight() != v5)
    {
      CAImageQueueSetSize();
    }
  }

  else
  {
    CFPreferencesGetAppIntegerValue(@"caiq_capacity", @"com.apple.coremedia", 0);
    v10 = CAImageQueueCreate();
    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = v10;
    if (v10)
    {
      CAImageQueueSetFlags();
      if (a2)
      {
        FPSupport_CreateCASlot(*a1, a2);
      }
    }
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t fpSupport_getContext()
{
  v0 = objc_autoreleasePoolPush();
  if (fpSupport_getContext_onceToken != -1)
  {
    fpSupport_getContext_cold_1();
  }

  FigSimpleMutexLock();
  if (fpSupport_getContext_sContext)
  {
    [MEMORY[0x1E6979518] synchronize];
    if (([fpSupport_getContext_sContext valid] & 1) == 0)
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      CFRelease(fpSupport_getContext_sContext);
      fpSupport_getContext_sContext = 0;
      [MEMORY[0x1E6979518] commit];
    }

    v1 = fpSupport_getContext_sContext;
    if (fpSupport_getContext_sContext)
    {
      goto LABEL_14;
    }
  }

  v2 = (CARenderServerIsRunning() ? [MEMORY[0x1E6979320] localContext] : objc_msgSend(MEMORY[0x1E6979320], "remoteContext"));
  fpSupport_getContext_sContext = v2;
  if (v2)
  {
    CFRetain(v2);
    v1 = fpSupport_getContext_sContext;
    if (fpSupport_getContext_sContext)
    {
LABEL_14:
      CFRetain(v1);
      CFAutorelease(fpSupport_getContext_sContext);
    }
  }

  FigSimpleMutexUnlock();
  objc_autoreleasePoolPop(v0);
  return fpSupport_getContext_sContext;
}

uint64_t FigVideoRenderPipelineCreateWithLKImageQueue(const __CFAllocator *a1, const void *a2, const void *a3, int a4, const void *a5, CFDictionaryRef theDict, void *a7)
{
  value = 0;
  values = 0;
  if (theDict && (CFDictionaryGetValueIfPresent(theDict, @"LoggingID", &value), value))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if (!Mutable)
    {
      FigVideoRenderPipelineCreateWithLKImageQueue_cold_1(&v21);
      v14 = v21;
      goto LABEL_8;
    }
  }

  else
  {
    Mutable = 0;
  }

  FigImageQueueCreateForCoreAnimationWithOptions(0, a5, Mutable, &values);
  v15 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
  FigVideoRenderPipelineCreateWithFigImageQueueArray(a1, a2, a3, 0, v16, v15, 0, theDict, a7);
  v14 = v17;
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_8:
  if (values)
  {
    CFRelease(values);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t RegisterFigImageQueueType()
{
  CMBaseGetClassID();
  FigBaseClassRegisterClass();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t VMC2CreateWithQueues(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, void *a8, __int128 *a9, __int128 *a10, const void *a11, const void *a12, const __CFDictionary *a13, uint64_t *a14)
{
  values = a8;
  v17 = *MEMORY[0x1E695E480];
  v18 = MEMORY[0x1E695E9C0];
  v19 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  v20 = CFArrayCreate(v17, MEMORY[0x1E695E738], 1, v18);
  v29 = *a9;
  v30 = *(a9 + 2);
  v27 = *a10;
  v28 = *(a10 + 2);
  v21 = VMC2CreateWithQueues2(a1, a2, a3, a4, a5, a6, a7, v19, v20, &v29, &v27, a11, a12, a13, a14);
  CFRelease(v19);
  CFRelease(v20);
  return v21;
}

double FigSampleBufferProviderCreateForBufferQueue(uint64_t a1, const void *a2, void **a3)
{
  refcon = 0;
  if (a2)
  {
    if (a3)
    {
      FigSampleBufferProviderGetClassID();
      if (CMDerivedObjectCreate() || (DerivedStorage = CMBaseObjectGetDerivedStorage(), *(DerivedStorage + 8) = a2, CFRetain(a2), *(DerivedStorage + 40) = FigSimpleMutexCreate(), *(DerivedStorage + 48) = 0, v8 = *(DerivedStorage + 8), v14 = *MEMORY[0x1E6960CC0], *&time.value = *MEMORY[0x1E6960CC0], v9 = *(MEMORY[0x1E6960CC0] + 16), time.epoch = v9, CMBufferQueueInstallTrigger(v8, sbp_bq_minOrMaxPTSChanged_orEndOfDataReached, refcon, 8, &time, (DerivedStorage + 16))) || (v10 = *(DerivedStorage + 8), *&time.value = v14, time.epoch = v9, CMBufferQueueInstallTrigger(v10, sbp_bq_dataBecameReady, refcon, 7, &time, (DerivedStorage + 24))) || CMBufferQueueInstallTriggerWithIntegerThreshold(*(DerivedStorage + 8), sbp_bq_dataBecameAvailable, refcon, 11, 0, (DerivedStorage + 32)) || (CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListener()) || (CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListener()) || (CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListener()) || (CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListener()))
      {
        if (refcon)
        {
          CFRelease(refcon);
        }
      }

      else
      {
        *a3 = refcon;
      }

      return result;
    }

    emitter = fig_log_get_emitter();
    v12 = v3;
    v13 = 551;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v12 = v3;
    v13 = 549;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< SBP-BQ >>>>", v13, v12);
}

uint64_t RegisterFigSampleBufferProviderType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

double FigActivitySchedulerCreateForNewThread(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  values = a3;
  if (a4)
  {
    v7 = a2;
    v8 = *MEMORY[0x1E695E480];
    FigActivitySchedulerGetClassID();
    if (!CMDerivedObjectCreate())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v11 = FigSimpleMutexCreate();
      *(DerivedStorage + 48) = v11;
      if (v11)
      {
        v12 = FigSemaphoreCreate();
        *(DerivedStorage + 24) = v12;
        if (v12)
        {
          v13 = FigSimpleMutexCreate();
          *(DerivedStorage + 16) = v13;
          if (v13)
          {
            if (!a3)
            {
              values = @"com.apple.coremedia.activityscheduler";
            }

            v14 = CFDictionaryCreate(v8, MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(DerivedStorage + 60) = v7;
            if (!FigThreadCreate())
            {
              *a4 = 0;
            }

            if (v14)
            {
              CFRelease(v14);
            }
          }

          else
          {
            FigActivitySchedulerCreateForNewThread_cold_1();
          }
        }

        else
        {
          FigActivitySchedulerCreateForNewThread_cold_2();
        }
      }

      else
      {
        FigActivitySchedulerCreateForNewThread_cold_3();
      }
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 408, v4);
  }

  return result;
}

uint64_t RegisterFigActivitySchedulerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t VMC2CreateWithCallbacks(uint64_t a1, const opaqueCMFormatDescription *a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, void *a8, CFTypeRef cf, __int128 *a10, __int128 *a11, const void *a12, const void *a13, const __CFDictionary *a14, uint64_t *a15)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    emitter = fig_log_get_emitter();
    v25.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954473, "<<<< VMC >>>>", 3209, v15);
    goto LABEL_34;
  }

  if (!a8)
  {
    fig_log_get_emitter();
    v25.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, v56, v57);
    v38 = v40;
    Instance = 0;
    goto LABEL_39;
  }

  if (!a8[2] || !a8[3] || !a8[4] || !a8[5] || !a8[6] || !a8[7] || !a8[8] || !a8[9] || !a8[11])
  {
    v35 = fig_log_get_emitter();
    v25.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 4294954473, "<<<< VMC >>>>", 3236, v15);
    goto LABEL_34;
  }

  if (!a12)
  {
    v43 = fig_log_get_emitter();
    v25.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 4294954473, "<<<< VMC >>>>", 3240, v15);
    goto LABEL_34;
  }

  if (!a15)
  {
    v44 = fig_log_get_emitter();
    v25.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, 4294954473, "<<<< VMC >>>>", 3251, v15);
LABEL_34:
    v38 = v36;
    Instance = 0;
    if (!a8)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  MEMORY[0x19A8D3660](&sRegisterVMCTypeOnce, RegisterVMC2Type);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    fig_log_get_emitter();
    v25.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, v56, v57);
    goto LABEL_48;
  }

  v23 = cf;
  if (cf)
  {
    v23 = CFRetain(cf);
  }

  *(Instance + 256) = v23;
  vmc2SetVideoFormatDescription(Instance, a2);
  *(Instance + 48) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  *(Instance + 56) = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  *(Instance + 88) = a6;
  CFRetain(a6);
  *(Instance + 800) = 0;
  vmc2UpdateDisplayMode(Instance);
  CMNotificationCenterGetDefaultLocalCenter();
  v24 = CMNotificationCenterAddListener();
  if (v24 || (CMNotificationCenterGetDefaultLocalCenter(), v24 = CMNotificationCenterAddListener(), v24) || (CMNotificationCenterGetDefaultLocalCenter(), v24 = CMNotificationCenterAddListener(), v24) || (CMNotificationCenterGetDefaultLocalCenter(), v24 = CMNotificationCenterAddListener(), v24) || (CMNotificationCenterGetDefaultLocalCenter(), FPSupport_GetDisplayVideoRangeNotificationSingleton(), v24 = FigNotificationCenterAddWeakListener(), v24))
  {
LABEL_48:
    v38 = v24;
    if (!a8)
    {
      goto LABEL_39;
    }

LABEL_35:
    if (v38)
    {
      v39 = a8[9];
      if (v39)
      {
        v39(a8[1], v25);
      }
    }

LABEL_39:
    if (a7)
    {
      v41 = *(a7 + 24);
      if (v41)
      {
        v41(*(a7 + 8), v25);
      }
    }

    if (Instance)
    {
      goto LABEL_43;
    }

    return v38;
  }

  if (a7)
  {
    __copy_assignment_8_8_t0w16_pa0_323_16_pa0_24722_24_pa0_38677_32(Instance + 96, a7);
  }

  *(Instance + 136) = FigReadWriteLockCreate();
  __copy_assignment_8_8_t0w16_pa0_37031_16_pa0_15589_24_pa0_48845_32_pa0_31235_40_pa0_15173_48_pa0_1637_56_pa0_22919_64_pa0_52647_72_pa0_36147_80_pa0_30122_88(Instance + 144, a8);
  *(Instance + 248) = 256;
  *(Instance + 240) = 0;
  v26 = *a11;
  *(Instance + 512) = *(a11 + 2);
  *(Instance + 496) = v26;
  v27 = *a10;
  *(Instance + 488) = *(a10 + 2);
  *(Instance + 472) = v27;
  *(Instance + 264) = a12;
  CFRetain(a12);
  valuePtr[0] = 0;
  v28 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  FigActivitySchedulerGetFigBaseObject();
  CMBaseObjectSetProperty(v29, @"ClientPID", v28);
  CFRelease(v28);
  v30 = *MEMORY[0x1E695E4C0];
  FigActivitySchedulerGetFigBaseObject();
  CMBaseObjectSetProperty(v31, @"ThrottleForBackground", v30);
  v32 = FigActivitySchedulerSetProcessingCallback(*(Instance + 264), vmc2DecodeUntilHighWaterMet, Instance);
  if (v32)
  {
    goto LABEL_67;
  }

  *(Instance + 272) = 1;
  v33 = MEMORY[0x1E6960C70];
  *(Instance + 392) = *MEMORY[0x1E6960C70];
  *(Instance + 408) = *(v33 + 16);
  if (a13)
  {
    v34 = CFRetain(a13);
    *(Instance + 584) = v34;
    if (v34)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }
  }

  else
  {
    *(Instance + 584) = 0;
  }

  *(Instance + 873) = 1;
  *(Instance + 877) = 0;
  *(Instance + 879) = 1;
  if (a14)
  {
    LOBYTE(valuePtr[0]) = 0;
    LOBYTE(v59) = 0;
    Value = CFDictionaryGetValue(a14, @"SharePixelBufferPool");
    *(Instance + 992) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    v46 = CFDictionaryGetValue(a14, @"AllowClientProcessDecode");
    *(Instance + 1000) = v46;
    if (v46)
    {
      CFRetain(v46);
    }

    *(Instance + 873) = CFDictionaryGetValue(a14, @"RealTime") != v30;
    FigCFDictionaryGetBooleanIfPresent();
    *(Instance + 874) = valuePtr[0];
    FigCFDictionaryGetBooleanIfPresent();
    *(Instance + 875) = v59;
    FigCFDictionaryGetBooleanIfPresent();
    *(Instance + 876) = 0;
    FigCFDictionaryGetInt32IfPresent();
    v47 = FigCFDictionaryGetValue();
    if (v47)
    {
      v47 = CFRetain(v47);
    }

    *(Instance + 848) = v47;
    FigCFDictionaryGetBooleanIfPresent();
    StringValue = FigCFDictionaryGetStringValue();
    *(Instance + 864) = StringValue;
    if (StringValue)
    {
      CFRetain(StringValue);
    }

    FigCFDictionaryGetBooleanIfPresent();
  }

  if (a3)
  {
    v49 = CFRetain(a3);
  }

  else
  {
    v49 = 0;
  }

  *(Instance + 24) = v49;
  if (*(Instance + 32))
  {
    if (!*(Instance + 40))
    {
      FigSimpleMutexLock();
      v50 = vmc2BuildDecompressionSession(Instance);
      FigSimpleMutexUnlock();
      if (v50)
      {
        v38 = v50;
        goto LABEL_43;
      }
    }
  }

  v32 = VTPixelBufferConformerCreateWithAttributes();
  if (v32 || (v51 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(Instance + 816)), *(Instance + 824) = v51, dispatch_source_set_timer(v51, 0, 0x3B9ACA00uLL, 0x1DCD6500uLL), dispatch_set_context(*(Instance + 824), Instance), dispatch_source_set_event_handler_f(*(Instance + 824), vmc2UpdateExternalProtectionStatus), *(Instance + 1424) = voucher_copy(), v32 = vmc2InvokeOutputCallback_InstallOccupancyChangedCallback(Instance), v32))
  {
LABEL_67:
    v38 = v32;
LABEL_43:
    CFRelease(Instance);
    return v38;
  }

  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  AdoptedVoucherProcessIDAndUUIDString = FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
  *(Instance + 1200) = AdoptedVoucherProcessIDAndUUIDString;
  if (AdoptedVoucherProcessIDAndUUIDString <= 0)
  {
    *(Instance + 1200) = getpid();
  }

  if (dword_1EAF18AC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v54 = *(Instance + 32);
  if (v54)
  {
    *(Instance + 1204) = CMFormatDescriptionGetMediaSubType(v54);
  }

  v38 = 0;
  *a15 = Instance;
  return v38;
}

uint64_t RegisterVMC2Type()
{
  result = _CFRuntimeRegisterClass();
  sVMC2ID = result;
  return result;
}

uint64_t vmc2Init(uint64_t a1)
{
  bzero((a1 + 16), 0x5F8uLL);
  *(a1 + 280) = FigReentrantMutexCreate();
  *(a1 + 296) = FigSimpleMutexCreate();
  *(a1 + 304) = FigSemaphoreCreate();
  *(a1 + 632) = FigSimpleMutexCreate();
  *(a1 + 536) = FigSimpleMutexCreate();
  *(a1 + 776) = FigSimpleMutexCreate();
  *(a1 + 72) = FigSimpleMutexCreate();
  *(a1 + 1512) = FigSimpleMutexCreate();
  *(a1 + 448) = dispatch_queue_create("com.apple.coremedia.videomediaconverter.inbound", 0);
  *(a1 + 464) = dispatch_queue_create("com.apple.coremedia.videomediaconverter.outbound", 0);
  *(a1 + 456) = FigDispatchQueueCreateWithPriority();
  *(a1 + 816) = dispatch_queue_create("com.apple.coremedia.videomediaconverter.cpec", 0);
  FigDispatchQueueSetPriorityAndClientPID();
  *(a1 + 824) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 1;
  *(a1 + 704) = FigSimpleMutexCreate();
  *(a1 + 984) = dispatch_queue_create("com.apple.coremedia.videomediaconverter.filter", 0);
  *(a1 + 888) = *MEMORY[0x1E695F060];
  *(a1 + 624) = 1;
  *(a1 + 576) = FigSimpleMutexCreate();
  *(a1 + 792) = 1;
  *(a1 + 1184) = FigSimpleMutexCreate();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v4, CFPreferenceNumberWithDefault, 1000);
  *(a1 + 1452) = v4;
  *(a1 + 1476) = FigGetCFPreferenceNumberWithDefault();
  result = FigSimpleMutexCreate();
  *(a1 + 1528) = result;
  return result;
}

uint64_t FigActivitySchedulerSetProcessingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void activityOnThread_setProcessingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954511, "(Fig)", 336, v3);
  }

  else
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    *(v7 + 4) = a3;
    *(v7 + 5) = a2;
    FigSimpleMutexUnlock();
  }
}

uint64_t activitySchedulerOnThread(uint64_t a1)
{
  while (!*(a1 + 57))
  {
    if (*(a1 + 56))
    {
      FigSimpleMutexLock();
      if (*(a1 + 40))
      {
        v2 = objc_autoreleasePoolPush();
        (*(a1 + 40))(*(a1 + 32));
        objc_autoreleasePoolPop(v2);
      }

      FigSimpleMutexUnlock();
    }

    FigSemaphoreWaitRelative();
  }

  return 0;
}

void VMC2Go(uint64_t a1)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< VMC >>>>", 7959, v1);
  }

  else
  {
    ++*(a1 + 524);
    vmc2ResetTroubleMonitorTimers(a1);
    *(a1 + 288) = 1;
    FigMemoryBarrier();
    v4 = *(a1 + 264);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      v5(v4);
    }
  }
}

void activityOnThread_triggerScheduling(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954511, "(Fig)", 349, v1);
  }

  else
  {
    v3 = DerivedStorage;
    DerivedStorage[56] = 1;
    FigMemoryBarrier();
    if (*(v3 + 3))
    {
      FigSemaphoreSignal();
    }
  }
}

void figVideoRenderPipelineSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!DerivedStorage || (v8 = DerivedStorage, *DerivedStorage))
  {
    v9 = qword_1EAF16EF0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954444, "<<<< VRP >>>>", 2236, v3);
    return;
  }

  if (CFEqual(@"Timebase", a2))
  {
    if (a3 && (TypeID = CMTimebaseGetTypeID(), TypeID != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2245, v3);
    }

    else
    {
      videopipelineSetTimebase(a1, a3);
    }

    goto LABEL_51;
  }

  if (CFEqual(@"PrerollRate", a2))
  {
    if (a3 && (v11 = CFNumberGetTypeID(), v11 == CFGetTypeID(a3)))
    {
      valuePtr = 1.0;
      CFNumberGetValue(a3, kCFNumberFloatType, &valuePtr);
      v12 = *(v8 + 5);
      if (v12)
      {
        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          v14 = Count;
          for (i = 0; i != v14; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 5), i);
            v17 = valuePtr;
            v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v18)
            {
              v18(ValueAtIndex, v17);
            }
          }
        }
      }

      figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
      if (theArray)
      {
        v19 = CFArrayGetCount(theArray);
        if (v19 >= 1)
        {
          v20 = v19;
          for (j = 0; j != v20; ++j)
          {
            v22 = CFArrayGetValueAtIndex(theArray, j);
            v23 = valuePtr;
            v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v24)
            {
              v24(v22, v23);
            }
          }
        }
      }

      v25 = *(v8 + 4);
      if (v25)
      {
        if (valuePtr < 0.0)
        {
          v26 = -1;
        }

        else
        {
          v26 = 0;
        }

        if (valuePtr <= 0.0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 1;
        }

        FigSampleAttachmentCollectorSetDirection(v25, v27);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2279, v3);
    }

    goto LABEL_51;
  }

  if (CFEqual(@"PreventDisplaySleepDuringVideoPlayback", a2))
  {
    if (!a3 || (v28 = CFBooleanGetTypeID(), v28 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2292, v3);
      goto LABEL_51;
    }

    v8[88] = CFBooleanGetValue(a3);
    v29 = *(v8 + 5);
    v30 = kFigImageQueueProperty_PreventDisplaySleepDuringVideoPlayback;
    goto LABEL_56;
  }

  if (CFEqual(@"VideoEnqueueResetsSystemSleepTimer", a2))
  {
    if (!a3 || (v31 = CFBooleanGetTypeID(), v31 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2300, v3);
      goto LABEL_51;
    }

    figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
    v29 = theArray;
    v30 = kFigImageQueueProperty_EnqueueResetsSystemSleepTimer;
    goto LABEL_56;
  }

  if (CFEqual(@"CAImageQueueCaptionsMayAppearHint", a2))
  {
    if (!a3 || (v32 = CFBooleanGetTypeID(), v32 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2309, v3);
      goto LABEL_51;
    }

    figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
    v29 = theArray;
    v30 = kFigImageQueueProperty_CAImageQueueCaptionsMayAppearHint;
    goto LABEL_56;
  }

  if (CFEqual(@"DurationAllowedForCachedVideoFrames", a2))
  {
    v29 = *(v8 + 5);
    v30 = kFigImageQueueProperty_DurationAllowedForCachedVideoFrames;
    goto LABEL_56;
  }

  if (CFEqual(@"ObeyEmptyMediaMarkers", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_ObeyEmptyMediaMarkers;
    goto LABEL_60;
  }

  if (CFEqual(@"AttachmentCollectorMetadataSourceBuffers", a2))
  {
    v35 = *(v8 + 4);
    if (!v35)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2326, v3);
      goto LABEL_51;
    }

    v36 = kFigSampleAttachmentCollectorProperty_MetadataSourceBufferQueues;
LABEL_64:
    CMBaseObjectSetProperty(v35, *v36, a3);
    goto LABEL_51;
  }

  if (CFEqual(@"SampleAttachmentCollectionRules", a2))
  {
    v37 = *(v8 + 4);
    if (v37)
    {
      CMBaseObjectSetProperty(v37, @"SampleAttachmentCollectionRules", a3);
    }

    v38 = *(v8 + 2);
    if (v38)
    {
      VMC2SetProperty(v38, @"CollectionRules", a3);
    }

    goto LABEL_51;
  }

  if (CFEqual(@"RenderEmptyMedia", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_RenderEmptyMedia;
    goto LABEL_60;
  }

  if (CFEqual(@"ClientPID", a2))
  {
    if (!a3)
    {
      goto LABEL_51;
    }

    v39 = CFGetTypeID(a3);
    if (v39 != CFNumberGetTypeID())
    {
      goto LABEL_51;
    }

    valuePtr = 0.0;
    CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
    if (LODWORD(valuePtr) == *(v8 + 1))
    {
      goto LABEL_51;
    }

    *(v8 + 1) = valuePtr;
    videopipelineUpdateVideoPlaybackStateForClient(a1);
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_ClientPID;
    goto LABEL_60;
  }

  if (CFEqual(@"ThrottleForBackground", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_ThrottleForBackground;
    goto LABEL_60;
  }

  if (CFEqual(@"FieldMode", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_FieldMode;
    goto LABEL_60;
  }

  if (CFEqual(@"AllowVideoQualityOfServiceAdjustments", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_AllowVideoQualityOfServiceAdjustments;
    goto LABEL_60;
  }

  if (CFEqual(@"VideoDecoderUsage", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_DecoderUsage;
    goto LABEL_60;
  }

  if (CFEqual(@"VideoDecoderPriority", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_DecoderPriority;
    goto LABEL_60;
  }

  if (CFEqual(@"VideoDecoderThreadCount", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_DecoderThreadCount;
    goto LABEL_60;
  }

  if (CFEqual(@"Suspended", a2))
  {
    if (a3 && (v40 = CFBooleanGetTypeID(), v40 == CFGetTypeID(a3)))
    {
      Value = CFBooleanGetValue(a3);
      v42 = *(v8 + 2);
      if (!v42)
      {
        goto LABEL_195;
      }

      if (Value)
      {
        VMC2Stop(v42);
      }

      else
      {
        VMC2Go(v42);
      }

      if (!v43)
      {
LABEL_195:
        v47 = *(v8 + 4);
        if (v47)
        {
          if (Value)
          {
            FigSampleAttachmentCollectorStop(v47);
          }

          else
          {
            FigSampleAttachmentCollectorGo(v47);
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2401, v3);
    }

    goto LABEL_51;
  }

  if (CFEqual(@"MaxAgeForOutputBufferPool", a2))
  {
    if (a3)
    {
      v44 = CFNumberGetTypeID();
      if (v44 != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2409, v3);
        goto LABEL_51;
      }
    }

    v33 = *(v8 + 2);
    if (v33)
    {
      v34 = kVideoMediaConverter2Property_MaxAgeForOutputPixelBufferPool;
      goto LABEL_60;
    }

    goto LABEL_51;
  }

  if (CFEqual(@"VideoDecoderIsSecondary", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_VideoDecoderIsSecondary;
    goto LABEL_60;
  }

  if (CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
  {
    v45 = *(v8 + 2);
    if (!v45 || (VMC2SetProperty(v45, @"PropagatePerFrameHDRDisplayMetadata", a3), !v46))
    {
      v35 = *(v8 + 4);
      if (v35)
      {
        v36 = kFigSampleAttachmentCollectorProperty_PropagatePerFrameHDRDisplayMetadata;
        goto LABEL_64;
      }
    }

    goto LABEL_51;
  }

  if (CFEqual(@"ForceFullPowerDecode", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_ForceFullPowerDecode;
    goto LABEL_60;
  }

  if (CFEqual(@"EnableIOFenceDecode", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_EnableIOFenceDecode;
    goto LABEL_60;
  }

  if (CFEqual(@"EnhancementFilterOptions", a2))
  {
    v33 = *(v8 + 2);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = kVideoMediaConverter2Property_EnhancementFilterOptions;
    goto LABEL_60;
  }

  if (CFEqual(@"VideoEnhancementMode", a2))
  {
    if (a3)
    {
      v48 = CFStringGetTypeID();
      if (v48 != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2447, v3);
        goto LABEL_51;
      }

      v49 = *(v8 + 12);
      *(v8 + 12) = a3;
      CFRetain(a3);
    }

    else
    {
      v49 = *(v8 + 12);
      *(v8 + 12) = 0;
    }

    if (v49)
    {
      CFRelease(v49);
    }

    v29 = *(v8 + 5);
    v30 = kFigImageQueueProperty_VideoEnhancementMode;
    goto LABEL_56;
  }

  if (CFEqual(@"Rotation", a2))
  {
    v50 = *(v8 + 17);
    if (v50)
    {
      FigTransformUtilitySetRotation(v50, a3);
    }

    goto LABEL_51;
  }

  if (CFEqual(@"MinImageBounds", a2))
  {
    v51 = *(v8 + 17);
    if (v51)
    {
      FigTransformUtilitySetMinImageBounds(v51, a3);
    }

    goto LABEL_51;
  }

  if (CFEqual(@"MaxImageBounds", a2))
  {
    v52 = *(v8 + 17);
    if (v52)
    {
      FigTransformUtilitySetMaxImageBounds(v52, a3);
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"NeroVideoGravity"))
  {
    v53 = *(v8 + 17);
    if (v53)
    {
      FigTransformUtilitySetVideoGravity(v53, a3);
    }

    goto LABEL_51;
  }

  if (CFEqual(@"DisableColorMatching", a2))
  {
    if (a3)
    {
      v54 = CFBooleanGetTypeID();
      if (v54 != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2473, v3);
        goto LABEL_51;
      }
    }

    figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
    v29 = theArray;
    v30 = kFigImageQueueProperty_DisableColorMatching;
LABEL_56:
    FigImageQueueArraySetProperty(v29, *v30, a3);
    goto LABEL_51;
  }

  if (!CFEqual(@"FigImageQueueArray", a2))
  {
    if (CFEqual(@"ColorPrimaries", a2))
    {
      v33 = *(v8 + 2);
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = kVideoMediaConverter2Property_ColorPrimaries;
    }

    else if (CFEqual(@"TransferFunction", a2))
    {
      v33 = *(v8 + 2);
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = kVideoMediaConverter2Property_TransferFunction;
    }

    else if (CFEqual(@"YCbCrMatrix", a2))
    {
      v33 = *(v8 + 2);
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = kVideoMediaConverter2Property_YCbCrMatrix;
    }

    else if (CFEqual(@"PreserveSyncFrames", a2))
    {
      v33 = *(v8 + 2);
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = kVideoMediaConverter2Property_PreserveSyncFrames;
    }

    else if (CFEqual(@"PlaybackSessionID", a2))
    {
      v33 = *(v8 + 2);
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = kVideoMediaConverter2Property_PlaybackSessionID;
    }

    else if (CFEqual(@"HDRCrossTalker", a2))
    {
      v33 = *(v8 + 2);
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = kVideoMediaConverter2Property_HDRCrossTalker;
    }

    else if (CFEqual(@"PriorImageQueueGauge", a2))
    {
      v33 = *(v8 + 2);
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = kVideoMediaConverter2Property_PriorImageQueueGauge;
    }

    else if (CFEqual(@"DecompressionSessionProperties", a2))
    {
      v33 = *(v8 + 2);
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = kVideoMediaConverter2Property_DecompressionSessionProperties;
    }

    else
    {
      if (!CFEqual(@"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a2))
      {
        goto LABEL_51;
      }

      v33 = *(v8 + 2);
      if (!v33)
      {
        goto LABEL_51;
      }

      v34 = kVideoMediaConverter2Property_MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs;
    }

LABEL_60:
    VMC2SetProperty(v33, *v34, a3);
    goto LABEL_51;
  }

  if (!a3 || (v55 = CFArrayGetTypeID(), v55 == CFGetTypeID(a3)))
  {
    figVideoRenderPipelineUpdateImageQueues(a1, a3);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 2480, v3);
  }

LABEL_51:
  if (theArray)
  {
    CFRelease(theArray);
  }
}

void piqca_setProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"PreventDisplaySleepDuringVideoPlayback", a2))
  {
    if (a3)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        *(DerivedStorage + 132) = CFBooleanGetValue(a3);
        return;
      }
    }

    v9 = qword_1EAF170D8;
    v10 = v3;
    v11 = 2970;
    goto LABEL_17;
  }

  if (CFEqual(@"EnableImageQueueTiming", a2))
  {
    if (a3)
    {
      v12 = CFBooleanGetTypeID();
      if (v12 == CFGetTypeID(a3))
      {
        v13 = *(DerivedStorage + 3056);
        Value = CFBooleanGetValue(a3);
        *(DerivedStorage + 3056) = Value;
        if (v13 != Value)
        {
          v15 = *(DerivedStorage + 3064);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __piqca_setProperty_block_invoke;
          block[3] = &__block_descriptor_tmp_45;
          block[4] = a1;
          dispatch_sync(v15, block);
        }

        return;
      }
    }

    v9 = qword_1EAF170D8;
    v10 = v3;
    v11 = 2985;
LABEL_17:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954486, "<<<< IQ-CA >>>>", v11, v10);
    return;
  }

  if (CFEqual(@"Duration", a2))
  {
    if (a3)
    {
      v16 = CFDictionaryGetTypeID();
      if (v16 == CFGetTypeID(a3))
      {
        CMTimeMakeFromDictionary(v41, a3);
        *(DerivedStorage + 3120) = v41[0];
        return;
      }
    }

    v9 = qword_1EAF170D8;
    v10 = v3;
    v11 = 2993;
    goto LABEL_17;
  }

  if (CFEqual(@"FigImageQueueProperty_BlendsVideoFrames", a2))
  {
    if (a3)
    {
      v17 = CFBooleanGetTypeID();
      if (v17 != CFGetTypeID(a3))
      {
        v9 = qword_1EAF170D8;
        v10 = v3;
        v11 = 3006;
        goto LABEL_17;
      }
    }

    v18 = *MEMORY[0x1E695E4D0] == a3;
    if (*(DerivedStorage + 133) == v18)
    {
      return;
    }

    *(DerivedStorage + 133) = v18;
LABEL_25:
    CAImageQueueSetFlags();
    return;
  }

  if (CFEqual(@"FigImageQueueProperty_ImageQueueInterpolationCurve", a2))
  {
    if (a3)
    {
      v19 = CFGetTypeID(a3);
      if (v19 != CFArrayGetTypeID())
      {
        v9 = qword_1EAF170D8;
        v10 = v3;
        v11 = 3043;
        goto LABEL_17;
      }
    }

    *&v41[0].value = xmmword_196E772A8;
    *&v41[0].epoch = unk_196E772B8;
    if (!piqca_setProperty_sFigCAImageQueueSetInterpolationCurve)
    {
      v20 = dlopen("/System/Library/Frameworks/QuartzCore.framework/QuartzCore", 1);
      if (v20)
      {
        piqca_setProperty_sFigCAImageQueueSetInterpolationCurve = dlsym(v20, "CAImageQueueSetInterpolationCurve");
      }
    }

    if (a3)
    {
      FigCFArrayGetDoubleAtIndex();
      FigCFArrayGetDoubleAtIndex();
      FigCFArrayGetDoubleAtIndex();
      FigCFArrayGetDoubleAtIndex();
    }

    if (piqca_setProperty_sFigCAImageQueueSetInterpolationCurve)
    {
      (piqca_setProperty_sFigCAImageQueueSetInterpolationCurve)(*DerivedStorage, *&v41[0].value, *&v41[0].timescale, *&v41[0].epoch, *&v41[1].value);
    }
  }

  else
  {
    if (CFEqual(@"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a2))
    {
      if (a3)
      {
        v21 = CFBooleanGetTypeID();
        if (v21 == CFGetTypeID(a3))
        {
          *(DerivedStorage + 134) = CFBooleanGetValue(a3);
          return;
        }
      }

      v9 = qword_1EAF170D8;
      v10 = v3;
      v11 = 3050;
      goto LABEL_17;
    }

    if (CFEqual(@"FigImageQueueProperty_Timebase", a2))
    {
      if (!a3 || (v22 = CMTimebaseGetTypeID(), v22 == CFGetTypeID(a3)))
      {
        piqca_setTimebase(a1, a3);
        return;
      }

      v9 = qword_1EAF170D8;
      v10 = v3;
      v11 = 3063;
      goto LABEL_17;
    }

    if (CFEqual(@"FigImageQueueProperty_CAImageQueueCaptionsMayAppearHint", a2))
    {
      if (!a3 || (v23 = CFBooleanGetTypeID(), v23 != CFGetTypeID(a3)))
      {
        v9 = qword_1EAF170D8;
        v10 = v3;
        v11 = 3071;
        goto LABEL_17;
      }

      *(DerivedStorage + 136) = CFBooleanGetValue(a3);
      goto LABEL_25;
    }

    if (CFEqual(@"FigImageQueueProperty_DisableColorMatching", a2))
    {
      if (a3)
      {
        v24 = CFBooleanGetTypeID();
        if (v24 != CFGetTypeID(a3))
        {
          v9 = qword_1EAF170D8;
          v10 = v3;
          v11 = 3090;
          goto LABEL_17;
        }

        *(DerivedStorage + 3008) = a3;
        if (!CFEqual(a3, *MEMORY[0x1E695E4D0]))
        {
          CFEqual(*(DerivedStorage + 3008), *MEMORY[0x1E695E4C0]);
        }
      }

      else
      {
        *(DerivedStorage + 3008) = 0;
        if (defaultDisableColorMatching_alreadyChecked != 1)
        {
          defaultDisableColorMatching_result = MGGetBoolAnswer() ^ 1;
          defaultDisableColorMatching_alreadyChecked = 1;
        }
      }

      goto LABEL_25;
    }

    if (CFEqual(@"VideoEnhancementMode", a2))
    {
      piqca_setEnhancementMode(DerivedStorage, a3);
      return;
    }

    if (CFEqual(@"CAImageQueueAlwaysSync", a2))
    {
      v25 = *MEMORY[0x1E695E4D0] == a3;
      *(DerivedStorage + 137) = v25;
      if (!v25)
      {
        return;
      }

      goto LABEL_25;
    }

    if (CFEqual(@"UseLowLatencyModeForImmediateFrames", a2))
    {
      *(DerivedStorage + 138) = *MEMORY[0x1E695E4D0] == a3;
      return;
    }

    if (CFEqual(@"ForScrubbingOnly", a2))
    {
      v25 = *MEMORY[0x1E695E4D0] == a3;
      *(DerivedStorage + 221) = v25;
      if (v25)
      {
        FigImageQueueDisplayCountHistory_CancelTracingDisplayCount(*(DerivedStorage + 2984));
      }
    }

    else
    {
      if (CFEqual(@"EnablePSEMitigation", a2))
      {
        if (a3)
        {
          v26 = CFGetTypeID(a3);
          if (v26 == CFBooleanGetTypeID())
          {
            *(DerivedStorage + 3164) = *MEMORY[0x1E695E4D0] == a3;
            return;
          }
        }

        v9 = qword_1EAF170D8;
        v10 = v3;
        v11 = 3125;
        goto LABEL_17;
      }

      if (CFEqual(@"RendererPreparationInfo", a2))
      {
        FigSimpleMutexLock();
        v27 = *(DerivedStorage + 3200);
        v28 = FigCFDictionaryGetValue();
        FigCFDictionaryGetBooleanIfPresent();
        if (v27)
        {
          *(DerivedStorage + 3200) = 0;
          v29 = *(DerivedStorage + 3208);
          *(DerivedStorage + 3208) = v28;
          if (v28)
          {
            CFRetain(v28);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          if (dword_1EAF170E0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigSimpleMutexUnlock();
          piqca_postRendererPreparationCompletedIfPreviouslyRequestedAndRecordNewRequest(a1, 0, 0);
        }

        else
        {
          FigSimpleMutexUnlock();
        }
      }

      else if (CFEqual(@"ImageQueueGauge", a2))
      {
        v30 = *(DerivedStorage + 3224);
        if (!v30 || v30 == a3)
        {
          if (v30)
          {
            CFRelease(v30);
            *(DerivedStorage + 3224) = 0;
          }

          if (a3)
          {
            a3 = CFRetain(a3);
          }

          *(DerivedStorage + 3224) = a3;
          FigImageQueueGetSafeDisplayDuration(a1, v41);
          FigImageQueueGaugeSetSafeDisplayDuration(a3, &v41[0].value);
        }

        else
        {
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, 0);
        }
      }

      else if (CFEqual(@"ResponsibleProcessID", a2))
      {
        if (a3 && (v32 = CFGetTypeID(a3), v32 == CFNumberGetTypeID()))
        {
          SInt32 = FigCFNumberGetSInt32();
          if (SInt32 <= 0)
          {
            piqca_setProperty_cold_1(v41);
          }

          else
          {
            v34 = SInt32;
            v35 = *(DerivedStorage + 3160);
            *(DerivedStorage + 3160) = SInt32;
            if (v35 != SInt32)
            {
              v36 = *(DerivedStorage + 3152);
              if (v36)
              {
                CFRelease(v36);
                *(DerivedStorage + 3152) = 0;
              }

              *(DerivedStorage + 3152) = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"com.apple.coremedia.iq.ca.pid%d", v34);
            }
          }
        }

        else
        {
          piqca_setProperty_cold_2(v41);
        }
      }
    }
  }
}

uint64_t FigCRABSScheduledIOCreate(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  FigScheduledIOGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a1);
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = DerivedStorage + 24;
  v7 = FigSimpleMutexCreate();
  *(DerivedStorage + 16) = v7;
  if (v7)
  {
    v8 = 0;
    *a3 = 0;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0, v13);
    v8 = v10;
    CFRelease(*DerivedStorage);
    CFRelease(cf);
  }

  return v8;
}

void figVideoRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!DerivedStorage || (v10 = DerivedStorage, *DerivedStorage))
  {
    v11 = qword_1EAF16EF0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954444, "<<<< VRP >>>>", 2548, v4);
    return;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    v12 = *(v10 + 1);
    goto LABEL_10;
  }

  if (CFEqual(@"Timebase", a2))
  {
    v12 = *(v10 + 16);
LABEL_10:
    *a4 = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    goto LABEL_12;
  }

  if (CFEqual(@"FigImageQueueArray", a2))
  {
    figVideoRenderPipelineCopyVideoImageQueueArray(a1, a4, 0);
    goto LABEL_12;
  }

  if (CFEqual(@"PerformanceDictionary", a2))
  {
    videopipelineCopyPerformanceDictionary(a1, a4);
    goto LABEL_12;
  }

  if (CFEqual(@"NextNonJerkyStopTime", a2))
  {
    videopipelineCopyNextNonJerkyStopTime(a1, a3, a4);
    goto LABEL_12;
  }

  if (CFEqual(@"CachedTimeRange", a2))
  {
    v13 = *(v10 + 5);
    if (!v13 || CFArrayGetCount(v13) != 1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954513, "<<<< VRP >>>>", 2576, v4);
      goto LABEL_12;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 5), 0);
    v15 = kFigImageQueueProperty_CachedTimeRange;
    goto LABEL_30;
  }

  if (!CFEqual(@"CachedVideoFrames", a2))
  {
    if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
    {
      memset(&v37, 0, sizeof(v37));
      CMBufferQueueGetEndPresentationTimeStamp(&v37, *(v10 + 1));
      time = v37;
      v17 = CMTimeCopyAsDictionary(&time, a3);
LABEL_34:
      *a4 = v17;
      goto LABEL_12;
    }

    if (CFEqual(@"CurrentVideoFrameRate", a2))
    {
      figVideoRenderPipelineCopyVideoImageQueueArray(a1, &cf, 0);
      if (!cf)
      {
        return;
      }

      Count = CFArrayGetCount(cf);
      if (Count >= 1)
      {
        v19 = Count;
        v20 = 0;
        v21 = 0;
        do
        {
          v37.value = 0;
          v22 = CFArrayGetValueAtIndex(cf, v20);
          v23 = FigImageQueueCopyProperty(v22, @"FigImageQueueProperty_CurrentFrameRate", a3, &v37);
          value = v37.value;
          if (!v23)
          {
            valuePtr = 0.0;
            LODWORD(time.value) = 0;
            if (v37.value)
            {
              CFNumberGetValue(v37.value, kCFNumberFloat32Type, &time);
            }

            if (v21)
            {
              CFNumberGetValue(v21, kCFNumberFloat32Type, &valuePtr);
            }

            if (*&time.value <= valuePtr)
            {
              v25 = v21;
            }

            else
            {
              v25 = v37.value;
              if (v37.value)
              {
                CFRetain(v37.value);
              }

              if (v21)
              {
                CFRelease(v21);
              }
            }

            value = v37.value;
            v21 = v25;
          }

          if (value)
          {
            CFRelease(value);
          }

          ++v20;
        }

        while (v19 != v20);
        if (v21)
        {
          *a4 = v21;
        }
      }

      goto LABEL_12;
    }

    if (CFEqual(@"VideoEnqueueResetsSystemSleepTimer", a2))
    {
      figVideoRenderPipelineCopyVideoImageQueueArray(a1, &cf, 0);
      if (!cf)
      {
        return;
      }

      if (CFArrayGetCount(cf) < 1)
      {
        goto LABEL_12;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
      v15 = kFigImageQueueProperty_EnqueueResetsSystemSleepTimer;
      goto LABEL_30;
    }

    if (CFEqual(@"ObeyEmptyMediaMarkers", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_ObeyEmptyMediaMarkers;
      goto LABEL_92;
    }

    if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_EndPresentationTimeForDecodedSamples;
      goto LABEL_92;
    }

    if (CFEqual(@"RenderEmptyMedia", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_RenderEmptyMedia;
      goto LABEL_92;
    }

    if (CFEqual(@"OutputPixelBufferPool", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_OutputPixelBufferPool;
      goto LABEL_92;
    }

    if (CFEqual(@"FieldMode", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_FieldMode;
      goto LABEL_92;
    }

    if (CFEqual(@"AllowVideoQualityOfServiceAdjustments", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_AllowVideoQualityOfServiceAdjustments;
      goto LABEL_92;
    }

    if (CFEqual(@"VideoQualityOfServiceTier", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_QualityOfServiceTier;
      goto LABEL_92;
    }

    if (CFEqual(@"VideoDecoderUsage", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_DecoderUsage;
      goto LABEL_92;
    }

    if (CFEqual(@"VideoDecoderPriority", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_DecoderPriority;
      goto LABEL_92;
    }

    if (CFEqual(@"VideoDecoderThreadCount", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_DecoderThreadCount;
      goto LABEL_92;
    }

    if (CFEqual(@"SupportsSavingFrames", a2))
    {
      v28 = MEMORY[0x1E695E4D0];
      v29 = MEMORY[0x1E695E4C0];
      v30 = *(v10 + 2) == 0;
LABEL_95:
      if (v30)
      {
        v28 = v29;
      }

      v17 = CFRetain(*v28);
      goto LABEL_34;
    }

    if (CFEqual(@"ForceFullPowerDecode", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_ForceFullPowerDecode;
      goto LABEL_92;
    }

    if (CFEqual(@"EnableIOFenceDecode", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_EnableIOFenceDecode;
      goto LABEL_92;
    }

    if (CFEqual(@"EnhancementFilterOptions", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_EnhancementFilterOptions;
      goto LABEL_92;
    }

    if (CFEqual(@"ColorPrimaries", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_ColorPrimaries;
      goto LABEL_92;
    }

    if (CFEqual(@"TransferFunction", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_TransferFunction;
      goto LABEL_92;
    }

    if (CFEqual(@"YCbCrMatrix", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_YCbCrMatrix;
      goto LABEL_92;
    }

    if (CFEqual(@"PreserveSyncFrames", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_PreserveSyncFrames;
      goto LABEL_92;
    }

    if (CFEqual(@"PlaybackSessionID", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_PlaybackSessionID;
      goto LABEL_92;
    }

    if (CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_PropagatePerFrameHDRDisplayMetadata;
      goto LABEL_92;
    }

    if (CFEqual(@"HDRCrossTalker", a2))
    {
      v26 = *(v10 + 2);
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = kVideoMediaConverter2Property_HDRCrossTalker;
      goto LABEL_92;
    }

    if (CFEqual(@"VetoFigReadCacheUsage", a2))
    {
      v28 = MEMORY[0x1E695E4D0];
      v31 = v10[144];
    }

    else
    {
      if (CFEqual(@"Suspended", a2))
      {
        v32 = *(v10 + 2);
        if (v32)
        {
          v37.value = 0;
          if (!VMC2CopyProperty(v32, @"IsRunning", a3, &v37))
          {
            v33 = (v37.value == *MEMORY[0x1E695E4C0] ? *MEMORY[0x1E695E4D0] : *MEMORY[0x1E695E4C0]);
            *a4 = CFRetain(v33);
            if (v37.value)
            {
              CFRelease(v37.value);
            }
          }
        }

        goto LABEL_12;
      }

      if (!CFEqual(@"UsingAV1FilmGrainDeferMode", a2))
      {
        if (!CFEqual(@"DecompressionSessionProperties", a2))
        {
          if (CFEqual(@"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a2))
          {
            v34 = *(v10 + 2);
            if (v34)
            {
              VMC2CopyProperty(v34, @"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a3, a4);
            }
          }

          goto LABEL_12;
        }

        v26 = *(v10 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_DecompressionSessionProperties;
LABEL_92:
        VMC2CopyProperty(v26, *v27, a3, a4);
        goto LABEL_12;
      }

      v28 = MEMORY[0x1E695E4D0];
      v31 = v10[153];
    }

    v29 = MEMORY[0x1E695E4C0];
    v30 = v31 == 0;
    goto LABEL_95;
  }

  v16 = *(v10 + 5);
  if (v16 && CFArrayGetCount(v16) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 5), 0);
    v15 = kFigImageQueueProperty_CachedVideoFrames;
LABEL_30:
    FigImageQueueCopyProperty(ValueAtIndex, *v15, a3, a4);
    goto LABEL_12;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954513, "<<<< VRP >>>>", 2585, v4);
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }
}