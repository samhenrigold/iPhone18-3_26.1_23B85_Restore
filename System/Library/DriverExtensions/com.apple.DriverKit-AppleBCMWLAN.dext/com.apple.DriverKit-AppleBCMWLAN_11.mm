uint64_t AppleBCMWLANCommandMonitor::reportQueueWaitTimeus(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = 3758097090;
  if (a2 <= 3)
  {
    v5 = *(*(a1 + 48) + 8 * a2 + 184);
    if (v5)
    {
      IOHistogramReporter::tallyValue(v5, a3);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommandMonitor::freeResources(AppleBCMWLANCommandMonitor *this)
{
  v2 = *(this + 6);
  v3 = v2[12];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 6) + 96) = 0;
    v2 = *(this + 6);
  }

  v4 = v2[2];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 6) + 16) = 0;
    v2 = *(this + 6);
  }

  v5 = v2[13];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 6) + 104) = 0;
    v2 = *(this + 6);
  }

  v6 = v2[11];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 6) + 88) = 0;
    v2 = *(this + 6);
  }

  v2[5] = 0;
  *(*(this + 6) + 32) = 0;
  result = *(*(this + 6) + 72);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 6) + 72) = 0;
  }

  return result;
}

void AppleBCMWLANCommandMonitor::free(void **this)
{
  if (this[6])
  {
    AppleBCMWLANCommandMonitor::freeResources(this);
    memset_s(this[6], 0xE0uLL, 0, 0xE0uLL);
    v2 = this[6];
    if (v2)
    {
      IOFree(v2, 0xE0uLL);
      this[6] = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANCommandMonitor::setRateThreshold(AppleBCMWLANCommandMonitor *this, unsigned int a2, int a3)
{
  v6 = *(this + 6);
  if (*(v6 + 112) < a2)
  {
    *(v6 + 112) = a2;
    v6 = *(this + 6);
  }

  *(v6 + 116) = a2;
  *(*(this + 6) + 120) = a3;
  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d:Applying command rate threshold of %d commands within %d ms\n", "setRateThreshold", 320, a2, a3);
  }

  return 1;
}

BOOL AppleBCMWLANCommandMonitor::monitorCmdPrepared(AppleBCMWLANCommandMonitor *this, AppleBCMWLANCommand *a2)
{
  if (a2)
  {
    if (AppleBCMWLANCommand::getCmdName(a2))
    {
      CmdName = AppleBCMWLANCommand::getCmdName(a2);
      v5 = OSString::withCString(CmdName);
      if (v5)
      {
        v6 = v5;
        v7 = this + 48;
        Object = OSDictionary::getObject(*(*(this + 6) + 104), v5);
        v9 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
        if (!v9)
        {
          if (AppleBCMWLANCommandMonitor::monitorCmdPrepared(this + 48, v6, &v42))
          {
            goto LABEL_53;
          }

          v9 = v42;
        }

        v10 = OSDictionary::getObject(v9, "CommandMonitorTimeHistoryKey");
        v11 = OSMetaClassBase::safeMetaCast(v10, gOSOrderedSetMetaClass);
        if (v11)
        {
          goto LABEL_8;
        }

        v12 = OSOrderedSet::withCapacity();
        if (!v12)
        {
          if (*(*v7 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANCommandMonitor::monitorCmdPrepared(this + 48, a2);
          }

          goto LABEL_53;
        }

        v11 = v12;
        v13 = OSDictionary::setObject(v9, "CommandMonitorTimeHistoryKey", v12);
        (v11->release)(v11);
        if (v13)
        {
LABEL_8:
          v14 = AppleBCMWLANCommand::getQueuedTime_ns(a2, 1u) / 0xF4240uLL;
          v15 = OSNumber::withNumber(v14, 0x40uLL);
          if (!v15)
          {
            if (*(*v7 + 72) && CCLogStream::shouldLog())
            {
              v20 = *(*v7 + 72);
              v21 = AppleBCMWLANCommand::getCmdName(a2);
              CCLogStream::logAlert(v20, "[dk] %s@%d:Failed to create timeAtPending %lld for cmd %s\n", "monitorCmdPrepared", 382, v14, v21);
            }

            goto LABEL_53;
          }

          v16 = v15;
          if (!(v11->__vftable[1].Dispatch)(v11))
          {
            goto LABEL_22;
          }

          if (*(*v7 + 8) == 1)
          {
            v17 = OSDictionary::getObject(v9, "CommandMonitorHistogramKey");
            v18 = OSMetaClassBase::safeMetaCast(v17, gIOHistogramReporterMetaClass);
            if (!v18)
            {
              HistogramReporter = AppleBCMWLANCommandMonitor::makeHistogramReporter(this, v6);
              if (!HistogramReporter)
              {
                if (*(*v7 + 72) && CCLogStream::shouldLog())
                {
                  AppleBCMWLANCommandMonitor::monitorCmdPrepared(this + 48, a2);
                }

                goto LABEL_52;
              }

              v19 = HistogramReporter;
              OSDictionary::setObject(v9, "CommandMonitorHistogramKey", HistogramReporter);
              v22 = 1;
LABEL_18:
              FirstObject = OSOrderedSet::getFirstObject(v11);
              v24 = OSMetaClassBase::safeMetaCast(FirstObject, gOSNumberMetaClass);
              if (v24)
              {
                v25 = OSNumber::unsigned64BitValue(v24);
                if (v19 && v25)
                {
                  IOHistogramReporter::tallyValue(v19, v14 - v25);
                }

LABEL_22:
                if ((v11->__vftable[1].Dispatch)(v11) == *(*v7 + 112))
                {
                  LastObject = OSOrderedSet::getLastObject(v11);
                  v27 = OSMetaClassBase::safeMetaCast(LastObject, gOSNumberMetaClass);
                  OSSet::removeObject(v11, v27);
                }

                OSOrderedSet::setFirstObject(v11, v16);
                if ((*(*v7 + 116) || *(*v7 + 120)) && (v11->__vftable[1].Dispatch)(v11) >= *(*v7 + 116))
                {
                  v28 = OSOrderedSet::getLastObject(v11);
                  v29 = OSMetaClassBase::safeMetaCast(v28, gOSNumberMetaClass);
                  if (v29)
                  {
                    v30 = v14 - OSNumber::unsigned64BitValue(v29);
                    v31 = *v7;
                    if (v30 < *(*v7 + 120))
                    {
                      if (*(v31 + 72))
                      {
                        shouldLog = CCLogStream::shouldLog();
                        v31 = *v7;
                        if (shouldLog)
                        {
                          v40 = *(v31 + 72);
                          v41 = AppleBCMWLANCommand::getCmdName(a2);
                          CCLogStream::logEmergency(v40, "[dk] %s@%d: Command %s rate exceeded %d calls within %d ms, rule is %d calls within %d ms\n", "monitorCmdPrepared", 445, v41, *(*v7 + 116), v30, *(*v7 + 116), *(*v7 + 120));
                          v31 = *v7;
                        }
                      }

                      if (*(v31 + 10))
                      {
                        v33 = 6;
                      }

                      else
                      {
                        v33 = 4;
                      }

                      v34 = *(v31 + 96);
                      v35 = AppleBCMWLANCommand::getCmdName(a2);
                      CCFaultReporter::reportFault(v34, v33, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCommandMonitor.cpp", 0x1C4u, "monitorCmdPrepared", 0, -469793765, "cmd=%s", v35);
                      if ((v11->__vftable[1].Dispatch)(v11) >= 2)
                      {
                        do
                        {
                          v36 = OSOrderedSet::getLastObject(v11);
                          v37 = OSMetaClassBase::safeMetaCast(v36, gOSNumberMetaClass);
                          OSSet::removeObject(v11, v37);
                        }

                        while ((v11->__vftable[1].Dispatch)(v11) > 1);
                      }
                    }
                  }
                }

                goto LABEL_52;
              }

              if (*(*v7 + 72) && CCLogStream::shouldLog())
              {
                AppleBCMWLANCommandMonitor::monitorCmdPrepared(v7, a2, v11);
                if (!v22)
                {
                  goto LABEL_52;
                }
              }

              else if (!v22)
              {
LABEL_52:
                (v16->release)(v16);
                goto LABEL_53;
              }

              OSDictionary::removeObject(v9, "CommandMonitorHistogramKey");
              (*(*v19 + 16))(v19);
              goto LABEL_52;
            }

            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v22 = 0;
          goto LABEL_18;
        }

LABEL_53:
        (v6->release)(v6);
      }
    }
  }

  return a2 != 0;
}

const OSMetaClassBase *AppleBCMWLANCommandMonitor::makeHistogramReporter(AppleBCMWLANCommandMonitor *this, OSString *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[4] = v3;
  v21[5] = v3;
  v21[2] = v3;
  v21[3] = v3;
  v21[0] = v3;
  v21[1] = v3;
  v5 = this + 48;
  v4 = *(this + 6);
  *__str = -1431655766;
  snprintf(__str, 4uLL, "%03d", *v4);
  v6 = 0;
  ++**v5;
  v7 = *v5;
  v8 = (*v5 + 48);
  do
  {
    v9 = *v8++;
    v10 = &v21[v6];
    *&v21[v6] = v9;
    if (v6 == 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = 1;
    }

    *(v10 + 2) = v11;
    *(v10 + 3) = 1;
    ++v6;
  }

  while (v6 != 6);
  IO80211Controller::getReporterProvider(v7[27]);
  OSString::getCStringNoCopy(a2);
  v12 = IOHistogramReporter::with();
  v13 = *v5;
  if (v12)
  {
    OSSet::setObject(v13[2], v12);
    (v12->release)(v12);
    v14 = *v5;
    v15 = *(*v5 + 40);
    v16 = *(*v5 + 24);
    v17 = *(v14 + 10);
    CStringNoCopy = OSString::getCStringNoCopy(a2);
    v15(v16, v17, v12, "Commands Issued Histogram", CStringNoCopy);
  }

  else if (v13[9] && CCLogStream::shouldLog())
  {
    AppleBCMWLANCommandMonitor::makeHistogramReporter(v5);
  }

  return v12;
}

BOOL AppleBCMWLANCommandMonitor::monitorCmdCompleted(AppleBCMWLANCommandMonitor *this, AppleBCMWLANCommand *a2)
{
  if (a2)
  {
    if (AppleBCMWLANCommand::getCmdName(a2))
    {
      CmdName = AppleBCMWLANCommand::getCmdName(a2);
      v5 = OSString::withCString(CmdName);
      *__str = -1431655766;
      if (v5)
      {
        v6 = v5;
        v8 = this + 48;
        v7 = *(this + 6);
        if (*(v7 + 9) == 1)
        {
          Object = OSDictionary::getObject(*(v7 + 104), v5);
          v10 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
          if (!v10)
          {
            v10 = OSDictionary::withCapacity(2u);
            OSDictionary::setObject(*(*v8 + 104), v6, v10);
          }

          v11 = OSDictionary::getObject(v10, "CommandMonitorSimpleKey");
          v12 = OSMetaClassBase::safeMetaCast(v11, gIOSimpleReporterMetaClass);
          if (!v12)
          {
            SimpleReporter = AppleBCMWLANCommandMonitor::makeSimpleReporter(this, v6);
            if (!SimpleReporter)
            {
              if (*(*v8 + 72) && CCLogStream::shouldLog())
              {
                AppleBCMWLANCommandMonitor::monitorCmdCompleted(this + 48, a2);
              }

              goto LABEL_31;
            }

            v12 = SimpleReporter;
            OSDictionary::setObject(v10, "CommandMonitorSimpleKey", SimpleReporter);
          }

          v14 = OSDictionary::getObject(v10, "CommandMonitorSimpleChannelIDKey");
          v15 = OSMetaClassBase::safeMetaCast(v14, gOSNumberMetaClass);
          if (!v15)
          {
            snprintf(__str, 4uLL, "%03d", *(*v8 + 4));
            ++*(*v8 + 4);
            v16 = (__str[0] << 16) | (__str[1] << 8);
            v17 = __str[2] | 0x434D445374000000;
            ++*(*v8 + 4);
            v18 = OSNumber::withNumber(v16 | v17, 0x40uLL);
            if (!v18)
            {
              if (*(*v8 + 72) && CCLogStream::shouldLog())
              {
                AppleBCMWLANCommandMonitor::monitorCmdCompleted(v8, a2);
              }

              goto LABEL_31;
            }

            v15 = v18;
            OSDictionary::setObject(v10, "CommandMonitorSimpleChannelIDKey", v18);
          }

          v19 = OSNumber::unsigned64BitValue(v15);
          Status = AppleBCMWLANCommand::getStatus(a2);
          v21 = (Status << 24) | (((Status >> 8) & 0x3F) << 32);
          if (IOSimpleReporter::incrementValue(v12, v21 | v19, 1))
          {
            v36 = 0;
            v22 = *(*v8 + 80);
            v23 = AppleBCMWLANCommand::getStatus(a2);
            if (IOService::StringFromReturn(v22, v23, &v36, 0))
            {
              if (*(*v8 + 72) && CCLogStream::shouldLog())
              {
                AppleBCMWLANCommandMonitor::monitorCmdCompleted(v8, a2);
              }
            }

            else
            {
              CStringNoCopy = OSString::getCStringNoCopy(v36);
              v25 = IOReporter::addChannel(v12, v21 | v19, CStringNoCopy);
              if (v36)
              {
                (v36->release)(v36);
                v36 = 0;
              }

              if (v25)
              {
                if (*(*v8 + 72) && CCLogStream::shouldLog())
                {
                  AppleBCMWLANCommandMonitor::monitorCmdCompleted(v8, a2);
                }
              }

              else
              {
                IOSimpleReporter::incrementValue(v12, v21 | v19, 1);
                v26 = *(*v8 + 24);
                v27 = *(*v8 + 32);
                v28 = *(*v8 + 80);
                v29 = AppleBCMWLANCommand::getCmdName(a2);
                v27(v26, v28, 0, "Commands Issued", v29);
                v30 = *v8;
                v31 = *(*v8 + 40);
                v32 = *(*v8 + 24);
                v33 = *(v30 + 80);
                v34 = AppleBCMWLANCommand::getCmdName(a2);
                v31(v32, v33, v12, "Commands Issued", v34);
              }
            }
          }
        }

LABEL_31:
        (v6->release)(v6);
      }
    }
  }

  return a2 != 0;
}

const OSMetaClassBase *AppleBCMWLANCommandMonitor::makeSimpleReporter(AppleBCMWLANCommandMonitor *this, OSString *a2)
{
  v3 = this + 48;
  ReporterProvider = IO80211Controller::getReporterProvider(*(*(this + 6) + 216));
  v6 = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v5);
  v7 = *v3;
  if (v6)
  {
    OSSet::setObject(*(v7 + 16), v6);
    (v6->release)(v6);
    v8 = *v3;
    v9 = *(*v3 + 40);
    v10 = *(*v3 + 24);
    v11 = *(v8 + 80);
    CStringNoCopy = OSString::getCStringNoCopy(a2);
    v9(v10, v11, v6, "Commands Issued", CStringNoCopy);
  }

  else if (*(v7 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANCommandMonitor::makeSimpleReporter(v3);
  }

  return v6;
}

uint64_t AppleBCMWLANCommandMonitor::configureReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4)
{
  v16 = 0;
  p_refcount = &this[1].refcount;
  v6 = *(*&this[1].refcount + 16);
  if (!v6)
  {
    return 3758097084;
  }

  result = (*(*v6 + 72))(v6);
  if (result)
  {
    v17 = IOReporter::configureAllReports(*(*&this[1].refcount + 16), a2, a3, &v16, v11);
    v12 = *&this[1].refcount;
    v13 = *(v12 + 72);
    v14 = *(v12 + 96);
    ClassNameHelper = getClassNameHelper(this);
    v17 = testPostConfigureAllAndAdjustV3(v13, v14, ClassNameHelper, a3, &v17, a4, v16, -2);
    if (v17)
    {
      AppleBCMWLANCommandMonitor::configureReport(p_refcount);
    }

    return v17;
  }

  return result;
}

uint64_t AppleBCMWLANCommandMonitor::updateReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unint64_t *a5, unint64_t *a6, IOMemoryDescriptor *a7)
{
  result = 3758097084;
  v26 = 0;
  v9 = *&this[1].refcount;
  if (*(v9 + 88))
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      result = (*(*v10 + 72))(v10);
      if (result)
      {
        v17 = *(*&this[1].refcount + 72);
        ClassNameHelper = getClassNameHelper(this);
        testPreUpdateAllReportersV3(v17, ClassNameHelper, *(*&this[1].refcount + 16), *a5, *a6, a7);
        updated = IOReporter::updateAllReports(*(*&this[1].refcount + 16), a2, a3, &v26, *a5, *a6, a7, v19);
        v20 = *&this[1].refcount;
        v21 = *(v20 + 72);
        v22 = *(v20 + 96);
        v23 = getClassNameHelper(this);
        updated = testPostUpdateAllAndAdjustV3(v21, v22, v23, &updated, v26, a4, a5, a6, -2);
        if (updated && *(*&this[1].refcount + 72))
        {
          if (CCLogStream::shouldLog())
          {
            v24 = *(*&this[1].refcount + 72);
            v25 = getClassNameHelper(this);
            CCLogStream::logEmergency(v24, "[dk] %s@%d:DKReporter::%s::%s(%d) testAndAdjustOffsetAndCapacity failed count %u outElementCount %u offset %llu capacity %llu", "updateReport", 687, v25, "updateReport", 687, v26, *a4, *a5, *a6);
          }
        }

        return updated;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommandMonitor::recordStats(uint64_t this, char a2)
{
  *(*(this + 48) + 8) = a2;
  *(*(this + 48) + 9) = a2;
  return this;
}

uint64_t OUTLINED_FUNCTION_0_22(int a1, AppleBCMWLANCommand *this)
{

  return AppleBCMWLANCommand::getCmdName(this);
}

OSObject *AppleBCMWLANPCIeCompletionRing::withOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeCompletionRingMetaClass, &v12))
  {
    return 0;
  }

  v10 = v12;
  if (v12 && ((v12->OSMetaClassBase::__vftable[5].release)(v12, a1, a2, a3, a4, a5) & 1) == 0)
  {
    (v10->release)(v10);
    return 0;
  }

  return v10;
}

uint64_t AppleBCMWLANPCIeCompletionRing::initWithOwnerAndOptions(AppleBCMWLANRxItemRing *a1, OSObject *a2, void (*a3)(OSObject *, ...), void (*a4)(OSObject *, AppleBCMWLANByteRing *, int, void *), uint64_t a5, CCLogStream *a6)
{
  result = AppleBCMWLANRxItemRing::initWithOptions(a1, a2, a3, a4);
  if (!result)
  {
    return result;
  }

  result = IOMallocZeroTyped();
  *(a1 + 14) = result;
  if (!result)
  {
    return result;
  }

  if (!a6)
  {
    ClassNameHelper = getClassNameHelper(a1);
    IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithOwnerAndOptions");
    return 0;
  }

  *(result + 200) = a6;
  v11 = *(*(a1 + 14) + 200);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  AppleBCMWLANByteRing::setLogger(a1, a6);
  **(a1 + 14) = a2;
  *(*(a1 + 14) + 56) = *a5;
  *(*(a1 + 14) + 58) = *(a5 + 2);
  AppleBCMWLANItemRing::setItemCount(a1, *(a5 + 8));
  AppleBCMWLANItemRing::setItemSize(a1, *(a5 + 4));
  v12 = *(a5 + 112);
  *(*(a1 + 14) + 64) = *(a5 + 104);
  v13 = (*(a5 + 8) * *(a5 + 4));
  if (v13 % v12)
  {
    v14 = v12 - v13 % v12;
  }

  else
  {
    v14 = 0;
  }

  *(*(a1 + 14) + 96) = (v14 + v13);
  v15 = *(a5 + 88);
  *(*(a1 + 14) + 32) = *(a5 + 80) + 4 * *(*(a1 + 14) + 56);
  *(*(a1 + 14) + 40) = v15 + 4 * *(*(a1 + 14) + 56);
  v16 = *(a5 + 24);
  *(*(a1 + 14) + 128) = *(a5 + 16);
  *(*(a1 + 14) + 136) = v16;
  *(*(a1 + 14) + 144) = *(a5 + 48);
  *(*(a1 + 14) + 152) = *(a5 + 56);
  *(*(a1 + 14) + 8) = 1;
  *(*(a1 + 14) + 104) = *(*(a1 + 14) + 96);
  if (AppleBCMWLANPCIeAllocateDartMappedMemory(*(a1 + 14) + 72, v12, 1, *(a5 + 120)))
  {
    *(*(a1 + 14) + 48) = *(*(a1 + 14) + 120);
    *(*(a1 + 14) + 52) = *(*(a1 + 14) + 124);
    *(*(a1 + 14) + 176) = a1;
    **(*(a1 + 14) + 40) = 0;
    **(*(a1 + 14) + 32) = 0;
    return 1;
  }

  result = AppleBCMWLANByteRing::getLogger(a1);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANPCIeCompletionRing::initWithOwnerAndOptions(a1, a1 + 112);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::free(void **this)
{
  if (this[14])
  {
    if (AppleBCMWLANByteRing::getLogger(this))
    {
      AppleBCMWLANByteRing::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeCompletionRing::free(this);
      }
    }

    v2 = this[14];
    v3 = v2[25];
    if (v3)
    {
      (*(*v3 + 16))(v3);
      *(this[14] + 25) = 0;
      v2 = this[14];
    }

    AppleBCMWLANPCIeFreeDartMappedMemory((v2 + 9));
    memset_s(this[14], 0xD0uLL, 0, 0xD0uLL);
    v4 = this[14];
    if (v4)
    {
      IOFree(v4, 0xD0uLL);
      this[14] = 0;
    }
  }

  return AppleBCMWLANTxItemRing::free(this);
}

uint64_t AppleBCMWLANPCIeCompletionRing::requestRingDrain(AppleBCMWLANPCIeCompletionRing *this)
{
  v2 = (*(*this + 224))(this);
  v3 = (*(*this + 232))(this);
  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(this, v3, v2);
  ItemCount = AppleBCMWLANItemRing::getItemCount(this);
  v6 = 0;
  if (AppleBCMWLANItemRing::getReadableItemCount(this, v3, v2))
  {
    v7 = ItemCount >> 1;
    do
    {
      v8 = *(*(this + 14) + 112);
      v9 = AppleBCMWLANItemRing::getItemSize(this) * v2;
      v10 = (*(*this + 184))(this);
      v11 = **(this + 14);
      ReadableItemCountContinuous = AppleBCMWLANItemRing::getReadableItemCountContinuous(this, v3, v2);
      v13 = v10(v11, this, v8 + v9, ReadableItemCountContinuous);
      v2 += v13;
      if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
      {
        v2 = 0;
        *(*(this + 14) + 8) ^= 1u;
      }

      v6 = (v13 + v6);
      **(*(this + 14) + 32) = v2;
    }

    while (AppleBCMWLANItemRing::getReadableItemCount(this, v3, v2));
    if (v6)
    {
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      *(*(this + 14) + 168) = v2;
      if (ReadableItemCount >= v7)
      {
        AppleBCMWLANPCIeDoorbell::ring(*(*(this + 14) + 144), *(*(this + 14) + 152), 0, 0);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getReadIndex(AppleBCMWLANPCIeCompletionRing *this)
{
  v2 = **(*(this + 14) + 32);
  if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
  {
    AppleBCMWLANPCIeCompletionRing::getReadIndex(this);
  }

  return v2;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getWriteIndex(AppleBCMWLANPCIeCompletionRing *this)
{
  v2 = **(*(this + 14) + 40);
  if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
  {
    AppleBCMWLANPCIeCompletionRing::getWriteIndex(this);
  }

  return v2;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getIndices(AppleBCMWLANPCIeCompletionRing *this, unsigned int *a2, unsigned int *a3)
{
  v6 = **(*(this + 14) + 32);
  if (v6 >= AppleBCMWLANItemRing::getItemCount(this) || (*a2 = v6, v6 = **(*(this + 14) + 40), result = AppleBCMWLANItemRing::getItemCount(this), v6 >= result))
  {
    AppleBCMWLANItemRing::CallErrorAction(this, 3825173271, 0);
    panic("AppleBCMWLANPCIeCompletionRing::getIndices() Invalid index(0x%x)\n", v6);
  }

  *a3 = v6;
  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getBusAddress(uint64_t result, _DWORD *a2)
{
  *a2 = *(*(result + 112) + 48);
  a2[1] = *(*(result + 112) + 52);
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeCompletionRing::getBusAddress(uint64_t result, _DWORD *a2)
{
  *a2 = *(*(result + 8) + 48);
  a2[1] = *(*(result + 8) + 52);
  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::checkForWork(AppleBCMWLANPCIeCompletionRing *this)
{
  if (IO80211WorkSource::isEnabled(this))
  {
    if (AppleBCMWLANItemRing::getReadableItemCount(this))
    {
      ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(this);
      (*(*this + 192))(this, ReadableItemCount);
    }

    if (AppleBCMWLANItemRing::getReadableItemCount(this))
    {
      IO80211WorkSource::signalWorkAvailable(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeCompletionRing::dumpRingState(AppleBCMWLANPCIeCompletionRing *this, const char *a2, char *a3, unsigned int a4, unsigned int a5)
{
  Logger = AppleBCMWLANByteRing::getLogger(this);
  v20 = a4;
  isEnabled = IO80211WorkSource::isEnabled(this);
  v11 = *(this + 14);
  v12 = **(v11 + 32);
  v13 = **(v11 + 40);
  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(this);
  WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(this);
  ItemSize = AppleBCMWLANItemRing::getItemSize(this);
  v17 = (*(*this + 248))(this);
  v18 = *(this + 14);
  return IO80211Print(Logger, 5, -1, 0, a3, v20, a5, "%s: en %u, host {r=%u, w=%u} ep {r=%u, w=%u} readable=%d writable=%d is=%d p=%d lst=[%d@%06llu.%06llu] cfw(cb %x, tgt %x), buf=%p this=%p \n", a2, isEnabled, v12, v13, 0xFFFF, 0xFFFF, ReadableItemCount, WritableItemCount, ItemSize, v17, *(v18 + 168), *(v18 + 160) / 0x3B9ACA00uLL, *(v18 + 160) % 0x3B9ACA00uLL / 0x3E8, *(v18 + 128) != 0, *(v18 + 136) != 0, *(v18 + 112), this);
}

uint64_t AppleBCMWLANPCIeCompletionRing::printRingState(AppleBCMWLANPCIeCompletionRing *this, const char *a2)
{
  result = AppleBCMWLANByteRing::getLogger(this);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeCompletionRing::printRingState(this, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getRingFromChain(uint64_t a1)
{
  if (a1 == 184)
  {
    return 0;
  }

  else
  {
    return *(a1 - 8);
  }
}

uint64_t OUTLINED_FUNCTION_0_23(AppleBCMWLANItemRing *a1)
{

  return AppleBCMWLANItemRing::CallErrorAction(a1, 3825173271, 0);
}

OSObject *AppleBCMWLANPCIeTransmitFlowRing::withOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeTransmitFlowRingMetaClass, &v12))
  {
    return 0;
  }

  v10 = v12;
  if (v12 && ((v12->OSMetaClassBase::__vftable[7].init)(v12, a1, a2, a3, a4, a5) & 1) == 0)
  {
    (v10->release)(v10);
    return 0;
  }

  return v10;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::initWithOwnerAndFillAction(AppleBCMWLANPCIeDoorbell ***a1, OSObject *a2, void (*a3)(OSObject *, ...), void (*a4)(OSObject *, AppleBCMWLANByteRing *, int, void *), uint64_t a5, CCLogStream *a6)
{
  result = AppleBCMWLANPCIeSubmissionRing::initWithOwnerAndOptions(a1, a2, a3, a4, (a5 + 8), a6);
  if (result)
  {
    result = IOMallocZeroTyped();
    a1[16] = result;
    if (result)
    {
      *(result + 6) = *(a5 + 136);
      v9 = a1[16];
      v10 = *(a5 + 137);
      *(v9 + 11) = *(a5 + 141);
      *(v9 + 7) = v10;
      v11 = a1[16];
      v12 = *(a5 + 143);
      *(v11 + 17) = *(a5 + 147);
      *(v11 + 13) = v12;
      *(a1[16] + 19) = *(a5 + 149);
      *(a1[16] + 20) = *(a5 + 168);
      *(a1[16] + 21) = *(a5 + 169);
      *(a1[16] + 6) = *(a5 + 152);
      *(a1[16] + 28) = *(a5 + 170);
      *(a1[16] + 29) = *(a5 + 171);
      a1[16][4] = *(a5 + 176);
      AppleBCMWLANItemRing::getItemCount(a1);
      return 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::free(AppleBCMWLANPCIeTransmitFlowRing *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    memset_s(v2, 0x30uLL, 0, 0x30uLL);
    v3 = *(this + 16);
    if (v3)
    {
      IOFree(v3, 0x30uLL);
      *(this + 16) = 0;
    }
  }

  return AppleBCMWLANPCIeSubmissionRing::free(this);
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::requestRingFill(AppleBCMWLANPCIeTransmitFlowRing *this, int a2, BOOL a3)
{
  if (**(this + 16) == 3)
  {
    return AppleBCMWLANPCIeSubmissionRing::requestRingFill(this, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::requestRingFill(AppleBCMWLANPCIeTransmitFlowRing *this, int a2, BOOL a3)
{
  if (**(this + 5) == 3)
  {
    return AppleBCMWLANPCIeSubmissionRing::requestRingFill((this - 88), a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::checkForWork(AppleBCMWLANPCIeTransmitFlowRing *this)
{
  if (**(this + 16) == 3)
  {
    return AppleBCMWLANPCIeSubmissionRing::checkForWork(this);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::checkForWork(AppleBCMWLANPCIeTransmitFlowRing *this)
{
  if (**(this + 11) == 3)
  {
    return AppleBCMWLANPCIeSubmissionRing::checkForWork((this - 40));
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::packetsWaitingForRingCount(AppleBCMWLANPCIeTransmitFlowRing *this, char a2)
{
  result = 0;
  if (a2)
  {
    v4 = *(this + 16);
    if (*v4 == 3)
    {
      v5 = *(v4 + 32);
      if (v5)
      {
        return *v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::copyDestinationAddress(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 128);
  v3 = *(v2 + 7);
  *(a2 + 2) = *(v2 + 11);
  *a2 = v3;
  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::copyDestinationAddress(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 8);
  v3 = *(v2 + 7);
  *(a2 + 2) = *(v2 + 11);
  *a2 = v3;
  return this;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::copySourceAddress(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 128);
  v3 = *(v2 + 13);
  *(a2 + 2) = *(v2 + 17);
  *a2 = v3;
  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::copySourceAddress(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 8);
  v3 = *(v2 + 13);
  *(a2 + 2) = *(v2 + 17);
  *a2 = v3;
  return this;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::dumpRingState(AppleBCMWLANPCIeTransmitFlowRing *this, const char *a2, char *a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  Logger = AppleBCMWLANByteRing::getLogger(this);
  isEnabled = IO80211WorkSource::isEnabled(this);
  v12 = (*(*this + 312))(this);
  v13 = (*(*this + 208))(this);
  v14 = (*(*this + 392))(this);
  v15 = (*(*this + 344))(this);
  v16 = *(this + 16);
  v17 = IO80211Print(Logger, 5, -1, 0, a3, a4, a5, "en %u, (state=%x id=%d if=%d tid=%d da=%02x:%02x:%02x:%02x:%02x:%02x sa=%02x:%02x:%02x:%02x:%02x:%02x pnd=%d)\n", isEnabled, v12, v13, v14, v15, v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], 0);
  return AppleBCMWLANPCIeSubmissionRing::dumpRingState(this, a2, a3, v17 + a4, a5 - v17) + v17;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::printRingState(AppleBCMWLANPCIeTransmitFlowRing *this, const char *a2)
{
  result = AppleBCMWLANByteRing::getLogger(this);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeTransmitFlowRing::printRingState(this, a2);
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::enable(AppleBCMWLANPCIeTransmitFlowRing *this)
{
  v1 = this - 40;
  IO80211WorkSource::enable((this - 40));
  return IOLog("AppleBCMWLANPCIeTransmitFlowRing::enable %p\n", v1);
}

OSObject *AppleBCMWLANPCIeSubmissionRing::withOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSubmissionRingMetaClass, &v12))
  {
    return 0;
  }

  v10 = v12;
  if (v12 && ((v12->OSMetaClassBase::__vftable[5].isEqualTo)(v12, a1, a2, a3, a4, a5) & 1) == 0)
  {
    (v10->release)(v10);
    return 0;
  }

  return v10;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::initWithOwnerAndOptions(AppleBCMWLANPCIeDoorbell ***a1, OSObject *a2, void (*a3)(OSObject *, ...), void (*a4)(OSObject *, AppleBCMWLANByteRing *, int, void *), unsigned __int16 *a5, CCLogStream *a6)
{
  result = AppleBCMWLANTxItemRing::initWithOptions(a1, a2, a3, a4);
  if (!result)
  {
    return result;
  }

  result = IOMallocZeroTyped();
  a1[14] = result;
  v11 = (a1 + 14);
  if (!result)
  {
    return result;
  }

  if (!a6)
  {
    ClassNameHelper = getClassNameHelper(a1);
    IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithOwnerAndOptions");
    return 0;
  }

  *(result + 216) = a6;
  v12 = (*v11)[27];
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  AppleBCMWLANByteRing::setLogger(a1, a6);
  a1[14][23] = a2;
  *(a1[14] + 12) = 1;
  *(a1[14] + 28) = *a5;
  *(a1[14] + 58) = *(a5 + 2);
  a1[14][8] = *(a5 + 13);
  AppleBCMWLANItemRing::setItemCount(a1, *(a5 + 2));
  AppleBCMWLANItemRing::setItemSize(a1, *(a5 + 1));
  v13 = *(a5 + 2);
  v14 = (v13 * *(a5 + 1));
  v15 = *(a5 + 14);
  if (v14 % v15)
  {
    v16 = v15 - v14 % v15;
  }

  else
  {
    v16 = 0;
  }

  a1[14][12] = (v16 + v14);
  v17 = *a5;
  v18 = *(a5 + 11);
  a1[14][4] = (*(a5 + 10) + 4 * v17);
  a1[14][5] = (v18 + 4 * v17);
  v19 = *(a5 + 2);
  a1[14][20] = *(a5 + 3);
  a1[14][19] = v19;
  v20 = *(a5 + 4);
  a1[14][22] = *(a5 + 5);
  a1[14][21] = v20;
  *a1[14] = *(a5 + 6);
  *(a1[14] + 2) = *(a5 + 14);
  v21 = a1[14];
  if (*(v21 + 28) == 1)
  {
    *(v21 + 141) = 1;
    AppleBCMWLANPCIeDoorbell::setRXPacketThreshold(**v11, v13 >> 3);
    v21 = *v11;
    v15 = *(a5 + 14);
  }

  v21[13] = v21[12];
  if (AppleBCMWLANPCIeAllocateDartMappedMemory((*v11 + 9), v15, 2, *(a5 + 15)))
  {
    *(a1[14] + 12) = *(a1[14] + 30);
    *(a1[14] + 13) = *(a1[14] + 31);
    a1[14][24] = a1;
    *a1[14][5] = 0;
    *a1[14][4] = 0;
    return 1;
  }

  result = AppleBCMWLANByteRing::getLogger(a1);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANPCIeSubmissionRing::initWithOwnerAndOptions(a1, (a1 + 14));
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::resetSharedPointers(uint64_t this)
{
  **(*(this + 112) + 40) = 0;
  **(*(this + 112) + 32) = 0;
  return this;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::free(AppleBCMWLANPCIeSubmissionRing *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(v2 + 216);
    if (v3)
    {
      (*(*v3 + 16))(v3);
      *(*(this + 14) + 216) = 0;
      v2 = *(this + 14);
    }

    AppleBCMWLANPCIeFreeDartMappedMemory(v2 + 72);
    memset_s(*(this + 14), 0xE0uLL, 0, 0xE0uLL);
    v4 = *(this + 14);
    if (v4)
    {
      IOFree(v4, 0xE0uLL);
      *(this + 14) = 0;
    }
  }

  return AppleBCMWLANTxItemRing::free(this);
}

uint64_t AppleBCMWLANPCIeSubmissionRing::requestRingFill(AppleBCMWLANItemRing *this, int a2, int a3)
{
  if (a3)
  {
    v5 = *(this + 14);
    v6 = *(v5 + 168);
    if (v6)
    {
      v7 = *(v5 + 176);
      v8 = (*(*this + 208))(this);
      v6(v7, v8);
    }
  }

  v9 = (*(*this + 232))(this);
  v10 = (*(*this + 224))(this);
  if (!a2)
  {
    return 0;
  }

  v11 = v10;
  v12 = 0;
  while (1)
  {
    if (!AppleBCMWLANItemRing::getWritableItemCount(this, v9, v11))
    {
      goto LABEL_21;
    }

    v13 = *(*(this + 14) + 112);
    ItemSize = AppleBCMWLANItemRing::getItemSize(this);
    if (!(*(*this + 184))(this))
    {
      if (AppleBCMWLANByteRing::getLogger(this))
      {
        AppleBCMWLANByteRing::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSubmissionRing::requestRingFill(this);
          if (!v12)
          {
            return v12;
          }

          goto LABEL_22;
        }
      }

      goto LABEL_21;
    }

    if (!*(*(this + 14) + 184))
    {
      break;
    }

    v15 = ItemSize * v9;
    v16 = (*(*this + 184))(this);
    v17 = *(*(this + 14) + 184);
    WritableItemCountContinuous = AppleBCMWLANItemRing::getWritableItemCountContinuous(this, v9, v11);
    v19 = v16(v17, this, v13 + v15, WritableItemCountContinuous);
    if (v19)
    {
      v20 = v19;
      v9 += v19;
      if (v9 >= AppleBCMWLANItemRing::getItemCount(this))
      {
        v9 = 0;
        *(*(this + 14) + 12) ^= 1u;
      }

      v12 = (v20 + v12);
      **(*(this + 14) + 40) = v9;
      if (--a2)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  if (!AppleBCMWLANByteRing::getLogger(this) || (AppleBCMWLANByteRing::getLogger(this), !CCLogStream::shouldLog()))
  {
LABEL_21:
    if (!v12)
    {
      return v12;
    }

    goto LABEL_22;
  }

  AppleBCMWLANPCIeSubmissionRing::requestRingFill(this);
  if (!v12)
  {
    return v12;
  }

LABEL_22:
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  *(*(this + 14) + 136) = v9;
  v21 = *(this + 14);
  v22 = *v21;
  if (*(v21 + 140) == 1)
  {
    AppleBCMWLANPCIeDoorbell::ringNow(v22);
    *(*(this + 14) + 140) = 0;
  }

  else
  {
    AppleBCMWLANPCIeDoorbell::ring(v22, *(v21 + 8), *(v21 + 141), v12);
  }

  return v12;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getReadIndex(AppleBCMWLANPCIeSubmissionRing *this)
{
  v2 = **(*(this + 14) + 32);
  if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
  {
    AppleBCMWLANPCIeSubmissionRing::getReadIndex(this);
  }

  return v2;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getWriteIndex(AppleBCMWLANPCIeSubmissionRing *this)
{
  v2 = **(*(this + 14) + 40);
  if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
  {
    AppleBCMWLANPCIeSubmissionRing::getWriteIndex(this);
  }

  return v2;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getIndices(AppleBCMWLANPCIeSubmissionRing *this, unsigned int *a2, unsigned int *a3)
{
  v6 = **(*(this + 14) + 32);
  if (v6 >= AppleBCMWLANItemRing::getItemCount(this) || (*a2 = v6, v6 = **(*(this + 14) + 40), result = AppleBCMWLANItemRing::getItemCount(this), v6 >= result))
  {
    AppleBCMWLANItemRing::CallErrorAction(this, 3825173271, 0);
    panic("AppleBCMWLANPCIeSubmissionRing::getIndices() Invalid index(0x%x)\n", v6);
  }

  *a3 = v6;
  return result;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getBusAddress(uint64_t result, _DWORD *a2)
{
  *a2 = *(*(result + 112) + 48);
  a2[1] = *(*(result + 112) + 52);
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSubmissionRing::getBusAddress(uint64_t result, _DWORD *a2)
{
  *a2 = *(*(result + 8) + 48);
  a2[1] = *(*(result + 8) + 52);
  return result;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::checkForWork(AppleBCMWLANPCIeSubmissionRing *this)
{
  if (IO80211WorkSource::isEnabled(this))
  {
    v2 = *(this + 14);
    v3 = *(v2 + 152);
    if (v3)
    {
      v4 = *(v2 + 160);
      v5 = (*(*this + 208))(this);
      WritableItemCount = v3(v4, v5);
      if (AppleBCMWLANItemRing::getWritableItemCount(this) < WritableItemCount)
      {
        WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(this);
      }

      if (WritableItemCount)
      {
        (*(*this + 192))(this, WritableItemCount, 1);
      }
    }

    else
    {
      AppleBCMWLANItemRing::getWritableItemCount(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::dumpRingState(AppleBCMWLANPCIeSubmissionRing *this, const char *a2, char *a3, unsigned int a4, unsigned int a5)
{
  Logger = AppleBCMWLANByteRing::getLogger(this);
  v20 = a4;
  isEnabled = IO80211WorkSource::isEnabled(this);
  v11 = *(this + 14);
  v12 = **(v11 + 32);
  v13 = **(v11 + 40);
  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(this);
  WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(this);
  ItemSize = AppleBCMWLANItemRing::getItemSize(this);
  v17 = (*(*this + 248))(this);
  v18 = *(this + 14);
  return IO80211Print(Logger, 5, -1, 0, a3, v20, a5, "%s: en %u, host {r=%u, w=%u} ep {r=%u, w=%u} readable=%d writable=%d is=%d p=%d lst=[%d@%06llu.%06llu] cfw(cb %x, tgt %x), buf=%p this=%p \n", a2, isEnabled, v12, v13, 0xFFFF, 0xFFFF, ReadableItemCount, WritableItemCount, ItemSize, v17, *(v18 + 136), *(v18 + 128) / 0x3B9ACA00uLL, *(v18 + 128) % 0x3B9ACA00uLL / 0x3E8, *(v18 + 152) != 0, *(v18 + 160) != 0, *(v18 + 112), this);
}

uint64_t AppleBCMWLANPCIeSubmissionRing::printRingState(AppleBCMWLANPCIeSubmissionRing *this, const char *a2)
{
  result = AppleBCMWLANByteRing::getLogger(this);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSubmissionRing::printRingState(this, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getCounter(AppleBCMWLANPCIeSubmissionRing *this)
{
  v1 = *(this + 14);
  v2 = *(v1 + 144) + 1;
  *(v1 + 144) = v2;
  return v2;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSubmissionRing::getCounter(AppleBCMWLANPCIeSubmissionRing *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 144) + 1;
  *(v1 + 144) = v2;
  return v2;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getRingFromChain(uint64_t a1)
{
  if (a1 == 200)
  {
    return 0;
  }

  else
  {
    return *(a1 - 8);
  }
}

IO80211Controller *AppleBCMWLANCore::postLQMEvent(IO80211Controller *result, void *a2)
{
  v3 = *(*(result + 9) + 11288);
  if (v3)
  {
    return IO80211Controller::postMessage(result, v3, 0x27u, a2, 0x1D8uLL, 1);
  }

  return result;
}

IO80211Controller *AppleBCMWLANCore::postChanQualEvent(IO80211Controller *result, void *a2)
{
  v3 = *(*(result + 9) + 11288);
  if (v3)
  {
    return IO80211Controller::postMessage(result, v3, 0x3Cu, a2, 0x1CuLL, 1);
  }

  return result;
}

uint64_t AppleBCMWLANCore::safe_align_up(AppleBCMWLANCore *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3;
  if (a2)
  {
    if (a3)
    {
      v5 = (a2 - 1) & -a3;
      v4 = a3 + v5;
      if (!__CFADD__(a3, v5))
      {
        goto LABEL_7;
      }

      AppleBCMWLANCore::safe_align_up();
    }

    else
    {
      AppleBCMWLANCore::safe_align_up();
    }

    return v7;
  }

  if (!a3)
  {
    AppleBCMWLANCore::safe_align_up();
    return v7;
  }

LABEL_7:
  result = 0;
  *a4 = v4;
  return result;
}

uint64_t AppleBCMWLANCore::getLqmRssiLevels(uint64_t this, signed __int8 *a2)
{
  v2 = *(*(this + 72) + 17776);
  *(a2 + 3) = *(*(this + 72) + 17779);
  *a2 = v2;
  return this;
}

BOOL AppleBCMWLANCore::is4387C0Up(AppleBCMWLANCore *this)
{
  v2 = (*(**(*(this + 9) + 5392) + 368))(*(*(this + 9) + 5392));
  v3 = v2 == 4388 || v2 == 4399;
  result = 1;
  if (!v3)
  {
    if (v2 != 4387)
    {
      return 0;
    }

    v6 = 0;
    *v5 = 0;
    AppleBCMWLANCore::getChipRevString(this, v5, 3uLL);
    if (*v5 ^ 0x3043 | v6)
    {
      if (*v5 ^ 0x3243 | v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::dumpCurTxDCSummary(unint64_t this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::dumpCurTxDCSummary();
    }
  }

  return result;
}

void *AppleBCMWLANCore::updateSCTxBlankingSummary(void *this, uint64_t a2, unsigned int a3)
{
  v3 = this;
  if (a3)
  {
    v4 = this[9];
    if (*(v4 + 17960) >= a2)
    {
      ++*(v4 + 17984);
      v5 = this[9];
      if (a3 > 0x23)
      {
        ++*(v5 + 17976);
      }

      else
      {
        ++*(v5 + 17968);
      }
    }

    else if (*(v4 + 17992) >= a2)
    {
      ++*(v4 + 18016);
      v6 = this[9];
      if (a3 > 0x23)
      {
        ++*(v6 + 18008);
      }

      else
      {
        ++*(v6 + 18000);
      }
    }

    else if (*(v4 + 18024) >= a2)
    {
      ++*(v4 + 18048);
      v7 = this[9];
      if (a3 > 0x23)
      {
        ++*(v7 + 18040);
      }

      else
      {
        ++*(v7 + 18032);
      }
    }

    else if (*(v4 + 18056) >= a2)
    {
      ++*(v4 + 18080);
      v8 = this[9];
      if (a3 > 0x23)
      {
        ++*(v8 + 18072);
      }

      else
      {
        ++*(v8 + 18064);
      }
    }

    else
    {
      this = (*(*this + 1952))(this);
      if (this)
      {
        (*(*v3 + 1952))(v3);
        this = CCLogStream::shouldLog();
        if (this)
        {
          return AppleBCMWLANCore::updateSCTxBlankingSummary();
        }
      }
    }
  }

  else
  {
    this = (*(*this + 1952))(this, a2);
    if (this)
    {
      (*(*v3 + 1952))(v3);
      this = CCLogStream::shouldLog();
      if (this)
      {
        return AppleBCMWLANCore::updateSCTxBlankingSummary();
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::requestQueueSizeAndTimeout(IOService *this, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5)
{
  DTParameter32 = AppleBCMWLANUtil::getDTParameter32(this, "IOService", "wlan.coalesce.qsize", 0);
  v9 = AppleBCMWLANUtil::getDTParameter32(this, "IOService", "wlan.coalesce.timeout", 0);
  if (DTParameter32)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 3758097095;
  }

  v11 = v9;
  result = 0;
  *a2 = DTParameter32;
  *a3 = v11;
  return result;
}

BOOL AppleBCMWLANCore::init(OSObject *this, OSDictionary *a2)
{
  v4 = IOMallocZeroTyped();
  this[1].ivars = v4;
  p_ivars = &this[1].ivars;
  if (!v4)
  {
    return 0;
  }

  if ((IO80211Controller::init(this, a2) & 1) == 0)
  {
    getClassNameHelper(this);
    IOLog("%s::%s(): super failed to init!\n");
    return 0;
  }

  v6 = kAppleBCMWLANBuildTag[0];
  v7 = kAppleBCMWLANBuildDate[0];
  if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
  {
    v8 = "[Debuggable - verbose]";
  }

  else
  {
    v8 = "";
  }

  if (AppleBCMWLAN_isSoCRAMCaptureAllowed())
  {
    v9 = "[Debuggable - socram]";
  }

  else
  {
    v9 = "";
  }

  isDebugCommandActionAllowed = AppleBCMWLAN_isDebugCommandActionAllowed();
  v11 = "[Debuggable - debug command]";
  if (!isDebugCommandActionAllowed)
  {
    v11 = "";
  }

  IOLog("%s %s %s %s  (%s %s %s)\n", v6, "AppleBCMWLANV3_driverkit-1535.9.4.1", v7, "release", v8, v9, v11);
  *(p_ivars->ivars + 2229) = IOLockAlloc();
  if (!*(p_ivars->ivars + 2229))
  {
    getClassNameHelper(this);
    IOLog("%s::%s(): Failed to allocate lock\n");
    return 0;
  }

  *(p_ivars->ivars + 148) = IOLockAlloc();
  if (!*(p_ivars->ivars + 148))
  {
    getClassNameHelper(this);
    IOLog("%s::%s(): Failed to allocate event bit lock\n");
    return 0;
  }

  if (IOParseBootArgNumber("WTE", p_ivars->ivars + 10736, 4))
  {
    IOLog("Enabling WTE Options 0x%x\n", *(p_ivars->ivars + 2684));
  }

  v12 = IOParseBootArgNumber("bcom.wte.thread-priority", p_ivars->ivars + 10740, 4);
  ivars = p_ivars->ivars;
  if (v12)
  {
    IOLog(" Setting WTE Thread Priority to %d\n", *(ivars + 2685));
  }

  else
  {
    *(ivars + 2685) = -50;
  }

  v35 = -1431655766;
  if (IOParseBootArgNumber("wlan.panic.pqs", &v35, 4))
  {
    *(p_ivars->ivars + 2593) |= 8u;
  }

  if (IOParseBootArgNumber("wlan.panic.oqs", &v35, 4))
  {
    *(p_ivars->ivars + 2593) |= 0x10u;
  }

  if (IOParseBootArgNumber("wlan.panic.aqs", &v35, 4))
  {
    *(p_ivars->ivars + 2593) |= 0x20u;
  }

  if (IOParseBootArgNumber("wlan.panic.queuestall", &v35, 4))
  {
    *(p_ivars->ivars + 2593) |= 0x18u;
  }

  if (IOParseBootArgNumber("wlan.panic.queuefull", &v35, 4))
  {
    *(p_ivars->ivars + 2593) |= 0x800u;
  }

  *(p_ivars->ivars + 8) = 0;
  if (IOParseBootArgNumber("wlan.panic.problem", &v35, 4))
  {
    v16 = p_ivars->ivars;
    if (v35)
    {
      *(v16 + 8) = v35;
    }

    else
    {
      *(v16 + 2593) |= 0x40u;
    }
  }

  if (IOParseBootArgNumber("wlan.sdb.support", &v35, 4) || IOParseBootArgNumber("wlan.factory", &v35, 4) && (v35 & 2) != 0)
  {
    IOLog(" Forcing SDB support\n");
    *(p_ivars->ivars + 2593) |= 0x200u;
  }

  v34 = 0;
  if (IOParseBootArgNumber("wlan.socramdump.disable", &v34, 4) && v34)
  {
    IOLog(" Disabling SoCRAM dumps.\n");
    *(p_ivars->ivars + 2593) |= 4u;
  }

  *(p_ivars->ivars + 10368) = 1;
  if (IOParseBootArgNumber("wlan.debug.nowdogondisassoc", &v35, 4))
  {
    *(p_ivars->ivars + 10368) = 0;
  }

  if (IOParseBootArgNumber("wlan.debug.enablescaneventlogs", &v35, 4))
  {
    *(p_ivars->ivars + 956) = 1;
  }

  *(p_ivars->ivars + 4439) = 30;
  if (IOParseBootArgNumber("wlan.pmalert.dutycycle", &v35, 4))
  {
    *(p_ivars->ivars + 4439) = v35;
  }

  *(p_ivars->ivars + 1678) = 120;
  *(p_ivars->ivars + 4960) = 0;
  *(p_ivars->ivars + 4958) = 0;
  *(p_ivars->ivars + 2586) = 90000;
  nanoseconds_to_absolutetime();
  *(p_ivars->ivars + 3549) = 0;
  *(p_ivars->ivars + 3548) = 0;
  *(p_ivars->ivars + 2796) = 1;
  *(p_ivars->ivars + 761) = 0;
  *(p_ivars->ivars + 1650) = 75;
  *(p_ivars->ivars + 1651) = 60;
  *(p_ivars->ivars + 1652) = -1;
  *(p_ivars->ivars + 1654) = -1;
  *(p_ivars->ivars + 1653) = -1;
  *(p_ivars->ivars + 1655) = 86400000;
  *(p_ivars->ivars + 828) = 0;
  *(p_ivars->ivars + 1658) = -1;
  *(p_ivars->ivars + 1659) = 3;
  *(p_ivars->ivars + 1660) = 300;
  *(p_ivars->ivars + 1661) = 900000;
  *(p_ivars->ivars + 1663) = -1;
  *(p_ivars->ivars + 1662) = 720000;
  *(p_ivars->ivars + 1664) = 86400000;
  *(p_ivars->ivars + 1668) = 0;
  *(p_ivars->ivars + 833) = 0;
  *(p_ivars->ivars + 1665) = 900000;
  *(p_ivars->ivars + 6676) = 0;
  *(p_ivars->ivars + 1670) = 75;
  *(p_ivars->ivars + 1671) = 135;
  *(p_ivars->ivars + 1679) = 930;
  *(p_ivars->ivars + 1680) = 2000;
  *(p_ivars->ivars + 1675) = 6;
  *(p_ivars->ivars + 3547) = 4;
  *(p_ivars->ivars + 1347) = 0;
  v17 = p_ivars->ivars;
  *(v17 + 684) = 0u;
  *(v17 + 683) = 0u;
  v18 = (p_ivars->ivars + 10968);
  *v18 = 0u;
  v18[1] = 0u;
  *(p_ivars->ivars + 2740) = 0;
  *(p_ivars->ivars + 2750) = 0;
  *(p_ivars->ivars + 4964) = 20;
  *(p_ivars->ivars + 19781) = 0;
  *(p_ivars->ivars + 4946) = 0;
  *p_ivars->ivars = 100;
  *(p_ivars->ivars + 1) = 100;
  *(p_ivars->ivars + 3740) = 0;
  *(p_ivars->ivars + 1119) = 60;
  *(p_ivars->ivars + 4480) = 0;
  if (IOParseBootArgNumber("wlan.dsa.obswin", &v35, 4) && v35 == 360)
  {
    *(p_ivars->ivars + 1119) = 360;
    *(p_ivars->ivars + 4480) = 1;
  }

  *(p_ivars->ivars + 14204) = 0;
  *(p_ivars->ivars + 4441) = 2000;
  *(p_ivars->ivars + 4442) = 5000;
  *(p_ivars->ivars + 17783) = -70;
  *(p_ivars->ivars + 4443) = 5;
  v19 = (p_ivars->ivars + 17776);
  *(v19 + 3) = -994067787;
  *v19 = -1246712922;
  *(p_ivars->ivars + 17792) = 2;
  *(p_ivars->ivars + 2223) = 0x5A504B463C322819;
  *(p_ivars->ivars + 4449) = 0;
  *(p_ivars->ivars + 778) = 0;
  *(p_ivars->ivars + 4424) = 0;
  *(p_ivars->ivars + 5151) = 0;
  *(p_ivars->ivars + 5153) = 0;
  *(p_ivars->ivars + 5154) = 0;
  *(p_ivars->ivars + 5152) = 0;
  *(p_ivars->ivars + 2476) = 0;
  *(p_ivars->ivars + 19816) = 0;
  *(p_ivars->ivars + 4624) = 0;
  *(p_ivars->ivars + 2311) = mach_continuous_time();
  *(p_ivars->ivars + 4619) = 0;
  *(p_ivars->ivars + 4618) = 0;
  *(p_ivars->ivars + 2676) = 0;
  *(p_ivars->ivars + 10708) = 0;
  *(p_ivars->ivars + 2678) = 0;
  *(p_ivars->ivars + 2679) = 0;
  *(p_ivars->ivars + 10721) = 0;
  *(p_ivars->ivars + 10720) = 0;
  *(p_ivars->ivars + 10722) = 9;
  *(p_ivars->ivars + 10723) = 10;
  *(p_ivars->ivars + 10724) = 100;
  *(p_ivars->ivars + 31056) = 1;
  *(p_ivars->ivars + 31057) = 1;
  *(p_ivars->ivars + 31058) = 1;
  *(p_ivars->ivars + 4620) = 0;
  *(p_ivars->ivars + 18484) = 0;
  *(p_ivars->ivars + 18485) = 0;
  *(p_ivars->ivars + 4445) = 0;
  *(p_ivars->ivars + 4448) = 0;
  *(p_ivars->ivars + 4446) = 0;
  *(p_ivars->ivars + 4447) = 0;
  *(p_ivars->ivars + 8898) = 0;
  *(p_ivars->ivars + 2225) = 0;
  *(p_ivars->ivars + 8904) = 0;
  *(p_ivars->ivars + 2227) = 0;
  *(p_ivars->ivars + 8912) = 0;
  *(p_ivars->ivars + 272) = 2;
  *(p_ivars->ivars + 273) = 2;
  v20 = (p_ivars->ivars + 17960);
  *(p_ivars->ivars + 2261) = 0;
  *v20 = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  v20[3] = 0u;
  v20[4] = 0u;
  v20[5] = 0u;
  v20[6] = 0u;
  v20[7] = 0u;
  *(p_ivars->ivars + 4490) = 25;
  *(p_ivars->ivars + 4498) = 40;
  *(p_ivars->ivars + 4506) = 70;
  *(p_ivars->ivars + 4514) = 100;
  *(p_ivars->ivars + 30081) = 0;
  *(p_ivars->ivars + 30082) = 0;
  *(p_ivars->ivars + 30083) = 0;
  *(p_ivars->ivars + 786) = 0;
  v21 = (p_ivars->ivars + 6296);
  *(p_ivars->ivars + 797) = 0;
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v22 = p_ivars->ivars;
  *(v22 + 399) = 0u;
  *(v22 + 400) = 0u;
  *(v22 + 401) = 0u;
  *(v22 + 402) = 0u;
  *(v22 + 403) = 0u;
  *(v22 + 808) = 0;
  v23 = (p_ivars->ivars + 4488);
  *v23 = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
  v23[4] = 0u;
  v23[5] = 0u;
  v23[6] = 0u;
  v23[7] = 0u;
  v24 = (p_ivars->ivars + 4616);
  *v24 = 0u;
  v24[1] = 0u;
  v24[2] = 0u;
  v24[3] = 0u;
  v24[4] = 0u;
  v24[5] = 0u;
  v24[6] = 0u;
  v24[7] = 0u;
  v25 = (p_ivars->ivars + 4744);
  *v25 = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v25[5] = 0u;
  v25[6] = 0u;
  v25[7] = 0u;
  v26 = p_ivars->ivars;
  *(v26 + 1135) = 0u;
  *(v26 + 1136) = 0u;
  *(p_ivars->ivars + 31059) = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  *(p_ivars->ivars + 30065) = 1;
  *(p_ivars->ivars + 30067) = 1;
  *(p_ivars->ivars + 30068) = 1;
  *(p_ivars->ivars + 3881) = IO80211CagedBuffer::withLayout();
  v27 = *(p_ivars->ivars + 3881);
  v14 = v27 != 0;
  if (v27)
  {
    *(p_ivars->ivars + 7765) = 0;
    *(p_ivars->ivars + 3752) = 0;
    *(p_ivars->ivars + 3753) = 0;
    *(p_ivars->ivars + 3754) = 0;
    *(p_ivars->ivars + 3755) = 0;
    *(p_ivars->ivars + 3756) = 0;
    *(p_ivars->ivars + 3757) = 0;
    *(p_ivars->ivars + 1786) = 0;
    *(p_ivars->ivars + 3574) = 0;
    *(p_ivars->ivars + 35450) = 0;
    if (IOParseBootArgNumber("wlan.wdt.disableLogging", &v35, 4))
    {
      IOLog(" wlan.wdt.disableLogging %d\n", v35);
      *(p_ivars->ivars + 35450) = v35 != 0;
    }

    mach_continuous_time();
    absolutetime_to_nanoseconds();
    *(p_ivars->ivars + 2271) = 0;
    *(p_ivars->ivars + 2272) = 5;
    *(p_ivars->ivars + 4547) = 0;
    *(p_ivars->ivars + 4546) = 0;
    *(p_ivars->ivars + 18192) = 0;
    *(p_ivars->ivars + 18193) = 1;
    *(p_ivars->ivars + 8914) = 4;
    *(p_ivars->ivars + 30072) = 0;
    *(p_ivars->ivars + 4453) = 0;
    *(p_ivars->ivars + 18414) = 0;
    v33 = 0;
    *(p_ivars->ivars + 968) = 0;
    if (IOParseBootArgNumber("wlan.ior", &v33, 4) && !v33)
    {
      *(p_ivars->ivars + 968) = 1;
      IOLog(" Disabling IOReporter APIs due to boot-arg wlan.ior=0\n");
    }

    *(p_ivars->ivars + 970) = 0;
    if (IOParseBootArgNumber("wlan.getDiags", &v33, 4) && !v33)
    {
      *(p_ivars->ivars + 970) = 1;
      IOLog(" Disabling getDiags due to boot-arg wlan.getDiags=0\n");
    }

    *(p_ivars->ivars + 969) = 0;
    if (IOParseBootArgNumber("wlan.etrace", &v33, 4) && !v33)
    {
      *(p_ivars->ivars + 969) = 1;
      IOLog(" Disabling etrace processing due to boot-arg wlan.etrace=0\n");
    }

    *(p_ivars->ivars + 8975) = 3;
    *(p_ivars->ivars + 8975) = 7;
    v28 = IOParseBootArgNumber("wlan.channelFilter", p_ivars->ivars + 35900, 4);
    v29 = p_ivars->ivars;
    if (v28 && !*(v29 + 8975))
    {
      IOLog(" WiFiCC : Allowing all bands and no channel filter used. [%d]\n", 0);
      v29 = p_ivars->ivars;
    }

    *(v29 + 7519) = -80;
    if (IOParseBootArgNumber("wlan.rssicomp.value", p_ivars->ivars + 30076, 4))
    {
      v30 = *(p_ivars->ivars + 7519);
      if (v30)
      {
        if ((v30 + 90) >= 0x33)
        {
          IOLog(" WiFiRoam : RSSI compensation out of range. Value : [%d] Resorting to default value : [%d]\n", *(p_ivars->ivars + 7519), -80);
          *(p_ivars->ivars + 7519) = -80;
        }

        else
        {
          IOLog(" WiFiRoam : Using RSSI compensation Value : [%d] \n", *(p_ivars->ivars + 7519));
        }
      }

      else
      {
        IOLog(" WiFiRoam : RSSI compensation not allowed. [%d]\n", 0);
        *(p_ivars->ivars + 7519) = 0;
      }
    }

    *(p_ivars->ivars + 35672) = 1;
    if (IOParseBootArgNumber("wlan.dk.fwloading", &v35, 4))
    {
      v31 = v35;
      *(p_ivars->ivars + 35672) = v35 != 0;
      if (*(p_ivars->ivars + 35672))
      {
        v32 = "TRUE";
      }

      else
      {
        v32 = "FALSE";
      }

      IOLog("wlan.dk.fwloading %d - %s\n", v31, v32);
    }

    v33 = 0;
    *(p_ivars->ivars + 976) = 0;
    if (IOParseBootArgNumber("wlan.ranging.disableOutlierDiscarding", &v33, 4))
    {
      if (v33)
      {
        *(this[1].ivars + 976) = 1;
        if ((this->OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::init();
          }
        }
      }
    }

    v33 = 0;
    *(p_ivars->ivars + 977) = 0;
    if (IOParseBootArgNumber("wlan.ranging.applyRangingoffsetsVsAVP", &v33, 4))
    {
      if (v33)
      {
        *(this[1].ivars + 977) = 1;
        if ((this->OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::init();
          }
        }
      }
    }

    *(p_ivars->ivars + 36100) = 1;
    IOParseBootArgNumber("wlan.isDisable6gFollouwpInLowRssi", p_ivars->ivars + 36100, 1);
  }

  else
  {
    IOLog(" Failed to create IO80211CagedBuffer\n");
  }

  return v14;
}

uint64_t AppleBCMWLANCore::free(AppleBCMWLANCore *this)
{
  AppleBCMWLANCore::freeResources(this);
  v2 = *(this + 9);
  if (v2)
  {
    bzero(v2, 0x8D08uLL);
    v3 = *(this + 9);
    if (v3)
    {
      IOFree(v3, 0x8D08uLL);
      *(this + 9) = 0;
    }
  }

  return IO80211Controller::free(this);
}

uint64_t AppleBCMWLANCore::freeResources(AppleBCMWLANCore *this)
{
  IOLog("AppleBCMWLANCore::freeResources[%u] this[%p]\n", 3678, this);
  v3 = this + 72;
  v2 = *(this + 9);
  v4 = v2[688];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*v3 + 5504) = 0;
    v2 = *v3;
  }

  v5 = v2[689];
  if (v5)
  {
    AppleBCMWLANIOReportingPerSlice::stop(v5);
    v2 = *v3;
    v6 = *(*v3 + 5512);
    if (v6)
    {
      (*(*v6 + 16))(v6);
      *(*v3 + 5512) = 0;
      v2 = *v3;
    }
  }

  v7 = v2[150];
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(*v3 + 1200) = 0;
    v2 = *v3;
  }

  v8 = v2[2218];
  if (v8)
  {
    (*(*v8 + 16))(v8);
    *(*v3 + 17744) = 0;
    v2 = *v3;
  }

  v9 = v2[148];
  if (v9)
  {
    IOLockFree(v9);
    *(*v3 + 1184) = 0;
    v2 = *v3;
  }

  v10 = v2[1784];
  if (v10)
  {
    (*(*v10 + 16))(v10);
    *(*v3 + 14272) = 0;
    v2 = *v3;
  }

  v11 = v2[1783];
  if (v11)
  {
    (*(*v11 + 16))(v11);
    *(*v3 + 14264) = 0;
    v2 = *v3;
  }

  v12 = v2[1397];
  if (v12)
  {
    (*(*v12 + 16))(v12);
    *(*v3 + 11176) = 0;
    v2 = *v3;
  }

  v13 = v2[1396];
  if (v13)
  {
    (*(*v13 + 16))(v13);
    *(*v3 + 11168) = 0;
    v2 = *v3;
  }

  v14 = v2[1395];
  if (v14)
  {
    (*(*v14 + 16))(v14);
    *(*v3 + 11160) = 0;
    v2 = *v3;
  }

  v15 = v2[693];
  if (v15)
  {
    (*(*v15 + 16))(v15);
    *(*v3 + 5544) = 0;
    v2 = *v3;
  }

  v16 = v2[682];
  if (v16)
  {
    (*(*v16 + 16))(v16);
    *(*v3 + 5456) = 0;
    v2 = *v3;
  }

  v17 = v2[681];
  if (v17)
  {
    (*(*v17 + 16))(v17);
    *(*v3 + 5448) = 0;
    v2 = *v3;
  }

  v18 = v2[687];
  if (v18)
  {
    (*(*v18 + 16))(v18);
    *(*v3 + 5496) = 0;
    v2 = *v3;
  }

  v19 = v2[684];
  if (v19)
  {
    (*(*v19 + 16))(v19);
    *(*v3 + 5472) = 0;
    v2 = *v3;
  }

  v20 = v2[679];
  if (v20)
  {
    (*(*v20 + 16))(v20);
    *(*v3 + 5432) = 0;
    v2 = *v3;
  }

  v21 = v2[677];
  if (v21)
  {
    AppleBCMWLANJoinAdapter::stop(v21);
    v2 = *v3;
    v22 = *(*v3 + 5416);
    if (v22)
    {
      (*(*v22 + 16))(v22);
      *(*v3 + 5416) = 0;
      v2 = *v3;
    }
  }

  v23 = v2[690];
  if (v23)
  {
    (*(*v23 + 16))(v23);
    *(*v3 + 5520) = 0;
  }

  removePropertyHelper(this, "RequestedFiles");
  v24 = *(this + 9);
  v25 = *(v24 + 5528);
  if (v25)
  {
    (*(*v25 + 16))(v25);
    *(*v3 + 5528) = 0;
    v24 = *v3;
  }

  v26 = *(v24 + 5424);
  if (v26)
  {
    AppleBCMWLANJoinAdapter::stop(v26);
    v24 = *v3;
    v27 = *(*v3 + 5424);
    if (v27)
    {
      (*(*v27 + 16))(v27);
      *(*v3 + 5424) = 0;
      v24 = *v3;
    }
  }

  v28 = *(v24 + 5464);
  if (v28)
  {
    AppleBCMWLANConfigManager::stop(v28);
    v24 = *v3;
    v29 = *(*v3 + 5464);
    if (v29)
    {
      (*(*v29 + 16))(v29);
      *(*v3 + 5464) = 0;
      v24 = *v3;
    }
  }

  v30 = *(v24 + 35976);
  if (v30)
  {
    (*(*v30 + 16))(v30);
    *(*v3 + 35976) = 0;
    v24 = *v3;
  }

  v31 = *(v24 + 35992);
  if (v31)
  {
    (*(*v31 + 16))(v31);
    *(*v3 + 35992) = 0;
    v24 = *v3;
  }

  v32 = *(v24 + 5568);
  if (v32)
  {
    (*(*v32 + 16))(v32);
    *(*v3 + 5568) = 0;
    v24 = *v3;
  }

  v33 = *(v24 + 5576);
  if (v33)
  {
    (*(*v33 + 16))(v33);
    *(*v3 + 5576) = 0;
    v24 = *v3;
  }

  v34 = *(v24 + 5584);
  if (v34)
  {
    (*(*v34 + 16))(v34);
    *(*v3 + 5584) = 0;
    v24 = *v3;
  }

  v35 = *(v24 + 5552);
  if (v35)
  {
    (*(*v35 + 16))(v35);
    *(*v3 + 5552) = 0;
    v24 = *v3;
  }

  v36 = *(v24 + 5592);
  if (v36)
  {
    (*(*v36 + 16))(v36);
    *(*v3 + 5592) = 0;
    v24 = *v3;
  }

  v37 = *(v24 + 5600);
  if (v37)
  {
    AppleBCMWLANNetAdapter::stop(v37);
    v24 = *v3;
    v38 = *(*v3 + 5600);
    if (v38)
    {
      (*(*v38 + 16))(v38);
      *(*v3 + 5600) = 0;
      v24 = *v3;
    }
  }

  v39 = *(v24 + 5608);
  if (v39)
  {
    (*(*v39 + 16))(v39);
    *(*v3 + 5608) = 0;
    v24 = *v3;
  }

  v40 = *(v24 + 35984);
  if (v40)
  {
    (*(*v40 + 16))(v40);
    *(*v3 + 35984) = 0;
    v24 = *v3;
  }

  v41 = *(v24 + 5408);
  if (v41)
  {
    AppleBCMWLANCommander::stop(v41);
    v24 = *v3;
    v42 = *(*v3 + 5408);
    if (v42)
    {
      (*(*v42 + 16))(v42);
      *(*v3 + 5408) = 0;
      v24 = *v3;
    }
  }

  v43 = *(v24 + 5560);
  if (v43)
  {
    IOFree(v43, 0x28uLL);
    *(*v3 + 5560) = 0;
    *(*v3 + 5560) = 0;
    v24 = *v3;
  }

  v44 = *(v24 + 5400);
  if (v44)
  {
    (*(*v44 + 16))(v44);
    *(*v3 + 5400) = 0;
    v24 = *v3;
  }

  v45 = *(v24 + 29928);
  if (v45)
  {
    (*(*v45 + 16))(v45);
    *(*v3 + 29928) = 0;
    v24 = *v3;
  }

  v46 = *(v24 + 6280);
  if (v46)
  {
    (*(*v46 + 16))(v46);
    *(*v3 + 6280) = 0;
    v24 = *v3;
  }

  v47 = *(v24 + 6240);
  if (v47)
  {
    (*(*v47 + 16))(v47);
    *(*v3 + 6240) = 0;
    v24 = *v3;
  }

  v48 = *(v24 + 6232);
  if (v48)
  {
    (*(*v48 + 16))(v48);
    *(*v3 + 6232) = 0;
    v24 = *v3;
  }

  v49 = *(v24 + 4408);
  if (v49)
  {
    (*(*v49 + 16))(v49);
    *(*v3 + 4408) = 0;
    v24 = *v3;
  }

  v50 = *(v24 + 6248);
  if (v50)
  {
    (*(*v50 + 16))(v50);
    *(*v3 + 6248) = 0;
    v24 = *v3;
  }

  v51 = *(v24 + 6256);
  if (v51)
  {
    (*(*v51 + 16))(v51);
    *(*v3 + 6256) = 0;
    v24 = *v3;
  }

  if (*(v24 + 4480) == 1)
  {
    v52 = *(v24 + 6264);
    if (v52)
    {
      (*(*v52 + 16))(v52);
      *(*v3 + 6264) = 0;
      v24 = *v3;
    }

    v53 = *(v24 + 6272);
    if (v53)
    {
      (*(*v53 + 16))(v53);
      *(*v3 + 6272) = 0;
    }
  }

  AppleBCMWLANCore::destroyDebugInfo(this);
  v54 = *(this + 9);
  v55 = v54[692];
  if (v55)
  {
    (*(*v55 + 16))(v55);
    *(*v3 + 5536) = 0;
    v54 = *v3;
  }

  v56 = v54[1781];
  if (v56)
  {
    (*(*v56 + 16))(v56);
    *(*v3 + 14248) = 0;
    v54 = *v3;
  }

  v57 = v54[674];
  if (v57)
  {
    (*(*v57 + 16))(v57);
    *(*v3 + 5392) = 0;
    v54 = *v3;
  }

  v58 = v54[3883];
  if (v58)
  {
    (*(*v58 + 16))(v58);
    *(*v3 + 31064) = 0;
    v54 = *v3;
  }

  v59 = v54[3881];
  if (v59)
  {
    (*(*v59 + 16))(v59);
    *(*v3 + 31048) = 0;
  }

  return IOLog("AppleBCMWLANCore::freeResources[%u] this[%p]\n", 3854, this);
}

BOOL AppleBCMWLANCore::createWorkQueue(AppleBCMWLANCore *this)
{
  *(*(this + 9) + 31064) = (*(**(*(this + 9) + 5392) + 80))(*(*(this + 9) + 5392));
  (*(**(*(this + 9) + 31064) + 8))(*(*(this + 9) + 31064));
  return *(*(this + 9) + 31064) != 0;
}

void (__cdecl *AppleBCMWLANCore::reportInitFailure(IOService *this, uint64_t a2, int a3))(OSObjectInterface *__hidden this)
{
  v6 = &this[1].OSObjectInterface;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1151].init) = a2;
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1151].init) = a3;
  v7 = 1;
  HIBYTE(this[1].OSObject::OSObjectInterface::__vftable[1150].free) = 1;
  atomic_compare_exchange_strong(&this[1].OSObject::OSObjectInterface::__vftable[275], &v7, 0);
  if (v7 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    v12 = 0;
    IOService::GetBusyState(this, &v12, 0);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::reportInitFailure();
      }
    }

    io80211_os_log("AppleBCMWLANCore::%s/%u: AdjustBusy(-1)! busystate %u, fAdjustBusyCnt %u, kAdjustBusyTimeout_ms %u\n", "reportInitFailure", 1822, v12, LODWORD(v6->__vftable[275].init), 40000);
  }

  init = v6->__vftable[337].init;
  v9 = (*(*(init + 48) + 288))();
  AppleBCMWLANBusInterface::reportInitFailure(init, v9, a2, a3);
  atomic_fetch_and(&v6->__vftable[648].free, 0xFFFFFFEF);
  result = v6->__vftable[1941].free;
  if (result)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___ZN16AppleBCMWLANCore17reportInitFailureE32InitilizationFailureReportReturnj_block_invoke;
    v11[3] = &__block_descriptor_tmp_5;
    v11[4] = this;
    return (*(*result + 112))(result, v11);
  }

  return result;
}

uint64_t AppleBCMWLANCore::signalDriverEvent(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::signalDriverEvent();
    }
  }

  v3 = *(*(*(*a1 + 104))(a1) + 88);

  return v3();
}

uint64_t AppleBCMWLANCore::initAfterIORegUpdated(AppleBCMWLANConfigManager *this, AppleBCMWLANCore *a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL (*a6)(const OSObject *))
{
  v8 = (this + 72);
  v7 = *(this + 9);
  if (!*(v7 + 5464))
  {
    *(*(this + 9) + 5464) = AppleBCMWLANConfigManager::withDriver(this, AppleBCMWLANCore::allocChipImage, AppleBCMWLANCore::generateChipImage, AppleBCMWLANCore::validateChipImage, AppleBCMWLANCore::isSecureBootEnabled, a6);
    v13 = *(this + 9);
    v14 = *(v13 + 5464);
    if (!v14)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      v17 = this;
      v18 = 1900;
      goto LABEL_119;
    }

    v15 = (*(*(*(v13 + 5392) + 48) + 288))();
    if (AppleBCMWLANConfigManager::gatherParameterData(v14, v15))
    {
      return 0;
    }

    if ((*(**(*v8 + 5392) + 680))(*(*v8 + 5392), "M", "TPHN", 0))
    {
      v16 = (*(**(*v8 + 5392) + 680))(*(*v8 + 5392), "m", "1.7", 0);
    }

    else
    {
      v16 = 0;
    }

    v24 = 1;
    v23 = 0;
    IOParseBootArgNumber("wlan.debug.check-hwlimits", &v24, 1);
    IOParseBootArgNumber("wlan.debug.check-hwlimits-forced", &v23, 1);
    if (v24 == 1 && ((v16 & 1) != 0 || v23 == 1))
    {
      v19 = *v8;
      if (!*(*v8 + 17816))
      {
        *(v19 + 17816) = 98;
        v19 = *v8;
      }

      AppleBCMWLANConfigManager::setAWDLSupported(*(v19 + 5464), 0);
      AppleBCMWLANConfigManager::setTetheringSupport(*(*(this + 9) + 5464), 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }
    }

    v7 = *v8;
  }

  if (!*(v7 + 5520))
  {
    *(*(this + 9) + 5520) = AppleBCMWLANPowerManager::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5520))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 1942;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5432))
  {
    *(*(this + 9) + 5432) = AppleBCMWLANBssManager::withOptions(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5432))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 1952;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5416))
  {
    *(*(this + 9) + 5416) = AppleBCMWLANJoinAdapter::withDriver(this, 0, 0);
    v7 = *(this + 9);
    if (!*(v7 + 5416))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::freeResources(this);
      return 0;
    }
  }

  if (!*(v7 + 5528))
  {
    *(*(this + 9) + 5528) = AppleBCMWLANTxPowerManager::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5528))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 1987;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5600))
  {
    *(*(this + 9) + 5600) = AppleBCMWLANNetAdapter::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5600))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 1997;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5608))
  {
    *(*(this + 9) + 5608) = AppleBCMWLANLQM::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5608))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 2007;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5496))
  {
    *(*(this + 9) + 5496) = AppleBCMWLANBGScanAdapter::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5496))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 2028;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5552))
  {
    *(*(this + 9) + 5552) = AppleBCMWLANWnmAdapter::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5552))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 2049;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5544))
  {
    *(*(this + 9) + 5544) = AppleBCMWLANKeepAliveOffload::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5544))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 2070;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5568))
  {
    *(*(this + 9) + 5568) = AppleBCMWLANRoamAdapter::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5568))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 2092;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5576))
  {
    *(*(this + 9) + 5576) = AppleBCMWLAN11axAdapter::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5576))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 2102;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5584))
  {
    *(*(this + 9) + 5584) = AppleBCMWLANGCRAdapter::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5584))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 2112;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 5592))
  {
    *(*(this + 9) + 5592) = AppleBCMWLAN11beAdapter::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 5592))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 2122;
      goto LABEL_119;
    }
  }

  if (!*(v7 + 35984))
  {
    *(*(this + 9) + 35984) = AppleBCMWLANPowerStateAdapter::withDriver(this, a2);
    v7 = *(this + 9);
    if (!*(v7 + 35984))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated();
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v17 = this;
      v18 = 2178;
LABEL_119:
      AppleBCMWLANCore::reportInitFailure(v17, 2uLL, v18);
      return 0;
    }
  }

  if (!*(v7 + 14264))
  {
    *(*(this + 9) + 14264) = AppleBCMWLANCoreDbg::withCoreDriver(this, a2);
    v7 = *(this + 9);
  }

  v9 = 1;
  atomic_compare_exchange_strong((v7 + 4400), &v9, 0);
  if (v9 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    v22 = 0;
    IOService::GetBusyState(this, &v22, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::initAfterIORegUpdated();
      }
    }

    io80211_os_log("AppleBCMWLANCore::initAfterIORegUpdated/%u: AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", 2211, v22, *(*v8 + 4400));
  }

  v10 = *(*v8 + 5400);
  if (!v10)
  {
    return 1;
  }

  AppleBCMWLANProvisioningManager::getProvisionedData(v10, (*v8 + 5648));
  v11 = (*(**(*(this + 9) + 11288) + 1072))();
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v21 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v21, "[dk] %s@%d:Starting with MAC Address: %02x:%02x:%02x:%02x:%02x:%02x, HW[ %02x:%02x:%02x:%02x:%02x:%02x ]\n", "initAfterIORegUpdated", 2222, v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), *(*(this + 9) + 5652), *(*(this + 9) + 5653), *(*(this + 9) + 5654), *(*(this + 9) + 5655), *(*(this + 9) + 5656), *(*(this + 9) + 5657));
    }
  }

  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (!(*(*this + 1952))(this))
  {
    return 1;
  }

  (*(*this + 1952))(this);
  v12 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANCore::initAfterIORegUpdated();
  }

  return v12;
}

uint64_t AppleBCMWLANCore::stopAndFreeResources(AppleBCMWLANCore *this)
{
  IOLog("AppleBCMWLANCore::stopAndFreeResources[%u] this[%p]\n", 3666, this);
  AppleBCMWLANCore::stopResources(this);

  return AppleBCMWLANCore::freeResources(this);
}

uint64_t AppleBCMWLANCore::start(IOService *this, IOService *a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::start();
    }
  }

  v5 = &this[1].OSObjectInterface;
  atomic_fetch_or(&this[1].OSObject::OSObjectInterface::__vftable[648].free, 0x40u);
  atomic_fetch_or(&this[1].OSObject::OSObjectInterface::__vftable[648].free, 0x20u);
  AppleBCMWLANCore::signalDriverReady(this);
  if (checkPropertyTrue(a2, "IOPMResetPowerStateOnWake", 0, "IOService"))
  {
    LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[671].free) = 1;
    setPropertyHelper(this, "IOPMResetPowerStateOnWake", kOSBooleanTrue);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }
  }

  v5->__vftable[890].free = AppleBCMWLANBusInterface::getLogger(v5->__vftable[337].init);
  free = v5->__vftable[890].free;
  if (!free)
  {
    ClassNameHelper = getClassNameHelper(this);
    IOLog("%s::%s(): Unable to create debug logger!\n", ClassNameHelper, "start");
    v7 = this;
    v8 = 2;
    v9 = 2271;
    goto LABEL_14;
  }

  (*(*free + 8))(free);
  if ((IO80211Controller::start(this, a2) & 1) == 0)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start();
        }
      }
    }

    (*(*v5->__vftable[337].init + 16))(v5->__vftable[337].init);
    return 0;
  }

  strlcpy(&v5->__vftable[19].init + 4, kAppleBCMWLANCoreIOImageLoaderConsumerId[0], 0x100uLL);
  v63 = 0;
  if (IOParseBootArgNumber("wlan.debug.initfailure", &v63, 4) && v63)
  {
    v7 = this;
    v8 = 8;
    v9 = 2289;
LABEL_14:
    AppleBCMWLANCore::reportInitFailure(v7, v8, v9);
    return 0;
  }

  BYTE1(this[1].OSObject::OSObjectInterface::__vftable[273].free) = 1;
  BYTE2(this[1].OSObject::OSObjectInterface::__vftable[273].free) = 0;
  if (!(this->OSObject::OSMetaClassBase::__vftable[1].free)(this))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2302;
    goto LABEL_14;
  }

  LOBYTE(v5->__vftable[305].init) = 1;
  if (IOParseBootArgNumber("wlan.sar.nocc", &v63, 4))
  {
    LOBYTE(v5->__vftable[305].init) = v63 == 0;
  }

  BYTE2(v5->__vftable[1137].init) = 0;
  if (IOParseBootArgNumber("wlan.proxd.dump", &v63, 4))
  {
    BYTE2(v5->__vftable[1137].init) = v63 != 0;
  }

  BYTE1(v5->__vftable[1942].free) = 0;
  if (IOParseBootArgNumber("wlan.debug.linkdebug", &v5->__vftable[1094].free, 4))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this, v4, &this[1].OSObjectInterface);
      }
    }
  }

  if (IOParseBootArgNumber("wlan.debug.single-boot-only", &v63, 4))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this, v4, &v63);
      }
    }

    BYTE3(v5->__vftable[2215].free) = v63 != 0;
  }

  v62 = 1;
  if (IOParseBootArgNumber("wlan.debug.disable_filter_ie", &v62, 4))
  {
    if (v62 <= 1)
    {
      BYTE1(v5->__vftable[1116].init) = v62;
    }

    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }
  }

  v61 = 1;
  if (IOParseBootArgNumber("wlan.debug.lpsc", &v61, 4))
  {
    if (v61 <= 1)
    {
      BYTE5(v5->__vftable[1155].init) = v61;
    }

    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }
  }

  if (IOParseBootArgNumber("wlan.lqm.logging", &v5->__vftable[60].init + 4, 4))
  {
    io80211_os_log("LQM Logging via boot-arg wlan.lqm.logging=%d\n", HIDWORD(v5->__vftable[60].init));
  }

  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1112].free) = AppleBCMWLANUtil::getHwFeatureFlags(a2, "IOService", v13);
  v14 = OSNumber::withNumber(HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1112].free), 0x20uLL);
  setPropertyHelper(this, "wlan.hw.feature-flags", v14);
  if (v14)
  {
    (v14->release)(v14);
  }

  if (IOParseBootArgString("wlan.debug.band-locked", &v5->__vftable[1113].free, 16))
  {
    HIBYTE(v5->__vftable[1114].init) = 0;
    free_low = LOBYTE(v5->__vftable[1113].free);
    if ((free_low == 97 || free_low == 98) && !BYTE1(v5->__vftable[1113].free))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start();
        }
      }
    }

    else
    {
      p_free = &v5->__vftable[1113].free;
      *p_free = 0;
      p_free[1] = 0;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start();
        }
      }
    }
  }

  LOBYTE(v5->__vftable[270].init) = 1;
  v17 = v5->__vftable;
  if (LOBYTE(v5->__vftable[270].init) == 1)
  {
    v5->__vftable[1239].init = OSDictionary::withCapacity(0x10u);
    v17 = v5->__vftable;
  }

  v5->__vftable[346].init = AppleBCMWLANBusInterface::getFaultReporter(v17[337].init);
  init = v5->__vftable[346].init;
  if (!init)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2412;
    goto LABEL_14;
  }

  (*(*init + 8))(init);
  CCFaultReporter::registerWatchdog(this[1].OSObject::OSObjectInterface::__vftable[346].init, AppleBCMWLANCore::watchdog, this);
  CCFaultReporter::registerPanic(this[1].OSObject::OSObjectInterface::__vftable[346].init, AppleBCMWLANCore::PanicForFault, this);
  CCFaultReporter::registerErrorDecoder(this[1].OSObject::OSObjectInterface::__vftable[346].init, this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass, this);
  v60[0] = AppleBCMWLANCore::prepareFRCallback;
  v60[1] = AppleBCMWLANCore::collectImmediateFaultDataCallback;
  v60[2] = 0;
  v60[3] = AppleBCMWLANCore::completeFaultReportCallback;
  v60[4] = AppleBCMWLANCore::induceFaultCallback;
  getClassNameHelper(this);
  CCFaultReporter::registerCallbacks();
  v19 = this[1].OSObject::OSObjectInterface::__vftable;
  if ((BYTE4(v19[648].init) & 0x40) != 0)
  {
    CCFaultReporter::setAction(v19[346].init, 2u);
    v19 = v5->__vftable;
  }

  v20 = v19[2].init;
  if (v20)
  {
    CCFaultReporter::panicForReason(v19[346].init, v20);
    v19 = v5->__vftable;
  }

  v21 = (*(*(v19[337].init + 6) + 288))();
  v5->__vftable[337].free = AppleBCMWLANProvisioningManager::withProvisioningRoot(v21, v5->__vftable[337].init, v22);
  v23 = v5->__vftable[337].free;
  if (!v23)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2463;
    goto LABEL_14;
  }

  v24 = AppleBCMWLANProvisioningManager::process(v23);
  v25 = v5->__vftable;
  if (v24)
  {
    (*(*v25[337].init + 136))(v25[337].init);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 14;
    v9 = 2471;
    goto LABEL_14;
  }

  AppleBCMWLANProvisioningManager::getProvisionedData(v25[337].free, &v25[353]);
  v5->__vftable[347].free = IOMallocZeroTyped();
  v26 = v5->__vftable[347].free;
  if (!v26)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2482;
    goto LABEL_14;
  }

  *v26 = this;
  *(this[1].OSObject::OSObjectInterface::__vftable[347].free + 1) = AppleBCMWLANCore::dequeueTxIOs;
  *(this[1].OSObject::OSObjectInterface::__vftable[347].free + 3) = AppleBCMWLANCore::reportCompletedTxIOs_WithoutBDC;
  *(this[1].OSObject::OSObjectInterface::__vftable[347].free + 4) = AppleBCMWLANCore::enqueueRxIOs_WithEventQueue;
  *(this[1].OSObject::OSObjectInterface::__vftable[347].free + 2) = AppleBCMWLANCore::reportCommittedTxCommands;
  (this->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(this);
  this[1].OSObject::OSObjectInterface::__vftable[389].free = IO80211TimerSource::allocWithParams();
  v27 = this->OSObject::OSMetaClassBase::__vftable;
  if (!this[1].OSObject::OSObjectInterface::__vftable[389].free)
  {
    if ((v27[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2498;
    goto LABEL_14;
  }

  (v27[1].Dispatch)(this);
  this[1].OSObject::OSObjectInterface::__vftable[390].init = IO80211TimerSource::allocWithParams();
  v28 = this->OSObject::OSMetaClassBase::__vftable;
  if (!this[1].OSObject::OSObjectInterface::__vftable[390].init)
  {
    if ((v28[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2510;
    goto LABEL_14;
  }

  (v28[1].Dispatch)(this);
  this[1].OSObject::OSObjectInterface::__vftable[392].free = IO80211TimerSource::allocWithParams();
  v29 = this[1].OSObject::OSObjectInterface::__vftable;
  if (!v29[392].free)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2519;
    goto LABEL_14;
  }

  this[1].OSObject::OSObjectInterface::__vftable[338].init = AppleBCMWLANCommander::withConfig(this, v29[337].init, 0x90);
  v30 = this->OSObject::OSMetaClassBase::__vftable;
  if (!this[1].OSObject::OSObjectInterface::__vftable[338].init)
  {
    if ((v30[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2528;
    goto LABEL_14;
  }

  v31 = (v30[1].Dispatch)(this);
  (*(*v31 + 64))(v31, this[1].OSObject::OSObjectInterface::__vftable[338].init);
  this[1].OSObject::OSObjectInterface::__vftable[2].free = mach_continuous_time();
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[3].init) = 0;
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[3].init) = 0;
  (this->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(this);
  this[1].OSObject::OSObjectInterface::__vftable[390].free = IO80211TimerSource::allocWithParams();
  v32 = this->OSObject::OSMetaClassBase::__vftable;
  if (!this[1].OSObject::OSObjectInterface::__vftable[390].free)
  {
    if ((v32[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2553;
    goto LABEL_14;
  }

  (v32[1].Dispatch)(this);
  this[1].OSObject::OSObjectInterface::__vftable[391].init = IO80211TimerSource::allocWithParams();
  v33 = this[1].OSObject::OSObjectInterface::__vftable;
  if (!v33[391].init)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2563;
    goto LABEL_14;
  }

  if (LOBYTE(v33[280].init) == 1)
  {
    (this->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(this);
    this[1].OSObject::OSObjectInterface::__vftable[391].free = IO80211TimerSource::allocWithParams();
    v34 = this->OSObject::OSMetaClassBase::__vftable;
    if (!this[1].OSObject::OSObjectInterface::__vftable[391].free)
    {
      if ((v34[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start();
        }
      }

      v7 = this;
      v8 = 2;
      v9 = 2573;
      goto LABEL_14;
    }

    (v34[1].Dispatch)(this);
    this[1].OSObject::OSObjectInterface::__vftable[392].init = IO80211TimerSource::allocWithParams();
    v33 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v33[392].init)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start();
        }
      }

      v7 = this;
      v8 = 2;
      v9 = 2582;
      goto LABEL_14;
    }
  }

  LOBYTE(v33[1871].init) = 0;
  LOBYTE(v5->__vftable[1871].init) = checkPropertyExists(v5->__vftable[337].init, "wlan.audio.mic.protect.enabled", 1uLL, "IOService");
  IOParseBootArgNumber("wlan.audio.enable", &v5->__vftable[1871], 1);
  v35 = v5->__vftable;
  if (LOBYTE(v5->__vftable[1871].init) == 1)
  {
    v60[0] = 0;
    if (checkAcquireDataPropertyNotEmpty(v35[337].init, "audio-protection-driver", v60, 0, 1uLL, "IOService"))
    {
      if (OSData::getBytesNoCopy(v60[0]))
      {
        BytesNoCopy = OSData::getBytesNoCopy(v60[0]);
        v37 = OSString::withCString(BytesNoCopy);
        if (v37)
        {
          v39 = v37;
          this[1].OSObject::OSObjectInterface::__vftable[1870].free = AppleBCMWLANAudioProtector::withDriver(this, v37, v38);
          (*(*v39 + 16))(v39);
          v40 = this[1].OSObject::OSObjectInterface::__vftable[1870].free;
          if (!v40)
          {
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::start();
              }
            }

            v7 = this;
            v8 = 2;
            v9 = 2604;
            goto LABEL_14;
          }

          AppleBCMWLANAudioProtector::configureAudioMicProtect(v40, 1);
          v41 = (this->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(this);
          (*(*v41 + 64))(v41, this[1].OSObject::OSObjectInterface::__vftable[1870].free);
        }
      }

      if (v60[0])
      {
        (v60[0]->release)(v60[0]);
      }
    }
  }

  this[1].OSObject::OSObjectInterface::__vftable[339].init = AppleBCMWLANScanAdapter::withDriverAndCallBack(this, 0, 0);
  if (!this[1].OSObject::OSObjectInterface::__vftable[339].init)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    return 0;
  }

  this[1].OSObject::OSObjectInterface::__vftable[2248].free = AppleBCMWLANSensingAdapter::withDriver(this, v42);
  if (!this[1].OSObject::OSObjectInterface::__vftable[2248].free)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    return 0;
  }

  this[1].OSObject::OSObjectInterface::__vftable[2249].free = AppleBCMWLANNearbyDeviceDiscoveryAdapter::withDriver(this, v43);
  v45 = this[1].OSObject::OSObjectInterface::__vftable;
  if (!v45[2249].free)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    return 0;
  }

  v5->__vftable[340].free = AppleBCMWLANLeakyApParser::withLogger(v45[890].free, v44);
  if (!v5->__vftable[340].free)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    AppleBCMWLANCore::stopAndFreeResources(this);
    v7 = this;
    v8 = 2;
    v9 = 2651;
    goto LABEL_14;
  }

  this[1].OSObject::OSObjectInterface::__vftable[341].init = AppleBCMWLANTimeKeeper::withDriver(this, v46);
  if (!this[1].OSObject::OSObjectInterface::__vftable[341].init)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    AppleBCMWLANCore::stopAndFreeResources(this);
    v7 = this;
    v8 = 2;
    v9 = 2659;
    goto LABEL_14;
  }

  this[1].OSObject::OSObjectInterface::__vftable[342].init = AppleBCMWLANGASAdapter::withDriver(this);
  v47 = this[1].OSObject::OSObjectInterface::__vftable;
  if (!v47[342].init)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    AppleBCMWLANCore::stopAndFreeResources(this);
    v7 = this;
    v8 = 2;
    v9 = 2668;
    goto LABEL_14;
  }

  HIDWORD(v47[592].init) = 2;
  v60[0] = 0;
  if (checkAcquireDataPropertyNotEmpty(v5->__vftable[337].init, "wlan.scanalg", v60, 4uLL, 1uLL, "IOService"))
  {
    v48 = v5->__vftable;
    HIDWORD(v48[592].init) = *OSData::getBytesNoCopy(v60[0], 0, 4uLL);
    if (v60[0])
    {
      (v60[0]->release)(v60[0]);
      v60[0] = 0;
    }
  }

  IOParseBootArgNumber("wlan.scanalg", &v5->__vftable[592].init + 4, 4);
  HIDWORD(v5->__vftable[1240].free) = 0;
  BYTE4(v5->__vftable[422].init) = 0;
  BYTE2(v5->__vftable[420].free) = 1;
  if ((*(*v5->__vftable[337].init + 368))())
  {
    v49 = (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 368))(this[1].OSObject::OSObjectInterface::__vftable[337].init);
    v50 = OSNumber::withNumber(v49, 0x20uLL);
    setPropertyHelper(this, "ChipSet", v50);
    if (v50)
    {
      (v50->release)(v50);
    }
  }

  setPropertyHelper(this, "AppleBCMWLAN.BuildTag", kAppleBCMWLANBuildTag[0]);
  setPropertyHelper(this, "AppleBCMWLAN.BuildTagGit", "AppleBCMWLANV3_driverkit-1535.9.4.1");
  setPropertyHelper(this, "AppleBCMWLAN.BuildDate", kAppleBCMWLANBuildDate[0]);
  setPropertyHelper(this, "AppleBCMWLAN.BuildType", "release");
  isVerboseDebugLoggingAllowed = AppleBCMWLAN_isVerboseDebugLoggingAllowed();
  setPropertyHelper(this, "Debuggable - isVerboseDebugLoggingAllowed", isVerboseDebugLoggingAllowed);
  isSoCRAMCaptureAllowed = AppleBCMWLAN_isSoCRAMCaptureAllowed();
  setPropertyHelper(this, "Debuggable - isSoCRAMCaptureAllowed", isSoCRAMCaptureAllowed);
  isDebugCommandActionAllowed = AppleBCMWLAN_isDebugCommandActionAllowed();
  setPropertyHelper(this, "Debuggable - isDebugCommandActionAllowed", isDebugCommandActionAllowed);
  v54 = AppleBCMWLANCore::populateRequestedFiles(this);
  if (v54 == -469792995)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 10;
    v9 = 2753;
    goto LABEL_14;
  }

  if (v54)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 2;
    v9 = 2757;
    goto LABEL_14;
  }

  v55 = AppleBCMWLANCore::driverkitAllocSkywalkBusResources(this);
  v56 = this->OSObject::OSMetaClassBase::__vftable;
  if (v55)
  {
    if ((v56[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    v7 = this;
    v8 = 11;
    v9 = 2726;
    goto LABEL_14;
  }

  (v56[1].Dispatch)(this);
  this[1].OSObject::OSObjectInterface::__vftable[275].free = IO80211TimerSource::allocWithParams();
  v57 = this[1].OSObject::OSObjectInterface::__vftable[275].free;
  if (!v57)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start();
      }
    }

    return 0;
  }

  (*(*v57 + 56))(v57, 40000);
  IOService::AdjustBusy(this, 1, 0);
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[275].init) = 1;
  LODWORD(v60[0]) = 0;
  IOService::GetBusyState(this, v60, 0);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::start();
    }
  }

  io80211_os_log("AppleBCMWLANCore::start/%u: AdjustBusy(+1) busystate %u, fAdjustBusyCnt %u\n", 2742, LODWORD(v60[0]), LODWORD(this[1].OSObject::OSObjectInterface::__vftable[275].init));
  this[1].OSObject::OSObjectInterface::__vftable[274].init = mach_continuous_time();
  IOService::RegisterService(this, 0);
  IO80211Controller::PublishReporterProxyService(this);
  AppleBCMWLANCore::initDebugInfo(this);
  setPropertyHelper(this, "FirmwareLoaded", 0);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::start();
    }
  }

  BYTE2(this[1].OSObject::OSObjectInterface::__vftable[1143].free) = 0;
  v58 = (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 120))(this[1].OSObject::OSObjectInterface::__vftable[337].init, this, this[1].OSObject::OSObjectInterface::__vftable[347].free);
  v59 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v58)
  {
    if (v59)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this, v4, &this[1].OSObjectInterface, v58);
      }
    }

    AppleBCMWLANCore::stopAndFreeResources(this);
    v7 = this;
    v8 = 2;
    v9 = 2797;
    goto LABEL_14;
  }

  if (!v59)
  {
    return 1;
  }

  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v11 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANCore::start();
  }

  return v11;
}

uint64_t AppleBCMWLANCore::signalDriverReady(void *this)
{
  v2 = *(this[9] + 10376);
  v3 = OSString::withCString("CoreWiFiDriverReadyKey");
  if ((v2 & 0x30) != 0)
  {
    v4 = "false";
  }

  else
  {
    v4 = "true";
  }

  v5 = OSString::withCString(v4);
  v6 = v5;
  if (v3 && v5)
  {
    v7 = (*(*(*(this[9] + 5392) + 48) + 424))();
LABEL_11:
    (v3->release)(v3);
    v8 = v7;
    goto LABEL_12;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::signalDriverReady();
    }
  }

  v7 = 0;
  v8 = 0;
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v6)
  {
    (v6->release)(v6);
  }

  return v8;
}

uint64_t AppleBCMWLANCore::watchdog(char *this, CCFaultReport *a2)
{
  if (a2)
  {
    v4 = (*(*a2 + 128))(a2) != -469794018;
    v5 = (*(*a2 + 168))(a2);
    v6 = (*(*a2 + 128))(a2);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 1;
  }

  v54 = 0;
  v7 = this + 72;
  *(*(this + 9) + 35568) = 0;
  *(*(this + 9) + 35673) = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v8 = *(*(this + 9) + 5392);
  if (v8)
  {
    AppleBCMWLANBusInterface::setBootCheckPointAnchorTime(v8, v54, 2);
  }

  io80211_os_log("Driver Watchdog Checkpoint (%d) - %llu.%09llu\n", 0, v54 / 0x3B9ACA00, v54 % 0x3B9ACA00);
  if (!a2)
  {
    kdebug_trace();
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog();
      }
    }

    goto LABEL_15;
  }

  (*(*a2 + 128))(a2);
  kdebug_trace();
  if ((*(*a2 + 128))(a2) == -469794303 || (*(*a2 + 128))(a2) == -469794295)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog();
      }
    }

LABEL_15:
    *(*v7 + 35568) = 1;
  }

  v53 = 0;
  v9 = IOMallocZeroData();
  v10 = v9;
  if (v9)
  {
    v53 = v9;
  }

  (*(**(*v7 + 5392) + 400))(*(*v7 + 5392));
  (*(**(*v7 + 5392) + 616))();
  if (v4)
  {
    v11 = (*(*this + 1952))(this);
    if (a2)
    {
      if (v11)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::watchdog(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 72, a2);
        }
      }
    }

    else if (v11)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog();
      }
    }
  }

  v12 = *(*v7 + 10376);
  if ((v12 & 0x20) != 0)
  {
    v16 = 3758097111;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog();
      }
    }
  }

  else if ((v12 & 0x10) != 0)
  {
    v16 = 3758097112;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog();
        v16 = 3758097112;
      }
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog();
      }
    }

    AppleBCMWLANCore::halt(this);
    v16 = 3758097093;
  }

  else
  {
    if ((v12 & 0x10002000) == 0 && (((*(**(*v7 + 5392) + 168))(*(*v7 + 5392)) & 1) != 0 || (*(*v7 + 10376) & 5) != 0 && (*(*(*(*v7 + 5392) + 48) + 192))() && !(*(**(*v7 + 5392) + 64))(*(*v7 + 5392))))
    {
      atomic_fetch_or((*v7 + 10376), 0x80u);
      *(*v7 + 17752) = 1;
      v17 = v53;
      if (!v53)
      {
        v50 = 0;
        v52 = -528336895;
        goto LABEL_80;
      }

      *(v53 + 30) = 0;
      v17[13] = 0u;
      v17[14] = 0u;
      v17[11] = 0u;
      v17[12] = 0u;
      v17[9] = 0u;
      v17[10] = 0u;
      v17[7] = 0u;
      v17[8] = 0u;
      v17[5] = 0u;
      v17[6] = 0u;
      v17[3] = 0u;
      v17[4] = 0u;
      v17[1] = 0u;
      v17[2] = 0u;
      *v17 = 0u;
      if (a2)
      {
        v6 = (*(*a2 + 128))(a2);
      }

      else
      {
        v6 = 0;
      }

      if (v5 == *(*v7 + 12))
      {
        v18 = 1;
      }

      else
      {
        v18 = (*(*v7 + 10376) >> 15) & 1;
      }

      if (v6 != -469794008)
      {
        v21 = 0;
        v20 = -528336895;
LABEL_73:
        v50 = v21;
        v52 = v20;
        *v17 = 3;
        *(v17 + 1) = v21 | v18;
        *(v17 + 4) = v20;
        *(v17 + 5) = v6;
        *(v17 + 6) = 0;
        *(v17 + 1) = 0;
        v23 = *v7;
        if (*(*v7 + 11288))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v45 = (*(*this + 1952))(this);
              CCLogStream::logAlert(v45, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x] flags[0x%08x]\n", "watchdog", 45258, *(v17 + 2), *(v17 + 4), *(v17 + 5), *(v17 + 6), *(v17 + 1));
            }
          }

          IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x37u, v17, 0xF8uLL, 1);
          v23 = *(this + 9);
        }

        v24 = *(v23 + 29944);
        if (v24)
        {
          IO80211Controller::postMessage(this, v24, 0x37u, v17, 0xF8uLL, 1);
        }

LABEL_80:
        *(*(this + 9) + 12) = v5;
        IO80211BssManager::setLastBSSRssi(*(*(this + 9) + 5432));
        v25 = AppleBCMWLANCore::bootChipImage(this, *(*(this + 9) + 1200));
        if (v25)
        {
          v16 = v25;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::watchdog();
            }
          }

          atomic_fetch_and((*(this + 9) + 10376), 0xFFFFFF7F);
          atomic_fetch_or((*(this + 9) + 10376), 0x8000u);
          AppleBCMWLANCore::halt(this);
          v13 = v53;
          if (!v53)
          {
            goto LABEL_160;
          }

          *(v53 + 232) = 0u;
          *(v13 + 216) = 0u;
          *(v13 + 200) = 0u;
          *(v13 + 184) = 0u;
          *(v13 + 168) = 0u;
          *(v13 + 152) = 0u;
          *(v13 + 136) = 0u;
          *(v13 + 120) = 0u;
          *(v13 + 104) = 0u;
          *(v13 + 88) = 0u;
          *(v13 + 72) = 0u;
          *(v13 + 56) = 0u;
          *(v13 + 40) = 0u;
          *(v13 + 24) = 0u;
          *(v13 + 2) = 3766630404;
          *v13 = xmmword_1003ADB60;
          v26 = *v7;
          if (*(*v7 + 11288))
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                v46 = (*(*this + 1952))(this);
                CCLogStream::logAlert(v46, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "watchdog", 45290, *(v13 + 2), *(v13 + 4), *(v13 + 5), *(v13 + 6));
              }
            }

            IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x37u, v13, 0xF8uLL, 1);
            v26 = *(this + 9);
          }

          v15 = *(v26 + 29944);
          if (!v15)
          {
            goto LABEL_160;
          }

LABEL_40:
          IO80211Controller::postMessage(this, v15, 0x37u, v13, 0xF8uLL, 1);
          goto LABEL_160;
        }

        v27 = *v7;
        v28 = *(*v7 + 10376);
        if ((v28 & 1) != 0 && ((v29 = *(v27 + 19852), v29 == 4) || v29 == 1))
        {
          if ((v28 & 4) != 0)
          {
            v30 = (v28 >> 2) & 1;
LABEL_102:
            atomic_fetch_and((v27 + 10376), 0xFFFFEFFF);
LABEL_103:
            *(*v7 + 5388) = 0;
            atomic_fetch_and((*v7 + 10376), 0xFFFF7F7F);
            v31 = *v7;
            if ((*(*v7 + 10377) & 4) != 0)
            {
              AppleBCMWLANCore::signalDriverEvent(this, 0);
              atomic_fetch_and((*(this + 9) + 10376), 0xFFFFFBFF);
              v31 = *(this + 9);
            }

            v32 = *(v31 + 11296);
            if (v32)
            {
              AppleBCMWLANProximityInterface::resetInterface(v32);
              v31 = *v7;
            }

            v33 = *(v31 + 29944);
            if (v33)
            {
              AppleBCMWLANNANInterface::resetInterface(v33);
              v34 = *(*v7 + 29952);
              if (v34)
              {
                AppleBCMWLANNANDataInterface::resetInterface(v34);
              }
            }

            AppleBCMWLANCore::resetInterfacesComplete(this);
            *(*(this + 9) + 6748) = 88;
            *(*(this + 9) + 6749) = 90;
            *(*(this + 9) + 6750) = 0;
            v35 = v53;
            if (v53)
            {
              v36 = v30;
            }

            else
            {
              v36 = 0;
            }

            if (v36 != 1)
            {
              goto LABEL_155;
            }

            *(v53 + 1) = 0u;
            v49 = v35 + 2;
            v35[30] = 0;
            *v35[26].i8 = 0u;
            *v35[28].i8 = 0u;
            *v35[22].i8 = 0u;
            *v35[24].i8 = 0u;
            *v35[18].i8 = 0u;
            *v35[20].i8 = 0u;
            *v35[14].i8 = 0u;
            *v35[16].i8 = 0u;
            *v35[10].i8 = 0u;
            *v35[12].i8 = 0u;
            *v35[6].i8 = 0u;
            *v35[8].i8 = 0u;
            *v35[4].i8 = 0u;
            v35[3].i32[0] = 0;
            *v35->i8 = xmmword_1003ADB70;
            if (a2)
            {
              v35[2].i32[0] = (*(*a2 + 128))(a2);
              v35[26].i32[0] = (*(*a2 + 136))(a2);
              v35[20] = CCFaultReport::getProgramCounter(a2);
              v35[21] = CCFaultReport::getLinkRegister(a2);
              v35[1].i32[1] = (*(*a2 + 168))(a2);
              v37 = (*(*a2 + 144))(a2);
              strlcpy(&v35[22], v37, 0x20uLL);
              v38 = (*(*a2 + 152))(a2);
              strlcpy(&v35[26] + 4, v38, 0x20uLL);
              v39 = (*(*a2 + 160))(a2);
              strlcpy(&v35[3] + 4, v39, 0x80uLL);
              if (v4)
              {
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::watchdog();
                  }
                }

                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::watchdog();
                  }
                }
              }

              v40 = v49->i32[0];
              if (v49->i32[0] == -469794303)
              {
LABEL_125:
                *v49 = vdup_n_s32(0xE0823806);
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::watchdog();
                  }
                }

                v35[30].i32[1] = (*(**(*v7 + 5392) + 568))(*(*v7 + 5392));
                if ((*(**(*v7 + 5392) + 560))())
                {
                  v35->i32[1] |= 4u;
                }

                if ((*(**(*v7 + 5392) + 584))(*(*v7 + 5392)))
                {
                  v35->i32[1] |= 0x10u;
                }

                goto LABEL_137;
              }

              if (v40 != -469792511)
              {
                if (v40 != -469794295)
                {
                  goto LABEL_137;
                }

                goto LABEL_125;
              }

              v49->i32[0] = -528342010;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::watchdog();
                }
              }

              v35[30].i32[1] = AppleBCMWLANJoinAdapter::getJoinTimeoutSequenceNum(*(*v7 + 5416));
              if (AppleBCMWLANJoinAdapter::hasJoinTimeoutBlob(*(*v7 + 5416)))
              {
                v35->i32[1] |= 8u;
                AppleBCMWLANJoinAdapter::clearJoinTimeoutBlobAvialable(*(*v7 + 5416));
              }
            }

LABEL_137:
            if (v49->i32[0] == -469794008)
            {
              v35[2] = vdup_n_s32(0xE0823805);
              v35->i32[1] |= 2u;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  v48 = (*(*this + 1952))(this);
                  CCLogStream::logAlert(v48, "[dk] %s@%d: 'Bus low power' detected/available: APPLE80211_M_DRIVER_AVAILABLE, adjusting reason[0x%08x] -> [0x%08x], errorCode[0x%08x] isNonFatalFlag[0x%08x]\n", "watchdog", 45432, -528336895, v52, v6, v50);
                }
              }
            }

            if ((v49->i32[0] & 0xFFFFC000) == 0xE3FF8000)
            {
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::watchdog(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v49);
                }
              }
            }

            v41 = *v7;
            if (*(*v7 + 11288))
            {
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  v47 = (*(*this + 1952))(this);
                  CCLogStream::logAlert(v47, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "watchdog", 45449, v35[1].i32[0], v35[2].i32[0], v35[2].i32[1], v35[3].i32[0]);
                }
              }

              IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x37u, v35, 0xF8uLL, 1);
              mach_continuous_time();
              absolutetime_to_nanoseconds();
              io80211_os_log("Driver Watchdog Checkpoint (%d) - %llu.%09llu\n", 1, v54 / 0x3B9ACA00, v54 % 0x3B9ACA00);
              v41 = *(this + 9);
            }

            v42 = *(v41 + 11296);
            if (v42)
            {
              IO80211Controller::postMessage(this, v42, 0x37u, &v53, 8uLL, 1);
              v41 = *(this + 9);
            }

            v43 = *(v41 + 29944);
            if (v43)
            {
              IO80211Controller::postMessage(this, v43, 0x37u, v53, 0xF8uLL, 1);
              if (!v4)
              {
                goto LABEL_159;
              }

              goto LABEL_156;
            }

LABEL_155:
            if (!v4)
            {
LABEL_159:
              *(*v7 + 31088) = 0;
              *(*v7 + 31089) = 0;
              (*(**(*v7 + 5392) + 352))(*(*v7 + 5392), 3);
              v16 = 0;
              *(*v7 + 19808) = 0;
              *(*v7 + 19816) = 0;
              goto LABEL_160;
            }

LABEL_156:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::watchdog();
              }
            }

            goto LABEL_159;
          }

          AppleBCMWLANCore::powerOn(this);
        }

        else
        {
          if ((v28 & 0x1000) == 0 || *(v27 + 19852))
          {
            v30 = 0;
            goto LABEL_103;
          }

          AppleBCMWLANCore::powerOff(this, 0);
        }

        v30 = 0;
        v27 = *v7;
        goto LABEL_102;
      }

      v51 = v18;
      v19 = (*(*this + 1952))(this);
      v20 = -528336891;
      if (v19)
      {
        (*(*this + 1952))(this);
        if (!CCLogStream::shouldLog())
        {
          v21 = 2;
          v20 = -528336891;
LABEL_72:
          v18 = v51;
          goto LABEL_73;
        }

        AppleBCMWLANCore::watchdog();
        v20 = -528336891;
      }

      v21 = 2;
      goto LABEL_72;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog();
      }
    }

    atomic_fetch_or((*v7 + 10376), 0x8000u);
    v13 = v53;
    if (!v53)
    {
      v16 = 3766630404;
      goto LABEL_160;
    }

    *v53 = 3;
    *(v13 + 2) = 0;
    *(v13 + 2) = 3766630404;
    *(v13 + 6) = *(*v7 + 10376);
    *(v13 + 3) = 0;
    v14 = *v7;
    if (*(*v7 + 11288))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v22 = (*(*this + 1952))(this);
          CCLogStream::logAlert(v22, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "watchdog", 45202, *(v13 + 2), *(v13 + 4), *(v13 + 5), *(v13 + 6));
        }
      }

      IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x37u, v13, 0xF8uLL, 1);
      v14 = *(this + 9);
    }

    v15 = *(v14 + 29944);
    v16 = 3766630404;
    if (v15)
    {
      goto LABEL_40;
    }
  }

LABEL_160:
  if (v10)
  {
    IOFreeData();
  }

  return v16;
}

void AppleBCMWLANCore::PanicForFault(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 56))(a2);
  CStringNoCopy = OSString::getCStringNoCopy(v2);
  panic("%s", CStringNoCopy);
}

uint64_t AppleBCMWLANCore::collectImmediateFaultDataCallback(IOService *this, CCFaultReport *a2)
{
  v64 = 0;
  if (BYTE2(this[1].OSObject::OSObjectInterface::__vftable[2215].free) == 1)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this, a2))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::collectImmediateFaultDataCallback();
      }
    }
  }

  else
  {
    if (a2)
    {
      (*(*a2 + 128))(a2);
    }

    kdebug_trace();
    v4 = IOMallocZeroData();
    if (v4)
    {
      AppleBCMWLANCore::captureDriverState(this, 0, v4, 0, 0x7FFF);
      v5 = OSString::withCString("CoreState.txt");
      v6 = OSString::withCString(v4);
      (*(*a2 + 192))(a2, v5, v6);
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      v7 = this[1].OSObject::OSObjectInterface::__vftable;
      if (v7[705].free)
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        DWORD2(v59) = 0x8000;
        (*(*this[1].OSObject::OSObjectInterface::__vftable[705].free + 904))(this[1].OSObject::OSObjectInterface::__vftable[705].free, &v58, v8, v9, v10, v11, v12, v13);
        v14 = OSString::withCString("InterfaceState_skywalkinfra.txt");
        v15 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v14, v15);
        v7 = this[1].OSObject::OSObjectInterface::__vftable;
      }

      if (v7[706].init)
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(*this[1].OSObject::OSObjectInterface::__vftable[706].init + 904))(this[1].OSObject::OSObjectInterface::__vftable[706].init, &v58, v16, v17, v18, v19, v20, v21);
        v22 = OSString::withCString("InterfaceState_prox.txt");
        v23 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v22, v23);
        v7 = this[1].OSObject::OSObjectInterface::__vftable;
      }

      if (v7[1871].free)
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(*this[1].OSObject::OSObjectInterface::__vftable[1871].free + 904))(this[1].OSObject::OSObjectInterface::__vftable[1871].free, &v58, v24, v25, v26, v27, v28, v29);
        v30 = OSString::withCString("InterfaceState_nan.txt");
        v31 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v30, v31);
        v7 = this[1].OSObject::OSObjectInterface::__vftable;
      }

      if (v7[1872].init)
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(*this[1].OSObject::OSObjectInterface::__vftable[1872].init + 904))(this[1].OSObject::OSObjectInterface::__vftable[1872].init, &v58, v32, v33, v34, v35, v36, v37);
        v38 = OSString::withCString("InterfaceState_ndi.txt");
        v39 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v38, v39);
        v7 = this[1].OSObject::OSObjectInterface::__vftable;
      }

      if (v7[706].free)
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(*this[1].OSObject::OSObjectInterface::__vftable[706].free + 904))(this[1].OSObject::OSObjectInterface::__vftable[706].free, &v58, v40, v41, v42, v43, v44, v45);
        v46 = OSString::withCString("InterfaceState_apsta.txt");
        v47 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v46, v47);
        v7 = this[1].OSObject::OSObjectInterface::__vftable;
      }

      if (v7[707].init)
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(*this[1].OSObject::OSObjectInterface::__vftable[707].init + 904))(this[1].OSObject::OSObjectInterface::__vftable[707].init, &v58, v48, v49, v50, v51, v52, v53);
        v54 = OSString::withCString("InterfaceState_llw.txt");
        v55 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v54, v55);
      }
    }

    AppleBCMWLANCore::captureDeviceInfo(this, &v64);
    v56 = OSString::withCString("DeviceInfo.xml");
    (*(*a2 + 192))(a2, v56, v64);
    if ((*(*a2 + 128))(a2) == -469793519)
    {
      (*(*a2 + 184))(a2, &this[1].OSObject::OSObjectInterface::__vftable[1151].free);
    }

    (*(*a2 + 128))(a2);
    kdebug_trace();
    if (v4)
    {
      IOFreeData();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::completeFaultReportCallback(AppleBCMWLANCore *this, const CCFaultReport *a2)
{
  if (a2)
  {
    (*(*a2 + 128))(a2);
    kdebug_trace();
    if (((*(*a2 + 88))(a2) & 1) == 0)
    {
      v4 = *(*(this + 9) + 10376);
      if ((v4 & 0x8090) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = (v4 >> 2) & 1;
      }

      memset(v22, 0, sizeof(v22));
      v21 = 0u;
      memset(v20, 0, sizeof(v20));
      v15 = 0x200000004;
      v16 = v5;
      v17 = (*(*a2 + 168))(a2);
      v18 = -528336891;
      v19 = (*(*a2 + 128))(a2);
      *(&v21 + 1) = CCFaultReport::getProgramCounter(a2);
      v22[0] = CCFaultReport::getLinkRegister(a2);
      LODWORD(v22[5]) = (*(*a2 + 136))(a2);
      v6 = (*(*a2 + 144))(a2);
      strlcpy(&v22[1], v6, 0x20uLL);
      v7 = (*(*a2 + 152))(a2);
      strlcpy(&v22[5] + 4, v7, 0x20uLL);
      v8 = (*(*a2 + 160))(a2);
      strlcpy(v20 + 4, v8, 0x80uLL);
      v9 = *(this + 9);
      if (v9[1411])
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v14 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v14, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "completeFaultReportCallback", 53825, v16, v18, v19, LODWORD(v20[0]));
          }
        }

        IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x37u, &v15, 0xF8uLL, 1);
        v9 = *(this + 9);
      }

      v10 = v9[1412];
      if (v10)
      {
        IO80211Controller::postMessage(this, v10, 0x37u, &v15, 0xF8uLL, 1);
        v9 = *(this + 9);
      }

      v11 = v9[3743];
      if (v11)
      {
        IO80211Controller::postMessage(this, v11, 0x37u, &v15, 0xF8uLL, 1);
      }
    }
  }

  else
  {
    kdebug_trace();
  }

  v12 = (*(*this + 104))(this);
  (*(*v12 + 88))(v12, *(*(this + 9) + 5536));
  if (a2)
  {
    (*(*a2 + 128))(a2);
  }

  kdebug_trace();
  return 0;
}

uint64_t AppleBCMWLANCore::induceFaultCallback(void *this, uint64_t a2, const char *a3)
{
  if (a2 == -469793279)
  {
    *(this[9] + 4376) = 1;
    if ((*(*this + 1952))(this, a2, a3))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::induceFaultCallback();
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::dequeueTxIOs(uint64_t result, unsigned __int16 *a2)
{
  if (*a2)
  {
    return AppleBCMWLANCommander::dequeueTxCommands(*(*(result + 72) + 5408), a2);
  }

  return result;
}

uint64_t AppleBCMWLANCore::reportCompletedTxIOs_WithoutBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AppleBCMWLANCommandQueue::getSize(*(a2 + 8));
  kdebug_trace();
  if (AppleBCMWLANCommandQueue::getSize(*(a2 + 8)))
  {
    AppleBCMWLANCommander::reportCompletedTxCommands(*(*(a1 + 72) + 5408), a2);
  }

  return kdebug_trace();
}

OSMetaClassBase *AppleBCMWLANCore::enqueueRxIOs_WithEventQueue(uint64_t a1, AppleBCMWLANObjectQueue **a2)
{
  v4 = a2 + 1;
  result = (*(*a2[1] + 56))(a2[1]);
  if (result)
  {
    result = AppleBCMWLANCommander::enqueueRxCommands(*(*(a1 + 72) + 5408), v4);
  }

  if ((*(*(a1 + 72) + 6580) & 1) == 0)
  {
    result = (*(**a2 + 56))();
    if (result)
    {

      return AppleBCMWLANCore::processRxEvents_WithEventQueue();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleChanInfoTimer(uint64_t a1, uint64_t a2)
{
  v86 = 0xAAAAAAAAAAAAAAAALL;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  v83 = 0;
  BCMChannelSpec = 0;
  v4 = (a1 + 72);
  v79 = *(*(a1 + 72) + 19916);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v88[0] = v5;
  v88[1] = v5;
  v82 = 4;
  v6 = IOMallocZeroData();
  if (v6)
  {
    v7 = v6;
    v85 = -1431655766;
    memcpy(v6, (*v4 + 19918), 0x320uLL);
    if (*(*v4 + 6240) != a2)
    {
      return IOFreeData();
    }

    atomic_fetch_add_explicit((*v4 + 6752), 1u, memory_order_relaxed);
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleChanInfoTimer(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4);
      }
    }

    if (*(*v4 + 780) >= 0x11u && AppleBCMWLANCore::featureFlagIsBitSet(a1, 93))
    {
      v86 = &v83;
      v87 = 0x400040004;
      v8 = *(*(a1 + 72) + 5408);
      p_BCMChannelSpec = &v82;
      v81 = 4;
      v9 = AppleBCMWLANCommander::runIOVarGet(v8, "clm_flags", &p_BCMChannelSpec, &v86, 0);
      v10 = (*(*a1 + 1952))(a1);
      if (v9)
      {
        if (v10)
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleChanInfoTimer();
          }
        }

        goto LABEL_165;
      }

      if (v10)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleChanInfoTimer();
        }
      }

      if ((~v83 & 0x7000000) != 0)
      {
        v12 = 1;
        goto LABEL_23;
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleChanInfoTimer();
        }
      }
    }

    v12 = 0;
LABEL_23:
    if (v79)
    {
      v78 = v12;
      v13 = 0;
      v14 = 0;
      v74 = 0;
      v76 = 0;
      while (2)
      {
        v15 = v13;
        while (1)
        {
          AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*v4 + 17744), v7[v15]);
          v17 = AppleChannelSpec;
          PrimaryChannel = ChanSpecGetPrimaryChannel();
          v19 = PrimaryChannel;
          v20 = AppleChannelSpec & 0xC000;
          v21 = (AppleChannelSpec >> 11) & 7;
          v85 = 0;
          BCMChannelSpec = AppleBCMWLANChanSpec::getBCMChannelSpec(*(*v4 + 17744), PrimaryChannel & 0xC7FF | (((AppleChannelSpec >> 11) & 7) << 11) | AppleChannelSpec & 0xC000);
          if (v21 > 2)
          {
            break;
          }

          v86 = &v85;
          v87 = 0x400040004;
          v22 = *(*(a1 + 72) + 5408);
          p_BCMChannelSpec = &BCMChannelSpec;
          v81 = 4;
          v23 = AppleBCMWLANCommander::runIOVarGet(v22, "per_chan_info", &p_BCMChannelSpec, &v86, 0);
          v24 = (*(*a1 + 1952))(a1);
          if (v23)
          {
            if (v24)
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleChanInfoTimer();
              }
            }

            goto LABEL_165;
          }

          if (v24)
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              v72 = (*(*a1 + 1952))(a1);
              v26 = v7[v15];
              v27 = AppleBCMWLANChanSpec::convToAscii(v17, v88, 0x20u);
              CCLogStream::logNoticeIf(v72, 0x4000000400uLL, "[dk] %s@%d:Chanspec: %x, AppleChanSpec: %s Ch Bitmap: %04x perChanInfo: %04x\n", "handleChanInfoTimer", 46387, v26, v27, v85, BCMChannelSpec);
            }
          }

          if ((~v85 & 3) == 0 && ((v17 & 0xC000) != 0 || v21 == 2))
          {
            *(*v4 + 2 * v14 + 19918) = v7[v15];
            *(*v4 + v14 + 20718) = v19;
            *(*v4 + v14 + 21118) = (v85 & 0x40) != 0;
            *(*v4 + v14 + 21518) = (v85 & 8) != 0;
            *(*v4 + v14 + 21918) = (v85 & 0x20) != 0;
            *(*v4 + v14 + 22318) = 0;
            *(*v4 + v14 + 22718) = 0;
            *(*v4 + v14 + 26320) = 0;
            *(*v4 + v14 + 26720) = v20 == 0x4000;
            *(*v4 + v14 + 27120) = (v85 & 0x400) != 0;
            v28 = *v4 + v14;
            v29 = v78;
            if (!*(v28 + 27120))
            {
              v29 = 0;
            }

            *(v28 + 27520) = v29;
            if (*(*v4 + v14 + 27120))
            {
              v30 = v76 || AppleBCMWLANCore::get6GTxPowerFromFW(a1, v7[v15], 1) == 0;
              v76 = v30;
              v31 = dword_1003E88D5;
              if (dword_1003E88D5)
              {
                v32 = &byte_1003E88DB;
                while (*(v32 - 1) != v7[v15])
                {
                  v32 += 4;
                  if (!--v31)
                  {
                    goto LABEL_50;
                  }
                }

                LOBYTE(v31) = *v32;
              }

LABEL_50:
              *(*v4 + v14 + 28320) = v31;
            }

            if ((v85 & 0x1000) != 0)
            {
              v33 = v74 || AppleBCMWLANCore::get6GTxPowerFromFW(a1, v7[v15], 0) == 0;
              v74 = v33;
              v34 = dword_1003E89E1;
              if (dword_1003E89E1)
              {
                v35 = &byte_1003E89E7;
                while (*(v35 - 1) != v7[v15])
                {
                  v35 += 4;
                  if (!--v34)
                  {
                    goto LABEL_61;
                  }
                }

                LOBYTE(v34) = *v35;
              }

LABEL_61:
              *(*v4 + v14 + 29120) = v34;
            }

            *(*v4 + 4 * v14 + 23120) = BCMChannelSpec;
            *(*v4 + 4 * v14++ + 24720) = v85;
            break;
          }

          if (++v15 >= v79)
          {
            goto LABEL_73;
          }
        }

        if (*(*v4 + 6752) <= 1u)
        {
          v13 = v15 + 1;
        }

        else
        {
          *(*v4 + 6752) = 1;
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleChanInfoTimer();
            }
          }

          v14 = 0;
          v13 = 0;
        }

        if (v13 < v79 && v14 < 0x190)
        {
          continue;
        }

        break;
      }

LABEL_73:
      if (v14 == 400)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleChanInfoTimer();
          }
        }

        LOWORD(v36) = 400;
      }

      else if (v14 > 0x18F)
      {
        LOWORD(v36) = v14;
      }

      else
      {
        v37 = 0;
        v75 = 0;
        v73 = 0;
        v36 = v14;
        do
        {
          v77 = v36;
          v38 = v37;
          while (1)
          {
            v39 = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*v4 + 17744), v7[v38]);
            v40 = ChanSpecGetPrimaryChannel();
            v41 = (v39 >> 11) & 7;
            v85 = 0;
            BCMChannelSpec = AppleBCMWLANChanSpec::getBCMChannelSpec(*(*v4 + 17744), v40 & 0xC7FF | (((v39 >> 11) & 7) << 11) | v39 & 0xC000);
            if (v41 < 3)
            {
              v36 = v77;
              goto LABEL_129;
            }

            if (v14)
            {
              v42 = 0;
              v43 = *v4 + 24720;
              while (v40 != *(v43 + v42 - 4002) || *(v43 + v42 + 2000) != ((v39 & 0xC000) == 0x4000))
              {
                if (v14 == ++v42)
                {
                  goto LABEL_97;
                }
              }

              v85 = *(*v4 + 4 * v42 + 24720);
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  v45 = (*(*a1 + 1952))(a1);
                  v70 = v7[v38];
                  v71 = v45;
                  v46 = AppleBCMWLANChanSpec::convToAscii(v39, v88, 0x20u);
                  CCLogStream::logNoticeIf(v71, 0x4000000400uLL, "[dk] %s@%d:Chanspec: %x, AppleChanSpec: %s Ch Bitmap: %04x perChanInfo: %04x\n", "handleChanInfoTimer", 46473, v70, v46, v85, BCMChannelSpec);
                }
              }

              v44 = v42;
            }

            else
            {
              v44 = 0;
            }

            if (v44 != v14)
            {
              break;
            }

LABEL_97:
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleChanInfoTimer();
              }
            }

            if (++v38 >= v79)
            {
              LOWORD(v36) = v77;
              goto LABEL_133;
            }
          }

          *(*v4 + 2 * v77 + 19918) = v7[v38];
          *(*v4 + v77 + 20718) = v40;
          *(*v4 + v77 + 21118) = (v85 & 0x40) != 0;
          *(*v4 + v77 + 21518) = (v85 & 8) != 0;
          *(*v4 + v77 + 21918) = (v85 & 0x20) != 0;
          *(*v4 + v77 + 22318) = v41 == 3;
          *(*v4 + v77 + 22718) = v41 == 4;
          *(*v4 + v77 + 26320) = v41 == 5;
          *(*v4 + v77 + 26720) = (v39 & 0xC000) == 0x4000;
          *(*v4 + v77 + 27120) = (v85 & 0x400) != 0;
          v47 = *v4 + v77;
          v48 = v78;
          if (!*(v47 + 27120))
          {
            v48 = 0;
          }

          *(v47 + 27520) = v48;
          if (v41 == 5)
          {
            if (*(*v4 + v77 + 27120))
            {
              v49 = v75 || AppleBCMWLANCore::get6GTxPowerFromFW(a1, v7[v38], 1) == 0;
              v75 = v49;
              v50 = dword_1003E88D5;
              if (dword_1003E88D5)
              {
                v51 = &byte_1003E88DB;
                while (*(v51 - 1) != v7[v38])
                {
                  v51 += 4;
                  if (!--v50)
                  {
                    goto LABEL_116;
                  }
                }

                LOBYTE(v50) = *v51;
              }

LABEL_116:
              *(*v4 + v77 + 28720) = v50;
            }

            if ((v85 & 0x1000) != 0)
            {
              v52 = v73 || AppleBCMWLANCore::get6GTxPowerFromFW(a1, v7[v38], 0) == 0;
              v73 = v52;
              v53 = dword_1003E89E1;
              if (dword_1003E89E1)
              {
                v54 = &byte_1003E89E7;
                while (*(v54 - 1) != v7[v38])
                {
                  v54 += 4;
                  if (!--v53)
                  {
                    goto LABEL_127;
                  }
                }

                LOBYTE(v53) = *v54;
              }

LABEL_127:
              *(*v4 + v77 + 29520) = v53;
            }
          }

          *(*v4 + 4 * v77 + 23120) = BCMChannelSpec;
          *(*v4 + 4 * v77 + 24720) = v85;
          v36 = v77 + 1;
LABEL_129:
          v37 = v38 + 1;
        }

        while (v38 + 1 < v79 && v36 < 0x190);
      }
    }

    else
    {
      LOWORD(v36) = 0;
    }

LABEL_133:
    *(*v4 + 19916) = v36;
    v55 = *v4 + 19912;
    v56 = *v4 + 6744;
    *v55 = *v56;
    *(v55 + 2) = *(v56 + 2);
    v57 = *v4;
    v58 = *(*v4 + 29944);
    if (v58)
    {
      IO80211Controller::postMessage(a1, v58, 0xBu, 0, 0, 1);
      v57 = *(a1 + 72);
    }

    v59 = *(v57 + 11296);
    if (v59)
    {
      IO80211Controller::postMessage(a1, v59, 0xBu, 0, 0, 1);
      v57 = *(a1 + 72);
    }

    v60 = *(v57 + 19916);
    if (*(v57 + 19916))
    {
      if (*(v57 + 26720))
      {
        v61 = 1;
      }

      else
      {
        v62 = (v57 + 26721);
        v63 = 1;
        do
        {
          v64 = v63;
          if (v60 == v63)
          {
            break;
          }

          v65 = *v62++;
          ++v63;
        }

        while (!v65);
        v61 = v64 < v60;
      }
    }

    else
    {
      v61 = 0;
    }

    *(v57 + 35896) = v61;
    if (*(*v4 + 780) >= 0x11u && v61 != AppleBCMWLANCore::is6ESupportedInCountry(a1, (*v4 + 6744)))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleChanInfoTimer();
        }
      }

      if (*(*v4 + 1087) == 1)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleChanInfoTimer();
          }
        }

        AppleBCMWLANCore::populate6ESupportedCountryList(a1);
      }

      else
      {
        AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(a1);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleChanInfoTimer();
      }
    }

    v66 = *v4;
    v67 = *(*v4 + 11296);
    if (v67)
    {
      IO80211Controller::postMessage(a1, v67, 0xE0u, 0, 0, 1);
      v66 = *(a1 + 72);
    }

    v68 = *(v66 + 11288);
    if (v68)
    {
      IO80211Controller::postMessage(a1, v68, 0xE0u, 0, 0, 1);
      v66 = *(a1 + 72);
    }

    v69 = *(v66 + 29944);
    if (!v69)
    {
      goto LABEL_166;
    }

    IO80211Controller::postMessage(a1, v69, 0xE0u, 0, 0, 1);
LABEL_165:
    v66 = *v4;
LABEL_166:
    *(v66 + 6752) = 0;
    return IOFreeData();
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleChanInfoTimer();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::disableHostCountryCode(uint64_t a1)
{
  v4 = 0;
  result = (*(*a1 + 128))(a1);
  if (result)
  {
    v3 = (*(*a1 + 128))(a1);
    return (*(*a1 + 1328))(a1, v3, &v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleStatsReportTimeout(IOService *a1)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 84) && (AppleBCMWLANCore::featureFlagIsBitSet(a1, 111) & 1) != 0 || (result = AppleBCMWLANCore::featureFlagIsBitSet(a1, 85), result))
  {
    v3 = a1[1].OSObject::OSObjectInterface::__vftable;
    if (BYTE4(v3[1156].init))
    {
      AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics(a1);
      v3 = a1[1].OSObject::OSObjectInterface::__vftable;
    }

    if (BYTE4(v3[1159].init))
    {
      AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics(a1);
      v3 = a1[1].OSObject::OSObjectInterface::__vftable;
    }

    v4 = (&v3[1156].init + 4);
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v5 = &a1[1].OSObject::OSObjectInterface::__vftable[1159].init + 4;
    *(v5 + 16) = 0;
    *v5 = 0u;
    result = a1[1].OSObject::OSObjectInterface::__vftable[390].free;
    if (result)
    {
      v6 = *(*result + 56);

      return v6();
    }
  }

  return result;
}

_DWORD *AppleBCMWLANCore::handleTxDCReportTimeout(AppleBCMWLANCore *a1, uint64_t a2)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(a1, 79);
  if (result)
  {
    v6 = a1 + 72;
    v5 = *(a1 + 9);
    if (*(v5 + 6256) == a2)
    {
      v7 = (*(**(v5 + 5392) + 368))(*(v5 + 5392)) <= 0x112E ? 200 : 168;
      result = IOMallocZeroData();
      if (result)
      {
        v8 = result;
        *result = 3;
        v49[0] = result;
        v49[1] = v7;
        v48[0] = result;
        v48[1] = v7 & 0xFFFFFF00FFFFFFFFLL | (v7 << 32);
        v9 = (*(*a1 + 88))(a1);
        if ((*(*v9 + 136))(v9))
        {
          *&v46 = a1;
          *(&v46 + 1) = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback;
          v47 = 0;
          v10 = *(*(a1 + 9) + 5408);
          v45 = v7 << 16;
          if (AppleBCMWLANCommander::sendIOVarGet(v10, "dynsar", v49, &v45, &v46, 0) && (*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleTxDCReportTimeout();
            }
          }
        }

        else if (AppleBCMWLANCommander::runIOVarGet(*(*v6 + 5408), "dynsar", v49, v48, 0))
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleTxDCReportTimeout();
            }
          }
        }

        else
        {
          if (*v8 != 3)
          {
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleTxDCReportTimeout();
              }
            }

            return IOFreeData();
          }

          v12 = (v8 + 2);
          v11 = *(v8 + 4);
          v13 = v11 == 4 || v11 == 2;
          if (v13 && *(v8 + 35) == 2 && *(v8 + 36) < 9u)
          {
            if (v11 == 4)
            {
              v15 = *(v8 + 38);
              if (v15 + 16 * *(v8 + 32) > *(v8 + 5))
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleTxDCReportTimeout();
                  }
                }

                return IOFreeData();
              }

              v44 = 0;
              v16 = v12 + v15;
            }

            else if (v11 == 2)
            {
              v14 = *(v8 + 38);
              if (v14 + 24 * *(v8 + 32) > *(v8 + 5))
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleTxDCReportTimeout();
                  }
                }

                return IOFreeData();
              }

              v16 = 0;
              v44 = v12 + v14;
            }

            else
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleTxDCReportTimeout();
                }
              }

              v44 = 0;
              v16 = 0;
            }

            if (v8[3])
            {
              if (*(v8 + 35))
              {
                v17 = 0;
                do
                {
                  if ((*(*a1 + 1952))(a1))
                  {
                    (*(*a1 + 1952))(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::handleTxDCReportTimeout();
                    }
                  }

                  v18 = *(v8 + 32);
                  if (*(v8 + 32))
                  {
                    v19 = 0;
                    do
                    {
                      v20 = v19 + v17 * v18;
                      v21 = *v12;
                      if (v21 == 4)
                      {
                        v24 = v8[3];
                        if (v17)
                        {
                          if (v19 == 2)
                          {
                            if (v24)
                            {
                              v32 = 100 * *&v16[8 * v20] / v24;
                            }

                            else
                            {
                              LOBYTE(v32) = 0;
                            }

                            *(*(a1 + 9) + 6294) = v32;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout();
                              }
                            }
                          }

                          else if (v19 == 1)
                          {
                            if (v24)
                            {
                              v29 = 100 * *&v16[8 * v20] / v24;
                            }

                            else
                            {
                              LOBYTE(v29) = 0;
                            }

                            *(*(a1 + 9) + 6293) = v29;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout();
                              }
                            }
                          }

                          else if (v19)
                          {
                            if (v24)
                            {
                              v33 = 100 * *&v16[8 * v20] / v24;
                            }

                            else
                            {
                              LOBYTE(v33) = 0;
                            }

                            *(*(a1 + 9) + 6295) = v33;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout();
                              }
                            }
                          }

                          else
                          {
                            if (v24)
                            {
                              v25 = 100 * *&v16[8 * v20] / v24;
                            }

                            else
                            {
                              LOBYTE(v25) = 0;
                            }

                            *(*(a1 + 9) + 6292) = v25;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout();
                              }
                            }
                          }
                        }

                        else if (v19 == 2)
                        {
                          if (v24)
                          {
                            v38 = 100 * *&v16[8 * v20] / v24;
                          }

                          else
                          {
                            LOBYTE(v38) = 0;
                          }

                          *(*(a1 + 9) + 6290) = v38;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout();
                            }
                          }
                        }

                        else if (v19 == 1)
                        {
                          if (v24)
                          {
                            v35 = 100 * *&v16[8 * v20] / v24;
                          }

                          else
                          {
                            LOBYTE(v35) = 0;
                          }

                          *(*(a1 + 9) + 6289) = v35;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout();
                            }
                          }
                        }

                        else if (v19)
                        {
                          if (v24)
                          {
                            v39 = 100 * *&v16[8 * v20] / v24;
                          }

                          else
                          {
                            LOBYTE(v39) = 0;
                          }

                          *(*(a1 + 9) + 6291) = v39;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout();
                            }
                          }
                        }

                        else
                        {
                          if (v24)
                          {
                            v27 = 100 * *&v16[8 * v20] / v24;
                          }

                          else
                          {
                            LOBYTE(v27) = 0;
                          }

                          *(*(a1 + 9) + 6288) = v27;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout();
                            }
                          }
                        }
                      }

                      else if (v21 == 2)
                      {
                        v22 = v8[3];
                        if (v17)
                        {
                          if (v19 == 2)
                          {
                            if (v22)
                            {
                              v30 = 100 * *&v44[12 * v20 + 8] / v22;
                            }

                            else
                            {
                              LOBYTE(v30) = 0;
                            }

                            *(*(a1 + 9) + 6294) = v30;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout();
                              }
                            }
                          }

                          else if (v19 == 1)
                          {
                            if (v22)
                            {
                              v28 = 100 * *&v44[12 * v20 + 8] / v22;
                            }

                            else
                            {
                              LOBYTE(v28) = 0;
                            }

                            *(*(a1 + 9) + 6293) = v28;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout();
                              }
                            }
                          }

                          else if (v19)
                          {
                            if (v22)
                            {
                              v31 = 100 * *&v44[12 * v20 + 8] / v22;
                            }

                            else
                            {
                              LOBYTE(v31) = 0;
                            }

                            *(*(a1 + 9) + 6295) = v31;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout();
                              }
                            }
                          }

                          else
                          {
                            if (v22)
                            {
                              v23 = 100 * *&v44[12 * v20 + 8] / v22;
                            }

                            else
                            {
                              LOBYTE(v23) = 0;
                            }

                            *(*(a1 + 9) + 6292) = v23;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout();
                              }
                            }
                          }
                        }

                        else if (v19 == 2)
                        {
                          if (v22)
                          {
                            v36 = 100 * *&v44[12 * v20 + 8] / v22;
                          }

                          else
                          {
                            LOBYTE(v36) = 0;
                          }

                          *(*(a1 + 9) + 6290) = v36;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout();
                            }
                          }
                        }

                        else if (v19 == 1)
                        {
                          if (v22)
                          {
                            v34 = 100 * *&v44[12 * v20 + 8] / v22;
                          }

                          else
                          {
                            LOBYTE(v34) = 0;
                          }

                          *(*(a1 + 9) + 6289) = v34;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout();
                            }
                          }
                        }

                        else if (v19)
                        {
                          if (v22)
                          {
                            v37 = 100 * *&v44[12 * v20 + 8] / v22;
                          }

                          else
                          {
                            LOBYTE(v37) = 0;
                          }

                          *(*(a1 + 9) + 6291) = v37;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout();
                            }
                          }
                        }

                        else
                        {
                          if (v22)
                          {
                            v26 = 100 * *&v44[12 * v20 + 8] / v22;
                          }

                          else
                          {
                            LOBYTE(v26) = 0;
                          }

                          *(*(a1 + 9) + 6288) = v26;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout();
                            }
                          }
                        }
                      }

                      else if ((*(*a1 + 1952))(a1))
                      {
                        (*(*a1 + 1952))(a1);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANCore::handleTxDCReportTimeout();
                        }
                      }

                      ++v19;
                      v18 = *(v8 + 32);
                    }

                    while (v19 < v18);
                  }

                  ++v17;
                }

                while (v17 < *(v8 + 35));
              }

              v40 = *v6;
              v41 = *(*v6 + 5504);
              if (v41)
              {
                if (AppleBCMWLANCore::checkNonZeroTxDCValue(a1))
                {
                  AppleBCMWLANIOReportingCore::reportTxDC(v41, v40 + 6288);
                  v42 = *v6;
                  if (*(*v6 + 6288) || *(*v6 + 6289) || *(*v6 + 6290) || *(*v6 + 6291))
                  {
                    AppleBCMWLANCore::updateTxDCSlice0Ant0Report(a1);
                    v42 = *(a1 + 9);
                    if (!*(v42 + 6296))
                    {
                      *(v42 + 6296) = 1;
                      v42 = *v6;
                    }
                  }

                  if (*(v42 + 6292) || *(v42 + 6293) || *(v42 + 6294) || *(v42 + 6295))
                  {
                    AppleBCMWLANCore::updateTxDCSlice1Ant0Report(a1);
                    v42 = *(a1 + 9);
                    if (!*(v42 + 6384))
                    {
                      *(v42 + 6384) = 1;
                      v42 = *v6;
                    }
                  }

                  *(v42 + 6288) = 0;
                  v40 = *v6;
                }

                v43 = *(v40 + 6256);
                if (v43)
                {
                  (*(*v43 + 56))(v43, 120000);
                }
              }
            }

            return IOFreeData();
          }

          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleTxDCReportTimeout();
            }
          }
        }

        return IOFreeData();
      }
    }
  }

  return result;
}

void *AppleBCMWLANCore::handleDynSARDetailSlice0Timeout(void *result, uint64_t a2)
{
  v2 = result[9];
  if (*(v2 + 4480) == 1 && *(v2 + 6264) == a2)
  {
    v3 = result;
    v4 = (*(**(v2 + 5392) + 368))(*(v2 + 5392));
    v5 = *(v3[9] + 5528);
    if (v4 < 0x112F)
    {
      AppleBCMWLANTxPowerManager::getDynSARDetail(v5, 0, 0xAu);
    }

    else
    {
      AppleBCMWLANTxPowerManager::getDynSARDetailV2(v5, 0, 0xAu);
    }

    result = *(v3[9] + 6264);
    if (result)
    {
      v6 = *(*result + 56);

      return v6();
    }
  }

  return result;
}

void *AppleBCMWLANCore::handleDynSARDetailSlice1Timeout(void *result, uint64_t a2)
{
  v2 = result[9];
  if (*(v2 + 4480) == 1 && *(v2 + 6272) == a2)
  {
    v3 = result;
    v4 = (*(**(v2 + 5392) + 368))(*(v2 + 5392));
    v5 = *(v3[9] + 5528);
    if (v4 < 0x112F)
    {
      AppleBCMWLANTxPowerManager::getDynSARDetail(v5, 1, 0xAu);
    }

    else
    {
      AppleBCMWLANTxPowerManager::getDynSARDetailV2(v5, 1, 0xAu);
    }

    result = *(v3[9] + 6272);
    if (result)
    {
      v6 = *(*result + 56);

      return v6();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::driverkitAllocSkywalkBusResources(AppleBCMWLANCore *this)
{
  v4 = 0;
  v2 = AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
  IOParseBootArgNumber("wlan.platformconfig.bypasscheck", &v4, 1);
  if ((v4 & 1) == 0 && (v2 & 1) == 0)
  {
    AppleBCMWLANCore::driverkitAllocSkywalkBusResources(this, v2, &v5);
    return v5;
  }

  if ((AppleBCMWLANCore::fetchAndUpdateRingParameters(this) & 1) == 0)
  {
    AppleBCMWLANCore::driverkitAllocSkywalkBusResources();
    return v5;
  }

  if (((*(**(*(this + 9) + 5392) + 776))(*(*(this + 9) + 5392)) & 1) == 0)
  {
    AppleBCMWLANCore::driverkitAllocSkywalkBusResources();
    return v5;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::initDebugInfo(AppleBCMWLANCore *this)
{
  AppleBCMWLANBusInterface::getLogPipesAndStreams(*(*(this + 9) + 5392), (*(this + 9) + 14232), (*(this + 9) + 14224), (*(this + 9) + 14208), (*(this + 9) + 14240), (*(this + 9) + 14216));
  v2 = *(this + 9);
  v3 = v2[1778];
  if (v3)
  {
    (*(*v3 + 8))(v3);
    v2 = *(this + 9);
  }

  v4 = v2[1779];
  if (v4)
  {
    (*(*v4 + 8))(v4);
    v2 = *(this + 9);
  }

  v5 = v2[1780];
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v2 = *(this + 9);
  }

  v6 = v2[1776];
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v2 = *(this + 9);
  }

  v7 = v2[1777];
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v2 = *(this + 9);
  }

  v8 = v2[1779];
  if (v8)
  {
    (*(*v8 + 72))(v8);
    v2 = *(this + 9);
  }

  v9 = v2[1778];
  if (v9)
  {
    (*(*v9 + 72))(v9);
    v2 = *(this + 9);
  }

  v10 = v2[1776];
  if (v10)
  {
    (*(*v10 + 72))(v10);
    v2 = *(this + 9);
  }

  if (v2[1778])
  {
    bzero(v14, 0x358uLL);
    v15 = -1;
    v20 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    bytes = 0xA5A5000000000002;
    v21 = OSData::withBytes(&bytes, 8uLL);
    v22 = 150;
    if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
    {
      LODWORD(v15) = 127;
      v16 = 1;
    }

    v11 = CCStream::withPipeAndName();
    *(*(this + 9) + 14256) = OSMetaClassBase::safeMetaCast(v11, gCCLogStreamMetaClass);
    (v21->release)(v21);
  }

  return 0;
}

size_t AppleBCMWLANCore::copyKeys(AppleBCMWLANCore *this, char *a2, const char *a3, size_t a4, int a5)
{
  bzero(a2, a4);
  result = strlen(a3);
  if (result - 1 >= a4)
  {
    return result;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = a3[v15];
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        v17 = v16 == 61;
        v13 = 2 * v17;
        v11 = 2 * v17;
      }

      else if (!v11)
      {
        if (a5 && (v16 - 65) < 0x1A || (v11 = 0, (a5 & 1) == 0) && (v16 - 123) >= 0xFFFFFFE6)
        {
          v11 = 1;
          v14 = v15;
        }
      }

      goto LABEL_22;
    }

    if (v15 != result - 1 && v16 != 32)
    {
      v11 = 2;
      ++v13;
      goto LABEL_22;
    }

    if (v16 != 32)
    {
      ++v13;
    }

    if (v12)
    {
      v18 = v12 + 1;
      a2[v12] = 95;
    }

    else
    {
      v18 = 0;
    }

    v12 = v18 + v13;
    if (v18 + v13 >= a4)
    {
      break;
    }

    memcpy(&a2[v18], &a3[v14], v13);
    v11 = 0;
LABEL_22:
    ++v15;
    result = strlen(a3);
    if (v15 >= result || v12 >= a4)
    {
      return result;
    }
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v19 = (*(*this + 1952))(this);
      return CCLogStream::logAlert(v19, "[dk] %s@%d:key too long! index %ld, mode %d, cur %c, start %ld, keylen %ld copyindex %ld\n", "copyKeys", 3228, v15, 0, a3[v15], v14, v13, v18);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::verifyFileSelect(AppleBCMWLANCore *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(*(**(*(this + 9) + 5392) + 376))(*(*(this + 9) + 5392)))
  {
    return 0;
  }

  result = 3825174285;
  if (a2)
  {
    return result;
  }

  if (a3)
  {
    return 3825174286;
  }

  if (a4)
  {
    return 3825174287;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANCore::appendWskuInfo(void *this)
{
  v9 = -1431655766;
  v8 = 0;
  if (IOParseBootArgNumber("wlan.debug.nowsku", &v9, 4))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::appendWskuInfo();
      }
    }

    return 0;
  }

  v2 = this + 9;
  if (checkAcquireDataPropertyNotEmpty(*(this[9] + 5392), "wlan.wsku.bypass", &v8, 0, 1uLL, "IOService"))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::appendWskuInfo();
      }
    }

    if (v8)
    {
      (v8->release)(v8);
    }

    return 0;
  }

  v7 = 0;
  if (!checkAcquireDataPropertyNotEmpty(*(*v2 + 5392), "wifi-antenna-sku-info", &v7, 0x10uLL, 1uLL, "IOService"))
  {
    goto LABEL_17;
  }

  v5 = *v2;
  *(v5 + 4336) = *OSData::getBytesNoCopy(v7, 0, 0x10uLL);
  v6 = *v2;
  if (*(*v2 + 4336) == 1 && !*(v6 + 4340))
  {
    strlcat((v6 + 1976), "=", 0x100uLL);
    strlcat((*v2 + 1976), (*v2 + 4344), 0x100uLL);
    strlcat((*v2 + 1208), "=", 0x100uLL);
    strlcat((*v2 + 1208), (*v2 + 4344), 0x100uLL);
    strlcat((*v2 + 2232), "=", 0x100uLL);
    strlcat((*v2 + 2232), (*v2 + 4344), 0x100uLL);
LABEL_17:
    v3 = 0;
    goto LABEL_18;
  }

  AppleBCMWLANCore::appendWskuInfo(this, (this + 9), &v10);
  v3 = v10;
LABEL_18:
  if (v7)
  {
    (v7->release)(v7);
  }

  return v3;
}

uint64_t acquireProperty<OSObject>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSObjectMetaClass);
    if (v7)
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      result = anObject;
      if (anObject)
      {
        (anObject->release)(anObject);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::stopResources(AppleBCMWLANCore *this)
{
  IOLog("AppleBCMWLANCore::stopResources[%u] this[%p]\n", 3860, this);
  v2 = this + 72;
  v3 = 1;
  *(*(this + 9) + 18413) = 1;
  v4 = *(this + 9);
  v5 = *(v4 + 5408);
  if (v5)
  {
    (*(*v5 + 72))(v5);
    v6 = (*(*this + 88))(this);
    (*(*v6 + 72))(v6, *(*(this + 9) + 5408));
    v4 = *(this + 9);
  }

  atomic_compare_exchange_strong((v4 + 4400), &v3, 0);
  if (v3 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    v26 = 0;
    IOService::GetBusyState(this, &v26, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::stopResources();
      }
    }

    io80211_os_log("AppleBCMWLANCore::stopResources/%u: AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", 3874, v26, *(*v2 + 4400));
  }

  v7 = *v2;
  v8 = *(*v2 + 29928);
  if (v8)
  {
    (*(*v8 + 72))(v8);
    v9 = (*(*this + 88))(this);
    (*(*v9 + 72))(v9, *(*(this + 9) + 29928));
    v7 = *(this + 9);
  }

  v10 = *(v7 + 6280);
  if (v10)
  {
    (*(*v10 + 80))(v10);
    v7 = *v2;
  }

  v11 = *(v7 + 6240);
  if (v11)
  {
    (*(*v11 + 80))(v11);
    v7 = *v2;
  }

  v12 = *(v7 + 6232);
  if (v12)
  {
    (*(*v12 + 80))(v12);
    v7 = *v2;
  }

  v13 = *(v7 + 4408);
  if (v13)
  {
    (*(*v13 + 80))(v13);
    v7 = *v2;
  }

  v14 = *(v7 + 6248);
  if (v14)
  {
    (*(*v14 + 80))(v14);
    v7 = *v2;
  }

  v15 = *(v7 + 6256);
  if (v15)
  {
    (*(*v15 + 80))(v15);
    v7 = *v2;
  }

  if (*(v7 + 4480) == 1)
  {
    v16 = *(v7 + 6264);
    if (v16)
    {
      (*(*v16 + 80))(v16);
      v7 = *v2;
    }

    v17 = *(v7 + 6272);
    if (v17)
    {
      (*(*v17 + 80))(v17);
      v7 = *v2;
    }
  }

  v18 = *(v7 + 5496);
  if (v18)
  {
    AppleBCMWLANBGScanAdapter::cancelScanPrivacyMacTimer(v18);
    v7 = *v2;
  }

  v19 = *(v7 + 5536);
  if (v19)
  {
    CCFaultReporter::unregisterCallbacks(v19, this);
    v7 = *(this + 9);
  }

  v20 = *(v7 + 11304);
  if (v20)
  {
    (*(*v20 + 16))(v20);
    *(*v2 + 11304) = 0;
    v7 = *v2;
  }

  v21 = *(v7 + 11296);
  if (v21)
  {
    (*(*v21 + 16))(v21);
    *(*v2 + 11296) = 0;
    v7 = *v2;
  }

  v22 = *(v7 + 29944);
  if (v22)
  {
    (*(*v22 + 16))(v22);
    *(*v2 + 29944) = 0;
    v7 = *v2;
  }

  v23 = *(v7 + 29952);
  if (v23)
  {
    (*(*v23 + 16))(v23);
    *(*v2 + 29952) = 0;
    v7 = *v2;
  }

  v24 = *(v7 + 14304);
  if (v24)
  {
    (*(*v24 + 16))(v24);
    *(*v2 + 14304) = 0;
  }

  return IOLog("AppleBCMWLANCore::stopResources[%u] this[%p]\n", 3948, this);
}

uint64_t AppleBCMWLANCore::destroyDebugInfo(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  v3 = v2[1777];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 9) + 14216) = 0;
    v2 = *(this + 9);
  }

  v4 = v2[1780];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 9) + 14240) = 0;
    v2 = *(this + 9);
  }

  v5 = v2[1782];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 9) + 14256) = 0;
    v2 = *(this + 9);
  }

  v6 = v2[1776];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 9) + 14208) = 0;
    v2 = *(this + 9);
  }

  v7 = v2[1778];
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(*(this + 9) + 14224) = 0;
    v2 = *(this + 9);
  }

  v8 = v2[1779];
  if (v8)
  {
    (*(*v8 + 16))(v8);
    *(*(this + 9) + 14232) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::syncChipTimer(AppleBCMWLANCore *this)
{
  v1 = *(this + 9);
  if ((*(v1 + 10376) & 1) != 0 && ((v2 = *(v1 + 19852), v2 != 4) ? (v3 = v2 == 1) : (v3 = 1), v3))
  {
    return AppleBCMWLANTimeKeeper::synchronizeTime(*(v1 + 5456));
  }

  else
  {
    return 3758097111;
  }
}

BOOL AppleBCMWLANCore::isPoweredOnOrRestricted(AppleBCMWLANCore *this)
{
  v1 = *(this + 9);
  if ((*(v1 + 10376) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 19852);
  return v3 == 1 || v3 == 4;
}

uint64_t AppleBCMWLANCore::collectSPMIHEBResetStats(IOService *this, unsigned int a2)
{
  v4 = OSString::withCString("com.apple.wifi.SPMIHEB.resetStats");
  if (!v4)
  {
    return AppleBCMWLANCore::collectSPMIHEBResetStats();
  }

  v5 = v4;
  v6 = OSDictionary::withCapacity(1u);
  if (v6)
  {
    v7 = OSString::withCString("resetCount");
    if (v7)
    {
      v8 = v7;
      v9 = OSNumber::withNumber(a2, 0x20uLL);
      if (v9)
      {
        OSDictionary::setObject(v6, v8, v9);
        v10 = IOService::CoreAnalyticsSendEvent(this, 0, v5, v6, 0);
        if (v10)
        {
          v11 = v10;
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::collectSPMIHEBResetStats(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v5, v11);
            }
          }
        }

        if (!(this->OSObject::OSMetaClassBase::__vftable[34].free)(this) || ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v13[0] = 67109634;
            v13[1] = 73;
            v14 = 2080;
            v15 = "collectSPMIHEBResetStats";
            v16 = 1024;
            v17 = 4294;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: sent SPMI reset stats to coreAnalytics\n", v13, 0x18u);
          }
        }

        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectSPMIHEBResetStats();
          }
        }
      }

      else
      {
        AppleBCMWLANCore::collectSPMIHEBResetStats();
      }

      (v8->release)(v8);
      if (v9)
      {
        (v9->release)(v9);
      }
    }

    else
    {
      AppleBCMWLANCore::collectSPMIHEBResetStats();
    }
  }

  else
  {
    AppleBCMWLANCore::collectSPMIHEBResetStats();
  }

  result = (v5->release)(v5);
  if (v6)
  {
    return (v6->release)(v6);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getTxPktCounter(AppleBCMWLANCore *this)
{
  v3 = 0u;
  v4 = 0u;
  v1 = *(*(this + 9) + 11288);
  if (v1)
  {
    (*(*v1 + 872))(v1, &v3);
  }

  return vaddvq_s64(vaddq_s64(v4, v3));
}

uint64_t AppleBCMWLANCore::getRealTimeAwdlTxPktCounter(AppleBCMWLANCore *this)
{
  v2 = 0u;
  v3 = 0u;
  result = *(*(this + 9) + 11296);
  if (result)
  {
    (*(*result + 872))(result, &v2);
    return *(&v3 + 1) + v3;
  }

  return result;
}

uint64_t AppleBCMWLANCore::getRealTimeNANTxPktCounter(AppleBCMWLANCore *this)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(this + 9);
  v3 = *(v2 + 29944);
  if (v3)
  {
    (*(*v3 + 872))(v3, &v10);
    v2 = *(this + 9);
  }

  v4 = *(v2 + 29952);
  if (v4)
  {
    (*(*v4 + 872))(v4, &v8);
    v6 = *(&v9 + 1);
    v5 = v9;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return *(&v11 + 1) + v11 + v5 + v6;
}

uint64_t AppleBCMWLANCore::getRealTimeTrafficClassTxCounter(AppleBCMWLANCore *this)
{
  v2 = 0u;
  v3 = 0u;
  result = *(*(this + 9) + 11288);
  if (result)
  {
    (*(*result + 872))(result, &v2);
    return *(&v3 + 1) + v3;
  }

  return result;
}

uint64_t AppleBCMWLANCore::dumpWmeCounters(AppleBCMWLANCore *this, char *a2, int a3, int a4)
{
  v20 = 0u;
  v21 = 0u;
  v8 = *(*(this + 9) + 11288);
  if (v8)
  {
    (*(*v8 + 872))(v8, &v20);
  }

  v9 = (*(*this + 1952))(this);
  v10 = IO80211Print(v9, 5, -1, 0, a2, a3, a4, "    per AC counters: Tx %llu %llu %llu %llu      Rx counters: %llu %llu %llu %llu \n", v20, *(&v20 + 1), v21, *(&v21 + 1), *(*(this + 9) + 10768), *(*(this + 9) + 10776), *(*(this + 9) + 10784), *(*(this + 9) + 10792));
  v20 = 0u;
  v21 = 0u;
  v11 = *(*(this + 9) + 11296);
  if (v11)
  {
    (*(*v11 + 872))(v11, &v20);
  }

  v12 = (*(*this + 1952))(this);
  v13 = IO80211Print(v12, 5, -1, 0, a2, a3 + v10, a4 - v10, "               AWDL: Tx %llu %llu %llu %llu      Rx: %llu %llu %llu %llu \n", v20, *(&v20 + 1), v21, *(&v21 + 1), *(*(this + 9) + 10800), *(*(this + 9) + 10808), *(*(this + 9) + 10816), *(*(this + 9) + 10824)) + v10;
  v20 = 0u;
  v21 = 0u;
  v14 = *(*(this + 9) + 29944);
  if (v14)
  {
    (*(*v14 + 872))(v14, &v20);
  }

  v15 = (*(*this + 1952))(this);
  v16 = IO80211Print(v15, 5, -1, 0, a2, a3 + v13, a4 - v13, "                NAN: Tx %llu %llu %llu %llu      Rx: %llu %llu %llu %llu \n", v20, *(&v20 + 1), v21, *(&v21 + 1), *(*(this + 9) + 10832), *(*(this + 9) + 10840), *(*(this + 9) + 10848), *(*(this + 9) + 10856));
  v20 = 0u;
  v21 = 0u;
  v17 = *(*(this + 9) + 29952);
  if (v17)
  {
    (*(*v17 + 872))(v17, &v20);
  }

  v18 = (*(*this + 1952))(this);
  return IO80211Print(v18, 5, -1, 0, a2, a3 + (v16 + v13), a4 - (v16 + v13), "                NDI: Tx %llu %llu %llu %llu      Rx: %llu %llu %llu %llu \n", v20, *(&v20 + 1), v21, *(&v21 + 1), *(*(this + 9) + 10864), *(*(this + 9) + 10872), *(*(this + 9) + 10880), *(*(this + 9) + 10888)) + v16 + v13;
}

uint64_t AppleBCMWLANCore::featureFlagIsBitSet(AppleBCMWLANCore *this, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 7;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  if ((v3 >> 3) >= 0x10)
  {
    AppleBCMWLANCore::featureFlagIsBitSet();
    return v11;
  }

  else
  {
    v4 = *(this + 9);
    v5 = *(v4 + 17832);
    if (v5)
    {
      v6 = v4 + 17840;
      v7 = v3 >> 3;
      IOLockLock(*(v4 + 17832));
      v8 = (*(v6 + v7) >> (v2 & 7)) & 1;
      IOLockUnlock(v5);
    }

    else
    {
      AppleBCMWLANCore::featureFlagIsBitSet();
      return v10;
    }
  }

  return v8;
}

uint64_t AppleBCMWLANCore::waitForDriverEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  clock_interval_to_deadline();
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::waitForDriverEvent(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, v4);
    }
  }

  v6 = (*(*a1 + 104))(a1);
  v7 = (*(*v6 + 80))(v6, *(a1 + 72) + 4 * v4 + 6472, 0xAAAAAAAAAAAAAAAALL);
  if (v7)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::waitForDriverEvent();
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::handleRxEventFrame(void *a1, unint64_t a2, const void *a3)
{
  v7 = a2;
  if (IO80211CagedBuffer::tryLock(*(a1[9] + 31048)))
  {
    IO80211CagedBuffer::copyIn(*(a1[9] + 31048), a3, a2);
    Buffer = IO80211CagedBuffer::getBuffer(*(a1[9] + 31048));
    AppleBCMWLANCore::handleEventPacket(a1, &v7);
    Buffer = a3;
    IO80211CagedBuffer::unlock(*(a1[9] + 31048));
    return 0;
  }

  else
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRxEventFrame();
      }
    }

    CCFaultReporter::reportFault(*(a1[9] + 5536), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x11DAu, "handleRxEventFrame", 0, -469793524, 0);
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::enableWorkQueueSources(AppleBCMWLANCore *this)
{
  v2 = *(*(this + 9) + 6232);
  if (v2)
  {
    (*(*v2 + 88))(v2);
  }

  if ((AppleBCMWLANCore::featureFlagIsBitSet(this, 84) & 1) != 0 || (AppleBCMWLANCore::featureFlagIsBitSet(this, 85) & 1) != 0 || AppleBCMWLANCore::featureFlagIsBitSet(this, 111))
  {
    v3 = *(*(this + 9) + 6248);
    if (v3)
    {
      (*(*v3 + 88))(v3);
      (*(**(*(this + 9) + 6248) + 56))(*(*(this + 9) + 6248), 3600000);
    }
  }

  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 79);
  v5 = *(this + 9);
  if (IsBitSet)
  {
    v6 = *(v5 + 6256);
    if (v6)
    {
      (*(*v6 + 88))(v6);
      v5 = *(this + 9);
    }

    if (*(v5 + 4480) == 1)
    {
      v7 = *(v5 + 6264);
      if (v7)
      {
        (*(*v7 + 88))(v7);
        v5 = *(this + 9);
      }

      v8 = *(v5 + 6272);
      if (v8)
      {
        (*(*v8 + 88))(v8);
        v5 = *(this + 9);
      }
    }
  }

  result = *(v5 + 11320);
  if (result)
  {
    v10 = *(*result + 88);

    return v10();
  }

  return result;
}

uint64_t AppleBCMWLANCore::disableWorkQueueSources(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 6232);
  if (v3)
  {
    (*(*v3 + 80))(v3);
    v2 = *(this + 9);
  }

  v4 = *(v2 + 6248);
  if (v4)
  {
    (*(*v4 + 80))(v4);
    v2 = *(this + 9);
  }

  v5 = *(v2 + 6256);
  if (v5)
  {
    (*(*v5 + 80))(v5);
    v2 = *(this + 9);
  }

  if (*(v2 + 4480) == 1)
  {
    v6 = *(v2 + 6264);
    if (v6)
    {
      (*(*v6 + 80))(v6);
      v2 = *(this + 9);
    }

    v7 = *(v2 + 6272);
    if (v7)
    {
      (*(*v7 + 80))(v7);
      v2 = *(this + 9);
    }
  }

  result = *(v2 + 11320);
  if (result)
  {
    v9 = *(*result + 80);

    return v9();
  }

  return result;
}

uint64_t AppleBCMWLANCore::driverKitChipBoot(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  canSkipVerification = AppleBCMWLANCore::canSkipVerification(this);
  if ((AppleBCMWLANCore::initAfterIORegUpdated(this, v4, v5, v6, v7, v8) & 1) == 0)
  {
    AppleBCMWLANCore::driverKitChipBoot();
    goto LABEL_20;
  }

  v9 = *(*(this + 9) + 5464);
  v16[0] = v2 + 2776;
  v16[1] = v2 + 3032;
  v16[2] = v2 + 3544;
  v16[3] = v2 + 3800;
  v16[4] = v2 + 3288;
  v16[5] = v2 + 4056;
  v17 = canSkipVerification;
  memset(v18, 170, sizeof(v18));
  if (AppleBCMWLANConfigManager::prepareImageMap(v9, v16))
  {
    AppleBCMWLANCore::driverKitChipBoot();
    goto LABEL_20;
  }

  if (AppleBCMWLANConfigManager::completeImageMap(*(*(this + 9) + 5464)))
  {
    AppleBCMWLANCore::driverKitChipBoot();
    goto LABEL_20;
  }

  ChipImage = AppleBCMWLANConfigManager::getChipImage(*(*(this + 9) + 5464));
  if (!ChipImage)
  {
    AppleBCMWLANCore::driverKitChipBoot();
    goto LABEL_20;
  }

  v11 = AppleBCMWLANCore::bootChipImage(this, ChipImage);
  v12 = *(*(this + 9) + 5392);
  if (!v12 || !(*(*v12 + 552))(v12))
  {
    if (!v11)
    {
      v13 = this;
      v14 = 1;
      goto LABEL_10;
    }

    AppleBCMWLANCore::driverKitChipBoot();
LABEL_20:
    v11 = LODWORD(v16[0]);
    goto LABEL_11;
  }

  v13 = this;
  v14 = 0;
LABEL_10:
  setPropertyHelper(v13, "FirmwareLoaded", v14);
LABEL_11:
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::driverKitChipBoot();
    }
  }

  return v11;
}

uint64_t AppleBCMWLANCore::canSkipVerification(AppleBCMWLANCore *this)
{
  v7 = 0;
  v6 = 0;
  isDevFusedOrCSRInternal = AppleBCMWLAN_isDevFusedOrCSRInternal();
  v3 = 0;
  if (isDevFusedOrCSRInternal)
  {
    IOParseBootArgNumber("wlan.factory", &v6, 4);
    IOParseBootArgNumber("ioimageloader.debug.csr-access", &v7, 1);
    v3 = v7 | v6;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v5 = (*(*this + 1952))(this);
      CCLogStream::logAlertIf(v5, 0x80uLL, "[dk] %s@%d: internal:%d, sip:%d, embedded:%d, wlan.factory[0x%08x], allow:%d, skipVerification:%d\n", "canSkipVerification", 5432, isDevFusedOrCSRInternal, 0, 0, v6, v7, v3 & 1);
    }
  }

  return v3 & 1;
}

uint64_t AppleBCMWLANCore::bootChipImage(AppleBCMWLANCore *this, const AppleBCMWLANChipImage *a2)
{
  v4 = this + 72;
  v5 = 3758097084;
  if (*(*(this + 9) + 35451) == 1 && *(*(this + 9) + 35452))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::bootChipImage();
      }
    }
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::bootChipImage();
      }
    }

    v6 = *(*v4 + 10376);
    if ((v6 & 0x2000) != 0)
    {
      return 3758097122;
    }

    else if ((v6 & 0x10) != 0)
    {
      return 3758097093;
    }

    else if ((v6 & 0x200000) != 0)
    {
      return *(*v4 + 10380);
    }

    else
    {
      (*(*a2 + 8))(a2);
      atomic_fetch_or((*v4 + 10376), 0x10u);
      v7 = *v4;
      v8 = *(*v4 + 1200);
      if (v8)
      {
        (*(*v8 + 16))(v8);
        v7 = *v4;
      }

      *(v7 + 1200) = a2;
      v23 = 0;
      AppleBCMWLANConfigManager::getBSSPreference(*(*v4 + 5464), &v23);
      v9 = *(*v4 + 10376);
      v10 = (v9 & 0x200000) == 0;
      if ((v9 & 0x200000) != 0)
      {
        v14 = (*v4 + 10376);
LABEL_30:
        atomic_fetch_and(v14, 0xFFFFFFEF);
        AppleBCMWLANCore::signalDriverReady(this);
      }

      else
      {
        v11 = 0;
        while (1)
        {
          AppleBCMWLANCore::halt(this);
          v12 = AppleBCMWLANCore::loadAndSetup(this, a2);
          v13 = *(this + 9);
          if (!v12)
          {
            break;
          }

          v5 = v12;
          CCFaultReporter::reportFault(*(v13 + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x15F0u, "bootChipImage", 0, -469790715, "instance %u", v11);
          v14 = (*v4 + 10376);
          v15 = (*(*v4 + 10378) & 0x20) != 0 || v11 >= 2;
          v10 = !v15;
          ++v11;
          if (v15)
          {
            goto LABEL_30;
          }
        }

        (*(**(v13 + 5392) + 176))(*(v13 + 5392));
        atomic_fetch_and((*(this + 9) + 10376), 0xFFFFFFEF);
        AppleBCMWLANCore::signalDriverReady(this);
        v17 = *(this + 9);
        v18 = *(v17 + 10376);
        if ((v18 & 0x80) == 0)
        {
          v24 = 0u;
          v25 = 0u;
          v38 = 0u;
          v37 = 0u;
          v36 = 0u;
          v35 = 0u;
          v34 = 0u;
          v33 = 0u;
          v32 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v23 = 0x2000000003;
          LODWORD(v24) = 1;
          DWORD2(v24) = -528340989;
          if (*(v17 + 11288))
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                v22 = (*(*this + 1952))(this);
                CCLogStream::logAlert(v22, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "bootChipImage", 5632, v24, DWORD2(v24), HIDWORD(v24), v25);
              }
            }

            IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x37u, &v23, 0xF8uLL, 1);
            v17 = *(this + 9);
            v19 = *(v17 + 5392);
            if (v19)
            {
              AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v19, 0, 8);
              v17 = *v4;
            }
          }

          v20 = *(v17 + 11296);
          if (v20)
          {
            IO80211Controller::postMessage(this, v20, 0x37u, &v23, 0xF8uLL, 1);
            v17 = *(this + 9);
          }

          v21 = *(v17 + 29944);
          if (v21)
          {
            IO80211Controller::postMessage(this, v21, 0x37u, &v23, 0xF8uLL, 1);
            v17 = *(this + 9);
          }

          v18 = *(v17 + 10376);
        }

        if ((v18 & 0x80) != 0)
        {
          v5 = 0;
        }

        else
        {
          AppleBCMWLANCore::resetInterfacesComplete(this);
          v5 = 0;
          *(*(this + 9) + 6748) = 88;
          *(*(this + 9) + 6749) = 90;
          *(*(this + 9) + 6750) = 0;
        }
      }

      *(*v4 + 18297) = 0;
      *(*v4 + 18414) = 0;
      if (v5 == -469793013 || (*(*v4 + 10378) & 0x20) != 0)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::bootChipImage();
          }
        }

        (*(*(*(*v4 + 5392) + 48) + 208))();
      }

      if (v10)
      {
        v5 = 0;
        ++*(*v4 + 35452);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::driverKitProcessPlatformConfig(uint64_t this)
{
  strcpy(__s, "PlatformConfig/iOS/");
  v2 = strlen(__s);
  v3 = v2 + strlen((*(this + 72) + 2520));
  v28 = 0;
  anObject = 0;
  canSkipVerification = AppleBCMWLANCore::canSkipVerification(this);
  v5 = canSkipVerification;
  v6 = OSBundle::mainBundle(canSkipVerification);
  if (!v6)
  {
    AppleBCMWLANCore::driverKitProcessPlatformConfig();
LABEL_39:
    v8 = v32;
    goto LABEL_40;
  }

  v7 = IOMallocZeroData();
  if (!v7)
  {
    AppleBCMWLANCore::driverKitProcessPlatformConfig();
    goto LABEL_39;
  }

  v8 = v7;
  bzero(v7, v3 + 1);
  memcpy(v8, __s, v2);
  v9 = *(this + 72);
  v10 = strlen((v9 + 2520));
  memcpy(&v8[v2], (v9 + 2520), v10);
  OSBundle::loadResource(v6, v8, 0, 10 * IOVMPageSize, &anObject);
  if (!anObject)
  {
    AppleBCMWLANCore::driverKitProcessPlatformConfig();
LABEL_40:
    v25 = 0;
    goto LABEL_24;
  }

  v11 = OSMappedFile::size(anObject);
  io80211_os_log("PlatformConfig resource: size[%zu] '%s'\n", v11, v8);
  v12 = OSDictionary::withCapacity(1u);
  if (!v12)
  {
    AppleBCMWLANCore::driverKitProcessPlatformConfig();
    goto LABEL_39;
  }

  v13 = v12;
  v14 = OSString::withCStringNoCopy(v8);
  if (v14)
  {
    v15 = v14;
    OSDictionary::setObject(v13, v14, anObject);
    v16 = IOFileValidationRequestImageVerify();
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::driverKitProcessPlatformConfig(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v5, v16);
      }
    }

    if (v16)
    {
      v17 = v5;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      OSMappedFile::size(anObject);
      v18 = IOMallocZeroData();
      if (v18)
      {
        v19 = v18;
        v20 = OSMappedFile::data(anObject);
        v21 = OSMappedFile::size(anObject);
        memcpy(v19, v20, v21);
        v22 = OSUnserializeXML(v19, &v28);
        if (v22)
        {
          v23 = v22;
          v24 = OSMetaClassBase::safeMetaCast(v22, gOSDictionaryMetaClass);
          if (v24)
          {
            AppleBCMWLANCore::setPlatformConfigProperties(this, v24);
            v25 = 1;
LABEL_17:
            (v15->release)(v15);
            goto LABEL_18;
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::driverKitProcessPlatformConfig();
            }
          }

LABEL_51:
          v25 = 0;
          goto LABEL_17;
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::driverKitProcessPlatformConfig();
          }
        }

LABEL_50:
        v23 = 0;
        goto LABEL_51;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::driverKitProcessPlatformConfig();
        }
      }
    }

    else
    {
      AppleBCMWLANCore::driverKitProcessPlatformConfig();
    }

    v19 = 0;
    goto LABEL_50;
  }

  AppleBCMWLANCore::driverKitProcessPlatformConfig(this, &v30, &v32, &v31);
  v19 = v30;
  v23 = v32;
  v25 = v31;
LABEL_18:
  (v13->release)(v13);
  if (v28)
  {
    (v28->release)(v28);
    v28 = 0;
  }

  if (v23)
  {
    (v23->release)(v23);
  }

  v26 = anObject;
  if (v19)
  {
    OSMappedFile::size(anObject);
    IOFreeData();
LABEL_24:
    v26 = anObject;
  }

  if (v26)
  {
    (v26->release)(v26);
    anObject = 0;
  }

  if (v8)
  {
    IOFreeData();
  }

  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::driverKitProcessPlatformConfig();
    }
  }

  return v25;
}

uint64_t AppleBCMWLANCore::setPlatformConfigProperties(AppleBCMWLANCore *this, OSDictionary *a2)
{
  v2 = *(*(this + 9) + 5392);
  if (!v2)
  {
    AppleBCMWLANCore::setPlatformConfigProperties();
    return v5;
  }

  if (!(*(*(v2 + 48) + 288))())
  {
    AppleBCMWLANCore::setPlatformConfigProperties();
    return v5;
  }

  if (!a2)
  {
    AppleBCMWLANCore::setPlatformConfigProperties();
    return v5;
  }

  if (!OSMetaClassBase::safeMetaCast(a2, gOSDictionaryMetaClass))
  {
    AppleBCMWLANCore::setPlatformConfigProperties();
    return v5;
  }

  iterateObjectsHelper();
  return 0;
}

uint64_t AppleBCMWLANCore::logChipImage(void *this, const AppleBCMWLANChipImage *a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::logChipImage();
    }
  }

  v4 = *(this[9] + 5400);
  v5 = *(*a2 + 152);

  return v5(a2, v4, AppleBCMWLANProvisioningManager::logNVRAM, 0);
}

AppleBCMWLANLQM *AppleBCMWLANCore::halt(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::halt();
    }
  }

  AppleBCMWLANCore::resetWoWStateMachine(this);
  v2 = *(*(this + 9) + 5496);
  if (v2)
  {
    AppleBCMWLANBGScanAdapter::cancelScanPrivacyMacTimer(v2);
  }

  AppleBCMWLANCore::disableWorkQueueSources(this);
  v3 = *(*(this + 9) + 5408);
  if (v3)
  {
    AppleBCMWLANCommander::delayQueueTimeouts(v3, 20000);
    v3 = *(*(this + 9) + 5408);
  }

  AppleBCMWLANCommander::quiesce(v3);
  (*(*(*(*(this + 9) + 5392) + 48) + 240))();
  AppleBCMWLANCore::resetInterfacesBegin(this);
  v4 = *(this + 9);
  v5 = *(v4 + 11288);
  if (v5)
  {
    AppleBCMWLANSkywalkInterface::reset(v5);
    v4 = *(this + 9);
  }

  v6 = *(v4 + 11304);
  if (v6)
  {
    (*(*v6 + 1584))(v6);
    v4 = *(this + 9);
  }

  v7 = *(v4 + 11296);
  if (v7)
  {
    (*(*v7 + 1584))(v7);
    v4 = *(this + 9);
  }

  v8 = *(v4 + 29944);
  if (v8)
  {
    (*(*v8 + 1584))(v8);
    v4 = *(this + 9);
  }

  v9 = *(v4 + 29952);
  if (v9)
  {
    (*(*v9 + 1584))(v9);
    v4 = *(this + 9);
  }

  v10 = *(v4 + 5416);
  if (v10)
  {
    AppleBCMWLANJoinAdapter::reset(v10);
    v4 = *(this + 9);
  }

  v11 = *(v4 + 5568);
  if (v11)
  {
    AppleBCMWLANRoamAdapter::reset(v11);
    v4 = *(this + 9);
  }

  *v4 = 100;
  *(*(this + 9) + 4) = 100;
  atomic_fetch_and((*(this + 9) + 10376), 0xEFFFFFFF);
  result = *(*(this + 9) + 5608);
  if (result)
  {

    return AppleBCMWLANLQM::stopAssocTimer(result);
  }

  return result;
}

uint64_t AppleBCMWLANCore::loadAndSetup(IO80211Controller *this, const AppleBCMWLANChipImage *a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::loadAndSetup();
    }
  }

  v4 = (this + 72);
  if ((*(*(this + 9) + 10377) & 0x20) != 0)
  {
    return 3758097122;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::loadAndSetup();
    }
  }

  v5 = *(*v4 + 5392);
  if (v5)
  {
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v5, 0, 6);
  }

  if (IO80211Controller::getDeadlockPolice(this))
  {
    if ((*(*this + 88))(this))
    {
      v6 = (*(*this + 88))(this);
      if ((*(*v6 + 168))(v6))
      {
        DeadlockPolice = IO80211Controller::getDeadlockPolice(this);
        v8 = (*(*this + 88))(this);
        v9 = (*(*v8 + 168))(v8);
        IO80211DeadlockPolice::resetDeadlockPolice(DeadlockPolice, v9);
      }
    }
  }

  v10 = (*(*(*(*(this + 9) + 5392) + 48) + 72))();
  if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::loadAndSetup();
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else if (!v10)
  {
LABEL_17:
    if (((*(*(*(*v4 + 5392) + 48) + 416))() & 1) == 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::loadAndSetup();
        }
      }
    }
  }

  v11 = *(*v4 + 5392);
  if (v11)
  {
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v11, 0, 7);
  }

  if (v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup();
      }
    }

    v12 = *(*v4 + 5392);
    if (v12 && (*(*v12 + 552))(v12))
    {
      AppleBCMWLANCore::setBootUnrecoverable(this, 3825175655);
      v13 = this;
      v14 = 12;
      v15 = 5706;
    }

    else
    {
      v13 = this;
      v14 = 5;
      v15 = 5708;
    }

LABEL_54:
    AppleBCMWLANCore::reportInitFailure(v13, v14, v15);
    return v10;
  }

  atomic_fetch_and((*v4 + 10376), 0xFFFFFFBF);
  if (AppleBCMWLANCommander::reset(*(*v4 + 5408)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup();
      }
    }
  }

  if (*(*v4 + 35568))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup();
      }
    }
  }

  else
  {
    AppleBCMWLANCommander::resetFreeCommanderPool(*(*v4 + 5408));
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::loadAndSetup();
    }
  }

  AppleBCMWLANCommander::wakeup(*(*(this + 9) + 5408));
  v16 = AppleBCMWLANCore::setupFirmware(this, a2);
  if (v16)
  {
    v10 = v16;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup();
      }
    }

    v13 = this;
    v14 = 6;
    v15 = 5731;
    goto LABEL_54;
  }

  v10 = AppleBCMWLANCore::setupDriver(this);
  if (v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup();
      }
    }

    v13 = this;
    v14 = 7;
    v15 = 5738;
    goto LABEL_54;
  }

  return v10;
}

uint64_t AppleBCMWLANCore::resetInterfacesComplete(AppleBCMWLANCore *this)
{
  v9 = 1;
  v2 = *(this + 9);
  v3 = v2[1411];
  if (v3)
  {
    IO80211Controller::postMessage(this, v3, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v4 = v2[1412];
  if (v4)
  {
    IO80211Controller::postMessage(this, v4, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v5 = v2[3743];
  if (v5)
  {
    IO80211Controller::postMessage(this, v5, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v6 = v2[3744];
  if (v6)
  {
    IO80211Controller::postMessage(this, v6, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v7 = v2[1413];
  if (v7)
  {
    IO80211Controller::postMessage(this, v7, 0x31u, &v9, 4uLL, 1);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setBootUnrecoverable(IOService *this, uint64_t a2)
{
  atomic_fetch_or(&this[1].OSObject::OSObjectInterface::__vftable[648].free, 0x200000u);
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[648].free) = a2;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setBootUnrecoverable();
    }
  }

  v4 = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, a2);
  setPropertyHelper(this, "Chip Boot Unrecoverable", v4);
  AppleBCMWLANCore::removeFirmwareLoader(this);
  v5 = *(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 808);

  return v5();
}

uint64_t AppleBCMWLANCore::setupFirmware(IOService *this, const AppleBCMWLANChipImage *a2)
{
  v105 = 0;
  v106 = 0;
  v4 = &this[1].OSObjectInterface;
  this[1].OSObject::OSObjectInterface::__vftable[407].free = mach_continuous_time();
  v4->__vftable[408].init = 0;
  v5 = v4->__vftable;
  *(&v5[335].free + 3) = 0u;
  *(&v5[305] + 1) = 0u;
  *(&v5[306] + 1) = 0u;
  *(&v5[307] + 1) = 0u;
  *(&v5[308] + 1) = 0u;
  *(&v5[309] + 1) = 0u;
  *(&v5[310] + 1) = 0u;
  *(&v5[311] + 1) = 0u;
  *(&v5[312] + 1) = 0u;
  *(&v5[313] + 1) = 0u;
  *(&v5[314] + 1) = 0u;
  *(&v5[315] + 1) = 0u;
  *(&v5[316] + 1) = 0u;
  *(&v5[317] + 1) = 0u;
  *(&v5[318] + 1) = 0u;
  *(&v5[319] + 1) = 0u;
  *(&v5[320] + 1) = 0u;
  *(&v5[321] + 1) = 0u;
  *(&v5[322] + 1) = 0u;
  *(&v5[323] + 1) = 0u;
  *(&v5[324] + 1) = 0u;
  *(&v5[325] + 1) = 0u;
  *(&v5[326] + 1) = 0u;
  *(&v5[327] + 1) = 0u;
  *(&v5[328] + 1) = 0u;
  *(&v5[329] + 1) = 0u;
  *(&v5[330] + 1) = 0u;
  *(&v5[331] + 1) = 0u;
  *(&v5[332] + 1) = 0u;
  *(&v5[333] + 1) = 0u;
  *(&v5[334] + 1) = 0u;
  *(&v5[335] + 1) = 0u;
  AppleBCMWLANCore::enableWorkQueueSources(this);
  v6 = IOMallocZeroData();
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v104 = -1431655766;
  *v6 = 0;
  v107 = v6;
  v108 = 0x10000000101;
  v8 = AppleBCMWLANCommander::runIOVarGet(this[1].OSObject::OSObjectInterface::__vftable[338].init, "ver", &kNoTxPayload, &v107, 0);
  v9 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v8)
  {
    if (v9)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

LABEL_6:
    IOFreeData();
    return v8;
  }

  if (v9)
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware();
    }
  }

  v10 = &v7[strlen(v7)];
  if (*(v10 - 1) == 10)
  {
    *(v10 - 1) = 0;
  }

  v11 = OSString::withCString(v7);
  setPropertyHelper(this, "FirmwareVersion", v11);
  if (v11)
  {
    (v11->release)(v11);
  }

  v12 = strnstr(v7, "WLTEST", 0x101uLL) || strnstr(v7, "MFGTEST", 0x101uLL) || (*(*a2 + 136))(a2) == 1;
  IOFreeData();
  HIBYTE(v4->__vftable[67].free) = v12;
  p_ListenInterval = 0;
  v103 = 0;
  v107 = &p_ListenInterval;
  v108 = 0x1000100010;
  v13 = AppleBCMWLANCommander::runIOVarGet(v4->__vftable[338].init, "wlc_ver", &kNoTxPayload, &v107, 0);
  if (v13)
  {
    v8 = v13;
    if (v13 != -469794537)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }

      return v8;
    }

    HIDWORD(v4->__vftable[48].free) = 3;
  }

  else
  {
    HIDWORD(v4->__vftable[48].free) = WORD2(v103);
    if (HIDWORD(v4->__vftable[48].free) >= 0x16)
    {
      v8 = 3825174297;
      CCFaultReporter::reportFault(v4->__vftable[346].init, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x2088u, "setupFirmware", 0, -469792999, 0);
      return v8;
    }
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware();
    }
  }

  MaxSupportedEventLogSets = AppleBCMWLANCore::getMaxSupportedEventLogSets(this);
  if (MaxSupportedEventLogSets)
  {
    v8 = MaxSupportedEventLogSets;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  v15 = AppleBCMWLANCore::setupTraceLogCheckers(this);
  if (v15)
  {
    v8 = v15;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  if (!v12 || (*(*a2 + 96))(a2))
  {
    v16 = (*(*a2 + 152))(a2, this, AppleBCMWLANCore::outputRegTable, 0);
    if (v16)
    {
      v8 = v16;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }

      init = this[1].OSObject::OSObjectInterface::__vftable[346].init;
      v97 = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, v8);
      CCFaultReporter::reportFault(init, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x20C6u, "setupFirmware", 0, -469792998, "%s", v97);
      return v8;
    }

    if (!v12)
    {
      goto LABEL_430;
    }
  }

  if ((*(*a2 + 112))(a2))
  {
LABEL_430:
    v18 = (*(*a2 + 152))(a2, this, AppleBCMWLANCore::outputTxCapTable, 0);
    if (v18)
    {
      v8 = v18;
      v19 = this[1].OSObject::OSObjectInterface::__vftable[346].init;
      v20 = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, v18);
      CCFaultReporter::reportFault(v19, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x20D0u, "setupFirmware", 0, -469792997, "%s", v20);
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }

      return v8;
    }
  }

  v21 = (*(*v4->__vftable[337].init + 368))(v4->__vftable[337].init);
  if ((v21 == 4399 || v21 == 4388) && (!v12 || (*(*a2 + 128))(a2)))
  {
    v22 = (*(*a2 + 152))(a2, this, AppleBCMWLANCore::outputPlatcfg, 0);
    if (v22)
    {
      v8 = v22;
      v23 = this[1].OSObject::OSObjectInterface::__vftable[346].init;
      v24 = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, v22);
      CCFaultReporter::reportFault(v23, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x20DBu, "setupFirmware", 0, -469792990, "%s", v24);
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }

      return v8;
    }
  }

  v25 = AppleBCMWLANCore::outputWiFiCal(this);
  if (v25)
  {
    v8 = v25;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  v26 = AppleBCMWLANTimeKeeper::synchronizeTime(v4->__vftable[341].init);
  if (v26 != -536870201)
  {
    v8 = v26;
    if (v26)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }

      return v8;
    }
  }

  updated = AppleBCMWLANCore::updateFWAPIVerFromHW(this);
  if (updated)
  {
    v8 = updated;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  v28 = v4->__vftable;
  v29 = v4->__vftable[1109].init;
  if (v29)
  {
    (*(*v29 + 16))(v29);
    v4->__vftable[1109].init = 0;
    v28 = v4->__vftable;
  }

  v4->__vftable[1109].init = AppleBCMWLANChanSpec::withFWAPIVer(HIDWORD(v28[63].free));
  if (!v4->__vftable[1109].init)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return 3758097086;
  }

  if (v12)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 160))(this[1].OSObject::OSObjectInterface::__vftable[337].init, 9216);
    AppleBCMWLANCore::processChipCaps(this);
    AppleBCMWLANCore::configureDefaultEvents(this);
    return 0;
  }

  BYTE5(v4->__vftable[64].init) = 0;
  v30 = AppleBCMWLANCore::processChipCaps(this);
  if (v30)
  {
    v8 = v30;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  AppleBCMWLANCore::configureRegionSpecific(this);
  v104 = 0;
  v31 = AppleBCMWLANCore::set_mpc_state(this, 0, &v104);
  if (v31)
  {
    v8 = v31;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport(this);
  AppleBCMWLANCore::configureTethering(this);
  LODWORD(p_ListenInterval) = 1;
  v105 = &p_ListenInterval;
  v106 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(this[1].OSObject::OSObjectInterface::__vftable[338].init, "pm2_refresh_badiv", &v105, 0, 0))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }
  }

  AppleBCMWLANCore::configureDualPowerMode(this);
  v32 = AppleBCMWLANCore::populateCountryList(this);
  if (v32)
  {
    v8 = v32;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  v33 = v4->__vftable;
  if (HIDWORD(v4->__vftable[48].free) >= 0x11)
  {
    v34 = AppleBCMWLANCore::populate6ESupportedCountryList(this);
    if (v34)
    {
      v8 = v34;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }

      return v8;
    }

    v33 = v4->__vftable;
  }

  BYTE3(v33[421].init) = 0;
  if (LOBYTE(v4->__vftable[421].init))
  {
    BYTE4(v4->__vftable[422].init) = 1;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    bzero(&this[1].OSObject::OSObjectInterface::__vftable[1244], 0x2720uLL);
    (this->OSObject::OSMetaClassBase::__vftable[9].free)(this);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    v35 = AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(this);
    v36 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (v35)
    {
      if (v36)
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }

    else if (v36)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    goto LABEL_137;
  }

  BYTE4(v4->__vftable[422].init) = 0;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware();
    }
  }

  v8 = AppleBCMWLANCore::configureDefaultCountryCode(this);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::setupFirmware();
    if (v8)
    {
      goto LABEL_123;
    }
  }

  else if (v8)
  {
LABEL_123:
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  v37 = AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(this);
  v38 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v37)
  {
    if (v38)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }
  }

  else if (v38)
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware();
    }
  }

LABEL_137:
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 28))
  {
    LODWORD(p_ListenInterval) = 1;
    v105 = &p_ListenInterval;
    v106 = 4;
    v39 = AppleBCMWLANCommander::runIOVarSet(v4->__vftable[338].init, "scan_force_active", &v105, 0, 0);
    if (v39)
    {
      v8 = v39;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }

      return v8;
    }
  }

  v101 = 0;
  IOParseBootArgNumber("wlan.11d.ignore", &v101, 4);
  if ((AppleBCMWLANConfigManager::isIgnore11dPwrCtrl(v4->__vftable[341].free) & 1) != 0 || (v8 = 0, v101))
  {
    if ((AppleBCMWLANConfigManager::isIgnore11dPwrCtrl(v4->__vftable[341].free) & 1) == 0)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }

    LODWORD(p_ListenInterval) = 1;
    v105 = &p_ListenInterval;
    v106 = 4;
    v40 = AppleBCMWLANCommander::runIOVarSet(v4->__vftable[338].init, "tpc_options", &v105, 0, 0);
    v41 = v40;
    if (v40 != -469794537 && v40)
    {
      v8 = v40;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), v8 = v41, CCLogStream::shouldLog()))
      {
        AppleBCMWLANCore::setupFirmware();
        v8 = v41;
        if (!v41)
        {
          goto LABEL_159;
        }
      }

      else if (!v41)
      {
        goto LABEL_159;
      }
    }

    else
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }

      v8 = 0;
      if (!v41)
      {
        goto LABEL_159;
      }
    }

    if (v41 != -469794537)
    {
      return v8;
    }
  }

LABEL_159:
  LODWORD(p_ListenInterval) = 0;
  v105 = &p_ListenInterval;
  v106 = 4;
  v42 = AppleBCMWLANCommander::runIOVarSet(v4->__vftable[338].init, "vlan_mode", &v105, 0, 0);
  v43 = v42;
  if (v42 != -469794537 && v42 && (v8 = v42, (this->OSObject::OSMetaClassBase::__vftable[34].free)(this)) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), v8 = v43, CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::setupFirmware();
    v8 = v43;
    if (!v43)
    {
      goto LABEL_165;
    }
  }

  else if (!v43)
  {
    goto LABEL_165;
  }

  if (v43 != -469794537)
  {
    return v8;
  }

LABEL_165:
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 78))
  {
    HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1154].free) = 0;
    IOParseBootArgNumber("wlan.txprofile.disable", &this[1].OSObject::OSObjectInterface::__vftable[1154].free, 4);
    LODWORD(p_ListenInterval) = LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1154].free) == 0;
    v44 = (this->OSObject::OSMetaClassBase::__vftable[1].free)(this);
    (*(*v44 + 56))(v44, AppleBCMWLANCore::setTxProfileEnable, &p_ListenInterval, 0, 0, 0);
  }

  v100 = 0;
  if (IOParseBootArgNumber("wlan.roam_td_th", &v100, 4))
  {
    v45 = v100;
    LODWORD(v4->__vftable[1947].init) = HIBYTE(v100);
    HIDWORD(v4->__vftable[1947].init) = -BYTE2(v45);
    LODWORD(v4->__vftable[1947].free) = 1000 * BYTE1(v45);
    v46 = 1000 * v45;
  }

  else
  {
    LODWORD(v4->__vftable[1947].init) = 5;
    HIDWORD(v4->__vftable[1947].init) = -80;
    LODWORD(v4->__vftable[1947].free) = 70000;
    v46 = 10000;
  }

  HIDWORD(v4->__vftable[1947].free) = v46;
  v99 = 0;
  if (IOParseBootArgNumber("wlan.rts_prot_en", &v99, 4))
  {
    v47 = v99;
    LODWORD(v4->__vftable[1948].free) = HIBYTE(v99);
    LODWORD(v4->__vftable[1948].init) = BYTE2(v47);
    v47 = v47;
  }

  else
  {
    LODWORD(v4->__vftable[1948].free) = 0;
    LODWORD(v4->__vftable[1948].init) = 99;
    v47 = 25;
  }

  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1948].init) = v47;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
  {
    IOParseBootArgNumber("wlan.lpscancore.disable", &this[1].OSObject::OSObjectInterface::__vftable[1155], 4);
    BYTE4(this[1].OSObject::OSObjectInterface::__vftable[1155].init) = LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1155].init) != 0;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 67))
  {
    IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 67);
    v49 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!IsBitSet || (BYTE4(v49[1112].free) & 1) != 0)
    {
      ListenInterval = 0;
      v50 = v49[338].init;
      p_ListenInterval = &ListenInterval;
      v103 = 4;
      if (AppleBCMWLANCommander::runIOVarSet(v50, "he", &p_ListenInterval, 0, 0))
      {
        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setupFirmware();
          }
        }
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 101))
  {
    BYTE4(this[1].OSObject::OSObjectInterface::__vftable[1948].free) = 2;
    AppleBCMWLANCore::enableObssMitigation(this, BYTE4(this[1].OSObject::OSObjectInterface::__vftable[1948].free));
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 105) && AppleBCMWLANCore::featureFlagIsBitSet(this, 106))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    LOWORD(p_ListenInterval) = 0;
    LOWORD(ListenInterval) = 0;
    if ((*(*v4->__vftable[337].init + 368))(v4->__vftable[337].init) >= 0x112F)
    {
      LOWORD(p_ListenInterval) = 1;
      LOWORD(ListenInterval) = ListenInterval | 2;
    }

    if (AppleBCMWLANJoinAdapter::setBeaconProtectionParams(v4->__vftable[338].free, "WL_BCN_PROT_CMD_ENABLE", 1, &p_ListenInterval, 2u, 1))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }

    if (AppleBCMWLANJoinAdapter::setBeaconProtectionParams(v4->__vftable[338].free, "WL_BCN_PROT_CMD_CONFIG", 4, &ListenInterval, 2u, 1))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware();
    }
  }

  v51 = AppleBCMWLANCore::bringupBCM(this);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::setupFirmware();
    if (v51)
    {
LABEL_207:
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }

      return v51;
    }
  }

  else if (v51)
  {
    goto LABEL_207;
  }

  ListenInterval = 1;
  v52 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v103 = 4;
  v53 = AppleBCMWLANCommander::runIOVarSet(v52, "bus:h2dindx_w_d2hdma", &p_ListenInterval, 0, 0);
  if (v53 != -469794537)
  {
    if (v53)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }
  }

  ListenInterval = 1;
  v54 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v103 = 4;
  v55 = AppleBCMWLANCommander::runIOVarSet(v54, "bus:fl_prio_map", &p_ListenInterval, 0, 0);
  v56 = v55;
  if (v55 != -469794537 && v55 && (v8 = v55, (this->OSObject::OSMetaClassBase::__vftable[34].free)(this)) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), v8 = v56, CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::setupFirmware();
    v8 = v56;
    if (!v56)
    {
      goto LABEL_223;
    }
  }

  else if (!v56)
  {
    goto LABEL_223;
  }

  if (v56 != -469794537)
  {
    return v8;
  }

LABEL_223:
  (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 536))(this[1].OSObject::OSObjectInterface::__vftable[337].init);
  v57 = AppleBCMWLANCore::configureDefaultEvents(this);
  if (v57)
  {
    v8 = v57;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  AppleBCMWLANCore::configureScans(this);
  AppleBCMWLANCore::configureLinkLoss(this);
  v58 = this[1].OSObject::OSObjectInterface::__vftable;
  if ((HIBYTE(v58[67].free) & 1) == 0)
  {
    free = v58[350].free;
    StatsTimerIntervalMS = AppleBCMWLANLQM::getStatsTimerIntervalMS(free);
    AppleBCMWLANLQM::setStatsTimerIntervalMS(free, StatsTimerIntervalMS);
    v58 = v4->__vftable;
  }

  AppleBCMWLANBGScanAdapter::enablePrivateMACForScans(v58[343].free);
  AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v4->__vftable[343].free);
  if (HIDWORD(v4->__vftable[48].free) <= 0x10 && AppleBCMWLANCore::featureFlagIsBitSet(this, 48) && (BYTE4(v4->__vftable[1112].free) & 2) == 0)
  {
    AppleBCMWLANConfigManager::configureRangingParams(v4->__vftable[341].free);
  }

  v61 = AppleBCMWLANCore::configurePowerSave(this);
  if (v61)
  {
    v8 = v61;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  AppleBCMWLANCore::configureRoam(this);
  v62 = AppleBCMWLANCore::configureSecurityParams(this);
  if (v62)
  {
    v8 = v62;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  if ((AppleBCMWLANConfigManager::wompEnabled(v4->__vftable[341].free) & 1) == 0)
  {
    ListenInterval = 1;
    v63 = v4->__vftable[338].init;
    p_ListenInterval = &ListenInterval;
    v103 = 4;
    if (AppleBCMWLANCommander::runIOVarSet(v63, "pkt_filter_mode", &p_ListenInterval, 0, 0))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }
  }

  v64 = AppleBCMWLANConfigManager::setupBeaconOffload(v4->__vftable[341].free, 0, 0, LOBYTE(v4->__vftable[13].init), 1);
  if (v64 != -469794537)
  {
    if (v64)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }
  }

  ListenInterval = AppleBCMWLANConfigManager::getListenInterval(v4->__vftable[341].free);
  v65 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v103 = 4;
  v66 = AppleBCMWLANCommander::runIOVarSet(v65, "assoc_listen", &p_ListenInterval, 0, 0);
  if (v66 != -469794537)
  {
    v67 = v66;
    if (v66)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &ListenInterval, v67);
        }
      }
    }
  }

  ListenInterval = 5;
  v68 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v103 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v68, "assoc_retry_max", &p_ListenInterval, 0, 0))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }
  }

  ListenInterval = 1;
  v69 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v103 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v69, "intol40", &p_ListenInterval, 0, 0))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }
  }

  AppleBCMWLANCore::configureDefaultAvgRssiParameters(this);
  AppleBCMWLANCore::configureHS20IE(this);
  v70 = AppleBCMWLANConfigManager::setupFirmwareWithDTDefaults(this[1].OSObject::OSObjectInterface::__vftable[341].free);
  if (v70)
  {
    v8 = v70;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  v71 = AppleBCMWLANCore::configureEarlyBeaconDetect(this);
  if (v71)
  {
    v8 = v71;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return v8;
  }

  if (AppleBCMWLANPowerManager::configureTVPM(v4->__vftable[345].init))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }
  }

  if (AppleBCMWLANTxPowerManager::configureDynSAR(v4->__vftable[345].free))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }
  }

  if (AppleBCMWLANConfigManager::isStaticTxSDBEnabled(v4->__vftable[341].free))
  {
    if (AppleBCMWLANTxPowerManager::txSDBEnable(v4->__vftable[345].free, 1))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }
  }

  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[886].init) = 0;
  LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[48].free) = 0;
  BYTE1(this[1].OSObject::OSObjectInterface::__vftable[48].free) = 0;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[594].init) = 1;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[887].free) = 0;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[419].init) = 0;
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[419].init) = 0;
  AppleBCMWLANCore::configureTrgDisc(this);
  AppleBCMWLANPowerManager::configureMIMOPowerSaveConfiguration(this[1].OSObject::OSObjectInterface::__vftable[345].init);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware();
    }
  }

  AppleBCMWLANPowerManager::configureOCLParams(v4->__vftable[345].init);
  v72 = v4->__vftable;
  if (BYTE4(v4->__vftable[552].init) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LOBYTE(v72[553].init) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LOBYTE(v72[555].init) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LOBYTE(v72[555].free) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wlanrxpri_threshold(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (BYTE2(v72[556].init) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LOBYTE(v72[556].free) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsRxPrioTimer(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (v72[557].init)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsPwrLimitTimer(this, 0, 1);
  }

  v73 = 8914;
  v74 = 10;
  do
  {
    if (*(&v4->init + v73))
    {
      (this->OSObject::OSMetaClassBase::__vftable[29].isEqualTo)(this, v4->__vftable + v73);
    }

    v73 += 56;
    --v74;
  }

  while (v74);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 43))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    v75 = v4->__vftable[2249].init;
    v76 = 50000;
    v77 = 15000;
  }

  else
  {
    v75 = v4->__vftable[2249].init;
    v76 = 0xFFFF;
    v77 = 30000;
  }

  AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(v75, v76, v77);
  AppleBCMWLANConfigManager::querySDBPolicies(v4->__vftable[341].free);
  v78 = v4->__vftable[345].init;
  if (v78)
  {
    AppleBCMWLANPowerManager::setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap(v78, 0, 1);
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware();
    }
  }

  if (AppleBCMWLANConfigManager::isTxFailEventSupported(v4->__vftable[341].free))
  {
    AppleBCMWLANCore::configureTxFailEventThreshold(this, 1);
  }

  if (AppleBCMWLANConfigManager::isVOBlockAck(v4->__vftable[341].free))
  {
    LOWORD(ListenInterval) = 262;
    v79 = v4->__vftable[338].init;
    p_ListenInterval = &ListenInterval;
    v103 = 2;
    if (AppleBCMWLANCommander::runIOVarSet(v79, "ampdu_tid", &p_ListenInterval, 0, 0))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }

    LOWORD(ListenInterval) = 263;
    v80 = v4->__vftable[338].init;
    p_ListenInterval = &ListenInterval;
    v103 = 2;
    if (AppleBCMWLANCommander::runIOVarSet(v80, "ampdu_tid", &p_ListenInterval, 0, 0))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }
  }

  if ((AppleBCMWLANConfigManager::isEBTSupportedInDriver(v4->__vftable[341].free) & 1) == 0 && AppleBCMWLANCore::featureFlagIsBitSet(this, 57))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    AppleBCMWLANPowerManager::configureEarlyBeaconTermination(v4->__vftable[345].init, 0);
  }

  isDigitalNapSupportedInDriver = AppleBCMWLANConfigManager::isDigitalNapSupportedInDriver(v4->__vftable[341].free);
  v82 = v4->__vftable;
  if ((isDigitalNapSupportedInDriver & 1) == 0 && BYTE1(v82[648].init) == 1)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    AppleBCMWLANPowerManager::configureDigitalNapPowerSave(v4->__vftable[345].init, 0);
    v82 = v4->__vftable;
  }

  if ((AppleBCMWLANConfigManager::isOPSSupportedInDriver(v82[341].free) & 1) == 0 && AppleBCMWLANCore::featureFlagIsBitSet(this, 56))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    AppleBCMWLANPowerManager::configureOpportunisticPowerSave(v4->__vftable[345].init, 0);
  }

  if (AppleBCMWLANConfigManager::isGPIOTxEnvelopeIndEnabled(v4->__vftable[341].free))
  {
    BYTE4(this[1].OSObject::OSObjectInterface::__vftable[657].free) = 3;
    (this->OSObject::OSMetaClassBase::__vftable[27].getMetaClass)(this, 0);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 82))
  {
    AppleBCMWLANNetAdapter::setBeaconMuteMitigationVersion(v4->__vftable[350].init);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 87))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    if (AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(v4->__vftable[341].free, 0))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }
  }

  AppleBCMWLANJoinAdapter::configureDefaultUnAssocDwell(this[1].OSObject::OSObjectInterface::__vftable[338].free);
  AppleBCMWLANCore::configureECounters(this);
  if (BYTE4(this[1].OSObject::OSObjectInterface::__vftable[59].free) == 1)
  {
    AppleBCMWLANCore::configureEventLogOneReportedStats(this);
  }

  AppleBCMWLANCore::configureEventLogSixReportedStats(this);
  AppleBCMWLANCore::configureEventLogSevenReportedStats(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 80) && LODWORD(v4->__vftable[68].init))
  {
    v83 = (this->OSObject::OSMetaClassBase::__vftable[1].free)(this);
    (*(*v83 + 56))(v83, AppleBCMWLANCore::setLteCoexLBTMode, 0, 0, 0, 0);
  }

  v84 = IOMallocZeroData();
  if (!v84)
  {
    return 3758097085;
  }

  *v84 = 0;
  v107 = v84;
  v108 = 0x10000000101;
  v85 = AppleBCMWLANCommander::runIOVarGet(v4->__vftable[338].init, "ver", &kNoTxPayload, &v107, 0);
  if (v85)
  {
    v8 = v85;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    goto LABEL_6;
  }

  IOFreeData();
  LODWORD(p_ListenInterval) = 0;
  if (IOParseBootArgNumber("wlan.forced.ts", &p_ListenInterval, 4))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    if (p_ListenInterval >= 3)
    {
      LODWORD(p_ListenInterval) = 0;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware();
        }
      }
    }
  }

  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[2244].free) = p_ListenInterval;
  AppleBCMWLANCore::setPTMMode(this);
  (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 528))();
  v87 = (this->OSObject::OSMetaClassBase::__vftable[8].init)(this);
  setPropertyHelper(this, "IOFeatures", v87, 0x20u);
  BYTE4(this[1].OSObject::OSObjectInterface::__vftable[1094].free) = 0;
  BYTE5(this[1].OSObject::OSObjectInterface::__vftable[1094].free) = 0;
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[647].free) = 1;
  AppleBCMWLANCore::updateCurrentFWCountryCode(this);
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[2243].free) = 3;
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[2243].free) = 7;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 93))
  {
    v88 = IOParseBootArgNumber("wlan.channelFilter", &v4->__vftable[2243].free + 4, 4);
    v89 = v4->__vftable;
    if (v88 && !HIDWORD(v89[2243].free))
    {
      IOLog(" WiFiCC : Allowing all bands and no channel filter used. [%d]\n", 0);
      v89 = v4->__vftable;
    }

    HIDWORD(v89[1879].free) = -80;
    if (IOParseBootArgNumber("wlan.rssicomp.value", &v4->__vftable[1879].free + 4, 4))
    {
      free_high = HIDWORD(v4->__vftable[1879].free);
      if (free_high)
      {
        if ((free_high + 90) >= 0x33)
        {
          IOLog(" WiFiRoam : RSSI compensation out of range. Value : [%d] Resorting to default value : [%d]\n", HIDWORD(v4->__vftable[1879].free), -80);
          HIDWORD(v4->__vftable[1879].free) = -80;
        }

        else
        {
          IOLog(" WiFiRoam : Using RSSI compensation Value : [%d] \n", HIDWORD(v4->__vftable[1879].free));
        }
      }

      else
      {
        IOLog(" WiFiRoam : RSSI compensation not allowed. [%d]\n", 0);
        HIDWORD(v4->__vftable[1879].free) = 0;
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 77))
  {
    if ((BYTE1(v4->__vftable[1116].init) & 1) == 0)
    {
      if (AppleBCMWLANCore::configureIeFiltering(this))
      {
        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setupFirmware();
          }
        }
      }
    }
  }

  AppleBCMWLANJoinAdapter::configure6GDefaultUnAssocDwell(this[1].OSObject::OSObjectInterface::__vftable[338].free);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 89))
  {
    AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(v4->__vftable[348].init, -80);
  }

  AppleBCMWLANCore::initTrafficEngineering(this);
  v91 = AppleBCMWLANCore::restore_mpc_state(this, v104);
  if (!v91)
  {
    BYTE6(this[1].OSObject::OSObjectInterface::__vftable[13].free) = 0;
    AppleBCMWLANCore::setSPMICommonConfig(this, 1);
    v92 = 4;
    v93 = 30987;
    do
    {
      *(v4->__vftable + v93 - 1) = 0;
      *(&v4->init + v93) = 0;
      v93 += 16;
      --v92;
    }

    while (v92);
    LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[1936].init) = 0;
    AppleBCMWLANCore::disableC2C(this);
    AppleBCMWLANCore::setEcountersEnableStateSync(this, &__block_literal_global, 1);
    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 115))
    {
      v94 = v4->__vftable[349].free;
      if (v94)
      {
        AppleBCMWLAN11beAdapter::setupInitConfig(v94);
      }
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 117) && (BYTE3(v4->__vftable[1095].init) & 2) != 0)
    {
      AppleBCMWLANCore::configureScanForwardToAOP(this, 1);
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 120))
    {
      AppleBCMWLANCore::configureScanParamMods(this);
    }

    v95 = (*(*v4->__vftable[337].init + 368))(v4->__vftable[337].init);
    if (v95 == 4399 || v95 == 4388)
    {
      AppleBCMWLANCore::configureRxHCRTSCTSEventParams(this, 10000, 1);
    }

    BYTE4(this[1].OSObject::OSObjectInterface::__vftable[551].free) = 0;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware();
      }
    }

    return 0;
  }

  v8 = v91;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware();
    }
  }

  return v8;
}