uint64_t AppleBCMWLANCommander::delayQueueTimeouts(AppleBCMWLANCommander *this, uint64_t a2)
{
  result = clock_interval_to_deadline();
  v4 = *(this + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = v5 < 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *(v4 + 40) = 0xAAAAAAAAAAAAAAAALL;
  }

  return result;
}

uint64_t ___ZN21AppleBCMWLANCommander11checkQueuesEP18IO80211TimerSource_block_invoke(uint64_t a1, AppleBCMWLANCommand *this)
{
  v4 = *(a1 + 48);
  QueuedDuration_ms = AppleBCMWLANCommand::getQueuedDuration_ms(this);
  v8 = *(v4 + 64);
  v7 = v4 + 64;
  v6 = v8;
  if (QueuedDuration_ms <= *(v8 + 164))
  {
    return 0;
  }

  v9 = QueuedDuration_ms;
  v10 = (*(**(v6 + 208) + 600))(*(v6 + 208), v6 + 56);
  ++*(*(*(a1 + 32) + 8) + 24);
  if (v9 < *(a1 + 56) && (v10 & 1) != 0)
  {
    result = *(*v7 + 216);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        ___ZN21AppleBCMWLANCommander11checkQueuesEP18IO80211TimerSource_block_invoke_cold_1(v7, this);
        return 0;
      }
    }
  }

  else
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    return 1;
  }

  return result;
}

OSObject *AppleBCMWLANCommander::purgeCommandQueue(uint64_t a1, unsigned int a2, int a3)
{
  result = AppleBCMWLANCommander::dequeueCommand(a1, a2);
  if (result)
  {
    v7 = result;
    do
    {
      if (a3)
      {
        v8 = AppleBCMWLANCommand::complete(v7, *(*(a1 + 64) + 136));
        if (v8)
        {
          v9 = v8;
          if (*(*(a1 + 64) + 216))
          {
            if (CCLogStream::shouldLog())
            {
              CCLogStream::logAlert(*(*(a1 + 64) + 216), "[dk] %s@%d: Failed complete(), cret[0x%08x]\n", "purgeCommandQueue", 3037, v9);
            }
          }
        }
      }

      (v7->release)(v7);
      result = AppleBCMWLANCommander::dequeueCommand(a1, a2);
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t AppleBCMWLANCommander::dumpState(AppleBCMWLANCommander *this, char *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 8);
  if (!v4[10] || !v4[11] || !v4[12] || !v4[13] || !v4[14] || !v4[27] || !CCLogStream::shouldLog())
  {
    return 0;
  }

  v66[6] = 0xAAAAAAAAAAAAAAAALL;
  absolutetime_to_nanoseconds();
  v9 = *(this + 8);
  v10 = *(v9 + 216);
  v11 = *(v9 + 242);
  v12 = *(v9 + 244);
  isBusy = CCFaultReporter::isBusy(*(v9 + 312));
  v14 = 245;
  if (isBusy)
  {
    v14 = 246;
  }

  v62 = a3;
  v15 = IO80211Print(v10, 5, -1, 0, a2, a3, a4, "TransactionId: %d, TO Deadline=%06llu.%06llu, asleep=%d paused=%d, WD Scheduled=%d\n", v11, 0x2DD01FC06, 473034, v12, *(*(this + 8) + v14), *(*(this + 8) + 240));
  v16 = *(this + 8);
  v17 = *(v16 + 216);
  Size = AppleBCMWLANCommandQueue::getSize(*(v16 + 80));
  v19 = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 88));
  v20 = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 96));
  v21 = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 104));
  v22 = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 112));
  v23 = IO80211Print(v17, 5, -1, 0, a2, v15 + a3, a4 - v15, "Queue sizes: free=%lu pending=%lu outbound=%lu active=%lu completed=%lu, total issued=%lu, active=%lu\n", Size, v19, v20, v21, v22, *(*(this + 8) + 144), *(*(this + 8) + 148)) + v15;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  memset(v66, 170, 48);
  absolutetime_to_nanoseconds();
  LODWORD(Size) = IO80211Print(*(*(this + 8) + 216), 5, -1, 0, a2, v23 + a3, a4 - v23, "Curr. Time:%06llu.%06llu, Last Configure WD Run:%06llu.%06llu, Last Check Que. Timer Set:%06llu.%06llu, Last Check Que. Run:%06llu.%06llu, Last Check Que. Checked Que.:%06llu.%06llu, Continuous Time:%06llu.%06llu\n", v66[4] / 0x3B9ACA00uLL, v66[4] % 0x3B9ACA00uLL / 0x3E8, v66[2] / 0x3B9ACA00uLL, v66[2] % 0x3B9ACA00uLL / 0x3E8, v66[3] / 0x3B9ACA00uLL, v66[3] % 0x3B9ACA00uLL / 0x3E8, v66[1] / 0x3B9ACA00uLL, v66[1] % 0x3B9ACA00uLL / 0x3E8, v66[0] / 0x3B9ACA00uLL, v66[0] % 0x3B9ACA00uLL / 0x3E8, v66[5] / 0x3B9ACA00uLL, v66[5] % 0x3B9ACA00uLL / 0x3E8) + v23;
  v24 = *(this + 8);
  v25 = *(v24 + 216);
  v61 = Size + a3;
  v26 = AppleBCMWLANCommandQueue::getSize(*(v24 + 80));
  v27 = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 88));
  v28 = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 96));
  v29 = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 104));
  v30 = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 112));
  v31 = IO80211Print(v25, 5, -1, 0, a2, v61, a4 - Size, "Queue sizes: free=%lu pending=%lu outbound=%lu active=%lu completed=%lu, total issued=%lu, active=%lu\n", v26, v27, v28, v29, v30, *(*(this + 8) + 144), *(*(this + 8) + 148));
  v63 = 0x4000;
  v32 = v31 + Size;
  __src = 0uLL;
  v65 = 0;
  v33 = IOMallocZeroData();
  v34 = v33;
  if (v33)
  {
    *(&__src + 4) = v33;
    *v33 = 0;
  }

  v37 = IO80211Print(*(*(this + 8) + 216), 5, -1, 0, a2, v62 + v32, a4 - v32, " Pending Queue:\n") + v32;
  AppleBCMWLANCommandQueue::lockMap(*(*(this + 8) + 88), AppleBCMWLANCommander::printCommandCallback, this, &v63);
  v38 = *(&__src + 4);
  if (a2)
  {
    if (*(&__src + 4))
    {
      v39 = &a2[v62 + v37];
      if (a4 - v37 >= HIDWORD(__src))
      {
        v40 = HIDWORD(__src);
      }

      else
      {
        v40 = a4 - v37;
      }

      if (v39 > 0x7FFFFDFFFFFFLL)
      {
        IOLog("%s:%06u: BUF_PRINT_EMIT: Invalid address detected: buf[%p] addr[%p] len[%6d] remain[%6d] printed[%6d] e[%d]\n", "dumpState", 3138, *(&__src + 4), &a2[v62 + v37], v40, a4 - v37, HIDWORD(__src), 0);
        v38 = *(&__src + 4);
      }

      else
      {
        memmove(v39, *(&__src + 4), v40);
      }

      *v38 = 0;
      v37 += v40;
    }
  }

  else if (*(&__src + 4))
  {
    if (*(*(this + 8) + 216))
    {
      shouldLog = CCLogStream::shouldLog();
      v38 = *(&__src + 4);
      if (shouldLog)
      {
        CCLogStream::log(*(*(this + 8) + 216), 5, "%s", *(&__src + 4));
        v38 = *(&__src + 4);
      }
    }

    *v38 = 0;
  }

  HIDWORD(__src) = 0;
  v42 = v37 + IO80211Print(*(*(this + 8) + 216), 5, -1, 0, a2, v62 + v37, a4 - v37, " Outbound Queue:\n");
  AppleBCMWLANCommandQueue::lockMap(*(*(this + 8) + 96), AppleBCMWLANCommander::printCommandCallback, this, &v63);
  v43 = *(&__src + 4);
  if (a2)
  {
    if (*(&__src + 4))
    {
      v44 = &a2[v62 + v42];
      if (a4 - v42 >= HIDWORD(__src))
      {
        v45 = HIDWORD(__src);
      }

      else
      {
        v45 = a4 - v42;
      }

      if (v44 > 0x7FFFFDFFFFFFLL)
      {
        IOLog("%s:%06u: BUF_PRINT_EMIT: Invalid address detected: buf[%p] addr[%p] len[%6d] remain[%6d] printed[%6d] e[%d]\n", "dumpState", 3142, *(&__src + 4), &a2[v62 + v42], v45, a4 - v42, HIDWORD(__src), 0);
        v43 = *(&__src + 4);
      }

      else
      {
        memmove(v44, *(&__src + 4), v45);
      }

      *v43 = 0;
      v42 += v45;
    }
  }

  else if (*(&__src + 4))
  {
    if (*(*(this + 8) + 216))
    {
      v46 = CCLogStream::shouldLog();
      v43 = *(&__src + 4);
      if (v46)
      {
        CCLogStream::log(*(*(this + 8) + 216), 5, "%s", *(&__src + 4));
        v43 = *(&__src + 4);
      }
    }

    *v43 = 0;
  }

  HIDWORD(__src) = 0;
  v47 = v42 + IO80211Print(*(*(this + 8) + 216), 5, -1, 0, a2, v62 + v42, a4 - v42, " Active Queue:\n");
  AppleBCMWLANCommandQueue::lockMap(*(*(this + 8) + 104), AppleBCMWLANCommander::printCommandCallback, this, &v63);
  v48 = *(&__src + 4);
  if (a2)
  {
    if (*(&__src + 4))
    {
      v49 = &a2[v62 + v47];
      if (a4 - v47 >= HIDWORD(__src))
      {
        v50 = HIDWORD(__src);
      }

      else
      {
        v50 = a4 - v47;
      }

      if (v49 > 0x7FFFFDFFFFFFLL)
      {
        IOLog("%s:%06u: BUF_PRINT_EMIT: Invalid address detected: buf[%p] addr[%p] len[%6d] remain[%6d] printed[%6d] e[%d]\n", "dumpState", 3146, *(&__src + 4), &a2[v62 + v47], v50, a4 - v47, HIDWORD(__src), 0);
        v48 = *(&__src + 4);
      }

      else
      {
        memmove(v49, *(&__src + 4), v50);
      }

      *v48 = 0;
      v47 += v50;
    }
  }

  else if (*(&__src + 4))
  {
    if (*(*(this + 8) + 216))
    {
      v51 = CCLogStream::shouldLog();
      v48 = *(&__src + 4);
      if (v51)
      {
        CCLogStream::log(*(*(this + 8) + 216), 5, "%s", *(&__src + 4));
        v48 = *(&__src + 4);
      }
    }

    *v48 = 0;
  }

  HIDWORD(__src) = 0;
  v52 = v47 + IO80211Print(*(*(this + 8) + 216), 5, -1, 0, a2, v62 + v47, a4 - v47, " Completed Queue:\n");
  AppleBCMWLANCommandQueue::lockMap(*(*(this + 8) + 112), AppleBCMWLANCommander::printCommandCallback, this, &v63);
  v53 = *(&__src + 4);
  if (a2)
  {
    if (*(&__src + 4))
    {
      v54 = &a2[v62 + v52];
      if (a4 - v52 >= HIDWORD(__src))
      {
        v55 = HIDWORD(__src);
      }

      else
      {
        v55 = a4 - v52;
      }

      if (v54 > 0x7FFFFDFFFFFFLL)
      {
        IOLog("%s:%06u: BUF_PRINT_EMIT: Invalid address detected: buf[%p] addr[%p] len[%6d] remain[%6d] printed[%6d] e[%d]\n", "dumpState", 3150, *(&__src + 4), &a2[v62 + v52], v55, a4 - v52, HIDWORD(__src), 0);
        v53 = *(&__src + 4);
      }

      else
      {
        memmove(v54, *(&__src + 4), v55);
      }

      *v53 = 0;
      v52 += v55;
    }
  }

  else if (*(&__src + 4))
  {
    if (*(*(this + 8) + 216))
    {
      v56 = CCLogStream::shouldLog();
      v53 = *(&__src + 4);
      if (v56)
      {
        CCLogStream::log(*(*(this + 8) + 216), 5, "%s", *(&__src + 4));
        v53 = *(&__src + 4);
      }
    }

    *v53 = 0;
  }

  HIDWORD(__src) = 0;
  v35 = v52 + IO80211Print(*(*(this + 8) + 216), 5, -1, 0, a2, v62 + v52, a4 - v52, " Free Queue [History]:\n");
  AppleBCMWLANCommandQueue::lockMap(*(*(this + 8) + 80), AppleBCMWLANCommander::printCommandCallback, this, &v63);
  v57 = *(&__src + 4);
  if (a2)
  {
    if (*(&__src + 4))
    {
      v58 = &a2[v62 + v35];
      if (a4 - v35 >= HIDWORD(__src))
      {
        v59 = HIDWORD(__src);
      }

      else
      {
        v59 = a4 - v35;
      }

      if (v58 > 0x7FFFFDFFFFFFLL)
      {
        IOLog("%s:%06u: BUF_PRINT_EMIT: Invalid address detected: buf[%p] addr[%p] len[%6d] remain[%6d] printed[%6d] e[%d]\n", "dumpState", 3154, *(&__src + 4), &a2[v62 + v35], v59, a4 - v35, HIDWORD(__src), 0);
        v57 = *(&__src + 4);
      }

      else
      {
        memmove(v58, *(&__src + 4), v59);
      }

      *v57 = 0;
      v35 = (v59 + v35);
    }
  }

  else if (*(&__src + 4))
  {
    if (*(*(this + 8) + 216))
    {
      v60 = CCLogStream::shouldLog();
      v57 = *(&__src + 4);
      if (v60)
      {
        CCLogStream::log(*(*(this + 8) + 216), 5, "%s", *(&__src + 4));
        v57 = *(&__src + 4);
      }
    }

    *v57 = 0;
  }

  HIDWORD(__src) = 0;
  if (v34)
  {
    IOFreeData();
  }

  return v35;
}

uint64_t AppleBCMWLANCommander::configureReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unsigned int *a5)
{
  v6 = 3758097084;
  v21 = 0;
  v8 = &this[1].OSObjectInterface::__vftable;
  v7 = this[1].OSObjectInterface::__vftable;
  free = v7[1].free;
  if (free)
  {
    v13 = v7->free;
    if (!v13)
    {
      goto LABEL_5;
    }

    v14 = AppleBCMWLANCommandMonitor::configureReport(v13, a2, a3, a4);
    v15 = *v8;
    if (!v14)
    {
      free = v15[1].free;
LABEL_5:
      v22[0] = IOReporter::configureAllReports(free, a2, a3, &v21, a5);
      v16 = this[1].OSObjectInterface::__vftable;
      v17 = v16[13].free;
      v18 = v16[19].free;
      ClassNameHelper = getClassNameHelper(this);
      v22[0] = testPostConfigureAllAndAdjustV3(v17, v18, ClassNameHelper, a3, v22, a4, v21, -2);
      if (!v22[0])
      {
        return 0;
      }

      AppleBCMWLANCommander::configureReport();
      return v22[1];
    }

    if (v15[13].free && CCLogStream::shouldLog())
    {
      AppleBCMWLANCommander::configureReport(v8, this);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCommander::updateReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unint64_t *a5, unint64_t *a6, IOMemoryDescriptor *a7)
{
  v8 = 3758097084;
  v32 = 0;
  v9 = this[1].OSObjectInterface::__vftable;
  free = v9[11].free;
  if (free && v9[1].free)
  {
    (*(*free + 56))(free, AppleBCMWLANCommander::updateAllReports, 0, 0, 0, 0);
    v17 = this[1].OSObjectInterface::__vftable;
    v18 = v17->free;
    if (v18 && (v19 = AppleBCMWLANCommandMonitor::updateReport(v18, a2, a3, a4, a5, a6, a7), v17 = this[1].OSObjectInterface::__vftable, v19))
    {
      if (v17[13].free && CCLogStream::shouldLog())
      {
        v30 = this[1].OSObjectInterface::__vftable[13].free;
        ClassNameHelper = getClassNameHelper(this);
        CCLogStream::logEmergency(v30, "[dk] %s@%d:DKReporter::%s::%s(%d) ivars->fControllerMonitor->updateReport failed outElementCount %u offset %llu capacity %llu", "updateReport", 3216, ClassNameHelper, "updateReport", 3216, *a4, *a5, *a6);
      }
    }

    else
    {
      v20 = v17[13].free;
      v21 = getClassNameHelper(this);
      testPreUpdateAllReportersV3(v20, v21, this[1].OSObjectInterface::__vftable[1].free, *a5, *a6, a7);
      updated = IOReporter::updateAllReports(this[1].OSObjectInterface::__vftable[1].free, a2, a3, &v32, *a5, *a6, a7, v22);
      v23 = this[1].OSObjectInterface::__vftable;
      v24 = v23[13].free;
      v25 = v23[19].free;
      v26 = getClassNameHelper(this);
      updated = testPostUpdateAllAndAdjustV3(v24, v25, v26, &updated, v32, a4, a5, a6, -2);
      if (updated && this[1].OSObjectInterface::__vftable[13].free && CCLogStream::shouldLog())
      {
        v28 = this[1].OSObjectInterface::__vftable[13].free;
        v29 = getClassNameHelper(this);
        CCLogStream::logEmergency(v28, "[dk] %s@%d:DKReporter::%s::%s(%d) testAndAdjustOffsetAndCapacity failed count %u outElementCount %u offset %llu capacity %llu", "updateReport", 3224, v29, "updateReport", 3224, v32, *a4, *a5, *a6);
      }

      return updated;
    }
  }

  return v8;
}

BOOL AppleBCMWLANCommander::deviceBootStationaryNotification(AppleBCMWLANCommander *this)
{
  v2 = *(this + 8);
  if (*(v2 + 216))
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *(this + 8);
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v2 + 216), "[dk] %s@%d:device boot done, stationary state, update command timeout", "deviceBootStationaryNotification", 3454);
      v2 = *(this + 8);
    }
  }

  *(v2 + 268) = 25000;
  v5 = -1431655766;
  result = IOParseBootArgNumber("wlan.factory", &v5, 4);
  if (result && (v5 & 0x10) != 0)
  {
    *(*(this + 8) + 268) = *(*(this + 8) + 168) + 5000;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_9(uint64_t a1)
{
  v2 = *(a1 + 80);

  return AppleBCMWLANCommandQueue::getSize(v2);
}

BOOL OUTLINED_FUNCTION_14_9()
{

  return AppleBCMWLANCommander::isBusy(v0);
}

uint64_t mapBcomAlgoToBcomWsecFlags(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  v3 = 3758097090;
  if (a2 <= 0x10)
  {
    v4 = 1;
    if (((1 << a2) & 0x1C010) != 0)
    {
      v4 = 4;
LABEL_7:
      *a1 |= v4;
      goto LABEL_8;
    }

    if (((1 << a2) & 0xA) != 0)
    {
      goto LABEL_7;
    }

    if (a2 == 2)
    {
      v4 = 2;
      goto LABEL_7;
    }
  }

  if (a2)
  {
    return v3;
  }

LABEL_8:
  if (a3 > 0x10)
  {
    goto LABEL_19;
  }

  v5 = 1;
  if (((1 << a3) & 0x1C010) == 0)
  {
    if (((1 << a3) & 0xA) != 0)
    {
      goto LABEL_14;
    }

    if (a3 == 2)
    {
      v5 = 2;
      goto LABEL_14;
    }

LABEL_19:
    if (a3)
    {
      return v3;
    }

    return 0;
  }

  v5 = 4;
LABEL_14:
  *a1 |= v5;
  return 0;
}

uint64_t getBcomPropertiesFromWPARSN(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int a5, unsigned __int8 *a6)
{
  if (!a5)
  {
    return 0;
  }

  v7 = 3758097090;
  if (a5 >= 6 && a6)
  {
    v27 = 0;
    IOParseBootArgNumber("wlan.debug.wpa-rsn", &v27, 1);
    v13 = &a6[a5 - 1];
    v14 = __CFADD__(a5 - 1, a6);
    v15 = *a6;
    if (v15 == 48)
    {
      if (v14 || (v18 = a6 + 4, (a6 + 9) < a6) || (a6 + 4) >= 0xFFFFFFFFFFFFFFFBLL || (a6 + 9) > v13 || v18 < a6 || v13 < v18)
      {
        IOLog("%s:%6u: Insufficient space to parse RSN info, rsnIeLength[%u] len[%ld]\n");
      }

      else
      {
        v19 = a6 + 10;
        *a1 = getRSNCipherSuiteToBcomWsec(v18);
        v20 = *(a6 + 4);
        *a2 = 0;
        *a3 = 0;
        if (v20 && (a6 + 13) >= a6 && v19 < 0xFFFFFFFFFFFFFFFDLL && (a6 + 13) <= v13 && v19 >= a6 && v13 >= v19)
        {
          *a2 = getRSNCipherSuiteToBcomWsec(a6 + 10);
          v19 = a6 + 14;
        }

        if ((v19 + 5) >= a6 && v19 < 0xFFFFFFFFFFFFFFFBLL && (v19 + 5) <= v13 && v19 >= a6 && v13 >= v19)
        {
          v21 = *v19;
          v22 = &v19[4 * v21 + 2];
          v23 = &v19[4 * v21 + 3];
          if (v23 >= a6 && &v19[4 * v21] != -3 && v23 <= v13 && v22 >= a6 && v13 >= v22)
          {
            v24 = &v19[4 * v21 + 4];
            if ((~*v22 & 0xC0) != 0)
            {
              v25 = 1;
            }

            else
            {
              v25 = 2;
            }

            *a4 = v25;
            if (&v19[4 * v21 + 5] >= a6 && &v19[4 * v21] != -5 && &v19[4 * v21 + 5] <= v13 && v24 >= a6 && v13 >= v24)
            {
              v24 = &v22[16 * *&v19[4 * v21 + 4] + 4];
            }

            if ((v24 + 3) >= a6 && v24 < 0xFFFFFFFFFFFFFFFDLL && (v24 + 3) <= v13 && v24 >= a6 && v13 >= v24)
            {
              *a3 = getRSNCipherSuiteToBcomWsec(v24);
            }
          }
        }

        if (v27 == 1)
        {
          IOLog("[dk] %s@%d: groupAlgo[%u], PW(count[%u], algo[%u]), AKM count[%u], capabilities[0x%04x] mfp[0x%08x] pmkidCount[%u] bipAlgo[%u]\n", "getBcomPropertiesFromWPARSN", 505);
        }
      }

      return 0;
    }

    if (v15 == 221)
    {
      if (v14 || (v16 = a6 + 8, (a6 + 13) < a6) || (a6 + 8) >= 0xFFFFFFFFFFFFFFFBLL || (a6 + 13) > v13 || v16 < a6 || v13 < v16)
      {
        IOLog("%s:%6u: Insufficient space to parse WPA info\n");
      }

      else
      {
        *a1 = getWPACipherSuiteToBcomWsec(a6 + 2);
        v17 = *(a6 + 6);
        *a2 = 0;
        if (v17)
        {
          if (v17 != 1)
          {
            IOLog("%s: Multiple (%d) WPA pairwise cipher present, only use first one\n", "getBcomPropertiesFromWPARSN", v17);
          }

          if ((a6 + 17) >= a6 && v16 < 0xFFFFFFFFFFFFFFF7 && (a6 + 17) <= v13)
          {
            *a2 = getWPACipherSuiteToBcomWsec(a6 + 14);
          }
        }

        if (v27 == 1)
        {
          IOLog("[dk] %s@%d: groupAlgo[%u], PW(count[%u], algo[%u])\n");
        }
      }

      return 0;
    }
  }

  return v7;
}

uint64_t getWPACipherSuiteToBcomWsec(_DWORD *a1)
{
  switch(*a1)
  {
    case 0x1F25000:
      return 1;
    case 0x5F25000:
      return 3;
    case 0x4F25000:
      return 4;
  }

  return 2 * (*a1 == 49434624);
}

uint64_t getRSNCipherSuiteToBcomWsec(_DWORD *a1)
{
  switch(*a1)
  {
    case 0x4AC0F00:
      return 4;
    case 0x2AC0F00:
      return 2;
    case 0x9AC0F00:
      return 16;
    case 0xCAC0F00:
      return 19;
    case 0xAAC0F00:
      return 15;
    case 0x1AC0F00:
      return 1;
    case 0x5AC0F00:
      return 3;
    case 0xBAC0F00:
      return 18;
    case 0x8AC0F00:
      return 14;
    case 0xDAC0F00:
      return 17;
    case 0x6AC0F00:
      return 13;
  }

  return 0;
}

uint64_t mapAppleAPModeToBcomBssType(unsigned int *a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return 3758097090;
  }

  result = 0;
  *a1 = mapAppleAPModeToBcomBssType(unsigned int &,unsigned int)::map[a2];
  return result;
}

uint64_t mapAppleLowerAuthToBcomAuth(unsigned int *a1, int a2)
{
  if ((a2 - 3) < 0xFFFFFFFE)
  {
    return 3758097090;
  }

  result = 0;
  *a1 = a2 - 1;
  return result;
}

uint64_t mapAppleUpperAuthToBcomWpaAuth(unsigned int *a1, int a2, int a3, unsigned __int8 a4, int a5)
{
  v5 = 3758097090;
  if (a2 > 255)
  {
    if (a2 >= 0x2000)
    {
      if (a2 < 0x8000)
      {
        if (a2 != 0x2000)
        {
          if (a2 == 0x4000)
          {
            v6 = 0x400000;
            goto LABEL_47;
          }

          return v5;
        }
      }

      else
      {
        if (a2 == 0x8000)
        {
          v6 = 4210688;
          goto LABEL_47;
        }

        if (a2 == 0x10000)
        {
          goto LABEL_37;
        }

        if (a2 != 0x20000)
        {
          return v5;
        }
      }

      v6 = 278528;
      goto LABEL_47;
    }

    if (a2 > 1023)
    {
      if (a2 == 1024)
      {
        if (a3)
        {
          v6 = 0x8000;
        }

        else
        {
          v6 = 128;
        }

        goto LABEL_47;
      }

      if (a2 != 2048)
      {
        if (a2 != 4096)
        {
          return v5;
        }

LABEL_37:
        v6 = 0x40000;
        goto LABEL_47;
      }

      goto LABEL_25;
    }

    if (a2 != 256)
    {
      if (a2 == 512)
      {
        v6 = 1024;
        goto LABEL_47;
      }

      return v5;
    }

LABEL_36:
    v6 = 0;
    goto LABEL_47;
  }

  if (a2 <= 7)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        if (((a5 == 1) & a4) != 0)
        {
          v6 = 0x100000;
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_47;
      }

      if (a2 != 1)
      {
        return v5;
      }

      v6 = 2;
      goto LABEL_47;
    }

    if (a2 == 2)
    {
      v6 = 4;
      goto LABEL_47;
    }

    if (a2 == 4)
    {
LABEL_25:
      v6 = 64;
      goto LABEL_47;
    }
  }

  else
  {
    if (a2 > 31)
    {
      if (a2 != 32)
      {
        if (a2 == 64)
        {
          goto LABEL_36;
        }

        if (a2 != 128)
        {
          return v5;
        }

        v6 = 16448;
LABEL_47:
        v5 = 0;
        *a1 = v6;
        return v5;
      }

LABEL_35:
      v6 = 128;
      goto LABEL_47;
    }

    if (a2 == 8)
    {
      goto LABEL_35;
    }

    if (a2 == 16)
    {
      v6 = 16512;
      goto LABEL_47;
    }
  }

  return v5;
}

uint64_t mapAppleCipherToBcomWsecFlags(unsigned int *a1, unsigned int a2)
{
  if (a2 <= 8)
  {
    *a1 |= mapAppleCipherToBcomWsecFlags(unsigned int &,unsigned int)::map[a2];
  }

  return 0;
}

uint64_t mapAppleCipherToBcomCryptoAlg(unsigned int *a1, unsigned int a2)
{
  if (a2 > 0xC)
  {
    return 3758097090;
  }

  result = 0;
  *a1 = mapAppleCipherToBcomCryptoAlg(unsigned int &,unsigned int)::map[a2];
  return result;
}

uint64_t mapBcomCryptoAlgToAppleCipher(unsigned int *a1, unsigned int a2)
{
  if (a2 > 0xF)
  {
    return 3758097090;
  }

  result = 0;
  *a1 = mapBcomCryptoAlgToAppleCipher(unsigned int &,unsigned int)::map[a2];
  return result;
}

uint64_t mapBcomRatesetToAppleRateset(uint64_t result, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  if ((*a2 & 0xFFF0) != 0)
  {
    LOWORD(v2) = 16;
  }

  *(result + 4) = v2;
  if (v2)
  {
    v2 = v2;
    v3 = (a2 + 1);
    v4 = (result + 16);
    do
    {
      *(v4 - 1) = (*v3 >> 1) & 0x3F;
      v5 = *v3++;
      *v4 = v5 >> 7;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return result;
}

__int16 *mapBcomStatusEventToIEEEStatus(__int16 *result, unsigned int a2, int a3)
{
  v4 = 0x101011001101000;
  v5 = 269488144;
  v6 = 257;
  v7 = 16;
  if (a2 <= 0xE)
  {
    v3 = *(&v4 + a2);
  }

  else
  {
    v3 = 1;
  }

  *result = v3;
  if (a3)
  {
    *result = a3;
  }

  return result;
}

unsigned __int16 *mapBcomSsidEventToAppleStatus(unsigned __int16 *result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v5 = 0x101011001101000;
  v6 = 269488144;
  v7 = 257;
  v8 = 16;
  if (a2 >= 0xF)
  {
    goto LABEL_5;
  }

  v4 = *(&v5 + a2);
  if (a3 && !*(&v5 + a2))
  {
    result = IOLog("AppleBCMWLAN: Warning: SET_SSID status indicates success (%lu), but reason indicates failure (%lu)!\n", a2, a3);
LABEL_5:
    v4 = 1;
  }

  if (*v3 == 0xFFFF)
  {
LABEL_13:
    *v3 = v4;
    return result;
  }

  if (v4 && !*v3)
  {
    result = IOLog("AppleBCMWLAN: Warning: Auth / Assoc succeeded (%u) but SET_SSID failed (%u)!\n", 0, v4);
    goto LABEL_13;
  }

  if (!v4 && *v3)
  {
    result = IOLog("AppleBCMWLAN: Warning: Auth / Assoc failed (%u) but SET_SSID succeeded (%u)!\n", *v3, 0);
    LOWORD(v4) = 0;
    goto LABEL_13;
  }

  return result;
}

uint64_t mapBcmSupplicantEventToAppleStatus(int a1, unsigned int a2)
{
  v2 = 1 << a2;
  if (a1 == 5)
  {
    v3 = 53;
  }

  else
  {
    v3 = 1014;
  }

  if (a1 == 6)
  {
    v3 = 0;
  }

  if ((v2 & 0x200001) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xFFFF;
  }

  if ((v2 & 0xCACE) != 0)
  {
    v5 = 1014;
  }

  else
  {
    v5 = v4;
  }

  if (a2 <= 0x15)
  {
    return v5;
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t mapBcmErrorToIOReturn(unsigned int a1)
{
  if (a1 >= 0xFFFFFFA8)
  {
    v1 = -469794560 - a1;
  }

  else
  {
    v1 = -469794560;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t mapBcmStatusToApple80211IOReturnIEEEStatus(unsigned int a1)
{
  v1 = a1 | 0xE0821000;
  if (a1 > 0x44)
  {
    v1 = -469794560;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t mapBcmReasonToApple80211IOReturnIEEEReason(unsigned int a1)
{
  v1 = a1 | 0xE0823000;
  if (a1 > 0x2D)
  {
    v1 = -469794560;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t mapBcmStatusToApple80211IOReturnScan(unsigned int a1)
{
  v1 = a1 | 0xE0820400;
  if (a1 > 0xFF)
  {
    v1 = -469794560;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t mapBcmStatusToApple80211IOReturnSupplicantStatus(unsigned int a1)
{
  v1 = a1 | 0xE0821A00;
  if (a1 > 0xFF)
  {
    v1 = -469794560;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t mapBcmReasonToApple80211IOReturnPrune(int a1)
{
  if (a1 <= 23)
  {
    return a1 & 0x1FF | 0xE0823400;
  }

  else
  {
    return 3825172736;
  }
}

uint64_t mapBcmReasonToApple80211IOReturnRoam(int a1)
{
  if (a1 <= 19)
  {
    return a1 & 0x1FF | 0xE0820C00;
  }

  else
  {
    return 3825172736;
  }
}

uint64_t mapBcmReasonToApple80211IOReturnSupplicant(int a1)
{
  if (a1 <= 22)
  {
    return a1 & 0x1FF | 0xE0822C00;
  }

  else
  {
    return 3825172736;
  }
}

uint64_t AppleBCMWLANItemRing::initWithOwnerAndActions(AppleBCMWLANItemRing *this, OSObject *a2, void (*a3)(OSObject *, ...), void (*a4)(OSObject *, AppleBCMWLANByteRing *, int, void *))
{
  result = AppleBCMWLANByteRing::initWithOwnerAndAction(this, a2, a3);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(this + 10) = result;
    if (result)
    {
      *(result + 24) = a4;
      **(this + 10) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANItemRing::free(AppleBCMWLANItemRing *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    memset_s(v2, 0x20uLL, 0, 0x20uLL);
    v3 = *(this + 10);
    if (v3)
    {
      IOFree(v3, 0x20uLL);
      *(this + 10) = 0;
    }
  }

  return AppleBCMWLANByteRing::free(this);
}

uint64_t AppleBCMWLANItemRing::getWritableByteCount(AppleBCMWLANItemRing *this)
{
  v3 = -1431655766;
  v4 = -1431655766;
  (*(*this + 112))(this, &v3, &v4);
  return *(*(this + 10) + 12) * ((v3 + ~v4 + *(*(this + 10) + 8)) % *(*(this + 10) + 8));
}

uint64_t AppleBCMWLANItemRing::getWritableItemCount(AppleBCMWLANItemRing *this)
{
  v3 = -1431655766;
  v4 = -1431655766;
  (*(*this + 112))(this, &v3, &v4);
  return (v3 + ~v4 + *(*(this + 10) + 8)) % *(*(this + 10) + 8);
}

uint64_t AppleBCMWLANItemRing::getReadableByteCount(AppleBCMWLANItemRing *this)
{
  v1 = this + 72;
  v2 = (*(*(this + 9) + 8))(this + 72);
  return *(*(v1 + 1) + 12) * ((v2 - (**v1)(v1) + *(*(v1 + 1) + 8)) % *(*(v1 + 1) + 8));
}

uint64_t AppleBCMWLANItemRing::getReadableItemCount(AppleBCMWLANItemRing *this)
{
  v1 = this + 72;
  v2 = (*(*(this + 9) + 8))(this + 72);
  return (v2 - (**v1)(v1) + *(*(v1 + 1) + 8)) % *(*(v1 + 1) + 8);
}

uint64_t non-virtual thunk toAppleBCMWLANItemRing::getReadableByteCount(AppleBCMWLANItemRing *this)
{
  v1 = this + 16;
  v2 = (*(*(this + 2) + 8))(this + 16);
  return *(*(v1 + 1) + 12) * ((v2 - (**v1)(v1) + *(*(v1 + 1) + 8)) % *(*(v1 + 1) + 8));
}

uint64_t AppleBCMWLANItemRing::getWritableItemCountContinuous(AppleBCMWLANItemRing *this, unsigned int a2, unsigned int a3)
{
  if (a2 < a3)
  {
    return ~a2 + a3;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  return v4 - a2 + *(*(this + 10) + 8);
}

uint64_t AppleBCMWLANItemRing::getReadableItemCountContinuous(AppleBCMWLANItemRing *this, unsigned int a2, unsigned int a3)
{
  if (a3 > a2)
  {
    a2 = *(*(this + 10) + 8);
  }

  return a2 - a3;
}

uint64_t AppleBCMWLANItemRing::CallErrorAction(uint64_t this, uint64_t a2, void *a3)
{
  v3 = *(this + 80);
  v4 = v3[3];
  if (v4)
  {
    return v4(*v3, this, a2, a3);
  }

  return this;
}

unint64_t AppleBCMWLANItemRing::hexDumpRing(AppleBCMWLANItemRing *this)
{
  v2 = 3 * *(*(this + 10) + 12);
  v3 = v2 + 32;
  v4 = IOMallocZeroData();
  v5 = v4;
  if (v4)
  {
    *v4 = 0;
  }

  v6 = this + 56;
  result = (*(*(this + 7) + 16))(this + 56);
  if (result)
  {
    v8 = 0;
    v9 = 0;
    v10 = v2 + 31;
    while (v8 % *(*(this + 10) + 12))
    {
LABEL_23:
      v15 = 0;
      if (v5 && v9 < v10)
      {
        v16 = (*(*v6 + 8))(this + 56);
        v15 = snprintf(&v5[v9], v3 - v9, " %02x", *(v16 + v8));
      }

      if (v15 >= v3)
      {
        v17 = v2 + 32;
      }

      else
      {
        v17 = v15;
      }

      v9 += v17;
      ++v8;
      result = (*(*v6 + 16))(this + 56);
      if (v8 >= result)
      {
        goto LABEL_30;
      }
    }

    if (v8)
    {
      if (v5 && v9 < v10)
      {
        snprintf(&v5[v9], v3 - v9, "\n");
      }

      else if (!v5)
      {
        v9 = 0;
        v12 = 0;
LABEL_19:
        if (v12 >= v3)
        {
          v14 = v2 + 32;
        }

        else
        {
          v14 = v12;
        }

        v9 += v14;
        goto LABEL_23;
      }

      if (AppleBCMWLANByteRing::getLogger(this))
      {
        AppleBCMWLANByteRing::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANByteRing::getLogger(this);
          CCLogStream::log(Logger, 4, "%s", v5);
        }
      }

      v9 = 0;
      *v5 = 0;
    }

    v12 = 0;
    if (v5 && v9 < v10)
    {
      v13 = (*(*v6 + 8))(this + 56);
      v12 = snprintf(&v5[v9], v3 - v9, "%p:", (v13 + v8));
    }

    goto LABEL_19;
  }

LABEL_30:
  if (v5)
  {
    if (AppleBCMWLANByteRing::getLogger(this))
    {
      AppleBCMWLANByteRing::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v18 = AppleBCMWLANByteRing::getLogger(this);
        CCLogStream::log(v18, 4, "%s", v5);
      }
    }

    *v5 = 0;

    return IOFreeData();
  }

  return result;
}

AppleBCMWLANCallbackEventSource *AppleBCMWLANCallbackEventSource::withCallbacks(OSObject *this, OSObject *a2, BOOL (*a3)(OSObject *, IO80211WorkSource *))
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANCallbackEventSourceMetaClass, &v7))
  {
    return 0;
  }

  v5 = v7;
  if (v7 && (AppleBCMWLANCallbackEventSource::initWithCallbacks(v7, this, a2) & 1) == 0)
  {
    (*(*v5 + 16))(v5);
    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANCallbackEventSource::initWithCallbacks(AppleBCMWLANCallbackEventSource *this, OSObject *a2, void (*a3)(OSObject *, ...))
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      result = IO80211WorkSource::init(this, this, a3);
      if (result)
      {
        result = IOMallocZeroTyped();
        *(this + 7) = result;
        if (result)
        {
          *result = a2;
          (*(***(this + 7) + 8))(**(this + 7));
          *(*(this + 7) + 8) = a3;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCallbackEventSource::free(AppleBCMWLANCallbackEventSource *this)
{
  v2 = *(this + 7);
  if (!*v2 || ((*(**v2 + 16))(*v2), **(this + 7) = 0, (v2 = *(this + 7)) != 0))
  {
    memset_s(v2, 0x40uLL, 0, 0x40uLL);
    v3 = *(this + 7);
    if (v3)
    {
      IOFree(v3, 0x40uLL);
      *(this + 7) = 0;
    }
  }

  return IO80211WorkSource::free(this);
}

uint64_t AppleBCMWLANCallbackEventSource::checkForWork(AppleBCMWLANCallbackEventSource *this)
{
  if (IO80211WorkSource::isEnabled(this))
  {
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v2 = *(this + 7);
    if (*(v2 + 56))
    {
      v3 = 1;
      atomic_compare_exchange_strong((v2 + 56), &v3, 0);
      atomic_fetch_or((*(this + 7) + 56), (*(*(this + 7) + 8))(**(this + 7), 0));
      if (*(*(this + 7) + 56))
      {
        IO80211WorkSource::signalWorkAvailable(this);
      }
    }
  }

  return 0;
}

AppleBCMWLANSensingAdapter *AppleBCMWLANSensingAdapter::withDriver(AppleBCMWLANSensingAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANSensingAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANSensingAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANSensingAdapter::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  v4 = OSObject::init(this);
  result = 0;
  if (a2)
  {
    if (v4)
    {
      result = IOMallocZeroTyped();
      this[1].OSMetaClassBase::__vftable = result;
      v6 = this + 1;
      if (result)
      {
        *(result + 8) = a2;
        v6->isEqualTo = (*(*a2 + 1952))(a2);
        isEqualTo = v6->isEqualTo;
        if (isEqualTo)
        {
          (*(*isEqualTo + 8))(isEqualTo);
          v6->release = AppleBCMWLANCore::getCommander(a2);
          release = v6->release;
          if (release)
          {
            (*(*release + 8))(release);
            v6->Dispatch = AppleBCMWLANCore::getFaultReporter(v6->retain);
            Dispatch = v6->Dispatch;
            if (Dispatch)
            {
              (*(*Dispatch + 8))(Dispatch);
              LODWORD(v6->getMetaClass) = 0;
              return 1;
            }

            if (v6->isEqualTo)
            {
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANSensingAdapter::initWithDriver(&this[1]);
              }
            }
          }

          else if (v6->isEqualTo && CCLogStream::shouldLog())
          {
            AppleBCMWLANSensingAdapter::initWithDriver(&this[1]);
          }
        }

        else
        {
          ClassNameHelper = getClassNameHelper(this);
          IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithDriver");
        }

        AppleBCMWLANSensingAdapter::freeResources(this);
        return 0;
      }
    }
  }

  return result;
}

void AppleBCMWLANSensingAdapter::free(void **this)
{
  if (this[5])
  {
    AppleBCMWLANSensingAdapter::freeResources(this);
    memset_s(this[5], 0x28uLL, 0, 0x28uLL);
    v2 = this[5];
    if (v2)
    {
      IOFree(v2, 0x28uLL);
      this[5] = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANSensingAdapter::freeResources(AppleBCMWLANSensingAdapter *this)
{
  v2 = *(this + 5);
  v3 = v2[2];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 5) + 16) = 0;
    v2 = *(this + 5);
  }

  v4 = v2[3];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 5) + 24) = 0;
    v2 = *(this + 5);
  }

  result = v2[4];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 5) + 32) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANSensingAdapter::updateSensingVersion(AppleBCMWLANSensingAdapter *this)
{
  v10 = -21846;
  v2 = (this + 40);
  if ((AppleBCMWLANCore::isSensingCapable(*(*(this + 5) + 8)) & 1) == 0)
  {
    return AppleBCMWLANSensingAdapter::updateSensingVersion(v2);
  }

  v9 = 0;
  *&v6 = this;
  *(&v6 + 1) = AppleBCMWLANSensingAdapter::handleSensingVersion;
  v7 = 0;
  v8[0] = &v9;
  v8[1] = 6;
  v3 = *(*(this + 5) + 16);
  v5 = 131074;
  result = AppleBCMWLANCommander::sendIOVarGet(v3, "csi", v8, &v5, &v6, 0);
  if (result)
  {
    result = *(*v2 + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSensingAdapter::updateSensingVersion(v2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANSensingAdapter::handleSensingVersion(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 **a4)
{
  if (a3)
  {
    return AppleBCMWLANSensingAdapter::handleSensingVersion(a1, a3);
  }

  if (*(a4 + 4) <= 1u)
  {
    return AppleBCMWLANSensingAdapter::handleSensingVersion(a1, a4 + 4);
  }

  v4 = a1 + 40;
  **(a1 + 40) = **a4;
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANSensingAdapter::handleSensingVersion(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSensingAdapter::setSENSING_ENABLE(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = a1 + 40;
  v3 = (*(**(*(a1 + 40) + 8) + 88))(*(*(a1 + 40) + 8));
  if ((*(*v3 + 136))(v3))
  {
    return 3766626305;
  }

  v4 = 3758097095;
  if (AppleBCMWLANCore::isSensingCapable(*(*v2 + 8)) && AppleBCMWLANCore::isSensingOSFeatureFlagEnabled(*(*v2 + 8)) && **v2 && AppleBCMWLANCore::isAssociated(*(*v2 + 8)))
  {
    AppleBCMWLANCore::getBssManager(*(*v2 + 8));
    IO80211BssManager::getCurrentBand();
    AppleBCMWLANCore::getBssManager(*(*v2 + 8));
    IO80211BssManager::getCurrentChannel();
  }

  return v4;
}

uint64_t AppleBCMWLANSensingAdapter::setSENSING_DISABLE(uint64_t a1)
{
  v2 = a1 + 40;
  v1 = *(a1 + 40);
  v9 = -21846;
  v3 = (*(**(v1 + 8) + 88))(*(v1 + 8));
  if ((*(*v3 + 136))(v3))
  {
    return 3766626305;
  }

  v4 = 3758097095;
  if (AppleBCMWLANCore::isSensingCapable(*(*v2 + 8)))
  {
    if (AppleBCMWLANCore::isSensingOSFeatureFlagEnabled(*(*v2 + 8)))
    {
      v5 = *v2;
      if (**v2)
      {
        v8 = 1;
        v7[0] = &v8;
        v7[1] = 6;
        v4 = AppleBCMWLANCommander::runIOVarSet(*(v5 + 16), "csi", v7, 0, 0);
        if (v4)
        {
          if (*(*v2 + 24) && CCLogStream::shouldLog())
          {
            AppleBCMWLANSensingAdapter::setSENSING_DISABLE(v2);
          }
        }
      }
    }
  }

  return v4;
}

{
  v2 = OUTLINED_FUNCTION_0_28(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set WL_CSI_SUBCMD_DISABLE: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSensingAdapter::getSENSING_DATA(uint64_t a1, _DWORD *a2)
{
  v4 = a1 + 40;
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 40) + 16));
  *a2 = 1;
  v6 = (*(**(*v4 + 8) + 88))(*(*v4 + 8));
  if ((*(*v6 + 136))(v6))
  {
    return 3766626305;
  }

  v7 = 3758097095;
  if (AppleBCMWLANCore::isSensingCapable(*(*v4 + 8)) && AppleBCMWLANCore::isSensingOSFeatureFlagEnabled(*(*v4 + 8)))
  {
    v8 = IOMallocZeroData();
    v9 = v8;
    if (v8)
    {
      v23 = a1;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v25 = v8;
      if (MaxCmdRxPayload)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      v24 = v14;
      while (1)
      {
        v28 = 0;
        v29 = 0;
        v26 = 0;
        v27 = 0;
        v15 = IOMallocZeroData();
        if (!v15)
        {
          v7 = 3758097085;
          goto LABEL_33;
        }

        v13 += v12;
        *v15 = 524292;
        v15[1] = v13;
        v15[2] = -1;
        v28 = v15;
        v29 = 14;
        v26 = v24;
        v27 = 0x100010001 * MaxCmdRxPayload;
        v16 = AppleBCMWLANCommander::runIOVarGet(*(*v4 + 16), "csi", &v28, &v26, 0);
        if (**v4 == 1 && v16 != 0)
        {
          v18 = 0;
          do
          {
            AppleBCMWLANCore::waitForDriverEvent(*(*v4 + 8), 6, 10);
            v16 = AppleBCMWLANCommander::runIOVarGet(*(*v4 + 16), "csi", &v28, &v26, 0);
            if (v16)
            {
              v19 = v18 >= 9;
            }

            else
            {
              v19 = 1;
            }

            ++v18;
          }

          while (!v19);
        }

        v7 = v16;
        if (v16)
        {
          break;
        }

        v20 = *v25;
        v12 = v25[2];
        v21 = v12 + v13;
        if (((v12 + v13) & 0x3FFFFC00) == 0)
        {
          memcpy(&a2[v13 + 20], v25 + 3, 4 * v12);
        }

        ++v10;
        IOFreeData();
        v11 = v20;
        if (v21 >= v20 || ((v12 + v13) & 0x3FFFFC00) != 0)
        {
          a2[1044] = 4 * v21;
          AppleBCMWLANSensingAdapter::getSENSING_DATA_INFO(v23, (a2 + 1));
          v7 = 0;
          goto LABEL_33;
        }
      }

      if (*(*v4 + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANSensingAdapter::getSENSING_DATA(v4);
      }

      IOFreeData();
LABEL_33:
      v9 = v25;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v7 = 3758097085;
    }

    if (*(*v4 + 24) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*v4 + 24), "[dk] %s@%d:CSI data read - #fragments %d, total_length: %d bytes, data_size: %d bytes, rx_buffer_total_len %lld\n", "getSENSING_DATA", 453, v10, 4 * v11, 4, MaxCmdRxPayload);
      if (!v9)
      {
        return v7;
      }
    }

    else if (!v9)
    {
      return v7;
    }

    IOFreeData();
  }

  return v7;
}

uint64_t AppleBCMWLANSensingAdapter::getSENSING_DATA_INFO(uint64_t a1, uint64_t a2)
{
  v22 = -21846;
  v21 = 3;
  v19[0] = &v21;
  v19[1] = 6;
  memset(v20, 0, 30);
  v18[0] = v20;
  v18[1] = 0x1E001E001ELL;
  v3 = a1 + 40;
  v4 = AppleBCMWLANCommander::runIOVarGet(*(*(a1 + 40) + 16), "csi", v19, v18, 0);
  if (**v3 == 1 && v4 != 0)
  {
    v6 = 0;
    do
    {
      AppleBCMWLANCore::waitForDriverEvent(*(*v3 + 8), 6, 10);
      v4 = AppleBCMWLANCommander::runIOVarGet(*(*v3 + 16), "csi", v19, v18, 0);
      if (v4)
      {
        v7 = v6 >= 9;
      }

      else
      {
        v7 = 1;
      }

      ++v6;
    }

    while (!v7);
  }

  v8 = v4;
  v9 = *v3;
  if (v4)
  {
    if (*(v9 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANSensingAdapter::getSENSING_DATA_INFO(v3);
    }
  }

  else
  {
    if (AppleBCMWLANCore::isAssociated(*(v9 + 8)))
    {
      AppleBCMWLANCore::getBssManager(*(*v3 + 8));
      IO80211BssManager::getCurrentChannel();
    }

    *a2 = v20[0];
    *(a2 + 16) = v20[1];
    v11 = WORD1(v20[1]);
    v12 = WORD2(v20[1]);
    *(a2 + 24) = 0;
    *(a2 + 28) = v12;
    *(a2 + 20) = v11;
    v10.i32[0] = *(&v20[1] + 6);
    *(a2 + 32) = vmovl_u16(*&vmovl_u8(v10));
    *(a2 + 48) = BYTE10(v20[1]);
    LODWORD(v13) = BYTE11(v20[1]);
    if (BYTE11(v20[1]) < 5u)
    {
      *(a2 + 56) = BYTE11(v20[1]);
      if (!v13)
      {
        return v8;
      }
    }

    else
    {
      LODWORD(v13) = 4;
      *(a2 + 56) = 4;
    }

    v14 = &v20[1] + 12;
    v15 = (a2 + 60);
    v13 = v13;
    do
    {
      v16 = *v14++;
      *v15++ = v16;
      --v13;
    }

    while (v13);
  }

  return v8;
}

OSObject *AppleBCMWLANChipManagerPCIe4378::withChip(AppleBCMWLANChipManagerPCIe4378 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4378MetaClass, &v6))
  {
    return 0;
  }

  v4 = v6;
  if (v6 && ((v6->OSMetaClassBase::__vftable[4].isEqualTo)(v6, this, a2) & 1) == 0)
  {
    (v4->release)(v4);
    return 0;
  }

  return v4;
}

BOOL AppleBCMWLANChipManagerPCIe4378::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 9);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4378ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 17);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4378ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4378ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4378ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 8);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4378ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4378ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4378CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4378UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4378UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4378ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 3481600);
    AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 256);
    AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 16);
    AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 1024);
    AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 4378);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 1);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    AppleBCMWLANChipManagerPCIe::setHMAPSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setTrapBeforeFLRUnSupported(this, 0);
    AppleBCMWLANChipManagerPCIe::setHMAPBaseAddress(this, 1408);
    AppleBCMWLANChipManagerPCIe::sethostWakeToggleNotConfigured(this, 1);
    AppleBCMWLANChipManagerPCIe::setPowerControlRequired(this, 1);
    v10 = 0;
    while (1)
    {
      BackplaneWindows = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      PacketCount = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(BackplaneWindows, PacketCount, 0, &v10))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementCoreRemapperCount(this);
    }

    v10 = 0;
    while (1)
    {
      v7 = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      v8 = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(v7, v8, 1, &v10))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementWrapperRemapperCount(this);
    }

    v9 = OSDictionary::withCapacity(0x20u);
    return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, v9);
  }

  return result;
}

OSObject *AppleBCMWLANChipConfigSpace::withPCIDevice(AppleBCMWLANChipConfigSpace *this, IOPCIDevice *a2, AppleBCMWLANPCIeMMIOHistory *a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipConfigSpaceMetaClass, &v7))
  {
    return 0;
  }

  v5 = v7;
  if (v7 && ((v7->OSMetaClassBase::__vftable[1].getMetaClass)(v7, this, a2) & 1) == 0)
  {
    (v5->release)(v5);
    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANChipConfigSpace::initWithPCIDevice(OSObject *this, IOPCIDevice *a2, AppleBCMWLANPCIeMMIOHistory *a3)
{
  result = OSObject::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *&this[1].refcount = result;
    if (result)
    {
      *result = a2;
      result = **&this[1].refcount;
      if (result)
      {
        (*(*result + 8))(result);
        if (a3)
        {
          *(*&this[1].refcount + 8) = a3;
          (*(**(*&this[1].refcount + 8) + 8))(*(*&this[1].refcount + 8));
        }

        return 1;
      }
    }
  }

  return result;
}

void AppleBCMWLANChipConfigSpace::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 16))(*v2);
      **&this[1].refcount = 0;
      v2 = *&this[1].refcount;
    }

    v3 = v2[1];
    if (v3)
    {
      (*(*v3 + 16))(v2[1]);
      *(*&this[1].refcount + 8) = 0;
      v2 = *&this[1].refcount;
    }

    memset_s(v2, 0x10uLL, 0, 0x10uLL);
    v4 = *&this[1].refcount;
    if (v4)
    {
      IOFree(v4, 0x10uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANChipConfigSpace::readReg8(AppleBCMWLANChipConfigSpace *this, unsigned int a2, unsigned __int8 *a3)
{
  readData = 0;
  v6 = *(this + 6);
  v7 = *(v6 + 8);
  if (v7)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(v7, a2, 0, 1, 1, 1);
    v6 = *(this + 6);
  }

  IOPCIDevice::ConfigurationRead8(*v6, a2, &readData);
  v8 = readData;
  *a3 = readData;
  v9 = *(*(this + 6) + 8);
  if (v9)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(v9, a2, v8, 1, 1, 0);
    v8 = *a3;
  }

  if (v8 == 255)
  {
    return 3825173258;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANChipConfigSpace::modifyReg16(AppleBCMWLANChipConfigSpace *this, unsigned int a2, int a3, int a4, unsigned __int16 *a5)
{
  v13 = 0;
  v10 = AppleBCMWLANChipConfigSpace::readReg16(this, a2, &v13);
  if (!v10)
  {
    v11 = v13;
    if (a5)
    {
      *a5 = v13;
    }

    AppleBCMWLANChipConfigSpace::writeReg16(this, a2, v11 & ~a3 | a4);
  }

  return v10;
}

uint64_t AppleBCMWLANChipConfigSpace::readReg16(AppleBCMWLANChipConfigSpace *this, unsigned int a2, unsigned __int16 *a3)
{
  readData = 0;
  v6 = *(this + 6);
  v7 = *(v6 + 8);
  if (v7)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(v7, a2, 0, 2, 1, 1);
    v6 = *(this + 6);
  }

  IOPCIDevice::ConfigurationRead16(*v6, a2, &readData);
  v8 = readData;
  *a3 = readData;
  v9 = *(*(this + 6) + 8);
  if (v9)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(v9, a2, v8, 2, 1, 0);
    v8 = *a3;
  }

  if (v8 == 0xFFFF)
  {
    return 3825173258;
  }

  else
  {
    return 0;
  }
}

AppleBCMWLANPCIeMMIOHistory *AppleBCMWLANChipConfigSpace::writeReg16(AppleBCMWLANChipConfigSpace *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 6);
  v7 = *(v6 + 8);
  if (v7)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(v7, a2, a3, 2, 0, 1);
    v6 = *(this + 6);
  }

  IOPCIDevice::ConfigurationWrite16(*v6, a2, a3);
  result = *(*(this + 6) + 8);
  if (result)
  {

    return AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(result, a2, a3, 2, 0, 0);
  }

  return result;
}

uint64_t AppleBCMWLANChipConfigSpace::modifyReg32(AppleBCMWLANChipConfigSpace *this, unsigned int a2, int a3, int a4, unsigned int *a5)
{
  v13 = 0;
  v10 = AppleBCMWLANChipConfigSpace::readReg32(this, a2, &v13);
  if (!v10)
  {
    v11 = v13;
    if (a5)
    {
      *a5 = v13;
    }

    AppleBCMWLANChipConfigSpace::writeReg32(this, a2, v11 & ~a3 | a4);
  }

  return v10;
}

uint64_t AppleBCMWLANChipConfigSpace::readReg32(AppleBCMWLANChipConfigSpace *this, unsigned int a2, unsigned int *a3)
{
  readData = 0;
  v6 = *(this + 6);
  v7 = *(v6 + 8);
  if (v7)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(v7, a2, 0, 4, 1, 1);
    v6 = *(this + 6);
  }

  IOPCIDevice::ConfigurationRead32(*v6, a2, &readData);
  v8 = readData;
  *a3 = readData;
  v9 = *(*(this + 6) + 8);
  if (v9)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(v9, a2, v8, 4, 1, 0);
    v8 = *a3;
  }

  if (v8 == -1)
  {
    return 3825173258;
  }

  else
  {
    return 0;
  }
}

AppleBCMWLANPCIeMMIOHistory *AppleBCMWLANChipConfigSpace::writeReg32(AppleBCMWLANChipConfigSpace *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 6);
  v7 = *(v6 + 8);
  if (v7)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(v7, a2, a3, 4, 0, 1);
    v6 = *(this + 6);
  }

  IOPCIDevice::ConfigurationWrite32(*v6, a2, a3);
  result = *(*(this + 6) + 8);
  if (result)
  {

    return AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(result, a2, a3, 4, 0, 0);
  }

  return result;
}

uint64_t AppleBCMWLANChipConfigSpace::dumpConfigSpaceRegisters(AppleBCMWLANChipConfigSpace *this, char *a2, size_t a3)
{
  v3 = 3825172738;
  if (a3 >> 5 >= 0xD7)
  {
    v4 = a3;
    v16 = -1431655766;
    v15 = -21846;
    bzero(a2, a3);
    v7 = 0;
    v8 = 0;
    v9 = &off_1003D2318;
    v10 = 86;
    while (1)
    {
      v11 = v8;
      v8 = *(v9 - 2);
      if ((v8 - v11) < 4)
      {
        v12 = AppleBCMWLANChipConfigSpace::readReg16(this, *(v9 - 2), &v15);
        v16 = v15;
        if (v12)
        {
          return 3825173258;
        }
      }

      else if (AppleBCMWLANChipConfigSpace::readReg32(this, *(v9 - 2), &v16))
      {
        return 3825173258;
      }

      v13 = snprintf(&a2[v7], v4, "[%03x]%s: 0x%08x \n", v8, *v9, v16);
      if (v13 < 1 || v4 <= v13)
      {
        return v3;
      }

      v7 += v13;
      v4 -= v13;
      v9 += 2;
      if (!--v10)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipConfigSpace::getBus(IOPCIDevice ***this)
{
  returnBusNumber = -86;
  returnDeviceNumber = -86;
  returnFunctionNumber = -86;
  IOPCIDevice::GetBusDeviceFunction(*this[6], &returnBusNumber, &returnDeviceNumber, &returnFunctionNumber, 0);
  return returnBusNumber;
}

uint64_t AppleBCMWLANChipConfigSpace::getDevice(IOPCIDevice ***this)
{
  returnBusNumber = -86;
  returnDeviceNumber = -86;
  returnFunctionNumber = -86;
  IOPCIDevice::GetBusDeviceFunction(*this[6], &returnBusNumber, &returnDeviceNumber, &returnFunctionNumber, 0);
  return returnDeviceNumber;
}

uint64_t AppleBCMWLANChipConfigSpace::getFunction(IOPCIDevice ***this)
{
  returnBusNumber = -86;
  returnDeviceNumber = -86;
  returnFunctionNumber = -86;
  IOPCIDevice::GetBusDeviceFunction(*this[6], &returnBusNumber, &returnDeviceNumber, &returnFunctionNumber, 0);
  return returnFunctionNumber;
}

uint64_t AppleBCMWLANChipConfigSpace::findCapability(IOPCIDevice ***this, uint32_t a2, uint64_t searchOffset)
{
  v4 = searchOffset;
  if (IOPCIDevice::FindPCICapability(*this[6], a2, searchOffset, &v4, 0))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

OSObject *AppleBCMWLANWorkOrder::withID(AppleBCMWLANWorkOrder *this)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANWorkOrderMetaClass, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (v4 && ((v4->OSMetaClassBase::__vftable[1].getMetaClass)(v4, this) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  return v2;
}

uint64_t AppleBCMWLANWorkOrder::initWithID(AppleBCMWLANWorkOrder *this, int a2)
{
  result = IOCommand::init(this);
  if (result)
  {
    v5 = IOMallocZeroTyped();
    *(this + 7) = v5;
    if (v5)
    {
      *(v5 + 60) = a2;
      return 1;
    }

    else
    {
      IOLog("Failed to allocate AppleBCMWLANWorkOrder_IVars\n");
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANWorkOrder::free(AppleBCMWLANWorkOrder *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    memset_s(v2, 0x60uLL, 0, 0x60uLL);
    v3 = *(this + 7);
    if (v3)
    {
      IOFree(v3, 0x60uLL);
      *(this + 7) = 0;
    }
  }

  return IOCommand::free(this);
}

uint64_t AppleBCMWLANWorkOrder::execute(AppleBCMWLANWorkOrder *this)
{
  *(*(this + 7) + 64) = 2;
  *(*(this + 7) + 80) = mach_continuous_time();
  result = (**(this + 7))(*(*(this + 7) + 8), *(*(this + 7) + 48), *(this + 7) + 16);
  *(*(this + 7) + 56) = result;
  *(*(this + 7) + 64) = 3;
  return result;
}

uint64_t AppleBCMWLANWorkOrder::complete(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 56) + 64) = 4;
  *(*(a1 + 56) + 88) = mach_continuous_time();
  v4 = *(a1 + 56);
  if (*(v4 + 68) == 1 && (v5 = *(v4 + 32)) != 0 && (v6 = *(v4 + 40)) != 0)
  {
    v5(v6, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    (*(*a2 + 88))(a2, a1);
  }

  *(*(a1 + 56) + 64) = 5;

  return kdebug_trace();
}

OSObject *AppleBCMWLANTaskmaster::initWithWorkQueue(uint64_t a1, uint64_t a2, int a3)
{
  result = OSObject::init(a1);
  if (!result)
  {
    return result;
  }

  v7 = IOMallocZeroTyped();
  *(a1 + 48) = v7;
  if (!v7)
  {
    IOLog("Failed to allocate AppleBCMWLANTaskmaster_IVars\n");
    return 0;
  }

  (*(*a2 + 8))(a2);
  **(a1 + 48) = a2;
  *(*(a1 + 48) + 8) = IO80211CommandGate::allocWithParams();
  result = *(*(a1 + 48) + 8);
  if (!result)
  {
    return result;
  }

  *(*(a1 + 48) + 32) = AppleBCMWLANCommandQueue::withGateAndCapacity(result, 0);
  v8 = *(a1 + 48);
  if (!*(v8 + 32))
  {
    return 0;
  }

  *(*(a1 + 48) + 16) = AppleBCMWLANCommandQueue::withGateAndCapacity(*(v8 + 8), 0);
  if (!*(*(a1 + 48) + 16))
  {
    return 0;
  }

  if (!a3)
  {
LABEL_10:
    *(*(a1 + 48) + 48) = IOLockAlloc();
    if (*(*(a1 + 48) + 48))
    {
      *(*(a1 + 48) + 40) = IO80211TimerSource::allocWithParams();
      result = *(*(a1 + 48) + 40);
      if (result)
      {
        (result->OSMetaClassBase::__vftable[1].Dispatch)(result);
        return 1;
      }

      return result;
    }

    getClassNameHelper(a1);
    IOLog("%s::%s() failed to create _lock\n");
    return 0;
  }

  while (1)
  {
    result = AppleBCMWLANWorkOrder::withID(0);
    if (!result)
    {
      return result;
    }

    v9 = result;
    if ((AppleBCMWLANCommandQueue::enqueue(*(*(a1 + 48) + 16), result) & 1) == 0)
    {
      (v9->release)(v9);
      return 0;
    }

    if (!--a3)
    {
      goto LABEL_10;
    }
  }
}

uint64_t AppleBCMWLANTaskmaster::work(uint64_t a1)
{
  kdebug_trace();
  while (1)
  {
    IOLockLock(*(*(a1 + 48) + 48));
    *(*(a1 + 48) + 72) = mach_continuous_time();
    v2 = AppleBCMWLANCommandQueue::lockDequeue(*(*(a1 + 48) + 32));
    IOLockUnlock(*(*(a1 + 48) + 48));
    if (!v2)
    {
      break;
    }

    AppleBCMWLANWorkOrder::execute(v2);
    AppleBCMWLANWorkOrder::complete(v2, *(*(a1 + 48) + 8));
    if (AppleBCMWLANWorkOrder::isAsync(v2))
    {
      AppleBCMWLANCommandQueue::lockEnqueue(*(*(a1 + 48) + 16), v2);
    }
  }

  return kdebug_trace();
}

void AppleBCMWLANTaskmaster::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      (*(*v3 + 80))(v2[5]);
      (*(**(*&this[1].refcount + 40) + 16))(*(*&this[1].refcount + 40));
      *(*&this[1].refcount + 40) = 0;
      v2 = *&this[1].refcount;
    }

    v4 = v2[2];
    if (v4)
    {
      (*(*v4 + 16))(v2[2]);
      *(*&this[1].refcount + 16) = 0;
      v2 = *&this[1].refcount;
    }

    v5 = v2[4];
    if (v5)
    {
      (*(*v5 + 16))(v2[4]);
      *(*&this[1].refcount + 32) = 0;
      v2 = *&this[1].refcount;
    }

    v6 = v2[1];
    if (v6)
    {
      (*(*v6 + 16))(v2[1]);
      *(*&this[1].refcount + 8) = 0;
      v2 = *&this[1].refcount;
    }

    if (*v2)
    {
      (*(**v2 + 16))(*v2);
      **&this[1].refcount = 0;
      v2 = *&this[1].refcount;
    }

    if (v2[6])
    {
      IOLockFree(v2[6]);
      *(*&this[1].refcount + 48) = 0;
      v2 = *&this[1].refcount;
    }

    memset_s(v2, 0x50uLL, 0, 0x50uLL);
    v7 = *&this[1].refcount;
    if (v7)
    {
      IOFree(v7, 0x50uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

OSObject *AppleBCMWLANCommandQueue::withCapacity(AppleBCMWLANCommandQueue *this)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANCommandQueueMetaClass, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (v4 && ((v4->OSMetaClassBase::__vftable[1].getMetaClass)(v4, 0, this) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  return v2;
}

OSObject *AppleBCMWLANCommandQueue::withGateAndCapacity(uint64_t a1, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANCommandQueueMetaClass, &v6))
  {
    return 0;
  }

  v4 = v6;
  if (v6 && ((v6->OSMetaClassBase::__vftable[1].getMetaClass)(v6, a1, a2) & 1) == 0)
  {
    (v4->release)(v4);
    return 0;
  }

  return v4;
}

uint64_t AppleBCMWLANCommandQueue::initWithGateAndCapacity(uint64_t a1, uint64_t a2, int a3)
{
  result = OSObject::init(a1);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(a1 + 48) = result;
    if (result)
    {
      *(result + 32) = result + 32;
      *(*(a1 + 48) + 40) = *(a1 + 48) + 32;
      if (a2)
      {
        (*(*a2 + 8))(a2);
      }

      *(*(a1 + 48) + 8) = a2;
      *(*(a1 + 48) + 24) = IOLockAlloc();
      v7 = *(a1 + 48);
      if (*(v7 + 24))
      {
        *v7 = a3;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void AppleBCMWLANCommandQueue::free(AppleBCMWLANCommandQueue *this)
{
  if (*(this + 6))
  {
    AppleBCMWLANCommandQueue::flush(this);
    v3 = *(this + 6);
    if (v3)
    {
      if (*(v3 + 24))
      {
        IOLockFree(*(v3 + 24));
        v3 = *(this + 6);
      }

      v4 = *(v3 + 8);
      if (v4)
      {
        (*(*v4 + 16))(*(v3 + 8));
        *(*(this + 6) + 8) = 0;
        v3 = *(this + 6);
      }

      memset_s(v3, 0x30uLL, 0, 0x30uLL);
      v5 = *(this + 6);
      if (v5)
      {
        IOFree(v5, 0x30uLL);
        *(this + 6) = 0;
      }
    }

    OSObject::free(this);
  }

  else
  {

    IOLog("Failed to allocate AppleBCMWLANCommandQueue_IVars\n");
  }
}

uint64_t AppleBCMWLANCommandQueue::flush(AppleBCMWLANCommandQueue *this)
{
  v2 = AppleBCMWLANCommandQueue::dequeue(this);
  for (i = 0; v2; v2 = AppleBCMWLANCommandQueue::dequeue(this))
  {
    (*(*v2 + 16))(v2);
    i = (i + 1);
  }

  return i;
}

uint64_t AppleBCMWLANCommandQueue::enqueue(AppleBCMWLANCommandQueue *this, IOCommand *a2)
{
  v4 = *(this + 6);
  if (*v4 && v4[1] >= *v4)
  {
    return 0;
  }

  (*(*a2 + 8))(a2);
  atomic_fetch_add_explicit((*(this + 6) + 4), 1u, memory_order_relaxed);
  v5 = *(this + 6);
  result = IOCommand::CommandChain(a2);
  v7 = *(v5 + 40);
  if (*v7 == v5 + 32)
  {
    *result = v5 + 32;
    *(result + 8) = v7;
    *v7 = result;
    *(v5 + 40) = result;
    v8 = *(this + 6);
    if (*(v8 + 16))
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        (*(*v9 + 88))(v9, v8 + 32);
      }
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *AppleBCMWLANCommandQueue::dequeue(AppleBCMWLANCommandQueue *this)
{
  v2 = *(this + 6);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  result = v5;
  if (v4 == v5)
  {
    return 0;
  }

  if (*result[1] == result)
  {
    v6 = *result;
    if (*(*result + 8) == result)
    {
      *(v6 + 8) = v4;
      *v4 = v6;
      *result = 0;
      result[1] = 0;
      v7 = IOCommand::FromChain();
      atomic_fetch_add_explicit((*(this + 6) + 4), 0xFFFFFFFF, memory_order_relaxed);
      (*(*v7 + 16))(v7);
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t AppleBCMWLANCommandQueue::remove(AppleBCMWLANCommandQueue *this, IOCommand *a2)
{
  v2 = *(this + 6);
  v3 = *(v2 + 32);
  if ((v2 + 32) != v3)
  {
    while (v3 != (*(this + 6) + 32))
    {
      v6 = v3;
      v3 = *v3;
      result = IOCommand::CommandChain(a2);
      if (v6 == result)
      {
        v8 = v6[1];
        if (*v8 == v6 && (v9 = *v6, *(*v6 + 8) == v6))
        {
          *(v9 + 8) = v8;
          *v8 = v9;
          *v6 = 0;
          v6[1] = 0;
          atomic_fetch_add_explicit((*(this + 6) + 4), 0xFFFFFFFF, memory_order_relaxed);
          (*(*a2 + 16))(a2);
          return 1;
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCommandQueue::lockEnqueue(AppleBCMWLANCommandQueue *this, IOCommand *a2)
{
  v4 = *(*(this + 6) + 24);
  IOLockLock(v4);
  v5 = AppleBCMWLANCommandQueue::enqueue(this, a2);
  IOLockUnlock(v4);
  return v5;
}

void *AppleBCMWLANCommandQueue::lockDequeue(AppleBCMWLANCommandQueue *this)
{
  v2 = *(*(this + 6) + 24);
  IOLockLock(v2);
  v3 = AppleBCMWLANCommandQueue::dequeue(this);
  IOLockUnlock(v2);
  return v3;
}

uint64_t AppleBCMWLANCommandQueue::lockFlush(AppleBCMWLANCommandQueue *this)
{
  v2 = *(*(this + 6) + 24);
  IOLockLock(v2);
  v3 = AppleBCMWLANCommandQueue::flush(this);
  IOLockUnlock(v2);
  return v3;
}

uint64_t AppleBCMWLANCommandQueue::map(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (*a2 != a2)
  {
    v10 = IOCommand::FromChain();
    v11 = *a2;
    if (*a2 != a2)
    {
      v12 = v10;
      do
      {
        v13 = *v11;
        v14 = IOCommand::FromChain();
        result = a3(a4, v14, a5);
        if (result < 3)
        {
          if (result)
          {
            if (result == 1)
            {
              return 0;
            }

            if (result != 2)
            {
LABEL_20:
              AppleBCMWLANCommandQueue::map();
            }

            return v14;
          }
        }

        else
        {
          if (result > 3)
          {
            switch(result)
            {
              case 6:
                v23 = v11[1];
                if (*v23 == v11)
                {
                  v24 = *v11;
                  if (*(*v11 + 8) == v11)
                  {
                    v24[1] = v23;
                    *v23 = v24;
                    *v11 = 0;
                    v11[1] = 0;
                    v25 = a2[1];
                    if (*v25 == a2)
                    {
                      *v11 = a2;
                      v11[1] = v25;
                      *v25 = v11;
                      a2[1] = v11;
                      return v14;
                    }
                  }
                }

                break;
              case 5:
                if (v14 == v12)
                {
                  return v14;
                }

                v20 = v11[1];
                if (*v20 == v11)
                {
                  v21 = *v11;
                  if (*(*v11 + 8) == v11)
                  {
                    *(v21 + 8) = v20;
                    *v20 = v21;
                    *v11 = 0;
                    v11[1] = 0;
                    v22 = *a2;
                    if (*(*a2 + 8) == a2)
                    {
                      *v11 = v22;
                      v11[1] = a2;
                      v22[1] = v11;
                      *a2 = v11;
                      return v14;
                    }
                  }
                }

                break;
              case 4:
                v18 = v11[1];
                if (*v18 == v11)
                {
                  v19 = *v11;
                  if (*(*v11 + 8) == v11)
                  {
                    *(v19 + 8) = v18;
                    *v18 = v19;
                    *v11 = 0;
                    v11[1] = 0;
                    atomic_fetch_add_explicit((*(a1 + 48) + 4), 0xFFFFFFFF, memory_order_relaxed);
                    (*(*v14 + 16))(v14);
                    return v14;
                  }
                }

                break;
              default:
                goto LABEL_20;
            }

LABEL_32:
            __break(1u);
            return result;
          }

          v16 = v11[1];
          if (*v16 != v11)
          {
            goto LABEL_32;
          }

          v17 = *v11;
          if (*(*v11 + 8) != v11)
          {
            goto LABEL_32;
          }

          *(v17 + 8) = v16;
          *v16 = v17;
          *v11 = 0;
          v11[1] = 0;
          atomic_fetch_add_explicit((*(a1 + 48) + 4), 0xFFFFFFFF, memory_order_relaxed);
          (*(*v14 + 16))(v14);
        }

        v11 = v13;
      }

      while (v13 != a2);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCommandQueue::lockMap(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = *(*(a1 + 48) + 24);
  IOLockLock(v8);
  v9 = AppleBCMWLANCommandQueue::map(a1, (*(a1 + 48) + 32), a2, a3, a4);
  IOLockUnlock(v8);
  return v9;
}

uint64_t AppleBCMWLANCommandQueue::filterInternal(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 48);
  v7 = *(v6 + 32);
  if ((v6 + 32) != v7)
  {
    v13 = result;
    do
    {
      v14 = *v7;
      v15 = IOCommand::FromChain();
      if (a3)
      {
        result = (*(a3 + 16))(a3, v15);
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = a2(a4, v15, a5);
        if (!result)
        {
          goto LABEL_11;
        }
      }

      v16 = v7[1];
      if (*v16 != v7 || (v17 = *v7, *(*v7 + 8) != v7) || (v17[1] = v16, *v16 = v17, *v7 = 0, v7[1] = 0, atomic_fetch_add_explicit((*(v13 + 48) + 4), 0xFFFFFFFF, memory_order_relaxed), v18 = *(a6 + 8), *v18 != a6))
      {
        __break(1u);
        return result;
      }

      *v7 = a6;
      v7[1] = v18;
      *v18 = v7;
      *(a6 + 8) = v7;
      result = (*(*v15 + 16))(v15);
LABEL_11:
      v7 = v14;
    }

    while (v14 != (*(v13 + 48) + 32));
  }

  return result;
}

void AppleBCMWLANCommandQueue::lockFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a1 + 48) + 24);
  IOLockLock(v6);
  AppleBCMWLANCommandQueue::filterInternal(a1, 0, a2, 0, 0, a3);

  IOLockUnlock(v6);
}

uint64_t AppleBCMWLANCommandQueue::lockPeek(AppleBCMWLANCommandQueue *this)
{
  v2 = *(*(this + 6) + 24);
  IOLockLock(v2);
  if (*(this + 6) + 32 == *(*(this + 6) + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = IOCommand::FromChain();
  }

  IOLockUnlock(v2);
  return v3;
}

uint64_t AppleBCMWLANChipManager::init(OSObject *this, AppleBCMWLANBusInterface *a2)
{
  if (OSObject::init(this))
  {
    result = IOMallocZeroTyped();
    *&this[1].refcount = result;
    if (!result)
    {
      return result;
    }

    **&this[1].refcount = AppleBCMWLANBusInterface::getLogger(a2);
    v5 = **&this[1].refcount;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      return 1;
    }

    getClassNameHelper(this);
    IOLog("%s::%s(): Unable to get debug logger\n");
  }

  else
  {
    getClassNameHelper(this);
    IOLog("%s:%s(): Super failed to init!\n");
  }

  return 0;
}

BOOL AppleBCMWLANChipManager::init(OSObject *this)
{
  if (OSObject::init(this))
  {
    v2 = IOMallocZeroTyped();
    *&this[1].refcount = v2;
    return v2 != 0;
  }

  else
  {
    ClassNameHelper = getClassNameHelper(this);
    IOLog("%s:%s(): Super failed to init!\n", ClassNameHelper, "init");
    return 0;
  }
}

void AppleBCMWLANChipManager::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 16))(*v2);
      **&this[1].refcount = 0;
      v2 = *&this[1].refcount;
    }

    memset_s(v2, 8uLL, 0, 8uLL);
    v3 = *&this[1].refcount;
    if (v3)
    {
      IOFree(v3, 8uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANPCIeFlowQueue::unassignFlowRing(uint64_t this)
{
  v1 = *(this + 64);
  if (*(v1 + 24))
  {
    *(v1 + 24) = 0;
    v1 = *(this + 64);
  }

  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
    *(*(this + 64) + 136) = -1;
    v1 = *(this + 64);
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t AppleBCMWLANPCIeFlowQueue::getAssignedFlowRingID(AppleBCMWLANPCIeFlowQueue *this)
{
  v1 = *(*(this + 8) + 24);
  if (v1)
  {
    return (*(*v1 + 208))();
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t AppleBCMWLANPCIeFlowQueue::queueSpace(AppleBCMWLANPCIeFlowQueue *this)
{
  v2 = *(this + 8);
  v3 = *(v2 + 24);
  if (v3)
  {
    WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(v3);
    v2 = WritableItemCount - AppleBCMWLANPCIeTransmitFlowRing::packetsWaitingForRingCount(*(*(this + 8) + 24), 3);
    if ((v2 & 0x1FFFFFFFFLL) == (v2 & 0x1FFFFFFFFLL))
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    LODWORD(v2) = 255 - *(v2 + 16);
    v5 = v2;
  }

  if ((v2 & 0x80000000) == 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANPCIeFlowQueue::queueSize(AppleBCMWLANPCIeFlowQueue *this)
{
  v1 = *(*(this + 8) + 24);
  if (!v1)
  {
    return 255;
  }

  ItemCount = AppleBCMWLANItemRing::getItemCount(v1);
  if (((ItemCount + 0x1FFFFFFFFLL) & 0x1FFFFFFFFLL) == ((ItemCount - 1) & 0x1FFFFFFFFLL))
  {
    return (ItemCount - 1) & ~((ItemCount - 1) >> 31);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeFlowQueue::queueSize(AppleBCMWLANPCIeFlowQueue *this)
{
  v1 = *(*(this + 3) + 24);
  if (!v1)
  {
    return 255;
  }

  ItemCount = AppleBCMWLANItemRing::getItemCount(v1);
  if (((ItemCount + 0x1FFFFFFFFLL) & 0x1FFFFFFFFLL) == ((ItemCount - 1) & 0x1FFFFFFFFLL))
  {
    return (ItemCount - 1) & ~((ItemCount - 1) >> 31);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANPCIeFlowQueue::pendingPackets(AppleBCMWLANPCIeFlowQueue *this)
{
  v2 = this + 64;
  v1 = *(this + 8);
  v3 = *(v1 + 24);
  if (!v3)
  {
    return *(v1 + 16);
  }

  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(v3);
  v5 = AppleBCMWLANPCIeTransmitFlowRing::packetsWaitingForRingCount(*(*v2 + 24), 3);
  v6 = __CFADD__(ReadableItemCount, v5);
  v7 = (ReadableItemCount + v5);
  if (v6)
  {
    AppleBCMWLANPCIeFlowQueue::pendingPackets(v2, v7);
  }

  return v7;
}

OSObject *AppleBCMWLANPCIeFlowQueue::withProviderAndQueueInfo(AppleBCMWLANBusInterfacePCIe *a1, uint64_t a2, uint64_t a3, IO80211SkywalkInterface *a4, BOOL (__cdecl *a5)(OSObjectInterface *__hidden this), void (__cdecl *a6)(OSObjectInterface *__hidden this))
{
  v9 = a3;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeFlowQueueMetaClass, &v14))
  {
    return 0;
  }

  v12 = v14;
  if (v14 && (AppleBCMWLANPCIeFlowQueue::initWithProviderAndQueueInfo(v14, a1, a2 & 0xFFFFFFFFFFFFLL, v9, a4, a5, a6) & 1) == 0)
  {
    (v12->release)(v12);
    return 0;
  }

  return v12;
}

uint64_t AppleBCMWLANPCIeFlowQueue::free(AppleBCMWLANPCIeFlowQueue *this)
{
  if (*(this + 8))
  {
    AppleBCMWLANPCIeFlowQueue::setFWRing(this, 0);
    v2 = *(this + 8);
    if (*(v2 + 80))
    {
      shouldLog = CCLogStream::shouldLog();
      v2 = *(this + 8);
      if (shouldLog)
      {
        v6 = *(v2 + 80);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v2 + 104));
        CCLogStream::logInfo(v6, "[dk] %s@%d:%s: flowQ %p IfID:%u", "free", 359, "free", this, InterfaceId);
        v2 = *(this + 8);
      }
    }

    v4 = *(v2 + 80);
    if (v4)
    {
      (*(*v4 + 16))(v4);
      *(*(this + 8) + 80) = 0;
      v2 = *(this + 8);
    }

    *(v2 + 176) = 0;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    v5 = *(this + 8);
    if (v5)
    {
      IOFree(v5, 0xB8uLL);
      *(this + 8) = 0;
    }
  }

  return IO80211FlowQueue::free(this);
}

AppleBCMWLANPCIeFlowQueue *AppleBCMWLANPCIeFlowQueue::setFWRing(AppleBCMWLANPCIeFlowQueue *this, AppleBCMWLANPCIeTransmitFlowRing *a2)
{
  v2 = this;
  if (a2)
  {
    *(*(this + 8) + 112) = a2;
  }

  else
  {
    this = AppleBCMWLANPCIeFlowQueue::flushPackets(this);
    v3 = *(v2 + 8);
    v4 = *(v3 + 136);
    if (v4 != 0xFFFF)
    {
      this = AppleBCMWLANBusInterfacePCIe::releaseFlowId(*(v3 + 96), v4);
      *(*(v2 + 8) + 136) = -1;
      v3 = *(v2 + 8);
    }

    if (*(v3 + 112))
    {
      *(v3 + 112) = 0;
    }
  }

  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeFlowQueue::setBusy(AppleBCMWLANPCIeFlowQueue *this)
{
  v1 = *(this - 7);
  *(*(this + 1) + 148) = 1;
  return (*(v1 + 8))();
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeFlowQueue::clearBusy(AppleBCMWLANPCIeFlowQueue *this)
{
  v1 = *(this - 7);
  *(*(this + 1) + 148) = 0;
  return (*(v1 + 16))();
}

void *AppleBCMWLANPCIeFlowQueue::enqueuePacket(AppleBCMWLANPCIeFlowQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2, uint64_t a3)
{
  v4 = this + 64;
  v5 = *(this + 8);
  if (*(v5 + 136) != -1 || a3 == 0)
  {
LABEL_54:
    result = AppleBCMWLANPCIeSkywalkPacket::getChain(a2);
    v29 = *(v5 + 56);
    if (*v29 == v5 + 48)
    {
      *result = v5 + 48;
      result[1] = v29;
      *v29 = result;
      *(v5 + 56) = result;
      result = AppleBCMWLANPCIeSkywalkPacket::setAc(a2, *(*v4 + 129));
      ++*(*v4 + 64);
      ++*(*v4 + 152);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v31 = 0;
  v8 = *(v5 + 129);
  v9 = *(v5 + 96);
  if (!v9)
  {
    v12 = 0;
    v11 = 0;
LABEL_13:
    if (IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 104)))
    {
      switch(v8)
      {
        case 1:
          v14 = 2;
          break;
        case 2:
          v14 = 4;
          break;
        case 3:
          v14 = 7;
          break;
        default:
          v14 = 3;
          break;
      }
    }

    else
    {
      switch(v8)
      {
        case 1:
          v14 = 1;
          break;
        case 2:
          v14 = 5;
          break;
        case 3:
          v14 = 6;
          break;
        default:
          v14 = 0;
          break;
      }
    }

    goto LABEL_36;
  }

  v10 = (*(*v9 + 1104))(v9, a2, a3);
  v11 = v10;
  v12 = v10 != 0;
  if (v8 != 3 || v10 == 0)
  {
    goto LABEL_13;
  }

  if (AppleBCMWLANCore::checkForHP2PSupport(v10))
  {
    v12 = 1;
    goto LABEL_13;
  }

  if (AppleBCMWLANCore::isP2pAirplayActive(v11) && AppleBCMWLANCore::mapLowLatencyLowPriority(v11) && (InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 104)), InterfaceId == AppleBCMWLANCore::getProximityInterfaceId(v11)))
  {
    v14 = 5;
  }

  else if (IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 104)))
  {
    v14 = 7;
  }

  else
  {
    v14 = 6;
  }

  v12 = 1;
LABEL_36:
  isLowLatencyEnabled = IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 104));
  if (isLowLatencyEnabled)
  {
    v17 = !v12;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (AppleBCMWLANCore::isSplitTxStatusEnabled(v11))
    {
      LOBYTE(isLowLatencyEnabled) = 3;
    }

    else
    {
      LOBYTE(isLowLatencyEnabled) = 1;
    }
  }

  v18 = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 104));
  if (v12)
  {
    v19 = *v4;
    GCRMACAddress = AppleBCMWLANCore::getGCRMACAddress(v11);
    v32 = WORD2(GCRMACAddress);
    if (*(v19 + 130) == GCRMACAddress && *(v19 + 134) == WORD2(GCRMACAddress))
    {
      LOBYTE(isLowLatencyEnabled) = isLowLatencyEnabled | 8;
      v14 = 0;
    }
  }

  if (IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 104)))
  {
    ParentInterface = IO80211SkywalkInterface::getParentInterface(*(*v4 + 104));
    if (!ParentInterface)
    {
      v22 = *v4;
      if (*(*v4 + 80))
      {
        shouldLog = CCLogStream::shouldLog();
        v22 = *v4;
        if (shouldLog)
        {
          CCLogStream::logAlert(*(v22 + 80), "[dk] %s@%d:Invalid parentIf\n", "enqueuePacket", 438);
          v22 = *v4;
        }
      }

      goto LABEL_60;
    }

    v18 = IO80211SkywalkInterface::getInterfaceId(ParentInterface);
  }

  v22 = *v4;
  if (v18 != -1)
  {
    v23 = *(v22 + 96);
    v24 = (*(**(v22 + 104) + 1072))(*(v22 + 104));
    AppleBCMWLANBusInterfacePCIe::requestFlowId(v23, v24 & 0xFFFFFFFFFFFFLL, *(*(this + 8) + 36) | (*(*(this + 8) + 40) << 32), v18, v14, v8, (*(this + 8) + 136), &v31, 0, this, AppleBCMWLANPCIeFlowQueue::fwRingPending, AppleBCMWLANPCIeFlowQueue::fwRingFill, AppleBCMWLANPCIeFlowQueue::fwRingError, isLowLatencyEnabled);
    v25 = *(this + 8);
    v26 = *(v25 + 136);
    if (v26 != 0xFFFF)
    {
      TransmitFlowRing = AppleBCMWLANBusInterfacePCIe::getTransmitFlowRing(*(v25 + 96), v26);
      if (TransmitFlowRing)
      {
        AppleBCMWLANPCIeTransmitFlowRing::setSkywalkFlow(TransmitFlowRing, 1);
      }
    }

    v5 = *v4;
    goto LABEL_54;
  }

LABEL_60:
  result = *(v22 + 80);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeFlowQueue::enqueuePacket(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeFlowQueue::fwRingPending(AppleBCMWLANPCIeFlowQueue *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return *(v1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANPCIeFlowQueue::fwRingFill(AppleBCMWLANPCIeFlowQueue *this, AppleBCMWLANByteRing *a2, char *a3, unsigned int a4)
{
  v8 = this + 64;
  TxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getTxPacketTracker(*(*(this + 8) + 120));
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v8 + 104));
  v68 = (*(**(*v8 + 104) + 1184))();
  isLowLatencyEnabled = IO80211SkywalkInterface::isLowLatencyEnabled(*(*v8 + 104));
  v79 = -1;
  v78 = -1;
  v11 = *(*v8 + 36) != -1 || *(*v8 + 40) != -1;
  *(*v8 + 176) = mach_continuous_time();
  v12 = *v8;
  v13 = *(*v8 + 112);
  if (!v13 && (*(*v8 + 112) = OSMetaClassBase::safeMetaCast(a2, gAppleBCMWLANPCIeTransmitFlowRingMetaClass), v12 = *v8, (v13 = *(*v8 + 112)) == 0) || v13 != a2)
  {
    if (*(v12 + 80) && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo(*(*v8 + 80), "[dk] %s@%d:Invalid fFWRing/ring ivars->fFWRing:%p ring:%p\n", "fwRingFill", 598, *(*v8 + 112), a2);
    }

    return 0;
  }

  if (InterfaceId == 9)
  {
    ParentInterface = IO80211SkywalkInterface::getParentInterface(*(v12 + 104));
    if (!ParentInterface)
    {
      v17 = TxPacketTracker;
      if (*(*v8 + 80) && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeFlowQueue::fwRingFill(v8);
      }

      v70 = -1;
      goto LABEL_22;
    }

    v70 = IO80211SkywalkInterface::getInterfaceId(ParentInterface);
  }

  else
  {
    if (InterfaceId == 10)
    {
      v16 = 3;
    }

    else
    {
      v16 = InterfaceId;
    }

    v70 = v16;
  }

  v17 = TxPacketTracker;
LABEL_22:
  v77 = -21846;
  memset(&v76[1], 170, 24);
  v65 = v11;
  if (a4)
  {
    v15 = 0;
    v18 = isLowLatencyEnabled;
    if (v11)
    {
      v18 = 0;
    }

    v69 = v18;
    v66 = a3;
    while (1)
    {
      v19 = AppleBCMWLANPCIeFlowQueue::dequeueSkywalkPacket(this);
      if (!v19)
      {
        goto LABEL_102;
      }

      v20 = v19;
      v21 = (v19->getDataLength)(v19);
      if (v21 <= 0xE)
      {
        break;
      }

      v25 = &a3[48 * v15];
      *(v25 + 1) = 0u;
      *(v25 + 2) = 0u;
      *v25 = 0u;
      if (isLowLatencyEnabled && AppleBCMWLANBusInterfacePCIe::isFWPacketTimestampEnabled(*(*v8 + 96)))
      {
        mach_continuous_time();
        absolutetime_to_nanoseconds();
        *(v25 + 6) = *&v76[17] / 0x3E8uLL;
        v25[47] = -1;
        if ((v20->OSObject::OSMetaClassBase::__vftable[1]._PrepareWithQueue)(v20, &v76[9]))
        {
          AppleBCMWLANPCIeSkywalkPacket::setPktLifetime(v20, -1);
        }

        else
        {
          if (*&v76[9] <= mach_absolute_time())
          {
            v23 = *v8;
            if (*(*v8 + 80))
            {
              shouldLog = CCLogStream::shouldLog();
              v23 = *v8;
              if (shouldLog)
              {
                CCLogStream::logAlertIf(*(v23 + 80), 0x400uLL, "[dk] %s@%d:Got an expired packet. Deallocating\n", "fwRingFill", 649);
                goto LABEL_91;
              }
            }

LABEL_30:
            AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(v23 + 120), v20);
            ++*(*v8 + 168);
            goto LABEL_88;
          }

          absolutetime_to_nanoseconds();
          v48 = *&v76[1];
          *&v76[1] /= 0x3E8uLL;
          v49 = v48 / 0xF4240;
          if (v49 >= 0x7FFFuLL)
          {
            LOWORD(v49) = 0x7FFF;
          }

          AppleBCMWLANPCIeSkywalkPacket::setPktLifetime(v20, v49);
          v50 = *&v76[1];
          if (*&v76[1] > 0xF4240uLL)
          {
            AppleBCMWLANPCIeSkywalkPacket::setPktLifetime(v20, -2);
            if (*(*v8 + 80) && CCLogStream::shouldLog())
            {
              CCLogStream::logAlert(*(*v8 + 80), "[dk] %s@%d:com.apple.p2p: Got an packet with lifetime more than a second: lifetime:%llu msg[fillCount].lifetime_250us: %d, scale=%d\n", "fwRingFill", 670, *&v76[1], v25[47], v25[45] & 7);
            }
          }

          else
          {
            v51 = *&v76[1] / 0xFAuLL;
            *&v76[1] = v51;
            v52 = v25[45] & 0xF8;
            if (v50 >> 9 >= 0x7D)
            {
              do
              {
                v53 = v51;
                v51 >>= 1;
                v52 = v52 & 0xF8 | (v52 + 1) & 7;
              }

              while (v53 > 0x1FF);
              *&v76[1] = v51;
            }

            v25[45] = v52;
            v25[47] = v51;
          }
        }
      }

      *v25 = 15;
      v25[1] = v70;
      if ((*(**(*v8 + 112) + 248))(*(*v8 + 112)))
      {
        v26 = -127;
      }

      else
      {
        v26 = 1;
      }

      v25[2] = v26;
      v25[22] = 0;
      v25[22] |= (32 * (*(**(*v8 + 112) + 344))()) | 1;
      v25[23] = 1;
      v25[44] = 0;
      v77 = -1;
      if (AppleBCMWLANHashtable::add(v17, v20, &v77))
      {
        if (*(*v8 + 80) && CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeFlowQueue::fwRingFill(v8);
        }

        AppleBCMWLANPCIeFlowQueue::enqueuePacket(this, v20, 1);
        return v15;
      }

      AppleBCMWLANPCIeSkywalkPacket::setPacketId(v20, v77);
      Headroom = IO80211NetworkPacket::getHeadroom(v20);
      v28 = (v20->OSObject::OSMetaClassBase::__vftable[1].getDataLength)(v20) + Headroom;
      if (v69)
      {
        v29 = v28 - v68;
        Headroom -= v68;
        v30 = *v28;
        v31 = *(v28 + 8);
        *(v29 + 12) = *(v28 + 12);
        *(v29 + 8) = v31;
        *v29 = v30;
        *(v29 + 14) = 0x8F2170003AAAALL;
        *(v29 + 20) = 0xDEADBEEF04030008;
        *(v29 + 12) = bswap32((v20->getDataLength)(v20) + 14) >> 16;
        (v20->setDataLength)(v20);
        v28 = v29;
      }

      v32 = *v28;
      v33 = *(v28 + 8);
      *(v25 + 10) = *(v28 + 12);
      *(v25 + 4) = v33;
      *(v25 + 1) = v32;
      v34 = AppleBCMWLANPCIeSkywalkPacket::getBusAddress(v20) + Headroom + 14;
      *(v25 + 21) = (v20->getDataLength)(v20) - 14;
      *(v25 + 4) = v34;
      *(v25 + 2) = v77;
      *(v25 + 3) = (*(**(*v8 + 112) + 296))();
      if ((v20->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(v20) == 4718992 && AppleBCMWLANPCIeSkywalkPacket::getAc(v20) == 3)
      {
        if ((*(**(*v8 + 104) + 728))(*(*v8 + 104)))
        {
          v35 = (*(**(*v8 + 104) + 728))(*(*v8 + 104));
          if (AppleBCMWLANCore::getReliableL3CtrlTxProfileActive(v35))
          {
            v25[46] = 0x80;
          }
        }
      }

      v36 = (v20->OSObject::OSMetaClassBase::__vftable[1]._SetPacketIndex)(v20);
      v37 = *v8;
      if ((v36 & 1) != 0 || *(v37 + 140) == 1)
      {
        if (*(v37 + 144) == 3)
        {
          HostSWTimestamp = AppleBCMWLANBusInterfacePCIe::readHostSWTimestamp(*(v37 + 96), "fwRingFill");
          (v20->OSObject::OSMetaClassBase::__vftable[1].free)(v20, HostSWTimestamp);
          v37 = *v8;
        }

        if ((*(v37 + 142) & 1) == 0)
        {
          v25[44] |= *(v37 + 143);
          if ((*(*v8 + 143) & 4) != 0)
          {
            v25[46] = 0;
          }
        }
      }

      v39 = (v20->OSObject::OSMetaClassBase::__vftable[1]._SetPacketIndex)(v20);
      v41 = *v8;
      if (v39 && *(v41 + 141) == 1)
      {
        v76[0] = 0;
        *v75 = 0;
        memset(v74, 0, sizeof(v74));
        *v73 = 0;
        if (AppleBCMWLANUtil::isPTPPacket(v20, 1, v76, v75, &v74[1], v74, v73, v40))
        {
          v42 = *v75;
          v43 = -16;
          if (!v76[0])
          {
            v43 = -4;
          }

          v44 = (*&v74[1] + v43);
          v72 = 0;
          (v20->OSObject::OSMetaClassBase::__vftable[1]._GetPacketIndex)(v20, &v72);
          if (v76[0])
          {
            v45 = &off_1003D2C98;
            v46 = 9;
            while (*(v45 - 2) != v74[0])
            {
              v45 += 2;
              if (!--v46)
              {
                v47 = "unknown";
                goto LABEL_79;
              }
            }

            v47 = *v45;
LABEL_79:
            IOLog("[WiFiTimeSync+] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x submitted. fIgnore %d extendedFlags 0x%x ts %llu", v47, *v73, *v44, v44[1], v44[2], v44[3], v44[12], v44[13], v44[14], v44[15], v42[6], v42[7], v42[8], v42[9]);
          }

          else
          {
            v55 = &off_1003D2C98;
            v56 = 9;
            while (*(v55 - 2) != v74[0])
            {
              v55 += 2;
              if (!--v56)
              {
                v57 = "unknown";
                goto LABEL_84;
              }
            }

            v57 = *v55;
LABEL_84:
            IOLog("[WiFiTimeSync+] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x submitted. fIgnore %d extendedFlags 0x%x ts %llu", v57, *v73, *v44, v44[1], v44[2], v44[3], v42[6], v42[7], v42[8], v42[9]);
          }

          a3 = v66;
          v17 = TxPacketTracker;
        }

        v41 = *v8;
      }

      ++*(v41 + 160);
      v15 = (v15 + 1);
LABEL_88:
      if (v15 >= a4)
      {
        goto LABEL_102;
      }
    }

    v22 = v21;
    v23 = *v8;
    if (*(*v8 + 80))
    {
      v24 = CCLogStream::shouldLog();
      v23 = *v8;
      if (v24)
      {
        v58 = *(v23 + 80);
        v59 = (*(**(v23 + 104) + 160))(*(v23 + 104));
        CCLogStream::logAlert(v58, "[dk] %s@%d:Got packet of invalid length %d on %s. Deallocating\n", "fwRingFill", 631, v22, v59);
LABEL_91:
        v23 = *v8;
      }
    }

    goto LABEL_30;
  }

  v15 = 0;
LABEL_102:
  AppleBCMWLANBusInterfacePCIe::updateActiveTxPacketCount(*(*(this + 8) + 96), v15);
  RingFreeSpace = AppleBCMWLANPCIeFlowQueue::getRingFreeSpace(this);
  if (!v65)
  {
    v62 = RingFreeSpace;
    v63 = (*(**(*v8 + 104) + 1160))(*(*v8 + 104));
    if (v63)
    {
      v64 = v62 == 0;
    }

    else
    {
      v64 = 1;
    }

    if (!v64)
    {
      (*(*v63 + 120))(v63);
    }
  }

  return v15;
}

uint64_t AppleBCMWLANPCIeFlowQueue::fwRingError(AppleBCMWLANPCIeFlowQueue *this, AppleBCMWLANByteRing *a2, uint64_t a3, void *a4)
{
  v4 = this + 64;
  result = *(*(this + 8) + 80);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeFlowQueue::fwRingError(v4);
    }
  }

  return result;
}

void *AppleBCMWLANPCIeFlowQueue::dequeueSkywalkPacket(AppleBCMWLANPCIeFlowQueue *this)
{
  if (*(this + 8) + 48 == *(*(this + 8) + 48))
  {
    return 0;
  }

  --*(*(this + 8) + 64);
  v1 = *(this + 8);
  v4 = *(v1 + 48);
  v3 = (v1 + 48);
  result = v4;
  if (v4 == v3)
  {
    return AppleBCMWLANPCIeSkywalkPacket::fromChain(0);
  }

  if (*result[1] == result && (v5 = *result, *(*result + 8) == result))
  {
    *(v5 + 8) = v3;
    *v3 = v5;
    *result = 0;
    result[1] = 0;
    return AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

IOUserNetworkPacket *AppleBCMWLANPCIeFlowQueue::flushPackets(AppleBCMWLANPCIeFlowQueue *this)
{
  result = AppleBCMWLANPCIeFlowQueue::dequeueSkywalkPacket(this);
  if (result)
  {
    v3 = result;
    do
    {
      AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 8) + 120), v3);
      ++*(*(this + 8) + 168);
      result = AppleBCMWLANPCIeFlowQueue::dequeueSkywalkPacket(this);
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeFlowQueue::getPendingPacketCount(AppleBCMWLANPCIeFlowQueue *this)
{
  v2 = *(this + 8);
  v3 = *(v2 + 112);
  if (v3)
  {
    return *(*(this + 8) + 64) + AppleBCMWLANItemRing::getReadableItemCount(v3);
  }

  else
  {
    return *(v2 + 64);
  }
}

uint64_t AppleBCMWLANPCIeFlowQueue::requestPendingPackets(AppleBCMWLANPCIeFlowQueue *this)
{
  v1 = *(this + 8);
  result = *(v1 + 112);
  if (result)
  {
    return (*(*result + 192))(result, *(v1 + 64), 1);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeFlowQueue::collectQueueStats(AppleBCMWLANPCIeFlowQueue *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(this + 8);
  v11 = *(v10 + 112);
  v12 = *(v10 + 80);
  v13 = a4 - a5;
  if (v11)
  {
    isEnabled = IO80211WorkSource::isEnabled(v11);
    v15 = (*(**(*(this + 8) + 112) + 208))(*(*(this + 8) + 112));
    AppleBCMWLANItemRing::getReadableItemCount(*(*(this + 8) + 112));
    AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 8) + 112));
    v16 = IO80211Print(v12, 5, -1, 0, a2, a5 + a3, v13, "ringAttached ringEnabled:%d  ringId:%u readCount:%u writeCount:%u\n", isEnabled, v15);
  }

  else
  {
    v16 = IO80211Print(v12, 5, -1, 0, a2, a5 + a3, v13, "IPC ring not attached\n");
  }

  v17 = IO80211Print(*(*(this + 8) + 80), 5, -1, 0, a2, v16 + a5 + a3, a4 - (v16 + a5), "TotalStaged:%zu TotalQueued:%zu TotalDropped:%zu\n", *(*(this + 8) + 152), *(*(this + 8) + 160), *(*(this + 8) + 168)) + v16 + a5;
  absolutetime_to_nanoseconds();
  return IO80211Print(*(*(this + 8) + 80), 5, -1, 0, a2, v17 + a3, a4 - v17, "fwRingFillTime:%llu\n", 0xAAAAAAAAAAAAAAAALL) + v17;
}

uint64_t AppleBCMWLANPCIeFlowQueue::getSequenceNumber(AppleBCMWLANPCIeFlowQueue *this)
{
  v1 = *(this + 8);
  result = *(v1 + 138);
  *(v1 + 138) = result + 1;
  return result;
}

OSObject *AppleBCMWLANCommand::newCmd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANCommandMetaClass, &v8))
  {
    return 0;
  }

  v6 = v8;
  if (v8 && ((v8->OSMetaClassBase::__vftable[1].getMetaClass)(v8, a1, a2, a3) & 1) == 0)
  {
    (v6->release)(v6);
    return 0;
  }

  return v6;
}

uint64_t AppleBCMWLANCommand::initWithOptions(IOCommand *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = IOCommand::init(a1);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(a1 + 7) = result;
    if (result)
    {
      *(*(a1 + 7) + 152) = (*(*(a2 + 48) + 120))(a2 + 48, a3 + 16, a4);
      if (*(*(a1 + 7) + 152))
      {
        return 1;
      }

      else
      {
        ClassNameHelper = getClassNameHelper(a1);
        IOLog("%s::%s(): Failure allocating txBuffer\n", ClassNameHelper, "initWithOptions");
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommand::free(AppleBCMWLANCommand *this)
{
  v2 = *(this + 7);
  v3 = v2[19];
  if (!v3 || ((*(*v3 + 16))(v2[19]), *(*(this + 7) + 152) = 0, (v2 = *(this + 7)) != 0))
  {
    memset_s(v2, 0xE8uLL, 0, 0xE8uLL);
    v4 = *(this + 7);
    if (v4)
    {
      IOFree(v4, 0xE8uLL);
      *(this + 7) = 0;
    }
  }

  return IOCommand::free(this);
}

uint64_t AppleBCMWLANCommand::prepare(uint64_t a1, unsigned __int8 *a2, __int16 a3, uint64_t a4, uint64_t a5, _DWORD *a6, __int128 *a7, uint64_t a8)
{
  v8 = a8;
  v16 = *(a4 + 8);
  v17 = *(a2 + 1);
  if (v17)
  {
    v18 = strlen(v17) + 1;
    v16 += v18;
    if (v16 >> 16)
    {
      return 3758096385;
    }

    v37 = a5;
  }

  else
  {
    v37 = a5;
    v18 = 0;
  }

  v19 = v8;
  AppleBCMWLANTxBuffer::setPayloadLength(*(*(a1 + 56) + 152), v16 + 16);
  v20 = *(a1 + 56);
  *(v20 + 72) = 0;
  *(v20 + 56) = 0u;
  *(v20 + 40) = 0u;
  *(*(a1 + 56) + 80) = 0;
  if (*(a2 + 1))
  {
    Payload = AppleBCMWLANTxBuffer::getPayload(*(*(a1 + 56) + 152), 16);
    strlcpy(Payload, *(a2 + 1), v16);
    v22 = *(a2 + 1);
    v23 = strlen(v22) + 17;
  }

  else
  {
    v22 = 0;
    v23 = 16;
  }

  if (*(a4 + 8) && *a4)
  {
    v24 = AppleBCMWLANTxBuffer::getPayload(*(*(a1 + 56) + 152), v23);
    memcpy(v24, *a4, *(a4 + 8));
    v22 = *(a2 + 1);
  }

  *(*(a1 + 56) + 100) = *a2;
  *(*(a1 + 56) + 104) = *(a2 + 1);
  *(*(a1 + 56) + 140) = *(a2 + 4);
  v25 = *(a1 + 56);
  if (v22)
  {
    strlcpy((v25 + 108), v22, 0x20uLL);
  }

  else
  {
    *(v25 + 108) = 0;
  }

  *(*(a1 + 56) + 144) = a3;
  *(*(a1 + 56) + 160) = *a6;
  v26 = *(a1 + 56);
  v27 = *a7;
  *(v26 + 200) = *(a7 + 2);
  *(v26 + 184) = v27;
  *(*(a1 + 56) + 176) = v37;
  *(*(a1 + 56) + 216) = -536870911;
  *(*(a1 + 56) + 220) = 0;
  v28 = AppleBCMWLANTxBuffer::getPayload(*(*(a1 + 56) + 152), 0);
  v29 = *(a2 + 4) & 2;
  v28[2] = v29;
  v28[3] = 0;
  v28[2] = (*(*(a1 + 56) + 144) << 16) | (*a2 << 12) | v29;
  *v28 = *(a2 + 1);
  v30 = *(a1 + 56);
  v31 = *(v30 + 104);
  v32 = *(v30 + 162);
  if (v31 == 262 && v32 < 0x7FD)
  {
    v33 = v18 + v32;
    if (v33 >> 16)
    {
      return 3758096385;
    }

    v35 = v33 | (v16 << 16);
  }

  else
  {
    v35 = v32 | (v16 << 16);
  }

  v28[1] = v35;
  AppleBCMWLANTxBuffer::setBusPreference(*(*(a1 + 56) + 152), v19);
  *(*(a1 + 56) + 224) = v19;
  *(*(a1 + 56) + 96) = 0;
  cmdID2Name(*(a2 + 1));
  v36 = *(a1 + 56);
  if ((*(a2 + 1) & 0xFFFFFFFE) == 0x106)
  {
    AppleBCMWLANTxBuffer::getPayload(*(v36 + 152), 16);
    snprintf(v36, 0x22uLL, "%s: %s");
  }

  else
  {
    snprintf(v36, 0x22uLL, "%s");
  }

  return 0;
}

uint64_t AppleBCMWLANCommand::complete(OSObject *this, IO80211CagedBuffer *a2)
{
  v36 = 0;
  *v37 = 0;
  meta = this[1].meta;
  v5 = *&meta[5].refcount;
  if (!v5 || !IO80211Buffer::getBytesNoCopy(*&meta[5].refcount) || !IO80211Buffer::readBytes(v5, 0, &v36))
  {
    goto LABEL_7;
  }

  BytesNoCopy = IO80211Buffer::getBytesNoCopy(v5);
  metaClassPrivate = this[1].meta[6].metaClassPrivate;
  if (metaClassPrivate == -536870911)
  {
    LODWORD(this[1].meta[6].metaClassPrivate) = mapBcmErrorToIOReturn(v37[1]);
    metaClassPrivate = this[1].meta[6].metaClassPrivate;
  }

  if (metaClassPrivate)
  {
LABEL_7:
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  if (BytesNoCopy - 16 >= WORD2(v36))
  {
    v8 = WORD2(v36);
  }

  else
  {
    v8 = BytesNoCopy - 16;
  }

  v9 = (IO80211Buffer::getBytesNoCopy(v5) + 16);
  v13 = this[1].meta;
  v14 = v13[5].meta;
  if (v14 && v14->__vftable)
  {
    if (LOBYTE(v13[3].reserved) && v13[3].refcount == 262 && LOWORD(v14->refcount) <= 0x7FCu)
    {
      v15 = strlen(&v13[3].reserved);
      if (v8 > v15 + 1)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = 0;
      }

      v8 -= v16;
    }

    v17 = -536870168;
    if (v8 <= LOWORD(v14->refcount) + 3 && v8 <= WORD1(v13[5].__vftable) + 3)
    {
      if (v8 >= LOWORD(v13[5].__vftable))
      {
LABEL_31:
        if (v8 >= LOWORD(this[1].meta[5].meta->refcount))
        {
          refcount_low = LOWORD(this[1].meta[5].meta->refcount);
        }

        else
        {
          refcount_low = v8;
        }

        if (refcount_low >= IO80211Buffer::getLength(v5) - 16)
        {
          LOWORD(refcount_low) = IO80211Buffer::getLength(v5) - 16;
        }

        IO80211Buffer::readBytes(v5, 16, this[1].meta[5].meta->OSMetaClassBase::__vftable);
        LOWORD(this[1].meta[5].meta->refcount) = refcount_low;
        goto LABEL_8;
      }

      v17 = -536870169;
    }

    LODWORD(v13[6].metaClassPrivate) = v17;
    goto LABEL_31;
  }

LABEL_8:
  v10 = this[1].meta;
  if (v10[6].__vftable && v10[5].metaClassPrivate)
  {
    if (IO80211CagedBuffer::tryLock(a2))
    {
      if (v8)
      {
        v11 = IO80211CagedBuffer::copyIn(a2, v9, v8);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      ClassNameHelper = getClassNameHelper(this);
      IOLog("%s::%s(): Failed to lock commandAsyncResponseCagedBuffer\n", ClassNameHelper, "complete");
      v11 = 0;
      LODWORD(this[1].meta[6].metaClassPrivate) = -536870196;
    }

    v35 = kNoRxPayload;
    if (v8 - 1 <= 0xFFFE && v11 == v8)
    {
      Buffer = IO80211CagedBuffer::getBuffer(a2);
      v20 = this[1].meta;
      v21 = v8 | (LODWORD(v20[5].__vftable) << 16);
      if (!Buffer)
      {
        v21 = 0;
      }

      *&v35 = Buffer;
      *(&v35 + 1) = v21;
    }

    else
    {
      v20 = this[1].meta;
    }

    v22 = v20[5].metaClassPrivate;
    v23 = v20[6].__vftable;
    v24 = BYTE4(v20[3].__vftable);
    refcount = v20[3].refcount;
    reserved = v20[4].reserved;
    p_reserved = &v20[3].reserved;
    v34 = -1431655766;
    v31[0] = -1431655766;
    LOBYTE(v31[0]) = v24;
    v31[1] = refcount;
    v33 = reserved;
    (v23)(v22, v31, LODWORD(v20[6].metaClassPrivate), &v35, *&v20[6].refcount);
    IO80211CagedBuffer::unlock(a2);
    v10 = this[1].meta;
  }

  v27 = *&v10[5].refcount;
  if (v27)
  {
    IO80211Buffer::returnBuffer(v27);
    *&this[1].meta[5].refcount = 0;
    v10 = this[1].meta;
  }

  LODWORD(v10[3].__vftable) = 2;
  v28 = this[1].meta;
  if ((v28[4].reserved & 4) != 0)
  {
    v29 = v28[2].metaClassPrivate;
    if (v29)
    {
      (*(*v29 + 88))(v29, this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCommand::setQueuedTimestamp(AppleBCMWLANCommand *this, unsigned int a2)
{
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  *(*(this + 7) + 80) = a2;
  return result;
}

unint64_t AppleBCMWLANCommand::getQueuedDuration_ms(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56) + 40;
  v3 = *(v2 + 8 * a2);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v4 = ((a2 + 1) % 5);
  if (v4 > 4)
  {
    goto LABEL_6;
  }

  do
  {
    v5 = *(v2 + 8 * v4);
    v7 = v5;
    if (v4 > 3)
    {
      break;
    }

    ++v4;
  }

  while (!v5);
  if (!v5)
  {
LABEL_6:
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v5 = v7;
  }

  if (v5 >= v3)
  {
    return (v5 - v3) / 0xF4240;
  }

  else
  {
    return 0;
  }
}

unint64_t AppleBCMWLANCommand::getQueuedDuration_ms(AppleBCMWLANCommand *this)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  return -*(*(this + 7) + 8 * *(*(this + 7) + 80) + 40) / 0xF4240uLL;
}

uint64_t AppleBCMWLANCommand::logCmd(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  result = AppleBCMWLANTxBuffer::getPayload(*(*(a1 + 56) + 152), 0);
  if (a2)
  {
    v13 = result;
    result = CCLogStream::shouldLog();
    if ((result & 1) != 0 || a6 == -1 && (result = CCLogStream::shouldLog(), result))
    {
      v14 = *(*(a1 + 56) + 48);
      v15 = v14 / 0x3B9ACA00;
      v32 = v14 % 0x3B9ACA00 / 0x3E8;
      v33 = a3;
      QueuedDuration_ms = AppleBCMWLANCommand::getQueuedDuration_ms(a1, 1u);
      v16 = AppleBCMWLANCommand::getQueuedDuration_ms(a1, 2u);
      v17 = AppleBCMWLANCommand::getQueuedDuration_ms(a1, 3u);
      v18 = AppleBCMWLANCommand::getQueuedDuration_ms(a1, 4u);
      v19 = v18;
      v20 = *(a1 + 56);
      v21 = *(v20 + 144);
      if (a4)
      {
        v30 = v17;
        v29 = v15;
        if ((*(v20 + 140) & 8) != 0)
        {
          v22 = "async";
        }

        else
        {
          v22 = " sync";
        }

        v23 = *(v20 + 152);
        v24 = *v13;
        v25 = *(v20 + 168);
        if (v25)
        {
          v27 = v19;
          v26 = *(v20 + 144);
          v28 = v22;
          IO80211Buffer::getBytesNoCopy(v25);
          v19 = v27;
          v22 = v28;
          v21 = v26;
        }

        return CCLogStream::logIf(a2, a5, a6, "%s %06lld.%06lld [p%-2lld o%-2lld a%-2lld c%-2lld] %5u) %-32s %s %p %p [ 0x%08X len 0x%08X flgs 0x%08X stat 0x%08X if %u resp %p %x]\n", v33, v29, v32, QueuedDuration_ms, v16, v30, v19, v21, v20, v22, a1, v23, v24);
      }

      else
      {
        return CCLogStream::logIf(a2, a5, a6, "%s %06lld.%06lld [p%-2lld o%-2lld a%-2lld c%-2lld] %5u) (0x%08X) %-32s %s 0x%x\n", v33, v15, v32, QueuedDuration_ms, v16, v17, v18);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommand::logCmdBuf(AppleBCMWLANCommand *this, void *a2, const char *a3, char a4)
{
  AppleBCMWLANTxBuffer::getPayload(*(*(this + 7) + 152), 0);
  v8 = *(*(this + 7) + 48);
  v9 = *(a2 + 4);
  v10 = *a2;
  v11 = *a2 - 1;
  if (a4)
  {
    if (v9 < v11)
    {
      v18 = a2[1];
      if (v18)
      {
        v36 = v10 - v9;
        v32 = (274877907 * (v8 % 0x3B9ACA00)) >> 38;
        v34 = v8 / 0x3B9ACA00;
        QueuedDuration_ms = AppleBCMWLANCommand::getQueuedDuration_ms(this, 1u);
        v30 = AppleBCMWLANCommand::getQueuedDuration_ms(this, 2u);
        v29 = AppleBCMWLANCommand::getQueuedDuration_ms(this, 3u);
        v19 = AppleBCMWLANCommand::getQueuedDuration_ms(this, 4u);
        v20 = *(this + 7);
        v21 = *(v20 + 144);
        if ((*(v20 + 140) & 8) != 0)
        {
          v22 = "async";
        }

        else
        {
          v22 = " sync";
        }

        v23 = *(v20 + 152);
        v24 = *(v20 + 168);
        if (v24)
        {
          v26 = v19;
          v28 = v18;
          v25 = *(v20 + 144);
          v27 = *(v20 + 152);
          IO80211Buffer::getBytesNoCopy(v24);
          v19 = v26;
          v23 = v27;
          v21 = v25;
          v18 = v28;
        }

        result = snprintf((v18 + v9), v36, "%s %06lld.%06lld [p%-2lld o%-2lld a%-2lld c%-2lld] %5u) %-32s %s %p %p [ 0x%08X len 0x%08X flgs 0x%08X stat 0x%08X if %u resp %p o %d %x]\n", a3, v34, v32, QueuedDuration_ms, v30, v29, v19, v21, v20, v22, this, v23);
        goto LABEL_14;
      }
    }

LABEL_12:
    result = 0;
    goto LABEL_15;
  }

  if (v9 >= v11)
  {
    goto LABEL_12;
  }

  v12 = a2[1];
  if (!v12)
  {
    goto LABEL_12;
  }

  v35 = v10 - v9;
  v13 = v8 / 0x3B9ACA00;
  v33 = v8 % 0x3B9ACA00 / 0x3E8;
  v14 = AppleBCMWLANCommand::getQueuedDuration_ms(this, 1u);
  v15 = AppleBCMWLANCommand::getQueuedDuration_ms(this, 2u);
  v16 = AppleBCMWLANCommand::getQueuedDuration_ms(this, 3u);
  AppleBCMWLANCommand::getQueuedDuration_ms(this, 4u);
  result = snprintf((v12 + v9), v35, "%s %06lld.%06lld [p%-2lld o%-2lld a%-2lld c%-2lld] %5u) (0x%08X) %-32s %s 0x%x\n", a3, v13, v33, v14, v15, v16);
LABEL_14:
  v10 = *a2;
  LODWORD(v9) = *(a2 + 4);
LABEL_15:
  if (result < v10)
  {
    v10 = result;
  }

  *(a2 + 4) = v9 + v10;
  return result;
}

void AppleBCMWLANTimeTrace::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    if (v2->isEqualTo)
    {
      IOFreeData();
      this[1].isEqualTo = 0;
    }

    else
    {
      v2->Dispatch = 0;
    }

    memset_s(this[1].OSMetaClassBase::__vftable, 0x28uLL, 0, 0x28uLL);
    v3 = this[1].OSMetaClassBase::__vftable;
    if (v3)
    {
      IOFree(v3, 0x28uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANTimeTrace::reset(AppleBCMWLANTimeTrace *this)
{
  *(*(this + 5) + 12) = 0;
  bzero(*(*(this + 5) + 24), *(*(this + 5) + 32));
  return 0;
}

uint64_t AppleBCMWLANPCIeAllocateDartMappedMemory(uint64_t a1, unint64_t a2, uint64_t a3, IOService *a4)
{
  v4 = a3;
  segments.address = 0xAAAAAAAAAAAAAAAALL;
  segments.length = 0xAAAAAAAAAAAAAAAALL;
  segmentsCount = 1;
  flags = 0;
  v7 = *(a1 + 32);
  if (v7 >> 31)
  {
    IOLog("%s:%06u: ERROR: Invalid memory size: direction[%u] size[0x%08llx] bufferSize[0x%08llx] alignment[0x%08llx] > 0x%08lx\n", "AppleBCMWLANPCIeAllocateDartMappedMemory", 59, a3, v7, *(a1 + 24), a2, 0x7FFFLL);
    return 0;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&specification._resv[12] = v10;
  *&specification._resv[14] = v10;
  *&specification._resv[8] = v10;
  *&specification._resv[10] = v10;
  *&specification._resv[4] = v10;
  *&specification._resv[6] = v10;
  *specification._resv = v10;
  *&specification._resv[2] = v10;
  *&specification.options = v10;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (v7 % a2)
  {
    v11 = a2 - v7 % a2;
  }

  else
  {
    v11 = 0;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = (v11 + v7);
  v12 = IO80211Buffer::allocBufferSingle();
  *a1 = v12;
  if (!v12)
  {
    IOLog("%s:%06u: ERROR: Failed allocBufferSingle, direction[%u] size[0x%08llx] bufferSize[0x%08llx]\n");
LABEL_22:
    IOLog("%s:%06u: ERROR: Failed mapping memory: direction[%u] size[0x%08llx] bufferSize[0x%08llx] alignment[0x%08llx]\n", "AppleBCMWLANPCIeAllocateDartMappedMemory", 136, v4, *(a1 + 32), *(a1 + 24), a2);
    AppleBCMWLANPCIeFreeDartMappedMemory(a1);
    return 0;
  }

  BytesNoCopy = IO80211Buffer::getBytesNoCopy(v12, 0, *(a1 + 32));
  *(a1 + 40) = BytesNoCopy;
  if (!BytesNoCopy)
  {
    IOLog("%s:%06u: ERROR: Failed getBytesNoCopy()\n");
    goto LABEL_22;
  }

  memset(specification._resv, 0, sizeof(specification._resv));
  specification.options = 0;
  specification.maxAddressBits = 64;
  if (IODMACommand::Create(a4, 0, &specification, (a1 + 16)))
  {
    IOLog("%s:%06u: ERROR: Failed IODMACommand::Create()\n");
    goto LABEL_22;
  }

  v14 = *(a1 + 16);
  MemoryDescriptor = IO80211Buffer::getMemoryDescriptor(*a1);
  if (IODMACommand::PrepareForDMA(v14, 0, MemoryDescriptor, 0, 0, &flags, &segmentsCount, &segments, 0))
  {
    IOLog("%s:%06u: ERROR: Failed PrepareForDMA() status 0x%x\n");
    goto LABEL_22;
  }

  if (segmentsCount != 1 || (length = segments.length, segments.length < *(a1 + 24)))
  {
    IOLog("%s:%06u: ERROR: Failed sanity checks\n");
    goto LABEL_22;
  }

  if (*(a1 + 32) < segments.length)
  {
    length = *(a1 + 32);
  }

  *(a1 + 32) = length;
  *(a1 + 48) = segments.address;
  return 1;
}

uint64_t AppleBCMWLANPCIeFreeDartMappedMemory(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    IODMACommand::CompleteDMA(v2, 0, 0);
    v3 = *(a1 + 16);
    if (v3)
    {
      (*(*v3 + 16))(v3);
      *(a1 + 16) = 0;
    }
  }

  *(a1 + 40) = 0;
  if (*a1)
  {
    IO80211Buffer::returnBuffer(*a1);
    *a1 = 0;
  }

  result = *(a1 + 8);
  if (result)
  {
    (*(*result + 72))(result);
    result = *(a1 + 8);
    if (result)
    {
      result = (*(*result + 16))(result);
      *(a1 + 8) = 0;
    }
  }

  return result;
}

_DWORD *AppleBCMWLANChipManagerPCIe::findRemappableWindow(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  v4 = *a4;
  if (v4 >= a2)
  {
    return 0;
  }

  v5 = (a1 + 20 * v4);
  v6 = v4 + 1;
  do
  {
    if (*v5 == a3)
    {
      if (v5[2])
      {
        result = v5;
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      result = 0;
    }

    *a4 = v6;
    if (result)
    {
      break;
    }

    v5 += 5;
  }

  while (v6++ < a2);
  return result;
}

OSObject *AppleBCMWLANChipManagerPCIe::withChip(AppleBCMWLANChipManagerPCIe *this, uint64_t a2)
{
  if (this <= 4377)
  {
    if (this <= 4356)
    {
      if (this == 4350)
      {

        return AppleBCMWLANChipManagerPCIe4350::withChip(0x10FE, a2);
      }

      else
      {
        if (this != 4355)
        {
          goto LABEL_48;
        }

        return AppleBCMWLANChipManagerPCIe4355::withChip(0x1103, a2);
      }
    }

    else
    {
      switch(this)
      {
        case 0x1105:

          return AppleBCMWLANChipManagerPCIe4357::withChip(0x1105, a2);
        case 0x110C:

          return AppleBCMWLANChipManagerPCIe4364::withChip(0x110C, a2);
        case 0x1119:

          return AppleBCMWLANChipManagerPCIe4377::withChip(0x1119, a2);
        default:
          goto LABEL_48;
      }
    }
  }

  else if (this > 4398)
  {
    switch(this)
    {
      case 0x112F:

        return AppleBCMWLANChipManagerPCIe4399::withChip(0x112F, a2);
      case 0x4377B:

        return AppleBCMWLANChipManagerPCIe0x4377b::withChip(0x4377B, a2);
      case 0xA9BC:

        return AppleBCMWLANChipManagerPCIe43452::withChip(0xA9BC, a2);
      default:
        goto LABEL_48;
    }
  }

  else
  {
    switch(this)
    {
      case 0x111A:

        return AppleBCMWLANChipManagerPCIe4378::withChip(0x111A, a2);
      case 0x1123:

        return AppleBCMWLANChipManagerPCIe4387::withChip(0x1123, a2);
      case 0x1124:

        return AppleBCMWLANChipManagerPCIe4388::withChip(0x1124, a2);
      default:
LABEL_48:
        IOLog("AppleBCMWLANChipManager::%s(): Unknown/Unsupported chipNumber: 0x%X", "withChip", this);
        return 0;
    }
  }
}

BOOL AppleBCMWLANChipManagerPCIe::init(OSObject *this)
{
  result = AppleBCMWLANChipManager::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    this[1].OSObjectInterface::__vftable = v3;
    return v3 != 0;
  }

  return result;
}

void AppleBCMWLANChipManagerPCIe::free(OSObject *this)
{
  v2 = this[1].OSObjectInterface::__vftable;
  if (v2)
  {
    free = v2[10].free;
    if (free)
    {
      (*(*free + 16))(v2[10].free);
      this[1].OSObjectInterface::__vftable[10].free = 0;
      v2 = this[1].OSObjectInterface::__vftable;
    }

    init = v2[11].init;
    if (init)
    {
      (*(*init + 16))(v2[11].init);
      this[1].OSObjectInterface::__vftable[11].init = 0;
      v2 = this[1].OSObjectInterface::__vftable;
    }

    memset_s(v2, 0xD8uLL, 0, 0xD8uLL);
    v5 = this[1].OSObjectInterface::__vftable;
    if (v5)
    {
      IOFree(v5, 0xD8uLL);
      this[1].OSObjectInterface::__vftable = 0;
    }
  }

  AppleBCMWLANChipManager::free(this);
}

uint64_t AppleBCMWLANChipManagerPCIe::getRAMSize(AppleBCMWLANChipManagerPCIe *this)
{
  v1 = *(*(this + 8) + 40);
  for (i = *v1; i != 131076; i = v3)
  {
    v3 = v1[3];
    v1 += 3;
  }

  return v1[2];
}

uint64_t AppleBCMWLANChipManagerPCIe::copyBackplaneRegion(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = (*(a1 + 64) + 16 * a3);
  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  for (i = (*(v4 + 1) + 4); *(i - 1) != a4; i = (i + 12))
  {
    if (!--v5)
    {
      return 0;
    }
  }

  *a2 = a4;
  *(a2 + 4) = *i;
  v8 = *(a1 + 64);
  v9 = *(v8 + 64);
  if (!v9)
  {
    return 1;
  }

  for (j = (*(v8 + 56) + 8); *(j - 2) != a3 || *(j - 1) != a4 || *j; j += 5)
  {
    if (!--v9)
    {
      return 1;
    }
  }

  *(a2 + 12) = 0;
  *(a2 + 16) = j[2];
  result = 1;
  *(a2 + 24) = 1;
  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe::copyMemoryRegion(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = (*(a1 + 64) + 16 * a3);
  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  for (i = (*(v4 + 1) + 4); *(i - 1) != a4; i = (i + 12))
  {
    if (!--v5)
    {
      return 0;
    }
  }

  *a2 = a4;
  v8 = *i;
  *(a2 + 4) = *i;
  result = 1;
  *(a2 + 12) = 1;
  *(a2 + 16) = v8;
  *(a2 + 24) = 1;
  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe::copyRemappableWindows(uint64_t a1, char *a2, unsigned int a3, int a4)
{
  bzero(a2, 32 * a3);
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  result = 0;
  v10 = 0;
  do
  {
    v11 = *(a1 + 64);
    v12 = *(v11 + 64);
    if (v10 >= v12)
    {
      break;
    }

    v13 = *(v11 + 56);
    do
    {
      while (1)
      {
        v14 = (v13 + 20 * v10);
        if (*v14 == a4)
        {
          break;
        }

        if (++v10 >= v12)
        {
          goto LABEL_13;
        }
      }

      v15 = v14[2];
      ++v10;
    }

    while (v10 < v12 && !v15);
    if (v15)
    {
      v16 = &a2[32 * v8];
      *v16 = -1;
      *(v16 + 1) = v15;
      v17 = v14[3];
      v18 = v14[4];
      *(v16 + 2) = v17;
      v16[12] = 0;
      *(v16 + 2) = v18;
      v16[24] = 1;
      result = (result + 1);
    }

LABEL_13:
    v10 = v10;
    ++v8;
  }

  while (v8 != a3);
  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe::getUCodeRegionInfo(AppleBCMWLANChipManagerPCIe *this, int a2)
{
  if (!a2)
  {
    v2 = 104;
    return *(*(this + 8) + v2);
  }

  if (a2 == 1)
  {
    v2 = 112;
    return *(*(this + 8) + v2);
  }

  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(uint64_t result, uint64_t a2, int a3)
{
  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    *(*(result + 64) + 104) = a2;
  }

  *(*(result + 64) + 112) = a2;
  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe::setAWDLSupported(AppleBCMWLANChipManagerPCIe *this, char a2)
{
  v2 = *(this + 8);
  result = *(v2 + 196);
  *(v2 + 196) = a2;
  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe::setRangingSupport(AppleBCMWLANChipManagerPCIe *this, char a2)
{
  v2 = *(this + 8);
  result = *(v2 + 197);
  *(v2 + 197) = a2;
  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe::getPCIeBootMinPollingDelay(AppleBCMWLANChipManagerPCIe *this)
{
  v1 = *(*(this + 8) + 188);
  if (v1)
  {
    return v1;
  }

  else
  {
    return 600;
  }
}

uint64_t AppleBCMWLANChipManagerPCIe::getPCIeBootPollingInterval(AppleBCMWLANChipManagerPCIe *this)
{
  v1 = *(*(this + 8) + 192);
  if (v1)
  {
    return v1;
  }

  else
  {
    return 10;
  }
}

uint64_t AppleBCMWLANChipManagerPCIe::getMailboxIntStatusRegisterOffset(AppleBCMWLANChipManagerPCIe *this)
{
  if (*(*(this + 8) + 198))
  {
    return 3120;
  }

  else
  {
    return 72;
  }
}

uint64_t AppleBCMWLANChipManagerPCIe::getMailboxIntMaskRegisterOffset(AppleBCMWLANChipManagerPCIe *this)
{
  if (*(*(this + 8) + 198))
  {
    return 3124;
  }

  else
  {
    return 76;
  }
}

OSObject *AppleBCMWLANStopwatch::withUptime(AppleBCMWLANStopwatch *this)
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANStopwatchMetaClass, &v3))
  {
    return 0;
  }

  v1 = v3;
  if (v3 && ((v3->init)(v3) & 1) == 0)
  {
    (v1->release)(v1);
    return 0;
  }

  return v1;
}

BOOL AppleBCMWLANStopwatch::init(OSObject *this)
{
  result = OSObject::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    this[1].OSMetaClassBase::__vftable = v3;
    if (v3)
    {
      return 1;
    }

    else
    {
      IOLog("Failed to allocate AppleBCMWLANStopwatch_IVars\n");
      return 0;
    }
  }

  return result;
}

void AppleBCMWLANStopwatch::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    memset_s(v2, 0x10uLL, 0, 0x10uLL);
    v3 = this[1].OSMetaClassBase::__vftable;
    if (v3)
    {
      IOFree(v3, 0x10uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANStopwatch::start(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  if (v2[1])
  {
    mach_continuous_time();
    this = absolutetime_to_nanoseconds();
    **(v1 + 40) += 0xAAAAAAAAAAAAAAAALL - *(*(v1 + 40) + 8);
    *(*(v1 + 40) + 8) = 0;
  }

  else if (!*v2)
  {
    mach_continuous_time();

    return absolutetime_to_nanoseconds();
  }

  return this;
}

uint64_t AppleBCMWLANStopwatch::restart(AppleBCMWLANStopwatch *this)
{
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  *(*(this + 5) + 8) = 0;
  return result;
}

unint64_t AppleBCMWLANStopwatch::getSplit_us(AppleBCMWLANStopwatch *this)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  return (0xAAAAAAAAAAAAAAAALL - **(this + 5)) / 0x3E8;
}

OSObject *AppleBCMWLANScanAdapter::withDriverAndCallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANScanAdapterMetaClass, &v8))
  {
    return 0;
  }

  v6 = v8;
  if (v8 && ((v8->OSMetaClassBase::__vftable[1].getMetaClass)(v8, a1, a2, a3) & 1) == 0)
  {
    (v6->release)(v6);
    return 0;
  }

  return v6;
}

void AppleBCMWLANScanAdapter::free(void **this)
{
  if (this[6])
  {
    AppleBCMWLANScanAdapter::freeResources(this);
    memset_s(this[6], 0x9F0uLL, 0, 0x9F0uLL);
    v2 = this[6];
    if (v2)
    {
      IOFree(v2, 0x9F0uLL);
      this[6] = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANScanAdapter::freeResources(AppleBCMWLANScanAdapter *this)
{
  v2 = *(this + 6);
  v3 = v2[8];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 6) + 64) = 0;
    v2 = *(this + 6);
  }

  v4 = v2[9];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 6) + 72) = 0;
    v2 = *(this + 6);
  }

  result = v2[10];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 6) + 80) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::setScanHomeAwayTime(AppleBCMWLANScanAdapter *this, int a2)
{
  v11 = a2;
  v3 = *(this + 6);
  if (*(v3 + 72))
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *(this + 6);
    if (shouldLog)
    {
      CCLogStream::logNotice(*(v3 + 72), "[dk] %s@%d:Setting Scan Home away time to %u\n", "setScanHomeAwayTime", 121, a2);
      v3 = *(this + 6);
    }
  }

  v10[0] = this;
  v10[1] = AppleBCMWLANScanAdapter::setScanHomeAwayTimeCallback;
  v10[2] = 0;
  v6 = *(v3 + 64);
  v9[0] = &v11;
  v9[1] = 4;
  v7 = AppleBCMWLANCommander::sendIOVarSet(v6, "scan_home_away_time", v9, kNoRxExpected, v10, 0);
  if (v7 && *(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d: Error %d in setting home away time\n", "setScanHomeAwayTime", 128, v7);
  }

  return v7;
}

uint64_t AppleBCMWLANScanAdapter::setScanHomeAwayTimeCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANScanAdapter::setScanHomeAwayTimeCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::startScan(AppleBCMWLANScanAdapter *a1, uint64_t a2)
{
  v4 = a1 + 48;
  *(*v4 + 44) = AppleBCMWLANCore::getScanAlgorithm(*(*(a1 + 6) + 56));
  if (**v4)
  {
    return 3766617161;
  }

  started = 3758097109;
  if (AppleBCMWLANCore::getActionFrameProgress(*(*v4 + 56)))
  {
    if (*(*v4 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::startScan(v4);
    }
  }

  else
  {
    AppleBCMWLANScanAdapter::setScanHomeAwayTime(a1, *(a2 + 8));
    if (*(a2 + 4))
    {
      BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(*(*v4 + 56));
      AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(BGScanAdapter);
    }

    v7 = *v4;
    if (*(*v4 + 44) == 2)
    {
      started = AppleBCMWLANScanAdapter::startEventScan(a1, a2);
      v7 = *(a1 + 6);
    }

    else
    {
      started = 3758097090;
    }

    if (AppleBCMWLANCore::isConcurrencyEnabled(*(v7 + 56)) && AppleBCMWLANCore::isConcurrencyOpModeSet(*(*v4 + 56), 4))
    {
      AppleBCMWLANCore::setSoftAPPowerState(*(*v4 + 56), 1, 7);
    }
  }

  return started;
}

uint64_t AppleBCMWLANScanAdapter::startEventScan(AppleBCMWLANScanAdapter *a1, uint64_t a2)
{
  v5 = a1 + 48;
  v4 = *(a1 + 6);
  if (*(v4 + 72))
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(*(v4 + 72), 0x40uLL, "[dk] %s@%d:Starting Event scan, number of channels: %d\n", "startEventScan", 1055, *(a2 + 84));
      v4 = *v5;
    }
  }

  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(v4 + 56)) < 0x15 || AppleBCMWLANCore::is4399B0(*(*v5 + 56)))
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v5 + 56)) < 0x11)
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v5 + 56)) < 0xE)
      {
        bzero((*(a1 + 6) + 1312), 0x4D0uLL);
        *(*(a1 + 6) + 1312) = 1;
        *(*(a1 + 6) + 1316) = 1;
        v25 = *(a1 + 6);
        v26 = *(v25 + 40) + 1;
        *(v25 + 40) = v26;
        *(*(a1 + 6) + 1318) = v26;
        AppleBCMWLANScanAdapter::fillScanParams(a1, (*(a1 + 6) + 1320), a2);
        memcpy((*(a1 + 6) + 88), (*(a1 + 6) + 1320), 0x4C8uLL);
        v27 = *(a1 + 6);
        v28 = *(v27 + 64);
        v53 = v27 + 1312;
        v54 = 1232;
        v13 = AppleBCMWLANCommander::runIOVarSet(v28, "escan", &v53, 0, 0);
        if (!v13)
        {
          return v13;
        }

LABEL_60:
        if (*(*v5 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANScanAdapter::startEventScan(v5);
        }

        return v13;
      }

      v14 = IOMallocZeroData();
      if (v14)
      {
        v8 = v14;
        *v14 = 2;
        *(v14 + 4) = 1;
        v15 = *(a1 + 6);
        v16 = *(v15 + 40) + 1;
        *(v15 + 40) = v16;
        *(v14 + 6) = v16;
        v17 = AppleBCMWLANScanAdapter::fillScanParams2(a1, (v14 + 8), a2);
        v18 = *(a1 + 6);
        if (v17)
        {
          v13 = v17;
          if (*(v18 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANScanAdapter::startEventScan(v5);
          }

          goto LABEL_24;
        }

        v44 = *(v8 + 12);
        v45 = *(v8 + 28);
        *(v18 + 120) = *(v8 + 44);
        *(v18 + 104) = v45;
        *(v18 + 88) = v44;
        v46 = *v5;
        v47 = *(v8 + 48);
        *(v46 + 128) = *(v8 + 52);
        *(v46 + 124) = v47;
        *(*v5 + 130) = *(v8 + 54);
        *(*v5 + 131) = *(v8 + 56);
        *(*v5 + 132) = *(v8 + 60);
        *(*v5 + 136) = *(v8 + 64);
        *(*v5 + 140) = *(v8 + 68);
        *(*v5 + 144) = *(v8 + 72);
        *(*v5 + 148) = *(v8 + 76);
        memcpy((*v5 + 152), (v8 + 80), 0x320uLL);
        memcpy((*v5 + 952), (v8 + 880), 0x168uLL);
        *(*v5 + 48) = 0;
        v48 = *(*v5 + 56);
        if (v48)
        {
          if (AppleBCMWLANCore::checkForScanCoreSupport(v48))
          {
            if ((AppleBCMWLANCore::checkForLPSCDisable(*(*v5 + 56)) & 1) == 0)
            {
              v49 = AppleBCMWLANScanAdapter::resetSCChanimStats(a1);
              if (v49)
              {
                v50 = v49;
                if (*(*v5 + 72))
                {
                  if (CCLogStream::shouldLog())
                  {
                    CCLogStream::logAlert(*(*v5 + 72), "[dk] %s@%d: Error %d in resetting LP scan chanim stats\n", "startEventScan", 1238, v50);
                  }
                }
              }
            }
          }
        }

        goto LABEL_58;
      }

      v13 = 3758097085;
      if (*(*v5 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::startEventScan(v5);
      }
    }

    else
    {
      v7 = IOMallocZeroData();
      if (v7)
      {
        v8 = v7;
        *v7 = 3;
        *(v7 + 4) = 1;
        v9 = *(a1 + 6);
        v10 = *(v9 + 40) + 1;
        *(v9 + 40) = v10;
        *(v7 + 6) = v10;
        v11 = AppleBCMWLANScanAdapter::fillScanParams3(a1, (v7 + 8), a2);
        v12 = *(a1 + 6);
        if (v11)
        {
          v13 = v11;
          if (*(v12 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANScanAdapter::startEventScan(v5);
          }

LABEL_24:
          IOFreeData();
          return v13;
        }

        v29 = *(v8 + 12);
        v30 = *(v8 + 28);
        *(v12 + 120) = *(v8 + 44);
        *(v12 + 104) = v30;
        *(v12 + 88) = v29;
        v31 = *v5;
        v32 = *(v8 + 48);
        *(v31 + 128) = *(v8 + 52);
        *(v31 + 124) = v32;
        *(*v5 + 130) = *(v8 + 54);
        *(*v5 + 131) = *(v8 + 56);
        *(*v5 + 132) = *(v8 + 60);
        *(*v5 + 136) = *(v8 + 64);
        *(*v5 + 140) = *(v8 + 68);
        *(*v5 + 144) = *(v8 + 72);
        *(*v5 + 148) = *(v8 + 76);
        memcpy((*v5 + 152), (v8 + 80), 0x320uLL);
        memcpy((*v5 + 952), (v8 + 880), 0x168uLL);
        *(*v5 + 48) = 0;
        v33 = *(*v5 + 56);
        if (v33)
        {
          if (AppleBCMWLANCore::checkForScanCoreSupport(v33))
          {
            if ((AppleBCMWLANCore::checkForLPSCDisable(*(*v5 + 56)) & 1) == 0)
            {
              v34 = AppleBCMWLANScanAdapter::resetSCChanimStats(a1);
              if (v34)
              {
                v35 = v34;
                if (*(*v5 + 72))
                {
                  if (CCLogStream::shouldLog())
                  {
                    CCLogStream::logAlert(*(*v5 + 72), "[dk] %s@%d: Error %d in resetting LP scan chanim stats\n", "startEventScan", 1146, v35);
                  }
                }
              }
            }
          }
        }

LABEL_58:
        v51 = *(*v5 + 64);
        v53 = v8;
        v54 = 1240;
        v13 = AppleBCMWLANCommander::runIOVarSet(v51, "escan", &v53, 0, 0);
LABEL_59:
        IOFreeData();
        if (!v13)
        {
          return v13;
        }

        goto LABEL_60;
      }

      v13 = 3758097085;
      if (*(*v5 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::startEventScan(v5);
      }
    }
  }

  else
  {
    v19 = IOMallocZeroData();
    if (v19)
    {
      v20 = v19;
      *v19 = 4;
      *(v19 + 4) = 1;
      v21 = *(a1 + 6);
      v22 = *(v21 + 40) + 1;
      *(v21 + 40) = v22;
      *(v19 + 6) = v22;
      v23 = AppleBCMWLANScanAdapter::fillScanParams4(a1, (v19 + 8), a2);
      v24 = *(a1 + 6);
      if (v23)
      {
        v13 = v23;
        if (*(v24 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANScanAdapter::startEventScan(v5);
        }

        goto LABEL_24;
      }

      v36 = *(v20 + 12);
      v37 = *(v20 + 28);
      *(v24 + 120) = *(v20 + 44);
      *(v24 + 104) = v37;
      *(v24 + 88) = v36;
      v38 = *v5;
      v39 = *(v20 + 48);
      *(v38 + 128) = *(v20 + 52);
      *(v38 + 124) = v39;
      *(*v5 + 130) = *(v20 + 54);
      *(*v5 + 131) = *(v20 + 56);
      *(*v5 + 132) = *(v20 + 64);
      *(*v5 + 136) = *(v20 + 68);
      *(*v5 + 140) = *(v20 + 72);
      *(*v5 + 144) = *(v20 + 76);
      *(*v5 + 148) = *(v20 + 80);
      memcpy((*v5 + 152), (v20 + 84), 0x320uLL);
      memcpy((*v5 + 952), (v20 + 884), 0x168uLL);
      *(*v5 + 48) = 0;
      v40 = *(*v5 + 56);
      if (v40)
      {
        if (AppleBCMWLANCore::checkForScanCoreSupport(v40))
        {
          if ((AppleBCMWLANCore::checkForLPSCDisable(*(*v5 + 56)) & 1) == 0)
          {
            v41 = AppleBCMWLANScanAdapter::resetSCChanimStats(a1);
            if (v41)
            {
              v42 = v41;
              if (*(*v5 + 72))
              {
                if (CCLogStream::shouldLog())
                {
                  CCLogStream::logAlert(*(*v5 + 72), "[dk] %s@%d: Error %d in resetting LP scan chanim stats\n", "startEventScan", 1099, v42);
                }
              }
            }
          }
        }
      }

      v43 = *(*v5 + 64);
      v53 = v20;
      v54 = 1244;
      v13 = AppleBCMWLANCommander::runIOVarSet(v43, "escan", &v53, 0, 0);
      goto LABEL_59;
    }

    v13 = 3758097085;
    if (*(*v5 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::startEventScan(v5);
    }
  }

  return v13;
}

uint64_t AppleBCMWLANScanAdapter::eventRoamScanResult(AppleBCMWLANScanAdapter *this, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 56))
    {
      AppleBCMWLANScanAdapter::eventRoamScanResult(this);
    }

    else
    {
      v4 = (a2 + 20);
      if (*(a2 + 20) <= 0x8Fu)
      {
        AppleBCMWLANScanAdapter::eventRoamScanResult(this);
      }

      else
      {
        if (*(a2 + 58) != 1 && *(*(this + 6) + 72) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d:Error, BSS count is not 1: %d\n", "eventRoamScanResult", 210, *(a2 + 58));
        }

        v5 = *(a2 + 48);
        if (v5 >= 0x10000)
        {
          AppleBCMWLANScanAdapter::eventRoamScanResult(this);
        }

        else
        {
          v6 = *v4;
          if (v5 > v6)
          {
            AppleBCMWLANScanAdapter::eventRoamScanResult(this);
          }

          else if (v5 <= 0x8F)
          {
            AppleBCMWLANScanAdapter::eventRoamScanResult(this);
          }

          else
          {
            AppleBCMWLANScanAdapter::processScanResults(this, (a2 + 60), v6, *(a2 + 58), v5, 0xC9u);
          }
        }
      }
    }
  }

  else
  {
    AppleBCMWLANScanAdapter::eventRoamScanResult(this);
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::processScanResults(AppleBCMWLANScanAdapter *this, void *a2, unint64_t a3, unsigned int a4, size_t a5, unsigned int a6)
{
  v12 = IOMallocZeroData();
  if (!v12)
  {
    AppleBCMWLANScanAdapter::processScanResults();
  }

  v13 = v12;
  v14 = IOMallocZeroData();
  v15 = v14;
  if (a5 > 0x7B)
  {
    if (a3 <= 0x7B)
    {
      if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d: Not enough space in the data buffer(%lu) for bss_info(%u)\n", "processScanResults", 346, a3, 124);
      }

      v16 = 0;
      if (v15)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v14)
    {
      AppleBCMWLANScanAdapter::processScanResults(this, &v34);
      v16 = v34;
      goto LABEL_51;
    }

    memcpy(v14, a2, a5);
    if (!a4)
    {
      v32 = 0;
      v18 = 1;
      goto LABEL_46;
    }

    v17 = 0;
    v18 = 0;
    v19 = a5;
    v33 = v15;
    while (v19 > 0x7B)
    {
      if (v19 < *(v15 + 4))
      {
        if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d: i=%lu/%lu Not enough space remaining in the data buffer(%lu) for bss len=%lu \n");
        }

        goto LABEL_44;
      }

      v20 = *(v15 + 116);
      if ((v20 - 124) >= 0xFFFFFF85)
      {
        if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d: i=%lu/%lu ie_offset=%d is less than size of bss  struct=%u\n");
        }

        goto LABEL_44;
      }

      if (v19 >> 16 || (v21 = *(v15 + 120), v19 < v21) || v19 < (v21 + v20))
      {
        if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d: i=%lu/%lu Not enough space remaining in the data buffer(%lu) for ie_offset=%d + ie_len=%lu\n", "processScanResults");
        }

        goto LABEL_44;
      }

      v22 = *(*(this + 6) + 72);
      if (v22 && CCLogStream::shouldLog(v22, 0x40uLL))
      {
        v23 = *(v15 + 4);
        v34 = v15;
        v35 = v23;
        if (!v23)
        {
          v34 = 0;
          v35 = 0;
        }

        AppleBCMWLANScanAdapter::dumpScanResult(this, &v34);
      }

      ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(this + 6) + 56));
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(v15 + 72));
      v26 = *(v15 + 120);
      if (v26 >= 0x801)
      {
        v27 = *(this + 6);
        if (*(v27 + 72))
        {
          shouldLog = CCLogStream::shouldLog();
          v27 = *(this + 6);
          if (shouldLog)
          {
            CCLogStream::logAlert(*(v27 + 72), "[dk] %s@%d:Received IE length is greater than expected \n", "processScanResults", 385);
            v27 = *(this + 6);
          }
        }

        CCFaultReporter::reportFault(*(v27 + 80), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANScanAdapter.cpp", 0x182u, "processScanResults", 0, -528350132, "Larger than expected IE size %u", v26);
      }

      BeaconMsgFromWLBSSInfo = AppleBCMWLANBSSBeacon::getBeaconMsgFromWLBSSInfo(v13, v13 + 17, v15, AppleChannelSpec, v19);
      v30 = *(this + 6);
      if ((BeaconMsgFromWLBSSInfo & 1) == 0)
      {
        if (*(v30 + 72))
        {
          v32 = 1;
          v15 = v33;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANScanAdapter::processScanResults(this + 48);
          }

          goto LABEL_46;
        }

        v32 = 1;
LABEL_45:
        v15 = v33;
        goto LABEL_46;
      }

      AppleBCMWLANCore::postMessageInfra(*(v30 + 56), a6, v13, *v13 + 68);
      v19 -= *(v15 + 4);
      v15 += *(v15 + 4);
      v18 = ++v17 >= a4;
      if (a4 == v17)
      {
        v32 = 0;
        v18 = 1;
        goto LABEL_45;
      }
    }

    if (!*(*(this + 6) + 72))
    {
LABEL_44:
      v32 = 0;
      goto LABEL_45;
    }

    v15 = v33;
    if (CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d: i=%lu/%lu Not enough space remaining in the data buffer(%lu) for bss -> struct=%u \n", "processScanResults", 359, v17, a4, v19, 124);
    }

    v32 = 0;
LABEL_46:
    if ((v18 | v32))
    {
      v16 = 0;
    }

    else
    {
      v16 = 3758097084;
    }
  }

  else
  {
    v16 = 3758097084;
    if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d: Not enough space in the data buffer(%lu) for bss_info(%u)\n", "processScanResults", 341, a5, 124);
      if (!v15)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }
  }

  if (v15)
  {
LABEL_50:
    IOFreeData();
  }

LABEL_51:
  IOFreeData();
  return v16;
}

uint64_t AppleBCMWLANScanAdapter::eventScanComplete(AppleBCMWLANScanAdapter *this, uint64_t a2)
{
  if (!a2)
  {
    AppleBCMWLANScanAdapter::eventScanComplete(this, &v13);
    return v13;
  }

  v4 = *(a2 + 8);
  if (v4 != 8)
  {
    v13 = mapBcmStatusToApple80211IOReturnScan(v4);
    AppleBCMWLANCore::postMessageInfra(*(*(this + 6) + 56), 0xEDu, &v13, 4uLL);
    return 0;
  }

  v5 = (a2 + 20);
  if (*(a2 + 20) <= 0x8Fu)
  {
    AppleBCMWLANScanAdapter::eventScanComplete(this, a2 + 20, &v13);
    return v13;
  }

  v7 = this + 48;
  v6 = *(this + 6);
  if (*(a2 + 56) != *(v6 + 40) && *(v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::eventScanComplete(this + 48);
  }

  if (*(a2 + 58) != 1 && *(*v7 + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*v7 + 72), "[dk] %s@%d:Error, BSS count is not 1: %d\n", "eventScanComplete", 276, *(a2 + 58));
  }

  v8 = *(a2 + 48);
  if (v8 >= 0x10000)
  {
    AppleBCMWLANScanAdapter::eventScanComplete(this + 48, a2 + 48, &v13);
    return v13;
  }

  v9 = *v5;
  if (v8 > v9)
  {
    result = *(*v7 + 72);
    if (!result)
    {
      return result;
    }

    v12 = *(a2 + 48);
    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    CCLogStream::logAlert(*(*v7 + 72), "[dk] %s@%d: Not enough space datalen(%lu) for bss_info(%u), buflen(%u) offset(%lu)\n", "eventScanComplete", 312, *v5, v12, *(a2 + 48), 12);
    return 0;
  }

  if (v8 <= 0x8F)
  {
    AppleBCMWLANScanAdapter::eventScanComplete(this + 6, a2 + 48, &v13);
    return v13;
  }

  v10 = *(a2 + 58);

  return AppleBCMWLANScanAdapter::processScanResults(this, (a2 + 60), v9, v10, v8, 0xC9u);
}

uint64_t AppleBCMWLANScanAdapter::dumpScanResult(AppleBCMWLANScanAdapter *this, const IO80211BufferCursor *a2)
{
  v4 = (a2 + 8);
  v3 = *(a2 + 1);
  if (v3 < 0x84)
  {
    return AppleBCMWLANScanAdapter::dumpScanResult(this);
  }

  v6 = *a2;
  if (!*a2)
  {
    return AppleBCMWLANScanAdapter::dumpScanResult(this);
  }

  v7 = *(v6 + 120);
  if (v3 < v7 || v3 < v7 + *(v6 + 116))
  {
    result = *(*(this + 6) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d: Not enough cursor size in the data buffer(%zu) for ie_offset=%u + ie_len=%u\n", "dumpScanResult", 421, *v4, *(v6 + 116), *(v6 + 120));
      }
    }

    return result;
  }

  v9 = IOMallocZeroData();
  v10 = v9;
  if (!v9 || (*v9 = 0, LODWORD(v9) = snprintf(v9, 0x800uLL, "BSSID: %02x:%02x:%02x:%02x:%02x:%02x SSID[%d]:", *(v6 + 8), *(v6 + 9), *(v6 + 10), *(v6 + 11), *(v6 + 12), *(v6 + 13), *(v6 + 18)), v11 = 2048, v9 <= 0x7FF))
  {
    v11 = v9;
  }

  v32 = this;
  if (*(v6 + 18))
  {
    v12 = 0;
    while (1)
    {
      if (v10)
      {
        v13 = v11 > 0x7FE;
      }

      else
      {
        v13 = 1;
      }

      v14 = v13;
      if (*(v6 + 19 + v12) - 127 >= 0xFFFFFFA1)
      {
        if ((v14 & 1) == 0)
        {
          v15 = 2048;
          v16 = snprintf(&v10[v11], 2048 - v11, "%c");
LABEL_26:
          if (v16 > 0x7FF)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      else if ((v14 & 1) == 0)
      {
        v15 = 2048;
        v16 = snprintf(&v10[v11], 2048 - v11, "\\%03d");
        goto LABEL_26;
      }

      v16 = 0;
LABEL_27:
      v15 = v16;
LABEL_28:
      v11 += v15;
      if (v12 <= 0x1E && ++v12 < *(v6 + 18))
      {
        continue;
      }

      break;
    }
  }

  v17 = this + 48;
  ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(this + 6) + 56));
  AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(v6 + 72));
  v20 = 0;
  if (!v10 || v11 > 0x7FE || (v21 = 2048, v20 = snprintf(&v10[v11], 2048 - v11, "    Channel: %d RSSI: %d raw RSSI: %d flag: %x ", AppleChannelSpec, *(v6 + 78), *(v6 + 78), *(v6 + 96)), v20 <= 0x7FF))
  {
    v21 = v20;
  }

  result = 0;
  v22 = v21 + v11;
  if (!v10 || v22 > 0x7FE || ((v23 = 2048, *(v6 + 81)) ? (v24 = "N cap, ") : (v24 = ""), result = snprintf(&v10[v22], 2048 - v22, "capability: %04x beacon_period: %d dtim period: %d %s", *(v6 + 16), *(v6 + 14), *(v6 + 76), v24), result <= 0x7FF))
  {
    v23 = result;
  }

  if (v10 && v23 + v22 <= 0x7FE)
  {
    result = snprintf(&v10[v23 + v22], 2048 - (v23 + v22), "N BSS cap: %08x N ctrl chan: %d\n", *(v6 + 84), *(v6 + 88));
  }

  if (v10)
  {
    result = *(*v17 + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = CCLogStream::log(*(*v17 + 72), 4, "%s", v10);
      }
    }

    *v10 = 0;
  }

  v25 = *(v6 + 116);
  v26 = *(v6 + 120);
  if (v26 + v25 <= *v4)
  {
    v27 = *a2;
    v28 = *a2 + v25;
    v33 = v28;
    v34 = v26;
    if (v26)
    {
      if (v27)
      {
        result = *(*v17 + 72);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            result = AppleBCMWLANScanAdapter::parseIE(v32, &v33);
            if (v34)
            {
              v29 = 0;
              v30 = 0;
              do
              {
                result = 0;
                if (!v10 || v30 > 0x7FE || (v31 = 2048, result = snprintf(&v10[v30], 2048 - v30, "%02x ", *(v28 + v29)), result <= 0x7FF))
                {
                  v31 = result;
                }

                v30 += v31;
                ++v29;
              }

              while (v29 < v34);
              if (!v10)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v30 = 0;
              if (!v10)
              {
LABEL_67:
                if (!v10)
                {
                  return result;
                }

                result = AppleBCMWLANScanAdapter::dumpScanResult(v17, v10);
                goto LABEL_69;
              }
            }

            if (v30 <= 0x7FE)
            {
              result = snprintf(&v10[v30], 2048 - v30, "\n");
            }

            goto LABEL_67;
          }
        }
      }
    }
  }

LABEL_69:
  if (v10)
  {
    return IOFreeData();
  }

  return result;
}

uint64_t *AppleBCMWLANScanAdapter::parseIE(AppleBCMWLANScanAdapter *this, const IO80211BufferCursor *a2)
{
  result = *(*(this + 6) + 72);
  if (result)
  {
    result = CCLogStream::shouldLog();
    v4 = !result || *a2 == 0;
    if (!v4 && *(a2 + 1) != 0)
    {
      result = IO80211BufferCursor::_crop(&v9, a2, 0, -1);
      v7 = v9;
      v8 = v10;
      v10 = v9;
      v11 = v8;
      if (v9)
      {
        if (v8 >= 2)
        {
          do
          {
            if (*(v7 + 1) + 2 > v8)
            {
              break;
            }

            if (v7 + 2 < v7)
            {
              AppleBCMWLANProximityInterface::handleEvent(result, v6);
            }

            result = IO80211TLVIterator<IO80211TLVHeader<unsigned char,unsigned char,0ul,1ul,0ul>>::operator++(&v9);
            v7 = v10;
            if (!v10)
            {
              break;
            }

            v8 = v11;
          }

          while (v11 > 1);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::abortEventScan(AppleBCMWLANScanAdapter *this)
{
  v2 = this + 48;
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 6) + 56)) < 0x15 || AppleBCMWLANCore::is4399B0(*(*v2 + 56)))
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v2 + 56)) < 0x11)
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v2 + 56)) < 0xE)
      {
        bzero((*v2 + 1312), 0x4D0uLL);
        *(*v2 + 1312) = 1;
        *(*v2 + 1316) = 3;
        v19 = *(*v2 + 40) + 1;
        *(*v2 + 40) = v19;
        *(*v2 + 1318) = v19;
        v20 = *v2;
        if (*(*v2 + 72))
        {
          shouldLog = CCLogStream::shouldLog();
          v20 = *v2;
          if (shouldLog)
          {
            CCLogStream::logNotice(*(v20 + 72), "[dk] %s@%d:Event scan is in progress, aborting...\n", "abortEventScan", 586);
            v20 = *v2;
          }
        }

        v26 = this;
        v27 = AppleBCMWLANScanAdapter::handleEScanAbortResults;
        v28 = 0;
        v22 = *(v20 + 64);
        v24 = v20 + 1312;
        v25 = 1232;
        v12 = AppleBCMWLANCommander::sendIOVarSet(v22, "escan", &v24, kNoRxExpected, &v26, 0);
        if (v12)
        {
LABEL_24:
          if (*(*v2 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANScanAdapter::abortEventScan(v2);
          }
        }
      }

      else
      {
        v8 = IOMallocZeroData();
        if (v8)
        {
          v4 = v8;
          *v8 = 2;
          *(v8 + 4) = 3;
          v9 = *(*v2 + 40) + 1;
          *(*v2 + 40) = v9;
          *(v8 + 6) = v9;
          v6 = *v2;
          if (!*(*v2 + 72))
          {
            goto LABEL_12;
          }

          v10 = CCLogStream::shouldLog();
          v6 = *v2;
          if (!v10)
          {
            goto LABEL_12;
          }

          CCLogStream::logNotice(*(v6 + 72), "[dk] %s@%d:Event scan V2 is in progress, aborting...\n");
          goto LABEL_38;
        }

        v12 = 3758097085;
        if (*(*v2 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANScanAdapter::abortEventScan(v2);
        }
      }
    }

    else
    {
      v3 = IOMallocZeroData();
      if (v3)
      {
        v4 = v3;
        *v3 = 3;
        *(v3 + 4) = 3;
        v5 = *(*v2 + 40) + 1;
        *(*v2 + 40) = v5;
        *(v3 + 6) = v5;
        v6 = *v2;
        if (!*(*v2 + 72))
        {
          goto LABEL_12;
        }

        v7 = CCLogStream::shouldLog();
        v6 = *v2;
        if (!v7)
        {
          goto LABEL_12;
        }

        CCLogStream::logNotice(*(v6 + 72), "[dk] %s@%d:Event scan V3 is in progress, aborting...\n");
LABEL_38:
        v6 = *v2;
LABEL_12:
        v26 = this;
        v27 = AppleBCMWLANScanAdapter::handleEScanAbortResults;
        v28 = 0;
        v11 = *(v6 + 64);
        v24 = v4;
        v25 = 1240;
        v12 = AppleBCMWLANCommander::sendIOVarSet(v11, "escan", &v24, kNoRxExpected, &v26, 0);
        goto LABEL_18;
      }

      v12 = 3758097085;
      if (*(*v2 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::abortEventScan(v2);
      }
    }
  }

  else
  {
    v13 = IOMallocZeroData();
    if (v13)
    {
      v14 = v13;
      *v13 = 4;
      *(v13 + 4) = 3;
      v15 = *(*v2 + 40) + 1;
      *(*v2 + 40) = v15;
      *(v13 + 6) = v15;
      v16 = *v2;
      if (*(*v2 + 72))
      {
        v17 = CCLogStream::shouldLog();
        v16 = *v2;
        if (v17)
        {
          CCLogStream::logNotice(*(v16 + 72), "[dk] %s@%d:Event scan V4 is in progress, aborting...\n", "abortEventScan", 516);
          v16 = *v2;
        }
      }

      v26 = this;
      v27 = AppleBCMWLANScanAdapter::handleEScanAbortResults;
      v28 = 0;
      v18 = *(v16 + 64);
      v24 = v14;
      v25 = 1244;
      v12 = AppleBCMWLANCommander::sendIOVarSet(v18, "escan", &v24, kNoRxExpected, &v26, 0);
LABEL_18:
      IOFreeData();
      if (!v12)
      {
        return v12;
      }

      goto LABEL_24;
    }

    v12 = 3758097085;
    if (*(*v2 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::abortEventScan(v2);
    }
  }

  return v12;
}

uint64_t AppleBCMWLANScanAdapter::handleEScanAbortResults(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 48;
  result = *(*(a1 + 48) + 72);
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANScanAdapter::handleEScanAbortResults(v3);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANScanAdapter::handleEScanAbortResults(v3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::setSCTxBlankStatus(uint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(v2 + 48);
  if ((v3 & a2) != 0xFFFFFFFF)
  {
    *(v2 + 48) = v3 | a2;
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::getSCTxBlankStatus(AppleBCMWLANScanAdapter *this)
{
  v1 = *(*(this + 6) + 48);
  if ((v1 & 2) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if ((v1 & 4) != 0)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(AppleBCMWLANScanAdapter *a1, const void *a2, size_t a3)
{
  if (!IOMallocZeroData())
  {
    AppleBCMWLANScanAdapter::processAndSendWLBSSInfo();
  }

  v6 = IOMallocZeroData();
  v7 = a1 + 48;
  if (!*(*(a1 + 6) + 72) || !CCLogStream::shouldLog())
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_33:
    AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(a1 + 48);
    v13 = v15;
    goto LABEL_21;
  }

  AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(a1 + 48);
  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_5:
  if (!a2)
  {
    AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(a1 + 48);
LABEL_31:
    v13 = v15;
    goto LABEL_20;
  }

  if (a3 <= 3)
  {
    AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(a1 + 48);
    goto LABEL_31;
  }

  memcpy(v6, a2, a3);
  if (*(v6 + 4) > a3)
  {
    v13 = 3758097084;
    if (*(*v7 + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*v7 + 72), "[dk] %s@%d: Can't add beacon, buffer(%lu) does not have enough space for bss(%lu)\n");
    }

    goto LABEL_20;
  }

  if (a3 >> 16 || *(v6 + 120) + *(v6 + 116) > a3)
  {
    v13 = 3758097084;
    if (*(*v7 + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*v7 + 72), "[dk] %s@%d: Not enough space remaining in the data buffer(%lu) for ie_offset=%d + ie_len=%lu\n");
    }

    goto LABEL_20;
  }

  v8 = *v7;
  v9 = *(*v7 + 72);
  if (v9)
  {
    shouldLog = CCLogStream::shouldLog(v9, 0x8000uLL);
    v8 = *v7;
    if (shouldLog)
    {
      if (*(v8 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(a1 + 48);
      }

      v11 = *(v6 + 4);
      v15 = v6;
      v16 = v11;
      if (!v11)
      {
        v15 = 0;
        v16 = 0;
      }

      AppleBCMWLANScanAdapter::dumpScanResult(a1, &v15);
      v8 = *(a1 + 6);
    }
  }

  ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(v8 + 56));
  AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(v6 + 72));
  if (!(*(v6 + 8) | *(v6 + 12)))
  {
    AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(a1 + 48);
    goto LABEL_31;
  }

  v13 = AppleBCMWLANScanAdapter::processScanResults(a1, v6, a3, 1u, *(v6 + 4), 0xC9u);
LABEL_20:
  IOFreeData();
LABEL_21:
  IOFreeData();
  return v13;
}

uint64_t AppleBCMWLANScanAdapter::handleGetSCChanQualAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (a3)
  {
    v5 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANScanAdapter::handleGetSCChanQualAsyncCallback(v5);
      }
    }
  }

  else
  {
    v6 = *a4;
    if (*a4)
    {
      if ((*v6 & 0xFFFFFFFC) == 4)
      {
        v7 = *(v6 + 10);
        if (*(v6 + 8) == 1 && v7 > 1)
        {
          result = *(*(result + 48) + 72);
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              return CCLogStream::logAlert(*(*(v4 + 48) + 72), "[dk] %s@%d:LPSC: Invalid chanim_stats channel count, expect 1, output %d\n", "handleGetSCChanQualAsyncCallback", 723, *(v6 + 10));
            }
          }
        }

        else if (*(v6 + 10))
        {
          LOBYTE(v9) = 0;
          v10 = 1;
          do
          {
            v11 = v6 + 12 + 60 * v10;
            if (v10 != v7 || (*(v11 - 56) & 1) != 0)
            {
              ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(v4 + 48) + 56));
              AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(v11 - 56));
              PrimaryChannel = ChanSpecGetPrimaryChannel();
              v14 = PrimaryChannel;
              v15 = *(v11 - 60);
              if (v15)
              {
                v16 = v15;
                if (PrimaryChannel > 0x23)
                {
                  v9 = ((*(v11 - 40) / v16) * 100.0);
                  v18 = v9 > 0x19;
                  v19 = v9 <= 0x19 ? "No" : "Yes";
                  v20 = "MC Tx";
                }

                else
                {
                  v17 = (((50 * *(v11 - 32)) / 100.0) + ((*(v11 - 36) / v16) * 100.0));
                  LOBYTE(v9) = v17 >= 0x64 ? 100 : ((50 * *(v11 - 32)) / 100.0) + ((*(v11 - 36) / v16) * 100.0);
                  v18 = v17 > 0x19;
                  v19 = v17 <= 0x19 ? "No" : "Yes";
                  v20 = "AC/BT Tx";
                }

                v21 = v18 ? v20 : "N/A";
              }

              else
              {
                v19 = "No";
                v21 = "N/A";
              }

              result = AppleBCMWLANCore::isLPSCDebugEnabled(*(*(v4 + 48) + 56));
              if (result)
              {
                v22 = *(v4 + 48);
                if (*(v22 + 72))
                {
                  shouldLog = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (shouldLog)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:|| [Channel: %-3d] ===========================================================================\n", "handleGetSCChanQualAsyncCallback", 762, v14);
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v24 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v24)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:|| [Summary] --------------------------------------------------------------------------------\n", "handleGetSCChanQualAsyncCallback", 763);
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v25 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v25)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Tx Blanking                                    |                       | %-12s ||\n", "handleGetSCChanQualAsyncCallback", 764, v19);
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v26 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v26)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Tx Blanking Reason                             |                       | %-12s ||\n", "handleGetSCChanQualAsyncCallback", 765, v21);
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v27 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v27)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Tx Blanking Thresh Perc                        |                       | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 766, 25);
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v28 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v28)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Tx Blanking Perc                               |                       | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 767, v9);
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v29 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v29)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Duration on SC                                 | sc_only_rx_dur        | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 768, *(v11 - 52));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v30 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v30)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Duration total                                 | time_dur              | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 769, *(v11 - 60));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v31 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v31)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Timestamp                                      | timestamp             | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 770, *(v11 - 4));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v32 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v32)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:|| [Details] --------------------------------------------------------------------------------\n", "handleGetSCChanQualAsyncCallback", 771);
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v33 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v33)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Rx only on SC                                  | sc_only_rx_dur        | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 772, *(v11 - 52));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v34 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v34)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Rx on SC when MC active                        | sc_rx_mc_rx_dur       | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 773, *(v11 - 48));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v35 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v35)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Rx on SC when AC active                        | sc_rx_ac_rx_dur       | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 774, *(v11 - 44));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v36 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v36)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Rx on SC when BT Main active                   | sc_rx_bt_rx_dur       | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 775, *(v11 - 32));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v37 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v37)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Rx on SC when MC Tx                            | sc_rx_mc_tx_dur       | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 776, *(v11 - 40));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v38 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v38)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   Rx on SC when AC-BT Tx                         | sc_rx_ac_bt_tx_dur    | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 777, *(v11 - 36));
                    v22 = *(v4 + 48);
                  }
                }

                if ((*v6 - 5) <= 1)
                {
                  if (*(v22 + 72))
                  {
                    v39 = CCLogStream::shouldLog();
                    v22 = *(v4 + 48);
                    if (v39)
                    {
                      CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   BT Rx transitions                              | sc_btrx_trans_cnt     | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 779, *(v11 - 54));
                      v22 = *(v4 + 48);
                    }
                  }
                }

                if (*(v22 + 72))
                {
                  v40 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v40)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   WLAN SC awake and BT SC LE scan overlapped     | sc_btle_overlap_dur   | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 780, *(v11 - 28));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v41 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v41)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   WLAN SC awake and BT SC Page scan overlapped   | sc_btpage_overlap_dur | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 781, *(v11 - 24));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v42 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v42)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   WLAN Aux Tx blanked BT SC LE scan              | ac_btle_blnk_dur      | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 782, *(v11 - 20));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v43 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v43)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   WLAN Aux Tx blanked BT SC Page scan            | ac_btpage_blnk_dur    | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 783, *(v11 - 16));
                    v22 = *(v4 + 48);
                  }
                }

                if (*(v22 + 72))
                {
                  v44 = CCLogStream::shouldLog();
                  v22 = *(v4 + 48);
                  if (v44)
                  {
                    CCLogStream::logInfo(*(v22 + 72), "[dk] %s@%d:||   WLAN Aux awake and BT SC LE scan overlapped    | ac_btle_overlap_dur   | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 784, *(v6 + 60 * v10));
                    v22 = *(v4 + 48);
                  }
                }

                result = *(v22 + 72);
                if (result)
                {
                  result = CCLogStream::shouldLog();
                  if (result)
                  {
                    result = CCLogStream::logInfo(*(*(v4 + 48) + 72), "[dk] %s@%d:||   WLAN Aux awake and BT SC Page scan overlapped  | ac_btpage_overlap_dur | %-12u ||\n", "handleGetSCChanQualAsyncCallback", 785, *(v11 - 8));
                  }
                }
              }
            }

            ++v10;
            v7 = *(v6 + 10);
          }

          while (v7 >= v10);
        }
      }

      else
      {
        v46 = result + 48;
        result = *(*(result + 48) + 72);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANScanAdapter::handleGetSCChanQualAsyncCallback(v46);
          }
        }
      }
    }

    else
    {
      v45 = result + 48;
      result = *(*(result + 48) + 72);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANScanAdapter::handleGetSCChanQualAsyncCallback(v45);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::getSCChanQual(uint64_t a1, int a2)
{
  v4 = a1 + 48;
  if (AppleBCMWLANCore::checkForScanCoreSupport(*(*(a1 + 48) + 56)))
  {
    v5 = 3758097084;
    if (a2 == 1)
    {
      v6 = 72;
    }

    else
    {
      v6 = 1812;
    }

    v7 = IOMallocZeroData();
    if (v7)
    {
      v8 = v7;
      *(v7 + 4) = v6;
      *(v7 + 8) = a2;
      v54[0] = v7;
      v54[1] = v6;
      v53[0] = v7;
      v53[1] = v6 & 0xFFFFF800FFFFFFFFLL | ((((v6 << 16) >> 16) & 0x7FF) << 32);
      v9 = (*(**(*v4 + 56) + 88))(*(*v4 + 56));
      if ((*(*v9 + 136))(v9))
      {
        *&v51 = a1;
        *(&v51 + 1) = AppleBCMWLANScanAdapter::handleGetSCChanQualAsyncCallback;
        v52 = 0;
        v10 = *(*(a1 + 48) + 64);
        v50 = v6 << 16;
        v11 = AppleBCMWLANCommander::sendIOVarGet(v10, "sc:chanim_stats", v54, &v50, &v51, 0);
        if (v11)
        {
          v12 = v11;
          if (*(*v4 + 72))
          {
            if (CCLogStream::shouldLog())
            {
              CCLogStream::logAlert(*(*v4 + 72), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getSCChanQual", 836, v12);
            }
          }
        }
      }

      else
      {
        v13 = AppleBCMWLANCommander::runIOVarGet(*(*v4 + 64), "sc:chanim_stats", v54, v53, 0);
        if (v13)
        {
          v5 = v13;
          if (*(*v4 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANScanAdapter::getSCChanQual(v4);
          }

          goto LABEL_30;
        }

        if ((*v8 & 0xFFFFFFFC) != 4)
        {
          if (*(*v4 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANScanAdapter::getSCChanQual(v4);
          }

          goto LABEL_30;
        }

        if (*(v8 + 8) == 1 && *(v8 + 10) > 1u)
        {
          if (*(*v4 + 72) && CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(*(*v4 + 72), "[dk] %s@%d:LPSC: Invalid chanim_stats channel count, expect 1, output %d\n", "getSCChanQual", 852, *(v8 + 10));
          }

          goto LABEL_30;
        }

        if (*(v8 + 10))
        {
          LOBYTE(v15) = 0;
          v16 = 1;
          do
          {
            v17 = v8 - 48 + 60 * v16;
            ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*v4 + 56));
            AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(v17 + 4));
            PrimaryChannel = ChanSpecGetPrimaryChannel();
            v20 = PrimaryChannel;
            if (*v17)
            {
              v21 = *v17;
              if (PrimaryChannel > 0x23)
              {
                v15 = ((*(v17 + 20) / v21) * 100.0);
                v23 = v15 > 0x19;
                if (v15 <= 0x19)
                {
                  v24 = "No";
                }

                else
                {
                  v24 = "Yes";
                }

                v25 = "MC Tx";
              }

              else
              {
                v22 = (((50 * *(v17 + 28)) / 100.0) + ((*(v17 + 24) / v21) * 100.0));
                if (v22 >= 0x64)
                {
                  LOBYTE(v15) = 100;
                }

                else
                {
                  LOBYTE(v15) = ((50 * *(v17 + 28)) / 100.0) + ((*(v17 + 24) / v21) * 100.0);
                }

                v23 = v22 > 0x19;
                if (v22 <= 0x19)
                {
                  v24 = "No";
                }

                else
                {
                  v24 = "Yes";
                }

                v25 = "AC/BT Tx";
              }

              if (v23)
              {
                v26 = v25;
              }

              else
              {
                v26 = "N/A";
              }
            }

            else
            {
              v24 = "No";
              v26 = "N/A";
            }

            if (AppleBCMWLANCore::isLPSCDebugEnabled(*(*v4 + 56)))
            {
              v27 = *v4;
              if (*(*v4 + 72))
              {
                shouldLog = CCLogStream::shouldLog();
                v27 = *v4;
                if (shouldLog)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:|| [Channel: %-3d] ===========================================================================\n", "getSCChanQual", 888, v20);
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v29 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v29)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:|| [Summary] --------------------------------------------------------------------------------\n", "getSCChanQual", 889);
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v30 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v30)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Tx Blanking                                    |                       | %-12s ||\n", "getSCChanQual", 890, v24);
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v31 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v31)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Tx Blanking Reason                             |                       | %-12s ||\n", "getSCChanQual", 891, v26);
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v32 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v32)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Tx Blanking Thresh Perc                        |                       | %-12u ||\n", "getSCChanQual", 892, 25);
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v33 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v33)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Tx Blanking Perc                               |                       | %-12u ||\n", "getSCChanQual", 893, v15);
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v34 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v34)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Duration on SC                                 | sc_only_rx_dur        | %-12u ||\n", "getSCChanQual", 894, *(v17 + 8));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v35 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v35)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Duration total                                 | time_dur              | %-12u ||\n", "getSCChanQual", 895, *v17);
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v36 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v36)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Timestamp                                      | timestamp             | %-12u ||\n", "getSCChanQual", 896, *(v17 + 56));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v37 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v37)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:|| [Details] --------------------------------------------------------------------------------\n", "getSCChanQual", 897);
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v38 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v38)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Rx only on SC                                  | sc_only_rx_dur        | %-12u ||\n", "getSCChanQual", 898, *(v17 + 8));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v39 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v39)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Rx on SC when MC active                        | sc_rx_mc_rx_dur       | %-12u ||\n", "getSCChanQual", 899, *(v17 + 12));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v40 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v40)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Rx on SC when AC active                        | sc_rx_ac_rx_dur       | %-12u ||\n", "getSCChanQual", 900, *(v17 + 16));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v41 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v41)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Rx on SC when BT Main active                   | sc_rx_bt_rx_dur       | %-12u ||\n", "getSCChanQual", 901, *(v17 + 28));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v42 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v42)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Rx on SC when MC Tx                            | sc_rx_mc_tx_dur       | %-12u ||\n", "getSCChanQual", 902, *(v17 + 20));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v43 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v43)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   Rx on SC when AC-BT Tx                         | sc_rx_ac_bt_tx_dur    | %-12u ||\n", "getSCChanQual", 903, *(v17 + 24));
                  v27 = *v4;
                }
              }

              if ((*v8 - 5) <= 1)
              {
                if (*(v27 + 72))
                {
                  v44 = CCLogStream::shouldLog();
                  v27 = *v4;
                  if (v44)
                  {
                    CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   BT Rx transitions                              | sc_btrx_trans_cnt     | %-12u ||\n", "getSCChanQual", 905, *(v17 + 6));
                    v27 = *v4;
                  }
                }
              }

              if (*(v27 + 72))
              {
                v45 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v45)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   WLAN SC awake and BT SC LE scan overlapped     | sc_btle_overlap_dur   | %-12u ||\n", "getSCChanQual", 906, *(v17 + 32));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v46 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v46)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   WLAN SC awake and BT SC Page scan overlapped   | sc_btpage_overlap_dur | %-12u ||\n", "getSCChanQual", 907, *(v17 + 36));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v47 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v47)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   WLAN Aux Tx blanked BT SC LE scan              | ac_btle_blnk_dur      | %-12u ||\n", "getSCChanQual", 908, *(v17 + 40));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v48 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v48)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   WLAN Aux Tx blanked BT SC Page scan            | ac_btpage_blnk_dur    | %-12u ||\n", "getSCChanQual", 909, *(v17 + 44));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72))
              {
                v49 = CCLogStream::shouldLog();
                v27 = *v4;
                if (v49)
                {
                  CCLogStream::logInfo(*(v27 + 72), "[dk] %s@%d:||   WLAN Aux awake and BT SC LE scan overlapped    | ac_btle_overlap_dur   | %-12u ||\n", "getSCChanQual", 910, *(v8 + 60 * v16));
                  v27 = *v4;
                }
              }

              if (*(v27 + 72) && CCLogStream::shouldLog())
              {
                CCLogStream::logInfo(*(*v4 + 72), "[dk] %s@%d:||   WLAN Aux awake and BT SC Page scan overlapped  | ac_btpage_overlap_dur | %-12u ||\n", "getSCChanQual", 911, *(v17 + 52));
              }
            }

            v5 = 0;
            ++v16;
          }

          while (*(v8 + 10) >= v16);
          goto LABEL_30;
        }
      }

      v5 = 0;
LABEL_30:
      IOFreeData();
      return v5;
    }

    return 3758097085;
  }

  else
  {
    if (*(*v4 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::getSCChanQual(v4);
    }

    return 0;
  }
}

uint64_t AppleBCMWLANScanAdapter::initWithDriverAndCallBack(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = OSObject::init(a1);
  result = 0;
  if (a2)
  {
    if (v4)
    {
      result = IOMallocZeroTyped();
      *(a1 + 48) = result;
      v6 = a1 + 48;
      if (result)
      {
        *(result + 56) = a2;
        *(*v6 + 72) = (*(*a2 + 1952))(a2);
        v7 = *(*v6 + 72);
        if (v7)
        {
          (*(*v7 + 8))(v7);
          *(*v6 + 64) = AppleBCMWLANCore::getCommander(a2);
          v8 = *(*v6 + 64);
          if (v8)
          {
            (*(*v8 + 8))(v8);
            *(*(a1 + 48) + 48) = 0;
            *(*(a1 + 48) + 80) = AppleBCMWLANCore::getFaultReporter(*(*(a1 + 48) + 56));
            (*(**(*(a1 + 48) + 80) + 8))(*(*(a1 + 48) + 80));
            getClassNameHelper(a1);
            CCFaultReporter::registerCallbacks();
            return 1;
          }

          if (*(*v6 + 72))
          {
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANScanAdapter::initWithDriverAndCallBack(a1 + 48);
            }
          }
        }

        else
        {
          ClassNameHelper = getClassNameHelper(a1);
          IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithDriverAndCallBack");
        }

        AppleBCMWLANScanAdapter::freeResources(a1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::collectImmediateFaultDataCallback(AppleBCMWLANScanAdapter *this, CCFaultReport *a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    AppleBCMWLANScanAdapter::logState(this, v4, 0, 0xFFFu);
    v6 = OSString::withCString("ScanManagerState.txt");
    v7 = OSString::withCString(v5);
    (*(*a2 + 192))(a2, v6, v7);
    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::induceFaultCallback(AppleBCMWLANScanAdapter *this, int a2, const char *a3)
{
  if (a2 == -469793274)
  {
    v3 = this + 48;
    if (*(*(this + 6) + 72))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::induceFaultCallback(v3);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams4(AppleBCMWLANScanAdapter *a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x4D4uLL);
  v6 = a1 + 48;
  AppleBCMWLANCore::setTxBlankingHappened(*(*(a1 + 6) + 56), 0);
  *a2 = 4980740;
  v7 = *(a3 + 28);
  if (v7 && !*(a3 + 4888))
  {
    if (*(a3 + 5452))
    {
      a2[47] |= 1u;
      *(a2 + 1) = 4;
      *(a2 + 2) = *(a3 + 5452);
      v13 = *(*v6 + 72);
      if (v13 && CCLogStream::shouldLog(v13, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
      }
    }

    else
    {
      if (v7 >= 0x20)
      {
        v45 = 32;
      }

      else
      {
        v45 = v7;
      }

      *(a2 + 1) = v45;
      memcpy(a2 + 8, (a3 + 32), v45);
      v46 = *(*v6 + 72);
      if (v46 && CCLogStream::shouldLog(v46, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*v6 + 72), 0x40uLL, "[dk] %s@%d: This is a directed scan for SSID: %s\n", "fillScanParams4", 1285, a2 + 8);
      }
    }
  }

  v8 = *(a2 + 12) & 0xFFFF8FFF;
  *(a2 + 6) = v8;
  if (*(a3 + 20) | *(a3 + 24))
  {
    v9 = *(a3 + 20);
    *(a2 + 22) = *(a3 + 24);
    *(a2 + 10) = v9;
  }

  else
  {
    *(a2 + 22) = -1;
    *(a2 + 10) = -1;
  }

  v10 = *(a3 + 16);
  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v10 != 2);
  }

  a2[46] = v11;
  v12 = *(a3 + 64);
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x2000;
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_37;
      }

      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x4000;
    }
  }

  else if (v12 == 1)
  {
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
    }

    v8 = 0;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_37;
    }

    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
    }

    v8 = 1;
  }

  *(a2 + 12) = v8;
LABEL_37:
  v14 = *(a3 + 68);
  if ((v14 & 2) != 0)
  {
    v8 |= 2u;
    *(a2 + 12) = v8;
    v14 = *(a3 + 68);
  }

  if (v14)
  {
    *(a2 + 12) = v8 | 0x1000;
    if ((*(a3 + 68) & 0x10) != 0)
    {
      a2[47] |= 0x40u;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
        }
      }
    }

    v15 = AppleBCMWLANScanAdapter::setLpScanRetryCfg(a1, *(a3 + 12) != 0);
    if (v15)
    {
      v16 = v15;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v6 + 72), "[dk] %s@%d: Error %d in setting LP scan retry config\n", "fillScanParams4", 1332, v16);
        }
      }
    }
  }

  v17 = *(a3 + 68);
  if ((v17 & 8) != 0)
  {
    *(a2 + 12) |= 4u;
    v17 = *(a3 + 68);
    if ((v17 & 4) == 0)
    {
LABEL_50:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_75;
    }
  }

  else if ((v17 & 4) == 0)
  {
    goto LABEL_50;
  }

  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  *(a2 + 12) |= 8u;
  v17 = *(a3 + 68);
  if ((v17 & 0x40) == 0)
  {
LABEL_51:
    if ((v17 & 0x20) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_79;
  }

LABEL_75:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  *(a2 + 12) |= 0x200u;
  v17 = *(a3 + 68);
  if ((v17 & 0x20) != 0)
  {
LABEL_52:
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_83;
  }

LABEL_79:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  *(a2 + 12) |= 0x100u;
  v17 = *(a3 + 68);
  if ((v17 & 0x100) == 0)
  {
LABEL_53:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_87;
  }

LABEL_83:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  *(a2 + 12) |= 0x800u;
  v17 = *(a3 + 68);
  if ((v17 & 0x80) == 0)
  {
LABEL_54:
    if ((v17 & 0x200) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_87:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  a2[47] |= 4u;
  if ((*(a3 + 68) & 0x200) != 0)
  {
LABEL_55:
    a2[47] |= 8u;
  }

LABEL_56:
  *(a2 + 14) = -1;
  *(a2 + 60) = *(a3 + 72);
  v18 = *(a3 + 80);
  if (!v18)
  {
    v18 = -1;
  }

  *(a2 + 17) = v18;
  v19 = *(a3 + 84);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v55 = 0;
    *(a2 + 18) = v19;
    v22 = (a3 + 96);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      LODWORD(__src[0]) = 0;
      DWORD1(__src[0]) = v24;
      if ((v23 & 0xC06) == 0)
      {
        v23 |= 2u;
      }

      DWORD2(__src[0]) = v23;
      if (AppleBCMWLANCore::getChanSpec(*(*v6 + 56), __src, &v55))
      {
        v25 = 1;
      }

      else
      {
        v25 = v55 == 0;
      }

      if (!v25)
      {
        *&a2[2 * v21++ + 76] = v55;
      }

      v22 += 3;
      ++v20;
    }

    while (v20 < *(a3 + 84));
    *(a2 + 18) = v21;
    if (!v21)
    {
      return 3766617101;
    }
  }

  else if (AppleBCMWLANCore::getSupportedBands(*(*v6 + 56)) == 1)
  {
    *(a2 + 18) = 13;
    *(a2 + 76) = kDefaultScanList;
    *(a2 + 86) = *(&kDefaultScanList + 10);
  }

  v27 = *(a3 + 4888);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v57 = 0;
    v30 = *(a2 + 18);
    LODWORD(v31) = 2 * v30 + 76;
    memset(&__src[6], 0, 256);
    v31 = (v30 & 1) != 0 ? (v31 & 0xFFFFFFFC) + 4 : v31;
    v54 = v31;
    memset(&__src[4], 0, 32);
    v32 = v27 >= 0xA ? 10 : v27;
    v33 = __src + 4;
    v34 = (a3 + 4900);
    v35 = v32;
    memset(__src, 0, 64);
    do
    {
      v36 = *(v34 - 1);
      if (v36 >= 0x20)
      {
        v37 = 32;
      }

      else
      {
        v37 = v36;
      }

      *(v33 - 1) = v37;
      v25 = v36 == 0;
      v38 = v36 != 0;
      v39 = v25;
      v29 |= v39;
      v28 |= v38;
      memcpy(v33, v34, v37);
      v33 += 36;
      v34 += 14;
      --v35;
    }

    while (v35);
    *(a2 + 18) = v30 | (v32 << 16);
    memcpy(&a2[v54], __src, (36 * v32));
    v40 = *(*v6 + 72);
    if (v40)
    {
      if (CCLogStream::shouldLog(v40, 0x40uLL))
      {
        v41 = IOMallocZeroData();
        v42 = v41;
        if (v41)
        {
          strcpy(v41, " Performing ");
          if (v29)
          {
            v43 = "";
            if (v28)
            {
              v43 = "and ";
            }

            LODWORD(v41) = snprintf(v41 + 12, 0x3F4uLL, "Broadcast Scan %s", v43);
            if (v41 > 0x3FF)
            {
              v47 = 1036;
              if ((v28 & 1) == 0)
              {
LABEL_142:
                if (v42)
                {
                  if (*(*v6 + 72))
                  {
                    if (CCLogStream::shouldLog())
                    {
                      CCLogStream::logIf(*(*v6 + 72), 4, 64, "%s", v42);
                    }
                  }

                  *v42 = 0;
                  IOFreeData();
                }

                return 0;
              }

LABEL_130:
              v48 = 0;
              if (!v42 || v47 > 0x3FE || (v49 = 1024, v48 = snprintf(&v42[v47], 1024 - v47, "Directed Scan for "), v48 <= 0x3FF))
              {
                v49 = v48;
              }

              v50 = v49 + v47;
              v51 = __src + 4;
              do
              {
                if (*(v51 - 1))
                {
                  v52 = 0;
                  if (!v42 || v50 > 0x3FE || (v53 = 1024, v52 = snprintf(&v42[v50], 1024 - v50, "%s ", v51), v52 <= 0x3FF))
                  {
                    v53 = v52;
                  }

                  v50 += v53;
                }

                v51 += 36;
                --v32;
              }

              while (v32);
              goto LABEL_142;
            }

            v44 = 12;
LABEL_126:
            v47 = v44 + v41;
            if ((v28 & 1) == 0)
            {
              goto LABEL_142;
            }

            goto LABEL_130;
          }

          v47 = 12;
        }

        else
        {
          v44 = 0;
          v47 = 0;
          if (v29)
          {
            goto LABEL_126;
          }
        }

        if ((v28 & 1) == 0)
        {
          goto LABEL_142;
        }

        goto LABEL_130;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::resetSCChanimStats(AppleBCMWLANScanAdapter *this)
{
  v7 = -1;
  v6[0] = &v7;
  v6[1] = 0x400040004;
  v1 = this + 48;
  v2 = *(*(this + 6) + 56);
  if (!v2 || !AppleBCMWLANCore::checkForScanCoreSupport(v2) || (AppleBCMWLANCore::checkForLPSCDisable(*(*v1 + 56)) & 1) != 0)
  {
LABEL_4:
    if (v7)
    {
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  v5 = AppleBCMWLANCommander::runIOVarGet(*(*v1 + 64), "sc:reset_chanim_stats", &kNoTxPayload, v6, 0);
  if (!v5)
  {
    if (v7 && *(*v1 + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*v1 + 72), "[dk] %s@%d:LPSC: reset_chanim_stats status invalid, status %d\n", "resetSCChanimStats", 2100, v7);
    }

    goto LABEL_4;
  }

  v3 = v5;
  if (*(*v1 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::resetSCChanimStats(v1);
  }

  return v3;
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams3(AppleBCMWLANScanAdapter *a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x4D0uLL);
  v6 = a1 + 48;
  AppleBCMWLANCore::setTxBlankingHappened(*(*(a1 + 6) + 56), 0);
  *a2 = 4718595;
  v7 = *(a3 + 28);
  if (v7 && !*(a3 + 4888))
  {
    if (*(a3 + 5452))
    {
      a2[47] |= 1u;
      *(a2 + 1) = 4;
      *(a2 + 2) = *(a3 + 5452);
      v13 = *(*v6 + 72);
      if (v13 && CCLogStream::shouldLog(v13, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
      }
    }

    else
    {
      if (v7 >= 0x20)
      {
        v48 = 32;
      }

      else
      {
        v48 = v7;
      }

      *(a2 + 1) = v48;
      memcpy(a2 + 8, (a3 + 32), v48);
      v49 = *(*v6 + 72);
      if (v49 && CCLogStream::shouldLog(v49, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*v6 + 72), 0x40uLL, "[dk] %s@%d: This is a directed scan for SSID: %s\n", "fillScanParams3", 1499, a2 + 8);
      }
    }
  }

  v8 = *(a2 + 12) & 0xFFFF8FFF;
  *(a2 + 12) = v8;
  if (*(a3 + 20) | *(a3 + 24))
  {
    v9 = *(a3 + 20);
    *(a2 + 22) = *(a3 + 24);
    *(a2 + 10) = v9;
  }

  else
  {
    *(a2 + 22) = -1;
    *(a2 + 10) = -1;
  }

  v10 = *(a3 + 16);
  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v10 != 2);
  }

  a2[46] = v11;
  v12 = *(a3 + 64);
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x2000;
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_37;
      }

      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x4000;
    }
  }

  else if (v12 == 1)
  {
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
    }

    v8 = 0;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_37;
    }

    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
    }

    v8 = 1;
  }

  *(a2 + 12) = v8;
LABEL_37:
  v14 = *(a3 + 68);
  if ((v14 & 2) != 0)
  {
    v8 |= 2u;
    *(a2 + 12) = v8;
    v14 = *(a3 + 68);
  }

  if (v14)
  {
    *(a2 + 12) = v8 | 0x1000;
    if ((*(a3 + 68) & 0x10) != 0)
    {
      a2[47] |= 0x40u;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
        }
      }
    }

    v15 = AppleBCMWLANScanAdapter::setLpScanRetryCfg(a1, *(a3 + 12) != 0);
    if (v15)
    {
      v16 = v15;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v6 + 72), "[dk] %s@%d: Error %d in setting LP scan retry config\n", "fillScanParams3", 1545, v16);
        }
      }
    }
  }

  v17 = *(a3 + 68);
  if ((v17 & 8) != 0)
  {
    *(a2 + 12) |= 4u;
    v17 = *(a3 + 68);
  }

  v18 = *v6;
  if ((v17 & 4) != 0)
  {
    if (*(v18 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(v6);
    }

    *(a2 + 12) |= 8u;
    v17 = *(a3 + 68);
    v18 = *v6;
  }

  if ((v17 & 0x40) != 0)
  {
    if (*(v18 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(v6);
    }

    *(a2 + 12) |= 0x200u;
    v18 = *v6;
  }

  v19 = *(v18 + 56);
  if (!v19 || !AppleBCMWLANCore::checkFor6GSupportCardCapability(v19))
  {
    goto LABEL_67;
  }

  v20 = *(a3 + 68);
  if ((v20 & 0x20) != 0)
  {
    if ((*(a3 + 68) & 0x100) == 0)
    {
      goto LABEL_64;
    }

LABEL_110:
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(v6);
    }

    *(a2 + 12) |= 0x800u;
    v20 = *(a3 + 68);
    if ((v20 & 0x80) == 0)
    {
LABEL_65:
      if ((v20 & 0x200) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    goto LABEL_114;
  }

  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams3(v6);
  }

  *(a2 + 12) |= 0x100u;
  v20 = *(a3 + 68);
  if ((v20 & 0x100) != 0)
  {
    goto LABEL_110;
  }

LABEL_64:
  if ((v20 & 0x80) == 0)
  {
    goto LABEL_65;
  }

LABEL_114:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams3(v6);
  }

  a2[47] |= 4u;
  if ((*(a3 + 68) & 0x200) != 0)
  {
LABEL_66:
    a2[47] |= 8u;
  }

LABEL_67:
  *(a2 + 13) = -1;
  *(a2 + 7) = *(a3 + 72);
  v21 = *(a3 + 80);
  if (!v21)
  {
    v21 = -1;
  }

  *(a2 + 16) = v21;
  v22 = *(a3 + 84);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v58 = 0;
    *(a2 + 17) = v22;
    v25 = (a3 + 96);
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      LODWORD(__src[0]) = 0;
      DWORD1(__src[0]) = v27;
      if ((v26 & 0xC06) == 0)
      {
        v26 |= 2u;
      }

      DWORD2(__src[0]) = v26;
      if (AppleBCMWLANCore::getChanSpec(*(*v6 + 56), __src, &v58))
      {
        v28 = 1;
      }

      else
      {
        v28 = v58 == 0;
      }

      if (!v28)
      {
        *&a2[2 * v24++ + 72] = v58;
      }

      v25 += 3;
      ++v23;
    }

    while (v23 < *(a3 + 84));
    *(a2 + 17) = v24;
    if (!v24)
    {
      return 3766617101;
    }
  }

  else if (AppleBCMWLANCore::getSupportedBands(*(*v6 + 56)) == 1)
  {
    *(a2 + 17) = 13;
    *(a2 + 72) = kDefaultScanList;
    *(a2 + 82) = *(&kDefaultScanList + 10);
  }

  v30 = *(a3 + 4888);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v60 = 0;
    v33 = *(a2 + 17);
    LODWORD(v34) = 2 * v33 + 72;
    memset(&__src[6], 0, 256);
    v34 = (v33 & 1) != 0 ? (v34 & 0xFFFFFFFC) + 4 : v34;
    v57 = v34;
    memset(&__src[4], 0, 32);
    v35 = v30 >= 0xA ? 10 : v30;
    v36 = __src + 4;
    v37 = (a3 + 4900);
    v38 = v35;
    memset(__src, 0, 64);
    do
    {
      v39 = *(v37 - 1);
      if (v39 >= 0x20)
      {
        v40 = 32;
      }

      else
      {
        v40 = v39;
      }

      *(v36 - 1) = v40;
      v28 = v39 == 0;
      v41 = v39 != 0;
      v42 = v28;
      v32 |= v42;
      v31 |= v41;
      memcpy(v36, v37, v40);
      v36 += 36;
      v37 += 14;
      --v38;
    }

    while (v38);
    *(a2 + 17) = v33 | (v35 << 16);
    memcpy(&a2[v57], __src, (36 * v35));
    v43 = *(*v6 + 72);
    if (v43)
    {
      if (CCLogStream::shouldLog(v43, 0x40uLL))
      {
        v44 = IOMallocZeroData();
        v45 = v44;
        if (v44)
        {
          strcpy(v44, " Performing ");
          if (v32)
          {
            v46 = "";
            if (v31)
            {
              v46 = "and ";
            }

            LODWORD(v44) = snprintf(v44 + 12, 0x3F4uLL, "Broadcast Scan %s", v46);
            if (v44 > 0x3FF)
            {
              v50 = 1036;
              if ((v31 & 1) == 0)
              {
LABEL_144:
                if (v45)
                {
                  if (*(*v6 + 72))
                  {
                    if (CCLogStream::shouldLog())
                    {
                      CCLogStream::logIf(*(*v6 + 72), 4, 64, "%s", v45);
                    }
                  }

                  *v45 = 0;
                  IOFreeData();
                }

                return 0;
              }

LABEL_132:
              v51 = 0;
              if (!v45 || v50 > 0x3FE || (v52 = 1024, v51 = snprintf(&v45[v50], 1024 - v50, "Directed Scan for "), v51 <= 0x3FF))
              {
                v52 = v51;
              }

              v53 = v52 + v50;
              v54 = __src + 4;
              do
              {
                if (*(v54 - 1))
                {
                  v55 = 0;
                  if (!v45 || v53 > 0x3FE || (v56 = 1024, v55 = snprintf(&v45[v53], 1024 - v53, "%s ", v54), v55 <= 0x3FF))
                  {
                    v56 = v55;
                  }

                  v53 += v56;
                }

                v54 += 36;
                --v35;
              }

              while (v35);
              goto LABEL_144;
            }

            v47 = 12;
LABEL_128:
            v50 = v47 + v44;
            if ((v31 & 1) == 0)
            {
              goto LABEL_144;
            }

            goto LABEL_132;
          }

          v50 = 12;
        }

        else
        {
          v47 = 0;
          v50 = 0;
          if (v32)
          {
            goto LABEL_128;
          }
        }

        if ((v31 & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_132;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams2(AppleBCMWLANScanAdapter *a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x4D0uLL);
  v6 = a1 + 48;
  AppleBCMWLANCore::setTxBlankingHappened(*(*(a1 + 6) + 56), 0);
  *a2 = 4980738;
  v7 = *(a3 + 28);
  if (v7 && !*(a3 + 4888))
  {
    v13 = v7 >= 0x20 ? 32 : v7;
    *(a2 + 1) = v13;
    memcpy(a2 + 8, (a3 + 32), v13);
    v14 = *(*v6 + 72);
    if (v14)
    {
      if (CCLogStream::shouldLog(v14, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*v6 + 72), 0x40uLL, "[dk] %s@%d: This is a directed scan for SSID: %s\n", "fillScanParams2", 1706, a2 + 8);
      }
    }
  }

  v8 = *(a2 + 12) & 0xFFFF8FFF;
  *(a2 + 12) = v8;
  if (*(a3 + 20) | *(a3 + 24))
  {
    v9 = *(a3 + 20);
    *(a2 + 22) = *(a3 + 24);
    *(a2 + 10) = v9;
  }

  else
  {
    *(a2 + 22) = -1;
    *(a2 + 10) = -1;
  }

  v10 = *(a3 + 16);
  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v10 != 2);
  }

  a2[46] = v11;
  v12 = *(a3 + 64);
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams2(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x2000;
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_39;
      }

      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams2(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x4000;
    }
  }

  else if (v12 == 1)
  {
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams2(a1 + 48);
    }

    v8 = 0;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_39;
    }

    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams2(a1 + 48);
    }

    v8 = 1;
  }

  *(a2 + 12) = v8;
LABEL_39:
  v15 = *(a3 + 68);
  if ((v15 & 2) != 0)
  {
    v8 |= 2u;
    *(a2 + 12) = v8;
    v15 = *(a3 + 68);
  }

  if (v15)
  {
    *(a2 + 12) = v8 | 0x1000;
    v16 = AppleBCMWLANScanAdapter::setLpScanRetryCfg(a1, *(a3 + 12) != 0);
    if (v16)
    {
      v17 = v16;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v6 + 72), "[dk] %s@%d: Error %d in setting LP scan retry config\n", "fillScanParams2", 1746, v17);
        }
      }
    }
  }

  v18 = *(a3 + 68);
  if ((v18 & 8) != 0)
  {
    *(a2 + 12) |= 4u;
    v18 = *(a3 + 68);
  }

  if ((v18 & 4) != 0)
  {
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams2(v6);
    }

    *(a2 + 12) |= 8u;
  }

  *(a2 + 13) = -1;
  *(a2 + 7) = *(a3 + 72);
  v19 = *(a3 + 80);
  if (!v19)
  {
    v19 = -1;
  }

  *(a2 + 16) = v19;
  v20 = *(a3 + 84);
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    *(a2 + 17) = v20;
    v23 = (a3 + 96);
    do
    {
      LODWORD(__src[0]) = 2;
      if ((*v23 & 4) != 0)
      {
        LODWORD(__src[0]) = 3;
      }

      else if ((*v23 & 0x400) != 0)
      {
        LODWORD(__src[0]) = 4;
      }

      ChanSpec = AppleBCMWLANCore::getChanSpec(*(*v6 + 56), *(v23 - 4), __src);
      if (ChanSpec)
      {
        *&a2[2 * v22++ + 72] = ChanSpec;
      }

      ++v21;
      v23 += 3;
    }

    while (v21 < *(a3 + 84));
    *(a2 + 17) = v22;
    if (!v22)
    {
      return 3766617101;
    }
  }

  else if (AppleBCMWLANCore::getSupportedBands(*(*v6 + 56)) == 1)
  {
    *(a2 + 17) = 13;
    *(a2 + 72) = kDefaultScanList;
    *(a2 + 82) = *(&kDefaultScanList + 10);
  }

  v26 = *(a3 + 4888);
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v54 = 0;
    v29 = *(a2 + 17);
    LODWORD(v30) = 2 * v29 + 72;
    memset(&__src[6], 0, 256);
    v30 = (v29 & 1) != 0 ? (v30 & 0xFFFFFFFC) + 4 : v30;
    v52 = v30;
    memset(&__src[4], 0, 32);
    v31 = v26 >= 0xA ? 10 : v26;
    v32 = __src + 4;
    v33 = (a3 + 4900);
    v34 = v31;
    memset(__src, 0, 64);
    do
    {
      v35 = *(v33 - 1);
      if (v35 >= 0x20)
      {
        v36 = 32;
      }

      else
      {
        v36 = v35;
      }

      *(v32 - 1) = v36;
      v37 = v35 == 0;
      v38 = v35 != 0;
      v39 = v37;
      v28 |= v39;
      v27 |= v38;
      memcpy(v32, v33, v36);
      v32 += 36;
      v33 += 14;
      --v34;
    }

    while (v34);
    *(a2 + 17) = v29 | (v31 << 16);
    memcpy(&a2[v52], __src, (36 * v31));
    v40 = *(*v6 + 72);
    if (v40)
    {
      if (CCLogStream::shouldLog(v40, 0x40uLL))
      {
        v41 = IOMallocZeroData();
        v42 = v41;
        if (v41)
        {
          strcpy(v41, " Performing ");
          if (v28)
          {
            v43 = "";
            if (v27)
            {
              v43 = "and ";
            }

            LODWORD(v41) = snprintf(v41 + 12, 0x3F4uLL, "Broadcast Scan %s", v43);
            if (v41 > 0x3FF)
            {
              v45 = 1036;
              if ((v27 & 1) == 0)
              {
LABEL_108:
                if (v42)
                {
                  if (*(*v6 + 72))
                  {
                    if (CCLogStream::shouldLog())
                    {
                      CCLogStream::logIf(*(*v6 + 72), 4, 64, "%s", v42);
                    }
                  }

                  *v42 = 0;
                  IOFreeData();
                }

                return 0;
              }

LABEL_96:
              v46 = 0;
              if (!v42 || v45 > 0x3FE || (v47 = 1024, v46 = snprintf(&v42[v45], 1024 - v45, "Directed Scan for "), v46 <= 0x3FF))
              {
                v47 = v46;
              }

              v48 = v47 + v45;
              v49 = __src + 4;
              do
              {
                if (*(v49 - 1))
                {
                  v50 = 0;
                  if (!v42 || v48 > 0x3FE || (v51 = 1024, v50 = snprintf(&v42[v48], 1024 - v48, "%s ", v49), v50 <= 0x3FF))
                  {
                    v51 = v50;
                  }

                  v48 += v51;
                }

                v49 += 36;
                --v31;
              }

              while (v31);
              goto LABEL_108;
            }

            v44 = 12;
LABEL_92:
            v45 = v44 + v41;
            if ((v27 & 1) == 0)
            {
              goto LABEL_108;
            }

            goto LABEL_96;
          }

          v45 = 12;
        }

        else
        {
          v44 = 0;
          v45 = 0;
          if (v28)
          {
            goto LABEL_92;
          }
        }

        if ((v27 & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_96;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams(uint64_t a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x4C8uLL);
  v6 = *(a3 + 28);
  if (v6 && !*(a3 + 4888))
  {
    v37 = v6 >= 0x20 ? 32 : v6;
    *a2 = v37;
    memcpy(a2 + 4, (a3 + 32), v37);
    v38 = *(*(a1 + 48) + 72);
    if (v38)
    {
      if (CCLogStream::shouldLog(v38, 0x40uLL) && *(*(a1 + 48) + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*(a1 + 48) + 72), 0x40uLL, "[dk] %s@%d: This is a directed scan for SSID: %s\n", "fillScanParams", 1875, a2 + 4);
      }
    }
  }

  if (*(a3 + 20) | *(a3 + 24))
  {
    v7 = *(a3 + 20);
    *(a2 + 20) = *(a3 + 24);
    *(a2 + 9) = v7;
  }

  else
  {
    *(a2 + 20) = -1;
    *(a2 + 9) = -1;
  }

  v8 = *(a3 + 16);
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 != 2);
  }

  a2[42] = v9;
  v10 = *(a3 + 64);
  if (v10 == 2)
  {
    if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams(a1 + 48);
    }

    v11 = 1;
  }

  else
  {
    if (v10 != 1)
    {
      goto LABEL_20;
    }

    if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams(a1 + 48);
    }

    v11 = 0;
  }

  a2[43] = v11;
LABEL_20:
  v12 = *(a3 + 68);
  if ((v12 & 8) != 0)
  {
    a2[43] |= 4u;
    v12 = *(a3 + 68);
    if ((v12 & 2) == 0)
    {
LABEL_22:
      if ((v12 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_22;
  }

  a2[43] |= 2u;
  if ((*(a3 + 68) & 4) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams(a1 + 48);
  }

  a2[43] |= 8u;
LABEL_30:
  *(a2 + 11) = -1;
  *(a2 + 6) = *(a3 + 72);
  v14 = *(a3 + 80);
  v13 = *(a3 + 84);
  if (!v14)
  {
    v14 = -1;
  }

  *(a2 + 14) = v14;
  if (v13)
  {
    *(a2 + 15) = v13;
    v15 = a2 + 64;
    v16 = (a3 + 92);
    do
    {
      v17 = *v16;
      v16 += 3;
      *v15 = v17;
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  else if (AppleBCMWLANCore::getSupportedBands(*(*(a1 + 48) + 56)) == 1)
  {
    *(a2 + 15) = 13;
    *(a2 + 4) = kDefaultScanList;
    *(a2 + 74) = *(&kDefaultScanList + 10);
  }

  v18 = *(a3 + 4888);
  if (v18)
  {
    v47 = a1;
    v19 = 0;
    v20 = 0;
    v49 = 0;
    v21 = *(a2 + 15);
    v22 = 2 * v21 + 64;
    memset(&__src[6], 0, 256);
    v23 = (v21 & 1) != 0 ? (v22 & 0xFFFFFFFC) + 4 : v22;
    memset(&__src[4], 0, 32);
    v24 = v18 >= 0xA ? 10 : v18;
    v25 = __src + 4;
    v26 = (a3 + 4900);
    v27 = v24;
    memset(__src, 0, 64);
    do
    {
      v28 = *(v26 - 1);
      if (v28 >= 0x20)
      {
        v29 = 32;
      }

      else
      {
        v29 = v28;
      }

      *(v25 - 1) = v29;
      v30 = v28 == 0;
      v31 = !v30;
      v20 |= v31;
      v19 |= v30;
      memcpy(v25, v26, v29);
      v25 += 36;
      v26 += 14;
      --v27;
    }

    while (v27);
    *(a2 + 15) = v21 | (v24 << 16);
    memcpy(&a2[v23], __src, (36 * v24));
    v32 = *(*(v47 + 48) + 72);
    if (v32)
    {
      if (CCLogStream::shouldLog(v32, 0x40uLL))
      {
        v33 = IOMallocZeroData();
        v34 = v33;
        if (v33)
        {
          strcpy(v33, " Performing ");
          if (v19)
          {
            v35 = "";
            if (v20)
            {
              v35 = "and ";
            }

            LODWORD(v33) = snprintf(v33 + 12, 0x3F4uLL, "Broadcast Scan %s", v35);
            if (v33 > 0x3FF)
            {
              v39 = 1036;
              if ((v20 & 1) == 0)
              {
LABEL_86:
                if (v34)
                {
                  if (*(*(v47 + 48) + 72) && CCLogStream::shouldLog())
                  {
                    CCLogStream::logIf(*(*(v47 + 48) + 72), 4, 64, "%s", v34);
                  }

                  *v34 = 0;
                  IOFreeData();
                }

                return 0;
              }

LABEL_74:
              v40 = 0;
              if (!v34 || v39 > 0x3FE || (v41 = 1024, v40 = snprintf(&v34[v39], 1024 - v39, "Directed Scan for "), v40 <= 0x3FF))
              {
                v41 = v40;
              }

              v42 = v41 + v39;
              v43 = __src + 4;
              do
              {
                if (*(v43 - 1))
                {
                  v44 = 0;
                  if (!v34 || v42 > 0x3FE || (v45 = 1024, v44 = snprintf(&v34[v42], 1024 - v42, "%s ", v43), v44 <= 0x3FF))
                  {
                    v45 = v44;
                  }

                  v42 += v45;
                }

                v43 += 36;
                --v24;
              }

              while (v24);
              goto LABEL_86;
            }

            v36 = 12;
LABEL_70:
            v39 = v36 + v33;
            if ((v20 & 1) == 0)
            {
              goto LABEL_86;
            }

            goto LABEL_74;
          }

          v39 = 12;
        }

        else
        {
          v36 = 0;
          v39 = 0;
          if (v19)
          {
            goto LABEL_70;
          }
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_74;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::setLpScanRetryCfg(AppleBCMWLANScanAdapter *this, int a2)
{
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 6) + 56)) > 0xE)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 6) + 56)) > 0x10)
    {
      AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 6) + 56));

      return AppleBCMWLANScanAdapter::setLpScanRetryCfgV4(this, a2);
    }

    else
    {

      return AppleBCMWLANScanAdapter::setLpScanRetryCfgV3(this, a2);
    }
  }

  else
  {

    return AppleBCMWLANScanAdapter::setLpScanRetryCfgV2(this, a2);
  }
}

uint64_t AppleBCMWLANScanAdapter::setLpScanRetryCfgV2(AppleBCMWLANScanAdapter *this, int a2)
{
  v9 = 786433;
  v10 = 0xAAAAAAAA00000002;
  if (a2)
  {
    BYTE4(v10) = 25;
    BYTE6(v10) = 50;
    LODWORD(v10) = 7;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  BYTE5(v10) = v4;
  v5 = *(*(this + 6) + 64);
  v8[0] = &v9;
  v8[1] = 12;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "scan_retry_cfg", v8, 0, 0);
  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(*(*(this + 6) + 72), "[dk] %s@%d:Setting LP scan retry config to %d [0: None, 1: High Accuracy]\n", "setLpScanRetryCfgV2", 2020, a2);
  }

  return v6;
}

uint64_t AppleBCMWLANScanAdapter::setLpScanRetryCfgV3(AppleBCMWLANScanAdapter *this, int a2)
{
  v9 = 0x200100003;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    LOBYTE(v10) = 25;
    BYTE2(v10) = 50;
    HIDWORD(v9) = 7;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  BYTE1(v10) = v4;
  v5 = *(*(this + 6) + 64);
  v8[0] = &v9;
  v8[1] = 16;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "scan_retry_cfg", v8, 0, 0);
  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(*(*(this + 6) + 72), "[dk] %s@%d:Setting LP scan retry config v3 to %d [0: None, 1: High Accuracy]\n", "setLpScanRetryCfgV3", 2041, a2);
  }

  return v6;
}

uint64_t AppleBCMWLANScanAdapter::setLpScanRetryCfgV4(AppleBCMWLANScanAdapter *this, int a2)
{
  v9 = 0x200100004;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    LOBYTE(v10) = 25;
    HIWORD(v10) = 12825;
    BYTE2(v10) = 50;
    HIDWORD(v9) = 199;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  BYTE1(v10) = v4;
  v5 = *(*(this + 6) + 64);
  v8[0] = &v9;
  v8[1] = 16;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "scan_retry_cfg", v8, 0, 0);
  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(*(*(this + 6) + 72), "[dk] %s@%d:Setting LP scan retry config v4 to %d [0: None, 1: High Accuracy]\n", "setLpScanRetryCfgV4", 2066, a2);
  }

  return v6;
}