uint64_t ot::Mle::Mle::Enable(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Enabled", a3, a4, a5, a6, a7, a8);
  ot::Mle::Mle::UpdateLinkLocalAddress(this);
  v10 = ot::Ip6::Udp::Socket::Open((this + 544));
  if (!v10)
  {
    return ot::Ip6::Udp::Socket::Bind((this + 544), 19788, 1);
  }

  return v10;
}

void ot::Mle::Mle::UpdateLinkLocalAddress(ot::Mle::Mle *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::RemoveUnicastAddress(v1, (this + 992));
  ot::Ip6::Netif::UnicastAddress::GetAddress((this + 992));
  Iid = ot::Ip6::Address::GetIid(v2);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ExtAddress = ot::Mac::Mac::GetExtAddress(v3);
  ot::Ip6::InterfaceIdentifier::SetFromExtAddress(Iid, ExtAddress);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::AddUnicastAddress(v5, (this + 992));
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  ot::Notifier::Signal(v6, 8);
}

uint64_t ot::Mle::Mle::ScheduleMessageTransmissionTimer(ot::Mle::Mle *this)
{
  Uint32InRange = 0;
  if (*(this + 130) == 1 && *(this + 143))
  {
    Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(0x1194, 0x157Cu);
    goto LABEL_21;
  }

  v4 = *(this + 137);
  if (*(this + 137))
  {
    if (v4 == 1)
    {
      Uint32InRange = 100;
      goto LABEL_21;
    }

    if (v4 == 2)
    {
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      if (ot::Mac::Mac::IsCslEnabled(v1))
      {
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        Uint32InRange = ot::Mac::Mac::GetCslPeriodInMsec(v2) + 1000;
      }

      else
      {
        Uint32InRange = 1000;
      }

      goto LABEL_21;
    }
  }

  if (*(this + 135) && *(this + 135) == 1)
  {
    Uint32InRange = 1000;
  }

  else if (ot::Mle::Mle::IsChild(this) && ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
    Uint32InRange = ot::Time::SecToMsec(*(this + 39)) - 4000;
  }

LABEL_21:
  if (Uint32InRange)
  {
    return ot::TimerMilli::Start((this + 936), Uint32InRange);
  }

  else
  {
    return ot::TimerMilli::Stop((this + 936));
  }
}

uint64_t ot::Mle::Mle::Disable(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Disabled", a3, a4, a5, a6, a7, a8);
  ot::Mle::Mle::Stop(this, 0);
  v11 = ot::Ip6::Udp::Socket::Close((this + 544));
  if (!v11)
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    ot::Ip6::Netif::RemoveUnicastAddress(v8, (this + 992));
  }

  return v11;
}

void *ot::Mle::Mle::Stop(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    ot::MeshCoP::DatasetManager::Restore(active);
    IgnoreError();
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
    ot::MeshCoP::DatasetManager::Restore(v3);
    IgnoreError();
  }

  if (!ot::Mle::Mle::IsDisabled(a1))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
    ot::KeyManager::Stop(v4);
    ot::Mle::Mle::SetStateDetached(a1);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    ot::Ip6::Netif::UnsubscribeMulticast(v5, (a1 + 1112));
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    ot::Ip6::Netif::UnsubscribeMulticast(v6, (a1 + 1088));
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    ot::Ip6::Netif::RemoveUnicastAddress(v7, (a1 + 1056));
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    ot::Ip6::Netif::RemoveUnicastAddress(v8, (a1 + 1024));
    if (ot::Mle::Mle::GetCslPeripheral(a1))
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      CslPeripheral = ot::Mle::Mle::GetCslPeripheral(a1);
      ot::Mle::MleRouter::RemoveNeighbor(v11, CslPeripheral);
    }

    ot::Mle::Mle::SetRole(a1, 0);
  }

  ot::TimerMilli::Stop((a1 + 960));
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<>((a1 + 808));
}

uint64_t ot::Mle::Mle::Start(_BYTE *a1, char a2)
{
  v17 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(a1);
  if (ot::Radio::GetPromiscuous(v2))
  {
    return 13;
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    if (ot::ThreadNetif::IsUp(v3))
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      if (ot::Mac::Mac::GetPanId(v4) == 0xFFFF)
      {
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
        RandomPanId = ot::Mac::GenerateRandomPanId(v15);
        ot::Mac::Mac::SetPanId(v15, RandomPanId);
      }

      ot::Mle::Mle::SetStateDetached(a1);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::AddUnicastAddress(v6, (a1 + 1024));
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::SubscribeMulticast(v7, (a1 + 1088));
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::SubscribeMulticast(v8, (a1 + 1112));
      Rloc16 = ot::Mle::Mle::GetRloc16(a1);
      ot::Mle::Mle::SetRloc16(a1, Rloc16);
      ot::Mle::Mle::ResetAttachCounter(a1);
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
      ot::KeyManager::Start(v10);
      if (!a2)
      {
        a1[133] = 1;
      }

      if (a2 == 1 || ot::Mle::Mle::GetRloc16(a1) == 65534)
      {
        ot::Mle::Mle::Attach(a1, 0);
      }

      else
      {
        v11 = ot::Mle::Mle::GetRloc16(a1);
        if (ot::Mle::IsRouterRloc16(v11, v12))
        {
          v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
          if (ot::Mle::MleRouter::BecomeRouter(v13, 2u))
          {
            ot::Mle::Mle::Attach(a1, 0);
          }
        }

        else
        {
          a1[139] = 0;
          ot::Mle::Mle::SendChildUpdateRequest(a1);
          IgnoreError();
        }
      }
    }

    else
    {
      return 13;
    }
  }

  return v17;
}

uint64_t ot::Radio::GetPromiscuous(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetPromiscuous();
}

{
  return ot::Radio::GetPromiscuous(this);
}

void ot::Mle::Mle::SetStateDetached(ot::Mle::Mle *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  ot::BackboneRouter::Local::Reset(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
  ot::BackboneRouter::Leader::Reset(v2);
  if (ot::Mle::Mle::IsAttached(this))
  {
    ot::Mle::Mle::UpdateLastDetachTime(this);
    ot::Mle::Mle::Store(this);
  }

  if (ot::Mle::Mle::IsLeader(this))
  {
    v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Ip6::Netif::RemoveUnicastAddress(v15, (v3 + 35712));
  }

  ot::Mle::Mle::SetRole(this, 1);
  ot::Mle::Mle::SetAttachState(this, 0);
  ot::TimerMilli::Stop((this + 888));
  ot::TimerMilli::Stop((this + 936));
  *(this + 137) = 0;
  *(this + 139) = 0;
  *(this + 135) = 0;
  *(this + 140) = 0;
  *(this + 129) &= ~0x10u;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
  ot::MeshForwarder::SetRxOnWhenIdle(v4, 1, v5, v6, v7, v8, v9, v10);
  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetBeaconEnabled(v11, 0);
  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::MleRouter::ClearAlternateRloc16(v12);
  v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::MleRouter::HandleDetachStart(v13);
  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::UpdateCsl(v14, 0);
}

void ot::Mle::Mle::SetRloc16(ot::Mle::Mle *this, unsigned __int16 a2)
{
  Rloc16 = ot::Mle::Mle::GetRloc16(this);
  if (a2 != Rloc16)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "RLOC16 %04x -> %04x", v2, v3, v4, v5, v6, v7, Rloc16, a2);
  }

  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  if (ot::Ip6::Netif::HasUnicastAddress(v8, (this + 1056)))
  {
    ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
    Iid = ot::Ip6::Address::GetIid(v9);
    if (ot::Ip6::InterfaceIdentifier::GetLocator(Iid, v11) != a2)
    {
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
      ot::Ip6::Netif::RemoveUnicastAddress(v12, (this + 1056));
      v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
      ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
      ot::Coap::CoapBase::ClearRequests(v20, v13);
    }
  }

  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetShortAddress(v14, a2);
  *(this + 72) = a2;
  if (a2 == 65534)
  {
    v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::ClearAlternateRloc16(v19);
  }

  else
  {
    ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
    v16 = ot::Ip6::Address::GetIid(v15);
    ot::Ip6::InterfaceIdentifier::SetLocator(v16, a2);
    v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    ot::Ip6::Netif::AddUnicastAddress(v17, (this + 1056));
    v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
    ot::AddressResolver::RestartAddressQueries(v18);
  }
}

void ot::Mle::Mle::Attach(uint64_t a1, char a2)
{
  if (!ot::Mle::Mle::IsDisabled(a1) && !ot::Mle::Mle::IsAttaching(a1))
  {
    if (!ot::Mle::Mle::IsDetached(a1))
    {
      ot::Mle::Mle::ResetAttachCounter(a1);
    }

    if (*(a1 + 133) == 1)
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
      if (ot::MeshCoP::DatasetManager::Restore(active))
      {
        *(a1 + 133) = 0;
      }

      else
      {
        *(a1 + 133) = 2;
      }
    }

    ot::Mle::Mle::SetAttachState(a1, 2u);
    *(a1 + 134) = a2;
    if (a2 == 2)
    {
      ++*(a1 + 630);
      ++*(a1 + 802);
    }

    else if (ot::Mle::Mle::IsFullThreadDevice(a1))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      ot::Mle::MleRouter::StopAdvertiseTrickleTimer(v3);
    }

    AttachStartDelay = ot::Mle::Mle::GetAttachStartDelay(a1);
    ot::TimerMilli::Start((a1 + 888), AttachStartDelay);
    if (ot::Mle::Mle::IsDetached(a1))
    {
      ot::Mle::Mle::IncrementAttachCounter(a1);
      ++*(a1 + 798);
      if (!ot::Mle::Mle::IsRxOnWhenIdle(a1))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
        ot::Mac::Mac::SetRxOnWhenIdle(v5, 0, v6, v7, v8, v9, v10, v11);
      }
    }
  }
}

void ot::Mle::Mle::SetRole(ot::Mle::Mle *a1, char a2)
{
  v26 = a1;
  v25 = a2;
  v24 = *(a1 + 130);
  v23 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Uptime>(a1);
  ot::Uptime::GetUptime(v2, v27, 24);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
  ot::AppMetricsManager::UpdateSystemWideThreadMeshReachabilityStatusLastTimestamp(v3, 8u);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  if (!ot::Notifier::Update<ot::Mle::DeviceRole>(v4, a1 + 130, &v25, 4))
  {
    v19 = ot::Mle::RoleToString(v24);
    v5 = ot::Mle::RoleToString(*(a1 + 130));
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s Role %s -> %s", v6, v7, v8, v9, v10, v11, v27, v19, v5);
    ot::Mle::Mle::UpdateRoleTimeCounters(a1, v24);
    v20 = *(a1 + 130);
    if (*(a1 + 130))
    {
      switch(v20)
      {
        case 1:
          ++*(a1 + 309);
          ++*(a1 + 395);
          break;
        case 2:
          ++*(a1 + 310);
          ++*(a1 + 396);
          ot::Mle::Mle::SignalChildConnectionSuccess(a1);
          *(a1 + 64) = 1;
          break;
        case 3:
          ++*(a1 + 311);
          ++*(a1 + 397);
          break;
        case 4:
          ++*(a1 + 312);
          ++*(a1 + 398);
          break;
      }
    }

    else
    {
      ++*(a1 + 308);
      ++*(a1 + 394);
    }

    ot::Mle::Mle::SetThreadCoexConfig(a1, 0, *(a1 + 130), *(a1 + 132));
    if (!ot::Mle::Mle::IsChild(a1) && v24)
    {
      ot::Neighbor::SetState(a1 + 192, 0);
    }

    if (v24 == 1 && ot::Mle::Mle::IsChild(a1))
    {
      DeviceMode = ot::Mle::Mle::GetDeviceMode(a1);
      *(a1 + 129) = *(a1 + 129) & 0xEF | (16 * !ot::Mle::DeviceMode::IsRxOnWhenIdle(&DeviceMode));
    }
  }

  if (v23)
  {
    v12 = otThreadErrorToString(v23);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Error %s while configuring the role", v13, v14, v15, v16, v17, v18, v12);
  }
}

void *ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<>(__int128 *a1)
{
  v3 = a1;
  v2 = *a1;
  ot::CallbackBase<void (*)(void *)>::Clear(a1);
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeIfSet<>(&v2);
}

{
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<>(a1);
}

void *ot::ClearAllBytes<otMleCounters>(void *a1)
{
  return memset(a1, 0, 0x48uLL);
}

{
  return ot::ClearAllBytes<otMleCounters>(a1);
}

unint64_t ot::Mle::Mle::UpdateRoleTimeCounters(ot::InstanceLocator *a1, char a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Uptime>(a1);
  result = ot::Uptime::GetUptime(v2);
  v5 = result - *(a1 + 22);
  *(a1 + 22) = result;
  *(a1 + 84) += v5;
  if (a2)
  {
    switch(a2)
    {
      case 1:
        *(a1 + 80) += v5;
        break;
      case 2:
        *(a1 + 81) += v5;
        break;
      case 3:
        *(a1 + 82) += v5;
        break;
      case 4:
        *(a1 + 83) += v5;
        break;
    }
  }

  else
  {
    *(a1 + 79) += v5;
  }

  return result;
}

uint64_t ot::Mle::Mle::setFirmwareUpdate(ot::Mle::Mle *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Mle::fwUpdateEnabled = a2 & 1;
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s: fwUpdateEnabled=[%d]", a3, a4, a5, a6, a7, a8, "setFirmwareUpdate", a2 & 1);
  if (ot::Mle::Mle::IsFullRouter(this))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s: In Full router mode:fwUpdateEnabled=[%d]", v8, v9, v10, v11, v12, v13, "setFirmwareUpdate", ot::Mle::fwUpdateEnabled & 1);
    ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
    return 0;
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s: Not Full router mode failed to set Coex Priority: fwUpdateEnabled=[%d]: error=[%d]", v8, v9, v10, v11, v12, v13, "setFirmwareUpdate", ot::Mle::fwUpdateEnabled & 1, 13);
    return 13;
  }
}

BOOL ot::Mle::Mle::IsFullRouter(ot::Mle::Mle *this)
{
  return ot::Mle::Mle::IsRxOnWhenIdle(this) && ot::Mle::Mle::IsFullThreadDevice(this);
}

{
  return ot::Mle::Mle::IsFullRouter(this);
}

void ot::Mle::Mle::SetThreadCoexConfig(ot::InstanceLocator *a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v124 = a1;
  v123 = a2;
  v122 = a3;
  v121 = a4;
  v107 = a1;
  v120 = 0;
  v119 = 3;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  AudioTaskId = ot::Mle::Mle::getAudioTaskId(a1);
  hasHIDConnected = ot::Mle::Mle::hasHIDConnected(v107);
  v111 = 0;
  v108 = v123;
  v109 = ot::Mle::RoleToString(v122);
  v4 = ot::Mle::Mle::AttachStateToString(v121);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s: Attach state change:%d role:%s, Attach state:%s", v5, v6, v7, v8, v9, v10, "SetThreadCoexConfig", v123 & 1, v109, v4);
  v110 = v122;
  if (!v122)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s Thread will go to OFFLINE, reset Thread priority/fragment size/data poll timeout/duty cycle.", v11, v12, v13, v14, v15, v16, "SetThreadCoexConfig");
    Instance = ot::InstanceLocator::GetInstance(v107);
    v120 = otPlatVendorCoexThreadClear(Instance);
    goto LABEL_45;
  }

  switch(v110)
  {
    case 1:
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s During Detached role, ChildupdateReq/Attach State change will happen, config the Thread Coex setting", v11, v12, v13, v14, v15, v16, "SetThreadCoexConfig");
      v111 = ot::Mle::Mle::getHIDEqual1125Count(v107) > 0;
      v18 = ot::InstanceLocator::GetInstance(v107);
      v120 = otPlatVendorCoexThreadDetached(v18, v123 & 1, v121, AudioTaskId, hasHIDConnected, v111);
      break;
    case 2:
      v106 = ot::Mle::RoleToString(v122);
      v19 = ot::InstanceLocator::GetInstance(v107);
      IsCslEnabled = otLinkIsCslEnabled(v19);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Device role is Child, we will adjust the coex config base on BT task, new role=%s, CslEnabled = %d", v21, v22, v23, v24, v25, v26, "SetThreadCoexConfig", v106, IsCslEnabled);
      v27 = ot::InstanceLocator::GetInstance(v107);
      if (otLinkIsCslEnabled(v27))
      {
        v28 = ot::InstanceLocator::GetInstance(v107);
        v120 = otLinkSetPollPeriod(v28, 0x3E8u);
        if (v120)
        {
          break;
        }
      }

      else
      {
        v29 = ot::InstanceLocator::GetInstance(v107);
        v120 = otLinkSetPollPeriod(v29, 0x1C2u);
        if (v120)
        {
          break;
        }
      }

      v120 = ot::Mle::Mle::adjustPriorityAndFragmentToBTLoad(v107, ot::Mle::current_coex_radioload);
      if (!v120)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: Attach procedure is complete, set RX on IDLE use QOS Percentage Policy config to FALSE", v30, v31, v32, v33, v34, v35);
        ot::InstanceLocator::GetInstance(v107);
        if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0)
        {
          v36 = ot::InstanceLocator::GetInstance(v107);
          v120 = otPlatVendorSetRxOnIdleUseQOSPercentagePolicyConfig(v36, 0);
        }
      }

      break;
    case 4:
    case 3:
      IsSleepyRouter = ot::Mle::Mle::IsSleepyRouter(v107);
      v37 = ot::Mle::Mle::WorAttachStateToString(v107, *(v107 + 128));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: Device role is Router/Leader, and Sleepy Router Config: %d, Peripheral Attach State: %s", v38, v39, v40, v41, v42, v43, IsSleepyRouter, v37);
      if (ot::Mle::Mle::IsSleepyRouter(v107))
      {
        if (*(v107 + 128))
        {
          v119 = 4;
        }

        else
        {
          v118 = 1;
          if (*(v107 + 65))
          {
            v119 = 3;
          }

          else
          {
            v119 = 5;
          }

          if (!ot::Mle::Mle::isThreadAlwaysOnFeatureEnabled(v107))
          {
            v85 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v107);
            ot::MeshForwarder::SetRxOnWhenIdle(v85, 1, v86, v87, v88, v89, v90, v91);
          }
        }
      }

      else
      {
        if (ot::Mle::Mle::isThreadAlwaysOnFeatureEnabled(v107))
        {
          v51 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v107);
          ot::MeshForwarder::SetRxOnWhenIdle(v51, 1, v52, v53, v54, v55, v56, v57);
        }

        if (ot::Mle::fwUpdateEnabled)
        {
          v58 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v107);
          if (ot::Mle::MleRouter::HasChildrenInStateAnyExceptInvalid(v58))
          {
            ot::InstanceLocator::GetInstance(v107);
            if (otPlatRadioGetRcp2Vendor2Enabled())
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate enabled, Device role is Router/Leader:COEX_THREAD_PRIORITY_HAS_ANY_CHILD_OR_NEIGHBOR", v65, v66, v67, v68, v69, v70);
              v119 = 6;
            }

            else
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate enabled, Device role is Router/Leader:COEX_THREAD_PRIORITY_HIGH", v65, v66, v67, v68, v69, v70);
              v119 = 3;
            }

            ot::Mle::Mle::adjustDutyCycleForFR(v107, ot::Mle::current_coex_radioload, &v116, &v115, &v114);
          }

          else
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate enabled, Device role is Router/Leader: Default COEX_THREAD_SCAN_PRIORITY", v59, v60, v61, v62, v63, v64);
            v119 = 5;
            v118 = 1;
          }
        }

        else
        {
          ot::InstanceLocator::GetInstance(v107);
          if (otPlatRadioGetRcp2Vendor2Enabled())
          {
            v77 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v107);
            if (ot::ChildTable::HasChildren(v77, 0) || (v84 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v107), ot::RouterTable::GetNeighborCount(v84, 1u)))
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate disabled, Device role is Router/Leader: COEX_THREAD_PRIORITY_HAS_ANY_CHILD_OR_NEIGHBOR", v78, v79, v80, v81, v82, v83);
              v119 = 6;
              ot::Mle::Mle::adjustDutyCycleForFR(v107, ot::Mle::current_coex_radioload, &v116, &v115, &v114);
            }

            else
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate disabled, Device role is Router/Leader: COEX_THREAD_PRIORITY_HIGH", v78, v79, v80, v81, v82, v83);
              v119 = 3;
              ot::Mle::Mle::adjustDutyCycleForFR(v107, ot::Mle::current_coex_radioload, &v116, &v115, &v114);
            }
          }

          else
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate disabled, Device role is Router/Leader: Default COEX_THREAD_PRIORITY_HIGH", v71, v72, v73, v74, v75, v76);
            v119 = 3;
            ot::Mle::Mle::adjustDutyCycleForFR(v107, ot::Mle::current_coex_radioload, &v116, &v115, &v114);
          }
        }
      }

      v104[9] = v104;
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Set Thread coex config: priority to %d, OverridePriority to %d, OverridePriorityDuration to %d us, max fragment size to %d, data poll timeout to %d, and DutyCycleHigh(x) %u, DutyCycleInterval(y) %u, DatapollAlign %u and Qos percentage Policy", v45, v46, v47, v48, v49, v50, "SetThreadCoexConfig", v119, v118, v117, 127, 100, v116, v115, v114);
      v92 = ot::InstanceLocator::GetInstance(v107);
      v120 = otPlatVendorSetPriority(v92, v119, v118, v117);
      if (!v120)
      {
        v93 = ot::InstanceLocator::GetInstance(v107);
        otLinkSetFragmentSize(v93, 0x7Fu);
        v94 = ot::InstanceLocator::GetInstance(v107);
        otLinkSetDataPollTimeoutCoex(v94, 100);
        ot::InstanceLocator::GetInstance(v107);
        if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0)
        {
          v95 = ot::InstanceLocator::GetInstance(v107);
          v120 = otPlatVendorSetRxOnIdleUseQOSPercentagePolicyConfig(v95, 0);
          if (!v120)
          {
            v96 = ot::InstanceLocator::GetInstance(v107);
            v120 = otPlatVendorSetDutyCycle(v96, v116, v115, v114);
          }
        }
      }

      break;
  }

LABEL_45:
  if (v120)
  {
    v97 = otThreadErrorToString(v120);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "BT Load: %s Error %s while configuring the thread coex setting.", v98, v99, v100, v101, v102, v103, "SetThreadCoexConfig", v97);
  }
}

void ot::Mle::Mle::SignalChildConnectionSuccess(ot::Mle::Mle *this)
{
  ot::InstanceLocator::GetInstance(this);
  if (!otPlatVendorGetThreadJoinSession() && ot::Mle::Mle::isThreadStateMachineEnabled(this))
  {
    ot::Mle::Mle::GetDeviceMode(this);
    if (ot::Mle::Mle::IsMinimalEndDevice(this))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: ThreadConnection: Attach attempt %d successful in SED/SSED mode", v1, v2, v3, v4, v5, v6, "SignalChildConnectionSuccess", *(this + 74));
      ot::Mle::Mle::ResetAttachCounter(this);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: ThreadConnection: On successful Attach, reset mAttachCounter=%d", v7, v8, v9, v10, v11, v12, "SignalChildConnectionSuccess", *(this + 74));
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
      ot::Notifier::Signal(v13, &_mh_execute_header);
    }
  }
}

uint64_t ot::Mle::Mle::adjustPriorityAndFragmentToBTLoad(ot::Mle::Mle *this, uint64_t a2)
{
  v72 = this;
  v71 = a2;
  v54 = this;
  v70 = 0;
  v69 = a2;
  AudioTaskId = ot::Mle::Mle::getAudioTaskId(this);
  HIDLess1125Count = ot::Mle::Mle::getHIDLess1125Count(v54);
  HIDEqual1125Count = ot::Mle::Mle::getHIDEqual1125Count(v54);
  HIDGreater1125Count = ot::Mle::Mle::getHIDGreater1125Count(v54);
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 127;
  v60 = 100;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  WiFiStateId = ot::Mle::Mle::getWiFiStateId(v54);
  v46 = v69;
  v47 = HIDLess1125Count;
  v48 = HIDEqual1125Count;
  v49 = HIDGreater1125Count;
  v50 = ot::Mle::Mle::BTAudioTaskIDToStrings(v54, AudioTaskId);
  v51 = ot::Mle::Mle::WifiAssotiatedTypeToStrings(v54, WiFiStateId);
  v52 = ot::Mle::RoleToString(*(v54 + 130));
  v2 = ot::Mle::Mle::AttachStateToString(*(v54 + 132));
  v53 = v38;
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Load is %x, # HID < 11.25 is %d, # HID = 11.25 is %d, # HID > 11.25 is %d, btAudioTask is %s, wifiAssociatedType is %s, current node_role is %s, current attach_state is %s", v3, v4, v5, v6, v7, v8, "adjustPriorityAndFragmentToBTLoad", v69, HIDLess1125Count, HIDEqual1125Count, HIDGreater1125Count, v50, v51, v52, v2);
  if (!*(v54 + 130) || *(v54 + 130) == 1)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Thread is not associated yet. Don't/No need to change priority/fragment size.", v9, v10, v11, v12, v13, v14, "adjustPriorityAndFragmentToBTLoad");
    return v70;
  }

  if (*(v54 + 130) == 3 || *(v54 + 130) == 4)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Device is sleepy router, will tune the priority/frament setting for it later", v9, v10, v11, v12, v13, v14, "adjustPriorityAndFragmentToBTLoad");
    return v70;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s BT audio task change to %d", v9, v10, v11, v12, v13, v14, "adjustPriorityAndFragmentToBTLoad", AudioTaskId);
  v45 = AudioTaskId;
  if (AudioTaskId)
  {
    if (v45 == 2 || v45 == 1)
    {
      goto LABEL_22;
    }

    if (v45 != 4 && v45 != 3)
    {
      if ((v45 - 5) <= 2)
      {
LABEL_22:
        v64 = 2;
        v61 = 63;
        v60 = 100;
        Instance = ot::InstanceLocator::GetInstance(v54);
        if (!otLinkIsCslEnabled(Instance))
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s X/Y will kick in and alignment will enable for priority 2 case.", v15, v16, v17, v18, v19, v20, "adjustPriorityAndFragmentToBTLoad");
          v58 = 2500;
          v57 = 60000;
          v56 = 1;
        }

        if (AudioTaskId == 2 || AudioTaskId == 5 || AudioTaskId == 1 || AudioTaskId == 6)
        {
          v59 = 60;
        }

        else
        {
          v59 = 60;
        }

        goto LABEL_43;
      }

      if (v45 != 8)
      {
        if (v45 != 10 && v45 != 9)
        {
          goto LABEL_43;
        }

        goto LABEL_22;
      }
    }

    v64 = 1;
    v63 = 1;
    v62 = 15000;
    v61 = 127;
    v60 = 100;
    if (ot::Mle::Mle::hasHIDConnected(v54))
    {
      if (WiFiStateId == 2)
      {
        v61 = 63;
      }

      v56 = 1;
      v59 = 60;
      v58 = 2500;
      v57 = 60000;
    }
  }

  else if (ot::Mle::Mle::hasHIDConnected(v54))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is no audio task, but the HID is connected.", v22, v23, v24, v25, v26, v27, "adjustPriorityAndFragmentToBTLoad");
    v64 = 1;
    v60 = 100;
    v56 = 1;
    v59 = 60;
    v58 = 2500;
    v57 = 60000;
    if (HIDEqual1125Count)
    {
      v57 = 90000;
    }

    if (WiFiStateId == 2)
    {
      v61 = 63;
      v63 = 1;
    }

    else
    {
      v63 = 2;
    }

    v62 = 15000;
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is no BT audio/non-audio activity, config coex based on SED/SSED.", v22, v23, v24, v25, v26, v27, "adjustPriorityAndFragmentToBTLoad");
    v28 = ot::InstanceLocator::GetInstance(v54);
    if (otLinkIsCslEnabled(v28))
    {
      v64 = 2;
    }

    else
    {
      v64 = 1;
      if (WiFiStateId == 2)
      {
        v63 = 1;
      }

      else
      {
        v63 = 2;
      }

      v62 = 40000;
    }
  }

LABEL_43:
  v39 = &v64;
  v40 = &v61;
  v41 = &v60;
  v42 = &v58;
  v43 = &v57;
  v44 = &v56;
  v38[10] = v38;
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Set Thread coex config: priority to %d, overridePriority to %d, overridePriorityDuration to %d us, max fragment size to %d, data poll timeout to %d, dt_high(x) %u, dt_interval(y) %u, dt_datapoll_align %u, B2BDataPollDelay %d ms", v15, v16, v17, v18, v19, v20, "adjustPriorityAndFragmentToBTLoad", v64, v63, v62, v61, v60, v58, v57, v56 & 1, v59);
  v29 = ot::InstanceLocator::GetInstance(v54);
  otPlatVendorCoexConfigTest(v29, v39, v40, v41, v42, v43, v44);
  ot::InstanceLocator::GetInstance(v54);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    if (!ot::Mle::Mle::IsFullRouter(v54))
    {
      v64 = 1;
      v30 = ot::InstanceLocator::GetInstance(v54);
      v70 = otPlatVendorSetPriority(v30, v64, v63, v62);
      if (v70)
      {
        return v70;
      }
    }
  }

  else
  {
    v31 = ot::InstanceLocator::GetInstance(v54);
    v70 = otPlatVendorSetPriority(v31, v64, v63, v62);
    if (v70)
    {
      return v70;
    }
  }

  v32 = ot::InstanceLocator::GetInstance(v54);
  otLinkSetFragmentSize(v32, v61);
  v33 = ot::InstanceLocator::GetInstance(v54);
  otLinkSetDataPollTimeoutCoex(v33, v60);
  ot::InstanceLocator::GetInstance(v54);
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || (v34 = ot::InstanceLocator::GetInstance(v54), !otPlatVendorSetDutyCycle(v34, v58, v57, v56 & 1)))
  {
    v35 = ot::InstanceLocator::GetInstance(v54);
    otLinkSetB2BDataPollDelay(v35, v59);
    v36 = ot::InstanceLocator::GetInstance(v54);
    otLinkSetSessionPriority(v36, v64);
  }

  return v70;
}

void ot::Mle::Mle::adjustDutyCycleForFR(ot::Mle::Mle *this, unint64_t a2, unsigned int *a3, unsigned int *a4, BOOL *a5)
{
  AudioTaskId = ot::Mle::Mle::getAudioTaskId(this);
  *a5 = 0;
  if (ot::Mle::Mle::hasHIDConnected(this))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is HID connected, don't config the x/y setting for FR.", v5, v6, v7, v8, v9, v10, "adjustDutyCycleForFR");
  }

  else if (AudioTaskId)
  {
    v11 = ot::Mle::Mle::BTAudioTaskIDToStrings(this, AudioTaskId);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is BT audio task %s, config the x/y setting as %d/%d for FR.", v12, v13, v14, v15, v16, v17, "adjustDutyCycleForFR", v11, 10000, 120000);
    *a3 = 10000;
    *a4 = 120000;
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is no BT audio task, config the x/y setting as %d/%d for FR.", v5, v6, v7, v8, v9, v10, "adjustDutyCycleForFR", 10000, 60000);
    *a3 = 10000;
    *a4 = 60000;
  }
}

const char *ot::Mle::Mle::BTAudioTaskIDToStrings(ot::Mle::Mle *this, unsigned __int8 a2)
{
  if (a2 >= ot::GetArrayLength<char const*,(unsigned short)11>())
  {
    return "invalid BTAudioTaskID";
  }

  else
  {
    return ot::Mle::Mle::BTAudioTaskIDToStrings(unsigned char)::BTAudioTaskIDStrings[a2];
  }
}

{
  return ot::Mle::Mle::BTAudioTaskIDToStrings(this, a2);
}

uint64_t ot::Mle::Mle::adjustDutyCycleForSRDiscoverScan(ot::Mle::Mle *this, char a2)
{
  v27[4] = 0;
  *v27 = ot::Mle::Mle::getAudioTaskId(this);
  v26 = 0;
  v25 = 0;
  if (a2)
  {
    if (ot::Mle::Mle::hasHIDConnected(this) || v27[0])
    {
      v26 = 5000;
      v25 = 60000;
      v23 = ot::Mle::Mle::BTAudioTaskIDToStrings(this, v27[0]);
      hasHIDConnected = ot::Mle::Mle::hasHIDConnected(this);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is BT audio task: %s or HID is connected: %d, config the x/y setting as %d/%d for SR discovery scan.", v15, v16, v17, v18, v19, v20, "adjustDutyCycleForSRDiscoverScan", v23, hasHIDConnected, 5000, 60000);
    }

    else
    {
      v26 = 10000;
      v25 = 60000;
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is no BT activity, config the x/y setting as %d/%d for SR discovery scan.", v8, v9, v10, v11, v12, v13, "adjustDutyCycleForSRDiscoverScan", 10000, 60000);
    }
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s SR discovery scan is done, config the x/y setting as %d/%d to remove it.", v2, v3, v4, v5, v6, v7, "adjustDutyCycleForSRDiscoverScan", 0, 0);
  }

  ot::InstanceLocator::GetInstance(this);
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0)
  {
    Instance = ot::InstanceLocator::GetInstance(this);
    otPlatVendorSetDutyCycle(Instance, v26, v25, 0);
  }

  return *&v27[1];
}

const char *ot::Mle::Mle::WifiAssotiatedTypeToStrings(ot::Mle::Mle *this, unsigned __int8 a2)
{
  if (a2 >= ot::GetArrayLength<char const*,(unsigned short)5>())
  {
    return "invalid WifiAssotiatedType";
  }

  else
  {
    return ot::Mle::Mle::WifiAssotiatedTypeToStrings(unsigned char)::WifiAssotiatedTypeStrings[a2];
  }
}

{
  return ot::Mle::Mle::WifiAssotiatedTypeToStrings(this, a2);
}

uint64_t ot::Mle::Mle::getPrioritizedWindowSize(ot::Mle::Mle *this)
{
  if (ot::Mle::Mle::hasHIDConnected(this) || ot::Mle::Mle::getAudioEscoLeaScoAosStatus(this))
  {
    return 5;
  }

  else
  {
    return 10;
  }
}

void ot::Mle::Mle::SetCoexLoadMapValue(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = this;
  v30 = a2;
  v27 = this;
  v29 = 0;
  v28 = &unk_10053A000;
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Setting Coex Load from: %llx -> to :%llx", a3, a4, a5, a6, a7, a8, "SetCoexLoadMapValue", ot::Mle::current_coex_radioload, a2);
  if (ot::Mle::current_coex_radioload == v30)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s New load is same as current load, hence ignoring this event", v8, v9, v10, v11, v12, v13, "SetCoexLoadMapValue");
  }

  else
  {
    ot::Mle::current_coex_radioload = v30;
    if (ot::Mle::Mle::isThreadSessionEnabled(v27))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Thread is On, change Coex Config based on new coex radioload", v14, v15, v16, v17, v18, v19, "SetCoexLoadMapValue");
      ot::Mle::Mle::SetThreadCoexConfig(v27, 0, *(v27 + 130), *(v27 + 132));
    }

    v20 = otThreadErrorToString(v29);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s SetCoexLoadMapValue returend %s", v21, v22, v23, v24, v25, v26, "SetCoexLoadMapValue", v20);
  }

  ot::Mle::Mle::LogCoExLoad(v27);
  if (ot::Mle::Mle::IsSleepyRouter(v27))
  {
    ot::Mle::Mle::HandleDynamicCSLPeriod(v27);
  }
}

void ot::Mle::Mle::LogCoExLoad(ot::Mle::Mle *this)
{
  v24 = this;
  v8 = this;
  AudioTaskId = ot::Mle::Mle::getAudioTaskId(this);
  BTLoad = ot::Mle::Mle::getBTLoad(v8);
  HIDLess1125Count = ot::Mle::Mle::getHIDLess1125Count(v8);
  HIDEqual1125Count = ot::Mle::Mle::getHIDEqual1125Count(v8);
  HIDGreater1125Count = ot::Mle::Mle::getHIDGreater1125Count(v8);
  WiFiStateId = ot::Mle::Mle::getWiFiStateId(v8);
  WiFiP2PStatus = ot::Mle::Mle::getWiFiP2PStatus(v8);
  v9 = BTLoad;
  v10 = HIDLess1125Count;
  v11 = HIDEqual1125Count;
  v12 = HIDGreater1125Count;
  v13 = ot::Mle::Mle::BTAudioTaskIDToStrings(v8, AudioTaskId);
  v14 = ot::Mle::Mle::WifiAssotiatedTypeToStrings(v8, WiFiStateId);
  v15 = WiFiP2PStatus;
  v16 = ot::Mle::RoleToString(*(v8 + 130));
  v1 = ot::Mle::Mle::AttachStateToString(*(v8 + 132));
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Load is %x, # HID < 11.25 is %d, # HID = 11.25 is %d, # HID > 11.25 is %d, btAudioTask is %s, Wifi Associated type is %s, wifi p2p status is %d, current node_role is %s, current attach_state is %s", v2, v3, v4, v5, v6, v7, "LogCoExLoad", BTLoad, HIDLess1125Count, HIDEqual1125Count, HIDGreater1125Count, v13, v14, WiFiP2PStatus, v16, v1);
}

void ot::Mle::Mle::HandleDynamicCSLPeriod(ot::Mle::Mle *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  CslPeriod = ot::Mac::Mac::GetCslPeriod(v1);
  if (ot::Mle::Mle::isThreadStateMachineEnabled(this) && (ot::Mle::Mle::getAudioTaskId(this) || ot::Mle::Mle::hasHIDConnected(this)) && ot::Mle::Mle::IsCslPeripheralAttached(this) && CslPeriod == 250 && (ot::Mle::Mle::getAudioTaskId(this) > 0 || ot::Mle::Mle::hasHIDConnected(this)))
  {
    AudioTaskId = ot::Mle::Mle::getAudioTaskId(this);
    v11 = ot::Mle::Mle::BTAudioTaskIDToStrings(this, AudioTaskId);
    hasHIDConnected = ot::Mle::Mle::hasHIDConnected(this);
    v10 = "Has";
    if (!hasHIDConnected)
    {
      v10 = "No";
    }

    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s WED stays at same eCSL period after change in BT Load. Audio Task ID is %s, %s HID connected", v3, v4, v5, v6, v7, v8, "HandleDynamicCSLPeriod", v11, v10);
  }
}

uint64_t ot::Notifier::Update<ot::Mle::DeviceRole>(void *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
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
  return ot::Notifier::Update<ot::Mle::DeviceRole>(a1, a2, a3, a4);
}

void ot::Mle::Mle::SetAttachState(ot::InstanceLocator *result, unsigned __int8 a2)
{
  v20 = result;
  v19 = a2;
  v18 = result;
  if (a2 != *(result + 132))
  {
    v16 = ot::Mle::Mle::AttachStateToString(*(v18 + 132));
    v2 = ot::Mle::Mle::AttachStateToString(v19);
    v17 = &ot::Mle::kLogModuleName;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "AttachState %s -> %s", v3, v4, v5, v6, v7, v8, v16, v2);
    v9 = ot::Mle::RoleToString(*(v18 + 130));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(v17, "BT Load: In %s, mRole is %s", v10, v11, v12, v13, v14, v15, "SetAttachState", v9);
    ot::Mle::Mle::SetThreadCoexConfig(v18, 1u, *(v18 + 130), v19);
    *(v18 + 132) = v19;
  }
}

uint64_t ot::Mle::Mle::IncrementAttachCounter(uint64_t this)
{
  if (!++*(this + 148))
  {
    --*(this + 148);
  }

  ++*(this + 626);
  return this;
}

uint64_t ot::Mle::Mle::GenerateMleIid(ot::Mle::Mle *this)
{
  ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
  Iid = ot::Ip6::Address::GetIid(v1);
  return ot::Ip6::InterfaceIdentifier::GenerateRandom(Iid, v3, v4);
}

void ot::Mle::Mle::Restore(ot::Mle::Mle *this)
{
  v147 = this;
  active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
  ot::MeshCoP::DatasetManager::Restore(active);
  IgnoreError();
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
  ot::MeshCoP::DatasetManager::Restore(v2);
  IgnoreError();
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
  ot::DuaManager::Restore(v3);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
  v146 = ot::Settings::Read<ot::SettingsBase::NetworkInfo>(v4, v149);
  if (v146)
  {
    v5 = ot::ErrorToString(v146);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Read NetworkInfo failed, error=%s.", v6, v7, v8, v9, v10, v11, "Restore", v5);
    if (v146 == 23)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Clear mWasChild for new home setting file.", v12, v13, v14, v15, v16, v17, "Restore");
      *(this + 64) = 0;
    }
  }

  else
  {
    v128 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    KeySequence = ot::SettingsBase::NetworkInfo::GetKeySequence(v149, v18);
    ot::KeyManager::SetCurrentKeySequence(v128, KeySequence, 0);
    v129 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    MleFrameCounter = ot::SettingsBase::NetworkInfo::GetMleFrameCounter(v149, v129);
    ot::KeyManager::SetMleFrameCounter(v129, MleFrameCounter);
    v130 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    MacFrameCounter = ot::SettingsBase::NetworkInfo::GetMacFrameCounter(v149, v130);
    ot::KeyManager::SetAllMacFrameCounters(v130, MacFrameCounter, 0);
    v23 = ot::SettingsBase::NetworkInfo::GetKeySequence(v149, v22);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Setting Key Sequence: %u", v24, v25, v26, v27, v28, v29, "Restore", v23);
    v31 = ot::SettingsBase::NetworkInfo::GetMleFrameCounter(v149, v30);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Setting MLE Frame Counter: %u", v32, v33, v34, v35, v36, v37, "Restore", v31);
    v39 = ot::SettingsBase::NetworkInfo::GetMacFrameCounter(v149, v38);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Setting All MAC Frame Counter: %u", v40, v41, v42, v43, v44, v45, "Restore", v39);
    if (ot::SettingsBase::NetworkInfo::GetVersion(v149, v46) == 4)
    {
      v126 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::SettingsBase::NetworkInfo::GetExtAddress(v149);
      ot::Mac::Mac::SetExtAddress(v126, ExtAddress);
      ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
      v127 = v48;
      MeshLocalIid = ot::SettingsBase::NetworkInfo::GetMeshLocalIid(v149);
      ot::Ip6::Address::SetIid(v127, MeshLocalIid);
      if (ot::SettingsBase::NetworkInfo::GetRole(v149) - 2 <= 2)
      {
        *(this + 64) = ot::SettingsBase::NetworkInfo::GetWasChildStatus(v149);
        v125 = *(this + 64);
        WasChildStatus = ot::SettingsBase::NetworkInfo::GetWasChildStatus(v149);
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Setting mWasChild to: %d, settings value: %d", v51, v52, v53, v54, v55, v56, "Restore", v125 & 1, WasChildStatus & 1);
        Role = ot::SettingsBase::NetworkInfo::GetRole(v149);
        if (Role == 3 || ot::SettingsBase::NetworkInfo::GetRole(v149) == 4)
        {
          rep = std::chrono::system_clock::now().__d_.__rep_;
          v144 = std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>::time_since_epoch[abi:dn200100](&rep);
          v141 = 1;
          std::chrono::duration<long long,std::ratio<1l,1000l>>::duration[abi:dn200100]<int,0>(&v142, &v141);
          v145 = std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(&v144, &v142);
          LastDetachTime = ot::SettingsBase::NetworkInfo::GetLastDetachTime(v149);
          if (v145 > LastDetachTime)
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Router Restore: now(%llu), last detach time (%llu) diff_ms(%llu),routerRestoreThreshold(%u)", v58, v59, v60, v61, v62, v63, v145, LastDetachTime, v145 - LastDetachTime, 120000);
            if (v145 - LastDetachTime > 0x1D4C0)
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Router Restore: now is greater than last detach time, reset RLOC and exit restore", v64, v65, v66, v67, v68, v69);
              v70 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
              ot::Mac::Mac::SetShortAddress(v70, 65534);
              *(this + 72) = -2;
              return;
            }
          }
        }

        v122 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        Rloc16 = ot::SettingsBase::NetworkInfo::GetRloc16(v149, v71);
        ot::Mac::Mac::SetShortAddress(v122, Rloc16);
        *(this + 72) = ot::SettingsBase::NetworkInfo::GetRloc16(v149, v73);
        v123 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v74 = ot::SettingsBase::NetworkInfo::GetExtAddress(v149);
        ot::Mac::Mac::SetExtAddress(v123, v74);
        ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
        v124 = v75;
        v76 = ot::SettingsBase::NetworkInfo::GetMeshLocalIid(v149);
        ot::Ip6::Address::SetIid(v124, v76);
        if (ot::SettingsBase::NetworkInfo::GetRloc16(v149, v77) != 65534)
        {
          v79 = ot::SettingsBase::NetworkInfo::GetRloc16(v149, v78);
          if (ot::Mle::IsChildRloc16(v79, v80))
          {
            v81 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
            if (ot::Settings::Read<ot::SettingsBase::ParentInfo>(v81, v148))
            {
              v83 = ot::SettingsBase::NetworkInfo::GetRloc16(v149, v82);
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Invalid settings - no saved parent info with valid end-device RLOC16 0x%04x", v84, v85, v86, v87, v88, v89, v83);
              return;
            }

            ot::Parent::Clear((this + 192));
            v90 = ot::SettingsBase::ParentInfo::GetExtAddress(v148);
            ot::Neighbor::SetExtAddress(this + 24, v90);
            Version = ot::SettingsBase::ParentInfo::GetVersion(v148, v91);
            ot::Neighbor::SetVersion(this + 192, Version);
            ot::Mle::DeviceMode::DeviceMode(&v139, 11);
            ot::Neighbor::SetDeviceMode(this + 192, v139);
            v94 = ot::SettingsBase::NetworkInfo::GetRloc16(v149, v93);
            v95 = ot::Mle::RouterIdFromRloc16(v94);
            v96 = ot::Mle::Rloc16FromRouterId(v95);
            ot::Neighbor::SetRloc16(this + 192, v96);
            v136 = std::chrono::system_clock::now().__d_.__rep_;
            v137 = std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>::time_since_epoch[abi:dn200100](&v136);
            v134 = 1;
            std::chrono::duration<long long,std::ratio<1l,1000l>>::duration[abi:dn200100]<int,0>(&v135, &v134);
            v138 = std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(&v137, &v135);
            LastHeardTime = ot::SettingsBase::ParentInfo::GetLastHeardTime(v148);
            if (v138 > LastHeardTime)
            {
              if (ot::Mle::Mle::isThreadCertEnabled(this))
              {
                v132 = 240000;
              }

              else
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Cert Flag disabled", v103, v104, v105, v106, v107, v108, "Restore");
                v132 = 30000;
              }

              ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Parent Restore: now(%llu), last heard time (%llu) diff_ms(%llu),kParentRestoreThreshold_ms(%u)", v103, v104, v105, v106, v107, v108, v138, LastHeardTime, v138 - LastHeardTime, v132);
              if (v138 - LastHeardTime > v132)
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Parent Restore: now is greater than last heard time, reset RLOC", v109, v110, v111, v112, v113, v114);
                ot::Neighbor::SetState(this + 192, 0);
                ot::Neighbor::SetRloc16(this + 192, 65534);
              }

              else
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Parent Restore now(%llu) is less than last heard time(%llu), dont reset RLOC ", v109, v110, v111, v112, v113, v114, v138, LastHeardTime);
                ot::Neighbor::SetState(this + 192, 1);
              }
            }

            else
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Restore now(%llu) is less than last heard time(%llu), dont reset RLOC,possible wrap around", v97, v98, v99, v100, v101, v102, v138, LastHeardTime);
              ot::Neighbor::SetState(this + 192, 1);
            }

            *(this + 73) = ot::Neighbor::GetRloc16((this + 192));
          }

          else
          {
            v120 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
            v115 = ot::Mle::Mle::GetRloc16(this);
            v116 = ot::Mle::RouterIdFromRloc16(v115);
            ot::Mle::MleRouter::SetRouterId(v120, v116);
            v121 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
            PreviousPartitionId = ot::SettingsBase::NetworkInfo::GetPreviousPartitionId(v149, v117);
            ot::Mle::MleRouter::SetPreviousPartitionId(v121, PreviousPartitionId);
            v119 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
            ot::ChildTable::Restore(v119);
          }

          *(this + 129) = *(this + 129) & 0xDF | (32 * (ot::SettingsBase::NetworkInfo::GetRole(v149) == 4));
          *(this + 129) = *(this + 129) & 0xFB | 4;
        }
      }
    }
  }
}

uint64_t ot::Settings::Read<ot::SettingsBase::NetworkInfo>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  ot::SettingsBase::NetworkInfo::Init(a2);
  return ot::Settings::ReadEntry(a1, 3u, a2, 0x2Fu);
}

{
  return ot::Settings::Read<ot::SettingsBase::NetworkInfo>(a1, a2);
}

uint64_t ot::KeyManager::SetMleFrameCounter(uint64_t this, int a2)
{
  *(this + 56) = a2;
  return this;
}

{
  return ot::KeyManager::SetMleFrameCounter(this, a2);
}

uint64_t std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(void *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = *a1;
  v3 = std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](&v5);
  std::chrono::duration<long long,std::ratio<1l,1000000l>>::duration[abi:dn200100]<long long,std::ratio<1l,1000l>,0>(&v4, v6);
  return v3 / std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](&v4);
}

uint64_t ot::SettingsBase::NetworkInfo::GetLastDetachTime(ot::SettingsBase::NetworkInfo *this)
{
  return *(this + 38);
}

{
  return ot::SettingsBase::NetworkInfo::GetLastDetachTime(this);
}

uint64_t ot::Settings::Read<ot::SettingsBase::ParentInfo>(ot::InstanceLocator *a1, ot::SettingsBase::ParentInfo *a2)
{
  ot::SettingsBase::ParentInfo::Init(a2);
  return ot::Settings::ReadEntry(a1, 4u, a2, 0x16u);
}

{
  return ot::Settings::Read<ot::SettingsBase::ParentInfo>(a1, a2);
}

uint64_t ot::Mle::MleRouter::SetPreviousPartitionId(uint64_t this, int a2)
{
  *(this + 35696) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetPreviousPartitionId(this, a2);
}

uint64_t ot::Mle::Mle::StoreParentInfo(ot::Mle::Mle *this)
{
  v39 = this;
  v28 = this;
  v38 = 0;
  v37 = 0;
  if (!ot::Mle::Mle::IsAttached(this) || !ot::Mle::Mle::IsChild(v28))
  {
    goto LABEL_7;
  }

  v26 = v40;
  ot::SettingsBase::ParentInfo::Init(v40);
  ot::Neighbor::GetExtAddress((v28 + 192));
  ot::SettingsBase::ParentInfo::SetExtAddress(v40, v1);
  Version = ot::Neighbor::GetVersion((v28 + 192));
  ot::SettingsBase::ParentInfo::SetVersion(v40, Version);
  v27 = v28 + 344;
  ot::Neighbor::GetExtAddress((v28 + 192));
  Parent = ot::NeighborTable::FindParent((v28 + 344), v3, 1);
  v36 = Parent;
  if (!Parent)
  {
    v38 = 23;
    goto LABEL_8;
  }

  v23 = &Now;
  Now = ot::TimerMilli::GetNow(Parent);
  LastHeard = ot::Neighbor::GetLastHeard(v36);
  v37 = ot::Time::operator-(&Now, &LastHeard);
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v24 = &v32;
  v32 = std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>::time_since_epoch[abi:dn200100](&rep);
  v29 = 1;
  v25 = &v30;
  std::chrono::duration<long long,std::ratio<1l,1000l>>::duration[abi:dn200100]<int,0>(&v30, &v29);
  v33 = std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(&v32, &v30);
  v37 = v33 - v37;
  ot::SettingsBase::ParentInfo::SetLastHeardTime(v40, v37);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(v28);
  v6 = ot::Settings::Save<ot::SettingsBase::ParentInfo>(v5, v40);
  v38 = v6;
  if (!v6)
  {
LABEL_7:
    IsAttached = ot::Mle::Mle::IsAttached(v28);
    IsChild = ot::Mle::Mle::IsChild(v28);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Store Parent Information isAttached=%d isChild=%d lastTransactionTime=%llu", v8, v9, v10, v11, v12, v13, IsAttached, IsChild, v37);
  }

LABEL_8:
  if (v38)
  {
    v14 = ot::ErrorToString(v38);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Store Parent Information failed error=%s", v15, v16, v17, v18, v19, v20, v14);
  }

  return v38;
}

BOOL ot::Mle::Mle::IsAttached(ot::Mle::Mle *this)
{
  v3 = 1;
  if (!ot::Mle::Mle::IsChild(this))
  {
    v3 = 1;
    if (!ot::Mle::Mle::IsRouter(this))
    {
      return ot::Mle::Mle::IsLeader(this);
    }
  }

  return v3;
}

uint64_t ot::SettingsBase::ParentInfo::Init(ot::SettingsBase::ParentInfo *this)
{
  ot::Clearable<ot::SettingsBase::ParentInfo>::Clear(this);
  return ot::SettingsBase::ParentInfo::SetVersion(this, 2u);
}

{
  return ot::SettingsBase::ParentInfo::Init(this);
}

uint64_t ot::SettingsBase::ParentInfo::SetExtAddress(uint64_t this, const ot::Mac::ExtAddress *a2)
{
  *(this + 12) = *a2;
  return this;
}

{
  return ot::SettingsBase::ParentInfo::SetExtAddress(this, a2);
}

uint64_t ot::SettingsBase::ParentInfo::SetVersion(ot::SettingsBase::ParentInfo *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 10) = result;
  return result;
}

{
  return ot::SettingsBase::ParentInfo::SetVersion(this, a2);
}

uint64_t ot::SettingsBase::ParentInfo::SetLastHeardTime(uint64_t this, uint64_t a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::SettingsBase::ParentInfo::SetLastHeardTime(this, a2);
}

uint64_t ot::Settings::Save<ot::SettingsBase::ParentInfo>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  return ot::Settings::SaveEntry(a1, 4u, a2, v3, 0x16u);
}

{
  return ot::Settings::Save<ot::SettingsBase::ParentInfo>(a1, a2);
}

uint64_t ot::Mle::Mle::Store(ot::Mle::Mle *this)
{
  v35 = 0;
  if (!ot::Mle::Mle::IsCslPeripheralAttaching(this))
  {
    ot::SettingsBase::NetworkInfo::Init(v36);
    if (ot::Mle::Mle::IsAttached(this))
    {
      ot::SettingsBase::NetworkInfo::SetRole(v36, *(this + 130));
      Rloc16 = ot::Mle::Mle::GetRloc16(this);
      ot::SettingsBase::NetworkInfo::SetRloc16(v36, Rloc16);
      PartitionId = ot::Mle::LeaderData::GetPartitionId((this + 184));
      ot::SettingsBase::NetworkInfo::SetPreviousPartitionId(v36, PartitionId);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v3);
      ot::SettingsBase::NetworkInfo::SetExtAddress(v36, ExtAddress);
      ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
      Iid = ot::Ip6::Address::GetIid(v5);
      ot::SettingsBase::NetworkInfo::SetMeshLocalIid(v36, Iid);
      ot::SettingsBase::NetworkInfo::SetVersion(v36, 4u);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Store Last detach time=%llu", v7, v8, v9, v10, v11, v12, *(this + 110));
      ot::SettingsBase::NetworkInfo::SetLastDetachTime(v36, *(this + 110));
      ot::SettingsBase::NetworkInfo::SetWasChildStatus(v36, *(this + 64) & 1);
      if (ot::Mle::Mle::IsChild(this))
      {
        ot::Mle::Mle::StoreParentInfo(this);
      }
    }

    else
    {
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
      if (ot::Settings::Read<ot::SettingsBase::NetworkInfo>(v13, v36))
      {
        return v35;
      }
    }

    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v14);
    ot::SettingsBase::NetworkInfo::SetKeySequence(v36, CurrentKeySequence);
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    MleFrameCounter = ot::KeyManager::GetMleFrameCounter(v16);
    ot::SettingsBase::NetworkInfo::SetMleFrameCounter(v36, MleFrameCounter + 1000);
    v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    MaximumMacFrameCounter = ot::KeyManager::GetMaximumMacFrameCounter(v18);
    ot::SettingsBase::NetworkInfo::SetMacFrameCounter(v36, MaximumMacFrameCounter + 1000);
    v20 = ot::Mle::DeviceMode::Get((this + 131));
    ot::SettingsBase::NetworkInfo::SetDeviceMode(v36, v20);
    v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
    v35 = ot::Settings::Save<ot::SettingsBase::NetworkInfo>(v21, v36);
    if (!v35)
    {
      v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      v23 = ot::SettingsBase::NetworkInfo::GetMleFrameCounter(v36, v22);
      ot::KeyManager::SetStoredMleFrameCounter(v32, v23);
      v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      MacFrameCounter = ot::SettingsBase::NetworkInfo::GetMacFrameCounter(v36, v33);
      ot::KeyManager::SetStoredMacFrameCounter(v33, MacFrameCounter);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Store Network Information", v25, v26, v27, v28, v29, v30);
    }
  }

  return v35;
}

uint64_t ot::SettingsBase::NetworkInfo::Init(ot::SettingsBase::NetworkInfo *this)
{
  ot::Clearable<ot::SettingsBase::NetworkInfo>::Clear(this);
  return ot::SettingsBase::NetworkInfo::SetVersion(this, 2u);
}

{
  return ot::SettingsBase::NetworkInfo::Init(this);
}

_BYTE *ot::SettingsBase::NetworkInfo::SetRole(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetRole(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetRloc16(ot::SettingsBase::NetworkInfo *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetRloc16(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetPreviousPartitionId(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 4) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetPreviousPartitionId(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetExtAddress(uint64_t this, const ot::Mac::ExtAddress *a2)
{
  *(this + 20) = *a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetExtAddress(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetMeshLocalIid(uint64_t this, const ot::Ip6::InterfaceIdentifier *a2)
{
  *(this + 28) = *a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetMeshLocalIid(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetVersion(ot::SettingsBase::NetworkInfo *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 18) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetVersion(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetLastDetachTime(uint64_t this, uint64_t a2)
{
  *(this + 38) = a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetLastDetachTime(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetWasChildStatus(uint64_t this, char a2)
{
  *(this + 46) = a2 & 1;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetWasChildStatus(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetKeySequence(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetKeySequence(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetMleFrameCounter(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetMleFrameCounter(this, a2);
}

uint64_t ot::KeyManager::GetMleFrameCounter(ot::KeyManager *this)
{
  return *(this + 14);
}

{
  return ot::KeyManager::GetMleFrameCounter(this);
}

uint64_t ot::SettingsBase::NetworkInfo::SetMacFrameCounter(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetMacFrameCounter(this, a2);
}

uint64_t ot::KeyManager::GetMaximumMacFrameCounter(ot::KeyManager *this)
{
  return ot::Mac::LinkFrameCounters::GetMaximum((this + 52));
}

{
  return ot::KeyManager::GetMaximumMacFrameCounter(this);
}

uint64_t ot::SettingsBase::NetworkInfo::SetDeviceMode(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetDeviceMode(this, a2);
}

uint64_t ot::Settings::Save<ot::SettingsBase::NetworkInfo>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  return ot::Settings::SaveEntry(a1, 3u, a2, v3, 0x2Fu);
}

{
  return ot::Settings::Save<ot::SettingsBase::NetworkInfo>(a1, a2);
}

uint64_t ot::KeyManager::SetStoredMleFrameCounter(uint64_t this, int a2)
{
  *(this + 64) = a2;
  return this;
}

{
  return ot::KeyManager::SetStoredMleFrameCounter(this, a2);
}

uint64_t ot::KeyManager::SetStoredMacFrameCounter(uint64_t this, int a2)
{
  *(this + 60) = a2;
  return this;
}

{
  return ot::KeyManager::SetStoredMacFrameCounter(this, a2);
}

uint64_t ot::Mle::Mle::UpdateLastDetachTime(ot::Mle::Mle *this)
{
  v8 = this;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v6 = std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>::time_since_epoch[abi:dn200100](&rep);
  v3 = 1;
  std::chrono::duration<long long,std::ratio<1l,1000l>>::duration[abi:dn200100]<int,0>(&v4, &v3);
  v7 = std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(&v6, &v4);
  return ot::Mle::Mle::SetLastDetachTime(this, v7);
}

uint64_t ot::Mle::Mle::SetLastDetachTime(uint64_t this, uint64_t a2)
{
  *(this + 880) = a2;
  return this;
}

{
  return ot::Mle::Mle::SetLastDetachTime(this, a2);
}

uint64_t ot::Mle::Mle::BecomeDetached(ot::Mle::Mle *this)
{
  v12 = 0;
  if (ot::Mle::Mle::IsDisabled(this))
  {
    return 13;
  }

  else if (!ot::Mle::Mle::IsDetached(this) || *(this + 132) != 2)
  {
    if (!*(this + 133))
    {
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      ot::MeshCoP::DatasetManager::Restore(v1);
      IgnoreError();
    }

    ot::Mle::Mle::SetStateDetached(this);
    ot::Neighbor::SetState(this + 192, 0);
    ot::Mle::Mle::SetRloc16(this, 0xFFFEu);
    isThreadStateMachineEnabled = ot::Mle::Mle::isThreadStateMachineEnabled(this);
    ot::InstanceLocator::GetInstance(this);
    if (!otPlatVendorGetThreadJoinSession() && isThreadStateMachineEnabled && (ot::Mle::Mle::GetDeviceMode(this), ot::Mle::Mle::IsMinimalEndDevice(this)))
    {
      if (*(this + 74))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "ThreadConnection: Attach SED/SSED attempt %d unsuccessful, stop retries", v2, v3, v4, v5, v6, v7, *(this + 74));
        *(this + 74) = 0;
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
        ot::Notifier::Signal(v8, 0x200000000);
      }

      else
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "ThreadConnection: Attach SED/SSED attempt %d unsuccessful, will continue more retries", v2, v3, v4, v5, v6, v7, *(this + 74));
        ot::Mle::Mle::Attach(this, 0);
      }
    }

    else
    {
      ot::Mle::Mle::Attach(this, 0);
    }
  }

  return v12;
}

uint64_t ot::Mle::Mle::BecomeChild(ot::Mle::Mle *this)
{
  v3 = 0;
  if (ot::Mle::Mle::IsDisabled(this))
  {
    return 13;
  }

  else if (ot::Mle::Mle::IsAttaching(this))
  {
    return 5;
  }

  else
  {
    ot::Mle::Mle::Attach(this, 0);
  }

  return v3;
}

BOOL ot::Mle::Mle::IsAttaching(ot::Mle::Mle *this)
{
  return *(this + 132) != 0;
}

{
  return ot::Mle::Mle::IsAttaching(this);
}

uint64_t ot::Mle::Mle::SearchForBetterParent(ot::Mle::Mle *this)
{
  v3 = 0;
  if (ot::Mle::Mle::IsChild(this))
  {
    ot::Mle::Mle::Attach(this, 4);
  }

  else
  {
    return 13;
  }

  return v3;
}

uint64_t ot::Mle::Mle::GetAttachStartDelay(ot::Mle::Mle *this)
{
  v19 = 1;
  if (ot::Mle::Mle::IsDetached(this))
  {
    if (*(this + 74))
    {
      v17 = *(this + 74) - 1;
      if (v17 >= 0x20uLL || (1 << v17) > 0x27)
      {
        v19 = ot::Random::NonCrypto::AddJitter(0x2710, 0x7D0u);
      }

      else
      {
        v19 = 251 << v17;
      }

      Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(0, 0x32u);
      if (Uint32InRange != 0 && Uint32InRange + v19 >= v19)
      {
        v19 += Uint32InRange;
      }

      v15 = *(this + 74);
      v7 = ot::ToUlong(v19 / 0x3E8);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Attach attempt %u unsuccessful, will try again in %lu.%03u seconds", v8, v9, v10, v11, v12, v13, v15, v7, v19 % 0x3E8);
    }

    else
    {
      v19 = 20;
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Delay before 1st Attach Attempt: %d", v1, v2, v3, v4, v5, v6, 20);
    }
  }

  return v19;
}

BOOL ot::Mle::Mle::IsRouterOrLeader(ot::Mle::Mle *this)
{
  v3 = 1;
  if (!ot::Mle::Mle::IsRouter(this))
  {
    return ot::Mle::Mle::IsLeader(this);
  }

  return v3;
}

_BYTE *ot::Mac::Mac::SetBeaconEnabled(_BYTE *this, char a2)
{
  *this = *this & 0xEF | (16 * (a2 & 1));
  return this;
}

{
  return ot::Mac::Mac::SetBeaconEnabled(this, a2);
}

void ot::Mle::Mle::SetStateChild(ot::Mle::Mle *this, unsigned __int16 a2)
{
  if (ot::Mle::Mle::IsLeader(this))
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Ip6::Netif::RemoveUnicastAddress(v7, (v2 + 35712));
  }

  ot::Mle::Mle::SetRloc16(this, a2);
  ot::Mle::Mle::SetRole(this, 2);
  ot::Mle::Mle::SetAttachState(this, 0);
  ot::TimerMilli::Start((this + 888), 0x4E20u);
  *(this + 133) = 0;
  *(this + 139) = 0;
  *(this + 140) = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetBeaconEnabled(v3, 0);
  ot::Mle::Mle::ScheduleMessageTransmissionTimer(this);
  if (ot::Mle::Mle::IsFullThreadDevice(this))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::HandleChildStart(v4, *(this + 134));
  }

  ot::Mle::Mle::InformPreviousChannel(this);
  if (*(this + 73) != 65534)
  {
    v6 = *(this + 73);
    if (v6 != ot::Neighbor::GetRloc16((this + 192)))
    {
      ++*(this + 340);
      ++*(this + 402);
      ot::Mle::Mle::InformPreviousParent(this);
    }
  }

  *(this + 73) = ot::Neighbor::GetRloc16((this + 192));
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::UpdateCsl(v5, 0);
}

uint64_t ot::Mle::Mle::InformPreviousChannel(uint64_t this)
{
  v3 = this;
  if (*(this + 152) != 0xFFFF)
  {
    if (ot::Mle::Mle::IsChild(this) || (this = ot::Mle::Mle::IsRouter(v3), (this & 1) != 0))
    {
      if (!ot::Mle::Mle::IsFullThreadDevice(v3) || ot::Mle::Mle::IsRouter(v3) || (v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v3), this = ot::Mle::MleRouter::IsRouterRoleTransitionPending(v1), (this & 1) == 0))
      {
        *(v3 + 76) = -1;
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceBeginServer>(v3);
        return ot::AnnounceBeginServer::SendAnnounce(v2, 1 << *(v3 + 142), 3, 0x3E8u);
      }
    }
  }

  return this;
}

void ot::Mle::Mle::InformPreviousParent(ot::Mle::Mle *this)
{
  v15 = this;
  v14 = 0;
  v13 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v12);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
  v13 = ot::Ip6::Ip6::NewMessage(v1, 0);
  if (v13)
  {
    v14 = ot::Message::SetLength(v13, 0);
    if (!v14)
    {
      ot::Mle::Mle::GetMeshLocalEid(this);
      ot::Ip6::MessageInfo::SetSockAddr(v12, v2);
      ot::Ip6::MessageInfo::GetPeerAddr(v12);
      ot::Ip6::Address::SetToRoutingLocator(v3, (this + 984), *(this + 73));
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
      v14 = ot::Ip6::Ip6::SendDatagram(v4, v13, v12, 0x3Bu);
      if (!v14)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Sending message to inform previous parent 0x%04x", v5, v6, v7, v8, v9, v10, *(this + 73));
      }
    }
  }

  else
  {
    v14 = 3;
  }

  ot::Logger::LogOnError(&ot::Mle::kLogModuleName, v14, "inform previous parent");
  if (v14)
  {
    if (v13)
    {
      ot::Message::Free(v13);
    }
  }
}

void ot::Mle::Mle::SetTimeout(ot::Mle::Mle *this, unsigned int a2)
{
  v4 = ot::Max<unsigned int>(a2, 5u);
  if (*(this + 39) != v4)
  {
    *(this + 39) = v4;
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
    ot::DataPollSender::RecalculatePollPeriod(v2);
    if (ot::Mle::Mle::IsChild(this))
    {
      ot::Mle::Mle::SendChildUpdateRequest(this);
      IgnoreError();
    }
  }
}

uint64_t ot::Mle::Mle::SetDeviceMode(ot::Mle::Mle *a1, char a2)
{
  v39 = a2;
  v38 = a1;
  v34 = a1;
  v37 = 0;
  v36 = *(a1 + 131);
  if (ot::Mle::DeviceMode::IsValid(&v39))
  {
    if (ot::Unequatable<ot::Mle::DeviceMode>::operator!=(v34 + 131, &v39))
    {
      v2 = v34;
      v33 = &v39;
      *(v34 + 131) = v39;
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(v2);
      ot::Utils::HistoryTracker::RecordNetworkInfo(v3);
      v31 = ot::Mle::DeviceMode::Get(&v36);
      v32 = ot::Mle::DeviceMode::Get((v34 + 131));
      v30 = v40;
      ot::Mle::DeviceMode::ToString((v34 + 131), v40);
      v4 = ot::String<(unsigned short)45>::AsCString(v40);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Mode 0x%02x -> 0x%02x [%s]", v5, v6, v7, v8, v9, v10, v31, v32, v4);
      ot::Mle::Mle::Store(v34);
      IgnoreError();
      if (!ot::Mle::DeviceMode::IsFullThreadDevice(v33))
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v34);
        ot::Mle::MleRouter::ClearAlternateRloc16(v11);
      }

      if (!ot::Mle::Mle::IsAttached(v34))
      {
        goto LABEL_17;
      }

      v35 = 0;
      if (ot::Mle::Mle::IsFullRouter(v34))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Node type is Full Router", v12, v13, v14, v15, v16, v17, "SetDeviceMode");
        ot::Mle::Mle::SetThreadCoexConfig(v34, 0, 4u, 0);
      }

      IsFullThreadDevice = ot::Mle::DeviceMode::IsFullThreadDevice(&v36);
      v18 = ot::Mle::DeviceMode::IsFullThreadDevice((v34 + 131));
      if (IsFullThreadDevice != v18)
      {
        v35 = 1;
      }

      if ((*(v34 + 129) & 0x10) == 0 && ot::Mle::DeviceMode::IsRxOnWhenIdle(&v36) && !ot::Mle::DeviceMode::IsRxOnWhenIdle((v34 + 131)))
      {
        v35 = 1;
      }

      if (v35)
      {
        ot::Mle::Mle::ResetAttachCounter(v34);
        ot::Mle::Mle::BecomeDetached(v34);
        IgnoreError();
      }

      else
      {
LABEL_17:
        if (ot::Mle::Mle::IsDetached(v34))
        {
          ot::Mle::Mle::ResetAttachCounter(v34);
          ot::Mle::Mle::SetStateDetached(v34);
          ot::Mle::Mle::Attach(v34, 0);
        }

        else if (ot::Mle::Mle::IsChild(v34))
        {
          Rloc16 = ot::Mle::Mle::GetRloc16(v34);
          ot::Mle::Mle::SetStateChild(v34, Rloc16);
          ot::Mle::Mle::SendChildUpdateRequest(v34);
          IgnoreError();
        }
      }
    }
  }

  else
  {
    v37 = 7;
  }

  if (ot::Mle::Mle::IsSleepyRouter(v34) || ot::Mle::Mle::IsMinimalEndDevice(v34))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Remove any children before transitioning to Sleepy Router or SED Role", v20, v21, v22, v23, v24, v25, "SetDeviceMode");
    v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v34);
    ot::Mle::MleRouter::RemoveChildren(v26);
    v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v34);
    ot::MessagePool::ReclaimAllBuffers(v27);
  }

  return v37;
}

uint64_t ot::Mle::DeviceMode::IsValid(ot::Mle::DeviceMode *this)
{
  return 1;
}

{
  return ot::Mle::DeviceMode::IsValid(this);
}

BOOL ot::Unequatable<ot::Mle::DeviceMode>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Mle::DeviceMode>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Mle::DeviceMode>::operator!=(a1, a2);
}

uint64_t ot::Mle::Mle::SetLeaderData(ot::Mle::Mle *this, const ot::Mle::LeaderData *a2)
{
  PartitionId = ot::Mle::LeaderData::GetPartitionId(a2);
  Weighting = ot::Mle::LeaderData::GetWeighting(a2);
  LeaderRouterId = ot::Mle::LeaderData::GetLeaderRouterId(a2);
  return ot::Mle::Mle::SetLeaderData(this, PartitionId, Weighting, LeaderRouterId);
}

uint64_t ot::Mle::Mle::SetLeaderData(ot::Mle::Mle *this, int a2, char a3, char a4)
{
  if (ot::Mle::LeaderData::GetPartitionId((this + 184)) == a2)
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::SignalIfFirst(v7, 128);
  }

  else
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::HandlePartitionChange(v4);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Signal(v5, 128);
    ++*(this + 314);
    ++*(this + 400);
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
    ot::AppMetricsManager::UpdateSystemWideThreadMeshReachabilityStatusLastTimestamp(v6, 9u);
  }

  ot::Mle::LeaderData::SetPartitionId(this + 46, a2);
  ot::Mle::LeaderData::SetWeighting(this + 184, a3);
  return ot::Mle::LeaderData::SetLeaderRouterId(this + 184, a4);
}

_DWORD *ot::Mle::LeaderData::SetPartitionId(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetPartitionId(this, a2);
}

uint64_t ot::Mle::LeaderData::SetWeighting(uint64_t this, char a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetWeighting(this, a2);
}

uint64_t ot::Mle::LeaderData::SetLeaderRouterId(uint64_t this, char a2)
{
  *(this + 7) = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetLeaderRouterId(this, a2);
}

uint64_t ot::Mle::Mle::GetLeaderRloc16(ot::Mle::Mle *this)
{
  LeaderId = ot::Mle::Mle::GetLeaderId(this);
  return ot::Mle::Rloc16FromRouterId(LeaderId);
}

{
  return ot::Mle::Mle::GetLeaderRloc16(this);
}

uint64_t ot::Mle::CommissionerAloc16FromId(ot::Mle *this)
{
  return ((this & 7) - 976);
}

{
  return ot::Mle::CommissionerAloc16FromId(this);
}

uint64_t ot::Mle::ServiceAlocFromId(ot::Mle *this)
{
  return this + 64528;
}

{
  return ot::Mle::ServiceAlocFromId(this);
}

uint64_t ot::Mle::Mle::GetLeaderData(ot::Mle::Mle *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  Version = ot::NetworkData::Leader::GetVersion(v1, 0);
  ot::Mle::LeaderData::SetDataVersion(this + 184, Version);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  v4 = ot::NetworkData::Leader::GetVersion(v3, 1);
  ot::Mle::LeaderData::SetStableDataVersion(this + 184, v4);
  return this + 184;
}

uint64_t ot::Mle::LeaderData::SetDataVersion(uint64_t this, char a2)
{
  *(this + 5) = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetDataVersion(this, a2);
}

uint64_t ot::NetworkData::Leader::GetVersion(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(a1 + 10);
  }

  else
  {
    return *(a1 + 11);
  }
}

{
  return ot::NetworkData::Leader::GetVersion(a1, a2);
}

uint64_t ot::Mle::LeaderData::SetStableDataVersion(uint64_t this, char a2)
{
  *(this + 6) = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetStableDataVersion(this, a2);
}

BOOL ot::Mle::Mle::HasUnregisteredAddress(ot::Mle::Mle *this)
{
  v17 = this;
  v16 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::GetUnicastAddresses(v1);
  v15[1] = v2;
  v15[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v2);
  v14 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
  while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v15, &v14))
  {
    v13 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v15);
    ot::Ip6::Netif::UnicastAddress::GetAddress(v13);
    if (!ot::Ip6::Address::IsLinkLocalUnicast(v3, v4))
    {
      ot::Ip6::Netif::UnicastAddress::GetAddress(v13);
      if (!ot::Mle::Mle::IsRoutingLocator(this, v5))
      {
        ot::Ip6::Netif::UnicastAddress::GetAddress(v13);
        if (!ot::Mle::Mle::IsAnycastLocator(this, v6))
        {
          ot::Ip6::Netif::UnicastAddress::GetAddress(v13);
          v11 = v7;
          ot::Mle::Mle::GetMeshLocalEid(this);
          if (ot::Unequatable<ot::Ip6::Address>::operator!=(v11, v8))
          {
            return 1;
          }
        }
      }
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v15);
  }

  if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    return ot::Ip6::Netif::HasAnyExternalMulticastAddress(v9);
  }

  return v16;
}

BOOL ot::Mle::Mle::IsRoutingLocator(ot::Mle::Mle *this, const ot::Ip6::Address *a2)
{
  v5 = 0;
  if (ot::Mle::Mle::IsMeshLocalAddress(this, a2))
  {
    Iid = ot::Ip6::Address::GetIid(a2);
    return ot::Ip6::InterfaceIdentifier::IsRoutingLocator(Iid, v3);
  }

  return v5;
}

BOOL ot::Mle::Mle::IsAnycastLocator(ot::Mle::Mle *this, const ot::Ip6::Address *a2)
{
  v5 = 0;
  if (ot::Mle::Mle::IsMeshLocalAddress(this, a2))
  {
    Iid = ot::Ip6::Address::GetIid(a2);
    return ot::Ip6::InterfaceIdentifier::IsAnycastLocator(Iid, v3);
  }

  return v5;
}

BOOL ot::Ip6::Netif::HasAnyExternalMulticastAddress(ot::Ip6::Netif *this)
{
  v2[3] = this;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(v2, this, 0);
  return !ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::IsDone(v2);
}

{
  return ot::Ip6::Netif::HasAnyExternalMulticastAddress(this);
}

uint64_t ot::Mle::Mle::SetCslTimeout(uint64_t this, int a2)
{
  v4 = this;
  if (*(this + 160) != a2)
  {
    *(this + 160) = a2;
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
    ot::DataPollSender::RecalculatePollPeriod(v2);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v4);
    this = ot::Mac::Mac::IsCslEnabled(v3);
    if (this)
    {
      return ot::Mle::Mle::ScheduleChildUpdateRequest(v4);
    }
  }

  return this;
}

uint64_t ot::Mle::Mle::InitNeighbor(ot::Mle::Mle *this, ot::Neighbor *a2, ot::Ip6::MessageInfo **a3)
{
  ot::Ip6::MessageInfo::GetPeerAddr(a3[1]);
  Iid = ot::Ip6::Address::GetIid(v3);
  ot::Neighbor::GetExtAddress(a2);
  ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v4);
  LinkInfo = ot::Neighbor::GetLinkInfo(a2);
  ot::LinkQualityInfo::Clear(LinkInfo);
  v10 = ot::Neighbor::GetLinkInfo(a2);
  AverageRss = ot::Message::GetAverageRss(*a3);
  ot::LinkQualityInfo::AddRss(v10, AverageRss);
  v7 = ot::Neighbor::ResetLinkFailures(a2);
  Now = ot::TimerMilli::GetNow(v7);
  return ot::Neighbor::SetLastHeard(a2, Now);
}

void ot::Mle::Mle::HandleNotifierEvents(ot::Mle::Mle *a1, uint64_t a2)
{
  v35 = a2;
  v34 = a1;
  v32 = a1;
  if (!ot::Mle::Mle::IsDisabled(a1))
  {
    if (ot::Events::Contains(&v35, 4) && ot::Mle::Mle::IsChild(v32) && !ot::Mle::Mle::IsFullThreadDevice(v32) && *(v32 + 136) == 1)
    {
      v2 = v32;
      *(v32 + 136) = 0;
      ot::Mle::Mle::ScheduleChildUpdateRequest(v2);
    }

    if (ot::Events::ContainsAny(&v35, 3))
    {
      v31 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(v32);
      ot::Ip6::Netif::UnicastAddress::GetAddress((v32 + 1024));
      if (!ot::Ip6::Netif::HasUnicastAddress(v31, v3))
      {
        ot::Ip6::Netif::UnicastAddress::GetAddress((v32 + 1024));
        Iid = ot::Ip6::Address::GetIid(v4);
        ot::Ip6::InterfaceIdentifier::GenerateRandom(Iid, v6, v7);
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(v32);
        ot::Ip6::Netif::AddUnicastAddress(v8, (v32 + 1024));
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(v32);
        ot::Notifier::Signal(v9, 16);
      }

      if (ot::Mle::Mle::IsChild(v32) && !ot::Mle::Mle::IsFullThreadDevice(v32))
      {
        ot::Mle::Mle::ScheduleChildUpdateRequest(v32);
      }
    }

    if (ot::Events::ContainsAny(&v35, 12288) && ot::Mle::Mle::IsChild(v32) && !ot::Mle::Mle::IsFullThreadDevice(v32))
    {
      if (!ot::Mle::Mle::IsRxOnWhenIdle(v32) || (Parent = ot::Mle::Mle::GetParent(v32), !ot::Neighbor::IsThreadVersion1p1(Parent)))
      {
        ot::Mle::Mle::ScheduleChildUpdateRequest(v32);
      }
    }

    if (ot::Events::Contains(&v35, 512))
    {
      if (ot::Mle::Mle::IsFullThreadDevice(v32))
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v32);
        ot::Mle::MleRouter::HandleNetworkDataUpdateRouter(v11);
      }

      else if (ot::Mle::Mle::IsChild(v32) && !ot::Events::Contains(&v35, 4))
      {
        ot::Mle::Mle::ScheduleChildUpdateRequest(v32);
      }

      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(v32);
      ot::BackboneRouter::Leader::Update(v12);
      ot::Mle::Mle::UpdateServiceAlocs(v32);
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Server>(v32);
      ot::Dhcp6::Server::UpdateService(v13);
      IgnoreError();
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Client>(v32);
      ot::Dhcp6::Client::UpdateAddresses(v14);
    }

    if (ot::Events::ContainsAny(&v35, 260) && (ot::Events::Contains(&v35, 256) || ot::Mle::Mle::IsAttached(v32)))
    {
      ot::Mle::Mle::Store(v32);
      IgnoreError();
    }

    if (ot::Events::Contains(&v35, 0x100000))
    {
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v32);
      ot::Mle::MleRouter::HandleSecurityPolicyChanged(v15);
    }

    if (ot::Events::Contains(&v35, 0x400000))
    {
      v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v32);
      v17 = *ot::Mac::Mac::GetSupportedChannelMask(v16);
      v30 = &v33;
      v33 = v17;
      v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v32);
      PanChannel = ot::Mac::Mac::GetPanChannel(v18);
      if (!ot::Mac::ChannelMask::ContainsChannel(&v33, PanChannel))
      {
        if (*(v32 + 130))
        {
          v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v32);
          v29 = ot::Mac::Mac::GetPanChannel(v20);
          v28 = v36;
          ot::Mac::ChannelMask::ToString(&v33, v36);
          v21 = ot::String<(unsigned short)45>::AsCString(v36);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Channel %u is not in the supported channel mask %s, detach the network gracefully!", v22, v23, v24, v25, v26, v27, v29, v21);
          ot::Mle::Mle::DetachGracefully(v32, 0, 0);
          IgnoreError();
        }
      }
    }
  }
}

uint64_t ot::Mle::Mle::UpdateServiceAlocs(ot::Mle::Mle *this)
{
  v16 = this;
  v15 = 0;
  result = ot::Mle::Mle::IsDisabled(this);
  if ((result & 1) == 0)
  {
    for (i = (this + 688); i != (this + 784); i = (i + 32))
    {
      v13 = 0;
      if (ot::Mle::Mle::ServiceAloc::IsInUse(i))
      {
        v15 = 0;
        while (1)
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
          Rloc16 = ot::Mle::Mle::GetRloc16(this);
          if (ot::NetworkData::NetworkData::GetNextService(v9, &v15, Rloc16, v17))
          {
            break;
          }

          v8 = v17[0];
          Aloc16 = ot::Mle::Mle::ServiceAloc::GetAloc16(i);
          if (v8 == ot::Mle::ServiceIdFromAloc(Aloc16))
          {
            v13 = 1;
            break;
          }
        }

        if ((v13 & 1) == 0)
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
          ot::Ip6::Netif::RemoveUnicastAddress(v4, i);
          ot::Mle::Mle::ServiceAloc::MarkAsNotInUse(i);
        }
      }
    }

    v15 = 0;
    while (1)
    {
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      v5 = ot::Mle::Mle::GetRloc16(this);
      result = ot::NetworkData::NetworkData::GetNextService(v7, &v15, v5, v17);
      if (result)
      {
        break;
      }

      v12 = ot::Mle::ServiceAlocFromId(v17[0]);
      if (!ot::Mle::Mle::FindInServiceAlocs(this, v12))
      {
        result = ot::Mle::Mle::FindInServiceAlocs(this, 0xFFFEu);
        v11 = result;
        if (!result)
        {
          return result;
        }

        ot::Mle::Mle::ServiceAloc::SetAloc16(result, v12);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
        ot::Ip6::Netif::AddUnicastAddress(v6, v11);
      }
    }
  }

  return result;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Server>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Dhcp6::Server>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Server>(a1);
}

uint64_t ot::Mle::Mle::DetachGracefully(ot::Mle::Mle *this, void (*a2)(void *), uint64_t a3)
{
  v8 = 0;
  v7 = 1000;
  if (ot::Mle::Mle::IsDetachingGracefully(this))
  {
    return 5;
  }

  else
  {
    if (ot::CallbackBase<void (*)(void *)>::IsSet(this + 101))
    {
      __assert_rtn("DetachGracefully", "mle.cpp", 6227, "!mDetachGracefullyCallback.IsSet()");
    }

    ot::CallbackBase<void (*)(void *)>::Set(this + 101, a2, a3);
    v5 = *(this + 130);
    if (v5 <= 1)
    {
      v7 = 0;
    }

    else if (v5 == 2)
    {
      ot::Mle::Mle::SendChildUpdateRequest(this, 2u);
      IgnoreError();
    }

    else if (v5 == 3)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::SendAddressRelease(v3);
    }

    ot::TimerMilli::Start((this + 960), v7);
  }

  return v8;
}

ot::Mle::Mle::ServiceAloc *ot::Mle::Mle::FindInServiceAlocs(ot::Mle::Mle *this, unsigned __int16 a2)
{
  v5 = 0;
  v4 = (this + 688);
  v3 = (this + 784);
  while (v4 != v3)
  {
    if (ot::Mle::Mle::ServiceAloc::GetAloc16(v4) == a2)
    {
      return v4;
    }

    v4 = (v4 + 32);
  }

  return v5;
}

uint64_t ot::Mle::Mle::ServiceAloc::GetAloc16(ot::Mle::Mle::ServiceAloc *this)
{
  ot::Ip6::Netif::UnicastAddress::GetAddress(this);
  Iid = ot::Ip6::Address::GetIid(v1);
  return ot::Ip6::InterfaceIdentifier::GetLocator(Iid, v3);
}

{
  return ot::Mle::Mle::ServiceAloc::GetAloc16(this);
}

BOOL ot::Mle::Mle::ServiceAloc::IsInUse(ot::Mle::Mle::ServiceAloc *this)
{
  return ot::Mle::Mle::ServiceAloc::GetAloc16(this) != 65534;
}

{
  return ot::Mle::Mle::ServiceAloc::IsInUse(this);
}

uint64_t ot::Mle::ServiceIdFromAloc(ot::Mle *this)
{
  return (this - 16);
}

{
  return ot::Mle::ServiceIdFromAloc(this);
}

uint64_t ot::Mle::Mle::ServiceAloc::MarkAsNotInUse(ot::Mle::Mle::ServiceAloc *this)
{
  return ot::Mle::Mle::ServiceAloc::SetAloc16(this, 0xFFFEu);
}

{
  return ot::Mle::Mle::ServiceAloc::MarkAsNotInUse(this);
}

uint64_t ot::Mle::Mle::ServiceAloc::SetAloc16(ot::Mle::Mle::ServiceAloc *this, unsigned __int16 a2)
{
  ot::Ip6::Netif::UnicastAddress::GetAddress(this);
  Iid = ot::Ip6::Address::GetIid(v2);
  return ot::Ip6::InterfaceIdentifier::SetLocator(Iid, a2);
}

{
  return ot::Mle::Mle::ServiceAloc::SetAloc16(this, a2);
}

uint64_t ot::Mle::Mle::DetermineParentRequestType(uint64_t a1, _BYTE *a2, int *a3)
{
  v5 = 0;
  if (*(a1 + 132) != 3)
  {
    __assert_rtn("DetermineParentRequestType", "mle.cpp", 2438, "mAttachState == kAttachStateParentRequest");
  }

  *a2 = 1;
  if (*(a1 + 148) > 1u || *(a1 + 134) == 4)
  {
    if (*(a1 + 138) > 2u)
    {
      return 23;
    }

    if (*(a1 + 138) <= 1u)
    {
      *a2 = 0;
    }
  }

  else
  {
    if (*(a1 + 138) > 2u)
    {
      return 23;
    }

    if (*(a1 + 134) != 1 && *(a1 + 138) <= 1u)
    {
      *a2 = 0;
    }
  }

  if (a3)
  {
    if (*a2)
    {
      v3 = 1250;
    }

    else
    {
      v3 = 750;
    }

    *a3 = v3;
  }

  return v5;
}

uint64_t ot::Mle::Mle::HasAcceptableParentCandidate(ot::Mle::Mle *this)
{
  v6 = this;
  v5 = 0;
  v4 = 0;
  if (!ot::Neighbor::IsStateParentResponse((this + 368)))
  {
    return v5 & 1;
  }

  v2 = *(this + 132);
  if (v2 != 3)
  {
    if (v2 != 4 || ot::Mle::Mle::HasMoreChannelsToAnnounce(this))
    {
      return v5 & 1;
    }

    goto LABEL_12;
  }

  if (ot::Mle::Mle::DetermineParentRequestType(this, &v4, 0))
  {
    __assert_rtn("HasAcceptableParentCandidate", "mle.cpp", 2516, "false");
  }

  if (v4 || ot::Router::GetTwoWayLinkQuality((this + 368)) == 3)
  {
LABEL_12:
    if (!ot::Mle::Mle::IsChild(this) || (*(this + 129) & 8) != 0 || *(this + 134) == 2)
    {
      v5 = 1;
    }
  }

  return v5 & 1;
}

BOOL ot::Neighbor::IsStateParentResponse(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 3;
}

{
  return ot::Neighbor::IsStateParentResponse(this);
}

BOOL ot::Mle::Mle::HasMoreChannelsToAnnounce(ot::Mle::Mle *this)
{
  v3 = this;
  v2 = *(this + 141);
  return ot::Mle::Mle::GetNextAnnounceChannel(this, &v2) == 0;
}

uint64_t ot::Mle::Mle::SendChildIdRequest(ot::Mle::Mle *this)
{
  v19 = this;
  *&v18[1] = 0;
  v18[0] = 3;
  v17 = 0;
  ot::Neighbor::GetExtAddress((this + 192));
  v15 = v1;
  ot::Neighbor::GetExtAddress((this + 368));
  if (ot::Equatable<ot::Mac::ExtAddress>::operator==(v15, v2))
  {
    if (ot::Mle::Mle::IsChild(this))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Already attached to candidate parent", v3, v4, v5, v6, v7, v8);
      *&v18[1] = 24;
      goto LABEL_23;
    }

    ot::Neighbor::SetState(this + 192, 0);
  }

  v17 = ot::Mle::Mle::NewMleMessage(this, 11);
  if (v17)
  {
    *&v18[1] = ot::Mle::Mle::TxMessage::AppendResponseTlv(v17, (this + 513));
    if (!*&v18[1])
    {
      *&v18[1] = ot::Mle::Mle::TxMessage::AppendLinkAndMleFrameCounterTlvs(v17);
      if (!*&v18[1])
      {
        *&v18[1] = ot::Mle::Mle::TxMessage::AppendModeTlv(v17, *(this + 131));
        if (!*&v18[1])
        {
          *&v18[1] = ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v17, *(this + 39));
          if (!*&v18[1])
          {
            *&v18[1] = ot::Mle::Mle::TxMessage::AppendVersionTlv(v17);
            if (!*&v18[1])
            {
              v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(this);
              Interval = ot::SupervisionListener::GetInterval(v9);
              *&v18[1] = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v17, Interval);
              if (!*&v18[1])
              {
                if (!ot::Mle::Mle::IsFullThreadDevice(this))
                {
                  *&v18[1] = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v17, *(this + 136));
                  if (*&v18[1])
                  {
                    goto LABEL_23;
                  }

                  *v18 = (v18[0] - 1);
                }

                *&v18[1] = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv(v17, ot::Mle::Mle::SendChildIdRequest(void)::kTlvs, v18[0]);
                if (!*&v18[1])
                {
                  *&v18[1] = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v17);
                  if (!*&v18[1])
                  {
                    ot::Neighbor::SetState(this + 368, 7);
                    ot::Neighbor::GetExtAddress((this + 368));
                    ot::Ip6::Address::SetToLinkLocalAddress(&v16, v11);
                    *&v18[1] = ot::Mle::Mle::TxMessage::SendTo(v17, &v16);
                    if (!*&v18[1])
                    {
                      if (*(this + 136) == 1)
                      {
                        v12 = 3;
                      }

                      else
                      {
                        v12 = 2;
                      }

                      ot::Mle::Mle::Log(0, v12, &v16);
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
    *&v18[1] = 3;
  }

LABEL_23:
  if (*&v18[1] && v17)
  {
    ot::Message::Free(v17);
  }

  return *&v18[1];
}

void ot::Mle::Mle::ProcessAnnounce(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(this + 142);
  v13 = *(this + 76);
  if (*(this + 132) != 1)
  {
    __assert_rtn("ProcessAnnounce", "mle.cpp", 5388, "mAttachState == kAttachStateProcessAnnounce");
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Processing Announce - channel %d, panid 0x%02x", a3, a4, a5, a6, a7, a8, v14, v13);
  ot::Mle::Mle::Stop(this, 0);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  *(this + 142) = ot::Mac::Mac::GetPanChannel(v8);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  *(this + 76) = ot::Mac::Mac::GetPanId(v9);
  *(this + 21) = 0;
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetPanChannel(v10, v14);
  IgnoreError();
  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetPanId(v11, v13);
  ot::Mle::Mle::Start(this, 1);
  IgnoreError();
}

void ot::Mle::Mle::SendParentRequest(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v9 = a1;
  v8 = a2;
  appended = 0;
  v6 = 0;
  v5 = 0;
  ot::Mle::TxChallenge::GenerateRandom((a1 + 360), a2, a3);
  if (v8)
  {
    if (v8 == 1)
    {
      v5 = -64;
      ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(&v4);
    }
  }

  else
  {
    v5 = 0x80;
    ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(&v4);
  }

  v6 = ot::Mle::Mle::NewMleMessage(a1, 9);
  if (v6)
  {
    appended = ot::Mle::Mle::TxMessage::AppendModeTlv(v6, *(a1 + 131));
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v6, (a1 + 360));
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendScanMaskTlv(v6, v5);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendVersionTlv(v6);
          if (!appended)
          {
            ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(&v4);
            appended = ot::Mle::Mle::TxMessage::SendTo(v6, &v4);
            if (!appended)
            {
              if (v8)
              {
                if (v8 == 1)
                {
                  ot::Mle::Mle::Log(0, 0xEu, &v4);
                }
              }

              else
              {
                ot::Mle::Mle::Log(0, 0xDu, &v4);
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
    if (v6)
    {
      ot::Message::Free(v6);
    }
  }
}

uint64_t ot::Mle::Mle::PrepareAnnounceState(ot::Mle::Mle *this)
{
  v8 = this;
  v7 = 0;
  ot::Mac::ChannelMask::ChannelMask(&v6);
  if (!ot::Mle::Mle::IsChild(this) && !*(this + 133))
  {
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
    if (ot::MeshCoP::ActiveDatasetManager::IsPartiallyComplete(active) || !ot::Mle::Mle::IsFullThreadDevice(this))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      if (ot::MeshCoP::DatasetManager::GetChannelMask(v2, &v6))
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v6 = *ot::Mac::Mac::GetSupportedChannelMask(v3);
      }

      *(this + 75) = 0x578 / (ot::Mac::ChannelMask::GetNumberOfChannels(&v6) + 1);
      *(this + 75) = ot::Max<unsigned short>(*(this + 75), 0x50u);
      v7 = 1;
    }
  }

  return v7 & 1;
}

uint64_t ot::Mle::Mle::GetNextAnnounceChannel(ot::Mle::Mle *this, unsigned __int8 *a2)
{
  v8 = this;
  v7 = a2;
  ot::Mac::ChannelMask::ChannelMask(&v6);
  active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
  if (ot::MeshCoP::DatasetManager::GetChannelMask(active, &v6))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    v6 = *ot::Mac::Mac::GetSupportedChannelMask(v3);
  }

  return ot::Mac::ChannelMask::GetNextChannel(&v6, v7);
}

void ot::Mle::Mle::SendAnnounce(ot::Mle::Mle *a1, unsigned __int8 a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  ot::Ip6::Address::SetToLinkLocalAllNodesMulticast(&v4);
  ot::Mle::Mle::SendAnnounce(a1, v6, &v4, v5);
}

uint64_t ot::Mle::Mle::Reattach(ot::Mle::Mle *this)
{
  v30 = 0;
  if (*(this + 133) == 2)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
    if (ot::MeshCoP::DatasetManager::Restore(v1))
    {
      *(this + 133) = 0;
    }

    else
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      ot::MeshCoP::DatasetManager::ApplyConfiguration(v2);
      IgnoreError();
      *(this + 133) = 3;
      ot::Mle::Mle::SetAttachState(this, 2u);
      v30 = ot::Random::NonCrypto::GetUint32InRange(0, 0x32u) + 1;
    }
  }

  else if (*(this + 133) == 3)
  {
    *(this + 133) = 0;
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
    ot::MeshCoP::DatasetManager::Restore(active);
    IgnoreError();
  }

  if (!*(this + 133))
  {
    v28 = *(this + 134);
    if (*(this + 134))
    {
      switch(v28)
      {
        case 1:
          goto LABEL_22;
        case 2:
          return v30;
        case 3:
LABEL_22:
          ot::Mle::Mle::Attach(this, 0);
          return v30;
      }

      if (v28 != 4)
      {
        return v30;
      }
    }

    if (ot::Mle::Mle::IsChild(this))
    {
      if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
      {
        v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
        ot::DataPollSender::SetAttachMode(v19, 0);
        v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
        ot::MeshForwarder::SetRxOnWhenIdle(v20, 0, v21, v22, v23, v24, v25, v26);
      }
    }

    else if (*(this + 76) == 0xFFFF)
    {
      if (!ot::Mle::Mle::IsFullThreadDevice(this) || (v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this), ot::Mle::MleRouter::BecomeLeader(v18, 0)))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Device becomes detached - fail to become a leader", v12, v13, v14, v15, v16, v17);
        ot::Mle::Mle::BecomeDetached(this);
        IgnoreError();
      }
    }

    else
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::SetPanChannel(v4, *(this + 142));
      IgnoreError();
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::SetPanId(v5, *(this + 76));
      *(this + 76) = -1;
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Device becomes detached - different PAN ID", v6, v7, v8, v9, v10, v11);
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }
  }

  return v30;
}

void ot::Mle::Mle::DelayedResponseMetadata::ReadFrom(ot::Mle::Mle::DelayedResponseMetadata *this, const ot::Message *a2)
{
  Length = ot::Message::GetLength(a2);
  if (Length < 0x14uLL)
  {
    __assert_rtn("ReadFrom", "mle.cpp", 6299, "length >= sizeof(*this)");
  }

  ot::Message::Read<ot::Mle::Mle::DelayedResponseMetadata>(a2, Length - 20, this);
  IgnoreError();
}

void ot::Mle::Mle::SendDelayedResponse(ot::Mle::Mle *a1, ot::Message *a2, ot::Mle::Mle::DelayedResponseMetadata *a3)
{
  ot::Mle::Mle::DelayedResponseMetadata::RemoveFrom(a3, a2);
  if (ot::Message::GetSubType(a2) != 11 || (appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(a2)) == 0)
  {
    appended = ot::Mle::Mle::TxMessage::SendTo(a2, a3);
    if (!appended)
    {
      ot::Mle::Mle::Log(0, 0xBu, a3);
      if (!ot::Mle::Mle::IsRxOnWhenIdle(a1))
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
        ot::DataPollSender::SendFastPolls(v3, 8u);
      }
    }
  }

  if (appended)
  {
    ot::Message::Free(a2);
  }
}

uint64_t ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(ot::Mle::Mle::TxMessage *this)
{
  appended = ot::Mle::Mle::TxMessage::AppendActiveTimestampTlv(this);
  if (!appended)
  {
    return ot::Mle::Mle::TxMessage::AppendPendingTimestampTlv(this);
  }

  return appended;
}

uint64_t ot::Mle::Mle::TxMessage::SendTo(ot::Mle::Mle::TxMessage *this, __n128 *a2)
{
  v19 = this;
  v18 = a2;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v14);
  ot::Ip6::MessageInfo::SetPeerAddr(v14, v18);
  v2 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  ot::Ip6::Netif::UnicastAddress::GetAddress((v2 + 992));
  ot::Ip6::MessageInfo::SetSockAddr(v14, v3);
  ot::Ip6::MessageInfo::SetPeerPort(v14, 19788);
  ot::Ip6::MessageInfo::SetHopLimit(v14, 255);
  ot::Message::Read<unsigned char>(this, v16, &v15);
  IgnoreError();
  ++v16;
  if (v15)
  {
    goto LABEL_4;
  }

  ot::Message::Read<ot::Mle::Mle::SecurityHeader>(this, v16, v13);
  IgnoreError();
  v4 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  MleFrameCounter = ot::KeyManager::GetMleFrameCounter(v4);
  ot::Mle::Mle::SecurityHeader::SetFrameCounter(v13, MleFrameCounter);
  v6 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v6);
  ot::Mle::Mle::SecurityHeader::SetKeyId(v13, CurrentKeySequence);
  ot::Message::Write<ot::Mle::Mle::SecurityHeader>(this, v16, v13);
  v16 += 10;
  v8 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  v17 = ot::Mle::Mle::ProcessMessageSecurity(v8, 0, this, v14, v16, v13);
  if (!v17)
  {
    v9 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
    ot::KeyManager::IncrementMleFrameCounter(v9);
LABEL_4:
    v10 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    return ot::Ip6::Udp::Socket::SendTo((v10 + 544), this, v14);
  }

  return v17;
}

BOOL ot::Mle::Mle::RemoveDelayedMessage(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, const void *a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = (a1 + 352);
  v13[0] = ot::MessageQueue::begin((a1 + 352));
  v13[1] = v4;
  v12[0] = ot::MessageQueue::end(v14);
  v12[1] = v5;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v13, v12);
    if (!result)
    {
      break;
    }

    v11 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v13);
    ot::Mle::Mle::DelayedResponseMetadata::ReadFrom(v10, v11);
    SubType = ot::Message::GetSubType(v11);
    if (SubType == v17 && (!v15 || ot::Equatable<ot::Ip6::Address>::operator==(v10, v15)))
    {
      ot::MessageQueue::DequeueAndFree((a1 + 352), v11);
      ot::Mle::Mle::Log(3u, v16, v10);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v13, v8);
  }

  return result;
}

ot::Message *ot::Mle::Mle::NewMleMessage(uint64_t a1, char a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  ot::Message::Settings::Settings(v8, 0, 3);
  v7 = 0;
  v6 = 0;
  v9 = ot::Ip6::Udp::Socket::NewMessage((a1 + 544), 0, v8);
  if (v9)
  {
    v6 = 0;
    v7 = 6;
    switch(v11)
    {
      case 7:
        v7 = 11;
        break;
      case 8:
        v7 = 9;
        break;
      case 11:
        v7 = 10;
        break;
      case 13:
        v7 = 8;
        break;
      case 15:
        v7 = 1;
        break;
      case 16:
        v7 = 2;
        v6 = -1;
        break;
      case 17:
        v7 = 3;
        v6 = -1;
        break;
    }

    ot::Message::SetSubType(v9, v7);
    v10 = ot::Message::Append<unsigned char>(v9, &v6);
    if (!v10)
    {
      if (v6 || (ot::Mle::Mle::SecurityHeader::InitSecurityControl(v5), (v10 = ot::Message::Append<ot::Mle::Mle::SecurityHeader>(v9, v5)) == 0))
      {
        v4 = v11;
        v10 = ot::Message::Append<unsigned char>(v9, &v4);
      }
    }
  }

  else
  {
    v10 = 3;
  }

  if (v10 && v9)
  {
    ot::Message::Free(v9);
    return 0;
  }

  return v9;
}

uint64_t ot::Mle::Mle::TxMessage::AppendModeTlv(uint64_t a1, char a2)
{
  v5 = a2;
  v2 = ot::Mle::DeviceMode::Get(&v5);
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(a1, v2);
}

void ot::Mle::Mle::RequestShorterChildIdRequest(ot::Mle::Mle *this)
{
  if (*(this + 132) == 5)
  {
    *(this + 136) = 1;
    ot::Mle::Mle::SendChildIdRequest(this);
    IgnoreError();
  }
}

void ot::Mle::Mle::HandleChildIdRequestTxDone(ot::Mle::Mle *this, ot::Message *a2)
{
  if ((ot::Message::GetTxSuccess(a2) & 1) != 0 && !ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
    ot::DataPollSender::SetAttachMode(v2, 1);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::SetRxOnWhenIdle(v3, 0, v4, v5, v6, v7, v8, v9);
  }

  if (ot::Message::IsLinkSecurityEnabled(a2))
  {
    ot::Mle::Mle::RequestShorterChildIdRequest(this);
  }
}

uint64_t ot::Mle::Mle::TxMessage::AppendResponseTlv(ot::Mle::Mle::TxMessage *this, const ot::Mle::RxChallenge *a2)
{
  ot::Mle::RxChallenge::GetBytes(a2);
  v5 = v2;
  Length = ot::Mle::RxChallenge::GetLength(a2);
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)4>>(this, v5, Length);
}

uint64_t ot::Mle::Mle::TxMessage::AppendLinkAndMleFrameCounterTlvs(ot::Mle::Mle::TxMessage *this)
{
  appended = ot::Mle::Mle::TxMessage::AppendLinkFrameCounterTlv(this);
  if (!appended)
  {
    return ot::Mle::Mle::TxMessage::AppendMleFrameCounterTlv(this);
  }

  return appended;
}

uint64_t ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(ot::Message *a1, char a2)
{
  v61 = a1;
  v60 = a2;
  appended = 0;
  v55 = 0;
  Length = ot::Message::GetLength(a1);
  ot::Mle::Tlv::SetType(v58, 19);
  appended = ot::Message::Append<ot::Mle::Tlv>(a1, v58);
  if (!appended)
  {
    v2 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
    ot::Mle::Mle::GetMeshLocalEid(v2);
    appended = ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(a1, 0, v3);
    if (!appended && v60 != 1)
    {
      ++v55;
      v43 = ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(a1);
      v4 = ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
      ot::DuaManager::GetDomainUnicastAddress(v4);
      if (ot::Ip6::Netif::HasUnicastAddress(v43, v5))
      {
        v42 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
        v6 = ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
        ot::DuaManager::GetDomainUnicastAddress(v6);
        if (!ot::NetworkData::Leader::GetContext(v42, v7, v56))
        {
          v41 = v57;
          v8 = ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
          ot::DuaManager::GetDomainUnicastAddress(v8);
          appended = ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(a1, v41, v9);
          if (appended)
          {
            goto LABEL_31;
          }

          ++v55;
        }
      }

      v10 = ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::GetUnicastAddresses(v10);
      v53[1] = v11;
      v53[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v11);
      v52 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
      while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v53, &v52))
      {
        v51 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v53);
        ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
        if (!ot::Ip6::Address::IsLinkLocalUnicast(v12, v13))
        {
          v40 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
          ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
          if (!ot::Mle::Mle::IsRoutingLocator(v40, v14))
          {
            v39 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
            ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
            if (!ot::Mle::Mle::IsAnycastLocator(v39, v15))
            {
              ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
              v38 = v16;
              v17 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
              ot::Mle::Mle::GetMeshLocalEid(v17);
              if (!ot::Equatable<ot::Ip6::Address>::operator==(v38, v18))
              {
                ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
                v37 = v19;
                v20 = ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
                ot::DuaManager::GetDomainUnicastAddress(v20);
                if (!ot::Equatable<ot::Ip6::Address>::operator==(v37, v21))
                {
                  v36 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
                  ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
                  if (ot::NetworkData::Leader::GetContext(v36, v22, v56))
                  {
                    ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
                    appended = ot::Mle::Mle::TxMessage::AppendAddressEntry(a1, v24);
                    if (appended)
                    {
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                    v35 = v57;
                    ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
                    appended = ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(a1, v35, v23);
                    if (appended)
                    {
                      goto LABEL_31;
                    }
                  }

                  if (++v55 >= 0x10u)
                  {
                    goto LABEL_31;
                  }
                }
              }
            }
          }
        }

        ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v53);
      }

      v25 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
      if (!ot::Mle::Mle::IsRxOnWhenIdle(v25) || (v26 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1), Parent = ot::Mle::Mle::GetParent(v26), !ot::Neighbor::IsThreadVersion1p1(Parent)))
      {
        v28 = ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(a1);
        v62 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v28, 0);
        v63 = v29;
        v48 = v62;
        v49 = v29;
        v50 = &v48;
        ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(v47, &v48);
        ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v46, v50);
        while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v47, v46))
        {
          v45 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v47);
          v30 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
          if (!ot::Mle::Mle::IsRxOnWhenIdle(v30) || (ot::Ip6::Netif::MulticastAddress::GetAddress(v45), ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v31)))
          {
            ot::Ip6::Netif::MulticastAddress::GetAddress(v45);
            appended = ot::Mle::Mle::TxMessage::AppendAddressEntry(a1, v32);
            if (appended)
            {
              break;
            }

            if (++v55 >= 0x10u)
            {
              break;
            }
          }

          ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v47);
        }
      }
    }
  }

LABEL_31:
  if (!appended)
  {
    v33 = ot::Message::GetLength(a1);
    ot::Tlv::SetLength(v58, v33 - Length - 2);
    ot::Message::Write<ot::Mle::Tlv>(a1, Length, v58);
  }

  return appended;
}

uint64_t ot::Mle::Mle::SendDataRequestAfterDelay(ot::Mle::Mle *this, const ot::Ip6::Address *a2, unsigned __int16 a3)
{
  if ((*(this + 129) & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return ot::Mle::Mle::SendDataRequest(this, a2, ot::Mle::Mle::SendDataRequestAfterDelay(ot::Ip6::Address const&,unsigned short)::kTlvs, v3, a3, 0);
}

uint64_t ot::Mle::Mle::SendDataRequest(ot::Mle::Mle *a1, const ot::Ip6::Address *a2, unsigned __int8 *a3, unsigned __int8 a4, unsigned __int16 a5, unsigned __int8 *a6)
{
  ot::Mle::Mle::RemoveDelayedDataRequestMessage(a1, a2);
  v10 = ot::Mle::Mle::NewMleMessage(a1, 7);
  if (v10)
  {
    appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv(v10, a3, a4);
    if (!appended)
    {
      if (!a6 || (v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(a1), (appended = ot::LinkMetrics::Initiator::AppendLinkMetricsQueryTlv(v6, v10, a6)) == 0))
      {
        if (a5)
        {
          appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v10, a2, a5);
          if (!appended)
          {
            ot::Mle::Mle::Log(2u, 7u, a2);
          }
        }

        else
        {
          appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v10);
          if (!appended)
          {
            appended = ot::Mle::Mle::TxMessage::SendTo(v10, a2);
            if (!appended)
            {
              ot::Mle::Mle::Log(0, 7u, a2);
              if (!ot::Mle::Mle::IsRxOnWhenIdle(a1))
              {
                v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
                ot::DataPollSender::SendFastPolls(v7, 8u);
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

  if (appended && v10)
  {
    ot::Message::Free(v10);
  }

  if (ot::Mle::Mle::IsChild(a1) && !ot::Mle::Mle::IsRxOnWhenIdle(a1))
  {
    *(a1 + 135) = 1;
    if (!*(a1 + 137))
    {
      ot::Mle::Mle::ScheduleMessageTransmissionTimer(a1);
    }
  }

  return appended;
}

uint64_t ot::Mle::Mle::TxMessage::SendAfterDelay(ot::Mle::Mle::TxMessage *this, const ot::Ip6::Address *a2, unsigned __int16 a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  Now = ot::TimerMilli::GetNow(this);
  v8 = ot::Time::operator+(&Now, v12);
  v10 = v8;
  v9 = *v13;
  v11 = ot::Mle::Mle::DelayedResponseMetadata::AppendTo(&v9, this);
  if (!v11)
  {
    v3 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    ot::MessageQueue::Enqueue((v3 + 352), this);
    v4 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    ot::TimerMilli::FireAtIfEarlier((v4 + 912), v10);
  }

  return v11;
}

BOOL ot::Notifier::IsPending(ot::Notifier *this)
{
  return !ot::Events::IsEmpty(this);
}

{
  return ot::Notifier::IsPending(this);
}

uint64_t ot::Mle::Mle::SendChildUpdateRequest(uint64_t a1, unsigned __int8 a2)
{
  v40 = a1;
  v39 = a2;
  appended = 0;
  v36 = 0;
  v35 = 0;
  if (!ot::Neighbor::IsStateValidOrRestoring((a1 + 192)))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "No valid parent when sending Child Update Request requestMode=%d", v2, v3, v4, v5, v6, v7, v39);
    ot::Mle::Mle::BecomeDetached(a1);
    IgnoreError();
    goto LABEL_36;
  }

  if (v39 != 2)
  {
    *(a1 + 137) = 2;
    ot::Mle::Mle::ScheduleMessageTransmissionTimer(a1);
  }

  v36 = ot::Mle::Mle::NewMleMessage(a1, 13);
  if (!v36)
  {
    appended = 3;
    goto LABEL_36;
  }

  appended = ot::Mle::Mle::TxMessage::AppendModeTlv(v36, *(a1 + 131));
  if (appended)
  {
    goto LABEL_36;
  }

  if (v39 == 1 || ot::Mle::Mle::IsDetached(a1))
  {
    ot::Mle::TxChallenge::GenerateRandom((a1 + 360), v8, v9);
    appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v36, (a1 + 360));
    if (appended)
    {
      goto LABEL_36;
    }
  }

  v33 = *(a1 + 130);
  if (!*(a1 + 130))
  {
LABEL_29:
    __assert_rtn("SendChildUpdateRequest", "mle.cpp", 3315, "false");
  }

  switch(v33)
  {
    case 1:
      v35 = 1;
      break;
    case 2:
      appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v36);
      if (appended)
      {
        goto LABEL_36;
      }

      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v36);
      if (appended)
      {
        goto LABEL_36;
      }

      v10 = v39 == 2 ? ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v36, 0) : ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v36, *(a1 + 156));
      appended = v10;
      if (v10)
      {
        goto LABEL_36;
      }

      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(a1);
      Interval = ot::SupervisionListener::GetInterval(v11);
      appended = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v36, Interval);
      if (appended)
      {
        goto LABEL_36;
      }

      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      if (ot::Mac::Mac::IsCslEnabled(v13))
      {
        appended = ot::Mle::Mle::TxMessage::AppendCslChannelTlv(v36);
        if (appended)
        {
          goto LABEL_36;
        }

        appended = ot::Mle::Mle::TxMessage::AppendCslTimeoutTlv(v36);
        if (appended)
        {
          goto LABEL_36;
        }
      }

      break;
    case 4:
    case 3:
      goto LABEL_29;
  }

  if (ot::Mle::Mle::IsFullThreadDevice(a1) || (appended = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v36, v35)) == 0)
  {
    ot::Neighbor::GetExtAddress((a1 + 192));
    ot::Ip6::Address::SetToLinkLocalAddress(&v37, v14);
    appended = ot::Mle::Mle::TxMessage::SendTo(v36, &v37);
    if (!appended)
    {
      ot::Mle::Mle::Log(0, 5u, &v37);
      if (ot::Mle::Mle::IsRxOnWhenIdle(a1))
      {
        v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
        ot::MeshForwarder::SetRxOnWhenIdle(v24, 1, v25, v26, v27, v28, v29, v30);
      }

      else
      {
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
        ot::MeshForwarder::SetRxOnWhenIdle(v15, 0, v16, v17, v18, v19, v20, v21);
        v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
        v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
        IsCslEnabled = ot::Mac::Mac::IsCslEnabled(v22);
        ot::DataPollSender::SetAttachMode(v32, !IsCslEnabled);
      }
    }
  }

LABEL_36:
  if (appended && v36)
  {
    ot::Message::Free(v36);
  }

  return appended;
}

uint64_t ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(ot::Mle::Mle::TxMessage *this)
{
  v1 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v1);
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(this, Rloc16);
}

uint64_t ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(ot::Mle::Mle::TxMessage *this)
{
  v11 = this;
  v7 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  v1 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this);
  Version = ot::NetworkData::Leader::GetVersion(v1, 0);
  ot::Mle::LeaderData::SetDataVersion(v7 + 184, Version);
  v8 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  v3 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this);
  v4 = ot::NetworkData::Leader::GetVersion(v3, 1);
  ot::Mle::LeaderData::SetStableDataVersion(v8 + 184, v4);
  ot::Mle::LeaderDataTlv::Init(v10);
  v5 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  ot::Mle::LeaderDataTlv::Set(v10, (v5 + 184));
  return ot::Tlv::AppendTo(v10, this);
}

uint64_t ot::Mle::Mle::TxMessage::AppendCslChannelTlv(ot::Mle::Mle::TxMessage *this)
{
  v6 = this;
  v1 = ot::GetProvider<ot::Message>::Get<ot::Mac::Mac>(this);
  CslChannel = ot::Mac::Mac::GetCslChannel(v1);
  ot::Mle::ChannelTlvValue::ChannelTlvValue(v5, CslChannel);
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(this, v5);
}

uint64_t ot::Mle::Mle::TxMessage::AppendCslTimeoutTlv(ot::Mle::Mle::TxMessage *this)
{
  v1 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  CslTimeout = ot::Mle::Mle::GetCslTimeout(v1);
  if (!CslTimeout)
  {
    v2 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    CslTimeout = ot::Mle::Mle::GetTimeout(v2);
  }

  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(this, CslTimeout);
}

uint64_t ot::Mle::Mle::SendChildUpdateResponse(ot::Mle::Mle *this, const ot::Mle::Mle::TlvList *a2, const ot::Mle::RxChallenge *a3, __n128 *a4)
{
  v13 = 0;
  v14 = ot::Mle::Mle::NewMleMessage(this, 14);
  if (v14)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v14);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v14);
      if (!appended)
      {
        ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
        v12 = v4;
        v11 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a2);
        while (v12 != v11)
        {
          v9 = *v12;
          switch(v9)
          {
            case 2:
              appended = ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v14, *(this + 39));
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 4:
              appended = ot::Mle::Mle::TxMessage::AppendResponseTlv(v14, a3);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 5:
              appended = ot::Mle::Mle::TxMessage::AppendLinkFrameCounterTlv(v14);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 8:
              appended = ot::Mle::Mle::TxMessage::AppendMleFrameCounterTlv(v14);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 17:
              appended = ot::Mle::Mle::TxMessage::AppendStatusTlv(v14, 1u);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 19:
              if (!ot::Mle::Mle::IsFullThreadDevice(this))
              {
                appended = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v14, 1);
                if (appended)
                {
                  goto LABEL_39;
                }

                v13 = 1;
              }

              break;
            case 27:
              v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(this);
              Interval = ot::SupervisionListener::GetInterval(v5);
              appended = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v14, Interval);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 85:
              v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
              if (ot::Mac::Mac::IsCslEnabled(v7))
              {
                appended = ot::Mle::Mle::TxMessage::AppendCslTimeoutTlv(v14);
                if (appended)
                {
                  goto LABEL_39;
                }
              }

              break;
          }

          ++v12;
        }

        appended = ot::Mle::Mle::TxMessage::SendTo(v14, a4);
        if (!appended)
        {
          ot::Mle::Mle::Log(0, 6u, a4);
          if ((v13 & 1) != 0 && ot::Mle::Mle::HasUnregisteredAddress(this))
          {
            ot::Mle::Mle::SendChildUpdateRequest(this);
            IgnoreError();
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
  if (appended && v14)
  {
    ot::Message::Free(v14);
  }

  return appended;
}

void ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin()
{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(uint64_t a1)
{
  return a1 + *(a1 + 32);
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendLinkFrameCounterTlv(ot::Mle::Mle::TxMessage *this)
{
  v1 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  MaximumMacFrameCounter = ot::KeyManager::GetMaximumMacFrameCounter(v1);
  SubType = ot::Message::GetSubType(this);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Mle::TxMessage::AppendLinkFrameCounterTlv frameCounterTlv=%u, mleMsgSubType=%d", v3, v4, v5, v6, v7, v8, MaximumMacFrameCounter, SubType);
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(this, MaximumMacFrameCounter);
}

uint64_t ot::Mle::Mle::TxMessage::AppendMleFrameCounterTlv(ot::Mle::Mle::TxMessage *this)
{
  v1 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  MleFrameCounter = ot::KeyManager::GetMleFrameCounter(v1);
  SubType = ot::Message::GetSubType(this);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Mle::TxMessage::AppendMleFrameCounterTlv mleFrameCounterTlv:%u mleMsgSubType=%d", v3, v4, v5, v6, v7, v8, MleFrameCounter, SubType);
  v9 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  v10 = ot::KeyManager::GetMleFrameCounter(v9);
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(this, v10);
}

void ot::Mle::Mle::SendAnnounce(ot::Mle::Mle *a1, unsigned __int8 a2, __n128 *a3, char a4)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  appended = 0;
  v20 = 0;
  if (ot::Mle::Mle::IsRouterOrLeader(a1) && !ot::Mle::Mle::IsRxOnWhenIdle(a1))
  {
    appended = 13;
    goto LABEL_17;
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v4);
  if (!ot::Mac::ChannelMask::ContainsChannel(SupportedChannelMask, v25))
  {
    appended = 7;
    goto LABEL_17;
  }

  v20 = ot::Mle::Mle::NewMleMessage(a1, 15);
  if (!v20)
  {
    appended = 3;
    goto LABEL_17;
  }

  ot::Message::SetLinkSecurityEnabled(v20, 1);
  ot::Message::SetChannel(v20, v25);
  v17 = v20;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  PanChannel = ot::Mac::Mac::GetPanChannel(v6);
  ot::Mle::ChannelTlvValue::ChannelTlvValue(v19, PanChannel);
  appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(v17, v19);
  if (!appended)
  {
    if (v23)
    {
      if (v23 == 1)
      {
        ot::MeshCoP::Timestamp::SetToOrphanAnnounce(v21);
        appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(v20, v21);
        if (appended)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      appended = ot::Mle::Mle::TxMessage::AppendActiveTimestampTlv(v20);
      if (appended)
      {
        goto LABEL_17;
      }
    }

    v16 = v20;
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    PanId = ot::Mac::Mac::GetPanId(v8);
    appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(v16, PanId);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::SendTo(v20, v24);
      if (!appended)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Send Announce on channel %d", v10, v11, v12, v13, v14, v15, v25);
      }
    }
  }

LABEL_17:
  if (appended)
  {
    if (v20)
    {
      ot::Message::Free(v20);
    }
  }
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x14, a2, 3);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x16, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendActiveTimestampTlv(ot::Mle::Mle::TxMessage *this)
{
  v5 = 0;
  active = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
  Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
  if (ot::MeshCoP::Timestamp::IsValid(Timestamp))
  {
    return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(this, Timestamp);
  }

  return v5;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0x15u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(a1, a2);
}

uint64_t ot::Mle::Mle::SendLinkMetricsManagementResponse(uint64_t a1, __n128 *a2, char a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = ot::Mle::Mle::NewMleMessage(a1, 19);
  if (v7)
  {
    ot::Mle::Tlv::SetType(v6, 88);
    ot::Tlv::SetType(v5, 5);
    ot::Tlv::SetLength(v5, 1);
    Size = ot::Tlv::GetSize(v5);
    ot::Tlv::SetLength(v6, Size);
    v8 = ot::Message::Append<ot::Mle::Tlv>(v7, v6);
    if (!v8)
    {
      v8 = ot::Message::Append<ot::Tlv>(v7, v5);
      if (!v8)
      {
        v8 = ot::Message::Append<ot::LinkMetrics::Status>(v7, &v9);
        if (!v8)
        {
          v8 = ot::Mle::Mle::TxMessage::SendTo(v7, v10);
        }
      }
    }
  }

  else
  {
    v8 = 3;
  }

  if (v8 && v7)
  {
    ot::Message::Free(v7);
  }

  return v8;
}

uint64_t ot::Message::Append<ot::LinkMetrics::Status>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 1u);
}

{
  return ot::Message::Append<ot::LinkMetrics::Status>(a1, a2);
}

uint64_t ot::Mle::Mle::SendLinkProbe(ot::Mle::Mle *this, __n128 *a2, char a3, char *a4, unsigned __int8 a5)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  appended = 0;
  v7 = ot::Mle::Mle::NewMleMessage(this, 20);
  if (v7)
  {
    ot::Mle::Tlv::SetType(v6, 90);
    ot::Tlv::SetLength(v6, v9 + 1);
    appended = ot::Message::Append<ot::Mle::Tlv>(v7, v6);
    if (!appended)
    {
      appended = ot::Message::Append<unsigned char>(v7, &v11);
      if (!appended)
      {
        appended = ot::Message::AppendBytes(v7, v10, v9);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::SendTo(v7, v12);
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

uint64_t ot::Mle::Mle::ProcessMessageSecurity(ot::InstanceLocator *a1, char a2, ot::Message *a3, ot::Ip6::MessageInfo *a4, unsigned __int16 a5, ot::Mle::Mle::SecurityHeader *a6)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = 0;
  ot::Crypto::AesCcm::AesCcm(v38);
  v26 = (ot::Message::GetLength(v33) - v31);
  ot::Ip6::MessageInfo::GetSockAddr(v32);
  v25 = v6;
  ot::Ip6::MessageInfo::GetPeerAddr(v32);
  v24 = v7;
  if (v34 && v34 == 1)
  {
    ot::Ip6::MessageInfo::GetPeerAddr(v32);
    v25 = v8;
    ot::Ip6::MessageInfo::GetSockAddr(v32);
    v24 = v9;
    if (v31 + 5 > ot::Message::GetLength(v33))
    {
      v29 = 6;
      goto LABEL_16;
    }

    LOWORD(v26) = v26 - 4;
  }

  Iid = ot::Ip6::Address::GetIid(v25);
  ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v36);
  FrameCounter = ot::Mle::Mle::SecurityHeader::GetFrameCounter(v30, v11);
  ot::Crypto::AesCcm::GenerateNonce(v36, FrameCounter, 5, &v37, v13);
  KeyId = ot::Mle::Mle::SecurityHeader::GetKeyId(v30, v14);
  v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
  if (KeyId == ot::KeyManager::GetCurrentKeySequence(v15))
  {
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
    CurrentMleKey = ot::KeyManager::GetCurrentMleKey(v16);
  }

  else
  {
    v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
    CurrentMleKey = ot::KeyManager::GetTemporaryMleKey(v17, KeyId);
  }

  ot::Crypto::AesCcm::SetKey(v38, CurrentMleKey);
  ot::Crypto::AesCcm::Init(v38, 0x2Au, v26, 4u, &v37, 0xDu);
  ot::Crypto::AesCcm::Header<ot::Ip6::Address>(v38, v25);
  ot::Crypto::AesCcm::Header<ot::Ip6::Address>(v38, v24);
  ot::Crypto::AesCcm::Header<ot::Mle::Mle::SecurityHeader>(v38, v30);
  ot::Crypto::AesCcm::Payload(v38, v33, v31, v26, v34);
  ot::Crypto::AesCcm::Finalize(v38, v28);
  if (v34)
  {
    v21 = v33;
    Length = ot::Message::GetLength(v33);
    if (ot::Message::Compare<unsigned char [4]>(v21, Length - 4, v28))
    {
      ot::Message::RemoveFooter(v33, 4u);
    }

    else
    {
      v29 = 8;
    }
  }

  else
  {
    v29 = ot::Message::Append<unsigned char [4]>(v33, v28);
  }

LABEL_16:
  v20 = v29;
  ot::Crypto::AesCcm::~AesCcm(v38);
  return v20;
}

uint64_t ot::Mle::Mle::SecurityHeader::GetFrameCounter(ot::Mle::Mle::SecurityHeader *this, unsigned int a2)
{
  return ot::LittleEndian::HostSwap32(*(this + 1));
}

{
  return ot::Mle::Mle::SecurityHeader::GetFrameCounter(this, a2);
}

uint64_t ot::Mle::Mle::SecurityHeader::GetKeyId(ot::Mle::Mle::SecurityHeader *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 5), a2);
}

{
  return ot::Mle::Mle::SecurityHeader::GetKeyId(this, a2);
}

uint64_t ot::KeyManager::GetCurrentMleKey(ot::KeyManager *this)
{
  return this + 20;
}

{
  return ot::KeyManager::GetCurrentMleKey(this);
}

ot::Crypto::AesEcb *ot::Crypto::AesCcm::Header<ot::Ip6::Address>(ot::Crypto::AesEcb *a1, _BYTE *a2)
{
  return ot::Crypto::AesCcm::Header(a1, a2, 0x10u);
}

{
  return ot::Crypto::AesCcm::Header<ot::Ip6::Address>(a1, a2);
}

ot::Crypto::AesEcb *ot::Crypto::AesCcm::Header<ot::Mle::Mle::SecurityHeader>(ot::Crypto::AesEcb *a1, _BYTE *a2)
{
  return ot::Crypto::AesCcm::Header(a1, a2, 0xAu);
}

{
  return ot::Crypto::AesCcm::Header<ot::Mle::Mle::SecurityHeader>(a1, a2);
}

uint64_t ot::Message::Append<unsigned char [4]>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<unsigned char [4]>(a1, a2);
}

BOOL ot::Message::Compare<unsigned char [4]>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::CompareBytes(a1, a2, a3, 4u, 0);
}

{
  return ot::Message::Compare<unsigned char [4]>(a1, a2, a3);
}

uint64_t ot::Message::Read<ot::Mle::Mle::SecurityHeader>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xAu);
}

{
  return ot::Message::Read<ot::Mle::Mle::SecurityHeader>(a1, a2, a3);
}

BOOL ot::Mle::Mle::SecurityHeader::IsSecurityControlValid(ot::Mle::Mle::SecurityHeader *this)
{
  return *this == 21;
}

{
  return ot::Mle::Mle::SecurityHeader::IsSecurityControlValid(this);
}

uint64_t ot::Neighbor::GetMleFrameCounter(ot::Neighbor *this)
{
  return *(this + 4);
}

{
  return ot::Neighbor::GetMleFrameCounter(this);
}

void ot::Mle::Mle::HandleAdvertisement(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v31 = this;
  v30 = a2;
  LeaderDataTlv = 0;
  v28 = 0;
  if (!ot::Mle::Mle::IsFullThreadDevice(this))
  {
    goto LABEL_28;
  }

  ot::InstanceLocator::GetInstance(this);
  if (!otPlatVendorGetThreadJoinSession() && ot::Mle::Mle::isThreadStateMachineEnabled(this))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "ThreadConnection: Received Advertisements in Sleepy Router/Full Router Role", v2, v3, v4, v5, v6, v7);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Signal(v8, 0x400000000);
  }

  if (!ot::Mle::Mle::IsSleepyRouter(this))
  {
LABEL_28:
    if (!ot::Mle::Mle::IsAttached(this))
    {
      goto LABEL_25;
    }

    LeaderDataTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v30, &v28);
    if (LeaderDataTlv)
    {
      goto LABEL_25;
    }

    ot::Ip6::MessageInfo::GetPeerAddr(v30[1]);
    ot::Mle::Mle::Log(1u, 0, v9, v28);
    LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v30, v27, v10, v11, v12, v13);
    if (LeaderDataTlv)
    {
      goto LABEL_25;
    }

    if (ot::Mle::Mle::IsFullThreadDevice(this))
    {
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      LeaderDataTlv = ot::Mle::MleRouter::HandleAdvertisement(v14, v30, v28, v27);
      if (LeaderDataTlv)
      {
        goto LABEL_25;
      }
    }

    if (ot::Mle::Mle::IsChild(this))
    {
      if (v30[3] != (this + 192))
      {
LABEL_25:
        ot::Mle::Mle::LogProcessError(0, LeaderDataTlv);
        return;
      }

      Rloc16 = ot::Neighbor::GetRloc16((this + 192));
      if (Rloc16 != v28)
      {
        ot::Mle::Mle::BecomeDetached(this);
        IgnoreError();
        goto LABEL_25;
      }

      PartitionId = ot::Mle::LeaderData::GetPartitionId(v27);
      if (PartitionId != ot::Mle::LeaderData::GetPartitionId((this + 184)) || (LeaderRouterId = ot::Mle::LeaderData::GetLeaderRouterId(v27), LeaderId = ot::Mle::Mle::GetLeaderId(this), v17 = LeaderRouterId, LeaderRouterId != LeaderId))
      {
        ot::Mle::Mle::SetLeaderData(this, v27);
        v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        v20 = v30;
        RouterId = ot::Neighbor::GetRouterId((this + 192));
        v17 = ot::Mle::MleRouter::ReadAndProcessRouteTlvOnFed(v21, v20, RouterId);
        LeaderDataTlv = v17;
        if (v17)
        {
          goto LABEL_25;
        }

        *(this + 129) = *(this + 129) & 0xFE | 1;
      }

      Now = ot::TimerMilli::GetNow(v17);
      ot::Neighbor::SetLastHeard(this + 192, Now);
    }

    else if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(v30))
    {
      goto LABEL_25;
    }

    if ((*(this + 129) & 1) != 0 || ot::Mle::Mle::IsNetworkDataNewer(this, v27))
    {
      Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0x3E8u);
      ot::Ip6::MessageInfo::GetPeerAddr(v30[1]);
      ot::Mle::Mle::SendDataRequestAfterDelay(this, v19, Uint16InRange);
      IgnoreError();
    }

    *(v30 + 32) = 2;
    goto LABEL_25;
  }
}

void ot::Mle::Mle::HandleDataResponse(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v33 = this;
  v32 = a2;
  LeaderDataTlv = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1u, 8u, v2);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v32))
  {
    if (!ot::Tlv::FindTlvValueOffsetRange(*v32, 0x59, &v26, v3))
    {
      v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(this);
      v23 = *v32;
      ot::Ip6::MessageInfo::GetPeerAddr(v32[1]);
      ot::LinkMetrics::Initiator::HandleReport(v24, v23, &v26, v4);
    }

    v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    v21 = v32;
    RouterId = ot::Neighbor::GetRouterId((this + 192));
    LeaderDataTlv = ot::Mle::MleRouter::ReadAndProcessRouteTlvOnFed(v22, v21, RouterId);
    if (!LeaderDataTlv)
    {
      LeaderDataTlv = ot::Mle::Mle::HandleLeaderData(this, v32, v6, v7, v8, v9);
      if (!*(this + 135) && !ot::Mle::Mle::IsRxOnWhenIdle(this))
      {
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
        ot::DataPollSender::StopFastPolls(v10);
      }

      if (!LeaderDataTlv)
      {
        *(v32 + 32) = 2;
        LeaderDataTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v32, &v28);
        if (!LeaderDataTlv)
        {
          v29 = ot::Mle::RouterIdFromRloc16(v28);
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::RouterTable::FindRouterById((v11 + 30904), v29);
          v30 = v16;
          if (v16)
          {
            LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v32, v27, v12, v13, v14, v15);
            if (!LeaderDataTlv)
            {
              v19 = v30;
              DataVersion = ot::Mle::LeaderData::GetDataVersion(v27, 0);
              ot::Neighbor::SetLeaderFullDataVersion(v19, DataVersion);
              v20 = v30;
              v18 = ot::Mle::LeaderData::GetDataVersion(v27, 1);
              ot::Neighbor::SetLeaderStableDataVersion(v20, v18);
            }
          }
        }
      }
    }
  }

  else
  {
    LeaderDataTlv = 2;
  }

  ot::Mle::Mle::LogProcessError(8u, LeaderDataTlv);
}

void ot::Mle::Mle::HandleParentResponse(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v200 = this;
  v199 = a2;
  v181 = this;
  VersionTlv = 0;
  AverageRss = ot::Message::GetAverageRss(*a2);
  v196 = 0;
  v195 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v189 = 0;
  v188 = 0;
  if (!ot::Mle::Mle::isThreadCertEnabled(v181))
  {
    v180 = &ot::Mle::kLogModuleName;
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Cert Flag disabled", v2, v3, v4, v5, v6, v7, "HandleParentResponse");
    v8 = ot::Mle::Mle::AttachStateToString(*(v181 + 132));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Parent response received in mAttachState:%s", v9, v10, v11, v12, v13, v14, v8);
    if (*(v181 + 132) != 3 && *(v181 + 132) != 4)
    {
      VersionTlv = 13;
      goto LABEL_55;
    }
  }

  VersionTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v199, &v195);
  if (!VersionTlv)
  {
    ot::Ip6::MessageInfo::GetPeerAddr(v199[1]);
    ot::Mle::Mle::Log(1u, 0xFu, v15, v195);
    VersionTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(*v199, &v196);
    if (!VersionTlv)
    {
      VersionTlv = ot::Mle::Mle::RxMessage::ReadAndMatchResponseTlvWith(*v199, v181 + 360);
      if (!VersionTlv)
      {
        ot::Ip6::MessageInfo::GetPeerAddr(v199[1]);
        Iid = ot::Ip6::Address::GetIid(v16);
        ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v204);
        if (ot::Mle::Mle::IsChild(v181))
        {
          ot::Neighbor::GetExtAddress((v181 + 192));
          if (ot::Equatable<ot::Mac::ExtAddress>::operator==(v22, v204))
          {
            *(v181 + 129) = *(v181 + 129) & 0xF7 | 8;
          }
        }

        VersionTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v199, &v194, v18, v19, v20, v21);
        if (!VersionTlv)
        {
          VersionTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(*v199, &v193);
          if (!VersionTlv)
          {
            v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v181);
            v24 = ot::Mac::Mac::ComputeLinkMargin(v23, AverageRss);
            v192 = ot::Min<unsigned char>(v24, v193);
            v191 = ot::LinkQualityForLinkMargin(v192);
            VersionTlv = ot::Tlv::FindTlv<ot::Mle::ConnectivityTlv>(*v199, v190, v25, v26, v27, v28);
            if (!VersionTlv)
            {
              PartitionId = ot::Mle::LeaderData::GetPartitionId(&v194);
              v172 = AverageRss;
              v173 = v191;
              v169 = v190;
              ParentPriority = ot::Mle::ConnectivityTlv::GetParentPriority(v190);
              LinkQuality1 = ot::Mle::ConnectivityTlv::GetLinkQuality1(v190);
              LinkQuality2 = ot::Mle::ConnectivityTlv::GetLinkQuality2(v190);
              LinkQuality3 = ot::Mle::ConnectivityTlv::GetLinkQuality3(v190);
              ot::Ip6::MessageInfo::GetPeerAddr(v199[1]);
              v170 = v203;
              ot::Ip6::Address::ToString(v203, v29);
              v30 = ot::String<(unsigned short)40>::AsCString(v203);
              v178 = &v133;
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Partition ID: %u, RSSI: %d, Link quality: %u, Priority: %d, LQI1: %u, LQI2: %u, LQI3: %u (%s,0x%04x)", v31, v32, v33, v34, v35, v36, PartitionId, v172, v173, ParentPriority, LinkQuality1, LinkQuality2, LinkQuality3, v30, v195);
              CslClockAccuracyTlv = ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(*v199, v187, v37, v38, v39, v40);
              if (CslClockAccuracyTlv)
              {
                if (CslClockAccuracyTlv != 23)
                {
                  ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Response parse error: Could not read CSL accuracy TLV", v41, v42, v43, v44, v45, v46);
                  VersionTlv = 6;
                  goto LABEL_55;
                }

                ot::Mac::CslAccuracy::Init(v187);
              }

              v47 = v181;
              *(v199 + 32) = 1;
              if (ot::Mle::Mle::IsFullThreadDevice(v47) && !ot::Mle::Mle::IsDetached(v181))
              {
                v150 = &v194;
                v147 = ot::Mle::LeaderData::GetPartitionId(&v194);
                v48 = ot::Mle::LeaderData::GetPartitionId((v181 + 184));
                v186 = v147 == v48;
                v151 = v190;
                IdSequence = ot::Mle::ConnectivityTlv::GetIdSequence(v190);
                v49 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v181);
                RouterIdSequence = ot::RouterTable::GetRouterIdSequence(v49);
                v185 = IdSequence == RouterIdSequence;
                v149 = ot::Mle::ConnectivityTlv::GetIdSequence(v151);
                v51 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v181);
                v52 = ot::RouterTable::GetRouterIdSequence(v51);
                v184 = ot::SerialNumber::IsGreater<unsigned char>(v149, v52);
                v152 = v186;
                v153 = v185;
                v154 = v184;
                v155 = *(v181 + 134);
                v156 = v186;
                v157 = v185;
                v158 = v184;
                v159 = *(v181 + 134);
                v160 = ot::Mle::LeaderData::GetPartitionId((v181 + 184));
                v53 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v181);
                v161 = ot::RouterTable::GetRouterIdSequence(v53);
                Weighting = ot::Mle::LeaderData::GetWeighting((v181 + 184));
                v54 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v181);
                IsSingleton = ot::Mle::MleRouter::IsSingleton(v54);
                v164 = ot::Mle::LeaderData::GetPartitionId(v150);
                v165 = ot::Mle::ConnectivityTlv::GetIdSequence(v151);
                v166 = ot::Mle::LeaderData::GetWeighting(v150);
                ActiveRouters = ot::Mle::ConnectivityTlv::GetActiveRouters(v151);
                v167 = &v133;
                ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Parent Response isPartIdSame=%d, isIdSeqSame=%d, isIdSeqGreater=%d,mAttachMode=%d cur:[partId:%u, idSeq:%u wt:%u, isSingleton:%d] other:[partId:%u, idSeq:%u wt:%u acRtrs:%u] ", v156, v155, v155, v153, v152, v56, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, Weighting, IsSingleton, v164, v165, v166, ActiveRouters);
                v168 = *(v181 + 134);
                switch(v168)
                {
                  case 0:
                    goto LABEL_27;
                  case 1:
                    if (!v186 || !v184)
                    {
                      goto LABEL_55;
                    }

                    break;
                  case 2:
                    if (v186)
                    {
                      goto LABEL_55;
                    }

                    v146 = ot::Mle::ConnectivityTlv::IsSingleton(v190);
                    v57 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v181);
                    v58 = ot::Mle::MleRouter::IsSingleton(v57);
                    if (ot::Mle::MleRouter::ComparePartitions(v146, &v194, v58, (v181 + 184), v59) <= 0)
                    {
                      goto LABEL_55;
                    }

                    break;
                  case 3:
                    if (!v186 || !v185 && !v184)
                    {
                      goto LABEL_55;
                    }

                    break;
                  case 4:
LABEL_27:
                    if (v186 && !v184)
                    {
                      goto LABEL_55;
                    }

                    break;
                }
              }

              if (!ot::Neighbor::IsStateParentResponse((v181 + 368)))
              {
                goto LABEL_47;
              }

              ot::Neighbor::GetExtAddress((v181 + 368));
              if (!ot::Unequatable<ot::Mac::ExtAddress>::operator!=(v60, v204))
              {
                goto LABEL_47;
              }

              v183 = 0;
              if (ot::Mle::Mle::IsFullThreadDevice(v181))
              {
                v61 = ot::Mle::ConnectivityTlv::IsSingleton(v190);
                v183 = ot::Mle::MleRouter::ComparePartitions(v61, &v194, (*(v181 + 540) & 1), (v181 + 532), v62);
              }

              if ((v183 & 0x80000000) == 0 && (v183 || ot::Mle::Mle::IsBetterParent(v181, v195, v192, v190, v196, v187)))
              {
LABEL_47:
                VersionTlv = ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(*v199, &v189, &v188);
                if (!VersionTlv)
                {
                  ot::Ip6::MessageInfo::GetPeerAddr(v199[1]);
                  v145 = v202;
                  ot::Ip6::Address::ToString(v202, v63);
                  v64 = ot::String<(unsigned short)40>::AsCString(v145);
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v65, v66, v67, v68, v69, v70, "HandleParentResponse", v64, v189, v188);
                  VersionTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v199, (v181 + 513), v71, v72);
                  if (!VersionTlv)
                  {
                    ot::Mle::Mle::InitNeighbor(v181, (v181 + 368), v199);
                    ot::Neighbor::SetRloc16(v181 + 368, v195);
                    LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters((v181 + 368));
                    ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v189);
                    ot::Neighbor::SetLinkAckFrameCounter(v181 + 368, v189);
                    ot::Neighbor::SetMleFrameCounter(v181 + 368, v188);
                    ot::Neighbor::SetVersion(v181 + 368, v196);
                    v134 = v181 + 368;
                    ot::Mle::DeviceMode::DeviceMode(&v182, 11);
                    ot::Neighbor::SetDeviceMode(v134, v182);
                    v135 = v181 + 368;
                    v74 = ot::LinkQualityForLinkMargin(v193);
                    ot::Router::SetLinkQualityOut(v135, v74);
                    ot::Neighbor::SetState(v181 + 368, 3);
                    ot::Neighbor::SetKeySequence(v181 + 368, *(v199 + 5));
                    v136 = (v181 + 368);
                    v138 = v190;
                    LeaderCost = ot::Mle::ConnectivityTlv::GetLeaderCost(v190);
                    ot::Parent::SetLeaderCost(v136, LeaderCost);
                    v137 = v187;
                    ClockAccuracy = ot::Mac::CslAccuracy::GetClockAccuracy(v187);
                    v144 = &ot::Mle::kLogModuleName;
                    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "ClockAccuracy Info-HandleParentResponse: Accuracy - %d", v77, v78, v79, v80, v81, v82, ClockAccuracy);
                    Uncertainty = ot::Mac::CslAccuracy::GetUncertainty(v137);
                    ot::Logger::LogAtLevel<(ot::LogLevel)4>(v144, "ClockUncertainity Info-HandleParentResponse: Uncertainity - %d", v84, v85, v86, v87, v88, v89, Uncertainty);
                    ot::Parent::SetCslAccuracy(v181 + 368, v137);
                    v90 = ot::Mle::ConnectivityTlv::GetParentPriority(v138);
                    v91 = v138;
                    *(v181 + 522) = v90;
                    v92 = ot::Mle::ConnectivityTlv::GetLinkQuality3(v91);
                    v93 = v138;
                    *(v181 + 523) = v92;
                    v94 = ot::Mle::ConnectivityTlv::GetLinkQuality2(v93);
                    v95 = v138;
                    *(v181 + 524) = v94;
                    v96 = ot::Mle::ConnectivityTlv::GetLinkQuality1(v95);
                    v97 = v138;
                    *(v181 + 525) = v96;
                    SedBufferSize = ot::Mle::ConnectivityTlv::GetSedBufferSize(v97);
                    v99 = v138;
                    *(v181 + 263) = SedBufferSize;
                    SedDatagramCount = ot::Mle::ConnectivityTlv::GetSedDatagramCount(v99);
                    v101 = v181;
                    v102 = SedDatagramCount;
                    v103 = v138;
                    *(v181 + 528) = v102;
                    *(v101 + 532) = v194;
                    v104 = ot::Mle::ConnectivityTlv::IsSingleton(v103);
                    v105 = v181;
                    *(v181 + 540) = v104;
                    *(v105 + 529) = v192;
                    ot::Ip6::MessageInfo::GetPeerAddr(v199[1]);
                    v139 = v201;
                    ot::Ip6::Address::ToString(v201, v106);
                    v140 = ot::String<(unsigned short)40>::AsCString(v139);
                    Rloc16 = ot::Neighbor::GetRloc16((v181 + 368));
                    v142 = v189;
                    v143 = v188;
                    v107 = ot::Mle::Mle::AttachStateToString(*(v181 + 132));
                    ot::Logger::LogAtLevel<(ot::LogLevel)4>(v144, "Added new parent candidate: %s (0x%x) ,linkFc:%u, mleFc:%u, mAttachState:%s, linkQuality:%d", v108, v109, v110, v111, v112, v113, v140, Rloc16, v142, v143, v107, v191);
                    if (!ot::Mle::Mle::isThreadCertEnabled(v181))
                    {
                      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Cert Flag disabled", v114, v115, v116, v117, v118, v119, "HandleParentResponse");
                      if (v191 == 3 && (*(v181 + 132) == 3 || *(v181 + 132) == 4))
                      {
                        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Found new parent candidate with linkQuality: %d, stopping the attach timer", v120, v121, v122, v123, v124, v125, v191);
                        ot::TimerMilli::Stop((v181 + 888));
                        ot::TimerMilli::Start((v181 + 888), 0);
                      }

                      else
                      {
                        v126 = ot::Mle::Mle::AttachStateToString(*(v181 + 132));
                        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Not handling parent response in mAttachState:%s, linkQuality:%d ", v127, v128, v129, v130, v131, v132, v126, v191);
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

LABEL_55:
  ot::Mle::Mle::LogProcessError(0xFu, VersionTlv);
}

void ot::Mle::Mle::HandleChildIdResponse(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v50 = this;
  v49 = a2;
  LeaderDataTlv = 0;
  v46 = 0;
  v45 = 0;
  LeaderDataTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*a2, &v46);
  if (!LeaderDataTlv)
  {
    ot::Ip6::MessageInfo::GetPeerAddr(v49[1]);
    ot::Mle::Mle::Log(1u, 4u, v2, v46);
    if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(v49))
    {
      LeaderDataTlv = 8;
      goto LABEL_29;
    }

    if (*(this + 132) == 5)
    {
      LeaderDataTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(*v49, &v45);
      if (!LeaderDataTlv)
      {
        if (!ot::Mle::RouterIdMatch(v46, v45))
        {
          LeaderDataTlv = 37;
          goto LABEL_29;
        }

        LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v49, v47, v3, v4, v5, v6);
        if (!LeaderDataTlv && ot::Mle::Mle::RxMessage::ContainsTlv(*v49, 0xCu, v7, v8))
        {
          v41 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v49, v44);
          if (v41)
          {
            if (v41 != 23)
            {
              LeaderDataTlv = 6;
              goto LABEL_29;
            }
          }

          else
          {
            LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadAndSaveActiveDataset(*v49, v44);
            if (LeaderDataTlv == 23)
            {
              v40 = 0;
            }

            else
            {
              v40 = LeaderDataTlv;
            }

            LeaderDataTlv = v40;
            if (v40)
            {
              goto LABEL_29;
            }
          }

          if (*(this + 133) == 3)
          {
            v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
            ot::MeshCoP::DatasetManager::Clear(v9);
          }

          v39 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(*v49, v44);
          if (v39)
          {
            if (v39 != 23)
            {
              LeaderDataTlv = 6;
              goto LABEL_29;
            }

            v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
            ot::MeshCoP::DatasetManager::Clear(v10);
          }

          else
          {
            ot::Mle::Mle::RxMessage::ReadAndSavePendingDataset(*v49, v44);
            IgnoreError();
          }

          ot::Mle::Mle::SetStateDetached(this);
          ot::Mle::Mle::SetLeaderData(this, v47);
          v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          v37 = v49;
          v11 = ot::Mle::RouterIdFromRloc16(v46);
          LeaderDataTlv = ot::Mle::MleRouter::ReadAndProcessRouteTlvOnFed(v38, v37, v11);
          if (!LeaderDataTlv)
          {
            ot::Mle::Mle::ParentCandidate::CopyTo((this + 368), (this + 192));
            ot::Mle::Mle::ParentCandidate::Clear((this + 368));
            v43 = *ot::Parent::GetCslAccuracy((this + 192));
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "ClockAccuracy Info-ChildIdResponse: Accuracy - %d", v12, v13, v14, v15, v16, v17, v43);
            v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
            CslAccuracy = ot::Parent::GetCslAccuracy((this + 192));
            ot::Mac::Mac::SetCslParentAccuracy(v36, CslAccuracy);
            ot::Neighbor::SetRloc16(this + 192, v46);
            ot::Mle::Mle::RxMessage::ReadAndSetNetworkDataTlv(*v49, v47, v19, v20);
            IgnoreError();
            ot::Mle::Mle::SetStateChild(this, v45);
            if (ot::Mle::Mle::IsRxOnWhenIdle(this))
            {
              v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
              ot::MeshForwarder::SetRxOnWhenIdle(v29, 1, v30, v31, v32, v33, v34, v35);
            }

            else
            {
              v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
              ot::DataPollSender::SetAttachMode(v21, 0);
              v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
              ot::MeshForwarder::SetRxOnWhenIdle(v22, 0, v23, v24, v25, v26, v27, v28);
            }

            *(v49 + 32) = 2;
          }
        }
      }
    }
  }

LABEL_29:
  ot::Mle::Mle::LogProcessError(4u, LeaderDataTlv);
}

void ot::Mle::Mle::HandleAnnounce(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v33 = this;
  v32 = a2;
  v31 = 0;
  Channel = 0;
  v27 = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1u, 1u, v2);
  v31 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(*v32, v30);
  if (!v31)
  {
    Channel = ot::Mle::ChannelTlvValue::GetChannel(v30, v3);
    v31 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v32, v29);
    if (!v31)
    {
      v31 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(*v32, &v27);
      if (!v31)
      {
        *(v32 + 32) = 2;
        IsOrphanAnnounce = ot::MeshCoP::Timestamp::IsOrphanAnnounce(v29, v4);
        active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
        Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
        v25 = ot::MeshCoP::Timestamp::Compare(v29, Timestamp, v7);
        v22 = Channel;
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v23 = 0;
        if (v22 == ot::Mac::Mac::GetPanChannel(v8))
        {
          v21 = v27;
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          v23 = v21 == ot::Mac::Mac::GetPanId(v9);
        }

        if (IsOrphanAnnounce || v25 < 0)
        {
          if (!IsOrphanAnnounce || !v23)
          {
            ot::Mle::Mle::SendAnnounce(this, Channel);
            v20 = Channel;
            ot::Ip6::MessageInfo::GetPeerAddr(v32[1]);
            ot::Mle::Mle::SendAnnounce(this, v20, v10, 0);
          }
        }

        else if (v25 <= 0)
        {
          v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceSender>(this);
          ot::AnnounceSender::UpdateOnReceivedAnnounce(v18);
        }

        else if (!ot::Mle::Mle::IsDetached(this) || !v23)
        {
          if (*(this + 132) != 1 || (v19 = *(this + 21), v19 < ot::MeshCoP::Timestamp::GetSeconds(v29, v11)))
          {
            *(this + 21) = ot::MeshCoP::Timestamp::GetSeconds(v29, v11);
            *(this + 142) = Channel;
            *(this + 76) = v27;
            ot::Mle::Mle::SetAttachState(this, 1u);
            ot::TimerMilli::Start((this + 888), 0xFAu);
            ot::Mle::Mle::ResetAttachCounter(this);
            ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Delay processing Announce - channel %d, panid 0x%02x", v12, v13, v14, v15, v16, v17, Channel, v27);
          }
        }
      }
    }
  }

  ot::Mle::Mle::LogProcessError(1u, v31);
}

void ot::Mle::Mle::HandleChildUpdateRequest(ot::Mle::Mle *this, ot::Mle::Mle::RxInfo *a2)
{
  v26 = this;
  v25 = a2;
  updated = 0;
  v23 = 0;
  ot::Mle::RxChallenge::RxChallenge(v29);
  ot::Mle::Mle::TlvList::TlvList(v28);
  ot::Mle::Mle::TlvList::TlvList(v27);
  updated = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v25, &v23);
  if (!updated)
  {
    ot::Ip6::MessageInfo::GetPeerAddr(*(v25 + 1));
    ot::Mle::Mle::Log(1u, 5u, v2, v23);
    ChallengeTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v25, v29, v3, v4);
    if (ChallengeTlv)
    {
      if (ChallengeTlv != 23)
      {
        updated = 6;
        goto LABEL_24;
      }

      ot::Mle::RxChallenge::Clear(v29);
    }

    else
    {
      ot::Mle::Mle::TlvList::Add(v27, 4u);
      ot::Mle::Mle::TlvList::Add(v27, 8u);
      ot::Mle::Mle::TlvList::Add(v27, 5u);
    }

    if (*(v25 + 3) != this + 192)
    {
      ot::Mle::Mle::TlvList::Add(v27, 0x11u);
      goto LABEL_19;
    }

    v22 = 0;
    v18 = ot::Tlv::Find<ot::Mle::StatusTlv>(*v25, &v22);
    if (v18)
    {
      if (v18 != 23)
      {
        updated = 6;
        goto LABEL_24;
      }
    }

    else if (v22 == 1)
    {
      goto LABEL_12;
    }

    Rloc16 = ot::Neighbor::GetRloc16((this + 192));
    if (Rloc16 == v23)
    {
      updated = ot::Mle::Mle::HandleLeaderData(this, v25, v6, v7, v8, v9);
      if (updated)
      {
        goto LABEL_24;
      }

      if (!ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(*v25, v21, v10, v11, v12, v13))
      {
        ot::Mle::Mle::TlvList::Add(v27, 0x55u);
      }

LABEL_19:
      TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v25, v28, v14, v15);
      if (TlvRequestTlv)
      {
        if (TlvRequestTlv != 23)
        {
          updated = 6;
          goto LABEL_24;
        }
      }

      else
      {
        ot::Mle::Mle::TlvList::AddElementsFrom(v27, v28);
      }

      *(v25 + 32) = 2;
      ot::Mle::Mle::ProcessKeySequence(this, v25);
      ot::Ip6::MessageInfo::GetPeerAddr(*(v25 + 1));
      updated = ot::Mle::Mle::SendChildUpdateResponse(this, v27, v29, v16);
      goto LABEL_24;
    }

LABEL_12:
    ot::Mle::Mle::BecomeDetached(this);
    IgnoreError();
  }

LABEL_24:
  ot::Mle::Mle::LogProcessError(5u, updated);
}

void ot::Mle::Mle::HandleChildUpdateResponse(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v64 = this;
  v63 = a2;
  ModeTlv = 0;
  v61 = 0;
  ot::Mle::RxChallenge::RxChallenge(v66);
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(v63[1]);
  ot::Mle::Mle::Log(1u, 6u, v2);
  ResponseTlv = ot::Mle::Mle::RxMessage::ReadResponseTlv(*v63, v66, v3, v4);
  if (ResponseTlv)
  {
    if (ResponseTlv != 23)
    {
      ModeTlv = 6;
      goto LABEL_48;
    }

    ot::Mle::RxChallenge::Clear(v66);
  }

  v52 = *(this + 130);
  if (v52 == 1)
  {
    if (!ot::Mle::RxChallenge::operator==(v66, this + 360))
    {
      ModeTlv = 8;
      goto LABEL_48;
    }
  }

  else
  {
    if (v52 != 2)
    {
      __assert_rtn("HandleChildUpdateResponse", "mle.cpp", 5094, "false");
    }

    if (v63[3] != (this + 192) || !ot::Neighbor::IsStateValid((this + 192)))
    {
      ModeTlv = 8;
      goto LABEL_48;
    }
  }

  if (ot::Tlv::Find<ot::Mle::StatusTlv>(*v63, &v61))
  {
    ModeTlv = ot::Mle::Mle::RxMessage::ReadModeTlv(*v63, &v60);
    if (!ModeTlv)
    {
      if (ot::Equatable<ot::Mle::DeviceMode>::operator==(&v60, this + 131))
      {
        v51 = *(this + 130);
        if (v51 == 1)
        {
          ModeTlv = ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(*v63, &v59, &v58);
          if (ModeTlv)
          {
            goto LABEL_48;
          }

          ot::Ip6::MessageInfo::GetPeerAddr(v63[1]);
          ot::Ip6::Address::ToString(v65, v5);
          v6 = ot::String<(unsigned short)40>::AsCString(v65);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v7, v8, v9, v10, v11, v12, "HandleChildUpdateResponse", v6, v59, v58);
          LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters((this + 192));
          ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v59);
          ot::Neighbor::SetLinkAckFrameCounter(this + 192, v59);
          ot::Neighbor::SetMleFrameCounter(this + 192, v58);
          ot::Neighbor::SetState(this + 192, 7);
          Rloc16 = ot::Mle::Mle::GetRloc16(this);
          ot::Mle::Mle::SetStateChild(this, Rloc16);
          *(this + 129) = *(this + 129) & 0xFE | 1;
          if (ot::Mle::Mle::IsFullThreadDevice(this))
          {
            *(this + 129) = *(this + 129) & 0xFD | 2;
          }
        }

        else if (v51 != 2)
        {
          __assert_rtn("HandleChildUpdateResponse", "mle.cpp", 5196, "false");
        }

        ModeTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v63, &v57);
        if (!ModeTlv)
        {
          if (ot::Mle::Mle::HasMatchingRouterIdWith(this, v57, v15))
          {
            ModeTlv = ot::Mle::Mle::HandleLeaderData(this, v63, v16, v17, v18, v19);
            if (!ModeTlv)
            {
              v50 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(*v63, &v56);
              if (v50)
              {
                if (v50 != 23)
                {
                  ModeTlv = 6;
                  goto LABEL_48;
                }
              }

              else if (v56 || !ot::Mle::Mle::IsDetachingGracefully(this))
              {
                *(this + 39) = v56;
              }

              else
              {
                ot::Mle::Mle::Stop(this);
              }

              CslClockAccuracyTlv = ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(*v63, v55, v20, v21, v22, v23);
              if (CslClockAccuracyTlv)
              {
                if (CslClockAccuracyTlv != 23)
                {
                  ModeTlv = 6;
                  goto LABEL_48;
                }
              }

              else
              {
                v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
                ot::Mac::Mac::SetCslParentAccuracy(v24, v55);
                ClockAccuracy = ot::Mac::CslAccuracy::GetClockAccuracy(v55);
                Uncertainty = ot::Mac::CslAccuracy::GetUncertainty(v55);
                ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "ClockAccuracy Info-ChildUpdateResponse: Accuracy - %d, Uncertainty - %d", v26, v27, v28, v29, v30, v31, ClockAccuracy, Uncertainty);
              }

              if (ot::Mle::Mle::IsRxOnWhenIdle(this))
              {
                v40 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
                ot::MeshForwarder::SetRxOnWhenIdle(v40, 1, v41, v42, v43, v44, v45, v46);
              }

              else
              {
                v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
                ot::DataPollSender::SetAttachMode(v32, 0);
                v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
                ot::MeshForwarder::SetRxOnWhenIdle(v33, 0, v34, v35, v36, v37, v38, v39);
              }

              if (ot::Mle::RxChallenge::IsEmpty(v66))
              {
                v47 = 2;
              }

              else
              {
                v47 = 1;
              }

              *(v63 + 32) = v47;
            }
          }

          else
          {
            ot::Mle::Mle::BecomeDetached(this);
            IgnoreError();
          }
        }
      }

      else
      {
        ModeTlv = 2;
      }
    }
  }

  else
  {
    ot::Mle::Mle::BecomeDetached(this);
    IgnoreError();
  }

LABEL_48:
  if (!ModeTlv && *(this + 137) == 2)
  {
    *(this + 139) = 0;
    *(this + 137) = 0;
    ot::Mle::Mle::ScheduleMessageTransmissionTimer(this);
  }

  ot::Mle::Mle::LogProcessError(6u, ModeTlv);
}

void ot::Mle::Mle::HandleLinkMetricsManagementRequest(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1u, 0x1Cu, v2);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v8))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(this);
    v7 = ot::LinkMetrics::Subject::HandleManagementRequest(v3, *v8, *(v8 + 3), &v6);
    if (!v7)
    {
      ot::Ip6::MessageInfo::GetPeerAddr(*(v8 + 1));
      v7 = ot::Mle::Mle::SendLinkMetricsManagementResponse(this, v4, v6);
      *(v8 + 32) = 2;
    }
  }

  else
  {
    v7 = 13;
  }

  ot::Mle::Mle::LogProcessError(0x1Cu, v7);
}

void ot::Mle::Mle::HandleLinkMetricsManagementResponse(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1u, 0x1Du, v2);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(a2))
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(this);
    v4 = *a2;
    ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
    v7 = ot::LinkMetrics::Initiator::HandleManagementResponse(v5, v4, v3);
    *(a2 + 32) = 2;
    ot::Mle::Mle::LogProcessError(0x1Du, v7);
  }

  else
  {
    ot::Mle::Mle::LogProcessError(0x1Du, 13);
  }
}

void ot::Mle::Mle::HandleLinkProbe(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1u, 0x1Eu, v2);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v12))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(this);
    v11 = ot::LinkMetrics::Subject::HandleLinkProbe(v3, *v12, &v10, v4);
    if (!v11)
    {
      if (v12[3])
      {
        v8 = v12[3];
        v6 = v10;
        AverageLqi = ot::Message::GetAverageLqi(*v12);
        AverageRss = ot::Message::GetAverageRss(*v12);
        ot::Neighbor::AggregateLinkMetrics(v8, v6, 0, AverageLqi, AverageRss);
      }

      *(v12 + 32) = 2;
    }
  }

  else
  {
    v11 = 13;
  }

  ot::Mle::Mle::LogProcessError(0x1Eu, v11);
}

void ot::Mle::Mle::ProcessKeySequence(ot::Mle::Mle *this, ot::Mle::Mle::RxInfo *a2)
{
  v43 = 0;
  v41 = *(a2 + 5);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  if (v41 > ot::KeyManager::GetCurrentKeySequence(v2))
  {
    v39 = *(a2 + 5);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    v44 = v39 - ot::KeyManager::GetCurrentKeySequence(v3) == 1;
    v40 = *(a2 + 32);
    if (*(a2 + 32))
    {
      if (v40 == 1)
      {
        v43 = 0;
        v38 = *(a2 + 5);
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
        CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v4);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Authoritative MLE msg with keySeq:%u, mCurrSeq:%u received, update keysequence", v6, v7, v8, v9, v10, v11, "ProcessKeySequence", v38, CurrentKeySequence);
      }

      else if (v40 == 2)
      {
        if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(a2))
        {
          return;
        }

        if (!v44)
        {
          Rloc16 = ot::Neighbor::GetRloc16(*(a2 + 3));
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Large key seq jump in peer class msg from 0x%04x ", v13, v14, v15, v16, v17, v18, Rloc16);
          ot::Mle::Mle::ReestablishLinkWithNeighbor(this, *(a2 + 3));
          return;
        }

        v37 = *(a2 + 5);
        v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
        v20 = ot::KeyManager::GetCurrentKeySequence(v19);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Peer MLE msg with keySeq:%u mCurrSeq:%u received, update keysequence", v21, v22, v23, v24, v25, v26, "ProcessKeySequence", v37, v20);
        v43 = 1;
      }

      if (v44)
      {
        v43 |= 2u;
      }

      v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      ot::KeyManager::SetCurrentKeySequence(v35, *(a2 + 5), v43);
    }

    else
    {
      v36 = *(a2 + 5);
      v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      v28 = ot::KeyManager::GetCurrentKeySequence(v27);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "%s Unknown MLE msg with keySeq:%u, mCurrSeq:%u received", v29, v30, v31, v32, v33, v34, "ProcessKeySequence", v36, v28);
    }
  }
}

BOOL ot::Mle::Mle::RxInfo::IsNeighborStateValid(ot::Neighbor **this)
{
  v2 = 0;
  if (this[3])
  {
    return ot::Neighbor::IsStateValid(this[3]);
  }

  return v2;
}

{
  return ot::Mle::Mle::RxInfo::IsNeighborStateValid(this);
}

void ot::Mle::Mle::ReestablishLinkWithNeighbor(ot::Mle::Mle *this, ot::Neighbor *a2)
{
  if (ot::Mle::Mle::IsAttached(this) && ot::Neighbor::IsStateValid(a2))
  {
    if (ot::Mle::Mle::IsChild(this) && a2 == (this + 192))
    {
      ot::Mle::Mle::SendChildUpdateRequest(this, 1u);
      IgnoreError();
    }

    else if (ot::Mle::Mle::IsFullThreadDevice(this))
    {
      Rloc16 = ot::Neighbor::GetRloc16(a2);
      if (ot::Mle::IsRouterRloc16(Rloc16, v3))
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        ot::Mle::MleRouter::SendLinkRequest(v4, a2);
        IgnoreError();
      }

      else
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        if (ot::ChildTable::Contains(v5, a2))
        {
          ot::Neighbor::SetState(a2, 6);
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::Mle::MleRouter::SendChildUpdateRequest(v6, a2);
          IgnoreError();
        }
      }
    }
  }
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(a1, a2);
}

void ot::Mle::Mle::Log(unsigned __int8 a1, unsigned __int8 a2, ot::Ip6::Address *a3, unsigned __int16 a4)
{
  ot::String<(unsigned short)17>::String(v20);
  if (a4 != 65534)
  {
    ot::StringWriter::Append(v20, ",0x%04x", a4);
  }

  v11 = ot::Mle::Mle::MessageActionToString(a1);
  v12 = ot::Mle::Mle::MessageTypeToString(a2);
  v13 = ot::Mle::Mle::MessageTypeActionToSuffixString(a2, a1);
  ot::Ip6::Address::ToString(v19, a3);
  v14 = ot::String<(unsigned short)40>::AsCString(v19);
  v4 = ot::String<(unsigned short)17>::AsCString(v20);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s %s%s (%s%s)", v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v4);
}

uint64_t ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(ot::Mle::Mle::RxMessage *this, ot::Mle::LeaderData *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  v8 = ot::Tlv::FindTlv<ot::Mle::LeaderDataTlv>(this, v7, a3, a4, a5, a6);
  if (!v8)
  {
    if (ot::Mle::LeaderDataTlv::IsValid(v7))
    {
      ot::Mle::LeaderDataTlv::Get(v7, v9);
    }

    else
    {
      return 6;
    }
  }

  return v8;
}

uint64_t ot::Neighbor::GetRouterId(ot::Neighbor *this)
{
  return *(this + 14) >> 10;
}

{
  return ot::Neighbor::GetRouterId(this);
}

BOOL ot::Mle::Mle::IsNetworkDataNewer(ot::Mle::Mle *this, const ot::Mle::LeaderData *a2)
{
  NetworkDataType = ot::Mle::Mle::GetNetworkDataType(this);
  DataVersion = ot::Mle::LeaderData::GetDataVersion(a2, NetworkDataType);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  v3 = ot::Mle::Mle::GetNetworkDataType(this);
  Version = ot::NetworkData::Leader::GetVersion(v8, v3);
  return ot::SerialNumber::IsGreater<unsigned char>(DataVersion, Version);
}

uint64_t ot::Mle::Mle::HandleLeaderData(ot::Mle::Mle *this, ot::Mle::Mle::RxMessage **a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v36 = this;
  v35 = a2;
  LeaderDataTlv = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*a2, v33, a3, a4, a5, a6);
  if (!LeaderDataTlv)
  {
    PartitionId = ot::Mle::LeaderData::GetPartitionId(v33);
    if (PartitionId == ot::Mle::LeaderData::GetPartitionId((this + 184)) && (Weighting = ot::Mle::LeaderData::GetWeighting(v33), Weighting == ot::Mle::LeaderData::GetWeighting((this + 184))) && (LeaderRouterId = ot::Mle::LeaderData::GetLeaderRouterId(v33), LeaderRouterId == ot::Mle::Mle::GetLeaderId(this)))
    {
      if ((*(this + 129) & 1) == 0 && !ot::Mle::Mle::IsNetworkDataNewer(this, v33))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!ot::Mle::Mle::IsChild(this))
      {
        LeaderDataTlv = 2;
        goto LABEL_38;
      }

      ot::Mle::Mle::SetLeaderData(this, v33);
      *(this + 129) = *(this + 129) & 0xFE | 1;
    }

    v22 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v35, v32);
    if (v22)
    {
      if (v22 != 23)
      {
        LeaderDataTlv = 6;
        goto LABEL_38;
      }
    }

    else if (!ot::Mle::Mle::IsLeader(this))
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
      if (ot::MeshCoP::Timestamp::operator!=(v32, Timestamp, v8))
      {
        if (!ot::Mle::Mle::RxMessage::ContainsTlv(*v35, 0x18u, v9, v10))
        {
          v28 = 1;
          goto LABEL_38;
        }

        v30 = 1;
      }
    }

    v21 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(*v35, v31);
    if (v21)
    {
      if (v21 != 23)
      {
        LeaderDataTlv = 6;
        goto LABEL_38;
      }
    }

    else if (!ot::Mle::Mle::IsLeader(this))
    {
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      v14 = ot::MeshCoP::DatasetManager::GetTimestamp(v13);
      if (ot::MeshCoP::Timestamp::operator!=(v31, v14, v15))
      {
        if (!ot::Mle::Mle::RxMessage::ContainsTlv(*v35, 0x19u, v11, v12))
        {
          v28 = 1;
          goto LABEL_38;
        }

        v29 = 1;
      }
    }

    v20 = ot::Mle::Mle::RxMessage::ReadAndSetNetworkDataTlv(*v35, v33, v11, v12);
    LeaderDataTlv = v20;
    if (v20)
    {
      if (v20 == 23)
      {
        v28 = 1;
      }
    }

    else
    {
      if (ot::Mle::Mle::IsLeader(this))
      {
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        ot::NetworkData::Leader::IncrementVersionAndStableVersion(v16);
      }

      else
      {
        if (v30)
        {
          ot::Mle::Mle::RxMessage::ReadAndSaveActiveDataset(*v35, v32);
          IgnoreError();
        }

        if (v29)
        {
          ot::Mle::Mle::RxMessage::ReadAndSavePendingDataset(*v35, v31);
          IgnoreError();
        }
      }

      *(this + 129) &= ~1u;
    }
  }

LABEL_38:
  if (v28)
  {
    ot::Ip6::MessageInfo::GetSockAddr(v35[1]);
    if (ot::Ip6::Address::IsMulticast(v17))
    {
      Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0x3E8u);
    }

    else
    {
      Uint16InRange = 10;
    }

    ot::Ip6::MessageInfo::GetPeerAddr(v35[1]);
    ot::Mle::Mle::SendDataRequestAfterDelay(this, v18, Uint16InRange);
    IgnoreError();
  }

  else if (!LeaderDataTlv)
  {
    *(this + 140) = 0;
    *(this + 135) = 0;
  }

  return LeaderDataTlv;
}

void ot::RouterTable::FindRouterById(ot::RouterTable *this, unsigned __int8 a2)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::FindRouterById(v2, a2);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::FindRouterById(this, a2);
}

uint64_t ot::Neighbor::SetLeaderFullDataVersion(uint64_t this, char a2)
{
  *(this + 31) = a2;
  return this;
}

{
  return ot::Neighbor::SetLeaderFullDataVersion(this, a2);
}

uint64_t ot::Neighbor::SetLeaderStableDataVersion(uint64_t this, char a2)
{
  *(this + 32) = a2;
  return this;
}

{
  return ot::Neighbor::SetLeaderStableDataVersion(this, a2);
}

BOOL ot::SerialNumber::IsGreater<unsigned char>(char a1, char a2)
{
  return ot::SerialNumber::IsLess<unsigned char>(a2, a1);
}

{
  return ot::SerialNumber::IsGreater<unsigned char>(a1, a2);
}

BOOL ot::Mle::Mle::GetNetworkDataType(ot::Mle::Mle *this)
{
  return ot::Mle::DeviceMode::GetNetworkDataType((this + 131));
}

{
  return ot::Mle::Mle::GetNetworkDataType(this);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x16, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(a1, a2);
}

BOOL ot::MeshCoP::Timestamp::operator!=(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) != 0;
}

{
  return ot::MeshCoP::Timestamp::operator!=(a1, a2, a3);
}

BOOL ot::Mle::Mle::RxMessage::ContainsTlv(ot::Tlv *a1, unsigned __int8 a2, uint64_t a3, ot::OffsetRange *a4)
{
  *&v6[1] = a1;
  v6[0] = a2;
  return ot::Tlv::FindTlvValueOffsetRange(a1, a2, &v5, a4) == 0;
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x17, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::Mle::Mle::RxMessage::ReadAndSetNetworkDataTlv(ot::Mle::Mle::RxMessage *this, const ot::Mle::LeaderData *a2, uint64_t a3, ot::OffsetRange *a4)
{
  v14 = this;
  v13 = a2;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(this, 0xC, &v11, a4);
  if (!TlvValueOffsetRange)
  {
    v9 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this);
    DataVersion = ot::Mle::LeaderData::GetDataVersion(v13, 0);
    v8 = ot::Mle::LeaderData::GetDataVersion(v13, 1);
    v4 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    NetworkDataType = ot::Mle::Mle::GetNetworkDataType(v4);
    return ot::NetworkData::Leader::SetNetworkData(v9, DataVersion, v8, NetworkDataType, this, &v11);
  }

  return TlvValueOffsetRange;
}

BOOL ot::Mle::Mle::IsBetterParent(ot::Mle::Mle *this, unsigned __int16 a2, unsigned __int8 a3, const ot::Mle::ConnectivityTlv *a4, unsigned __int16 a5, const ot::Mac::CslAccuracy *a6)
{
  v51 = this;
  v50 = a2;
  v49 = a3;
  v48 = a4;
  v47 = a5;
  v46 = a6;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  *__str = 0;
  *&__str[3] = 0;
  *v41 = 0;
  *&v41[3] = 0;
  snprintf(__str, 7uLL, "0x%04x", a2);
  Rloc16 = ot::Neighbor::GetRloc16((this + 368));
  snprintf(v41, 7uLL, "0x%04x", Rloc16);
  v40 = ot::LinkQualityForLinkMargin(v49);
  TwoWayLinkQuality = ot::Router::GetTwoWayLinkQuality((this + 368));
  v45 = ot::ThreeWayCompare<ot::LinkQuality>(v40, TwoWayLinkQuality);
  if (!v45)
  {
    IsRouterRloc16 = ot::Mle::IsRouterRloc16(v50, v8);
    v9 = ot::Neighbor::GetRloc16((this + 368));
    v11 = ot::Mle::IsRouterRloc16(v9, v10);
    v45 = ot::ThreeWayCompare<BOOL>(IsRouterRloc16, v11);
    if (!v45)
    {
      ParentPriority = ot::Mle::ConnectivityTlv::GetParentPriority(v48);
      v45 = ot::ThreeWayCompare<signed char>(ParentPriority, *(this + 522));
      if (!v45)
      {
        LinkQuality3 = ot::Mle::ConnectivityTlv::GetLinkQuality3(v48);
        v45 = ot::ThreeWayCompare<unsigned char>(LinkQuality3, *(this + 523));
        if (!v45)
        {
          v37 = v47;
          Version = ot::Neighbor::GetVersion((this + 368));
          v45 = ot::ThreeWayCompare<unsigned short>(v37, Version);
          if (!v45)
          {
            SedBufferSize = ot::Mle::ConnectivityTlv::GetSedBufferSize(v48);
            v45 = ot::ThreeWayCompare<unsigned short>(SedBufferSize, *(this + 263));
            if (!v45)
            {
              SedDatagramCount = ot::Mle::ConnectivityTlv::GetSedDatagramCount(v48);
              v45 = ot::ThreeWayCompare<unsigned char>(SedDatagramCount, *(this + 528));
              if (!v45)
              {
                LinkQuality2 = ot::Mle::ConnectivityTlv::GetLinkQuality2(v48);
                v45 = ot::ThreeWayCompare<unsigned char>(LinkQuality2, *(this + 524));
                if (!v45)
                {
                  LinkQuality1 = ot::Mle::ConnectivityTlv::GetLinkQuality1(v48);
                  v45 = ot::ThreeWayCompare<unsigned char>(LinkQuality1, *(this + 525));
                  if (!v45)
                  {
                    if (ot::Mle::Mle::IsRxOnWhenIdle(this) || (v44 = ot::Mle::Mle::CalcParentCslMetric(this, v46), CslAccuracy = ot::Parent::GetCslAccuracy((this + 368)), v43 = ot::Mle::Mle::CalcParentCslMetric(this, CslAccuracy), (v45 = ot::ThreeWayCompare<unsigned long long>(v43, v44)) == 0))
                    {
                      v45 = ot::ThreeWayCompare<unsigned char>(v49, *(this + 529));
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

  v21 = v45;
  v22 = v50;
  v23 = ot::Neighbor::GetRloc16((this + 368));
  v24 = ot::Mle::ConnectivityTlv::GetParentPriority(v48);
  v25 = *(this + 522);
  v26 = ot::Mle::ConnectivityTlv::GetLinkQuality3(v48);
  v27 = *(this + 523);
  v28 = ot::Mle::ConnectivityTlv::GetLinkQuality2(v48);
  v29 = *(this + 524);
  v30 = ot::Mle::ConnectivityTlv::GetLinkQuality1(v48);
  v31 = *(this + 525);
  v32 = v47;
  v33 = ot::Neighbor::GetVersion((this + 368));
  v34 = ot::Mle::ConnectivityTlv::GetSedBufferSize(v48);
  v35 = *(this + 263);
  v36 = ot::Mle::ConnectivityTlv::GetSedDatagramCount(v48);
  if (v45)
  {
    if (v45 <= 0)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "IsBetterParent rval:%d, rloc:[0x%x, 0x%x], pPrio:[%d %d], lq3:[%d %d], lq2:[%d %d], lq1:[%d %d], vers:[%d %d], sedBufSz:[%d %d], sedDgmCnt:[%d %d], lm:[%d %d] cslAcc:[%lld,%lld], Verdict Better Parent: %s", v32, v31, v30, v29, v28, v27, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(this + 528), v49, *(this + 529), v44, v43, v41);
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "IsBetterParent rval:%d, rloc:[0x%x, 0x%x], pPrio:[%d %d], lq3:[%d %d], lq2:[%d %d], lq1:[%d %d], vers:[%d %d], sedBufSz:[%d %d], sedDgmCnt:[%d %d], lm:[%d %d] cslAcc:[%lld,%lld], Verdict Better Parent: %s", v32, v31, v30, v29, v28, v27, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(this + 528), v49, *(this + 529), v44, v43, __str);
    }
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "IsBetterParent rval:%d, rloc:[0x%x, 0x%x], pPrio:[%d %d], lq3:[%d %d], lq2:[%d %d], lq1:[%d %d], vers:[%d %d], sedBufSz:[%d %d], sedDgmCnt:[%d %d], lm:[%d %d] cslAcc:[%lld,%lld], Verdict Better Parent: %s", v32, v31, v30, v29, v28, v27, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(this + 528), v49, *(this + 529), v44, v43, "both parents are equal");
  }

  return v45 > 0;
}

uint64_t ot::ThreeWayCompare<ot::LinkQuality>(unsigned __int8 a1, unsigned __int8 a2)
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
  return ot::ThreeWayCompare<ot::LinkQuality>(a1, a2);
}

uint64_t ot::ThreeWayCompare<signed char>(char a1, char a2)
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
  return ot::ThreeWayCompare<signed char>(a1, a2);
}

uint64_t ot::ThreeWayCompare<unsigned char>(unsigned __int8 a1, unsigned __int8 a2)
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
  return ot::ThreeWayCompare<unsigned char>(a1, a2);
}

uint64_t ot::Mle::ConnectivityTlv::GetLinkQuality3(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 3);
}

{
  return ot::Mle::ConnectivityTlv::GetLinkQuality3(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetSedBufferSize(ot::Mle::ConnectivityTlv *this)
{
  v4 = 1280;
  if (ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(this))
  {
    return ot::BigEndian::HostSwap16(*(this + 9), v1);
  }

  return v4;
}

{
  return ot::Mle::ConnectivityTlv::GetSedBufferSize(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetSedDatagramCount(ot::Mle::ConnectivityTlv *this)
{
  v3 = 1;
  if (ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(this))
  {
    return *(this + 11);
  }

  return v3;
}

{
  return ot::Mle::ConnectivityTlv::GetSedDatagramCount(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetLinkQuality2(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 4);
}

{
  return ot::Mle::ConnectivityTlv::GetLinkQuality2(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetLinkQuality1(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 5);
}

{
  return ot::Mle::ConnectivityTlv::GetLinkQuality1(this);
}

unint64_t ot::Mle::Mle::CalcParentCslMetric(ot::Mle::Mle *this, const ot::Mac::CslAccuracy *a2)
{
  v4 = 1000000 * ot::Mle::Mle::GetCslTimeout(this) / 0x26C0;
  v3 = 9920 * v4 * (v4 + 1) / 0xF4240 * ot::Mac::CslAccuracy::GetClockAccuracy(a2);
  return v3 + ot::Mac::CslAccuracy::GetUncertaintyInMicrosec(a2) * v4;
}

uint64_t ot::Parent::GetCslAccuracy(ot::Parent *this)
{
  return this + 143;
}

{
  return ot::Parent::GetCslAccuracy(this);
}

uint64_t ot::Mle::Mle::RxMessage::ReadVersionTlv(ot::Mle::Mle::RxMessage *this, char *a2)
{
  v3 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(this, a2);
  if (!v3 && *a2 < 2u)
  {
    return 6;
  }

  return v3;
}

uint64_t ot::Mle::Mle::RxMessage::ReadAndMatchResponseTlvWith(ot::Mle::Mle::RxMessage *a1, const void *a2)
{
  ot::Mle::RxChallenge::RxChallenge(v8);
  ResponseTlv = ot::Mle::Mle::RxMessage::ReadResponseTlv(a1, v8, v2, v3);
  if (!ResponseTlv && !ot::Mle::RxChallenge::operator==(v8, a2))
  {
    return 8;
  }

  return ResponseTlv;
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 0x10u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(a1, a2);
}

uint64_t ot::Tlv::FindTlv<ot::Mle::ConnectivityTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0xF, 0xCu, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::Mle::ConnectivityTlv>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(ot::Mle::Mle::RxMessage *this, ot::Mac::CslAccuracy *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v14 = this;
  v13 = a2;
  v12 = 0;
  v12 = ot::Tlv::FindTlv<ot::Mle::CslClockAccuracyTlv>(this, v11, a3, a4, a5, a6);
  if (!v12)
  {
    if (ot::Mle::CslClockAccuracyTlv::IsValid(v11))
    {
      v9 = v13;
      CslClockAccuracy = ot::Mle::CslClockAccuracyTlv::GetCslClockAccuracy(v11);
      ot::Mac::CslAccuracy::SetClockAccuracy(v9, CslClockAccuracy);
      v10 = v13;
      CslUncertainty = ot::Mle::CslClockAccuracyTlv::GetCslUncertainty(v11);
      ot::Mac::CslAccuracy::SetUncertainty(v10, CslUncertainty);
    }

    else
    {
      return 6;
    }
  }

  return v12;
}

uint64_t ot::Mle::ConnectivityTlv::GetIdSequence(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 7);
}

{
  return ot::Mle::ConnectivityTlv::GetIdSequence(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetActiveRouters(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 8);
}

{
  return ot::Mle::ConnectivityTlv::GetActiveRouters(this);
}

BOOL ot::Mle::ConnectivityTlv::IsSingleton(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 8) <= 1u;
}

{
  return ot::Mle::ConnectivityTlv::IsSingleton(this);
}

uint64_t ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(ot::Mle::Mle::RxMessage *this, char *a2, char *a3)
{
  v6 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(this, a2);
  if (!v6)
  {
    v4 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(this, a3);
    if (v4)
    {
      if (v4 == 23)
      {
        *a3 = *a2;
      }

      else
      {
        return 6;
      }
    }
  }

  return v6;
}

uint64_t ot::Router::SetLinkQualityOut(uint64_t result, char a2)
{
  *(result + 141) = *(result + 141) & 0xFC | a2 & 3;
  return result;
}

{
  return ot::Router::SetLinkQualityOut(result, a2);
}

uint64_t ot::Parent::SetLeaderCost(uint64_t this, char a2)
{
  *(this + 142) = a2;
  return this;
}

{
  return ot::Parent::SetLeaderCost(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::GetLeaderCost(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 6);
}

{
  return ot::Mle::ConnectivityTlv::GetLeaderCost(this);
}

uint64_t ot::Parent::SetCslAccuracy(uint64_t this, const ot::Mac::CslAccuracy *a2)
{
  *(this + 143) = *a2;
  return this;
}

{
  return ot::Parent::SetCslAccuracy(this, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0xAu, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(a1, a2);
}

ot::Mle::RxChallenge *ot::Mle::RxChallenge::RxChallenge(ot::Mle::RxChallenge *this)
{
  ot::Mle::RxChallenge::RxChallenge(this);
  return this;
}

{
  ot::Mac::Address::Address(this);
  return this;
}

ot::Mle::Mle::TlvList *ot::Mle::Mle::TlvList::TlvList(ot::Mle::Mle::TlvList *this)
{
  ot::Mle::Mle::TlvList::TlvList(this);
  return this;
}

{
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::Array(this);
  return this;
}

void ot::Mle::Mle::TlvList::Add(ot::Mle::Mle::TlvList *this, unsigned __int8 a2)
{
  v10 = this;
  v9 = a2;
  if (!ot::Array<unsigned char,(unsigned short)32,unsigned char>::Contains(this, &v9))
  {
    if (ot::Array<unsigned char,(unsigned short)32,unsigned char>::PushBack(this, &v9))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Failed to include TLV %d", v2, v3, v4, v5, v6, v7, v9);
    }
  }
}

uint64_t ot::Mle::RxChallenge::Clear(ot::Mle::RxChallenge *this)
{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::Clear(this);
}

{
  return ot::Mle::RxChallenge::Clear(this);
}

uint64_t ot::Tlv::Find<ot::Mle::StatusTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 0x11u, a2);
}

{
  return ot::Tlv::Find<ot::Mle::StatusTlv>(a1, a2);
}

uint64_t ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(ot::Mle::Mle::RxMessage *this, ot::Mle::Mle::TlvList *a2, uint64_t a3, ot::OffsetRange *a4)
{
  v13 = this;
  v12 = a2;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(this, 0xD, &v10, a4);
  if (!TlvValueOffsetRange)
  {
    MaxSize = ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetMaxSize();
    ot::OffsetRange::ShrinkLength(&v10, MaxSize);
    ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetArrayBuffer();
    ot::Message::ReadBytes(this, &v10, v5);
    v8 = v12;
    Length = ot::OffsetRange::GetLength(&v10);
    ot::Array<unsigned char,(unsigned short)32,unsigned char>::SetLength(v8, Length);
  }

  return TlvValueOffsetRange;
}

void ot::Mle::Mle::TlvList::AddElementsFrom(ot::Mle::Mle::TlvList *this, const ot::Mle::Mle::TlvList *a2)
{
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a2);
  while (v5 != v4)
  {
    ot::Mle::Mle::TlvList::Add(this, *v5++);
  }
}

uint64_t ot::Mle::Mle::RxMessage::ReadModeTlv(ot::Mle::Mle::RxMessage *this, ot::Mle::DeviceMode *a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(this, &v3);
  if (!v4)
  {
    ot::Mle::DeviceMode::Set(v5, v3);
  }

  return v4;
}

BOOL ot::Equatable<ot::Mle::DeviceMode>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 1uLL) == 0;
}

{
  return ot::Equatable<ot::Mle::DeviceMode>::operator==(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 2u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(a1, a2);
}

BOOL ot::Mle::Mle::IsDetachingGracefully(ot::Mle::Mle *this)
{
  return ot::Timer::IsRunning((this + 960));
}

{
  return ot::Mle::Mle::IsDetachingGracefully(this);
}

BOOL ot::Mle::RxChallenge::IsEmpty(ot::Mle::RxChallenge *this)
{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(this) == 0;
}

{
  return ot::Mle::RxChallenge::IsEmpty(this);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x14, a2, 3);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x15u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::LinkMetrics::Subject>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(a1);
}

uint64_t ot::Mle::Mle::GetParentRloc16(ot::Mle::Mle *this)
{
  if (ot::Neighbor::IsStateValid((this + 192)))
  {
    return ot::Neighbor::GetRloc16((this + 192));
  }

  else
  {
    return -2;
  }
}

uint64_t ot::Mle::Mle::GetParentInfo(ot::Mle::Mle *this, ot::Router::Info *a2)
{
  v4 = 0;
  if (ot::Mle::Mle::IsChild(this))
  {
    ot::Router::Info::SetFrom(a2, (this + 192));
  }

  else
  {
    return 13;
  }

  return v4;
}

const char *ot::Mle::Mle::MessageTypeActionToSuffixString(char a1, char a2)
{
  v5 = "";
  switch(a1)
  {
    case 3:
      return " - short";
    case 6:
    case 5:
      return " as child";
    case 13:
      return " to routers";
    case 14:
      return " to routers and REEDs";
  }

  if (a1 != 21 && a1 != 20)
  {
    if (a1 == 22)
    {
      v3 = " from unknown child";
      if (a2 != 1)
      {
        return " to child";
      }

      return v3;
    }
  }

  else
  {
    v2 = " from child";
    if (a2 != 1)
    {
      return " to child";
    }

    return v2;
  }

  return v5;
}

void ot::Mle::Mle::LogError(uint64_t result, unsigned __int8 a2, int a3)
{
  v25 = result;
  v24 = a2;
  v23 = a3;
  if (a3)
  {
    if (v25 == 1 && (v23 == 2 || v23 == 4))
    {
      v21 = ot::Mle::Mle::MessageTypeToString(v24);
      v22 = ot::Mle::Mle::MessageTypeActionToSuffixString(v24, v25);
      v3 = ot::ErrorToString(v23);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Failed to %s %s%s: %s", v4, v5, v6, v7, v8, v9, "process", v21, v22, v3);
    }

    else
    {
      v10 = "send";
      if (v25)
      {
        v10 = "process";
      }

      v18 = v10;
      v19 = ot::Mle::Mle::MessageTypeToString(v24);
      v20 = ot::Mle::Mle::MessageTypeActionToSuffixString(v24, v25);
      v11 = ot::ErrorToString(v23);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Failed to %s %s%s: %s", v12, v13, v14, v15, v16, v17, v18, v19, v20, v11);
    }
  }
}

uint64_t ot::Mle::Mle::SendLinkMetricsManagementRequest(ot::Mle::Mle *this, __n128 *a2, const ot::Tlv *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v6 = ot::Mle::Mle::NewMleMessage(this, 18);
  if (v6)
  {
    ot::Mle::Tlv::SetType(v5, 88);
    Size = ot::Tlv::GetSize(v8);
    ot::Tlv::SetLength(v5, Size);
    v7 = ot::Message::Append<ot::Mle::Tlv>(v6, v5);
    if (!v7)
    {
      v7 = ot::Tlv::AppendTo(v8, v6);
      if (!v7)
      {
        v7 = ot::Mle::Mle::TxMessage::SendTo(v6, v9);
      }
    }
  }

  else
  {
    v7 = 3;
  }

  if (v7 && v6)
  {
    ot::Message::Free(v6);
  }

  return v7;
}

uint64_t ot::Mac::CslAccuracy::GetUncertaintyInMicrosec(ot::Mac::CslAccuracy *this)
{
  return 10 * *(this + 1);
}

{
  return ot::Mac::CslAccuracy::GetUncertaintyInMicrosec(this);
}

uint64_t ot::Mle::Mle::AttachCslPeripheral(ot::Mle::Mle *this, const ot::Mac::ExtAddress *a2, unsigned int a3, unsigned __int8 a4, char a5, char a6, unsigned __int8 a7)
{
  v7 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v8, v9, v10, v11, v12, v13, v7, "AttachCslPeripheral");
  Instance = ot::InstanceLocator::GetInstance(this);
  DeviceRole = otThreadGetDeviceRole(Instance);
  if (DeviceRole == 4)
  {
    if (*(this + 128))
    {
      v70 = 13;
    }

    else
    {
      if ((a5 & 1) == 0)
      {
        *(this + 857) = 0;
        ot::Mle::Mle::AttachCslPeripheral(ot::Mac::ExtAddress const&,unsigned int,unsigned char,BOOL,unsigned char,unsigned char)::mNumRetries = a6;
      }

      if (++*(this + 857) <= ot::Mle::Mle::AttachCslPeripheral(ot::Mac::ExtAddress const&,unsigned int,unsigned char,BOOL,unsigned char,unsigned char)::mNumRetries)
      {
        *(this + 858) = *a2;
        *(this + 217) = a3;
        *(this + 872) = a4;
        *(this + 128) = 1;
        v29 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v30, v31, v32, v33, v34, v35, v29, "AttachCslPeripheral");
        ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
        if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
        {
          v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
          ot::MeshForwarder::SetRxOnWhenIdle(v36, 0, v37, v38, v39, v40, v41, v42);
        }

        v43 = ot::WakeupTxScheduler::WakeUpPatternToInterval((this + 72), a4);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "In %s, aIntervalUs is %d, aDurationMs is %d, aWakeupPattern is %d", v44, v45, v46, v47, v48, v49, "AttachCslPeripheral", v43, a3, a4);
        v70 = ot::WakeupTxScheduler::WakeUp((this + 72), a2, a3, a4, a7, v50, v51, v52);
      }

      else
      {
        *(this + 857) = 0;
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Wakeup retry exceeded %s", v15, v16, v17, v18, v19, v20, "AttachCslPeripheral");
        v70 = 1;
        v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
        ot::Notifier::Signal(v28, 0x2000000000);
      }
    }
  }

  else
  {
    v21 = otThreadDeviceRoleToString(DeviceRole);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Central has to be in Leader role to wakeup, current role = %s, %s", v22, v23, v24, v25, v26, v27, v21, "AttachCslPeripheral");
    v70 = 13;
  }

  if (v70 == 13)
  {
    v53 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, Attach called in invalid state, %s", v54, v55, v56, v57, v58, v59, v53, "AttachCslPeripheral");
    return 13;
  }

  else
  {
    if (v70)
    {
      *(this + 128) = 0;
      v60 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v61, v62, v63, v64, v65, v66, v60, "AttachCslPeripheral");
    }

    return v70;
  }
}

void ot::Mle::Mle::HandleCslWakeupTxInitiatedStartAttachTimer(ot::Mle::Mle *this)
{
  v1 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v2, v3, v4, v5, v6, v7, v1, "HandleCslWakeupTxInitiatedStartAttachTimer");
  *(this + 128) = 2;
  ConnectionWindowUs = ot::WakeupTxScheduler::GetConnectionWindowUs((this + 72));
  ot::TimerMicro::Start((this + 832), ConnectionWindowUs + 1000 * *(this + 217));
  v9 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v10, v11, v12, v13, v14, v15, v9, "HandleCslWakeupTxInitiatedStartAttachTimer");
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Connection window open, mCslPeripheralAttachTimer.Start timer", v16, v17, v18, v19, v20, v21, "HandleCslWakeupTxInitiatedStartAttachTimer");
}

uint64_t ot::WakeupTxScheduler::GetConnectionWindowUs(ot::WakeupTxScheduler *this)
{
  return 12 * *(this + 9) * *(this + 49);
}

{
  return ot::WakeupTxScheduler::GetConnectionWindowUs(this);
}

uint64_t ot::WakeupTxScheduler::GetTxEndTime(ot::WakeupTxScheduler *this)
{
  return *(this + 3);
}

{
  return ot::WakeupTxScheduler::GetTxEndTime(this);
}

uint64_t ot::Mle::Mle::DetachCslPeripheral(ot::Mle::Mle *this)
{
  v25 = 0;
  CslPeripheral = ot::Mle::Mle::GetCslPeripheral(this);
  if (ot::Mle::Mle::IsCslPeripheralAttached(this))
  {
    if (CslPeripheral)
    {
      *(this + 128) = 4;
      v1 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v2, v3, v4, v5, v6, v7, v1, "DetachCslPeripheral");
      if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((CslPeripheral + 144)) <= 0)
      {
        *(this + 856) = *(this + 856) & 0xFE | 1;
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(this);
        ot::ChildSupervisor::SendMessage(v15, CslPeripheral);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Sending DetachCslPeripheral", v16, v17, v18, v19, v20, v21, "DetachCslPeripheral");
      }

      else
      {
        IndirectMessageCount = ot::IndirectSender::ChildInfo::GetIndirectMessageCount((CslPeripheral + 144));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Deferring DetachCslPeripheral as there are (%d) Indirect TX Messages in Q", v9, v10, v11, v12, v13, v14, "DetachCslPeripheral", IndirectMessageCount);
      }
    }

    else
    {
      return 13;
    }
  }

  else
  {
    return 13;
  }

  return v25;
}

void ot::Mle::Mle::HandleSentFrameToNeighbor(ot::InstanceLocator *this, ot::Neighbor *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 128) == 4)
  {
    if (*(this + 856))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Completing DetachCslPeripheral", a3, a4, a5, a6, a7, a8, "HandleSentFrameToNeighbor");
      *(this + 856) &= ~1u;
      v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::RemoveNeighbor(v21, a2);
      ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
    }

    else if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)) <= 0)
    {
      *(this + 856) = *(this + 856) & 0xFE | 1;
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(this);
      ot::ChildSupervisor::SendMessage(v14, a2);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Sending DetachCslPeripheral", v15, v16, v17, v18, v19, v20, "HandleSentFrameToNeighbor");
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Deferring DetachCslPeripheral again", v8, v9, v10, v11, v12, v13, "HandleSentFrameToNeighbor");
    }
  }
}

uint64_t ot::Mle::Mle::WedWakeUpPattern(ot::Mle::Mle *this)
{
  v20 = 2;
  BTLoad = ot::Mle::Mle::getBTLoad(this);
  ot::Mle::Mle::LogCoExLoad(this);
  if (ot::Mle::Mle::getAudioTaskId(this) == 6)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s BT audio task is LEA 5ms(%d), set the wake up pattern as %d", v1, v2, v3, v4, v5, v6, "WedWakeUpPattern", 6, 4);
  }

  WiFiStateId = ot::Mle::Mle::getWiFiStateId(this);
  WiFiP2PStatus = ot::Mle::Mle::getWiFiP2PStatus(this);
  if (WiFiStateId <= 1u)
  {
LABEL_12:
    if (WiFiP2PStatus && WiFiStateId)
    {
      if (BTLoad >= 0x55u)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      v20 = v8;
    }

    else if (BTLoad < 0x7Eu)
    {
      if (BTLoad < 0x55u)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 1;
    }

    goto LABEL_23;
  }

  if (WiFiStateId != 2)
  {
    if (WiFiStateId != 4 && WiFiStateId != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (BTLoad >= 0x55u)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v20 = v7;
LABEL_23:
  if (ot::Mle::Mle::hasHIDConnected(this))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s, There is HID connected, just use Pattern 1(one per 15ms).", v9, v10, v11, v12, v13, v14, "WedWakeUpPattern");
    v20 = 1;
  }

  if (v20 == 3)
  {
    v20 = 2;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s, set WED wakeup pattern %d", v9, v10, v11, v12, v13, v14, "WedWakeUpPattern", v20);
  return v20;
}

uint64_t ot::Mle::Mle::getEcslPeriod(ot::Mle::Mle *this)
{
  ot::Mle::Mle::LogCoExLoad(this);
  if (ot::Mle::Mle::getAudioTaskId(this) > 0 || ot::Mle::Mle::hasHIDConnected(this) || ot::Mle::Mle::getWiFiStateId(this) == 2)
  {
    v9 = 375;
  }

  else
  {
    v9 = 250;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s, eCSL Period= %d mSec", v1, v2, v3, v4, v5, v6, "getEcslPeriod", 160 * v9 / 0x3E8);
  return v9;
}

BOOL ot::CallbackBase<void (*)(void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(void *)>::IsSet(a1);
}

BOOL ot::Array<unsigned char,(unsigned short)32,unsigned char>::Contains(uint64_t a1, unsigned __int8 *a2)
{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::Find(a1, a2) != 0;
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::Contains(a1, a2);
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::PushBack(uint64_t a1, char *a2)
{
  if (ot::Array<unsigned char,(unsigned short)32,unsigned char>::IsFull(a1))
  {
    return 3;
  }

  else
  {
    v2 = *a2;
    v3 = (*(a1 + 32))++;
    *(a1 + v3) = v2;
    return 0;
  }
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::PushBack(a1, a2);
}

uint64_t ot::Message::Read<ot::Mle::Mle::DelayedResponseMetadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x14u);
}

{
  return ot::Message::Read<ot::Mle::Mle::DelayedResponseMetadata>(a1, a2, a3);
}

_BYTE *ot::Mle::Mle::SecurityHeader::InitSecurityControl(_BYTE *this)
{
  *this = 21;
  return this;
}

{
  return ot::Mle::Mle::SecurityHeader::InitSecurityControl(this);
}

uint64_t ot::Message::Append<ot::Mle::Mle::SecurityHeader>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0xAu);
}

{
  return ot::Message::Append<ot::Mle::Mle::SecurityHeader>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::Mle::StatusTlv>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 17, a2);
}

{
  return ot::Tlv::Append<ot::Mle::StatusTlv>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 2u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)3>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 3, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)3>>(a1, a2, a3);
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)4>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 4, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)4>>(a1, a2, a3);
}

void ot::Mle::RxChallenge::GetBytes(ot::Mle::RxChallenge *this)
{
  ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
}

{
  ot::Mle::RxChallenge::GetBytes(this);
}

uint64_t ot::Mle::RxChallenge::GetLength(ot::Mle::RxChallenge *this)
{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(this);
}

{
  return ot::Mle::RxChallenge::GetLength(this);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::KeyManager>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::KeyManager>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::KeyManager>(a1);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 5u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 8u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0xAu, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(a1, a2);
}

uint64_t ot::Mle::LeaderDataTlv::Init(ot::Mle::LeaderDataTlv *this)
{
  ot::Mle::Tlv::SetType(this, 11);
  return ot::Tlv::SetLength(this, 8);
}

{
  return ot::Mle::LeaderDataTlv::Init(this);
}

uint64_t ot::Mle::LeaderDataTlv::Set(ot::Mle::LeaderDataTlv *this, const ot::Mle::LeaderData *a2)
{
  PartitionId = ot::Mle::LeaderData::GetPartitionId(a2);
  *(this + 2) = ot::BigEndian::HostSwap32(PartitionId, v3);
  *(this + 6) = ot::Mle::LeaderData::GetWeighting(a2);
  *(this + 7) = ot::Mle::LeaderData::GetDataVersion(a2, 0);
  *(this + 8) = ot::Mle::LeaderData::GetDataVersion(a2, 1);
  result = ot::Mle::LeaderData::GetLeaderRouterId(a2);
  *(this + 9) = result;
  return result;
}

{
  return ot::Mle::LeaderDataTlv::Set(this, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(ot::Message *a1, unsigned __int8 a2)
{
  v26 = a1;
  v25 = a2;
  v24 = 0;
  v23 = 0;
  if (*(ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1) + 129))
  {
    v24 = 13;
  }

  else
  {
    v23 = -2;
    v8 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
    ot::NetworkData::NetworkData::CopyNetworkData(v8, v25, v27, &v23);
    IgnoreError();
    v24 = ot::Tlv::Append<ot::TlvInfo<(unsigned char)12>>(a1, v27, v23);
  }

  if (v24)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "%s Network data TLV could not be sent as mRetrieveNewNetworkData is true", v2, v3, v4, v5, v6, v7, "AppendNetworkDataTlv");
  }

  else
  {
    v19 = v23;
    v20 = v25;
    v9 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
    Version = ot::NetworkData::Leader::GetVersion(v9, 0);
    v10 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
    v11 = ot::NetworkData::Leader::GetVersion(v10, 1);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s Network data len =%d ,Type=%d, leaderDataFull:%d, leaderDataSubset:%d", v12, v13, v14, v15, v16, v17, "AppendNetworkDataTlv", v19, v20, Version, v11);
  }

  return v24;
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)12>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 0xC, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)12>>(a1, a2, a3);
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)13>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 0xD, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)13>>(a1, a2, a3);
}

uint64_t ot::Tlv::Append<ot::Mle::ScanMaskTlv>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 14, a2);
}

{
  return ot::Tlv::Append<ot::Mle::ScanMaskTlv>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 16, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(a1, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(ot::Mle::Mle::TxMessage *this, unsigned __int8 a2, const ot::Ip6::Address *a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  v6[4] = 0;
  *v6 = ot::Mle::AddressRegistrationTlv::ControlByteFor(a2);
  *&v6[1] = ot::Message::Append<unsigned char>(this, v6);
  if (!*&v6[1])
  {
    Iid = ot::Ip6::Address::GetIid(v7);
    *&v6[1] = ot::Message::Append<ot::Ip6::InterfaceIdentifier>(this, Iid);
  }

  return *&v6[1];
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::ThreadNetif>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(a1);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::DuaManager>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::DuaManager>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendAddressEntry(ot::Mle::Mle::TxMessage *this, const ot::Ip6::Address *a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  v5 = ot::Message::Append<unsigned char>(this, &v4);
  if (!v5)
  {
    return ot::Message::Append<ot::Ip6::Address>(this, v6);
  }

  return v5;
}

uint64_t ot::Ip6::Netif::IterateExternalMulticastAddresses(uint64_t a1, char a2)
{
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::Builder(&v3, a1, a2);
  return v3;
}

{
  return ot::Ip6::Netif::IterateExternalMulticastAddresses(a1, a2);
}

BOOL ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(a1);
}

void ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(ot::Ip6::Netif::ExternalMulticastAddress **a1)
{
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Advance(a1);
}

{
  ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(a1);
}

uint64_t ot::Message::Write<ot::Mle::Tlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 2u);
}

{
  return ot::Message::Write<ot::Mle::Tlv>(a1, a2, a3);
}

uint64_t ot::Mle::AddressRegistrationTlv::ControlByteFor(ot::Mle::AddressRegistrationTlv *this)
{
  return this & 0xF | 0x80u;
}

{
  return ot::Mle::AddressRegistrationTlv::ControlByteFor(this);
}

uint64_t ot::Message::Append<ot::Ip6::InterfaceIdentifier>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 8u);
}

{
  return ot::Message::Append<ot::Ip6::InterfaceIdentifier>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0x1Bu, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(a1, a2);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendPendingTimestampTlv(ot::Mle::Mle::TxMessage *this)
{
  v5 = 0;
  v1 = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(this);
  Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(v1);
  if (ot::MeshCoP::Timestamp::IsValid(Timestamp))
  {
    return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(this, Timestamp);
  }

  return v5;
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x17, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x50, a2, 3);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::Mac::Mac>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::Mac::Mac>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::Mac::Mac>(a1);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 0x55u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(a1, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendCslClockAccuracyTlv(ot::Mle::Mle::TxMessage *this)
{
  v8 = this;
  v1 = ot::GetProvider<ot::Message>::Get<ot::Radio>(this);
  CslUncertainty = ot::Radio::GetCslUncertainty(v1);
  ot::Mle::CslClockAccuracyTlv::Init(v7);
  v2 = ot::GetProvider<ot::Message>::Get<ot::Radio>(this);
  CslAccuracy = ot::Radio::GetCslAccuracy(v2);
  ot::Mle::CslClockAccuracyTlv::SetCslClockAccuracy(v7, CslAccuracy);
  ot::Message::GetInstance(this);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    ot::Mle::CslClockAccuracyTlv::SetCslUncertainty(v7, CslUncertainty);
  }

  else
  {
    ot::Mle::CslClockAccuracyTlv::SetCslUncertainty(v7, 10 * CslUncertainty);
  }

  return ot::Message::Append<ot::Mle::CslClockAccuracyTlv>(this, v7);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::Radio>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::Radio>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::Radio>(a1);
}

uint64_t ot::Radio::GetCslUncertainty(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetCslUncertainty();
}

{
  return ot::Radio::GetCslUncertainty(this);
}

uint64_t ot::Mle::CslClockAccuracyTlv::Init(ot::Mle::CslClockAccuracyTlv *this)
{
  ot::Mle::Tlv::SetType(this, 86);
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::Mle::CslClockAccuracyTlv::Init(this);
}

uint64_t ot::Mle::CslClockAccuracyTlv::SetCslClockAccuracy(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::Mle::CslClockAccuracyTlv::SetCslClockAccuracy(this, a2);
}

uint64_t ot::Radio::GetCslAccuracy(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetCslAccuracy();
}

{
  return ot::Radio::GetCslAccuracy(this);
}

uint64_t ot::Mle::CslClockAccuracyTlv::SetCslUncertainty(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::Mle::CslClockAccuracyTlv::SetCslUncertainty(this, a2);
}

uint64_t ot::Message::Append<ot::Mle::CslClockAccuracyTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::Mle::CslClockAccuracyTlv>(a1, a2);
}

uint64_t ot::Mle::Mle::SecurityHeader::SetFrameCounter(ot::Mle::Mle::SecurityHeader *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Mle::Mle::SecurityHeader::SetFrameCounter(this, a2);
}

uint64_t ot::Mle::Mle::SecurityHeader::SetKeyId(ot::Mle::Mle::SecurityHeader *this, unsigned int a2)
{
  v4 = a2;
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 5) = result;
  *(this + 9) = (v4 & 0x7F) + 1;
  return result;
}

{
  return ot::Mle::Mle::SecurityHeader::SetKeyId(this, a2);
}

uint64_t ot::Message::Write<ot::Mle::Mle::SecurityHeader>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 0xAu);
}

{
  return ot::Message::Write<ot::Mle::Mle::SecurityHeader>(a1, a2, a3);
}

uint64_t ot::Mle::Mle::DelayedResponseMetadata::AppendTo(ot::Mle::Mle::DelayedResponseMetadata *this, ot::Message *a2)
{
  return ot::Message::Append<ot::Mle::Mle::DelayedResponseMetadata>(a2, this);
}

{
  return ot::Mle::Mle::DelayedResponseMetadata::AppendTo(this, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendConnectivityTlv(ot::Mle::Mle::TxMessage *this)
{
  v5 = this;
  ot::Mle::ConnectivityTlv::Init(v4);
  v1 = ot::GetProvider<ot::Message>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::MleRouter::FillConnectivityTlv(v1, v4);
  return ot::Tlv::AppendTo(v4, this);
}

uint64_t ot::Mle::ConnectivityTlv::Init(ot::Mle::ConnectivityTlv *this)
{
  ot::Mle::Tlv::SetType(this, 15);
  return ot::Tlv::SetLength(this, 10);
}

{
  return ot::Mle::ConnectivityTlv::Init(this);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::Mle::MleRouter>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::MleRouter>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::Mle::MleRouter>(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(ot::Mle::Mle::TxMessage *this, ot::Child *a2)
{
  v15 = this;
  v14 = a2;
  appended = 0;
  Length = ot::Message::GetLength(this);
  ot::Mle::Tlv::SetType(v12, 19);
  appended = ot::Message::Append<ot::Mle::Tlv>(this, v12);
  if (!appended)
  {
    Ip6Addresses = ot::Child::GetIp6Addresses(v14);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v8 = v2;
    v7 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v8 != v7)
    {
      if (ot::Ip6::Address::IsMulticast(v8) || (v3 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this), ot::NetworkData::Leader::GetContext(v3, v8, v11)))
      {
        appended = ot::Mle::Mle::TxMessage::AppendAddressEntry(this, v8);
        if (appended)
        {
          return appended;
        }
      }

      else
      {
        appended = ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(this, v11[17], v8);
        if (appended)
        {
          return appended;
        }
      }

      v8 = (v8 + 16);
    }

    v4 = ot::Message::GetLength(this);
    ot::Tlv::SetLength(v12, v4 - Length - 2);
    ot::Message::Write<ot::Mle::Tlv>(this, Length, v12);
  }

  return appended;
}

uint64_t ot::Child::GetIp6Addresses(ot::Child *this)
{
  return this + 204;
}

{
  return this + 204;
}

{
  return ot::Child::GetIp6Addresses(this);
}

{
  return ot::Child::GetIp6Addresses(this);
}

void ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin()
{
  ;
}

{
  ;
}

{
  ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
}

{
  ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
}

uint64_t ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(uint64_t a1)
{
  return a1 + 16 * *(a1 + 240);
}

{
  return a1 + 16 * *(a1 + 240);
}

{
  return ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(a1);
}

{
  return ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendRouteTlv(ot::Mle::Mle::TxMessage *this, ot::Neighbor *a2)
{
  ot::Mle::RouteTlv::Init(v6);
  v2 = ot::GetProvider<ot::Message>::Get<ot::RouterTable>(this);
  ot::RouterTable::FillRouteTlv(v2, v6, a2);
  return ot::Tlv::AppendTo(v6, this);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::RouterTable>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::RouterTable>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::RouterTable>(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendDatasetTlv(ot::Tlv *a1, char a2)
{
  v10 = 23;
  v9 = 0;
  ot::MeshCoP::Dataset::Dataset(v13);
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
      v10 = ot::MeshCoP::DatasetManager::Read(v3, v13);
      v9 = 25;
    }
  }

  else
  {
    active = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    v10 = ot::MeshCoP::DatasetManager::Read(active, v13);
    v9 = 24;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    ot::MeshCoP::Dataset::RemoveTimestamp(v13, a2);
    ot::MeshCoP::Dataset::GetBytes(v13);
    v7 = v4;
    Length = ot::MeshCoP::Dataset::GetLength(v13);
    return ot::Tlv::AppendTlv(a1, v9, v7, Length);
  }
}

uint64_t ot::Mle::Mle::TxMessage::AppendSteeringDataTlv(ot::Mle::Mle::TxMessage *this)
{
  v6 = 0;
  v1 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this);
  if (!ot::NetworkData::Leader::FindSteeringData(v1, v7))
  {
    Data = ot::MeshCoP::SteeringData::GetData(v7);
    Length = ot::MeshCoP::SteeringData::GetLength(v7);
    return ot::Tlv::Append<ot::MeshCoP::SteeringDataTlv>(this, Data, Length);
  }

  return v6;
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 1u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(a1, a2);
}

uint64_t ot::Mle::Mle::RxMessage::ReadChallengeOrResponse(ot::Mle::Mle::RxMessage *this, unsigned __int8 a2, ot::Mle::RxChallenge *a3, ot::OffsetRange *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(this, a2, &v6, a4);
  if (!TlvValueOffsetRange)
  {
    return ot::Mle::RxChallenge::ReadFrom(v8, this, &v6);
  }

  return TlvValueOffsetRange;
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 5u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 8u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::FindTlv<ot::Mle::LeaderDataTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0xB, 0xAu, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::Mle::LeaderDataTlv>(a1, a2, a3, a4, a5, a6);
}

BOOL ot::Mle::LeaderDataTlv::IsValid(ot::Mle::LeaderDataTlv *this)
{
  return ot::Tlv::GetLength(this) >= 8uLL;
}

{
  return ot::Mle::LeaderDataTlv::IsValid(this);
}

uint64_t ot::Mle::LeaderDataTlv::Get(ot::Mle::LeaderDataTlv *this, ot::Mle::LeaderData *a2)
{
  v2 = ot::BigEndian::HostSwap32(*(this + 2), a2);
  ot::Mle::LeaderData::SetPartitionId(a2, v2);
  ot::Mle::LeaderData::SetWeighting(a2, *(this + 6));
  ot::Mle::LeaderData::SetDataVersion(a2, *(this + 7));
  ot::Mle::LeaderData::SetStableDataVersion(a2, *(this + 8));
  return ot::Mle::LeaderData::SetLeaderRouterId(a2, *(this + 9));
}

{
  return ot::Mle::LeaderDataTlv::Get(this, a2);
}

uint64_t ot::Mle::Mle::RxMessage::ReadAndSaveDataset(ot::Tlv *a1, char a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  *&v10[5] = a3;
  *&v10[1] = 0;
  if (a2)
  {
    v3 = 25;
  }

  else
  {
    v3 = 24;
  }

  v10[0] = v3;
  ot::MeshCoP::Dataset::Dataset(v13);
  *&v10[1] = ot::Tlv::FindTlvValueOffsetRange(a1, v10[0], &v9, v4);
  if (!*&v10[1])
  {
    *&v10[1] = ot::MeshCoP::Dataset::SetFrom(v13, a1, &v9);
    if (!*&v10[1])
    {
      *&v10[1] = ot::MeshCoP::Dataset::ValidateTlvs(v13);
      if (!*&v10[1])
      {
        *&v10[1] = ot::MeshCoP::Dataset::WriteTimestamp(v13, v11, *&v10[5]);
        if (!*&v10[1])
        {
          if (v11)
          {
            if (v11 == 1)
            {
              v6 = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
              *&v10[1] = ot::MeshCoP::DatasetManager::Save(v6, v13);
            }
          }

          else
          {
            active = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
            *&v10[1] = ot::MeshCoP::DatasetManager::Save(active, v13);
          }
        }
      }
    }
  }

  return *&v10[1];
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetMaxSize()
{
  return 32;
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetMaxSize();
}

void ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetArrayBuffer()
{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetArrayBuffer();
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::SetLength(uint64_t result, char a2)
{
  *(result + 32) = a2;
  return result;
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::SetLength(result, a2);
}

uint64_t ot::Tlv::FindTlv<ot::Mle::CslClockAccuracyTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0x56, 4u, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::Mle::CslClockAccuracyTlv>(a1, a2, a3, a4, a5, a6);
}

BOOL ot::Mle::CslClockAccuracyTlv::IsValid(ot::Mle::CslClockAccuracyTlv *this)
{
  return ot::Tlv::GetLength(this) >= 2uLL;
}

{
  return ot::Mle::CslClockAccuracyTlv::IsValid(this);
}

_BYTE *ot::Mac::CslAccuracy::SetClockAccuracy(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mac::CslAccuracy::SetClockAccuracy(this, a2);
}

uint64_t ot::Mle::CslClockAccuracyTlv::GetCslClockAccuracy(ot::Mle::CslClockAccuracyTlv *this)
{
  return *(this + 2);
}

{
  return ot::Mle::CslClockAccuracyTlv::GetCslClockAccuracy(this);
}

uint64_t ot::Mac::CslAccuracy::SetUncertainty(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Mac::CslAccuracy::SetUncertainty(this, a2);
}

uint64_t ot::Mle::CslClockAccuracyTlv::GetCslUncertainty(ot::Mle::CslClockAccuracyTlv *this)
{
  return *(this + 3);
}

{
  return ot::Mle::CslClockAccuracyTlv::GetCslUncertainty(this);
}

uint64_t ot::Mle::Mle::RxMessage::ReadRouteTlv(ot::Mle::Mle::RxMessage *this, ot::Mle::RouteTlv *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v7 = ot::Tlv::FindTlv<ot::Mle::RouteTlv>(this, a2, a3, a4, a5, a6);
  if (!v7 && !ot::Mle::RouteTlv::IsValid(a2))
  {
    return 6;
  }

  return v7;
}

uint64_t ot::Tlv::FindTlv<ot::Mle::RouteTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 9, 0x4Au, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::Mle::RouteTlv>(a1, a2, a3, a4, a5, a6);
}

void *ot::ClearAllBytes<ot::Mle::Mle::ParentCandidate>(void *a1)
{
  return memset(a1, 0, 0xB0uLL);
}

{
  return ot::ClearAllBytes<ot::Mle::Mle::ParentCandidate>(a1);
}

uint64_t ot::GetArrayLength<char const*,(unsigned short)11>()
{
  return 11;
}

{
  return ot::GetArrayLength<char const*,(unsigned short)11>();
}

uint64_t *std::chrono::duration<long long,std::ratio<1l,1000000l>>::duration[abi:dn200100]<long long,std::ratio<1l,1000l>,0>(uint64_t *a1, uint64_t a2)
{
  std::chrono::duration<long long,std::ratio<1l,1000000l>>::duration[abi:dn200100]<long long,std::ratio<1l,1000l>,0>(a1, a2);
  return a1;
}

{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = std::chrono::duration_cast[abi:dn200100]<std::chrono::duration<long long,std::ratio<1l,1000000l>>,long long,std::ratio<1l,1000l>,0>(a2);
  v2 = std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](v5);
  result = a1;
  *a1 = v2;
  return result;
}

uint64_t std::chrono::__duration_cast<std::chrono::duration<long long,std::ratio<1l,1000l>>,std::chrono::duration<long long,std::ratio<1l,1000000l>>,std::ratio<1000l,1l>,false,true>::operator()[abi:dn200100](uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 1000 * std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](a2);
  std::chrono::duration<long long,std::ratio<1l,1000000l>>::duration[abi:dn200100]<long long,0>(&v4, v3);
  return v4;
}

void *ot::Clearable<ot::SettingsBase::ParentInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::SettingsBase::ParentInfo>(a1);
}

{
  return ot::Clearable<ot::SettingsBase::ParentInfo>::Clear(a1);
}

void *ot::ClearAllBytes<ot::SettingsBase::ParentInfo>(void *result)
{
  *result = 0;
  result[1] = 0;
  *(result + 14) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::SettingsBase::ParentInfo>(result);
}

void *ot::Clearable<ot::SettingsBase::NetworkInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::SettingsBase::NetworkInfo>(a1);
}

{
  return ot::Clearable<ot::SettingsBase::NetworkInfo>::Clear(a1);
}

void *ot::ClearAllBytes<ot::SettingsBase::NetworkInfo>(void *a1)
{
  return memset(a1, 0, 0x2FuLL);
}

{
  return ot::ClearAllBytes<ot::SettingsBase::NetworkInfo>(a1);
}

BOOL ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::IsDone(void *a1)
{
  return *a1 == 0;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::IsDone(a1);
}

ot::Mle::ChannelTlvValue *ot::Mle::ChannelTlvValue::ChannelTlvValue(ot::Mle::ChannelTlvValue *this, unsigned __int16 a2, unsigned __int16 a3)
{
  *this = a2;
  v3 = ot::BigEndian::HostSwap16(a3, a2);
  result = this;
  *(this + 1) = v3;
  return result;
}

uint64_t ot::Mle::Mle::RxInfo::RxInfo(uint64_t this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

BOOL ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(ot::Mle::ConnectivityTlv *this)
{
  return ot::Tlv::GetLength(this) >= 0xAuLL;
}

{
  return ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(this);
}

uint64_t ot::Array<unsigned char,(unsigned short)8,unsigned char>::Clear(uint64_t result)
{
  *(result + 8) = 0;
  return result;
}

{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::Clear(result);
}

uint64_t ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(a1);
}

void ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer()
{
  ;
}

{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
}

{
  ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
}

uint64_t ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::Builder(uint64_t result, uint64_t a2, char a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

void *ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(void *a1, uint64_t a2)
{
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(a1, a2);
  return a1;
}

{
  ot::Ptr<ot::Message>::Ptr(a1);
  result = a1;
  a1[1] = a2;
  return result;
}

uint64_t ot::Message::Append<ot::Mle::Mle::DelayedResponseMetadata>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x14u);
}

{
  return ot::Message::Append<ot::Mle::Mle::DelayedResponseMetadata>(a1, a2);
}

uint64_t ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::HandleUdpReceive(ot::Mle::Mle *a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otMessage>(a2);
  v6 = v3;
  ot::AsCoreType<otMessageInfo>(a3);
  return ot::Mle::Mle::HandleUdpReceive(a1, v6, v4);
}

void *ot::ClearAllBytes<ot::Mle::LeaderData>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mle::LeaderData>(result);
}

void *ot::ClearAllBytes<ot::Ip6::Netif::MulticastAddress>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Netif::MulticastAddress>(result);
}

void *ot::ClearAllBytes<ot::Ip6::NetworkPrefix>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::NetworkPrefix>(result);
}

void *ot::CallbackBase<void (*)(void *)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *)>::Clear(result);
}

uint64_t ot::Instance::Get<ot::Dhcp6::Server>(uint64_t a1)
{
  return a1 + 86672;
}

{
  return ot::Instance::Get<ot::Dhcp6::Server>(a1);
}

uint64_t ot::Instance::Get<ot::LinkMetrics::Subject>(uint64_t a1)
{
  return a1 + 154784;
}

{
  return ot::Instance::Get<ot::LinkMetrics::Subject>(a1);
}

unsigned __int8 *ot::Array<unsigned char,(unsigned short)32,unsigned char>::Find(uint64_t a1, unsigned __int8 *a2)
{
  v7 = 0;
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a1);
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
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::Find(a1, a2);
}

BOOL ot::Array<unsigned char,(unsigned short)32,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 32);
  return v2 == ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetMaxSize();
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::IsFull(a1);
}

void ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Advance(ot::Ip6::Netif::ExternalMulticastAddress **this)
{
  ot::Ip6::Netif::ExternalMulticastAddress::GetNext(*this);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::AdvanceFrom(this, v1);
}

{
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Advance(this);
}

ot::Mle::MleRouter *ot::Mle::MleRouter::MleRouter(ot::Mle::MleRouter *this, ot::Instance *a2)
{
  ot::Mle::Mle::Mle(this, a2);
  ot::TrickleTimer::TrickleTimer((this + 1136), a2, ot::Mle::MleRouter::HandleAdvertiseTrickleTimer);
  ot::ChildTable::ChildTable((this + 1200), a2);
  ot::RouterTable::RouterTable((this + 30904), a2);
  *(this + 35616) = 0;
  *(this + 17813) = 511;
  *(this + 35628) = 120;
  *(this + 35629) = 16;
  *(this + 35630) = 23;
  *(this + 35632) = *(this + 35632) & 0xFE | 1;
  *(this + 35632) &= ~2u;
  *(this + 35632) &= ~4u;
  ot::Utils::FifoHistogram<unsigned char,(short)24>::FifoHistogram((this + 35633));
  ot::Utils::FifoHistogram<unsigned char,(short)24>::FifoHistogram((this + 35657));
  *(this + 8923) = 0;
  *(this + 8924) = 0;
  *(this + 35700) = 0;
  *(this + 35701) = 0;
  ot::Mle::MleRouter::RouterRoleTransition::RouterRoleTransition((this + 35702));
  *(this + 35704) = 3;
  *(this + 35705) = 0;
  *(this + 35706) = -2;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 4468);
  ot::TimerMicro::TimerMicro((this + 35760), a2, ot::Mle::MleRouter::HandleConnectedNeighbourTimer);
  v2 = ot::Mle::DeviceMode::Get((this + 131));
  ot::Mle::DeviceMode::Set(this + 131, v2 | 3);
  *(this + 35631) = 64;
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 35712));
  ot::Mle::MleRouter::SetRouterId(this, 63);
  v3 = ot::Time::SecToMsec(0xE10);
  ot::TimerMilli::Start((this + 35760), v3);
  return this;
}

{
  ot::Mle::MleRouter::MleRouter(this, a2);
  return this;
}

void *ot::Utils::FifoHistogram<unsigned char,(short)24>::FifoHistogram(void *a1)
{
  ot::Utils::FifoHistogram<unsigned char,(short)24>::FifoHistogram(a1);
  return a1;
}

{
  ot::Utils::FifoHistogram<unsigned char,(short)24>::Clear(a1);
  return a1;
}

uint64_t ot::Mle::MleRouter::SetRouterId(uint64_t this, char a2)
{
  *(this + 35689) = a2;
  *(this + 35690) = *(this + 35689);
  return this;
}

void ot::Mle::MleRouter::HandlePartitionChange(ot::Mle::MleRouter *this)
{
  *(this + 8924) = ot::Mle::LeaderData::GetPartitionId((this + 184));
  *(this + 35700) = ot::RouterTable::GetRouterIdSequence((this + 30904));
  *(this + 35701) = ot::Mle::MleRouter::GetNetworkIdTimeout(this);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
  ot::AddressResolver::Clear(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  ot::Coap::CoapBase::AbortTransaction(v2, ot::Mle::MleRouter::HandleAddressSolicitResponse, this);
  IgnoreError();
  ot::RouterTable::Clear((this + 30904));
}

uint64_t ot::Mle::MleRouter::HandleAddressSolicitResponse(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::Mle::MleRouter::HandleAddressSolicitResponse(a1, v7, v5, a4);
}

uint64_t ot::Mle::MleRouter::IsRouterEligible(ot::Mle::MleRouter *this)
{
  v5 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  SecurityPolicy = ot::KeyManager::GetSecurityPolicy(v1);
  if ((*(this + 35632) & 1) != 0 && ot::Mle::Mle::IsFullThreadDevice(this) && ((*(SecurityPolicy + 2) & 0x10) == 0 || (*(SecurityPolicy + 2) & 0x100) != 0) && ((*(SecurityPolicy + 2) & 4) != 0 || ((*(SecurityPolicy + 2) >> 9) & 7) + 3 <= 4))
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t ot::Mle::MleRouter::SetRouterEligible(ot::Mle::MleRouter *this, char a2)
{
  v6 = 0;
  if (ot::Mle::Mle::IsFullThreadDevice(this) || (a2 & 1) == 0)
  {
    if ((a2 & 1) != (*(this + 35632) & 1))
    {
      *(this + 35632) = *(this + 35632) & 0xFE | a2 & 1;
      v4 = *(this + 130);
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          if (*(this + 35632))
          {
            ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((this + 35702));
          }

          v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          ot::Mac::Mac::SetBeaconEnabled(v2, *(this + 35632) & 1);
        }

        else if ((v4 == 4 || v4 == 3) && (*(this + 35632) & 1) == 0)
        {
          ot::Mle::Mle::BecomeDetached(this);
          IgnoreError();
        }
      }
    }
  }

  else
  {
    return 27;
  }

  return v6;
}

uint64_t ot::Mle::MleRouter::RouterRoleTransition::StartTimeout(ot::Mle::MleRouter::RouterRoleTransition *this)
{
  result = ot::Random::NonCrypto::GetUint8InRange(0, *(this + 1));
  *this = result + 1;
  return result;
}

uint64_t ot::Mle::MleRouter::HandleSecurityPolicyChanged(ot::Mle::MleRouter *this)
{
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    result = ot::Mle::MleRouter::IsRouterEligible(this);
    if ((result & 1) == 0)
    {
      result = ot::Mle::MleRouter::RouterRoleTransition::IsPending((this + 35702));
      if ((result & 1) == 0)
      {
        ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((this + 35702));
        result = ot::Mle::Mle::IsLeader(this);
        if (result)
        {
          return ot::Mle::MleRouter::RouterRoleTransition::IncreaseTimeout(this + 35702, 10);
        }
      }
    }
  }

  return result;
}

_BYTE *ot::Mle::MleRouter::RouterRoleTransition::IncreaseTimeout(_BYTE *this, char a2)
{
  *this += a2;
  return this;
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::IncreaseTimeout(this, a2);
}

uint64_t ot::Mle::MleRouter::BecomeRouter(uint64_t a1, unsigned __int8 a2)
{
  if (ot::Mle::Mle::IsDisabled(a1))
  {
    return 13;
  }

  else if (ot::Mle::Mle::IsRouter(a1))
  {
    return 0;
  }

  else if (ot::Mle::MleRouter::IsRouterEligible(a1))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Attempt to become router", v2, v3, v4, v5, v6, v7);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
    ot::MeshForwarder::SetRxOnWhenIdle(v8, 1, v9, v10, v11, v12, v13, v14);
    ot::Mle::MleRouter::RouterRoleTransition::StopTimeout((a1 + 35702));
    v19 = *(a1 + 130);
    if (v19 == 1)
    {
      v18 = 1;
      if ((*(a1 + 129) & 0x20) == 0)
      {
        v18 = ot::ChildTable::GetNumChildren((a1 + 1200), 1u) >= 6;
      }

      if (v18)
      {
        v15 = 6;
      }

      else
      {
        v15 = 3;
      }

      *(a1 + 143) = v15;
      v21 = ot::Mle::MleRouter::SendLinkRequest(a1, 0);
      if (!v21)
      {
        --*(a1 + 143);
        ot::Mle::Mle::ScheduleMessageTransmissionTimer(a1);
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
        ot::TimeTicker::RegisterReceiver(v16, 1);
      }
    }

    else
    {
      if (v19 != 2)
      {
        __assert_rtn("BecomeRouter", "mle_router.cpp", 320, "false");
      }

      return ot::Mle::MleRouter::SendAddressSolicit(a1, a2);
    }
  }

  else
  {
    return 27;
  }

  return v21;
}

_BYTE *ot::Mle::MleRouter::RouterRoleTransition::StopTimeout(_BYTE *this)
{
  *this = 0;
  return this;
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::StopTimeout(this);
}

uint64_t ot::Mle::MleRouter::SendLinkRequest(ot::Mle::MleRouter *this, ot::Neighbor *a2)
{
  v16 = this;
  v15 = a2;
  appended = 0;
  v13 = 0;
  if (*(this + 35616))
  {
    goto LABEL_35;
  }

  ot::Clearable<ot::Ip6::Address>::Clear(&v12);
  v13 = ot::Mle::Mle::NewMleMessage(this, 0);
  if (!v13)
  {
    appended = 3;
    goto LABEL_35;
  }

  appended = ot::Mle::Mle::TxMessage::AppendVersionTlv(v13);
  if (appended)
  {
    goto LABEL_35;
  }

  v10 = *(this + 130);
  if (!*(this + 130))
  {
    __assert_rtn("SendLinkRequest", "mle_router.cpp", 726, "false");
  }

  if (v10 == 1)
  {
    appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(v13, ot::Mle::MleRouter::SendLinkRequest(ot::Neighbor *)::kDetachedTlvs);
    if (appended)
    {
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v13);
    if (appended)
    {
      goto LABEL_35;
    }

    appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v13);
    if (appended)
    {
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (v10 != 4 && v10 != 3)
  {
    goto LABEL_25;
  }

  if (v15 && ot::Neighbor::IsStateValid(v15))
  {
    appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(v13, ot::Mle::MleRouter::SendLinkRequest(ot::Neighbor *)::kValidNeighborTlvs);
    if (appended)
    {
      goto LABEL_35;
    }
  }

  else
  {
    appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)1>(v13, &ot::Mle::MleRouter::SendLinkRequest(ot::Neighbor *)::kRouterTlvs);
    if (appended)
    {
      goto LABEL_35;
    }
  }

  appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v13);
  if (!appended)
  {
    appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v13);
    if (!appended)
    {
LABEL_25:
      if (v15)
      {
        if (ot::Neighbor::IsStateValid(v15))
        {
          ot::Mle::TxChallenge::GenerateRandom(v17, v4, v5);
          appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v13, v17);
          if (appended)
          {
            goto LABEL_35;
          }
        }

        else
        {
          ot::Neighbor::GenerateChallenge(v15, v4, v5);
          v9 = v13;
          Challenge = ot::Neighbor::GetChallenge(v15);
          appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v9, Challenge);
          if (appended)
          {
            goto LABEL_35;
          }
        }

        ot::Neighbor::GetExtAddress(v15);
        ot::Ip6::Address::SetToLinkLocalAddress(&v12, v7);
      }

      else
      {
        ot::Mle::TxChallenge::GenerateRandom((this + 35617), v2, v3);
        *(this + 35616) = 2;
        appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v13, (this + 35617));
        if (appended)
        {
          goto LABEL_35;
        }

        ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(&v12);
      }

      appended = ot::Mle::Mle::TxMessage::SendTo(v13, &v12);
      if (!appended)
      {
        ot::Mle::Mle::Log(0, 0x1Au, &v12);
      }
    }
  }

LABEL_35:
  if (appended && v13)
  {
    ot::Message::Free(v13);
  }

  return appended;
}

uint64_t ot::Mle::MleRouter::SendAddressSolicit(ot::InstanceLocator *a1, unsigned __int8 a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v12, Instance);
  v11 = 0;
  if ((*(a1 + 35632) & 2) == 0)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
    v11 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v3, 4u);
    if (v11)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v4);
      v13 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(v11, ExtAddress);
      if (!v13)
      {
        if (!ot::Mle::IsRouterIdValid(*(a1 + 35690)) || (v6 = ot::Mle::Rloc16FromRouterId(*(a1 + 35690)), (v13 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v11, v6)) == 0))
        {
          v13 = ot::Tlv::Append<ot::ThreadStatusTlv>(v11, v14);
          if (!v13)
          {
            ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderRloc(v12);
            v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
            v13 = ot::Coap::CoapBase::SendMessage(v7, v11, v12, ot::Mle::MleRouter::HandleAddressSolicitResponse, a1);
            if (!v13)
            {
              *(a1 + 35632) = *(a1 + 35632) & 0xFD | 2;
              ot::Ip6::MessageInfo::GetPeerAddr(v12);
              ot::Mle::Mle::Log(0, 0x13u, v8);
            }
          }
        }
      }
    }

    else
    {
      v13 = 3;
    }
  }

  if (v13 && v11)
  {
    ot::Message::Free(v11);
  }

  return v13;
}

uint64_t ot::Mle::MleRouter::BecomeLeader(ot::Mle::MleRouter *this, char a2)
{
  v30 = 0;
  active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
  if (ot::MeshCoP::ActiveDatasetManager::IsComplete(active))
  {
    if (ot::Mle::Mle::IsDisabled(this))
    {
      return 13;
    }

    else if (ot::Mle::Mle::IsLeader(this))
    {
      return 0;
    }

    else if (ot::Mle::MleRouter::IsRouterEligible(this))
    {
      if ((a2 & 1) != 0 && ot::Mle::Mle::IsAttached(this) && (v25 = *(this + 35631), Weighting = ot::Mle::LeaderData::GetWeighting((this + 184)), ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Leader re-election [BecomeLeader] Weight[%d] LeaderWeight[%d]", v4, v5, v6, v7, v8, v9, v25, Weighting), v24 = *(this + 35631), v24 <= ot::Mle::LeaderData::GetWeighting((this + 184))))
      {
        return 27;
      }

      else
      {
        ot::RouterTable::Clear((this + 30904));
        Uint32 = ot::Random::NonCrypto::GetUint32(v10);
        if (ot::Mle::Mle::IsSleepyRouter(this))
        {
          do
          {
            Uint8InRange = ot::Random::NonCrypto::GetUint8InRange(0, 0x3Fu);
          }

          while (Uint8InRange == *(this + 35690));
        }

        else
        {
          if (ot::Mle::IsRouterIdValid(*(this + 35690)))
          {
            v23 = *(this + 35690);
          }

          else
          {
            v23 = ot::Random::NonCrypto::GetUint8InRange(0, 0x3Fu);
          }

          Uint8InRange = v23;
        }

        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: leaderId[%d], mPreviousRouterId[%d]", v11, v12, v13, v14, v15, v16, "BecomeLeader", Uint8InRange, *(this + 35690));
        ot::Mle::Mle::SetLeaderData(this, Uint32, *(this + 35631), Uint8InRange);
        v29 = ot::RouterTable::Allocate((this + 30904), Uint8InRange);
        if (!v29)
        {
          __assert_rtn("BecomeLeader", "mle_router.cpp", 388, "router != nullptr");
        }

        ot::Mle::MleRouter::SetRouterId(this, Uint8InRange);
        v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        ExtAddress = ot::Mac::Mac::GetExtAddress(v17);
        ot::Neighbor::SetExtAddress(v29, ExtAddress);
        v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        ot::NetworkData::Leader::Reset(v19);
        v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
        ot::MeshCoP::Leader::SetEmptyCommissionerData(v20);
        v21 = ot::Mle::Rloc16FromRouterId(Uint8InRange);
        ot::Mle::MleRouter::SetStateLeader(this, v21, 0);
      }
    }

    else
    {
      return 27;
    }
  }

  else
  {
    return 13;
  }

  return v30;
}

ot::Ip6::Netif::MulticastAddress *ot::Mle::MleRouter::StopLeader(ot::Mle::MleRouter *this)
{
  ot::Mle::MleRouter::StopAdvertiseTrickleTimer(this);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  return ot::Ip6::Netif::UnsubscribeAllRoutersMulticast(v1);
}

uint64_t ot::Mle::MleRouter::HandleDetachStart(ot::Mle::MleRouter *this)
{
  ot::RouterTable::ClearNeighbors((this + 30904));
  ot::Mle::MleRouter::StopLeader(this);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
  return ot::TimeTicker::UnregisterReceiver(v1, 1);
}

uint64_t ot::Mle::MleRouter::HandleChildStart(uint64_t a1, char a2)
{
  *(a1 + 35632) &= ~4u;
  ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((a1 + 35702));
  ot::Mle::MleRouter::StopLeader(a1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
  ot::TimeTicker::RegisterReceiver(v2, 1);
  if (*(a1 + 35632))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    ot::Mac::Mac::SetBeaconEnabled(v3, 1);
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  ot::Ip6::Netif::SubscribeAllRoutersMulticast(v4);
  if (ot::Mle::IsRouterIdValid(*(a1 + 35690)))
  {
    switch(a2)
    {
      case 0:
LABEL_16:
        if (ot::Mle::Mle::IsAnnounceAttach(a1) && ot::Mle::MleRouter::HasChildren(a1))
        {
          ot::Mle::MleRouter::RemoveChildren(a1);
        }

        goto LABEL_19;
      case 1:
        if (ot::Mle::MleRouter::HasChildren(a1))
        {
          ot::Mle::MleRouter::BecomeRouter(a1, 3u);
          IgnoreError();
        }

        break;
      case 2:
LABEL_19:
        if (ot::Mle::MleRouter::HasChildren(a1))
        {
          v6 = *(a1 + 35692);
          if (v6 != ot::Mle::LeaderData::GetPartitionId((a1 + 184)))
          {
            ot::Mle::MleRouter::BecomeRouter(a1, 4u);
            IgnoreError();
          }
        }

        break;
      case 3:
        ot::Mle::MleRouter::SendAddressRelease(a1);
        if (ot::Mle::MleRouter::HasChildren(a1))
        {
          ot::Mle::MleRouter::RemoveChildren(a1);
        }

        ot::Mle::MleRouter::SetRouterId(a1, 63);
        break;
      case 4:
        goto LABEL_16;
      default:
        break;
    }
  }

  result = ot::RouterTable::GetActiveRouterCount((a1 + 30904));
  if (result >= *(a1 + 35629))
  {
    if (!ot::Mle::IsRouterIdValid(*(a1 + 35690)))
    {
      return ot::Mle::MleRouter::SetRouterId(a1, 63);
    }

    result = ot::Mle::MleRouter::HasChildren(a1);
    if ((result & 1) == 0)
    {
      return ot::Mle::MleRouter::SetRouterId(a1, 63);
    }
  }

  return result;
}

void ot::Mle::MleRouter::SendAddressRelease(ot::Mle::MleRouter *this)
{
  v12 = this;
  v11 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v10, Instance);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v9 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v2, 3u);
  if (v9)
  {
    v3 = ot::Mle::Rloc16FromRouterId(*(this + 35689));
    v11 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v9, v3);
    if (!v11)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v4);
      v11 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(v9, ExtAddress);
      if (!v11)
      {
        ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderRloc(v10);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
        v11 = ot::Coap::CoapBase::SendMessage(v6, v9, v10);
        if (!v11)
        {
          ot::Ip6::MessageInfo::GetPeerAddr(v10);
          ot::Mle::Mle::Log(0, 0x10u, v7);
        }
      }
    }
  }

  else
  {
    v11 = 3;
  }

  if (v11 && v9)
  {
    ot::Message::Free(v9);
  }

  ot::Mle::Mle::LogSendError(0x10u, v11);
}

BOOL ot::Mle::MleRouter::RemoveChildren(ot::Mle::MleRouter *this)
{
  v13 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v11 = ot::ChildTable::Iterate(v1, 1);
  v12 = &v11;
  v16 = ot::ChildTable::IteratorBuilder::begin(&v11);
  v17 = v2;
  v9 = v16;
  v10 = v2;
  v14 = ot::ChildTable::IteratorBuilder::end(v12);
  v15 = v3;
  v7 = v14;
  v8 = v3;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v9, &v7);
    if (!result)
    {
      break;
    }

    v6 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v9);
    ot::Mle::MleRouter::RemoveNeighbor(this, v6);
    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
  }

  return result;
}

BOOL ot::Mle::Mle::IsAnnounceAttach(ot::Mle::Mle *this)
{
  return *(this + 76) != 0xFFFF;
}

{
  return ot::Mle::Mle::IsAnnounceAttach(this);
}

uint64_t ot::RouterTable::GetActiveRouterCount(ot::RouterTable *this)
{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetLength(this + 8);
}

{
  return ot::RouterTable::GetActiveRouterCount(this);
}

void ot::Mle::MleRouter::SetStateRouterOrLeader(ot::Mle::Mle *a1, char a2, unsigned __int16 a3, char a4)
{
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  v32 = a1;
  if (a2 == 4)
  {
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(v32);
    ot::MeshCoP::DatasetManager::Restore(active);
    IgnoreError();
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(v32);
    ot::MeshCoP::DatasetManager::Restore(v5);
    IgnoreError();
  }

  ot::Mle::Mle::SetRloc16(v32, v41);
  ot::Mle::Mle::SetRole(v32, v42);
  ot::Mle::Mle::SetAttachState(v32, 0);
  ot::Mle::Mle::ResetAttachCounter(v32);
  ot::TimerMilli::Stop((v32 + 888));
  ot::TimerMilli::Stop((v32 + 936));
  ot::Mle::MleRouter::StopAdvertiseTrickleTimer(v32);
  ot::Mle::MleRouter::ResetAdvertiseInterval(v32);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(v32);
  ot::Ip6::Netif::SubscribeAllRoutersMulticast(v6);
  PartitionId = ot::Mle::LeaderData::GetPartitionId((v32 + 184));
  v8 = v32;
  *(v32 + 8923) = PartitionId;
  v31 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v8);
  IsRxOnWhenIdle = ot::Mle::Mle::IsRxOnWhenIdle(v32);
  ot::Mac::Mac::SetBeaconEnabled(v31, IsRxOnWhenIdle);
  if (v42 == 4)
  {
    v30 = 35712;
    ot::Ip6::Netif::UnicastAddress::GetAddress((v32 + 35712));
    ot::Mle::Mle::GetLeaderAloc(v32, v10);
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(v32);
    ot::Ip6::Netif::AddUnicastAddress(v11, (v32 + 35712));
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(v32);
    ot::TimeTicker::RegisterReceiver(v12, 1);
    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v32);
    ot::NetworkData::Leader::Start(v13, v40);
    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(v32);
    ot::MeshCoP::ActiveDatasetManager::StartLeader(v14);
    v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(v32);
    ot::MeshCoP::PendingDatasetManager::StartLeader(v15);
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(v32);
    ot::AddressResolver::Clear(v16);
  }

  v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v32);
  v38 = ot::ChildTable::Iterate(v17, 1);
  v39 = &v38;
  v46 = ot::ChildTable::IteratorBuilder::begin(&v38);
  v47 = v18;
  v36 = v46;
  v37 = v18;
  v44 = ot::ChildTable::IteratorBuilder::end(v39);
  v45 = v19;
  v34 = v44;
  v35 = v19;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v36, &v34))
  {
    v33 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v36);
    Rloc16 = ot::Neighbor::GetRloc16(v33);
    if (ot::Mle::RouterIdFromRloc16(Rloc16) != *(v32 + 35689))
    {
      ot::Mle::MleRouter::RemoveNeighbor(v32, v33);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v36);
  }

  v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v32);
  ot::Mac::Mac::UpdateCsl(v21, 0);
  v22 = ot::Mle::LeaderData::GetPartitionId((v32 + 184));
  v23 = ot::ToUlong(v22);
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Partition ID 0x%lx", v24, v25, v26, v27, v28, v29, v23);
}

uint64_t ot::Mle::MleRouter::ResetAdvertiseInterval(ot::Mle::MleRouter *this)
{
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    if (!ot::TrickleTimer::IsRunning((this + 1136)))
    {
      v2 = ot::Mle::MleRouter::DetermineAdvertiseIntervalMax(this);
      ot::TrickleTimer::Start(this + 1136, 0, 0x3E8u, v2, 0xFFFF);
    }

    return ot::TrickleTimer::IndicateInconsistent(this + 1136);
  }

  return result;
}

void ot::Mle::MleRouter::RemoveNeighbor(ot::Mle::MleRouter *this, ot::Neighbor *a2)
{
  if (!ot::Neighbor::IsStateInvalid(a2))
  {
    if (a2 == (this + 192))
    {
      if (ot::Mle::Mle::IsChild(this))
      {
        ot::Mle::Mle::BecomeDetached(this);
        IgnoreError();
      }
    }

    else if (a2 == ot::Mle::Mle::GetParentCandidate(this))
    {
      ot::Mle::Mle::ClearParentCandidate(this);
    }

    else
    {
      Rloc16 = ot::Neighbor::GetRloc16(a2);
      if (ot::Mle::IsChildRloc16(Rloc16, v3))
      {
        if (!ot::ChildTable::Contains((this + 1200), a2))
        {
          __assert_rtn("RemoveNeighbor", "mle_router.cpp", 3999, "mChildTable.Contains(aNeighbor)");
        }

        if (ot::Neighbor::IsStateValidOrRestoring(a2))
        {
          ot::NeighborTable::Signal((this + 344), 1u, a2);
        }

        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(this);
        ot::IndirectSender::ClearAllMessagesForSleepyChild(v4, a2);
        if (ot::Neighbor::IsFullThreadDevice(a2))
        {
          v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
          v5 = ot::Neighbor::GetRloc16(a2);
          ot::AddressResolver::RemoveEntriesForRloc16(v24, v5);
        }

        ot::ChildTable::RemoveStoredChild((this + 1200), a2);
      }

      else if (ot::Neighbor::IsStateValid(a2))
      {
        if (!ot::RouterTable::Contains((this + 30904), a2))
        {
          __assert_rtn("RemoveNeighbor", "mle_router.cpp", 4017, "mRouterTable.Contains(aNeighbor)");
        }

        ot::NeighborTable::Signal((this + 344), 4u, a2);
        ot::RouterTable::RemoveRouterLink((this + 30904), a2);
      }
    }

    LinkInfo = ot::Neighbor::GetLinkInfo(a2);
    ot::LinkQualityInfo::Clear(LinkInfo);
    ot::Neighbor::SetState(a2, 0);
    ot::InstanceLocator::GetInstance(this);
    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (ot::Mle::Mle::GetRole(this) == 4 || ot::Mle::Mle::GetRole(this) == 3))
    {
      Role = ot::Mle::Mle::GetRole(this);
      ot::Mle::Mle::SetThreadCoexConfig(this, 0, Role, *(this + 132));
    }

    ot::Neighbor::RemoveAllForwardTrackingSeriesInfo(a2);
    if (a2 == ot::Mle::Mle::GetCslPeripheral(this))
    {
      *(this + 128) = 0;
      v8 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v9, v10, v11, v12, v13, v14, v8, "RemoveNeighbor");
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::UpdateCsl(v15, 0);
      ot::Mle::Mle::SetCslPeripheral(this, 0);
      ot::Neighbor::GetExtAddress(a2);
      ot::Mac::ExtAddress::ToString(v16, v27);
      v17 = ot::String<(unsigned short)17>::AsCString(v27);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "CSL peripheral %s detached", v18, v19, v20, v21, v22, v23, v17);
      ot::Mle::Mle::SetPeripheralDetachState(this, 0);
      ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
    }
  }
}

void ot::Mle::MleRouter::HandleAdvertiseTrickleTimer(ot::Mle::MleRouter *this)
{
  if (ot::Mle::MleRouter::IsRouterEligible(this))
  {
    ot::Mle::MleRouter::SendAdvertisement(this);
  }

  else
  {
    ot::TrickleTimer::Stop((this + 1136));
  }
}

void ot::Mle::MleRouter::SendAdvertisement(ot::Mle::MleRouter *this)
{
  v13 = this;
  appended = 0;
  v10 = 0;
  if (!ot::Mle::Mle::IsAttaching(this))
  {
    if (ot::Mle::Mle::IsSleepyRouter(this))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "ThreadConnection: Supress sending any advertisements", v1, v2, v3, v4, v5, v6);
    }

    if (ot::Mle::Mle::IsRxOnWhenIdle(this) && (*(this + 35632) & 2) == 0)
    {
      v10 = ot::Mle::Mle::NewMleMessage(this, 4);
      if (v10)
      {
        appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v10);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v10);
          if (!appended)
          {
            ot::Message::SetSubType(v10, 12);
            v8 = *(this + 130);
            if (v8 <= 1)
            {
              __assert_rtn("SendAdvertisement", "mle_router.cpp", 669, "false");
            }

            if (v8 == 2 || v8 != 4 && v8 != 3 || (v7 = ot::Mle::Mle::TxMessage::AppendRouteTlv(v10, 0), (appended = v7) == 0))
            {
              ot::Ip6::Address::SetToLinkLocalAllNodesMulticast(&v11);
              appended = ot::Mle::Mle::TxMessage::SendTo(v10, &v11);
              if (!appended)
              {
                ot::Mle::Mle::Log(0, 0, &v11);
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
  }

  if (appended && v10)
  {
    ot::Message::Free(v10);
  }

  ot::Mle::Mle::LogSendError(0, appended);
}

uint64_t ot::Mle::MleRouter::DetermineAdvertiseIntervalMax(ot::Mle::MleRouter *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  NeighborCount = ot::RouterTable::GetNeighborCount(v1, 2u);
  return ot::Clamp<unsigned int>(4000 * (NeighborCount + 1), 0x2EE0u, 0x7D00u);
}

uint64_t ot::Mle::MleRouter::UpdateAdvertiseInterval(ot::Mle::MleRouter *this)
{
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    result = ot::TrickleTimer::IsRunning((this + 1136));
    if (result)
    {
      v2 = ot::Mle::MleRouter::DetermineAdvertiseIntervalMax(this);
      return ot::TrickleTimer::SetIntervalMax((this + 1136), v2);
    }
  }

  return result;
}

uint64_t ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(ot::Mle::Mle::TxMessage *a1, unsigned __int8 *a2)
{
  return ot::Mle::Mle::TxMessage::AppendTlvRequestTlv(a1, a2, 2u);
}

{
  return ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(a1, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)1>(ot::Mle::Mle::TxMessage *a1, unsigned __int8 *a2)
{
  return ot::Mle::Mle::TxMessage::AppendTlvRequestTlv(a1, a2, 1u);
}

{
  return ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)1>(a1, a2);
}

void ot::Neighbor::GenerateChallenge(ot::Neighbor *this, uint64_t a2, unsigned __int16 a3)
{
  ot::Mle::TxChallenge::GenerateRandom((this + 12), a2, a3);
}

{
  ot::Neighbor::GenerateChallenge(this, a2, a3);
}

uint64_t ot::Neighbor::GetChallenge(ot::Neighbor *this)
{
  return this + 12;
}

{
  return ot::Neighbor::GetChallenge(this);
}

void ot::Mle::MleRouter::HandleLinkRequest(ot::Mle::MleRouter *this, ot::Ip6::MessageInfo **a2)
{
  v103 = this;
  v102 = a2;
  ChallengeTlv = 0;
  v100 = 0;
  ot::Mle::RxChallenge::RxChallenge(v109);
  v99 = 0;
  v97 = 0;
  ot::Mle::Mle::TlvList::TlvList(v108);
  ot::Ip6::MessageInfo::GetPeerAddr(v102[1]);
  ot::Mle::Mle::Log(1u, 0x1Au, v2);
  if (!ot::Mle::Mle::IsRouterOrLeader(this))
  {
    ChallengeTlv = 13;
    goto LABEL_40;
  }

  if (ot::Mle::Mle::IsAttaching(this))
  {
    ChallengeTlv = 13;
    goto LABEL_40;
  }

  if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
    ChallengeTlv = 13;
    goto LABEL_40;
  }

  ChallengeTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v102, v109, v3, v4);
  if (!ChallengeTlv)
  {
    ChallengeTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(*v102, &v99);
    if (!ChallengeTlv)
    {
      if (v99 < 2u)
      {
        ChallengeTlv = 6;
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Link request Parse error", v5, v6, v7, v8, v9, v10);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "version:%d less than Thread 1.1 version:%d", v11, v12, v13, v14, v15, v16, v99, 2);
        goto LABEL_40;
      }

      LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v102, v98, v5, v6, v7, v8);
      if (LeaderDataTlv)
      {
        if (LeaderDataTlv != 23)
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Link request Parse error ReadLeaderData failed", v17, v18, v19, v20, v21, v22);
          ChallengeTlv = 6;
          goto LABEL_40;
        }
      }

      else
      {
        PartitionId = ot::Mle::LeaderData::GetPartitionId(v98);
        if (PartitionId != ot::Mle::LeaderData::GetPartitionId((this + 184)))
        {
          ChallengeTlv = 13;
          goto LABEL_40;
        }
      }

      v93 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v102, &v97);
      if (v93)
      {
        if (v93 != 23)
        {
          v70 = ot::ErrorToString(6);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "HandleLinkRequest source address TLV unhandled case. Exit here error:%s", v71, v72, v73, v74, v75, v76, v70);
          ChallengeTlv = 6;
          goto LABEL_40;
        }

        if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(v102) || (v54 = ot::Neighbor::GetRloc16(v102[3]), !ot::Mle::IsRouterRloc16(v54, v55)))
        {
          ChallengeTlv = 2;
          if (v102[3])
          {
            v85 = ot::ErrorToString(ChallengeTlv);
            State = ot::Neighbor::GetState(v102[3]);
            IsStateValid = ot::Neighbor::IsStateValid(v102[3]);
            Rloc16 = ot::Neighbor::GetRloc16(v102[3]);
            ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "HandleLinkRequest source address TLV not found (router coming out of reset) error:%s nbr.state:%d isNbrStateValid:%d nbr.rloc16:0x%x", v57, v58, v59, v60, v61, v62, v85, State, IsStateValid, Rloc16);
          }

          else
          {
            v63 = ot::ErrorToString(ChallengeTlv);
            ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "HandleLinkRequest source address TLV not found (router coming out of reset) error:%s aNeighbor NULL ", v64, v65, v66, v67, v68, v69, v63);
          }

          goto LABEL_40;
        }

        v100 = v102[3];
      }

      else if (ot::Mle::IsRouterRloc16(v97, v23))
      {
        ot::RouterTable::FindRouterByRloc16((this + 30904), v97);
        v100 = v32;
        if (!v32)
        {
          ChallengeTlv = 6;
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Link request Parse error Neighbor src address is NULL:sourceAddress:%x", v26, v27, v28, v29, v30, v31, v97);
          goto LABEL_40;
        }

        if (ot::Neighbor::IsStateLinkRequest(v100))
        {
          ChallengeTlv = 24;
          goto LABEL_40;
        }

        if (ot::Neighbor::IsStateValid(v100))
        {
          ot::Ip6::MessageInfo::GetPeerAddr(v102[1]);
          Iid = ot::Ip6::Address::GetIid(v33);
          ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v107);
          v92 = ot::Neighbor::GetState(v100);
          ot::Neighbor::GetExtAddress(v100);
          ot::Mac::ExtAddress::ToString(v35, v106);
          v36 = ot::String<(unsigned short)17>::AsCString(v106);
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Current neighbor state: %u nbr.extAddr:%s", v37, v38, v39, v40, v41, v42, v92, v36);
          ot::Neighbor::GetExtAddress(v100);
          if (!ot::Equatable<ot::Mac::ExtAddress>::operator==(v43, v107))
          {
            ChallengeTlv = 6;
            v90 = ot::Neighbor::GetState(v100);
            ot::Neighbor::GetExtAddress(v100);
            ot::Mac::ExtAddress::ToString(v44, v105);
            v91 = ot::String<(unsigned short)17>::AsCString(v105);
            ot::Mac::ExtAddress::ToString(v107, v104);
            v45 = ot::String<(unsigned short)17>::AsCString(v104);
            ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Link request Parse error, nbr.state:%d nbr.extAddr(%s) != extAddr(%s)", v46, v47, v48, v49, v50, v51, v90, v91, v45);
            goto LABEL_40;
          }

          v88 = v100;
          DataVersion = ot::Mle::LeaderData::GetDataVersion(v98, 0);
          ot::Neighbor::SetLeaderFullDataVersion(v88, DataVersion);
          v89 = v100;
          v53 = ot::Mle::LeaderData::GetDataVersion(v98, 1);
          ot::Neighbor::SetLeaderStableDataVersion(v89, v53);
        }

        else
        {
          ot::Mle::Mle::InitNeighbor(this, v100, v102);
          ot::Neighbor::SetState(v100, 5);
        }
      }

      TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v102, v108, v24, v25);
      if (TlvRequestTlv && TlvRequestTlv != 23)
      {
        v77 = ot::ErrorToString(6);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "HandleLinkRequest Request TLV unhandled case. Exit here error:%s", v78, v79, v80, v81, v82, v83, v77);
        ChallengeTlv = 6;
      }

      else
      {
        *(v102 + 32) = 2;
        ot::Mle::Mle::ProcessKeySequence(this, v102);
        ChallengeTlv = ot::Mle::MleRouter::SendLinkAccept(this, v102, v100, v108, v109);
      }
    }
  }

LABEL_40:
  ot::Mle::Mle::LogProcessError(0x1Au, ChallengeTlv);
}

BOOL ot::Neighbor::IsStateLinkRequest(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 5;
}

{
  return ot::Neighbor::IsStateLinkRequest(this);
}

uint64_t ot::Mle::MleRouter::SendLinkAccept(ot::Mle::MleRouter *this, ot::Message **a2, ot::Neighbor *a3, const ot::Mle::Mle::TlvList *a4, const ot::Mle::RxChallenge *a5)
{
  IsStateValid = 1;
  if (a3)
  {
    IsStateValid = ot::Neighbor::IsStateValid(a3);
  }

  if (IsStateValid)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v35 = v5;
  v36 = ot::Mle::Mle::NewMleMessage(this, v5);
  if (!v36)
  {
    appended = 3;
    goto LABEL_44;
  }

  appended = ot::Mle::Mle::TxMessage::AppendVersionTlv(v36);
  if (!appended)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v36);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendResponseTlv(v36, a5);
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendLinkAndMleFrameCounterTlvs(v36);
        if (!appended)
        {
          v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          AverageRss = ot::Message::GetAverageRss(*a2);
          v34 = ot::Mac::Mac::ComputeLinkMargin(v28, AverageRss);
          appended = ot::Mle::Mle::TxMessage::AppendLinkMarginTlv(v36, v34);
          if (!appended)
          {
            if (!a3 || (v7 = ot::Neighbor::GetRloc16(a3), !ot::Mle::IsRouterRloc16(v7, v8)) || (appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v36)) == 0)
            {
              ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
              v33 = v9;
              v32 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a4);
              while (v33 != v32)
              {
                v27 = *v33;
                switch(v27)
                {
                  case 9:
                    appended = ot::Mle::Mle::TxMessage::AppendRouteTlv(v36, a3);
                    if (appended)
                    {
                      goto LABEL_44;
                    }

                    break;
                  case 10:
                    if (!a3)
                    {
                      appended = 2;
                      goto LABEL_44;
                    }

                    Rloc16 = ot::Neighbor::GetRloc16(a3);
                    appended = ot::Mle::Mle::TxMessage::AppendAddress16Tlv(v36, Rloc16);
                    if (appended)
                    {
                      goto LABEL_44;
                    }

                    break;
                  case 16:
                    break;
                  default:
                    appended = 2;
                    goto LABEL_44;
                }

                ++v33;
              }

              if (a3 && !ot::Neighbor::IsStateValid(a3))
              {
                ot::Neighbor::GenerateChallenge(a3, v11, v12);
                Challenge = ot::Neighbor::GetChallenge(a3);
                appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v36, Challenge);
                if (appended)
                {
                  goto LABEL_44;
                }

                v14 = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)1>(v36, &ot::Mle::MleRouter::SendLinkAccept(ot::Mle::Mle::RxInfo const&,ot::Neighbor *,ot::Mle::Mle::TlvList const&,ot::Mle::RxChallenge const&)::kRouterTlvs);
                appended = v14;
                if (v14)
                {
                  goto LABEL_44;
                }

                Now = ot::TimerMilli::GetNow(v14);
                ot::Neighbor::SetLastHeard(a3, Now);
                ot::Neighbor::SetState(a3, 5);
              }

              ot::Ip6::MessageInfo::GetSockAddr(a2[1]);
              if (ot::Ip6::Address::IsMulticast(v15))
              {
                ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
                v26 = v16;
                Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0x3E8u);
                appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v36, v26, Uint16InRange + 1);
                if (!appended)
                {
                  if (v35 == 1)
                  {
                    v18 = 23;
                  }

                  else
                  {
                    v18 = 24;
                  }

                  v25 = v18;
                  ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
                  ot::Mle::Mle::Log(2u, v25, v19);
                }
              }

              else
              {
                ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
                appended = ot::Mle::Mle::TxMessage::SendTo(v36, v20);
                if (!appended)
                {
                  if (v35 == 1)
                  {
                    v21 = 23;
                  }

                  else
                  {
                    v21 = 24;
                  }

                  v24 = v21;
                  ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
                  ot::Mle::Mle::Log(0, v24, v22);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_44:
  if (appended && v36)
  {
    ot::Message::Free(v36);
  }

  return appended;
}

uint64_t ot::Mle::MleRouter::HandleLinkAccept(ot::Mle::MleRouter *this, ot::Mle::Mle::RxInfo *a2, char a3)
{
  v82 = this;
  v81 = a2;
  v80 = a3;
  ResponseTlv = 0;
  *&v78[3] = 0;
  HIBYTE(v78[2]) = 0;
  v78[1] = 0;
  ot::Mle::RxChallenge::RxChallenge(v87);
  v78[0] = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v71 = 0;
  ResponseTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v81, v78);
  if (!ResponseTlv)
  {
    if (v80)
    {
      v3 = 24;
    }

    else
    {
      v3 = 23;
    }

    v68 = v3;
    ot::Ip6::MessageInfo::GetPeerAddr(*(v81 + 1));
    ot::Mle::Mle::Log(1u, v68, v4, v78[0]);
    if (!ot::Mle::IsRouterRloc16(v78[0], v5))
    {
      return 6;
    }

    v75 = ot::Mle::RouterIdFromRloc16(v78[0]);
    ot::RouterTable::FindRouterById((this + 30904), v75);
    *&v78[3] = v8;
    v67 = v8 ? ot::Neighbor::GetState(*&v78[3]) : 0;
    HIBYTE(v78[2]) = v67;
    ResponseTlv = ot::Mle::Mle::RxMessage::ReadResponseTlv(*v81, v87, v6, v7);
    if (!ResponseTlv)
    {
      if (HIBYTE(v78[2]))
      {
        if (HIBYTE(v78[2]) == 5)
        {
          Challenge = ot::Neighbor::GetChallenge(*&v78[3]);
          if (!ot::Mle::RxChallenge::operator==(v87, Challenge))
          {
            return 8;
          }
        }

        else if (HIBYTE(v78[2]) != 7)
        {
          return 8;
        }
      }

      else if (!*(this + 143) && !*(this + 35616) || !ot::Mle::RxChallenge::operator==(v87, this + 35617))
      {
        return 8;
      }

      if (*(v81 + 3))
      {
        Rloc16 = ot::Neighbor::GetRloc16(*(v81 + 3));
        if (Rloc16 != v78[0])
        {
          ot::Mle::MleRouter::RemoveNeighbor(this, *(v81 + 3));
        }
      }

      ResponseTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(*v81, &v78[1]);
      if (!ResponseTlv)
      {
        ResponseTlv = ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(*v81, &v77, &v76);
        if (!ResponseTlv)
        {
          ot::Ip6::MessageInfo::GetPeerAddr(*(v81 + 1));
          ot::Ip6::Address::ToString(v85, v11);
          v12 = ot::String<(unsigned short)40>::AsCString(v85);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v13, v14, v15, v16, v17, v18, "HandleLinkAccept", v12, v77, v76);
          v66 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(*v81, &v72);
          if (v66)
          {
            if (v66 != 23)
            {
              return 6;
            }

            if (!ot::Mle::Mle::IsDetached(this))
            {
              return 23;
            }

            v72 = 0;
          }

          v65 = *(this + 130);
          if (!*(this + 130))
          {
            __assert_rtn("HandleLinkAccept", "mle_router.cpp", 1285, "false");
          }

          if (v65 != 1)
          {
            if (v65 == 2)
            {
              if (!*&v78[3])
              {
                return ResponseTlv;
              }
            }

            else if (v65 == 4 || v65 == 3)
            {
              if (!*&v78[3])
              {
                return ResponseTlv;
              }

              ResponseTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v81, &v73, v19, v20, v21, v22);
              if (ResponseTlv)
              {
                return ResponseTlv;
              }

              PartitionId = ot::Mle::LeaderData::GetPartitionId(&v73);
              if (PartitionId != ot::Mle::LeaderData::GetPartitionId((this + 184)))
              {
                return ResponseTlv;
              }

              if ((*(this + 129) & 1) != 0 || (DataVersion = ot::Mle::LeaderData::GetDataVersion(&v73, 0), v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this), Version = ot::NetworkData::Leader::GetVersion(v36, 0), ot::SerialNumber::IsGreater<unsigned char>(DataVersion, Version)))
              {
                ot::Ip6::MessageInfo::GetPeerAddr(*(v81 + 1));
                ot::Mle::Mle::SendDataRequest(this, v42);
                IgnoreError();
              }

              RouteTlv = ot::Mle::Mle::RxMessage::ReadRouteTlv(*v81, v86, v38, v39, v40, v41);
              if (RouteTlv)
              {
                if (RouteTlv != 23)
                {
                  return 6;
                }
              }

              else
              {
                if (!ot::Mle::RouteTlv::IsRouterIdSet(v86, v75))
                {
                  return 6;
                }

                if (ot::RouterTable::IsRouteTlvIdSequenceMoreRecent((this + 30904), v86))
                {
                  ResponseTlv = ot::Mle::MleRouter::ProcessRouteTlv(this, v86, v81);
                  if (ResponseTlv)
                  {
                    return ResponseTlv;
                  }

                  ot::RouterTable::FindRouterById((this + 30904), v75);
                  *&v78[3] = v43;
                  if (!v43)
                  {
                    __assert_rtn("HandleLinkAccept", "mle_router.cpp", 1265, "router != nullptr");
                  }
                }

                v71 = 1;
              }

              if (v75 != *(this + 35689))
              {
                NextHop = ot::Router::GetNextHop(*&v78[3]);
                if (!ot::Mle::IsRouterIdValid(NextHop))
                {
                  ot::Mle::MleRouter::ResetAdvertiseInterval(this);
                }
              }
            }

            goto LABEL_74;
          }

          ResponseTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(*v81, &v74);
          if (!ResponseTlv)
          {
            v23 = ot::Mle::Mle::GetRloc16(this);
            if (v23 != v74)
            {
              return 2;
            }

            ResponseTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v81, &v73, v24, v25, v26, v27);
            if (!ResponseTlv)
            {
              ot::Mle::Mle::SetLeaderData(this, &v73);
              ot::RouterTable::Clear((this + 30904));
              ResponseTlv = ot::Mle::Mle::RxMessage::ReadRouteTlv(*v81, v86, v28, v29, v30, v31);
              if (!ResponseTlv)
              {
                ResponseTlv = ot::Mle::MleRouter::ProcessRouteTlv(this, v86, v81);
                if (!ResponseTlv)
                {
                  ot::RouterTable::FindRouterById((this + 30904), v75);
                  *&v78[3] = v32;
                  if (v32)
                  {
                    LeaderRloc16 = ot::Mle::Mle::GetLeaderRloc16(this);
                    if (LeaderRloc16 == ot::Mle::Mle::GetRloc16(this))
                    {
                      v33 = ot::Mle::Mle::GetRloc16(this);
                      ot::Mle::MleRouter::SetStateLeader(this, v33, 1);
                    }

                    else
                    {
                      v34 = ot::Mle::Mle::GetRloc16(this);
                      ot::Mle::MleRouter::SetStateRouter(this, v34);
                    }

                    *(this + 143) = 0;
                    *(this + 129) = *(this + 129) & 0xFE | 1;
                    ot::Ip6::MessageInfo::GetPeerAddr(*(v81 + 1));
                    ot::Mle::Mle::SendDataRequest(this, v35);
                    IgnoreError();
                    v71 = 1;
LABEL_74:
                    ot::Mle::Mle::InitNeighbor(this, *&v78[3], v81);
                    ot::Neighbor::SetRloc16(*&v78[3], v78[0]);
                    LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(*&v78[3]);
                    ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v77);
                    ot::Neighbor::SetLinkAckFrameCounter(*&v78[3], v77);
                    ot::Neighbor::SetMleFrameCounter(*&v78[3], v76);
                    ot::Neighbor::SetVersion(*&v78[3], v78[1]);
                    v56 = *&v78[3];
                    ot::Mle::DeviceMode::DeviceMode(&v70, 11);
                    ot::Neighbor::SetDeviceMode(v56, v70);
                    v57 = *&v78[3];
                    v46 = ot::LinkQualityForLinkMargin(v72);
                    ot::Router::SetLinkQualityOut(v57, v46);
                    ot::Neighbor::SetState(*&v78[3], 7);
                    ot::Neighbor::SetKeySequence(*&v78[3], *(v81 + 5));
                    v58 = *&v78[3];
                    v47 = ot::Mle::LeaderData::GetDataVersion(&v73, 0);
                    ot::Neighbor::SetLeaderFullDataVersion(v58, v47);
                    v59 = *&v78[3];
                    v48 = ot::Mle::LeaderData::GetDataVersion(&v73, 1);
                    ot::Neighbor::SetLeaderStableDataVersion(v59, v48);
                    v60 = *&v78[3];
                    RouterIdSequence = ot::Mle::RouteTlv::GetRouterIdSequence(v86);
                    ot::Neighbor::SetIdSeqNum(v60, RouterIdSequence);
                    ot::NeighborTable::Signal((this + 344), 3u, *&v78[3]);
                    if (v71)
                    {
                      ot::RouterTable::UpdateRoutes((this + 30904), v86, v75);
                    }

                    *(v81 + 32) = 1;
                    ot::Mle::Mle::ProcessKeySequence(this, v81);
                    if (v80)
                    {
                      ot::Mle::RxChallenge::RxChallenge(v84);
                      ot::Mle::Mle::TlvList::TlvList(v83);
                      ResponseTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v81, v84, v50, v51);
                      if (!ResponseTlv)
                      {
                        TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v81, v83, v52, v53);
                        if (TlvRequestTlv && TlvRequestTlv != 23)
                        {
                          return 6;
                        }

                        else
                        {
                          return ot::Mle::MleRouter::SendLinkAccept(this, v81, *&v78[3], v83, v84);
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

  return ResponseTlv;
}