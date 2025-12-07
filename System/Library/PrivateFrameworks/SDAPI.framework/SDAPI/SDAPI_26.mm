void sub_2626D8BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DgnThreadMgr::recordTraceEvent(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (*(result + 76) == 1)
  {
    v4 = result;
    if ((*(result + 77) & 1) == 0)
    {
      *(result + 77) = 1;
      if (a2 == -1)
      {
        if (a3 == -1)
        {
          result = DgnThreadTrace::addInRegion(result + 80, -1, a4);
        }

        else
        {
          result = DgnThreadTrace::add(result + 80, a3, a4);
        }
      }

      else
      {
        v5 = *(*(*(result + 8) + 8 * a2) + 56);
        if (a2 == a3)
        {
          v6 = -1;
        }

        else
        {
          v6 = a3;
        }

        result = DgnThreadTrace::add(v5 + 144, v6, a4);
      }

      *(v4 + 77) = 0;
    }
  }

  return result;
}

uint64_t *DgnThreadClient::startup(DgnThreadClient *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v3, &gGlobalMemChunkRegion);
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 2);
  }

  *(this + 390) = 1;
  pthread_create(this + 6, 0, CurryDgnThreadMain, *(this + 7));
  *(this + 5) = *(this + 6);
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnEvent::wait((this + 320));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
  }

  *(this + 390) = 0;
  DgnThreadClient::checkForWorkerError(this);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v3);
}

void sub_2626D8DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void DgnThreadClient::checkForWorkerError(uint64_t this)
{
  v2 = *(this + 56);
  if (!v2 || *(v2 + 64) == 6)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1455, "mrecutil/dthread", 9, "%u", *(this + 28));
    v2 = *(this + 56);
  }

  if (*(v2 + 68) == 1)
  {
    v3 = *(v2 + 72);
    if (v3 == 2)
    {
      DgnThreadClient::handleMemoryException(this);
    }

    v4 = *(v2 + 80);

    DgnThreadClient::handleException(this, v4, v3);
  }
}

void DgnThreadClient::shutdown(DgnThreadClient *this)
{
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 3);
  }

  DgnThreadClient::checkForWorkerError(this);
  *(this + 390) = 6;
  DgnEvent::signal((this + 72));
  DgnEvent::signal((this + 1064));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnThreadClient::waitForThreadDoneOrTerminate(this, 30000);
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 3);
  }

  DgnThreadClient::checkForWorkerError(this);
  *(this + 390) = 0;
}

uint64_t DgnThreadClient::waitForThreadDoneOrTerminate(DgnThreadClient *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v5[1027] = *MEMORY[0x277D85DE8];
  if (DgnEvent::timedWait((v2 + 1312), v3))
  {
    v5[0] = 0;
    if (!pthread_join(*(v2 + 48), v5))
    {
      return 1;
    }

    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1156, "mrecutil/dthread", 10, "%u", *(v2 + 28));
  }

  (*(*v2 + 32))(v2);
  return 0;
}

void DgnThreadClient::play(DgnThreadClient *this)
{
  DgnThreadClient::checkForWorkerError(this);
  *(this + 390) = 2;
  DgnEvent::signal((this + 72));
  DgnEvent::signal((this + 1064));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnEvent::wait((this + 568));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
  }

  *(this + 390) = 0;
  DgnThreadClient::checkForWorkerError(this);
  if (*(this + 3) == 1)
  {
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 7);
    }

    if (*(this + 1566) == 1)
    {
      DgnEvent::signal((this + 72));
    }

    DgnEvent::wait((this + 320));
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
    }

    DgnEvent::signal((this + 320));
    if (*(this + 1566) == 1)
    {
      if (*(this + 1572) == 1)
      {
        DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 8);
      }

      *(this + 392) = GetRegionChecksum(*(this + 2));
      if (*(this + 1572) == 1)
      {
        v2 = DgnThreadMgr::smpThreadMgr;
        v3 = *(this + 16);
        v4 = *(this + 7);

        DgnThreadMgr::recordTraceEvent(v2, v3, v4, 6);
      }
    }
  }
}

void DgnThreadClient::playAllUntilWorkerPauses(DgnThreadClient *this)
{
  DgnThreadClient::checkForWorkerError(this);
  *(this + 390) = 4;
  DgnEvent::signal((this + 72));
  DgnEvent::signal((this + 1064));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnEvent::wait((this + 568));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
  }

  *(this + 390) = 0;
  DgnThreadClient::checkForWorkerError(this);
  if (*(this + 3) == 1)
  {
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 7);
    }

    if (*(this + 1566) == 1)
    {
      DgnEvent::signal((this + 72));
    }

    DgnEvent::wait((this + 320));
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
    }

    DgnEvent::signal((this + 320));
    if (*(this + 1566) == 1)
    {
      if (*(this + 1572) == 1)
      {
        DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 8);
      }

      *(this + 392) = GetRegionChecksum(*(this + 2));
      if (*(this + 1572) == 1)
      {
        v2 = DgnThreadMgr::smpThreadMgr;
        v3 = *(this + 16);
        v4 = *(this + 7);

        DgnThreadMgr::recordTraceEvent(v2, v3, v4, 6);
      }
    }
  }
}

void DgnThreadClient::pause(DgnThreadClient *this)
{
  DgnThreadClient::checkForWorkerError(this);
  *(this + 390) = 5;
  DgnEvent::signal((this + 1064));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnEvent::wait((this + 320));
  if (*(this + 1566) == 1 && *(this + 3) == 1)
  {
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 8);
    }

    RegionChecksum = GetRegionChecksum(*(this + 2));
    if (RegionChecksum != *(this + 392))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1326, "mrecutil/dthread", 7, "%u %u %u", *(this + 7), *(this + 392), RegionChecksum);
    }
  }

  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
  }

  *(this + 390) = 0;
  *(*(this + 7) + 64) = 2;
  DgnEvent::signal((this + 816));

  DgnThreadClient::checkForWorkerError(this);
}

uint64_t DgnThreadClient::terminate(DgnThreadClient *this)
{
  errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1379, "mrecutil/dthread", 5, "%u", *(this + 7));
  result = pthread_kill(*(this + 6), 20);
  v3 = *(this + 7);
  *(v3 + 64) = 6;
  *(v3 + 12) = 0;
  return result;
}

void DgnThreadClient::handleMemoryException(DgnThreadClient *this)
{
  v1 = this;
  if (*(this + 1572) == 1)
  {
    this = DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 16);
  }

  if ((*(v1 + 1565) & 1) == 0)
  {
    *(v1 + 1565) = 1;
    if (DgnThreadMgr::getCurrentThreadId(this) == -1)
    {
      snprintf(DgnThreadClient::handleMemoryException::buffer, 0x190uLL, "Memory allocation in worker thread %u failed: rethrowing memory exception in global thread.\n");
    }

    else
    {
      snprintf(DgnThreadClient::handleMemoryException::buffer, 0x190uLL, "Memory allocation in worker thread %u failed: rethrowing memory exception in client thread %u.\n");
    }

    xprintString(DgnThreadClient::handleMemoryException::buffer);
    MemStatsDisplayFromRef(0, 1, 1, 0, 0, 0, 0);
  }

  ThrowMemoryException(v1 + 8);
}

uint64_t DgnThreadClient::handleException(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(a1 + 64), *(a1 + 28), 15);
  }

  return errCopyAndThrowException(a3, a2);
}

double DgnThreadWorker::DgnThreadWorker(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = &unk_287527BF8;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = *(a3 + 1572);
  *(a1 + 144) = 0;
  *(a1 + 148) = a5;
  *(a1 + 152) = a4;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 88) = *(a3 + 1566);
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void DgnThreadWorker::~DgnThreadWorker(DgnThreadWorker *this)
{
  *this = &unk_287527BF8;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 7) = 0;
    DgnPrinter::~DgnPrinter(v2);
    MemChunkFree(v3, 0);
  }

  DgnThreadTrace::~DgnThreadTrace((this + 144));
}

{
  DgnThreadWorker::~DgnThreadWorker(this);

  JUMPOUT(0x26672B1B0);
}

void DgnThreadWorker::printSize(DgnThreadWorker *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1598);
  if (v63)
  {
    v12 = v62;
  }

  else
  {
    v12 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &unk_262888C56, a3, &unk_262888C56, v12);
  DgnString::~DgnString(&v62);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &unk_262888C56);
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1599);
  if (v63)
  {
    v15 = v62;
  }

  else
  {
    v15 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v14, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v15, 4, 4, 0);
  DgnString::~DgnString(&v62);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1600);
  if (v63)
  {
    v17 = v62;
  }

  else
  {
    v17 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v17, 1, 1, 0);
  DgnString::~DgnString(&v62);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1601);
  if (v63)
  {
    v19 = v62;
  }

  else
  {
    v19 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v19, 4, 4, 0);
  DgnString::~DgnString(&v62);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1602);
  if (v63)
  {
    v22 = v62;
  }

  else
  {
    v22 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v22, v20, v20, 0);
  DgnString::~DgnString(&v62);
  *a4 += v20;
  *a5 += v20;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1603);
  if (v63)
  {
    v25 = v62;
  }

  else
  {
    v25 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v25, v23, v23, 0);
  DgnString::~DgnString(&v62);
  *a4 += v23;
  *a5 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 4;
  }

  else
  {
    v26 = 8;
  }

  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1605);
  if (v63)
  {
    v28 = v62;
  }

  else
  {
    v28 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v28, v26, v26, 0);
  DgnString::~DgnString(&v62);
  *a4 += v26;
  *a5 += v26;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1606);
  if (v63)
  {
    v31 = v62;
  }

  else
  {
    v31 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v31, v29, v29, 0);
  DgnString::~DgnString(&v62);
  *a4 += v29;
  *a5 += v29;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1610);
  if (v63)
  {
    v33 = v62;
  }

  else
  {
    v33 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v33, 4, 4, 0);
  DgnString::~DgnString(&v62);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1612);
  if (v63)
  {
    v35 = v62;
  }

  else
  {
    v35 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v35, 1, 1, 0);
  DgnString::~DgnString(&v62);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1614);
  if (v63)
  {
    v37 = v62;
  }

  else
  {
    v37 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v37, 4, 4, 0);
  DgnString::~DgnString(&v62);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1615);
  if (v63)
  {
    v40 = v62;
  }

  else
  {
    v40 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v40, v38, v38, 0);
  DgnString::~DgnString(&v62);
  *a4 += v38;
  *a5 += v38;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1617);
  if (v63)
  {
    v42 = v62;
  }

  else
  {
    v42 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v42, 1, 1, 0);
  DgnString::~DgnString(&v62);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1620);
  if (v63)
  {
    v44 = v62;
  }

  else
  {
    v44 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v44, 4, 4, 0);
  DgnString::~DgnString(&v62);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1622);
  if (v63)
  {
    v46 = v62;
  }

  else
  {
    v46 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v46, 4, 4, 0);
  DgnString::~DgnString(&v62);
  *a4 += 4;
  *a5 += 4;
  v47 = SnapTime::sizeObject(this + 104, 0);
  v48 = SnapTime::sizeObject(this + 104, 1);
  v49 = SnapTime::sizeObject(this + 104, 3);
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1624);
  if (v63)
  {
    v51 = v62;
  }

  else
  {
    v51 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v51, v47, v48, v49);
  DgnString::~DgnString(&v62);
  *a4 += v47;
  *a5 += v48;
  *a6 += v49;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1626);
  if (v63)
  {
    v53 = v62;
  }

  else
  {
    v53 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v53, 1, 1, 0);
  DgnString::~DgnString(&v62);
  ++*a4;
  ++*a5;
  v54 = sizeObject(this + 144, 0);
  v55 = sizeObject(this + 144, 1);
  v56 = sizeObject(this + 144, 3);
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1627);
  if (v63)
  {
    v58 = v62;
  }

  else
  {
    v58 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v58, v54, v55, v56);
  DgnString::~DgnString(&v62);
  *a4 += v54;
  *a5 += v55;
  *a6 += v56;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1629);
  if (v63)
  {
    v60 = v62;
  }

  else
  {
    v60 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, a3, &unk_262888C56, (35 - a3), (35 - a3), v60, *a4, *a5, *a6);
  DgnString::~DgnString(&v62);
}

void sub_2626DA214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnThreadWorker::reportErrorAsWarning(DgnThreadWorker *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v2;
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 72);
  if (v5 == 2)
  {
    if (v3)
    {
      strcpy(DgnThreadWorker::reportErrorAsWarning(BOOL)::buffer, "Memory allocation in client thread failed.\n");
      xprintString(DgnThreadWorker::reportErrorAsWarning(BOOL)::buffer);
      MemStatsDisplayFromRef(0, 1, 1, 0, 0, 0, 0);
      errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1643, "mrecutil/dthread", 8, "%u");
    }

    else
    {
      errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1648, "mrecutil/dthread", 9, "%u %u");
    }
  }

  else
  {
    v6 = *(v2 + 80);
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v3 == 0;
    }

    if (v7)
    {
      if (v5 > 1 || v6 == 0)
      {
        errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1659, "mrecutil/dthread", 2, "%u %u");
      }

      else
      {
        DgnString::DgnString(&v15);
        v12[0] = 0;
        v13 = 0x2000;
        v14 = 0;
        v9 = &unk_262888C56;
        MessageFormatPrefix(v12, 0, 1, *(v6 + 72));
        if (v16)
        {
          v10 = v15;
        }

        else
        {
          v10 = &unk_262888C56;
        }

        if (v14)
        {
          v11 = v10;
        }

        else
        {
          v11 = v12;
        }

        if (*(v6 + 64))
        {
          v9 = *(v6 + 56);
        }

        errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1673, "mrecutil/dthread", 3, "%u %u %.500s %.500s", *(v4 + 16), *(v4 + 64), v11, v9);
        DgnString::~DgnString(&v15);
      }
    }

    else
    {
      errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1653, "mrecutil/dthread", 1, "%u");
    }
  }
}

uint64_t DgnThreadWorker::play(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = *(a1 + 48);
  if ((*(v5 + 1564) & 1) == 0)
  {
    v7 = v4;
    do
    {
      v8 = *(v5 + 56);
      if (v8)
      {
        LOBYTE(v8) = *(v8 + 68);
      }

      result = 2;
      if ((v8 & 1) != 0 || v7 == 6)
      {
        return result;
      }

      v9 = *(v5 + 1560);
      if (v9 == 6 || v7 == 5)
      {
        return 1;
      }

      result = 0;
      if (a2 == 3 || v7 == 4)
      {
        return result;
      }

      if (v9 == 5)
      {
        if (!v7)
        {
          goto LABEL_41;
        }

        if (a2 != 4 && v7 != 2)
        {
          return 0;
        }
      }

      else if (*(a1 + 8) == 1 && a2 != 4 && (v7 & 0xFFFFFFFD) != 0)
      {
        return 0;
      }

      if ((v7 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_41;
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      if (*(a1 + 136) == 1)
      {
        DgnThreadTrace::add(a1 + 144, -1, 5);
      }

      SnapTime::recordTime(&v20, 1, 0, 0, 0);
      v11 = *(a1 + 96);
      v12 = (*(a1 + 48) + 1064);
      if (v11)
      {
        DgnEvent::timedWait(v12, v11);
      }

      else
      {
        DgnEvent::wait(v12);
      }

      SnapTime::recordTime(&v18, 1, 0, 0, 0);
      if (*(a1 + 136) == 1)
      {
        DgnThreadTrace::add(a1 + 144, -1, 6);
      }

      v13 = v21;
      v14 = v19;
      *(a1 + 104) = vaddq_s64(*(a1 + 104), vsubq_s64(v18, v20));
      *(a1 + 120) = vaddq_s64(*(a1 + 120), vsubq_s64(v14, v13));
      v15 = *(a1 + 48);
      if (*(v15 + 1564))
      {
        return 2;
      }

      v16 = *(v15 + 56);
      if (v16)
      {
        if (*(v16 + 68))
        {
          return 2;
        }
      }

      v17 = *(v15 + 1560);
      if (v17 == 5)
      {
        if (a2 == 4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v17 == 6)
        {
          return 1;
        }

        if (a2 == 4 || *(a1 + 8) != 1)
        {
          goto LABEL_41;
        }
      }

      if (v7 == 3)
      {
        return 0;
      }

LABEL_41:
      v7 = (*(*a1 + 64))(a1);
      v5 = *(a1 + 48);
    }

    while (*(v5 + 1564) != 1);
  }

  return 2;
}

void DgnThreadMgr::DgnThreadMgr(DgnThreadMgr *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0x10000001DLL;
  *(this + 8) = 1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 18) = 0;
  *(this + 75) = 0;
  *(this + 21) = -1;
  *(this + 11) = &gGlobalMemChunkRegion;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  DgnPrimArray<unsigned long long>::reallocElts(this + 8, 1, 1);
  v2 = *(this + 4);
  *(*(this + 1) + 8 * v2) = 0;
  *(this + 4) = v2 + 1;
}

void sub_2626DA8A4(_Unwind_Exception *a1)
{
  DgnIOwnArray<DgnThreadTrace *>::releaseAll(v2 + 192);
  DgnThreadTrace::~DgnThreadTrace(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnIArray<Utterance *>::~DgnIArray(v1);
  _Unwind_Resume(a1);
}

void DgnThreadMgr::startupThreadMgr(DgnThreadMgr *this)
{
  v5 = 0;
  v1 = pthread_key_create(&v5, 0);
  v2 = v5;
  if (v1)
  {
    v2 = -1;
  }

  DgnThreadMgr::smTlsID = v2;
  v3 = MemChunkAlloc(0xD0uLL, 0);
  DgnThreadMgr::DgnThreadMgr(v3);
  DgnThreadMgr::smpThreadMgr = v4;
}

uint64_t DgnThreadMgr::getNewThreadId(DgnThreadMgr *this)
{
  NextId = IdMgr<unsigned int>::getNextId(this + 6);
  for (i = *(this + 4); i <= NextId; *(this + 4) = i)
  {
    if (i == *(this + 5))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 8, 1, 1);
      i = *(this + 4);
    }

    *(*(this + 1) + 8 * i++) = 0;
  }

  return NextId;
}

double DgnThreadMgr::validateDgnThreadId(uint64_t this, unsigned int a2)
{
  if (*(this + 16) <= a2 || !*(*(this + 8) + 8 * a2))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 2045, "mrecutil/dthread", 1, "%u", a2);
  }

  return result;
}

void DgnThreadMgr::broadcastError(DgnThreadMgr *this)
{
  if (DgnThreadMgr::smpThreadMgr)
  {
    *(DgnThreadMgr::smpThreadMgr + 4) = 1;
    pthread_yield_np();
    v1 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) >= 2u)
    {
      v2 = 1;
      do
      {
        v3 = *(*(v1 + 8) + 8 * v2);
        if (v3)
        {
          DgnThreadClient::error(v3);
          v1 = DgnThreadMgr::smpThreadMgr;
        }

        ++v2;
      }

      while (v2 < *(v1 + 16));
    }

    pthread_yield_np();
    v4 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) >= 2u)
    {
      v5 = 1;
      do
      {
        v6 = *(*(v4 + 8) + 8 * v5);
        if (v6)
        {
          DgnThreadClient::waitForThreadDoneOrTerminate(v6, 1000);
          v4 = DgnThreadMgr::smpThreadMgr;
        }

        ++v5;
      }

      while (v5 < *(v4 + 16));
    }
  }
}

DgnThreadMgr *DgnThreadMgr::startClientCallbackEvent(DgnThreadMgr *this)
{
  if (DgnThreadMgr::smpThreadMgr && *(DgnThreadMgr::smpThreadMgr + 76) == 1)
  {
    v1 = this;
    CurrentThreadId = DgnThreadMgr::getCurrentThreadId(this);
    v3 = DgnThreadMgr::smpThreadMgr;
    if (v1)
    {
      v4 = 12;
    }

    else
    {
      v4 = 11;
    }

    return DgnThreadMgr::recordTraceEvent(v3, CurrentThreadId, CurrentThreadId, v4);
  }

  return this;
}

DgnThreadMgr *DgnThreadMgr::endClientCallbackEvent(DgnThreadMgr *this)
{
  if (DgnThreadMgr::smpThreadMgr && *(DgnThreadMgr::smpThreadMgr + 76) == 1)
  {
    CurrentThreadId = DgnThreadMgr::getCurrentThreadId(this);
    v2 = DgnThreadMgr::smpThreadMgr;

    return DgnThreadMgr::recordTraceEvent(v2, CurrentThreadId, CurrentThreadId, 6);
  }

  return this;
}

uint64_t DgnThreadMgr::beginFileLoadOrSave(DgnThreadMgr *this)
{
  FileLoadOrSaveCounter = DgnThreadMgr::getFileLoadOrSaveCounter(this);
  v2 = (*FileLoadOrSaveCounter + 1);
  *FileLoadOrSaveCounter = v2;
  return v2;
}

uint64_t DgnThreadMgr::getFileLoadOrSaveCounter(DgnThreadMgr *this)
{
  CurrentThreadId = DgnThreadMgr::getCurrentThreadId(this);
  if (CurrentThreadId == -1)
  {
    return this + 72;
  }

  v3 = CurrentThreadId;
  DgnThreadMgr::validateDgnThreadId(this, CurrentThreadId);
  return *(*(*(this + 1) + 8 * v3) + 56) + 92;
}

uint64_t DgnThreadMgr::endFileLoadOrSave(DgnThreadMgr *this)
{
  FileLoadOrSaveCounter = DgnThreadMgr::getFileLoadOrSaveCounter(this);
  if (!*FileLoadOrSaveCounter)
  {
    return 0;
  }

  v2 = FileLoadOrSaveCounter;
  result = (*FileLoadOrSaveCounter - 1);
  *v2 = result;
  return result;
}

uint64_t *DgnThreadTrace::addInRegion(uint64_t a1, int a2, char a3)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v7, *(a1 + 8));
  DgnThreadTrace::add(a1, a2, a3);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v7);
}

void sub_2626DACF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *DgnPrimArray<unsigned long long>::copyArraySlice(uint64_t *result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 3);
  if (a4 <= v8)
  {
    *(result + 2) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(result, a4 - v8, 0);
    *(v7 + 2) = a4;
  }

  v9 = *a2;
  v10 = *v7;
  v11 = a4;
  do
  {
    *v10++ = *(v9 + 8 * a3++);
    --v11;
  }

  while (v11);
  return result;
}

void *DgnIOwnArray<DgnThreadTrace *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnThreadTrace>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

DgnThreadTrace *DgnDelete<DgnThreadTrace>(DgnThreadTrace *result)
{
  if (result)
  {
    DgnThreadTrace::~DgnThreadTrace(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

TVertex *TNewWords::findAndAddWords(uint64_t a1, __int32 *a2, uint64_t a3, char *a4, char a5)
{
  if (TLexicon::checkName(*(a1 + 24), a2, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v11 = *(a1 + 24);
  v12 = TStringParam::get((*(a1 + 32) + 10744));
  v13 = *(a1 + 32);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v13 + 16464));
  v15 = *(v13 + 4 * TParam::getValidConfig((v13 + 16464), ActiveConfigHandle) + 16624);
  v16 = *(a1 + 32);
  v17 = TParam::getActiveConfigHandle((v16 + 16112));
  ValidConfig = TParam::getValidConfig((v16 + 16112), v17);
  TLexicon::findHeadClonesCollated(v11, a2, v12, v15, *(v16 + 4 * ValidConfig + 16272), &__p);
  v19 = __p;
  v20 = v31;
  if (v31 == __p)
  {
    v10 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v10 = 0;
    do
    {
      if ((v19[v21 + 16] & 0xC0) == 0)
      {
        if (!v10)
        {
          v10 = TGraph::addVertex(*(a1 + 8), a4);
          v19 = __p;
        }

        v23 = &v19[v21];
        v23[24] += a5;
        v24 = *(a1 + 8);
        v25 = *v23;
        v27 = 1;
        v28 = v25;
        v29 = *(v23 + 1);
        TGraph::addEdge(v24, a3, v10, &v27);
        v19 = __p;
        v20 = v31;
      }

      ++v22;
      v21 += 32;
    }

    while (v22 < (v20 - v19) >> 5);
  }

  std::vector<TLexiconMatch>::resize(&__p, 0);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_2626DAFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNewWords::addAlphanumWord(TNewWords *this)
{
  v2 = *(this + 4);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v2 + 1880));
  if (*(v2 + TParam::getValidConfig((v2 + 1880), ActiveConfigHandle) + 2032) != 1)
  {
    return 0;
  }

  v4 = *(*this + 16);
  v27 = v29;
  v28 = xmmword_26286B6F0;
  v30 = 1;
  if (!*v4)
  {
    goto LABEL_14;
  }

  v5 = 0;
  do
  {
    Segment = TSegmenter::getSegment(*(this + 2), v4);
    v7 = Segment;
    v8 = *(Segment + 24);
    if (v8 != 1 && (!v5 || v8 != 2))
    {
      break;
    }

    v9 = 0;
    v10 = *Segment;
      ;
    }

    TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), v10, v9 - 1);
    ++v5;
    v4 = *(v7 + 8);
  }

  while (*v4);
  if (v5 >= 2)
  {
    if (*(&v28 + 1) >= v28)
    {
      if (v30)
      {
        v23 = 0;
        TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), &v23, 1uLL);
        v12 = v27;
        --*(&v28 + 1);
      }

      else
      {
        v12 = v27;
        if (v28)
        {
          v27[v28 - 1] = 0;
        }
      }
    }

    else
    {
      v12 = v27;
      v27[*(&v28 + 1)] = 0;
    }

    if (!TNewWords::findAndAddWords(this, v12, *this, v4, 0))
    {
      v14 = *(this + 3);
      if (*(&v28 + 1) >= v28)
      {
        if (v30)
        {
          v23 = 0;
          TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), &v23, 1uLL);
          v15 = v27;
          --*(&v28 + 1);
        }

        else
        {
          v15 = v27;
          if (v28)
          {
            v27[v28 - 1] = 0;
          }
        }
      }

      else
      {
        v15 = v27;
        v27[*(&v28 + 1)] = 0;
      }

      if (!TLexicon::checkName(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL))
      {
        v16 = TGraph::addVertex(*(this + 1), v4);
        v17 = *(this + 3);
        if (*(&v28 + 1) >= v28)
        {
          if (v30)
          {
            v23 = 0;
            TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), &v23, 1uLL);
            v18 = v27;
            --*(&v28 + 1);
          }

          else
          {
            v18 = v27;
            if (v28)
            {
              v27[v28 - 1] = 0;
            }
          }
        }

        else
        {
          v18 = v27;
          v27[*(&v28 + 1)] = 0;
        }

        v19 = TLexicon::addTempWord(v17, v18, 0, 0, 0);
        v20 = *this;
        v21 = *(this + 1);
        v23 = 4;
        v24 = v19;
        v25 = 0;
        v26 = 0;
        TGraph::addEdge(v21, v20, v16, &v23);
      }
    }

    *(this + 5) = v4;
    v13 = 1;
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  if (v30 == 1 && v27 != v29 && v27)
  {
    MEMORY[0x26672B1B0]();
  }

  return v13;
}

void sub_2626DB2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v13 && a13 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addHyphenatedWord(TSegmenter **this)
{
  v80 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2);
  if (!*v1)
  {
    return 0;
  }

  memset(v79, 0, sizeof(v79));
  Segment = TSegmenter::getSegment(this[2], v1);
  if (*(Segment + 24) == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v4;
      v8 = *Segment;
      v1 = *(Segment + 8);
      *(v79 + v7) = *Segment;
      v6 |= *(v8 + 4) == 0;
      v9 = TSegmenter::getSegment(this[2], v1);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if (wcscmp(*v9, "-"))
      {
        break;
      }

      v11 = TSegmenter::getSegment(this[2], v10[1]);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      if (*(v11 + 24) == 5)
      {
        break;
      }

      v13 = **v11;
      {
        operator new();
      }

      v14 = v13 == 10 || v13 == 13;
      v15 = v14;
      v16 = v14 ? v12 : v10;
      v5 |= v15;
      v17 = v16[1];
      if (!*v17 || v7 >= 0xF)
      {
        break;
      }

      Segment = TSegmenter::getSegment(this[2], v17);
      v4 = v7 + 1;
    }

    while (*(Segment + 24) == 1);
    v19 = v7 + 1;
  }

  else
  {
    v5 = 0;
    v19 = 0;
    v6 = 0;
  }

  if (v19 < 2)
  {
    return 0;
  }

  v22 = 0;
  v74 = v77;
  v75 = 256;
  v78 = 1;
  v76 = 0;
    ;
  }

  TBuffer<wchar_t>::insert(&v74, 0, *&v79[0], v22 - 1);
  for (i = 1; i != v19; ++i)
  {
    v70 = 45;
    TBuffer<wchar_t>::insert(&v74, v76, &v70, 1uLL);
    v25 = 0;
    v26 = *(v79 + i);
      ;
    }

    TBuffer<wchar_t>::insert(&v74, v76, v26, v25 - 1);
  }

  if (v76 >= v75)
  {
    if (v78)
    {
      v70 = 0;
      TBuffer<wchar_t>::insert(&v74, v76, &v70, 1uLL);
      v28 = v74;
      --v76;
    }

    else
    {
      v28 = v74;
      if (v75)
      {
        v74[v75 - 1] = 0;
      }
    }
  }

  else
  {
    v28 = v74;
    v74[v76] = 0;
  }

  if (TNewWords::findAndAddWords(this, v28, *this, v1, 0))
  {
    goto LABEL_44;
  }

  if (v6)
  {
    goto LABEL_74;
  }

  if ((v5 & 1) != 0 || (v29 = this[4], ActiveConfigHandle = TParam::getActiveConfigHandle((v29 + 1384)), *(v29 + TParam::getValidConfig((v29 + 1384), ActiveConfigHandle) + 1536) == 1))
  {
    v31 = 0;
    v76 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v74, 0, *&v79[0], v31 - 1);
    for (j = 1; j != v19; ++j)
    {
      v34 = 0;
      v35 = *(v79 + j);
        ;
      }

      TBuffer<wchar_t>::insert(&v74, v76, v35, v34 - 1);
    }

    if (v76 >= v75)
    {
      if (v78)
      {
        v70 = 0;
        TBuffer<wchar_t>::insert(&v74, v76, &v70, 1uLL);
        v37 = v74;
        --v76;
      }

      else
      {
        v37 = v74;
        if (v75)
        {
          v74[v75 - 1] = 0;
        }
      }
    }

    else
    {
      v37 = v74;
      v74[v76] = 0;
    }

    if (TNewWords::findAndAddWords(this, v37, *this, v1, 1))
    {
      goto LABEL_44;
    }
  }

  v38 = this[4];
  v39 = TParam::getActiveConfigHandle((v38 + 1632));
  if ((*(v38 + TParam::getValidConfig((v38 + 1632), v39) + 1784) & 1) == 0)
  {
LABEL_74:
    v50 = 4;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = *this;
    v43 = v19 - 1;
LABEL_63:
    v69 = v41;
    v44 = v42;
    do
    {
      if (v43 == v40)
      {
        v45 = v1;
      }

      else
      {
        v45 = 0;
      }

      v46 = TNewWords::findAndAddWords(this, *(v79 + v40), v44, v45, 1);
      if (!v46)
      {
        v47 = *(v79 + v40);
        if (!TLexicon::checkName(this[3], v47, 0, 0xFFFFFFFFFFFFFFFFLL))
        {
          v48 = TLexicon::addTempWord(this[3], v47, 0, 0, 0);
          v42 = TGraph::addVertex(this[1], v45);
          v49 = this[1];
          v70 = 0;
          v71 = v48;
          v72 = 0;
          v73 = 0;
          TGraph::addEdge(v49, v44, v42, &v70);
          v50 = 0;
          v41 = 1;
          v14 = v43 == v40++;
          if (v14)
          {
            goto LABEL_75;
          }

          goto LABEL_63;
        }
      }

      ++v40;
      v44 = v46;
    }

    while (v19 != v40);
    v50 = 0;
    if ((v69 & 1) == 0)
    {
      goto LABEL_86;
    }
  }

LABEL_75:
  v51 = this[4];
  v52 = TParam::getActiveConfigHandle((v51 + 1880));
  if (*(v51 + TParam::getValidConfig((v51 + 1880), v52) + 2032) != 1)
  {
    goto LABEL_86;
  }

  v53 = this[4];
  v54 = TParam::getActiveConfigHandle((v53 + 1136));
  if (*(v53 + TParam::getValidConfig((v53 + 1136), v54) + 1288) != 1)
  {
    goto LABEL_86;
  }

  v55 = 0;
  v76 = 0;
    ;
  }

  TBuffer<wchar_t>::insert(&v74, 0, *&v79[0], v55 - 1);
  for (k = 1; k != v19; ++k)
  {
    v70 = 45;
    TBuffer<wchar_t>::insert(&v74, v76, &v70, 1uLL);
    v58 = 0;
    v59 = *(v79 + k);
      ;
    }

    TBuffer<wchar_t>::insert(&v74, v76, v59, v58 - 1);
  }

  v61 = this[3];
  v62 = TBuffer<wchar_t>::c_str(&v74);
  if (TLexicon::checkName(v61, v62, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_86:
    v20 = 0;
    goto LABEL_87;
  }

  v63 = this[3];
  v64 = TBuffer<wchar_t>::c_str(&v74);
  v65 = TLexicon::addTempWord(v63, v64, 0, 0, 0);
  v67 = *this;
  v66 = this[1];
  v68 = TGraph::addVertex(v66, v1);
  v70 = v50;
  v71 = v65;
  v72 = 0;
  v73 = 0;
  TGraph::addEdge(v66, v67, v68, &v70);
LABEL_44:
  this[5] = v1;
  v20 = 1;
LABEL_87:
  if (v78 == 1 && v74 != v77 && v74)
  {
    MEMORY[0x26672B1B0]();
  }

  return v20;
}

void sub_2626DB9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x26672B1B0](a10, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t TNewWords::addContractionWord(TNewWords *this)
{
  v2 = *(this + 4);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v2 + 1880));
  if (*(v2 + TParam::getValidConfig((v2 + 1880), ActiveConfigHandle) + 2032) != 1)
  {
    return 0;
  }

  v4 = TStringParam::get((*(this + 4) + 2376));
  if (!*v4)
  {
    return 0;
  }

  v5 = v4;
  Segment = TSegmenter::getSegment(*(this + 2), *(*this + 16));
  if ((*Segment)[1])
  {
    return 0;
  }

  v9 = Segment;
  v10 = wcschr(v5, **Segment);
  if (!v10)
  {
    return 0;
  }

  if (*(*this + 16) != *(*this + 24))
  {
    return 0;
  }

  v11 = v10;
  Vertex = TGraph::getVertex(*(this + 1), v9[1]);
  if (!Vertex)
  {
    return 0;
  }

  v13 = Vertex;
  if (*(Vertex + 16) != *(Vertex + 24))
  {
    return 0;
  }

  OutEdge = TVertex::getOutEdge(*this);
  if (OutEdge)
  {
    if (*(OutEdge + 24) != v13)
    {
      return 0;
    }

    while (1)
    {
      OutEdge = *(OutEdge + 8);
      if (!OutEdge)
      {
        break;
      }

      if ((*(OutEdge + 32) & 1) == 0)
      {
        PrevVertex = 0;
        if (*(OutEdge + 24) != v13)
        {
          return PrevVertex;
        }
      }
    }
  }

  v15 = TVertex::getInEdge(v13);
  v16 = *this;
  if (!v15)
  {
    goto LABEL_22;
  }

  if (*(v15 + 16) != v16)
  {
    return 0;
  }

  while (1)
  {
    v15 = *v15;
    if (!v15)
    {
      break;
    }

    if ((*(v15 + 32) & 1) == 0)
    {
      PrevVertex = 0;
      if (*(v15 + 16) != v16)
      {
        return PrevVertex;
      }
    }
  }

LABEL_22:
  PrevVertex = TGraph::getPrevVertex(*(this + 1), *(v16 + 24) - 1);
  if (!PrevVertex)
  {
    return PrevVertex;
  }

  v17 = TSegmenter::getSegment(*(this + 2), *(PrevVertex + 16));
  if (!v17 || *(v17 + 24) != 1 || *(v17 + 8) != *(*this + 24))
  {
    return 0;
  }

  v18 = 0;
  v38 = v40;
  v39 = xmmword_26286B6F0;
  v41 = 1;
  v19 = *v17;
    ;
  }

  TBuffer<wchar_t>::insert(&v38, 0, v19, v18 - 1);
  v34 = *v11;
  TBuffer<wchar_t>::insert(&v38, *(&v39 + 1), &v34, 1uLL);
  v21 = TSegmenter::getSegment(*(this + 2), v13[2]);
  v22 = v21;
  if (!v21 || *(v21 + 24) != 1)
  {
    goto LABEL_35;
  }

  v23 = 0;
  v24 = *v21;
    ;
  }

  TBuffer<wchar_t>::insert(&v38, *(&v39 + 1), v24, v23 - 1);
  v26 = TBuffer<wchar_t>::c_str(&v38);
  if (TNewWords::findAndAddWords(this, v26, PrevVertex, *(v22 + 8), 0))
  {
    goto LABEL_33;
  }

  v27 = *(this + 3);
  v28 = TBuffer<wchar_t>::c_str(&v38);
  if (TLexicon::checkName(v27, v28, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_35:
    PrevVertex = 0;
    goto LABEL_36;
  }

  v29 = *(this + 3);
  v30 = TBuffer<wchar_t>::c_str(&v38);
  v31 = TLexicon::addTempWord(v29, v30, 0, 0, 0);
  v32 = *(this + 1);
  v33 = TGraph::addVertex(v32, *(v22 + 8));
  v34 = 4;
  v35 = v31;
  v36 = 0;
  v37 = 0;
  TGraph::addEdge(v32, PrevVertex, v33, &v34);
LABEL_33:
  *(this + 5) = *(v22 + 8);
  PrevVertex = 1;
LABEL_36:
  if (v41 == 1 && v38 != v40 && v38)
  {
    MEMORY[0x26672B1B0]();
  }

  return PrevVertex;
}

void sub_2626DBDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v13)
  {
    if (a13)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addAcronymWord(TSegmenter **this)
{
  v1 = *(*this + 2);
  v39 = v41;
  v40 = xmmword_26286B6F0;
  v42 = 1;
  if (!*v1)
  {
    goto LABEL_26;
  }

  v3 = 1;
  do
  {
    Segment = TSegmenter::getSegment(this[2], v1);
    v5 = Segment;
    if (*(Segment + 24) != 1)
    {
      break;
    }

    v6 = *Segment;
    if (wcslen(*Segment) != 1)
    {
      break;
    }

    v7 = *v6;
    {
      operator new();
    }

    isUpper = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7);
    v9 = 0;
    v10 = *v5;
      ;
    }

    TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), v10, v9 - 1);
    v1 = *(v5 + 8);
    v12 = TSegmenter::getSegment(this[2], v1);
    v13 = v12;
    v3 &= isUpper;
    if (!v12)
    {
      break;
    }

    v14 = *v12;
    if (wcscmp(*v12, "."))
    {
      break;
    }

    v15 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), v14, v15 - 1);
    v1 = v13[1];
  }

  while (*v1);
  if (*(&v40 + 1) >= 4uLL)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_38;
    }

    v17 = 0;
    v35 = v37;
    v36 = xmmword_26286B6F0;
    v38 = 1;
    do
    {
      v18 = v39[v17];
      {
        operator new();
      }

      if (TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v18))
      {
        v43[0] = v39[v17];
        TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v43, 1uLL);
      }

      ++v17;
    }

    while (v17 < *(&v40 + 1));
    if (*(&v36 + 1) >= v36)
    {
      if (v38)
      {
        v43[0] = 0;
        TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v43, 1uLL);
        v20 = v35;
        --*(&v36 + 1);
      }

      else
      {
        v20 = v35;
        if (v36)
        {
          v35[v36 - 1] = 0;
        }
      }
    }

    else
    {
      v20 = v35;
      v35[*(&v36 + 1)] = 0;
    }

    v21 = TNewWords::findAndAddWords(this, v20, *this, v1, 1);
    if (v38 == 1 && v35 != v37 && v35)
    {
      MEMORY[0x26672B1B0]();
    }

    if (!v21)
    {
LABEL_38:
      v22 = this[4];
      ActiveConfigHandle = TParam::getActiveConfigHandle((v22 + 1880));
      if (*(v22 + TParam::getValidConfig((v22 + 1880), ActiveConfigHandle) + 2032) == 1)
      {
        if (*(&v40 + 1) >= v40)
        {
          if (v42)
          {
            LODWORD(v35) = 0;
            TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v35, 1uLL);
            v24 = v39;
            --*(&v40 + 1);
          }

          else
          {
            v24 = v39;
            if (v40)
            {
              v39[v40 - 1] = 0;
            }
          }
        }

        else
        {
          v24 = v39;
          v39[*(&v40 + 1)] = 0;
        }

        if (!TNewWords::findAndAddWords(this, v24, *this, v1, 0))
        {
          v25 = this[3];
          if (*(&v40 + 1) >= v40)
          {
            if (v42)
            {
              LODWORD(v35) = 0;
              TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v35, 1uLL);
              v26 = v39;
              --*(&v40 + 1);
            }

            else
            {
              v26 = v39;
              if (v40)
              {
                v39[v40 - 1] = 0;
              }
            }
          }

          else
          {
            v26 = v39;
            v39[*(&v40 + 1)] = 0;
          }

          if (!TLexicon::checkName(v25, v26, 0, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = TGraph::addVertex(this[1], v1);
            v28 = this[3];
            if (*(&v40 + 1) >= v40)
            {
              if (v42)
              {
                LODWORD(v35) = 0;
                TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v35, 1uLL);
                v29 = v39;
                --*(&v40 + 1);
              }

              else
              {
                v29 = v39;
                if (v40)
                {
                  v39[v40 - 1] = 0;
                }
              }
            }

            else
            {
              v29 = v39;
              v39[*(&v40 + 1)] = 0;
            }

            v30 = TLexicon::addTempWord(v28, v29, 0, 0, 0);
            v31 = *this;
            v32 = this[1];
            LODWORD(v35) = 4;
            v36 = v30;
            v37[0] = 0;
            TGraph::addEdge(v32, v31, v27, &v35);
          }
        }
      }
    }

    this[5] = v1;
    v19 = 1;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  if (v42 == 1 && v39 != v41 && v39 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v19;
}

void sub_2626DC320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x26672B1B0](v11, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x428]) == 1 && a11 != v12 && a11)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x848]) == 1 && STACK[0x430] != v13 && STACK[0x430] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addAbbreviationWord(TNewWords *this)
{
  v2 = *(this + 4);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v2 + 1880));
  if (*(v2 + TParam::getValidConfig((v2 + 1880), ActiveConfigHandle) + 2032) != 1)
  {
    return 0;
  }

  result = TSegmenter::getSegment(*(this + 2), *(*this + 16));
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (*(result + 24) != 1 || &v6[-*(*this + 16) - 6] < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  result = TSegmenter::getSegment(*(this + 2), v6);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (wcscmp(*result, "."))
  {
    return 0;
  }

  v9 = *(v8 + 8);
  if (!*v9)
  {
    return 0;
  }

  OutEdge = TVertex::getOutEdge(*this);
  if (OutEdge)
  {
    v11 = OutEdge;
    if ((*(OutEdge + 64) & 0xC0) == 0)
    {
      return 0;
    }

    while (1)
    {
      v11 = *(v11 + 8);
      if (!v11)
      {
        break;
      }

      if ((*(v11 + 32) & 1) == 0)
      {
        result = 0;
        if ((*(v11 + 64) & 0xC0) == 0)
        {
          return result;
        }
      }
    }
  }

  if (!memchr(";:,!?", *v9, 6uLL))
  {
    result = TSegmenter::getSegment(*(this + 2), v9);
    if (!result)
    {
      return result;
    }

    Segment = result;
    if (*(result + 24))
    {
      return 0;
    }

    while (1)
    {
      v28 = *(Segment + 24);
      v29 = **Segment;
      GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(result);
      if (v28)
      {
        break;
      }

      result = 0;
      if (v29 <= 8202)
      {
        if (v29 != 32 && v29 != 160)
        {
          return result;
        }
      }

      else
      {
        v31 = v29 == 8203 || v29 == 65279;
        if (!v31 && v29 != 12288)
        {
          return result;
        }
      }

      Segment = TSegmenter::getSegment(*(this + 2), *(Segment + 8));
      result = 0;
      if (!Segment)
      {
        return result;
      }
    }

    if (TLocaleInfo::isUpper(GlobalLocaleInfo, v29))
    {
      return 0;
    }
  }

  v12 = 0;
  v36[0] = v38;
  v36[1] = 256;
  v39 = 1;
  v13 = *v5;
  v37 = 0;
    ;
  }

  TBuffer<wchar_t>::insert(v36, 0, v13, v12 - 1);
  v15 = 0;
  v16 = *v8;
    ;
  }

  TBuffer<wchar_t>::insert(v36, v37, v16, v15 - 1);
  v18 = TBuffer<wchar_t>::c_str(v36);
  if (!TNewWords::findAndAddWords(this, v18, *this, *(v8 + 8), 0))
  {
    v19 = *(this + 3);
    v20 = TBuffer<wchar_t>::c_str(v36);
    if (!TLexicon::checkName(v19, v20, 0, 0xFFFFFFFFFFFFFFFFLL))
    {
      v21 = TGraph::addVertex(*(this + 1), *(v8 + 8));
      v22 = *(this + 3);
      v23 = TBuffer<wchar_t>::c_str(v36);
      v24 = TLexicon::addTempWord(v22, v23, 0, 0, 0);
      v25 = *this;
      v26 = *(this + 1);
      v32 = 4;
      v33 = v24;
      v34 = 0;
      v35 = 0;
      TGraph::addEdge(v26, v25, v21, &v32);
    }
  }

  *(this + 5) = *(v8 + 8);
  if (v39 == 1 && v36[0] != v38 && v36[0])
  {
    MEMORY[0x26672B1B0]();
  }

  return 1;
}

void sub_2626DC728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v13)
  {
    if (a13)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addWords(uint64_t this, TVertex *a2, TGraph *a3, TSegmenter *a4, TLexicon *a5)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 24) = a5;
  if (*(a2 + 2) >= *(this + 40))
  {
    v5 = this;
    this = TNewWords::addAlphanumWord(this);
    if ((this & 1) == 0)
    {
      this = TNewWords::addHyphenatedWord(v5);
      if ((this & 1) == 0)
      {
        this = TNewWords::addContractionWord(v5);
        if ((this & 1) == 0)
        {
          this = TNewWords::addAcronymWord(v5);
          if ((this & 1) == 0)
          {

            return TNewWords::addAbbreviationWord(v5);
          }
        }
      }
    }
  }

  return this;
}

void MrecInitModule_virtmap_fst(void)
{
  if (!gParDebugVirtMapShowContent)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugVirtMapShowContent", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugVirtMapShowContent = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugVirtMapShowContent);
  }

  if (!gParDebugVirtMapShowStats)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugVirtMapShowStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugVirtMapShowStats = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugVirtMapShowStats);
  }
}

void VirtMap::printSize(VirtMap *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 122);
  if (v45)
  {
    v13 = v44;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  v43 = a6;
  DgnString::~DgnString(&v44);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  fixed = sizeObject<DgnPrimFixArray<unsigned int>>(this, 0);
  v16 = sizeObject<DgnPrimFixArray<unsigned int>>(this, 1);
  v44 = 0;
  v45 = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v44);
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 123);
  if (v45)
  {
    v18 = v44;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v18, fixed, v16, 0);
  DgnString::~DgnString(&v44);
  *a4 += fixed;
  *a5 += v16;
  v19 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v19 = 12;
  }

  v20 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v20 = 3;
  }

  v21 = *(this + 6);
  v22 = (((*(this + 7) - v21) + v21) << v20) + v19;
  v23 = (v21 << v20) + v19;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 124);
  if (v45)
  {
    v25 = v44;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, v22, v23, 0);
  DgnString::~DgnString(&v44);
  *a4 += v22;
  *a5 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 12;
  }

  else
  {
    v26 = 16;
  }

  v27 = *(this + 10);
  v28 = *(this + 11);
  if (v28 >= v27)
  {
    v29 = 0;
    if (v27 > 0)
    {
      v26 += 4 * (v27 - 1) + 4;
    }

    v30 = v26 + 4 * (v28 - v27);
  }

  else
  {
    v29 = 4 * v27;
    v30 = v26;
  }

  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 125);
  if (v45)
  {
    v32 = v44;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v32, v30, v26, v29);
  DgnString::~DgnString(&v44);
  *a4 += v30;
  *a5 += v26;
  *v43 += v29;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 126);
  if (v45)
  {
    v34 = v44;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v34, 4, 4, 0);
  DgnString::~DgnString(&v44);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 127);
  if (v45)
  {
    v36 = v44;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v36, 4, 4, 0);
  DgnString::~DgnString(&v44);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 128);
  if (v45)
  {
    v38 = v44;
  }

  else
  {
    v38 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v38, 4, 4, 0);
  DgnString::~DgnString(&v44);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 138);
  if (v45)
  {
    v40 = v44;
  }

  else
  {
    v40 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v40, 1, 1, 0);
  DgnString::~DgnString(&v44);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 139);
  if (v45)
  {
    v42 = v44;
  }

  else
  {
    v42 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, a3, &byte_262899963, (35 - a3), (35 - a3), v42, *a4, *a5, *v43);
  DgnString::~DgnString(&v44);
}

void sub_2626DCDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnPrimFixArray<unsigned int>>(uint64_t a1, int a2)
{
  v2 = 0;
  v11 = 0;
  v12 = 0;
  v3 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 8;
  }

  if (a2 != 3)
  {
    v2 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v4 = *(a1 + 8);
      if (v4 >= 1)
      {
        v5 = v4 + 1;
        v6 = (*a1 + 16 * v4 - 8);
        do
        {
          v7 = *v6;
          v6 -= 4;
          v8 = 4 * v7;
          if (v7 <= 0)
          {
            v9 = 0;
          }

          else
          {
            v9 = v8;
          }

          v2 += v3 + v9;
          --v5;
        }

        while (v5 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - v4);
      }
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  return v2;
}

void VirtMap::VirtMap(VirtMap *this)
{
  *(this + 45) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

uint64_t VirtMap::setEmpty(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    v2 = 0;
    v3 = 4 * v1;
    do
    {
      *(*(this + 16) + 8 * *(*(this + 32) + v2)) = 0;
      v2 += 4;
    }

    while (v3 != v2);
  }

  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

void VirtMap::~VirtMap(VirtMap *this)
{
  *(this + 13) = 0;
  *(this + 14) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 16);
  DgnArray<DgnVector>::releaseAll(this);
}

void MrecInitModule_pel_pel(void)
{
  if (!gParDebugShowPelInfoOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowPelInfoOnLoad", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowPelInfoOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPelInfoOnLoad);
  }

  if (!gParDebugAcousticMicPacking)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugAcousticMicPacking", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugAcousticMicPacking = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAcousticMicPacking);
  }

  if (!gParDebugShowShortListFrameClassification)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowShortListFrameClassification", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowShortListFrameClassification = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowShortListFrameClassification);
  }

  if (!gParDiagnosticPelHierarchyCreationUseReference)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DiagnosticPelHierarchyCreationUseReference", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDiagnosticPelHierarchyCreationUseReference = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPelHierarchyCreationUseReference);
  }

  if (!gParDebugShowShortListSetId)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugShowShortListSetId", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugShowShortListSetId = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowShortListSetId);
  }

  if (!gParDiagnosticPelHierarchyUpdate)
  {
    v10 = MemChunkAlloc(0x38uLL, 0);
    v14 = 0x200000000;
    v11 = IntGlobalParamBase::IntGlobalParamBase(v10, "DiagnosticPelHierarchyUpdate", byte_262888D40, byte_262888D40, 0, &v14, 0);
    *v11 = &unk_287528130;
    gParDiagnosticPelHierarchyUpdate = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPelHierarchyUpdate);
  }

  if (!gParDebugExciseUnneededPelsGenonesComps)
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v12, "DebugExciseUnneededPelsGenonesComps", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v13 = &unk_287527EA0;
    gParDebugExciseUnneededPelsGenonesComps = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugExciseUnneededPelsGenonesComps);
  }
}

uint64_t sizeObject<FrameDecisionTreeHyperplane>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
      goto LABEL_11;
    }

    v6 = *(a1 + 8);
    if (v6 < 1)
    {
      v2 = v3;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v6 + 1;
      v8 = 24 * v6 - 16;
      v2 = v3;
      do
      {
        v2 += sizeObject<unsigned int>(*a1 + v8, a2) + 4;
        --v7;
        v8 -= 24;
      }

      while (v7 > 1);
      if (a2)
      {
        goto LABEL_11;
      }
    }

    v2 += (v3 + 4) * (*(a1 + 12) - *(a1 + 8));
  }

LABEL_11:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

uint64_t FrameDecisionTree::classifyFrame(unsigned __int16 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = **a1;
  if (**a1)
  {
    v4 = *(a1 + 16);
    v5 = *a2;
    v6 = *a1;
    v7 = a1[2];
    do
    {
      v8 = 0;
      if (v4)
      {
        v9 = *&v7[12 * v6[2] + 4];
        v10 = v4;
        v11 = v5;
        do
        {
          v13 = *v11++;
          v12 = v13;
          v14 = *v9++;
          v8 += v14 * v12;
          --v10;
        }

        while (v10);
      }

      if (*&v7[12 * v6[2]] + v8 >= 0)
      {
        v3 = v6[1];
      }

      v6 = &v2[3 * v3];
      v3 = *v6;
    }

    while (*v6);
  }

  else
  {
    v6 = *a1;
  }

  return v6[2];
}

uint64_t FrameDecisionTree::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v19 = *(a1 + 8);
  writeObject(a2, &v19, a3);
  v18 = *(a1 + 24);
  writeObject(a2, &v18, a3);
  result = writeObject(a2, (a1 + 32), a3);
  if (v18)
  {
    v7 = 0;
    for (i = 0; i < v18; ++i)
    {
      v17 = *(*(a1 + 16) + v7);
      result = writeObject(a2, &v17, a3);
      v9 = v18;
      v7 += 24;
    }

    if (v18)
    {
      v10 = 0;
      LODWORD(v11) = *(a1 + 32);
      do
      {
        if (v11)
        {
          v12 = 0;
          do
          {
            v17 = *(*(*(a1 + 16) + 24 * v10 + 8) + 4 * v12);
            result = writeObject(a2, &v17, a3);
            ++v12;
            v11 = *(a1 + 32);
          }

          while (v12 < v11);
          v9 = v18;
        }

        ++v10;
      }

      while (v10 < v9);
    }
  }

  if (v19)
  {
    v13 = 0;
    for (j = 0; j < v19; ++j)
    {
      LOWORD(v17) = *(*a1 + v13);
      writeObject(a2, &v17, a3);
      v16 = *(*a1 + v13 + 2);
      writeObject(a2, &v16, a3);
      v15 = *(*a1 + v13 + 4);
      result = writeObject(a2, &v15, a3);
      v13 += 6;
    }
  }

  return result;
}

void PackingPars::printSize(PackingPars *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 852);
  if (v50)
  {
    v13 = v49;
  }

  else
  {
    v13 = byte_262888D40;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_262888D40, a3, byte_262888D40, v13);
  DgnString::~DgnString(&v49);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_262888D40);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 853);
  if (v50)
  {
    v18 = v49;
  }

  else
  {
    v18 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v18, 8, 8, 0);
  DgnString::~DgnString(&v49);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 854);
  if (v50)
  {
    v20 = v49;
  }

  else
  {
    v20 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v20, 8, 8, 0);
  DgnString::~DgnString(&v49);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 855);
  if (v50)
  {
    v22 = v49;
  }

  else
  {
    v22 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v22, 8, 8, 0);
  DgnString::~DgnString(&v49);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 856);
  if (v50)
  {
    v24 = v49;
  }

  else
  {
    v24 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v24, 8, 8, 0);
  v48 = a3;
  DgnString::~DgnString(&v49);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 857);
  if (v50)
  {
    v26 = v49;
  }

  else
  {
    v26 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v49);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 12;
  }

  else
  {
    v27 = 16;
  }

  v28 = *(this + 12);
  v29 = *(this + 13);
  v30 = this;
  if (v29 >= v28)
  {
    v31 = 0;
    if (v28 > 0)
    {
      v27 += 2 * (v28 - 1) + 2;
    }

    v32 = v27 + 2 * (v29 - v28);
  }

  else
  {
    v31 = 2 * v28;
    v32 = v27;
  }

  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 858);
  if (v50)
  {
    v34 = v49;
  }

  else
  {
    v34 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v15, byte_262888D40, v16, v16, v34, v32, v27, v31);
  DgnString::~DgnString(&v49);
  *a4 += v32;
  *a5 += v27;
  *a6 += v31;
  v35 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 8;
  }

  v36 = *(v30 + 16);
  if (v36 <= 0)
  {
    v37 = 0;
  }

  else
  {
    v37 = 8 * v36;
  }

  v38 = v37 + v35;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 859);
  if (v50)
  {
    v40 = v49;
  }

  else
  {
    v40 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v15, byte_262888D40, v16, v16, v40, v38, v38, 0);
  DgnString::~DgnString(&v49);
  *a4 += v38;
  *a5 += v38;
  v41 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 8;
  }

  v42 = *(v30 + 20);
  if (v42 > 0)
  {
    v43 = (v42 - 1) + v41 + 1;
  }

  else
  {
    v43 = v41;
  }

  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 860);
  if (v50)
  {
    v45 = v49;
  }

  else
  {
    v45 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, byte_262888D40, v16, v16, v45, v43, v43, 0);
  DgnString::~DgnString(&v49);
  *a4 += v43;
  *a5 += v43;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 861);
  if (v50)
  {
    v47 = v49;
  }

  else
  {
    v47 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v48, byte_262888D40, (35 - v48), (35 - v48), v47, *a4, *a5, *a6);
  DgnString::~DgnString(&v49);
}

void sub_2626DDB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void PelMgr::~PelMgr(PackingPars **this)
{
  DgnDelete<PackingPars>(this[61]);
  this[61] = 0;
  *this = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 90));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 88));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 86));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 84));
  DgnArray<AlignedArray<unsigned char>>::releaseAll((this + 82));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 80));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 78));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 75));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 73));
  BitArray::~BitArray((this + 71));
  FrameDecisionTree::~FrameDecisionTree((this + 66));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 63));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 59));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 57));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 54));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 52));
  DgnArray<DgnString>::releaseAll((this + 50));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 47));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 45));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 43));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 40));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 38));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 36));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 34));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 32));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 29));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 27));
  DgnArray<AlignedArray<unsigned char>>::releaseAll((this + 25));
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll((this + 23));
  DgnIArray<Utterance *>::~DgnIArray((this + 21));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 14));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 12));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 10));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 8));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 6));
}

PackingPars *DgnDelete<PackingPars>(PackingPars *result)
{
  if (result)
  {
    PackingPars::~PackingPars(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void PelMgr::printSize(PelMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 955);
  if (v263)
  {
    v13 = v262;
  }

  else
  {
    v13 = byte_262888D40;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_262888D40, a3, byte_262888D40, v13);
  DgnString::~DgnString(&v262);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_262888D40);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  v16 = (a3 + 1);
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 956);
  if (v263)
  {
    v19 = v262;
  }

  else
  {
    v19 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v19, v15, v15, 0);
  DgnString::~DgnString(&v262);
  *a4 += v15;
  *a5 += v15;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 958);
  if (v263)
  {
    v21 = v262;
  }

  else
  {
    v21 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v21, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 960);
  if (v263)
  {
    v23 = v262;
  }

  else
  {
    v23 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v23, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 962);
  if (v263)
  {
    v25 = v262;
  }

  else
  {
    v25 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 963);
  if (v263)
  {
    v27 = v262;
  }

  else
  {
    v27 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 964);
  if (v263)
  {
    v29 = v262;
  }

  else
  {
    v29 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v29, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 965);
  if (v263)
  {
    v31 = v262;
  }

  else
  {
    v31 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 966);
  if (v263)
  {
    v33 = v262;
  }

  else
  {
    v33 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v33, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 967);
  if (v263)
  {
    v35 = v262;
  }

  else
  {
    v35 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v35, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 968);
  if (v263)
  {
    v37 = v262;
  }

  else
  {
    v37 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v37, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 970);
  if (v263)
  {
    v39 = v262;
  }

  else
  {
    v39 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v39, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 972);
  if (v263)
  {
    v41 = v262;
  }

  else
  {
    v41 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v41, 4, 4, 0);
  v259 = a3;
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 974);
  if (v263)
  {
    v43 = v262;
  }

  else
  {
    v43 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v43, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  v44 = sizeObject(this + 160, 0);
  v45 = sizeObject(this + 160, 1);
  v46 = sizeObject(this + 160, 3);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 976);
  if (v263)
  {
    v48 = v262;
  }

  else
  {
    v48 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v16, byte_262888D40, v17, v17, v48, v44, v45, v46);
  DgnString::~DgnString(&v262);
  *a4 += v44;
  *a5 += v45;
  *a6 += v46;
  v49 = sizeObject(this + 164, 0);
  v50 = sizeObject(this + 164, 1);
  v51 = sizeObject(this + 164, 3);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 978);
  if (v263)
  {
    v53 = v262;
  }

  else
  {
    v53 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v16, byte_262888D40, v17, v17, v53, v49, v50, v51);
  DgnString::~DgnString(&v262);
  *a4 += v49;
  *a5 += v50;
  *a6 += v51;
  v54 = sizeObject<BinaryIntScale>(this + 168, 0);
  v55 = sizeObject<BinaryIntScale>(this + 168, 1);
  LODWORD(v262) = 0;
  sizeObject(&v262, 2);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 980);
  if (v263)
  {
    v57 = v262;
  }

  else
  {
    v57 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v16, byte_262888D40, v17, v17, v57, v54, v55, 0);
  DgnString::~DgnString(&v262);
  *a4 += v54;
  *a5 += v55;
  v58 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 184, 0);
  v59 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 184, 1);
  v60 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 184, 3);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 982);
  if (v263)
  {
    v62 = v262;
  }

  else
  {
    v62 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v16, byte_262888D40, v17, v17, v62, v58, v59, v60);
  DgnString::~DgnString(&v262);
  *a4 += v58;
  *a5 += v59;
  *a6 += v60;
  v63 = sizeObject<AlignedArray<short>>(this + 200, 0);
  v64 = sizeObject<AlignedArray<short>>(this + 200, 1);
  v262 = 0;
  v263 = 0;
  LODWORD(v264) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v262);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 984);
  if (v263)
  {
    v66 = v262;
  }

  else
  {
    v66 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v16, byte_262888D40, v17, v17, v66, v63, v64, 0);
  DgnString::~DgnString(&v262);
  *a4 += v63;
  *a5 += v64;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v67 = 12;
  }

  else
  {
    v67 = 16;
  }

  v68 = *(this + 56);
  v69 = *(this + 57);
  v70 = v69 >= v68;
  v71 = v69 - v68;
  if (v70)
  {
    if (v68 > 0)
    {
      v72 = (v68 - 1) + v67 + 1;
    }

    else
    {
      v72 = v67;
    }

    v67 = v72 + v71;
    v68 = 0;
  }

  else
  {
    v72 = v67;
  }

  v73 = v68;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 986);
  if (v263)
  {
    v75 = v262;
  }

  else
  {
    v75 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v16, byte_262888D40, v17, v17, v75, v67, v72, v73);
  DgnString::~DgnString(&v262);
  *a4 += v67;
  *a5 += v72;
  *a6 += v73;
  v76 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v76 = 12;
  }

  v78 = *(this + 60);
  v77 = *(this + 61);
  if (v77 >= v78)
  {
    if (v78 > 0)
    {
      v79 = (v78 - 1) + v76 + 1;
    }

    else
    {
      v79 = v76;
    }

    v76 = v79 + v77 - v78;
    v78 = 0;
  }

  else
  {
    v79 = v76;
  }

  v80 = v76 + 4;
  v81 = v79 + 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 994);
  if (v263)
  {
    v83 = v262;
  }

  else
  {
    v83 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v16, byte_262888D40, v17, v17, v83, v80, v81, v78);
  DgnString::~DgnString(&v262);
  *a4 += v80;
  *a5 += v81;
  *a6 += v78;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v84 = 12;
  }

  else
  {
    v84 = 16;
  }

  v85 = *(this + 66);
  v86 = *(this + 67);
  if (v86 >= v85)
  {
    v87 = 0;
    if (v85 > 0)
    {
      v84 += 4 * (v85 - 1) + 4;
    }

    v88 = v84 + 4 * (v86 - v85);
  }

  else
  {
    v87 = 4 * v85;
    v88 = v84;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 996);
  if (v263)
  {
    v90 = v262;
  }

  else
  {
    v90 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v16, byte_262888D40, v17, v17, v90, v88, v84, v87);
  DgnString::~DgnString(&v262);
  *a4 += v88;
  *a5 += v84;
  *a6 += v87;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v91 = 12;
  }

  else
  {
    v91 = 16;
  }

  v92 = *(this + 70);
  v93 = *(this + 71);
  if (v93 >= v92)
  {
    v94 = 0;
    if (v92 > 0)
    {
      v91 += 4 * (v92 - 1) + 4;
    }

    v95 = v91 + 4 * (v93 - v92);
  }

  else
  {
    v94 = 4 * v92;
    v95 = v91;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 998);
  if (v263)
  {
    v97 = v262;
  }

  else
  {
    v97 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v16, byte_262888D40, v17, v17, v97, v95, v91, v94);
  DgnString::~DgnString(&v262);
  *a4 += v95;
  *a5 += v91;
  *a6 += v94;
  v98 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v98 = 8;
  }

  v99 = *(this + 74);
  if (v99 <= 0)
  {
    v100 = 0;
  }

  else
  {
    v100 = (2 * v99);
  }

  v101 = v98 + v100;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 999);
  if (v263)
  {
    v103 = v262;
  }

  else
  {
    v103 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v16, byte_262888D40, v17, v17, v103, v101, v101, 0);
  DgnString::~DgnString(&v262);
  *a4 += v101;
  *a5 += v101;
  v104 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v104 = 8;
  }

  v105 = *(this + 78);
  if (v105 <= 0)
  {
    v106 = 0;
  }

  else
  {
    v106 = (2 * v105);
  }

  v107 = v104 + v106;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1000);
  if (v263)
  {
    v109 = v262;
  }

  else
  {
    v109 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v16, byte_262888D40, v17, v17, v109, v107, v107, 0);
  DgnString::~DgnString(&v262);
  *a4 += v107;
  *a5 += v107;
  v110 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v110 = 8;
  }

  v111 = *(this + 82);
  if (v111 <= 0)
  {
    v112 = 0;
  }

  else
  {
    v112 = (2 * v111);
  }

  v113 = v110 + v112;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1002);
  if (v263)
  {
    v115 = v262;
  }

  else
  {
    v115 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v16, byte_262888D40, v17, v17, v115, v113, v113, 0);
  DgnString::~DgnString(&v262);
  *a4 += v113;
  *a5 += v113;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1004);
  if (v263)
  {
    v117 = v262;
  }

  else
  {
    v117 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v16, byte_262888D40, v17, v17, v117, 2, 2, 0);
  DgnString::~DgnString(&v262);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v118 = 12;
  }

  else
  {
    v118 = 16;
  }

  v119 = *(this + 88);
  v120 = *(this + 89);
  v70 = v120 >= v119;
  v121 = v120 - v119;
  if (v70)
  {
    if (v119 > 0)
    {
      v122 = (v119 - 1) + v118 + 1;
    }

    else
    {
      v122 = v118;
    }

    v118 = v122 + v121;
    v119 = 0;
  }

  else
  {
    v122 = v118;
  }

  v123 = v119;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1005);
  if (v263)
  {
    v125 = v262;
  }

  else
  {
    v125 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v124, v16, byte_262888D40, v17, v17, v125, v118, v122, v123);
  DgnString::~DgnString(&v262);
  *a4 += v118;
  *a5 += v122;
  *a6 += v123;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v126 = 12;
  }

  else
  {
    v126 = 16;
  }

  v127 = *(this + 92);
  v128 = *(this + 93);
  if (v128 >= v127)
  {
    v129 = 0;
    if (v127 > 0)
    {
      v126 += 4 * (v127 - 1) + 4;
    }

    v130 = v126 + 4 * (v128 - v127);
  }

  else
  {
    v129 = 4 * v127;
    v130 = v126;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1006);
  if (v263)
  {
    v132 = v262;
  }

  else
  {
    v132 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v131, v16, byte_262888D40, v17, v17, v132, v130, v126, v129);
  DgnString::~DgnString(&v262);
  *a4 += v130;
  *a5 += v126;
  *a6 += v129;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v133 = 12;
  }

  else
  {
    v133 = 16;
  }

  v134 = *(this + 96);
  v135 = *(this + 97);
  if (v135 >= v134)
  {
    v136 = 0;
    if (v134 > 0)
    {
      v133 += 2 * (v134 - 1) + 2;
    }

    v137 = v133 + 2 * (v135 - v134);
  }

  else
  {
    v136 = 2 * v134;
    v137 = v133;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1008);
  if (v263)
  {
    v139 = v262;
  }

  else
  {
    v139 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v16, byte_262888D40, v17, v17, v139, v137, v133, v136);
  DgnString::~DgnString(&v262);
  *a4 += v137;
  *a5 += v133;
  *a6 += v136;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1010);
  if (v263)
  {
    v141 = v262;
  }

  else
  {
    v141 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v16, byte_262888D40, v17, v17, v141, 1, 1, 0);
  DgnString::~DgnString(&v262);
  ++*a4;
  ++*a5;
  v142 = sizeObject<DgnString>(this + 400, 0);
  v143 = sizeObject<DgnString>(this + 400, 1);
  v144 = sizeObject<DgnString>(this + 400, 3);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1012);
  if (v263)
  {
    v146 = v262;
  }

  else
  {
    v146 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v16, byte_262888D40, v17, v17, v146, v142, v143, v144);
  DgnString::~DgnString(&v262);
  *a4 += v142;
  *a5 += v143;
  *a6 += v144;
  v147 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v147 = 8;
  }

  v148 = *(this + 106);
  if (v148 <= 0)
  {
    v149 = 0;
  }

  else
  {
    v149 = 4 * v148;
  }

  v150 = v149 + v147;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1014);
  if (v263)
  {
    v152 = v262;
  }

  else
  {
    v152 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v151, v16, byte_262888D40, v17, v17, v152, v150, v150, 0);
  DgnString::~DgnString(&v262);
  *a4 += v150;
  *a5 += v150;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v153 = 12;
  }

  else
  {
    v153 = 16;
  }

  v154 = *(this + 110);
  v155 = *(this + 111);
  if (v155 >= v154)
  {
    v156 = 0;
    if (v154 > 0)
    {
      v153 += 2 * (v154 - 1) + 2;
    }

    v157 = v153 + 2 * (v155 - v154);
  }

  else
  {
    v156 = 2 * v154;
    v157 = v153;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1016);
  if (v263)
  {
    v159 = v262;
  }

  else
  {
    v159 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v158, v16, byte_262888D40, v17, v17, v159, v157, v153, v156);
  DgnString::~DgnString(&v262);
  *a4 += v157;
  *a5 += v153;
  *a6 += v156;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1018);
  if (v263)
  {
    v161 = v262;
  }

  else
  {
    v161 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v160, v16, byte_262888D40, v17, v17, v161, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v162 = 12;
  }

  else
  {
    v162 = 16;
  }

  v163 = *(this + 116);
  v164 = *(this + 117);
  if (v164 >= v163)
  {
    v165 = 0;
    if (v163 > 0)
    {
      v162 += 4 * (v163 - 1) + 4;
    }

    v166 = v162 + 4 * (v164 - v163);
  }

  else
  {
    v165 = 4 * v163;
    v166 = v162;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1020);
  if (v263)
  {
    v168 = v262;
  }

  else
  {
    v168 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v167, v16, byte_262888D40, v17, v17, v168, v166, v162, v165);
  DgnString::~DgnString(&v262);
  *a4 += v166;
  *a5 += v162;
  *a6 += v165;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v169 = 12;
  }

  else
  {
    v169 = 16;
  }

  v170 = *(this + 120);
  v171 = *(this + 121);
  if (v171 >= v170)
  {
    v172 = 0;
    if (v170 > 0)
    {
      v169 += 8 * (v170 - 1) + 8;
    }

    v173 = v169 + 8 * (v171 - v170);
  }

  else
  {
    v172 = 8 * v170;
    v173 = v169;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1022);
  if (v263)
  {
    v175 = v262;
  }

  else
  {
    v175 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v174, v16, byte_262888D40, v17, v17, v175, v173, v169, v172);
  DgnString::~DgnString(&v262);
  *a4 += v173;
  *a5 += v169;
  *a6 += v172;
  v176 = *(this + 61);
  if (v176)
  {
    v261 = 0;
    v262 = 0;
    v260 = 0;
    PackingPars::printSize(v176, 0xFFFFFFFFLL, v16, &v262, &v261, &v260);
    *a4 += v262;
    *a5 += v261;
    *a6 += v260;
  }

  v257 = a6;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v177 = 4;
  }

  else
  {
    v177 = 8;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1024);
  if (v263)
  {
    v179 = v262;
  }

  else
  {
    v179 = byte_262888D40;
  }

  v258 = (a3 + 1);
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v178, v16, byte_262888D40, v17, v17, v179, v177, v177, 0);
  DgnString::~DgnString(&v262);
  *a4 += v177;
  *a5 += v177;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v180 = 12;
  }

  else
  {
    v180 = 16;
  }

  v181 = *(this + 134);
  if (v181 <= 0)
  {
    v182 = 0;
  }

  else
  {
    v182 = 6 * v181;
  }

  v183 = *(this + 135) - v181;
  v184 = sizeObject<FrameDecisionTreeHyperplane>(this + 544, 0) + v182 + v180 + 6 * v183;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v185 = 12;
  }

  else
  {
    v185 = 16;
  }

  v186 = *(this + 134);
  if (v186 <= 0)
  {
    v187 = 0;
  }

  else
  {
    v187 = 6 * v186;
  }

  v188 = sizeObject<FrameDecisionTreeHyperplane>(this + 544, 1) + v187 + v185;
  v263 = 0;
  v264 = 0;
  LODWORD(v262) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v263);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1026);
  if (v263)
  {
    v190 = v262;
  }

  else
  {
    v190 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v189, v16, byte_262888D40, v17, v17, v190, v184, v188, 0);
  DgnString::~DgnString(&v262);
  *a4 += v184;
  *a5 += v188;
  v191 = BitArray::sizeObject(this + 568, 0);
  v192 = BitArray::sizeObject(this + 568, 1);
  v193 = BitArray::sizeObject(this + 568, 3);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1028);
  if (v263)
  {
    v195 = v262;
  }

  else
  {
    v195 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v194, v16, byte_262888D40, v17, v17, v195, v191, v192, v193);
  DgnString::~DgnString(&v262);
  *a4 += v191;
  *a5 += v192;
  *v257 += v193;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v196 = 12;
  }

  else
  {
    v196 = 16;
  }

  v197 = *(this + 148);
  v198 = *(this + 149);
  if (v198 >= v197)
  {
    v199 = 0;
    if (v197 > 0)
    {
      v196 += 4 * (v197 - 1) + 4;
    }

    v200 = v196 + 4 * (v198 - v197);
  }

  else
  {
    v199 = 4 * v197;
    v200 = v196;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1031);
  if (v263)
  {
    v202 = v262;
  }

  else
  {
    v202 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v258, byte_262888D40, v17, v17, v202, v200, v196, v199);
  DgnString::~DgnString(&v262);
  *a4 += v200;
  *a5 += v196;
  *v257 += v199;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v203 = 12;
  }

  else
  {
    v203 = 16;
  }

  v204 = *(this + 152);
  v205 = *(this + 153);
  if (v205 >= v204)
  {
    v206 = 0;
    if (v204 > 0)
    {
      v203 += 2 * (v204 - 1) + 2;
    }

    v207 = v203 + 2 * (v205 - v204);
  }

  else
  {
    v206 = 2 * v204;
    v207 = v203;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1034);
  if (v263)
  {
    v209 = v262;
  }

  else
  {
    v209 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v258, byte_262888D40, v17, v17, v209, v207, v203, v206);
  DgnString::~DgnString(&v262);
  *a4 += v207;
  *a5 += v203;
  *v257 += v206;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1035);
  if (v263)
  {
    v211 = v262;
  }

  else
  {
    v211 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v210, v258, byte_262888D40, v17, v17, v211, 8, 8, 0);
  DgnString::~DgnString(&v262);
  *a4 += 8;
  *a5 += 8;
  v212 = CombineTable::sizeObject(this + 504, 0);
  v213 = CombineTable::sizeObject(this + 504, 1);
  v214 = CombineTable::sizeObject(this + 504, 3);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1037);
  if (v263)
  {
    v216 = v262;
  }

  else
  {
    v216 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v215, v258, byte_262888D40, v17, v17, v216, v212, v213, v214);
  DgnString::~DgnString(&v262);
  *a4 += v212;
  *a5 += v213;
  *v257 += v214;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1039);
  if (v263)
  {
    v218 = v262;
  }

  else
  {
    v218 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v217, v258, byte_262888D40, v17, v17, v218, 1, 1, 0);
  DgnString::~DgnString(&v262);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1040);
  if (v263)
  {
    v220 = v262;
  }

  else
  {
    v220 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v219, v258, byte_262888D40, v17, v17, v220, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  v221 = sizeObject<DgnPrimArray<unsigned int>>(this + 624, 0);
  v222 = sizeObject<DgnPrimArray<unsigned int>>(this + 624, 1);
  v262 = 0;
  v263 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v262);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1041);
  if (v263)
  {
    v224 = v262;
  }

  else
  {
    v224 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v223, v258, byte_262888D40, v17, v17, v224, v221, v222, 0);
  DgnString::~DgnString(&v262);
  *a4 += v221;
  *a5 += v222;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v225 = 12;
  }

  else
  {
    v225 = 16;
  }

  v226 = *(this + 162);
  v227 = *(this + 163);
  if (v227 >= v226)
  {
    v228 = 0;
    if (v226 > 0)
    {
      v225 += 4 * (v226 - 1) + 4;
    }

    v229 = v225 + 4 * (v227 - v226);
  }

  else
  {
    v228 = 4 * v226;
    v229 = v225;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1043);
  if (v263)
  {
    v231 = v262;
  }

  else
  {
    v231 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v230, v258, byte_262888D40, v17, v17, v231, v229, v225, v228);
  DgnString::~DgnString(&v262);
  *a4 += v229;
  *a5 += v225;
  *v257 += v228;
  v232 = sizeObject<DgnPrimArray<unsigned int>>(this + 688, 0);
  v233 = sizeObject<DgnPrimArray<unsigned int>>(this + 688, 1);
  v262 = 0;
  v263 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v262);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1044);
  if (v263)
  {
    v235 = v262;
  }

  else
  {
    v235 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v234, v258, byte_262888D40, v17, v17, v235, v232, v233, 0);
  DgnString::~DgnString(&v262);
  *a4 += v232;
  *a5 += v233;
  v236 = sizeObject<AlignedArray<unsigned char>>(this + 656, 0);
  v237 = sizeObject<AlignedArray<unsigned char>>(this + 656, 1);
  v262 = 0;
  v263 = 0;
  LODWORD(v264) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v262);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1046);
  if (v263)
  {
    v239 = v262;
  }

  else
  {
    v239 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v238, v258, byte_262888D40, v17, v17, v239, v236, v237, 0);
  DgnString::~DgnString(&v262);
  *a4 += v236;
  *a5 += v237;
  v240 = sizeObject<DgnPrimArray<unsigned int>>(this + 672, 0);
  v241 = sizeObject<DgnPrimArray<unsigned int>>(this + 672, 1);
  v262 = 0;
  v263 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v262);
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1047);
  if (v263)
  {
    v243 = v262;
  }

  else
  {
    v243 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v242, v258, byte_262888D40, v17, v17, v243, v240, v241, 0);
  DgnString::~DgnString(&v262);
  *a4 += v240;
  *a5 += v241;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1048);
  if (v263)
  {
    v245 = v262;
  }

  else
  {
    v245 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v244, v258, byte_262888D40, v17, v17, v245, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v246 = 12;
  }

  else
  {
    v246 = 16;
  }

  v247 = *(this + 178);
  v248 = *(this + 179);
  if (v248 >= v247)
  {
    v249 = 0;
    if (v247 > 0)
    {
      v246 += 2 * (v247 - 1) + 2;
    }

    v250 = v246 + 2 * (v248 - v247);
  }

  else
  {
    v249 = 2 * v247;
    v250 = v246;
  }

  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1050);
  if (v263)
  {
    v252 = v262;
  }

  else
  {
    v252 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v251, v258, byte_262888D40, v17, v17, v252, v250, v246, v249);
  DgnString::~DgnString(&v262);
  *a4 += v250;
  *a5 += v246;
  *v257 += v249;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1052);
  if (v263)
  {
    v254 = v262;
  }

  else
  {
    v254 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v253, v258, byte_262888D40, v17, v17, v254, 4, 4, 0);
  DgnString::~DgnString(&v262);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v262, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1053);
  if (v263)
  {
    v256 = v262;
  }

  else
  {
    v256 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v255, v259, byte_262888D40, (35 - v259), (35 - v259), v256, *a4, *a5, *v257);
  DgnString::~DgnString(&v262);
}

void sub_2626DFC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<BinaryIntScale>(uint64_t a1, int a2)
{
  v11 = 0;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = v4;
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      v9 = 4 * v7 - 4;
      do
      {
        v5 += sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 4;
      }

      while (v8 > 1);
    }

    if (!a2)
    {
      v5 += v6 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

uint64_t sizeObject<AlignedArray<short>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
      goto LABEL_11;
    }

    v6 = *(a1 + 8);
    if (v6 < 1)
    {
      v2 = v3;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v6 + 1;
      v8 = 24 * v6 - 24;
      v2 = v3;
      do
      {
        v2 += sizeObject<unsigned short>(*a1 + v8, a2) + 4;
        --v7;
        v8 -= 24;
      }

      while (v7 > 1);
      if (a2)
      {
        goto LABEL_11;
      }
    }

    v2 += (v3 + 4) * (*(a1 + 12) - *(a1 + 8));
  }

LABEL_11:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

void sub_2626DFF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<AlignedArray<unsigned char>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
      goto LABEL_11;
    }

    v6 = *(a1 + 8);
    if (v6 < 1)
    {
      v2 = v3;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v6 + 1;
      v8 = 24 * v6 - 24;
      v2 = v3;
      do
      {
        v2 += sizeObject<unsigned char>(*a1 + v8, a2) + 4;
        --v7;
        v8 -= 24;
      }

      while (v7 > 1);
      if (a2)
      {
        goto LABEL_11;
      }
    }

    v2 += (v3 + 4) * (*(a1 + 12) - *(a1 + 8));
  }

LABEL_11:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

void sub_2626E002C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

int *readSharedObject<unsigned char>(DgnSharedMemStream *a1, uint64_t a2, _DWORD *a3)
{
  v13 = 0;
  result = readObject(a1, &v13, a3);
  v7 = v13;
  if (v13)
  {
    result = DgnSharedMemStream::readSharedBytes(a1, v13);
    v8 = result;
    v9 = v13;
    if (*(a2 + 8) <= *(a2 + 12))
    {
      result = *a2;
      if (*a2)
      {
        result = MemChunkFree(result, 0);
      }

      *(a2 + 12) = 0;
    }

    *(a2 + 8) = v9;
    *a2 = v8;
    if (v7 + 3 >= 4)
    {
      v10 = 0;
      v11 = (v7 + 3) >> 2;
      do
      {
        v12 = *v8++;
        v10 ^= v12;
        --v11;
      }

      while (v11);
    }

    else
    {
      v10 = 0;
    }

    *a3 ^= v10;
  }

  else
  {
    if (*(a2 + 8) <= *(a2 + 12))
    {
      result = *a2;
      if (*a2)
      {
        result = MemChunkFree(result, 0);
      }

      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
    *a2 = 0;
  }

  return result;
}

void PelMgr::packRawMixtureComponent(uint64_t result, uint64_t a2, int **a3, unsigned int **a4)
{
  v4 = *(result + 12);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      PelMgr::packQuantPerDimRawMixtureComponent(result, a2, a3, a4);
    }

    else if (v4 == 2)
    {
      PelMgr::packFloatRawMixtureComponent(result, a2, a3, a4);
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      PelMgr::packPackedIntRawMixtureComponent(result, a2, a3, a4);
    }
  }

  else
  {
    PelMgr::packMulTableRawMixtureComponent(result, a2, a3, a4);
  }
}

uint64_t PelMgr::packRawMixtureComponent(uint64_t result, float *a2, int a3, unsigned int **a4, int **a5, char a6, double a7, double a8, double a9, double a10)
{
  v10 = *(result + 12);
  if (v10 == 1)
  {
    return PelMgr::packPackedIntRawMixtureComponent(result, a2, a3, a4, a5, a6);
  }

  if (v10 == 2)
  {
    return PelMgr::packFloatRawMixtureComponent(result, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  return result;
}

BOOL PelMgr::getComponentByIndex(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 136);
  if (v5 > a2)
  {
    v6 = *(*(a1 + 432) + 2 * a2);
    PelMgr::unpackRawMixtureComponent(a1, *(a1 + 232) + *(a1 + 248) + *(*(a1 + 256) + 4 * v6) + *(a1 + 148) * (a2 - *(*(a1 + 272) + 4 * v6)), a3, a4);
  }

  return v5 > a2;
}

{
  v5 = *(a1 + 136);
  if (v5 > a2)
  {
    v6 = *(*(a1 + 432) + 2 * a2);
    PelMgr::unpackRawMixtureComponent(a1, (*(a1 + 232) + *(a1 + 248) + *(*(a1 + 256) + 4 * v6) + *(a1 + 148) * (a2 - *(*(a1 + 272) + 4 * v6))), a3, a4);
  }

  return v5 > a2;
}

void PelMgr::unpackRawMixtureComponent(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 3);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      PelMgr::unpackQuantPerDimRawMixtureComponent(result, a2, a3, a4);
    }

    else if (v4 == 2)
    {
      PelMgr::unpackFloatRawMixtureComponent(result, a2, a3, a4);
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      PelMgr::unpackPackedIntRawMixtureComponent(result, a2, a3, a4);
    }
  }

  else
  {
    PelMgr::unpackMulTableRawMixtureComponent(result, a2, a3, a4);
  }
}

uint64_t *PelMgr::unpackRawMixtureComponent(uint64_t *result, float *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 3);
  if (v4 == 1)
  {
    return PelMgr::unpackPackedIntRawMixtureComponent(result, a2, a3, a4);
  }

  if (v4 == 2)
  {
    return PelMgr::unpackFloatRawMixtureComponent(result, a2, a3, a4);
  }

  return result;
}

void (***PelMgr::savePelMgrBinary(PelMgr *this, DFile *a2, DFileChecksums *a3, uint64_t a4, DgnSharedMemStream *a5))(void)
{
  v9 = a5;
  if (a2)
  {
    v9 = OpenAndWriteMrecHeader(a2, 0x2Au, a4, "MRMPB!? ", 24, 24);
  }

  v18 = 0;
  writeObject(v9, this + 2, &v18);
  v10 = 1;
  if (*(this + 4) == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v17 = v11;
  writeObject(v9, &v17, &v18);
  v12 = *(this + 3);
  if (v12 <= 3)
  {
    v10 = dword_262888D30[v12];
  }

  v16 = v10;
  writeObject(v9, &v16, &v18);
  writeObject(v9, this + 5, &v18);
  writeObject(v9, this + 32, &v18);
  v13 = (this + 132);
  if (a2)
  {
    writeObject(v9, v13, &v18);
    writeObject(v9, this + 34, &v18);
    writeObject(v9, this + 35, &v18);
    writeObject(v9, this + 36, &v18);
    writeObject(v9, this + 37, &v18);
    AlignedArray<unsigned char>::writeObject(this + 232, v9, &v18);
    writeObject<unsigned int>(v9, this + 256, &v18);
    writeObject<unsigned int>(v9, this + 272, &v18);
    writeObject<unsigned short>(v9, this + 288, &v18);
    writeObject<unsigned char>(v9, this + 344, &v18);
    writeObject<unsigned int>(v9, this + 360, &v18);
    writeObject<unsigned short>(v9, this + 376, &v18);
    writeObject(v9, this + 392, &v18);
    writeObject<DgnString>(v9, this + 400, &v18);
    writeObject<unsigned int>(v9, this + 416, &v18);
    writeObject(v9, this + 38, &v18);
    writeObject(v9, this + 40, &v18);
    writeObject<DgnArray<DgnPrimArray<int>>>(v9, this + 184, &v18);
    writeObject(v9, this + 41, &v18);
    writeObject<BinaryIntScale>(v9, this + 168, &v18);
    writeObject(v9, this + 39, &v18);
    writeObject<AlignedArray<short>>(v9, this + 200, &v18);
    FrameDecisionTree::writeObject(this + 528, v9, &v18);
    writeObject(v9, this + 568, &v18);
    writeObject<unsigned int>(v9, this + 584, &v18);
    writeObject<unsigned short>(v9, this + 600, &v18);
    writeObject(v9, this + 155, &v18);
    writeObject<DgnPrimArray<unsigned int>>(v9, this + 624, &v18);
    writeObject<unsigned int>(v9, this + 640, &v18);
    writeObject<DgnPrimArray<unsigned int>>(v9, this + 688, &v18);
    writeObject<AlignedArray<unsigned char>>(v9, this + 656, &v18);
    writeObject<DgnPrimArray<unsigned int>>(v9, this + 672, &v18);
    writeObject(v9, this + 6, &v18);
    writeObject(v9, this + 7, &v18);
    writeObject(v9, this + 8, &v18);
    writeObject(v9, this + 9, &v18);
    writeObject(v9, this + 10, &v18);
    writeObject<unsigned char>(v9, this + 48, &v18);
    writeObject<unsigned char>(v9, this + 64, &v18);
    writeObject<unsigned char>(v9, this + 80, &v18);
    writeObject<unsigned char>(v9, this + 96, &v18);
    writeObject<unsigned char>(v9, this + 112, &v18);
    writeObjectChecksum(v9, &v18);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 42, v18);
    return DgnDelete<DgnStream>(v9);
  }

  else
  {
    writeObject(a5, v13, &v18);
    writeObject(a5, this + 34, &v18);
    writeObject(a5, this + 35, &v18);
    writeObject(a5, this + 36, &v18);
    writeObject(a5, this + 37, &v18);
    AlignedArray<unsigned char>::writeSharedObject(this + 232, a5, &v18);
    writeSharedObject<unsigned int>(a5, this + 256, &v18);
    writeSharedObject<unsigned int>(a5, this + 272, &v18);
    writeObject<unsigned short>(a5, this + 288, &v18);
    writeSharedObject<unsigned char>(a5, this + 344, &v18);
    writeSharedObject<unsigned int>(a5, this + 360, &v18);
    writeSharedObject<short>(a5, this + 376, &v18);
    writeObject(a5, this + 392, &v18);
    writeObject<DgnString>(a5, this + 400, &v18);
    writeObject<unsigned int>(a5, this + 416, &v18);
    writeObject(a5, this + 38, &v18);
    writeObject(a5, this + 40, &v18);
    writeObject<DgnArray<DgnPrimArray<int>>>(a5, this + 184, &v18);
    writeObject(a5, this + 41, &v18);
    writeObject<BinaryIntScale>(a5, this + 168, &v18);
    writeObject(a5, this + 39, &v18);
    writeObject<AlignedArray<short>>(a5, this + 200, &v18);
    FrameDecisionTree::writeObject(this + 528, a5, &v18);
    writeSharedObject(a5, (this + 568), &v18);
    writeSharedObject<unsigned int>(a5, this + 584, &v18);
    writeSharedObject<short>(a5, this + 600, &v18);
    writeObject(a5, this + 155, &v18);
    writeObject<DgnPrimArray<unsigned int>>(a5, this + 624, &v18);
    writeObject<unsigned int>(a5, this + 640, &v18);
    writeObject<DgnPrimArray<unsigned int>>(a5, this + 688, &v18);
    writeObject<AlignedArray<unsigned char>>(a5, this + 656, &v18);
    writeObject<DgnPrimArray<unsigned int>>(a5, this + 672, &v18);
    writeObject(a5, this + 6, &v18);
    writeObject(a5, this + 7, &v18);
    writeObject(a5, this + 8, &v18);
    writeObject(a5, this + 9, &v18);
    writeObject(a5, this + 10, &v18);
    writeSharedObject<unsigned char>(a5, this + 48, &v18);
    writeSharedObject<unsigned char>(a5, this + 64, &v18);
    writeSharedObject<unsigned char>(a5, this + 80, &v18);
    writeSharedObject<unsigned char>(a5, this + 96, &v18);
    writeSharedObject<unsigned char>(a5, this + 112, &v18);
    writeObject(v9, this + 184, &v18);
    return writeObjectChecksum(v9, &v18);
  }
}

uint64_t writeObject<DgnArray<DgnPrimArray<int>>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<DgnPrimArray<unsigned int>>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<BinaryIntScale>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, (*a2 + v7), a3);
      ++v8;
      v7 += 4;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<AlignedArray<short>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = AlignedArray<short>::writeObject(*a2 + v7, a1, a3);
      ++v8;
      v7 += 24;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<AlignedArray<unsigned char>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = AlignedArray<unsigned char>::writeObject(*a2 + v7, a1, a3);
      ++v8;
      v7 += 24;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

char *writeSharedObject<unsigned char>(DgnSharedMemStream *a1, uint64_t a2, _DWORD *a3)
{
  v14 = *(a2 + 8);
  result = writeObject(a1, &v14, a3);
  v8 = v14;
  if (v14)
  {
    result = DgnSharedMemStream::writeSharedBytes(a1, *a2, v14, v7);
    if (result)
    {
      v9 = result;
      v10 = v14;
      if (*(a2 + 8) <= *(a2 + 12))
      {
        result = *a2;
        if (*a2)
        {
          result = MemChunkFree(result, 0);
        }

        *(a2 + 12) = 0;
      }

      *(a2 + 8) = v10;
      *a2 = v9;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 + 3 >= 4)
    {
      v11 = 0;
      v12 = (v8 + 3) >> 2;
      do
      {
        v13 = *v9;
        v9 += 4;
        v11 ^= v13;
        --v12;
      }

      while (v12);
    }

    else
    {
      v11 = 0;
    }

    *a3 ^= v11;
  }

  return result;
}

uint64_t PelMgr::savePelMgrText(PelMgr *this, DFile *a2, int a3)
{
  v7 = *(this + 33);
  v143 = 0;
  v144 = 0;
  if (v7)
  {
    v134[0] = 0;
    HIDWORD(v144) = realloc_array(0, v134, 4 * v7, 0, 0, 1) >> 2;
    v143 = v134[0];
  }

  LODWORD(v144) = v7;
  v8 = *(this + 4);
  if (v8)
  {
    LODWORD(v9) = 0;
    v141 = 0;
    v142 = 0;
  }

  else
  {
    v9 = *(this + 33);
    v141 = 0;
    v142 = 0;
    if (!v9)
    {
      v8 = 0;
      LODWORD(v142) = 0;
      goto LABEL_12;
    }

    v134[0] = 0;
    HIDWORD(v142) = realloc_array(0, v134, 4 * v9, 0, 0, 1) >> 2;
    v141 = v134[0];
    v8 = *(this + 4);
  }

  LODWORD(v142) = v9;
  if (v8 != 1)
  {
LABEL_12:
    LODWORD(v10) = 0;
    v139 = 0;
    v140 = 0;
    goto LABEL_13;
  }

  v10 = *(this + 38);
  v139 = 0;
  v140 = 0;
  if (!v10)
  {
    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    goto LABEL_14;
  }

  v134[0] = 0;
  HIDWORD(v140) = realloc_array(0, v134, 4 * v10, 0, 0, 1) >> 2;
  v139 = v134[0];
  v8 = *(this + 4);
LABEL_13:
  LODWORD(v140) = v10;
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  if (v8)
  {
LABEL_14:
    v12 = *(this + 33);
    v11 = *(this + 34);
    v13 = v12 * v11;
    if (v12 * v11)
    {
      v134[0] = 0;
      HIDWORD(v138) = realloc_array(0, v134, (v12 * v11), 0, 0, 1);
      v137 = v134[0];
      v11 = *(this + 34);
      v14 = HIDWORD(v136);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v136;
    LODWORD(v138) = v13;
    v17 = *(this + 38) * v11;
    if (v14 < v17)
    {
      v134[0] = 0;
      HIDWORD(v136) = realloc_array(v135, v134, 4 * v17, 4 * v136, 4 * v136, 1) >> 2;
      v135 = v134[0];
    }

    goto LABEL_21;
  }

  v15 = &v138;
  v16 = *(this + 34) * *(this + 33);
  v17 = 2 * v16;
  if (2 * v16)
  {
    v134[0] = 0;
    HIDWORD(v138) = realloc_array(0, v134, (2 * v16), 0, 0, 1);
    v137 = v134[0];
  }

LABEL_21:
  *v15 = v17;
  v18 = *(this + 35);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    for (i = 0; i < v18; ++i)
    {
      v22 = *(*(this + 34) + 4 * i);
      v23 = *(*(this + 34) + 4 * i + 4);
      v24 = v23 - v22;
      if (v23 != v22)
      {
        v25 = 0;
        v26 = *(this + 29) + *(this + 62) + *(*(this + 32) + 4 * i);
        v27 = *(this + 4);
        do
        {
          v28 = (*(this + 37) * v25);
          if (v27)
          {
            PelMgr::unpackRawMixtureComponent(this, (v26 + v28), &v143, &v139);
          }

          else
          {
            PelMgr::unpackRawMixtureComponent(this, v26 + v28, &v143, &v141);
          }

          if (*(this + 33))
          {
            v29 = 0;
            v30 = v19;
            do
            {
              v19 = v30 + 1;
              v137[v30] = v143[v29];
              if (!*(this + 4))
              {
                v137[v19] = v141[v29];
                v19 = v30 + 2;
              }

              ++v29;
              v30 = v19;
            }

            while (v29 < *(this + 33));
          }

          v27 = *(this + 4);
          if (v27 == 1 && *(this + 38))
          {
            v31 = 0;
            v32 = v139;
            v33 = v135;
            do
            {
              *(v33 + (v20 + v31)) = v32[v31];
              ++v31;
            }

            while (v31 < *(this + 38));
            v20 += v31;
          }

          ++v25;
        }

        while (v25 != v24);
        v18 = *(this + 35);
      }
    }
  }

  DgnTextFileWriter::DgnTextFileWriter(v134);
  DgnTextFileWriter::openDgnTextFileWriter(v134, a2, 38, 0);
  v132 = 0;
  v133 = 0;
  DgnTextFile::legalDgnTextFileVersions(v134, sMCT_Versions, &v132);
  DgnTextFileWriter::setFileType(v134, "MixtureComponentText", (v132 + 8 * (v133 - 1)));
  v34 = *(this + 4);
  if (v34)
  {
    if (v34 != 1)
    {
      goto LABEL_46;
    }

    v35 = "MixtureOfInverseCovarianceMatrices";
  }

  else
  {
    v35 = "DiagonalCovarianceMatrix";
  }

  DgnTextFileWriter::setHeaderField(v134, "PrecisionModelingType", v35);
LABEL_46:
  DgnTextFileWriter::setHeaderFieldUnsigned(v134, "ModelDimension", *(this + 33));
  DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfMixtureComponents", *(this + 34));
  v36 = *(this + 3);
  if (v36 <= 3)
  {
    DgnTextFileWriter::setHeaderField(v134, "ComponentScoringType", off_279B3BFA8[v36]);
  }

  if (!*(this + 4))
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "MinimumScaledDev", *(this + 32));
  }

  if (*(this + 3) == 3)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumMeanValueQuantLevels", *(this + 6));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumDevValueQuantLevels", *(this + 7));
  }

  DgnArray<DgnString>::DgnArray(v129, 4);
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v37 = realloc_array(0, &v125, 0x10uLL, 0, 0, 1);
  v127 = v125;
  LODWORD(v128) = 4;
  HIDWORD(v128) = v37 >> 2;
  DgnString::operator=(*v129, "TableName");
  *v127 = 0;
  DgnString::operator=((*v129 + 16), "Index1");
  v127[1] = 3;
  DgnString::operator=((*v129 + 32), "Index2");
  v127[2] = 3;
  DgnString::operator=((*v129 + 48), "Value1");
  v127[3] = 3;
  if (*(this + 4))
  {
    v38 = -1;
  }

  else
  {
    DgnString::DgnString(&v125, "Value2");
    v39 = v130;
    if (v130 == v131)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v129, 1, 1);
      v39 = v130;
    }

    DgnString::DgnString((*v129 + 16 * v39), &v125);
    ++v130;
    DgnString::~DgnString(&v125);
    v40 = v128;
    if (v128 == HIDWORD(v128))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v127, 1, 1);
      v40 = v128;
    }

    v127[v40] = 3;
    LODWORD(v128) = v40 + 1;
    v38 = 4;
  }

  DgnTextFileWriter::setLineFieldFormat(v134, &v127, v129);
  if (*(this + 3) == 3)
  {
    PelMgr::saveQuantPerDimTableText(this, v134, 0, 1u, 2u, 3u, v38, "MeanQuantTable", *(this + 6), this + 6);
    PelMgr::saveQuantPerDimTableText(this, v134, 0, 1u, 2u, 3u, v38, "DevQuantTable", *(this + 7), this + 8);
  }

  v41 = *(this + 34);
  if (v41)
  {
    v42 = 0;
    v43 = 0;
    v44 = *(this + 33);
    do
    {
      if (v44)
      {
        for (j = 0; j < v44; ++j)
        {
          DgnTextFileWriter::setLineFieldValue(v134, 0, "Component");
          DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v43);
          DgnTextFileWriter::setLineFieldUnsignedValue(v134, 2u, j);
          DgnTextFileWriter::setLineFieldUnsignedValue(v134, 3u, v137[v42]);
          if (*(this + 4))
          {
            ++v42;
          }

          else
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v134, v38, v137[v42 + 1]);
            v42 += 2;
          }

          DgnTextFileWriter::writeNextLine(v134);
          v44 = *(this + 33);
        }

        v41 = *(this + 34);
      }

      ++v43;
    }

    while (v43 < v41);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v127);
  DgnArray<DgnString>::releaseAll(v129);
  DgnIArray<Utterance *>::~DgnIArray(&v132);
  DgnTextFileWriter::~DgnTextFileWriter(v134);
  if (*(this + 4) == 1)
  {
    DgnTextFileWriter::DgnTextFileWriter(v134);
    DgnTextFileWriter::openDgnTextFileWriter(v134, a2, 5, a3);
    v132 = 0;
    v133 = 0;
    DgnTextFile::legalDgnTextFileVersions(v134, sBMT_Versions, &v132);
    DgnTextFileWriter::setFileType(v134, "MixtureComponentBasisMatrixText", (v132 + 8 * (v133 - 1)));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "ModelDimension", *(this + 33));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfBasisMatrices", *(this + 38));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "BMTIntScale", 1 << *(this + 40));
    DgnArray<DgnString>::DgnArray(v129, 4);
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v46 = realloc_array(0, &v125, 0x10uLL, 0, 0, 1);
    v127 = v125;
    LODWORD(v128) = 4;
    HIDWORD(v128) = v46 >> 2;
    DgnString::operator=(*v129, "BasisMatrixIndex");
    *v127 = 3;
    DgnString::operator=((*v129 + 16), "RowIndex");
    v127[1] = 3;
    DgnString::operator=((*v129 + 32), "ColumnIndex");
    v127[2] = 3;
    DgnString::operator=((*v129 + 48), "Value");
    v127[3] = 1;
    DgnTextFileWriter::setLineFieldFormat(v134, &v127, v129);
    v47 = *(this + 38);
    if (v47)
    {
      v48 = 0;
      v49 = *(this + 33);
      v50 = v49;
      do
      {
        if (v50)
        {
          v51 = 0;
          do
          {
            if (v49)
            {
              for (k = 0; k < v49; ++k)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v134, 0, v48);
                DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v51);
                DgnTextFileWriter::setLineFieldUnsignedValue(v134, 2u, k);
                DgnTextFileWriter::setLineFieldIntegerValue(v134, 3u, *(*(*(*(this + 23) + 16 * v48) + 16 * v51) + 4 * k));
                DgnTextFileWriter::writeNextLine(v134);
                v49 = *(this + 33);
              }
            }

            ++v51;
          }

          while (v51 < v49);
          v47 = *(this + 38);
          v50 = v49;
        }

        ++v48;
      }

      while (v48 < v47);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v127);
    DgnArray<DgnString>::releaseAll(v129);
    DgnIArray<Utterance *>::~DgnIArray(&v132);
    DgnTextFileWriter::~DgnTextFileWriter(v134);
    DgnTextFileWriter::DgnTextFileWriter(v134);
    DgnTextFileWriter::openDgnTextFileWriter(v134, a2, 2, 0);
    v132 = 0;
    v133 = 0;
    DgnTextFile::legalDgnTextFileVersions(v134, sBCT_Versions, &v132);
    DgnTextFileWriter::setFileType(v134, "MixtureComponentBasisCoefficientText", (v132 + 8 * (v133 - 1)));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "ModelDimension", *(this + 33));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfMixtureComponents", *(this + 34));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfBasisMatrices", *(this + 38));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "BCTIntScale", 1 << *(this + 41));
    DgnArray<DgnString>::DgnArray(v129, 3);
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v53 = realloc_array(0, &v125, 0xCuLL, 0, 0, 1);
    v127 = v125;
    LODWORD(v128) = 3;
    HIDWORD(v128) = v53 >> 2;
    DgnString::operator=(*v129, "ComponentIndex");
    *v127 = 3;
    DgnString::operator=((*v129 + 16), "BasisMatrixIndex");
    v127[1] = 3;
    DgnString::operator=((*v129 + 32), "BasisCoefficient");
    v127[2] = 1;
    DgnTextFileWriter::setLineFieldFormat(v134, &v127, v129);
    v54 = *(this + 34);
    if (v54)
    {
      v55 = 0;
      v56 = *(this + 38);
      v57 = v56;
      do
      {
        if (v57)
        {
          v58 = 0;
          do
          {
            if (*(v135 + v58 + v55 * v57))
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v134, 0, v55);
              DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v58);
              DgnTextFileWriter::setLineFieldIntegerValue(v134, 2u, *(v135 + v58 + v55 * *(this + 38)));
              DgnTextFileWriter::writeNextLine(v134);
              v56 = *(this + 38);
            }

            ++v58;
            v57 = v56;
          }

          while (v58 < v56);
          v54 = *(this + 34);
          v57 = v56;
        }

        ++v55;
      }

      while (v55 < v54);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v127);
    DgnArray<DgnString>::releaseAll(v129);
    DgnIArray<Utterance *>::~DgnIArray(&v132);
    DgnTextFileWriter::~DgnTextFileWriter(v134);
  }

  DgnTextFileWriter::DgnTextFileWriter(v134);
  DgnTextFileWriter::openDgnTextFileWriter(v134, a2, 39, a3);
  v132 = 0;
  v133 = 0;
  DgnTextFile::legalDgnTextFileVersions(v134, sMGT_Versions, &v132);
  DgnTextFileWriter::setFileType(v134, "MixtureGenoneText", (v132 + 8 * (v133 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfMixtureComponents", *(this + 34));
  DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfGenones", *(this + 35));
  DgnArray<DgnString>::DgnArray(v129, 3);
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v59 = realloc_array(0, &v125, 0xCuLL, 0, 0, 1);
  v127 = v125;
  LODWORD(v128) = 3;
  HIDWORD(v128) = v59 >> 2;
  DgnString::operator=(*v129, "GenId");
  *v127 = 3;
  DgnString::operator=((*v129 + 16), "StartComponentIndex");
  v127[1] = 3;
  DgnString::operator=((*v129 + 32), "NumberOfComponents");
  v127[2] = 3;
  DgnTextFileWriter::setLineFieldFormat(v134, &v127, v129);
  if (*(this + 35))
  {
    v60 = 0;
    do
    {
      v61 = (*(this + 34) + 4 * v60);
      v63 = *v61;
      v62 = v61[1];
      DgnTextFileWriter::setLineFieldUnsignedValue(v134, 0, v60);
      DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, *(*(this + 34) + 4 * v60));
      DgnTextFileWriter::setLineFieldUnsignedValue(v134, 2u, v62 - v63);
      DgnTextFileWriter::writeNextLine(v134);
      ++v60;
    }

    while (v60 < *(this + 35));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v127);
  DgnArray<DgnString>::releaseAll(v129);
  DgnIArray<Utterance *>::~DgnIArray(&v132);
  DgnTextFileWriter::~DgnTextFileWriter(v134);
  DgnTextFileWriter::DgnTextFileWriter(v134);
  DgnTextFileWriter::openDgnTextFileWriter(v134, a2, 43, a3);
  v132 = 0;
  v133 = 0;
  DgnTextFile::legalDgnTextFileVersions(v134, sMPT_Versions, &v132);
  DgnTextFileWriter::setFileType(v134, "MixturePelText", (v132 + 8 * (v133 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfGenones", *(this + 35));
  DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfPels", *(this + 36));
  if (*(this + 392))
  {
    v64 = 0;
  }

  else
  {
    v64 = *(this + 102);
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfPelStatClasses", v64);
  DgnTextFileWriter::setHeaderFieldUnsigned(v134, "AdaptationAccumulatorScale", *(this + 5));
  DgnArray<DgnString>::DgnArray(v129, 5);
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v65 = realloc_array(0, &v125, 0x14uLL, 0, 0, 1);
  v121 = a3;
  v122 = a2;
  v127 = v125;
  LODWORD(v128) = 5;
  HIDWORD(v128) = v65 >> 2;
  DgnString::operator=(*v129, "PelId");
  *v127 = 3;
  DgnString::operator=((*v129 + 16), "GenId");
  v127[1] = 3;
  DgnString::operator=((*v129 + 32), "GenoneComponentIndex");
  v127[2] = 3;
  DgnString::operator=((*v129 + 48), "MixtureWeight");
  v127[3] = 3;
  DgnString::operator=((*v129 + 64), "BackoffPelId");
  v127[4] = 1;
  if (*(this + 392))
  {
    v66 = -1;
  }

  else
  {
    DgnString::DgnString(&v125, "StatClassName");
    v67 = v130;
    if (v130 == v131)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v129, 1, 1);
      v67 = v130;
    }

    DgnString::DgnString((*v129 + 16 * v67), &v125);
    ++v130;
    DgnString::~DgnString(&v125);
    v68 = v128;
    if (v128 == HIDWORD(v128))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v127, 1, 1);
      v68 = v128;
    }

    v127[v68] = 0;
    LODWORD(v128) = v68 + 1;
    v66 = 5;
  }

  DgnTextFileWriter::setLineFieldFormat(v134, &v127, v129);
  v69 = *(this + 36);
  if (v69)
  {
    v70 = 0;
    v71 = 0;
    do
    {
      v72 = v71;
      v75 = (*(this + 57) + 4 * v71);
      v73 = *v75;
      v74 = v75[1];
      v76 = v74 - v73;
      if (v74 != v73)
      {
        v77 = 0;
        v78 = *(*(this + 36) + 2 * v72);
        v79 = *(this + 43) + v73;
        do
        {
          DgnTextFileWriter::setLineFieldUnsignedValue(v134, 0, v70);
          DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v78);
          DgnTextFileWriter::setLineFieldUnsignedValue(v134, 2u, v77);
          DgnTextFileWriter::setLineFieldUnsignedValue(v134, 3u, *(v79 + v77));
          if (*(*(this + 47) + 2 * v72) == 0xFFFF)
          {
            v80 = -1;
          }

          else
          {
            v80 = *(*(this + 47) + 2 * v72);
          }

          DgnTextFileWriter::setLineFieldIntegerValue(v134, 4u, v80);
          if ((*(this + 392) & 1) == 0)
          {
            v81 = *(this + 50) + 16 * *(*(this + 52) + 4 * v72);
            if (*(v81 + 8))
            {
              v82 = *v81;
            }

            else
            {
              v82 = byte_262888D40;
            }

            DgnTextFileWriter::setLineFieldValue(v134, v66, v82);
          }

          DgnTextFileWriter::writeNextLine(v134);
          ++v77;
        }

        while (v76 != v77);
        v69 = *(this + 36);
      }

      v71 = v72 + 1;
      v70 = (v72 + 1);
    }

    while (v69 > v70);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v127);
  DgnArray<DgnString>::releaseAll(v129);
  DgnIArray<Utterance *>::~DgnIArray(&v132);
  DgnTextFileWriter::~DgnTextFileWriter(v134);
  v83 = v122;
  if (*(this + 268))
  {
    DgnTextFileWriter::DgnTextFileWriter(v134);
    DgnTextFileWriter::openDgnTextFileWriter(v134, v122, 44, v121);
    v132 = 0;
    v133 = 0;
    DgnTextFile::legalDgnTextFileVersions(v134, sMST_Versions, &v132);
    DgnTextFileWriter::setFileType(v134, "MixtureShortListText", (v132 + 8 * (v133 - 1)));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfGenones", *(this + 35));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfTreeNodes", *(this + 268));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "ModelDimension", *(this + 33));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumberOfHyperplanes", *(this + 276));
    DgnArray<DgnString>::DgnArray(v129, 6);
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v84 = realloc_array(0, &v125, 0x18uLL, 0, 0, 1);
    v127 = v125;
    LODWORD(v128) = 6;
    HIDWORD(v128) = v84 >> 2;
    DgnString::operator=(*v129, "TableName");
    *v127 = 0;
    DgnString::operator=((*v129 + 16), "UnsValue1");
    v127[1] = 3;
    DgnString::operator=((*v129 + 32), "IntValue1");
    v127[2] = 1;
    DgnString::operator=((*v129 + 48), "IntValue2");
    v127[3] = 1;
    DgnString::operator=((*v129 + 64), "UnsValue2");
    v127[4] = 3;
    DgnString::operator=((*v129 + 80), "StrValue1");
    v127[5] = 0;
    DgnTextFileWriter::setLineFieldFormat(v134, &v127, v129);
    if (*(this + 276))
    {
      v85 = 0;
      v86 = 0;
      do
      {
        DgnTextFileWriter::setLineFieldValue(v134, 0, "HyperplaneConstant");
        DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v86);
        DgnTextFileWriter::setLineFieldIntegerValue(v134, 2u, *(*(this + 68) + v85));
        DgnTextFileWriter::setLineFieldIntegerValue(v134, 3u, -1);
        DgnTextFileWriter::setLineFieldUnsignedValue(v134, 4u, 0);
        DgnTextFileWriter::setLineFieldValue(v134, 5u, byte_262888D40);
        DgnTextFileWriter::writeNextLine(v134);
        ++v86;
        v87 = *(this + 276);
        v85 += 24;
      }

      while (v86 < v87);
      if (*(this + 276))
      {
        v88 = 0;
        v89 = *(this + 33);
        do
        {
          if (v89)
          {
            v90 = 0;
            v91 = 0;
            do
            {
              DgnTextFileWriter::setLineFieldValue(v134, 0, "HyperplaneCoefficient");
              DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v88);
              DgnTextFileWriter::setLineFieldIntegerValue(v134, 2u, v90);
              DgnTextFileWriter::setLineFieldIntegerValue(v134, 3u, *(*(*(this + 68) + 24 * v88 + 8) + 4 * v91));
              DgnTextFileWriter::setLineFieldUnsignedValue(v134, 4u, 0);
              DgnTextFileWriter::setLineFieldValue(v134, 5u, byte_262888D40);
              DgnTextFileWriter::writeNextLine(v134);
              v90 = ++v91;
              v89 = *(this + 33);
            }

            while (v89 > v91);
            LOWORD(v87) = *(this + 276);
          }

          ++v88;
        }

        while (v88 < v87);
      }
    }

    if (*(this + 268))
    {
      v92 = 0;
      v93 = 0;
      do
      {
        DgnTextFileWriter::setLineFieldValue(v134, 0, "FrameDecisionTree");
        DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v93);
        DgnTextFileWriter::setLineFieldIntegerValue(v134, 2u, *(*(this + 66) + v92));
        DgnTextFileWriter::setLineFieldIntegerValue(v134, 3u, *(*(this + 66) + v92 + 2));
        DgnTextFileWriter::setLineFieldUnsignedValue(v134, 4u, *(*(this + 66) + v92 + 4));
        DgnTextFileWriter::setLineFieldValue(v134, 5u, byte_262888D40);
        DgnTextFileWriter::writeNextLine(v134);
        ++v93;
        v92 += 6;
      }

      while (v93 < *(this + 268));
    }

    v94 = *(this + 35);
    if (v94)
    {
      v95 = 0;
      v96 = 0;
      do
      {
        v97 = v96;
        if (*(this + 268))
        {
          v98 = 0;
          v99 = *(*(this + 34) + 4 * v96 + 4) - *(*(this + 34) + 4 * v96);
          v100 = (*(this + 268) + 1) >> 1;
          v101 = v100 * v95;
          do
          {
            DgnTextFileWriter::setLineFieldValue(v134, 0, "ShortList");
            DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v95);
            DgnTextFileWriter::setLineFieldIntegerValue(v134, 2u, v98);
            DgnTextFileWriter::setLineFieldIntegerValue(v134, 3u, v99);
            DgnTextFileWriter::setLineFieldUnsignedValue(v134, 4u, 0);
            DgnString::DgnString(&v125, 48, v99);
            v102 = *(*(this + 73) + 4 * v97) + v99 * *(*(this + 75) + 2 * v98 + 2 * v101);
            v103 = v102 + v99;
            if (v102 + v99 == -1)
            {
              v103 = *(this + 144);
            }

            if (v102 < v103)
            {
              v104 = *(*(this + 73) + 4 * v97) + v99 * *(*(this + 75) + 2 * v98 + 2 * v101);
              while (((*(*(this + 71) + 4 * (v104 >> 5)) >> v104) & 1) == 0)
              {
                if (++v104 >= v103)
                {
                  goto LABEL_151;
                }
              }

LABEL_146:
              v105 = v104;
              goto LABEL_147;
            }

            v104 = *(*(this + 73) + 4 * v97) + v99 * *(*(this + 75) + 2 * v98 + 2 * v101);
            while (1)
            {
              v105 = v103;
LABEL_147:
              if (v104 >= v103)
              {
                break;
              }

              *(v125 + v105 - v102) = 49;
              if (++v104 < v103)
              {
                while (((*(*(this + 71) + 4 * (v104 >> 5)) >> v104) & 1) == 0)
                {
                  if (v103 == ++v104)
                  {
                    goto LABEL_151;
                  }
                }

                goto LABEL_146;
              }
            }

LABEL_151:
            if (v126)
            {
              v106 = v125;
            }

            else
            {
              v106 = byte_262888D40;
            }

            DgnTextFileWriter::setLineFieldValue(v134, 5u, v106);
            DgnTextFileWriter::writeNextLine(v134);
            DgnString::~DgnString(&v125);
            ++v98;
          }

          while (v98 != v100);
          v94 = *(this + 35);
        }

        v96 = v97 + 1;
        v95 = (v97 + 1);
      }

      while (v94 > v95);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v127);
    DgnArray<DgnString>::releaseAll(v129);
    DgnIArray<Utterance *>::~DgnIArray(&v132);
    DgnTextFileWriter::~DgnTextFileWriter(v134);
    v83 = v122;
  }

  if (*(this + 155))
  {
    DgnTextFileWriter::DgnTextFileWriter(v134);
    DgnTextFileWriter::openDgnTextFileWriter(v134, v83, 28, 0);
    v132 = 0;
    v133 = 0;
    DgnTextFile::legalDgnTextFileVersions(v134, sHST_Versions, &v132);
    DgnTextFileWriter::setFileType(v134, "HierarchicalScorerText", (v132 + 8 * (v133 - 1)));
    DgnTextFileWriter::setHeaderFieldUnsigned(v134, "NumHSLevels", *(this + 155));
    DgnArray<DgnString>::DgnArray(v129, 7);
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v107 = realloc_array(0, &v125, 0x1CuLL, 0, 0, 1);
    v127 = v125;
    LODWORD(v128) = 7;
    HIDWORD(v128) = v107 >> 2;
    DgnString::operator=(*v129, "Type");
    *v127 = 0;
    DgnString::operator=((*v129 + 16), "Level");
    v127[1] = 3;
    DgnString::operator=((*v129 + 32), "Component");
    v127[2] = 3;
    DgnString::operator=((*v129 + 48), "Parent");
    v127[3] = 1;
    DgnString::operator=((*v129 + 64), "DimensionIndex");
    v127[4] = 3;
    DgnString::operator=((*v129 + 80), "Mean");
    v127[5] = 3;
    DgnString::operator=((*v129 + 96), "ScaledDev");
    v127[6] = 3;
    DgnTextFileWriter::setLineFieldFormat(v134, &v127, v129);
    if (*(this + 155) != -1)
    {
      v108 = 0;
      do
      {
        DgnTextFileWriter::setLineFieldValue(v134, 0, "NumHSComponents");
        DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v108);
        DgnTextFileWriter::setLineFieldUnsignedValue(v134, 2u, *(*(this + 80) + 4 * v108));
        DgnTextFileWriter::setLineFieldIntegerValue(v134, 3u, 0);
        DgnTextFileWriter::setLineFieldUnsignedValue(v134, 4u, 0);
        DgnTextFileWriter::setLineFieldUnsignedValue(v134, 5u, 0);
        DgnTextFileWriter::setLineFieldUnsignedValue(v134, 6u, 0);
        DgnTextFileWriter::writeNextLine(v134);
        ++v108;
      }

      while (v108 < (*(this + 155) + 1));
    }

    v109 = *(this + 33);
    v125 = 0;
    v126 = 0;
    if (v109)
    {
      v123 = 0;
      v110 = realloc_array(0, &v123, 4 * v109, 0, 0, 1);
      v124 = 0;
      v125 = v123;
      v111 = *(this + 33);
      LODWORD(v126) = v109;
      HIDWORD(v126) = v110 >> 2;
      v123 = 0;
      if (v111)
      {
        v145 = 0;
        HIDWORD(v124) = realloc_array(0, &v145, 4 * v111, 0, 0, 1) >> 2;
        v123 = v145;
      }
    }

    else
    {
      LODWORD(v111) = 0;
      v123 = 0;
      v124 = 0;
    }

    LODWORD(v124) = v111;
    v112 = *(this + 155);
    if (v112 != -1)
    {
      v113 = 0;
      v114 = 0;
      do
      {
        if (v113 >= v112)
        {
          v115 = 1;
        }

        else
        {
          v114 = *(*(this + 82) + 24 * v113) + *(*(this + 82) + 24 * v113 + 16);
          v115 = *(this + 33);
        }

        if (*(*(this + 80) + 4 * v113))
        {
          v116 = 0;
          do
          {
            if (v113 < *(this + 155))
            {
              PelMgr::unpackRawMixtureComponent(this, v114, &v125, &v123);
              v114 += *(this + 37);
            }

            if (v115)
            {
              for (m = 0; m != v115; ++m)
              {
                DgnTextFileWriter::setLineFieldValue(v134, 0, "HSComponentDefs");
                DgnTextFileWriter::setLineFieldUnsignedValue(v134, 1u, v113);
                DgnTextFileWriter::setLineFieldUnsignedValue(v134, 2u, v116);
                if (v113)
                {
                  v118 = *(*(*(this + 78) + 16 * (v113 - 1)) + 4 * v116);
                }

                else
                {
                  v118 = -1;
                }

                DgnTextFileWriter::setLineFieldIntegerValue(v134, 3u, v118);
                if (v113 >= *(this + 155))
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v134, 4u, 0);
                  DgnTextFileWriter::setLineFieldUnsignedValue(v134, 5u, 0);
                  v119 = 0;
                }

                else
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v134, 4u, m);
                  DgnTextFileWriter::setLineFieldUnsignedValue(v134, 5u, *(v125 + m));
                  v119 = *(v123 + m);
                }

                DgnTextFileWriter::setLineFieldUnsignedValue(v134, 6u, v119);
                DgnTextFileWriter::writeNextLine(v134);
              }
            }

            ++v116;
          }

          while (v116 < *(*(this + 80) + 4 * v113));
          v112 = *(this + 155);
        }

        ++v113;
      }

      while (v113 < v112 + 1);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v123);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v125);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v127);
    DgnArray<DgnString>::releaseAll(v129);
    DgnIArray<Utterance *>::~DgnIArray(&v132);
    DgnTextFileWriter::~DgnTextFileWriter(v134);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v135);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v137);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v139);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v141);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v143);
}

void *DgnArray<DgnString>::DgnArray(void *a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a2)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a2, 0);
    v4 = *(a1 + 2);
    if (v4 > v2)
    {
      if (v4 > v2)
      {
        v5 = v4;
        v6 = 16 * v4 - 16;
        do
        {
          --v5;
          DgnString::~DgnString(*a1 + v6);
          v6 -= 16;
        }

        while (v5 > v2);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = v2 - v4;
  if (v2 > v4)
  {
    v8 = 16 * v4;
    do
    {
      DgnString::DgnString((*a1 + v8));
      v8 += 16;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  *(a1 + 2) = v2;
  return a1;
}

void PelMgr::saveQuantPerDimTableText(uint64_t a1, DgnTextFileWriter *this, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, char *a8, int a9, void *a10)
{
  v10 = *(a1 + 132);
  if (v10)
  {
    v15 = 0;
    for (i = 0; i < v10; ++i)
    {
      if (a9)
      {
        for (j = 0; j != a9; ++j)
        {
          DgnTextFileWriter::setLineFieldValue(this, a3, a8);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, a4, i);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, a5, j);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, a6, *(*a10 + (v15 + j)));
          if (!*(a1 + 16))
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(this, a7, 0);
          }

          DgnTextFileWriter::writeNextLine(this);
        }

        v10 = *(a1 + 132);
        v15 += j;
      }
    }
  }
}

void (***PelMgr::savePelMgr(PelMgr *this, DFile *a2, DFileChecksums *a3, int a4, uint64_t a5))(void)
{
  if (a4)
  {
    return PelMgr::savePelMgrText(this, a2, a5);
  }

  else
  {
    return PelMgr::savePelMgrBinary(this, a2, a3, a5, 0);
  }
}

double PelMgr::verifyFeatureDimension(uint64_t result, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, NeuralNet *a6, uint64_t a7, uint64_t a8)
{
  v15 = *(result + 132);
  if (a2)
  {
    if (v15 != *(a2 + 4))
    {
      v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3730, "pel/pel", 17, "%.500s %.500s", "VarClass", "input");
    }

    if (v15 != *(a2 + 8))
    {
      v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3732, "pel/pel", 17, "%.500s %.500s", "VarClass", "output");
    }
  }

  v18 = a3[2];
  if (v18 == *a3 && v15 != v18)
  {
    v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3738, "pel/pel", 17, "%.500s %.500s", "SpeakerTransAcc", "input");
    if (v15 != a3[2])
    {
      v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3740, "pel/pel", 17, "%.500s %.500s", "SpeakerTransAcc", "output");
    }
  }

  v20 = a3[3];
  if (v20 == *a3 && v15 != v20)
  {
    v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3746, "pel/pel", 17, "%.500s %.500s", "ChannelTransAcc", "input");
    if (v15 != a3[3])
    {
      v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3748, "pel/pel", 17, "%.500s %.500s", "ChannelTransAcc", "output");
    }
  }

  OutputSize = *(result + 8);
  if (a4 && OutputSize != a4)
  {
    v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3754, "pel/pel", 16, "%.500s", "utterance");
  }

  if (a5)
  {
    if (OutputSize != *(a5 + 8))
    {
      v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3759, "pel/pel", 17, "%.500s %.500s", "BandwidthTransform", "input");
    }

    OutputSize = *(a5 + 12);
    if (OutputSize < *(result + 132))
    {
      v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3762, "pel/pel", 17, "%.500s %.500s", "BandwidthTransform", "output");
    }
  }

  if (a6)
  {
    if (NeuralNet::isOutTypeBF(a6))
    {
      if (OutputSize != NeuralNet::getFrameSize(a6))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3770, "pel/pel", 17, "%.500s %.500s", "DBNBottleneckFeature", "input");
      }

      OutputSize = NeuralNet::getOutputSize(a6);
      if (OutputSize < *(result + 132))
      {
        v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3773, "pel/pel", 17, "%.500s %.500s");
      }
    }

    else if (NeuralNet::isOutTypeConcatenatedBF(a6))
    {
      if (OutputSize != NeuralNet::getFrameSize(a6))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3779, "pel/pel", 17, "%.500s %.500s", "DBNConcatenatedBottleneckFeature", "input");
      }

      OutputSize += NeuralNet::getOutputSize(a6);
      if (OutputSize < *(result + 132))
      {
        v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3782, "pel/pel", 17, "%.500s %.500s");
      }
    }
  }

  if (a7)
  {
    if (OutputSize != *(a7 + 8))
    {
      v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3789, "pel/pel", 17, "%.500s %.500s", "Imelda", "input");
    }

    OutputSize = *(a7 + 12);
    if (OutputSize < *(result + 132))
    {
      v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3792, "pel/pel", 17, "%.500s %.500s", "Imelda", "output");
    }
  }

  if (a8)
  {
    if (OutputSize != *(*(a8 + 112) + 132))
    {
      v17 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3798, "pel/pel", 17, "%.500s %.500s", "DFC", "input");
    }

    if (OutputSize < *(result + 132))
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3800, "pel/pel", 17, "%.500s %.500s", "DFC", "output");
    }
  }

  return v17;
}

float PelMgr::packFloatRawMixtureComponent(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 132);
  if (v6)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = vcvtd_n_f64_u32(*(a1 + 128), 3uLL);
    v12 = 4 * v6;
    v13 = 0.0;
    do
    {
      v14 = vcvtd_n_f64_u32(*(*a4 + v9), 3uLL);
      if (v14 <= 31.875)
      {
        v15 = v14;
      }

      else
      {
        v15 = 31.875;
      }

      if (v14 >= v11)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      v17 = v10 + 1;
      v18 = *(a1 + 496);
      *(a2 + 4 * v10) = *(*a3 + v9);
      v19 = v18 / (v16 * (v16 * 3.14159265));
      v10 = (v10 + 2);
      *(a2 + 4 * v17) = v19;
      v13 = v13 + DgnLog(v16 * 0.25);
      v9 += 4;
    }

    while (v12 != v9);
  }

  else
  {
    v10 = 0;
    v13 = 0.0;
  }

  result = v13 * *(a1 + 496);
  *(a2 + 4 * v10) = result;
  return result;
}

uint64_t PelMgr::packMulTableRawMixtureComponent(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  v4 = *(result + 132);
  if (v4)
  {
    v8 = result;
    for (i = 0; i != v4; ++i)
    {
      v10 = *v8;
      v11 = *(*a4 + 4 * i);
      if (v11 >= 0xFF)
      {
        v12 = 255;
      }

      else
      {
        v12 = *(*a4 + 4 * i);
      }

      if (*(v8 + 128) <= v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(v8 + 128);
      }

      if (*(v10 + 4) - 1 < v13)
      {
        v13 = *(v10 + 4) - 1;
      }

      result = MulTable::permute(v10, ((*(*(v10 + 72) + v13) << 9) - *(*a3 + 4 * i) - 256));
      *(a2 + 2 * i) = result;
    }
  }

  return result;
}

uint64_t PelMgr::packPackedIntRawMixtureComponent(uint64_t result, uint64_t a2, int **a3, unsigned int **a4)
{
  v4 = *(result + 132);
  v5 = (v4 + 7) & 0xFFFFFFF8;
  if (v4)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a4;
    v9 = *(*(result + 488) + 72);
    do
    {
      v10 = *v7++;
      *(a2 + v6) = v10;
      v11 = *v8++;
      *(a2 + (v6 + 1)) = *(v9 + v11);
      v6 += 2;
    }

    while (2 * v4 != v6);
  }

  if (v4 < v5)
  {
    v12 = 2 * v4;
    v13 = v4 - v5;
    do
    {
      *(a2 + v12) = 0;
      *(a2 + v12 + 1) = 0;
      v12 += 2;
    }

    while (!__CFADD__(v13++, 1));
  }

  return result;
}

void PelMgr::packQuantPerDimRawMixtureComponent(uint64_t a1, _BYTE *a2, int **a3, int **a4)
{
  v4 = *(a1 + 132);
  v5 = (v4 + 7) & 0xFFFFFFF8;
  if (v4)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a4;
    v9 = *(a1 + 96);
    v10 = a2;
    v11 = *(a1 + 112);
    do
    {
      v12 = *v7++;
      v13 = *(v9 + (v6 + v12));
      v14 = *v8++;
      *v10++ = *(v11 + (v6 + v14)) + 16 * v13;
      v6 += 256;
    }

    while (v4 << 8 != v6);
  }

  if (v4 < v5)
  {
    bzero(&a2[v4], v5 + ~v4 + 1);
  }
}

uint64_t PelMgr::packFloatRawMixtureComponent(uint64_t a1, float *a2, int a3, unsigned int **a4, int **a5, char a6, double a7, double a8, double a9, double a10)
{
  v15 = *(a1 + 132);
  v16 = *(a1 + 152);
  if (v15)
  {
    v17 = *a4;
    v18 = *(a1 + 132);
    v19 = a2;
    do
    {
      v20 = *v17++;
      *v19++ = v20;
      --v18;
    }

    while (v18);
  }

  v22 = *(a1 + 160);
  v21 = *(a1 + 164);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if ((a6 & 1) == 0)
  {
    LODWORD(v56) = v15;
    HIDWORD(v56) = v15;
    if (v15 * v15)
    {
      v57 = MemChunkAlloc(8 * (v15 * v15), 0);
      v58 = v15 * v15;
    }
  }

  v23 = 0.0;
  if (!v15)
  {
    v42 = 0;
    v27 = 0.0;
    if (a6)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v24 = 0;
  v25 = *(a1 + 152);
  v26 = *a4;
  v27 = 0.0;
  v28 = v15;
  do
  {
    v29 = 0;
    v30 = *a5;
    v31 = v56;
    v32 = 0.0;
    v33 = v57;
    do
    {
      if (v25)
      {
        v34 = *(a1 + 184);
        v35 = 0.0;
        v36 = v25;
        v37 = v30;
        do
        {
          v38 = *v37++;
          a10 = v38;
          v39 = *v34;
          v34 += 2;
          v35 = v35 + a10 * *(*(v39 + 16 * v24) + 4 * v29);
          --v36;
        }

        while (v36);
      }

      else
      {
        v35 = 0.0;
      }

      v40 = 1.0 / (1 << (v22 + v21)) * v35;
      if ((a6 & 1) == 0)
      {
        *&v33[(v24 + v31 * v29)] = v40;
      }

      LODWORD(a10) = v26[v29];
      a10 = *&a10;
      v32 = v32 + v40 * a10;
      ++v29;
    }

    while (v29 != v15);
    v41 = -(v32 * *(a1 + 496));
    *&v41 = v41;
    a2[v28] = *&v41;
    LODWORD(v41) = v26[v24];
    v42 = v28 + 1;
    v27 = v27 + v32 * *&v41;
    ++v24;
    ++v28;
  }

  while (v24 != v15);
  if ((a6 & 1) == 0)
  {
LABEL_22:
    v43 = DgnMatrix::determinant(&v56);
    v23 = v43;
    if (v43 <= 0.0)
    {
      v23 = -v43;
      if (v43 == 0.0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 4146, "pel/pel", 68, "%u", a3);
      }
    }
  }

LABEL_25:
  v44 = *(a1 + 496);
  if (v16)
  {
    v45 = v44 * 0.5 / (1 << *(a1 + 164));
    v46 = *a5;
    do
    {
      v47 = *v46++;
      v48 = v45 * v47;
      v49 = v42 + 1;
      a2[v42++] = v48;
      --v16;
    }

    while (v16);
  }

  else
  {
    v49 = v42;
  }

  v50 = &a2[v49 + 1];
  if (a6)
  {
    v51 = *v50;
  }

  else
  {
    v52 = DgnLog(v23);
    v51 = eround(v52, 10);
    v44 = *(a1 + 496);
  }

  v53 = v44 * 0.5 * (v27 - v15 * DgnLog(25.1327412) - v51);
  a2[v49] = v53;
  if ((a6 & 1) == 0)
  {
    *v50 = v51;
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v57);
}

void sub_2626E37A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t PelMgr::packPackedIntRawMixtureComponent(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int **a5, char a6)
{
  v12 = *(a1 + 132);
  v13 = (v12 + 1) & 0xFFFFFFFE;
  v14 = *(a1 + 152);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      *(a2 + i) = *(*a4 + 4 * i);
    }
  }

  v16 = v12;
  if (v12 < v13)
  {
    v17 = v12;
    do
    {
      *(a2 + v17++) = 0;
    }

    while (v13 != v17);
    v16 = (v12 + 1) & 0xFFFFFFFE;
  }

  v75 = v16;
  v76 = *(a1 + 164);
  v77 = *(a1 + 160);
  v83 = 0;
  v84 = 0;
  if (v14)
  {
    v78 = 0;
    v18 = realloc_array(0, &v78, 4 * v14, 0, 0, 1);
    v19 = 0;
    v83 = v78;
    LODWORD(v84) = v14;
    HIDWORD(v84) = v18 >> 2;
    v20 = *a5;
    v21 = v14;
    do
    {
      v23 = *v20++;
      v22 = v23;
      if (v23 < 0)
      {
        v22 = -v22;
      }

      if (v19 <= v22)
      {
        v19 = v22;
      }

      --v21;
    }

    while (v21);
  }

  else
  {
    v19 = 0;
    LODWORD(v84) = 0;
  }

  Bits = BinaryIntScale::getBits(v19);
  if (Bits >= 15)
  {
    v25 = BinaryIntScale::getBits((1 << (Bits - 15)) + v19) - 14;
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v25 = 0;
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  v26 = *a5;
  v27 = 1 << (v25 - 1);
  if (!v25)
  {
    LODWORD(v27) = 0;
  }

  v28 = v83;
  v29 = v14;
  do
  {
    v30 = *v26++;
    *v28++ = ((v30 + v27) >> v25);
    --v29;
  }

  while (v29);
LABEL_25:
  v81 = 0;
  v82 = 0;
  if (v12)
  {
    v78 = 0;
    HIDWORD(v82) = realloc_array(0, &v78, 8 * v12, 0, 0, 1) >> 3;
    v81 = v78;
  }

  v74 = a3;
  LODWORD(v82) = v12;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  if ((a6 & 1) == 0)
  {
    LODWORD(v78) = v12;
    HIDWORD(v78) = v12;
    if (v12 * v12)
    {
      v79 = MemChunkAlloc(8 * (v12 * v12), 0);
      v80 = v12 * v12;
    }
  }

  v31 = 0.0;
  if (v12)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = *a4;
    v36 = v81;
    while (1)
    {
      v37 = 0;
      v38 = 0;
      v39 = v83;
      v40 = v78;
      v41 = v79;
      do
      {
        v42 = 0;
        if (v14)
        {
          v43 = *(a1 + 184);
          v44 = *a5;
          v45 = 0.0;
          v46 = v14;
          v47 = v39;
          do
          {
            v48 = *(*(*v43 + 16 * v32) + 4 * v37);
            if ((a6 & 1) == 0)
            {
              v45 = v45 + *v44 * v48;
            }

            v49 = *v47++;
            v42 += v48 * v49;
            v43 += 2;
            ++v44;
            --v46;
          }

          while (v46);
          if ((a6 & 1) == 0)
          {
LABEL_39:
            *&v41[(v32 + v40 * v37)] = 1.0 / (1 << (v77 + v76)) * v45;
          }
        }

        else
        {
          v45 = 0.0;
          if ((a6 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v38 += v42 * *(v35 + 4 * v37++);
      }

      while (v37 != v12);
      if (v38 >= 0)
      {
        v50 = v38;
      }

      else
      {
        v50 = -v38;
      }

      v36[v32] = -v38;
      if (v34 <= v50)
      {
        v34 = v50;
      }

      v33 += v38 * *(v35 + 4 * v32++);
      if (v32 == v12)
      {
        v51 = v33;
        if (a6)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }
    }
  }

  v34 = 0;
  v51 = 0.0;
  if (a6)
  {
    goto LABEL_56;
  }

LABEL_53:
  v52 = DgnMatrix::determinant(&v78);
  v31 = v52;
  if (v52 <= 0.0)
  {
    v31 = -v52;
    if (v52 == 0.0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 4492, "pel/pel", 68, "%u", v74);
    }
  }

LABEL_56:
  v53 = BinaryIntScale::getBits(v34);
  v54 = (a2 + v75);
  v55 = v76 - v25;
  if (v53 <= 15)
  {
    v56 = 0;
  }

  else
  {
    v56 = v53 - 15;
  }

  v57 = v55 + v77;
  *v54 = v55 + v77 - v56;
  bzero(v54 + 1, ((v13 + 17) & 0xFFFFFFF0) - v13 - 2);
  v58 = (((v13 + 17) & 0xFFFFFFF0) - v13 - 2) >> 1;
  if (v12)
  {
    v59 = v81;
    v60 = 1 << (v56 - 1);
    if (!v56)
    {
      v60 = 0;
    }

    v61 = v12;
    do
    {
      v62 = *v59++;
      v54[++v58] = (v62 + v60) >> v56;
      --v61;
    }

    while (v61);
  }

  v63 = v58 + 2;
  v54[v58 + 1] = v55;
  v64 = ((2 * v12 + 17) & 0xFFFFFFF0) - 2 * v12 - 2;
  bzero(&v54[v58 + 2], v64);
  v65 = v63 + (v64 >> 1);
  if (v14)
  {
    v66 = v83;
    v67 = v14;
    do
    {
      v68 = *v66++;
      v69 = v65 + 1;
      v54[v65++] = v68;
      --v67;
    }

    while (v67);
  }

  else
  {
    v69 = v63 + (v64 >> 1);
  }

  bzero(&v54[v69], ((2 * v14 + 27) & 0xFFFFFFF0) - 2 * v14 - 12);
  v70 = &v54[v69 + ((((2 * v14 + 27) & 0xFFFFFFF0) - 2 * v14 - 12) >> 1)];
  if (a6)
  {
    v71 = *(v70 + 2);
  }

  else
  {
    v72 = DgnLog(v31);
    v71 = eround(v72, 10);
  }

  *v70 = ((1.0 / (1 << v57) * v51 - DgnLog(25.1327412) * v12 - v71) * 0.5 + 0.5);
  if ((a6 & 1) == 0)
  {
    *(v70 + 2) = v71;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v79);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v81);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v83);
}

void sub_2626E3CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

uint64_t *PelMgr::unpackFloatRawMixtureComponent(uint64_t *result, float *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 33);
  v9 = *(result + 38);
  v10 = *(a3 + 12);
  if (v8 > v10)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v10, 0);
  }

  *(a3 + 8) = v8;
  v11 = *(a4 + 12);
  if (v9 > v11)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a4, v9 - v11, 0);
  }

  *(a4 + 8) = v9;
  if (v8)
  {
    v12 = *a3;
    v13 = v8;
    v14 = a2;
    do
    {
      v15 = *v14++;
      *v12++ = (v15 + 0.5);
      --v13;
    }

    while (v13);
  }

  if (v9)
  {
    v16 = 2.0 / *(v7 + 62) * (1 << *(v7 + 41));
    v17 = 2 * v8;
    v18 = *a4;
    do
    {
      v19 = a2[v17++];
      v20 = v16 * v19;
      if (v20 < 0.0)
      {
        v21 = -0.5;
      }

      else
      {
        v21 = 0.5;
      }

      *v18++ = (v20 + v21);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t *PelMgr::unpackPackedIntRawMixtureComponent(uint64_t *result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 33);
  v9 = *(result + 38);
  v10 = *(a3 + 12);
  if (v8 > v10)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v10, 0);
  }

  *(a3 + 8) = v8;
  v11 = *(a4 + 12);
  if (v9 > v11)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a4, v9 - v11, 0);
  }

  *(a4 + 8) = v9;
  if (v8)
  {
    v12 = *a3;
    v13 = v8;
    v14 = a2;
    do
    {
      v15 = *v14++;
      *v12++ = v15;
      --v13;
    }

    while (v13);
  }

  if (v9)
  {
    v16 = &a2[2 * v8 + 2 + 2 * ((((((v8 + 1) & 0xFFFFFFFE) + 17) & 0xFFFFFFF0) - ((v8 + 1) & 0xFFFFFFFE) - 2) >> 1) + ((v8 + 1) & 0xFFFFFFFE)];
    v18 = *v16;
    v17 = v16 + 2;
    v19 = *(v7 + 41) - v18;
    v20 = (((2 * v8 + 17) & 0xFFFFFFF0) - 2 * v8 - 2) >> 1;
    v21 = *a4;
    do
    {
      *v21++ = *&v17[2 * v20++] << v19;
      --v9;
    }

    while (v9);
  }

  return result;
}

void PelMgr::unpackFloatRawMixtureComponent(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(result + 132);
  v9 = *(a3 + 12);
  if (v8 > v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
  }

  *(a3 + 8) = v8;
  v10 = *(a4 + 12);
  if (v8 <= v10)
  {
    *(a4 + 8) = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a4, v8 - v10, 0);
    *(a4 + 8) = v8;
  }

  v11 = 0;
  v12 = 0;
  v13 = vcvtd_n_f64_u32(*(result + 128), 3uLL);
  do
  {
    v14 = v12 + 1;
    v15 = *(a2 + 4 * v12);
    v12 += 2;
    v16 = DgnSqrt(*(result + 496) / (*(a2 + 4 * v14) * 3.14159265));
    if (v16 <= 31.875)
    {
      v17 = v16;
    }

    else
    {
      v17 = 31.875;
    }

    if (v16 >= v13)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    *(*a3 + 4 * v11) = (v15 + 0.5);
    *(*a4 + 4 * v11++) = (v18 * 8.0 + 0.5);
  }

  while (v8 != v11);
}

uint64_t *PelMgr::unpackMulTableRawMixtureComponent(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = result;
  v8 = *(result + 33);
  v9 = *(a3 + 3);
  if (v8 > v9)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
  }

  *(a3 + 2) = v8;
  v10 = *(a4 + 3);
  if (v8 <= v10)
  {
    *(a4 + 2) = v8;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a4, v8 - v10, 0);
    *(a4 + 2) = v8;
  }

  v11 = 0;
  v12 = *a4;
  do
  {
    v13 = *v7;
    v14 = *a3;
    result = MulTable::unpermute(*v7, *(a2 + 2 * v11));
    *(v14 + 4 * v11) = -result;
    *(v12 + 4 * v11) = *(*(v13 + 11) + 2 * (result >> 9));
    v12 = *a4;
    v15 = *(*a4 + 4 * v11);
    if (v15 >= 0xFF)
    {
      v16 = 255;
    }

    else
    {
      v16 = *(*a4 + 4 * v11);
    }

    if (*(v7 + 128) <= v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = *(v7 + 128);
    }

    *(v12 + 4 * v11++) = v17;
  }

  while (v8 != v11);
  return result;
}

uint64_t *PelMgr::unpackPackedIntRawMixtureComponent(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 33);
  v9 = *(a3 + 12);
  if (v8 > v9)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
  }

  *(a3 + 8) = v8;
  v10 = *(a4 + 12);
  if (v8 <= v10)
  {
    *(a4 + 8) = v8;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a4, v8 - v10, 0);
    *(a4 + 8) = v8;
  }

  v11 = *a3;
  v12 = *a4;
  v13 = *(v7[61] + 40);
  v14 = 1;
  do
  {
    *v11++ = *(a2 + v14 - 1);
    *v12++ = *(v13 + 2 * *(a2 + v14));
    v14 += 2;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t *PelMgr::unpackQuantPerDimRawMixtureComponent(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = result;
  v8 = *(result + 33);
  v9 = *(a3 + 3);
  if (v8 > v9)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
  }

  *(a3 + 2) = v8;
  v10 = *(a4 + 3);
  if (v8 <= v10)
  {
    *(a4 + 2) = v8;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a4, v8 - v10, 0);
    *(a4 + 2) = v8;
  }

  v11 = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *(v7 + 48);
  v15 = *(v7 + 64);
  do
  {
    v16 = *(a2 + v11);
    *(v12 + 4 * v11) = *(v14 + (v11 << *(v7 + 32)) + (v16 >> *(v7 + 36)));
    *(v13 + 4 * v11) = *(v15 + (v11 << *(v7 + 36)) + (*(v7 + 40) & v16));
    ++v11;
  }

  while (v8 != v11);
  return result;
}

void *DgnArray<AlignedArray<unsigned char>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 24;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
      v3 -= 24;
    }

    while (v3 != -24);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnArray<FrameDecisionTreeHyperplane>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
      v3 -= 24;
    }

    while (v3 != -16);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void FrameDecisionTree::~FrameDecisionTree(FrameDecisionTree *this)
{
  DgnArray<FrameDecisionTreeHyperplane>::releaseAll(this + 16);

  DgnIArray<Utterance *>::~DgnIArray(this);
}

void PackingPars::~PackingPars(PackingPars *this)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 72);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 56);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
}

uint64_t AlignedArray<unsigned char>::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  if (v6 <= *(a1 + 12))
  {
    v6 -= 15;
  }

  v10 = v6;
  writeObject(a2, &v10, a3);
  v7 = *(a1 + 8);
  if (v7 <= *(a1 + 12))
  {
    v8 = v7 - 15;
  }

  else
  {
    v8 = v7;
  }

  return writeObjectArray(a2, (*a1 + *(a1 + 16)), v8, a3);
}

uint64_t AlignedArray<short>::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  if (v6 <= *(a1 + 12))
  {
    v6 -= 7;
  }

  v10 = v6;
  writeObject(a2, &v10, a3);
  v7 = *(a1 + 8);
  if (v7 <= *(a1 + 12))
  {
    v8 = v7 - 7;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  return writeObjectArray(a2, (*a1 + 2 * *(a1 + 16)), v8, a3);
}

void *AlignedArray<unsigned char>::writeSharedObject(uint64_t a1, DgnSharedMemStream *a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  if (v5 <= *(a1 + 12))
  {
    v5 -= 15;
  }

  v10 = v5;
  result = writeObject(a2, &v10, a3);
  if (v10)
  {
    result = DgnSharedMemStream::writeSharedBytes(a2, (*a1 + *(a1 + 16)), v10, v7);
    if (result)
    {
      v8 = result;
      result = *a1;
      if (*a1)
      {
        result = MemChunkFree(result, 0);
      }

      v9 = v10;
      *(a1 + 12) = 0;
      *(a1 + 16) = 0;
      *(a1 + 8) = v9;
      *a1 = v8;
    }
  }

  return result;
}

uint64_t Node::updateNodeOneBest1(Node *this, int a2, int a3, int a4, PelScoreCache **a5, HmmNet *a6)
{
  ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(a5[3], *(this + 11), a2, a4);
  if (ScoreAllowBackoff_updateNodeInSequence <= a3)
  {
    v11 = ScoreAllowBackoff_updateNodeInSequence;
    Node::updateScore<false>(this, ScoreAllowBackoff_updateNodeInSequence);
    if (*(a5 + 56) >= v11)
    {
      BestData::newOrTiedBestNode((a5 + 24), v11, this, a6);
    }

    v12 = a5 + 4 * (v11 + 5000);
    ++*(v12 + 37848);
    ++*(a5 + 75617);
    ++*(v12 + 80);
    ++*(a5 + 75616);
  }

  else
  {
    *(this + 2) = 1310740000;
    return 20000;
  }

  return v11;
}

uint64_t Node::updateScore<false>(uint64_t result, __int16 a2)
{
  v2 = *(result + 12);
  v3 = *(result + 20);
  v4 = ((v2 >> 8) - v3) << 8;
  v5 = v4 | v3;
  v6 = v4 - ((v4 >> 31) & (v4 >> 8));
  if (v2 >> 8 >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  *(result + 4) += 2 * *(result + 12) - v3;
  *(result + 12) = v7;
  if (v2 >> 8 >= 1)
  {
    v8 = (v2 >> 8) + a2;
  }

  else
  {
    v8 = a2;
  }

  *(result + 8) = v8;
  *(result + 10) = a2;
  return result;
}

uint64_t Node::thresholdNode(Node *this, int a2)
{
  if (*(this + 5) <= a2)
  {
    if (*(this + 4) > a2)
    {
      *(this + 4) = 20000;
    }

    return 1;
  }

  else
  {
    result = 0;
    *(this + 2) = 1310740000;
  }

  return result;
}

uint64_t Node::scoreNodeActiveCurrActiveSeed(uint64_t a1, uint64_t a2, int a3, int a4, _BYTE *a5, PelScoreCache **a6, int a7, int a8, HmmNet *a9)
{
  v9 = *(a1 + 12) + *(a1 + 10);
  v10 = a8 + a7 + *(a2 + 8) + *(a1 + 21);
  if (v10 < v9)
  {
    v11 = *(a1 + 16);
    if (v11 >= 0)
    {
      v12 = v11 << 8;
    }

    else
    {
      v12 = 255 * v11;
    }

    *(a1 + 12) = v12;
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4) + *(a1 + 18);
    *a5 = 1;
    v9 = v10;
  }

  return Node::updateNodeOneBest1(a1, v9, a3, a4, a6, a9);
}

uint64_t Node::scoreNodeOneBest(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, _BYTE *a7, PelScoreCache **a8, HmmNet *a9, _DWORD *a10, HmmNet *a11)
{
  v11 = *(a1 + 10);
  if (v11 <= a4)
  {
    ++*a10;
    if (a3)
    {
      return Node::scoreNodeActiveCurrActiveSeed(a1, a2, a5, a6, a7, a8, a9, SHIDWORD(a9), a11);
    }

    else
    {
      return Node::updateNodeOneBest1(a1, *(a1 + 12) + v11, a5, a6, a8, a11);
    }
  }

  else
  {
    *a7 = a3;
    if (a3)
    {
      ++*a10;
      return Node::scoreNodeInactiveCurrActiveSeed(a1, a2, a5, a6, a8, a9, SHIDWORD(a9), a11);
    }

    else
    {
      return 20000;
    }
  }
}

uint64_t Node::scoreNodeSuccessors(const Node *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = a1;
  if (*(a2 + 8) == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *a2;
  }

  v41 = a8 + 299008;
  if (a7 >= 1)
  {
    v14 = 0;
    v45 = 0;
    v42 = a4;
    if (a3)
    {
      v15 = *(a2 + 8);
    }

    else
    {
      v15 = 20000;
    }

    if (a3)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 4);
    v40 = a8 + 151392;
    v18 = a7 + 1;
    v19 = a1;
    v20 = 20000;
    v21 = a1;
    while (1)
    {
      v22 = *(v19 + 5);
      if (v22 <= a4)
      {
        v24 = *(v19 + 4);
        if (v24 <= a4)
        {
          v25 = 17;
        }

        else
        {
          LOWORD(v24) = 20000;
          *(v19 + 4) = 20000;
          v25 = 1;
        }

        ++v45;
        v16 |= v25;
        v23 = v24;
      }

      else
      {
        *(v19 + 2) = 1310740000;
        v23 = 20000;
        v22 = 20000;
      }

      if ((v16 & 0x61) != 0)
      {
        break;
      }

      v12 = v21;
      v34 = v20;
LABEL_31:
      --v18;
      v19 = (v19 + 24);
      if (v18 <= 1)
      {
        goto LABEL_41;
      }
    }

    v26 = *(v19 + 1);
    v46 = *v19;
    v27 = *(v19 + 12) + v22;
    v28 = a10 + a9 + v15 + *(v19 + 21);
    if (v28 < v27)
    {
      v29 = v17 + *(v19 + 9);
      *v19 = v13;
      *(v19 + 1) = v29;
      v30 = *(v19 + 8);
      if (v30 >= 0)
      {
        v31 = v30 << 8;
      }

      else
      {
        v31 = 255 * v30;
      }

      *(v19 + 3) = v31;
      v27 = v28;
    }

    v32 = a8;
    ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), *(v19 + 11), v27, a6);
    if (ScoreAllowBackoff_updateNodeInSequence <= a5)
    {
      v34 = ScoreAllowBackoff_updateNodeInSequence;
      ++*(v40 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
      ++*(v41 + 3460);
      Node::updateScore<false>(v19, ScoreAllowBackoff_updateNodeInSequence);
      if (v34 <= v20)
      {
        v12 = v19;
        a8 = v32;
        if (v34 >= v20)
        {
          v35 = *(v19 + 11);
          v36 = *(v21 + 11);
          v37 = v35 >= v36;
          if (v35 < v36)
          {
            v12 = v19;
          }

          else
          {
            v12 = v21;
          }

          if (v37)
          {
            v34 = v20;
          }

          else
          {
            v34 = v34;
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
      *(v19 + 2) = 1310740000;
    }

    v12 = v21;
    v34 = v20;
    a8 = v32;
LABEL_29:
    ++v14;
    if (v18 == 2)
    {
      goto LABEL_41;
    }

    v17 = v26;
    v13 = v46;
    v15 = v23;
    v20 = v34;
    v21 = v12;
    v16 = (2 * v16) & 0x22;
    a4 = v42;
    goto LABEL_31;
  }

  v45 = 0;
  v14 = 0;
  v34 = 20000;
LABEL_41:
  *a11 += v14;
  *a12 += v45;
  if (v34 != 20000)
  {
    if (*(a8 + 224) >= v34)
    {
      v38 = a8;
      BestData::newOrTiedBestNode(a8 + 192, v34, v12, 0);
      a8 = v38;
    }

    ++*(a8 + 4 * (v34 + 5000) + 320);
    ++*(v41 + 3456);
  }

  return v34;
}

uint64_t Node::scoreNodeSuccessorsSkipOne(const Node *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = a1;
  if (*(a2 + 8) == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *a2;
  }

  v44 = a8 + 299008;
  if (a7 >= 1)
  {
    v48 = 0;
    v14 = 0;
    v15 = (a10 + a9);
    if (a3)
    {
      v16 = *(a2 + 8);
    }

    else
    {
      v16 = 20000;
    }

    if (a3)
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a2 + 4);
    v43 = a8 + 151392;
    v19 = a7 + 1;
    v20 = a1;
    v21 = v16;
    v22 = v13;
    v23 = 20000;
    v24 = v18;
    v45 = a4;
    while (1)
    {
      v25 = *(v20 + 5);
      if (v25 <= a4)
      {
        v27 = *(v20 + 4);
        if (v27 <= a4)
        {
          v28 = 17;
        }

        else
        {
          LOWORD(v27) = 20000;
          *(v20 + 4) = 20000;
          v28 = 1;
        }

        ++v48;
        v17 |= v28;
        v26 = v27;
      }

      else
      {
        *(v20 + 2) = 1310740000;
        v26 = 20000;
        v25 = 20000;
      }

      if ((v17 & 0x61) != 0)
      {
        break;
      }

      v37 = v23;
      v12 = a1;
LABEL_37:
      --v19;
      v20 = (v20 + 24);
      if (v19 <= 1)
      {
        goto LABEL_47;
      }
    }

    v53 = v17;
    v54 = v14;
    v49 = a1;
    v50 = v21;
    v51 = v24;
    v52 = v22;
    v22 = *v20;
    v24 = *(v20 + 1);
    v29 = *(v20 + 9);
    v30 = *(v20 + 12) + v25;
    v31 = v15;
    v32 = v16 + v15 + *(v20 + 21);
    if (v32 < v30)
    {
      *v20 = v13;
      *(v20 + 1) = v18 + v29;
      v33 = *(v20 + 8);
      if (v33 >= 0)
      {
        v34 = v33 << 8;
      }

      else
      {
        v34 = 255 * v33;
      }

      *(v20 + 3) = v34;
      v30 = v32;
    }

    v35 = a8;
    ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), *(v20 + 11), v30, a6);
    if (ScoreAllowBackoff_updateNodeInSequence <= a5)
    {
      v37 = ScoreAllowBackoff_updateNodeInSequence;
      ++*(v43 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
      ++*(v44 + 3460);
      Node::updateScore<false>(v20, ScoreAllowBackoff_updateNodeInSequence);
      if (v37 <= v23)
      {
        v12 = v20;
        a8 = v35;
        v15 = v31;
        v38 = v54;
        if (v37 >= v23)
        {
          v39 = *(v20 + 11);
          v40 = *(v49 + 11);
          if (v39 < v40)
          {
            v37 = v37;
          }

          else
          {
            v37 = v23;
          }

          if (v39 < v40)
          {
            v12 = v20;
          }

          else
          {
            v12 = v49;
          }
        }

        goto LABEL_30;
      }

      v37 = v23;
    }

    else
    {
      *(v20 + 2) = 1310740000;
      v37 = v23;
    }

    v12 = v49;
    a8 = v35;
    v15 = v31;
    v38 = v54;
LABEL_30:
    v14 = v38 + 1;
    if (v19 == 2)
    {
      goto LABEL_47;
    }

    v16 = v50 + v15 + v29;
    if (v16 >= v26)
    {
      v18 = v24;
    }

    else
    {
      v18 = v51 + v29;
    }

    v13 = v52;
    if (v16 >= v26)
    {
      v13 = v22;
      v16 = v26;
    }

    v17 = (2 * v53) & 0x66;
    v21 = v26;
    a1 = v12;
    v23 = v37;
    a4 = v45;
    goto LABEL_37;
  }

  v14 = 0;
  v48 = 0;
  v37 = 20000;
LABEL_47:
  *a11 += v14;
  *a12 += v48;
  if (v37 != 20000)
  {
    if (*(a8 + 224) >= v37)
    {
      v41 = a8;
      BestData::newOrTiedBestNode(a8 + 192, v37, v12, 0);
      a8 = v41;
    }

    ++*(a8 + 4 * (v37 + 5000) + 320);
    ++*(v44 + 3456);
  }

  return v37;
}

uint64_t Node::scoreNodeWithPattern(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, _BYTE *a9, HmmNet *a10)
{
  v14 = *(a1 + 12) + *(a1 + 10);
  if (a3 != 1)
  {
    v15 = a8 + a7 + *(a2 + 8) + *(a1 + 21);
    if (a3 == 32 || v15 < v14)
    {
      v16 = *(a1 + 16);
      if (v16 >= 0)
      {
        v17 = v16 << 8;
      }

      else
      {
        v17 = 255 * v16;
      }

      *(a1 + 12) = v17;
      v18 = *(a2 + 4) + *(a1 + 18);
      *a1 = *a2;
      *(a1 + 4) = v18;
      *a9 = 1;
      v14 = v15;
    }
  }

  ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a6 + 24), *(a1 + 22), v14, a5);
  if (ScoreAllowBackoff_updateNodeInSequence <= a4)
  {
    v20 = ScoreAllowBackoff_updateNodeInSequence;
    Node::updateScore<false>(a1, ScoreAllowBackoff_updateNodeInSequence);
    if (*(a6 + 224) >= v20)
    {
      BestData::newOrTiedBestNode(a6 + 192, v20, a1, a10);
    }

    v21 = a6 + 4 * (v20 + 5000);
    ++*(v21 + 151392);
    ++*(a6 + 302468);
    ++*(v21 + 320);
    ++*(a6 + 302464);
  }

  else
  {
    *(a1 + 8) = 1310740000;
    return 20000;
  }

  return v20;
}

uint64_t Node::scoreNodeSuccessorsSkipMany(const Node *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = a1;
  if (*(a2 + 8) == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *a2;
  }

  v45 = a8 + 299008;
  if (a7 >= 1)
  {
    v49 = 0;
    v14 = 0;
    v15 = (a10 + a9);
    if (a3)
    {
      v16 = *(a2 + 8);
    }

    else
    {
      v16 = 20000;
    }

    if (a3)
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a2 + 4);
    v44 = a8 + 151392;
    v19 = a7 + 1;
    v20 = a1;
    v21 = 20000;
    v46 = a4;
    while (1)
    {
      v22 = *(v20 + 5);
      if (v22 <= a4)
      {
        v24 = *(v20 + 4);
        if (v24 <= a4)
        {
          v25 = 17;
        }

        else
        {
          LOWORD(v24) = 20000;
          *(v20 + 4) = 20000;
          v25 = 1;
        }

        ++v49;
        v17 |= v25;
        v23 = v24;
      }

      else
      {
        *(v20 + 2) = 1310740000;
        v23 = 20000;
        v22 = 20000;
      }

      if ((v17 & 0x61) != 0)
      {
        break;
      }

      v34 = v21;
      v12 = a1;
LABEL_38:
      --v19;
      v20 = (v20 + 24);
      if (v19 <= 1)
      {
        goto LABEL_48;
      }
    }

    v50 = a1;
    v54 = v16;
    v55 = v14;
    v52 = *v20;
    v53 = v17;
    v51 = *(v20 + 1);
    v26 = *(v20 + 9);
    v27 = *(v20 + 12) + v22;
    v28 = v15;
    v29 = v16 + v15 + *(v20 + 21);
    if (v29 < v27)
    {
      *v20 = v13;
      *(v20 + 1) = v18 + v26;
      v30 = *(v20 + 8);
      if (v30 >= 0)
      {
        v31 = v30 << 8;
      }

      else
      {
        v31 = 255 * v30;
      }

      *(v20 + 3) = v31;
      v27 = v29;
    }

    v32 = a8;
    ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), *(v20 + 11), v27, a6);
    if (ScoreAllowBackoff_updateNodeInSequence <= a5)
    {
      v34 = ScoreAllowBackoff_updateNodeInSequence;
      ++*(v44 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
      ++*(v45 + 3460);
      Node::updateScore<false>(v20, ScoreAllowBackoff_updateNodeInSequence);
      v35 = v21;
      v36 = v34 < v21;
      if (v34 <= v21)
      {
        v12 = v20;
        a8 = v32;
        v15 = v28;
        v38 = v54;
        v37 = v55;
        if (!v36)
        {
          v40 = *(v20 + 11);
          v41 = *(v50 + 11);
          if (v40 < v41)
          {
            v34 = v34;
          }

          else
          {
            v34 = v35;
          }

          if (v40 < v41)
          {
            v12 = v20;
          }

          else
          {
            v12 = v50;
          }
        }

        goto LABEL_30;
      }

      v34 = v21;
    }

    else
    {
      *(v20 + 2) = 1310740000;
      v34 = v21;
    }

    v12 = v50;
    a8 = v32;
    v15 = v28;
    v38 = v54;
    v37 = v55;
LABEL_30:
    v14 = v37 + 1;
    if (v19 == 2)
    {
      goto LABEL_48;
    }

    v39 = v38 + v15 + v26;
    if (v39 >= v23)
    {
      v18 = v51;
    }

    else
    {
      v18 += v26;
    }

    if (v39 < v23)
    {
      v16 = v38 + v15 + v26;
    }

    else
    {
      v13 = v52;
      v16 = v23;
    }

    v17 = (2 * v53) & 0x66 | v53 & 0x40;
    a1 = v12;
    v21 = v34;
    a4 = v46;
    goto LABEL_38;
  }

  v14 = 0;
  v49 = 0;
  v34 = 20000;
LABEL_48:
  *a11 += v14;
  *a12 += v49;
  if (v34 != 20000)
  {
    if (*(a8 + 224) >= v34)
    {
      v42 = a8;
      BestData::newOrTiedBestNode(a8 + 192, v34, v12, 0);
      a8 = v42;
    }

    ++*(a8 + 4 * (v34 + 5000) + 320);
    ++*(v45 + 3456);
  }

  return v34;
}

uint64_t Node::scoreNodeSuccessorsNBest(unsigned __int16 *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v46 = a1;
  v13 = *(a2 + 8);
  if (v13 == 20000)
  {
    v14 = -2;
  }

  else
  {
    v14 = *a2;
  }

  v48 = a8 + 299008;
  if (a7 >= 1)
  {
    v55 = 0;
    v15 = 0;
    v50 = a4;
    if (a3)
    {
      v16 = 32;
    }

    else
    {
      v13 = 20000;
      v16 = 0;
    }

    v17 = *(a2 + 4);
    v47 = a8 + 151392;
    v18 = a7 + 1;
    v19 = a1;
    v49 = 20000;
    while (1)
    {
      v20 = v19[5];
      if (v20 <= a4)
      {
        v22 = v19[4];
        if (v22 <= a4)
        {
          v23 = 17;
        }

        else
        {
          LOWORD(v22) = 20000;
          v19[4] = 20000;
          v23 = 1;
        }

        ++v55;
        v16 |= v23;
        v21 = v22;
      }

      else
      {
        *(v19 + 2) = 1310740000;
        v21 = 20000;
        v20 = 20000;
      }

      if ((v16 & 0x61) != 0)
      {
        v24 = *v19;
        v25 = *(v19 + 1);
        v26 = *(v19 + 12) + v20;
        v27 = a10 + a9 + v13 + *(v19 + 21);
        v28 = v27 - v26;
        if (v27 - v26 < 0)
        {
          v28 = v26 - v27;
          *v19 = v14;
          *(v19 + 1) = v17;
          v29 = v19[8];
          if (v29 >= 0)
          {
            v30 = v29 << 8;
          }

          else
          {
            v30 = 255 * v29;
          }

          *(v19 + 3) = v30;
          v26 = v27;
          v53 = v25;
          v54 = v24;
        }

        else
        {
          v53 = v17;
          v54 = v14;
        }

        ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), v19[11], v26, a6);
        if (a5 >= ScoreAllowBackoff_updateNodeInSequence)
        {
          v32 = ScoreAllowBackoff_updateNodeInSequence;
          ++*(v47 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
          ++*(v48 + 3460);
          v33 = *(v19 + 3) >> 8;
          v34 = *(v19 + 20);
          v35 = (v33 - v34) << 8;
          v36 = v35 | v34;
          v37 = v35 - ((v35 >> 31) & (v35 >> 8));
          v38 = v33 + ScoreAllowBackoff_updateNodeInSequence;
          v39 = v33 < 1;
          if (v33 >= 1)
          {
            v40 = v37;
          }

          else
          {
            v40 = v36;
          }

          *(v19 + 3) = v40;
          if (v39)
          {
            v41 = ScoreAllowBackoff_updateNodeInSequence;
          }

          else
          {
            v41 = v38;
          }

          v19[4] = v41;
          v19[5] = ScoreAllowBackoff_updateNodeInSequence;
          if (v28 <= a5 - ScoreAllowBackoff_updateNodeInSequence)
          {
            v45 = *(v19 + 1);
            v56 = 0;
            v42 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v56);
            v43 = v56;
            *(v56 + 4) = v45;
            *(v43 + 8) = v53;
            *v43 = v54;
            *(v43 + 12) = v28;
            *(v19 + 1) = v42;
          }

          if (v32 <= v49 && (v32 < v49 || v19[11] < v46[11]))
          {
            v46 = v19;
            v49 = v32;
          }
        }

        else
        {
          *(v19 + 2) = 1310740000;
        }

        ++v15;
        if (v18 == 2)
        {
          goto LABEL_41;
        }

        v13 = v21;
        v14 = v24;
        v17 = v25;
        v16 = (2 * v16) & 0x22;
        a4 = v50;
      }

      --v18;
      v19 += 12;
      if (v18 <= 1)
      {
        goto LABEL_41;
      }
    }
  }

  v15 = 0;
  v55 = 0;
  v49 = 20000;
LABEL_41:
  *a11 += v15;
  *a12 += v55;
  if (v49 != 20000)
  {
    if (*(a8 + 224) >= v49)
    {
      BestData::newOrTiedBestNode(a8 + 192, v49, v46, 0);
    }

    ++*(a8 + 4 * (v49 + 5000) + 320);
    ++*(v48 + 3456);
  }

  return v49;
}

uint64_t Node::scoreNodeSuccessorsSkipOneNBest(const Node *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  if (*(a2 + 8) == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *a2;
  }

  v54 = a8 + 299008;
  if (a7 >= 1)
  {
    v61 = 0;
    v14 = 0;
    v63 = a10 + a9;
    if (a3)
    {
      v15 = *(a2 + 8);
    }

    else
    {
      v15 = 20000;
    }

    if (a3)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 4);
    v53 = a8 + 151392;
    v18 = a7 + 1;
    v19 = a1;
    v20 = v15;
    v21 = v13;
    v22 = v17;
    v55 = 20000;
    v23 = a4;
    while (1)
    {
      v24 = v19[5];
      if (v24 <= v23)
      {
        v26 = v19[4];
        if (v26 <= v23)
        {
          v27 = 17;
        }

        else
        {
          LOWORD(v26) = 20000;
          v19[4] = 20000;
          v27 = 1;
        }

        ++v61;
        v16 |= v27;
        v25 = v26;
      }

      else
      {
        *(v19 + 2) = 1310740000;
        v25 = 20000;
        v24 = 20000;
      }

      if ((v16 & 0x61) != 0)
      {
        v64 = v22;
        v66 = v21;
        v28 = *v19;
        v22 = *(v19 + 1);
        v29 = *(v19 + 12) + v24;
        v30 = v15 + v63 + *(v19 + 21);
        v31 = v30 - v29;
        v65 = *v19;
        v62 = v16;
        v32 = v20;
        if (v30 - v29 < 0)
        {
          v31 = v29 - v30;
          *v19 = v13;
          *(v19 + 1) = v17;
          v33 = v19[8];
          if (v33 >= 0)
          {
            v34 = v33 << 8;
          }

          else
          {
            v34 = 255 * v33;
          }

          *(v19 + 3) = v34;
          v29 = v30;
          v58 = v28;
          v59 = v22;
        }

        else
        {
          v58 = v13;
          v59 = v17;
        }

        v35 = v19[9];
        ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), v19[11], v29, a6);
        if (a5 >= ScoreAllowBackoff_updateNodeInSequence)
        {
          v38 = ScoreAllowBackoff_updateNodeInSequence;
          ++*(v53 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
          ++*(v54 + 3460);
          v39 = *(v19 + 3) >> 8;
          v40 = *(v19 + 20);
          v41 = (v39 - v40) << 8;
          if (v39 < 1)
          {
            v42 = v41 | v40;
            v43 = ScoreAllowBackoff_updateNodeInSequence;
          }

          else
          {
            v42 = v41 - ((v41 >> 31) & (v41 >> 8));
            v43 = v39 + ScoreAllowBackoff_updateNodeInSequence;
          }

          v37 = v65;
          *(v19 + 3) = v42;
          v19[4] = v43;
          v19[5] = ScoreAllowBackoff_updateNodeInSequence;
          if (v31 <= a5 - ScoreAllowBackoff_updateNodeInSequence)
          {
            v51 = *(v19 + 1);
            v67 = 0;
            v44 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v67);
            v37 = v65;
            v45 = v67;
            *(v67 + 4) = v51;
            *(v45 + 8) = v59;
            *v45 = v58;
            *(v45 + 12) = v31;
            *(v19 + 1) = v44;
          }

          v23 = a4;
          if (v38 <= v55 && (v38 < v55 || v19[11] < *(a1 + 11)))
          {
            v55 = v38;
            a1 = v19;
          }
        }

        else
        {
          *(v19 + 2) = 1310740000;
          v23 = a4;
          v37 = v65;
        }

        ++v14;
        if (v18 == 2)
        {
          goto LABEL_46;
        }

        v15 = v32 + v63 + v35;
        v46 = v15 - v25;
        if (v15 - v25 < 0)
        {
          v46 = v25 - v15;
          v17 = v64;
          v47 = v37;
          v64 = v22;
        }

        else
        {
          v17 = v22;
          v47 = v66;
          v66 = v37;
          v15 = v25;
        }

        if (v15 + v46 <= v23)
        {
          v67 = 0;
          v48 = v17;
          v17 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v67);
          v37 = v65;
          v23 = a4;
          v49 = v67;
          *(v67 + 4) = v48;
          *(v49 + 8) = v64;
          *v49 = v47;
          *(v49 + 12) = v46;
        }

        v13 = v66;
        v20 = v25;
        v21 = v37;
        v16 = (2 * v62) & 0x66;
      }

      --v18;
      v19 += 12;
      if (v18 <= 1)
      {
        goto LABEL_46;
      }
    }
  }

  v14 = 0;
  v61 = 0;
  v55 = 20000;
LABEL_46:
  *a11 += v14;
  *a12 += v61;
  if (v55 != 20000)
  {
    if (*(a8 + 224) >= v55)
    {
      BestData::newOrTiedBestNode(a8 + 192, v55, a1, 0);
    }

    ++*(a8 + 4 * (v55 + 5000) + 320);
    ++*(v54 + 3456);
  }

  return v55;
}

uint64_t Node::scoreNodeWithPatternNBest(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, _BYTE *a10, HmmNet *a11)
{
  if (a2)
  {
    v16 = *a2;
  }

  else
  {
    v16 = -2;
  }

  v17 = *(a1 + 12) + *(a1 + 10);
  if (a4 == 1)
  {
    v18 = -1;
  }

  else
  {
    v19 = a9 + a8 + *(a2 + 8) + *(a1 + 21);
    v18 = v19 - v17;
    if (a4 == 32)
    {
      v20 = -1;
    }

    else
    {
      v20 = v19 - v17;
    }

    if (v20 < 0)
    {
      v21 = *(a1 + 16);
      if (v21 >= 0)
      {
        v22 = v21 << 8;
      }

      else
      {
        v22 = 255 * v21;
      }

      *(a1 + 12) = v22;
      v16 = *a1;
      v23 = *(a1 + 4);
      v18 = -v20;
      *a1 = *a2;
      *(a1 + 4) = a3;
      *a10 = 1;
      v17 = v19;
      a3 = v23;
    }
  }

  ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a7 + 24), *(a1 + 22), v17, a6);
  if (ScoreAllowBackoff_updateNodeInSequence <= a5)
  {
    v25 = ScoreAllowBackoff_updateNodeInSequence;
    v26 = *(a1 + 12) >> 8;
    v27 = *(a1 + 20);
    v28 = (v26 - v27) << 8;
    v29 = v28 | v27;
    v30 = v28 - ((v28 >> 31) & (v28 >> 8));
    v31 = v26 + ScoreAllowBackoff_updateNodeInSequence;
    v32 = v26 < 1;
    if (v26 >= 1)
    {
      v33 = v30;
    }

    else
    {
      v33 = v29;
    }

    *(a1 + 12) = v33;
    if (v32)
    {
      v34 = ScoreAllowBackoff_updateNodeInSequence;
    }

    else
    {
      v34 = v31;
    }

    *(a1 + 8) = v34;
    *(a1 + 10) = ScoreAllowBackoff_updateNodeInSequence;
    if (a4 == 33 && ScoreAllowBackoff_updateNodeInSequence + v18 <= a5)
    {
      v35 = *(a1 + 4);
      v40 = 0;
      v36 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a7 + 302936, &v40);
      v37 = v40;
      *(v40 + 4) = v35;
      *(v37 + 8) = a3;
      *v37 = v16;
      *(v37 + 12) = v18;
      *(a1 + 4) = v36;
    }

    if (*(a7 + 224) >= v25)
    {
      BestData::newOrTiedBestNode(a7 + 192, v25, a1, a11);
    }

    v38 = a7 + 4 * (v25 + 5000);
    ++*(v38 + 151392);
    ++*(a7 + 302468);
    ++*(v38 + 320);
    ++*(a7 + 302464);
  }

  else
  {
    *(a1 + 8) = 1310740000;
    return 20000;
  }

  return v25;
}

uint64_t Node::scoreNodeSuccessorsSkipManyNBest(unsigned __int16 *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = a8;
  v54 = a1;
  v13 = *(a2 + 8);
  if (v13 == 20000)
  {
    v14 = -2;
  }

  else
  {
    v14 = *a2;
  }

  v56 = a8 + 299008;
  if (a7 < 1)
  {
    v15 = 0;
    v64 = 0;
    v57 = 20000;
    goto LABEL_57;
  }

  v64 = 0;
  v15 = 0;
  v68 = a10 + a9;
  if (!a3)
  {
    v13 = 20000;
  }

  v69 = v13;
  if (a3)
  {
    v16 = 32;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 4);
  v55 = a8 + 151392;
  v18 = a7 + 1;
  v19 = a1;
  v20 = v14;
  v21 = v17;
  v57 = 20000;
  v58 = a4;
  while (1)
  {
    v22 = v19[5];
    if (v22 <= a4)
    {
      v24 = v19[4];
      if (v24 <= a4)
      {
        v25 = 17;
      }

      else
      {
        LOWORD(v24) = 20000;
        v19[4] = 20000;
        v25 = 1;
      }

      ++v64;
      v16 |= v25;
      v23 = v24;
    }

    else
    {
      *(v19 + 2) = 1310740000;
      v23 = 20000;
      v22 = 20000;
    }

    if ((v16 & 0x61) != 0)
    {
      break;
    }

LABEL_53:
    --v18;
    v19 += 12;
    if (v18 <= 1)
    {
      goto LABEL_57;
    }
  }

  v65 = v21;
  v66 = v20;
  v27 = *v19;
  v26 = *(v19 + 1);
  v28 = *(v19 + 12) + v22;
  v29 = v69 + v68 + *(v19 + 21);
  v30 = v29 - v28;
  if (v29 - v28 < 0)
  {
    v30 = v28 - v29;
    *v19 = v14;
    *(v19 + 1) = v17;
    v31 = v19[8];
    if (v31 >= 0)
    {
      v32 = v31 << 8;
    }

    else
    {
      v32 = 255 * v31;
    }

    *(v19 + 3) = v32;
    v28 = v29;
    v61 = v26;
    v62 = v27;
  }

  else
  {
    v61 = v17;
    v62 = v14;
  }

  v33 = v19[9];
  ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(v12 + 24), v19[11], v28, a6);
  if (a5 >= ScoreAllowBackoff_updateNodeInSequence)
  {
    v35 = ScoreAllowBackoff_updateNodeInSequence;
    ++*(v55 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
    ++*(v56 + 3460);
    v36 = *(v19 + 3) >> 8;
    v37 = *(v19 + 20);
    v38 = (v36 - v37) << 8;
    if (v36 < 1)
    {
      v39 = v38 | v37;
      v40 = ScoreAllowBackoff_updateNodeInSequence;
    }

    else
    {
      v39 = v38 - ((v38 >> 31) & (v38 >> 8));
      v40 = v36 + ScoreAllowBackoff_updateNodeInSequence;
    }

    *(v19 + 3) = v39;
    v19[4] = v40;
    v19[5] = ScoreAllowBackoff_updateNodeInSequence;
    if (v30 <= a5 - ScoreAllowBackoff_updateNodeInSequence)
    {
      v53 = *(v19 + 1);
      v70 = 0;
      v41 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v70);
      v42 = v70;
      *(v70 + 4) = v53;
      *(v42 + 8) = v61;
      *v42 = v62;
      *(v42 + 12) = v30;
      *(v19 + 1) = v41;
    }

    if (v35 <= v57 && (v35 < v57 || v19[11] < v54[11]))
    {
      v57 = v35;
      v54 = v19;
    }
  }

  else
  {
    *(v19 + 2) = 1310740000;
  }

  ++v15;
  if (v18 != 2)
  {
    v43 = v66;
    v44 = v69 + v68 + v33;
    v46 = v23 - v44;
    v45 = v23 <= v44;
    if (v23 <= v44)
    {
      v17 = v26;
    }

    else
    {
      v17 = v65;
    }

    if (v23 <= v44)
    {
      v14 = v27;
    }

    else
    {
      v14 = v66;
    }

    if (v23 <= v44)
    {
      v44 = v23;
    }

    if (v45)
    {
      v47 = v65;
    }

    else
    {
      v43 = v27;
      v47 = v26;
    }

    if (v45)
    {
      v48 = -v46;
    }

    else
    {
      v48 = v46;
    }

    v69 = v44;
    a4 = v58;
    v12 = a8;
    if (v48 + v44 <= v58)
    {
      v70 = 0;
      v49 = v14;
      v50 = v17;
      v67 = v43;
      DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v70);
      a4 = v58;
      v17 = v50;
      v12 = a8;
      v14 = v49;
      v51 = v70;
      *(v70 + 4) = v17;
      *(v51 + 8) = v47;
      *v51 = v67;
      *(v51 + 12) = v48;
    }

    v16 = (2 * v16) & 0x66 | v16 & 0x40;
    v20 = v14;
    v21 = v17;
    goto LABEL_53;
  }

  v12 = a8;
LABEL_57:
  *a11 += v15;
  *a12 += v64;
  if (v57 != 20000)
  {
    if (*(v12 + 224) >= v57)
    {
      BestData::newOrTiedBestNode(v12 + 192, v57, v54, 0);
    }

    ++*(v12 + 4 * (v57 + 5000) + 320);
    ++*(v56 + 3456);
  }

  return v57;
}

void NodeNetNode::NodeNetNode(NodeNetNode *this, char a2)
{
  *(this + 1) = 0x100000001;
  *(this + 4) = 1310740000;
  *(this + 20) = 0;
  *(this + 7) = -65536;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *this = &unk_2875290C0;
  *(this + 42) = a2;
}

void NodeNetNode::~NodeNetNode(void **this)
{
  PredStruct::~PredStruct(this + 4);
}

{
  PredStruct::~PredStruct(this + 4);
}

{
  PredStruct::~PredStruct(this + 4);

  JUMPOUT(0x26672B1B0);
}

void PredStruct::~PredStruct(void **this)
{
  if (*(this + 4) >= 2u)
  {
    v2 = *this;
    if (*this)
    {
      MemChunkFree(v2, 0);
    }
  }
}

uint64_t NodeNetNode::sizeObject(uint64_t a1, int a2)
{
  if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
  {
    if (a2 == 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 12;
    }

    v5 = sizeObject(a1 + 20, a2) + v4;
  }

  else
  {
    v5 = 24;
    if (a2 == 3)
    {
      v5 = 0;
    }
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7 <= 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 8 * v7;
    }

    if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
    {
      v6 = v8 + 8;
    }

    else
    {
      v6 = v8 + 16;
    }
  }

  return v6 + v5;
}

uint64_t NodeNetNode::fill(uint64_t this, const NodeNetNode *a2)
{
  v2 = a2 + 8;
  if (!a2)
  {
    v2 = 0;
  }

  *(this + 16) = *(v2 + 2);
  *(this + 8) = *v2;
  *(this + 12) = *(v2 + 1);
  v3 = *(v2 + 12);
  *(this + 28) = *(v2 + 5);
  *(this + 20) = v3;
  return this;
}

uint64_t NodeNetNode::fillAsEpsilon(NodeNetNode *this, const NodeNetNode *a2)
{
  result = (*(*this + 24))(this, a2);
  v4 = *(this + 28);
  v5 = v4 + *(this + 12);
  v6 = v5 << 8;
  if (v5 < 0)
  {
    v7 = (v5 + v4 < 0) ^ __OFADD__(v5, v4) | (v5 + v4 == 0);
    v8 = 255 * v5;
    v6 |= v4;
    if (!v7)
    {
      v6 = v8;
    }
  }

  *(this + 5) = v6;
  return result;
}

uint64_t NodeNetNode::scoreNodeBWBack(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, int a5, int a6, HmmNet *a7)
{
  v8 = *(a1 + 20) >> 8;
  v9 = *(a1 + 28);
  v10 = v8 - v9;
  v11 = (v8 - v9) << 8;
  if (v8 <= 0)
  {
    v12 = *(a1 + 28) | ((v8 - v9) << 8);
  }

  else
  {
    v12 = 255 * (v8 - v9);
  }

  if (v10 >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  *(a1 + 20) = v13;
  v14 = *(a2 + 8);
  v15 = *(a1 + 18);
  v16 = 20000;
  if (v14 == 20000)
  {
    if (v15 == 20000)
    {
      return v16;
    }
  }

  else
  {
    v17 = *(a1 + 24);
    if (v17 < 0)
    {
      v18 = *(a1 + 29) + v17;
    }

    else
    {
      v18 = *(a1 + 29);
    }

    LODWORD(v16) = a6 + a5 + v14 + v18;
  }

  if ((v9 + (v13 >> 8) < 0) ^ __OFADD__(v9, v13 >> 8) | (v9 + (v13 >> 8) == 0))
  {
    v19 = -v9;
  }

  else
  {
    v19 = v13 >> 8;
  }

  v20 = v19 & (v19 >> 31);
  if (v15 == 20000)
  {
    v20 = 0;
  }

  v21 = v15 - v20;
  if (v16 >= v21)
  {
    LODWORD(v16) = v21;
  }

  else
  {
    v22 = *(a1 + 24);
    if (v22 >= 0)
    {
      v23 = v22 << 8;
    }

    else
    {
      v23 = 255 * v22;
    }

    *(a1 + 20) = v23;
    *(a1 + 8) = *a2;
    *(a1 + 12) = *(a2 + 4) + *(a1 + 26);
    v19 = v23 >> 8;
    *a3 = 1;
  }

  *(a1 + 18) = v16;
  v24 = v16;
  if (*(a4 + 224) >= v16)
  {
    BestData::newOrTiedBestNode(a4 + 192, v16, (a1 + 8), a7);
    v24 = *(a1 + 18);
  }

  *(a1 + 16) = v16 + (v19 & ~(v19 >> 31));
  return v24;
}