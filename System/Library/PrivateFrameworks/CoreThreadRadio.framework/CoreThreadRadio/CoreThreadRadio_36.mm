uint64_t ot::Mle::MleRouter::ProcessRouteTlv(ot::Mle::MleRouter *this, const ot::Mle::RouteTlv *a2, ot::Neighbor **a3)
{
  v16 = 0;
  Rloc16 = -2;
  if (a3[3])
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    if (ot::RouterTable::Contains(v3, a3[3]))
    {
      Rloc16 = ot::Neighbor::GetRloc16(a3[3]);
    }
  }

  RouterIdSequence = ot::Mle::RouteTlv::GetRouterIdSequence(a2);
  RouterIdMask = ot::Mle::RouteTlv::GetRouterIdMask(a2);
  ot::RouterTable::UpdateRouterIdSet((this + 30904), RouterIdSequence, RouterIdMask);
  if (ot::Mle::Mle::IsRouter(this) && !ot::RouterTable::IsAllocated((this + 30904), *(this + 35689)))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Error while processing Route TLV - Router ID: %d", v5, v6, v7, v8, v9, v10, *(this + 35689));
    ot::Mle::Mle::BecomeDetached(this);
    IgnoreError();
    v16 = 4;
  }

  if (Rloc16 != 65534)
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    a3[3] = ot::NeighborTable::FindNeighbor(v11, Rloc16, 1);
  }

  return v16;
}

uint64_t ot::Router::GetNextHop(ot::Router *this)
{
  return *(this + 140);
}

{
  return ot::Router::GetNextHop(this);
}

uint64_t ot::Neighbor::SetIdSeqNum(uint64_t this, char a2)
{
  *(this + 33) = a2;
  return this;
}

{
  return ot::Neighbor::SetIdSeqNum(this, a2);
}

uint64_t ot::Mle::RouteTlv::GetRouterIdSequence(ot::Mle::RouteTlv *this)
{
  return *(this + 2);
}

{
  return ot::Mle::RouteTlv::GetRouterIdSequence(this);
}

BOOL ot::RouterTable::Contains(ot::RouterTable *this, const ot::Neighbor *a2)
{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsInArrayBuffer(this + 8, a2);
}

{
  return ot::RouterTable::Contains(this, a2);
}

uint64_t ot::Mle::RouteTlv::GetRouterIdMask(ot::Mle::RouteTlv *this)
{
  return this + 3;
}

{
  return ot::Mle::RouteTlv::GetRouterIdMask(this);
}

uint64_t ot::Mle::MleRouter::ReadAndProcessRouteTlvOnFed(ot::Mle::MleRouter *this, ot::Mle::Mle::RxMessage **a2, unsigned __int8 a3)
{
  v10 = 0;
  if (ot::Mle::Mle::IsFullThreadDevice(this))
  {
    RouteTlv = ot::Mle::Mle::RxMessage::ReadRouteTlv(*a2, v13, v3, v4, v5, v6);
    if (RouteTlv)
    {
      if (RouteTlv != 23)
      {
        return 6;
      }
    }

    else
    {
      v10 = ot::Mle::MleRouter::ProcessRouteTlv(this, v13, a2);
      if (!v10)
      {
        ot::RouterTable::UpdateRoutesOnFed(this + 30904, v13, a3);
        *(this + 129) &= ~2u;
      }
    }
  }

  return v10;
}

BOOL ot::Mle::MleRouter::IsSingleton(ot::Mle::MleRouter *this)
{
  v3 = 1;
  if (ot::Mle::Mle::IsAttached(this) && (ot::Mle::MleRouter::IsRouterEligible(this) & 1) != 0)
  {
    return ot::RouterTable::GetActiveRouterCount((this + 30904)) <= 1;
  }

  return v3;
}

uint64_t ot::Mle::MleRouter::ComparePartitions(ot::Mle::MleRouter *this, ot::Mle::LeaderData *a2, const ot::Mle::LeaderData *a3, ot::Mle::LeaderData *a4, const ot::Mle::LeaderData *a5)
{
  v24 = this;
  v22 = a3;
  Weighting = ot::Mle::LeaderData::GetWeighting(a2);
  v5 = ot::Mle::LeaderData::GetWeighting(a4);
  v20 = ot::ThreeWayCompare<unsigned char>(Weighting, v5);
  if (!v20)
  {
    v20 = ot::ThreeWayCompare<BOOL>((v24 ^ 1) & 1, (v22 ^ 1) & 1);
    if (!v20)
    {
      PartitionId = ot::Mle::LeaderData::GetPartitionId(a2);
      v6 = ot::Mle::LeaderData::GetPartitionId(a4);
      v20 = ot::ThreeWayCompare<unsigned int>(PartitionId, v6);
    }
  }

  v15 = ot::Mle::LeaderData::GetWeighting(a2);
  v16 = ot::Mle::LeaderData::GetWeighting(a4);
  v17 = ot::Mle::LeaderData::GetPartitionId(a2);
  v7 = ot::Mle::LeaderData::GetPartitionId(a4);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "MleRouter::ComparePartitions rval:%d, weighting:[%u %u], !singleton:[%d %d], partId:[%u %u]", v8, v9, v10, v11, v12, v13, v20, v15, v16, (v24 ^ 1) & 1, (v22 ^ 1) & 1, v17, v7);
  return v20;
}

uint64_t ot::ThreeWayCompare<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  else if (a1 > a2)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

{
  return ot::ThreeWayCompare<unsigned int>(a1, a2);
}

uint64_t ot::Mle::MleRouter::HandleAdvertisement(ot::Mle::MleRouter *this, ot::Neighbor **a2, unsigned __int16 a3, const ot::Mle::LeaderData *a4)
{
  v117 = this;
  v116 = a2;
  v115 = a3;
  v114 = a4;
  v106 = this;
  *&v113[1] = 0;
  v107 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  AverageRss = ot::Message::GetAverageRss(*v116);
  *v113 = ot::Mac::Mac::ComputeLinkMargin(v107, AverageRss);
  v112 = 0;
  v111 = 0;
  if (ot::Mle::Mle::IsCslPeripheralAttaching(v106) || ot::Mle::Mle::IsCslPeripheralAttached(v106))
  {
    *&v113[1] = 2;
  }

  else
  {
    RouteTlv = ot::Mle::Mle::RxMessage::ReadRouteTlv(*v116, v118, v5, v6, v7, v8);
    if (RouteTlv)
    {
      if (RouteTlv != 23)
      {
        *&v113[1] = 6;
        goto LABEL_61;
      }

      ot::Tlv::SetLength(v118, 0);
    }

    PartitionId = ot::Mle::LeaderData::GetPartitionId(v114);
    if (PartitionId == ot::Mle::LeaderData::GetPartitionId((v106 + 184)))
    {
      LeaderRouterId = ot::Mle::LeaderData::GetLeaderRouterId(v114);
      if (LeaderRouterId == ot::Mle::Mle::GetLeaderId(v106))
      {
        if (ot::Mle::IsRouterRloc16(v115, v22) && ot::Mle::RouteTlv::IsValid(v118))
        {
          v111 = ot::Mle::RouterIdFromRloc16(v115);
          v83 = ot::Mle::Rloc16FromRouterId(v111);
          v80 = 0;
          DataVersion = ot::Mle::LeaderData::GetDataVersion(v114, 0);
          v81 = 1;
          v85 = ot::Mle::LeaderData::GetDataVersion(v114, 1);
          v86 = ot::Mle::LeaderData::GetDataVersion(v106 + 184, 0);
          v87 = ot::Mle::LeaderData::GetDataVersion(v106 + 184, 1);
          v82 = v118;
          RouterIdSequence = ot::Mle::RouteTlv::GetRouterIdSequence(v118);
          IsRouteTlvIdSequenceMoreRecent = ot::RouterTable::IsRouteTlvIdSequenceMoreRecent((v106 + 30904), v118);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "MLE Advertisement received from router (0x%04x), aleaderDataVersion:[full:%d stable:%d] myLeaderDataVer:[full:%d, stable:%d] ,routeTlvIdSeqNum(%d), isRouteTlvIdSeqNumMoreRecent(%d)", v31, v32, v33, v34, v35, v36, v83, DataVersion, v85, v86, v87, RouterIdSequence, IsRouteTlvIdSequenceMoreRecent);
          if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(v116) || !ot::RouterTable::IsRouteTlvIdSequenceMoreRecent((v106 + 30904), v118) || (*&v113[1] = ot::Mle::MleRouter::ProcessRouteTlv(v106, v118, v116)) == 0)
          {
            if (ot::Mle::Mle::IsChild(v106))
            {
              if (v116[3] == (v106 + 192))
              {
                v112 = (v106 + 192);
                if (ot::Neighbor::GetRloc16((v106 + 192)) != v115)
                {
                  Rloc16 = ot::Neighbor::GetRloc16((v106 + 192));
                  ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "RLOC16 of the parent mismatches parentRloc16:0x%x sourceAddr:0x%x", v38, v39, v40, v41, v42, v43, Rloc16, v115);
                  ot::Mle::Mle::BecomeDetached(v106);
                  IgnoreError();
                  *&v113[1] = 16;
                  goto LABEL_61;
                }

                if (!ot::Mle::MleRouter::RouterRoleTransition::IsPending((v106 + 35702)) && ot::RouterTable::GetActiveRouterCount((v106 + 30904)) < *(v106 + 35629))
                {
                  ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((v106 + 35702));
                }

                updated = ot::RouterTable::UpdateRoutesOnFed(v106 + 30904, v118, v111);
              }

              else
              {
                ot::RouterTable::FindRouterById((v106 + 30904), v111);
                v112 = v45;
                if (!v45)
                {
                  goto LABEL_61;
                }

                updated = ot::Neighbor::IsStateValid(v112);
                if ((updated & 1) == 0)
                {
                  updated = ot::Neighbor::IsStateLinkRequest(v112);
                  if ((updated & 1) == 0)
                  {
                    updated = ot::RouterTable::GetNeighborCount(v106 + 30904, 1u);
                    if (updated < *(v106 + 35704))
                    {
                      ot::Mle::Mle::InitNeighbor(v106, v112, v116);
                      ot::Neighbor::SetState(v112, 5);
                      ot::Mle::MleRouter::SendLinkRequest(v106, v112);
                      IgnoreError();
                      *&v113[1] = 4;
                      goto LABEL_61;
                    }
                  }
                }
              }

              v79 = v112;
              Now = ot::TimerMilli::GetNow(updated);
              ot::Neighbor::SetLastHeard(v112, Now);
              goto LABEL_61;
            }

            if (ot::Mle::Mle::IsRouter(v106) && (ot::Mle::MleRouter::ShouldDowngrade(v106, v111, v118) & 1) != 0)
            {
              ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((v106 + 35702));
            }

            ot::RouterTable::FindRouterById((v106 + 30904), v111);
            v112 = v46;
            if (v46)
            {
              v76 = v112;
              v47 = ot::Mle::LeaderData::GetDataVersion(v114, 0);
              ot::Neighbor::SetLeaderFullDataVersion(v112, v47);
              v77 = v112;
              v48 = ot::Mle::LeaderData::GetDataVersion(v114, 1);
              ot::Neighbor::SetLeaderStableDataVersion(v112, v48);
              v78 = v112;
              v49 = ot::Mle::RouteTlv::GetRouterIdSequence(v118);
              ot::Neighbor::SetIdSeqNum(v112, v49);
              if (!ot::Neighbor::IsStateValid(v112) && ot::Mle::Mle::RxInfo::IsNeighborStateValid(v116))
              {
                v50 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v106);
                if (ot::ChildTable::Contains(v50, v116[3]))
                {
                  v51 = ot::Mle::Rloc16FromRouterId(v111);
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Advertisement received from former child which is now a router (0x%04x),copy entries from child table to router table and update eid cache", v52, v53, v54, v55, v56, v57, v51);
                  memcpy(v112, v116[3], 0x8CuLL);
                  v72 = v112;
                  v58 = ot::Mle::Rloc16FromRouterId(v111);
                  ot::Neighbor::SetRloc16(v112, v58);
                  v73 = v112;
                  ot::Mle::DeviceMode::DeviceMode(&v109, 11);
                  ot::Neighbor::SetDeviceMode(v73, v109);
                  ot::NeighborTable::Signal((v106 + 344), 3u, v112);
                  v75 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(v106);
                  *v74 = ot::Neighbor::GetRloc16(v116[3]);
                  v59 = ot::Neighbor::GetRloc16(v112);
                  ot::AddressResolver::ReplaceEntriesForRloc16(v75, v74[0], v59);
                }
              }

              IsStateValid = ot::Neighbor::IsStateValid(v112);
              if (IsStateValid || (IsStateValid = ot::Neighbor::IsStateLinkRequest(v112)) || *(v106 + 35616) || v113[0] < 0xAu)
              {
                v71 = v112;
                v108 = ot::TimerMilli::GetNow(IsStateValid);
                ot::Neighbor::SetLastHeard(v71, v108);
                ot::RouterTable::UpdateRoutes((v106 + 30904), v118, v111);
              }

              else
              {
                ot::Mle::Mle::InitNeighbor(v106, v112, v116);
                ot::Neighbor::SetState(v112, 5);
                ot::Mle::MleRouter::SendLinkRequest(v106, v112);
                IgnoreError();
                v61 = ot::Mle::Rloc16FromRouterId(v111);
                ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Advertisement received from router (0x%04x) to which no link exists", v62, v63, v64, v65, v66, v67, v61);
                *&v113[1] = 4;
              }
            }
          }
        }
      }

      else if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v116) && !ot::Mle::Mle::IsChild(v106))
      {
        LeaderId = ot::Mle::Mle::GetLeaderId(v106);
        v23 = ot::Mle::LeaderData::GetLeaderRouterId(v114);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Leader ID mismatch leaderId=%d, leaderData.leaderRouterId=%d", v24, v25, v26, v27, v28, v29, LeaderId, v23);
        ot::Mle::Mle::BecomeDetached(v106);
        IgnoreError();
        *&v113[1] = 2;
      }
    }

    else
    {
      v9 = ot::Mle::LeaderData::GetPartitionId(v114);
      v93 = ot::ToUlong(v9);
      v10 = ot::Mle::LeaderData::GetPartitionId((v106 + 184));
      v94 = ot::ToUlong(v10);
      v95 = v113[0];
      *&v92[1] = v118;
      IsValid = ot::Mle::RouteTlv::IsValid(v118);
      v97 = *(v106 + 35701);
      v98 = ot::Mle::LeaderData::GetPartitionId(v114);
      v99 = *(v106 + 8924);
      v100 = ot::Mle::RouteTlv::GetRouterIdSequence(v118);
      v101 = *(v106 + 35700);
      IsSingleton = ot::Mle::RouteTlv::IsSingleton(v118);
      v11 = ot::Mle::MleRouter::IsSingleton(v106);
      v103 = &v70;
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Different partition (peer:%lu, local:%lu), linkMargin:%d, partitionMergeLinkMargin:%d, routeTlvIsValid:%d, mPrevPartIdTimeout:%d, leaderDataPartId:%d, prevPartId:%d, routerIdSeq:%d, prevPartRouterIdSeq:%d, routeTlvIsSingleton:%d isSingleTon:%d", v12, v13, v14, v15, v16, v17, v93, v94, v113[0], 10, IsValid, v97, v98, v99, v100, v101, IsSingleton, v11);
      if (v113[0] >= 0xAu)
      {
        if (ot::Mle::RouteTlv::IsValid(v118) && *(v106 + 35701) && (v18 = ot::Mle::LeaderData::GetPartitionId(v114), v18 == *(v106 + 8924)) && (v19 = ot::Mle::RouteTlv::GetRouterIdSequence(v118), !ot::SerialNumber::IsGreater<unsigned char>(v19, *(v106 + 35700))))
        {
          *&v113[1] = 2;
        }

        else if (!ot::Mle::Mle::IsChild(v106) || v116[3] != (v106 + 192))
        {
          v92[0] = ot::Mle::RouteTlv::IsSingleton(v118);
          *v91 = v114;
          v20 = ot::Mle::MleRouter::IsSingleton(v106);
          if (ot::Mle::MleRouter::ComparePartitions(v92[0], *v91, v20, (v106 + 184), v21) > 0)
          {
            ot::Mle::Mle::Attach(v106, 2);
          }

          *&v113[1] = 2;
        }
      }

      else
      {
        *&v113[1] = 34;
      }
    }
  }

LABEL_61:
  if (v116[3])
  {
    v68 = ot::Neighbor::GetRloc16(v116[3]);
    if (v68 != v115)
    {
      ot::Mle::MleRouter::RemoveNeighbor(v106, v116[3]);
    }
  }

  return *&v113[1];
}

BOOL ot::Mle::RouteTlv::IsSingleton(ot::Mle::RouteTlv *this)
{
  v3 = 0;
  if (ot::Mle::RouteTlv::IsValid(this))
  {
    return ot::Mle::RouterIdSet::GetNumberOfAllocatedIds((this + 3)) <= 1;
  }

  return v3;
}

{
  return ot::Mle::RouteTlv::IsSingleton(this);
}

uint64_t ot::Mle::MleRouter::ShouldDowngrade(ot::Mle::MleRouter *this, unsigned __int8 a2, const ot::Mle::RouteTlv *a3)
{
  v13 = 0;
  ActiveRouterCount = ot::RouterTable::GetActiveRouterCount((this + 30904));
  if (ot::Mle::Mle::IsRouter(this) && ot::RouterTable::IsAllocated((this + 30904), a2) && !ot::Mle::MleRouter::RouterRoleTransition::IsPending((this + 35702)) && ActiveRouterCount > *(this + 35630))
  {
    v10 = 0;
    ot::RouterTable::begin((this + 30904));
    v9 = v3;
    v8 = ot::RouterTable::end((this + 30904));
    while (v9 != v8)
    {
      if (ot::Neighbor::IsStateValid(v9) && ot::Router::GetTwoWayLinkQuality(v9) >= 2 && ++v10 >= 7u)
      {
        break;
      }

      v9 = (v9 + 144);
    }

    if (v10 >= 7u)
    {
      v11 = ActiveRouterCount - *(this + 35630);
      NumChildren = ot::ChildTable::GetNumChildren(this + 600, 0);
      if (NumChildren < 3 * v11 && (ot::Mle::MleRouter::NeighborHasComparableConnectivity(this, a3, a2) & 1) != 0)
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
        if (!ot::NetworkData::Notifier::IsEligibleForRouterRoleUpgradeAsBorderRouter(v5))
        {
          v13 = 1;
        }
      }
    }
  }

  return v13 & 1;
}

void ot::Mle::MleRouter::HandleParentRequest(ot::Mle::MleRouter *this, ot::Mle::Mle::RxInfo *a2)
{
  v148 = this;
  *&v147[7] = a2;
  v139 = this;
  *&v147[3] = 0;
  *&v147[1] = 0;
  v147[0] = 0;
  ot::Mle::RxChallenge::RxChallenge(v155);
  NewChild = 0;
  v144 = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(*(*&v147[7] + 8));
  ot::Mle::Mle::Log(1u, 0x1Bu, v2);
  if ((ot::Mle::MleRouter::IsRouterEligible(v139) & 1) == 0)
  {
    *&v147[3] = 13;
    v3 = ot::ErrorToString(13);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped as not router eligible error:%s", v4, v5, v6, v7, v8, v9, v3);
    goto LABEL_69;
  }

  IsRxOnWhenIdle = ot::Mle::Mle::IsRxOnWhenIdle(v139);
  ot::Ip6::MessageInfo::GetSockAddr(*(*&v147[7] + 8));
  if (IsRxOnWhenIdle != ot::Ip6::Address::IsMulticast(v10))
  {
    *&v147[3] = 13;
    goto LABEL_69;
  }

  if (ot::Mle::Mle::IsDetached(v139) || ot::Mle::Mle::IsAttaching(v139))
  {
    *&v147[3] = 2;
    IsDetached = ot::Mle::Mle::IsDetached(v139);
    IsAttaching = ot::Mle::Mle::IsAttaching(v139);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped as isDetached(%d) isAttaching(%d)", v12, v13, v14, v15, v16, v17, IsDetached, IsAttaching);
    goto LABEL_69;
  }

  if (ot::RouterTable::GetLeaderAge((v139 + 30904)) >= *(v139 + 35628))
  {
    *&v147[3] = 2;
    LeaderAge = ot::RouterTable::GetLeaderAge((v139 + 30904));
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped as routerTable.leaderAge(%d) nwIdTimeout(%d)", v19, v20, v21, v22, v23, v24, LeaderAge, *(v139 + 35628));
    goto LABEL_69;
  }

  PathCostToLeader = ot::RouterTable::GetPathCostToLeader((v139 + 30904));
  if (PathCostToLeader >= 16)
  {
    v26 = ot::RouterTable::GetPathCostToLeader((v139 + 30904));
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped here LinkCostToLeader:%d", v27, v28, v29, v30, v31, v32, v26);
    goto LABEL_69;
  }

  ot::Ip6::MessageInfo::GetPeerAddr(*(*&v147[7] + 8));
  Iid = ot::Ip6::Address::GetIid(v33);
  ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, __s1);
  VersionTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(**&v147[7], &v147[1]);
  *&v147[3] = VersionTlv;
  if (!VersionTlv)
  {
    *&v147[3] = ot::Tlv::Find<ot::Mle::ScanMaskTlv>(**&v147[7], v147);
    if (!*&v147[3])
    {
      v136 = *(v139 + 130);
      if (v136 > 1)
      {
        if (v136 == 2)
        {
          if (!ot::Mle::ScanMaskTlv::IsEndDeviceFlagSet(v147[0]))
          {
            goto LABEL_69;
          }

          if (ot::RouterTable::GetActiveRouterCount((v139 + 30904)) >= 32)
          {
            *&v147[3] = 2;
            goto LABEL_69;
          }
        }

        else if ((v136 == 4 || v136 == 3) && !ot::Mle::ScanMaskTlv::IsRouterFlagSet(v147[0]))
        {
          goto LABEL_69;
        }

        *&v147[3] = ot::Mle::Mle::RxMessage::ReadChallengeTlv(**&v147[7], v155, v36, v37);
        if (*&v147[3])
        {
          v39 = ot::ErrorToString(*&v147[3]);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped error:%s as ReadChallenge failed", v40, v41, v42, v43, v44, v45, v39);
        }

        else
        {
          ot::ChildTable::FindChild(v139 + 1200, __s1, 5);
          NewChild = v46;
          if (v46)
          {
            v134 = &Now;
            Now = ot::TimerMilli::GetNow(v46);
            LastHeard = ot::Neighbor::GetLastHeard(NewChild);
            if (ot::Time::operator-(&Now, &LastHeard) < 0x2BC)
            {
              *&v147[3] = 29;
              goto LABEL_69;
            }
          }

          else
          {
            NewChild = ot::ChildTable::GetNewChild((v139 + 1200));
            if (!NewChild)
            {
              *&v147[3] = 3;
              goto LABEL_69;
            }

            ot::Mle::Mle::InitNeighbor(v139, NewChild, *&v147[7]);
            ot::Neighbor::SetState(NewChild, 2);
            if (!ot::Mle::Mle::RxMessage::ReadModeTlv(**&v147[7], &v145))
            {
              v143[2] = v145;
              ot::Child::SetDeviceMode(NewChild, v145);
              ot::Neighbor::SetVersion(NewChild, *&v147[1]);
            }

            if (*(v139 + 128) == 2)
            {
              CslClockAccuracyTlv = ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(**&v147[7], v143, v47, v48, v49, v50);
              if (CslClockAccuracyTlv)
              {
                if (CslClockAccuracyTlv != 23)
                {
                  *&v147[3] = 6;
                  goto LABEL_69;
                }

                ot::Mac::CslAccuracy::Init(v143);
              }

              ot::InstanceLocator::GetInstance(v139);
              otPlatRadioStopWakeup();
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Stopping Wakeup after receiving parent request ", v51, v52, v53, v54, v55, v56);
              v57 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v139);
              ot::Mac::Mac::SetCslParentAccuracy(v57, v143);
            }
          }

          IsStateValidOrRestoring = ot::Neighbor::IsStateValidOrRestoring(NewChild);
          if (!IsStateValidOrRestoring)
          {
            v132 = NewChild;
            v140 = ot::TimerMilli::GetNow(IsStateValidOrRestoring);
            ot::Neighbor::SetLastHeard(v132, v140);
            v133 = NewChild;
            v59 = ot::Time::MsecToSec(0x1388);
            ot::Child::SetTimeout(v133, v59);
          }

          if (!ot::Mle::Mle::RxMessage::ReadModeTlv(**&v147[7], &v145))
          {
            if (ot::Mle::DeviceMode::IsRxOnWhenIdle(&v145) && (ot::Mle::Mle::wasChild(v139) & 1) == 0)
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Overriding Device Stat,set wasChild:[True]", v60, v61, v62, v63, v64, v65);
              ot::Mle::Mle::setWasChild(v139, 1);
            }

            if (!ot::Mle::Mle::IsSleepyRouter(v139) && *(v139 + 35681))
            {
              if (!memcmp(__s1, v139 + 35681, 8uLL))
              {
                if (ot::Mle::DeviceMode::IsRxOnWhenIdle(&v145))
                {
                  v126 = v152;
                  ot::Mle::DeviceMode::ToString((v139 + 131), v152);
                  v128 = ot::String<(unsigned short)45>::AsCString(v152);
                  v127 = v151;
                  ot::Mle::DeviceMode::ToString(&v145, v151);
                  v74 = ot::String<(unsigned short)45>::AsCString(v151);
                  ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request accepted from Non-Sleepy Accessories, DUT mode: %s, Joiner Mode: %s: %s", v75, v76, v77, v78, v79, v80, v128, v74, "Joining device mode is RxOnWhenIdle");
                  v81 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(v139);
                  ot::Notifier::Signal(v81, 0x1000000000);
                }

                else
                {
                  v129 = v154;
                  ot::Mle::DeviceMode::ToString((v139 + 131), v154);
                  v131 = ot::String<(unsigned short)45>::AsCString(v154);
                  v130 = v153;
                  ot::Mle::DeviceMode::ToString(&v145, v153);
                  v66 = ot::String<(unsigned short)45>::AsCString(v153);
                  ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request accepted from Sleepy Accessories, DUT mode: %s, Joiner Mode: %s: %s", v67, v68, v69, v70, v71, v72, v131, v66, "Joining device mode is not RxOnWhenIdle");
                  v73 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(v139);
                  ot::Notifier::Signal(v73, 0x800000000);
                }
              }

              else
              {
                v82 = __s1[0];
                v83 = __s1[1];
                v110 = __s1[2];
                v111 = __s1[3];
                v112 = __s1[4];
                v113 = __s1[5];
                v114 = __s1[6];
                v115 = __s1[7];
                v107 = 35681;
                v116 = *(v139 + 35681);
                v117 = *(v139 + 35682);
                v118 = *(v139 + 35683);
                v119 = *(v139 + 35684);
                v120 = *(v139 + 35685);
                v121 = *(v139 + 35686);
                v122 = *(v139 + 35687);
                v123 = *(v139 + 35688);
                v108 = v150;
                ot::Mle::DeviceMode::ToString(&v145, v150);
                v124 = ot::String<(unsigned short)45>::AsCString(v150);
                v109 = v149;
                ot::Mle::DeviceMode::ToString((v139 + 131), v149);
                v84 = ot::String<(unsigned short)45>::AsCString(v149);
                v125 = &v105;
                ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request from Device extaddr =  %02X%02X%02X%02X%02X%02X%02X%02X address mismatch, Expected Device extaddr = %02X%02X%02X%02X%02X%02X%02X%02X, Joiner Mode: %s,  DUT mode: %s", v115, v114, v113, v112, v111, v110, v82, v83, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v84);
              }

              ot::Mle::Mle::SetThreadCoexConfig(v139, 0, *(v139 + 130), *(v139 + 132));
            }
          }

          if (*(v139 + 128) == 2)
          {
            ot::WakeupTxScheduler::Stop((v139 + 72));
            v85 = v139;
            *(v139 + 128) = 3;
            v86 = ot::Mle::Mle::WorAttachStateToString(v85, *(v85 + 128));
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v87, v88, v89, v90, v91, v92, v86, "HandleParentRequest");
            ot::Mle::Mle::SetCslPeripheral(v139, NewChild);
            v106 = NewChild;
            v93 = ot::Time::MsecToSec(0x3E8);
            ot::Child::SetTimeout(v106, v93);
            if (!ot::Mle::Mle::IsRxOnWhenIdle(v139))
            {
              v94 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v139);
              ot::MeshForwarder::SetRxOnWhenIdle(v94, 0, v95, v96, v97, v98, v99, v100);
            }

            v101 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v139);
            ot::Mac::Mac::UpdateCsl(v101, 0);
          }

          v102 = v139;
          *(*&v147[7] + 32) = 2;
          ot::Mle::Mle::ProcessKeySequence(v102, *&v147[7]);
          ot::Ip6::MessageInfo::GetSockAddr(*(*&v147[7] + 8));
          if (ot::Ip6::Address::IsMulticast(v103))
          {
            if (ot::Mle::ScanMaskTlv::IsEndDeviceFlagSet(v147[0]))
            {
              v104 = 1000;
            }

            else
            {
              v104 = 500;
            }

            v144 = v104;
          }

          else
          {
            v144 = 0;
          }

          ot::Mle::MleRouter::SendParentResponse(v139, NewChild, v155, v144);
        }
      }
    }
  }

LABEL_69:
  ot::Mle::Mle::LogProcessError(0x1Bu, *&v147[3]);
}

uint64_t ot::Tlv::Find<ot::Mle::ScanMaskTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 0xEu, a2);
}

{
  return ot::Tlv::Find<ot::Mle::ScanMaskTlv>(a1, a2);
}

BOOL ot::Mle::ScanMaskTlv::IsEndDeviceFlagSet(ot::Mle::ScanMaskTlv *this)
{
  return (this & 0x40) != 0;
}

{
  return ot::Mle::ScanMaskTlv::IsEndDeviceFlagSet(this);
}

BOOL ot::Mle::ScanMaskTlv::IsRouterFlagSet(ot::Mle::ScanMaskTlv *this)
{
  return this < 0;
}

{
  return ot::Mle::ScanMaskTlv::IsRouterFlagSet(this);
}

uint64_t ot::Mle::Mle::SetCslPeripheral(uint64_t this, ot::Neighbor *a2)
{
  *(this + 824) = a2;
  return this;
}

{
  return ot::Mle::Mle::SetCslPeripheral(this, a2);
}

void ot::Mle::MleRouter::SendParentResponse(ot::Mle::MleRouter *this, ot::Child *a2, const ot::Mle::RxChallenge *a3, unsigned __int16 a4)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  appended = 0;
  v11 = ot::Mle::Mle::NewMleMessage(this, 10);
  if (v11)
  {
    ot::Message::SetDirectTransmission(v11);
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v11);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v11);
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendLinkAndMleFrameCounterTlvs(v11);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendResponseTlv(v11, v15);
          if (!appended)
          {
            ot::Message::SetSubType(v11, 13);
            if (!ot::Neighbor::IsThreadVersionCslCapable(v16) || (appended = ot::Mle::Mle::TxMessage::AppendCslClockAccuracyTlv(v11)) == 0)
            {
              ot::Child::GenerateChallenge(v16, v4, v5);
              Challenge = ot::Child::GetChallenge(v16);
              appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v11, Challenge);
              if (!appended)
              {
                if (ot::Mle::Mle::IsCslPeripheralPresent(this) || (LinkInfo = ot::Neighbor::GetLinkInfo(v16), LinkMargin = ot::LinkQualityInfo::GetLinkMargin(LinkInfo), (appended = ot::Mle::Mle::TxMessage::AppendLinkMarginTlv(v11, LinkMargin)) == 0) && (appended = ot::Mle::Mle::TxMessage::AppendConnectivityTlv(v11)) == 0)
                {
                  appended = ot::Mle::Mle::TxMessage::AppendVersionTlv(v11);
                  if (!appended)
                  {
                    ot::Neighbor::GetExtAddress(v16);
                    ot::Ip6::Address::SetToLinkLocalAddress(v12, v9);
                    appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v11, v12, v14);
                    if (!appended)
                    {
                      ot::Mle::Mle::Log(2u, 0xFu, v12);
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

  else
  {
    appended = 3;
  }

  if (appended && v11)
  {
    ot::Message::Free(v11);
  }

  ot::Mle::Mle::LogSendError(0xFu, appended);
}

uint64_t ot::Mle::MleRouter::SendChildUpdateRequest(ot::Mle::MleRouter *this, ot::Child *a2)
{
  v24 = this;
  v23 = a2;
  appended = 0;
  v20 = 0;
  if (!ot::Neighbor::IsRxOnWhenIdle(a2))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    ChildIndex = ot::ChildTable::GetChildIndex(v2, v23);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    SendQueue = ot::MeshForwarder::GetSendQueue(v3);
    v17 = ot::PriorityQueue::begin(SendQueue);
    v16 = ot::PriorityQueue::end(SendQueue);
    while (ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(&v17, &v16))
    {
      v15 = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(&v17);
      if (ot::Message::GetChildMask(v15, ChildIndex) && ot::Message::GetSubType(v15) == 8)
      {
        if (ot::Neighbor::IsStateRestoring(v23))
        {
          goto LABEL_24;
        }

        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
        ot::MeshForwarder::RemoveMessagesForChild(v4, v23, ot::Mle::MleRouter::IsMessageChildUpdateRequest);
        break;
      }

      ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(&v17);
    }
  }

  v20 = ot::Mle::Mle::NewMleMessage(this, 13);
  if (v20)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v20);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v20);
      if (!appended)
      {
        v13 = v20;
        NetworkDataType = ot::Neighbor::GetNetworkDataType(v23);
        appended = ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(v13, NetworkDataType);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v20);
          if (!appended)
          {
            if (ot::Neighbor::IsStateValid(v23))
            {
              goto LABEL_20;
            }

            appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(v20, ot::Mle::MleRouter::SendChildUpdateRequest(ot::Child &)::kTlvs);
            if (!appended)
            {
              if (!ot::Neighbor::IsStateRestored(v23))
              {
                ot::Child::GenerateChallenge(v23, v6, v7);
              }

              v12 = v20;
              Challenge = ot::Child::GetChallenge(v23);
              appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v12, Challenge);
              if (!appended)
              {
LABEL_20:
                ot::Neighbor::GetExtAddress(v23);
                ot::Ip6::Address::SetToLinkLocalAddress(&v21, v9);
                appended = ot::Mle::Mle::TxMessage::SendTo(v20, &v21);
                if (!appended)
                {
                  if (ot::Neighbor::IsRxOnWhenIdle(v23))
                  {
                    ot::Neighbor::SetState(v23, 6);
                  }

                  Rloc16 = ot::Neighbor::GetRloc16(v23);
                  ot::Mle::Mle::Log(0, 0x14u, &v21, Rloc16);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    appended = 3;
  }

LABEL_24:
  if (appended && v20)
  {
    ot::Message::Free(v20);
  }

  return appended;
}

uint64_t ot::Mle::MleRouter::HasNeighborWithGoodLinkQuality(ot::Mle::MleRouter *this)
{
  v13 = 1;
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  LinkInfo = ot::Neighbor::GetLinkInfo((this + 192));
  LastRss = ot::LinkQualityInfo::GetLastRss(LinkInfo);
  if (ot::Mac::Mac::ComputeLinkMargin(v9, LastRss) < 0xAu)
  {
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    ot::RouterTable::begin(v12);
    v11 = v3;
    v10 = ot::RouterTable::end(v12);
    while (v11 != v10)
    {
      if (ot::Neighbor::IsStateValid(v11))
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v4 = ot::Neighbor::GetLinkInfo(v11);
        v5 = ot::LinkQualityInfo::GetLastRss(v4);
        if (ot::Mac::Mac::ComputeLinkMargin(v7, v5) >= 0xAu)
        {
          return v13 & 1;
        }
      }

      v11 = (v11 + 144);
    }

    v13 = 0;
  }

  return v13 & 1;
}

void ot::Mle::MleRouter::HandleTimeTick(ot::Mle::MleRouter *this)
{
  v139 = this;
  v138 = 0;
  if (!ot::Mle::Mle::IsFullThreadDevice(this))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    ot::TimeTicker::UnregisterReceiver(v1, 1);
    return;
  }

  if (*(this + 35616))
  {
    --*(this + 35616);
  }

  if (*(this + 35701))
  {
    --*(this + 35701);
  }

  if (*(this + 35705))
  {
    if (!--*(this + 35705))
    {
      ot::Mle::MleRouter::ClearAlternateRloc16(this);
    }
  }

  v138 = ot::Mle::MleRouter::RouterRoleTransition::HandleTimeTick((this + 35702));
  v110 = *(this + 130);
  if (!*(this + 130))
  {
    __assert_rtn("HandleTimeTick", "mle_router.cpp", 2128, "false");
  }

  if (v110 == 1)
  {
    if (!*(this + 35616) && !*(this + 143))
    {
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
      return;
    }

LABEL_41:
    v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v136 = ot::ChildTable::Iterate(v28, 5);
    v137 = &v136;
    v147 = ot::ChildTable::IteratorBuilder::begin(&v136);
    v148 = v29;
    v134 = v147;
    v135 = v29;
    v145 = ot::ChildTable::IteratorBuilder::end(v137);
    v146 = v30;
    v132 = v145;
    v133 = v30;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v134, &v132))
    {
      v131 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v134);
      v130 = 0;
      v129 = 1;
      v128 = 1;
      State = ot::Neighbor::GetState(v131);
      switch(State)
      {
        case 0:
          goto LABEL_71;
        case 2:
        case 1:
          goto LABEL_53;
        case 3:
          goto LABEL_54;
      }

      if (State != 4)
      {
        if (State == 5)
        {
LABEL_54:
          __assert_rtn("HandleTimeTick", "mle_router.cpp", 2163, "false");
        }

        if (State == 7 || State == 6)
        {
LABEL_53:
          Timeout = ot::Child::GetTimeout(v131);
          v130 = ot::Time::SecToMsec(Timeout);
        }

        IsCslPeripheralPresent = ot::Mle::Mle::IsCslPeripheralPresent(this);
        if (IsCslPeripheralPresent)
        {
          v128 = 0;
          IsCslPeripheralPresent = ot::Child::GetSupervisionInterval(v131);
          v129 = IsCslPeripheralPresent == 0;
        }

        if (v128)
        {
          IsCslPeripheralPresent = ot::CslTxScheduler::ChildInfo::IsCslSynchronized((v131 + 168));
          if (IsCslPeripheralPresent)
          {
            Now = ot::TimerMilli::GetNow(IsCslPeripheralPresent);
            CslLastHeard = ot::CslTxScheduler::ChildInfo::GetCslLastHeard((v131 + 168));
            v108 = ot::Time::operator-(&Now, &CslLastHeard);
            CslTimeout = ot::CslTxScheduler::ChildInfo::GetCslTimeout((v131 + 168));
            v34 = ot::Time::SecToMsec(CslTimeout);
            IsCslPeripheralPresent = v108;
            if (v108 >= v34)
            {
              v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
              Counters = ot::Mac::Mac::GetCounters(v35);
              ++*(Counters + 88);
              Rloc16 = ot::Neighbor::GetRloc16(v131);
              ot::Neighbor::GetExtAddress(v131);
              ot::Mac::ExtAddress::ToString(v36, v144);
              v37 = ot::String<(unsigned short)17>::AsCString(v144);
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Child CSL synchronization expired RLOC16: 0x%04x ExtAddr: %s", v38, v39, v40, v41, v42, v43, Rloc16, v37);
              ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v131 + 168, 0);
              ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid(v131 + 168, 0);
              v44 = ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(this);
              ot::CslTxScheduler::Update(v44);
            }

            else
            {
              v129 = 0;
            }
          }
        }

        v106 = 0;
        if (v129)
        {
          v124 = ot::TimerMilli::GetNow(IsCslPeripheralPresent);
          LastHeard = ot::Neighbor::GetLastHeard(v131);
          v45 = ot::Time::operator-(&v124, &LastHeard);
          v106 = v45 >= v130;
        }

        if (v106)
        {
          v102 = ot::Neighbor::GetRloc16(v131);
          ot::Neighbor::GetExtAddress(v131);
          ot::Mac::ExtAddress::ToString(v46, v143);
          v103 = ot::String<(unsigned short)17>::AsCString(v143);
          v104 = ot::Neighbor::GetState(v131);
          LinkFailures = ot::Neighbor::GetLinkFailures(v131);
          v122 = ot::Neighbor::GetLastHeard(v131);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Child timeout expired, RLOC16: 0x%04x, ExtAddr: %s State:%d LinkFailureCount:%d LastHeard:%d", v47, v48, v49, v50, v51, v52, v102, v103, v104, LinkFailures, v122);
          ot::Mle::MleRouter::RemoveNeighbor(this, v131);
          ot::Mle::Mle::IncrementChildLossCounter(this);
          v53 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          IsSleepyRouter = ot::Mle::Mle::IsSleepyRouter(v53);
          if (IsSleepyRouter)
          {
            v121 = ot::TimerMilli::GetNow(IsSleepyRouter);
            v120 = ot::Neighbor::GetLastHeard(v131);
            v55 = ot::Time::operator-(&v121, &v120);
            ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Child timeout expired, mCslPeripheralAttachRetryTimer.Start Timeout=%d mSec", v56, v57, v58, v59, v60, v61, v55);
            v62 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
            ot::TimerMicro::Start((v62 + 8), 0x3E8u);
          }
        }

        else if (ot::Mle::Mle::IsRouterOrLeader(this) && ot::Neighbor::IsStateRestored(v131))
        {
          ot::Mle::MleRouter::SendChildUpdateRequest(this, v131);
          IgnoreError();
        }
      }

LABEL_71:
      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v134);
    }

    v119 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    ot::RouterTable::begin(v119);
    v118 = v63;
    v117 = ot::RouterTable::end(v119);
    while (1)
    {
      if (v118 == v117)
      {
        ot::RouterTable::HandleTimeTick((this + 30904));
        ot::Mle::MleRouter::SynchronizeChildNetworkData(this);
        return;
      }

      v116 = v118;
      v115 = 0;
      v101 = ot::Neighbor::GetRloc16(v118);
      if (v101 == ot::Mle::Mle::GetRloc16(this))
      {
        v100 = v116;
        v114 = ot::TimerMilli::GetNow(v101);
        ot::Neighbor::SetLastHeard(v100, v114);
        goto LABEL_89;
      }

      v113 = ot::TimerMilli::GetNow(v101);
      v112 = ot::Neighbor::GetLastHeard(v116);
      v115 = ot::Time::operator-(&v113, &v112);
      if (ot::Neighbor::IsStateValid(v116) && v115 >= 0x186A0)
      {
        if (v115 >= 0x19258)
        {
          v98 = ot::Neighbor::GetRloc16(v116);
          ot::Neighbor::GetExtAddress(v116);
          ot::Mac::ExtAddress::ToString(v72, v141);
          v73 = ot::String<(unsigned short)17>::AsCString(v141);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Router timeout expired, RLOC16: 0x%04x, ExtAddr: %s", v74, v75, v76, v77, v78, v79, v98, v73);
          ot::Mle::Mle::IncrementRouterLossCounter(this);
          ot::Mle::MleRouter::RemoveNeighbor(this, v116);
          goto LABEL_89;
        }

        v99 = ot::Neighbor::GetRloc16(v116);
        ot::Neighbor::GetExtAddress(v116);
        ot::Mac::ExtAddress::ToString(v64, v142);
        v65 = ot::String<(unsigned short)17>::AsCString(v142);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "No Adv from router - sending Link Request, RLOC16: 0x%04x, ExtAddr: %s", v66, v67, v68, v69, v70, v71, v99, v65);
        ot::Mle::MleRouter::SendLinkRequest(this, v116);
        IgnoreError();
      }

      if (ot::Neighbor::IsStateLinkRequest(v116) && v115 >= 0x7D0)
      {
        v97 = ot::Neighbor::GetRloc16(v116);
        ot::Neighbor::GetExtAddress(v116);
        ot::Mac::ExtAddress::ToString(v80, v140);
        v81 = ot::String<(unsigned short)17>::AsCString(v140);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Router RLOC16: 0x%04x extAddr:%s - Link Request timeout expired", v82, v83, v84, v85, v86, v87, v97, v81);
        ot::Mle::Mle::IncrementRouterLossCounter(this);
        ot::Mle::MleRouter::RemoveNeighbor(this, v116);
      }

      else if (ot::Mle::Mle::IsLeader(this))
      {
        ot::RouterTable::FindNextHopOf((this + 30904), v116);
        if (!v88 && ot::RouterTable::GetLinkCost((this + 30904), v116) >= 16 && v115 >= 0x15F90)
        {
          v89 = ot::Neighbor::GetRloc16(v116);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Router 0x%04x ID timeout expired (no route)", v90, v91, v92, v93, v94, v95, v89);
          RouterId = ot::Neighbor::GetRouterId(v116);
          ot::RouterTable::Release((this + 30904), RouterId);
          IgnoreError();
        }
      }

LABEL_89:
      v118 = (v118 + 144);
    }
  }

  if (v110 != 2)
  {
    if (v110 != 3)
    {
      if (v110 != 4)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

LABEL_28:
    if (!(ot::RouterTable::GetLeaderAge((this + 30904)) % 0xA))
    {
      LeaderAge = ot::RouterTable::GetLeaderAge((this + 30904));
      v3 = ot::ToUlong(LeaderAge);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Leader age %lu", v4, v5, v6, v7, v8, v9, v3);
    }

    if (ot::RouterTable::GetActiveRouterCount((this + 30904)) > 0 && ot::RouterTable::GetLeaderAge((this + 30904)) >= *(this + 35628))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Leader age timeout", v10, v11, v12, v13, v14, v15);
      ot::Mle::Mle::Attach(this, 1);
    }

    if (v138 && ot::RouterTable::GetActiveRouterCount((this + 30904)) > *(this + 35630))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Downgrade to REED", v16, v17, v18, v19, v20, v21);
      ot::Mle::Mle::Attach(this, 3);
    }

LABEL_36:
    if (v138 && (ot::Mle::MleRouter::IsRouterEligible(this) & 1) == 0)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "No longer router eligible", v22, v23, v24, v25, v26, v27);
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }

    goto LABEL_41;
  }

  if (!v138)
  {
    goto LABEL_28;
  }

  if (ot::RouterTable::GetActiveRouterCount((this + 30904)) < *(this + 35629) && (ot::Mle::MleRouter::HasNeighborWithGoodLinkQuality(this) & 1) != 0)
  {
    ot::Mle::MleRouter::BecomeRouter(this, 2u);
    IgnoreError();
  }

  else
  {
    ot::Mle::Mle::InformPreviousChannel(this);
  }

  if (!ot::TrickleTimer::IsRunning((this + 1136)))
  {
    ot::Mle::MleRouter::SendAdvertisement(this);
    ot::TrickleTimer::Start(this + 1136, 1, 0x8B290u, 0x99CF0u, 0xFFFF);
  }
}

BOOL ot::Mle::MleRouter::RouterRoleTransition::HandleTimeTick(ot::Mle::MleRouter::RouterRoleTransition *this)
{
  v2 = 0;
  if (*this)
  {
    return --*this == 0;
  }

  return v2;
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslLastHeard(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 3);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslLastHeard(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslTimeout(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 1);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslTimeout(this);
}

uint64_t ot::Mle::Mle::IncrementChildLossCounter(uint64_t this)
{
  ++*(this + 784);
  return this;
}

{
  return ot::Mle::Mle::IncrementChildLossCounter(this);
}

BOOL ot::Neighbor::IsStateRestored(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 1;
}

{
  return ot::Neighbor::IsStateRestored(this);
}

uint64_t ot::Mle::Mle::IncrementRouterLossCounter(uint64_t this)
{
  ++*(this + 786);
  return this;
}

{
  return ot::Mle::Mle::IncrementRouterLossCounter(this);
}

void ot::RouterTable::FindNextHopOf(ot::RouterTable *this, const ot::Router *a2)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::FindNextHopOf(v2, a2);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::FindNextHopOf(this, a2);
}

uint64_t ot::Mle::MleRouter::SynchronizeChildNetworkData(ot::Mle::MleRouter *this)
{
  v16 = this;
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v14 = ot::ChildTable::Iterate(v2, 0);
    v15 = &v14;
    v19 = ot::ChildTable::IteratorBuilder::begin(&v14);
    v20 = v3;
    v12 = v19;
    v13 = v3;
    v17 = ot::ChildTable::IteratorBuilder::end(v15);
    v18 = v4;
    v10 = v17;
    v11 = v4;
    while (1)
    {
      result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v12, &v10);
      if ((result & 1) == 0)
      {
        break;
      }

      v9 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v12);
      if (!ot::Neighbor::IsRxOnWhenIdle(v9))
      {
        NetworkDataVersion = ot::Child::GetNetworkDataVersion(v9);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        NetworkDataType = ot::Neighbor::GetNetworkDataType(v9);
        if (NetworkDataVersion != ot::NetworkData::Leader::GetVersion(v6, NetworkDataType))
        {
          result = ot::Mle::MleRouter::SendChildUpdateRequest(this, v9);
          if (result)
          {
            break;
          }
        }
      }

      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v12);
    }
  }

  return result;
}

uint64_t ot::Utils::FifoHistogram<unsigned char,(short)24>::GetCount()
{
  return 24;
}

{
  return ot::Utils::FifoHistogram<unsigned char,(short)24>::GetCount();
}

void ot::Utils::FifoHistogram<unsigned char,(short)24>::GetData()
{
  ;
}

{
  ot::Utils::FifoHistogram<unsigned char,(short)24>::GetData();
}

void *ot::Utils::FifoHistogram<unsigned char,(short)24>::Clear(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::Utils::FifoHistogram<unsigned char,(short)24>::Clear(result);
}

uint64_t ot::Mle::MleRouter::HandleConnectedNeighbourTimer(ot::Mle::MleRouter *this)
{
  if (ot::Mle::Mle::IsFullThreadDevice(this))
  {
    NeighborCount = ot::RouterTable::GetNeighborCount(this + 30904, 1u);
    ot::Utils::FifoHistogram<unsigned char,(short)24>::Update(this + 35633, NeighborCount);
    NumChildren = ot::ChildTable::GetNumChildren(this + 600, 0);
    ot::Utils::FifoHistogram<unsigned char,(short)24>::Update(this + 35657, NumChildren);
  }

  v3 = ot::Time::SecToMsec(0xE10);
  return ot::TimerMilli::Start((this + 35760), v3);
}

__n128 ot::Utils::FifoHistogram<unsigned char,(short)24>::Update(uint64_t a1, char a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 22);
  *(a1 + 1) = *a1;
  *(a1 + 17) = v3;
  *(a1 + 21) = v4;
  *(a1 + 23) = v5;
  *a1 = a2;
  return result;
}

BOOL ot::Neighbor::IsThreadVersionCslCapable(ot::Neighbor *this)
{
  LOBYTE(v3) = 0;
  if (ot::Neighbor::IsThreadVersion1p2OrHigher(this))
  {
    return !ot::Neighbor::IsRxOnWhenIdle(this);
  }

  return v3;
}

{
  return ot::Neighbor::IsThreadVersionCslCapable(this);
}

uint64_t ot::Child::GetChallenge(ot::Child *this)
{
  return this + 450;
}

{
  return ot::Child::GetChallenge(this);
}

uint64_t ot::Mle::MleRouter::ProcessAddressRegistrationTlv(ot::Mle::MleRouter *this, ot::Tlv **a2, ot::Child *a3)
{
  v81 = this;
  v80 = a2;
  v79 = a3;
  TlvValueOffsetRange = 0;
  v76 = 0;
  v75 = 0;
  ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::Array(v73);
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(*v80, 0x13, &v77, v3);
  if (TlvValueOffsetRange)
  {
    return TlvValueOffsetRange;
  }

  ot::Child::GetDomainUnicastAddress(v79, v74);
  if (v4)
  {
    ot::Clearable<ot::Ip6::Address>::Clear(v74);
  }

  if (ot::Child::HasAnyMlrRegisteredAddress(v79))
  {
    if (!ot::Neighbor::IsStateValid(v79))
    {
      __assert_rtn("ProcessAddressRegistrationTlv", "mle_router.cpp", 2495, "aChild.IsStateValid()");
    }

    Ip6Addresses = ot::Child::GetIp6Addresses(v79);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v71 = v5;
    v70 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v71 != v70)
    {
      *&v69[1] = v71;
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v71) && ot::Child::Ip6AddrEntry::GetMlrState(*&v69[1], v79) == 2)
      {
        ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(v73, *&v69[1]);
        IgnoreError();
      }

      v71 = (v71 + 16);
    }
  }

  ot::Child::ClearIp6Addresses(v79);
  while (!ot::OffsetRange::IsEmpty(&v77))
  {
    v69[0] = 0;
    TlvValueOffsetRange = ot::Message::Read<unsigned char>(*v80, &v77, v69);
    if (TlvValueOffsetRange)
    {
      return TlvValueOffsetRange;
    }

    ot::OffsetRange::AdvanceOffset(&v77, 1u);
    ++v76;
    ot::Clearable<ot::Ip6::Address>::Clear(v68);
    if (!ot::Mle::AddressRegistrationTlv::IsEntryCompressed(v69[0]))
    {
      ot::Message::Read<ot::Ip6::Address>(*v80, &v77, v68);
      IgnoreError();
      ot::OffsetRange::AdvanceOffset(&v77, 0x10u);
      goto LABEL_21;
    }

    ContextId = ot::Mle::AddressRegistrationTlv::GetContextId(v69[0]);
    v57 = *v80;
    Iid = ot::Ip6::Address::GetIid(v68);
    ot::Message::Read<ot::Ip6::InterfaceIdentifier>(v57, &v77, Iid);
    IgnoreError();
    ot::OffsetRange::AdvanceOffset(&v77, 8u);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::Leader::GetContext(v7, ContextId, v66))
    {
      v56 = ContextId;
      Rloc16 = ot::Neighbor::GetRloc16(v79);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Failed to get context %u for compressed address from child 0x%04x", v9, v10, v11, v12, v13, v14, v56, Rloc16);
    }

    else
    {
      ot::Ip6::Address::SetPrefix(v68, v66);
LABEL_21:
      ot::Child::AddIp6Address(v79, v68);
      TlvValueOffsetRange = v15;
      if (v15)
      {
        v52 = ot::ErrorToString(TlvValueOffsetRange);
        ot::Ip6::Address::ToString(v86, v68);
        v53 = ot::String<(unsigned short)40>::AsCString(v86);
        v23 = ot::Neighbor::GetRloc16(v79);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Error %s adding IPv6 address %s to child 0x%04x", v24, v25, v26, v27, v28, v29, v52, v53, v23);
      }

      else
      {
        ++v75;
        v54 = ot::Neighbor::GetRloc16(v79);
        v55 = v75;
        ot::Ip6::Address::ToString(v87, v68);
        v16 = ot::String<(unsigned short)40>::AsCString(v87);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Child 0x%04x IPv6 address[%u]=%s", v17, v18, v19, v20, v21, v22, v54, v55, v16);
      }

      if (!ot::Ip6::Address::IsMulticast(v68))
      {
        v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        v64 = ot::ChildTable::Iterate(v30, 1);
        v65 = &v64;
        v84 = ot::ChildTable::IteratorBuilder::begin(&v64);
        v85 = v31;
        v62 = v84;
        v63 = v31;
        v82 = ot::ChildTable::IteratorBuilder::end(v65);
        v83 = v32;
        v60 = v82;
        v61 = v32;
        while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v62, &v60))
        {
          v59 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v62);
          if (v59 != v79)
          {
            ot::Child::RemoveIp6Address(v59, v68);
            IgnoreError();
          }

          ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v62);
        }

        v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
        ot::AddressResolver::RemoveEntryForAddress(v33, v68);
      }
    }
  }

  ot::Mle::MleRouter::SignalDuaAddressEvent(this, v79, v74);
  v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(this);
  ot::MlrManager::UpdateProxiedSubscriptions(v34, v79, v73);
  if (v76)
  {
    v42 = ot::Neighbor::GetRloc16(v79);
    v49 = "";
    if (v76 == 1)
    {
      v50 = "";
    }

    else
    {
      v50 = "es";
    }

    if (v75 != 1)
    {
      v49 = "es";
    }

    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Child 0x%04x has %u registered IPv6 address%s, %u address%s stored", v43, v44, v45, v46, v47, v48, v42, v76, v50, v75, v49);
  }

  else
  {
    v35 = ot::Neighbor::GetRloc16(v79);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Child 0x%04x has no registered IPv6 address", v36, v37, v38, v39, v40, v41, v35);
  }

  return 0;
}

uint64_t ot::Child::HasAnyMlrRegisteredAddress(ot::Child *this)
{
  return ot::BitVector<(unsigned short)15>::HasAny(this + 447);
}

{
  return ot::Child::HasAnyMlrRegisteredAddress(this);
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(uint64_t a1, _OWORD *a2)
{
  if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(a1))
  {
    return 3;
  }

  else
  {
    v2 = (*(a1 + 240))++;
    *(a1 + 16 * v2) = *a2;
    return 0;
  }
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(a1, a2);
}

BOOL ot::Mle::AddressRegistrationTlv::IsEntryCompressed(ot::Mle::AddressRegistrationTlv *this)
{
  return this < 0;
}

{
  return ot::Mle::AddressRegistrationTlv::IsEntryCompressed(this);
}

uint64_t ot::Mle::AddressRegistrationTlv::GetContextId(ot::Mle::AddressRegistrationTlv *this)
{
  return this & 0xF;
}

{
  return ot::Mle::AddressRegistrationTlv::GetContextId(this);
}

uint64_t ot::Message::Read<ot::Ip6::InterfaceIdentifier>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 8u);
}

{
  return ot::Message::Read<ot::Ip6::InterfaceIdentifier>(a1, a2, a3);
}

uint64_t ot::Mle::MleRouter::SignalDuaAddressEvent(ot::Mle::MleRouter *this, const ot::Child *a2, const ot::Ip6::Address *a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 3;
  ot::Child::GetDomainUnicastAddress(a2, v7);
  if (v3)
  {
    result = ot::Ip6::Address::IsUnspecified(v9);
    if (result)
    {
      return result;
    }

    v8 = 2;
  }

  else if (ot::Ip6::Address::IsUnspecified(v9))
  {
    v8 = 0;
  }

  else if (ot::Unequatable<ot::Ip6::Address>::operator!=(v9, v7))
  {
    v8 = 1;
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
  return ot::DuaManager::HandleChildDuaAddressEvent(v5, v10, v8);
}

uint64_t ot::Mle::MleRouter::IsMessageMleSubType(ot::Mle::MleRouter *this, const ot::Message *a2)
{
  v4 = 0;
  SubType = ot::Message::GetSubType(this);
  if (SubType == 6 || (SubType - 8) <= 2)
  {
    v4 = 1;
  }

  return v4 & 1;
}

void ot::Mle::MleRouter::HandleChildIdRequest(ot::Mle::MleRouter *this, ot::Tlv **a2)
{
  v56 = ot::Mle::MleRouter::IsMessageMleSubType;
  v72 = this;
  v71 = a2;
  v57 = this;
  VersionTlv = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  ot::Mle::Mle::TlvList::TlvList(v74);
  v63 = 0;
  v62 = 0;
  v61 = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(v71[1]);
  ot::Mle::Mle::Log(1u, 2u, v2);
  if (ot::Mle::Mle::IsCslPeripheralAttaching(v57))
  {
    v3 = ot::ToUlong(*(v71 + 4));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Received Parent Request FC: %lu", v4, v5, v6, v7, v8, v9, v3);
  }

  if ((ot::Mle::MleRouter::IsRouterEligible(v57) & 1) == 0)
  {
    VersionTlv = 13;
    goto LABEL_52;
  }

  if (!ot::Mle::Mle::IsAttached(v57))
  {
    VersionTlv = 13;
    goto LABEL_52;
  }

  ot::Ip6::MessageInfo::GetPeerAddr(v71[1]);
  Iid = ot::Ip6::Address::GetIid(v10);
  v55 = v75;
  ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v75);
  ot::ChildTable::FindChild(v57 + 1200, v55, 5);
  v63 = v12;
  if (!v12)
  {
    VersionTlv = 24;
    goto LABEL_52;
  }

  VersionTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(*v71, &v69);
  if (!VersionTlv)
  {
    v54 = *v71;
    Challenge = ot::Child::GetChallenge(v63);
    VersionTlv = ot::Mle::Mle::RxMessage::ReadAndMatchResponseTlvWith(v54, Challenge);
    if (!VersionTlv)
    {
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v57);
      ot::MeshForwarder::RemoveMessagesForChild(v14, v63, v56);
      VersionTlv = ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(*v71, &v68, &v67);
      if (!VersionTlv)
      {
        ot::Ip6::MessageInfo::GetPeerAddr(v71[1]);
        v53 = v73;
        ot::Ip6::Address::ToString(v73, v15);
        v16 = ot::String<(unsigned short)40>::AsCString(v53);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v17, v18, v19, v20, v21, v22, "HandleChildIdRequest", v16, v68, v67);
        VersionTlv = ot::Mle::Mle::RxMessage::ReadModeTlv(*v71, &v66);
        if (!VersionTlv)
        {
          VersionTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(*v71, &v65);
          if (!VersionTlv)
          {
            VersionTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v71, v74, v23, v24);
            if (!VersionTlv)
            {
              v52 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(*v71, &v61);
              if (v52)
              {
                if (v52 != 23)
                {
                  VersionTlv = 6;
                  goto LABEL_52;
                }

                if (v69 > 4u)
                {
                  v25 = 0;
                }

                else
                {
                  v25 = 129;
                }

                v61 = v25;
              }

              else
              {
                ot::Mle::Mle::TlvList::Add(v74, 0x1Bu);
              }

              v51 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v71, v64);
              if (v51)
              {
                if (v51 != 23)
                {
                  VersionTlv = 6;
                  goto LABEL_52;
                }
              }

              else
              {
                active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(v57);
                Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
                if (ot::MeshCoP::Timestamp::operator==(v64, Timestamp, v28))
                {
                  goto LABEL_28;
                }
              }

              ot::Mle::Mle::TlvList::Add(v74, 0x18u);
LABEL_28:
              v50 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(*v71, v64);
              if (v50)
              {
                if (v50 != 23)
                {
                  VersionTlv = 6;
                  goto LABEL_52;
                }
              }

              else
              {
                v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(v57);
                v30 = ot::MeshCoP::DatasetManager::GetTimestamp(v29);
                if (ot::MeshCoP::Timestamp::operator==(v64, v30, v31))
                {
                  goto LABEL_33;
                }
              }

              ot::Mle::Mle::TlvList::Add(v74, 0x19u);
LABEL_33:
              if (ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetLength(v74) <= 6)
              {
                if (ot::Mle::DeviceMode::IsFullThreadDevice(&v66) || (VersionTlv = ot::Mle::MleRouter::ProcessAddressRegistrationTlv(v57, v71, v63)) == 0)
                {
                  ot::RouterTable::FindRouter((v57 + 30904), v75);
                  v62 = v32;
                  if (v32)
                  {
                    ot::Mle::MleRouter::RemoveNeighbor(v57, v62);
                  }

                  if (ot::Neighbor::IsStateValid(v63))
                  {
                    ot::Mle::MleRouter::RemoveNeighbor(v57, v63);
                  }

                  else
                  {
                    v33 = ot::Neighbor::SetState(v63, 4);
                  }

                  v45 = v63;
                  Now = ot::TimerMilli::GetNow(v33);
                  ot::Neighbor::SetLastHeard(v45, Now);
                  LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(v63);
                  ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v68);
                  ot::Neighbor::SetLinkAckFrameCounter(v63, v68);
                  ot::Neighbor::SetMleFrameCounter(v63, v67);
                  ot::Neighbor::SetKeySequence(v63, *(v71 + 5));
                  v47 = &v66;
                  v59 = v66;
                  ot::Child::SetDeviceMode(v63, v66);
                  ot::Neighbor::SetVersion(v63, v69);
                  LinkInfo = ot::Neighbor::GetLinkInfo(v63);
                  AverageRss = ot::Message::GetAverageRss(*v71);
                  ot::LinkQualityInfo::AddRss(LinkInfo, AverageRss);
                  ot::Child::SetTimeout(v63, v65);
                  ot::Child::SetSupervisionInterval(v63, v61);
                  v49 = v63;
                  v48 = v57 + 184;
                  NetworkDataType = ot::Mle::DeviceMode::GetNetworkDataType(v47);
                  DataVersion = ot::Mle::LeaderData::GetDataVersion(v48, NetworkDataType);
                  ot::Child::SetNetworkDataVersion(v49, DataVersion);
                  ot::Child::ClearRequestTlvs(v63);
                  for (i = 0; ; ++i)
                  {
                    v44 = i;
                    Length = ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetLength(v74);
                    if (v44 >= Length)
                    {
                      break;
                    }

                    v43 = v63;
                    *v42 = i;
                    v39 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::operator[](v74, i);
                    ot::Child::SetRequestTlv(v43, v42[0], *v39);
                  }

                  v40 = v57;
                  *(v71 + 32) = 1;
                  ot::Mle::Mle::ProcessKeySequence(v40, v71);
                  v41 = *(v57 + 130);
                  if (v41 <= 1)
                  {
                    __assert_rtn("HandleChildIdRequest", "mle_router.cpp", 2922, "false");
                  }

                  if (v41 == 2)
                  {
                    ot::Neighbor::SetState(v63, 4);
                    ot::Mle::MleRouter::BecomeRouter(v57, 3u);
                    IgnoreError();
                  }

                  else if (v41 == 4 || v41 == 3)
                  {
                    VersionTlv = ot::Mle::MleRouter::SendChildIdResponse(v57, v63);
                  }
                }
              }

              else
              {
                VersionTlv = 6;
              }
            }
          }
        }
      }
    }
  }

LABEL_52:
  ot::Mle::Mle::LogProcessError(2u, VersionTlv);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x1Bu, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(a1, a2);
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 32);
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetLength(a1);
}

uint64_t ot::Child::SetSupervisionInterval(uint64_t this, __int16 a2)
{
  *(this + 458) = a2;
  return this;
}

{
  return ot::Child::SetSupervisionInterval(this, a2);
}

uint64_t ot::Child::SetNetworkDataVersion(uint64_t this, char a2)
{
  *(this + 449) = a2;
  return this;
}

{
  return ot::Child::SetNetworkDataVersion(this, a2);
}

uint64_t ot::Child::ClearRequestTlvs(uint64_t this)
{
  *(this + 450) = -1;
  *(this + 454) = -1;
  return this;
}

{
  return ot::Child::ClearRequestTlvs(this);
}

uint64_t ot::Child::SetRequestTlv(uint64_t this, unsigned __int8 a2, char a3)
{
  *(this + 450 + a2) = a3;
  return this;
}

{
  return ot::Child::SetRequestTlv(this, a2, a3);
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::operator[](uint64_t a1, unsigned __int8 a2)
{
  return a1 + a2;
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::operator[](a1, a2);
}

uint64_t ot::Mle::MleRouter::SendChildIdResponse(ot::Mle::MleRouter *this, ot::Child *a2)
{
  v22 = this;
  v21 = a2;
  appended = 0;
  v18 = ot::Mle::Mle::NewMleMessage(this, 12);
  if (v18)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v18);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v18);
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v18);
        if (!appended)
        {
          if (!ot::Neighbor::GetRloc16(v21) || (Rloc16 = ot::Neighbor::GetRloc16(v21), !ot::Mle::Mle::HasMatchingRouterIdWith(this, Rloc16, v3)))
          {
            do
            {
              if (++*(this + 17813) > 0x1FFu)
              {
                *(this + 17813) = 1;
              }

              v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
              v17 = ot::Mac::Mac::GetShortAddress(v4) | *(this + 17813);
              ot::ChildTable::FindChild(this + 1200, v17, 5);
            }

            while (v5);
            ot::Neighbor::SetRloc16(v21, v17);
          }

          v6 = ot::Neighbor::GetRloc16(v21);
          appended = ot::Mle::Mle::TxMessage::AppendAddress16Tlv(v18, v6);
          if (!appended)
          {
            for (i = 0; i < 6u; ++i)
            {
              RequestTlv = ot::Child::GetRequestTlv(v21, i);
              switch(RequestTlv)
              {
                case 9:
                  appended = ot::Mle::Mle::TxMessage::AppendRouteTlv(v18, 0);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
                case 12:
                  NetworkDataType = ot::Neighbor::GetNetworkDataType(v21);
                  appended = ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(v18, NetworkDataType);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
                case 24:
                  appended = ot::Mle::Mle::TxMessage::AppendActiveDatasetTlv(v18);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
                case 25:
                  appended = ot::Mle::Mle::TxMessage::AppendPendingDatasetTlv(v18);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
                case 27:
                  SupervisionInterval = ot::Child::GetSupervisionInterval(v21);
                  appended = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v18, SupervisionInterval);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
              }
            }

            if (ot::Neighbor::IsFullThreadDevice(v21) || (appended = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v18, v21)) == 0)
            {
              ot::Mle::MleRouter::SetChildStateToValid(this, v21);
              if (!ot::Neighbor::IsRxOnWhenIdle(v21))
              {
                v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(this);
                ot::IndirectSender::SetChildUseShortAddress(v9, v21, 0);
              }

              if (ot::Mle::Mle::IsCslPeripheralPresent(this))
              {
                v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
                ot::Mac::Mac::UpdateCsl(v10, 0);
              }

              ot::Neighbor::GetExtAddress(v21);
              ot::Ip6::Address::SetToLinkLocalAddress(&v19, v11);
              appended = ot::Mle::Mle::TxMessage::SendTo(v18, &v19);
              if (!appended)
              {
                v12 = ot::Neighbor::GetRloc16(v21);
                ot::Mle::Mle::Log(0, 4u, &v19, v12);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    appended = 3;
  }

LABEL_39:
  if (appended && v18)
  {
    ot::Message::Free(v18);
  }

  return appended;
}

void ot::Mle::MleRouter::HandleChildUpdateRequest(ot::Mle::MleRouter *this, ot::Tlv **a2)
{
  v66 = this;
  v65 = a2;
  v48 = this;
  ModeTlv = 0;
  ot::Mle::RxChallenge::RxChallenge(v70);
  v61 = 0;
  v60 = 0;
  v59 = 0;
  ot::Mle::Mle::TlvList::TlvList(v69);
  ot::Mle::Mle::TlvList::TlvList(v68);
  v57 = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(v65[1]);
  ot::Mle::Mle::Log(1u, 0x14u, v2);
  ModeTlv = ot::Mle::Mle::RxMessage::ReadModeTlv(*v65, &v63);
  if (!ModeTlv)
  {
    ChallengeTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v65, v70, v3, v4);
    if (ChallengeTlv)
    {
      if (ChallengeTlv != 23)
      {
        ModeTlv = 6;
        goto LABEL_54;
      }

      ot::Mle::RxChallenge::Clear(v70);
    }

    else
    {
      ot::Mle::Mle::TlvList::Add(v68, 4u);
    }

    ot::Mle::Mle::TlvList::Add(v68, 0);
    ot::Ip6::MessageInfo::GetPeerAddr(v65[1]);
    Iid = ot::Ip6::Address::GetIid(v5);
    v46 = v71;
    ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v71);
    ot::ChildTable::FindChild(v48 + 1200, v71, 5);
    v59 = v7;
    if (v7)
    {
      if (ot::Neighbor::IsStateValid(v59))
      {
        DeviceMode = ot::Neighbor::GetDeviceMode(v59);
        v58 = DeviceMode;
        v55[3] = v63;
        ot::Child::SetDeviceMode(v59, v63);
        v44 = v68;
        ot::Mle::Mle::TlvList::Add(v68, 1u);
        ot::Mle::Mle::TlvList::Add(v68, 0xBu);
        if (!ot::Mle::RxChallenge::IsEmpty(v70))
        {
          v43 = v68;
          ot::Mle::Mle::TlvList::Add(v68, 8u);
          ot::Mle::Mle::TlvList::Add(v68, 5u);
        }

        v42 = ot::Mle::MleRouter::ProcessAddressRegistrationTlv(v48, v65, v59);
        if (v42)
        {
          if (v42 != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }
        }

        else
        {
          ot::Mle::Mle::TlvList::Add(v68, 0x13u);
        }

        LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v65, v62, v8, v9, v10, v11);
        if (LeaderDataTlv)
        {
          if (LeaderDataTlv != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }
        }

        else
        {
          v40 = v59;
          NetworkDataType = ot::Neighbor::GetNetworkDataType(v59);
          DataVersion = ot::Mle::LeaderData::GetDataVersion(v62, NetworkDataType);
          ot::Child::SetNetworkDataVersion(v59, DataVersion);
        }

        v39 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(*v65, &v61);
        if (v39)
        {
          if (v39 != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }
        }

        else
        {
          Timeout = ot::Child::GetTimeout(v59);
          if (Timeout != v61)
          {
            ot::Child::SetTimeout(v59, v61);
            v57 = 1;
          }

          ot::Mle::Mle::TlvList::Add(v68, 2u);
        }

        v38 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(*v65, &v60);
        if (v38)
        {
          if (v38 != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }

          if (ot::Neighbor::GetVersion(v59) > 4)
          {
            v15 = 0;
          }

          else
          {
            v15 = 129;
          }

          v60 = v15;
        }

        else
        {
          ot::Mle::Mle::TlvList::Add(v68, 0x1Bu);
        }

        ot::Child::SetSupervisionInterval(v59, v60);
        TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v65, v69, v16, v17);
        if (TlvRequestTlv)
        {
          if (TlvRequestTlv != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }
        }

        else
        {
          ot::Mle::Mle::TlvList::AddElementsFrom(v68, v69);
        }

        IsCslSynchronized = ot::CslTxScheduler::ChildInfo::IsCslSynchronized((v59 + 168));
        if (IsCslSynchronized)
        {
          v54 = 0;
          v36 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(*v65, &v54);
          if (v36)
          {
            if (v36 != 23)
            {
              ModeTlv = 0;
              goto LABEL_54;
            }
          }

          else
          {
            ot::CslTxScheduler::ChildInfo::SetCslTimeout(v59 + 168, v54);
            ot::Mle::Mle::TlvList::Add(v68, 0x56u);
          }

          IsCslSynchronized = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(*v65, v55);
          if (!IsCslSynchronized)
          {
            v35 = (v59 + 168);
            Channel = ot::Mle::ChannelTlvValue::GetChannel(v55, v19);
            IsCslSynchronized = ot::CslTxScheduler::ChildInfo::SetCslChannel(v35, Channel);
          }
        }

        v34 = v59;
        Now = ot::TimerMilli::GetNow(IsCslSynchronized);
        ot::Neighbor::SetLastHeard(v34, Now);
        v52 = ot::Neighbor::GetDeviceMode(v59);
        if (ot::Unequatable<ot::Mle::DeviceMode>::operator!=(&v58, &v52))
        {
          Rloc16 = ot::Neighbor::GetRloc16(v59);
          v32 = ot::Mle::DeviceMode::Get(&v58);
          v51 = ot::Neighbor::GetDeviceMode(v59);
          v33 = ot::Mle::DeviceMode::Get(&v51);
          v50 = ot::Neighbor::GetDeviceMode(v59);
          v30 = v67;
          ot::Mle::DeviceMode::ToString(&v50, v67);
          v21 = ot::String<(unsigned short)45>::AsCString(v67);
          ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Child 0x%04x mode change 0x%02x -> 0x%02x [%s]", v22, v23, v24, v25, v26, v27, Rloc16, v32, v33, v21);
          v57 = 1;
          if (ot::Neighbor::IsRxOnWhenIdle(v59))
          {
            v29 = 0;
            ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v59 + 168, 0);
            ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid(v59 + 168, v29 & 1);
          }

          v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(v48);
          v49 = v58;
          ot::IndirectSender::HandleChildModeChange(v28, v59, v58);
        }

        if (v57)
        {
          ot::ChildTable::StoreChild((v48 + 1200), v59);
          IgnoreError();
        }

        ot::Mle::MleRouter::SendChildUpdateResponse(v48, v59, v65[1], v68, v70);
        *(v65 + 32) = 2;
      }
    }

    else if (ot::Mle::DeviceMode::IsRxOnWhenIdle(&v63))
    {
      v45 = v68;
      ot::Mle::Mle::TlvList::Add(v68, 0x11u);
      ot::Mle::MleRouter::SendChildUpdateResponse(v48, 0, v65[1], v68, v70);
    }
  }

LABEL_54:
  ot::Mle::Mle::LogProcessError(0x14u, ModeTlv);
}

void ot::Mle::MleRouter::SendChildUpdateResponse(ot::Mle::MleRouter *this, ot::Child *a2, const ot::Ip6::MessageInfo *a3, const ot::Mle::Mle::TlvList *a4, const ot::Mle::RxChallenge *a5)
{
  v18 = ot::Mle::Mle::NewMleMessage(this, 14);
  if (v18)
  {
    ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
    v17 = v5;
    v16 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a4);
    while (v17 != v16)
    {
      v15 = *v17;
      v13 = *v17;
      if (*v17)
      {
        switch(v13)
        {
          case 4:
            appended = ot::Mle::Mle::TxMessage::AppendResponseTlv(v18, a5);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 5:
            appended = ot::Mle::Mle::TxMessage::AppendLinkFrameCounterTlv(v18);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 8:
            appended = ot::Mle::Mle::TxMessage::AppendMleFrameCounterTlv(v18);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 11:
            appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v18);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 17:
            appended = ot::Mle::Mle::TxMessage::AppendStatusTlv(v18, 1u);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
        }
      }

      else
      {
        appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v18);
        if (appended)
        {
          goto LABEL_48;
        }
      }

      if (a2)
      {
        switch(v15)
        {
          case 1u:
            DeviceMode = ot::Neighbor::GetDeviceMode(a2);
            appended = ot::Mle::Mle::TxMessage::AppendModeTlv(v18, DeviceMode);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 2u:
            Timeout = ot::Child::GetTimeout(a2);
            appended = ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v18, Timeout);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 0xCu:
            NetworkDataType = ot::Neighbor::GetNetworkDataType(a2);
            appended = ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(v18, NetworkDataType);
            if (appended)
            {
              goto LABEL_48;
            }

            appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v18);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 0x13u:
            appended = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v18, a2);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 0x1Bu:
            SupervisionInterval = ot::Child::GetSupervisionInterval(a2);
            appended = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v18, SupervisionInterval);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          default:
            if (v15 == 86 && !ot::Neighbor::IsRxOnWhenIdle(a2))
            {
              appended = ot::Mle::Mle::TxMessage::AppendCslClockAccuracyTlv(v18);
              if (appended)
              {
                goto LABEL_48;
              }
            }

            break;
        }
      }

      ++v17;
    }

    ot::Ip6::MessageInfo::GetPeerAddr(a3);
    appended = ot::Mle::Mle::TxMessage::SendTo(v18, v9);
    if (!appended)
    {
      ot::Ip6::MessageInfo::GetPeerAddr(a3);
      if (a2)
      {
        v12 = v10;
        Rloc16 = ot::Neighbor::GetRloc16(a2);
        ot::Mle::Mle::Log(0, 0x15u, v12, Rloc16);
      }

      else
      {
        ot::Mle::Mle::Log(0, 0x15u, v10);
      }
    }
  }

  else
  {
    appended = 3;
  }

LABEL_48:
  if (appended)
  {
    if (v18)
    {
      ot::Message::Free(v18);
    }
  }
}

BOOL ot::Neighbor::GetNetworkDataType(ot::Neighbor *this)
{
  v3 = this;
  DeviceMode = ot::Neighbor::GetDeviceMode(this);
  return ot::Mle::DeviceMode::GetNetworkDataType(&DeviceMode);
}

{
  return ot::Neighbor::GetNetworkDataType(this);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 0x55u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x50, a2, 3);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(a1, a2);
}

void ot::Mle::MleRouter::HandleChildUpdateResponse(ot::Mle::MleRouter *this, ot::Tlv **a2)
{
  v55 = this;
  v54 = a2;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  ot::Mle::RxChallenge::RxChallenge(v57);
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v46 = 0;
  if (v54[3] && (v2 = ot::Neighbor::GetRloc16(v54[3]), !ot::Mle::IsRouterRloc16(v2, v3)) && (v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this), ot::ChildTable::Contains(v4, v54[3])))
  {
    v46 = v54[3];
    ResponseTlv = ot::Mle::Mle::RxMessage::ReadResponseTlv(*v54, v57, v5, v6);
    if (ResponseTlv)
    {
      if (ResponseTlv != 23)
      {
        v53 = 0;
        goto LABEL_52;
      }

      if (!ot::Neighbor::IsStateValid(v46))
      {
        v53 = 8;
        goto LABEL_52;
      }

      ot::Mle::RxChallenge::Clear(v57);
    }

    else
    {
      Challenge = ot::Child::GetChallenge(v46);
      if (!ot::Mle::RxChallenge::operator==(v57, Challenge))
      {
        v53 = 8;
        goto LABEL_52;
      }
    }

    ot::Ip6::MessageInfo::GetPeerAddr(v54[1]);
    v40 = v9;
    Rloc16 = ot::Neighbor::GetRloc16(v46);
    ot::Mle::Mle::Log(1u, 0x15u, v40, Rloc16);
    v41 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v54, &v52);
    if (v41)
    {
      if (v41 != 23)
      {
        v53 = 6;
        goto LABEL_52;
      }
    }

    else
    {
      v11 = ot::Neighbor::GetRloc16(v46);
      if (v11 != v52)
      {
        ot::Mle::MleRouter::RemoveNeighbor(this, v46);
        goto LABEL_52;
      }
    }

    v39 = ot::Tlv::Find<ot::Mle::StatusTlv>(*v54, &v50);
    if (v39)
    {
      if (v39 != 23)
      {
        v53 = 6;
        goto LABEL_52;
      }
    }

    else if (v50 == 1)
    {
      ot::Mle::MleRouter::RemoveNeighbor(this, v46);
      goto LABEL_52;
    }

    v38 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(*v54, &v49);
    if (v38)
    {
      if (v38 != 23)
      {
        v53 = 6;
        goto LABEL_52;
      }
    }

    else
    {
      LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(v46);
      ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v49);
      ot::Neighbor::SetLinkAckFrameCounter(v46, v49);
    }

    v37 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(*v54, &v48);
    if (v37)
    {
      if (v37 != 23)
      {
        v53 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      ot::Neighbor::SetMleFrameCounter(v46, v48);
    }

    ot::Ip6::MessageInfo::GetPeerAddr(v54[1]);
    ot::Ip6::Address::ToString(v56, v13);
    v14 = ot::String<(unsigned short)40>::AsCString(v56);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v15, v16, v17, v18, v19, v20, "HandleChildUpdateResponse", v14, v49, v48);
    v36 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(*v54, &v51);
    if (v36)
    {
      if (v36 != 23)
      {
        v53 = 6;
        goto LABEL_52;
      }
    }

    else
    {
      ot::Child::SetTimeout(v46, v51);
    }

    v45 = 0;
    v35 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(*v54, &v45);
    if (v35)
    {
      if (v35 != 23)
      {
        v53 = 6;
        goto LABEL_52;
      }
    }

    else
    {
      ot::Child::SetSupervisionInterval(v46, v45);
    }

    v34 = ot::Mle::MleRouter::ProcessAddressRegistrationTlv(this, v54, v46);
    if (v34 && v34 != 23)
    {
      v53 = 6;
    }

    else
    {
      LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v54, v47, v21, v22, v23, v24);
      if (LeaderDataTlv)
      {
        if (LeaderDataTlv != 23)
        {
          v53 = 6;
          goto LABEL_52;
        }
      }

      else
      {
        v33 = v46;
        NetworkDataType = ot::Neighbor::GetNetworkDataType(v46);
        DataVersion = ot::Mle::LeaderData::GetDataVersion(v47, NetworkDataType);
        ot::Child::SetNetworkDataVersion(v33, DataVersion);
      }

      ot::Mle::MleRouter::SetChildStateToValid(this, v46);
      v31 = v46;
      Now = ot::TimerMilli::GetNow(v28);
      ot::Neighbor::SetLastHeard(v31, Now);
      ot::Neighbor::SetKeySequence(v46, *(v54 + 5));
      LinkInfo = ot::Neighbor::GetLinkInfo(v46);
      AverageRss = ot::Message::GetAverageRss(*v54);
      ot::LinkQualityInfo::AddRss(LinkInfo, AverageRss);
      if (ot::Mle::RxChallenge::IsEmpty(v57))
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      *(v54 + 32) = v30;
    }
  }

  else
  {
    ot::Ip6::MessageInfo::GetPeerAddr(v54[1]);
    ot::Mle::Mle::Log(1u, 0x16u, v7);
    v53 = 23;
  }

LABEL_52:
  ot::Mle::Mle::LogProcessError(0x15u, v53);
}

void ot::Mle::MleRouter::SetChildStateToValid(ot::Mle::MleRouter *this, ot::Child *a2)
{
  v7 = this;
  v6 = a2;
  if (!ot::Neighbor::IsStateValid(a2))
  {
    ot::Neighbor::SetState(v6, 7);
    ot::ChildTable::StoreChild((this + 1200), v6);
    IgnoreError();
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(this);
    v3 = v6;
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::Array(v5);
    ot::MlrManager::UpdateProxiedSubscriptions(v2, v3, v5);
    ot::NeighborTable::Signal((this + 344), 0, v6);
  }
}

void ot::Mle::MleRouter::HandleDataRequest(ot::Mle::MleRouter *this, ot::Mle::Mle::RxInfo *a2)
{
  v18 = this;
  v17 = a2;
  TlvRequestTlv = 0;
  ot::Mle::Mle::TlvList::TlvList(v19);
  ot::Ip6::MessageInfo::GetPeerAddr(*(v17 + 1));
  ot::Mle::Mle::Log(1u, 7u, v2);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v17))
  {
    TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v17, v19, v3, v4);
    if (TlvRequestTlv)
    {
      goto LABEL_15;
    }

    v13 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v17, v15);
    if (v13)
    {
      if (v13 != 23)
      {
        TlvRequestTlv = 6;
        goto LABEL_15;
      }
    }

    else
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
      if (ot::MeshCoP::Timestamp::operator==(v15, Timestamp, v7))
      {
        goto LABEL_9;
      }
    }

    ot::Mle::Mle::TlvList::Add(v19, 0x18u);
LABEL_9:
    v12 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(*v17, v15);
    if (v12)
    {
      if (v12 != 23)
      {
        TlvRequestTlv = 6;
        goto LABEL_15;
      }
    }

    else
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      v9 = ot::MeshCoP::DatasetManager::GetTimestamp(v8);
      if (ot::MeshCoP::Timestamp::operator==(v15, v9, v10))
      {
LABEL_14:
        *(v17 + 32) = 2;
        ot::Mle::Mle::ProcessKeySequence(this, v17);
        ot::Ip6::MessageInfo::GetPeerAddr(*(v17 + 1));
        ot::Mle::MleRouter::SendDataResponse(this, v11, v19, 0, *v17);
        goto LABEL_15;
      }
    }

    ot::Mle::Mle::TlvList::Add(v19, 0x19u);
    goto LABEL_14;
  }

  TlvRequestTlv = 8;
LABEL_15:
  ot::Mle::Mle::LogProcessError(7u, TlvRequestTlv);
}

void ot::Mle::MleRouter::SendDataResponse(ot::Mle::MleRouter *this, const ot::Ip6::Address *a2, const ot::Mle::Mle::TlvList *a3, unsigned __int16 a4, const ot::Message *a5)
{
  v37 = this;
  v36 = a2;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v25 = this;
  appended = 0;
  v31 = 0;
  Neighbor = 0;
  if (ot::Mle::Mle::IsSleepyRouter(this))
  {
    v24 = v38;
    ot::Ip6::Address::ToString(v38, v36);
    v11 = ot::String<(unsigned short)40>::AsCString(v38);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "ThreadConnection: Supress sending Data Responses, dst: %s", v12, v13, v14, v15, v16, v17, v11);
  }

  else if (*(v25 + 129))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Suppressing Data Response - waiting for new network data", v5, v6, v7, v8, v9, v10);
  }

  else
  {
    v31 = ot::Mle::Mle::NewMleMessage(v25, 8);
    if (v31)
    {
      appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v31);
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v31);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v31);
          if (!appended)
          {
            v29 = v35;
            ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
            v28 = v18;
            v27 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(v35);
            while (v28 != v27)
            {
              v26 = *v28;
              v23 = v26;
              if (v26 == 9)
              {
                appended = ot::Mle::Mle::TxMessage::AppendRouteTlv(v31, 0);
                if (appended)
                {
                  goto LABEL_40;
                }
              }

              else
              {
                switch(v23)
                {
                  case 12:
                    Neighbor = ot::NeighborTable::FindNeighbor((v25 + 344), v36, 1);
                    v22 = v31;
                    if (Neighbor)
                    {
                      NetworkDataType = ot::Neighbor::GetNetworkDataType(Neighbor);
                    }

                    else
                    {
                      NetworkDataType = 0;
                    }

                    appended = ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(v22, NetworkDataType);
                    if (appended)
                    {
                      goto LABEL_40;
                    }

                    break;
                  case 24:
                    appended = ot::Mle::Mle::TxMessage::AppendActiveDatasetTlv(v31);
                    if (appended)
                    {
                      goto LABEL_40;
                    }

                    break;
                  case 25:
                    appended = ot::Mle::Mle::TxMessage::AppendPendingDatasetTlv(v31);
                    if (appended)
                    {
                      goto LABEL_40;
                    }

                    break;
                  case 89:
                    if (!v33)
                    {
                      __assert_rtn("SendDataResponse", "mle_router.cpp", 3932, "aRequestMessage != nullptr");
                    }

                    Neighbor = ot::NeighborTable::FindNeighbor((v25 + 344), v36, 1);
                    if (!Neighbor)
                    {
                      appended = 13;
                      goto LABEL_40;
                    }

                    v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(v25);
                    appended = ot::LinkMetrics::Subject::AppendReport(v19, v31, v33, Neighbor);
                    if (appended)
                    {
                      goto LABEL_40;
                    }

                    break;
                }
              }

              ++v28;
            }

            if (v34)
            {
              v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v25);
              ot::MeshForwarder::RemoveDataResponseMessages(v20);
              ot::Mle::Mle::RemoveDelayedDataResponseMessage(v25);
              appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v31, v36, v34);
              if (!appended)
              {
                ot::Mle::Mle::Log(2u, 8u, v36);
              }
            }

            else
            {
              appended = ot::Mle::Mle::TxMessage::SendTo(v31, v36);
              if (!appended)
              {
                ot::Mle::Mle::Log(0, 8u, v36);
              }
            }
          }
        }
      }
    }

    else
    {
      appended = 3;
    }
  }

LABEL_40:
  if (appended && v31)
  {
    ot::Message::Free(v31);
  }

  ot::Mle::Mle::LogSendError(8u, appended);
}

uint64_t ot::Mle::MleRouter::HandleNetworkDataUpdateRouter(ot::Mle::MleRouter *this)
{
  v5 = this;
  ot::Mle::Mle::TlvList::TlvList(v6);
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    ot::Ip6::Address::SetToLinkLocalAllNodesMulticast(v4);
    ot::Mle::Mle::TlvList::Add(v6, 0xCu);
    if (ot::Mle::Mle::IsLeader(this))
    {
      Uint16InRange = 0;
    }

    else
    {
      Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0x1F4u);
    }

    ot::Mle::MleRouter::SendDataResponse(this, v4, v6, Uint16InRange, 0);
    return ot::Mle::MleRouter::SynchronizeChildNetworkData(this);
  }

  return result;
}

uint64_t ot::Child::GetNetworkDataVersion(ot::Child *this)
{
  return *(this + 449);
}

{
  return ot::Child::GetNetworkDataVersion(this);
}

void ot::Mle::MleRouter::HandleDiscoveryRequest(ot::Mle::MleRouter *this, ot::Ip6::MessageInfo **a2)
{
  v23 = this;
  v22 = a2;
  TlvValueOffsetRange = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1u, 9u, v2);
  ot::Tlv::SetLength(v19, 0);
  if (ot::Mle::MleRouter::IsRouterEligible(this))
  {
    if (ot::Mle::Mle::IsRxOnWhenIdle(this))
    {
      TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(*v22, 0x1A, &v18, v3);
      if (!TlvValueOffsetRange)
      {
        while (!ot::OffsetRange::IsEmpty(&v18))
        {
          TlvValueOffsetRange = ot::Tlv::ParsedInfo::ParseFrom(v20, *v22, &v18);
          if (TlvValueOffsetRange)
          {
            goto LABEL_26;
          }

          if ((v20[1] & 1) == 0)
          {
            if (v20[0] == 2)
            {
              v15 = *v22;
              Offset = ot::OffsetRange::GetOffset(&v18);
              TlvValueOffsetRange = ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(v15, Offset, v26);
              if (TlvValueOffsetRange)
              {
                goto LABEL_26;
              }

              v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(this);
              ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(v5);
              if (!ot::Unequatable<ot::MeshCoP::ExtendedPanId>::operator!=(v6, v26))
              {
                TlvValueOffsetRange = 2;
                goto LABEL_26;
              }
            }

            else if (v20[0] == 128)
            {
              TlvValueOffsetRange = ot::Message::Read<ot::MeshCoP::DiscoveryRequestTlv>(*v22, &v18, v19);
              if (TlvValueOffsetRange)
              {
                goto LABEL_26;
              }

              if (!ot::MeshCoP::DiscoveryRequestTlv::IsValid(v19))
              {
                TlvValueOffsetRange = 6;
                goto LABEL_26;
              }
            }
          }

          Size = ot::Tlv::ParsedInfo::GetSize(v20);
          ot::OffsetRange::AdvanceOffset(&v18, Size);
        }

        if (!ot::MeshCoP::DiscoveryRequestTlv::IsValid(v19))
        {
          goto LABEL_25;
        }

        if (ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::IsSet(this + 4468))
        {
          ot::Ip6::MessageInfo::GetPeerAddr(v22[1]);
          Iid = ot::Ip6::Address::GetIid(v8);
          ot::AsCoreType<otExtAddress>(v24);
          ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v9);
          Version = ot::MeshCoP::DiscoveryRequestTlv::GetVersion(v19);
          v25 = v25 & 0xF0 | Version & 0xF;
          IsJoiner = ot::MeshCoP::DiscoveryRequestTlv::IsJoiner(v19);
          v25 = v25 & 0xEF | (16 * IsJoiner);
          v17 = v24;
          ot::Callback<void (*)(otThreadDiscoveryRequestInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otThreadDiscoveryRequestInfo*>(this + 35744, &v17);
        }

        if (ot::MeshCoP::DiscoveryRequestTlv::IsJoiner(v19) && (v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this), (ot::NetworkData::Leader::IsJoiningAllowed(v12) & 1) == 0))
        {
          TlvValueOffsetRange = 8;
        }

        else
        {
LABEL_25:
          ot::Ip6::MessageInfo::GetPeerAddr(v22[1]);
          TlvValueOffsetRange = ot::Mle::MleRouter::SendDiscoveryResponse(this, v13, *v22);
        }
      }
    }

    else
    {
      TlvValueOffsetRange = 13;
    }
  }

  else
  {
    TlvValueOffsetRange = 13;
  }

LABEL_26:
  ot::Mle::Mle::LogProcessError(9u, TlvValueOffsetRange);
}

uint64_t ot::Message::Read<ot::MeshCoP::DiscoveryRequestTlv>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::MeshCoP::DiscoveryRequestTlv>(a1, a2, a3);
}

BOOL ot::MeshCoP::DiscoveryRequestTlv::IsValid(ot::MeshCoP::DiscoveryRequestTlv *this)
{
  return ot::Tlv::GetLength(this) >= 2uLL;
}

{
  return ot::MeshCoP::DiscoveryRequestTlv::IsValid(this);
}

BOOL ot::Unequatable<ot::MeshCoP::ExtendedPanId>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::MeshCoP::ExtendedPanId>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::MeshCoP::ExtendedPanId>::operator!=(a1, a2);
}

BOOL ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::IsSet(a1);
}

uint64_t ot::MeshCoP::DiscoveryRequestTlv::GetVersion(ot::MeshCoP::DiscoveryRequestTlv *this)
{
  return *(this + 2) >> 4;
}

{
  return ot::MeshCoP::DiscoveryRequestTlv::GetVersion(this);
}

BOOL ot::MeshCoP::DiscoveryRequestTlv::IsJoiner(ot::MeshCoP::DiscoveryRequestTlv *this)
{
  return (*(this + 2) & 8) != 0;
}

{
  return ot::MeshCoP::DiscoveryRequestTlv::IsJoiner(this);
}

uint64_t ot::Callback<void (*)(otThreadDiscoveryRequestInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otThreadDiscoveryRequestInfo*>(uint64_t a1, void *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otThreadDiscoveryRequestInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otThreadDiscoveryRequestInfo*>(a1, a2);
}

uint64_t ot::Mle::MleRouter::SendDiscoveryResponse(ot::Mle::MleRouter *this, const ot::Ip6::Address *a2, const ot::Message *a3)
{
  v33 = this;
  v32 = a2;
  v31 = a3;
  appended = 0;
  Length = 0;
  v29 = ot::Mle::Mle::NewMleMessage(this, 17);
  if (v29)
  {
    ot::Message::SetDirectTransmission(v29);
    PanId = ot::Message::GetPanId(v31);
    ot::Message::SetPanId(v29, PanId);
    ot::Mle::Tlv::SetType(v27, 26);
    appended = ot::Message::Append<ot::Mle::Tlv>(v29, v27);
    if (!appended)
    {
      Length = ot::Message::GetLength(v29);
      ot::MeshCoP::DiscoveryResponseTlv::Init(v26);
      ot::MeshCoP::DiscoveryResponseTlv::SetVersion(v26, 4);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      if ((*(ot::KeyManager::GetSecurityPolicy(v4) + 2) & 2) != 0)
      {
        v23 = v29;
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
        UdpPort = ot::MeshCoP::BorderAgent::GetUdpPort(v5);
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(v23, UdpPort);
        if (appended)
        {
          goto LABEL_17;
        }

        ot::MeshCoP::DiscoveryResponseTlv::SetNativeCommissioner(v26, 1);
      }

      else
      {
        ot::MeshCoP::DiscoveryResponseTlv::SetNativeCommissioner(v26, 0);
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      if ((*(ot::KeyManager::GetSecurityPolicy(v7) + 2) & 0x10) != 0)
      {
        ot::MeshCoP::DiscoveryResponseTlv::SetCommercialCommissioningMode(v26, 1);
      }

      appended = ot::Tlv::AppendTo(v26, v29);
      if (!appended)
      {
        v22 = v29;
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(this);
        ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(v8);
        appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(v22, v9);
        if (!appended)
        {
          v21 = v29;
          v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(this);
          ot::MeshCoP::NetworkNameManager::GetNetworkName(v10);
          ot::MeshCoP::NetworkName::GetAsCString(v11);
          appended = ot::Tlv::Append<ot::MeshCoP::NetworkNameTlv>(v21, v12, v13, v14, v15);
          if (!appended)
          {
            appended = ot::Mle::Mle::TxMessage::AppendSteeringDataTlv(v29);
            if (!appended)
            {
              v20 = v29;
              v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(this);
              JoinerUdpPort = ot::MeshCoP::JoinerRouter::GetJoinerUdpPort(v16);
              appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v20, JoinerUdpPort);
              if (!appended)
              {
                v18 = ot::Message::GetLength(v29);
                ot::Tlv::SetLength(v27, v18 - Length);
                ot::Message::Write<ot::Mle::Tlv>(v29, Length - 2, v27);
                Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0xFBu);
                appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v29, v32, Uint16InRange);
                if (!appended)
                {
                  ot::Mle::Mle::Log(2u, 0xAu, v32);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    appended = 3;
  }

LABEL_17:
  if (appended && v29)
  {
    ot::Message::Free(v29);
  }

  ot::Mle::Mle::LogProcessError(0xAu, appended);
  return appended;
}

uint64_t ot::MeshCoP::DiscoveryResponseTlv::Init(ot::MeshCoP::DiscoveryResponseTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 129);
  result = ot::Tlv::SetLength(this, 2);
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::Init(this);
}

uint64_t ot::MeshCoP::DiscoveryResponseTlv::SetVersion(uint64_t this, char a2)
{
  *(this + 2) = *(this + 2) & 0xF | (16 * a2);
  return this;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::SetVersion(this, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0xFu, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(a1, a2);
}

uint64_t ot::MeshCoP::DiscoveryResponseTlv::SetNativeCommissioner(uint64_t this, char a2)
{
  if (a2)
  {
    *(this + 2) |= 8u;
  }

  else
  {
    *(this + 2) &= ~8u;
  }

  return this;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::SetNativeCommissioner(this, a2);
}

uint64_t ot::MeshCoP::DiscoveryResponseTlv::SetCommercialCommissioningMode(uint64_t this, char a2)
{
  if (a2)
  {
    *(this + 2) |= 4u;
  }

  else
  {
    *(this + 2) &= ~4u;
  }

  return this;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::SetCommercialCommissioningMode(this, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 2, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::NetworkNameTlv>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 3, 0x10u, a2, a5);
}

{
  return ot::Tlv::Append<ot::MeshCoP::NetworkNameTlv>(a1, a2, a3, a4, a5);
}

uint64_t ot::Child::GetRequestTlv(ot::Child *this, unsigned __int8 a2)
{
  return *(this + a2 + 450);
}

{
  return ot::Child::GetRequestTlv(this, a2);
}

uint64_t ot::MeshForwarder::GetSendQueue(ot::MeshForwarder *this)
{
  return this + 8;
}

{
  return ot::MeshForwarder::GetSendQueue(this);
}

void ot::Mle::MleRouter::RemoveRouterLink(ot::Mle::MleRouter *this, ot::Router *a2)
{
  v2 = *(this + 130);
  if (v2 == 2)
  {
    if (a2 == (this + 192))
    {
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }
  }

  else if (v2 == 4 || v2 == 3)
  {
    ot::RouterTable::RemoveRouterLink((this + 30904), a2);
  }
}

_BYTE *ot::Mle::Mle::ClearParentCandidate(ot::Mle::Mle *this)
{
  return ot::Mle::Mle::ParentCandidate::Clear((this + 368));
}

{
  return ot::Mle::Mle::ClearParentCandidate(this);
}

uint64_t ot::Mle::MleRouter::SetPreferredRouterId(ot::Mle::MleRouter *this, char a2)
{
  v4 = 0;
  if (ot::Mle::Mle::IsDetached(this) || ot::Mle::Mle::IsDisabled(this))
  {
    *(this + 35690) = a2;
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mle::MleRouter::SetPairingDeviceExtAddr(ot::Mle::MleRouter *this, const ot::Mac::ExtAddress *a2)
{
  result = ot::Mle::MleRouter::ResetPairingDeviceExtAddr(this);
  *(this + 35681) = *a2;
  return result;
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 1, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(a1, a2);
}

uint64_t ot::Mle::MleRouter::HandleAddressSolicitResponse(unsigned __int8 *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3, int a4)
{
  v51 = a1;
  v50 = a2;
  v49 = a3;
  v48 = a4;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  a1[35632] &= ~2u;
  if (!v48)
  {
    if (v50)
    {
      if (v49)
      {
        if (ot::Coap::Message::GetCode(v50) == 68)
        {
          ot::Ip6::MessageInfo::GetPeerAddr(v49);
          ot::Mle::Mle::Log(1u, 0x12u, v4);
          if (!ot::Tlv::Find<ot::ThreadStatusTlv>(v50, &v47))
          {
            if (v47)
            {
              a1[35632] = a1[35632] & 0xFB | 4;
              v33 = a1[35690];
              IsRouterIdValid = ot::Mle::IsRouterIdValid(a1[35690]);
              HasChildren = ot::Mle::MleRouter::HasChildren(a1);
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Address Solicit Rejected mPreviousRouterId=%d IsPrevRouterIdValid=%d HasChildren=%d", v6, v7, v8, v9, v10, v11, v33, IsRouterIdValid, HasChildren);
              if (ot::Mle::IsRouterIdValid(a1[35690]))
              {
                if (ot::Mle::MleRouter::HasChildren(a1))
                {
                  ot::Mle::MleRouter::RemoveChildren(a1);
                }

                ot::Mle::MleRouter::SetRouterId(a1, 63);
              }
            }

            else if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v50, &v46))
            {
              v45 = ot::Mle::RouterIdFromRloc16(v46);
              if (!ot::Tlv::FindTlv<ot::ThreadRouterMaskTlv>(v50, v56, v12, v13, v14, v15) && ot::ThreadRouterMaskTlv::IsValid(v56))
              {
                ot::Mle::MleRouter::SetRouterId(a1, v45);
                v16 = ot::Mle::Rloc16FromRouterId(a1[35689]);
                ot::Mle::MleRouter::SetStateRouter(a1, v16);
                ot::RouterTable::ClearNeighbors((a1 + 30904));
                IdSequence = ot::ThreadRouterMaskTlv::GetIdSequence(v56);
                AssignedRouterIdMask = ot::ThreadRouterMaskTlv::GetAssignedRouterIdMask(v56);
                ot::RouterTable::UpdateRouterIdSet((a1 + 30904), IdSequence, AssignedRouterIdMask);
                ot::RouterTable::FindRouterById((a1 + 30904), v45);
                v44 = v18;
                if (v18)
                {
                  v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
                  ExtAddress = ot::Mac::Mac::GetExtAddress(v19);
                  ot::Neighbor::SetExtAddress(v44, ExtAddress);
                  ot::Router::SetNextHopToInvalid(v44);
                  RouterId = ot::Neighbor::GetRouterId((a1 + 192));
                  ot::RouterTable::FindRouterById((a1 + 30904), RouterId);
                  v44 = v22;
                  if (v22)
                  {
                    ot::Router::SetFrom(v44, (a1 + 192));
                    ot::Neighbor::SetState(v44, 7);
                    ot::InstanceLocator::GetInstance(a1);
                    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (ot::Mle::Mle::GetRole(a1) == 4 || ot::Mle::Mle::GetRole(a1) == 3))
                    {
                      Role = ot::Mle::Mle::GetRole(a1);
                      ot::Mle::Mle::SetThreadCoexConfig(a1, 0, Role, a1[132]);
                    }

                    ot::Router::SetNextHopToInvalid(v44);
                    if (ot::RouterTable::GetPathCostToLeader((a1 + 30904)) >= 16)
                    {
                      ot::RouterTable::GetLeader((a1 + 30904));
                      v43 = v24;
                      if (!v24)
                      {
                        __assert_rtn("HandleAddressSolicitResponse", "mle_router.cpp", 4248, "leader != nullptr");
                      }

                      Rloc16 = ot::Neighbor::GetRloc16((a1 + 192));
                      v31 = ot::Mle::RouterIdFromRloc16(Rloc16);
                      LeaderCost = ot::Parent::GetLeaderCost((a1 + 192));
                      ot::Router::SetNextHopAndCost(v43, v31, LeaderCost);
                    }

                    if (ot::Neighbor::GetVersion((a1 + 192)) < 4)
                    {
                      ot::Mle::MleRouter::SendLinkRequest(a1, (a1 + 192));
                      IgnoreError();
                    }

                    ot::Mle::MleRouter::SendAdvertisement(a1);
                    v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
                    v41 = ot::ChildTable::Iterate(v27, 2);
                    v42 = &v41;
                    v54 = ot::ChildTable::IteratorBuilder::begin(&v41);
                    v55 = v28;
                    v39 = v54;
                    v40 = v28;
                    v52 = ot::ChildTable::IteratorBuilder::end(v42);
                    v53 = v29;
                    v37 = v52;
                    v38 = v29;
                    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v39, &v37))
                    {
                      v36 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v39);
                      ot::Mle::MleRouter::SendChildIdResponse(a1, v36);
                      IgnoreError();
                      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v39);
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

  return ot::Mle::Mle::InformPreviousChannel(a1);
}

uint64_t ot::Tlv::FindTlv<ot::ThreadRouterMaskTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 7, 0xBu, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::ThreadRouterMaskTlv>(a1, a2, a3, a4, a5, a6);
}

BOOL ot::ThreadRouterMaskTlv::IsValid(ot::ThreadRouterMaskTlv *this)
{
  return ot::Tlv::GetLength(this) >= 9uLL;
}

{
  return ot::ThreadRouterMaskTlv::IsValid(this);
}

uint64_t ot::ThreadRouterMaskTlv::GetIdSequence(ot::ThreadRouterMaskTlv *this)
{
  return *(this + 2);
}

{
  return ot::ThreadRouterMaskTlv::GetIdSequence(this);
}

uint64_t ot::ThreadRouterMaskTlv::GetAssignedRouterIdMask(ot::ThreadRouterMaskTlv *this)
{
  return this + 3;
}

{
  return ot::ThreadRouterMaskTlv::GetAssignedRouterIdMask(this);
}

void ot::RouterTable::GetLeader(ot::RouterTable *this)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::GetLeader(v1);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::GetLeader(this);
}

uint64_t ot::Parent::GetLeaderCost(ot::Parent *this)
{
  return *(this + 142);
}

{
  return ot::Parent::GetLeaderCost(this);
}

uint64_t ot::Mle::MleRouter::SetChildRouterLinks(ot::Mle::MleRouter *this, char a2)
{
  v4 = 0;
  if (ot::Mle::Mle::IsDisabled(this))
  {
    *(this + 35704) = a2;
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mle::MleRouter::IsExpectedToBecomeRouterSoon(ot::Mle::MleRouter *this)
{
  v4 = 0;
  if (ot::Mle::MleRouter::IsRouterEligible(this))
  {
    v4 = 0;
    if (ot::Mle::Mle::IsChild(this))
    {
      v4 = 0;
      if ((*(this + 35632) & 4) == 0)
      {
        if (!ot::Mle::MleRouter::RouterRoleTransition::IsPending((this + 35702)) || (LOBYTE(v2) = 1, ot::Mle::MleRouter::RouterRoleTransition::GetTimeout((this + 35702)) > 10))
        {
          v2 = (*(this + 35632) >> 1) & 1;
        }

        v4 = v2;
      }
    }
  }

  return v4 & 1;
}

void ot::Mle::MleRouter::HandleTmf<(ot::Uri)4>(_BYTE *result, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v29 = result;
  v28 = a2;
  v27 = a3;
  v26 = 0;
  v25 = 1;
  *&v24[2] = 0;
  *v24 = 0;
  v23 = 0;
  if (result[130] != 4)
  {
    v26 = 13;
    goto LABEL_30;
  }

  if (!ot::Coap::Message::IsConfirmablePostRequest(v28))
  {
    v26 = 6;
    goto LABEL_30;
  }

  ot::Ip6::MessageInfo::GetPeerAddr(v27);
  ot::Mle::Mle::Log(1u, 0x13u, v3);
  v26 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(v28, v31);
  if (v26)
  {
    goto LABEL_30;
  }

  v26 = ot::Tlv::Find<ot::ThreadStatusTlv>(v28, &v23);
  if (v26)
  {
    goto LABEL_30;
  }

  v21 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v28, v24);
  if (v21)
  {
    if (v21 != 23)
    {
      v26 = 6;
      goto LABEL_30;
    }

    *v24 = -2;
  }

  ot::RouterTable::FindRouter((result + 30904), v31);
  *&v24[2] = v4;
  if (v4)
  {
    v25 = 0;
    goto LABEL_30;
  }

  if (v23 == 2)
  {
    if (ot::RouterTable::GetActiveRouterCount((result + 30904)) >= result[35629])
    {
      goto LABEL_30;
    }
  }

  else if (v23 != 4 && v23 != 3)
  {
    if (v23 != 5)
    {
      v25 = 6;
      goto LABEL_30;
    }

    if (ot::RouterTable::GetActiveRouterCount((result + 30904)) >= result[35629])
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(result);
      if (ot::NetworkData::NetworkData::CountBorderRouters(v5, 1) >= 2)
      {
        ot::Mac::ExtAddress::ToString(v31, v30);
        v6 = ot::String<(unsigned short)17>::AsCString(v30);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Rejecting BR %s router role req - have %u BR routers", v7, v8, v9, v10, v11, v12, v6, 2);
        goto LABEL_30;
      }
    }
  }

  if (*v24 != 65534)
  {
    v13 = ot::Mle::RouterIdFromRloc16(*v24);
    *&v24[2] = ot::RouterTable::Allocate((result + 30904), v13);
    if (*&v24[2])
    {
      v14 = ot::Mle::RouterIdFromRloc16(*v24);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Router id %u requested and provided!", v15, v16, v17, v18, v19, v20, v14);
    }
  }

  if (*&v24[2] || (*&v24[2] = ot::RouterTable::Allocate((result + 30904))) != 0)
  {
    ot::Neighbor::SetExtAddress(*&v24[2], v31);
    v25 = 0;
  }

LABEL_30:
  if (!v26)
  {
    ot::Mle::MleRouter::SendAddressSolicitResponse(result, v28, v25, *&v24[2], v27);
  }
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 1, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(a1, a2);
}

void ot::Mle::MleRouter::SendAddressSolicitResponse(uint64_t a1, const ot::Coap::Message *a2, unsigned __int8 a3, ot::Neighbor *a4, const ot::Ip6::MessageInfo *a5)
{
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v19 = ot::Coap::CoapBase::NewPriorityResponseMessage(v5, a2);
  if (v19)
  {
    if (!ot::Tlv::Append<ot::ThreadStatusTlv>(v19, a3))
    {
      if (!a4 || (v6 = ot::Neighbor::GetRloc16(a4), !ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v19, v6)) && (ot::ThreadRouterMaskTlv::Init(v24), RouterIdSequence = ot::RouterTable::GetRouterIdSequence((a1 + 30904)), ot::ThreadRouterMaskTlv::SetIdSequence(v24, RouterIdSequence), AssignedRouterIdMask = ot::ThreadRouterMaskTlv::GetAssignedRouterIdMask(v24), ot::RouterTable::GetRouterIdSet((a1 + 30904), AssignedRouterIdMask), !ot::Tlv::AppendTo(v24, v19)))
      {
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        if (!ot::Coap::CoapBase::SendMessage(v9, v19, a5))
        {
          v19 = 0;
          ot::Ip6::MessageInfo::GetPeerAddr(a5);
          ot::Mle::Mle::Log(0, 0x12u, v10);
          if (!a3)
          {
            if (a4)
            {
              ot::Ip6::MessageInfo::GetPeerAddr(a5);
              if (ot::Mle::Mle::IsRoutingLocator(a1, v11))
              {
                ot::Ip6::MessageInfo::GetPeerAddr(a5);
                Iid = ot::Ip6::Address::GetIid(v12);
                Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid, v14);
                if (Locator != ot::Neighbor::GetRloc16(a4))
                {
                  Rloc16 = ot::Mle::Mle::GetRloc16(a1);
                  if (!ot::Mle::RouterIdMatch(Locator, Rloc16))
                  {
                    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(a1);
                    ot::AddressResolver::RemoveEntriesForRloc16(v16, Locator);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v19)
  {
    ot::Message::Free(v19);
  }
}

void *ot::ThreadRouterMaskTlv::Init(ot::ThreadRouterMaskTlv *this)
{
  ot::ThreadTlv::SetType(this, 7);
  ot::Tlv::SetLength(this, 9);
  return ot::Clearable<ot::Mle::RouterIdSet>::Clear((this + 3));
}

{
  return ot::ThreadRouterMaskTlv::Init(this);
}

uint64_t ot::ThreadRouterMaskTlv::SetIdSequence(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::ThreadRouterMaskTlv::SetIdSequence(this, a2);
}

void ot::Mle::MleRouter::HandleTmf<(ot::Uri)3>(_BYTE *result, ot::Coap::Message *a2, uint64_t a3)
{
  v12 = result;
  v11 = a2;
  *&v10[1] = a3;
  v10[0] = 0;
  if (result[130] == 4 && ot::Coap::Message::IsConfirmablePostRequest(v11))
  {
    ot::Ip6::MessageInfo::GetPeerAddr(*&v10[1]);
    ot::Mle::Mle::Log(1u, 0x10u, v3);
    if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v11, v10) && !ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(v11, v13))
    {
      v9 = ot::Mle::RouterIdFromRloc16(v10[0]);
      ot::RouterTable::FindRouterById((result + 30904), v9);
      if (v4)
      {
        ot::Neighbor::GetExtAddress(v4);
        if (ot::Equatable<ot::Mac::ExtAddress>::operator==(v5, v13))
        {
          ot::RouterTable::Release((result + 30904), v9);
          IgnoreError();
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(result);
          if (!ot::Coap::CoapBase::SendEmptyAck(v6, v11, *&v10[1]))
          {
            ot::Ip6::MessageInfo::GetPeerAddr(*&v10[1]);
            ot::Mle::Mle::Log(0, 0x11u, v7);
          }
        }
      }
    }
  }
}

uint64_t ot::Mle::MleRouter::FillConnectivityTlv(ot::Mle::MleRouter *this, ot::Mle::ConnectivityTlv *a2)
{
  if (*(this + 35706) == -2)
  {
    NumChildren = ot::ChildTable::GetNumChildren(this + 600, 0);
    MaxChildrenAllowed = ot::ChildTable::GetMaxChildrenAllowed((this + 1200));
    if (MaxChildrenAllowed - NumChildren < MaxChildrenAllowed / 3)
    {
      ot::Mle::ConnectivityTlv::SetParentPriority(a2, 255);
    }

    else
    {
      ot::Mle::ConnectivityTlv::SetParentPriority(a2, 0);
    }
  }

  else
  {
    ot::Mle::ConnectivityTlv::SetParentPriority(a2, *(this + 35706));
  }

  ot::Mle::ConnectivityTlv::SetLinkQuality1(a2, 0);
  ot::Mle::ConnectivityTlv::SetLinkQuality2(a2, 0);
  ot::Mle::ConnectivityTlv::SetLinkQuality3(a2, 0);
  if (ot::Mle::Mle::IsChild(this))
  {
    LinkQualityIn = ot::Neighbor::GetLinkQualityIn((this + 192));
    ot::Mle::ConnectivityTlv::IncrementLinkQuality(a2, LinkQualityIn);
  }

  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  ot::RouterTable::begin(v14);
  v13 = v3;
  v12 = ot::RouterTable::end(v14);
  while (v13 != v12)
  {
    Rloc16 = ot::Neighbor::GetRloc16(v13);
    if (Rloc16 != ot::Mle::Mle::GetRloc16(this) && ot::Neighbor::IsStateValid(v13))
    {
      TwoWayLinkQuality = ot::Router::GetTwoWayLinkQuality(v13);
      ot::Mle::ConnectivityTlv::IncrementLinkQuality(a2, TwoWayLinkQuality);
    }

    v13 = (v13 + 144);
  }

  ActiveRouterCount = ot::RouterTable::GetActiveRouterCount((this + 30904));
  ot::Mle::ConnectivityTlv::SetActiveRouters(a2, ActiveRouterCount);
  PathCostToLeader = ot::RouterTable::GetPathCostToLeader((this + 30904));
  v7 = ot::Min<unsigned char>(PathCostToLeader, 0x10u);
  ot::Mle::ConnectivityTlv::SetLeaderCost(a2, v7);
  RouterIdSequence = ot::RouterTable::GetRouterIdSequence((this + 30904));
  ot::Mle::ConnectivityTlv::SetIdSequence(a2, RouterIdSequence);
  ot::Mle::ConnectivityTlv::SetSedBufferSize(a2, 0x500u);
  return ot::Mle::ConnectivityTlv::SetSedDatagramCount(a2, 1);
}

uint64_t ot::Mle::ConnectivityTlv::SetLinkQuality1(uint64_t this, char a2)
{
  *(this + 5) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetLinkQuality1(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetLinkQuality2(uint64_t this, char a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetLinkQuality2(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetLinkQuality3(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetLinkQuality3(this, a2);
}

uint64_t ot::Neighbor::GetLinkQualityIn(ot::Neighbor *this)
{
  LinkInfo = ot::Neighbor::GetLinkInfo(this);
  return ot::LinkQualityInfo::GetLinkQuality(LinkInfo);
}

{
  return ot::Neighbor::GetLinkQualityIn(this);
}

uint64_t ot::Mle::ConnectivityTlv::SetActiveRouters(uint64_t this, char a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetActiveRouters(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetLeaderCost(uint64_t this, char a2)
{
  *(this + 6) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetLeaderCost(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetIdSequence(uint64_t this, char a2)
{
  *(this + 7) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetIdSequence(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetSedBufferSize(ot::Mle::ConnectivityTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 9) = result;
  return result;
}

{
  return ot::Mle::ConnectivityTlv::SetSedBufferSize(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetSedDatagramCount(uint64_t this, char a2)
{
  *(this + 11) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetSedDatagramCount(this, a2);
}

uint64_t ot::Mle::MleRouter::NeighborHasComparableConnectivity(ot::Mle::MleRouter *this, const ot::Mle::RouteTlv *a2, unsigned __int8 a3)
{
  v11 = 1;
  v10 = 0;
  v9 = 0;
  while (v10 <= 0x3Eu)
  {
    if (v10 != *(this + 35689) && v10 != a3)
    {
      RouterById = ot::RouterTable::FindRouterById((this + 30904), v10);
      if (RouterById)
      {
        if (ot::Neighbor::IsStateValid(RouterById))
        {
          TwoWayLinkQuality = ot::Router::GetTwoWayLinkQuality(RouterById);
          if (TwoWayLinkQuality >= 2u)
          {
            if (!ot::Mle::RouteTlv::IsRouterIdSet(a2, v10))
            {
              v11 = 0;
              return v11 & 1;
            }

            LinkQualityIn = ot::Mle::RouteTlv::GetLinkQualityIn(a2, v9);
            LinkQualityOut = ot::Mle::RouteTlv::GetLinkQualityOut(a2, v9);
            if (ot::Min<ot::LinkQuality>(LinkQualityIn, LinkQualityOut) < TwoWayLinkQuality)
            {
              v11 = 0;
              return v11 & 1;
            }
          }
        }
      }
    }

    v9 += ot::Mle::RouteTlv::IsRouterIdSet(a2, v10++);
  }

  return v11 & 1;
}

uint64_t ot::Min<ot::LinkQuality>(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >= a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

{
  return ot::Min<ot::LinkQuality>(a1, a2);
}

uint64_t ot::Mle::RouteTlv::GetLinkQualityOut(ot::Mle::RouteTlv *this, unsigned __int8 a2)
{
  return (*(this + a2 + 11) & 0xC0) >> 6;
}

{
  return ot::Mle::RouteTlv::GetLinkQualityOut(this, a2);
}

uint64_t ot::Mle::MleRouter::SetAssignParentPriority(ot::Mle::MleRouter *this, char a2)
{
  v3 = 0;
  if (a2 <= 1 && a2 >= -2)
  {
    *(this + 35706) = a2;
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t ot::Mle::MleRouter::GetMaxChildTimeout(ot::Mle::MleRouter *this, unsigned int *a2)
{
  v18 = this;
  v17 = a2;
  v16 = 23;
  *a2 = 0;
  if (ot::Mle::Mle::IsRouterOrLeader(this))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v14 = ot::ChildTable::Iterate(v2, 0);
    v15 = &v14;
    v21 = ot::ChildTable::IteratorBuilder::begin(&v14);
    v22 = v3;
    v12 = v21;
    v13 = v3;
    v19 = ot::ChildTable::IteratorBuilder::end(v15);
    v20 = v4;
    v10 = v19;
    v11 = v4;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v12, &v10))
    {
      v9 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v12);
      if (!ot::Neighbor::IsFullThreadDevice(v9))
      {
        Timeout = ot::Child::GetTimeout(v9);
        if (Timeout > *v17)
        {
          v6 = ot::Child::GetTimeout(v9);
          *v17 = v6;
        }

        v16 = 0;
      }

      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v12);
    }
  }

  else
  {
    return 13;
  }

  return v16;
}

_BYTE *ot::Mle::MleRouter::RouterRoleTransition::RouterRoleTransition(_BYTE *this)
{
  *this = 0;
  this[1] = 5;
  return this;
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 4608);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetLength(a1);
}

BOOL ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsInArrayBuffer(unint64_t a1, unint64_t a2)
{
  v3 = 0;
  if (a1 <= a2)
  {
    return a2 < ot::GetArrayEnd<ot::Router,(unsigned short)32>(a1);
  }

  return v3;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsInArrayBuffer(a1, a2);
}

uint64_t ot::GetArrayEnd<ot::Router,(unsigned short)32>(uint64_t a1)
{
  return a1 + 4608;
}

{
  return ot::GetArrayEnd<ot::Router,(unsigned short)32>(a1);
}

BOOL ot::Neighbor::IsThreadVersion1p2OrHigher(ot::Neighbor *this)
{
  v2 = 0;
  if ((*(this + 30) & 0xF) != 0)
  {
    return *(this + 18) >= 3u;
  }

  return v2;
}

{
  return ot::Neighbor::IsThreadVersion1p2OrHigher(this);
}

uint64_t ot::BitVector<(unsigned short)15>::HasAny(_BYTE *a1)
{
  v3 = 0;
  for (i = a1; i != a1 + 2; ++i)
  {
    if (*i)
    {
      v3 = 1;
      return v3 & 1;
    }
  }

  return v3 & 1;
}

{
  return ot::BitVector<(unsigned short)15>::HasAny(a1);
}

BOOL ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 240);
  return v2 == ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetMaxSize();
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(a1);
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetMaxSize()
{
  return 15;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetMaxSize();
}

void ot::AsCoreType<otHistoryTrackerIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otHistoryTrackerIterator>(a1);
}

uint64_t ot::Utils::HistoryTracker::Iterator::Init(ot::Utils::HistoryTracker::Iterator *this)
{
  ot::Utils::HistoryTracker::Iterator::ResetEntryNumber(this);
  return ot::Utils::HistoryTracker::Iterator::SetInitTime(this);
}

{
  return ot::Utils::HistoryTracker::Iterator::Init(this);
}

uint64_t otHistoryTrackerIterateNetInfoHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateNetInfoHistory", "history_tracker_api.cpp", 52, "(aEntryAge) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateNetInfoHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateNetInfoHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::Iterate(this + 4, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateNetInfoHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateUnicastAddressHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateUnicastAddressHistory", "history_tracker_api.cpp", 62, "(aEntryAge) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateUnicastAddressHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateUnicastAddressHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::Iterate(this + 520, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateUnicastAddressHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateMulticastAddressHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateMulticastAddressHistory", "history_tracker_api.cpp", 73, "(aEntryAge) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateMulticastAddressHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateMulticastAddressHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::Iterate(this + 1164, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateMulticastAddressHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateRxHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateRxHistory", "history_tracker_api.cpp", 83, "(aEntryAge) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateRxHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateRxHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::Iterate(this + 1728, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateRxHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateTxHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateTxHistory", "history_tracker_api.cpp", 92, "(aEntryAge) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateTxHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateTxHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::Iterate(this + 3332, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateTxHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateNeighborHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateNeighborHistory", "history_tracker_api.cpp", 101, "(aEntryAge) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateNeighborHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateNeighborHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::Iterate(this + 4936, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateNeighborHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateRouterHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateRouterHistory", "history_tracker_api.cpp", 110, "(aEntryAge) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateRouterHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateRouterHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::Iterate(this + 5964, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateRouterHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateOnMeshPrefixHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateOnMeshPrefixHistory", "history_tracker_api.cpp", 119, "(aEntryAge) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateOnMeshPrefixHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateOnMeshPrefixHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::Iterate(this + 7760, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateOnMeshPrefixHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateExternalRouteHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateExternalRouteHistory", "history_tracker_api.cpp", 130, "(aEntryAge) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateExternalRouteHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateExternalRouteHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::Iterate(this + 8788, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateExternalRouteHistory(this, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::Iterator::ResetEntryNumber(uint64_t this)
{
  *(this + 4) = 0;
  return this;
}

{
  return ot::Utils::HistoryTracker::Iterator::ResetEntryNumber(this);
}

uint64_t ot::Utils::HistoryTracker::Iterator::SetInitTime(ot::Utils::HistoryTracker::Iterator *this)
{
  v4 = this;
  Now = ot::TimerMilli::GetNow(this);
  result = ot::Time::GetValue(&Now);
  *this = result;
  return result;
}

{
  return ot::Utils::HistoryTracker::Iterator::SetInitTime(this);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x20u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 132 + 12 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x14u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 84 + 28 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x14u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 84 + 24 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x20u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 132 + 46 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x40u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 260 + 12 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x100u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 1028 + 3 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x20u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 132 + 28 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x20u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 132 + 28 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::Iterate(a1, a2, a3);
}

BOOL ot::Mle::DeviceMode::Get(ot::Mle::DeviceMode *a1, _BYTE *a2)
{
  *a2 = *a2 & 0xFE | ot::Mle::DeviceMode::IsRxOnWhenIdle(a1);
  *a2 = *a2 & 0xFD | (2 * ot::Mle::DeviceMode::IsFullThreadDevice(a1));
  result = ot::Mle::DeviceMode::GetNetworkDataType(a1);
  *a2 = *a2 & 0xFB | (4 * !result);
  return result;
}

_BYTE *ot::Mle::DeviceMode::Set(_BYTE *result, _BYTE *a2)
{
  *result = 4;
  if (*a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *result |= v2;
  if ((*a2 & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *result |= v3;
  *result |= (*a2 & 4) != 0;
  return result;
}

ot::StringWriter *ot::Mle::DeviceMode::ToString@<X0>(ot::Mle::DeviceMode *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)45>::String(a2);
  IsRxOnWhenIdle = ot::Mle::DeviceMode::IsRxOnWhenIdle(this);
  v8 = ot::ToYesNo(IsRxOnWhenIdle);
  IsFullThreadDevice = ot::Mle::DeviceMode::IsFullThreadDevice(this);
  v9 = ot::ToYesNo(IsFullThreadDevice);
  v4 = !ot::Mle::DeviceMode::GetNetworkDataType(this);
  v5 = ot::ToYesNo(v4);
  return ot::StringWriter::Append(a2, "rx-on:%s ftd:%s full-net:%s", v8, v9, v5);
}

uint64_t ot::Mle::RouterIdSet::GetNumberOfAllocatedIds(ot::Mle::RouterIdSet *this)
{
  v4 = 0;
  v3 = this;
  v2 = this + 8;
  while (v3 != v2)
  {
    v4 += ot::CountBitsInMask<unsigned char>(*v3++);
  }

  return v4;
}

uint64_t ot::CountBitsInMask<unsigned char>(char a1)
{
  v2 = 0;
  while (a1)
  {
    a1 &= a1 - 1;
    ++v2;
  }

  return v2;
}

{
  return ot::CountBitsInMask<unsigned char>(a1);
}

uint64_t ot::Random::Crypto::Fill<ot::Mle::TxChallenge>(ot::Random::Crypto *a1, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::Crypto::FillBuffer(a1, 8, a3);
}

{
  return ot::Random::Crypto::Fill<ot::Mle::TxChallenge>(a1, a2, a3);
}

uint64_t ot::Mle::RxChallenge::ReadFrom(ot::Mle::RxChallenge *this, const ot::Message *a2, const ot::OffsetRange *a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = *a3;
  ot::Mle::RxChallenge::Clear(this);
  ot::OffsetRange::ShrinkLength(&v10, 8u);
  if (ot::OffsetRange::Contains(&v10, 4u))
  {
    v8 = v13;
    ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
    v7 = v3;
    Length = ot::OffsetRange::GetLength(&v10);
    v11 = ot::Message::Read(v8, &v10, v7, Length);
    if (!v11)
    {
      v5 = ot::OffsetRange::GetLength(&v10);
      ot::Array<unsigned char,(unsigned short)8,unsigned char>::SetLength(this, v5);
    }
  }

  else
  {
    return 6;
  }

  return v11;
}

uint64_t ot::Array<unsigned char,(unsigned short)8,unsigned char>::SetLength(uint64_t result, char a2)
{
  *(result + 8) = a2;
  return result;
}

{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::SetLength(result, a2);
}

BOOL ot::Mle::RxChallenge::operator==(uint64_t a1, const void *a2)
{
  v4 = 0;
  if (ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(a1) == 8)
  {
    ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
    return memcmp(v2, a2, 8uLL) == 0;
  }

  return v4;
}

const char *ot::Mle::RoleToString(unsigned __int8 a1)
{
  if (a1 >= ot::GetArrayLength<char const*,(unsigned short)5>())
  {
    return "invalid";
  }

  else
  {
    return ot::Mle::RoleToString(ot::Mle::DeviceRole)::kRoleStrings[a1];
  }
}

ot::MlrManager *ot::MlrManager::MlrManager(ot::MlrManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this);
  result = this;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 22) &= ~1u;
  *(this + 22) &= ~2u;
  return result;
}

{
  ot::MlrManager::MlrManager(this, a2);
  return this;
}

void ot::MlrManager::HandleNotifierEvents(ot::MlrManager *a1, uint64_t a2)
{
  v4 = a2;
  if (ot::Events::Contains(&v4, 4096))
  {
    ot::MlrManager::UpdateLocalSubscriptions(a1);
  }

  if (ot::Events::Contains(&v4, 4))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
    if (ot::Mle::Mle::IsChild(v2))
    {
      ot::MlrManager::UpdateReregistrationDelay(a1, 1u);
    }
  }
}

uint64_t ot::MlrManager::UpdateLocalSubscriptions(ot::MlrManager *this)
{
  v12 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  v13 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v1, 3);
  v14 = v2;
  v9 = v13;
  v10 = v2;
  v11 = &v9;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(v8, &v9);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v7, v11);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v8, v7))
  {
    v6 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v8);
    if (!ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v6))
    {
      ot::Ip6::Netif::MulticastAddress::GetAddress(v6);
      if (ot::MlrManager::IsAddressMlrRegisteredByAnyChild(this, v3))
      {
        ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(v6, 2);
      }
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v8);
  }

  ot::MlrManager::CheckInvariants(this);
  return ot::MlrManager::ScheduleSend(this, 0);
}

void ot::MlrManager::UpdateReregistrationDelay(ot::MlrManager *this, unsigned __int8 a2)
{
  v25 = this;
  v24 = a2;
  v16 = this;
  v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsFullThreadDevice(v23) || (Parent = ot::Mle::Mle::GetParent(v23), HasPrimary = 0, ot::Neighbor::IsThreadVersion1p1(Parent)))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(v16);
    HasPrimary = ot::BackboneRouter::Leader::HasPrimary(v3);
  }

  v22 = HasPrimary;
  if (HasPrimary)
  {
    Uint32InRange = 0;
    v17 = 0;
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(v16);
    ot::BackboneRouter::Leader::GetConfig(v4, v19);
    IgnoreError();
    if (v24)
    {
      if (v20 <= 1u)
      {
        Uint16InRange = 1;
      }

      else
      {
        Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(1, v20);
      }

      Uint32InRange = Uint16InRange;
    }

    else
    {
      v17 = ot::Max<unsigned int>(v21, 0x12Cu);
      Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(((v17 >> 1) + 1), v17 - 9);
    }

    if (!*(v16 + 4) || *(v16 + 4) > Uint32InRange)
    {
      *(v16 + 4) = Uint32InRange;
    }
  }

  else
  {
    *(v16 + 4) = 0;
  }

  ot::MlrManager::UpdateTimeTickerRegistration(v16);
  v12 = v24;
  v13 = v22;
  v5 = ot::ToUlong(*(v16 + 4));
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("MlrManager", "MlrManager::UpdateReregistrationDelay: rereg=%d, needSendMlr=%d, ReregDelay=%lu", v6, v7, v8, v9, v10, v11, v12 & 1, v13, v5);
}

void ot::MlrManager::HandleBackboneRouterPrimaryUpdate(ot::MlrManager *a1, char a2)
{
  v2 = 1;
  if (a2 != 1)
  {
    v2 = a2 == 3;
  }

  ot::MlrManager::UpdateReregistrationDelay(a1, v2);
}

uint64_t ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(ot::Ip6::Netif::ExternalMulticastAddress *this)
{
  return *(this + 24);
}

{
  return ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(this);
}

uint64_t ot::MlrManager::IsAddressMlrRegisteredByAnyChild(ot::MlrManager *this, const ot::Ip6::Address *a2)
{
  return ot::MlrManager::IsAddressMlrRegisteredByAnyChildExcept(this, a2, 0);
}

{
  return ot::MlrManager::IsAddressMlrRegisteredByAnyChild(this, a2);
}

uint64_t ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(uint64_t result, char a2)
{
  *(result + 24) = a2;
  return result;
}

{
  return ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(result, a2);
}

uint64_t ot::MlrManager::ScheduleSend(uint64_t this, unsigned __int16 a2)
{
  v2 = this;
  v3 = 1;
  if (*(this + 22))
  {
    v3 = *(this + 20) == 0;
  }

  if (!v3)
  {
    __assert_rtn("ScheduleSend", "mlr_manager.cpp", 189, "!mMlrPending || mSendDelay == 0");
  }

  if ((*(this + 22) & 1) == 0)
  {
    if (a2)
    {
      if (!*(this + 20) || *(this + 20) > a2)
      {
        *(this + 20) = a2;
      }
    }

    else
    {
      *(this + 20) = 0;
      ot::MlrManager::SendMlr(this);
    }

    return ot::MlrManager::UpdateTimeTickerRegistration(v2);
  }

  return this;
}

uint64_t ot::MlrManager::IsAddressMlrRegisteredByNetif (ot::MlrManager *this, const ot::Ip6::Address *a2)
{
  v15 = this;
  v14 = a2;
  v13 = 0;
  if (!ot::Ip6::Address::IsMulticastLargerThanRealmLocal(a2))
  {
    __assert_rtn("IsAddressMlrRegisteredByNetif", "mlr_manager.cpp", 113, "aAddress.IsMulticastLargerThanRealmLocal()");
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  v16 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v2, 0);
  v17 = v3;
  v10 = v16;
  v11 = v3;
  v12 = &v10;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(v9, &v10);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v8, v12);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v9, v8))
  {
    v7 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v9);
    ot::Ip6::Netif::MulticastAddress::GetAddress(v7);
    if (ot::Equatable<ot::Ip6::Address>::operator==(v4, v14) && ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v7) == 2)
    {
      v13 = 1;
      return v13 & 1;
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v9);
  }

  return v13 & 1;
}

uint64_t ot::MlrManager::IsAddressMlrRegisteredByAnyChildExcept(ot::MlrManager *this, const ot::Ip6::Address *a2, const ot::Child *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  if (!ot::Ip6::Address::IsMulticastLargerThanRealmLocal(a2))
  {
    __assert_rtn("IsAddressMlrRegisteredByAnyChildExcept", "mlr_manager.cpp", 135, "aAddress.IsMulticastLargerThanRealmLocal()");
  }

  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v13 = ot::ChildTable::Iterate(v3, 0);
  v14 = &v13;
  v21 = ot::ChildTable::IteratorBuilder::begin(&v13);
  v22 = v4;
  v11 = v21;
  v12 = v4;
  v19 = ot::ChildTable::IteratorBuilder::end(v14);
  v20 = v5;
  v9 = v19;
  v10 = v5;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v11, &v9))
  {
    v8 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v11);
    if (v8 != v16 && ot::Child::HasMlrRegisteredAddress(v8, v17))
    {
      v15 = 1;
      return v15 & 1;
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  return v15 & 1;
}

uint64_t ot::MlrManager::UpdateProxiedSubscriptions(ot::MlrManager *a1, ot::Child *a2, uint64_t a3)
{
  if (ot::Neighbor::IsStateValid(a2))
  {
    Ip6Addresses = ot::Child::GetIp6Addresses(a2);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v18 = v10;
    v17 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v18 != v17)
    {
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v18))
      {
        IsAddressMlrRegisteredByNetif = 1;
        if (!ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(a3, v18))
        {
          IsAddressMlrRegisteredByNetif = ot::MlrManager::IsAddressMlrRegisteredByNetif (a1, v18);
        }

        IsAddressMlrRegisteredByAnyChildExcept = 1;
        if ((IsAddressMlrRegisteredByNetif & 1) == 0)
        {
          IsAddressMlrRegisteredByAnyChildExcept = ot::MlrManager::IsAddressMlrRegisteredByAnyChildExcept(a1, v18, a2);
        }

        if (IsAddressMlrRegisteredByAnyChildExcept)
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        ot::Child::Ip6AddrEntry::SetMlrState(v18, v11, a2);
      }

      v18 = (v18 + 16);
    }
  }

  ot::MlrManager::LogMulticastAddresses(a1, v3, v4, v5, v6, v7, v8, v9);
  ot::MlrManager::CheckInvariants(a1);
  result = ot::Child::HasAnyMlrToRegisterAddress(a2);
  if (result)
  {
    Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(1, 5u);
    return ot::MlrManager::ScheduleSend(a1, Uint16InRange);
  }

  return result;
}

BOOL ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(uint64_t a1, const void *a2)
{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Find(a1, a2) != 0;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(a1, a2);
}

BOOL ot::MlrManager::LogMulticastAddresses(ot::MlrManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = this;
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("MlrManager", "-------- Multicast Addresses --------", a3, a4, a5, a6, a7, a8);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  v57 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v8, 0);
  v58 = v9;
  v47 = v57;
  v48 = v9;
  v49 = &v47;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(v46, &v47);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v45, v49);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v46, v45))
  {
    v44 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v46);
    ot::Ip6::Netif::MulticastAddress::GetAddress(v44);
    ot::Ip6::Address::ToString(v56, v10);
    v32 = ot::String<(unsigned short)40>::AsCString(v56);
    MlrState = ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v44);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("MlrManager", "%-32s%c", v12, v13, v14, v15, v16, v17, v32, aRr[MlrState]);
    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v46);
  }

  v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v42 = ot::ChildTable::Iterate(v18, 0);
  v43 = &v42;
  v54 = ot::ChildTable::IteratorBuilder::begin(&v42);
  v55 = v19;
  v40 = v54;
  v41 = v19;
  v52 = ot::ChildTable::IteratorBuilder::end(v43);
  v53 = v20;
  v38 = v52;
  v39 = v20;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v40, &v38);
    if (!result)
    {
      break;
    }

    v37 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v40);
    Ip6Addresses = ot::Child::GetIp6Addresses(v37);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v35 = v22;
    v34 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v35 != v34)
    {
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v35))
      {
        ot::Ip6::Address::ToString(v51, v35);
        v30 = ot::String<(unsigned short)40>::AsCString(v51);
        v31 = aRr[ot::Child::Ip6AddrEntry::GetMlrState(v35, v37)];
        Rloc16 = ot::Neighbor::GetRloc16(v37);
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("MlrManager", "%-32s%c %04x", v24, v25, v26, v27, v28, v29, v30, v31, Rloc16);
      }

      v35 = (v35 + 16);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v40);
  }

  return result;
}

uint64_t ot::Child::HasAnyMlrToRegisterAddress(ot::Child *this)
{
  return ot::BitVector<(unsigned short)15>::HasAny(this + 445);
}

{
  return ot::Child::HasAnyMlrToRegisterAddress(this);
}

void ot::MlrManager::SendMlr(ot::MlrManager *this)
{
  v50 = this;
  v49 = 0;
  v48 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::MlrManager::AddressArray::AddressArray(v47);
  if (*(this + 22))
  {
    v49 = 5;
  }

  else if (ot::Mle::Mle::IsAttached(v48))
  {
    if (ot::Mle::Mle::IsFullThreadDevice(v48) || (Parent = ot::Mle::Mle::GetParent(v48), ot::Neighbor::IsThreadVersion1p1(Parent)))
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
      if (ot::BackboneRouter::Leader::HasPrimary(v9))
      {
        v27 = *(this + 22) & 1;
        IsAttached = ot::Mle::Mle::IsAttached(v48);
        IsFullThreadDevice = ot::Mle::Mle::IsFullThreadDevice(v48);
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
        HasPrimary = ot::BackboneRouter::Leader::HasPrimary(v10);
        otLogDebgPlat("MlrManager::SendMulticastListenerRegistration mlrPending:%d isAttached:%d isFTD:%d hasPrimary:%d", v27 & 1, IsAttached, IsFullThreadDevice, HasPrimary);
        v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
        v56 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v12, 3);
        v57 = v13;
        v44 = v56;
        v45 = v13;
        v46 = &v44;
        ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(v43, &v44);
        ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v42, v46);
        while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v43, v42))
        {
          v41 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v43);
          if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(v47))
          {
            break;
          }

          ot::Ip6::Netif::MulticastAddress::GetAddress(v41);
          ot::Ip6::Address::ToString(v55, v14);
          v26 = ot::String<(unsigned short)40>::AsCString(v55);
          MlrState = ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v41);
          otLogInfoPlat("MlrManager::SendMulticastListenerRegistration addr:%s state:%d", v26, MlrState);
          if (!ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v41))
          {
            ot::Ip6::Netif::MulticastAddress::GetAddress(v41);
            ot::MlrManager::AddressArray::AddUnique(v47, v16);
            ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(v41, 1);
          }

          ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v43);
        }

        v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        v39 = ot::ChildTable::Iterate(v17, 0);
        v40 = &v39;
        v53 = ot::ChildTable::IteratorBuilder::begin(&v39);
        v54 = v18;
        v37 = v53;
        v38 = v18;
        v51 = ot::ChildTable::IteratorBuilder::end(v40);
        v52 = v19;
        v35 = v51;
        v36 = v19;
        while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v37, &v35))
        {
          v34 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v37);
          if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(v47))
          {
            break;
          }

          if (ot::Child::HasAnyMlrToRegisterAddress(v34))
          {
            Ip6Addresses = ot::Child::GetIp6Addresses(v34);
            ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
            v32 = v20;
            v31 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
            while (v32 != v31)
            {
              if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v32))
              {
                if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(v47))
                {
                  break;
                }

                if (!ot::Child::Ip6AddrEntry::GetMlrState(v32, v34))
                {
                  ot::MlrManager::AddressArray::AddUnique(v47, v32);
                  ot::Child::Ip6AddrEntry::SetMlrState(v32, 1, v34);
                }
              }

              v32 = (v32 + 16);
            }
          }

          ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v37);
        }

        if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(v47))
        {
          v49 = 23;
        }

        else
        {
          ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetArrayBuffer();
          v25 = v21;
          Length = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(v47);
          v49 = ot::MlrManager::SendMlrMessage(this, v25, Length, 0, ot::MlrManager::HandleMlrResponse, this);
          if (!v49)
          {
            *(this + 22) = *(this + 22) & 0xFE | 1;
            v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
            if (!ot::Mle::Mle::IsRxOnWhenIdle(v23))
            {
              v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
              ot::DataPollSender::SendFastPolls(v24, 0);
            }
          }
        }
      }

      else
      {
        v49 = 13;
      }
    }

    else
    {
      v49 = 13;
    }
  }

  else
  {
    v49 = 13;
  }

  if (v49)
  {
    ot::MlrManager::SetMulticastAddressMlrState(this, 1u, 0);
    if (v49 == 3)
    {
      ot::MlrManager::ScheduleSend(this, 1u);
    }
  }

  ot::MlrManager::LogMulticastAddresses(this, v1, v2, v3, v4, v5, v6, v7);
  ot::MlrManager::CheckInvariants(this);
}

uint64_t ot::MlrManager::UpdateTimeTickerRegistration(ot::MlrManager *this)
{
  if (*(this + 10) || *(this + 4))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::RegisterReceiver(v3, 5);
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::UnregisterReceiver(v1, 5);
  }
}

void ot::MlrManager::AddressArray::AddUnique(ot::MlrManager::AddressArray *this, const ot::Ip6::Address *a2)
{
  if (!ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(this, a2))
  {
    ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(this, a2);
    IgnoreError();
  }
}

BOOL ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(uint64_t a1)
{
  return *(a1 + 240) == 0;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(a1);
}

uint64_t ot::MlrManager::SendMlrMessage(ot::InstanceLocator *a1, char *a2, unsigned __int8 a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v52 = a1;
  v51 = a2;
  v50 = a3;
  v49 = a4;
  v48 = a5;
  v47 = a6;
  v40 = a1;
  appended = 0;
  v45 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  v44 = 0;
  Instance = ot::InstanceLocator::GetInstance(v40);
  ot::Tmf::MessageInfo::MessageInfo(v43, Instance);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(v40);
  if (ot::BackboneRouter::Leader::HasPrimary(v7))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v40);
    v44 = ot::Coap::CoapBase::NewConfirmablePostMessage(v8, 0x27u);
    if (v44)
    {
      v39 = v42;
      ot::Ip6AddressesTlv::Init(v42);
      ot::Tlv::SetLength(v42, 16 * v50);
      appended = ot::Message::Append<ot::Ip6AddressesTlv>(v44, v42);
      if (appended)
      {
        goto LABEL_17;
      }

      appended = ot::Message::AppendBytes(v44, v51, 16 * v50);
      if (appended)
      {
        goto LABEL_17;
      }

      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(v40);
      if (ot::MeshCoP::Commissioner::IsActive(v9))
      {
        v38 = v44;
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(v40);
        SessionId = ot::MeshCoP::Commissioner::GetSessionId(v10);
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(v38, SessionId);
        if (appended)
        {
          goto LABEL_17;
        }
      }

      if (v49)
      {
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(v44, *v49);
        if (appended)
        {
          goto LABEL_17;
        }
      }

      if (ot::Mle::Mle::IsFullThreadDevice(v45) || (Parent = ot::Mle::Mle::GetParent(v45), !ot::Neighbor::IsThreadVersion1p1(Parent)))
      {
        ot::Ip6::MessageInfo::GetPeerAddr(v43);
        v35 = v15;
        MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v45);
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(v40);
        Server16 = ot::BackboneRouter::Leader::GetServer16(v16);
        ot::Ip6::Address::SetToRoutingLocator(v35, MeshLocalPrefix, Server16);
      }

      else
      {
        v41 = 0;
        v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(v40);
        appended = ot::BackboneRouter::Leader::GetServiceId(v13, &v41);
        if (appended)
        {
          goto LABEL_17;
        }

        v37 = v45;
        *v36 = v41;
        ot::Ip6::MessageInfo::GetPeerAddr(v43);
        ot::Mle::Mle::GetServiceAloc(v37, v36[0], v14);
      }

      v33 = v43;
      ot::Tmf::MessageInfo::SetSockAddrToRloc(v43);
      v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v40);
      appended = ot::Coap::CoapBase::SendMessage(v18, v44, v43, v48, v47);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("MlrManager", "Sent MLR.req: addressNum=%d", v19, v20, v21, v22, v23, v24, v50);
      goto LABEL_17;
    }

    appended = 3;
  }

  else
  {
    appended = 13;
  }

LABEL_17:
  v25 = ot::ErrorToString(appended);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MlrManager", "SendMlrMessage(): %s", v26, v27, v28, v29, v30, v31, v25);
  if (appended && v44)
  {
    ot::Message::Free(v44);
  }

  return appended;
}

void ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetArrayBuffer()
{
  ;
}

{
  ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetArrayBuffer();
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 240);
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(a1);
}

uint64_t ot::MlrManager::HandleMlrResponse(ot::MlrManager *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::MlrManager::HandleMlrResponse(a1, v7, v5, a4);
}

BOOL ot::MlrManager::SetMulticastAddressMlrState(ot::InstanceLocator *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  v36 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v3, 3);
  v37 = v4;
  v26 = v36;
  v27 = v4;
  v28 = &v26;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(v25, &v26);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v24, v28);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v25, v24))
  {
    v23 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v25);
    MlrState = ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v23);
    if (MlrState == v30)
    {
      ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(v23, v29);
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v25);
  }

  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
  v21 = ot::ChildTable::Iterate(v6, 0);
  v22 = &v21;
  v34 = ot::ChildTable::IteratorBuilder::begin(&v21);
  v35 = v7;
  v19 = v34;
  v20 = v7;
  v32 = ot::ChildTable::IteratorBuilder::end(v22);
  v33 = v8;
  v17 = v32;
  v18 = v8;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v19, &v17);
    if (!result)
    {
      break;
    }

    v16 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v19);
    Ip6Addresses = ot::Child::GetIp6Addresses(v16);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v14 = v10;
    v13 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v14 != v13)
    {
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v14))
      {
        v11 = ot::Child::Ip6AddrEntry::GetMlrState(v14, v16);
        if (v11 == v30)
        {
          ot::Child::Ip6AddrEntry::SetMlrState(v14, v29, v16);
        }
      }

      v14 = (v14 + 16);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v19);
  }

  return result;
}

uint64_t ot::MlrManager::RegisterMulticastListeners(ot::InstanceLocator *a1, char *a2, unsigned __int8 a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a3 && a3 <= 0xFu)
    {
      if (!a6 || a5)
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
        if (ot::MeshCoP::Commissioner::IsActive(v6))
        {
          if ((*(a1 + 22) & 2) != 0)
          {
            return 5;
          }

          else
          {
            v9 = ot::MlrManager::SendMlrMessage(a1, a2, a3, a4, ot::MlrManager::HandleRegisterResponse, a1);
            if (!v9)
            {
              *(a1 + 22) = *(a1 + 22) & 0xFD | 2;
              ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Set(a1, a5, a6);
            }
          }
        }

        else
        {
          return 13;
        }
      }

      else
      {
        return 7;
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 7;
  }

  return v9;
}

void *ot::MlrManager::HandleRegisterResponse(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::MlrManager::HandleRegisterResponse(a1, v7, v5, a4);
}

{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  v16 = 0;
  ot::MlrManager::AddressArray::AddressArray(v15);
  *(a1 + 22) &= ~2u;
  v11 = v18;
  ot::AsCoapMessagePtr();
  v16 = ot::MlrManager::ParseMlrResponse(v11, v4, &v17, v15, v5, v6, v7, v8);
  ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetArrayBuffer();
  v14 = v9;
  Length = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(v15);
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(a1, &v16, &v17, &v14, &Length);
}

void *ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Set(result, a2, a3);
}

uint64_t ot::MlrManager::ParseMlrResponse(unsigned int a1, ot::Tlv *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  *a3 = 6;
  if (v18 || !v17)
  {
    v14 = 6;
    goto LABEL_17;
  }

  if (ot::Coap::Message::GetCode(v17) != 68)
  {
    v14 = 6;
    goto LABEL_17;
  }

  v14 = ot::Tlv::Find<ot::ThreadStatusTlv>(v17, v16);
  if (!v14)
  {
    if (!ot::Tlv::FindTlvValueOffsetRange(v17, 0xE, &v13, v8))
    {
      if (ot::OffsetRange::GetLength(&v13) % 0x10uLL)
      {
        v14 = 6;
        goto LABEL_17;
      }

      if (ot::OffsetRange::GetLength(&v13) / 0x10uLL > 0xF)
      {
        v14 = 6;
        goto LABEL_17;
      }

      while (!ot::OffsetRange::IsEmpty(&v13))
      {
        v12 = v17;
        v9 = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(v15);
        ot::Message::Read<ot::Ip6::Address>(v12, &v13, v9);
        IgnoreError();
        ot::OffsetRange::AdvanceOffset(&v13, 0x10u);
      }
    }

    if (!ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(v15) && !*v16)
    {
      v14 = 6;
    }
  }

LABEL_17:
  ot::MlrManager::LogMlrResponse(v18, v14, *v16, v15, a5, a6, a7, a8);
  if (v18)
  {
    return v18;
  }

  else
  {
    return v14;
  }
}

void *ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(__int128 *a1, unsigned int *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6 = *a1;
  ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Clear(a1);
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(&v6, v10, v9, v8, v7);
}

{
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(a1, a2, a3, a4, a5);
}

uint64_t ot::MlrManager::HandleMlrResponse(ot::MlrManager *a1, ot::Tlv *a2, uint64_t a3, unsigned int a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  v16 = 0;
  ot::MlrManager::AddressArray::AddressArray(v15);
  v16 = ot::MlrManager::ParseMlrResponse(v18, v20, &v17, v15, v4, v5, v6, v7);
  v11 = 0;
  if (!v16)
  {
    v11 = v17 == 0;
  }

  ot::MlrManager::FinishMlr(a1, v11, v15);
  if (!v16 && !v17)
  {
    return ot::MlrManager::ScheduleSend(a1, 0);
  }

  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
  result = ot::BackboneRouter::Leader::GetConfig(v9, v13);
  if (!result)
  {
    if (v14 <= 1u)
    {
      Uint16InRange = 1;
    }

    else
    {
      Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(1, v14);
    }

    return ot::MlrManager::ScheduleSend(a1, Uint16InRange);
  }

  return result;
}

void ot::MlrManager::FinishMlr(ot::MlrManager *this, char a2, const ot::MlrManager::AddressArray *a3)
{
  v42 = this;
  v41 = a2;
  v40 = a3;
  if ((*(this + 22) & 1) == 0)
  {
    __assert_rtn("FinishMlr", "mlr_manager.cpp", 562, "mMlrPending");
  }

  *(this + 22) &= ~1u;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  v47 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v3, 3);
  v48 = v4;
  v37 = v47;
  v38 = v4;
  v39 = &v37;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(v36, &v37);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v35, v39);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v36, v35))
  {
    v34 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v36);
    if (ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v34) == 1)
    {
      LOBYTE(v21) = 1;
      if ((v41 & 1) == 0)
      {
        v20 = v40;
        ot::Ip6::Netif::MulticastAddress::GetAddress(v34);
        v21 = !ot::MlrManager::AddressArray::IsEmptyOrContains(v20, v5);
      }

      v33 = v21;
      if (v21)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(v34, v6);
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v36);
  }

  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v31 = ot::ChildTable::Iterate(v7, 0);
  v32 = &v31;
  v45 = ot::ChildTable::IteratorBuilder::begin(&v31);
  v46 = v8;
  v29 = v45;
  v30 = v8;
  v43 = ot::ChildTable::IteratorBuilder::end(v32);
  v44 = v9;
  v27 = v43;
  v28 = v9;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v29, &v27))
  {
    v26 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v29);
    Ip6Addresses = ot::Child::GetIp6Addresses(v26);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v24 = v17;
    v23 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v24 != v23)
    {
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v24) && ot::Child::Ip6AddrEntry::GetMlrState(v24, v26) == 1)
      {
        LOBYTE(v19) = 1;
        if ((v41 & 1) == 0)
        {
          v19 = !ot::MlrManager::AddressArray::IsEmptyOrContains(v40, v24);
        }

        if (v19)
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        ot::Child::Ip6AddrEntry::SetMlrState(v24, v18, v26);
      }

      v24 = (v24 + 16);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v29);
  }

  ot::MlrManager::LogMulticastAddresses(this, v10, v11, v12, v13, v14, v15, v16);
  ot::MlrManager::CheckInvariants(this);
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(uint64_t a1)
{
  if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(a1))
  {
    return 0;
  }

  v1 = (*(a1 + 240))++;
  return a1 + 16 * v1;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(a1);
}

void ot::MlrManager::LogMlrResponse(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a3;
  if (a1 || a2 || a3)
  {
    v23 = ot::ErrorToString(a1);
    v24 = ot::ErrorToString(a2);
    Length = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(a4);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("MlrManager", "Receive MLR.rsp: result=%s, error=%s, status=%d, failedAddressNum=%d", v9, v10, v11, v12, v13, v14, v23, v24, v28, Length);
    ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::begin();
    v26 = v15;
    v25 = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::end(a4);
    while (v26 != v25)
    {
      ot::Ip6::Address::ToString(v30, v26);
      v16 = ot::String<(unsigned short)40>::AsCString(v30);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("MlrManager", "MA failed: %s", v17, v18, v19, v20, v21, v22, v16);
      v26 = (v26 + 16);
    }
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("MlrManager", "Receive MLR.rsp OK", a3, a4, a5, a6, a7, a8);
  }
}

BOOL ot::MlrManager::AddressArray::IsEmptyOrContains(ot::MlrManager::AddressArray *this, const ot::Ip6::Address *a2)
{
  v4 = 1;
  if (!ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(this))
  {
    return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(this, a2);
  }

  return v4;
}

{
  return ot::MlrManager::AddressArray::IsEmptyOrContains(this, a2);
}

uint64_t ot::MlrManager::HandleTimeTick(ot::MlrManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 10))
  {
    v8 = *(this + 10);
    *(this + 10) = v8 - 1;
    if (v8 == 1)
    {
      ot::MlrManager::SendMlr(this);
    }
  }

  if (*(this + 4))
  {
    v9 = *(this + 4) - 1;
    *(this + 4) = v9;
    if (!v9)
    {
      ot::MlrManager::Reregister(this, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  return ot::MlrManager::UpdateTimeTickerRegistration(this);
}

void ot::MlrManager::Reregister(ot::MlrManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MlrManager", "MLR Reregister!", a3, a4, a5, a6, a7, a8);
  ot::MlrManager::SetMulticastAddressMlrState(this, 2u, 0);
  ot::MlrManager::CheckInvariants(this);
  ot::MlrManager::ScheduleSend(this, 0);
  ot::MlrManager::UpdateReregistrationDelay(this, 0);
}

void ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::begin()
{
  ;
}

{
  ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::begin();
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::end(uint64_t a1)
{
  return a1 + 16 * *(a1 + 240);
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::end(a1);
}

char *ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Find(uint64_t a1, const void *a2)
{
  v7 = 0;
  ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::end(a1);
  while (v5 != v4)
  {
    if (ot::Equatable<ot::Ip6::Address>::operator==(v5, a2))
    {
      return v5;
    }

    v5 += 16;
  }

  return v7;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Find(a1, a2);
}

void *ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Clear(result);
}

void *ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(void *result, unsigned int *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::Invoke<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(result, a2, a3, a4, a5);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(result, a2, a3, a4, a5);
}

uint64_t ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::Invoke<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5)
{
  return (*a1)(*(a1 + 8), *a2, *a3, *a4, *a5);
}

{
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::Invoke<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(a1, a2, a3, a4, a5);
}

ot::NeighborTable *ot::NeighborTable::NeighborTable(ot::NeighborTable *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *this = 0;
  return result;
}

{
  ot::NeighborTable::NeighborTable(this, a2);
  return this;
}

uint64_t ot::NeighborTable::FindParent(ot::InstanceLocator *a1, unsigned __int8 *a2)
{
  v6 = 0;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  Parent = ot::Mle::Mle::GetParent(v5);
  if (ot::Neighbor::Matches(Parent, a2))
  {
    return ot::Mle::Mle::GetParent(v5);
  }

  ParentCandidate = ot::Mle::Mle::GetParentCandidate(v5);
  if (ot::Neighbor::Matches(ParentCandidate, a2))
  {
    return ot::Mle::Mle::GetParentCandidate(v5);
  }

  return v6;
}

uint64_t ot::NeighborTable::FindParent(ot::InstanceLocator *a1, __int16 a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[21] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindParent(a1, v5);
}

uint64_t ot::NeighborTable::FindParent(ot::InstanceLocator *a1, uint64_t a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindParent(a1, v5);
}

uint64_t ot::NeighborTable::FindParent(ot::InstanceLocator *a1, ot::Mac::Address *a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindParent(a1, v5);
}

uint64_t ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, unsigned __int8 *a2)
{
  ChildOrRouter = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsRouterOrLeader(v2))
  {
    ChildOrRouter = ot::NeighborTable::FindChildOrRouter(a1, a2);
  }

  if (!ChildOrRouter)
  {
    return ot::NeighborTable::FindParent(a1, a2);
  }

  return ChildOrRouter;
}

uint64_t ot::NeighborTable::FindChildOrRouter(ot::InstanceLocator *a1, unsigned __int8 *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
  ot::ChildTable::FindChild(v2, a2);
  v8 = v3;
  if (!v3)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(a1);
    ot::RouterTable::FindRouter(v4, a2);
    return v5;
  }

  return v8;
}

uint64_t ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, unsigned __int16 a2, char a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (a2 != 0xFFFF && v8 != 65534)
  {
    ot::Neighbor::AddressMatcher::AddressMatcher(v5, v8, v7);
    return ot::NeighborTable::FindNeighbor(a1, v5);
  }

  return v6;
}

uint64_t ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, uint64_t a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindNeighbor(a1, v5);
}

uint64_t ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, ot::Mac::Address *a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindNeighbor(a1, v5);
}

void ot::RouterTable::FindRouter(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::FindRouter(v2, a2);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::FindRouter(a1, a2);
}

ot::Child *ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, ot::Ip6::Address *a2, char a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0;
  ot::Mac::Address::Address(v22);
  if (ot::Ip6::Address::IsLinkLocalUnicast(v25, v3))
  {
    Iid = ot::Ip6::Address::GetIid(v25);
    ot::Ip6::InterfaceIdentifier::ConvertToMacAddress(Iid, v22);
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsRoutingLocator(v5, v25))
  {
    v6 = ot::Ip6::Address::GetIid(v25);
    Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v6, v7);
    ot::Mac::Address::SetShort(v22, Locator);
  }

  if (ot::Mac::Address::IsNone(v22))
  {
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
    v19 = ot::ChildTable::Iterate(v9, v24);
    v20 = &v19;
    v29 = ot::ChildTable::IteratorBuilder::begin(&v19);
    v30 = v10;
    v17 = v29;
    v18 = v10;
    v27 = ot::ChildTable::IteratorBuilder::end(v20);
    v28 = v11;
    v15 = v27;
    v16 = v11;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v17, &v15))
    {
      v14 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v17);
      if (ot::Child::HasIp6Address(v14, v25))
      {
        return v14;
      }

      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v17);
    }
  }

  else
  {
    ot::Neighbor::AddressMatcher::AddressMatcher(v21, v22, v24);
    return ot::NeighborTable::FindNeighbor(a1, v21);
  }

  return v23;
}

uint64_t ot::NeighborTable::FindRxOnlyNeighborRouter(ot::NeighborTable *this, const ot::Mac::ExtAddress *a2)
{
  v6 = this;
  v5 = a2;
  ot::Mac::Address::Address(v4);
  ot::Mac::Address::SetExtended(v4, v5);
  return ot::NeighborTable::FindRxOnlyNeighborRouter(this, v4);
}

uint64_t ot::NeighborTable::FindRxOnlyNeighborRouter(ot::NeighborTable *this, const ot::Mac::Address *a2)
{
  v7 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsChild(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    ot::RouterTable::FindNeighbor(v3, a2);
    return v4;
  }

  return v7;
}

uint64_t ot::NeighborTable::GetNextNeighborInfo(ot::NeighborTable *this, unsigned __int16 *a2, ot::Neighbor::Info *a3)
{
  v18 = 0;
  v15 = *a2;
  if (*a2 < 0)
  {
LABEL_8:
    for (i = -*a2; i <= 62; ++i)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
      ot::RouterTable::FindRouterById(v4, i);
      v13 = v5;
      if (v5 && ot::Neighbor::IsStateValid(v5))
      {
        ot::Neighbor::Info::SetFrom(a3, v13);
        *(a3 + 54) &= ~8u;
        *a2 = -(i + 1);
        return v18;
      }
    }

    *a2 = -i;
    v18 = 23;
    if (!v15)
    {
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::GetRole(v6) == 2)
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        Parent = ot::Mle::Mle::GetParent(v7);
        if (ot::Neighbor::IsStateValid(Parent))
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
          v10 = ot::Mle::Mle::GetParent(v9);
          ot::Neighbor::Info::SetFrom(a3, v10);
          *(a3 + 54) &= ~8u;
          return 0;
        }
      }
    }
  }

  else
  {
    for (j = *a2; ; ++j)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ChildAtIndex = ot::ChildTable::GetChildAtIndex(v3, j);
      if (!ChildAtIndex)
      {
        *a2 = 0;
        goto LABEL_8;
      }

      if (ot::Neighbor::IsStateValid(ChildAtIndex))
      {
        break;
      }
    }

    ot::Neighbor::Info::SetFrom(a3, ChildAtIndex);
    *(a3 + 54) = *(a3 + 54) & 0xF7 | 8;
    *a2 = j + 1;
  }

  return v18;
}

void ot::NeighborTable::Signal(ot::InstanceLocator *a1, unsigned __int8 a2, const ot::Neighbor *a3)
{
  ot::InstanceLocator::GetInstance(a1);
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (!a2 || a2 == 3))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
    if (ot::Mle::Mle::GetRole(v3) == 4 || (v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1), ot::Mle::Mle::GetRole(v4) == 3))
    {
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      Role = ot::Mle::Mle::GetRole(v5);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      ot::Mle::Mle::SetThreadCoexConfig(v14, 0, Role, *(v6 + 132));
    }
  }

  Instance = ot::InstanceLocator::GetInstance(a1);
  if (a2 <= 2u)
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
    if (!ot::ChildTable::Contains(v7, a3))
    {
      __assert_rtn("Signal", "neighbor_table.cpp", 364, "Get<ChildTable>().Contains(aNeighbor)");
    }

    ot::Child::Info::SetFrom(v19, a3);
  }

  else if (a2 == 4 || a2 == 3)
  {
    ot::Neighbor::Info::SetFrom(v19, a3);
  }

  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(a1);
  ot::Utils::HistoryTracker::RecordNeighborEvent(v8, a2, &Instance);
  if (*a1)
  {
    (*a1)(a2, &Instance);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
      ot::Notifier::Signal(v10, 2048);
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(a1);
      ot::DuaManager::HandleChildDuaAddressEvent(v11, a3, 2);
    }

    else if (a2 == 4 || a2 == 3)
    {
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(a1);
      ot::RouterTable::SignalTableChanged(v12);
    }
  }

  else
  {
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
    ot::Notifier::Signal(v9, 1024);
  }
}

uint64_t ot::NetworkData::NetworkData::CopyNetworkData(ot::InstanceLocator *a1, char a2, unsigned __int8 *a3, char *a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::NetworkData::MutableNetworkData::MutableNetworkData(v8, Instance, v11, 0, *v10);
  v9 = ot::NetworkData::NetworkData::CopyNetworkData(a1, v12, v8);
  if (!v9)
  {
    Length = ot::NetworkData::NetworkData::GetLength(v8);
    *v10 = Length;
  }

  return v9;
}

uint64_t ot::NetworkData::NetworkData::CopyNetworkData(uint64_t a1, char a2, ot::NetworkData::MutableNetworkData *a3)
{
  v6 = 0;
  if (ot::NetworkData::MutableNetworkData::GetSize(a3) < *(a1 + 8))
  {
    return 3;
  }

  else
  {
    ot::NetworkData::MutableNetworkData::GetBytes(a3);
    memcpy(v3, *a1, *(a1 + 8));
    ot::NetworkData::MutableNetworkData::SetLength(a3, *(a1 + 8));
    ot::NetworkData::NetworkData::PrintServiceTLVInfo(a3);
    if (a2 == 1)
    {
      ot::NetworkData::MutableNetworkData::RemoveTemporaryData(a3);
    }
  }

  return v6;
}

uint64_t ot::NetworkData::MutableNetworkData::GetSize(ot::NetworkData::MutableNetworkData *this)
{
  return *(this + 9);
}

{
  return ot::NetworkData::MutableNetworkData::GetSize(this);
}

void ot::NetworkData::MutableNetworkData::GetBytes(ot::NetworkData::MutableNetworkData *this)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::GetBytes(v1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::NetworkData::MutableNetworkData::GetBytes(this);
}

uint64_t ot::NetworkData::MutableNetworkData::SetLength(uint64_t this, char a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::NetworkData::MutableNetworkData::SetLength(this, a2);
}

void ot::NetworkData::NetworkData::PrintServiceTLVInfo(ot::NetworkData::NetworkData *this)
{
  v52 = this;
  v43 = this;
  v51 = 0;
  NextThreadService = 0;
  v44 = v49;
  ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(v49, &ot::NetworkData::Service::DnsSrpUnicast::kServiceData);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v43);
  NextThreadService = ot::NetworkData::NetworkData::FindNextThreadService(v1, NextThreadService, v49, 0);
  if (NextThreadService)
  {
    v48 = 0;
    if (ot::Data<(ot::DataLengthType)0>::GetLength(v49) <= 3uLL)
    {
      v41 = v49;
      Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(v49);
      Length = ot::Data<(ot::DataLengthType)0>::GetLength(v49);
      encode_data_into_string(Bytes, Length, &v48, 4uLL, 0);
      ot::NetworkData::TlvIterator::TlvIterator(v47, NextThreadService);
      v46 = 0;
      while (1)
      {
        ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(v47);
        v46 = v3;
        if (!v3)
        {
          break;
        }

        ++v51;
        memset(__b, 0, sizeof(__b));
        v40 = v45;
        ot::NetworkData::ServerTlv::GetServerData(v46, v45);
        if (ot::Data<(ot::DataLengthType)0>::GetLength(v40) >= 0x64uLL)
        {
          v17 = ot::Data<(ot::DataLengthType)0>::GetLength(v45);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("NetworkData", "%s:Error ServerDataLen:%d", v18, v19, v20, v21, v22, v23, "PrintServiceTLVInfo", v17);
        }

        else
        {
          v30 = v45;
          v25 = ot::Data<(ot::DataLengthType)0>::GetBytes(v45);
          v4 = ot::Data<(ot::DataLengthType)0>::GetLength(v30);
          v36 = __b;
          encode_data_into_string(v25, v4, __b, 0x64uLL, 0);
          v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v43);
          v26 = ot::Data<(ot::DataLengthType)0>::GetBytes(v49);
          *v27 = ot::NetworkData::ServiceTlv::GetServiceDataLength(NextThreadService);
          v28 = ot::Data<(ot::DataLengthType)0>::GetBytes(v30);
          v5 = ot::Data<(ot::DataLengthType)0>::GetLength(v30);
          ot::AppMetricsManager::SetSrpPortIfSrpSerivceData(v29, v26, *v27, v28, v5, v6, v7, v8);
          v31 = v51;
          Type = ot::NetworkData::NetworkDataTlv::GetType(NextThreadService);
          EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(NextThreadService);
          ServiceDataLength = ot::NetworkData::ServiceTlv::GetServiceDataLength(NextThreadService);
          IsStable = ot::NetworkData::NetworkDataTlv::IsStable(v46);
          v37 = ot::Data<(ot::DataLengthType)0>::GetLength(v30);
          Server16 = ot::NetworkData::ServerTlv::GetServer16(v46, v9);
          ServiceId = ot::NetworkData::ServiceTlv::GetServiceId(NextThreadService);
          v39 = &v24;
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "%s: Entry:%d ServiceType:%d, EnterpriseNumber:%d, ServiceData:%s, ServiceDataLen:%d, Stable:%d, ServerData:%s, ServerDataLen:%d, Rloc16:0x%04x, Sid:%d", v11, v12, v13, v14, v15, v16, "PrintServiceTLVInfo", v31, Type, EnterpriseNumber, &v48, ServiceDataLength, IsStable, v36, v37, Server16, ServiceId);
        }
      }
    }
  }
}

void ot::NetworkData::MutableNetworkData::RemoveTemporaryData(ot::NetworkData::MutableNetworkData *this)
{
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
  Next = v1;
  while (1)
  {
    ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
    if (Next >= v2)
    {
      break;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(Next);
    if (Type == 1)
    {
      ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
      v7 = ot::NetworkData::MutableNetworkData::RemoveTemporaryDataIn(this, v3);
    }

    else if (Type == 5)
    {
      ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
      v7 = ot::NetworkData::MutableNetworkData::RemoveTemporaryDataIn(this, v4);
    }

    else
    {
      v7 = !ot::NetworkData::NetworkDataTlv::IsStable(Next);
    }

    if (v7)
    {
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, Next);
    }

    else
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(Next);
    }
  }
}

uint64_t ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(uint64_t a1, uint64_t a2)
{
  return ot::Data<(ot::DataLengthType)0>::Init(a1, a2, 1);
}

{
  return ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(a1, a2);
}

ot::NetworkData::TlvIterator *ot::NetworkData::TlvIterator::TlvIterator(ot::NetworkData::TlvIterator *this, const ot::NetworkData::ServiceTlv *a2)
{
  SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(a2);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(a2);
  ot::Cli::Dataset::Dataset(this, SubTlvs, Next);
  return this;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 6u);
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(a1);
}

uint64_t ot::NetworkData::ServerTlv::GetServerData(ot::NetworkData::ServerTlv *a1, uint64_t a2)
{
  ServerData = ot::NetworkData::ServerTlv::GetServerData(a1);
  ServerDataLength = ot::NetworkData::ServerTlv::GetServerDataLength(a1);
  return ot::Data<(ot::DataLengthType)0>::Init(a2, ServerData, ServerDataLength);
}

{
  return ot::NetworkData::ServerTlv::GetServerData(a1, a2);
}

uint64_t ot::NetworkData::ServiceTlv::GetServiceDataLength(ot::NetworkData::ServiceTlv *this)
{
  if (ot::NetworkData::ServiceTlv::IsThreadEnterprise(this))
  {
    return *(this + 3);
  }

  else
  {
    return *(this + 7);
  }
}

{
  return ot::NetworkData::ServiceTlv::GetServiceDataLength(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetType(ot::NetworkData::NetworkDataTlv *this)
{
  return *this >> 1;
}

{
  return ot::NetworkData::NetworkDataTlv::GetType(this);
}

uint64_t ot::NetworkData::ServiceTlv::GetEnterpriseNumber(ot::NetworkData::ServiceTlv *this)
{
  if (ot::NetworkData::ServiceTlv::IsThreadEnterprise(this))
  {
    return 44970;
  }

  else
  {
    return ot::BigEndian::HostSwap32(*(this + 3), v1);
  }
}

{
  return ot::NetworkData::ServiceTlv::GetEnterpriseNumber(this);
}

BOOL ot::NetworkData::NetworkDataTlv::IsStable(ot::NetworkData::NetworkDataTlv *this)
{
  return (*this & 1) != 0;
}

{
  return ot::NetworkData::NetworkDataTlv::IsStable(this);
}

uint64_t ot::NetworkData::ServerTlv::GetServer16(ot::NetworkData::ServerTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::NetworkData::ServerTlv::GetServer16(this, a2);
}

uint64_t ot::NetworkData::ServiceTlv::GetServiceId(ot::NetworkData::ServiceTlv *this)
{
  return *(this + 2) & 0xF;
}

{
  return ot::NetworkData::ServiceTlv::GetServiceId(this);
}

uint64_t ot::NetworkData::NetworkData::GetNextOnMeshPrefix(const unsigned __int8 **this, unsigned int *a2, unsigned __int16 a3, ot::NetworkData::OnMeshPrefixConfig *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5[4] = a4;
  v5[0] = a4;
  memset(&v5[1], 0, 24);
  return ot::NetworkData::NetworkData::Iterate(this, a2, a3, v5);
}

uint64_t ot::NetworkData::NetworkData::Iterate(const unsigned __int8 **a1, uint64_t a2, unsigned __int16 a3, ot::NetworkData::OnMeshPrefixConfig **a4)
{
  v48 = a1;
  v47 = a2;
  v46 = a3;
  v45 = a4;
  v44 = 23;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v43, a2);
  while (1)
  {
    Tlv = ot::NetworkData::NetworkData::NetworkDataIterator::GetTlv(&v43, *a1);
    v31 = 0;
    if (Tlv + 2 <= ot::NetworkData::NetworkData::GetTlvsEnd(a1))
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(Tlv);
      v31 = Next <= ot::NetworkData::NetworkData::GetTlvsEnd(a1);
    }

    if (!v31)
    {
      break;
    }

    SubTlvs = 0;
    Type = ot::NetworkData::NetworkDataTlv::GetType(Tlv);
    if (Type == 1)
    {
      if (*v45 || v45[1] || v45[3])
      {
        ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
        SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(v4);
      }
    }

    else if (Type == 5 && v45[2])
    {
      ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
      SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(v5);
    }

    if (SubTlvs)
    {
      while (1)
      {
        SubTlv = ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlv(&v43, SubTlvs);
        v28 = 0;
        if (SubTlv + 2 <= ot::NetworkData::NetworkDataTlv::GetNext(Tlv))
        {
          v27 = ot::NetworkData::NetworkDataTlv::GetNext(SubTlv);
          v28 = v27 <= ot::NetworkData::NetworkDataTlv::GetNext(Tlv);
        }

        if (!v28)
        {
          break;
        }

        if (ot::NetworkData::NetworkDataTlv::GetType(Tlv) == 1)
        {
          ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
          v39 = v6;
          v26 = ot::NetworkData::NetworkDataTlv::GetType(SubTlv);
          if (v26)
          {
            if (v26 == 2)
            {
              ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
              v38 = v7;
              if (*v45)
              {
                while (1)
                {
                  v25 = ot::NetworkData::NetworkData::NetworkDataIterator::GetAndAdvanceIndex(&v43);
                  if (v25 >= ot::NetworkData::BorderRouterTlv::GetNumEntries(v38))
                  {
                    break;
                  }

                  if (v46 != 0xFFFF)
                  {
                    Entry = ot::NetworkData::BorderRouterTlv::GetEntry(v38, v25);
                    Rloc = ot::NetworkData::BorderRouterEntry::GetRloc(Entry, v9);
                    if (Rloc != v46)
                    {
                      continue;
                    }
                  }

                  v11 = ot::NetworkData::BorderRouterTlv::GetEntry(v38, v25);
                  v45[1] = 0;
                  v45[2] = 0;
                  v45[3] = 0;
                  ot::NetworkData::OnMeshPrefixConfig::SetFrom(*v45, v39, v38, v11);
                  return 0;
                }
              }
            }

            else if (v26 == 3)
            {
              ot::NetworkData::As<ot::NetworkData::ContextTlv>();
              v35 = v17;
              if (v45[3])
              {
                if (ot::NetworkData::NetworkData::NetworkDataIterator::IsNewEntry(&v43))
                {
                  *v45 = 0;
                  v45[1] = 0;
                  v45[2] = 0;
                  ot::NetworkData::LowpanContextInfo::SetFrom(v45[3], v39, v35);
                  ot::NetworkData::NetworkData::NetworkDataIterator::MarkEntryAsNotNew(&v43);
                  return 0;
                }
              }
            }
          }

          else
          {
            ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
            v37 = v12;
            if (v45[1])
            {
              while (1)
              {
                v24 = ot::NetworkData::NetworkData::NetworkDataIterator::GetAndAdvanceIndex(&v43);
                if (v24 >= ot::NetworkData::HasRouteTlv::GetNumEntries(v37))
                {
                  break;
                }

                if (v46 != 0xFFFF)
                {
                  v13 = ot::NetworkData::HasRouteTlv::GetEntry(v37, v24);
                  v15 = ot::NetworkData::HasRouteEntry::GetRloc(v13, v14);
                  if (v15 != v46)
                  {
                    continue;
                  }
                }

                v36 = ot::NetworkData::HasRouteTlv::GetEntry(v37, v24);
                *v45 = 0;
                v45[2] = 0;
                v45[3] = 0;
                v23 = v45[1];
                Instance = ot::InstanceLocator::GetInstance(a1);
                ot::NetworkData::ExternalRouteConfig::SetFrom(v23, Instance, v39, v37, v36);
                return 0;
              }
            }
          }
        }

        else
        {
          ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
          v34 = v18;
          if (v45[2])
          {
            if (ot::NetworkData::NetworkDataTlv::GetType(SubTlv) == 6)
            {
              ot::NetworkData::As<ot::NetworkData::ServerTlv>();
              v33 = v19;
              if (ot::NetworkData::NetworkData::NetworkDataIterator::IsNewEntry(&v43))
              {
                if (v46 == 0xFFFF || (Server16 = ot::NetworkData::ServerTlv::GetServer16(v33, v20), Server16 == v46))
                {
                  *v45 = 0;
                  v45[1] = 0;
                  v45[3] = 0;
                  ot::NetworkData::ServiceConfig::SetFrom(v45[2], v34, v33);
                  ot::NetworkData::NetworkData::NetworkDataIterator::MarkEntryAsNotNew(&v43);
                  return 0;
                }
              }
            }
          }
        }

        ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceSubTlv(&v43, SubTlvs);
      }
    }

    ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceTlv(&v43, *a1);
  }

  return v44;
}

uint64_t ot::NetworkData::NetworkData::GetNextExternalRoute(const unsigned __int8 **this, unsigned int *a2, unsigned __int16 a3, ot::NetworkData::ExternalRouteConfig *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5[4] = a4;
  v5[0] = 0;
  v5[1] = a4;
  v5[2] = 0;
  v5[3] = 0;
  return ot::NetworkData::NetworkData::Iterate(this, a2, a3, v5);
}

uint64_t ot::NetworkData::NetworkData::GetNextService(const unsigned __int8 **this, unsigned int *a2, unsigned __int16 a3, ot::NetworkData::ServiceConfig *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5[4] = a4;
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = a4;
  v5[3] = 0;
  return ot::NetworkData::NetworkData::Iterate(this, a2, a3, v5);
}

uint64_t ot::NetworkData::NetworkData::GetNextLowpanContextInfo(ot::NetworkData::NetworkData *this, ot::NetworkData::OnMeshPrefixConfig *a2, ot::NetworkData::LowpanContextInfo *a3)
{
  v4[6] = this;
  v4[5] = a2;
  v4[4] = a3;
  memset(v4, 0, 24);
  v4[3] = a3;
  return ot::NetworkData::NetworkData::Iterate(this, a2, 0xFFFFu, v4);
}

const unsigned __int8 *ot::NetworkData::NetworkData::NetworkDataIterator::GetTlv(ot::NetworkData::NetworkData::NetworkDataIterator *this, const unsigned __int8 *a2)
{
  return &a2[ot::NetworkData::NetworkData::NetworkDataIterator::GetTlvOffset(this)];
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetTlv(this, a2);
}

uint64_t ot::NetworkData::NetworkData::GetTlvsEnd(ot::NetworkData::NetworkData *this)
{
  return *this + *(this + 8);
}

{
  return ot::NetworkData::NetworkData::GetTlvsEnd(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetNext(ot::NetworkData::NetworkDataTlv *this)
{
  return this + *(this + 1) + 2;
}

{
  return this + *(this + 1) + 2;
}

{
  return ot::NetworkData::NetworkDataTlv::GetNext(this);
}

{
  return ot::NetworkData::NetworkDataTlv::GetNext(this);
}

void ot::NetworkData::As<ot::NetworkData::PrefixTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
}

uint64_t ot::NetworkData::PrefixTlv::GetSubTlvs(ot::NetworkData::PrefixTlv *this)
{
  Prefix = ot::NetworkData::PrefixTlv::GetPrefix(this);
  return Prefix + ot::Ip6::Prefix::SizeForLength(*(this + 3));
}

{
  Prefix = ot::NetworkData::PrefixTlv::GetPrefix(this);
  return Prefix + ot::Ip6::Prefix::SizeForLength(*(this + 3));
}

{
  return ot::NetworkData::PrefixTlv::GetSubTlvs(this);
}

{
  return ot::NetworkData::PrefixTlv::GetSubTlvs(this);
}

void ot::NetworkData::As<ot::NetworkData::ServiceTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
}

uint64_t ot::NetworkData::ServiceTlv::GetSubTlvs(ot::NetworkData::ServiceTlv *this)
{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::ServiceTlv::GetFieldsLength(this);
}

{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::ServiceTlv::GetFieldsLength(this);
}

{
  return ot::NetworkData::ServiceTlv::GetSubTlvs(this);
}

{
  return ot::NetworkData::ServiceTlv::GetSubTlvs(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlv(ot::NetworkData::NetworkData::NetworkDataIterator *this, const ot::NetworkData::NetworkDataTlv *a2)
{
  return a2 + ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlvOffset(this);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlv(this, a2);
}

void ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetAndAdvanceIndex(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  v1 = *this;
  result = *(*this + 2);
  *(v1 + 2) = result + 1;
  return result;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetAndAdvanceIndex(this);
}

uint64_t ot::NetworkData::BorderRouterTlv::GetNumEntries(ot::NetworkData::BorderRouterTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetLength(this) / 4u;
}

{
  return ot::NetworkData::BorderRouterTlv::GetNumEntries(this);
}

uint64_t ot::NetworkData::BorderRouterTlv::GetEntry(ot::NetworkData::BorderRouterTlv *this, unsigned __int8 a2)
{
  return ot::NetworkData::NetworkDataTlv::GetValue(this) + 4 * a2;
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this) + 4 * a2;
}

{
  return ot::NetworkData::BorderRouterTlv::GetEntry(this, a2);
}

{
  return ot::NetworkData::BorderRouterTlv::GetEntry(this, a2);
}

uint64_t ot::NetworkData::BorderRouterEntry::GetRloc(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*this, a2);
}

{
  return ot::NetworkData::BorderRouterEntry::GetRloc(this, a2);
}

void ot::NetworkData::As<ot::NetworkData::HasRouteTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

uint64_t ot::NetworkData::HasRouteTlv::GetNumEntries(ot::NetworkData::HasRouteTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetLength(this) / 3u;
}

{
  return ot::NetworkData::HasRouteTlv::GetNumEntries(this);
}

uint64_t ot::NetworkData::HasRouteTlv::GetEntry(ot::NetworkData::HasRouteTlv *this, unsigned __int8 a2)
{
  return ot::NetworkData::NetworkDataTlv::GetValue(this) + 3 * a2;
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this) + 3 * a2;
}

{
  return ot::NetworkData::HasRouteTlv::GetEntry(this, a2);
}

{
  return ot::NetworkData::HasRouteTlv::GetEntry(this, a2);
}

uint64_t ot::NetworkData::HasRouteEntry::GetRloc(ot::NetworkData::HasRouteEntry *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*this, a2);
}

{
  return ot::NetworkData::HasRouteEntry::GetRloc(this, a2);
}

void ot::NetworkData::As<ot::NetworkData::ContextTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

BOOL ot::NetworkData::NetworkData::NetworkDataIterator::IsNewEntry(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetEntryIndex(this) == 0;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::IsNewEntry(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::MarkEntryAsNotNew(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(this, 1);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::MarkEntryAsNotNew(this);
}

void ot::NetworkData::As<ot::NetworkData::ServerTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceSubTlv(ot::NetworkData::NetworkData::NetworkDataIterator *this, const ot::NetworkData::NetworkDataTlv *a2)
{
  SubTlv = ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlv(this, a2);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(SubTlv);
  ot::NetworkData::NetworkData::NetworkDataIterator::SaveSubTlvOffset(this, Next, a2);
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(this, 0);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceSubTlv(this, a2);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceTlv(ot::NetworkData::NetworkData::NetworkDataIterator *this, const unsigned __int8 *a2)
{
  Tlv = ot::NetworkData::NetworkData::NetworkDataIterator::GetTlv(this, a2);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(Tlv);
  ot::NetworkData::NetworkData::NetworkDataIterator::SaveTlvOffset(this, Next, a2);
  ot::NetworkData::NetworkData::NetworkDataIterator::SetSubTlvOffset(this, 0);
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(this, 0);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceTlv(this, a2);
}

uint64_t ot::NetworkData::NetworkData::ContainsOnMeshPrefix(const unsigned __int8 **this, const ot::NetworkData::OnMeshPrefixConfig *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  while (!ot::NetworkData::NetworkData::GetNextOnMeshPrefix(this, &v5, v7[10], v4))
  {
    if (ot::Equatable<ot::NetworkData::OnMeshPrefixConfig>::operator==(v4, v7))
    {
      v6 = 1;
      return v6 & 1;
    }
  }

  return v6 & 1;
}

BOOL ot::Equatable<ot::NetworkData::OnMeshPrefixConfig>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x18uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkData::OnMeshPrefixConfig>::operator==(a1, a2);
}

uint64_t ot::NetworkData::NetworkData::ContainsExternalRoute(const unsigned __int8 **this, const ot::NetworkData::ExternalRouteConfig *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  while (!ot::NetworkData::NetworkData::GetNextExternalRoute(this, &v5, v7[9], v4))
  {
    if (ot::Equatable<ot::NetworkData::ExternalRouteConfig>::operator==(v4, v7))
    {
      v6 = 1;
      return v6 & 1;
    }
  }

  return v6 & 1;
}

BOOL ot::Equatable<ot::NetworkData::ExternalRouteConfig>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x18uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkData::ExternalRouteConfig>::operator==(a1, a2);
}

uint64_t ot::NetworkData::NetworkData::ContainsService(const unsigned __int8 **this, const ot::NetworkData::ServiceConfig *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  while (1)
  {
    ServerConfig = ot::NetworkData::ServiceConfig::GetServerConfig(v7);
    if (ot::NetworkData::NetworkData::GetNextService(this, &v5, *(ServerConfig + 250), v9))
    {
      break;
    }

    if (ot::NetworkData::ServiceConfig::operator==(v9, v7))
    {
      v6 = 1;
      return v6 & 1;
    }
  }

  return v6 & 1;
}

uint64_t ot::NetworkData::ServiceConfig::GetServerConfig(ot::NetworkData::ServiceConfig *this)
{
  return this + 262;
}

{
  return this + 262;
}

{
  return ot::NetworkData::ServiceConfig::GetServerConfig(this);
}

{
  return ot::NetworkData::ServiceConfig::GetServerConfig(this);
}

uint64_t ot::NetworkData::NetworkData::ContainsEntriesFrom(const unsigned __int8 **this, const unsigned __int8 **a2, unsigned __int16 a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = 1;
  v11 = 0;
  while (1)
  {
    v7 = &v6;
    v8 = &v5;
    v9 = &v16;
    v10 = 0;
    if (ot::NetworkData::NetworkData::Iterate(v14, &v11, v13, &v7))
    {
      break;
    }

    if (v7 && (ot::NetworkData::NetworkData::ContainsOnMeshPrefix(this, v7) & 1) == 0 || v8 && (ot::NetworkData::NetworkData::ContainsExternalRoute(this, v8) & 1) == 0 || v9 && (ot::NetworkData::NetworkData::ContainsService(this, v9) & 1) == 0)
    {
      v12 = 0;
      return v12 & 1;
    }
  }

  return v12 & 1;
}

ot::NetworkData::PrefixTlv *ot::NetworkData::NetworkData::FindPrefix(ot::NetworkData::NetworkData *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  ot::NetworkData::TlvIterator::TlvIterator(v6, *this, *(this + 8));
  do
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(v6);
    v5 = v3;
  }

  while (v3 && !ot::NetworkData::PrefixTlv::IsEqual(v3, v8, v7));
  return v5;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 1u);
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(a1);
}

BOOL ot::NetworkData::PrefixTlv::IsEqual(ot::NetworkData::PrefixTlv *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  v7 = 0;
  if (a3 == *(this + 3))
  {
    Prefix = ot::NetworkData::PrefixTlv::GetPrefix(this);
    v3 = ot::Ip6::Prefix::SizeForLength(a3);
    return ot::Ip6::Prefix::MatchLength(Prefix, a2, v3) >= *(this + 3);
  }

  return v7;
}

{
  return ot::NetworkData::PrefixTlv::IsEqual(this, a2, a3);
}

ot::NetworkData::ServiceTlv *ot::NetworkData::NetworkData::FindService(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  ot::NetworkData::TlvIterator::TlvIterator(v7, *a1, *(a1 + 8));
  do
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServiceTlv>(v7);
    v6 = v4;
  }

  while (v4 && !ot::NetworkData::NetworkData::MatchService(v4, v10, v9, v8));
  return v6;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServiceTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 5u);
  ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServiceTlv>(a1);
}

BOOL ot::NetworkData::NetworkData::MatchService(ot::NetworkData::ServiceTlv *a1, int a2, uint64_t a3, char a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  if (ot::NetworkData::ServiceTlv::GetEnterpriseNumber(a1) == a2)
  {
    ot::NetworkData::ServiceTlv::GetServiceData(v10, v5);
    if (v7)
    {
      if (v7 == 1)
      {
        return ot::Data<(ot::DataLengthType)0>::operator==(v5, v8);
      }
    }

    else
    {
      return ot::Data<(ot::DataLengthType)0>::StartsWith(v5, v8);
    }
  }

  return v6;
}

ot::NetworkData::ServiceTlv *ot::NetworkData::NetworkData::FindNextService(uint64_t a1, ot::NetworkData::NetworkDataTlv *a2, int a3, uint64_t a4, char a5)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  Next = 0;
  v9 = 0;
  if (a2)
  {
    Next = ot::NetworkData::NetworkDataTlv::GetNext(v14);
    v9 = *a1 + *(a1 + 8) - Next;
  }

  else
  {
    Next = *a1;
    v9 = *(a1 + 8);
  }

  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::NetworkData::NetworkData::NetworkData(v8, Instance, Next, v9);
  return ot::NetworkData::NetworkData::FindService(v8, v13, v12, v11);
}

uint64_t ot::NetworkData::ServiceTlv::GetServiceData(ot::NetworkData::ServiceTlv *a1, uint64_t a2)
{
  ServiceData = ot::NetworkData::ServiceTlv::GetServiceData(a1);
  ServiceDataLength = ot::NetworkData::ServiceTlv::GetServiceDataLength(a1);
  return ot::Data<(ot::DataLengthType)0>::Init(a2, ServiceData, ServiceDataLength);
}

{
  return ot::NetworkData::ServiceTlv::GetServiceData(a1, a2);
}

BOOL ot::Data<(ot::DataLengthType)0>::StartsWith(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*(a1 + 8) >= *(a2 + 8))
  {
    return ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(a2, *a1);
  }

  return v3;
}

{
  return ot::Data<(ot::DataLengthType)0>::StartsWith(a1, a2);
}

uint64_t ot::NetworkData::NetworkData::FindRlocs(const unsigned __int8 **a1, char a2, char a3, uint64_t a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = 0;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Clear(a4);
  while (1)
  {
    v9 = &v15;
    v10 = &v13;
    v11 = &v23;
    v12 = 0;
    result = ot::NetworkData::NetworkData::Iterate(a1, &v18, 0xFFFFu, &v9);
    if (result)
    {
      break;
    }

    if (v9)
    {
      v8 = 1;
      if (v21 && v21 == 1)
      {
        v6 = 0;
        if ((v16 & 0x80) != 0)
        {
          LOBYTE(v5) = 1;
          if ((v16 & 0x40) == 0)
          {
            v5 = (v16 >> 10) & 1;
          }

          v6 = v5;
        }

        v8 = v6;
      }

      if (v8)
      {
        ot::NetworkData::NetworkData::AddRloc16ToRlocs(v17, v19, v20);
      }
    }

    else if (v10)
    {
      ot::NetworkData::NetworkData::AddRloc16ToRlocs(v14, v19, v20);
    }

    else if (v11 && !v21)
    {
      ot::NetworkData::NetworkData::AddRloc16ToRlocs(v24, v19, v20);
    }
  }

  return result;
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::Clear(uint64_t result)
{
  *(result + 170) = 0;
  return result;
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Clear(result);
}

void ot::NetworkData::NetworkData::AddRloc16ToRlocs(unsigned __int16 a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (!a3)
  {
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    if (!ot::Mle::IsRouterRloc16(v4, a2))
    {
      return;
    }

    goto LABEL_9;
  }

  if (a3 != 2 || ot::Mle::IsChildRloc16(v4, a2))
  {
LABEL_9:
    if (!ot::Array<unsigned short,(unsigned short)85,unsigned char>::Contains(a2, &v4))
    {
      ot::Array<unsigned short,(unsigned short)85,unsigned char>::PushBack(a2, &v4);
      IgnoreError();
    }
  }
}

uint64_t ot::NetworkData::NetworkData::CountBorderRouters(const unsigned __int8 **a1, char a2)
{
  v6 = a1;
  v5 = a2;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Array(v4);
  ot::NetworkData::NetworkData::FindRlocs(a1, 1, v5, v4);
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetLength(v4);
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 170);
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetLength(a1);
}

BOOL ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(const unsigned __int8 **this, __int16 a2)
{
  v6 = this;
  v5 = a2;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Array(v4);
  ot::NetworkData::NetworkData::FindRlocs(this, 1, 0, v4);
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Contains(v4, &v5);
}

BOOL ot::Array<unsigned short,(unsigned short)85,unsigned char>::Contains(uint64_t a1, unsigned __int16 *a2)
{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Find(a1, a2) != 0;
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Contains(a1, a2);
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::PushBack(uint64_t a1, __int16 *a2)
{
  if (ot::Array<unsigned short,(unsigned short)85,unsigned char>::IsFull(a1))
  {
    return 3;
  }

  else
  {
    v2 = *a2;
    v3 = (*(a1 + 170))++;
    *(a1 + 2 * v3) = v2;
    return 0;
  }
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::PushBack(a1, a2);
}

uint64_t ot::NetworkData::NetworkData::FindDomainIdFor(ot::NetworkData::NetworkData *this, const ot::Ip6::Prefix *a2, unsigned __int8 *a3)
{
  v5 = 0;
  Prefix = ot::NetworkData::NetworkData::FindPrefix(this, a2);
  if (Prefix)
  {
    *a3 = ot::NetworkData::PrefixTlv::GetDomainId(Prefix);
  }

  else
  {
    return 23;
  }

  return v5;
}

ot::NetworkData::PrefixTlv *ot::NetworkData::NetworkData::FindPrefix(ot::NetworkData::NetworkData *this, const ot::Ip6::Prefix *a2)
{
  ot::Ip6::Prefix::GetBytes(a2);
  v5 = v2;
  Length = ot::Ip6::Prefix::GetLength(a2);
  return ot::NetworkData::NetworkData::FindPrefix(this, v5, Length);
}

{
  return ot::NetworkData::NetworkData::FindPrefix(this, a2);
}

uint64_t ot::NetworkData::PrefixTlv::GetDomainId(ot::NetworkData::PrefixTlv *this)
{
  return *(this + 2);
}

{
  return ot::NetworkData::PrefixTlv::GetDomainId(this);
}

void ot::NetworkData::MutableNetworkData::GetTlvsStart(ot::NetworkData::MutableNetworkData *this)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::GetTlvsStart(v1);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
}

void ot::NetworkData::MutableNetworkData::GetTlvsEnd(ot::NetworkData::MutableNetworkData *this)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::GetTlvsEnd(v1);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
}

BOOL ot::NetworkData::MutableNetworkData::RemoveTemporaryDataIn(ot::NetworkData::MutableNetworkData *this, ot::NetworkData::PrefixTlv *a2)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a2);
  while (SubTlvs < ot::NetworkData::NetworkDataTlv::GetNext(a2))
  {
    if (ot::NetworkData::NetworkDataTlv::IsStable(SubTlvs))
    {
      Type = ot::NetworkData::NetworkDataTlv::GetType(SubTlvs);
      if (Type)
      {
        if (Type == 2)
        {
          ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
          v17 = v2;
          ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(a2);
          v16 = v3;
          for (i = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v17); i <= ot::NetworkData::BorderRouterTlv::GetLastEntry(v17); i = ot::NetworkData::BorderRouterEntry::GetNext(i))
          {
            if ((ot::NetworkData::BorderRouterEntry::IsDhcp(i, v4) || ot::NetworkData::BorderRouterEntry::IsConfigure(i, v5)) && v16)
            {
              ContextId = ot::NetworkData::ContextTlv::GetContextId(v16);
              ot::NetworkData::BorderRouterEntry::SetRloc(i, ContextId | 0xFC00);
            }

            else
            {
              ot::NetworkData::BorderRouterEntry::SetRloc(i, 0xFFFEu);
            }
          }
        }
      }

      else
      {
        ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
        v14 = v7;
        for (j = ot::NetworkData::HasRouteTlv::GetFirstEntry(v7); j <= ot::NetworkData::HasRouteTlv::GetLastEntry(v14); j = ot::NetworkData::HasRouteEntry::GetNext(j))
        {
          ot::NetworkData::HasRouteEntry::SetRloc(j, 0xFFFEu);
        }
      }

      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(SubTlvs);
    }

    else
    {
      Size = ot::NetworkData::NetworkDataTlv::GetSize(SubTlvs);
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, SubTlvs);
      SubTlvsLength = ot::NetworkData::PrefixTlv::GetSubTlvsLength(a2);
      ot::NetworkData::PrefixTlv::SetSubTlvsLength(a2, SubTlvsLength - Size);
    }
  }

  return ot::NetworkData::PrefixTlv::GetSubTlvsLength(a2) == 0;
}

BOOL ot::NetworkData::MutableNetworkData::RemoveTemporaryDataIn(ot::NetworkData::MutableNetworkData *this, ot::NetworkData::ServiceTlv *a2)
{
  SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(a2);
  while (SubTlvs < ot::NetworkData::NetworkDataTlv::GetNext(a2))
  {
    if (ot::NetworkData::NetworkDataTlv::IsStable(SubTlvs))
    {
      if (ot::NetworkData::NetworkDataTlv::GetType(SubTlvs) == 6)
      {
        ot::NetworkData::As<ot::NetworkData::ServerTlv>();
        v7 = v2;
        ServiceId = ot::NetworkData::ServiceTlv::GetServiceId(a2);
        v4 = ot::Mle::ServiceAlocFromId(ServiceId);
        ot::NetworkData::ServerTlv::SetServer16(v7, v4);
      }

      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(SubTlvs);
    }

    else
    {
      Size = ot::NetworkData::NetworkDataTlv::GetSize(SubTlvs);
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, SubTlvs);
      SubTlvsLength = ot::NetworkData::ServiceTlv::GetSubTlvsLength(a2);
      ot::NetworkData::ServiceTlv::SetSubTlvsLength(a2, SubTlvsLength - Size);
    }
  }

  return ot::NetworkData::ServiceTlv::GetSubTlvsLength(a2) == 0;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(uint64_t a1)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 3u);
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(a1);
}

uint64_t ot::NetworkData::BorderRouterTlv::GetFirstEntry(ot::NetworkData::BorderRouterTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::BorderRouterTlv::GetFirstEntry(this);
}

{
  return ot::NetworkData::BorderRouterTlv::GetFirstEntry(this);
}

uint64_t ot::NetworkData::BorderRouterTlv::GetLastEntry(ot::NetworkData::BorderRouterTlv *this)
{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::NetworkDataTlv::GetLength(this) - 4;
}

{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::NetworkDataTlv::GetLength(this) - 4;
}

{
  return ot::NetworkData::BorderRouterTlv::GetLastEntry(this);
}

{
  return ot::NetworkData::BorderRouterTlv::GetLastEntry(this);
}

BOOL ot::NetworkData::BorderRouterEntry::IsDhcp(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  return (ot::BigEndian::HostSwap16(*(this + 1), a2) & 0x800) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsDhcp(this, a2);
}

BOOL ot::NetworkData::BorderRouterEntry::IsConfigure(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  return (ot::BigEndian::HostSwap16(*(this + 1), a2) & 0x400) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsConfigure(this, a2);
}

uint64_t ot::NetworkData::BorderRouterEntry::SetRloc(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *this = result;
  return result;
}

{
  return ot::NetworkData::BorderRouterEntry::SetRloc(this, a2);
}

uint64_t ot::NetworkData::ContextTlv::GetContextId(ot::NetworkData::ContextTlv *this)
{
  return *(this + 2) & 0xF;
}

{
  return ot::NetworkData::ContextTlv::GetContextId(this);
}

uint64_t ot::NetworkData::BorderRouterEntry::GetNext(ot::NetworkData::BorderRouterEntry *this)
{
  return this + 4;
}

{
  return this + 4;
}

{
  return ot::NetworkData::BorderRouterEntry::GetNext(this);
}

{
  return ot::NetworkData::BorderRouterEntry::GetNext(this);
}

uint64_t ot::NetworkData::HasRouteTlv::GetFirstEntry(ot::NetworkData::HasRouteTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::HasRouteTlv::GetFirstEntry(this);
}

{
  return ot::NetworkData::HasRouteTlv::GetFirstEntry(this);
}

uint64_t ot::NetworkData::HasRouteTlv::GetLastEntry(ot::NetworkData::HasRouteTlv *this)
{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::NetworkDataTlv::GetLength(this) - 3;
}

{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::NetworkDataTlv::GetLength(this) - 3;
}

{
  return ot::NetworkData::HasRouteTlv::GetLastEntry(this);
}

{
  return ot::NetworkData::HasRouteTlv::GetLastEntry(this);
}

uint64_t ot::NetworkData::HasRouteEntry::SetRloc(ot::NetworkData::HasRouteEntry *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *this = result;
  return result;
}

{
  return ot::NetworkData::HasRouteEntry::SetRloc(this, a2);
}

uint64_t ot::NetworkData::HasRouteEntry::GetNext(ot::NetworkData::HasRouteEntry *this)
{
  return this + 3;
}

{
  return this + 3;
}

{
  return ot::NetworkData::HasRouteEntry::GetNext(this);
}

{
  return ot::NetworkData::HasRouteEntry::GetNext(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetSize(ot::NetworkData::NetworkDataTlv *this)
{
  return (*(this + 1) + 2);
}

{
  return ot::NetworkData::NetworkDataTlv::GetSize(this);
}

uint64_t ot::NetworkData::PrefixTlv::SetSubTlvsLength(ot::NetworkData::PrefixTlv *this, unsigned __int8 a2)
{
  v2 = ot::Ip6::Prefix::SizeForLength(*(this + 3));
  return ot::NetworkData::NetworkDataTlv::SetLength(this, v2 + 2 + a2);
}

{
  return ot::NetworkData::PrefixTlv::SetSubTlvsLength(this, a2);
}

uint64_t ot::NetworkData::PrefixTlv::GetSubTlvsLength(ot::NetworkData::PrefixTlv *this)
{
  Length = ot::NetworkData::NetworkDataTlv::GetLength(this);
  return (Length - (ot::Ip6::Prefix::SizeForLength(*(this + 3)) + 2));
}

{
  return ot::NetworkData::PrefixTlv::GetSubTlvsLength(this);
}

uint64_t ot::NetworkData::ServerTlv::SetServer16(ot::NetworkData::ServerTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::NetworkData::ServerTlv::SetServer16(this, a2);
}

uint64_t ot::NetworkData::ServiceTlv::SetSubTlvsLength(ot::NetworkData::ServiceTlv *this, char a2)
{
  FieldsLength = ot::NetworkData::ServiceTlv::GetFieldsLength(this);
  return ot::NetworkData::NetworkDataTlv::SetLength(this, FieldsLength + a2);
}

{
  return ot::NetworkData::ServiceTlv::SetSubTlvsLength(this, a2);
}

uint64_t ot::NetworkData::ServiceTlv::GetSubTlvsLength(ot::NetworkData::ServiceTlv *this)
{
  Length = ot::NetworkData::NetworkDataTlv::GetLength(this);
  return (Length - ot::NetworkData::ServiceTlv::GetFieldsLength(this));
}

{
  return ot::NetworkData::ServiceTlv::GetSubTlvsLength(this);
}

uint64_t ot::NetworkData::MutableNetworkData::AppendTlv(ot::NetworkData::MutableNetworkData *this, unsigned __int16 a2)
{
  v6 = a2;
  if (!ot::NetworkData::MutableNetworkData::CanInsert(this, a2))
  {
    return 0;
  }

  ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
  v5 = v2;
  *(this + 8) += v6;
  return v5;
}

BOOL ot::NetworkData::MutableNetworkData::CanInsert(ot::NetworkData::MutableNetworkData *this, unsigned __int16 a2)
{
  return *(this + 8) + a2 <= *(this + 9);
}

{
  return ot::NetworkData::MutableNetworkData::CanInsert(this, a2);
}

void *ot::NetworkData::MutableNetworkData::Insert(ot::NetworkData::MutableNetworkData *this, char *a2, unsigned __int8 a3)
{
  v5 = 0;
  if (ot::NetworkData::MutableNetworkData::CanInsert(this, a3))
  {
    v5 = 0;
    if (*this <= a2)
    {
      v5 = a2 <= *this + *(this + 8);
    }
  }

  if (!v5)
  {
    __assert_rtn("Insert", "network_data.cpp", 813, "CanInsert(aLength) && mTlvs <= start && start <= mTlvs + mLength");
  }

  result = memmove(&a2[a3], a2, *(this + 8) - &a2[-*this]);
  *(this + 8) += a3;
  return result;
}

void *ot::NetworkData::MutableNetworkData::Remove(ot::NetworkData::MutableNetworkData *this, char *a2, unsigned __int8 a3)
{
  ot::NetworkData::MutableNetworkData::GetBytes(this);
  v9 = v3 + *(this + 8);
  __src = &a2[a3];
  v7 = 0;
  if (a3 <= *(this + 8))
  {
    ot::NetworkData::MutableNetworkData::GetBytes(this);
    v7 = 0;
    if (v4 <= a2)
    {
      v7 = __src <= v9;
    }
  }

  if (!v7)
  {
    __assert_rtn("Remove", "network_data.cpp", 824, "(aRemoveLength <= mLength) && (GetBytes() <= removeStart) && (removeEnd <= end)");
  }

  result = memmove(a2, __src, (v9 - __src));
  *(this + 8) -= a3;
  return result;
}

void ot::AsConst<ot::NetworkData::MutableNetworkData>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
}

uint64_t ot::NetworkData::NetworkData::GetBytes(ot::NetworkData::NetworkData *this)
{
  return *this;
}

{
  return ot::NetworkData::NetworkData::GetBytes(this);
}

uint64_t ot::NetworkData::ServerTlv::GetServerData(ot::NetworkData::ServerTlv *this)
{
  return this + 4;
}

{
  return ot::NetworkData::ServerTlv::GetServerData(this);
}

uint64_t ot::NetworkData::ServerTlv::GetServerDataLength(ot::NetworkData::ServerTlv *this)
{
  return (ot::NetworkData::NetworkDataTlv::GetLength(this) - 2);
}

{
  return ot::NetworkData::ServerTlv::GetServerDataLength(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetLength(ot::NetworkData::NetworkDataTlv *this)
{
  return *(this + 1);
}

{
  return ot::NetworkData::NetworkDataTlv::GetLength(this);
}

BOOL ot::NetworkData::ServiceTlv::IsThreadEnterprise(ot::NetworkData::ServiceTlv *this)
{
  return *(this + 2) < 0;
}

{
  return ot::NetworkData::ServiceTlv::IsThreadEnterprise(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetTlvOffset(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return **this;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetTlvOffset(this);
}

uint64_t ot::NetworkData::PrefixTlv::GetPrefix(ot::NetworkData::PrefixTlv *this)
{
  return this + 4;
}

{
  return this + 4;
}

{
  return ot::NetworkData::PrefixTlv::GetPrefix(this);
}

{
  return ot::NetworkData::PrefixTlv::GetPrefix(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetValue(ot::NetworkData::NetworkDataTlv *this)
{
  return this + 2;
}

{
  return this + 2;
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

uint64_t ot::NetworkData::ServiceTlv::GetFieldsLength(ot::NetworkData::ServiceTlv *this)
{
  IsThreadEnterprise = ot::NetworkData::ServiceTlv::IsThreadEnterprise(this);
  v2 = 0;
  if (!IsThreadEnterprise)
  {
    v2 = 4;
  }

  return (v2 + 2 + ot::NetworkData::ServiceTlv::GetServiceDataLength(this));
}

{
  return ot::NetworkData::ServiceTlv::GetFieldsLength(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlvOffset(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return *(*this + 1);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlvOffset(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetEntryIndex(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return *(*this + 2);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetEntryIndex(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(uint64_t this, char a2)
{
  *(*this + 2) = a2;
  return this;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(this, a2);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::SaveSubTlvOffset(ot::NetworkData::NetworkData::NetworkDataIterator *this, const ot::NetworkData::NetworkDataTlv *a2, const ot::NetworkData::NetworkDataTlv *a3)
{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetSubTlvOffset(this, a2 - a3);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SaveSubTlvOffset(this, a2, a3);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::SetSubTlvOffset(uint64_t this, char a2)
{
  *(*this + 1) = a2;
  return this;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetSubTlvOffset(this, a2);
}

_BYTE **ot::NetworkData::NetworkData::NetworkDataIterator::SaveTlvOffset(ot::NetworkData::NetworkData::NetworkDataIterator *this, const ot::NetworkData::NetworkDataTlv *a2, const unsigned __int8 *a3)
{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetTlvOffset(this, a2 - a3);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SaveTlvOffset(this, a2, a3);
}

_BYTE **ot::NetworkData::NetworkData::NetworkDataIterator::SetTlvOffset(_BYTE **this, char a2)
{
  **this = a2;
  return this;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetTlvOffset(this, a2);
}

char *ot::NetworkData::ServiceTlv::GetServiceData(ot::NetworkData::ServiceTlv *this)
{
  if (ot::NetworkData::ServiceTlv::IsThreadEnterprise(this))
  {
    v2 = this + 3;
  }

  else
  {
    v2 = this + 7;
  }

  return v2 + 1;
}

{
  return ot::NetworkData::ServiceTlv::GetServiceData(this);
}

void ot::AsNonConst<ot::NetworkData::NetworkDataTlv>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

uint64_t ot::NetworkData::NetworkData::GetTlvsStart(ot::NetworkData::NetworkData *this)
{
  return *this;
}

{
  return ot::NetworkData::NetworkData::GetTlvsStart(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::SetLength(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::SetLength(this, a2);
}

unsigned __int16 *ot::Array<unsigned short,(unsigned short)85,unsigned char>::Find(uint64_t a1, unsigned __int16 *a2)
{
  v7 = 0;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(a1);
  while (v5 != v4)
  {
    if (*v5 == *a2)
    {
      return v5;
    }

    ++v5;
  }

  return v7;
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Find(a1, a2);
}

void ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin()
{
  ;
}

{
  ;
}

{
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
}

{
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(uint64_t a1)
{
  return a1 + 2 * *(a1 + 170);
}

{
  return a1 + 2 * *(a1 + 170);
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(a1);
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(a1);
}

BOOL ot::Array<unsigned short,(unsigned short)85,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 170);
  return v2 == ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetMaxSize();
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::IsFull(a1);
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetMaxSize()
{
  return 85;
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetMaxSize();
}

void ot::NetworkData::PrefixTlv::FindSubTlv(uint64_t a1, unsigned __int8 a2)
{
  ot::AsConst<ot::NetworkData::PrefixTlv>();
  ot::NetworkData::PrefixTlv::FindSubTlv(v2, a2);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, a2);
}

void ot::AsConst<ot::NetworkData::PrefixTlv>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::PrefixTlv>();
}

ot::Crypto::LiteralKey *ot::Crypto::LiteralKey::LiteralKey(ot::Crypto::LiteralKey *this, const ot::Crypto::Key *a2)
{
  *this = ot::Crypto::Key::GetBytes(a2);
  Length = ot::Crypto::Key::GetLength(a2);
  result = this;
  *(this + 4) = Length;
  return result;
}

{
  ot::Crypto::LiteralKey::LiteralKey(this, a2);
  return this;
}

uint64_t ot::Crypto::Key::GetBytes(ot::Crypto::Key *this)
{
  return *this;
}

{
  return ot::Crypto::Key::GetBytes(this);
}

uint64_t ot::Crypto::Key::GetLength(ot::Crypto::Key *this)
{
  return *(this + 4);
}

{
  return ot::Crypto::Key::GetLength(this);
}

ot::NetworkData::Leader *ot::NetworkData::Leader::Leader(ot::NetworkData::Leader *this, ot::Instance *a2)
{
  ot::NetworkData::MutableNetworkData::MutableNetworkData(this, a2, this + 12, 0, 254);
  *(this + 266) = 0;
  *(this + 267) = 0;
  *(this + 268) = 0;
  ot::NetworkData::Leader::ContextIds::ContextIds((this + 272), a2);
  ot::TimerMilliIn<ot::NetworkData::Leader,&ot::NetworkData::Leader::HandleTimer>::TimerMilliIn((this + 344), a2);
  ot::NetworkData::Leader::Reset(this);
  return this;
}

{
  ot::NetworkData::Leader::Leader(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::NetworkData::Leader,&ot::NetworkData::Leader::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::NetworkData::Leader,&ot::NetworkData::Leader::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::NetworkData::Leader,&ot::NetworkData::Leader::HandleTimer>::HandleTimer);
  return a1;
}

ot::NetworkData::Leader::ContextIds *ot::NetworkData::Leader::Reset(ot::NetworkData::Leader *this)
{
  Uint8 = ot::Random::NonCrypto::GetUint8(this);
  *(this + 11) = Uint8;
  *(this + 10) = ot::Random::NonCrypto::GetUint8(Uint8);
  ot::NetworkData::MutableNetworkData::SetLength(this, 0);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("NetworkData", "%s: SignalNetDataChanged", v2, v3, v4, v5, v6, v7, "Reset");
  ot::NetworkData::Leader::SignalNetDataChanged(this);
  return ot::NetworkData::Leader::ContextIds::Clear((this + 272));
}

void ot::NetworkData::Leader::SignalNetDataChanged(ot::NetworkData::Leader *this)
{
  v3 = *(this + 266);
  Length = ot::NetworkData::NetworkData::GetLength(this);
  *(this + 266) = ot::Max<unsigned char>(v3, Length);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  ot::Notifier::Signal(v2, 512);
}

uint64_t ot::NetworkData::Leader::GetServiceId(const unsigned __int8 **a1, int a2, uint64_t a3, char a4, _BYTE *a5)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = 23;
  v8 = 0;
  while (!ot::NetworkData::NetworkData::GetNextService(a1, &v8, v15))
  {
    ot::NetworkData::ServiceConfig::GetServiceData(v15, v7);
    if (v13 == v16 && ot::Data<(ot::DataLengthType)0>::operator==(v12, v7) && (v11 & 1) == (v17 & 1))
    {
      *v10 = v15[0];
      return 0;
    }
  }

  return v9;
}

uint64_t ot::NetworkData::ServiceConfig::GetServiceData(uint64_t a1, uint64_t a2)
{
  return ot::Data<(ot::DataLengthType)0>::Init(a2, a1 + 9, *(a1 + 8));
}

{
  return ot::NetworkData::ServiceConfig::GetServiceData(a1, a2);
}

uint64_t ot::NetworkData::Leader::GetPreferredNat64Prefix(const unsigned __int8 **this, ot::NetworkData::ExternalRouteConfig *a2)
{
  v17 = this;
  v16 = a2;
  v15 = 23;
  v14 = 0;
  while (!ot::NetworkData::NetworkData::GetNextExternalRoute(this, &v14, &v12))
  {
    if ((v13 & 0x400000000) != 0)
    {
      ot::NetworkData::ExternalRouteConfig::GetPrefix(&v12);
      if (ot::Ip6::Prefix::IsValidNat64(v2))
      {
        if (v15 == 23 || (v3 = (BYTE4(v13) << 6) >> 6, v4 = __OFSUB__(v3, (*(v16 + 20) << 6) >> 6), v5 = v3 - ((*(v16 + 20) << 6) >> 6), !((v5 < 0) ^ v4 | (v5 == 0))) || ((BYTE4(v13) << 6) >> 6) == ((*(v16 + 20) << 6) >> 6) && (ot::NetworkData::ExternalRouteConfig::GetPrefix(&v12), v10 = v6, ot::NetworkData::ExternalRouteConfig::GetPrefix(v16), ot::Ip6::Prefix::operator<(v10, v7)))
        {
          v8 = v16;
          *v16 = v12;
          *(v8 + 2) = v13;
          v15 = 0;
        }
      }
    }
  }

  return v15;
}

ot::NetworkData::PrefixTlv *ot::NetworkData::Leader::FindNextMatchingPrefixTlv(ot::NetworkData::Leader *this, const ot::Ip6::Address *a2, const ot::NetworkData::PrefixTlv *a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  if (a3)
  {
    Next = ot::NetworkData::NetworkDataTlv::GetNext(v13);
  }

  else
  {
    Next = ot::NetworkData::NetworkData::GetTlvsStart(this);
  }

  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  ot::Cli::Dataset::Dataset(v11, Next, TlvsEnd);
  do
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(v11);
    v12 = v4;
    if (!v4)
    {
      break;
    }

    v8 = v14;
    Prefix = ot::NetworkData::PrefixTlv::GetPrefix(v12);
    PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(v12);
  }

  while (!ot::Ip6::Address::MatchesPrefix(v8, Prefix, PrefixLength));
  return v12;
}

uint64_t ot::NetworkData::PrefixTlv::GetPrefixLength(ot::NetworkData::PrefixTlv *this)
{
  return *(this + 3);
}

{
  return ot::NetworkData::PrefixTlv::GetPrefixLength(this);
}

uint64_t ot::NetworkData::Leader::GetContext(ot::NetworkData::Leader *a1, const ot::Ip6::Address *a2, ot::Ip6::Prefix *a3)
{
  NextMatchingPrefixTlv = 0;
  ot::Ip6::Prefix::SetLength(a3, 0);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  if (ot::Mle::Mle::IsMeshLocalAddress(v3, a2))
  {
    ot::NetworkData::Leader::GetContextForMeshLocalPrefix(a1, a3);
  }

  while (1)
  {
    NextMatchingPrefixTlv = ot::NetworkData::Leader::FindNextMatchingPrefixTlv(a1, a2, NextMatchingPrefixTlv);
    if (!NextMatchingPrefixTlv)
    {
      break;
    }

    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(NextMatchingPrefixTlv);
    v8 = v4;
    if (v4)
    {
      PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(NextMatchingPrefixTlv);
      if (PrefixLength > ot::Ip6::Prefix::GetLength(a3))
      {
        ot::NetworkData::PrefixTlv::CopyPrefixTo(NextMatchingPrefixTlv, a3);
        *(a3 + 17) = ot::NetworkData::ContextTlv::GetContextId(v8);
        *(a3 + 18) = ot::NetworkData::ContextTlv::IsCompress(v8);
        *(a3 + 19) = 1;
      }
    }
  }

  if (ot::Ip6::Prefix::GetLength(a3) <= 0)
  {
    return 23;
  }

  else
  {
    return 0;
  }
}

void *ot::NetworkData::Leader::GetContextForMeshLocalPrefix(ot::InstanceLocator *a1, ot::Ip6::Prefix *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v2);
  result = ot::Ip6::Prefix::Set(a2, MeshLocalPrefix);
  *(a2 + 17) = 0;
  *(a2 + 18) = 1;
  *(a2 + 19) = 1;
  return result;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(ot::NetworkData::PrefixTlv *a1)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 3u);
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(a1);
}

void *ot::NetworkData::PrefixTlv::CopyPrefixTo(ot::NetworkData::PrefixTlv *this, ot::Ip6::Prefix *a2)
{
  Prefix = ot::NetworkData::PrefixTlv::GetPrefix(this);
  PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(this);
  return ot::Ip6::Prefix::Set(a2, Prefix, PrefixLength);
}

{
  return ot::NetworkData::PrefixTlv::CopyPrefixTo(this, a2);
}

BOOL ot::NetworkData::ContextTlv::IsCompress(ot::NetworkData::ContextTlv *this)
{
  return (*(this + 2) & 0x10) != 0;
}

{
  return ot::NetworkData::ContextTlv::IsCompress(this);
}

ot::NetworkData::PrefixTlv *ot::NetworkData::Leader::FindPrefixTlvForContextId(ot::NetworkData::Leader *this, unsigned __int8 a2, const ot::NetworkData::ContextTlv **a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(this);
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  ot::Cli::Dataset::Dataset(v12, TlvsStart, TlvsEnd);
  while (1)
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(v12);
    v11 = v4;
    if (!v4)
    {
      break;
    }

    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(v4);
    v10 = v5;
    if (v5)
    {
      ContextId = ot::NetworkData::ContextTlv::GetContextId(v5);
      if (ContextId == v14)
      {
        *v13 = v10;
        return v11;
      }
    }
  }

  return v11;
}

uint64_t ot::NetworkData::Leader::GetContext(ot::NetworkData::NetworkData *a1, unsigned __int8 a2, ot::Ip6::Prefix *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(a1);
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(a1);
  ot::Cli::Dataset::Dataset(&v11, TlvsStart, TlvsEnd);
  PrefixTlvForContextId = 0;
  v9 = 0;
  if (v14)
  {
    PrefixTlvForContextId = ot::NetworkData::Leader::FindPrefixTlvForContextId(a1, v14, &v9);
    if (PrefixTlvForContextId)
    {
      ot::NetworkData::PrefixTlv::CopyPrefixTo(PrefixTlvForContextId, v13);
      ContextId = ot::NetworkData::ContextTlv::GetContextId(v9);
      *(v13 + 17) = ContextId;
      IsCompress = ot::NetworkData::ContextTlv::IsCompress(v9);
      *(v13 + 18) = IsCompress;
      *(v13 + 19) = 1;
    }

    else
    {
      return 23;
    }
  }

  else
  {
    ot::NetworkData::Leader::GetContextForMeshLocalPrefix(a1, v13);
  }

  return v12;
}

void *ot::Ip6::Prefix::Set(ot::Ip6::Prefix *a1, const unsigned __int8 *a2)
{
  return ot::Ip6::Prefix::Set(a1, a2, 0x40u);
}

{
  return ot::Ip6::Prefix::Set(a1, a2);
}

uint64_t ot::NetworkData::Leader::IsOnMesh(ot::NetworkData::Leader *this, const ot::Ip6::Address *a2)
{
  v13 = this;
  v12 = a2;
  NextMatchingPrefixTlv = 0;
  v10 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsMeshLocalAddress(v2, v12))
  {
    v10 = 1;
  }

  else
  {
    while (1)
    {
      NextMatchingPrefixTlv = ot::NetworkData::Leader::FindNextMatchingPrefixTlv(this, v12, NextMatchingPrefixTlv);
      if (!NextMatchingPrefixTlv)
      {
        break;
      }

      ot::NetworkData::TlvIterator::TlvIterator(v9, NextMatchingPrefixTlv);
      while (1)
      {
        ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::BorderRouterTlv>(v9);
        v8 = v3;
        if (!v3)
        {
          break;
        }

        for (i = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v3); i <= ot::NetworkData::BorderRouterTlv::GetLastEntry(v8); i = ot::NetworkData::BorderRouterEntry::GetNext(i))
        {
          if (ot::NetworkData::BorderRouterEntry::IsOnMesh(i, v4))
          {
            v10 = 1;
            return v10 & 1;
          }
        }
      }
    }
  }

  return v10 & 1;
}

ot::NetworkData::TlvIterator *ot::NetworkData::TlvIterator::TlvIterator(ot::NetworkData::TlvIterator *this, const ot::NetworkData::PrefixTlv *a2)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a2);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(a2);
  ot::Cli::Dataset::Dataset(this, SubTlvs, Next);
  return this;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::BorderRouterTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 2u);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::BorderRouterTlv>(a1);
}

BOOL ot::NetworkData::BorderRouterEntry::IsOnMesh(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  return (ot::BigEndian::HostSwap16(*(this + 1), a2) & 0x100) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsOnMesh(this, a2);
}

uint64_t ot::NetworkData::Leader::RouteLookup(ot::NetworkData::Leader *this, const ot::Ip6::Address *a2, const ot::Ip6::Address *a3, unsigned __int16 *a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 4;
  NextMatchingPrefixTlv = 0;
  while (1)
  {
    NextMatchingPrefixTlv = ot::NetworkData::Leader::FindNextMatchingPrefixTlv(this, v14, NextMatchingPrefixTlv);
    if (!NextMatchingPrefixTlv)
    {
      break;
    }

    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(NextMatchingPrefixTlv);
    if (v4)
    {
      DomainId = ot::NetworkData::PrefixTlv::GetDomainId(NextMatchingPrefixTlv);
      if (!ot::NetworkData::Leader::ExternalRouteLookup(this, DomainId, v13, v12))
      {
        return 0;
      }

      if (!ot::NetworkData::Leader::DefaultRouteLookup(this, NextMatchingPrefixTlv, v12))
      {
        return 0;
      }
    }
  }

  v9 = 0;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::Slaac>(this);
  if (!ot::Utils::Slaac::FindDomainIdFor(v6, v14, &v9))
  {
    return ot::NetworkData::Leader::ExternalRouteLookup(this, v9, v13, v12);
  }

  return v11;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(ot::NetworkData::PrefixTlv *a1)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 2u);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a1);
}

uint64_t ot::NetworkData::Leader::ExternalRouteLookup(ot::NetworkData::Leader *this, unsigned __int8 a2, const ot::Ip6::Address *a3, unsigned __int16 *a4)
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 4;
  NextMatchingPrefixTlv = 0;
  v15 = 0;
  v14 = 0;
  while (1)
  {
    NextMatchingPrefixTlv = ot::NetworkData::Leader::FindNextMatchingPrefixTlv(this, v19, NextMatchingPrefixTlv);
    if (!NextMatchingPrefixTlv)
    {
      break;
    }

    v13 = 0;
    PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(NextMatchingPrefixTlv);
    ot::NetworkData::TlvIterator::TlvIterator(v11, NextMatchingPrefixTlv);
    DomainId = ot::NetworkData::PrefixTlv::GetDomainId(NextMatchingPrefixTlv);
    if (DomainId == v20 && (!v15 || PrefixLength > v14))
    {
      while (1)
      {
        ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::HasRouteTlv>(v11);
        v13 = v6;
        if (!v6)
        {
          break;
        }

        for (i = ot::NetworkData::HasRouteTlv::GetFirstEntry(v13); i <= ot::NetworkData::HasRouteTlv::GetLastEntry(v13); i = ot::NetworkData::HasRouteEntry::GetNext(i))
        {
          if (!v15 || PrefixLength > v14 || ot::NetworkData::Leader::CompareRouteEntries(this, i, v15) > 0)
          {
            v15 = i;
            v14 = PrefixLength;
          }
        }
      }
    }
  }

  if (v15)
  {
    Rloc = ot::NetworkData::HasRouteEntry::GetRloc(v15, v4);
    *v18 = Rloc;
    return 0;
  }

  return v17;
}

uint64_t ot::NetworkData::Leader::CompareRouteEntries(ot::NetworkData::Leader *this, const ot::NetworkData::BorderRouterEntry *a2, const ot::NetworkData::BorderRouterEntry *a3)
{
  Preference = ot::NetworkData::BorderRouterEntry::GetPreference(a2, a2);
  Rloc = ot::NetworkData::BorderRouterEntry::GetRloc(a2, v3);
  v10 = ot::NetworkData::BorderRouterEntry::GetPreference(a3, v4);
  v6 = ot::NetworkData::BorderRouterEntry::GetRloc(a3, v5);
  return ot::NetworkData::Leader::CompareRouteEntries(this, Preference, Rloc, v10, v6);
}

uint64_t ot::NetworkData::Leader::CompareRouteEntries(ot::NetworkData::Leader *this, char a2, unsigned __int16 a3, char a4, unsigned __int16 a5)
{
  v15 = ot::ThreeWayCompare<signed char>(a2, a4);
  if (!v15)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    PathCost = ot::RouterTable::GetPathCost(v5, a5);
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    v7 = ot::RouterTable::GetPathCost(v6, a3);
    v15 = ot::ThreeWayCompare<unsigned char>(PathCost, v7);
    if (!v15)
    {
      IsRouterRloc16 = ot::Mle::IsRouterRloc16(a3, v8);
      v10 = ot::Mle::IsRouterRloc16(a5, v9);
      return ot::ThreeWayCompare<BOOL>(IsRouterRloc16, v10);
    }
  }

  return v15;
}

uint64_t ot::NetworkData::BorderRouterEntry::GetPreference(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  Flags = ot::NetworkData::BorderRouterEntry::GetFlags(this, a2);
  return ot::NetworkData::BorderRouterEntry::PreferenceFromFlags(Flags, v3);
}

{
  return ot::NetworkData::BorderRouterEntry::GetPreference(this, a2);
}

uint64_t ot::NetworkData::Leader::CompareRouteEntries(ot::NetworkData::Leader *this, const ot::NetworkData::HasRouteEntry *a2, const ot::NetworkData::HasRouteEntry *a3)
{
  Preference = ot::NetworkData::HasRouteEntry::GetPreference(a2);
  Rloc = ot::NetworkData::HasRouteEntry::GetRloc(a2, v3);
  v9 = ot::NetworkData::HasRouteEntry::GetPreference(a3);
  v5 = ot::NetworkData::HasRouteEntry::GetRloc(a3, v4);
  return ot::NetworkData::Leader::CompareRouteEntries(this, Preference, Rloc, v9, v5);
}

uint64_t ot::NetworkData::HasRouteEntry::GetPreference(ot::NetworkData::HasRouteEntry *this)
{
  Flags = ot::NetworkData::HasRouteEntry::GetFlags(this);
  return ot::NetworkData::HasRouteEntry::PreferenceFromFlags(Flags, v2);
}

{
  return ot::NetworkData::HasRouteEntry::GetPreference(this);
}

uint64_t ot::NetworkData::Leader::CompareRouteEntries(ot::NetworkData::Leader *this, const ot::NetworkData::ServerTlv *a2, const ot::NetworkData::ServerTlv *a3)
{
  Server16 = ot::NetworkData::ServerTlv::GetServer16(a2, a2);
  v4 = ot::NetworkData::ServerTlv::GetServer16(a3, v3);
  return ot::NetworkData::Leader::CompareRouteEntries(this, 0, Server16, 0, v4);
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::HasRouteTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 0);
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::HasRouteTlv>(a1);
}

uint64_t ot::NetworkData::Leader::LookupRouteIn(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2, BOOL (*a3)(const ot::NetworkData::BorderRouterEntry *), unsigned __int16 *a4)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = 4;
  ot::NetworkData::TlvIterator::TlvIterator(v12, a2);
  v10 = 0;
  while (1)
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::BorderRouterTlv>(v12);
    v11 = v4;
    if (!v4)
    {
      break;
    }

    for (i = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v4); i <= ot::NetworkData::BorderRouterTlv::GetLastEntry(v11); i = ot::NetworkData::BorderRouterEntry::GetNext(i))
    {
      if (((v15)(i) & 1) != 0 && (!v10 || ot::NetworkData::Leader::CompareRouteEntries(this, i, v10) > 0))
      {
        v10 = i;
      }
    }
  }

  if (v10)
  {
    Rloc = ot::NetworkData::BorderRouterEntry::GetRloc(v10, v5);
    *v14 = Rloc;
    return 0;
  }

  return v13;
}

BOOL ot::NetworkData::BorderRouterEntry::IsDefaultRoute(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  return (ot::BigEndian::HostSwap16(*(this + 1), a2) & 0x200) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsDefaultRoute(this, a2);
}

uint64_t ot::NetworkData::Leader::SetNetworkData(ot::NetworkData::MutableNetworkData *a1, char a2, char a3, char a4, ot::Message *a5, ot::OffsetRange *a6)
{
  Length = ot::OffsetRange::GetLength(a6);
  if (Length <= 0xFEu)
  {
    Offset = ot::OffsetRange::GetOffset(a6);
    ot::NetworkData::MutableNetworkData::GetBytes(a1);
    v25 = ot::Message::Read(a5, Offset, v6, Length);
    if (!v25)
    {
      ot::NetworkData::MutableNetworkData::SetLength(a1, Length);
      *(a1 + 11) = a2;
      *(a1 + 10) = a3;
      if (a4 == 1)
      {
        ot::NetworkData::MutableNetworkData::RemoveTemporaryData(a1);
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      if (ot::Mle::Mle::IsLeader(v7))
      {
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
        ot::NetworkData::Leader::HandleNetworkDataRestoredAfterReset(v8);
      }

      ot::NetworkData::MutableNetworkData::GetBytes(a1);
      v19 = v9;
      v10 = ot::NetworkData::NetworkData::GetLength(a1);
      encode_data_into_string(v19, v10, v31, 0x3E8uLL, 0);
      v20 = *(a1 + 11);
      v21 = *(a1 + 10);
      v11 = ot::NetworkData::NetworkData::GetLength(a1);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("NetworkData", "SetNetworkData, SignalNetDataChanged ver=%d, stable_ver=%d, len=%d, data=%s", v12, v13, v14, v15, v16, v17, v20, v21, v11, v31);
      ot::NetworkData::Leader::SignalNetDataChanged(a1);
    }
  }

  else
  {
    return 6;
  }

  return v25;
}

uint64_t ot::NetworkData::Leader::setStringAsNetworkData(ot::NetworkData::Leader *this, char *a2, size_t a3, char a4, char a5)
{
  v23 = this;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v13 = this;
  v18 = 0;
  if (a3)
  {
    v17 = v10;
    __chkstk_darwin(this);
    v12 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v11 = v12;
    v16 = v5;
    bzero(v12, v21);
    v15 = parse_string_into_data(v12, v21, v22);
    if (v15 == v21)
    {
      v18 = 6;
      v14 = 4;
    }

    else
    {
      ot::NetworkData::MutableNetworkData::SetLength(v13, v15);
      ot::NetworkData::MutableNetworkData::GetBytes(v13);
      memcpy(v6, v11, v15);
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v13);
      if (ot::Mle::Mle::IsLeader(v7))
      {
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v13);
        ot::NetworkData::Leader::HandleNetworkDataRestoredAfterReset(v8);
      }

      v14 = 0;
    }
  }

  return v18;
}

void ot::NetworkData::Leader::FindCommissioningData(ot::NetworkData::Leader *this)
{
  TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(this);
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::CommissioningDataTlv>(TlvsStart, TlvsEnd);
}

{
  ot::AsConst<ot::NetworkData::Leader>();
  ot::NetworkData::Leader::FindCommissioningData(v1);
  ot::AsNonConst<ot::NetworkData::CommissioningDataTlv>();
}

{
  ot::NetworkData::Leader::FindCommissioningData(this);
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::CommissioningDataTlv>(ot::NetworkData::NetworkDataTlv *a1, unint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 4u);
  ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::CommissioningDataTlv>(a1, a2);
}

uint64_t ot::NetworkData::Leader::FindCommissioningDataSubTlv(ot::NetworkData::Leader *this, unsigned __int8 a2)
{
  v8 = 0;
  ot::NetworkData::Leader::FindCommissioningData(this);
  v7 = v2;
  if (v2)
  {
    Value = ot::NetworkData::NetworkDataTlv::GetValue(v2);
    Length = ot::NetworkData::NetworkDataTlv::GetLength(v7);
    ot::Tlv::FindTlv(Value, Length, a2);
    ot::As<ot::MeshCoP::Tlv>();
    return v4;
  }

  return v8;
}

uint64_t ot::NetworkData::Leader::ReadCommissioningDataUint16SubTlv(ot::NetworkData::Leader *a1, unsigned __int8 a2, _WORD *a3)
{
  v7 = 0;
  CommissioningDataSubTlv = ot::NetworkData::Leader::FindCommissioningDataSubTlv(a1, a2);
  if (CommissioningDataSubTlv)
  {
    if (ot::Tlv::GetLength(CommissioningDataSubTlv) >= 2uLL)
    {
      Value = ot::Tlv::GetValue(CommissioningDataSubTlv);
      *a3 = ot::BigEndian::ReadUint16(Value, v4);
    }

    else
    {
      return 6;
    }
  }

  else
  {
    return 23;
  }

  return v7;
}

void ot::NetworkData::Leader::GetCommissioningDataset(ot::NetworkData::Leader *this, ot::MeshCoP::CommissioningDataset *a2)
{
  ot::NetworkData::Leader::FindCommissioningData(this);
  v10 = v2;
  ot::Clearable<ot::MeshCoP::CommissioningDataset>::Clear(a2);
  if (v10)
  {
    *(a2 + 24) = *(a2 + 24) & 0xFE | (ot::NetworkData::Leader::FindBorderAgentRloc(this, a2) == 0);
    *(a2 + 24) = *(a2 + 24) & 0xFD | (2 * (ot::NetworkData::Leader::FindCommissioningSessionId(this, a2 + 1) == 0));
    *(a2 + 24) = *(a2 + 24) & 0xF7 | (8 * (ot::NetworkData::Leader::FindJoinerUdpPort(this, a2 + 11) == 0));
    ot::AsCoreType<otSteeringData>(a2 + 4);
    *(a2 + 24) = *(a2 + 24) & 0xFB | (4 * (ot::NetworkData::Leader::FindSteeringData(this, v3) == 0));
    Value = ot::NetworkData::NetworkDataTlv::GetValue(v10);
    v6 = ot::NetworkData::NetworkDataTlv::GetValue(v10);
    v8 = v6 + ot::NetworkData::NetworkDataTlv::GetLength(v10);
    while (Value < v8)
    {
      Type = ot::MeshCoP::Tlv::GetType(Value);
      if (Type != 9 && Type != 8 && Type != 11 && Type != 18)
      {
        *(a2 + 24) = *(a2 + 24) & 0xEF | 0x10;
        return;
      }

      ot::MeshCoP::Tlv::GetNext(Value);
      Value = v4;
    }
  }
}

uint64_t ot::NetworkData::Leader::FindSteeringData(ot::NetworkData::Leader *this, ot::MeshCoP::SteeringData *a2)
{
  v4 = 0;
  ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::SteeringDataTlv>(this);
  if (v2)
  {
    ot::MeshCoP::SteeringDataTlv::CopyTo(v2, a2);
  }

  else
  {
    return 23;
  }

  return v4;
}

void ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::SteeringDataTlv>(ot::NetworkData::Leader *a1)
{
  ot::NetworkData::Leader::FindCommissioningDataSubTlv(a1, 8u);
  ot::As<ot::MeshCoP::SteeringDataTlv>();
}

{
  ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::SteeringDataTlv>(a1);
}

uint64_t ot::NetworkData::Leader::IsJoiningAllowed(ot::NetworkData::Leader *this)
{
  v2 = 0;
  if (!ot::NetworkData::Leader::FindSteeringData(this, v3))
  {
    v2 = (ot::MeshCoP::SteeringData::IsEmpty(v3) ^ 1) & 1;
  }

  return v2 & 1;
}

uint64_t ot::MeshCoP::SteeringData::IsEmpty(ot::MeshCoP::SteeringData *this)
{
  return ot::MeshCoP::SteeringData::DoesAllMatch(this, 0);
}

{
  return ot::MeshCoP::SteeringData::IsEmpty(this);
}

uint64_t ot::NetworkData::Leader::SteeringDataCheck(ot::NetworkData::Leader *a1, unsigned __int16 *a2)
{
  v4 = 13;
  if (!ot::NetworkData::Leader::FindSteeringData(a1, v6))
  {
    if (ot::MeshCoP::SteeringData::Contains(v6, a2))
    {
      return 0;
    }

    else
    {
      return 23;
    }
  }

  return v4;
}

uint64_t ot::NetworkData::Leader::SteeringDataCheckJoiner(ot::NetworkData::Leader *this, const ot::Mac::ExtAddress *a2, ot::Mac::ExtAddress *a3)
{
  v7 = this;
  v6 = a2;
  ot::MeshCoP::ComputeJoinerId(a2, v8, a3);
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(v8, v5);
  return ot::NetworkData::Leader::SteeringDataCheck(this, v5);
}

uint64_t ot::NetworkData::Leader::SteeringDataCheckJoiner(ot::NetworkData::Leader *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::NetworkData::Leader::SteeringDataCheck(this, v4);
}

uint64_t ot::NetworkData::BorderRouterEntry::PreferenceFromFlags(ot::NetworkData::BorderRouterEntry *this, unsigned __int8 a2)
{
  return ot::NetworkData::RoutePreferenceFromValue((this >> 14));
}

{
  return ot::NetworkData::BorderRouterEntry::PreferenceFromFlags(this, a2);
}

uint64_t ot::NetworkData::BorderRouterEntry::GetFlags(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::NetworkData::BorderRouterEntry::GetFlags(this, a2);
}

uint64_t ot::NetworkData::RoutePreferenceFromValue(ot::NetworkData *this)
{
  return ot::Preference::From2BitUint(this);
}

{
  return ot::NetworkData::RoutePreferenceFromValue(this);
}

uint64_t ot::NetworkData::HasRouteEntry::PreferenceFromFlags(ot::NetworkData::HasRouteEntry *this, unsigned __int8 a2)
{
  return ot::NetworkData::RoutePreferenceFromValue((this >> 6));
}

{
  return ot::NetworkData::HasRouteEntry::PreferenceFromFlags(this, a2);
}

uint64_t ot::NetworkData::HasRouteEntry::GetFlags(ot::NetworkData::HasRouteEntry *this)
{
  return *(this + 2);
}

{
  return ot::NetworkData::HasRouteEntry::GetFlags(this);
}

void ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>();
}

void ot::As<ot::MeshCoP::SteeringDataTlv>()
{
  ;
}

{
  ot::As<ot::MeshCoP::SteeringDataTlv>();
}

_BYTE *ot::NetworkData::Leader::Start(_BYTE *result, char a2)
{
  if (result[267])
  {
    __assert_rtn("Start", "network_data_leader_ftd.cpp", 64, "!mIsClone");
  }

  result[268] = a2 == 1;
  if (result[268])
  {
    return ot::TimerMilli::Start((result + 344), 0xEA60u);
  }

  return result;
}

void ot::NetworkData::Leader::HandleTimer(ot::NetworkData::Leader *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 268))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Timed out waiting for netdata on restoring leader role after reset", a3, a4, a5, a6, a7, a8);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::Mle::BecomeDetached(v8);
    IgnoreError();
  }

  else
  {
    ot::NetworkData::Leader::ContextIds::HandleTimer((this + 272));
  }
}

void ot::NetworkData::Leader::IncrementVersion(ot::NetworkData::Leader *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsLeader(v1))
  {
    ot::NetworkData::Leader::IncrementVersions(this, 0, v2, v3, v4, v5, v6, v7);
  }
}

void ot::NetworkData::Leader::IncrementVersions(ot::NetworkData::Leader *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(this + 267) & 1) == 0)
  {
    if (a2)
    {
      ++*(this + 10);
    }

    ot::Logger::LogAtLevel<(ot::LogLevel)5>("NetworkData", "%s: SignalNetDataChanged version=%d stable_version=%d", a3, a4, a5, a6, a7, a8, "IncrementVersions", ++*(this + 11), *(this + 10));
    ot::NetworkData::Leader::SignalNetDataChanged(this);
  }
}

void ot::NetworkData::Leader::IncrementVersionAndStableVersion(ot::NetworkData::Leader *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsLeader(v1))
  {
    ot::NetworkData::Leader::IncrementVersions(this, 1, v2, v3, v4, v5, v6, v7);
  }
}