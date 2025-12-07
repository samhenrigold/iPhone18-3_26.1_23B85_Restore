void *ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::Set(result, a2, a3);
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::Clear(uint64_t result)
{
  *(result + 4) = 0;
  return result;
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::Clear(result);
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 4);
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::GetLength(a1);
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::operator[](uint64_t a1, unsigned __int8 a2)
{
  return a1 + 2 * a2;
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::operator[](a1, a2);
}

uint64_t otJoinerStart(uint64_t a1, ot *a2, ot *a3, ot *a4, ot *a5, ot *a6, char *a7, uint64_t a8, uint64_t a9)
{
  ot::AsCoreType<otInstance>(a1);
  v10 = ot::Instance::Get<ot::MeshCoP::Joiner>(v9);
  return ot::MeshCoP::Joiner::Start(v10, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ot::Instance::Get<ot::MeshCoP::Joiner>(uint64_t a1)
{
  return a1 + 146216;
}

{
  return ot::Instance::Get<ot::MeshCoP::Joiner>(a1);
}

unsigned __int8 *otJoinerStop(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Joiner>(v1);
  return ot::MeshCoP::Joiner::Stop(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t otJoinerGetState(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Joiner>(v1);
  State = ot::MeshCoP::Joiner::GetState(v2);
  return ot::MapEnum<ot::MeshCoP::Joiner::State>(State);
}

uint64_t ot::MapEnum<ot::MeshCoP::Joiner::State>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::MeshCoP::Joiner::State>(result);
}

uint64_t ot::MeshCoP::Joiner::GetState(ot::MeshCoP::Joiner *this)
{
  return *(this + 24);
}

{
  return ot::MeshCoP::Joiner::GetState(this);
}

uint64_t ot::MeshCoP::Joiner::GetRepeatScan(ot::MeshCoP::Joiner *this)
{
  return *(this + 112);
}

{
  return ot::MeshCoP::Joiner::GetRepeatScan(this);
}

uint64_t ot::MeshCoP::Joiner::SetRepeatScan(ot::MeshCoP::Joiner *this, char a2)
{
  *(this + 112) = a2;
  return 0;
}

{
  return ot::MeshCoP::Joiner::SetRepeatScan(this, a2);
}

void otJoinerGetId(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Joiner>(v1);
  ot::MeshCoP::Joiner::GetId(v2);
}

void ot::MeshCoP::Joiner::GetId(ot::MeshCoP::Joiner *this)
{
  ;
}

{
  ot::MeshCoP::Joiner::GetId(this);
}

uint64_t otJoinerSetDiscerner(uint64_t a1, uint64_t a2)
{
  *&v6[4] = a2;
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::Joiner>(v2);
  if (*&v6[4])
  {
    ot::AsCoreType<otJoinerDiscerner>(*&v6[4]);
    *v6 = ot::MeshCoP::Joiner::SetDiscerner(v5, v3);
  }

  else
  {
    *v6 = ot::MeshCoP::Joiner::ClearDiscerner(v5);
  }

  return *v6;
}

uint64_t otJoinerGetDiscerner(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Joiner>(v1);
  return ot::MeshCoP::Joiner::GetDiscerner(v2);
}

char *otJoinerStateToString(unsigned int a1)
{
  if (a1 > 5)
  {
    __assert_rtn("otJoinerStateToString", "joiner_api.cpp", 112, "aState <= OT_JOINER_STATE_JOINED");
  }

  v1 = ot::MapEnum<otJoinerState>(a1);
  return ot::MeshCoP::Joiner::StateToString(v1);
}

uint64_t ot::MapEnum<otJoinerState>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otJoinerState>(result);
}

uint64_t otLinkGetChannel(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = v1;
  v2 = ot::Instance::Get<ot::Mac::LinkRaw>(v1);
  if (ot::Mac::LinkRaw::IsEnabled(v2))
  {
    v3 = ot::Instance::Get<ot::Mac::LinkRaw>(v7);
    return ot::Mac::LinkRaw::GetChannel(v3);
  }

  else
  {
    v4 = ot::Instance::Get<ot::Mac::Mac>(v7);
    return ot::Mac::Mac::GetPanChannel(v4);
  }
}

uint64_t ot::Mac::LinkRaw::GetChannel(ot::Mac::LinkRaw *this)
{
  return *this;
}

{
  return ot::Mac::LinkRaw::GetChannel(this);
}

uint64_t ot::Mac::Mac::GetPanChannel(ot::Mac::Mac *this)
{
  return *(this + 10);
}

{
  return ot::Mac::Mac::GetPanChannel(this);
}

uint64_t otLinkSetChannel(uint64_t a1, unsigned __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v10 = v2;
  v3 = ot::Instance::Get<ot::Mac::LinkRaw>(v2);
  if (ot::Mac::LinkRaw::IsEnabled(v3))
  {
    v4 = ot::Instance::Get<ot::Mac::LinkRaw>(v10);
    return ot::Mac::LinkRaw::SetChannel(v4, a2);
  }

  else
  {
    v5 = ot::Instance::Get<ot::Mle::MleRouter>(v10);
    if (ot::Mle::Mle::IsDisabled(v5))
    {
      v6 = ot::Instance::Get<ot::Mac::Mac>(v10);
      v11 = ot::Mac::Mac::SetPanChannel(v6, a2);
      if (!v11)
      {
        active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v10);
        ot::MeshCoP::DatasetManager::Clear(active);
        v8 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v10);
        ot::MeshCoP::DatasetManager::Clear(v8);
      }
    }

    else
    {
      return 13;
    }
  }

  return v11;
}

uint64_t otLinkGetSupportedChannelMask(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v2);
  return ot::Mac::ChannelMask::GetMask(SupportedChannelMask);
}

uint64_t ot::Mac::Mac::GetSupportedChannelMask(ot::Mac::Mac *this)
{
  return this + 12;
}

{
  return ot::Mac::Mac::GetSupportedChannelMask(this);
}

uint64_t otLinkSetSupportedChannelMask(uint64_t a1, int a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  ot::AsCoreType<otInstance>(a1);
  v7 = v2;
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    v5 = ot::Instance::Get<ot::Mac::Mac>(v7);
    ot::Mac::ChannelMask::ChannelMask(v6, v9);
    ot::Mac::Mac::SetSupportedChannelMask(v5, v6);
  }

  else
  {
    return 13;
  }

  return v8;
}

uint64_t otLinkGetExtendedAddress(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetExtAddress(v2);
}

uint64_t otLinkSetExtendedAddress(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  ot::AsCoreType<otInstance>(a1);
  v8 = v2;
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    v7 = ot::Instance::Get<ot::Mac::Mac>(v8);
    ot::AsCoreType<otExtAddress>(a2);
    ot::Mac::Mac::SetExtAddress(v7, v4);
    v5 = ot::Instance::Get<ot::Mle::MleRouter>(v8);
    ot::Mle::Mle::UpdateLinkLocalAddress(v5);
  }

  else
  {
    return 13;
  }

  return v9;
}

void ot::Mac::Mac::SetExtAddress(ot::Mac::Mac *this, const ot::Mac::ExtAddress *a2)
{
  ot::Mac::Links::SetExtAddress((this + 56), a2);
}

{
  ot::Mac::Mac::SetExtAddress(this, a2);
}

uint64_t otLinkGetFactoryAssignedIeeeEui64(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Radio>(v2);
  ot::AsCoreType<otExtAddress>(a2);
  return ot::Radio::GetIeeeEui64(v5, v3);
}

uint64_t ot::Radio::GetIeeeEui64(ot::Radio *this, ot::Mac::ExtAddress *a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetIeeeEui64(InstancePtr, a2);
}

{
  return ot::Radio::GetIeeeEui64(this, a2);
}

uint64_t otLinkGetPanId(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetPanId(v2);
}

uint64_t otLinkSetPanId(uint64_t a1, __int16 a2)
{
  v9 = 0;
  ot::AsCoreType<otInstance>(a1);
  v8 = v2;
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    v4 = ot::Instance::Get<ot::Mac::Mac>(v8);
    ot::Mac::Mac::SetPanId(v4, a2);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(active);
    v6 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(v6);
  }

  else
  {
    return 13;
  }

  return v9;
}

uint64_t otLinkForceWEDDetach(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::CslTxScheduler>(v1);
  return ot::CslTxScheduler::ForceDetach(v2);
}

uint64_t ot::Instance::Get<ot::CslTxScheduler>(uint64_t a1)
{
  return a1 + 90224;
}

{
  return ot::Instance::Get<ot::CslTxScheduler>(a1);
}

uint64_t otLinkGetCslRequestAhead(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::CslTxScheduler>(v1);
  return ot::CslTxScheduler::GetFrameRequestAheadUs(v2);
}

uint64_t otLinkSetCslRequestAhead(uint64_t a1, int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::CslTxScheduler>(v2);
  ot::CslTxScheduler::SetFrameRequestAheadUs(v3, a2);
  return 0;
}

uint64_t otLinkGetPollPeriod(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::DataPollSender>(v1);
  return ot::DataPollSender::GetKeepAlivePollPeriod(v2);
}

uint64_t ot::Instance::Get<ot::DataPollSender>(uint64_t a1)
{
  return a1 + 90256;
}

{
  return ot::Instance::Get<ot::DataPollSender>(a1);
}

uint64_t otLinkSetPollPeriod(uint64_t a1, unsigned int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::DataPollSender>(v2);
  return ot::DataPollSender::SetExternalPollPeriod(v3, a2);
}

uint64_t otLinkSendDataRequest(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::DataPollSender>(v1);
  return ot::DataPollSender::SendDataPoll(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t otLinkGetShortAddress(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetShortAddress(v2);
}

uint64_t ot::Mac::Mac::GetShortAddress(ot::Mac::Mac *this)
{
  return ot::Mac::Links::GetShortAddress((this + 56));
}

{
  return ot::Mac::Mac::GetShortAddress(this);
}

uint64_t otLinkGetAlternateShortAddress(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetAlternateShortAddress(v2);
}

uint64_t ot::Mac::Mac::GetAlternateShortAddress(ot::Mac::Mac *this)
{
  return ot::Mac::Links::GetAlternateShortAddress((this + 56));
}

{
  return ot::Mac::Mac::GetAlternateShortAddress(this);
}

uint64_t otLinkGetMaxFrameRetriesDirect(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetMaxFrameRetriesDirect(v2);
}

uint64_t ot::Mac::Mac::GetMaxFrameRetriesDirect(ot::Mac::Mac *this)
{
  return *(this + 24);
}

{
  return ot::Mac::Mac::GetMaxFrameRetriesDirect(this);
}

uint64_t otLinkSetMaxFrameRetriesDirect(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::SetMaxFrameRetriesDirect(v3, a2);
}

uint64_t ot::Mac::Mac::SetMaxFrameRetriesDirect(uint64_t this, char a2)
{
  *(this + 24) = a2;
  return this;
}

{
  return ot::Mac::Mac::SetMaxFrameRetriesDirect(this, a2);
}

uint64_t otLinkGetMaxFrameRetriesIndirect(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetMaxFrameRetriesIndirect(v2);
}

uint64_t ot::Mac::Mac::GetMaxFrameRetriesIndirect(ot::Mac::Mac *this)
{
  return *(this + 25);
}

{
  return ot::Mac::Mac::GetMaxFrameRetriesIndirect(this);
}

uint64_t otLinkSetMaxFrameRetriesIndirect(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::SetMaxFrameRetriesIndirect(v3, a2);
}

uint64_t ot::Mac::Mac::SetMaxFrameRetriesIndirect(uint64_t this, char a2)
{
  *(this + 25) = a2;
  return this;
}

{
  return ot::Mac::Mac::SetMaxFrameRetriesIndirect(this, a2);
}

uint64_t otLinkGetFrameCounter(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::SubMac>(v1);
  return ot::Mac::SubMac::GetFrameCounter(v2);
}

uint64_t ot::Instance::Get<ot::Mac::SubMac>(uint64_t a1)
{
  return a1 + 88264;
}

{
  return ot::Instance::Get<ot::Mac::SubMac>(a1);
}

uint64_t ot::Mac::SubMac::GetFrameCounter(ot::Mac::SubMac *this)
{
  return *(this + 28);
}

{
  return ot::Mac::SubMac::GetFrameCounter(this);
}

uint64_t otLinkFilterGetAddressMode(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Filter>(v1);
  Mode = ot::Mac::Filter::GetMode(v2);
  return ot::MapEnum<ot::Mac::Filter::Mode>(Mode);
}

uint64_t ot::MapEnum<ot::Mac::Filter::Mode>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::Mac::Filter::Mode>(result);
}

uint64_t ot::Instance::Get<ot::Mac::Filter>(uint64_t a1)
{
  return a1 + 89564;
}

{
  return ot::Instance::Get<ot::Mac::Filter>(a1);
}

uint64_t ot::Mac::Filter::GetMode(ot::Mac::Filter *this)
{
  return *this;
}

{
  return ot::Mac::Filter::GetMode(this);
}

_BYTE *otLinkFilterSetAddressMode(uint64_t a1, unsigned int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Mac::Filter>(v2);
  v3 = ot::MapEnum<otMacFilterAddressMode>(a2);
  return ot::Mac::Filter::SetMode(v5, v3);
}

_BYTE *ot::Mac::Filter::SetMode(_BYTE *result, char a2)
{
  *result = a2;
  return result;
}

{
  return ot::Mac::Filter::SetMode(result, a2);
}

uint64_t ot::MapEnum<otMacFilterAddressMode>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otMacFilterAddressMode>(result);
}

uint64_t otLinkFilterAddAddress(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Mac::Filter>(v2);
  ot::AsCoreType<otExtAddress>(a2);
  return ot::Mac::Filter::AddAddress(v5, v3);
}

void otLinkFilterRemoveAddress(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Filter>(v2);
  ot::AsCoreType<otExtAddress>(a2);
  ot::Mac::Filter::RemoveAddress(v4, v3);
}

uint64_t otLinkFilterClearAddresses(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Filter>(v1);
  return ot::Mac::Filter::ClearAddresses(v2);
}

uint64_t otLinkFilterGetNextAddress(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otLinkFilterGetNextAddress", "link_api.cpp", 250, "(aIterator) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otLinkFilterGetNextAddress", "link_api.cpp", 251, "(aEntry) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Filter>(v3);
  return ot::Mac::Filter::GetNextAddress(v4, a2, a3);
}

uint64_t otLinkFilterAddRssIn(uint64_t a1, uint64_t a2, signed __int8 a3)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Mac::Filter>(v3);
  ot::AsCoreType<otExtAddress>(a2);
  return ot::Mac::Filter::AddRssIn(v6, v4, a3);
}

void otLinkFilterRemoveRssIn(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Filter>(v2);
  ot::AsCoreType<otExtAddress>(a2);
  ot::Mac::Filter::RemoveRssIn(v4, v3);
}

uint64_t otLinkFilterSetDefaultRssIn(uint64_t a1, signed __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Filter>(v2);
  return ot::Mac::Filter::SetDefaultRssIn(v3, a2);
}

uint64_t ot::Mac::Filter::SetDefaultRssIn(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Mac::Filter::SetDefaultRssIn(this, a2);
}

uint64_t otLinkFilterClearDefaultRssIn(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Filter>(v1);
  return ot::Mac::Filter::ClearDefaultRssIn(v2);
}

uint64_t ot::Mac::Filter::ClearDefaultRssIn(uint64_t this)
{
  *(this + 1) = 127;
  return this;
}

{
  return ot::Mac::Filter::ClearDefaultRssIn(this);
}

uint64_t otLinkFilterClearAllRssIn(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Filter>(v1);
  return ot::Mac::Filter::ClearAllRssIn(v2);
}

uint64_t otLinkFilterGetNextRssIn(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otLinkFilterGetNextRssIn", "link_api.cpp", 280, "(aIterator) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otLinkFilterGetNextRssIn", "link_api.cpp", 281, "(aEntry) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Filter>(v3);
  return ot::Mac::Filter::GetNextRssIn(v4, a2, a3);
}

void otLinkSetRadioFilterEnabled(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::SetRadioFilterEnabled(v3, a2 & 1);
}

uint64_t otLinkIsRadioFilterEnabled(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsRadioFilterEnabled(v2);
}

uint64_t ot::Mac::Mac::IsRadioFilterEnabled(ot::Mac::Mac *this)
{
  SubMac = ot::Mac::Links::GetSubMac((this + 56));
  return ot::Mac::SubMac::IsRadioFilterEnabled(SubMac);
}

{
  return ot::Mac::Mac::IsRadioFilterEnabled(this);
}

uint64_t otLinkConvertRssToLinkQuality(uint64_t a1, signed __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  v4 = ot::Mac::Mac::ComputeLinkMargin(v3, a2);
  return ot::LinkQualityForLinkMargin(v4);
}

uint64_t otLinkConvertLinkQualityToRss(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  NoiseFloor = ot::Mac::Mac::GetNoiseFloor(v3);
  return ot::GetTypicalRssForLinkQuality(NoiseFloor, a2);
}

uint64_t ot::Mac::Mac::GetNoiseFloor(ot::Mac::Mac *this)
{
  return ot::Mac::Links::GetNoiseFloor((this + 56));
}

{
  return ot::Mac::Mac::GetNoiseFloor(this);
}

uint64_t otLinkGetTxDirectRetrySuccessHistogram(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otLinkGetTxDirectRetrySuccessHistogram", "link_api.cpp", 314, "(aNumberOfEntries) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::GetDirectRetrySuccessHistogram(v3, a2);
}

uint64_t otLinkGetTxIndirectRetrySuccessHistogram(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otLinkGetTxIndirectRetrySuccessHistogram", "link_api.cpp", 323, "(aNumberOfEntries) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::GetIndirectRetrySuccessHistogram(v3, a2);
}

void *otLinkResetTxRetrySuccessHistogram(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ResetRetrySuccessHistogram(v2);
}

uint64_t otLinkGetTxDirectErrorNoAckHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::GetDirectErrorNoAckHistogram(v3, a2);
}

uint64_t otLinkGetTxDirectErrorChannelAccessFailureHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::GetDirectErrorChannelAccessFailureHistogram(v3, a2);
}

void *otLinkResetTxErrorHistogram(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ResetTxErrorHistogram(v2);
}

void otLinkGetTxPacketSizeHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetTxSizeHistogram(v3, a2);
}

void otLinkGetRxPacketSizeHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetRxSizeHistogram(v3, a2);
}

void otLinkGetLqiHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetRxLqiHistogram(v3, a2);
}

void otLinkGetRouterRssiHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetRouterRssiHistogram(v3, a2);
}

void otLinkGetEndDeviceRssiHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetEndDeviceRssiHistogram(v3, a2);
}

void otLinkGetJoinerRssiHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetJoinerRssiHistogram(v3, a2);
}

void *otLinkResetPacketSizeHistogram(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ClearSizeHistograms(v2);
}

void *otLinkResetLqiHistogram(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ClearLqiHistogram(v2);
}

void *otLinkResetNeighborRssiHistogram(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ClearNeighborRssiHistograms(v2);
}

void *otLinkResetJoinerRssiHistogram(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ClearJoinerRssiHistograms(v2);
}

void *otLinkSetPcapCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Mac>(v3);
  return ot::Mac::Mac::SetPcapCallback(v4, a2, a3);
}

void *ot::Mac::Mac::SetPcapCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::Mac::Links::SetPcapCallback(a1 + 56, a2, a3);
}

{
  return ot::Mac::Mac::SetPcapCallback(a1, a2, a3);
}

uint64_t otLinkIsPromiscuous(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsPromiscuous(v2);
}

uint64_t ot::Mac::Mac::IsPromiscuous(ot::Mac::Mac *this)
{
  return (*this >> 3) & 1;
}

{
  return ot::Mac::Mac::IsPromiscuous(this);
}

uint64_t otLinkSetPromiscuous(uint64_t a1, char a2)
{
  v7 = 0;
  ot::AsCoreType<otInstance>(a1);
  v6 = v2;
  v3 = ot::Instance::Get<ot::ThreadNetif>(v2);
  if (ot::ThreadNetif::IsUp(v3))
  {
    return 13;
  }

  else
  {
    v4 = ot::Instance::Get<ot::Mac::Mac>(v6);
    ot::Mac::Mac::SetPromiscuous(v4, a2 & 1);
  }

  return v7;
}

uint64_t otLinkSetEnabled(uint64_t a1, char a2)
{
  v7 = 0;
  ot::AsCoreType<otInstance>(a1);
  v6 = v2;
  v3 = ot::Instance::Get<ot::ThreadNetif>(v2);
  if (ot::ThreadNetif::IsUp(v3))
  {
    return 13;
  }

  else
  {
    v4 = ot::Instance::Get<ot::Mac::Mac>(v6);
    ot::Mac::Mac::SetEnabled(v4, a2 & 1);
  }

  return v7;
}

uint64_t otLinkIsEnabled(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsEnabled(v2);
}

uint64_t ot::Mac::Mac::IsEnabled(ot::Mac::Mac *this)
{
  return *this & 1;
}

{
  return ot::Mac::Mac::IsEnabled(this);
}

uint64_t otLinkGetCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetCounters(v2);
}

uint64_t ot::Mac::Mac::GetCounters(ot::Mac::Mac *this)
{
  return this + 336;
}

{
  return ot::Mac::Mac::GetCounters(this);
}

void *otLinkResetCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ResetCounters(v2);
}

void *ot::Mac::Mac::ResetCounters(ot::Mac::Mac *this)
{
  return ot::ClearAllBytes<otMacCounters>(this + 336);
}

{
  return ot::Mac::Mac::ResetCounters(this);
}

void otLinkRegenerateExAddr(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  ot::Mac::Mac::RegenerateExtAddr(v2, v3, v4);
}

uint64_t otLinkRegenerateMleIid(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GenerateMleIid(v2);
}

uint64_t otLinkActiveScan(uint64_t a1, unsigned int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Mac::Mac>(v5);
  return ot::Mac::Mac::ActiveScan(v6, a2, a3, a4, a5);
}

BOOL otLinkIsActiveScanInProgress(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsActiveScanInProgress(v2);
}

BOOL ot::Mac::Mac::IsActiveScanInProgress(ot::Mac::Mac *this)
{
  return ot::Mac::Mac::IsActiveOrPending(this, 1);
}

{
  return ot::Mac::Mac::IsActiveScanInProgress(this);
}

uint64_t otLinkEnergyScan(uint64_t a1, unsigned int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Mac::Mac>(v5);
  return ot::Mac::Mac::EnergyScan(v6, a2, a3, a4, a5);
}

BOOL otLinkIsEnergyScanInProgress(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsEnergyScanInProgress(v2);
}

BOOL ot::Mac::Mac::IsEnergyScanInProgress(ot::Mac::Mac *this)
{
  return ot::Mac::Mac::IsActiveOrPending(this, 2);
}

{
  return ot::Mac::Mac::IsEnergyScanInProgress(this);
}

uint64_t otLinkIsInTransmitState(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsInTransmitState(v2);
}

uint64_t otLinkGetCcaFailureRate(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetCcaFailureRate(v2);
}

uint64_t ot::Mac::Mac::GetCcaFailureRate(ot::Mac::Mac *this)
{
  return ot::SuccessRateTracker::GetFailureRate((this + 524));
}

{
  return ot::Mac::Mac::GetCcaFailureRate(this);
}

uint64_t otLinkGetMleAdvTxNum(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetMleAdvTxNum(v2);
}

uint64_t ot::Mac::Mac::GetMleAdvTxNum(ot::Mac::Mac *this)
{
  return *(this + 26);
}

{
  return ot::Mac::Mac::GetMleAdvTxNum(this);
}

uint64_t otLinkSetMleAdvTxNum(uint64_t a1, unsigned __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::SetMleAdvTxNum(v3, a2);
}

BOOL otLinkIsCslEnabled(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsCslEnabled(v2);
}

BOOL otLinkIsCslSupported(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsCslSupported(v2);
}

uint64_t otLinkGetCslChannel(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetCslChannel(v2);
}

uint64_t ot::Mac::Mac::GetCslChannel(ot::Mac::Mac *this)
{
  return *(this + 32);
}

{
  return ot::Mac::Mac::GetCslChannel(this);
}

uint64_t otLinkSetCslChannel(uint64_t a1, char a2)
{
  v5 = 0;
  if (ot::Radio::IsCslChannelValid(a2))
  {
    ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
    ot::Mac::Mac::SetCslChannel(v3, a2);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Radio::IsCslChannelValid(ot::Radio *this)
{
  v4 = 1;
  if (this)
  {
    v3 = 1;
    if (this != 11)
    {
      v2 = 0;
      if (this > 0xBu)
      {
        v2 = this <= 0x19u;
      }

      v3 = v2;
    }

    v4 = v3;
  }

  return v4 & 1;
}

{
  return ot::Radio::IsCslChannelValid(this);
}

uint64_t otLinkCslGetPeriod(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetCslPeriod(v2);
}

uint64_t ot::Mac::Mac::GetCslPeriod(ot::Mac::Mac *this)
{
  return *(this + 17);
}

{
  return ot::Mac::Mac::GetCslPeriod(this);
}

uint64_t otLinkGetCslPeriod(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  CslPeriod = ot::Mac::Mac::GetCslPeriod(v2);
  return ot::Mac::Mac::CslPeriodToUsec(CslPeriod);
}

uint64_t otLinkSetCslPeriod(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  if (!a2)
  {
    v5 = 0;
LABEL_7:
    ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
    ot::Mac::Mac::SetCslPeriod(v3, v5);
    return v6;
  }

  if (a2 % 0xA0)
  {
    return 7;
  }

  else
  {
    v5 = ot::ClampToUint16<unsigned int>(a2 / 0xA0);
    if (v5 >= 0x3EuLL)
    {
      goto LABEL_7;
    }

    return 7;
  }
}

uint64_t ot::ClampToUint16<unsigned int>(unsigned int a1)
{
  return ot::Min<unsigned int>(a1, 0xFFFFu);
}

{
  return ot::ClampToUint16<unsigned int>(a1);
}

uint64_t otLinkGetCslTimeout(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetCslTimeout(v2);
}

uint64_t ot::Mle::Mle::GetCslTimeout(ot::Mle::Mle *this)
{
  return *(this + 40);
}

{
  return ot::Mle::Mle::GetCslTimeout(this);
}

uint64_t otLinkSetCslTimeout(uint64_t a1, int a2)
{
  v5 = 0;
  if (a2 <= 0x2710uLL)
  {
    ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
    ot::Mle::Mle::SetCslTimeout(v3, a2);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t otLinkWorGetChannel(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetWorChannel(v2);
}

uint64_t ot::Mac::Mac::GetWorChannel(ot::Mac::Mac *this)
{
  return *(this + 36);
}

{
  return ot::Mac::Mac::GetWorChannel(this);
}

uint64_t otLinkWorSetChannel(uint64_t a1, char a2)
{
  v9 = 0;
  ot::AsCoreType<otInstance>(a1);
  v8 = v2;
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    v4 = ot::Instance::Get<ot::Mac::Mac>(v8);
    ot::Mac::Mac::SetWorChannel(v4, a2);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(active);
    v6 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(v6);
  }

  else
  {
    return 13;
  }

  return v9;
}

unsigned __int8 *otLinkSetFragmentSize(uint64_t a1, unsigned __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshForwarder>(v2);
  return ot::MeshForwarder::setFragmentSize(v3, a2);
}

unsigned __int8 *ot::MeshForwarder::setFragmentSize(unsigned __int8 *this, unsigned __int8 a2)
{
  if (a2 >= 0x3Fu && a2 <= 0x7Fu)
  {
    *this = a2;
  }

  return this;
}

{
  return ot::MeshForwarder::setFragmentSize(this, a2);
}

unsigned __int8 *otLinkGetFragmentSize(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshForwarder>(v2);
  return ot::MeshForwarder::getFragmentSize(v3, a2);
}

unsigned __int8 *ot::MeshForwarder::getFragmentSize(unsigned __int8 *this, unsigned __int8 *a2)
{
  *a2 = *this;
  return this;
}

{
  return ot::MeshForwarder::getFragmentSize(this, a2);
}

void otLinkSetDataPollTimeoutCoex(uint64_t a1, int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::SetDataPollTimeoutCoex(v3, a2);
}

void otLinkSetCoexLoadMap(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::Mle::SetCoexLoadMapValue(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t otLinkSetDiscoverScanDutyCycle(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::Mle::adjustDutyCycleForSRDiscoverScan(v3, a2 & 1);
}

uint64_t otLinkSetPairingDeviceExtAddr(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
    ot::AsCoreType<otExtAddress>(a2);
    return ot::Mle::MleRouter::SetPairingDeviceExtAddr(v7, v3);
  }

  else
  {
    ot::AsCoreType<otInstance>(a1);
    v6 = ot::Instance::Get<ot::Mle::MleRouter>(v5);
    return ot::Mle::MleRouter::ResetPairingDeviceExtAddr(v6);
  }
}

uint64_t otLinkGetPairingDeviceExtAddr(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetPairingDeviceExtAddr(v2);
}

void otLinkSetB2BDataPollDelay(uint64_t a1, unsigned __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::DataPollSender>(v2);
  ot::DataPollSender::SetB2BDataPollDelay(v3, a2, v4, v5, v6, v7, v8, v9);
}

void otLinkSetSessionPriority(uint64_t a1, unsigned __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::DataPollSender>(v2);
  ot::DataPollSender::SetSessionPriority(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t otLinkGetPrioritizedWindowSize(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::getPrioritizedWindowSize(v2);
}

_WORD *otLinkGetPcapStateTable(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetPcapStats(v2);
}

void otLinkResetPcapStateTable(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  ot::Mac::Mac::ResetPcapStats(v2);
}

uint64_t otLinkSetRegion(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::SetRegion(v3, a2);
}

uint64_t otLinkGetRegion(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
    return ot::Mac::Mac::GetRegion(v3, a2);
  }

  else
  {
    return 7;
  }
}

void ot::Mac::Links::SetExtAddress(ot::Mac::Links *this, const ot::Mac::ExtAddress *a2)
{
  ot::Mac::SubMac::SetExtAddress((this + 8), a2);
}

{
  ot::Mac::Links::SetExtAddress(this, a2);
}

uint64_t ot::Mac::Links::GetShortAddress(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetShortAddress((this + 8));
}

{
  return ot::Mac::Links::GetShortAddress(this);
}

uint64_t ot::Mac::SubMac::GetShortAddress(ot::Mac::SubMac *this)
{
  return *(this + 4);
}

{
  return ot::Mac::SubMac::GetShortAddress(this);
}

uint64_t ot::Mac::Links::GetAlternateShortAddress(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetAlternateShortAddress((this + 8));
}

{
  return ot::Mac::Links::GetAlternateShortAddress(this);
}

uint64_t ot::Mac::SubMac::GetAlternateShortAddress(ot::Mac::SubMac *this)
{
  return *(this + 5);
}

{
  return ot::Mac::SubMac::GetAlternateShortAddress(this);
}

uint64_t ot::Mac::Links::GetSubMac(ot::Mac::Links *this)
{
  return this + 8;
}

{
  return this + 8;
}

{
  return ot::Mac::Links::GetSubMac(this);
}

{
  return ot::Mac::Links::GetSubMac(this);
}

uint64_t ot::Mac::SubMac::IsRadioFilterEnabled(ot::Mac::SubMac *this)
{
  return (*(this + 20) >> 1) & 1;
}

{
  return ot::Mac::SubMac::IsRadioFilterEnabled(this);
}

uint64_t ot::Mac::Links::GetNoiseFloor(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetNoiseFloor((this + 8));
}

{
  return ot::Mac::Links::GetNoiseFloor(this);
}

void *ot::Mac::Links::SetPcapCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::Mac::SubMac::SetPcapCallback(a1 + 8, a2, a3);
}

{
  return ot::Mac::Links::SetPcapCallback(a1, a2, a3);
}

void *ot::Mac::SubMac::SetPcapCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::Set((a1 + 48), a2, a3);
}

{
  return ot::Mac::SubMac::SetPcapCallback(a1, a2, a3);
}

void *ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::Set(result, a2, a3);
}

void *ot::ClearAllBytes<otMacCounters>(void *a1)
{
  return memset(a1, 0, 0xB8uLL);
}

{
  return ot::ClearAllBytes<otMacCounters>(a1);
}

uint64_t ot::SuccessRateTracker::GetFailureRate(ot::SuccessRateTracker *this)
{
  return *this;
}

{
  return ot::SuccessRateTracker::GetFailureRate(this);
}

uint64_t ot::Min<unsigned int>(unsigned int a1, unsigned int a2)
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
  return ot::Min<unsigned int>(a1, a2);
}

uint64_t otLinkMetricsQuery(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v6);
  ot::LinkMetrics::Initiator::SetReportCallback(v7, a5, a6);
  ot::AsCoreType<otInstance>(a1);
  v13 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v8);
  ot::AsCoreType<otIp6Address>(a2);
  v12 = v9;
  ot::AsCoreTypePtr<otLinkMetrics>();
  return ot::LinkMetrics::Initiator::Query(v13, v12, a3, v10);
}

uint64_t ot::Instance::Get<ot::LinkMetrics::Initiator>(uint64_t a1)
{
  return a1 + 154736;
}

{
  return ot::Instance::Get<ot::LinkMetrics::Initiator>(a1);
}

void *ot::LinkMetrics::Initiator::SetReportCallback(void *a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::Set(a1, a2, a3);
}

{
  return ot::LinkMetrics::Initiator::SetReportCallback(a1, a2, a3);
}

void ot::AsCoreTypePtr<otLinkMetrics>()
{
  ;
}

{
  ot::AsCoreTypePtr<otLinkMetrics>();
}

uint64_t otLinkMetricsConfigForwardTrackingSeries(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a4;
  ot::AsCoreType<otInstance>(a1);
  v14 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v7);
  ot::LinkMetrics::Initiator::SetMgmtResponseCallback(v14, a6, a7);
  ot::AsCoreType<otIp6Address>(a2);
  v12 = v8;
  ot::AsCoreType<otLinkMetricsSeriesFlags>(&v19);
  v13 = v9;
  ot::AsCoreTypePtr<otLinkMetrics>();
  return ot::LinkMetrics::Initiator::SendMgmtRequestForwardTrackingSeries(v14, v12, a3, v13, v10);
}

void *ot::LinkMetrics::Initiator::SetMgmtResponseCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::Set((a1 + 16), a2, a3);
}

{
  return ot::LinkMetrics::Initiator::SetMgmtResponseCallback(a1, a2, a3);
}

void ot::AsCoreType<otLinkMetricsSeriesFlags>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otLinkMetricsSeriesFlags>(a1);
}

uint64_t otLinkMetricsConfigEnhAckProbing(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::AsCoreType<otInstance>(a1);
  v14 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v8);
  ot::LinkMetrics::Initiator::SetMgmtResponseCallback(v14, a5, a6);
  ot::LinkMetrics::Initiator::SetEnhAckProbingCallback(v14, a7, a8);
  ot::AsCoreType<otIp6Address>(a2);
  v12 = v9;
  v13 = ot::MapEnum<otLinkMetricsEnhAckFlags>(a3);
  ot::AsCoreTypePtr<otLinkMetrics>();
  return ot::LinkMetrics::Initiator::SendMgmtRequestEnhAckProbing(v14, v12, v13, v10);
}

void *ot::LinkMetrics::Initiator::SetEnhAckProbingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::Set((a1 + 32), a2, a3);
}

{
  return ot::LinkMetrics::Initiator::SetEnhAckProbingCallback(a1, a2, a3);
}

uint64_t ot::MapEnum<otLinkMetricsEnhAckFlags>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otLinkMetricsEnhAckFlags>(result);
}

uint64_t otLinkMetricsSendLinkProbe(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v4);
  ot::AsCoreType<otIp6Address>(a2);
  return ot::LinkMetrics::Initiator::SendLinkProbe(v7, v5, a3, a4);
}

void *ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::Set(result, a2, a3);
}

uint64_t otPlatCryptoAesInit(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x120uLL)
    {
      mbedtls_aes_init(*a1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v2;
}

uint64_t otPlatCryptoAesSetKey(uint64_t a1, const ot::Crypto::Key *a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  ot::Crypto::LiteralKey::LiteralKey(v6, a2);
  if (v10)
  {
    if (*(v10 + 8) >= 0x120uLL)
    {
      v7 = *v10;
      v5 = v7;
      Bytes = ot::Crypto::LiteralKey::GetBytes(v6);
      Length = ot::Crypto::LiteralKey::GetLength(v6);
      if (mbedtls_aes_setkey_enc(v5, Bytes, 8 * Length))
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v8;
}

uint64_t ot::Crypto::LiteralKey::GetBytes(ot::Crypto::LiteralKey *this)
{
  return *this;
}

{
  return ot::Crypto::LiteralKey::GetBytes(this);
}

uint64_t ot::Crypto::LiteralKey::GetLength(ot::Crypto::LiteralKey *this)
{
  return *(this + 4);
}

{
  return ot::Crypto::LiteralKey::GetLength(this);
}

uint64_t otPlatCryptoAesEncrypt(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a1)
  {
    return *(a1 + 8) < 0x120uLL || mbedtls_aes_crypt_ecb(*a1, 1u, a2, a3) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoAesFree(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x120uLL)
    {
      mbedtls_aes_free(*a1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v2;
}

uint64_t otPlatCryptoHmacSha256Init(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) >= 0x18uLL)
    {
      v2 = *a1;
      mbedtls_md_init(*a1);
      v3 = mbedtls_md_info_from_type(9);
      return mbedtls_md_setup(v2, v3, 1) != 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoHmacSha256Deinit(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x18uLL)
    {
      mbedtls_md_free(*a1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v2;
}

uint64_t otPlatCryptoHmacSha256Start(uint64_t a1, const ot::Crypto::Key *a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  ot::Crypto::LiteralKey::LiteralKey(v6, a2);
  if (v9)
  {
    if (*(v9 + 8) >= 0x18uLL)
    {
      v5 = *v9;
      Bytes = ot::Crypto::LiteralKey::GetBytes(v6);
      Length = ot::Crypto::LiteralKey::GetLength(v6);
      if (mbedtls_md_hmac_starts(v5, Bytes, Length))
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t otPlatCryptoHmacSha256Update(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (a1)
  {
    return *(a1 + 8) < 0x18uLL || mbedtls_md_hmac_update(*a1, a2, a3) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoHmacSha256Finish(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *(a1 + 8) < 0x18uLL || mbedtls_md_hmac_finish(*a1, a2) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoHkdfInit(uint64_t a1)
{
  v3 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x20uLL)
    {
      v1 = *a1;
      *v1 = 0u;
      v1[1] = 0u;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t otPlatCryptoHkdfExpand(uint64_t a1, uint64_t a2, unsigned __int16 a3, char *a4, unsigned __int16 a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = 0;
  ot::Crypto::HmacSha256::HmacSha256(__n_4);
  __n_3 = 0;
  __n = 0;
  v11 = 0;
  if (v20)
  {
    if (*(v20 + 8) >= 0x20uLL)
    {
      v11 = *v20;
      while (v16)
      {
        ot::Crypto::Sha256::Hash::GetBytes(v11);
        ot::Crypto::Key::Set(v10, v5, 32);
        ot::Crypto::HmacSha256::Start(__n_4, v10);
        if (__n_3)
        {
          ot::Crypto::HmacSha256::Update<ot::Crypto::Sha256::Hash>(__n_4, v21);
        }

        ot::Crypto::HmacSha256::Update(__n_4, v19, v18);
        ++__n_3;
        ot::Crypto::HmacSha256::Update<unsigned char>(__n_4, &__n_3);
        ot::Crypto::HmacSha256::Finish(__n_4, v21);
        __n = ot::Min<unsigned short>(v16, 0x20u);
        __dst = v17;
        ot::Crypto::Sha256::Hash::GetBytes(v21);
        memcpy(__dst, v6, __n);
        v17 += __n;
        v16 -= __n;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 7;
  }

  v8 = v15;
  ot::Crypto::HmacSha256::~HmacSha256(__n_4);
  return v8;
}

uint64_t ot::Crypto::Key::Set(uint64_t this, const unsigned __int8 *a2, __int16 a3)
{
  *this = a2;
  *(this + 8) = a3;
  return this;
}

{
  return ot::Crypto::Key::Set(this, a2, a3);
}

void ot::Crypto::Sha256::Hash::GetBytes(ot::Crypto::Sha256::Hash *this)
{
  ;
}

{
  ot::Crypto::Sha256::Hash::GetBytes(this);
}

uint64_t ot::Crypto::HmacSha256::Update<ot::Crypto::Sha256::Hash>(ot::Crypto::HmacSha256 *a1, uint64_t a2)
{
  return ot::Crypto::HmacSha256::Update(a1, a2, 0x20u);
}

{
  return ot::Crypto::HmacSha256::Update<ot::Crypto::Sha256::Hash>(a1, a2);
}

uint64_t ot::Crypto::HmacSha256::Update<unsigned char>(ot::Crypto::HmacSha256 *a1, uint64_t a2)
{
  return ot::Crypto::HmacSha256::Update(a1, a2, 1u);
}

{
  return ot::Crypto::HmacSha256::Update<unsigned char>(a1, a2);
}

uint64_t otPlatCryptoHkdfExtract(uint64_t a1, const unsigned __int8 *a2, __int16 a3, const ot::Crypto::Key *a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  ot::Crypto::HmacSha256::HmacSha256(v11);
  v9 = 0;
  ot::Crypto::LiteralKey::LiteralKey(v8, v13);
  if (v16)
  {
    if (*(v16 + 8) >= 0x20uLL)
    {
      v9 = *v16;
      ot::Crypto::Key::Set(v10, v15, v14);
      ot::Crypto::HmacSha256::Start(v11, v10);
      Bytes = ot::Crypto::LiteralKey::GetBytes(v8);
      Length = ot::Crypto::LiteralKey::GetLength(v8);
      ot::Crypto::HmacSha256::Update(v11, Bytes, Length);
      ot::Crypto::HmacSha256::Finish(v11, v9);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 7;
  }

  v6 = v12;
  ot::Crypto::HmacSha256::~HmacSha256(v11);
  return v6;
}

uint64_t otPlatCryptoHkdfDeinit(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x20uLL)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v2;
}

uint64_t otPlatCryptoSha256Init(uint64_t *a1)
{
  v2 = 0;
  if (a1)
  {
    mbedtls_sha256_init(*a1);
  }

  else
  {
    return 7;
  }

  return v2;
}

uint64_t otPlatCryptoSha256Deinit(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x68uLL)
    {
      mbedtls_sha256_free(*a1);
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v2;
}

uint64_t otPlatCryptoSha256Start(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8) < 0x68uLL || mbedtls_sha256_starts(*a1, 0) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoSha256Update(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (a1)
  {
    return *(a1 + 8) < 0x68uLL || mbedtls_sha256_update(*a1, a2, a3) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoSha256Finish(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *(a1 + 8) < 0x68uLL || mbedtls_sha256_finish(*a1, a2) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoRandomInit()
{
  mbedtls_entropy_init(&sEntropyContext);
  mbedtls_entropy_add_source(&sEntropyContext, handleMbedtlsEntropyPoll, 0, 16, 1);
  mbedtls_ctr_drbg_init(sCtrDrbgContext);
  result = mbedtls_ctr_drbg_seed(sCtrDrbgContext, mbedtls_entropy_func, &sEntropyContext, 0, 0);
  if (result)
  {
    __assert_rtn("otPlatCryptoRandomInit", "crypto_platform.cpp", 482, "rval == 0");
  }

  return result;
}

uint64_t handleMbedtlsEntropyPoll(void *a1, unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v5 = -60;
  if (!otPlatEntropyGet(a2, a3))
  {
    v5 = 0;
    if (a4)
    {
      *a4 = a3;
    }
  }

  return v5;
}

uint64_t otPlatCryptoPbkdf2GenerateKey(__int128 *a1, unsigned __int16 a2, const void *a3, unsigned __int16 a4, unsigned int a5, unsigned __int16 a6, char *a7)
{
  v16 = 0;
  v12 = 0;
  if (a4 > 0x22uLL)
  {
    __assert_rtn("otPlatCryptoPbkdf2GenerateKey", "crypto_platform.cpp", 695, "aSaltLen <= sizeof(prfInput)");
  }

  memcpy(__dst, a3, a4);
  if (a5 % 2)
  {
    __assert_rtn("otPlatCryptoPbkdf2GenerateKey", "crypto_platform.cpp", 697, "aIterationCounter % 2 == 0");
  }

  v18 = a5 / 2;
  while (a6)
  {
    ++v16;
    __dst[a4] = HIBYTE(v16);
    __dst[a4 + 1] = BYTE2(v16);
    __dst[a4 + 2] = BYTE1(v16);
    __dst[a4 + 3] = v16;
    v11 = mbedtls_aes_cmac_prf_128(a1, a2, __dst, a4 + 4, __src);
    if (v11)
    {
      return ot::Crypto::MbedTls::MapError(v11);
    }

    v11 = mbedtls_aes_cmac_prf_128(a1, a2, __src, 0x10uLL, v24);
    if (v11)
    {
      return ot::Crypto::MbedTls::MapError(v11);
    }

    for (i = 0; i < 2uLL; ++i)
    {
      __src[i] ^= v24[i];
    }

    for (j = 1; j < v18; ++j)
    {
      v11 = mbedtls_aes_cmac_prf_128(a1, a2, v24, 0x10uLL, v23);
      if (v11)
      {
        return ot::Crypto::MbedTls::MapError(v11);
      }

      v11 = mbedtls_aes_cmac_prf_128(a1, a2, v23, 0x10uLL, v24);
      if (v11)
      {
        return ot::Crypto::MbedTls::MapError(v11);
      }

      for (k = 0; k < 2uLL; ++k)
      {
        __src[k] ^= v24[k] ^ v23[k];
      }
    }

    v13 = ot::Min<unsigned short>(a6, 0x10u);
    memcpy(a7, __src, v13);
    a7 += v13;
    a6 -= v13;
  }

  return v12;
}

uint64_t ot::Instance::GetLogLevel(ot::Instance *this)
{
  return ot::Instance::sLogLevel;
}

{
  return ot::Instance::GetLogLevel(this);
}

uint64_t otLoggingSetLevel(int a1, uint64_t a2)
{
  v3 = 0;
  if (a1 > 5 || a1 < 0)
  {
    return 7;
  }

  else
  {
    ot::Instance::SetLogLevel(a1, a2);
  }

  return v3;
}

void otLogPlatArgs(int a1, const char *a2, const char *a3, va_list a4)
{
  ot::String<(unsigned short)14>::String(v10);
  v5 = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v5 = a1 <= 5;
  }

  if (!v5)
  {
    __assert_rtn("otLogPlatArgs", "logging_api.cpp", 203, "aLogLevel >= kLogLevelNone && aLogLevel <= kLogLevelDebg");
  }

  ot::StringWriter::Append(v10, "P-%s", a2);
  v4 = ot::String<(unsigned short)14>::AsCString(v10);
  ot::Logger::LogVarArgs(v4, a1, a3, a4);
}

char *ot::String<(unsigned short)14>::String(char *a1)
{
  ot::String<(unsigned short)14>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, a1 + 12, 14);
  return a1;
}

uint64_t ot::String<(unsigned short)14>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)14>::AsCString(a1);
}

void otLogCli(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  if ((result & 0x80000000) == 0)
  {
    v9 = result <= 5;
  }

  if (!v9)
  {
    __assert_rtn("otLogCli", "logging_api.cpp", 222, "aLogLevel >= kLogLevelNone && aLogLevel <= kLogLevelDebg");
  }

  if ((result & 0x80000000) == 0 && result <= 5)
  {
    ot::Logger::LogVarArgs("Cli", result, a2, &a9);
  }
}

uint64_t otLogGenerateNextHexDumpLine(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("otLogGenerateNextHexDumpLine", "logging_api.cpp", 305, "(aInfo) != nullptr");
  }

  return ot::GenerateNextHexDumpLine(a1);
}

uint64_t ot::Message::GetLength(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 48);
}

{
  return ot::Message::GetLength(this);
}

uint64_t ot::Message::GetOffset(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 50);
}

{
  return ot::Message::GetOffset(this);
}

uint64_t ot::Message::IsLinkSecurityEnabled(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 8) & 1;
}

{
  return ot::Message::IsLinkSecurityEnabled(this);
}

uint64_t ot::Message::IsLoopbackToHostAllowed(ot::Message *this)
{
  return HIWORD(*(ot::Buffer::GetMetadata(this) + 70)) & 1;
}

{
  return ot::Message::IsLoopbackToHostAllowed(this);
}

uint64_t ot::Message::SetLoopbackToHostAllowed(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFEFFFF | ((a2 & 1) << 16);
  return result;
}

{
  return ot::Message::SetLoopbackToHostAllowed(this, a2);
}

uint64_t ot::Message::GetMulticastLoop(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 14) & 1;
}

{
  return ot::Message::GetMulticastLoop(this);
}

uint64_t ot::Message::SetMulticastLoop(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFBFFF | ((a2 & 1) << 14);
  return result;
}

{
  return ot::Message::SetMulticastLoop(this, a2);
}

uint64_t otMessageGetOrigin(uint64_t a1)
{
  ot::AsCoreType<otMessage>(a1);
  Origin = ot::Message::GetOrigin(v1);
  return ot::MapEnum<ot::Message::Origin>(Origin);
}

uint64_t ot::MapEnum<ot::Message::Origin>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::Message::Origin>(result);
}

uint64_t otMessageSetOrigin(uint64_t a1, unsigned int a2)
{
  ot::AsCoreType<otMessage>(a1);
  v5 = v2;
  v3 = ot::MapEnum<otMessageOrigin>(a2);
  return ot::Message::SetOrigin(v5, v3);
}

uint64_t ot::Message::SetOrigin(ot::Buffer *a1, char a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 70) = *(result + 70) & 0xFFF3FFFF | ((a2 & 3) << 18);
  return result;
}

{
  return ot::Message::SetOrigin(a1, a2);
}

uint64_t ot::MapEnum<otMessageOrigin>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otMessageOrigin>(result);
}

uint64_t otMessageSetDirectTransmission(uint64_t a1, char a2)
{
  if (a2)
  {
    ot::AsCoreType<otMessage>(a1);
    return ot::Message::SetDirectTransmission(v2);
  }

  else
  {
    ot::AsCoreType<otMessage>(a1);
    return ot::Message::ClearDirectTransmission(v4);
  }
}

uint64_t ot::Message::SetDirectTransmission(ot::Message *this)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFFF7F | 0x80;
  return result;
}

{
  return ot::Message::SetDirectTransmission(this);
}

uint64_t ot::Message::ClearDirectTransmission(ot::Message *this)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) &= ~0x80u;
  return result;
}

{
  return ot::Message::ClearDirectTransmission(this);
}

uint64_t ot::Message::GetAverageRss(ot::Message *this)
{
  Metadata = ot::Buffer::GetMetadata(this);
  return ot::RssAverager::GetAverage((Metadata + 58));
}

{
  return ot::Message::GetAverageRss(this);
}

uint64_t otMessageSetTimestamp(uint64_t a1)
{
  ot::AsCoreType<otMessage>(a1);
  v3 = v1;
  Now = ot::TimerMilli::GetNow(v1);
  return ot::Message::SetTimestamp(v3, Now);
}

uint64_t ot::Message::SetTimestamp(ot::Buffer *a1, int a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 36) = a2;
  return result;
}

{
  return ot::Message::SetTimestamp(a1, a2);
}

uint64_t otMessageGetThreadLinkInfo(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otMessage>(a1);
  v5 = v2;
  ot::AsCoreType<otThreadLinkInfo>(a2);
  return ot::Message::GetLinkInfo(v5, v3);
}

void ot::AsCoreType<otThreadLinkInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otThreadLinkInfo>(a1);
}

uint64_t otMessageAppend(uint64_t a1, char *a2, unsigned __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otMessageAppend", "message_api.cpp", 107, "(aBuf) != nullptr");
  }

  ot::AsCoreType<otMessage>(a1);
  return ot::Message::AppendBytes(v3, a2, a3);
}

uint64_t otMessageRead(uint64_t a1, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  if (!a3)
  {
    __assert_rtn("otMessageRead", "message_api.cpp", 114, "(aBuf) != nullptr");
  }

  ot::AsCoreType<otMessage>(a1);
  return ot::Message::ReadBytes(v4, a2, a3, a4);
}

uint64_t otMessageWrite(uint64_t a1, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  if (!a3)
  {
    __assert_rtn("otMessageWrite", "message_api.cpp", 121, "(aBuf) != nullptr");
  }

  ot::AsCoreType<otMessage>(a1);
  ot::Message::WriteBytes(v4, a2, a3, a4);
  return a4;
}

void *otMessageQueueInit(void *result)
{
  if (!result)
  {
    __assert_rtn("otMessageQueueInit", "message_api.cpp", 130, "(aQueue) != nullptr");
  }

  *result = 0;
  return result;
}

ot::Message **otMessageQueueEnqueue(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otMessageQueue>(a1);
  v5 = v2;
  ot::AsCoreType<otMessage>(a2);
  return ot::MessageQueue::Enqueue(v5, v3);
}

void ot::AsCoreType<otMessageQueue>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otMessageQueue>(a1);
}

ot::Message **ot::MessageQueue::Enqueue(ot::MessageQueue *this, ot::Message *a2)
{
  return ot::MessageQueue::Enqueue(this, a2, 1);
}

{
  return ot::MessageQueue::Enqueue(this, a2);
}

ot::Message **otMessageQueueEnqueueAtHead(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otMessageQueue>(a1);
  v5 = v2;
  ot::AsCoreType<otMessage>(a2);
  return ot::MessageQueue::Enqueue(v5, v3, 0);
}

uint64_t otMessageQueueDequeue(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otMessageQueue>(a1);
  v5 = v2;
  ot::AsCoreType<otMessage>(a2);
  return ot::MessageQueue::Dequeue(v5, v3);
}

uint64_t ot::MessageQueue::GetHead(ot::MessageQueue *this)
{
  Tail = ot::MessageQueue::GetTail(this);
  return ot::Message::NextOf(Tail, v2);
}

{
  Tail = ot::MessageQueue::GetTail(this);
  return ot::Message::NextOf(Tail, v2);
}

{
  return ot::MessageQueue::GetHead(this);
}

{
  return ot::MessageQueue::GetHead(this);
}

uint64_t otMessageQueueGetNext(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  ot::AsCoreType<otMessage>(a2);
  if (ot::Message::GetMessageQueue(v2) != a1)
  {
    return 0;
  }

  ot::AsCoreType<otMessage>(a2);
  return ot::Message::GetNext(v3);
}

uint64_t ot::Message::GetMessageQueue(ot::Message *this)
{
  if ((*(ot::Buffer::GetMetadata(this) + 70) & 0x800) != 0)
  {
    return 0;
  }

  else
  {
    return *(ot::Buffer::GetMetadata(this) + 24);
  }
}

{
  return ot::Message::GetMessageQueue(this);
}

uint64_t otMessageGetIsBufferStatsEnabled(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::GetIsBufferStatsEnabled(v2);
}

uint64_t ot::MessagePool::GetIsBufferStatsEnabled(ot::MessagePool *this)
{
  return *(this + 85012) & 1;
}

{
  return ot::MessagePool::GetIsBufferStatsEnabled(this);
}

uint64_t otMessageSetIsBufferStatsEnabled(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MessagePool>(v2);
  return ot::MessagePool::SetIsBufferStatsEnabled(v3, a2 & 1);
}

uint64_t ot::MessagePool::SetIsBufferStatsEnabled(uint64_t this, char a2)
{
  *(this + 85012) = a2 & 1;
  return this;
}

{
  return ot::MessagePool::SetIsBufferStatsEnabled(this, a2);
}

unint64_t otMessageGetBufferAt(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MessagePool>(v2);
  return ot::MessagePool::GetBufferAt(v3, a2);
}

unint64_t ot::MessagePool::GetBufferAt(ot::MessagePool *this, unsigned __int16 a2)
{
  return ot::Pool<ot::Buffer,(unsigned short)256>::GetEntryAt(this + 8, a2);
}

{
  return ot::MessagePool::GetBufferAt(this, a2);
}

uint64_t otMessageResetBufferStats(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::ResetBufferStats(v2);
}

uint64_t otMessageGetBufferStats(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::GetBufferStats(v2);
}

uint64_t ot::MessagePool::GetBufferStats(ot::MessagePool *this)
{
  return this + 65556;
}

{
  return ot::MessagePool::GetBufferStats(this);
}

uint64_t otMessageGetTotalBufferCount(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::GetTotalBufferCount(v2);
}

uint64_t otMessageGetFreeBufferCount(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::GetFreeBufferCount(v2);
}

BOOL otMessageGetBufferInfo(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = v2;
  ot::AsCoreType<otBufferInfo>(a2);
  return ot::Instance::GetBufferInfo(v5, v3);
}

void ot::AsCoreType<otBufferInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otBufferInfo>(a1);
}

BOOL otMessageIsIcmpError(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshForwarder>(v2);
  ot::AsCoreType<otMessage>(a2);
  memcpy(__dst, v3, sizeof(__dst));
  return ot::MeshForwarder::IsTxIcmpError(v5, __dst);
}

uint64_t ot::Message::NextOf(ot::Message *this, ot::Message *a2)
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

uint64_t ot::MessageQueue::GetTail(ot::MessageQueue *this)
{
  return *this;
}

{
  return *this;
}

{
  return ot::MessageQueue::GetTail(this);
}

{
  return ot::MessageQueue::GetTail(this);
}

uint64_t ot::Message::Next(ot::Message *this)
{
  return ot::Buffer::GetMetadata(this);
}

{
  return ot::Buffer::GetMetadata(this);
}

{
  return ot::Message::Next(this);
}

{
  return ot::Message::Next(this);
}

unint64_t ot::Pool<ot::Buffer,(unsigned short)256>::GetEntryAt(uint64_t a1, unsigned __int16 a2)
{
  return a1 + 8 + (a2 << 8);
}

{
  return ot::Pool<ot::Buffer,(unsigned short)256>::GetEntryAt(a1, a2);
}

uint64_t otNetDataGet(uint64_t a1, char a2, unsigned __int8 *a3, char *a4)
{
  if (!a3)
  {
    __assert_rtn("otNetDataGet", "netdata_api.cpp", 47, "(aData) != nullptr");
  }

  if (!a4)
  {
    __assert_rtn("otNetDataGet", "netdata_api.cpp", 48, "(aDataLength) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Leader>(v4);
  return ot::NetworkData::NetworkData::CopyNetworkData(v5, (a2 & 1) != 0, a3, a4);
}

uint64_t otNetDataGetLength(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::NetworkData::GetLength(v2);
}

uint64_t ot::NetworkData::NetworkData::GetLength(ot::NetworkData::NetworkData *this)
{
  return *(this + 8);
}

{
  return ot::NetworkData::NetworkData::GetLength(this);
}

uint64_t otNetDataGetMaxLength(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::Leader::GetMaxLength(v2);
}

uint64_t ot::NetworkData::Leader::GetMaxLength(ot::NetworkData::Leader *this)
{
  return *(this + 266);
}

{
  return ot::NetworkData::Leader::GetMaxLength(this);
}

uint64_t otNetDataResetMaxLength(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::Leader::ResetMaxLength(v2);
}

uint64_t ot::NetworkData::Leader::ResetMaxLength(ot::NetworkData::Leader *this)
{
  result = ot::NetworkData::NetworkData::GetLength(this);
  *(this + 266) = result;
  return result;
}

{
  return ot::NetworkData::Leader::ResetMaxLength(this);
}

ot::NetworkData::Leader::ContextIds *otNetDataReset(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::Leader::Reset(v2);
}

uint64_t otNetDataGetNextOnMeshPrefix(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otNetDataGetNextOnMeshPrefix", "netdata_api.cpp", 89, "(aIterator) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  ot::AsCoreType<otBorderRouterConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v6, a2, v4);
}

uint64_t otSetNetData(uint64_t a1, char *a2, size_t a3, char a4, char a5)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v5);
  return ot::NetworkData::Leader::setStringAsNetworkData(v6, a2, a3, a4, a5);
}

uint64_t otNetDataGetNextRoute(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otNetDataGetNextRoute", "netdata_api.cpp", 115, "(aIterator) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  ot::AsCoreType<otExternalRouteConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextExternalRoute(v6, a2, v4);
}

uint64_t otNetDataGetNextService(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otNetDataGetNextService", "netdata_api.cpp", 122, "(aIterator) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  ot::AsCoreType<otServiceConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextService(v6, a2, v4);
}

void ot::AsCoreType<otServiceConfig>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otServiceConfig>(a1);
}

uint64_t otNetDataGetNextLowpanContextInfo(uint64_t a1, ot::NetworkData::OnMeshPrefixConfig *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otNetDataGetNextLowpanContextInfo", "netdata_api.cpp", 131, "(aIterator) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  ot::AsCoreType<otLowpanContextInfo>(a3);
  return ot::NetworkData::NetworkData::GetNextLowpanContextInfo(v6, a2, v4);
}

void ot::AsCoreType<otLowpanContextInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otLowpanContextInfo>(a1);
}

void otNetDataGetCommissioningDataset(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NetworkData::Leader>(v2);
  ot::AsCoreType<otCommissioningDataset>(a2);
  ot::NetworkData::Leader::GetCommissioningDataset(v4, v3);
}

uint64_t otNetDataGetVersion(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  LeaderData = ot::Mle::Mle::GetLeaderData(v2);
  return ot::Mle::LeaderData::GetDataVersion(LeaderData, 0);
}

uint64_t ot::Mle::LeaderData::GetDataVersion(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(a1 + 6);
  }

  else
  {
    return *(a1 + 5);
  }
}

{
  return ot::Mle::LeaderData::GetDataVersion(a1, a2);
}

uint64_t otNetDataGetStableVersion(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  LeaderData = ot::Mle::Mle::GetLeaderData(v2);
  return ot::Mle::LeaderData::GetDataVersion(LeaderData, 1);
}

uint64_t otNetDataSteeringDataCheckJoiner(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v2);
  ot::AsCoreType<otExtAddress>(a2);
  return ot::NetworkData::Leader::SteeringDataCheckJoiner(v6, v3, v4);
}

uint64_t otNetDataSteeringDataCheckJoinerWithDiscerner(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Leader>(v2);
  ot::AsCoreType<otJoinerDiscerner>(a2);
  return ot::NetworkData::Leader::SteeringDataCheckJoiner(v5, v3);
}

uint64_t otThreadGetNextDiagnosticTlv(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetNextDiagnosticTlv", "netdiag_api.cpp", 49, "(aIterator) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otThreadGetNextDiagnosticTlv", "netdiag_api.cpp", 50, "(aNetworkDiagTlv) != nullptr");
  }

  ot::AsCoapMessage();
  return ot::NetworkDiagnostic::Client::GetNextDiagTlv(v3, a2, a3);
}

uint64_t otThreadSendDiagnosticGet(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::NetworkDiagnostic::Client>(v6);
  ot::AsCoreType<otIp6Address>(a2);
  return ot::NetworkDiagnostic::Client::SendDiagnosticGet(v9, v7, a3, a4, a5, a6);
}

uint64_t otThreadSendDiagnosticReset(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::NetworkDiagnostic::Client>(v4);
  ot::AsCoreType<otIp6Address>(a2);
  return ot::NetworkDiagnostic::Client::SendDiagnosticReset(v7, v5, a3, a4);
}

const char *otThreadGetVendorName(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkDiagnostic::Server>(v1);
  return ot::NetworkDiagnostic::Server::GetVendorName(v2);
}

uint64_t ot::Instance::Get<ot::NetworkDiagnostic::Server>(uint64_t a1)
{
  return a1 + 144272;
}

{
  return ot::Instance::Get<ot::NetworkDiagnostic::Server>(a1);
}

const char *ot::NetworkDiagnostic::Server::GetVendorName(ot::NetworkDiagnostic::Server *this)
{
  return "Apple";
}

{
  return ot::NetworkDiagnostic::Server::GetVendorName(this);
}

const char *otThreadGetVendorModel(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkDiagnostic::Server>(v1);
  return ot::NetworkDiagnostic::Server::GetVendorModel(v2);
}

const char *ot::NetworkDiagnostic::Server::GetVendorModel(ot::NetworkDiagnostic::Server *this)
{
  return "Default";
}

{
  return ot::NetworkDiagnostic::Server::GetVendorModel(this);
}

const char *otThreadGetVendorSwVersion(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkDiagnostic::Server>(v1);
  return ot::NetworkDiagnostic::Server::GetVendorSwVersion(v2);
}

const char *ot::NetworkDiagnostic::Server::GetVendorSwVersion(ot::NetworkDiagnostic::Server *this)
{
  return "Default";
}

{
  return ot::NetworkDiagnostic::Server::GetVendorSwVersion(this);
}

void *otThreadGetVendorAppUrl(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkDiagnostic::Server>(v1);
  return ot::NetworkDiagnostic::Server::GetVendorAppUrl(v2);
}

void *ot::NetworkDiagnostic::Server::GetVendorAppUrl(ot::NetworkDiagnostic::Server *this)
{
  return &ot::NetworkDiagnostic::Server::kVendorAppUrl;
}

{
  return ot::NetworkDiagnostic::Server::GetVendorAppUrl(this);
}

ot::Utils::HistoryTracker *ot::Utils::HistoryTracker::HistoryTracker(ot::Utils::HistoryTracker *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 2);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 260);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 582);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 864);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 1666);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 2468);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 2982);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 3880);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 4394);
  ot::TimerMilliIn<ot::Utils::HistoryTracker,&ot::Utils::HistoryTracker::HandleTimer>::TimerMilliIn((this + 9816), a2);
  ot::NetworkData::MutableNetworkData::MutableNetworkData((this + 9968), a2, this + 9984, 0, 254);
  ot::TimerMilli::Start((this + 9816), 0x36EE800u);
  ot::ClearAllBytes<ot::Utils::HistoryTracker::RouterEntry [63]>(this + 9840);
  return this;
}

{
  ot::Utils::HistoryTracker::HistoryTracker(this, a2);
  return this;
}

uint64_t ot::Utils::HistoryTracker::HandleTimer(ot::Utils::HistoryTracker *this)
{
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::UpdateAgedEntries(this + 4);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::UpdateAgedEntries(this + 520);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::UpdateAgedEntries(this + 1164);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::UpdateAgedEntries(this + 1728);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::UpdateAgedEntries(this + 3332);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::UpdateAgedEntries(this + 4936);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::UpdateAgedEntries(this + 7760);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::UpdateAgedEntries(this + 8788);
  return ot::TimerMilli::Start((this + 9816), 0x36EE800u);
}

_WORD *ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(_WORD *a1)
{
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(a1);
  return a1;
}

{
  ot::Utils::HistoryTracker::List::List(a1);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Utils::HistoryTracker,&ot::Utils::HistoryTracker::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Utils::HistoryTracker,&ot::Utils::HistoryTracker::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Utils::HistoryTracker,&ot::Utils::HistoryTracker::HandleTimer>::HandleTimer);
  return a1;
}

ot::NetworkData::MutableNetworkData *ot::NetworkData::MutableNetworkData::MutableNetworkData(ot::NetworkData::MutableNetworkData *this, ot::Instance *a2, unsigned __int8 *a3, char a4, char a5)
{
  ot::NetworkData::MutableNetworkData::MutableNetworkData(this, a2, a3, a4, a5);
  return this;
}

{
  ot::NetworkData::NetworkData::NetworkData(this, a2, a3, a4);
  result = this;
  *(this + 9) = a5;
  return result;
}

void *ot::ClearAllBytes<ot::Utils::HistoryTracker::RouterEntry [63]>(void *a1)
{
  return memset(a1, 0, 0x7EuLL);
}

{
  return ot::ClearAllBytes<ot::Utils::HistoryTracker::RouterEntry [63]>(a1);
}

uint64_t ot::Utils::HistoryTracker::RecordNetworkInfo(ot::Utils::HistoryTracker *this)
{
  v11 = this;
  result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::AddNewEntry(this + 4);
  v10 = result;
  if (result)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Role = ot::Mle::Mle::GetRole(v2);
    *v10 = ot::MapEnum<ot::Mle::DeviceRole>(Role);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    *(v10 + 6) = ot::Mle::Mle::GetRloc16(v4);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    LeaderData = ot::Mle::Mle::GetLeaderData(v5);
    *(v10 + 8) = ot::Mle::LeaderData::GetPartitionId(LeaderData);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    DeviceMode = ot::Mle::Mle::GetDeviceMode(v7);
    return ot::Mle::DeviceMode::Get(&DeviceMode, (v10 + 4));
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::AddNewEntry(uint64_t a1)
{
  return a1 + 132 + 12 * ot::Utils::HistoryTracker::List::Add(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::AddNewEntry(a1);
}

uint64_t ot::MapEnum<ot::Mle::DeviceRole>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::Mle::DeviceRole>(result);
}

uint64_t ot::Mle::Mle::GetRole(ot::Mle::Mle *this)
{
  return *(this + 130);
}

{
  return ot::Mle::Mle::GetRole(this);
}

uint64_t ot::Mle::Mle::GetRloc16(ot::Mle::Mle *this)
{
  return *(this + 72);
}

{
  return ot::Mle::Mle::GetRloc16(this);
}

uint64_t ot::Mle::LeaderData::GetPartitionId(ot::Mle::LeaderData *this)
{
  return *this;
}

{
  return ot::Mle::LeaderData::GetPartitionId(this);
}

uint64_t ot::Mle::Mle::GetDeviceMode(ot::Mle::Mle *this)
{
  return *(this + 131);
}

{
  return ot::Mle::Mle::GetDeviceMode(this);
}

uint64_t ot::Utils::HistoryTracker::RecordMessage(ot::InstanceLocator *a1, ot::Message *a2, ot::Mac::Address *a3, char a4)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = 0;
  result = ot::Message::GetType(a2);
  if (!result)
  {
    result = ot::Ip6::Headers::ParseFrom(v25, v29);
    if (!result)
    {
      result = ot::Ip6::Headers::IsUdp(v25);
      if ((result & 1) == 0)
      {
        goto LABEL_12;
      }

      v24 = 0;
      if (v27)
      {
        if (v27 == 1)
        {
          result = ot::Ip6::Headers::GetSourcePort(v25);
          v24 = result;
        }
      }

      else
      {
        result = ot::Ip6::Headers::GetDestinationPort(v25);
        v24 = result;
      }

      if (v24 != 19788 && v24 != 61631)
      {
LABEL_12:
        if (v27)
        {
          if (v27 == 1)
          {
            result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::AddNewEntry(a1 + 3332);
            v26 = result;
          }
        }

        else
        {
          result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::AddNewEntry(a1 + 1728);
          v26 = result;
        }

        if (v26)
        {
          ot::Ip6::Headers::GetIp6Header(v25);
          PayloadLength = ot::Ip6::Header::GetPayloadLength(v5, v6);
          *v26 = PayloadLength;
          if (ot::Mac::Address::IsShort(v28))
          {
            Short = ot::Mac::Address::GetShort(v28);
          }

          else
          {
            Short = -2;
          }

          *(v26 + 2) = Short;
          SourceAddress = ot::Ip6::Headers::GetSourceAddress(v25);
          *(v26 + 4) = *SourceAddress;
          SourcePort = ot::Ip6::Headers::GetSourcePort(v25);
          *(v26 + 20) = SourcePort;
          DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v25);
          *(v26 + 22) = *DestinationAddress;
          DestinationPort = ot::Ip6::Headers::GetDestinationPort(v25);
          *(v26 + 38) = DestinationPort;
          Checksum = ot::Ip6::Headers::GetChecksum(v25);
          *(v26 + 40) = Checksum;
          IpProto = ot::Ip6::Headers::GetIpProto(v25);
          *(v26 + 42) = IpProto;
          if (ot::Ip6::Headers::IsIcmp6(v25))
          {
            IcmpHeader = ot::Ip6::Headers::GetIcmpHeader(v25);
            Type = ot::Ip6::Icmp::Header::GetType(IcmpHeader);
          }

          else
          {
            Type = 0;
          }

          *(v26 + 43) = Type;
          if (v27)
          {
            Average = 127;
          }

          else
          {
            RssAverager = ot::Message::GetRssAverager(v29);
            Average = ot::RssAverager::GetAverage(RssAverager);
          }

          *(v26 + 44) = Average;
          IsLinkSecurityEnabled = ot::Message::IsLinkSecurityEnabled(v29);
          *(v26 + 45) = *(v26 + 45) & 0xFE | IsLinkSecurityEnabled;
          if (v27 == 1)
          {
            TxSuccess = ot::Message::GetTxSuccess(v29);
          }

          else
          {
            TxSuccess = 1;
          }

          *(v26 + 45) = *(v26 + 45) & 0xFD | (2 * (TxSuccess & 1));
          Priority = ot::Message::GetPriority(v29);
          *(v26 + 45) = *(v26 + 45) & 0xF3 | (4 * (Priority & 3));
          result = ot::Mac::Address::IsExtended(v28);
          if (result)
          {
            v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
            result = ot::NeighborTable::FindNeighbor(v18, v28, 5);
            if (result)
            {
              result = ot::Neighbor::GetRloc16(result);
              *(v26 + 2) = result;
            }
          }

          *(v26 + 45) = *(v26 + 45) & 0xEF | 0x10;
        }
      }
    }
  }

  return result;
}

BOOL ot::Ip6::Headers::IsUdp(ot::Ip6::Headers *this)
{
  return ot::Ip6::Headers::GetIpProto(this) == 17;
}

{
  return ot::Ip6::Headers::IsUdp(this);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::AddNewEntry(uint64_t a1)
{
  return a1 + 132 + 46 * ot::Utils::HistoryTracker::List::Add(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::AddNewEntry(a1);
}

void ot::Ip6::Headers::GetIp6Header(ot::Ip6::Headers *this)
{
  ;
}

{
  ot::Ip6::Headers::GetIp6Header(this);
}

uint64_t ot::Ip6::Header::GetPayloadLength(ot::Ip6::Header *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 2), a2);
}

{
  return ot::Ip6::Header::GetPayloadLength(this, a2);
}

BOOL ot::Mac::Address::IsShort(ot::Mac::Address *this)
{
  return *(this + 8) == 1;
}

{
  return ot::Mac::Address::IsShort(this);
}

uint64_t ot::Mac::Address::GetShort(ot::Mac::Address *this)
{
  return *this;
}

{
  return ot::Mac::Address::GetShort(this);
}

uint64_t ot::Ip6::Headers::GetSourceAddress(ot::Ip6::Headers *this)
{
  return ot::Ip6::Header::GetSource(this);
}

{
  return ot::Ip6::Headers::GetSourceAddress(this);
}

uint64_t ot::Ip6::Headers::GetDestinationAddress(ot::Ip6::Headers *this)
{
  return ot::Ip6::Header::GetDestination(this);
}

{
  return ot::Ip6::Headers::GetDestinationAddress(this);
}

uint64_t ot::Ip6::Headers::GetIpProto(ot::Ip6::Headers *this)
{
  return ot::Ip6::Header::GetNextHeader(this);
}

{
  return ot::Ip6::Headers::GetIpProto(this);
}

BOOL ot::Ip6::Headers::IsIcmp6(ot::Ip6::Headers *this)
{
  return ot::Ip6::Headers::GetIpProto(this) == 58;
}

{
  return ot::Ip6::Headers::IsIcmp6(this);
}

uint64_t ot::Ip6::Headers::GetIcmpHeader(ot::Ip6::Headers *this)
{
  return this + 40;
}

{
  return ot::Ip6::Headers::GetIcmpHeader(this);
}

uint64_t ot::Ip6::Icmp::Header::GetType(ot::Ip6::Icmp::Header *this)
{
  return *this;
}

{
  return ot::Ip6::Icmp::Header::GetType(this);
}

uint64_t ot::Message::GetRssAverager(ot::Message *this)
{
  return ot::Buffer::GetMetadata(this) + 58;
}

{
  return ot::Message::GetRssAverager(this);
}

uint64_t ot::Message::GetTxSuccess(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 12) & 1;
}

{
  return ot::Message::GetTxSuccess(this);
}

uint64_t ot::Message::GetPriority(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 9) & 3;
}

{
  return ot::Message::GetPriority(this);
}

BOOL ot::Mac::Address::IsExtended(ot::Mac::Address *this)
{
  return *(this + 8) == 2;
}

{
  return ot::Mac::Address::IsExtended(this);
}

uint64_t ot::Utils::HistoryTracker::RecordNeighborEvent(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::AddNewEntry(a1 + 4936);
  if (result)
  {
    if (a2 <= 2u)
    {
      *result = *(a3 + 8);
      *(result + 8) = *(a3 + 32);
      *(result + 10) = *(a3 + 38);
      *(result + 11) = *(result + 11) & 0xFB | (4 * ((*(a3 + 60) & 1) != 0));
      *(result + 11) = *(result + 11) & 0xF7 | (8 * ((*(a3 + 60) & 2) != 0));
      *(result + 11) = *(result + 11) & 0xEF | (16 * ((*(a3 + 60) & 4) != 0));
      *(result + 11) = *(result + 11) & 0xDF | 0x20;
    }

    else if (a2 == 4 || a2 == 3)
    {
      *result = *(a3 + 8);
      *(result + 8) = *(a3 + 24);
      *(result + 10) = *(a3 + 52);
      *(result + 11) = *(result + 11) & 0xFB | (4 * ((*(a3 + 62) & 1) != 0));
      *(result + 11) = *(result + 11) & 0xF7 | (8 * ((*(a3 + 62) & 2) != 0));
      *(result + 11) = *(result + 11) & 0xEF | (16 * ((*(a3 + 62) & 4) != 0));
      *(result + 11) &= ~0x20u;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        goto LABEL_16;
      }

      if (a2 == 2)
      {
        *(result + 11) = *(result + 11) & 0xFC | 2;
        return result;
      }

      if (a2 != 3)
      {
        if (a2 != 4)
        {
          return result;
        }

LABEL_16:
        *(result + 11) = *(result + 11) & 0xFC | 1;
        return result;
      }
    }

    else if ((*(a3 + 60) & 8) != 0)
    {
      *(result + 11) = *(result + 11) & 0xFC | 3;
      return result;
    }

    *(result + 11) &= 0xFCu;
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::AddNewEntry(uint64_t a1)
{
  return a1 + 260 + 12 * ot::Utils::HistoryTracker::List::Add(a1, 0x40u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::AddNewEntry(a1);
}

uint64_t ot::Utils::HistoryTracker::RecordAddressEvent(uint64_t a1, char a2, ot::Ip6::Netif::UnicastAddress *a3)
{
  result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::AddNewEntry(a1 + 520);
  v5 = result;
  if (result)
  {
    ot::Ip6::Netif::UnicastAddress::GetAddress(a3);
    *v5 = *v4;
    *(v5 + 16) = ot::Ip6::Netif::UnicastAddress::GetPrefixLength(a3);
    *(v5 + 17) = ot::Ip6::Netif::UnicastAddress::GetOrigin(a3);
    *(v5 + 20) = (a2 & 1) != 1;
    result = ot::Ip6::Netif::UnicastAddress::GetScope(a3);
    *(v5 + 24) = *(v5 + 24) & 0xF0 | result & 0xF;
    *(v5 + 24) = *(v5 + 24) & 0xEF | (16 * ((*(a3 + 9) & 1) != 0));
    *(v5 + 24) = *(v5 + 24) & 0xDF | (32 * ((*(a3 + 9) & 2) != 0));
    *(v5 + 24) = *(v5 + 24) & 0xBF | (((*(a3 + 9) & 0x80) != 0) << 6);
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::AddNewEntry(uint64_t a1)
{
  return a1 + 84 + 28 * ot::Utils::HistoryTracker::List::Add(a1, 0x14u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::AddNewEntry(a1);
}

void ot::Ip6::Netif::UnicastAddress::GetAddress(ot::Ip6::Netif::UnicastAddress *this)
{
  ot::AsCoreType<otIp6Address>(this);
}

{
  ot::AsCoreType<otIp6Address>(this);
}

{
  ot::Ip6::Netif::UnicastAddress::GetAddress(this);
}

{
  ot::Ip6::Netif::UnicastAddress::GetAddress(this);
}

uint64_t ot::Ip6::Netif::UnicastAddress::GetPrefixLength(ot::Ip6::Netif::UnicastAddress *this)
{
  return *(this + 16);
}

{
  return ot::Ip6::Netif::UnicastAddress::GetPrefixLength(this);
}

uint64_t ot::Ip6::Netif::UnicastAddress::GetOrigin(ot::Ip6::Netif::UnicastAddress *this)
{
  return *(this + 17);
}

{
  return ot::Ip6::Netif::UnicastAddress::GetOrigin(this);
}

uint64_t ot::Ip6::Netif::UnicastAddress::GetScope(ot::Ip6::Netif::UnicastAddress *this)
{
  if ((*(this + 9) & 4) != 0)
  {
    return (*(this + 9) >> 3) & 0xF;
  }

  else
  {
    ot::Ip6::Netif::UnicastAddress::GetAddress(this);
    LOBYTE(v3) = ot::Ip6::Address::GetScope(v1);
  }

  return v3;
}

{
  return ot::Ip6::Netif::UnicastAddress::GetScope(this);
}

void ot::Utils::HistoryTracker::RecordAddressEvent(uint64_t a1, char a2, ot::Ip6::Netif::MulticastAddress *a3, char a4)
{
  v5 = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::AddNewEntry(a1 + 1164);
  if (v5)
  {
    ot::Ip6::Netif::MulticastAddress::GetAddress(a3);
    *v5 = *v4;
    *(v5 + 16) = a4;
    *(v5 + 20) = (a2 & 1) != 1;
  }
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::AddNewEntry(uint64_t a1)
{
  return a1 + 84 + 24 * ot::Utils::HistoryTracker::List::Add(a1, 0x14u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::AddNewEntry(a1);
}

void ot::Ip6::Netif::MulticastAddress::GetAddress(ot::Ip6::Netif::MulticastAddress *this)
{
  ot::AsCoreType<otIp6Address>(this);
}

{
  ot::AsCoreType<otIp6Address>(this);
}

{
  ot::Ip6::Netif::MulticastAddress::GetAddress(this);
}

{
  ot::Ip6::Netif::MulticastAddress::GetAddress(this);
}

uint64_t ot::Utils::HistoryTracker::RecordRouterTableChange(uint64_t this)
{
  v14 = this;
  v6 = this;
  for (i = 0; i <= 0x3Eu; ++i)
  {
    v9 = (v6 + 2 * i + 9840);
    v10 = v10 & 3 | (4 * (i & 0x3F));
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v6);
    this = ot::RouterTable::IsAllocated(v1, i);
    if (this)
    {
      v8 = 0;
      v7 = 0;
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v6);
      v2 = ot::Mle::Rloc16FromRouterId(i);
      ot::RouterTable::GetNextHopAndPathCost(v5, v2, &v8, &v7);
      if (v8 == 65534)
      {
        this = 63;
        v4 = 63;
      }

      else
      {
        this = ot::Mle::RouterIdFromRloc16(v8);
        v4 = this;
      }

      v11 = v4;
      if (v7 < 0x10u)
      {
        v3 = v7;
      }

      else
      {
        v3 = 0;
      }

      v12 = v12 & 0xF | (16 * (v3 & 0xF));
      if ((*v9 & 1) == 0)
      {
        v10 &= 0xFCu;
        v12 &= 0xF0u;
LABEL_18:
        this = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::AddNewEntry(v6 + 5964, &v10);
        *v9 = *v9 & 0xFFFE | 1;
        *v9 = *v9 & 0xFF81 | (2 * (v11 & 0x3F));
        *v9 = *v9 & 0xF0FF | (v12 >> 4 << 8);
        continue;
      }

      if (v11 != ((*v9 >> 1) & 0x3F))
      {
        v10 = v10 & 0xFC | 2;
        v12 = v12 & 0xF0 | HIBYTE(*v9) & 0xF;
        goto LABEL_18;
      }

      if (v11 != 63 && (HIBYTE(*v9) & 0xF) != v12 >> 4)
      {
        v10 = v10 & 0xFC | 3;
        v12 = v12 & 0xF0 | HIBYTE(*v9) & 0xF;
        goto LABEL_18;
      }
    }

    else if (*v9)
    {
      v10 = v10 & 0xFC | 1;
      v11 = 63;
      v12 &= 0xF0u;
      v12 &= 0xFu;
      this = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::AddNewEntry(v6 + 5964, &v10);
      *v9 &= ~1u;
    }
  }

  return this;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::AddNewEntry(uint64_t a1, uint64_t a2)
{
  result = ot::Utils::HistoryTracker::List::Add(a1, 0x100u, (a1 + 4));
  v3 = a1 + 1028 + 3 * result;
  *v3 = *a2;
  *(v3 + 2) = *(a2 + 2);
  return result;
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::AddNewEntry(a1, a2);
}

uint64_t ot::Utils::HistoryTracker::RecordNetworkDataChange(const unsigned __int8 **this)
{
  v11 = this;
  v10 = 0;
  while (!ot::NetworkData::NetworkData::GetNextOnMeshPrefix(this + 1246, &v10, &v9))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if ((ot::NetworkData::NetworkData::ContainsOnMeshPrefix(v1, &v9) & 1) == 0)
    {
      ot::Utils::HistoryTracker::RecordOnMeshPrefixEvent(this, 1u, &v9);
    }
  }

  v10 = 0;
  while (1)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v2, &v10, &v9))
    {
      break;
    }

    if ((ot::NetworkData::NetworkData::ContainsOnMeshPrefix(this + 1246, &v9) & 1) == 0)
    {
      ot::Utils::HistoryTracker::RecordOnMeshPrefixEvent(this, 0, &v9);
    }
  }

  v10 = 0;
  while (!ot::NetworkData::NetworkData::GetNextExternalRoute(this + 1246, &v10, &v8))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if ((ot::NetworkData::NetworkData::ContainsExternalRoute(v3, &v8) & 1) == 0)
    {
      ot::Utils::HistoryTracker::RecordExternalRouteEvent(this, 1u, &v8);
    }
  }

  v10 = 0;
  while (1)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::NetworkData::GetNextExternalRoute(v4, &v10, &v8))
    {
      break;
    }

    if ((ot::NetworkData::NetworkData::ContainsExternalRoute(this + 1246, &v8) & 1) == 0)
    {
      ot::Utils::HistoryTracker::RecordExternalRouteEvent(this, 0, &v8);
    }
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  result = ot::NetworkData::NetworkData::CopyNetworkData(v5, 0, (this + 1246));
  if (result)
  {
    __assert_rtn("RecordNetworkDataChange", "history_tracker.cpp", 407, "false");
  }

  return result;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Leader>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
}

__n128 ot::Utils::HistoryTracker::RecordOnMeshPrefixEvent(uint64_t a1, unsigned __int32 a2, __n128 *a3)
{
  v4 = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::AddNewEntry(a1 + 7760);
  if (v4)
  {
    result = *a3;
    *v4 = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    v4[1].n128_u32[2] = a2;
  }

  return result;
}

__n128 ot::Utils::HistoryTracker::RecordExternalRouteEvent(uint64_t a1, unsigned __int32 a2, __n128 *a3)
{
  v4 = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::AddNewEntry(a1 + 8788);
  if (v4)
  {
    result = *a3;
    *v4 = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    v4[1].n128_u32[2] = a2;
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::AddNewEntry(uint64_t a1)
{
  return a1 + 132 + 28 * ot::Utils::HistoryTracker::List::Add(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::AddNewEntry(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::AddNewEntry(uint64_t a1)
{
  return a1 + 132 + 28 * ot::Utils::HistoryTracker::List::Add(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::AddNewEntry(a1);
}

uint64_t ot::Utils::HistoryTracker::HandleNotifierEvents(ot::Utils::HistoryTracker *a1, uint64_t a2)
{
  v4 = a2;
  if (ot::Events::ContainsAny(&v4, 228))
  {
    ot::Utils::HistoryTracker::RecordNetworkInfo(a1);
  }

  result = ot::Events::Contains(&v4, 512);
  if (result)
  {
    return ot::Utils::HistoryTracker::RecordNetworkDataChange(a1);
  }

  return result;
}

BOOL ot::Events::Contains(void *a1, uint64_t a2)
{
  return (*a1 & a2) != 0;
}

{
  return ot::Events::Contains(a1, a2);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x14u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x14u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x40u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::UpdateAgedEntries(a1);
}

ot::StringWriter *ot::Utils::HistoryTracker::EntryAgeToString(ot::Utils::HistoryTracker *this, char *a2, char *a3)
{
  v9 = this;
  v8 = a2;
  v7[11] = a3;
  ot::StringWriter::StringWriter(v7, a2, a3);
  if (v9 >= 0xFC579C00)
  {
    return ot::StringWriter::Append(v7, "more than %u days", 49);
  }

  v6 = v9 / 0x5265C00;
  if (v9 / 0x5265C00)
  {
    v4 = ot::ToUlong(v6);
    v5 = "";
    if (v6 != 1)
    {
      v5 = "s";
    }

    ot::StringWriter::Append(v7, "%lu day%s ", v4, v5);
    v9 -= 86400000 * v6;
  }

  return ot::StringWriter::Append(v7, "%02u:%02u:%02u.%03u", v9 / 0x36EE80, v9 % 0x36EE80 / 0xEA60, v9 % 0xEA60 / 0x3E8, v9 % 0x3E8);
}

_DWORD *ot::Utils::HistoryTracker::Timestamp::SetToNow(ot::Utils::HistoryTracker::Timestamp *this)
{
  *this = ot::TimerMilli::GetNow(this);
  result = ot::Time::GetValue(this);
  if (!result)
  {
    Value = ot::Time::GetValue(this);
    return ot::Time::SetValue(this, Value - 1);
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::Timestamp::GetDurationTill(ot::Utils::HistoryTracker::Timestamp *a1, int a2)
{
  v6 = a2;
  if (ot::Utils::HistoryTracker::Timestamp::IsDistantPast(a1))
  {
    return -61367296;
  }

  else
  {
    v2 = ot::Time::operator-(&v6, a1);
    return ot::Min<unsigned int>(v2, 0xFC579C00);
  }
}

BOOL ot::Utils::HistoryTracker::Timestamp::IsDistantPast(ot::Utils::HistoryTracker::Timestamp *this)
{
  return ot::Time::GetValue(this) == 0;
}

{
  return ot::Utils::HistoryTracker::Timestamp::IsDistantPast(this);
}

_WORD *ot::Utils::HistoryTracker::List::List(_WORD *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

_WORD *ot::Utils::HistoryTracker::List::Clear(_WORD *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t ot::Utils::HistoryTracker::List::Add(ot::Utils::HistoryTracker::List *this, unsigned __int16 a2, ot::Utils::HistoryTracker::Timestamp *a3)
{
  if (*this)
  {
    v4 = *this - 1;
  }

  else
  {
    v4 = a2 - 1;
  }

  *this = v4;
  *(this + 1) += *(this + 1) != a2;
  ot::Utils::HistoryTracker::Timestamp::SetToNow((a3 + 4 * *this));
  return *this;
}

uint64_t ot::Utils::HistoryTracker::List::Iterate(ot::Utils::HistoryTracker::List *this, unsigned __int16 a2, const ot::Utils::HistoryTracker::Timestamp *a3, ot::Utils::HistoryTracker::Iterator *a4, unsigned __int16 *a5, unsigned int *a6)
{
  v11 = 0;
  if (ot::Utils::HistoryTracker::Iterator::GetEntryNumber(a4) < *(this + 1))
  {
    EntryNumber = ot::Utils::HistoryTracker::Iterator::GetEntryNumber(a4);
    *a5 = ot::Utils::HistoryTracker::List::MapEntryNumberToListIndex(this, EntryNumber, a2);
    v8 = (a3 + 4 * *a5);
    InitTime = ot::Utils::HistoryTracker::Iterator::GetInitTime(a4);
    *a6 = ot::Utils::HistoryTracker::Timestamp::GetDurationTill(v8, InitTime);
    ot::Utils::HistoryTracker::Iterator::IncrementEntryNumber(a4);
  }

  else
  {
    return 23;
  }

  return v11;
}

uint64_t ot::Utils::HistoryTracker::Iterator::GetEntryNumber(ot::Utils::HistoryTracker::Iterator *this)
{
  return *(this + 2);
}

{
  return ot::Utils::HistoryTracker::Iterator::GetEntryNumber(this);
}

uint64_t ot::Utils::HistoryTracker::List::MapEntryNumberToListIndex(ot::Utils::HistoryTracker::List *this, unsigned __int16 a2, unsigned __int16 a3)
{
  if (a2 >= *(this + 1))
  {
    __assert_rtn("MapEntryNumberToListIndex", "history_tracker.cpp", 573, "aEntryNumber < mSize");
  }

  v5 = a2 + *this;
  if (v5 < a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  return (v5 - v4);
}

uint64_t ot::Utils::HistoryTracker::Iterator::GetInitTime(ot::Utils::HistoryTracker::Iterator *this)
{
  ot::Time::Time(&v2, *this);
  return v2;
}

{
  return ot::Utils::HistoryTracker::Iterator::GetInitTime(this);
}

uint64_t ot::Utils::HistoryTracker::Iterator::IncrementEntryNumber(uint64_t this)
{
  ++*(this + 4);
  return this;
}

{
  return ot::Utils::HistoryTracker::Iterator::IncrementEntryNumber(this);
}

uint64_t ot::Utils::HistoryTracker::List::UpdateAgedEntries(ot::Utils::HistoryTracker::List *this, unsigned __int16 a2, ot::Utils::HistoryTracker::Timestamp *a3)
{
  result = ot::TimerMilli::GetNow(this);
  v7 = result;
  for (i = *(this + 1) - 1; i < *(this + 1); --i)
  {
    v5 = ot::Utils::HistoryTracker::List::MapEntryNumberToListIndex(this, i, a2);
    result = ot::Utils::HistoryTracker::Timestamp::GetDurationTill((a3 + 4 * v5), v7);
    if (result < 0xFC579C00)
    {
      break;
    }

    result = ot::Utils::HistoryTracker::Timestamp::MarkAsDistantPast((a3 + 4 * v5));
  }

  return result;
}

_DWORD *ot::Utils::HistoryTracker::Timestamp::MarkAsDistantPast(ot::Utils::HistoryTracker::Timestamp *this)
{
  return ot::Time::SetValue(this, 0);
}

{
  return ot::Utils::HistoryTracker::Timestamp::MarkAsDistantPast(this);
}

ot::NetworkData::NetworkData *ot::NetworkData::NetworkData::NetworkData(ot::NetworkData::NetworkData *this, ot::Instance *a2, const unsigned __int8 *a3, char a4)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *this = a3;
  *(this + 8) = a4;
  return result;
}

{
  ot::NetworkData::NetworkData::NetworkData(this, a2, a3, a4);
  return this;
}

uint64_t ot::Ip6::Header::GetSource(ot::Ip6::Header *this)
{
  return this + 8;
}

{
  return this + 8;
}

{
  return ot::Ip6::Header::GetSource(this);
}

{
  return ot::Ip6::Header::GetSource(this);
}

uint64_t ot::Ip6::Header::GetDestination(ot::Ip6::Header *this)
{
  return this + 24;
}

{
  return this + 24;
}

{
  return ot::Ip6::Header::GetDestination(this);
}

{
  return ot::Ip6::Header::GetDestination(this);
}

uint64_t ot::Ip6::Header::GetNextHeader(ot::Ip6::Header *this)
{
  return *(this + 6);
}

{
  return ot::Ip6::Header::GetNextHeader(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Utils::HistoryTracker>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(a1);
}

uint64_t ot::Instance::Get<ot::Utils::HistoryTracker>(uint64_t a1)
{
  return a1 + 156800;
}

{
  return ot::Instance::Get<ot::Utils::HistoryTracker>(a1);
}

uint64_t otPingSenderPing(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::PingSender>(v2);
  ot::AsCoreType<otPingSenderConfig>(a2);
  return ot::Utils::PingSender::Ping(v5, v3);
}

uint64_t ot::Instance::Get<ot::Utils::PingSender>(uint64_t a1)
{
  return a1 + 156552;
}

{
  return ot::Instance::Get<ot::Utils::PingSender>(a1);
}

void ot::AsCoreType<otPingSenderConfig>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otPingSenderConfig>(a1);
}

uint64_t otPingSenderStop(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::PingSender>(v1);
  return ot::Utils::PingSender::Stop(v2);
}

uint64_t otServerGetNetDataLocal(uint64_t a1, char a2, unsigned __int8 *a3, char *a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v4);
  return ot::NetworkData::NetworkData::CopyNetworkData(v5, (a2 & 1) != 0, a3, a4);
}

uint64_t otServerAddService(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  ot::Data<(ot::DataLengthType)0>::Init(v6, a2 + 9, *(a2 + 8));
  ot::Data<(ot::DataLengthType)0>::Init(v5, v7 + 264, *(v7 + 263));
  ot::AsCoreType<otInstance>(v8);
  v3 = ot::Instance::Get<ot::NetworkData::Local>(v2);
  return ot::NetworkData::Local::AddService(v3, *(v7 + 4), v6, *(v7 + 262) & 1, v5);
}

uint64_t ot::Data<(ot::DataLengthType)0>::Init(uint64_t result, uint64_t a2, char a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

{
  return ot::Data<(ot::DataLengthType)0>::Init(result, a2, a3);
}

uint64_t otServerRemoveService(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7[23] = a4;
  ot::Data<(ot::DataLengthType)0>::Init(v7, a3, a4);
  ot::AsCoreType<otInstance>(v10);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v4);
  return ot::NetworkData::Local::RemoveService(v5, v9, v7);
}

uint64_t otServerGetNextService(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    ot::AsCoreType<otInstance>(a1);
    v6 = ot::Instance::Get<ot::NetworkData::Local>(v3);
    ot::AsCoreType<otServiceConfig>(a3);
    return ot::NetworkData::NetworkData::GetNextService(v6, a2, v4);
  }

  else
  {
    return 7;
  }
}

uint64_t otServerRegister(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Notifier>(v1);
  ot::NetworkData::Notifier::HandleServerDataUpdated(v2);
  return 0;
}

void *ot::Mle::RouteTlv::Init(ot::Mle::RouteTlv *this)
{
  ot::Mle::Tlv::SetType(this, 9);
  ot::Tlv::SetLength(this, 72);
  ot::Clearable<ot::Mle::RouterIdSet>::Clear((this + 3));
  return ot::ClearAllBytes<unsigned char [63]>(this + 11);
}

_BYTE *ot::Mle::Tlv::SetType(ot::Tlv *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::Mle::Tlv::SetType(a1, a2);
}

uint64_t ot::Tlv::SetLength(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Tlv::SetLength(this, a2);
}

void *ot::Clearable<ot::Mle::RouterIdSet>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Mle::RouterIdSet>(a1);
}

{
  return ot::Clearable<ot::Mle::RouterIdSet>::Clear(a1);
}

void *ot::ClearAllBytes<unsigned char [63]>(void *a1)
{
  return memset(a1, 0, 0x3FuLL);
}

{
  return ot::ClearAllBytes<unsigned char [63]>(a1);
}

BOOL ot::Mle::RouteTlv::IsValid(ot::Mle::RouteTlv *this)
{
  v4 = 0;
  if (ot::Tlv::GetLength(this) >= 9uLL)
  {
    NumberOfAllocatedIds = ot::Mle::RouterIdSet::GetNumberOfAllocatedIds((this + 3));
    if (NumberOfAllocatedIds <= 0x20u)
    {
      return ot::Mle::RouteTlv::GetRouteDataLength(this) >= NumberOfAllocatedIds;
    }
  }

  return v4;
}

uint64_t ot::Mle::RouteTlv::GetRouteDataLength(ot::Mle::RouteTlv *this)
{
  return (ot::Tlv::GetLength(this) - 9);
}

{
  return ot::Mle::RouteTlv::GetRouteDataLength(this);
}

_BYTE *ot::Mle::ConnectivityTlv::IncrementLinkQuality(_BYTE *result, char a2)
{
  if (a2)
  {
    switch(a2)
    {
      case 1:
        ++result[5];
        break;
      case 2:
        ++result[4];
        break;
      case 3:
        ++result[3];
        break;
    }
  }

  return result;
}

uint64_t ot::Mle::ConnectivityTlv::SetParentPriority(ot::Mle::ConnectivityTlv *this, char a2)
{
  result = ot::Preference::To2BitUint(a2);
  *(this + 2) = result << 6;
  return result;
}

_BYTE *ot::Mle::ChannelTlvValue::SetChannelPage(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mle::ChannelTlvValue::SetChannelPage(this, a2);
}

uint64_t ot::Mle::ChannelTlvValue::SetChannel(ot::Mle::ChannelTlvValue *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Mle::ChannelTlvValue::SetChannel(this, a2);
}

uint64_t ot::Mle::ChannelTlvValue::IsValid(ot::Mle::ChannelTlvValue *this, unsigned __int8 a2)
{
  v6 = 0;
  if (ot::Radio::SupportsChannelPage(*this))
  {
    Channel = ot::Mle::ChannelTlvValue::GetChannel(this, v2);
    if (Channel >= 0xBu && Channel <= 0x19u)
    {
      v6 = 1;
    }
  }

  return v6 & 1;
}

BOOL ot::Radio::SupportsChannelPage(ot::Radio *this)
{
  return this == 0;
}

{
  return ot::Radio::SupportsChannelPage(this);
}

uint64_t ot::Mle::ChannelTlvValue::GetChannel(ot::Mle::ChannelTlvValue *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::Mle::ChannelTlvValue::GetChannel(this, a2);
}

_BYTE *ot::Tlv::SetType(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::Tlv::SetType(this, a2);
}

void *ot::ClearAllBytes<ot::Mle::RouterIdSet>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mle::RouterIdSet>(result);
}

uint64_t otThreadGetChildTimeout(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetTimeout(v2);
}

uint64_t ot::Mle::Mle::GetTimeout(ot::Mle::Mle *this)
{
  return *(this + 39);
}

{
  return ot::Mle::Mle::GetTimeout(this);
}

void otThreadSetChildTimeout(uint64_t a1, unsigned int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::Mle::SetTimeout(v3, a2);
}

void otThreadGetExtendedPanId(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(v1);
  ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(v2);
}

uint64_t ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(uint64_t a1)
{
  return a1 + 87992;
}

{
  return ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(a1);
}

void ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(ot::MeshCoP::ExtendedPanIdManager *this)
{
  ;
}

{
  ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(this);
}

uint64_t otThreadSetExtendedPanId(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  ot::AsCoreType<otInstance>(a1);
  v10 = v2;
  ot::AsCoreType<otExtendedPanId>(a2);
  v9 = v3;
  v4 = ot::Instance::Get<ot::Mle::MleRouter>(v10);
  if (ot::Mle::Mle::IsDisabled(v4))
  {
    v5 = ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(v10);
    ot::MeshCoP::ExtendedPanIdManager::SetExtPanId(v5, v9);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v10);
    ot::MeshCoP::DatasetManager::Clear(active);
    v7 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v10);
    ot::MeshCoP::DatasetManager::Clear(v7);
  }

  else
  {
    return 13;
  }

  return v11;
}

uint64_t otThreadGetLeaderRloc(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::Mle>(v2);
  if (ot::Mle::Mle::HasRloc16(v3, 0xFFFEu))
  {
    return 16;
  }

  else
  {
    ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::Mle::Mle>(v4);
    ot::AsCoreType<otIp6Address>(a2);
    ot::Mle::Mle::GetLeaderRloc(v7, v5);
  }

  return v8;
}

uint64_t otThreadGetLinkMode(uint64_t a1)
{
  v5 = a1;
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  DeviceMode = ot::Mle::Mle::GetDeviceMode(v2);
  ot::Mle::DeviceMode::Get(&DeviceMode, &v6);
  return v6;
}

uint64_t otThreadSetLinkMode(uint64_t a1, char a2)
{
  v7 = a2;
  v6 = a1;
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::DeviceMode::DeviceMode(&v5, v7);
  return ot::Mle::Mle::SetDeviceMode(v4, v5);
}

_BYTE *ot::Mle::DeviceMode::DeviceMode(_BYTE *a1, char a2)
{
  ot::Mle::DeviceMode::DeviceMode(a1, a2);
  return a1;
}

{
  v4 = a2;
  ot::Mle::DeviceMode::Set(a1, &v4);
  return a1;
}

double otThreadGetNetworkKey(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::KeyManager>(v2);
  ot::AsCoreType<otNetworkKey>(a2);
  *&result = ot::KeyManager::GetNetworkKey(v5, v3).n128_u64[0];
  return result;
}

uint64_t ot::Instance::Get<ot::KeyManager>(uint64_t a1)
{
  return a1 + 88040;
}

{
  return ot::Instance::Get<ot::KeyManager>(a1);
}

void ot::AsCoreType<otNetworkKey>(uint64_t a1)
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
  ot::AsCoreType<otNetworkKey>(a1);
}

{
  ot::AsCoreType<otNetworkKey>(a1);
}

uint64_t otThreadSetNetworkKey(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  ot::AsCoreType<otInstance>(a1);
  v9 = v2;
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    v8 = ot::Instance::Get<ot::KeyManager>(v9);
    ot::AsCoreType<otNetworkKey>(a2);
    ot::KeyManager::SetNetworkKey(v8, v4);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v9);
    ot::MeshCoP::DatasetManager::Clear(active);
    v6 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v9);
    ot::MeshCoP::DatasetManager::Clear(v6);
  }

  else
  {
    return 13;
  }

  return v10;
}

void otThreadGetRloc(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  ot::Mle::Mle::GetMeshLocalRloc(v2);
}

void ot::Mle::Mle::GetMeshLocalRloc(ot::Mle::Mle *this)
{
  ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
}

{
  ot::Mle::Mle::GetMeshLocalRloc(this);
}

void otThreadGetMeshLocalEid(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  ot::Mle::Mle::GetMeshLocalEid(v2);
}

void ot::Mle::Mle::GetMeshLocalEid(ot::Mle::Mle *this)
{
  ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
}

{
  ot::Mle::Mle::GetMeshLocalEid(this);
}

uint64_t otThreadGetMeshLocalPrefix(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetMeshLocalPrefix(v2);
}

uint64_t otThreadSetMeshLocalPrefix(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    ot::AsCoreType<otInstance>(a1);
    v11 = ot::Instance::Get<ot::Mle::MleRouter>(v4);
    ot::AsCoreType<otIp6NetworkPrefix>(a2);
    ot::Mle::Mle::SetMeshLocalPrefix(v11, v5);
    ot::AsCoreType<otInstance>(a1);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v6);
    ot::MeshCoP::DatasetManager::Clear(active);
    ot::AsCoreType<otInstance>(a1);
    v9 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(v9);
  }

  else
  {
    return 13;
  }

  return v12;
}

void otThreadGetLinkLocalIp6Address(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  ot::Mle::Mle::GetLinkLocalAddress(v2);
}

void ot::Mle::Mle::GetLinkLocalAddress(ot::Mle::Mle *this)
{
  ot::Ip6::Netif::UnicastAddress::GetAddress((this + 992));
}

{
  ot::Mle::Mle::GetLinkLocalAddress(this);
}

void otThreadGetLinkLocalAllThreadNodesMulticastAddress(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  ot::Mle::Mle::GetLinkLocalAllThreadNodesAddress(v2);
}

void ot::Mle::Mle::GetLinkLocalAllThreadNodesAddress(ot::Mle::Mle *this)
{
  ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1088));
}

{
  ot::Mle::Mle::GetLinkLocalAllThreadNodesAddress(this);
}

void otThreadGetRealmLocalAllThreadNodesMulticastAddress(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  ot::Mle::Mle::GetRealmLocalAllThreadNodesAddress(v2);
}

void ot::Mle::Mle::GetRealmLocalAllThreadNodesAddress(ot::Mle::Mle *this)
{
  ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1112));
}

{
  ot::Mle::Mle::GetRealmLocalAllThreadNodesAddress(this);
}

uint64_t otThreadGetServiceAloc(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v9 = 0;
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::Mle>(v3);
  if (ot::Mle::Mle::HasRloc16(v4, 0xFFFEu))
  {
    return 16;
  }

  else
  {
    ot::AsCoreType<otInstance>(a1);
    v8 = ot::Instance::Get<ot::Mle::Mle>(v5);
    ot::AsCoreType<otIp6Address>(a3);
    ot::Mle::Mle::GetServiceAloc(v8, a2, v6);
  }

  return v9;
}

void otThreadGetNetworkName(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(v1);
  ot::MeshCoP::NetworkNameManager::GetNetworkName(v2);
  ot::MeshCoP::NetworkName::GetAsCString(v3);
}

uint64_t ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(uint64_t a1)
{
  return a1 + 88000;
}

{
  return ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(a1);
}

void ot::MeshCoP::NetworkNameManager::GetNetworkName(ot::MeshCoP::NetworkNameManager *this)
{
  ;
}

{
  ot::MeshCoP::NetworkNameManager::GetNetworkName(this);
}

void ot::MeshCoP::NetworkName::GetAsCString(ot::MeshCoP::NetworkName *this)
{
  ;
}

{
  ot::MeshCoP::NetworkName::GetAsCString(this);
}

uint64_t otThreadSetNetworkName(uint64_t a1, ot *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    if (a2 && *a2)
    {
      ot::AsCoreType<otInstance>(a1);
      v5 = ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(v4);
      v11 = ot::MeshCoP::NetworkNameManager::SetNetworkName(v5, a2);
      ot::AsCoreType<otInstance>(a1);
      active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v6);
      ot::MeshCoP::DatasetManager::Clear(active);
      ot::AsCoreType<otInstance>(a1);
      v9 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
      ot::MeshCoP::DatasetManager::Clear(v9);
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 13;
  }

  return v11;
}

void otThreadGetDomainName(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(v1);
  DomainName = ot::MeshCoP::NetworkNameManager::GetDomainName(v2);
  ot::MeshCoP::NetworkName::GetAsCString(DomainName);
}

uint64_t ot::MeshCoP::NetworkNameManager::GetDomainName(ot::MeshCoP::NetworkNameManager *this)
{
  return this + 17;
}

{
  return ot::MeshCoP::NetworkNameManager::GetDomainName(this);
}

uint64_t otThreadSetDomainName(uint64_t a1, ot *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    ot::AsCoreType<otInstance>(a1);
    v5 = ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(v4);
    return ot::MeshCoP::NetworkNameManager::SetDomainName(v5, a2);
  }

  else
  {
    return 13;
  }
}

uint64_t otThreadSetFixedDuaInterfaceIdentifier(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (a2)
  {
    ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::DuaManager>(v2);
    ot::AsCoreType<otIp6InterfaceIdentifier>(a2);
    return ot::DuaManager::SetFixedDuaInterfaceIdentifier(v7, v3);
  }

  else
  {
    ot::AsCoreType<otInstance>(a1);
    v5 = ot::Instance::Get<ot::DuaManager>(v4);
    ot::DuaManager::ClearFixedDuaInterfaceIdentifier(v5);
  }

  return v8;
}

uint64_t ot::Instance::Get<ot::DuaManager>(uint64_t a1)
{
  return a1 + 154408;
}

{
  return ot::Instance::Get<ot::DuaManager>(a1);
}

void ot::AsCoreType<otIp6InterfaceIdentifier>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otIp6InterfaceIdentifier>(a1);
}

uint64_t otThreadGetFixedDuaInterfaceIdentifier(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = v1;
  v5 = 0;
  v2 = ot::Instance::Get<ot::DuaManager>(v1);
  if (ot::DuaManager::IsFixedDuaInterfaceIdentifierSet(v2))
  {
    v3 = ot::Instance::Get<ot::DuaManager>(v6);
    return ot::DuaManager::GetFixedDuaInterfaceIdentifier(v3);
  }

  return v5;
}

BOOL ot::DuaManager::IsFixedDuaInterfaceIdentifierSet(ot::DuaManager *this)
{
  return !ot::Ip6::InterfaceIdentifier::IsUnspecified((this + 48));
}

{
  return ot::DuaManager::IsFixedDuaInterfaceIdentifierSet(this);
}

uint64_t ot::DuaManager::GetFixedDuaInterfaceIdentifier(ot::DuaManager *this)
{
  return this + 48;
}

{
  return ot::DuaManager::GetFixedDuaInterfaceIdentifier(this);
}

uint64_t otThreadGetKeySequenceCounter(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::KeyManager>(v1);
  return ot::KeyManager::GetCurrentKeySequence(v2);
}

uint64_t ot::KeyManager::GetCurrentKeySequence(ot::KeyManager *this)
{
  return *(this + 4);
}

{
  return ot::KeyManager::GetCurrentKeySequence(this);
}

void otThreadSetKeySequenceCounter(uint64_t a1, int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::KeyManager>(v2);
  ot::KeyManager::SetCurrentKeySequence(v3, a2, 0);
}

uint64_t otThreadGetKeySwitchGuardTime(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::KeyManager>(v1);
  return ot::KeyManager::GetKeySwitchGuardTime(v2);
}

uint64_t ot::KeyManager::GetKeySwitchGuardTime(ot::KeyManager *this)
{
  return *(this + 35);
}

{
  return ot::KeyManager::GetKeySwitchGuardTime(this);
}

uint64_t otThreadSetKeySwitchGuardTime(uint64_t a1, __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::KeyManager>(v2);
  return ot::KeyManager::SetKeySwitchGuardTime(v3, a2);
}

uint64_t ot::KeyManager::SetKeySwitchGuardTime(uint64_t this, __int16 a2)
{
  *(this + 70) = a2;
  return this;
}

{
  return ot::KeyManager::SetKeySwitchGuardTime(this, a2);
}

uint64_t otThreadBecomeDetached(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::BecomeDetached(v2);
}

uint64_t otThreadBecomeChild(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::BecomeChild(v2);
}

uint64_t otThreadGetNextNeighborInfo(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetNextNeighborInfo", "thread_api.cpp", 316, "(aIterator) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NeighborTable>(v3);
  ot::AsCoreType<otNeighborInfo>(a3);
  return ot::NeighborTable::GetNextNeighborInfo(v6, a2, v4);
}

void ot::AsCoreType<otNeighborInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otNeighborInfo>(a1);
}

uint64_t otThreadSetNeighborEnhAckSolicitationEnabled(uint64_t a1, uint64_t a2, char a3)
{
  v7 = 23;
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NeighborTable>(v3);
  Neighbor = ot::NeighborTable::FindNeighbor(v4, a2, 0);
  if (Neighbor)
  {
    ot::Neighbor::SetEnhancedAckEnabled(Neighbor, a3 & 1);
    return 0;
  }

  return v7;
}

uint64_t ot::Neighbor::SetEnhancedAckEnabled(uint64_t this, char a2)
{
  *(this + 34) = *(this + 34) & 0xFE | a2 & 1;
  return this;
}

{
  return ot::Neighbor::SetEnhancedAckEnabled(this, a2);
}

uint64_t otThreadGetNeighborEnhAckSolicitationEnabled(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = 23;
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NeighborTable>(v3);
  Neighbor = ot::NeighborTable::FindNeighbor(v4, a2, 0);
  if (Neighbor)
  {
    if (!a3)
    {
      __assert_rtn("otThreadGetNeighborEnhAckSolicitationEnabled", "thread_api.cpp", 348, "aEnabled != nullptr");
    }

    *a3 = ot::Neighbor::IsEnhacedAckEnabled(Neighbor);
    return 0;
  }

  return v7;
}

uint64_t ot::Neighbor::IsEnhacedAckEnabled(ot::Neighbor *this)
{
  return *(this + 34) & 1;
}

{
  return ot::Neighbor::IsEnhacedAckEnabled(this);
}

uint64_t otThreadGetDeviceRole(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  Role = ot::Mle::Mle::GetRole(v2);
  return ot::MapEnum<ot::Mle::DeviceRole>(Role);
}

uint64_t ot::MapEnum<otDeviceRole>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otDeviceRole>(result);
}

uint64_t otThreadGetLeaderData(uint64_t a1, void *a2)
{
  v7 = 0;
  if (!a2)
  {
    __assert_rtn("otThreadGetLeaderData", "thread_api.cpp", 369, "(aLeaderData) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsAttached(v3))
  {
    ot::AsCoreType<otInstance>(a1);
    v5 = ot::Instance::Get<ot::Mle::MleRouter>(v4);
    *a2 = *ot::Mle::Mle::GetLeaderData(v5);
  }

  else
  {
    return 16;
  }

  return v7;
}

uint64_t otThreadGetLeaderRouterId(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetLeaderId(v2);
}

uint64_t otThreadGetLeaderWeight(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  LeaderData = ot::Mle::Mle::GetLeaderData(v2);
  return ot::Mle::LeaderData::GetWeighting(LeaderData);
}

uint64_t ot::Mle::LeaderData::GetWeighting(ot::Mle::LeaderData *this)
{
  return *(this + 4);
}

{
  return ot::Mle::LeaderData::GetWeighting(this);
}

uint64_t otThreadGetPartitionId(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  LeaderData = ot::Mle::Mle::GetLeaderData(v2);
  return ot::Mle::LeaderData::GetPartitionId(LeaderData);
}

uint64_t otThreadGetRloc16(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetRloc16(v2);
}

BOOL otThreadIsDeviceDetached(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::IsDetached(v2);
}

BOOL ot::Mle::Mle::IsDetached(ot::Mle::Mle *this)
{
  return *(this + 130) == 1;
}

{
  return ot::Mle::Mle::IsDetached(this);
}

uint64_t otThreadResetRloc16(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::ResetRloc16(v2);
}

uint64_t ot::Mle::Mle::ResetRloc16(uint64_t this)
{
  *(this + 144) = -2;
  return this;
}

{
  return ot::Mle::Mle::ResetRloc16(this);
}

uint64_t otThreadStoreInfoToSettings(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::Store(v2);
}

uint64_t otThreadGetParentInfo(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Mle::Mle>(v2);
  ot::AsCoreType<otRouterInfo>(a2);
  return ot::Mle::Mle::GetParentInfo(v5, v3);
}

void ot::AsCoreType<otRouterInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otRouterInfo>(a1);
}

BOOL otThreadGetParentAverageRssi(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetParentAverageRssi", "thread_api.cpp", 418, "(aParentRssi) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  Parent = ot::Mle::Mle::GetParent(v3);
  LinkInfo = ot::Neighbor::GetLinkInfo(Parent);
  *a2 = ot::LinkQualityInfo::GetAverageRss(LinkInfo);
  return *a2 == 127;
}

uint64_t ot::Neighbor::GetLinkInfo(ot::Neighbor *this)
{
  return this + 38;
}

{
  return this + 38;
}

{
  return ot::Neighbor::GetLinkInfo(this);
}

{
  return ot::Neighbor::GetLinkInfo(this);
}

uint64_t ot::LinkQualityInfo::GetAverageRss(ot::LinkQualityInfo *this)
{
  return ot::RssAverager::GetAverage(this);
}

{
  return ot::LinkQualityInfo::GetAverageRss(this);
}

BOOL otThreadGetParentLastRssi(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetParentLastRssi", "thread_api.cpp", 432, "(aLastRssi) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  Parent = ot::Mle::Mle::GetParent(v3);
  LinkInfo = ot::Neighbor::GetLinkInfo(Parent);
  *a2 = ot::LinkQualityInfo::GetLastRss(LinkInfo);
  return *a2 == 127;
}

uint64_t ot::LinkQualityInfo::GetLastRss(ot::LinkQualityInfo *this)
{
  return *(this + 3);
}

{
  return ot::LinkQualityInfo::GetLastRss(this);
}

uint64_t otThreadSearchForBetterParent(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::SearchForBetterParent(v2);
}

uint64_t otThreadSetEnabled(uint64_t a1, char a2)
{
  v7 = 0;
  if (a2)
  {
    ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
    return ot::Mle::Mle::Start(v3);
  }

  else
  {
    ot::AsCoreType<otInstance>(a1);
    v5 = ot::Instance::Get<ot::Mle::MleRouter>(v4);
    ot::Mle::Mle::Stop(v5);
  }

  return v7;
}

uint64_t ot::Mle::Mle::Start(ot::Mle::Mle *this)
{
  return ot::Mle::Mle::Start(this, 0);
}

{
  return ot::Mle::Mle::Start(this);
}

void *ot::Mle::Mle::Stop(ot::Mle::Mle *this)
{
  return ot::Mle::Mle::Stop(this, 1);
}

{
  return ot::Mle::Mle::Stop(this);
}

BOOL otThreadIsSingleton(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::IsSingleton(v2);
}

uint64_t otThreadDiscover(uint64_t a1, int a2, unsigned __int16 a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = a7;
  ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::Mle::DiscoverScanner>(v7);
  ot::Mac::ChannelMask::ChannelMask(v10, v16);
  return ot::Mle::DiscoverScanner::Discover(v9, v10, v15, v14 & 1, v13 & 1, 0, v12, v11);
}

uint64_t ot::Instance::Get<ot::Mle::DiscoverScanner>(uint64_t a1)
{
  return a1 + 126944;
}

{
  return ot::Instance::Get<ot::Mle::DiscoverScanner>(a1);
}

uint64_t otThreadSetJoinerAdvertisement(uint64_t a1, unsigned int a2, const unsigned __int8 *a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Mle::DiscoverScanner>(v4);
  return ot::Mle::DiscoverScanner::SetJoinerAdvertisement(v5, a2, a3, a4);
}

BOOL otThreadIsDiscoverInProgress(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::DiscoverScanner>(v1);
  return ot::Mle::DiscoverScanner::IsInProgress(v2);
}

BOOL ot::Mle::DiscoverScanner::IsInProgress(ot::Mle::DiscoverScanner *this)
{
  return *(this + 64) != 0;
}

{
  return ot::Mle::DiscoverScanner::IsInProgress(this);
}

uint64_t otThreadGetIp6Counters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::GetCounters(v2);
}

uint64_t ot::MeshForwarder::GetCounters(ot::MeshForwarder *this)
{
  return this + 136;
}

{
  return ot::MeshForwarder::GetCounters(this);
}

void *otThreadResetIp6Counters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::ResetCounters(v2);
}

void *ot::MeshForwarder::ResetCounters(ot::MeshForwarder *this)
{
  return ot::ClearAllBytes<otIpCounters>(this + 136);
}

{
  return ot::MeshForwarder::ResetCounters(this);
}

uint64_t otThreadGetTimeInQueueHistogram(uint64_t a1, unsigned __int16 *a2, unsigned int *a3)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetTimeInQueueHistogram", "thread_api.cpp", 514, "(aNumBins) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otThreadGetTimeInQueueHistogram", "thread_api.cpp", 515, "(aBinInterval) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::MeshForwarder>(v3);
  return ot::MeshForwarder::GetTimeInQueueHistogram(v4, a2, a3);
}

uint64_t ot::MeshForwarder::GetTimeInQueueHistogram(ot::MeshForwarder *this, unsigned __int16 *a2, unsigned int *a3)
{
  return ot::MeshForwarder::TxQueueStats::GetHistogram((this + 408), a2, a3);
}

{
  return ot::MeshForwarder::GetTimeInQueueHistogram(this, a2, a3);
}

uint64_t otThreadGetMaxTimeInQueue(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::GetMaxTimeInQueue(v2);
}

uint64_t ot::MeshForwarder::GetMaxTimeInQueue(ot::MeshForwarder *this)
{
  return ot::MeshForwarder::TxQueueStats::GetMaxInterval((this + 408));
}

{
  return ot::MeshForwarder::GetMaxTimeInQueue(this);
}

void otThreadResetTimeInQueueStat(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  ot::MeshForwarder::ResetTimeInQueueStat(v2);
}

void ot::MeshForwarder::ResetTimeInQueueStat(ot::MeshForwarder *this)
{
  ot::Clearable<ot::MeshForwarder::TxQueueStats>::Clear(this + 408);
}

{
  ot::MeshForwarder::ResetTimeInQueueStat(this);
}

uint64_t otThreadGetMleCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetCounters(v2);
}

uint64_t ot::Mle::Mle::GetCounters(ot::Mle::Mle *this)
{
  ot::Mle::Mle::UpdateRoleTimeCounters(this, *(this + 130));
  return this + 616;
}

{
  return ot::Mle::Mle::GetCounters(this);
}

unint64_t otThreadResetMleCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::ResetCounters(v2);
}

uint64_t otThreadDetachGracefully(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::Mle>(v3);
  return ot::Mle::Mle::DetachGracefully(v4, a2, a3);
}

uint64_t otThreadAttachCslPeripheral(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 a4, char a5, unsigned __int8 a6)
{
  ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::Mle::Mle>(v6);
  ot::AsCoreType<otExtAddress>(a2);
  return ot::Mle::Mle::AttachCslPeripheral(v9, v7, a3, a4, 0, a5, a6);
}

uint64_t otThreadConfigureWOR(uint64_t a1, unsigned int a2, __int16 a3)
{
  Active = otThreadSetLinkMode(a1, 6);
  if (!Active)
  {
    Active = otLinkSetCslPeriod(a1, a2);
    if (!Active)
    {
      Active = otIp6SetEnabled(a1, 1);
      if (!Active)
      {
        Active = otThreadSetEnabled(a1, 1);
        if (!Active)
        {
          Active = otPlatVendorSetPriority(a1, 5u, 1u, 0);
          if (!Active)
          {
            Active = otDatasetGetActive(a1, &otThreadConfigureWOR::sDataset);
            if (a3)
            {
              word_10053ABA4 = a3;
              byte_10053ABCC = 1;
              return otDatasetSetActive(a1, &otThreadConfigureWOR::sDataset);
            }
          }
        }
      }
    }
  }

  return Active;
}

BOOL otThreadIsEnhCslPeerLinking(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::IsCslPeripheralAttaching(v2);
}

BOOL ot::Mle::Mle::IsCslPeripheralAttaching(ot::Mle::Mle *this)
{
  v2 = 1;
  if (*(this + 128) != 1)
  {
    return *(this + 128) == 2;
  }

  return v2;
}

{
  return ot::Mle::Mle::IsCslPeripheralAttaching(this);
}

uint64_t otThreadSetScanHighPriority(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::Mle>(v2);
  return ot::Mle::Mle::setScanHighPriority(v3, a2 & 1);
}

uint64_t ot::Mle::Mle::setScanHighPriority(uint64_t this, char a2)
{
  *(this + 65) = a2 & 1;
  return this;
}

{
  return ot::Mle::Mle::setScanHighPriority(this, a2);
}

uint64_t otThreadGetScanHighPriority(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::getScanHighPriority(v2);
}

uint64_t ot::Mle::Mle::getScanHighPriority(ot::Mle::Mle *this)
{
  return *(this + 65) & 1;
}

{
  return ot::Mle::Mle::getScanHighPriority(this);
}

void otThreadSetCoexConfigInfo(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  ot::Mle::Mle::setThreadCoexConfigInfo(v2);
}

void ot::Mle::Mle::setThreadCoexConfigInfo(ot::Mle::Mle *this)
{
  Role = ot::Mle::Mle::GetRole(this);
  ot::Mle::Mle::SetThreadCoexConfig(this, 0, Role, *(this + 132));
}

{
  ot::Mle::Mle::setThreadCoexConfigInfo(this);
}

uint64_t otThreadSetFirmwareUpdate(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::Mle>(v2);
  return ot::Mle::Mle::setFirmwareUpdate(v3, a2 & 1, v4, v5, v6, v7, v8, v9);
}

uint64_t otThreadGetWasChild(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::wasChild(v2);
}

uint64_t ot::Mle::Mle::wasChild(ot::Mle::Mle *this)
{
  return *(this + 64) & 1;
}

{
  return ot::Mle::Mle::wasChild(this);
}

void otThreadSetWasChild(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::Mle>(v2);
  ot::Mle::Mle::setWasChild(v3, a2 & 1);
}

void ot::Mle::Mle::setWasChild(ot::Mle::Mle *this, char a2)
{
  *(this + 64) = a2 & 1;
  ot::Mle::Mle::Store(this);
  IgnoreError();
}

{
  ot::Mle::Mle::setWasChild(this, a2);
}

uint64_t otThreadIsEnhCslPeerUnlinking(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::IsCslPeripheralDetaching(v2);
}

uint64_t ot::Mle::Mle::IsCslPeripheralDetaching(ot::Mle::Mle *this)
{
  return *(this + 856) & 1;
}

{
  return ot::Mle::Mle::IsCslPeripheralDetaching(this);
}

void otThreadGetCslPeripheralMleID(uint64_t a1, char *a2, __int16 a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::Mle>(v3);
  CslPeripheral = ot::Mle::Mle::GetCslPeripheral(v4);
  if (CslPeripheral)
  {
    Rloc16 = ot::Neighbor::GetRloc16(CslPeripheral);
    ot::AsCoreType<otInstance>(v14);
    v6 = ot::Instance::Get<ot::Mle::Mle>(v5);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v6);
    ot::ChildTable::FindChild(v7, Rloc16, 0);
    if (v8)
    {
      if (!ot::Child::GetMeshLocalIp6Address(v8, v10))
      {
        otIp6AddressToString(v10, v13, v12);
      }
    }
  }
}

uint64_t ot::Mle::Mle::GetCslPeripheral(ot::Mle::Mle *this)
{
  return *(this + 103);
}

{
  return ot::Mle::Mle::GetCslPeripheral(this);
}

uint64_t otThreadGetCslPeripheralAddr(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  CslPeripheral = ot::Mle::Mle::GetCslPeripheral(v2);
  if (!CslPeripheral)
  {
    return 0;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      ot::Neighbor::GetExtAddress(CslPeripheral);
      ot::Mac::ExtAddress::ToString(v3, v12);
      v4 = ot::String<(unsigned short)17>::AsCString(v12);
      __os_log_helper_16_2_2_8_32_8_32(v13, "otThreadGetCslPeripheralAddr", v4);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: CSL peripheral address: %s \n", v13, 0x16u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
  }

  ot::Neighbor::GetExtAddress(CslPeripheral);
  ot::Mac::ExtAddress::ToString(v5, v10);
  return ot::String<(unsigned short)17>::AsCString(v10);
}

void ot::Neighbor::GetExtAddress(ot::Neighbor *this)
{
  ;
}

{
  ;
}

{
  ot::Neighbor::GetExtAddress(this);
}

{
  ot::Neighbor::GetExtAddress(this);
}

uint64_t otThreadWedWakeUpPattern(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::WedWakeUpPattern(v2);
}

uint64_t otThreadWedGetEcslPeriod(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::getEcslPeriod(v2);
}

BOOL otThreadIsEnhCslPeerLinked(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::IsCslPeripheralAttached(v2);
}

BOOL ot::Mle::Mle::IsCslPeripheralAttached(ot::Mle::Mle *this)
{
  v2 = 1;
  if (*(this + 128) != 3)
  {
    return *(this + 128) == 4;
  }

  return v2;
}

{
  return ot::Mle::Mle::IsCslPeripheralAttached(this);
}

uint64_t otThreadDetachEnhCslPeer(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::DetachCslPeripheral(v2);
}

uint64_t otThreadGetTriggerBasedIp6Counters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::GetTriggerBasedCounters(v2);
}

uint64_t ot::MeshForwarder::GetTriggerBasedCounters(ot::MeshForwarder *this)
{
  return this + 192;
}

{
  return ot::MeshForwarder::GetTriggerBasedCounters(this);
}

void *otThreadResetTriggerBasedIp6Counters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::ResetTriggerBasedCounters(v2);
}

void *ot::MeshForwarder::ResetTriggerBasedCounters(ot::MeshForwarder *this)
{
  return memset(this + 192, 0, 0x38uLL);
}

{
  return ot::MeshForwarder::ResetTriggerBasedCounters(this);
}

uint64_t otThreadGetMleTriggerBasedCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetTriggerBasedCounters(v2);
}

uint64_t ot::Mle::Mle::GetTriggerBasedCounters(ot::Mle::Mle *this)
{
  return this + 788;
}

{
  return ot::Mle::Mle::GetTriggerBasedCounters(this);
}

uint64_t otThreadResetMleTriggerBasedCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::ResetMleTriggerBasedCounters(v2);
}

uint64_t ot::Mle::Mle::ResetMleTriggerBasedCounters(uint64_t this)
{
  *(this + 788) = 0;
  *(this + 796) = 0;
  *(this + 804) = 0;
  return this;
}

{
  return ot::Mle::Mle::ResetMleTriggerBasedCounters(this);
}

uint64_t otThreadGetBbrCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  return ot::BackboneRouter::Local::GetBbrCounters(v2);
}

uint64_t ot::BackboneRouter::Local::GetBbrCounters(ot::BackboneRouter::Local *this)
{
  return this + 120;
}

{
  return ot::BackboneRouter::Local::GetBbrCounters(this);
}

uint64_t otThreadResetBbrCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  return ot::BackboneRouter::Local::ResetBbrCounters(v2);
}

uint64_t ot::BackboneRouter::Local::ResetBbrCounters(uint64_t this)
{
  *(this + 120) = 0;
  *(this + 124) = 0;
  return this;
}

{
  return ot::BackboneRouter::Local::ResetBbrCounters(this);
}

uint64_t otThreadGetMleLinkLossCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetLinkLossCounters(v2);
}

uint64_t ot::Mle::Mle::GetLinkLossCounters(ot::Mle::Mle *this)
{
  return this + 784;
}

{
  return ot::Mle::Mle::GetLinkLossCounters(this);
}

uint64_t otThreadResetMleLinkLossCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::ResetLinkLossCounters(v2);
}

uint64_t ot::Mle::Mle::ResetLinkLossCounters(uint64_t this)
{
  *(this + 784) = 0;
  return this;
}

{
  return ot::Mle::Mle::ResetLinkLossCounters(this);
}

void otThreadGetConnectedRouterNodesHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::MleRouter::GetConnectedRouterNodesHistogram(v3, a2);
}

void *otThreadResetConnectedRouterNodesHistogram(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::ClearConnectedRouterNodesHistogram(v2);
}

void otThreadGetConnectedChildNodesHistogram(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::MleRouter::GetConnectedChildNodesHistogram(v3, a2);
}

void *otThreadResetConnectedChildNodesHistogram(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::ClearConnectedChildNodesHistogram(v2);
}

ot::StringWriter *otConvertDurationInSecondsToString(unsigned int a1, char *a2, __int16 a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  ot::StringWriter::StringWriter(v5, a2, a3);
  v3 = ot::Uptime::SecToMsec(v8);
  return ot::Uptime::UptimeToString(v3, v5, 0);
}

uint64_t ot::Uptime::SecToMsec(ot::Uptime *this)
{
  return 1000 * this;
}

{
  return ot::Uptime::SecToMsec(this);
}

void *ot::ClearAllBytes<otIpCounters>(void *a1)
{
  return memset(a1, 0, 0x38uLL);
}

{
  return ot::ClearAllBytes<otIpCounters>(a1);
}

uint64_t ot::MeshForwarder::TxQueueStats::GetMaxInterval(ot::MeshForwarder::TxQueueStats *this)
{
  return *this;
}

{
  return ot::MeshForwarder::TxQueueStats::GetMaxInterval(this);
}

void ot::Clearable<ot::MeshForwarder::TxQueueStats>::Clear(void *a1)
{
  ot::ClearAllBytes<ot::MeshForwarder::TxQueueStats>(a1);
}

{
  ot::Clearable<ot::MeshForwarder::TxQueueStats>::Clear(a1);
}

void ot::ClearAllBytes<ot::MeshForwarder::TxQueueStats>(void *a1)
{
  bzero(a1, 0x34CuLL);
}

{
  ot::ClearAllBytes<ot::MeshForwarder::TxQueueStats>(a1);
}

uint64_t otThreadGetMaxAllowedChildren(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ChildTable>(v1);
  return ot::ChildTable::GetMaxChildrenAllowed(v2);
}

uint64_t ot::ChildTable::GetMaxChildrenAllowed(ot::ChildTable *this)
{
  return *this;
}

{
  return ot::ChildTable::GetMaxChildrenAllowed(this);
}

uint64_t otThreadSetMaxAllowedChildren(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::ChildTable>(v2);
  return ot::ChildTable::SetMaxChildrenAllowed(v3, a2);
}

uint64_t otThreadGetMaxChildIpAddresses(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetMaxChildIpAddresses(v2);
}

uint64_t otThreadIsRouterEligible(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::IsRouterEligible(v2);
}

uint64_t otThreadSetRouterEligible(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetRouterEligible(v3, a2 & 1);
}

uint64_t otThreadSetPreferredRouterId(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetPreferredRouterId(v3, a2);
}

uint64_t otThreadGetLocalLeaderWeight(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetLeaderWeight(v2);
}

uint64_t ot::Mle::MleRouter::GetLeaderWeight(ot::Mle::MleRouter *this)
{
  return *(this + 35631);
}

{
  return ot::Mle::MleRouter::GetLeaderWeight(this);
}

uint64_t otThreadSetLocalLeaderWeight(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetLeaderWeight(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetLeaderWeight(uint64_t this, char a2)
{
  *(this + 35631) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetLeaderWeight(this, a2);
}

uint64_t otThreadGetJoinerUdpPort(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::JoinerRouter>(v1);
  return ot::MeshCoP::JoinerRouter::GetJoinerUdpPort(v2);
}

uint64_t ot::Instance::Get<ot::MeshCoP::JoinerRouter>(uint64_t a1)
{
  return a1 + 146336;
}

{
  return ot::Instance::Get<ot::MeshCoP::JoinerRouter>(a1);
}

uint64_t otThreadSetJoinerUdpPort(uint64_t a1, __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::JoinerRouter>(v2);
  ot::MeshCoP::JoinerRouter::SetJoinerUdpPort(v3, a2);
  return 0;
}

uint64_t otThreadGetContextIdReuseDelay(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::Leader::GetContextIdReuseDelay(v2);
}

uint64_t ot::NetworkData::Leader::GetContextIdReuseDelay(ot::NetworkData::Leader *this)
{
  return ot::NetworkData::Leader::ContextIds::GetReuseDelay((this + 272));
}

{
  return ot::NetworkData::Leader::GetContextIdReuseDelay(this);
}

uint64_t otThreadSetContextIdReuseDelay(uint64_t a1, int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::NetworkData::Leader>(v2);
  return ot::NetworkData::Leader::SetContextIdReuseDelay(v3, a2);
}

uint64_t ot::NetworkData::Leader::SetContextIdReuseDelay(ot::NetworkData::Leader *this, int a2)
{
  return ot::NetworkData::Leader::ContextIds::SetReuseDelay(this + 272, a2);
}

{
  return ot::NetworkData::Leader::SetContextIdReuseDelay(this, a2);
}

uint64_t otThreadGetNetworkIdTimeout(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetNetworkIdTimeout(v2);
}

uint64_t ot::Mle::MleRouter::GetNetworkIdTimeout(ot::Mle::MleRouter *this)
{
  return *(this + 35628);
}

{
  return ot::Mle::MleRouter::GetNetworkIdTimeout(this);
}

uint64_t otThreadSetNetworkIdTimeout(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetNetworkIdTimeout(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetNetworkIdTimeout(uint64_t this, char a2)
{
  *(this + 35628) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetNetworkIdTimeout(this, a2);
}

uint64_t otThreadGetRouterUpgradeThreshold(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetRouterUpgradeThreshold(v2);
}

uint64_t ot::Mle::MleRouter::GetRouterUpgradeThreshold(ot::Mle::MleRouter *this)
{
  return *(this + 35629);
}

{
  return ot::Mle::MleRouter::GetRouterUpgradeThreshold(this);
}

uint64_t otThreadSetRouterUpgradeThreshold(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetRouterUpgradeThreshold(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetRouterUpgradeThreshold(uint64_t this, char a2)
{
  *(this + 35629) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetRouterUpgradeThreshold(this, a2);
}

uint64_t otThreadGetChildRouterLinks(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetChildRouterLinks(v2);
}

uint64_t ot::Mle::MleRouter::GetChildRouterLinks(ot::Mle::MleRouter *this)
{
  return *(this + 35704);
}

{
  return ot::Mle::MleRouter::GetChildRouterLinks(this);
}

uint64_t otThreadSetChildRouterLinks(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetChildRouterLinks(v3, a2);
}

uint64_t otThreadReleaseRouterId(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0x3Eu)
  {
    ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::RouterTable>(v2);
    return ot::RouterTable::Release(v3, a2);
  }

  else
  {
    return 7;
  }
}

uint64_t otThreadBecomeRouter(uint64_t a1)
{
  v7 = 13;
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  Role = ot::Mle::Mle::GetRole(v2);
  if (Role > 1)
  {
    if (Role == 2)
    {
      ot::AsCoreType<otInstance>(a1);
      v4 = ot::Instance::Get<ot::Mle::MleRouter>(v3);
      return ot::Mle::MleRouter::BecomeRouter(v4, 3u);
    }

    else if (Role == 4 || Role == 3)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t otThreadBecomeLeader(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::BecomeLeader(v3, a2 & 1);
}

uint64_t otThreadBecomeLeader(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::BecomeLeader(v2, 1);
}

uint64_t otThreadGetRouterDowngradeThreshold(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetRouterDowngradeThreshold(v2);
}

uint64_t ot::Mle::MleRouter::GetRouterDowngradeThreshold(ot::Mle::MleRouter *this)
{
  return *(this + 35630);
}

{
  return ot::Mle::MleRouter::GetRouterDowngradeThreshold(this);
}

uint64_t otThreadSetRouterDowngradeThreshold(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetRouterDowngradeThreshold(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetRouterDowngradeThreshold(uint64_t this, char a2)
{
  *(this + 35630) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetRouterDowngradeThreshold(this, a2);
}

uint64_t otThreadGetRouterSelectionJitter(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetRouterSelectionJitter(v2);
}

uint64_t ot::Mle::MleRouter::GetRouterSelectionJitter(ot::Mle::MleRouter *this)
{
  return ot::Mle::MleRouter::RouterRoleTransition::GetJitter((this + 35702));
}

{
  return ot::Mle::MleRouter::GetRouterSelectionJitter(this);
}

uint64_t otThreadSetRouterSelectionJitter(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetRouterSelectionJitter(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetRouterSelectionJitter(ot::Mle::MleRouter *this, char a2)
{
  return ot::Mle::MleRouter::RouterRoleTransition::SetJitter(this + 35702, a2);
}

{
  return ot::Mle::MleRouter::SetRouterSelectionJitter(this, a2);
}

uint64_t otThreadGetChildInfoById(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::ChildTable>(v3);
  ot::AsCoreType<otChildInfo>(a3);
  return ot::ChildTable::GetChildInfoById(v6, a2, v4);
}

void ot::AsCoreType<otChildInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otChildInfo>(a1);
}

uint64_t otThreadGetChildInfoByIndex(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::ChildTable>(v3);
  ot::AsCoreType<otChildInfo>(a3);
  return ot::ChildTable::GetChildInfoByIndex(v6, a2, v4);
}

uint64_t otThreadGetChildNextIp6Address(uint64_t a1, unsigned __int16 a2, unsigned __int16 *a3, uint64_t a4)
{
  if (!a3)
  {
    __assert_rtn("otThreadGetChildNextIp6Address", "thread_ftd_api.cpp", 257, "(aIterator) != nullptr");
  }

  if (!a4)
  {
    __assert_rtn("otThreadGetChildNextIp6Address", "thread_ftd_api.cpp", 258, "(aAddress) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ChildTable>(v4);
  ChildAtIndex = ot::ChildTable::GetChildAtIndex(v5, a2);
  if (ChildAtIndex)
  {
    if (ot::Neighbor::IsStateValidOrRestoring(ChildAtIndex))
    {
      ot::AsCoreType<otIp6Address>(a4);
      return ot::Child::GetNextIp6Address(ChildAtIndex, a3, v6);
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

BOOL ot::Neighbor::IsStateValidOrRestoring(ot::Neighbor *this)
{
  v2 = 1;
  if ((*(this + 30) & 0xF) != 7)
  {
    return ot::Neighbor::IsStateRestoring(this);
  }

  return v2;
}

{
  return ot::Neighbor::IsStateValidOrRestoring(this);
}

uint64_t otThreadGetRouterIdSequence(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::RouterTable>(v1);
  return ot::RouterTable::GetRouterIdSequence(v2);
}

uint64_t ot::RouterTable::GetRouterIdSequence(ot::RouterTable *this)
{
  return *(this + 4708);
}

{
  return ot::RouterTable::GetRouterIdSequence(this);
}

uint64_t otThreadGetRouterInfo(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::RouterTable>(v3);
  ot::AsCoreType<otRouterInfo>(a3);
  return ot::RouterTable::GetRouterInfo(v6, a2, v4);
}

uint64_t otThreadGetNextCacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v8 = ot::Instance::Get<ot::AddressResolver>(v3);
  ot::AsCoreType<otCacheEntryInfo>(a2);
  v7 = v4;
  ot::AsCoreType<otCacheEntryIterator>(a3);
  return ot::AddressResolver::GetNextCacheEntry(v8, v7, v5);
}

uint64_t ot::Instance::Get<ot::AddressResolver>(uint64_t a1)
{
  return a1 + 127088;
}

{
  return ot::Instance::Get<ot::AddressResolver>(a1);
}

void ot::AsCoreType<otCacheEntryInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otCacheEntryInfo>(a1);
}

void ot::AsCoreType<otCacheEntryIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otCacheEntryIterator>(a1);
}

ot::AddressResolver::CacheEntry *otThreadClearEidCache(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AddressResolver>(v1);
  return ot::AddressResolver::Clear(v2);
}

uint64_t otThreadLookUpRloc16(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AddressResolver>(v2);
  ot::AsCoreType<otIp6Address>(a2);
  return ot::AddressResolver::LookUp(v5, v3);
}

uint64_t otThreadResolve(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::AddressResolver>(v3);
  ot::AsCoreType<otIp6Address>(a2);
  return ot::AddressResolver::Resolve(v6, v4, a3);
}

uint64_t ot::AddressResolver::Resolve(ot::AddressResolver *this, __n128 *a2, unsigned __int16 *a3)
{
  return ot::AddressResolver::Resolve(this, a2, a3, 1);
}

{
  return ot::AddressResolver::Resolve(this, a2, a3);
}

void *otThreadGetMeshLocalEIdFromAddressCache(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::AddressResolver>(v4);
  ot::AsCoreType<otIp6Address>(a2);
  v8 = v5;
  ot::AsCoreType<otIp6Address>(a3);
  return ot::AddressResolver::GetMeshLocalEid(v9, v8, v6, a4);
}

double otThreadGetPskc(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::KeyManager>(v2);
  ot::AsCoreType<otPskc>(a2);
  *&result = ot::KeyManager::GetPskc(v5, v3).n128_u64[0];
  return result;
}

uint64_t otThreadSetPskc(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    ot::AsCoreType<otInstance>(a1);
    v11 = ot::Instance::Get<ot::KeyManager>(v4);
    ot::AsCoreType<otPskc>(a2);
    ot::KeyManager::SetPskc(v11, v5);
    ot::AsCoreType<otInstance>(a1);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v6);
    ot::MeshCoP::DatasetManager::Clear(active);
    ot::AsCoreType<otInstance>(a1);
    v9 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(v9);
  }

  else
  {
    return 13;
  }

  return v12;
}

uint64_t otThreadGetParentPriority(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetAssignParentPriority(v2);
}

uint64_t ot::Mle::MleRouter::GetAssignParentPriority(ot::Mle::MleRouter *this)
{
  return *(this + 35706);
}

{
  return ot::Mle::MleRouter::GetAssignParentPriority(this);
}

uint64_t otThreadSetParentPriority(uint64_t a1, signed __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetAssignParentPriority(v3, a2);
}

void *otThreadRegisterNeighborTableCallback(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::NeighborTable>(v2);
  return ot::NeighborTable::RegisterCallback(v3, a2);
}

void *ot::NeighborTable::RegisterCallback(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::NeighborTable::RegisterCallback(result, a2);
}

void *otThreadSetDiscoveryRequestCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::MleRouter>(v3);
  return ot::Mle::MleRouter::SetDiscoveryRequestCallback(v4, a2, a3);
}

void *ot::Mle::MleRouter::SetDiscoveryRequestCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::Set((a1 + 35744), a2, a3);
}

{
  return ot::Mle::MleRouter::SetDiscoveryRequestCallback(a1, a2, a3);
}

BOOL otThreadIsRouterIdAllocated(uint64_t a1, unsigned __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::RouterTable>(v2);
  return ot::RouterTable::IsAllocated(v3, a2);
}

void otThreadGetNextHopAndPathCost(uint64_t a1, unsigned __int16 a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = 0;
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::RouterTable>(v4);
  if (v10)
  {
    v5 = v10;
  }

  else
  {
    v5 = &v7;
  }

  if (v9)
  {
    ot::RouterTable::GetNextHopAndPathCost(v6, v11, v5, v9);
  }

  else
  {
    ot::RouterTable::GetNextHopAndPathCost(v6, v11, v5, &v8);
  }
}

uint64_t ot::NetworkData::Leader::ContextIds::GetReuseDelay(ot::NetworkData::Leader::ContextIds *this)
{
  return *(this + 15);
}

{
  return ot::NetworkData::Leader::ContextIds::GetReuseDelay(this);
}

uint64_t ot::NetworkData::Leader::ContextIds::SetReuseDelay(uint64_t this, int a2)
{
  *(this + 60) = a2;
  return this;
}

{
  return ot::NetworkData::Leader::ContextIds::SetReuseDelay(this, a2);
}

uint64_t ot::Mle::MleRouter::RouterRoleTransition::GetJitter(ot::Mle::MleRouter::RouterRoleTransition *this)
{
  return *(this + 1);
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::GetJitter(this);
}

uint64_t ot::Mle::MleRouter::RouterRoleTransition::SetJitter(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::SetJitter(this, a2);
}

BOOL ot::Neighbor::IsStateRestoring(ot::Neighbor *this)
{
  v2 = 1;
  if ((*(this + 30) & 0xF) != 1)
  {
    return (*(this + 30) & 0xF) == 6;
  }

  return v2;
}

{
  return ot::Neighbor::IsStateRestoring(this);
}

void *ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::Set(result, a2, a3);
}

ot::Message *otUdpNewMessage(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  v3 = ot::Message::Settings::From(a2);
  return ot::Ip6::Udp::NewMessage(v5, 0, v3);
}

uint64_t otUdpOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::Ip6::Udp>(v4);
  ot::AsCoreType<otUdpSocket>(a2);
  return ot::Ip6::Udp::Open(v7, v5, a3, a4);
}

void ot::AsCoreType<otUdpSocket>(uint64_t a1)
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
  ot::AsCoreType<otUdpSocket>(a1);
}

{
  ot::AsCoreType<otUdpSocket>(a1);
}

BOOL otUdpIsOpen(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  ot::AsCoreType<otUdpSocket>(a2);
  return ot::Ip6::Udp::IsOpen(v5, v3);
}

BOOL ot::Ip6::Udp::IsOpen(ot::Ip6::Udp *this, const ot::Ip6::Udp::SocketHandle *a2)
{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Contains(this + 2, a2);
}

{
  return ot::Ip6::Udp::IsOpen(this, a2);
}

uint64_t otUdpClose(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  ot::AsCoreType<otUdpSocket>(a2);
  return ot::Ip6::Udp::Close(v5, v3);
}

uint64_t otUdpBind(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoreType<otInstance>(a1);
  v11 = ot::Instance::Get<ot::Ip6::Udp>(v4);
  ot::AsCoreType<otUdpSocket>(a2);
  v9 = v5;
  ot::AsCoreType<otSockAddr>(a3);
  v10 = v6;
  v7 = ot::MapEnum<otNetifIdentifier>(a4);
  return ot::Ip6::Udp::Bind(v11, v9, v10, v7);
}

uint64_t ot::MapEnum<otNetifIdentifier>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otNetifIdentifier>(result);
}

uint64_t otUdpConnect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v8 = ot::Instance::Get<ot::Ip6::Udp>(v3);
  ot::AsCoreType<otUdpSocket>(a2);
  v7 = v4;
  ot::AsCoreType<otSockAddr>(a3);
  return ot::Ip6::Udp::Connect(v8, v7, v5);
}

uint64_t otUdpSend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ot::AsCoreType<otMessage>(a3);
  if (ot::Message::IsOriginThreadNetif (v4))
  {
    return 7;
  }

  else
  {
    ot::AsCoreType<otInstance>(a1);
    v12 = ot::Instance::Get<ot::Ip6::Udp>(v5);
    ot::AsCoreType<otUdpSocket>(a2);
    v10 = v6;
    ot::AsCoreType<otMessage>(a3);
    v11 = v7;
    ot::AsCoreType<otMessageInfo>(a4);
    return ot::Ip6::Udp::SendTo(v12, v10, v11, v8);
  }
}

uint64_t otUdpAddReceiver(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  ot::AsCoreType<otUdpReceiver>(a2);
  return ot::Ip6::Udp::AddReceiver(v5, v3);
}

void ot::AsCoreType<otUdpReceiver>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otUdpReceiver>(a1);
}

uint64_t otUdpRemoveReceiver(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  ot::AsCoreType<otUdpReceiver>(a2);
  return ot::Ip6::Udp::RemoveReceiver(v5, v3);
}

uint64_t otUdpSendDatagram(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otMessage>(a2);
  if (ot::Message::IsOriginThreadNetif (v3))
  {
    return 7;
  }

  else
  {
    ot::AsCoreType<otInstance>(a1);
    v9 = ot::Instance::Get<ot::Ip6::Udp>(v4);
    ot::AsCoreType<otMessage>(a2);
    v8 = v5;
    ot::AsCoreType<otMessageInfo>(a3);
    return ot::Ip6::Udp::SendDatagram(v9, v8, v6);
  }
}

uint64_t otUdpIsPortInUse(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  return ot::Ip6::Udp::IsPortInUse(v3, a2);
}

BOOL ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Contains(uint64_t *a1, uint64_t a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(a1, a2, v3) == 0;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Contains(a1, a2);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(i))
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
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(a1, a2, a3);
}

uint64_t ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(uint64_t a1)
{
  return *(a1 + 64);
}

{
  return *(a1 + 64);
}

{
  return ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(a1);
}

ot::BackboneRouter::BackboneTmfAgent *ot::BackboneRouter::BackboneTmfAgent::BackboneTmfAgent(ot::BackboneRouter::BackboneTmfAgent *this, ot::Instance *a2)
{
  ot::Coap::Coap::Coap(this, a2);
  ot::Coap::CoapBase::SetInterceptor(this, ot::BackboneRouter::BackboneTmfAgent::Filter, this);
  ot::Coap::CoapBase::SetResourceHandler(this, ot::BackboneRouter::BackboneTmfAgent::HandleResource);
  return this;
}

{
  ot::BackboneRouter::BackboneTmfAgent::BackboneTmfAgent(this, a2);
  return this;
}

void *ot::Coap::CoapBase::SetInterceptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::Set((a1 + 56), a2, a3);
}

{
  return ot::Coap::CoapBase::SetInterceptor(a1, a2, a3);
}

uint64_t ot::BackboneRouter::BackboneTmfAgent::Filter(ot::BackboneRouter::BackboneTmfAgent *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, void *a4)
{
  if (ot::BackboneRouter::BackboneTmfAgent::IsBackboneTmfMessage(a3, a2))
  {
    return 0;
  }

  else
  {
    return 31;
  }
}

uint64_t ot::BackboneRouter::BackboneTmfAgent::Start(ot::BackboneRouter::BackboneTmfAgent *this)
{
  v11 = ot::Coap::Coap::Start(this, 61631, 2);
  if (!v11)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Bbr", "Start listening on port %u", v1, v2, v3, v4, v5, v6, 61631);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
    AllNetworkBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(v7);
    ot::BackboneRouter::BackboneTmfAgent::SubscribeMulticast(this, AllNetworkBackboneRoutersAddress);
  }

  return v11;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::Local>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
}

uint64_t ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(ot::BackboneRouter::Local *this)
{
  return this + 72;
}

{
  return ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(this);
}

uint64_t ot::BackboneRouter::BackboneTmfAgent::HandleResource(ot::BackboneRouter::BackboneTmfAgent *this, ot *a2, ot::Coap::Message *a3, const ot::Ip6::MessageInfo *a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v11 = 1;
  v9 = ot::UriFromPath(a2, a2, a3, a4, a5, a6);
  if (v9 == 7)
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
    ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)7>(v7, a3, a4);
  }

  else if (v9 == 9)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
    ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)9>(v6, a3, a4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::Manager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(a1);
}

BOOL ot::BackboneRouter::BackboneTmfAgent::IsBackboneTmfMessage(ot::BackboneRouter::BackboneTmfAgent *this, const ot::Ip6::MessageInfo *a2)
{
  ot::Ip6::MessageInfo::GetSockAddr(a2);
  v16 = v2;
  ot::Ip6::MessageInfo::GetPeerAddr(a2);
  v15 = v3;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  v14 = 0;
  if (ot::BackboneRouter::Local::IsEnabled(v4))
  {
    v14 = 0;
    if (ot::Ip6::Address::IsLinkLocalUnicast(v15, v5))
    {
      v12 = 1;
      if (!ot::Ip6::Address::IsLinkLocalUnicast(v16, v6))
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
        AllNetworkBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(v7);
        v12 = 1;
        if (!ot::Equatable<ot::Ip6::Address>::operator==(v16, AllNetworkBackboneRoutersAddress))
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
          AllDomainBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(v9);
          return ot::Equatable<ot::Ip6::Address>::operator==(v16, AllDomainBackboneRoutersAddress);
        }
      }

      return v12;
    }
  }

  return v14;
}

void ot::Ip6::MessageInfo::GetSockAddr(ot::Ip6::MessageInfo *this)
{
  ot::AsCoreType<otIp6Address>(this);
}

{
  ot::AsCoreType<otIp6Address>(this);
}

{
  ot::Ip6::MessageInfo::GetSockAddr(this);
}

{
  ot::Ip6::MessageInfo::GetSockAddr(this);
}

BOOL ot::BackboneRouter::Local::IsEnabled(ot::BackboneRouter::Local *this)
{
  return *(this + 1) != 0;
}

{
  return ot::BackboneRouter::Local::IsEnabled(this);
}

uint64_t ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(ot::BackboneRouter::Local *this)
{
  return this + 88;
}

{
  return ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(this);
}

void ot::BackboneRouter::BackboneTmfAgent::LogError(uint64_t a1, const char *a2, ot::Ip6::Address *a3, int a4)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  if (a4)
  {
    v18 = v26;
    ot::Ip6::Address::ToString(v26, v23);
    v19 = ot::String<(unsigned short)40>::AsCString(v26);
    v11 = ot::ErrorToString(v22);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("Bbr", "%s %s: %s", v12, v13, v14, v15, v16, v17, v24, v19, v11);
  }

  else
  {
    v20 = v27;
    ot::Ip6::Address::ToString(v27, v23);
    v21 = ot::String<(unsigned short)40>::AsCString(v27);
    v4 = ot::ErrorToString(0);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Bbr", "%s %s: %s", v5, v6, v7, v8, v9, v10, v24, v21, v4);
  }
}

void *ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::Set(result, a2, a3);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::Manager>(uint64_t a1)
{
  return a1 + 146592;
}

{
  return ot::Instance::Get<ot::BackboneRouter::Manager>(a1);
}

ot::BackboneRouter::Leader *ot::BackboneRouter::Leader::Leader(ot::BackboneRouter::Leader *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::BackboneRouter::Leader::Reset(this);
  return this;
}

{
  ot::BackboneRouter::Leader::Leader(this, a2);
  return this;
}

uint64_t ot::Ip6::Prefix::SetLength(uint64_t this, char a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Ip6::Prefix::SetLength(this, a2);
}

uint64_t ot::BackboneRouter::Leader::GetConfig(ot::BackboneRouter::Leader *a1, uint64_t a2)
{
  v4 = 0;
  if (ot::BackboneRouter::Leader::HasPrimary(a1))
  {
    *a2 = *a1;
    *(a2 + 8) = *(a1 + 2);
  }

  else
  {
    return 23;
  }

  return v4;
}

BOOL ot::BackboneRouter::Leader::HasPrimary(ot::BackboneRouter::Leader *this)
{
  return *this != 65534;
}

{
  return ot::BackboneRouter::Leader::HasPrimary(this);
}

uint64_t ot::BackboneRouter::Leader::GetServiceId(ot::BackboneRouter::Leader *this, unsigned __int8 *a2)
{
  if (ot::BackboneRouter::Leader::HasPrimary(this))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(this);
    return ot::NetworkData::Service::Manager::GetServiceId<ot::NetworkData::Service::BackboneRouter>(v2, 1, a2);
  }

  else
  {
    return 23;
  }
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Service::Manager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(a1);
}

uint64_t ot::NetworkData::Service::Manager::GetServiceId<ot::NetworkData::Service::BackboneRouter>(ot::NetworkData::Service::Manager *a1, char a2, unsigned __int8 *a3)
{
  return ot::NetworkData::Service::Manager::GetServiceId(a1, &ot::NetworkData::Service::BackboneRouter::kServiceData, 1, a2 & 1, a3);
}

{
  return ot::NetworkData::Service::Manager::GetServiceId<ot::NetworkData::Service::BackboneRouter>(a1, a2, a3);
}

void ot::BackboneRouter::Leader::LogBackboneRouterPrimary(uint64_t a1, unsigned __int8 a2, unsigned __int16 *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v3 = ot::BackboneRouter::Leader::StateToString(a2);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLeader", "PBBR state: %s", v4, v5, v6, v7, v8, v9, v3);
  if (v21 != 2)
  {
    if (v21)
    {
      v17 = *v20;
      v18 = *(v20 + 8);
      v19 = v20[1];
      v10 = ot::ToUlong(*(v20 + 1));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLeader", "Rloc16:0x%4x, seqno:%u, delay:%u, timeout:%lu", v11, v12, v13, v14, v15, v16, v17, v18, v19, v10);
    }
  }
}

void ot::BackboneRouter::Leader::UpdateBackboneRouterPrimary(ot::BackboneRouter::Leader *this)
{
  v19 = this;
  v14 = this;
  v16 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(this);
  ot::NetworkData::Service::Manager::GetBackboneRouterPrimary(v1, &v17);
  if (v17 == *v14)
  {
    if (v17 == 65534)
    {
      v16 = 0;
    }

    else if (v18 == *(v14 + 8))
    {
      if (WORD1(v17) == v14[1] && HIDWORD(v17) == *(v14 + 1))
      {
        v16 = 5;
      }

      else
      {
        v16 = 4;
      }
    }

    else
    {
      v16 = 3;
    }
  }

  else if (v17 == 65534)
  {
    v16 = 2;
  }

  else if (*v14 == 65534)
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  if (v17 != 65534)
  {
    v15 = HIDWORD(v17);
    HIDWORD(v17) = ot::Clamp<unsigned int>(HIDWORD(v17), 0x12Cu, 0x20C49Bu);
    if (HIDWORD(v17) != v15)
    {
      v13 = ot::ToUlong(v15);
      v2 = ot::ToUlong(HIDWORD(v17));
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("BbrLeader", "Leader MLR Timeout is normalized from %lu to %lu", v3, v4, v5, v6, v7, v8, v13, v2);
    }
  }

  v9 = v14;
  *v14 = v17;
  *(v9 + 2) = v18;
  ot::BackboneRouter::Leader::LogBackboneRouterPrimary(v9, v16, v9);
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(v14);
  ot::BackboneRouter::Local::HandleBackboneRouterPrimaryUpdate(v10, v16, v14);
  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(v14);
  ot::MlrManager::HandleBackboneRouterPrimaryUpdate(v11, v16);
  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(v14);
  ot::DuaManager::HandleBackboneRouterPrimaryUpdate(v12, v16);
}

void ot::BackboneRouter::Leader::UpdateDomainPrefixConfig(ot::BackboneRouter::Leader *this)
{
  v24 = this;
  v18 = this;
  v23 = 0;
  v20 = 0;
  v19 = 0;
  while (1)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v18);
    if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v1, &v23, v21))
    {
      break;
    }

    if ((v22 & 0x400) != 0)
    {
      v19 = 1;
      break;
    }
  }

  if (v19)
  {
    ot::NetworkData::OnMeshPrefixConfig::GetPrefix(v21);
    if (ot::Ip6::Prefix::operator==(v2, (v18 + 12)))
    {
      v20 = 3;
    }

    else
    {
      if (ot::BackboneRouter::Leader::HasDomainPrefix(v18))
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }

      v20 = v3;
      ot::NetworkData::OnMeshPrefixConfig::GetPrefix(v21);
      v4 = v18;
      *(v18 + 12) = *v5;
      *(v4 + 28) = *(v5 + 16);
    }
  }

  else
  {
    if (!ot::BackboneRouter::Leader::HasDomainPrefix(v18))
    {
      return;
    }

    ot::Clearable<ot::Ip6::Prefix>::Clear(v18 + 12);
    v20 = 1;
  }

  v17 = ot::BackboneRouter::Leader::DomainPrefixEventToString(v20);
  v16 = v25;
  ot::Ip6::Prefix::ToString((v18 + 12), v25);
  v6 = ot::String<(unsigned short)45>::AsCString(v25);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLeader", "%s domain Prefix: %s", v7, v8, v9, v10, v11, v12, v17, v6);
  v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(v18);
  ot::BackboneRouter::Local::HandleDomainPrefixUpdate(v13, v20);
  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::NdProxyTable>(v18);
  ot::BackboneRouter::NdProxyTable::HandleDomainPrefixUpdate(v14, v20);
  v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(v18);
  ot::DuaManager::HandleDomainPrefixUpdate(v15, v20);
}

uint64_t ot::Clamp<unsigned int>(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v4 = ot::Max<unsigned int>(a1, a2);
  return ot::Min<unsigned int>(v4, a3);
}

{
  return ot::Clamp<unsigned int>(a1, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MlrManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::DuaManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(a1);
}

BOOL ot::BackboneRouter::Leader::HasDomainPrefix(ot::BackboneRouter::Leader *this)
{
  return ot::Ip6::Prefix::GetLength((this + 12)) > 0;
}

{
  return ot::BackboneRouter::Leader::HasDomainPrefix(this);
}

uint64_t ot::Clearable<ot::Ip6::Prefix>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::Ip6::Prefix>(a1);
}

{
  return ot::Clearable<ot::Ip6::Prefix>::Clear(a1);
}

void ot::NetworkData::OnMeshPrefixConfig::GetPrefix(ot::NetworkData::OnMeshPrefixConfig *this)
{
  ot::AsCoreType<otIp6Prefix>(this);
}

{
  ot::AsCoreType<otIp6Prefix>(this);
}

{
  ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
}

{
  ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::NdProxyTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::NdProxyTable>(a1);
}

BOOL ot::BackboneRouter::Leader::IsDomainUnicast(ot::BackboneRouter::Leader *this, const ot::Ip6::Address *a2)
{
  v4 = 0;
  if (ot::BackboneRouter::Leader::HasDomainPrefix(this))
  {
    return ot::Ip6::Address::MatchesPrefix(a2, (this + 12));
  }

  return v4;
}

uint64_t ot::Ip6::Prefix::GetLength(ot::Ip6::Prefix *this)
{
  return *(this + 16);
}

{
  return ot::Ip6::Prefix::GetLength(this);
}

uint64_t ot::Instance::Get<ot::NetworkData::Service::Manager>(uint64_t a1)
{
  return a1 + 144264;
}

{
  return ot::Instance::Get<ot::NetworkData::Service::Manager>(a1);
}

uint64_t ot::Max<unsigned int>(unsigned int a1, unsigned int a2)
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
  return ot::Max<unsigned int>(a1, a2);
}

uint64_t ot::ClearAllBytes<ot::Ip6::Prefix>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Prefix>(result);
}

ot::BackboneRouter::Local *ot::BackboneRouter::Local::Local(ot::BackboneRouter::Local *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = ot::Random::NonCrypto::GetUint8(v2) % 127;
  *(this + 3) = 5;
  *(this + 2) = 5;
  *(this + 3) = 0;
  *(this + 2) = 3600;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 13);
  ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
  ot::Ip6::Prefix::SetLength(v3, 0);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 40));
  ot::Ip6::Netif::UnicastAddress::GetAddress((this + 40));
  Iid = ot::Ip6::Address::GetIid(v4);
  ot::Ip6::InterfaceIdentifier::SetToLocator(Iid, 0xFC38u);
  ot::Clearable<ot::Ip6::Address>::Clear(this + 9);
  *(this + 72) = -1;
  *(this + 73) = 50;
  *(this + 87) = 3;
  ot::Clearable<ot::Ip6::Address>::Clear(this + 11);
  result = this;
  *(this + 88) = -1;
  *(this + 89) = 50;
  *(this + 103) = 3;
  return result;
}

{
  ot::BackboneRouter::Local::Local(this, a2);
  return this;
}

uint64_t ot::Random::NonCrypto::GetUint8(ot::Random::NonCrypto *this)
{
  return ot::Random::NonCrypto::GetUint32(this);
}

{
  return ot::Random::NonCrypto::GetUint8(this);
}

void *ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(void *a1)
{
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(a1);
  return a1;
}

{
  ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::CallbackBase(a1);
  return a1;
}

void *ot::Clearable<ot::Ip6::Address>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Address>(a1);
}

{
  return ot::Clearable<ot::Ip6::Address>::Clear(a1);
}

void ot::BackboneRouter::Local::SetEnabled(ot::BackboneRouter::Local *this, char a2)
{
  if ((a2 & 1) != ot::BackboneRouter::Local::IsEnabled(this))
  {
    if (a2)
    {
      ot::BackboneRouter::Local::SetState(this, 1u);
      ot::BackboneRouter::Local::AddDomainPrefixToNetworkData(this);
      ot::BackboneRouter::Local::AddService(this, 0);
      IgnoreError();
    }

    else
    {
      ot::BackboneRouter::Local::RemoveDomainPrefixFromNetworkData(this);
      ot::BackboneRouter::Local::RemoveService(this);
      ot::BackboneRouter::Local::SetState(this, 0);
    }
  }
}

void ot::BackboneRouter::Local::SetState(uint64_t result, unsigned __int8 a2)
{
  if (*(result + 1) != a2)
  {
    if (*(result + 1))
    {
      if (*(result + 1) == 2)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(result);
        ot::Ip6::Netif::RemoveUnicastAddress(v4, (result + 40));
      }
    }

    else
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(result);
      MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v2);
      ot::Ip6::Address::SetMulticastNetworkPrefix((result + 72), MeshLocalPrefix);
    }

    if (a2 == 2)
    {
      ot::Ip6::Netif::UnicastAddress::GetAddress((result + 40));
      v10 = v5;
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(result);
      v7 = ot::Mle::Mle::GetMeshLocalPrefix(v6);
      ot::Ip6::Address::SetPrefix(v10, v7);
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(result);
      ot::Ip6::Netif::AddUnicastAddress(v8, (result + 40));
    }

    *(result + 1) = a2;
    if (*(result + 1))
    {
      if (*(result + 1) == 1)
      {
        ++*(result + 124);
      }

      else
      {
        ++*(result + 120);
      }
    }

    else
    {
      ++*(result + 122);
    }

    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(result);
    ot::Notifier::Signal(v9, 0x2000000);
  }
}

void ot::BackboneRouter::Local::AddDomainPrefixToNetworkData(ot::BackboneRouter::Local *this)
{
  v4 = 23;
  ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
  if (ot::Ip6::Prefix::GetLength(v1) > 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
    v4 = ot::NetworkData::Local::AddOnMeshPrefix(v2, (this + 12));
  }

  ot::BackboneRouter::Local::LogDomainPrefix(this, 1u, v4);
}

uint64_t ot::BackboneRouter::Local::AddService(uint64_t a1, char a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 13;
  if (*(a1 + 1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
    if (ot::Mle::Mle::IsAttached(v2))
    {
      if (v13 || (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1), !ot::BackboneRouter::Leader::HasPrimary(v3)) || (v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1), Server16 = ot::BackboneRouter::Leader::GetServer16(v4), v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1), Server16 == ot::Mle::Mle::GetRloc16(v5)))
      {
        ot::NetworkData::Service::BackboneRouter::ServerData::SetSequenceNumber(v11, *(a1 + 2));
        ot::NetworkData::Service::BackboneRouter::ServerData::SetReregistrationDelay(v11, *(a1 + 4));
        ot::NetworkData::Service::BackboneRouter::ServerData::SetMlrTimeout(v11, *(a1 + 8));
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(a1);
        v12 = ot::NetworkData::Service::Manager::Add<ot::NetworkData::Service::BackboneRouter>(v6, v11, 1);
        if (!v12)
        {
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(a1);
          ot::NetworkData::Notifier::HandleServerDataUpdated(v7);
          *a1 = 1;
        }
      }
    }
  }

  ot::BackboneRouter::Local::LogService(a1, 1u, v12);
  return v12;
}

void ot::BackboneRouter::Local::RemoveDomainPrefixFromNetworkData(ot::BackboneRouter::Local *this)
{
  v4 = 23;
  if (*(this + 28))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
    ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
    v4 = ot::NetworkData::Local::RemoveOnMeshPrefix(v2, v1);
  }

  ot::BackboneRouter::Local::LogDomainPrefix(this, 2u, v4);
}

void ot::BackboneRouter::Local::RemoveService(ot::BackboneRouter::Local *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(this);
  v4 = ot::NetworkData::Service::Manager::Remove<ot::NetworkData::Service::BackboneRouter>(v1);
  if (!v4)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
    ot::NetworkData::Notifier::HandleServerDataUpdated(v2);
    *this = 0;
  }

  ot::BackboneRouter::Local::LogService(this, 2u, v4);
}

void ot::BackboneRouter::Local::Reset(ot::BackboneRouter::Local *this)
{
  if (*(this + 1))
  {
    ot::BackboneRouter::Local::RemoveService(this);
    if (*(this + 1) == 2)
    {
      ot::BackboneRouter::Local::IncrementSequenceNumber(this);
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
      ot::Notifier::Signal(v1, 0x4000000);
      ot::BackboneRouter::Local::SetState(this, 1u);
    }
  }
}

uint64_t ot::BackboneRouter::Local::IncrementSequenceNumber(uint64_t this)
{
  v1 = *(this + 2);
  if (v1 != 127 && v1 != 126)
  {
    if (v1 != 255 && v1 != 254)
    {
      ++*(this + 2);
    }

    else
    {
      *(this + 2) = 0x80;
    }
  }

  else
  {
    *(this + 2) = 0;
  }

  return this;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Notifier>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
}

uint64_t ot::BackboneRouter::Local::GetConfig(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = *(result + 2);
  *(a2 + 2) = *(result + 4);
  *(a2 + 4) = *(result + 8);
  return result;
}

uint64_t ot::BackboneRouter::Local::SetConfig(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 0;
  if (*(a2 + 4) >= 0x12Cu && *(a2 + 4) <= 0x20C49Bu && *(a2 + 2) && *(a2 + 4) > 2 * *(a2 + 2))
  {
    if (*(a2 + 2) != *(a1 + 4))
    {
      *(a1 + 4) = *(a2 + 2);
      v5 = 1;
    }

    if (*(a2 + 4) != *(a1 + 8))
    {
      *(a1 + 8) = *(a2 + 4);
      v5 = 1;
    }

    if (*(a2 + 8) != *(a1 + 2))
    {
      *(a1 + 2) = *(a2 + 8);
      v5 = 1;
    }

    if (v5)
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
      ot::Notifier::Signal(v2, 0x4000000);
      ot::BackboneRouter::Local::AddService(a1, 0);
      IgnoreError();
    }

    ot::BackboneRouter::Local::LogService(a1, 0, 0);
  }

  else
  {
    v6 = 7;
    ot::BackboneRouter::Local::LogService(a1, 0, 7);
  }

  return v6;
}

void ot::BackboneRouter::Local::LogService(uint64_t a1, unsigned __int8 a2, int a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v10 = a1;
  v11 = ot::BackboneRouter::Local::ActionToString(a2);
  v12 = *(v10 + 2);
  v13 = *(v10 + 4);
  v14 = ot::ToUlong(*(v10 + 8));
  v3 = ot::ErrorToString(v15);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLocal", "%s BBR Service: seqno (%u), delay (%us), timeout (%lus), %s", v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, v3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::Leader>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
}

uint64_t ot::BackboneRouter::Leader::GetServer16(ot::BackboneRouter::Leader *this)
{
  return *this;
}

{
  return ot::BackboneRouter::Leader::GetServer16(this);
}

_BYTE *ot::NetworkData::Service::BackboneRouter::ServerData::SetSequenceNumber(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::SetSequenceNumber(this, a2);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::SetReregistrationDelay(ot::NetworkData::Service::BackboneRouter::ServerData *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2, a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::SetReregistrationDelay(this, a2);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::SetMlrTimeout(ot::NetworkData::Service::BackboneRouter::ServerData *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2, a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::SetMlrTimeout(this, a2);
}

uint64_t ot::NetworkData::Service::Manager::Add<ot::NetworkData::Service::BackboneRouter>(ot::NetworkData::Service::Manager *a1, ot::NetworkData::Service::BackboneRouter::ServerData *a2, char a3)
{
  Length = ot::NetworkData::Service::BackboneRouter::ServerData::GetLength(a2);
  return ot::NetworkData::Service::Manager::AddService(a1, &ot::NetworkData::Service::BackboneRouter::kServiceData, 1, a3 & 1, a2, Length);
}

{
  return ot::NetworkData::Service::Manager::Add<ot::NetworkData::Service::BackboneRouter>(a1, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Notifier>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(a1);
}

uint64_t ot::NetworkData::Service::Manager::Remove<ot::NetworkData::Service::BackboneRouter>(ot::NetworkData::Service::Manager *a1)
{
  return ot::NetworkData::Service::Manager::RemoveService(a1, &ot::NetworkData::Service::BackboneRouter::kServiceData, 1);
}

{
  return ot::NetworkData::Service::Manager::Remove<ot::NetworkData::Service::BackboneRouter>(a1);
}

void *ot::Ip6::Address::SetMulticastNetworkPrefix(ot::Ip6::Address *a1, unsigned __int8 *a2)
{
  return ot::Ip6::Address::SetMulticastNetworkPrefix(a1, a2, 0x40u);
}

{
  return ot::Ip6::Address::SetMulticastNetworkPrefix(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::ThreadNetif>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
}

void ot::BackboneRouter::Local::HandleBackboneRouterPrimaryUpdate(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (ot::BackboneRouter::Local::IsEnabled(a1))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
    if (ot::Mle::Mle::IsAttached(v3))
    {
      if (*a3 == 65534)
      {
        *(a1 + 6) = 1;
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        if (!ot::Mle::Mle::IsLeader(v4))
        {
          *(a1 + 6) += ot::Random::NonCrypto::GetUint16InRange(0, *(a1 + 3) + 1);
        }

        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
        ot::TimeTicker::RegisterReceiver(v5, 8);
      }

      else
      {
        v8 = *a3;
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        if (v8 == ot::Mle::Mle::GetRloc16(v6))
        {
          if (*a1)
          {
            ot::BackboneRouter::Local::SetState(a1, 2u);
          }

          else
          {
            *(a1 + 2) = *(a3 + 8);
            *(a1 + 4) = a3[1];
            *(a1 + 8) = *(a3 + 1);
            ot::BackboneRouter::Local::IncrementSequenceNumber(a1);
            v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
            ot::Notifier::Signal(v7, 0x4000000);
            ot::BackboneRouter::Local::AddService(a1, 1);
            IgnoreError();
          }
        }

        else
        {
          ot::BackboneRouter::Local::Reset(a1);
        }
      }
    }
  }
}

BOOL ot::Mle::Mle::IsLeader(ot::Mle::Mle *this)
{
  return *(this + 130) == 4;
}

{
  return ot::Mle::Mle::IsLeader(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::TimeTicker>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
}

void ot::BackboneRouter::Local::HandleTimeTick(ot::BackboneRouter::Local *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (!ot::Mle::MleRouter::IsRouterRoleTransitionPending(v1))
  {
    if (*(this + 3))
    {
      if (!--*(this + 3))
      {
        ot::BackboneRouter::Local::AddService(this, 0);
        IgnoreError();
      }
    }
  }

  if (!*(this + 3))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    ot::TimeTicker::UnregisterReceiver(v2, 8);
  }
}

BOOL ot::Mle::MleRouter::IsRouterRoleTransitionPending(ot::Mle::MleRouter *this)
{
  return ot::Mle::MleRouter::RouterRoleTransition::IsPending((this + 35702));
}

{
  return ot::Mle::MleRouter::IsRouterRoleTransitionPending(this);
}

uint64_t ot::BackboneRouter::Local::GetDomainPrefix(ot::BackboneRouter::Local *this, ot::NetworkData::OnMeshPrefixConfig *a2)
{
  v5 = 0;
  ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
  if (ot::Ip6::Prefix::GetLength(v2) > 0)
  {
    *a2 = *(this + 12);
    *(a2 + 2) = *(this + 28);
  }

  else
  {
    return 23;
  }

  return v5;
}

uint64_t ot::BackboneRouter::Local::RemoveDomainPrefix(ot::BackboneRouter::Local *this, const ot::Ip6::Prefix *a2)
{
  v6 = 0;
  if (ot::Ip6::Prefix::GetLength(a2) > 0)
  {
    ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
    if (ot::Ip6::Prefix::operator==(v2, a2))
    {
      if (ot::BackboneRouter::Local::IsEnabled(this))
      {
        ot::BackboneRouter::Local::RemoveDomainPrefixFromNetworkData(this);
      }

      ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
      ot::Ip6::Prefix::SetLength(v3, 0);
    }

    else
    {
      return 23;
    }
  }

  else
  {
    return 7;
  }

  return v6;
}

uint64_t ot::BackboneRouter::Local::SetDomainPrefix(ot::BackboneRouter::Local *this, const ot::NetworkData::OnMeshPrefixConfig *a2)
{
  v6 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  if (ot::NetworkData::OnMeshPrefixConfig::IsValid(a2, Instance))
  {
    if (ot::BackboneRouter::Local::IsEnabled(this))
    {
      ot::BackboneRouter::Local::RemoveDomainPrefixFromNetworkData(this);
    }

    *(this + 12) = *a2;
    *(this + 28) = *(a2 + 2);
    ot::BackboneRouter::Local::LogDomainPrefix(this, 0, 0);
    if (ot::BackboneRouter::Local::IsEnabled(this))
    {
      ot::BackboneRouter::Local::AddDomainPrefixToNetworkData(this);
    }
  }

  else
  {
    return 7;
  }

  return v6;
}

void ot::BackboneRouter::Local::LogDomainPrefix(uint64_t a1, unsigned __int8 a2, int a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v11 = a1;
  v13 = ot::BackboneRouter::Local::ActionToString(a2);
  ot::NetworkData::OnMeshPrefixConfig::GetPrefix((v11 + 12));
  v12 = v18;
  ot::Ip6::Prefix::ToString(v3, v18);
  v14 = ot::String<(unsigned short)45>::AsCString(v18);
  v4 = ot::ErrorToString(v15);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLocal", "%s Domain Prefix: %s, %s", v5, v6, v7, v8, v9, v10, v13, v14, v4);
}

void ot::BackboneRouter::Local::ApplyNewMeshLocalPrefix(ot::BackboneRouter::Local *this)
{
  if (ot::BackboneRouter::Local::IsEnabled(this))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(this);
    ot::BackboneRouter::BackboneTmfAgent::UnsubscribeMulticast(v1, (this + 72));
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v2);
    ot::Ip6::Address::SetMulticastNetworkPrefix((this + 72), MeshLocalPrefix);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(this);
    ot::BackboneRouter::BackboneTmfAgent::SubscribeMulticast(v4, (this + 72));
  }
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::BackboneTmfAgent>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(a1);
}

void ot::BackboneRouter::Local::HandleDomainPrefixUpdate(void *a1, unsigned __int8 a2)
{
  v11 = a1;
  v10 = a2;
  if (ot::BackboneRouter::Local::IsEnabled(a1))
  {
    if (v10 == 1 || v10 == 2)
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(a1);
      ot::BackboneRouter::BackboneTmfAgent::UnsubscribeMulticast(v2, (a1 + 11));
    }

    if (!v10 || v10 == 2)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
      DomainPrefix = ot::BackboneRouter::Leader::GetDomainPrefix(v3);
      ot::Ip6::Address::SetMulticastNetworkPrefix((a1 + 11), DomainPrefix);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(a1);
      ot::BackboneRouter::BackboneTmfAgent::SubscribeMulticast(v5, (a1 + 11));
    }

    if (v10 != 3)
    {
      v9 = v10;
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
      v8 = ot::BackboneRouter::Leader::GetDomainPrefix(v6);
      ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(a1 + 13, &v9, &v8);
    }
  }
}

void *ot::Ip6::Address::SetMulticastNetworkPrefix(ot::Ip6::Address *this, const ot::Ip6::Prefix *a2)
{
  ot::Ip6::Prefix::GetBytes(a2);
  v5 = v2;
  Length = ot::Ip6::Prefix::GetLength(a2);
  return ot::Ip6::Address::SetMulticastNetworkPrefix(this, v5, Length);
}

{
  return ot::Ip6::Address::SetMulticastNetworkPrefix(this, a2);
}

uint64_t ot::BackboneRouter::Leader::GetDomainPrefix(ot::BackboneRouter::Leader *this)
{
  if (ot::Ip6::Prefix::GetLength((this + 12)))
  {
    return this + 12;
  }

  else
  {
    return 0;
  }
}

{
  return ot::BackboneRouter::Leader::GetDomainPrefix(this);
}

void *ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(result, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Local>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(a1);
}

uint64_t ot::Random::NonCrypto::GetUint32(ot::Random::NonCrypto *this)
{
  return ot::Random::Manager::NonCryptoGetUint32(this);
}

{
  return ot::Random::NonCrypto::GetUint32(this);
}

void *ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::CallbackBase(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

BOOL ot::Mle::MleRouter::RouterRoleTransition::IsPending(ot::Mle::MleRouter::RouterRoleTransition *this)
{
  return *this != 0;
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::IsPending(this);
}

void ot::Ip6::Prefix::GetBytes(ot::Ip6::Prefix *this)
{
  ;
}

{
  ot::Ip6::Prefix::GetBytes(this);
}

void *ot::ClearAllBytes<ot::Ip6::Address>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Address>(result);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::GetLength(ot::NetworkData::Service::BackboneRouter::ServerData *this)
{
  return 7;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::GetLength(this);
}

uint64_t ot::Instance::Get<ot::TimeTicker>(uint64_t a1)
{
  return a1 + 168;
}

{
  return ot::Instance::Get<ot::TimeTicker>(a1);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::BackboneTmfAgent>(uint64_t a1)
{
  return ot::BackboneRouter::Manager::GetBackboneTmfAgent((a1 + 146592));
}

{
  return ot::Instance::Get<ot::BackboneRouter::BackboneTmfAgent>(a1);
}

uint64_t ot::BackboneRouter::Manager::GetBackboneTmfAgent(ot::BackboneRouter::Manager *this)
{
  return this + 7576;
}

{
  return ot::BackboneRouter::Manager::GetBackboneTmfAgent(this);
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(a1, a2, a3);
}

ot::BackboneRouter::Manager *ot::BackboneRouter::Manager::Manager(ot::BackboneRouter::Manager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::BackboneRouter::NdProxyTable::NdProxyTable((this + 8), a2);
  ot::BackboneRouter::MulticastListenersTable::MulticastListenersTable((this + 6032), a2);
  ot::TimerMilliIn<ot::BackboneRouter::Manager,&ot::BackboneRouter::Manager::HandleTimer>::TimerMilliIn((this + 7552), a2);
  ot::BackboneRouter::BackboneTmfAgent::BackboneTmfAgent((this + 7576), a2);
  return this;
}

{
  ot::BackboneRouter::Manager::Manager(this, a2);
  return this;
}

uint64_t ot::BackboneRouter::Manager::HandleTimer(ot::BackboneRouter::Manager *this)
{
  ot::BackboneRouter::MulticastListenersTable::Expire((this + 6032));
  ot::BackboneRouter::NdProxyTable::HandleTimer(this + 8);
  return ot::TimerMilli::Start((this + 7552), 0x3E8u);
}

ot::BackboneRouter::NdProxyTable *ot::BackboneRouter::NdProxyTable::NdProxyTable(ot::BackboneRouter::NdProxyTable *this, ot::Instance *a2)
{
  ot::BackboneRouter::NdProxyTable::NdProxyTable(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v4 = this;
  do
  {
    ot::BackboneRouter::NdProxyTable::NdProxy::NdProxy(v4);
    v4 = (v4 + 24);
  }

  while (v4 != (this + 6000));
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 750);
  *(this + 6016) &= ~1u;
  return this;
}

ot::BackboneRouter::MulticastListenersTable *ot::BackboneRouter::MulticastListenersTable::MulticastListenersTable(ot::BackboneRouter::MulticastListenersTable *this, ot::Instance *a2)
{
  ot::BackboneRouter::MulticastListenersTable::MulticastListenersTable(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v4 = this;
  do
  {
    ot::BackboneRouter::MulticastListenersTable::Listener::Listener(v4);
    v4 = (v4 + 20);
  }

  while (v4 != (this + 1500));
  *(this + 750) = 0;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 188);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::BackboneRouter::Manager,&ot::BackboneRouter::Manager::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::BackboneRouter::Manager,&ot::BackboneRouter::Manager::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::BackboneRouter::Manager,&ot::BackboneRouter::Manager::HandleTimer>::HandleTimer);
  return a1;
}

void ot::BackboneRouter::Manager::HandleNotifierEvents(ot::InstanceLocator *a1, uint64_t a2)
{
  v20 = a2;
  v19 = a1;
  v17 = a1;
  v18 = 0;
  if (ot::Events::Contains(&v20, 0x2000000))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(v17);
    if (ot::BackboneRouter::Local::IsEnabled(v2))
    {
      if (!ot::Timer::IsRunning((v17 + 7552)))
      {
        ot::TimerMilli::Start((v17 + 7552), 0x3E8u);
      }

      v18 = ot::BackboneRouter::BackboneTmfAgent::Start((v17 + 7576));
      ot::BackboneRouter::Manager::LogError(v17, "Start Backbone TMF agent", v18);
    }

    else
    {
      ot::BackboneRouter::MulticastListenersTable::Clear((v17 + 6032));
      ot::TimerMilli::Stop((v17 + 7552));
      v18 = ot::Coap::Coap::Stop((v17 + 7576));
      if (v18)
      {
        v3 = ot::ErrorToString(v18);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("BbrManager", "Stop Backbone TMF agent: %s", v4, v5, v6, v7, v8, v9, v3);
      }

      else
      {
        v10 = ot::ErrorToString(0);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Stop Backbone TMF agent: %s", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }
}

void ot::BackboneRouter::Manager::LogError(uint64_t a1, const char *a2, int a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  if (a3)
  {
    v10 = ot::ErrorToString(v17);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("BbrManager", "%s: %s", v11, v12, v13, v14, v15, v16, v18, v10);
  }

  else
  {
    v3 = ot::ErrorToString(0);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "%s: %s", v4, v5, v6, v7, v8, v9, v18, v3);
  }
}

void ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)39>(ot::BackboneRouter::Manager *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
  if (ot::BackboneRouter::Local::IsEnabled(v3))
  {
    ot::BackboneRouter::Manager::HandleMulticastListenerRegistration(a1, a2, a3);
  }
}

void ot::BackboneRouter::Manager::HandleMulticastListenerRegistration(ot::BackboneRouter::Manager *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v54 = this;
  v53 = a2;
  v52 = a3;
  v31 = this;
  v51 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  IsPrimary = ot::BackboneRouter::Local::IsPrimary(v3);
  v49 = 0;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  if (!ot::Coap::Message::IsConfirmablePostRequest(v53))
  {
    v51 = 6;
    goto LABEL_42;
  }

  if (!IsPrimary)
  {
    v49 = 5;
    goto LABEL_42;
  }

  if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(v53, &v40))
  {
    v37 = 0;
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v31);
    if (ot::NetworkData::Leader::FindCommissioningSessionId(v5, &v37) || v37 != v40)
    {
      v49 = 6;
      goto LABEL_42;
    }

    v39 = 1;
  }

  v30 = 0;
  if (v39)
  {
    v30 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(v53, &v41) == 0;
  }

  v38 = v30;
  if (ot::Tlv::FindTlvValueOffsetRange(v53, 0xE, &v46, v4))
  {
    v51 = 6;
    goto LABEL_42;
  }

  if (ot::OffsetRange::GetLength(&v46) % 0x10uLL)
  {
    v49 = 6;
    goto LABEL_42;
  }

  Length = ot::OffsetRange::GetLength(&v46);
  if (Length / 0x10uLL > 0xF)
  {
    v49 = 6;
    goto LABEL_42;
  }

  if (v38)
  {
    if (v41 == -1)
    {
      v49 = 3;
      goto LABEL_42;
    }

    if (v41)
    {
      v36 = v41;
      Length = ot::Min<unsigned int>(v41, 0x20C49Bu);
      v41 = Length;
      if (Length != v36)
      {
        v29 = ot::ToUlong(v36);
        v8 = ot::ToUlong(v41);
        ot::Logger::LogAtLevel<(ot::LogLevel)3>("BbrManager", "MLR.req: MLR timeout is normalized from %lu to %lu", v9, v10, v11, v12, v13, v14, v29, v8);
      }
    }
  }

  else
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(v31);
    ot::BackboneRouter::Leader::GetConfig(v7, v47);
    IgnoreError();
    v41 = v48;
  }

  Now = ot::TimerMilli::GetNow(Length);
  v28 = &v34;
  v34 = Now;
  v16 = ot::Time::SecToMsec(v41);
  v35 = ot::Time::operator+(v28, v16);
  v42 = v35;
  while (!ot::OffsetRange::IsEmpty(&v46))
  {
    v27 = &v46;
    ot::Message::Read<ot::Ip6::Address>(v53, &v46, &v45);
    IgnoreError();
    ot::OffsetRange::AdvanceOffset(v27, 0x10u);
    if (v41)
    {
      v33 = 1;
      v32 = v42;
      v26 = ot::BackboneRouter::MulticastListenersTable::Add((v31 + 6032), &v45, v42);
      if (v26)
      {
        if (v26 == 3)
        {
          if (!v49)
          {
            v49 = 4;
          }
        }

        else
        {
          if (v26 != 7)
          {
            __assert_rtn("HandleMulticastListenerRegistration", "bbr_manager.cpp", 256, "false");
          }

          if (!v49)
          {
            v49 = 2;
          }
        }
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        v17 = v44++;
        v56[v17] = v45;
      }

      else
      {
        v25 = v55;
        ot::Ip6::Address::ToString(v55, &v45);
        v18 = ot::String<(unsigned short)40>::AsCString(v25);
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrManager", "Registered address:%s is added to the addresses list successfuly", v19, v20, v21, v22, v23, v24, v18);
        v56[15 - ++v43] = v45;
      }
    }

    else
    {
      ot::BackboneRouter::MulticastListenersTable::Remove((v31 + 6032), &v45);
      v56[15 - ++v43] = v45;
    }
  }

LABEL_42:
  if (!v51)
  {
    ot::BackboneRouter::Manager::SendMulticastListenerRegistrationResponse(v31, v53, v52, v49, v56, v44);
  }

  if (v43)
  {
    ot::BackboneRouter::Manager::SendBackboneMulticastListenerRegistration(v31, &v56[15 - v43], v43, v41);
  }
}

BOOL ot::BackboneRouter::Local::IsPrimary(ot::BackboneRouter::Local *this)
{
  return *(this + 1) == 2;
}

{
  return ot::BackboneRouter::Local::IsPrimary(this);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0xFu, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 0xBu, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(a1, a2);
}

uint64_t ot::OffsetRange::GetLength(ot::OffsetRange *this)
{
  return *(this + 1);
}

{
  return ot::OffsetRange::GetLength(this);
}

void ot::BackboneRouter::Manager::SendMulticastListenerRegistrationResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned int a4, uint64_t a5, unsigned __int8 a6)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v17 = a1;
  v21 = 0;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v20 = ot::Coap::CoapBase::NewResponseMessage(v6, v26);
  if (v20)
  {
    if (!ot::Tlv::Append<ot::ThreadStatusTlv>(v20, v24))
    {
      if (v22)
      {
        v16 = v19;
        ot::Ip6AddressesTlv::Init(v19);
        ot::Tlv::SetLength(v19, 16 * v22);
        v21 = ot::Message::Append<ot::Ip6AddressesTlv>(v20, v19);
        if (v21)
        {
          goto LABEL_11;
        }

        for (i = 0; i < v22; ++i)
        {
          v21 = ot::Message::Append<ot::Ip6::Address>(v20, (v23 + 16 * i));
          if (v21)
          {
            goto LABEL_11;
          }
        }
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v17);
      v21 = ot::Coap::CoapBase::SendMessage(v7, v20, v25);
    }
  }

  else
  {
    v21 = 3;
  }

LABEL_11:
  if (v21 && v20)
  {
    ot::Message::Free(v20);
  }

  v15 = v24;
  v8 = ot::ErrorToString(v21);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Sent MLR.rsp (status=%d): %s", v9, v10, v11, v12, v13, v14, v15, v8);
}

void ot::BackboneRouter::Manager::SendBackboneMulticastListenerRegistration(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, unsigned __int8 a3, unsigned int a4)
{
  v36 = this;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v26 = this;
  appended = 0;
  v31 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v30);
  v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(v26);
  v27 = 0;
  if (v34)
  {
    v27 = v34 <= 0xFu;
  }

  if (!v27)
  {
    __assert_rtn("SendBackboneMulticastListenerRegistration", "bbr_manager.cpp", 333, "aAddressNum >= Ip6AddressesTlv::kMinAddresses && aAddressNum <= Ip6AddressesTlv::kMaxAddresses");
  }

  v31 = ot::Coap::CoapBase::NewNonConfirmablePostMessage(v28, 8u);
  if (v31)
  {
    v25 = v29;
    ot::Ip6AddressesTlv::Init(v29);
    ot::Tlv::SetLength(v29, 16 * v34);
    appended = ot::Message::Append<ot::Ip6AddressesTlv>(v31, v29);
    if (!appended)
    {
      appended = ot::Message::AppendBytes(v31, v35, 16 * v34);
      if (!appended)
      {
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(v31, v33);
        if (!appended)
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(v26);
          AllNetworkBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(v4);
          v23 = v30;
          ot::Ip6::MessageInfo::SetPeerAddr(v30, AllNetworkBackboneRoutersAddress);
          ot::Ip6::MessageInfo::SetPeerPort(v30, 61631);
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(v26);
          v7 = ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(v6);
          v22 = v37;
          ot::Ip6::Address::ToString(v37, v7);
          v8 = ot::String<(unsigned short)40>::AsCString(v37);
          ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrManager", "Send BMLR to address:%s port:%d", v9, v10, v11, v12, v13, v14, v8, 61631);
          v24 = 1;
          ot::Ip6::MessageInfo::SetHopLimit(v30, 1);
          ot::Ip6::MessageInfo::SetIsHostInterface(v30, 1);
          appended = ot::Coap::CoapBase::SendMessage(v28, v31, v30);
        }
      }
    }
  }

  else
  {
    appended = 3;
  }

  if (appended && v31)
  {
    ot::Message::Free(v31);
  }

  v15 = ot::ErrorToString(appended);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Sent BMLR.ntf: %s", v16, v17, v18, v19, v20, v21, v15);
}

uint64_t ot::Tlv::Append<ot::ThreadStatusTlv>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 4, a2);
}

{
  return ot::Tlv::Append<ot::ThreadStatusTlv>(a1, a2);
}

_BYTE *ot::Ip6AddressesTlv::Init(ot::Ip6AddressesTlv *this)
{
  return ot::ThreadTlv::SetType(this, 14);
}

{
  return ot::Ip6AddressesTlv::Init(this);
}

uint64_t ot::Message::Append<ot::Ip6AddressesTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::Ip6AddressesTlv>(a1, a2);
}

uint64_t ot::Message::Append<ot::Ip6::Address>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::Message::Append<ot::Ip6::Address>(a1, a2);
}

ot::Ip6::MessageInfo *ot::Ip6::MessageInfo::MessageInfo(ot::Ip6::MessageInfo *this)
{
  ot::Ip6::MessageInfo::MessageInfo(this);
  return this;
}

{
  ot::Clearable<ot::Ip6::MessageInfo>::Clear(this);
  return this;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 0xBu, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(a1, a2);
}

__n128 ot::Ip6::MessageInfo::SetPeerAddr(__n128 *this, __n128 *a2)
{
  result = *a2;
  this[1] = *a2;
  return result;
}

uint64_t ot::Ip6::MessageInfo::SetPeerPort(uint64_t this, __int16 a2)
{
  *(this + 34) = a2;
  return this;
}

{
  return ot::Ip6::MessageInfo::SetPeerPort(this, a2);
}

uint64_t ot::Ip6::MessageInfo::SetHopLimit(uint64_t this, char a2)
{
  *(this + 36) = a2;
  return this;
}

{
  return ot::Ip6::MessageInfo::SetHopLimit(this, a2);
}

uint64_t ot::Ip6::MessageInfo::SetIsHostInterface(uint64_t this, char a2)
{
  *(this + 37) = *(this + 37) & 0xFB | (4 * (a2 & 1));
  return this;
}

{
  return ot::Ip6::MessageInfo::SetIsHostInterface(this, a2);
}

void ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)38>(ot::BackboneRouter::Manager *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
  if (ot::BackboneRouter::Local::IsEnabled(v3))
  {
    ot::BackboneRouter::Manager::HandleDuaRegistration(a1, a2, a3);
  }
}

void ot::BackboneRouter::Manager::HandleDuaRegistration(ot::BackboneRouter::Manager *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v42 = this;
  v41 = a2;
  v40 = a3;
  v32 = this;
  v39 = 0;
  v38 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  IsPrimary = ot::BackboneRouter::Local::IsPrimary(v3);
  v36 = 0;
  v35 = 0;
  ot::Ip6::MessageInfo::GetPeerAddr(v40);
  Iid = ot::Ip6::Address::GetIid(v4);
  if (ot::Ip6::InterfaceIdentifier::IsRoutingLocator(Iid, v6))
  {
    if (ot::Coap::Message::IsConfirmablePostRequest(v41))
    {
      v39 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v41, v34, v7, v8, v9);
      if (!v39)
      {
        v39 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v41, v33, v10, v11, v12);
        if (!v39)
        {
          if (IsPrimary)
          {
            v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(v32);
            if (ot::BackboneRouter::Leader::HasDomainPrefix(v13))
            {
              v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(v32);
              if (ot::BackboneRouter::Leader::IsDomainUnicast(v14, v34))
              {
                v35 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v41, &v36) == 0;
                v29 = (v32 + 8);
                v30 = ot::Ip6::Address::GetIid(v34);
                ot::Ip6::MessageInfo::GetPeerAddr(v40);
                v16 = ot::Ip6::Address::GetIid(v15);
                *v31 = ot::Ip6::InterfaceIdentifier::GetLocator(v16, v17);
                if (v35)
                {
                  v28 = &v36;
                }

                else
                {
                  v28 = 0;
                }

                v27 = ot::BackboneRouter::NdProxyTable::Register(v29, v30, v33, v31[0], v28);
                if (v27)
                {
                  if (v27 == 3)
                  {
                    v38 = 4;
                  }

                  else if (v27 == 29)
                  {
                    v38 = 3;
                  }

                  else
                  {
                    v38 = 6;
                  }
                }
              }

              else
              {
                v38 = 2;
              }
            }

            else
            {
              v38 = 6;
            }
          }

          else
          {
            v38 = 5;
          }
        }
      }
    }

    else
    {
      v39 = 6;
    }
  }

  else
  {
    v39 = 2;
  }

  if (IsPrimary)
  {
    v26 = "PBBR";
  }

  else
  {
    v26 = "SBBR";
  }

  v25 = v26;
  v18 = ot::ErrorToString(v39);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Received DUA.req on %s: %s", v19, v20, v21, v22, v23, v24, v26, v18);
  if (!v39)
  {
    ot::BackboneRouter::Manager::SendDuaRegistrationResponse(v32, v41, v40, v34, v38);
  }
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(ot::Tlv *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  return ot::Tlv::FindTlv(a1, 0, a2, 0x10);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(ot::Tlv *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  return ot::Tlv::FindTlv(a1, 3, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 6u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(a1, a2);
}

void ot::BackboneRouter::Manager::SendDuaRegistrationResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3, ot::Ip6::Address *a4, unsigned __int8 a5)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v19 = a1;
  v21 = 0;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v20 = ot::Coap::CoapBase::NewResponseMessage(v5, v25);
  if (v20)
  {
    if (!ot::Tlv::Append<ot::ThreadStatusTlv>(v20, v22) && !ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v20, v23, v6, v7, v8))
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v19);
      v21 = ot::Coap::CoapBase::SendMessage(v9, v20, v24);
    }
  }

  else
  {
    v21 = 3;
  }

  if (v21 && v20)
  {
    ot::Message::Free(v20);
  }

  v17 = v27;
  ot::Ip6::Address::ToString(v27, v23);
  v18 = ot::String<(unsigned short)40>::AsCString(v27);
  v10 = ot::ErrorToString(v21);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Sent DUA.rsp for DUA %s, status %d %s", v11, v12, v13, v14, v15, v16, v18, v22, v10);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(ot::Tlv *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  return ot::Tlv::AppendTlv(a1, 0, a2, 0x10);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(a1, a2, a3, a4, a5);
}

BOOL ot::BackboneRouter::Manager::ShouldForwardDuaToBackbone(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2)
{
  v11 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  if (ot::BackboneRouter::Local::IsPrimary(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
    if (ot::BackboneRouter::Leader::IsDomainUnicast(v3, a2))
    {
      Iid = ot::Ip6::Address::GetIid(a2);
      if (!ot::BackboneRouter::NdProxyTable::IsRegistered((this + 8), Iid))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
        if (!ot::NeighborTable::FindNeighbor(v5, a2, 1))
        {
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
          v9 = ot::AddressResolver::LookUp(v6, a2);
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          return v9 == ot::Mle::Mle::GetRloc16(v7);
        }
      }
    }
  }

  return v11;
}

BOOL ot::BackboneRouter::NdProxyTable::IsRegistered(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::InterfaceIdentifier *a2)
{
  return ot::BackboneRouter::NdProxyTable::FindByAddressIid(this, a2) != 0;
}

{
  return ot::BackboneRouter::NdProxyTable::IsRegistered(this, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::AddressResolver>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(a1);
}

uint64_t ot::BackboneRouter::Manager::SendBackboneQuery(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, unsigned __int16 a3)
{
  v28 = this;
  v27 = a2;
  v26 = a3;
  v22 = this;
  v25 = 0;
  v24 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v23);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(v22);
  if (ot::BackboneRouter::Local::IsPrimary(v3))
  {
    v24 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage((v22 + 7576), 9u);
    if (v24)
    {
      v25 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v24, v27, v4, v5, v6);
      if (!v25 && (v26 == 65534 || (v25 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v24, v26)) == 0))
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(v22);
        AllDomainBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(v7);
        v21 = v23;
        ot::Ip6::MessageInfo::SetPeerAddr(v23, AllDomainBackboneRoutersAddress);
        ot::Ip6::MessageInfo::SetPeerPort(v23, 61631);
        v20 = 1;
        ot::Ip6::MessageInfo::SetHopLimit(v23, 1);
        ot::Ip6::MessageInfo::SetIsHostInterface(v23, 1);
        v25 = ot::Coap::CoapBase::SendMessage((v22 + 7576), v24, v23);
      }
    }

    else
    {
      v25 = 3;
    }
  }

  else
  {
    v25 = 13;
  }

  v17 = v29;
  ot::Ip6::Address::ToString(v29, v27);
  v18 = ot::String<(unsigned short)40>::AsCString(v29);
  v19 = v26;
  v9 = ot::ErrorToString(v25);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "SendBackboneQuery for %s (rloc16=%04x): %s", v10, v11, v12, v13, v14, v15, v18, v19, v9);
  if (v25 && v24)
  {
    ot::Message::Free(v24);
  }

  return v25;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 2u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(a1, a2);
}

void ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)9>(ot::BackboneRouter::Manager *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v26 = a1;
  v30 = 0;
  v28 = -2;
  v27 = 0;
  if (ot::Ip6::MessageInfo::IsHostInterface(a3))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(v26);
    if (ot::BackboneRouter::Local::IsPrimary(v3))
    {
      if (ot::Coap::Message::IsNonConfirmablePostRequest(v32))
      {
        v30 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v32, v29, v4, v5, v6);
        if (!v30)
        {
          v30 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v32, &v28);
          if (!v30 || v30 == 23)
          {
            ot::Ip6::MessageInfo::GetPeerAddr(v31);
            v22 = v35;
            ot::Ip6::Address::ToString(v35, v7);
            v24 = ot::String<(unsigned short)40>::AsCString(v35);
            v23 = v34;
            v25 = v29;
            ot::Ip6::Address::ToString(v34, v29);
            v8 = ot::String<(unsigned short)40>::AsCString(v34);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Received BB.qry from %s for %s (rloc16=%04x)", v9, v10, v11, v12, v13, v14, v24, v8, v28);
            v27 = ot::BackboneRouter::NdProxyTable::ResolveDua((v26 + 8), v29);
            if (v27 && (ot::BackboneRouter::NdProxyTable::NdProxy::GetDadFlag(v27) & 1) == 0)
            {
              v30 = ot::BackboneRouter::Manager::SendBackboneAnswer(v26, v31, v29, v28, v27);
            }

            else
            {
              v30 = 23;
            }
          }
        }
      }

      else
      {
        v30 = 6;
      }
    }

    else
    {
      v30 = 13;
    }
  }

  else
  {
    v30 = 2;
  }

  v15 = ot::ErrorToString(v30);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleBackboneQuery: %s", v16, v17, v18, v19, v20, v21, v15);
}

uint64_t ot::Ip6::MessageInfo::IsHostInterface(ot::Ip6::MessageInfo *this)
{
  return (*(this + 37) >> 2) & 1;
}

{
  return ot::Ip6::MessageInfo::IsHostInterface(this);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 2u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(a1, a2);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::GetDadFlag(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  return (*(this + 22) >> 2) & 1;
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::GetDadFlag(this);
}

uint64_t ot::BackboneRouter::Manager::SendBackboneAnswer(ot::BackboneRouter::Manager *this, const ot::Ip6::MessageInfo *a2, const ot::Ip6::Address *a3, unsigned __int16 a4, const ot::BackboneRouter::NdProxyTable::NdProxy *a5)
{
  ot::Ip6::MessageInfo::GetPeerAddr(a2);
  v8 = v5;
  MeshLocalIid = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(a5);
  TimeSinceLastTransaction = ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(a5);
  return ot::BackboneRouter::Manager::SendBackboneAnswer(this, v8, a3, MeshLocalIid, TimeSinceLastTransaction, a4);
}

void ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)7>(ot::BackboneRouter::Manager *a1, ot::Tlv *a2, const ot::Ip6::MessageInfo *a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v18 = a1;
  TlvValueOffsetRange = 0;
  v24 = 0;
  v20 = 0;
  v19 = -2;
  if (ot::Ip6::MessageInfo::IsHostInterface(a3))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(v18);
    if (ot::BackboneRouter::Local::IsPrimary(v3))
    {
      if (ot::Coap::Message::IsPostRequest(v27))
      {
        v24 = !ot::Coap::Message::IsConfirmable(v27);
        TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v27, v23, v4, v5, v6);
        if (!TlvValueOffsetRange)
        {
          TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v27, v22, v7, v8, v9);
          if (!TlvValueOffsetRange)
          {
            TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v27, &v20);
            if (!TlvValueOffsetRange)
            {
              TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v27, 0xC, &v21, v10);
              if (!TlvValueOffsetRange)
              {
                TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v27, &v19);
                if (!TlvValueOffsetRange || TlvValueOffsetRange == 23)
                {
                  if (v24)
                  {
                    ot::BackboneRouter::Manager::HandleProactiveBackboneNotification(v18, v23, v22, v20);
                  }

                  else if (v19 == 65534)
                  {
                    ot::BackboneRouter::Manager::HandleDadBackboneAnswer(v18, v23, v22);
                  }

                  else
                  {
                    ot::BackboneRouter::Manager::HandleExtendedBackboneAnswer(v18, v23, v22, v20, v19);
                  }

                  TlvValueOffsetRange = ot::Coap::CoapBase::SendEmptyAck((v18 + 7576), v27, v26);
                }
              }
            }
          }
        }
      }

      else
      {
        TlvValueOffsetRange = 6;
      }
    }

    else
    {
      TlvValueOffsetRange = 13;
    }
  }

  else
  {
    TlvValueOffsetRange = 2;
  }

  v11 = ot::ErrorToString(TlvValueOffsetRange);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleBackboneAnswer: %s", v12, v13, v14, v15, v16, v17, v11);
}

BOOL ot::Coap::Message::IsPostRequest(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetCode(this) == 2;
}

{
  return ot::Coap::Message::IsPostRequest(this);
}

BOOL ot::Coap::Message::IsConfirmable(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetType(this) == 0;
}

{
  return ot::Coap::Message::IsConfirmable(this);
}

void ot::BackboneRouter::Manager::HandleProactiveBackboneNotification(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3, int a4)
{
  v29 = this;
  v28 = a2;
  *&v27[1] = a3;
  v27[0] = a4;
  v23 = this;
  v26 = 0;
  v25 = ot::BackboneRouter::NdProxyTable::ResolveDua((this + 8), a2);
  if (v25)
  {
    MeshLocalIid = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(v25);
    if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(MeshLocalIid, *&v27[1]))
    {
      TimeSinceLastTransaction = ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(v25);
      if (v27[0] > TimeSinceLastTransaction)
      {
        v21 = v28;
        v22 = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(v25);
        v7 = ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(v25);
        ot::BackboneRouter::Manager::SendProactiveBackboneNotification(v23, v28, v22, v7);
        IgnoreError();
      }

      else
      {
        ot::BackboneRouter::NdProxyTable::Erase(v25, v6);
      }
    }

    else
    {
      ot::BackboneRouter::NdProxyTable::Erase(v25, v5);
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(v23);
      ot::AddressResolver::SendAddressError(v8, v28, *&v27[1], 0);
    }
  }

  else
  {
    v26 = 23;
  }

  v18 = ot::ErrorToString(v26);
  v16 = v31;
  ot::Ip6::Address::ToString(v31, v28);
  v19 = ot::String<(unsigned short)40>::AsCString(v31);
  v17 = v30;
  ot::Ip6::InterfaceIdentifier::ToString(*&v27[1], v30);
  v20 = ot::String<(unsigned short)17>::AsCString(v30);
  v9 = ot::ToUlong(v27[0]);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleProactiveBackboneNotification: %s, target=%s, mliid=%s, LTT=%lus", v10, v11, v12, v13, v14, v15, v18, v19, v20, v9);
}