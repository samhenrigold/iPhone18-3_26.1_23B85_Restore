uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingPending(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 216))();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:rx sub dequeue fail 0x%x\n", "fwRingPending", 265, a3);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  (*(*a1 + 208))(a1);
  v4 = OUTLINED_FUNCTION_1_12(*a3);
  (*(v5 + 792))(v4);
  OUTLINED_FUNCTION_3_8(0x4085u);

  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:rx submit, out of tracker\n", "fwRingFill", 325);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_12(*a1);
  (*(v2 + 792))(v1);
  OUTLINED_FUNCTION_2_11(0x4086u);
  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 216))();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:Invalid fFWRing/ring ivars->fFWRing:%p\n", "fwRingFill", 295, *(*a3 + 24));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueInfraPacket(uint64_t **this, AppleBCMWLANPCIeSkywalkPacket *a2)
{
  AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  OUTLINED_FUNCTION_5_0();
  v5 = (*(v4 + 1160))();
  v6 = OSMetaClassBase::safeMetaCast(v5, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (AppleBCMWLANSkywalkInterface::isDataPathConnected(Interface))
  {
    OUTLINED_FUNCTION_24_1();
    v9 = (*(v8 + 288))(a2) == 4718992 && *(this[11] + 46) == 3;
    OUTLINED_FUNCTION_24_1();
    v16 = (*(v15 + 296))(a2);
    v17 = this[11];
    if (!v16 || v9)
    {
      if (*(v17 + 108))
      {
        if (AppleBCMWLANPCIeSkywalkTxSubmissionQueue::validateMacAddr(this, a2, Interface))
        {
          return 3758097122;
        }

        v17 = this[11];
      }

      if (!v17[5])
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v20 + 288))(this))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v21 + 288))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v30 = (*(v29 + 288))(this);
            CCLogStream::logInfo(v30, "[dk] %s@%d:%s Creating INFRA flowQueue for TxSub ivars->fAc %u.flowIndx %u\n", "dequeueInfraPacket", 401, "dequeueInfraPacket", *(this[11] + 46), *(this[11] + 84));
          }
        }

        v22 = this[11][2];
        CurrentApAddress = IO80211InfraInterface::getCurrentApAddress(Interface);
        this[11][5] = AppleBCMWLANPCIeFlowQueue::withProviderAndQueueInfo(v22, CurrentApAddress & 0xFFFFFFFFFFFFLL, *(this[11] + 46), Interface, *this[11], this[11][1]);
        v24 = this[11];
        if (!v24[5])
        {
          return 3758097086;
        }

        ++*(v24 + 84);
        OUTLINED_FUNCTION_5_0();
        (*(v25 + 136))();
        v17 = this[11];
      }

      ++*(v17 + 52);
      AppleBCMWLANPCIeFlowQueue::enqueuePacket(this[11][5], a2, 1);
      AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
      v26 = OUTLINED_FUNCTION_8_4();
      Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v26);
      (*(*Interface + 600))(Interface, a2, Scratch, *(this[11] + 46), 1);
    }

    else
    {
      ++*(v17 + 51);
      AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
      v18 = OUTLINED_FUNCTION_12_1();
      v19 = AppleBCMWLANPCIeSkywalkPacket::getScratch(v18);
      ((*this)[75])(this, a2, v19, 0, 0);
      AppleBCMWLANPCIeSkywalkMulticastQueue::enqueuePacket(v6, a2, 1);
    }

    return 0;
  }

  else
  {
    v10 = 3758097112;
    OUTLINED_FUNCTION_19_1();
    if ((*(v11 + 288))(this))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v12 + 288))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v14 = (*(v13 + 288))(this);
        CCLogStream::logAlert(v14, "[dk] %s@%d:Interface is not assoc yet\n", "dequeueInfraPacket", 373);
      }
    }
  }

  return v10;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::batchedReenqueuePackets(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  mach_absolute_time();
  absolutetime_to_nanoseconds();
  v26[0] = 0;
  v26[1] = 0;
  v2 = *(this + 11);
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  if (!v3 && !v4)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v22 + 288))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v23 + 288))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v25 = (*(v24 + 288))(this);
        CCLogStream::logAlert(v25, "[dk] %s@%d:null packet list\n", "batchedReenqueuePackets", 1018);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this))
  {
    return 0xFFFFFFFFLL;
  }

  if (v4)
  {
    do
    {
      v5 = OSMetaClassBase::safeMetaCast(*v3, gAppleBCMWLANPCIeSkywalkPacketMetaClass);
      if (v5)
      {
        v6 = v5;
        FlowQueueIdx = AppleBCMWLANPCIeSkywalkPacket::getFlowQueueIdx(v5);
        (*(*v6 + 480))(v6);
        IO80211NetworkPacket::getHeadroom(v6);
        if (FlowQueueIdx <= 0xF && (v8 = *(this + 11), *(v8 + 8 * FlowQueueIdx + 40)))
        {
          ++*(v8 + 212);
          AppleBCMWLANPCIeSkywalkPacket::setFlowQueueIdx(v6, FlowQueueIdx);
          AppleBCMWLANPCIeFlowQueue::enqueuePacket(*(*(this + 11) + 8 * FlowQueueIdx + 40), v6, 1);
          *(v26 + FlowQueueIdx) = 1;
        }

        else
        {
          OUTLINED_FUNCTION_24_1();
          if ((*(v9 + 288))(this))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v10 + 288))(this);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              (*(v11 + 288))(this);
              OUTLINED_FUNCTION_4_10();
              CCLogStream::logAlert(v12, "[dk] %s@%d:Did not have a flow with index %u for peer %02x:%02x:%02x:%02x:%02x:%02x flow queue count %u\n", "batchedReenqueuePackets", 1048);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v13 + 288))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v14 + 288))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v16 = (*(v15 + 288))(this);
            CCLogStream::logAlert(v16, "[dk] %s@%d:null packet\n");
          }
        }
      }

      ++v3;
      --v4;
    }

    while (v4);
  }

  v17 = v26;
  for (i = 40; i != 168; i += 8)
  {
    v19 = *v17++;
    if (v19 == 1)
    {
      v20 = *(*(this + 11) + i);
      if (v20)
      {
        AppleBCMWLANPCIeFlowQueue::requestPendingPackets(v20);
      }
    }
  }

  bzero(*(*(this + 11) + 192), 0x400uLL);
  result = 0;
  *(*(this + 11) + 200) = 0;
  if (fKernelTraceEnabled)
  {
    kdebug_trace();
    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::enable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter", "enable", 163);
}

{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 288))();
  return CCLogStream::logInfo(v2, "[dk] %s@%d:Exit with fEnabled:%d\n", "enable", 182, *(*(v0 + 88) + 32));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::disable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Disabling Tx Submission Queue", "disable", 194);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRings()
{
  OUTLINED_FUNCTION_10_5();
  (*(v2 + 288))();
  v3 = OUTLINED_FUNCTION_12_1();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v3);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(Interface);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:clearFWRings interface %d remaining queue count %d\n", "clearFWRings", 201, InterfaceId, *(*(v0 + 88) + 168));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(uint64_t a1)
{
  OUTLINED_FUNCTION_5_5();
  (*(v2 + 288))();
  OUTLINED_FUNCTION_5_9();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:clearFWRing STA : %02x:%02x:%02x:%02x:%02x:%02x fFlowQueueCount %d\n", "clearFWRing", 220, v4, v5, v6, v7, v8, v9, *(*(a1 + 88) + 168));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 288))();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:clearFWRing FlowQueueCount %d \n", "clearFWRing", 231, *(*a3 + 168));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::free()
{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 288))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Enter ::free [%p]", "free", 239, v0);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 288))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s[%d] : did not dequeue all packets\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 288))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s[%d] ERROR ! Flowqueue is NULL ! \n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket()
{
  OUTLINED_FUNCTION_10_5();
  (*(v2 + 288))();
  v3 = OUTLINED_FUNCTION_12_1();
  AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 160))();
  v5 = OUTLINED_FUNCTION_8_4();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v5);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(Interface);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR ! Interface (%s, ID : %d) is not enabled\n", "dequeueSoftAPLLWPacket", 427, v1, InterfaceId);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 288))();
  OUTLINED_FUNCTION_4_10();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Did not have a flow with index %u for peer %02x:%02x:%02x:%02x:%02x:%02x flow queue count %u\n", "dequeueSoftAPLLWPacket", 544, 0xFFFF, v2, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 288))();
  OUTLINED_FUNCTION_5_9();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s[%d]:  Peer not found for %02x:%02x:%02x:%02x:%02x:%02x\n", "dequeueSoftAPLLWPacket", 484, "dequeueSoftAPLLWPacket", 484, v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v2 + 288))();
  v3 = OUTLINED_FUNCTION_12_1();
  AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 160))();
  v5 = OUTLINED_FUNCTION_8_4();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v5);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(Interface);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR ! Interface (%s, ID : %d) is Invalid \n", "dequeueSoftAPLLWPacket", 433, v1, InterfaceId);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(AppleBCMWLANSkywalkTxSubmissionQueue *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_5();
  v6 = (*(v5 + 288))();
  AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(a1);
  OUTLINED_FUNCTION_5_0();
  v8 = (*(v7 + 160))();
  v9 = (*(*a3 + 664))(a3);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:ERROR ! Interface (%s) chip not ready %d\n", "dequeueSoftAPLLWPacket", 443, v8, v9);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(AppleBCMWLANSkywalkTxSubmissionQueue *a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  OUTLINED_FUNCTION_5_5();
  v22 = (*(v7 + 288))();
  AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(a1);
  OUTLINED_FUNCTION_5_0();
  v21 = (*(v8 + 160))();
  v9 = *a3;
  LODWORD(a3) = *(*a3 + 168);
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  v13 = a4[3];
  v14 = a4[4];
  v15 = a4[5];
  v16 = *(v9 + 184);
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(a1);
  LODWORD(a4) = IO80211SkywalkInterface::getInterfaceId(Interface);
  v18 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(a1);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(v18);
  return CCLogStream::logAlert(v22, "[dk] %s@%d:%s Creating %s flowQueue for TxSub ivars->fAc %u, flowIndx %u, da:%02x:%02x:%02x:%02x:%02x:%02x, ifId %d, ifRole %d\n", "dequeueSoftAPLLWPacket", 491, "dequeueSoftAPLLWPacket", v21, v16, a3, v10, v11, v12, v13, v14, v15, a4, InterfaceRole);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket()
{
  OUTLINED_FUNCTION_10_5();
  (*(v2 + 288))();
  v3 = OUTLINED_FUNCTION_12_1();
  AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 160))();
  v5 = OUTLINED_FUNCTION_8_4();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v5);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(Interface);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR ! Interface (%s, ID : %d) is not enabled\n", "dequeueAWDLNANPacket", 602, v1, InterfaceId);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 288))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s[%d] :: ERROR ! Could not insert Snap Header, discarding packet\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 288))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:%s[%d] Could not dup multicast packet for 2nd soc channel\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid Virtual Interface for AWDL ! \n", "dequeueAWDLNANPacket", 652);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR ! No Prox Interface\n", "dequeueAWDLNANPacket", 618);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v3 + 288))();
  v4 = OUTLINED_FUNCTION_12_1();
  AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v4);
  OUTLINED_FUNCTION_5_0();
  (*(v5 + 160))();
  v6 = OUTLINED_FUNCTION_8_4();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v6);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(Interface);
  v9 = *AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v0);
  v10 = (*(v9 + 664))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR ! Interface (%s, ID : %d), chip ready %d \n", "dequeueAWDLNANPacket", 609, v2, InterfaceId, v10);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets()
{
  OUTLINED_FUNCTION_7_9();
  (*(v0 + 224))(v1);
  OUTLINED_FUNCTION_5_0();
  (*(v2 + 784))();
  OUTLINED_FUNCTION_10_7(0x4449u);

  return kdebug_trace();
}

{
  OUTLINED_FUNCTION_7_9();
  (*(v0 + 224))(v1);
  OUTLINED_FUNCTION_5_0();
  (*(v2 + 784))();
  OUTLINED_FUNCTION_10_7(0x444Au);
  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getAvgTxCompLatency(void *a1, int a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v8 + 288))();
  if (result)
  {
    (*(*a1 + 288))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (*(*a1 + 288))(a1);
      result = CCLogStream::logAlert(v10, "[dk] %s@%d:Did not have a flow with index %u for peer, flow queue count %u\n", "getAvgTxCompLatency", 1082, a2, *(a1[11] + 168));
    }
  }

  *a4 = a3;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  OUTLINED_FUNCTION_5_5();
  v7 = (*(v6 + 288))();
  return CCLogStream::logInfo(v7, "[dk] %s@%d:fTid %d flow id %d\n", "setFWRing", 1196, *(*a3 + 184), a4);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 288))();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:%s ivars->fFlowQueueCount %u \n", "setFWRing", 1197, "setFWRing", *(*a3 + 168));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR ! Invalid FlowID/Ring \n", "setFWRing", 1211);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR ! Could not Find flow Queue for FlowID ! \n", "setFWRing", 1232);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFlowIdInFlowQ()
{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 288))();
  return CCLogStream::logInfo(v2, "[dk] %s@%d:%s fFlowQueueCount %u \n", "clearFlowIdInFlowQ", 1262, "clearFlowIdInFlowQ", *(*(v0 + 88) + 168));
}

uint64_t AppleBCMWLANConfigManager::prepareImageMapHelper(uint64_t a1, OSMappedFile **a2)
{
  result = 3758097090;
  if (*a2 && a2[1] && a2[2] && a2[3])
  {
    v5 = OSMappedFile::size(a2[1]);
    v6 = OSMappedFile::size(*a2);
    v7 = OSMappedFile::size(a2[2]);
    v8 = OSMappedFile::size(a2[3]);
    if (a2[4] && (*(*(a1 + 48) + 376))(**(a1 + 48)))
    {
      v9 = OSMappedFile::size(a2[4]);
    }

    else
    {
      v9 = 0;
    }

    if (a2[5] && AppleBCMWLANCore::is4388Up(**(a1 + 48)))
    {
      v10 = OSMappedFile::size(a2[5]);
    }

    else
    {
      v10 = 0;
    }

    if (*(*(a1 + 48) + 16) && CCLogStream::shouldLog())
    {
      CCLogStream::logNoticeIf(*(*(a1 + 48) + 16), 0x80uLL, "[dk] %s@%d: FW size %zu NV size %zu Reg size %zu txcap %zu\n", "prepareImageMapHelper", 2834, v5, v6, v7, v8);
    }

    result = 3825174272;
    if (v5 <= 0x307000)
    {
      if (v5 >= 0x19000)
      {
        if (v6 <= 0x8000)
        {
          if (v6 >= 0x64)
          {
            if (v7 <= 0x19000)
            {
              if (v7 - 1 >= 0x20)
              {
                if (v8 <= 0x8000)
                {
                  if (v8 - 1 >= 0x20)
                  {
                    if (v9 <= 0x400)
                    {
                      if (v9 - 1 >= 0xF)
                      {
                        if (v10 <= 0x10000)
                        {
                          if (v10 - 1 >= 0x1F)
                          {
                            *(*(a1 + 48) + 344) = (*(*(a1 + 48) + 352))(**(a1 + 48), v5, v6, v7, v8, v9, v10);
                            if (OUTLINED_FUNCTION_13_4())
                            {
                              OUTLINED_FUNCTION_5_0();
                              return (*(v12 + 64))();
                            }

                            else
                            {
                              if (*(v11 + 16))
                              {
                                if (CCLogStream::shouldLog())
                                {
                                  CCLogStream::logAlert(*(*(a1 + 48) + 16), "[dk] %s@%d: fActiveChipImage alloc fail\n", "prepareImageMapHelper", 2888);
                                }
                              }

                              return 3758097085;
                            }
                          }

                          else
                          {
                            return 3825174305;
                          }
                        }

                        else
                        {
                          return 3825174304;
                        }
                      }

                      else
                      {
                        return 3825174303;
                      }
                    }

                    else
                    {
                      return 3825174302;
                    }
                  }

                  else
                  {
                    return 3825174281;
                  }
                }

                else
                {
                  return 3825174280;
                }
              }

              else
              {
                return 3825174277;
              }
            }

            else
            {
              return 3825174276;
            }
          }

          else
          {
            return 3825174284;
          }
        }

        else
        {
          return 3825174275;
        }
      }
    }

    else
    {
      return 3825174273;
    }
  }

  return result;
}

size_t AppleBCMWLANConfigManager::prepareImageMap(uint64_t a1, uint64_t a2)
{
  v643 = a1;
  strcpy(__s, "Firmware/");
  v4 = strlen(__s);
  v5 = strlen(*(a2 + 8));
  v6 = v4 + 1;
  v663 = 0;
  v664 = 0;
  v7 = strlen(*(a2 + 24));
  v662 = 0;
  v625 = strlen(*(a2 + 16));
  v661 = 0;
  v8 = strlen(*a2);
  v660 = 0;
  v598 = strlen(*(a2 + 32));
  v659 = 0;
  v9 = strlen(*(a2 + 40));
  v10 = OSBundle::mainBundle(v9);
  v392 = v5;
  v584 = v9;
  if (!v10)
  {
    OUTLINED_FUNCTION_2_12();
    v640 = 0;
    v19 = 0;
LABEL_90:
    OUTLINED_FUNCTION_8_9();
    goto LABEL_55;
  }

  v11 = IOMallocZeroData();
  v2 = "prepareImageMap";
  if (!v11)
  {
    OUTLINED_FUNCTION_1_13(0, v12, v13, v14, v15, v16, v17, v18, v308, v328, v348, v363, v378, v5, v406, v421, v436, v451, v466, v481, v494, v508, v523, v538, v553, v568, v583, v9, v598, v612, v625, v639, v643);
    OUTLINED_FUNCTION_8_9();
    if (v169)
    {
      shouldLog = CCLogStream::shouldLog();
      if (shouldLog)
      {
        v294 = OUTLINED_FUNCTION_1_13(shouldLog, v171, v172, v173, v174, v175, v176, v177, v315, v335, v350, v365, v379, v393, v408, v423, v438, v453, v468, v483, v496, v510, v525, v540, v555, v570, v583, v585, v599, v614, v626, v641, v644);
        CCLogStream::logAlert(v294, "[dk] %s@%d:Failed to malloc for FW filename\n", "prepareImageMap", 2956);
      }
    }

    OUTLINED_FUNCTION_2_12();
    v640 = 0;
    v19 = 0;
    goto LABEL_55;
  }

  v19 = v11;
  bzero(v11, &v5[v6]);
  memcpy(v19, __s, v4);
  cString = v19;
  v20 = strlen(*(a2 + 8));
  memcpy(&v19[v4], *(a2 + 8), v20);
  v9 = &IOVMPageSize;
  OUTLINED_FUNCTION_12_5();
  OSBundle::loadResource(v10, v19, 0, v21, &v664);
  if (!v664)
  {
    io80211_os_log("Invalid FW resource: '%s'\n", v19);
    OUTLINED_FUNCTION_2_12();
    v640 = 0;
    goto LABEL_90;
  }

  v22 = OSMappedFile::size(v664);
  io80211_os_log("FW resource: size[%zu] '%s'\n", v22, v19);
  v23 = IOMallocZeroData();
  if (!v23)
  {
    OUTLINED_FUNCTION_1_13(0, v24, v25, v26, v27, v28, v29, v30, v309, v329, v348, v363, v378, v5, v406, v421, v436, v451, v466, v481, v494, v508, v523, v538, v553, v568, v583, v584, v598, v612, v625, v639, v643);
    OUTLINED_FUNCTION_8_9();
    if (v178)
    {
      v179 = CCLogStream::shouldLog();
      if (v179)
      {
        v295 = OUTLINED_FUNCTION_1_13(v179, v180, v181, v182, v183, v184, v185, v186, v316, v336, v351, v366, v380, v394, v409, v424, v439, v454, v469, v484, v497, v511, v526, v541, v556, v571, v583, v586, v600, v615, v627, v642, v645);
        CCLogStream::logAlert(v295, "[dk] %s@%d:Failed to malloc for TX cap filename\n", "prepareImageMap", 2972);
      }
    }

    OUTLINED_FUNCTION_2_12();
    v640 = 0;
    goto LABEL_55;
  }

  v5 = v23;
  bzero(v23, v6 + v7);
  memcpy(v5, __s, v4);
  v19 = *(a2 + 24);
  v31 = strlen(v19);
  memcpy(&v5[v4], v19, v31);
  OUTLINED_FUNCTION_12_5();
  OSBundle::loadResource(v10, v5, 0, v32, &v663);
  v640 = v5;
  if (!v663)
  {
    io80211_os_log("Invalid TX cap resource: '%s'\n", v5);
LABEL_100:
    OUTLINED_FUNCTION_2_12();
LABEL_108:
    OUTLINED_FUNCTION_5_10();
    goto LABEL_55;
  }

  v33 = OSMappedFile::size(v663);
  io80211_os_log("TX cap resource: size[%zu] '%s'\n", v33, v5);
  v34 = IOMallocZeroData();
  if (!v34)
  {
    if (OUTLINED_FUNCTION_1_13(0, v35, v36, v37, v38, v39, v40, v41, v310, v330, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v494, v508, v523, v538, v553, v568, v583, v584, v598, v612, v625, v5, v643))
    {
      CCLogStream::shouldLog();
      OUTLINED_FUNCTION_5_10();
      if (v187)
      {
        v296 = OUTLINED_FUNCTION_1_13(v187, v188, v189, v190, v191, v192, v193, v194, v317, v337, v352, v367, v381, v395, v410, v425, v440, v455, v470, v485, v498, v512, v527, v542, v557, v572, v583, v587, v601, v616, v628, v640, v646);
        CCLogStream::logAlert(v296, "[dk] %s@%d:Failed to malloc for regulatory filename", "prepareImageMap", 2988);
      }

      OUTLINED_FUNCTION_2_12();
      goto LABEL_55;
    }

    goto LABEL_100;
  }

  v5 = v34;
  bzero(v34, v6 + v7);
  memcpy(v5, __s, v4);
  v19 = *(a2 + 16);
  v42 = strlen(v19);
  memcpy(&v5[v4], v19, v42);
  OUTLINED_FUNCTION_12_5();
  OSBundle::loadResource(v10, v5, 0, v43, &v662);
  if (!v662)
  {
    io80211_os_log("Invalid Regulatory resource: '%s'\n", v5);
LABEL_106:
    OUTLINED_FUNCTION_3_9();
    goto LABEL_108;
  }

  v44 = OSMappedFile::size(v662);
  io80211_os_log("Regulatory resource: size[%zu] '%s'\n", v44, v5);
  v45 = IOMallocZeroData();
  if (!v45)
  {
    if (OUTLINED_FUNCTION_1_13(0, v46, v47, v48, v49, v50, v51, v52, v311, v331, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v494, v508, v523, v538, v553, v568, v583, v584, v598, v612, v625, v640, v643))
    {
      CCLogStream::shouldLog();
      OUTLINED_FUNCTION_5_10();
      if (v195)
      {
        v297 = OUTLINED_FUNCTION_1_13(v195, v196, v197, v198, v199, v200, v201, v202, v318, v338, v353, v368, v382, v396, v411, v426, v441, v456, v471, v486, v499, v513, v528, v543, v558, v573, v583, v588, v602, v617, v629, v640, v647);
        CCLogStream::logAlert(v297, "[dk] %s@%d:Failed to malloc for NVRAM filename\n", "prepareImageMap", 3004);
      }

      OUTLINED_FUNCTION_3_9();
      goto LABEL_55;
    }

    goto LABEL_106;
  }

  v2 = v45;
  bzero(v45, v6 + v8);
  memcpy(v2, __s, v4);
  v19 = *a2;
  v53 = strlen(*a2);
  memcpy(&v2[v4], *a2, v53);
  OUTLINED_FUNCTION_12_5();
  OSBundle::loadResource(v10, v2, 0, v54, &v661);
  if (!v661)
  {
    io80211_os_log("Invalid NVRAM resource: '%s'\n", v2);
    OUTLINED_FUNCTION_4_11();
    goto LABEL_108;
  }

  v569 = v8;
  v55 = OSMappedFile::size(v661);
  io80211_os_log("NVRAM resource: size[%zu] '%s'\n", v55, v2);
  v56 = OSDictionary::withCapacity(4u);
  v19 = cString;
  if (v56)
  {
    v64 = v56;
    v65 = OSString::withCStringNoCopy(cString);
    if (!v65)
    {
      if (OUTLINED_FUNCTION_1_13(0, v66, v67, v68, v69, v70, v71, v72, v312, v332, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v494, v508, v523, v538, v553, v569, v583, v584, v598, v612, v625, v640, v643))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v211)
        {
          v299 = OUTLINED_FUNCTION_1_13(v211, v212, v213, v214, v215, v216, v217, v218, v320, v340, v355, v370, v384, v398, v413, v428, v443, v458, v473, v488, v501, v515, v530, v545, v560, v575, v583, v590, v604, v619, v631, v640, v649);
          CCLogStream::logAlert(v299, "[dk] %s@%d:Failed to create FW OSString\n", "prepareImageMap", 3027);
        }

        OUTLINED_FUNCTION_4_11();
      }

      else
      {
        OUTLINED_FUNCTION_4_11();
        OUTLINED_FUNCTION_8_9();
      }

      goto LABEL_54;
    }

    v554 = v65;
    OSDictionary::setObject(v64, v65, v664);
    v73 = OSString::withCStringNoCopy(v640);
    if (!v73)
    {
      if (OUTLINED_FUNCTION_1_13(0, v74, v75, v76, v77, v78, v79, v80, v312, v332, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v494, v508, v523, v538, v554, v569, v583, v584, v598, v612, v625, v640, v643))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v219)
        {
          v300 = OUTLINED_FUNCTION_1_13(v219, v220, v221, v222, v223, v224, v225, v226, v321, v341, v356, v371, v385, v399, v414, v429, v444, v459, v474, v489, v502, v516, v531, v546, v561, v576, v583, v591, v605, v620, v632, v640, v650);
          CCLogStream::logAlert(v300, "[dk] %s@%d:Failed to create TX OSString\n", "prepareImageMap", 3034);
        }

        OUTLINED_FUNCTION_11_6();
      }

      else
      {
        OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_8_9();
      }

      goto LABEL_53;
    }

    v539 = v73;
    OSDictionary::setObject(v64, v73, v663);
    v81 = OSString::withCStringNoCopy(v5);
    if (!v81)
    {
      if (OUTLINED_FUNCTION_1_13(0, v82, v83, v84, v85, v86, v87, v88, v312, v332, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v494, v508, v523, v539, v554, v569, v583, v584, v598, v612, v625, v640, v643))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v227)
        {
          v301 = OUTLINED_FUNCTION_1_13(v227, v228, v229, v230, v231, v232, v233, v234, v322, v342, v357, v372, v386, v400, v415, v430, v445, v460, v475, v490, v503, v517, v532, v547, v562, v577, v583, v592, v606, v621, v633, v640, v651);
          CCLogStream::logAlert(v301, "[dk] %s@%d:Failed to create RF OSString\n", "prepareImageMap", 3041);
        }

        OUTLINED_FUNCTION_4_11();
      }

      else
      {
        OUTLINED_FUNCTION_4_11();
        OUTLINED_FUNCTION_8_9();
      }

      goto LABEL_52;
    }

    v9 = v81;
    OSDictionary::setObject(v64, v81, v662);
    v89 = OSString::withCStringNoCopy(v2);
    v524 = v9;
    if (!v89)
    {
      if (OUTLINED_FUNCTION_1_13(0, v90, v91, v92, v93, v94, v95, v96, v312, v332, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v494, v508, v9, v539, v554, v569, v583, v584, v598, v612, v625, v640, v643))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v235)
        {
          v302 = OUTLINED_FUNCTION_1_13(v235, v236, v237, v238, v239, v240, v241, v242, v323, v343, v358, v373, v387, v401, v416, v431, v446, v461, v476, v491, v504, v518, v533, v548, v563, v578, v583, v593, v607, v622, v634, v640, v652);
          CCLogStream::logAlert(v302, "[dk] %s@%d:Failed to create NVRAM OSString\n", "prepareImageMap", 3048);
        }

        OUTLINED_FUNCTION_11_6();
      }

      else
      {
        OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_8_9();
      }

      goto LABEL_51;
    }

    v509 = v89;
    OSDictionary::setObject(v64, v89, v661);
    v613 = v2;
    if ((*(*(v643 + 48) + 376))(**(v643 + 48)))
    {
      v97 = v7;
      v98 = IOMallocZeroData();
      if (v98)
      {
        v106 = v98;
        bzero(v98, v6 + v598);
        memcpy(v106, __s, v4);
        v19 = *(a2 + 32);
        v107 = strlen(v19);
        memcpy(&v106[v4], v19, v107);
        OSBundle::loadResource(v10, v106, 0, 10 * IOVMPageSize, &v660);
        v583 = v106;
        if (v660)
        {
          v108 = OSMappedFile::size(v660);
          io80211_os_log("Signature resource: size[%zu] '%s'\n", v108, v106);
          v109 = OSString::withCStringNoCopy(v106);
          if (v109)
          {
            v482 = v109;
            OSDictionary::setObject(v64, v109, v660);
            v19 = cString;
            v7 = v97;
            v2 = v613;
            goto LABEL_21;
          }

          if (OUTLINED_FUNCTION_1_13(0, v110, v111, v112, v113, v114, v115, v116, v312, v332, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v494, v509, v9, v539, v554, v569, v106, v584, v598, v613, v625, v640, v643))
          {
            CCLogStream::shouldLog();
            OUTLINED_FUNCTION_5_10();
            v2 = v613;
            if (v277)
            {
              v306 = OUTLINED_FUNCTION_1_13(v277, v278, v279, v280, v281, v282, v283, v284, v326, v346, v361, v376, v390, v404, v419, v434, v449, v464, v479, v493, v507, v521, v536, v551, v566, v581, v583, v596, v610, v613, v637, v640, v655);
              CCLogStream::logAlert(v306, "[dk] %s@%d:Failed to create signature OSString\n", "prepareImageMap", 3074);
            }

            OUTLINED_FUNCTION_9_7();
            goto LABEL_50;
          }

          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_5_10();
        }

        else
        {
          io80211_os_log("Invalid Signature resource: '%s'\n", v106);
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_5_10();
        }
      }

      else if (OUTLINED_FUNCTION_1_13(0, v99, v100, v101, v102, v103, v104, v105, v312, v332, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v494, v509, v9, v539, v554, v569, v583, v584, v598, v613, v625, v640, v643))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v261)
        {
          v304 = OUTLINED_FUNCTION_1_13(v261, v262, v263, v264, v265, v266, v267, v268, v324, v344, v359, v374, v388, v402, v417, v432, v447, v462, v477, v492, v505, v519, v534, v549, v564, v579, v583, v594, v608, v613, v635, v640, v653);
          CCLogStream::logAlert(v304, "[dk] %s@%d:Failed to malloc for signature filename\n", "prepareImageMap", 3058);
        }

        OUTLINED_FUNCTION_4_11();
      }

      else
      {
        OUTLINED_FUNCTION_4_11();
        OUTLINED_FUNCTION_8_9();
      }

      v2 = v613;
LABEL_50:
      OUTLINED_FUNCTION_5_0();
      (*(v158 + 16))();
LABEL_51:
      OUTLINED_FUNCTION_5_0();
      (*(v159 + 16))();
LABEL_52:
      OUTLINED_FUNCTION_5_0();
      (*(v160 + 16))();
LABEL_53:
      OUTLINED_FUNCTION_5_0();
      (*(v161 + 16))();
LABEL_54:
      (v64->release)(v64);
      goto LABEL_55;
    }

    v482 = 0;
    v583 = 0;
LABEL_21:
    v452 = v10;
    v467 = v4 + 1;
    v437 = v7;
    v495 = v5;
    if (AppleBCMWLANCore::is4388Up(**(v643 + 48)))
    {
      v117 = IOMallocZeroData();
      if (!v117)
      {
        if (OUTLINED_FUNCTION_1_13(0, v118, v119, v120, v121, v122, v123, v124, v312, v332, v348, v363, v378, v392, v406, v421, v7, v10, v467, v482, v5, v509, v9, v539, v554, v569, v583, v584, v598, v613, v625, v640, v643))
        {
          CCLogStream::shouldLog();
          OUTLINED_FUNCTION_8_9();
          v5 = v506;
          if (v269)
          {
            v305 = OUTLINED_FUNCTION_1_13(v269, v270, v271, v272, v273, v274, v275, v276, v325, v345, v360, v375, v389, v403, v418, v433, v448, v463, v478, v482, v506, v520, v535, v550, v565, v580, v583, v595, v609, v623, v636, v640, v654);
            CCLogStream::logAlert(v305, "[dk] %s@%d:Failed to malloc for platcfg filename\n", "prepareImageMap", 3082);
          }

          OUTLINED_FUNCTION_9_7();
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_8_9();
LABEL_162:
        v5 = v506;
LABEL_48:
        if (v482)
        {
          OUTLINED_FUNCTION_5_0();
          (*(v157 + 16))();
        }

        goto LABEL_50;
      }

      v9 = v117;
      bzero(v117, v6 + v584);
      memcpy(v9, __s, v4);
      v19 = *(a2 + 40);
      v125 = strlen(v19);
      memcpy(v9 + v4, v19, v125);
      OSBundle::loadResource(v10, v9, 0, 10 * IOVMPageSize, &v659);
      v422 = v9;
      if (v659)
      {
        v126 = OSMappedFile::size(v659);
        io80211_os_log("Platcfg resource: size[%zu] '%s'\n", v126, v9);
        v127 = OSString::withCStringNoCopy(v9);
        if (v127)
        {
          v407 = v127;
          OSDictionary::setObject(v64, v127, v659);
          goto LABEL_29;
        }

        if (OUTLINED_FUNCTION_1_13(0, v128, v129, v130, v131, v132, v133, v134, v313, v333, v348, v363, v378, v392, v406, v9, v7, v10, v467, v482, v5, v509, v524, v539, v554, v569, v583, v584, v598, v613, v625, v640, v643))
        {
          v286 = CCLogStream::shouldLog();
          if (v286)
          {
            v307 = OUTLINED_FUNCTION_1_13(v286, v287, v288, v289, v290, v291, v292, v293, v327, v347, v362, v377, v391, v405, v420, v435, v450, v465, v480, v482, v506, v522, v537, v552, v567, v582, v583, v597, v611, v624, v638, v640, v656);
            CCLogStream::logAlert(v307, "[dk] %s@%d:Failed to create platcfg OSString\n", "prepareImageMap", 3094);
          }
        }

        a2 = 0;
        OUTLINED_FUNCTION_5_10();
        goto LABEL_162;
      }

      io80211_os_log("Invalid Platcfg resource: '%s'\n", v9);
    }

    else
    {
      v422 = 0;
    }

    v407 = 0;
LABEL_29:
    v135 = 0;
    while (1)
    {
      v136 = IOFileValidationRequestImageVerify();
      v137 = v136;
      v138 = v136 ? "Failed" : "Success";
      v139 = io80211_os_log("Checked @IOFileValidationRequestImageVerify: ii[%d] maxChipsetIndex[%u], ret[0x%08x], '%s'\n", v135, 8, v136, v138);
      if (!v137)
      {
        break;
      }

      if (++v135 == 8)
      {
        goto LABEL_39;
      }
    }

    if (OUTLINED_FUNCTION_1_13(v139, v140, v141, v142, v143, v144, v145, v146, v314, v334, v349, v364, v378, v392, v407, v422, v7, v10, v467, v482, v5, v509, v524, v539, v554, v569, v583, v584, v598, v613, v625, v640, v643))
    {
      v147 = CCLogStream::shouldLog();
      if (v147)
      {
        v285 = OUTLINED_FUNCTION_1_13(v147, v148, v149, v150, v151, v152, v153, v154, v314, v334, v349, v364, v378, v392, v407, v422, v437, v452, v467, v482, v495, v509, v524, v539, v554, v569, v583, v584, v598, v613, v625, v640, v643);
        CCLogStream::logEmergency(v285, "[dk] %s@%d:Verified FW files as authentic. Proceed!\n", "prepareImageMap", 3108);
      }
    }

LABEL_39:
    v155 = 0;
    v156 = v643;
    do
    {
      AppleBCMWLANConfigManager::debugHashstore(v643, v64, *(&AppleBCMWLANTrustedChipsetSHAs + v155), AppleBCMWLANNumTrustedChipsetSHAs[v155], "AppleBCMWLANTrustedChipsetSHAs", v155);
      ++v155;
    }

    while (v155 != 8);
    v10 = v452;
    if (*(*(v643 + 48) + 16) && CCLogStream::shouldLog())
    {
      CCLogStream::logNoticeIf(*(*(v643 + 48) + 16), 0x80uLL, "[dk] %s@%d:Image verification, rv:%d, skipVerification:%d\n", "prepareImageMap", 3118, v137, *(a2 + 48));
    }

    v19 = cString;
    v5 = v495;
    v2 = v613;
    if (v137 && (*(a2 + 48) & 1) == 0)
    {
      OUTLINED_FUNCTION_8_9();
      if (v243)
      {
        v244 = CCLogStream::shouldLog();
        v9 = v422;
        if (v244)
        {
          v303 = OUTLINED_FUNCTION_1_13(v244, v245, v246, v247, v248, v249, v250, v251, v314, v334, v349, v364, v378, v392, v407, v422, v437, v452, v467, v482, v495, v509, v524, v539, v554, v569, v583, v584, v598, v613, v625, v640, v643);
          v4 = (v156 + 5);
          CCLogStream::logAlert(v303, "[dk] %s@%d:File validation failed, Image verification, rv:%d, skipVerification:%d, ret[0x%08x]\n", "prepareImageMap", 3122, v4, *(a2 + 48), v4);
        }

        else
        {
          v4 = (v643 + 5);
        }

        v19 = cString;
      }

      else
      {
        v4 = (v643 + 5);
        v19 = cString;
        v9 = v422;
      }

      a2 = v407;
    }

    else
    {
      v658[0] = v661;
      v658[1] = v664;
      v658[2] = v662;
      v658[3] = v663;
      v658[4] = v660;
      v658[5] = v659;
      v4 = AppleBCMWLANConfigManager::prepareImageMapHelper(v643, v658);
      a2 = v407;
      if (v4)
      {
        v9 = v422;
        if (*(*(v643 + 48) + 16))
        {
          v252 = CCLogStream::shouldLog();
          if (v252)
          {
            v260 = OUTLINED_FUNCTION_1_13(v252, v253, v254, v255, v256, v257, v258, v259, v314, v334, v349, v364, v378, v392, v407, v422, v437, v452, v467, v482, v495, v509, v524, v539, v554, v569, v583, v584, v598, v613, v625, v640, v643);
            CCLogStream::logAlert(v260, "[dk] %s@%d:Failed to prepare image map\n", "prepareImageMap", 3137);
          }
        }
      }

      else
      {
        v9 = v422;
      }
    }

    goto LABEL_48;
  }

  if (OUTLINED_FUNCTION_1_13(0, v57, v58, v59, v60, v61, v62, v63, v312, v332, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v494, v508, v523, v538, v553, v8, v583, v584, v598, v612, v625, v640, v643))
  {
    CCLogStream::shouldLog();
    OUTLINED_FUNCTION_8_9();
    if (v203)
    {
      v298 = OUTLINED_FUNCTION_1_13(v203, v204, v205, v206, v207, v208, v209, v210, v319, v339, v354, v369, v383, v397, v412, v427, v442, v457, v472, v487, v500, v514, v529, v544, v559, v574, v583, v589, v603, v618, v630, v640, v648);
      CCLogStream::logAlert(v298, "[dk] %s@%d:Failed to create OSDictionary\n", "prepareImageMap", 3021);
    }

    OUTLINED_FUNCTION_4_11();
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_8_9();
  }

LABEL_55:
  if (v660)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v162 + 16))();
    v660 = 0;
  }

  if (v583)
  {
    IOFreeData();
  }

  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  if (v659)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v163 + 16))();
    v659 = 0;
  }

  if (v9)
  {
    IOFreeData();
  }

  if (v661)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v164 + 16))();
    v661 = 0;
  }

  if (v2)
  {
    IOFreeData();
  }

  if (v662)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v165 + 16))();
    v662 = 0;
  }

  if (v5)
  {
    IOFreeData();
  }

  if (v663)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v166 + 16))();
    v663 = 0;
  }

  if (v640)
  {
    IOFreeData();
  }

  if (v664)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v167 + 16))();
    v664 = 0;
  }

  if (v19)
  {
    IOFreeData();
  }

  if (v10)
  {
    (*(*v10 + 16))(v10);
  }

  return v4;
}

uint64_t AppleBCMWLANConfigManager::debugHashstore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v23 = 0;
  v26 = 0u;
  v27 = 0u;
  *__str = 0u;
  v25 = 0u;
  IOParseBootArgNumber("wlan.debug.hashstore", &v23, 1);
  if (v23 != 1)
  {
    return 0;
  }

  v12 = 3758097085;
  result = 3758097090;
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        v14 = *(a1 + 48);
        result = 3758097090;
        if (v14)
        {
          if (*v14)
          {
            if ((snprintf(__str, 0x40uLL, "%s : %zu", a5, a6) - 64) < 0xFFFFFFC1)
            {
              return 3758097086;
            }

            else
            {
              v15 = OSArray::withCapacity(a4);
              if (v15)
              {
                v16 = v15;
                if (a4)
                {
                  while (1)
                  {
                    v17 = OSDictionary::withCapacity(2u);
                    if (!v17)
                    {
                      break;
                    }

                    v18 = v17;
                    v19 = OSData::withBytes(a3, 0x20uLL);
                    if (!v19 || (v20 = v19, OSDictionary::setObject(v18, "shaKey", v19), (v20->release)(v20), (v21 = OSData::withBytes((a3 + 32), 0x20uLL)) == 0))
                    {
                      (v18->release)(v18);
                      break;
                    }

                    v22 = v21;
                    OSDictionary::setObject(v18, "shaContents", v21);
                    (v22->release)(v22);
                    OSArray::setObject(v16, v18);
                    (v18->release)(v18);
                    a3 += 64;
                    if (!--a4)
                    {
                      goto LABEL_14;
                    }
                  }
                }

                else
                {
LABEL_14:
                  setPropertyHelper(**(a1 + 48), __str, v16);
                  v12 = 0;
                }

                (v16->release)(v16);
                return v12;
              }

              else
              {
                return 3758097085;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::completeImageMap(AppleBCMWLANConfigManager *this)
{
  OUTLINED_FUNCTION_5_0();
  (*(v2 + 80))();
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_0();
  (*(v3 + 88))();
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 104))();
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_0();
  (*(v5 + 120))();
  result = (*(*(this + 6) + 360))(**(this + 6), *(*(this + 6) + 344));
  if (!result)
  {
    v7 = *(this + 6);
    v8 = v7[46];
    v9 = *v7;
    v10 = v7[43];

    return v8(v9, v10);
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::init(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:6GHz Roaming override boot-arg not present. f6GHzRoamingEnabledByBootarg : [%d]\n", "init", 524, *(v2 + 390));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Roaming6G : 6GHz Roaming override boot-arg present. f6GHzRoamingEnabledByBootarg : [%d]\n", "init", 521, *(v2 + 390));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Roaming6G : 6GHz Roaming override boot-arg present. f6GHzRoamingEnabledByBootarg : [%d]\n", "init", 519, *(v2 + 390));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get Command Manager\n", "init", 497);
}

uint64_t AppleBCMWLANConfigManager::gatherParameterData(uint64_t a1)
{
  v1 = *(*a1 + 16);
  OSString::getCStringNoCopy(*(*a1 + 192));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: region info: %s\n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: no default roaming parameters found!\n", "gatherParameterData", 757);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x400uLL, "[dk] %s@%d: AWDL is not supported.\n", "gatherParameterData", 794);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x400uLL, "[dk] %s@%d: AWDL HT20 only is not specified.\n", "gatherParameterData", 807);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x400uLL, "[dk] %s@%d: DFS Proxy is not supported.\n", "gatherParameterData", 815);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Found '%s' boot-arg, forced[%u]\n", "gatherParameterData", 966, "wlan.aoac-allowed", *(v2 + 336));
}

uint64_t AppleBCMWLANConfigManager::gatherKvrParameterData(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:EnterpriseEnhancementParams: Successfully read params : 0x%x\n", "gatherKvrParameterData", 1008, *(v2 + 240));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:VoiceEnterpriseNwSupportEnabled is False \n", "gatherKvrParameterData", 1061);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:VoiceEnterpriseNwSupportEnabled is True \n", "gatherKvrParameterData", 1059);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:fWnmSupportEnabled is False \n", "gatherKvrParameterData", 1068);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:fWnmSupportEnabled is True \n", "gatherKvrParameterData", 1066);
}

uint64_t AppleBCMWLANConfigManager::readEnhancedRoamingProperty(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Link loss suppression (fEnabledEnhancedRoaming) is False \n", "readEnhancedRoamingProperty", 1104);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Link loss suppression (fEnabledEnhancedRoaming) is True \n", "readEnhancedRoamingProperty", 1102);
}

uint64_t AppleBCMWLANConfigManager::populatePlatformProperties(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TxPowerCapCtrl invalid ver\n", "populatePlatformProperties", 1249);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : 6GHz support defaults to disable for platform, %d\n", "populatePlatformProperties", 1367, *(v2 + 391));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : 6GHz support explicitly disabled via platform config, %d\n", "populatePlatformProperties", 1363, *(v2 + 391));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : 6GHz supported for this platform, %d\n", "populatePlatformProperties", 1360, *(v2 + 391));
}

uint64_t AppleBCMWLANConfigManager::populatePlatformProperties(uint64_t a1, const OSNumber **a2)
{
  v2 = *(*a1 + 16);
  OSNumber::unsigned32BitValue(*a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid Tx chain mode, %d", v4, v5, v6);
}

uint64_t AppleBCMWLANConfigManager::readPmThresholds(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  v3 = "LPAS";
  if (v4)
  {
    v3 = "WoW";
  }

  return CCLogStream::logNotice(v1, "[dk] %s@%d:DT overrides PM alert thresholds for %s to - %d pct over %d secs;BGScan Quota %d secs &  Roam Quota %d , with restrictoin %d, secs over %d secs\n", "readPmThresholds", 1153, v3, *v2, v2[1], v2[4], v2[2], v2[3], v2[5]);
}

uint64_t AppleBCMWLANConfigManager::handleBeaconOffloadAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot offload beacon with error=%s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANConfigManager::handleBeaconDriftAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set becon drift mitigation params %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANConfigManager::setPowerProfile(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:ERP CTS is configured to %d\n", "setPowerProfile", 1955, *v2);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured ERP CTS for Alpine BMW\n", "setPowerProfile", 1957);
}

uint64_t AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:bcn_tbtt_config setting failed, error %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2, 0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Configured BCM drift parametes to FW %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:bcn_drift cmd alloc fail\n", "configureBeaconDriftOffsetConfig", 1980);
}

uint64_t AppleBCMWLANConfigManager::querySDBPolicies(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to retrive SDB Version, Error: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to retrive SDB Capabilities, Error: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to retrive SDB Bands, Error: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to retrive SDB Config, Error: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "querySDBPolicies", 2081);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for rxBuf\n", "querySDBPolicies", 2074);
}

uint64_t AppleBCMWLANConfigManager::configureRangingParams(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 16);
  OUTLINED_FUNCTION_5_0();
  (*(v7 + 112))();
  OUTLINED_FUNCTION_6();
  result = CCLogStream::logAlert(v6, "[dk] %s@%d:Failure setting iovar: %s\n", v9, v10, v11);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANConfigManager::setupBeaconOffload(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disable beacon offload due to boot-arg \n", "setupBeaconOffload", 2298);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Trying to configure Beacon offload when not assoicated \n", "setupBeaconOffload", 2304);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: setting beacon offload failed\n", "setupBeaconOffload", 2355);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BT eSCO active + Infra on 2G. Will not enable beacon offload\n", "setupBeaconOffload", 2317);
}

uint64_t AppleBCMWLANConfigManager::configureDynamicRssiWindow(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  v5 = *v4;
  v7 = (*(v3 + 112))(v2, v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set snr window to %d: %s\n", "configureDynamicRssiWindow", 3314, v5, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  v5 = *v4;
  v7 = (*(v3 + 112))(v2, v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set rssi window to %d: %s\n", "configureDynamicRssiWindow", 3308, v5, v7);
}

OSMetaClassBase *IOImageLoaderImageDictionary::getAttributes(const OSDictionary *this, IOImageLoaderImageDictionary *a2, const char *a3)
{
  if (!this)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_0();
  v6 = (*(v5 + 72))();
  if (!a2)
  {
    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  Object = OSDictionary::getObject(this, a2);
  if (!OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass))
  {
    return 0;
  }

  v8 = gOSDictionaryMetaClass;

  return OSMetaClassBase::safeMetaCast(Object, v8);
}

OSDictionary *IOImageLoaderImageDictionary::setAttributeWithString(IOImageLoaderImageDictionary *this, OSDictionary *a2, const char *cString, const char *a4)
{
  if (!this)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!cString)
  {
    return 0;
  }

  v6 = OSString::withCString(cString);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_14(v6);
  OUTLINED_FUNCTION_1_14();
  (*(v7 + 16))(v4);
  return a2;
}

void AppleBCMWLANChipMemory::read(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, IO80211Buffer *a5)
{
  v32 = 0;
  if (a2 <= 6)
  {
    v7 = a5;
    if (a5)
    {
      OUTLINED_FUNCTION_12_6();
      if (!v12 & v11 && v10 <= v9)
      {
        v14 = v8;
        if (IO80211Buffer::getLength(v7) > v8)
        {
          v15 = v14;
          Length = IO80211Buffer::getLength(v7);
          if ((v14 & 7) == 0 && ((v6 | v5) & 7) == 0 && Length >= (v14 + v6) && (IO80211Buffer::getBytesNoCopy(v7) & 7) == 0 && v6 >= 8)
          {
            OUTLINED_FUNCTION_18_2();
            do
            {
              v17 = OUTLINED_FUNCTION_21_1();
              v18 = v15;
              if (v17)
              {
                OUTLINED_FUNCTION_28_3();
                v18 = 8 * (v7 + v5);
                OUTLINED_FUNCTION_29_3();
                v17 = OUTLINED_FUNCTION_25_2(v19, v20, v21, v22);
              }

              AppleBCMWLANBusInterfacePCIe::getDevice(v17);
              OUTLINED_FUNCTION_9_8();
              IOPCIDevice::MemoryRead64(v24, v25, v23 + v18, &v32);
              *v14 = v32;
              if (OUTLINED_FUNCTION_21_1())
              {
                OUTLINED_FUNCTION_28_3();
                OUTLINED_FUNCTION_19_3();
                AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v26, v27, v28, v29, v30, v31);
              }

              v7 = (v7 + 1);
              ++v14;
              v15 += 8;
              --v6;
            }

            while (v6);
          }
        }
      }
    }
  }
}

void AppleBCMWLANChipMemory::write(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, IO80211Buffer *a5)
{
  if (a2 <= 6)
  {
    v8 = a5;
    if (a5)
    {
      OUTLINED_FUNCTION_12_6();
      v13 = !(!v38 & v12) || v11 > v10;
      if (!v13)
      {
        v14 = v9;
        if (IO80211Buffer::getLength(v8) > v9)
        {
          v15 = v14;
          Length = IO80211Buffer::getLength(v8);
          if ((v14 & 7) == 0 && ((v7 | v6) & 7) == 0 && Length >= (v14 + v7) && (IO80211Buffer::getBytesNoCopy(v8) & 7) == 0 && v7 >= 8)
          {
            OUTLINED_FUNCTION_18_2();
            do
            {
              v17 = OUTLINED_FUNCTION_21_1();
              v18 = v15;
              if (v17)
              {
                OUTLINED_FUNCTION_28_3();
                v18 = 8 * (v8 + v6);
                OUTLINED_FUNCTION_19_3();
                v17 = AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v19, v20, v21, v22, v23, v24);
              }

              AppleBCMWLANBusInterfacePCIe::getDevice(v17);
              OUTLINED_FUNCTION_9_8();
              IOPCIDevice::MemoryWrite64(v26, v27, v25 + v18, *(v14 + 8 * v8));
              v28 = OUTLINED_FUNCTION_21_1();
              if (v28)
              {
                OUTLINED_FUNCTION_28_3();
                OUTLINED_FUNCTION_17_3();
                v28 = AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v30, v31, v32, v33, v34, v35);
                v29 = *(v5 + 48);
              }

              if (v8)
              {
                v36 = *(v29 + 256);
                v13 = v36 < 1;
                v37 = (v36 + 0x7FFFFFFF) & v8;
                v38 = !v13 && v37 == 0;
                if (v38)
                {
                  v42 = 0;
                  AppleBCMWLANBusInterfacePCIe::getDevice(v28);
                  OUTLINED_FUNCTION_9_8();
                  IOPCIDevice::MemoryRead64(v40, v41, v39 + v18, &v42);
                }
              }

              v8 = (v8 + 1);
              v15 += 8;
            }

            while (v7 != v8);
          }
        }
      }
    }
  }
}

void AppleBCMWLANChipMemory::clear(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a2 <= 6 && ((a4 | a3) & 7) == 0)
  {
    v5 = *(*(a1 + 48) + 32 * a2 + 32);
    v6 = v5 <= a3 || a4 + a3 > v5;
    if (!v6)
    {
      v7 = a3 >> 3;
      v8 = v5 >> 3;
      v9 = a4 ? (a4 >> 3) + (a3 >> 3) : v8;
      if (v7 < v9)
      {
        v10 = 8 * (a3 >> 3);
        do
        {
          v11 = *(*(a1 + 48) + 248);
          if (v11)
          {
            OUTLINED_FUNCTION_29_3();
            v11 = OUTLINED_FUNCTION_24_3(v12, v13, v14, v15);
          }

          AppleBCMWLANBusInterfacePCIe::getDevice(v11);
          OUTLINED_FUNCTION_9_8();
          IOPCIDevice::MemoryWrite64(v17, v18, v10 + v16, 0);
          v19 = OUTLINED_FUNCTION_21_1();
          if (v19)
          {
            OUTLINED_FUNCTION_29_3();
            OUTLINED_FUNCTION_17_3();
            v19 = AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v21, v22, v23, v24, v25, v26);
            v20 = *(a1 + 48);
          }

          if (v7)
          {
            v27 = *(v20 + 256);
            v6 = v27 < 1;
            v28 = (v27 + 0x7FFFFFFF) & v7;
            if (!v6 && v28 == 0)
            {
              v33 = 0;
              AppleBCMWLANBusInterfacePCIe::getDevice(v19);
              OUTLINED_FUNCTION_9_8();
              IOPCIDevice::MemoryRead64(v31, v32, v10 + v30, &v33);
            }
          }

          ++v7;
          v10 += 8;
        }

        while (v9 != v7);
      }
    }
  }
}

void AppleBCMWLANChipMemory::write32(uint64_t a1, unsigned int a2)
{
  if (a2 <= 6)
  {
    OUTLINED_FUNCTION_2_13();
    v8 = !v8 & v7 && (v2 & 3) == 0;
    if (v8 && v2 + 4 <= v6)
    {
      v10 = v3;
      v11 = *(v4 + 248);
      if (v11)
      {
        v11 = OUTLINED_FUNCTION_24_3(v11, *(v5 + 40) + v2, v3, 4);
      }

      AppleBCMWLANBusInterfacePCIe::getDevice(v11);
      OUTLINED_FUNCTION_5_11();
      IOPCIDevice::MemoryWrite32(v12, v13, v14, v10);
      if (OUTLINED_FUNCTION_14_5())
      {
        OUTLINED_FUNCTION_17_3();

        AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v15, v16, v17, v18, v19, v20);
      }
    }
  }
}

void AppleBCMWLANChipMemory::read32(uint64_t a1, unsigned int a2)
{
  if (a2 <= 6)
  {
    OUTLINED_FUNCTION_2_13();
    v7 = v4;
    v9 = !v9 & v8 && (v4 & 3) == 0;
    if (v9 && v4 + 4 <= v6)
    {
      v11 = OUTLINED_FUNCTION_20_1(v5);
      if (v11)
      {
        v11 = OUTLINED_FUNCTION_25_2(v11, v3 + v7, 0, 4);
      }

      AppleBCMWLANBusInterfacePCIe::getDevice(v11);
      OUTLINED_FUNCTION_5_11();
      IOPCIDevice::MemoryRead32(v12, v13, v14, v2);
      if (OUTLINED_FUNCTION_14_5())
      {
        OUTLINED_FUNCTION_19_3();

        AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v15, v16, v17, v18, v19, v20);
      }
    }
  }
}

void AppleBCMWLANChipMemory::write16(uint64_t a1, unsigned int a2)
{
  if (a2 <= 6)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = *(v5 + 32);
    if (v6 > v2)
    {
      v7 = v2;
      if ((v2 & 1) == 0 && v2 + 2 <= v6)
      {
        v8 = v3;
        v9 = *(v4 + 248);
        if (v9)
        {
          v9 = OUTLINED_FUNCTION_24_3(v9, *(v5 + 40) + v2, v3, 2);
        }

        AppleBCMWLANBusInterfacePCIe::getDevice(v9);
        OUTLINED_FUNCTION_8_10();
        IOPCIDevice::MemoryWrite16(v11, v12, v10 + v7, v8);
        if (OUTLINED_FUNCTION_14_5())
        {
          OUTLINED_FUNCTION_17_3();

          AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v13, v14, v15, v16, v17, v18);
        }
      }
    }
  }
}

void AppleBCMWLANChipMemory::read16(uint64_t a1, unsigned int a2)
{
  if (a2 <= 6)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = *(v5 + 32);
    if (v6 > v2)
    {
      v7 = v2;
      if ((v2 & 1) == 0 && v2 + 2 <= v6)
      {
        v8 = v3;
        v9 = *(v4 + 248);
        if (v9)
        {
          v9 = OUTLINED_FUNCTION_25_2(v9, *(v5 + 40) + v2, 0, 2);
        }

        AppleBCMWLANBusInterfacePCIe::getDevice(v9);
        OUTLINED_FUNCTION_8_10();
        IOPCIDevice::MemoryRead16(v11, v12, v10 + v7, v8);
        if (OUTLINED_FUNCTION_14_5())
        {
          OUTLINED_FUNCTION_19_3();

          AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v13, v14, v15, v16, v17, v18);
        }
      }
    }
  }
}

void AppleBCMWLANChipMemory::write8(uint64_t a1, unsigned int a2)
{
  if (a2 <= 6)
  {
    OUTLINED_FUNCTION_6_7();
    if (*(v6 + 32) > v7)
    {
      v8 = v4;
      v9 = OUTLINED_FUNCTION_27_3(v5);
      if (v9)
      {
        v9 = OUTLINED_FUNCTION_24_3(v9, v2, v8, 1);
      }

      AppleBCMWLANBusInterfacePCIe::getDevice(v9);
      OUTLINED_FUNCTION_8_10();
      IOPCIDevice::MemoryWrite8(v11, v12, v10 + v3, v8);
      if (OUTLINED_FUNCTION_14_5())
      {
        OUTLINED_FUNCTION_17_3();

        AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v13, v14, v15, v16, v17, v18);
      }
    }
  }
}

void AppleBCMWLANChipMemory::read8(uint64_t a1, unsigned int a2)
{
  if (a2 <= 6)
  {
    OUTLINED_FUNCTION_6_7();
    if (*(v6 + 32) > v7)
    {
      v8 = v4;
      v9 = OUTLINED_FUNCTION_27_3(v5);
      if (v9)
      {
        v9 = OUTLINED_FUNCTION_25_2(v9, v2, 0, 1);
      }

      AppleBCMWLANBusInterfacePCIe::getDevice(v9);
      OUTLINED_FUNCTION_8_10();
      IOPCIDevice::MemoryRead8(v11, v12, v10 + v3, v8);
      if (OUTLINED_FUNCTION_14_5())
      {
        OUTLINED_FUNCTION_19_3();

        AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v13, v14, v15, v16, v17, v18);
      }
    }
  }
}

uint64_t AppleBCMWLANChipMemory::readChipRAMDK(AppleBCMWLANChipMemory *this, unsigned int a2, int a3, IO80211Buffer *a4, unsigned int a5)
{
  result = 0;
  if (a4)
  {
    v9 = *(*(this + 6) + 160);
    if (v9 > a2 && a3 + a2 <= v9)
    {
      if (IO80211Buffer::getLength(a4) <= a5 || IO80211Buffer::getLength(a4) < (a5 + a3))
      {
        return 0;
      }

      else
      {
        result = IO80211Buffer::getBytesNoCopy(a4);
        if (result)
        {
          AppleBCMWLANChipMemory::readBuf(this, 4u, a2, a3, result);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipMemory::readFlags(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_22_2(v2, v3, *v1, v4, v5, v6, v7, v8, *v18, v18[4]);
  return OUTLINED_FUNCTION_16_4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t AppleBCMWLANChipMemory::readTrapAddr(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_22_2(v2, v3, (*v1 + 4), v4, v5, v6, v7, v8, *v18, v18[4]);
  return OUTLINED_FUNCTION_16_4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t AppleBCMWLANChipMemory::readRingInfoAddr(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_22_2(v2, v3, (*v1 + 48), v4, v5, v6, v7, v8, *v18, v18[4]);
  return OUTLINED_FUNCTION_16_4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t AppleBCMWLANChipMemory::readScratchMemorySize(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_22_2(v2, v3, (*v1 + 52), v4, v5, v6, v7, v8, *v18, v18[4]);
  return OUTLINED_FUNCTION_16_4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t AppleBCMWLANChipMemory::readScratchMemoryAddr(AppleBCMWLANChipMemory *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_4(this, a2, (**(this + 6) + 56), a4, a5, a6, a7, a8, v13, v14, 0, 0);
  v8 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v8, v9);
  OUTLINED_FUNCTION_4_12();
  return v10 | (v11 << 32);
}

void AppleBCMWLANChipMemory::writeScratchMemoryAddr()
{
  OUTLINED_FUNCTION_3_10();
  AppleBCMWLANChipMemory::write32(v0, 4u);
  v1 = OUTLINED_FUNCTION_10_8();

  AppleBCMWLANChipMemory::write32(v1, v2);
}

uint64_t AppleBCMWLANChipMemory::readFlags2(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_22_2(v2, v3, (*v1 + 80), v4, v5, v6, v7, v8, *v18, v18[4]);
  return OUTLINED_FUNCTION_16_4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t AppleBCMWLANChipMemory::readFlags3(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_22_2(v2, v3, (*v1 + 108), v4, v5, v6, v7, v8, *v18, v18[4]);
  return OUTLINED_FUNCTION_16_4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

void AppleBCMWLANChipMemory::writeD2hHealthCheck()
{
  OUTLINED_FUNCTION_3_10();
  AppleBCMWLANChipMemory::write32(v0, 4u);
  v1 = OUTLINED_FUNCTION_10_8();

  AppleBCMWLANChipMemory::write32(v1, v2);
}

uint64_t AppleBCMWLANChipMemory::readCommonRingMemoryAddr(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_22_2(v2, v3, *(v1 + 4), v4, v5, v6, v7, v8, *v18, v18[4]);
  return OUTLINED_FUNCTION_16_4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t AppleBCMWLANChipMemory::readSubmissionWriteIndexArrayHostAddr(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_23_4(v2, v3, (v1 + 20), v4, v5, v6, v7, v8, v14, v15, *v16, v16[4]);
  OUTLINED_FUNCTION_13_5();
  v9 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v9, v10);
  OUTLINED_FUNCTION_4_12();
  return v11 | (v12 << 32);
}

void AppleBCMWLANChipMemory::writeSubmissionWriteIndexArrayHostAddr()
{
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_30_2();
  AppleBCMWLANChipMemory::write32(v0, 4u);
  OUTLINED_FUNCTION_11_7();
  v1 = OUTLINED_FUNCTION_10_8();

  AppleBCMWLANChipMemory::write32(v1, v2);
}

uint64_t AppleBCMWLANChipMemory::readCompletionReadIndexArrayHostAddr(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_23_4(v2, v3, (v1 + 44), v4, v5, v6, v7, v8, v14, v15, *v16, v16[4]);
  OUTLINED_FUNCTION_13_5();
  v9 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v9, v10);
  OUTLINED_FUNCTION_4_12();
  return v11 | (v12 << 32);
}

void AppleBCMWLANChipMemory::writeCompletionReadIndexArrayHostAddr()
{
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_30_2();
  AppleBCMWLANChipMemory::write32(v0, 4u);
  OUTLINED_FUNCTION_11_7();
  v1 = OUTLINED_FUNCTION_10_8();

  AppleBCMWLANChipMemory::write32(v1, v2);
}

uint64_t AppleBCMWLANChipMemory::readSubmissionReadIndexArrayHostAddr(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_23_4(v2, v3, (v1 + 28), v4, v5, v6, v7, v8, v14, v15, *v16, v16[4]);
  OUTLINED_FUNCTION_13_5();
  v9 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v9, v10);
  OUTLINED_FUNCTION_4_12();
  return v11 | (v12 << 32);
}

void AppleBCMWLANChipMemory::writeSubmissionReadIndexArrayHostAddr()
{
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_30_2();
  AppleBCMWLANChipMemory::write32(v0, 4u);
  OUTLINED_FUNCTION_11_7();
  v1 = OUTLINED_FUNCTION_10_8();

  AppleBCMWLANChipMemory::write32(v1, v2);
}

uint64_t AppleBCMWLANChipMemory::readCompletionWriteIndexArrayHostAddr(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_23_4(v2, v3, (v1 + 36), v4, v5, v6, v7, v8, v14, v15, *v16, v16[4]);
  OUTLINED_FUNCTION_13_5();
  v9 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v9, v10);
  OUTLINED_FUNCTION_4_12();
  return v11 | (v12 << 32);
}

void AppleBCMWLANChipMemory::writeCompletionWriteIndexArrayHostAddr()
{
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_30_2();
  AppleBCMWLANChipMemory::write32(v0, 4u);
  OUTLINED_FUNCTION_11_7();
  v1 = OUTLINED_FUNCTION_10_8();

  AppleBCMWLANChipMemory::write32(v1, v2);
}

uint64_t AppleBCMWLANChipMemory::readMaxTxFlowRings(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_26_3();
  AppleBCMWLANChipMemory::read16(v1, 4u);
  return v3;
}

uint64_t AppleBCMWLANChipMemory::readMaxDynamicSubmissionRings(AppleBCMWLANChipMemory *this)
{
  OUTLINED_FUNCTION_26_3();
  AppleBCMWLANChipMemory::read16(v1, 4u);
  return v3;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPool::initWithName(IOUserNetworkPacketBufferPool *a1, const char *a2, OSMetaClass *a3, unsigned int *a4, OSMetaClass_vtbl *a5, uint64_t a6)
{
  v12 = IOMallocZeroTyped();
  a1[1].meta = v12;
  if (v12)
  {
    v12->__vftable = a5;
    *&a1[1].meta->OSObject::OSObjectInterface::refcount = a6;
    a1[1].meta->OSObject::meta = *a4;
    a1[1].meta->metaClassPrivate = a4[2];
    a1[1].meta[1].meta = a3;
    result = AppleBCMWLANSkywalkPacketPool::initWithName(a1, a2, a3, a4);
    if (!result)
    {
      return result;
    }

    Pow2 = AppleBCMWLANHashtable::alignNextPow2(*a4);
    a1[1].meta[1].__vftable = AppleBCMWLANHashtable::withCapacity(Pow2);
    if (a1[1].meta[1].__vftable)
    {
      v15 = AppleBCMWLANHashtable::alignNextPow2(*a4);
      *&a1[1].meta[1].refcount = AppleBCMWLANHashtable::withCapacity(v15);
      if (*&a1[1].meta[1].refcount)
      {
        return 1;
      }
    }
  }

  else
  {
    IOLog("packet pool ivar alloc fail\n");
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(uint64_t a1)
{
  result = **(a1 + 72);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(**(a1 + 72), "[dk] %s@%d:%s %d Trying to deallocate invalid packet\n", "deallocatePacket", 233, "void AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(IO80211NetworkPacket *)", 233);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_16(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(**(v2 + 72), "[dk] %s@%d:invalid duplicated buffer\n", "duplicatePacket", 258);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_0_16(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(**(v2 + 72), "[dk] %s@%d:invalid duplicated packet\n", "duplicatePacket", 253);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleActionFrame(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 48);
  }

  else
  {
    v2 = 0;
  }

  if (!a2)
  {
    return result;
  }

  v4 = result;
  OUTLINED_FUNCTION_5_0();
  if (!(*(v5 + 1088))() || (OUTLINED_FUNCTION_24_1(), (*(v6 + 1088))(v4), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 24);
      v8 = *(a2 + 25);
      v9 = *(a2 + 26);
      v10 = *(a2 + 27);
      v11 = *(a2 + 28);
      v12 = *(a2 + 29);
      *buf = 67111170;
      v85 = 78;
      v86 = 2080;
      v87 = "handleActionFrame";
      v88 = 1024;
      v89 = 4274;
      v90 = 1024;
      *v91 = v7;
      *&v91[4] = 1024;
      *&v91[6] = v8;
      *v92 = 1024;
      *&v92[2] = v9;
      *v93 = 1024;
      *&v93[2] = v10;
      *v94 = 1024;
      *&v94[2] = v11;
      *v95 = 1024;
      *&v95[2] = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LPHS: Action frame received from addr = %02X:%02X:%02X:%02X:%02X:%02X\n", buf, 0x3Cu);
    }
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v13 + 1088))(v4))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v14 + 1088))(v4);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v54 + 1088))(v4);
      OUTLINED_FUNCTION_24_4();
      CCLogStream::logNotice(v55, "[dk] %s@%d:LPHS: Action frame received from addr = %02X:%02X:%02X:%02X:%02X:%02X\n", "handleActionFrame", 4274, v78, v79, v80, v81, v82, v83);
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    if (v15 <= 0x11)
    {
      OUTLINED_FUNCTION_24_1();
      result = (*(v50 + 1088))(v4);
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v51 + 1088))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          v53 = (*(v52 + 1088))(v4);
          return CCLogStream::logCrit(v53, "[dk] %s@%d:Event message buffer underflow, datalen[%u], expected >= %u\n", "handleActionFrame", 4278, *(a2 + 20), 18);
        }
      }
    }

    else
    {
      v16 = 0;
      v17 = *(v4 + 17) + 185;
      while (memcmp((v17 + v16), (a2 + 24), 6uLL))
      {
        v16 += 48;
        if (v16 == 240)
        {
          OUTLINED_FUNCTION_24_1();
          result = (*(v18 + 1088))(v4);
          if (result)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v19 + 1088))(v4);
            result = CCLogStream::shouldLog();
            if (result)
            {
              OUTLINED_FUNCTION_24_1();
              v21 = (*(v20 + 1088))(v4);
              return CCLogStream::logAlert(v21, "[dk] %s@%d:ERROR: No Free slots available in STA Table, this should never happen\n");
            }
          }

          return result;
        }
      }

      v22 = *v2;
      if (__rev16(v22) >= 3)
      {
        OUTLINED_FUNCTION_24_1();
        result = (*(v56 + 1088))(v4);
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          (*(v57 + 1088))(v4);
          result = CCLogStream::shouldLog();
          if (result)
          {
            OUTLINED_FUNCTION_24_1();
            v59 = (*(v58 + 1088))(v4);
            return CCLogStream::logAlert(v59, "[dk] %s@%d:unexpected AF event version[%u]\n");
          }
        }
      }

      else
      {
        if (v22 == 256)
        {
          v23 = 17;
          v24 = 8;
          goto LABEL_26;
        }

        if (v22 != 512)
        {
          v26 = 170;
          v25 = 170;
LABEL_28:
          OUTLINED_FUNCTION_24_1();
          if (!(*(v27 + 1088))(v4) || (OUTLINED_FUNCTION_24_1(), (*(v28 + 1088))(v4), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_27_4();
              v88 = 1024;
              v89 = 4297;
              v90 = 1024;
              *v91 = v25;
              *&v91[4] = 1024;
              *&v91[6] = v26;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LPHS: Action frame Contents %0x %0x\n", buf, 0x24u);
            }
          }

          OUTLINED_FUNCTION_24_1();
          if ((*(v29 + 1088))(v4))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v30 + 1088))(v4);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v61 = (*(v60 + 1088))(v4);
              CCLogStream::logNotice(v61, "[dk] %s@%d:LPHS: Action frame Contents %0x %0x\n", "handleActionFrame", 4297, v25, v26);
            }
          }

          if (v25 != 127)
          {
            goto LABEL_40;
          }

          if (v26 != 1)
          {
            if (v26 != 2)
            {
LABEL_40:
              if (AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(v4))
              {
                OUTLINED_FUNCTION_24_1();
                if (!(*(v31 + 1088))(v4) || (OUTLINED_FUNCTION_24_1(), (*(v32 + 1088))(v4), (CCLogStream::shouldLogConsole() & 1) == 0))
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v33 = OUTLINED_FUNCTION_23_5();
                    isConcurrencyOpModeSet = AppleBCMWLANCore::isConcurrencyOpModeSet(v33, 1);
                    v35 = OUTLINED_FUNCTION_23_5();
                    v36 = AppleBCMWLANCore::isConcurrencyOpModeSet(v35, 2);
                    v37 = OUTLINED_FUNCTION_23_5();
                    v38 = AppleBCMWLANCore::isConcurrencyOpModeSet(v37, 4);
                    v39 = OUTLINED_FUNCTION_23_5();
                    v40 = AppleBCMWLANCore::isConcurrencyOpModeSet(v39, 8);
                    v41 = OUTLINED_FUNCTION_23_5();
                    AppleBCMWLANCore::isConcurrencyOpModeSet(v41, 16);
                    OUTLINED_FUNCTION_27_4();
                    v88 = 1024;
                    v89 = 4314;
                    v90 = v42;
                    *v91 = "handleActionFrame";
                    *&v91[8] = 1024;
                    *v92 = isConcurrencyOpModeSet;
                    *&v92[4] = 1024;
                    *v93 = v36;
                    *&v93[4] = 1024;
                    *v94 = v38;
                    *&v94[4] = 1024;
                    *v95 = v40;
                    *&v95[4] = 1024;
                    v96 = v43;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s: SoftAPConcurrencyEnabled: infra=%d awdl=%d softAp=%d nan=%d ir=%d\n", buf, 0x40u);
                  }
                }

                OUTLINED_FUNCTION_24_1();
                if ((*(v44 + 1088))(v4))
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v45 + 1088))(v4);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_24_1();
                    v67 = (*(v66 + 1088))(v4);
                    v68 = OUTLINED_FUNCTION_23_5();
                    v69 = AppleBCMWLANCore::isConcurrencyOpModeSet(v68, 1);
                    v70 = OUTLINED_FUNCTION_23_5();
                    v71 = AppleBCMWLANCore::isConcurrencyOpModeSet(v70, 2);
                    v72 = OUTLINED_FUNCTION_23_5();
                    v73 = AppleBCMWLANCore::isConcurrencyOpModeSet(v72, 4);
                    v74 = OUTLINED_FUNCTION_23_5();
                    v75 = AppleBCMWLANCore::isConcurrencyOpModeSet(v74, 8);
                    v76 = OUTLINED_FUNCTION_23_5();
                    v77 = AppleBCMWLANCore::isConcurrencyOpModeSet(v76, 16);
                    CCLogStream::logNotice(v67, "[dk] %s@%d:%s: SoftAPConcurrencyEnabled: infra=%d awdl=%d softAp=%d nan=%d ir=%d\n", "handleActionFrame", 4314, "handleActionFrame", v69, v71, v73, v75, v77);
                  }
                }
              }

              result = AppleBCMWLANIO80211APSTAInterface::checkIfAllStaAreInLPM(v4);
              if (result)
              {
                result = AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(v4);
                if ((result & 1) == 0)
                {
                  return AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(v4, 3, 11);
                }
              }

              return result;
            }

            v26 = 2;
          }

          *(*(v4 + 17) + v16 + 200) = v26;
          goto LABEL_40;
        }

        if (v15 > 0x19)
        {
          v23 = 25;
          v24 = 12;
LABEL_26:
          v25 = LOBYTE(v2[v24]);
          v26 = *(v2 + v23);
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_24_1();
        result = (*(v62 + 1088))(v4);
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          (*(v63 + 1088))(v4);
          result = CCLogStream::shouldLog();
          if (result)
          {
            OUTLINED_FUNCTION_24_1();
            v65 = (*(v64 + 1088))(v4);
            return CCLogStream::logAlert(v65, "[dk] %s@%d:Event message buffer underflow, datalen[%u], expected >= %u\n");
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    result = (*(v46 + 1088))(v4);
    if (result)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v47 + 1088))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        v49 = (*(v48 + 1088))(v4);
        return CCLogStream::logAlert(v49, "[dk] %s@%d:ERROR: Received event with no event data!\n");
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::init()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get Enterprise Manager\n", "init", 317);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get Config Manager\n", "init", 308);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get Tx Power Manager\n", "init", 300);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get Power Manager\n", "init", 281);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get BGScan Adapter\n", "init", 273);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to instantiate AP monitor timer\n", "init", 256);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to instantiate AP stats timer\n", "init", 247);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleAPStatsUpdates()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ALERT: SoftAP has been inactive > %d msecs, posting message to wifiManager to kill softap\n", "handleAPStatsUpdates", 3166, 1500000);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logNoticeIf(v2, 0x80000uLL, "[dk] %s@%d: current associated STA count %ld\n", "handleAPStatsUpdates", 3176, **v0);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: ERROR: Unable to query list of associated STAs %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::start()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to register interface with bus interface", "start", 392);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::registerInterface()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:APSTAInterface: media type report fail, ret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:APSTAInterface: registration fail, ret[0x%08x]\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setInterfaceEnable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:APSTA: disable data path\n", "setInterfaceEnable", 536);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:APSTA: enable data path\n", "setInterfaceEnable", 524);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setPromiscuousModeEnable(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  v6 = "Disable";
  if (a3)
  {
    v6 = "Enable";
  }

  return CCLogStream::logAlert(v5, "[dk] %s@%d:AppleBCMWLANIO80211APSTAInterface::(%s) ret=0x%08x\n", "setPromiscuousModeEnable", 558, v6, 0);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::stop()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:APSTA Skywalk Interface Stop\n", "stop", 598);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::reset()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:\n", "reset", 674);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setPowerSaveState()
{
  OUTLINED_FUNCTION_8_7();
  v1 = (*(v0 + 1088))();
  v2 = OUTLINED_FUNCTION_19_4();
  isConcurrencyOpModeSet = AppleBCMWLANCore::isConcurrencyOpModeSet(v2, 1);
  v4 = OUTLINED_FUNCTION_19_4();
  v5 = AppleBCMWLANCore::isConcurrencyOpModeSet(v4, 2);
  v6 = OUTLINED_FUNCTION_19_4();
  v7 = AppleBCMWLANCore::isConcurrencyOpModeSet(v6, 4);
  v8 = OUTLINED_FUNCTION_19_4();
  v9 = AppleBCMWLANCore::isConcurrencyOpModeSet(v8, 8);
  v10 = OUTLINED_FUNCTION_19_4();
  v11 = AppleBCMWLANCore::isConcurrencyOpModeSet(v10, 16);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:%s: SoftAPConcurrencyEnabled: infra=%d awdl=%d softAp=%d nan=%d ir=%d\n", "setPowerSaveState", 4848, "setPowerSaveState", isConcurrencyOpModeSet, v5, v7, v9, v11);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  v4 = *(*v1 + 16);
  if (v4 > 3)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_1003CC710[v4];
  }

  if (v0 > 3)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_1003CC710[v0];
  }

  return CCLogStream::logInfo(v3, "[dk] %s@%d:LPHS power state %s change request to %s by Infra SCAN, ignored\n", "setPowerSaveState", 4804, v5, v6);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setBeaconInterval()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Setting SoftAP beacon interval fails, error %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setBeaconDTIMPeriod()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Setting SoftAP beacon DTIM period fails, error %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getCHANNEL()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_GET_CHANNEL failed, error %s  \n", v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSTATION_LIST()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: unable to query list of associated STAs %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: unable to query list of associated STAs %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getAssocListAsyncCallback()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_0();
  (*(v2 + 112))();
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:  failed, error %s\n", v4, v5, v6);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::convertBCMAssocListToAppleAssocList()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Exceeded maximal number of STA (%ld)\n", "convertBCMAssocListToAppleAssocList", 869, v3);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error: cannot get closednet : retval %x: %s\n", "getHOST_AP_MODE_HIDDEN", 918, a3, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN()
{
  OUTLINED_FUNCTION_0_8();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_29_4();
  v8 = v3(v2);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:get closednet : hidden %d, retval %x: %s\n", v5, v6, v7, 0, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:softAP ended; bringing up AWDL again\n", "setHOST_AP_MODE", 974);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unable to bring UP AWDL: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:softAP ended; bringing up NAN again\n", "setHOST_AP_MODE", 985);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unable to bring UP NAN: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:softAP ended; bringing up NDI again\n", "setHOST_AP_MODE", 993);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unable to bring UP NDI: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Tearing down AWDL before bringing up softAP\n", "setHOST_AP_MODE", 946);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unable to quiesce AWDL: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Tearing down NAN before bringing up softAP\n", "setHOST_AP_MODE", 955);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unable to quiesce NAN: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Tearing down NAN Data Interface before bringing up softAP\n", "setHOST_AP_MODE", 962);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unable to quiesce NDI: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: enter\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  v3 = *(*v0 + 16);
  if (v3 > 3)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_1003CC710[v3];
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d:SoftAP already up, power state %s, bailout\n", "setHostApModeInternal", 1334, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:SoftAP already up; restarting\n", "setHostApModeInternal", 1305);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:ERROR: Can't bring down bss, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Removing SoftAP interface from FW\n", "setHostApModeInternal", 1316);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot remove interface for SoftAP, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Softap interface is down!\n", "setHostApModeInternal", 1325);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d: SoftAP FW interface create: Requesting bsscfg = %d via bsscfg:ssid (%s)\n", "setHostApModeInternal", 1418, *v0, (v0 + 8));
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: SoftAP FW interface create: cant set bsscf:ssid, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: SoftAP FW interface create: pending to receive interface create complete event with valid index \n", "setHostApModeInternal", 1432);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: ERROR: SoftAP FW interface create: failed to receive interface complete event, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: cur_etheraddr failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: SoftAP FW interface create: invalid interface index \n", "setHostApModeInternal", 1440);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v0 + 536));
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: Creating SofAP chip interface %d, fw ver %d\n", "setHostApModeInternal", 1352, "setHostApModeInternal", 1, FirmwareInterfaceVersion);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:ERROR: Cannot create interface for SoftAP, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting ssid (%s) for SoftAP\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Error: cant set ssid, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: bssnmode failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: ap_isolate failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: bss_rateset failed, error %s  \n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:  set_pmk failed, error %s\n", v6, v7, v8);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ERROR, no PMK specified or bad key length (%d)!\n", "setHostApModeInternal", 1670, v3);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:  set_pmk failed, error %s\n", v6, v7, v8);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:  ------%s: WLC_SET_WPA_AUTH to 0x%X\n", "setHostApModeInternal", 1581, "setHostApModeInternal", *v0);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:  WLC_SET_WPA_AUTH failed, error %s\n", v6, v7, v8);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:  set mfp failed, error %s\n", v6, v7, v8);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: cant bring down ap, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: cant bring down ap, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ERROR, no PMK specified or bad key length (%d)!\n", "setHostApModeInternal", 1549, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: cant bring up bss, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: interface is up!\n", "setHostApModeInternal", 1703);
}

{
  OUTLINED_FUNCTION_0_8();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_29_4();
  v8 = v3(v2);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:set closednet : hidden %d, retval %x: %s\n", v5, v6, v7, 0, v8);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Success, posted link up\n", "setHostApModeInternal", 1782);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: : Could not create AP: no network data\n", "setHostApModeInternal", 1058);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: : Could not create AP: vendr ie len too big %u\n", "setHostApModeInternal", 1053, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:User request to stop SoftAP\n", "setHostApModeInternal", 1067);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:  WLC_SCB_DEAUTHENTICATE_FOR_REASON failed, error %s\n", v6, v7, v8);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: can't bring down bss, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: interface is down!\n", "setHostApModeInternal", 1204);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:  WLC_SET_WPA_AUTH failed, error %s\n", v6, v7, v8);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: cant bring down ap, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: cant bring up ap, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Removing SoftAP interface from FW\n", "setHostApModeInternal", 1262);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot remove interface for SoftAP, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logWarn(v1, "[dk] %s@%d: : stop ap requested while not up\n", "setHostApModeInternal", 1028);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Cleaning up SoftAP interface from FW\n", "setHostApModeInternal", 1036);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(IO80211SkywalkInterface *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_5();
  v7 = (*(v6 + 1088))();
  LODWORD(a1) = IO80211SkywalkInterface::getInterfaceId(a1);
  v8 = OUTLINED_FUNCTION_4_13();
  v10 = (*(v9 + 112))(v8, a4);
  return CCLogStream::logCrit(v7, "[dk] %s@%d:  Auth Config failed : inf:%d %x %s\n", "setHostApModeInternal", 1655, a1, a4, v10);
}

{
  OUTLINED_FUNCTION_5_5();
  v7 = (*(v6 + 1088))();
  LODWORD(a1) = IO80211SkywalkInterface::getInterfaceId(a1);
  v8 = OUTLINED_FUNCTION_4_13();
  v10 = (*(v9 + 112))(v8, a4);
  return CCLogStream::logCrit(v7, "[dk] %s@%d:  Auth Config failed : inf:%d %x %s\n", "setHostApModeInternal", 1251, a1, a4, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: cannot set closednet : retval %x: %s\n", "setHostApModeInternal", 1739, a3, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::resetSoftAPLowPowerMode()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:LPHS: Done Resetting SoftAP LowPower Mode Config\n", "resetSoftAPLowPowerMode", 4664);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureManagementFrameProtectionForSoftAP()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  if (*v0)
  {
    v3 = "Enabled";
  }

  else
  {
    v3 = "Disabled";
  }

  return CCLogStream::logNoticeIf(v2, 0x80uLL, "[dk] %s@%d:MFP is %s\n", "configureManagementFrameProtectionForSoftAP", 3363, v3);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setMaxAssoc()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: maxassoc failed, error %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::programVendorIEList()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:FAILED to configure host AP IE list, setVendorIE() returned error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:FAILED to configure host AP IE list, no memory\n", "programVendorIEList", 2098);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:FAILED to configure host AP IE list, invalid IE length\n", "programVendorIEList", 2092);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: vndr_ie  error %s - failed to get all vendor IEs\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: vndr_ie error %s - failed to delete existing IE\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: vndr_ie  error %s - failed to add IE\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: vndr_ie  error %s - failed to add IE\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Apple Vendor IE length limit exceeded (%d, %lu) \n", "programAppleVendorIE", 2334, v0, 82);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: IE - Out of range check, (%d, %lu) \n", "programAppleVendorIE", 2177, 1, v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:  Allocation buffer failure\n", "programAppleVendorIE", 2145);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_7();
  v7 = (*(v6 + 1088))();
  return CCLogStream::logAlert(v7, "[dk] %s@%d: IE - Out of range check, (%d, %lu) \n", "programAppleVendorIE", 2187, *v4 + 5, a4);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setRSNXE()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Setting RSNXE fails, error %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: cannot set closednet : retval %x: %s\n", "setHOST_AP_MODE_HIDDEN", 1815, a3, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN()
{
  OUTLINED_FUNCTION_0_8();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_29_4();
  v8 = v3(v2);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:set closednet : hidden %d, retval %x: %s\n", v5, v6, v7, 0, v8);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Interface not up yet, cannot set softAP hidden mode to %d\n", "setHOST_AP_MODE_HIDDEN", 1795, *(v0 + 4));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::holdSoftAPPowerAssertion()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LPHS: Hold AP power assertion\n", "holdSoftAPPowerAssertion", 4575);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableSoftAPPowerSave()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ALERT: Enabling SoftAP power saving NOT allowed on non-SDB platforms\n", "enableSoftAPPowerSave", 4964);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSSID()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:\n", "setSSID", 1843);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setCHANNEL()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Setting SoftAP Failed to set chanspecs, channel %d is out range \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Setting SoftAP Failed, invalid input parameter \n", "setCHANNEL", 1854);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_3_5();
  (*(v7 + 160))(v3);
  v12 = *(a3 + 8);
  v13 = *(a3 + 12);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:<%s> Invalid channel spec for channel %d flags 0x%X\n", v9, v10, v11, v12, v13);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(uint64_t a1)
{
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 1088))();
  (*(*a1 + 160))(a1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:<%s> WARNING: failed to set channel, invalid input parameter \n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Interface not up, ifUp: %u ifLinkUp: %u \n", "setSOFTAP_TRIGGER_CSA", 1916, *(*v0 + 620), *(*v0 + 809));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_WIFI_NETWORK_INFO_IE()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d: %s: %d %d %d\n", "setSOFTAP_WIFI_NETWORK_INFO_IE", 2042, "setSOFTAP_WIFI_NETWORK_INFO_IE", *(*v0 + 46), *(*v0 + 44), *(*v0 + 47));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Invalid SSID len[%u]\n", "setSOFTAP_WIFI_NETWORK_INFO_IE", 2023, *v0);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setRSN_CONF()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: softAP power change is in progress. Rejecting RSN config.\n", "setRSN_CONF", 2360);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WLC_SET_WPA_AUTH 0x%X\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: cant bring up bss, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: interface is up!\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleKeyToBcomKey() failed, error %s\n", v6, v7, v8);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_KEY failed, error %s\n", v6, v7, v8);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: cipher type (%d) not supported\n", "setCIPHER_KEY", 2566, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: SoftAP interface not up\n", "setCIPHER_KEY", 2529);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSTA_IE_LIST()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to find in Station table \n", "getSTA_IE_LIST", 2583);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSTA_STATS()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to get station stats, error %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  convertEventToString(*(v0 + 4), 0, 0);
  OUTLINED_FUNCTION_30_3();
  return CCLogStream::logAlertIf(v2, 0x10uLL, "[dk] %s@%d:type = %s (%lu), status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02X:%02X:%02X:%02X:%02X:%02X\n", "handleEvent", 2717, v3, v4, v5, v7, v6, v8, v9, v10, v11, v12, v13, *(v0 + 29));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ALERT: Non-Apple device %02X:%02X:%02X:%02X:%02X:%02X joining when in hidden mode, rejecting association\n", "handleEvent", 2894, v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_14_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_E_PSK_AUTH event size %lu, status %u reason %u dataLen %u authType 0x%X addr %02X:%02X:%02X:%02X:%02X:%02X", "handleEvent", 3027, 48, v0[2], v0[3], v0[5], v0[4], v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_E_PSK_AUTH event GTK rekeying done\n", "handleEvent", 3030);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_14_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_E_AUTH_IND event size %lu, status %u reason %u dataLen %u authType 0x%X addr %02X:%02X:%02X:%02X:%02X:%02X", "handleEvent", 2759, 48, v0[2], v0[3], v0[5], v0[4], v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:safe_align_up failed\n", "handleEvent", 2816);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WLC_E_AUTH_IND: PMKID has invalid length (%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WLC_E_AUTH_IND: PMKID exists. length %lu\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WLC_E_AUTH_IND: PMK has invalid length (%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WLC_E_AUTH_IND: PMK exists. length %lu\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:UINT16_MAX overflow alignedTlvLen\n", "handleEvent", 2818);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:os_add_overflow adding BCM_XTLV_HDR_SIZE failed\n", "handleEvent", 2817);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failure in handleEvent\n", "handleEvent", 3046);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(IO80211SkywalkInterface *a1)
{
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 1088))();
  IO80211SkywalkInterface::getInterfaceId(a1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logWarn(v3, "[dk] %s@%d:  Interface %u   Link change event send link up\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 1088))();
  IO80211SkywalkInterface::getInterfaceId(a1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logWarn(v3, "[dk] %s@%d:  Interface %u   Link change event indicates link down\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_5_5();
  result = (*(v6 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1088))(a1);
      return CCLogStream::logAlert(v8, "[dk] %s@%d: Insufficient space[%u] < %lu\n", "handleEvent", 2776, *a4, 4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(IO80211SkywalkInterface *a1, uint64_t a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_5_5();
  v6 = (*(v5 + 1088))();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  return CCLogStream::logAlert(v6, "[dk] %s@%d: ERROR: FW return invalid interface index: set 0x%X returned ox%X\n", "handleEvent", 2737, InterfaceId, *a3);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_5_5();
  result = (*(v5 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*a1 + 1088))(a1);
      return CCLogStream::logAlert(v7, "[dk] %s@%d: Insufficient space[%u] < %lu\n", "handleEvent", 2725, *a3, 5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_7();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_30_3();
  return CCLogStream::logNotice(v6, "[dk] %s@%d: Unhandled event %lu: status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleEvent", 3038, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, *(a4 + 29));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::postMessageForSTA()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Allocating memory for posting SoftAP message failed\n", "postMessageForSTA", 3195);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::updateSTAAssocInfo()
{
  OUTLINED_FUNCTION_8_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Station %02X:%02X:%02X:%02X:%02X:%02X entry not found\n", "updateSTAAssocInfo", 4432, v3, v4, v5, v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::parseRSNXE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Associating STA RSNXE not found", "parseRSNXE", 4398);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Associating STA RSNXE capability %x, %x, %x", "parseRSNXE", 4404, *v0, v0[1], v0[2]);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::clearStaContextFromStaTable()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  if (v0)
  {
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Removing STA %02X:%02X:%02X:%02X:%02X:%02X failed\n", "clearStaContextFromStaTable", 4614, v3, v4, v5, v7, v6, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::checkForStationListMismatch(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  OUTLINED_FUNCTION_8_7();
  v7 = (*(v6 + 1088))();
  return CCLogStream::logAlert(v7, "[dk] %s@%d:ALERT: Found station list mismatch fw = %d vs host = %d\n", "checkForStationListMismatch", 3087, *v4, **a4);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::checkForStationListMismatch()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ALERT: STA %02X:%02X:%02X:%02X:%02X:%02X, disappeared, removing and posting event\n", "checkForStationListMismatch", 3103, v3, v4, v5, v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::removeStaFromStaTable()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Incorrect STA index %d in AP StaTable\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::disableInfraFeaturesForSoftAP()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:wlan.ap.maxmpdu overwrite %d\n", "disableInfraFeaturesForSoftAP", 3280, v3);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureKeepAliveProbing()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set scb_probe: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureWNMForSoftAP()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  if (*v0)
  {
    v3 = "Enabled";
  }

  else
  {
    v3 = "Disabled";
  }

  return CCLogStream::logNoticeIf(v2, 0x80uLL, "[dk] %s@%d:WNM is %s\n", "configureWNMForSoftAP", 3381, v3);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureMPDUSize()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:MPDU size is configured to %d\n", "configureMPDUSize", 3414, v3);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::hostAPPowerOff()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Stopping SoftAP error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeEntry()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:HS LPM: Failed to configure Low Power Mode\n", "configureLowPowerModeEntry", 3472);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: HS LPM: Failed to Configure SMPS Wait Period %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:HS LPM: Configured SMPS Wait Period to %d Beacon Intervals\n", "configureLowPowerMode", 3955, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: HS LPM: Failed to configure lphs mode %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:HS LPM: Configure lphs mode\n", "configureLowPowerMode", 3963);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: HS LPM: Failed to enable Low Power Mode ret %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:HS LPM: Configure Low Power Mode\n", "configureLowPowerMode", 3970);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeExit()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:HS LPM: Failed to unConfigure Low Power Mode\n", "configureLowPowerModeExit", 3502);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::unConfigureLowPowerMode()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: HS LPM: Failed to disable Low Power Mode ret %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:HS LPM:  Low Power Mode Disabled\n", "unConfigureLowPowerMode", 3995);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFilters()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Delete Pkt Filters\n", "deleteIPv4PktFilters", 3736);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFiltersAsyncCallBack()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_0();
  (*(v2 + 112))();
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:  failed, error %s\n", v4, v5, v6);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureARPOffload()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Unable to turn on ARP monitoring: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Unable to clear ARP : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Unable to program IP address for ARP filtering: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failed to configure ARP Offload in ARP F/W\n", "configureARPOffload", 3808);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetARPOffloadAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR:: cannot read ARP OE from the firmware: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failed to Issue arp_hostip_clear\n", "handleSetARPOffloadAsyncCallBack", 3856);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPClearAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: cannot clear host IP in ARP table: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failed to Configure IP in ARP Table\n", "handleSetARPHostIPClearAsyncCallBack", 3880);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Failed to Configure IP in ARP Table: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetBcnWaitPeriodAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot configure Low Power Mode to firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetLowPowerModeAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot configure Low Power Mode to firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setBeaconDutyCycle()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR:  Setting SoftAP beacon interval fails, error %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetRpsNoaAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot configure SoftAP RPSNOA, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetScbProbeAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot configure SoftAP scb_probe, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureBeaconDutyCycleParams()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_2_14();
  (*(v4 + 112))(v3, v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Setting SoftAP beacon interval fails, error %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetRSNXEAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot set softAP rsnxe, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetBcnIntervalAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot configure SoftAP beacon interval, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetBcnDTIMPeriodAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot configure SoftAP beacon DTIM period, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::addStaToStaTable()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  if (v0)
  {
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Adding STA %02X:%02X:%02X:%02X:%02X:%02X failed\n", "addStaToStaTable", 4600, v3, v4, v5, v7, v6, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::removeSta()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Decrementing num of associated clients when it is already zero\n", "removeSta", 4539);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::releaseSoftAPPowerAssertion()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LPHS: Release AP power assertion\n", "releaseSoftAPPowerAssertion", 4587);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::monitorInfraConcurrencyState(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_5();
  v7 = (*(v6 + 1088))();
  return CCLogStream::logAlert(v7, "[dk] %s@%d:Update SoftAP venor IE, lphs IE = %d, networkIe = %d\n", "monitorInfraConcurrencyState", 5070, a3 & 1, *(*a4 + 98));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:APSTA: enable\n", "enable", 5193);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::disable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:APSTA: disable\n", "disable", 5222);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:APSTA: disable Done\n", "disable", 5227);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableDatapath(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    (*(*a2 + 1088))(a2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*a2 + 1088))(a2);
      v4 = (*(*a2 + 160))(a2);
      return CCLogStream::logInfo(v3, "[dk] %s@%d:%s %s failed because interface has not been enabled yet\n", "enableDatapath", 5235, v4, "enableDatapath");
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableDatapath()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:APSTA interface enable data path\n", "enableDatapath", 5237);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:skywalk rx completion queue enqueue fail with return %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 5244);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:tx completion queue not valid\n", "enableDatapath", 5241);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:skywalk data path enable fail\n", "enableDatapath", 5255);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::disableDatapath()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:APSTA interface disable data path\n", "disableDatapath", 5262);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 5269);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 5266);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:skywalk data path disable fail\n", "disableDatapath", 5275);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::printDataPath(IO80211SkywalkInterface *a1)
{
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 1088))();
  InterfaceRoleStr = IO80211SkywalkInterface::getInterfaceRoleStr(a1);
  v5 = (*(*a1 + 160))(a1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter InterfaceRole:%s bsdname:%s\n", "printDataPath", 5396, InterfaceRoleStr, v5);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setMacAddress(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_8_7();
  v7 = (*(v6 + 1088))();
  return CCLogStream::logAlert(v7, "[dk] %s@%d:Not setting mac addres since interface id=<%d>up=<%d>", "setMacAddress", 5442, a4, *(*v4 + 620));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureSoftAPPeerStats(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v2 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*a1 + 1088))(a1);
      return CCLogStream::logInfo(v4, "[dk] %s@%d: SoftAP Peer stats is not supported \n", "configureSoftAPPeerStats", 5498);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureSoftAPPeerStats(uint64_t a1, char a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v6 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1088))(a1);
      if (a2)
      {
        v9 = "enable";
      }

      else
      {
        v9 = "disable";
      }

      v10 = (*(*a1 + 920))(a1, a3);
      return CCLogStream::logAlert(v8, "[dk] %s@%d: Error: SoftAP Peer stats %s iovar failed, reason: %s\n", "configureSoftAPPeerStats", 5494, v9, v10);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSoftAPStatsConfigAsyncCallback()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: SoftAP Peer stats %s iovar successful \n", v3, v4, v5);
}

uint64_t AppleBCMWLANDynamicRingOperationContext::initWithCompletion(OSObject *a1, __int128 *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = OSObject::init(a1);
  if (result)
  {
    v5 = IOMallocZeroTyped();
    a1[1].OSMetaClassBase::__vftable = v5;
    if (v5)
    {
      v6 = *a2;
      *(v5 + 32) = *(a2 + 2);
      *(v5 + 16) = v6;
      result = IOMallocZeroTyped();
      if (result)
      {
        *(result + 16) = a1;
        a1[1].free = result;
        return 1;
      }
    }

    else
    {
      IOLog(" RingOperationContext ivars alloc fail\n");
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTKOEvent(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 8) == 5)
  {
    v3 = result;
    v4 = *(result + 40);
    if (*(v4 + 8))
    {
      shouldLog = CCLogStream::shouldLog();
      v4 = *(v3 + 40);
      if (shouldLog)
      {
        CCLogStream::logNoticeIf(*(v4 + 8), 0x8000000uLL, "[dk] %s@%d: Posting APPLE80211_M_TCPKA_TIMEOUT <%u>\n", "handleTKOEvent", 1525, 91);
        v4 = *(v3 + 40);
      }
    }

    v6 = *(v4 + 16);

    return AppleBCMWLANCore::postMessageInfra(v6, 0x5Bu, 0, 0);
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPAliveEnable(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(*(result + 40) + 481) = *(a2 + 4) != 0;
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::getTCPAliveEnable(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 4) = *(*(result + 40) + 481);
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::getTkoWakeReason(AppleBCMWLANKeepAliveOffload *this)
{
  v1 = *(this + 5);
  if (v1 && (v2 = *(v1 + 484), (v2 - 1) <= 5))
  {
    return dword_1003AD3B0[v2 - 1];
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANKeepAliveOffload::setCachedTCPAliveWakeReason(AppleBCMWLANKeepAliveOffload *this, uint64_t a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  *(v2 + 484) = a2;
  return a2;
}

uint64_t AppleBCMWLANKeepAliveOffload::init(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*a2 + 8), "[dk] %s@%d: Failed to get Command Manager\n", "init", 92);
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::initializeKeepAliveCapabilities(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Get TKO cap command failed, %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Max supported TCP socket offloads %d\n", "initializeKeepAliveCapabilities", 195, *(v2 + 32));
}

uint64_t AppleBCMWLANKeepAliveOffload::configureKeepAlives(uint64_t a1)
{
  OUTLINED_FUNCTION_1_16(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Failed to get Tcp/Udp keepalive data\n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Keepalive data: local_addr: 0x%x.%x.%x.%x(%u.%u.%u.%u), remote_addr: 0x%x.%x.%x.%x(%u.%u.%u.%u), local_port: 0x%x(%u), remote_port: 0x%x(%u), local_seq: 0x%x(%u), remote_seq: 0x%x(%u) \n", "configureKeepAlives", 282, *(v2 + 268), *(v2 + 269), *(v2 + 270), *(v2 + 271), *(v2 + 268), *(v2 + 269), *(v2 + 270), *(v2 + 271), *(v2 + 284), *(v2 + 285), *(v2 + 286), *(v2 + 287), *(v2 + 284), *(v2 + 285), *(v2 + 286), *(v2 + 287), *(v2 + 300), *(v2 + 300), *(v2 + 302), *(v2 + 302), *(v2 + 304), *(v2 + 304), *(v2 + 308), *(v2 + 308));
}

{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed configuring TKO Socket with err: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed configuring TCP Keep Alive params with err: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed enabling TCP Keep Alive params with err: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Keepalive data: type: %u, ether_type: %u, length: %u, interval: %u\n", "configureKeepAlives", 355, *(v2 + 128), *(v2 + 132), *(v2 + 129), *(v2 + 130));
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  v3 = "Other Keep Alive";
  if (*(v2 + 128) == 1)
  {
    v3 = "CAR Play Keep Alive";
  }

  if (*(v2 + 128))
  {
    v4 = v3;
  }

  else
  {
    v4 = "NAT Keep Alive";
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured Keep Alive:  %s\n", "configureKeepAlives", 448, v4);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for mKeepAliveBuf\n", "configureKeepAlives", 399);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Reached FW Max of %d udp offload sockets\n", "configureKeepAlives", 350, 3);
}

{
  OUTLINED_FUNCTION_1_16(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1_16(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Failed to allocate keepalive frame buffer\n", v3, v4, v5);
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadConfig(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:routerMac: %x:%x:%x:%x:%x:%x\n", "setTCPAliveOffloadConfig", 693, *v2, v2[1], v2[2], v2[3], v2[4], v2[5]);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Lost Connection while sending keep alive packet\n", "setTCPAliveOffloadConfig", 771);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configuring TCP Keep Alive Connect failed\n", "setTCPAliveOffloadConfig", 857);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TCP Keep Alive Config buffer allocation failed\n", "setTCPAliveOffloadConfig", 702);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid parameters\n", "setTCPAliveOffloadConfig", 678);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:configureKeepAlives with infraSkywalkInterface is null \n", "setTCPAliveOffloadConfig", 673);
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPKeepAliveParam(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configuring TCP Keep Alive Params failed\n", "setTCPKeepAliveParam", 528);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TCP Keep Alive Param buffer allocation failed\n", "setTCPKeepAliveParam", 474);
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadEnable(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configuring TCP Keep Alive Enable/ failed\n", "setTCPAliveOffloadEnable", 596);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TCP Keep Alive Param buffer allocation failed\n", "setTCPAliveOffloadEnable", 554);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TCP Keep Alive offload disabled, ignoring\n", "setTCPAliveOffloadEnable", 547);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleMkeepAlivesAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot Configure M Keep Alives: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveParamAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot Configure TCP Keep Alive Param: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveEnableAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot Configure TCP Keep Alive Enable: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveStatusAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot retrieve TCP Keep Alive Status: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveConfigAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot Configure TCP Keep Alive Config: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to get TKO Wake Reason with err: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_16(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for keepAliveBuf\n", "unConfigureKeepAlives", 908);
}

uint64_t AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  OUTLINED_FUNCTION_6();
  result = CCLogStream::logAlert(v6, "[dk] %s@%d:Failed to disable TKO with err: %s\n", v8, v9, v10);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleUnconfigureMkeepAlivesAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot unconfigure M Keep Alives: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::programGARP(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure GARP Keep-ALive for ID %d\n", "programGARP", 1649, 1);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured GARP Keep Alive ID = %d\n", "programGARP", 1651, 1);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for mKeepAliveBuf\n", "programGARP", 1590);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:configureKeepAlives with infraSkywalkInterface is null \n", "programGARP", 1574);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleConfigureProgramGARPAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to Program GARP %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleConfigureStopGARPAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to Stop GARP %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANChipManagerPCIe4377::prepareHardware(AppleBCMWLANChipManagerPCIe4377 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v3 = 3758097090;
  v6 = 0;
  if (a2 && a3)
  {
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0xE64u, &v6))
    {
      return 3758097098;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFC | 1;
      AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0xE64u, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe4377::checkHardware(AppleBCMWLANChipManagerPCIe4377 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v6 = 0;
  result = 3758097090;
  if (a2 && a3)
  {
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0x40u, 4u);
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x204u, &v6) || (v6 & 0x4000) != 0)
    {
      return 3758097098;
    }

    else
    {
      v5 = AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x40u, &v6);
      result = 3758097098;
      if (!v5)
      {
        if (v6 == 4)
        {
          return 0;
        }

        else
        {
          return 3758097098;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::dequeueTxIOs(uint64_t result)
{
  v1 = *(*(result + 56) + 584);
  if (v1)
  {
    return (*(v1 + 8))(*v1);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::reportCommittedTxCommands(uint64_t this)
{
  v1 = *(this + 56);
  v2 = *(v1 + 584);
  if (v2)
  {
    return (*(v2 + 16))(*v2, v1 + 640);
  }

  return this;
}

uint64_t AppleBCMWLANBusInterface::reportCompletedTxIOs(uint64_t result)
{
  v1 = *(*(result + 56) + 584);
  if (v1)
  {
    return (*(v1 + 24))(*v1);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::enqueueRxIOs(uint64_t result)
{
  v1 = *(*(result + 56) + 584);
  if (v1)
  {
    return (*(v1 + 32))(*v1);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::captureRequestCallback(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:NO-OP!", "captureRequestCallback", 181);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:captureRequestCallbackActive is true", "captureRequestCallback", 173);
}

uint64_t AppleBCMWLANBusInterface::parseOTPTuple(uint64_t a1)
{
  v1 = *(*a1 + 16);
  CStringNoCopy = OSString::getCStringNoCopy(*(*a1 + 80));
  return CCLogStream::logInfoIf(v1, 0x80uLL, "[dk] %s@%d:ProductInfo1: %s\n", "parseOTPTuple", 549, CStringNoCopy);
}

uint64_t AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(uint64_t a1, OSString *this)
{
  v2 = *(*a1 + 16);
  CStringNoCopy = OSString::getCStringNoCopy(this);
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to send CoreAnalytics CoreAnalyticsSendEvent for event %s", "sendCCMissingFileInfoToCoreAnalytics", 819, CStringNoCopy);
}

uint64_t AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 16))(a1);
  v3 = *(*a2 + 16);

  return v3(a2);
}

uint64_t AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(uint64_t a1, OSString *this)
{
  v2 = *(*a1 + 16);
  CStringNoCopy = OSString::getCStringNoCopy(this);
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to send CoreAnalyticsSendEvent for event %s", "sendBootCheckPointToCoreAnalytics", 1000, CStringNoCopy);
}

uint64_t AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate stringValue\n", "sendBootCheckPointToCoreAnalytics", 993);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyString\n", "sendBootCheckPointToCoreAnalytics", 979);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Driver is not ready try again later\n", "sendBootCheckPointToCoreAnalytics", 912);
}

uint64_t AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(uint64_t a1, uint64_t a2, void *a3)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Fail to allocate numValue\n", "sendBootCheckPointToCoreAnalytics", 973);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(uint64_t a1, _BYTE *a2)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Fail to allocate keyString\n", "sendBootCheckPointToCoreAnalytics", 970);
    }
  }

  *a2 = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Fail to allocate eventPayload\n", "sendBootCheckPointToCoreAnalytics", 926);
    }
  }

  *a2 = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Fail to allocate eventName\n", "sendBootCheckPointToCoreAnalytics", 923);
    }
  }

  *a2 = 0;
  return result;
}

{
  result = *(*(a1 + 56) + 16);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(a1 + 56) + 16), "[dk] %s@%d:Fail to allocate bootClass\n", "sendBootCheckPointToCoreAnalytics", 896);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANUserClient::prepareMapping(AppleBCMWLANUserClient *this, AppleBCMWLANUserClient *a2, const OSData **a3, IOUserClientMethodArguments *a4)
{
  memset(v12, 0, sizeof(v12));
  BytesNoCopy = OSData::getBytesNoCopy(a3[5]);
  if (!BytesNoCopy)
  {
    return 3758097090;
  }

  memcpy(__dst, BytesNoCopy, sizeof(__dst));
  result = AppleBCMWLANUserClient::prepareImageMap(this, __dst, v12, v7, v8, v9);
  if (!result)
  {
    v11 = OSData::withBytes(v12, 0x80uLL);
    result = 0;
    a3[9] = v11;
  }

  return result;
}

uint64_t AppleBCMWLANUserClient::completeMapping(AppleBCMWLANUserClient *this, AppleBCMWLANUserClient *a2, const OSData **a3, IOUserClientMethodArguments *a4)
{
  BytesNoCopy = OSData::getBytesNoCopy(a3[5]);
  if (!BytesNoCopy)
  {
    return 3758097090;
  }

  memcpy(v7, BytesNoCopy, 0x80uLL);
  return AppleBCMWLANUserClient::completeImageMap(this, v7);
}

uint64_t AppleBCMWLANUserClient::init(uint64_t result, _BYTE *a2)
{
  v3 = *(result + 64);
  if (v3)
  {
    v4 = result;
    result = *(v3 + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        v5 = *(v4 + 64);
        if (v5)
        {
          v6 = *(v5 + 32);
        }

        else
        {
          v6 = 0;
        }

        result = CCLogStream::logCrit(v6, "[dk] %s@%d: Failed initWithTask() ... bailing\n", "init", 227);
      }
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANUserClient::Start_Impl(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:\n", "Start_Impl", 331);
}

uint64_t AppleBCMWLANUserClient::Start_Impl(AppleBCMWLANUserClient *a1)
{
  result = OUTLINED_FUNCTION_0_18(a1);
  if (*v2)
  {
    result = *(*v2 + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        if (*v2)
        {
          v5 = *(*v2 + 32);
        }

        else
        {
          v5 = 0;
        }

        result = CCLogStream::logAlert(v5, "[dk] %s@%d: Unable to get command gate\n", "Start_Impl", 330);
      }
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_0_18(a1);
  if (*v2)
  {
    result = *(*v2 + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        if (*v2)
        {
          v5 = *(*v2 + 32);
        }

        else
        {
          v5 = 0;
        }

        result = CCLogStream::logAlert(v5, "[dk] %s@%d: Unable to get workQueue\n", "Start_Impl", 318);
      }
    }
  }

  *v1 = v3;
  return result;
}

{
  AppleBCMWLANUserClient::freeResources(a1);
  ClassNameHelper = getClassNameHelper(a1);
  return IOLog("%s::%s(): Unable to allocate provider\n", ClassNameHelper, "Start_Impl");
}

uint64_t AppleBCMWLANUserClient::Start_Impl(uint64_t result, _DWORD *a2)
{
  if (*result)
  {
    v3 = result;
    result = *(*result + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        if (*v3)
        {
          v4 = *(*v3 + 32);
        }

        else
        {
          v4 = 0;
        }

        result = CCLogStream::logAlert(v4, "[dk] %s@%d:AppleBCMWLANUserClient : WLANMainDispatchQueue NULL !!!\n", "Start_Impl", 323);
      }
    }
  }

  *a2 = -536870212;
  return result;
}

uint64_t AppleBCMWLANUserClient::Stop_Impl(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:AppleBCMWLANUserClient::stop\n", "Stop_Impl", 353);
}

uint64_t AppleBCMWLANUserClient::prepareImageMap(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = v1[4];
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(**v1 + 112))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:verifyFileSelect: %s\n", "prepareImageMap", 562, v3);
}

uint64_t AppleBCMWLANUserClient::prepareImageMap(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d: fActiveChipImage alloc fail\n", "prepareImageMap", 576);
}

uint64_t AppleBCMWLANUserClient::completeImageMap(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting '%s' property\n", "completeImageMap", 720, "FirmwareLoaded");
}

uint64_t AppleBCMWLANUserClient::completeImageMap(void **a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = v3[4];
  }

  else
  {
    v4 = 0;
  }

  if (*v3)
  {
    v5 = (*(**v3 + 112))(*v3, a2);
  }

  else
  {
    v5 = "no core";
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:Fail %x: %s\n", "completeImageMap", 727, v2, v5);
}

uint64_t AppleBCMWLANProvisioningManager::add24GHzTxCal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_24_5();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if ((v2 & 0x24) != 0)
  {
    OUTLINED_FUNCTION_18_3("%d,%d,%d", v1);
    OUTLINED_FUNCTION_5_12();
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_11_8();

      return AppleBCMWLANProvisioningManager::addStringValToImage(v5, v6, v7);
    }

    else
    {
      return 3758097086;
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_14();
    result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v8, v9, v10, v11);
    if (!result)
    {
      v12 = OUTLINED_FUNCTION_4_14();
      result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v12, v13, v14, v15);
      if (!result)
      {
        v16 = OUTLINED_FUNCTION_4_14();

        return AppleBCMWLANProvisioningManager::addSInt16ValToImage(v16, v17, v18, v19);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzTxal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_15_7();
  if ((v3 & 2) == 0)
  {
    return 0;
  }

  result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v1, "pa1lob0", *(v2 + 52), v2 + 600);
  if (!result)
  {
    v5 = OUTLINED_FUNCTION_4_14();
    result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v5, v6, v7, v8);
    if (!result)
    {
      v9 = OUTLINED_FUNCTION_4_14();
      result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v9, v10, v11, v12);
      if (!result)
      {
        v13 = OUTLINED_FUNCTION_4_14();
        result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v13, v14, v15, v16);
        if (!result)
        {
          v17 = OUTLINED_FUNCTION_4_14();
          result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v17, v18, v19, v20);
          if (!result)
          {
            v21 = OUTLINED_FUNCTION_4_14();
            result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v21, v22, v23, v24);
            if (!result)
            {
              v25 = OUTLINED_FUNCTION_4_14();
              result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v25, v26, v27, v28);
              if (!result)
              {
                v29 = OUTLINED_FUNCTION_4_14();
                result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v29, v30, v31, v32);
                if (!result)
                {
                  v33 = OUTLINED_FUNCTION_4_14();

                  return AppleBCMWLANProvisioningManager::addSInt16ValToImage(v33, v34, v35, v36);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::add24GHzMimoCal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_24_5();
  if ((v3 & 8) == 0)
  {
    return 0;
  }

  v6 = v1;
  if ((v3 & 0x24) == 0)
  {
    v15 = OUTLINED_FUNCTION_4_14();
    v11 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v15, v16, v17, v18);
    if (!v11)
    {
      v19 = OUTLINED_FUNCTION_4_14();
      v11 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v19, v20, v21, v22);
      if (!v11)
      {
        v23 = OUTLINED_FUNCTION_4_14();
        v11 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v23, v24, v25, v26);
        if (!v11)
        {
          v27 = OUTLINED_FUNCTION_4_14();
          v11 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v27, v28, v29, v30);
          if (!v11)
          {
            v31 = OUTLINED_FUNCTION_4_14();
            v11 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v31, v32, v33, v34);
            if (!v11)
            {
              v35 = OUTLINED_FUNCTION_4_14();

              return AppleBCMWLANProvisioningManager::addSInt16ValToImage(v35, v36, v37, v38);
            }
          }
        }
      }
    }

    return v11;
  }

  v4 = 3758097086;
  OUTLINED_FUNCTION_18_3("%d,%d,%d", v2);
  OUTLINED_FUNCTION_5_12();
  if (!v7)
  {
    return v4;
  }

  v8 = OUTLINED_FUNCTION_11_8();
  v11 = AppleBCMWLANProvisioningManager::addStringValToImage(v8, v9, v10);
  if (v11)
  {
    return v11;
  }

  OUTLINED_FUNCTION_18_3("%d,%d,%d", *(v6 + 48));
  OUTLINED_FUNCTION_5_12();
  if (!v7)
  {
    return v4;
  }

  v12 = OUTLINED_FUNCTION_11_8();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v12, v13, v14);
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzMimoCal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_15_7();
  if ((v3 & 0x10) == 0)
  {
    return 0;
  }

  result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v1, "pa5glw1a0", *(v2 + 106), v2 + 600);
  if (!result)
  {
    v5 = OUTLINED_FUNCTION_4_14();
    result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v5, v6, v7, v8);
    if (!result)
    {
      v9 = OUTLINED_FUNCTION_4_14();
      result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v9, v10, v11, v12);
      if (!result)
      {
        v13 = OUTLINED_FUNCTION_4_14();
        result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v13, v14, v15, v16);
        if (!result)
        {
          v17 = OUTLINED_FUNCTION_4_14();
          result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v17, v18, v19, v20);
          if (!result)
          {
            v21 = OUTLINED_FUNCTION_4_14();
            result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v21, v22, v23, v24);
            if (!result)
            {
              v25 = OUTLINED_FUNCTION_4_14();
              result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v25, v26, v27, v28);
              if (!result)
              {
                v29 = OUTLINED_FUNCTION_4_14();
                result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v29, v30, v31, v32);
                if (!result)
                {
                  v33 = OUTLINED_FUNCTION_4_14();
                  result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v33, v34, v35, v36);
                  if (!result)
                  {
                    v37 = OUTLINED_FUNCTION_4_14();
                    result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v37, v38, v39, v40);
                    if (!result)
                    {
                      v41 = OUTLINED_FUNCTION_4_14();
                      result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v41, v42, v43, v44);
                      if (!result)
                      {
                        v45 = OUTLINED_FUNCTION_4_14();
                        result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v45, v46, v47, v48);
                        if (!result)
                        {
                          v49 = OUTLINED_FUNCTION_4_14();
                          result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v49, v50, v51, v52);
                          if (!result)
                          {
                            v53 = OUTLINED_FUNCTION_4_14();
                            result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v53, v54, v55, v56);
                            if (!result)
                            {
                              v57 = OUTLINED_FUNCTION_4_14();
                              result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v57, v58, v59, v60);
                              if (!result)
                              {
                                v61 = OUTLINED_FUNCTION_4_14();
                                result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v61, v62, v63, v64);
                                if (!result)
                                {
                                  v65 = OUTLINED_FUNCTION_4_14();
                                  result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v65, v66, v67, v68);
                                  if (!result)
                                  {
                                    v69 = OUTLINED_FUNCTION_4_14();

                                    return AppleBCMWLANProvisioningManager::addSInt16ValToImage(v69, v70, v71, v72);
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

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzWithXBandCal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_15_7();
  if ((v2 & 4) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", v1);
  OUTLINED_FUNCTION_5_12();
  if (!v4)
  {
    return 3758097086;
  }

  v5 = OUTLINED_FUNCTION_11_8();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v5, v6, v7);
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzMimoWithXBandCal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_15_7();
  if ((v3 & 0x20) == 0)
  {
    return 0;
  }

  v6 = v1;
  v4 = 3758097086;
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", v2);
  OUTLINED_FUNCTION_5_12();
  if (!v7)
  {
    return v4;
  }

  v8 = OUTLINED_FUNCTION_11_8();
  v11 = AppleBCMWLANProvisioningManager::addStringValToImage(v8, v9, v10);
  if (v11)
  {
    return v11;
  }

  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", *(v6 + 48));
  OUTLINED_FUNCTION_5_12();
  if (!v7)
  {
    return v4;
  }

  v12 = OUTLINED_FUNCTION_11_8();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v12, v13, v14);
}

uint64_t AppleBCMWLANProvisioningManager::add24GHzRxCal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_15_7();
  if ((v3 & 0x40) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_12_7("%d,%d,%d,%d,%d,%d,%d,%d,%d", v5);
  OUTLINED_FUNCTION_5_12();
  if (!v6)
  {
    return v1;
  }

  v7 = OUTLINED_FUNCTION_7_11();
  v10 = AppleBCMWLANProvisioningManager::addStringValToImage(v7, v8, v9);
  if (v10)
  {
    return v10;
  }

  OUTLINED_FUNCTION_12_7("%d,%d,%d,%d,%d,%d,%d,%d,%d", *(v2 + 48));
  OUTLINED_FUNCTION_5_12();
  if (!v6)
  {
    return v1;
  }

  v11 = OUTLINED_FUNCTION_7_11();
  v10 = AppleBCMWLANProvisioningManager::addStringValToImage(v11, v12, v13);
  if (v10)
  {
    return v10;
  }

  OUTLINED_FUNCTION_12_7("%d,%d,%d,%d,%d,%d,%d,%d,%d", *(v2 + 48));
  OUTLINED_FUNCTION_5_12();
  if (!v6)
  {
    return v1;
  }

  v14 = OUTLINED_FUNCTION_7_11();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v14, v15, v16);
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzRxCal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_15_7();
  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_18_3("%d,%d,%d,%d", v4);
  OUTLINED_FUNCTION_5_12();
  if (!v5)
  {
    return v1;
  }

  v6 = OUTLINED_FUNCTION_7_11();
  v9 = AppleBCMWLANProvisioningManager::addStringValToImage(v6, v7, v8);
  if (v9)
  {
    return v9;
  }

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_18_3("%d,%d,%d,%d", v10);
  OUTLINED_FUNCTION_5_12();
  if (!v5)
  {
    return v1;
  }

  v11 = OUTLINED_FUNCTION_7_11();
  v9 = AppleBCMWLANProvisioningManager::addStringValToImage(v11, v12, v13);
  if (v9)
  {
    return v9;
  }

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_18_3("%d,%d,%d,%d", v14);
  OUTLINED_FUNCTION_5_12();
  if (!v5)
  {
    return v1;
  }

  v15 = OUTLINED_FUNCTION_7_11();
  v9 = AppleBCMWLANProvisioningManager::addStringValToImage(v15, v16, v17);
  if (v9)
  {
    return v9;
  }

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_18_3("%d,%d,%d,%d", v18);
  OUTLINED_FUNCTION_5_12();
  if (!v5)
  {
    return v1;
  }

  v19 = OUTLINED_FUNCTION_7_11();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v19, v20, v21);
}

uint64_t AppleBCMWLANProvisioningManager::add24GHzRxMimoCal(AppleBCMWLANProvisioningManager *this)
{
  if ((*(*(this + 6) + 25) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", v4);
  OUTLINED_FUNCTION_5_12();
  if (!v5)
  {
    return v1;
  }

  v6 = OUTLINED_FUNCTION_7_11();
  v9 = AppleBCMWLANProvisioningManager::addStringValToImage(v6, v7, v8);
  if (v9)
  {
    return v9;
  }

  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", *(v2 + 48));
  OUTLINED_FUNCTION_5_12();
  if (!v5)
  {
    return v1;
  }

  v10 = OUTLINED_FUNCTION_7_11();
  v9 = AppleBCMWLANProvisioningManager::addStringValToImage(v10, v11, v12);
  if (v9)
  {
    return v9;
  }

  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", *(v2 + 48));
  OUTLINED_FUNCTION_5_12();
  if (!v5)
  {
    return v1;
  }

  v13 = OUTLINED_FUNCTION_7_11();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v13, v14, v15);
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzRxMimoCal(AppleBCMWLANProvisioningManager *this)
{
  if ((*(*(this + 6) + 25) & 2) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d", v3);
  OUTLINED_FUNCTION_5_12();
  if (!v4)
  {
    return v1;
  }

  v5 = OUTLINED_FUNCTION_7_11();
  v8 = AppleBCMWLANProvisioningManager::addStringValToImage(v5, v6, v7);
  if (v8)
  {
    return v8;
  }

  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d", v9);
  OUTLINED_FUNCTION_5_12();
  if (!v4)
  {
    return v1;
  }

  v10 = OUTLINED_FUNCTION_7_11();
  v8 = AppleBCMWLANProvisioningManager::addStringValToImage(v10, v11, v12);
  if (v8)
  {
    return v8;
  }

  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d", v13);
  OUTLINED_FUNCTION_5_12();
  if (!v4)
  {
    return v1;
  }

  v14 = OUTLINED_FUNCTION_7_11();
  v8 = AppleBCMWLANProvisioningManager::addStringValToImage(v14, v15, v16);
  if (v8)
  {
    return v8;
  }

  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d", v17);
  OUTLINED_FUNCTION_5_12();
  if (!v4)
  {
    return v1;
  }

  v18 = OUTLINED_FUNCTION_7_11();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v18, v19, v20);
}

uint64_t AppleBCMWLANProvisioningManager::addRxTempCal(AppleBCMWLANProvisioningManager *this)
{
  v1 = *(this + 6);
  if ((*(v1 + 25) & 4) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_3("%d", v1);
  OUTLINED_FUNCTION_5_12();
  if (!v3)
  {
    return 3758097086;
  }

  v4 = OUTLINED_FUNCTION_11_8();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::addRxFreqgroupCal(AppleBCMWLANProvisioningManager *this)
{
  v1 = *(this + 6);
  if ((*(v1 + 26) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  v2 = 3758097086;
  *(v1 + 736) = 0u;
  *(v1 + 752) = 0u;
  *(v1 + 704) = 0u;
  *(v1 + 720) = 0u;
  *(v1 + 672) = 0u;
  *(v1 + 688) = 0u;
  v6 = 324;
  *(v1 + 640) = 0u;
  *(v1 + 656) = 0u;
  while (1)
  {
    v7 = snprintf((*(this + 6) + v5 + 640), 128 - v5, "0x%02x,", *(*(this + 6) + v6));
    if (v7 < 1 || 128 - v5 <= v7)
    {
      break;
    }

    ++v6;
    v5 += v7;
    if (v6 == 331)
    {
      *(*(this + 6) + v5 - 1 + 640) = 0;
      if (v5 - 128 < 0xFFFFFF81)
      {
        return v2;
      }

      v9 = OUTLINED_FUNCTION_11_8();

      return AppleBCMWLANProvisioningManager::addStringValToImage(v9, v10, v11);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANProvisioningManager::addRx4350Cal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_24_5();
  if ((v2 & 0x1000) != 0)
  {
    v3 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v3, v4, v5, v6, 0x10u, v7);
    if (result)
    {
      return result;
    }

    v9 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v9, v10, v11, v12, 0x10u, v13);
    if (result)
    {
      return result;
    }

    v14 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v14, v15, v16, v17, 0x10u, v18);
    if (result)
    {
      return result;
    }

    v19 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v19, v20, v21, v22, 0x10u, v23);
    if (result)
    {
      return result;
    }

    v24 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v24, v25, v26, v27, 0x10u, v28);
    if (result)
    {
      return result;
    }

    v2 = *(*(this + 6) + 24);
  }

  if ((v2 & 0x2000) == 0)
  {
    return 0;
  }

  v29 = OUTLINED_FUNCTION_6_8();
  result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v29, v30, v31, v32, 0x18u, v33);
  if (!result)
  {
    v34 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v34, v35, v36, v37, 0x18u, v38);
    if (!result)
    {
      v39 = OUTLINED_FUNCTION_6_8();
      result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v39, v40, v41, v42, 0x18u, v43);
      if (!result)
      {
        v44 = OUTLINED_FUNCTION_6_8();

        return AppleBCMWLANProvisioningManager::prepareNVRAMString(v44, v45, v46, v47, 0x18u, v48);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::addRx4345Cal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_24_5();
  if ((v2 & 0x4000) != 0)
  {
    v3 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v3, v4, v5, v6, 8u, v7);
    if (result)
    {
      return result;
    }

    v9 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v9, v10, v11, v12, 8u, v13);
    if (result)
    {
      return result;
    }

    v14 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v14, v15, v16, v17, 8u, v18);
    if (result)
    {
      return result;
    }

    v19 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v19, v20, v21, v22, 8u, v23);
    if (result)
    {
      return result;
    }

    v24 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v24, v25, v26, v27, 8u, v28);
    if (result)
    {
      return result;
    }

    v2 = *(*(this + 6) + 24);
  }

  if ((v2 & 0x8000) == 0)
  {
    return 0;
  }

  v29 = OUTLINED_FUNCTION_6_8();
  result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v29, v30, v31, v32, 0xCu, v33);
  if (!result)
  {
    v34 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v34, v35, v36, v37, 0xCu, v38);
    if (!result)
    {
      v39 = OUTLINED_FUNCTION_6_8();
      result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v39, v40, v41, v42, 0xCu, v43);
      if (!result)
      {
        v44 = OUTLINED_FUNCTION_6_8();

        return AppleBCMWLANProvisioningManager::prepareNVRAMString(v44, v45, v46, v47, 0xCu, v48);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::generateProvisionedNVRAMParameters(AppleBCMWLANProvisioningManager *a1, IO80211Buffer *this, void *a3)
{
  v6 = a3[2];
  *(*(a1 + 6) + 600) = a3[3];
  *(*(a1 + 6) + 608) = IO80211Buffer::getBytesNoCopy(this, v6, *(*(a1 + 6) + 600));
  *(*(a1 + 6) + 616) = 0;
  v7 = a3[4];
  v8 = a3[5];
  *(*(a1 + 6) + 632) = v8;
  *(*(a1 + 6) + 624) = IO80211Buffer::getBytesNoCopy(this, v7, v8);
  v9 = AppleBCMWLANProvisioningManager::addBaudRate(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add24GHzTxCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzTxal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add24GHzMimoCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzMimoCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzWithXBandCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzMimoWithXBandCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add24GHzRxCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzRxCal(a1);
  if (v9)
  {
    return v9;
  }

  if ((*(*(a1 + 6) + 597) & 1) == 0)
  {
    v9 = AppleBCMWLANProvisioningManager::add24GHzRxMimoCal(a1);
    if (v9)
    {
      return v9;
    }

    v9 = AppleBCMWLANProvisioningManager::add5GHzRxMimoCal(a1);
    if (v9)
    {
      return v9;
    }
  }

  v9 = AppleBCMWLANProvisioningManager::addRxTempCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::addRxFreqgroupCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::addRx4350Cal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::addRx4345Cal(a1);
  if (v9)
  {
    return v9;
  }

  v10 = *(a1 + 6);
  v11 = *(v10 + 616);
  v12 = *(v10 + 600);
  v13 = v12 - v11;
  if (v12 >= v11)
  {
    v16 = snprintf((*(v10 + 608) + v11), v13, "macaddr=%02x:%02x:%02x:%02x:%02x:%02x", *(v10 + 28), *(v10 + 29), *(v10 + 30), *(v10 + 31), *(v10 + 32), *(v10 + 33));
    if ((v16 & 0x80000000) != 0 || v16 > v13)
    {
      v14 = 3758097115;
      if (OUTLINED_FUNCTION_22_3() && CCLogStream::shouldLog())
      {
        v21 = OUTLINED_FUNCTION_22_3();
        CCLogStream::logAlert(v21, "[dk] %s@%d: Error, can't fit MAC Address into vars (printed %d)\n");
      }
    }

    else
    {
      *(*(a1 + 6) + 616) += v16 + 1;
      v17 = *(*(a1 + 6) + 616);
      a3[3] = v17;
      v18 = *(*(a1 + 6) + 632);
      a3[5] = v18;
      BytesNoCopy = IO80211Buffer::getBytesNoCopy(this, a3[2] + v17, v18);
      v20 = IO80211Buffer::getBytesNoCopy(this, a3[4], v18);
      if (BytesNoCopy && v20)
      {
        memmove(BytesNoCopy, v20, v18);
        v14 = 0;
        a3[4] = a3[3] + a3[2];
      }

      else
      {
        v14 = 3758097097;
        if (*(*(a1 + 6) + 8) && CCLogStream::shouldLog())
        {
          v23 = OUTLINED_FUNCTION_22_3();
          CCLogStream::logCrit(v23, "[dk] %s@%d: Invalid buffer address for nvram file copy\n", "generateProvisionedNVRAMParameters", 2485);
        }
      }
    }
  }

  else
  {
    v14 = 3758097115;
    if (*(v10 + 8) && CCLogStream::shouldLog())
    {
      v15 = OUTLINED_FUNCTION_22_3();
      CCLogStream::logAlert(v15, "[dk] %s@%d:Error, the total length of vars data (%llu) is longer than the max supported (%llu)\n");
    }
  }

  return v14;
}

uint64_t AppleBCMWLANProvisioningManager::normalizeNVRAM(uint64_t a1, IO80211Buffer *a2, unint64_t *a3)
{
  v6 = 3758097086;
  v26 = 0;
  IOParseBootArgNumber("wlan.debug.enable", &v26, 1);
  v7 = a3[5] + 2;
  v8 = IOMallocZeroData();
  v9 = a3[5] + 2;
  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    if (!v8)
    {
      IOFreeData();
      return 3758097085;
    }

    if (a2)
    {
      BytesNoCopy = IO80211Buffer::getBytesNoCopy(a2, a3[4], a3[5]);
      v13 = a3[5];
      if (v13 >= 3)
      {
        if (v7 >= v13 && v9 >= v13)
        {
          v15 = BytesNoCopy;
          v16 = memmove(v11, BytesNoCopy, a3[5]);
          NormalizedNVRam = AppleBCMWLANProvisioningManager::getNormalizedNVRam(v16, v8, v7, v11, v9);
          if (NormalizedNVRam < 3 || NormalizedNVRam > v13 + 2)
          {
            if (OUTLINED_FUNCTION_14_7() && CCLogStream::shouldLog())
            {
              v23 = OUTLINED_FUNCTION_14_7();
              CCLogStream::logEmergency(v23, "[dk] %s@%d: Failed to normalize NVRAM: nvram length[%zu]\n", "normalizeNVRAM", 2795, v13);
            }
          }

          else
          {
            v19 = NormalizedNVRam;
            memmove(v15, v8, NormalizedNVRam);
            v6 = 0;
            a3[5] = v19;
            if (v26 != 1)
            {
LABEL_24:
              IOFreeData();
LABEL_26:
              IOFreeData();
              return v6;
            }
          }
        }

        else
        {
          v6 = 3758097115;
        }
      }
    }

    else
    {
      v6 = 3758097090;
    }

    removePropertyHelper(*(*(a1 + 48) + 16), "NVRAM: source");
    v20 = OSData::withBytes(v11, v9);
    if ((OUTLINED_FUNCTION_19_5(v20) & 1) == 0 && OUTLINED_FUNCTION_14_7() && CCLogStream::shouldLog())
    {
      v24 = OUTLINED_FUNCTION_14_7();
      CCLogStream::logAlert(v24, "[dk] %s@%d:Unable to set %s property\n", "normalizeNVRAM", 2813, "NVRAM: source");
    }

    (*(*a3 + 16))(a3);
    removePropertyHelper(*(*(a1 + 48) + 16), "NVRAM: normalized");
    v21 = OSData::withBytes(v8, v7);
    if ((OUTLINED_FUNCTION_19_5(v21) & 1) == 0 && OUTLINED_FUNCTION_14_7() && CCLogStream::shouldLog())
    {
      v25 = OUTLINED_FUNCTION_14_7();
      CCLogStream::logAlert(v25, "[dk] %s@%d:Unable to set %s property\n", "normalizeNVRAM", 2821, "NVRAM: normalized");
    }

    (*(*a3 + 16))(a3);
    goto LABEL_24;
  }

  v6 = 3758097085;
  if (v8)
  {
    goto LABEL_26;
  }

  return v6;
}

uint64_t AppleBCMWLANProvisioningManager::processProvisionedData(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_20_2(a1);
  (*(v3 + 104))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Unable to gather OTP provisioning data, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_20_2(a1);
  (*(v3 + 104))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Invalid provisioning data, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProvisioningManager::parseOTPTuple(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x40000uLL, "[dk] %s@%d: BCOM Private 0x%02X, size %u.\n", "parseOTPTuple", 385, 128, v2);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x40000uLL, "[dk] %s@%d: Function Extension 0x%02X, size %u.\n", "parseOTPTuple", 381, 34, v2);
}

uint64_t AppleBCMWLANProvisioningManager::generateData(uint64_t a1)
{
  OUTLINED_FUNCTION_1_17(a1);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: No Provisioned WiFi Mac address, generating address: %02x:%02x:%02x:%02x:%02x:%02x.\n", "generateData", 1410, v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_1_17(a1);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:Generating a BT addr %02x:%02x:%02x:%02x:%02x:%02x\n", "generateData", 1420, v3, v4, v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProvisioningManager::parseFunctionExtension(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_17(a1);
  return OUTLINED_FUNCTION_13_7(v1, v2, "[dk] %s@%d:WiFi MAC Address in FuncE LAN_NID 0x%02X: %02x:%02x:%02x:%02x:%02x:%02x\n");
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logWarnIf(v1, 0x40000uLL, "[dk] %s@%d:Warning, invalid WiFi MAC data in FuncE LAN_NID 0x%02X\n", "parseFunctionExtension", 451, 4);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Error! No space for FuncE type.\n", "parseFunctionExtension", 427);
}

uint64_t AppleBCMWLANProvisioningManager::parseApplePrivateCIS(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  OUTLINED_FUNCTION_17_4();
  return OUTLINED_FUNCTION_13_7(v1, v2, "[dk] %s@%d:@%llu - Ethernet MAC Address in tuple 0x%02X: %02x:%02x:%02x:%02x:%02x:%02x\n");
}

{
  OUTLINED_FUNCTION_0_19(a1);
  OUTLINED_FUNCTION_17_4();
  return OUTLINED_FUNCTION_13_7(v1, v2, "[dk] %s@%d:@%llu - BT MAC Address in tuple 0x%02X: %02x:%02x:%02x:%02x:%02x:%02x\n");
}

{
  OUTLINED_FUNCTION_0_19(a1);
  OUTLINED_FUNCTION_17_4();
  return OUTLINED_FUNCTION_13_7(v1, v2, "[dk] %s@%d:@%lu - WiFi MAC Address in tuple 0x%02X: %02x:%02x:%02x:%02x:%02x:%02x\n");
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set kModuleSerialNumber property\n", "parseApplePrivateCIS", 639);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory!!\n", "parseApplePrivateCIS", 636);
}

uint64_t AppleBCMWLANProvisioningManager::gatherBaudRate(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WARNING, Wifi 'serial baud rate' does not exist in the device tree\n", "gatherBaudRate", 849);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFi 'serial baud rate' is invalid!\n ", "gatherBaudRate", 842);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WiFi 'serial baud rate' is the wrong size!\n", "gatherBaudRate", 845);
}

uint64_t AppleBCMWLANProvisioningManager::gatherMacAddress(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WARNING, Wifi 'local-mac-address' does not exist in the device tree\n", "gatherMacAddress", 875);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WiFi 'local-mac-address' is the wrong size!\n", "gatherMacAddress", 871);
}

{
  OUTLINED_FUNCTION_0_19(a1);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:WiFi Mac Addr in device tree: %02x:%02x:%02x:%02x:%02x:%02x\n", "gatherMacAddress", 862, v3, v4, v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFi 'local-mac-address' is invalid!\n ", "gatherMacAddress", 868);
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzTxCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'tx-calibration-2.4' property in device tree.\n", "gather24GHzTxCal", 922);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 2.4GHz MIMO calibration data in device tree.\n", "gather24GHzTxCal", 915);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 2.4GHz calibration data in device tree.\n", "gather24GHzTxCal", 896);
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzTxCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:2.4GHz calibration data in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzTxCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'tx-calibration-5.0' property in device tree.\n", "gather50GHzTxCal", 1010);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 5GHz MIMO with X Band calibration data in device tree.\n", "gather50GHzTxCal", 1003);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 5GHz MIMO with X Band calibration data in device tree.\n", "gather50GHzTxCal", 993);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 5GHz MIMO calibration data in device tree.\n", "gather50GHzTxCal", 983);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 5GHz calibration data in device tree.\n", "gather50GHzTxCal", 952);
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzTxCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:5GHz calibration data in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzRxCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'rx-calibration' in device tree.\n", "gather24GHzRxCal", 1172);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid rx-calibration-2.4 in device tree.\n", "gather24GHzRxCal", 1164);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid rx-calibration-2.4 in device tree.\n", "gather24GHzRxCal", 1152);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid RSSI Rx 2.4GHz MIMO calibration data in device tree.\n", "gather24GHzRxCal", 1140);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid RSSI Rx 2.4GHz calibration data in device tree.\n", "gather24GHzRxCal", 1062);
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzRxCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:RSSI Rx 2.4GHz calibration data in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzRxCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'rx-calibration-5.0' in device tree.\n", "gather50GHzRxCal", 1302);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid rx-calibration-5.0 in device tree.\n", "gather50GHzRxCal", 1294);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid rx-calibration-5.0 in device tree.\n", "gather50GHzRxCal", 1282);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid RSSI Rx 5GHz MIMO calibration data in device tree.\n", "gather50GHzRxCal", 1270);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid RSSI Rx 5GHz calibration data in device tree.\n", "gather50GHzRxCal", 1210);
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzRxCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:RSSI Rx 5GHz calibration data in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxTempCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'rx-calibration-temp' in device tree.\n", "gatherRxTempCal", 1329);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid Rx Calibration temperature in device tree.\n", "gatherRxTempCal", 1322);
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxTempCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Rx calibration termperature in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxFreqGroup2G(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'freq-group-2g-calibration' in device tree.\n", "gatherRxFreqGroup2G", 1388);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid freq-group-2g-calibration in device tree.\n", "gatherRxFreqGroup2G", 1381);
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxFreqGroup2G(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:freq-group-2g-calibration in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANChipImage::prepareMapping(uint64_t a1, OSMappedFile **a2)
{
  v2 = 3758097090;
  if (!*a2 || !a2[1] || !a2[2] || !a2[3])
  {
    return v2;
  }

  BytesNoCopy = IO80211Buffer::getBytesNoCopy(*(*(a1 + 48) + 8), *(*(a1 + 48) + 24), *(*(a1 + 48) + 32));
  v6 = *(a1 + 48);
  if (!BytesNoCopy)
  {
    if (!OUTLINED_FUNCTION_5_13(v6) || !CCLogStream::shouldLog())
    {
      return a2;
    }

    v9 = OUTLINED_FUNCTION_2_16();
    CCLogStream::logAlert(v9, "[dk] %s@%d: Failed to find dstFirmwareFile\n");
    return 3758097096;
  }

  v7 = BytesNoCopy;
  v8 = *(v6 + 32);
  if (v8 < OSMappedFile::size(a2[1]))
  {
    if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_4_15();
      OSMappedFile::size(a2[1]);
      CCLogStream::logAlert(v7, "[dk] %s@%d:user space set Firmware file too big %zu, expected %lld\n");
    }

    return v2;
  }

  if (!OSMappedFile::data(a2[1]))
  {
    return v2;
  }

  OSMappedFile::data(a2[1]);
  v10 = OSMappedFile::size(a2[1]);
  OUTLINED_FUNCTION_3_11(v10);
  v11 = OUTLINED_FUNCTION_6_9();
  v13 = IO80211Buffer::getBytesNoCopy(v11, *(v12 + 56), *(v12 + 64));
  v14 = *(a1 + 48);
  if (!v13)
  {
    if (!OUTLINED_FUNCTION_5_13(v14) || !CCLogStream::shouldLog())
    {
      return a2;
    }

    v17 = OUTLINED_FUNCTION_2_16();
    CCLogStream::logAlert(v17, "[dk] %s@%d: Failed to find dstNVRAMFile\n");
    return 3758097096;
  }

  v15 = v13;
  v16 = *(v14 + 64);
  if (v16 > OSMappedFile::size(*a2))
  {
    *(*(a1 + 48) + 64) = OSMappedFile::size(*a2);
    goto LABEL_25;
  }

  v18 = *(*(a1 + 48) + 64);
  if (v18 >= OSMappedFile::size(*a2))
  {
LABEL_25:
    if (!OSMappedFile::data(*a2))
    {
      return v2;
    }

    OSMappedFile::data(*a2);
    v19 = OSMappedFile::size(*a2);
    OUTLINED_FUNCTION_3_11(v19);
    v20 = OUTLINED_FUNCTION_6_9();
    v22 = IO80211Buffer::getBytesNoCopy(v20, *(v21 + 104), *(v21 + 112));
    v23 = *(a1 + 48);
    if (v22)
    {
      v24 = v22;
      v25 = *(v23 + 112);
      if (v25 < OSMappedFile::size(a2[2]))
      {
        if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_4_15();
          OSMappedFile::size(a2[2]);
          CCLogStream::logAlert(v24, "[dk] %s@%d:user space set Reg file too big %zu, expected %lld\n");
        }

        return v2;
      }

      if (!OSMappedFile::data(a2[2]))
      {
        return v2;
      }

      OSMappedFile::data(a2[2]);
      v27 = OSMappedFile::size(a2[2]);
      OUTLINED_FUNCTION_3_11(v27);
      v28 = OUTLINED_FUNCTION_6_9();
      v30 = IO80211Buffer::getBytesNoCopy(v28, *(v29 + 120), *(v29 + 128));
      v31 = *(a1 + 48);
      if (!v30)
      {
        if (OUTLINED_FUNCTION_5_13(v31) && CCLogStream::shouldLog())
        {
          v53 = OUTLINED_FUNCTION_2_16();
          CCLogStream::logAlert(v53, "[dk] %s@%d: Failed to find dstTXCapFile\n");
          return 3758097096;
        }

        return a2;
      }

      v32 = v30;
      v33 = *(v31 + 128);
      if (v33 < OSMappedFile::size(a2[3]))
      {
        if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_4_15();
          OSMappedFile::size(a2[3]);
          CCLogStream::logAlert(v32, "[dk] %s@%d:user space set TxCap Table too big %zu, expected %lld\n");
        }

        return v2;
      }

      if (!OSMappedFile::data(a2[3]))
      {
        return v2;
      }

      OSMappedFile::data(a2[3]);
      v35 = OSMappedFile::size(a2[3]);
      OUTLINED_FUNCTION_3_11(v35);
      if (!a2[4])
      {
LABEL_56:
        if (!a2[5])
        {
          return 0;
        }

        v44 = OUTLINED_FUNCTION_6_9();
        v46 = IO80211Buffer::getBytesNoCopy(v44, *(v45 + 88), *(v45 + 96));
        v47 = *(a1 + 48);
        if (v46)
        {
          v48 = v46;
          v49 = *(v47 + 96);
          if (v49 < OSMappedFile::size(a2[5]))
          {
            if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_4_15();
              OSMappedFile::size(a2[5]);
              CCLogStream::logAlert(v48, "[dk] %s@%d:user space set Platcfg file too big %zu, expected %lld\n");
            }

            return v2;
          }

          if (!OSMappedFile::data(a2[5]))
          {
            return v2;
          }

          v51 = OSMappedFile::data(a2[5]);
          v52 = OSMappedFile::size(a2[5]);
          memcpy(v48, v51, v52);
          return 0;
        }

        if (OUTLINED_FUNCTION_5_13(v47) && CCLogStream::shouldLog())
        {
          v50 = OUTLINED_FUNCTION_2_16();
          CCLogStream::logAlert(v50, "[dk] %s@%d: Failed to find dstPlatcfgFile\n");
          return 3758097096;
        }

        return a2;
      }

      v36 = OUTLINED_FUNCTION_6_9();
      v38 = IO80211Buffer::getBytesNoCopy(v36, *(v37 + 72), *(v37 + 80));
      v39 = *(a1 + 48);
      if (v38)
      {
        v40 = v38;
        v41 = *(v39 + 80);
        if (v41 < OSMappedFile::size(a2[4]))
        {
          if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_4_15();
            OSMappedFile::size(a2[4]);
            CCLogStream::logAlert(v40, "[dk] %s@%d:user space set Signature file too big %zu, expected %lld\n");
          }

          return v2;
        }

        if (!OSMappedFile::data(a2[4]))
        {
          return v2;
        }

        OSMappedFile::data(a2[4]);
        v43 = OSMappedFile::size(a2[4]);
        OUTLINED_FUNCTION_3_11(v43);
        goto LABEL_56;
      }

      if (!OUTLINED_FUNCTION_5_13(v39) || !CCLogStream::shouldLog())
      {
        return a2;
      }

      v42 = OUTLINED_FUNCTION_2_16();
      CCLogStream::logAlert(v42, "[dk] %s@%d: Failed to find dstSignatureFule\n");
    }

    else
    {
      if (!OUTLINED_FUNCTION_5_13(v23) || !CCLogStream::shouldLog())
      {
        return a2;
      }

      v26 = OUTLINED_FUNCTION_2_16();
      CCLogStream::logAlert(v26, "[dk] %s@%d: Failed to find dstRegulatoryFile\n");
    }

    return 3758097096;
  }

  if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
  {
    OUTLINED_FUNCTION_4_15();
    OSMappedFile::size(*a2);
    CCLogStream::logAlert(v15, "[dk] %s@%d:user space set NVRAM file too big %zu, expected %lld\n");
  }

  return v2;
}

uint64_t AppleBCMWLANChipImage::initWithRange(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create buffer memory map\n", "initWithRange", 164);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fImageBD\n", "initWithRange", 170);
}

uint64_t AppleBCMWLANChipImage::prepareMapping(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fFirmwareMap\n", "prepareMapping", 300);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fNVRAMMap\n", "prepareMapping", 308);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fSignatureMap\n", "prepareMapping", 318);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fPlatcfgMap\n", "prepareMapping", 327);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fRegTable\n", "prepareMapping", 338);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fTxCapTable\n", "prepareMapping", 348);
}

uint64_t AppleBCMWLANChipImage::completeMapping(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_0_20(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:user space set NVRAM file too big %lld, expected %lld\n", "completeMapping", 522, v3, *(v2 + 64));
}

{
  v1 = OUTLINED_FUNCTION_0_20(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:user space set TxCap Table too big %lld, expected %lld\n", "completeMapping", 567, v3, *(v2 + 128));
}

{
  v1 = OUTLINED_FUNCTION_0_20(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:user space set Reg file too big %lld, expected %lld\n", "completeMapping", 559, v3, *(v2 + 112));
}

{
  v1 = OUTLINED_FUNCTION_0_20(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:user space set Platcfg file too big %lld, expected %lld\n", "completeMapping", 550, v3, *(v2 + 96));
}

{
  v1 = OUTLINED_FUNCTION_0_20(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:user space set Signature file too big %lld, expected %lld\n", "completeMapping", 542, v3, *(v2 + 80));
}

{
  v1 = OUTLINED_FUNCTION_0_20(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:user space set Firmware file too big %lld, expected %lld\n", "completeMapping", 532, v3, *(v2 + 32));
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::forwardPacket()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected call, not implemented!\n", "forwardPacket", 115);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected call, not implemented!\n", "dupAndTransmitMcastPacket", 121);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::freeMulticastPacket()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected call, not implemented!\n", "freeMulticastPacket", 127);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::triggerAWDLMulticastTx()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected call, not implemented!\n", "triggerAWDLMulticastTx", 132);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::setInterface()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TX SUB Q invalid interface", "setInterface", 143);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::enable()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 288))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:TXSub Enable returned:0x%x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enable called on already Enabled TxSubQ\n", "enable", 227);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::disableSync()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Disable called on already disabled TxSubQ\n", "disableSync", 236);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 288))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:TXSub Disable returned:0x%x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::disable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:failed to disable Tx SubmissionQueue  since not on gate\n", "disable", 259);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::p2pMulticastTx()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 288))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:NOT IMPLEMENTED\n", "p2pMulticastTx", 279);
}

uint64_t AppleBCMWLANSkywalkTxCompletionQueue::enable()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 216))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:TX Completion Queue Enable returned:0x%x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enable called on already enabled TxCompletionQ \n", "enable", 408);
}

uint64_t AppleBCMWLANSkywalkTxCompletionQueue::disable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Disable called on already disabled TxCompletionQ \n", "disable", 423);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 216))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:TX Completion Queue Disable returned:0x%x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueue::enable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter", "enable", 553);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enable RXSubmission Queue", "enable", 560);
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueue::disable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter", "disable", 570);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Disable RXSubmission Queue", "disable", 577);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::stagePacket()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 224))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s[%d] Base Implementation \n", "stagePacket", 614, "stagePacket", 614);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::initWithPoolAndQueueInfo(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_5();
  v7 = (*(v6 + 224))();
  return CCLogStream::logEmergency(v7, "[dk] %s@%d:Failed to allocate RXCompletionQueue for ifId:%u queue:%u\n", "initWithPoolAndQueueInfo", 649, a3, *(*a4 + 32));
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::freePendingPackets()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 224))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Not Implemented\n", "freePendingPackets", 710);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::flushPackets()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 224))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unsupported Function\n", "flushPackets", 722);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::enable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 224))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enable RX Completion Queue", "enable", 730);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 224))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:TX Completion Queue Enable returned:0x%x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 224))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enable called on already enabled RxCompletionQ\n", "enable", 738);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::disable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 224))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Disable called on already disabled RxCompletionQ\n", "disable", 753);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 224))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:TX Completion Queue Disable returned:0x%x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkMulticastQueue::enable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 136))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter", "enable", 798);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 136))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enabling MC Queue\n", "enable", 801);
}

uint64_t AppleBCMWLANDMASlab::initWithOptions(AppleBCMWLANDMASlab *this, unsigned int a2, unint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, IOService *a7)
{
  v9 = a5;
  range.address = 0xAAAAAAAAAAAAAAAALL;
  range.length = 0xAAAAAAAAAAAAAAAALL;
  flags = 0;
  segmentsCount = 1;
  result = OSObject::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(this + 6) = result;
    if (result)
    {
      v15 = result;
      result = 0;
      if (a2)
      {
        if (a3 && a4)
        {
          v16 = a2 * a3;
          v17 = v16 % a4 ? a4 - v16 % a4 : 0;
          *(v15 + 68) = (v17 + v16) / a3;
          *(*(this + 6) + 64) = a3;
          *(*(this + 6) + 24) = IO80211Buffer::allocBufferSingle();
          result = *(*(this + 6) + 24);
          if (result)
          {
            MemoryDescriptor = IO80211Buffer::getMemoryDescriptor(result);
            v19 = *(*(this + 6) + 24);
            if (MemoryDescriptor)
            {
              *(*(this + 6) + 8) = IO80211Buffer::getMemoryDescriptor(v19);
              IOBufferMemoryDescriptor::GetAddressRange(*(*(this + 6) + 8), &range);
              *(*(this + 6) + 48) = range.address;
              v20 = *(this + 6);
              v21 = *(v20 + 48);
              if (v21)
              {
                bzero(v21, range.length);
                v20 = *(this + 6);
              }

              *(v20 + 16) = v9;
              if (a7 && (**(this + 6) = a7, bzero(&specification, 0x90uLL), specification.maxAddressBits = a6, IODMACommand::Create(**(this + 6), 0, &specification, (*(this + 6) + 40)), *(*(this + 6) + 40)) && (*(*(this + 6) + 72) = IOMallocZeroTyped(), v22 = *(this + 6), *(v22 + 72)))
              {
                v23 = IODMACommand::PrepareForDMA(*(v22 + 40), 0, *(v22 + 8), 0, 0, &flags, &segmentsCount, &range, 0);
                result = 0;
                if (!v23 && segmentsCount == 1)
                {
                  *(*(this + 6) + 56) = range.address;
                  v24 = *(this + 6);
                  if (*(v24 + 68))
                  {
                    v25 = 0;
                    v26 = 0;
                    do
                    {
                      *(*(v24 + 72) + v25) = *(v24 + 48) + (*(v24 + 64) * v26);
                      v27 = *(this + 6);
                      v28 = v26 * *(v27 + 64);
                      v29 = *(v27 + 56);
                      v30 = *(v27 + 72) + v25;
                      v31 = __CFADD__(v29, v28);
                      v32 = v29 + v28;
                      v33 = v31;
                      *(v30 + 8) = v32;
                      if (v31)
                      {
                        break;
                      }

                      ++v26;
                      v24 = *(this + 6);
                      v25 += 16;
                    }

                    while (v26 < *(v24 + 68));
                    return v33 ^ 1u;
                  }

                  else
                  {
                    return 1;
                  }
                }
              }

              else
              {
                return 0;
              }
            }

            else
            {
              IO80211Buffer::returnBuffer(v19);
              *(*(this + 6) + 24) = 0;
              (*(**(*(this + 6) + 32) + 72))(*(*(this + 6) + 32));
              result = *(*(this + 6) + 32);
              if (result)
              {
                (*(*result + 16))(result);
                result = 0;
                *(*(this + 6) + 32) = 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANDMASlab::copyBufferDescriptorToBounce(AppleBCMWLANDMASlab *this, unsigned int a2, IO80211Buffer *a3)
{
  v3 = 3758097084;
  if (a3)
  {
    OUTLINED_FUNCTION_0_21();
    if (!v6 & v5)
    {
      v7 = v4;
      OUTLINED_FUNCTION_2_17();
      if (v5)
      {
        v10 = v9;
        v11 = v8;
        if (IO80211Buffer::getLength(v8) > v9 && IO80211Buffer::getLength(v11) >= (v7 + v10))
        {
          v12 = OUTLINED_FUNCTION_1_18();
          if (IO80211Buffer::readBytes(v12, v13, v14))
          {
            return 0;
          }

          else
          {
            return 3758097084;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANDMASlab::copyBounceToBufferDescriptor(AppleBCMWLANDMASlab *this, unsigned int a2, IO80211Buffer *a3)
{
  v3 = 3758097084;
  if (a3)
  {
    OUTLINED_FUNCTION_0_21();
    if (!v6 & v5)
    {
      v7 = v4;
      OUTLINED_FUNCTION_2_17();
      if (v5)
      {
        v10 = v9;
        v11 = v8;
        if (IO80211Buffer::getLength(v8) > v9 && IO80211Buffer::getLength(v11) >= (v7 + v10))
        {
          v12 = OUTLINED_FUNCTION_1_18();
          if (IO80211Buffer::writeBytes(v12, v13, v14, v15))
          {
            return 0;
          }

          else
          {
            return 3758097084;
          }
        }
      }
    }
  }

  return v3;
}

void AppleBCMWLANDMASlab::zero(AppleBCMWLANDMASlab *this)
{
  OUTLINED_FUNCTION_0_21();
  if (!v5 & v4)
  {
    v6 = v1;
    BytesNoCopy = IO80211Buffer::getBytesNoCopy(*(v3 + 24), (*(v3 + 64) * v2), *(v3 + 64));
    if (BytesNoCopy)
    {
      v8 = *(*(v6 + 48) + 64);

      bzero(BytesNoCopy, v8);
    }
  }
}

uint64_t AppleBCMWLANSkywalkInterface::init(AppleBCMWLANSkywalkInterface *this)
{
  IOLog("AppleBCMWLANSkywalkInterface::init start\n");
  result = IO80211InfraInterface::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(this + 19) = result;
    if (result)
    {
      IOLog("Interface Init complete\n");
      return 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::initWithProviderAndParameters(IO80211SkywalkInterface *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__src, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1 + 19);
  if (!v10)
  {
    IOLog("skywalk interface ivars alloc fail\n", a2, a3, a4, a5, a6, __src, a8);
    return 0;
  }

  if (a6 > 4)
  {
    return 0;
  }

  v11 = a8;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  *(v10 + 42) = a6;
  memcpy((*(a1 + 19) + 44), __src, 4 * (a6 & 0x3F));
  IO80211SkywalkInterface::setInterfaceRole(a1, v13);
  IO80211SkywalkInterface::setInterfaceId(a1, v14);
  *(*(a1 + 19) + 16) = v11;
  *(*(a1 + 19) + 168) = a9;
  v16 = *(a1 + 19);
  v17 = *(v16 + 168);
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v16 = *(a1 + 19);
  }

  *(v16 + 8) = a10;
  *(*(a1 + 19) + 162) = v12;
  *(*(a1 + 19) + 161) = 0;
  v18 = 1;
  IOParseBootArgNumber("wlan.skywalk.ktrace", &fKernelTraceEnabled, 1);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v19 = (*(*a1 + 1088))(a1);
      CCLogStream::logInfoIf(v19, 0x80uLL, "[dk] %s@%d:Skywalk interface allocation success", "initWithProviderAndParameters", 162);
    }
  }

  return v18;
}

uint64_t AppleBCMWLANSkywalkInterface::setMacAddress(uint64_t a1, ether_addr *a2)
{
  v4 = AppleBCMWLANCore::setCurEtheraddr(*(*(a1 + 152) + 24), a2);
  if (!v4)
  {
    if (AppleBCMWLANCore::featureFlagIsBitSet(*(*(a1 + 152) + 24), 115) && AppleBCMWLANCore::get11beAdapter(*(*(a1 + 152) + 24)))
    {
      v5 = AppleBCMWLANCore::get11beAdapter(*(*(a1 + 152) + 24));
      AppleBCMWLAN11beAdapter::setMloAddr(v5, a2);
    }

    v6 = *(a1 + 152);
    if (v6[161] == 1)
    {
      (*(**v6 + 72))(*v6, a1);
      (*(***(a1 + 152) + 64))(**(a1 + 152), a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANSkywalkInterface::free()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Enter ::free [%p]", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::start(const OSMetaClassBase *a1, IO80211SkywalkInterface *a2)
{
  __src = xmmword_1003AD700;
  OSMetaClassBase::safeMetaCast(a1, gAppleBCMWLANCoreMetaClass);
  (a1->__vftable[48].Dispatch)(a1);
  v5 = OUTLINED_FUNCTION_86();
  FaultReporter = AppleBCMWLANCore::getFaultReporter(v5);
  return AppleBCMWLANSkywalkInterface::initWithProviderAndParameters(a2, v7, 0, 1, 1, 4, &__src, 256, v2, FaultReporter);
}

uint64_t AppleBCMWLANSkywalkInterface::start(OSMetaClassBase *anObject, IO80211SkywalkInterface *a2)
{
  __src = 3;
  v4 = anObject[3].__vftable;
  if ((v4[889].release & 1) == 0)
  {
    IOLog("ERROR: Skywalk config parameters not valid\n");
    v4 = anObject[3].__vftable;
  }

  release_high = HIDWORD(v4[889].release);
  OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);
  v6 = (anObject->__vftable[48].Dispatch)(anObject);
  FaultReporter = AppleBCMWLANCore::getFaultReporter(anObject);
  AppleBCMWLANSkywalkInterface::initWithProviderAndParameters(a2, v8, release_high, 2, 0, 1, &__src, 256, v6, FaultReporter);
  Dispatch = anObject[3].__vftable[889].Dispatch;

  return IO80211SkywalkInterface::setParentInterface(a2, Dispatch);
}

uint64_t AppleBCMWLANSkywalkInterface::start()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:skywalk start fail\n", "start", 277);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to register interface with bus interface", "start", 324);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:infra interface registration status = %d \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:bus skywalk is not valid\n", "start", 293);
}

uint64_t AppleBCMWLANSkywalkInterface::registerInterface()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:SkywalkInterface: media type report fail, ret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:SkywalkInterface: set headroom fail fail, ret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:SkywalkInterface: skywalk interface registration fail, ret[0x%08x]\n", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::stop()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Skywalk Interface Stop\n", "stop", 479);
}

uint64_t AppleBCMWLANSkywalkInterface::getSupportedMediaArray()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Exit with ret:0x%x\n", "getSupportedMediaArray", 575, 0);
}

uint64_t AppleBCMWLANSkywalkInterface::setRunningState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:fRunning:%d\n", "setRunningState", 610, *(*a3 + 160));
}

uint64_t AppleBCMWLANSkywalkInterface::enableDatapath(IO80211SkywalkInterface *a1, uint64_t a2, const OSString **a3)
{
  OUTLINED_FUNCTION_5_5();
  v6 = (*(v5 + 1088))();
  v7 = (*(*a1 + 160))(a1);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  if (*a3)
  {
    CStringNoCopy = OSString::getCStringNoCopy(*a3);
  }

  else
  {
    CStringNoCopy = "unknown";
  }

  return CCLogStream::logInfo(v6, "[dk] %s@%d:AppleBCMWLANSkywalkInterface %s ifid %d Role %s enable skywalk Datapath.\n", "enableDatapath", 624, v7, InterfaceId, CStringNoCopy);
}

uint64_t AppleBCMWLANSkywalkInterface::enableDatapath()
{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:interface not enabled yet\n", "enableDatapath", 626);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: skywalk rx completion queue enqueue fail with return %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 631);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:tx completion queue not valid\n", "enableDatapath", 628);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: skywalk data path enable fail\n", "enableDatapath", 649);
}

uint64_t AppleBCMWLANSkywalkInterface::enable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter", "enable", 660);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Called, but interface is not running", "enable", 677);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Exit with ret:0x%x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::enable(IO80211SkywalkInterface *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_5();
  v6 = (*(v5 + 1088))();
  v7 = (*(*a1 + 160))(a1);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:AppleBCMWLANSkywalkInterface %s ifid %d ready to handle packet data, running %d\n", "enable", 666, v7, InterfaceId, *(*a3 + 160));
}

uint64_t AppleBCMWLANSkywalkInterface::enable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*a3 + 24));
  isWatchdogRunning = AppleBCMWLANCore::isWatchdogRunning(*(*a3 + 24));
  return CCLogStream::logAlert(v5, "[dk] %s@%d:data path cannot enable, power state %d, watchdog status %d\n", "enable", 674, isPoweredOn, isWatchdogRunning);
}

uint64_t AppleBCMWLANSkywalkInterface::disableDatapath()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter", "disableDatapath", 694);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 713);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 709);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:skywalk data path disable fail\n", "disableDatapath", 722);
}

uint64_t AppleBCMWLANSkywalkInterface::disableDatapath(uint64_t a1, uint64_t a2, const OSString **a3)
{
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 1088))();
  v6 = OUTLINED_FUNCTION_86();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v6);
  CStringNoCopy = OSString::getCStringNoCopy(*a3);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:IfId %d Role %s disable skywalk data path\n", "disableDatapath", 697, InterfaceId, CStringNoCopy);
}

{
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 1088))();
  v6 = OUTLINED_FUNCTION_8_12();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v6);
  if (*a3)
  {
    CStringNoCopy = OSString::getCStringNoCopy(*a3);
  }

  else
  {
    CStringNoCopy = "Unknown";
  }

  return CCLogStream::logInfo(v3, "[dk] %s@%d:IfId %d Role %s disable skywalk data path done\n", "disableDatapath", 716, InterfaceId, CStringNoCopy);
}

uint64_t AppleBCMWLANSkywalkInterface::disableDatapath(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 1088))(a2);
  if (result)
  {
    (*(*a2 + 1088))(a2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*a2 + 1088))(a2);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logCrit(v4, "[dk] %s@%d:tx submission queue ac %d not valid\n", v5, v6, v7);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::disable()
{
  OUTLINED_FUNCTION_11_4();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  v4 = OUTLINED_FUNCTION_8_12();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v4);
  v10 = *(*(v0 + 152) + 161);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AppleBCMWLANSkywalkInterface %s ifid %d disable, fEnabled:%d\n", v6, v7, v8, InterfaceId, v10);
}

uint64_t AppleBCMWLANSkywalkInterface::setMulticastAddresses()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:setMulticastMode( %d) failed\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x80uLL, "[dk] %s@%d:Returning 0x%08x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::setAllMulticastModeEnable()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Enter, enable:%d", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:setAllMulticastModeEnable( %d) failed\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x80uLL, "[dk] %s@%d:Returning 0x%08x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::setCurrentApAddress()
{
  OUTLINED_FUNCTION_11_4();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_8_12();
  if (IO80211SkywalkInterface::getInterfaceRole(v3) == 1)
  {
    IO80211_io80211isSensitiveInfoAllowed();
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v1) == 1)
  {
    IO80211_io80211isSensitiveInfoAllowed();
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v1) == 1)
  {
    IO80211_io80211isSensitiveInfoAllowed();
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v1) == 1)
  {
    IO80211_io80211isSensitiveInfoAllowed();
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v1) == 1)
  {
    IO80211_io80211isSensitiveInfoAllowed();
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v1) == 1)
  {
    IO80211_io80211isSensitiveInfoAllowed();
  }

  (*(*v1 + 160))(v1);
  v4 = OUTLINED_FUNCTION_86();
  IO80211SkywalkInterface::getInterfaceId(v4);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v0, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::setCurrentApAddress(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v6 + 160))(v2);
  v7 = OUTLINED_FUNCTION_8_12();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v7);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s with null peer on skywalk interface for %s ifid %d\n", v9, v10, v11, a2, InterfaceId);
}

uint64_t AppleBCMWLANSkywalkInterface::removePacketQueue()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Removing flowID:%u\n", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::powerOnNotification()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter", "powerOnNotification", 913);
}

uint64_t AppleBCMWLANSkywalkInterface::powerOffNotification()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter", "powerOffNotification", 919);
}

uint64_t AppleBCMWLANSkywalkInterface::statsDump(uint64_t a1, uint64_t a2, const OSString **a3)
{
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 1088))();
  v6 = OUTLINED_FUNCTION_86();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v6);
  CStringNoCopy = OSString::getCStringNoCopy(*a3);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Skywalk Interface ID %d Role %s\n", "statsDump", 929, InterfaceId, CStringNoCopy);
}

uint64_t AppleBCMWLANSkywalkInterface::printDataPath()
{
  OUTLINED_FUNCTION_11_4();
  (*(v2 + 1088))();
  v3 = OUTLINED_FUNCTION_86();
  InterfaceRoleStr = IO80211SkywalkInterface::getInterfaceRoleStr(v3);
  v5 = (*(*v0 + 160))(v0);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter InterfaceRole:%s bsdname:%s\n", "printDataPath", 945, InterfaceRoleStr, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::setPromiscuousModeEnable()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter, enable:%d", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::bpfTap()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:infra interface associated, cannot enable here\n", "bpfTap", 1033);
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceUnitNumber()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter: unitNumber:%u\n", v3, v4, v5);
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceEnable(IO80211SkywalkInterface *a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5_5();
  v6 = (*(v5 + 1088))();
  v7 = (*(*a1 + 160))(a1);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(a1);
  ActiveMediaType = IO80211SkywalkInterface::getActiveMediaType(a1);
  v11 = (*(*a1 + 1168))(a1);
  return CCLogStream::logInfo(v6, "[dk] %s@%d:Enter skywalk bcm interface %s, ifId %d, ifRole %d,  isEnable = %d activeMediaType = %d associated=%d fEnabled:%d isDataPathConnected %d \n", "setInterfaceEnable", 1160, v7, InterfaceId, InterfaceRole, a3 & 1, ActiveMediaType, v11, *(*(a1 + 19) + 161), *(*(a1 + 19) + 216));
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceEnable()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d ERROR: super::setInterfaceEnable failed!\n", "setInterfaceEnable", 1174, "setInterfaceEnable", 1174);
}

{
  OUTLINED_FUNCTION_11_4();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:disable data path for %s\n", "setInterfaceEnable", 1189, v4);
}

{
  OUTLINED_FUNCTION_11_4();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:enable data path for %s\n", "setInterfaceEnable", 1180, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:CurrentState == newState, bailing out", "setInterfaceEnable", 1164);
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceEnable(IO80211SkywalkInterface *a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_5_5();
  v8 = (*(v7 + 1088))();
  v9 = (*(*a1 + 160))(a1);
  ActiveMediaType = IO80211SkywalkInterface::getActiveMediaType(a1);
  v11 = (*(*a1 + 1168))(a1);
  return CCLogStream::logInfo(v8, "[dk] %s@%d:Exit skywalk bcm interface %s isEnable = %d activeMediaType = %d associated=%d fEnabled:%d isDataPathConnected %d \n", "setInterfaceEnable", 1202, v9, a4, ActiveMediaType, v11, *(*a3 + 161), *(*a3 + 216));
}

uint64_t AppleBCMWLANSkywalkInterface::flushFlowQueues(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:Removing Peer FLowQueue %02x:%02x:%02x:%02x:%02x:%02x\n", "flushFlowQueues", 1223, *a3, a3[1], a3[2], a3[3], a3[4], a3[5]);
}

uint64_t AppleBCMWLANChipManagerPCIe0x4377b::prepareHardware(AppleBCMWLANChipManagerPCIe0x4377b *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v3 = 3758097090;
  v6 = 0;
  if (a2 && a3)
  {
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0xE64u, &v6))
    {
      return 3758097098;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFC | 1;
      AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0xE64u, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe0x4377b::checkHardware(AppleBCMWLANChipManagerPCIe0x4377b *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v6 = 0;
  result = 3758097090;
  if (a2 && a3)
  {
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0x40u, 4u);
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x204u, &v6) || (v6 & 0x4000) != 0)
    {
      return 3758097098;
    }

    else
    {
      v5 = AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x40u, &v6);
      result = 3758097098;
      if (!v5)
      {
        if (v6 == 4)
        {
          return 0;
        }

        else
        {
          return 3758097098;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::initWithDriver(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d: Failed to get Command Manager\n", "initWithDriver", 131);
    }
  }

  return result;
}

{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Unable to get Config Manager\n", "initWithDriver", 127);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::freeResources(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(uint64_t a1, OSString *this)
{
  v2 = *(*a1 + 24);
  OSString::getCStringNoCopy(this);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to send CoreAnalytics CoreAnalyticsSendEvent for event %s", v4, v5, v6);
}

uint64_t AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 399);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 391);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 383);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 375);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 367);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 359);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 351);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 343);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 335);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 327);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 319);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 311);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 303);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 295);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 287);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 279);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 271);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 263);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendDynSARStatsEventCoreAnalytics", 260);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate eventName\n", "sendDynSARStatsEventCoreAnalytics", 258);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSARModeAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to Configure DSA Mode: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureTxSDBAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TxSDB: Error: Failed to Configure TxSDB Mode: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSARPwrBoostAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to Configure DSA Pwr Boost: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSAREventAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to Configure DSA Event: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR status: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version for DynSAR status response\n", "handleGetDynSARStatusAsyncCallback", 714);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARStatusAsyncCallback", 702);
}

uint64_t AppleBCMWLANTxPowerManager::dumpDynSARStatusV3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Aggregation index:\n", "dumpDynSARStatusV3", 1586);
}

{
  result = OUTLINED_FUNCTION_3(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:xtlvPtr alignment failure\n", "dumpDynSARStatusV3", 1591);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR summary unshared TxDC and Util: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid FW length detected for DYNSAR_CNT_VERSION_V4!\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 880);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid FW length detected for DYNSAR_CNT_VERSION_V2!\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 872);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Dynamic SAR Summary invalid version\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 884);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Dynamic SAR Summary invalid version\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 936);
}

{
  result = OUTLINED_FUNCTION_3(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Error parsing reportDSA\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 950);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version or fields for DynSAR summary response\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 863);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 846);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR Aggregated Stats: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Vx: Variance of Ux over Twin\n", "handleGetDynSARAggStatsAsyncCallback", 1024);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARAggStatsAsyncCallback", 983);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR Details: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: P - Power optimization, M - no frame mute, F - Failsafe mode, T - Tx dutycycle limit\n", "handleGetDynSARDetailAsyncCallback", 1085);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ---------------------------------------------------------------------------------------------\n", "handleGetDynSARDetailAsyncCallback", 1101);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARDetailAsyncCallback", 1068);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR Details: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: P - Power optimization, M - no frame mute, F - Failsafe mode, T - Tx dutycycle limit\n", "handleGetDynSARDetailAsyncCallbackV2", 1160);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ---------------------------------------------------------------------------------------------\n", "handleGetDynSARDetailAsyncCallbackV2", 1176);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARDetailAsyncCallbackV2", 1143);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR profile: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version for DynSAR profiles response\n", "handleGetDynSARProfileAsyncCallback", 1231);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARProfileAsyncCallback", 1217);
}

uint64_t AppleBCMWLANTxPowerManager::dumpDynSARProfilesV1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Profiles Total: %d Active: %d\n", "dumpDynSARProfilesV1", 2515, *(v2 + 14), *(v2 + 12));
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ----------------------------------------------------------\n", "dumpDynSARProfilesV1", 2518);
}

uint64_t AppleBCMWLANTxPowerManager::dumpDynSARProfilesV2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Profiles Total: %d Active: %d\n", "dumpDynSARProfilesV2", 2547, *(v2 + 14), *(v2 + 12));
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ----------------------------------------------------------\n", "dumpDynSARProfilesV2", 2550);
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSAR(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "configureDynSAR", 1254);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DynSAR Mode\n", "configureDynSAR", 1321);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DynSAR Event\n", "configureDynSAR", 1285);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DynSAR Power Boost\n", "configureDynSAR", 1305);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSARMode(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "configureDynSARMode", 1336);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure DSA mode, %s\n", v5, v6, v7);
}

void AppleBCMWLANTxPowerManager::configureDynSARMode(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_16(a1);
  v5 = (*(v4 + 112))(v3, 0);
  CCLogStream::logInfo(v2, "[dk] %s@%d:Set DSA Mode to %d, %s\n", "configureDynSARMode", 1371, v1, v5);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSAREvent(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "configureDynSAREvent", 1500);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to configure DSA event, %s\n", v5, v6, v7);
}

void AppleBCMWLANTxPowerManager::configureDynSAREvent(void *a1, int a2)
{
  v3 = a1[3];
  if (a2 == 1)
  {
    v4 = "enable";
  }

  else
  {
    v4 = "disable";
  }

  v5 = (*(**a1 + 112))(*a1, 0);
  CCLogStream::logInfo(v3, "[dk] %s@%d:Set DSA event to %d (%s), %s\n", "configureDynSAREvent", 1535, a2, v4, v5);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "configureDynSARPwrBoost", 1391);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure DSA power boost, %s\n", v5, v6, v7);
}

void AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_16(a1);
  v5 = (*(v4 + 112))(v3, 0);
  CCLogStream::logInfo(v2, "[dk] %s@%d:Set DSA power boost to %d dB, %s\n", "configureDynSARPwrBoost", 1426, v1, v5);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARProfile(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARProfile", 2448);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Profile\n", "getDynSARProfile", 2482);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version for DynSAR profiles response\n", "getDynSARProfile", 2493);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for dsaSummaryBuffer\n", "getDynSARProfile", 2456);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARStatus(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARStatus", 1725);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Status\n", "getDynSARStatus", 1756);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version for DynSAR status response\n", "getDynSARStatus", 1766);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR status, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2, 0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Get DSA status, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARAggStats(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARAggStats", 1925);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Observation window size %d exceeds limit, cap to %d\n", "getDynSARAggStats", 1944, 20, 20);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Aggregated Stats\n", "getDynSARAggStats", 1963);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Vx: Variance of Ux over Twin\n", "getDynSARAggStats", 1997);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR Aggregated Stats, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2, 0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Get DSA Aggregated Stats, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetail(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARDetail", 2048);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Details\n", "getDynSARDetail", 2099);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: P - Power optimization, M - no frame mute, F - Failsafe mode, T - Tx dutycycle limit\n", "getDynSARDetail", 2116);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ---------------------------------------------------------------------------------------------\n", "getDynSARDetail", 2138);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Slice 1 DynSAR Detail Report index mismatch", "getDynSARDetail", 2217);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Slice 0 DynSAR Detail Report index mismatch", "getDynSARDetail", 2207);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR Detail, %s\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_8_13(a1);
  v5 = (*(v4 + 112))(v3, 0);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:DynSAR: Get DSA Detail of slice %d, %s\n", "getDynSARDetail", 2229, v1, v5);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetailV2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARDetailV2", 2251);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Details\n", "getDynSARDetailV2", 2302);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: P - Power optimization, M - no frame mute, F - Failsafe mode, T - Tx dutycycle limit\n", "getDynSARDetailV2", 2320);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ---------------------------------------------------------------------------------------------\n", "getDynSARDetailV2", 2342);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Slice 1 DynSAR Detail Report index mismatch", "getDynSARDetailV2", 2419);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Slice 0 DynSAR Detail Report index mismatch", "getDynSARDetailV2", 2409);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR Detail, %s\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_8_13(a1);
  v5 = (*(v4 + 112))(v3, 0);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:DynSAR: Get DSA Detail of slice %d, %s\n", "getDynSARDetailV2", 2431, v1, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2584);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Summary\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2617);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid FW length detected for DYNSAR_CNT_VERSION_V4!\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2645);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid FW length detected for DYNSAR_CNT_VERSION_V2!\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2637);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Dynamic SAR Summary invalid version\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2649);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Dynamic SAR Summary invalid version\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2701);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version or fields for DynSAR summary response\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2628);
}

uint64_t AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_3(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 24), "[dk] %s@%d:Error parsing reportDSA\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2716);
    }
  }

  *a2 = -536870212;
  return result;
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSARPwrBoostPerRSSI(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR status\n", "configureDynSARPwrBoostPerRSSI", 2755);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get Aggregated Stats\n", "configureDynSARPwrBoostPerRSSI", 2758);
}

uint64_t AppleBCMWLANTxPowerManager::txSDBEnable(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure TxSDB mode, %s\n", v5, v6, v7);
}

void AppleBCMWLANTxPowerManager::txSDBEnable(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_16(a1);
  v5 = (*(v4 + 112))(v3, 0);
  CCLogStream::logInfo(v2, "[dk] %s@%d:Set TxSDB Mode to %d, %s\n", "txSDBEnable", 2859, v1, v5);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANCommandMonitor::initWithMonitorLengthProviderAndLogger(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:unable to create ivars->fCommandReporters\n", "initWithMonitorLengthProviderAndLogger", 178);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:unable to create ivars->fCommandsDict\n", "initWithMonitorLengthProviderAndLogger", 172);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:invalid commandGate\n", "initWithMonitorLengthProviderAndLogger", 146);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:invalid ivars->fDriver\n", "initWithMonitorLengthProviderAndLogger", 139);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:invalid queuelen\n", "initWithMonitorLengthProviderAndLogger", 131);
}

uint64_t AppleBCMWLANCommandMonitor::monitorCmdPrepared(uint64_t a1, AppleBCMWLANCommand *this, uint64_t a3)
{
  v4 = *(*a1 + 72);
  CmdName = AppleBCMWLANCommand::getCmdName(this);
  v6 = (*(*a3 + 72))(a3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid lastTime cmd: %s, count: %d\n", "monitorCmdPrepared", 405, CmdName, v6);
}

uint64_t AppleBCMWLANCommandMonitor::monitorCmdPrepared(int a1, AppleBCMWLANCommand *a2)
{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to create cmdTimeHistogram for cmd %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to get cmdTimeHistory for cmd %s\n", v4, v5, v6);
}

uint64_t AppleBCMWLANCommandMonitor::monitorCmdPrepared(uint64_t a1, const OSObject *a2, OSDictionaryPtr *a3)
{
  v6 = OSDictionary::withCapacity(2u);
  *a3 = v6;
  if (v6)
  {
    v7 = v6;
    v8 = OSDictionary::setObject(*(*a1 + 104), a2, v6);
    (v7->release)(v7);
    v9 = v8 - 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t AppleBCMWLANCommandMonitor::monitorCmdCompleted(int a1, AppleBCMWLANCommand *a2)
{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed StringFromReturn for cmd %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to create simple reporter for cmd %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to create chanidNumber for cmd %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to create simple for cmd %s\n", v4, v5, v6);
}

uint64_t AppleBCMWLANCommandMonitor::configureReport(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    v4 = v3;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *(*a1 + 72);
      getClassNameHelper(v4);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logEmergency(v5, "[dk] %s@%d:DKReporter::%s::%s(%d) testPostConfigureAllAndAdjustV3 failed\n", v6, v7, v8, "configureReport", 659);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::printRingState(AppleBCMWLANByteRing *a1, const char *a2)
{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  isEnabled = IO80211WorkSource::isEnabled(a1);
  v6 = *(a1 + 14);
  v7 = **(v6 + 32);
  v8 = **(v6 + 40);
  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(a1);
  WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(a1);
  ItemSize = AppleBCMWLANItemRing::getItemSize(a1);
  v12 = (*(*a1 + 248))(a1);
  v13 = *(a1 + 14);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:%s: en %u, host {r=%u, w=%u} readable=%d writable=%d is=%d p=%d lst=[%d@%06llu.%06llu] cfw(cb %x, tgt %x), buf=%p this=%p \n", "printRingState", 485, a2, isEnabled, v7, v8, ReadableItemCount, WritableItemCount, ItemSize, v12, *(v13 + 168), *(v13 + 160) / 0x3B9ACA00uLL, *(v13 + 160) % 0x3B9ACA00uLL / 0x3E8, *(v13 + 128) != 0, *(v13 + 136) != 0, *(v13 + 112), a1);
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::printRingState(AppleBCMWLANByteRing *a1, const char *a2)
{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  isEnabled = IO80211WorkSource::isEnabled(a1);
  v6 = (*(*a1 + 312))(a1);
  v7 = (*(*a1 + 208))(a1);
  v8 = (*(*a1 + 392))(a1);
  v9 = (*(*a1 + 344))(a1);
  v10 = *(a1 + 16);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:%s, en %u, (state=%x id=%d if=%d tid=%d da=%02x:%02x:%02x:%02x:%02x:%02x sa=%02x:%02x:%02x:%02x:%02x:%02x pnd=%d)\n", "printRingState", 325, a2, isEnabled, v6, v7, v8, v9, v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], 0);
}

uint64_t AppleBCMWLANPCIeSubmissionRing::requestRingFill(AppleBCMWLANByteRing *a1)
{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  OUTLINED_FUNCTION_0_24();
  v4 = (*(v3 + 216))(a1);
  OUTLINED_FUNCTION_0_24();
  v6 = (*(v5 + 208))(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:ERROR: ivars->fOwner is NULL (ring type: %u, ring ID: %u)\n", "requestRingFill", 252, v4, v6);
}

{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  OUTLINED_FUNCTION_0_24();
  v4 = (*(v3 + 216))(a1);
  OUTLINED_FUNCTION_0_24();
  v6 = (*(v5 + 208))(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:ERROR: getRingFillAction() is NULL (ring type: %u, ring ID: %u)\n", "requestRingFill", 248, v4, v6);
}

uint64_t AppleBCMWLANPCIeSubmissionRing::printRingState(AppleBCMWLANByteRing *a1, const char *a2)
{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  isEnabled = IO80211WorkSource::isEnabled(a1);
  v6 = *(a1 + 14);
  v7 = **(v6 + 32);
  v8 = **(v6 + 40);
  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(a1);
  WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(a1);
  ItemSize = AppleBCMWLANItemRing::getItemSize(a1);
  v12 = (*(*a1 + 248))(a1);
  v13 = *(a1 + 14);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:%s: en %u, host {r=%u, w=%u} readable=%d writable=%d is=%d p=%d lst=[%d@%06llu.%06llu] cfw(cb %x, tgt %x), buf=%p this=%p \n", "printRingState", 521, a2, isEnabled, v7, v8, ReadableItemCount, WritableItemCount, ItemSize, v12, *(v13 + 136), *(v13 + 128) / 0x3B9ACA00uLL, *(v13 + 128) % 0x3B9ACA00uLL / 0x3E8, *(v13 + 152) != 0, *(v13 + 160) != 0, *(v13 + 112), a1);
}

void AppleBCMWLANCore::getChipRevString(AppleBCMWLANCore *this, const char *a2, size_t a3)
{
  if (a2 && a3 >= 3)
  {
    OUTLINED_FUNCTION_77_0();
    v7 = *(v6 + 72);
    v8 = *(v7 + 36072);
    if (v8)
    {
      if (v8 >= a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = *(v7 + 36072);
      }

      memcpy(v3, (v7 + 36064), v9);
    }

    else
    {
      v10 = OSDictionary::withCapacity(6u);
      if (v10)
      {
        v11 = v10;
        v12 = OUTLINED_FUNCTION_51_0(*(v4 + 72));
        if (!(*(v13 + 408))(v12, v11, 0))
        {
          Object = OSDictionary::getObject(v11, "ChipInfo");
          v15 = OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass);
          CStringNoCopy = OSString::getCStringNoCopy(v15);
          if (OSString::getLength(v15) >= 4 && CStringNoCopy != 0)
          {
            Length = OSString::getLength(v15);
            v19 = strnstr(CStringNoCopy, "s=", Length);
            if (v19)
            {
              memcpy(v3, v19 + 2, a3);
            }
          }

          v20 = *(v4 + 72) + 36064;
          v21 = *v3;
          *(v20 + 2) = v3[2];
          *v20 = v21;
          *(*(v4 + 72) + 36072) = a3;
        }

        OUTLINED_FUNCTION_1_10();
        v23 = *(v22 + 16);

        v23(v11);
      }
    }
  }
}

BOOL AppleBCMWLANCore::is4399C0Up(AppleBCMWLANCore *this)
{
  v2 = OUTLINED_FUNCTION_62_0(*(this + 9));
  v4 = (*(v3 + 368))(v2);
  OUTLINED_FUNCTION_95_0();
  AppleBCMWLANCore::getChipRevString(this, v5, 3uLL);
  result = 1;
  if (v4 >> 4 <= 0x112)
  {
    if (v4 != 4399)
    {
      return 0;
    }

    OUTLINED_FUNCTION_122();
    if (memcmp(v7, v8, v9))
    {
      OUTLINED_FUNCTION_122();
      if (memcmp(v10, v11, v12))
      {
        OUTLINED_FUNCTION_122();
        if (memcmp(v13, v14, v15))
        {
          OUTLINED_FUNCTION_122();
          if (memcmp(v16, v17, v18))
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANCore::is4387C2Up(AppleBCMWLANCore *this)
{
  v2 = OUTLINED_FUNCTION_62_0(*(this + 9));
  v4 = (*(v3 + 368))(v2);
  OUTLINED_FUNCTION_95_0();
  AppleBCMWLANCore::getChipRevString(this, v5, 3uLL);
  result = 1;
  if (v4 >> 2 <= 0x448)
  {
    if (v4 != 4387)
    {
      return 0;
    }

    OUTLINED_FUNCTION_122();
    if (memcmp(v7, v8, v9))
    {
      OUTLINED_FUNCTION_122();
      if (memcmp(v10, v11, v12))
      {
        return 0;
      }
    }
  }

  return result;
}

IOService *AppleBCMWLANCore::handleAdjustBusy(IOService *this, void (__cdecl *a2)(OSObjectInterface *__hidden this))
{
  v2 = this[1].OSObject::OSObjectInterface::__vftable;
  if (v2[275].free == a2)
  {
    v3 = this;
    v4 = 1;
    atomic_compare_exchange_strong(&v2[275], &v4, 0);
    if (v4 == 1)
    {
      IOService::AdjustBusy(this, -1, 0);
      OUTLINED_FUNCTION_274();
      OUTLINED_FUNCTION_132();
      if ((*(v5 + 1952))(v3))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v6 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          (*(v9 + 1952))(v3);
          OUTLINED_FUNCTION_156();
          CCLogStream::logAlert(v10, "[dk] %s@%d:AdjustBusy(-1) timeout in %u ms! busystate %u, fAdjustBusyCnt %u\n", "handleAdjustBusy", 1847, 40000, v12, v11);
        }
      }

      OUTLINED_FUNCTION_156();
      return io80211_os_log("AppleBCMWLANCore::handleAdjustBusy/%u: AdjustBusy(-1) timeout in %u ms! busystate %u, fAdjustBusyCnt %u\n");
    }

    else
    {
      OUTLINED_FUNCTION_274();
      OUTLINED_FUNCTION_24_1();
      if ((*(v7 + 1952))(v3))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v8 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          (*(v13 + 1952))(v3);
          OUTLINED_FUNCTION_156();
          CCLogStream::logAlert(v14, "[dk] %s@%d:AdjustBusy timeout in %u ms! busystate %u, Not adjusting: fAdjustBusyCnt %u\n", "handleAdjustBusy", 1854, 40000, v16, v15);
        }
      }

      OUTLINED_FUNCTION_156();
      return io80211_os_log("AppleBCMWLANCore::handleAdjustBusy/%u: AdjustBusy timeout in %u ms! busystate %u, Not adjusting: fAdjustBusyCnt %u\n");
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::allocChipImage(AppleBCMWLANCore *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!*(*(this + 9) + 5392))
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_0();
  if ((*(v14 + 1952))() && (v15 = (*(*this + 1952))(this), OUTLINED_FUNCTION_229(v15)))
  {
    v20 = (*(*this + 1952))(this);
    CCLogStream::logNoticeIf(v20, 0x80uLL, "[dk] %s@%d: fw size %llu, nv size %llu, regSize %llu, txcapSize %llu\n", "allocChipImage", 5363, a2, a3, a4, a5);
    if (!a2)
    {
      return 0;
    }
  }

  else if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v16 = OUTLINED_FUNCTION_51_0(*(this + 9));
  v18 = *(v17 + 40);

  return v18(v16, a2, a3, a4, a5, a6, a7);
}