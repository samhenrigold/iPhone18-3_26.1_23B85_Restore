uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)5>(uint64_t result)
{
  *(result + 5) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)5>(result);
}

void ot::AsNonConst<ot::Ip6::NetworkPrefix>()
{
  ;
}

{
  ot::AsNonConst<ot::Ip6::NetworkPrefix>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)2>(uint64_t result)
{
  *(result + 2) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)2>(result);
}

void ot::AsNonConst<ot::NetworkKey>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkKey>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)3>(uint64_t result)
{
  *(result + 3) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)3>(result);
}

void ot::AsNonConst<ot::MeshCoP::NetworkName>()
{
  ;
}

{
  ot::AsNonConst<ot::MeshCoP::NetworkName>();
}

uint64_t ot::BigEndian::Read<unsigned short>(ot::BigEndian *a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::ReadUint16(a1, a2);
}

{
  return ot::BigEndian::Read<unsigned short>(a1, a2);
}

uint64_t ot::BigEndian::ReadUint16(ot::BigEndian *this, const unsigned __int8 *a2)
{
  return _byteswap_ushort(*this);
}

{
  return ot::BigEndian::ReadUint16(this, a2);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)7>(uint64_t result)
{
  *(result + 7) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)7>(result);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)9>(uint64_t result)
{
  *(result + 9) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)9>(result);
}

void ot::AsNonConst<ot::Pskc>()
{
  ;
}

{
  ot::AsNonConst<ot::Pskc>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)10>(uint64_t result)
{
  *(result + 10) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)10>(result);
}

void ot::AsNonConst<ot::SecurityPolicy>()
{
  ;
}

{
  ot::AsNonConst<ot::SecurityPolicy>();
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)0>(_BYTE *a1)
{
  return *a1 & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)0>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)1>(uint64_t a1)
{
  return *(a1 + 1) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)1>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)6>(uint64_t a1)
{
  return *(a1 + 6) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)6>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)8>(uint64_t a1)
{
  return *(a1 + 8) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)8>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)11>(uint64_t a1)
{
  return *(a1 + 11) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)11>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)4>(uint64_t a1)
{
  return *(a1 + 4) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)4>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)5>(uint64_t a1)
{
  return *(a1 + 5) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)5>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)2>(uint64_t a1)
{
  return *(a1 + 2) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)2>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)3>(uint64_t a1)
{
  return *(a1 + 3) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)3>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)7>(uint64_t a1)
{
  return *(a1 + 7) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)7>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)9>(uint64_t a1)
{
  return *(a1 + 9) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)9>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)10>(uint64_t a1)
{
  return *(a1 + 10) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)10>(a1);
}

BOOL otIp4IsAddressEqual(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otIp4Address>(a1);
  v5 = v2;
  ot::AsCoreType<otIp4Address>(a2);
  return ot::Equatable<ot::Ip4::Address>::operator==(v5, v3);
}

void ot::AsCoreType<otIp4Address>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otIp4Address>(a1);
}

{
  ot::AsCoreType<otIp4Address>(a1);
}

BOOL ot::Equatable<ot::Ip4::Address>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 4uLL) == 0;
}

{
  return ot::Equatable<ot::Ip4::Address>::operator==(a1, a2);
}

void otIp4ExtractFromIp6Address(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otIp4Address>(a3);
  v5 = v3;
  ot::AsCoreType<otIp6Address>(a2);
  ot::Ip4::Address::ExtractFromIp6Address(v5, a1, v4);
}

uint64_t otIp4FromIp4MappedIp6Address(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otIp4Address>(a2);
  v5 = v2;
  ot::AsCoreType<otIp6Address>(a1);
  return ot::Ip4::Address::ExtractFromIp4MappedIp6Address(v5, v3);
}

void otIp4ToIp4MappedIp6Address(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otIp6Address>(a2);
  v4 = v2;
  ot::AsCoreType<otIp4Address>(a1);
  ot::Ip6::Address::SetToIp4Mapped(v4, v3);
}

uint64_t otIp4AddressFromString(const char *a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("otIp4AddressFromString", "nat64_api.cpp", 155, "(aString) != nullptr");
  }

  ot::AsCoreType<otIp4Address>(a2);
  return ot::Ip4::Address::FromString(v2, a1, 0, v3);
}

uint64_t otNat64SynthesizeIp6Address(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  if (ot::NetworkData::Leader::GetPreferredNat64Prefix(v4, v11))
  {
    return 13;
  }

  else
  {
    ot::AsCoreType<otIp6Address>(v13);
    v10 = v5;
    ot::NetworkData::ExternalRouteConfig::GetPrefix(v11);
    v9 = v6;
    ot::AsCoreType<otIp4Address>(v14);
    ot::Ip6::Address::SynthesizeFromIp4Address(v10, v9, v7);
  }

  return v12;
}

void ot::NetworkData::ExternalRouteConfig::GetPrefix(ot::NetworkData::ExternalRouteConfig *this)
{
  ot::AsCoreType<otIp6Prefix>(this);
}

{
  ot::AsCoreType<otIp6Prefix>(this);
}

{
  ot::NetworkData::ExternalRouteConfig::GetPrefix(this);
}

{
  ot::NetworkData::ExternalRouteConfig::GetPrefix(this);
}

ot::StringWriter *otIp4AddressToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp4AddressToString", "nat64_api.cpp", 174, "(aBuffer) != nullptr");
  }

  ot::AsCoreType<otIp4Address>(a1);
  return ot::Ip4::Address::ToString(v3, a2, a3);
}

void ot::AsCoreType<otIp4Cidr>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otIp4Cidr>(a1);
}

{
  ot::AsCoreType<otIp4Cidr>(a1);
}

ot::StringWriter *otIp4CidrToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp4CidrToString", "nat64_api.cpp", 183, "(aBuffer) != nullptr");
  }

  ot::AsCoreType<otIp4Cidr>(a1);
  return ot::Ip4::Cidr::ToString(v3, a2, a3);
}

_BYTE *ot::MeshCoP::DatasetManager::DatasetManager(_BYTE *a1, ot::Instance *a2, char a3, void (*a4)(ot::Timer *))
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  *a1 = a3;
  a1[1] &= ~1u;
  a1[1] &= ~2u;
  ot::Time::Time((a1 + 4), 0);
  ot::TimerMicro::TimerMicro((a1 + 24), a2, a4);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(a1 + 6);
  ot::MeshCoP::Dataset::Dataset((a1 + 64));
  ot::MeshCoP::Timestamp::SetToInvalid((a1 + 8));
  ot::MeshCoP::Timestamp::SetToInvalid((a1 + 16));
  ot::MeshCoP::Dataset::Clear((a1 + 64));
  return a1;
}

{
  ot::MeshCoP::DatasetManager::DatasetManager(a1, a2, a3, a4);
  return a1;
}

void ot::MeshCoP::PendingDatasetManager::HandleDelayTimer(ot::MeshCoP::PendingDatasetManager *this)
{
  v14[1] = this;
  ot::MeshCoP::Dataset::Dataset(v17);
  if (!ot::MeshCoP::DatasetManager::Read(this, v17))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "Pending delay timer expired", v1, v2, v3, v4, v5, v6);
    if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v17, v14))
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
      if (ot::MeshCoP::Timestamp::operator>(v14, Timestamp, v9))
      {
        v13 = 1;
      }

      else
      {
        if (ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(v17, &v16))
        {
          goto LABEL_9;
        }

        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
        ot::KeyManager::GetNetworkKey(v10, &v15);
        v13 = ot::Unequatable<ot::NetworkKey>::operator!=(&v15, &v16);
      }

      if (v13)
      {
        ot::MeshCoP::Dataset::RemoveTlv(v17, 0x33u);
        ot::MeshCoP::Dataset::RemoveTlv(v17, 0x34u);
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
        ot::MeshCoP::DatasetManager::Save(v11, v17, 1);
        IgnoreError();
      }
    }
  }

LABEL_9:
  ot::MeshCoP::DatasetManager::Clear(this);
}

uint64_t ot::MeshCoP::DatasetManager::Restore(ot::MeshCoP::DatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v4);
  v3 = ot::MeshCoP::DatasetManager::Read(this, v4);
  ot::MeshCoP::DatasetManager::Restore(this, v4);
  return v3;
}

uint64_t ot::MeshCoP::DatasetManager::Read(ot::MeshCoP::DatasetManager *this, ot::MeshCoP::Dataset *a2)
{
  ot::MeshCoP::Dataset::Clear(a2);
  if (*(this + 318))
  {
    memcpy(a2, this + 64, 0x104uLL);
    v9 = 0;
    if (*this)
    {
      ot::MeshCoP::Dataset::FindTlv(a2, 0x34u);
      v8 = v3;
      if (!v3)
      {
        return v9;
      }

      v4 = ot::MeshCoP::DelayTimerTlv::CalculateRemainingDelay(v3, *(this + 1));
      v2 = ot::Tlv::WriteValueAs<ot::MeshCoP::DelayTimerTlv>(v8, v4, v5);
    }

    else
    {
      ot::MeshCoP::Dataset::RemoveTlv(a2, 0x33u);
      v2 = ot::MeshCoP::Dataset::RemoveTlv(a2, 0x34u);
    }

    *(a2 + 64) = ot::TimerMilli::GetNow(v2);
    return v9;
  }

  return 23;
}

void ot::MeshCoP::DatasetManager::Restore(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  ot::TimerMilli::Stop((this + 24));
  ot::MeshCoP::Timestamp::SetToInvalid(this + 16);
  ot::MeshCoP::Timestamp::SetToInvalid(this + 8);
  if (ot::MeshCoP::Dataset::GetLength(a2))
  {
    *(this + 1) = *(this + 1) & 0xFE | 1;
    if (!ot::MeshCoP::Dataset::ReadTimestamp(a2, *this, this + 1))
    {
      *(this + 2) = *(this + 1);
    }

    if (ot::MeshCoP::DatasetManager::IsActiveDataset(this))
    {
      ot::MeshCoP::DatasetManager::ApplyConfiguration(this, a2);
      IgnoreError();
    }

    ot::MeshCoP::DatasetManager::SignalDatasetChange(this);
  }
}

BOOL ot::MeshCoP::DatasetManager::IsActiveDataset(ot::MeshCoP::DatasetManager *this)
{
  return *this == 0;
}

{
  return ot::MeshCoP::DatasetManager::IsActiveDataset(this);
}

uint64_t ot::MeshCoP::DatasetManager::ApplyConfiguration(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  v57 = this;
  v56 = a2;
  v50 = this;
  v55 = ot::MeshCoP::Dataset::ValidateTlvs(a2);
  if (!v55)
  {
    ot::MeshCoP::Dataset::GetTlvsStart(v56);
    for (i = v2; ; i = v36)
    {
      v49 = i;
      TlvsEnd = ot::MeshCoP::Dataset::GetTlvsEnd(v56);
      if (v49 >= TlvsEnd)
      {
        break;
      }

      Type = ot::MeshCoP::Tlv::GetType(i);
      if (Type)
      {
        switch(Type)
        {
          case 1:
            v44 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v50);
            v22 = ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(i, v21);
            ot::Mac::Mac::SetPanId(v44, v22);
            break;
          case 2:
            v43 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(v50);
            v23 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(i);
            ot::MeshCoP::ExtendedPanIdManager::SetExtPanId(v43, v23);
            break;
          case 3:
            v42 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(v50);
            ot::As<ot::MeshCoP::NetworkNameTlv>();
            v52[0] = ot::MeshCoP::NetworkNameTlv::GetNetworkName(v24);
            v52[1] = v25;
            ot::MeshCoP::NetworkNameManager::SetNetworkName(v42, v52);
            IgnoreError();
            break;
          case 4:
            v40 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(v50);
            v27 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(i);
            ot::KeyManager::SetPskc(v40, v27);
            break;
          case 5:
            v41 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(v50);
            v26 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(i);
            ot::KeyManager::SetNetworkKey(v41, v26);
            break;
          case 7:
            v39 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v50);
            v28 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(i);
            ot::Mle::Mle::SetMeshLocalPrefix(v39, v28);
            break;
          case 12:
            v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(v50);
            ot::As<ot::MeshCoP::SecurityPolicyTlv>();
            SecurityPolicy = ot::MeshCoP::SecurityPolicyTlv::GetSecurityPolicy(v29);
            ot::KeyManager::SetSecurityPolicy(v38, &SecurityPolicy, v30, v31, v32, v33, v34, v35);
            break;
          case 74:
            v45 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v50);
            ot::As<ot::MeshCoP::WakeupChannelTlv>();
            Channel = ot::MeshCoP::WakeupChannelTlv::GetChannel(v18, v19);
            ot::Mac::Mac::SetWorChannel(v45, Channel);
            break;
        }
      }

      else
      {
        v4 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(i);
        v53 = ot::Mle::ChannelTlvValue::GetChannel(v4, v5);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v50);
        v55 = ot::Mac::Mac::SetPanChannel(v6, v53);
        if (v55)
        {
          v47 = v53;
          v7 = ot::ErrorToString(v55);
          ot::Logger::LogAtLevel<(ot::LogLevel)1>("DatasetManager", "Failed to set channel to %u when applying dataset: %s", v8, v9, v10, v11, v12, v13, v47, v7);
        }

        ot::MeshCoP::Dataset::FindTlv(v56, 0x4Au);
        if (!v14)
        {
          v46 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v50);
          v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v50);
          SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v15);
          WakeupChannel = ot::Mac::ChannelMask::GetWakeupChannel(SupportedChannelMask);
          ot::Mac::Mac::SetWorChannel(v46, WakeupChannel);
        }
      }

      ot::MeshCoP::Tlv::GetNext(i);
    }
  }

  return v55;
}

void ot::MeshCoP::DatasetManager::SignalDatasetChange(ot::MeshCoP::DatasetManager *this)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  if (ot::MeshCoP::DatasetManager::IsActiveDataset(this))
  {
    v1 = 0x10000000;
  }

  else
  {
    v1 = 0x20000000;
  }

  ot::Notifier::Signal(v3, v1);
}

uint64_t ot::Tlv::WriteValueAs<ot::MeshCoP::DelayTimerTlv>(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  return ot::BigEndian::Write<unsigned int>(a2, (a1 + 2), a3);
}

{
  return ot::Tlv::WriteValueAs<ot::MeshCoP::DelayTimerTlv>(a1, a2, a3);
}

uint64_t ot::MeshCoP::DatasetManager::Read(ot::MeshCoP::DatasetManager *this, ot::MeshCoP::Dataset::Info *a2)
{
  ot::MeshCoP::Dataset::Dataset(v6);
  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(a2);
  v4 = ot::MeshCoP::DatasetManager::Read(this, v6);
  if (!v4)
  {
    ot::MeshCoP::Dataset::ConvertTo(v6, a2);
  }

  return v4;
}

uint64_t ot::MeshCoP::DatasetManager::Read(ot::MeshCoP::DatasetManager *a1, _BYTE *a2)
{
  ot::MeshCoP::Dataset::Dataset(v6);
  ot::ClearAllBytes<otOperationalDatasetTlvs>(a2);
  v4 = ot::MeshCoP::DatasetManager::Read(a1, v6);
  if (!v4)
  {
    ot::MeshCoP::Dataset::ConvertTo(v6, a2);
  }

  return v4;
}

void *ot::ClearAllBytes<otOperationalDatasetTlvs>(void *a1)
{
  return memset(a1, 0, 0xFFuLL);
}

{
  return ot::ClearAllBytes<otOperationalDatasetTlvs>(a1);
}

uint64_t ot::MeshCoP::DatasetManager::ApplyConfiguration(ot::MeshCoP::DatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v4);
  v3 = ot::MeshCoP::DatasetManager::Read(this, v4);
  if (!v3)
  {
    return ot::MeshCoP::DatasetManager::ApplyConfiguration(this, v4);
  }

  return v3;
}

void ot::MeshCoP::DatasetManager::Clear(ot::MeshCoP::DatasetManager *this)
{
  ot::MeshCoP::Timestamp::SetToInvalid(this + 16);
  ot::MeshCoP::Timestamp::SetToInvalid(this + 8);
  *(this + 1) &= ~1u;
  ot::MeshCoP::Dataset::Clear(this + 64);
  ot::TimerMilli::Stop((this + 24));
  if (ot::MeshCoP::DatasetManager::IsPendingDataset(this))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
    ot::TimerMilli::Stop((v1 + 328));
  }

  ot::MeshCoP::DatasetManager::SignalDatasetChange(this);
}

BOOL ot::MeshCoP::DatasetManager::IsPendingDataset(ot::MeshCoP::DatasetManager *this)
{
  return *this == 1;
}

{
  return ot::MeshCoP::DatasetManager::IsPendingDataset(this);
}

uint64_t ot::MeshCoP::DatasetManager::Save(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2, char a3)
{
  v8 = 0;
  if (ot::MeshCoP::Dataset::ReadTimestamp(a2, *this, this + 2) || !ot::MeshCoP::DatasetManager::IsActiveDataset(this) || (v8 = ot::MeshCoP::DatasetManager::ApplyConfiguration(this, a2)) == 0)
  {
    v7 = ot::MeshCoP::Timestamp::Compare((this + 16), (this + 8), v3);
    if (v7 > 0 || (a3 & 1) != 0)
    {
      ot::MeshCoP::DatasetManager::LocalSave(this, a2);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::IncrementVersionAndStableVersion(v4);
    }

    else if (v7 < 0)
    {
      ot::TimerMilli::Start((this + 24), 0x1388u);
    }

    ot::MeshCoP::DatasetManager::SignalDatasetChange(this);
  }

  return v8;
}

void ot::MeshCoP::DatasetManager::LocalSave(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  v25 = this;
  v24 = a2;
  v22 = this;
  if (ot::MeshCoP::Dataset::GetLength(a2))
  {
    memcpy(v22 + 64, v24, 0x104uLL);
    v10 = v22;
    *(v22 + 1) = *(v22 + 1) & 0xFE | 1;
    v11 = ot::MeshCoP::Dataset::TypeToString(*v10);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "%s dataset set", v12, v13, v14, v15, v16, v17, v11);
  }

  else
  {
    ot::MeshCoP::Dataset::Clear(v22 + 64);
    v2 = v22;
    *(v22 + 1) &= ~1u;
    v3 = ot::MeshCoP::Dataset::TypeToString(*v2);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "%s dataset deleted", v4, v5, v6, v7, v8, v9, v3);
  }

  Timestamp = ot::MeshCoP::Dataset::ReadTimestamp(v24, *v22, v22 + 1);
  if (Timestamp)
  {
    Timestamp = ot::MeshCoP::Timestamp::SetToInvalid(v22 + 8);
  }

  Now = ot::TimerMilli::GetNow(Timestamp);
  v20 = v22;
  v23 = Now;
  *(v22 + 1) = Now;
  if (ot::MeshCoP::DatasetManager::IsPendingDataset(v20))
  {
    v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(v22);
    ot::MeshCoP::PendingDatasetManager::StartDelayTimer(v21, v24);
  }
}

void ot::MeshCoP::DatasetManager::SaveLocal(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset::Info *a2)
{
  ot::MeshCoP::Dataset::Dataset(v4);
  ot::MeshCoP::Dataset::SetFrom(v4, a2);
  ot::MeshCoP::DatasetManager::SaveLocal(this, v4);
}

void ot::MeshCoP::DatasetManager::SaveLocal(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  ot::MeshCoP::DatasetManager::LocalSave(this, a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Role = ot::Mle::Mle::GetRole(v2);
  if (Role)
  {
    if (Role == 2 || Role == 3)
    {
      ot::MeshCoP::DatasetManager::SyncLocalWithLeader(this, a2);
    }

    else if (Role == 4)
    {
      ot::MeshCoP::DatasetManager::Restore(this, a2);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::IncrementVersionAndStableVersion(v3);
    }
  }

  else
  {
    ot::MeshCoP::DatasetManager::Restore(this, a2);
  }

  ot::MeshCoP::DatasetManager::SignalDatasetChange(this);
}

uint64_t ot::MeshCoP::DatasetManager::SaveLocal(ot::MeshCoP::DatasetManager *a1, uint64_t a2)
{
  v4 = 7;
  ot::MeshCoP::Dataset::Dataset(v6);
  if (!ot::MeshCoP::Dataset::SetFrom(v6, a2) && !ot::MeshCoP::Dataset::ValidateTlvs(v6))
  {
    ot::MeshCoP::DatasetManager::SaveLocal(a1, v6);
    return 0;
  }

  return v4;
}

void ot::MeshCoP::DatasetManager::SyncLocalWithLeader(_BYTE *this, const ot::MeshCoP::Dataset *a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  if ((this[1] & 2) != 0)
  {
    v9 = 5;
  }

  else
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::IsChild(v2) || (v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this), ot::Mle::Mle::IsRouter(v4)))
    {
      if (ot::MeshCoP::Timestamp::operator<((this + 16), (this + 8), v3))
      {
        if (ot::MeshCoP::DatasetManager::IsActiveDataset(this) && (ot::MeshCoP::Dataset::Dataset(v12), v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this), ot::MeshCoP::DatasetManager::Read(v5, v12), IgnoreError(), !ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v12, &v8)) && ot::MeshCoP::Timestamp::operator==(&v8, (this + 8), v6))
        {
          v9 = 13;
        }

        else
        {
          v9 = ot::MeshCoP::DatasetManager::SendSetRequest(this, v10);
        }
      }

      else
      {
        v9 = 24;
      }
    }

    else
    {
      v9 = 13;
    }
  }

  if (v9 == 3)
  {
    ot::TimerMilli::Start((this + 24), 0x1388u);
  }

  if (v9 != 24)
  {
    ot::Logger::LogOnError("DatasetManager", v9, "send Dataset set to leader");
  }
}

void ot::MeshCoP::PendingDatasetManager::StartDelayTimer(ot::MeshCoP::PendingDatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  v14 = this;
  v13 = a2;
  v10 = this;
  v12 = 0;
  ot::TimerMilli::Stop((this + 328));
  if (!ot::MeshCoP::Dataset::Read<ot::MeshCoP::DelayTimerTlv>(v13, &v12))
  {
    v12 = ot::Min<unsigned int>(v12, 0xF731400u);
    v9 = v10 + 328;
    UpdateTime = ot::MeshCoP::Dataset::GetUpdateTime(v13);
    ot::TimerMilli::StartAt((v10 + 328), UpdateTime, v12);
    v2 = ot::ToUlong(v12);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "delay timer started %lu", v3, v4, v5, v6, v7, v8, v2);
  }
}

uint64_t ot::MeshCoP::DatasetManager::GetChannelMask(ot::MeshCoP::DatasetManager *this, ot::Mac::ChannelMask *a2)
{
  v14 = this;
  v13 = a2;
  v11 = 0;
  v10 = 0;
  ot::MeshCoP::Dataset::Dataset(v15);
  v12 = ot::MeshCoP::DatasetManager::Read(this, v15);
  if (!v12)
  {
    ot::MeshCoP::Dataset::FindTlv(v15, 0x35u);
    ot::As<ot::MeshCoP::ChannelMaskTlv>();
    v11 = v2;
    if (v2)
    {
      if (!ot::MeshCoP::ChannelMaskTlv::ReadChannelMask(v11, &v10))
      {
        v8 = v13;
        v7 = v10;
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v3);
        Mask = ot::Mac::ChannelMask::GetMask(SupportedChannelMask);
        ot::Mac::ChannelMask::SetMask(v8, v7 & Mask);
        if (ot::Mac::ChannelMask::IsEmpty(v13))
        {
          return 23;
        }
      }
    }

    else
    {
      return 23;
    }
  }

  return v12;
}

void ot::MeshCoP::DatasetManager::HandleTimer(ot::MeshCoP::DatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v2);
  if (!ot::MeshCoP::DatasetManager::Read(this, v2))
  {
    ot::MeshCoP::DatasetManager::SyncLocalWithLeader(this, v2);
  }
}

BOOL ot::MeshCoP::Timestamp::operator<(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) < 0;
}

{
  return ot::MeshCoP::Timestamp::operator<(a1, a2, a3);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0xEu);
  if (v2)
  {
    *a2 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(a1, a2);
}

BOOL ot::MeshCoP::Timestamp::operator==(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) == 0;
}

{
  return ot::MeshCoP::Timestamp::operator==(a1, a2, a3);
}

uint64_t ot::MeshCoP::DatasetManager::SendSetRequest(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  v22 = this;
  v21 = a2;
  appended = 0;
  v19 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v18, Instance);
  if ((*(this + 1) & 2) != 0)
  {
    appended = 24;
  }

  else
  {
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    if (ot::MeshCoP::DatasetManager::IsActiveDataset(this))
    {
      v3 = 13;
    }

    else
    {
      v3 = 28;
    }

    v19 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v16, v3);
    if (v19)
    {
      v15 = v19;
      ot::MeshCoP::Dataset::GetBytes(v21);
      v14 = v4;
      Length = ot::MeshCoP::Dataset::GetLength(v21);
      appended = ot::Message::AppendBytes(v15, v14, Length);
      if (!appended)
      {
        ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v18);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
        appended = ot::Coap::CoapBase::SendMessage(v6, v19, v18, ot::MeshCoP::DatasetManager::HandleMgmtSetResponse, this);
        if (!appended)
        {
          *(this + 1) = *(this + 1) & 0xFD | 2;
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "Sent dataset set request to leader", v7, v8, v9, v10, v11, v12);
        }
      }
    }

    else
    {
      appended = 3;
    }
  }

  if (appended && v19)
  {
    ot::Message::Free(v19);
  }

  return appended;
}

uint64_t ot::MeshCoP::DatasetManager::HandleMgmtSetResponse(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoapMessagePtr();
  v11 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::MeshCoP::DatasetManager::HandleMgmtSetResponse(a1, v11, v5, a4, v6, v7, v8, v9);
}

uint64_t ot::MeshCoP::DatasetManager::HandleMgmtSetResponse(uint64_t a1, const ot::Message *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18[1] = a4;
  v17 = 0;
  v18[0] = a4;
  if (!a4)
  {
    if (!ot::Tlv::Find<ot::MeshCoP::StateTlv>(v20, &v17) && v17)
    {
      if (v17 == 255)
      {
        v18[0] = 37;
      }
    }

    else
    {
      v18[0] = 6;
    }
  }

  if (v18[0])
  {
    v15 = ot::ErrorToString(v18[0]);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "MGMT_SET finished: %s", v8, v9, v10, v11, v12, v13, v15);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "MGMT_SET finished: %s", a3, a4, a5, a6, a7, a8, "Accepted");
  }

  *(a1 + 1) &= ~2u;
  ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeAndClearIfSet<otError&>((a1 + 48), v18);
  return ot::TimerMilli::Start((a1 + 24), 0x1388u);
}

void *ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeAndClearIfSet<otError&>(_OWORD *a1, unsigned int *a2)
{
  v5 = a1;
  v4 = a2;
  v3 = *a1;
  ot::CallbackBase<void (*)(otError,void *)>::Clear(a1);
  return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(&v3, v4);
}

{
  return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeAndClearIfSet<otError&>(a1, a2);
}

void ot::MeshCoP::DatasetManager::HandleGet(ot::MeshCoP::DatasetManager *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  v16 = this;
  v18 = 0;
  Request = ot::MeshCoP::DatasetManager::ProcessGetRequest(this, a2, 0);
  if (Request)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v16);
    v18 = ot::Coap::CoapBase::SendMessage(v3, Request, v19);
    if (!v18)
    {
      IsActiveDataset = ot::MeshCoP::DatasetManager::IsActiveDataset(v16);
      v5 = "active";
      if (!IsActiveDataset)
      {
        v5 = "pending";
      }

      v15 = v5;
      ot::Ip6::MessageInfo::GetPeerAddr(v19);
      v14 = v22;
      ot::Ip6::Address::ToString(v22, v6);
      v7 = ot::String<(unsigned short)40>::AsCString(v22);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "sent %s dataset get response to %s", v8, v9, v10, v11, v12, v13, v15, v7);
    }
  }

  if (v18)
  {
    if (Request)
    {
      ot::Message::Free(Request);
    }
  }
}

ot::Message *ot::MeshCoP::DatasetManager::ProcessGetRequest(ot::MeshCoP::DatasetManager *a1, ot::Tlv *a2, char a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = 0;
  v16 = 0;
  ot::MeshCoP::Dataset::Dataset(v22);
  ot::MeshCoP::DatasetManager::TlvList::TlvList(v21);
  if (!ot::Tlv::FindTlvValueOffsetRange(v19, 0xD, &v15, v3))
  {
    while (!ot::OffsetRange::IsEmpty(&v15))
    {
      v14 = 0;
      ot::Message::Read<unsigned char>(v19, &v15, &v14);
      IgnoreError();
      ot::MeshCoP::DatasetManager::TlvList::Add(v21, v14);
      ot::OffsetRange::AdvanceOffset(&v15, 1u);
    }

    if (!ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(v21) && ot::MeshCoP::DatasetManager::IsPendingDataset(a1))
    {
      ot::MeshCoP::DatasetManager::TlvList::Add(v21, 52);
    }
  }

  ot::MeshCoP::DatasetManager::Read(a1, v22);
  IgnoreError();
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v16 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, v19);
  if (v16)
  {
    ot::MeshCoP::Dataset::GetTlvsStart(v22);
    for (i = v5; ; i = v7)
    {
      v9 = i;
      if (v9 >= ot::MeshCoP::Dataset::GetTlvsEnd(v22))
      {
        break;
      }

      v12 = 1;
      if (!ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(v21))
      {
        Type = ot::MeshCoP::Tlv::GetType(i);
        v12 = ot::Array<unsigned char,(unsigned short)64,unsigned char>::Contains(v21, &Type);
      }

      if (!v18 && ot::MeshCoP::Tlv::GetType(i) == 5)
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
        if ((*(ot::KeyManager::GetSecurityPolicy(v6) + 2) & 1) == 0)
        {
          v12 = 0;
        }
      }

      if (v12)
      {
        v17 = ot::Tlv::AppendTo(i, v16);
        if (v17)
        {
          break;
        }
      }

      ot::MeshCoP::Tlv::GetNext(i);
    }
  }

  else
  {
    v17 = 3;
  }

  if (v17 && v16)
  {
    ot::Message::Free(v16);
    return 0;
  }

  return v16;
}

ot::MeshCoP::DatasetManager::TlvList *ot::MeshCoP::DatasetManager::TlvList::TlvList(ot::MeshCoP::DatasetManager::TlvList *this)
{
  ot::MeshCoP::DatasetManager::TlvList::TlvList(this);
  return this;
}

{
  ot::Array<unsigned char,(unsigned short)64,unsigned char>::Array(this);
  return this;
}

uint64_t ot::Message::Read<unsigned char>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 1u);
}

{
  return ot::Message::Read<unsigned char>(a1, a2, a3);
}

void ot::MeshCoP::DatasetManager::TlvList::Add(ot::MeshCoP::DatasetManager::TlvList *this, char a2)
{
  v4 = this;
  v3 = a2;
  if (!ot::Array<unsigned char,(unsigned short)64,unsigned char>::Contains(this, &v3))
  {
    ot::Array<unsigned char,(unsigned short)64,unsigned char>::PushBack(this, &v3);
    IgnoreError();
  }
}

BOOL ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(uint64_t a1)
{
  return *(a1 + 64) == 0;
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(a1);
}

BOOL ot::Array<unsigned char,(unsigned short)64,unsigned char>::Contains(uint64_t a1, unsigned __int8 *a2)
{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::Find(a1, a2) != 0;
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::Contains(a1, a2);
}

uint64_t ot::KeyManager::GetSecurityPolicy(ot::KeyManager *this)
{
  return this + 140;
}

{
  return ot::KeyManager::GetSecurityPolicy(this);
}

uint64_t ot::MeshCoP::DatasetManager::SendSetRequest(ot::MeshCoP::DatasetManager *a1, const ot::MeshCoP::Dataset::Info *a2, const unsigned __int8 *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  ot::MeshCoP::Dataset::Dataset(v17);
  ot::MeshCoP::Dataset::SetFrom(v17, a2);
  appended = ot::MeshCoP::Dataset::AppendTlvsFrom(v17, a3, a4);
  if (!appended)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
    if (!ot::MeshCoP::Commissioner::IsActive(v6) || ot::MeshCoP::Dataset::ContainsTlv(v17, 0xBu) || (v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1), SessionId = ot::MeshCoP::Commissioner::GetSessionId(v7), (appended = ot::MeshCoP::Dataset::Write<ot::MeshCoP::CommissionerSessionIdTlv>(v17, SessionId)) == 0))
    {
      appended = ot::MeshCoP::DatasetManager::SendSetRequest(a1, v17);
      if (!appended)
      {
        ot::CallbackBase<void (*)(otError,void *)>::Set(a1 + 6, a5, a6);
      }
    }
  }

  return appended;
}

uint64_t ot::MeshCoP::Dataset::Write<ot::MeshCoP::CommissionerSessionIdTlv>(uint64_t a1, unsigned __int16 a2)
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap<unsigned short>(a2, a2);
  return ot::MeshCoP::Dataset::WriteTlv(a1, 0xBu, v4, 2u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

void *ot::CallbackBase<void (*)(otError,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,void *)>::Set(result, a2, a3);
}

uint64_t ot::MeshCoP::DatasetManager::SendGetRequest(ot::InstanceLocator *a1, _BYTE *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  appended = 0;
  v24 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v23, Instance);
  ot::MeshCoP::DatasetManager::TlvList::TlvList(v31);
  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)0>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 14);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)1>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 51);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)2>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 5);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)3>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 3);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)4>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 2);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)5>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 7);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)6>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 52);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)7>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 1);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)8>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 0);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)9>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 4);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)10>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 12);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)11>(v29))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, 53);
  }

  for (i = 0; i < v27; ++i)
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v31, *(v28 + i));
  }

  v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  if (ot::MeshCoP::DatasetManager::IsActiveDataset(a1))
  {
    v6 = 11;
  }

  else
  {
    v6 = 26;
  }

  v24 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v20, v6);
  if (v24)
  {
    if (ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(v31) || (v19 = v24, ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetArrayBuffer(), v18 = v7, Length = ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetLength(v31), (appended = ot::Tlv::AppendTlv(v19, 0xD, v18, Length)) == 0))
    {
      ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v23);
      if (v26)
      {
        ot::AsCoreType<otIp6Address>(v26);
        ot::Ip6::MessageInfo::SetPeerAddr(v23, v9);
      }

      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      appended = ot::Coap::CoapBase::SendMessage(v10, v24, v23);
      if (!appended)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "sent dataset get request", v11, v12, v13, v14, v15, v16);
      }
    }
  }

  else
  {
    appended = 3;
  }

  if (appended && v24)
  {
    ot::Message::Free(v24);
  }

  return appended;
}

void ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetArrayBuffer()
{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetArrayBuffer();
}

uint64_t ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 64);
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetLength(a1);
}

uint64_t ot::Array<unsigned char,(unsigned short)64,unsigned char>::PushBack(uint64_t a1, char *a2)
{
  if (ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsFull(a1))
  {
    return 3;
  }

  else
  {
    v2 = *a2;
    v3 = (*(a1 + 64))++;
    *(a1 + v3) = v2;
    return 0;
  }
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::PushBack(a1, a2);
}

ot::MeshCoP::ActiveDatasetManager *ot::MeshCoP::ActiveDatasetManager::ActiveDatasetManager(ot::MeshCoP::ActiveDatasetManager *this, ot::Instance *a2)
{
  ot::MeshCoP::DatasetManager::DatasetManager(this, a2, 0, ot::MeshCoP::ActiveDatasetManager::HandleTimer);
  return this;
}

{
  ot::MeshCoP::ActiveDatasetManager::ActiveDatasetManager(this, a2);
  return this;
}

BOOL ot::MeshCoP::ActiveDatasetManager::IsPartiallyComplete(ot::MeshCoP::ActiveDatasetManager *this)
{
  LOBYTE(v2) = 0;
  if (*(this + 1))
  {
    return !ot::MeshCoP::Timestamp::IsValid((this + 16));
  }

  return v2;
}

BOOL ot::MeshCoP::ActiveDatasetManager::IsComplete(ot::MeshCoP::ActiveDatasetManager *this)
{
  v2 = 0;
  if (*(this + 1))
  {
    return ot::MeshCoP::Timestamp::IsValid((this + 16));
  }

  return v2;
}

uint64_t ot::MeshCoP::ActiveDatasetManager::IsCommissioned(ot::MeshCoP::ActiveDatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v4);
  v3 = 0;
  if (!ot::MeshCoP::DatasetManager::Read(this, v4))
  {
    v3 = ot::MeshCoP::Dataset::ContainsAllTlvs(v4, &ot::MeshCoP::ActiveDatasetManager::IsCommissioned(void)const::kRequiredTlvs, 5u);
  }

  return v3 & 1;
}

void ot::MeshCoP::ActiveDatasetManager::HandleTimer(ot::MeshCoP::ActiveDatasetManager *this)
{
  ot::MeshCoP::DatasetManager::HandleTimer(this);
}

{
  ot::MeshCoP::ActiveDatasetManager::HandleTimer(this);
}

ot::MeshCoP::PendingDatasetManager *ot::MeshCoP::PendingDatasetManager::PendingDatasetManager(ot::MeshCoP::PendingDatasetManager *this, ot::Instance *a2)
{
  ot::MeshCoP::DatasetManager::DatasetManager(this, a2, 1, ot::MeshCoP::PendingDatasetManager::HandleTimer);
  ot::TimerMilliIn<ot::MeshCoP::PendingDatasetManager,&ot::MeshCoP::PendingDatasetManager::HandleDelayTimer>::TimerMilliIn((this + 328), a2);
  return this;
}

{
  ot::MeshCoP::PendingDatasetManager::PendingDatasetManager(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::PendingDatasetManager,&ot::MeshCoP::PendingDatasetManager::HandleDelayTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::PendingDatasetManager,&ot::MeshCoP::PendingDatasetManager::HandleDelayTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::PendingDatasetManager,&ot::MeshCoP::PendingDatasetManager::HandleDelayTimer>::HandleTimer);
  return a1;
}

void ot::MeshCoP::PendingDatasetManager::StartDelayTimer(ot::MeshCoP::PendingDatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v2);
  ot::TimerMilli::Stop((this + 328));
  if (!ot::MeshCoP::DatasetManager::Read(this, v2))
  {
    ot::MeshCoP::PendingDatasetManager::StartDelayTimer(this, v2);
  }
}

uint64_t ot::MeshCoP::Dataset::Read<ot::MeshCoP::DelayTimerTlv>(ot::Tlv *a1, _DWORD *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0x34u);
  if (v2)
  {
    *a2 = ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(v2, v3);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::MeshCoP::DelayTimerTlv>(a1, a2);
}

BOOL ot::MeshCoP::Timestamp::operator>(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) > 0;
}

{
  return ot::MeshCoP::Timestamp::operator>(a1, a2, a3);
}

uint64_t ot::MeshCoP::DatasetManager::GetTimestamp(ot::MeshCoP::DatasetManager *this)
{
  return this + 16;
}

{
  return ot::MeshCoP::DatasetManager::GetTimestamp(this);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(ot::Tlv *a1, _OWORD *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 5u);
  if (v2)
  {
    *a2 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(v2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(a1, a2);
}

BOOL ot::Unequatable<ot::NetworkKey>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::NetworkKey>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::NetworkKey>::operator!=(a1, a2);
}

void ot::MeshCoP::PendingDatasetManager::HandleTimer(ot::MeshCoP::PendingDatasetManager *this)
{
  ot::MeshCoP::DatasetManager::HandleTimer(this);
}

{
  ot::MeshCoP::PendingDatasetManager::HandleTimer(this);
}

uint64_t ot::BigEndian::Write<unsigned int>(unsigned int a1, _BYTE *a2, unsigned __int8 *a3)
{
  return ot::BigEndian::WriteUint32(a1, a2, a3);
}

{
  return ot::BigEndian::Write<unsigned int>(a1, a2, a3);
}

void *ot::CallbackBase<void (*)(otError,void *)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,void *)>::Clear(result);
}

void *ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::Invoke<otError&>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(result, a2);
}

uint64_t ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::Invoke<otError&>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::Invoke<otError&>(a1, a2);
}

unsigned __int8 *ot::Array<unsigned char,(unsigned short)64,unsigned char>::Find(uint64_t a1, unsigned __int8 *a2)
{
  v7 = 0;
  ot::Array<unsigned char,(unsigned short)64,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<unsigned char,(unsigned short)64,unsigned char>::end(a1);
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
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::Find(a1, a2);
}

void ot::Array<unsigned char,(unsigned short)64,unsigned char>::begin()
{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)64,unsigned char>::begin();
}

uint64_t ot::Array<unsigned char,(unsigned short)64,unsigned char>::end(uint64_t a1)
{
  return a1 + *(a1 + 64);
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::end(a1);
}

BOOL ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 64);
  return v2 == ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetMaxSize();
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsFull(a1);
}

uint64_t ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetMaxSize()
{
  return 64;
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetMaxSize();
}

BOOL ot::Equatable<ot::NetworkKey>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x10uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkKey>::operator==(a1, a2);
}

uint64_t ot::Ip4::Address::FromString(ot::Ip4::Address *this, const char *a2, unsigned __int8 *a3, unsigned __int8 a4)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 46;
  v8 = 6;
  v7 = a2;
  for (i = 0; !ot::StringParseUint8(&v7, (this + i), a3, a4); ++i)
  {
    if (i == 3)
    {
      if (*v7 == v10)
      {
        return 0;
      }

      return v8;
    }

    if (*v7 != 46)
    {
      return v8;
    }

    ++v7;
  }

  return v8;
}

uint64_t ot::Ip4::Address::ExtractFromIp4MappedIp6Address(ot::Ip4::Address *this, const ot::Ip6::Address *a2)
{
  v5 = 0;
  if (ot::Ip6::Address::IsIp4Mapped(a2, a2))
  {
    ot::Ip6::Address::GetBytes(a2);
    ot::Ip4::Address::SetBytes(this, (v2 + 12));
  }

  else
  {
    return 6;
  }

  return v5;
}

_DWORD *ot::Ip4::Address::SetBytes(_DWORD *this, const unsigned __int8 *a2)
{
  *this = *a2;
  return this;
}

{
  return ot::Ip4::Address::SetBytes(this, a2);
}

void ot::Ip4::Address::ExtractFromIp6Address(ot::Ip4::Address *this, unsigned __int8 a2, const ot::Ip6::Address *a3)
{
  if (!ot::Ip6::Prefix::IsValidNat64PrefixLength(a2))
  {
    __assert_rtn("ExtractFromIp6Address", "ip4_types.cpp", 106, "Ip6::Prefix::IsValidNat64PrefixLength(aPrefixLength)");
  }

  v7 = a2 / 8;
  for (i = this; i != (this + 4); i = (i + 1))
  {
    if (v7 == 8)
    {
      ++v7;
    }

    ot::Ip6::Address::GetBytes(a3);
    v3 = v7++;
    *i = *(v4 + v3);
  }
}

uint64_t ot::Ip4::Address::SynthesizeFromCidrAndHost(ot::Ip4::Address *this, const ot::Ip4::Cidr *a2, unsigned int a3)
{
  v7 = *a2;
  v8 = v7 & ot::Ip4::Cidr::SubnetMask(a2, a2);
  v10 = ot::BigEndian::HostSwap32(a3, v3);
  v5 = ot::Ip4::Cidr::HostMask(a2, v4);
  result = v10;
  *this = v8 | v10 & v5;
  return result;
}

uint64_t ot::Ip4::Cidr::SubnetMask(ot::Ip4::Cidr *this, unsigned int a2)
{
  return ~ot::Ip4::Cidr::HostMask(this, a2);
}

{
  return ot::Ip4::Cidr::SubnetMask(this, a2);
}

uint64_t ot::Ip4::Cidr::HostMask(ot::Ip4::Cidr *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32((0xFFFFFFFFLL >> *(this + 4)), a2);
}

{
  return ot::Ip4::Cidr::HostMask(this, a2);
}

ot::StringWriter *ot::Ip4::Address::ToString(ot::Ip4::Address *this, char *a2, __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::StringWriter::StringWriter(v5, a2, a3);
  return ot::Ip4::Address::ToString(this, v5);
}

uint64_t ot::Ip4::Cidr::FromString(ot::Ip4::Cidr *this, ot *a2)
{
  v11 = this;
  v10 = a2;
  v9 = 47;
  v8 = 32;
  v7 = 6;
  v6 = 0;
  ot::AsCoreType<otIp4Address>(this);
  if (!ot::Ip4::Address::FromString(v2, v10, 0x2F, v3))
  {
    v6 = ot::StringFind(v10, 0x2F);
    if (v6)
    {
      v6 = (v6 + 1);
      if (!ot::StringParseUint8(&v6, (this + 4), 0x20) && !*v6)
      {
        return 0;
      }
    }
  }

  return v7;
}

ot::StringWriter *ot::Ip4::Cidr::ToString(ot::Ip4::Cidr *this, ot::StringWriter *a2)
{
  ot::AsCoreType<otIp4Address>(this);
  ot::Ip4::Address::ToString(v2, v7);
  v3 = ot::String<(unsigned short)17>::AsCString(v7);
  return ot::StringWriter::Append(a2, "%s/%d", v3, *(this + 4));
}

ot::StringWriter *ot::Ip4::Cidr::ToString(ot::Ip4::Cidr *this, char *a2, __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::StringWriter::StringWriter(v5, a2, a3);
  return ot::Ip4::Cidr::ToString(this, v5);
}

uint64_t ot::String<(unsigned short)20>::String(uint64_t a1)
{
  ot::String<(unsigned short)20>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 20);
  return a1;
}

BOOL ot::Ip4::Cidr::operator==(ot::Ip4::Cidr *a1, ot::Ip4::Cidr *a2)
{
  v7 = 0;
  if (*(a1 + 4) == *(a2 + 4))
  {
    ot::Ip4::Cidr::GetBytes(a1);
    v5 = v2;
    ot::Ip4::Cidr::GetBytes(a2);
    return ot::Ip6::Prefix::MatchLength(v5, v3, 4) >= *(a1 + 4);
  }

  return v7;
}

void ot::Ip4::Cidr::GetBytes(ot::Ip4::Cidr *this)
{
  ;
}

{
  ot::Ip4::Cidr::GetBytes(this);
}

uint64_t ot::Ip4::Cidr::Set(uint64_t this, const unsigned __int8 *a2, char a3)
{
  *this = *a2;
  *(this + 4) = a3;
  return this;
}

uint64_t ot::Ip4::Header::ParseFrom(ot::Ip4::Header *this, const ot::Message *a2)
{
  v6 = 6;
  if (!ot::Message::Read<ot::Ip4::Header>(a2, 0, this) && ot::Ip4::Header::IsValid(this))
  {
    TotalLength = ot::Ip4::Header::GetTotalLength(this, v2);
    if (TotalLength == ot::Message::GetLength(a2))
    {
      return 0;
    }
  }

  return v6;
}

uint64_t ot::Message::Read<ot::Ip4::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x14u);
}

{
  return ot::Message::Read<ot::Ip4::Header>(a1, a2, a3);
}

BOOL ot::Ip4::Header::IsValid(ot::Ip4::Header *this)
{
  return ot::Ip4::Header::IsVersion4(this);
}

{
  return ot::Ip4::Header::IsValid(this);
}

uint64_t ot::Ip4::Header::GetTotalLength(ot::Ip4::Header *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::Ip4::Header::GetTotalLength(this, a2);
}

BOOL ot::Ip4::Header::IsVersion4(ot::Ip4::Header *this)
{
  return (*this & 0xF0) == 64;
}

{
  return ot::Ip4::Header::IsVersion4(this);
}

uint64_t ot::MeshCoP::DatasetManager::ProcessSetOrReplaceRequest(ot::MeshCoP::DatasetManager *a1, char a2, ot::Message *a3, ot::MeshCoP::Dataset *a4)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = 6;
  ot::MeshCoP::Dataset::Dataset(v40);
  v28 = 0;
  v27 = 0;
  v26 = 0;
  ot::Clearable<ot::MeshCoP::DatasetManager::RequestInfo>::Clear(v33);
  ot::OffsetRange::InitFromMessageOffsetToEnd(v31, v34);
  if (!ot::MeshCoP::Dataset::SetFrom(v40, v34, v31) && !ot::MeshCoP::Dataset::ValidateTlvs(v40) && !ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v40, &v30))
  {
    if (ot::MeshCoP::DatasetManager::IsPendingDataset(a1))
    {
      if (ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(v40, &v25) || !ot::MeshCoP::Timestamp::operator>(&v25, (a1 + 8), v5))
      {
        return v32;
      }
    }

    else if (!ot::MeshCoP::Timestamp::operator>(&v30, (a1 + 8), v4))
    {
      return v32;
    }

    if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(v40, v29))
    {
      Channel = ot::Mle::ChannelTlvValue::GetChannel(v29, v6);
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      if (Channel != ot::Mac::Mac::GetPanChannel(v7))
      {
        *(v33 + 261) = 1;
      }
    }

    if (!ot::MeshCoP::Dataset::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v40, &v27))
    {
      v21 = v27;
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      if (v21 != ot::Mac::Mac::GetPanId(v8))
      {
        *(v33 + 261) = 1;
      }
    }

    if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(v40, &v39))
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v9);
      if (ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(&v39, MeshLocalPrefix))
      {
        *(v33 + 261) = 1;
      }
    }

    if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(v40, &v38))
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
      ot::KeyManager::GetNetworkKey(v11, &v37);
      if (ot::Unequatable<ot::NetworkKey>::operator!=(&v38, &v37))
      {
        *(v33 + 261) = 1;
        *(v33 + 262) = 1;
      }
    }

    if (!ot::MeshCoP::DatasetManager::IsPendingDataset(a1) || (*(v33 + 262) & 1) != 0 || (v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1), Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(v12), ot::MeshCoP::Timestamp::operator>(&v30, Timestamp, v14)))
    {
      if (!ot::MeshCoP::Dataset::Read<ot::MeshCoP::CommissionerSessionIdTlv>(v40, &v28))
      {
        v24 = 0;
        *(v33 + 260) = 1;
        ot::MeshCoP::Dataset::RemoveTlv(v40, 0xBu);
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
        if (ot::NetworkData::Leader::FindCommissioningSessionId(v15, &v24) || v24 != v28 || ot::MeshCoP::DatasetManager::IsActiveDataset(a1) && (*(v33 + 261) & 1) != 0)
        {
          return v32;
        }

        if (!v35)
        {
          active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
          ot::MeshCoP::DatasetManager::Read(active, v33);
          IgnoreError();
        }
      }

      if (v35 != 1 || (*(v33 + 260) & 1) != 0 && ot::MeshCoP::DatasetManager::IsActiveDataset(a1) && (ot::MeshCoP::Dataset::ContainsAllRequiredTlvsFor(v40, 0) & 1) != 0)
      {
        v32 = ot::MeshCoP::Dataset::WriteTlvsFrom(v33, v40);
        if (!v32 && !ot::MeshCoP::Dataset::Read<ot::MeshCoP::DelayTimerTlv>(v33, &v26))
        {
          v26 = ot::Min<unsigned int>(v26, 0xF731400u);
          if ((*(v33 + 262) & 1) != 0 && v26 < 0x493E0)
          {
            v26 = 300000;
          }

          else
          {
            v20 = v26;
            v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(a1);
            DelayTimerMinimal = ot::MeshCoP::Leader::GetDelayTimerMinimal(v17);
            v26 = ot::Max<unsigned int>(v20, DelayTimerMinimal);
          }

          ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(v33, v26);
          IgnoreError();
        }
      }
    }
  }

  return v32;
}

void ot::Clearable<ot::MeshCoP::DatasetManager::RequestInfo>::Clear(void *a1)
{
  ot::ClearAllBytes<ot::MeshCoP::DatasetManager::RequestInfo>(a1);
}

{
  ot::Clearable<ot::MeshCoP::DatasetManager::RequestInfo>::Clear(a1);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0x33u);
  if (v2)
  {
    *a2 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(v2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(ot::Tlv *a1, uint64_t a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0);
  if (v2)
  {
    v3 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(v2);
    *a2 = *v3;
    *(a2 + 2) = *(v3 + 2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(ot::Tlv *a1, _WORD *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 1u);
  if (v2)
  {
    *a2 = ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v2, v3);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(ot::Tlv *a1, void *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 7u);
  if (v2)
  {
    *a2 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(v2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::MeshCoP::CommissionerSessionIdTlv>(ot::Tlv *a1, _WORD *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0xBu);
  if (v2)
  {
    *a2 = ot::Tlv::ReadValueAs<ot::MeshCoP::CommissionerSessionIdTlv>(v2, v3);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::Leader>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(a1);
}

uint64_t ot::MeshCoP::DatasetManager::HandleSetOrReplace(ot::MeshCoP::DatasetManager *a1, char a2, ot::Message *a3, const ot::Ip6::MessageInfo *a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = -1;
  ot::MeshCoP::DatasetManager::RequestInfo::RequestInfo(v20);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (!ot::Mle::Mle::IsLeader(v4) || ot::MeshCoP::DatasetManager::ProcessSetOrReplaceRequest(a1, v18, v17, v20))
  {
    goto LABEL_11;
  }

  if (ot::MeshCoP::DatasetManager::IsActiveDataset(a1) && (v20[261] & 1) != 0)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
    ot::MeshCoP::PendingDatasetManager::ApplyActiveDataset(v5, v20);
  }

  else
  {
    if (ot::MeshCoP::DatasetManager::Save(a1, v20))
    {
      goto LABEL_11;
    }

    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    ot::NetworkData::Leader::IncrementVersionAndStableVersion(v6);
  }

  v15 = 1;
  if ((v20[260] & 1) == 0)
  {
    v14 = 0;
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    if (!ot::NetworkData::Leader::FindCommissioningSessionId(v7, &v14))
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      ot::Mle::Mle::GetCommissionerAloc(v8, v14, &v13);
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(a1);
      ot::MeshCoP::Leader::SendDatasetChanged(v9, &v13);
    }
  }

LABEL_11:
  ot::MeshCoP::DatasetManager::SendSetOrReplaceResponse(a1, v17, v16, v15);
  if (v15 == 1)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

ot::MeshCoP::DatasetManager::RequestInfo *ot::MeshCoP::DatasetManager::RequestInfo::RequestInfo(ot::MeshCoP::DatasetManager::RequestInfo *this)
{
  ot::MeshCoP::DatasetManager::RequestInfo::RequestInfo(this);
  return this;
}

{
  ot::MeshCoP::Dataset::Dataset(this);
  return this;
}

void ot::MeshCoP::PendingDatasetManager::ApplyActiveDataset(ot::MeshCoP::PendingDatasetManager *this, ot::MeshCoP::Dataset *a2)
{
  v8 = this;
  v7 = a2;
  if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(a2, &v6) && !ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(v7, &v6))
  {
    v4 = v7;
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
    DelayTimerMinimal = ot::MeshCoP::Leader::GetDelayTimerMinimal(v2);
    if (!ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(v4, DelayTimerMinimal))
    {
      ot::MeshCoP::DatasetManager::Save(this, v7);
      IgnoreError();
      ot::MeshCoP::PendingDatasetManager::StartDelayTimer(this, v7);
    }
  }
}

uint64_t ot::MeshCoP::DatasetManager::Save(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  return ot::MeshCoP::DatasetManager::Save(this, a2, 0);
}

{
  return ot::MeshCoP::DatasetManager::Save(this, a2);
}

void ot::MeshCoP::DatasetManager::SendSetOrReplaceResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v13 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, a2);
  if (v13)
  {
    v14 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v13, a4);
    if (!v14)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      v14 = ot::Coap::CoapBase::SendMessage(v5, v13, a3);
      if (!v14)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "sent dataset set/replace response", v6, v7, v8, v9, v10, v11);
      }
    }
  }

  else
  {
    v14 = 3;
  }

  if (v14)
  {
    if (v13)
    {
      ot::Message::Free(v13);
    }
  }
}

void ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)13>(ot::MeshCoP::DatasetManager *a1, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (!ot::MeshCoP::DatasetManager::HandleSetOrReplace(a1, 0, a2, a3))
  {
    ot::MeshCoP::DatasetManager::ApplyConfiguration(a1);
    IgnoreError();
  }
}

void ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)12>(ot::MeshCoP::DatasetManager *a1, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (!ot::MeshCoP::DatasetManager::HandleSetOrReplace(a1, 1, a2, a3))
  {
    ot::MeshCoP::DatasetManager::ApplyConfiguration(a1);
    IgnoreError();
  }
}

void ot::MeshCoP::PendingDatasetManager::HandleTmf<(ot::Uri)28>(ot::MeshCoP::DatasetManager *a1, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (!ot::MeshCoP::DatasetManager::HandleSetOrReplace(a1, 0, a2, a3))
  {
    ot::MeshCoP::PendingDatasetManager::StartDelayTimer(a1);
  }
}

void ot::ClearAllBytes<ot::MeshCoP::DatasetManager::RequestInfo>(void *a1)
{
  bzero(a1, 0x108uLL);
}

{
  ot::ClearAllBytes<ot::MeshCoP::DatasetManager::RequestInfo>(a1);
}

uint64_t ot::Tlv::ReadValueAs<ot::MeshCoP::CommissionerSessionIdTlv>(uint64_t a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::Read<unsigned short>((a1 + 2), a2);
}

{
  return ot::Tlv::ReadValueAs<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

ot::MeshCoP::DatasetUpdater *ot::MeshCoP::DatasetUpdater::DatasetUpdater(ot::MeshCoP::DatasetUpdater *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 1);
  return this;
}

{
  ot::MeshCoP::DatasetUpdater::DatasetUpdater(this, a2);
  return this;
}

uint64_t ot::MeshCoP::DatasetUpdater::RequestUpdate(ot::MeshCoP::DatasetUpdater *a1, const ot::MeshCoP::Dataset::Info *a2, uint64_t a3, uint64_t a4)
{
  ot::MeshCoP::Dataset::Dataset(v9);
  ot::MeshCoP::Dataset::SetFrom(v9, a2);
  return ot::MeshCoP::DatasetUpdater::RequestUpdate(a1, v9, a3, a4);
}

uint64_t ot::MeshCoP::DatasetUpdater::RequestUpdate(ot::MeshCoP::DatasetUpdater *a1, ot::MeshCoP::Dataset *a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v19 = 0;
  ot::MeshCoP::Dataset::Dataset(v25);
  appended = 13;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (!ot::Mle::Mle::IsDisabled(v4))
  {
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    if (!ot::MeshCoP::DatasetManager::Read(active, v25) && !ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v25, &v18))
    {
      appended = 7;
      if (!ot::MeshCoP::Dataset::ValidateTlvs(v23) && !ot::MeshCoP::Dataset::ContainsTlv(v23, 0xEu) && !ot::MeshCoP::Dataset::ContainsTlv(v23, 0x33u))
      {
        if (ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(a1))
        {
          appended = 5;
        }

        else if (ot::MeshCoP::Dataset::IsSubsetOf(v23, v25))
        {
          appended = 24;
        }

        else
        {
          ot::MeshCoP::Timestamp::AdvanceRandomTicks(&v18, v6);
          appended = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v23, &v18);
          if (!appended)
          {
            v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
            v17 = *ot::MeshCoP::DatasetManager::GetTimestamp(v7);
            if (!ot::MeshCoP::Timestamp::IsValid(&v17))
            {
              ot::Clearable<ot::MeshCoP::Timestamp>::Clear(&v17);
            }

            ot::MeshCoP::Timestamp::AdvanceRandomTicks(&v17, v8);
            appended = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(v23, &v17);
            if (!appended && (ot::MeshCoP::Dataset::ContainsTlv(v23, 0x34u) || (appended = ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(v23, 0x7530u)) == 0))
            {
              appended = ot::MeshCoP::Dataset::WriteTlvsFrom(v25, v23);
              if (!appended)
              {
                v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(a1);
                v19 = ot::MessagePool::Allocate(v9, 6);
                if (v19)
                {
                  v15 = v19;
                  ot::MeshCoP::Dataset::GetBytes(v23);
                  v14 = v10;
                  Length = ot::MeshCoP::Dataset::GetLength(v23);
                  appended = ot::Message::AppendBytes(v15, v14, Length);
                  if (!appended)
                  {
                    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
                    ot::MeshCoP::DatasetManager::SaveLocal(v12, v25);
                    ot::CallbackBase<void (*)(otError,void *)>::Set(a1 + 1, v22, v21);
                    *a1 = v19;
                  }
                }

                else
                {
                  appended = 3;
                }
              }
            }
          }
        }
      }
    }
  }

  if (appended && v19)
  {
    ot::Message::Free(v19);
  }

  return appended;
}

BOOL ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(ot::MeshCoP::DatasetUpdater *this)
{
  return *this != 0;
}

{
  return ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(this);
}

void *ot::Clearable<ot::MeshCoP::Timestamp>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::Timestamp>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::Timestamp>::Clear(a1);
}

void ot::MeshCoP::DatasetUpdater::CancelUpdate(ot::Message **this)
{
  if (ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(this))
  {
    if (*this)
    {
      ot::Message::Free(*this);
    }

    *this = 0;
  }
}

uint64_t ot::MeshCoP::DatasetUpdater::Finish(ot::MeshCoP::DatasetUpdater *a1, int a2)
{
  v5 = a1;
  v4 = a2;
  result = ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(a1);
  if (result)
  {
    if (*a1)
    {
      ot::Message::Free(*a1);
    }

    *a1 = 0;
    return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(a1 + 1, &v4);
  }

  return result;
}

uint64_t ot::MeshCoP::DatasetUpdater::HandleNotifierEvents(ot::MeshCoP::DatasetUpdater *a1, uint64_t a2)
{
  v4 = a2;
  if (ot::Events::Contains(&v4, 0x10000000))
  {
    ot::MeshCoP::DatasetUpdater::HandleDatasetChanged(a1, 0);
  }

  result = ot::Events::Contains(&v4, 0x20000000);
  if (result)
  {
    return ot::MeshCoP::DatasetUpdater::HandleDatasetChanged(a1, 1);
  }

  return result;
}

uint64_t ot::MeshCoP::DatasetUpdater::HandleDatasetChanged(ot::MeshCoP::DatasetUpdater *a1, char a2)
{
  v11 = a1;
  v10 = a2;
  ot::MeshCoP::Dataset::Dataset(v13);
  ot::MeshCoP::Dataset::Dataset(v12);
  result = ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(a1);
  if (result)
  {
    ot::OffsetRange::InitFromMessageFullLength(v7, *a1);
    result = ot::MeshCoP::Dataset::SetFrom(v13, *a1, v7);
    if (!result)
    {
      if (v10)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
        result = ot::MeshCoP::DatasetManager::Read(v4, v12);
        if (result)
        {
          return result;
        }
      }

      else
      {
        active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
        result = ot::MeshCoP::DatasetManager::Read(active, v12);
        if (result)
        {
          return result;
        }
      }

      result = ot::MeshCoP::Dataset::IsSubsetOf(v13, v12);
      if (result)
      {
        if (!v10)
        {
          return ot::MeshCoP::DatasetUpdater::Finish(a1, 0);
        }
      }

      else
      {
        result = ot::MeshCoP::Dataset::ReadTimestamp(v12, v10, &v9);
        if (!result)
        {
          result = ot::MeshCoP::Dataset::ReadTimestamp(v13, v10, &v8);
          if (!result)
          {
            result = ot::MeshCoP::Timestamp::operator>=(&v9, &v8, v5);
            if (result)
            {
              return ot::MeshCoP::DatasetUpdater::Finish(a1, 24);
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL ot::MeshCoP::Timestamp::operator>=(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) >= 0;
}

{
  return ot::MeshCoP::Timestamp::operator>=(a1, a2, a3);
}

void *ot::ClearAllBytes<ot::MeshCoP::Timestamp>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::Timestamp>(result);
}

ot::EnergyScanClient *ot::EnergyScanClient::EnergyScanClient(ot::EnergyScanClient *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this);
  return this;
}

{
  ot::EnergyScanClient::EnergyScanClient(this, a2);
  return this;
}

uint64_t ot::EnergyScanClient::SendQuery(ot::EnergyScanClient *this, unsigned int a2, unsigned __int8 a3, unsigned __int16 a4, unsigned __int16 a5, const ot::Ip6::Address *a6, void (*a7)(unsigned int, const unsigned __int8 *, unsigned __int8, void *), uint64_t a8)
{
  v34 = this;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v23 = this;
  inited = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v25, Instance);
  v24 = 0;
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(v23);
  if (ot::MeshCoP::Commissioner::IsActive(v9))
  {
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v23);
    v24 = ot::Coap::CoapBase::NewPriorityMessage(v10);
    if (v24)
    {
      inited = ot::Coap::Message::InitAsPost(v24, v29, 0x14u);
      if (!inited)
      {
        inited = ot::Coap::Message::SetPayloadMarker(v24);
        if (!inited)
        {
          v22 = v24;
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(v23);
          SessionId = ot::MeshCoP::Commissioner::GetSessionId(v11);
          inited = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v24, SessionId);
          if (!inited)
          {
            inited = ot::MeshCoP::ChannelMaskTlv::AppendTo(v24, v33);
            if (!inited)
            {
              inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(v24, v32);
              if (!inited)
              {
                inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(v24, v31);
                if (!inited)
                {
                  inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)56,unsigned short>>(v24, v30);
                  if (!inited)
                  {
                    ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v25, v29);
                    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v23);
                    inited = ot::Coap::CoapBase::SendMessage(v13, v24, v25);
                    if (!inited)
                    {
                      v14 = ot::UriToString<(ot::Uri)20>();
                      ot::Logger::LogAtLevel<(ot::LogLevel)4>("EnergyScanClnt", "Sent %s", v15, v16, v17, v18, v19, v20, v14);
                      ot::CallbackBase<void (*)(unsigned int,unsigned char const*,unsigned char,void *)>::Set(v23, v28, v27);
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
      inited = 3;
    }
  }

  else
  {
    inited = 13;
  }

  if (inited && v24)
  {
    ot::Message::Free(v24);
  }

  return inited;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)56,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0x38u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)56,unsigned short>>(a1, a2);
}

void *ot::CallbackBase<void (*)(unsigned int,unsigned char const*,unsigned char,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned int,unsigned char const*,unsigned char,void *)>::Set(result, a2, a3);
}

void ot::EnergyScanClient::HandleTmf<(ot::Uri)19>(void *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v24 = a1;
  v27 = 0;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v3 = ot::UriToString<(ot::Uri)19>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("EnergyScanClnt", "Received %s", v4, v5, v6, v7, v8, v9, v3);
    if (!ot::MeshCoP::ChannelMaskTlv::FindIn(v29, &v27, v10) && !ot::Tlv::FindTlv(v29, 0x39, 0x42u, v31, v11, v12))
    {
      v22 = v31;
      EnergyList = ot::MeshCoP::EnergyListTlv::GetEnergyList(v31);
      v23 = &v26;
      v26 = EnergyList;
      EnergyListLength = ot::MeshCoP::EnergyListTlv::GetEnergyListLength(v22);
      ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned int &,unsigned char const*,unsigned char>(v24, &v27, v23, &EnergyListLength);
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v24);
      if (!ot::Coap::CoapBase::SendEmptyAck(v14, v29, v28))
      {
        v15 = ot::UriToString<(ot::Uri)19>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("EnergyScanClnt", "Sent %s ack", v16, v17, v18, v19, v20, v21, v15);
      }
    }
  }
}

void *ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned int &,unsigned char const*,unsigned char>(void *result, unsigned int *a2, void *a3, unsigned __int8 *a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned int &,unsigned char const*,unsigned char>(result, a2, a3, a4);
  }

  return result;
}

{
  return ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned int &,unsigned char const*,unsigned char>(result, a2, a3, a4);
}

uint64_t ot::MeshCoP::EnergyListTlv::GetEnergyList(ot::MeshCoP::EnergyListTlv *this)
{
  return this + 2;
}

{
  return ot::MeshCoP::EnergyListTlv::GetEnergyList(this);
}

uint64_t ot::MeshCoP::EnergyListTlv::GetEnergyListLength(ot::MeshCoP::EnergyListTlv *this)
{
  Length = ot::Tlv::GetLength(this);
  return ot::Min<unsigned char>(0x40u, Length);
}

{
  return ot::MeshCoP::EnergyListTlv::GetEnergyListLength(this);
}

uint64_t ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned int &,unsigned char const*,unsigned char>(uint64_t a1, unsigned int *a2, void *a3, unsigned __int8 *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned int &,unsigned char const*,unsigned char>(a1, a2, a3, a4);
}

ot::MeshCoP::Joiner *ot::MeshCoP::Joiner::Joiner(ot::MeshCoP::Joiner *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 4);
  *(this + 38) = 0;
  *(this + 10) = 0;
  ot::TimerMilliIn<ot::MeshCoP::Joiner,&ot::MeshCoP::Joiner::HandleTimer>::TimerMilliIn((this + 88), a2);
  *(this + 112) = 0;
  *(this + 113) = 0;
  ot::MeshCoP::Joiner::SetIdFromIeeeEui64(this);
  ot::MeshCoP::JoinerDiscerner::Clear(this + 8);
  ot::ClearAllBytes<ot::MeshCoP::Joiner::JoinerRouter [2]>(this + 48);
  return this;
}

{
  ot::MeshCoP::Joiner::Joiner(this, a2);
  return this;
}

unsigned __int8 *ot::MeshCoP::Joiner::HandleTimer(ot::MeshCoP::Joiner *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = this;
  v17 = 0;
  v15 = *(this + 24);
  if (!*(this + 24))
  {
    goto LABEL_15;
  }

  if (v15 != 1)
  {
    if (v15 != 2)
    {
      switch(v15)
      {
        case 3:
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("Joiner", "Timeout occurs while waiting for joiner finalize response", a3, a4, a5, a6, a7, a8);
          v17 = 28;
          break;
        case 4:
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("Joiner", "Timeout occurs while waiting for joiner entrust", a3, a4, a5, a6, a7, a8);
          v17 = 28;
          break;
        case 5:
          ot::Mac::ExtAddress::GenerateRandom(v19, a2, a3);
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          ot::Mac::Mac::SetExtAddress(v11, v19);
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::Mle::Mle::UpdateLinkLocalAddress(v12);
          v17 = 0;
          break;
      }

      return ot::MeshCoP::Joiner::Finish(this, v17);
    }

LABEL_15:
    __assert_rtn("HandleTimer", "joiner.cpp", 682, "false");
  }

  if (!*(this + 113))
  {
    __assert_rtn("HandleTimer", "joiner.cpp", 647, "false");
  }

  --*(this + 113);
  v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(this);
  ot::Mac::ChannelMask::ChannelMask(v16, 0);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  PanId = ot::Mac::Mac::GetPanId(v8);
  result = ot::Mle::DiscoverScanner::Discover(v13, v16, PanId, 1, 1, (this + 114), ot::MeshCoP::Joiner::HandleDiscoverResult, this);
  v17 = result;
  if (result)
  {
    return ot::MeshCoP::Joiner::Finish(this, v17);
  }

  return result;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Joiner,&ot::MeshCoP::Joiner::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Joiner,&ot::MeshCoP::Joiner::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Joiner,&ot::MeshCoP::Joiner::HandleTimer>::HandleTimer);
  return a1;
}

void ot::MeshCoP::Joiner::SetIdFromIeeeEui64(ot::MeshCoP::Joiner *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::GetIeeeEui64(v1, v4);
  ot::MeshCoP::ComputeJoinerId(v4, this, v2);
}

uint64_t ot::MeshCoP::JoinerDiscerner::Clear(uint64_t this)
{
  *(this + 8) = 0;
  return this;
}

{
  return ot::MeshCoP::JoinerDiscerner::Clear(this);
}

uint64_t ot::ClearAllBytes<ot::MeshCoP::Joiner::JoinerRouter [2]>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::Joiner::JoinerRouter [2]>(result);
}

uint64_t ot::MeshCoP::Joiner::GetDiscerner(ot::MeshCoP::Joiner *this)
{
  if (ot::MeshCoP::JoinerDiscerner::IsEmpty((this + 8)))
  {
    return 0;
  }

  else
  {
    return this + 8;
  }
}

BOOL ot::MeshCoP::JoinerDiscerner::IsEmpty(ot::MeshCoP::JoinerDiscerner *this)
{
  return *(this + 8) == 0;
}

{
  return ot::MeshCoP::JoinerDiscerner::IsEmpty(this);
}

uint64_t ot::MeshCoP::Joiner::SetDiscerner(ot::MeshCoP::Joiner *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v5 = 0;
  if (ot::MeshCoP::JoinerDiscerner::IsValid(a2))
  {
    if (*(this + 24))
    {
      return 13;
    }

    else
    {
      *(this + 8) = *a2;
      ot::MeshCoP::JoinerDiscerner::GenerateJoinerId((this + 8), this, v2);
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::MeshCoP::Joiner::ClearDiscerner(ot::MeshCoP::Joiner *this)
{
  v3 = 0;
  if (*(this + 24))
  {
    return 13;
  }

  else if (!ot::MeshCoP::JoinerDiscerner::IsEmpty((this + 8)))
  {
    ot::MeshCoP::JoinerDiscerner::Clear(this + 8);
    ot::MeshCoP::Joiner::SetIdFromIeeeEui64(this);
  }

  return v3;
}

void ot::MeshCoP::Joiner::SetState(_BYTE *a1, unsigned __int8 a2)
{
  v14 = a1;
  v13 = a2;
  v11 = a1;
  v12 = a1[24];
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  if (!ot::Notifier::Update<ot::MeshCoP::Joiner::State>(v2, v11 + 24, &v13, 0x8000000))
  {
    v10 = ot::MeshCoP::Joiner::StateToString(v12);
    v3 = ot::MeshCoP::Joiner::StateToString(v13);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "JoinerState: %s -> %s", v4, v5, v6, v7, v8, v9, v10, v3);
  }
}

uint64_t ot::Notifier::Update<ot::MeshCoP::Joiner::State>(void *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = 0;
  if (*a2 == *a3)
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v5;
}

{
  return ot::Notifier::Update<ot::MeshCoP::Joiner::State>(a1, a2, a3, a4);
}

uint64_t ot::MeshCoP::Joiner::Start(_BYTE *a1, ot *a2, ot *a3, ot *a4, ot *a5, ot *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  v39 = a5;
  v38 = a6;
  v37 = a7;
  v36 = a8;
  v35 = a9;
  v34 = 0;
  ot::MeshCoP::Joiner::SetIdFromIeeeEui64(a1);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner starting", v9, v10, v11, v12, v13, v14);
  if (!v41 || (ot::IsValidUtf8String(v41, v15) & 1) != 0)
  {
    if (!v40 || (ot::IsValidUtf8String(v40, v15) & 1) != 0)
    {
      if (!v38 || (ot::IsValidUtf8String(v38, v15) & 1) != 0)
      {
        if (a1[24])
        {
          v34 = 5;
        }

        else
        {
          v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
          if ((ot::ThreadNetif::IsUp(v16) & 1) != 0 && (v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1), !ot::Mle::Mle::GetRole(v17)))
          {
            v34 = ot::MeshCoP::JoinerPskd::SetFrom(v45, v42);
            if (!v34)
            {
              a1[113] = a1[112];
              ot::Mac::ExtAddress::GenerateRandom(v44, v18, v19);
              v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
              ot::Mac::Mac::SetExtAddress(v20, v44);
              v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
              ot::Mle::Mle::UpdateLinkLocalAddress(v21);
              v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
              v34 = ot::Coap::CoapSecure::Start(v22, 0x3E8u);
              if (!v34)
              {
                v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
                ot::Coap::CoapSecure::SetPsk(v23, v45);
                v33 = a1 + 48;
                v32 = a1 + 48;
                v31 = a1 + 76;
                while (v32 != v31)
                {
                  v30 = v32;
                  v32[13] = 0;
                  v32 += 14;
                }

                v34 = ot::MeshCoP::Joiner::PrepareJoinerFinalizeMessage(a1, v41, v40, v39, v38, v37);
                if (!v34)
                {
                  if (ot::MeshCoP::JoinerDiscerner::IsEmpty((a1 + 8)))
                  {
                    ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a1, a1 + 57);
                  }

                  else
                  {
                    ot::MeshCoP::SteeringData::CalculateHashBitIndexes((a1 + 8), a1 + 57);
                  }

                  v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(a1);
                  ot::Mac::ChannelMask::ChannelMask(v29, 0);
                  v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
                  PanId = ot::Mac::Mac::GetPanId(v24);
                  v34 = ot::Mle::DiscoverScanner::Discover(v27, v29, PanId, 1, 1, a1 + 114, ot::MeshCoP::Joiner::HandleDiscoverResult, a1);
                  if (!v34)
                  {
                    ot::CallbackBase<void (*)(otError,void *)>::Set(a1 + 4, v36, v35);
                    ot::MeshCoP::Joiner::SetState(a1, 1u);
                  }
                }
              }
            }
          }

          else
          {
            v34 = 13;
          }
        }
      }

      else
      {
        v34 = 7;
      }
    }

    else
    {
      v34 = 7;
    }
  }

  else
  {
    v34 = 7;
  }

  if (v34)
  {
    ot::MeshCoP::Joiner::FreeJoinerFinalizeMessage(a1);
  }

  ot::Logger::LogOnError("Joiner", v34, "start joiner");
  return v34;
}

uint64_t ot::MeshCoP::Joiner::PrepareJoinerFinalizeMessage(ot::Message **this, ot *a2, ot *a3, ot *a4, ot *a5, ot *a6)
{
  v25 = this;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v19 = 0;
  ot::MeshCoP::VendorStackVersionTlv::VendorStackVersionTlv(v18);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  this[10] = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v6, 0x16u);
  if (this[10])
  {
    v16 = this[10];
    Length = ot::Message::GetLength(v16);
    ot::Message::SetOffset(v16, Length);
    v19 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(this[10], 1u);
    if (!v19)
    {
      v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)33,(unsigned char)32>>(this[10], v23, v7, v8, v9);
      if (!v19)
      {
        v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)34,(unsigned char)32>>(this[10], v22, v7, v8, v9);
        if (!v19)
        {
          v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)16>>(this[10], v21, v7, v8, v9);
          if (!v19)
          {
            ot::MeshCoP::VendorStackVersionTlv::Init(v18);
            ot::MeshCoP::VendorStackVersionTlv::SetOui(v18, 0x18B430u, v14);
            ot::MeshCoP::VendorStackVersionTlv::SetMajor(v18, 0);
            ot::MeshCoP::VendorStackVersionTlv::SetMinor(v18, 1);
            ot::MeshCoP::VendorStackVersionTlv::SetRevision(v18, 0);
            v19 = ot::Tlv::AppendTo(v18, this[10]);
            if (!v19 && (!v20 || (v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)36,(unsigned char)64>>(this[10], v20, v7, v8, v9)) == 0))
            {
              if (v24)
              {
                v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(this[10], v24, v7, v8, v9);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v19 = 3;
  }

  if (v19)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("Joiner", "prepare joiner finalize message %d", v7, v8, v9, v10, v11, v12, v19);
    ot::MeshCoP::Joiner::FreeJoinerFinalizeMessage(this);
  }

  return v19;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::DiscoverScanner>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(a1);
}

void ot::MeshCoP::Joiner::FreeJoinerFinalizeMessage(uint64_t this)
{
  if (!*(this + 24))
  {
    if (*(this + 80))
    {
      ot::Message::Free(*(this + 80));
      *(this + 80) = 0;
    }
  }
}

unsigned __int8 *ot::MeshCoP::Joiner::Stop(ot::MeshCoP::Joiner *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner stopped", a3, a4, a5, a6, a7, a8);
  ot::CallbackBase<void (*)(otError,void *)>::Clear(this + 4);
  return ot::MeshCoP::Joiner::Finish(this, 11);
}

unsigned __int8 *ot::MeshCoP::Joiner::Finish(unsigned __int8 *result, int a2)
{
  v8 = result;
  v7 = a2;
  v5 = result;
  v6 = result[24];
  if (result[24])
  {
    if (v6 != 1)
    {
      if ((v6 - 2) > 3)
      {
        goto LABEL_8;
      }

      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(result);
      ot::Coap::CoapSecure::Disconnect(v2);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(v5);
      ot::Ip6::Filter::RemoveUnsecurePort(v3, 0x3E8u);
      IgnoreError();
      ot::TimerMilli::Stop((v5 + 88));
    }

    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(v5);
    ot::Coap::CoapSecure::Stop(v4);
LABEL_8:
    ot::MeshCoP::Joiner::SetState(v5, 0);
    ot::MeshCoP::Joiner::FreeJoinerFinalizeMessage(v5);
    return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(v5 + 4, &v7);
  }

  return result;
}

uint64_t ot::MeshCoP::Joiner::CalculatePriority(ot::MeshCoP::Joiner *this, char a2, char a3)
{
  v7 = a2;
  if (a2 == 127)
  {
    v7 = -127;
  }

  v5 = ot::Clamp<signed char>(v7, -127, -1);
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  return (v5 + v3);
}

uint64_t ot::Clamp<signed char>(char a1, char a2, char a3)
{
  v4 = ot::Max<signed char>(a1, a2);
  return ot::Min<signed char>(v4, a3);
}

{
  return ot::Clamp<signed char>(a1, a2, a3);
}

void ot::MeshCoP::Joiner::HandleDiscoverResult(uint64_t result, uint64_t a2)
{
  v6 = 0;
  if (*(result + 24) == 1)
  {
    if (a2 && *(a2 + 52))
    {
      ot::MeshCoP::Joiner::SaveDiscoveredJoinerRouter(result, a2);
    }

    else
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(result);
      ot::Mac::Mac::SetExtAddress(v2, result);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(result);
      ot::Mle::Mle::UpdateLinkLocalAddress(v3);
      *(result + 76) = 0;
      for (i = result + 48; i < result + 76; i += 14)
      {
        if (*(i + 13))
        {
          v6 = 1;
          break;
        }
      }

      if ((v6 & 1) == 0 && *(result + 113))
      {
        *(result + 48) = 0;
        *(result + 56) = 0;
        *(result + 64) = 0;
        *(result + 72) = 0;
        ot::TimerMilli::Stop((result + 88));
        ot::TimerMilli::Start((result + 88), 0x64u);
      }

      else
      {
        ot::MeshCoP::Joiner::TryNextJoinerRouter(result, 0);
      }
    }
  }
}

void ot::MeshCoP::Joiner::SaveDiscoveredJoinerRouter(ot::MeshCoP::Joiner *a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  v18 = a1;
  v22 = 0;
  v20 = ot::GetArrayEnd<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>(a1 + 48);
  i = 0;
  ot::AsCoreType<otSteeringData>(v23 + 33);
  v21 = ot::MeshCoP::SteeringData::PermitsAllJoiners(v2);
  ot::AsCoreType<otExtAddress>(v23);
  v12 = v25;
  ot::Mac::ExtAddress::ToString(v3, v25);
  v13 = ot::String<(unsigned short)17>::AsCString(v25);
  v14 = *(v23 + 50);
  v15 = *(v23 + 52);
  v16 = *(v23 + 54);
  v17 = *(v23 + 55);
  v4 = ot::ToYesNo((v21 & 1));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner discover network: %s, pan:0x%04x, port:%d, chan:%d, rssi:%d, allow-any:%s", v5, v6, v7, v8, v9, v10, v13, v14, v15, v16, v17, v4);
  v22 = ot::MeshCoP::Joiner::CalculatePriority(v18, *(v23 + 55), v21 & 1);
    ;
  }

  if (i < v20)
  {
    memmove(i + 14, i, v20 - 14 - i);
    ot::AsCoreType<otExtAddress>(v23);
    *i = *v11;
    *(i + 4) = *(v23 + 50);
    *(i + 5) = *(v23 + 52);
    i[12] = *(v23 + 54);
    i[13] = v22;
  }
}

unsigned __int8 *ot::MeshCoP::Joiner::TryNextJoinerRouter(unsigned __int16 *a1, int a2)
{
  while (1)
  {
    v3 = a1[38];
    if (v3 >= ot::GetArrayLength<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>())
    {
      break;
    }

    v5 = &a1[7 * a1[38] + 24];
    if (!*(v5 + 13))
    {
      break;
    }

    result = ot::MeshCoP::Joiner::Connect(a1, v5);
    if (!result)
    {
      ++a1[38];
      return result;
    }

    if (!a2)
    {
      a2 = result;
    }

    ++a1[38];
  }

  if (!a2)
  {
    a2 = 23;
  }

  return ot::MeshCoP::Joiner::Finish(a1, a2);
}

uint64_t ot::GetArrayEnd<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>(uint64_t a1)
{
  return a1 + 28;
}

{
  return ot::GetArrayEnd<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>(a1);
}

void ot::AsCoreType<otSteeringData>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otSteeringData>(a1);
}

{
  ot::AsCoreType<otSteeringData>(a1);
}

uint64_t ot::MeshCoP::SteeringData::PermitsAllJoiners(ot::MeshCoP::SteeringData *this)
{
  DoesAllMatch = 0;
  if (*this)
  {
    DoesAllMatch = ot::MeshCoP::SteeringData::DoesAllMatch(this, 0xFFu);
  }

  return DoesAllMatch & 1;
}

{
  return ot::MeshCoP::SteeringData::PermitsAllJoiners(this);
}

uint64_t ot::GetArrayLength<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>()
{
  return 2;
}

{
  return ot::GetArrayLength<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>();
}

uint64_t ot::MeshCoP::Joiner::Connect(ot::InstanceLocator *a1, ot::Mac::ExtAddress *a2)
{
  v19 = a1;
  v18 = a2;
  v17 = 23;
  ot::Ip6::SockAddr::SockAddr(v16, *(a2 + 5));
  ot::Mac::ExtAddress::ToString(v18, v20);
  v2 = ot::String<(unsigned short)17>::AsCString(v20);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner connecting to %s, pan:0x%04x, chan:%d", v3, v4, v5, v6, v7, v8, v2, *(v18 + 4), *(v18 + 12));
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  ot::Mac::Mac::SetPanId(v9, *(v18 + 4));
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  v17 = ot::Mac::Mac::SetPanChannel(v10, *(v18 + 12));
  if (!v17)
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(a1);
    v17 = ot::Ip6::Filter::AddUnsecurePort(v11, 0x3E8u);
    if (!v17)
    {
      ot::Ip6::SockAddr::GetAddress(v16);
      ot::Ip6::Address::SetToLinkLocalAddress(v12, v18);
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
      v17 = ot::Coap::CoapSecure::Connect(v13, v16, ot::MeshCoP::Joiner::HandleSecureCoapClientConnect, a1);
      if (!v17)
      {
        ot::MeshCoP::Joiner::SetState(a1, 2u);
      }
    }
  }

  ot::Logger::LogOnError("Joiner", v17, "start secure joiner connection");
  return v17;
}

ot::Ip6::SockAddr *ot::Ip6::SockAddr::SockAddr(ot::Ip6::SockAddr *this, __int16 a2)
{
  ot::Ip6::SockAddr::SockAddr(this, a2);
  return this;
}

{
  *(this + 8) = a2;
  ot::Ip6::SockAddr::GetAddress(this);
  ot::Clearable<ot::Ip6::Address>::Clear(v2);
  return this;
}

void ot::Ip6::SockAddr::GetAddress(ot::Ip6::SockAddr *this)
{
  ot::AsCoreType<otIp6Address>(this);
}

{
  ot::AsCoreType<otIp6Address>(this);
}

{
  ot::Ip6::SockAddr::GetAddress(this);
}

{
  ot::Ip6::SockAddr::GetAddress(this);
}

ot::MeshCoP::Joiner *ot::MeshCoP::Joiner::HandleSecureCoapClientConnect(ot::MeshCoP::Joiner *this, char a2)
{
  v2 = this;
  if (*(this + 24) == 2)
  {
    if (a2)
    {
      ot::MeshCoP::Joiner::SetState(this, 3u);
      ot::MeshCoP::Joiner::SendJoinerFinalize(v2);
      return ot::TimerMilli::Start((v2 + 88), 0xFA0u);
    }

    else
    {
      return ot::MeshCoP::Joiner::TryNextJoinerRouter(this, 8);
    }
  }

  return this;
}

void ot::MeshCoP::Joiner::SendJoinerFinalize(ot::MeshCoP::Joiner *this)
{
  v9 = ot::MeshCoP::Joiner::HandleJoinerFinalizeResponse;
  v11 = this;
  v10 = this;
  if (!*(this + 10))
  {
    __assert_rtn("SendJoinerFinalize", "joiner.cpp", 522, "mFinalizeMessage != nullptr");
  }

  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(v10);
  if (!ot::Coap::CoapSecure::SendMessage(v1, v10[10], v9, v10))
  {
    v10[10] = 0;
    v2 = ot::UriToString<(ot::Uri)22>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Sent %s", v3, v4, v5, v6, v7, v8, v2);
  }
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)33,(unsigned char)32>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x21, 0x20u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)33,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)34,(unsigned char)32>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x22, 0x20u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)34,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)16>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x23, 0x10u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)16>>(a1, a2, a3, a4, a5);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::Init(ot::MeshCoP::VendorStackVersionTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 37);
  return ot::Tlv::SetLength(this, 6);
}

{
  return ot::MeshCoP::VendorStackVersionTlv::Init(this);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::SetOui(ot::MeshCoP::VendorStackVersionTlv *this, unsigned int a2, unsigned __int8 *a3)
{
  return ot::BigEndian::WriteUint24(a2, this + 2, a3);
}

{
  return ot::MeshCoP::VendorStackVersionTlv::SetOui(this, a2, a3);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::SetMajor(uint64_t this, char a2)
{
  *(this + 7) = *(this + 7) & 0xF0 | a2 & 0xF;
  return this;
}

{
  return ot::MeshCoP::VendorStackVersionTlv::SetMajor(this, a2);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::SetMinor(uint64_t this, char a2)
{
  *(this + 7) = *(this + 7) & 0xF | (16 * a2);
  return this;
}

{
  return ot::MeshCoP::VendorStackVersionTlv::SetMinor(this, a2);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::SetRevision(ot::MeshCoP::VendorStackVersionTlv *this, unsigned __int16 a2)
{
  v6 = a2;
  v2 = ot::BigEndian::HostSwap16(*(this + 5), a2);
  result = ot::BigEndian::HostSwap16((v2 & 0xFF0F | v6 & 0xF0u), v3);
  *(this + 5) = result;
  return result;
}

{
  return ot::MeshCoP::VendorStackVersionTlv::SetRevision(this, a2);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)36,(unsigned char)64>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x24, 0x40u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)36,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x20, 0x40u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

void ot::MeshCoP::Joiner::HandleJoinerFinalizeResponse(_BYTE *a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreType<otMessageInfo>(a3);
  ot::MeshCoP::Joiner::HandleJoinerFinalizeResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Joiner::HandleJoinerFinalizeResponse(_BYTE *a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  if (a1[24] == 3 && !v15)
  {
    if (!v17)
    {
      __assert_rtn("HandleJoinerFinalizeResponse", "joiner.cpp", 553, "aMessage != nullptr");
    }

    if (ot::Coap::Message::IsAck(v17) && ot::Coap::Message::GetCode(v17) == 68 && !ot::Tlv::Find<ot::MeshCoP::StateTlv>(v17, &v14))
    {
      ot::MeshCoP::Joiner::SetState(a1, 4u);
      ot::TimerMilli::Start((a1 + 88), 0xFA0u);
      v4 = ot::UriToString<(ot::Uri)22>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Received %s %d", v5, v6, v7, v8, v9, v10, v4, v14);
    }
  }

  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
  ot::Coap::CoapSecure::Disconnect(v11);
  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(a1);
  ot::Ip6::Filter::RemoveUnsecurePort(v12, 0x3E8u);
  IgnoreError();
}

BOOL ot::Coap::Message::IsAck(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetType(this) == 2;
}

{
  return ot::Coap::Message::IsAck(this);
}

void ot::MeshCoP::Joiner::HandleTmf<(ot::Uri)21>(ot::MeshCoP::Joiner *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v22 = a1;
  v25 = 0;
  if (*(a1 + 24) == 4 && ot::Coap::Message::IsConfirmablePostRequest(v27))
  {
    v3 = ot::UriToString<(ot::Uri)21>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Received %s", v4, v5, v6, v7, v8, v9, v3);
    ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(v29);
    v21 = v27;
    ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)2>(v29);
    v25 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(v21, v10);
    if (!v25)
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v22);
      PanChannel = ot::Mac::Mac::GetPanChannel(v11);
      v20 = v29;
      ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(v29, &PanChannel);
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v22);
      PanId = ot::Mac::Mac::GetPanId(v12);
      ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)7>(v20, &PanId);
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(v22);
      ot::MeshCoP::DatasetManager::SaveLocal(active, v20);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner successful!", v14, v15, v16, v17, v18, v19);
      ot::MeshCoP::Joiner::SendJoinerEntrustResponse(v22, v27, v26);
      ot::TimerMilli::Start((v22 + 88), 0x64u);
    }
  }

  else
  {
    v25 = 2;
  }

  ot::Logger::LogOnError("Joiner", v25, "process joiner entrust");
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 5, a2, 0x10);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(a1, a2);
}

void ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)2>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)2>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(a1);
  ot::AsNonConst<ot::NetworkKey>();
}

{
  ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)2>(a1);
}

void ot::MeshCoP::Joiner::SendJoinerEntrustResponse(ot::MeshCoP::Joiner *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v13 = this;
  v16 = 0;
  v15 = 0;
  memcpy(__dst, a3, sizeof(__dst));
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v13);
  v15 = ot::Coap::CoapBase::NewPriorityResponseMessage(v3, v18);
  if (v15)
  {
    ot::Message::SetSubType(v15, 4);
    ot::Ip6::MessageInfo::GetSockAddr(__dst);
    ot::Clearable<ot::Ip6::Address>::Clear(v4);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v13);
    v16 = ot::Coap::CoapBase::SendMessage(v5, v15, __dst);
    if (!v16)
    {
      ot::MeshCoP::Joiner::SetState(v13, 5u);
      v6 = ot::UriToString<(ot::Uri)21>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Sent %s response", v7, v8, v9, v10, v11, v12, v6);
    }
  }

  else
  {
    v16 = 3;
  }

  if (v16)
  {
    if (v15)
    {
      ot::Message::Free(v15);
    }
  }
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::VendorStackVersionTlv(uint64_t this)
{
  *(this + 5) = 0;
  *(this + 7) = 0;
  return this;
}

uint64_t ot::BigEndian::WriteUint24(uint64_t this, _BYTE *a2, unsigned __int8 *a3)
{
  *a2 = BYTE2(this);
  a2[1] = BYTE1(this);
  a2[2] = this;
  return this;
}

{
  return ot::BigEndian::WriteUint24(this, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Joiner>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::Joiner>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Joiner>(a1);
}

uint64_t ot::Max<signed char>(char a1, char a2)
{
  if (a1 >= a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

{
  return ot::Max<signed char>(a1, a2);
}

uint64_t ot::Min<signed char>(char a1, char a2)
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
  return ot::Min<signed char>(a1, a2);
}

ot::MeshCoP::JoinerRouter *ot::MeshCoP::JoinerRouter::JoinerRouter(ot::MeshCoP::JoinerRouter *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::SocketIn((this + 8), a2, this);
  ot::TimerMilliIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleTimer>::TimerMilliIn((this + 80), a2);
  ot::Coap::MessageQueue::MessageQueue((this + 104));
  result = this;
  *(this + 56) = 0;
  *(this + 114) &= ~1u;
  return result;
}

{
  ot::MeshCoP::JoinerRouter::JoinerRouter(this, a2);
  return this;
}

void ot::MeshCoP::JoinerRouter::HandleUdpReceive(ot::MeshCoP::JoinerRouter *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v46 = this;
  v45 = a2;
  v44 = a3;
  v37 = this;
  BorderAgentRloc = 0;
  v42 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v41, Instance);
  v39 = 0;
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "JoinerRouter::HandleUdpReceive", v4, v5, v6, v7, v8, v9);
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v37);
  BorderAgentRloc = ot::NetworkData::Leader::FindBorderAgentRloc(v10, &v39);
  if (!BorderAgentRloc)
  {
    v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v37);
    v42 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v17, 0x1Du);
    if (v42)
    {
      v36 = v42;
      PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v44);
      BorderAgentRloc = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v36, PeerPort);
      if (!BorderAgentRloc)
      {
        v35 = v42;
        ot::Ip6::MessageInfo::GetPeerAddr(v44);
        Iid = ot::Ip6::Address::GetIid(v19);
        BorderAgentRloc = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(v35, Iid);
        if (!BorderAgentRloc)
        {
          v34 = v42;
          v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v37);
          Rloc16 = ot::Mle::Mle::GetRloc16(v21);
          BorderAgentRloc = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(v34, Rloc16);
          if (!BorderAgentRloc)
          {
            v32 = v38;
            ot::OffsetRange::InitFromMessageOffsetToEnd(v38, v45);
            v33 = v40;
            ot::MeshCoP::ExtendedTlv::SetType(v40, 17);
            Length = ot::OffsetRange::GetLength(v38);
            ot::ExtendedTlv::SetLength(v40, Length);
            BorderAgentRloc = ot::Message::Append<ot::MeshCoP::ExtendedTlv>(v42, v40);
            if (!BorderAgentRloc)
            {
              BorderAgentRloc = ot::Message::AppendBytesFromMessage(v42, v45, v38);
              if (!BorderAgentRloc)
              {
                ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v41, v39);
                v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v37);
                BorderAgentRloc = ot::Coap::CoapBase::SendMessage(v24, v42, v41);
                if (!BorderAgentRloc)
                {
                  v25 = ot::UriToString<(ot::Uri)29>();
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Sent %s", v26, v27, v28, v29, v30, v31, v25);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      BorderAgentRloc = 3;
    }
  }

  if (BorderAgentRloc && v42)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("JoinerRouter", "process UDP message: %d", v11, v12, v13, v14, v15, v16, BorderAgentRloc);
    if (v42)
    {
      ot::Message::Free(v42);
    }
  }
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleTimer>::HandleTimer);
  return a1;
}

void ot::MeshCoP::JoinerRouter::HandleNotifierEvents(ot::MeshCoP::JoinerRouter *a1, uint64_t a2)
{
  v3 = a2;
  if (ot::Events::Contains(&v3, 512))
  {
    ot::MeshCoP::JoinerRouter::Start(a1);
  }
}

void ot::MeshCoP::JoinerRouter::Start(ot::MeshCoP::JoinerRouter *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsFullThreadDevice(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::Leader::IsJoiningAllowed(v2))
    {
      JoinerUdpPort = ot::MeshCoP::JoinerRouter::GetJoinerUdpPort(this);
      if (!ot::Ip6::Udp::SocketHandle::IsBound((this + 8)))
      {
        ot::Ip6::Udp::Socket::Open((this + 8));
        IgnoreError();
        ot::Ip6::Udp::Socket::Bind((this + 8), JoinerUdpPort, 1);
        IgnoreError();
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
        ot::Ip6::Filter::AddUnsecurePort(v9, JoinerUdpPort);
        IgnoreError();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Joiner Router: start", v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Joiner Router: stop", v3, v4, v5, v6, v7, v8);
      if (ot::Ip6::Udp::SocketHandle::IsBound((this + 8)))
      {
        v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
        ot::Ip6::Udp::SocketHandle::GetSockName((this + 8));
        ot::Ip6::Filter::RemoveUnsecurePort(v17, *(v16 + 16));
        IgnoreError();
        ot::Ip6::Udp::Socket::Close((this + 8));
        IgnoreError();
      }
    }
  }
}

uint64_t ot::MeshCoP::JoinerRouter::GetJoinerUdpPort(ot::MeshCoP::JoinerRouter *this)
{
  v4 = this;
  v3 = 0;
  if (*(this + 114))
  {
    return *(this + 56);
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::Leader::FindJoinerUdpPort(v1, &v3))
    {
      return 1000;
    }
  }

  return v3;
}

void ot::Ip6::Udp::SocketHandle::GetSockName(ot::Ip6::Udp::SocketHandle *this)
{
  ot::AsCoreType<otSockAddr>(this);
}

{
  ot::AsCoreType<otSockAddr>(this);
}

{
  ot::Ip6::Udp::SocketHandle::GetSockName(this);
}

{
  ot::Ip6::Udp::SocketHandle::GetSockName(this);
}

void ot::MeshCoP::JoinerRouter::SetJoinerUdpPort(ot::MeshCoP::JoinerRouter *this, __int16 a2)
{
  *(this + 56) = a2;
  *(this + 114) = *(this + 114) & 0xFE | 1;
  ot::MeshCoP::JoinerRouter::Start(this);
}

void ot::MeshCoP::JoinerRouter::HandleTmf<(ot::Uri)30>(ot::MeshCoP::JoinerRouter *a1, ot::Tlv *a2, uint64_t a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v18 = a1;
  TlvValueOffsetRange = 0;
  v24 = 0;
  v21 = 0;
  ot::Message::Settings::Settings(v20, 0, 3);
  ot::Ip6::MessageInfo::MessageInfo(v19);
  if (ot::Coap::Message::IsNonConfirmablePostRequest(v27))
  {
    v9 = ot::UriToString<(ot::Uri)30>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Received %s", v10, v11, v12, v13, v14, v15, v9);
    TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v27, &v24);
    if (!TlvValueOffsetRange)
    {
      TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(v27, v23);
      if (!TlvValueOffsetRange)
      {
        TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v27, 0x11, &v22, v4);
        if (!TlvValueOffsetRange)
        {
          v21 = ot::Ip6::Udp::Socket::NewMessage((v18 + 8), 0, v20);
          if (v21)
          {
            TlvValueOffsetRange = ot::Message::AppendBytesFromMessage(v21, v27, &v22);
            if (!TlvValueOffsetRange)
            {
              v17 = v19;
              ot::Ip6::MessageInfo::GetPeerAddr(v19);
              ot::Ip6::Address::SetToLinkLocalAddress(v16, v23);
              ot::Ip6::MessageInfo::SetPeerPort(v17, v24);
              TlvValueOffsetRange = ot::Ip6::Udp::Socket::SendTo((v18 + 8), v21, v19);
              if (!TlvValueOffsetRange && !ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(v27, v29))
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Received kek", v3, v4, v5, v6, v7, v8);
                ot::MeshCoP::JoinerRouter::DelaySendingJoinerEntrust(v18, v19, v29);
              }
            }
          }

          else
          {
            TlvValueOffsetRange = 3;
          }
        }
      }
    }
  }

  else
  {
    TlvValueOffsetRange = 2;
  }

  if (TlvValueOffsetRange && v21)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("JoinerRouter", "process UDP message %d", v3, v4, v5, v6, v7, v8, TlvValueOffsetRange);
    if (v21)
    {
      ot::Message::Free(v21);
    }
  }
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x15, a2, 0x10);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(a1, a2);
}

void ot::MeshCoP::JoinerRouter::DelaySendingJoinerEntrust(ot::MeshCoP::JoinerRouter *this, const ot::Ip6::MessageInfo *a2, const ot::Mac::Key *a3)
{
  v12 = this;
  __src = a2;
  v10 = a3;
  v9 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
  v8 = ot::MessagePool::Allocate(v3, 6);
  ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::JoinerEntrustMetadata(__dst);
  if (v8)
  {
    memcpy(__dst, __src, 0x26uLL);
    v4 = ot::Ip6::MessageInfo::SetPeerPort(__dst, 61631);
    Now = ot::TimerMilli::GetNow(v4);
    v7 = ot::Time::operator+(&Now, 50);
    v14 = v7;
    v15 = *v10;
    v9 = ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::AppendTo(__dst, v8);
    if (!v9)
    {
      ot::MessageQueue::Enqueue((this + 104), v8);
      if (!ot::Timer::IsRunning((this + 80)))
      {
        ot::TimerMilli::FireAt((this + 80), v14);
      }
    }
  }

  else
  {
    v9 = 3;
  }

  if (v9 && v8)
  {
    ot::Message::Free(v8);
  }

  ot::Logger::LogOnError("JoinerRouter", v9, "schedule joiner entrust");
}

ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata *ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::JoinerEntrustMetadata(ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata *this)
{
  ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::JoinerEntrustMetadata(this);
  return this;
}

{
  ot::Ip6::MessageInfo::MessageInfo(this);
  return this;
}

uint64_t ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::AppendTo(ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata *this, ot::Message *a2)
{
  return ot::Message::Append<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(a2, this);
}

{
  return ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::AppendTo(this, a2);
}

uint64_t ot::MeshCoP::JoinerRouter::SendDelayedJoinerEntrust(ot::MeshCoP::JoinerRouter *this)
{
  v7 = this;
  ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::JoinerEntrustMetadata(v8);
  result = ot::MessageQueue::GetHead((this + 104));
  v6 = result;
  if (result)
  {
    result = ot::Timer::IsRunning((this + 80));
    if ((result & 1) == 0)
    {
      ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::ReadFrom(v8, v6);
      Now = ot::TimerMilli::GetNow(v2);
      if (ot::Time::operator<(&Now, &v9))
      {
        return ot::TimerMilli::FireAt((this + 80), v9);
      }

      else
      {
        ot::MessageQueue::DequeueAndFree((this + 104), v6);
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
        ot::KeyManager::SetKek(v3, &v10);
        result = ot::MeshCoP::JoinerRouter::SendJoinerEntrust(this, v8);
        if (result)
        {
          return ot::TimerMilli::Start((this + 80), 0);
        }
      }
    }
  }

  return result;
}

void ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::ReadFrom(ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata *this, const ot::Message *a2)
{
  Length = ot::Message::GetLength(a2);
  if (Length < 0x3CuLL)
  {
    __assert_rtn("ReadFrom", "joiner_router.cpp", 376, "length >= sizeof(*this)");
  }

  ot::Message::Read<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(a2, Length - 60, this);
  IgnoreError();
}

uint64_t ot::MeshCoP::JoinerRouter::SendJoinerEntrust(ot::MeshCoP::JoinerRouter *this, const ot::Ip6::MessageInfo *a2)
{
  v14 = ot::MeshCoP::JoinerRouter::PrepareJoinerEntrustMessage(this);
  if (v14)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    ot::Coap::CoapBase::AbortTransaction(v2, ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse, this);
    IgnoreError();
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    v15 = ot::Coap::CoapBase::SendMessage(v3, v14, a2, ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse, this);
    if (!v15)
    {
      v12 = ot::UriToString<(ot::Uri)21>();
      Length = ot::Message::GetLength(v14);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Sent %s (len= %d)", v5, v6, v7, v8, v9, v10, v12, Length);
    }
  }

  else
  {
    v15 = 3;
  }

  if (v15 && v14)
  {
    ot::Message::Free(v14);
  }

  return v15;
}

ot::Message *ot::MeshCoP::JoinerRouter::PrepareJoinerEntrustMessage(ot::MeshCoP::JoinerRouter *this)
{
  ot::MeshCoP::Dataset::Dataset(v11);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v9 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v1, 0x15u);
  if (v9)
  {
    ot::Message::SetSubType(v9, 4);
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
    v10 = ot::MeshCoP::DatasetManager::Read(active, v11);
    if (!v10)
    {
      for (i = &ot::MeshCoP::JoinerRouter::PrepareJoinerEntrustMessage(void)::kTlvTypes; i != &unk_10044B1F9; ++i)
      {
        ot::MeshCoP::Dataset::FindTlv(v11, *i);
        if (!v3)
        {
          v10 = 13;
          goto LABEL_11;
        }

        v10 = ot::Tlv::AppendTo(v3, v9);
        if (v10)
        {
          goto LABEL_11;
        }
      }

      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v4);
      v10 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v9, CurrentKeySequence);
    }
  }

  else
  {
    v10 = 3;
  }

LABEL_11:
  if (v10 && v9)
  {
    ot::Message::Free(v9);
    return 0;
  }

  return v9;
}

void ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse(ot::MeshCoP::JoinerRouter *a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse(ot::MeshCoP::JoinerRouter *a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  ot::MeshCoP::JoinerRouter::SendDelayedJoinerEntrust(a1);
  if (!a4 && a2 && ot::Coap::Message::GetCode(a2) == 68)
  {
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    AverageRss = ot::Message::GetAverageRss(a2);
    ot::Mac::Mac::UpdateJoinerRssiHistogram(v12, AverageRss);
    v5 = ot::UriToString<(ot::Uri)21>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Receive %s response", v6, v7, v8, v9, v10, v11, v5);
  }
}

uint64_t ot::Message::Read<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x3Cu);
}

{
  return ot::Message::Read<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(a1, a2, a3);
}

uint64_t ot::Message::Append<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x3Cu);
}

{
  return ot::Message::Append<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(a1, a2);
}

ot::Coap::Message *ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::HandleUdpReceive(ot::MeshCoP::JoinerRouter *a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otMessage>(a2);
  v6 = v3;
  ot::AsCoreType<otMessageInfo>(a3);
  return (ot::MeshCoP::JoinerRouter::HandleUdpReceive)(a1, v6, v4);
}

uint64_t ot::MeshCoP::JoinerPskd::SetFrom(ot::MeshCoP::JoinerPskd *this, ot *a2)
{
  v5 = 0;
  if (ot::MeshCoP::JoinerPskd::IsPskdValid(a2, a2))
  {
    ot::Clearable<ot::MeshCoP::JoinerPskd>::Clear(this);
    v2 = ot::StringLength(a2, 0x21);
    memcpy(this, a2, v2);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::MeshCoP::JoinerPskd::IsPskdValid(ot::MeshCoP::JoinerPskd *this, const char *a2)
{
  v6 = 0;
  v5 = ot::StringLength(this, 0x21);
  if (v5 >= 6u && v5 <= 0x20u)
  {
    for (i = 0; i < v5; ++i)
    {
      v3 = *(this + i);
      if (!ot::IsDigit(v3) && !ot::IsUppercase(v3) || v3 == 73 || v3 == 79 || v3 == 81 || v3 == 90)
      {
        return v6 & 1;
      }
    }

    v6 = 1;
  }

  return v6 & 1;
}

void *ot::Clearable<ot::MeshCoP::JoinerPskd>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::JoinerPskd>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::JoinerPskd>::Clear(a1);
}

uint64_t ot::MeshCoP::JoinerPskd::operator==(uint64_t a1, uint64_t a2)
{
  v4 = 1;
  for (i = 0; i < 0x21; ++i)
  {
    if (*(a1 + i) != *(a2 + i))
    {
      v4 = 0;
      return v4 & 1;
    }

    if (!*(a1 + i))
    {
      return v4 & 1;
    }
  }

  return v4 & 1;
}

_BYTE *ot::MeshCoP::JoinerDiscerner::GenerateJoinerId(ot::MeshCoP::JoinerDiscerner *this, ot::Mac::ExtAddress *a2, unsigned __int16 a3)
{
  ot::Mac::ExtAddress::GenerateRandom(a2, a2, a3);
  ot::MeshCoP::JoinerDiscerner::CopyTo(this, a2);
  return ot::Mac::ExtAddress::SetLocal(a2, 1);
}

BOOL ot::MeshCoP::JoinerDiscerner::CopyTo(ot::MeshCoP::JoinerDiscerner *this, ot::Mac::ExtAddress *a2)
{
  v5 = a2 + 7;
  v4 = *(this + 8);
  v3 = *this;
  result = ot::MeshCoP::JoinerDiscerner::IsValid(this);
  if (!result)
  {
    __assert_rtn("CopyTo", "meshcop.cpp", 138, "IsValid()");
  }

  while (v4 >= 8u)
  {
    *v5 = v3;
    v3 >>= 8;
    --v5;
    v4 -= 8;
  }

  if (v4)
  {
    *v5 &= ~((1 << v4) - 1);
    *v5 |= v3 & ((1 << v4) - 1);
  }

  return result;
}

BOOL ot::MeshCoP::JoinerDiscerner::Matches(ot::MeshCoP::JoinerDiscerner *this, const ot::Mac::ExtAddress *a2)
{
  if (!ot::MeshCoP::JoinerDiscerner::IsValid(this))
  {
    __assert_rtn("Matches", "meshcop.cpp", 120, "IsValid()");
  }

  Mask = ot::MeshCoP::JoinerDiscerner::GetMask(this);
  return (ot::BigEndian::ReadUint64(a2, v2) & Mask) == (*this & Mask);
}

uint64_t ot::MeshCoP::JoinerDiscerner::GetMask(ot::MeshCoP::JoinerDiscerner *this)
{
  return (1 << *(this + 8)) - 1;
}

{
  return ot::MeshCoP::JoinerDiscerner::GetMask(this);
}

BOOL ot::MeshCoP::JoinerDiscerner::operator==(ot::MeshCoP::JoinerDiscerner *a1, uint64_t a2)
{
  Mask = ot::MeshCoP::JoinerDiscerner::GetMask(a1);
  v4 = 0;
  if (ot::MeshCoP::JoinerDiscerner::IsValid(a1))
  {
    v4 = 0;
    if (*(a1 + 8) == *(a2 + 8))
    {
      return (*a1 & Mask) == (*a2 & Mask);
    }
  }

  return v4;
}

ot::StringWriter *ot::MeshCoP::JoinerDiscerner::ToString@<X0>(ot **this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)45>::String(a2);
  if (*(this + 8) > 0x10uLL)
  {
    if (*(this + 8) > 0x20uLL)
    {
      v5 = ot::ToUlong(*this >> 32);
      v3 = ot::ToUlong(*this);
      ot::StringWriter::Append(a2, "0x%lx-%08lx", v5, v3);
    }

    else
    {
      v2 = ot::ToUlong(*this);
      ot::StringWriter::Append(a2, "0x%08lx", v2);
    }
  }

  else
  {
    ot::StringWriter::Append(a2, "0x%04x", *this);
  }

  return ot::StringWriter::Append(a2, "/len:%d", *(this + 8));
}

void *ot::MeshCoP::SteeringData::Init(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  if (a2 > 0x10u)
  {
    __assert_rtn("Init", "meshcop.cpp", 194, "aLength <= kMaxLength");
  }

  *this = a2;
  return ot::ClearAllBytes<unsigned char [16]>((this + 1));
}

void *ot::ClearAllBytes<unsigned char [16]>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<unsigned char [16]>(result);
}

void *ot::MeshCoP::SteeringData::SetToPermitAllJoiners(ot::MeshCoP::SteeringData *this)
{
  result = ot::MeshCoP::SteeringData::Init(this, 1u);
  *(this + 1) = -1;
  return result;
}

uint64_t ot::MeshCoP::SteeringData::UpdateBloomFilter(ot::MeshCoP::SteeringData *this, const ot::Mac::ExtAddress *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::MeshCoP::SteeringData::UpdateBloomFilter(this, v4);
}

uint64_t ot::MeshCoP::SteeringData::CalculateHashBitIndexes(unsigned __int8 *a1, _WORD *a2)
{
  v10 = a1;
  v9 = a2;
  ot::Crc16::Crc16(v8, 4129);
  ot::Crc16::Crc16(v7, 32773);
  v6 = v10;
  v5 = v10 + 8;
  while (v6 != v5)
  {
    v4 = *v6;
    ot::Crc16::Update(v8, *v6);
    ot::Crc16::Update(v7, v4);
    ++v6;
  }

  v2 = ot::Crc16::Get(v8);
  *v9 = v2;
  result = ot::Crc16::Get(v7);
  v9[1] = result;
  return result;
}

uint64_t ot::MeshCoP::SteeringData::UpdateBloomFilter(ot::MeshCoP::SteeringData *a1, unsigned __int16 *a2)
{
  v8 = 0;
  if (*a1)
  {
    v8 = *a1 <= 0x10u;
  }

  if (!v8)
  {
    __assert_rtn("UpdateBloomFilter", "meshcop.cpp", 223, "(mLength > 0) && (mLength <= kMaxLength)");
  }

  v5 = *a2;
  NumBits = ot::MeshCoP::SteeringData::GetNumBits(a1);
  ot::MeshCoP::SteeringData::SetBit(a1, v5 % NumBits);
  v6 = a2[1];
  v3 = ot::MeshCoP::SteeringData::GetNumBits(a1);
  return ot::MeshCoP::SteeringData::SetBit(a1, v6 % v3);
}

uint64_t ot::MeshCoP::SteeringData::UpdateBloomFilter(ot::MeshCoP::SteeringData *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::MeshCoP::SteeringData::UpdateBloomFilter(this, v4);
}

uint64_t ot::MeshCoP::SteeringData::CalculateHashBitIndexes(ot::MeshCoP::JoinerDiscerner *a1, _WORD *a2)
{
  ot::Clearable<ot::Mac::ExtAddress>::Clear(v5);
  ot::MeshCoP::JoinerDiscerner::CopyTo(a1, v5);
  return ot::MeshCoP::SteeringData::CalculateHashBitIndexes(v5, a2);
}

uint64_t ot::MeshCoP::SteeringData::SetBit(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  v5 = ot::MeshCoP::SteeringData::BitFlag(this, a2);
  v2 = ot::MeshCoP::SteeringData::BitIndex(this, a2);
  result = v5;
  *(this + v2 + 1) |= v5;
  return result;
}

{
  return ot::MeshCoP::SteeringData::SetBit(this, a2);
}

uint64_t ot::MeshCoP::SteeringData::GetNumBits(ot::MeshCoP::SteeringData *this)
{
  return (8 * *this);
}

{
  return ot::MeshCoP::SteeringData::GetNumBits(this);
}

BOOL ot::MeshCoP::SteeringData::Contains(ot::MeshCoP::SteeringData *this, const ot::Mac::ExtAddress *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::MeshCoP::SteeringData::Contains(this, v4);
}

BOOL ot::MeshCoP::SteeringData::Contains(ot::MeshCoP::SteeringData *a1, unsigned __int16 *a2)
{
  v8 = 0;
  if (*a1)
  {
    v6 = *a2;
    NumBits = ot::MeshCoP::SteeringData::GetNumBits(a1);
    v8 = 0;
    if (ot::MeshCoP::SteeringData::GetBit(a1, v6 % NumBits))
    {
      v5 = a2[1];
      v3 = ot::MeshCoP::SteeringData::GetNumBits(a1);
      return ot::MeshCoP::SteeringData::GetBit(a1, v5 % v3);
    }
  }

  return v8;
}

BOOL ot::MeshCoP::SteeringData::Contains(ot::MeshCoP::SteeringData *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::MeshCoP::SteeringData::Contains(this, v4);
}

BOOL ot::MeshCoP::SteeringData::GetBit(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  v4 = *(this + ot::MeshCoP::SteeringData::BitIndex(this, a2) + 1);
  return (v4 & ot::MeshCoP::SteeringData::BitFlag(this, a2)) != 0;
}

{
  return ot::MeshCoP::SteeringData::GetBit(this, a2);
}

uint64_t ot::Crc16::Get(ot::Crc16 *this)
{
  return *(this + 1);
}

{
  return ot::Crc16::Get(this);
}

uint64_t ot::MeshCoP::SteeringData::DoesAllMatch(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  v4 = 1;
  for (i = 0; i < *this; ++i)
  {
    if (*(this + i + 1) != a2)
    {
      v4 = 0;
      return v4 & 1;
    }
  }

  return v4 & 1;
}

void ot::MeshCoP::ComputeJoinerId(ot::MeshCoP *this, const ot::Mac::ExtAddress *a2, ot::Mac::ExtAddress *a3)
{
  v7 = this;
  v6 = a2;
  ot::Crypto::Sha256::Sha256(v5);
  ot::Crypto::Sha256::Start(v5);
  ot::Crypto::Sha256::Update<ot::Mac::ExtAddress>(v5, v7);
  ot::Crypto::Sha256::Finish(v5, v8);
  v4 = v6;
  ot::Crypto::Sha256::Hash::GetBytes(v8);
  *v4 = *v3;
  ot::Mac::ExtAddress::SetLocal(v6, 1);
  ot::Crypto::Sha256::~Sha256(v5);
}

uint64_t ot::Crypto::Sha256::Update<ot::Mac::ExtAddress>(ot::Crypto::Sha256 *a1, uint64_t a2)
{
  return ot::Crypto::Sha256::Update(a1, a2, 8u);
}

{
  return ot::Crypto::Sha256::Update<ot::Mac::ExtAddress>(a1, a2);
}

uint64_t ot::MeshCoP::GeneratePskc(ot::MeshCoP *this, ot::MeshCoP::NetworkName *a2, const ot::MeshCoP::NetworkName *a3, const ot::MeshCoP::ExtendedPanId *a4, ot::Pskc *a5)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  strcpy(&__n_5, "Thread");
  if (ot::IsValidUtf8String(this, a2))
  {
    __n_1 = ot::StringLength(v15, 0x100);
    ot::MeshCoP::NetworkName::GetAsCString(v14);
    __n = ot::StringLength(v5, 0x11);
    if (__n_1 >= 6u && __n_1 <= 0xFFu && __n <= 0x10u)
    {
      ot::ClearAllBytes<unsigned char [30]>(&v16);
      v16 = __n_5;
      v17 = WORD2(__n_5);
      v18 = *v13;
      ot::MeshCoP::NetworkName::GetAsCString(v14);
      memcpy(&v19, v6, __n);
      return j__otPlatCryptoPbkdf2GenerateKey(v15, __n_1, &v16, __n + 14, 0x4000u, 0x10u, v12);
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

void *ot::ClearAllBytes<unsigned char [30]>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *(result + 22) = 0;
  return result;
}

{
  return ot::ClearAllBytes<unsigned char [30]>(result);
}

uint64_t ot::MeshCoP::SteeringData::BitFlag(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  return (1 << (a2 % 8));
}

{
  return ot::MeshCoP::SteeringData::BitFlag(this, a2);
}

uint64_t ot::MeshCoP::SteeringData::BitIndex(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  return (*this - 1 - a2 / 8);
}

{
  return ot::MeshCoP::SteeringData::BitIndex(this, a2);
}

void *ot::ClearAllBytes<ot::MeshCoP::JoinerPskd>(void *a1)
{
  return memset(a1, 0, 0x21uLL);
}

{
  return ot::ClearAllBytes<ot::MeshCoP::JoinerPskd>(a1);
}

ot::MeshCoP::Leader *ot::MeshCoP::Leader::Leader(ot::MeshCoP::Leader *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v2 = ot::TimerMilliIn<ot::MeshCoP::Leader,&ot::MeshCoP::Leader::HandleTimer>::TimerMilliIn((this + 8), a2);
  *(this + 8) = 30000;
  Uint16 = ot::Random::NonCrypto::GetUint16(v2);
  result = this;
  *(this + 51) = Uint16;
  return result;
}

{
  ot::MeshCoP::Leader::Leader(this, a2);
  return this;
}

void ot::MeshCoP::Leader::HandleTimer(ot::MeshCoP::Leader *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsLeader(v1))
  {
    ot::MeshCoP::Leader::ResignCommissioner(this);
  }
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Leader,&ot::MeshCoP::Leader::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Leader,&ot::MeshCoP::Leader::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Leader,&ot::MeshCoP::Leader::HandleTimer>::HandleTimer);
  return a1;
}

void ot::MeshCoP::Leader::HandleTmf<(ot::Uri)24>(ot::MeshCoP::Leader *a1, ot::Tlv *a2, ot::Ip6::MessageInfo *a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v26 = a1;
  memset(__b, 0, sizeof(__b));
  v27 = -1;
  v3 = ot::UriToString<(ot::Uri)24>();
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Received %s", v4, v5, v6, v7, v8, v9, v3);
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v26);
  if (ot::Mle::Mle::IsLeader(v10))
  {
    v25 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v26);
    ot::Ip6::MessageInfo::GetPeerAddr(v28);
    if (ot::Mle::Mle::IsRoutingLocator(v25, v11) && !ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(v29, __b, v12, v13, v14))
    {
      if (ot::Timer::IsRunning((v26 + 8)))
      {
        if (!ot::StringMatch(v26 + 36, __b, 0))
        {
          goto LABEL_9;
        }

        ot::MeshCoP::Leader::ResignCommissioner(v26);
      }

      ot::Ip6::MessageInfo::GetPeerAddr(v28);
      Iid = ot::Ip6::Address::GetIid(v15);
      Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid, v17);
      v19 = *(v26 + 51) + 1;
      *(v26 + 51) = v19;
      ot::MeshCoP::Leader::CommissioningData::Init(v32, Locator, v19);
      v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v26);
      v23 = v32;
      Length = ot::MeshCoP::Leader::CommissioningData::GetLength(v32);
      if (!ot::NetworkData::Leader::SetCommissioningData(v24, v23, Length))
      {
        ot::StringCopy<(unsigned short)65>(v26 + 36, __b, 0);
        IgnoreError();
        v27 = 1;
        v22 = (v26 + 8);
        v21 = ot::Time::SecToMsec(0x32);
        ot::TimerMilli::Start(v22, v21);
      }
    }
  }

LABEL_9:
  ot::MeshCoP::Leader::SendPetitionResponse(v26, v29, v28, v27);
}

uint64_t ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(ot::Tlv *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  return ot::Tlv::FindStringTlv(a1, 0xA, 0x40u, a2, a5);
}

{
  return ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

void ot::MeshCoP::Leader::ResignCommissioner(ot::MeshCoP::Leader *this)
{
  ot::TimerMilli::Stop((this + 8));
  ot::MeshCoP::Leader::SetEmptyCommissionerData(this);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "commissioner inactive", v1, v2, v3, v4, v5, v6);
}

void ot::MeshCoP::Leader::CommissioningData::Init(ot::MeshCoP::Leader::CommissioningData *this, unsigned __int16 a2, unsigned __int16 a3)
{
  ot::MeshCoP::BorderAgentLocatorTlv::Init(this);
  ot::MeshCoP::BorderAgentLocatorTlv::SetBorderAgentLocator(this, a2);
  ot::MeshCoP::CommissionerSessionIdTlv::Init((this + 4));
  ot::MeshCoP::CommissionerSessionIdTlv::SetCommissionerSessionId((this + 4), a3);
  ot::MeshCoP::SteeringDataTlv::Init((this + 8));
  ot::Tlv::SetLength(this + 8, 1);
  ot::MeshCoP::SteeringDataTlv::Clear((this + 8));
}

void ot::MeshCoP::Leader::SendPetitionResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v16 = a1;
  v18 = 0;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v17 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, v21);
  if (v17)
  {
    v18 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v17, v19);
    if (!v18 && (!ot::Timer::IsRunning((v16 + 8)) || (v18 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(v17, (v16 + 36), v5, v6, v7)) == 0) && (v19 != 1 || (v18 = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v17, *(v16 + 51))) == 0))
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v16);
      v18 = ot::Coap::CoapBase::SendMessage(v8, v17, v20);
      if (!v18)
      {
        v9 = ot::UriToString<(ot::Uri)24>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Sent %s response", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  else
  {
    v18 = 3;
  }

  if (v18 && v17)
  {
    ot::Message::Free(v17);
  }

  ot::Logger::LogOnError("MeshCoPLeader", v18, "send petition response");
}

void ot::MeshCoP::Leader::HandleTmf<(ot::Uri)23>(ot::MeshCoP::Leader *a1, const ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v21 = a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v3 = ot::UriToString<(ot::Uri)23>();
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Received %s", v4, v5, v6, v7, v8, v9, v3);
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v21);
  if (ot::Mle::Mle::IsLeader(v10) && !ot::Tlv::Find<ot::MeshCoP::StateTlv>(v28, &v26) && !ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(v28, &v25))
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v21);
    ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::BorderAgentLocatorTlv>(v11);
    v24 = v12;
    if (v12 && v25 == *(v21 + 51))
    {
      if (v26 == 1)
      {
        ot::Ip6::MessageInfo::GetPeerAddr(v27);
        Iid = ot::Ip6::Address::GetIid(v13);
        Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid, v15);
        BorderAgentLocator = ot::MeshCoP::BorderAgentLocatorTlv::GetBorderAgentLocator(v24, v16);
        if (BorderAgentLocator != Locator)
        {
          ot::MeshCoP::BorderAgentLocatorTlv::SetBorderAgentLocator(v24, Locator);
          v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v21);
          ot::NetworkData::Leader::IncrementVersion(v18);
        }

        v23 = 1;
        v20 = (v21 + 8);
        v19 = ot::Time::SecToMsec(0x32);
        ot::TimerMilli::Start(v20, v19);
      }

      else
      {
        v23 = -1;
        ot::MeshCoP::Leader::ResignCommissioner(v21);
      }
    }

    else
    {
      v23 = -1;
    }

    ot::MeshCoP::Leader::SendKeepAliveResponse(v21, v28, v27, v23);
  }
}

void ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::BorderAgentLocatorTlv>(ot::NetworkData::Leader *a1)
{
  ot::NetworkData::Leader::FindCommissioningDataSubTlv(a1, 9u);
  ot::As<ot::MeshCoP::BorderAgentLocatorTlv>();
}

{
  ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::BorderAgentLocatorTlv>(a1);
}

uint64_t ot::MeshCoP::BorderAgentLocatorTlv::GetBorderAgentLocator(ot::MeshCoP::BorderAgentLocatorTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::MeshCoP::BorderAgentLocatorTlv::GetBorderAgentLocator(this, a2);
}

uint64_t ot::MeshCoP::BorderAgentLocatorTlv::SetBorderAgentLocator(ot::MeshCoP::BorderAgentLocatorTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::MeshCoP::BorderAgentLocatorTlv::SetBorderAgentLocator(this, a2);
}

void ot::MeshCoP::Leader::SendKeepAliveResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v13 = a1;
  v15 = 0;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v14 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, v18);
  if (v14)
  {
    v15 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v14, v16);
    if (!v15)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v13);
      v15 = ot::Coap::CoapBase::SendMessage(v5, v14, v17);
      if (!v15)
      {
        v6 = ot::UriToString<(ot::Uri)23>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Sent %s response", v7, v8, v9, v10, v11, v12, v6);
      }
    }
  }

  else
  {
    v15 = 3;
  }

  if (v15 && v14)
  {
    ot::Message::Free(v14);
  }

  ot::Logger::LogOnError("MeshCoPLeader", v15, "send keep alive response");
}

void ot::MeshCoP::Leader::SendDatasetChanged(ot::MeshCoP::Leader *this, __n128 *a2)
{
  v17 = this;
  v16 = a2;
  v12 = this;
  v15 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v14, Instance);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v12);
  v13 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v3, 0x12u);
  if (v13)
  {
    ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v14, v16);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v12);
    v15 = ot::Coap::CoapBase::SendMessage(v4, v13, v14);
    if (!v15)
    {
      v5 = ot::UriToString<(ot::Uri)18>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Sent %s", v6, v7, v8, v9, v10, v11, v5);
    }
  }

  else
  {
    v15 = 3;
  }

  if (v15 && v13)
  {
    ot::Message::Free(v13);
  }

  ot::Logger::LogOnError("MeshCoPLeader", v15, "send dataset changed");
}

uint64_t ot::MeshCoP::Leader::SetDelayTimerMinimal(ot::MeshCoP::Leader *this, unsigned int a2)
{
  v3 = 0;
  if (a2 && a2 < 0x7530)
  {
    *(this + 8) = a2;
  }

  else
  {
    return 7;
  }

  return v3;
}

void ot::MeshCoP::Leader::SetEmptyCommissionerData(ot::MeshCoP::Leader *this)
{
  v5 = this;
  ot::MeshCoP::CommissionerSessionIdTlv::Init(v4);
  v1 = *(this + 51) + 1;
  *(this + 51) = v1;
  ot::MeshCoP::CommissionerSessionIdTlv::SetCommissionerSessionId(v4, v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  ot::NetworkData::Leader::SetCommissioningData(v2, v4, 4u);
  IgnoreError();
}

uint64_t ot::MeshCoP::CommissionerSessionIdTlv::Init(ot::MeshCoP::CommissionerSessionIdTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 11);
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::MeshCoP::CommissionerSessionIdTlv::Init(this);
}

uint64_t ot::MeshCoP::CommissionerSessionIdTlv::SetCommissionerSessionId(ot::MeshCoP::CommissionerSessionIdTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::MeshCoP::CommissionerSessionIdTlv::SetCommissionerSessionId(this, a2);
}

uint64_t ot::MeshCoP::BorderAgentLocatorTlv::Init(ot::MeshCoP::BorderAgentLocatorTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 9);
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::MeshCoP::BorderAgentLocatorTlv::Init(this);
}

void ot::MeshCoP::SteeringDataTlv::Init(ot::MeshCoP::SteeringDataTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 8);
  ot::Tlv::SetLength(this, 16);
  ot::MeshCoP::SteeringDataTlv::Clear(this);
}

{
  ot::MeshCoP::SteeringDataTlv::Init(this);
}

void ot::MeshCoP::SteeringDataTlv::Clear(ot::MeshCoP::SteeringDataTlv *this)
{
  SteeringDataLength = ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(this);
  bzero(this + 2, SteeringDataLength);
}

{
  ot::MeshCoP::SteeringDataTlv::Clear(this);
}

uint64_t ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(ot::MeshCoP::SteeringDataTlv *this)
{
  if (ot::Tlv::GetLength(this) > 0x10uLL)
  {
    return 16;
  }

  else
  {
    return ot::Tlv::GetLength(this);
  }
}

{
  return ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(this);
}

void ot::As<ot::MeshCoP::BorderAgentLocatorTlv>()
{
  ;
}

{
  ot::As<ot::MeshCoP::BorderAgentLocatorTlv>();
}

void ot::NetworkData::Leader::FindCommissioningDataSubTlv(ot::NetworkData::Leader *this, unsigned __int8 a2)
{
  ot::AsConst<ot::NetworkData::Leader>();
  ot::NetworkData::Leader::FindCommissioningDataSubTlv(v2, a2);
  ot::AsNonConst<ot::MeshCoP::Tlv>();
}

{
  ot::NetworkData::Leader::FindCommissioningDataSubTlv(this, a2);
}

void ot::AsConst<ot::NetworkData::Leader>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::Leader>();
}

uint64_t ot::MeshCoP::NetworkNameTlv::GetNetworkName(ot::MeshCoP::NetworkNameTlv *this)
{
  Length = ot::Tlv::GetLength(this);
  if (Length > 0x10uLL)
  {
    Length = 16;
  }

  ot::MeshCoP::NameData::NameData(&v4, this + 2, Length);
  return v4;
}

void *ot::MeshCoP::SteeringDataTlv::CopyTo(ot::MeshCoP::SteeringDataTlv *this, ot::MeshCoP::SteeringData *a2)
{
  SteeringDataLength = ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(this);
  ot::MeshCoP::SteeringData::Init(a2, SteeringDataLength);
  __dst = ot::MeshCoP::SteeringData::GetData(a2);
  v3 = ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(this);
  return memcpy(__dst, this + 2, v3);
}

BOOL ot::MeshCoP::SecurityPolicyTlv::IsValid(ot::MeshCoP::SecurityPolicyTlv *this)
{
  v3 = 0;
  if (ot::Tlv::GetLength(this) >= 2uLL)
  {
    return ot::MeshCoP::SecurityPolicyTlv::GetFlagsLength(this) >= 1;
  }

  return v3;
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::GetFlagsLength(ot::MeshCoP::SecurityPolicyTlv *this)
{
  return (ot::Tlv::GetLength(this) - 2);
}

{
  return ot::MeshCoP::SecurityPolicyTlv::GetFlagsLength(this);
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::GetSecurityPolicy(ot::MeshCoP::SecurityPolicyTlv *this)
{
  ot::SecurityPolicy::SecurityPolicy(&v6);
  FlagsLength = ot::MeshCoP::SecurityPolicyTlv::GetFlagsLength(this);
  v5 = ot::Min<unsigned char>(2u, FlagsLength);
  LOWORD(v6) = ot::MeshCoP::SecurityPolicyTlv::GetRotationTime(this, v2);
  ot::SecurityPolicy::SetFlags(&v6, this + 4, v5);
  return v6;
}

ot::SecurityPolicy *ot::SecurityPolicy::SecurityPolicy(ot::SecurityPolicy *this)
{
  ot::SecurityPolicy::SecurityPolicy(this);
  return this;
}

{
  ot::SecurityPolicy::SetToDefault(this);
  return this;
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::GetRotationTime(ot::MeshCoP::SecurityPolicyTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::MeshCoP::SecurityPolicyTlv::GetRotationTime(this, a2);
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::SetRotationTime(ot::MeshCoP::SecurityPolicyTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::MeshCoP::SecurityPolicyTlv::SetRotationTime(this, a2);
}

const char *ot::MeshCoP::StateTlv::StateToString(unsigned __int8 a1)
{
  if (a1 == 255)
  {
    return "Reject";
  }

  else
  {
    return ot::MeshCoP::StateTlv::StateToString(ot::MeshCoP::StateTlv::State)::kStateStrings[a1];
  }
}

uint64_t ot::MeshCoP::DelayTimerTlv::CalculateRemainingDelay(uint64_t a1, const unsigned __int8 *a2)
{
  v9 = a2;
  v8 = a1;
  v2 = ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(a1, a2);
  v3 = ot::Min<unsigned int>(v2, 0xF731400u);
  v7 = v3;
  Now = ot::TimerMilli::GetNow(v3);
  v6 = ot::Time::operator-(&Now, &v9);
  if (v7 > v6)
  {
    v7 -= v6;
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t ot::MeshCoP::WakeupChannelTlv::IsValid(ot::MeshCoP::WakeupChannelTlv *this)
{
  v5 = 0;
  if (ot::Tlv::GetLength(this) == 3 && *(this + 2) < 0x20uLL && ((1 << *(this + 2)) & 1) != 0 && ot::MeshCoP::WakeupChannelTlv::GetChannel(this, v1) >= 11 && ot::MeshCoP::WakeupChannelTlv::GetChannel(this, v2) <= 25)
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t ot::MeshCoP::WakeupChannelTlv::SetChannel(ot::MeshCoP::WakeupChannelTlv *this, unsigned __int16 a2)
{
  ot::MeshCoP::WakeupChannelTlv::SetChannelPage(this, 0);
  result = ot::BigEndian::HostSwap16(a2, v2);
  *(this + 3) = result;
  return result;
}

uint64_t ot::MeshCoP::WakeupChannelTlv::SetChannelPage(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::MeshCoP::WakeupChannelTlv::SetChannelPage(this, a2);
}

BOOL ot::MeshCoP::ChannelMaskTlv::IsValid(ot::MeshCoP::ChannelMaskTlv *this)
{
  v3 = this;
  v2 = 0;
  return ot::MeshCoP::ChannelMaskTlv::ReadChannelMask(this, &v2) == 0;
}

uint64_t ot::MeshCoP::ChannelMaskTlv::ReadChannelMask(ot::MeshCoP::ChannelMaskTlv *this, unsigned int *a2)
{
  v8 = this;
  v7 = a2;
  ot::Clearable<ot::MeshCoP::ChannelMaskTlv::EntriesData>::Clear(v5);
  v5[0] = (this + 2);
  Length = ot::Tlv::GetLength(this);
  ot::OffsetRange::Init(&v6, 0, Length);
  return ot::MeshCoP::ChannelMaskTlv::EntriesData::Parse(v5, v7);
}

void *ot::Clearable<ot::MeshCoP::ChannelMaskTlv::EntriesData>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::ChannelMaskTlv::EntriesData>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::ChannelMaskTlv::EntriesData>::Clear(a1);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::EntriesData::Parse(ot::Message **this, unsigned int *a2)
{
  v18 = this;
  v17 = a2;
  v16 = 6;
  *a2 = 0;
  if (!ot::OffsetRange::IsEmpty((this + 2)))
  {
    while (!ot::OffsetRange::IsEmpty((this + 2)))
    {
      if (!ot::OffsetRange::Contains((this + 2), 2u))
      {
        return v16;
      }

      if (this[1])
      {
        v11 = this[1];
        Offset = ot::OffsetRange::GetOffset((this + 2));
        ot::Message::ReadBytes(v11, Offset, v15, 2u);
        v14 = v15;
        MaskLength = ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(v15);
      }

      else
      {
        v10 = *this;
        v14 = (v10 + ot::OffsetRange::GetOffset((this + 2)));
        MaskLength = ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(v14);
      }

      v13 = MaskLength + 2;
      if (!ot::OffsetRange::Contains((this + 2), (MaskLength + 2)))
      {
        return v16;
      }

      ChannelPage = ot::MeshCoP::ChannelMaskTlv::Entry::GetChannelPage(v14);
      if (ot::Radio::SupportsChannelPage(ChannelPage))
      {
        if (ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(v14) != 4)
        {
          return v16;
        }

        if (this[1])
        {
          ot::Message::Read<ot::MeshCoP::ChannelMaskTlv::Entry>(this[1], (this + 2), v15);
          IgnoreError();
        }

        Mask = ot::MeshCoP::ChannelMaskTlv::Entry::GetMask(v14, v5);
        v6 = ot::MeshCoP::ChannelMaskTlv::Entry::GetChannelPage(v14);
        v7 = ot::Radio::ChannelMaskForPage(v6);
        *v17 |= Mask & v7;
      }

      ot::OffsetRange::AdvanceOffset(this + 8, v13);
    }

    return 0;
  }

  return v16;
}

uint64_t ot::MeshCoP::ChannelMaskTlv::FindIn(ot::MeshCoP::ChannelMaskTlv *this, const ot::Message *a2, unsigned int *a3)
{
  v10 = this;
  v9 = a2;
  TlvValueOffsetRange = 0;
  ot::Clearable<ot::MeshCoP::ChannelMaskTlv::EntriesData>::Clear(v6);
  v6[1] = v10;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v10, 0x35, &v5, v3);
  if (!TlvValueOffsetRange)
  {
    v7 = v5;
    return ot::MeshCoP::ChannelMaskTlv::EntriesData::Parse(v6, v9);
  }

  return TlvValueOffsetRange;
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(ot::MeshCoP::ChannelMaskTlv::Entry *this)
{
  return *(this + 1);
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(this);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::GetChannelPage(ot::MeshCoP::ChannelMaskTlv::Entry *this)
{
  return *this;
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::GetChannelPage(this);
}

uint64_t ot::Message::Read<ot::MeshCoP::ChannelMaskTlv::Entry>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 6u);
}

{
  return ot::Message::Read<ot::MeshCoP::ChannelMaskTlv::Entry>(a1, a2, a3);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::GetMask(ot::MeshCoP::ChannelMaskTlv::Entry *this, unsigned int a2)
{
  v2 = ot::BigEndian::HostSwap32(*(this + 2), a2);
  return ot::Reverse32(v2);
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::GetMask(this, a2);
}

uint64_t ot::Radio::ChannelMaskForPage(ot::Radio *this)
{
  v2 = 0;
  if (!this)
  {
    return 134215680;
  }

  return v2;
}

{
  return ot::Radio::ChannelMaskForPage(this);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::PrepareValue(uint64_t result, int a2)
{
  v7 = result;
  v5 = result;
  *(result + 6) = 0;
  for (i = &ot::Radio::kSupportedChannelPages; i != "AddrResolver"; ++i)
  {
    v3 = *i;
    result = ot::Radio::ChannelMaskForPage(*i);
    v2 = result & a2;
    if ((result & a2) != 0)
    {
      ot::MeshCoP::ChannelMaskTlv::Entry::SetChannelPage(v5, v3);
      ot::MeshCoP::ChannelMaskTlv::Entry::SetMaskLength(v5, 4);
      result = ot::MeshCoP::ChannelMaskTlv::Entry::SetMask(v5, v2);
      *(v7 + 6) += 6;
      v5 = (v5 + 6);
    }
  }

  return result;
}

_BYTE *ot::MeshCoP::ChannelMaskTlv::Entry::SetChannelPage(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::SetChannelPage(this, a2);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::SetMaskLength(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::SetMaskLength(this, a2);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::SetMask(ot::MeshCoP::ChannelMaskTlv::Entry *this, unsigned int a2)
{
  v2 = ot::Reverse32(a2);
  result = ot::BigEndian::HostSwap32(v2, v3);
  *(this + 2) = result;
  return result;
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::SetMask(this, a2);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::AppendTo(ot::MeshCoP::ChannelMaskTlv *this, ot::Message *a2)
{
  v5 = this;
  v4 = a2;
  ot::MeshCoP::ChannelMaskTlv::PrepareValue(v3, a2);
  return ot::Tlv::Append<ot::MeshCoP::ChannelMaskTlv>(v5, v3, v3[6]);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::ChannelMaskTlv>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 0x35, a2, a3);
}

{
  return ot::Tlv::Append<ot::MeshCoP::ChannelMaskTlv>(a1, a2, a3);
}

uint64_t ot::Reverse32(ot *this)
{
  v1 = ((((((((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F0) >> 4) | (16 * (((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F))) & 0xFF00FF00) >> 8) | ((((((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F0) >> 4) | (16 * (((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55))) & 0x33))) & 0xF))) << 8));
  return ((((((((((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F0) >> 4) | (16 * (((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F))) & 0xFF00FF00) >> 8) | (((((((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F0) >> 4) | (16 * (((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F))) & 0xFF00FF) << 8)) & 0xFFFF0000) >> 16) | (v1 << 16);
}

{
  return ot::Reverse32(this);
}

void *ot::ClearAllBytes<ot::MeshCoP::ChannelMaskTlv::EntriesData>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::ChannelMaskTlv::EntriesData>(result);
}

uint64_t ot::Ip6::Matter::Header::ParseFrom(ot::Ip6::Matter::Header *this, const ot::Message *a2, unsigned __int16 a3)
{
  *(this + 42) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v7 = ot::Message::Read<unsigned char>(a2, a3, this);
  if (!v7)
  {
    v9 = a3 + 1;
    v7 = ot::Message::Read<unsigned short>(a2, v9, this + 2);
    if (!v7)
    {
      v10 = v9 + 2;
      v7 = ot::Message::Read<unsigned char>(a2, v10, this + 4);
      if (!v7)
      {
        v11 = v10 + 1;
        v7 = ot::Message::Read<unsigned int>(a2, v11, this + 8);
        if (!v7)
        {
          v12 = v11 + 4;
          if ((*this & 4) != 0)
          {
            *(this + 38) = 1;
            v7 = ot::Message::Read<unsigned long long>(a2, v12, this + 16);
            if (v7)
            {
              goto LABEL_19;
            }

            v12 += 8;
          }

          if (*this)
          {
            *(this + 39) = 1;
            v7 = ot::Message::Read<unsigned long long>(a2, v12, this + 24);
            if (v7)
            {
              goto LABEL_19;
            }

            v12 += 8;
          }

          else if ((*this & 2) != 0)
          {
            *(this + 40) = 1;
            v7 = ot::Message::Read<unsigned short>(a2, v12, this + 32);
            if (v7)
            {
              goto LABEL_19;
            }

            v12 += 2;
          }

          if (!*(this + 1) && (*(this + 4) & 3) == 0)
          {
            *(this + 41) = 1;
            v7 = ot::Message::Read<unsigned char>(a2, v12, this + 34);
            if (!v7)
            {
              v13 = v12 + 1;
              v7 = ot::Message::Read<unsigned char>(a2, v13, this + 35);
              if (!v7)
              {
                v7 = ot::Message::Read<unsigned short>(a2, v13 + 1, this + 36);
              }
            }
          }
        }
      }
    }
  }

LABEL_19:
  if (v7)
  {
    *(this + 42) = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v3 = ot::ErrorToString(v7);
        __os_log_helper_16_2_1_8_32(v16, v3);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "Matter header can not be parsed (MsgType:kTypeIp6), error=%s", v16, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v15, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v15, 0x16u);
    }
  }

  return v7;
}

uint64_t ot::Message::Read<unsigned int>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<unsigned int>(a1, a2, a3);
}

uint64_t ot::Message::Read<unsigned long long>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 8u);
}

{
  return ot::Message::Read<unsigned long long>(a1, a2, a3);
}

uint64_t ot::Ip6::Matter::Header::ParseFrom(ot::Ip6::Matter::Header *this, ot::FrameData *a2)
{
  *(this + 42) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v6 = ot::FrameData::Read<unsigned char>(a2, this);
  if (!v6)
  {
    v6 = ot::FrameData::Read<unsigned short>(a2, this + 2);
    if (!v6)
    {
      v6 = ot::FrameData::Read<unsigned char>(a2, this + 4);
      if (!v6)
      {
        v6 = ot::FrameData::Read<unsigned int>(a2, this + 8);
        if (!v6)
        {
          if ((*this & 4) == 0 || (*(this + 38) = 1, (v6 = ot::FrameData::Read<unsigned long long>(a2, this + 16)) == 0))
          {
            if (*this)
            {
              *(this + 38) = 1;
              v6 = ot::FrameData::Read<unsigned long long>(a2, this + 24);
              if (v6)
              {
                goto LABEL_17;
              }
            }

            else if ((*this & 2) != 0)
            {
              *(this + 40) = 1;
              v6 = ot::FrameData::Read<unsigned short>(a2, this + 32);
              if (v6)
              {
                goto LABEL_17;
              }
            }

            if (!*(this + 1) && (*(this + 4) & 3) == 0)
            {
              *(this + 41) = 1;
              v6 = ot::FrameData::Read<unsigned char>(a2, this + 34);
              if (!v6)
              {
                v6 = ot::FrameData::Read<unsigned char>(a2, this + 35);
                if (!v6)
                {
                  v6 = ot::FrameData::Read<unsigned short>(a2, this + 36);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_17:
  if (v6)
  {
    *(this + 42) = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v2 = ot::ErrorToString(v6);
        __os_log_helper_16_2_1_8_32(v9, v2);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "Matter header can not be parsed (MsgType:kType6lowpan), error=%s", v9, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
    }
  }

  return v6;
}

uint64_t ot::FrameData::Read<unsigned int>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 4u);
}

{
  return ot::FrameData::Read<unsigned int>(a1, a2);
}

uint64_t ot::FrameData::Read<unsigned long long>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 8u);
}

{
  return ot::FrameData::Read<unsigned long long>(a1, a2);
}

const char *ot::Ip6::Matter::Header::GetProtocolOpcodeAsString(ot::Ip6::Matter::Header *this)
{
  switch(*(this + 35))
  {
    case 0:
      v2 = ", MsgCounterSyncReq";
      break;
    case 1:
      v2 = ", MsgCounterSyncRsp";
      break;
    case 0x10:
      v2 = ", MRP StandaloneAck";
      break;
    case 0x20:
      v2 = ", PBKDFParamRequest";
      break;
    case 0x21:
      v2 = ", PBKDFParamResponse";
      break;
    case 0x22:
      v2 = ", PASE Pake1";
      break;
    case 0x23:
      v2 = ", PASE Pake2";
      break;
    case 0x24:
      v2 = ", PASE Pake3";
      break;
    case 0x30:
      v2 = ", CASE Sigma1";
      break;
    case 0x31:
      v2 = ", CASE Sigma2";
      break;
    case 0x32:
      v2 = ", CASE Sigma3";
      break;
    case 0x33:
      v2 = ", CASE Sigma2_Resume";
      break;
    case 0x40:
      v2 = ", StatusReport";
      break;
    case 0x50:
      v2 = ", ICD Check-In Msg";
      break;
    default:
      v2 = ", Unknown Protocol Opcode";
      break;
  }

  return v2;
}

ot::PanIdQueryClient *ot::PanIdQueryClient::PanIdQueryClient(ot::PanIdQueryClient *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this);
  return this;
}

{
  ot::PanIdQueryClient::PanIdQueryClient(this, a2);
  return this;
}

uint64_t ot::PanIdQueryClient::SendQuery(ot::PanIdQueryClient *this, unsigned __int16 a2, unsigned int a3, const ot::Ip6::Address *a4, void (*a5)(unsigned __int16, unsigned int, void *), uint64_t a6)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v21 = this;
  inited = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v23, Instance);
  v22 = 0;
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(v21);
  if (ot::MeshCoP::Commissioner::IsActive(v7))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v21);
    v22 = ot::Coap::CoapBase::NewPriorityMessage(v8);
    if (v22)
    {
      inited = ot::Coap::Message::InitAsPost(v22, v27, 0x1Bu);
      if (!inited)
      {
        inited = ot::Coap::Message::SetPayloadMarker(v22);
        if (!inited)
        {
          v20 = v22;
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(v21);
          SessionId = ot::MeshCoP::Commissioner::GetSessionId(v9);
          inited = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v22, SessionId);
          if (!inited)
          {
            inited = ot::MeshCoP::ChannelMaskTlv::AppendTo(v22, v28);
            if (!inited)
            {
              inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v22, v29);
              if (!inited)
              {
                ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v23, v27);
                v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v21);
                inited = ot::Coap::CoapBase::SendMessage(v11, v22, v23);
                if (!inited)
                {
                  v12 = ot::UriToString<(ot::Uri)27>();
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>("PanIdQueryClnt", "Sent %s", v13, v14, v15, v16, v17, v18, v12);
                  ot::CallbackBase<void (*)(unsigned short,unsigned int,void *)>::Set(v21, v26, v25);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      inited = 3;
    }
  }

  else
  {
    inited = 13;
  }

  if (inited && v22)
  {
    ot::Message::Free(v22);
  }

  return inited;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 1u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

void *ot::CallbackBase<void (*)(unsigned short,unsigned int,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned short,unsigned int,void *)>::Set(result, a2, a3);
}

void ot::PanIdQueryClient::HandleTmf<(ot::Uri)25>(void *a1, ot::MeshCoP::ChannelMaskTlv *a2, ot::Ip6::MessageInfo *a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v19 = a1;
  v21 = 0;
  v20 = 0;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v3 = ot::UriToString<(ot::Uri)25>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("PanIdQueryClnt", "Received %s", v4, v5, v6, v7, v8, v9, v3);
    if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v23, &v21) && !ot::MeshCoP::ChannelMaskTlv::FindIn(v23, &v20, v10))
    {
      ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned short &,unsigned int &>(v19, &v21, &v20);
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v19);
      if (!ot::Coap::CoapBase::SendEmptyAck(v11, v23, v22))
      {
        v12 = ot::UriToString<(ot::Uri)25>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("PanIdQueryClnt", "Sent %s response", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }
}

void *ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned short &,unsigned int &>(void *result, unsigned __int16 *a2, unsigned int *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short &,unsigned int &>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned short &,unsigned int &>(result, a2, a3);
}

uint64_t ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short &,unsigned int &>(uint64_t a1, unsigned __int16 *a2, unsigned int *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short &,unsigned int &>(a1, a2, a3);
}

BOOL ot::MeshCoP::Timestamp::ConvertTo(ot::MeshCoP::Timestamp *a1, uint64_t a2)
{
  *a2 = ot::MeshCoP::Timestamp::GetSeconds(a1, a2);
  *(a2 + 8) = ot::MeshCoP::Timestamp::GetTicks(a1, v2);
  result = ot::MeshCoP::Timestamp::GetAuthoritative(a1, v3);
  *(a2 + 10) = result;
  return result;
}

uint64_t ot::MeshCoP::Timestamp::GetTicks(ot::MeshCoP::Timestamp *this, unsigned __int16 a2)
{
  return (ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(this, a2) >> 1);
}

{
  return ot::MeshCoP::Timestamp::GetTicks(this, a2);
}

BOOL ot::MeshCoP::Timestamp::GetAuthoritative(ot::MeshCoP::Timestamp *this, unsigned __int16 a2)
{
  return (ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(this, a2) & 1) != 0;
}

{
  return ot::MeshCoP::Timestamp::GetAuthoritative(this, a2);
}

uint64_t ot::MeshCoP::Timestamp::SetFrom(ot::MeshCoP::Timestamp *a1, uint64_t a2)
{
  ot::MeshCoP::Timestamp::SetSeconds(a1, *a2);
  ot::MeshCoP::Timestamp::SetTicks(a1, *(a2 + 8));
  return ot::MeshCoP::Timestamp::SetAuthoritative(a1, *(a2 + 10) & 1);
}

uint64_t ot::MeshCoP::Timestamp::SetSeconds(ot::MeshCoP::Timestamp *this, uint64_t a2)
{
  v5 = a2;
  *this = ot::BigEndian::HostSwap16(WORD2(a2), a2);
  result = ot::BigEndian::HostSwap32(v5, v2);
  *(this + 2) = result;
  return result;
}

uint64_t ot::MeshCoP::Timestamp::SetAuthoritative(ot::MeshCoP::Timestamp *this, unsigned __int16 a2)
{
  v5 = a2;
  v2 = ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(this, a2) & 0xFFFE;
  return ot::MeshCoP::Timestamp::SetTicksAndAuthFlag(this, v2 | ((v5 & 1) != 0));
}

uint64_t ot::MeshCoP::Timestamp::SetToInvalid(uint64_t this)
{
  *this = -1;
  *(this + 2) = -1;
  *(this + 6) = -1;
  return this;
}

BOOL ot::MeshCoP::Timestamp::IsValid(ot::MeshCoP::Timestamp *this)
{
  v2 = 1;
  if (*this == 0xFFFF)
  {
    v2 = 1;
    if (*(this + 2) == -1)
    {
      return *(this + 3) != 0xFFFF;
    }
  }

  return v2;
}

uint64_t ot::MeshCoP::Timestamp::SetToOrphanAnnounce(ot::MeshCoP::Timestamp *this)
{
  *this = 0;
  *(this + 2) = 0;
  return ot::MeshCoP::Timestamp::SetTicksAndAuthFlag(this, 1u);
}

uint64_t ot::MeshCoP::Timestamp::SetTicksAndAuthFlag(ot::MeshCoP::Timestamp *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::MeshCoP::Timestamp::SetTicksAndAuthFlag(this, a2);
}

BOOL ot::MeshCoP::Timestamp::IsOrphanAnnounce(ot::MeshCoP::Timestamp *this, unsigned __int16 a2)
{
  v3 = 0;
  if (!*this)
  {
    v3 = 0;
    if (!*(this + 2))
    {
      return ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(this, a2) == 1;
    }
  }

  return v3;
}

uint64_t ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(ot::MeshCoP::Timestamp *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 3), a2);
}

{
  return ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(this, a2);
}

uint64_t ot::MeshCoP::Timestamp::Compare(ot::MeshCoP::Timestamp *this, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  IsValid = ot::MeshCoP::Timestamp::IsValid(this);
  v3 = ot::MeshCoP::Timestamp::IsValid(a2);
  v18 = ot::ThreeWayCompare<BOOL>(IsValid, v3);
  if (!v18)
  {
    Seconds = ot::MeshCoP::Timestamp::GetSeconds(this, v4);
    v6 = ot::MeshCoP::Timestamp::GetSeconds(a2, v5);
    v18 = ot::ThreeWayCompare<unsigned long long>(Seconds, v6);
    if (!v18)
    {
      Ticks = ot::MeshCoP::Timestamp::GetTicks(this, v7);
      v9 = ot::MeshCoP::Timestamp::GetTicks(a2, v8);
      v18 = ot::ThreeWayCompare<unsigned short>(Ticks, v9);
      if (!v18)
      {
        Authoritative = ot::MeshCoP::Timestamp::GetAuthoritative(this, v10);
        v12 = ot::MeshCoP::Timestamp::GetAuthoritative(a2, v11);
        return ot::ThreeWayCompare<BOOL>(Authoritative, v12);
      }
    }
  }

  return v18;
}

uint64_t ot::ThreeWayCompare<BOOL>(char a1, char a2)
{
  if ((a1 & 1) == (a2 & 1))
  {
    return 0;
  }

  else if (a1)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

{
  return ot::ThreeWayCompare<BOOL>(a1, a2);
}

uint64_t ot::ThreeWayCompare<unsigned long long>(unint64_t a1, unint64_t a2)
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
  return ot::ThreeWayCompare<unsigned long long>(a1, a2);
}

uint64_t ot::MeshCoP::Timestamp::AdvanceRandomTicks(ot::MeshCoP::Timestamp *this, unsigned __int16 a2)
{
  Ticks = ot::MeshCoP::Timestamp::GetTicks(this, a2);
  v7 = Ticks + ot::Random::NonCrypto::GetUint32InRange(1, 0x8000u);
  if (v7 >= 0x8000u)
  {
    v7 += 0x8000;
    Seconds = ot::MeshCoP::Timestamp::GetSeconds(this, v2);
    ot::MeshCoP::Timestamp::SetSeconds(this, Seconds + 1);
  }

  return ot::MeshCoP::Timestamp::SetTicks(this, v7);
}

unsigned __int16 *ot::Checksum::AddUint8(unsigned __int16 *this, unsigned __int8 a2)
{
  if (this[1])
  {
    v2 = a2;
  }

  else
  {
    v2 = a2 << 8;
  }

  v3 = *this + v2;
  if (v3 < *this)
  {
    ++v3;
  }

  *this = v3;
  *(this + 2) = (*(this + 2) ^ 1) & 1;
  return this;
}

unsigned __int16 *ot::Checksum::AddUint16(ot::Checksum *this, __int16 a2)
{
  v4 = a2;
  ot::Checksum::AddUint8(this, HIBYTE(a2));
  return ot::Checksum::AddUint8(this, v4);
}

unsigned __int16 *ot::Checksum::AddData(unsigned __int16 *this, const unsigned __int8 *a2, unsigned __int16 a3)
{
  v3 = this;
  for (i = 0; i < a3; ++i)
  {
    this = ot::Checksum::AddUint8(v3, a2[i]);
  }

  return this;
}

uint64_t ot::Checksum::WriteToMessage(ot::Checksum *this, unsigned __int16 a2, ot::Message *a3)
{
  v7 = this;
  v6 = a2;
  *&v5[1] = a3;
  v5[0] = ot::Checksum::GetValue(this);
  if (v5[0] != 0xFFFF)
  {
    v5[0] = ~v5[0];
  }

  v5[0] = ot::BigEndian::HostSwap16(v5[0], v3);
  return ot::Message::Write<unsigned short>(*&v5[1], v6, v5);
}

uint64_t ot::Checksum::GetValue(ot::Checksum *this)
{
  return *this;
}

{
  return ot::Checksum::GetValue(this);
}

uint64_t ot::Message::Write<unsigned short>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 2u);
}

{
  return ot::Message::Write<unsigned short>(a1, a2, a3);
}

uint64_t ot::Checksum::Calculate(ot::Checksum *this, const ot::Ip6::Address *a2, const ot::Ip6::Address *a3, unsigned __int8 a4, const ot::Message *a5)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  Length = ot::Message::GetLength(a5);
  v14 = Length - ot::Message::GetOffset(v16);
  ot::Ip6::Address::GetBytes(v19);
  ot::Checksum::AddData(this, v5, 0x10u);
  ot::Ip6::Address::GetBytes(v18);
  ot::Checksum::AddData(this, v6, 0x10u);
  ot::Checksum::AddUint16(this, v14);
  ot::Checksum::AddUint16(this, v17);
  v13 = v16;
  Offset = ot::Message::GetOffset(v16);
  ot::Message::GetFirstChunk(v13, Offset, &v14, v15);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v15);
    if (result <= 0)
    {
      break;
    }

    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v15);
    v9 = ot::Data<(ot::DataLengthType)1>::GetLength(v15);
    ot::Checksum::AddData(this, Bytes, v9);
    ot::Message::GetNextChunk(v16, &v14, v15);
  }

  return result;
}

uint64_t ot::Checksum::Calculate(ot::Checksum *this, const ot::Ip4::Address *a2, const ot::Ip4::Address *a3, unsigned __int8 a4, const ot::Message *a5)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  Length = ot::Message::GetLength(a5);
  v13 = Length - ot::Message::GetOffset(v15);
  if (v16 != 1)
  {
    ot::Ip4::Address::GetBytes(v18);
    ot::Checksum::AddData(this, v5, 4u);
    ot::Ip4::Address::GetBytes(v17);
    ot::Checksum::AddData(this, v6, 4u);
    ot::Checksum::AddUint16(this, v16);
    ot::Checksum::AddUint16(this, v13);
  }

  Offset = ot::Message::GetOffset(v15);
  ot::Message::GetFirstChunk(v15, Offset, &v13, v14);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    if (result <= 0)
    {
      break;
    }

    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v14);
    v9 = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    ot::Checksum::AddData(this, Bytes, v9);
    ot::Message::GetNextChunk(v15, &v13, v14);
  }

  return result;
}

void ot::Ip4::Address::GetBytes(ot::Ip4::Address *this)
{
  ;
}

{
  ot::Ip4::Address::GetBytes(this);
}

uint64_t ot::Checksum::VerifyMessageChecksum(ot::Checksum *this, const ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v19 = v20;
  ot::Checksum::Checksum(v20);
  ot::Ip6::MessageInfo::GetPeerAddr(v23);
  v18 = v3;
  ot::Ip6::MessageInfo::GetSockAddr(v23);
  ot::Checksum::Calculate(v20, v18, v4, v22, v24);
  if (ot::Checksum::GetValue(v20) != 0xFFFF)
  {
    v10 = ot::Ip6::Ip6::IpProtoToString(v22, v5, v6, v7, v8, v9);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("Ip6", "Bad %s checksum", v11, v12, v13, v14, v15, v16, v10);
    return 2;
  }

  return v21;
}

ot::Checksum *ot::Checksum::UpdateMessageChecksum(ot::Checksum *this, ot::Message *a2, const ot::Ip6::Address *a3, const ot::Ip6::Address *a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  result = ot::Checksum::Checksum(v9);
  switch(v11)
  {
    case 6u:
      v10 = 16;
LABEL_8:
      v7 = v14;
      Offset = ot::Message::GetOffset(v14);
      v8 = 0;
      ot::Message::Write<unsigned short>(v7, Offset + v10, &v8);
      ot::Checksum::Calculate(v9, v13, v12, v11, v14);
      v6 = ot::Message::GetOffset(v14);
      return ot::Checksum::WriteToMessage(v9, v6 + v10, v14);
    case 0x11u:
      v10 = 6;
      goto LABEL_8;
    case 0x3Au:
      v10 = 2;
      goto LABEL_8;
  }

  return result;
}

ot::Checksum *ot::Checksum::UpdateMessageChecksum(ot::Checksum *this, ot::Message *a2, const ot::Ip4::Address *a3, const ot::Ip4::Address *a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  result = ot::Checksum::Checksum(v9);
  switch(v11)
  {
    case 1u:
      v10 = 2;
      goto LABEL_8;
    case 6u:
      v10 = 16;
LABEL_8:
      v7 = v14;
      Offset = ot::Message::GetOffset(v14);
      v8 = 0;
      ot::Message::Write<unsigned short>(v7, Offset + v10, &v8);
      ot::Checksum::Calculate(v9, v13, v12, v11, v14);
      v6 = ot::Message::GetOffset(v14);
      return ot::Checksum::WriteToMessage(v9, v6 + v10, v14);
    case 0x11u:
      v10 = 6;
      goto LABEL_8;
  }

  return result;
}

uint64_t ot::Checksum::UpdateIp4HeaderChecksum(ot::Checksum *this, ot::Ip4::Header *a2)
{
  v6 = this;
  ot::Checksum::Checksum(v5);
  ot::Ip4::Header::SetChecksum(v6, 0);
  ot::Checksum::AddData(v5, v6, 0x14u);
  v4 = v6;
  Value = ot::Checksum::GetValue(v5);
  return ot::Ip4::Header::SetChecksum(v4, ~Value);
}

uint64_t ot::Ip4::Header::SetChecksum(ot::Ip4::Header *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 5) = result;
  return result;
}

{
  return ot::Ip4::Header::SetChecksum(this, a2);
}

uint64_t ot::Checksum::Checksum(uint64_t this)
{
  *this = 0;
  *(this + 2) = 0;
  return this;
}

ot::Dhcp6::Client *ot::Dhcp6::Client::Client(ot::Dhcp6::Client *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::SocketIn((this + 8), a2, this);
  ot::TrickleTimer::TrickleTimer((this + 80), a2, ot::Dhcp6::Client::HandleTrickleTimer);
  ot::Time::Time((this + 148), 0);
  *(this + 43) = 0;
  ot::ClearAllBytes<ot::Dhcp6::Client::IdentityAssociation [4]>(this + 152);
  return this;
}

{
  ot::Dhcp6::Client::Client(this, a2);
  return this;
}

void ot::Dhcp6::Client::HandleUdpReceive(ot::Dhcp6::Client *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  Offset = ot::Message::GetOffset(a2);
  if (!ot::Message::Read<ot::Dhcp6::Header>(a2, Offset, v7))
  {
    ot::Message::MoveOffset(v9, 4);
    if (ot::Dhcp6::Header::GetType(v7) == 7)
    {
      TransactionId = ot::Dhcp6::Header::GetTransactionId(v7);
      if (ot::Equatable<ot::Dhcp6::TransactionId>::operator==(TransactionId, this + 144))
      {
        ot::Dhcp6::Client::ProcessReply(this, v9);
      }
    }
  }
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

void *ot::ClearAllBytes<ot::Dhcp6::Client::IdentityAssociation [4]>(void *a1)
{
  return memset(a1, 0, 0xC0uLL);
}

{
  return ot::ClearAllBytes<ot::Dhcp6::Client::IdentityAssociation [4]>(a1);
}

BOOL ot::Ip6::Netif::UnicastAddress::HasPrefix(ot::Ip6::Netif::UnicastAddress *this, const ot::Ip6::Prefix *a2)
{
  v5 = *(this + 16);
  v6 = 0;
  if (v5 == ot::Ip6::Prefix::GetLength(a2))
  {
    ot::Ip6::Netif::UnicastAddress::GetAddress(this);
    return ot::Ip6::Address::MatchesPrefix(v2, a2);
  }

  return v6;
}

{
  return ot::Ip6::Netif::UnicastAddress::HasPrefix(this, a2);
}

void ot::Dhcp6::Client::UpdateAddresses(ot::Dhcp6::Client *this)
{
  v26 = this;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v18 = (this + 152);
  v17 = (this + 344);
  while (v18 != v17)
  {
    if (*(v18 + 42) && *(v18 + 9))
    {
      v25 = 0;
      v23 = 0;
      while (1)
      {
        v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v1, &v23, &v19))
        {
          break;
        }

        if ((v21 & 0x10) != 0)
        {
          ot::NetworkData::OnMeshPrefixConfig::GetPrefix(&v19);
          if (ot::Dhcp6::Client::MatchNetifAddressWithPrefix(v18, v2, v3))
          {
            v25 = 1;
            break;
          }
        }
      }

      if ((v25 & 1) == 0)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
        ot::Ip6::Netif::RemoveUnicastAddress(v4, v18);
        *(v18 + 42) = 0;
      }
    }

    v18 = (v18 + 48);
  }

  v23 = 0;
  while (1)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v5, &v23, &v19))
    {
      break;
    }

    v16 = 0;
    if ((v21 & 0x10) != 0)
    {
      v24 = 1;
      v25 = 0;
      for (i = (this + 152); i != (this + 344); i = (i + 48))
      {
        if (*(i + 42))
        {
          ot::NetworkData::OnMeshPrefixConfig::GetPrefix(&v19);
          if (ot::Dhcp6::Client::MatchNetifAddressWithPrefix(i, v12, v13))
          {
            v25 = 1;
            v16 = i;
            break;
          }
        }

        else if (!v16)
        {
          v16 = i;
        }
      }

      if (v25)
      {
LABEL_31:
        *(v16 + 20) = v22;
      }

      else
      {
        if (v16)
        {
          *v16 = v19;
          *(v16 + 16) = v20;
          *(v16 + 42) = 1;
          *(v16 + 9) = 0;
          goto LABEL_31;
        }

        ot::Logger::LogAtLevel<(ot::LogLevel)2>("Dhcp6Client", "Insufficient memory for new DHCP prefix", v6, v7, v8, v9, v10, v11);
      }
    }
  }

  if (v24)
  {
    ot::Dhcp6::Client::Start(this);
  }

  else
  {
    ot::Dhcp6::Client::Stop(this);
  }
}

uint64_t ot::Dhcp6::Client::Start(ot::Dhcp6::Client *this)
{
  result = ot::Ip6::Udp::SocketHandle::IsBound((this + 8));
  if ((result & 1) == 0)
  {
    ot::Ip6::Udp::Socket::Open((this + 8));
    IgnoreError();
    ot::Ip6::Udp::Socket::Bind((this + 8), 546, 1);
    IgnoreError();
    return ot::Dhcp6::Client::ProcessNextIdentityAssociation(this);
  }

  return result;
}

void ot::Dhcp6::Client::Stop(ot::Dhcp6::Client *this)
{
  ot::TrickleTimer::Stop((this + 80));
  ot::Ip6::Udp::Socket::Close((this + 8));
  IgnoreError();
}

uint64_t ot::Dhcp6::Client::ProcessNextIdentityAssociation(ot::Dhcp6::Client *this)
{
  v8 = 0;
  if (!*(this + 43) || *(*(this + 43) + 42) != 2)
  {
    ot::TrickleTimer::Stop((this + 80));
    for (i = this + 152; i != this + 344; i += 48)
    {
      if (i[42] == 1)
      {
        ot::Dhcp6::TransactionId::GenerateRandom((this + 144), v1, v2);
        IgnoreError();
        *(this + 43) = i;
        v5 = ot::Time::SecToMsec(1);
        v3 = ot::Time::SecToMsec(0x78);
        ot::TrickleTimer::Start(this + 80, 0, v5, v3, 0xFFFF);
        ot::TrickleTimer::IndicateInconsistent(this + 80);
        v8 = 1;
        return v8 & 1;
      }
    }
  }

  return v8 & 1;
}

uint64_t ot::TrickleTimer::Stop(ot::TrickleTimer *this)
{
  return ot::TimerMilli::Stop(this);
}

{
  return ot::TrickleTimer::Stop(this);
}

uint64_t ot::Dhcp6::TransactionId::GenerateRandom(ot::Dhcp6::TransactionId *this, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::Crypto::Fill<ot::Dhcp6::TransactionId>(this, a2, a3);
}

{
  return ot::Dhcp6::TransactionId::GenerateRandom(this, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Client>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Dhcp6::Client>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Client>(a1);
}

void ot::Dhcp6::Client::HandleTrickleTimer(ot::Dhcp6::Client *this)
{
  IsBound = ot::Ip6::Udp::SocketHandle::IsBound((this + 8));
  if (!IsBound)
  {
    __assert_rtn("HandleTrickleTimer", "dhcp6_client.cpp", 225, "mSocket.IsBound()");
  }

  if (!*(this + 43))
  {
    ot::TrickleTimer::Stop((this + 80));
    return;
  }

  v2 = *(*(this + 43) + 42);
  switch(v2)
  {
    case 1:
      *(this + 37) = ot::TimerMilli::GetNow(IsBound);
      *(*(this + 43) + 42) = 2;
      goto LABEL_10;
    case 2:
LABEL_10:
      ot::Dhcp6::Client::Solicit(this, *(*(this + 43) + 40));
      return;
    case 3:
      *(this + 43) = 0;
      if ((ot::Dhcp6::Client::ProcessNextIdentityAssociation(this) & 1) == 0)
      {
        ot::Dhcp6::Client::Stop(this);
        ot::TrickleTimer::Stop((this + 80));
      }

      break;
  }
}

void ot::Dhcp6::Client::Solicit(ot::Dhcp6::Client *this, unsigned __int16 a2)
{
  v20 = this;
  v19 = a2;
  appended = 0;
  v17 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v15);
  v17 = ot::Ip6::Udp::Socket::NewMessage((this + 8));
  if (v17)
  {
    appended = ot::Dhcp6::Client::AppendHeader(this, v17);
    if (!appended)
    {
      appended = ot::Dhcp6::Client::AppendElapsedTime(this, v17);
      if (!appended)
      {
        appended = ot::Dhcp6::Client::AppendClientIdentifier(this, v17);
        if (!appended)
        {
          appended = ot::Dhcp6::Client::AppendIaNa(this, v17, v19);
          if (!appended)
          {
            appended = ot::Dhcp6::Client::AppendIaAddress(this, v17, v19);
            if (!appended)
            {
              appended = ot::Dhcp6::Client::AppendRapidCommit(this, v17);
              if (!appended)
              {
                ot::Ip6::MessageInfo::GetPeerAddr(v15);
                v13 = v2;
                v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v3);
                ot::Ip6::Address::SetToRoutingLocator(v13, MeshLocalPrefix, v19);
                v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                ot::Mle::Mle::GetMeshLocalRloc(v5);
                ot::Ip6::MessageInfo::SetSockAddr(v15, v6);
                v16 = 547;
                appended = ot::Ip6::Udp::Socket::SendTo((this + 8), v17, v15);
                if (!appended)
                {
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Dhcp6Client", "solicit", v7, v8, v9, v10, v11, v12);
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

  if (appended)
  {
    if (v17)
    {
      ot::Message::Free(v17);
    }

    ot::Logger::LogOnError("Dhcp6Client", appended, "send DHCPv6 Solicit");
  }
}

uint64_t ot::Dhcp6::Client::AppendHeader(ot::Dhcp6::Client *this, ot::Message *a2)
{
  v6 = this;
  v5 = a2;
  ot::Clearable<ot::Dhcp6::Header>::Clear(&v4);
  ot::Dhcp6::Header::SetType(&v4, 1);
  ot::Dhcp6::Header::SetTransactionId(&v4, this + 144);
  return ot::Message::Append<ot::Dhcp6::Header>(v5, &v4);
}

uint64_t ot::Dhcp6::Client::AppendElapsedTime(ot::Dhcp6::Client *this, ot::Message *a2)
{
  v10 = this;
  v9 = a2;
  v2 = ot::Dhcp6::ElapsedTime::Init(v8);
  Now = ot::TimerMilli::GetNow(v2);
  v3 = ot::Time::operator-(&Now, this + 37);
  v4 = ot::Time::MsecToSec(v3);
  ot::Dhcp6::ElapsedTime::SetElapsedTime(v8, v4);
  return ot::Message::Append<ot::Dhcp6::ElapsedTime>(v9, v8);
}

uint64_t ot::Dhcp6::Client::AppendClientIdentifier(ot::Dhcp6::Client *this, ot::Message *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::GetIeeeEui64(v2, v5);
  ot::Dhcp6::ClientIdentifier::Init(v6);
  ot::Dhcp6::ClientIdentifier::SetDuidType(v6, 3u);
  ot::Dhcp6::ClientIdentifier::SetDuidHardwareType(v6, 0x1Bu);
  ot::Dhcp6::ClientIdentifier::SetDuidLinkLayerAddress(v6, v5);
  return ot::Message::Append<ot::Dhcp6::ClientIdentifier>(a2, v6);
}

uint64_t ot::Dhcp6::Client::AppendIaNa(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(this + 43))
  {
    for (i = this + 152; i != this + 344; i += 48)
    {
      if (i[42] && i[42] != 3 && *(i + 20) == v9)
      {
        ++v7;
      }
    }

    v6 = 28 * v7 + 12;
    ot::Dhcp6::IaNa::Init(v5);
    ot::Dhcp6::Option::SetLength(v5, v6);
    ot::Dhcp6::IaNa::SetIaid(v5, 0);
    ot::Dhcp6::IaNa::SetT1(v5, 0);
    ot::Dhcp6::IaNa::SetT2(v5, 0);
    return ot::Message::Append<ot::Dhcp6::IaNa>(v10, v5);
  }

  else
  {
    return 2;
  }
}

uint64_t ot::Dhcp6::Client::AppendIaAddress(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  if (*(this + 43))
  {
    ot::Dhcp6::IaAddress::Init(v7);
    for (i = (this + 152); i != (this + 344); i = (i + 48))
    {
      if ((*(i + 42) == 1 || *(i + 42) == 2) && *(i + 20) == v9)
      {
        ot::Ip6::Netif::UnicastAddress::GetAddress(i);
        ot::Dhcp6::IaAddress::SetAddress(v7, v3);
        ot::Dhcp6::IaAddress::SetPreferredLifetime(v7, 0);
        ot::Dhcp6::IaAddress::SetValidLifetime(v7, 0);
        v8 = ot::Message::Append<ot::Dhcp6::IaAddress>(v10, v7);
        if (v8)
        {
          break;
        }
      }
    }
  }

  else
  {
    return 2;
  }

  return v8;
}

uint64_t ot::Dhcp6::Client::AppendRapidCommit(ot::Dhcp6::Client *this, ot::Message *a2)
{
  v5 = this;
  v4 = a2;
  ot::Dhcp6::RapidCommit::Init(v3);
  return ot::Message::Append<ot::Dhcp6::RapidCommit>(v4, v3);
}

_DWORD *ot::Clearable<ot::Dhcp6::Header>::Clear(_DWORD *a1)
{
  return ot::ClearAllBytes<ot::Dhcp6::Header>(a1);
}

{
  return ot::Clearable<ot::Dhcp6::Header>::Clear(a1);
}

_BYTE *ot::Dhcp6::Header::SetType(_BYTE *result, char a2)
{
  *result = a2;
  return result;
}

{
  return ot::Dhcp6::Header::SetType(result, a2);
}

uint64_t ot::Dhcp6::Header::SetTransactionId(uint64_t result, uint64_t a2)
{
  *(result + 1) = *a2;
  *(result + 3) = *(a2 + 2);
  return result;
}

{
  return ot::Dhcp6::Header::SetTransactionId(result, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::Header>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::Dhcp6::Header>(a1, a2);
}

uint64_t ot::Dhcp6::ElapsedTime::Init(ot::Dhcp6::ElapsedTime *this)
{
  ot::Dhcp6::Option::SetCode(this, 8u);
  return ot::Dhcp6::Option::SetLength(this, 2u);
}

{
  return ot::Dhcp6::ElapsedTime::Init(this);
}

uint64_t ot::Dhcp6::ElapsedTime::SetElapsedTime(ot::Dhcp6::ElapsedTime *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::Dhcp6::ElapsedTime::SetElapsedTime(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::ElapsedTime>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 6u);
}

{
  return ot::Message::Append<ot::Dhcp6::ElapsedTime>(a1, a2);
}

uint64_t ot::Dhcp6::ClientIdentifier::Init(ot::Dhcp6::ClientIdentifier *this)
{
  ot::Dhcp6::Option::SetCode(this, 1u);
  return ot::Dhcp6::Option::SetLength(this, 0xCu);
}

{
  return ot::Dhcp6::ClientIdentifier::Init(this);
}

uint64_t ot::Dhcp6::ClientIdentifier::SetDuidType(uint64_t a1, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(a1 + 4) = result;
  return result;
}

{
  return ot::Dhcp6::ClientIdentifier::SetDuidType(a1, a2);
}

uint64_t ot::Dhcp6::ClientIdentifier::SetDuidHardwareType(ot::Dhcp6::ClientIdentifier *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Dhcp6::ClientIdentifier::SetDuidHardwareType(this, a2);
}

uint64_t ot::Dhcp6::ClientIdentifier::SetDuidLinkLayerAddress(uint64_t this, const ot::Mac::ExtAddress *a2)
{
  *(this + 8) = *a2;
  return this;
}

{
  return ot::Dhcp6::ClientIdentifier::SetDuidLinkLayerAddress(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::ClientIdentifier>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::Message::Append<ot::Dhcp6::ClientIdentifier>(a1, a2);
}

uint64_t ot::Dhcp6::IaNa::Init(ot::Dhcp6::IaNa *this)
{
  ot::Dhcp6::Option::SetCode(this, 3u);
  return ot::Dhcp6::Option::SetLength(this, 0xCu);
}

{
  return ot::Dhcp6::IaNa::Init(this);
}

uint64_t ot::Dhcp6::Option::SetLength(ot::Dhcp6::Option *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Dhcp6::Option::SetLength(this, a2);
}

uint64_t ot::Dhcp6::IaNa::SetIaid(ot::Dhcp6::IaNa *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Dhcp6::IaNa::SetIaid(this, a2);
}

uint64_t ot::Dhcp6::IaNa::SetT1(ot::Dhcp6::IaNa *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::Dhcp6::IaNa::SetT1(this, a2);
}

uint64_t ot::Dhcp6::IaNa::SetT2(ot::Dhcp6::IaNa *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Dhcp6::IaNa::SetT2(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::IaNa>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::Message::Append<ot::Dhcp6::IaNa>(a1, a2);
}

uint64_t ot::Dhcp6::IaAddress::Init(ot::Dhcp6::IaAddress *this)
{
  ot::Dhcp6::Option::SetCode(this, 5u);
  return ot::Dhcp6::Option::SetLength(this, 0x18u);
}

{
  return ot::Dhcp6::IaAddress::Init(this);
}

__n128 ot::Dhcp6::IaAddress::SetAddress(ot::Dhcp6::IaAddress *this, __n128 *a2)
{
  result = *a2;
  *(this + 4) = *a2;
  return result;
}

uint64_t ot::Dhcp6::IaAddress::SetPreferredLifetime(ot::Dhcp6::IaAddress *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 5) = result;
  return result;
}

{
  return ot::Dhcp6::IaAddress::SetPreferredLifetime(this, a2);
}

uint64_t ot::Dhcp6::IaAddress::SetValidLifetime(ot::Dhcp6::IaAddress *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 6) = result;
  return result;
}

{
  return ot::Dhcp6::IaAddress::SetValidLifetime(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::IaAddress>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x1Cu);
}

{
  return ot::Message::Append<ot::Dhcp6::IaAddress>(a1, a2);
}

uint64_t ot::Dhcp6::RapidCommit::Init(ot::Dhcp6::RapidCommit *this)
{
  ot::Dhcp6::Option::SetCode(this, 0xEu);
  return ot::Dhcp6::Option::SetLength(this, 0);
}

{
  return ot::Dhcp6::RapidCommit::Init(this);
}

uint64_t ot::Message::Append<ot::Dhcp6::RapidCommit>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::Dhcp6::RapidCommit>(a1, a2);
}

uint64_t ot::Message::Read<ot::Dhcp6::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::Dhcp6::Header>(a1, a2, a3);
}

uint64_t ot::Dhcp6::Header::GetType(ot::Dhcp6::Header *this)
{
  return *this;
}

{
  return ot::Dhcp6::Header::GetType(this);
}

uint64_t ot::Dhcp6::Header::GetTransactionId(ot::Dhcp6::Header *this)
{
  return this + 1;
}

{
  return ot::Dhcp6::Header::GetTransactionId(this);
}

BOOL ot::Equatable<ot::Dhcp6::TransactionId>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 3uLL) == 0;
}

{
  return ot::Equatable<ot::Dhcp6::TransactionId>::operator==(a1, a2);
}

void ot::Dhcp6::Client::ProcessReply(ot::Dhcp6::Client *this, ot::Message *a2)
{
  Offset = ot::Message::GetOffset(a2);
  Length = ot::Message::GetLength(a2);
  v8 = Length - ot::Message::GetOffset(a2);
  Option = ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 0xDu);
  if (Option <= 0 || !ot::Dhcp6::Client::ProcessStatusCode(this, a2, Option))
  {
    v3 = ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 2u);
    if (v3 > 0 && !ot::Dhcp6::Client::ProcessServerIdentifier(this, a2, v3))
    {
      v4 = ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 1u);
      if (v4 > 0 && !ot::Dhcp6::Client::ProcessClientIdentifier(this, a2, v4) && ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 0xEu) > 0)
      {
        v5 = ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 3u);
        if (v5 > 0 && !ot::Dhcp6::Client::ProcessIaNa(this, a2, v5))
        {
          ot::Dhcp6::Client::HandleTrickleTimer(this);
        }
      }
    }
  }
}

uint64_t ot::Dhcp6::Client::FindOption(uint64_t a1, ot::Message *a2, unsigned __int16 a3, __int16 a4, unsigned __int16 a5)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a3;
  v12 = a3 + a4;
  v11 = 0;
  while (v13 <= v12 && !ot::Message::Read<ot::Dhcp6::Option>(v17, v13, v10))
  {
    Code = ot::Dhcp6::Option::GetCode(v10, v5);
    if (Code == v14)
    {
      return v13;
    }

    Length = ot::Dhcp6::Option::GetLength(v10, v7);
    v13 += Length + 4;
  }

  return v11;
}

uint64_t ot::Dhcp6::Client::ProcessStatusCode(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v7 = ot::Message::Read<ot::Dhcp6::StatusCode>(a2, a3, v6);
  if (!v7 && (ot::Dhcp6::Option::GetLength(v6, v3) < 2uLL || ot::Dhcp6::StatusCode::GetStatusCode(v6, v4)))
  {
    return 6;
  }

  return v7;
}

uint64_t ot::Dhcp6::Client::ProcessServerIdentifier(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v8 = 0;
  if (!ot::Message::Read<ot::Dhcp6::ServerIdentifier>(a2, a3, v9) && (ot::Dhcp6::ServerIdentifier::GetDuidType(v9, v3) != 1 || ot::Dhcp6::ServerIdentifier::GetDuidHardwareType(v9, v4) != 1) && (ot::Dhcp6::Option::GetLength(v9, v4) != 12 || ot::Dhcp6::ServerIdentifier::GetDuidType(v9, v5) != 3 || ot::Dhcp6::ServerIdentifier::GetDuidHardwareType(v9, v6) != 27))
  {
    return 6;
  }

  return v8;
}

uint64_t ot::Dhcp6::Client::ProcessClientIdentifier(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::GetIeeeEui64(v3, v12);
  v9 = ot::Message::Read<ot::Dhcp6::ClientIdentifier>(a2, a3, v13);
  if (!v9)
  {
    if (ot::Dhcp6::Option::GetLength(v13, v4) != 12)
    {
      return 6;
    }

    if (ot::Dhcp6::ClientIdentifier::GetDuidType(v13, v5) != 3)
    {
      return 6;
    }

    if (ot::Dhcp6::ClientIdentifier::GetDuidHardwareType(v13, v6) != 27)
    {
      return 6;
    }

    DuidLinkLayerAddress = ot::Dhcp6::ClientIdentifier::GetDuidLinkLayerAddress(v13);
    if (!ot::Equatable<ot::Mac::ExtAddress>::operator==(DuidLinkLayerAddress, v12))
    {
      return 6;
    }
  }

  return v9;
}

uint64_t ot::Dhcp6::Client::ProcessIaNa(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  v12 = ot::Message::Read<ot::Dhcp6::IaNa>(a2, a3, v11);
  if (!v12)
  {
    v13 += 16;
    v9 = ot::Dhcp6::Option::GetLength(v11, v3) - 12;
    Length = ot::Message::GetLength(v14);
    if (v9 <= Length - v13)
    {
      Option = ot::Dhcp6::Client::FindOption(this, v14, v13, v9, 0xDu);
      if (Option <= 0 || (v12 = ot::Dhcp6::Client::ProcessStatusCode(this, v14, Option)) == 0)
      {
        while (v9)
        {
          v6 = ot::Dhcp6::Client::FindOption(this, v14, v13, v9, 5u);
          v10 = v6;
          if (!v6)
          {
            break;
          }

          v12 = ot::Dhcp6::Client::ProcessIaAddress(this, v14, v6);
          if (v12)
          {
            break;
          }

          v9 -= v10 - v13 + 28;
          v13 = v10 + 28;
        }
      }
    }

    else
    {
      return 6;
    }
  }

  return v12;
}

uint64_t ot::Message::Read<ot::Dhcp6::Option>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::Dhcp6::Option>(a1, a2, a3);
}

uint64_t ot::Dhcp6::Option::GetCode(ot::Dhcp6::Option *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*this, a2);
}

{
  return ot::Dhcp6::Option::GetCode(this, a2);
}

uint64_t ot::Dhcp6::Option::GetLength(ot::Dhcp6::Option *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::Dhcp6::Option::GetLength(this, a2);
}

uint64_t ot::Message::Read<ot::Dhcp6::ServerIdentifier>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Dhcp6::ServerIdentifier>(a1, a2, a3);
}

uint64_t ot::Dhcp6::ServerIdentifier::GetDuidType(ot::Dhcp6::ServerIdentifier *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 2), a2);
}

{
  return ot::Dhcp6::ServerIdentifier::GetDuidType(this, a2);
}

uint64_t ot::Dhcp6::ServerIdentifier::GetDuidHardwareType(ot::Dhcp6::ServerIdentifier *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 3), a2);
}

{
  return ot::Dhcp6::ServerIdentifier::GetDuidHardwareType(this, a2);
}

uint64_t ot::Message::Read<ot::Dhcp6::ClientIdentifier>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Dhcp6::ClientIdentifier>(a1, a2, a3);
}

uint64_t ot::Dhcp6::ClientIdentifier::GetDuidType(ot::Dhcp6::ClientIdentifier *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 2), a2);
}

{
  return ot::Dhcp6::ClientIdentifier::GetDuidType(this, a2);
}

uint64_t ot::Dhcp6::ClientIdentifier::GetDuidHardwareType(ot::Dhcp6::ClientIdentifier *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 3), a2);
}

{
  return ot::Dhcp6::ClientIdentifier::GetDuidHardwareType(this, a2);
}

uint64_t ot::Dhcp6::ClientIdentifier::GetDuidLinkLayerAddress(ot::Dhcp6::ClientIdentifier *this)
{
  return this + 8;
}

{
  return ot::Dhcp6::ClientIdentifier::GetDuidLinkLayerAddress(this);
}

uint64_t ot::Message::Read<ot::Dhcp6::IaNa>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Dhcp6::IaNa>(a1, a2, a3);
}

uint64_t ot::Dhcp6::Client::ProcessIaAddress(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  v16 = ot::Message::Read<ot::Dhcp6::IaAddress>(a2, a3, v15);
  if (!v16)
  {
    if (ot::Dhcp6::Option::GetLength(v15, v3) == 24)
    {
      for (i = (this + 152); i != (this + 344); i = (i + 48))
      {
        if (*(i + 42))
        {
          if (!*(i + 9))
          {
            ot::Ip6::Netif::UnicastAddress::GetAddress(i);
            v12 = v4;
            Address = ot::Dhcp6::IaAddress::GetAddress(v15);
            if (ot::Ip6::Address::PrefixMatch(v12, Address) >= *(i + 16))
            {
              *i = *ot::Dhcp6::IaAddress::GetAddress(v15);
              *(i + 8) = ot::Dhcp6::IaAddress::GetPreferredLifetime(v15, v6);
              *(i + 9) = ot::Dhcp6::IaAddress::GetValidLifetime(v15, v7);
              *(i + 17) = 2;
              *(i + 9) = *(i + 9) & 0xFFFE | (ot::Dhcp6::IaAddress::GetPreferredLifetime(v15, v8) != 0);
              *(i + 9) = *(i + 9) & 0xFFFD | (2 * (ot::Dhcp6::IaAddress::GetValidLifetime(v15, v9) != 0));
              *(i + 42) = 3;
              v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
              ot::Ip6::Netif::AddUnicastAddress(v10, i);
              return 0;
            }
          }
        }
      }

      return 23;
    }

    else
    {
      return 6;
    }
  }

  return v16;
}

uint64_t ot::Message::Read<ot::Dhcp6::StatusCode>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 6u);
}

{
  return ot::Message::Read<ot::Dhcp6::StatusCode>(a1, a2, a3);
}

uint64_t ot::Dhcp6::StatusCode::GetStatusCode(ot::Dhcp6::StatusCode *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 2), a2);
}

{
  return ot::Dhcp6::StatusCode::GetStatusCode(this, a2);
}

uint64_t ot::Message::Read<ot::Dhcp6::IaAddress>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x1Cu);
}

{
  return ot::Message::Read<ot::Dhcp6::IaAddress>(a1, a2, a3);
}

uint64_t ot::Dhcp6::IaAddress::GetAddress(ot::Dhcp6::IaAddress *this)
{
  return this + 4;
}

{
  return ot::Dhcp6::IaAddress::GetAddress(this);
}

uint64_t ot::Dhcp6::IaAddress::GetPreferredLifetime(ot::Dhcp6::IaAddress *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 5), a2);
}

{
  return ot::Dhcp6::IaAddress::GetPreferredLifetime(this, a2);
}

uint64_t ot::Dhcp6::IaAddress::GetValidLifetime(ot::Dhcp6::IaAddress *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 6), a2);
}

{
  return ot::Dhcp6::IaAddress::GetValidLifetime(this, a2);
}

uint64_t ot::Random::Crypto::Fill<ot::Dhcp6::TransactionId>(ot::Random::Crypto *a1, uint64_t a2, unsigned __int16 a3)
{
  return ot::Random::Crypto::FillBuffer(a1, 3, a3);
}

{
  return ot::Random::Crypto::Fill<ot::Dhcp6::TransactionId>(a1, a2, a3);
}

uint64_t ot::Dhcp6::Option::SetCode(_WORD *a1, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *a1 = result;
  return result;
}

{
  return ot::Dhcp6::Option::SetCode(a1, a2);
}

uint64_t ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::HandleUdpReceive(ot::Dhcp6::Client *a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otMessage>(a2);
  v6 = v3;
  ot::AsCoreType<otMessageInfo>(a3);
  return (ot::Dhcp6::Client::HandleUdpReceive)(a1, v6, v4);
}

uint64_t ot::Instance::Get<ot::Dhcp6::Client>(uint64_t a1)
{
  return a1 + 86320;
}

{
  return ot::Instance::Get<ot::Dhcp6::Client>(a1);
}

_DWORD *ot::ClearAllBytes<ot::Dhcp6::Header>(_DWORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Dhcp6::Header>(result);
}

ot::Dhcp6::Server *ot::Dhcp6::Server::Server(ot::Dhcp6::Server *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::SocketIn((this + 8), a2, this);
  *(this + 304) = 0;
  *(this + 305) = 0;
  ot::ClearAllBytes<ot::Dhcp6::Server::PrefixAgent [4]>(this + 80);
  return this;
}

{
  ot::Dhcp6::Server::Server(this, a2);
  return this;
}

uint64_t ot::Dhcp6::Server::HandleUdpReceive(ot::Dhcp6::Server *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  Offset = ot::Message::GetOffset(a2);
  result = ot::Message::Read<ot::Dhcp6::Header>(a2, Offset, v11);
  if (!result)
  {
    ot::Message::MoveOffset(v13, 4);
    result = ot::Dhcp6::Header::GetType(v11);
    if (result == 1)
    {
      v7 = v13;
      ot::Ip6::MessageInfo::GetPeerAddr(v12);
      v8 = v5;
      TransactionId = ot::Dhcp6::Header::GetTransactionId(v11);
      return ot::Dhcp6::Server::ProcessSolicit(this, v7, v8, TransactionId);
    }
  }

  return result;
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

void *ot::ClearAllBytes<ot::Dhcp6::Server::PrefixAgent [4]>(void *a1)
{
  return memset(a1, 0, 0xE0uLL);
}

{
  return ot::ClearAllBytes<ot::Dhcp6::Server::PrefixAgent [4]>(a1);
}

uint64_t ot::Dhcp6::Server::UpdateService(ot::Dhcp6::Server *this)
{
  v21 = this;
  *&v20[4] = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  *v20 = ot::Mle::Mle::GetRloc16(v1);
  v19 = 0;
  for (i = (this + 80); i != (this + 304); i = (i + 56))
  {
    v14 = 0;
    if (ot::Dhcp6::Server::PrefixAgent::IsValid(i))
    {
      v19 = 0;
      while (1)
      {
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v2, &v19, *v20, v17))
        {
          break;
        }

        if ((v18 & 0x10) != 0 || (v18 & 0x20) != 0)
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
          PrefixAsAddress = ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress(i);
          *&v20[2] = ot::NetworkData::Leader::GetContext(v12, PrefixAsAddress, v16);
          if (!*&v20[2])
          {
            ContextId = ot::Dhcp6::Server::PrefixAgent::GetContextId(i);
            if (ContextId == v16[17])
            {
              v14 = 1;
              break;
            }
          }
        }
      }

      if ((v14 & 1) == 0)
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
        ot::Dhcp6::Server::PrefixAgent::GetAloc(i);
        ot::Ip6::Netif::RemoveUnicastAddress(v11, v5);
        ot::Dhcp6::Server::PrefixAgent::Clear(i);
        --*(this + 304);
      }
    }
  }

  v19 = 0;
  while (1)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v6, &v19, *v20, v17))
    {
      break;
    }

    if ((v18 & 0x10) != 0 || (v18 & 0x20) != 0)
    {
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::AsCoreType<otIp6Address>(v17);
      *&v20[2] = ot::NetworkData::Leader::GetContext(v10, v7, v16);
      if (!*&v20[2])
      {
        ot::NetworkData::OnMeshPrefixConfig::GetPrefix(v17);
        ot::Dhcp6::Server::AddPrefixAgent(this, v8, v16);
      }
    }
  }

  if (*(this + 304))
  {
    ot::Dhcp6::Server::Start(this);
  }

  else
  {
    ot::Dhcp6::Server::Stop(this);
  }

  return *&v20[2];
}

uint64_t ot::Dhcp6::Server::PrefixAgent::IsValid(ot::Dhcp6::Server::PrefixAgent *this)
{
  return (*(this + 9) >> 1) & 1;
}

{
  return ot::Dhcp6::Server::PrefixAgent::IsValid(this);
}

uint64_t ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress(ot::Dhcp6::Server::PrefixAgent *this)
{
  return this + 32;
}

{
  return ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress(this);
}

uint64_t ot::Dhcp6::Server::PrefixAgent::GetContextId(ot::Dhcp6::Server::PrefixAgent *this)
{
  return *(this + 15);
}

{
  return ot::Dhcp6::Server::PrefixAgent::GetContextId(this);
}

void ot::Dhcp6::Server::PrefixAgent::GetAloc(ot::Dhcp6::Server::PrefixAgent *this)
{
  ;
}

{
  ot::Dhcp6::Server::PrefixAgent::GetAloc(this);
}

uint64_t ot::Dhcp6::Server::PrefixAgent::Clear(uint64_t this)
{
  *(this + 18) &= ~2u;
  return this;
}

{
  return ot::Dhcp6::Server::PrefixAgent::Clear(this);
}

void ot::Dhcp6::Server::AddPrefixAgent(_BYTE *a1, const ot::Ip6::Prefix *a2, uint64_t a3)
{
  v11 = 0;
  v10 = (a1 + 80);
  v9 = (a1 + 304);
  while (v10 != v9)
  {
    if (ot::Dhcp6::Server::PrefixAgent::IsValid(v10))
    {
      Prefix = ot::Dhcp6::Server::PrefixAgent::GetPrefix(v10);
      if (ot::Ip6::Prefix::operator==(Prefix, a2))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = v10;
    }

    v10 = (v10 + 56);
  }

  if (!v11)
  {
    ot::Logger::LogOnError("Dhcp6Server", 3, "add DHCPv6 prefix agent");
    return;
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v4);
  ot::Dhcp6::Server::PrefixAgent::Set(v11, a2, MeshLocalPrefix, *(a3 + 17));
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  ot::Dhcp6::Server::PrefixAgent::GetAloc(v11);
  ot::Ip6::Netif::AddUnicastAddress(v7, v6);
  ++a1[304];
LABEL_10:
  ot::Logger::LogOnError("Dhcp6Server", 0, "add DHCPv6 prefix agent");
}

void ot::Dhcp6::Server::Start(ot::Dhcp6::Server *this)
{
  if (!ot::Ip6::Udp::Socket::IsOpen((this + 8)))
  {
    ot::Ip6::Udp::Socket::Open((this + 8));
    IgnoreError();
    ot::Ip6::Udp::Socket::Bind((this + 8), 547, 1);
    IgnoreError();
  }
}

uint64_t ot::Dhcp6::Server::PrefixAgent::GetPrefix(ot::Dhcp6::Server::PrefixAgent *this)
{
  return this + 32;
}

{
  return this + 32;
}

{
  return ot::Dhcp6::Server::PrefixAgent::GetPrefix(this);
}

{
  return ot::Dhcp6::Server::PrefixAgent::GetPrefix(this);
}

uint64_t ot::Dhcp6::Server::PrefixAgent::Set(uint64_t a1, uint64_t a2, const ot::Ip6::NetworkPrefix *a3, unsigned __int8 a4)
{
  *(a1 + 32) = *a2;
  *(a1 + 48) = *(a2 + 16);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOrigin(a1);
  ot::Ip6::Netif::UnicastAddress::GetAddress(a1);
  result = ot::Ip6::Address::SetToAnycastLocator(v4, a3, a4 - 1024);
  *(a1 + 18) = *(a1 + 18) & 0xFEFF | 0x100;
  return result;
}

{
  return ot::Dhcp6::Server::PrefixAgent::Set(a1, a2, a3, a4);
}

uint64_t ot::Dhcp6::Server::ProcessSolicit(ot::Dhcp6::Server *this, ot::Message *a2, const ot::Ip6::Address *a3, const ot::Dhcp6::TransactionId *a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  Offset = ot::Message::GetOffset(a2);
  Length = ot::Message::GetLength(v13);
  v8 = Length - ot::Message::GetOffset(v13);
  result = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 1u);
  if (result > 0)
  {
    result = ot::Dhcp6::Server::ProcessClientIdentifier(this, v13, result, v15);
    if (!result)
    {
      result = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 2u);
      if (!result)
      {
        result = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 0xEu);
        if (result > 0)
        {
          Option = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 8u);
          if (Option <= 0 || (result = ot::Dhcp6::Server::ProcessElapsedTime(this, v13, Option), !result))
          {
            result = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 3u);
            if (result > 0)
            {
              result = ot::Dhcp6::Server::ProcessIaNa(this, v13, result, v10);
              if (!result)
              {
                return ot::Dhcp6::Server::SendReply(this, v12, v11, v15, v10);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ot::Dhcp6::Server::FindOption(uint64_t a1, ot::Message *a2, unsigned __int16 a3, __int16 a4, unsigned __int16 a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a3 + a4;
  v11 = 0;
  while (v15 <= v12 && !ot::Message::Read<ot::Dhcp6::Option>(v16, v15, v10))
  {
    Code = ot::Dhcp6::Option::GetCode(v10, v5);
    if (Code == v13)
    {
      return v15;
    }

    Length = ot::Dhcp6::Option::GetLength(v10, v7);
    v15 += Length + 4;
  }

  return v11;
}

uint64_t ot::Dhcp6::Server::ProcessClientIdentifier(ot::Dhcp6::Server *this, ot::Message *a2, unsigned __int16 a3, ot::Dhcp6::ClientIdentifier *a4)
{
  v8 = ot::Message::Read<ot::Dhcp6::ClientIdentifier>(a2, a3, a4);
  if (!v8 && (ot::Dhcp6::Option::GetLength(a4, v4) != 12 || ot::Dhcp6::ClientIdentifier::GetDuidType(a4, v5) != 3 || ot::Dhcp6::ClientIdentifier::GetDuidHardwareType(a4, v6) != 27))
  {
    return 6;
  }

  return v8;
}

uint64_t ot::Dhcp6::Server::ProcessElapsedTime(ot::Dhcp6::Server *this, ot::Message *a2, unsigned __int16 a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v6 = ot::Message::Read<ot::Dhcp6::ElapsedTime>(a2, a3, v5);
  if (!v6 && ot::Dhcp6::Option::GetLength(v5, v3) != 2)
  {
    return 6;
  }

  return v6;
}

uint64_t ot::Dhcp6::Server::ProcessIaNa(ot::Dhcp6::Server *this, ot::Message *a2, unsigned __int16 a3, ot::Dhcp6::IaNa *a4)
{
  v10 = ot::Message::Read<ot::Dhcp6::IaNa>(a2, a3, a4);
  if (!v10)
  {
    v13 = a3 + 16;
    v8 = ot::Dhcp6::Option::GetLength(a4, v4) - 12;
    if (v8 <= (ot::Message::GetLength(a2) - v13))
    {
      *(this + 305) = 0;
      while (v8)
      {
        Option = ot::Dhcp6::Server::FindOption(this, a2, v13, v8, 5u);
        v9 = Option;
        if (Option <= 0)
        {
          break;
        }

        v10 = ot::Dhcp6::Server::ProcessIaAddress(this, a2, Option);
        if (v10)
        {
          break;
        }

        v8 -= v9 - v13 + 28;
        v13 = v9 + 28;
      }
    }

    else
    {
      return 6;
    }
  }

  return v10;
}

uint64_t ot::Dhcp6::Server::SendReply(ot::Dhcp6::Server *this, __n128 *a2, const ot::Dhcp6::TransactionId *a3, ot::Dhcp6::ClientIdentifier *a4, ot::Dhcp6::IaNa *a5)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  appended = 0;
  ot::Ip6::MessageInfo::MessageInfo(v8);
  v7 = ot::Ip6::Udp::Socket::NewMessage((this + 8));
  if (v7)
  {
    appended = ot::Dhcp6::Server::AppendHeader(this, v7, v12);
    if (!appended)
    {
      appended = ot::Dhcp6::Server::AppendServerIdentifier(this, v7);
      if (!appended)
      {
        appended = ot::Dhcp6::Server::AppendClientIdentifier(this, v7, v11);
        if (!appended)
        {
          appended = ot::Dhcp6::Server::AppendIaNa(this, v7, v10);
          if (!appended)
          {
            appended = ot::Dhcp6::Server::AppendStatusCode(this, v7, 0);
            if (!appended)
            {
              appended = ot::Dhcp6::Server::AppendIaAddress(this, v7, v11);
              if (!appended)
              {
                appended = ot::Dhcp6::Server::AppendRapidCommit(this, v7);
                if (!appended)
                {
                  ot::Ip6::MessageInfo::SetPeerAddr(v8, v13);
                  ot::Ip6::MessageInfo::SetPeerPort(v8, 546);
                  appended = ot::Ip6::Udp::Socket::SendTo((this + 8), v7, v8);
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

  if (appended && v7)
  {
    ot::Message::Free(v7);
  }

  return appended;
}

uint64_t ot::Message::Read<ot::Dhcp6::ElapsedTime>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 6u);
}

{
  return ot::Message::Read<ot::Dhcp6::ElapsedTime>(a1, a2, a3);
}

uint64_t ot::Dhcp6::Server::ProcessIaAddress(ot::Dhcp6::Server *this, ot::Message *a2, unsigned __int16 a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  v9 = ot::Message::Read<ot::Dhcp6::IaAddress>(a2, a3, v8);
  if (!v9)
  {
    if (ot::Dhcp6::Option::GetLength(v8, v3) == 24)
    {
      for (i = 0; i < ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>(); ++i)
      {
        if (ot::Dhcp6::Server::PrefixAgent::IsValid((this + 56 * i + 80)))
        {
          Address = ot::Dhcp6::IaAddress::GetAddress(v8);
          if (ot::Dhcp6::Server::PrefixAgent::IsPrefixMatch((this + 56 * i + 80), Address))
          {
            *(this + 305) |= 1 << i;
            return v9;
          }
        }
      }
    }

    else
    {
      return 6;
    }
  }

  return v9;
}

uint64_t ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>()
{
  return 4;
}

{
  return ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>();
}

BOOL ot::Dhcp6::Server::PrefixAgent::IsPrefixMatch(ot::Dhcp6::Server::PrefixAgent *this, const ot::Ip6::Address *a2)
{
  Prefix = ot::Dhcp6::Server::PrefixAgent::GetPrefix(this);
  return ot::Ip6::Address::MatchesPrefix(a2, Prefix);
}

{
  return ot::Dhcp6::Server::PrefixAgent::IsPrefixMatch(this, a2);
}

uint64_t ot::Dhcp6::Server::AppendHeader(ot::Dhcp6::Server *this, ot::Message *a2, const ot::Dhcp6::TransactionId *a3)
{
  v7 = this;
  v6 = a2;
  v5 = a3;
  ot::Clearable<ot::Dhcp6::Header>::Clear(&v4);
  ot::Dhcp6::Header::SetType(&v4, 7);
  ot::Dhcp6::Header::SetTransactionId(&v4, v5);
  return ot::Message::Append<ot::Dhcp6::Header>(v6, &v4);
}

uint64_t ot::Dhcp6::Server::AppendServerIdentifier(ot::Dhcp6::Server *this, ot::Message *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::GetIeeeEui64(v2, v5);
  ot::Dhcp6::ServerIdentifier::Init(v6);
  ot::Dhcp6::ServerIdentifier::SetDuidType(v6, 3u);
  ot::Dhcp6::ServerIdentifier::SetDuidHardwareType(v6, 0x1Bu);
  ot::Dhcp6::ServerIdentifier::SetDuidLinkLayerAddress(v6, v5);
  return ot::Message::Append<ot::Dhcp6::ServerIdentifier>(a2, v6);
}

uint64_t ot::Dhcp6::Server::AppendIaNa(ot::Dhcp6::Server *this, ot::Message *a2, ot::Dhcp6::IaNa *a3)
{
  v6 = 0;
  if (*(this + 305))
  {
    for (i = 0; i < ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>(); ++i)
    {
      if ((*(this + 305) & (1 << i)) != 0)
      {
        v6 += 28;
      }
    }
  }

  else
  {
    v6 = 28 * *(this + 304);
  }

  ot::Dhcp6::Option::SetLength(a3, v6 + 18);
  ot::Dhcp6::IaNa::SetT1(a3, 0xFFFFFFFF);
  ot::Dhcp6::IaNa::SetT2(a3, 0xFFFFFFFF);
  return ot::Message::Append<ot::Dhcp6::IaNa>(a2, a3);
}

uint64_t ot::Dhcp6::Server::AppendStatusCode(uint64_t a1, ot::Message *a2, unsigned __int16 a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  ot::Dhcp6::StatusCode::Init(v4);
  ot::Dhcp6::StatusCode::SetStatusCode(v4, v5);
  return ot::Message::Append<ot::Dhcp6::StatusCode>(v6, v4);
}

uint64_t ot::Dhcp6::Server::AppendIaAddress(ot::Dhcp6::Server *this, ot::Message *a2, ot::Dhcp6::ClientIdentifier *a3)
{
  v10 = 0;
  if (*(this + 305))
  {
    for (i = 0; i < ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>(); ++i)
    {
      if ((*(this + 305) & (1 << i)) != 0)
      {
        PrefixAsAddress = ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress((this + 56 * i + 80));
        v10 = ot::Dhcp6::Server::AddIaAddress(this, a2, PrefixAsAddress, a3);
        if (v10)
        {
          break;
        }
      }
    }
  }

  else
  {
    v8 = (this + 80);
    v7 = (this + 304);
    while (v8 != v7)
    {
      if (ot::Dhcp6::Server::PrefixAgent::IsValid(v8))
      {
        v4 = ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress(v8);
        v10 = ot::Dhcp6::Server::AddIaAddress(this, a2, v4, a3);
        if (v10)
        {
          break;
        }
      }

      v8 = (v8 + 56);
    }
  }

  return v10;
}

uint64_t ot::Dhcp6::Server::AppendRapidCommit(ot::Dhcp6::Server *this, ot::Message *a2)
{
  v5 = this;
  v4 = a2;
  ot::Dhcp6::RapidCommit::Init(v3);
  return ot::Message::Append<ot::Dhcp6::RapidCommit>(v4, v3);
}

uint64_t ot::Dhcp6::ServerIdentifier::Init(ot::Dhcp6::ServerIdentifier *this)
{
  ot::Dhcp6::Option::SetCode(this, 2u);
  return ot::Dhcp6::Option::SetLength(this, 0xCu);
}

{
  return ot::Dhcp6::ServerIdentifier::Init(this);
}

uint64_t ot::Dhcp6::ServerIdentifier::SetDuidType(uint64_t a1, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(a1 + 4) = result;
  return result;
}

{
  return ot::Dhcp6::ServerIdentifier::SetDuidType(a1, a2);
}

uint64_t ot::Dhcp6::ServerIdentifier::SetDuidHardwareType(ot::Dhcp6::ServerIdentifier *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Dhcp6::ServerIdentifier::SetDuidHardwareType(this, a2);
}

uint64_t ot::Dhcp6::ServerIdentifier::SetDuidLinkLayerAddress(uint64_t this, const ot::Mac::ExtAddress *a2)
{
  *(this + 8) = *a2;
  return this;
}

{
  return ot::Dhcp6::ServerIdentifier::SetDuidLinkLayerAddress(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::ServerIdentifier>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::Message::Append<ot::Dhcp6::ServerIdentifier>(a1, a2);
}

uint64_t ot::Dhcp6::StatusCode::Init(ot::Dhcp6::StatusCode *this)
{
  ot::Dhcp6::Option::SetCode(this, 0xDu);
  return ot::Dhcp6::Option::SetLength(this, 2u);
}

{
  return ot::Dhcp6::StatusCode::Init(this);
}

uint64_t ot::Dhcp6::StatusCode::SetStatusCode(uint64_t a1, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(a1 + 4) = result;
  return result;
}

{
  return ot::Dhcp6::StatusCode::SetStatusCode(a1, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::StatusCode>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 6u);
}

{
  return ot::Message::Append<ot::Dhcp6::StatusCode>(a1, a2);
}

uint64_t ot::Dhcp6::Server::AddIaAddress(ot::Dhcp6::Server *this, ot::Message *a2, const ot::Ip6::Address *a3, ot::Dhcp6::ClientIdentifier *a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  ot::Dhcp6::IaAddress::Init(v10);
  Address = ot::Dhcp6::IaAddress::GetAddress(v10);
  ot::Ip6::Address::SetPrefix(Address, v13, 0x40u, v5);
  v6 = ot::Dhcp6::IaAddress::GetAddress(v10);
  Iid = ot::Ip6::Address::GetIid(v6);
  DuidLinkLayerAddress = ot::Dhcp6::ClientIdentifier::GetDuidLinkLayerAddress(v12);
  ot::Ip6::InterfaceIdentifier::SetFromExtAddress(Iid, DuidLinkLayerAddress);
  ot::Dhcp6::IaAddress::SetPreferredLifetime(v10, 0xFFFFFFFF);
  ot::Dhcp6::IaAddress::SetValidLifetime(v10, 0xFFFFFFFF);
  return ot::Message::Append<ot::Dhcp6::IaAddress>(v14, v10);
}

void *ot::Ip6::Address::SetPrefix(ot::Ip6::Address *this, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  return ot::Ip6::Address::CopyBits(this, a2, a3);
}

{
  return ot::Ip6::Address::SetPrefix(this, a2, a3, a4);
}

uint64_t ot::Ip6::Address::SetToAnycastLocator(ot::Ip6::Address *a1, const ot::Ip6::NetworkPrefix *a2, unsigned __int16 a3)
{
  return ot::Ip6::Address::SetToLocator(a1, a2, a3);
}

{
  return ot::Ip6::Address::SetToAnycastLocator(a1, a2, a3);
}

uint64_t ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::HandleUdpReceive(ot::Dhcp6::Server *a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otMessage>(a2);
  v6 = v3;
  ot::AsCoreType<otMessageInfo>(a3);
  return ot::Dhcp6::Server::HandleUdpReceive(a1, v6, v4);
}

uint64_t ot::LinkMetrics::Metrics::ConvertToTypeIds(ot::LinkMetrics::Metrics *this, unsigned __int8 *a2)
{
  v6 = 0;
  if (*this)
  {
    v6 = 1;
    *a2 = 64;
  }

  if ((*this & 2) != 0)
  {
    v2 = v6++;
    a2[v2] = 9;
  }

  if ((*this & 4) != 0)
  {
    v3 = v6++;
    a2[v3] = 10;
  }

  if ((*this & 8) != 0)
  {
    v4 = v6++;
    a2[v4] = 11;
  }

  return v6;
}

uint64_t ot::LinkMetrics::SeriesFlags::ConvertToMask(ot::LinkMetrics::SeriesFlags *this)
{
  if ((*this & 2) != 0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v5 = ((*this & 1) != 0) | v1;
  if ((*this & 4) != 0)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v6 = v5 | v2;
  if ((*this & 8) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  return (v6 | v3);
}

_BYTE *ot::LinkMetrics::SeriesFlags::SetFrom(_BYTE *this, char a2)
{
  *this = *this & 0xFE | ((a2 & 1) != 0);
  *this = *this & 0xFD | (2 * ((a2 & 2) != 0));
  *this = *this & 0xFB | (4 * ((a2 & 4) != 0));
  *this = *this & 0xF7 | (8 * ((a2 & 8) != 0));
  return this;
}

_WORD *ot::LinkMetrics::SeriesInfo::Init(ot::LinkMetrics::SeriesInfo *this, char a2, char a3, const ot::LinkMetrics::Metrics *a4)
{
  *(this + 8) = a2;
  ot::LinkMetrics::SeriesFlags::SetFrom(this + 9, a3);
  *(this + 10) = *a4;
  ot::Clearable<ot::RssAverager>::Clear(this + 6);
  result = ot::Clearable<ot::LqiAverager>::Clear(this + 7);
  *(this + 4) = 0;
  return result;
}

_WORD *ot::Clearable<ot::LqiAverager>::Clear(_WORD *a1)
{
  return ot::ClearAllBytes<ot::LqiAverager>(a1);
}

{
  return ot::Clearable<ot::LqiAverager>::Clear(a1);
}

void ot::LinkMetrics::SeriesInfo::AggregateLinkMetrics(ot::LinkMetrics::SeriesInfo *this, char a2, unsigned __int8 a3, signed __int8 a4)
{
  if (ot::LinkMetrics::SeriesInfo::IsFrameTypeMatch(this, a2))
  {
    ++*(this + 4);
    ot::LqiAverager::Add((this + 14), a3);
    ot::RssAverager::Add((this + 12), a4);
    IgnoreError();
  }
}

uint64_t ot::LinkMetrics::SeriesInfo::IsFrameTypeMatch(ot::LinkMetrics::SeriesInfo *this, char a2)
{
  IsMacDataFlagSet = 0;
  if (a2)
  {
    switch(a2)
    {
      case 1:
        IsMacDataFlagSet = ot::LinkMetrics::SeriesFlags::IsMacDataFlagSet((this + 9));
        break;
      case 2:
        IsMacDataFlagSet = ot::LinkMetrics::SeriesFlags::IsMacAckFlagSet((this + 9));
        break;
      case 3:
        IsMacDataFlagSet = ot::LinkMetrics::SeriesFlags::IsMacDataRequestFlagSet((this + 9));
        break;
    }
  }

  else if ((ot::LinkMetrics::SeriesFlags::IsMacDataFlagSet((this + 9)) & 1) == 0)
  {
    IsMacDataFlagSet = ot::LinkMetrics::SeriesFlags::IsLinkProbeFlagSet((this + 9));
  }

  return IsMacDataFlagSet & 1;
}

uint64_t ot::LinkMetrics::SeriesFlags::IsMacDataFlagSet(ot::LinkMetrics::SeriesFlags *this)
{
  return (*this >> 1) & 1;
}

{
  return ot::LinkMetrics::SeriesFlags::IsMacDataFlagSet(this);
}

uint64_t ot::LinkMetrics::SeriesFlags::IsLinkProbeFlagSet(ot::LinkMetrics::SeriesFlags *this)
{
  return *this & 1;
}

{
  return ot::LinkMetrics::SeriesFlags::IsLinkProbeFlagSet(this);
}

uint64_t ot::LinkMetrics::SeriesFlags::IsMacDataRequestFlagSet(ot::LinkMetrics::SeriesFlags *this)
{
  return (*this >> 2) & 1;
}

{
  return ot::LinkMetrics::SeriesFlags::IsMacDataRequestFlagSet(this);
}

uint64_t ot::LinkMetrics::SeriesFlags::IsMacAckFlagSet(ot::LinkMetrics::SeriesFlags *this)
{
  return (*this >> 3) & 1;
}

{
  return ot::LinkMetrics::SeriesFlags::IsMacAckFlagSet(this);
}

_WORD *ot::ClearAllBytes<ot::LqiAverager>(_WORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::LqiAverager>(result);
}

uint64_t ot::Dns::Header::ResponseCodeToError(char a1)
{
  v2 = 1;
  switch(a1)
  {
    case 0:
      v2 = 0;
      break;
    case 1:
    case 10:
    case 20:
    case 22:
      v2 = 6;
      break;
    case 2:
      v2 = 1;
      break;
    case 3:
    case 8:
      v2 = 23;
      break;
    case 4:
    case 11:
      v2 = 12;
      break;
    case 5:
    case 9:
      v2 = 8;
      break;
    case 6:
    case 7:
      v2 = 29;
      break;
    case 21:
      v2 = 27;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t ot::Dns::Name::Matches(ot::Dns::Name **this, const char **a2, const char **a3, char **a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  if (!ot::Dns::Name::IsEmpty(this))
  {
    if (ot::Dns::Name::IsFromCString(this))
    {
      v9 = *this;
      if (!v13 || (v10 = ot::Dns::Name::CompareAndSkipLabels(&v9, v13, 0x2E), (v10 & 1) != 0))
      {
        v10 = ot::Dns::Name::CompareAndSkipLabels(&v9, v12, 0x2E);
        if (v10)
        {
          v10 = ot::Dns::Name::CompareAndSkipLabels(&v9, v11, 0);
        }
      }
    }

    else
    {
      v8 = *(this + 8);
      if ((!v13 || !ot::Dns::Name::CompareLabel(this[1], &v8, v13, v4)) && !ot::Dns::Name::CompareMultipleLabels(this[1], &v8, v12, v4) && !ot::Dns::Name::CompareName(this[1], &v8, v11, v5))
      {
        v10 = 1;
      }
    }
  }

  return v10 & 1;
}

BOOL ot::Dns::Name::IsEmpty(ot::Dns::Name *this)
{
  v2 = 0;
  if (!*this)
  {
    return *(this + 1) == 0;
  }

  return v2;
}

{
  return ot::Dns::Name::IsEmpty(this);
}

BOOL ot::Dns::Name::IsFromCString(ot::Dns::Name *this)
{
  return *this != 0;
}

{
  return ot::Dns::Name::IsFromCString(this);
}

uint64_t ot::Dns::Name::CompareAndSkipLabels(char **this, const char **a2, const char *a3)
{
  v6 = a3;
  v5 = 0;
  v4 = ot::StringLength(a2, 0xFF);
  if (v4 < 0xFFu && ot::StringStartsWith(*this, a2, 1))
  {
    *this += v4;
    if (**this == v6)
    {
      ++*this;
      v5 = 1;
    }
  }

  return v5 & 1;
}

uint64_t ot::Dns::Name::CompareLabel(ot::Dns::Name *this, const ot::Message *a2, char *a3, const char *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v5, this, *a2);
  NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v5);
  if (!NextLabel)
  {
    if (ot::Dns::Name::LabelIterator::CompareLabel(v5, &v8, 1))
    {
      *v9 = v6;
    }

    else
    {
      return 23;
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::CompareMultipleLabels(ot::Dns::Name *this, const ot::Message *a2, char *a3, const char *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v5, this, *a2);
  while (1)
  {
    NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v5);
    if (NextLabel)
    {
      break;
    }

    if (!ot::Dns::Name::LabelIterator::CompareLabel(v5, &v8, 0))
    {
      return 23;
    }

    if (!*v8)
    {
      *v9 = v6;
      return NextLabel;
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::CompareName(ot::Dns::Name *this, const ot::Message *a2, char *a3, const char *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v6, this, *a2);
  v5 = 1;
  if (*v9 == 46 && (++v9, *v9))
  {
    return 7;
  }

  else
  {
    while (1)
    {
      NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v6);
      if (NextLabel)
      {
        break;
      }

      if ((v5 & 1) != 0 && !ot::Dns::Name::LabelIterator::CompareLabel(v6, &v9, 0))
      {
        v5 = 0;
      }
    }

    if (NextLabel == 23)
    {
      if ((v5 & 1) != 0 && !*v9)
      {
        NextLabel = 0;
      }

      *v10 = v7;
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::AppendTo(ot::Dns::Name *this, ot::Message *a2)
{
  v12 = this;
  v11 = a2;
  NextLabel = 0;
  if (ot::Dns::Name::IsEmpty(this))
  {
    return ot::Dns::Name::AppendTerminator(v11, v2);
  }

  else if (ot::Dns::Name::IsFromCString(this))
  {
    AsCString = ot::Dns::Name::GetAsCString(this);
    return ot::Dns::Name::AppendName(AsCString, v11, v4, v5);
  }

  else
  {
    ot::Dns::Name::LabelIterator::LabelIterator(v9, *(this + 1), *(this + 8));
    while (1)
    {
      NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v9);
      if (NextLabel)
      {
        break;
      }

      NextLabel = ot::Dns::Name::LabelIterator::AppendLabel(v9, v11);
      if (NextLabel)
      {
        return NextLabel;
      }
    }

    if (NextLabel == 23)
    {
      return ot::Dns::Name::AppendTerminator(v11, v6);
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::AppendTerminator(ot::Dns::Name *this, ot::Message *a2)
{
  v4 = this;
  v3 = 0;
  return ot::Message::Append<unsigned char>(this, &v3);
}

uint64_t ot::Dns::Name::AppendName(ot::Dns::Name *this, ot::Message *a2, ot::Message *a3, ot::Message *a4)
{
  appended = ot::Dns::Name::AppendMultipleLabels(this, a2, a3, a4);
  if (!appended)
  {
    return ot::Dns::Name::AppendTerminator(a2, v4);
  }

  return appended;
}

uint64_t ot::Dns::Name::GetAsCString(ot::Dns::Name *this)
{
  return *this;
}

{
  return ot::Dns::Name::GetAsCString(this);
}

uint64_t ot::Dns::Name::LabelIterator::GetNextLabel(ot::Dns::Name::LabelIterator *this)
{
  v10 = this;
  v9 = 0;
  while (1)
  {
    v8 = 0;
    v7 = 0;
    v9 = ot::Message::Read<unsigned char>(*this, *(this + 6), &v8);
    if (v9)
    {
      break;
    }

    v7 = v8 & 0xC0;
    if ((v8 & 0xC0) == 0)
    {
      if (v8)
      {
        *(this + 4) = *(this + 6) + 1;
        *(this + 10) = v8;
        *(this + 6) = *(this + 4) + v8;
      }

      else
      {
        if (!ot::Dns::Name::LabelIterator::IsEndOffsetSet(this))
        {
          *(this + 7) = *(this + 6) + 1;
        }

        return 23;
      }

      return v9;
    }

    if (v7 != 192)
    {
      return 6;
    }

    v6 = 0;
    v9 = ot::Message::Read<unsigned short>(*this, *(this + 6), &v6);
    if (v9)
    {
      return v9;
    }

    if (!ot::Dns::Name::LabelIterator::IsEndOffsetSet(this))
    {
      *(this + 7) = *(this + 6) + 2;
    }

    Offset = ot::Message::GetOffset(*this);
    v5 = Offset + (ot::BigEndian::HostSwap16(v6, v1) & 0x3FFF);
    if (v5 >= *(this + 8))
    {
      return 6;
    }

    *(this + 6) = v5;
    *(this + 8) = v5;
  }

  return v9;
}

uint64_t ot::Dns::Name::LabelIterator::AppendLabel(ot::Dns::Name::LabelIterator *this, ot::Message *a2)
{
  if (*(this + 10) && *(this + 10) <= 0x3Fu)
  {
    v4 = ot::Message::Append<unsigned char>(a2, this + 10);
    if (!v4)
    {
      return ot::Message::AppendBytesFromMessage(a2, *this, *(this + 4), *(this + 10));
    }
  }

  else
  {
    return 7;
  }

  return v4;
}

uint64_t ot::Dns::Name::AppendLabel(ot::Dns::Name *this, const char *a2, ot::Message *a3, ot::Message *a4)
{
  v8 = this;
  v7 = a2;
  if (a2 && v7 <= 0x3Fu)
  {
    v5 = ot::Message::Append<unsigned char>(a3, &v7);
    if (!v5)
    {
      return ot::Message::AppendBytes(a3, v8, v7);
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Dns::Name::AppendMultipleLabels(ot::Dns::Name *this, ot::Message *a2, ot::Message *a3, ot::Message *a4)
{
  appended = 0;
  v10 = 0;
  v9 = 0;
  if (!this)
  {
    return appended;
  }

  while (1)
  {
    v8 = *(this + v10);
    if (v8 && v8 != 46)
    {
      goto LABEL_17;
    }

    if (v10 == v9)
    {
      break;
    }

    if (v10 + 1 >= 255)
    {
      return 7;
    }

    appended = ot::Dns::Name::AppendLabel((this + v9), (v10 - v9), a2, a4);
    if (appended)
    {
      return appended;
    }

    v9 = v10 + 1;
LABEL_17:
    ++v10;
    if (!v8)
    {
      return appended;
    }
  }

  v7 = 1;
  if (v8)
  {
    v6 = 0;
    if (!v10)
    {
      v6 = *(this + 1) == 0;
    }

    v7 = v6;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Dns::Name::AppendPointerLabel(ot::Dns::Name *this, ot::Message *a2, ot::Message *a3)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (this >= 0xC000u)
  {
    __assert_rtn("AppendPointerLabel", "dns_types.cpp", 307, "aOffset < kPointerLabelTypeUint16");
  }

  v4 = ot::BigEndian::HostSwap16((v7 | 0xC000u), a2);
  return ot::Message::Append<unsigned short>(v6, &v4);
}

uint64_t ot::Dns::Name::ParseName(ot::Dns::Name *this, const ot::Message *a2, unsigned __int16 *a3)
{
  v8 = this;
  v7 = a2;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v4, this, *a2);
  do
  {
    NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v4);
  }

  while (!NextLabel);
  if (NextLabel == 23)
  {
    *v7 = v5;
    return 0;
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::ReadLabel(ot::Dns::Name *this, const ot::Message *a2, char *a3, char *a4, unsigned __int8 *a5)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v6, this, *a2);
  NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v6);
  if (!NextLabel)
  {
    NextLabel = ot::Dns::Name::LabelIterator::ReadLabel(v6, v9, v8, 1);
    if (!NextLabel)
    {
      *v10 = v6[6];
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::LabelIterator::ReadLabel(ot::Dns::Name::LabelIterator *this, char *a2, unsigned __int8 *a3, char a4)
{
  if (*(this + 10) < *a3)
  {
    v6 = ot::Message::Read(*this, *(this + 4), a2, *(this + 10));
    if (!v6)
    {
      a2[*(this + 10)] = 0;
      *a3 = *(this + 10);
      if ((a4 & 1) == 0)
      {
        if (ot::StringFind(a2, 0x2E))
        {
          return 6;
        }
      }
    }
  }

  else
  {
    return 3;
  }

  return v6;
}

uint64_t ot::Dns::Name::ReadName(ot::Dns::Name *this, const ot::Message *a2, char *a3, char *a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v9, this, *a2);
  v8 = 1;
  v7 = 0;
  while (1)
  {
    NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v9);
    if (NextLabel)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      v4 = v13++;
      *v4 = 46;
      --v12;
    }

    v7 = ot::Min<unsigned short>(0x40u, v12);
    NextLabel = ot::Dns::Name::LabelIterator::ReadLabel(v9, v13, &v7, v8 & 1);
    if (NextLabel)
    {
      return NextLabel;
    }

    v13 += v7;
    v12 -= v7;
    v8 = 0;
  }

  if (NextLabel == 23)
  {
    v5 = v13++;
    *v5 = 46;
    if (--v12)
    {
      *v13 = 0;
      *v14 = v10;
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return NextLabel;
}

BOOL ot::Dns::Name::LabelIterator::CompareLabel(ot::Dns::Name::LabelIterator *this, char **a2, char a3)
{
  v5 = 0;
  if (ot::StringLength(*a2, *(this + 10)) == *(this + 10))
  {
    v5 = ot::Message::CompareBytes(*this, *(this + 4), *a2, *(this + 10), ot::Dns::Name::LabelIterator::CaseInsensitiveMatch);
    if (v5)
    {
      *a2 += *(this + 10);
      v5 = **a2 == 0;
      if ((a3 & 1) == 0 && **a2 == 46)
      {
        v5 = 1;
        ++*a2;
      }
    }
  }

  return v5;
}

uint64_t ot::Dns::Name::CompareName(ot::Dns::Name *this, const ot::Message *a2, const ot::Message *a3, const ot::Message *a4)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v7, this, *a2);
  ot::Dns::Name::LabelIterator::LabelIterator(v6, v11, v10);
  v5 = 1;
  while (1)
  {
    NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v7);
    if (NextLabel)
    {
      break;
    }

    if ((v5 & 1) != 0 && (ot::Dns::Name::LabelIterator::GetNextLabel(v6) || !ot::Dns::Name::LabelIterator::CompareLabel(v7, v6)))
    {
      v5 = 0;
    }
  }

  if (NextLabel == 23)
  {
    if ((v5 & 1) != 0 && ot::Dns::Name::LabelIterator::GetNextLabel(v6) == 23)
    {
      NextLabel = 0;
    }

    *v12 = v8;
  }

  return NextLabel;
}

BOOL ot::Dns::Name::LabelIterator::CompareLabel(ot::Dns::Name::LabelIterator *this, const ot::Dns::Name::LabelIterator *a2)
{
  v3 = 0;
  if (*(this + 10) == *(a2 + 10))
  {
    return ot::Message::CompareBytes(*this, *(this + 4), *a2, *(a2 + 4), *(this + 10), ot::Dns::Name::LabelIterator::CaseInsensitiveMatch);
  }

  return v3;
}

uint64_t ot::Dns::Name::CompareName(ot::Dns::Name *this, const ot::Message *a2, const ot::Message **a3, const ot::Dns::Name *a4)
{
  if (ot::Dns::Name::IsFromCString(a3))
  {
    return ot::Dns::Name::CompareName(this, a2, *a3, v4);
  }

  else if (ot::Dns::Name::IsFromMessage(a3))
  {
    return ot::Dns::Name::CompareName(this, a2, a3[1], *(a3 + 8));
  }

  else
  {
    return ot::Dns::Name::ParseName(this, a2, v5);
  }
}

BOOL ot::Dns::Name::IsFromMessage(ot::Dns::Name *this)
{
  return *(this + 1) != 0;
}

{
  return ot::Dns::Name::IsFromMessage(this);
}

BOOL ot::Dns::Name::LabelIterator::IsEndOffsetSet(ot::Dns::Name::LabelIterator *this)
{
  return *(this + 7) != 0;
}

{
  return ot::Dns::Name::LabelIterator::IsEndOffsetSet(this);
}

uint64_t ot::Dns::Name::ExtractLabels(ot::Dns::Name *this, ot *a2, ot::Dns::Name *a3, char *a4)
{
  v10 = a4;
  __len_2 = 6;
  __len = ot::StringLength(this, 0xFF);
  v6 = ot::StringLength(a2, 0xFF);
  if (__len < 0xFFu && v6 < 0xFFu && __len > v6)
  {
    v5 = this + __len - v6;
    if (ot::StringMatch(v5, a2, 1) && *(v5 - 1) == 46)
    {
      __lena = __len - (v6 + 1);
      if (__lena < v10)
      {
        if (a3 != this)
        {
          memmove(a3, this, __lena);
        }

        *(a3 + __lena) = 0;
        return 0;
      }

      else
      {
        return 3;
      }
    }
  }

  return __len_2;
}

BOOL ot::Dns::Name::IsSubDomainOf(ot::Dns::Name *this, ot *a2, const char *a3)
{
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = ot::StringLength(this, 0xFE);
  v4 = ot::StringLength(a2, 0xFE);
  if (v5 && *(this + v5 - 1) == 46)
  {
    v7 = 1;
    --v5;
  }

  if (v4 && *(a2 + v4 - 1) == 46)
  {
    v6 = 1;
    --v4;
  }

  if (v5 >= v4)
  {
    v11 = this + v5 - v4;
    if (v5 <= v4 || *(v11 - 1) == 46)
    {
      if ((v7 & 1) == (v6 & 1))
      {
        return ot::StringMatch(v11, a2, 1);
      }

      else if (v7)
      {
        return ot::StringStartsWith(v11, a2, 1);
      }

      else
      {
        return ot::StringStartsWith(a2, v11, 1);
      }
    }
  }

  return v8;
}

BOOL ot::Dns::Name::IsSameDomain(ot::Dns::Name *this, ot::Dns::Name *a2, const char *a3)
{
  v5 = 0;
  if (ot::Dns::Name::IsSubDomainOf(this, a2, a3))
  {
    return ot::Dns::Name::IsSubDomainOf(a2, this, v3);
  }

  return v5;
}

uint64_t ot::Dns::ResourceRecord::ParseRecords(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  while (v8)
  {
    v7 = ot::Dns::Name::ParseName(v10, v9, a3);
    if (v7)
    {
      break;
    }

    v7 = ot::Dns::ResourceRecord::ReadFrom(v6, v10, *v9);
    if (v7)
    {
      break;
    }

    Size = ot::Dns::ResourceRecord::GetSize(v6, v3);
    *v9 += Size;
    --v8;
  }

  return v7;
}

uint64_t ot::Dns::ResourceRecord::ReadFrom(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 a3)
{
  v5 = ot::Message::Read<ot::Dns::ResourceRecord>(a2, a3, this);
  if (!v5)
  {
    return ot::Dns::ResourceRecord::CheckRecord(this, a2, a3);
  }

  return v5;
}

uint64_t ot::Dns::ResourceRecord::GetSize(ot::Dns::ResourceRecord *this, unsigned __int16 a2)
{
  return ot::Dns::ResourceRecord::GetLength(this, a2) + 10;
}

{
  return ot::Dns::ResourceRecord::GetSize(this, a2);
}

uint64_t ot::Dns::ResourceRecord::FindRecord(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 *a3, unsigned __int16 *a4, const ot::Dns::Name *a5)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  while (*v12)
  {
    v9 = 1;
    v10 = ot::Dns::Name::CompareName(v14, v13, v11, a4);
    if (v10)
    {
      if (v10 != 23)
      {
        return v10;
      }

      v9 = 0;
    }

    v10 = ot::Dns::ResourceRecord::ReadFrom(v8, v14, *v13);
    if (v10)
    {
      return v10;
    }

    --*v12;
    if (v9)
    {
      return v10;
    }

    Size = ot::Dns::ResourceRecord::GetSize(v8, v5);
    *v13 += Size;
  }

  return 23;
}

uint64_t ot::Dns::ResourceRecord::FindRecord(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 *a3, __int16 a4, const ot::Dns::Name *a5, const ot::Dns::Name *a6, uint64_t a7, ot::Dns::ResourceRecord *a8, unsigned __int16 a9)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  *&v15[1] = a5;
  v15[0] = a6;
  *&v14[1] = a7;
  v14[0] = a8;
  Record = 0;
  v12 = *a2;
  while (v17)
  {
    Record = ot::Dns::ResourceRecord::FindRecord(v19, &v12, &v17, *&v15[1], a5);
    if (Record)
    {
      return Record;
    }

    v11 = v12;
    Record = ot::Dns::ResourceRecord::ReadRecord(v19, &v12, v15[0], *&v14[1], v14[0]);
    if (Record != 23)
    {
      if (Record)
      {
        return Record;
      }

      if (!v16)
      {
        *v18 = v12;
        return Record;
      }

      --v16;
      v12 = v11 + ot::Dns::ResourceRecord::GetSize(*&v14[1], v9);
    }
  }

  return 23;
}