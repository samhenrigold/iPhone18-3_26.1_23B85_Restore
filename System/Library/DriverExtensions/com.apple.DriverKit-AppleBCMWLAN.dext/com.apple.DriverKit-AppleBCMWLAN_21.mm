uint64_t AppleBCMWLANBusInterfacePCIe::submitIOCtlRequestMsg(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  v6 = -536870210;
  v25 = -1;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  AppleBCMWLANBusInterface::getTxDescriptor(a1, &v24);
  v7 = AppleBCMWLANCommandQueue::dequeue(v24.length);
  if (v7)
  {
    v8 = (*(**(*(a1 + 9) + 3512) + 64))(*(*(a1 + 9) + 3512), 0);
    if (v8)
    {
      Payload = AppleBCMWLANTxBuffer::getPayload(v7, 0);
      if (Payload)
      {
        v10 = Payload;
        PayloadLength = AppleBCMWLANTxBuffer::getPayloadLength(v7);
        v12 = PayloadLength - 16;
        if ((PayloadLength & 3) != 0)
        {
          v13 = ((PayloadLength - 16) & 0xFFFC) + 4;
        }

        else
        {
          v13 = PayloadLength - 16;
        }

        if (AppleBCMWLANPCIeIO::getMaxMemorySize(v8) < v13)
        {
          v6 = -536870168;
        }

        else
        {
          v14 = *(v10 + 4);
          v15 = *(v10 + 8);
          if ((v14 & 3) != 0)
          {
            LOWORD(v14) = (v14 & 0xFFFC) + 4;
          }

          if (v14 >= v12)
          {
            v16 = v14;
          }

          else
          {
            v16 = v12;
          }

          if ((v15 & 2) != 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = v14;
          }

          *a3 = 9;
          *(a3 + 1) = v15 >> 12;
          if ((*(*a2 + 248))(a2))
          {
            v18 = -127;
          }

          else
          {
            v18 = 1;
          }

          *(a3 + 2) = v18;
          *(a3 + 8) = *v10;
          *(a3 + 12) = *(v10 + 10);
          *(a3 + 14) = v12;
          *(a3 + 16) = v17;
          v24.address = AppleBCMWLANBusInterface::getFaultReporter(v7);
          v19 = AppleBCMWLANPCIeIO::prepare(v8, v24.address, 16, v13);
          if (v19)
          {
            v6 = v19;
            AppleBCMWLANPCIeIO::complete(v8, &v24);
          }

          else
          {
            v24.address = 0;
            v24.length = 0;
            BusAddr64 = AppleBCMWLANPCIeIO::getBusAddr64(v8, &v24);
            if (!BusAddr64)
            {
              *(a3 + 24) = v24.address;
              BusAddr64 = AppleBCMWLANHashtable::add(*(*(a1 + 9) + 3552), v8, &v25);
              if (!BusAddr64)
              {
                AppleBCMWLANPCIeIO::setCompanionKey(v8, v7);
                mach_continuous_time();
                absolutetime_to_nanoseconds();
                *(*(a1 + 9) + 2952) = *(a3 + 8);
                *(a3 + 4) = v25;
                *(a3 + 6) = (*(*a2 + 296))(a2);
                ++*(*(a1 + 9) + 1148);
                AppleBCMWLANBusInterface::getTxCommittedCommandDescriptor(a1);
                AppleBCMWLANCommandQueue::enqueue(v21, v7);
                return 1;
              }
            }

            v6 = BusAddr64;
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
    v6 = -536870176;
  }

  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      CCLogStream::logCrit(Logger, "[dk] %s@%d: Failed to submit IOCTL, status %#x\n", "submitIOCtlRequestMsg", 12064, v6);
      if (!v7)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  if (v7)
  {
LABEL_30:
    AppleBCMWLANTxBuffer::setStatus(v7, v6);
    AppleBCMWLANBusInterface::getTxCompletionDescriptor(a1, &v24);
    AppleBCMWLANCommandQueue::enqueue(v24.length, v7);
    AppleBCMWLANCallbackEventSource::signalCallbackNeeded(*(*(a1 + 9) + 3240));
  }

LABEL_31:
  if (v8)
  {
    (*(**(*(a1 + 9) + 3512) + 72))(*(*(a1 + 9) + 3512), v8);
  }

  return 0;
}

AppleBCMWLANPCIeSkywalk *AppleBCMWLANBusInterfacePCIe::cancelRingMgmtTimers(AppleBCMWLANBusInterfacePCIe *this)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::cancelRingMgmtTimers(this);
    }
  }

  v2 = *(this + 9);
  v3 = v2[449];
  if (v3)
  {
    (*(*v3 + 80))(v3);
    v2 = *(this + 9);
  }

  v4 = v2[451];
  if (v4)
  {
    (*(*v4 + 80))(v4);
    v2 = *(this + 9);
  }

  v5 = v2[452];
  if (v5)
  {
    (*(*v5 + 80))(v5);
    v2 = *(this + 9);
  }

  v6 = v2[138];
  if (v6)
  {
    (*(*v6 + 80))(v6);
    v2 = *(this + 9);
  }

  v7 = v2[480];
  if (v7)
  {
    (*(*v7 + 80))(v7);
    v2 = *(this + 9);
  }

  result = v2[560];
  if (result)
  {

    return AppleBCMWLANPCIeSkywalk::cancelRingMgmtTimers(result);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeDebugBufferCompletetMsg(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  v5 = 3758097094;
  v31 = 0;
  v30 = 0;
  --*(*(a1 + 9) + 1184);
  v6 = AppleBCMWLANHashtable::remove(*(*(a1 + 9) + 3584), *(a3 + 4));
  v7 = v6;
  if (!v6)
  {
    goto LABEL_31;
  }

  v8 = AppleBCMWLANPCIeIO::complete(v6, &v30);
  if (v8)
  {
    v5 = v8;
LABEL_25:
    AppleBCMWLANPCIeIO::setCompanionIO(v7, 0);
    (*(**(*(a1 + 9) + 3544) + 72))(*(*(a1 + 9) + 3544), v7);
    return v5;
  }

  if (!v30)
  {
    v5 = 3758097136;
    goto LABEL_25;
  }

  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::completeDebugBufferCompletetMsg(a1, a3);
    }
  }

  BytesNoCopy = IO80211Buffer::getBytesNoCopy(v30);
  v10 = (BytesNoCopy + 68);
  if (*(BytesNoCopy + 68) != 1)
  {
    AppleBCMWLANBusInterfacePCIe::completeDebugBufferCompletetMsg(a1, v10, &keys);
LABEL_30:
    v5 = keys;
    goto LABEL_31;
  }

  if (*(BytesNoCopy + 72) != 2)
  {
    AppleBCMWLANBusInterfacePCIe::completeDebugBufferCompletetMsg(a1, BytesNoCopy + 72, &keys);
    goto LABEL_30;
  }

  v12 = (a3 + 12);
  v11 = *(a3 + 12);
  if (*(BytesNoCopy + 74) + 8 != v11)
  {
    AppleBCMWLANBusInterfacePCIe::completeDebugBufferCompletetMsg();
    goto LABEL_30;
  }

  if (v11 + 68 > IO80211Buffer::getLength(v30))
  {
    v5 = 3758097128;
    goto LABEL_31;
  }

  v13 = *(a1 + 9);
  if (*(v13 + 4104) == 1 && *(a3 + 16) == 1)
  {
    v14 = *(v13 + 3824);
    if (!v14 || (CCLogStream::shouldLog(v14, 0x80000000000uLL) & 1) == 0)
    {
      goto LABEL_20;
    }

    v15 = 3824;
  }

  else
  {
    v16 = *(v13 + 3792);
    if (!v16 || !CCLogStream::shouldLog(v16, 0x80000000000uLL))
    {
      goto LABEL_20;
    }

    v15 = 3792;
  }

  CCLogStream::logHeaderAndBuf(*(*(a1 + 9) + v15), v10, 0, *v12, *v12, &v31, 4uLL);
LABEL_20:
  v17 = *v12 - 8;
  v18 = IO80211Buffer::getBytesNoCopy(v30);
  *(v18 + 20) = 0u;
  *(v18 + 36) = 0u;
  *(v18 + 52) = 0u;
  *(v18 + 4) = 0u;
  *(v18 + 68) = 0;
  *(v18 + 25) = 24;
  *(v18 + 23) = 4096;
  *(v18 + 26) = 33554688;
  *(v18 + 48) = bswap32(v17);
  *(v18 + 32) = 872415232;
  strcpy((v18 + 58), "wl0.0");
  RxDescriptor = AppleBCMWLANBusInterface::getRxDescriptor(a1);
  if (!AppleBCMWLANObjectQueue::enqueue(RxDescriptor, v30))
  {
    v30 = 0;
    AppleBCMWLANCallbackEventSource::signalCallbackNeeded(*(*(a1 + 9) + 3240));
    v5 = 0;
    goto LABEL_22;
  }

  v5 = 3758097115;
LABEL_31:
  if (*(*(a1 + 9) + 2896) <= 4u)
  {
    IO80211Buffer::getLength(v30);
    v21 = IOMallocZeroData();
    if (v21)
    {
      v22 = v21;
      v23 = v30;
      IO80211Buffer::getLength(v30);
      IO80211Buffer::readBytes(v23, 0, v22);
      keys = OSString::withCString("BadDebugBuffer.bin");
      Length = IO80211Buffer::getLength(v30);
      values = OSData::withBytes(v22, Length);
      FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);
      v26 = OSDictionary::withObjects(&values, &keys, 1u, 0);
      v27 = (*(*a1 + 104))(a1, v5);
      CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3188u, "completeDebugBufferCompletetMsg", v26, -469794037, "status=%s", v27);
      AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
      ++*(*(a1 + 9) + 2896);
      IO80211Buffer::getLength(v30);
      IOFreeData();
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeDebugBufferCompletetMsg(a1);
        }
      }

      v28 = AppleBCMWLANBusInterface::getFaultReporter(a1);
      v29 = (*(*a1 + 104))(a1, v5);
      CCFaultReporter::reportFault(v28, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3191u, "completeDebugBufferCompletetMsg", 0, -469794037, "status=%s", v29);
    }

    ++*(*(a1 + 9) + 2896);
  }

LABEL_22:
  if (v30)
  {
    IO80211Buffer::returnBuffer(v30);
    v30 = 0;
  }

  if (v7)
  {
    goto LABEL_25;
  }

  return v5;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeIOCtlRequestMsg(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 4);
  v5 = AppleBCMWLANHashtable::remove(*(*(a1 + 9) + 3552), v4);
  if (v5)
  {
    v6 = v5;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    AppleBCMWLANPCIeIO::complete(v5, &v11);
    IO80211FaultReporter = AppleBCMWLANBusInterface::getIO80211FaultReporter(v6);
    AppleBCMWLANTxBuffer::setStatus(IO80211FaultReporter, 0);
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    AppleBCMWLANBusInterface::getTxCommittedCommandDescriptor(a1);
    AppleBCMWLANCommandQueue::remove(v8, IO80211FaultReporter);
    AppleBCMWLANBusInterface::getTxCompletionDescriptor(a1, &v10);
    AppleBCMWLANCommandQueue::enqueue(v10.n128_u64[1], IO80211FaultReporter);
    *(*(a1 + 9) + 4792) = *(*(a1 + 9) + 4784);
    AppleBCMWLANCallbackEventSource::signalCallbackNeeded(*(*(a1 + 9) + 3240));
    AppleBCMWLANPCIeIO::setCompanionIO(v6, 0);
    (*(**(*(a1 + 9) + 3512) + 72))(*(*(a1 + 9) + 3512), v6);
    return 0;
  }

  else
  {
    AppleBCMWLANBusInterfacePCIe::completeIOCtlRequestMsg(a1, v4, &v10);
    return v10.n128_u32[0];
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeIOCtlResponseMsg(AppleBCMWLANBusInterface *this, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v5 = this + 72;
  --*(*(this + 9) + 1148);
  --*(*(this + 9) + 1152);
  v6 = *(this + 9);
  if ((*(v6 + 1148) & 0x80000000) != 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::completeIOCtlResponseMsg(this, v5);
      }
    }

    *(*v5 + 1148) = 0;
    v6 = *v5;
  }

  v7 = *(a3 + 4);
  v8 = AppleBCMWLANHashtable::remove(*(v6 + 3560), v7);
  if (!v8)
  {
    AppleBCMWLANBusInterfacePCIe::completeIOCtlResponseMsg(this, v7, &v18, &v19);
    v15 = v18;
    v11 = v19;
    goto LABEL_16;
  }

  v9 = v8;
  v10 = AppleBCMWLANPCIeIO::complete(v8, &v17);
  if (v10)
  {
    v11 = v10;
    goto LABEL_26;
  }

  v11 = 3758097128;
  if (v17)
  {
    if (IO80211Buffer::getLength(v17) <= 0x800)
    {
      BytesNoCopy = IO80211Buffer::getBytesNoCopy(v17);
      *BytesNoCopy = *(a3 + 16);
      BytesNoCopy[2] = (*(a3 + 1) << 12) | (*(a3 + 14) << 16);
      v13 = *(a3 + 12);
      if (IO80211Buffer::getLength(v17) >= (v13 + 16))
      {
        IO80211Buffer::setLength(v17, v13 + 16);
        BytesNoCopy[1] = v13;
        BytesNoCopy[3] = *(a3 + 8);
        mach_continuous_time();
        absolutetime_to_nanoseconds();
        *(*(this + 9) + 3000) = *(a3 + 16);
        *(*(this + 9) + 3004) = *(a3 + 14);
        AppleBCMWLANBusInterface::getRxDescriptor(this);
        if (!AppleBCMWLANObjectQueue::enqueue(v14, v17))
        {
          *(*v5 + 4792) = *(*v5 + 4784);
          AppleBCMWLANCallbackEventSource::signalCallbackNeeded(*(*v5 + 3240));
          v15 = 0;
          v11 = 0;
          goto LABEL_13;
        }

        v11 = 3758097115;
      }
    }

LABEL_26:
    v15 = 1;
LABEL_13:
    if (v17)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = 3758097136;
  v15 = 1;
LABEL_14:
  AppleBCMWLANPCIeIO::complete(v9, &v17);
LABEL_15:
  AppleBCMWLANPCIeIO::setCompanionIO(v9, 0);
  (*(**(*v5 + 3520) + 72))(*(*v5 + 3520), v9);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!AppleBCMWLANBusInterface::getLogger(this) || (AppleBCMWLANBusInterface::getLogger(this), !CCLogStream::shouldLog()))
  {
LABEL_18:
    if (!v15)
    {
      return v11;
    }

    goto LABEL_19;
  }

  AppleBCMWLANBusInterfacePCIe::completeIOCtlResponseMsg();
  if (!v15)
  {
    return v11;
  }

LABEL_19:
  if (v17)
  {
    IO80211Buffer::returnBuffer(v17);
  }

  return v11;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeRxEventMsg(AppleBCMWLANBusInterface *this, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v5 = (a3 + 2);
  if ((*(a3 + 2) & 8) != 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::completeRxEventMsg();
      }
    }
  }

  if ((*v5 & 8) != 0)
  {
    AppleBCMWLANBusInterfacePCIe::completeRxEventMsg(this);
  }

  v6 = 3758097128;
  v7 = *(a3 + 4);
  v8 = this + 72;
  v9 = AppleBCMWLANHashtable::remove(*(*(this + 9) + 3560), v7);
  kdebug_trace();
  if (v9)
  {
    v10 = AppleBCMWLANPCIeIO::complete(v9, &v16);
    if (v10)
    {
      v6 = v10;
    }

    else if (v16)
    {
      if (IO80211Buffer::getLength(v16) <= 0x800)
      {
        v11 = *(a3 + 12);
        IO80211Buffer::getLength(v16);
        kdebug_trace();
        if ((--*(*v8 + 1156) & 0x80000000) != 0)
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::completeRxEventMsg(this, this + 72);
            }
          }

          *(*v8 + 1156) = 0;
        }

        v12 = v11 + 12;
        if (v12 <= IO80211Buffer::getLength(v16))
        {
          IO80211Buffer::setLength(v16, v12);
          BytesNoCopy = IO80211Buffer::getBytesNoCopy(v16);
          if (BytesNoCopy)
          {
            *BytesNoCopy = 32;
            *(BytesNoCopy + 2) = *(a3 + 1);
            RxDescriptor = AppleBCMWLANBusInterface::getRxDescriptor(this);
            if (!AppleBCMWLANObjectQueue::enqueue(RxDescriptor, v16))
            {
              v16 = 0;
              AppleBCMWLANCallbackEventSource::signalCallbackNeeded(*(*v8 + 3240));
              v6 = 0;
              goto LABEL_20;
            }

            v6 = 3758097115;
          }

          else
          {
            v6 = 3758097124;
          }
        }
      }
    }

    else
    {
      v6 = 3758097136;
    }
  }

  else
  {
    v6 = 3758097094;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::completeRxEventMsg(this, v6, v7);
    }
  }

LABEL_20:
  if (v16)
  {
    IO80211Buffer::returnBuffer(v16);
    v16 = 0;
  }

  if (v9)
  {
    AppleBCMWLANPCIeIO::setCompanionIO(v9, 0);
    (*(**(*v8 + 3520) + 72))(*(*v8 + 3520), v9);
  }

  kdebug_trace();
  return v6;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(AppleBCMWLANBusInterface *a1, uint64_t a2, unsigned __int16 *a3)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1, a3);
    }
  }

  v5 = a3[4];
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  switch(v5)
  {
    case 1:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 2:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 3:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 4:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 5:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 6:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 7:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 8:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 9:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 10:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 11:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    case 12:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v10 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logCrit(v10, "[dk] %s@%d:Phase bit out of sync. Ring=%d\n", "completeIOCtlGeneralResponseMsg", 13157, a3[5]);
        }
      }

      FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);
      CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3367u, "completeIOCtlGeneralResponseMsg", 0, -469794021, 0);
      break;
    case 17:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(a1);
        }
      }

      break;
    default:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v8 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logCrit(v8, "[dk] %s@%d:Unexpected status code is received, status: %d\n", "completeIOCtlGeneralResponseMsg", 13168, a3[4]);
        }
      }

      break;
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(AppleBCMWLANBusInterface *a1, uint64_t a2, unsigned __int16 *a3)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1, a3);
    }
  }

  v5 = a3[4];
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  switch(v5)
  {
    case 1:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 2:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 3:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 4:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 5:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 6:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 7:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 8:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 9:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 10:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 11:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    case 12:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v10 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logCrit(v10, "[dk] %s@%d:Phase bit out of sync. Expected=0x%x\n", "completeIOCtlRingStatusMsg", 13077, a3[7]);
        }
      }

      FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);
      CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3317u, "completeIOCtlRingStatusMsg", 0, -469794021, 0);
      break;
    case 13:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(a1);
        }
      }

      break;
    default:
      if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v8 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logCrit(v8, "[dk] %s@%d:Unexpected status code is received, status: %d\n", "completeIOCtlRingStatusMsg", 13087, a3[4]);
        }
      }

      break;
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeFlowRingCreateResponseMsg(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  (*(**(*(a1 + 9) + 1104) + 80))(*(*(a1 + 9) + 1104), a2);
  v5 = *(a3 + 10);
  v6 = *(a1 + 9);
  if (*(v6 + 372) > v5 || *(v6 + 376) <= v5)
  {
    v9 = 3758097084;
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(a1);
        CCLogStream::logEmergency(Logger, "[dk] %s@%d:Bad Flow ID: %d\n", "completeFlowRingCreateResponseMsg", 13329, v5);
      }
    }
  }

  else
  {
    v7 = *(v6 + 8 * v5 + 4816);
    if (v7)
    {
      if (((*(v6 + (v5 >> 3) + 5168) >> (v5 & 7)) & 1) == 0)
      {
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::completeFlowRingCreateResponseMsg(a1, v7);
          }
        }

        FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);
        CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x341Fu, "completeFlowRingCreateResponseMsg", 0, -469794037, "Unexpected Ring Creation confirmation received from FW");
      }

      AppleBCMWLANBusInterfacePCIe::createFlowCallback(a1, *(a3 + 8), v5);
      v9 = 0;
      --*(*(a1 + 9) + 1176);
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v13 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logAlert(v13, "[dk] %s@%d:Ring missing for ID: %d\n", "completeFlowRingCreateResponseMsg", 13336, v5);
        }
      }

      v9 = 3825173281;
      v11 = AppleBCMWLANBusInterface::getFaultReporter(a1);
      CCFaultReporter::reportFault(v11, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3419u, "completeFlowRingCreateResponseMsg", 0, -469794015, 0);
    }
  }

  return v9;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeFlowRingDeleteResponseMsg(AppleBCMWLANBusInterface *this, uint64_t a2, uint64_t a3)
{
  v5 = this + 72;
  v4 = *(this + 9);
  v7 = (a3 + 10);
  v6 = *(a3 + 10);
  if (*(v4 + 372) > v6 || *(v4 + 376) <= v6)
  {
    v11 = 3758097084;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logEmergency(Logger, "[dk] %s@%d:Bad Flow ID: %d\n", "completeFlowRingDeleteResponseMsg", 13363, *v7);
      }
    }
  }

  else
  {
    v8 = *(v4 + 8 * *(a3 + 10) + 4816);
    if (v8)
    {
      if (((*(v4 + (v6 >> 3) + 5174) >> (v6 & 7)) & 1) == 0)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::completeFlowRingDeleteResponseMsg(this, v7, v8);
          }
        }

        FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
        CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x343Eu, "completeFlowRingDeleteResponseMsg", 0, -469794037, "Unexpected Ring Deletion confirmation received from FW");
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeFlowRingDeleteResponseMsg();
        }
      }

      AppleBCMWLANBusInterfacePCIe::deleteFlowCallback(this, *(a3 + 8), *(a3 + 10));
      --*(*(this + 9) + 1180);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeFlowRingDeleteResponseMsg(this, v5);
        }
      }

      return 0;
    }

    else
    {
      v11 = 3758097084;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v13 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v13, "[dk] %s@%d:Ring %d already gone\n", "completeFlowRingDeleteResponseMsg", 13369, *v7);
        }
      }
    }
  }

  return v11;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeH2DRingCreate(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  v5 = AppleBCMWLANHashtable::remove(*(*(a1 + 9) + 1112), *(a3 + 4));
  v6 = OSMetaClassBase::safeMetaCast(v5, gAppleBCMWLANDynamicRingOperationContextMetaClass);
  if (v6)
  {
    v7 = v6;
    RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v6);
    v9 = OUTLINED_FUNCTION_17(v7);
    RingOperationResourceID = AppleBCMWLANDynamicRingOperationContext::getRingOperationResourceID(v7);
    if (RingOperationResourceID == *(a3 + 4))
    {
      if (*(a3 + 8))
      {
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            Logger = AppleBCMWLANBusInterface::getLogger(a1);
            CCLogStream::logCrit(Logger, "[dk] %s@%d:error creating H2D ring: 0x%x\n", "completeH2DRingCreate", 20409, *(a3 + 8));
          }
        }

        v11 = 3758097084;
        if (v9)
        {
          (*(*v9 + 16))(v9);
          v9 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      (*(RingOperationCompletionPtr + 8))(*RingOperationCompletionPtr, v9, v11, *(RingOperationCompletionPtr + 16));
      (*(*v7 + 16))(v7);
    }

    else
    {
      v12 = RingOperationResourceID;
      v11 = 3758097136;
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v13 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logCrit(v13, "[dk] %s@%d:resource ID mismatch: %u, %u\n", "completeH2DRingCreate", 20399, v12, *(a3 + 4));
        }
      }
    }
  }

  else
  {
    v11 = 3758097136;
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::completeH2DRingCreate(a1);
      }
    }
  }

  return v11;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeD2HRingCreate(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  v5 = AppleBCMWLANHashtable::remove(*(*(a1 + 9) + 1128), *(a3 + 4));
  v6 = OSMetaClassBase::safeMetaCast(v5, gAppleBCMWLANDynamicRingOperationContextMetaClass);
  if (v6)
  {
    v7 = v6;
    RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v6);
    CompletionRingPtr = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v7);
    RingOperationResourceID = AppleBCMWLANDynamicRingOperationContext::getRingOperationResourceID(v7);
    if (RingOperationResourceID == *(a3 + 4))
    {
      if (*(a3 + 8))
      {
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            Logger = AppleBCMWLANBusInterface::getLogger(a1);
            CCLogStream::logCrit(Logger, "[dk] %s@%d:error creating H2D ring: 0x%x\n", "completeD2HRingCreate", 20447, *(a3 + 8));
          }
        }

        v11 = 3758097084;
        if (CompletionRingPtr)
        {
          (*(*CompletionRingPtr + 16))(CompletionRingPtr);
          CompletionRingPtr = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      (*(RingOperationCompletionPtr + 8))(*RingOperationCompletionPtr, CompletionRingPtr, v11, *(RingOperationCompletionPtr + 16));
      (*(*v7 + 16))(v7);
    }

    else
    {
      v12 = RingOperationResourceID;
      v11 = 3758097136;
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v13 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logCrit(v13, "[dk] %s@%d:resource ID mismatch: %u, %u\n", "completeD2HRingCreate", 20437, v12, *(a3 + 4));
        }
      }
    }
  }

  else
  {
    v11 = 3758097136;
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::completeD2HRingCreate(a1);
      }
    }
  }

  return v11;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeH2DRingDelete(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  v5 = AppleBCMWLANHashtable::remove(*(*(a1 + 9) + 1120), *(a3 + 4));
  v6 = OSMetaClassBase::safeMetaCast(v5, gAppleBCMWLANDynamicRingOperationContextMetaClass);
  if (v6)
  {
    v7 = v6;
    v8 = OUTLINED_FUNCTION_17(v6);
    RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v7);
    RingOperationResourceID = AppleBCMWLANDynamicRingOperationContext::getRingOperationResourceID(v7);
    if (RingOperationResourceID == *(a3 + 4))
    {
      if (*(a3 + 8))
      {
        v11 = 3758097084;
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            Logger = AppleBCMWLANBusInterface::getLogger(a1);
            CCLogStream::logCrit(Logger, "[dk] %s@%d:error deleting H2D ring: 0x%x\n", "completeH2DRingDelete", 20485, *(a3 + 8));
          }
        }
      }

      else
      {
        v11 = 0;
      }

      (*(RingOperationCompletionPtr + 8))(*RingOperationCompletionPtr, v8, v11, *(RingOperationCompletionPtr + 16));
      (*(*v7 + 16))(v7);
    }

    else
    {
      v13 = RingOperationResourceID;
      v11 = 3758097136;
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v14 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logCrit(v14, "[dk] %s@%d:resource ID mismatch: %u, %u\n", "completeH2DRingDelete", 20475, v13, *(a3 + 4));
        }
      }
    }
  }

  else
  {
    v11 = 3758097136;
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::completeH2DRingDelete(a1);
      }
    }
  }

  return v11;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeD2HRingDelete(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  v5 = AppleBCMWLANHashtable::remove(*(*(a1 + 9) + 1136), *(a3 + 4));
  v6 = OSMetaClassBase::safeMetaCast(v5, gAppleBCMWLANDynamicRingOperationContextMetaClass);
  if (v6)
  {
    v7 = v6;
    CompletionRingPtr = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v6);
    RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v7);
    RingOperationResourceID = AppleBCMWLANDynamicRingOperationContext::getRingOperationResourceID(v7);
    if (RingOperationResourceID == *(a3 + 4))
    {
      if (*(a3 + 8))
      {
        v11 = 3758097084;
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            Logger = AppleBCMWLANBusInterface::getLogger(a1);
            CCLogStream::logCrit(Logger, "[dk] %s@%d:error deleting H2D ring: 0x%x\n", "completeD2HRingDelete", 20523, *(a3 + 8));
          }
        }
      }

      else
      {
        v11 = 0;
      }

      (*(RingOperationCompletionPtr + 8))(*RingOperationCompletionPtr, CompletionRingPtr, v11, *(RingOperationCompletionPtr + 16));
      (*(*v7 + 16))(v7);
    }

    else
    {
      v13 = RingOperationResourceID;
      v11 = 3758097136;
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v14 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logCrit(v14, "[dk] %s@%d:resource ID mismatch: %u, %u\n", "completeD2HRingDelete", 20513, v13, *(a3 + 4));
        }
      }
    }
  }

  else
  {
    v11 = 3758097136;
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::completeD2HRingDelete(a1);
      }
    }
  }

  return v11;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleMBData(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2)
{
  if (*(*(this + 9) + 2844) == 2)
  {

    return AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS(this, a2);
  }

  else
  {
    AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW(this, a2);
    return 0;
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2)
{
  v3 = this + 72;
  *(*(this + 9) + 1268) += a2 & 1;
  v4 = a2 & 2;
  *(*(this + 9) + 1272) += v4 >> 1;
  v5 = a2 & 4;
  *(*(this + 9) + 1276) += v5 >> 2;
  *(*(this + 9) + 1280) += (a2 & 8) >> 3;
  if ((a2 & 0x10000000) != 0)
  {
    AppleBCMWLANBusInterfacePCIe::handleFWTrap(this);
    return 0;
  }

  if (a2)
  {
    if (!AppleBCMWLANBusInterfacePCIe::changeSleepState(this, 12, 13512))
    {
      return 3758097129;
    }

    v9 = 0;
    (*(**(*v3 + 3472) + 56))(*(*v3 + 3472), AppleBCMWLANBusInterfacePCIe::signalDriverEventGated, &v9, 0, 0, 0);
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    return 0;
  }

  if ((a2 & 8) != 0)
  {
    if (!AppleBCMWLANBusInterfacePCIe::changeSleepState(this, 5, 13521))
    {
      return 3758097129;
    }

    (*(**(*v3 + 3608) + 72))(*(*v3 + 3608));
    if (AppleOLYHALPlatformFunction::getLowPowerDetectedDK(*(*v3 + 5184), 0))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS(this);
        }
      }

      AppleOLYHALPlatformFunction::setLowPowerDetectedDK(*(*v3 + 5184), 0, 0);
    }

    mach_continuous_time();
    absolutetime_to_nanoseconds();
    *(*v3 + 3064) = *(*v3 + 3048);
  }

  if (!v5)
  {
    goto LABEL_19;
  }

  if (*(*v3 + 2871) != 1)
  {
    if ((*(*v3 + 4496) & 1) == 0)
    {
      AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
    }

    AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(this, a2, 1, 0);
    ++*(*(this + 9) + 3024);
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    *(*(this + 9) + 3056) = *(*(this + 9) + 3048);
    if ((*(*(this + 9) + 1224) - 7) <= 2)
    {
      AppleBCMWLANBusInterfacePCIe::changeSleepState(this, 10, 13550);
    }

    if (AppleBCMWLANBusInterfacePCIe::changeSleepState(this, 5, 13552))
    {
      AppleBCMWLANBusInterfacePCIe::writeH2DMailbox(this, 32);
      goto LABEL_19;
    }

    return 3758097129;
  }

  AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS(this);
LABEL_19:
  v7 = (a2 >> 25) & 3;
  if (v7 > 1)
  {
    if (v7 == 3)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS(this);
        }
      }
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS(this);
        }
      }

      *(*v3 + 4010) = 0;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_39;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS(this);
      }
    }

    *(*v3 + 4010) = 1;
  }

  (*(**(*(this + 9) + 3616) + 72))(*(*(this + 9) + 3616));
  AppleBCMWLANBusInterfacePCIe::configurePTM(this, 0);
  IOPCIDevice::SetASPMState(*(*(this + 9) + 3248), 2u, 0);
LABEL_39:
  result = 0;
  if (v4)
  {
    if (*(*v3 + 2868))
    {
      AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS();
      return v9;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2)
{
  v4 = (this + 72);
  *(*(this + 9) + 1268) += a2 & 1;
  v5 = a2 & 2;
  *(*(this + 9) + 1272) += v5 >> 1;
  v6 = a2 & 4;
  *(*(this + 9) + 1276) += v6 >> 2;
  if ((a2 & 0x10000000) == 0)
  {
    if (a2)
    {
      v10 = 0;
      (*(**(*v4 + 434) + 56))(*(*v4 + 434), AppleBCMWLANBusInterfacePCIe::signalDriverEventGated, &v10, 0, 0, 0);
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      return 0;
    }

    if ((a2 & 4) != 0)
    {
      if (*(*v4 + 2871) == 1)
      {
        AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW(this);
      }

      else
      {
        if ((*(*v4 + 4496) & 1) == 0)
        {
          AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
        }

        AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(this, a2, 1, 0);
        AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(this, 3, 1, 13445);
        ++*(*(this + 9) + 3024);
        mach_continuous_time();
        absolutetime_to_nanoseconds();
        *(*(this + 9) + 3056) = *(*(this + 9) + 3048);
      }
    }

    v7 = (a2 >> 25) & 3;
    if (v7 > 1)
    {
      if (v7 == 3)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW(this);
          }
        }
      }

      else
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW(this);
          }
        }

        *(*v4 + 4010) = 0;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_27;
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW(this);
        }
      }

      *(*v4 + 4010) = 1;
    }

    (*(**(*(this + 9) + 3616) + 72))(*(*(this + 9) + 3616));
    AppleBCMWLANBusInterfacePCIe::configurePTM(this, 0);
    IOPCIDevice::SetASPMState(*(*(this + 9) + 3248), 2u, 0);
LABEL_27:
    if (!(*(*v4 + 1124) & 1 | v6))
    {
      if (*(*v4 + 2871) == 1)
      {
        AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW();
        if (!v5)
        {
          return 0;
        }

LABEL_31:
        if (*(*v4 + 2868))
        {
          AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW(*v4);
        }

        return 0;
      }

      AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
      AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(this, v8, 1, 0);
      AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(this, 3, 1, 13476);
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      *(*(this + 9) + 3064) = *(*(this + 9) + 3048);
    }

    if (!v5)
    {
      return 0;
    }

    goto LABEL_31;
  }

  AppleBCMWLANBusInterfacePCIe::handleFWTrap(this);
  if ((a2 & 0x8000000) != 0 && *(*v4 + 3719) == 1)
  {
    AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW();
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleFWTrap(AppleBCMWLANBusInterfacePCIe *this)
{
  v49 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  memset(__str, 0, sizeof(__str));
  *v47 = 0;
  v46 = 0;
  v2 = this + 72;
  (*(*this + 1208))();
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::handleFWTrap(this);
    }
  }

  v3 = *(*v2 + 3360);
  if (v3)
  {
    AppleBCMWLANChipBackplane::forcePower(v3, 1, 0);
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  if (AppleBCMWLANBusInterfacePCIe::isTCMAccessible(this))
  {
    v5 = *(*v2 + 3368);
    if (v5 || (*(*v2 + 3368) = AppleBCMWLANChipMemory::withMap(0, *(*v2 + 3280), *(*v2 + 3144), v4), (v5 = *(*v2 + 3368)) != 0))
    {
      v6 = AppleBCMWLANChipMemory::unwrapRAMOffset(v5, 4294967292);
      AppleBCMWLANChipMemory::readRAM32(*(*v2 + 3368), v6, v47);
      if (v47[0] + 1 > 1)
      {
        if (AppleBCMWLANChipMemory::translateRAMBackplaneAddr(*(*v2 + 3368), v47[0], &v47[1]))
        {
          ChipRAMDK = 0;
          strcpy(__str, "Failed to translate shared backplane address");
        }

        else
        {
          AppleBCMWLANChipMemory::setSharedMemoryOffset(*(*v2 + 3368), v47[1]);
          TrapAddr = AppleBCMWLANChipMemory::readTrapAddr(*(*v2 + 3368));
          if (TrapAddr)
          {
            v9 = TrapAddr;
            if (AppleBCMWLANChipMemory::translateRAMBackplaneAddr(*(*v2 + 3368), TrapAddr, &v49))
            {
              if (AppleBCMWLANBusInterface::getLogger(this))
              {
                AppleBCMWLANBusInterface::getLogger(this);
                if (CCLogStream::shouldLog())
                {
                  Logger = AppleBCMWLANBusInterface::getLogger(this);
                  CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to translate trap addr %#X\n", "handleFWTrap", 13744, v9);
                }
              }

              snprintf(__str, 0x80uLL, "Invalid trap addr %#X", v9);
              ChipRAMDK = 0;
            }

            else
            {
              v19 = IO80211Buffer::allocBufferSingle();
              if (v19)
              {
                v20 = v19;
                ChipRAMDK = AppleBCMWLANChipMemory::readChipRAMDK(*(*v2 + 3368), v49, 80, v19, 0);
                if (ChipRAMDK)
                {
                  BytesNoCopy = IO80211Buffer::getBytesNoCopy(v20);
                  v22 = *BytesNoCopy;
                  v45 = BytesNoCopy[1];
                  *(*(this + 9) + 4064) = BytesNoCopy[19];
                  *(*(this + 9) + 4068) = BytesNoCopy[18];
                  v29 = BytesNoCopy[17];
                  v44 = BytesNoCopy[2];
                  v43 = BytesNoCopy[3];
                  v42 = BytesNoCopy[4];
                  v41 = BytesNoCopy[5];
                  v40 = BytesNoCopy[6];
                  v39 = BytesNoCopy[7];
                  v38 = BytesNoCopy[8];
                  v37 = BytesNoCopy[9];
                  v36 = BytesNoCopy[10];
                  v35 = BytesNoCopy[11];
                  v34 = BytesNoCopy[12];
                  v33 = BytesNoCopy[13];
                  v32 = BytesNoCopy[14];
                  v31 = BytesNoCopy[15];
                  v30 = BytesNoCopy[16];
                  if (AppleBCMWLANBusInterface::getLogger(this))
                  {
                    AppleBCMWLANBusInterface::getLogger(this);
                    if (CCLogStream::shouldLog())
                    {
                      v25 = AppleBCMWLANBusInterface::getLogger(this);
                      CCLogStream::logAlert(v25, "[dk] %s@%d:FW TRAP %d\n", "handleFWTrap", 13797, v22);
                    }
                  }

                  if (AppleBCMWLANBusInterface::getLogger(this))
                  {
                    AppleBCMWLANBusInterface::getLogger(this);
                    if (CCLogStream::shouldLog())
                    {
                      v26 = AppleBCMWLANBusInterface::getLogger(this);
                      CCLogStream::logAlert(v26, "[dk] %s@%d:FW TRAP %d (%x): epc %x, pc %x, lr %x, sp %x, cpsr %x, spsr %x\n", "handleFWTrap", 13799, v22, v9, v45, *(*(this + 9) + 4064), *(*(this + 9) + 4068), v29, v44, v43);
                    }
                  }

                  if (AppleBCMWLANBusInterface::getLogger(this))
                  {
                    AppleBCMWLANBusInterface::getLogger(this);
                    if (CCLogStream::shouldLog())
                    {
                      v27 = AppleBCMWLANBusInterface::getLogger(this);
                      CCLogStream::logAlert(v27, "[dk] %s@%d:r0 %x, r1 %x, r2 %x, r3 %x, r4 %x, r5 %x, r6 %x\n", "handleFWTrap", 13801, v42, v41, v40, v39, v38, v37, v36);
                    }
                  }

                  if (AppleBCMWLANBusInterface::getLogger(this))
                  {
                    AppleBCMWLANBusInterface::getLogger(this);
                    if (CCLogStream::shouldLog())
                    {
                      v28 = AppleBCMWLANBusInterface::getLogger(this);
                      CCLogStream::logAlert(v28, "[dk] %s@%d:r7 %x, r8 %x, r9 %x, r10 %x, r11 %x, r12 %x\n", "handleFWTrap", 13803, v35, v34, v33, v32, v31, v30);
                    }
                  }

                  if (IOParseBootArgNumber("wlan.debug.dump-socram.fwtrap", &v46, 4) && v46)
                  {
                    if (AppleBCMWLANBusInterface::getLogger(this))
                    {
                      AppleBCMWLANBusInterface::getLogger(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANBusInterfacePCIe::handleFWTrap(this);
                      }
                    }

                    AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(this, 0);
                  }
                }

                else
                {
                  if (AppleBCMWLANBusInterface::getLogger(this))
                  {
                    AppleBCMWLANBusInterface::getLogger(this);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANBusInterfacePCIe::handleFWTrap(this);
                    }
                  }

                  strcpy(__str, "Fail to access trap buffer");
                }

                IO80211Buffer::returnBuffer(v20);
                (*(MEMORY[0] + 72))(0);
              }

              else
              {
                if (AppleBCMWLANBusInterface::getLogger(this))
                {
                  AppleBCMWLANBusInterface::getLogger(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANBusInterfacePCIe::handleFWTrap(this);
                  }
                }

                ChipRAMDK = 0;
                strcpy(__str, "fail to allocate Memory for trap buffer");
              }
            }
          }

          else
          {
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::handleFWTrap(this);
              }
            }

            ChipRAMDK = 0;
            strcpy(__str, "Trap Addr is 0");
          }
        }
      }

      else
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v23 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v23, "[dk] %s@%d:Failed to read shared memory address @ %#X, %#X\n", "handleFWTrap", 13709, v6, v47[0]);
          }
        }

        ChipRAMDK = 0;
        strcpy(__str, "Failed to read shared memory address");
      }
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::handleFWTrap(this);
        }
      }

      ChipRAMDK = 0;
      strcpy(__str, "PCIe: Failed to map resources Read/Write");
    }
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::handleFWTrap(this);
      }
    }

    ChipRAMDK = 0;
    strcpy(__str, "TCM not accessible");
  }

  ++*(*v2 + 4088);
  v10 = *v2;
  if (*(*v2 + 4085) == 1)
  {
    v11 = *(v10 + 4072);
    v12 = AppleBCMWLANDMASlab::getBytesNoCopy(*(v10 + 3504), 0);
    if (*(*v2 + 4085))
    {
      v13 = 516;
    }

    else
    {
      v13 = 0;
    }

    memcpy(v11, (v12 + 4), v13);
  }

  if (ChipRAMDK)
  {
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    if (*(*v2 + 4192))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::handleFWTrap();
        }
      }

      getForcedFwTrapReasonString(*(*v2 + 4192));
      snprintf(__str, 0x80uLL, "%s");
    }

    else
    {
      snprintf(__str, 0x80uLL, "Type=%u,PC=0x%X,LR=0x%X");
    }

    *(*v2 + 4184) = 0;
    *(*v2 + 4192) = 0;
  }

  v14 = *v2;
  v15 = *(*v2 + 3360);
  if (v15)
  {
    AppleBCMWLANChipBackplane::forcePower(v15, 0, 0);
    v14 = *v2;
  }

  v16 = *(v14 + 3715);
  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
  if (v16 == 1)
  {
    CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3618u, "handleFWTrap", 0, -469794295, "%s", __str);
  }

  else
  {
    CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x361Fu, "handleFWTrap", 0, -469794303, "%s", __str);
  }

  return 0;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::ackDSRequest(AppleBCMWLANBusInterface *this)
{
  if (*(*(this + 9) + 2844) == 2)
  {
    return AppleBCMWLANBusInterfacePCIe::ackDSRequestInbandDS(this);
  }

  else
  {
    return AppleBCMWLANBusInterfacePCIe::ackDSRequestOOBDW(this);
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::trap(AppleBCMWLANBusInterfacePCIe *this, int a2)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:trap reason=%u\n", "trap", 13623, a2);
    }
  }

  v4 = AppleBCMWLANBusInterfacePCIe::retainCTS(this, 13625, 2, 1000);
  if (v4)
  {
    v5 = v4;
    v6 = 13627;
  }

  else if (AppleBCMWLANBusInterfacePCIe::isBusAccessible(this, 0))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::trap(this);
      }
    }

    AppleBCMWLANBusInterfacePCIe::writeH2DMailbox(this, 0x20000000);
    v5 = 0;
    v6 = 13641;
  }

  else
  {
    v5 = 3758097088;
    v6 = 13632;
  }

  AppleBCMWLANBusInterfacePCIe::releaseCTS(this, v6);
  return v5;
}

uint64_t AppleBCMWLANBusInterfacePCIe::setupForcedTrap(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1 + 72;
  if (*(*(a1 + 9) + 4192))
  {
    v5 = 3758097109;
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::setupForcedTrap(a1, v3, v2);
      }
    }
  }

  else
  {
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v5 = 0;
    *(*v3 + 4192) = v2;
  }

  return v5;
}

uint64_t AppleBCMWLANBusInterfacePCIe::readSoCRAM(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2, IOBufferMemoryDescriptor *a3, unint64_t a4)
{
  v7 = 3758097085;
  (*(*this + 1208))(this, "readSoCRAM", 14049);
  v9 = this + 72;
  v8 = *(this + 9);
  range.address = 0xAAAAAAAAAAAAAAAALL;
  range.length = 0xAAAAAAAAAAAAAAAALL;
  if (!*(v8 + 3368))
  {
    return 3758097088;
  }

  if ((*(v8 + 1304) & 1) != 0 || !*(v8 + 3248))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      return 3758097088;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return 3758097088;
    }

    AppleBCMWLANBusInterfacePCIe::readSoCRAM(this);
    return 3758097088;
  }

  v10 = *(v8 + 3280);
  if (v10)
  {
    if (AppleBCMWLANChipManagerPCIe::needsCacheCoherency(v10))
    {
      v11 = *(*v9 + 3352);
      if (v11)
      {
        LODWORD(v29) = 0;
        AppleBCMWLANChipConfigSpace::readReg32(v11, 0x88u, &v29);
        v12 = v29;
        if ((v29 & 0x200) == 0)
        {
          LODWORD(v29) = v29 | 0x200;
          AppleBCMWLANChipConfigSpace::writeReg32(*(*v9 + 3352), 0x88u, v12 | 0x200);
        }
      }
    }
  }

  v29 = 0;
  v13 = IO80211Buffer::allocBufferSingle();
  if (v13)
  {
    if (a3)
    {
      v14 = v13;
      IOBufferMemoryDescriptor::GetAddressRange(a3, &range);
      address = range.address;
      if (range.address)
      {
        v16 = *v9;
        if ((*(*v9 + 4496) & 1) == 0)
        {
          AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
          v16 = *(this + 9);
        }

        v17 = *(v16 + 3144);
        if (v17)
        {
          RecordingStatus = AppleBCMWLANPCIeMMIOHistory::getRecordingStatus(v17);
          AppleBCMWLANPCIeMMIOHistory::disableRecording(*(*v9 + 3144));
        }

        else
        {
          RecordingStatus = 0;
        }

        if (a4)
        {
          if (a4 < 0x401)
          {
            v22 = 0;
            v19 = 0;
          }

          else
          {
            v19 = 0;
            v20 = 0;
            v21 = 1024;
            do
            {
              v22 = v21;
              AppleBCMWLANChipMemory::readRAM(*(*v9 + 3368), v19, 1024, v14);
              BytesNoCopy = IO80211Buffer::getBytesNoCopy(v14);
              memcpy((address + v20), BytesNoCopy, 0x400uLL);
              v21 = (v19 + 2048);
              v19 = (v19 + 1024);
              v20 = v22;
            }

            while (v21 < a4);
          }

          v24 = (a4 - v19);
          AppleBCMWLANChipMemory::readRAM(*(*v9 + 3368), v19, v24, v14);
          v25 = IO80211Buffer::getBytesNoCopy(v14);
          memcpy((address + v22), v25, v24);
        }

        v26 = *v9;
        if (RecordingStatus)
        {
          v27 = *(v26 + 3144);
          if (v27)
          {
            AppleBCMWLANPCIeMMIOHistory::enableRecording(v27);
            v26 = *v9;
          }
        }

        if ((*(v26 + 4496) & 1) == 0)
        {
          AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
        }

        IO80211Buffer::returnBuffer(v14);
        (*(*v29 + 72))(v29);
        if (v29)
        {
          (*(*v29 + 16))(v29);
        }

        return 0;
      }

      else if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::readSoCRAM(this);
        }
      }
    }

    else if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::readSoCRAM(this);
      }
    }
  }

  else if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::readSoCRAM(this);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANBusInterfacePCIe::readcoexSoCRAM(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2, OSData *a3, unint64_t *a4)
{
  v7 = 3758097088;
  (*(*this + 1208))(this, "readcoexSoCRAM", 14148);
  v9 = this + 72;
  v8 = *(this + 9);
  if (*(v8 + 3368))
  {
    if ((*(v8 + 1304) & 1) != 0 || !*(v8 + 3248))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::readcoexSoCRAM(this);
        }
      }
    }

    else
    {
      v10 = *(v8 + 3280);
      if (v10)
      {
        if (AppleBCMWLANChipManagerPCIe::needsCacheCoherency(v10))
        {
          v11 = *(*v9 + 3352);
          if (v11)
          {
            LODWORD(v21) = 0;
            AppleBCMWLANChipConfigSpace::readReg32(v11, 0x88u, &v21);
            v12 = v21;
            if ((v21 & 0x200) == 0)
            {
              LODWORD(v21) = v21 | 0x200;
              AppleBCMWLANChipConfigSpace::writeReg32(*(*v9 + 3352), 0x88u, v12 | 0x200);
            }
          }
        }
      }

      v21 = 0;
      v13 = IO80211Buffer::allocBufferSingle();
      if (v13)
      {
        v14 = v13;
        v15 = *v9;
        if ((*(*v9 + 4496) & 1) == 0)
        {
          AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
          v15 = *(this + 9);
        }

        v16 = *(v15 + 3144);
        if (v16)
        {
          RecordingStatus = AppleBCMWLANPCIeMMIOHistory::getRecordingStatus(v16);
          AppleBCMWLANPCIeMMIOHistory::disableRecording(*(*v9 + 3144));
          AppleBCMWLANChipMemory::readCoexRAM(*(*v9 + 3368), 0, *a4, v14);
          if (RecordingStatus)
          {
            v18 = *(*v9 + 3144);
            if (v18)
            {
              AppleBCMWLANPCIeMMIOHistory::enableRecording(v18);
            }
          }
        }

        else
        {
          AppleBCMWLANChipMemory::readCoexRAM(*(v15 + 3368), 0, *a4, v14);
        }

        if ((*(*v9 + 4496) & 1) == 0)
        {
          AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
        }

        BytesNoCopy = IO80211Buffer::getBytesNoCopy(v14);
        OSData::appendBytes(a3, BytesNoCopy, *a4);
        IO80211Buffer::returnBuffer(v14);
        (*(*v21 + 72))(v21);
        if (v21)
        {
          (*(*v21 + 16))(v21);
        }

        return 0;
      }

      else
      {
        v7 = 3758097085;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::readcoexSoCRAM(this);
          }
        }
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getSoCRAMSize(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(this + 9);
  if (*(v2 + 3248))
  {
    v3 = *(v2 + 3280);

    return AppleBCMWLANChipManagerPCIe::getRAMSize(v3);
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::getSoCRAMSize(this);
      }
    }

    return 0;
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::readUCodeRAM(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2, OSData *a3, uint64_t a4)
{
  v8 = 3758097088;
  (*(*this + 1208))(this, "readUCodeRAM", 14224);
  if (a2 > 1)
  {
    return 3758097090;
  }

  v10 = this + 72;
  v9 = *(this + 9);
  if (*(v9 + 3360))
  {
    if ((*(v9 + 1304) & 1) != 0 || !*(v9 + 3248))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::readUCodeRAM(this);
        }
      }
    }

    else
    {
      v11 = *(v9 + 2832);
      if (v11)
      {
        v12 = *v11;
        if ((v12 >> AppleBCMWLANChipManagerPCIe::getCoreID(*(v9 + 3280), 1u)))
        {
          v13 = IOMallocZeroData();
          if (v13)
          {
            v14 = v13;
            if ((*(*v10 + 4496) & 1) == 0)
            {
              AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
            }

            v15 = *(*v10 + 3360);
            if (a2)
            {
              AppleBCMWLANChipBackplane::readUCodeSHMRAM(v15, v14, a4);
            }

            else
            {
              AppleBCMWLANChipBackplane::readUCodeSCRRAM(v15, v14, a4);
            }

            if ((*(*v10 + 4496) & 1) == 0)
            {
              AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
            }

            OSData::appendBytes(a3, v14, a4);
            IOFreeData();
            return 0;
          }

          else
          {
            return 3758097085;
          }
        }
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getUCodeSCRSize(AppleBCMWLANBusInterfacePCIe *this)
{
  v1 = *(this + 9);
  if (*(v1 + 3248))
  {
    return AppleBCMWLANChipManagerPCIe::getUCodeSCRSize(*(v1 + 3280));
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::getUCodeSCRSize(AppleBCMWLANBusInterfacePCIe *this)
{
  v1 = *(this + 3);
  if (*(v1 + 3248))
  {
    return AppleBCMWLANChipManagerPCIe::getUCodeSCRSize(*(v1 + 3280));
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::getUCodeSHMSize(AppleBCMWLANBusInterfacePCIe *this)
{
  v1 = *(this + 9);
  if (*(v1 + 3248))
  {
    return AppleBCMWLANChipManagerPCIe::getUCodeSHMSize(*(v1 + 3280));
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::getUCodeSHMSize(AppleBCMWLANBusInterfacePCIe *this)
{
  v1 = *(this + 3);
  if (*(v1 + 3248))
  {
    return AppleBCMWLANChipManagerPCIe::getUCodeSHMSize(*(v1 + 3280));
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::signalDriverEventGated(AppleBCMWLANBusInterface *a1, unsigned int *a2)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::signalDriverEventGated(a1);
    }
  }

  (*(**(*(a1 + 9) + 3472) + 88))(*(*(a1 + 9) + 3472), *(a1 + 9) + 4 * *a2 + 1736);
  return 0;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::ackDSRequestInbandDS(AppleBCMWLANBusInterface *this)
{
  v2 = (this + 72);
  v1 = *(this + 9);
  if (*(v1 + 4504) <= 0 && (*(v1 + 3725) & 1) == 0)
  {
    v3 = this;
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    this = AppleBCMWLANBusInterfacePCIe::changeSleepState(v3, 7, 14357);
    if (this)
    {
      if (*(*v2 + 5204) == 1)
      {
        AppleBCMWLANBusInterfacePCIe::ackDSRequestInbandDS();
      }

      return AppleBCMWLANBusInterfacePCIe::ackDSRequestInbandDS(*v2, v2, v3);
    }
  }

  return this;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::ackDSRequestOOBDW(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(this + 9);
  if (*(v2 + 4504) > 0 || *(v2 + 3725) == 1)
  {

    return AppleBCMWLANBusInterfacePCIe::writeH2DMailbox(this, 4);
  }

  else
  {
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    AppleBCMWLANBusInterfacePCIe::writeH2DMailbox(this, 2);
    AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(this, 4, 1, 14338);
    result = AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
    v4 = *(this + 9);
    if (*(v4 + 2868) == 1)
    {
      *(v4 + 4496) = *(v4 + 4496) & 0xFFFFFFFA | 4;
      v4 = *(this + 9);
    }

    *(v4 + 1292) = *(v4 + 1256);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::retainCTSInbandDS(AppleBCMWLANBusInterfacePCIe *this)
{
  (*(*this + 1208))(this, "retainCTSInbandDS", 14578);
  v3 = *(this + 9);
  if (*(v3 + 2868) == 1)
  {
    if (*(v3 + 2844) == 2 && (*(v3 + 1306) & 1) == 0)
    {
      v6 = (v3 + 4504);
      v4 = *(v3 + 4504);
      goto LABEL_10;
    }

    v4 = *(v3 + 4504);
    if (v4)
    {
LABEL_8:
      v6 = (v3 + 4504);
LABEL_10:
      *v6 = v4 + 1;
      return 0;
    }

    v5 = *(v3 + 1224);
    if (v5 != 8)
    {
      if (v5 != 7)
      {
LABEL_7:
        AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(this, v2, 2, 0);
        v3 = *(this + 9);
        v4 = *(v3 + 4504);
        goto LABEL_8;
      }

      AppleBCMWLANBusInterfacePCIe::changeSleepState(this, 9, 14597);
      v8 = *(this + 9);
      if (*(v8 + 5204) == 1)
      {
        AppleBCMWLANBusInterfacePCIe::ackDSRequestInbandDS();
      }

      AppleBCMWLANBusInterfacePCIe::retainCTSInbandDS(v8, this + 72);
    }

    AppleBCMWLANBusInterfacePCIe::hitDoorbell(this, v2);
    goto LABEL_7;
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::retainCTSOOBDW(AppleBCMWLANBusInterfacePCIe *this, __int16 a2)
{
  (*(*this + 1208))(this, "retainCTSOOBDW", 14552);
  v4 = *(this + 9);
  if (*(v4 + 2868) == 1)
  {
    v5 = *(v4 + 4504);
    if (!v5)
    {
      AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(this, 2, 1, a2);
      v7 = *(this + 9);
      if (*(v7 + 2844) != 2)
      {
        *(v7 + 1232) = 1;
        AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*(this + 9) + 5192), 1, 0);
      }

      AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(this, v6, 2, 0);
      v4 = *(this + 9);
      v5 = *(v4 + 4504);
    }

    *(v4 + 4504) = v5 + 1;
  }

  return 0;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::releaseCTSInbandDS(AppleBCMWLANBusInterface *this)
{
  v1 = *(this + 9);
  if (*(v1 + 2868) == 1)
  {
    v2 = this;
    --*(v1 + 4504);
    v3 = *(this + 9);
    if (*(v3 + 1306) == 1 && *(v3 + 4504) <= 0)
    {
      if (*(v3 + 4528) == 1)
      {
        *(v3 + 4528) = 0;
        v3 = *(this + 9);
        if ((*(v3 + 3725) & 1) == 0)
        {
          this = AppleBCMWLANBusInterfacePCIe::ackDSRequest(this);
          v3 = *(v2 + 9);
        }
      }

      if (*(v3 + 2868) == 1)
      {
        *(v3 + 4496) &= ~2u;
      }
    }
  }

  return this;
}

CCLogStream *AppleBCMWLANBusInterfacePCIe::releaseCTSOOBDW(CCLogStream *this, __int16 a2)
{
  v2 = *(this + 9);
  if (*(v2 + 2868) == 1)
  {
    v3 = this;
    --*(v2 + 4504);
    if (*(*(this + 9) + 4504) <= 0)
    {
      this = AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(this, 3, 1, a2);
      v4 = *(v3 + 9);
      if (*(v4 + 2844) != 2)
      {
        *(v4 + 1232) = 0;
        this = AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*(v3 + 9) + 5192), 0, 0);
        v4 = *(v3 + 9);
      }

      if (*(v4 + 2868) == 1)
      {
        *(v4 + 4496) &= ~2u;
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerState_Impl(AppleBCMWLANBusInterfacePCIe *this, uint32_t a2)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = -536870212;
  if ((*(*this + 608))(this))
  {
    v4 = (*(*this + 608))(this);
    AppleBCMWLANCore::reportSystemPowerState(v4, 1, a2 == 2, 1);
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:DK: SetPowerState BusInterfacePCIe  %u", "SetPowerState_Impl", 14929, a2);
    }
  }

  if (*(*(this + 9) + 5200))
  {
    AppleBCMWLANBusInterfacePCIe::SetPowerState_Impl(this);
  }

  else
  {
    if (a2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = -1;
    }

    if (a2)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v15 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v15, "[dk] %s@%d:DK: powerState %u appleBcmWLANPowerState %d", "SetPowerState_Impl", 14934, a2, v6);
      }
    }

    if (v6 == -1)
    {
      AppleBCMWLANBusInterfacePCIe::SetPowerState_Impl(this);
    }

    else
    {
      v7 = (*(**(*(this + 9) + 3464) + 168))(*(*(this + 9) + 3464));
      block[0] = _NSConcreteStackBlock;
      block[1] = 1107296256;
      block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe18SetPowerState_ImplEj_block_invoke;
      block[3] = &__block_descriptor_tmp_707;
      block[4] = &v20;
      block[5] = this;
      v19 = v6;
      IODispatchQueue::DispatchSync(v7, block);
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v14 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v14, "[dk] %s@%d:DK: SetPowerState BusInterfacePCIe %u complete", "SetPowerState_Impl", 14949, a2);
    }
  }

  v8 = *(*(this + 9) + 3464);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = ___ZN28AppleBCMWLANBusInterfacePCIe18SetPowerState_ImplEj_block_invoke_709;
  v16[3] = &__block_descriptor_tmp_712;
  v16[4] = this;
  v17 = a2;
  (*(*v8 + 112))(v8, v16);
  v9 = IOService::SetPowerState(this, a2, AppleBCMWLANBusInterface::_Dispatch);
  *(v21 + 6) = v9;
  if ((*(*this + 608))(this))
  {
    v10 = (*(*this + 608))(this);
    AppleBCMWLANCore::reportSystemPowerState(v10, 1, a2 == 2, 0);
  }

  v11 = *(v21 + 6);
  _Block_object_dispose(&v20, 8);
  return v11;
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe18SetPowerState_ImplEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  isPortControlAMFMManagedDK = AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(v2[3].__vftable[129].Dispatch, 0);
  v4 = *(a1 + 48);
  if (isPortControlAMFMManagedDK)
  {
    result = AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM(v2, v4, 0);
  }

  else
  {
    result = AppleBCMWLANBusInterfacePCIe::SetPowerStateGated(v2, v4, 0);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe18SetPowerState_ImplEj_block_invoke_709(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    if (v2 == 2)
    {
      AppleBCMWLANBusInterfacePCIe::updateContinuousTimeOffset(*(a1 + 32));
      AppleBCMWLANBusInterface::setBusStateFlags(v1, 4u);
      if ((*(*v1 + 608))(v1))
      {
        if (AppleBCMWLANBusInterface::getLogger(v1))
        {
          AppleBCMWLANBusInterface::getLogger(v1);
          if (CCLogStream::shouldLog())
          {
            ___ZN28AppleBCMWLANBusInterfacePCIe18SetPowerState_ImplEj_block_invoke_709_cold_1(v1);
          }
        }

        v3 = (*(*v1 + 608))(v1);
        IOService::ChangePowerState(v3, 2u, 0);
      }

      else if (*(*(v1 + 9) + 3238) == 1)
      {
        if (AppleBCMWLANBusInterface::getLogger(v1))
        {
          AppleBCMWLANBusInterface::getLogger(v1);
          if (CCLogStream::shouldLog())
          {
            ___ZN28AppleBCMWLANBusInterfacePCIe18SetPowerState_ImplEj_block_invoke_709_cold_2(v1);
          }
        }

        IOService::RegisterService(v1, 0);
      }
    }
  }

  else
  {
    AppleBCMWLANBusInterface::clearBusStateFlags(*(a1 + 32), 4);
  }

  return 0;
}

OSDictionary *AppleBCMWLANBusInterfacePCIe::updateContinuousTimeOffset(AppleBCMWLANBusInterfacePCIe *this)
{
  v6 = 0;
  v2 = OSString::withCString("com.apple.iokit.pm.wakedescription");
  IOService::StateNotificationItemCopy(*(*(this + 9) + 5216), v2, &v6, 0);
  if (v2)
  {
    (v2->release)(v2);
  }

  Object = OSDictionary::getObject(v6, "com.apple.iokit.pm.wakedescription.continuous-time-offset");
  v4 = OSMetaClassBase::safeMetaCast(Object, gOSNumberMetaClass);
  atomic_store(OSNumber::unsigned64BitValue(v4), (*(this + 9) + 5392));
  result = v6;
  if (v6)
  {
    return (v6->release)(v6);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(AppleBCMWLANBusInterface *a1, int a2)
{
  kdebug_trace();
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      CCLogStream::logCrit(Logger, "[dk] %s@%d:SetPowerStateGatedAMFM state %u\n", "SetPowerStateGatedAMFM_Impl", 14995, a2);
    }
  }

  if (a2 == 1)
  {
    v6 = a1 + 72;
    *(*(a1 + 9) + 4040) = mach_continuous_time();
    IOLog("%s(%d): fLastTimePowerOnTicks=%lld\n", "SetPowerStateGatedAMFM_Impl", 15148, *(*(a1 + 9) + 4040));
    v7 = *(a1 + 9);
    if (*(v7 + 4588) == 1)
    {
      AppleBCMWLANBusInterfacePCIe::modifyASPM(a1, 3u);
      v7 = *(a1 + 9);
    }

    if (*(v7 + 4560) == 1)
    {
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
        }
      }

      *(*v6 + 4560) = 0;
      (*(**(*v6 + 3472) + 88))(*(*v6 + 3472), *v6 + 4560);
      *(*v6 + 3725) = 0;
      *(*v6 + 4580) = 0;
      AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(PowerState)::firstPowerOnAfterStart = 1;
    }

    else if (*(v7 + 1306) == 1 && (*(v7 + 1304) & 1) == 0 && (AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(PowerState)::firstPowerOnAfterStart & 1) != 0)
    {
      AppleBCMWLANChipBackplane::restoreDeviceState(*(v7 + 3360));
      AppleBCMWLANBusInterfacePCIe::configurePTM(a1, 1);
      *(*(a1 + 9) + 3725) = 0;
      *(*(a1 + 9) + 4580) = 0;
      v10 = *(*(a1 + 9) + 3496);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 0x40000000;
      v23[2] = ___ZN28AppleBCMWLANBusInterfacePCIe27SetPowerStateGatedAMFM_ImplE10PowerState_block_invoke_2;
      v23[3] = &__block_descriptor_tmp_731;
      v23[4] = a1;
      IODispatchQueue::DispatchAsync(v10, v23);
      AppleBCMWLANBusInterfacePCIe::enableRingEventSources(a1);
      AppleBCMWLANBusInterfacePCIe::InterruptOccurred_Impl(a1, v11, 0, -1);
      if (AppleBCMWLANBusInterfacePCIe::changeSleepState(a1, 13, 15207))
      {
        *(*(a1 + 9) + 4080) = mach_continuous_time();
        *(*(a1 + 9) + 5208) = 16;
        *(*(a1 + 9) + 5204) = 1;
        (*(**(*(a1 + 9) + 312) + 192))(*(*(a1 + 9) + 312), 1, 0);
        AppleBCMWLANPCIeDoorbell::cancelRing(*(*(a1 + 9) + 3640));
        AppleBCMWLANChipBackplane::writePCIeDoorbell(*(*(a1 + 9) + 3360), 324, *(*(a1 + 9) + 4080));
        *(*(a1 + 9) + 3624) = 0;
        (*(**(*(a1 + 9) + 3608) + 56))(*(*(a1 + 9) + 3608), 1000);
        ClassNameHelper = getClassNameHelper(a1);
        io80211_os_log("[WiFiTimeSync] %s::%s calls enableTimeSyncEngine()\n", ClassNameHelper, "SetPowerStateGatedAMFM_Impl");
        (*(*a1 + 488))(a1, 1);
      }

      AppleOLYHALPortInterfacePCIe::deviceTurnedOnDK(*(*v6 + 5192), 0);
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1, a1 + 72);
        }
      }

      kdebug_trace();
      *(*v6 + 3725) = 0;
      *(*v6 + 4580) = 0;
      AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(PowerState)::firstPowerOnAfterStart = 1;
    }
  }

  else if (a2)
  {
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v22 = AppleBCMWLANBusInterface::getLogger(a1);
        CCLogStream::logAlert(v22, "[dk] %s@%d:Bad power state %d\n", "SetPowerStateGatedAMFM_Impl", 15238, a2);
      }
    }

    kdebug_trace();
  }

  else
  {
    *(*(a1 + 9) + 4580) = 1;
    v4 = *(a1 + 9);
    if (*(v4 + 4561) == 1)
    {
      do
      {
        (*(**(v4 + 3472) + 80))(*(v4 + 3472));
        v4 = *(a1 + 9);
      }

      while ((*(v4 + 4561) & 1) != 0);
    }

    *(v4 + 3725) = 1;
    *(*(a1 + 9) + 4562) = 0;
    v5 = *(a1 + 9);
    if (v5[4564] == 1)
    {
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
        }
      }

      AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(a1);
      *(*(a1 + 9) + 4560) = 1;
    }

    else if (v5[1306] == 1 && v5[1304] != 1)
    {
      if ((*(*a1 + 208))(a1))
      {
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
          }
        }

        *(*(a1 + 9) + 4560) = 1;
      }

      else
      {
        if (AppleBCMWLANBusInterfacePCIe::retainCTS(a1, 15037, 2, *(*(a1 + 9) + 3728)) == -536870186)
        {
          v14 = *(a1 + 9);
          if (!*(v14 + 3728))
          {
            *(v14 + 2871) = 1;
            if (AppleBCMWLANBusInterface::getLogger(a1))
            {
              AppleBCMWLANBusInterface::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
              }
            }

            *(*(a1 + 9) + 3728) = 1000;
            v14 = *(a1 + 9);
          }

          if (*(v14 + 2869) == 1)
          {
            if (AppleBCMWLANBusInterface::getLogger(a1))
            {
              AppleBCMWLANBusInterface::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
              }
            }

            AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(a1, 0);
            AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(a1, v19, 1, 0);
            AppleBCMWLANBusInterfacePCIe::hitDoorbell(a1, v20);
            v14 = *(a1 + 9);
          }

          *(v14 + 4560) = 1;
          (*(*a1 + 1152))(a1, 3825173276, "DS exit timed out");
          if (AppleBCMWLANBusInterface::getLogger(a1))
          {
            AppleBCMWLANBusInterface::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
            }
          }

          v15 = getClassNameHelper(a1);
          io80211_os_log("[WiFiTimeSync] %s::%s calls disableTimeSyncEngine()\n", v15, "SetPowerStateGatedAMFM_Impl");
          (*(*a1 + 496))(a1);
        }

        else
        {
          v16 = getClassNameHelper(a1);
          io80211_os_log("[WiFiTimeSync] %s::%s calls disableTimeSyncEngine()\n", v16, "SetPowerStateGatedAMFM_Impl");
          (*(*a1 + 496))(a1);
          if (AppleBCMWLANBusInterfacePCIe::changeSleepState(a1, 11, 15069))
          {
            AppleBCMWLANBusInterfacePCIe::writeH2DMailbox(a1, 1);
            *(*(a1 + 9) + 3724) = 1;
            ++*(*(a1 + 9) + 1240);
            block[5] = 0xAAAAAAAAAAAAAAAALL;
            clock_interval_to_deadline();
            (*(**(*(a1 + 9) + 3472) + 80))(*(*(a1 + 9) + 3472), *(a1 + 9) + 1736, 0xAAAAAAAAAAAAAAAALL);
            --*(*(a1 + 9) + 1240);
            *(*(a1 + 9) + 3724) = 0;
            *(*(a1 + 9) + 1244) = 0;
            if (*(*(a1 + 9) + 1224) != 12)
            {
              if (AppleBCMWLANBusInterface::getLogger(a1))
              {
                AppleBCMWLANBusInterface::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
                }
              }

              (*(*a1 + 1152))(a1, 3825173273, "D3 ack timed out");
              v17 = *(a1 + 9);
              if (v17[4586] == 1)
              {
                v17[4560] = 0;
                *(*(a1 + 9) + 3725) = 0;
                *(*(a1 + 9) + 4580) = 0;
                if (AppleBCMWLANBusInterface::getLogger(a1))
                {
                  AppleBCMWLANBusInterface::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
                  }
                }

                FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);
                CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3B01u, "SetPowerStateGatedAMFM_Impl", 0, *(*(a1 + 9) + 4576), "%s", *(*(a1 + 9) + 4568));
                (*(*a1 + 1152))(a1, 3825173273, "D3 ack timed out -> refer to previous capture for SoCRAM");
                v17 = *(a1 + 9);
              }

              v17[3725] = 1;
              *(*(a1 + 9) + 4560) = 1;
              *(*(a1 + 9) + 4580) = 1;
            }
          }

          else
          {
            *(*(a1 + 9) + 4560) = 1;
          }
        }

        AppleBCMWLANChipBackplane::saveDeviceState(*(*(a1 + 9) + 3360));
        AppleBCMWLANBusInterfacePCIe::releaseCTS(a1, 15117);
      }
    }

    else if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
      }
    }

    AppleBCMWLANBusInterfacePCIe::disableRingEventSources(a1);
    v8 = *(a1 + 9);
    if (*(v8 + 3264))
    {
      v9 = *(v8 + 3496);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe27SetPowerStateGatedAMFM_ImplE10PowerState_block_invoke;
      block[3] = &__block_descriptor_tmp_726;
      block[4] = a1;
      IODispatchQueue::DispatchAsync(v9, block);
      v8 = *(a1 + 9);
    }

    *(v8 + 1224) = 12;
    (*(**(*(a1 + 9) + 3472) + 88))(*(*(a1 + 9) + 3472), *(a1 + 9) + 4560);
  }

  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(a1);
    }
  }

  kdebug_trace();
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::InterruptOccurred_Impl(AppleBCMWLANBusInterfacePCIe *this, OSAction *a2, uint64_t a3, uint64_t a4)
{
  kdebug_trace();
  AppleBCMWLANBusInterface::updateInterruptStats(this, a4, a3);
  v7 = *(this + 9);
  if (*(v7 + 4809) == 1)
  {
    v8 = *(**(v7 + 3488) + 72);
  }

  else
  {
    v8 = *(**(v7 + 3472) + 72);
  }

  v8();
  return kdebug_trace();
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  v2 = a2;
  kdebug_trace();
  v5 = a1 + 72;
  v4 = *(a1 + 9);
  if (*(v4 + 2844) == 2)
  {
    if (*(v4 + 1306) != 1 || (*(v4 + 1304) & 1) != 0 || v2 == 1 && (AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(PowerState)::firstPowerOnAfterStart & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1, a1 + 72);
        }
      }

      if (v2 == 1)
      {
        *(*v5 + 3881) = 1;
        *(*v5 + 3725) = 0;
        AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(PowerState)::firstPowerOnAfterStart = 1;
      }

      goto LABEL_53;
    }

LABEL_26:
    if (v2 == 1)
    {
      *(*v5 + 4040) = mach_continuous_time();
      IOLog("%s(%d): fLastTimePowerOnTicks=%lld\n", "SetPowerStateGated_Impl", 15503, *(*v5 + 4040));
      *(*v5 + 4580) = 0;
      v10 = *v5;
      if (*(*v5 + 4811) == 1)
      {
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
          }
        }

        goto LABEL_49;
      }

      if (*(*v5 + 4812) == 1)
      {
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
          }
        }

        *(*(a1 + 9) + 4812) = 0;
        *(*(a1 + 9) + 3725) = 0;
        FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);
        CCFaultReporter::reportFault(FaultReporter, 9u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3C9Du, "SetPowerStateGated_Impl", 0, -469794036, 0);
        goto LABEL_49;
      }

      if ((*(v10 + 4084) & 1) == 0)
      {
        AppleBCMWLANBusInterfacePCIe::retainCTS(a1, 15522, 0, 0xFFFFFFFFLL);
        v10 = *(a1 + 9);
      }

      if (*(v10 + 3706) == 1)
      {
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
          }
        }

        goto LABEL_49;
      }

      AppleBCMWLANChipBackplane::restoreDeviceState(*(v10 + 3360));
      *(*(a1 + 9) + 3725) = 0;
      v22 = *(*(a1 + 9) + 3496);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 0x40000000;
      v33[2] = ___ZN28AppleBCMWLANBusInterfacePCIe23SetPowerStateGated_ImplE10PowerState_block_invoke_4;
      v33[3] = &__block_descriptor_tmp_750;
      v33[4] = a1;
      IODispatchQueue::DispatchAsync(v22, v33);
      AppleBCMWLANBusInterfacePCIe::enableRingEventSources(a1);
      AppleBCMWLANBusInterfacePCIe::InterruptOccurred_Impl(a1, v23, 0, -1);
      v24 = *(a1 + 9);
      if (*(v24 + 2844) == 2)
      {
        if (!AppleBCMWLANBusInterfacePCIe::changeSleepState(a1, 13, 15553))
        {
          goto LABEL_49;
        }

        *(*v5 + 4080) = mach_continuous_time();
        *(*v5 + 5208) = 16;
        *(*v5 + 5204) = 1;
        (*(**(*v5 + 312) + 192))(*(*v5 + 312), 1, 0);
        AppleBCMWLANPCIeDoorbell::cancelRing(*(*v5 + 3640));
        AppleBCMWLANChipBackplane::writePCIeDoorbell(*(*v5 + 3360), 324, *(*v5 + 4080));
        *(*v5 + 3624) = 0;
        (*(**(*v5 + 3608) + 56))(*(*v5 + 3608), 1000);
      }

      else
      {
        if (*(v24 + 4084))
        {
          AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(a1, 3, 1, 15580);
          v26 = *(a1 + 9);
          if (*(v26 + 2844) != 2)
          {
            *(v26 + 1232) = 0;
            AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*v5 + 5192), 0, 0);
          }
        }

        else
        {
          AppleBCMWLANBusInterfacePCIe::releaseCTS(a1, 15576);
        }

        AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(a1, v25, 1, 0);
        if (*(*(a1 + 9) + 4084) == 1)
        {
          *(*v5 + 4080) = mach_continuous_time();
          AppleBCMWLANChipBackplane::writePCIeDoorbell(*(*v5 + 3360), 324, *(*v5 + 4080));
        }
      }

      ClassNameHelper = getClassNameHelper(a1);
      io80211_os_log("[WiFiTimeSync] %s::%s calls enableTimeSyncEngine()\n", ClassNameHelper, "SetPowerStateGated_Impl");
      (*(*a1 + 488))(a1, 1);
      goto LABEL_49;
    }

    if (v2)
    {
      kdebug_trace();
      goto LABEL_49;
    }

    *(*v5 + 4580) = 1;
    v6 = *v5;
    if (*(*v5 + 4561) == 1)
    {
      do
      {
        (*(**(v6 + 3472) + 80))(*(v6 + 3472));
        v6 = *v5;
      }

      while ((*(*v5 + 4561) & 1) != 0);
    }

    *(v6 + 3725) = 1;
    v7 = AppleBCMWLANBusInterfacePCIe::retainCTS(a1, 15334, 2, *(*(a1 + 9) + 3728));
    v8 = *(a1 + 9);
    if ((*(v8 + 4811) & 1) != 0 || *(v8 + 3706) == 1)
    {
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
        }
      }

      v9 = *v5;
      if (*(*v5 + 2844) == 2)
      {
LABEL_36:
        *(v9 + 1224) = 12;
LABEL_49:
        if (*(*v5 + 2844) != 2)
        {
          *(*v5 + 1224) = v2;
          IOStateReporter::setChannelState(*(*(a1 + 9) + 3176), 0x507772537465uLL, gPowerStateIDs[*(*(a1 + 9) + 1224)]);
          if (AppleBCMWLANBusInterface::getLogger(a1))
          {
            AppleBCMWLANBusInterface::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1, a1 + 72);
            }
          }
        }

        goto LABEL_53;
      }

      v12 = a1;
      v13 = 15343;
      goto LABEL_48;
    }

    if (v7 == -536870186)
    {
      if (!*(v8 + 3728))
      {
        *(v8 + 2871) = 1;
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
          }
        }

        *(*v5 + 3728) = 1000;
        v8 = *v5;
      }

      if (*(v8 + 2869) == 1)
      {
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
          }
        }

        AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(a1, 0);
        AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(a1, v31, 1, 0);
        AppleBCMWLANBusInterfacePCIe::hitDoorbell(a1, v32);
      }

      v15 = getClassNameHelper(a1);
      io80211_os_log("[WiFiTimeSync] %s::%s calls disableTimeSyncEngine()\n", v15, "SetPowerStateGated_Impl");
      (*(*a1 + 496))(a1);
      AppleBCMWLANBusInterfacePCIe::disableRingEventSources(a1);
      v16 = *(*(a1 + 9) + 3496);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe23SetPowerStateGated_ImplE10PowerState_block_invoke;
      block[3] = &__block_descriptor_tmp_738;
      block[4] = a1;
      IODispatchQueue::DispatchAsync(v16, block);
      AppleBCMWLANBusInterfacePCIe::releaseCTS(a1, 15379);
      v17 = *(a1 + 9);
      if (*(v17 + 2844) == 2)
      {
        *(v17 + 1224) = 12;
      }

      else
      {
        AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(a1, 0, 1, 15381);
      }

      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
        }
      }

      if ((*(*a1 + 208))(a1))
      {
        if (AppleBCMWLANBusInterface::getLogger(a1))
        {
          AppleBCMWLANBusInterface::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
          }
        }

        AppleBCMWLANChipBackplane::saveDeviceState(*(*v5 + 3360));
        goto LABEL_49;
      }
    }

    else
    {
      v18 = getClassNameHelper(a1);
      io80211_os_log("[WiFiTimeSync] %s::%s calls disableTimeSyncEngine()\n", v18, "SetPowerStateGated_Impl");
      (*(*a1 + 496))(a1);
      if (*(*(a1 + 9) + 2844) != 2 || (AppleBCMWLANBusInterfacePCIe::changeSleepState(a1, 11, 15410) & 1) != 0)
      {
        AppleBCMWLANBusInterfacePCIe::writeH2DMailbox(a1, 1);
        *(*(a1 + 9) + 3724) = 1;
        ++*(*(a1 + 9) + 1240);
        v34[5] = 0xAAAAAAAAAAAAAAAALL;
        clock_interval_to_deadline();
        v19 = (*(**(*(a1 + 9) + 3472) + 80))(*(*(a1 + 9) + 3472), *(a1 + 9) + 1736, 0xAAAAAAAAAAAAAAAALL);
        --*(*(a1 + 9) + 1240);
        *(*(a1 + 9) + 3724) = 0;
        *(*(a1 + 9) + 1244) = 0;
        AppleBCMWLANBusInterfacePCIe::disableRingEventSources(a1);
        v20 = *(*(a1 + 9) + 3496);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 0x40000000;
        v34[2] = ___ZN28AppleBCMWLANBusInterfacePCIe23SetPowerStateGated_ImplE10PowerState_block_invoke_3;
        v34[3] = &__block_descriptor_tmp_742;
        v34[4] = a1;
        IODispatchQueue::DispatchAsync(v20, v34);
        v21 = *(a1 + 9);
        if ((*(v21 + 4811) & 1) == 0)
        {
          if (v19)
          {
            if (v19 == -536870186)
            {
              if ((*(*a1 + 208))(a1))
              {
                if (AppleBCMWLANBusInterface::getLogger(a1))
                {
                  AppleBCMWLANBusInterface::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
                  }
                }
              }

              else
              {
                AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(a1);
                *(*(a1 + 9) + 4812) = 1;
                if (AppleBCMWLANBusInterface::getLogger(a1))
                {
                  AppleBCMWLANBusInterface::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
                  }
                }
              }
            }

            else if (AppleBCMWLANBusInterface::getLogger(a1))
            {
              AppleBCMWLANBusInterface::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                Logger = AppleBCMWLANBusInterface::getLogger(a1);
                CCLogStream::logCrit(Logger, "[dk] %s@%d: Line#: %d  Unexpected error (0x%x) from commandSleep\n", "SetPowerStateGated_Impl", 15476, 15476, v19);
              }
            }
          }

          AppleBCMWLANBusInterfacePCIe::releaseCTS(a1, 15479);
          AppleBCMWLANChipBackplane::saveDeviceState(*(*(a1 + 9) + 3360));
          v21 = *(a1 + 9);
        }

        if (*(v21 + 2844) == 2)
        {
          if (*(v21 + 1224) == 12)
          {
            goto LABEL_49;
          }

          if (AppleBCMWLANBusInterface::getLogger(a1))
          {
            AppleBCMWLANBusInterface::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1);
            }
          }

          v9 = *v5;
          goto LABEL_36;
        }

        v12 = a1;
        v13 = 15491;
LABEL_48:
        AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(v12, 0, 1, v13);
        goto LABEL_49;
      }

      v27 = getClassNameHelper(a1);
      io80211_os_log("[WiFiTimeSync] %s::%s calls disableTimeSyncEngine()\n", v27, "SetPowerStateGated_Impl");
      (*(*a1 + 496))(a1);
      AppleBCMWLANBusInterfacePCIe::disableRingEventSources(a1);
      v28 = *(*(a1 + 9) + 3496);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 0x40000000;
      v35[2] = ___ZN28AppleBCMWLANBusInterfacePCIe23SetPowerStateGated_ImplE10PowerState_block_invoke_2;
      v35[3] = &__block_descriptor_tmp_741;
      v35[4] = a1;
      IODispatchQueue::DispatchAsync(v28, v35);
      AppleBCMWLANBusInterfacePCIe::releaseCTS(a1, 15426);
      AppleBCMWLANChipBackplane::saveDeviceState(*(*(a1 + 9) + 3360));
      if ((*(*a1 + 208))(a1))
      {
        goto LABEL_49;
      }
    }

    AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(a1);
    *(*(a1 + 9) + 4812) = 1;
    goto LABEL_49;
  }

  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1, a1 + 72, v2);
    }
  }

  if (*(*v5 + 1306) == 1 && (*(*v5 + 1304) & 1) == 0 && (v2 != 1 || (AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(PowerState)::firstPowerOnAfterStart & 1) != 0))
  {
    AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(a1, v2, 1, 15301);
    goto LABEL_26;
  }

  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(a1, a1 + 9, v2);
    }
  }

  *(*v5 + 1224) = v2;
  if (v2 == 1)
  {
    *(*v5 + 3881) = 1;
    *(*v5 + 3725) = 0;
    AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(PowerState)::firstPowerOnAfterStart = 1;
  }

LABEL_53:
  kdebug_trace();
  return 0;
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = &off_1003D18C8;
  v5 = 14;
  v6 = "UNKNOWN";
  while (*(v4 - 2) != *(*a2 + 1224))
  {
    v4 += 2;
    if (!--v5)
    {
      return CCLogStream::logCritIf(Logger, 2uLL, "[dk] %s@%d:Completed, now: %s\n", "SetPowerStateGated_Impl", 15623, v6);
    }
  }

  v6 = *v4;
  return CCLogStream::logCritIf(Logger, 2uLL, "[dk] %s@%d:Completed, now: %s\n", "SetPowerStateGated_Impl", 15623, v6);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = "before init";
  if (*(*a2 + 1306) == 1 && !*(*a2 + 1304))
  {
    v4 = "after chip start";
  }

  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Power transition %s\n", "SetPowerStateGated_Impl", 15305, v4);
}

uint64_t AppleBCMWLANBusInterfacePCIe::FWSetupDone(AppleBCMWLANBusInterfacePCIe *this)
{
  result = AppleBCMWLANPCIeSkywalk::enableAllSubmissionQueue(*(*(this + 9) + 4480));
  *(*(this + 9) + 3726) = 0;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::FWSetupDone(AppleBCMWLANBusInterfacePCIe *this)
{
  result = AppleBCMWLANPCIeSkywalk::enableAllSubmissionQueue(*(*(this + 3) + 4480));
  *(*(this + 3) + 3726) = 0;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::isPowerOn(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(*(this + 9) + 5192);
  if (v2 && AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(v2, 0))
  {
    LOBYTE(v3) = *(*(this + 9) + 3725) ^ 1;
  }

  else
  {
    v3 = (AppleBCMWLANBusInterface::getBusState(this) >> 2) & 1;
  }

  return v3 & 1;
}

uint64_t AppleBCMWLANBusInterfacePCIe::isBusRegisteredAndPoweredOn(AppleBCMWLANBusInterfacePCIe *this)
{
  v1 = *(*(this + 9) + 3472);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZN28AppleBCMWLANBusInterfacePCIe27isBusRegisteredAndPoweredOnEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_752;
  v3[4] = this;
  return (*(*v1 + 72))(v1, v3);
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe27isBusRegisteredAndPoweredOnEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  if (*(v2 + 3237) == 1 && (BusState = AppleBCMWLANBusInterface::getBusState(*(a1 + 32)), v2 = *(v1 + 72), (BusState & 4) != 0))
  {
    v5 = 0;
    result = 0;
  }

  else
  {
    result = 3758097112;
    v5 = 1;
  }

  *(v2 + 3238) = v5;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpRegisters(AppleBCMWLANBusInterfacePCIe *this)
{
  (*(*this + 1208))(this, "dumpRegisters", 15809);
  if (AppleBCMWLANBusInterfacePCIe::isBusAccessible(this, 1))
  {
    v2 = IOMallocZeroData();
    if (v2)
    {
      v3 = v2;
      v21 = -1431655766;
      v4 = AppleBCMWLANChipConfigSpace::dumpConfigSpaceRegisters(*(*(this + 9) + 3352), v2, 0x4000uLL);
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      if (v4)
      {
        if (Logger)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v6 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v6, "[dk] %s@%d:dumpConfigSpaceRegisters return %x\n");
          }
        }
      }

      else if (Logger)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v17 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v17, "\n%s");
        }
      }

      v8 = AppleBCMWLANChipBackplane::dumpPCIeCoreEnumerationRegisters(*(*(this + 9) + 3360), v3, 0x4000uLL);
      v9 = AppleBCMWLANBusInterface::getLogger(this);
      if (v8)
      {
        if (v9)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v10 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v10, "[dk] %s@%d:dumpPCIeCoreRegisters returned %x\n");
          }
        }
      }

      else if (v9)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v18 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v18, "\n%s");
        }
      }

      v7 = AppleBCMWLANChipBackplane::readMACMasterWrapperReg32(*(*(this + 9) + 3360), 0x800u, &v21);
      if (!v7)
      {
        if (v21)
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::dumpRegisters(this);
            }
          }
        }

        else
        {
          v12 = AppleBCMWLANChipBackplane::dumpD11CoreEnumerationRegisters(*(*(this + 9) + 3360), v3, 0x4000uLL);
          v13 = AppleBCMWLANBusInterface::getLogger(this);
          if (v12)
          {
            if (v13)
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                v14 = AppleBCMWLANBusInterface::getLogger(this);
                CCLogStream::logAlert(v14, "[dk] %s@%d:dumpD11CoreEnumerationRegisters\ndumpstatus %x\n");
              }
            }
          }

          else if (v13)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v20 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v20, "%s");
            }
          }
        }

        v7 = AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(*(*(this + 9) + 3360), v3, 0x4000uLL);
        v15 = AppleBCMWLANBusInterface::getLogger(this);
        if (v7)
        {
          if (v15)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v16 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v16, "[dk] %s@%d:dumpDMPWrapperRegisters returned %x\n", "dumpRegisters", 15859, v7);
            }
          }
        }

        else
        {
          if (v15)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v19 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v19, "\n%s", v3);
            }
          }

          v7 = 0;
        }
      }

      IOFreeData();
    }

    else
    {
      return 12;
    }
  }

  else
  {
    v7 = 3758097097;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::dumpRegisters(this);
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpDebugInfo(AppleBCMWLANBusInterfacePCIe *this, OSDictionary **a2)
{
  v3 = 3758097085;
  *a2 = 0;
  v5 = this + 72;
  v4 = *(this + 9);
  if ((*(v4 + 1304) & 1) != 0 || !*(v4 + 3248) || *(v4 + 3706) == 1 && *(v4 + 3710) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::dumpDebugInfo(this);
      }
    }

    v7 = OSString::withCString("SoC_register");
    v8 = OSString::withCString("Bus not accessible");
    AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v7, v8);
    return 3758097088;
  }

  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    v12 = OSDictionary::withCapacity(4u);
    if (!v12)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::dumpDebugInfo(this);
        }
      }

      goto LABEL_61;
    }

    v13 = v12;
    v14 = *v5;
    if ((*(*v5 + 4496) & 1) == 0)
    {
      AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
      v14 = *(this + 9);
    }

    if (!AppleBCMWLANChipConfigSpace::dumpConfigSpaceRegisters(*(v14 + 3352), v11, 0x8000uLL))
    {
      addKeyAndDump("Config Space", v11, v13);
    }

    if ((AppleBCMWLANBusInterfacePCIe::checkAPBAccessibility(this, 1, 0) & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::dumpDebugInfo(this);
        }
      }

      goto LABEL_56;
    }

    if (!AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this))
    {
LABEL_56:
      *a2 = v13;
      if ((*(*v5 + 4496) & 1) == 0)
      {
        AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
        v13 = *a2;
      }

      if ((v13->getCount)(v13))
      {
        v3 = 0;
      }

      else
      {
        v3 = 3758097136;
      }

LABEL_61:
      IOFreeData();
      return v3;
    }

    v15 = *v5;
    v16 = *(*v5 + 3312);
    v17 = (v16 - 4357);
    if (v17 > 0x2A)
    {
      goto LABEL_71;
    }

    if (((1 << (v16 - 5)) & 0xC0300001) != 0)
    {
LABEL_20:
      v18 = AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(*(v15 + 3360), v11, 0x8000uLL);
      goto LABEL_21;
    }

    if (v17 == 42)
    {
      v18 = AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(*(v15 + 3360), v11, 0x8000uLL);
    }

    else
    {
LABEL_71:
      if (v16 == 276347)
      {
        goto LABEL_20;
      }

      v18 = AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(*(v15 + 3360), v11, 0x8000uLL);
    }

LABEL_21:
    if (!v18)
    {
      addKeyAndDump("DMP Wrapper", v11, v13);
    }

    if (*(*v5 + 3312) == 4387 && !AppleBCMWLANChipBackplane::dumpAPBBridge0SlaveWrapperRegisters(*(*v5 + 3360), v11, 0x8000uLL))
    {
      addKeyAndDump("APB Bridge0 Wrapper Slave", v11, v13);
    }

    if (*(*v5 + 3312) == 4388 && !AppleBCMWLANChipBackplane::dumpAPBBridge0SlaveWrapperRegisters(*(*v5 + 3360), v11, 0x8000uLL))
    {
      addKeyAndDump("APB Bridge0 Wrapper Slave", v11, v13);
    }

    if (*(*v5 + 3312) == 4399 && !AppleBCMWLANChipBackplane::dumpOOBConfigStatusRegisters(*(*v5 + 3360), v11, 0x8000uLL))
    {
      addKeyAndDump("OOB config and status", v11, v13);
    }

    v19 = *v5;
    v20 = *(*v5 + 3312);
    if ((v20 - 4357) <= 0x2A && ((1 << (v20 - 5)) & 0x400C0300001) != 0 || v20 == 276347)
    {
      if (!AppleBCMWLANChipBackplane::dumpPMUCoreEnumerationRegisters(*(v19 + 3360), v11, 0x8000uLL))
      {
        addKeyAndDump("PMU Core Enumeration", v11, v13);
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::dumpDebugInfo(this);
        }
      }
    }

    else
    {
      if (!AppleBCMWLANChipBackplane::dumpCommonCoreEnumerationRegisters(*(v19 + 3360), v11, 0x8000uLL))
      {
        addKeyAndDump("Common Core Enumeration", v11, v13);
      }

      v26 = *(*v5 + 2832);
      if (v26)
      {
        v27 = *v26;
        if (((v27 >> AppleBCMWLANChipManagerPCIe::getCoreID(*(*v5 + 3280), 1u)) & 1) != 0 && !AppleBCMWLANChipBackplane::dumpD11CoreEnumerationRegisters(*(*v5 + 3360), v11, 0x8000uLL))
        {
          addKeyAndDump("D11 Core Enumeration", v11, v13);
        }
      }
    }

    v21 = (*(**(*v5 + 3280) + 240))(*(*v5 + 3280));
    v22 = *v5;
    if (v21)
    {
      if (AppleBCMWLANChipBackplane::dumpCoreRegisterRegionswithMNIInterface(*(v22 + 3360), v11, 0x8000uLL))
      {
        goto LABEL_54;
      }

      v23 = "Core Register Regions with MNI interface";
    }

    else
    {
      v24 = (*(**(v22 + 3280) + 144))(*(v22 + 3280));
      v25 = (*(**(*v5 + 3280) + 152))(*(*v5 + 3280));
      if (AppleBCMWLANChipBackplane::dumpARMCoreEnumerationRegisters(*(*v5 + 3360), v11, 0x8000uLL, v24, v25))
      {
        goto LABEL_54;
      }

      v23 = "ARM Core Enumeration";
    }

    addKeyAndDump(v23, v11, v13);
LABEL_54:
    if (!AppleBCMWLANChipBackplane::dumpPCIeCoreEnumerationRegisters(*(*v5 + 3360), v11, 0x8000uLL))
    {
      addKeyAndDump("PCIe Core Enumeration", v11, v13);
    }

    goto LABEL_56;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::dumpDebugInfo(this);
    }
  }

  return v3;
}

OSStringPtr addKeyAndDump(OSStringPtr result, char *cString, OSDictionary *a3)
{
  if (cString)
  {
    v4 = result;
    result = OSString::withCString(cString);
    if (result)
    {
      v5 = result;
      OSDictionary::setObject(a3, v4, result);
      release = v5->release;

      return (release)(v5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkAPBAccessibility(AppleBCMWLANBusInterfacePCIe *this, int a2, int a3)
{
  APBAccessibilityState = AppleBCMWLANChipBackplane::getAPBAccessibilityState(*(*(this + 9) + 3360));
  v7 = *(this + 9);
  if (APBAccessibilityState == 1)
  {
    if (((*(**(v7 + 3280) + 240))(*(v7 + 3280)) & 1) == 0)
    {
      AppleBCMWLANBusInterfacePCIe::dumpAPBRegisters(this);
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::checkAPBAccessibility(this);
      }
    }

    return 0;
  }

  if (*(v7 + 3723) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::checkAPBAccessibility(this);
      }
    }

    return 0;
  }

  if (a2)
  {
    (*(*this + 1208))(this, "checkAPBAccessibility", 19871);
    v7 = *(this + 9);
  }

  if (*(v7 + 3706) == 1 && (*(v7 + 3710) & 1) != 0)
  {
    return 0;
  }

  if (!(*(**(v7 + 3280) + 240))(*(v7 + 3280)))
  {
    if (AppleBCMWLANBusInterfacePCIe::checkMSAPB(this, a3))
    {
      goto LABEL_19;
    }

LABEL_21:
    AppleBCMWLANChipBackplane::setAPBAccessibilityState(*(*(this + 9) + 3360), 1);
    v8 = 0;
    goto LABEL_22;
  }

  if ((AppleBCMWLANBusInterfacePCIe::checkPMNIAPB(this) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v8 = 1;
LABEL_22:
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:APB accessible: %x\n", "checkAPBAccessibility", 19892, v8);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(AppleBCMWLANBusInterfacePCIe *this)
{
  (*(*this + 1208))(this, "checkTCMAccessibility", 19651);
  *v24 = 0;
  v2 = *(this + 9);
  if (*(v2 + 3706) == 1 && *(v2 + 3710) == 1)
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this);
        return 0;
      }
    }

    return result;
  }

  v4 = AppleBCMWLANBusInterfacePCIe::skipTCMAccess(this);
  v5 = *(this + 9);
  if (!v4 || (*(v5 + 3717) & 1) != 0)
  {
    if (*(v5 + 1305) == 1 && (*(v5 + 3717) & 1) == 0)
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this);
          return 0;
        }
      }

      return result;
    }

    isAPBAccessible = AppleBCMWLANBusInterfacePCIe::isAPBAccessible(this, 0, 0);
    v7 = *(this + 9);
    if ((isAPBAccessible & 1) == 0 && (*(v7 + 4582) & 1) == 0)
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this);
          return 0;
        }
      }

      return result;
    }

    v8 = *(v7 + 3352);
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (!v8)
    {
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this);
          return 0;
        }
      }

      return result;
    }

    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this);
      }
    }

    v25 = -21846;
    AppleBCMWLANChipConfigSpace::readReg16(*(*(this + 9) + 3352), 2u, &v25);
    v9 = *(this + 9);
    if (*(v9 + 3334) != v25)
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:Unexpected device ID. Read: 0x%x, Expected: 0x%x\n");
          return 0;
        }
      }

      return result;
    }

    v10 = *(v9 + 3360);
    if (!v10)
    {
      AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility();
      return LOBYTE(v23[1]);
    }

    if (*(v9 + 3312) == 4399)
    {
      *v23 = 0;
      v21 = 0;
      v22 = 0;
      if (AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(v10, 0x140u, &v23[1]))
      {
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (!result)
        {
          return result;
        }

        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (!result)
        {
          return result;
        }

        v11 = AppleBCMWLANBusInterface::getLogger(this);
        goto LABEL_39;
      }

      if (AppleBCMWLANChipBackplane::readSysmemSlaveWrapperReg32(*(*(this + 9) + 3360), 0x140u, v23))
      {
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (result)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            v13 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v13, "[dk] %s@%d:Failed to read Sysmem slave wrapper reset ctrl register (0x%x) , 0x%x \n");
            return 0;
          }
        }

        return result;
      }

      if (AppleBCMWLANChipBackplane::readOOBRouterWrapperReg32(*(*(this + 9) + 3360), 0x248u, &v22))
      {
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (result)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            v15 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v15, "[dk] %s@%d:Failed to read ARM CA7 DMP ctrl register (0x%x) , 0x%x \n");
            return 0;
          }
        }

        return result;
      }

      if (AppleBCMWLANChipBackplane::readOOBRouterWrapperReg32(*(*(this + 9) + 3360), 0x4C8u, &v21))
      {
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (result)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            v17 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v17, "[dk] %s@%d:Failed to read Sysmem DMP ctrl register (0x%x) , 0x%x \n");
            return 0;
          }
        }

        return result;
      }

      if ((v23[1] & 1) != 0 || (v23[0] & 1) != 0 || (v22 & 1) == 0 || (v21 & 1) == 0)
      {
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (result)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            v20 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v20, "[dk] %s@%d:TCM memory is not accessible. reset ctrl:0x%x 0x%x DMP ctrl:0x%x 0x%x\n");
            return 0;
          }
        }

        return result;
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        shouldLog = CCLogStream::shouldLog();
        result = 1;
        if (!shouldLog)
        {
          return result;
        }

        v19 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v19, "[dk] %s@%d:TCM memory is accessible. reset ctrl:0x%x 0x%x DMP ctrl:0x%x 0x%x\n", "checkTCMAccessibility", 19748, v23[1], v23[0], v22, v21);
      }
    }

    else
    {
      if (AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(v10, 0x800u, &v24[1]))
      {
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (!result)
        {
          return result;
        }

        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (!result)
        {
          return result;
        }

        v11 = AppleBCMWLANBusInterface::getLogger(this);
LABEL_39:
        CCLogStream::logAlert(v11, "[dk] %s@%d:Failed to read ARM Wrapper Reset Ctrl Register (0x%x) , 0x%x \n");
        return 0;
      }

      if (AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(*(*(this + 9) + 3360), 0x408u, v24))
      {
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (result)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            v14 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v14, "[dk] %s@%d:Failed to read ARM Wrapper IO Ctrl Register (0x%x) , 0x%x \n");
            return 0;
          }
        }

        return result;
      }

      if ((v24[1] & 1) != 0 || (v24[0] & 3) != 1)
      {
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (result)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            v16 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v16, "[dk] %s@%d:TCM memory is not accessible. ARM Wrapper Reset Ctrl : 0x%x, IO Ctrl : 0x %x\n");
            return 0;
          }
        }

        return result;
      }
    }

    return 1;
  }

  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpUCodeRegistersDebugInfo(AppleBCMWLANBusInterfacePCIe *this, OSDictionary **a2)
{
  v3 = 3758097085;
  *a2 = 0;
  v5 = this + 72;
  v4 = *(this + 9);
  if ((*(v4 + 1304) & 1) != 0 || !*(v4 + 3248))
  {
    if (AppleBCMWLANBusInterface::getLogger(this) && (AppleBCMWLANBusInterface::getLogger(this), CCLogStream::shouldLog()))
    {
      AppleBCMWLANBusInterfacePCIe::dumpUCodeRegistersDebugInfo(this);
      return 3758097088;
    }

    else
    {
      return 3758097088;
    }
  }

  else
  {
    v7 = IOMallocZeroData();
    if (v7)
    {
      v8 = v7;
      v9 = OSDictionary::withCapacity(4u);
      if (v9)
      {
        v10 = v9;
        v11 = *v5;
        if ((*(*v5 + 4496) & 1) == 0)
        {
          AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
          v11 = *(this + 9);
        }

        v12 = *(v11 + 2832);
        if (v12 && (v13 = *v12, ((v13 >> AppleBCMWLANChipManagerPCIe::getCoreID(*(v11 + 3280), 1u)) & 1) != 0))
        {
          v3 = AppleBCMWLANChipBackplane::dumpUCodeRegisters(*(*v5 + 3360), v8, 0x1000uLL);
          if (!v3)
          {
            addKeyAndDump("UCode Registers", v8, v10);
          }
        }

        else
        {
          v3 = 0;
        }

        *a2 = v10;
        if ((*(*v5 + 4496) & 1) == 0)
        {
          AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
        }
      }

      else if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::dumpUCodeRegistersDebugInfo(this);
        }
      }

      IOFreeData();
    }
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::toggleDeviceWake(AppleBCMWLANBusInterfacePCIe *this, BOOL *a2)
{
  v4 = *(this + 9);
  if (*(v4 + 2844) != 2)
  {
    *(v4 + 1232) = 1;
    AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*(this + 9) + 5192), 1, 0);
  }

  IOSleep(0x64uLL);
  v5 = *(this + 9);
  if (*(v5 + 2844) != 2)
  {
    *(v5 + 1232) = 0;
    AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*(this + 9) + 5192), 0, 0);
  }

  *a2 = 0;
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dsEnableDisable(AppleBCMWLANBusInterfacePCIe *this)
{
  AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
  IOSleep(0x64uLL);
  AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
  return 0;
}

AppleBCMWLANPCIeMMIOHistory *AppleBCMWLANBusInterfacePCIe::setMMIOLogState(AppleBCMWLANBusInterfacePCIe *this, int a2)
{
  result = *(*(this + 9) + 3144);
  if (result)
  {
    if (a2)
    {
      return AppleBCMWLANPCIeMMIOHistory::enableRecording(result);
    }

    else
    {
      return AppleBCMWLANPCIeMMIOHistory::disableRecording(result);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::logState(AppleBCMWLANBusInterfacePCIe *this)
{
  (*(*this + 1208))(this, "logState", 16142);
  v2 = *(this + 9);
  v3 = *(v2 + 3360);
  if (!v3 || (*(v2 + 3725) & 1) != 0 || (*(v2 + 1304) & 1) != 0 || *(v2 + 3706) == 1 && (*(v2 + 3710) & 1) != 0)
  {
    (*(*this + 256))(this, 0, 0, 0, 0);
  }

  else
  {
    AppleBCMWLANChipBackplane::forcePower(v3, 1, 0);
    (*(*this + 256))(this, 0, 0, 0, 1);
    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, 0);
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpState(AppleBCMWLANBusInterfacePCIe *this, char *a2, unsigned int a3, unsigned int a4, int a5)
{
  Logger = AppleBCMWLANBusInterface::getLogger(this);
  v162 = __PAIR64__(a3, a4);
  v165 = a4;
  v166 = a2;
  v163 = a3;
  v10 = IO80211Print(Logger, 5, -1, 0, a2, a3, a4, "Power State Transitions [ts, current --> next, type, src line]:\n");
  v11 = *(*(this + 9) + 3088) & 0x1F;
  v12 = *(*(this + 9) + 3088) + 1;
  v13 = v12 & 0x1F;
  if (v11 != v13)
  {
    v14 = v12 & 0x1F;
    do
    {
      v15 = AppleBCMWLANBusInterface::getLogger(this);
      v16 = *(this + 9) + 2048;
      v17 = v16 + 24 * v14;
      v18 = *v17 / 0x3B9ACA00uLL;
      v19 = *v17 % 0x3B9ACA00uLL / 0x3E8;
      v20 = *(v17 + 8);
      v21 = &off_1003D18C8;
      v22 = 14;
      while (*(v21 - 2) != v20)
      {
        v21 += 2;
        if (!--v22)
        {
          v23 = "UNKNOWN";
          goto LABEL_8;
        }
      }

      v23 = *v21;
LABEL_8:
      v24 = &off_1003D18C8;
      v25 = 14;
      while (*(v24 - 2) != *(v16 + 24 * v14 + 12))
      {
        v24 += 2;
        if (!--v25)
        {
          v26 = "UNKNOWN";
          goto LABEL_13;
        }
      }

      v26 = *v24;
LABEL_13:
      v27 = *(v16 + 24 * v14 + 18);
      if (v27 == 1)
      {
        v28 = "Transition";
      }

      else if (v27 == 2)
      {
        v28 = "Request";
      }

      else
      {
        v29 = v27 == 3;
        v28 = "(unknown)";
        if (v29)
        {
          v28 = "<RESET>";
        }
      }

      v10 = IO80211Print(v15, 5, -1, 0, a2, v163 + v10, v165 - v10, "%3d: [%06llu.%06llu, %20s --> %-20s, %s, %d] \n", v13, v18, v19, v23, v26, v28, *(v16 + 24 * v14 + 16)) + v10;
      v13 = (v14 + 1) & 0x1F;
      v14 = (v14 + 1) & 0x1F;
    }

    while (v11 != v13);
  }

  v30 = AppleBCMWLANBusInterface::getLogger(this);
  v31 = IO80211Print(v30, 5, -1, 0, a2, v163 + v10, v165 - v10, "\n") + v10;
  v32 = AppleBCMWLANBusInterface::getLogger(this);
  v33 = IO80211Print(v32, 5, -1, 0, v166, v163 + v31, v165 - v31, "\n") + v31;
  v157 = v163 + v33;
  v159 = v33;
  v152 = AppleBCMWLANBusInterface::getLogger(this);
  v154 = v165 - v33;
  v34 = *(this + 9);
  v35 = &off_1003D18C8;
  v36 = 14;
  v37 = "UNKNOWN";
  while (*(v35 - 2) != *(v34 + 1224))
  {
    v35 += 2;
    if (!--v36)
    {
      goto LABEL_25;
    }
  }

  v37 = *v35;
LABEL_25:
  v38 = &off_1003D18C8;
  v39 = 14;
  v150 = v37;
  while (*(v38 - 2) != *(v34 + 1228))
  {
    v38 += 2;
    if (!--v39)
    {
      v148 = "UNKNOWN";
      goto LABEL_30;
    }
  }

  v148 = *v38;
LABEL_30:
  v146 = *(v34 + 1234);
  v40 = *(v34 + 1232);
  v41 = *(v34 + 3016);
  v42 = *(v34 + 2869);
  v43 = *(v34 + 3056);
  v44 = v43 / 0x3B9ACA00;
  v45 = v43 % 0x3B9ACA00 / 0x3E8;
  v46 = *(v34 + 3064);
  v47 = v46 / 0x3B9ACA00;
  v48 = v46 % 0x3B9ACA00 / 0x3E8;
  v49 = *(v34 + 3080);
  v50 = v49 / 0x3B9ACA00;
  v51 = v49 % 0x3B9ACA00;
  BusState = AppleBCMWLANBusInterface::getBusState(this);
  v53 = IO80211Print(v152, 5, -1, 0, v166, v157, v154, "PowerState: Current=%s, LastRequest=%s, ForceAlwaysOnCt=%d, DWState=%d, DSEntryReqCt=%llu, InDS=%d, Device DS Exit@%06llu.%06llu, Host DS Exit@%06llu.%06llu, Last D3 Entry ACK@%06llu.%06llu, Bus State:%d ,HostReadyNotifyTS=%d\n", v150, v148, v146, v40, v41, v42, v44, v45, v47, v48, v50, v51 / 0x3E8uLL, BusState, *(*(this + 9) + 4080)) + v159;
  v54 = AppleBCMWLANBusInterface::getLogger(this);
  v55 = *(this + 9);
  v56 = IO80211Print(v54, 5, -1, 0, v166, v163 + v53, v165 - v53, "Host DS Exit Statistics: Total: %llu, {%llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu } \n", v55[392], v55[191], v55[192], v55[193], v55[194], v55[195], v55[196], v55[197], v55[198], v55[199], v55[200], v55[201], v55[202], v55[203]) + v53;
  v57 = AppleBCMWLANBusInterface::getLogger(this);
  v58 = *(this + 9);
  if (*(v58 + 2868))
  {
    v59 = "ENABLED";
  }

  else
  {
    v59 = "DISABLED";
  }

  v60 = IO80211Print(v57, 5, -1, 0, v166, v163 + v56, v165 - v56, "Deep Sleep: State:%s, Counters: Entry: %lld, Exit %lld Last: Entry Request: %06llu.%06llu, Entry ACKed: %06llu.%06llu, Exit Notification: %06llu.%06llu\n", v59, *(v58 + 3016), *(v58 + 3024), *(v58 + 3032) / 0x3B9ACA00uLL, *(v58 + 3032) % 0x3B9ACA00uLL / 0x3E8, *(v58 + 3040) / 0x3B9ACA00uLL, *(v58 + 3040) % 0x3B9ACA00uLL / 0x3E8, *(v58 + 3048) / 0x3B9ACA00uLL, *(v58 + 3048) % 0x3B9ACA00uLL / 0x3E8) + v56;
  v61 = AppleBCMWLANBusInterface::getLogger(this);
  v62 = *(this + 9);
  v63 = IO80211Print(v61, 5, -1, 0, v166, v163 + v60, v165 - v60, "INT State at Exit:0x%x, INT State at Power Change:0x%x. Waiters: DSEx=%d D3En=%d State[%d %d %d %d %d]\n", v62[768], v62[769], v62[309], v62[310], v62[301], v62[302], v62[303], v62[304], v62[305]) + v60;
  v64 = AppleBCMWLANBusInterface::getLogger(this);
  v65 = *(this + 9);
  v66 = IO80211Print(v64, 5, -1, 0, v166, v163 + v63, v165 - v63, "MSI: Last: %06llu.%06llu to %06llu.%06llu; LAST H2D DB: at=%06llu.%06llu. CtrlCompl@lastMSI: {%d,%d}, ringDrain=%06llu.%06llu, cbReportStart=%06llu.%06llu, cbReportComplete=%06llu.%06llu\n", *(v65 + 2904) / 0x3B9ACA00uLL, *(v65 + 2904) % 0x3B9ACA00uLL / 0x3E8, *(v65 + 2928) / 0x3B9ACA00uLL, *(v65 + 2928) % 0x3B9ACA00uLL / 0x3E8, *(v65 + 2936) / 0x3B9ACA00uLL, *(v65 + 2936) % 0x3B9ACA00uLL / 0x3E8, *(v65 + 3860), *(v65 + 3864), *(v65 + 2960) / 0x3B9ACA00uLL, *(v65 + 2960) % 0x3B9ACA00uLL / 0x3E8, *(v65 + 2968) / 0x3B9ACA00uLL, *(v65 + 2968) % 0x3B9ACA00uLL / 0x3E8, *(v65 + 2976) / 0x3B9ACA00uLL, *(v65 + 2976) % 0x3B9ACA00uLL / 0x3E8) + v63;
  v67 = AppleBCMWLANBusInterface::getLogger(this);
  v68 = *(this + 9);
  v69 = IO80211Print(v67, 5, -1, 0, v166, v163 + v66, v165 - v66, "LAST IOCTL Request Send(%06llu.%06llu): %d, IOCTL Request Complete Received(%06llu.%06llu), IOCTL Buffer Complete Received(%06llu.%06llu) : %d, transactionID %d \n", *(v68 + 2944) / 0x3B9ACA00uLL, *(v68 + 2944) % 0x3B9ACA00uLL / 0x3E8, *(v68 + 2952), *(v68 + 2984) / 0x3B9ACA00uLL, *(v68 + 2984) % 0x3B9ACA00uLL / 0x3E8, *(v68 + 2992) / 0x3B9ACA00uLL, *(v68 + 2992) % 0x3B9ACA00uLL / 0x3E8, *(v68 + 3000), *(v68 + 3004)) + v66;
  v70 = AppleBCMWLANBusInterface::getLogger(this);
  v71 = *(this + 9);
  v72 = IO80211Print(v70, 5, -1, 0, v166, v163 + v69, v165 - v69, "Interrupt Counts: H2D: DB=%u D2H: ctf=%u ct=%u MaxRetry=%u D3Ack=%u DSReq=%u DSEx=%u DB=%u DBNoWork=%u\n", v71[324], v71[313], v71[314], v71[315], v71[317], v71[318], v71[319], v71[321], v71[322]) + v69;
  v73 = AppleBCMWLANBusInterface::getLogger(this);
  v74 = *(this + 9);
  v75 = IO80211Print(v73, 5, -1, 0, v166, v163 + v72, v165 - v72, "IPC: cm=%d cmbf=%d evbuf=%d tsb=%d rxbf=%d tx=%d flc=%d fld=%d bb=%d\n", v74[287], v74[288], v74[289], v74[297], v74[290], v74[291], v74[294], v74[295], v74[710]) + v72;
  v155 = AppleBCMWLANBusInterface::getLogger(this);
  v153 = (*(**(*(this + 9) + 3552) + 72))(*(*(this + 9) + 3552));
  v151 = (*(**(*(this + 9) + 3560) + 72))(*(*(this + 9) + 3560));
  v149 = (*(**(*(this + 9) + 3576) + 72))(*(*(this + 9) + 3576));
  v147 = (*(**(*(this + 9) + 3568) + 72))(*(*(this + 9) + 3568));
  v145 = (*(**(*(this + 9) + 1088) + 72))(*(*(this + 9) + 1088));
  v144 = (*(**(*(this + 9) + 1096) + 72))(*(*(this + 9) + 1096));
  v143 = (*(**(*(this + 9) + 1112) + 72))(*(*(this + 9) + 1112));
  v76 = (*(**(*(this + 9) + 1120) + 72))(*(*(this + 9) + 1120));
  v77 = (*(**(*(this + 9) + 1128) + 72))(*(*(this + 9) + 1128));
  v78 = (*(**(*(this + 9) + 1136) + 72))(*(*(this + 9) + 1136));
  TxDescriptorCommandQueueSize = AppleBCMWLANBusInterface::getTxDescriptorCommandQueueSize(this);
  TxCompletionDescriptorCommandQueueSize = AppleBCMWLANBusInterface::getTxCompletionDescriptorCommandQueueSize(this);
  RxDescriptorCommandQueueSize = AppleBCMWLANBusInterface::getRxDescriptorCommandQueueSize(this);
  RxDescriptorEventQueueSize = AppleBCMWLANBusInterface::getRxDescriptorEventQueueSize(this);
  v83 = IO80211Print(v155, 5, -1, 0, v166, v163 + v75, v165 - v75, "TRK: cTx=%d cRx=%d pTx=%d pRx=%d cF=%d dF=%d cH2D=%d dH2D=%d cD2H=%d dD2H=%d PND: c=%d CMP: c=%d RX: c=%d e=%d\n", v153, v151, v149, v147, v145, v144, v143, v76, v77, v78, TxDescriptorCommandQueueSize, TxCompletionDescriptorCommandQueueSize, RxDescriptorCommandQueueSize, RxDescriptorEventQueueSize) + v75;
  v84 = AppleBCMWLANBusInterface::getLogger(this);
  v85 = IO80211Print(v84, 5, -1, 0, v166, v163 + v83, v165 - v83, "Primary Interrupt Pending %d, MSIEpoch %llu\n", *(*(this + 9) + 1248), *(*(this + 9) + 4768)) + v83;
  v86 = AppleBCMWLANBusInterface::getLogger(this);
  LODWORD(v85) = IO80211Print(v86, 5, -1, 0, v166, v163 + v85, v165 - v85, "Epochs -> ControlRingSignal : %llu, ControlRingService: %llu, ReportCompleteSignal: %llu, ReportCompleteService : %llu\n", *(*(this + 9) + 4776), *(*(this + 9) + 4784), *(*(this + 9) + 4792), *(*(this + 9) + 4800)) + v85;
  v87 = AppleBCMWLANBusInterface::getLogger(this);
  v88 = IO80211Print(v87, 5, -1, 0, v166, v163 + v85, v165 - v85, "IPC RequestIOTx ts=%llu\n", *(*(this + 9) + 5232)) + v85;
  v89 = *(this + 9);
  if (a5 && (*(v89 + 2869) & 1) == 0)
  {
    v90 = AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this);
    v89 = *(this + 9);
  }

  else
  {
    v90 = 0;
  }

  if (*(v89 + 1306) == 1)
  {
    v91 = (*(**(v89 + 344) + 280))(*(v89 + 344), "ivars->fPCIeRxBufferPostRing", v166, v88 + HIDWORD(v162), v162 - v88, v90) + v88;
    v92 = (*(**(*(this + 9) + 312) + 280))() + v91;
    v93 = (*(**(*(this + 9) + 320) + 280))() + v92;
    v94 = (*(**(*(this + 9) + 360) + 280))() + v93;
    v95 = (*(**(*(this + 9) + 352) + 280))() + v94;
    v96 = *(this + 9);
    v97 = *(v96 + 4480);
    if (v97)
    {
      LowLatencyTxCompRing = AppleBCMWLANPCIeSkywalk::getLowLatencyTxCompRing(v97);
      v96 = *(this + 9);
      v99 = v165;
      if (LowLatencyTxCompRing)
      {
        v100 = AppleBCMWLANPCIeSkywalk::getLowLatencyTxCompRing(*(v96 + 4480));
        v95 += (*(*v100 + 280))(v100, "LowLatencyTxCompRing", v166, v95 + HIDWORD(v162), v162 - v95, v90);
        v96 = *(this + 9);
      }
    }

    else
    {
      v99 = v165;
    }

    v101 = *(v96 + 4480);
    if (v101 && AppleBCMWLANPCIeSkywalk::getLowLatencyRxCompRing(v101))
    {
      LowLatencyRxCompRing = AppleBCMWLANPCIeSkywalk::getLowLatencyRxCompRing(*(*(this + 9) + 4480));
      v95 += (*(*LowLatencyRxCompRing + 280))(LowLatencyRxCompRing, "LowLatencyRxCompRing", v166, v95 + HIDWORD(v162), v162 - v95, v90);
    }

    v103 = AppleBCMWLANBusInterface::getLogger(this);
    v88 = v95 + IO80211Print(v103, 5, -1, 0, v166, v163 + v95, v99 - v95, "Flows: reserved=%d maxId=%d max_possible=%d max_seen=%d current=%d\n", *(*(this + 9) + 372), *(*(this + 9) + 376), *(*(this + 9) + 368), *(*(this + 9) + 4616), *(*(this + 9) + 4620));
    v104 = *(this + 9);
    v105 = *(v104 + 372);
    if (v105 <= 0x2B && v105 < *(v104 + 376))
    {
      v106 = v105 + 602;
      do
      {
        v107 = *(v104 + 8 * v106);
        if (v107)
        {
          v109 = (*(*v107 + 280))(v107, "FlowRing", v166, v88 + HIDWORD(v162), v162 - v88, v90) + v88;
          v110 = AppleBCMWLANBusInterface::getLogger(this);
          v111 = *(*(this + 9) + 8 * v106);
          v112 = (*(*v111 + 208))(v111);
          v113 = AppleBCMWLANBusInterfacePCIe::workPendingForFlow(this, v112);
          v88 = v109 + IO80211Print(v110, 5, -1, 0, v166, v109 + v163, v165 - v109, "     <pnd:%d>\n", v113);
          v104 = *(this + 9);
        }

        if ((v106 - 602) > 0x2A)
        {
          break;
        }

        v108 = v106 - 601;
        ++v106;
      }

      while (v108 < *(v104 + 376));
    }
  }

  v114 = IOMallocZeroData();
  v161 = v114;
  if (v114)
  {
    v115 = v114;
    AppleBCMWLANHistogram::dump(*(*(this + 9) + 3096), "ivars->fMSIDeltaTimeUS", v114, 1023, 0);
    v116 = AppleBCMWLANBusInterface::getLogger(this);
    v117 = v165;
    v88 += IO80211Print(v116, 5, -1, 0, v166, v163 + v88, v165 - v88, "%s\n", v115);
  }

  else
  {
    v117 = v165;
  }

  v171 = 0u;
  memset(v172, 0, sizeof(v172));
  v169 = 0u;
  v170 = 0u;
  __dst = 0u;
  v168 = 0u;
  v118 = v172;
  AppleBCMWLANPCIeDoorbell::getDebugInfo(*(*(this + 9) + 3640), &__dst);
  v119 = AppleBCMWLANBusInterface::getLogger(this);
  v120 = v88 + IO80211Print(v119, 5, -1, 0, v166, v163 + v88, v117 - v88, "[%s] lastServed: start=%06lld.%06lld end=%06lld.%06lld cancel: %06lld.%06lld request: any=%06lld.%06lld timer=%06lld.%06lld for=%06lld.%06lld no sched: last=%06lld.%06lld debounced detect: last=%06lld.%06lld\n", "ivars->fDoorbellRinger", __dst / 0x3B9ACA00, __dst % 0x3B9ACA00 / 0x3E8, *(&__dst + 1) / 0x3B9ACA00uLL, *(&__dst + 1) % 0x3B9ACA00uLL / 0x3E8, v168 / 0x3B9ACA00, v168 % 0x3B9ACA00 / 0x3E8, *(&v168 + 1) / 0x3B9ACA00uLL, *(&v168 + 1) % 0x3B9ACA00uLL / 0x3E8, v169 / 0x3B9ACA00, v169 % 0x3B9ACA00 / 0x3E8, *(&v169 + 1) / 0x3B9ACA00uLL, *(&v169 + 1) % 0x3B9ACA00uLL / 0x3E8, v170 / 0x3B9ACA00, v170 % 0x3B9ACA00 / 0x3E8, *(&v170 + 1) / 0x3B9ACA00uLL, *(&v170 + 1) % 0x3B9ACA00uLL / 0x3E8);
  v121 = AppleBCMWLANBusInterface::getLogger(this);
  v122 = 0;
  v123 = v117;
  v124 = v120 + IO80211Print(v121, 5, -1, 0, v166, v120 + v163, v117 - v120, "Doorbell records:\n");
  do
  {
    v125 = AppleBCMWLANBusInterface::getLogger(this);
    v124 += IO80211Print(v125, 5, -1, 0, v166, v163 + v124, v123 - v124, "[%i]: count=%llu, type=%u, success=%u timestamp=%06llu.%06llu\n", v122++, *(v118 - 1), *(v118 - 4), *(v118 - 3), *v118 / 0x3B9ACA00uLL, *v118 % 0x3B9ACA00uLL / 0x3E8);
    v118 += 3;
  }

  while (v122 != 16);
  v156 = AppleBCMWLANBusInterface::getLogger(this);
  v158 = v123 - v124;
  v126 = AppleBCMWLANConfigManager::wompEnabled(*(*(this + 9) + 3640));
  DynSARMode = AppleBCMWLANTxPowerManager::getDynSARMode(*(*(this + 9) + 3640));
  v128 = AppleBCMWLANIOReporting::getAddReporterCallback(*(*(this + 9) + 3640)) / 0x3B9ACA00uLL;
  v129 = (274877907 * (AppleBCMWLANIOReporting::getAddReporterCallback(*(*(this + 9) + 3640)) % 0x3B9ACA00uLL)) >> 38;
  v130 = AppleBCMWLANIOReporting::getTarget(*(*(this + 9) + 3640)) / 0x3B9ACA00uLL;
  Target = AppleBCMWLANIOReporting::getTarget(*(*(this + 9) + 3640));
  v132 = v166;
  v133 = v124 + IO80211Print(v156, 5, -1, 0, v166, v163 + v124, v158, "[%s] Scheduled=%d, ScheduledDeltaUS=%d, Last Ring=%06llu.%06llu, Next Ring=%06llu.%06llu\n", "ivars->fDoorbellRinger", v126, DynSARMode, v128, v129, v130, (274877907 * (Target % 0x3B9ACA00)) >> 38);
  v134 = *(this + 9);
  if (*(v134 + 5184))
  {
    v135 = AppleBCMWLANBusInterface::getLogger(this);
    v164 = v163 + v133;
    *&__dst = 0;
    if (AppleOLYHALPlatformFunction::getLastChipsetPowerOffDK(*(*(this + 9) + 5184), &__dst, 0))
    {
      v136 = 0;
    }

    else
    {
      v136 = __dst / 0x3B9ACA00;
    }

    *&__dst = 0;
    if (AppleOLYHALPlatformFunction::getLastChipsetPowerOffDK(*(*(this + 9) + 5184), &__dst, 0))
    {
      v137 = 0;
    }

    else
    {
      v137 = __dst % 0x3B9ACA00 / 0x3E8;
    }

    *&__dst = 0;
    if (AppleOLYHALPlatformFunction::getLastChipsetPowerOnDK(*(*(this + 9) + 5184), &__dst, 0))
    {
      v138 = 0;
    }

    else
    {
      v138 = __dst / 0x3B9ACA00;
    }

    *&__dst = 0;
    v132 = v166;
    if (AppleOLYHALPlatformFunction::getLastChipsetPowerOnDK(*(*(this + 9) + 5184), &__dst, 0))
    {
      v139 = 0;
    }

    else
    {
      v139 = __dst % 0x3B9ACA00 / 0x3E8;
    }

    v133 += IO80211Print(v135, 5, -1, 0, v166, v164, v165 - v133, "Last Chipset Power Off=%06llu.%06llu, Last Chipset Power On=%06llu.%06llu\n", v136, v137, v138, v139);
    v134 = *(this + 9);
  }

  *&v172[0] = 0;
  v170 = 0u;
  v171 = 0u;
  v169 = 0u;
  __dst = 0u;
  *(&v168 + 1) = v162;
  LODWORD(v169) = v133;
  *&v168 = v132;
  v140 = IO80211FlowQueueDatabase::print(*(v134 + 1312), &__dst) + v133;
  v141 = AppleBCMWLANBusInterfacePCIe::printMRUFlowIdList(this, v132, v140 + HIDWORD(v162), v162 - v140);
  if (v161)
  {
    IOFreeData();
  }

  return (v141 + v140);
}

uint64_t AppleBCMWLANBusInterfacePCIe::setLogLevel(AppleBCMWLANBusInterface *a1, int a2)
{
  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Setting log level to 0x%llx\n", "setLogLevel", 16550, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::setLogFlags(AppleBCMWLANBusInterfacePCIe *this, uint64_t a2)
{
  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Setting log flags to 0x%llx\n", "setLogFlags", 16556, a2);
    }
  }

  return result;
}

uint64_t busSetLogLevelCallback(const OSMetaClassBase *a1, int a2)
{
  v3 = OSMetaClassBase::safeMetaCast(a1, gAppleBCMWLANBusInterfacePCIeMetaClass);

  return AppleBCMWLANBusInterfacePCIe::setLogLevel(v3, a2);
}

uint64_t busSetLogFlagsCallback(const OSObject *a1, uint64_t a2)
{
  v3 = OSMetaClassBase::safeMetaCast(a1, gAppleBCMWLANBusInterfacePCIeMetaClass);

  return AppleBCMWLANBusInterfacePCIe::setLogFlags(v3, a2);
}

OSMetaClassBase *AppleBCMWLANBusInterfacePCIe::createTimestampLogPipe(AppleBCMWLANBusInterfacePCIe *this, const char *a2, const char *a3)
{
  v5 = IOMallocZeroTyped();
  if (v5)
  {
    v6 = v5;
    *v5 = xmmword_1003B0650;
    *(v5 + 16) = xmmword_1003B0660;
    *(v5 + 32) = 1000;
    strlcpy((v5 + 36), a3, 0x100uLL);
    ModuleInstanceId = AppleBCMWLANBusInterface::getModuleInstanceId(this);
    snprintf((v6 + 292), 0xF0uLL, "wlan%u", ModuleInstanceId);
    strcpy((v6 + 580), "WiFi");
    *(v6 + 548) = 0x106400000;
    *(v6 + 560) = 0u;
    OSMetaClassBase::safeMetaCast(this, gAppleBCMWLANBusInterfacePCIeMetaClass);
    AppleBCMWLANBusInterface::getCCPipeOwner(this);
    v8 = (*(*this + 80))(this);
    (*(*v8 + 168))(v8);
    v9 = CCPipe::withOwnerNameCapacity();
    v10 = OSMetaClassBase::safeMetaCast(v9, gCCLogPipeMetaClass);
    IOFree(v6, 0x350uLL);
    return v10;
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createTimestampLogPipe(this);
      }
    }

    return 0;
  }
}

OSMetaClassBase *AppleBCMWLANBusInterfacePCIe::createTimestampLogStream(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  v4 = IOMallocZeroTyped();
  if (v4)
  {
    v5 = v4;
    *v4 = 0;
    *(v4 + 8) = -1;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
    {
      *(v5 + 8) = 127;
    }

    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    *(v5 + 48) = a1;
    ModuleInstanceId = AppleBCMWLANBusInterface::getModuleInstanceId(a1);
    snprintf((v5 + 88), 0xF0uLL, "wlan%u", ModuleInstanceId);
    v7 = CCStream::withPipeAndName();
    v8 = OSMetaClassBase::safeMetaCast(v7, gCCLogStreamMetaClass);
    IOFree(v5, 0x358uLL);
    return v8;
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createTimestampLogStream(a1);
      }
    }

    return 0;
  }
}

BOOL AppleBCMWLANBusInterfacePCIe::createTimestampLoggers(AppleBCMWLANBusInterfacePCIe *this)
{
  result = 1;
  if (*(*(this + 9) + 4420) == 1)
  {
    *(*(this + 9) + 4432) = AppleBCMWLANBusInterfacePCIe::createTimestampLogPipe(this, "TimestampTxLog", "TimestampTxLog");
    if (!*(*(this + 9) + 4432))
    {
      return 0;
    }

    *(*(this + 9) + 4448) = AppleBCMWLANBusInterfacePCIe::createTimestampLogPipe(this, "TimestampRxLog", "TimestampRxLog");
    v2 = *(this + 9);
    if (!*(v2 + 4448))
    {
      return 0;
    }

    (*(**(v2 + 4432) + 72))(*(v2 + 4432));
    (*(**(*(this + 9) + 4448) + 72))(*(*(this + 9) + 4448));
    *(*(this + 9) + 4424) = AppleBCMWLANBusInterfacePCIe::createTimestampLogStream(this, *(*(this + 9) + 4432), "TimestampTxStream");
    v3 = *(this + 9);
    if (!*(v3 + 4424))
    {
      return 0;
    }

    *(*(this + 9) + 4440) = AppleBCMWLANBusInterfacePCIe::createTimestampLogStream(this, *(v3 + 4448), "TimestampRxStream");
    if (!*(*(this + 9) + 4440))
    {
      return 0;
    }
  }

  return result;
}

IOStateReporter *AppleBCMWLANBusInterfacePCIe::updateRxBufFillState(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(this + 9);
  result = *(v2 + 3192);
  if (result)
  {
    v4 = *(v2 + 344);
    if (v4)
    {
      ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(v4);
      result = *(*(this + 9) + 3192);
      if (ReadableItemCount)
      {
        if (ReadableItemCount >= 9)
        {
          if (ReadableItemCount >= 0x10)
          {
            if (ReadableItemCount >= 0x41)
            {
              if (ReadableItemCount >= 0x81)
              {
                v6 = ReadableItemCount >= 0x101;
                v4 = 5;
                if (v6)
                {
                  v4 = 0;
                }
              }

              else
              {
                v4 = 4;
              }
            }

            else
            {
              v4 = 3;
            }
          }

          else
          {
            v4 = 2;
          }
        }

        else
        {
          v4 = 1;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    v7 = kFillLevelStates[2 * v4];

    return IOStateReporter::setChannelState(result, 0x5278427546696CuLL, v7);
  }

  return result;
}

BOOL (__cdecl *AppleBCMWLANBusInterfacePCIe::destroyReporters(IOService *this))(OSObjectInterface *__hidden this)
{
  removePropertyHelper(this, "IOReportLegendPublic");
  removePropertyHelper(this, "IOReportLegend");
  this[1].OSObject::OSObjectInterface::__vftable[199].free = 0;
  this[1].OSObject::OSObjectInterface::__vftable[197].free = 0;
  this[1].OSObject::OSObjectInterface::__vftable[198].free = 0;
  this[1].OSObject::OSObjectInterface::__vftable[199].init = 0;
  this[1].OSObject::OSObjectInterface::__vftable[198].init = 0;
  this[1].OSObject::OSObjectInterface::__vftable[200].init = 0;
  result = this[1].OSObject::OSObjectInterface::__vftable[197].init;
  if (result)
  {
    result = (*(*result + 16))(result);
    this[1].OSObject::OSObjectInterface::__vftable[197].init = 0;
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::configureReportGated(AppleBCMWLANBusInterfacePCIe *this, OSCollection *a2, OSData *a3, unsigned int *a4, unsigned int *a5)
{
  *a4 = 0;
  v7 = IOReporter::configureAllReports(*(*(this + 9) + 3152), a2, a3, a4, a5);
  v8 = v7;
  if (*a4)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    AppleBCMWLANBusInterfacePCIe::configureReportGated(this, a4, v7);
  }

  return v8;
}

uint64_t AppleBCMWLANBusInterfacePCIe::updateReportGated(IOService *this, OSCollection *a2, OSData *a3, unsigned int *a4, unsigned int *a5, unint64_t a6, IOMemoryDescriptor *a7)
{
  AppleBCMWLANBusInterfacePCIe::updateAllReports(this);
  updated = IOReporter::updateAllReports(this[1].OSObject::OSObjectInterface::__vftable[197].init, a2, a3, a4, a5, a6, a7, v14);
  v16 = updated;
  if (*a4)
  {
    v17 = updated == 0;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    AppleBCMWLANBusInterfacePCIe::updateReportGated(this, a4, updated);
  }

  return v16;
}

uint64_t AppleBCMWLANBusInterfacePCIe::updateAllReports(IOService *this)
{
  (this->OSObject::OSMetaClassBase::__vftable[21].Dispatch)(this, "updateAllReports", 17537);
  IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[197].free, 0x45763030507274uLL, LODWORD(this[1].OSObject::OSObjectInterface::__vftable[81].init));
  IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[197].free, 0x45763031507274uLL, LODWORD(this[1].OSObject::OSObjectInterface::__vftable[78].free));
  IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[197].free, 0x45763032507274uLL, HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[78].free));
  IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[197].free, 0x45763033507274uLL, LODWORD(this[1].OSObject::OSObjectInterface::__vftable[79].init));
  IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[197].free, 0x45763034507274uLL, HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[79].init));
  IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[197].free, 0x45763035507274uLL, LODWORD(this[1].OSObject::OSObjectInterface::__vftable[79].free));
  IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[197].free, 0x45763036507274uLL, HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[79].free));
  IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[197].free, 0x45763037507274uLL, HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[80].init));
  IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[197].free, 0x45763038507274uLL, LODWORD(this[1].OSObject::OSObjectInterface::__vftable[80].free));
  AppleBCMWLANBusInterfacePCIe::updateRxBufFillState(this);
  v2 = 0;
  v3 = &kReportTxCompleteStatusChannel;
  v4 = 4200;
  do
  {
    v5 = 7;
    v6 = v3;
    v7 = v4;
    do
    {
      IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[200].init, *v6, *(this[1].OSObject::OSObjectInterface::__vftable + v7 - 4));
      IOSimpleReporter::setValue(this[1].OSObject::OSObjectInterface::__vftable[200].init, v6[14], *(&this[1].init + v7));
      v7 += 32;
      v6 += 2;
      --v5;
    }

    while (v5);
    ++v2;
    v4 += 8;
    v3 += 28;
  }

  while (v2 != 4);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v76 = v9;
  v77 = v9;
  *__str = v9;
  v75 = v9;
  v10 = this[1].OSObject::OSObjectInterface::__vftable;
  if (!v10[197].init)
  {
    return 0;
  }

  if (!v10[198].init)
  {
    this[1].OSObject::OSObjectInterface::__vftable[198].init = IOSimpleReporter::with(this, 0x10, 0, v8);
    v11 = this[1].OSObject::OSObjectInterface::__vftable;
    init = v11[198].init;
    if (!init)
    {
      return 0;
    }

    OSSet::setObject(v11[197].init, init);
    (*(*this[1].OSObject::OSObjectInterface::__vftable[198].init + 16))(this[1].OSObject::OSObjectInterface::__vftable[198].init);
  }

  if (!AppleBCMWLANBusInterfacePCIe::isBusAccessible(this, 0) || !this[1].OSObject::OSObjectInterface::__vftable[210].init)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v72 = 0;
  v15 = 0;
  do
  {
    v16 = 0;
    v73 = (v14 << 32) | 0x3000000000;
    v17 = core;
    v18 = 3145728;
    v71 = v14;
    do
    {
      v19 = v13 + v16;
      if (*(AppleBCMWLANChipBackplane::getRegionAccessCounters(this[1].OSObject::OSObjectInterface::__vftable[210].init) + v13 + v16 + 408))
      {
        v20 = 805306368;
        if (v16 == 120)
        {
          v20 = 822083584;
        }

        v21 = v20 | v73;
        v22 = 3145728;
        if (v16 != 120)
        {
          v22 = v18;
        }

        v23 = v21 + v22;
        v24 = this[1].OSObject::OSObjectInterface::__vftable;
        v25 = v24[198].init;
        RegionAccessCounters = AppleBCMWLANChipBackplane::getRegionAccessCounters(v24[210].init);
        if (!IOSimpleReporter::setValue(v25, v23 | 0x4231300000003030, *(RegionAccessCounters + v19 + 408)))
        {
          v15 = 0;
          goto LABEL_36;
        }

        snprintf(__str, 0x40uLL, "%s%s%s", region[v14], *v17, "Read ");
        IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[198].init, v23 | 0x4231300000003030, __str);
        v27 = this[1].OSObject::OSObjectInterface::__vftable;
        v28 = v27[198].init;
        v29 = *(AppleBCMWLANChipBackplane::getRegionAccessCounters(v27[210].init) + v13 + v16 + 408);
        v30 = v23 | 0x4231300000003030;
        goto LABEL_35;
      }

      if (*(AppleBCMWLANChipBackplane::getRegionAccessCounters(this[1].OSObject::OSObjectInterface::__vftable[210].init) + v19 + 412))
      {
        v31 = 805306368;
        if (v16 == 120)
        {
          v31 = 822083584;
        }

        v32 = v31 | v73;
        v33 = 3145728;
        if (v16 != 120)
        {
          v33 = v18;
        }

        v34 = v32 + v33;
        v35 = this[1].OSObject::OSObjectInterface::__vftable;
        v36 = v35[198].init;
        v37 = AppleBCMWLANChipBackplane::getRegionAccessCounters(v35[210].init);
        if (IOSimpleReporter::setValue(v36, v34 | 0x4231300000003031, *(v37 + v13 + v16 + 412)))
        {
          snprintf(__str, 0x40uLL, "%s%s%s", region[v71], *v17, "Write");
          IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[198].init, v34 | 0x4231300000003031, __str);
          v38 = this[1].OSObject::OSObjectInterface::__vftable;
          v28 = v38[198].init;
          v14 = v71;
          v29 = *(AppleBCMWLANChipBackplane::getRegionAccessCounters(v38[210].init) + v13 + v16 + 412);
          v30 = v34 | 0x4231300000003031;
LABEL_35:
          v15 = IOSimpleReporter::setValue(v28, v30, v29);
          v72 = 1;
          goto LABEL_36;
        }

LABEL_38:
        v15 = 0;
        v14 = v71;
        goto LABEL_36;
      }

      if (*(AppleBCMWLANChipBackplane::getRegionAccessCounters(this[1].OSObject::OSObjectInterface::__vftable[210].init) + v13 + v16 + 416))
      {
        v39 = 805306368;
        if (v16 == 120)
        {
          v39 = 822083584;
        }

        v40 = v39 | v73;
        v41 = 3145728;
        if (v16 != 120)
        {
          v41 = v18;
        }

        v42 = v40 + v41;
        v43 = this[1].OSObject::OSObjectInterface::__vftable;
        v44 = v43[198].init;
        v45 = AppleBCMWLANChipBackplane::getRegionAccessCounters(v43[210].init);
        if (IOSimpleReporter::setValue(v44, v42 | 0x4231300000003032, *(v45 + v13 + v16 + 416)))
        {
          v14 = v71;
          snprintf(__str, 0x40uLL, "%s%s%s", region[v71], *v17, "Wait ");
          IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[198].init, v42 | 0x4231300000003032, __str);
          v46 = this[1].OSObject::OSObjectInterface::__vftable;
          v28 = v46[198].init;
          v29 = *(AppleBCMWLANChipBackplane::getRegionAccessCounters(v46[210].init) + v13 + v16 + 416);
          v30 = v42 | 0x4231300000003032;
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v14 = v71;
LABEL_36:
      v16 += 12;
      v18 += 0x10000;
      ++v17;
    }

    while (v16 != 132);
    v47 = 0;
    v48 = -408;
    do
    {
      v49 = v13 + v48;
      if (*(AppleBCMWLANChipBackplane::getRegionAccessCounters(this[1].OSObject::OSObjectInterface::__vftable[210].init) + v13 + v48 + 408))
      {
        v50 = (((v47 % 0xAu) << 16) | ((v47 / 0xAu) << 24)) + v73 + 805306368;
        v51 = this[1].OSObject::OSObjectInterface::__vftable;
        v52 = v51[198].init;
        v53 = AppleBCMWLANChipBackplane::getRegionAccessCounters(v51[210].init);
        if (!IOSimpleReporter::setValue(v52, v50 | 0x4230300000303030, *(v53 + v49 + 408)))
        {
          v15 = 0;
          goto LABEL_54;
        }

        snprintf(__str, 0x40uLL, "%s%s%s", region[v14], wrapper[v47], "Read ");
        IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[198].init, v50 | 0x4230300000303030, __str);
        v55 = this[1].OSObject::OSObjectInterface::__vftable;
        v56 = v55[198].init;
        v57 = *(AppleBCMWLANChipBackplane::getRegionAccessCounters(v55[210].init) + v13 + v48 + 408);
        v58 = v50 | 0x4230300000303030;
        goto LABEL_51;
      }

      if (*(AppleBCMWLANChipBackplane::getRegionAccessCounters(this[1].OSObject::OSObjectInterface::__vftable[210].init) + v49 + 412))
      {
        v59 = (((v47 % 0xAu) << 16) | ((v47 / 0xAu) << 24)) + v73 + 805306368;
        v60 = 0x4230300000303031;
        v61 = this[1].OSObject::OSObjectInterface::__vftable;
        v62 = v61[198].init;
        v63 = AppleBCMWLANChipBackplane::getRegionAccessCounters(v61[210].init);
        if (IOSimpleReporter::setValue(v62, v59 | 0x4230300000303031, *(v63 + v13 + v48 + 412)))
        {
          snprintf(__str, 0x40uLL, "%s%s%s", region[v71], wrapper[v47], "Write");
          IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[198].init, v59 | 0x4230300000303031, __str);
          v64 = this[1].OSObject::OSObjectInterface::__vftable;
          v56 = v64[198].init;
          v14 = v71;
          v57 = *(AppleBCMWLANChipBackplane::getRegionAccessCounters(v64[210].init) + v13 + v48 + 412);
LABEL_50:
          v58 = v59 | v60;
LABEL_51:
          v15 = IOSimpleReporter::setValue(v56, v58, v57);
          v72 = 1;
          goto LABEL_54;
        }

LABEL_52:
        v15 = 0;
        goto LABEL_53;
      }

      if (*(AppleBCMWLANChipBackplane::getRegionAccessCounters(this[1].OSObject::OSObjectInterface::__vftable[210].init) + v13 + v48 + 416))
      {
        v59 = (((v47 % 0xAu) << 16) | ((v47 / 0xAu) << 24)) + v73 + 805306368;
        v60 = 0x4230300000303032;
        v65 = this[1].OSObject::OSObjectInterface::__vftable;
        v66 = v65[198].init;
        v67 = AppleBCMWLANChipBackplane::getRegionAccessCounters(v65[210].init);
        if (IOSimpleReporter::setValue(v66, v59 | 0x4230300000303032, *(v67 + v13 + v48 + 416)))
        {
          v14 = v71;
          snprintf(__str, 0x40uLL, "%s%s%s", region[v71], wrapper[v47], "Wait ");
          IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[198].init, v59 | 0x4230300000303032, __str);
          v68 = this[1].OSObject::OSObjectInterface::__vftable;
          v56 = v68[198].init;
          v57 = *(AppleBCMWLANChipBackplane::getRegionAccessCounters(v68[210].init) + v13 + v48 + 416);
          goto LABEL_50;
        }

        goto LABEL_52;
      }

LABEL_53:
      v14 = v71;
LABEL_54:
      ++v47;
      v48 += 12;
    }

    while (v48);
    ++v14;
    v13 += 540;
  }

  while (v14 != 3);
  if (v72)
  {
    AppleBCMWLANUtil::removeReporterFromLegend(this, 0, "Backplane Accesses", "Accesses", v54);
    IOReportLegend::addReporterLegend(this, this[1].OSObject::OSObjectInterface::__vftable[198].init, "Backplane Accesses", "Accesses", v69);
  }

  return v15;
}

uint64_t AppleBCMWLANBusInterfacePCIe::ConfigureReport_Impl(AppleBCMWLANBusInterfacePCIe *this, OSCollection *a2, OSData *a3, unsigned int *a4)
{
  if ((*(**(*(this + 9) + 3464) + 144))(*(*(this + 9) + 3464)))
  {

    return AppleBCMWLANBusInterfacePCIe::configureReportGated(this, a2, a3, a4, v8);
  }

  else
  {
    v10 = *(*(this + 9) + 3464);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___ZN28AppleBCMWLANBusInterfacePCIe20ConfigureReport_ImplEP6OSDatajPj_block_invoke;
    v11[3] = &__block_descriptor_tmp_860;
    v11[4] = this;
    v12 = a3;
    v11[5] = a2;
    v11[6] = a4;
    return (*(*v10 + 112))(v10, v11);
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::UpdateReport_Impl(IOService *this, OSCollection *a2, OSData *a3, unsigned int *a4, unsigned int *a5, unint64_t a6, IOMemoryDescriptor *a7)
{
  if ((*(*this[1].OSObject::OSObjectInterface::__vftable[216].free + 144))(this[1].OSObject::OSObjectInterface::__vftable[216].free))
  {

    return AppleBCMWLANBusInterfacePCIe::updateReportGated(this, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    free = this[1].OSObject::OSObjectInterface::__vftable[216].free;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = ___ZN28AppleBCMWLANBusInterfacePCIe17UpdateReport_ImplEP6OSDatajPjyyP18IOMemoryDescriptor_block_invoke;
    v16[3] = &__block_descriptor_tmp_861;
    v16[4] = this;
    v17 = a3;
    v16[5] = a2;
    v16[6] = a4;
    v16[7] = a5;
    v16[8] = a6;
    v16[9] = a7;
    return (*(*free + 112))(free, v16);
  }
}

void AppleBCMWLANBusInterfacePCIe::gatherEPConfigRegSpace(AppleBCMWLANBusInterfacePCIe *this, void *a2)
{
  foundCapabilityOffset = 0;
  v2 = *(this + 9);
  v3 = *(v2 + 3248);
  Logger = AppleBCMWLANBusInterface::getLogger(this);
  v5 = Logger;
  if (v3)
  {
    for (i = 0; i != 64; i += 4)
    {
      IOPCIDevice::ConfigurationRead32(v3, i, (v2 + i + 1344));
    }

    if (IOPCIDevice::FindPCICapability(v3, 0x10u, 0, &foundCapabilityOffset, 0))
    {
      if (v5 && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(v5, "[dk] %s@%d:No PCIe Express Capability Register on the EP\n", "gatherEPConfigRegSpace", 17707);
      }
    }

    else
    {
      v7 = 0;
      v8 = foundCapabilityOffset;
      do
      {
        IOPCIDevice::ConfigurationRead32(v3, v8 + v7, (v2 + v7 + 1464));
        v7 += 4;
      }

      while (v7 != 36);
      if (v5 && CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::gatherEPConfigRegSpace(v2, v5);
      }
    }

    foundCapabilityOffset = 0;
    if (IOPCIDevice::FindPCICapability(v3, 0xFFFFFFFF, 0, &foundCapabilityOffset, 0))
    {
      if (v5)
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v5, "[dk] %s@%d:No AER Capability on the EP\n");
        }
      }
    }

    else
    {
      v9 = 0;
      v10 = foundCapabilityOffset;
      do
      {
        IOPCIDevice::ConfigurationRead32(v3, v10 + v9, (v2 + v9 + 1408));
        v9 += 4;
      }

      while (v9 != 56);
      if (v5)
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v5, "[dk] %s@%d:Received AER, Config Reg Space Dump : UnCorErrStat 0x%08x CorrErrStat 0x%08x AERCapCtl 0x%08x\n", "gatherEPConfigRegSpace", 17720, *(v2 + 1412), *(v2 + 1424), *(v2 + 1432));
        }

        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::gatherEPConfigRegSpace(v2, v5);
        }
      }
    }
  }

  else if (Logger && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(v5, "[dk] %s@%d:No wlan IOPCIDevice nub found\n");
  }
}

void AppleBCMWLANBusInterfacePCIe::pciePortErrorDispatch(OSObject *a1)
{
  v11 = &v11;
  v12 = &v11;
  IOLockLock(*(a1[1].ivars + 352));
  ivars = a1[1].ivars;
  v3 = ivars + 1504;
  v4 = *(ivars + 189);
  if (*v4 != (ivars + 1504) || (v5 = *v3, *(*v3 + 8) != v3))
  {
    __break(1u);
  }

  if (v5 == v3)
  {
    v11 = &v11;
    v12 = &v11;
  }

  else
  {
    v11 = *v3;
    v12 = v4;
    *(v5 + 8) = &v11;
    *v4 = &v11;
    *(ivars + 188) = ivars + 1504;
    *(ivars + 189) = v3;
    ivars = a1[1].ivars;
  }

  IOLockUnlock(*(ivars + 352));
  v6 = v11;
  if (v11 != &v11)
  {
    do
    {
      v7 = v6 - 2;
      v8 = *v6;
      if ((a1->OSMetaClassBase::__vftable[21].getMetaClass)(a1, *(v6 - 4), *(v6 - 1)))
      {
        ClassNameHelper = getClassNameHelper(a1);
        panic("%s::%s(): PCIe port error type %u not handled", ClassNameHelper, "pciePortErrorDispatch", *v7);
      }

      v9 = v7[1];
      if (v9)
      {
        (*(*v9 + 16))(v9);
        v7[1] = 0;
      }

      IOFree(v7, 0x20uLL);
      v6 = v8;
    }

    while (v8 != &v11);
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::PortErrorMsgHandlerGated(AppleBCMWLANBusInterfacePCIe *this, int a2, OSData *a3)
{
  (*(*this + 184))(this);
  v6 = *(*(this + 9) + 4552);
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 9) + 4552) = 0;
  }

  if (a3)
  {
    *(*(this + 9) + 4552) = OSData::withData(a3);
  }

  if (a2 == 3)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::PortErrorMsgHandlerGated(this);
      }
    }

    AppleBCMWLANBusInterfacePCIe::forcedSoCRAMRead(this, (*(this + 9) + 3688), (*(this + 9) + 3696));
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::PortErrorMsgHandlerGated(this);
      }
    }

    v11 = (*(*this + 984))(this);
    setPropertyHelper(v11, "forcedWLANSoCRAM", *(*(this + 9) + 3688));
    goto LABEL_25;
  }

  if (a2 == 2)
  {
LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  if (a2 != 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logEmergency(Logger, "[dk] %s@%d:Unexpected error reported %d\n", "PortErrorMsgHandlerGated", 17937, a2);
      }
    }

    goto LABEL_25;
  }

  isPortControlAMFMManagedDK = AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(*(*(this + 9) + 5192), 0);
  v8 = *(this + 9);
  if (isPortControlAMFMManagedDK && *(v8 + 3706) != 1)
  {
    return 0;
  }

  if ((AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(*(v8 + 5192), 0) & 1) == 0)
  {
    FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
    CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x45FEu, "PortErrorMsgHandlerGated", 0, -469794028, "unexpected link down");
  }

  if (*(*(this + 9) + 3705))
  {
    v10 = 3758097084;
  }

  else
  {
    v10 = 0;
  }

LABEL_26:
  v12 = *(this + 9);
  if (*(v12 + 3705) == 1)
  {
    v13 = *(v12 + 4536);
  }

  else
  {
    v13 = 1000;
  }

  IOSleep(v13);
  v14 = *(this + 9);
  if (*(v14 + 2844) != 2)
  {
    AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(v14 + 5192), *(v14 + 1232), 0);
  }

  return v10;
}

uint64_t AppleBCMWLANBusInterfacePCIe::forcedSoCRAMRead(AppleBCMWLANBusInterfacePCIe *this, OSData **a2, const void **a3)
{
  (*(*this + 1208))(this, "forcedSoCRAMRead", 17971);
  AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 1, 0);
  if ((AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this) & 1) == 0)
  {
    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, 0);
    return 0;
  }

  v6 = (*(*this + 1008))(this);
  if (!v6)
  {
    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, 0);
    return 3758096385;
  }

  v7 = v6;
  if (*a2)
  {
    ((*a2)->release)(*a2);
    *a2 = 0;
  }

  *a3 = 0;
  *a2 = OSData::withCapacity(v7);
  v8 = IO80211Buffer::allocBufferSingle();
  v10 = *(this + 9);
  if (!v8)
  {
    AppleBCMWLANChipBackplane::forcePower(*(v10 + 3360), 0, 0);
    return 3758097085;
  }

  v11 = v8;
  v12 = *(v10 + 3368);
  if (v12 || (*(*(this + 9) + 3368) = AppleBCMWLANChipMemory::withMap(0, *(v10 + 3280), *(v10 + 3144), v9), (v12 = *(*(this + 9) + 3368)) != 0))
  {
    AppleBCMWLANChipMemory::readRAM(v12, 0, v7, v11);
    v13 = *a2;
    BytesNoCopy = IO80211Buffer::getBytesNoCopy(v11);
    OSData::appendBytes(v13, BytesNoCopy, v7);
    *a3 = OSData::getBytesNoCopy(*a2);
    v15 = *(this + 9);
    v16 = *(v15 + 3280);
    if (v16)
    {
      isCoexCPUTrapSupported = AppleBCMWLANChipManagerPCIe::isCoexCPUTrapSupported(v16);
      v15 = *(this + 9);
      if (isCoexCPUTrapSupported)
      {
        if ((*(v15 + 3713) & 1) == 0)
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::forcedSoCRAMRead(this);
            }
          }

          AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(this, "forcedCoexSoCRAM");
          v15 = *(this + 9);
        }
      }
    }

    AppleBCMWLANChipBackplane::forcePower(*(v15 + 3360), 0, 0);
    v18 = *(this + 9);
    v19 = *(v18 + 3368);
    if (v19)
    {
      (*(*v19 + 16))(v19);
      *(*(this + 9) + 3368) = 0;
      v18 = *(this + 9);
    }

    *(v18 + 3392) = 0;
    *(v18 + 3376) = 0u;
    IO80211Buffer::returnBuffer(v11);
    (*(MEMORY[0] + 72))(0);
    return 0;
  }

  v20 = 3758097086;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::forcedSoCRAMRead(this);
    }
  }

  return v20;
}

uint64_t AppleBCMWLANBusInterfacePCIe::wake(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = 5;
  do
  {
    v3 = *(this + 9);
    if (*(v3 + 2844) != 2)
    {
      *(v3 + 1232) = 0;
      AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*(this + 9) + 5192), 0, 0);
      v3 = *(this + 9);
    }

    IOSleep(*(v3 + 4540));
    v4 = *(this + 9);
    if (*(v4 + 2844) != 2)
    {
      *(v4 + 1232) = 1;
      AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*(this + 9) + 5192), 1, 0);
      v4 = *(this + 9);
    }

    IOSleep(*(v4 + 4540));
    --v2;
  }

  while (v2);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::wakeupHost(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(*(this + 9) + 3280);
  if (v2)
  {
    if (AppleBCMWLANChipManagerPCIe::hostWakeToggleNotConfigured(v2))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::wakeupHost(this);
        }
      }

      (*(*this + 216))(this, 3);
      v3 = (*(*this + 200))(this, 18101);
      if (v3)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::wakeupHost(this);
          }
        }

        *(*(this + 9) + 4192) = 0;
      }
    }

    else
    {
      AppleBCMWLANBusInterfacePCIe::setHostWakeLevel(this, 1);
      return 0;
    }
  }

  else
  {
    v3 = 3758097131;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::wakeupHost(this);
      }
    }
  }

  return v3;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::setHostWakeLevel(AppleBCMWLANBusInterfacePCIe *this, int a2)
{
  result = (*(*this + 1208))(this, "setHostWakeLevel", 18115);
  v5 = *(this + 9);
  if ((*(v5 + 1304) & 1) == 0 && *(v5 + 3248) && (*(v5 + 3706) & 1) == 0)
  {
    v6 = *(v5 + 2869);
    if (v6 == 1)
    {
      AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
      v5 = *(this + 9);
    }

    AppleBCMWLANChipBackplane::writeCommonCoreReg32(*(v5 + 3360), 0xC40u, 0);
    AppleBCMWLANChipBackplane::writeCommonCoreReg32(*(*(this + 9) + 3360), 0xE00u, 1u);
    AppleBCMWLANChipBackplane::writeCommonCoreReg32(*(*(this + 9) + 3360), 0x6Cu, 0);
    AppleBCMWLANChipBackplane::writeCommonCoreReg32(*(*(this + 9) + 3360), 0x68u, 1u);
    v7 = a2 == 1;
    result = AppleBCMWLANChipBackplane::writeCommonCoreReg32(*(*(this + 9) + 3360), 0x64u, v7);
    *(*(this + 9) + 3768) = v7;
    if (v6)
    {

      return AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getTimestampingCapabilities(AppleBCMWLANBusInterfacePCIe *this, BOOL *a2, BOOL *a3)
{
  v3 = *(*(this + 9) + 3992);
  if (!v3)
  {
    return 3758097095;
  }

  result = 0;
  *a2 = v3 == 2;
  *a3 = *(*(this + 9) + 3992) == 3;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::getTimestampingCapabilities(AppleBCMWLANBusInterfacePCIe *this, BOOL *a2, BOOL *a3)
{
  v3 = *(*(this + 3) + 3992);
  if (!v3)
  {
    return 3758097095;
  }

  result = 0;
  *a2 = v3 == 2;
  *a3 = *(*(this + 3) + 3992) == 3;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::enableTimeSyncEngine(AppleBCMWLANBusInterfacePCIe *this, int a2)
{
  if (!AppleBCMWLANBusInterface::getLogger(this) || (AppleBCMWLANBusInterface::getLogger(this), !CCLogStream::shouldLog()))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  AppleBCMWLANBusInterfacePCIe::enableTimeSyncEngine(this);
  if (a2)
  {
LABEL_4:
    (*(*this + 536))(this);
  }

LABEL_5:
  if (((*(*(this + 9) + 3992) - 1) & 0xFFFFFFFD) != 0)
  {
    return 3758097095;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::getPacketTSCounter(AppleBCMWLANBusInterfacePCIe *this, unsigned int *a2)
{
  v2 = *(*(this + 9) + 3996);
  *a2 = v2;
  IOLog("[WiFiTimeSync] %s::%s, ivars->fPacketTimestampingEnabled = %d\n", "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", "getPacketTSCounter", v2);
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::getPacketTSCounter(AppleBCMWLANBusInterfacePCIe *this, unsigned int *a2)
{
  v2 = *(*(this + 3) + 3996);
  *a2 = v2;
  IOLog("[WiFiTimeSync] %s::%s, ivars->fPacketTimestampingEnabled = %d\n", "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", "getPacketTSCounter", v2);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::enablePacketTimestamping(AppleBCMWLANBusInterfacePCIe *this)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::enablePacketTimestamping(this);
    }
  }

  result = 3758097084;
  v3 = *(this + 9);
  v4 = *(v3 + 3996);
  if (v4 != -1)
  {
    if (v4)
    {
      v5 = v4 + 1;
    }

    else
    {
      if ((*(v3 + 3992) | 2) != 3)
      {
        return 3758097095;
      }

      v5 = 1;
    }

    result = 0;
    *(v3 + 3996) = v5;
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::disablePacketTimestamping(AppleBCMWLANBusInterfacePCIe *this)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::disablePacketTimestamping();
    }
  }

  v2 = *(this + 9);
  v3 = *(v2 + 3996);
  if (v3)
  {
    *(v2 + 3996) = v3 - 1;
  }

  else if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::disablePacketTimestamping(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpTimeSyncInfo(AppleBCMWLANBusInterfacePCIe *this, char *a2, int a3, int a4)
{
  Logger = AppleBCMWLANBusInterface::getLogger(this);
  v9 = IO80211Print(Logger, 5, -1, 0, a2, a3, a4, "TimeSync Capability:\n");
  if (*(*(this + 9) + 3992) == 1)
  {
    v10 = "PTM Timestamping";
  }

  else
  {
    v11 = (*(*this + 608))(this);
    if (AppleBCMWLANCore::isFWTimeSyncCapable(v11))
    {
      v10 = "Legacy HW Timestamping";
    }

    else
    {
      v10 = "HW Timestamping Not";
    }
  }

  v12 = AppleBCMWLANBusInterface::getLogger(this);
  v13 = IO80211Print(v12, 5, -1, 0, a2, a3 + v9, a4 - v9, "\tFirmware:  %s capable\n", v10);
  v14 = *(*(this + 9) + 3992) - 1;
  if (v14 > 2)
  {
    v15 = "Timestamping NOT capable";
  }

  else
  {
    v15 = off_1003D1AB0[v14];
  }

  v16 = v13 + v9;
  v17 = AppleBCMWLANBusInterface::getLogger(this);
  v18 = IO80211Print(v17, 5, -1, 0, a2, a3 + v16, a4 - v16, "\tHost: %s\n", v15) + v16;
  v19 = AppleBCMWLANBusInterface::getLogger(this);
  v20 = IO80211Print(v19, 5, -1, 0, a2, a3 + v18, a4 - v18, "\tIgnoredIfbmap: 0x%08x\n", *(*(this + 9) + 4000)) + v18;
  v21 = AppleBCMWLANBusInterface::getLogger(this);
  if (*(*(this + 9) + 4000))
  {
    v22 = "Ignored";
  }

  else
  {
    v22 = "Use ExtFlags";
  }

  v23 = IO80211Print(v21, 5, -1, 0, a2, a3 + v20, a4 - v20, "\t        STA: %s \n", v22) + v20;
  v24 = AppleBCMWLANBusInterface::getLogger(this);
  if ((*(*(this + 9) + 4000) & 4) != 0)
  {
    v25 = "Ignored";
  }

  else
  {
    v25 = "Use ExtFlags";
  }

  v26 = IO80211Print(v24, 5, -1, 0, a2, a3 + v23, a4 - v23, "\t       AWDL: %s \n", v25) + v23;
  v27 = AppleBCMWLANBusInterface::getLogger(this);
  if ((*(*(this + 9) + 4000) & 8) != 0)
  {
    v28 = "Ignored";
  }

  else
  {
    v28 = "Use ExtFlags";
  }

  v29 = IO80211Print(v27, 5, -1, 0, a2, a3 + v26, a4 - v26, "\t        NAN: %s \n", v28) + v26;
  v30 = AppleBCMWLANBusInterface::getLogger(this);
  v31 = IO80211Print(v30, 5, -1, 0, a2, a3 + v29, a4 - v29, "\tExtendedFlags: 0x%02x\n", *(*(this + 9) + 4005)) + v29;
  v32 = AppleBCMWLANBusInterface::getLogger(this);
  if (*(*(this + 9) + 4005))
  {
    v33 = "Not Allowed";
  }

  else
  {
    v33 = "Allowed";
  }

  v34 = IO80211Print(v32, 5, -1, 0, a2, a3 + v31, a4 - v31, "\t      Retry: %s \n", v33) + v31;
  v35 = AppleBCMWLANBusInterface::getLogger(this);
  if ((*(*(this + 9) + 4005) & 0x20) != 0)
  {
    v36 = "Forced";
  }

  else
  {
    v36 = "Not Forced";
  }

  v37 = IO80211Print(v35, 5, -1, 0, a2, a3 + v34, a4 - v34, "\t    RTS/CTS: %s \n", v36) + v34;
  v38 = AppleBCMWLANBusInterface::getLogger(this);
  if ((*(*(this + 9) + 4005) & 4) != 0)
  {
    v39 = "6Mbps";
  }

  else
  {
    v39 = "Auto";
  }

  v40 = IO80211Print(v38, 5, -1, 0, a2, a3 + v37, a4 - v37, "\t Fixed Rate: %s \n", v39) + v37;
  v41 = AppleBCMWLANBusInterface::getLogger(this);
  if ((*(*(this + 9) + 4005) & 2) != 0)
  {
    v42 = "Disabled";
  }

  else
  {
    v42 = "Allowed";
  }

  v43 = IO80211Print(v41, 5, -1, 0, a2, a3 + v40, a4 - v40, "\tAggregation: %s \n", v42) + v40;
  v44 = AppleBCMWLANBusInterface::getLogger(this);
  if (*(*(this + 9) + 4004))
  {
    v45 = "Enabled";
  }

  else
  {
    v45 = "Not enabled";
  }

  v46 = IO80211Print(v44, 5, -1, 0, a2, a3 + v43, a4 - v43, "\t      TweakAsTS: %s\n", v45) + v43;
  v47 = AppleBCMWLANBusInterface::getLogger(this);
  if (*(*(this + 9) + 4420))
  {
    v48 = "Enabled";
  }

  else
  {
    v48 = "Not eabled";
  }

  v49 = IO80211Print(v47, 5, -1, 0, a2, a3 + v46, a4 - v46, "\t      TSLogging: %s\n", v48) + v46;
  v50 = AppleBCMWLANBusInterface::getLogger(this);
  if (*(*(this + 9) + 4421))
  {
    v51 = "Enabled";
  }

  else
  {
    v51 = "Not eabled";
  }

  IO80211Print(v50, 5, -1, 0, a2, v49 + a3, a4 - v49, "\t  ICMPv6Logging: %s\n", v51);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::configureTimeSyncCapability(OSObject *this, int a2, int a3)
{
  v13 = -1431655766;
  p_ivars = &this[1].ivars;
  ivars = this[1].ivars;
  if (a3 == 2)
  {
    v6 = 3;
LABEL_7:
    *(ivars + 998) = v6;
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    *(ivars + 998) = 0;
    goto LABEL_8;
  }

  if (a2)
  {
    v6 = 1;
    goto LABEL_7;
  }

  if ((*(ivars + 998) - 1) >= 2)
  {
    v12 = 0;
    if (IOParseBootArgNumber("wlan.sw.ts", &v12, 1))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::configureTimeSyncCapability(this);
        }
      }
    }

    if (v12)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    *(p_ivars->ivars + 998) = v11;
  }

LABEL_8:
  if (IOParseBootArgNumber("wlan.pcie.tslogingenabled", &v13, 4))
  {
    *(p_ivars->ivars + 4420) = v13 != 0;
  }

  v7 = p_ivars->ivars;
  if (*(p_ivars->ivars + 4420) == 1)
  {
    v8 = IOParseBootArgNumber("wlan.pcie.tsicmpv6logingenabled", &v13, 4);
    v7 = p_ivars->ivars;
    if (v8)
    {
      *(v7 + 4421) = v13 != 0;
      v7 = p_ivars->ivars;
    }
  }

  if (*(v7 + 4420) == 1)
  {
    AppleBCMWLANBusInterfacePCIe::createTimestampLoggers(this);
    v7 = this[1].ivars;
  }

  *(v7 + 1000) = 1;
  if (IOParseBootArgNumber("wlan.ts.ignore.ifbmap", &v13, 4))
  {
    *(this[1].ivars + 1000) = v13;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::configureTimeSyncCapability(this, p_ivars);
      }
    }
  }

  *(p_ivars->ivars + 4004) = 0;
  if (IOParseBootArgNumber("wlan.debug.tweak.ts", &v13, 4))
  {
    *(this[1].ivars + 4004) = v13 != 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::configureTimeSyncCapability(this, p_ivars);
      }
    }
  }

  *(p_ivars->ivars + 4005) = 39;
  if (IOParseBootArgNumber("wlan.ts.rts", &v13, 4) && !v13)
  {
    *(p_ivars->ivars + 4005) &= ~0x20u;
  }

  if (IOParseBootArgNumber("wlan.ts.retry", &v13, 4) && v13)
  {
    *(p_ivars->ivars + 4005) &= ~1u;
  }

  if (IOParseBootArgNumber("wlan.ts.aggr", &v13, 4) && v13)
  {
    *(p_ivars->ivars + 4005) &= ~2u;
  }

  if (IOParseBootArgNumber("wlan.ts.fixed_rate", &v13, 4) && !v13)
  {
    *(p_ivars->ivars + 4005) &= ~4u;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::configureTimeSyncCapability(this, p_ivars);
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::configureTimeSyncCapability(this, p_ivars);
    }
  }

  ClassNameHelper = getClassNameHelper(this);
  io80211_os_log("[WiFiTimeSync] %s::%s calls enableTimeSyncEngine()\n", ClassNameHelper, "configureTimeSyncCapability");
  (this->OSMetaClassBase::__vftable[8].init)(this, 0);
  return 0;
}

AppleBCMWLANBusInterfacePCIe *AppleBCMWLANBusInterfacePCIe::workaroundPTMIfNeeded(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(this + 9);
  if (*(v2 + 4009) == 1 && *(v2 + 1306) == 1)
  {
    v3 = this;
    IOPCIDevice::SetASPMState(*(v2 + 3248), 0, 0);
    AppleBCMWLANBusInterfacePCIe::configurePTM(v3, 1);
    if (AppleBCMWLANBusInterface::getLogger(v3))
    {
      AppleBCMWLANBusInterface::getLogger(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::workaroundPTMIfNeeded(v3);
      }
    }

    AppleBCMWLANBusInterfacePCIe::writeH2DMailbox(v3, 0x1000000);
    v4 = *(**(*(v3 + 9) + 3616) + 56);

    return v4();
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getTimeSyncInfo(void *a1, char *__dst)
{
  if (*(a1[9] + 3992) == 1)
  {
    strcpy(__dst, "TimeSync Capability:\n\tFirmware: PTM Timestamping \n\tHost: ");
  }

  else
  {
    v4 = (*(*a1 + 608))(a1);
    if (AppleBCMWLANCore::isFWTimeSyncCapable(v4))
    {
      v5 = "TimeSync Capability:\n\tFirmware: Legacy HW Timestamping \n\tHost: ";
    }

    else
    {
      *(__dst + 16) = 2112116;
      v5 = "TimeSync Capability:\n\tFirmware: HW Timestamping Not capable\n\tHost: ";
    }

    v6 = *(v5 + 1);
    *__dst = *v5;
    *(__dst + 1) = v6;
    v7 = *(v5 + 3);
    *(__dst + 2) = *(v5 + 2);
    *(__dst + 3) = v7;
  }

  v8 = *(a1[9] + 3992) - 1;
  if (v8 > 2)
  {
    v9 = "Timestamping NOT capable\n";
  }

  else
  {
    v9 = off_1003D1AC8[v8];
  }

  strlcat(__dst, v9, 0x100uLL);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::shouldDeferError(AppleBCMWLANBusInterfacePCIe *this, int a2)
{
  v2 = 0;
  if (a2 <= -469793000)
  {
    if (a2 != -469794036)
    {
      if (a2 == -469794023)
      {
        v3 = *(this + 9);
        v4 = 4586;
        goto LABEL_11;
      }

      if (a2 != -469794020)
      {
        goto LABEL_9;
      }
    }
  }

  else if ((a2 + 469792999) > 9 || ((1 << (a2 - 25)) & 0x207) == 0)
  {
    if (a2 == -469790715)
    {
      v3 = *(this + 9);
      v4 = 4582;
LABEL_11:
      v2 = *(v3 + v4) ^ 1;
      return v2 & 1;
    }

LABEL_9:
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile(AppleBCMWLANBusInterfacePCIe *this, CCFaultReport *a2)
{
  AppleBCMWLANBusInterface::getCCLogs(this, memory);
  if ((CCDataStream::hasProfileLoaded(memory[4]) & 1) == 0 && !AppleBCMWLAN_isSoCRAMCaptureAllowed() && (AppleBCMWLANChipManagerPCIe::isSafeToCaptureSoCRAM(*(*(this + 9) + 3280)) & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile();
      }
    }

    v14 = OSString::withCString("SoC_RAM");
    v15 = OSString::withCString("Logging profile not enabled or device not debuggable");
    AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v14, v15);
    v7 = 0;
    goto LABEL_28;
  }

  v4 = (*(*this + 1008))(this);
  if (!v4)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile(this);
      }
    }

    v12 = OSString::withCString("SoC_RAM");
    v13 = OSString::withCString("RAM size read is 0");
    AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v12, v13);
    return 3758096385;
  }

  if (!a2)
  {
    return 3758096385;
  }

  v5 = v4;
  if (AppleBCMWLANBusInterfacePCIe::isTCMAccessible(this))
  {
    v6 = v5;
    memory[0] = 0xAAAAAAAAAAAAAAAALL;
    IOBufferMemoryDescriptor::Create(3uLL, v5, 0, memory);
    if (memory[0])
    {
      v7 = (*(*this + 992))(this, 0, memory[0], v5, 0);
      if (v7)
      {
        v8 = OSString::withCString("SoC_RAM");
        v9 = OSString::withCString("Failed to read from memory mapped segment");
        AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v8, v9);
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            Logger = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(Logger, "[dk] %s@%d:Fail to read SoCRAM dump, rv=%x\n", "attachSoCRAMFile", 18868, v7);
          }
        }
      }

      v10 = OSString::withCString("SoC_RAM.bin");
      (*(*a2 + 192))(a2, v10, memory[0]);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v11 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logCrit(v11, "[dk] %s@%d:SoCRAM dump collected, size = %llu\n", "attachSoCRAMFile", 18871, v6);
        }
      }

LABEL_28:
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile(this);
        }
      }

      v16 = *(this + 9);
      if ((*(v16 + 3715) & 1) != 0 || *(v16 + 3716) == 1)
      {
        AppleBCMWLANBusInterfacePCIe::attachCoexSoCRAMFile(this, a2);
        *(*(this + 9) + 3715) = 0;
        *(*(this + 9) + 3716) = 0;
      }

      if (AppleBCMWLANBusInterface::getCCLogDebugFlags(this))
      {
        v17 = OSString::withCString("SoC_RAM");
        v18 = OSString::withCString("Logging profile not enabled or device not debuggable");
        AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v17, v18);
      }

      return v7;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile(this);
      }
    }

    return 3758097085;
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile(this);
      }
    }

    return 0;
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachCoexSoCRAMFile(AppleBCMWLANBusInterfacePCIe *this, CCFaultReport *a2)
{
  if (AppleBCMWLANBusInterfacePCIe::isTCMAccessible(this))
  {
    if (!a2)
    {
      return 3758096385;
    }

    v15 = 122880;
    v4 = OSData::withCapacity(0x1E000u);
    if (v4)
    {
      v5 = v4;
      AppleBCMWLANChipConfigSpace::writeReg32(*(*(this + 9) + 3352), 0x84u, 0x1A000000u);
      v6 = (*(*this + 1000))(this, 0, v5, &v15, 0);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*(this + 9) + 3352), 0x84u, 0);
      if (v6)
      {
LABEL_8:
        (v5->release)(v5);
        return v6;
      }

      v7 = OSData::withCapacity(v15 + 128);
      v8 = v7;
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17 = v9;
      v18 = v9;
      v19 = 0xAAAAAAAAAAAAAAAALL;
      bytes = 0x1504D4443;
      v10 = v15 + 8;
      LODWORD(v17) = v15 + 16;
      if (v10 == v10 << 31 >> 31 && v10 + 8 == (v10 + 8) << 31 >> 31)
      {
        *(&v17 + 1) = 0x1800000000000;
        *(&v18 + 1) = 0x600000000001;
        OSData::appendBytes(v7, &bytes, 4uLL);
        OSData::appendBytes(v8, &bytes + 4, 2uLL);
        OSData::appendBytes(v8, &bytes + 6, 2uLL);
        OSData::appendBytes(v8, &v17, 4uLL);
        OSData::appendBytes(v8, &v17 + 8, 4uLL);
        OSData::appendBytes(v8, &v17 + 12, 4uLL);
        BytesNoCopy = OSData::getBytesNoCopy(v5, 0, 0x18000uLL);
        OSData::appendBytes(v8, BytesNoCopy, 0x18000uLL);
        OSData::appendBytes(v8, &v18 + 8, 4uLL);
        OSData::appendBytes(v8, &v18 + 12, 4uLL);
        v12 = OSData::getBytesNoCopy(v5, 0x18000uLL, 0x6000uLL);
        OSData::appendBytes(v8, v12, 0x6000uLL);
        v13 = OSString::withCString("coex_SoC_RAM.bin");
        (*(*a2 + 192))(a2, v13, v8);
        goto LABEL_8;
      }

      if (v7)
      {
        (v7->release)(v7);
      }

      (v5->release)(v5);
      return 3758097084;
    }

    else
    {
      v6 = 3758097085;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::attachCoexSoCRAMFile(this);
        }
      }
    }
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::attachCoexSoCRAMFile(this);
      }
    }

    return 0;
  }

  return v6;
}

uint64_t AppleBCMWLANBusInterfacePCIe::parseTrapMiniDump(AppleBCMWLANBusInterface *this, _DWORD *a2, uint64_t a3)
{
  v3 = 3758097084;
  v4 = *(this + 9);
  if (*(v4 + 4092) != 1)
  {
    return v3;
  }

  v8 = *(v4 + 2832);
  if (v8)
  {
    if ((*(v8 + 3) & 0x40) != 0)
    {
      return v3;
    }
  }

  v9 = *(a3 + 6);
  if (v9 >= 0x1FD)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Error: Trap Info Hearder Length is %d, larger than %d\n", "parseTrapMiniDump", 18999, *(a3 + 6), 508);
      }
    }

    return v3;
  }

  a2[36] = -1;
  if (v9 < 3)
  {
    return 0;
  }

  v11 = (a3 + 8);
  while (1)
  {
    v12 = v11[1];
    if (v9 - 2 < v12)
    {
      break;
    }

    v13 = *v11;
    v14 = a2;
    if (v13 != 1)
    {
      if (v13 == 21)
      {
        v14 = a2 + 36;
      }

      else
      {
        v14 = a2 + 20;
        if (v13 != 2)
        {
          goto LABEL_17;
        }
      }
    }

    memcpy(v14, v11 + 2, v12);
LABEL_17:
    v15 = v11[1] + 2;
    v11 += v15;
    LOWORD(v9) = v9 - v15;
    if (v9 <= 2u)
    {
      return 0;
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::parseTrapMiniDump(this);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(AppleBCMWLANBusInterfacePCIe *this, CCFaultReport *a2)
{
  v2 = 3758097084;
  v3 = *(this + 9);
  if (*(v3 + 1306) != 1)
  {
    return 3758097112;
  }

  if (a2 && *(v3 + 4092) == 1)
  {
    v123 = 0;
    v6 = (*(*this + 608))(this);
    if (acquireProperty<OSString>(v6, "ModuleInfo", &v123, 0, "IOService"))
    {
      CStringNoCopy = OSString::getCStringNoCopy(v123);
    }

    else
    {
      CStringNoCopy = "UNKNOWN";
    }

    v122 = 0;
    v9 = (*(*this + 608))(this);
    if (acquireProperty<OSString>(v9, "FirmwareVersion", &v122, 0, "IOService"))
    {
      v10 = OSString::getCStringNoCopy(v122);
    }

    else
    {
      v10 = "UNKNOWN";
    }

    *&v11 = 0x3030303030303030;
    *(&v11 + 1) = 0x3030303030303030;
    *__dst = v11;
    v134 = v11;
    v135 = 0;
    v12 = strlen(v10);
    v13 = strnstr(v10, "-", v12);
    if (v13)
    {
      strlcpy(__dst, v13 + 1, 9uLL);
        ;
      }
    }

    else if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Unexpected fw_ver = %s\n", "createTrapMiniDumpLog", 19065, v10);
      }
    }

    memset(out, 170, sizeof(out));
    *&__s1[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__s1 = v14;
    *&__s1[16] = v14;
    uuid_generate(out);
    uuid_unparse(out, __s1);
    v15 = strnlen(__s1, 0x25uLL);
    v130 = 0;
    memset(v129, 0, sizeof(v129));
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v16 = *(this + 9);
    if (*(v16 + 4092) == 1)
    {
      AppleBCMWLANDMASlab::getItemSize(*(v16 + 3504));
    }

    v17 = IOMallocZeroData();
    if (!v17)
    {
      return 3758097085;
    }

    v18 = v17;
    v120 = a2;
    v19 = *(this + 9);
    if (*(v19 + 4092) == 1)
    {
      BytesNoCopy = AppleBCMWLANDMASlab::getBytesNoCopy(*(v19 + 3504), 0);
      v21 = *(this + 9);
      if (*(v21 + 4092))
      {
        ItemSize = AppleBCMWLANDMASlab::getItemSize(*(v21 + 3504));
LABEL_28:
        memcpy(v18, BytesNoCopy, ItemSize);
        v23 = *(*(this + 9) + 2832);
        if (!v23 || (*(v23 + 3) & 0x40) == 0)
        {
          AppleBCMWLANBusInterfacePCIe::parseTrapMiniDump(this, &v124, v18);
        }

        __n = v15;
        v24 = IOMallocZeroData();
        v25 = v24;
        if (v24)
        {
          *v24 = 0;
          v26 = snprintf(v24, 0xFC8uLL, "\nException Type: %d\n", v124);
          if (v26 > 0xFC7)
          {
            LODWORD(v24) = 0;
            v27 = 4040;
          }

          else
          {
            v27 = v26;
            if (v26 == 4039)
            {
              LODWORD(v24) = 0;
            }

            else
            {
              LODWORD(v24) = snprintf(&v25[v26], 4040 - v26, "Exception Subtype: NA\n");
              v28 = 4040;
              if (v24 > 0xFC7)
              {
LABEL_38:
                v29 = 0;
                v30 = v28 + v27;
                if (!v25 || v30 > 0xFC6 || (v31 = 4040, v29 = snprintf(&v25[v30], 4040 - v30, "Exception Note: trap type code is %d\n", v130), v29 <= 0xFC7))
                {
                  v31 = v29;
                }

                v32 = 0;
                v33 = v31 + v30;
                if (!v25 || v33 > 0xFC6 || (v34 = 4040, v32 = snprintf(&v25[v33], 4040 - v33, "Triggered by Thread: 0\n"), v32 <= 0xFC7))
                {
                  v34 = v32;
                }

                v35 = 0;
                v36 = v34 + v33;
                if (!v25 || v36 > 0xFC6 || (v37 = 4040, v35 = snprintf(&v25[v36], 4040 - v36, "\nApplication Specific Information:\n"), v35 <= 0xFC7))
                {
                  v37 = v35;
                }

                v38 = 0;
                v39 = v37 + v36;
                if (!v25 || v39 > 0xFC6 || (v40 = 4040, v38 = snprintf(&v25[v39], 4040 - v39, "WiFi Module:%s\n", CStringNoCopy), v38 <= 0xFC7))
                {
                  v40 = v38;
                }

                v41 = 0;
                v42 = v40 + v39;
                if (!v25 || v42 > 0xFC6 || (v43 = 4040, v41 = snprintf(&v25[v42], 4040 - v42, "WiFi FW Version:%s\n", v10), v41 <= 0xFC7))
                {
                  v43 = v41;
                }

                v44 = 0;
                v45 = v43 + v42;
                if (!v25 || v45 > 0xFC6 || (v46 = 4040, v47 = (*(*v120 + 56))(v120), v48 = OSString::getCStringNoCopy(v47), v44 = snprintf(&v25[v45], 4040 - v45, "WiFi Trap Summary: %s\n", v48), v44 <= 0xFC7))
                {
                  v46 = v44;
                }

                v49 = 0;
                v50 = v46 + v45;
                if (!v25 || v50 > 0xFC6 || (v51 = 4040, v52 = v18, v53 = (*(*v120 + 72))(v120) / 0x3B9ACA00uLL, v54 = (*(*v120 + 72))(v120), v117 = v53, v18 = v52, v49 = snprintf(&v25[v50], 4040 - v50, "WiFi CoreCapture FaultReporter TimeStamp: %llu.%llu\n", v117, (274877907 * (v54 % 0x3B9ACA00)) >> 38), v49 <= 0xFC7))
                {
                  v51 = v49;
                }

                v55 = 0;
                v56 = v51 + v50;
                if (!v25 || v56 > 0xFC6 || (v57 = 4040, v55 = snprintf(&v25[v56], 4040 - v56, "Log UUID: %s\n", __s1), v55 <= 0xFC7))
                {
                  v57 = v55;
                }

                v58 = 0;
                v59 = v57 + v56;
                if (!v25 || v59 > 0xFC6 || (v60 = 4040, v58 = snprintf(&v25[v59], 4040 - v59, "\nWiFi FW Trap Type Code: %d\n", v130), v58 <= 0xFC7))
                {
                  v60 = v58;
                }

                v61 = 0;
                v62 = v60 + v59;
                if (v25 && v62 <= 0xFC6)
                {
                  v63 = *(*(this + 9) + 2832);
                  if (v63)
                  {
                    LODWORD(v63) = (*v63 >> 30) & 1;
                  }

                  v61 = snprintf(&v25[v62], 4040 - v62, "Nested FW Trap: %d\n", v63);
                  if (v61 > 0xFC7)
                  {
                    v61 = 4040;
                  }
                }

                v64 = 0;
                v65 = v61 + v62;
                if (!v25 || v65 > 0xFC6 || (v66 = 4040, v64 = snprintf(&v25[v65], 4040 - v65, "\nFiltered syslog:\nNA\n"), v64 <= 0xFC7))
                {
                  v66 = v64;
                }

                v67 = 0;
                v68 = v66 + v65;
                if (!v25 || v68 > 0xFC6 || (v69 = 4040, v67 = snprintf(&v25[v68], 4040 - v68, "\nThread 0 Crashed:\n"), v67 <= 0xFC7))
                {
                  v69 = v67;
                }

                v70 = 0;
                v71 = v69 + v68;
                do
                {
                  v72 = 0;
                  if (!v25 || v71 > 0xFC6 || (v73 = 4040, v72 = snprintf(&v25[v71], 4040 - v71, "%d   WiFiFWThread            0x%010x\n", v70, *(v129 + v70)), v72 <= 0xFC7))
                  {
                    v73 = v72;
                  }

                  v71 += v73;
                  ++v70;
                }

                while (v70 != 16);
                v74 = 0;
                if (!v25 || v71 > 0xFC6 || (v75 = 4040, v74 = snprintf(&v25[v71], 4040 - v71, "\nThread 0 Crashed with ARM Thread State (32-bit):\n"), v74 <= 0xFC7))
                {
                  v75 = v74;
                }

                v76 = 0;
                v77 = v75 + v71;
                if (!v25 || v77 > 0xFC6 || (v78 = 4040, v76 = snprintf(&v25[v77], 4040 - v77, "    r0: 0x%08x   r1: 0x%08x   r2: 0x%08x   r3: 0x%08x\n    r4: 0x%08x   r5: 0x%08x   r6: 0x%08x   r7: 0x%08x\n    r8: 0x%08x   r9: 0x%08x  r10: 0x%08x  r11: 0x%08x\n   r12: 0x%08x  r13: 0x%08x  r14: 0x%08x  r15: 0x%08x\n  type: 0x%08x  epc: 0x%08x cpsr: 0x%08x spsr: 0x%08x\n", v125, DWORD1(v125), DWORD2(v125), HIDWORD(v125), v126, DWORD1(v126), DWORD2(v126), HIDWORD(v126), v127, DWORD1(v127), DWORD2(v127), HIDWORD(v127), v128, DWORD1(v128), DWORD2(v128), HIDWORD(v128), v124, DWORD1(v124), DWORD2(v124), HIDWORD(v124)), v76 <= 0xFC7))
                {
                  v78 = v76;
                }

                v79 = 0;
                v80 = v78 + v77;
                if (!v25 || v80 > 0xFC6 || (v81 = 4040, v79 = snprintf(&v25[v80], 4040 - v80, "\nBinary Images:\n"), v79 <= 0xFC7))
                {
                  v81 = v79;
                }

                v82 = 0;
                v83 = v81 + v80;
                if (!v25 || v83 > 0xFC6 || (v84 = 4040, v82 = snprintf(&v25[v83], 4040 - v83, "0x00000000 - 0xffffffff WiFiFirmware arm32  <%s> /usr/share/firmware/wifi/\n", __dst), v82 <= 0xFC7))
                {
                  v84 = v82;
                }

                v85 = 0;
                v86 = v84 + v83;
                if (!v25 || v86 > 0xFC6 || (v87 = 4040, v85 = snprintf(&v25[v86], 4040 - v86, "\nEOF\n\n"), v85 <= 0xFC7))
                {
                  v87 = v85;
                }

                if (v123)
                {
                  (v123->release)(v123);
                  v123 = 0;
                }

                if (v122)
                {
                  (v122->release)(v122);
                  v122 = 0;
                }

                v88 = *(*(this + 9) + 4092);
                v89 = IOMallocZeroData();
                if (v89)
                {
                  v90 = v89;
                  if (v88)
                  {
                    v91 = v87 + v86;
                    *v89 = 0;
                    *(v89 + 1) = v91;
                    if (v91 <= 0x18FF8)
                    {
                      memcpy(v89 + 8, v25, v91);
                      v92 = *(this + 9);
                      if (*(v92 + 4092) == 1)
                      {
                        v93 = AppleBCMWLANDMASlab::getItemSize(*(v92 + 3504));
                      }

                      else
                      {
                        v93 = 0;
                      }

                      if (v91 <= 0x18FF0)
                      {
                        v94 = &v90[v91];
                        *(v94 + 2) = 1;
                        *(v94 + 3) = __n + v93 + 4;
                        v95 = (v91 + 16);
                        if (__n + v95 <= 0x19000)
                        {
                          memcpy(&v90[v95], __s1, __n);
                          v96 = v95 + __n;
                          if ((v95 + __n) <= 0x18FFC)
                          {
                            *&v90[v96] = 1347241043;
                            v97 = (v96 + 4);
                            v98 = *(this + 9);
                            if (*(v98 + 4092) == 1)
                            {
                              v99 = AppleBCMWLANDMASlab::getItemSize(*(v98 + 3504));
                            }

                            else
                            {
                              v99 = 0;
                            }

                            if ((v99 + v97) <= 0x19000)
                            {
                              v100 = *(this + 9);
                              if (*(v100 + 4092))
                              {
                                v101 = AppleBCMWLANDMASlab::getItemSize(*(v100 + 3504));
                              }

                              else
                              {
                                v101 = 0;
                              }

                              memcpy(&v90[v97], v18, v101);
                              v102 = *(this + 9);
                              if (*(v102 + 4092) == 1)
                              {
                                v103 = AppleBCMWLANDMASlab::getItemSize(*(v102 + 3504));
                                if (*(*(this + 9) + 4092))
                                {
                                  v104 = 102400;
                                }

                                else
                                {
                                  v104 = 0;
                                }
                              }

                              else
                              {
                                v104 = 0;
                                v103 = 0;
                              }

                              v105 = v103 + v97;
                              if (v103 + v97 <= v104)
                              {
                                __na = (v103 + v97);
                                v108 = (*(*v120 + 56))(v120);
                                v109 = *(*(this + 9) + 3808);
                                v110 = OSString::getCStringNoCopy(v108);
                                if (CCDataStream::openSession(v109, v110))
                                {
                                  v121[0] = 0xAAAAAAAAAAAAAAAALL;
                                  v121[1] = 0xAAAAAAAAAAAAAAAALL;
                                  (*(*v120 + 64))(v120, v121);
                                  CCDataSession::setTimestamp();
                                }

                                if (*(*(this + 9) + 4092))
                                {
                                  v111 = 102400;
                                }

                                else
                                {
                                  v111 = 0;
                                }

                                v112 = OSData::withCapacity(v111);
                                OSData::appendBytes(v112, v90, __na);
                                CCDataStream::saveData();
                                if (v112)
                                {
                                  (v112->release)(v112);
                                }

                                CCDataStream::closeSession();
                                if (*(*(this + 9) + 1520))
                                {
                                  if (AppleBCMWLANBusInterface::getLogger(this))
                                  {
                                    AppleBCMWLANBusInterface::getLogger(this);
                                    if (CCLogStream::shouldLog())
                                    {
                                      AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(this);
                                    }
                                  }
                                }

                                else
                                {
                                  *(*(this + 9) + 1520) = IOMallocZeroData();
                                  v113 = *(this + 9);
                                  v114 = *(v113 + 1520);
                                  if (v114)
                                  {
                                    if (*(v113 + 4092))
                                    {
                                      v115 = 102400;
                                    }

                                    else
                                    {
                                      v115 = 0;
                                    }

                                    memcpy(v114, v90, v115);
                                    (*(**(*(this + 9) + 4096) + 56))(*(*(this + 9) + 4096), 20000);
                                  }

                                  else if (AppleBCMWLANBusInterface::getLogger(this))
                                  {
                                    AppleBCMWLANBusInterface::getLogger(this);
                                    if (CCLogStream::shouldLog())
                                    {
                                      AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(this);
                                    }
                                  }
                                }

                                v2 = 0;
                              }

                              else if (AppleBCMWLANBusInterface::getLogger(this))
                              {
                                AppleBCMWLANBusInterface::getLogger(this);
                                if (CCLogStream::shouldLog())
                                {
                                  v106 = AppleBCMWLANBusInterface::getLogger(this);
                                  if (*(*(this + 9) + 4092))
                                  {
                                    v107 = 102400;
                                  }

                                  else
                                  {
                                    v107 = 0;
                                  }

                                  CCLogStream::logAlert(v106, "[dk] %s@%d:Error: size of trap Crashtracer mini dump blob is %d. larger than %d\n", "createTrapMiniDumpLog", 19192, v105, v107);
                                }
                              }
                            }

                            else if (AppleBCMWLANBusInterface::getLogger(this))
                            {
                              AppleBCMWLANBusInterface::getLogger(this);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(this);
                              }
                            }
                          }

                          else if (AppleBCMWLANBusInterface::getLogger(this))
                          {
                            AppleBCMWLANBusInterface::getLogger(this);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(this);
                            }
                          }
                        }

                        else if (AppleBCMWLANBusInterface::getLogger(this))
                        {
                          AppleBCMWLANBusInterface::getLogger(this);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(this);
                          }
                        }
                      }

                      else if (AppleBCMWLANBusInterface::getLogger(this))
                      {
                        AppleBCMWLANBusInterface::getLogger(this);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(this);
                        }
                      }
                    }

                    else if (AppleBCMWLANBusInterface::getLogger(this))
                    {
                      AppleBCMWLANBusInterface::getLogger(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(this);
                      }
                    }
                  }

                  else if (AppleBCMWLANBusInterface::getLogger(this))
                  {
                    AppleBCMWLANBusInterface::getLogger(this);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(this);
                    }
                  }

                  IOFreeData();
                }

                else
                {
                  v2 = 3758097085;
                }

                if (v25)
                {
                  IOFreeData();
                }

                IOFreeData();
                return v2;
              }
            }
          }
        }

        else
        {
          v27 = 0;
        }

        v28 = v24;
        goto LABEL_38;
      }
    }

    else
    {
      BytesNoCopy = 0;
    }

    ItemSize = 0;
    goto LABEL_28;
  }

  return v2;
}

uint64_t AppleBCMWLANBusInterfacePCIe::skipTCMAccess(AppleBCMWLANBusInterfacePCIe *this)
{
  v1 = *(this + 9);
  v2 = *(v1 + 2832);
  if (!v2)
  {
    return 0;
  }

  if (*v2 == 0x10000000)
  {
    return 1;
  }

  result = AppleBCMWLANChipManagerPCIe::isMultiFunctionChip(*(v1 + 3280));
  if (result)
  {
    v5 = *(this + 9);
    v6 = **(v5 + 2832);
    if (v6)
    {
      v7 = **(v5 + 2832) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      return 0;
    }

    v8 = *(v5 + 4548);
    if (v8 == 2)
    {
      panic("TCM access with inactive device core. ivars->fFWHealthCheck 0x%x\n", v6);
    }

    return v8 == 0;
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpAPBRegisters(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = -16;
  do
  {
    v3 = *(*(this + 9) + v2 + 5324);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:CB0 Wrapper Register Offset 0x%x Value 0x%x\n", "dumpAPBRegisters", 20173, v2 + 2064, v3);
      }
    }

    v2 += 4;
  }

  while (v2);
  v5 = -32;
  do
  {
    v6 = *(*(this + 9) + v5 + 5356);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v7 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v7, "[dk] %s@%d:CB0 Wrapper Register Offset 0x%x Value 0x%x\n", "dumpAPBRegisters", 20179, v5 + 2336, v6);
      }
    }

    v5 += 4;
  }

  while (v5);
  v8 = -32;
  do
  {
    v9 = *(*(this + 9) + v8 + 5388);
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        v11 = AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::logAlert(v11, "[dk] %s@%d:CB1 Wrapper Register Offset 0x%x Value 0x%x\n", "dumpAPBRegisters", 20186, v8 + 2336, v9);
      }
    }

    v8 += 4;
  }

  while (v8);
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkPMNIAPB(AppleBCMWLANBusInterfacePCIe *this)
{
  v16 = -1431655766;
  v15 = -1431655766;
  if (AppleBCMWLANChipBackplane::readPMNICBAPBWrapperReg32(*(*(this + 9) + 3360), 0x140u, &v16))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to read PMNI CB APB wrapper resetctl: 0x%x\n");
      }
    }

    goto LABEL_13;
  }

  if (v16)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v11 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v11, "[dk] %s@%d:PMNI CB APB resetctl wrapper reg non-zero: 0x%x\n");
      }
    }

    goto LABEL_13;
  }

  if (AppleBCMWLANChipBackplane::readPMNICBAPBWrapperReg32(*(*(this + 9) + 3360), 0x110u, &v16))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      goto LABEL_13;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_13;
    }

    v3 = AppleBCMWLANBusInterface::getLogger(this);
    goto LABEL_21;
  }

  if (AppleBCMWLANChipBackplane::readPMNICBAPBWrapperReg32(*(*(this + 9) + 3360), 0x160u, &v15))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      goto LABEL_13;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_13;
    }

    v3 = AppleBCMWLANBusInterface::getLogger(this);
LABEL_21:
    CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to read PMNI CB APB wrapper errorlogstatus: 0x%x\n");
    goto LABEL_13;
  }

  if (((v16 & 0x40000000) != 0 || (v15 & 0x40000000) != 0) && (v16 || v15))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v5 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v5, "[dk] %s@%d:PMNI CB APB errorlogstatus wrapper reg non-zero: data1: 0x%x data2: 0x%x\n");
      }
    }

    goto LABEL_13;
  }

  if (AppleBCMWLANChipBackplane::readPMNIAONPBWrapperReg32(*(*(this + 9) + 3360), 0x140u, &v16))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v6, "[dk] %s@%d:Failed to read PMNI AON APB wrapper resetctl: 0x%x\n");
      }
    }

    goto LABEL_13;
  }

  if (v16)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v7 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v7, "[dk] %s@%d:PMNI AON APB resetctl wrapper reg non-zero: 0x%x\n");
      }
    }

    goto LABEL_13;
  }

  if (AppleBCMWLANChipBackplane::readPMNIAONPBWrapperReg32(*(*(this + 9) + 3360), 0x110u, &v16))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      goto LABEL_13;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

  if (AppleBCMWLANChipBackplane::readPMNIAONPBWrapperReg32(*(*(this + 9) + 3360), 0x160u, &v15))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      goto LABEL_13;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_13;
    }

LABEL_44:
    v8 = AppleBCMWLANBusInterface::getLogger(this);
    CCLogStream::logAlert(v8, "[dk] %s@%d:Failed to read PMNI AON APB wrapper errorlogstatus: 0x%x\n");
    goto LABEL_13;
  }

  if (((v16 & 0x40000000) != 0 || (v15 & 0x40000000) != 0) && (v16 || v15))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v9 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v9, "[dk] %s@%d:PMNI AON APB errorlogstatus wrapper reg non-zero: data1: 0x%x data2: 0x%x\n");
      }
    }

    goto LABEL_13;
  }

  if (AppleBCMWLANChipBackplane::readPMNIWLAPBWrapperReg32(*(*(this + 9) + 3360), 0x140u, &v16))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v10 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v10, "[dk] %s@%d:Failed to read PMNI WL APB wrapper resetctl: 0x%x\n");
      }
    }

    goto LABEL_13;
  }

  if (v16)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v12 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v12, "[dk] %s@%d:PMNI WL APB resetctl wrapper reg non-zero: 0x%x\n");
      }
    }

    goto LABEL_13;
  }

  if (AppleBCMWLANChipBackplane::readPMNIWLAPBWrapperReg32(*(*(this + 9) + 3360), 0x110u, &v16))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      goto LABEL_13;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

  if (AppleBCMWLANChipBackplane::readPMNIWLAPBWrapperReg32(*(*(this + 9) + 3360), 0x160u, &v15))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      goto LABEL_13;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_13;
    }

LABEL_67:
    v13 = AppleBCMWLANBusInterface::getLogger(this);
    CCLogStream::logAlert(v13, "[dk] %s@%d:Failed to read PMNI WL APB wrapper errorlogstatus: 0x%x\n");
    goto LABEL_13;
  }

  if ((v16 & 0x40000000) == 0 && (v15 & 0x40000000) == 0 || !v16 && !v15)
  {
    return 1;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v14 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v14, "[dk] %s@%d:PMNI WL APB errorlogstatus wrapper reg non-zero: data1: 0x%x data2: 0x%x\n");
    }
  }

LABEL_13:
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::checkPMNIAPB(this);
    }
  }

  AppleBCMWLANBusInterfacePCIe::dumpPMNIRegisters(this);
  return 0;
}

BOOL AppleBCMWLANBusInterfacePCIe::checkMSAPB(AppleBCMWLANBusInterfacePCIe *this, int a2)
{
  v32 = -1431655766;
  if (AppleBCMWLANChipBackplane::readAPBBridge0SlaveWrapperReg32(*(*(this + 9) + 3360), 0x800u, &v32, a2))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to read APB wrapper resetctl: 0x%x\n");
      }
    }
  }

  else if (v32)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v5 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v5, "[dk] %s@%d:APB resetctl wrapper reg non-zero: 0x%x\n");
      }
    }
  }

  else if (AppleBCMWLANChipBackplane::readAPBBridge0SlaveWrapperReg32(*(*(this + 9) + 3360), 0x908u, &v32, a2))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v6, "[dk] %s@%d:Failed to read APB wrapper errorlogstatus: 0x%x\n");
      }
    }
  }

  else
  {
    if (!v32)
    {
      if (AppleBCMWLANChipManagerPCIe::isSplitArchitecture(*(*(this + 9) + 3280)))
      {
        if (AppleBCMWLANChipBackplane::readAPBBridge1SlaveWrapperReg32(*(*(this + 9) + 3360), 0x908u, &v32, a2))
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v29 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v29, "[dk] %s@%d:Failed to read CB1 APB wrapper errorlogstatus: 0x%x\n");
            }
          }

          goto LABEL_17;
        }

        if (v32)
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v30 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v30, "[dk] %s@%d:CB1 APB errorlogstatus wrapper reg non-zero: 0x%x\n");
            }
          }

          goto LABEL_17;
        }
      }

      return 1;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v31 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v31, "[dk] %s@%d:APB errorlogstatus wrapper reg non-zero: 0x%x\n");
      }
    }
  }

LABEL_17:
  v7 = -16;
  do
  {
    v8 = AppleBCMWLANChipBackplane::readAPBBridge0SlaveWrapperReg32(*(*(this + 9) + 3360), v7 + 2064, &v32, a2);
    v9 = v8;
    v10 = v32;
    if (v8)
    {
      v10 = v8;
    }

    *(*(this + 9) + v7 + 5324) = v10;
    v11 = AppleBCMWLANBusInterface::getLogger(this);
    if (v9)
    {
      if (v11)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v12 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logCrit(v12, "[dk] %s@%d:Failed to read CB0 APB wrapper offset 0x%x errorlogstatus: 0x%x\n");
        }
      }
    }

    else if (v11)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v13 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logCrit(v13, "[dk] %s@%d:CB0 Wrapper Register Offset 0x%x Value 0x%x\n");
      }
    }

    v7 += 4;
  }

  while (v7);
  v14 = -32;
  do
  {
    v15 = AppleBCMWLANChipBackplane::readAPBBridge0SlaveWrapperReg32(*(*(this + 9) + 3360), v14 + 2336, &v32, a2);
    v16 = v15;
    v17 = v32;
    if (v15)
    {
      v17 = v15;
    }

    *(*(this + 9) + v14 + 5356) = v17;
    v18 = AppleBCMWLANBusInterface::getLogger(this);
    if (v16)
    {
      if (v18)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v19 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logCrit(v19, "[dk] %s@%d:Failed to read CB0 APB wrapper offset 0x%x errorlogstatus: 0x%x\n");
        }
      }
    }

    else if (v18)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v20 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logCrit(v20, "[dk] %s@%d:CB0 Wrapper Register Offset 0x%x Value 0x%x\n");
      }
    }

    v14 += 4;
  }

  while (v14);
  result = AppleBCMWLANChipManagerPCIe::isSplitArchitecture(*(*(this + 9) + 3280));
  if (result)
  {
    v22 = -32;
    do
    {
      v23 = AppleBCMWLANChipBackplane::readAPBBridge1SlaveWrapperReg32(*(*(this + 9) + 3360), v22 + 2336, &v32, a2);
      v24 = v23;
      v25 = v32;
      if (v23)
      {
        v25 = v23;
      }

      *(*(this + 9) + v22 + 5388) = v25;
      v26 = AppleBCMWLANBusInterface::getLogger(this);
      if (v24)
      {
        if (v26)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v27 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logCrit(v27, "[dk] %s@%d:Failed to read CB1 APB wrapper offset 0x%x errorlogstatus: 0x%x\n");
          }
        }
      }

      else if (v26)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v28 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logCrit(v28, "[dk] %s@%d:CB1 Wrapper Register Offset 0x%x Value 0x%x\n");
        }
      }

      v22 += 4;
    }

    while (v22);
    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpPMNIRegisters(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = 0;
  v21 = 0;
  do
  {
    v3 = AppleBCMWLANBusInterfacePCIe::dumpPMNIRegisters(void)const::dmpMNIRegs[v2];
    v4 = AppleBCMWLANChipBackplane::readPMNICBAPBWrapperReg32(*(*(this + 9) + 3360), v3, &v21);
    if (v4)
    {
      v5 = v4;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to read PMNI CB APB wrapper offset : 0x%x ret : 0x%x\n", "dumpPMNIRegisters", 20135, v3, v5);
        }
      }
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v6, "[dk] %s@%d:Debug data PMNI CB APB wrapper offset : 0x%x data : 0x%x\n", "dumpPMNIRegisters", 20137, v3, v21);
      }
    }

    v2 += 4;
  }

  while (v2 != 136);
  for (i = 0; i != 136; i += 4)
  {
    v9 = AppleBCMWLANBusInterfacePCIe::dumpPMNIRegisters(void)const::dmpMNIRegs[i];
    v10 = AppleBCMWLANChipBackplane::readPMNIAONPBWrapperReg32(*(*(this + 9) + 3360), v9, &v21);
    if (v10)
    {
      v11 = v10;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v14 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v14, "[dk] %s@%d:Failed to read PMNI AON APB wrapper offset : 0x%x ret : 0x%x\n", "dumpPMNIRegisters", 20144, v9, v11);
        }
      }
    }

    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        v13 = AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::logAlert(v13, "[dk] %s@%d:Debug data PMNI AON APB wrapper offset : 0x%x data : 0x%x\n", "dumpPMNIRegisters", 20146, v9, v21);
      }
    }
  }

  if (*(*(this + 9) + 4583) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::dumpPMNIRegisters(this);
      }
    }

    for (j = 0; j != 136; j += 4)
    {
      v16 = AppleBCMWLANBusInterfacePCIe::dumpPMNIRegisters(void)const::dmpMNIRegs[j];
      v17 = AppleBCMWLANChipBackplane::readPMNIWLAPBWrapperReg32(*(*(this + 9) + 3360), v16, &v21);
      if (v17)
      {
        v18 = v17;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v20 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v20, "[dk] %s@%d:Failed to read PMNI WL APB wrapperoffset : 0x%x ret : 0x%x\n", "dumpPMNIRegisters", 20158, v16, v18);
          }
        }
      }

      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v19 = AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::logAlert(v19, "[dk] %s@%d:Debug data PMNI WL APB wrapper offset : 0x%x data : 0x%x\n", "dumpPMNIRegisters", 20160, v16, v21);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getTrapInfoSequenceNum(AppleBCMWLANBusInterfacePCIe *this)
{
  if ((*(*this + 560))(this))
  {
    return *(*(this + 9) + 4088);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::getTrapInfoSequenceNum(AppleBCMWLANBusInterfacePCIe *this)
{
  if ((*(*(this - 6) + 560))())
  {
    return *(*(this + 3) + 4088);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::copyTrapInfoBlob(AppleBCMWLANBusInterfacePCIe *this, unsigned __int8 *a2, size_t a3)
{
  v6 = 3758097084;
  if (!(*(*this + 560))(this))
  {
    return 3758097095;
  }

  v7 = *(this + 9);
  v8 = 516;
  if (!*(v7 + 4085))
  {
    v8 = 0;
  }

  if (v8 >= a3)
  {
    memcpy(a2, *(v7 + 4072), a3);
    return 0;
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::copyTrapInfoBlob(AppleBCMWLANBusInterfacePCIe *this, unsigned __int8 *a2, size_t a3)
{
  v6 = 3758097084;
  if (!(*(*(this - 6) + 560))())
  {
    return 3758097095;
  }

  v7 = *(this + 3);
  v8 = 516;
  if (!*(v7 + 4085))
  {
    v8 = 0;
  }

  if (v8 >= a3)
  {
    memcpy(a2, *(v7 + 4072), a3);
    return 0;
  }

  return v6;
}

uint64_t AppleBCMWLANBusInterfacePCIe::copyCrashTracerTrapMiniDump(AppleBCMWLANBusInterfacePCIe *this, unsigned __int8 *a2, size_t a3)
{
  v3 = 3758097084;
  v4 = *(this + 9);
  if (*(v4 + 4092) != 1)
  {
    return 3758097095;
  }

  (*(**(v4 + 4096) + 72))(*(v4 + 4096));
  v8 = *(this + 9);
  v9 = *(v8 + 1520);
  if (v9)
  {
    if (*(v8 + 4092))
    {
      v10 = 102400;
    }

    else
    {
      v10 = 0;
    }

    if (v10 >= a3)
    {
      memcpy(a2, v9, a3);
      IOFreeData();
      v3 = 0;
      *(*(this + 9) + 1520) = 0;
    }

    else if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        v12 = 102400;
        if (!*(*(this + 9) + 4092))
        {
          v12 = 0;
        }

        CCLogStream::logAlert(Logger, "[dk] %s@%d:blob_size is %zu, larger than %u\n", "copyCrashTracerTrapMiniDump", 20373, a3, v12);
      }
    }
  }

  else if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::copyCrashTracerTrapMiniDump(this);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::H2DDebugRingCreateComplete(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANPCIeSubmissionRing *a2, uint64_t a3, void *a4)
{
  v4 = a3;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::H2DDebugRingCreateComplete();
    }
  }

  *(*(this + 9) + 328) = a2;
  (*(**(*(this + 9) + 3840) + 80))(*(*(this + 9) + 3840));
  v7 = *(this + 9);
  if (v4)
  {
    if (*(v7 + 1308))
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANBusInterfacePCIe::H2DDebugRingCreateComplete(this);
        }
      }
    }

    else
    {
      FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
      result = CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x5054u, "H2DDebugRingCreateComplete", 0, -469794022, 0);
      if (result)
      {
        v11 = result;
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (result)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            Logger = AppleBCMWLANBusInterface::getLogger(this);
            return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to report fault with 0x%x\n", "H2DDebugRingCreateComplete", 20566, v11);
          }
        }
      }
    }
  }

  else
  {
    (*(**(v7 + 3472) + 56))(*(v7 + 3472), AppleBCMWLANBusInterfacePCIe::enableCompletionRingGated, *(v7 + 336), *(v7 + 3464), 0, 0);
    v9 = *(**(*(this + 9) + 3472) + 56);

    return v9();
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleRxTimeSync(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(*(result + 72) + 3992) == 3)
  {
    v4 = mach_absolute_time();
    absolutetime_to_nanoseconds();
    return (*(*a3 + 304))(a3, v4);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::readHostSWTimestamp(AppleBCMWLANBusInterfacePCIe *this, const char *a2)
{
  v2 = mach_absolute_time();
  absolutetime_to_nanoseconds();
  return v2;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleTxTimeSync(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(result + 72);
  if (*(v5 + 3992) != 3)
  {
    return result;
  }

  if (*(v5 + 4421))
  {
    v8 = 1;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (v8)
    {
      (*(*a3 + 304))(a3, 0);
    }

    goto LABEL_9;
  }

  v8 = (*(*a3 + 328))(a3, a2);
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v9 = *(*a3 + 528);

  return v9(a3, 1);
}

uint64_t AppleBCMWLANBusInterfacePCIe::convertPTMToAbsolute(AppleBCMWLANBusInterfacePCIe *this, unint64_t a2)
{
  if (!(*(*this + 944))(this) || *(*(this + 9) + 4040) > a2 || (result = continuoustime_to_absolutetime()) == 0)
  {
    result = 0;
    ++*(*(this + 9) + 4056);
  }

  *(*(this + 9) + 4048) = result;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::allocateSkywalkBusResource(OSObject *this)
{
  ivars = this[1].ivars;
  if (*(ivars + 560))
  {
    return 1;
  }

  v3 = *(ivars + 1117);
  v4 = v3;
  if (!v3)
  {
    v5 = *(ivars + 1115);
    if (v5)
    {
      v4 = (v5 + 256);
    }

    else
    {
      v4 = 512;
    }
  }

  v6 = *(ivars + 1114);
  if (v6)
  {
    v7 = v6 + 256;
  }

  else
  {
    v7 = 512;
  }

  v8 = *(ivars + 1116);
  if (v8)
  {
    v9 = 4 * v8;
  }

  else
  {
    v9 = 1024;
  }

  v10 = *(ivars + 1118);
  v11 = 4 * v4 + v7 + 2 * v9;
  v12 = v11 + 256;
  v13 = v11 + 512;
  if (v3)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = 2 * v7;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:Skywalk resources txLlwQueueSize %d txQueueSize %d rxQueueSize %d skywalkPacketPoolSize %d\n", "allocateSkywalkBusResource", 21095, v16, v4, v9, v15);
    }
  }

  v17 = AppleBCMWLANBusInterface::getLogger(this);
  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
  *(this[1].ivars + 560) = AppleBCMWLANPCIeSkywalk::withProviderAndCapacity(this, v4, v16, v9, v15, 2048, v17, FaultReporter, v21);
  if (*(this[1].ivars + 560))
  {
    return 1;
  }

  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANBusInterfacePCIe::allocateSkywalkBusResource(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::isSystemHibernating(AppleBCMWLANBusInterfacePCIe *this, unsigned int *a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v4 = OSString::withCString("com.apple.iokit.pm.sleepdescription");
  if (IOService::StateNotificationItemCopy(*(*(this + 9) + 5216), v4, &v11, 0))
  {
    v5 = 1;
    goto LABEL_20;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  Object = OSDictionary::getObject(v11, "com.apple.iokit.pm.hibernatestate");
  v7 = OSMetaClassBase::safeMetaCast(Object, gOSDataMetaClass);
  v5 = v7;
  if (!v7)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  if (!OSData::getBytesNoCopy(v7))
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v8 = *OSData::getBytesNoCopy(v5);
  if ((v8 & 3) == 0)
  {
    if (AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted == 1)
    {
      (*(*this + 1152))(this, 3825173288, 0);
      v5 = 0;
      *(*(this + 9) + 4560) = 1;
      AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted = 0;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  *a2 = v8;
  if (v8 == 2)
  {
    (*(*this + 1152))(this, 3825173288, 0);
    AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted = 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      v5 = 1;
      if (!CCLogStream::shouldLog())
      {
        v8 = 2;
        goto LABEL_15;
      }

      AppleBCMWLANBusInterfacePCIe::isSystemHibernating(this);
    }

    v8 = 2;
  }

  else if (v8 == 1)
  {
    v5 = 1;
    AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted = 1;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      v5 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::isSystemHibernating(this);
        v5 = 1;
      }
    }

    v8 = 1;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:BusInterfacePCIe: hibernating[0x%08x], statevalue[0x%08x], state[0x%08x] this[%p]", "isSystemHibernating", 21624, v5, v8, *a2, this);
    }
  }

  if (v11)
  {
    (v11->release)(v11);
    v11 = 0;
  }

LABEL_20:
  if (v4)
  {
    (v4->release)(v4);
  }

  return v5;
}

uint64_t AppleBCMWLANBusInterfacePCIe::updateActiveTxPacketCount(uint64_t this, unsigned int a2)
{
  *(*(this + 72) + 1164) += a2;
  if (a2 >= 1)
  {
    *(*(this + 72) + 1168) += a2;
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getTransmitFlowRing(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2)
{
  v2 = *(this + 9);
  if (*(v2 + 372) > a2 || *(v2 + 376) <= a2)
  {
    return 0;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logInfo(Logger, "[dk] %s@%d:%s %d id %d ring %p\n", "getTransmitFlowRing", 21821, "AppleBCMWLANPCIeTransmitFlowRing *AppleBCMWLANBusInterfacePCIe::getTransmitFlowRing(FlowID)", 21821, a2, *(*(this + 9) + 8 * a2 + 4816));
    }
  }

  return *(*(this + 9) + 8 * a2 + 4816);
}

BOOL AppleBCMWLANBusInterfacePCIe::waitForDeviceReady(AppleBCMWLANBusInterfacePCIe *this)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  readData = -21846;
  clock_interval_to_deadline();
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::waitForDeviceReady(this);
    }
  }

  while (1)
  {
    IOPCIDevice::ConfigurationRead16(*(*(this + 9) + 3248), 2uLL, &readData);
    v2 = readData - 2;
    if (v2 < 0xFFFD)
    {
      break;
    }

    IOSleep(0xAuLL);
    if (mach_absolute_time() >= v7)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:AppleBCMWLANBusInterfacePCIe read config timeout: productID %#x\n");
        }
      }

      return v2 < 0xFFFD;
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v5 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v5, "[dk] %s@%d:AppleBCMWLANBusInterfacePCIe read config success: productID %#x\n");
    }
  }

  return v2 < 0xFFFD;
}

uint64_t AppleBCMWLANBusInterfacePCIe::init(AppleBCMWLANBusInterfacePCIe *this)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if ((AppleBCMWLANBusInterface::init(this) & 1) != 0 && AppleBCMWLANBusInterfacePCIe::init(this, v2))
  {
    AppleBCMWLANBusInterface::setBootCheckPointAnchorTime(this, 0, 0);
    v3 = 1;
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this, 1u, 1);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::init(this);
      }
    }
  }

  else
  {
    IOLog("pcie bus interface init fail\n");
    v4 = stringFromBootCheckPoint(1u);
    io80211_os_log("DriverKit Boot Checkpoint, bus[%p] (%d/'%s') - %llu.%09llu\n", this, 1, v4, 0, 0);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::Start_Impl(AppleBCMWLANBusInterfacePCIe *this, IOService *a2)
{
  if (AppleBCMWLANBusInterface::isAbortInit(this))
  {
    v4 = 3758097084;
    IOLog("AppleBCMWLANBusInterfacePCIe::%s(): Aborting WiFi init by boot-arg. \n");
    return v4;
  }

  AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this, 1u, 3);
  if ((*(*this + 832))(this))
  {
    v4 = 3758097084;
    getClassNameHelper(this);
    IOLog("%s::%s() DriverKit configuration disabled\n");
    return v4;
  }

  property = 0;
  if (IOService::SearchProperty(a2, "built-in", "IOService", 1uLL, &property, 0))
  {
    v5 = 1;
  }

  else
  {
    v5 = property == 0;
  }

  v6 = !v5;
  if (property)
  {
    (property->release)(property);
    property = 0;
  }

  v51 = 0;
  v7 = IOParseBootArgNumber("wifibt-external", &v51, 4);
  v8 = v7 && v51 != 0;
  v9 = "is not";
  if (v8)
  {
    v9 = "is";
  }

  IOLog("%s: wifibt-external %s set\n", "kern_return_t AppleBCMWLANBusInterfacePCIe::Start_Impl(IOService *)", v9);
  if (v8 & v6)
  {
    IOLog("%s: ignoring built-in device because wifibt-external is set\n");
LABEL_23:
    IOService::Stop(this, a2, 0);
    return 3758097088;
  }

  if (((v8 | v6) & 1) == 0)
  {
    IOLog("%s: ignoring external device because wifibt-external is not set\n");
    goto LABEL_23;
  }

  v10 = IOLog("%s: Waiting for AppleOLYHAL to registerService()\n", "kern_return_t AppleBCMWLANBusInterfacePCIe::Start_Impl(IOService *)");
  v11 = AppleOLYHAL::waitForAppleOLYHALDK(v10);
  if (v11)
  {
    v4 = v11;
    IOLog("%s: waitForAppleOLYHALDK failed 0x%08x\n", "kern_return_t AppleBCMWLANBusInterfacePCIe::Start_Impl(IOService *)", v11);
LABEL_20:
    v12 = this;
    v13 = a2;
    v14 = 0;
LABEL_21:
    IOService::Stop(v12, v13, v14);
    return v4;
  }

  v16 = this + 72;
  *(*(this + 9) + 5202) = 1;
  *(*(this + 9) + 3248) = OSMetaClassBase::safeMetaCast(a2, gIOPCIDeviceMetaClass);
  v17 = *(*(this + 9) + 3248);
  if (!v17)
  {
    io80211_os_log("Provider is not IOPCIDevice\n");
    goto LABEL_23;
  }

  (*(*v17 + 8))(v17);
  sDevice = *(*(this + 9) + 3248);
  if (IOPCIDevice::Open(sDevice, this, 0))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    v18 = this;
    v19 = a2;
    v20 = 0;
    v21 = 21981;
LABEL_31:
    AppleBCMWLANBusInterface::reportInitFailure(v18, v19, v20, v21);
    goto LABEL_23;
  }

  if (IO80211WorkQueue::Create())
  {
    v4 = 3758097084;
    io80211_os_log("Failure in WiFiWorkQueue::Create()", v43);
LABEL_39:
    v14 = AppleBCMWLANBusInterface::_Dispatch;
    v12 = this;
    v13 = a2;
    goto LABEL_21;
  }

  v22 = (*(**(*(this + 9) + 3464) + 168))(*(*(this + 9) + 3464));
  if (OSObject::SetDispatchQueue(this, "Default", v22, 0))
  {
    v4 = 3758097084;
    io80211_os_log("Failed to set Default Dispatch Queue ret:%d\n");
    goto LABEL_39;
  }

  v23 = (*(**(*(this + 9) + 3464) + 256))(*(*(this + 9) + 3464));
  if (OSObject::SetDispatchQueue(this, "RxDispatchQueue", v23, 0))
  {
    v4 = 3758097084;
    io80211_os_log("Failed to set Serial Dispatch Queue ret:%d\n");
    goto LABEL_39;
  }

  v24 = IOService::Start(this, a2, AppleBCMWLANBusInterface::_Dispatch);
  if (v24)
  {
    v4 = v24;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:wlan businterface Start_IMPL failed; ret=0x%x\n", "Start_Impl", 22010, v4);
      }
    }

    return v4;
  }

  if (((*(*this + 848))(this, this) & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    v4 = 3758097084;
    goto LABEL_39;
  }

  *(*v16 + 3352) = AppleBCMWLANChipConfigSpace::withPCIDevice(*(*v16 + 3248), 0, v26);
  if (!*(*v16 + 3352))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    goto LABEL_23;
  }

  if (!AppleBCMWLANBusInterfacePCIe::waitForDeviceReady(this))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    v18 = this;
    v19 = a2;
    v20 = 1;
    v21 = 22032;
    goto LABEL_31;
  }

  AppleBCMWLANBusInterfacePCIe::identifyDevice(this);
  v27 = AppleBCMWLANBusInterfacePCIe::configureDevice(this);
  if (v27)
  {
    v4 = v27;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v42 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v42, "[dk] %s@%d:Failed to configure, 0x%08x\n", "Start_Impl", 22047, v4);
      }
    }

    AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 22048);
    goto LABEL_20;
  }

  if (*(*v16 + 3332) != 5348)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    v18 = this;
    v19 = a2;
    v20 = 1;
    v21 = 22056;
    goto LABEL_31;
  }

  v28 = *v16;
  *(v28 + 3312) = chipNumberFromDeviceID(*(v28 + 3334));
  *(*v16 + 3280) = AppleBCMWLANChipManagerPCIe::withChip(*(*v16 + 3312), *(*v16 + 3336));
  v29 = *(*v16 + 3280);
  if (v29)
  {
    *(*v16 + 4488) = AppleBCMWLANChipManagerPCIe::getMailboxIntMaskRegisterOffset(v29);
    *(*v16 + 4492) = AppleBCMWLANChipManagerPCIe::getMailboxIntStatusRegisterOffset(*(*v16 + 3280));
    if ((*(**(*v16 + 3280) + 136))(*(*v16 + 3280)))
    {
      v31 = 640;
    }

    else
    {
      v31 = 384;
    }

    *(*v16 + 4476) = v31;
    *(*v16 + 3360) = AppleBCMWLANChipBackplane::withConfigAndMap(*(*v16 + 3352), 0, *(*v16 + 3280), 0, v30);
    if (*(*v16 + 3360))
    {
      *(*v16 + 3368) = AppleBCMWLANChipMemory::withMap(0, *(*v16 + 3280), 0, v32);
      v33 = *v16;
      if (*(*v16 + 3368))
      {
        property = 0;
        p_property = &property;
        v49 = 0x2000000000;
        v50 = -1431655766;
        v34 = (*(**(v33 + 3464) + 168))(*(v33 + 3464));
        block[0] = _NSConcreteStackBlock;
        block[1] = 1107296256;
        block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe10Start_ImplEP9IOService_block_invoke;
        block[3] = &__block_descriptor_tmp_1182;
        block[4] = &property;
        v46 = 0;
        block[5] = this;
        block[6] = a2;
        IODispatchQueue::DispatchSync(v34, block);
        v35 = *(p_property + 6);
        v36 = AppleBCMWLANBusInterface::getLogger(this);
        if (v35)
        {
          if (v36)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
            }
          }

          AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 22115);
          IOService::Stop(this, a2, 0);
        }

        else
        {
          if (v36)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
            }
          }

          v40 = IOService::CopySystemStateNotificationService(this, (*(this + 9) + 5216), 0);
          if (v40)
          {
            v4 = v40;
            AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 22123);
            IOService::Stop(this, a2, 0);
            goto LABEL_98;
          }

          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
            }
          }

          *(p_property + 6) = -536870212;
          v41 = (*(**(*(this + 9) + 3464) + 168))(*(*(this + 9) + 3464));
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 1107296256;
          v44[2] = ___ZN28AppleBCMWLANBusInterfacePCIe10Start_ImplEP9IOService_block_invoke_1186;
          v44[3] = &__block_descriptor_tmp_1189;
          v44[4] = &property;
          v44[5] = this;
          IODispatchQueue::DispatchSync(v41, v44);
          if (!*(p_property + 6))
          {
            v4 = 0;
            goto LABEL_98;
          }

          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
            }
          }
        }

        v4 = *(p_property + 6);
LABEL_98:
        _Block_object_dispose(&property, 8);
        return v4;
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
        }
      }

      v37 = this;
      v38 = a2;
      v39 = 22092;
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
        }
      }

      v37 = this;
      v38 = a2;
      v39 = 22084;
    }

    AppleBCMWLANBusInterface::reportInitFailure(v37, v38, 1uLL, v39);
    IOService::Stop(this, a2, 0);
    return 3758097085;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
    }
  }

  AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 22065);
  IOService::Stop(this, a2, 0);
  return 3758097126;
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe10Start_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = AppleBCMWLANBusInterfacePCIe::readOTP(v2);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (AppleBCMWLANBusInterface::getLogger(v2))
    {
      AppleBCMWLANBusInterface::getLogger(v2);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(v2);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to read OTP, 0x%08x\n", "Start_Impl_block_invoke", 22102, *(a1 + 56));
      }
    }

    AppleBCMWLANBusInterface::reportInitFailure(v2, *(a1 + 48), 1uLL, 22103);
  }

  result = (v2->OSObject::OSMetaClassBase::__vftable[16].retain)(v2, v2, v2->OSObject::OSMetaClassBase::__vftable[2].Dispatch, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (AppleBCMWLANBusInterface::getLogger(v2))
    {
      AppleBCMWLANBusInterface::getLogger(v2);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANBusInterface::getLogger(v2);
        CCLogStream::logAlert(v6, "[dk] %s@%d:Failed to Parse OTP 0x%08x\n", "Start_Impl_block_invoke", 22108, *(a1 + 56));
      }
    }

    v4 = *(a1 + 48);

    return AppleBCMWLANBusInterface::reportInitFailure(v2, v4, 1uLL, 22109);
  }

  return result;
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe10Start_ImplEP9IOService_block_invoke_1186(uint64_t a1)
{
  result = (*(**(a1 + 40) + 856))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}