void ot::BackboneRouter::Manager::HandleDadBackboneAnswer(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v20 = ot::BackboneRouter::NdProxyTable::ResolveDua((this + 8), a2);
  v19 = 0;
  if (v20)
  {
    MeshLocalIid = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(v20);
    v19 = ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=(MeshLocalIid, v22);
    if (v19)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v4);
      Rloc16 = ot::BackboneRouter::NdProxyTable::NdProxy::GetRloc16(v20);
      ot::Ip6::Address::SetToRoutingLocator(&v18, MeshLocalPrefix, Rloc16);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::SendAddressError(v6, v23, v22, &v18);
    }

    ot::BackboneRouter::NdProxyTable::NotifyDadComplete(v20, v19);
  }

  else
  {
    v21 = 23;
  }

  v13 = ot::ErrorToString(v21);
  ot::Ip6::Address::ToString(v26, v23);
  v14 = ot::String<(unsigned short)40>::AsCString(v26);
  ot::Ip6::InterfaceIdentifier::ToString(v22, v25);
  v15 = ot::String<(unsigned short)17>::AsCString(v25);
  if (v19)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleDadBackboneAnswer: %s, target=%s, mliid=%s, duplicate=%s", v7, v8, v9, v10, v11, v12, v13, v14, v15, "Y");
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleDadBackboneAnswer: %s, target=%s, mliid=%s, duplicate=%s", v7, v8, v9, v10, v11, v12, v13, v14, v15, "N");
  }
}

void ot::BackboneRouter::Manager::HandleExtendedBackboneAnswer(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3, unsigned int a4, unsigned __int16 a5)
{
  v22 = this;
  v21 = a2;
  *&v20[1] = a3;
  v20[0] = a4;
  v19 = a5;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v5);
  ot::Ip6::Address::SetToRoutingLocator(v18, MeshLocalPrefix, v19);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
  ot::AddressResolver::SendAddressQueryResponse(v7, v21, *&v20[1], v20, v18);
  ot::Ip6::Address::ToString(v24, v21);
  v16 = ot::String<(unsigned short)40>::AsCString(v24);
  ot::Ip6::InterfaceIdentifier::ToString(*&v20[1], v23);
  v17 = ot::String<(unsigned short)17>::AsCString(v23);
  v8 = ot::ToUlong(v20[0]);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleExtendedBackboneAnswer: target=%s, mliid=%s, LTT=%lus, rloc16=%04x", v9, v10, v11, v12, v13, v14, v16, v17, v8, v19);
}

uint64_t ot::BackboneRouter::Manager::SendProactiveBackboneNotification(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3, unsigned int a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  AllDomainBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(v4);
  return ot::BackboneRouter::Manager::SendBackboneAnswer(this, AllDomainBackboneRoutersAddress, a2, a3, a4, 0xFFFEu);
}

uint64_t ot::BackboneRouter::Manager::SendBackboneAnswer(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::Address *a3, const ot::Ip6::InterfaceIdentifier *a4, unsigned int a5, unsigned __int16 a6)
{
  v41 = this;
  v40 = a2;
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v35 = 0;
  v34 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v33);
  IsMulticast = ot::Ip6::Address::IsMulticast(v40);
  v34 = ot::Coap::CoapBase::NewPriorityMessage((this + 7576));
  if (v34)
  {
    v35 = ot::Coap::Message::Init(v34, IsMulticast, 2, 7u);
    if (!v35)
    {
      v35 = ot::Coap::Message::SetPayloadMarker(v34);
      if (!v35)
      {
        v35 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v34, v39, v6, v7, v8);
        if (!v35)
        {
          v35 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v34, v38, v9, v10, v11);
          if (!v35)
          {
            v35 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v34, v37);
            if (!v35)
            {
              v30 = v34;
              v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(this);
              ot::MeshCoP::NetworkNameManager::GetNetworkName(v12);
              ot::MeshCoP::NetworkName::GetAsCString(v13);
              v35 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)12,(unsigned char)16>>(v30, v14, v15, v16, v17);
              if (!v35 && (v36 == 65534 || !ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v34, v36)))
              {
                ot::Ip6::MessageInfo::SetPeerAddr(v33, v40);
                ot::Ip6::MessageInfo::SetPeerPort(v33, 61631);
                ot::Ip6::MessageInfo::SetHopLimit(v33, 1);
                ot::Ip6::MessageInfo::SetIsHostInterface(v33, 1);
                v35 = ot::Coap::CoapBase::SendMessage((this + 7576), v34, v33);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v35 = 3;
  }

  v18 = "PRO_BB.ntf";
  if (!IsMulticast)
  {
    v18 = "BB.ans";
  }

  v27 = v18;
  ot::Ip6::Address::ToString(v42, v39);
  v28 = ot::String<(unsigned short)40>::AsCString(v42);
  v29 = v36;
  v19 = ot::ErrorToString(v35);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Send %s for %s (rloc16=%04x): %s", v20, v21, v22, v23, v24, v25, v27, v28, v29, v19);
  if (v35 && v34)
  {
    ot::Message::Free(v34);
  }

  return v35;
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  return this + 8;
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(this);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  v5 = this;
  Now = ot::TimerMilli::GetNow(this);
  v1 = ot::Time::operator-(&Now, this + 4);
  return ot::Time::MsecToSec(v1);
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(this);
}

BOOL ot::Ip6::Address::IsMulticast(ot::Ip6::Address *this)
{
  return *this == 255;
}

{
  return ot::Ip6::Address::IsMulticast(this);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(ot::Tlv *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  return ot::Tlv::AppendTlv(a1, 3, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 6u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)12,(unsigned char)16>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0xC, 0x10u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)12,(unsigned char)16>>(a1, a2, a3, a4, a5);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(a1);
}

BOOL ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=(a1, a2);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::GetRloc16(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  return *(this + 10);
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::GetRloc16(this);
}

BOOL ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) == 0;
}

{
  return ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(a1, a2);
}

ot::BackboneRouter::NdProxyTable::NdProxy *ot::BackboneRouter::NdProxyTable::NdProxy::NdProxy(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  ot::BackboneRouter::NdProxyTable::NdProxy::NdProxy(this);
  return this;
}

{
  ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(this);
  return this;
}

void *ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::BackboneRouter::NdProxyTable::NdProxy>(a1);
}

{
  return ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(a1);
}

void *ot::ClearAllBytes<ot::BackboneRouter::NdProxyTable::NdProxy>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::BackboneRouter::NdProxyTable::NdProxy>(result);
}

ot::BackboneRouter::MulticastListenersTable::Listener *ot::BackboneRouter::MulticastListenersTable::Listener::Listener(ot::BackboneRouter::MulticastListenersTable::Listener *this)
{
  ot::BackboneRouter::MulticastListenersTable::Listener::Listener(this);
  return this;
}

{
  ot::Clearable<ot::BackboneRouter::MulticastListenersTable::Listener>::Clear(this);
  return this;
}

uint64_t ot::Clearable<ot::BackboneRouter::MulticastListenersTable::Listener>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::BackboneRouter::MulticastListenersTable::Listener>(a1);
}

{
  return ot::Clearable<ot::BackboneRouter::MulticastListenersTable::Listener>::Clear(a1);
}

uint64_t ot::ClearAllBytes<ot::BackboneRouter::MulticastListenersTable::Listener>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::BackboneRouter::MulticastListenersTable::Listener>(result);
}

_BYTE *ot::ThreadTlv::SetType(ot::Tlv *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::ThreadTlv::SetType(a1, a2);
}

void *ot::Clearable<ot::Ip6::MessageInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::MessageInfo>(a1);
}

{
  return ot::Clearable<ot::Ip6::MessageInfo>::Clear(a1);
}

void *ot::ClearAllBytes<ot::Ip6::MessageInfo>(void *a1)
{
  return memset(a1, 0, 0x26uLL);
}

{
  return ot::ClearAllBytes<ot::Ip6::MessageInfo>(a1);
}

uint64_t ot::Time::MsecToSec(ot::Time *this)
{
  return this / 0x3E8;
}

{
  return ot::Time::MsecToSec(this);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::Add(ot::BackboneRouter::MulticastListenersTable *a1, __n128 *a2, int a3)
{
  v16 = a3;
  v15 = a1;
  v14 = a2;
  v13 = 0;
  if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(a2))
  {
    for (i = 0; i < *(a1 + 750); ++i)
    {
      v11 = (a1 + 20 * i);
      ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(v11);
      if (ot::Equatable<ot::Ip6::Address>::operator==(v3, v14))
      {
        v10[2] = v16;
        ot::BackboneRouter::MulticastListenersTable::Listener::SetExpireTime(v11, v16);
        ot::BackboneRouter::MulticastListenersTable::FixHeap(a1, i);
        goto LABEL_12;
      }
    }

    v7 = *(a1 + 750);
    v4 = ot::GetArrayLength<ot::BackboneRouter::MulticastListenersTable::Listener,(unsigned short)75>();
    if (v7 < v4)
    {
      ot::BackboneRouter::MulticastListenersTable::Listener::SetAddress((a1 + 20 * *(a1 + 750)), v14);
      v5 = (a1 + 20 * *(a1 + 750));
      v10[1] = v16;
      ot::BackboneRouter::MulticastListenersTable::Listener::SetExpireTime(v5, v16);
      ot::BackboneRouter::MulticastListenersTable::FixHeap(a1, (*(a1 + 750))++);
      v10[0] = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(0);
      v9 = v14;
      ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(a1 + 188, v10, &v9);
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    v13 = 7;
  }

LABEL_12:
  ot::BackboneRouter::MulticastListenersTable::Log(a1, 0, v14, v16, v13);
  ot::BackboneRouter::MulticastListenersTable::CheckInvariants(a1);
  return v13;
}

void ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(ot::BackboneRouter::MulticastListenersTable::Listener *this)
{
  ;
}

{
  ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(this);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::Listener::SetExpireTime(uint64_t result, int a2)
{
  *(result + 16) = a2;
  return result;
}

{
  return ot::BackboneRouter::MulticastListenersTable::Listener::SetExpireTime(result, a2);
}

double ot::BackboneRouter::MulticastListenersTable::FixHeap(ot::BackboneRouter::MulticastListenersTable *this, unsigned __int16 a2)
{
  if (!ot::BackboneRouter::MulticastListenersTable::SiftHeapElemDown(this, a2))
  {
    return ot::BackboneRouter::MulticastListenersTable::SiftHeapElemUp(this, a2);
  }

  return result;
}

uint64_t ot::GetArrayLength<ot::BackboneRouter::MulticastListenersTable::Listener,(unsigned short)75>()
{
  return 75;
}

{
  return ot::GetArrayLength<ot::BackboneRouter::MulticastListenersTable::Listener,(unsigned short)75>();
}

__n128 ot::BackboneRouter::MulticastListenersTable::Listener::SetAddress(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

void *ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(result, a2, a3);
}

uint64_t ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(result);
}

void ot::BackboneRouter::MulticastListenersTable::Log(uint64_t a1, unsigned __int8 a2, ot::Ip6::Address *a3, int a4, int a5)
{
  v14 = &v22;
  v22 = a4;
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a5;
  v15 = ot::BackboneRouter::MulticastListenersTable::Log(ot::BackboneRouter::MulticastListenersTable::Action,ot::Ip6::Address const&,ot::Time,otError)const::kActionStrings[a2];
  v13 = v23;
  ot::Ip6::Address::ToString(v23, a3);
  v16 = ot::String<(unsigned short)40>::AsCString(v23);
  Value = ot::Time::GetValue(&v22);
  v17 = ot::ToUlong(Value);
  v6 = ot::ErrorToString(v18);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrMlt", "%s %s expire %lu: %s", v7, v8, v9, v10, v11, v12, v15, v16, v17, v6);
}

void ot::BackboneRouter::MulticastListenersTable::Remove(ot::BackboneRouter::MulticastListenersTable *this, const ot::Ip6::Address *a2)
{
  v14 = this;
  v13 = a2;
  v12 = 23;
  for (i = 0; i < *(this + 750); ++i)
  {
    v10 = (this + 20 * i);
    ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(v10);
    if (ot::Equatable<ot::Ip6::Address>::operator==(v2, v13))
    {
      if (i != --*(this + 750))
      {
        v3 = this + 20 * *(this + 750);
        v4 = v10;
        *v10 = *v3;
        *(v4 + 4) = *(v3 + 4);
        ot::BackboneRouter::MulticastListenersTable::FixHeap(this, i);
      }

      v9 = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(1);
      v8 = v13;
      ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(this + 188, &v9, &v8);
      v12 = 0;
      break;
    }
  }

  v5 = v13;
  ot::Time::Time(&v7, 0);
  ot::BackboneRouter::MulticastListenersTable::Log(this, 1u, v5, v7, v12);
  ot::BackboneRouter::MulticastListenersTable::CheckInvariants(this);
}

void ot::BackboneRouter::MulticastListenersTable::Expire(ot::BackboneRouter::MulticastListenersTable *this)
{
  v13 = this;
  Now = ot::TimerMilli::GetNow(this);
  while (1)
  {
    v5 = 0;
    if (*(this + 750))
    {
      ExpireTime = ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(this);
      v5 = ot::Time::operator>=(&Now, &ExpireTime);
    }

    if (!v5)
    {
      break;
    }

    ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(this);
    v4 = v1;
    v9 = ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(this);
    ot::BackboneRouter::MulticastListenersTable::Log(this, 2u, v4, v9, 0);
    ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(this);
    v11 = *v2;
    if (--*(this + 750))
    {
      v3 = this + 20 * *(this + 750);
      *this = *v3;
      *(this + 4) = *(v3 + 4);
      ot::BackboneRouter::MulticastListenersTable::FixHeap(this, 0);
    }

    v8 = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(1);
    v7 = &v11;
    ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(this + 188, &v8, &v7);
  }

  ot::BackboneRouter::MulticastListenersTable::CheckInvariants(this);
}

BOOL ot::Time::operator>=(unsigned int *a1, unsigned int *a2)
{
  return !ot::Time::operator<(a1, a2);
}

{
  return ot::Time::operator>=(a1, a2);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(ot::BackboneRouter::MulticastListenersTable::Listener *this)
{
  return *(this + 4);
}

{
  return ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(this);
}

void *ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(result, a2, a3);
}

BOOL ot::BackboneRouter::MulticastListenersTable::SiftHeapElemDown(ot::BackboneRouter::MulticastListenersTable *this, unsigned __int16 a2)
{
  v13 = this;
  v12 = a2;
  v11 = a2;
  ot::BackboneRouter::MulticastListenersTable::Listener::Listener(&v9);
  if (v12 >= *(this + 750))
  {
    __assert_rtn("SiftHeapElemDown", "multicast_listeners_table.cpp", 189, "aIndex < mNumValidListeners");
  }

  v2 = 20 * v12;
  v9 = *(this + v2);
  v10 = *(this + v2 + 16);
  while (1)
  {
    v8 = 2 * v11 + 1;
    if (v8 >= *(this + 750) || v8 <= v11)
    {
      break;
    }

    if (v8 + 1 < *(this + 750) && ot::BackboneRouter::MulticastListenersTable::Listener::operator<((this + 20 * v8 + 20), (this + 20 * v8)))
    {
      ++v8;
    }

    if (!ot::BackboneRouter::MulticastListenersTable::Listener::operator<((this + 20 * v8), &v9))
    {
      break;
    }

    v3 = this + 20 * v8;
    v4 = this + 20 * v11;
    *v4 = *v3;
    *(v4 + 4) = *(v3 + 4);
    v11 = v8;
  }

  if (v11 > v12)
  {
    v5 = this + 20 * v11;
    *v5 = v9;
    *(v5 + 4) = v10;
  }

  return v11 > v12;
}

double ot::BackboneRouter::MulticastListenersTable::SiftHeapElemUp(ot::BackboneRouter::MulticastListenersTable *this, unsigned __int16 a2)
{
  v14 = this;
  v13 = a2;
  v12 = a2;
  ot::BackboneRouter::MulticastListenersTable::Listener::Listener(&v10);
  if (v13 >= *(this + 750))
  {
    __assert_rtn("SiftHeapElemUp", "multicast_listeners_table.cpp", 230, "aIndex < mNumValidListeners");
  }

  v2 = 20 * v13;
  v3 = *(this + v2);
  v10 = v3;
  v11 = *(this + v2 + 16);
  while (1)
  {
    v9 = (v12 - 1) / 2;
    if (!v12 || !ot::BackboneRouter::MulticastListenersTable::Listener::operator<(&v10, (this + 20 * v9)))
    {
      break;
    }

    v4 = this + 20 * v9;
    v5 = this + 20 * v12;
    v3 = *v4;
    *v5 = *v4;
    *(v5 + 4) = *(v4 + 4);
    v12 = v9;
  }

  if (v12 < v13)
  {
    v6 = this + 20 * v12;
    *&v3 = v10;
    *v6 = v10;
    *(v6 + 4) = v11;
  }

  return *&v3;
}

BOOL ot::BackboneRouter::MulticastListenersTable::Listener::operator<(ot::BackboneRouter::MulticastListenersTable::Listener *a1, ot::BackboneRouter::MulticastListenersTable::Listener *a2)
{
  v6 = a1;
  v5 = a2;
  ExpireTime = ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(a1);
  v3 = ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(v5);
  return ot::Time::operator<(&ExpireTime, &v3);
}

{
  return ot::BackboneRouter::MulticastListenersTable::Listener::operator<(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::MulticastListenersTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::MulticastListenersTable>(a1);
}

void ot::BackboneRouter::MulticastListenersTable::Clear(ot::BackboneRouter::MulticastListenersTable *this)
{
  v6 = this;
  if (ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::IsSet(this + 188))
  {
    for (i = 0; i < *(this + 750); ++i)
    {
      v4 = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(1);
      ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress((this + 20 * i));
      v3 = v1;
      ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(this + 1504, &v4, &v3);
    }
  }

  *(this + 750) = 0;
  ot::BackboneRouter::MulticastListenersTable::CheckInvariants(this);
}

BOOL ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::IsSet(a1);
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(a1, a2, a3);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::SetCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::Set((a1 + 1504), a2, a3);
  result = ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::IsSet((a1 + 1504));
  if (result)
  {
    for (i = 0; i < *(a1 + 1500); ++i)
    {
      v7 = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(0);
      ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress((a1 + 20 * i));
      v6 = v4;
      result = ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(a1 + 1504, &v7, &v6);
    }
  }

  return result;
}

void *ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::Set(result, a2, a3);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::GetNext(ot::TimerMilli *a1, unsigned __int16 *a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  if (*a2 < *(a1 + 750))
  {
    Now = ot::TimerMilli::GetNow(a1);
    *v8 = *(a1 + 20 * *v9);
    if (ot::Time::operator>(a1 + 5 * *v9 + 4, &Now))
    {
      v4 = ot::Time::operator-(a1 + 5 * *v9 + 4, &Now);
    }

    else
    {
      v4 = 0;
    }

    *(v8 + 16) = ot::Time::MsecToSec(v4);
    ++*v9;
  }

  else
  {
    return 23;
  }

  return v7;
}

BOOL ot::Time::operator>(unsigned int *a1, unsigned int *a2)
{
  return ot::Time::operator<(a2, a1);
}

{
  return ot::Time::operator>(a1, a2);
}

BOOL ot::Time::operator<(unsigned int *a1, unsigned int *a2)
{
  return ot::SerialNumber::IsLess<unsigned int>(*a1, *a2);
}

{
  return ot::Time::operator<(a1, a2);
}

BOOL ot::SerialNumber::IsLess<unsigned int>(int a1, int a2)
{
  return a1 - a2 < 0;
}

{
  return ot::SerialNumber::IsLess<unsigned int>(a1, a2);
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(a1, a2, a3);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::Init(ot::BackboneRouter::NdProxyTable::NdProxy *this, const ot::Ip6::InterfaceIdentifier *a2, const ot::Ip6::InterfaceIdentifier *a3, __int16 a4, unsigned int a5)
{
  if ((*(this + 22) & 8) != 0)
  {
    __assert_rtn("Init", "ndproxy_table.cpp", 54, "!mValid");
  }

  ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(this);
  *(this + 22) = *(this + 22) & 0xF7 | 8;
  *this = *a2;
  *(this + 1) = *a3;
  *(this + 22) = *(this + 22) & 0xFB | 4;
  return ot::BackboneRouter::NdProxyTable::NdProxy::Update(this, a4, a5);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::Update(ot::BackboneRouter::NdProxyTable::NdProxy *this, __int16 a2, unsigned int a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  if ((*(this + 22) & 8) == 0)
  {
    __assert_rtn("Update", "ndproxy_table.cpp", 68, "mValid");
  }

  *(this + 10) = v9;
  v3 = ot::Min<unsigned int>(v8, 0xD2F00u);
  v8 = v3;
  Now = ot::TimerMilli::GetNow(v3);
  v4 = ot::Time::SecToMsec(v8);
  result = ot::Time::operator-(&Now, v4);
  *(this + 4) = result;
  return result;
}

BOOL ot::BackboneRouter::NdProxyTable::MatchesFilter(uint64_t a1, char a2)
{
  v4 = 0;
  if (a2)
  {
    if (a2 == 1)
    {
      return (*(a1 + 22) & 8) != 0;
    }

    else if (a2 == 2)
    {
      LOBYTE(v3) = 0;
      if ((*(a1 + 22) & 8) != 0)
      {
        return (*(a1 + 22) >> 2) & 1;
      }

      return v3;
    }
  }

  else
  {
    return (*(a1 + 22) & 8) == 0;
  }

  return v4;
}

ot::InstanceLocator *ot::BackboneRouter::NdProxyTable::Iterator::Iterator(ot::InstanceLocator *a1, ot::Instance *a2, char a3)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  ot::Ptr<ot::Message>::Ptr(a1);
  *(a1 + 8) = a3;
  Instance = ot::InstanceLocator::GetInstance(a1);
  *a1 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(Instance);
  if (!ot::BackboneRouter::NdProxyTable::MatchesFilter(*a1, *(a1 + 8)))
  {
    ot::BackboneRouter::NdProxyTable::Iterator::Advance(a1);
  }

  return a1;
}

{
  ot::BackboneRouter::NdProxyTable::Iterator::Iterator(a1, a2, a3);
  return a1;
}

unint64_t ot::BackboneRouter::NdProxyTable::Iterator::Advance(ot::BackboneRouter::NdProxyTable::Iterator *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  v6 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(Instance);
  do
  {
    *this += 24;
    v3 = *this;
    result = ot::GetArrayEnd<ot::BackboneRouter::NdProxyTable::NdProxy,(unsigned short)250>(v6);
    v4 = 0;
    if (v3 < result)
    {
      result = ot::BackboneRouter::NdProxyTable::MatchesFilter(*this, *(this + 8));
      v4 = result ^ 1;
    }
  }

  while ((v4 & 1) != 0);
  return result;
}

ot::InstanceLocator *ot::BackboneRouter::NdProxyTable::Iterator::Iterator(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  ot::Ptr<ot::Message>::Ptr(a1);
  Instance = ot::InstanceLocator::GetInstance(a1);
  v6 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(Instance);
  v3 = ot::GetArrayEnd<ot::BackboneRouter::NdProxyTable::NdProxy,(unsigned short)250>(v6);
  result = a1;
  *a1 = v3;
  return result;
}

{
  ot::BackboneRouter::NdProxyTable::Iterator::Iterator(a1, a2);
  return a1;
}

uint64_t ot::GetArrayEnd<ot::BackboneRouter::NdProxyTable::NdProxy,(unsigned short)250>(uint64_t a1)
{
  return a1 + 6000;
}

{
  return ot::GetArrayEnd<ot::BackboneRouter::NdProxyTable::NdProxy,(unsigned short)250>(a1);
}

void ot::BackboneRouter::NdProxyTable::HandleDomainPrefixUpdate(ot::BackboneRouter::NdProxyTable *result, char a2)
{
  if (!a2 || a2 == 1 || a2 == 2)
  {
    ot::BackboneRouter::NdProxyTable::Clear(result);
  }
}

void ot::BackboneRouter::NdProxyTable::Clear(ot::BackboneRouter::NdProxyTable *this)
{
  v14 = this;
  v13 = this;
  v12 = this;
  v11 = (this + 6000);
  while (v12 != v11)
  {
    v10 = v12;
    ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(v12);
    v12 += 3;
  }

  v9 = ot::MapEnum<ot::BackboneRouter::NdProxyTable::NdProxy::Event>(3);
  v8 = 0;
  ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterNdProxyEvent,decltype(nullptr)>(this + 750, &v9, &v8);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrNdProxy", "NdProxyTable::Clear!", v1, v2, v3, v4, v5, v6);
}

void *ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterNdProxyEvent,decltype(nullptr)>(void *result, unsigned int *a2, uint64_t a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterNdProxyEvent,decltype(nullptr)>(result, a2, a3);
}

uint64_t ot::MapEnum<ot::BackboneRouter::NdProxyTable::NdProxy::Event>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::BackboneRouter::NdProxyTable::NdProxy::Event>(result);
}

uint64_t ot::BackboneRouter::NdProxyTable::Register(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::InterfaceIdentifier *a2, const ot::Ip6::InterfaceIdentifier *a3, unsigned __int16 a4, unsigned int *a5)
{
  v28 = this;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v21 = this;
  v23 = 0;
  *&v22[1] = ot::BackboneRouter::NdProxyTable::FindByAddressIid(this, a2);
  if (v24)
  {
    v20 = *v24;
  }

  else
  {
    v20 = 0;
  }

  v22[0] = v20;
  if (!*&v22[1])
  {
    *&v22[1] = ot::BackboneRouter::NdProxyTable::FindByMeshLocalIid(v21, v26);
    if (*&v22[1])
    {
      ot::BackboneRouter::NdProxyTable::TriggerCallback(v21, 1u, *&v22[1]);
      ot::BackboneRouter::NdProxyTable::Erase(*&v22[1], v5);
    }

    else
    {
      *&v22[1] = ot::BackboneRouter::NdProxyTable::FindInvalid(v21);
      if (!*&v22[1])
      {
        v23 = 3;
        goto LABEL_13;
      }
    }

    ot::BackboneRouter::NdProxyTable::NdProxy::Init(*&v22[1], v27, v26, v25, v22[0]);
    *(v21 + 6016) = *(v21 + 6016) & 0xFE | 1;
    goto LABEL_13;
  }

  if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==((*&v22[1] + 8), v26))
  {
    ot::BackboneRouter::NdProxyTable::NdProxy::Update(*&v22[1], v25, v22[0]);
    ot::BackboneRouter::NdProxyTable::NotifyDuaRegistrationOnBackboneLink(v21, *&v22[1], 1);
  }

  else
  {
    v23 = 29;
  }

LABEL_13:
  v14 = v30;
  ot::Ip6::InterfaceIdentifier::ToString(v27, v30);
  v16 = ot::String<(unsigned short)17>::AsCString(v30);
  v15 = v29;
  ot::Ip6::InterfaceIdentifier::ToString(v26, v29);
  v17 = ot::String<(unsigned short)17>::AsCString(v29);
  v18 = v25;
  v19 = ot::ToUlong(v22[0]);
  v6 = ot::ErrorToString(v23);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrNdProxy", "NdProxyTable::Register %s MLIID %s RLOC16 %04x LTT %lu => %s", v7, v8, v9, v10, v11, v12, v16, v17, v25, v19, v6);
  return v23;
}

char *ot::BackboneRouter::NdProxyTable::FindByAddressIid(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::InterfaceIdentifier *a2)
{
  v28 = this;
  v27 = a2;
  v26 = 0;
  v24 = ot::BackboneRouter::NdProxyTable::Iterate(this, 1);
  v25 = &v24;
  v33 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v24);
  v34 = v2;
  v22 = v33;
  v23 = v2;
  v31 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v25);
  v32 = v3;
  v20 = v31;
  v21 = v3;
  while (ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v22, &v20))
  {
    v19 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v22);
    if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(v19, v27))
    {
      v26 = v19;
      break;
    }

    ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(&v22);
  }

  ot::Ip6::InterfaceIdentifier::ToString(v27, v30);
  v18 = ot::String<(unsigned short)17>::AsCString(v30);
  if (v26)
  {
    ot::Ip6::InterfaceIdentifier::ToString((v26 + 8), v29);
    v17 = ot::String<(unsigned short)17>::AsCString(v29);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrNdProxy", "NdProxyTable::FindByAddressIid(%s) => %s", v10, v11, v12, v13, v14, v15, v18, v17);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrNdProxy", "NdProxyTable::FindByAddressIid(%s) => %s", v4, v5, v6, v7, v8, v9, v18, "NOT_FOUND");
  }

  return v26;
}

void ot::BackboneRouter::NdProxyTable::NotifyDuaRegistrationOnBackboneLink(ot::BackboneRouter::NdProxyTable *this, ot::BackboneRouter::NdProxyTable::NdProxy *a2, char a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  if ((*(a2 + 22) & 4) == 0)
  {
    if (v10)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    ot::BackboneRouter::NdProxyTable::TriggerCallback(this, v3, v11);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
    v9[0] = ot::BackboneRouter::NdProxyTable::GetDua(this, v11);
    v9[1] = v4;
    MeshLocalIid = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(v11);
    TimeSinceLastTransaction = ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(v11);
    ot::BackboneRouter::Manager::SendProactiveBackboneNotification(v7, v9, MeshLocalIid, TimeSinceLastTransaction);
    IgnoreError();
  }
}

ot::Ip6::InterfaceIdentifier *ot::BackboneRouter::NdProxyTable::FindByMeshLocalIid(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::InterfaceIdentifier *a2)
{
  v28 = this;
  v27 = a2;
  v26 = 0;
  v24 = ot::BackboneRouter::NdProxyTable::Iterate(this, 1);
  v25 = &v24;
  v33 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v24);
  v34 = v2;
  v22 = v33;
  v23 = v2;
  v31 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v25);
  v32 = v3;
  v20 = v31;
  v21 = v3;
  while (ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v22, &v20))
  {
    v19 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v22);
    if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==((v19 + 8), v27))
    {
      v26 = v19;
      break;
    }

    ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(&v22);
  }

  ot::Ip6::InterfaceIdentifier::ToString(v27, v30);
  v18 = ot::String<(unsigned short)17>::AsCString(v30);
  if (v26)
  {
    ot::Ip6::InterfaceIdentifier::ToString(v26, v29);
    v17 = ot::String<(unsigned short)17>::AsCString(v29);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrNdProxy", "NdProxyTable::FindByMeshLocalIid(%s) => %s", v10, v11, v12, v13, v14, v15, v18, v17);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrNdProxy", "NdProxyTable::FindByMeshLocalIid(%s) => %s", v4, v5, v6, v7, v8, v9, v18, "NOT_FOUND");
  }

  return v26;
}

uint64_t ot::BackboneRouter::NdProxyTable::TriggerCallback(void *a1, unsigned int a2, const ot::Ip6::InterfaceIdentifier *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
  DomainPrefix = ot::BackboneRouter::Leader::GetDomainPrefix(v3);
  result = ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::IsSet(a1 + 750);
  if (result)
  {
    if (!DomainPrefix)
    {
      __assert_rtn("TriggerCallback", "ndproxy_table.cpp", 274, "prefix != nullptr");
    }

    ot::Ip6::Address::SetPrefix(v9, DomainPrefix);
    ot::Ip6::Address::SetIid(v9, v10);
    v7 = ot::MapEnum<ot::BackboneRouter::NdProxyTable::NdProxy::Event>(v11);
    v6 = v9;
    return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,ot::Ip6::Address *>((a1 + 750), &v7, &v6);
  }

  return result;
}

uint64_t ot::BackboneRouter::NdProxyTable::FindInvalid(ot::BackboneRouter::NdProxyTable *this)
{
  v18 = this;
  v17 = 0;
  v15 = ot::BackboneRouter::NdProxyTable::Iterate(this, 0);
  v16 = &v15;
  v21 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v15);
  v22 = v1;
  v13 = v21;
  v14 = v1;
  v19 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v16);
  v20 = v2;
  v11 = v19;
  v12 = v2;
  if (ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v13, &v11))
  {
    v17 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v13);
  }

  v9 = "OK";
  if (!v17)
  {
    v9 = "NOT_FOUND";
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrNdProxy", "NdProxyTable::FindInvalid() => %s", v3, v4, v5, v6, v7, v8, v9);
  return v17;
}

uint64_t ot::BackboneRouter::NdProxyTable::Iterate(ot::InstanceLocator *a1, char a2)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::ChildTable::IteratorBuilder::IteratorBuilder(&v5, Instance, a2);
  return v5;
}

{
  return ot::BackboneRouter::NdProxyTable::Iterate(a1, a2);
}

uint64_t ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(ot::BackboneRouter::NdProxyTable::IteratorBuilder *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::BackboneRouter::NdProxyTable::Iterator::Iterator(&v4, Instance, *this);
  return v4;
}

{
  return ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(this);
}

uint64_t ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(ot::BackboneRouter::NdProxyTable::IteratorBuilder *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::BackboneRouter::NdProxyTable::Iterator::Iterator(&v3, Instance);
  return v3;
}

{
  return ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(this);
}

BOOL ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(a1);
}

unint64_t ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(ot::BackboneRouter::NdProxyTable::Iterator *a1)
{
  return ot::BackboneRouter::NdProxyTable::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(a1);
}

uint64_t ot::BackboneRouter::NdProxyTable::HandleTimer(uint64_t this)
{
  v14 = this;
  v5 = this;
  if (*(this + 6016))
  {
    *(this + 6016) &= ~1u;
    v12 = ot::BackboneRouter::NdProxyTable::Iterate(this, 2);
    v13 = &v12;
    v17 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v12);
    v18 = v1;
    v10 = v17;
    v11 = v1;
    v15 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v13);
    v16 = v2;
    v8 = v15;
    v9 = v2;
    while (1)
    {
      this = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v10, &v8);
      if ((this & 1) == 0)
      {
        break;
      }

      v7 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v10);
      if (ot::BackboneRouter::NdProxyTable::NdProxy::IsDadAttemptsComplete(v7))
      {
        *(v7 + 22) &= ~4u;
        ot::BackboneRouter::NdProxyTable::NotifyDuaRegistrationOnBackboneLink(v5, v7, 0);
      }

      else
      {
        *(v5 + 6016) = *(v5 + 6016) & 0xFE | 1;
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(v5);
        v6[0] = ot::BackboneRouter::NdProxyTable::GetDua(v5, v7);
        v6[1] = v3;
        if (!ot::BackboneRouter::Manager::SendBackboneQuery(v4, v6, 0xFFFEu))
        {
          ot::BackboneRouter::NdProxyTable::NdProxy::IncreaseDadAttempts(v7);
        }
      }

      ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(&v10);
    }
  }

  return this;
}

BOOL ot::BackboneRouter::NdProxyTable::NdProxy::IsDadAttemptsComplete(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  return (*(this + 22) & 3) == 3;
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::IsDadAttemptsComplete(this);
}

uint64_t ot::BackboneRouter::NdProxyTable::GetDua(ot::BackboneRouter::NdProxyTable *this, ot::BackboneRouter::NdProxyTable::NdProxy *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
  DomainPrefix = ot::BackboneRouter::Leader::GetDomainPrefix(v2);
  if (!DomainPrefix)
  {
    __assert_rtn("GetDua", "ndproxy_table.cpp", 302, "domainPrefix != nullptr");
  }

  ot::Ip6::Address::SetPrefix(&v6, DomainPrefix);
  ot::Ip6::Address::SetIid(&v6, a2);
  return v6;
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::IncreaseDadAttempts(uint64_t this)
{
  *(this + 22) = *(this + 22) & 0xFC | ((*(this + 22) & 3) + 1) & 3;
  return this;
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::IncreaseDadAttempts(this);
}

BOOL ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::IsSet(a1);
}

void *ot::Ip6::Address::SetIid(ot::Ip6::Address *this, const ot::Ip6::InterfaceIdentifier *a2)
{
  result = ot::Ip6::Address::GetIid(this);
  *result = *a2;
  return result;
}

{
  return ot::Ip6::Address::SetIid(this, a2);
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,ot::Ip6::Address *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,ot::Ip6::Address *>(a1, a2, a3);
}

uint64_t ot::BackboneRouter::NdProxyTable::NotifyDadComplete(uint64_t this, ot::BackboneRouter::NdProxyTable::NdProxy *a2)
{
  if (a2)
  {
    return ot::BackboneRouter::NdProxyTable::Erase(this, a2);
  }

  *(this + 22) = *(this + 22) & 0xFC | 3;
  return this;
}

char *ot::BackboneRouter::NdProxyTable::ResolveDua(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::Address *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
  if (!ot::BackboneRouter::Leader::IsDomainUnicast(v2, a2))
  {
    return 0;
  }

  Iid = ot::Ip6::Address::GetIid(a2);
  return ot::BackboneRouter::NdProxyTable::FindByAddressIid(this, Iid);
}

uint64_t ot::BackboneRouter::NdProxyTable::GetInfo(ot::InstanceLocator *a1, ot::Ip6::Address *a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = 23;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
  if (ot::BackboneRouter::Leader::IsDomainUnicast(v3, v19))
  {
    v15 = ot::BackboneRouter::NdProxyTable::Iterate(a1, 1);
    v16 = &v15;
    v23 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v15);
    v24 = v4;
    v13 = v23;
    v14 = v4;
    v21 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v16);
    v22 = v5;
    v11 = v21;
    v12 = v5;
    while (ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v13, &v11))
    {
      v10 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v13);
      Iid = ot::Ip6::Address::GetIid(v19);
      if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(v10, Iid))
      {
        *v18 = v10 + 8;
        TimeSinceLastTransaction = ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(v10);
        *(v18 + 8) = TimeSinceLastTransaction;
        *(v18 + 12) = *(v10 + 10);
        return 0;
      }

      ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(&v13);
    }
  }

  else
  {
    return 7;
  }

  return v17;
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*(a1 + 8), *a2, 0);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Coap::CoapBase::CoapBase(uint64_t a1, ot::Instance *a2, uint64_t a3)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  v3 = ot::Coap::MessageQueue::MessageQueue(a1);
  *(a1 + 8) = ot::Random::NonCrypto::GetUint16(v3);
  ot::TimerMilliContext::TimerMilliContext((a1 + 16), a2, ot::Coap::CoapBase::HandleRetransmissionTimer, a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr((a1 + 48));
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback((a1 + 56));
  ot::Coap::ResponsesQueue::ResponsesQueue((a1 + 72), a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback((a1 + 112));
  result = a1;
  *(a1 + 128) = 0;
  *(a1 + 136) = a3;
  return result;
}

{
  ot::Coap::CoapBase::CoapBase(a1, a2, a3);
  return a1;
}

ot::Coap::MessageQueue *ot::Coap::MessageQueue::MessageQueue(ot::Coap::MessageQueue *this)
{
  ot::Coap::MessageQueue::MessageQueue(this);
  return this;
}

{
  ot::MessageQueue::MessageQueue(this);
  return this;
}

uint64_t ot::Random::NonCrypto::GetUint16(ot::Random::NonCrypto *this)
{
  return ot::Random::NonCrypto::GetUint32(this);
}

{
  return ot::Random::NonCrypto::GetUint16(this);
}

ot::Coap::ResponsesQueue *ot::Coap::ResponsesQueue::ResponsesQueue(ot::Coap::ResponsesQueue *this, ot::Instance *a2)
{
  ot::Coap::ResponsesQueue::ResponsesQueue(this, a2);
  return this;
}

{
  ot::Coap::MessageQueue::MessageQueue(this);
  ot::TimerMilliContext::TimerMilliContext((this + 8), a2, ot::Coap::ResponsesQueue::HandleTimer, this);
  return this;
}

BOOL ot::Coap::CoapBase::ClearRequests(ot::Coap::CoapBase *this, const ot::Ip6::Address *a2)
{
  v13 = this;
  v12 = a2;
  v11 = this;
  v10[0] = ot::Coap::MessageQueue::begin(this);
  v10[1] = v2;
  v9[0] = ot::Coap::MessageQueue::end(v11);
  v9[1] = v3;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v10, v9);
    if (!result)
    {
      break;
    }

    v8 = ot::Coap::Message::Iterator::operator*(v10);
    ot::Coap::CoapBase::Metadata::ReadFrom(v7, v8);
    if (!v12 || ot::Equatable<ot::Ip6::Address>::operator==(v7, v12))
    {
      ot::Coap::CoapBase::FinalizeCoapTransaction(this, v8, v7, 0, 0, 0xBu);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v10, v5);
  }

  return result;
}

{
  return ot::Coap::CoapBase::ClearRequests(this, a2);
}

uint64_t ot::Coap::MessageQueue::end(ot::Coap::MessageQueue *this)
{
  v2[0] = 0;
  v2[1] = 0;
  ot::Coap::Message::Iterator::Iterator(v2);
  return v2[0];
}

{
  v2 = 0;
  ot::Coap::Message::ConstIterator::ConstIterator(&v2);
  return v2;
}

{
  return ot::Coap::MessageQueue::end(this);
}

{
  return ot::Coap::MessageQueue::end(this);
}

BOOL ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(a1, a2);
}

uint64_t ot::Coap::Message::Iterator::operator*(uint64_t a1)
{
  return ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(a1);
}

{
  return ot::Coap::Message::Iterator::operator*(a1);
}

void ot::Coap::CoapBase::Metadata::ReadFrom(ot::Coap::CoapBase::Metadata *this, const ot::Coap::Message *a2)
{
  Length = ot::Message::GetLength(a2);
  if (Length < 0x48uLL)
  {
    __assert_rtn("ReadFrom", "coap.cpp", 1514, "length >= sizeof(*this)");
  }

  ot::Message::Read<ot::Coap::CoapBase::Metadata>(a2, Length - 72, this);
  IgnoreError();
}

void ot::Coap::CoapBase::FinalizeCoapTransaction(ot::Coap::CoapBase *a1, ot::Coap::Message *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  ot::Coap::CoapBase::DequeueMessage(a1, a2);
  if (*(a3 + 40))
  {
    (*(a3 + 40))(*(a3 + 48), a4, a5, a6);
  }
}

uint64_t ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(ot::Message::Iterator *a1, ot::Message *a2)
{
  return ot::Message::Iterator::Advance(a1, a2);
}

{
  return ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(a1, a2);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Add(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  if (ot::LinkedList<ot::Coap::Resource>::Contains(a1, a2))
  {
    return 24;
  }

  else
  {
    ot::LinkedList<ot::Coap::Resource>::Push(a1, a2);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Add(a1, a2);
}

uint64_t ot::Coap::CoapBase::RemoveResource(ot::Coap::CoapBase *this, ot::Coap::Resource *a2)
{
  ot::LinkedList<ot::Coap::Resource>::Remove(this + 6, a2);
  IgnoreError();
  return ot::LinkedListEntry<ot::Coap::Resource>::SetNext(a2, 0);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Remove(uint64_t *a1, uint64_t a2)
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = 0;
  v4 = ot::LinkedList<ot::Coap::Resource>::Find(a1, a2, v5);
  if (!v4)
  {
    ot::LinkedList<ot::Coap::Resource>::PopAfter(a1, v5[0]);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Remove(a1, a2);
}

uint64_t ot::LinkedListEntry<ot::Coap::Resource>::SetNext(uint64_t result, uint64_t a2)
{
  *(result + 24) = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Coap::Resource>::SetNext(result, a2);
}

ot::Message *ot::Coap::CoapBase::NewMessage(ot::Coap::CoapBase *this, const ot::Message::Settings *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(this);
  ot::Ip6::Udp::NewMessage(v2, 0, a2);
  ot::AsCoapMessagePtr();
  v5 = v3;
  if (v3)
  {
    ot::Message::SetOffset(v3, 0);
  }

  return v5;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Ip6::Udp>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(a1);
}

void *ot::Message::Settings::GetDefault(ot::Message::Settings *this)
{
  return &ot::Message::Settings::kDefault;
}

{
  return ot::Message::Settings::GetDefault(this);
}

ot::Message *ot::Coap::CoapBase::NewPriorityMessage(ot::Coap::CoapBase *this)
{
  v4 = this;
  ot::Message::Settings::Settings(v3, 1, 3);
  return ot::Coap::CoapBase::NewMessage(this, v3);
}

ot::Coap::Message *ot::Coap::CoapBase::InitMessage(uint64_t a1, ot::Coap::Message *a2, char a3, unsigned __int8 a4)
{
  v6 = a2;
  v5 = 0;
  if (a2)
  {
    v5 = ot::Coap::Message::Init(a2, a3, 2, a4);
    if (!v5)
    {
      v5 = ot::Coap::Message::SetPayloadMarker(v6);
    }
  }

  if (v5 && v6)
  {
    ot::Message::Free(v6);
    return 0;
  }

  return v6;
}

ot::Coap::Message *ot::Coap::CoapBase::InitResponse(ot::Coap::CoapBase *this, ot::Coap::Message *a2, const ot::Coap::Message *a3)
{
  v5 = a2;
  v4 = 0;
  if (a2)
  {
    v4 = ot::Coap::Message::SetDefaultResponseHeader(a2, a3);
    if (!v4)
    {
      v4 = ot::Coap::Message::SetPayloadMarker(v5);
    }
  }

  if (v4 && v5)
  {
    ot::Message::Free(v5);
    return 0;
  }

  return v5;
}

uint64_t ot::Coap::CoapBase::SendMessage(_WORD *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3, ot::Coap::TxParameters *a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v30 = 0;
  v29 = 0;
  Length = 0;
  Type = ot::Coap::Message::GetType(a2);
  if (Type == 2)
  {
    ot::Coap::ResponsesQueue::EnqueueResponse((a1 + 36), v35, v34, v33);
  }

  else if (Type == 3)
  {
    if (ot::Coap::Message::GetCode(v35))
    {
      __assert_rtn("SendMessage", "coap.cpp", 243, "aMessage.GetCode() == kCodeEmpty");
    }
  }

  else
  {
    v6 = v35;
    v7 = a1[4];
    a1[4] = v7 + 1;
    ot::Coap::Message::SetMessageId(v6, v7);
  }

  ot::Coap::Message::Finish(v35);
  if (ot::Coap::Message::IsConfirmable(v35))
  {
    Length = ot::Message::GetLength(v35);
  }

  else if (ot::Coap::Message::IsNonConfirmable(v35) && v32)
  {
    Length = ot::Coap::Message::GetOptionStart(v35);
  }

  if (!Length || ((ot::Ip6::MessageInfo::GetSockAddr(v34), v19[0] = *v8, PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v34), ot::Ip6::MessageInfo::GetPeerAddr(v34), v19[1] = *v9, v27 = v27 & 0xFB | (4 * ot::Ip6::MessageInfo::GetMulticastLoop(v34)), v21 = v32, v22 = v31, v25 = *(v33 + 6), v24 = ot::Coap::TxParameters::CalculateInitialRetransmissionTimeout(v33, v10, v11), v27 = v27 & 0xFC | (2 * ot::Coap::Message::IsConfirmable(v35)), HopLimit = ot::Ip6::MessageInfo::GetHopLimit(v34), IsHostInterface = ot::Ip6::MessageInfo::IsHostInterface(v34), v27 = v27 & 0xF7 | (8 * IsHostInterface), v18[0] = ot::TimerMilli::GetNow(IsHostInterface), (v27 & 2) == 0) ? (v15 = ot::Coap::TxParameters::CalculateMaxTransmitWait(v33), v13 = ot::Time::operator+(v18, v15)) : (v13 = ot::Time::operator+(v18, v24)), v18[1] = v13, v23 = v13, (v29 = ot::Coap::CoapBase::CopyAndEnqueueMessage(a1, v35, Length, v19)) != 0))
  {
    v30 = ot::Coap::CoapBase::Send(a1, v35, v34);
  }

  else
  {
    v30 = 3;
  }

  if (v30 && v29)
  {
    ot::Coap::CoapBase::DequeueMessage(a1, v29);
  }

  return v30;
}

void ot::Coap::ResponsesQueue::EnqueueResponse(ot::Coap::ResponsesQueue *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, const ot::Coap::TxParameters *a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  v4 = ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(&v9);
  Now = ot::TimerMilli::GetNow(v4);
  v5 = ot::Coap::TxParameters::CalculateExchangeLifetime(v12);
  v8 = ot::Time::operator+(&Now, v5);
  v9 = v8;
  memcpy(v10, v13, sizeof(v10));
  if (!ot::Coap::ResponsesQueue::FindMatchedResponse(this, v14, v13))
  {
    ot::Coap::ResponsesQueue::UpdateQueue(this);
    v11 = ot::Coap::Message::Clone(v14);
    if (v11)
    {
      if (ot::Coap::ResponsesQueue::ResponseMetadata::AppendTo(&v9, v11))
      {
        ot::Message::Free(v11);
      }

      else
      {
        ot::Coap::MessageQueue::Enqueue(this, v11);
        ot::TimerMilli::FireAtIfEarlier((this + 8), v9);
      }
    }
  }
}

BOOL ot::Coap::Message::IsNonConfirmable(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetType(this) == 1;
}

{
  return ot::Coap::Message::IsNonConfirmable(this);
}

uint64_t ot::Coap::Message::GetOptionStart(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetTokenLength(this) + 4;
}

{
  return ot::Coap::Message::GetOptionStart(this);
}

uint64_t ot::Ip6::MessageInfo::GetPeerPort(ot::Ip6::MessageInfo *this)
{
  return *(this + 17);
}

{
  return ot::Ip6::MessageInfo::GetPeerPort(this);
}

uint64_t ot::Ip6::MessageInfo::GetMulticastLoop(ot::Ip6::MessageInfo *this)
{
  return (*(this + 37) >> 4) & 1;
}

{
  return ot::Ip6::MessageInfo::GetMulticastLoop(this);
}

uint64_t ot::Ip6::MessageInfo::GetHopLimit(ot::Ip6::MessageInfo *this)
{
  return *(this + 36);
}

{
  return ot::Ip6::MessageInfo::GetHopLimit(this);
}

ot::Coap::Message *ot::Coap::CoapBase::CopyAndEnqueueMessage(ot::Coap::CoapBase *this, const ot::Coap::Message *a2, unsigned __int16 a3, const ot::Coap::CoapBase::Metadata *a4)
{
  v6 = ot::Coap::Message::Clone(a2, a3);
  if (v6)
  {
    v7 = ot::Coap::CoapBase::Metadata::AppendTo(a4, v6);
    if (!v7)
    {
      ot::TimerMilli::FireAtIfEarlier((this + 16), *(a4 + 14));
      ot::Coap::MessageQueue::Enqueue(this, v6);
    }
  }

  else
  {
    v7 = 3;
  }

  if (v7 && v6)
  {
    ot::Message::Free(v6);
    return 0;
  }

  return v6;
}

void ot::Coap::CoapBase::DequeueMessage(ot::Coap::CoapBase *this, ot::Coap::Message *a2)
{
  ot::Coap::MessageQueue::Dequeue(this, a2);
  if (ot::Timer::IsRunning((this + 16)) && !ot::Coap::MessageQueue::GetHead(this))
  {
    ot::TimerMilli::Stop((this + 16));
  }

  ot::Message::Free(a2);
}

uint64_t ot::Coap::CoapBase::SendEmptyMessage(ot::Coap::CoapBase *a1, char a2, ot::Coap::Message *a3, uint64_t a4)
{
  v7 = 0;
  if (ot::Coap::Message::IsConfirmable(a3))
  {
    v7 = ot::Coap::CoapBase::NewMessage(a1);
    if (v7)
    {
      ot::Coap::Message::Init(v7, a2, 0);
      MessageId = ot::Coap::Message::GetMessageId(a3);
      ot::Coap::Message::SetMessageId(v7, MessageId);
      ot::Coap::Message::Finish(v7);
      v8 = ot::Coap::CoapBase::Send(a1, v7, a4);
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 7;
  }

  if (v8 && v7)
  {
    ot::Message::Free(v7);
  }

  return v8;
}

uint64_t ot::Coap::CoapBase::SendEmptyAck(ot::Coap::CoapBase *a1, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, char a4)
{
  if (ot::Coap::Message::IsConfirmable(a2))
  {
    return ot::Coap::CoapBase::SendHeaderResponse(a1, a4, a2, a3);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Coap::CoapBase::SendHeaderResponse(ot::Coap::CoapBase *a1, char a2, ot::Coap::Message *a3, const ot::Ip6::MessageInfo *a4)
{
  v8 = 0;
  if (ot::Coap::Message::IsRequest(a3))
  {
    v8 = ot::Coap::CoapBase::NewMessage(a1);
    if (v8)
    {
      Type = ot::Coap::Message::GetType(a3);
      if (Type)
      {
        if (Type != 1)
        {
          v9 = 7;
          goto LABEL_12;
        }

        ot::Coap::Message::Init(v8, 1, a2);
      }

      else
      {
        ot::Coap::Message::Init(v8, 2, a2);
        MessageId = ot::Coap::Message::GetMessageId(a3);
        ot::Coap::Message::SetMessageId(v8, MessageId);
      }

      v9 = ot::Coap::Message::SetTokenFromMessage(v8, a3);
      if (!v9)
      {
        v9 = ot::Coap::CoapBase::SendMessage(a1, v8, a4);
      }
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 7;
  }

LABEL_12:
  if (v9 && v8)
  {
    ot::Message::Free(v8);
  }

  return v9;
}

BOOL ot::Coap::Message::IsRequest(ot::Coap::Message *this)
{
  v3 = 0;
  if (ot::Coap::Message::GetCode(this) >= 1)
  {
    return ot::Coap::Message::GetCode(this) <= 4;
  }

  return v3;
}

{
  return ot::Coap::Message::IsRequest(this);
}

uint64_t ot::Coap::CoapBase::HandleRetransmissionTimer(ot::Coap::CoapBase *this)
{
  v22 = this;
  ot::NextFireTime::NextFireTime(v21);
  ot::Ip6::MessageInfo::MessageInfo(v12);
  v11[2] = this;
  v11[0] = ot::Coap::MessageQueue::begin(this);
  v11[1] = v1;
  v10[0] = ot::Coap::MessageQueue::end(this);
  v10[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v11, v10))
  {
    v9 = ot::Coap::Message::Iterator::operator*(v11);
    ot::Coap::CoapBase::Metadata::ReadFrom(&v13, v9);
    Now = ot::NextFireTime::GetNow(v21);
    if (ot::Time::operator>=(&Now, &v16))
    {
      if ((v20 & 2) == 0 || !v18)
      {
        ot::Coap::CoapBase::FinalizeCoapTransaction(this, v9, &v13, 0, 0, 0x1Cu);
        goto LABEL_10;
      }

      --v18;
      v17 *= 2;
      v6 = ot::NextFireTime::GetNow(v21);
      v7 = ot::Time::operator+(&v6, v17);
      v16 = v7;
      ot::Coap::CoapBase::Metadata::UpdateIn(&v13, v9);
      if ((v20 & 1) == 0)
      {
        ot::Ip6::MessageInfo::SetPeerAddr(v12, &v14);
        ot::Ip6::MessageInfo::SetPeerPort(v12, v15);
        ot::Ip6::MessageInfo::SetSockAddr(v12, &v13);
        ot::Ip6::MessageInfo::SetHopLimit(v12, v19);
        ot::Ip6::MessageInfo::SetIsHostInterface(v12, (v20 & 8) != 0);
        ot::Ip6::MessageInfo::SetMulticastLoop(v12, (v20 & 4) != 0);
        ot::Coap::CoapBase::SendCopy(this, v9, v12);
      }
    }

    ot::NextFireTime::UpdateIfEarlier(v21, v16);
LABEL_10:
    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v11, v3);
  }

  return ot::TimerMilli::FireAt((this + 16), v21);
}

uint64_t ot::NextFireTime::GetNow(ot::NextFireTime *this)
{
  return *this;
}

{
  return ot::NextFireTime::GetNow(this);
}

__n128 ot::Ip6::MessageInfo::SetSockAddr(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

uint64_t ot::Ip6::MessageInfo::SetMulticastLoop(uint64_t this, char a2)
{
  *(this + 37) = *(this + 37) & 0xEF | (16 * (a2 & 1));
  return this;
}

{
  return ot::Ip6::MessageInfo::SetMulticastLoop(this, a2);
}

void ot::Coap::CoapBase::SendCopy(ot::Coap::CoapBase *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v11 = this;
  v14 = 0;
  v12 = a2;
  Length = ot::Message::GetLength(a2);
  v13 = ot::Coap::Message::Clone(v12, Length - 72);
  if (v13)
  {
    v14 = ot::Coap::CoapBase::Send(v11, v13, v15);
  }

  else
  {
    v14 = 3;
  }

  if (v14)
  {
    v4 = ot::ErrorToString(v14);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("Coap", "Failed to send copy: %s", v5, v6, v7, v8, v9, v10, v4);
    if (v13)
    {
      ot::Message::Free(v13);
    }
  }
}

uint64_t ot::Coap::CoapBase::AbortTransaction(ot::Coap::MessageQueue *a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = 23;
  v11 = a1;
  v10[0] = ot::Coap::MessageQueue::begin(a1);
  v10[1] = v3;
  v9[0] = ot::Coap::MessageQueue::end(v11);
  v9[1] = v4;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v10, v9))
  {
    v8 = ot::Coap::Message::Iterator::operator*(v10);
    ot::Coap::CoapBase::Metadata::ReadFrom(v12, v8);
    if (v13 == v17 && v14 == v16)
    {
      ot::Coap::CoapBase::FinalizeCoapTransaction(a1, v8, v12, 0, 0, 0xBu);
      v15 = 0;
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v10, v5);
  }

  return v15;
}

uint64_t ot::Coap::CoapBase::Metadata::AppendTo(ot::Coap::CoapBase::Metadata *this, ot::Coap::Message *a2)
{
  return ot::Message::Append<ot::Coap::CoapBase::Metadata>(a2, this);
}

{
  return ot::Coap::CoapBase::Metadata::AppendTo(this, a2);
}

ot::Message **ot::Coap::MessageQueue::Enqueue(ot::Coap::MessageQueue *this, ot::Coap::Message *a2)
{
  return ot::Coap::MessageQueue::Enqueue(this, a2, 1);
}

{
  return ot::Coap::MessageQueue::Enqueue(this, a2);
}

uint64_t ot::Coap::CoapBase::EvictMessage(ot::Coap::CoapBase *this)
{
  v10 = 0;
  Head = ot::Coap::MessageQueue::GetHead(this);
  if (Head)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Evicting message from head of CoAP pending requests queue", v1, v2, v3, v4, v5, v6);
    ot::Coap::CoapBase::DequeueMessage(this, Head);
  }

  else
  {
    return 23;
  }

  return v10;
}

uint64_t ot::Coap::MessageQueue::GetHead(ot::Coap::MessageQueue *this)
{
  return ot::MessageQueue::GetHead(this);
}

{
  return ot::MessageQueue::GetHead(this);
}

{
  return ot::Coap::MessageQueue::GetHead(this);
}

{
  return ot::Coap::MessageQueue::GetHead(this);
}

uint64_t ot::Coap::MessageQueue::Dequeue(ot::Coap::MessageQueue *this, ot::Coap::Message *a2)
{
  return ot::MessageQueue::Dequeue(this, a2);
}

{
  return ot::Coap::MessageQueue::Dequeue(this, a2);
}

ot::Coap::Message *ot::Coap::CoapBase::FindRelatedRequest(ot::Coap::CoapBase *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, ot::Coap::CoapBase::Metadata *a4)
{
  v23 = this;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = 0;
  v18 = this;
  v17[0] = ot::Coap::MessageQueue::begin(this);
  v17[1] = v4;
  v16[0] = ot::Coap::MessageQueue::end(v18);
  v16[1] = v5;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v17, v16))
  {
    v15 = ot::Coap::Message::Iterator::operator*(v17);
    ot::Coap::CoapBase::Metadata::ReadFrom(v20, v15);
    v14 = v20 + 16;
    ot::Ip6::MessageInfo::GetPeerAddr(v21);
    if (ot::Equatable<ot::Ip6::Address>::operator==(v14, v6) || ot::Ip6::Address::IsMulticast((v20 + 16)) || (Iid = ot::Ip6::Address::GetIid((v20 + 16)), ot::Ip6::InterfaceIdentifier::IsAnycastLocator(Iid, v8)))
    {
      v13 = *(v20 + 16);
      if (v13 == ot::Ip6::MessageInfo::GetPeerPort(v21))
      {
        Type = ot::Coap::Message::GetType(v22);
        if (Type <= 1)
        {
          if (ot::Coap::Message::IsTokenEqual(v22, v15))
          {
            return v15;
          }
        }

        else if (Type == 3 || Type == 2)
        {
          MessageId = ot::Coap::Message::GetMessageId(v22);
          if (MessageId == ot::Coap::Message::GetMessageId(v15))
          {
            return v15;
          }
        }
      }
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v17, v9);
  }

  return v19;
}

void ot::Coap::CoapBase::Receive(ot::Coap::CoapBase *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  ot::AsCoapMessage();
  v12 = v3;
  if (ot::Coap::Message::ParseHeader(v3))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("Coap", "Failed to parse CoAP header", v4, v5, v6, v7, v8, v9);
    ot::Ip6::MessageInfo::GetSockAddr(a3);
    if (!ot::Ip6::Address::IsMulticast(v10) && ot::Coap::Message::IsConfirmable(v12))
    {
      ot::Coap::CoapBase::SendReset(this, v12, a3);
      IgnoreError();
    }
  }

  else if (ot::Coap::Message::IsRequest(v12))
  {
    ot::Coap::CoapBase::ProcessReceivedRequest(this, v12, a3);
  }

  else
  {
    ot::Coap::CoapBase::ProcessReceivedResponse(this, v12, a3);
  }
}

void ot::Coap::CoapBase::ProcessReceivedRequest(ot::Coap::CoapBase *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v36 = this;
  v35 = a2;
  v34 = a3;
  v33 = 0;
  v32 = 0;
  if (!ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::IsSet(this + 7) || (v32 = ot::Callback<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Coap::Message&,ot::Ip6::MessageInfo const&>(this + 56, v35, v34)) == 0)
  {
    MatchedResponseCopy = ot::Coap::ResponsesQueue::GetMatchedResponseCopy((this + 72), v35, v34, &v33);
    if (MatchedResponseCopy)
    {
      if (MatchedResponseCopy == 3)
      {
        v32 = 3;
      }

      else
      {
        UriPathOptions = ot::Coap::Message::ReadUriPathOptions(v35, __s2);
        v32 = UriPathOptions;
        if (!UriPathOptions)
        {
          if (*(this + 16) && ((*(this + 16))(this, __s2, v35, v34) & 1) != 0)
          {
            v32 = 0;
          }

          else
          {
            v31[1] = this + 48;
            v31[0] = ot::LinkedList<ot::Coap::Resource>::begin(this + 48);
            v30 = ot::LinkedList<ot::Coap::Resource>::end();
            while (ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator!=(v31, &v30))
            {
              v29 = ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator*(v31);
              if (!strcmp(*v29, __s2))
              {
                ot::Coap::Resource::HandleRequest(v29, v35, v34);
                v32 = 0;
                goto LABEL_20;
              }

              ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator++(v31);
            }

            if (ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::IsSet(this + 14))
            {
              v28 = v35;
              v27 = v34;
              ot::Callback<void (*)(void *,otMessage *,otMessageInfo const*),(ot::CallbackContextPosition)0>::Invoke<ot::Coap::Message *,ot::Ip6::MessageInfo const*>(this + 112, &v28, &v27);
              v32 = 0;
            }

            else
            {
              v32 = 23;
            }
          }
        }
      }
    }

    else
    {
      ot::Coap::Message::Finish(v33);
      v32 = ot::Coap::CoapBase::Send(this, v33, v34);
    }
  }

LABEL_20:
  if (v32)
  {
    v4 = ot::ErrorToString(v32);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Failed to process request: %s", v5, v6, v7, v8, v9, v10, v4);
    Length = ot::Message::GetLength(v35);
    ot::Ip6::MessageInfo::GetPeerAddr(v34);
    ot::Ip6::Address::ToString(v38, v11);
    v22 = ot::String<(unsigned short)40>::AsCString(v38);
    PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v34);
    ot::Ip6::MessageInfo::GetSockAddr(v34);
    ot::Ip6::Address::ToString(v37, v12);
    v24 = ot::String<(unsigned short)40>::AsCString(v37);
    SockPort = ot::Ip6::MessageInfo::GetSockPort(v34);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Failed message info: uri %s, length %u, source %s/%u, destination %s/%u", v14, v15, v16, v17, v18, v19, __s2, Length, v22, PeerPort, v24, SockPort);
    if (v32 == 23)
    {
      ot::Ip6::MessageInfo::GetSockAddr(v34);
      if (!ot::Ip6::Address::IsMulticast(v20))
      {
        ot::Coap::CoapBase::SendNotFound(this, v35, v34);
        IgnoreError();
      }
    }

    if (v33)
    {
      ot::Message::Free(v33);
    }
  }
}

void ot::Coap::CoapBase::ProcessReceivedResponse(ot::Coap::CoapBase *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v32 = this;
  v31 = a2;
  v30 = a3;
  RelatedRequest = ot::Coap::CoapBase::FindRelatedRequest(this, a2, a3, v25);
  if (!RelatedRequest)
  {
    goto LABEL_24;
  }

  Type = ot::Coap::Message::GetType(v31);
  switch(Type)
  {
    case 0:
      ot::Coap::CoapBase::SendAck(this, v31, v30);
      IgnoreError();
      goto LABEL_20;
    case 1:
LABEL_20:
      if (v27 && ot::Ip6::Address::IsMulticast(&v26))
      {
        v27(v28, v31, v30, 0);
      }

      else
      {
        ot::Coap::CoapBase::FinalizeCoapTransaction(this, RelatedRequest, v25, v31, v30, 0);
      }

      break;
    case 2:
      if (ot::Coap::Message::IsEmpty(v31))
      {
        if ((v29 & 2) != 0)
        {
          v29 = v29 & 0xFE | 1;
          ot::Coap::CoapBase::Metadata::UpdateIn(v25, RelatedRequest);
        }

        if (!v27)
        {
          ot::Coap::CoapBase::DequeueMessage(this, RelatedRequest);
        }
      }

      else if (ot::Coap::Message::IsResponse(v31) && ot::Coap::Message::IsTokenEqual(v31, RelatedRequest))
      {
        ot::Coap::CoapBase::FinalizeCoapTransaction(this, RelatedRequest, v25, v31, v30, 0);
      }

      break;
    default:
      if (Type == 3 && ot::Coap::Message::IsEmpty(v31))
      {
        ot::Coap::CoapBase::FinalizeCoapTransaction(this, RelatedRequest, v25, 0, 0, 0xBu);
      }

      break;
  }

LABEL_24:
  if (!RelatedRequest)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Failed to process response: no matching request", v3, v4, v5, v6, v7, v8);
    Length = ot::Message::GetLength(v31);
    ot::Ip6::MessageInfo::GetPeerAddr(v30);
    ot::Ip6::Address::ToString(v34, v9);
    v19 = ot::String<(unsigned short)40>::AsCString(v34);
    PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v30);
    ot::Ip6::MessageInfo::GetSockAddr(v30);
    ot::Ip6::Address::ToString(v33, v10);
    v21 = ot::String<(unsigned short)40>::AsCString(v33);
    SockPort = ot::Ip6::MessageInfo::GetSockPort(v30);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Failed message info: length %u, source %s/%u, destination %s/%u", v12, v13, v14, v15, v16, v17, Length, v19, PeerPort, v21, SockPort);
    if (ot::Coap::Message::IsConfirmable(v31) || ot::Coap::Message::IsNonConfirmable(v31))
    {
      ot::Coap::CoapBase::SendReset(this, v31, v30);
      IgnoreError();
    }
  }
}

BOOL ot::Coap::Message::IsEmpty(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetCode(this) == 0;
}

{
  return ot::Coap::Message::IsEmpty(this);
}

BOOL ot::Coap::Message::IsResponse(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetCode(this) >= 64;
}

{
  return ot::Coap::Message::IsResponse(this);
}

uint64_t ot::Ip6::MessageInfo::GetSockPort(ot::Ip6::MessageInfo *this)
{
  return *(this + 16);
}

{
  return ot::Ip6::MessageInfo::GetSockPort(this);
}

BOOL ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::IsSet(a1);
}

uint64_t ot::Callback<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Coap::Message&,ot::Ip6::MessageInfo const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*a1)(a2, a3, *(a1 + 8));
}

{
  return ot::Callback<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Coap::Message&,ot::Ip6::MessageInfo const&>(a1, a2, a3);
}

uint64_t ot::Coap::ResponsesQueue::GetMatchedResponseCopy(ot::Coap::ResponsesQueue *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, ot::Coap::Message **a4)
{
  v7 = 0;
  MatchedResponse = ot::Coap::ResponsesQueue::FindMatchedResponse(this, a2, a3);
  if (MatchedResponse)
  {
    Length = ot::Message::GetLength(MatchedResponse);
    *a4 = ot::Coap::Message::Clone(MatchedResponse, Length - 44);
    if (!*a4)
    {
      return 3;
    }
  }

  else
  {
    return 23;
  }

  return v7;
}

uint64_t ot::LinkedList<ot::Coap::Resource>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::Coap::Resource>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::Coap::Resource>::begin(a1);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::Coap::Resource>::end();
}

BOOL ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator*(a1);
}

uint64_t ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator++(uint64_t *a1)
{
  return ot::LinkedList<ot::Coap::Resource>::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator++(a1);
}

BOOL ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::IsSet(a1);
}

uint64_t ot::Callback<void (*)(void *,otMessage *,otMessageInfo const*),(ot::CallbackContextPosition)0>::Invoke<ot::Coap::Message *,ot::Ip6::MessageInfo const*>(uint64_t a1, void *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otMessage *,otMessageInfo const*),(ot::CallbackContextPosition)0>::Invoke<ot::Coap::Message *,ot::Ip6::MessageInfo const*>(a1, a2, a3);
}

uint64_t ot::Message::Read<ot::Coap::CoapBase::Metadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x48u);
}

{
  return ot::Message::Read<ot::Coap::CoapBase::Metadata>(a1, a2, a3);
}

uint64_t ot::Message::Write<ot::Coap::CoapBase::Metadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 0x48u);
}

{
  return ot::Message::Write<ot::Coap::CoapBase::Metadata>(a1, a2, a3);
}

ot::Coap::Message *ot::Coap::ResponsesQueue::FindMatchedResponse(ot::Coap::ResponsesQueue *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  v14 = this;
  v13 = ot::Coap::MessageQueue::begin(this);
  v12 = ot::Coap::MessageQueue::end(v14);
  while (ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(&v13, &v12))
  {
    v11 = ot::Coap::Message::ConstIterator::operator*(&v13);
    MessageId = ot::Coap::Message::GetMessageId(v11);
    if (MessageId == ot::Coap::Message::GetMessageId(v17))
    {
      ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(v9);
      ot::Coap::ResponsesQueue::ResponseMetadata::ReadFrom(v9, v11);
      PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v10);
      if (PeerPort == ot::Ip6::MessageInfo::GetPeerPort(v16))
      {
        ot::Ip6::MessageInfo::GetPeerAddr(v10);
        v6 = v3;
        ot::Ip6::MessageInfo::GetPeerAddr(v16);
        if (ot::Equatable<ot::Ip6::Address>::operator==(v6, v4))
        {
          return v11;
        }
      }
    }

    ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(&v13);
  }

  return v15;
}

BOOL ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(a1, a2);
}

uint64_t ot::Coap::Message::ConstIterator::operator*(uint64_t a1)
{
  return ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(a1);
}

{
  return ot::Coap::Message::ConstIterator::operator*(a1);
}

ot::Coap::ResponsesQueue::ResponseMetadata *ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(ot::Coap::ResponsesQueue::ResponseMetadata *this)
{
  ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(this);
  return this;
}

{
  ot::Ip6::MessageInfo::MessageInfo((this + 4));
  return this;
}

void ot::Coap::ResponsesQueue::ResponseMetadata::ReadFrom(ot::Coap::ResponsesQueue::ResponseMetadata *this, const ot::Coap::Message *a2)
{
  Length = ot::Message::GetLength(a2);
  if (Length < 0x2CuLL)
  {
    __assert_rtn("ReadFrom", "coap.cpp", 1661, "length >= sizeof(*this)");
  }

  ot::Message::Read<ot::Coap::ResponsesQueue::ResponseMetadata>(a2, Length - 44, this);
  IgnoreError();
}

ot::Message *ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(ot::Message **a1)
{
  return ot::Message::ConstIterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(a1);
}

void ot::Coap::ResponsesQueue::UpdateQueue(ot::Coap::ResponsesQueue *this)
{
  v12 = this;
  v11 = 0;
  v10 = 0;
  ot::Time::Time(&v9, 0);
  v8[2] = this;
  v8[0] = ot::Coap::MessageQueue::begin(this);
  v8[1] = v1;
  v7[0] = ot::Coap::MessageQueue::end(this);
  v7[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v8, v7))
  {
    v6 = ot::Coap::Message::Iterator::operator*(v8);
    ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(v5);
    ot::Coap::ResponsesQueue::ResponseMetadata::ReadFrom(v5, v6);
    if (!v10 || ot::Time::operator<(v5, &v9))
    {
      v10 = v6;
      v9 = v5[0];
    }

    ++v11;
    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v8, v3);
  }

  if (v11 >= 0xAu)
  {
    ot::Coap::ResponsesQueue::DequeueResponse(this, v10);
  }
}

ot::Coap::Message *ot::Coap::Message::Clone(ot::Coap::Message *this)
{
  Length = ot::Message::GetLength(this);
  return ot::Coap::Message::Clone(this, Length);
}

{
  return ot::Coap::Message::Clone(this);
}

uint64_t ot::Coap::ResponsesQueue::ResponseMetadata::AppendTo(ot::Coap::ResponsesQueue::ResponseMetadata *this, ot::Coap::Message *a2)
{
  return ot::Message::Append<ot::Coap::ResponsesQueue::ResponseMetadata>(a2, this);
}

{
  return ot::Coap::ResponsesQueue::ResponseMetadata::AppendTo(this, a2);
}

void ot::Coap::MessageQueue::DequeueAndFree(ot::Coap::MessageQueue *this, ot::Coap::Message *a2)
{
  ot::MessageQueue::DequeueAndFree(this, a2);
}

{
  ot::Coap::MessageQueue::DequeueAndFree(this, a2);
}

uint64_t ot::Coap::ResponsesQueue::HandleTimer(ot::Coap::ResponsesQueue *this)
{
  v12 = this;
  ot::NextFireTime::NextFireTime(v11);
  v10[2] = this;
  v10[0] = ot::Coap::MessageQueue::begin(this);
  v10[1] = v1;
  v9[0] = ot::Coap::MessageQueue::end(this);
  v9[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v10, v9))
  {
    v8 = ot::Coap::Message::Iterator::operator*(v10);
    ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(v7);
    ot::Coap::ResponsesQueue::ResponseMetadata::ReadFrom(v7, v8);
    Now = ot::NextFireTime::GetNow(v11);
    if (ot::Time::operator>=(&Now, v7))
    {
      ot::Coap::ResponsesQueue::DequeueResponse(this, v8);
    }

    else
    {
      ot::NextFireTime::UpdateIfEarlier(v11, v7[0]);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v10, v3);
  }

  return ot::TimerMilli::FireAt((this + 8), v11);
}

uint64_t ot::Message::Read<ot::Coap::ResponsesQueue::ResponseMetadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x2Cu);
}

{
  return ot::Message::Read<ot::Coap::ResponsesQueue::ResponseMetadata>(a1, a2, a3);
}

BOOL ot::Coap::TxParameters::IsValid(ot::Coap::TxParameters *this, uint64_t a2, unsigned int a3)
{
  v9 = 0;
  if (*(this + 5) && *(this + 4) >= *(this + 5) && *this >= 0x3E8u && *(this + 6) <= 0x14u)
  {
    v3 = ot::Coap::Multiply(*this, (1 << (*(this + 6) + 1)) - 1);
    v8 = ot::Coap::Multiply(v3, *(this + 4)) / *(this + 5);
    v6 = 0;
    if (v8)
    {
      return *this != -200000 && v8 + *this + 200000 >= v8;
    }

    return v6;
  }

  return v9;
}

uint64_t ot::Coap::Multiply(ot::Coap *this, int a2)
{
  v4 = 0;
  if (this)
  {
    if (this * a2 / this == a2)
    {
      return (this * a2);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void *ot::Coap::Resource::Resource(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = 0;
  return result;
}

void *ot::Coap::Resource::Resource(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::PathForUri(a2);
  ot::Coap::Resource::Resource(a1, v4, a3, a4);
  return a1;
}

{
  v4 = ot::PathForUri(a2);
  ot::Coap::Resource::Resource(a1, v4, a3, a4);
  return a1;
}

ot::Coap::Coap *ot::Coap::Coap::Coap(ot::Coap::Coap *this, ot::Instance *a2)
{
  ot::Coap::CoapBase::CoapBase(this, a2, ot::Coap::Coap::Send);
  ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::SocketIn((this + 144), a2, this);
  return this;
}

{
  ot::Coap::Coap::Coap(this, a2);
  return this;
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

uint64_t ot::Coap::Coap::Start(uint64_t a1, __int16 a2, char a3)
{
  v6 = 0;
  v5 = 0;
  if (!ot::Ip6::Udp::SocketHandle::IsBound((a1 + 144)))
  {
    v6 = ot::Ip6::Udp::Socket::Open((a1 + 144));
    if (!v6)
    {
      v5 = 1;
      v6 = ot::Ip6::Udp::Socket::Bind((a1 + 144), a2, a3);
    }
  }

  if (v6 && (v5 & 1) != 0)
  {
    ot::Ip6::Udp::Socket::Close((a1 + 144));
    IgnoreError();
  }

  return v6;
}

BOOL ot::Ip6::Udp::SocketHandle::IsBound(ot::Ip6::Udp::SocketHandle *this)
{
  return *(this + 8) != 0;
}

{
  return ot::Ip6::Udp::SocketHandle::IsBound(this);
}

uint64_t ot::Coap::Coap::Stop(ot::Coap::Coap *this)
{
  v3 = 0;
  if (ot::Ip6::Udp::SocketHandle::IsBound((this + 144)))
  {
    v3 = ot::Ip6::Udp::Socket::Close((this + 144));
    if (!v3)
    {
      ot::Coap::CoapBase::ClearRequestsAndResponses(this);
    }
  }

  return v3;
}

uint64_t ot::Coap::Coap::Send(ot::Coap::Coap *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (ot::Ip6::Udp::SocketHandle::IsBound((this + 144)))
  {
    return ot::Ip6::Udp::Socket::SendTo((this + 144), a2, a3);
  }

  else
  {
    return 13;
  }
}

ot::Coap::Message::Iterator *ot::Coap::Message::Iterator::Iterator(ot::Coap::Message::Iterator *this)
{
  ot::Coap::Message::Iterator::Iterator(this);
  return this;
}

{
  ot::Message::Iterator::Iterator(this);
  return this;
}

ot::Message::Iterator *ot::Message::Iterator::Iterator(ot::Message::Iterator *this)
{
  ot::Ptr<ot::Message>::Ptr(this);
  result = this;
  *(this + 1) = 0;
  return result;
}

uint64_t ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(a1);
}

uint64_t ot::Message::Append<ot::Coap::CoapBase::Metadata>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x48u);
}

{
  return ot::Message::Append<ot::Coap::CoapBase::Metadata>(a1, a2);
}

ot::Message **ot::Coap::MessageQueue::Enqueue(ot::MessageQueue *a1, ot::Message *a2, char a3)
{
  return ot::MessageQueue::Enqueue(a1, a2, a3);
}

{
  return ot::Coap::MessageQueue::Enqueue(a1, a2, a3);
}

uint64_t ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(a1);
}

uint64_t ot::Message::Append<ot::Coap::ResponsesQueue::ResponseMetadata>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x2Cu);
}

{
  return ot::Message::Append<ot::Coap::ResponsesQueue::ResponseMetadata>(a1, a2);
}

BOOL ot::LinkedList<ot::Coap::Resource>::Contains(uint64_t *a1, uint64_t a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Coap::Resource>::Find(a1, a2, v3) == 0;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Contains(a1, a2);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Push(uint64_t *a1, uint64_t a2)
{
  result = ot::LinkedListEntry<ot::Coap::Resource>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Push(a1, a2);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Find(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(i))
  {
    if (i == a2)
    {
      return 0;
    }

    *a3 = i;
  }

  return v5;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Find(a1, a2, a3);
}

uint64_t ot::LinkedListEntry<ot::Coap::Resource>::GetNext(uint64_t a1)
{
  return *(a1 + 24);
}

{
  return *(a1 + 24);
}

{
  return ot::LinkedListEntry<ot::Coap::Resource>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Coap::Resource>::GetNext(a1);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Find(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ot::AsConst<ot::LinkedList<ot::Coap::Resource>>();
  return ot::LinkedList<ot::Coap::Resource>::Find(v3, a2, a3);
}

{
  return ot::LinkedList<ot::Coap::Resource>::Find(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::PopAfter(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return ot::LinkedList<ot::Coap::Resource>::Pop(a1);
  }

  Next = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(a2);
  if (Next)
  {
    v2 = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(Next);
    ot::LinkedListEntry<ot::Coap::Resource>::SetNext(a2, v2);
  }

  return Next;
}

{
  return ot::LinkedList<ot::Coap::Resource>::PopAfter(a1, a2);
}

void ot::AsConst<ot::LinkedList<ot::Coap::Resource>>()
{
  ;
}

{
  ot::AsConst<ot::LinkedList<ot::Coap::Resource>>();
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Pop(a1);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedList<ot::Coap::Resource>::GetHead(a1);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Iterator::Advance(uint64_t *a1)
{
  result = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(*a1);
  *a1 = result;
  return result;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Iterator::Advance(a1);
}

ot::Message *ot::Message::ConstIterator::Advance(ot::Message **this)
{
  result = ot::Message::GetNext(*this);
  *this = result;
  return result;
}

{
  return ot::Message::ConstIterator::Advance(this);
}

uint64_t ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::HandleUdpReceive(ot::Coap::Coap *a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otMessage>(a2);
  v6 = v3;
  ot::AsCoreType<otMessageInfo>(a3);
  return (ot::Coap::Coap::HandleUdpReceive)(a1, v6, v4);
}

void ot::Coap::Message::Init(ot::Coap::Message *this)
{
  ot::Coap::Message::GetHelpData(this);
  ot::Clearable<ot::Coap::Message::HelpData>::Clear(v1);
  ot::Coap::Message::SetVersion(this, 1);
  ot::Message::SetOffset(this, 0);
  ot::Coap::Message::GetHelpData(this);
  *(v2 + 16) = 4;
  ot::Coap::Message::GetHelpData(this);
  ot::Message::SetLength(this, *(v3 + 16));
  IgnoreError();
}

uint64_t ot::Clearable<ot::Coap::Message::HelpData>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::Coap::Message::HelpData>(a1);
}

{
  return ot::Clearable<ot::Coap::Message::HelpData>::Clear(a1);
}

void ot::Coap::Message::SetVersion(ot::Coap::Message *this, char a2)
{
  ot::Coap::Message::GetHelpData(this);
  *v2 &= 0x3Fu;
  ot::Coap::Message::GetHelpData(this);
  *v3 |= a2 << 6;
}

{
  ot::Coap::Message::SetVersion(this, a2);
}

void ot::Coap::Message::Init(ot::Coap::Message *a1, char a2, char a3)
{
  ot::Coap::Message::Init(a1);
  ot::Coap::Message::SetType(a1, a2);
  ot::Coap::Message::SetCode(a1, a3);
}

void ot::Coap::Message::SetType(ot::Coap::Message *a1, char a2)
{
  ot::Coap::Message::GetHelpData(a1);
  *v2 &= 0xCFu;
  ot::Coap::Message::GetHelpData(a1);
  *v3 |= 16 * a2;
}

{
  ot::Coap::Message::SetType(a1, a2);
}

uint64_t ot::Coap::Message::Init(ot::Coap::Message *a1, char a2, char a3, unsigned __int8 a4)
{
  ot::Coap::Message::Init(a1, a2, a3);
  RandomToken = ot::Coap::Message::GenerateRandomToken(a1, 2u, v4);
  if (!RandomToken)
  {
    v5 = ot::PathForUri(a4);
    return ot::Coap::Message::AppendUriPathOptions(a1, v5, v6);
  }

  return RandomToken;
}

uint64_t ot::Coap::Message::GenerateRandomToken(ot::Coap::Message *this, unsigned __int8 a2, unsigned __int16 a3)
{
  if (a2 > 8uLL)
  {
    __assert_rtn("GenerateRandomToken", "coap_message.cpp", 421, "aTokenLength <= sizeof(token)");
  }

  ot::Random::Crypto::FillBuffer(v6, a2, a3);
  IgnoreError();
  return ot::Coap::Message::SetToken(this, v6, a2);
}

uint64_t ot::Coap::Message::AppendUriPathOptions(ot::Coap::Message *this, ot *a2, char a3)
{
  v7 = a2;
  for (i = ot::StringFind(a2, 0x2F); ; i = ot::StringFind((v6 + 1), 0x2F))
  {
    v6 = i;
    if (!i)
    {
      break;
    }

    appended = ot::Coap::Message::AppendOption(this, 0xBu, i - v7, v7);
    if (appended)
    {
      return appended;
    }

    v7 = (v6 + 1);
  }

  return ot::Coap::Message::AppendStringOption(this, 0xBu, v7);
}

BOOL ot::Coap::Message::IsConfirmablePostRequest(ot::Coap::Message *this)
{
  v3 = 0;
  if (ot::Coap::Message::IsConfirmable(this))
  {
    return ot::Coap::Message::IsPostRequest(this);
  }

  return v3;
}

BOOL ot::Coap::Message::IsNonConfirmablePostRequest(ot::Coap::Message *this)
{
  v3 = 0;
  if (ot::Coap::Message::IsNonConfirmable(this))
  {
    return ot::Coap::Message::IsPostRequest(this);
  }

  return v3;
}

uint64_t ot::Coap::Message::Finish(ot::Coap::Message *this)
{
  ot::Coap::Message::GetHelpData(this);
  if (*(v1 + 18))
  {
    ot::Coap::Message::GetHelpData(this);
    v7 = *(v2 + 16);
    if (v7 == ot::Message::GetLength(this))
    {
      ot::Message::RemoveFooter(this, 1u);
    }
  }

  ot::Coap::Message::GetHelpData(this);
  v6 = v3;
  OptionStart = ot::Coap::Message::GetOptionStart(this);
  return ot::Message::WriteBytes(this, 0, v6, OptionStart);
}

uint64_t ot::Coap::Message::WriteExtendedOptionField(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int8 **a3)
{
  if (a2 >= 0xDu)
  {
    if (a2 < 0x10Du)
    {
      v4 = 13;
      *(*a3)++ = a2 - 13;
    }

    else
    {
      v4 = 14;
      ot::BigEndian::WriteUint16((a2 - 269), *a3, a3);
      *a3 += 2;
    }
  }

  else
  {
    return a2;
  }

  return v4;
}

uint64_t ot::BigEndian::WriteUint16(uint64_t this, _BYTE *a2, unsigned __int8 *a3)
{
  *a2 = BYTE1(this);
  a2[1] = this;
  return this;
}

{
  return ot::BigEndian::WriteUint16(this, a2, a3);
}

uint64_t ot::Coap::Message::AppendOptionHeader(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = 0;
  *&v16[4] = 0;
  v14 = 0;
  v13 = 0;
  v11 = a2;
  ot::Coap::Message::GetHelpData(this);
  if (v11 >= *(v3 + 12))
  {
    ot::Coap::Message::GetHelpData(this);
    *&v16[4] = v19 - *(v4 + 12);
    v13 = v16;
    v15 = 16 * ot::Coap::Message::WriteExtendedOptionField(this, *&v16[4], &v13);
    v5 = ot::Coap::Message::WriteExtendedOptionField(this, v18, &v13);
    v15 |= v5;
    v14 = v13 - &v15;
    Length = ot::Message::GetLength(this);
    if (Length + v14 + v18 >= 0x200)
    {
      return 3;
    }

    else
    {
      appended = ot::Message::AppendBytes(this, &v15, v14);
      v17 = appended;
      if (!appended)
      {
        v10 = v19;
        ot::Coap::Message::GetHelpData(this);
        *(v8 + 12) = v10;
      }
    }
  }

  else
  {
    return 7;
  }

  return v17;
}

uint64_t ot::Coap::Message::AppendOption(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int16 a3, const void *a4)
{
  appended = ot::Coap::Message::AppendOptionHeader(this, a2, a3);
  if (!appended)
  {
    appended = ot::Message::AppendBytes(this, a4, a3);
    if (!appended)
    {
      Length = ot::Message::GetLength(this);
      ot::Coap::Message::GetHelpData(this);
      *(v4 + 16) = Length;
    }
  }

  return appended;
}

uint64_t ot::Coap::Message::AppendOptionFromMessage(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int16 a3, const ot::Coap::Message *a4, unsigned __int16 a5)
{
  appended = ot::Coap::Message::AppendOptionHeader(this, a2, a3);
  if (!appended)
  {
    appended = ot::Message::AppendBytesFromMessage(this, a4, a5, a3);
    if (!appended)
    {
      Length = ot::Message::GetLength(this);
      ot::Coap::Message::GetHelpData(this);
      *(v5 + 16) = Length;
    }
  }

  return appended;
}

uint64_t ot::Coap::Message::AppendUintOption(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int8 *a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v7 = v8;
  v6 = 4;
  ot::BigEndian::WriteUint32(a3, v8, a3);
  while (1)
  {
    v4 = 0;
    if (v6)
    {
      v4 = *v7 == 0;
    }

    if (!v4)
    {
      break;
    }

    ++v7;
    --v6;
  }

  return ot::Coap::Message::AppendOption(this, v10, v6, v7);
}

uint64_t ot::BigEndian::WriteUint32(uint64_t this, _BYTE *a2, unsigned __int8 *a3)
{
  *a2 = BYTE3(this);
  a2[1] = BYTE2(this);
  a2[2] = BYTE1(this);
  a2[3] = this;
  return this;
}

{
  return ot::BigEndian::WriteUint32(this, a2, a3);
}

uint64_t ot::Coap::Message::ReadUriPathOptions(ot::Coap::Message *this, char (*a2)[33])
{
  v11 = this;
  v10 = a2;
  v9 = a2;
  v8 = 0;
  v8 = ot::Coap::Option::Iterator::Init(v7, this, 0xBu);
  if (!v8)
  {
    while (!ot::Coap::Option::Iterator::IsDone(v7))
    {
      Option = ot::Coap::Option::Iterator::GetOption(v7);
      Length = ot::Coap::Option::GetLength(Option);
      if (v9 != v10)
      {
        v3 = v9++;
        *v3 = 47;
      }

      v5 = &v9[Length];
      if (v5 >= ot::GetArrayEnd<char,(unsigned short)33>(v10))
      {
        v8 = 6;
        break;
      }

      ot::Coap::Option::Iterator::ReadOptionValue(v7, v9);
      IgnoreError();
      v9 += Length;
      v8 = ot::Coap::Option::Iterator::Advance(v7, 0xBu);
      if (v8)
      {
        break;
      }
    }
  }

  *v9 = 0;
  return v8;
}

uint64_t ot::Coap::Option::GetLength(ot::Coap::Option *this)
{
  return *(this + 1);
}

{
  return ot::Coap::Option::GetLength(this);
}

uint64_t ot::GetArrayEnd<char,(unsigned short)33>(uint64_t a1)
{
  return a1 + 33;
}

{
  return ot::GetArrayEnd<char,(unsigned short)33>(a1);
}

uint64_t ot::Coap::Option::Iterator::ReadOptionValue(ot::Coap::Option::Iterator *this, char *a2)
{
  v5 = 0;
  if (ot::Coap::Option::Iterator::IsDone(this))
  {
    return 23;
  }

  else
  {
    Message = ot::Coap::Option::Iterator::GetMessage(this);
    ot::Message::ReadBytes(Message, *(this + 6) - *(this + 5), a2, *(this + 5));
  }

  return v5;
}

uint64_t ot::Coap::Message::AppendUriQueryOptions(ot::Coap::Message *this, ot *a2, char a3)
{
  v7 = a2;
  for (i = ot::StringFind(a2, 0x26); ; i = ot::StringFind((v6 + 1), 0x26))
  {
    v6 = i;
    if (!i)
    {
      break;
    }

    appended = ot::Coap::Message::AppendOption(this, 0xFu, i - v7, v7);
    if (appended)
    {
      return appended;
    }

    v7 = (v6 + 1);
  }

  return ot::Coap::Message::AppendStringOption(this, 0xFu, v7);
}

uint64_t ot::Coap::Message::AppendBlockOption(ot::Coap::Message *a1, char a2, unsigned int a3, char a4, int a5)
{
  if (a2 == 1 || a2 == 2)
  {
    if (a5 <= 6)
    {
      if (a3 < 0xFFFF)
      {
        if (a2 == 1)
        {
          v5 = 27;
        }

        else
        {
          v5 = 23;
        }

        return ot::Coap::Message::AppendUintOption(a1, v5, (a5 | (8 * (a4 & 1)) | (16 * a3)));
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
}

uint64_t ot::Coap::Message::SetPayloadMarker(ot::Coap::Message *this)
{
  v9 = this;
  v8 = 0;
  v7 = -1;
  if (ot::Message::GetLength(this) < 512)
  {
    v8 = ot::Message::Append<unsigned char>(this, &v7);
    if (!v8)
    {
      ot::Coap::Message::GetHelpData(this);
      *(v1 + 18) = 1;
      Length = ot::Message::GetLength(this);
      ot::Coap::Message::GetHelpData(this);
      *(v2 + 16) = Length;
      ot::Coap::Message::GetHelpData(this);
      ot::Message::SetOffset(this, *(v3 + 16));
    }
  }

  else
  {
    return 3;
  }

  return v8;
}

uint64_t ot::Message::Append<unsigned char>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 1u);
}

{
  return ot::Message::Append<unsigned char>(a1, a2);
}

uint64_t ot::Coap::Message::ParseHeader(ot::Coap::Message *this)
{
  v19 = this;
  v18 = 0;
  Reserved = ot::Message::GetReserved(this);
  ot::Coap::Message::GetHelpData(this);
  if (v1 - ot::Buffer::GetFirstData(this) + 20 > Reserved)
  {
    __assert_rtn("ParseHeader", "coap_message.cpp", 383, "GetReserved() >= sizeof(HelpData) + static_cast<size_t>((reinterpret_cast<uint8_t *>(&GetHelpData()) - GetFirstData()))");
  }

  ot::Coap::Message::GetHelpData(this);
  ot::Clearable<ot::Coap::Message::HelpData>::Clear(v2);
  Offset = ot::Message::GetOffset(this);
  ot::Coap::Message::GetHelpData(this);
  *(v3 + 14) = Offset;
  ot::Coap::Message::GetHelpData(this);
  v14 = *(v4 + 14);
  ot::Coap::Message::GetHelpData(this);
  ot::Message::Read<ot::Coap::Message::Header>(this, v14, v5);
  IgnoreError();
  TokenLength = ot::Coap::Message::GetTokenLength(this);
  if (TokenLength <= 8)
  {
    v18 = ot::Coap::Option::Iterator::Init(v17, this);
    if (!v18)
    {
      while (!ot::Coap::Option::Iterator::IsDone(v17))
      {
        v18 = ot::Coap::Option::Iterator::Advance(v17);
        if (v18)
        {
          return v18;
        }
      }

      PayloadMessageOffset = ot::Coap::Option::Iterator::GetPayloadMessageOffset(v17);
      ot::Coap::Message::GetHelpData(this);
      v12 = PayloadMessageOffset - *(v7 + 14);
      ot::Coap::Message::GetHelpData(this);
      *(v8 + 16) = v12;
      ot::Coap::Message::GetHelpData(this);
      ot::Message::MoveOffset(this, *(v9 + 16));
    }
  }

  else
  {
    return 6;
  }

  return v18;
}

uint64_t ot::Message::GetReserved(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 46);
}

{
  return ot::Message::GetReserved(this);
}

uint64_t ot::Message::Read<ot::Coap::Message::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xCu);
}

{
  return ot::Message::Read<ot::Coap::Message::Header>(a1, a2, a3);
}

uint64_t ot::Coap::Option::Iterator::Init(ot::Coap::Option::Iterator *this, const ot::Coap::Message *a2)
{
  v6 = 6;
  v4 = *(ot::Coap::Message::GetHelpData(a2) + 14);
  v5 = v4 + ot::Coap::Message::GetOptionStart(a2);
  if (v5 <= ot::Message::GetLength(a2))
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
    *this = a2;
    *(this + 6) = v5;
    return ot::Coap::Option::Iterator::Advance(this);
  }

  else
  {
    ot::Coap::Option::Iterator::MarkAsParseErrored(this);
  }

  return v6;
}

uint64_t ot::Coap::Option::Iterator::Advance(ot::Coap::Option::Iterator *this)
{
  v11 = this;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (!ot::Coap::Option::Iterator::IsDone(this))
  {
    v10 = ot::Coap::Option::Iterator::Read(this, 1u, &v9);
    if (v10 || v9 == 255)
    {
      ot::Coap::Option::Iterator::MarkAsDone(this);
      if (v10 || (v5 = *(this + 6), Message = ot::Coap::Option::Iterator::GetMessage(this), v5 < ot::Message::GetLength(Message)))
      {
        v10 = 0;
      }

      else
      {
        v10 = 6;
      }
    }

    else
    {
      v8 = (v9 & 0xF0) >> 4;
      v10 = ot::Coap::Option::Iterator::ReadExtendedOptionField(this, &v8);
      if (!v10)
      {
        v7 = v9 & 0xF;
        v10 = ot::Coap::Option::Iterator::ReadExtendedOptionField(this, &v7);
        if (!v10)
        {
          v4 = v7;
          v2 = ot::Coap::Option::Iterator::GetMessage(this);
          if (v4 <= (ot::Message::GetLength(v2) - *(this + 6)))
          {
            *(this + 6) += v7;
            *(this + 4) += v8;
            *(this + 5) = v7;
          }

          else
          {
            v10 = 6;
          }
        }
      }
    }
  }

  if (v10)
  {
    ot::Coap::Option::Iterator::MarkAsParseErrored(this);
  }

  return v10;
}

uint64_t ot::Coap::Option::Iterator::GetPayloadMessageOffset(ot::Coap::Option::Iterator *this)
{
  return *(this + 6);
}

{
  return ot::Coap::Option::Iterator::GetPayloadMessageOffset(this);
}

uint64_t ot::Coap::Message::SetToken(ot::Coap::Message *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  if (a3 > 8u)
  {
    __assert_rtn("SetToken", "coap_message.cpp", 408, "aTokenLength <= kMaxTokenLength");
  }

  ot::Coap::Message::SetTokenLength(this, a3);
  Token = ot::Coap::Message::GetToken(this);
  memcpy(Token, a2, a3);
  ot::Coap::Message::GetHelpData(this);
  *(v4 + 16) += a3;
  ot::Coap::Message::GetHelpData(this);
  return ot::Message::SetLength(this, *(v5 + 16));
}

void ot::Coap::Message::SetTokenLength(ot::Coap::Message *this, char a2)
{
  ot::Coap::Message::GetHelpData(this);
  *v2 &= 0xF0u;
  ot::Coap::Message::GetHelpData(this);
  *v3 |= a2 & 0xF;
}

{
  ot::Coap::Message::SetTokenLength(this, a2);
}

uint64_t ot::Coap::Message::GetToken(ot::Coap::Message *this)
{
  ot::Coap::Message::GetHelpData(this);
  return v1 + 4;
}

{
  return ot::Coap::Message::GetToken(this);
}

uint64_t ot::Random::Crypto::FillBuffer(ot::Random::Crypto *this, unsigned __int8 *a2, unsigned __int16 a3)
{
  return ot::Random::Manager::CryptoFillBuffer(this, a2);
}

{
  return ot::Random::Crypto::FillBuffer(this, a2, a3);
}

uint64_t ot::Coap::Message::SetTokenFromMessage(ot::Coap::Message *this, const ot::Coap::Message *a2)
{
  Token = ot::Coap::Message::GetToken(a2);
  TokenLength = ot::Coap::Message::GetTokenLength(a2);
  return ot::Coap::Message::SetToken(this, Token, TokenLength);
}

BOOL ot::Coap::Message::IsTokenEqual(ot::Coap::Message *this, const ot::Coap::Message *a2)
{
  TokenLength = ot::Coap::Message::GetTokenLength(this);
  v6 = 0;
  if (TokenLength == ot::Coap::Message::GetTokenLength(a2))
  {
    __s1 = ot::Coap::Message::GetToken(this);
    Token = ot::Coap::Message::GetToken(a2);
    return memcmp(__s1, Token, TokenLength) == 0;
  }

  return v6;
}

uint64_t ot::Coap::Message::SetDefaultResponseHeader(ot::Coap::Message *this, const ot::Coap::Message *a2)
{
  ot::Coap::Message::Init(this, 2, 68);
  MessageId = ot::Coap::Message::GetMessageId(a2);
  ot::Coap::Message::SetMessageId(this, MessageId);
  return ot::Coap::Message::SetTokenFromMessage(this, a2);
}

ot::Coap::Message *ot::Coap::Message::Clone(ot::Coap::Message *this, unsigned __int16 a2)
{
  v6 = ot::Message::Clone(this, a2);
  if (v6)
  {
    HelpData = ot::Coap::Message::GetHelpData(this);
    ot::Coap::Message::GetHelpData(v6);
    *v2 = *HelpData;
    *(v2 + 16) = *(HelpData + 16);
  }

  return v6;
}

uint64_t ot::Stringify::Lookup<(unsigned short)28>(__int16 a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v10 = a1;
  v8 = ot::BinarySearch::Find<unsigned short,ot::Stringify::Entry,(unsigned short)28>(&v10, a2, a3, a4, a5, a6);
  if (v8)
  {
    return *(v8 + 1);
  }

  else
  {
    return a3;
  }
}

{
  return ot::Stringify::Lookup<(unsigned short)28>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Coap::MessageQueue::begin(ot::Coap::MessageQueue *this)
{
  Head = ot::Coap::MessageQueue::GetHead(this);
  _ZN2ot4Coap7Message8IteratorCI1NS_7Message8IteratorEEPS3_(&v3, Head);
  return v3;
}

{
  Head = ot::Coap::MessageQueue::GetHead(this);
  _ZN2ot4Coap7Message13ConstIteratorCI1NS_7Message13ConstIteratorEEPKS3_(&v3, Head);
  return v3;
}

uint64_t ot::Coap::Option::Iterator::MarkAsParseErrored(ot::Coap::Option::Iterator *this)
{
  result = ot::Coap::Option::Iterator::MarkAsDone(this);
  *(this + 6) = 0;
  return result;
}

{
  return ot::Coap::Option::Iterator::MarkAsParseErrored(this);
}

uint64_t ot::Coap::Option::Iterator::Read(ot::Coap::Option::Iterator *this, unsigned __int16 a2, char *a3)
{
  Message = ot::Coap::Option::Iterator::GetMessage(this);
  v6 = ot::Message::Read(Message, *(this + 6), a3, a2);
  if (!v6)
  {
    *(this + 6) += a2;
  }

  return v6;
}

uint64_t ot::Coap::Option::Iterator::MarkAsDone(uint64_t this)
{
  *(this + 10) = -1;
  return this;
}

{
  return ot::Coap::Option::Iterator::MarkAsDone(this);
}

uint64_t ot::Coap::Option::Iterator::ReadExtendedOptionField(ot::Coap::Option::Iterator *this, unsigned __int16 *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  if (*a2 >= 0xDu)
  {
    if (*v7 == 13)
    {
      v5 = 0;
      v6 = ot::Coap::Option::Iterator::Read(this, 1u, &v5);
      if (!v6)
      {
        *v7 = v5 + 13;
      }
    }

    else if (*v7 == 14)
    {
      v4 = 0;
      v6 = ot::Coap::Option::Iterator::Read(this, 2u, &v4);
      if (!v6)
      {
        v4 = ot::BigEndian::HostSwap16(v4, v2);
        *v7 = v4 + 269;
      }
    }

    else
    {
      return 6;
    }
  }

  return v6;
}

uint64_t ot::Coap::Option::Iterator::ReadOptionValue(ot::Coap::Option::Iterator *this, unint64_t *a2)
{
  v5 = 0;
  if (ot::Coap::Option::Iterator::IsDone(this))
  {
    return 23;
  }

  else if (*(this + 5) > 8uLL)
  {
    return 3;
  }

  else
  {
    ot::Coap::Option::Iterator::ReadOptionValue(this, v7);
    IgnoreError();
    *a2 = 0;
    for (i = 0; i < *(this + 5); ++i)
    {
      *a2 <<= 8;
      *a2 |= v7[i];
    }
  }

  return v5;
}

uint64_t ot::Coap::Option::Iterator::InitOrAdvance(ot::Coap::Option::Iterator *this, const ot::Coap::Message *a2, unsigned __int16 a3)
{
  if (a2)
  {
    v6 = ot::Coap::Option::Iterator::Init(this, a2);
  }

  else
  {
    v6 = ot::Coap::Option::Iterator::Advance(this);
  }

  for (i = v6; ; i = ot::Coap::Option::Iterator::Advance(this))
  {
    v5 = 0;
    if (!i)
    {
      v5 = 0;
      if (!ot::Coap::Option::Iterator::IsDone(this))
      {
        Option = ot::Coap::Option::Iterator::GetOption(this);
        v5 = ot::Coap::Option::GetNumber(Option) != a3;
      }
    }

    if (!v5)
    {
      break;
    }
  }

  return i;
}

uint64_t ot::Coap::Option::GetNumber(ot::Coap::Option *this)
{
  return *this;
}

{
  return ot::Coap::Option::GetNumber(this);
}

uint64_t ot::Random::Manager::CryptoFillBuffer(ot::Random::Manager *this, unsigned __int8 *a2)
{
  return j__otPlatCryptoRandomGet(this, a2);
}

{
  return ot::Random::Manager::CryptoFillBuffer(this, a2);
}

ot::Message::Iterator *ot::Message::Iterator::Iterator(ot::Message::Iterator *this, ot::Message *a2)
{
  ot::Ptr<ot::Message>::Ptr(this, a2);
  Message = ot::Message::Iterator::NextMessage(a2, v2);
  result = this;
  *(this + 1) = Message;
  return result;
}

uint64_t ot::Message::Iterator::NextMessage(ot::Message::Iterator *this, ot::Message *a2)
{
  if (this)
  {
    return ot::Message::GetNext(this);
  }

  else
  {
    return 0;
  }
}

{
  return ot::Message::Iterator::NextMessage(this, a2);
}

uint64_t ot::Message::NextOf(ot::Message *this, const ot::Message *a2)
{
  if (this)
  {
    return *ot::Message::Next(this);
  }

  else
  {
    return 0;
  }
}

{
  return ot::Message::NextOf(this, a2);
}

uint64_t ot::ClearAllBytes<ot::Coap::Message::HelpData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Coap::Message::HelpData>(result);
}

char *ot::BinarySearch::Find<unsigned short,ot::Stringify::Entry,(unsigned short)28>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0x1C, 0x10u, ot::BinarySearch::Compare<unsigned short,ot::Stringify::Entry>, a6);
}

{
  return ot::BinarySearch::Find<unsigned short,ot::Stringify::Entry,(unsigned short)28>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Stringify::Entry::Compare(ot::Stringify::Entry *this, unsigned __int16 a2)
{
  return ot::ThreeWayCompare<unsigned short>(a2, *this);
}

{
  return ot::Stringify::Entry::Compare(this, a2);
}

uint64_t ot::ThreeWayCompare<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
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
  return ot::ThreeWayCompare<unsigned short>(a1, a2);
}

ot::Coap::CoapSecure *ot::Coap::CoapSecure::CoapSecure(ot::Coap::CoapSecure *this, ot::Instance *a2, char a3)
{
  ot::Coap::CoapBase::CoapBase(this, a2, ot::Coap::CoapSecure::Send);
  ot::MeshCoP::SecureTransport::SecureTransport((this + 144), a2, a3 & 1, 1);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 143);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 145);
  ot::Coap::MessageQueue::MessageQueue((this + 1176));
  ot::TaskletContext::TaskletContext((this + 1184), a2, ot::Coap::CoapSecure::HandleTransmit, this);
  return this;
}

{
  ot::Coap::CoapSecure::CoapSecure(this, a2, a3 & 1);
  return this;
}

ot::TaskletContext *ot::TaskletContext::TaskletContext(ot::TaskletContext *this, ot::Instance *a2, void (*a3)(ot::Tasklet *), void *a4)
{
  ot::TaskletContext::TaskletContext(this, a2, a3, a4);
  return this;
}

{
  ot::Tasklet::Tasklet(this, a2, a3);
  result = this;
  *(this + 2) = a4;
  return result;
}

uint64_t ot::Coap::CoapSecure::Start(ot::Coap::CoapSecure *this, unsigned __int16 a2, __int16 a3, void (*a4)(void *), uint64_t a5)
{
  v7 = ot::Coap::CoapSecure::Open(this, a3, a4, a5);
  if (!v7)
  {
    return ot::MeshCoP::SecureTransport::Bind((this + 144), a2);
  }

  return v7;
}

uint64_t ot::Coap::CoapSecure::Open(ot::Coap::CoapSecure *this, __int16 a2, void (*a3)(void *), uint64_t a4)
{
  v6 = 24;
  if (!ot::MeshCoP::SecureTransport::SetMaxConnectionAttempts((this + 144), a2, ot::Coap::CoapSecure::HandleDtlsAutoClose, this))
  {
    ot::CallbackBase<void (*)(void *)>::Set(this + 145, a3, a4);
    ot::CallbackBase<void (*)(BOOL,void *)>::Clear(this + 143);
    if (!ot::MeshCoP::SecureTransport::Open((this + 144), ot::Coap::CoapSecure::HandleDtlsReceive, ot::Coap::CoapSecure::HandleDtlsConnected, this))
    {
      return 0;
    }
  }

  return v6;
}

uint64_t ot::Coap::CoapSecure::Start(ot::Coap::CoapSecure *a1, uint64_t a2, uint64_t a3)
{
  v5 = ot::Coap::CoapSecure::Open(a1, 0, 0, 0);
  if (!v5)
  {
    return ot::MeshCoP::SecureTransport::Bind(a1 + 144, a2, a3);
  }

  return v5;
}

void *ot::CallbackBase<void (*)(void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(BOOL,void *)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(BOOL,void *)>::Clear(result);
}

ot::Message *ot::Coap::CoapSecure::Stop(void **this)
{
  ot::MeshCoP::SecureTransport::Close(this + 18);
  ot::MessageQueue::DequeueAndFreeAll((this + 147));
  return ot::Coap::CoapBase::ClearRequestsAndResponses(this);
}

void *ot::CallbackBase<void (*)(BOOL,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(BOOL,void *)>::Set(result, a2, a3);
}

uint64_t ot::Coap::CoapSecure::SetPsk(ot::Coap::CoapSecure *this, const ot::MeshCoP::JoinerPskd *a2)
{
  v8 = (this + 144);
  ot::MeshCoP::JoinerPskd::GetAsCString(a2);
  v7 = v2;
  Length = ot::MeshCoP::JoinerPskd::GetLength(a2, v3, v4);
  result = ot::MeshCoP::SecureTransport::SetPsk(v8, v7, Length);
  if (result)
  {
    __assert_rtn("SetPsk", "coap_secure.cpp", 118, "false");
  }

  return result;
}

void ot::MeshCoP::JoinerPskd::GetAsCString(ot::MeshCoP::JoinerPskd *this)
{
  ;
}

{
  ot::MeshCoP::JoinerPskd::GetAsCString(this);
}

uint64_t ot::MeshCoP::JoinerPskd::GetLength(ot::MeshCoP::JoinerPskd *this, uint64_t a2, unsigned __int16 a3)
{
  return ot::StringLength(this, 0x21);
}

{
  return ot::MeshCoP::JoinerPskd::GetLength(this, a2, a3);
}

uint64_t ot::Coap::CoapSecure::SendMessage(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, uint64_t a4)
{
  if (ot::Coap::CoapSecure::IsConnected(a1))
  {
    MessageInfo = ot::MeshCoP::SecureTransport::GetMessageInfo((a1 + 144));
    return ot::Coap::CoapBase::SendMessage(a1, a2, MessageInfo, a3, a4);
  }

  else
  {
    return 13;
  }
}

BOOL ot::Coap::CoapSecure::IsConnected(ot::Coap::CoapSecure *this)
{
  return ot::MeshCoP::SecureTransport::IsConnected((this + 144));
}

{
  return ot::Coap::CoapSecure::IsConnected(this);
}

uint64_t ot::MeshCoP::SecureTransport::GetMessageInfo(ot::MeshCoP::SecureTransport *this)
{
  return this + 856;
}

{
  return ot::MeshCoP::SecureTransport::GetMessageInfo(this);
}

uint64_t ot::Coap::CoapSecure::Send(ot::Coap::CoapSecure *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  ot::MessageQueue::Enqueue((this + 1176), a2);
  ot::Tasklet::Post((this + 1184));
  return 0;
}

void *ot::Coap::CoapSecure::HandleDtlsConnected(ot::Coap::CoapSecure *this, char a2)
{
  v4 = this;
  v3 = a2;
  return ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<BOOL &>(this + 143, &v3);
}

void *ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<BOOL &>(void *result, _BYTE *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<BOOL &>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<BOOL &>(result, a2);
}

void *ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeIfSet<>(void *result)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::Invoke<>(result);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeIfSet<>(result);
}

void ot::Coap::CoapSecure::HandleDtlsReceive(ot::Coap::CoapSecure *this, char *a2, unsigned __int16 a3)
{
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
  HelpDataReserved = ot::Coap::Message::GetHelpDataReserved(v5);
  v7 = ot::MessagePool::Allocate(v5, 0, HelpDataReserved);
  if (v7 && !ot::Message::AppendBytes(v7, a2, a3))
  {
    MessageInfo = ot::MeshCoP::SecureTransport::GetMessageInfo((this + 144));
    ot::Coap::CoapBase::Receive(this, v7, MessageInfo);
  }

  if (v7)
  {
    ot::Message::Free(v7);
  }
}

uint64_t ot::Coap::Message::GetHelpDataReserved(ot::Coap::Message *this)
{
  return 22;
}

{
  return ot::Coap::Message::GetHelpDataReserved(this);
}

uint64_t ot::TaskletContext::GetContext(ot::TaskletContext *this)
{
  return *(this + 2);
}

{
  return ot::TaskletContext::GetContext(this);
}

void ot::Coap::CoapSecure::HandleTransmit(ot::Coap::CoapSecure *this)
{
  v21 = this;
  v18 = this;
  v20 = 0;
  Head = ot::MessageQueue::GetHead((this + 1176));
  if (Head)
  {
    ot::MessageQueue::Dequeue((v18 + 1176), Head);
    if (ot::MessageQueue::GetHead((v18 + 1176)))
    {
      ot::Tasklet::Post((v18 + 1184));
    }

    v17 = (v18 + 144);
    v16 = Head;
    Length = ot::Message::GetLength(Head);
    v20 = ot::MeshCoP::SecureTransport::Send((v18 + 144), Head, Length);
  }

  if (v20)
  {
    v2 = ot::ErrorToString(v20);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("CoapSecure", "Transmit: %s", v3, v4, v5, v6, v7, v8, v2);
    ot::Message::Free(Head);
  }

  else
  {
    v9 = ot::ErrorToString(0);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("CoapSecure", "Transmit: %s", v10, v11, v12, v13, v14, v15, v9);
  }
}

ot::InstanceLocator *ot::Tasklet::Tasklet(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  result = a1;
  *a1 = a3;
  *(a1 + 1) = 0;
  return result;
}

BOOL ot::MeshCoP::SecureTransport::IsConnected(ot::MeshCoP::SecureTransport *this)
{
  return *this == 4;
}

{
  return ot::MeshCoP::SecureTransport::IsConnected(this);
}

uint64_t ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<BOOL &>(uint64_t a1, _BYTE *a2)
{
  return (*a1)(*a2 & 1, *(a1 + 8));
}

{
  return ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<BOOL &>(a1, a2);
}

uint64_t ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::Invoke<>(uint64_t a1)
{
  return (*a1)(*(a1 + 8));
}

{
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::Invoke<>(a1);
}

ot::Crc16 *ot::Crc16::Crc16(ot::Crc16 *a1, __int16 a2)
{
  *a1 = a2;
  ot::Crc16::Init(a1);
  return a1;
}

{
  ot::Crc16::Crc16(a1, a2);
  return a1;
}

uint64_t ot::Crc16::Init(uint64_t this)
{
  *(this + 2) = 0;
  return this;
}

{
  return ot::Crc16::Init(this);
}

_WORD *ot::Crc16::Update(_WORD *this, unsigned __int8 a2)
{
  this[1] ^= a2 << 8;
  v2 = 8;
  do
  {
    if ((this[1] & 0x8000) != 0)
    {
      this[1] = (2 * this[1]) ^ *this;
    }

    else
    {
      this[1] *= 2;
    }

    --v2;
  }

  while (v2);
  return this;
}

const char *ot::ErrorToString(int a1)
{
  if (a1 >= ot::GetArrayLength<char const*,(unsigned short)38>())
  {
    return "UnknownErrorType";
  }

  else
  {
    return ot::ErrorToString(otError)::kErrorStrings[a1];
  }
}

uint64_t ot::GetArrayLength<char const*,(unsigned short)38>()
{
  return 38;
}

{
  return ot::GetArrayLength<char const*,(unsigned short)38>();
}

uint64_t ot::Heap::CAlloc(ot::Heap *this, unint64_t a2)
{
  v5 = this;
  v4 = a2;
  Heap = ot::Instance::GetHeap(this);
  return ot::Utils::Heap::CAlloc(Heap, v5, v4);
}

ot::MessagePool *ot::MessagePool::MessagePool(ot::MessagePool *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Pool<ot::Buffer,(unsigned short)256>::Pool(this + 1);
  *(this + 32776) = 0;
  *(this + 32777) = 0;
  bzero(this + 65556, 0x4C00uLL);
  result = this;
  *(this + 85012) = 1;
  return result;
}

{
  ot::MessagePool::MessagePool(this, a2);
  return this;
}

uint64_t *ot::Pool<ot::Buffer,(unsigned short)256>::Pool(uint64_t *a1)
{
  ot::Pool<ot::Buffer,(unsigned short)256>::Pool(a1);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1);
  for (i = a1 + 1; i != a1 + 8193; i += 32)
  {
    ot::LinkedList<ot::Buffer>::Push(a1, i);
  }

  return a1;
}

ot::Message *ot::MessagePool::Allocate(ot::MessagePool *a1, char a2, __int16 a3, ot::Message::Settings *a4)
{
  v10 = 0;
  Priority = ot::Message::Settings::GetPriority(a4);
  v9 = ot::MessagePool::NewBuffer(a1, Priority);
  if (v9)
  {
    ot::ClearAllBytes<ot::Message>(v9);
    ot::Message::SetMessagePool(v9, a1);
    ot::Message::SetType(v9, a2);
    ot::Message::SetReserved(v9, a3);
    IsLinkSecurityEnabled = ot::Message::Settings::IsLinkSecurityEnabled(a4);
    ot::Message::SetLinkSecurityEnabled(v9, IsLinkSecurityEnabled);
    ot::Message::SetLoopbackToHostAllowed(v9, 1);
    ot::Message::SetOrigin(v9, 1);
    v6 = ot::Message::Settings::GetPriority(a4);
    v10 = ot::Message::SetPriority(v9, v6);
    if (!v10)
    {
      v10 = ot::Message::SetLength(v9, 0);
    }
  }

  if (v10)
  {
    ot::MessagePool::Free(a1, v9);
    return 0;
  }

  return v9;
}

ot::Buffer *ot::MessagePool::NewBuffer(ot::InstanceLocator *a1, char a2)
{
  v45 = a1;
  v44 = a2;
  v17 = a1;
  v43 = 0;
  while (1)
  {
    v43 = ot::Pool<ot::Buffer,(unsigned short)256>::Allocate(v17 + 1);
    if (v43)
    {
      break;
    }

    if (ot::MessagePool::ReclaimBuffers(v17, v44))
    {
      goto LABEL_14;
    }
  }

  if (*(v17 + 85012))
  {
    ot::MessagePool::UpdateBufferStats(v17, v43, 1);
  }

  v2 = v17;
  ++*(v17 + 32776);
  v16[29] = 65554;
  *(v17 + 32777) = ot::Max<unsigned short>(*(v2 + 32777), *(v2 + 32776));
  ot::Buffer::SetNextBuffer(v43, 0);
  FreeBufferCount = ot::MessagePool::GetFreeBufferCount(v17);
  if (256 - FreeBufferCount >= 230 && FreeBufferCount != 26)
  {
    handle_ot_buffer_threshold_captureABC();
  }

  if ((rcpBuffersAvailable & 1) == 1)
  {
    v4 = ot::MessagePool::GetFreeBufferCount(v17);
    if (256 - v4 >= 192 && v4 != 64)
    {
      v16[28] = v43;
      v5 = ot::MessagePool::GetFreeBufferCount(v17);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Message", "HIGH_WATER_MARK: Low message buffer : buffer = %p,total buffers = %d, free buffers = %d, allocated buffers = %d, max allocated = %d", v6, v7, v8, v9, v10, v11, v43, 256, v5, *(v17 + 32776), *(v17 + 32777));
      rcpBuffersAvailable = 0;
    }
  }

  if (ot::MessagePool::GetFreeBufferCount(v17) <= 2)
  {
    update_buff_limit_exceedeed_metric(1);
  }

LABEL_14:
  if (!v43)
  {
    Instance = ot::InstanceLocator::GetInstance(v17);
    otMessageGetBufferInfo(Instance, v18);
    v13 = ot::MessagePool::GetFreeBufferCount(v17);
    v14 = *(v17 + 32777);
    v16[27] = v16;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Message", "No available message buffer : [tot:%d, free:%d], Ip6:[msgs:%u, bufs:%u, totbytes:%u] 6LoSend:[%u, %u, %u] 6LoReas:[%u, %u, %u] mle:[%u, %u, %u,], coap:[%u, %u, %u], coapSec:[%u, %u, %u], mpl:[%u %u %u], applCoap:[%u, %u, %u], max allocated = %d", v35, v35, v34, v32, v32, v31, 256, v13, v25, v26, v27, v19, v20, v21, v22, v23, v24, v31, v32, v33, v34, v35, v36, v37, v38, v39, v28, v29, v30, v40, v41, v42, v14);
  }

  return v43;
}

uint64_t ot::Message::Settings::GetPriority(ot::Message::Settings *this)
{
  return *(this + 1);
}

{
  return ot::Message::Settings::GetPriority(this);
}

void *ot::ClearAllBytes<ot::Message>(void *a1)
{
  return memset(a1, 0, 0x100uLL);
}

{
  return ot::ClearAllBytes<ot::Message>(a1);
}

uint64_t ot::Message::SetMessagePool(ot::Message *this, ot::MessagePool *a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 16) = a2;
  return result;
}

{
  return ot::Message::SetMessagePool(this, a2);
}

uint64_t ot::Message::SetType(ot::Buffer *a1, char a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 70) = *(result + 70) & 0xFFFFFFF8 | a2 & 7;
  return result;
}

{
  return ot::Message::SetType(a1, a2);
}

uint64_t ot::Message::SetReserved(ot::Message *this, __int16 a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 46) = a2;
  return result;
}

{
  return ot::Message::SetReserved(this, a2);
}

uint64_t ot::Message::SetLinkSecurityEnabled(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFFEFF | ((a2 & 1) << 8);
  return result;
}

{
  return ot::Message::SetLinkSecurityEnabled(this, a2);
}

uint64_t ot::Message::Settings::IsLinkSecurityEnabled(ot::Message::Settings *this)
{
  return *this & 1;
}

{
  return ot::Message::Settings::IsLinkSecurityEnabled(this);
}

uint64_t ot::Message::SetPriority(ot::Message *a1, unsigned __int8 a2)
{
  v8 = 0;
  if (a2 < 4u)
  {
    if (ot::Message::IsInAQueue(a1))
    {
      if (((*(ot::Buffer::GetMetadata(a1) + 70) >> 9) & 3) != a2)
      {
        PriorityQueue = ot::Message::GetPriorityQueue(a1);
        if (PriorityQueue)
        {
          ot::PriorityQueue::Dequeue(PriorityQueue, a1);
        }

        Metadata = ot::Buffer::GetMetadata(a1);
        *(Metadata + 70) = *(Metadata + 70) & 0xFFFFF9FF | ((a2 & 3) << 9);
        if (PriorityQueue)
        {
          ot::PriorityQueue::Enqueue(PriorityQueue, a1);
        }
      }
    }

    else
    {
      v2 = ot::Buffer::GetMetadata(a1);
      *(v2 + 70) = *(v2 + 70) & 0xFFFFF9FF | ((a2 & 3) << 9);
    }
  }

  else
  {
    return 7;
  }

  return v8;
}

uint64_t ot::Message::SetLength(ot::Message *this, unsigned __int16 a2)
{
  v4 = (ot::Message::GetReserved(this) + a2);
  if (v4 >= ot::Message::GetReserved(this))
  {
    v5 = ot::Message::ResizeMessage(this, v4);
    if (!v5)
    {
      *(ot::Buffer::GetMetadata(this) + 48) = a2;
      if (ot::Message::GetOffset(this) > a2)
      {
        ot::Message::SetOffset(this, a2);
      }
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

void ot::MessagePool::Free(ot::MessagePool *this, ot::Message *a2)
{
  v3 = 0;
  if (!*ot::Message::Next(a2))
  {
    v3 = *ot::Message::Prev(a2) == 0;
  }

  if (!v3)
  {
    __assert_rtn("Free", "message.cpp", 129, "aMessage->Next() == nullptr && aMessage->Prev() == nullptr");
  }

  ot::MessagePool::FreeBuffers(this, a2);
}

uint64_t ot::Message::Prev(ot::Message *this)
{
  return ot::Buffer::GetMetadata(this) + 8;
}

{
  return ot::Message::Prev(this);
}

void ot::MessagePool::FreeBuffers(ot::MessagePool *this, ot::Buffer *a2)
{
  while (a2)
  {
    NextBuffer = ot::Buffer::GetNextBuffer(a2);
    ot::Pool<ot::Buffer,(unsigned short)256>::Free(this + 1, a2);
    if (*(this + 85012))
    {
      ot::MessagePool::UpdateBufferStats(this, a2, 0);
    }

    --*(this + 32776);
    if ((rcpBuffersAvailable & 1) == 0 && (256 - ot::MessagePool::GetFreeBufferCount(this)) < 115)
    {
      FreeBufferCount = ot::MessagePool::GetFreeBufferCount(this);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Message", "LOW_WATER_MARK: allocated buffers = %d, free buffers = %d, allocated buffers=%d, max allocated=%d", v3, v4, v5, v6, v7, v8, 256, FreeBufferCount, *(this + 32776), *(this + 32777));
      rcpBuffersAvailable = 1;
    }

    a2 = NextBuffer;
  }
}

uint64_t ot::Pool<ot::Buffer,(unsigned short)256>::Allocate(uint64_t *a1)
{
  return ot::LinkedList<ot::Buffer>::Pop(a1);
}

{
  return ot::Pool<ot::Buffer,(unsigned short)256>::Allocate(a1);
}

uint64_t ot::MessagePool::ReclaimBuffers(ot::InstanceLocator *a1, char a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
  v6 = ot::MeshForwarder::EvictMessage(v2, a2);
  if (v6 == 23)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
    return ot::Coap::CoapBase::EvictMessage(v3);
  }

  return v6;
}

uint64_t ot::MessagePool::UpdateBufferStats(ot::MessagePool *this, const ot::Buffer *a2, char a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  IndexOf = ot::MessagePool::GetIndexOf(this, a2);
  *(this + 76 * IndexOf + 65564) = v10 & 1;
  gettimeofday(&v8, 0);
  tv_sec = v8.tv_sec;
  tv_usec = v8.tv_usec;
  memset(v13, 0, sizeof(v13));
  v3 = localtime(&tv_sec);
  strftime(v13, 0x20uLL, "%Y-%m-%d %H:%M:%S", v3);
  if (v10)
  {
    ++*(this + 19 * IndexOf + 16389);
    return snprintf(this + 76 * IndexOf + 65565, 0x20uLL, "%s.%06d", v13, tv_usec);
  }

  else
  {
    ++*(this + 19 * IndexOf + 16390);
    return snprintf(this + 76 * IndexOf + 65597, 0x20uLL, "%s.%06d", v13, tv_usec);
  }
}

uint64_t ot::Max<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
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
  return ot::Max<unsigned short>(a1, a2);
}

void *ot::Buffer::SetNextBuffer(ot::Buffer *this, ot::Buffer *a2)
{
  return ot::LinkedListEntry<ot::Buffer>::SetNext(this, a2);
}

{
  return ot::Buffer::SetNextBuffer(this, a2);
}

uint64_t ot::Buffer::GetNextBuffer(ot::Buffer *this)
{
  return ot::LinkedListEntry<ot::Buffer>::GetNext(this);
}

{
  return ot::LinkedListEntry<ot::Buffer>::GetNext(this);
}

{
  return ot::Buffer::GetNextBuffer(this);
}

{
  return ot::Buffer::GetNextBuffer(this);
}

void *ot::Pool<ot::Buffer,(unsigned short)256>::Free(uint64_t *a1, void *a2)
{
  return ot::LinkedList<ot::Buffer>::Push(a1, a2);
}

{
  return ot::Pool<ot::Buffer,(unsigned short)256>::Free(a1, a2);
}

void ot::MessagePool::ReclaimAllBuffers(ot::MessagePool *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  ot::Coap::CoapBase::ClearRequestsAndResponses(v1);
  FreeBufferCount = ot::MessagePool::GetFreeBufferCount(this);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Message", "ReclaimAllBuff:Total[%d],free[%d],allocated[%d]", v3, v4, v5, v6, v7, v8, 256, FreeBufferCount, *(this + 32776));
}

uint64_t ot::MessagePool::GetIndexOf(ot::MessagePool *this, const ot::Buffer *a2)
{
  return ot::Pool<ot::Buffer,(unsigned short)256>::GetIndexOf(this + 8, a2);
}

{
  return ot::MessagePool::GetIndexOf(this, a2);
}

uint64_t ot::MessagePool::ResetBufferStats(uint64_t this)
{
  for (i = 0; i < 0x100u; ++i)
  {
    *(this + 65556 + 76 * i) -= *(this + 65556 + 76 * i + 4);
    v1 = this + 65556 + 76 * i;
    *(v1 + 4) = 0;
    *(v1 + 41) = 0u;
    *(v1 + 57) = 0u;
    if (!*v1)
    {
      v2 = this + 65556 + 76 * i;
      *(v2 + 9) = 0u;
      *(v2 + 25) = 0u;
    }
  }

  return this;
}

BOOL *ot::Message::Settings::Settings(BOOL *result, char a2, BOOL a3)
{
  *result = (a2 & 1) != 0;
  result[1] = a3;
  return result;
}

void *ot::Message::Settings::From(uint64_t a1)
{
  if (!a1)
  {
    return ot::Message::Settings::GetDefault(0);
  }

  ot::AsCoreType<otMessageSettings>(a1);
  return v1;
}

void ot::AsCoreType<otMessageSettings>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otMessageSettings>(a1);
}

uint64_t ot::Message::Iterator::Advance(ot::Message::Iterator *this, ot::Message *a2)
{
  *this = *(this + 1);
  result = ot::Message::Iterator::NextMessage(*(this + 1), a2);
  *(this + 1) = result;
  return result;
}

uint64_t ot::Message::GetBufferIDs(ot::Message *this, unsigned __int16 a2, unsigned __int16 a3, char *a4)
{
  NextBuffer = this;
  v10 = 1;
  snprintf(a4, 0x400uLL, ", BufIDs:");
  if (a2 <= 0xA8u || a2 + a3 <= 0xA8)
  {
    v4 = ot::GetProvider<ot::Message>::Get<ot::MessagePool>(this);
    IndexOf = ot::MessagePool::GetIndexOf(v4, NextBuffer);
    v5 = strlen(a4);
    snprintf(&a4[v5], 1024 - v5, "%u", IndexOf);
    v10 = 0;
  }

  for (i = 168; ; i += 248)
  {
    result = ot::Buffer::GetNextBuffer(NextBuffer);
    if (!result)
    {
      break;
    }

    NextBuffer = ot::Buffer::GetNextBuffer(NextBuffer);
    if (a2 >= i && a2 <= i + 248 || a2 + a3 >= i && a2 + a3 <= i + 248)
    {
      v7 = ot::GetProvider<ot::Message>::Get<ot::MessagePool>(this);
      v14 = ot::MessagePool::GetIndexOf(v7, NextBuffer);
      v11 = strlen(a4);
      v8 = "";
      if ((v10 & 1) == 0)
      {
        v8 = ",";
      }

      snprintf(&a4[v11], 1024 - v11, "%s%u", v8, v14);
      v10 = 0;
    }
  }

  return result;
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::MessagePool>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::MessagePool>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::MessagePool>(a1);
}

uint64_t ot::Message::GetBufferIDs(ot::Message *this, char *a2)
{
  NextBuffer = this;
  v2 = ot::GetProvider<ot::Message>::Get<ot::MessagePool>(this);
  IndexOf = ot::MessagePool::GetIndexOf(v2, NextBuffer);
  snprintf(a2, 0x400uLL, ", BufIDs:%u", IndexOf);
  while (1)
  {
    result = ot::Buffer::GetNextBuffer(NextBuffer);
    if (!result)
    {
      break;
    }

    NextBuffer = ot::Buffer::GetNextBuffer(NextBuffer);
    v5 = ot::GetProvider<ot::Message>::Get<ot::MessagePool>(this);
    v8 = ot::MessagePool::GetIndexOf(v5, NextBuffer);
    v6 = strlen(a2);
    snprintf(&a2[v6], 1024 - v6, ",%u", v8);
  }

  return result;
}

uint64_t ot::Message::ResizeMessage(ot::Message *this, unsigned __int16 a2)
{
  v12 = 0;
  NextBuffer = this;
  for (i = 168; i < a2; i += 248)
  {
    if (!ot::Buffer::GetNextBuffer(NextBuffer))
    {
      MessagePool = ot::Message::GetMessagePool(this);
      Priority = ot::Message::GetPriority(this);
      v3 = ot::MessagePool::NewBuffer(MessagePool, Priority);
      ot::Buffer::SetNextBuffer(NextBuffer, v3);
      if (!ot::Buffer::GetNextBuffer(NextBuffer))
      {
        return 3;
      }
    }

    NextBuffer = ot::Buffer::GetNextBuffer(NextBuffer);
  }

  v9 = NextBuffer;
  v11 = ot::Buffer::GetNextBuffer(NextBuffer);
  ot::Buffer::SetNextBuffer(v9, 0);
  v4 = ot::Message::GetMessagePool(this);
  ot::MessagePool::FreeBuffers(v4, v11);
  return v12;
}

uint64_t ot::Message::GetNext(ot::Message *this)
{
  if ((*(ot::Buffer::GetMetadata(this) + 70) & 0x800) != 0)
  {
    PriorityQueue = ot::Message::GetPriorityQueue(this);
    if (!PriorityQueue)
    {
      return 0;
    }

    ot::PriorityQueue::GetTail(PriorityQueue);
    Tail = v1;
  }

  else
  {
    MessageQueue = ot::Message::GetMessageQueue(this);
    if (!MessageQueue)
    {
      return 0;
    }

    Tail = ot::MessageQueue::GetTail(MessageQueue);
  }

  if (this == Tail)
  {
    return 0;
  }

  else
  {
    return *ot::Message::Next(this);
  }
}

uint64_t ot::Message::GetPriorityQueue(ot::Message *this)
{
  if ((*(ot::Buffer::GetMetadata(this) + 70) & 0x800) != 0)
  {
    return *(ot::Buffer::GetMetadata(this) + 24);
  }

  else
  {
    return 0;
  }
}

{
  return ot::Message::GetPriorityQueue(this);
}

void ot::PriorityQueue::GetTail(ot::PriorityQueue *this)
{
  ot::AsConst<ot::PriorityQueue>();
  ot::PriorityQueue::GetTail(v1);
  ot::AsNonConst<ot::Message>();
}

{
  ot::PriorityQueue::GetTail(this);
}

uint64_t ot::Message::SetOffset(ot::Message *this, unsigned __int16 a2)
{
  if (a2 > ot::Message::GetLength(this))
  {
    __assert_rtn("SetOffset", "message.cpp", 525, "aOffset <= GetLength()");
  }

  result = ot::Buffer::GetMetadata(this);
  *(result + 50) = a2;
  return result;
}

uint64_t ot::Message::GetBufferCount(ot::Message *this)
{
  v3 = 1;
  for (i = ot::Buffer::GetNextBuffer(this); i; i = ot::Buffer::GetNextBuffer(i))
  {
    ++v3;
  }

  return v3;
}

uint64_t ot::Message::MoveOffset(ot::Message *this, int a2)
{
  v7 = a2;
  v6 = ot::Message::GetOffset(this) + a2;
  if (v6 > ot::Message::GetLength(this))
  {
    __assert_rtn("MoveOffset", "message.cpp", 518, "GetOffset() + aDelta <= GetLength()");
  }

  Metadata = ot::Buffer::GetMetadata(this);
  *(Metadata + 50) += v7;
  v4 = *(ot::Buffer::GetMetadata(this) + 50);
  result = ot::Message::GetLength(this);
  if (v4 > result)
  {
    __assert_rtn("MoveOffset", "message.cpp", 520, "GetMetadata().mOffset <= GetLength()");
  }

  return result;
}

BOOL ot::Message::IsInAQueue(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 24) != 0;
}

{
  return ot::Message::IsInAQueue(this);
}

uint64_t ot::PriorityQueue::Dequeue(ot::PriorityQueue *this, ot::Message *a2)
{
  if (ot::Message::GetPriorityQueue(a2) != this)
  {
    __assert_rtn("Dequeue", "message.cpp", 1281, "aMessage.GetPriorityQueue() == this");
  }

  Priority = ot::Message::GetPriority(a2);
  v8 = *(this + Priority);
  if (a2 == v8)
  {
    v9 = *ot::Message::Prev(v8);
    if (a2 == v9 || ot::Message::GetPriority(v9) != Priority)
    {
      v9 = 0;
    }

    *(this + Priority) = v9;
  }

  v5 = *ot::Message::Prev(a2);
  v2 = ot::Message::Next(a2);
  *ot::Message::Prev(*v2) = v5;
  v6 = *ot::Message::Next(a2);
  v3 = ot::Message::Prev(a2);
  *ot::Message::Next(*v3) = v6;
  *ot::Message::Next(a2) = 0;
  *ot::Message::Prev(a2) = 0;
  return ot::Message::SetPriorityQueue(a2, 0);
}

void *ot::PriorityQueue::Enqueue(ot::PriorityQueue *this, ot::Message *a2)
{
  if (ot::Message::IsInAQueue(a2))
  {
    __assert_rtn("Enqueue", "message.cpp", 1250, "!aMessage.IsInAQueue()");
  }

  ot::Message::SetPriorityQueue(a2, this);
  Priority = ot::Message::GetPriority(a2);
  ot::PriorityQueue::FindFirstNonNullTail(this, Priority);
  v6 = v2;
  if (v2)
  {
    v4 = *ot::Message::Next(v2);
    *ot::Message::Next(a2) = v4;
    *ot::Message::Prev(a2) = v6;
    *ot::Message::Prev(v4) = a2;
    result = ot::Message::Next(v6);
  }

  else
  {
    *ot::Message::Next(a2) = a2;
    result = ot::Message::Prev(a2);
  }

  *result = a2;
  *(this + Priority) = a2;
  return result;
}

uint64_t ot::Message::AppendBytes(ot::Message *this, char *a2, unsigned __int16 a3)
{
  Length = ot::Message::GetLength(this);
  v3 = ot::Message::GetLength(this);
  v7 = ot::Message::SetLength(this, v3 + a3);
  if (!v7)
  {
    ot::Message::WriteBytes(this, Length, a2, a3);
  }

  return v7;
}

uint64_t ot::Message::WriteBytes(ot::Message *this, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a3;
  if (a2 + a4 > ot::Message::GetLength(this))
  {
    __assert_rtn("WriteBytes", "message.cpp", 927, "aOffset + aLength <= GetLength()");
  }

  ot::Message::GetFirstChunk(this, v15, &v13, v11);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    if (result <= 0)
    {
      break;
    }

    ot::Message::MutableChunk::GetBytes(v11);
    __dst = v5;
    __src = v12;
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    memmove(__dst, __src, Length);
    v7 = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    v12 += v7;
    ot::Message::GetNextChunk(this, &v13, v11);
  }

  return result;
}

uint64_t ot::Message::AppendBytesFromMessage(ot::Message *this, const ot::Message *a2, const ot::OffsetRange *a3)
{
  Offset = ot::OffsetRange::GetOffset(a3);
  Length = ot::OffsetRange::GetLength(a3);
  return ot::Message::AppendBytesFromMessage(this, a2, Offset, Length);
}

uint64_t ot::Message::AppendBytesFromMessage(ot::Message *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  *&v13[4] = 0;
  *v13 = ot::Message::GetLength(this);
  if (ot::Message::GetLength(v16) < v15 + v14)
  {
    *&v13[2] = 6;
  }

  else
  {
    Length = ot::Message::GetLength(this);
    v5 = ot::Message::SetLength(this, Length + v14);
    *&v13[2] = v5;
    if (!v5)
    {
      ot::Message::GetFirstChunk(v16, v15, &v14, v12);
      while (ot::Data<(ot::DataLengthType)1>::GetLength(v12) > 0)
      {
        v9 = *v13;
        Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v12);
        v6 = ot::Data<(ot::DataLengthType)1>::GetLength(v12);
        ot::Message::WriteBytes(this, v9, Bytes, v6);
        v7 = ot::Data<(ot::DataLengthType)1>::GetLength(v12);
        *v13 += v7;
        ot::Message::GetNextChunk(v16, &v14, v12);
      }
    }
  }

  return *&v13[2];
}

uint64_t ot::OffsetRange::GetOffset(ot::OffsetRange *this)
{
  return *this;
}

{
  return ot::OffsetRange::GetOffset(this);
}

uint64_t ot::Message::GetFirstChunk(ot::Message *this, unsigned __int16 a2, unsigned __int16 *a3, ot::Message::Chunk *a4)
{
  if (a2 < ot::Message::GetLength(this))
  {
    v10 = a2 + *a3;
    if (v10 >= ot::Message::GetLength(this))
    {
      *a3 = ot::Message::GetLength(this) - a2;
    }

    v15 = a2 + ot::Message::GetReserved(this);
    ot::Message::Chunk::SetBuffer(a4, this);
    if (v15 < 0xA8u)
    {
      FirstData = ot::Buffer::GetFirstData(this);
      ot::Data<(ot::DataLengthType)1>::Init(a4, FirstData + v15, 168 - v15);
    }

    else
    {
      for (i = v15 - 168; ; i -= 248)
      {
        Buffer = ot::Message::Chunk::GetBuffer(a4);
        NextBuffer = ot::Buffer::GetNextBuffer(Buffer);
        ot::Message::Chunk::SetBuffer(a4, NextBuffer);
        if (!ot::Message::Chunk::GetBuffer(a4))
        {
          __assert_rtn("GetFirstChunk", "message.cpp", 794, "aChunk.GetBuffer() != nullptr");
        }

        if (i < 0xF8u)
        {
          break;
        }
      }

      v7 = ot::Message::Chunk::GetBuffer(a4);
      Data = ot::Buffer::GetData(v7);
      ot::Data<(ot::DataLengthType)1>::Init(a4, Data + i, 248 - i);
    }
  }

  else
  {
    ot::Data<(ot::DataLengthType)1>::SetLength(a4, 0);
  }

  if (ot::Data<(ot::DataLengthType)1>::GetLength(a4) > *a3)
  {
    ot::Data<(ot::DataLengthType)1>::SetLength(a4, *a3);
  }

  result = ot::Data<(ot::DataLengthType)1>::GetLength(a4);
  *a3 -= result;
  return result;
}

uint64_t ot::Data<(ot::DataLengthType)1>::GetBytes(uint64_t a1)
{
  return *a1;
}

{
  return ot::Data<(ot::DataLengthType)1>::GetBytes(a1);
}

uint64_t ot::Message::GetNextChunk(ot::Message *this, unsigned __int16 *a2, ot::Message::Chunk *a3)
{
  if (!*a2)
  {
    return ot::Data<(ot::DataLengthType)1>::SetLength(a3, 0);
  }

  Buffer = ot::Message::Chunk::GetBuffer(a3);
  NextBuffer = ot::Buffer::GetNextBuffer(Buffer);
  ot::Message::Chunk::SetBuffer(a3, NextBuffer);
  if (!ot::Message::Chunk::GetBuffer(a3))
  {
    __assert_rtn("GetNextChunk", "message.cpp", 826, "aChunk.GetBuffer() != nullptr");
  }

  v6 = ot::Message::Chunk::GetBuffer(a3);
  Data = ot::Buffer::GetData(v6);
  ot::Data<(ot::DataLengthType)1>::Init(a3, Data, 248);
  if (ot::Data<(ot::DataLengthType)1>::GetLength(a3) > *a2)
  {
    ot::Data<(ot::DataLengthType)1>::SetLength(a3, *a2);
  }

  result = ot::Data<(ot::DataLengthType)1>::GetLength(a3);
  *a2 -= result;
  return result;
}

uint64_t ot::Message::PrependBytes(ot::Message *this, char *a2, unsigned __int16 a3)
{
  v16 = 0;
  while (a3 > ot::Message::GetReserved(this))
  {
    MessagePool = ot::Message::GetMessagePool(this);
    Priority = ot::Message::GetPriority(this);
    v15 = ot::MessagePool::NewBuffer(MessagePool, Priority);
    if (!v15)
    {
      return 3;
    }

    NextBuffer = ot::Buffer::GetNextBuffer(this);
    ot::Buffer::SetNextBuffer(v15, NextBuffer);
    ot::Buffer::SetNextBuffer(this, v15);
    if (ot::Message::GetReserved(this) < 0xA8uLL)
    {
      __dst = v15 + ot::Message::GetReserved(this) + 88;
      __src = this + ot::Message::GetReserved(this) + 88;
      Reserved = ot::Message::GetReserved(this);
      memcpy(__dst, __src, 168 - Reserved);
    }

    v6 = ot::Message::GetReserved(this);
    ot::Message::SetReserved(this, v6 + 248);
  }

  v7 = ot::Message::GetReserved(this);
  ot::Message::SetReserved(this, v7 - a3);
  Metadata = ot::Buffer::GetMetadata(this);
  *(Metadata + 48) += a3;
  Offset = ot::Message::GetOffset(this);
  ot::Message::SetOffset(this, Offset + a3);
  if (a2)
  {
    ot::Message::WriteBytes(this, 0, a2, a3);
  }

  return v16;
}

uint64_t ot::Message::RemoveHeader(ot::Message *this, unsigned __int16 a2)
{
  if (a2 > *(ot::Buffer::GetMetadata(this) + 48))
  {
    __assert_rtn("RemoveHeader", "message.cpp", 680, "aLength <= GetMetadata().mLength");
  }

  Metadata = ot::Buffer::GetMetadata(this);
  *(Metadata + 46) += a2;
  v3 = ot::Buffer::GetMetadata(this);
  *(v3 + 48) -= a2;
  if (*(ot::Buffer::GetMetadata(this) + 50) <= a2)
  {
    result = ot::Buffer::GetMetadata(this);
    *(result + 50) = 0;
  }

  else
  {
    result = ot::Buffer::GetMetadata(this);
    *(result + 50) -= a2;
  }

  return result;
}

const ot::Message *ot::Message::WriteBytesFromMessage(const ot::Message *this, unsigned __int16 a2, const ot::Message *a3, unsigned __int16 a4, unsigned __int16 a5)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v9 = this;
  if (a3 == this && v13 < v15)
  {
    v15 += v12;
    v13 += v12;
    while (v12)
    {
      v10 = ot::Min<unsigned short>(0x20u, v12);
      v12 -= v10;
      v13 -= v10;
      v15 -= v10;
      ot::Message::ReadBytes(v9, v13, v17, v10);
      this = ot::Message::WriteBytes(v9, v15, v17, v10);
    }
  }

  else
  {
    ot::Message::GetFirstChunk(v14, v13, &v12, v11);
    while (1)
    {
      this = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
      if (this <= 0)
      {
        break;
      }

      v7 = v15;
      Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v11);
      Length = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
      ot::Message::WriteBytes(v9, v7, Bytes, Length);
      v6 = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
      v15 += v6;
      ot::Message::GetNextChunk(v14, &v12, v11);
    }
  }

  return this;
}

uint64_t ot::Message::InsertHeader(ot::Message *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v5 = ot::Message::PrependBytes(this, 0, a3);
  if (!v5)
  {
    ot::Message::WriteBytesFromMessage(this, 0, this, a3, a2);
  }

  return v5;
}

void ot::Message::RemoveFooter(ot::Message *this, unsigned __int16 a2)
{
  Length = ot::Message::GetLength(this);
  v2 = ot::Message::GetLength(this);
  v3 = ot::Min<unsigned short>(a2, v2);
  ot::Message::SetLength(this, Length - v3);
  IgnoreError();
}

uint64_t ot::Data<(ot::DataLengthType)1>::SetLength(uint64_t result, __int16 a2)
{
  *(result + 8) = a2;
  return result;
}

{
  return ot::Data<(ot::DataLengthType)1>::SetLength(result, a2);
}

uint64_t ot::Message::Chunk::SetBuffer(uint64_t this, const ot::Buffer *a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Message::Chunk::SetBuffer(this, a2);
}

uint64_t ot::Message::Chunk::GetBuffer(ot::Message::Chunk *this)
{
  return *(this + 2);
}

{
  return ot::Message::Chunk::GetBuffer(this);
}

uint64_t ot::Buffer::GetData(ot::Buffer *this)
{
  return this + 8;
}

{
  return ot::Buffer::GetData(this);
}

uint64_t ot::Message::ReadBytes(ot::Message *this, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a3;
  ot::Message::GetFirstChunk(this, a2, &v9, v7);
  while (ot::Data<(ot::DataLengthType)1>::GetLength(v7) > 0)
  {
    ot::Data<(ot::DataLengthType)1>::CopyBytesTo(v7, v8);
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v7);
    v8 += Length;
    ot::Message::GetNextChunk(this, &v9, v7);
  }

  return (v8 - v10);
}

void *ot::Data<(ot::DataLengthType)1>::CopyBytesTo(uint64_t a1, void *a2)
{
  return memcpy(a2, *a1, *(a1 + 8));
}

{
  return ot::Data<(ot::DataLengthType)1>::CopyBytesTo(a1, a2);
}

uint64_t ot::Message::ReadBytes(ot::Message *this, const ot::OffsetRange *a2, char *a3)
{
  Offset = ot::OffsetRange::GetOffset(a2);
  Length = ot::OffsetRange::GetLength(a2);
  return ot::Message::ReadBytes(this, Offset, a3, Length);
}

uint64_t ot::Message::Read(ot::Message *this, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  if (ot::Message::ReadBytes(this, a2, a3, a4) == a4)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t ot::Message::Read(ot::Message *this, const ot::OffsetRange *a2, char *a3, unsigned __int16 a4)
{
  v7 = 0;
  if (ot::OffsetRange::Contains(a2, a4))
  {
    Offset = ot::OffsetRange::GetOffset(a2);
    if (ot::Message::ReadBytes(this, Offset, a3, a4) != a4)
    {
      return 6;
    }
  }

  else
  {
    return 6;
  }

  return v7;
}

BOOL ot::OffsetRange::Contains(ot::OffsetRange *this, unsigned int a2)
{
  return a2 <= *(this + 1);
}

{
  return ot::OffsetRange::Contains(this, a2);
}

BOOL ot::Message::CompareBytes(ot::Message *this, unsigned __int16 a2, char *a3, unsigned __int16 a4, BOOL (*a5)(unsigned __int8, unsigned __int8))
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a4;
  v12 = a3;
  ot::Message::GetFirstChunk(this, a2, &v15, v11);
  while (ot::Data<(ot::DataLengthType)1>::GetLength(v11) > 0 && (ot::Data<(ot::DataLengthType)1>::MatchesBytesIn(v11, v12, v14, v5, v6) & 1) != 0)
  {
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    v12 += Length;
    v8 = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    v13 -= v8;
    ot::Message::GetNextChunk(this, &v15, v11);
  }

  return v13 == 0;
}

uint64_t ot::Data<(ot::DataLengthType)1>::MatchesBytesIn(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, uint64_t a4, BOOL (*a5)(unsigned __int8, unsigned __int8))
{
  return ot::DataUtils::MatchBytes(*a1, a2, *(a1 + 8), a3, a5);
}

{
  return ot::Data<(ot::DataLengthType)1>::MatchesBytesIn(a1, a2, a3, a4, a5);
}

BOOL ot::Message::CompareBytes(ot::Message *this, unsigned __int16 a2, const ot::Message *a3, unsigned __int16 a4, unsigned __int16 a5, BOOL (*a6)(unsigned __int8, unsigned __int8))
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a5;
  ot::Message::GetFirstChunk(this, a2, &v17, v14);
  while (ot::Data<(ot::DataLengthType)1>::GetLength(v14) > 0)
  {
    v12 = v19;
    v10 = v18;
    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v14);
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    if (!ot::Message::CompareBytes(v12, v10, Bytes, Length, v16))
    {
      break;
    }

    v7 = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    v18 += v7;
    v8 = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    v15 -= v8;
    ot::Message::GetNextChunk(this, &v17, v14);
  }

  return v15 == 0;
}

uint64_t ot::Message::GetFirstChunk(ot::Message *this, unsigned __int16 a2, unsigned __int16 *a3, ot::Message::MutableChunk *a4)
{
  ot::AsConst<ot::Message>();
  return ot::Message::GetFirstChunk(v4, a2, a3, a4);
}

{
  return ot::Message::GetFirstChunk(this, a2, a3, a4);
}

void ot::Message::MutableChunk::GetBytes(ot::Message::MutableChunk *this)
{
  ot::Data<(ot::DataLengthType)1>::GetBytes(this);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Message::MutableChunk::GetBytes(this);
}

uint64_t ot::Message::GetNextChunk(ot::Message *this, unsigned __int16 *a2, ot::Message::MutableChunk *a3)
{
  ot::AsConst<ot::Message>();
  return ot::Message::GetNextChunk(v3, a2, a3);
}

{
  return ot::Message::GetNextChunk(this, a2, a3);
}

ot::Message *ot::Message::Clone(ot::Message *this, unsigned __int16 a2)
{
  v34 = this;
  v33 = a2;
  appended = 0;
  v31 = 0;
  v24 = (ot::Message::IsLinkSecurityEnabled(this) & 1) != 0;
  Priority = ot::Message::GetPriority(this);
  ot::Message::Settings::Settings(v30, v24, Priority);
  Length = ot::Message::GetLength(this);
  v33 = ot::Min<unsigned short>(Length, v33);
  MessagePool = ot::Message::GetMessagePool(this);
  Type = ot::Message::GetType(this);
  Reserved = ot::Message::GetReserved(this);
  v31 = ot::MessagePool::Allocate(MessagePool, Type, Reserved, v30);
  if (v31)
  {
    appended = ot::Message::AppendBytesFromMessage(v31, this, 0, v33);
    if (!appended)
    {
      Offset = ot::Message::GetOffset(this);
      v29 = ot::Min<unsigned short>(Offset, v33);
      ot::Message::SetOffset(v31, v29);
      v15 = v31;
      SubType = ot::Message::GetSubType(this);
      ot::Message::SetSubType(v15, SubType);
      v16 = v31;
      IsLoopbackToHostAllowed = ot::Message::IsLoopbackToHostAllowed(this);
      ot::Message::SetLoopbackToHostAllowed(v16, IsLoopbackToHostAllowed);
      v17 = v31;
      Origin = ot::Message::GetOrigin(this);
      ot::Message::SetOrigin(v17, Origin);
      v18 = v31;
      Timestamp = ot::Message::GetTimestamp(this);
      ot::Message::SetTimestamp(v18, Timestamp);
      v19 = v31;
      MeshDest = ot::Message::GetMeshDest(this);
      ot::Message::SetMeshDest(v19, MeshDest);
      v20 = v31;
      PanId = ot::Message::GetPanId(this);
      ot::Message::SetPanId(v20, PanId);
      v21 = v31;
      Channel = ot::Message::GetChannel(this);
      ot::Message::SetChannel(v21, Channel);
      v22 = v31;
      RssAverager = ot::Message::GetRssAverager(this);
      ot::Message::SetRssAverager(v22, RssAverager);
      v23 = v31;
      LqiAverager = ot::Message::GetLqiAverager(this);
      ot::Message::SetLqiAverager(v23, LqiAverager);
    }
  }

  else
  {
    appended = 3;
  }

  if (appended && v31)
  {
    ot::Message::Free(v31);
    return 0;
  }

  return v31;
}

uint64_t ot::Message::SetSubType(ot::Buffer *a1, char a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 70) = *(result + 70) & 0xFFFFFF87 | (8 * (a2 & 0xF));
  return result;
}

{
  return ot::Message::SetSubType(a1, a2);
}

uint64_t ot::Message::GetSubType(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 3) & 0xF;
}

{
  return ot::Message::GetSubType(this);
}

uint64_t ot::Message::GetTimestamp(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 36);
}

{
  return ot::Message::GetTimestamp(this);
}

uint64_t ot::Message::SetMeshDest(ot::Message *this, __int16 a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 52) = a2;
  return result;
}

{
  return ot::Message::SetMeshDest(this, a2);
}

uint64_t ot::Message::GetMeshDest(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 52);
}

{
  return ot::Message::GetMeshDest(this);
}

uint64_t ot::Message::SetPanId(ot::Message *this, __int16 a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 54) = a2;
  return result;
}

{
  return ot::Message::SetPanId(this, a2);
}

uint64_t ot::Message::GetPanId(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 54);
}

{
  return ot::Message::GetPanId(this);
}

uint64_t ot::Message::SetChannel(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 56) = a2;
  return result;
}

{
  return ot::Message::SetChannel(this, a2);
}

uint64_t ot::Message::GetChannel(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 56);
}

{
  return ot::Message::GetChannel(this);
}

uint64_t ot::Message::SetRssAverager(ot::Message *this, const ot::RssAverager *a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 58) = *a2;
  return result;
}

{
  return ot::Message::SetRssAverager(this, a2);
}

uint64_t ot::Message::SetLqiAverager(ot::Message *this, const ot::LqiAverager *a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 60) = *a2;
  return result;
}

{
  return ot::Message::SetLqiAverager(this, a2);
}

uint64_t ot::Message::GetLqiAverager(ot::Message *this)
{
  return ot::Buffer::GetMetadata(this) + 60;
}

{
  return ot::Message::GetLqiAverager(this);
}

BOOL ot::BitVector<(unsigned short)64>::Get(uint64_t a1, unsigned __int16 a2)
{
  if (a2 >= 0x40u)
  {
    __assert_rtn("Get", "bit_vector.hpp", 77, "aIndex < N");
  }

  return (*(a1 + a2 / 8) & (128 >> (a2 % 8))) != 0;
}

{
  return ot::BitVector<(unsigned short)64>::Get(a1, a2);
}

uint64_t ot::BitVector<(unsigned short)64>::Set(uint64_t result, unsigned __int16 a2, char a3)
{
  if (a2 >= 0x40u)
  {
    __assert_rtn("Set", "bit_vector.hpp", 90, "aIndex < N");
  }

  if (a3)
  {
    *(result + a2 / 8) |= 128 >> (a2 % 8);
  }

  else
  {
    *(result + a2 / 8) &= ~(128 >> (a2 % 8));
  }

  return result;
}

{
  return ot::BitVector<(unsigned short)64>::Set(result, a2, a3);
}

uint64_t ot::BitVector<(unsigned short)64>::HasAny(_BYTE *a1)
{
  v3 = 0;
  for (i = a1; i != a1 + 8; ++i)
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
  return ot::BitVector<(unsigned short)64>::HasAny(a1);
}

uint64_t ot::Message::GetLinkInfo(ot::Message *this, ot::ThreadLinkInfo *a2)
{
  v4 = 0;
  if (ot::Message::IsOriginThreadNetif (this))
  {
    ot::Clearable<ot::ThreadLinkInfo>::Clear(a2);
    *a2 = ot::Message::GetPanId(this);
    *(a2 + 2) = ot::Message::GetChannel(this);
    *(a2 + 3) = ot::Message::GetAverageRss(this);
    *(a2 + 4) = ot::Message::GetAverageLqi(this);
    *(a2 + 5) = *(a2 + 5) & 0xFE | ot::Message::IsLinkSecurityEnabled(this);
    *(a2 + 5) = *(a2 + 5) & 0xFD | (2 * ot::Message::IsDstPanIdBroadcast(this));
  }

  else
  {
    return 23;
  }

  return v4;
}

void *ot::Clearable<ot::ThreadLinkInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::ThreadLinkInfo>(a1);
}

{
  return ot::Clearable<ot::ThreadLinkInfo>::Clear(a1);
}

uint64_t ot::Message::GetAverageLqi(ot::Message *this)
{
  Metadata = ot::Buffer::GetMetadata(this);
  return ot::LqiAverager::GetAverage((Metadata + 60));
}

{
  return ot::Message::GetAverageLqi(this);
}

uint64_t ot::Message::IsDstPanIdBroadcast(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 17) & 1;
}

{
  return ot::Message::IsDstPanIdBroadcast(this);
}

uint64_t ot::Message::UpdateLinkInfoFrom(ot::Message *this, const ot::ThreadLinkInfo *a2)
{
  ot::Message::SetPanId(this, *a2);
  ot::Message::SetChannel(this, *(a2 + 2));
  ot::Message::AddRss(this, *(a2 + 3));
  ot::Message::AddLqi(this, *(a2 + 4));
  ot::Message::SetLinkSecurityEnabled(this, *(a2 + 5) & 1);
  IsDstPanIdBroadcast = ot::ThreadLinkInfo::IsDstPanIdBroadcast(a2);
  Metadata = ot::Buffer::GetMetadata(this);
  *(Metadata + 70) = *(Metadata + 70) & 0xFFFDFFFF | (IsDstPanIdBroadcast << 17);
  return ot::Message::SetHopsLft(this, *(a2 + 17));
}

void ot::Message::AddRss(ot::Message *this, signed __int8 a2)
{
  Metadata = ot::Buffer::GetMetadata(this);
  ot::RssAverager::Add((Metadata + 58), a2);
  IgnoreError();
}

{
  ot::Message::AddRss(this, a2);
}

uint64_t ot::Message::AddLqi(ot::Message *this, unsigned __int8 a2)
{
  Metadata = ot::Buffer::GetMetadata(this);
  return ot::LqiAverager::Add((Metadata + 60), a2);
}

{
  return ot::Message::AddLqi(this, a2);
}

uint64_t ot::ThreadLinkInfo::IsDstPanIdBroadcast(ot::ThreadLinkInfo *this)
{
  return (*(this + 5) >> 1) & 1;
}

{
  return ot::ThreadLinkInfo::IsDstPanIdBroadcast(this);
}

uint64_t ot::Message::SetHopsLft(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 44) = a2;
  return result;
}

{
  return ot::Message::SetHopsLft(this, a2);
}

uint64_t ot::Message::SetMessageQueue(ot::Message *this, ot::MessageQueue *a2)
{
  *(ot::Buffer::GetMetadata(this) + 24) = a2;
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) &= ~0x800u;
  return result;
}

uint64_t ot::Message::SetPriorityQueue(ot::Message *this, ot::PriorityQueue *a2)
{
  *(ot::Buffer::GetMetadata(this) + 24) = a2;
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFF7FF | 0x800;
  return result;
}

ot::Message **ot::MessageQueue::Enqueue(ot::MessageQueue *a1, ot::Message *a2, char a3)
{
  if (ot::Message::IsInAQueue(a2))
  {
    __assert_rtn("Enqueue", "message.cpp", 1105, "!aMessage.IsInAQueue()");
  }

  v8 = 0;
  if (!*ot::Message::Next(a2))
  {
    v8 = *ot::Message::Prev(a2) == 0;
  }

  if (!v8)
  {
    __assert_rtn("Enqueue", "message.cpp", 1106, "(aMessage.Next() == nullptr) && (aMessage.Prev() == nullptr)");
  }

  ot::Message::SetMessageQueue(a2, a1);
  if (ot::MessageQueue::GetTail(a1))
  {
    Tail = ot::MessageQueue::GetTail(a1);
    v6 = *ot::Message::Next(Tail);
    *ot::Message::Next(a2) = v6;
    v7 = ot::MessageQueue::GetTail(a1);
    *ot::Message::Prev(a2) = v7;
    *ot::Message::Prev(v6) = a2;
    v5 = ot::MessageQueue::GetTail(a1);
    result = ot::Message::Next(v5);
    *result = a2;
    if (a3 == 1)
    {
      return ot::MessageQueue::SetTail(a1, a2);
    }
  }

  else
  {
    *ot::Message::Next(a2) = a2;
    *ot::Message::Prev(a2) = a2;
    return ot::MessageQueue::SetTail(a1, a2);
  }

  return result;
}

uint64_t ot::MessageQueue::Dequeue(ot::MessageQueue *this, ot::Message *a2)
{
  if (ot::Message::GetMessageQueue(a2) != this)
  {
    __assert_rtn("Dequeue", "message.cpp", 1136, "aMessage.GetMessageQueue() == this");
  }

  v9 = 0;
  if (*ot::Message::Next(a2))
  {
    v9 = *ot::Message::Prev(a2) != 0;
  }

  if (!v9)
  {
    __assert_rtn("Dequeue", "message.cpp", 1137, "(aMessage.Next() != nullptr) && (aMessage.Prev() != nullptr)");
  }

  if (a2 == ot::MessageQueue::GetTail(this))
  {
    Tail = ot::MessageQueue::GetTail(this);
    v3 = ot::Message::Prev(Tail);
    ot::MessageQueue::SetTail(this, *v3);
    if (a2 == ot::MessageQueue::GetTail(this))
    {
      ot::MessageQueue::SetTail(this, 0);
    }
  }

  v7 = *ot::Message::Next(a2);
  v4 = ot::Message::Prev(a2);
  *ot::Message::Next(*v4) = v7;
  v8 = *ot::Message::Prev(a2);
  v5 = ot::Message::Next(a2);
  *ot::Message::Prev(*v5) = v8;
  *ot::Message::Prev(a2) = 0;
  *ot::Message::Next(a2) = 0;
  return ot::Message::SetMessageQueue(a2, 0);
}

ot::Message *ot::MessageQueue::DequeueAndFreeAll(ot::MessageQueue *this)
{
  while (1)
  {
    result = ot::MessageQueue::GetHead(this);
    if (!result)
    {
      break;
    }

    ot::MessageQueue::DequeueAndFree(this, result);
  }

  return result;
}

uint64_t ot::MessageQueue::begin(ot::MessageQueue *this)
{
  Head = ot::MessageQueue::GetHead(this);
  _ZN2ot4Coap7Message8IteratorCI2NS_7Message8IteratorEEPS3_(&v3, Head);
  return v3;
}

{
  Head = ot::MessageQueue::GetHead(this);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

BOOL ot::MessageQueue::GetInfo(ot::MessageQueue *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = a1;
  v7 = ot::MessageQueue::begin(a1);
  v6 = ot::MessageQueue::end(v8);
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(&v7, &v6);
    if (!result)
    {
      break;
    }

    v5 = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(&v7);
    ++*v9;
    BufferCount = ot::Message::GetBufferCount(v5);
    *(v9 + 2) += BufferCount;
    Length = ot::Message::GetLength(v5);
    *(v9 + 4) += Length;
    ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(&v7);
  }

  return result;
}

uint64_t ot::MessageQueue::end(ot::MessageQueue *this)
{
  v2 = 0;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v2);
  return v2;
}

{
  ot::Coap::Message::Iterator::Iterator(&v2);
  return v2;
}

{
  return ot::MessageQueue::end(this);
}

{
  return ot::MessageQueue::end(this);
}

uint64_t ot::PriorityQueue::FindFirstNonNullTail(ot::PriorityQueue *a1, unsigned __int8 a2)
{
  v5 = 0;
  Priority = a2;
  while (!*(a1 + Priority))
  {
    Priority = ot::PriorityQueue::PrevPriority(a1, Priority);
    if (Priority == a2)
    {
      return v5;
    }
  }

  return *(a1 + Priority);
}

uint64_t ot::PriorityQueue::PrevPriority(ot::PriorityQueue *this, char a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return (a2 + 1);
  }
}

{
  return ot::PriorityQueue::PrevPriority(this, a2);
}

uint64_t ot::PriorityQueue::GetHeadForPriority(ot::PriorityQueue *a1, char a2)
{
  if (!*(a1 + a2))
  {
    return 0;
  }

  Priority = ot::PriorityQueue::PrevPriority(a1, a2);
  FirstNonNullTail = ot::PriorityQueue::FindFirstNonNullTail(a1, Priority);
  if (!FirstNonNullTail)
  {
    __assert_rtn("GetHeadForPriority", "message.cpp", 1230, "previousTail != nullptr");
  }

  return *ot::Message::Next(FirstNonNullTail);
}

void ot::PriorityQueue::FindFirstNonNullTail(uint64_t a1, unsigned __int8 a2)
{
  ot::AsConst<ot::PriorityQueue>();
  ot::PriorityQueue::FindFirstNonNullTail(v2, a2);
  ot::AsNonConst<ot::Message>();
}

{
  ot::PriorityQueue::FindFirstNonNullTail(a1, a2);
}

void ot::PriorityQueue::DequeueAndFreeAll(ot::PriorityQueue *this)
{
  while (1)
  {
    ot::PriorityQueue::GetHead(this);
    if (!v1)
    {
      break;
    }

    ot::PriorityQueue::DequeueAndFree(this, v1);
  }
}

void ot::PriorityQueue::GetHead(ot::PriorityQueue *this)
{
  ot::AsConst<ot::PriorityQueue>();
  ot::PriorityQueue::GetHead(v1);
  ot::AsNonConst<ot::Message>();
}

{
  ot::PriorityQueue::GetHead(this);
}

uint64_t ot::PriorityQueue::begin(ot::PriorityQueue *this)
{
  ot::PriorityQueue::GetHead(this);
  _ZN2ot4Coap7Message8IteratorCI2NS_7Message8IteratorEEPS3_(&v3, v1);
  return v3;
}

{
  Head = ot::PriorityQueue::GetHead(this);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

BOOL ot::PriorityQueue::GetInfo(ot::PriorityQueue *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = a1;
  v7 = ot::PriorityQueue::begin(a1);
  v6 = ot::PriorityQueue::end(v8);
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(&v7, &v6);
    if (!result)
    {
      break;
    }

    v5 = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(&v7);
    ++*v9;
    BufferCount = ot::Message::GetBufferCount(v5);
    *(v9 + 2) += BufferCount;
    Length = ot::Message::GetLength(v5);
    *(v9 + 4) += Length;
    ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(&v7);
  }

  return result;
}

uint64_t ot::PriorityQueue::end(ot::PriorityQueue *this)
{
  v2 = 0;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v2);
  return v2;
}

{
  ot::Coap::Message::Iterator::Iterator(&v2);
  return v2;
}

{
  return ot::PriorityQueue::end(this);
}

{
  return ot::PriorityQueue::end(this);
}

void *ot::LinkedListEntry<ot::Buffer>::SetNext(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Buffer>::SetNext(result, a2);
}

uint64_t ot::LinkedListEntry<ot::Buffer>::GetNext(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

{
  return ot::LinkedListEntry<ot::Buffer>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Buffer>::GetNext(a1);
}

uint64_t ot::Pool<ot::Buffer,(unsigned short)256>::GetIndexOf(uint64_t a1, uint64_t a2)
{
  return ((a2 - (a1 + 8)) / 256);
}

{
  return ot::Pool<ot::Buffer,(unsigned short)256>::GetIndexOf(a1, a2);
}

void ot::AsNonConst<ot::Message>()
{
  ;
}

{
  ot::AsNonConst<ot::Message>();
}

void ot::AsConst<ot::PriorityQueue>()
{
  ;
}

{
  ot::AsConst<ot::PriorityQueue>();
}

void ot::AsConst<ot::Message>()
{
  ;
}

{
  ot::AsConst<ot::Message>();
}

void ot::AsNonConst<unsigned char>()
{
  ;
}

{
  ot::AsNonConst<unsigned char>();
}

uint64_t ot::LqiAverager::GetAverage(ot::LqiAverager *this)
{
  return *this;
}

{
  return ot::LqiAverager::GetAverage(this);
}

void *ot::LinkedList<ot::Buffer>::Push(uint64_t *a1, void *a2)
{
  result = ot::LinkedListEntry<ot::Buffer>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Buffer>::Push(a1, a2);
}

uint64_t ot::LinkedList<ot::Buffer>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::Buffer>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::Buffer>::Pop(a1);
}

void *ot::ClearAllBytes<ot::ThreadLinkInfo>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::ThreadLinkInfo>(result);
}

uint64_t __cxx_global_var_init_6()
{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init);
}

{
  std::map<unsigned long long,ot::appPacketInfo>::map[abi:dn200100](&ot::mMatterIp6ToMeshLocalIidMap);
  return __cxa_atexit(std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::~map[abi:dn200100], &ot::mMatterIp6ToMeshLocalIidMap, &_mh_execute_header);
}

ot::Notifier *ot::Notifier::Notifier(ot::Notifier *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 1);
  ot::TaskletIn<ot::Notifier,&ot::Notifier::EmitEvents>::TaskletIn((this + 16), a2);
  v4 = (this + 32);
  do
  {
    ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(v4);
    v4 += 2;
  }

  while (v4 != (this + 96));
  for (i = (this + 32); i != (this + 96); i += 2)
  {
    ot::CallbackBase<void (*)(unsigned long long,void *)>::Clear(i);
  }

  return this;
}

{
  ot::Notifier::Notifier(this, a2);
  return this;
}

uint64_t ot::Notifier::EmitEvents(ot::Notifier *this)
{
  v34[1] = this;
  ot::OwnedPtr<ot::Message>::OwnedPtr(v34);
  result = ot::Events::IsEmpty(this);
  if ((result & 1) == 0)
  {
    v34[0] = *this;
    ot::Events::Clear(this);
    v33 = v34[0];
    ot::Notifier::LogEvents(this, v34[0]);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    v32 = v34[0];
    ot::Mle::Mle::HandleNotifierEvents(v2, v34[0]);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanServer>(this);
    v31 = v34[0];
    ot::EnergyScanServer::HandleNotifierEvents(v3, v34[0]);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(this);
    v30 = v34[0];
    ot::MeshCoP::JoinerRouter::HandleNotifierEvents(v4, v34[0]);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
    v29 = v34[0];
    ot::BackboneRouter::Manager::HandleNotifierEvents(v5, v34[0]);
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(this);
    v28 = v34[0];
    ot::ChildSupervisor::HandleNotifierEvents(v6, v34[0]);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::DatasetUpdater>(this);
    v27 = v34[0];
    ot::MeshCoP::DatasetUpdater::HandleNotifierEvents(v7, v34[0]);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
    v26 = v34[0];
    ot::NetworkData::Notifier::HandleNotifierEvents(v8, v34[0]);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceSender>(this);
    v25 = v34[0];
    ot::AnnounceSender::HandleNotifierEvents(v9, v34[0]);
    ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
    v24 = v34[0];
    ot::MeshCoP::BorderAgent::HandleNotifierEvents();
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(this);
    v23 = v34[0];
    ot::MlrManager::HandleNotifierEvents(v10, v34[0]);
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
    v22 = v34[0];
    ot::DuaManager::HandleNotifierEvents(v11, v34[0]);
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::Slaac>(this);
    v21 = v34[0];
    ot::Utils::Slaac::HandleNotifierEvents(v12, v34[0]);
    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(this);
    v20 = v34[0];
    result = ot::Utils::HistoryTracker::HandleNotifierEvents(v13, v34[0]);
    v19 = this + 32;
    v18 = this + 32;
    v17 = this + 96;
    while (v18 != v17)
    {
      v16[1] = v18;
      v14 = v18;
      v16[0] = ot::Events::GetAsFlags(v34);
      result = ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned long long>(v14, v16);
      v18 += 16;
    }
  }

  return result;
}

ot::InstanceLocator *ot::TaskletIn<ot::Notifier,&ot::Notifier::EmitEvents>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::Notifier,&ot::Notifier::EmitEvents>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::Notifier,&ot::Notifier::EmitEvents>::HandleTasklet);
  return a1;
}

void *ot::CallbackBase<void (*)(unsigned long long,void *)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned long long,void *)>::Clear(result);
}

uint64_t ot::Notifier::RegisterCallback(ot::Notifier *this, void (*a2)(unint64_t, void *), uint64_t a3)
{
  v7 = 0;
  v6 = 0;
  if (a2)
  {
    v5 = this + 32;
    v4 = this + 96;
    while (v5 != v4)
    {
      if (ot::CallbackBase<void (*)(unsigned long long,void *)>::Matches(v5, a2, a3))
      {
        return 24;
      }

      if (!ot::CallbackBase<void (*)(unsigned long long,void *)>::IsSet(v5) && !v6)
      {
        v6 = v5;
      }

      v5 += 16;
    }

    if (v6)
    {
      ot::CallbackBase<void (*)(unsigned long long,void *)>::Set(v6, a2, a3);
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

BOOL ot::CallbackBase<void (*)(unsigned long long,void *)>::Matches(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (*a1 == a2)
  {
    return a1[1] == a3;
  }

  return v4;
}

{
  return ot::CallbackBase<void (*)(unsigned long long,void *)>::Matches(a1, a2, a3);
}

BOOL ot::CallbackBase<void (*)(unsigned long long,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(unsigned long long,void *)>::IsSet(a1);
}

void *ot::CallbackBase<void (*)(unsigned long long,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned long long,void *)>::Set(result, a2, a3);
}

uint64_t ot::Notifier::RemoveCallback(uint64_t this, void (*a2)(unint64_t, void *), uint64_t a3)
{
  v3 = this;
  if (a2)
  {
    for (i = (this + 32); i != (v3 + 96); i += 2)
    {
      this = ot::CallbackBase<void (*)(unsigned long long,void *)>::Matches(i, a2, a3);
      if (this)
      {
        this = ot::CallbackBase<void (*)(unsigned long long,void *)>::Clear(i);
      }
    }
  }

  return this;
}

void ot::Notifier::Signal(void *a1, uint64_t a2)
{
  ot::Events::Add(a1, a2);
  ot::Events::Add(a1 + 1, a2);
  ot::Tasklet::Post((a1 + 2));
}

void *ot::Events::Add(void *result, uint64_t a2)
{
  *result |= a2;
  return result;
}

{
  return ot::Events::Add(result, a2);
}

void ot::Notifier::SignalIfFirst(void *a1, uint64_t a2)
{
  if (!ot::Notifier::HasSignaled(a1, a2))
  {
    ot::Notifier::Signal(a1, a2);
  }
}

BOOL ot::Notifier::HasSignaled(uint64_t a1, uint64_t a2)
{
  return ot::Events::Contains((a1 + 8), a2);
}

{
  return ot::Notifier::HasSignaled(a1, a2);
}

BOOL ot::Events::IsEmpty(ot::Events *this)
{
  return *this == 0;
}

{
  return ot::Events::IsEmpty(this);
}

void *ot::Events::Clear(void *this)
{
  *this = 0;
  return this;
}

{
  return ot::Events::Clear(this);
}

void ot::Notifier::LogEvents(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  AsFlags = ot::Events::GetAsFlags(&v30);
  v28 = 0;
  v27 = 0;
  ot::String<(unsigned short)95>::String(v31);
  for (i = 0; i < 0x40uLL && AsFlags; ++i)
  {
    if ((AsFlags & (1 << i)) != 0)
    {
      if (ot::StringWriter::GetLength(v31) >= 70)
      {
        v23 = ot::Events::GetAsFlags(&v30);
        v2 = "... ";
        if ((v27 & 1) == 0)
        {
          v2 = "[";
        }

        v24 = v2;
        v3 = ot::String<(unsigned short)95>::AsCString(v31);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Notifier", "StateChanged (0x%llx) %s%s ...", v4, v5, v6, v7, v8, v9, v23, v24, v3);
        ot::StringWriter::Clear(v31);
        v27 = 1;
        v28 = 0;
      }

      v10 = " ";
      if ((v28 & 1) == 0)
      {
        v10 = "";
      }

      v22 = v10;
      v11 = ot::Notifier::EventToString(a1, 1 << i);
      ot::StringWriter::Append(v31, "%s%s", v22, v11);
      v28 = 1;
      AsFlags ^= 1 << i;
    }
  }

  v20 = ot::Events::GetAsFlags(&v30);
  v12 = "... ";
  if ((v27 & 1) == 0)
  {
    v12 = "[";
  }

  v21 = v12;
  v13 = ot::String<(unsigned short)95>::AsCString(v31);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Notifier", "StateChanged (0x%llx) %s%s]", v14, v15, v16, v17, v18, v19, v20, v21, v13);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanServer>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::EnergyScanServer>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanServer>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::JoinerRouter>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::DatasetUpdater>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::DatasetUpdater>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::DatasetUpdater>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceSender>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::AnnounceSender>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceSender>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::BorderAgent>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::Slaac>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Utils::Slaac>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::Slaac>(a1);
}

void *ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned long long>(void *result, void *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned long long>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned long long>(result, a2);
}

uint64_t ot::Events::GetAsFlags(ot::Events *this)
{
  return *this;
}

{
  return ot::Events::GetAsFlags(this);
}

char *ot::String<(unsigned short)95>::String(char *a1)
{
  ot::String<(unsigned short)95>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, a1 + 12, 95);
  return a1;
}

uint64_t ot::StringWriter::GetLength(ot::StringWriter *this)
{
  return *(this + 4);
}

{
  return ot::StringWriter::GetLength(this);
}

uint64_t ot::String<(unsigned short)95>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)95>::AsCString(a1);
}

char *ot::Notifier::EventToString(uint64_t a1, uint64_t a2)
{
  v4 = "(unknown)";
  for (i = 0; i < ot::GetArrayLength<char const*,(unsigned short)35>(); ++i)
  {
    if (a2 == 1 << i)
    {
      return ot::Notifier::EventToString(ot::Event)const::kEventStrings[i];
    }
  }

  return v4;
}

uint64_t ot::GetArrayLength<char const*,(unsigned short)35>()
{
  return 35;
}

{
  return ot::GetArrayLength<char const*,(unsigned short)35>();
}

uint64_t ot::Instance::Get<ot::EnergyScanServer>(uint64_t a1)
{
  return a1 + 154672;
}

{
  return ot::Instance::Get<ot::EnergyScanServer>(a1);
}

uint64_t ot::Instance::Get<ot::MeshCoP::DatasetUpdater>(uint64_t a1)
{
  return a1 + 167040;
}

{
  return ot::Instance::Get<ot::MeshCoP::DatasetUpdater>(a1);
}

uint64_t ot::Instance::Get<ot::AnnounceSender>(uint64_t a1)
{
  return a1 + 167064;
}

{
  return ot::Instance::Get<ot::AnnounceSender>(a1);
}

uint64_t ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned long long>(uint64_t a1, void *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned long long>(a1, a2);
}

void ot::SettingsBase::NetworkInfo::Log(ot::SettingsBase::NetworkInfo *a1, unsigned __int8 a2)
{
  v36 = ot::SettingsBase::ActionToString(a2);
  Rloc16 = ot::SettingsBase::NetworkInfo::GetRloc16(a1, v36);
  ExtAddress = ot::SettingsBase::NetworkInfo::GetExtAddress(a1);
  ot::Mac::ExtAddress::ToString(ExtAddress, v47);
  v38 = ot::String<(unsigned short)17>::AsCString(v47);
  Role = ot::SettingsBase::NetworkInfo::GetRole(a1);
  v39 = ot::Mle::RoleToString(Role);
  DeviceMode = ot::SettingsBase::NetworkInfo::GetDeviceMode(a1);
  Version = ot::SettingsBase::NetworkInfo::GetVersion(a1, v4);
  KeySequence = ot::SettingsBase::NetworkInfo::GetKeySequence(a1, v5);
  v7 = ot::ToUlong(KeySequence);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s NetworkInfo {rloc:0x%04x, extaddr:%s, role:%s, mode:0x%02x, version:%u, keyseq:0x%lx, ...", v8, v9, v10, v11, v12, v13, v36, Rloc16, v38, v39, DeviceMode, Version, v7);
  WasChildStatus = ot::SettingsBase::NetworkInfo::GetWasChildStatus(a1);
  v21 = "TRUE";
  if ((WasChildStatus & 1) == 0)
  {
    v21 = "FALSE";
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "... wasChild:%s", v14, v15, v16, v17, v18, v19, v21);
  PreviousPartitionId = ot::SettingsBase::NetworkInfo::GetPreviousPartitionId(a1, v22);
  v43 = ot::ToUlong(PreviousPartitionId);
  MleFrameCounter = ot::SettingsBase::NetworkInfo::GetMleFrameCounter(a1, v24);
  v44 = ot::ToUlong(MleFrameCounter);
  MacFrameCounter = ot::SettingsBase::NetworkInfo::GetMacFrameCounter(a1, v26);
  v45 = ot::ToUlong(MacFrameCounter);
  MeshLocalIid = ot::SettingsBase::NetworkInfo::GetMeshLocalIid(a1);
  ot::Ip6::InterfaceIdentifier::ToString(MeshLocalIid, v46);
  v29 = ot::String<(unsigned short)17>::AsCString(v46);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "... pid:0x%lx, mlecntr:0x%lx, maccntr:0x%lx, mliid:%s}", v30, v31, v32, v33, v34, v35, v43, v44, v45, v29);
}

uint64_t ot::SettingsBase::NetworkInfo::GetRloc16(ot::SettingsBase::NetworkInfo *this, unsigned __int16 a2)
{
  return ot::LittleEndian::HostSwap16(*(this + 1));
}

{
  return ot::SettingsBase::NetworkInfo::GetRloc16(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::GetExtAddress(ot::SettingsBase::NetworkInfo *this)
{
  return this + 20;
}

{
  return ot::SettingsBase::NetworkInfo::GetExtAddress(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetRole(ot::SettingsBase::NetworkInfo *this)
{
  return *this;
}

{
  return ot::SettingsBase::NetworkInfo::GetRole(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetDeviceMode(ot::SettingsBase::NetworkInfo *this)
{
  return *(this + 1);
}

{
  return ot::SettingsBase::NetworkInfo::GetDeviceMode(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetVersion(ot::SettingsBase::NetworkInfo *this, unsigned __int16 a2)
{
  return ot::LittleEndian::HostSwap16(*(this + 18));
}

{
  return ot::SettingsBase::NetworkInfo::GetVersion(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::GetKeySequence(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  return ot::LittleEndian::HostSwap32(*(this + 1));
}

{
  return ot::SettingsBase::NetworkInfo::GetKeySequence(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::GetWasChildStatus(ot::SettingsBase::NetworkInfo *this)
{
  return *(this + 46) & 1;
}

{
  return ot::SettingsBase::NetworkInfo::GetWasChildStatus(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetPreviousPartitionId(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  return ot::LittleEndian::HostSwap32(*(this + 4));
}

{
  return ot::SettingsBase::NetworkInfo::GetPreviousPartitionId(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::GetMleFrameCounter(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  return ot::LittleEndian::HostSwap32(*(this + 2));
}

{
  return ot::SettingsBase::NetworkInfo::GetMleFrameCounter(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::GetMacFrameCounter(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  return ot::LittleEndian::HostSwap32(*(this + 3));
}

{
  return ot::SettingsBase::NetworkInfo::GetMacFrameCounter(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::GetMeshLocalIid(ot::SettingsBase::NetworkInfo *this)
{
  return this + 28;
}

{
  return ot::SettingsBase::NetworkInfo::GetMeshLocalIid(this);
}

void ot::SettingsBase::ParentInfo::Log(ot::SettingsBase::ParentInfo *a1, unsigned __int8 a2)
{
  v16 = a1;
  v15 = a2;
  v11 = a1;
  v12 = ot::SettingsBase::ActionToString(a2);
  ExtAddress = ot::SettingsBase::ParentInfo::GetExtAddress(v11);
  v10 = v17;
  ot::Mac::ExtAddress::ToString(ExtAddress, v17);
  v13 = ot::String<(unsigned short)17>::AsCString(v17);
  Version = ot::SettingsBase::ParentInfo::GetVersion(v11, v13);
  LastHeardTime = ot::SettingsBase::ParentInfo::GetLastHeardTime(v11);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s ParentInfo {extaddr:%s, version:%u lastHeard:%llu}", v4, v5, v6, v7, v8, v9, v12, v13, Version, LastHeardTime);
}

uint64_t ot::SettingsBase::ParentInfo::GetExtAddress(ot::SettingsBase::ParentInfo *this)
{
  return this + 12;
}

{
  return ot::SettingsBase::ParentInfo::GetExtAddress(this);
}

uint64_t ot::SettingsBase::ParentInfo::GetVersion(ot::SettingsBase::ParentInfo *this, unsigned __int16 a2)
{
  return ot::LittleEndian::HostSwap16(*(this + 10));
}

{
  return ot::SettingsBase::ParentInfo::GetVersion(this, a2);
}

uint64_t ot::SettingsBase::ParentInfo::GetLastHeardTime(ot::SettingsBase::ParentInfo *this)
{
  return *(this + 4);
}

{
  return ot::SettingsBase::ParentInfo::GetLastHeardTime(this);
}

void ot::SettingsBase::ChildInfo::Log(ot::SettingsBase::ChildInfo *a1, unsigned __int8 a2)
{
  v13 = ot::SettingsBase::ActionToString(a2);
  Rloc16 = ot::SettingsBase::ChildInfo::GetRloc16(a1, v13);
  ot::SettingsBase::ChildInfo::GetExtAddress(a1);
  ot::Mac::ExtAddress::ToString(v2, v18);
  v15 = ot::String<(unsigned short)17>::AsCString(v18);
  Timeout = ot::SettingsBase::ChildInfo::GetTimeout(a1, v15);
  v16 = ot::ToUlong(Timeout);
  Mode = ot::SettingsBase::ChildInfo::GetMode(a1);
  Version = ot::SettingsBase::ChildInfo::GetVersion(a1, v4);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s ChildInfo {rloc:0x%04x, extaddr:%s, timeout:%lu, mode:0x%02x, version:%u}", v6, v7, v8, v9, v10, v11, v13, Rloc16, v15, v16, Mode, Version);
}

uint64_t ot::SettingsBase::ChildInfo::GetRloc16(ot::SettingsBase::ChildInfo *this, unsigned __int16 a2)
{
  return ot::LittleEndian::HostSwap16(*(this + 6));
}

{
  return ot::SettingsBase::ChildInfo::GetRloc16(this, a2);
}

void ot::SettingsBase::ChildInfo::GetExtAddress(ot::SettingsBase::ChildInfo *this)
{
  ;
}

{
  ot::SettingsBase::ChildInfo::GetExtAddress(this);
}

uint64_t ot::SettingsBase::ChildInfo::GetTimeout(ot::SettingsBase::ChildInfo *this, unsigned int a2)
{
  return ot::LittleEndian::HostSwap32(*(this + 2));
}

{
  return ot::SettingsBase::ChildInfo::GetTimeout(this, a2);
}

uint64_t ot::SettingsBase::ChildInfo::GetMode(ot::SettingsBase::ChildInfo *this)
{
  return *(this + 14);
}

{
  return ot::SettingsBase::ChildInfo::GetMode(this);
}

uint64_t ot::SettingsBase::ChildInfo::GetVersion(ot::SettingsBase::ChildInfo *this, unsigned __int16 a2)
{
  return ot::LittleEndian::HostSwap16(*(this + 15));
}

{
  return ot::SettingsBase::ChildInfo::GetVersion(this, a2);
}

void ot::SettingsBase::DadInfo::Log(ot::SettingsBase::DadInfo *a1, unsigned __int8 a2)
{
  v10 = ot::SettingsBase::ActionToString(a2);
  DadCounter = ot::SettingsBase::DadInfo::GetDadCounter(a1);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s DadInfo {DadCounter:%2d}", v3, v4, v5, v6, v7, v8, v10, DadCounter);
}

uint64_t ot::SettingsBase::DadInfo::GetDadCounter(ot::SettingsBase::DadInfo *this)
{
  return *this;
}

{
  return ot::SettingsBase::DadInfo::GetDadCounter(this);
}

void ot::SettingsBase::BorderAgentId::Log(ot::SettingsBase::BorderAgentId *a1, unsigned __int8 a2)
{
  v13 = a1;
  v12 = a2;
  ot::StringWriter::StringWriter(v11, v14, 33);
  ot::SettingsBase::BorderAgentId::GetId(a1);
  ot::StringWriter::AppendHexBytes(v11, v2, 16);
  v3 = ot::SettingsBase::ActionToString(v12);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s BorderAgentId {id:%s}", v4, v5, v6, v7, v8, v9, v3, v14);
}

void ot::SettingsBase::BorderAgentId::GetId(ot::SettingsBase::BorderAgentId *this)
{
  ;
}

{
  ;
}

{
  ot::SettingsBase::BorderAgentId::GetId(this);
}

{
  ot::SettingsBase::BorderAgentId::GetId(this);
}

uint64_t ot::SettingsBase::KeyToString(unsigned __int16 a1)
{
  if (a1 > 0x11u)
  {
    __assert_rtn("KeyToString", "settings.cpp", 200, "aKey <= kLastKey");
  }

  return *(&ot::SettingsBase::KeyToString(ot::SettingsBase::Key)::kKeyStrings + a1);
}

uint64_t ot::Settings::Init(ot::Settings *this)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  Array = ot::GetArrayLength<unsigned short,(unsigned short)3>();
  return ot::SettingsDriver::Init(v3, ot::Settings::kSensitiveKeys, Array);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::SettingsDriver>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
}

uint64_t ot::SettingsDriver::Init(ot::SettingsDriver *this, const unsigned __int16 *a2, __int16 a3)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsInit(InstancePtr, a2, a3);
}

{
  return ot::SettingsDriver::Init(this, a2, a3);
}

uint64_t ot::GetArrayLength<unsigned short,(unsigned short)3>()
{
  return 3;
}

{
  return ot::GetArrayLength<unsigned short,(unsigned short)3>();
}

uint64_t ot::SettingsDriver::Deinit(ot::SettingsDriver *this)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsDeinit(InstancePtr);
}

{
  return ot::SettingsDriver::Deinit(this);
}

void ot::Settings::Wipe(ot::Settings *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  ot::SettingsDriver::Wipe(v1);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "Wiped all info", v2, v3, v4, v5, v6, v7);
}

uint64_t ot::SettingsDriver::Wipe(ot::SettingsDriver *this)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsWipe(InstancePtr);
}

{
  return ot::SettingsDriver::Wipe(this);
}

uint64_t ot::Settings::KeyForDatasetType(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void ot::Settings::SaveOperationalDataset(ot::InstanceLocator *a1, char a2, ot::MeshCoP::Dataset *a3)
{
  v9 = ot::Settings::KeyForDatasetType(a2);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  ot::MeshCoP::Dataset::GetBytes(a3);
  v6 = v3;
  Length = ot::MeshCoP::Dataset::GetLength(a3);
  v8 = ot::SettingsDriver::Set(v7, v9, v6, Length);
  ot::Settings::Log(1u, v8, v9, 0);
  if (v8)
  {
    __assert_rtn("SaveOperationalDataset", "settings.cpp", 240, "false");
  }
}

uint64_t ot::SettingsDriver::Set(ot::SettingsDriver *this, __int16 a2, const void *a3, unsigned __int16 a4)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsSet(InstancePtr, a2, a3, a4);
}

{
  return ot::SettingsDriver::Set(this, a2, a3, a4);
}

void ot::MeshCoP::Dataset::GetBytes(ot::MeshCoP::Dataset *this)
{
  ;
}

{
  ;
}

{
  ot::MeshCoP::Dataset::GetBytes(this);
}

{
  ot::MeshCoP::Dataset::GetBytes(this);
}

uint64_t ot::MeshCoP::Dataset::GetLength(ot::MeshCoP::Dataset *this)
{
  return *(this + 254);
}

{
  return ot::MeshCoP::Dataset::GetLength(this);
}

void ot::Settings::Log(unsigned __int8 a1, int a2, unsigned __int16 a3, ot::SettingsBase::NetworkInfo *a4)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v30 = ot::ErrorToString(a2);
  v31 = v36;
  v4 = ot::SettingsBase::KeyToString(v34);
  ot::Logger::LogAtLevel<(ot::LogLevel)2>("Settings", "%s: Error: %s, action: %hhu, key: %s", v5, v6, v7, v8, v9, v10, "Log", v30, v36, v4);
  if (v35)
  {
    v32 = "";
    v29 = v36;
    if (v36)
    {
      if (v29 != 2 && v29 != 1)
      {
        switch(v29)
        {
          case 3:
            if (v35 == 23)
            {
              return;
            }

            v32 = "deleting";
            break;
          case 4:
            v32 = "adding";
            break;
          case 5:
            if (v35 == 23)
            {
              return;
            }

            v32 = "removing";
            break;
          case 6:
            if (v35 == 23)
            {
              return;
            }

            v32 = "deleting all";
            break;
        }
      }

      else
      {
        v32 = "saving";
      }

      v27 = ot::ErrorToString(v35);
      v28 = v32;
      v11 = ot::SettingsBase::KeyToString(v34);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("Settings", "Error %s %s %s", v12, v13, v14, v15, v16, v17, v27, v28, v11);
    }
  }

  else
  {
    if (v33)
    {
      v26 = v34;
      if (v34 == 3)
      {
        ot::SettingsBase::NetworkInfo::Log(v33, v36);
      }

      else
      {
        switch(v26)
        {
          case 4:
            ot::SettingsBase::ParentInfo::Log(v33, v36);
            break;
          case 5:
            ot::SettingsBase::ChildInfo::Log(v33, v36);
            break;
          case 8:
            ot::SettingsBase::DadInfo::Log(v33, v36);
            break;
          case 17:
            ot::SettingsBase::BorderAgentId::Log(v33, v36);
            break;
          default:
            v33 = 0;
            break;
        }
      }
    }

    if (!v33)
    {
      v25 = ot::SettingsBase::ActionToString(v36);
      v18 = ot::SettingsBase::KeyToString(v34);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s %s", v19, v20, v21, v22, v23, v24, v25, v18);
    }
  }
}

uint64_t ot::Settings::ReadOperationalDataset(ot::InstanceLocator *a1, char a2, ot::MeshCoP::Dataset *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 254;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  v5 = ot::Settings::KeyForDatasetType(v10);
  ot::MeshCoP::Dataset::GetBytes(v9);
  v8 = ot::SettingsDriver::Get(v6, v5, v3, &v7);
  if (!v8)
  {
    if (v7 <= 0xFEu)
    {
      ot::MeshCoP::Dataset::SetLength(v9, v7);
    }

    else
    {
      v8 = 23;
    }
  }

  if (v8 == 12)
  {
    __assert_rtn("ReadOperationalDataset", "settings.cpp", 254, "error != kErrorNotImplemented");
  }

  return v8;
}

uint64_t ot::SettingsDriver::Get(ot::SettingsDriver *this, unsigned __int16 a2, void *a3, unsigned __int16 *a4)
{
  return ot::SettingsDriver::Get(this, a2, 0, a3, a4);
}

{
  return ot::SettingsDriver::Get(this, a2, a3, a4);
}

uint64_t ot::MeshCoP::Dataset::SetLength(uint64_t this, char a2)
{
  *(this + 254) = a2;
  return this;
}

{
  return ot::MeshCoP::Dataset::SetLength(this, a2);
}

void ot::Settings::DeleteOperationalDataset(ot::InstanceLocator *a1, char a2)
{
  v5 = ot::Settings::KeyForDatasetType(a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  v4 = ot::SettingsDriver::Delete(v2, v5, -1);
  ot::Settings::Log(3u, v4, v5, 0);
  if (v4 == 12)
  {
    __assert_rtn("DeleteOperationalDataset", "settings.cpp", 264, "error != kErrorNotImplemented");
  }
}

uint64_t ot::SettingsDriver::Delete(ot::SettingsDriver *this, __int16 a2, int a3)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsDelete(InstancePtr, a2, a3);
}

{
  return ot::SettingsDriver::Delete(this, a2, a3);
}

uint64_t ot::Settings::AddChildInfo(ot::Settings *this, const ot::SettingsBase::ChildInfo *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  v4 = ot::SettingsDriver::Add(v2, 5, a2, 0x11u);
  ot::Settings::Log(4u, v4, 5u, a2);
  return v4;
}

uint64_t ot::SettingsDriver::Add(ot::SettingsDriver *this, __int16 a2, const void *a3, unsigned __int16 a4)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsAdd(InstancePtr, a2, a3, a4);
}

{
  return ot::SettingsDriver::Add(this, a2, a3, a4);
}

uint64_t ot::Settings::DeleteAllChildInfo(ot::Settings *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  v3 = ot::SettingsDriver::Delete(v1, 5, -1);
  ot::Settings::Log(6u, v3, 5u, 0);
  return v3;
}

ot::Settings::ChildInfoIterator *ot::Settings::ChildInfoIterator::ChildInfoIterator(ot::Settings::ChildInfoIterator *this, ot::Instance *a2)
{
  ot::SettingsBase::SettingsBase(this, a2);
  *(this + 9) = 0;
  *(this + 20) = 0;
  ot::Settings::ChildInfoIterator::Read(this);
  return this;
}

{
  ot::Settings::ChildInfoIterator::ChildInfoIterator(this, a2);
  return this;
}

void ot::Settings::ChildInfoIterator::Read(ot::Settings::ChildInfoIterator *this)
{
  v5 = this;
  v4 = 17;
  ot::SettingsBase::ChildInfo::Init(this);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  v3 = ot::SettingsDriver::Get(v1, 5u, *(this + 9), this, &v4);
  ot::Settings::Log(0, v3, 5u, this);
  *(this + 20) = v3 != 0;
}

void ot::Settings::ChildInfoIterator::Advance(uint64_t this)
{
  if ((*(this + 20) & 1) == 0)
  {
    ++*(this + 18);
    ot::Settings::ChildInfoIterator::Read(this);
  }
}

uint64_t ot::Settings::ChildInfoIterator::Delete(ot::Settings::ChildInfoIterator *this)
{
  if (*(this + 20))
  {
    v4 = 13;
    ot::Settings::Log(5u, 13, 5u, this);
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
    v4 = ot::SettingsDriver::Delete(v1, 5, *(this + 9));
    ot::Settings::Log(5u, v4, 5u, this);
  }

  return v4;
}

uint64_t ot::SettingsBase::ChildInfo::Init(ot::SettingsBase::ChildInfo *this)
{
  ot::ClearAllBytes<ot::SettingsBase::ChildInfo>(this);
  return ot::SettingsBase::ChildInfo::SetVersion(this, 2u);
}

{
  return ot::SettingsBase::ChildInfo::Init(this);
}

uint64_t ot::SettingsDriver::Get(ot::SettingsDriver *this, unsigned __int16 a2, int a3, void *a4, unsigned __int16 *a5)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsGet(InstancePtr, a2, a3, a4, a5);
}

{
  return ot::SettingsDriver::Get(this, a2, a3, a4, a5);
}

uint64_t ot::Settings::ReadEntry(ot::InstanceLocator *a1, unsigned __int16 a2, void *a3, unsigned __int16 a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = a4;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  v7 = ot::SettingsDriver::Get(v4, v10, v9, &v6);
  ot::Settings::Log(0, v7, v10, v9);
  return v7;
}

uint64_t ot::Settings::SaveEntry(ot::InstanceLocator *a1, unsigned __int16 a2, ot::SettingsBase::NetworkInfo *a3, uint64_t a4, unsigned __int16 a5)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  *&__n[1] = a4;
  __n[0] = a5;
  v10 = 0;
  v9 = a5;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  if (!ot::SettingsDriver::Get(v5, v13, *&__n[1], &v9) && v9 == __n[0] && !memcmp(v12, *&__n[1], __n[0]))
  {
    ot::Settings::Log(2u, v10, v13, v12);
  }

  else
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
    v10 = ot::SettingsDriver::Set(v6, v13, v12, __n[0]);
    ot::Settings::Log(1u, v10, v13, v12);
  }

  return v10;
}

uint64_t ot::Settings::DeleteEntry(ot::InstanceLocator *a1, unsigned __int16 a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  v4 = ot::SettingsDriver::Delete(v2, a2, -1);
  ot::Settings::Log(3u, v4, a2, 0);
  return v4;
}

uint64_t ot::LittleEndian::HostSwap16(uint64_t this)
{
  return this;
}

{
  return ot::LittleEndian::HostSwap16(this);
}

uint64_t ot::LittleEndian::HostSwap32(uint64_t this)
{
  return this;
}

{
  return ot::LittleEndian::HostSwap32(this);
}

void *ot::SettingsDriver::GetInstancePtr(ot::SettingsDriver *this)
{
  return ot::InstanceLocator::GetInstance(this);
}

{
  return ot::SettingsDriver::GetInstancePtr(this);
}

uint64_t ot::ClearAllBytes<ot::SettingsBase::ChildInfo>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::SettingsBase::ChildInfo>(result);
}

uint64_t ot::SettingsBase::ChildInfo::SetVersion(ot::SettingsBase::ChildInfo *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 15) = result;
  return result;
}

{
  return ot::SettingsBase::ChildInfo::SetVersion(this, a2);
}

uint64_t ot::Instance::Get<ot::SettingsDriver>(uint64_t a1)
{
  return a1 + 201;
}

{
  return ot::Instance::Get<ot::SettingsDriver>(a1);
}

uint64_t ot::StringLength(ot *this, const char *a2)
{
  v4 = 0;
  if (this)
  {
    while (1)
    {
      v3 = 0;
      if (v4 < a2)
      {
        v3 = *(this + v4) != 0;
      }

      if (!v3)
      {
        break;
      }

      ++v4;
    }
  }

  return v4;
}

ot *ot::StringFind(ot *this, const char *a2)
{
  v3 = 0;
  while (*this)
  {
    if (*this == a2)
    {
      return this;
    }

    this = (this + 1);
  }

  return v3;
}

const char *ot::StringFind(const char *a1, char *a2, char a3)
{
  v7 = 0;
  v6 = strlen(a1);
  v5 = strlen(a2);
  if (v5 <= v6)
  {
    for (i = 0; i <= v6 - v5; ++i)
    {
      {
        return &a1[i];
      }
    }
  }

  return v7;
}

uint64_t ot::anonymous namespace::Match(char *a1, char *a2, char a3)
{
  v12 = a2;
  v11 = 0;
  if (a3)
  {
    if (a3 == 1)
    {
      while (*v12)
      {
        v5 = a1++;
        v10 = ot::ToLowercase(*v5, a2);
        v6 = v12++;
        if (v10 != ot::ToLowercase(*v6, v7))
        {
          return v11;
        }
      }
    }
  }

  else
  {
    while (*v12)
    {
      v3 = a1++;
      v4 = v12++;
      if (*v3 != *v4)
      {
        return v11;
      }
    }
  }

  if (*a1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

BOOL ot::StringEndsWith(ot *this, const char *a2)
{
  v5 = a2;
  v4 = strlen(this);
  v3 = 0;
  if (v4)
  {
    return *(this + v4 - 1) == v5;
  }

  return v3;
}

BOOL ot::StringEndsWith(const char *a1, char *a2, char a3)
{
  v6 = strlen(a1);
  v5 = strlen(a2);
  v4 = 0;
  if (v5)
  {
    v4 = 0;
    if (v6 >= v5)
    {
    }
  }

  return v4;
}

uint64_t ot::StringCopy(_BYTE *a1, unsigned __int16 a2, ot *a3, char a4)
{
  v7 = 0;
  if (a3)
  {
    v6 = ot::StringLength(a3, a2);
    if (v6 < a2)
    {
      if (a4 && a4 == 1 && (ot::IsValidUtf8String(a3, v4) & 1) == 0)
      {
        return 6;
      }

      else
      {
        memcpy(a1, a3, v6 + 1);
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v7;
}

uint64_t ot::IsValidUtf8String(ot *this, const char *a2)
{
  v2 = strlen(this);
  return ot::IsValidUtf8String(this, v2);
}

{
  _c_1 = 1;
  v4 = 0;
  while (v4 < a2)
  {
    _c = *(this + v4++);
    if ((_c & 0x80) != 0)
    {
      if ((_c & 0x40) == 0)
      {
        _c_1 = 0;
        return _c_1 & 1;
      }

      if ((_c & 0x20) == 0)
      {
        v5 = 1;
        goto LABEL_16;
      }

      if ((_c & 0x10) == 0)
      {
        v5 = 2;
        goto LABEL_16;
      }

      if ((_c & 8) != 0)
      {
        _c_1 = 0;
        return _c_1 & 1;
      }

      v5 = 3;
LABEL_16:
      while (v5--)
      {
        if (v4 >= a2)
        {
          _c_1 = 0;
          return _c_1 & 1;
        }

        _ca = *(this + v4++);
        if ((_ca & 0xC0) != 0x80)
        {
          _c_1 = 0;
          return _c_1 & 1;
        }
      }
    }

    else if (iscntrl(_c))
    {
      _c_1 = 0;
      return _c_1 & 1;
    }
  }

  return _c_1 & 1;
}

uint64_t ot::StringParseUint8(ot *this, const char **a2, unsigned __int8 *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 6;
  v6 = *this;
  v5 = 0;
  v4 = 0;
  while (!ot::ParseDigit(*v6, &v4, a3))
  {
    v5 *= 10;
    v5 += v4;
    if (v5 > v8)
    {
      return 6;
    }

    v7 = 0;
    ++v6;
  }

  *v10 = v6;
  *v9 = v5;
  return v7;
}

uint64_t ot::ParseDigit(ot *this, _BYTE *a2, unsigned __int8 *a3)
{
  v6 = this;
  v4 = 0;
  if (ot::IsDigit(this))
  {
    *a2 = v6 - 48;
  }

  else
  {
    return 7;
  }

  return v4;
}

_BYTE *ot::StringConvertToLowercase(_BYTE *this, char *a2)
{
  for (i = this; *i; ++i)
  {
    this = ot::ToLowercase(*i, a2);
    *i = this;
  }

  return this;
}

uint64_t ot::ToLowercase(ot *this, char a2)
{
  v3 = this;
  if (ot::IsUppercase(this))
  {
    v3 += 32;
  }

  return v3;
}

_BYTE *ot::StringConvertToUppercase(_BYTE *this, char *a2)
{
  for (i = this; *i; ++i)
  {
    this = ot::ToUppercase(*i, a2);
    *i = this;
  }

  return this;
}

uint64_t ot::ToUppercase(ot *this, char a2)
{
  v3 = this;
  if (ot::IsLowercase(this))
  {
    v3 -= 32;
  }

  return v3;
}

BOOL ot::IsUppercase(ot *this)
{
  v2 = 0;
  if (this >= 65)
  {
    return this <= 90;
  }

  return v2;
}

BOOL ot::IsLowercase(ot *this)
{
  v2 = 0;
  if (this >= 97)
  {
    return this <= 122;
  }

  return v2;
}

BOOL ot::IsDigit(ot *this)
{
  v2 = 0;
  if (this >= 48)
  {
    return this <= 57;
  }

  return v2;
}

uint64_t ot::ParseHexDigit(ot *this, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = 0;
  if (this < 65 || this > 70)
  {
    if (this < 97 || this > 102)
    {
      return ot::ParseDigit(this, a2, a3);
    }

    else
    {
      *a2 = this - 87;
    }
  }

  else
  {
    *a2 = this - 55;
  }

  return v4;
}

uint64_t ot::StringWriter::StringWriter(uint64_t this, char *a2, __int16 a3)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 10) = a3;
  **this = 0;
  return this;
}

uint64_t ot::StringWriter::Clear(uint64_t this)
{
  **this = 0;
  *(this + 8) = 0;
  return this;
}

ot::StringWriter *ot::StringWriter::Append(ot::StringWriter *this, const char *a2, ...)
{
  va_start(va, a2);
  ot::StringWriter::AppendVarArgs(this, a2, va);
  return this;
}

ot::StringWriter *ot::StringWriter::AppendVarArgs(ot::StringWriter *this, const char *a2, va_list a3)
{
  if (*(this + 5) <= *(this + 4))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 5) - *(this + 4);
  }

  v6 = vsnprintf((*this + *(this + 4)), v4, a2, a3);
  if (v6 < 0)
  {
    __assert_rtn("AppendVarArgs", "string.cpp", 333, "len >= 0");
  }

  *(this + 4) += v6;
  if (ot::StringWriter::IsTruncated(this))
  {
    *(*this + *(this + 5) - 1) = 0;
  }

  return this;
}

BOOL ot::StringWriter::IsTruncated(ot::StringWriter *this)
{
  return *(this + 4) >= *(this + 5);
}

{
  return ot::StringWriter::IsTruncated(this);
}

ot::StringWriter *ot::StringWriter::AppendHexBytes(ot::StringWriter *this, unsigned __int8 *a2, __int16 a3)
{
  while (a3--)
  {
    v4 = a2++;
    ot::StringWriter::Append(this, "%02x", *v4);
  }

  return this;
}

ot::StringWriter *ot::StringWriter::AppendCharMultipleTimes(ot::StringWriter *this, char a2, __int16 a3)
{
  while (a3--)
  {
    ot::StringWriter::Append(this, "%c", a2);
  }

  return this;
}

int iscntrl(int _c)
{
  return __istype(_c, 0x200uLL);
}

{
  return iscntrl(_c);
}

int __istype(__darwin_ct_rune_t _c, unint64_t _f)
{
  if (isascii(_c))
  {
    return (_DefaultRuneLocale.__runetype[_c] & _f) != 0;
  }

  else
  {
    return __maskrune(_c, _f) != 0;
  }
}

{
  return __istype(_c, _f);
}

int isascii(int _c)
{
  return (_c & 0xFFFFFF80) == 0;
}

{
  return isascii(_c);
}

void ot::Tasklet::Post(ot::Tasklet *this)
{
  if (!ot::Tasklet::IsPosted(this))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tasklet::Scheduler>(this);
    ot::Tasklet::Scheduler::PostTasklet(v1, this);
  }
}

BOOL ot::Tasklet::IsPosted(ot::Tasklet *this)
{
  return *(this + 1) != 0;
}

{
  return ot::Tasklet::IsPosted(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Tasklet::Scheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Tasklet::Scheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Tasklet::Scheduler>(a1);
}

void ot::Tasklet::Scheduler::PostTasklet(ot::Tasklet::Scheduler *this, ot::Tasklet *a2)
{
  if (*this)
  {
    *(a2 + 1) = *(*this + 8);
    *(*this + 8) = a2;
    *this = a2;
  }

  else
  {
    *this = a2;
    *(*this + 8) = *this;
    ot::InstanceLocator::GetInstance(a2);
    otTaskletsSignalPending();
  }
}

uint64_t ot::Tasklet::RunTask(uint64_t (**this)(void))
{
  return (*this)();
}

{
  return ot::Tasklet::RunTask(this);
}

ot::TimeTicker *ot::TimeTicker::TimeTicker(ot::TimeTicker *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  ot::TimerMilliIn<ot::TimeTicker,&ot::TimeTicker::HandleTimer>::TimerMilliIn((this + 8), a2);
  return this;
}

{
  ot::TimeTicker::TimeTicker(this, a2);
  return this;
}

void ot::TimeTicker::HandleTimer(ot::TimeTicker *this)
{
  v35 = this;
  FireTime = ot::Timer::GetFireTime((this + 8));
  v1 = ot::Random::NonCrypto::AddJitter(0x3E8, 4u);
  v34 = ot::Time::operator+(&FireTime, v1);
  ot::TimerMilli::FireAt((this + 8), v34);
  v32 = *this;
  if ((v32 & ot::TimeTicker::Mask(0)) != 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::HandleTimeTick(v2);
  }

  v30 = *this;
  if ((v30 & ot::TimeTicker::Mask(1)) != 0)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::HandleTimeTick(v3);
  }

  v29 = *this;
  if ((v29 & ot::TimeTicker::Mask(2)) != 0)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
    ot::AddressResolver::HandleTimeTick(v4);
  }

  v28 = *this;
  if ((v28 & ot::TimeTicker::Mask(6)) != 0)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
    ot::NetworkData::Notifier::HandleTimeTick(v5);
  }

  v27 = *this;
  if ((v27 & ot::TimeTicker::Mask(4)) != 0)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
    ot::DuaManager::HandleTimeTick(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v26 = *this;
  if ((v26 & ot::TimeTicker::Mask(5)) != 0)
  {
    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(this);
    ot::MlrManager::HandleTimeTick(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v25 = *this;
  if ((v25 & ot::TimeTicker::Mask(7)) != 0)
  {
    v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Mpl>(this);
    ot::Ip6::Mpl::HandleTimeTick(v22);
  }

  v24 = *this;
  if ((v24 & ot::TimeTicker::Mask(8)) != 0)
  {
    v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
    ot::BackboneRouter::Local::HandleTimeTick(v23);
  }
}

ot::TimerMilli *ot::TimerMilliIn<ot::TimeTicker,&ot::TimeTicker::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::TimeTicker,&ot::TimeTicker::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::TimeTicker,&ot::TimeTicker::HandleTimer>::HandleTimer);
  return a1;
}

uint64_t ot::TimeTicker::RegisterReceiver(_DWORD *a1, char a2)
{
  *a1 |= ot::TimeTicker::Mask(a2);
  result = ot::Timer::IsRunning((a1 + 2));
  if ((result & 1) == 0)
  {
    Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(0, 0x3E9u);
    return ot::TimerMilli::Start((a1 + 2), Uint32InRange);
  }

  return result;
}

uint64_t ot::TimeTicker::Mask(char a1)
{
  return (1 << a1);
}

{
  return ot::TimeTicker::Mask(a1);
}

uint64_t ot::TimeTicker::UnregisterReceiver(_DWORD *a1, char a2)
{
  result = ot::TimeTicker::Mask(a2);
  *a1 &= ~result;
  if (!*a1)
  {
    return ot::TimerMilli::Stop((a1 + 2));
  }

  return result;
}

uint64_t ot::Timer::GetFireTime(ot::Timer *this)
{
  return *(this + 2);
}

{
  return ot::Timer::GetFireTime(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Mpl>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Ip6::Mpl>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Mpl>(a1);
}

uint64_t ot::Instance::Get<ot::Ip6::Mpl>(uint64_t a1)
{
  return a1 + 85360;
}

{
  return ot::Instance::Get<ot::Ip6::Mpl>(a1);
}

ot::NextFireTime *ot::NextFireTime::NextFireTime(ot::NextFireTime *this)
{
  Now = ot::TimerMilli::GetNow(this);
  ot::NextFireTime::NextFireTime(this, Now);
  return this;
}

{
  Now = ot::TimerMilli::GetNow(this);
  ot::NextFireTime::NextFireTime(this, Now);
  return this;
}

_DWORD *ot::NextFireTime::NextFireTime(_DWORD *a1, int a2)
{
  v5 = a2;
  *a1 = a2;
  DistantFuture = ot::Time::GetDistantFuture(&v5);
  result = a1;
  a1[1] = DistantFuture;
  return result;
}

{
  ot::NextFireTime::NextFireTime(a1, a2);
  return a1;
}

uint64_t ot::Time::GetDistantFuture(ot::Time *this)
{
  ot::Time::Time(&v2, *this + 0x7FFFFFFF);
  return v2;
}

{
  return ot::Time::GetDistantFuture(this);
}

uint64_t ot::NextFireTime::UpdateIfEarlier(unsigned int *a1, int a2)
{
  v5 = a1[1];
  v2 = ot::Max<ot::Time>(*a1, a2);
  result = ot::Min<ot::Time>(v5, v2);
  a1[1] = result;
  return result;
}

uint64_t ot::Min<ot::Time>(int a1, int a2)
{
  v5 = a1;
  v4 = a2;
  if (ot::Time::operator<(&v5, &v4))
  {
    v3 = &v5;
  }

  else
  {
    v3 = &v4;
  }

  return *v3;
}

{
  return ot::Min<ot::Time>(a1, a2);
}

uint64_t ot::Max<ot::Time>(int a1, int a2)
{
  v5 = a1;
  v4 = a2;
  if (ot::Time::operator<(&v5, &v4))
  {
    v3 = &v4;
  }

  else
  {
    v3 = &v5;
  }

  return *v3;
}

{
  return ot::Max<ot::Time>(a1, a2);
}

BOOL ot::Timer::DoesFireBefore(ot::Timer *a1, ot::Timer *a2, int a3)
{
  v14 = a3;
  v13 = a1;
  v12 = a2;
  v11 = 0;
  FireTime = ot::Timer::GetFireTime(a1);
  v10 = ot::Time::operator<(&FireTime, &v14);
  v8 = ot::Timer::GetFireTime(v12);
  v3 = ot::Time::operator<(&v8, &v14);
  if (v3 == v10)
  {
    v7 = ot::Timer::GetFireTime(a1);
    v6 = ot::Timer::GetFireTime(v12);
    return ot::Time::operator<(&v7, &v6);
  }

  else
  {
    return v10;
  }
}

uint64_t ot::TimerMilli::StartAt(ot::TimerMilli *a1, int a2, unsigned int a3)
{
  v6 = a2;
  if (a3 > 0x7FFFFFFF)
  {
    __assert_rtn("StartAt", "timer.cpp", 106, "aDelay <= kMaxDelay");
  }

  v5 = ot::Time::operator+(&v6, a3);
  return ot::TimerMilli::FireAt(a1, v5);
}

uint64_t ot::TimerMilli::FireAt(ot::TimerMilli *a1, int a2)
{
  *(a1 + 2) = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMilli::Scheduler>(a1);
  return ot::TimerMilli::Scheduler::Add(v2, a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMilli::Scheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::TimerMilli::Scheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMilli::Scheduler>(a1);
}

uint64_t ot::TimerMilli::Scheduler::Add(ot::TimerMilli::Scheduler *this, ot::TimerMilli *a2)
{
  return ot::Timer::Scheduler::Add(this, a2, ot::TimerMilli::Scheduler::sAlarmMilliApi);
}

{
  return ot::TimerMilli::Scheduler::Add(this, a2);
}

uint64_t ot::TimerMilli::FireAt(ot::TimerMilli *this, const ot::NextFireTime *a2)
{
  if (!ot::NextFireTime::IsSet(a2))
  {
    return ot::TimerMilli::Stop(this);
  }

  NextTime = ot::NextFireTime::GetNextTime(a2);
  return ot::TimerMilli::FireAt(this, NextTime);
}

BOOL ot::NextFireTime::IsSet(ot::NextFireTime *this)
{
  v4 = this;
  DistantFuture = ot::Time::GetDistantFuture(this);
  return ot::Unequatable<ot::Time>::operator!=(this + 1, &DistantFuture);
}

{
  return ot::NextFireTime::IsSet(this);
}

uint64_t ot::NextFireTime::GetNextTime(ot::NextFireTime *this)
{
  return *(this + 1);
}

{
  return ot::NextFireTime::GetNextTime(this);
}

uint64_t ot::TimerMilli::FireAtIfEarlier(ot::TimerMilli *a1, int a2)
{
  v4 = a2;
  if (!ot::Timer::IsRunning(a1))
  {
    return ot::TimerMilli::FireAt(a1, v4);
  }

  result = ot::Time::operator>(a1 + 2, &v4);
  if (result)
  {
    return ot::TimerMilli::FireAt(a1, v4);
  }

  return result;
}

uint64_t ot::TimerMilli::FireAtIfEarlier(ot::TimerMilli *this, const ot::NextFireTime *a2)
{
  result = ot::NextFireTime::IsSet(a2);
  if (result)
  {
    NextTime = ot::NextFireTime::GetNextTime(a2);
    return ot::TimerMilli::FireAtIfEarlier(this, NextTime);
  }

  return result;
}

uint64_t ot::TimerMilli::Scheduler::Remove(ot::TimerMilli::Scheduler *this, ot::TimerMilli *a2)
{
  return ot::Timer::Scheduler::Remove(this, a2, ot::TimerMilli::Scheduler::sAlarmMilliApi);
}

{
  return ot::TimerMilli::Scheduler::Remove(this, a2);
}

uint64_t ot::Instance::Get<ot::TimerMilli::Scheduler>(uint64_t a1)
{
  return a1 + 16;
}

{
  return ot::Instance::Get<ot::TimerMilli::Scheduler>(a1);
}

uint64_t ot::TimerMilli::Scheduler::RemoveAll(ot::TimerMilli::Scheduler *this)
{
  return ot::Timer::Scheduler::RemoveAll(this, ot::TimerMilli::Scheduler::sAlarmMilliApi);
}

{
  return ot::TimerMilli::Scheduler::RemoveAll(this);
}

uint64_t ot::Timer::Scheduler::Add(uint64_t *a1, ot::Timer *a2, uint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v3 = (*(a3 + 16))();
  ot::Time::Time(&v9, v3);
  ot::Timer::Scheduler::Remove(a1, v12, v11);
  v8[1] = a1;
  v8[0] = ot::LinkedList<ot::Timer>::begin(a1);
  v7 = ot::LinkedList<ot::Timer>::end();
  while (ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator!=(v8, &v7))
  {
    v6 = ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator*(v8);
    if (ot::Timer::DoesFireBefore(v12, v6, v9))
    {
      break;
    }

    v10 = v6;
    ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator++(v8);
  }

  if (v10)
  {
    return ot::LinkedList<ot::Timer>::PushAfter(a1, v12, v10);
  }

  ot::LinkedList<ot::Timer>::Push(a1, v12);
  return ot::Timer::Scheduler::SetAlarm(a1, v11);
}

uint64_t ot::Timer::Scheduler::Remove(uint64_t *a1, ot::Timer *a2, uint64_t a3)
{
  result = ot::Timer::IsRunning(a2);
  if (result)
  {
    if (ot::LinkedList<ot::Timer>::GetHead(a1) == a2)
    {
      ot::LinkedList<ot::Timer>::Pop(a1);
      ot::Timer::Scheduler::SetAlarm(a1, a3);
    }

    else
    {
      ot::LinkedList<ot::Timer>::Remove(a1, a2);
      IgnoreError();
    }

    return ot::LinkedListEntry<ot::Timer>::SetNext(a2, a2);
  }

  return result;
}

uint64_t ot::LinkedList<ot::Timer>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::Timer>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::Timer>::begin(a1);
}

uint64_t ot::LinkedList<ot::Timer>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::Timer>::end();
}

BOOL ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator*(a1);
}

uint64_t ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator++(uint64_t *a1)
{
  return ot::LinkedList<ot::Timer>::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator++(a1);
}

uint64_t ot::LinkedList<ot::Timer>::Push(uint64_t *a1, uint64_t a2)
{
  result = ot::LinkedListEntry<ot::Timer>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Timer>::Push(a1, a2);
}

uint64_t ot::Timer::Scheduler::SetAlarm(ot::InstanceLocator *a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  if (ot::LinkedList<ot::Timer>::IsEmpty(a1))
  {
    v9 = *(v13 + 8);
    Instance = ot::InstanceLocator::GetInstance(a1);
    return v9(Instance);
  }

  else
  {
    Head = ot::LinkedList<ot::Timer>::GetHead(a1);
    v4 = (*(v13 + 16))();
    ot::Time::Time(&v11, v4);
    if (ot::Time::operator<(&v11, (Head + 8)))
    {
      v8 = ot::Time::operator-((Head + 8), &v11);
    }

    else
    {
      v8 = 0;
    }

    v6 = *v13;
    v7 = ot::InstanceLocator::GetInstance(a1);
    Value = ot::Time::GetValue(&v11);
    return v6(v7, Value, v8);
  }
}

uint64_t ot::LinkedList<ot::Timer>::PushAfter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Next = ot::LinkedListEntry<ot::Timer>::GetNext(a3);
  ot::LinkedListEntry<ot::Timer>::SetNext(a2, Next);
  return ot::LinkedListEntry<ot::Timer>::SetNext(a3, a2);
}

{
  return ot::LinkedList<ot::Timer>::PushAfter(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Timer>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedList<ot::Timer>::GetHead(a1);
}

uint64_t ot::LinkedList<ot::Timer>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::Timer>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::Timer>::Pop(a1);
}

uint64_t ot::LinkedList<ot::Timer>::Remove(uint64_t *a1, uint64_t a2)
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = 0;
  v4 = ot::LinkedList<ot::Timer>::Find(a1, a2, v5);
  if (!v4)
  {
    ot::LinkedList<ot::Timer>::PopAfter(a1, v5[0]);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Timer>::Remove(a1, a2);
}

uint64_t ot::LinkedListEntry<ot::Timer>::SetNext(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Timer>::SetNext(result, a2);
}

BOOL ot::LinkedList<ot::Timer>::IsEmpty(void *a1)
{
  return *a1 == 0;
}

{
  return ot::LinkedList<ot::Timer>::IsEmpty(a1);
}

uint64_t ot::Timer::Scheduler::ProcessTimers(ot::InstanceLocator *a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  Head = ot::LinkedList<ot::Timer>::GetHead(a1);
  if (!Head)
  {
    return ot::Timer::Scheduler::SetAlarm(a1, v7);
  }

  v2 = (*(v7 + 16))();
  ot::Time::Time(&v5, v2);
  if (!ot::Time::operator>=(&v5, Head + 2))
  {
    return ot::Timer::Scheduler::SetAlarm(a1, v7);
  }

  ot::Timer::Scheduler::Remove(a1, Head, v7);
  return ot::Timer::Fired(Head);
}

uint64_t ot::Timer::Fired(uint64_t (**this)(void))
{
  return (*this)();
}

{
  return ot::Timer::Fired(this);
}

uint64_t ot::Timer::Scheduler::RemoveAll(ot::InstanceLocator *a1, uint64_t a2)
{
  while (1)
  {
    v4 = ot::LinkedList<ot::Timer>::Pop(a1);
    if (!v4)
    {
      break;
    }

    ot::LinkedListEntry<ot::Timer>::SetNext(v4, v4);
  }

  return ot::Timer::Scheduler::SetAlarm(a1, a2);
}

uint64_t otPlatAlarmMilliFired(uint64_t a1)
{
  result = otInstanceIsInitialized(a1);
  if (result)
  {
    ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::TimerMilli::Scheduler>(v2);
    return ot::TimerMilli::Scheduler::ProcessTimers(v3);
  }

  return result;
}

uint64_t ot::TimerMilli::Scheduler::ProcessTimers(ot::TimerMilli::Scheduler *this)
{
  return ot::Timer::Scheduler::ProcessTimers(this, ot::TimerMilli::Scheduler::sAlarmMilliApi);
}

{
  return ot::TimerMilli::Scheduler::ProcessTimers(this);
}

uint64_t ot::TimerMicro::StartAt(ot::TimerMicro *a1, int a2, unsigned int a3)
{
  v6 = a2;
  if (a3 > 0x7FFFFFFF)
  {
    __assert_rtn("StartAt", "timer.cpp", 274, "aDelay <= kMaxDelay");
  }

  v5 = ot::Time::operator+(&v6, a3);
  return ot::TimerMicro::FireAt(a1, v5);
}

uint64_t ot::TimerMicro::FireAt(ot::TimerMicro *a1, int a2)
{
  *(a1 + 2) = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMicro::Scheduler>(a1);
  return ot::TimerMicro::Scheduler::Add(v2, a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMicro::Scheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::TimerMicro::Scheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMicro::Scheduler>(a1);
}

uint64_t ot::TimerMicro::Scheduler::Add(ot::TimerMicro::Scheduler *this, ot::TimerMicro *a2)
{
  return ot::Timer::Scheduler::Add(this, a2, ot::TimerMicro::Scheduler::sAlarmMicroApi);
}

{
  return ot::TimerMicro::Scheduler::Add(this, a2);
}

uint64_t ot::TimerMicro::Scheduler::Remove(ot::TimerMicro::Scheduler *this, ot::TimerMicro *a2)
{
  return ot::Timer::Scheduler::Remove(this, a2, ot::TimerMicro::Scheduler::sAlarmMicroApi);
}

{
  return ot::TimerMicro::Scheduler::Remove(this, a2);
}

uint64_t ot::Instance::Get<ot::TimerMicro::Scheduler>(uint64_t a1)
{
  return a1 + 24;
}

{
  return ot::Instance::Get<ot::TimerMicro::Scheduler>(a1);
}

uint64_t ot::TimerMicro::Scheduler::RemoveAll(ot::TimerMicro::Scheduler *this)
{
  return ot::Timer::Scheduler::RemoveAll(this, ot::TimerMicro::Scheduler::sAlarmMicroApi);
}

{
  return ot::TimerMicro::Scheduler::RemoveAll(this);
}

uint64_t otPlatAlarmMicroFired(uint64_t a1)
{
  result = otInstanceIsInitialized(a1);
  if (result)
  {
    ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::TimerMicro::Scheduler>(v2);
    return ot::TimerMicro::Scheduler::ProcessTimers(v3);
  }

  return result;
}

uint64_t ot::TimerMicro::Scheduler::ProcessTimers(ot::TimerMicro::Scheduler *this)
{
  return ot::Timer::Scheduler::ProcessTimers(this, ot::TimerMicro::Scheduler::sAlarmMicroApi);
}

{
  return ot::TimerMicro::Scheduler::ProcessTimers(this);
}

BOOL ot::Unequatable<ot::Time>::operator!=(_DWORD *a1, _DWORD *a2)
{
  return !ot::Time::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Time>::operator!=(a1, a2);
}

BOOL ot::Time::operator==(_DWORD *a1, _DWORD *a2)
{
  return *a1 == *a2;
}

{
  return ot::Time::operator==(a1, a2);
}

uint64_t ot::LinkedList<ot::Timer>::Iterator::Advance(uint64_t *a1)
{
  result = ot::LinkedListEntry<ot::Timer>::GetNext(*a1);
  *a1 = result;
  return result;
}

{
  return ot::LinkedList<ot::Timer>::Iterator::Advance(a1);
}

uint64_t ot::LinkedListEntry<ot::Timer>::GetNext(uint64_t a1)
{
  return *(a1 + 16);
}

{
  return *(a1 + 16);
}

{
  return ot::LinkedListEntry<ot::Timer>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Timer>::GetNext(a1);
}

uint64_t ot::LinkedList<ot::Timer>::Find(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ot::AsConst<ot::LinkedList<ot::Timer>>();
  return ot::LinkedList<ot::Timer>::Find(v3, a2, a3);
}

{
  return ot::LinkedList<ot::Timer>::Find(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Timer>::PopAfter(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return ot::LinkedList<ot::Timer>::Pop(a1);
  }

  Next = ot::LinkedListEntry<ot::Timer>::GetNext(a2);
  if (Next)
  {
    v2 = ot::LinkedListEntry<ot::Timer>::GetNext(Next);
    ot::LinkedListEntry<ot::Timer>::SetNext(a2, v2);
  }

  return Next;
}

{
  return ot::LinkedList<ot::Timer>::PopAfter(a1, a2);
}

void ot::AsConst<ot::LinkedList<ot::Timer>>()
{
  ;
}

{
  ot::AsConst<ot::LinkedList<ot::Timer>>();
}

uint64_t ot::LinkedList<ot::Timer>::Find(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::LinkedListEntry<ot::Timer>::GetNext(i))
  {
    if (i == a2)
    {
      return 0;
    }

    *a3 = i;
  }

  return v5;
}

{
  return ot::LinkedList<ot::Timer>::Find(a1, a2, a3);
}

uint64_t ot::Tlv::ReadUintTlv<unsigned char>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, unsigned __int8 a5)
{
  TlvValue = ot::Tlv::ReadTlvValue(a1, a2, a3, 1);
  if (!TlvValue)
  {
    *a3 = ot::BigEndian::HostSwap<unsigned char>(*a3);
  }

  return TlvValue;
}

{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::ReadTlvValue(ot::Tlv *this, const ot::Message *a2, char *a3, void *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v7 = ot::Tlv::ParsedInfo::ParseFrom(v5, this, a2);
  if (!v7)
  {
    if (ot::OffsetRange::Contains(v6, v8))
    {
      ot::OffsetRange::ShrinkLength(v6, v8);
      ot::Message::ReadBytes(v11, v6, v9);
    }

    else
    {
      return 6;
    }
  }

  return v7;
}

uint64_t ot::BigEndian::HostSwap<unsigned char>(uint64_t result)
{
  return result;
}

{
  return ot::BigEndian::HostSwap<unsigned char>(result);
}

uint64_t ot::Tlv::ReadUintTlv<unsigned short>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  TlvValue = ot::Tlv::ReadTlvValue(a1, a2, a3, 2);
  if (!TlvValue)
  {
    *a3 = ot::BigEndian::HostSwap<unsigned short>(*a3, v3);
  }

  return TlvValue;
}

{
  return ot::Tlv::ReadUintTlv<unsigned short>(a1, a2, a3);
}

uint64_t ot::BigEndian::HostSwap<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(a1, a2);
}

{
  return ot::BigEndian::HostSwap<unsigned short>(a1, a2);
}

uint64_t ot::Tlv::ReadUintTlv<unsigned int>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  TlvValue = ot::Tlv::ReadTlvValue(a1, a2, a3, 4);
  if (!TlvValue)
  {
    *a3 = ot::BigEndian::HostSwap<unsigned int>(*a3, v3);
  }

  return TlvValue;
}

{
  return ot::Tlv::ReadUintTlv<unsigned int>(a1, a2, a3);
}

uint64_t ot::BigEndian::HostSwap<unsigned int>(unsigned int a1, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(a1, a2);
}

{
  return ot::BigEndian::HostSwap<unsigned int>(a1, a2);
}

uint64_t ot::Tlv::FindUintTlv<unsigned char>(const ot::Message *a1, unsigned __int8 a2, char *a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v10 = ot::Tlv::ParsedInfo::FindIn(v8, a1, a2);
  if (!v10)
  {
    v7 = v13;
    Offset = ot::OffsetRange::GetOffset(&v9);
    return ot::Tlv::ReadUintTlv<unsigned char>(v7, Offset, v11, v4, v5);
  }

  return v10;
}

{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, a2, a3);
}

uint64_t ot::Tlv::ParsedInfo::FindIn(ot::Tlv::ParsedInfo *this, const ot::Message *a2, unsigned __int8 a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 23;
  ot::OffsetRange::InitFromMessageOffsetToEnd(v6, a2);
  while (!ot::Tlv::ParsedInfo::ParseFrom(this, v9, v6))
  {
    if (*this == v8)
    {
      return 0;
    }

    Length = ot::OffsetRange::GetLength((this + 2));
    ot::OffsetRange::AdvanceOffset(v6, Length);
  }

  return v7;
}

uint64_t ot::Tlv::FindUintTlv<unsigned short>(const ot::Message *a1, unsigned __int8 a2, char *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v8 = ot::Tlv::ParsedInfo::FindIn(v6, a1, a2);
  if (!v8)
  {
    v5 = v11;
    Offset = ot::OffsetRange::GetOffset(&v7);
    return ot::Tlv::ReadUintTlv<unsigned short>(v5, Offset, v9);
  }

  return v8;
}

{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, a2, a3);
}

uint64_t ot::Tlv::FindUintTlv<unsigned int>(const ot::Message *a1, unsigned __int8 a2, char *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v8 = ot::Tlv::ParsedInfo::FindIn(v6, a1, a2);
  if (!v8)
  {
    v5 = v11;
    Offset = ot::OffsetRange::GetOffset(&v7);
    return ot::Tlv::ReadUintTlv<unsigned int>(v5, Offset, v9);
  }

  return v8;
}

{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, a2, a3);
}

uint64_t ot::Tlv::AppendUintTlv<unsigned char>(uint64_t a1, char a2, unsigned __int8 a3)
{
  *&v5[1] = a1;
  v5[0] = a2;
  v4[1] = a3;
  v4[0] = ot::BigEndian::HostSwap<unsigned char>(a3);
  return ot::Tlv::AppendTlv(*&v5[1], v5[0], v4, 1);
}

{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, a2, a3);
}

uint64_t ot::Tlv::AppendTlv(ot::Tlv *this, ot::Message *a2, void *a3, const void *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  if (a4 == 255)
  {
    __assert_rtn("AppendTlv", "tlvs.cpp", 277, "aLength <= Tlv::kBaseTlvMaxLength");
  }

  ot::Tlv::SetType(v5, v9);
  ot::Tlv::SetLength(v5, v7);
  v6 = ot::Message::Append<ot::Tlv>(v10, v5);
  if (!v6 && v7)
  {
    return ot::Message::AppendBytes(v10, v8, v7);
  }

  return v6;
}

uint64_t ot::Tlv::AppendUintTlv<unsigned short>(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  *&v5[1] = a1;
  v5[0] = a2;
  v4[1] = a3;
  v4[0] = ot::BigEndian::HostSwap<unsigned short>(a3, a2);
  return ot::Tlv::AppendTlv(*&v5[1], v5[0], v4, 2);
}

{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, a2, a3);
}

uint64_t ot::Tlv::AppendUintTlv<unsigned int>(ot::Tlv *a1, unsigned __int8 a2, unsigned int a3)
{
  v6 = a1;
  v5 = a2;
  v4[1] = a3;
  v4[0] = ot::BigEndian::HostSwap<unsigned int>(a3, a2);
  return ot::Tlv::AppendTlv(v6, v5, v4, 4);
}

{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, a2, a3);
}

uint64_t ot::Tlv::GetSize(ot::Tlv *this)
{
  if (!ot::Tlv::IsExtended(this))
  {
    return ot::Tlv::GetLength(this) + 2;
  }

  ot::As<ot::ExtendedTlv>();
  return ot::ExtendedTlv::GetLength(v1, v2) + 4;
}

void ot::As<ot::ExtendedTlv>()
{
  ;
}

{
  ot::As<ot::ExtendedTlv>();
}

uint64_t ot::ExtendedTlv::GetLength(ot::ExtendedTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::ExtendedTlv::GetLength(this, a2);
}

uint64_t ot::Tlv::GetValue(ot::Tlv *this)
{
  IsExtended = ot::Tlv::IsExtended(this);
  v2 = 4;
  if (!IsExtended)
  {
    v2 = 2;
  }

  return this + v2;
}

{
  IsExtended = ot::Tlv::IsExtended(this);
  v2 = 4;
  if (!IsExtended)
  {
    v2 = 2;
  }

  return this + v2;
}

uint64_t ot::Tlv::FindTlv(ot::Tlv *this, const ot::Message *a2, unsigned __int16 a3, char *a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  *v8 = a4;
  v7 = 0;
  return ot::Tlv::FindTlv(this, a2, a3, a4, &v7, a6);
}

{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = 0;
  v10 = ot::Tlv::ParsedInfo::FindIn(v8, this, a2);
  if (!v10)
  {
    ot::OffsetRange::ShrinkLength(&v9, v13);
    ot::Message::ReadBytes(v15, &v9, v12);
    Offset = ot::OffsetRange::GetOffset(&v9);
    *v11 = Offset;
  }

  return v10;
}

uint64_t ot::Tlv::FindTlvValueOffsetRange(ot::Tlv *this, const ot::Message *a2, _DWORD *a3, ot::OffsetRange *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v7 = ot::Tlv::ParsedInfo::FindIn(v5, this, a2);
  if (!v7)
  {
    *v8 = v6;
  }

  return v7;
}

uint64_t ot::Tlv::ParsedInfo::ParseFrom(ot::Tlv::ParsedInfo *this, const ot::Message *a2, unsigned __int16 a3)
{
  v9 = this;
  v8 = a2;
  v7[2] = a3;
  v5 = a3;
  Length = ot::Message::GetLength(a2);
  ot::OffsetRange::InitFromRange(v7, v5, Length);
  return ot::Tlv::ParsedInfo::ParseFrom(this, v8, v7);
}

uint64_t ot::Tlv::ParsedInfo::ParseFrom(ot::Tlv::ParsedInfo *this, const ot::Message *a2, const ot::OffsetRange *a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v11 = ot::Message::Read<ot::Tlv>(a2, a3, v10);
  if (!v11)
  {
    *this = ot::Tlv::GetType(v10);
    if (ot::Tlv::IsExtended(v10))
    {
      v11 = ot::Message::Read<ot::ExtendedTlv>(v13, v12, v9);
      if (v11)
      {
        return v11;
      }

      *(this + 1) = 1;
      v8 = 4;
      v7 = ot::ExtendedTlv::GetLength(v9, v3) + 4;
    }

    else
    {
      *(this + 1) = 0;
      v8 = 2;
      v7 = ot::Tlv::GetLength(v10) + 2;
    }

    *(this + 2) = *v12;
    if (ot::OffsetRange::Contains((this + 2), v7))
    {
      ot::OffsetRange::ShrinkLength(this + 2, v7);
      EndOffset = ot::OffsetRange::GetEndOffset((this + 2));
      if (EndOffset <= ot::Message::GetLength(v13))
      {
        *(this + 6) = *(this + 2);
        ot::OffsetRange::AdvanceOffset(this + 3, v8);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 6;
    }
  }

  return v11;
}