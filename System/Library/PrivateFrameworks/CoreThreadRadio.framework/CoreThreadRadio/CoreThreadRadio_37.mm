void ot::NetworkData::Leader::IncrementVersions(ot::NetworkData::Leader *this, const ot::NetworkData::Leader::ChangedFlags *a2)
{
  if (ot::NetworkData::Leader::ChangedFlags::DidChange(a2))
  {
    v2 = ot::NetworkData::Leader::ChangedFlags::DidStableChange(a2);
    ot::NetworkData::Leader::IncrementVersions(this, v2, v3, v4, v5, v6, v7, v8);
  }
}

uint64_t ot::NetworkData::Leader::ChangedFlags::DidChange(ot::NetworkData::Leader::ChangedFlags *this)
{
  return *this & 1;
}

{
  return ot::NetworkData::Leader::ChangedFlags::DidChange(this);
}

uint64_t ot::NetworkData::Leader::ChangedFlags::DidStableChange(ot::NetworkData::Leader::ChangedFlags *this)
{
  return *(this + 1) & 1;
}

{
  return ot::NetworkData::Leader::ChangedFlags::DidStableChange(this);
}

uint64_t ot::NetworkData::Leader::AnycastLookup(ot::NetworkData::Leader *this, unsigned __int16 a2, unsigned __int16 *a3)
{
  BorderAgentRloc = 0;
  *a3 = -2;
  if (a2 == 64512)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    *a3 = ot::Mle::Mle::GetLeaderRloc16(v3);
  }

  else if (a2 > 0xFC0Fu)
  {
    if (a2 > 0xFC2Fu)
    {
      if (a2 > 0xFC37u)
      {
        if (a2 == 64568)
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
          if (!ot::BackboneRouter::Leader::HasPrimary(v4))
          {
            return 2;
          }

          v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
          *a3 = ot::BackboneRouter::Leader::GetServer16(v5);
        }

        else if (a2 < 0xFC40u || a2 > 0xFC4Eu)
        {
          BorderAgentRloc = 2;
        }

        else
        {
          BorderAgentRloc = ot::NetworkData::Leader::LookupRouteForAgentAloc(this, a2 - 63, ot::NetworkData::Leader::IsEntryForNdAgent, a3);
        }
      }

      else
      {
        BorderAgentRloc = ot::NetworkData::Leader::FindBorderAgentRloc(this, a3);
      }
    }

    else
    {
      BorderAgentRloc = ot::NetworkData::Leader::LookupRouteForServiceAloc(this, a2, a3);
    }
  }

  else
  {
    BorderAgentRloc = ot::NetworkData::Leader::LookupRouteForAgentAloc(this, a2, ot::NetworkData::Leader::IsEntryForDhcp6Agent, a3);
  }

  if (!BorderAgentRloc)
  {
    if (*a3 == 65534)
    {
      return 4;
    }

    else if (ot::Mle::IsChildRloc16(*a3, a2))
    {
      v10 = ot::Mle::ParentRloc16ForRloc16(*a3, v6);
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (!ot::Mle::Mle::HasRloc16(v7, v10))
      {
        *a3 = v10;
      }
    }
  }

  return BorderAgentRloc;
}

uint64_t ot::NetworkData::Leader::LookupRouteForAgentAloc(ot::NetworkData::Leader *this, unsigned __int8 a2, BOOL (*a3)(const ot::NetworkData::BorderRouterEntry *), unsigned __int16 *a4)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 4;
  PrefixTlvForContextId = 0;
  v6 = 0;
  PrefixTlvForContextId = ot::NetworkData::Leader::FindPrefixTlvForContextId(this, a2, &v6);
  if (PrefixTlvForContextId)
  {
    return ot::NetworkData::Leader::LookupRouteIn(this, PrefixTlvForContextId, v10, v9);
  }

  return v8;
}

BOOL ot::NetworkData::Leader::IsEntryForDhcp6Agent(ot::NetworkData::Leader *this, const ot::NetworkData::BorderRouterEntry *a2)
{
  v4 = 1;
  if (!ot::NetworkData::BorderRouterEntry::IsDhcp(this, a2))
  {
    return ot::NetworkData::BorderRouterEntry::IsConfigure(this, v2);
  }

  return v4;
}

uint64_t ot::NetworkData::Leader::LookupRouteForServiceAloc(ot::NetworkData::Leader *this, unsigned __int16 a2, unsigned __int16 *a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = 4;
  v3 = ot::Mle::ServiceIdFromAloc(a2);
  ServiceById = ot::NetworkData::Leader::FindServiceById(this, v3);
  if (ServiceById)
  {
    ot::NetworkData::TlvIterator::TlvIterator(v11, ServiceById);
    v10 = 0;
    while (1)
    {
      ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(v11);
      v9 = v4;
      if (!v4)
      {
        break;
      }

      if (!v10 || ot::NetworkData::Leader::CompareRouteEntries(this, v4, v10) > 0)
      {
        v10 = v9;
      }
    }

    if (v10)
    {
      Server16 = ot::NetworkData::ServerTlv::GetServer16(v10, v5);
      *v14 = Server16;
      return 0;
    }
  }

  return v13;
}

uint64_t ot::Mle::ParentRloc16ForRloc16(ot::Mle *this, unsigned __int16 a2)
{
  v2 = ot::Mle::RouterIdFromRloc16(this);
  return ot::Mle::Rloc16FromRouterId(v2);
}

{
  return ot::Mle::ParentRloc16ForRloc16(this, a2);
}

ot::NetworkData::ServiceTlv *ot::NetworkData::Leader::FindServiceById(ot::NetworkData::Leader *this, unsigned __int8 a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(this);
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  ot::Cli::Dataset::Dataset(v8, TlvsStart, TlvsEnd);
  do
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServiceTlv>(v8);
    v9 = v3;
    if (!v3)
    {
      break;
    }

    ServiceId = ot::NetworkData::ServiceTlv::GetServiceId(v9);
  }

  while (ServiceId != v10);
  return v9;
}

BOOL ot::NetworkData::BorderRouterEntry::IsNdDns(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  return (ot::BigEndian::HostSwap16(*(this + 1), a2) & 0x80) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsNdDns(this, a2);
}

void ot::NetworkData::Leader::RemoveBorderRouter(ot::NetworkData::Leader *a1, unsigned __int16 a2, unsigned __int8 a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  ot::NetworkData::Leader::ChangedFlags::ChangedFlags(v4);
  ot::NetworkData::Leader::RemoveRloc(a1, v6, v5, v4);
  ot::NetworkData::Leader::IncrementVersions(a1, v4);
}

void ot::NetworkData::Leader::RemoveRloc(ot::InstanceLocator *a1, unsigned __int16 a2, unsigned __int8 a3, ot::NetworkData::Leader::ChangedFlags *a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::NetworkData::NetworkData::NetworkData(v6, Instance, 0, 0);
  ot::NetworkData::Leader::RemoveRloc(a1, v9, v8, v6, v7);
}

void ot::NetworkData::Leader::HandleTmf<(ot::Uri)5>(ot::NetworkData::Leader *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v36 = a1;
  v38 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsLeader(v3) && (*(v36 + 268) & 1) == 0)
  {
    v4 = ot::UriToString<(ot::Uri)5>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Received %s", v5, v6, v7, v8, v9, v10, v4);
    ot::Ip6::MessageInfo::GetPeerAddr(v39);
    Iid = ot::Ip6::Address::GetIid(v11);
    if (ot::Ip6::InterfaceIdentifier::IsRoutingLocator(Iid, v13))
    {
      v35 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v40, &v38);
      if (v35)
      {
        if (v35 != 23)
        {
          return;
        }
      }

      else
      {
        ot::NetworkData::Leader::RemoveBorderRouter(v36, v38, 0);
      }

      if (!ot::Tlv::FindTlv<ot::ThreadNetworkDataTlv>(v40, v42, v14, v15, v16, v17))
      {
        if ((ot::ThreadNetworkDataTlv::IsValid(v42) & 1) == 0)
        {
          return;
        }

        Instance = ot::InstanceLocator::GetInstance(v36);
        v31 = v42;
        Tlvs = ot::ThreadNetworkDataTlv::GetTlvs(v42);
        Length = ot::Tlv::GetLength(v31);
        v34 = v37;
        ot::NetworkData::NetworkData::NetworkData(v37, Instance, Tlvs, Length);
        ot::Ip6::MessageInfo::GetPeerAddr(v39);
        v20 = ot::Ip6::Address::GetIid(v19);
        Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v20, v21);
        ot::NetworkData::Leader::RegisterNetworkData(v36, Locator, v34);
      }

      v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v36);
      if (!ot::Coap::CoapBase::SendEmptyAck(v23, v40, v39))
      {
        v24 = ot::UriToString<(ot::Uri)5>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Sent %s ack", v25, v26, v27, v28, v29, v30, v24);
      }
    }
  }
}

uint64_t ot::Tlv::FindTlv<ot::ThreadNetworkDataTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0xA, 0x101u, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::ThreadNetworkDataTlv>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::ThreadNetworkDataTlv::IsValid(ot::ThreadNetworkDataTlv *this)
{
  return 1;
}

{
  return ot::ThreadNetworkDataTlv::IsValid(this);
}

uint64_t ot::ThreadNetworkDataTlv::GetTlvs(ot::ThreadNetworkDataTlv *this)
{
  return this + 2;
}

{
  return ot::ThreadNetworkDataTlv::GetTlvs(this);
}

void ot::NetworkData::Leader::RegisterNetworkData(ot::NetworkData::Leader *this, unsigned __int16 a2, const ot::NetworkData::NetworkData *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  ot::NetworkData::Leader::ChangedFlags::ChangedFlags(v14);
  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  v3 = ot::Mle::RouterIdFromRloc16(v17);
  if (ot::RouterTable::IsAllocated(v11, v3))
  {
    v15 = ot::NetworkData::Leader::Validate(v16, v17);
    if (!v15)
    {
      ot::NetworkData::Leader::RemoveRloc(this, v17, 0, v16, v14);
      for (i = ot::NetworkData::NetworkData::GetTlvsStart(v16); i < ot::NetworkData::NetworkData::GetTlvsEnd(v16); i = ot::NetworkData::NetworkDataTlv::GetNext(i))
      {
        Type = ot::NetworkData::NetworkDataTlv::GetType(i);
        if (Type == 1)
        {
          ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
          v15 = ot::NetworkData::Leader::AddPrefix(this, v4, v14);
          if (v15)
          {
            goto LABEL_14;
          }
        }

        else if (Type == 5)
        {
          ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
          v15 = ot::NetworkData::Leader::AddService(this, v5, v14);
          if (v15)
          {
            goto LABEL_14;
          }
        }
      }

      ot::NetworkData::MutableNetworkData::GetBytes(this);
      v9 = v6;
      Length = ot::NetworkData::NetworkData::GetLength(this);
      ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("Register", v9, Length);
    }
  }

  else
  {
    v15 = 4;
  }

LABEL_14:
  ot::NetworkData::Leader::IncrementVersions(this, v14);
  if (v15 == 3)
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
    ot::NetworkData::Notifier::SignalNetworkDataFull(v8);
  }

  if ((*(this + 267) & 1) == 0)
  {
    ot::Logger::LogOnError("NetworkData", v15, "register network data");
  }
}

void ot::NetworkData::Leader::HandleTmf<(ot::Uri)17>(ot::NetworkData::Leader *a1, const ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = -1;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsLeader(v3) && (*(a1 + 268) & 1) == 0 && ot::Tlv::Find<ot::MeshCoP::BorderAgentLocatorTlv>(v11, &v8) == 23 && !ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(v11, &v7) && (ot::NetworkData::Leader::FindCommissioningSessionId(a1, &v6) || v7 == v6) && (ot::NetworkData::Leader::FindBorderAgentRloc(a1, &v8) || !ot::Tlv::Append<ot::MeshCoP::BorderAgentLocatorTlv>(v11, v8)) && !ot::NetworkData::Leader::SetCommissioningData(a1, v11))
  {
    v9 = 1;
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  if (ot::Mle::Mle::IsLeader(v4))
  {
    ot::NetworkData::Leader::SendCommissioningSetResponse(a1, v11, v10, v9);
  }
}

uint64_t ot::Tlv::Find<ot::MeshCoP::BorderAgentLocatorTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 9u, a2);
}

{
  return ot::Tlv::Find<ot::MeshCoP::BorderAgentLocatorTlv>(a1, a2);
}

uint64_t ot::NetworkData::Leader::SetCommissioningData(ot::NetworkData::Leader *this, const ot::Message *a2)
{
  v11 = this;
  v10 = a2;
  updated = 0;
  v7 = 0;
  ot::OffsetRange::InitFromMessageOffsetToEnd(v8, a2);
  Length = ot::OffsetRange::GetLength(v8);
  updated = ot::NetworkData::Leader::UpdateCommissioningData(this, Length, &v7);
  if (!updated)
  {
    v5 = v10;
    Value = ot::NetworkData::NetworkDataTlv::GetValue(v7);
    ot::Message::ReadBytes(v5, v8, Value);
  }

  return updated;
}

void ot::NetworkData::Leader::SendCommissioningSetResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v13 = a1;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v14 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, v17);
  if (v14)
  {
    if (!ot::Tlv::Append<ot::MeshCoP::StateTlv>(v14, v15))
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v13);
      if (!ot::Coap::CoapBase::SendMessage(v5, v14, v16))
      {
        v14 = 0;
        v6 = ot::UriToString<(ot::Uri)17>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Sent %s response", v7, v8, v9, v10, v11, v12, v6);
      }
    }
  }

  if (v14)
  {
    ot::Message::Free(v14);
  }
}

void ot::NetworkData::Leader::HandleTmf<(ot::Uri)15>(ot::NetworkData::Leader *a1, ot::Tlv *a2, const ot::Ip6::MessageInfo *a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v20 = a1;
  v25 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (!ot::Mle::Mle::IsLeader(v3))
  {
    goto LABEL_15;
  }

  if (*(v20 + 268))
  {
    goto LABEL_15;
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v20);
  v25 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, v27);
  if (!v25)
  {
    goto LABEL_15;
  }

  if (ot::Tlv::FindTlvValueOffsetRange(v27, 0xD, &v24, v5))
  {
    ot::NetworkData::Leader::FindCommissioningData(v20);
    v21 = v7;
    if (v7)
    {
      v18 = v25;
      Value = ot::NetworkData::NetworkDataTlv::GetValue(v21);
      Length = ot::NetworkData::NetworkDataTlv::GetLength(v21);
      if (ot::Message::AppendBytes(v18, Value, Length))
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    while (!ot::OffsetRange::IsEmpty(&v24))
    {
      v23 = 0;
      v19 = &v24;
      ot::Message::Read<unsigned char>(v27, &v24, &v23);
      IgnoreError();
      ot::OffsetRange::AdvanceOffset(&v24, 1u);
      ot::NetworkData::Leader::FindCommissioningDataSubTlv(v20, v23);
      v22 = v6;
      if (v6 && ot::Tlv::AppendTo(v22, v25))
      {
        goto LABEL_15;
      }
    }
  }

  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v20);
  if (!ot::Coap::CoapBase::SendMessage(v9, v25, v26))
  {
    v25 = 0;
    v10 = ot::UriToString<(ot::Uri)15>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Sent %s response", v11, v12, v13, v14, v15, v16, v10);
  }

LABEL_15:
  if (v25)
  {
    ot::Message::Free(v25);
  }
}

BOOL ot::NetworkData::Leader::RlocMatch(unsigned __int16 a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v4 = 0;
  if (a3)
  {
    if (a3 == 1)
    {
      return ot::Mle::RouterIdMatch(a1, a2);
    }
  }

  else
  {
    return a1 == a2;
  }

  return v4;
}

uint64_t ot::NetworkData::Leader::Validate(ot::NetworkData::Leader *this, const ot::NetworkData::NetworkData *a2)
{
  v20 = this;
  v19 = a2;
  v18 = 0;
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  for (i = ot::NetworkData::NetworkData::GetTlvsStart(v20); i < TlvsEnd; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    Instance = ot::InstanceLocator::GetInstance(v20);
    TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(v20);
    ot::NetworkData::NetworkData::NetworkData(v15, Instance, TlvsStart, i);
    if (i + 2 > TlvsEnd)
    {
      return 6;
    }

    Next = ot::NetworkData::NetworkDataTlv::GetNext(i);
    if (Next > TlvsEnd)
    {
      return 6;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type == 1)
    {
      ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
      v14 = v5;
      if (!ot::NetworkData::PrefixTlv::IsValid(v5))
      {
        return 6;
      }

      Prefix = ot::NetworkData::PrefixTlv::GetPrefix(v14);
      PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(v14);
      if (ot::NetworkData::NetworkData::FindPrefix(v15, Prefix, PrefixLength))
      {
        return 6;
      }

      v18 = ot::NetworkData::Leader::ValidatePrefix(v14, v19);
      if (v18)
      {
        return v18;
      }
    }

    else if (Type == 5)
    {
      ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
      v13 = v7;
      if (!ot::NetworkData::ServiceTlv::IsValid(v7))
      {
        return 6;
      }

      ot::NetworkData::ServiceTlv::GetServiceData(v13, v12);
      EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v13);
      if (ot::NetworkData::NetworkData::FindService(v15, EnterpriseNumber, v12, 1))
      {
        return 6;
      }

      v18 = ot::NetworkData::Leader::ValidateService(v13, v19);
      if (v18)
      {
        return v18;
      }
    }
  }

  return v18;
}

ot::NetworkData::NetworkData *ot::NetworkData::NetworkData::NetworkData(ot::NetworkData::NetworkData *this, ot::Instance *a2, const ot::NetworkData::NetworkDataTlv *a3, const ot::NetworkData::NetworkDataTlv *a4)
{
  ot::NetworkData::NetworkData::NetworkData(this, a2, a3, a4);
  return this;
}

{
  v6 = a4;
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *this = a3;
  *(this + 8) = v6 - a3;
  return result;
}

BOOL ot::NetworkData::PrefixTlv::IsValid(ot::NetworkData::PrefixTlv *this)
{
  v4 = 0;
  if (ot::NetworkData::NetworkDataTlv::GetLength(this) >= 2uLL)
  {
    Length = ot::NetworkData::NetworkDataTlv::GetLength(this);
    v4 = 0;
    if (ot::Ip6::Prefix::SizeForLength(*(this + 3)) + 2 <= Length)
    {
      return ot::Ip6::Prefix::SizeForLength(*(this + 3)) <= 0x10uLL;
    }
  }

  return v4;
}

{
  return ot::NetworkData::PrefixTlv::IsValid(this);
}

uint64_t ot::NetworkData::Leader::ValidatePrefix(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2)
{
  v21 = a2;
  v20 = 6;
  Next = ot::NetworkData::NetworkDataTlv::GetNext(this);
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  for (i = ot::NetworkData::PrefixTlv::GetSubTlvs(this); i < Next; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    if (i + 2 > Next || ot::NetworkData::NetworkDataTlv::GetNext(i) > Next)
    {
      return v20;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type)
    {
      if (Type == 2)
      {
        ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
        v13 = v3;
        if (ot::NetworkData::NetworkDataTlv::IsStable(v3))
        {
          if (v15)
          {
            return v20;
          }

          v15 = 1;
        }

        else
        {
          if (v16)
          {
            return v20;
          }

          v16 = 1;
        }

        FirstEntry = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v13);
        if (FirstEntry != ot::NetworkData::BorderRouterTlv::GetLastEntry(v13))
        {
          return v20;
        }

        v4 = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v13);
        if (ot::NetworkData::BorderRouterEntry::GetRloc(v4, v5) != v21)
        {
          return v20;
        }
      }
    }

    else
    {
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      v12 = v6;
      if (ot::NetworkData::NetworkDataTlv::IsStable(v6))
      {
        if (v17)
        {
          return v20;
        }

        v17 = 1;
      }

      else
      {
        if (v18)
        {
          return v20;
        }

        v18 = 1;
      }

      v10 = ot::NetworkData::HasRouteTlv::GetFirstEntry(v12);
      if (v10 != ot::NetworkData::HasRouteTlv::GetLastEntry(v12))
      {
        return v20;
      }

      v7 = ot::NetworkData::HasRouteTlv::GetFirstEntry(v12);
      if (ot::NetworkData::HasRouteEntry::GetRloc(v7, v8) != v21)
      {
        return v20;
      }
    }
  }

  if (v15 & 1) != 0 || (v16 & 1) != 0 || (v17 & 1) != 0 || (v18)
  {
    return 0;
  }

  return v20;
}

BOOL ot::NetworkData::ServiceTlv::IsValid(ot::NetworkData::ServiceTlv *this)
{
  Length = ot::NetworkData::NetworkDataTlv::GetLength(this);
  v7 = 0;
  if (Length)
  {
    IsThreadEnterprise = ot::NetworkData::ServiceTlv::IsThreadEnterprise(this);
    v2 = 0;
    if (!IsThreadEnterprise)
    {
      v2 = 4;
    }

    v7 = 0;
    if (Length >= (v2 + 2))
    {
      EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(this);
      ServiceDataLength = ot::NetworkData::ServiceTlv::GetServiceDataLength(this);
      return Length + 2 >= ot::NetworkData::ServiceTlv::CalculateSize(EnterpriseNumber, ServiceDataLength);
    }
  }

  return v7;
}

{
  return ot::NetworkData::ServiceTlv::IsValid(this);
}

uint64_t ot::NetworkData::Leader::ValidateService(ot::NetworkData::Leader *this, const ot::NetworkData::ServiceTlv *a2)
{
  v10 = a2;
  v9 = 6;
  Next = ot::NetworkData::NetworkDataTlv::GetNext(this);
  v7 = 0;
  for (i = ot::NetworkData::ServiceTlv::GetSubTlvs(this); i < Next; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    if (i + 2 > Next)
    {
      return v9;
    }

    if (ot::NetworkData::NetworkDataTlv::GetNext(i) > Next)
    {
      return v9;
    }

    if (ot::NetworkData::NetworkDataTlv::GetType(i) == 6)
    {
      ot::NetworkData::As<ot::NetworkData::ServerTlv>();
      v5 = v2;
      if (v7)
      {
        return v9;
      }

      v7 = 1;
      if (!ot::NetworkData::ServerTlv::IsValid(v2) || ot::NetworkData::ServerTlv::GetServer16(v5, v3) != v10)
      {
        return v9;
      }
    }
  }

  if (v7)
  {
    return 0;
  }

  return v9;
}

BOOL ot::NetworkData::ServerTlv::IsValid(ot::NetworkData::ServerTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetLength(this) >= 2uLL;
}

{
  return ot::NetworkData::ServerTlv::IsValid(this);
}

uint64_t ot::NetworkData::Leader::ContainsMatchingEntry(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2, const ot::NetworkData::HasRouteTlv *a3, const ot::NetworkData::HasRouteEntry *a4)
{
  if (this)
  {
    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(this, a2 & 1);
    v7 = ot::NetworkData::Leader::ContainsMatchingEntry(v4, a3, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ot::NetworkData::Leader::ContainsMatchingEntry(ot::NetworkData::Leader *this, const ot::NetworkData::HasRouteTlv *a2, const ot::NetworkData::HasRouteEntry *a3)
{
  v5 = 0;
  if (this)
  {
    for (i = ot::NetworkData::HasRouteTlv::GetFirstEntry(this); i <= ot::NetworkData::HasRouteTlv::GetLastEntry(this); i += 3)
    {
      if (ot::Equatable<ot::NetworkData::HasRouteEntry>::operator==(i, a2))
      {
        v5 = 1;
        return v5 & 1;
      }
    }
  }

  return v5 & 1;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(ot::NetworkData::PrefixTlv *a1, char a2)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 0, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(a1, a2);
}

BOOL ot::Equatable<ot::NetworkData::HasRouteEntry>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 3uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkData::HasRouteEntry>::operator==(a1, a2);
}

uint64_t ot::NetworkData::Leader::ContainsMatchingEntry(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2, const ot::NetworkData::BorderRouterTlv *a3, const ot::NetworkData::BorderRouterEntry *a4)
{
  if (this)
  {
    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(this, a2 & 1);
    v7 = ot::NetworkData::Leader::ContainsMatchingEntry(v4, a3, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ot::NetworkData::Leader::ContainsMatchingEntry(ot::NetworkData::Leader *this, const ot::NetworkData::BorderRouterTlv *a2, const ot::NetworkData::BorderRouterEntry *a3)
{
  v5 = 0;
  if (this)
  {
    for (i = ot::NetworkData::BorderRouterTlv::GetFirstEntry(this); i <= ot::NetworkData::BorderRouterTlv::GetLastEntry(this); i += 4)
    {
      if (ot::Equatable<ot::NetworkData::BorderRouterEntry>::operator==(i, a2))
      {
        v5 = 1;
        return v5 & 1;
      }
    }
  }

  return v5 & 1;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(ot::NetworkData::PrefixTlv *a1, char a2)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 2u, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a1, a2);
}

BOOL ot::Equatable<ot::NetworkData::BorderRouterEntry>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 4uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkData::BorderRouterEntry>::operator==(a1, a2);
}

uint64_t ot::NetworkData::Leader::ContainsMatchingServer(ot::NetworkData::Leader *this, const ot::NetworkData::ServiceTlv *a2, const ot::NetworkData::ServerTlv *a3)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  if (this)
  {
    v7 = 0;
    ot::NetworkData::TlvIterator::TlvIterator(v6, v10);
    while (1)
    {
      IsStable = ot::NetworkData::NetworkDataTlv::IsStable(v9);
      ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(v6, IsStable);
      v7 = v4;
      if (!v4)
      {
        break;
      }

      if (ot::NetworkData::ServerTlv::operator==(v7, v9))
      {
        v8 = 1;
        return v8 & 1;
      }
    }
  }

  return v8 & 1;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(uint64_t a1, char a2)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 6u, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(a1, a2);
}

BOOL ot::NetworkData::ServerTlv::operator==(ot::NetworkData::NetworkDataTlv *a1, ot::NetworkData::NetworkDataTlv *a2)
{
  Length = ot::NetworkData::NetworkDataTlv::GetLength(a1);
  v8 = 0;
  if (Length == ot::NetworkData::NetworkDataTlv::GetLength(a2))
  {
    __s1 = ot::NetworkData::NetworkDataTlv::GetValue(a1);
    __s2 = ot::NetworkData::NetworkDataTlv::GetValue(a2);
    v2 = ot::NetworkData::NetworkDataTlv::GetLength(a1);
    return memcmp(__s1, __s2, v2) == 0;
  }

  return v8;
}

{
  return ot::NetworkData::ServerTlv::operator==(a1, a2);
}

uint64_t ot::NetworkData::Leader::UpdateTlv(ot::NetworkData::Leader *this, ot::NetworkData::NetworkDataTlv *a2, const ot::NetworkData::NetworkDataTlv *a3)
{
  v6 = 1;
  if (a3 == ot::NetworkData::NetworkDataTlv::GetNext(a2))
  {
    ot::NetworkData::MutableNetworkData::RemoveTlv(this, a2);
    return 0;
  }

  else
  {
    for (i = a3; i < ot::NetworkData::NetworkDataTlv::GetNext(a2); i = ot::NetworkData::NetworkDataTlv::GetNext(i))
    {
      if (ot::NetworkData::NetworkDataTlv::IsStable(i))
      {
        ot::NetworkData::NetworkDataTlv::SetStable(a2);
        return v6;
      }
    }

    ot::NetworkData::NetworkDataTlv::ClearStable(a2);
  }

  return v6;
}

_BYTE *ot::NetworkData::NetworkDataTlv::SetStable(_BYTE *this)
{
  *this |= 1u;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::SetStable(this);
}

_BYTE *ot::NetworkData::NetworkDataTlv::ClearStable(_BYTE *this)
{
  *this &= ~1u;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::ClearStable(this);
}

void ot::NetworkData::Leader::CheckForNetDataGettingFull(ot::NetworkData::Leader *this, const ot::NetworkData::NetworkData *a2, unsigned __int16 a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (!ot::Mle::Mle::IsLeader(v3))
  {
    Instance = ot::InstanceLocator::GetInstance(this);
    ot::NetworkData::Leader::Leader(v10, Instance);
    ot::NetworkData::Leader::MarkAsClone(v10);
    if (ot::NetworkData::NetworkData::CopyNetworkData(this, 0, v10))
    {
      __assert_rtn("CheckForNetDataGettingFull", "network_data_leader_ftd.cpp", 731, "false");
    }

    if (a3 != 65534)
    {
      ot::NetworkData::Leader::RemoveBorderRouter(v10, a3, 0);
    }

    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Rloc16 = ot::Mle::Mle::GetRloc16(v5);
    ot::NetworkData::Leader::RegisterNetworkData(v10, Rloc16, a2);
  }
}

uint64_t ot::NetworkData::Leader::ContextIds::MarkAsClone(uint64_t this)
{
  *(this + 64) = 1;
  return this;
}

{
  return ot::NetworkData::Leader::ContextIds::MarkAsClone(this);
}

void ot::NetworkData::Leader::RemoveRloc(ot::NetworkData::MutableNetworkData *a1, unsigned __int16 a2, unsigned __int8 a3, ot::NetworkData::NetworkData *a4, ot::NetworkData::Leader::ChangedFlags *a5)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  ot::NetworkData::MutableNetworkData::GetTlvsStart(a1);
  Next = v5;
  while (1)
  {
    v15 = Next;
    ot::NetworkData::MutableNetworkData::GetTlvsEnd(a1);
    if (v15 >= v6)
    {
      break;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(Next);
    if (Type == 1)
    {
      ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
      v21 = v7;
      v13 = v24;
      Prefix = ot::NetworkData::PrefixTlv::GetPrefix(v7);
      PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(v21);
      v20 = ot::NetworkData::NetworkData::FindPrefix(v13, Prefix, PrefixLength);
      ot::NetworkData::Leader::RemoveRlocInPrefix(a1, v21, v26, v25, v20, v23);
      if (ot::NetworkData::Leader::UpdatePrefix(a1, v21))
      {
        goto LABEL_9;
      }
    }

    else if (Type != 5 || (ot::NetworkData::As<ot::NetworkData::ServiceTlv>(), v19 = v9, ot::NetworkData::ServiceTlv::GetServiceData(v9, v18), v11 = v24, EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v19), Service = ot::NetworkData::NetworkData::FindService(v11, EnterpriseNumber, v18, 1), ot::NetworkData::Leader::RemoveRlocInService(a1, v19, v26, v25, Service, v23), ot::NetworkData::Leader::UpdateService(a1, v19)))
    {
LABEL_9:
      Next = ot::NetworkData::NetworkDataTlv::GetNext(Next);
    }
  }
}

uint64_t ot::NetworkData::Leader::AddPrefix(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2, ot::NetworkData::Leader::ChangedFlags *a3)
{
  HasRoute = 0;
  Prefix = ot::NetworkData::PrefixTlv::GetPrefix(a2);
  PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(a2);
  ot::NetworkData::MutableNetworkData::FindPrefix(this, Prefix, PrefixLength);
  v19 = v4;
  if (!v4)
  {
    v5 = ot::NetworkData::PrefixTlv::GetPrefixLength(a2);
    v7 = ot::NetworkData::PrefixTlv::CalculateSize(v5, v6);
    ot::NetworkData::MutableNetworkData::AppendTlv(this, v7);
    ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
    v19 = v8;
    if (!v8)
    {
      HasRoute = 3;
      goto LABEL_14;
    }

    DomainId = ot::NetworkData::PrefixTlv::GetDomainId(a2);
    v15 = ot::NetworkData::PrefixTlv::GetPrefixLength(a2);
    v9 = ot::NetworkData::PrefixTlv::GetPrefix(a2);
    ot::NetworkData::PrefixTlv::Init(v19, DomainId, v15, v9);
  }

  for (i = ot::NetworkData::PrefixTlv::GetSubTlvs(a2); i < ot::NetworkData::NetworkDataTlv::GetNext(a2); i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type)
    {
      if (Type == 2)
      {
        ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
        HasRoute = ot::NetworkData::Leader::AddBorderRouter(this, v11, v19, a3);
        if (HasRoute)
        {
          break;
        }
      }
    }

    else
    {
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      HasRoute = ot::NetworkData::Leader::AddHasRoute(this, v10, v19, a3);
      if (HasRoute)
      {
        break;
      }
    }
  }

LABEL_14:
  if (v19)
  {
    ot::NetworkData::Leader::UpdatePrefix(this, v19);
  }

  return HasRoute;
}

uint64_t ot::NetworkData::Leader::AddService(ot::NetworkData::Leader *this, const ot::NetworkData::ServiceTlv *a2, ot::NetworkData::Leader::ChangedFlags *a3)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v20 = 0;
  v18 = 0;
  ot::NetworkData::ServiceTlv::GetServiceData(a2, v19);
  EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v23);
  ot::NetworkData::MutableNetworkData::FindService(this, EnterpriseNumber, v19, 1);
  v20 = v4;
  if (!v4)
  {
    v17 = 0;
    v21 = ot::NetworkData::Leader::AllocateServiceId(this, &v17);
    if (v21)
    {
      goto LABEL_9;
    }

    v15 = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v23);
    Length = ot::Data<(ot::DataLengthType)0>::GetLength(v19);
    v6 = ot::NetworkData::ServiceTlv::CalculateSize(v15, Length);
    ot::NetworkData::MutableNetworkData::AppendTlv(this, v6);
    ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
    v20 = v7;
    if (!v7)
    {
      v21 = 3;
      goto LABEL_9;
    }

    v14 = v20;
    v13 = v17;
    v8 = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v23);
    ot::NetworkData::ServiceTlv::Init(v14, v13, v8, v19);
  }

  SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(v23);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(v23);
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(SubTlvs, Next);
  v18 = v10;
  if (!v10)
  {
    __assert_rtn("AddService", "network_data_leader_ftd.cpp", 870, "server != nullptr");
  }

  v21 = ot::NetworkData::Leader::AddServer(this, v18, v20, v22);
LABEL_9:
  if (v20)
  {
    ot::NetworkData::Leader::UpdateService(this, v20);
  }

  return v21;
}

uint64_t ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>(uint64_t a1, uint64_t a2, __int16 a3)
{
  return ot::Logger::DumpAtLevel<(ot::LogLevel)5>("NetworkData", a1, a2, a3);
}

{
  return ot::Logger::DumpAtLevel<(ot::LogLevel)5>("NetworkData", a1, a2, a3);
}

void ot::NetworkData::Notifier::SignalNetworkDataFull(ot::NetworkData::Notifier *this)
{
  ot::Tasklet::Post((this + 48));
}

{
  ot::NetworkData::Notifier::SignalNetworkDataFull(this);
}

void ot::NetworkData::MutableNetworkData::FindPrefix(ot::NetworkData::MutableNetworkData *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::FindPrefix(v3, a2, a3);
  ot::AsNonConst<ot::NetworkData::PrefixTlv>();
}

{
  ot::NetworkData::MutableNetworkData::FindPrefix(this, a2, a3);
}

uint64_t ot::NetworkData::PrefixTlv::CalculateSize(ot::NetworkData::PrefixTlv *this, unsigned __int8 a2)
{
  return (ot::Ip6::Prefix::SizeForLength(this) + 4);
}

{
  return ot::NetworkData::PrefixTlv::CalculateSize(this, a2);
}

uint64_t ot::NetworkData::PrefixTlv::Init(ot::NetworkData::PrefixTlv *this, char a2, unsigned __int8 a3, const unsigned __int8 *a4)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 1);
  *(this + 2) = a2;
  *(this + 3) = a3;
  __dst = ot::NetworkData::PrefixTlv::GetPrefix(this);
  v4 = ot::Ip6::Prefix::SizeForLength(a3);
  memcpy(__dst, a4, v4);
  return ot::NetworkData::PrefixTlv::SetSubTlvsLength(this, 0);
}

{
  return ot::NetworkData::PrefixTlv::Init(this, a2, a3, a4);
}

uint64_t ot::NetworkData::Leader::AddHasRoute(ot::NetworkData::Leader *this, const ot::NetworkData::HasRouteTlv *a2, ot::NetworkData::PrefixTlv *a3, ot::NetworkData::Leader::ChangedFlags *a4)
{
  v15 = 0;
  IsStable = ot::NetworkData::NetworkDataTlv::IsStable(a2);
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(a3, IsStable);
  v14 = v5;
  FirstEntry = ot::NetworkData::HasRouteTlv::GetFirstEntry(a2);
  if (!v14)
  {
    if (!ot::NetworkData::MutableNetworkData::CanInsert(this, 5u))
    {
      return 3;
    }

    ot::NetworkData::NetworkDataTlv::GetNext(a3);
    ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
    v14 = v7;
    ot::NetworkData::MutableNetworkData::Insert(this, v7, 2u);
    ot::NetworkData::NetworkDataTlv::IncreaseLength(a3, 2);
    ot::NetworkData::HasRouteTlv::Init(v14);
    if (ot::NetworkData::NetworkDataTlv::IsStable(a2))
    {
      ot::NetworkData::NetworkDataTlv::SetStable(v14);
    }
  }

  if ((ot::NetworkData::Leader::ContainsMatchingEntry(v14, FirstEntry, v6) & 1) == 0)
  {
    if (ot::NetworkData::MutableNetworkData::CanInsert(this, 3u))
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(v14);
      ot::NetworkData::MutableNetworkData::Insert(this, Next, 3u);
      ot::NetworkData::NetworkDataTlv::IncreaseLength(v14, 3);
      ot::NetworkData::NetworkDataTlv::IncreaseLength(a3, 3);
      LastEntry = ot::NetworkData::HasRouteTlv::GetLastEntry(v14);
      *LastEntry = *FirstEntry;
      *(LastEntry + 2) = *(FirstEntry + 2);
      ot::NetworkData::Leader::ChangedFlags::Update(a4, v14);
    }

    else
    {
      return 3;
    }
  }

  return v15;
}

uint64_t ot::NetworkData::Leader::AddBorderRouter(ot::NetworkData::Leader *this, const ot::NetworkData::BorderRouterTlv *a2, ot::NetworkData::PrefixTlv *a3, ot::NetworkData::Leader::ChangedFlags *a4)
{
  v27 = this;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  UnallocatedId = 0;
  IsStable = ot::NetworkData::NetworkDataTlv::IsStable(a2);
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a3, IsStable);
  v22 = v5;
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(v25);
  v21 = v6;
  v20 = 0;
  FirstEntry = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v26);
  if (v21 || (UnallocatedId = ot::NetworkData::Leader::ContextIds::GetUnallocatedId((this + 272), &v20)) == 0)
  {
    if (!v22)
    {
      v7 = 4;
      if (v21)
      {
        v7 = 0;
      }

      if (!ot::NetworkData::MutableNetworkData::CanInsert(this, v7 + 6))
      {
        return 3;
      }

      ot::NetworkData::NetworkDataTlv::GetNext(v25);
      ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
      v22 = v8;
      ot::NetworkData::MutableNetworkData::Insert(this, v8, 2u);
      ot::NetworkData::NetworkDataTlv::IncreaseLength(v25, 2);
      ot::NetworkData::BorderRouterTlv::Init(v22);
      if (ot::NetworkData::NetworkDataTlv::IsStable(v26))
      {
        ot::NetworkData::NetworkDataTlv::SetStable(v22);
      }
    }

    if (!v21)
    {
      if (!ot::NetworkData::MutableNetworkData::CanInsert(this, 8u))
      {
        return 3;
      }

      ot::NetworkData::NetworkDataTlv::GetNext(v25);
      ot::NetworkData::As<ot::NetworkData::ContextTlv>();
      v21 = v9;
      ot::NetworkData::MutableNetworkData::Insert(this, v9, 4u);
      ot::NetworkData::NetworkDataTlv::IncreaseLength(v25, 4);
      v16 = v21;
      v15 = v20;
      PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(v25);
      ot::NetworkData::ContextTlv::Init(v16, v15, PrefixLength);
    }

    if (ot::NetworkData::NetworkDataTlv::IsStable(v26))
    {
      ot::NetworkData::NetworkDataTlv::SetStable(v21);
    }

    ot::NetworkData::ContextTlv::SetCompress(v21);
    ContextId = ot::NetworkData::ContextTlv::GetContextId(v21);
    ot::NetworkData::Leader::ContextIds::MarkAsInUse((this + 272), ContextId);
    if ((ot::NetworkData::Leader::ContainsMatchingEntry(v22, FirstEntry, v12) & 1) == 0)
    {
      if (ot::NetworkData::MutableNetworkData::CanInsert(this, 4u))
      {
        Next = ot::NetworkData::NetworkDataTlv::GetNext(v22);
        ot::NetworkData::MutableNetworkData::Insert(this, Next, 4u);
        ot::NetworkData::NetworkDataTlv::IncreaseLength(v22, 4);
        ot::NetworkData::NetworkDataTlv::IncreaseLength(v25, 4);
        *ot::NetworkData::BorderRouterTlv::GetLastEntry(v22) = *FirstEntry;
        ot::NetworkData::Leader::ChangedFlags::Update(v24, v22);
      }

      else
      {
        return 3;
      }
    }
  }

  return UnallocatedId;
}

void ot::NetworkData::MutableNetworkData::FindService(uint64_t a1, int a2, uint64_t a3, char a4)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::FindService(v4, a2, a3, a4);
  ot::AsNonConst<ot::NetworkData::ServiceTlv>();
}

{
  ot::NetworkData::MutableNetworkData::FindService(a1, a2, a3, a4);
}

uint64_t ot::NetworkData::Leader::AllocateServiceId(ot::NetworkData::Leader *this, unsigned __int8 *a2)
{
  v11 = 23;
  if (*(this + 267))
  {
    *a2 = 0;
    return 0;
  }

  else
  {
    for (i = 0; i <= 0xFu; ++i)
    {
      if (!ot::NetworkData::Leader::FindServiceById(this, i))
      {
        *a2 = i;
        v11 = 0;
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Allocated Service ID = %d", v2, v3, v4, v5, v6, v7, i);
        return v11;
      }
    }
  }

  return v11;
}

uint64_t ot::NetworkData::ServiceTlv::CalculateSize(ot::NetworkData::ServiceTlv *this, unsigned __int8 a2)
{
  v2 = 0;
  if (this != 44970)
  {
    v2 = 4;
  }

  return (a2 + 4 + v2);
}

{
  return ot::NetworkData::ServiceTlv::CalculateSize(this, a2);
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(ot::NetworkData::NetworkDataTlv *a1, unint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 6u);
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(a1, a2);
}

uint64_t ot::NetworkData::Leader::AddServer(ot::NetworkData::Leader *this, const ot::NetworkData::ServerTlv *a2, ot::NetworkData::ServiceTlv *a3, ot::NetworkData::Leader::ChangedFlags *a4)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  v13 = 0;
  Size = ot::NetworkData::NetworkDataTlv::GetSize(a2);
  if ((ot::NetworkData::Leader::ContainsMatchingServer(v16, v17, v4) & 1) == 0)
  {
    if (ot::NetworkData::MutableNetworkData::CanInsert(this, Size))
    {
      ot::NetworkData::ServerTlv::GetServerData(v17, v12);
      ot::NetworkData::NetworkDataTlv::GetNext(v16);
      ot::NetworkData::As<ot::NetworkData::ServerTlv>();
      v13 = v5;
      ot::NetworkData::MutableNetworkData::Insert(this, v5, Size);
      v9 = v13;
      Server16 = ot::NetworkData::ServerTlv::GetServer16(v17, v6);
      ot::NetworkData::ServerTlv::Init(v9, Server16, v12);
      if (ot::NetworkData::NetworkDataTlv::IsStable(v17))
      {
        ot::NetworkData::NetworkDataTlv::SetStable(v13);
      }

      ot::NetworkData::NetworkDataTlv::IncreaseLength(v16, Size);
      ot::NetworkData::Leader::ChangedFlags::Update(v15, v13);
    }

    else
    {
      return 3;
    }
  }

  return v14;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(uint64_t a1, char a2)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 0, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(a1, a2);
}

uint64_t ot::NetworkData::NetworkDataTlv::IncreaseLength(uint64_t this, char a2)
{
  *(this + 1) += a2;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::IncreaseLength(this, a2);
}

uint64_t ot::NetworkData::HasRouteTlv::Init(ot::NetworkData::HasRouteTlv *this)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 0);
  return ot::NetworkData::NetworkDataTlv::SetLength(this, 0);
}

{
  return ot::NetworkData::HasRouteTlv::Init(this);
}

BOOL ot::NetworkData::Leader::ChangedFlags::Update(ot::NetworkData::Leader::ChangedFlags *this, const ot::NetworkData::NetworkDataTlv *a2)
{
  *this = 1;
  v2 = *(this + 1);
  result = 1;
  v5 = 1;
  if ((v2 & 1) == 0)
  {
    result = ot::NetworkData::NetworkDataTlv::IsStable(a2);
    v5 = result;
  }

  *(this + 1) = v5 & 1;
  return result;
}

{
  return ot::NetworkData::Leader::ChangedFlags::Update(this, a2);
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(uint64_t a1, char a2)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 2u, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a1, a2);
}

uint64_t ot::NetworkData::Leader::ContextIds::GetUnallocatedId(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 *a2)
{
  v5 = 23;
  if (*(this + 64))
  {
    *a2 = 1;
    return 0;
  }

  else
  {
    for (i = 1; i <= 0xFu; ++i)
    {
      if (ot::NetworkData::Leader::ContextIds::IsUnallocated(this, i))
      {
        *a2 = i;
        return 0;
      }
    }
  }

  return v5;
}

uint64_t ot::NetworkData::BorderRouterTlv::Init(ot::NetworkData::BorderRouterTlv *this)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 2);
  return ot::NetworkData::NetworkDataTlv::SetLength(this, 0);
}

{
  return ot::NetworkData::BorderRouterTlv::Init(this);
}

uint64_t ot::NetworkData::ContextTlv::Init(ot::NetworkData::ContextTlv *this, char a2, char a3)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 3);
  result = ot::NetworkData::NetworkDataTlv::SetLength(this, 2);
  *(this + 2) = a2 & 0xF;
  *(this + 3) = a3;
  return result;
}

{
  return ot::NetworkData::ContextTlv::Init(this, a2, a3);
}

uint64_t ot::NetworkData::ContextTlv::SetCompress(uint64_t this)
{
  *(this + 2) |= 0x10u;
  return this;
}

{
  return ot::NetworkData::ContextTlv::SetCompress(this);
}

_DWORD *ot::NetworkData::Leader::ContextIds::MarkAsInUse(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return ot::Time::SetValue(this + a2 - 1, 1);
}

{
  return ot::NetworkData::Leader::ContextIds::MarkAsInUse(this, a2);
}

uint64_t ot::NetworkData::ServerTlv::Init(ot::NetworkData::NetworkDataTlv *a1, unsigned __int16 a2, uint64_t a3)
{
  ot::NetworkData::NetworkDataTlv::Init(a1);
  ot::NetworkData::NetworkDataTlv::SetType(a1, 6);
  ot::NetworkData::ServerTlv::SetServer16(a1, a2);
  ot::NetworkData::ServerTlv::GetServerData(a1);
  ot::Data<(ot::DataLengthType)0>::CopyBytesTo(a3, v3);
  Length = ot::Data<(ot::DataLengthType)0>::GetLength(a3);
  return ot::NetworkData::NetworkDataTlv::SetLength(a1, Length + 2);
}

{
  return ot::NetworkData::ServerTlv::Init(a1, a2, a3);
}

void ot::NetworkData::Leader::RemoveRlocInPrefix(uint64_t a1, ot::NetworkData::PrefixTlv *a2, unsigned __int16 a3, unsigned __int8 a4, ot::NetworkData::Leader *a5, ot::NetworkData::Leader::ChangedFlags *a6)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a2);
  while (SubTlvs < ot::NetworkData::NetworkDataTlv::GetNext(a2))
  {
    Type = ot::NetworkData::NetworkDataTlv::GetType(SubTlvs);
    if (Type)
    {
      if (Type == 2)
      {
        ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
        ot::NetworkData::Leader::RemoveRlocInBorderRouter(a1, a2, v7, a3, a4, a5, a6);
        if (!ot::NetworkData::NetworkDataTlv::GetLength(SubTlvs))
        {
          goto LABEL_7;
        }
      }

LABEL_10:
      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(SubTlvs);
    }

    else
    {
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      ot::NetworkData::Leader::RemoveRlocInHasRoute(a1, a2, v6, a3, a4, a5, a6);
      if (ot::NetworkData::NetworkDataTlv::GetLength(SubTlvs))
      {
        goto LABEL_10;
      }

LABEL_7:
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, 2);
      ot::NetworkData::MutableNetworkData::RemoveTlv(a1, SubTlvs);
    }
  }

  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(a2);
  v14 = v8;
  if (v8)
  {
    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a2);
    if (v9)
    {
      ot::NetworkData::ContextTlv::SetCompress(v14);
      ContextId = ot::NetworkData::ContextTlv::GetContextId(v14);
      ot::NetworkData::Leader::ContextIds::MarkAsInUse((a1 + 272), ContextId);
    }

    else
    {
      ot::NetworkData::ContextTlv::ClearCompress(v14);
      v10 = ot::NetworkData::ContextTlv::GetContextId(v14);
      ot::NetworkData::Leader::ContextIds::ScheduleToRemove(a1 + 272, v10);
    }
  }
}

void ot::NetworkData::Leader::RemoveRlocInService(ot::NetworkData::MutableNetworkData *a1, ot::NetworkData::ServiceTlv *a2, unsigned __int16 a3, unsigned __int8 a4, ot::NetworkData::Leader *a5, ot::NetworkData::Leader::ChangedFlags *a6)
{
  SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(a2);
  while (1)
  {
    Next = ot::NetworkData::NetworkDataTlv::GetNext(a2);
    ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(SubTlvs, Next);
    v13 = v7;
    if (!v7)
    {
      break;
    }

    Server16 = ot::NetworkData::ServerTlv::GetServer16(v7, v8);
    if (!ot::NetworkData::Leader::RlocMatch(Server16, a3, a4) || (ot::NetworkData::Leader::ContainsMatchingServer(a5, v13, v10) & 1) != 0)
    {
      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(v13);
    }

    else
    {
      Size = ot::NetworkData::NetworkDataTlv::GetSize(v13);
      ot::NetworkData::Leader::ChangedFlags::Update(a6, v13);
      ot::NetworkData::MutableNetworkData::RemoveTlv(a1, v13);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, Size);
    }
  }
}

unint64_t ot::NetworkData::Leader::RemoveRlocInHasRoute(ot::NetworkData::MutableNetworkData *a1, ot::NetworkData::NetworkDataTlv *a2, ot::NetworkData::HasRouteTlv *a3, unsigned __int16 a4, unsigned __int8 a5, ot::NetworkData::Leader *a6, ot::NetworkData::Leader::ChangedFlags *a7)
{
  FirstEntry = ot::NetworkData::HasRouteTlv::GetFirstEntry(a3);
  while (1)
  {
    result = ot::NetworkData::HasRouteTlv::GetLastEntry(a3);
    if (FirstEntry > result)
    {
      break;
    }

    Rloc = ot::NetworkData::HasRouteEntry::GetRloc(FirstEntry, v8);
    if (!ot::NetworkData::Leader::RlocMatch(Rloc, a4, a5) || (IsStable = ot::NetworkData::NetworkDataTlv::IsStable(a3), (ot::NetworkData::Leader::ContainsMatchingEntry(a6, IsStable, FirstEntry, v11) & 1) != 0))
    {
      FirstEntry = ot::NetworkData::HasRouteEntry::GetNext(FirstEntry);
    }

    else
    {
      ot::NetworkData::Leader::ChangedFlags::Update(a7, a3);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a3, 3);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, 3);
      ot::NetworkData::MutableNetworkData::Remove(a1, FirstEntry, 3u);
    }
  }

  return result;
}

uint64_t ot::NetworkData::NetworkDataTlv::DecreaseLength(uint64_t this, char a2)
{
  *(this + 1) -= a2;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::DecreaseLength(this, a2);
}

unint64_t ot::NetworkData::Leader::RemoveRlocInBorderRouter(ot::NetworkData::MutableNetworkData *a1, ot::NetworkData::NetworkDataTlv *a2, ot::NetworkData::BorderRouterTlv *a3, unsigned __int16 a4, unsigned __int8 a5, ot::NetworkData::Leader *a6, ot::NetworkData::Leader::ChangedFlags *a7)
{
  FirstEntry = ot::NetworkData::BorderRouterTlv::GetFirstEntry(a3);
  while (1)
  {
    result = ot::NetworkData::BorderRouterTlv::GetLastEntry(a3);
    if (FirstEntry > result)
    {
      break;
    }

    Rloc = ot::NetworkData::BorderRouterEntry::GetRloc(FirstEntry, v8);
    if (!ot::NetworkData::Leader::RlocMatch(Rloc, a4, a5) || (IsStable = ot::NetworkData::NetworkDataTlv::IsStable(a3), (ot::NetworkData::Leader::ContainsMatchingEntry(a6, IsStable, FirstEntry, v11) & 1) != 0))
    {
      FirstEntry = ot::NetworkData::BorderRouterEntry::GetNext(FirstEntry);
    }

    else
    {
      ot::NetworkData::Leader::ChangedFlags::Update(a7, a3);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a3, 4);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, 4);
      ot::NetworkData::MutableNetworkData::Remove(a1, FirstEntry, 4u);
    }
  }

  return result;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(uint64_t a1)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 2u);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a1);
}

uint64_t ot::NetworkData::ContextTlv::ClearCompress(uint64_t this)
{
  *(this + 2) &= ~0x10u;
  return this;
}

{
  return ot::NetworkData::ContextTlv::ClearCompress(this);
}

uint64_t ot::NetworkData::Leader::ContextIds::ScheduleToRemove(uint64_t this, unsigned __int8 a2)
{
  v10 = this;
  v9 = a2;
  v5 = this;
  if ((*(this + 64) & 1) == 0)
  {
    this = ot::NetworkData::Leader::ContextIds::IsInUse(this, v9);
    if (this)
    {
      v3 = v9;
      Now = ot::TimerMilli::GetNow(this);
      v2 = ot::Time::SecToMsec(v5[15]);
      v8 = ot::Time::operator+(&Now, v2);
      ot::NetworkData::Leader::ContextIds::SetRemoveTime(v5, v3, v8);
      v4 = (ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v5) + 344);
      v6 = ot::NetworkData::Leader::ContextIds::GetRemoveTime(v5, v9);
      return ot::TimerMilli::FireAtIfEarlier(v4, v6);
    }
  }

  return this;
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(uint64_t a1, uint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 6u);
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(a1, a2);
}

void ot::NetworkData::Leader::RemoveContext(ot::NetworkData::Leader *this, unsigned __int8 a2)
{
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
  Next = v2;
  while (1)
  {
    ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
    ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::PrefixTlv>(Next, v3);
    v12 = v4;
    if (!v4)
    {
      break;
    }

    ot::NetworkData::Leader::RemoveContext(this, v4, a2);
    if (ot::NetworkData::Leader::UpdatePrefix(this, v12))
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(v12);
    }
  }

  ot::NetworkData::Leader::IncrementVersions(this, 1, v5, v6, v7, v8, v9, v10);
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::PrefixTlv>(uint64_t a1, uint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 1u);
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::PrefixTlv>(a1, a2);
}

void ot::NetworkData::Leader::RemoveContext(ot::NetworkData::Leader *this, ot::NetworkData::PrefixTlv *a2, unsigned __int8 a3)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a2);
  while (1)
  {
    Next = ot::NetworkData::NetworkDataTlv::GetNext(a2);
    ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ContextTlv>(SubTlvs, Next);
    v7 = v4;
    if (!v4)
    {
      break;
    }

    if (ot::NetworkData::ContextTlv::GetContextId(v4) == a3)
    {
      Size = ot::NetworkData::NetworkDataTlv::GetSize(v7);
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, v7);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, Size);
    }

    else
    {
      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(v7);
    }
  }
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ContextTlv>(uint64_t a1, uint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 3u);
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ContextTlv>(a1, a2);
}

void ot::NetworkData::Leader::HandleNetworkDataRestoredAfterReset(ot::NetworkData::Leader *this)
{
  v24 = this;
  v23 = 0;
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
  v12 = v1;
  ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
  ot::Cli::Dataset::Dataset(v22, v12, v2);
  ot::NetworkData::Leader::ChangedFlags::ChangedFlags(v21);
  v20 = 0;
  v19 = 0;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Array(v18);
  *(this + 268) = 0;
  ot::NetworkData::NetworkData::FindRlocs(this, 0, 0, v18);
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
  v17 = v3;
  v16 = ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(v18);
  while (v17 != v16)
  {
    v15 = *v17;
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    v4 = ot::Mle::RouterIdFromRloc16(v15);
    if (!ot::RouterTable::IsAllocated(v11, v4))
    {
      ot::NetworkData::Leader::RemoveRloc(this, v15, 1u, v21);
    }

    ++v17;
  }

  ot::NetworkData::Leader::IncrementVersions(this, v21);
  while (1)
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(v22);
    v23 = v5;
    if (!v5)
    {
      break;
    }

    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(v23);
    v14 = v6;
    if (v6)
    {
      ContextId = ot::NetworkData::ContextTlv::GetContextId(v6);
      ot::NetworkData::Leader::ContextIds::MarkAsInUse((this + 272), ContextId);
      if (!ot::NetworkData::ContextTlv::IsCompress(v14))
      {
        v8 = ot::NetworkData::ContextTlv::GetContextId(v14);
        ot::NetworkData::Leader::ContextIds::ScheduleToRemove(this + 272, v8);
      }
    }
  }

  if (!ot::NetworkData::Leader::FindCommissioningSessionId(this, &v19))
  {
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
    ot::MeshCoP::Leader::SetSessionId(v9, v19);
  }

  if (!ot::NetworkData::Leader::FindBorderAgentRloc(this, &v20))
  {
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
    ot::MeshCoP::Leader::SetEmptyCommissionerData(v10);
  }
}

uint64_t ot::MeshCoP::Leader::SetSessionId(uint64_t this, __int16 a2)
{
  *(this + 102) = a2;
  return this;
}

{
  return ot::MeshCoP::Leader::SetSessionId(this, a2);
}

uint64_t ot::NetworkData::Leader::UpdateCommissioningData(ot::NetworkData::Leader *this, unsigned __int16 a2, ot::NetworkData::CommissioningDataTlv **a3)
{
  v10 = 0;
  ot::NetworkData::Leader::FindCommissioningData(this);
  *&v9[2] = v3;
  if (v3)
  {
    if (a2 > ot::NetworkData::NetworkDataTlv::GetLength(v3))
    {
      v7 = a2 - ot::NetworkData::NetworkDataTlv::GetLength(*&v9[2]);
    }

    else
    {
      LOWORD(v7) = 0;
    }

    CanInsert = ot::NetworkData::MutableNetworkData::CanInsert(this, v7);
  }

  else
  {
    *v9 = (a2 + 2);
    CanInsert = ot::NetworkData::MutableNetworkData::CanInsert(this, *v9);
  }

  if (CanInsert)
  {
    if (*&v9[2])
    {
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, *&v9[2]);
    }

    ot::NetworkData::MutableNetworkData::AppendTlv(this, a2 + 2);
    ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>();
    *a3 = v5;
    if (!*a3)
    {
      __assert_rtn("UpdateCommissioningData", "network_data_leader_ftd.cpp", 1423, "aDataTlv != nullptr");
    }

    ot::NetworkData::CommissioningDataTlv::Init(*a3);
    ot::NetworkData::NetworkDataTlv::SetLength(*a3, a2);
    ++*(this + 11);
    ot::NetworkData::Leader::SignalNetDataChanged(this);
  }

  else
  {
    return 3;
  }

  return v10;
}

uint64_t ot::NetworkData::CommissioningDataTlv::Init(ot::NetworkData::CommissioningDataTlv *this)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 4);
  return ot::NetworkData::NetworkDataTlv::SetLength(this, 0);
}

{
  return ot::NetworkData::CommissioningDataTlv::Init(this);
}

uint64_t ot::NetworkData::Leader::SetCommissioningData(ot::NetworkData::Leader *this, const void *a2, unsigned __int8 a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  updated = 0;
  v5 = 0;
  updated = ot::NetworkData::Leader::UpdateCommissioningData(this, a3, &v5);
  if (!updated)
  {
    Value = ot::NetworkData::NetworkDataTlv::GetValue(v5);
    memcpy(Value, v8, v7);
  }

  return updated;
}

uint64_t ot::NetworkData::Leader::ContextIds::HandleTimer(ot::NetworkData::Leader::ContextIds *this)
{
  v10 = this;
  ot::NextFireTime::NextFireTime(&v9);
  if (*(this + 64))
  {
    __assert_rtn("HandleTimer", "network_data_leader_ftd.cpp", 1614, "!mIsClone");
  }

  for (i = 1; i <= 0xFu; ++i)
  {
    if (!ot::NetworkData::Leader::ContextIds::IsUnallocated(this, i) && !ot::NetworkData::Leader::ContextIds::IsInUse(this, i))
    {
      Now = ot::NextFireTime::GetNow(&v9);
      v6 = ot::NetworkData::Leader::ContextIds::GetRemoveTime(this, i);
      if (ot::Time::operator>=(&Now, &v6))
      {
        ot::NetworkData::Leader::ContextIds::MarkAsUnallocated(this, i);
        v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        ot::NetworkData::Leader::RemoveContext(v1, i);
      }

      else
      {
        v5 = ot::NetworkData::Leader::ContextIds::GetRemoveTime(this, i);
        ot::NextFireTime::UpdateIfEarlier(&v9, v5);
      }
    }
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  return ot::TimerMilli::FireAt((v2 + 344), &v9);
}

ot::NetworkData::Leader::ContextIds *ot::NetworkData::Leader::ContextIds::ContextIds(ot::NetworkData::Leader::ContextIds *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *(this + 15) = 300;
  *(this + 64) = 0;
  return result;
}

{
  ot::NetworkData::Leader::ContextIds::ContextIds(this, a2);
  return this;
}

ot::NetworkData::Leader::ContextIds *ot::NetworkData::Leader::ContextIds::Clear(ot::NetworkData::Leader::ContextIds *this)
{
  v1 = this;
  for (i = 1; i <= 0xFu; ++i)
  {
    this = ot::NetworkData::Leader::ContextIds::MarkAsUnallocated(v1, i);
  }

  return this;
}

_DWORD *ot::NetworkData::Leader::ContextIds::MarkAsUnallocated(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return ot::Time::SetValue(this + a2 - 1, 0);
}

{
  return ot::NetworkData::Leader::ContextIds::MarkAsUnallocated(this, a2);
}

BOOL ot::NetworkData::Leader::ContextIds::IsUnallocated(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return ot::Time::GetValue((this + 4 * a2 - 4)) == 0;
}

{
  return ot::NetworkData::Leader::ContextIds::IsUnallocated(this, a2);
}

BOOL ot::NetworkData::Leader::ContextIds::IsInUse(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return ot::Time::GetValue((this + 4 * a2 - 4)) == 1;
}

{
  return ot::NetworkData::Leader::ContextIds::IsInUse(this, a2);
}

_DWORD *ot::NetworkData::Leader::ContextIds::SetRemoveTime(uint64_t a1, unsigned __int8 a2, int a3)
{
  v8 = a3;
  for (i = ot::Time::GetValue(&v8); ; ++i)
  {
    v4 = 1;
    if (i)
    {
      v4 = i == 1;
    }

    if (!v4)
    {
      break;
    }
  }

  return ot::Time::SetValue((a1 + 4 * (a2 - 1)), i);
}

uint64_t ot::NetworkData::Leader::ContextIds::GetRemoveTime(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return *(this + a2 - 1);
}

{
  return ot::NetworkData::Leader::ContextIds::GetRemoveTime(this, a2);
}

_BYTE *ot::NetworkData::Leader::ChangedFlags::ChangedFlags(_BYTE *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

void ot::AsNonConst<ot::NetworkData::CommissioningDataTlv>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkData::CommissioningDataTlv>();
}

void ot::AsNonConst<ot::NetworkData::PrefixTlv>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkData::PrefixTlv>();
}

_BYTE *ot::NetworkData::NetworkDataTlv::Init(_BYTE *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::Init(this);
}

_BYTE *ot::NetworkData::NetworkDataTlv::SetType(_BYTE *result, char a2)
{
  *result = *result & 1 | (2 * a2);
  return result;
}

{
  return ot::NetworkData::NetworkDataTlv::SetType(result, a2);
}

void ot::AsNonConst<ot::NetworkData::ServiceTlv>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkData::ServiceTlv>();
}

void ot::NetworkData::ServerTlv::GetServerData(ot::NetworkData::ServerTlv *this)
{
  ot::AsConst<ot::NetworkData::ServerTlv>();
  ot::NetworkData::ServerTlv::GetServerData(v1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::NetworkData::ServerTlv::GetServerData(this);
}

void ot::AsConst<ot::NetworkData::ServerTlv>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::ServerTlv>();
}

void ot::NetworkData::PrefixTlv::FindSubTlv(uint64_t a1, unsigned __int8 a2, char a3)
{
  ot::AsConst<ot::NetworkData::PrefixTlv>();
  ot::NetworkData::PrefixTlv::FindSubTlv(v3, a2, a3 & 1);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, a2, a3);
}

void ot::NetworkData::NetworkDataTlv::Find(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  ot::AsConst<ot::NetworkData::NetworkDataTlv>();
  v5 = v3;
  ot::AsConst<ot::NetworkData::NetworkDataTlv>();
  ot::NetworkData::NetworkDataTlv::Find(v5, v4, a3);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, a3);
}

void ot::AsConst<ot::NetworkData::NetworkDataTlv>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::NetworkDataTlv>();
}

uint64_t ot::NetworkData::Local::AddOnMeshPrefix(ot::NetworkData::Local *this, const ot::NetworkData::OnMeshPrefixConfig *a2)
{
  v10 = 7;
  Instance = ot::InstanceLocator::GetInstance(this);
  if (ot::NetworkData::OnMeshPrefixConfig::IsValid(a2, Instance))
  {
    ot::NetworkData::OnMeshPrefixConfig::GetPrefix(a2);
    v7 = v3;
    v5 = ot::NetworkData::OnMeshPrefixConfig::ConvertToTlvFlags(a2, v4);
    return ot::NetworkData::Local::AddPrefix(this, v7, 2, v5, HIBYTE(*(a2 + 17)) & 1);
  }

  return v10;
}

uint64_t ot::NetworkData::Local::AddPrefix(ot::NetworkData::Local *a1, ot::Ip6::Prefix *a2, char a3, unsigned __int16 a4, char a5)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  ot::NetworkData::Local::RemovePrefix(a1, a2);
  IgnoreError();
  v6 = 6;
  if (v33 != 2)
  {
    v6 = 5;
  }

  v29 = v6;
  BytesSize = ot::Ip6::Prefix::GetBytesSize(v34, v5);
  ot::NetworkData::MutableNetworkData::AppendTlv(a1, BytesSize + 4 + v29);
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
  v28 = v8;
  if (v8)
  {
    v26 = *v34;
    v27 = *(v34 + 16);
    ot::NetworkData::PrefixTlv::Init(v28, 0, &v26);
    ot::NetworkData::PrefixTlv::SetSubTlvsLength(v28, v29);
    if (v33 == 2)
    {
      ot::NetworkData::PrefixTlv::GetSubTlvs(v28);
      ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
      v25 = v9;
      ot::NetworkData::BorderRouterTlv::Init(v9);
      Length = ot::NetworkData::NetworkDataTlv::GetLength(v25);
      ot::NetworkData::NetworkDataTlv::SetLength(v25, Length + 4);
      Entry = ot::NetworkData::BorderRouterTlv::GetEntry(v25, 0);
      ot::NetworkData::BorderRouterEntry::Init(Entry);
      v12 = ot::NetworkData::BorderRouterTlv::GetEntry(v25, 0);
      ot::NetworkData::BorderRouterEntry::SetFlags(v12, v32);
    }

    else
    {
      ot::NetworkData::PrefixTlv::GetSubTlvs(v28);
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      v24 = v13;
      ot::NetworkData::HasRouteTlv::Init(v13);
      v14 = ot::NetworkData::NetworkDataTlv::GetLength(v24);
      ot::NetworkData::NetworkDataTlv::SetLength(v24, v14 + 3);
      v15 = ot::NetworkData::HasRouteTlv::GetEntry(v24, 0);
      ot::NetworkData::HasRouteEntry::Init(v15);
      v16 = ot::NetworkData::HasRouteTlv::GetEntry(v24, 0);
      ot::NetworkData::HasRouteEntry::SetFlags(v16, v32);
    }

    if (v31)
    {
      ot::NetworkData::NetworkDataTlv::SetStable(v28);
      SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(v28);
      ot::NetworkData::NetworkDataTlv::SetStable(SubTlvs);
    }

    ot::NetworkData::MutableNetworkData::GetBytes(a1);
    v22 = v18;
    v19 = ot::NetworkData::NetworkData::GetLength(a1);
    ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("AddPrefix", v22, v19);
  }

  else
  {
    v30 = 3;
  }

  if (v30 == 3)
  {
    v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(a1);
    ot::NetworkData::Notifier::SignalNetworkDataFull(v20);
  }

  return v30;
}

BOOL ot::NetworkData::Local::ContainsOnMeshPrefix(ot::NetworkData::Local *this, const ot::Ip6::Prefix *a2)
{
  v3 = 0;
  Prefix = ot::NetworkData::NetworkData::FindPrefix(this, a2);
  if (Prefix)
  {
    return ot::NetworkData::PrefixTlv::FindSubTlv(Prefix, 2u) != 0;
  }

  return v3;
}

uint64_t ot::NetworkData::Local::AddHasRoutePrefix(ot::NetworkData::Local *this, const ot::NetworkData::ExternalRouteConfig *a2)
{
  v10 = 7;
  Instance = ot::InstanceLocator::GetInstance(this);
  if (ot::NetworkData::ExternalRouteConfig::IsValid(a2, Instance))
  {
    ot::NetworkData::ExternalRouteConfig::GetPrefix(a2);
    v7 = v3;
    v5 = ot::NetworkData::ExternalRouteConfig::ConvertToTlvFlags(a2, v4);
    return ot::NetworkData::Local::AddPrefix(this, v7, 0, v5, (*(a2 + 20) & 8) != 0);
  }

  return v10;
}

uint64_t ot::NetworkData::Local::RemovePrefix(ot::NetworkData::Local *this, const ot::Ip6::Prefix *a2)
{
  v8 = 0;
  ot::NetworkData::MutableNetworkData::FindPrefix(this, a2);
  if (v2)
  {
    ot::NetworkData::MutableNetworkData::RemoveTlv(this, v2);
  }

  else
  {
    v8 = 23;
  }

  ot::NetworkData::MutableNetworkData::GetBytes(this);
  v6 = v3;
  Length = ot::NetworkData::NetworkData::GetLength(this);
  ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("RmvPrefix", v6, Length);
  return v8;
}

uint64_t ot::NetworkData::PrefixTlv::Init(ot::NetworkData::PrefixTlv *a1, char a2, ot::Ip6::Prefix *a3)
{
  Length = ot::Ip6::Prefix::GetLength(a3);
  ot::Ip6::Prefix::GetBytes(a3);
  return ot::NetworkData::PrefixTlv::Init(a1, a2, Length, v3);
}

{
  return ot::NetworkData::PrefixTlv::Init(a1, a2, a3);
}

uint64_t ot::NetworkData::BorderRouterEntry::Init(ot::NetworkData::BorderRouterEntry *this)
{
  result = ot::NetworkData::BorderRouterEntry::SetRloc(this, 0xFFFEu);
  *(this + 1) = 0;
  return result;
}

{
  return ot::NetworkData::BorderRouterEntry::Init(this);
}

uint64_t ot::NetworkData::BorderRouterEntry::SetFlags(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::NetworkData::BorderRouterEntry::SetFlags(this, a2);
}

uint64_t ot::NetworkData::HasRouteEntry::Init(ot::NetworkData::HasRouteEntry *this)
{
  result = ot::NetworkData::HasRouteEntry::SetRloc(this, 0xFFFEu);
  *(this + 2) = 0;
  return result;
}

{
  return ot::NetworkData::HasRouteEntry::Init(this);
}

uint64_t ot::NetworkData::HasRouteEntry::SetFlags(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::NetworkData::HasRouteEntry::SetFlags(this, a2);
}

void ot::NetworkData::MutableNetworkData::FindPrefix(ot::NetworkData::MutableNetworkData *this, const ot::Ip6::Prefix *a2)
{
  ot::Ip6::Prefix::GetBytes(a2);
  v4 = v2;
  Length = ot::Ip6::Prefix::GetLength(a2);
  ot::NetworkData::MutableNetworkData::FindPrefix(this, v4, Length);
}

{
  ot::NetworkData::MutableNetworkData::FindPrefix(this, a2);
}

uint64_t ot::NetworkData::MutableNetworkData::Clear(uint64_t this)
{
  *(this + 8) = 0;
  return this;
}

{
  return ot::NetworkData::MutableNetworkData::Clear(this);
}

unint64_t ot::NetworkData::Local::UpdateRloc(ot::NetworkData::Local *this, ot::NetworkData::PrefixTlv *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v2);
  for (i = ot::NetworkData::PrefixTlv::GetSubTlvs(a2); ; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    result = ot::NetworkData::NetworkDataTlv::GetNext(a2);
    if (i >= result)
    {
      break;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type)
    {
      if (Type != 2)
      {
        __assert_rtn("UpdateRloc", "network_data_local.cpp", 187, "false");
      }

      ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
      Entry = ot::NetworkData::BorderRouterTlv::GetEntry(v6, 0);
      ot::NetworkData::BorderRouterEntry::SetRloc(Entry, Rloc16);
    }

    else
    {
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      v5 = ot::NetworkData::HasRouteTlv::GetEntry(v4, 0);
      ot::NetworkData::HasRouteEntry::SetRloc(v5, Rloc16);
    }
  }

  return result;
}

uint64_t ot::NetworkData::Local::AddService(ot::NetworkData::MutableNetworkData *a1, unsigned int a2, uint64_t a3, char a4, uint64_t a5)
{
  v23 = 0;
  Length = ot::Data<(ot::DataLengthType)0>::GetLength(a3);
  v18 = ot::NetworkData::ServiceTlv::CalculateSize(a2, Length) + 4;
  v20 = (v18 + ot::Data<(ot::DataLengthType)0>::GetLength(a5));
  ot::NetworkData::Local::RemoveService(a1, a2, a3);
  IgnoreError();
  if (v20 <= 0xFEu)
  {
    ot::NetworkData::MutableNetworkData::AppendTlv(a1, v20);
    ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
    v22 = v6;
    if (v6)
    {
      ot::NetworkData::ServiceTlv::Init(v6, 0, a2, a3);
      v7 = ot::Data<(ot::DataLengthType)0>::GetLength(a5);
      ot::NetworkData::ServiceTlv::SetSubTlvsLength(v22, v7 + 4);
      ot::NetworkData::ServiceTlv::GetSubTlvs(v22);
      ot::NetworkData::As<ot::NetworkData::ServerTlv>();
      v21 = v8;
      v16 = v8;
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      Rloc16 = ot::Mle::Mle::GetRloc16(v9);
      ot::NetworkData::ServerTlv::Init(v16, Rloc16, a5);
      if (a4)
      {
        ot::NetworkData::NetworkDataTlv::SetStable(v22);
        ot::NetworkData::NetworkDataTlv::SetStable(v21);
      }

      ot::NetworkData::MutableNetworkData::GetBytes(a1);
      v15 = v11;
      v12 = ot::NetworkData::NetworkData::GetLength(a1);
      ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("AddService", v15, v12);
    }

    else
    {
      v23 = 3;
    }
  }

  else
  {
    v23 = 3;
  }

  if (v23 == 3)
  {
    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(a1);
    ot::NetworkData::Notifier::SignalNetworkDataFull(v13);
  }

  return v23;
}

uint64_t ot::NetworkData::Local::RemoveService(ot::NetworkData::MutableNetworkData *a1, int a2, uint64_t a3)
{
  v9 = 0;
  ot::NetworkData::MutableNetworkData::FindService(a1, a2, a3, 1);
  if (v3)
  {
    ot::NetworkData::MutableNetworkData::RemoveTlv(a1, v3);
  }

  else
  {
    v9 = 23;
  }

  ot::NetworkData::MutableNetworkData::GetBytes(a1);
  v7 = v4;
  Length = ot::NetworkData::NetworkData::GetLength(a1);
  ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("RmvService", v7, Length);
  return v9;
}

unint64_t ot::NetworkData::Local::UpdateRloc(ot::NetworkData::Local *this, ot::NetworkData::ServiceTlv *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v2);
  for (i = ot::NetworkData::ServiceTlv::GetSubTlvs(a2); ; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    result = ot::NetworkData::NetworkDataTlv::GetNext(a2);
    if (i >= result)
    {
      break;
    }

    if (ot::NetworkData::NetworkDataTlv::GetType(i) != 6)
    {
      __assert_rtn("UpdateRloc", "network_data_local.cpp", 270, "false");
    }

    ot::NetworkData::As<ot::NetworkData::ServerTlv>();
    ot::NetworkData::ServerTlv::SetServer16(v4, Rloc16);
  }

  return result;
}

void ot::NetworkData::Local::UpdateRloc(ot::NetworkData::Local *this)
{
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
  for (i = v1; ; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
    if (i >= v2)
    {
      break;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type == 1)
    {
      ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
      ot::NetworkData::Local::UpdateRloc(this, v3);
    }

    else
    {
      if (Type != 5)
      {
        __assert_rtn("UpdateRloc", "network_data_local.cpp", 297, "false");
      }

      ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
      ot::NetworkData::Local::UpdateRloc(this, v4);
    }
  }
}

ot::NetworkData::Notifier *ot::NetworkData::Notifier::Notifier(ot::NetworkData::Notifier *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::TimerMilliIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleTimer>::TimerMilliIn((this + 8), a2);
  ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::SynchronizeServerData>::TaskletIn((this + 32), a2);
  ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleNetDataFull>::TaskletIn((this + 48), a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 8);
  result = this;
  *(this + 20) = 0;
  *(this + 42) = -2;
  *(this + 86) &= ~1u;
  *(this + 86) &= ~2u;
  *(this + 87) = 0;
  return result;
}

{
  ot::NetworkData::Notifier::Notifier(this, a2);
  return this;
}

uint64_t ot::NetworkData::Notifier::SynchronizeServerData(ot::NetworkData::Notifier *this)
{
  v7 = 23;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  result = ot::Mle::Mle::IsAttached(v1);
  if ((result & 1) != 0 && (*(this + 86) & 1) == 0)
  {
    if (!*(this + 20) || (result = ot::Timer::IsRunning((this + 8)), (result & 1) == 0))
    {
      *(this + 20) = 5000;
      result = ot::NetworkData::Notifier::RemoveStaleChildEntries(this);
      v7 = result;
      if (result == 23)
      {
        *(this + 20) = 300000;
        result = ot::NetworkData::Notifier::UpdateInconsistentData(this);
        v7 = result;
      }
    }
  }

  if (v7)
  {
    switch(v7)
    {
      case 3:
        return ot::TimerMilli::Start((this + 8), 0x3E8u);
      case 13:
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        RouterRoleTransitionTimeout = ot::Mle::MleRouter::GetRouterRoleTransitionTimeout(v3);
        v5 = ot::Time::SecToMsec((RouterRoleTransitionTimeout + 1));
        return ot::TimerMilli::Start((this + 8), v5);
      case 23:
        break;
      default:
        __assert_rtn("SynchronizeServerData", "network_data_notifier.cpp", 123, "false");
    }
  }

  else
  {
    *(this + 86) = *(this + 86) & 0xFE | 1;
  }

  return result;
}

void ot::NetworkData::Notifier::HandleNetDataFull(ot::NetworkData::Notifier *this)
{
  ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeIfSet<>(this + 8);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (!ot::Mle::Mle::IsLeader(v1))
  {
    trigger_leader_override();
  }
}

ot::TimerMilli *ot::TimerMilliIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleTimer>::HandleTimer);
  return a1;
}

ot::InstanceLocator *ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::SynchronizeServerData>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::SynchronizeServerData>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::SynchronizeServerData>::HandleTasklet);
  return a1;
}

ot::InstanceLocator *ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleNetDataFull>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleNetDataFull>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleNetDataFull>::HandleTasklet);
  return a1;
}

void ot::NetworkData::Notifier::HandleServerDataUpdated(ot::NetworkData::Notifier *this)
{
  *(this + 86) &= ~2u;
  ot::NetworkData::Notifier::ScheduleRouterRoleUpgradeIfEligible(this);
  *(this + 20) = 0;
  ot::Tasklet::Post((this + 32));
}

uint64_t ot::NetworkData::Notifier::ScheduleRouterRoleUpgradeIfEligible(uint64_t this)
{
  v3 = this;
  if ((*(this + 86) & 2) == 0)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    this = ot::Mle::Mle::IsChild(v1);
    if (this)
    {
      this = ot::NetworkData::Notifier::IsEligibleForRouterRoleUpgradeAsBorderRouter(v3);
      if ((this & 1) != 0 && !*(v3 + 87))
      {
        *(v3 + 87) = ot::Random::NonCrypto::GetUint8InRange(1, 0xBu);
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(v3);
        return ot::TimeTicker::RegisterReceiver(v2, 6);
      }
    }
  }

  return this;
}

uint64_t ot::NetworkData::Notifier::RemoveStaleChildEntries(ot::NetworkData::Notifier *this)
{
  v16 = this;
  v15 = 23;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Array(v14);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsRouterOrLeader(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    ot::NetworkData::NetworkData::FindRlocs(v2, 0, 0, v14);
    ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
    v13 = v3;
    v12 = ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(v14);
    while (v13 != v12)
    {
      v11 = *v13;
      if (ot::Mle::IsChildRloc16(*v13, v4))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        if (ot::Mle::Mle::HasMatchingRouterIdWith(v5, v11, v6))
        {
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
          ot::ChildTable::FindChild(v7, v11, 0);
          if (!v8)
          {
            return ot::NetworkData::Notifier::SendServerDataNotification(this, v11, 0);
          }
        }
      }

      v13 = (v13 + 2);
    }
  }

  return v15;
}

uint64_t ot::NetworkData::Notifier::UpdateInconsistentData(ot::NetworkData::Notifier *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::MleRouter::IsExpectedToBecomeRouterSoon(v2))
  {
    return 13;
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
    ot::NetworkData::Local::UpdateRloc(v3);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
    if (ot::NetworkData::NetworkData::ContainsEntriesFrom(v10, v4, Rloc16) & 1) != 0 && (v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this), v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this), (ot::NetworkData::NetworkData::ContainsEntriesFrom(v9, v5, Rloc16)))
    {
      return 23;
    }

    else
    {
      if (*(this + 42) == Rloc16)
      {
        *(this + 42) = -2;
      }

      v8 = *(this + 42);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
      v13 = ot::NetworkData::Notifier::SendServerDataNotification(this, v8, v6);
      if (!v13)
      {
        *(this + 42) = Rloc16;
      }
    }
  }

  return v13;
}

uint64_t ot::NetworkData::Notifier::SendServerDataNotification(ot::NetworkData::Notifier *this, unsigned __int16 a2, const ot::NetworkData::NetworkData *a3)
{
  v21 = ot::NetworkData::Notifier::HandleCoapResponse;
  v29 = this;
  v28 = a2;
  v27 = a3;
  v22 = this;
  appended = 0;
  v25 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v24, Instance);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v22);
  v25 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v4, 5u);
  if (!v25)
  {
    appended = 3;
    goto LABEL_11;
  }

  if (v27)
  {
    v20 = v23;
    ot::ThreadTlv::SetType(v23, 10);
    Length = ot::NetworkData::NetworkData::GetLength(v27);
    ot::Tlv::SetLength(v23, Length);
    appended = ot::Message::Append<ot::ThreadTlv>(v25, v23);
    if (appended)
    {
      goto LABEL_11;
    }

    v19 = v25;
    Bytes = ot::NetworkData::NetworkData::GetBytes(v27);
    v6 = ot::NetworkData::NetworkData::GetLength(v27);
    appended = ot::Message::AppendBytes(v19, Bytes, v6);
    if (appended)
    {
      goto LABEL_11;
    }

    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v22);
    ot::NetworkData::Leader::CheckForNetDataGettingFull(v7, v27, v28);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v22);
    ot::NetworkData::Leader::CheckForNetDataGettingFull(v8, v27, v28);
  }

  if (v28 == 65534 || (appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v25, v28)) == 0)
  {
    ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v24);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v22);
    appended = ot::Coap::CoapBase::SendMessage(v9, v25, v24, v21, v22);
    if (!appended)
    {
      v10 = ot::UriToString<(ot::Uri)5>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Sent %s", v11, v12, v13, v14, v15, v16, v10);
    }
  }

LABEL_11:
  if (appended && v25)
  {
    ot::Message::Free(v25);
  }

  return appended;
}

uint64_t ot::Message::Append<ot::ThreadTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::ThreadTlv>(a1, a2);
}

uint64_t ot::NetworkData::Notifier::HandleNotifierEvents(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (ot::Events::ContainsAny(&v4, 2052))
  {
    *(a1 + 80) = 0;
  }

  if (ot::Events::Contains(&v4, 128))
  {
    *(a1 + 86) &= ~2u;
  }

  if (ot::Events::ContainsAny(&v4, 644))
  {
    ot::NetworkData::Notifier::ScheduleRouterRoleUpgradeIfEligible(a1);
  }

  result = ot::Events::ContainsAny(&v4, 2564);
  if (result)
  {
    return ot::NetworkData::Notifier::SynchronizeServerData(a1);
  }

  return result;
}

uint64_t ot::NetworkData::Notifier::HandleCoapResponse(uint64_t a1, int a2)
{
  *(a1 + 86) &= ~1u;
  if (!a2)
  {
    return ot::TimerMilli::Start((a1 + 8), *(a1 + 80) + 1);
  }

  if (a2 != 11 && a2 != 28)
  {
    __assert_rtn("HandleCoapResponse", "network_data_notifier.cpp", 292, "false");
  }

  return ot::NetworkData::Notifier::SynchronizeServerData(a1);
}

BOOL ot::NetworkData::Notifier::IsEligibleForRouterRoleUpgradeAsBorderRouter(ot::NetworkData::Notifier *this)
{
  v13 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::MleRouter::IsRouterEligible(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::MleRouter::GetRouterUpgradeThreshold(v3))
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
      if (ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(v4, Rloc16))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        if (ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(v5, Rloc16))
        {
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
          ActiveRouterCount = ot::RouterTable::GetActiveRouterCount(v6);
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          if (ActiveRouterCount >= ot::Mle::MleRouter::GetRouterUpgradeThreshold(v7) && ActiveRouterCount < 0x20u)
          {
            v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
            return ot::NetworkData::NetworkData::CountBorderRouters(v8, 1) < 2;
          }
        }
      }
    }
  }

  return v13;
}

void ot::NetworkData::Notifier::HandleTimeTick(ot::NetworkData::Notifier *this)
{
  if (*(this + 87))
  {
    if (!--*(this + 87))
    {
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
      ot::TimeTicker::UnregisterReceiver(v1, 6);
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      if (ot::Mle::Mle::IsChild(v2) && ot::NetworkData::Notifier::IsEligibleForRouterRoleUpgradeAsBorderRouter(this))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Requesting router role as BR", v3, v4, v5, v6, v7, v8);
        *(this + 86) = *(this + 86) & 0xFD | 2;
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        ot::Mle::MleRouter::BecomeRouter(v9, 5u);
        IgnoreError();
      }
    }
  }
}

uint64_t ot::NetworkData::Service::Manager::AddService(ot::NetworkData::Service::Manager *this, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  ot::Data<(ot::DataLengthType)0>::Init(v10, a2, a3);
  ot::Data<(ot::DataLengthType)0>::Init(v9, v12, v11);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
  return ot::NetworkData::Local::AddService(v6, 0xAFAAu, v10, v13 & 1, v9);
}

uint64_t ot::NetworkData::Service::Manager::RemoveService(ot::NetworkData::Service::Manager *this, uint64_t a2, char a3)
{
  v8 = this;
  v7 = a2;
  v6[23] = a3;
  ot::Data<(ot::DataLengthType)0>::Init(v6, a2, a3);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
  return ot::NetworkData::Local::RemoveService(v3, 44970, v6);
}

uint64_t ot::NetworkData::Service::Manager::GetServiceId(ot::NetworkData::Service::Manager *this, uint64_t a2, char a3, char a4, unsigned __int8 *a5)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  ot::Data<(ot::DataLengthType)0>::Init(v8, a2, a3);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  return ot::NetworkData::Leader::GetServiceId(v5, 44970, v8, v10 & 1, v9);
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::Service::Manager::GetBackboneRouterPrimary(ot::NetworkData::Service::Manager *a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  ot::Data<(ot::DataLengthType)0>::Init(v15, &ot::NetworkData::Service::BackboneRouter::kServiceData, 1);
  *v19 = -2;
  while (1)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    result = ot::NetworkData::NetworkData::FindNextThreadService(v2, v16, v15, 0);
    v16 = result;
    if (!result)
    {
      break;
    }

    ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(&v13);
    v13 = v16;
    while (!ot::NetworkData::Service::Manager::IterateToNextServer(a1, &v13))
    {
      ot::NetworkData::ServerTlv::GetServerData(v14, v12);
      if (ot::Data<(ot::DataLengthType)0>::GetLength(v12) >= 7uLL)
      {
        Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(v12);
        if (!v18 || (ot::NetworkData::Service::Manager::IsBackboneRouterPreferredTo(a1, v14, Bytes, v18, v17) & 1) != 0)
        {
          v18 = v14;
          v17 = Bytes;
        }
      }
    }
  }

  if (v18)
  {
    Server16 = ot::NetworkData::ServerTlv::GetServer16(v18, v4);
    *v19 = Server16;
    SequenceNumber = ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(v17);
    *(v19 + 8) = SequenceNumber;
    ReregistrationDelay = ot::NetworkData::Service::BackboneRouter::ServerData::GetReregistrationDelay(v17, v7);
    *(v19 + 2) = ReregistrationDelay;
    result = ot::NetworkData::Service::BackboneRouter::ServerData::GetMlrTimeout(v17, v9);
    *(v19 + 4) = result;
  }

  return result;
}

uint64_t ot::NetworkData::Service::Manager::IterateToNextServer(ot::NetworkData::Service::Manager *this, ot::NetworkData::NetworkDataTlv **a2)
{
  v6 = 23;
  if (*a2)
  {
    if (a2[1])
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(a2[1]);
    }

    else
    {
      Next = ot::NetworkData::ServiceTlv::GetSubTlvs(*a2);
    }

    v2 = ot::NetworkData::NetworkDataTlv::GetNext(*a2);
    ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(Next, v2);
    a2[1] = v3;
    if (a2[1])
    {
      return 0;
    }
  }

  return v6;
}

uint64_t ot::NetworkData::Service::Manager::IsBackboneRouterPreferredTo(ot::NetworkData::Service::Manager *this, const ot::NetworkData::ServerTlv *a2, const ot::NetworkData::Service::BackboneRouter::ServerData *a3, const ot::NetworkData::ServerTlv *a4, const ot::NetworkData::Service::BackboneRouter::ServerData *a5)
{
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  LeaderRloc16 = ot::Mle::Mle::GetLeaderRloc16(v5);
  if (ot::NetworkData::ServerTlv::GetServer16(a2, v6) == LeaderRloc16)
  {
    v17 = 1;
  }

  else if (ot::NetworkData::ServerTlv::GetServer16(a4, v7) == LeaderRloc16)
  {
    v17 = 0;
  }

  else
  {
    SequenceNumber = ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(a3);
    v15 = 1;
    if (SequenceNumber <= ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(a5))
    {
      v12 = ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(a3);
      v13 = 0;
      if (v12 == ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(a5))
      {
        Server16 = ot::NetworkData::ServerTlv::GetServer16(a2, v8);
        v13 = Server16 > ot::NetworkData::ServerTlv::GetServer16(a4, v9);
      }

      v15 = v13;
    }

    v17 = v15;
  }

  return v17 & 1;
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(ot::NetworkData::Service::BackboneRouter::ServerData *this)
{
  return *this;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(this);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::GetReregistrationDelay(ot::NetworkData::Service::BackboneRouter::ServerData *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::GetReregistrationDelay(this, a2);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::GetMlrTimeout(ot::NetworkData::Service::BackboneRouter::ServerData *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 3), a2);
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::GetMlrTimeout(this, a2);
}

uint64_t ot::NetworkData::Service::Manager::GetNextDnsSrpAnycastInfo(ot::InstanceLocator *a1, ot::NetworkData::ServiceTlv **a2, ot::Ip6::Address *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  NextThreadService = *a2;
  ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(v11, &ot::NetworkData::Service::DnsSrpAnycast::kServiceData);
  do
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    NextThreadService = ot::NetworkData::NetworkData::FindNextThreadService(v3, NextThreadService, v11, 0);
    if (!NextThreadService)
    {
      return 23;
    }
  }

  while (ot::NetworkData::ServiceTlv::GetServiceDataLength(NextThreadService) < 2uLL);
  ot::NetworkData::ServiceTlv::GetServiceData(NextThreadService, v11);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  ServiceId = ot::NetworkData::ServiceTlv::GetServiceId(NextThreadService);
  ot::Mle::Mle::GetServiceAloc(v8, ServiceId, v13);
  Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(v11);
  SequenceNumber = ot::NetworkData::Service::DnsSrpAnycast::ServiceData::GetSequenceNumber(Bytes);
  *(v13 + 16) = SequenceNumber;
  *v14 = NextThreadService;
  return v12;
}

uint64_t ot::NetworkData::Service::DnsSrpAnycast::ServiceData::GetSequenceNumber(ot::NetworkData::Service::DnsSrpAnycast::ServiceData *this)
{
  return *(this + 1);
}

{
  return ot::NetworkData::Service::DnsSrpAnycast::ServiceData::GetSequenceNumber(this);
}

uint64_t ot::NetworkData::Service::Manager::FindPreferredDnsSrpAnycastInfo(ot::InstanceLocator *a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 23;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(v11);
  while (!ot::NetworkData::Service::Manager::GetNextDnsSrpAnycastInfo(a1, v11, &v9))
  {
    if (v12 == 23)
    {
      v2 = v13;
      *v13 = v9;
      *(v2 + 16) = v10;
      v7 = v9;
      v8 = v10;
      v12 = 0;
    }

    else
    {
      if (ot::SerialNumber::IsGreater<unsigned char>(v10, *(v13 + 16)))
      {
        v3 = v13;
        *v13 = v9;
        *(v3 + 16) = v10;
      }

      if (v10 > v8)
      {
        v7 = v9;
        v8 = v10;
      }
    }
  }

  if (!v12)
  {
    ot::NetworkData::Service::Manager::Iterator::Reset(v11);
    while (!ot::NetworkData::Service::Manager::GetNextDnsSrpAnycastInfo(a1, v11, &v9))
    {
      if (v10 != *(v13 + 16) && ((v10 - *(v13 + 16)) == 128 || !ot::SerialNumber::IsGreater<unsigned char>(*(v13 + 16), v10)))
      {
        v4 = v13;
        *v13 = v7;
        *(v4 + 16) = v8;
        return v12;
      }
    }
  }

  return v12;
}

void *ot::NetworkData::Service::Manager::Iterator::Reset(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  return ot::NetworkData::Service::Manager::Iterator::Reset(this);
}

uint64_t ot::NetworkData::Service::Manager::GetNextDnsSrpUnicastInfo(ot::NetworkData::Service::Manager *this, ot::NetworkData::NetworkDataTlv **a2, ot::NetworkData::Service::DnsSrpUnicast::Info *a3)
{
  v38 = this;
  v37 = a2;
  v36 = a3;
  v35 = 0;
  ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(v34, &ot::NetworkData::Service::DnsSrpUnicast::kServiceData);
  do
  {
    while (!ot::NetworkData::Service::Manager::IterateToNextServer(this, v37))
    {
      ot::NetworkData::ServerTlv::GetServerData(v37[1], v33);
      if (ot::Data<(ot::DataLengthType)0>::GetLength(v33) >= 0x12uLL)
      {
        Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(v33);
        v28 = v36;
        ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetAddress(Bytes);
        ot::Ip6::SockAddr::SetAddress(v28, v3);
        v29 = v36;
        Port = ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetPort(Bytes, v4);
        ot::Ip6::SockAddr::SetPort(v29, Port);
        *(v36 + 18) = 1;
        Server16 = ot::NetworkData::ServerTlv::GetServer16(v37[1], v6);
        *(v36 + 10) = Server16;
        return v35;
      }

      if (ot::Data<(ot::DataLengthType)0>::GetLength(v33) == 2)
      {
        ot::Ip6::SockAddr::GetAddress(v36);
        v26 = v8;
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v9);
        v11 = ot::NetworkData::ServerTlv::GetServer16(v37[1], v10);
        ot::Ip6::Address::SetToRoutingLocator(v26, MeshLocalPrefix, v11);
        v27 = v36;
        v12 = ot::Data<(ot::DataLengthType)0>::GetBytes(v33);
        Uint16 = ot::BigEndian::ReadUint16(v12, v13);
        ot::Ip6::SockAddr::SetPort(v27, Uint16);
        *(v36 + 18) = 1;
        v16 = ot::NetworkData::ServerTlv::GetServer16(v37[1], v15);
        *(v36 + 10) = v16;
        return v35;
      }
    }

    v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    NextThreadService = ot::NetworkData::NetworkData::FindNextThreadService(v17, *v37, v34, 0);
    *v37 = NextThreadService;
    if (!*v37)
    {
      return 23;
    }
  }

  while (ot::NetworkData::ServiceTlv::GetServiceDataLength(*v37) < 0x13uLL);
  ot::NetworkData::ServiceTlv::GetServiceData(*v37, v34);
  v31 = ot::Data<(ot::DataLengthType)0>::GetBytes(v34);
  v23 = v36;
  Address = ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetAddress(v31);
  ot::Ip6::SockAddr::SetAddress(v23, Address);
  v24 = v36;
  v21 = ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetPort(v31, v20);
  ot::Ip6::SockAddr::SetPort(v24, v21);
  *(v36 + 18) = 0;
  *(v36 + 10) = -2;
  return v35;
}

__n128 ot::Ip6::SockAddr::SetAddress(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

void ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetAddress(ot::NetworkData::Service::DnsSrpUnicast::ServerData *this)
{
  ;
}

{
  ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetAddress(this);
}

uint64_t ot::Ip6::SockAddr::SetPort(uint64_t this, __int16 a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Ip6::SockAddr::SetPort(this, a2);
}

uint64_t ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetPort(ot::NetworkData::Service::DnsSrpUnicast::ServerData *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 8), a2);
}

{
  return ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetPort(this, a2);
}

uint64_t ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetAddress(ot::NetworkData::Service::DnsSrpUnicast::ServiceData *this)
{
  return this + 1;
}

{
  return ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetAddress(this);
}

uint64_t ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetPort(ot::NetworkData::Service::DnsSrpUnicast::ServiceData *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 17), a2);
}

{
  return ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetPort(this, a2);
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::NetworkDataTlv::Find(ot::NetworkData::NetworkDataTlv *Next, unint64_t a2, unsigned __int8 a3)
{
  while (1)
  {
    v4 = 0;
    if (Next + 2 <= a2)
    {
      v4 = ot::NetworkData::NetworkDataTlv::GetNext(Next) <= a2;
    }

    if (!v4)
    {
      break;
    }

    if (ot::NetworkData::NetworkDataTlv::GetType(Next) == a3)
    {
      return Next;
    }

    Next = ot::NetworkData::NetworkDataTlv::GetNext(Next);
  }

  return 0;
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::NetworkDataTlv::Find(ot::NetworkData::NetworkDataTlv *Next, unint64_t a2, unsigned __int8 a3, char a4)
{
  while (1)
  {
    v5 = 0;
    if (Next + 2 <= a2)
    {
      v5 = ot::NetworkData::NetworkDataTlv::GetNext(Next) <= a2;
    }

    if (!v5)
    {
      break;
    }

    if (ot::NetworkData::NetworkDataTlv::GetType(Next) == a3 && ot::NetworkData::NetworkDataTlv::IsStable(Next) == (a4 & 1))
    {
      return Next;
    }

    Next = ot::NetworkData::NetworkDataTlv::GetNext(Next);
  }

  return 0;
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::PrefixTlv::FindSubTlv(ot::NetworkData::PrefixTlv *a1, unsigned __int8 a2)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a1);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(a1);
  return ot::NetworkData::NetworkDataTlv::Find(SubTlvs, Next, a2);
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::PrefixTlv::FindSubTlv(ot::NetworkData::PrefixTlv *a1, unsigned __int8 a2, char a3)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a1);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(a1);
  return ot::NetworkData::NetworkDataTlv::Find(SubTlvs, Next, a2, a3 & 1);
}

uint64_t ot::NetworkData::ServiceTlv::Init(_BYTE *a1, char a2, unsigned int a3, uint64_t a4)
{
  ot::NetworkData::NetworkDataTlv::Init(a1);
  ot::NetworkData::NetworkDataTlv::SetType(a1, 5);
  if (a3 == 44970)
  {
    v5 = 0x80;
  }

  else
  {
    v5 = 0;
  }

  a1[2] = v5;
  a1[2] |= a2 & 0xF;
  if (a3 == 44970)
  {
    a1[3] = ot::Data<(ot::DataLengthType)0>::GetLength(a4);
    ot::Data<(ot::DataLengthType)0>::CopyBytesTo(a4, a1 + 4);
  }

  else
  {
    *(a1 + 3) = ot::BigEndian::HostSwap32(a3, v4);
    a1[7] = ot::Data<(ot::DataLengthType)0>::GetLength(a4);
    ot::Data<(ot::DataLengthType)0>::CopyBytesTo(a4, a1 + 8);
  }

  FieldsLength = ot::NetworkData::ServiceTlv::GetFieldsLength(a1);
  return ot::NetworkData::NetworkDataTlv::SetLength(a1, FieldsLength);
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::TlvIterator::Iterate(uint64_t a1, unsigned __int8 a2)
{
  v4 = ot::NetworkData::NetworkDataTlv::Find(*a1, *(a1 + 8), a2);
  if (v4)
  {
    *a1 = ot::NetworkData::NetworkDataTlv::GetNext(v4);
  }

  return v4;
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::TlvIterator::Iterate(uint64_t a1, unsigned __int8 a2, char a3)
{
  v5 = ot::NetworkData::NetworkDataTlv::Find(*a1, *(a1 + 8), a2, a3 & 1);
  if (v5)
  {
    *a1 = ot::NetworkData::NetworkDataTlv::GetNext(v5);
  }

  return v5;
}

uint64_t ot::NetworkData::OnMeshPrefixConfig::IsValid(ot::NetworkData::OnMeshPrefixConfig *this, ot::Instance *a2)
{
  v8 = 0;
  if ((*(this + 17) & 0x10) == 0 || (*(this + 17) & 8) == 0)
  {
    if ((*(this + 17) & 8) == 0 || (ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this), ot::Ip6::Prefix::GetLength(v2) == 64))
    {
      if (ot::NetworkData::IsRoutePreferenceValid(((*(this + 17) << 6) >> 6)))
      {
        ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
        if (ot::NetworkData::IsPrefixValid(a2, v3, v4))
        {
          ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
          if (ot::Ip6::Prefix::GetLength(v5) > 0)
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8 & 1;
}

BOOL ot::NetworkData::IsRoutePreferenceValid(ot::NetworkData *this)
{
  return ot::Preference::IsValid(this);
}

{
  return ot::NetworkData::IsRoutePreferenceValid(this);
}

BOOL ot::NetworkData::IsPrefixValid(ot::NetworkData *this, ot::Instance *a2, const ot::Ip6::Prefix *a3)
{
  LOBYTE(v6) = 0;
  if (ot::Ip6::Prefix::IsValid(a2))
  {
    v3 = ot::Instance::Get<ot::Mle::Mle>(this);
    MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v3);
    return !ot::Ip6::Prefix::ContainsPrefix(a2, MeshLocalPrefix);
  }

  return v6;
}

uint64_t ot::NetworkData::OnMeshPrefixConfig::ConvertToTlvFlags(ot::NetworkData::OnMeshPrefixConfig *this, signed __int8 a2)
{
  v3 = 0;
  if ((*(this + 17) & 4) != 0)
  {
    v3 = 0x2000;
  }

  if ((*(this + 17) & 8) != 0)
  {
    v3 |= 0x1000u;
  }

  if ((*(this + 17) & 0x10) != 0)
  {
    v3 |= 0x800u;
  }

  if ((*(this + 17) & 0x20) != 0)
  {
    v3 |= 0x400u;
  }

  if ((*(this + 17) & 0x40) != 0)
  {
    v3 |= 0x200u;
  }

  if ((*(this + 17) & 0x80) != 0)
  {
    v3 |= 0x100u;
  }

  if ((*(this + 17) & 0x200) != 0)
  {
    v3 |= 0x80u;
  }

  if ((*(this + 17) & 0x400) != 0)
  {
    v3 |= 0x40u;
  }

  return (v3 | (ot::NetworkData::RoutePreferenceToValue(((*(this + 17) << 6) >> 6)) << 14));
}

uint64_t ot::NetworkData::RoutePreferenceToValue(ot::NetworkData *this)
{
  return ot::Preference::To2BitUint(this);
}

{
  return ot::NetworkData::RoutePreferenceToValue(this);
}

BOOL ot::NetworkData::OnMeshPrefixConfig::SetFrom(ot::NetworkData::OnMeshPrefixConfig *this, const ot::NetworkData::PrefixTlv *a2, const ot::NetworkData::BorderRouterTlv *a3, const ot::NetworkData::BorderRouterEntry *a4)
{
  ot::Clearable<ot::NetworkData::OnMeshPrefixConfig>::Clear(this);
  ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
  ot::NetworkData::PrefixTlv::CopyPrefixTo(a2, v4);
  Flags = ot::NetworkData::BorderRouterEntry::GetFlags(a4, v5);
  ot::NetworkData::OnMeshPrefixConfig::SetFromTlvFlags(this, Flags);
  *(this + 10) = ot::NetworkData::BorderRouterEntry::GetRloc(a4, v7);
  result = ot::NetworkData::NetworkDataTlv::IsStable(a3);
  *(this + 17) = *(this + 17) & 0xFEFF | (result << 8);
  return result;
}

void *ot::Clearable<ot::NetworkData::OnMeshPrefixConfig>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::NetworkData::OnMeshPrefixConfig>(a1);
}

{
  return ot::Clearable<ot::NetworkData::OnMeshPrefixConfig>::Clear(a1);
}

uint64_t ot::NetworkData::OnMeshPrefixConfig::SetFromTlvFlags(ot::NetworkData::OnMeshPrefixConfig *this, unsigned __int16 a2)
{
  *(this + 17) = *(this + 17) & 0xFFFB | (4 * ((a2 & 0x2000) != 0));
  *(this + 17) = *(this + 17) & 0xFFF7 | (8 * ((a2 & 0x1000) != 0));
  *(this + 17) = *(this + 17) & 0xFFEF | (16 * ((a2 & 0x800) != 0));
  *(this + 17) = *(this + 17) & 0xFFDF | (32 * ((a2 & 0x400) != 0));
  *(this + 17) = *(this + 17) & 0xFFBF | (((a2 & 0x200) != 0) << 6);
  *(this + 17) = *(this + 17) & 0xFF7F | (((a2 & 0x100) != 0) << 7);
  *(this + 17) = *(this + 17) & 0xFDFF | (((a2 & 0x80u) != 0) << 9);
  *(this + 17) = *(this + 17) & 0xFBFF | (((a2 & 0x40) != 0) << 10);
  result = ot::NetworkData::RoutePreferenceFromValue((a2 >> 14));
  *(this + 17) = *(this + 17) & 0xFFFC | result & 3;
  return result;
}

uint64_t ot::NetworkData::ExternalRouteConfig::IsValid(ot::NetworkData::ExternalRouteConfig *this, ot::Instance *a2)
{
  v7 = 0;
  if ((*(this + 20) & 4) == 0 || (ot::NetworkData::ExternalRouteConfig::GetPrefix(this), ot::Ip6::Prefix::IsValidNat64(v2)))
  {
    if (ot::NetworkData::IsRoutePreferenceValid(((*(this + 20) << 6) >> 6)))
    {
      ot::NetworkData::ExternalRouteConfig::GetPrefix(this);
      if (ot::NetworkData::IsPrefixValid(a2, v3, v4))
      {
        v7 = 1;
      }
    }
  }

  return v7 & 1;
}

uint64_t ot::NetworkData::ExternalRouteConfig::ConvertToTlvFlags(ot::NetworkData::ExternalRouteConfig *this, signed __int8 a2)
{
  v3 = 0;
  if ((*(this + 20) & 4) != 0)
  {
    v3 = 32;
  }

  if ((*(this + 20) & 0x20) != 0)
  {
    v3 |= 0x10u;
  }

  return (v3 | (ot::NetworkData::RoutePreferenceToValue(((*(this + 20) << 6) >> 6)) << 6));
}

uint64_t ot::NetworkData::ExternalRouteConfig::SetFrom(ot::NetworkData::ExternalRouteConfig *this, ot::Instance *a2, const ot::NetworkData::PrefixTlv *a3, const ot::NetworkData::HasRouteTlv *a4, const ot::NetworkData::HasRouteEntry *a5)
{
  ot::Clearable<ot::NetworkData::ExternalRouteConfig>::Clear(this);
  ot::NetworkData::ExternalRouteConfig::GetPrefix(this);
  ot::NetworkData::PrefixTlv::CopyPrefixTo(a3, v5);
  Flags = ot::NetworkData::HasRouteEntry::GetFlags(a5);
  ot::NetworkData::ExternalRouteConfig::SetFromTlvFlags(this, Flags);
  *(this + 20) = *(this + 20) & 0xF7 | (8 * ot::NetworkData::NetworkDataTlv::IsStable(a4));
  *(this + 9) = ot::NetworkData::HasRouteEntry::GetRloc(a5, v7);
  Rloc = ot::NetworkData::HasRouteEntry::GetRloc(a5, v8);
  v9 = ot::Instance::Get<ot::Mle::MleRouter>(a2);
  Rloc16 = ot::Mle::Mle::GetRloc16(v9);
  result = Rloc;
  *(this + 20) = *(this + 20) & 0xEF | (16 * (Rloc == Rloc16));
  return result;
}

void *ot::Clearable<ot::NetworkData::ExternalRouteConfig>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::NetworkData::ExternalRouteConfig>(a1);
}

{
  return ot::Clearable<ot::NetworkData::ExternalRouteConfig>::Clear(a1);
}

uint64_t ot::NetworkData::ExternalRouteConfig::SetFromTlvFlags(ot::NetworkData::ExternalRouteConfig *this, unsigned __int8 a2)
{
  *(this + 20) = *(this + 20) & 0xFB | (4 * ((a2 & 0x20) != 0));
  *(this + 20) = *(this + 20) & 0xDF | (32 * ((a2 & 0x10) != 0));
  result = ot::NetworkData::RoutePreferenceFromValue((a2 >> 6));
  *(this + 20) = *(this + 20) & 0xFC | result & 3;
  return result;
}

BOOL ot::NetworkData::ServiceConfig::ServerConfig::operator==(_BYTE *a1, _BYTE *a2)
{
  v3 = 0;
  if ((*a1 & 1) == (*a2 & 1))
  {
    v3 = 0;
    if (a1[1] == a2[1])
    {
      return memcmp(a1 + 2, a2 + 2, a1[1]) == 0;
    }
  }

  return v3;
}

void *ot::NetworkData::ServiceConfig::ServerConfig::SetFrom(ot::NetworkData::ServiceConfig::ServerConfig *this, const ot::NetworkData::ServerTlv *a2)
{
  v7 = this;
  v6 = a2;
  ot::NetworkData::ServerTlv::GetServerData(a2, v5);
  *this = *this & 0xFE | ot::NetworkData::NetworkDataTlv::IsStable(v6);
  *(this + 125) = ot::NetworkData::ServerTlv::GetServer16(v6, v2);
  *(this + 1) = ot::Data<(ot::DataLengthType)0>::GetLength(v5);
  return ot::Data<(ot::DataLengthType)0>::CopyBytesTo(v5, this + 2);
}

BOOL ot::NetworkData::ServiceConfig::operator==(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (*(a1 + 4) == *(a2 + 4))
  {
    v6 = 0;
    if (*(a1 + 8) == *(a2 + 8))
    {
      v6 = 0;
      if (!memcmp((a1 + 9), (a2 + 9), *(a1 + 8)))
      {
        ServerConfig = ot::NetworkData::ServiceConfig::GetServerConfig(a1);
        v2 = ot::NetworkData::ServiceConfig::GetServerConfig(a2);
        return ot::NetworkData::ServiceConfig::ServerConfig::operator==(ServerConfig, v2);
      }
    }
  }

  return v6;
}

void *ot::NetworkData::ServiceConfig::SetFrom(ot::NetworkData::ServiceConfig *this, const ot::NetworkData::ServiceTlv *a2, const ot::NetworkData::ServerTlv *a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  ot::Clearable<ot::NetworkData::ServiceConfig>::Clear(this);
  ot::NetworkData::ServiceTlv::GetServiceData(v8, v6);
  *this = ot::NetworkData::ServiceTlv::GetServiceId(v8);
  *(this + 1) = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v8);
  *(this + 8) = ot::Data<(ot::DataLengthType)0>::GetLength(v6);
  ot::Data<(ot::DataLengthType)0>::CopyBytesTo(v6, this + 9);
  ServerConfig = ot::NetworkData::ServiceConfig::GetServerConfig(this);
  return ot::NetworkData::ServiceConfig::ServerConfig::SetFrom(ServerConfig, v7);
}

void ot::Clearable<ot::NetworkData::ServiceConfig>::Clear(void *a1)
{
  ot::ClearAllBytes<ot::NetworkData::ServiceConfig>(a1);
}

{
  ot::Clearable<ot::NetworkData::ServiceConfig>::Clear(a1);
}

uint64_t ot::NetworkData::LowpanContextInfo::SetFrom(ot::NetworkData::LowpanContextInfo *this, const ot::NetworkData::PrefixTlv *a2, const ot::NetworkData::ContextTlv *a3)
{
  *this = ot::NetworkData::ContextTlv::GetContextId(a3);
  *(this + 1) = ot::NetworkData::ContextTlv::IsCompress(a3);
  ot::NetworkData::LowpanContextInfo::GetPrefix(this);
  ot::NetworkData::PrefixTlv::CopyPrefixTo(a2, v3);
  ot::NetworkData::LowpanContextInfo::GetPrefix(this);
  v8 = v4;
  ContextLength = ot::NetworkData::ContextTlv::GetContextLength(a3);
  return ot::Ip6::Prefix::SetLength(v8, ContextLength);
}

void ot::NetworkData::LowpanContextInfo::GetPrefix(ot::NetworkData::LowpanContextInfo *this)
{
  ot::AsCoreType<otIp6Prefix>(this + 2);
}

{
  ot::NetworkData::LowpanContextInfo::GetPrefix(this);
}

uint64_t ot::NetworkData::ContextTlv::GetContextLength(ot::NetworkData::ContextTlv *this)
{
  return *(this + 3);
}

{
  return ot::NetworkData::ContextTlv::GetContextLength(this);
}

BOOL ot::Ip6::Prefix::IsValid(ot::Ip6::Prefix *this)
{
  return *(this + 16) <= 0x80u;
}

{
  return ot::Ip6::Prefix::IsValid(this);
}

void *ot::ClearAllBytes<ot::NetworkData::OnMeshPrefixConfig>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::NetworkData::OnMeshPrefixConfig>(result);
}

void *ot::ClearAllBytes<ot::NetworkData::ExternalRouteConfig>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::NetworkData::ExternalRouteConfig>(result);
}

void ot::ClearAllBytes<ot::NetworkData::ServiceConfig>(void *a1)
{
  bzero(a1, 0x204uLL);
}

{
  ot::ClearAllBytes<ot::NetworkData::ServiceConfig>(a1);
}

ot::NetworkDiagnostic::Server *ot::NetworkDiagnostic::Server::Server(ot::NetworkDiagnostic::Server *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Coap::MessageQueue::MessageQueue(this);
  return this;
}

{
  ot::NetworkDiagnostic::Server::Server(this, a2);
  return this;
}

double ot::NetworkDiagnostic::Server::PrepareMessageInfoForDest(ot::NetworkDiagnostic::Server *this, const ot::Ip6::Address *a2, __n128 *a3)
{
  if (ot::Ip6::Address::IsMulticast(a2))
  {
    ot::Ip6::MessageInfo::SetMulticastLoop(a3, 1);
  }

  if (ot::Ip6::Address::IsLinkLocalUnicastOrMulticast(a2, v3))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::Mle::GetLinkLocalAddress(v4);
    ot::Ip6::MessageInfo::SetSockAddr(a3, v5);
  }

  else
  {
    ot::Tmf::MessageInfo::SetSockAddrToRloc(a3);
  }

  return ot::Ip6::MessageInfo::SetPeerAddr(a3, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AppendIp6AddressList(ot::NetworkDiagnostic::Server *this, ot::Message *a2)
{
  v22 = this;
  v21 = a2;
  v20 = 0;
  v19 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::GetUnicastAddresses(v2);
  v18[1] = v3;
  v18[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v3);
  v17 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
  while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v18, &v17))
  {
    v16 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v18);
    ++v19;
    ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v18);
  }

  if (16 * v19 <= 254)
  {
    ot::NetworkDiagnostic::Tlv::SetType(v15, 8);
    ot::Tlv::SetLength(v15, 16 * v19);
    v20 = ot::Message::Append<ot::NetworkDiagnostic::Tlv>(v21, v15);
    if (v20)
    {
      return v20;
    }
  }

  else
  {
    ot::Tlv::SetType(v14, 8);
    ot::ExtendedTlv::SetLength(v14, 16 * v19);
    v4 = ot::Message::Append<ot::ExtendedTlv>(v21, v14);
    v20 = v4;
    if (v4)
    {
      return v20;
    }
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::GetUnicastAddresses(v5);
  v13[1] = v6;
  v13[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v6);
  v12 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
  while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v13, &v12))
  {
    v11 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v13);
    v9 = v21;
    ot::Ip6::Netif::UnicastAddress::GetAddress(v11);
    v20 = ot::Message::Append<ot::Ip6::Address>(v9, v7);
    if (v20)
    {
      break;
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v13);
  }

  return v20;
}

_BYTE *ot::NetworkDiagnostic::Tlv::SetType(ot::Tlv *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::NetworkDiagnostic::Tlv::SetType(a1, a2);
}

uint64_t ot::Message::Append<ot::NetworkDiagnostic::Tlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::NetworkDiagnostic::Tlv>(a1, a2);
}

uint64_t ot::Message::Append<ot::ExtendedTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::ExtendedTlv>(a1, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AppendChildTable(ot::NetworkDiagnostic::Server *this, ot::Message *a2)
{
  v30 = this;
  v29 = a2;
  v28 = 0;
  v27 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsRouterOrLeader(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    NumChildren = ot::ChildTable::GetNumChildren(v3, 0);
    v27 = ot::Min<unsigned short>(NumChildren, 0x18Eu);
    if (3 * v27 > 0xFE)
    {
      ot::Tlv::SetType(v25, 16);
      ot::ExtendedTlv::SetLength(v25, 3 * v27);
      v28 = ot::Message::Append<ot::ExtendedTlv>(v29, v25);
      if (v28)
      {
        return v28;
      }
    }

    else
    {
      ot::NetworkDiagnostic::Tlv::SetType(v26, 16);
      ot::Tlv::SetLength(v26, 3 * v27);
      v28 = ot::Message::Append<ot::NetworkDiagnostic::Tlv>(v29, v26);
      if (v28)
      {
        return v28;
      }
    }

    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v23 = ot::ChildTable::Iterate(v5, 0);
    v24 = &v23;
    v33 = ot::ChildTable::IteratorBuilder::begin(&v23);
    v34 = v6;
    v21 = v33;
    v22 = v6;
    v31 = ot::ChildTable::IteratorBuilder::end(v24);
    v32 = v7;
    v19 = v31;
    v20 = v7;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v21, &v19))
    {
      v18 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v21);
      v17 = 0;
      if (!v27--)
      {
        break;
      }

      while (1)
      {
        v13 = 1 << v17;
        if (v13 >= ot::Child::GetTimeout(v18))
        {
          break;
        }

        ++v17;
      }

      ot::Clearable<ot::NetworkDiagnostic::ChildTableEntry>::Clear(v16);
      ot::NetworkDiagnostic::ChildTableEntry::SetTimeout(v16, (v17 + 4));
      LinkQualityIn = ot::Neighbor::GetLinkQualityIn(v18);
      ot::NetworkDiagnostic::ChildTableEntry::SetLinkQuality(v16, LinkQualityIn);
      Rloc16 = ot::Neighbor::GetRloc16(v18);
      v11 = ot::Mle::ChildIdFromRloc16(Rloc16);
      ot::NetworkDiagnostic::ChildTableEntry::SetChildId(v16, v11);
      DeviceMode = ot::Neighbor::GetDeviceMode(v18);
      ot::NetworkDiagnostic::ChildTableEntry::SetMode(v16, DeviceMode);
      v28 = ot::Message::Append<ot::NetworkDiagnostic::ChildTableEntry>(v29, v16);
      if (v28)
      {
        break;
      }

      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v21);
    }
  }

  return v28;
}

uint64_t ot::Clearable<ot::NetworkDiagnostic::ChildTableEntry>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::NetworkDiagnostic::ChildTableEntry>(a1);
}

{
  return ot::Clearable<ot::NetworkDiagnostic::ChildTableEntry>::Clear(a1);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetTimeout(ot::NetworkDiagnostic::ChildTableEntry *this, unsigned __int16 a2)
{
  v5 = a2;
  TimeoutChildId = ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this, a2);
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(this, TimeoutChildId & 0x7FFu | (v5 << 11));
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeout(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetLinkQuality(ot::NetworkDiagnostic::ChildTableEntry *a1, unsigned __int16 a2)
{
  v5 = a2;
  TimeoutChildId = ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(a1, a2);
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(a1, TimeoutChildId & 0xF9FF | (v5 << 9) & 0x600u);
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetLinkQuality(a1, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetChildId(ot::NetworkDiagnostic::ChildTableEntry *this, unsigned __int16 a2)
{
  TimeoutChildId = ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this, a2);
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(this, TimeoutChildId & 0xFE00 | a2 & 0x1FFu);
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetChildId(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetMode(uint64_t a1, char a2)
{
  v4 = a2;
  result = ot::Mle::DeviceMode::Get(&v4);
  *(a1 + 2) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetMode(a1, a2);
}

uint64_t ot::Message::Append<ot::NetworkDiagnostic::ChildTableEntry>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 3u);
}

{
  return ot::Message::Append<ot::NetworkDiagnostic::ChildTableEntry>(a1, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AppendMacCounters(ot::NetworkDiagnostic::Server *this, ot::Message *a2)
{
  v7 = this;
  v6 = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  Counters = ot::Mac::Mac::GetCounters(v2);
  ot::ClearAllBytes<ot::NetworkDiagnostic::MacCountersTlv>(v5);
  ot::NetworkDiagnostic::MacCountersTlv::Init(v5);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInUnknownProtos(v5, Counters[31]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInErrors(v5, Counters[35] + Counters[36] + Counters[37] + Counters[38] + Counters[39] + Counters[40]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfOutErrors(v5, Counters[14]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInUcastPkts(v5, Counters[25]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInBroadcastPkts(v5, Counters[26]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInDiscards(v5, Counters[32] + Counters[33] + Counters[34]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfOutUcastPkts(v5, Counters[1]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfOutBroadcastPkts(v5, Counters[2]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfOutDiscards(v5, Counters[16]);
  return ot::Tlv::AppendTo(v5, v6);
}

void *ot::ClearAllBytes<ot::NetworkDiagnostic::MacCountersTlv>(void *a1)
{
  return memset(a1, 0, 0x26uLL);
}

{
  return ot::ClearAllBytes<ot::NetworkDiagnostic::MacCountersTlv>(a1);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::Init(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  ot::NetworkDiagnostic::Tlv::SetType(this, 9);
  return ot::Tlv::SetLength(this, 36);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::Init(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInUnknownProtos(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInUnknownProtos(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInErrors(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 6) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInErrors(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfOutErrors(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 10) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfOutErrors(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInUcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 14) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInUcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInBroadcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 18) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInBroadcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInDiscards(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 22) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInDiscards(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfOutUcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 26) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfOutUcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfOutBroadcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 30) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfOutBroadcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfOutDiscards(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 34) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfOutDiscards(this, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AppendRequestedTlvs(ot::NetworkDiagnostic::Server *this, const ot::Message *a2, ot::Message *a3, ot::OffsetRange *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  i = 0;
  for (i = ot::Tlv::FindTlvValueOffsetRange(a2, 0x12, &v7, a4); !i; i = ot::NetworkDiagnostic::Server::AppendDiagTlv(this, v6, v9))
  {
    if (ot::OffsetRange::IsEmpty(&v7))
    {
      break;
    }

    v6 = 0;
    i = ot::Message::Read<unsigned char>(v10, &v7, &v6);
    if (i)
    {
      break;
    }

    ot::OffsetRange::AdvanceOffset(&v7, 1u);
  }

  return i;
}

uint64_t ot::NetworkDiagnostic::Server::AppendDiagTlv(ot::NetworkDiagnostic::Server *this, char a2, ot::Message *a3)
{
  v64 = this;
  v63 = a2;
  v62 = a3;
  appended = 0;
  switch(a2)
  {
    case 0:
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v3);
      appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(v62, ExtAddress);
      break;
    case 1:
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      Rloc16 = ot::Mle::Mle::GetRloc16(v5);
      appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v62, Rloc16);
      break;
    case 2:
      v48 = v62;
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      DeviceMode = ot::Mle::Mle::GetDeviceMode(v7);
      v8 = ot::Mle::DeviceMode::Get(&DeviceMode);
      appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(v48, v8);
      break;
    case 3:
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      if (!ot::Mle::Mle::IsRxOnWhenIdle(v10))
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        Timeout = ot::Mle::Mle::GetTimeout(v11);
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(v62, Timeout);
      }

      break;
    case 4:
      ot::NetworkDiagnostic::ConnectivityTlv::Init(v51);
      v43 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::FillConnectivityTlv(v43, v51);
      appended = ot::Tlv::AppendTo(v51, v62);
      break;
    case 5:
      ot::NetworkDiagnostic::RouteTlv::Init(v65);
      v44 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
      ot::RouterTable::FillRouteTlv(v44, v65, 0);
      appended = ot::Tlv::AppendTo(v65, v62);
      break;
    case 6:
      ot::NetworkDiagnostic::LeaderDataTlv::Init(v59);
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      LeaderData = ot::Mle::Mle::GetLeaderData(v13);
      ot::Mle::LeaderDataTlv::Set(v59, LeaderData);
      appended = ot::Tlv::AppendTo(v59, v62);
      break;
    case 7:
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::MutableNetworkData::GetBytes(v15);
      v47 = v16;
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      Length = ot::NetworkData::NetworkData::GetLength(v17);
      appended = ot::Tlv::Append<ot::TlvInfo<(unsigned char)7>>(v62, v47, Length);
      break;
    case 8:
      appended = ot::NetworkDiagnostic::Server::AppendIp6AddressList(this, v62);
      break;
    case 9:
      appended = ot::NetworkDiagnostic::Server::AppendMacCounters(this, v62);
      break;
    case 16:
      appended = ot::NetworkDiagnostic::Server::AppendChildTable(this, v62);
      break;
    case 17:
      v56 = 0;
      ot::NetworkDiagnostic::ChannelPagesTlv::Init(v57);
      v55 = &ot::Radio::kSupportedChannelPages;
      v54 = &ot::Radio::kSupportedChannelPages;
      v53 = "AddrResolver";
      while (v54 != v53)
      {
        v52 = *v54;
        ChannelPages = ot::NetworkDiagnostic::ChannelPagesTlv::GetChannelPages(v57);
        v42 = v56++;
        *(ChannelPages + v42) = v52;
        ++v54;
      }

      ot::Tlv::SetLength(v57, v56);
      appended = ot::Tlv::AppendTo(v57, v62);
      break;
    case 19:
      v50 = 0;
      v45 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      if (!ot::Mle::MleRouter::GetMaxChildTimeout(v45, &v50))
      {
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(v62, v50);
      }

      break;
    case 23:
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      ot::Radio::GetIeeeEui64(v9, v66);
      appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(v62, v66);
      break;
    case 24:
      appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(v62, 4u);
      break;
    case 25:
      VendorName = ot::NetworkDiagnostic::Server::GetVendorName(this);
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(v62, VendorName, v22, v23, v24);
      break;
    case 26:
      VendorModel = ot::NetworkDiagnostic::Server::GetVendorModel(this);
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(v62, VendorModel, v26, v27, v28);
      break;
    case 27:
      VendorSwVersion = ot::NetworkDiagnostic::Server::GetVendorSwVersion(this);
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(v62, VendorSwVersion, v30, v31, v32);
      break;
    case 28:
      VersionString = otGetVersionString();
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(v62, VersionString, v38, v39, v40);
      break;
    case 34:
      v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      Counters = ot::Mle::Mle::GetCounters(v19);
      ot::NetworkDiagnostic::MleCountersTlv::Init(v58, Counters);
      appended = ot::Tlv::AppendTo(v58, v62);
      break;
    case 35:
      VendorAppUrl = ot::NetworkDiagnostic::Server::GetVendorAppUrl(this);
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(v62, VendorAppUrl, v34, v35, v36);
      break;
    default:
      return appended;
  }

  return appended;
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 2, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x17, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0x18u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 3u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(a1, a2);
}

_BYTE *ot::NetworkDiagnostic::LeaderDataTlv::Init(ot::NetworkDiagnostic::LeaderDataTlv *this)
{
  ot::Mle::LeaderDataTlv::Init(this);
  return ot::Tlv::SetType(this, 6);
}

{
  return ot::NetworkDiagnostic::LeaderDataTlv::Init(this);
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)7>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 7, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)7>>(a1, a2, a3);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x19, 0x20u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x1A, 0x20u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x1B, 0x10u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x23, 0x60u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x1C, 0x40u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

uint64_t ot::NetworkDiagnostic::ChannelPagesTlv::Init(ot::NetworkDiagnostic::ChannelPagesTlv *this)
{
  ot::NetworkDiagnostic::Tlv::SetType(this, 17);
  return ot::Tlv::SetLength(this, 1);
}

{
  return ot::NetworkDiagnostic::ChannelPagesTlv::Init(this);
}

uint64_t ot::NetworkDiagnostic::ChannelPagesTlv::GetChannelPages(ot::NetworkDiagnostic::ChannelPagesTlv *this)
{
  return this + 2;
}

{
  return ot::NetworkDiagnostic::ChannelPagesTlv::GetChannelPages(this);
}

_BYTE *ot::NetworkDiagnostic::ConnectivityTlv::Init(ot::NetworkDiagnostic::ConnectivityTlv *this)
{
  ot::Mle::ConnectivityTlv::Init(this);
  return ot::Tlv::SetType(this, 4);
}

{
  return ot::NetworkDiagnostic::ConnectivityTlv::Init(this);
}

_BYTE *ot::NetworkDiagnostic::RouteTlv::Init(ot::NetworkDiagnostic::RouteTlv *this)
{
  ot::Mle::RouteTlv::Init(this);
  return ot::Tlv::SetType(this, 5);
}

{
  return ot::NetworkDiagnostic::RouteTlv::Init(this);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 0x13u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(a1, a2);
}

void ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)35>(ot::NetworkDiagnostic::Server *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a1;
  if (ot::Coap::Message::IsPostRequest(a2))
  {
    v14 = ot::UriToString<(ot::Uri)35>();
    ot::Ip6::MessageInfo::GetPeerAddr(v16);
    v13 = v19;
    ot::Ip6::Address::ToString(v19, v3);
    v4 = ot::String<(unsigned short)40>::AsCString(v19);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Received %s from %s", v5, v6, v7, v8, v9, v10, v14, v4);
    if (ot::Coap::Message::IsConfirmable(v17))
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v15);
      ot::Coap::CoapBase::SendEmptyAck(v11, v17, v16);
      IgnoreError();
    }

    ot::Ip6::MessageInfo::GetPeerAddr(v16);
    ot::NetworkDiagnostic::Server::PrepareAndSendAnswers(v15, v12, v17);
  }
}

void ot::NetworkDiagnostic::Server::PrepareAndSendAnswers(ot::NetworkDiagnostic::Server *this, const ot::Ip6::Address *a2, const ot::Message *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  TlvValueOffsetRange = 0;
  ot::NetworkDiagnostic::Server::AnswerInfo::AnswerInfo(&v12);
  if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(v17, v13))
  {
    v13[2] = 1;
  }

  v13[3] = ot::Message::GetPriority(v17);
  TlvValueOffsetRange = ot::NetworkDiagnostic::Server::AllocateAnswer(this, &v16, &v12);
  if (!TlvValueOffsetRange)
  {
    TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v17, 0x12, &v11, v4);
    if (!TlvValueOffsetRange)
    {
      while (!ot::OffsetRange::IsEmpty(&v11))
      {
        v9 = 0;
        TlvValueOffsetRange = ot::Message::Read<unsigned char>(v17, &v11, &v9);
        if (TlvValueOffsetRange)
        {
          goto LABEL_22;
        }

        ot::OffsetRange::AdvanceOffset(&v11, 1u);
        switch(v9)
        {
          case 0x1Du:
            TlvValueOffsetRange = ot::NetworkDiagnostic::Server::AppendChildTableAsChildTlvs(this, &v16, &v12);
            if (TlvValueOffsetRange)
            {
              goto LABEL_22;
            }

            break;
          case 0x1Eu:
            TlvValueOffsetRange = ot::NetworkDiagnostic::Server::AppendChildTableIp6AddressList(this, &v16, &v12);
            if (TlvValueOffsetRange)
            {
              goto LABEL_22;
            }

            break;
          case 0x1Fu:
            TlvValueOffsetRange = ot::NetworkDiagnostic::Server::AppendRouterNeighborTlvs(this, &v16, &v12);
            if (TlvValueOffsetRange)
            {
              goto LABEL_22;
            }

            break;
          default:
            appended = ot::NetworkDiagnostic::Server::AppendDiagTlv(this, v9, v16);
            TlvValueOffsetRange = appended;
            if (appended)
            {
              goto LABEL_22;
            }

            break;
        }

        TlvValueOffsetRange = ot::NetworkDiagnostic::Server::CheckAnswerLength(this, &v16, &v12);
        if (TlvValueOffsetRange)
        {
          goto LABEL_22;
        }
      }

      ot::NetworkDiagnostic::AnswerTlv::Init(v10, v12, 1);
      TlvValueOffsetRange = ot::Message::Append<ot::NetworkDiagnostic::AnswerTlv>(v16, v10);
      if (!TlvValueOffsetRange)
      {
        ot::NetworkDiagnostic::Server::SendNextAnswer(this, v14, v18, v4, v5, v6);
      }
    }
  }

LABEL_22:
  if (TlvValueOffsetRange)
  {
    if (v14)
    {
      ot::NetworkDiagnostic::Server::FreeAllRelatedAnswers(this, v14, v3, v4, v5, v6);
    }
  }
}

uint64_t ot::NetworkDiagnostic::Server::AllocateAnswer(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v6 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  *a2 = ot::Coap::CoapBase::NewConfirmablePostMessage(v3, 0x21u);
  if (*a2)
  {
    ot::Message::SetPriority(*a2, *(a3 + 5));
    IgnoreError();
    ot::Coap::MessageQueue::Enqueue(this, *a2);
    if (!*(a3 + 1))
    {
      *(a3 + 1) = *a2;
    }

    if (*(a3 + 4))
    {
      return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(*a2, *(a3 + 1));
    }
  }

  else
  {
    return 3;
  }

  return v6;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0x21u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(a1, a2);
}

BOOL ot::NetworkDiagnostic::Server::IsLastAnswer(ot::NetworkDiagnostic::Server *this, const ot::Coap::Message *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v11 = this;
  v10 = a2;
  v9 = 1;
  if (!ot::Tlv::FindTlv<ot::NetworkDiagnostic::AnswerTlv>(a2, v8, a3, a4, a5, a6))
  {
    return ot::NetworkDiagnostic::AnswerTlv::IsLast(v8, v6);
  }

  return v9;
}

BOOL ot::NetworkDiagnostic::AnswerTlv::IsLast(ot::NetworkDiagnostic::AnswerTlv *this, unsigned __int16 a2)
{
  return (ot::NetworkDiagnostic::AnswerTlv::GetFlagsIndex(this, a2) & 0x8000) != 0;
}

{
  return ot::NetworkDiagnostic::AnswerTlv::IsLast(this, a2);
}

void ot::NetworkDiagnostic::Server::FreeAllRelatedAnswers(ot::NetworkDiagnostic::Server *this, ot::Coap::Message *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  while (a2)
  {
    if (ot::NetworkDiagnostic::Server::IsLastAnswer(this, a2, a3, a4, a5, a6))
    {
      NextCoapMessage = 0;
    }

    else
    {
      NextCoapMessage = ot::Coap::Message::GetNextCoapMessage(a2);
    }

    ot::Coap::MessageQueue::DequeueAndFree(this, a2);
    a2 = NextCoapMessage;
  }
}

uint64_t ot::Coap::Message::GetNextCoapMessage(ot::Coap::Message *this)
{
  return ot::Message::GetNext(this);
}

{
  return ot::Coap::Message::GetNextCoapMessage(this);
}

uint64_t ot::NetworkDiagnostic::Server::AppendChildTableAsChildTlvs(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
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
    ot::NetworkDiagnostic::ChildTlv::InitFrom(v23, v8);
    v15 = ot::Tlv::AppendTo(v23, *v17);
    if (v15)
    {
      return v15;
    }

    v15 = ot::NetworkDiagnostic::Server::CheckAnswerLength(this, v17, v16);
    if (v15)
    {
      return v15;
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  ot::NetworkDiagnostic::ChildTlv::InitAsEmpty(v23);
  return ot::Tlv::AppendTo(v23, *v17);
}

uint64_t ot::NetworkDiagnostic::Server::AppendChildTableIp6AddressList(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  appended = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v13 = ot::ChildTable::Iterate(v3, 0);
  v14 = &v13;
  v22 = ot::ChildTable::IteratorBuilder::begin(&v13);
  v23 = v4;
  v11 = v22;
  v12 = v4;
  v20 = ot::ChildTable::IteratorBuilder::end(v14);
  v21 = v5;
  v9 = v20;
  v10 = v5;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v11, &v9))
  {
    v8 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v11);
    appended = ot::NetworkDiagnostic::Server::AppendChildIp6AddressListTlv(this, *v18, v8);
    if (appended)
    {
      return appended;
    }

    appended = ot::NetworkDiagnostic::Server::CheckAnswerLength(this, v18, v17);
    if (appended)
    {
      return appended;
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  ot::NetworkDiagnostic::Tlv::SetType(v15, 30);
  ot::Tlv::SetLength(v15, 0);
  return ot::Message::Append<ot::NetworkDiagnostic::Tlv>(*v18, v15);
}

uint64_t ot::NetworkDiagnostic::Server::AppendRouterNeighborTlvs(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  ot::RouterTable::begin(v8);
  v7 = v3;
  v6 = ot::RouterTable::end(v8);
  while (v7 != v6)
  {
    if (ot::Neighbor::IsStateValid(v7))
    {
      ot::NetworkDiagnostic::RouterNeighborTlv::InitFrom(v12, v7);
      v9 = ot::Tlv::AppendTo(v12, *a2);
      if (v9)
      {
        return v9;
      }

      v9 = ot::NetworkDiagnostic::Server::CheckAnswerLength(this, a2, a3);
      if (v9)
      {
        return v9;
      }
    }

    v7 = (v7 + 144);
  }

  ot::NetworkDiagnostic::RouterNeighborTlv::InitAsEmpty(v12);
  return ot::Tlv::AppendTo(v12, *a2);
}

uint64_t ot::NetworkDiagnostic::Server::CheckAnswerLength(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  if (ot::Message::GetLength(*a2) >= 800)
  {
    v3 = (*v8)++;
    ot::NetworkDiagnostic::AnswerTlv::Init(v6, v3, 0);
    v7 = ot::Message::Append<ot::NetworkDiagnostic::AnswerTlv>(*v9, v6);
    if (!v7)
    {
      return ot::NetworkDiagnostic::Server::AllocateAnswer(this, v9, v8);
    }
  }

  return v7;
}

uint64_t ot::Message::Append<ot::NetworkDiagnostic::AnswerTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::NetworkDiagnostic::AnswerTlv>(a1, a2);
}

void ot::NetworkDiagnostic::Server::SendNextAnswer(ot::NetworkDiagnostic::Server *this, ot::Coap::Message *a2, const ot::Ip6::Address *a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  if (ot::NetworkDiagnostic::Server::IsLastAnswer(this, a2, a3, a4, a5, a6))
  {
    NextCoapMessage = 0;
  }

  else
  {
    NextCoapMessage = ot::Coap::Message::GetNextCoapMessage(v18);
  }

  v15 = NextCoapMessage;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v14, Instance);
  ot::Coap::MessageQueue::Dequeue(this, v18);
  ot::NetworkDiagnostic::Server::PrepareMessageInfoForDest(this, v17, v14);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v16 = ot::Coap::CoapBase::SendMessage(v7, v18, v14, ot::NetworkDiagnostic::Server::HandleAnswerResponse, v15);
  if (v16)
  {
    ot::Message::Free(v18);
    if (v15)
    {
      ot::NetworkDiagnostic::Server::FreeAllRelatedAnswers(this, v15, v8, v9, v10, v11);
    }
  }
}

void ot::NetworkDiagnostic::Server::HandleAnswerResponse(ot::Message *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (result)
  {
    v8 = ot::GetProvider<ot::Message>::Get<ot::NetworkDiagnostic::Server>(result);
    ot::AsCoapMessagePtr();
    v7 = v4;
    ot::AsCoreTypePtr<otMessageInfo>();
    ot::NetworkDiagnostic::Server::HandleAnswerResponse(v8, result, v7, v5, a4, v6);
  }
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::NetworkDiagnostic::Server>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkDiagnostic::Server>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::NetworkDiagnostic::Server>(a1);
}

void ot::NetworkDiagnostic::Server::HandleAnswerResponse(ot::NetworkDiagnostic::Server *result, ot::Coap::Message *a2, ot::Coap::Message *a3, ot::Ip6::MessageInfo *a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v8 = a5;
  if (!a5)
  {
    if (a3 && a4)
    {
      if (ot::Coap::Message::GetCode(a3) == 68)
      {
        ot::Ip6::MessageInfo::GetPeerAddr(a4);
        ot::NetworkDiagnostic::Server::SendNextAnswer(result, a2, v6);
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  if (v8)
  {
    ot::NetworkDiagnostic::Server::FreeAllRelatedAnswers(result, a2, a3, a4, a5, a6);
  }
}

uint64_t ot::NetworkDiagnostic::ChildTlv::InitAsEmpty(ot::NetworkDiagnostic::ChildTlv *this)
{
  ot::NetworkDiagnostic::Tlv::SetType(this, 29);
  return ot::Tlv::SetLength(this, 0);
}

{
  return ot::NetworkDiagnostic::ChildTlv::InitAsEmpty(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::InitAsEmpty(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  ot::NetworkDiagnostic::Tlv::SetType(this, 31);
  return ot::Tlv::SetLength(this, 0);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::InitAsEmpty(this);
}

uint64_t ot::NetworkDiagnostic::Server::AppendChildIp6AddressListTlv(ot::NetworkDiagnostic::Server *this, ot::Coap::Message *a2, const ot::Child *a3)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  *&v14[4] = 0;
  Ip6Addresses = ot::Child::GetIp6Addresses(a3);
  *v14 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::GetLength(Ip6Addresses);
  if (ot::Child::GetMeshLocalIp6Address(v15, v12))
  {
    ot::Clearable<ot::Ip6::Address>::Clear(v12);
  }

  else
  {
    ++*v14;
  }

  if (*v14)
  {
    if (16 * *v14 + 2 > 0xFE)
    {
      ot::Tlv::SetType(v10, 30);
      ot::ExtendedTlv::SetLength(v10, 16 * *v14 + 2);
      *&v14[2] = ot::Message::Append<ot::ExtendedTlv>(v16, v10);
      if (*&v14[2])
      {
        return *&v14[2];
      }
    }

    else
    {
      ot::NetworkDiagnostic::Tlv::SetType(v11, 30);
      ot::Tlv::SetLength(v11, 16 * v14[0] + 2);
      *&v14[2] = ot::Message::Append<ot::NetworkDiagnostic::Tlv>(v16, v11);
      if (*&v14[2])
      {
        return *&v14[2];
      }
    }

    Rloc16 = ot::Neighbor::GetRloc16(v15);
    ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::SetRloc16(v13, Rloc16);
    *&v14[2] = ot::Message::Append<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(v16, v13);
    if (!*&v14[2] && (ot::Ip6::Address::IsUnspecified(v12) || (*&v14[2] = ot::Message::Append<ot::Ip6::Address>(v16, v12)) == 0))
    {
      v9 = ot::Child::GetIp6Addresses(v15);
      ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
      v8 = v5;
      v7 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(v9);
      while (v8 != v7)
      {
        *&v14[2] = ot::Message::Append<ot::Ip6::Address>(v16, v8);
        if (*&v14[2])
        {
          break;
        }

        v8 += 16;
      }
    }
  }

  return *&v14[2];
}

uint64_t ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 240);
}

{
  return ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::GetLength(a1);
}

uint64_t ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::SetRloc16(ot::NetworkDiagnostic::ChildIp6AddressListTlvValue *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *this = result;
  return result;
}

{
  return ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::SetRloc16(this, a2);
}

uint64_t ot::Message::Append<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(a1, a2);
}

void ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)34>(ot::NetworkDiagnostic::Server *a1, ot::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v18 = a1;
  appended = 0;
  v19 = 0;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v17 = ot::UriToString<(ot::Uri)34>();
    ot::Ip6::MessageInfo::GetPeerAddr(v21);
    v16 = v24;
    ot::Ip6::Address::ToString(v24, v3);
    v4 = ot::String<(unsigned short)40>::AsCString(v24);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Received %s from %s", v5, v6, v7, v8, v9, v10, v17, v4);
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v18);
    v19 = ot::Coap::CoapBase::NewResponseMessage(v11, v22);
    if (v19)
    {
      v15 = v19;
      Priority = ot::Message::GetPriority(v22);
      ot::Message::SetPriority(v15, Priority);
      IgnoreError();
      appended = ot::NetworkDiagnostic::Server::AppendRequestedTlvs(v18, v22, v19, v13);
      if (!appended)
      {
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v18);
        appended = ot::Coap::CoapBase::SendMessage(v14, v19, v21);
      }
    }

    else
    {
      appended = 3;
    }
  }

  else
  {
    appended = 2;
  }

  if (appended)
  {
    if (v19)
    {
      ot::Message::Free(v19);
    }
  }
}

void ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)36>(ot::InstanceLocator *a1, ot::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v21 = a1;
  v25 = 0;
  v24 = 0;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v20 = ot::UriToString<(ot::Uri)36>();
    ot::Ip6::MessageInfo::GetPeerAddr(v26);
    v19 = v29;
    ot::Ip6::Address::ToString(v29, v3);
    v4 = ot::String<(unsigned short)40>::AsCString(v29);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Received %s from %s", v5, v6, v7, v8, v9, v10, v20, v4);
    v18 = v27;
    Offset = ot::Message::GetOffset(v27);
    if (!ot::Message::Read<ot::NetworkDiagnostic::Tlv>(v18, Offset, v23) && ot::NetworkDiagnostic::Tlv::GetType(v23) == 18)
    {
      v25 = ot::Message::GetOffset(v27) + 2;
      for (i = 0; ; ++i)
      {
        v17 = i;
        Length = ot::Tlv::GetLength(v23);
        if (v17 >= Length)
        {
          break;
        }

        if (ot::Message::Read<unsigned char>(v27, v25 + i, &v24))
        {
          return;
        }

        v16 = v24;
        if (v24 == 9)
        {
          v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v21);
          ot::Mac::Mac::ResetCounters(v13);
        }

        else if (v16 == 34)
        {
          v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(v21);
          ot::Mle::Mle::ResetCounters(v14);
        }
      }

      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v21);
      ot::Coap::CoapBase::SendEmptyAck(v15, v27, v26);
      IgnoreError();
    }
  }
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::Tlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::Tlv>(a1, a2, a3);
}

uint64_t ot::NetworkDiagnostic::Tlv::GetType(ot::NetworkDiagnostic::Tlv *this)
{
  return ot::Tlv::GetType(this);
}

{
  return ot::NetworkDiagnostic::Tlv::GetType(this);
}

ot::NetworkDiagnostic::Client *ot::NetworkDiagnostic::Client::Client(ot::NetworkDiagnostic::Client *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = ot::Random::NonCrypto::GetUint16(v2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 1);
  return this;
}

{
  ot::NetworkDiagnostic::Client::Client(this, a2);
  return this;
}

uint64_t ot::NetworkDiagnostic::Client::SendDiagnosticGet(ot::InstanceLocator *a1, ot::Ip6::Address *a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  if (ot::Ip6::Address::IsMulticast(a2))
  {
    v8 = ot::NetworkDiagnostic::Client::SendCommand(a1, 0x23u, 1u, a2, a3, a4, 0, 0);
  }

  else
  {
    v8 = ot::NetworkDiagnostic::Client::SendCommand(a1, 0x22u, 1u, a2, a3, a4, ot::NetworkDiagnostic::Client::HandleGetResponse, a1);
  }

  if (!v8)
  {
    ot::CallbackBase<void (*)(otError,otMessage *,otMessageInfo const*,void *)>::Set(a1 + 1, a5, a6);
  }

  return v8;
}

uint64_t ot::NetworkDiagnostic::Client::SendCommand(ot::InstanceLocator *a1, unsigned __int8 a2, unsigned __int8 a3, ot::Ip6::Address *a4, void *a5, unsigned __int8 a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v25 = a1;
  v29 = 0;
  v28 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v27, Instance);
  v26 = v36;
  if (v36 != 34)
  {
    if (v26 == 35)
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v25);
      v28 = ot::Coap::CoapBase::NewNonConfirmablePostMessage(v9, v36);
      goto LABEL_7;
    }

    if (v26 != 36)
    {
      __assert_rtn("SendCommand", "network_diagnostic.cpp", 1092, "false");
    }
  }

  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v25);
  v28 = ot::Coap::CoapBase::NewConfirmablePostMessage(v10, v36);
LABEL_7:
  if (v28)
  {
    ot::Message::SetPriority(v28, v35);
    IgnoreError();
    if (!v32 || (v29 = ot::Tlv::Append<ot::NetworkDiagnostic::TypeListTlv>(v28, v33, v32)) == 0)
    {
      if (v36 != 35 || (v11 = v28, v12 = *v25 + 1, *v25 = v12, (v29 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(v11, v12)) == 0))
      {
        v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(v25);
        ot::NetworkDiagnostic::Server::PrepareMessageInfoForDest(v13, v34, v27);
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v25);
        v29 = ot::Coap::CoapBase::SendMessage(v14, v28, v27, v31, v30);
        if (!v29)
        {
          v24 = ot::NetworkDiagnostic::Client::UriToString(v36);
          v23 = v38;
          ot::Ip6::Address::ToString(v38, v34);
          v15 = ot::String<(unsigned short)40>::AsCString(v38);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Sent %s to %s", v16, v17, v18, v19, v20, v21, v24, v15);
        }
      }
    }
  }

  else
  {
    v29 = 3;
  }

  if (v29 && v28)
  {
    ot::Message::Free(v28);
  }

  return v29;
}

void *ot::NetworkDiagnostic::Client::HandleGetResponse(ot::Coap::Message *a1, uint64_t a2, uint64_t a3, _BOOL4 a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::NetworkDiagnostic::Client::HandleGetResponse(a1, v7, v5, a4);
}

void *ot::CallbackBase<void (*)(otError,otMessage *,otMessageInfo const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,otMessage *,otMessageInfo const*,void *)>::Set(result, a2, a3);
}

uint64_t ot::Tlv::Append<ot::NetworkDiagnostic::TypeListTlv>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 0x12, a2, a3);
}

{
  return ot::Tlv::Append<ot::NetworkDiagnostic::TypeListTlv>(a1, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkDiagnostic::Server>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(a1);
}

const char *ot::NetworkDiagnostic::Client::UriToString(char a1)
{
  v2 = "";
  switch(a1)
  {
    case '""':
      return ot::UriToString<(ot::Uri)34>();
    case '#':
      return ot::UriToString<(ot::Uri)35>();
    case '$':
      return ot::UriToString<(ot::Uri)36>();
  }

  return v2;
}

void *ot::NetworkDiagnostic::Client::HandleGetResponse(ot::Coap::Message *a1, ot::Coap::Message *a2, uint64_t a3, _BOOL4 a4)
{
  v8[1] = a1;
  v8[0] = a2;
  v7 = a3;
  v6 = a4;
  if (!a4)
  {
    v6 = ot::Coap::Message::GetCode(v8[0]) != 68;
  }

  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(a1 + 1, &v6, v8, &v7);
}

void *ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(void *result, unsigned int *a2, void *a3, void *a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(result, a2, a3, a4);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(result, a2, a3, a4);
}

void ot::NetworkDiagnostic::Client::HandleTmf<(ot::Uri)33>(ot::InstanceLocator *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v15 = a1;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v14 = ot::UriToString<(ot::Uri)33>();
    ot::Ip6::MessageInfo::GetPeerAddr(v18);
    v13 = v21;
    ot::Ip6::Address::ToString(v21, v3);
    v4 = ot::String<(unsigned short)40>::AsCString(v21);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Received %s from %s", v5, v6, v7, v8, v9, v10, v14, v4);
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::MeshDiag>(v15);
    if ((ot::Utils::MeshDiag::HandleDiagnosticGetAnswer(v11, v19, v18) & 1) == 0)
    {
      v17 = v19;
      v16 = v18;
      ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(v15 + 1, &ot::kErrorNone, &v17, &v16);
    }

    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v15);
    ot::Coap::CoapBase::SendEmptyAck(v12, v19, v18);
    IgnoreError();
  }
}

void *ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(void *result, unsigned int *a2, void *a3, void *a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(result, a2, a3, a4);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(result, a2, a3, a4);
}

uint64_t ot::NetworkDiagnostic::Client::GetNextDiagTlv(ot::Message *a1, unsigned __int16 *a2, _BYTE *a3)
{
  v54 = a1;
  v53 = a2;
  v52 = a3;
  v51 = 0;
  if (*a2)
  {
    Offset = *v53;
  }

  else
  {
    Offset = ot::Message::GetOffset(v54);
  }

  v50 = Offset;
  while (1)
  {
    v29 = v50;
    if (v29 >= ot::Message::GetLength(v54))
    {
      return 23;
    }

    v49 = 0;
    v48 = 0;
    Length = 0;
    v51 = ot::Message::Read<ot::NetworkDiagnostic::Tlv>(v54, v50, v46);
    if (v51)
    {
      return v51;
    }

    if (ot::Tlv::IsExtended(v46))
    {
      v51 = ot::Message::Read<ot::ExtendedTlv>(v54, v50, v46);
      if (v51)
      {
        return v51;
      }

      v48 = v50 + 4;
      Length = ot::ExtendedTlv::GetLength(v46, v3);
    }

    else
    {
      v48 = v50 + 2;
      Length = ot::Tlv::GetLength(v46);
    }

    v27 = v50;
    v28 = v27 + ot::Tlv::GetSize(v46);
    if (v28 > ot::Message::GetLength(v54))
    {
      return 6;
    }

    switch(ot::NetworkDiagnostic::Tlv::GetType(v46))
    {
      case 0u:
        v26 = v54;
        v25 = v50;
        ot::AsCoreType<otExtAddress>((v52 + 8));
        v51 = ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(v26, v25, v6);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 1u:
        v51 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v54, v50, v52 + 8);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 2u:
        v45 = 0;
        v51 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(v54, v50, &v45, v4, v5);
        if (!v51)
        {
          ot::Mle::DeviceMode::DeviceMode(&v44, v45);
          ot::Mle::DeviceMode::Get(&v44, v52 + 8);
          goto LABEL_91;
        }

        return v51;
      case 3u:
        v51 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(v54, v50, v52 + 8);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 4u:
        if (ot::Tlv::IsExtended(v46))
        {
          return 6;
        }

        else
        {
          v51 = ot::Message::Read<ot::NetworkDiagnostic::ConnectivityTlv>(v54, v50, v43);
          if (!v51)
          {
            if (ot::Mle::ConnectivityTlv::IsValid(v43))
            {
              ot::NetworkDiagnostic::ConnectivityTlv::GetConnectivity(v43, (v52 + 8));
              goto LABEL_91;
            }

            return 6;
          }
        }

        return v51;
      case 5u:
        Size = ot::Tlv::GetSize(v46);
        v42 = ot::Min<unsigned int>(Size, 0x4Au);
        if (ot::Tlv::IsExtended(v46))
        {
          return 6;
        }

        else
        {
          v51 = ot::Message::Read(v54, v50, v55, v42);
          if (!v51)
          {
            if (ot::Mle::RouteTlv::IsValid(v55))
            {
              ot::NetworkDiagnostic::ParseRoute(v55, v52 + 8);
              goto LABEL_91;
            }

            return 6;
          }
        }

        return v51;
      case 6u:
        if (ot::Tlv::IsExtended(v46))
        {
          return 6;
        }

        else
        {
          v51 = ot::Message::Read<ot::NetworkDiagnostic::LeaderDataTlv>(v54, v50, v41);
          if (!v51)
          {
            if (ot::Mle::LeaderDataTlv::IsValid(v41))
            {
              ot::AsCoreType<otLeaderData>((v52 + 8));
              ot::Mle::LeaderDataTlv::Get(v41, v8);
              goto LABEL_91;
            }

            return 6;
          }
        }

        return v51;
      case 7u:
        if (Length <= 0xFEu)
        {
          v52[8] = Length;
          ot::Message::ReadBytes(v54, v48, v52 + 9, Length);
          goto LABEL_91;
        }

        return 6;
      case 8u:
        Array = ot::GetArrayLength<otIp6Address,(unsigned short)15>();
        ot::AsCoreTypePtr<otIp6Address>();
        v39 = v9;
        v38 = v52 + 8;
        if (Length % 16)
        {
          return 6;
        }

        else
        {
          *v38 = 0;
          while (1)
          {
            v24 = 0;
            if (Length)
            {
              v24 = *v38 < Array;
            }

            if (!v24)
            {
              goto LABEL_91;
            }

            v51 = ot::Message::Read<ot::Ip6::Address>(v54, v48, v39);
            if (v51)
            {
              break;
            }

            ++*v38;
            v39 += 16;
            v48 += 16;
            Length -= 16;
          }
        }

        return v51;
      case 9u:
        v51 = ot::Message::Read<ot::NetworkDiagnostic::MacCountersTlv>(v54, v50, v37);
        if (!v51)
        {
          if (ot::NetworkDiagnostic::MacCountersTlv::IsValid(v37))
          {
            ot::NetworkDiagnostic::ParseMacCounters(v37, v52 + 2);
            goto LABEL_91;
          }

          return 6;
        }

        return v51;
      case 0xEu:
        v51 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)14,unsigned char>>(v54, v50, v52 + 8, v4, v5);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 0xFu:
        v51 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(v54, v50, v52 + 8);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 0x10u:
        v35 = ot::GetArrayLength<otNetworkDiagChildEntry,(unsigned short)63>();
        v34 = v52 + 10;
        v33 = v52 + 8;
        if (Length % 3uLL)
        {
          return 6;
        }

        else
        {
          *v33 = 0;
          while (1)
          {
            v23 = 0;
            if (Length)
            {
              v23 = *v33 < v35;
            }

            if (!v23)
            {
              goto LABEL_91;
            }

            v51 = ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(v54, v48, v32);
            if (v51)
            {
              break;
            }

            Timeout = ot::NetworkDiagnostic::ChildTableEntry::GetTimeout(v32, v10);
            *v34 = *v34 & 0xFFE0 | Timeout & 0x1F;
            LinkQuality = ot::NetworkDiagnostic::ChildTableEntry::GetLinkQuality(v32, v12);
            *v34 = *v34 & 0xFF9F | (32 * (LinkQuality & 3));
            ChildId = ot::NetworkDiagnostic::ChildTableEntry::GetChildId(v32, v14);
            *v34 = *v34 & 0x7F | ((ChildId & 0x1FF) << 7);
            Mode = ot::NetworkDiagnostic::ChildTableEntry::GetMode(v32);
            ot::Mle::DeviceMode::Get(&Mode, v34 + 2);
            ++*v33;
            v34 += 4;
            Length -= 3;
            v48 += 3;
          }
        }

        return v51;
      case 0x11u:
        v22 = Length;
        v16 = ot::GetArrayLength<unsigned char,(unsigned short)254>();
        v52[8] = ot::Min<unsigned short>(v22, v16);
        ot::Message::ReadBytes(v54, v48, v52 + 9, v52[8]);
        goto LABEL_91;
      case 0x13u:
        v51 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(v54, v50, v52 + 8);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 0x17u:
        v21 = v54;
        v20 = v50;
        ot::AsCoreType<otExtAddress>((v52 + 8));
        v51 = ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(v21, v20, v17);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 0x18u:
        v51 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(v54, v50, v52 + 8);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 0x19u:
        v51 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(v54, v50, v52 + 8, v4, v5);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 0x1Au:
        v51 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(v54, v50, v52 + 8, v4, v5);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 0x1Bu:
        v51 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(v54, v50, v52 + 8, v4, v5);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 0x1Cu:
        v51 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(v54, v50, v52 + 8, v4, v5);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      case 0x22u:
        v51 = ot::Message::Read<ot::NetworkDiagnostic::MleCountersTlv>(v54, v50, v36);
        if (v51)
        {
          return v51;
        }

        if (!ot::NetworkDiagnostic::MleCountersTlv::IsValid(v36))
        {
          return 6;
        }

        ot::NetworkDiagnostic::MleCountersTlv::Read(v36, (v52 + 8));
LABEL_91:
        v18 = ot::Tlv::GetSize(v46);
        v50 += v18;
        if ((v49 & 1) == 0)
        {
          *v52 = ot::NetworkDiagnostic::Tlv::GetType(v46);
          *v53 = v50;
          return 0;
        }

        break;
      case 0x23u:
        v51 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(v54, v50, v52 + 8, v4, v5);
        if (!v51)
        {
          goto LABEL_91;
        }

        return v51;
      default:
        v49 = 1;
        goto LABEL_91;
    }
  }
}

uint64_t ot::Message::Read<ot::ExtendedTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::ExtendedTlv>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadTlvValue(a1, a2, a3, 8);
}

{
  return ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned short>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, unsigned __int8 a5)
{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3, a4, a5);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned int>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(a1, a2, a3);
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ConnectivityTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xCu);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ConnectivityTlv>(a1, a2, a3);
}

BOOL ot::Mle::ConnectivityTlv::IsValid(ot::Mle::ConnectivityTlv *this)
{
  v3 = 1;
  if (!ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(this))
  {
    return ot::Tlv::GetLength(this) == 7;
  }

  return v3;
}

{
  return ot::Mle::ConnectivityTlv::IsValid(this);
}

uint64_t ot::NetworkDiagnostic::ConnectivityTlv::GetConnectivity(ot::Mle::ConnectivityTlv *a1, uint64_t a2)
{
  *a2 = ot::Mle::ConnectivityTlv::GetParentPriority(a1);
  *(a2 + 1) = ot::Mle::ConnectivityTlv::GetLinkQuality3(a1);
  *(a2 + 2) = ot::Mle::ConnectivityTlv::GetLinkQuality2(a1);
  *(a2 + 3) = ot::Mle::ConnectivityTlv::GetLinkQuality1(a1);
  *(a2 + 4) = ot::Mle::ConnectivityTlv::GetLeaderCost(a1);
  *(a2 + 5) = ot::Mle::ConnectivityTlv::GetIdSequence(a1);
  *(a2 + 6) = ot::Mle::ConnectivityTlv::GetActiveRouters(a1);
  *(a2 + 8) = ot::Mle::ConnectivityTlv::GetSedBufferSize(a1);
  result = ot::Mle::ConnectivityTlv::GetSedDatagramCount(a1);
  *(a2 + 10) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::ConnectivityTlv::GetConnectivity(a1, a2);
}

uint64_t ot::NetworkDiagnostic::ParseRoute(ot::Mle::RouteTlv *a1, _BYTE *a2)
{
  v4 = 0;
  for (i = 0; i <= 0x3Eu; ++i)
  {
    if (ot::Mle::RouteTlv::IsRouterIdSet(a1, i))
    {
      a2[2 * v4 + 2] = i;
      a2[2 * v4 + 3] = a2[2 * v4 + 3] & 0xF | (16 * (ot::Mle::RouteTlv::GetRouteCost(a1, v4) & 0xF));
      a2[2 * v4 + 3] = a2[2 * v4 + 3] & 0xF3 | (4 * (ot::Mle::RouteTlv::GetLinkQualityIn(a1, v4) & 3));
      a2[2 * v4 + 3] = a2[2 * v4 + 3] & 0xFC | ot::Mle::RouteTlv::GetLinkQualityOut(a1, v4) & 3;
      ++v4;
    }
  }

  a2[1] = v4;
  result = ot::Mle::RouteTlv::GetRouterIdSequence(a1);
  *a2 = result;
  return result;
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::LeaderDataTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xAu);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::LeaderDataTlv>(a1, a2, a3);
}

void ot::AsCoreType<otLeaderData>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otLeaderData>(a1);
}

uint64_t ot::GetArrayLength<otIp6Address,(unsigned short)15>()
{
  return 15;
}

{
  return ot::GetArrayLength<otIp6Address,(unsigned short)15>();
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::MacCountersTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x26u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::MacCountersTlv>(a1, a2, a3);
}

BOOL ot::NetworkDiagnostic::MacCountersTlv::IsValid(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::Tlv::GetLength(this) >= 0x24uLL;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::IsValid(this);
}

uint64_t ot::NetworkDiagnostic::ParseMacCounters(ot::NetworkDiagnostic::MacCountersTlv *a1, _DWORD *a2)
{
  *a2 = ot::NetworkDiagnostic::MacCountersTlv::GetIfInUnknownProtos(a1, a2);
  a2[1] = ot::NetworkDiagnostic::MacCountersTlv::GetIfInErrors(a1, v2);
  a2[2] = ot::NetworkDiagnostic::MacCountersTlv::GetIfOutErrors(a1, v3);
  a2[3] = ot::NetworkDiagnostic::MacCountersTlv::GetIfInUcastPkts(a1, v4);
  a2[4] = ot::NetworkDiagnostic::MacCountersTlv::GetIfInBroadcastPkts(a1, v5);
  a2[5] = ot::NetworkDiagnostic::MacCountersTlv::GetIfInDiscards(a1, v6);
  a2[6] = ot::NetworkDiagnostic::MacCountersTlv::GetIfOutUcastPkts(a1, v7);
  a2[7] = ot::NetworkDiagnostic::MacCountersTlv::GetIfOutBroadcastPkts(a1, v8);
  result = ot::NetworkDiagnostic::MacCountersTlv::GetIfOutDiscards(a1, v9);
  a2[8] = result;
  return result;
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::MleCountersTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x44u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::MleCountersTlv>(a1, a2, a3);
}

BOOL ot::NetworkDiagnostic::MleCountersTlv::IsValid(ot::NetworkDiagnostic::MleCountersTlv *this)
{
  return ot::Tlv::GetLength(this) >= 0x42uLL;
}

{
  return ot::NetworkDiagnostic::MleCountersTlv::IsValid(this);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)14,unsigned char>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, unsigned __int8 a5)
{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3, a4, a5);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)14,unsigned char>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned short>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(a1, a2, a3);
}

uint64_t ot::GetArrayLength<otNetworkDiagChildEntry,(unsigned short)63>()
{
  return 63;
}

{
  return ot::GetArrayLength<otNetworkDiagChildEntry,(unsigned short)63>();
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 3u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(a1, a2, a3);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetTimeout(ot::NetworkDiagnostic::ChildTableEntry *this, unsigned __int16 a2)
{
  return (ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this, a2) & 0xF800) >> 11;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetTimeout(this, a2);
}

uint64_t ot::GetArrayLength<unsigned char,(unsigned short)254>()
{
  return 254;
}

{
  return ot::GetArrayLength<unsigned char,(unsigned short)254>();
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned int>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadTlvValue(a1, a2, a3, 8);
}

{
  return ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned short>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x20u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x20u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x10u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x60u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x40u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(ot::NetworkDiagnostic::ChildTableEntry *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *this = result;
  return result;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(this, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AnswerInfo::AnswerInfo(uint64_t this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t ot::Mle::RouteTlv::GetRouteCost(ot::Mle::RouteTlv *this, unsigned __int8 a2)
{
  return *(this + a2 + 11) & 0xF;
}

{
  return ot::Mle::RouteTlv::GetRouteCost(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInUnknownProtos(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 2), a2);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInUnknownProtos(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInErrors(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 6), a2);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInErrors(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfOutErrors(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 10), a2);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfOutErrors(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInUcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 14), a2);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInUcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInBroadcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 18), a2);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInBroadcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInDiscards(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 22), a2);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInDiscards(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfOutUcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 26), a2);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfOutUcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfOutBroadcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 30), a2);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfOutBroadcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfOutDiscards(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 34), a2);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfOutDiscards(this, a2);
}

uint64_t ot::ClearAllBytes<ot::NetworkDiagnostic::ChildTableEntry>(uint64_t result)
{
  *result = 0;
  *(result + 2) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::NetworkDiagnostic::ChildTableEntry>(result);
}

uint64_t ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(a1, a2, a3, a4);
}

uint64_t ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(a1, a2, a3, a4);
}

ot::PanIdQueryServer *ot::PanIdQueryServer::PanIdQueryServer(ot::PanIdQueryServer *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 4) = 0;
  *(this + 10) = -1;
  ot::TimerMilliIn<ot::PanIdQueryServer,&ot::PanIdQueryServer::HandleTimer>::TimerMilliIn((this + 24), a2);
  return this;
}

{
  ot::PanIdQueryServer::PanIdQueryServer(this, a2);
  return this;
}

void ot::PanIdQueryServer::HandleTimer(ot::PanIdQueryServer *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::ActiveScan(v1, *(this + 4), 0, ot::PanIdQueryServer::HandleScanResult, this);
  IgnoreError();
  *(this + 4) = 0;
}

ot::TimerMilli *ot::TimerMilliIn<ot::PanIdQueryServer,&ot::PanIdQueryServer::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::PanIdQueryServer,&ot::PanIdQueryServer::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::PanIdQueryServer,&ot::PanIdQueryServer::HandleTimer>::HandleTimer);
  return a1;
}

void ot::PanIdQueryServer::HandleTmf<(ot::Uri)27>(ot::InstanceLocator *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v15 = a1;
  v17 = 0;
  v16 = 0;
  if (ot::Coap::Message::IsPostRequest(a2) && !ot::MeshCoP::ChannelMaskTlv::FindIn(v19, &v16, v3) && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v19, &v17))
  {
    *(v15 + 4) = v16;
    ot::Ip6::MessageInfo::GetPeerAddr(v18);
    v4 = v15;
    *v15 = *v5;
    *(v4 + 10) = v17;
    ot::TimerMilli::Start((v4 + 24), 0x3E8u);
    if (ot::Coap::Message::IsConfirmable(v19))
    {
      ot::Ip6::MessageInfo::GetSockAddr(v18);
      if (!ot::Ip6::Address::IsMulticast(v6))
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v15);
        if (!ot::Coap::CoapBase::SendEmptyAck(v7, v19, v18))
        {
          v8 = ot::UriToString<(ot::Uri)27>();
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoP", "Sent %s ack", v9, v10, v11, v12, v13, v14, v8);
        }
      }
    }
  }
}

void ot::PanIdQueryServer::HandleScanResult(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 50) == *(result + 20))
    {
      *(result + 16) |= 1 << *(a2 + 54);
    }
  }

  else if (*(result + 16))
  {
    ot::PanIdQueryServer::SendConflict(result);
  }
}

void ot::PanIdQueryServer::SendConflict(ot::PanIdQueryServer *this)
{
  v15 = this;
  v11 = this;
  v14 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v13, Instance);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v11);
  v12 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v2, 0x19u);
  if (v12)
  {
    v14 = ot::MeshCoP::ChannelMaskTlv::AppendTo(v12, *(v11 + 4));
    if (!v14)
    {
      v14 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v12, *(v11 + 10));
      if (!v14)
      {
        ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v13, v11);
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v11);
        v14 = ot::Coap::CoapBase::SendMessage(v3, v12, v13);
        if (!v14)
        {
          v4 = ot::UriToString<(ot::Uri)25>();
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoP", "Sent %s", v5, v6, v7, v8, v9, v10, v4);
        }
      }
    }
  }

  else
  {
    v14 = 3;
  }

  if (v14 && v12)
  {
    ot::Message::Free(v12);
  }

  ot::Logger::LogOnError("MeshCoP", v14, "send panid conflict");
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryServer>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::PanIdQueryServer>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryServer>(a1);
}

uint64_t ot::Instance::Get<ot::PanIdQueryServer>(uint64_t a1)
{
  return a1 + 154624;
}

{
  return ot::Instance::Get<ot::PanIdQueryServer>(a1);
}

ot::RouterTable *ot::RouterTable::RouterTable(ot::RouterTable *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::Array(this + 8, a2);
  ot::TaskletIn<ot::RouterTable,&ot::RouterTable::HandleTableChanged>::TaskletIn((this + 4624), a2);
  ot::RouterTable::RouterIdMap::RouterIdMap((this + 4640));
  v2 = ot::Time::Time((this + 4704), 0);
  *(this + 4708) = ot::Random::NonCrypto::GetUint8(v2);
  ot::RouterTable::Clear(this);
  return this;
}

{
  ot::RouterTable::RouterTable(this, a2);
  return this;
}

uint64_t ot::RouterTable::HandleTableChanged(ot::RouterTable *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::RouterTable::LogRouteTable(this, a2, a3, a4, a5, a6, a7, a8);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(this);
  ot::Utils::HistoryTracker::RecordRouterTableChange(v8);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  return ot::Mle::MleRouter::UpdateAdvertiseInterval(v9);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::Array(uint64_t a1, ot::Instance *a2)
{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::Array(a1, a2);
  return a1;
}

{
  v4 = a1;
  do
  {
    ot::Parent::Parent(v4);
    v4 = (v4 + 144);
  }

  while (v4 != (a1 + 4608));
  *(a1 + 4608) = 0;
  for (i = a1; i != (a1 + 4608); i = (i + 144))
  {
    ot::Router::Init(i, a2);
  }

  return a1;
}

ot::InstanceLocator *ot::TaskletIn<ot::RouterTable,&ot::RouterTable::HandleTableChanged>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::RouterTable,&ot::RouterTable::HandleTableChanged>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::RouterTable,&ot::RouterTable::HandleTableChanged>::HandleTasklet);
  return a1;
}

ot::RouterTable::RouterIdMap *ot::RouterTable::RouterIdMap::RouterIdMap(ot::RouterTable::RouterIdMap *this)
{
  ot::RouterTable::RouterIdMap::RouterIdMap(this);
  return this;
}

{
  ot::Clearable<ot::RouterTable::RouterIdMap>::Clear(this);
  return this;
}

void ot::RouterTable::Clear(ot::RouterTable *this)
{
  ot::RouterTable::ClearNeighbors(this);
  ot::Clearable<ot::RouterTable::RouterIdMap>::Clear(this + 4640);
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::Clear(this + 8);
  ot::RouterTable::SignalTableChanged(this);
}

unint64_t ot::RouterTable::ClearNeighbors(ot::RouterTable *this)
{
  v7 = this + 8;
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v6 = v1;
  result = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(v7);
  v5 = result;
  while (v6 != v5)
  {
    if (ot::Neighbor::IsStateValid(v6))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
      ot::NeighborTable::Signal(v3, 4u, v6);
      ot::RouterTable::SignalTableChanged(this);
    }

    result = ot::Neighbor::SetState(v6, 0);
    v6 = (v6 + 144);
  }

  return result;
}

void *ot::Clearable<ot::RouterTable::RouterIdMap>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::RouterTable::RouterIdMap>(a1);
}

{
  return ot::Clearable<ot::RouterTable::RouterIdMap>::Clear(a1);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::Clear(uint64_t result)
{
  *(result + 4608) = 0;
  return result;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::Clear(result);
}

BOOL ot::RouterTable::IsRouteTlvIdSequenceMoreRecent(ot::RouterTable *this, const ot::Mle::RouteTlv *a2)
{
  v6 = 1;
  if (ot::RouterTable::GetActiveRouterCount(this))
  {
    RouterIdSequence = ot::Mle::RouteTlv::GetRouterIdSequence(a2);
    v2 = ot::RouterTable::GetRouterIdSequence(this);
    return ot::SerialNumber::IsGreater<unsigned char>(RouterIdSequence, v2);
  }

  return v6;
}

ot::Router *ot::RouterTable::AddRouter(ot::RouterTable *this, unsigned __int8 a2)
{
  v16 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::PushBack(this + 8);
  if (v16)
  {
    ot::Router::Clear(v16);
    v2 = ot::Mle::Rloc16FromRouterId(a2);
    ot::Neighbor::SetRloc16(v16, v2);
    ot::Router::SetNextHopToInvalid(v16);
    v3 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::IndexOf(this + 8, v16);
    ot::RouterTable::RouterIdMap::SetIndex(this + 4640, a2, v3);
    ot::RouterTable::SignalTableChanged(this);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Rloc16 = ot::Mle::Mle::GetRloc16(v4);
    if (Rloc16 == ot::Mle::Rloc16FromRouterId(a2))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("RouterTable", "Updating Ext Address for routerId = %d", v5, v6, v7, v8, v9, v10, a2);
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v11);
      ot::Neighbor::SetExtAddress(v16, ExtAddress);
    }
  }

  return v16;
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::PushBack(uint64_t a1)
{
  if (ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsFull(a1))
  {
    return 0;
  }

  v1 = (*(a1 + 4608))++;
  return a1 + 144 * v1;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::PushBack(a1);
}

uint64_t ot::RouterTable::RouterIdMap::SetIndex(uint64_t this, unsigned __int8 a2, char a3)
{
  *(this + a2) = a3 | 0x80;
  return this;
}

{
  return ot::RouterTable::RouterIdMap::SetIndex(this, a2, a3);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::IndexOf(uint64_t a1, uint64_t a2)
{
  return ((a2 - a1) / 144);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IndexOf(a1, a2);
}

void ot::RouterTable::RemoveRouter(ot::RouterTable *this, ot::Router *a2)
{
  if (ot::Neighbor::IsStateValid(a2))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    ot::NeighborTable::Signal(v2, 4u, a2);
  }

  RouterId = ot::Neighbor::GetRouterId(a2);
  ot::RouterTable::RouterIdMap::Release(this + 4640, RouterId);
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::Remove(this + 8, a2);
  v4 = ot::Neighbor::GetRouterId(a2);
  if (ot::RouterTable::IsAllocated(this, v4))
  {
    v6 = ot::Neighbor::GetRouterId(a2);
    v5 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::IndexOf(this + 8, a2);
    ot::RouterTable::RouterIdMap::SetIndex(this + 4640, v6, v5);
  }

  ot::RouterTable::SignalTableChanged(this);
}

uint64_t ot::RouterTable::RouterIdMap::Release(uint64_t this, unsigned __int8 a2)
{
  *(this + a2) = 100;
  return this;
}

{
  return ot::RouterTable::RouterIdMap::Release(this, a2);
}

void *ot::Array<ot::Router,(unsigned short)32,unsigned char>::Remove(uint64_t a1, void *a2)
{
  result = ot::Array<ot::Router,(unsigned short)32,unsigned char>::PopBack(a1);
  if (result != a2)
  {
    return memcpy(a2, result, 0x8EuLL);
  }

  return result;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::Remove(a1, a2);
}

ot::Router *ot::RouterTable::Allocate(ot::RouterTable *this)
{
  v6 = 0;
  v5 = 0;
  v4 = 63;
  if (!ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsFull(this + 8))
  {
    for (i = 0; i <= 0x3Eu; ++i)
    {
      if (ot::RouterTable::RouterIdMap::CanAllocate((this + 4640), i) && !ot::Random::NonCrypto::GetUint8InRange(0, ++v5))
      {
        v4 = i;
      }
    }

    if (v4 != 63)
    {
      v6 = ot::RouterTable::Allocate(this, v4);
      if (!v6)
      {
        __assert_rtn("Allocate", "router_table.cpp", 174, "router != nullptr");
      }
    }
  }

  return v6;
}

BOOL ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 4608);
  return v2 == ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetMaxSize();
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsFull(a1);
}

BOOL ot::RouterTable::RouterIdMap::CanAllocate(ot::RouterTable::RouterIdMap *this, unsigned __int8 a2)
{
  return *(this + a2) == 0;
}

{
  return ot::RouterTable::RouterIdMap::CanAllocate(this, a2);
}

ot::Router *ot::RouterTable::Allocate(ot::RouterTable *this, unsigned __int8 a2)
{
  v14 = 0;
  if (a2 <= 0x3Eu && ot::RouterTable::RouterIdMap::CanAllocate((this + 4640), a2))
  {
    v2 = ot::RouterTable::AddRouter(this, a2);
    v14 = v2;
    if (v2)
    {
      Now = ot::TimerMilli::GetNow(v2);
      Heard = ot::Neighbor::SetLastHeard(v14, Now);
      ++*(this + 4708);
      *(this + 1176) = ot::TimerMilli::GetNow(Heard);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::ResetAdvertiseInterval(v4);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("RouterTable", "Allocate router id %d", v5, v6, v7, v8, v9, v10, a2);
    }
  }

  return v14;
}

uint64_t ot::RouterTable::Release(ot::RouterTable *this, unsigned __int8 a2)
{
  v20 = 0;
  if (a2 > 0x3Eu)
  {
    __assert_rtn("Release", "router_table.cpp", 206, "aRouterId <= Mle::kMaxRouterId");
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsLeader(v2))
  {
    ot::RouterTable::FindRouterById(this, a2);
    if (v3)
    {
      ot::RouterTable::RemoveRouter(this, v3);
      ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
      v19 = v4;
      NextHop = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
      v18 = NextHop;
      while (v19 != v18)
      {
        NextHop = ot::Router::GetNextHop(v19);
        if (NextHop == a2)
        {
          NextHop = ot::Router::SetNextHopToInvalid(v19);
        }

        v19 = (v19 + 144);
      }

      ++*(this + 4708);
      *(this + 1176) = ot::TimerMilli::GetNow(NextHop);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::RemoveEntriesForRouterId(v6, a2);
      v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      v7 = ot::Mle::Rloc16FromRouterId(a2);
      ot::NetworkData::Leader::RemoveBorderRouter(v16, v7, 1u);
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::ResetAdvertiseInterval(v8);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("RouterTable", "Release router id %d", v9, v10, v11, v12, v13, v14, a2);
    }

    else
    {
      return 23;
    }
  }

  else
  {
    return 13;
  }

  return v20;
}

ot::AddressResolver::CacheEntry **ot::RouterTable::RemoveRouterLink(ot::RouterTable *this, ot::Router *a2)
{
  if (ot::Router::GetLinkQualityOut(a2))
  {
    v2 = ot::Router::SetLinkQualityOut(a2, 0);
    Now = ot::TimerMilli::GetNow(v2);
    ot::Neighbor::SetLastHeard(a2, Now);
    ot::RouterTable::SignalTableChanged(this);
  }

  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v12 = v3;
  v11 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
  while (v12 != v11)
  {
    NextHop = ot::Router::GetNextHop(v12);
    if (NextHop == ot::Neighbor::GetRouterId(a2))
    {
      ot::Router::SetNextHopToInvalid(v12);
      ot::RouterTable::SignalTableChanged(this);
      if (ot::RouterTable::GetLinkCost(this, v12) >= 16)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        ot::Mle::MleRouter::ResetAdvertiseInterval(v4);
      }
    }

    v12 = (v12 + 144);
  }

  result = ot::Router::GetNextHop(a2);
  if (result == 63)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::ResetAdvertiseInterval(v6);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
    RouterId = ot::Neighbor::GetRouterId(a2);
    return ot::AddressResolver::RemoveEntriesForRouterId(v8, RouterId);
  }

  return result;
}

uint64_t ot::Router::GetLinkQualityOut(ot::Router *this)
{
  return *(this + 141) & 3;
}

{
  return ot::Router::GetLinkQualityOut(this);
}

uint64_t ot::RouterTable::GetLinkCost(ot::RouterTable *this, const ot::Router *a2)
{
  v6 = 16;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  Rloc16 = ot::Neighbor::GetRloc16(a2);
  if (!ot::Mle::Mle::HasRloc16(v5, Rloc16) && ot::Neighbor::IsStateValid(a2))
  {
    TwoWayLinkQuality = ot::Router::GetTwoWayLinkQuality(a2);
    return ot::CostForLinkQuality(TwoWayLinkQuality);
  }

  return v6;
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::FindMatching<ot::Neighbor::AddressMatcher>(uint64_t a1, unsigned __int8 *a2)
{
  v7 = 0;
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(a1);
  while (v5 != v4)
  {
    if (ot::Neighbor::Matches(v5, a2))
    {
      return v5;
    }

    v5 += 144;
  }

  return v7;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::FindMatching<ot::Neighbor::AddressMatcher>(a1, a2);
}

uint64_t ot::RouterTable::FindNeighbor(ot::RouterTable *this, unsigned __int16 a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (!ot::Mle::Mle::HasRloc16(v2, v8))
  {
    ot::Neighbor::AddressMatcher::AddressMatcher(v6, v8, 0);
    ot::RouterTable::FindRouter(this, v6);
    return v3;
  }

  return v7;
}

void ot::RouterTable::FindNeighbor(ot::RouterTable *this, const ot::Mac::ExtAddress *a2)
{
  v5 = this;
  v4 = a2;
  ot::Neighbor::AddressMatcher::AddressMatcher(v3, a2, 0);
  ot::RouterTable::FindRouter(this, v3);
}

void ot::RouterTable::FindNeighbor(ot::RouterTable *this, const ot::Mac::Address *a2)
{
  v5 = this;
  v4 = a2;
  ot::Neighbor::AddressMatcher::AddressMatcher(v3, a2, 0);
  ot::RouterTable::FindRouter(this, v3);
}

uint64_t ot::RouterTable::FindRouterById(ot::RouterTable *this, unsigned __int8 a2)
{
  v5 = 0;
  if (a2 <= 0x3Eu && ot::RouterTable::IsAllocated(this, a2))
  {
    Index = ot::RouterTable::RouterIdMap::GetIndex((this + 4640), a2);
    return ot::Array<ot::Router,(unsigned short)32,unsigned char>::operator[](this + 8, Index);
  }

  return v5;
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::operator[](uint64_t a1, unsigned __int8 a2)
{
  return a1 + 144 * a2;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::operator[](a1, a2);
}

uint64_t ot::RouterTable::RouterIdMap::GetIndex(ot::RouterTable::RouterIdMap *this, unsigned __int8 a2)
{
  return *(this + a2) & 0x7F;
}

{
  return ot::RouterTable::RouterIdMap::GetIndex(this, a2);
}

void ot::RouterTable::FindRouter(ot::RouterTable *this, const ot::Mac::ExtAddress *a2)
{
  v5 = this;
  v4 = a2;
  ot::Neighbor::AddressMatcher::AddressMatcher(v3, a2, 7);
  ot::RouterTable::FindRouter(this, v3);
}

uint64_t ot::RouterTable::GetRouterInfo(ot::RouterTable *this, unsigned __int16 a2, ot::Router::Info *a3)
{
  v7 = 0;
  if (a2 > 0x3Eu)
  {
    if (!ot::Mle::IsRouterRloc16(a2, a2))
    {
      return 7;
    }

    v6 = ot::Mle::RouterIdFromRloc16(a2);
    if (v6 > 0x3Eu)
    {
      return 7;
    }

    ot::RouterTable::FindRouterById(this, v6);
  }

  else
  {
    ot::RouterTable::FindRouterById(this, a2);
  }

  if (v3)
  {
    ot::Router::Info::SetFrom(a3, v3);
  }

  else
  {
    return 23;
  }

  return v7;
}

uint64_t ot::RouterTable::GetLeader(ot::RouterTable *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  LeaderId = ot::Mle::Mle::GetLeaderId(v1);
  return ot::RouterTable::FindRouterById(this, LeaderId);
}

uint64_t ot::RouterTable::GetLeaderAge(ot::RouterTable *this)
{
  v7 = this;
  IsEmpty = ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsEmpty(this + 8);
  if (IsEmpty)
  {
    return -1;
  }

  else
  {
    Now = ot::TimerMilli::GetNow(IsEmpty);
    v2 = ot::Time::operator-(&Now, this + 1176);
    return ot::Time::MsecToSec(v2);
  }
}

BOOL ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsEmpty(uint64_t a1)
{
  return *(a1 + 4608) == 0;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsEmpty(a1);
}

uint64_t ot::RouterTable::GetNeighborCount(uint64_t a1, unsigned __int8 a2)
{
  v7 = 0;
  v6 = a1 + 8;
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(v6);
  while (v5 != v4)
  {
    if (ot::Neighbor::IsStateValid(v5) && ot::Neighbor::GetLinkQualityIn(v5) >= a2)
    {
      ++v7;
    }

    v5 = (v5 + 144);
  }

  return v7;
}

uint64_t ot::RouterTable::GetLinkCost(ot::RouterTable *this, unsigned __int8 a2)
{
  v5 = 16;
  RouterById = ot::RouterTable::FindRouterById(this, a2);
  if (RouterById)
  {
    return ot::RouterTable::GetLinkCost(this, RouterById);
  }

  return v5;
}

uint64_t ot::RouterTable::GetPathCost(ot::RouterTable *this, unsigned __int16 a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  ot::RouterTable::GetNextHopAndPathCost(this, a2, &v3, &v4);
  return v4;
}

void ot::RouterTable::GetNextHopAndPathCost(ot::RouterTable *this, unsigned __int16 a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  *a4 = 16;
  *a3 = -2;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsAttached(v4))
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::HasRloc16(v5, a2))
    {
      *a4 = 0;
      *a3 = a2;
      return;
    }

    v6 = ot::Mle::RouterIdFromRloc16(a2);
    RouterById = ot::RouterTable::FindRouterById(this, v6);
    if (RouterById)
    {
      NextHopOf = ot::RouterTable::FindNextHopOf(this, RouterById);
    }

    else
    {
      NextHopOf = 0;
    }

    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::IsChild(v7))
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      Parent = ot::Mle::Mle::GetParent(v8);
      if (ot::Neighbor::IsStateValid(Parent))
      {
        *a3 = ot::Neighbor::GetRloc16(Parent);
      }

      Rloc16 = ot::Neighbor::GetRloc16(Parent);
      v21 = ot::Mle::RouterIdMatch(a2, Rloc16);
      if (v21 || NextHopOf)
      {
        LinkQualityIn = ot::Neighbor::GetLinkQualityIn(Parent);
        *a4 = ot::CostForLinkQuality(LinkQualityIn);
        if (!v21)
        {
          *a4 += ot::Router::GetCost(RouterById);
        }

LABEL_24:
        if (ot::Mle::IsChildRloc16(a2, v11))
        {
          ++*a4;
        }
      }
    }

    else
    {
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (!ot::Mle::Mle::HasMatchingRouterIdWith(v12, a2, v13))
      {
        if (!RouterById)
        {
          return;
        }

        *a4 = ot::RouterTable::GetLinkCost(this, RouterById);
        if (*a4 < 0x10u)
        {
          *a3 = ot::Neighbor::GetRloc16(RouterById);
        }

        if (NextHopOf)
        {
          Cost = ot::Router::GetCost(RouterById);
          v20 = Cost + ot::RouterTable::GetLinkCost(this, NextHopOf);
          if (v20 < *a4)
          {
            *a4 = v20;
            *a3 = ot::Neighbor::GetRloc16(NextHopOf);
          }
        }

        goto LABEL_24;
      }

      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ot::ChildTable::FindChild(v14, a2, 5);
      if (v15)
      {
        *a3 = a2;
        v16 = ot::Neighbor::GetLinkQualityIn(v15);
        *a4 = ot::CostForLinkQuality(v16);
      }
    }
  }
}

uint64_t ot::RouterTable::GetPathCostToLeader(ot::RouterTable *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  LeaderRloc16 = ot::Mle::Mle::GetLeaderRloc16(v1);
  return ot::RouterTable::GetPathCost(this, LeaderRloc16);
}

uint64_t ot::Router::GetCost(ot::Router *this)
{
  return (*(this + 141) >> 2) & 0xF;
}

{
  return ot::Router::GetCost(this);
}

uint64_t ot::RouterTable::GetNextHop(ot::RouterTable *this, unsigned __int16 a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  ot::RouterTable::GetNextHopAndPathCost(this, a2, &v3, &v4);
  return v3;
}

void ot::RouterTable::UpdateRouterIdSet(ot::RouterTable *this, char a2, const ot::Mle::RouterIdSet *a3)
{
  v10 = 0;
  *(this + 4708) = a2;
  *(this + 1176) = ot::TimerMilli::GetNow(this);
  for (i = 0; i <= 0x3Eu; ++i)
  {
    IsAllocated = ot::RouterTable::IsAllocated(this, i);
    if (IsAllocated != ot::Mle::RouterIdSet::Contains(a3, i))
    {
      if (ot::RouterTable::IsAllocated(this, i))
      {
        ot::RouterTable::FindRouterById(this, i);
        v8 = v3;
        if (!v3)
        {
          __assert_rtn("UpdateRouterIdSet", "router_table.cpp", 539, "router != nullptr");
        }

        ot::Router::SetNextHopToInvalid(v3);
        ot::RouterTable::RemoveRouterLink(this, v8);
        ot::RouterTable::RemoveRouter(this, v8);
      }

      else
      {
        v10 = 1;
      }
    }
  }

  if (v10)
  {
    for (j = 0; j <= 0x3Eu; ++j)
    {
      if (!ot::RouterTable::IsAllocated(this, j) && ot::Mle::RouterIdSet::Contains(a3, j))
      {
        ot::RouterTable::AddRouter(this, j);
      }
    }

    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::ResetAdvertiseInterval(v4);
  }
}

void ot::RouterTable::UpdateRoutes(ot::RouterTable *this, const ot::Mle::RouteTlv *a2, unsigned __int8 a3)
{
  ot::RouterTable::FindRouterById(this, a3);
  v29 = v3;
  if (v3)
  {
    ot::Clearable<ot::Mle::RouterIdSet>::Clear(&v32);
    for (i = 0; i <= 0x3Eu; ++i)
    {
      v4 = ot::Mle::Rloc16FromRouterId(i);
      if (ot::RouterTable::GetPathCost(this, v4) < 16)
      {
        ot::Mle::RouterIdSet::Add(&v32, i);
      }
    }

    v26 = 0;
    v25 = 0;
    while (v26 <= 0x3Eu)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::MatchesRouterId(v5, v26))
      {
        if (ot::Mle::RouteTlv::IsRouterIdSet(a2, v26))
        {
          LinkQualityIn = ot::Mle::RouteTlv::GetLinkQualityIn(a2, v25);
          if (ot::Router::GetLinkQualityOut(v29) != LinkQualityIn)
          {
            ot::Router::SetLinkQualityOut(v29, LinkQualityIn);
            ot::RouterTable::SignalTableChanged(this);
          }
        }

        break;
      }

      v25 += ot::Mle::RouteTlv::IsRouterIdSet(a2, v26++);
    }

    LinkCost = ot::RouterTable::GetLinkCost(this, v29);
    v23 = 0;
    v22 = 0;
    while (v23 <= 0x3Eu)
    {
      if (ot::Mle::RouteTlv::IsRouterIdSet(a2, v23))
      {
        ot::RouterTable::FindRouterById(this, v23);
        v21 = v6;
        if (v6)
        {
          v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
          Rloc16 = ot::Neighbor::GetRloc16(v21);
          if (!ot::Mle::Mle::HasRloc16(v14, Rloc16) && v21 != v29)
          {
            ot::RouterTable::FindNextHopOf(this, v21);
            v20 = v8;
            RouteCost = ot::Mle::RouteTlv::GetRouteCost(a2, v22);
            if (RouteCost)
            {
              v13 = RouteCost;
            }

            else
            {
              v13 = 16;
            }

            if (v20 && v20 != v29)
            {
              Cost = ot::Router::GetCost(v21);
              if ((v13 + LinkCost) < (Cost + ot::RouterTable::GetLinkCost(this, v20)))
              {
                ot::Router::SetNextHopAndCost(v21, a3, v13);
                ot::RouterTable::SignalTableChanged(this);
              }
            }

            else if (v13 + LinkCost >= 16)
            {
              if (v20 == v29)
              {
                HopToInvalid = ot::Router::SetNextHopToInvalid(v21);
                Now = ot::TimerMilli::GetNow(HopToInvalid);
                ot::Neighbor::SetLastHeard(v21, Now);
                ot::RouterTable::SignalTableChanged(this);
              }
            }

            else if (ot::Router::SetNextHopAndCost(v21, a3, v13))
            {
              ot::RouterTable::SignalTableChanged(this);
            }
          }
        }
      }

      v22 += ot::Mle::RouteTlv::IsRouterIdSet(a2, v23++);
    }

    for (j = 0; j <= 0x3Eu; ++j)
    {
      v16 = ot::Mle::RouterIdSet::Contains(&v32, j);
      v10 = ot::Mle::Rloc16FromRouterId(j);
      if (ot::RouterTable::GetPathCost(this, v10) < 16 != v16)
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        ot::Mle::MleRouter::ResetAdvertiseInterval(v11);
        return;
      }
    }
  }
}

uint64_t ot::Mle::RouterIdSet::Add(ot::Mle::RouterIdSet *this, unsigned __int8 a2)
{
  result = ot::Mle::RouterIdSet::MaskFor(a2);
  *(this + a2 / 8) |= result;
  return result;
}

{
  return ot::Mle::RouterIdSet::Add(this, a2);
}

BOOL ot::Mle::Mle::MatchesRouterId(ot::Mle::Mle *this, unsigned __int16 a2)
{
  return ot::Mle::RouterIdFromRloc16(*(this + 72)) == a2;
}

{
  return ot::Mle::Mle::MatchesRouterId(this, a2);
}

BOOL ot::RouterTable::UpdateRoutesOnFed(_BOOL8 this, const ot::Mle::RouteTlv *a2, unsigned __int8 a3)
{
  v5 = this;
  v9 = 0;
  v8 = 0;
  while (v9 <= 0x3Eu)
  {
    if (ot::Mle::RouteTlv::IsRouterIdSet(a2, v9) && v9 != a3)
    {
      ot::RouterTable::FindRouterById(v5, v9);
      v7 = v3;
      if (v3)
      {
        RouteCost = ot::Mle::RouteTlv::GetRouteCost(a2, v8);
        if (RouteCost)
        {
          v4 = a3;
        }

        else
        {
          v4 = 63;
        }

        if (ot::Router::SetNextHopAndCost(v7, v4, RouteCost))
        {
          ot::RouterTable::SignalTableChanged(v5);
        }
      }
    }

    this = ot::Mle::RouteTlv::IsRouterIdSet(a2, v9);
    v8 += this;
    ++v9;
  }

  return this;
}

uint64_t ot::RouterTable::FillRouteTlv(ot::RouterTable *this, ot::Mle::RouteTlv *a2, const ot::Neighbor *a3)
{
  v19 = *(this + 4708);
  ot::RouterTable::RouterIdMap::GetAsRouterIdSet((this + 4640), v22);
  if (a3)
  {
    Rloc16 = ot::Neighbor::GetRloc16(a3);
    if (ot::Mle::IsRouterRloc16(Rloc16, v4))
    {
      Length = ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetLength(this + 8);
      if (Length > 0x14u)
      {
        for (i = 0; i <= 0x3Eu && Length > 0x14u; ++i)
        {
          v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
          if (!ot::Mle::Mle::MatchesRouterId(v5, i) && i != ot::Neighbor::GetRouterId(a3))
          {
            v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
            if (i != ot::Mle::Mle::GetLeaderId(v6) && ot::Mle::RouterIdSet::Contains(v22, i))
            {
              ot::Mle::RouterIdSet::Remove(v22, i);
              --Length;
            }
          }
        }

        v19 -= 64;
      }
    }
  }

  ot::Mle::RouteTlv::SetRouterIdSequence(a2, v19);
  ot::Mle::RouteTlv::SetRouterIdMask(a2, v22);
  v18 = 0;
  for (j = 0; j <= 0x3Eu; ++j)
  {
    if (ot::Mle::RouterIdSet::Contains(v22, j))
    {
      v14 = ot::Mle::Rloc16FromRouterId(j);
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::HasRloc16(v7, v14))
      {
        ot::Mle::RouteTlv::SetRouteData(a2, v18, 0, 0, 1);
      }

      else
      {
        RouterById = ot::RouterTable::FindRouterById(this, j);
        if (!RouterById)
        {
          __assert_rtn("FillRouteTlv", "router_table.cpp", 794, "router != nullptr");
        }

        PathCost = ot::RouterTable::GetPathCost(this, v14);
        if (PathCost >= 0x10u)
        {
          PathCost = 0;
        }

        LinkQualityIn = ot::Neighbor::GetLinkQualityIn(RouterById);
        LinkQualityOut = ot::Router::GetLinkQualityOut(RouterById);
        ot::Mle::RouteTlv::SetRouteData(a2, v18, LinkQualityIn, LinkQualityOut, PathCost);
      }

      ++v18;
    }
  }

  return ot::Mle::RouteTlv::SetRouteDataLength(a2, v18);
}

uint64_t ot::RouterTable::RouterIdMap::GetAsRouterIdSet(ot::RouterTable::RouterIdMap *this, ot::Mle::RouterIdSet *a2)
{
  result = ot::Clearable<ot::Mle::RouterIdSet>::Clear(a2);
  for (i = 0; i <= 0x3Eu; ++i)
  {
    result = ot::RouterTable::RouterIdMap::IsAllocated(this, i);
    if (result)
    {
      result = ot::Mle::RouterIdSet::Add(a2, i);
    }
  }

  return result;
}

uint64_t ot::Mle::RouteTlv::SetRouterIdSequence(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::Mle::RouteTlv::SetRouterIdSequence(this, a2);
}

uint64_t ot::Mle::RouteTlv::SetRouterIdMask(uint64_t this, const ot::Mle::RouterIdSet *a2)
{
  *(this + 3) = *a2;
  return this;
}

{
  return ot::Mle::RouteTlv::SetRouterIdMask(this, a2);
}

uint64_t ot::Mle::RouteTlv::SetRouteData(uint64_t result, unsigned __int8 a2, char a3, char a4, char a5)
{
  *(result + 11 + a2) = (16 * a3) & 0x30 | (a4 << 6) | a5 & 0xF;
  return result;
}

{
  return ot::Mle::RouteTlv::SetRouteData(result, a2, a3, a4, a5);
}

uint64_t ot::Mle::RouteTlv::SetRouteDataLength(ot::Mle::RouteTlv *this, char a2)
{
  return ot::Tlv::SetLength(this, a2 + 9);
}

{
  return ot::Mle::RouteTlv::SetRouteDataLength(this, a2);
}

uint64_t ot::RouterTable::HandleTimeTick(ot::RouterTable *this)
{
  ot::RouterTable::RouterIdMap::HandleTimeTick(this + 4640);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  result = ot::Mle::Mle::IsLeader(v1);
  if (result)
  {
    result = ot::RouterTable::GetLeaderAge(this);
    if (result >= 0xA)
    {
      ++*(this + 4708);
      result = ot::TimerMilli::GetNow(result);
      *(this + 1176) = result;
    }
  }

  return result;
}

BOOL ot::RouterTable::RouterIdMap::HandleTimeTick(_BOOL8 this)
{
  v1 = this;
  for (i = 0; i <= 0x3Eu; ++i)
  {
    this = ot::RouterTable::RouterIdMap::IsAllocated(v1, i);
    if (!this)
    {
      if (*(v1 + i))
      {
        --*(v1 + i);
      }
    }
  }

  return this;
}

void ot::RouterTable::LogRouteTable(ot::RouterTable *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("RouterTable", "Route table", a3, a4, a5, a6, a7, a8);
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v39 = v8;
  v38 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
  while (v39 != v38)
  {
    ot::String<(unsigned short)128>::String(v40);
    RouterId = ot::Neighbor::GetRouterId(v39);
    Rloc16 = ot::Neighbor::GetRloc16(v39);
    ot::StringWriter::Append(v40, "    %2d 0x%04x", RouterId, Rloc16);
    v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    v16 = ot::Neighbor::GetRloc16(v39);
    if (ot::Mle::Mle::HasRloc16(v36, v16))
    {
      ot::StringWriter::Append(v40, " - me");
    }

    else
    {
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::IsChild(v17) && (v34 = ot::Neighbor::GetRloc16(v39), v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), Parent = ot::Mle::Mle::GetParent(v18), v34 == ot::Neighbor::GetRloc16(Parent)))
      {
        ot::StringWriter::Append(v40, " - parent");
      }

      else
      {
        if (ot::Neighbor::IsStateValid(v39))
        {
          LinkQualityIn = ot::Neighbor::GetLinkQualityIn(v39);
          LinkQualityOut = ot::Router::GetLinkQualityOut(v39);
          LinkCost = ot::RouterTable::GetLinkCost(this, v39);
          ot::StringWriter::Append(v40, " - nbr{lq[i/o]:%d/%d cost:%d}", LinkQualityIn, LinkQualityOut, LinkCost);
        }

        if (ot::Router::GetNextHop(v39) != 63)
        {
          NextHop = ot::Router::GetNextHop(v39);
          Cost = ot::Router::GetCost(v39);
          ot::StringWriter::Append(v40, " - nexthop{%d cost:%d}", NextHop, Cost);
        }
      }
    }

    v30 = ot::Neighbor::GetRouterId(v39);
    v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (v30 == ot::Mle::Mle::GetLeaderId(v22))
    {
      ot::StringWriter::Append(v40, " - leader");
    }

    v23 = ot::String<(unsigned short)128>::AsCString(v40);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("RouterTable", "%s", v24, v25, v26, v27, v28, v29, v23);
    v39 = (v39 + 144);
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("RouterTable", "Route table dump end", v9, v10, v11, v12, v13, v14);
}

void *ot::ClearAllBytes<ot::RouterTable::RouterIdMap>(void *a1)
{
  return memset(a1, 0, 0x3FuLL);
}

{
  return ot::ClearAllBytes<ot::RouterTable::RouterIdMap>(a1);
}

uint64_t ot::Router::Init(ot::Router *this, ot::Instance *a2)
{
  return ot::Neighbor::Init(this, a2);
}

{
  return ot::Router::Init(this, a2);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::PopBack(uint64_t a1)
{
  if (ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsEmpty(a1))
  {
    return 0;
  }

  v1 = *(a1 + 4608);
  *(a1 + 4608) = v1 - 1;
  return a1 + 144 * (v1 - 1);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::PopBack(a1);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetMaxSize()
{
  return 32;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetMaxSize();
}

ot::SourceMatchController *ot::SourceMatchController::SourceMatchController(ot::SourceMatchController *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  ot::SourceMatchController::ClearTable(this);
  return this;
}

{
  ot::SourceMatchController::SourceMatchController(this, a2);
  return this;
}

void ot::SourceMatchController::ClearTable(ot::SourceMatchController *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::ClearSrcMatchShortEntries(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::ClearSrcMatchExtEntries(v2);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Cleared all entries", v3, v4, v5, v6, v7, v8);
}

uint64_t ot::SourceMatchController::IncrementMessageCount(ot::SourceMatchController *this, ot::Child *a2, char a3)
{
  if (!ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)))
  {
    ot::SourceMatchController::AddEntry(this, a2);
  }

  result = ot::IndirectSender::ChildInfo::IncrementIndirectMessageCount(a2 + 144);
  if (a3)
  {
    return ot::IndirectSender::ChildInfo::IncrementApplicationMessageCount(a2 + 144);
  }

  return result;
}

uint64_t ot::SourceMatchController::AddEntry(ot::SourceMatchController *this, ot::Child *a2)
{
  ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(a2 + 144, 1);
  if (ot::SourceMatchController::IsEnabled(this))
  {
    if (ot::SourceMatchController::AddAddress(this, a2))
    {
      return ot::SourceMatchController::Enable(this, 0);
    }

    else
    {
      ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(a2 + 144, 0);
      return ot::SourceMatchController::Enable(this, 1);
    }
  }

  else
  {
    result = ot::SourceMatchController::AddPendingEntries(this);
    if (!result)
    {
      return ot::SourceMatchController::Enable(this, 1);
    }
  }

  return result;
}

uint64_t ot::IndirectSender::ChildInfo::IncrementIndirectMessageCount(uint64_t this)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFFC000FFFFLL | ((((WORD1(*(this + 8)) & 0x3FFF) + 1) & 0x3FFF) << 16);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::IncrementIndirectMessageCount(this);
}

uint64_t ot::IndirectSender::ChildInfo::IncrementApplicationMessageCount(uint64_t this)
{
  *(this + 8) = *(this + 8) & 0xFFFFC000FFFFFFFFLL | ((((HIDWORD(*(this + 8)) & 0x3FFF) + 1) & 0x3FFF) << 32);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::IncrementApplicationMessageCount(this);
}

void ot::SourceMatchController::DecrementMessageCount(ot::SourceMatchController *this, ot::Child *a2, char a3)
{
  if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)))
  {
    if (a3)
    {
      ot::IndirectSender::ChildInfo::DecrementApplicationMessageCount(a2 + 144);
    }

    ot::IndirectSender::ChildInfo::DecrementIndirectMessageCount(a2 + 144);
    if (!ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)))
    {
      if (ot::IndirectSender::ChildInfo::GetApplicationMessageCount((a2 + 144)) > 0)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("SrcMatchCtrl", "As IndirectMessageCount = 0 and Application MessageCount > 0 which is invalid.", v10, v11, v12, v13, v14, v15);
        ot::IndirectSender::ChildInfo::ResetApplicationMessageCount(a2 + 144);
      }

      ot::SourceMatchController::ClearEntry(this, a2);
    }
  }

  else
  {
    Rloc16 = ot::Neighbor::GetRloc16(a2);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SrcMatchCtrl", "DecrementMessageCount(child 0x%04x) called when already at zero count.", v4, v5, v6, v7, v8, v9, Rloc16);
  }
}

uint64_t ot::IndirectSender::ChildInfo::DecrementApplicationMessageCount(uint64_t this)
{
  if (!(v1 | ((*(this + 8) & 0x3FFF00000000) == 0)))
  {
    *(this + 8) = *(this + 8) & 0xFFFFC000FFFFFFFFLL | ((((HIDWORD(*(this + 8)) & 0x3FFF) - 1) & 0x3FFF) << 32);
  }

  return this;
}

{
  return ot::IndirectSender::ChildInfo::DecrementApplicationMessageCount(this);
}

uint64_t ot::IndirectSender::ChildInfo::DecrementIndirectMessageCount(uint64_t this)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFFC000FFFFLL | ((((WORD1(*(this + 8)) & 0x3FFF) - 1) & 0x3FFF) << 16);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::DecrementIndirectMessageCount(this);
}

uint64_t ot::IndirectSender::ChildInfo::ResetApplicationMessageCount(uint64_t this)
{
  *(this + 8) &= 0xFFFFC000FFFFFFFFLL;
  return this;
}

{
  return ot::IndirectSender::ChildInfo::ResetApplicationMessageCount(this);
}

void ot::SourceMatchController::ClearEntry(ot::SourceMatchController *this, ot::Child *a2)
{
  if (ot::IndirectSender::ChildInfo::IsIndirectSourceMatchPending((a2 + 144)))
  {
    Rloc16 = ot::Neighbor::GetRloc16(a2);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Clearing pending flag for 0x%04x", v3, v4, v5, v6, v7, v8, Rloc16);
    ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(a2 + 144, 0);
  }

  else
  {
    if (ot::IndirectSender::ChildInfo::IsIndirectSourceMatchShort((a2 + 144)))
    {
      v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v9 = ot::Neighbor::GetRloc16(a2);
      matched = ot::Radio::ClearSrcMatchShortEntry(v28, v9);
      v29 = ot::Neighbor::GetRloc16(a2);
      v10 = ot::ErrorToString(matched);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Clearing short addr: 0x%04x -- %s (%d)", v11, v12, v13, v14, v15, v16, v29, v10, matched);
    }

    else
    {
      ot::Neighbor::GetExtAddress(a2);
      ot::Mac::ExtAddress::Set(v34, v17, 1);
      v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      matched = ot::Radio::ClearSrcMatchExtEntry(v18, v34);
      ot::Neighbor::GetExtAddress(a2);
      ot::Mac::ExtAddress::ToString(v19, v33);
      v27 = ot::String<(unsigned short)17>::AsCString(v33);
      v20 = ot::ErrorToString(matched);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Clearing addr: %s -- %s (%d)", v21, v22, v23, v24, v25, v26, v27, v20, matched);
    }

    if (!matched && (ot::SourceMatchController::IsEnabled(this) & 1) == 0 && !ot::SourceMatchController::AddPendingEntries(this))
    {
      ot::SourceMatchController::Enable(this, 1);
    }
  }
}

uint64_t ot::SourceMatchController::ResetMessageCount(ot::SourceMatchController *this, ot::Child *a2)
{
  ot::IndirectSender::ChildInfo::ResetIndirectMessageCount(a2 + 144);
  ot::IndirectSender::ChildInfo::ResetApplicationMessageCount(a2 + 144);
  return ot::SourceMatchController::ClearEntry(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::ResetIndirectMessageCount(uint64_t this)
{
  *(this + 8) &= 0xFFFFFFFFC000FFFFLL;
  return this;
}

{
  return ot::IndirectSender::ChildInfo::ResetIndirectMessageCount(this);
}

uint64_t ot::SourceMatchController::SetSrcMatchAsShort(ot::SourceMatchController *this, ot::Child *a2, char a3)
{
  result = ot::IndirectSender::ChildInfo::IsIndirectSourceMatchShort((a2 + 144));
  if (result != (a3 & 1))
  {
    if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)) <= 0)
    {
      return ot::IndirectSender::ChildInfo::SetIndirectSourceMatchShort(a2 + 144, a3 & 1);
    }

    else
    {
      ot::SourceMatchController::ClearEntry(this, a2);
      ot::IndirectSender::ChildInfo::SetIndirectSourceMatchShort(a2 + 144, a3 & 1);
      return ot::SourceMatchController::AddEntry(this, a2);
    }
  }

  return result;
}

uint64_t ot::IndirectSender::ChildInfo::SetIndirectSourceMatchShort(uint64_t this, char a2)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFFBFFFFFFFLL | ((a2 & 1) << 30);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::SetIndirectSourceMatchShort(this, a2);
}

uint64_t ot::Radio::ClearSrcMatchShortEntries(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioClearSrcMatchShortEntries();
}

{
  return ot::Radio::ClearSrcMatchShortEntries(this);
}

uint64_t ot::Radio::ClearSrcMatchExtEntries(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioClearSrcMatchExtEntries();
}

{
  return ot::Radio::ClearSrcMatchExtEntries(this);
}

void ot::SourceMatchController::Enable(ot::SourceMatchController *this, char a2)
{
  *this = a2 & 1;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::EnableSrcMatch(v2, *this & 1);
  v9 = "En";
  if ((*this & 1) == 0)
  {
    v9 = "Dis";
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "%sabling", v3, v4, v5, v6, v7, v8, v9);
}

uint64_t ot::Radio::EnableSrcMatch(ot::Radio *this, char a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioEnableSrcMatch(InstancePtr, a2 & 1);
}

{
  return ot::Radio::EnableSrcMatch(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(uint64_t this, char a2)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFF7FFFFFFFLL | ((a2 & 1) << 31);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(this, a2);
}

uint64_t ot::SourceMatchController::IsEnabled(ot::SourceMatchController *this)
{
  return *this & 1;
}

{
  return ot::SourceMatchController::IsEnabled(this);
}

uint64_t ot::SourceMatchController::AddPendingEntries(ot::SourceMatchController *this)
{
  v14 = this;
  v13 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v11 = ot::ChildTable::Iterate(v1, 1);
  v12 = &v11;
  v17 = ot::ChildTable::IteratorBuilder::begin(&v11);
  v18 = v2;
  v9 = v17;
  v10 = v2;
  v15 = ot::ChildTable::IteratorBuilder::end(v12);
  v16 = v3;
  v7 = v15;
  v8 = v3;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v9, &v7))
  {
    v6 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v9);
    if (ot::IndirectSender::ChildInfo::IsIndirectSourceMatchPending((v6 + 144)))
    {
      v13 = ot::SourceMatchController::AddAddress(this, v6);
      if (v13)
      {
        return v13;
      }

      ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(v6 + 144, 0);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
  }

  return v13;
}

uint64_t ot::SourceMatchController::AddAddress(ot::SourceMatchController *this, const ot::Child *a2)
{
  if (ot::IndirectSender::ChildInfo::IsIndirectSourceMatchShort((a2 + 144)))
  {
    v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    Rloc16 = ot::Neighbor::GetRloc16(a2);
    matched = ot::Radio::AddSrcMatchShortEntry(v22, Rloc16);
    v23 = ot::Neighbor::GetRloc16(a2);
    v3 = ot::ErrorToString(matched);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Adding short addr: 0x%04x -- %s (%d)", v4, v5, v6, v7, v8, v9, v23, v3, matched);
  }

  else
  {
    ot::Neighbor::GetExtAddress(a2);
    ot::Mac::ExtAddress::Set(v28, v10, 1);
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    matched = ot::Radio::AddSrcMatchExtEntry(v11, v28);
    ot::Neighbor::GetExtAddress(a2);
    ot::Mac::ExtAddress::ToString(v12, v27);
    v21 = ot::String<(unsigned short)17>::AsCString(v27);
    v13 = ot::ErrorToString(matched);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Adding addr: %s -- %s (%d)", v14, v15, v16, v17, v18, v19, v21, v13, matched);
  }

  return matched;
}

uint64_t ot::Radio::AddSrcMatchShortEntry(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioAddSrcMatchShortEntry(InstancePtr, a2);
}

{
  return ot::Radio::AddSrcMatchShortEntry(this, a2);
}

uint64_t ot::Radio::AddSrcMatchExtEntry(ot::Radio *this, const ot::Mac::ExtAddress *a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioAddSrcMatchExtEntry(InstancePtr, a2);
}

{
  return ot::Radio::AddSrcMatchExtEntry(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::IsIndirectSourceMatchPending(ot::IndirectSender::ChildInfo *this)
{
  return (*(this + 1) >> 31) & 1;
}

{
  return ot::IndirectSender::ChildInfo::IsIndirectSourceMatchPending(this);
}

uint64_t ot::Radio::ClearSrcMatchShortEntry(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioClearSrcMatchShortEntry(InstancePtr, a2);
}

{
  return ot::Radio::ClearSrcMatchShortEntry(this, a2);
}

uint64_t ot::Radio::ClearSrcMatchExtEntry(ot::Radio *this, const ot::Mac::ExtAddress *a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioClearSrcMatchExtEntry(InstancePtr, a2);
}

{
  return ot::Radio::ClearSrcMatchExtEntry(this, a2);
}

ot::ThreadNetif *ot::ThreadNetif::ThreadNetif (ot::ThreadNetif *this, ot::Instance *a2)
{
  ot::Ip6::Netif::Netif (this, a2);
  result = this;
  *(this + 560) = 0;
  return result;
}

{
  ot::ThreadNetif::ThreadNetif (this, a2);
  return this;
}

void ot::ThreadNetif::Up(ot::Ip6::Netif *this)
{
  if ((*(this + 560) & 1) == 0)
  {
    otLogDebgPlat("ThreadNetif: Up");
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::SetEnabled(v1, 1);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::Start(v2);
    *(this + 560) = 1;
    ot::Ip6::Netif::SubscribeAllNodesMulticast(this);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::Mle::Enable(v3, v4, v5, v6, v7, v8, v9, v10);
    IgnoreError();
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    ot::Tmf::Agent::Start(v11);
    IgnoreError();
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Signal(v12, 0x1000000);
  }
}

void ot::ThreadNetif::Down(ot::Ip6::Netif *this)
{
  if (*(this + 560))
  {
    otLogDebgPlat("ThreadNetif: Down");
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
    ot::Coap::CoapSecure::Stop(v1);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    ot::Coap::Coap::Stop(v2);
    IgnoreError();
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::Mle::Disable(v3, v4, v5, v6, v7, v8, v9, v10);
    IgnoreError();
    ot::Ip6::Netif::RemoveAllExternalUnicastAddresses(this);
    ot::Ip6::Netif::UnsubscribeAllExternalMulticastAddresses(this);
    ot::Ip6::Netif::UnsubscribeAllRoutersMulticast(this);
    ot::Ip6::Netif::UnsubscribeAllNodesMulticast(this);
    *(this + 560) = 0;
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::Stop(v11);
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Signal(v12, 0x1000000);
  }
}

uint64_t ot::FrameData::ReadBytes(ot::FrameData *this, void *a2, unsigned __int16 a3)
{
  v6 = 0;
  if (ot::FrameData::CanRead(this, a3))
  {
    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(this);
    memcpy(a2, Bytes, a3);
    ot::FrameData::SkipOver(this, a3);
  }

  else
  {
    return 6;
  }

  return v6;
}

uint64_t ot::FrameData::ReadBigEndianUint16(ot::FrameData *this, unsigned __int16 *a2)
{
  Bytes = ot::FrameData::ReadBytes(this, a2, 2u);
  if (!Bytes)
  {
    *a2 = ot::BigEndian::HostSwap16(*a2, v2);
  }

  return Bytes;
}

uint64_t ot::FrameData::ReadBigEndianUint32(ot::FrameData *this, unsigned int *a2)
{
  Bytes = ot::FrameData::ReadBytes(this, a2, 4u);
  if (!Bytes)
  {
    *a2 = ot::BigEndian::HostSwap32(*a2, v2);
  }

  return Bytes;
}

uint64_t ot::FrameData::ReadLittleEndianUint16(ot::FrameData *this, unsigned __int16 *a2)
{
  Bytes = ot::FrameData::ReadBytes(this, a2, 2u);
  if (!Bytes)
  {
    *a2 = ot::LittleEndian::HostSwap16(*a2);
  }

  return Bytes;
}

uint64_t ot::FrameData::ReadLittleEndianUint32(ot::FrameData *this, unsigned int *a2)
{
  Bytes = ot::FrameData::ReadBytes(this, a2, 4u);
  if (!Bytes)
  {
    *a2 = ot::LittleEndian::HostSwap32(*a2);
  }

  return Bytes;
}

uint64_t ot::FrameData::SkipOver(ot::FrameData *this, unsigned __int16 a2)
{
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(this);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(this);
  return ot::Data<(ot::DataLengthType)1>::Init(this, Bytes + a2, Length - a2);
}

ot::Instance *ot::Instance::Instance(ot::Instance *this)
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 1);
  ot::TimerMilli::Scheduler::Scheduler((this + 16), this);
  ot::TimerMilli::Scheduler::Scheduler((this + 24), this);
  ot::Crypto::MbedTls::MbedTls((this + 32));
  ot::Random::Manager::Manager((this + 33));
  ot::Radio::Radio((this + 34), this);
  ot::Uptime::Uptime((this + 40), this);
  ot::Notifier::Notifier((this + 72), this);
  ot::TimeTicker::TimeTicker((this + 168), this);
  ot::Settings::Settings((this + 200), this);
  ot::Settings::ChildInfoIteratorBuilder::ChildInfoIteratorBuilder((this + 201), this);
  ot::MessagePool::MessagePool((this + 208), this);
  ot::Ip6::Ip6::Ip6((this + 85224), this);
  ot::ThreadNetif::ThreadNetif ((this + 85536), this);
  ot::Tmf::Agent::Agent((this + 86104), this);
  ot::Dhcp6::Client::Client((this + 86320), this);
  ot::Dhcp6::Server::Server((this + 86672), this);
  ot::Utils::Slaac::Slaac((this + 86984), this);
  ot::BackboneRouter::Local::Local((this + 87184), this);
  ot::MeshCoP::ActiveDatasetManager::ActiveDatasetManager((this + 87312), this);
  ot::MeshCoP::PendingDatasetManager::PendingDatasetManager((this + 87640), this);
  ot::MeshCoP::ExtendedPanIdManager::ExtendedPanIdManager((this + 87992), this);
  ot::MeshCoP::NetworkNameManager::NetworkNameManager((this + 88000), this);
  ot::Ip6::Filter::Filter((this + 88034), this);
  ot::KeyManager::KeyManager((this + 88040), this);
  ot::Lowpan::Lowpan::Lowpan((this + 88192), this);
  ot::Mac::Mac::Mac((this + 88200), this);
  ot::MeshForwarder::MeshForwarder((this + 89904), this);
  ot::Mle::MleRouter::MleRouter((this + 91160), this);
  ot::Mle::DiscoverScanner::DiscoverScanner((this + 126944), this);
  ot::AddressResolver::AddressResolver(this + 15886, this);
  ot::NetworkData::Local::Local((this + 143544), this);
  ot::NetworkData::Leader::Leader((this + 143808), this);
  ot::NetworkData::Notifier::Notifier((this + 144176), this);
  ot::Settings::ChildInfoIteratorBuilder::ChildInfoIteratorBuilder((this + 144264), this);
  ot::NetworkDiagnostic::Server::Server((this + 144272), this);
  ot::NetworkDiagnostic::Client::Client((this + 144280), this);
  ot::MeshCoP::BorderAgent::BorderAgent((this + 144304), this);
  ot::MeshCoP::Commissioner::Commissioner((this + 144416), this);
  ot::Tmf::SecureAgent::SecureAgent((this + 145008), this);
  ot::MeshCoP::Joiner::Joiner((this + 146216), this);
  ot::MeshCoP::JoinerRouter::JoinerRouter((this + 146336), this);
  ot::MeshCoP::Leader::Leader((this + 146456), this);
  ot::BackboneRouter::Leader::Leader((this + 146560), this);
  ot::BackboneRouter::Manager::Manager((this + 146592), this);
  ot::MlrManager::MlrManager((this + 154384), this);
  ot::DuaManager::DuaManager((this + 154408), this);
  ot::ChildSupervisor::ChildSupervisor((this + 154520), this);
  ot::SupervisionListener::SupervisionListener((this + 154552), this);
  ot::AnnounceBeginServer::AnnounceBeginServer((this + 154584), this);
  ot::PanIdQueryServer::PanIdQueryServer((this + 154624), this);
  ot::EnergyScanServer::EnergyScanServer((this + 154672), this);
  ot::LinkMetrics::Initiator::Initiator((this + 154736), this);
  ot::LinkMetrics::Subject::Subject((this + 154784), this);
  ot::Coap::Coap::Coap((this + 156336), this);
  ot::Utils::PingSender::PingSender((this + 156552), this);
  ot::Utils::ChannelManager::ChannelManager((this + 156696), this);
  ot::Utils::MeshDiag::MeshDiag((this + 156744), this);
  ot::Utils::HistoryTracker::HistoryTracker((this + 156800), this);
  ot::MeshCoP::DatasetUpdater::DatasetUpdater((this + 167040), this);
  ot::AnnounceSender::AnnounceSender((this + 167064), this);
  ot::Mac::LinkRaw::LinkRaw((this + 167168), this);
  ot::ThreadAnalyticsManager::ThreadAnalyticsManager((this + 167208), this);
  v1 = ot::FactoryDiags::Diags::Diags((this + 168288), this);
  *(this + 168344) = 0;
  Uint32 = ot::Random::NonCrypto::GetUint32(v1);
  result = this;
  *(this + 42087) = Uint32;
  return result;
}

{
  ot::Instance::Instance(this);
  return this;
}

ot::TimerMilli::Scheduler *ot::TimerMilli::Scheduler::Scheduler(ot::TimerMilli::Scheduler *this, ot::Instance *a2)
{
  ot::TimerMilli::Scheduler::Scheduler(this, a2);
  return this;
}

{
  ot::Timer::Scheduler::Scheduler(this, a2);
  return this;
}

ot::Radio *ot::Radio::Radio(ot::Radio *this, ot::Instance *a2)
{
  ot::Radio::Radio(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Settings::ChildInfoIteratorBuilder::ChildInfoIteratorBuilder((this + 1), a2);
  return this;
}

ot::Ip6::Filter *ot::Ip6::Filter::Filter(ot::Ip6::Filter *this, ot::Instance *a2)
{
  ot::Ip6::Filter::Filter(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Array<unsigned short,(unsigned short)2,unsigned char>::Array(this);
  return this;
}

ot::NetworkData::Local *ot::NetworkData::Local::Local(ot::NetworkData::Local *this, ot::Instance *a2)
{
  ot::NetworkData::Local::Local(this, a2);
  return this;
}

{
  ot::NetworkData::MutableNetworkData::MutableNetworkData(this, a2, this + 10, 0, 254);
  return this;
}

uint64_t ot::Instance::GetHeap(ot::Instance *this)
{
  if (!ot::Instance::sHeap)
  {
    ot::Utils::Heap::Heap(&ot::sHeapRaw);
    ot::Instance::sHeap = &ot::sHeapRaw;
  }

  return ot::Instance::sHeap;
}

_BYTE *ot::Instance::InitSingle(ot::Instance *this)
{
  v3 = ot::Instance::Get(this);
  if ((v3[168344] & 1) == 0)
  {
    ot::Instance::Instance(&ot::gInstanceRaw);
    v3 = &ot::gInstanceRaw;
    ot::Instance::AfterInit(&ot::gInstanceRaw);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(5) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_8_0(v5, 168352);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "INITSINGLE: sz_Instance[0x%lx]\n", v5, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v4, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v4, 0x16u);
    }
  }

  return v3;
}

void ot::Instance::AfterInit(ot::Instance *this)
{
  *(this + 168344) = 1;
  v1 = ot::Instance::Get<ot::Settings>(this);
  ot::Settings::Init(v1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(this);
  ot::Mle::Mle::Restore(v2);
}

void ot::Instance::InitSettings(ot::Instance *this)
{
  v1 = ot::Instance::Get<ot::Settings>(this);
  ot::Settings::Init(v1);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(5) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v11, "InitSettings", 0);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Setting MLE Frame Counter: %u", v11, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v10, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v10, 0x16u);
  }

  v2 = ot::Instance::Get<ot::KeyManager>(this);
  ot::KeyManager::SetMleFrameCounter(v2, 0);
  v6 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v6 && (syslog_is_the_mask_enabled(5) & 1) != 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v9, "InitSettings", 0);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Setting All MAC Frame Counter: %u", v9, 0x12u);
    }
  }

  else if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
  }

  v3 = ot::Instance::Get<ot::KeyManager>(this);
  ot::KeyManager::SetAllMacFrameCounters(v3, 0, 0);
  v4 = ot::Instance::Get<ot::Mle::MleRouter>(this);
  ot::Mle::Mle::Restore(v4);
}

void ot::Instance::Finalize(ot::Instance *this)
{
  if (*(this + 168344))
  {
    *(this + 168344) = 0;
    otThreadSetEnabled(this, 0);
    IgnoreError();
    otIp6SetEnabled(this, 0);
    IgnoreError();
    otLinkSetEnabled(this, 0);
    IgnoreError();
    v1 = ot::Instance::Get<ot::Settings>(this);
    ot::Settings::Deinit(v1);
    v2 = ot::Instance::Get<ot::Mac::SubMac>(this);
    ot::Mac::SubMac::Disable(v2);
    IgnoreError();
    ot::Instance::~Instance(this);
  }
}

void ot::Instance::~Instance(ot::Instance *this)
{
  ot::Instance::~Instance(this);
}

{
  ot::Random::Manager::~Manager((this + 33));
}

void ot::Instance::FactoryReset(ot::Instance *this)
{
  v1 = ot::Instance::Get<ot::Settings>(this);
  ot::Settings::Wipe(v1);
  otPlatReset(this);
}

uint64_t ot::Instance::ErasePersistentInfo(ot::Instance *this)
{
  v5 = 0;
  v1 = ot::Instance::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsDisabled(v1))
  {
    v2 = ot::Instance::Get<ot::Settings>(this);
    ot::Settings::Wipe(v2);
  }

  else
  {
    return 13;
  }

  return v5;
}

BOOL ot::Instance::GetBufferInfo(ot::Instance *a1, _WORD *a2)
{
  ot::Clearable<ot::Instance::BufferInfo>::Clear(a2);
  v2 = ot::Instance::Get<ot::MessagePool>(a1);
  *a2 = ot::MessagePool::GetTotalBufferCount(v2);
  v3 = ot::Instance::Get<ot::MessagePool>(a1);
  a2[1] = ot::MessagePool::GetFreeBufferCount(v3);
  v4 = ot::Instance::Get<ot::MessagePool>(a1);
  a2[2] = ot::MessagePool::GetMaxUsedBufferCount(v4);
  v5 = ot::Instance::Get<ot::MeshForwarder>(a1);
  SendQueue = ot::MeshForwarder::GetSendQueue(v5);
  ot::PriorityQueue::GetInfo(SendQueue, (a2 + 4));
  v7 = ot::Instance::Get<ot::MeshForwarder>(a1);
  ReassemblyQueue = ot::MeshForwarder::GetReassemblyQueue(v7);
  ot::MessageQueue::GetInfo(ReassemblyQueue, (a2 + 8));
  v9 = ot::Instance::Get<ot::Ip6::Ip6>(a1);
  v10 = ot::Ip6::Ip6::GetSendQueue(v9);
  ot::PriorityQueue::GetInfo(v10, (a2 + 12));
  v11 = ot::Instance::Get<ot::Ip6::Mpl>(a1);
  BufferedMessageSet = ot::Ip6::Mpl::GetBufferedMessageSet(v11);
  ot::MessageQueue::GetInfo(BufferedMessageSet, (a2 + 16));
  v13 = ot::Instance::Get<ot::Mle::MleRouter>(a1);
  MessageQueue = ot::Mle::Mle::GetMessageQueue(v13);
  ot::MessageQueue::GetInfo(MessageQueue, (a2 + 20));
  v15 = ot::Instance::Get<ot::Tmf::Agent>(a1);
  ot::Coap::CoapBase::GetRequestMessages(v15);
  ot::MessageQueue::GetInfo(v16, (a2 + 24));
  v17 = ot::Instance::Get<ot::Tmf::Agent>(a1);
  ot::Coap::CoapBase::GetCachedResponses(v17);
  ot::MessageQueue::GetInfo(v18, (a2 + 24));
  v19 = ot::Instance::Get<ot::Tmf::SecureAgent>(a1);
  ot::Coap::CoapBase::GetRequestMessages(v19);
  ot::MessageQueue::GetInfo(v20, (a2 + 28));
  v21 = ot::Instance::Get<ot::Tmf::SecureAgent>(a1);
  ot::Coap::CoapBase::GetCachedResponses(v21);
  ot::MessageQueue::GetInfo(v22, (a2 + 28));
  ApplicationCoap = ot::Instance::GetApplicationCoap(a1);
  ot::Coap::CoapBase::GetRequestMessages(ApplicationCoap);
  ot::MessageQueue::GetInfo(v24, (a2 + 32));
  v25 = ot::Instance::GetApplicationCoap(a1);
  ot::Coap::CoapBase::GetCachedResponses(v25);
  return ot::MessageQueue::GetInfo(v26, (a2 + 32));
}

void *ot::Clearable<ot::Instance::BufferInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Instance::BufferInfo>(a1);
}

{
  return ot::Clearable<ot::Instance::BufferInfo>::Clear(a1);
}

uint64_t ot::MessagePool::GetMaxUsedBufferCount(ot::MessagePool *this)
{
  return *(this + 32777);
}

{
  return ot::MessagePool::GetMaxUsedBufferCount(this);
}

uint64_t ot::MeshForwarder::GetReassemblyQueue(ot::MeshForwarder *this)
{
  return this + 40;
}

{
  return ot::MeshForwarder::GetReassemblyQueue(this);
}

uint64_t ot::Ip6::Ip6::GetSendQueue(ot::Ip6::Ip6 *this)
{
  return this + 40;
}

{
  return ot::Ip6::Ip6::GetSendQueue(this);
}

uint64_t ot::Ip6::Mpl::GetBufferedMessageSet(ot::Ip6::Mpl *this)
{
  return this + 144;
}

{
  return ot::Ip6::Mpl::GetBufferedMessageSet(this);
}

uint64_t ot::Mle::Mle::GetMessageQueue(ot::Mle::Mle *this)
{
  return this + 352;
}

{
  return ot::Mle::Mle::GetMessageQueue(this);
}

void ot::Coap::CoapBase::GetRequestMessages(ot::Coap::CoapBase *this)
{
  ;
}

{
  ot::Coap::CoapBase::GetRequestMessages(this);
}

void ot::Coap::CoapBase::GetCachedResponses(ot::Coap::CoapBase *this)
{
  ot::Coap::ResponsesQueue::GetResponses((this + 72));
}

{
  ot::Coap::CoapBase::GetCachedResponses(this);
}

uint64_t ot::MessagePool::ResetMaxUsedBufferCount(uint64_t this)
{
  *(this + 65554) = *(this + 65552);
  return this;
}

{
  return ot::MessagePool::ResetMaxUsedBufferCount(this);
}

void ot::Instance::SetLogLevel(uint64_t result, uint64_t a2)
{
  if (result != ot::Instance::sLogLevel)
  {
    ot::Instance::sLogLevel = result;
    otPlatLogHandleLevelChanged(result, a2);
  }
}

ot::Timer::Scheduler *ot::Timer::Scheduler::Scheduler(ot::Timer::Scheduler *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this);
  return this;
}

void ot::Coap::ResponsesQueue::GetResponses(ot::Coap::ResponsesQueue *this)
{
  ;
}

{
  ot::Coap::ResponsesQueue::GetResponses(this);
}

void *ot::ClearAllBytes<ot::Instance::BufferInfo>(void *a1)
{
  return memset(a1, 0, 0x48uLL);
}

{
  return ot::ClearAllBytes<ot::Instance::BufferInfo>(a1);
}

double ot::Tmf::MessageInfo::SetSockAddrToRloc(ot::Tmf::MessageInfo *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::Mle::GetMeshLocalRloc(v1);
  return ot::Ip6::MessageInfo::SetSockAddr(this, v2);
}

uint64_t ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(ot::Tmf::MessageInfo *this)
{
  ot::Tmf::MessageInfo::SetSockAddrToRloc(this);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Ip6::MessageInfo::GetPeerAddr(this);
  return ot::Mle::Mle::GetLeaderAloc(v4, v1);
}

uint64_t ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderRloc(ot::Tmf::MessageInfo *this)
{
  ot::Tmf::MessageInfo::SetSockAddrToRloc(this);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Ip6::MessageInfo::GetPeerAddr(this);
  return ot::Mle::Mle::GetLeaderRloc(v4, v1);
}

double ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToRealmLocalAllRoutersMulticast(ot::Tmf::MessageInfo *this)
{
  ot::Tmf::MessageInfo::SetSockAddrToRloc(this);
  ot::Ip6::MessageInfo::GetPeerAddr(this);
  *&result = ot::Ip6::Address::SetToRealmLocalAllRoutersMulticast(v1).n128_u64[0];
  return result;
}

uint64_t ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(ot::Tmf::MessageInfo *this, unsigned __int16 a2)
{
  ot::Tmf::MessageInfo::SetSockAddrToRloc(this);
  ot::Ip6::MessageInfo::GetPeerAddr(this);
  v7 = v2;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v3);
  return ot::Ip6::Address::SetToRoutingLocator(v7, MeshLocalPrefix, a2);
}

ot::Tmf::Agent *ot::Tmf::Agent::Agent(ot::Tmf::Agent *this, ot::Instance *a2)
{
  ot::Coap::Coap::Coap(this, a2);
  ot::Coap::CoapBase::SetInterceptor(this, ot::Tmf::Agent::Filter, this);
  ot::Coap::CoapBase::SetResourceHandler(this, ot::Tmf::Agent::HandleResource);
  return this;
}

{
  ot::Tmf::Agent::Agent(this, a2);
  return this;
}

uint64_t ot::Tmf::Agent::Filter(ot::Tmf::Agent *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, void *a4)
{
  ot::Ip6::MessageInfo::GetPeerAddr(a2);
  v8 = v4;
  ot::Ip6::MessageInfo::GetSockAddr(a2);
  v9 = v5;
  SockPort = ot::Ip6::MessageInfo::GetSockPort(a2);
  if (ot::Tmf::Agent::IsTmfMessage(a3, v8, v9, SockPort))
  {
    return 0;
  }

  else
  {
    return 31;
  }
}

void ot::Tmf::Agent::HandleTmf<(ot::Uri)29>(ot::InstanceLocator *a1, ot::Tlv *a2, uint64_t a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
  ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)29>(v3, a2, a3);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(a1);
  ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)29>(v4, a2);
}

uint64_t ot::Tmf::Agent::HandleResource(ot::Tmf::Agent *this, ot *a2, ot::Coap::Message *a3, const ot::Ip6::MessageInfo *a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v39 = 1;
  switch(ot::UriFromPath(a2, a2, a3, a4, a5, a6))
  {
    case 0u:
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::HandleTmf<(ot::Uri)0>(v6, a3, a4);
      break;
    case 1u:
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::HandleTmf<(ot::Uri)1>(v12, a3, a4);
      break;
    case 2u:
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::HandleTmf<(ot::Uri)2>(v11, a3, a4);
      break;
    case 3u:
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::HandleTmf<(ot::Uri)3>(v14, a3, a4);
      break;
    case 4u:
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::HandleTmf<(ot::Uri)4>(v13, a3, a4);
      break;
    case 5u:
      v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::HandleTmf<(ot::Uri)5>(v20, a3, a4);
      break;
    case 0xAu:
      v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceBeginServer>(this);
      ot::AnnounceBeginServer::HandleTmf<(ot::Uri)10>(v23, a3, a4);
      break;
    case 0xBu:
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)11>(active, a3, a4);
      break;
    case 0xCu:
      v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)12>(v16, a3, a4);
      break;
    case 0xDu:
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)13>(v15, a3, a4);
      break;
    case 0xFu:
      v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::HandleTmf<(ot::Uri)15>(v21, a3, a4);
      break;
    case 0x11u:
      v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::HandleTmf<(ot::Uri)17>(v22, a3, a4);
      break;
    case 0x12u:
      v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
      ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)18>(v28, a3, a4);
      break;
    case 0x13u:
      v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanClient>(this);
      ot::EnergyScanClient::HandleTmf<(ot::Uri)19>(v27, a3, a4);
      break;
    case 0x14u:
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanServer>(this);
      ot::EnergyScanServer::HandleTmf<(ot::Uri)20>(v7, a3, a4);
      break;
    case 0x15u:
      v25 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Joiner>(this);
      ot::MeshCoP::Joiner::HandleTmf<(ot::Uri)21>(v25, a3, a4);
      break;
    case 0x17u:
      v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
      ot::MeshCoP::Leader::HandleTmf<(ot::Uri)23>(v19, a3, a4);
      break;
    case 0x18u:
      v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
      ot::MeshCoP::Leader::HandleTmf<(ot::Uri)24>(v18, a3, a4);
      break;
    case 0x19u:
      v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryClient>(this);
      ot::PanIdQueryClient::HandleTmf<(ot::Uri)25>(v26, a3, a4);
      break;
    case 0x1Au:
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      ot::MeshCoP::PendingDatasetManager::HandleTmf<(ot::Uri)26>(v9, a3, a4);
      break;
    case 0x1Bu:
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryServer>(this);
      ot::PanIdQueryServer::HandleTmf<(ot::Uri)27>(v10, a3, a4);
      break;
    case 0x1Cu:
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      ot::MeshCoP::PendingDatasetManager::HandleTmf<(ot::Uri)28>(v17, a3, a4);
      break;
    case 0x1Du:
      v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
      ot::Tmf::Agent::HandleTmf<(ot::Uri)29>(v29, a3, a4);
      break;
    case 0x1Eu:
      v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(this);
      ot::MeshCoP::JoinerRouter::HandleTmf<(ot::Uri)30>(v24, a3, a4);
      break;
    case 0x21u:
      v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(this);
      ot::NetworkDiagnostic::Client::HandleTmf<(ot::Uri)33>(v34, a3, a4);
      break;
    case 0x22u:
      v31 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(this);
      ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)34>(v31, a3, a4);
      break;
    case 0x23u:
      v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(this);
      ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)35>(v32, a3, a4);
      break;
    case 0x24u:
      v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(this);
      ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)36>(v33, a3, a4);
      break;
    case 0x25u:
      v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
      ot::DuaManager::HandleTmf<(ot::Uri)37>(v30, a3, a4);
      break;
    case 0x26u:
      v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
      ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)38>(v36, a3, a4);
      break;
    case 0x27u:
      v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
      ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)39>(v35, a3, a4);
      break;
    default:
      v39 = 0;
      break;
  }

  return v39 & 1;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryClient>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::PanIdQueryClient>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryClient>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanClient>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::EnergyScanClient>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanClient>(a1);
}

BOOL ot::Tmf::Agent::IsTmfMessage(ot::Tmf::Agent *this, const ot::Ip6::Address *a2, const ot::Ip6::Address *a3, unsigned __int16 a4)
{
  v9 = 0;
  if (a4 == 61631)
  {
    if (ot::Ip6::Address::IsLinkLocalUnicast(a2, a2))
    {
      return ot::Ip6::Address::IsLinkLocalUnicastOrMulticast(a3, v4);
    }

    else
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::IsMeshLocalAddress(v5, a2))
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        if (ot::Mle::Mle::IsMeshLocalAddress(v6, a3) || ot::Ip6::Address::IsLinkLocalMulticast(a3) || ot::Ip6::Address::IsRealmLocalMulticast(a3))
        {
          return 1;
        }
      }
    }
  }

  return v9;
}

uint64_t ot::Tmf::Agent::PriorityToDscp(char a1)
{
  v2 = 15;
  if (a1)
  {
    if (a1 != 2 && a1 != 1 && a1 == 3)
    {
      return 7;
    }
  }

  else
  {
    return 23;
  }

  return v2;
}

uint64_t ot::Tmf::Agent::DscpToPriority(ot::Tmf::Agent *this)
{
  v2 = 3;
  if (this != 7)
  {
    if (this == 15)
    {
      return 1;
    }

    else if (this == 23)
    {
      return 0;
    }
  }

  return v2;
}

ot::Tmf::SecureAgent *ot::Tmf::SecureAgent::SecureAgent(ot::Tmf::SecureAgent *this, ot::Instance *a2)
{
  ot::Coap::CoapSecure::CoapSecure(this, a2, 0);
  ot::Coap::CoapBase::SetResourceHandler(this, ot::Tmf::SecureAgent::HandleResource);
  return this;
}

{
  ot::Tmf::SecureAgent::SecureAgent(this, a2);
  return this;
}

uint64_t ot::Tmf::SecureAgent::HandleResource(ot::Tmf::SecureAgent *this, ot *a2, ot::Coap::Message *a3, const ot::Ip6::MessageInfo *a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v20 = 1;
  v18 = ot::UriFromPath(a2, a2, a3, a4, a5, a6);
  switch(v18)
  {
    case 11:
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)11>(v12, a3, a4);
      break;
    case 13:
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)13>(v13, a3, a4);
      break;
    case 14:
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)14>(v8, a3, a4);
      break;
    case 15:
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)15>(v10, a3, a4);
      break;
    case 16:
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)16>(v7, a3, a4);
      break;
    case 17:
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)17>(v11, a3, a4);
      break;
    case 22:
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
      ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)22>(v6, a3);
      break;
    case 26:
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)26>(v14, a3, a4);
      break;
    case 28:
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)28>(v15, a3, a4);
      break;
    case 30:
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)30>(v9, a3, a4);
      break;
    case 32:
      v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)32>(v16, a3, a4);
      break;
    default:
      v20 = 0;
      break;
  }

  return v20 & 1;
}

uint64_t ot::Instance::Get<ot::PanIdQueryClient>(uint64_t a1)
{
  return ot::MeshCoP::Commissioner::GetPanIdQueryClient((a1 + 144416));
}

{
  return ot::Instance::Get<ot::PanIdQueryClient>(a1);
}

uint64_t ot::Instance::Get<ot::EnergyScanClient>(uint64_t a1)
{
  return ot::MeshCoP::Commissioner::GetEnergyScanClient((a1 + 144416));
}

{
  return ot::Instance::Get<ot::EnergyScanClient>(a1);
}

char *ot::PathForUri(unsigned __int8 a1)
{
  if (a1 == 40)
  {
    __assert_rtn("PathForUri", "uri_paths.cpp", 149, "aUri != kUriUnknown");
  }

  return ot::UriList::kEntries[a1];
}

uint64_t ot::UriFromPath(ot *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v9 = this;
  v8 = 40;
  v7 = ot::BinarySearch::Find<char const*,ot::UriList::Entry,(unsigned short)40>(&v9, ot::UriList::kEntries, a3, a4, a5, a6);
  if (v7)
  {
    return ((v7 - ot::UriList::kEntries) / 8);
  }

  return v8;
}

char *ot::BinarySearch::Find<char const*,ot::UriList::Entry,(unsigned short)40>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0x28, 8u, ot::BinarySearch::Compare<char const*,ot::UriList::Entry>, a6);
}

{
  return ot::BinarySearch::Find<char const*,ot::UriList::Entry,(unsigned short)40>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::UriList::Entry::Compare(const char **this, const char *a2)
{
  return strcmp(a2, *this);
}

{
  return ot::UriList::Entry::Compare(this, a2);
}

ot::Utils::ChannelManager *ot::Utils::ChannelManager::ChannelManager(ot::Utils::ChannelManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Mac::ChannelMask::ChannelMask(this, 0);
  ot::Mac::ChannelMask::ChannelMask((this + 4), 0);
  *(this + 4) = 120;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  ot::TimerMilliIn<ot::Utils::ChannelManager,&ot::Utils::ChannelManager::HandleTimer>::TimerMilliIn((this + 16), a2);
  result = this;
  *(this + 10) = 10800;
  *(this + 44) = 0;
  *(this + 23) = 9174;
  return result;
}

{
  ot::Utils::ChannelManager::ChannelManager(this, a2);
  return this;
}

ot::Utils::ChannelManager *ot::Utils::ChannelManager::HandleTimer(ot::Utils::ChannelManager *this)
{
  if (*(this + 12))
  {
    if (*(this + 12) == 1)
    {
      return ot::Utils::ChannelManager::StartDatasetUpdate(this);
    }
  }

  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Utils::ChannelManager,&ot::Utils::ChannelManager::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Utils::ChannelManager,&ot::Utils::ChannelManager::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Utils::ChannelManager,&ot::Utils::ChannelManager::HandleTimer>::HandleTimer);
  return a1;
}

void ot::Utils::ChannelManager::RequestChannelChange(ot::Utils::ChannelManager *this, unsigned __int8 a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsFullThreadDevice(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsRxOnWhenIdle(v3) && (*(this + 44) & 1) != 0)
    {
      ot::Utils::ChannelManager::RequestNetworkChannelChange(this, a2);
    }
  }
}

void ot::Utils::ChannelManager::RequestNetworkChannelChange(ot::Utils::ChannelManager *this, unsigned __int8 a2)
{
  v12 = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  if (v12 == ot::Mac::Mac::GetPanChannel(v2))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Already operating on the requested channel %d", v3, v4, v5, v6, v7, v8, a2);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Request to change to channel %d with delay %d sec", v3, v4, v5, v6, v7, v8, a2, *(this + 4));
    if (*(this + 12) != 2 || *(this + 10) != a2)
    {
      *(this + 12) = 1;
      *(this + 10) = a2;
      Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(0, 0x2710u);
      ot::TimerMilli::Start((this + 16), Uint32InRange + 1);
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
      ot::Notifier::Signal(v10, 0x200000);
    }
  }
}

uint64_t ot::Utils::ChannelManager::SetDelay(ot::Utils::ChannelManager *this, unsigned __int16 a2)
{
  v3 = 0;
  if (a2 >= 0x78u)
  {
    *(this + 4) = a2;
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t ot::Utils::ChannelManager::StartDatasetUpdate(ot::Utils::ChannelManager *this)
{
  v13 = this;
  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(v14);
  v12 = *(this + 10);
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(v14, &v12);
  v11 = ot::Time::SecToMsec(*(this + 4));
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)6>(v14, &v11);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::DatasetUpdater>(this);
  result = ot::MeshCoP::DatasetUpdater::RequestUpdate(v1, v14, ot::Utils::ChannelManager::HandleDatasetUpdateDone, this);
  if (result)
  {
    if (result == 3 || result == 5)
    {
      return ot::TimerMilli::Start((this + 16), 0x4E20u);
    }

    else
    {
      if (result == 13)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Request to change to channel %d failed. Device is disabled", v4, v5, v6, v7, v8, v9, *(this + 10));
      }

      *(this + 12) = 0;
      return ot::Utils::ChannelManager::StartAutoSelectTimer(this, v3);
    }
  }

  else
  {
    *(this + 12) = 2;
  }

  return result;
}

uint64_t ot::Utils::ChannelManager::StartAutoSelectTimer(uint64_t this, unsigned int a2)
{
  v3 = this;
  if (!*(this + 12))
  {
    if (*(this + 44))
    {
      v2 = ot::Time::SecToMsec(*(this + 40));
      return ot::TimerMilli::Start((v3 + 16), v2);
    }

    else
    {
      return ot::TimerMilli::Stop((this + 16));
    }
  }

  return this;
}

uint64_t ot::Utils::ChannelManager::HandleDatasetUpdateDone(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = " since current ActiveDataset is more recent";
    if (a2 != 24)
    {
      v9 = "";
    }

    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Canceling channel change to %d%s", a3, a4, a5, a6, a7, a8, *(a1 + 10), v9);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Channel changed to %d", a3, a4, a5, a6, a7, a8, *(a1 + 10));
  }

  *(a1 + 12) = 0;
  return ot::Utils::ChannelManager::StartAutoSelectTimer(a1, v8);
}

uint64_t ot::Utils::ChannelManager::SetAutoChannelSelectionInterval(ot::Utils::ChannelManager *this, unsigned int a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  v8 = *(this + 10);
  if (a2 && v10 <= ot::Time::MsecToSec(0x7FFFFFFF))
  {
    *(this + 10) = v10;
    if ((*(this + 44) & 1) != 0 && !*(this + 12) && ot::Timer::IsRunning((this + 16)) && v8 != v10)
    {
      FireTime = ot::Timer::GetFireTime((this + 16));
      v2 = ot::Time::SecToMsec(v8);
      v7 = ot::Time::operator-(&FireTime, v2);
      v3 = ot::Time::SecToMsec(v10);
      ot::TimerMilli::StartAt((this + 16), v7, v3);
    }
  }

  else
  {
    return 7;
  }

  return v9;
}

void ot::Utils::ChannelManager::SetSupportedChannels(ot::Utils::ChannelManager *this, int a2)
{
  v16 = this;
  v15 = a2;
  v13 = this;
  v12 = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v2);
  Mask = ot::Mac::ChannelMask::GetMask(SupportedChannelMask);
  ot::Mac::ChannelMask::SetMask(v13, v12 & Mask);
  v14 = v17;
  ot::Mac::ChannelMask::ToString(v13, v17);
  v5 = ot::String<(unsigned short)45>::AsCString(v17);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Supported channels: %s", v6, v7, v8, v9, v10, v11, v5);
}

void ot::Utils::ChannelManager::SetFavoredChannels(ot::Utils::ChannelManager *this, int a2)
{
  v16 = this;
  v15 = a2;
  v13 = this;
  v12 = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v2);
  Mask = ot::Mac::ChannelMask::GetMask(SupportedChannelMask);
  ot::Mac::ChannelMask::SetMask(v13 + 1, v12 & Mask);
  v14 = v17;
  ot::Mac::ChannelMask::ToString((v13 + 4), v17);
  v5 = ot::String<(unsigned short)45>::AsCString(v17);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Favored channels: %s", v6, v7, v8, v9, v10, v11, v5);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::ChannelManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Utils::ChannelManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::ChannelManager>(a1);
}

ot::Utils::Heap *ot::Utils::Heap::Heap(ot::Utils::Heap *this)
{
  v7 = ot::Utils::Heap::BlockAt(this, 6u);
  ot::Utils::Block::SetSize(v7, 4);
  v6 = ot::Utils::Heap::BlockRight(this, v7);
  ot::Utils::Block::SetSize(v6, 64492);
  v5 = ot::Utils::Heap::BlockRight(this, v6);
  ot::Utils::Block::SetSize(v5, 0xFFFF);
  v1 = ot::Utils::Heap::BlockOffset(this, v6);
  ot::Utils::Block::SetNext(v7, v1);
  v2 = ot::Utils::Heap::BlockOffset(this, v5);
  ot::Utils::Block::SetNext(v6, v2);
  result = this;
  *this = -1044;
  return result;
}

{
  ot::Utils::Heap::Heap(this);
  return this;
}

uint64_t ot::Utils::Heap::BlockAt(ot::Utils::Heap *this, unsigned __int16 a2)
{
  return this + 2 * (a2 / 2);
}

{
  return ot::Utils::Heap::BlockAt(this, a2);
}

_WORD *ot::Utils::Block::SetSize(_WORD *this, __int16 a2)
{
  *this = a2;
  return this;
}

{
  return ot::Utils::Block::SetSize(this, a2);
}

uint64_t ot::Utils::Heap::BlockRight(ot::Utils::Heap *this, const ot::Utils::Block *a2)
{
  v4 = ot::Utils::Heap::BlockOffset(this, a2) + 4;
  Size = ot::Utils::Block::GetSize(a2);
  return ot::Utils::Heap::BlockAt(this, v4 + Size);
}

{
  return ot::Utils::Heap::BlockRight(this, a2);
}

unsigned __int16 *ot::Utils::Block::SetNext(unsigned __int16 *this, unsigned __int16 a2)
{
  *(this + *this + 2) = a2;
  return this;
}

{
  return ot::Utils::Block::SetNext(this, a2);
}

uint64_t ot::Utils::Heap::BlockOffset(ot::Utils::Heap *this, const ot::Utils::Block *a2)
{
  return (a2 - this);
}

{
  return ot::Utils::Heap::BlockOffset(this, a2);
}

uint64_t ot::Utils::Heap::CAlloc(ot::Utils::Heap *this, __int16 a2, __int16 a3)
{
  v14 = 0;
  if (a2 * a3)
  {
    v11 = ((a2 * a3 + 3) & 0xFFF8) + 4;
    v13 = ot::Utils::Heap::BlockSuper(this);
    v12 = ot::Utils::Heap::BlockNext(this, v13);
    for (i = ot::Utils::Block::GetSize(v12); i < v11; i = ot::Utils::Block::GetSize(v12))
    {
      v13 = v12;
      v12 = ot::Utils::Heap::BlockNext(this, v12);
    }

    if (ot::Utils::Block::IsFree(v12))
    {
      Next = ot::Utils::Block::GetNext(v12);
      ot::Utils::Block::SetNext(v13, Next);
      if (v11 + 4 < ot::Utils::Block::GetSize(v12))
      {
        v10 = ot::Utils::Block::GetSize(v12) - v11 - 4;
        ot::Utils::Block::SetSize(v12, v11);
        v9 = ot::Utils::Heap::BlockRight(this, v12);
        ot::Utils::Block::SetSize(v9, v10);
        ot::Utils::Block::SetNext(v9, 0);
        if (ot::Utils::Block::GetSize(v13) >= v10)
        {
          v5 = ot::Utils::Heap::BlockSuper(this);
          ot::Utils::Heap::BlockInsert(this, v5, v9);
        }

        else
        {
          ot::Utils::Heap::BlockInsert(this, v13, v9);
        }

        *this -= 4;
      }

      *this -= ot::Utils::Block::GetSize(v12);
      ot::Utils::Block::SetNext(v12, 0);
      Pointer = ot::Utils::Block::GetPointer(v12);
      bzero(Pointer, v11);
      return ot::Utils::Block::GetPointer(v12);
    }
  }

  return v14;
}

uint64_t ot::Utils::Heap::BlockSuper(ot::Utils::Heap *this)
{
  return ot::Utils::Heap::BlockAt(this, 6u);
}

{
  return ot::Utils::Heap::BlockSuper(this);
}

uint64_t ot::Utils::Heap::BlockNext(ot::Utils::Heap *this, const ot::Utils::Block *a2)
{
  Next = ot::Utils::Block::GetNext(a2);
  return ot::Utils::Heap::BlockAt(this, Next);
}

{
  return ot::Utils::Heap::BlockNext(this, a2);
}

uint64_t ot::Utils::Block::GetSize(ot::Utils::Block *this)
{
  return *this;
}

{
  return ot::Utils::Block::GetSize(this);
}

BOOL ot::Utils::Block::IsFree(ot::Utils::Block *this)
{
  v2 = 0;
  if (*this != 0xFFFF)
  {
    return ot::Utils::Block::GetNext(this) != 0;
  }

  return v2;
}

{
  return ot::Utils::Block::IsFree(this);
}

uint64_t ot::Utils::Block::GetNext(ot::Utils::Block *this)
{
  return *(this + *this + 2);
}

{
  return ot::Utils::Block::GetNext(this);
}

unsigned __int16 *ot::Utils::Heap::BlockInsert(ot::Utils::Heap *this, ot::Utils::Block *a2, ot::Utils::Block *a3)
{
  v9 = a2;
  v8 = ot::Utils::Heap::BlockNext(this, a2);
  for (i = ot::Utils::Block::GetSize(v8); i < ot::Utils::Block::GetSize(a3); i = ot::Utils::Block::GetSize(v8))
  {
    v9 = v8;
    v8 = ot::Utils::Heap::BlockNext(this, v8);
  }

  Next = ot::Utils::Block::GetNext(v9);
  ot::Utils::Block::SetNext(a3, Next);
  v5 = ot::Utils::Heap::BlockOffset(this, a3);
  return ot::Utils::Block::SetNext(v9, v5);
}

uint64_t ot::Utils::Block::GetPointer(ot::Utils::Block *this)
{
  return this + 2;
}

{
  return ot::Utils::Block::GetPointer(this);
}

ot::Utils::Block *ot::Utils::Heap::BlockPrev(ot::Utils::Heap *this, const ot::Utils::Block *a2)
{
  v5 = ot::Utils::Heap::BlockSuper(this);
  for (i = ot::Utils::Block::GetNext(v5); i != ot::Utils::Heap::BlockOffset(this, a2); i = ot::Utils::Block::GetNext(v5))
  {
    v5 = ot::Utils::Heap::BlockNext(this, v5);
  }

  return v5;
}